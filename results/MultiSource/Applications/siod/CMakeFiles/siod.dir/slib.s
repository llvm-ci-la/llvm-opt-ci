	.file	"slib.c"
	.text
	.globl	siod_version                    # -- Begin function siod_version
	.p2align	5
	.type	siod_version,@function
siod_version:                           # @siod_version
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ret
.Lfunc_end0:
	.size	siod_version, .Lfunc_end0-siod_version
                                        # -- End function
	.globl	process_cla                     # -- Begin function process_cla
	.p2align	5
	.type	process_cla,@function
process_cla:                            # @process_cla
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(process_cla.siod_lib_set)
	ld.bu	$a3, $s2, %pc_lo12(process_cla.siod_lib_set)
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	bnez	$a3, .LBB1_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(getenv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_3
# %bb.2:
	pcalau12i	$a1, %pc_hi20(siod_lib)
	st.d	$a0, $a1, %pc_lo12(siod_lib)
	ori	$a0, $zero, 1
	st.b	$a0, $s2, %pc_lo12(process_cla.siod_lib_set)
.LBB1_3:
	ori	$s2, $zero, 2
	blt	$s1, $s2, .LBB1_21
# %bb.4:                                # %.lr.ph
	addi.d	$s3, $s0, 8
	addi.d	$s4, $s1, -1
	ori	$s5, $zero, 45
	ori	$s6, $zero, 15
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s0, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.LJTI1_0)
	addi.d	$s7, $a0, %pc_lo12(.LJTI1_0)
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(heap_size)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(nheaps)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(init_file)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(siod_lib)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(inums_dim)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(obarray_dim)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(stack_size)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(siod_verbose_level)
	b	.LBB1_7
.LBB1_5:                                #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a0, $s1, 2
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(obarray_dim)
	.p2align	4, , 16
.LBB1_6:                                #   in Loop: Header=BB1_7 Depth=1
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 8
	beqz	$s4, .LBB1_21
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s3, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bltu	$a0, $s2, .LBB1_6
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=1
	ld.bu	$a0, $s1, 0
	bne	$a0, $s5, .LBB1_12
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=1
	ld.bu	$a0, $s1, 1
	addi.d	$a0, $a0, -103
	bltu	$s6, $a0, .LBB1_12
# %bb.10:                               #   in Loop: Header=BB1_7 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s7, $a0
	add.d	$a0, $s7, $a0
	jr	$a0
.LBB1_11:                               #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a0, $s1, 2
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(gc_kind_copying)
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_12:                               #   in Loop: Header=BB1_7 Depth=1
	beqz	$fp, .LBB1_6
# %bb.13:                               #   in Loop: Header=BB1_7 Depth=1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB1_6
.LBB1_14:                               #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a0, $s1, 2
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(heap_size)
	addi.d	$a0, $a1, 2
	ori	$a1, $zero, 58
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_6
# %bb.15:                               #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(nheaps)
	b	.LBB1_6
.LBB1_16:                               #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a0, $s1, 2
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(stack_size)
	b	.LBB1_6
.LBB1_17:                               #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a0, $s1, 2
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(siod_verbose_level)
	b	.LBB1_6
.LBB1_18:                               #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a0, $s1, 2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(init_file)
	b	.LBB1_6
.LBB1_19:                               #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a0, $s1, 2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(siod_lib)
	b	.LBB1_6
.LBB1_20:                               #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a0, $s1, 2
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(inums_dim)
	b	.LBB1_6
.LBB1_21:                               # %._crit_edge
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end1:
	.size	process_cla, .Lfunc_end1-process_cla
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_11-.LJTI1_0
	.word	.LBB1_14-.LJTI1_0
	.word	.LBB1_18-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_19-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_20-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_17-.LJTI1_0
                                        # -- End function
	.text
	.globl	print_welcome                   # -- Begin function print_welcome
	.p2align	5
	.type	print_welcome,@function
print_welcome:                          # @print_welcome
# %bb.0:
	pcalau12i	$a0, %pc_hi20(siod_verbose_level)
	ld.d	$a0, $a0, %pc_lo12(siod_verbose_level)
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB2_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB2_2:
	ret
.Lfunc_end2:
	.size	print_welcome, .Lfunc_end2-print_welcome
                                        # -- End function
	.globl	print_hs_1                      # -- Begin function print_hs_1
	.p2align	5
	.type	print_hs_1,@function
print_hs_1:                             # @print_hs_1
# %bb.0:
	pcalau12i	$a0, %pc_hi20(siod_verbose_level)
	ld.d	$a0, $a0, %pc_lo12(siod_verbose_level)
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB3_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(heap_size)
	ld.d	$a2, $a0, %pc_lo12(heap_size)
	pcalau12i	$a0, %pc_hi20(nheaps)
	ld.d	$a1, $a0, %pc_lo12(nheaps)
	slli.d	$a0, $a2, 4
	pcalau12i	$a3, %pc_hi20(gc_kind_copying)
	ld.d	$a5, $a3, %pc_lo12(gc_kind_copying)
	pcalau12i	$a3, %pc_hi20(inums_dim)
	ld.d	$a4, $a3, %pc_lo12(inums_dim)
	alsl.d	$a3, $a2, $a0, 3
	addi.d	$a0, $a5, -1
	sltui	$a0, $a0, 1
	pcalau12i	$a5, %pc_hi20(.L.str.9)
	addi.d	$a5, $a5, %pc_lo12(.L.str.9)
	masknez	$a5, $a5, $a0
	pcalau12i	$a6, %pc_hi20(.L.str.8)
	addi.d	$a6, $a6, %pc_lo12(.L.str.8)
	maskeqz	$a0, $a6, $a0
	or	$a5, $a0, $a5
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB3_2:
	ret
.Lfunc_end3:
	.size	print_hs_1, .Lfunc_end3-print_hs_1
                                        # -- End function
	.globl	print_hs_2                      # -- Begin function print_hs_2
	.p2align	5
	.type	print_hs_2,@function
print_hs_2:                             # @print_hs_2
# %bb.0:
	pcalau12i	$a0, %pc_hi20(siod_verbose_level)
	ld.d	$a0, $a0, %pc_lo12(siod_verbose_level)
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB4_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(heaps)
	ld.d	$a0, $a0, %pc_lo12(heaps)
	pcalau12i	$a1, %pc_hi20(gc_kind_copying)
	ld.d	$a2, $a1, %pc_lo12(gc_kind_copying)
	ld.d	$a1, $a0, 0
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB4_4
# %bb.2:
	ld.d	$a2, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_3:
	ret
.LBB4_4:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end4:
	.size	print_hs_2, .Lfunc_end4-print_hs_2
                                        # -- End function
	.globl	no_interrupt                    # -- Begin function no_interrupt
	.p2align	5
	.type	no_interrupt,@function
no_interrupt:                           # @no_interrupt
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(nointerrupt)
	ld.d	$fp, $a1, %pc_lo12(nointerrupt)
	st.d	$a0, $a1, %pc_lo12(nointerrupt)
	bnez	$a0, .LBB5_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	ld.d	$a1, $a0, %pc_lo12(interrupt_differed)
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB5_3
# %bb.2:
	st.d	$zero, $a0, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB5_3:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	no_interrupt, .Lfunc_end5-no_interrupt
                                        # -- End function
	.globl	err_ctrl_c                      # -- Begin function err_ctrl_c
	.p2align	5
	.type	err_ctrl_c,@function
err_ctrl_c:                             # @err_ctrl_c
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end6:
	.size	err_ctrl_c, .Lfunc_end6-err_ctrl_c
                                        # -- End function
	.globl	handle_sigfpe                   # -- Begin function handle_sigfpe
	.p2align	5
	.type	handle_sigfpe,@function
handle_sigfpe:                          # @handle_sigfpe
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(handle_sigfpe)
	addi.d	$a1, $a0, %pc_lo12(handle_sigfpe)
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(signal)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end7:
	.size	handle_sigfpe, .Lfunc_end7-handle_sigfpe
                                        # -- End function
	.globl	err                             # -- Begin function err
	.p2align	5
	.type	err,@function
err:                                    # @err
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
	move	$fp, $a1
	move	$s0, $a0
	move	$s1, $zero
	pcalau12i	$s3, %pc_hi20(inside_err)
	ld.b	$s5, $s3, %pc_lo12(inside_err)
	pcalau12i	$s4, %pc_hi20(nointerrupt)
	ori	$a0, $zero, 1
	st.d	$a0, $s4, %pc_lo12(nointerrupt)
	pcalau12i	$s6, %pc_hi20(siod_verbose_level)
	bnez	$s0, .LBB8_6
# %bb.1:
	beqz	$fp, .LBB8_6
# %bb.2:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB8_11
# %bb.3:
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB8_26
# %bb.4:
	ld.hu	$a1, $a0, 2
	ori	$a2, $zero, 13
	bne	$a1, $a2, .LBB8_26
# %bb.5:                                # %get_c_string.exit
	ld.d	$a1, $fp, 16
	ld.d	$s0, $a0, 16
	move	$s1, $fp
	move	$fp, $a1
.LBB8_6:                                # %.critedge
	beqz	$fp, .LBB8_23
# %bb.7:                                # %.critedge..critedge.thread_crit_edge
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB8_12
.LBB8_8:                                # %.critedge.thread
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB8_13
# %bb.9:
	ori	$a0, $zero, 16
	ldx.d	$s2, $fp, $a0
	beqz	$s2, .LBB8_13
.LBB8_10:
	ori	$a2, $zero, 80
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memchr)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a2, $s2, $a0
	ld.d	$a0, $s6, %pc_lo12(siod_verbose_level)
	sltu	$s2, $zero, $s0
	bgtz	$a0, .LBB8_14
	b	.LBB8_27
.LBB8_11:
	move	$s0, $zero
	move	$s1, $zero
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB8_8
.LBB8_12:
	ori	$a0, $zero, 8
	ldx.d	$s2, $fp, $a0
	bnez	$s2, .LBB8_10
.LBB8_13:
	move	$a2, $zero
	ld.d	$a0, $s6, %pc_lo12(siod_verbose_level)
	sltu	$s2, $zero, $s0
	blez	$a0, .LBB8_27
.LBB8_14:                               # %try_get_c_string.exit.thread
	beqz	$s0, .LBB8_27
# %bb.15:
	beqz	$a2, .LBB8_32
# %bb.16:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(errjmp_ok)
	ld.d	$a0, $a0, %pc_lo12(errjmp_ok)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB8_28
.LBB8_17:
	pcalau12i	$s7, %pc_hi20(sym_errobj)
	ld.d	$a0, $s7, %pc_lo12(sym_errobj)
	st.b	$a1, $s3, %pc_lo12(inside_err)
	move	$a1, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(catch_framep)
	ld.d	$s6, $a0, %pc_lo12(catch_framep)
	beqz	$s6, .LBB8_22
# %bb.18:                               # %.lr.ph
	ld.d	$a0, $s7, %pc_lo12(sym_errobj)
	pcalau12i	$a1, %pc_hi20(sym_catchall)
	ld.d	$a1, $a1, %pc_lo12(sym_catchall)
	.p2align	4, , 16
.LBB8_19:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s6, 0
	beq	$a2, $a0, .LBB8_34
# %bb.20:                               #   in Loop: Header=BB8_19 Depth=1
	beq	$a2, $a1, .LBB8_34
# %bb.21:                               #   in Loop: Header=BB8_19 Depth=1
	ld.d	$s6, $s6, 320
	bnez	$s6, .LBB8_19
.LBB8_22:                               # %._crit_edge
	st.b	$zero, $s3, %pc_lo12(inside_err)
	ori	$a0, $zero, 2
	sub.d	$a1, $a0, $s2
	pcalau12i	$a0, %pc_hi20(errjmp)
	addi.d	$a0, $a0, %pc_lo12(errjmp)
	pcaddu18i	$ra, %call36(longjmp)
	jirl	$ra, $ra, 0
.LBB8_23:                               # %try_get_c_string.exit.thread.thread95
	ld.d	$a0, $s6, %pc_lo12(siod_verbose_level)
	move	$fp, $zero
	sltu	$s2, $zero, $s0
	blez	$a0, .LBB8_27
# %bb.24:                               # %try_get_c_string.exit.thread.thread95
	beqz	$s0, .LBB8_27
# %bb.25:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(errjmp_ok)
	ld.d	$a0, $a0, %pc_lo12(errjmp_ok)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB8_28
	b	.LBB8_17
.LBB8_26:
	move	$s2, $zero
	move	$s0, $zero
	move	$s1, $zero
.LBB8_27:                               # %try_get_c_string.exit.thread.thread
	pcalau12i	$a0, %pc_hi20(errjmp_ok)
	ld.d	$a0, $a0, %pc_lo12(errjmp_ok)
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB8_17
.LBB8_28:
	ld.d	$a0, $s6, %pc_lo12(siod_verbose_level)
	blez	$a0, .LBB8_30
# %bb.29:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB8_30:
	pcalau12i	$a0, %pc_hi20(fatal_exit_hook)
	ld.d	$a0, $a0, %pc_lo12(fatal_exit_hook)
	beqz	$a0, .LBB8_33
# %bb.31:
	jirl	$ra, $a0, 0
	move	$a0, $zero
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
.LBB8_32:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(errjmp_ok)
	ld.d	$a0, $a0, %pc_lo12(errjmp_ok)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB8_28
	b	.LBB8_17
.LBB8_33:
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB8_34:
	sltu	$a0, $zero, $s1
	or	$a0, $a0, $s5
	andi	$a0, $a0, 1
	bnez	$a0, .LBB8_36
# %bb.35:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	masknez	$a0, $a0, $s2
	maskeqz	$a1, $s0, $s2
	or	$s0, $a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB8_36:
	st.d	$s1, $s6, 8
	st.d	$zero, $s4, %pc_lo12(nointerrupt)
	st.b	$zero, $s3, %pc_lo12(inside_err)
	addi.d	$a0, $s6, 16
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(longjmp)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	err, .Lfunc_end8-err
                                        # -- End function
	.globl	handle_sigint                   # -- Begin function handle_sigint
	.p2align	5
	.type	handle_sigint,@function
handle_sigint:                          # @handle_sigint
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(handle_sigint)
	addi.d	$a1, $a0, %pc_lo12(handle_sigint)
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(signal)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(nointerrupt)
	ld.d	$a1, $a0, %pc_lo12(nointerrupt)
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB9_2
# %bb.1:
	pcalau12i	$a1, %pc_hi20(interrupt_differed)
	st.d	$a0, $a1, %pc_lo12(interrupt_differed)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB9_2:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end9:
	.size	handle_sigint, .Lfunc_end9-handle_sigint
                                        # -- End function
	.globl	get_eof_val                     # -- Begin function get_eof_val
	.p2align	5
	.type	get_eof_val,@function
get_eof_val:                            # @get_eof_val
# %bb.0:
	pcalau12i	$a0, %pc_hi20(eof_val)
	ld.d	$a0, $a0, %pc_lo12(eof_val)
	ret
.Lfunc_end10:
	.size	get_eof_val, .Lfunc_end10-get_eof_val
                                        # -- End function
	.globl	repl_driver                     # -- Begin function repl_driver
	.p2align	5
	.type	repl_driver,@function
repl_driver:                            # @repl_driver
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(stack_size)
	ld.d	$a0, $a0, %pc_lo12(stack_size)
	pcalau12i	$s2, %pc_hi20(stack_start_ptr)
	addi.d	$a1, $sp, 8
	st.d	$a1, $s2, %pc_lo12(stack_start_ptr)
	sub.d	$a0, $a1, $a0
	pcalau12i	$s3, %pc_hi20(stack_limit_ptr)
	st.d	$a0, $s3, %pc_lo12(stack_limit_ptr)
	pcalau12i	$a0, %pc_hi20(errjmp)
	addi.d	$a0, $a0, %pc_lo12(errjmp)
	pcaddu18i	$ra, %call36(_setjmp)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 2
	pcalau12i	$s4, %pc_hi20(repl_driver.osigfpe)
	bne	$a0, $a2, .LBB11_2
# %bb.1:
	move	$a0, $a2
	bnez	$fp, .LBB11_11
	b	.LBB11_12
.LBB11_2:
	move	$s5, $a0
	beqz	$fp, .LBB11_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(handle_sigint)
	addi.d	$a1, $a0, %pc_lo12(handle_sigint)
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(signal)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(repl_driver.osigint)
	st.d	$a0, $a1, %pc_lo12(repl_driver.osigint)
.LBB11_4:
	pcalau12i	$a0, %pc_hi20(handle_sigfpe)
	addi.d	$a1, $a0, %pc_lo12(handle_sigfpe)
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(signal)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, %pc_lo12(repl_driver.osigfpe)
	pcalau12i	$a0, %pc_hi20(catch_framep)
	st.d	$zero, $a0, %pc_lo12(catch_framep)
	pcalau12i	$a0, %pc_hi20(errjmp_ok)
	ori	$a2, $zero, 1
	st.d	$a2, $a0, %pc_lo12(errjmp_ok)
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	st.d	$zero, $a0, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(nointerrupt)
	st.d	$zero, $a0, %pc_lo12(nointerrupt)
	bnez	$s5, .LBB11_8
# %bb.5:
	beqz	$s1, .LBB11_8
# %bb.6:
	pcalau12i	$a0, %pc_hi20(init_file)
	ld.d	$a0, $a0, %pc_lo12(init_file)
	beqz	$a0, .LBB11_8
# %bb.7:
	ori	$a2, $zero, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(vload)
	jirl	$ra, $ra, 0
.LBB11_8:
	move	$a0, $s0
	bnez	$s0, .LBB11_10
# %bb.9:
	pcalau12i	$a0, %pc_hi20(repl_puts)
	ld.d	$a0, $a0, %pc_lo12(repl_puts)
	st.d	$a0, $sp, 16
	pcalau12i	$a0, %pc_hi20(repl_read)
	ld.d	$a0, $a0, %pc_lo12(repl_read)
	pcalau12i	$a1, %pc_hi20(repl_eval)
	ld.d	$a1, $a1, %pc_lo12(repl_eval)
	pcalau12i	$a2, %pc_hi20(repl_print)
	ld.d	$a2, $a2, %pc_lo12(repl_print)
	st.d	$a0, $sp, 24
	st.d	$a1, $sp, 32
	addi.d	$a0, $sp, 16
	st.d	$a2, $sp, 40
.LBB11_10:
	pcaddu18i	$ra, %call36(repl)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a2, $zero
	beqz	$fp, .LBB11_12
.LBB11_11:                              # %.sink.split
	pcalau12i	$a1, %pc_hi20(repl_driver.osigint)
	ld.d	$a1, $a1, %pc_lo12(repl_driver.osigint)
	move	$fp, $a0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(signal)
	jirl	$ra, $ra, 0
	move	$a2, $fp
.LBB11_12:
	ld.d	$a1, $s4, %pc_lo12(repl_driver.osigfpe)
	move	$fp, $a2
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(signal)
	jirl	$ra, $ra, 0
	st.d	$zero, $s2, %pc_lo12(stack_start_ptr)
	st.d	$zero, $s3, %pc_lo12(stack_limit_ptr)
	move	$a0, $fp
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end11:
	.size	repl_driver, .Lfunc_end11-repl_driver
                                        # -- End function
	.globl	vload                           # -- Begin function vload
	.p2align	5
	.type	vload,@function
vload:                                  # @vload
# %bb.0:
	addi.d	$sp, $sp, -736
	st.d	$ra, $sp, 728                   # 8-byte Folded Spill
	st.d	$fp, $sp, 720                   # 8-byte Folded Spill
	st.d	$s0, $sp, 712                   # 8-byte Folded Spill
	st.d	$s1, $sp, 704                   # 8-byte Folded Spill
	st.d	$s2, $sp, 696                   # 8-byte Folded Spill
	st.d	$s3, $sp, 688                   # 8-byte Folded Spill
	st.d	$s4, $sp, 680                   # 8-byte Folded Spill
	st.d	$s5, $sp, 672                   # 8-byte Folded Spill
	st.d	$s6, $sp, 664                   # 8-byte Folded Spill
	st.d	$s7, $sp, 656                   # 8-byte Folded Spill
	st.d	$s8, $sp, 648                   # 8-byte Folded Spill
	move	$s2, $a2
	move	$fp, $a1
	move	$s0, $a0
	ori	$a1, $zero, 124
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_2
# %bb.1:
	move	$s3, $a0
	ori	$a2, $zero, 10
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$s0, $s3, 1
	pcalau12i	$s7, %pc_hi20(nointerrupt)
	pcalau12i	$s5, %pc_hi20(interrupt_differed)
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	bnez	$s2, .LBB12_3
	b	.LBB12_12
.LBB12_2:
	move	$s1, $zero
	pcalau12i	$s7, %pc_hi20(nointerrupt)
	pcalau12i	$s5, %pc_hi20(interrupt_differed)
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	beqz	$s2, .LBB12_12
.LBB12_3:
	ld.w	$s4, $s7, %pc_lo12(nointerrupt)
	ori	$a0, $zero, 1
	st.d	$a0, $s7, %pc_lo12(nointerrupt)
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a1, $a0, %pc_lo12(.L.str.133)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_5
# %bb.4:
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB12_9
.LBB12_5:
	ld.bu	$a0, $s0, 0
	ori	$a1, $zero, 47
	beq	$a0, $a1, .LBB12_9
# %bb.6:
	pcalau12i	$a0, %pc_hi20(siod_lib)
	ld.d	$s2, $a0, %pc_lo12(siod_lib)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s3, $a0
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 511
	bltu	$a1, $a0, .LBB12_9
# %bb.7:
	addi.d	$a0, $sp, 112
	addi.d	$fp, $sp, 112
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 47
	stx.h	$a1, $a0, $fp
	addi.d	$a0, $sp, 112
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a1, $a0, %pc_lo12(.L.str.133)
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_9
# %bb.8:
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	addi.d	$s0, $sp, 112
.LBB12_9:
	slli.d	$a0, $s4, 32
	st.d	$s4, $s7, %pc_lo12(nointerrupt)
	bnez	$a0, .LBB12_12
# %bb.10:
	ld.d	$a0, $s5, %pc_lo12(interrupt_differed)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB12_12
# %bb.11:
	st.d	$zero, $s5, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB12_12:                              # %no_interrupt.exit
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$s2, $a0, %pc_lo12(.L.str.133)
	pcalau12i	$s6, %pc_hi20(siod_verbose_level)
	ld.d	$a0, $s6, %pc_lo12(siod_verbose_level)
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB12_22
# %bb.13:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s3, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s3, 0
	ld.d	$s4, $s7, %pc_lo12(nointerrupt)
	ori	$fp, $zero, 1
	st.d	$fp, $s7, %pc_lo12(nointerrupt)
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.d	$s4, $s7, %pc_lo12(nointerrupt)
	bnez	$s4, .LBB12_16
# %bb.14:
	ld.d	$a0, $s5, %pc_lo12(interrupt_differed)
	bne	$a0, $fp, .LBB12_16
# %bb.15:
	st.d	$zero, $s5, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s7, %pc_lo12(nointerrupt)
.LBB12_16:                              # %put_st.exit
	ld.d	$a1, $s3, 0
	st.d	$fp, $s7, %pc_lo12(nointerrupt)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	st.d	$s4, $s7, %pc_lo12(nointerrupt)
	bnez	$s4, .LBB12_19
# %bb.17:                               # %put_st.exit
	ld.d	$a0, $s5, %pc_lo12(interrupt_differed)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB12_19
# %bb.18:
	st.d	$zero, $s5, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s7, %pc_lo12(nointerrupt)
.LBB12_19:                              # %put_st.exit100
	ld.d	$a1, $s3, 0
	ori	$fp, $zero, 1
	st.d	$fp, $s7, %pc_lo12(nointerrupt)
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	st.d	$s4, $s7, %pc_lo12(nointerrupt)
	bnez	$s4, .LBB12_22
# %bb.20:                               # %put_st.exit100
	ld.d	$a0, $s5, %pc_lo12(interrupt_differed)
	bne	$a0, $fp, .LBB12_22
# %bb.21:
	st.d	$zero, $s5, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB12_22:                              # %put_st.exit103
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s5, $sp, 88                    # 8-byte Folded Spill
	sltui	$a0, $s1, 1
	pcalau12i	$a1, %pc_hi20(.L.str.139)
	addi.d	$a1, $a1, %pc_lo12(.L.str.139)
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(fopen)
	ld.d	$a0, $a0, %got_pc_lo12(fopen)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fopen_cg)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$s2, $a0, 8
	blez	$s1, .LBB12_24
	.p2align	4, , 16
.LBB12_23:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	bnez	$s1, .LBB12_23
.LBB12_24:                              # %._crit_edge
	move	$s3, $zero
	st.b	$zero, $sp, 112
	ori	$s4, $zero, 35
	addi.w	$s1, $zero, -1
	ori	$s5, $zero, 10
	ori	$s7, $zero, 510
	addi.d	$s8, $sp, 112
	ori	$fp, $zero, 59
	.p2align	4, , 16
.LBB12_25:                              # %.loopexit.sink.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_26 Depth 2
                                        #       Child Loop BB12_30 Depth 3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
.LBB12_26:                              # %.loopexit
                                        #   Parent Loop BB12_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_30 Depth 3
	beq	$a0, $s4, .LBB12_30
# %bb.27:                               # %.loopexit
                                        #   in Loop: Header=BB12_26 Depth=2
	beq	$a0, $fp, .LBB12_30
	b	.LBB12_32
	.p2align	4, , 16
.LBB12_28:                              #   in Loop: Header=BB12_30 Depth=3
	bltu	$s7, $s3, .LBB12_30
# %bb.29:                               #   in Loop: Header=BB12_30 Depth=3
	stx.b	$a0, $s3, $s8
	addi.d	$s3, $s3, 1
	stx.b	$zero, $s3, $s8
	.p2align	4, , 16
.LBB12_30:                              # %.preheader
                                        #   Parent Loop BB12_25 Depth=1
                                        #     Parent Loop BB12_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s1, .LBB12_26
# %bb.31:                               # %.preheader
                                        #   in Loop: Header=BB12_30 Depth=3
	bne	$a0, $s5, .LBB12_28
	b	.LBB12_25
.LBB12_32:                              # %.loopexit
	beq	$a0, $s1, .LBB12_34
# %bb.33:
	move	$a1, $s2
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
.LBB12_34:                              # %.loopexit120
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a1, $a0, %pc_lo12(.L.str.135)
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB12_50
# %bb.35:
	move	$s1, $a0
	ld.bu	$s2, $a0, 7
	addi.d	$fp, $a0, 7
	beqz	$s2, .LBB12_39
# %bb.36:                               # %.lr.ph128
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	.p2align	4, , 16
.LBB12_37:                              # =>This Inner Loop Header: Depth=1
	ext.w.b	$a1, $s2
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a1, $a1, 8
	beqz	$a1, .LBB12_39
# %bb.38:                               #   in Loop: Header=BB12_37 Depth=1
	ld.bu	$s2, $fp, 1
	addi.d	$a1, $fp, 1
	move	$fp, $a1
	bnez	$s2, .LBB12_37
	b	.LBB12_40
.LBB12_39:
	move	$a1, $fp
.LBB12_40:                              # %.critedge
	sub.d	$s2, $a1, $s1
	addi.d	$a0, $sp, 112
	addi.d	$fp, $sp, 112
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 95
	st.b	$a0, $sp, 118
	stx.b	$zero, $s2, $fp
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $fp, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.136)
	addi.d	$a2, $a2, %pc_lo12(.L.str.136)
	ld.w	$a3, $a2, 0
	ld.b	$a2, $a2, 4
	stx.w	$a3, $a0, $fp
	st.b	$a2, $a1, 4
	addi.w	$a0, $zero, -1
	addi.d	$a1, $sp, 112
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(require)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s2, $fp
	addi.d	$a0, $sp, 112
	ori	$a1, $zero, 1
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(funcall1)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, %pc_lo12(siod_verbose_level)
	ori	$a2, $zero, 5
	move	$s1, $a0
	blt	$a1, $a2, .LBB12_51
# %bb.41:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s2, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s2, 0
	ld.d	$s3, $s5, %pc_lo12(nointerrupt)
	st.d	$fp, $s5, %pc_lo12(nointerrupt)
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a0, $a0, %pc_lo12(.L.str.135)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.d	$s3, $s5, %pc_lo12(nointerrupt)
	bnez	$s3, .LBB12_44
# %bb.42:
	ld.d	$a0, $s4, %pc_lo12(interrupt_differed)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB12_44
# %bb.43:
	st.d	$zero, $s4, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB12_44:                              # %put_st.exit106
	ld.d	$a0, $s2, 0
	bnez	$a0, .LBB12_47
# %bb.45:
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a0, $zero, 8
	bnez	$a0, .LBB12_47
# %bb.46:
	pcalau12i	$a0, %pc_hi20(.L.str.151)
	addi.d	$a0, $a0, %pc_lo12(.L.str.151)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a0, $zero, 8
.LBB12_47:                              # %lprin1.exit
	st.d	$zero, $sp, 624
	pcalau12i	$a1, %pc_hi20(fputs_fcn)
	addi.d	$a1, $a1, %pc_lo12(fputs_fcn)
	st.d	$a1, $sp, 632
	st.d	$a0, $sp, 640
	addi.d	$a1, $sp, 624
	move	$a0, $s1
	pcaddu18i	$ra, %call36(lprin1g)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ld.d	$s2, $s5, %pc_lo12(nointerrupt)
	ori	$fp, $zero, 1
	st.d	$fp, $s5, %pc_lo12(nointerrupt)
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	st.d	$s2, $s5, %pc_lo12(nointerrupt)
	bnez	$s2, .LBB12_51
# %bb.48:                               # %lprin1.exit
	ld.d	$a0, $s4, %pc_lo12(interrupt_differed)
	bne	$a0, $fp, .LBB12_51
# %bb.49:
	st.d	$zero, $s4, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	b	.LBB12_51
.LBB12_50:
	move	$s1, $zero
.LBB12_51:                              # %put_st.exit109
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$s2, $a0, %got_pc_lo12(stdin)
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.151)
	addi.d	$a0, $a0, %pc_lo12(.L.str.151)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(eof_val)
	ori	$s4, $zero, 5
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(heap)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(heap_end)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$s7, $zero
	pcalau12i	$s8, %pc_hi20(freelist)
	pcalau12i	$a0, %pc_hi20(gc_cells_allocated)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	move	$s3, $s8
.LBB12_52:                              # %.outer.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_53 Depth 2
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB12_53:                              #   Parent Loop BB12_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s1, .LBB12_55
# %bb.54:                               #   in Loop: Header=BB12_53 Depth=2
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(funcall1)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(eof_val)
	bne	$a0, $a1, .LBB12_63
	b	.LBB12_80
	.p2align	4, , 16
.LBB12_55:                              #   in Loop: Header=BB12_53 Depth=2
	bnez	$s0, .LBB12_57
# %bb.56:                               #   in Loop: Header=BB12_53 Depth=2
	ld.d	$a0, $s2, 0
	bnez	$a0, .LBB12_62
.LBB12_57:                              #   in Loop: Header=BB12_53 Depth=2
	beqz	$s0, .LBB12_59
# %bb.58:                               #   in Loop: Header=BB12_53 Depth=2
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB12_60
.LBB12_59:                              # %.critedge.i.i
                                        #   in Loop: Header=BB12_53 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB12_60:                              #   in Loop: Header=BB12_53 Depth=2
	ld.d	$a0, $s0, 8
	bnez	$a0, .LBB12_62
# %bb.61:                               #   in Loop: Header=BB12_53 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	.p2align	4, , 16
.LBB12_62:                              # %lread.exit
                                        #   in Loop: Header=BB12_53 Depth=2
	pcaddu18i	$ra, %call36(lreadf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(eof_val)
	beq	$a0, $a1, .LBB12_80
.LBB12_63:                              #   in Loop: Header=BB12_53 Depth=2
	ld.d	$a1, $s6, %pc_lo12(siod_verbose_level)
	blt	$a1, $s4, .LBB12_65
# %bb.64:                               #   in Loop: Header=BB12_53 Depth=2
	move	$s8, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lprint)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$s8, $s3
.LBB12_65:                              #   in Loop: Header=BB12_53 Depth=2
	bnez	$fp, .LBB12_67
# %bb.66:                               #   in Loop: Header=BB12_53 Depth=2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	b	.LBB12_53
.LBB12_67:                              #   in Loop: Header=BB12_53 Depth=2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB12_71
# %bb.68:                               #   in Loop: Header=BB12_53 Depth=2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $a1, %pc_lo12(heap)
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$fp, $a1, .LBB12_70
# %bb.69:                               #   in Loop: Header=BB12_53 Depth=2
	move	$s8, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$s8, $s3
.LBB12_70:                              #   in Loop: Header=BB12_53 Depth=2
	addi.d	$a1, $fp, 24
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(heap)
	b	.LBB12_74
.LBB12_71:                              #   in Loop: Header=BB12_53 Depth=2
	ld.d	$fp, $s8, %pc_lo12(freelist)
	bnez	$fp, .LBB12_73
# %bb.72:                               #   in Loop: Header=BB12_53 Depth=2
	move	$fp, $a0
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $s8, %pc_lo12(freelist)
.LBB12_73:                              #   in Loop: Header=BB12_53 Depth=2
	ld.d	$a1, $fp, 16
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $a3, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $s8, %pc_lo12(freelist)
	addi.d	$a1, $a2, 1
	st.d	$a1, $a3, %pc_lo12(gc_cells_allocated)
.LBB12_74:                              # %cons.exit
                                        #   in Loop: Header=BB12_53 Depth=2
	lu12i.w	$a1, 16
	st.w	$a1, $fp, 0
	st.d	$a0, $fp, 8
	st.d	$zero, $fp, 16
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB12_79
# %bb.75:                               #   in Loop: Header=BB12_53 Depth=2
	beqz	$s7, .LBB12_77
# %bb.76:                               #   in Loop: Header=BB12_53 Depth=2
	ld.hu	$a0, $s7, 2
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB12_78
.LBB12_77:                              # %.critedge.i
                                        #   in Loop: Header=BB12_53 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB12_78:                              # %setcdr.exit
                                        #   in Loop: Header=BB12_53 Depth=2
	st.d	$fp, $s7, 16
	move	$s7, $fp
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	b	.LBB12_53
.LBB12_79:                              #   in Loop: Header=BB12_52 Depth=1
	move	$s7, $fp
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	b	.LBB12_52
.LBB12_80:
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $s2, %pc_lo12(nointerrupt)
	ori	$a0, $zero, 1
	st.d	$a0, $s2, %pc_lo12(nointerrupt)
	beqz	$s0, .LBB12_82
# %bb.81:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB12_83
.LBB12_82:                              # %.critedge.i113
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB12_83:
	ld.d	$a0, $s0, 8
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB12_85
# %bb.84:
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 8
.LBB12_85:
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB12_87
# %bb.86:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 16
.LBB12_87:                              # %file_gc_free.exit.i
	st.d	$fp, $s2, %pc_lo12(nointerrupt)
	bnez	$fp, .LBB12_90
# %bb.88:                               # %file_gc_free.exit.i
	ld.d	$a0, $s1, %pc_lo12(interrupt_differed)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB12_90
# %bb.89:
	st.d	$zero, $s1, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB12_90:                              # %fclose_l.exit
	ld.d	$a0, $s6, %pc_lo12(siod_verbose_level)
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB12_94
# %bb.91:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	ld.d	$s0, $s2, %pc_lo12(nointerrupt)
	ori	$fp, $zero, 1
	st.d	$fp, $s2, %pc_lo12(nointerrupt)
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a0, $a0, %pc_lo12(.L.str.140)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.d	$s0, $s2, %pc_lo12(nointerrupt)
	bnez	$s0, .LBB12_94
# %bb.92:
	ld.d	$a0, $s1, %pc_lo12(interrupt_differed)
	bne	$a0, $fp, .LBB12_94
# %bb.93:
	st.d	$zero, $s1, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB12_94:                              # %put_st.exit117
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 680                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 688                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 712                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 720                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 728                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 736
	ret
.Lfunc_end12:
	.size	vload, .Lfunc_end12-vload
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function repl
.LCPI13_0:
	.dword	0x404e000000000000              # double 60
	.text
	.globl	repl
	.p2align	5
	.type	repl,@function
repl:                                   # @repl
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 168                  # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$s6, %pc_hi20(gc_kind_copying)
	ori	$s7, $zero, 1
	pcalau12i	$a0, %pc_hi20(gc_status_flag)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(heap)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(heap_end)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(siod_verbose_level)
	ori	$s0, $zero, 2
	pcalau12i	$a0, %pc_hi20(.LCPI13_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI13_0)
	pcalau12i	$a0, %pc_hi20(tkbuffer)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(old_heap_used)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(heap_org)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, -349526
	ori	$a0, $a0, 2731
	lu32i.d	$a0, -349526
	lu52i.d	$a0, $a0, -1366
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(nointerrupt)
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.151)
	addi.d	$a0, $a0, %pc_lo12(.L.str.151)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(eof_val)
	pcalau12i	$a0, %pc_hi20(gc_cells_allocated)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(gc_time_taken)
	b	.LBB13_2
	.p2align	4, , 16
.LBB13_1:                               #   in Loop: Header=BB13_2 Depth=1
	jirl	$ra, $a1, 0
.LBB13_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, %pc_lo12(gc_kind_copying)
	bne	$a0, $s7, .LBB13_8
# %bb.3:                                #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(gc_status_flag)
	bnez	$a0, .LBB13_5
# %bb.4:                                #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(heap)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB13_8
.LBB13_5:                               #   in Loop: Header=BB13_2 Depth=1
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(times)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 136
	ld.d	$s5, $sp, 144
	pcaddu18i	$ra, %call36(gc_stop_and_copy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(siod_verbose_level)
	blt	$a0, $s0, .LBB13_19
# %bb.6:                                #   in Loop: Header=BB13_2 Depth=1
	movgr2fr.d	$fa0, $s4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $s5
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $s4, %pc_lo12(tkbuffer)
	ffint.d.l	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fdiv.d	$fs1, $fa0, $fs0
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(times)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136
	ld.d	$a1, $sp, 144
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fs0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(heap)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(heap_org)
	fsub.d	$fa0, $fa0, $fs1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(old_heap_used)
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(heap_end)
	sub.d	$a1, $a0, $a1
	srai.d	$a1, $a1, 3
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	mul.d	$a4, $a1, $a5
	sub.d	$a0, $a2, $a0
	srai.d	$a0, $a0, 3
	mul.d	$a5, $a0, $a5
	movfr2gr.d	$a2, $fa0
	move	$a0, $s5
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $s4, %pc_lo12(tkbuffer)
	beqz	$a1, .LBB13_15
# %bb.7:                                #   in Loop: Header=BB13_2 Depth=1
	jirl	$ra, $a1, 0
	.p2align	4, , 16
.LBB13_8:                               # %grepl_puts.exit
                                        #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a0, $s3, %pc_lo12(siod_verbose_level)
	blt	$a0, $s0, .LBB13_19
.LBB13_9:                               #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a1, $fp, 0
	beqz	$a1, .LBB13_11
# %bb.10:                               #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	b	.LBB13_19
.LBB13_11:                              #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ld.d	$s4, $s1, %pc_lo12(nointerrupt)
	st.d	$s7, $s1, %pc_lo12(nointerrupt)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.d	$s4, $s1, %pc_lo12(nointerrupt)
	bnez	$s4, .LBB13_14
# %bb.12:                               #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(interrupt_differed)
	bne	$a0, $s7, .LBB13_14
# %bb.13:                               #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$zero, $a0, %pc_lo12(interrupt_differed)
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB13_14:                              # %put_st.exit.i20
                                        #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	b	.LBB13_19
.LBB13_15:                              #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$s4, $s1, %pc_lo12(nointerrupt)
	st.d	$s7, $s1, %pc_lo12(nointerrupt)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	st.d	$s4, $s1, %pc_lo12(nointerrupt)
	bnez	$s4, .LBB13_18
# %bb.16:                               #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(interrupt_differed)
	bne	$a0, $s7, .LBB13_18
# %bb.17:                               #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$zero, $a0, %pc_lo12(interrupt_differed)
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB13_18:                              # %put_st.exit.i
                                        #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(siod_verbose_level)
	bge	$a0, $s0, .LBB13_9
	.p2align	4, , 16
.LBB13_19:                              # %grepl_puts.exit21
                                        #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB13_21
# %bb.20:                               #   in Loop: Header=BB13_2 Depth=1
	jirl	$ra, $a0, 0
	move	$s5, $a0
	ld.d	$a0, $s2, %pc_lo12(eof_val)
	bne	$s5, $a0, .LBB13_25
	b	.LBB13_32
	.p2align	4, , 16
.LBB13_21:                              #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB13_24
# %bb.22:                               #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a0, $zero, 8
	bnez	$a0, .LBB13_24
# %bb.23:                               #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a0, $zero, 8
	.p2align	4, , 16
.LBB13_24:                              # %lread.exit
                                        #   in Loop: Header=BB13_2 Depth=1
	pcaddu18i	$ra, %call36(lreadf)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a0, $s2, %pc_lo12(eof_val)
	beq	$s5, $a0, .LBB13_32
.LBB13_25:                              # %myrealtime.exit
                                        #   in Loop: Header=BB13_2 Depth=1
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(times)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(gc_kind_copying)
	beq	$a0, $s7, .LBB13_27
# %bb.26:                               #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$zero, $a0, %pc_lo12(gc_cells_allocated)
	st.d	$zero, $s8, %pc_lo12(gc_time_taken)
.LBB13_27:                              #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a1, $fp, 16
	beqz	$a1, .LBB13_29
# %bb.28:                               #   in Loop: Header=BB13_2 Depth=1
	move	$a0, $s5
	jirl	$ra, $a1, 0
	ld.d	$a1, $fp, 24
	bnez	$a1, .LBB13_1
	b	.LBB13_30
	.p2align	4, , 16
.LBB13_29:                              #   in Loop: Header=BB13_2 Depth=1
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 24
	bnez	$a1, .LBB13_1
.LBB13_30:                              #   in Loop: Header=BB13_2 Depth=1
	ld.d	$a1, $s3, %pc_lo12(siod_verbose_level)
	blt	$a1, $s0, .LBB13_2
# %bb.31:                               #   in Loop: Header=BB13_2 Depth=1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lprint)
	jirl	$ra, $ra, 0
	b	.LBB13_2
.LBB13_32:
	move	$a0, $zero
	fld.d	$fs1, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 176                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end13:
	.size	repl, .Lfunc_end13-repl
                                        # -- End function
	.globl	repl_c_string                   # -- Begin function repl_c_string
	.p2align	5
	.type	repl_c_string,@function
repl_c_string:                          # @repl_c_string
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	move	$a4, $a2
	pcalau12i	$a2, %pc_hi20(repl_c_string_read)
	addi.d	$a2, $a2, %pc_lo12(repl_c_string_read)
	st.d	$a2, $sp, 8
	ori	$a2, $zero, 1
	st.d	$zero, $sp, 16
	bge	$a2, $a3, .LBB14_2
# %bb.1:
	pcalau12i	$a2, %pc_hi20(repl_c_string_print)
	addi.d	$a5, $a2, %pc_lo12(repl_c_string_print)
	pcalau12i	$a2, %pc_hi20(ignore_puts)
	addi.d	$a2, $a2, %pc_lo12(ignore_puts)
	move	$a6, $a0
	b	.LBB14_3
.LBB14_2:
	sltui	$a5, $a3, 1
	pcalau12i	$a2, %pc_hi20(noprompt_puts)
	addi.d	$a2, $a2, %pc_lo12(noprompt_puts)
	masknez	$a2, $a2, $a5
	pcalau12i	$a3, %pc_hi20(ignore_puts)
	addi.d	$a3, $a3, %pc_lo12(ignore_puts)
	maskeqz	$a3, $a3, $a5
	or	$a2, $a3, $a2
	pcalau12i	$a3, %pc_hi20(not_ignore_print)
	addi.d	$a3, $a3, %pc_lo12(not_ignore_print)
	masknez	$a7, $a3, $a5
	pcalau12i	$a3, %pc_hi20(ignore_print)
	addi.d	$t0, $a3, %pc_lo12(ignore_print)
	move	$a3, $zero
	move	$a6, $zero
	maskeqz	$a5, $t0, $a5
	or	$a5, $a5, $a7
.LBB14_3:
	st.d	$a2, $sp, 0
	st.d	$a5, $sp, 24
	pcalau12i	$a2, %pc_hi20(repl_c_string_print_len)
	st.d	$a3, $a2, %pc_lo12(repl_c_string_print_len)
	pcalau12i	$a2, %pc_hi20(repl_c_string_out)
	st.d	$a6, $a2, %pc_lo12(repl_c_string_out)
	pcalau12i	$a2, %pc_hi20(repl_c_string_arg)
	st.d	$a0, $a2, %pc_lo12(repl_c_string_arg)
	pcalau12i	$fp, %pc_hi20(repl_c_string_flag)
	st.b	$zero, $fp, %pc_lo12(repl_c_string_flag)
	addi.d	$a2, $sp, 0
	move	$a0, $a1
	move	$a1, $a4
	pcaddu18i	$ra, %call36(repl_driver)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, %pc_lo12(repl_c_string_flag)
	sltui	$a2, $a0, 1
	ori	$a3, $zero, 2
	masknez	$a1, $a3, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end14:
	.size	repl_c_string, .Lfunc_end14-repl_c_string
                                        # -- End function
	.p2align	5                               # -- Begin function repl_c_string_read
	.type	repl_c_string_read,@function
repl_c_string_read:                     # @repl_c_string_read
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(repl_c_string_arg)
	ld.d	$fp, $s0, %pc_lo12(repl_c_string_arg)
	beqz	$fp, .LBB15_4
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(repl_c_string_out)
	ld.d	$a1, $a1, %pc_lo12(repl_c_string_out)
	st.d	$zero, $s0, %pc_lo12(repl_c_string_arg)
	beqz	$a1, .LBB15_3
# %bb.2:
	st.b	$zero, $a1, 0
.LBB15_3:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(read_from_string)
	jr	$t8
.LBB15_4:
	pcalau12i	$a0, %pc_hi20(eof_val)
	ld.d	$a0, $a0, %pc_lo12(eof_val)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end15:
	.size	repl_c_string_read, .Lfunc_end15-repl_c_string_read
                                        # -- End function
	.p2align	5                               # -- Begin function ignore_puts
	.type	ignore_puts,@function
ignore_puts:                            # @ignore_puts
# %bb.0:
	ret
.Lfunc_end16:
	.size	ignore_puts, .Lfunc_end16-ignore_puts
                                        # -- End function
	.p2align	5                               # -- Begin function repl_c_string_print
	.type	repl_c_string_print,@function
repl_c_string_print:                    # @repl_c_string_print
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$zero, $sp, 16
	pcalau12i	$a1, %pc_hi20(rcsp_puts)
	addi.d	$a1, $a1, %pc_lo12(rcsp_puts)
	pcalau12i	$a2, %pc_hi20(repl_c_string_out)
	ld.d	$a2, $a2, %pc_lo12(repl_c_string_out)
	pcalau12i	$a3, %pc_hi20(repl_c_string_print_len)
	ld.d	$a3, $a3, %pc_lo12(repl_c_string_print_len)
	st.d	$a1, $sp, 24
	st.d	$a2, $sp, 0
	add.d	$a1, $a2, $a3
	addi.d	$a1, $a1, -1
	st.d	$a1, $sp, 8
	addi.d	$a1, $sp, 0
	st.d	$a1, $sp, 32
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(lprin1g)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(repl_c_string_flag)
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(repl_c_string_flag)
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end17:
	.size	repl_c_string_print, .Lfunc_end17-repl_c_string_print
                                        # -- End function
	.p2align	5                               # -- Begin function noprompt_puts
	.type	noprompt_puts,@function
noprompt_puts:                          # @noprompt_puts
# %bb.0:                                # %sub_0
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 62
	bne	$a1, $a2, .LBB18_3
# %bb.1:                                # %sub_1
	ld.bu	$a1, $a0, 1
	ori	$a2, $zero, 32
	bne	$a1, $a2, .LBB18_3
# %bb.2:                                # %.tail
	ld.bu	$a1, $a0, 2
	beqz	$a1, .LBB18_6
.LBB18_3:                               # %.tail.thread
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $a1, 0
	pcalau12i	$s0, %pc_hi20(nointerrupt)
	ld.d	$s1, $s0, %pc_lo12(nointerrupt)
	ori	$fp, $zero, 1
	st.d	$fp, $s0, %pc_lo12(nointerrupt)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	st.d	$s1, $s0, %pc_lo12(nointerrupt)
	bnez	$s1, .LBB18_6
# %bb.4:                                # %.tail.thread
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	ld.d	$a1, $a0, %pc_lo12(interrupt_differed)
	bne	$a1, $fp, .LBB18_6
# %bb.5:
	st.d	$zero, $a0, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB18_6:                               # %put_st.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end18:
	.size	noprompt_puts, .Lfunc_end18-noprompt_puts
                                        # -- End function
	.p2align	5                               # -- Begin function not_ignore_print
	.type	not_ignore_print,@function
not_ignore_print:                       # @not_ignore_print
# %bb.0:
	pcalau12i	$a1, %pc_hi20(repl_c_string_flag)
	ori	$a2, $zero, 1
	st.b	$a2, $a1, %pc_lo12(repl_c_string_flag)
	move	$a1, $zero
	pcaddu18i	$t8, %call36(lprint)
	jr	$t8
.Lfunc_end19:
	.size	not_ignore_print, .Lfunc_end19-not_ignore_print
                                        # -- End function
	.p2align	5                               # -- Begin function ignore_print
	.type	ignore_print,@function
ignore_print:                           # @ignore_print
# %bb.0:
	pcalau12i	$a0, %pc_hi20(repl_c_string_flag)
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(repl_c_string_flag)
	ret
.Lfunc_end20:
	.size	ignore_print, .Lfunc_end20-ignore_print
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function myruntime
.LCPI21_0:
	.dword	0x404e000000000000              # double 60
	.text
	.globl	myruntime
	.p2align	5
	.type	myruntime,@function
myruntime:                              # @myruntime
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(times)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	movgr2fr.d	$fa0, $a0
	ld.d	$a0, $sp, 16
	ffint.d.l	$fa0, $fa0
	pcalau12i	$a1, %pc_hi20(.LCPI21_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI21_0)
	movgr2fr.d	$fa2, $a0
	ffint.d.l	$fa2, $fa2
	fadd.d	$fa0, $fa0, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end21:
	.size	myruntime, .Lfunc_end21-myruntime
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function myrealtime
.LCPI22_0:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.globl	myrealtime
	.p2align	5
	.type	myrealtime,@function
myrealtime:                             # @myrealtime
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_2
# %bb.1:
	movgr2fr.d	$fa0, $zero
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB22_2:
	ld.d	$a0, $sp, 8
	movgr2fr.d	$fa0, $a0
	ld.d	$a0, $sp, 16
	pcalau12i	$a1, %pc_hi20(.LCPI22_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI22_0)
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa2, $a0
	ffint.d.l	$fa2, $fa2
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end22:
	.size	myrealtime, .Lfunc_end22-myrealtime
                                        # -- End function
	.globl	set_repl_hooks                  # -- Begin function set_repl_hooks
	.p2align	5
	.type	set_repl_hooks,@function
set_repl_hooks:                         # @set_repl_hooks
# %bb.0:
	pcalau12i	$a4, %pc_hi20(repl_puts)
	st.d	$a0, $a4, %pc_lo12(repl_puts)
	pcalau12i	$a0, %pc_hi20(repl_read)
	st.d	$a1, $a0, %pc_lo12(repl_read)
	pcalau12i	$a0, %pc_hi20(repl_eval)
	st.d	$a2, $a0, %pc_lo12(repl_eval)
	pcalau12i	$a0, %pc_hi20(repl_print)
	st.d	$a3, $a0, %pc_lo12(repl_print)
	ret
.Lfunc_end23:
	.size	set_repl_hooks, .Lfunc_end23-set_repl_hooks
                                        # -- End function
	.globl	gput_st                         # -- Begin function gput_st
	.p2align	5
	.type	gput_st,@function
gput_st:                                # @gput_st
# %bb.0:
	ld.d	$a3, $a0, 8
	ld.d	$a2, $a0, 16
	move	$a0, $a1
	move	$a1, $a2
	jr	$a3
.Lfunc_end24:
	.size	gput_st, .Lfunc_end24-gput_st
                                        # -- End function
	.globl	fput_st                         # -- Begin function fput_st
	.p2align	5
	.type	fput_st,@function
fput_st:                                # @fput_st
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(nointerrupt)
	ld.d	$s1, $s0, %pc_lo12(nointerrupt)
	move	$a2, $a0
	ori	$fp, $zero, 1
	st.d	$fp, $s0, %pc_lo12(nointerrupt)
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	st.d	$s1, $s0, %pc_lo12(nointerrupt)
	bnez	$s1, .LBB25_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	ld.d	$a1, $a0, %pc_lo12(interrupt_differed)
	bne	$a1, $fp, .LBB25_3
# %bb.2:
	st.d	$zero, $a0, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB25_3:                               # %no_interrupt.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end25:
	.size	fput_st, .Lfunc_end25-fput_st
                                        # -- End function
	.globl	fputs_fcn                       # -- Begin function fputs_fcn
	.p2align	5
	.type	fputs_fcn,@function
fputs_fcn:                              # @fputs_fcn
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(nointerrupt)
	ld.d	$s1, $s0, %pc_lo12(nointerrupt)
	ori	$fp, $zero, 1
	st.d	$fp, $s0, %pc_lo12(nointerrupt)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	st.d	$s1, $s0, %pc_lo12(nointerrupt)
	bnez	$s1, .LBB26_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	ld.d	$a1, $a0, %pc_lo12(interrupt_differed)
	bne	$a1, $fp, .LBB26_3
# %bb.2:
	st.d	$zero, $a0, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB26_3:                               # %fput_st.exit
	ori	$a0, $zero, 1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end26:
	.size	fputs_fcn, .Lfunc_end26-fputs_fcn
                                        # -- End function
	.globl	put_st                          # -- Begin function put_st
	.p2align	5
	.type	put_st,@function
put_st:                                 # @put_st
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $a1, 0
	pcalau12i	$s0, %pc_hi20(nointerrupt)
	ld.d	$s1, $s0, %pc_lo12(nointerrupt)
	ori	$fp, $zero, 1
	st.d	$fp, $s0, %pc_lo12(nointerrupt)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	st.d	$s1, $s0, %pc_lo12(nointerrupt)
	bnez	$s1, .LBB27_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	ld.d	$a1, $a0, %pc_lo12(interrupt_differed)
	bne	$a1, $fp, .LBB27_3
# %bb.2:
	st.d	$zero, $a0, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB27_3:                               # %fput_st.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end27:
	.size	put_st, .Lfunc_end27-put_st
                                        # -- End function
	.globl	grepl_puts                      # -- Begin function grepl_puts
	.p2align	5
	.type	grepl_puts,@function
grepl_puts:                             # @grepl_puts
# %bb.0:
	beqz	$a1, .LBB28_2
# %bb.1:
	jr	$a1
.LBB28_2:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$fp, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $fp, 0
	pcalau12i	$s1, %pc_hi20(nointerrupt)
	ld.d	$s2, $s1, %pc_lo12(nointerrupt)
	ori	$s0, $zero, 1
	st.d	$s0, $s1, %pc_lo12(nointerrupt)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	st.d	$s2, $s1, %pc_lo12(nointerrupt)
	bnez	$s2, .LBB28_5
# %bb.3:
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	ld.d	$a1, $a0, %pc_lo12(interrupt_differed)
	bne	$a1, $s0, .LBB28_5
# %bb.4:
	st.d	$zero, $a0, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB28_5:                               # %put_st.exit
	ld.d	$a0, $fp, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.Lfunc_end28:
	.size	grepl_puts, .Lfunc_end28-grepl_puts
                                        # -- End function
	.globl	gc_stop_and_copy                # -- Begin function gc_stop_and_copy
	.p2align	5
	.type	gc_stop_and_copy,@function
gc_stop_and_copy:                       # @gc_stop_and_copy
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(heap_org)
	ld.d	$fp, $a0, %pc_lo12(heap_org)
	pcalau12i	$a1, %pc_hi20(heap)
	ld.d	$s5, $a1, %pc_lo12(heap)
	pcalau12i	$s4, %pc_hi20(nointerrupt)
	ld.d	$s3, $s4, %pc_lo12(nointerrupt)
	sub.d	$a2, $s5, $fp
	srai.d	$a3, $a2, 3
	lu12i.w	$a2, -349526
	ori	$a2, $a2, 2731
	lu32i.d	$a2, -349526
	lu52i.d	$a4, $a2, -1366
	pcalau12i	$a2, %pc_hi20(heaps)
	ld.d	$a2, $a2, %pc_lo12(heaps)
	mul.d	$a3, $a3, $a4
	pcalau12i	$a4, %pc_hi20(old_heap_used)
	st.d	$a3, $a4, %pc_lo12(old_heap_used)
	ld.d	$s0, $a2, 0
	ori	$a3, $zero, 1
	st.d	$a3, $s4, %pc_lo12(nointerrupt)
	pcalau12i	$s6, %pc_hi20(errjmp_ok)
	st.d	$zero, $s6, %pc_lo12(errjmp_ok)
	bne	$fp, $s0, .LBB29_2
# %bb.1:
	ld.d	$s0, $a2, 8
.LBB29_2:                               # %get_newspace.exit
	pcalau12i	$a2, %pc_hi20(heap_size)
	ld.d	$a2, $a2, %pc_lo12(heap_size)
	st.d	$s0, $a1, %pc_lo12(heap)
	st.d	$s0, $a0, %pc_lo12(heap_org)
	slli.d	$a0, $a2, 4
	alsl.d	$a0, $a2, $a0, 3
	add.d	$a0, $s0, $a0
	pcalau12i	$a1, %pc_hi20(heap_end)
	st.d	$a0, $a1, %pc_lo12(heap_end)
	pcaddu18i	$ra, %call36(scan_registers)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(scan_newspace)
	jirl	$ra, $ra, 0
	bgeu	$fp, $s5, .LBB29_15
# %bb.3:                                # %.lr.ph.i.preheader
	ori	$s7, $zero, 11
	ori	$a2, $zero, 3
	pcalau12i	$s1, %pc_hi20(user_types)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3904
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$a3, $zero, 99
	b	.LBB29_5
	.p2align	4, , 16
.LBB29_4:                               #   in Loop: Header=BB29_5 Depth=1
	addi.d	$fp, $fp, 24
	bgeu	$fp, $s5, .LBB29_15
.LBB29_5:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $fp, 0
	bnez	$a0, .LBB29_4
# %bb.6:                                #   in Loop: Header=BB29_5 Depth=1
	ld.h	$s0, $fp, 2
	bstrpick.d	$s8, $s0, 15, 0
	addi.d	$a0, $s8, -1
	bltu	$a0, $s7, .LBB29_4
# %bb.7:                                #   in Loop: Header=BB29_5 Depth=1
	addi.d	$a0, $s8, -19
	bltu	$a0, $a2, .LBB29_4
# %bb.8:                                #   in Loop: Header=BB29_5 Depth=1
	ld.d	$s2, $s1, %pc_lo12(user_types)
	bnez	$s2, .LBB29_12
# %bb.9:                                #   in Loop: Header=BB29_5 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	bnez	$a0, .LBB29_11
# %bb.10:                               #   in Loop: Header=BB29_5 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB29_11:                              # %must_malloc.exit.i.i
                                        #   in Loop: Header=BB29_5 Depth=1
	st.d	$s2, $s1, %pc_lo12(user_types)
	ori	$a2, $zero, 3
	ori	$a3, $zero, 99
.LBB29_12:                              #   in Loop: Header=BB29_5 Depth=1
	bstrpick.d	$a0, $s8, 15, 0
	bltu	$a3, $a0, .LBB29_19
# %bb.13:                               # %get_user_type_hooks.exit.i
                                        #   in Loop: Header=BB29_5 Depth=1
	slli.d	$a0, $s0, 6
	alsl.d	$a0, $s0, $a0, 4
	add.d	$a0, $s2, $a0
	ld.d	$a1, $a0, 24
	beqz	$a1, .LBB29_4
# %bb.14:                               #   in Loop: Header=BB29_5 Depth=1
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ori	$a3, $zero, 99
	ori	$a2, $zero, 3
	b	.LBB29_4
.LBB29_15:                              # %free_oldspace.exit
	ori	$a0, $zero, 1
	st.d	$a0, $s6, %pc_lo12(errjmp_ok)
	st.d	$s3, $s4, %pc_lo12(nointerrupt)
	bnez	$s3, .LBB29_18
# %bb.16:                               # %free_oldspace.exit
	pcalau12i	$a1, %pc_hi20(interrupt_differed)
	ld.d	$a2, $a1, %pc_lo12(interrupt_differed)
	bne	$a2, $a0, .LBB29_18
# %bb.17:
	st.d	$zero, $a1, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB29_18:                              # %no_interrupt.exit
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB29_19:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.Lfunc_end29:
	.size	gc_stop_and_copy, .Lfunc_end29-gc_stop_and_copy
                                        # -- End function
	.globl	lread                           # -- Begin function lread
	.p2align	5
	.type	lread,@function
lread:                                  # @lread
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	bnez	$a0, .LBB30_3
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB30_3
.LBB30_2:                               # %get_c_file.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(lreadf)
	jr	$t8
.LBB30_3:
	beqz	$fp, .LBB30_5
# %bb.4:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB30_6
.LBB30_5:                               # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB30_6:
	ld.d	$a0, $fp, 8
	bnez	$a0, .LBB30_2
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L.str.151)
	addi.d	$a0, $a0, %pc_lo12(.L.str.151)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(lreadf)
	jr	$t8
.Lfunc_end30:
	.size	lread, .Lfunc_end30-lread
                                        # -- End function
	.globl	leval                           # -- Begin function leval
	.p2align	5
	.type	leval,@function
leval:                                  # @leval
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(stack_limit_ptr)
	ld.d	$a2, $a2, %pc_lo12(stack_limit_ptr)
	st.d	$a0, $sp, 64
	addi.d	$a0, $sp, 64
	st.d	$a1, $sp, 56
	bgeu	$a0, $a2, .LBB31_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_2:                               # %.backedge.preheader
	pcalau12i	$s6, %pc_hi20(sym_eval_history_ptr)
	ori	$s7, $zero, 1
	pcalau12i	$s8, %pc_hi20(user_types)
	lu12i.w	$a0, 1
	ori	$s1, $a0, 3904
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI31_0)
	addi.d	$a0, $a0, %pc_lo12(.LJTI31_0)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(sym_quote)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(gc_kind_copying)
	pcalau12i	$s5, %pc_hi20(heap)
	lu12i.w	$s4, 16
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB31_3:                               # %.backedge
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s6, %pc_lo12(sym_eval_history_ptr)
	ld.d	$a2, $a1, 16
	beqz	$a2, .LBB31_6
# %bb.4:                                #   in Loop: Header=BB31_3 Depth=1
	ld.hu	$a3, $a2, 2
	ld.d	$a0, $sp, 64
	bne	$a3, $s7, .LBB31_7
# %bb.5:                                #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a3, $a2, 16
	st.d	$a0, $a2, 8
	st.d	$a3, $a1, 16
	b	.LBB31_7
	.p2align	4, , 16
.LBB31_6:                               # %..critedge_crit_edge
                                        #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a0, $sp, 64
.LBB31_7:                               # %.critedge
                                        #   in Loop: Header=BB31_3 Depth=1
	beqz	$a0, .LBB31_112
# %bb.8:                                #   in Loop: Header=BB31_3 Depth=1
	ld.hu	$a1, $a0, 2
	bne	$a1, $s7, .LBB31_100
# %bb.9:                                #   in Loop: Header=BB31_3 Depth=1
	ld.d	$fp, $a0, 8
	beqz	$fp, .LBB31_23
# %bb.10:                               #   in Loop: Header=BB31_3 Depth=1
	ld.hu	$a0, $fp, 2
	beq	$a0, $s7, .LBB31_14
# %bb.11:                               #   in Loop: Header=BB31_3 Depth=1
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB31_17
# %bb.12:                               #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a1, $sp, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(envlookup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB31_40
# %bb.13:                               #   in Loop: Header=BB31_3 Depth=1
	ld.d	$fp, $a0, 8
	b	.LBB31_15
.LBB31_14:                              #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a1, $sp, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB31_15:                              #   in Loop: Header=BB31_3 Depth=1
	beqz	$fp, .LBB31_23
# %bb.16:                               # %..thread207_crit_edge
                                        #   in Loop: Header=BB31_3 Depth=1
	ld.hu	$a0, $fp, 2
.LBB31_17:                              # %.thread207
                                        #   in Loop: Header=BB31_3 Depth=1
	addi.d	$a1, $a0, -3
	ori	$a2, $zero, 18
	bltu	$a2, $a1, .LBB31_36
# %bb.18:                               # %.thread207
                                        #   in Loop: Header=BB31_3 Depth=1
	slli.d	$a1, $a1, 2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB31_19:                              #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(sym_quote)
	ld.d	$a0, $s3, %pc_lo12(gc_kind_copying)
	ld.d	$s2, $sp, 64
	bne	$a0, $s7, .LBB31_46
# %bb.20:                               #   in Loop: Header=BB31_3 Depth=1
	ld.d	$s1, $s5, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s1, $a0, .LBB31_22
# %bb.21:                               #   in Loop: Header=BB31_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	move	$s0, $a3
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a3, $s0
.LBB31_22:                              #   in Loop: Header=BB31_3 Depth=1
	addi.d	$a0, $s1, 24
	st.d	$a0, $s5, %pc_lo12(heap)
	b	.LBB31_49
	.p2align	4, , 16
.LBB31_23:                              #   in Loop: Header=BB31_3 Depth=1
	move	$fp, $zero
	move	$s0, $zero
	ld.d	$s2, $s8, %pc_lo12(user_types)
	bnez	$s2, .LBB31_37
.LBB31_24:                              #   in Loop: Header=BB31_3 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	bnez	$a0, .LBB31_26
# %bb.25:                               #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_26:                              # %must_malloc.exit
                                        #   in Loop: Header=BB31_3 Depth=1
	st.d	$s2, $s8, %pc_lo12(user_types)
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB31_37
.LBB31_27:                              #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a2, $fp, 16
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 56
	jirl	$ra, $a2, 0
	bnez	$a0, .LBB31_3
	b	.LBB31_112
.LBB31_28:                              #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB31_110
# %bb.29:                               #   in Loop: Header=BB31_3 Depth=1
	ld.hu	$a1, $a0, 2
	bne	$a1, $s7, .LBB31_104
# %bb.30:                               #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a0, $sp, 64
	ld.d	$a0, $a0, 16
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval_args)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.d	$s2, $a1, 8
	ld.d	$a1, $fp, 8
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$a3, $a0
	beqz	$s2, .LBB31_42
# %bb.31:                               #   in Loop: Header=BB31_3 Depth=1
	ld.hu	$a0, $s2, 2
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB31_42
# %bb.32:                               #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a0, $s3, %pc_lo12(gc_kind_copying)
	bne	$a0, $s7, .LBB31_78
# %bb.33:                               #   in Loop: Header=BB31_3 Depth=1
	ld.d	$s0, $s5, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s0, $a0, .LBB31_35
# %bb.34:                               #   in Loop: Header=BB31_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
.LBB31_35:                              #   in Loop: Header=BB31_3 Depth=1
	addi.d	$a0, $s0, 24
	st.d	$a0, $s5, %pc_lo12(heap)
	b	.LBB31_81
.LBB31_36:                              #   in Loop: Header=BB31_3 Depth=1
	ext.w.h	$s0, $a0
	ld.d	$s2, $s8, %pc_lo12(user_types)
	beqz	$s2, .LBB31_24
	.p2align	4, , 16
.LBB31_37:                              #   in Loop: Header=BB31_3 Depth=1
	ori	$a0, $zero, 99
	bltu	$a0, $s0, .LBB31_382
# %bb.38:                               # %get_user_type_hooks.exit
                                        #   in Loop: Header=BB31_3 Depth=1
	slli.d	$a0, $s0, 6
	alsl.d	$a0, $s0, $a0, 4
	add.d	$a0, $s2, $a0
	ld.d	$a3, $a0, 40
	beqz	$a3, .LBB31_103
# %bb.39:                               #   in Loop: Header=BB31_3 Depth=1
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	move	$a0, $fp
	jirl	$ra, $a3, 0
	bnez	$a0, .LBB31_3
	b	.LBB31_112
.LBB31_40:                              #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a0, $sp, 64
	ld.d	$a1, $a0, 8
	ld.d	$fp, $a1, 16
	pcalau12i	$a0, %pc_hi20(unbound_marker)
	ld.d	$a0, $a0, %pc_lo12(unbound_marker)
	bne	$fp, $a0, .LBB31_15
# %bb.41:                               #   in Loop: Header=BB31_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	b	.LBB31_15
.LBB31_42:                              # %.critedge.i
                                        #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a0, $s3, %pc_lo12(gc_kind_copying)
	bne	$a0, $s7, .LBB31_71
# %bb.43:                               #   in Loop: Header=BB31_3 Depth=1
	ld.d	$s1, $s5, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s1, $a0, .LBB31_45
# %bb.44:                               #   in Loop: Header=BB31_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	move	$s0, $a3
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a3, $s0
.LBB31_45:                              #   in Loop: Header=BB31_3 Depth=1
	addi.d	$a0, $s1, 24
	st.d	$a0, $s5, %pc_lo12(heap)
	b	.LBB31_74
.LBB31_46:                              #   in Loop: Header=BB31_3 Depth=1
	move	$s0, $s6
	move	$s6, $s8
	move	$s8, $s3
	move	$s3, $s5
	move	$s5, $s4
	pcalau12i	$s4, %pc_hi20(freelist)
	ld.d	$s1, $s4, %pc_lo12(freelist)
	bnez	$s1, .LBB31_48
# %bb.47:                               #   in Loop: Header=BB31_3 Depth=1
	move	$s1, $a3
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	move	$a3, $s1
	ld.d	$s1, $s4, %pc_lo12(freelist)
.LBB31_48:                              #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a0, $s1, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s4, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
	move	$s4, $s5
	move	$s5, $s3
	move	$s3, $s8
	move	$s8, $s6
	move	$s6, $s0
.LBB31_49:                              # %cons.exit174
                                        #   in Loop: Header=BB31_3 Depth=1
	st.w	$s4, $s1, 0
	ld.d	$a0, $s3, %pc_lo12(gc_kind_copying)
	st.d	$s2, $s1, 8
	st.d	$zero, $s1, 16
	bne	$a0, $s7, .LBB31_53
# %bb.50:                               #   in Loop: Header=BB31_3 Depth=1
	ld.d	$s2, $s5, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s2, $a0, .LBB31_52
# %bb.51:                               #   in Loop: Header=BB31_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	move	$s0, $a3
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a3, $s0
.LBB31_52:                              #   in Loop: Header=BB31_3 Depth=1
	addi.d	$a0, $s2, 24
	st.d	$a0, $s5, %pc_lo12(heap)
	b	.LBB31_56
.LBB31_53:                              #   in Loop: Header=BB31_3 Depth=1
	move	$s0, $s6
	move	$s6, $s8
	move	$s8, $s3
	move	$s3, $s5
	move	$s5, $s4
	pcalau12i	$s4, %pc_hi20(freelist)
	ld.d	$s2, $s4, %pc_lo12(freelist)
	bnez	$s2, .LBB31_55
# %bb.54:                               #   in Loop: Header=BB31_3 Depth=1
	move	$s2, $a3
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	move	$a3, $s2
	ld.d	$s2, $s4, %pc_lo12(freelist)
.LBB31_55:                              #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a0, $s2, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s4, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
	move	$s4, $s5
	move	$s5, $s3
	move	$s3, $s8
	move	$s8, $s6
	move	$s6, $s0
.LBB31_56:                              # %cons.exit177
                                        #   in Loop: Header=BB31_3 Depth=1
	st.w	$s4, $s2, 0
	ld.d	$a0, $s3, %pc_lo12(gc_kind_copying)
	st.d	$a3, $s2, 8
	st.d	$s1, $s2, 16
	bne	$a0, $s7, .LBB31_60
# %bb.57:                               #   in Loop: Header=BB31_3 Depth=1
	ld.d	$s0, $s5, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s0, $a0, .LBB31_59
# %bb.58:                               #   in Loop: Header=BB31_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_59:                              #   in Loop: Header=BB31_3 Depth=1
	addi.d	$a0, $s0, 24
	st.d	$a0, $s5, %pc_lo12(heap)
	b	.LBB31_63
.LBB31_60:                              #   in Loop: Header=BB31_3 Depth=1
	pcalau12i	$s1, %pc_hi20(freelist)
	ld.d	$s0, $s1, %pc_lo12(freelist)
	bnez	$s0, .LBB31_62
# %bb.61:                               #   in Loop: Header=BB31_3 Depth=1
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s1, %pc_lo12(freelist)
.LBB31_62:                              #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a0, $s0, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s1, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB31_63:                              # %cons.exit180
                                        #   in Loop: Header=BB31_3 Depth=1
	st.w	$s4, $s0, 0
	ld.d	$a0, $s3, %pc_lo12(gc_kind_copying)
	st.d	$s2, $s0, 8
	st.d	$zero, $s0, 16
	bne	$a0, $s7, .LBB31_67
# %bb.64:                               #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a0, $s5, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB31_66
# %bb.65:                               #   in Loop: Header=BB31_3 Depth=1
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s1
.LBB31_66:                              #   in Loop: Header=BB31_3 Depth=1
	addi.d	$a1, $a0, 24
	st.d	$a1, $s5, %pc_lo12(heap)
	b	.LBB31_70
.LBB31_67:                              #   in Loop: Header=BB31_3 Depth=1
	pcalau12i	$s1, %pc_hi20(freelist)
	ld.d	$a0, $s1, %pc_lo12(freelist)
	bnez	$a0, .LBB31_69
# %bb.68:                               #   in Loop: Header=BB31_3 Depth=1
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(freelist)
.LBB31_69:                              #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $s1, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB31_70:                              # %cons.exit183
                                        #   in Loop: Header=BB31_3 Depth=1
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	st.w	$s4, $a0, 0
	st.d	$fp, $a0, 8
	st.d	$s0, $a0, 16
	st.d	$a0, $sp, 64
	move	$a1, $zero
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64
	b	.LBB31_3
.LBB31_71:                              #   in Loop: Header=BB31_3 Depth=1
	pcalau12i	$s0, %pc_hi20(freelist)
	ld.d	$s1, $s0, %pc_lo12(freelist)
	bnez	$s1, .LBB31_73
# %bb.72:                               #   in Loop: Header=BB31_3 Depth=1
	move	$s1, $a3
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	move	$a3, $s1
	ld.d	$s1, $s0, %pc_lo12(freelist)
.LBB31_73:                              #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a0, $s1, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s0, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB31_74:                              # %cons.exit190
                                        #   in Loop: Header=BB31_3 Depth=1
	st.w	$s4, $s1, 0
	ld.d	$a0, $s3, %pc_lo12(gc_kind_copying)
	st.d	$s2, $s1, 8
	st.d	$a3, $s1, 16
	bne	$a0, $s7, .LBB31_96
.LBB31_75:                              #   in Loop: Header=BB31_3 Depth=1
	ld.d	$s0, $s5, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s0, $a0, .LBB31_77
# %bb.76:                               #   in Loop: Header=BB31_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_77:                              #   in Loop: Header=BB31_3 Depth=1
	addi.d	$a0, $s0, 24
	st.d	$a0, $s5, %pc_lo12(heap)
	b	.LBB31_99
.LBB31_78:                              #   in Loop: Header=BB31_3 Depth=1
	pcalau12i	$s1, %pc_hi20(freelist)
	ld.d	$s0, $s1, %pc_lo12(freelist)
	bnez	$s0, .LBB31_80
# %bb.79:                               #   in Loop: Header=BB31_3 Depth=1
	move	$s0, $a3
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	move	$a3, $s0
	ld.d	$s0, $s1, %pc_lo12(freelist)
.LBB31_80:                              #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a0, $s0, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s1, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB31_81:                              # %cons.exit202
                                        #   in Loop: Header=BB31_3 Depth=1
	st.w	$s4, $s0, 0
	ld.d	$a0, $s3, %pc_lo12(gc_kind_copying)
	st.d	$s2, $s0, 8
	st.d	$zero, $s0, 16
	bne	$a0, $s7, .LBB31_85
# %bb.82:                               #   in Loop: Header=BB31_3 Depth=1
	ld.d	$s2, $s5, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s2, $a0, .LBB31_84
# %bb.83:                               #   in Loop: Header=BB31_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
.LBB31_84:                              #   in Loop: Header=BB31_3 Depth=1
	addi.d	$a0, $s2, 24
	st.d	$a0, $s5, %pc_lo12(heap)
	b	.LBB31_88
.LBB31_85:                              #   in Loop: Header=BB31_3 Depth=1
	pcalau12i	$s1, %pc_hi20(freelist)
	ld.d	$s2, $s1, %pc_lo12(freelist)
	bnez	$s2, .LBB31_87
# %bb.86:                               #   in Loop: Header=BB31_3 Depth=1
	move	$s2, $a3
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	move	$a3, $s2
	ld.d	$s2, $s1, %pc_lo12(freelist)
.LBB31_87:                              #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a0, $s2, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s1, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB31_88:                              # %cons.exit199
                                        #   in Loop: Header=BB31_3 Depth=1
	st.w	$s4, $s2, 0
	ld.d	$a0, $s3, %pc_lo12(gc_kind_copying)
	st.d	$a3, $s2, 8
	st.d	$zero, $s2, 16
	bne	$a0, $s7, .LBB31_92
# %bb.89:                               #   in Loop: Header=BB31_3 Depth=1
	ld.d	$s1, $s5, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s1, $a0, .LBB31_91
# %bb.90:                               #   in Loop: Header=BB31_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_91:                              #   in Loop: Header=BB31_3 Depth=1
	addi.d	$a0, $s1, 24
	st.d	$a0, $s5, %pc_lo12(heap)
	b	.LBB31_95
.LBB31_92:                              #   in Loop: Header=BB31_3 Depth=1
	pcalau12i	$s4, %pc_hi20(freelist)
	ld.d	$s1, $s4, %pc_lo12(freelist)
	bnez	$s1, .LBB31_94
# %bb.93:                               #   in Loop: Header=BB31_3 Depth=1
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s4, %pc_lo12(freelist)
.LBB31_94:                              #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a0, $s1, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s4, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
	lu12i.w	$s4, 16
.LBB31_95:                              # %cons.exit196
                                        #   in Loop: Header=BB31_3 Depth=1
	st.w	$s4, $s1, 0
	ld.d	$a0, $s3, %pc_lo12(gc_kind_copying)
	st.d	$s0, $s1, 8
	st.d	$s2, $s1, 16
	beq	$a0, $s7, .LBB31_75
.LBB31_96:                              #   in Loop: Header=BB31_3 Depth=1
	pcalau12i	$s2, %pc_hi20(freelist)
	ld.d	$s0, $s2, %pc_lo12(freelist)
	bnez	$s0, .LBB31_98
# %bb.97:                               #   in Loop: Header=BB31_3 Depth=1
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s2, %pc_lo12(freelist)
.LBB31_98:                              #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a0, $s0, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB31_99:                              # %extend_env.exit
                                        #   in Loop: Header=BB31_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$s4, $s0, 0
	st.d	$s1, $s0, 8
	st.d	$a0, $s0, 16
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 16
	st.d	$s0, $sp, 56
	st.d	$a0, $sp, 64
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	b	.LBB31_3
.LBB31_100:
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB31_112
# %bb.101:
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(envlookup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB31_107
# %bb.102:
	ld.d	$a0, $a0, 8
	b	.LBB31_113
.LBB31_103:
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	b	.LBB31_111
.LBB31_104:
	addi.d	$a1, $a1, -5
	ori	$a2, $zero, 15
	bltu	$a2, $a1, .LBB31_110
# %bb.105:
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI31_1)
	addi.d	$a2, $a2, %pc_lo12(.LJTI31_1)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB31_106:
	ld.d	$a1, $a0, 16
	ld.d	$a0, $fp, 8
	jirl	$ra, $a1, 0
	b	.LBB31_113
.LBB31_107:
	ld.d	$a1, $sp, 64
	ld.d	$a0, $a1, 16
	pcalau12i	$a2, %pc_hi20(unbound_marker)
	ld.d	$a2, $a2, %pc_lo12(unbound_marker)
	bne	$a0, $a2, .LBB31_113
# %bb.108:
	pcalau12i	$a2, %pc_hi20(.L.str.49)
	addi.d	$a2, $a2, %pc_lo12(.L.str.49)
.LBB31_109:                             # %.critedge88
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB31_113
.LBB31_110:                             # %.thread302
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
.LBB31_111:                             # %.thread
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_112:                             # %.thread
	ld.d	$a0, $sp, 64
.LBB31_113:                             # %.critedge88
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB31_114:
	ld.d	$a0, $sp, 64
	ld.d	$fp, $fp, 16
	ld.d	$a0, $a0, 16
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval_args)
	jirl	$ra, $ra, 0
	jirl	$ra, $fp, 0
	b	.LBB31_113
.LBB31_115:
	ld.d	$a0, $sp, 64
	ld.d	$a1, $a0, 16
	st.d	$a1, $sp, 64
	beqz	$a1, .LBB31_166
# %bb.116:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_166
# %bb.117:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_165
# %bb.118:
	ld.d	$a0, $a1, 8
	b	.LBB31_167
.LBB31_119:
	ld.d	$a0, $sp, 64
	ld.d	$a1, $a0, 16
	ld.d	$fp, $fp, 16
	beqz	$a1, .LBB31_174
# %bb.120:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_174
# %bb.121:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_173
# %bb.122:
	ld.d	$a0, $a1, 8
	b	.LBB31_175
.LBB31_123:
	ld.d	$a0, $fp, 16
	jirl	$ra, $a0, 0
	b	.LBB31_113
.LBB31_124:
	ld.d	$a0, $sp, 64
	ld.d	$a1, $a0, 16
	st.d	$a1, $sp, 64
	beqz	$a1, .LBB31_177
# %bb.125:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_177
# %bb.126:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_176
# %bb.127:
	ld.d	$a0, $a1, 8
	b	.LBB31_178
.LBB31_128:
	ld.d	$a0, $sp, 64
	ld.d	$a1, $a0, 16
	st.d	$a1, $sp, 64
	beqz	$a1, .LBB31_185
# %bb.129:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_185
# %bb.130:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_184
# %bb.131:
	ld.d	$a0, $a1, 8
	b	.LBB31_186
.LBB31_132:
	ld.d	$a0, $sp, 64
	ld.d	$a2, $fp, 16
	ld.d	$a0, $a0, 16
	ld.d	$a1, $sp, 56
	jirl	$ra, $a2, 0
	b	.LBB31_113
.LBB31_133:
	ld.d	$a0, $sp, 64
	ld.d	$a1, $a0, 16
	st.d	$a1, $sp, 64
	beqz	$a1, .LBB31_193
# %bb.134:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_193
# %bb.135:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_192
# %bb.136:
	ld.d	$a0, $a1, 8
	b	.LBB31_194
.LBB31_137:
	ld.d	$a0, $sp, 64
	ld.d	$a1, $a0, 16
	st.d	$a1, $sp, 64
	beqz	$a1, .LBB31_201
# %bb.138:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_201
# %bb.139:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_200
# %bb.140:
	ld.d	$a0, $a1, 8
	b	.LBB31_202
.LBB31_141:
	ld.d	$a0, $sp, 64
	ld.d	$a1, $a0, 16
	st.d	$a1, $sp, 64
	beqz	$a1, .LBB31_209
# %bb.142:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_209
# %bb.143:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_208
# %bb.144:
	ld.d	$a0, $a1, 8
	b	.LBB31_210
.LBB31_145:
	ld.d	$a1, $sp, 64
	ld.d	$s0, $a0, 16
	ld.d	$s1, $fp, 8
	ld.d	$a0, $a1, 16
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval_args)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB31_161
# %bb.146:
	ld.d	$a0, $s5, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB31_148
# %bb.147:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB31_148:
	addi.d	$a1, $a0, 24
	st.d	$a1, $s5, %pc_lo12(heap)
	b	.LBB31_164
.LBB31_149:
	ld.d	$a0, $sp, 64
	ld.d	$a1, $a0, 16
	st.d	$a1, $sp, 64
	beqz	$a1, .LBB31_212
# %bb.150:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_212
# %bb.151:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_211
# %bb.152:
	ld.d	$a0, $a1, 8
	b	.LBB31_213
.LBB31_153:
	ld.d	$a0, $sp, 64
	ld.d	$a1, $a0, 16
	st.d	$a1, $sp, 64
	beqz	$a1, .LBB31_220
# %bb.154:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_220
# %bb.155:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_219
# %bb.156:
	ld.d	$a0, $a1, 8
	b	.LBB31_221
.LBB31_157:
	ld.d	$a0, $sp, 64
	ld.d	$a1, $a0, 16
	st.d	$a1, $sp, 64
	beqz	$a1, .LBB31_228
# %bb.158:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_228
# %bb.159:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_227
# %bb.160:
	ld.d	$a0, $a1, 8
	b	.LBB31_229
.LBB31_161:
	pcalau12i	$s2, %pc_hi20(freelist)
	ld.d	$a0, $s2, %pc_lo12(freelist)
	bnez	$a0, .LBB31_163
# %bb.162:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(freelist)
.LBB31_163:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $s2, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB31_164:                             # %cons.exit
	st.w	$s4, $a0, 0
	st.d	$s1, $a0, 8
	st.d	$fp, $a0, 16
	jirl	$ra, $s0, 0
	b	.LBB31_113
.LBB31_165:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_166:                             # %car.exit94
	move	$a0, $zero
.LBB31_167:                             # %car.exit94
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	move	$s0, $a0
	beqz	$a1, .LBB31_172
# %bb.168:
	ld.d	$a1, $a1, 16
	ld.d	$s2, $fp, 16
	st.d	$a1, $sp, 64
	addi.d	$s1, $fp, 16
	beqz	$a1, .LBB31_236
# %bb.169:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_236
# %bb.170:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_235
# %bb.171:
	ld.d	$a0, $a1, 8
	b	.LBB31_237
.LBB31_172:                             # %.thread221
	ld.d	$s2, $fp, 16
	move	$a0, $zero
	addi.d	$s1, $fp, 16
	b	.LBB31_237
.LBB31_173:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_174:                             # %car.exit
	move	$a0, $zero
.LBB31_175:                             # %car.exit
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	jirl	$ra, $fp, 0
	b	.LBB31_113
.LBB31_176:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_177:                             # %car.exit90
	move	$a0, $zero
.LBB31_178:                             # %car.exit90
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	move	$s0, $a0
	beqz	$a1, .LBB31_183
# %bb.179:
	ld.d	$a1, $a1, 16
	ld.d	$fp, $fp, 16
	st.d	$a1, $sp, 64
	beqz	$a1, .LBB31_246
# %bb.180:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_246
# %bb.181:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_245
# %bb.182:
	ld.d	$a0, $a1, 8
	b	.LBB31_247
.LBB31_183:                             # %.thread215
	ld.d	$fp, $fp, 16
	b	.LBB31_246
.LBB31_184:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_185:                             # %car.exit99
	move	$a0, $zero
.LBB31_186:                             # %car.exit99
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	move	$s0, $a0
	beqz	$a1, .LBB31_191
# %bb.187:
	ld.d	$a1, $a1, 16
	ld.d	$s1, $fp, 16
	st.d	$a1, $sp, 64
	beqz	$a1, .LBB31_249
# %bb.188:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_249
# %bb.189:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_248
# %bb.190:
	ld.d	$a0, $a1, 8
	b	.LBB31_250
.LBB31_191:                             # %.thread229
	ld.d	$s1, $fp, 16
	b	.LBB31_249
.LBB31_192:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_193:                             # %car.exit107
	move	$a0, $zero
.LBB31_194:                             # %car.exit107
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	move	$s0, $a0
	beqz	$a1, .LBB31_199
# %bb.195:
	ld.d	$a1, $a1, 16
	ld.d	$s2, $fp, 16
	st.d	$a1, $sp, 64
	beqz	$a1, .LBB31_262
# %bb.196:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_262
# %bb.197:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_261
# %bb.198:
	ld.d	$a0, $a1, 8
	b	.LBB31_263
.LBB31_199:                             # %.thread241
	ld.d	$s2, $fp, 16
	b	.LBB31_262
.LBB31_200:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_201:                             # %car.exit121
	move	$a0, $zero
.LBB31_202:                             # %car.exit121
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	move	$s0, $a0
	beqz	$a1, .LBB31_207
# %bb.203:
	ld.d	$a1, $a1, 16
	ld.d	$s3, $fp, 16
	st.d	$a1, $sp, 64
	beqz	$a1, .LBB31_288
# %bb.204:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_288
# %bb.205:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_287
# %bb.206:
	ld.d	$a0, $a1, 8
	b	.LBB31_289
.LBB31_207:                             # %.thread264
	ld.d	$s3, $fp, 16
	b	.LBB31_288
.LBB31_208:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_209:                             # %car.exit144
	move	$a0, $zero
.LBB31_210:                             # %car.exit144
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.d	$a3, $a1, 16
	ld.d	$a1, $fp, 8
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $a2
	jirl	$ra, $a3, 0
	b	.LBB31_113
.LBB31_211:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_212:                             # %car.exit146
	move	$a0, $zero
.LBB31_213:                             # %car.exit146
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	move	$s0, $a0
	beqz	$a1, .LBB31_218
# %bb.214:
	ld.d	$a0, $fp, 16
	ld.d	$a1, $a1, 16
	ld.d	$s1, $a0, 16
	ld.d	$fp, $fp, 8
	st.d	$a1, $sp, 64
	beqz	$a1, .LBB31_330
# %bb.215:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_330
# %bb.216:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_329
# %bb.217:
	ld.d	$a0, $a1, 8
	b	.LBB31_331
.LBB31_218:                             # %.thread305
	ld.d	$a0, $fp, 16
	ld.d	$s1, $a0, 16
	ld.d	$fp, $fp, 8
	b	.LBB31_330
.LBB31_219:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_220:                             # %car.exit158
	move	$a0, $zero
.LBB31_221:                             # %car.exit158
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	move	$s0, $a0
	beqz	$a1, .LBB31_226
# %bb.222:
	ld.d	$a0, $fp, 16
	ld.d	$a1, $a1, 16
	ld.d	$s3, $a0, 16
	ld.d	$fp, $fp, 8
	st.d	$a1, $sp, 64
	beqz	$a1, .LBB31_333
# %bb.223:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_333
# %bb.224:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_332
# %bb.225:
	ld.d	$a0, $a1, 8
	b	.LBB31_334
.LBB31_226:                             # %.thread325
	ld.d	$a0, $fp, 16
	ld.d	$s3, $a0, 16
	ld.d	$fp, $fp, 8
	b	.LBB31_333
.LBB31_227:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_228:                             # %car.exit150
	move	$a0, $zero
.LBB31_229:                             # %car.exit150
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	move	$s0, $a0
	beqz	$a1, .LBB31_234
# %bb.230:
	ld.d	$a0, $fp, 16
	ld.d	$a1, $a1, 16
	ld.d	$s2, $a0, 16
	ld.d	$fp, $fp, 8
	st.d	$a1, $sp, 64
	beqz	$a1, .LBB31_360
# %bb.231:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_360
# %bb.232:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_359
# %bb.233:
	ld.d	$a0, $a1, 8
	b	.LBB31_361
.LBB31_234:                             # %.thread312
	ld.d	$a0, $fp, 16
	ld.d	$s2, $a0, 16
	ld.d	$fp, $fp, 8
	b	.LBB31_360
.LBB31_235:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_236:                             # %car.exit96
	move	$a0, $zero
.LBB31_237:                             # %car.exit96
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	jirl	$ra, $s2, 0
	ld.d	$a1, $sp, 64
	beqz	$a1, .LBB31_113
# %bb.238:
	ld.hu	$a2, $a1, 2
	beqz	$a2, .LBB31_113
# %bb.239:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB31_244
# %bb.240:                              # %cdr.exit
	ld.d	$a1, $a1, 16
	st.d	$a1, $sp, 64
	beqz	$a1, .LBB31_113
# %bb.241:                              # %.lr.ph.preheader
	ori	$s0, $zero, 1
.LBB31_242:                             # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a2, $a1, 2
	bne	$a2, $s0, .LBB31_113
# %bb.243:                              #   in Loop: Header=BB31_242 Depth=1
	ld.d	$s2, $s1, 0
	ld.d	$a2, $a1, 8
	ld.d	$a1, $sp, 56
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	jirl	$ra, $s2, 0
	ld.d	$a1, $sp, 64
	ld.d	$a1, $a1, 16
	st.d	$a1, $sp, 64
	bnez	$a1, .LBB31_242
	b	.LBB31_113
.LBB31_244:
	pcalau12i	$a2, %pc_hi20(.L.str.28)
	addi.d	$a2, $a2, %pc_lo12(.L.str.28)
	b	.LBB31_109
.LBB31_245:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_246:                             # %car.exit92
	move	$a0, $zero
.LBB31_247:                             # %car.exit92
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	jirl	$ra, $fp, 0
	b	.LBB31_113
.LBB31_248:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_249:                             # %car.exit101
	move	$a0, $zero
.LBB31_250:                             # %car.exit101
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	move	$fp, $a0
	beqz	$a1, .LBB31_259
# %bb.251:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_259
# %bb.252:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_257
# %bb.253:                              # %cdr.exit103
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB31_259
# %bb.254:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_259
# %bb.255:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_373
# %bb.256:
	ld.d	$a0, $a1, 8
	b	.LBB31_260
.LBB31_257:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
.LBB31_258:                             # %car.exit105
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_259:                             # %car.exit105
	move	$a0, $zero
.LBB31_260:                             # %car.exit105
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $fp
	jirl	$ra, $s1, 0
	b	.LBB31_113
.LBB31_261:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_262:                             # %car.exit109
	move	$a0, $zero
.LBB31_263:                             # %car.exit109
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	move	$fp, $a0
	beqz	$a1, .LBB31_272
# %bb.264:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_272
# %bb.265:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_270
# %bb.266:                              # %cdr.exit111
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB31_272
# %bb.267:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_272
# %bb.268:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_374
# %bb.269:
	ld.d	$a0, $a1, 8
	b	.LBB31_273
.LBB31_270:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
.LBB31_271:                             # %car.exit113
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_272:                             # %car.exit113
	move	$a0, $zero
.LBB31_273:                             # %car.exit113
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	move	$s1, $a0
	beqz	$a1, .LBB31_285
# %bb.274:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_285
# %bb.275:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_283
# %bb.276:                              # %cdr.exit115
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB31_285
# %bb.277:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_285
# %bb.278:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_283
# %bb.279:                              # %cdr.exit117
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB31_285
# %bb.280:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_285
# %bb.281:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_378
# %bb.282:
	ld.d	$a0, $a1, 8
	b	.LBB31_286
.LBB31_283:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
.LBB31_284:                             # %car.exit119
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_285:                             # %car.exit119
	move	$a0, $zero
.LBB31_286:                             # %car.exit119
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	move	$a0, $s0
	move	$a1, $fp
	b	.LBB31_372
.LBB31_287:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_288:                             # %car.exit123
	move	$a0, $zero
.LBB31_289:                             # %car.exit123
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	move	$fp, $a0
	beqz	$a1, .LBB31_298
# %bb.290:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_298
# %bb.291:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_296
# %bb.292:                              # %cdr.exit125
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB31_298
# %bb.293:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_298
# %bb.294:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_375
# %bb.295:
	ld.d	$a0, $a1, 8
	b	.LBB31_299
.LBB31_296:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
.LBB31_297:                             # %car.exit127
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_298:                             # %car.exit127
	move	$a0, $zero
.LBB31_299:                             # %car.exit127
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	move	$s1, $a0
	beqz	$a1, .LBB31_311
# %bb.300:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_311
# %bb.301:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_309
# %bb.302:                              # %cdr.exit129
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB31_311
# %bb.303:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_311
# %bb.304:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_309
# %bb.305:                              # %cdr.exit131
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB31_311
# %bb.306:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_311
# %bb.307:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_379
# %bb.308:
	ld.d	$a0, $a1, 8
	b	.LBB31_312
.LBB31_309:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
.LBB31_310:                             # %car.exit133
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_311:                             # %car.exit133
	move	$a0, $zero
.LBB31_312:                             # %car.exit133
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	move	$s2, $a0
	beqz	$a1, .LBB31_327
# %bb.313:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_327
# %bb.314:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_325
# %bb.315:                              # %cdr.exit135
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB31_327
# %bb.316:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_327
# %bb.317:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_325
# %bb.318:                              # %cdr.exit137
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB31_327
# %bb.319:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_327
# %bb.320:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_325
# %bb.321:                              # %cdr.exit139
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB31_327
# %bb.322:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_327
# %bb.323:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_381
# %bb.324:
	ld.d	$a0, $a1, 8
	b	.LBB31_328
.LBB31_325:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
.LBB31_326:                             # %car.exit141
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_327:                             # %car.exit141
	move	$a0, $zero
.LBB31_328:                             # %car.exit141
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	move	$a0, $s0
	move	$a1, $fp
	b	.LBB31_358
.LBB31_329:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_330:                             # %car.exit148
	move	$a0, $zero
.LBB31_331:                             # %car.exit148
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $fp
	move	$a1, $s0
	jirl	$ra, $s1, 0
	b	.LBB31_113
.LBB31_332:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_333:                             # %car.exit160
	move	$a0, $zero
.LBB31_334:                             # %car.exit160
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	move	$s1, $a0
	beqz	$a1, .LBB31_343
# %bb.335:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_343
# %bb.336:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_341
# %bb.337:                              # %cdr.exit162
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB31_343
# %bb.338:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_343
# %bb.339:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_376
# %bb.340:
	ld.d	$a0, $a1, 8
	b	.LBB31_344
.LBB31_341:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
.LBB31_342:                             # %car.exit164
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_343:                             # %car.exit164
	move	$a0, $zero
.LBB31_344:                             # %car.exit164
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	move	$s2, $a0
	beqz	$a1, .LBB31_356
# %bb.345:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_356
# %bb.346:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_354
# %bb.347:                              # %cdr.exit166
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB31_356
# %bb.348:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_356
# %bb.349:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_354
# %bb.350:                              # %cdr.exit168
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB31_356
# %bb.351:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_356
# %bb.352:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_380
# %bb.353:
	ld.d	$a0, $a1, 8
	b	.LBB31_357
.LBB31_354:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
.LBB31_355:                             # %car.exit170
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_356:                             # %car.exit170
	move	$a0, $zero
.LBB31_357:                             # %car.exit170
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	move	$a0, $fp
	move	$a1, $s0
.LBB31_358:                             # %.critedge88
	move	$a2, $s1
	move	$a3, $s2
	jirl	$ra, $s3, 0
	b	.LBB31_113
.LBB31_359:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_360:                             # %car.exit152
	move	$a0, $zero
.LBB31_361:                             # %car.exit152
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	move	$s1, $a0
	beqz	$a1, .LBB31_370
# %bb.362:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_370
# %bb.363:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_368
# %bb.364:                              # %cdr.exit154
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB31_370
# %bb.365:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB31_370
# %bb.366:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB31_377
# %bb.367:
	ld.d	$a0, $a1, 8
	b	.LBB31_371
.LBB31_368:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
.LBB31_369:                             # %car.exit156
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB31_370:                             # %car.exit156
	move	$a0, $zero
.LBB31_371:                             # %car.exit156
	ld.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	move	$a0, $fp
	move	$a1, $s0
.LBB31_372:                             # %.critedge88
	move	$a2, $s1
	jirl	$ra, $s2, 0
	b	.LBB31_113
.LBB31_373:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB31_258
.LBB31_374:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB31_271
.LBB31_375:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB31_297
.LBB31_376:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB31_342
.LBB31_377:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB31_369
.LBB31_378:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB31_284
.LBB31_379:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB31_310
.LBB31_380:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB31_355
.LBB31_381:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB31_326
.LBB31_382:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.Lfunc_end31:
	.size	leval, .Lfunc_end31-leval
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI31_0:
	.word	.LBB31_19-.LJTI31_0
	.word	.LBB31_123-.LJTI31_0
	.word	.LBB31_119-.LJTI31_0
	.word	.LBB31_124-.LJTI31_0
	.word	.LBB31_128-.LJTI31_0
	.word	.LBB31_114-.LJTI31_0
	.word	.LBB31_132-.LJTI31_0
	.word	.LBB31_27-.LJTI31_0
	.word	.LBB31_28-.LJTI31_0
	.word	.LBB31_36-.LJTI31_0
	.word	.LBB31_36-.LJTI31_0
	.word	.LBB31_36-.LJTI31_0
	.word	.LBB31_36-.LJTI31_0
	.word	.LBB31_36-.LJTI31_0
	.word	.LBB31_36-.LJTI31_0
	.word	.LBB31_36-.LJTI31_0
	.word	.LBB31_133-.LJTI31_0
	.word	.LBB31_137-.LJTI31_0
	.word	.LBB31_115-.LJTI31_0
.LJTI31_1:
	.word	.LBB31_106-.LJTI31_1
	.word	.LBB31_141-.LJTI31_1
	.word	.LBB31_149-.LJTI31_1
	.word	.LBB31_145-.LJTI31_1
	.word	.LBB31_110-.LJTI31_1
	.word	.LBB31_110-.LJTI31_1
	.word	.LBB31_110-.LJTI31_1
	.word	.LBB31_110-.LJTI31_1
	.word	.LBB31_110-.LJTI31_1
	.word	.LBB31_110-.LJTI31_1
	.word	.LBB31_110-.LJTI31_1
	.word	.LBB31_110-.LJTI31_1
	.word	.LBB31_110-.LJTI31_1
	.word	.LBB31_110-.LJTI31_1
	.word	.LBB31_157-.LJTI31_1
	.word	.LBB31_153-.LJTI31_1
                                        # -- End function
	.text
	.globl	lprint                          # -- Begin function lprint
	.p2align	5
	.type	lprint,@function
lprint:                                 # @lprint
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a1
	bnez	$a1, .LBB32_2
# %bb.1:
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$s0, $a1, 0
	bnez	$s0, .LBB32_7
.LBB32_2:
	beqz	$fp, .LBB32_4
# %bb.3:
	ld.hu	$a1, $fp, 2
	ori	$a2, $zero, 17
	beq	$a1, $a2, .LBB32_5
.LBB32_4:                               # %.critedge.i
	pcalau12i	$a1, %pc_hi20(.L.str.134)
	addi.d	$a1, $a1, %pc_lo12(.L.str.134)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB32_5:
	ld.d	$s0, $fp, 8
	bnez	$s0, .LBB32_7
# %bb.6:
	pcalau12i	$a1, %pc_hi20(.L.str.151)
	addi.d	$a1, $a1, %pc_lo12(.L.str.151)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s0, $fp, 8
.LBB32_7:                               # %get_c_file.exit
	st.d	$zero, $sp, 16
	pcalau12i	$a1, %pc_hi20(fputs_fcn)
	addi.d	$a1, $a1, %pc_lo12(fputs_fcn)
	st.d	$a1, $sp, 24
	st.d	$s0, $sp, 32
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(lprin1g)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(nointerrupt)
	ld.d	$s2, $s1, %pc_lo12(nointerrupt)
	ori	$fp, $zero, 1
	st.d	$fp, $s1, %pc_lo12(nointerrupt)
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	st.d	$s2, $s1, %pc_lo12(nointerrupt)
	bnez	$s2, .LBB32_10
# %bb.8:                                # %get_c_file.exit
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	ld.d	$a1, $a0, %pc_lo12(interrupt_differed)
	bne	$a1, $fp, .LBB32_10
# %bb.9:
	st.d	$zero, $a0, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB32_10:                              # %fput_st.exit
	move	$a0, $zero
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end32:
	.size	lprint, .Lfunc_end32-lprint
                                        # -- End function
	.globl	set_fatal_exit_hook             # -- Begin function set_fatal_exit_hook
	.p2align	5
	.type	set_fatal_exit_hook,@function
set_fatal_exit_hook:                    # @set_fatal_exit_hook
# %bb.0:
	pcalau12i	$a1, %pc_hi20(fatal_exit_hook)
	st.d	$a0, $a1, %pc_lo12(fatal_exit_hook)
	ret
.Lfunc_end33:
	.size	set_fatal_exit_hook, .Lfunc_end33-set_fatal_exit_hook
                                        # -- End function
	.globl	get_c_string                    # -- Begin function get_c_string
	.p2align	5
	.type	get_c_string,@function
get_c_string:                           # @get_c_string
# %bb.0:
	move	$a1, $a0
	beqz	$a0, .LBB34_4
# %bb.1:
	ld.hu	$a0, $a1, 2
	ori	$a2, $zero, 13
	beq	$a0, $a2, .LBB34_5
# %bb.2:
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB34_4
# %bb.3:
	ld.d	$a0, $a1, 8
	ret
.LBB34_4:                               # %.critedge10
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB34_5:
	ld.d	$a0, $a1, 16
	ret
.Lfunc_end34:
	.size	get_c_string, .Lfunc_end34-get_c_string
                                        # -- End function
	.globl	try_get_c_string                # -- Begin function try_get_c_string
	.p2align	5
	.type	try_get_c_string,@function
try_get_c_string:                       # @try_get_c_string
# %bb.0:
	beqz	$a0, .LBB35_4
# %bb.1:
	ld.hu	$a1, $a0, 2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB35_5
# %bb.2:
	ori	$a2, $zero, 13
	bne	$a1, $a2, .LBB35_4
# %bb.3:
	ori	$a1, $zero, 16
	ldx.d	$a0, $a0, $a1
	ret
.LBB35_4:
	move	$a0, $zero
	ret
.LBB35_5:
	ori	$a1, $zero, 8
	ldx.d	$a0, $a0, $a1
	ret
.Lfunc_end35:
	.size	try_get_c_string, .Lfunc_end35-try_get_c_string
                                        # -- End function
	.globl	setvar                          # -- Begin function setvar
	.p2align	5
	.type	setvar,@function
setvar:                                 # @setvar
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a0, .LBB36_2
# %bb.1:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB36_3
.LBB36_2:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB36_3:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(envlookup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB36_5
# %bb.4:
	st.d	$fp, $a0, 8
	b	.LBB36_6
.LBB36_5:
	st.d	$fp, $s0, 16
.LBB36_6:
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end36:
	.size	setvar, .Lfunc_end36-setvar
                                        # -- End function
	.globl	cons                            # -- Begin function cons
	.p2align	5
	.type	cons,@function
cons:                                   # @cons
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(gc_kind_copying)
	ld.d	$a2, $a2, %pc_lo12(gc_kind_copying)
	ori	$a3, $zero, 1
	move	$fp, $a1
	move	$s0, $a0
	bne	$a2, $a3, .LBB37_4
# %bb.1:
	pcalau12i	$s1, %pc_hi20(heap)
	ld.d	$a0, $s1, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB37_3
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB37_3:
	addi.d	$a1, $a0, 24
	st.d	$a1, $s1, %pc_lo12(heap)
	b	.LBB37_7
.LBB37_4:
	pcalau12i	$s1, %pc_hi20(freelist)
	ld.d	$a0, $s1, %pc_lo12(freelist)
	bnez	$a0, .LBB37_6
# %bb.5:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(freelist)
.LBB37_6:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $s1, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB37_7:
	lu12i.w	$a1, 16
	st.w	$a1, $a0, 0
	st.d	$s0, $a0, 8
	st.d	$fp, $a0, 16
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end37:
	.size	cons, .Lfunc_end37-cons
                                        # -- End function
	.globl	errswitch                       # -- Begin function errswitch
	.p2align	5
	.type	errswitch,@function
errswitch:                              # @errswitch
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end38:
	.size	errswitch, .Lfunc_end38-errswitch
                                        # -- End function
	.globl	err_stack                       # -- Begin function err_stack
	.p2align	5
	.type	err_stack,@function
err_stack:                              # @err_stack
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	move	$a1, $zero
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end39:
	.size	err_stack, .Lfunc_end39-err_stack
                                        # -- End function
	.globl	stack_limit                     # -- Begin function stack_limit
	.p2align	5
	.type	stack_limit,@function
stack_limit:                            # @stack_limit
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a1
	pcalau12i	$s0, %pc_hi20(stack_size)
	pcalau12i	$s1, %pc_hi20(stack_start_ptr)
	pcalau12i	$s2, %pc_hi20(stack_limit_ptr)
	beqz	$a0, .LBB40_2
# %bb.1:
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(stack_start_ptr)
	st.d	$a0, $s0, %pc_lo12(stack_size)
	sub.d	$a0, $a1, $a0
	st.d	$a0, $s2, %pc_lo12(stack_limit_ptr)
.LBB40_2:
	beqz	$fp, .LBB40_12
# %bb.3:
	ld.d	$a0, $s0, %pc_lo12(stack_size)
	pcalau12i	$a1, %pc_hi20(inums_dim)
	ld.d	$a2, $a1, %pc_lo12(inums_dim)
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs0, $fa0
	blez	$a2, .LBB40_8
# %bb.4:
	ftintrz.l.d	$fa0, $fs0
	movfr2gr.d	$a1, $fa0
	bge	$a1, $a2, .LBB40_8
# %bb.5:
	bltz	$a0, .LBB40_8
# %bb.6:
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	fcmp.cune.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB40_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(inums)
	ld.d	$a0, $a0, %pc_lo12(inums)
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	b	.LBB40_19
.LBB40_8:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB40_15
# %bb.9:
	pcalau12i	$fp, %pc_hi20(heap)
	ld.d	$a0, $fp, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB40_11
# %bb.10:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB40_11:
	addi.d	$a1, $a0, 24
	st.d	$a1, $fp, %pc_lo12(heap)
	b	.LBB40_18
.LBB40_12:
	pcalau12i	$fp, %pc_hi20(tkbuffer)
	ld.d	$a0, $fp, %pc_lo12(tkbuffer)
	ld.d	$a2, $s0, %pc_lo12(stack_size)
	ld.d	$a3, $s1, %pc_lo12(stack_start_ptr)
	ld.d	$a4, $s2, %pc_lo12(stack_limit_ptr)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(tkbuffer)
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $a1, 0
	pcalau12i	$s0, %pc_hi20(nointerrupt)
	ld.d	$s1, $s0, %pc_lo12(nointerrupt)
	ori	$fp, $zero, 1
	st.d	$fp, $s0, %pc_lo12(nointerrupt)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	st.d	$s1, $s0, %pc_lo12(nointerrupt)
	bnez	$s1, .LBB40_19
# %bb.13:
	pcalau12i	$a1, %pc_hi20(interrupt_differed)
	ld.d	$a2, $a1, %pc_lo12(interrupt_differed)
	bne	$a2, $fp, .LBB40_19
# %bb.14:
	st.d	$zero, $a1, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB40_19
.LBB40_15:
	pcalau12i	$fp, %pc_hi20(freelist)
	ld.d	$a0, $fp, %pc_lo12(freelist)
	bnez	$a0, .LBB40_17
# %bb.16:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(freelist)
.LBB40_17:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $fp, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB40_18:
	lu12i.w	$a1, 32
	st.w	$a1, $a0, 0
	fst.d	$fs0, $a0, 8
.LBB40_19:                              # %put_st.exit
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end40:
	.size	stack_limit, .Lfunc_end40-stack_limit
                                        # -- End function
	.globl	flocons                         # -- Begin function flocons
	.p2align	5
	.type	flocons,@function
flocons:                                # @flocons
# %bb.0:
	pcalau12i	$a0, %pc_hi20(inums_dim)
	ld.d	$a0, $a0, %pc_lo12(inums_dim)
	blez	$a0, .LBB41_5
# %bb.1:
	movgr2fr.d	$fa1, $zero
	fcmp.cult.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB41_5
# %bb.2:
	ftintrz.l.d	$fa1, $fa0
	movfr2gr.d	$a1, $fa1
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB41_5
# %bb.3:
	bge	$a1, $a0, .LBB41_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(inums)
	ld.d	$a0, $a0, %pc_lo12(inums)
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ret
.LBB41_5:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB41_9
# %bb.6:
	pcalau12i	$fp, %pc_hi20(heap)
	ld.d	$a0, $fp, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB41_8
# %bb.7:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $zero
	fmov.d	$fs0, $fa0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	fmov.d	$fa0, $fs0
.LBB41_8:
	addi.d	$a1, $a0, 24
	st.d	$a1, $fp, %pc_lo12(heap)
	b	.LBB41_12
.LBB41_9:
	pcalau12i	$fp, %pc_hi20(freelist)
	ld.d	$a0, $fp, %pc_lo12(freelist)
	bnez	$a0, .LBB41_11
# %bb.10:
	fmov.d	$fs0, $fa0
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	fmov.d	$fa0, $fs0
	ld.d	$a0, $fp, %pc_lo12(freelist)
.LBB41_11:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $fp, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB41_12:
	lu12i.w	$a1, 32
	st.w	$a1, $a0, 0
	fst.d	$fa0, $a0, 8
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end41:
	.size	flocons, .Lfunc_end41-flocons
                                        # -- End function
	.globl	get_c_string_dim                # -- Begin function get_c_string_dim
	.p2align	5
	.type	get_c_string_dim,@function
get_c_string_dim:                       # @get_c_string_dim
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB42_4
# %bb.1:
	ld.hu	$a0, $fp, 2
	addi.d	$a0, $a0, -3
	ori	$a2, $zero, 15
	bltu	$a2, $a0, .LBB42_4
# %bb.2:
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(.LJTI42_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI42_0)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB42_3:
	ld.d	$a0, $fp, 8
	b	.LBB42_7
.LBB42_4:                               # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB42_8
.LBB42_5:
	ld.d	$a0, $fp, 8
	move	$s0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $fp, 8
	b	.LBB42_8
.LBB42_6:
	ld.d	$a0, $fp, 8
	slli.d	$a0, $a0, 3
.LBB42_7:
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, 16
.LBB42_8:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end42:
	.size	get_c_string_dim, .Lfunc_end42-get_c_string_dim
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI42_0:
	.word	.LBB42_5-.LJTI42_0
	.word	.LBB42_4-.LJTI42_0
	.word	.LBB42_4-.LJTI42_0
	.word	.LBB42_4-.LJTI42_0
	.word	.LBB42_4-.LJTI42_0
	.word	.LBB42_4-.LJTI42_0
	.word	.LBB42_4-.LJTI42_0
	.word	.LBB42_4-.LJTI42_0
	.word	.LBB42_4-.LJTI42_0
	.word	.LBB42_4-.LJTI42_0
	.word	.LBB42_3-.LJTI42_0
	.word	.LBB42_4-.LJTI42_0
	.word	.LBB42_6-.LJTI42_0
	.word	.LBB42_4-.LJTI42_0
	.word	.LBB42_4-.LJTI42_0
	.word	.LBB42_3-.LJTI42_0
                                        # -- End function
	.text
	.globl	lerr                            # -- Begin function lerr
	.p2align	5
	.type	lerr,@function
lerr:                                   # @lerr
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$a2, $a0
	beqz	$a0, .LBB43_7
# %bb.1:
	ld.hu	$a0, $a2, 2
	ori	$a3, $zero, 13
	beq	$a0, $a3, .LBB43_10
# %bb.2:
	ori	$a3, $zero, 3
	beq	$a0, $a3, .LBB43_9
# %bb.3:
	ori	$a3, $zero, 1
	bne	$a0, $a3, .LBB43_7
# %bb.4:
	ld.d	$a0, $a2, 8
	beqz	$a0, .LBB43_7
# %bb.5:
	ld.hu	$a0, $a0, 2
	ori	$a3, $zero, 13
	bne	$a0, $a3, .LBB43_7
# %bb.6:
	move	$a0, $zero
	move	$a1, $a2
	b	.LBB43_8
.LBB43_7:                               # %.critedge10.i
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$fp, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	move	$a0, $zero
.LBB43_8:                               # %get_c_string.exit
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB43_9:
	ld.d	$a0, $a2, 8
	b	.LBB43_8
.LBB43_10:
	ld.d	$a0, $a2, 16
	b	.LBB43_8
.Lfunc_end43:
	.size	lerr, .Lfunc_end43-lerr
                                        # -- End function
	.globl	gc_fatal_error                  # -- Begin function gc_fatal_error
	.p2align	5
	.type	gc_fatal_error,@function
gc_fatal_error:                         # @gc_fatal_error
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end44:
	.size	gc_fatal_error, .Lfunc_end44-gc_fatal_error
                                        # -- End function
	.globl	newcell                         # -- Begin function newcell
	.p2align	5
	.type	newcell,@function
newcell:                                # @newcell
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(gc_kind_copying)
	ld.d	$a1, $a1, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB45_4
# %bb.1:
	pcalau12i	$s0, %pc_hi20(heap)
	ld.d	$a0, $s0, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB45_3
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s1
.LBB45_3:
	addi.d	$a1, $a0, 24
	st.d	$a1, $s0, %pc_lo12(heap)
	b	.LBB45_7
.LBB45_4:
	pcalau12i	$s0, %pc_hi20(freelist)
	ld.d	$a0, $s0, %pc_lo12(freelist)
	bnez	$a0, .LBB45_6
# %bb.5:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(freelist)
.LBB45_6:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $s0, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB45_7:
	st.h	$zero, $a0, 0
	st.h	$fp, $a0, 2
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end45:
	.size	newcell, .Lfunc_end45-newcell
                                        # -- End function
	.globl	gc_for_newcell                  # -- Begin function gc_for_newcell
	.p2align	5
	.type	gc_for_newcell,@function
gc_for_newcell:                         # @gc_for_newcell
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(heap)
	ld.d	$a1, $a0, %pc_lo12(heap)
	pcalau12i	$a2, %pc_hi20(heap_end)
	ld.d	$a2, $a2, %pc_lo12(heap_end)
	bgeu	$a1, $a2, .LBB46_3
# %bb.1:
	pcalau12i	$a2, %pc_hi20(freelist)
	st.d	$a1, $a2, %pc_lo12(freelist)
	st.d	$zero, $a1, 16
	addi.d	$a1, $a1, 24
	st.d	$a1, $a0, %pc_lo12(heap)
.LBB46_2:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB46_3:
	pcalau12i	$fp, %pc_hi20(errjmp_ok)
	ld.d	$a0, $fp, %pc_lo12(errjmp_ok)
	bnez	$a0, .LBB46_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB46_5:
	pcalau12i	$s1, %pc_hi20(nointerrupt)
	ld.d	$s2, $s1, %pc_lo12(nointerrupt)
	ori	$s0, $zero, 1
	st.d	$s0, $s1, %pc_lo12(nointerrupt)
	st.d	$zero, $fp, %pc_lo12(errjmp_ok)
	pcaddu18i	$ra, %call36(gc_mark_and_sweep)
	jirl	$ra, $ra, 0
	st.d	$s0, $fp, %pc_lo12(errjmp_ok)
	st.d	$s2, $s1, %pc_lo12(nointerrupt)
	bnez	$s2, .LBB46_8
# %bb.6:
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	ld.d	$a1, $a0, %pc_lo12(interrupt_differed)
	bne	$a1, $s0, .LBB46_8
# %bb.7:
	st.d	$zero, $a0, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB46_8:                               # %no_interrupt.exit
	pcalau12i	$a0, %pc_hi20(freelist)
	ld.d	$a0, $a0, %pc_lo12(freelist)
	beqz	$a0, .LBB46_15
# %bb.9:                                # %.lr.ph.preheader
	move	$a1, $zero
	ori	$a2, $zero, 98
	.p2align	4, , 16
.LBB46_10:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a3, $a1
	addi.d	$a1, $a1, 1
	bltu	$a2, $a3, .LBB46_12
# %bb.11:                               # %.lr.ph
                                        #   in Loop: Header=BB46_10 Depth=1
	ld.d	$a0, $a0, 16
	bnez	$a0, .LBB46_10
.LBB46_12:                              # %._crit_edge
	ori	$a0, $zero, 100
	bne	$a1, $a0, .LBB46_17
# %bb.13:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(sym_after_gc)
	ld.d	$a0, $a0, %pc_lo12(sym_after_gc)
	beqz	$a0, .LBB46_17
# %bb.14:
	move	$a1, $zero
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(leval)
	jr	$t8
.LBB46_15:
	pcaddu18i	$ra, %call36(allocate_aheap)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB46_2
# %bb.16:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB46_17:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(allocate_aheap)
	jr	$t8
.Lfunc_end46:
	.size	gc_for_newcell, .Lfunc_end46-gc_for_newcell
                                        # -- End function
	.globl	consp                           # -- Begin function consp
	.p2align	5
	.type	consp,@function
consp:                                  # @consp
# %bb.0:
	beqz	$a0, .LBB47_2
# %bb.1:
	ld.hu	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(sym_t)
	ld.d	$a1, $a1, %pc_lo12(sym_t)
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a1, $a0
	ret
.LBB47_2:
	move	$a0, $zero
	ret
.Lfunc_end47:
	.size	consp, .Lfunc_end47-consp
                                        # -- End function
	.globl	car                             # -- Begin function car
	.p2align	5
	.type	car,@function
car:                                    # @car
# %bb.0:
	beqz	$a0, .LBB48_4
# %bb.1:
	move	$a1, $a0
	ld.hu	$a0, $a0, 2
	beqz	$a0, .LBB48_4
# %bb.2:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB48_5
# %bb.3:
	ld.d	$a0, $a1, 8
	ret
.LBB48_4:
	move	$a0, $zero
	ret
.LBB48_5:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end48:
	.size	car, .Lfunc_end48-car
                                        # -- End function
	.globl	cdr                             # -- Begin function cdr
	.p2align	5
	.type	cdr,@function
cdr:                                    # @cdr
# %bb.0:
	beqz	$a0, .LBB49_4
# %bb.1:
	move	$a1, $a0
	ld.hu	$a0, $a0, 2
	beqz	$a0, .LBB49_4
# %bb.2:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB49_5
# %bb.3:
	ld.d	$a0, $a1, 16
	ret
.LBB49_4:
	move	$a0, $zero
	ret
.LBB49_5:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end49:
	.size	cdr, .Lfunc_end49-cdr
                                        # -- End function
	.globl	setcar                          # -- Begin function setcar
	.p2align	5
	.type	setcar,@function
setcar:                                 # @setcar
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a0, .LBB50_2
# %bb.1:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB50_3
.LBB50_2:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB50_3:
	st.d	$fp, $s0, 8
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end50:
	.size	setcar, .Lfunc_end50-setcar
                                        # -- End function
	.globl	setcdr                          # -- Begin function setcdr
	.p2align	5
	.type	setcdr,@function
setcdr:                                 # @setcdr
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a0, .LBB51_2
# %bb.1:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB51_3
.LBB51_2:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB51_3:
	st.d	$fp, $s0, 16
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end51:
	.size	setcdr, .Lfunc_end51-setcdr
                                        # -- End function
	.globl	numberp                         # -- Begin function numberp
	.p2align	5
	.type	numberp,@function
numberp:                                # @numberp
# %bb.0:
	beqz	$a0, .LBB52_2
# %bb.1:
	ld.hu	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(sym_t)
	ld.d	$a1, $a1, %pc_lo12(sym_t)
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a1, $a0
	ret
.LBB52_2:
	move	$a0, $zero
	ret
.Lfunc_end52:
	.size	numberp, .Lfunc_end52-numberp
                                        # -- End function
	.globl	plus                            # -- Begin function plus
	.p2align	5
	.type	plus,@function
plus:                                   # @plus
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a1, .LBB53_15
# %bb.1:
	move	$s0, $a1
	beqz	$fp, .LBB53_3
# %bb.2:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB53_4
.LBB53_3:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB53_4:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB53_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB53_6:
	fld.d	$fa0, $fp, 8
	fld.d	$fa1, $s0, 8
	pcalau12i	$a0, %pc_hi20(inums_dim)
	ld.d	$a1, $a0, %pc_lo12(inums_dim)
	fadd.d	$fs0, $fa0, $fa1
	blez	$a1, .LBB53_11
# %bb.7:
	ftintrz.l.d	$fa0, $fs0
	movfr2gr.d	$a0, $fa0
	bge	$a0, $a1, .LBB53_11
# %bb.8:
	movgr2fr.d	$fa0, $zero
	fcmp.cult.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB53_11
# %bb.9:
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fcmp.cune.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB53_11
# %bb.10:
	pcalau12i	$a1, %pc_hi20(inums)
	ld.d	$a1, $a1, %pc_lo12(inums)
	slli.d	$a0, $a0, 3
	ldx.d	$fp, $a1, $a0
	b	.LBB53_22
.LBB53_11:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB53_18
# %bb.12:
	pcalau12i	$s0, %pc_hi20(heap)
	ld.d	$fp, $s0, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$fp, $a0, .LBB53_14
# %bb.13:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB53_14:
	addi.d	$a0, $fp, 24
	st.d	$a0, $s0, %pc_lo12(heap)
	b	.LBB53_21
.LBB53_15:
	bnez	$fp, .LBB53_22
# %bb.16:
	pcalau12i	$a0, %pc_hi20(inums_dim)
	ld.d	$a0, $a0, %pc_lo12(inums_dim)
	blez	$a0, .LBB53_23
# %bb.17:
	pcalau12i	$a0, %pc_hi20(inums)
	ld.d	$a0, $a0, %pc_lo12(inums)
	ld.d	$fp, $a0, 0
	b	.LBB53_22
.LBB53_18:
	pcalau12i	$s0, %pc_hi20(freelist)
	ld.d	$fp, $s0, %pc_lo12(freelist)
	bnez	$fp, .LBB53_20
# %bb.19:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, %pc_lo12(freelist)
.LBB53_20:
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s0, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB53_21:
	lu12i.w	$a0, 32
	st.w	$a0, $fp, 0
	fst.d	$fs0, $fp, 8
.LBB53_22:                              # %flocons.exit
	move	$a0, $fp
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB53_23:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB53_27
# %bb.24:
	pcalau12i	$s0, %pc_hi20(heap)
	ld.d	$fp, $s0, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$fp, $a0, .LBB53_26
# %bb.25:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB53_26:
	addi.d	$a0, $fp, 24
	st.d	$a0, $s0, %pc_lo12(heap)
	b	.LBB53_30
.LBB53_27:
	pcalau12i	$s0, %pc_hi20(freelist)
	ld.d	$fp, $s0, %pc_lo12(freelist)
	bnez	$fp, .LBB53_29
# %bb.28:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, %pc_lo12(freelist)
.LBB53_29:
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s0, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB53_30:
	lu12i.w	$a0, 32
	st.w	$a0, $fp, 0
	st.d	$zero, $fp, 8
	b	.LBB53_22
.Lfunc_end53:
	.size	plus, .Lfunc_end53-plus
                                        # -- End function
	.globl	ltimes                          # -- Begin function ltimes
	.p2align	5
	.type	ltimes,@function
ltimes:                                 # @ltimes
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a1, .LBB54_15
# %bb.1:
	move	$s0, $a1
	beqz	$fp, .LBB54_3
# %bb.2:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB54_4
.LBB54_3:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB54_4:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB54_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB54_6:
	fld.d	$fa0, $fp, 8
	fld.d	$fa1, $s0, 8
	pcalau12i	$a0, %pc_hi20(inums_dim)
	ld.d	$a1, $a0, %pc_lo12(inums_dim)
	fmul.d	$fs0, $fa0, $fa1
	blez	$a1, .LBB54_11
# %bb.7:
	ftintrz.l.d	$fa0, $fs0
	movfr2gr.d	$a0, $fa0
	bge	$a0, $a1, .LBB54_11
# %bb.8:
	movgr2fr.d	$fa0, $zero
	fcmp.cult.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB54_11
# %bb.9:
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fcmp.cune.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB54_11
# %bb.10:
	pcalau12i	$a1, %pc_hi20(inums)
	ld.d	$a1, $a1, %pc_lo12(inums)
	slli.d	$a0, $a0, 3
	ldx.d	$fp, $a1, $a0
	b	.LBB54_22
.LBB54_11:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB54_18
# %bb.12:
	pcalau12i	$s0, %pc_hi20(heap)
	ld.d	$fp, $s0, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$fp, $a0, .LBB54_14
# %bb.13:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB54_14:
	addi.d	$a0, $fp, 24
	st.d	$a0, $s0, %pc_lo12(heap)
	b	.LBB54_21
.LBB54_15:
	bnez	$fp, .LBB54_22
# %bb.16:
	pcalau12i	$a0, %pc_hi20(inums_dim)
	ld.d	$a0, $a0, %pc_lo12(inums_dim)
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB54_23
# %bb.17:
	pcalau12i	$a0, %pc_hi20(inums)
	ld.d	$a0, $a0, %pc_lo12(inums)
	ld.d	$fp, $a0, 8
	b	.LBB54_22
.LBB54_18:
	pcalau12i	$s0, %pc_hi20(freelist)
	ld.d	$fp, $s0, %pc_lo12(freelist)
	bnez	$fp, .LBB54_20
# %bb.19:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, %pc_lo12(freelist)
.LBB54_20:
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s0, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB54_21:
	lu12i.w	$a0, 32
	st.w	$a0, $fp, 0
	fst.d	$fs0, $fp, 8
.LBB54_22:                              # %flocons.exit
	move	$a0, $fp
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB54_23:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB54_27
# %bb.24:
	pcalau12i	$s0, %pc_hi20(heap)
	ld.d	$fp, $s0, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$fp, $a0, .LBB54_26
# %bb.25:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB54_26:
	addi.d	$a0, $fp, 24
	st.d	$a0, $s0, %pc_lo12(heap)
	b	.LBB54_30
.LBB54_27:
	pcalau12i	$s0, %pc_hi20(freelist)
	ld.d	$fp, $s0, %pc_lo12(freelist)
	bnez	$fp, .LBB54_29
# %bb.28:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, %pc_lo12(freelist)
.LBB54_29:
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s0, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB54_30:
	lu12i.w	$a0, 32
	st.w	$a0, $fp, 0
	lu52i.d	$a0, $zero, 1023
	st.d	$a0, $fp, 8
	b	.LBB54_22
.Lfunc_end54:
	.size	ltimes, .Lfunc_end54-ltimes
                                        # -- End function
	.globl	difference                      # -- Begin function difference
	.p2align	5
	.type	difference,@function
difference:                             # @difference
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a0, .LBB55_2
# %bb.1:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB55_3
.LBB55_2:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB55_3:
	beqz	$fp, .LBB55_9
# %bb.4:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB55_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB55_6:
	fld.d	$fa0, $s0, 8
	fld.d	$fa1, $fp, 8
	pcalau12i	$a0, %pc_hi20(inums_dim)
	ld.d	$a1, $a0, %pc_lo12(inums_dim)
	fsub.d	$fs0, $fa0, $fa1
	blez	$a1, .LBB55_14
# %bb.7:
	ftintrz.l.d	$fa0, $fs0
	movfr2gr.d	$a0, $fa0
	bge	$a0, $a1, .LBB55_14
# %bb.8:
	movgr2fr.d	$fa0, $zero
	fcmp.cult.d	$fcc0, $fs0, $fa0
	bceqz	$fcc0, .LBB55_12
	b	.LBB55_14
.LBB55_9:
	fld.d	$fa0, $s0, 8
	pcalau12i	$a0, %pc_hi20(inums_dim)
	ld.d	$a1, $a0, %pc_lo12(inums_dim)
	fneg.d	$fs0, $fa0
	blez	$a1, .LBB55_14
# %bb.10:
	ftintrz.l.d	$fa1, $fs0
	movfr2gr.d	$a0, $fa1
	bge	$a0, $a1, .LBB55_14
# %bb.11:
	movgr2fr.d	$fa1, $zero
	fcmp.cult.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB55_14
.LBB55_12:
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fcmp.cune.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB55_14
# %bb.13:
	pcalau12i	$a1, %pc_hi20(inums)
	ld.d	$a1, $a1, %pc_lo12(inums)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	b	.LBB55_22
.LBB55_14:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB55_18
# %bb.15:
	pcalau12i	$fp, %pc_hi20(heap)
	ld.d	$a0, $fp, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB55_17
# %bb.16:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB55_17:
	addi.d	$a1, $a0, 24
	st.d	$a1, $fp, %pc_lo12(heap)
	b	.LBB55_21
.LBB55_18:
	pcalau12i	$fp, %pc_hi20(freelist)
	ld.d	$a0, $fp, %pc_lo12(freelist)
	bnez	$a0, .LBB55_20
# %bb.19:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(freelist)
.LBB55_20:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $fp, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB55_21:
	lu12i.w	$a1, 32
	st.w	$a1, $a0, 0
	fst.d	$fs0, $a0, 8
.LBB55_22:                              # %flocons.exit
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end55:
	.size	difference, .Lfunc_end55-difference
                                        # -- End function
	.globl	Quotient                        # -- Begin function Quotient
	.p2align	5
	.type	Quotient,@function
Quotient:                               # @Quotient
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a0, .LBB56_2
# %bb.1:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB56_3
.LBB56_2:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB56_3:
	beqz	$fp, .LBB56_7
# %bb.4:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB56_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB56_6:
	fld.d	$fa0, $s0, 8
	fld.d	$fa1, $fp, 8
	pcalau12i	$a0, %pc_hi20(inums_dim)
	ld.d	$a1, $a0, %pc_lo12(inums_dim)
	fdiv.d	$fs0, $fa0, $fa1
	bgtz	$a1, .LBB56_8
	b	.LBB56_12
.LBB56_7:
	fld.d	$fa0, $s0, 8
	pcalau12i	$a0, %pc_hi20(inums_dim)
	ld.d	$a1, $a0, %pc_lo12(inums_dim)
	frecip.d	$fs0, $fa0
	blez	$a1, .LBB56_12
.LBB56_8:
	ftintrz.l.d	$fa0, $fs0
	movfr2gr.d	$a0, $fa0
	bge	$a0, $a1, .LBB56_12
# %bb.9:
	movgr2fr.d	$fa0, $zero
	fcmp.cult.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB56_12
# %bb.10:
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fcmp.cune.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB56_12
# %bb.11:
	pcalau12i	$a1, %pc_hi20(inums)
	ld.d	$a1, $a1, %pc_lo12(inums)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	b	.LBB56_20
.LBB56_12:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB56_16
# %bb.13:
	pcalau12i	$fp, %pc_hi20(heap)
	ld.d	$a0, $fp, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB56_15
# %bb.14:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB56_15:
	addi.d	$a1, $a0, 24
	st.d	$a1, $fp, %pc_lo12(heap)
	b	.LBB56_19
.LBB56_16:
	pcalau12i	$fp, %pc_hi20(freelist)
	ld.d	$a0, $fp, %pc_lo12(freelist)
	bnez	$a0, .LBB56_18
# %bb.17:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(freelist)
.LBB56_18:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $fp, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB56_19:
	lu12i.w	$a1, 32
	st.w	$a1, $a0, 0
	fst.d	$fs0, $a0, 8
.LBB56_20:                              # %flocons.exit
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end56:
	.size	Quotient, .Lfunc_end56-Quotient
                                        # -- End function
	.globl	lllabs                          # -- Begin function lllabs
	.p2align	5
	.type	lllabs,@function
lllabs:                                 # @lllabs
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB57_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB57_3
.LBB57_2:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB57_3:
	fld.d	$fa0, $fp, 8
	movgr2fr.d	$fa1, $zero
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB57_16
# %bb.4:
	pcalau12i	$a0, %pc_hi20(inums_dim)
	ld.d	$a0, $a0, %pc_lo12(inums_dim)
	fneg.d	$fs0, $fa0
	blez	$a0, .LBB57_8
# %bb.5:
	ftintrz.l.d	$fa0, $fs0
	movfr2gr.d	$a1, $fa0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	fcmp.cune.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB57_8
# %bb.6:
	bge	$a1, $a0, .LBB57_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(inums)
	ld.d	$a0, $a0, %pc_lo12(inums)
	slli.d	$a1, $a1, 3
	ldx.d	$fp, $a0, $a1
	b	.LBB57_16
.LBB57_8:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB57_12
# %bb.9:
	pcalau12i	$s0, %pc_hi20(heap)
	ld.d	$fp, $s0, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$fp, $a0, .LBB57_11
# %bb.10:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB57_11:
	addi.d	$a0, $fp, 24
	st.d	$a0, $s0, %pc_lo12(heap)
	b	.LBB57_15
.LBB57_12:
	pcalau12i	$s0, %pc_hi20(freelist)
	ld.d	$fp, $s0, %pc_lo12(freelist)
	bnez	$fp, .LBB57_14
# %bb.13:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, %pc_lo12(freelist)
.LBB57_14:
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s0, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB57_15:
	lu12i.w	$a0, 32
	st.w	$a0, $fp, 0
	fst.d	$fs0, $fp, 8
.LBB57_16:                              # %flocons.exit
	move	$a0, $fp
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end57:
	.size	lllabs, .Lfunc_end57-lllabs
                                        # -- End function
	.globl	lsqrt                           # -- Begin function lsqrt
	.p2align	5
	.type	lsqrt,@function
lsqrt:                                  # @lsqrt
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB58_8
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB58_8
# %bb.2:
	fld.d	$fa0, $fp, 8
	fsqrt.d	$fs0, $fa0
	fcmp.cor.d	$fcc0, $fs0, $fs0
	bceqz	$fcc0, .LBB58_9
.LBB58_3:                               # %.split
	pcalau12i	$a0, %pc_hi20(inums_dim)
	ld.d	$a1, $a0, %pc_lo12(inums_dim)
	blez	$a1, .LBB58_10
.LBB58_4:
	ftintrz.l.d	$fa0, $fs0
	movfr2gr.d	$a0, $fa0
	bge	$a0, $a1, .LBB58_10
# %bb.5:
	movgr2fr.d	$fa0, $zero
	fcmp.cult.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB58_10
# %bb.6:
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fcmp.cune.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB58_10
# %bb.7:
	pcalau12i	$a1, %pc_hi20(inums)
	ld.d	$a1, $a1, %pc_lo12(inums)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	b	.LBB58_18
.LBB58_8:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 8
	fsqrt.d	$fs0, $fa0
	fcmp.cor.d	$fcc0, $fs0, $fs0
	bcnez	$fcc0, .LBB58_3
.LBB58_9:                               # %call.sqrt
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(inums_dim)
	ld.d	$a1, $a0, %pc_lo12(inums_dim)
	bgtz	$a1, .LBB58_4
.LBB58_10:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB58_14
# %bb.11:
	pcalau12i	$fp, %pc_hi20(heap)
	ld.d	$a0, $fp, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB58_13
# %bb.12:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB58_13:
	addi.d	$a1, $a0, 24
	st.d	$a1, $fp, %pc_lo12(heap)
	b	.LBB58_17
.LBB58_14:
	pcalau12i	$fp, %pc_hi20(freelist)
	ld.d	$a0, $fp, %pc_lo12(freelist)
	bnez	$a0, .LBB58_16
# %bb.15:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(freelist)
.LBB58_16:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $fp, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB58_17:
	lu12i.w	$a1, 32
	st.w	$a1, $a0, 0
	fst.d	$fs0, $a0, 8
.LBB58_18:                              # %flocons.exit
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end58:
	.size	lsqrt, .Lfunc_end58-lsqrt
                                        # -- End function
	.globl	greaterp                        # -- Begin function greaterp
	.p2align	5
	.type	greaterp,@function
greaterp:                               # @greaterp
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a0, .LBB59_2
# %bb.1:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB59_3
.LBB59_2:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB59_3:
	beqz	$fp, .LBB59_5
# %bb.4:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB59_6
.LBB59_5:                               # %.critedge13
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB59_6:
	fld.d	$fa0, $s0, 8
	fld.d	$fa1, $fp, 8
	pcalau12i	$a0, %pc_hi20(sym_t)
	ld.d	$a0, $a0, %pc_lo12(sym_t)
	fcmp.clt.d	$fcc0, $fa1, $fa0
	movcf2gr	$a1, $fcc0
	maskeqz	$a0, $a0, $a1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end59:
	.size	greaterp, .Lfunc_end59-greaterp
                                        # -- End function
	.globl	lessp                           # -- Begin function lessp
	.p2align	5
	.type	lessp,@function
lessp:                                  # @lessp
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a0, .LBB60_2
# %bb.1:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB60_3
.LBB60_2:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB60_3:
	beqz	$fp, .LBB60_5
# %bb.4:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB60_6
.LBB60_5:                               # %.critedge13
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB60_6:
	fld.d	$fa0, $s0, 8
	fld.d	$fa1, $fp, 8
	pcalau12i	$a0, %pc_hi20(sym_t)
	ld.d	$a0, $a0, %pc_lo12(sym_t)
	fcmp.clt.d	$fcc0, $fa0, $fa1
	movcf2gr	$a1, $fcc0
	maskeqz	$a0, $a0, $a1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end60:
	.size	lessp, .Lfunc_end60-lessp
                                        # -- End function
	.globl	greaterEp                       # -- Begin function greaterEp
	.p2align	5
	.type	greaterEp,@function
greaterEp:                              # @greaterEp
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a0, .LBB61_2
# %bb.1:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB61_3
.LBB61_2:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB61_3:
	beqz	$fp, .LBB61_5
# %bb.4:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB61_6
.LBB61_5:                               # %.critedge13
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB61_6:
	fld.d	$fa0, $s0, 8
	fld.d	$fa1, $fp, 8
	pcalau12i	$a0, %pc_hi20(sym_t)
	ld.d	$a0, $a0, %pc_lo12(sym_t)
	fcmp.cult.d	$fcc0, $fa0, $fa1
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end61:
	.size	greaterEp, .Lfunc_end61-greaterEp
                                        # -- End function
	.globl	lessEp                          # -- Begin function lessEp
	.p2align	5
	.type	lessEp,@function
lessEp:                                 # @lessEp
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a0, .LBB62_2
# %bb.1:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB62_3
.LBB62_2:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB62_3:
	beqz	$fp, .LBB62_5
# %bb.4:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB62_6
.LBB62_5:                               # %.critedge13
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB62_6:
	fld.d	$fa0, $s0, 8
	fld.d	$fa1, $fp, 8
	pcalau12i	$a0, %pc_hi20(sym_t)
	ld.d	$a0, $a0, %pc_lo12(sym_t)
	fcmp.cult.d	$fcc0, $fa1, $fa0
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end62:
	.size	lessEp, .Lfunc_end62-lessEp
                                        # -- End function
	.globl	lmax                            # -- Begin function lmax
	.p2align	5
	.type	lmax,@function
lmax:                                   # @lmax
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a1, .LBB63_7
# %bb.1:
	move	$s0, $a1
	beqz	$fp, .LBB63_3
# %bb.2:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB63_4
.LBB63_3:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB63_4:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB63_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB63_6:
	fld.d	$fa0, $fp, 8
	fld.d	$fa1, $s0, 8
	fcmp.clt.d	$fcc0, $fa1, $fa0
	movcf2gr	$a0, $fcc0
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a1
.LBB63_7:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end63:
	.size	lmax, .Lfunc_end63-lmax
                                        # -- End function
	.globl	lmin                            # -- Begin function lmin
	.p2align	5
	.type	lmin,@function
lmin:                                   # @lmin
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a1, .LBB64_7
# %bb.1:
	move	$s0, $a1
	beqz	$fp, .LBB64_3
# %bb.2:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB64_4
.LBB64_3:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB64_4:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB64_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB64_6:
	fld.d	$fa0, $fp, 8
	fld.d	$fa1, $s0, 8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a1
.LBB64_7:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end64:
	.size	lmin, .Lfunc_end64-lmin
                                        # -- End function
	.globl	eq                              # -- Begin function eq
	.p2align	5
	.type	eq,@function
eq:                                     # @eq
# %bb.0:
	pcalau12i	$a2, %pc_hi20(sym_t)
	ld.d	$a2, $a2, %pc_lo12(sym_t)
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a2, $a0
	ret
.Lfunc_end65:
	.size	eq, .Lfunc_end65-eq
                                        # -- End function
	.globl	eql                             # -- Begin function eql
	.p2align	5
	.type	eql,@function
eql:                                    # @eql
# %bb.0:
	beq	$a0, $a1, .LBB66_6
# %bb.1:
	move	$a2, $a0
	beqz	$a0, .LBB66_8
# %bb.2:
	move	$a0, $zero
	beqz	$a1, .LBB66_7
# %bb.3:
	ld.hu	$a4, $a2, 2
	ori	$a3, $zero, 2
	bne	$a4, $a3, .LBB66_7
# %bb.4:
	ld.hu	$a0, $a1, 2
	bne	$a0, $a3, .LBB66_8
# %bb.5:
	fld.d	$fa0, $a2, 8
	fld.d	$fa1, $a1, 8
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB66_8
.LBB66_6:
	pcalau12i	$a0, %pc_hi20(sym_t)
	ld.d	$a0, $a0, %pc_lo12(sym_t)
.LBB66_7:                               # %.critedge
	ret
.LBB66_8:
	move	$a0, $zero
	ret
.Lfunc_end66:
	.size	eql, .Lfunc_end66-eql
                                        # -- End function
	.globl	symcons                         # -- Begin function symcons
	.p2align	5
	.type	symcons,@function
symcons:                                # @symcons
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(gc_kind_copying)
	ld.d	$a2, $a2, %pc_lo12(gc_kind_copying)
	ori	$a3, $zero, 1
	move	$fp, $a1
	move	$s0, $a0
	bne	$a2, $a3, .LBB67_4
# %bb.1:
	pcalau12i	$s1, %pc_hi20(heap)
	ld.d	$a0, $s1, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB67_3
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB67_3:
	addi.d	$a1, $a0, 24
	st.d	$a1, $s1, %pc_lo12(heap)
	b	.LBB67_7
.LBB67_4:
	pcalau12i	$s1, %pc_hi20(freelist)
	ld.d	$a0, $s1, %pc_lo12(freelist)
	bnez	$a0, .LBB67_6
# %bb.5:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(freelist)
.LBB67_6:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $s1, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB67_7:
	lu12i.w	$a1, 48
	st.w	$a1, $a0, 0
	st.d	$s0, $a0, 8
	st.d	$fp, $a0, 16
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end67:
	.size	symcons, .Lfunc_end67-symcons
                                        # -- End function
	.globl	symbolp                         # -- Begin function symbolp
	.p2align	5
	.type	symbolp,@function
symbolp:                                # @symbolp
# %bb.0:
	beqz	$a0, .LBB68_2
# %bb.1:
	ld.hu	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(sym_t)
	ld.d	$a1, $a1, %pc_lo12(sym_t)
	addi.d	$a0, $a0, -3
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a1, $a0
	ret
.LBB68_2:
	move	$a0, $zero
	ret
.Lfunc_end68:
	.size	symbolp, .Lfunc_end68-symbolp
                                        # -- End function
	.globl	err_ubv                         # -- Begin function err_ubv
	.p2align	5
	.type	err_ubv,@function
err_ubv:                                # @err_ubv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end69:
	.size	err_ubv, .Lfunc_end69-err_ubv
                                        # -- End function
	.globl	symbol_boundp                   # -- Begin function symbol_boundp
	.p2align	5
	.type	symbol_boundp,@function
symbol_boundp:                          # @symbol_boundp
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB70_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a2, $zero, 3
	beq	$a0, $a2, .LBB70_3
.LBB70_2:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	move	$s0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a1, $s0
.LBB70_3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(envlookup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB70_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(sym_t)
	ld.d	$a0, $a0, %pc_lo12(sym_t)
	b	.LBB70_6
.LBB70_5:
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %pc_hi20(unbound_marker)
	ld.d	$a1, $a1, %pc_lo12(unbound_marker)
	pcalau12i	$a2, %pc_hi20(sym_t)
	ld.d	$a2, $a2, %pc_lo12(sym_t)
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	masknez	$a0, $a2, $a0
.LBB70_6:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end70:
	.size	symbol_boundp, .Lfunc_end70-symbol_boundp
                                        # -- End function
	.globl	envlookup                       # -- Begin function envlookup
	.p2align	5
	.type	envlookup,@function
envlookup:                              # @envlookup
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
	beqz	$a1, .LBB71_19
# %bb.1:                                # %.lr.ph55.preheader
	move	$fp, $a1
	move	$s0, $a0
	ori	$s5, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$s1, $a0, %pc_lo12(.L.str.85)
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$s2, $a0, %pc_lo12(.L.str.86)
	ori	$s6, $zero, 3
	move	$s7, $a1
	b	.LBB71_3
	.p2align	4, , 16
.LBB71_2:                               # %.critedge41
                                        #   in Loop: Header=BB71_3 Depth=1
	ld.d	$s7, $s7, 16
	beqz	$s7, .LBB71_19
.LBB71_3:                               # %.lr.ph55
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB71_9 Depth 2
	ld.hu	$a0, $s7, 2
	bne	$a0, $s5, .LBB71_18
# %bb.4:                                #   in Loop: Header=BB71_3 Depth=1
	ld.d	$s3, $s7, 8
	beqz	$s3, .LBB71_6
# %bb.5:                                #   in Loop: Header=BB71_3 Depth=1
	ld.hu	$a0, $s3, 2
	beq	$a0, $s5, .LBB71_7
.LBB71_6:                               # %.critedge35
                                        #   in Loop: Header=BB71_3 Depth=1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB71_7:                               #   in Loop: Header=BB71_3 Depth=1
	ld.d	$s8, $s3, 8
	beqz	$s8, .LBB71_2
# %bb.8:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB71_3 Depth=1
	move	$s4, $s3
	.p2align	4, , 16
.LBB71_9:                               # %.lr.ph
                                        #   Parent Loop BB71_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $s8, 2
	ld.d	$s4, $s4, 16
	bne	$a0, $s5, .LBB71_15
# %bb.10:                               #   in Loop: Header=BB71_9 Depth=2
	beqz	$s4, .LBB71_12
# %bb.11:                               #   in Loop: Header=BB71_9 Depth=2
	ld.hu	$a0, $s4, 2
	beq	$a0, $s5, .LBB71_13
.LBB71_12:                              # %.critedge39
                                        #   in Loop: Header=BB71_9 Depth=2
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB71_13:                              #   in Loop: Header=BB71_9 Depth=2
	ld.d	$a0, $s8, 8
	beq	$a0, $s0, .LBB71_20
# %bb.14:                               #   in Loop: Header=BB71_9 Depth=2
	ld.d	$s8, $s8, 16
	bnez	$s8, .LBB71_9
	b	.LBB71_2
	.p2align	4, , 16
.LBB71_15:                              # %.critedge40
                                        #   in Loop: Header=BB71_3 Depth=1
	bne	$s8, $s0, .LBB71_2
# %bb.16:                               # %.critedge40
                                        #   in Loop: Header=BB71_3 Depth=1
	bne	$a0, $s6, .LBB71_2
# %bb.17:
	move	$a0, $s4
	move	$a1, $zero
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
	pcaddu18i	$t8, %call36(cons)
	jr	$t8
.LBB71_18:                              # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a0, $a0, %pc_lo12(.L.str.87)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB71_19:                              # %.loopexit
	move	$s4, $zero
.LBB71_20:                              # %.loopexit
	move	$a0, $s4
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
.Lfunc_end71:
	.size	envlookup, .Lfunc_end71-envlookup
                                        # -- End function
	.globl	symbol_value                    # -- Begin function symbol_value
	.p2align	5
	.type	symbol_value,@function
symbol_value:                           # @symbol_value
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB72_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a2, $zero, 3
	beq	$a0, $a2, .LBB72_3
.LBB72_2:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	move	$s0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a1, $s0
.LBB72_3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(envlookup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB72_5
# %bb.4:
	ld.d	$a0, $a0, 8
	b	.LBB72_7
.LBB72_5:
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %pc_hi20(unbound_marker)
	ld.d	$a1, $a1, %pc_lo12(unbound_marker)
	bne	$a0, $a1, .LBB72_7
# %bb.6:
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB72_7:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end72:
	.size	symbol_value, .Lfunc_end72-symbol_value
                                        # -- End function
	.globl	must_malloc                     # -- Begin function must_malloc
	.p2align	5
	.type	must_malloc,@function
must_malloc:                            # @must_malloc
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB73_2
# %bb.1:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB73_2:
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	move	$fp, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end73:
	.size	must_malloc, .Lfunc_end73-must_malloc
                                        # -- End function
	.globl	gen_intern                      # -- Begin function gen_intern
	.p2align	5
	.type	gen_intern,@function
gen_intern:                             # @gen_intern
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
	move	$s1, $a1
	move	$s0, $a0
	pcalau12i	$s4, %pc_hi20(nointerrupt)
	pcalau12i	$s6, %pc_hi20(obarray_dim)
	ld.d	$a0, $s6, %pc_lo12(obarray_dim)
	ld.d	$s8, $s4, %pc_lo12(nointerrupt)
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2
	st.d	$a1, $s4, %pc_lo12(nointerrupt)
	blt	$a0, $a2, .LBB74_4
# %bb.1:                                # %.preheader
	ld.bu	$a1, $s0, 0
	beqz	$a1, .LBB74_5
# %bb.2:                                # %.lr.ph.preheader
	move	$s5, $zero
	addi.d	$a2, $s0, 1
	.p2align	4, , 16
.LBB74_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a3, $a1
	ld.bu	$a1, $a2, 0
	alsl.d	$a4, $s5, $s5, 4
	xor	$a3, $a4, $a3
	mod.d	$s5, $a3, $a0
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB74_3
	b	.LBB74_6
.LBB74_4:
	pcalau12i	$a0, %pc_hi20(oblistvar)
	addi.d	$a0, $a0, %pc_lo12(oblistvar)
	move	$s5, $zero
	ld.d	$s7, $a0, 0
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	bnez	$s7, .LBB74_7
	b	.LBB74_10
.LBB74_5:
	move	$s5, $zero
.LBB74_6:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(obarray)
	ld.d	$a0, $a0, %pc_lo12(obarray)
	alsl.d	$a0, $s5, $a0, 3
	ld.d	$s7, $a0, 0
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	beqz	$s7, .LBB74_10
.LBB74_7:                               # %.lr.ph48.preheader
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(interrupt_differed)
	move	$s2, $s7
	.p2align	4, , 16
.LBB74_8:                               # %.lr.ph48
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $s2, 8
	ld.d	$a1, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB74_27
# %bb.9:                                #   in Loop: Header=BB74_8 Depth=1
	ld.d	$s2, $s2, 16
	bnez	$s2, .LBB74_8
.LBB74_10:                              # %._crit_edge49
	ori	$fp, $zero, 1
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	bne	$s1, $fp, .LBB74_14
# %bb.11:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB74_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB74_13:                              # %must_malloc.exit
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	b	.LBB74_15
.LBB74_14:
	move	$s1, $s0
.LBB74_15:
	pcalau12i	$a0, %pc_hi20(unbound_marker)
	ld.d	$s2, $a0, %pc_lo12(unbound_marker)
	pcalau12i	$s4, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $s4, %pc_lo12(gc_kind_copying)
	pcalau12i	$s8, %pc_hi20(freelist)
	pcalau12i	$s0, %pc_hi20(gc_cells_allocated)
	pcalau12i	$s3, %pc_hi20(heap)
	pcalau12i	$a3, %pc_hi20(heap_end)
	bne	$a0, $fp, .LBB74_19
# %bb.16:
	ld.d	$fp, $s3, %pc_lo12(heap)
	ld.d	$a0, $a3, %pc_lo12(heap_end)
	bltu	$fp, $a0, .LBB74_18
# %bb.17:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s6, $a3
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a3, $s6
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
.LBB74_18:
	addi.d	$a0, $fp, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB74_22
.LBB74_19:
	ld.d	$fp, $s8, %pc_lo12(freelist)
	bnez	$fp, .LBB74_21
# %bb.20:
	move	$fp, $a3
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	move	$a3, $fp
	ld.d	$fp, $s8, %pc_lo12(freelist)
.LBB74_21:
	ld.d	$a0, $fp, 16
	ld.d	$a1, $s0, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s8, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s0, %pc_lo12(gc_cells_allocated)
.LBB74_22:                              # %symcons.exit
	lu12i.w	$a0, 48
	st.w	$a0, $fp, 0
	st.d	$s1, $fp, 8
	ld.d	$a1, $s6, %pc_lo12(obarray_dim)
	ld.d	$a0, $s4, %pc_lo12(gc_kind_copying)
	st.d	$s2, $fp, 16
	ori	$a2, $zero, 2
	lu12i.w	$s1, 16
	blt	$a1, $a2, .LBB74_34
# %bb.23:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB74_30
# %bb.24:
	ld.d	$s2, $s3, %pc_lo12(heap)
	ld.d	$a0, $a3, %pc_lo12(heap_end)
	bltu	$s2, $a0, .LBB74_26
# %bb.25:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	move	$s6, $a3
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a3, $s6
.LBB74_26:
	addi.d	$a0, $s2, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB74_33
.LBB74_27:
	st.d	$s8, $s4, %pc_lo12(nointerrupt)
	bnez	$s8, .LBB74_44
# %bb.28:
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB74_44
# %bb.29:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$zero, $a0, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s2, 8
	b	.LBB74_44
.LBB74_30:
	ld.d	$s2, $s8, %pc_lo12(freelist)
	bnez	$s2, .LBB74_32
# %bb.31:
	move	$s2, $a3
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	move	$a3, $s2
	ld.d	$s2, $s8, %pc_lo12(freelist)
.LBB74_32:
	ld.d	$a0, $s2, 16
	ld.d	$a1, $s0, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s8, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s0, %pc_lo12(gc_cells_allocated)
.LBB74_33:                              # %cons.exit
	st.w	$s1, $s2, 0
	st.d	$fp, $s2, 8
	pcalau12i	$a0, %pc_hi20(obarray)
	ld.d	$a1, $a0, %pc_lo12(obarray)
	ld.d	$a0, $s4, %pc_lo12(gc_kind_copying)
	st.d	$s7, $s2, 16
	slli.d	$a2, $s5, 3
	stx.d	$s2, $a1, $a2
.LBB74_34:
	pcalau12i	$s2, %pc_hi20(oblistvar)
	ld.d	$s4, $s2, %pc_lo12(oblistvar)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB74_38
# %bb.35:
	ld.d	$s5, $s3, %pc_lo12(heap)
	ld.d	$a0, $a3, %pc_lo12(heap_end)
	bltu	$s5, $a0, .LBB74_37
# %bb.36:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB74_37:
	addi.d	$a0, $s5, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB74_41
.LBB74_38:
	ld.d	$s5, $s8, %pc_lo12(freelist)
	bnez	$s5, .LBB74_40
# %bb.39:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s8, %pc_lo12(freelist)
.LBB74_40:
	ld.d	$a0, $s5, 16
	ld.d	$a1, $s0, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s8, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s0, %pc_lo12(gc_cells_allocated)
.LBB74_41:                              # %cons.exit39
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$s1, $s5, 0
	st.d	$fp, $s5, 8
	st.d	$s4, $s5, 16
	st.d	$s5, $s2, %pc_lo12(oblistvar)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a1, $a0, %pc_lo12(nointerrupt)
	bnez	$a1, .LBB74_44
# %bb.42:                               # %cons.exit39
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a2, %pc_lo12(interrupt_differed)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB74_44
# %bb.43:
	st.d	$zero, $a2, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB74_44:                              # %no_interrupt.exit41
	move	$a0, $fp
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
.Lfunc_end74:
	.size	gen_intern, .Lfunc_end74-gen_intern
                                        # -- End function
	.globl	cintern                         # -- Begin function cintern
	.p2align	5
	.type	cintern,@function
cintern:                                # @cintern
# %bb.0:
	move	$a1, $zero
	pcaddu18i	$t8, %call36(gen_intern)
	jr	$t8
.Lfunc_end75:
	.size	cintern, .Lfunc_end75-cintern
                                        # -- End function
	.globl	rintern                         # -- Begin function rintern
	.p2align	5
	.type	rintern,@function
rintern:                                # @rintern
# %bb.0:
	ori	$a1, $zero, 1
	pcaddu18i	$t8, %call36(gen_intern)
	jr	$t8
.Lfunc_end76:
	.size	rintern, .Lfunc_end76-rintern
                                        # -- End function
	.globl	intern                          # -- Begin function intern
	.p2align	5
	.type	intern,@function
intern:                                 # @intern
# %bb.0:
	move	$a1, $a0
	beqz	$a0, .LBB77_4
# %bb.1:
	ld.hu	$a0, $a1, 2
	ori	$a2, $zero, 13
	beq	$a0, $a2, .LBB77_5
# %bb.2:
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB77_4
# %bb.3:
	ld.d	$a0, $a1, 8
	ori	$a1, $zero, 1
	pcaddu18i	$t8, %call36(gen_intern)
	jr	$t8
.LBB77_4:                               # %.critedge10.i
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ori	$a1, $zero, 1
	pcaddu18i	$t8, %call36(gen_intern)
	jr	$t8
.LBB77_5:
	ld.d	$a0, $a1, 16
	ori	$a1, $zero, 1
	pcaddu18i	$t8, %call36(gen_intern)
	jr	$t8
.Lfunc_end77:
	.size	intern, .Lfunc_end77-intern
                                        # -- End function
	.globl	subrcons                        # -- Begin function subrcons
	.p2align	5
	.type	subrcons,@function
subrcons:                               # @subrcons
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(gc_kind_copying)
	ld.d	$a3, $a3, %pc_lo12(gc_kind_copying)
	ori	$a4, $zero, 1
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	bne	$a3, $a4, .LBB78_4
# %bb.1:
	pcalau12i	$s2, %pc_hi20(heap)
	ld.d	$a0, $s2, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB78_3
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s3, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s3
.LBB78_3:
	addi.d	$a1, $a0, 24
	st.d	$a1, $s2, %pc_lo12(heap)
	b	.LBB78_7
.LBB78_4:
	pcalau12i	$s2, %pc_hi20(freelist)
	ld.d	$a0, $s2, %pc_lo12(freelist)
	bnez	$a0, .LBB78_6
# %bb.5:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(freelist)
.LBB78_6:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $s2, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB78_7:
	st.h	$zero, $a0, 0
	st.h	$s1, $a0, 2
	st.d	$s0, $a0, 8
	st.d	$fp, $a0, 16
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end78:
	.size	subrcons, .Lfunc_end78-subrcons
                                        # -- End function
	.globl	closure                         # -- Begin function closure
	.p2align	5
	.type	closure,@function
closure:                                # @closure
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(gc_kind_copying)
	ld.d	$a2, $a2, %pc_lo12(gc_kind_copying)
	ori	$a3, $zero, 1
	move	$fp, $a1
	move	$s0, $a0
	bne	$a2, $a3, .LBB79_4
# %bb.1:
	pcalau12i	$s1, %pc_hi20(heap)
	ld.d	$a0, $s1, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB79_3
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB79_3:
	addi.d	$a1, $a0, 24
	st.d	$a1, $s1, %pc_lo12(heap)
	b	.LBB79_7
.LBB79_4:
	pcalau12i	$s1, %pc_hi20(freelist)
	ld.d	$a0, $s1, %pc_lo12(freelist)
	bnez	$a0, .LBB79_6
# %bb.5:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(freelist)
.LBB79_6:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $s1, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB79_7:
	lu12i.w	$a1, 176
	st.w	$a1, $a0, 0
	st.d	$s0, $a0, 8
	st.d	$fp, $a0, 16
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end79:
	.size	closure, .Lfunc_end79-closure
                                        # -- End function
	.globl	gc_protect                      # -- Begin function gc_protect
	.p2align	5
	.type	gc_protect,@function
gc_protect:                             # @gc_protect
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB80_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB80_2:                               # %gc_protect_n.exit
	pcalau12i	$a0, %pc_hi20(protected_registers)
	ld.d	$a1, $a0, %pc_lo12(protected_registers)
	st.d	$fp, $s0, 0
	ori	$a2, $zero, 1
	st.d	$a2, $s0, 8
	st.d	$a1, $s0, 16
	st.d	$s0, $a0, %pc_lo12(protected_registers)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end80:
	.size	gc_protect, .Lfunc_end80-gc_protect
                                        # -- End function
	.globl	gc_protect_n                    # -- Begin function gc_protect_n
	.p2align	5
	.type	gc_protect_n,@function
gc_protect_n:                           # @gc_protect_n
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB81_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB81_2:                               # %must_malloc.exit
	pcalau12i	$a0, %pc_hi20(protected_registers)
	ld.d	$a1, $a0, %pc_lo12(protected_registers)
	st.d	$s0, $s1, 0
	st.d	$fp, $s1, 8
	st.d	$a1, $s1, 16
	st.d	$s1, $a0, %pc_lo12(protected_registers)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end81:
	.size	gc_protect_n, .Lfunc_end81-gc_protect_n
                                        # -- End function
	.globl	gc_protect_sym                  # -- Begin function gc_protect_sym
	.p2align	5
	.type	gc_protect_sym,@function
gc_protect_sym:                         # @gc_protect_sym
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB82_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB82_2:                               # %gc_protect.exit
	pcalau12i	$a0, %pc_hi20(protected_registers)
	ld.d	$a1, $a0, %pc_lo12(protected_registers)
	st.d	$fp, $s0, 0
	ori	$a2, $zero, 1
	st.d	$a2, $s0, 8
	st.d	$a1, $s0, 16
	st.d	$s0, $a0, %pc_lo12(protected_registers)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end82:
	.size	gc_protect_sym, .Lfunc_end82-gc_protect_sym
                                        # -- End function
	.globl	scan_registers                  # -- Begin function scan_registers
	.p2align	5
	.type	scan_registers,@function
scan_registers:                         # @scan_registers
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(protected_registers)
	ld.d	$s8, $a0, %pc_lo12(protected_registers)
	beqz	$s8, .LBB83_31
# %bb.1:                                # %.lr.ph19.preheader
	ori	$s3, $zero, 1
	pcalau12i	$fp, %pc_hi20(heap)
	pcalau12i	$s1, %pc_hi20(heap_end)
	pcalau12i	$a0, %pc_hi20(inside_err)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(nointerrupt)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(siod_verbose_level)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(errjmp_ok)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(fatal_exit_hook)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(user_types)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3904
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB83_3
	.p2align	4, , 16
.LBB83_2:                               # %._crit_edge
                                        #   in Loop: Header=BB83_3 Depth=1
	ld.d	$s8, $s8, 16
	beqz	$s8, .LBB83_31
.LBB83_3:                               # %.lr.ph19
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB83_7 Depth 2
	ld.d	$s6, $s8, 8
	blez	$s6, .LBB83_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB83_3 Depth=1
	ld.d	$s7, $s8, 0
	b	.LBB83_7
	.p2align	4, , 16
.LBB83_5:                               #   in Loop: Header=BB83_7 Depth=2
	move	$s5, $zero
.LBB83_6:                               # %gc_relocate.exit
                                        #   in Loop: Header=BB83_7 Depth=2
	st.d	$s5, $s7, 0
	addi.d	$s6, $s6, -1
	addi.d	$s7, $s7, 8
	beqz	$s6, .LBB83_2
.LBB83_7:                               # %.lr.ph
                                        #   Parent Loop BB83_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s7, 0
	beqz	$s4, .LBB83_5
# %bb.8:                                #   in Loop: Header=BB83_7 Depth=2
	ld.hu	$a0, $s4, 0
	bne	$a0, $s3, .LBB83_10
# %bb.9:                                #   in Loop: Header=BB83_7 Depth=2
	ld.d	$s5, $s4, 8
	b	.LBB83_6
	.p2align	4, , 16
.LBB83_10:                              #   in Loop: Header=BB83_7 Depth=2
	ld.h	$s2, $s4, 2
	bstrpick.d	$s0, $s2, 15, 0
	addi.d	$a0, $s0, -1
	ori	$a1, $zero, 11
	bltu	$a0, $a1, .LBB83_12
# %bb.11:                               #   in Loop: Header=BB83_7 Depth=2
	addi.d	$a0, $s0, -19
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB83_22
.LBB83_12:                              #   in Loop: Header=BB83_7 Depth=2
	ld.d	$s5, $fp, %pc_lo12(heap)
	ld.d	$a0, $s1, %pc_lo12(heap_end)
	bltu	$s5, $a0, .LBB83_20
# %bb.13:                               #   in Loop: Header=BB83_7 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(siod_verbose_level)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.b	$s2, $a1, %pc_lo12(inside_err)
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$s3, $a1, %pc_lo12(nointerrupt)
	blez	$a0, .LBB83_15
# %bb.14:                               #   in Loop: Header=BB83_7 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB83_15:                              # %try_get_c_string.exit.thread.thread.i
                                        #   in Loop: Header=BB83_7 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(errjmp_ok)
	beq	$a0, $s3, .LBB83_33
# %bb.16:                               #   in Loop: Header=BB83_7 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(siod_verbose_level)
	blez	$a0, .LBB83_18
# %bb.17:                               #   in Loop: Header=BB83_7 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB83_18:                              #   in Loop: Header=BB83_7 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(fatal_exit_hook)
	beqz	$a0, .LBB83_32
# %bb.19:                               # %err.exit
                                        #   in Loop: Header=BB83_7 Depth=2
	jirl	$ra, $a0, 0
.LBB83_20:                              #   in Loop: Header=BB83_7 Depth=2
	vld	$vr0, $s4, 8
	addi.d	$a0, $s5, 24
	st.d	$a0, $fp, %pc_lo12(heap)
	vst	$vr0, $s5, 8
	ld.d	$a0, $s4, 0
	st.d	$a0, $s5, 0
.LBB83_21:                              #   in Loop: Header=BB83_7 Depth=2
	st.h	$s3, $s4, 0
	st.d	$s5, $s4, 8
	b	.LBB83_6
.LBB83_22:                              #   in Loop: Header=BB83_7 Depth=2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(user_types)
	bnez	$s5, .LBB83_26
# %bb.23:                               #   in Loop: Header=BB83_7 Depth=2
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	bnez	$a0, .LBB83_25
# %bb.24:                               #   in Loop: Header=BB83_7 Depth=2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB83_25:                              # %must_malloc.exit.i.i
                                        #   in Loop: Header=BB83_7 Depth=2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$s5, $a0, %pc_lo12(user_types)
.LBB83_26:                              #   in Loop: Header=BB83_7 Depth=2
	bstrpick.d	$a0, $s0, 15, 0
	ori	$a1, $zero, 99
	bltu	$a1, $a0, .LBB83_43
# %bb.27:                               # %get_user_type_hooks.exit.i
                                        #   in Loop: Header=BB83_7 Depth=2
	slli.d	$a0, $s2, 6
	alsl.d	$a0, $s2, $a0, 4
	ldx.d	$a1, $s5, $a0
	beqz	$a1, .LBB83_29
# %bb.28:                               #   in Loop: Header=BB83_7 Depth=2
	move	$a0, $s4
	jirl	$ra, $a1, 0
	move	$s5, $a0
	b	.LBB83_21
.LBB83_29:                              #   in Loop: Header=BB83_7 Depth=2
	ld.d	$s5, $fp, %pc_lo12(heap)
	ld.d	$a0, $s1, %pc_lo12(heap_end)
	bltu	$s5, $a0, .LBB83_20
# %bb.30:                               #   in Loop: Header=BB83_7 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	b	.LBB83_20
.LBB83_31:                              # %._crit_edge20
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB83_32:
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB83_33:
	pcalau12i	$s0, %pc_hi20(sym_errobj)
	ld.d	$a0, $s0, %pc_lo12(sym_errobj)
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.b	$a1, $a2, %pc_lo12(inside_err)
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(catch_framep)
	ld.d	$fp, $a0, %pc_lo12(catch_framep)
	beqz	$fp, .LBB83_38
# %bb.34:                               # %.lr.ph.i
	ld.d	$a0, $s0, %pc_lo12(sym_errobj)
	pcalau12i	$a1, %pc_hi20(sym_catchall)
	ld.d	$a1, $a1, %pc_lo12(sym_catchall)
	.p2align	4, , 16
.LBB83_35:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 0
	beq	$a2, $a0, .LBB83_39
# %bb.36:                               #   in Loop: Header=BB83_35 Depth=1
	beq	$a2, $a1, .LBB83_39
# %bb.37:                               #   in Loop: Header=BB83_35 Depth=1
	ld.d	$fp, $fp, 320
	bnez	$fp, .LBB83_35
.LBB83_38:                              # %._crit_edge.i
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.b	$zero, $a0, %pc_lo12(inside_err)
	pcalau12i	$a0, %pc_hi20(errjmp)
	addi.d	$a0, $a0, %pc_lo12(errjmp)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(longjmp)
	jirl	$ra, $ra, 0
.LBB83_39:
	andi	$a0, $s2, 1
	beqz	$a0, .LBB83_41
# %bb.40:
	move	$a0, $zero
	b	.LBB83_42
.LBB83_41:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 18
	pcaddu18i	$ra, %call36(strcons)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
.LBB83_42:
	st.d	$a0, $fp, 8
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$zero, $a0, %pc_lo12(nointerrupt)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.b	$zero, $a0, %pc_lo12(inside_err)
	addi.d	$a0, $fp, 16
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(longjmp)
	jirl	$ra, $ra, 0
.LBB83_43:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.Lfunc_end83:
	.size	scan_registers, .Lfunc_end83-scan_registers
                                        # -- End function
	.globl	gc_relocate                     # -- Begin function gc_relocate
	.p2align	5
	.type	gc_relocate,@function
gc_relocate:                            # @gc_relocate
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	beqz	$a0, .LBB84_3
# %bb.1:
	ld.hu	$a1, $a0, 0
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB84_4
# %bb.2:
	ld.d	$fp, $a0, 8
	b	.LBB84_10
.LBB84_3:
	move	$fp, $zero
	b	.LBB84_10
.LBB84_4:
	ld.h	$s0, $a0, 2
	bstrpick.d	$s1, $s0, 15, 0
	addi.d	$a1, $s1, -1
	ori	$a2, $zero, 11
	bltu	$a1, $a2, .LBB84_6
# %bb.5:
	addi.d	$a1, $s1, -19
	ori	$a2, $zero, 2
	bltu	$a2, $a1, .LBB84_11
.LBB84_6:
	pcalau12i	$s0, %pc_hi20(heap)
	ld.d	$fp, $s0, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$fp, $a1, .LBB84_8
# %bb.7:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s1
.LBB84_8:
	vld	$vr0, $a0, 8
	addi.d	$a1, $fp, 24
	st.d	$a1, $s0, %pc_lo12(heap)
	vst	$vr0, $fp, 8
	ld.d	$a1, $a0, 0
	st.d	$a1, $fp, 0
.LBB84_9:
	ori	$a1, $zero, 1
	st.h	$a1, $a0, 0
	st.d	$fp, $a0, 8
.LBB84_10:
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB84_11:
	pcalau12i	$s2, %pc_hi20(user_types)
	ld.d	$fp, $s2, %pc_lo12(user_types)
	bnez	$fp, .LBB84_15
# %bb.12:
	move	$s3, $a0
	lu12i.w	$a0, 1
	ori	$a1, $a0, 3904
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB84_14
# %bb.13:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB84_14:                              # %must_malloc.exit.i
	st.d	$fp, $s2, %pc_lo12(user_types)
	move	$a0, $s3
.LBB84_15:
	bstrpick.d	$a1, $s1, 15, 0
	ori	$a2, $zero, 99
	bltu	$a2, $a1, .LBB84_18
# %bb.16:                               # %get_user_type_hooks.exit
	slli.d	$a1, $s0, 6
	alsl.d	$a1, $s0, $a1, 4
	ldx.d	$a1, $fp, $a1
	beqz	$a1, .LBB84_6
# %bb.17:
	move	$s0, $a0
	jirl	$ra, $a1, 0
	move	$fp, $a0
	move	$a0, $s0
	b	.LBB84_9
.LBB84_18:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.Lfunc_end84:
	.size	gc_relocate, .Lfunc_end84-gc_relocate
                                        # -- End function
	.globl	init_storage                    # -- Begin function init_storage
	.p2align	5
	.type	init_storage,@function
init_storage:                           # @init_storage
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(stack_start_ptr)
	ld.d	$a1, $a0, %pc_lo12(stack_start_ptr)
	bnez	$a1, .LBB85_2
# %bb.1:
	addi.d	$a1, $sp, 0
	st.d	$a1, $a0, %pc_lo12(stack_start_ptr)
.LBB85_2:
	pcaddu18i	$ra, %call36(init_storage_1)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(init_storage_a)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(user_types)
	ld.d	$fp, $s0, %pc_lo12(user_types)
	bnez	$fp, .LBB85_6
# %bb.3:
	lu12i.w	$a0, 1
	ori	$a1, $a0, 3904
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB85_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB85_5:                               # %must_malloc.exit.i.i
	st.d	$fp, $s0, %pc_lo12(user_types)
.LBB85_6:                               # %set_print_hooks.exit
	st.d	$zero, $fp, 1376
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 1360
	pcalau12i	$a0, %pc_hi20(file_gc_free)
	addi.d	$a0, $a0, %pc_lo12(file_gc_free)
	st.d	$a0, $fp, 1384
	pcalau12i	$a0, %pc_hi20(file_prin1)
	addi.d	$a0, $a0, %pc_lo12(file_prin1)
	st.d	$a0, $fp, 1392
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end85:
	.size	init_storage, .Lfunc_end85-init_storage
                                        # -- End function
	.globl	init_storage_1                  # -- Begin function init_storage_1
	.p2align	5
	.type	init_storage_1,@function
init_storage_1:                         # @init_storage_1
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1025
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB86_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB86_2:                               # %must_malloc.exit
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	pcalau12i	$s0, %pc_hi20(nheaps)
	ld.d	$s1, $s0, %pc_lo12(nheaps)
	pcalau12i	$a1, %pc_hi20(tkbuffer)
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	addi.d	$a2, $s1, -2
	sltu	$a2, $zero, $a2
	and	$a0, $a0, $a2
	st.d	$fp, $a1, %pc_lo12(tkbuffer)
	bnez	$a0, .LBB86_4
# %bb.3:                                # %must_malloc.exit
	bgtz	$s1, .LBB86_5
.LBB86_4:
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, %pc_lo12(nheaps)
.LBB86_5:
	slli.d	$a0, $s1, 3
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB86_7
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, %pc_lo12(nheaps)
.LBB86_7:                               # %must_malloc.exit22
	pcalau12i	$s5, %pc_hi20(heaps)
	st.d	$fp, $s5, %pc_lo12(heaps)
	blez	$s1, .LBB86_9
# %bb.8:                                # %.lr.ph.preheader
	slli.d	$a2, $s1, 3
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB86_9:                               # %._crit_edge
	pcalau12i	$s3, %pc_hi20(heap_size)
	ld.d	$s2, $s3, %pc_lo12(heap_size)
	slli.d	$a0, $s2, 4
	alsl.d	$a0, $s2, $a0, 3
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB86_11
# %bb.10:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s5, %pc_lo12(heaps)
	ld.d	$s2, $s3, %pc_lo12(heap_size)
.LBB86_11:                              # %must_malloc.exit23
	st.d	$s0, $fp, 0
	pcalau12i	$s3, %pc_hi20(heap)
	st.d	$s0, $s3, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_org)
	st.d	$s0, $a0, %pc_lo12(heap_org)
	slli.d	$a0, $s2, 4
	alsl.d	$a0, $s2, $a0, 3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(gc_kind_copying)
	add.d	$a2, $s0, $a0
	pcalau12i	$a3, %pc_hi20(heap_end)
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $a3, %pc_lo12(heap_end)
	pcalau12i	$s8, %pc_hi20(freelist)
	bne	$a1, $s1, .LBB86_15
# %bb.12:
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB86_14
# %bb.13:
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	move	$fp, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $s5, %pc_lo12(heaps)
.LBB86_14:                              # %must_malloc.exit24
	st.d	$a0, $fp, 8
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB86_17
	b	.LBB86_16
.LBB86_15:
	st.d	$zero, $s8, %pc_lo12(freelist)
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB86_17
.LBB86_16:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB86_17:                              # %gc_protect.exit
	pcalau12i	$a0, %pc_hi20(oblistvar)
	addi.d	$a0, $a0, %pc_lo12(oblistvar)
	st.d	$a0, $fp, 0
	ori	$s0, $zero, 1
	pcalau12i	$s5, %pc_hi20(protected_registers)
	ld.d	$a0, $s5, %pc_lo12(protected_registers)
	pcalau12i	$s1, %pc_hi20(obarray_dim)
	ld.d	$s6, $s1, %pc_lo12(obarray_dim)
	st.d	$s0, $fp, 8
	st.d	$a0, $fp, 16
	ori	$a0, $zero, 2
	st.d	$fp, $s5, %pc_lo12(protected_registers)
	blt	$s6, $a0, .LBB86_25
# %bb.18:
	slli.d	$a0, $s6, 3
	sltu	$a1, $s0, $a0
	masknez	$a2, $s0, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$a0, .LBB86_20
# %bb.19:                               # %must_malloc.exit25.thread
	pcalau12i	$a0, %pc_hi20(obarray)
	st.d	$fp, $a0, %pc_lo12(obarray)
	b	.LBB86_21
.LBB86_20:                              # %must_malloc.exit25
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s1, %pc_lo12(obarray_dim)
	pcalau12i	$a0, %pc_hi20(obarray)
	st.d	$fp, $a0, %pc_lo12(obarray)
	blez	$s6, .LBB86_22
.LBB86_21:                              # %.lr.ph67.preheader
	slli.d	$a2, $s6, 3
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB86_22:                              # %._crit_edge68
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB86_24
# %bb.23:
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s1
.LBB86_24:                              # %gc_protect_n.exit
	ld.d	$a1, $s5, %pc_lo12(protected_registers)
	st.d	$fp, $a0, 0
	st.d	$s6, $a0, 8
	st.d	$a1, $a0, 16
	st.d	$a0, $s5, %pc_lo12(protected_registers)
.LBB86_25:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(gc_kind_copying)
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(gc_cells_allocated)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	bne	$a1, $s0, .LBB86_29
# %bb.26:
	ld.d	$s1, $s3, %pc_lo12(heap)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s1, $a0, .LBB86_28
# %bb.27:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB86_28:
	addi.d	$a0, $s1, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB86_32
.LBB86_29:
	ld.d	$s1, $s8, %pc_lo12(freelist)
	bnez	$s1, .LBB86_31
# %bb.30:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s8, %pc_lo12(freelist)
.LBB86_31:
	ld.d	$a0, $s1, 16
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s8, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $a2, %pc_lo12(gc_cells_allocated)
.LBB86_32:                              # %cons.exit
	lu12i.w	$s0, 16
	st.w	$s0, $s1, 0
	st.d	$fp, $s1, 8
	st.d	$zero, $s1, 16
	pcalau12i	$a0, %pc_hi20(unbound_marker)
	addi.d	$s2, $a0, %pc_lo12(unbound_marker)
	st.d	$s1, $s2, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB86_34
# %bb.33:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB86_34:                              # %gc_protect.exit26
	ld.d	$a0, $s5, %pc_lo12(protected_registers)
	st.d	$s2, $fp, 0
	ori	$s1, $zero, 1
	st.d	$s1, $fp, 8
	st.d	$a0, $fp, 16
	st.d	$fp, $s5, %pc_lo12(protected_registers)
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(gc_kind_copying)
	move	$fp, $a0
	bne	$a1, $s1, .LBB86_38
# %bb.35:
	ld.d	$s1, $s3, %pc_lo12(heap)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s1, $a0, .LBB86_37
# %bb.36:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB86_37:
	addi.d	$a0, $s1, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB86_41
.LBB86_38:
	ld.d	$s1, $s8, %pc_lo12(freelist)
	bnez	$s1, .LBB86_40
# %bb.39:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s8, %pc_lo12(freelist)
.LBB86_40:
	ld.d	$a0, $s1, 16
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s8, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $a2, %pc_lo12(gc_cells_allocated)
.LBB86_41:                              # %cons.exit30
	st.w	$s0, $s1, 0
	st.d	$fp, $s1, 8
	st.d	$zero, $s1, 16
	pcalau12i	$a0, %pc_hi20(eof_val)
	addi.d	$s0, $a0, %pc_lo12(eof_val)
	st.d	$s1, $s0, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB86_43
# %bb.42:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB86_43:                              # %gc_protect.exit31
	ld.d	$a0, $s5, %pc_lo12(protected_registers)
	st.d	$s0, $fp, 0
	ori	$s1, $zero, 1
	st.d	$s1, $fp, 8
	st.d	$a0, $fp, 16
	st.d	$fp, $s5, %pc_lo12(protected_registers)
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(sym_t)
	addi.d	$s2, $a0, %pc_lo12(sym_t)
	st.d	$fp, $s2, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB86_45
# %bb.44:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s2, 0
.LBB86_45:                              # %gc_protect_sym.exit
	ld.d	$a0, $s5, %pc_lo12(protected_registers)
	st.d	$s2, $s0, 0
	st.d	$s1, $s0, 8
	st.d	$a0, $s0, 16
	st.d	$s0, $s5, %pc_lo12(protected_registers)
	beqz	$fp, .LBB86_47
# %bb.46:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB86_48
.LBB86_47:                              # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB86_48:                              # %setvar.exit
	st.d	$fp, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$a0, .LBB86_50
# %bb.49:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB86_51
.LBB86_50:                              # %.critedge.i32
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB86_51:                              # %setvar.exit33
	st.d	$zero, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$fp, .LBB86_53
# %bb.52:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB86_54
.LBB86_53:                              # %.critedge.i34
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB86_54:                              # %setvar.exit35
	st.d	$s0, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$fp, .LBB86_56
# %bb.55:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB86_57
.LBB86_56:                              # %.critedge.i36
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB86_57:                              # %setvar.exit37
	st.d	$s0, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$fp, .LBB86_59
# %bb.58:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB86_60
.LBB86_59:                              # %.critedge.i38
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB86_60:                              # %setvar.exit39
	st.d	$s0, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(sym_errobj)
	addi.d	$s1, $a0, %pc_lo12(sym_errobj)
	st.d	$fp, $s1, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB86_62
# %bb.61:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s1, 0
.LBB86_62:                              # %gc_protect_sym.exit40
	ld.d	$a0, $s5, %pc_lo12(protected_registers)
	st.d	$s1, $s0, 0
	ori	$a1, $zero, 1
	st.d	$a1, $s0, 8
	st.d	$a0, $s0, 16
	st.d	$s0, $s5, %pc_lo12(protected_registers)
	beqz	$fp, .LBB86_64
# %bb.63:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB86_65
.LBB86_64:                              # %.critedge.i41
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB86_65:                              # %setvar.exit42
	st.d	$zero, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(sym_catchall)
	addi.d	$s0, $a1, %pc_lo12(sym_catchall)
	st.d	$a0, $s0, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB86_67
# %bb.66:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB86_67:                              # %gc_protect_sym.exit43
	ld.d	$a0, $s5, %pc_lo12(protected_registers)
	st.d	$s0, $fp, 0
	ori	$s0, $zero, 1
	st.d	$s0, $fp, 8
	st.d	$a0, $fp, 16
	st.d	$fp, $s5, %pc_lo12(protected_registers)
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(sym_progn)
	addi.d	$s1, $a1, %pc_lo12(sym_progn)
	st.d	$a0, $s1, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB86_69
# %bb.68:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB86_69:                              # %gc_protect_sym.exit44
	ld.d	$a0, $s5, %pc_lo12(protected_registers)
	st.d	$s1, $fp, 0
	st.d	$s0, $fp, 8
	st.d	$a0, $fp, 16
	st.d	$fp, $s5, %pc_lo12(protected_registers)
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(sym_lambda)
	addi.d	$s0, $a1, %pc_lo12(sym_lambda)
	st.d	$a0, $s0, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB86_71
# %bb.70:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB86_71:                              # %gc_protect_sym.exit45
	ld.d	$a0, $s5, %pc_lo12(protected_registers)
	st.d	$s0, $fp, 0
	ori	$s0, $zero, 1
	st.d	$s0, $fp, 8
	st.d	$a0, $fp, 16
	st.d	$fp, $s5, %pc_lo12(protected_registers)
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(sym_quote)
	addi.d	$s1, $a1, %pc_lo12(sym_quote)
	st.d	$a0, $s1, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB86_73
# %bb.72:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB86_73:                              # %gc_protect_sym.exit46
	ld.d	$a0, $s5, %pc_lo12(protected_registers)
	st.d	$s1, $fp, 0
	st.d	$s0, $fp, 8
	st.d	$a0, $fp, 16
	st.d	$fp, $s5, %pc_lo12(protected_registers)
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(sym_dot)
	addi.d	$s0, $a1, %pc_lo12(sym_dot)
	st.d	$a0, $s0, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB86_75
# %bb.74:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB86_75:                              # %gc_protect_sym.exit47
	ld.d	$a0, $s5, %pc_lo12(protected_registers)
	st.d	$s0, $fp, 0
	ori	$s1, $zero, 1
	st.d	$s1, $fp, 8
	st.d	$a0, $fp, 16
	st.d	$fp, $s5, %pc_lo12(protected_registers)
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(sym_after_gc)
	addi.d	$s2, $a0, %pc_lo12(sym_after_gc)
	st.d	$fp, $s2, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB86_77
# %bb.76:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s2, 0
.LBB86_77:                              # %gc_protect_sym.exit48
	ld.d	$a0, $s5, %pc_lo12(protected_registers)
	st.d	$s2, $s0, 0
	st.d	$s1, $s0, 8
	st.d	$a0, $s0, 16
	st.d	$s0, $s5, %pc_lo12(protected_registers)
	beqz	$fp, .LBB86_79
# %bb.78:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB86_80
.LBB86_79:                              # %.critedge.i49
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB86_80:                              # %setvar.exit50
	st.d	$zero, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(sym_eval_history_ptr)
	addi.d	$s1, $a0, %pc_lo12(sym_eval_history_ptr)
	st.d	$fp, $s1, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB86_82
# %bb.81:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s1, 0
.LBB86_82:                              # %gc_protect_sym.exit51
	ld.d	$a0, $s5, %pc_lo12(protected_registers)
	st.d	$s1, $s0, 0
	ori	$a1, $zero, 1
	st.d	$a1, $s0, 8
	st.d	$a0, $s0, 16
	st.d	$s0, $s5, %pc_lo12(protected_registers)
	beqz	$fp, .LBB86_84
# %bb.83:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB86_85
.LBB86_84:                              # %.critedge.i52
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB86_85:                              # %setvar.exit53
	pcalau12i	$s0, %pc_hi20(inums_dim)
	ld.d	$a0, $s0, %pc_lo12(inums_dim)
	st.d	$zero, $fp, 16
	blez	$a0, .LBB86_102
# %bb.86:
	slli.d	$a0, $a0, 3
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$s7, %pc_hi20(inums)
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	beqz	$a0, .LBB86_88
# %bb.87:                               # %must_malloc.exit54.thread
	st.d	$fp, $s7, %pc_lo12(inums)
	b	.LBB86_89
.LBB86_88:                              # %must_malloc.exit54
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s0, %pc_lo12(inums_dim)
	st.d	$fp, $s7, %pc_lo12(inums)
	blez	$s6, .LBB86_98
.LBB86_89:                              # %.lr.ph70.preheader
	move	$fp, $s3
	ori	$a3, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$s3, $zero
	move	$s1, $zero
	lu12i.w	$s2, 32
	b	.LBB86_92
	.p2align	4, , 16
.LBB86_90:                              #   in Loop: Header=BB86_92 Depth=1
	addi.d	$a0, $s5, 24
	st.d	$a0, $s4, %pc_lo12(heap)
.LBB86_91:                              #   in Loop: Header=BB86_92 Depth=1
	st.w	$s2, $s5, 0
	movgr2fr.d	$fa0, $s1
	ld.d	$s4, $s7, %pc_lo12(inums)
	ffint.d.l	$fa0, $fa0
	ld.d	$s6, $s0, %pc_lo12(inums_dim)
	fst.d	$fa0, $s5, 8
	stx.d	$s5, $s4, $s3
	addi.d	$s1, $s1, 1
	addi.d	$s3, $s3, 8
	bge	$s1, $s6, .LBB86_99
.LBB86_92:                              # %.lr.ph70
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	bne	$a0, $a3, .LBB86_95
# %bb.93:                               #   in Loop: Header=BB86_92 Depth=1
	move	$s4, $fp
	ld.d	$s5, $fp, %pc_lo12(heap)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s5, $a0, .LBB86_90
# %bb.94:                               #   in Loop: Header=BB86_92 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 1
	b	.LBB86_90
	.p2align	4, , 16
.LBB86_95:                              #   in Loop: Header=BB86_92 Depth=1
	move	$s4, $s8
	ld.d	$s5, $s8, %pc_lo12(freelist)
	bnez	$s5, .LBB86_97
# %bb.96:                               #   in Loop: Header=BB86_92 Depth=1
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 1
	ld.d	$s5, $s4, %pc_lo12(freelist)
.LBB86_97:                              #   in Loop: Header=BB86_92 Depth=1
	ld.d	$a0, $s5, 16
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s4, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $a2, %pc_lo12(gc_cells_allocated)
	b	.LBB86_91
.LBB86_98:
	move	$s4, $zero
.LBB86_99:                              # %._crit_edge71
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB86_101
# %bb.100:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB86_101:                             # %gc_protect_n.exit55
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a1, %pc_lo12(protected_registers)
	st.d	$s4, $fp, 0
	st.d	$s6, $fp, 8
	st.d	$a0, $fp, 16
	st.d	$fp, $a1, %pc_lo12(protected_registers)
.LBB86_102:
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end86:
	.size	init_storage_1, .Lfunc_end86-init_storage_1
                                        # -- End function
	.globl	set_gc_hooks                    # -- Begin function set_gc_hooks
	.p2align	5
	.type	set_gc_hooks,@function
set_gc_hooks:                           # @set_gc_hooks
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(user_types)
	ld.d	$s5, $s6, %pc_lo12(user_types)
	move	$fp, $a5
	move	$s0, $a4
	move	$s2, $a3
	move	$s1, $a2
	move	$s3, $a1
	move	$s4, $a0
	bnez	$s5, .LBB87_4
# %bb.1:
	lu12i.w	$a0, 1
	ori	$a1, $a0, 3904
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	bnez	$a0, .LBB87_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB87_3:                               # %must_malloc.exit.i
	st.d	$s5, $s6, %pc_lo12(user_types)
.LBB87_4:
	ori	$a0, $zero, 99
	bltu	$a0, $s4, .LBB87_6
# %bb.5:                                # %get_user_type_hooks.exit
	slli.d	$a0, $s4, 6
	alsl.d	$a0, $s4, $a0, 4
	add.d	$a1, $s5, $a0
	stx.d	$s3, $s5, $a0
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	st.d	$s2, $a1, 8
	st.d	$s1, $a1, 16
	st.d	$s0, $a1, 24
	st.d	$a0, $fp, 0
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB87_6:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.Lfunc_end87:
	.size	set_gc_hooks, .Lfunc_end87-set_gc_hooks
                                        # -- End function
	.globl	file_gc_free                    # -- Begin function file_gc_free
	.p2align	5
	.type	file_gc_free,@function
file_gc_free:                           # @file_gc_free
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB88_2
# %bb.1:
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 8
.LBB88_2:
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB88_4
# %bb.3:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 16
.LBB88_4:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end88:
	.size	file_gc_free, .Lfunc_end88-file_gc_free
                                        # -- End function
	.globl	set_print_hooks                 # -- Begin function set_print_hooks
	.p2align	5
	.type	set_print_hooks,@function
set_print_hooks:                        # @set_print_hooks
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(user_types)
	ld.d	$s1, $s2, %pc_lo12(user_types)
	move	$fp, $a1
	move	$s0, $a0
	bnez	$s1, .LBB89_4
# %bb.1:
	lu12i.w	$a0, 1
	ori	$a1, $a0, 3904
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB89_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB89_3:                               # %must_malloc.exit.i
	st.d	$s1, $s2, %pc_lo12(user_types)
.LBB89_4:
	ori	$a0, $zero, 99
	bltu	$a0, $s0, .LBB89_6
# %bb.5:                                # %get_user_type_hooks.exit
	slli.d	$a0, $s0, 6
	alsl.d	$a0, $s0, $a0, 4
	add.d	$a0, $s1, $a0
	st.d	$fp, $a0, 32
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB89_6:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.Lfunc_end89:
	.size	set_print_hooks, .Lfunc_end89-set_print_hooks
                                        # -- End function
	.globl	file_prin1                      # -- Begin function file_prin1
	.p2align	5
	.type	file_prin1,@function
file_prin1:                             # @file_prin1
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s1, $a0
	ld.d	$s0, $a0, 16
	ld.d	$a2, $a1, 8
	ld.d	$a1, $a1, 16
	pcalau12i	$a0, %pc_hi20(.L.str.149)
	addi.d	$a0, $a0, %pc_lo12(.L.str.149)
	jirl	$ra, $a2, 0
	pcalau12i	$s2, %pc_hi20(tkbuffer)
	ld.d	$a0, $s2, %pc_lo12(tkbuffer)
	ld.d	$a2, $s1, 8
	pcalau12i	$a1, %pc_hi20(.L.str.150)
	addi.d	$a1, $a1, %pc_lo12(.L.str.150)
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(tkbuffer)
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 16
	jirl	$ra, $a2, 0
	beqz	$s0, .LBB90_2
# %bb.1:
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a0, $a0, %pc_lo12(.L.str.112)
	jirl	$ra, $a2, 0
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 16
	move	$a0, $s0
	jirl	$ra, $a2, 0
.LBB90_2:
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	jr	$a2
.Lfunc_end90:
	.size	file_prin1, .Lfunc_end90-file_prin1
                                        # -- End function
	.globl	init_subr                       # -- Begin function init_subr
	.p2align	5
	.type	init_subr,@function
init_subr:                              # @init_subr
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$s2, $a1
	move	$s1, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(gc_kind_copying)
	ld.d	$a1, $a1, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB91_4
# %bb.1:
	pcalau12i	$s4, %pc_hi20(heap)
	ld.d	$s3, $s4, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s3, $a0, .LBB91_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB91_3:
	addi.d	$a0, $s3, 24
	st.d	$a0, $s4, %pc_lo12(heap)
	b	.LBB91_7
.LBB91_4:
	pcalau12i	$s4, %pc_hi20(freelist)
	ld.d	$s3, $s4, %pc_lo12(freelist)
	bnez	$s3, .LBB91_6
# %bb.5:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s4, %pc_lo12(freelist)
.LBB91_6:
	ld.d	$a0, $s3, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s4, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB91_7:                               # %subrcons.exit
	st.h	$zero, $s3, 0
	st.h	$s2, $s3, 2
	st.d	$s1, $s3, 8
	st.d	$s0, $s3, 16
	beqz	$fp, .LBB91_9
# %bb.8:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB91_10
.LBB91_9:                               # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB91_10:                              # %setvar.exit
	st.d	$s3, $fp, 16
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end91:
	.size	init_subr, .Lfunc_end91-init_subr
                                        # -- End function
	.globl	init_subr_0                     # -- Begin function init_subr_0
	.p2align	5
	.type	init_subr_0,@function
init_subr_0:                            # @init_subr_0
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(gc_kind_copying)
	ld.d	$a1, $a1, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB92_4
# %bb.1:
	pcalau12i	$s3, %pc_hi20(heap)
	ld.d	$s2, $s3, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s2, $a0, .LBB92_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB92_3:
	addi.d	$a0, $s2, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB92_7
.LBB92_4:
	pcalau12i	$s3, %pc_hi20(freelist)
	ld.d	$s2, $s3, %pc_lo12(freelist)
	bnez	$s2, .LBB92_6
# %bb.5:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s3, %pc_lo12(freelist)
.LBB92_6:
	ld.d	$a0, $s2, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s3, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB92_7:                               # %subrcons.exit.i
	lu12i.w	$a0, 64
	st.w	$a0, $s2, 0
	st.d	$s1, $s2, 8
	st.d	$s0, $s2, 16
	beqz	$fp, .LBB92_9
# %bb.8:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB92_10
.LBB92_9:                               # %.critedge.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB92_10:                              # %init_subr.exit
	st.d	$s2, $fp, 16
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end92:
	.size	init_subr_0, .Lfunc_end92-init_subr_0
                                        # -- End function
	.globl	init_subr_1                     # -- Begin function init_subr_1
	.p2align	5
	.type	init_subr_1,@function
init_subr_1:                            # @init_subr_1
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(gc_kind_copying)
	ld.d	$a1, $a1, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB93_4
# %bb.1:
	pcalau12i	$s3, %pc_hi20(heap)
	ld.d	$s2, $s3, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s2, $a0, .LBB93_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB93_3:
	addi.d	$a0, $s2, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB93_7
.LBB93_4:
	pcalau12i	$s3, %pc_hi20(freelist)
	ld.d	$s2, $s3, %pc_lo12(freelist)
	bnez	$s2, .LBB93_6
# %bb.5:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s3, %pc_lo12(freelist)
.LBB93_6:
	ld.d	$a0, $s2, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s3, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB93_7:                               # %subrcons.exit.i
	lu12i.w	$a0, 80
	st.w	$a0, $s2, 0
	st.d	$s1, $s2, 8
	st.d	$s0, $s2, 16
	beqz	$fp, .LBB93_9
# %bb.8:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB93_10
.LBB93_9:                               # %.critedge.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB93_10:                              # %init_subr.exit
	st.d	$s2, $fp, 16
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end93:
	.size	init_subr_1, .Lfunc_end93-init_subr_1
                                        # -- End function
	.globl	init_subr_2                     # -- Begin function init_subr_2
	.p2align	5
	.type	init_subr_2,@function
init_subr_2:                            # @init_subr_2
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(gc_kind_copying)
	ld.d	$a1, $a1, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB94_4
# %bb.1:
	pcalau12i	$s3, %pc_hi20(heap)
	ld.d	$s2, $s3, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s2, $a0, .LBB94_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB94_3:
	addi.d	$a0, $s2, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB94_7
.LBB94_4:
	pcalau12i	$s3, %pc_hi20(freelist)
	ld.d	$s2, $s3, %pc_lo12(freelist)
	bnez	$s2, .LBB94_6
# %bb.5:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s3, %pc_lo12(freelist)
.LBB94_6:
	ld.d	$a0, $s2, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s3, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB94_7:                               # %subrcons.exit.i
	lu12i.w	$a0, 96
	st.w	$a0, $s2, 0
	st.d	$s1, $s2, 8
	st.d	$s0, $s2, 16
	beqz	$fp, .LBB94_9
# %bb.8:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB94_10
.LBB94_9:                               # %.critedge.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB94_10:                              # %init_subr.exit
	st.d	$s2, $fp, 16
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end94:
	.size	init_subr_2, .Lfunc_end94-init_subr_2
                                        # -- End function
	.globl	init_subr_2n                    # -- Begin function init_subr_2n
	.p2align	5
	.type	init_subr_2n,@function
init_subr_2n:                           # @init_subr_2n
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(gc_kind_copying)
	ld.d	$a1, $a1, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB95_4
# %bb.1:
	pcalau12i	$s3, %pc_hi20(heap)
	ld.d	$s2, $s3, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s2, $a0, .LBB95_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB95_3:
	addi.d	$a0, $s2, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB95_7
.LBB95_4:
	pcalau12i	$s3, %pc_hi20(freelist)
	ld.d	$s2, $s3, %pc_lo12(freelist)
	bnez	$s2, .LBB95_6
# %bb.5:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s3, %pc_lo12(freelist)
.LBB95_6:
	ld.d	$a0, $s2, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s3, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB95_7:                               # %subrcons.exit.i
	lu12i.w	$a0, 336
	st.w	$a0, $s2, 0
	st.d	$s1, $s2, 8
	st.d	$s0, $s2, 16
	beqz	$fp, .LBB95_9
# %bb.8:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB95_10
.LBB95_9:                               # %.critedge.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB95_10:                              # %init_subr.exit
	st.d	$s2, $fp, 16
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end95:
	.size	init_subr_2n, .Lfunc_end95-init_subr_2n
                                        # -- End function
	.globl	init_subr_3                     # -- Begin function init_subr_3
	.p2align	5
	.type	init_subr_3,@function
init_subr_3:                            # @init_subr_3
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(gc_kind_copying)
	ld.d	$a1, $a1, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB96_4
# %bb.1:
	pcalau12i	$s3, %pc_hi20(heap)
	ld.d	$s2, $s3, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s2, $a0, .LBB96_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB96_3:
	addi.d	$a0, $s2, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB96_7
.LBB96_4:
	pcalau12i	$s3, %pc_hi20(freelist)
	ld.d	$s2, $s3, %pc_lo12(freelist)
	bnez	$s2, .LBB96_6
# %bb.5:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s3, %pc_lo12(freelist)
.LBB96_6:
	ld.d	$a0, $s2, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s3, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB96_7:                               # %subrcons.exit.i
	lu12i.w	$a0, 112
	st.w	$a0, $s2, 0
	st.d	$s1, $s2, 8
	st.d	$s0, $s2, 16
	beqz	$fp, .LBB96_9
# %bb.8:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB96_10
.LBB96_9:                               # %.critedge.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB96_10:                              # %init_subr.exit
	st.d	$s2, $fp, 16
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end96:
	.size	init_subr_3, .Lfunc_end96-init_subr_3
                                        # -- End function
	.globl	init_subr_4                     # -- Begin function init_subr_4
	.p2align	5
	.type	init_subr_4,@function
init_subr_4:                            # @init_subr_4
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(gc_kind_copying)
	ld.d	$a1, $a1, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB97_4
# %bb.1:
	pcalau12i	$s3, %pc_hi20(heap)
	ld.d	$s2, $s3, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s2, $a0, .LBB97_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB97_3:
	addi.d	$a0, $s2, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB97_7
.LBB97_4:
	pcalau12i	$s3, %pc_hi20(freelist)
	ld.d	$s2, $s3, %pc_lo12(freelist)
	bnez	$s2, .LBB97_6
# %bb.5:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s3, %pc_lo12(freelist)
.LBB97_6:
	ld.d	$a0, $s2, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s3, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB97_7:                               # %subrcons.exit.i
	lu12i.w	$a0, 304
	st.w	$a0, $s2, 0
	st.d	$s1, $s2, 8
	st.d	$s0, $s2, 16
	beqz	$fp, .LBB97_9
# %bb.8:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB97_10
.LBB97_9:                               # %.critedge.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB97_10:                              # %init_subr.exit
	st.d	$s2, $fp, 16
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end97:
	.size	init_subr_4, .Lfunc_end97-init_subr_4
                                        # -- End function
	.globl	init_subr_5                     # -- Begin function init_subr_5
	.p2align	5
	.type	init_subr_5,@function
init_subr_5:                            # @init_subr_5
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(gc_kind_copying)
	ld.d	$a1, $a1, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB98_4
# %bb.1:
	pcalau12i	$s3, %pc_hi20(heap)
	ld.d	$s2, $s3, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s2, $a0, .LBB98_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB98_3:
	addi.d	$a0, $s2, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB98_7
.LBB98_4:
	pcalau12i	$s3, %pc_hi20(freelist)
	ld.d	$s2, $s3, %pc_lo12(freelist)
	bnez	$s2, .LBB98_6
# %bb.5:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s3, %pc_lo12(freelist)
.LBB98_6:
	ld.d	$a0, $s2, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s3, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB98_7:                               # %subrcons.exit.i
	lu12i.w	$a0, 320
	st.w	$a0, $s2, 0
	st.d	$s1, $s2, 8
	st.d	$s0, $s2, 16
	beqz	$fp, .LBB98_9
# %bb.8:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB98_10
.LBB98_9:                               # %.critedge.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB98_10:                              # %init_subr.exit
	st.d	$s2, $fp, 16
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end98:
	.size	init_subr_5, .Lfunc_end98-init_subr_5
                                        # -- End function
	.globl	init_lsubr                      # -- Begin function init_lsubr
	.p2align	5
	.type	init_lsubr,@function
init_lsubr:                             # @init_lsubr
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(gc_kind_copying)
	ld.d	$a1, $a1, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB99_4
# %bb.1:
	pcalau12i	$s3, %pc_hi20(heap)
	ld.d	$s2, $s3, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s2, $a0, .LBB99_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB99_3:
	addi.d	$a0, $s2, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB99_7
.LBB99_4:
	pcalau12i	$s3, %pc_hi20(freelist)
	ld.d	$s2, $s3, %pc_lo12(freelist)
	bnez	$s2, .LBB99_6
# %bb.5:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s3, %pc_lo12(freelist)
.LBB99_6:
	ld.d	$a0, $s2, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s3, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB99_7:                               # %subrcons.exit.i
	lu12i.w	$a0, 128
	st.w	$a0, $s2, 0
	st.d	$s1, $s2, 8
	st.d	$s0, $s2, 16
	beqz	$fp, .LBB99_9
# %bb.8:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB99_10
.LBB99_9:                               # %.critedge.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB99_10:                              # %init_subr.exit
	st.d	$s2, $fp, 16
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end99:
	.size	init_lsubr, .Lfunc_end99-init_lsubr
                                        # -- End function
	.globl	init_fsubr                      # -- Begin function init_fsubr
	.p2align	5
	.type	init_fsubr,@function
init_fsubr:                             # @init_fsubr
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(gc_kind_copying)
	ld.d	$a1, $a1, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB100_4
# %bb.1:
	pcalau12i	$s3, %pc_hi20(heap)
	ld.d	$s2, $s3, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s2, $a0, .LBB100_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB100_3:
	addi.d	$a0, $s2, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB100_7
.LBB100_4:
	pcalau12i	$s3, %pc_hi20(freelist)
	ld.d	$s2, $s3, %pc_lo12(freelist)
	bnez	$s2, .LBB100_6
# %bb.5:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s3, %pc_lo12(freelist)
.LBB100_6:
	ld.d	$a0, $s2, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s3, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB100_7:                              # %subrcons.exit.i
	lu12i.w	$a0, 144
	st.w	$a0, $s2, 0
	st.d	$s1, $s2, 8
	st.d	$s0, $s2, 16
	beqz	$fp, .LBB100_9
# %bb.8:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB100_10
.LBB100_9:                              # %.critedge.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB100_10:                             # %init_subr.exit
	st.d	$s2, $fp, 16
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end100:
	.size	init_fsubr, .Lfunc_end100-init_fsubr
                                        # -- End function
	.globl	init_msubr                      # -- Begin function init_msubr
	.p2align	5
	.type	init_msubr,@function
init_msubr:                             # @init_msubr
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(gc_kind_copying)
	ld.d	$a1, $a1, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB101_4
# %bb.1:
	pcalau12i	$s3, %pc_hi20(heap)
	ld.d	$s2, $s3, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s2, $a0, .LBB101_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB101_3:
	addi.d	$a0, $s2, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB101_7
.LBB101_4:
	pcalau12i	$s3, %pc_hi20(freelist)
	ld.d	$s2, $s3, %pc_lo12(freelist)
	bnez	$s2, .LBB101_6
# %bb.5:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s3, %pc_lo12(freelist)
.LBB101_6:
	ld.d	$a0, $s2, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s3, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB101_7:                              # %subrcons.exit.i
	lu12i.w	$a0, 160
	st.w	$a0, $s2, 0
	st.d	$s1, $s2, 8
	st.d	$s0, $s2, 16
	beqz	$fp, .LBB101_9
# %bb.8:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB101_10
.LBB101_9:                              # %.critedge.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB101_10:                             # %init_subr.exit
	st.d	$s2, $fp, 16
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end101:
	.size	init_msubr, .Lfunc_end101-init_msubr
                                        # -- End function
	.globl	assq                            # -- Begin function assq
	.p2align	5
	.type	assq,@function
assq:                                   # @assq
# %bb.0:
	beqz	$a1, .LBB102_8
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a3, $zero, 1
	move	$a4, $a1
	b	.LBB102_3
	.p2align	4, , 16
.LBB102_2:                              # %.critedge16
                                        #   in Loop: Header=BB102_3 Depth=1
	ld.d	$a4, $a4, 16
	beqz	$a4, .LBB102_10
.LBB102_3:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a2, $a4, 2
	bne	$a2, $a3, .LBB102_9
# %bb.4:                                #   in Loop: Header=BB102_3 Depth=1
	ld.d	$a2, $a4, 8
	beqz	$a2, .LBB102_2
# %bb.5:                                #   in Loop: Header=BB102_3 Depth=1
	ld.hu	$a5, $a2, 2
	bne	$a5, $a3, .LBB102_2
# %bb.6:                                #   in Loop: Header=BB102_3 Depth=1
	ld.d	$a5, $a2, 8
	bne	$a5, $a0, .LBB102_2
# %bb.7:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	move	$a0, $a2
	ret
.LBB102_8:
	move	$a0, $zero
	ret
.LBB102_9:                              # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB102_10:
	move	$a2, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	move	$a0, $a2
	ret
.Lfunc_end102:
	.size	assq, .Lfunc_end102-assq
                                        # -- End function
	.globl	get_user_type_hooks             # -- Begin function get_user_type_hooks
	.p2align	5
	.type	get_user_type_hooks,@function
get_user_type_hooks:                    # @get_user_type_hooks
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(user_types)
	ld.d	$s0, $s1, %pc_lo12(user_types)
	move	$fp, $a0
	beqz	$s0, .LBB103_3
# %bb.1:
	ori	$a0, $zero, 99
	bltu	$a0, $fp, .LBB103_5
.LBB103_2:
	slli.d	$a0, $fp, 6
	alsl.d	$a0, $fp, $a0, 4
	add.d	$a0, $s0, $a0
	b	.LBB103_6
.LBB103_3:
	lu12i.w	$a0, 1
	ori	$a1, $a0, 3904
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$a0, .LBB103_7
# %bb.4:                                # %must_malloc.exit
	st.d	$s0, $s1, %pc_lo12(user_types)
	ori	$a0, $zero, 99
	bgeu	$a0, $fp, .LBB103_2
.LBB103_5:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB103_6:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB103_7:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	st.d	$s0, $s1, %pc_lo12(user_types)
	ori	$a0, $zero, 99
	bgeu	$a0, $fp, .LBB103_2
	b	.LBB103_5
.Lfunc_end103:
	.size	get_user_type_hooks, .Lfunc_end103-get_user_type_hooks
                                        # -- End function
	.globl	allocate_user_tc                # -- Begin function allocate_user_tc
	.p2align	5
	.type	allocate_user_tc,@function
allocate_user_tc:                       # @allocate_user_tc
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(user_tc_next)
	ld.d	$fp, $s0, %pc_lo12(user_tc_next)
	ori	$a1, $zero, 101
	move	$a0, $fp
	blt	$fp, $a1, .LBB104_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(user_tc_next)
.LBB104_2:
	addi.d	$a0, $a0, 1
	st.d	$a0, $s0, %pc_lo12(user_tc_next)
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end104:
	.size	allocate_user_tc, .Lfunc_end104-allocate_user_tc
                                        # -- End function
	.globl	get_newspace                    # -- Begin function get_newspace
	.p2align	5
	.type	get_newspace,@function
get_newspace:                           # @get_newspace
# %bb.0:
	pcalau12i	$a0, %pc_hi20(heaps)
	ld.d	$a2, $a0, %pc_lo12(heaps)
	pcalau12i	$a1, %pc_hi20(heap_org)
	ld.d	$a3, $a1, %pc_lo12(heap_org)
	ld.d	$a0, $a2, 0
	bne	$a3, $a0, .LBB105_2
# %bb.1:
	ld.d	$a0, $a2, 8
.LBB105_2:
	pcalau12i	$a2, %pc_hi20(heap_size)
	ld.d	$a2, $a2, %pc_lo12(heap_size)
	pcalau12i	$a3, %pc_hi20(heap)
	st.d	$a0, $a3, %pc_lo12(heap)
	st.d	$a0, $a1, %pc_lo12(heap_org)
	slli.d	$a1, $a2, 4
	alsl.d	$a1, $a2, $a1, 3
	add.d	$a1, $a0, $a1
	pcalau12i	$a2, %pc_hi20(heap_end)
	st.d	$a1, $a2, %pc_lo12(heap_end)
	ret
.Lfunc_end105:
	.size	get_newspace, .Lfunc_end105-get_newspace
                                        # -- End function
	.globl	scan_newspace                   # -- Begin function scan_newspace
	.p2align	5
	.type	scan_newspace,@function
scan_newspace:                          # @scan_newspace
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(heap)
	ld.d	$a1, $s2, %pc_lo12(heap)
	bgeu	$a0, $a1, .LBB106_19
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a0
	pcalau12i	$s3, %pc_hi20(user_types)
	lu12i.w	$a0, 1
	ori	$s0, $a0, 3904
	ori	$s4, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s5, $zero, 99
	ori	$s6, $zero, 21
	lu12i.w	$a0, 896
	ori	$s7, $a0, 2036
	b	.LBB106_5
.LBB106_2:                              #   in Loop: Header=BB106_5 Depth=1
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(gc_relocate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $fp, 8
	move	$a0, $a1
.LBB106_3:                              #   in Loop: Header=BB106_5 Depth=1
	pcaddu18i	$ra, %call36(gc_relocate)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	.p2align	4, , 16
.LBB106_4:                              #   in Loop: Header=BB106_5 Depth=1
	ld.d	$a0, $s2, %pc_lo12(heap)
	addi.d	$fp, $fp, 24
	bgeu	$fp, $a0, .LBB106_19
.LBB106_5:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	beqz	$fp, .LBB106_11
# %bb.6:                                #   in Loop: Header=BB106_5 Depth=1
	ld.hu	$a0, $fp, 2
	bltu	$s6, $a0, .LBB106_18
# %bb.7:                                #   in Loop: Header=BB106_5 Depth=1
	sll.d	$a1, $s4, $a0
	and	$a2, $a1, $s7
	bnez	$a2, .LBB106_4
# %bb.8:                                #   in Loop: Header=BB106_5 Depth=1
	andi	$a1, $a1, 2050
	bnez	$a1, .LBB106_2
# %bb.9:                                #   in Loop: Header=BB106_5 Depth=1
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB106_18
# %bb.10:                               #   in Loop: Header=BB106_5 Depth=1
	ld.d	$a0, $fp, 16
	b	.LBB106_3
	.p2align	4, , 16
.LBB106_11:                             #   in Loop: Header=BB106_5 Depth=1
	move	$s8, $zero
	ld.d	$a0, $s3, %pc_lo12(user_types)
	bnez	$a0, .LBB106_15
.LBB106_12:                             #   in Loop: Header=BB106_5 Depth=1
	ori	$a0, $zero, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB106_14
# %bb.13:                               #   in Loop: Header=BB106_5 Depth=1
	move	$s1, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s1
.LBB106_14:                             # %must_malloc.exit.i
                                        #   in Loop: Header=BB106_5 Depth=1
	st.d	$a0, $s3, %pc_lo12(user_types)
.LBB106_15:                             #   in Loop: Header=BB106_5 Depth=1
	bltu	$s5, $s8, .LBB106_20
# %bb.16:                               # %get_user_type_hooks.exit
                                        #   in Loop: Header=BB106_5 Depth=1
	slli.d	$a1, $s8, 6
	alsl.d	$a1, $s8, $a1, 4
	add.d	$a0, $a0, $a1
	ld.d	$a1, $a0, 8
	beqz	$a1, .LBB106_4
# %bb.17:                               #   in Loop: Header=BB106_5 Depth=1
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB106_4
.LBB106_18:                             #   in Loop: Header=BB106_5 Depth=1
	ext.w.h	$s8, $a0
	ld.d	$a0, $s3, %pc_lo12(user_types)
	bnez	$a0, .LBB106_15
	b	.LBB106_12
.LBB106_19:                             # %._crit_edge
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB106_20:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.Lfunc_end106:
	.size	scan_newspace, .Lfunc_end106-scan_newspace
                                        # -- End function
	.globl	free_oldspace                   # -- Begin function free_oldspace
	.p2align	5
	.type	free_oldspace,@function
free_oldspace:                          # @free_oldspace
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
	bgeu	$a0, $a1, .LBB107_13
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a1
	move	$s0, $a0
	ori	$s4, $zero, 11
	ori	$s5, $zero, 3
	pcalau12i	$s6, %pc_hi20(user_types)
	lu12i.w	$a0, 1
	ori	$s1, $a0, 3904
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s2, $a0, %pc_lo12(.L.str.51)
	ori	$a2, $zero, 99
	b	.LBB107_3
	.p2align	4, , 16
.LBB107_2:                              #   in Loop: Header=BB107_3 Depth=1
	addi.d	$s0, $s0, 24
	bgeu	$s0, $fp, .LBB107_13
.LBB107_3:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s0, 0
	bnez	$a0, .LBB107_2
# %bb.4:                                #   in Loop: Header=BB107_3 Depth=1
	ld.h	$s8, $s0, 2
	bstrpick.d	$s7, $s8, 15, 0
	addi.d	$a0, $s7, -1
	bltu	$a0, $s4, .LBB107_2
# %bb.5:                                #   in Loop: Header=BB107_3 Depth=1
	addi.d	$a0, $s7, -19
	bltu	$a0, $s5, .LBB107_2
# %bb.6:                                #   in Loop: Header=BB107_3 Depth=1
	ld.d	$s3, $s6, %pc_lo12(user_types)
	bnez	$s3, .LBB107_10
# %bb.7:                                #   in Loop: Header=BB107_3 Depth=1
	ori	$a0, $zero, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	bnez	$a0, .LBB107_9
# %bb.8:                                #   in Loop: Header=BB107_3 Depth=1
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB107_9:                              # %must_malloc.exit.i
                                        #   in Loop: Header=BB107_3 Depth=1
	st.d	$s3, $s6, %pc_lo12(user_types)
	ori	$a2, $zero, 99
.LBB107_10:                             #   in Loop: Header=BB107_3 Depth=1
	bstrpick.d	$a0, $s7, 15, 0
	bltu	$a2, $a0, .LBB107_14
# %bb.11:                               # %get_user_type_hooks.exit
                                        #   in Loop: Header=BB107_3 Depth=1
	slli.d	$a0, $s8, 6
	alsl.d	$a0, $s8, $a0, 4
	add.d	$a0, $s3, $a0
	ld.d	$a1, $a0, 24
	beqz	$a1, .LBB107_2
# %bb.12:                               #   in Loop: Header=BB107_3 Depth=1
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a2, $zero, 99
	b	.LBB107_2
.LBB107_13:                             # %._crit_edge
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
.LBB107_14:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.Lfunc_end107:
	.size	free_oldspace, .Lfunc_end107-free_oldspace
                                        # -- End function
	.globl	allocate_aheap                  # -- Begin function allocate_aheap
	.p2align	5
	.type	allocate_aheap,@function
allocate_aheap:                         # @allocate_aheap
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB108_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB108_2:                              # %gc_kind_check.exit
	pcalau12i	$a0, %pc_hi20(nheaps)
	ld.d	$a0, $a0, %pc_lo12(nheaps)
	blez	$a0, .LBB108_6
# %bb.3:                                # %.lr.ph
	pcalau12i	$s3, %pc_hi20(heaps)
	ld.d	$a2, $s3, %pc_lo12(heaps)
	move	$s0, $zero
	move	$a1, $zero
	.p2align	4, , 16
.LBB108_4:                              # =>This Inner Loop Header: Depth=1
	ldx.d	$a3, $a2, $s0
	beqz	$a3, .LBB108_7
# %bb.5:                                #   in Loop: Header=BB108_4 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$s0, $s0, 8
	bne	$a0, $a1, .LBB108_4
.LBB108_6:
	move	$a0, $zero
	b	.LBB108_20
.LBB108_7:
	pcalau12i	$s1, %pc_hi20(nointerrupt)
	pcalau12i	$a0, %pc_hi20(gc_status_flag)
	ld.d	$a0, $a0, %pc_lo12(gc_status_flag)
	ld.d	$s2, $s1, %pc_lo12(nointerrupt)
	ori	$fp, $zero, 1
	st.d	$fp, $s1, %pc_lo12(nointerrupt)
	beqz	$a0, .LBB108_10
# %bb.8:
	pcalau12i	$a0, %pc_hi20(siod_verbose_level)
	ld.d	$a0, $a0, %pc_lo12(siod_verbose_level)
	ori	$a2, $zero, 4
	blt	$a0, $a2, .LBB108_10
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB108_10:
	pcalau12i	$s6, %pc_hi20(heap_size)
	ld.d	$s4, $s6, %pc_lo12(heap_size)
	slli.d	$a0, $s4, 4
	alsl.d	$s5, $s4, $a0, 3
	sltu	$a0, $fp, $s5
	maskeqz	$a1, $s5, $a0
	masknez	$a0, $fp, $a0
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB108_12
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s6, %pc_lo12(heap_size)
	slli.d	$a0, $s4, 4
	alsl.d	$s5, $s4, $a0, 3
.LBB108_12:                             # %must_malloc.exit
	ld.d	$a0, $s3, %pc_lo12(heaps)
	stx.d	$fp, $a0, $s0
	ori	$a1, $zero, 12
	ori	$a2, $zero, 2
	st.h	$a1, $fp, 2
	blt	$s4, $a2, .LBB108_15
# %bb.13:                               # %.lr.ph24.preheader
	add.d	$a3, $fp, $s5
	.p2align	4, , 16
.LBB108_14:                             # %.lr.ph24
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $fp, 24
	st.d	$a2, $fp, 16
	addi.d	$a4, $fp, 48
	st.h	$a1, $fp, 26
	move	$fp, $a2
	bltu	$a4, $a3, .LBB108_14
	b	.LBB108_16
.LBB108_15:
	move	$a2, $fp
.LBB108_16:                             # %._crit_edge
	pcalau12i	$a1, %pc_hi20(freelist)
	ld.d	$a3, $a1, %pc_lo12(freelist)
	st.d	$a3, $a2, 16
	ldx.d	$a0, $a0, $s0
	st.d	$a0, $a1, %pc_lo12(freelist)
	st.d	$s2, $s1, %pc_lo12(nointerrupt)
	bnez	$s2, .LBB108_19
# %bb.17:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	ld.d	$a1, $a0, %pc_lo12(interrupt_differed)
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB108_19
# %bb.18:
	st.d	$zero, $a0, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB108_19:                             # %no_interrupt.exit
	pcalau12i	$a0, %pc_hi20(sym_t)
	ld.d	$a0, $a0, %pc_lo12(sym_t)
.LBB108_20:                             # %.loopexit
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end108:
	.size	allocate_aheap, .Lfunc_end108-allocate_aheap
                                        # -- End function
	.globl	gc_kind_check                   # -- Begin function gc_kind_check
	.p2align	5
	.type	gc_kind_check,@function
gc_kind_check:                          # @gc_kind_check
# %bb.0:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB109_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	move	$a1, $zero
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB109_2:
	ret
.Lfunc_end109:
	.size	gc_kind_check, .Lfunc_end109-gc_kind_check
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function gc_mark_and_sweep
.LCPI110_0:
	.dword	0x404e000000000000              # double 60
	.text
	.globl	gc_mark_and_sweep
	.p2align	5
	.type	gc_mark_and_sweep,@function
gc_mark_and_sweep:                      # @gc_mark_and_sweep
# %bb.0:
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(times)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	movgr2fr.d	$fa0, $a0
	ld.d	$a0, $sp, 104
	ffint.d.l	$fa0, $fa0
	pcalau12i	$a2, %pc_hi20(.LCPI110_0)
	fld.d	$fs0, $a2, %pc_lo12(.LCPI110_0)
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fs0
	pcalau12i	$a2, %pc_hi20(gc_rt)
	pcalau12i	$a0, %pc_hi20(gc_status_flag)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(gc_status_flag)
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fa0, $a2, %pc_lo12(gc_rt)
	pcalau12i	$a2, %pc_hi20(gc_cells_collected)
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	st.d	$zero, $a2, %pc_lo12(gc_cells_collected)
	pcalau12i	$fp, %pc_hi20(siod_verbose_level)
	beqz	$a0, .LBB110_3
# %bb.1:
	ld.d	$a0, $fp, %pc_lo12(siod_verbose_level)
	ori	$a1, $zero, 4
	blt	$a0, $a1, .LBB110_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB110_3:                              # %gc_ms_stats_start.exit
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a1, $a0, %pc_lo12(heap_end)
	pcalau12i	$a0, %pc_hi20(heap)
	ld.d	$a3, $a0, %pc_lo12(heap)
	lu12i.w	$s0, -349526
	bgeu	$a3, $a1, .LBB110_12
# %bb.4:                                # %.lr.ph.preheader
	addi.d	$a2, $a3, 24
	sltu	$a4, $a2, $a1
	masknez	$a2, $a2, $a4
	maskeqz	$a4, $a1, $a4
	or	$a2, $a4, $a2
	addi.d	$a2, $a2, -24
	xor	$a4, $a2, $a3
	sltu	$a4, $zero, $a4
	add.d	$a5, $a3, $a4
	ori	$a6, $s0, 2731
	sub.d	$a2, $a2, $a5
	lu32i.d	$a6, -349526
	lu52i.d	$a5, $a6, -1366
	mulh.du	$a2, $a2, $a5
	srli.d	$a2, $a2, 4
	add.d	$a4, $a2, $a4
	lu12i.w	$a2, 192
	beqz	$a4, .LBB110_8
# %bb.5:                                # %vector.ph
	addi.d	$a4, $a4, 1
	bstrpick.d	$a6, $a4, 61, 1
	slli.d	$a5, $a6, 1
	slli.d	$a7, $a6, 5
	alsl.d	$a6, $a6, $a7, 4
	addi.d	$a7, $a3, 26
	add.d	$a3, $a3, $a6
	move	$a6, $a7
	move	$a7, $a5
	.p2align	4, , 16
.LBB110_6:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a2, $a6, -26
	addi.d	$t0, $a7, -2
	addi.d	$a7, $a6, 48
	st.w	$a2, $a6, -2
	move	$a6, $a7
	move	$a7, $t0
	bnez	$t0, .LBB110_6
# %bb.7:                                # %middle.block
	move	$a6, $a3
	bne	$a4, $a5, .LBB110_9
	b	.LBB110_11
.LBB110_8:
	move	$a6, $a3
.LBB110_9:                              # %.lr.ph.preheader94
	move	$a4, $a6
	.p2align	4, , 16
.LBB110_10:                             # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a5, $a4, 24
	st.w	$a2, $a4, 0
	move	$a4, $a5
	move	$a3, $a5
	bltu	$a5, $a1, .LBB110_10
.LBB110_11:                             # %._crit_edge
	st.d	$a3, $a0, %pc_lo12(heap)
.LBB110_12:
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(save_regs_gc_mark)
	addi.d	$fp, $a0, %pc_lo12(save_regs_gc_mark)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getcontext)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(nheaps)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(nheaps)
	pcalau12i	$s6, %pc_hi20(heaps)
	pcalau12i	$a7, %pc_hi20(heap_size)
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	blez	$a0, .LBB110_24
# %bb.13:                               # %.split.preheader
	ori	$a1, $s0, 2731
	move	$s1, $zero
	move	$s8, $zero
	lu32i.d	$a1, -349526
	ori	$a2, $s0, 2730
	lu52i.d	$s2, $a1, -1366
	lu32i.d	$a2, -349526
	lu52i.d	$s3, $a2, 170
	ori	$s4, $zero, 12
	ori	$s5, $zero, 34
	move	$a1, $a0
	b	.LBB110_16
.LBB110_14:                             # %looks_pointerp.exit.i
                                        #   in Loop: Header=BB110_16 Depth=1
	pcaddu18i	$ra, %call36(gc_mark)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(nheaps)
	.p2align	4, , 16
.LBB110_15:                             # %looks_pointerp.exit.i.thread
                                        #   in Loop: Header=BB110_16 Depth=1
	addi.d	$a2, $s8, 1
	move	$a0, $a1
	move	$s8, $a2
	beq	$a2, $s5, .LBB110_24
.LBB110_16:                             # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB110_19 Depth 2
	bge	$s1, $a1, .LBB110_15
# %bb.17:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB110_16 Depth=1
	alsl.d	$a0, $s8, $fp, 3
	ld.d	$a2, $a7, %pc_lo12(heap_size)
	ld.d	$a3, $s6, %pc_lo12(heaps)
	ld.d	$a0, $a0, 176
	slli.d	$a4, $a2, 4
	alsl.d	$a2, $a2, $a4, 3
	move	$a4, $a1
	b	.LBB110_19
	.p2align	4, , 16
.LBB110_18:                             #   in Loop: Header=BB110_19 Depth=2
	addi.d	$a5, $a4, -1
	addi.d	$a3, $a3, 8
	move	$a4, $a5
	beqz	$a5, .LBB110_15
.LBB110_19:                             #   Parent Loop BB110_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a3, 0
	beqz	$a5, .LBB110_18
# %bb.20:                               #   in Loop: Header=BB110_19 Depth=2
	bltu	$a0, $a5, .LBB110_18
# %bb.21:                               #   in Loop: Header=BB110_19 Depth=2
	add.d	$a6, $a5, $a2
	bgeu	$a0, $a6, .LBB110_18
# %bb.22:                               #   in Loop: Header=BB110_19 Depth=2
	sub.d	$a5, $a0, $a5
	mul.d	$a5, $a5, $s2
	rotri.d	$a5, $a5, 3
	bltu	$s3, $a5, .LBB110_18
# %bb.23:                               #   in Loop: Header=BB110_19 Depth=2
	ld.hu	$a5, $a0, 2
	beq	$a5, $s4, .LBB110_18
	b	.LBB110_14
.LBB110_24:                             # %mark_locations_array.exit.preheader
	pcalau12i	$a1, %pc_hi20(protected_registers)
	ld.d	$a1, $a1, %pc_lo12(protected_registers)
	beqz	$a1, .LBB110_31
# %bb.25:
	move	$fp, $zero
	move	$s1, $a1
	b	.LBB110_27
	.p2align	4, , 16
.LBB110_26:                             # %mark_locations_array.exit
                                        #   in Loop: Header=BB110_27 Depth=1
	ld.d	$a0, $s1, 16
	move	$s1, $a0
	beqz	$a0, .LBB110_30
.LBB110_27:                             # %.lr.ph36
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB110_29 Depth 2
	ld.d	$a1, $s1, 8
	bge	$fp, $a1, .LBB110_26
# %bb.28:                               # %.lr.ph31.preheader
                                        #   in Loop: Header=BB110_27 Depth=1
	ld.d	$a0, $s1, 0
	.p2align	4, , 16
.LBB110_29:                             # %.lr.ph31
                                        #   Parent Loop BB110_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	move	$s3, $a1
	pcaddu18i	$ra, %call36(gc_mark)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s2, 8
	addi.d	$a2, $s3, -1
	move	$a1, $a2
	bnez	$a2, .LBB110_29
	b	.LBB110_26
.LBB110_30:                             # %mark_protected_registers.exit.loopexit
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(nheaps)
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
.LBB110_31:                             # %mark_protected_registers.exit
	pcalau12i	$a1, %pc_hi20(stack_start_ptr)
	ld.d	$a1, $a1, %pc_lo12(stack_start_ptr)
	addi.d	$a2, $sp, 88
	sltu	$a3, $a2, $a1
	sub.d	$a4, $a2, $a1
	masknez	$a4, $a4, $a3
	sub.d	$a5, $a1, $a2
	maskeqz	$a5, $a5, $a3
	or	$a4, $a5, $a4
	srai.d	$fp, $a4, 3
	blez	$fp, .LBB110_44
# %bb.32:                               # %.lr.ph38
	blez	$a0, .LBB110_65
# %bb.33:                               # %.lr.ph38.split.preheader
	move	$s1, $zero
	masknez	$a1, $a1, $a3
	maskeqz	$a2, $a2, $a3
	ori	$a3, $s0, 2731
	or	$s2, $a2, $a1
	move	$s5, $zero
	lu32i.d	$a3, -349526
	ori	$a1, $s0, 2730
	lu52i.d	$s0, $a3, -1366
	lu32i.d	$a1, -349526
	lu52i.d	$s3, $a1, 170
	ori	$s4, $zero, 12
	move	$a1, $a0
	b	.LBB110_36
.LBB110_34:                             # %looks_pointerp.exit.i7
                                        #   in Loop: Header=BB110_36 Depth=1
	pcaddu18i	$ra, %call36(gc_mark)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(nheaps)
	.p2align	4, , 16
.LBB110_35:                             # %looks_pointerp.exit.i7.thread
                                        #   in Loop: Header=BB110_36 Depth=1
	addi.d	$a2, $s5, 1
	move	$a0, $a1
	move	$s5, $a2
	beq	$a2, $fp, .LBB110_44
.LBB110_36:                             # %.lr.ph38.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB110_39 Depth 2
	bge	$s1, $a1, .LBB110_35
# %bb.37:                               # %.lr.ph.i.i10
                                        #   in Loop: Header=BB110_36 Depth=1
	slli.d	$a0, $s5, 3
	ld.d	$a2, $a7, %pc_lo12(heap_size)
	ld.d	$a3, $s6, %pc_lo12(heaps)
	ldx.d	$a0, $s2, $a0
	slli.d	$a4, $a2, 4
	alsl.d	$a2, $a2, $a4, 3
	move	$a4, $a1
	b	.LBB110_39
	.p2align	4, , 16
.LBB110_38:                             #   in Loop: Header=BB110_39 Depth=2
	addi.d	$a5, $a4, -1
	addi.d	$a3, $a3, 8
	move	$a4, $a5
	beqz	$a5, .LBB110_35
.LBB110_39:                             #   Parent Loop BB110_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a3, 0
	beqz	$a5, .LBB110_38
# %bb.40:                               #   in Loop: Header=BB110_39 Depth=2
	bltu	$a0, $a5, .LBB110_38
# %bb.41:                               #   in Loop: Header=BB110_39 Depth=2
	add.d	$a6, $a5, $a2
	bgeu	$a0, $a6, .LBB110_38
# %bb.42:                               #   in Loop: Header=BB110_39 Depth=2
	sub.d	$a5, $a0, $a5
	mul.d	$a5, $a5, $s0
	rotri.d	$a5, $a5, 3
	bltu	$s3, $a5, .LBB110_38
# %bb.43:                               #   in Loop: Header=BB110_39 Depth=2
	ld.hu	$a5, $a0, 2
	beq	$a5, $s4, .LBB110_38
	b	.LBB110_34
.LBB110_44:                             # %mark_locations_array.exit17.preheader
	blez	$a0, .LBB110_64
# %bb.45:                               # %.lr.ph48.preheader
	move	$a2, $zero
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	ori	$s4, $zero, 12
	ori	$t0, $zero, 3
	pcalau12i	$a1, %pc_hi20(user_types)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$t1, $a1, 3904
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $zero
	move	$a1, $zero
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	b	.LBB110_48
	.p2align	4, , 16
.LBB110_46:                             # %mark_locations_array.exit17.loopexit
                                        #   in Loop: Header=BB110_48 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(nheaps)
	move	$a2, $s5
.LBB110_47:                             # %mark_locations_array.exit17
                                        #   in Loop: Header=BB110_48 Depth=1
	addi.d	$a5, $s0, 1
	move	$s0, $a5
	move	$a3, $a1
	move	$a4, $a2
	bge	$a5, $a0, .LBB110_66
.LBB110_48:                             # %.lr.ph48
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB110_53 Depth 2
	ld.d	$a3, $s6, %pc_lo12(heaps)
	slli.d	$a4, $s0, 3
	ldx.d	$s2, $a3, $a4
	beqz	$s2, .LBB110_47
# %bb.49:                               #   in Loop: Header=BB110_48 Depth=1
	ld.d	$a4, $a7, %pc_lo12(heap_size)
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	bge	$a5, $a4, .LBB110_47
# %bb.50:                               # %.lr.ph43.preheader
                                        #   in Loop: Header=BB110_48 Depth=1
	slli.d	$a0, $a4, 4
	alsl.d	$a0, $a4, $a0, 3
	add.d	$s8, $s2, $a0
	move	$s1, $a1
	b	.LBB110_53
	.p2align	4, , 16
.LBB110_51:                             #   in Loop: Header=BB110_53 Depth=2
	st.h	$zero, $s2, 0
	move	$a1, $s1
.LBB110_52:                             #   in Loop: Header=BB110_53 Depth=2
	addi.d	$a0, $s2, 24
	move	$s2, $a0
	move	$s1, $a1
	move	$a2, $s5
	bgeu	$a0, $s8, .LBB110_46
.LBB110_53:                             # %.lr.ph43
                                        #   Parent Loop BB110_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $s2, 0
	move	$s5, $a2
	bnez	$a0, .LBB110_51
# %bb.54:                               #   in Loop: Header=BB110_53 Depth=2
	ld.h	$fp, $s2, 2
	bstrpick.d	$s7, $fp, 15, 0
	addi.d	$a0, $s7, -1
	bgeu	$a0, $s4, .LBB110_56
.LBB110_55:                             #   in Loop: Header=BB110_53 Depth=2
	addi.d	$a1, $s1, 1
	st.h	$s4, $s2, 2
	st.d	$s5, $s2, 16
	move	$s5, $s2
	b	.LBB110_52
.LBB110_56:                             #   in Loop: Header=BB110_53 Depth=2
	addi.d	$a0, $s7, -19
	bltu	$a0, $t0, .LBB110_55
# %bb.57:                               #   in Loop: Header=BB110_53 Depth=2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(user_types)
	move	$s3, $a0
	bnez	$a0, .LBB110_61
# %bb.58:                               #   in Loop: Header=BB110_53 Depth=2
	move	$a0, $t1
	move	$s6, $t1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	bnez	$a0, .LBB110_60
# %bb.59:                               #   in Loop: Header=BB110_53 Depth=2
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB110_60:                             # %must_malloc.exit.i
                                        #   in Loop: Header=BB110_53 Depth=2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$s3, $a0, %pc_lo12(user_types)
	move	$a0, $s3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	ori	$t0, $zero, 3
	move	$t1, $s6
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
.LBB110_61:                             #   in Loop: Header=BB110_53 Depth=2
	bstrpick.d	$a0, $s7, 15, 0
	ori	$a1, $zero, 99
	bltu	$a1, $a0, .LBB110_70
# %bb.62:                               # %get_user_type_hooks.exit
                                        #   in Loop: Header=BB110_53 Depth=2
	slli.d	$a0, $fp, 6
	alsl.d	$a0, $fp, $a0, 4
	add.d	$a0, $s3, $a0
	ld.d	$a1, $a0, 24
	beqz	$a1, .LBB110_55
# %bb.63:                               #   in Loop: Header=BB110_53 Depth=2
	move	$a0, $s2
	move	$fp, $t1
	jirl	$ra, $a1, 0
	move	$t1, $fp
	ori	$t0, $zero, 3
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	b	.LBB110_55
.LBB110_64:
	move	$a3, $zero
	move	$a4, $zero
	b	.LBB110_66
.LBB110_65:
	move	$a4, $zero
	move	$a3, $zero
.LBB110_66:                             # %gc_sweep.exit
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	st.d	$a3, $fp, %pc_lo12(gc_cells_collected)
	pcalau12i	$a0, %pc_hi20(freelist)
	st.d	$a4, $a0, %pc_lo12(freelist)
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(times)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	ld.d	$a1, $sp, 104
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fs0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	fld.d	$fa1, $a2, %pc_lo12(gc_rt)
	pcalau12i	$a0, %pc_hi20(gc_time_taken)
	fld.d	$fa2, $a0, %pc_lo12(gc_time_taken)
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(gc_status_flag)
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a2, %pc_lo12(gc_rt)
	fadd.d	$fa1, $fa2, $fa0
	fst.d	$fa1, $a0, %pc_lo12(gc_time_taken)
	beqz	$a1, .LBB110_69
# %bb.67:                               # %gc_sweep.exit
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(siod_verbose_level)
	ori	$a1, $zero, 4
	blt	$a0, $a1, .LBB110_69
# %bb.68:
	ld.d	$a2, $fp, %pc_lo12(gc_cells_collected)
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB110_69:                             # %gc_ms_stats_end.exit
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.LBB110_70:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.Lfunc_end110:
	.size	gc_mark_and_sweep, .Lfunc_end110-gc_mark_and_sweep
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function gc_ms_stats_start
.LCPI111_0:
	.dword	0x404e000000000000              # double 60
	.text
	.globl	gc_ms_stats_start
	.p2align	5
	.type	gc_ms_stats_start,@function
gc_ms_stats_start:                      # @gc_ms_stats_start
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(times)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	movgr2fr.d	$fa0, $a0
	ld.d	$a0, $sp, 16
	ffint.d.l	$fa0, $fa0
	pcalau12i	$a1, %pc_hi20(.LCPI111_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI111_0)
	movgr2fr.d	$fa2, $a0
	ffint.d.l	$fa2, $fa2
	fadd.d	$fa0, $fa0, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	pcalau12i	$a0, %pc_hi20(gc_status_flag)
	ld.d	$a0, $a0, %pc_lo12(gc_status_flag)
	pcalau12i	$a1, %pc_hi20(gc_rt)
	fst.d	$fa0, $a1, %pc_lo12(gc_rt)
	pcalau12i	$a1, %pc_hi20(gc_cells_collected)
	st.d	$zero, $a1, %pc_lo12(gc_cells_collected)
	beqz	$a0, .LBB111_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(siod_verbose_level)
	ld.d	$a0, $a0, %pc_lo12(siod_verbose_level)
	ori	$a1, $zero, 4
	blt	$a0, $a1, .LBB111_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB111_3:
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end111:
	.size	gc_ms_stats_start, .Lfunc_end111-gc_ms_stats_start
                                        # -- End function
	.globl	mark_locations                  # -- Begin function mark_locations
	.p2align	5
	.type	mark_locations,@function
mark_locations:                         # @mark_locations
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
	sltu	$a3, $a1, $a0
	sub.d	$a2, $a1, $a0
	masknez	$a2, $a2, $a3
	sub.d	$a4, $a0, $a1
	maskeqz	$a4, $a4, $a3
	or	$a2, $a4, $a2
	srai.d	$fp, $a2, 3
	blez	$fp, .LBB112_13
# %bb.1:
	pcalau12i	$s0, %pc_hi20(nheaps)
	ld.d	$a2, $s0, %pc_lo12(nheaps)
	blez	$a2, .LBB112_13
# %bb.2:                                # %.lr.ph.split.i.preheader
	move	$s1, $zero
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	or	$s2, $a1, $a0
	pcalau12i	$s3, %pc_hi20(heaps)
	pcalau12i	$s4, %pc_hi20(heap_size)
	lu12i.w	$a0, -349526
	ori	$a1, $a0, 2731
	lu32i.d	$a1, -349526
	lu52i.d	$s5, $a1, -1366
	ori	$a0, $a0, 2730
	lu32i.d	$a0, -349526
	lu52i.d	$s6, $a0, 170
	ori	$s7, $zero, 12
	b	.LBB112_5
.LBB112_3:                              # %looks_pointerp.exit.i
                                        #   in Loop: Header=BB112_5 Depth=1
	pcaddu18i	$ra, %call36(gc_mark)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, %pc_lo12(nheaps)
	.p2align	4, , 16
.LBB112_4:                              # %looks_pointerp.exit.thread.i
                                        #   in Loop: Header=BB112_5 Depth=1
	addi.d	$s1, $s1, 1
	beq	$s1, $fp, .LBB112_13
.LBB112_5:                              # %.lr.ph.split.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB112_8 Depth 2
	blez	$a2, .LBB112_4
# %bb.6:                                # %.lr.ph.i.i
                                        #   in Loop: Header=BB112_5 Depth=1
	slli.d	$a0, $s1, 3
	ld.d	$a3, $s4, %pc_lo12(heap_size)
	ldx.d	$a0, $s2, $a0
	ld.d	$a1, $s3, %pc_lo12(heaps)
	slli.d	$a4, $a3, 4
	alsl.d	$a3, $a3, $a4, 3
	move	$a4, $a2
	b	.LBB112_8
	.p2align	4, , 16
.LBB112_7:                              #   in Loop: Header=BB112_8 Depth=2
	addi.d	$a4, $a4, -1
	addi.d	$a1, $a1, 8
	beqz	$a4, .LBB112_4
.LBB112_8:                              #   Parent Loop BB112_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a1, 0
	beqz	$a5, .LBB112_7
# %bb.9:                                #   in Loop: Header=BB112_8 Depth=2
	bltu	$a0, $a5, .LBB112_7
# %bb.10:                               #   in Loop: Header=BB112_8 Depth=2
	add.d	$a6, $a5, $a3
	bgeu	$a0, $a6, .LBB112_7
# %bb.11:                               #   in Loop: Header=BB112_8 Depth=2
	sub.d	$a5, $a0, $a5
	mul.d	$a5, $a5, $s5
	rotri.d	$a5, $a5, 3
	bltu	$s6, $a5, .LBB112_7
# %bb.12:                               #   in Loop: Header=BB112_8 Depth=2
	ld.hu	$a5, $a0, 2
	beq	$a5, $s7, .LBB112_7
	b	.LBB112_3
.LBB112_13:                             # %mark_locations_array.exit
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
.Lfunc_end112:
	.size	mark_locations, .Lfunc_end112-mark_locations
                                        # -- End function
	.globl	mark_protected_registers        # -- Begin function mark_protected_registers
	.p2align	5
	.type	mark_protected_registers,@function
mark_protected_registers:               # @mark_protected_registers
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(protected_registers)
	ld.d	$fp, $a0, %pc_lo12(protected_registers)
	bnez	$fp, .LBB113_3
.LBB113_1:                              # %._crit_edge15
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
	.p2align	4, , 16
.LBB113_2:                              # %._crit_edge
                                        #   in Loop: Header=BB113_3 Depth=1
	ld.d	$fp, $fp, 16
	beqz	$fp, .LBB113_1
.LBB113_3:                              # %.lr.ph14
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB113_5 Depth 2
	ld.d	$s0, $fp, 8
	blez	$s0, .LBB113_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB113_3 Depth=1
	ld.d	$s1, $fp, 0
	.p2align	4, , 16
.LBB113_5:                              # %.lr.ph
                                        #   Parent Loop BB113_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(gc_mark)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	bnez	$s0, .LBB113_5
	b	.LBB113_2
.Lfunc_end113:
	.size	mark_protected_registers, .Lfunc_end113-mark_protected_registers
                                        # -- End function
	.globl	gc_sweep                        # -- Begin function gc_sweep
	.p2align	5
	.type	gc_sweep,@function
gc_sweep:                               # @gc_sweep
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(nheaps)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(nheaps)
	blez	$a0, .LBB114_19
# %bb.1:                                # %.lr.ph43.preheader
	pcalau12i	$s4, %pc_hi20(heaps)
	pcalau12i	$a3, %pc_hi20(heap_size)
	ori	$s6, $zero, 12
	ori	$a4, $zero, 3
	pcalau12i	$a1, %pc_hi20(user_types)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3904
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$s8, $zero
	move	$fp, $zero
	move	$s0, $zero
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	b	.LBB114_4
	.p2align	4, , 16
.LBB114_2:                              # %.loopexit.loopexit
                                        #   in Loop: Header=BB114_4 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(nheaps)
.LBB114_3:                              # %.loopexit
                                        #   in Loop: Header=BB114_4 Depth=1
	addi.d	$s8, $s8, 1
	bge	$s8, $a0, .LBB114_20
.LBB114_4:                              # %.lr.ph43
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB114_8 Depth 2
	ld.d	$a1, $s4, %pc_lo12(heaps)
	slli.d	$a2, $s8, 3
	ldx.d	$s1, $a1, $a2
	beqz	$s1, .LBB114_3
# %bb.5:                                #   in Loop: Header=BB114_4 Depth=1
	ld.d	$a1, $a3, %pc_lo12(heap_size)
	blez	$a1, .LBB114_3
# %bb.6:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB114_4 Depth=1
	slli.d	$a0, $a1, 4
	alsl.d	$a0, $a1, $a0, 3
	add.d	$s3, $s1, $a0
	b	.LBB114_8
	.p2align	4, , 16
.LBB114_7:                              #   in Loop: Header=BB114_8 Depth=2
	st.h	$zero, $s1, 0
	addi.d	$s1, $s1, 24
	bgeu	$s1, $s3, .LBB114_2
.LBB114_8:                              # %.lr.ph
                                        #   Parent Loop BB114_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $s1, 0
	bnez	$a0, .LBB114_7
# %bb.9:                                #   in Loop: Header=BB114_8 Depth=2
	ld.h	$s7, $s1, 2
	bstrpick.d	$s5, $s7, 15, 0
	addi.d	$a0, $s5, -1
	bgeu	$a0, $s6, .LBB114_11
.LBB114_10:                             #   in Loop: Header=BB114_8 Depth=2
	addi.d	$fp, $fp, 1
	st.h	$s6, $s1, 2
	st.d	$s0, $s1, 16
	move	$s0, $s1
	addi.d	$s1, $s1, 24
	bltu	$s1, $s3, .LBB114_8
	b	.LBB114_2
.LBB114_11:                             #   in Loop: Header=BB114_8 Depth=2
	addi.d	$a0, $s5, -19
	bltu	$a0, $a4, .LBB114_10
# %bb.12:                               #   in Loop: Header=BB114_8 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(user_types)
	bnez	$s2, .LBB114_16
# %bb.13:                               #   in Loop: Header=BB114_8 Depth=2
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	bnez	$a0, .LBB114_15
# %bb.14:                               #   in Loop: Header=BB114_8 Depth=2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB114_15:                             # %must_malloc.exit.i
                                        #   in Loop: Header=BB114_8 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$s2, $a0, %pc_lo12(user_types)
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ori	$a4, $zero, 3
.LBB114_16:                             #   in Loop: Header=BB114_8 Depth=2
	bstrpick.d	$a0, $s5, 15, 0
	ori	$a1, $zero, 99
	bltu	$a1, $a0, .LBB114_21
# %bb.17:                               # %get_user_type_hooks.exit
                                        #   in Loop: Header=BB114_8 Depth=2
	slli.d	$a0, $s7, 6
	alsl.d	$a0, $s7, $a0, 4
	add.d	$a0, $s2, $a0
	ld.d	$a1, $a0, 24
	beqz	$a1, .LBB114_10
# %bb.18:                               #   in Loop: Header=BB114_8 Depth=2
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a4, $zero, 3
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	b	.LBB114_10
.LBB114_19:
	move	$s0, $zero
	move	$fp, $zero
.LBB114_20:                             # %._crit_edge
	pcalau12i	$a0, %pc_hi20(gc_cells_collected)
	st.d	$fp, $a0, %pc_lo12(gc_cells_collected)
	pcalau12i	$a0, %pc_hi20(freelist)
	st.d	$s0, $a0, %pc_lo12(freelist)
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB114_21:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.Lfunc_end114:
	.size	gc_sweep, .Lfunc_end114-gc_sweep
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function gc_ms_stats_end
.LCPI115_0:
	.dword	0x404e000000000000              # double 60
	.text
	.globl	gc_ms_stats_end
	.p2align	5
	.type	gc_ms_stats_end,@function
gc_ms_stats_end:                        # @gc_ms_stats_end
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(times)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	movgr2fr.d	$fa0, $a0
	ld.d	$a0, $sp, 16
	ffint.d.l	$fa0, $fa0
	pcalau12i	$a1, %pc_hi20(.LCPI115_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI115_0)
	movgr2fr.d	$fa2, $a0
	ffint.d.l	$fa2, $fa2
	fadd.d	$fa0, $fa0, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	pcalau12i	$a0, %pc_hi20(gc_rt)
	fld.d	$fa1, $a0, %pc_lo12(gc_rt)
	pcalau12i	$a1, %pc_hi20(gc_time_taken)
	fld.d	$fa2, $a1, %pc_lo12(gc_time_taken)
	pcalau12i	$a2, %pc_hi20(gc_status_flag)
	ld.d	$a2, $a2, %pc_lo12(gc_status_flag)
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a0, %pc_lo12(gc_rt)
	fadd.d	$fa1, $fa2, $fa0
	fst.d	$fa1, $a1, %pc_lo12(gc_time_taken)
	beqz	$a2, .LBB115_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(siod_verbose_level)
	ld.d	$a0, $a0, %pc_lo12(siod_verbose_level)
	ori	$a1, $zero, 4
	blt	$a0, $a1, .LBB115_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(gc_cells_collected)
	ld.d	$a2, $a0, %pc_lo12(gc_cells_collected)
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB115_3:
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end115:
	.size	gc_ms_stats_end, .Lfunc_end115-gc_ms_stats_end
                                        # -- End function
	.globl	gc_mark                         # -- Begin function gc_mark
	.p2align	5
	.type	gc_mark,@function
gc_mark:                                # @gc_mark
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	beqz	$a0, .LBB116_13
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a0
	ori	$s0, $zero, 1
	ori	$s1, $zero, 20
	pcalau12i	$a0, %pc_hi20(.LJTI116_0)
	addi.d	$s2, $a0, %pc_lo12(.LJTI116_0)
	b	.LBB116_4
	.p2align	4, , 16
.LBB116_2:                              #   in Loop: Header=BB116_4 Depth=1
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(gc_mark)
	jirl	$ra, $ra, 0
.LBB116_3:                              # %.backedge
                                        #   in Loop: Header=BB116_4 Depth=1
	addi.d	$fp, $fp, 16
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB116_13
.LBB116_4:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $fp, 0
	bnez	$a0, .LBB116_13
# %bb.5:                                #   in Loop: Header=BB116_4 Depth=1
	ld.hu	$s3, $fp, 2
	addi.d	$a0, $s3, -1
	st.h	$s0, $fp, 0
	bltu	$s1, $a0, .LBB116_8
# %bb.6:                                #   in Loop: Header=BB116_4 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s2, $a0
	add.d	$a0, $s2, $a0
	jr	$a0
.LBB116_7:                              #   in Loop: Header=BB116_4 Depth=1
	ld.d	$a0, $fp, 16
	addi.d	$fp, $fp, 8
	pcaddu18i	$ra, %call36(gc_mark)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB116_4
	b	.LBB116_13
.LBB116_8:
	pcalau12i	$s2, %pc_hi20(user_types)
	ld.d	$s0, $s2, %pc_lo12(user_types)
	bnez	$s0, .LBB116_10
# %bb.9:
	lu12i.w	$a0, 1
	ori	$s1, $a0, 3904
	move	$a0, $s1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s2, %pc_lo12(user_types)
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB116_10:
	ori	$a0, $zero, 99
	bltu	$a0, $s3, .LBB116_14
# %bb.11:                               # %get_user_type_hooks.exit
	ext.w.h	$a0, $s3
	slli.d	$a1, $a0, 6
	alsl.d	$a0, $a0, $a1, 4
	add.d	$a0, $s0, $a0
	ld.d	$a1, $a0, 16
	beqz	$a1, .LBB116_13
# %bb.12:
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	jr	$a1
.LBB116_13:                             # %.loopexit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB116_14:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.Lfunc_end116:
	.size	gc_mark, .Lfunc_end116-gc_mark
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI116_0:
	.word	.LBB116_2-.LJTI116_0
	.word	.LBB116_13-.LJTI116_0
	.word	.LBB116_3-.LJTI116_0
	.word	.LBB116_13-.LJTI116_0
	.word	.LBB116_13-.LJTI116_0
	.word	.LBB116_13-.LJTI116_0
	.word	.LBB116_13-.LJTI116_0
	.word	.LBB116_13-.LJTI116_0
	.word	.LBB116_13-.LJTI116_0
	.word	.LBB116_13-.LJTI116_0
	.word	.LBB116_7-.LJTI116_0
	.word	.LBB116_8-.LJTI116_0
	.word	.LBB116_8-.LJTI116_0
	.word	.LBB116_8-.LJTI116_0
	.word	.LBB116_8-.LJTI116_0
	.word	.LBB116_8-.LJTI116_0
	.word	.LBB116_8-.LJTI116_0
	.word	.LBB116_8-.LJTI116_0
	.word	.LBB116_13-.LJTI116_0
	.word	.LBB116_13-.LJTI116_0
	.word	.LBB116_13-.LJTI116_0
                                        # -- End function
	.text
	.globl	mark_locations_array            # -- Begin function mark_locations_array
	.p2align	5
	.type	mark_locations_array,@function
mark_locations_array:                   # @mark_locations_array
# %bb.0:
	blez	$a1, .LBB117_14
# %bb.1:
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
	move	$fp, $a1
	pcalau12i	$s1, %pc_hi20(nheaps)
	ld.d	$a1, $s1, %pc_lo12(nheaps)
	blez	$a1, .LBB117_13
# %bb.2:                                # %.lr.ph.split.preheader
	move	$s0, $a0
	move	$s2, $zero
	pcalau12i	$s3, %pc_hi20(heaps)
	pcalau12i	$s4, %pc_hi20(heap_size)
	lu12i.w	$a0, -349526
	ori	$a2, $a0, 2731
	lu32i.d	$a2, -349526
	lu52i.d	$s5, $a2, -1366
	ori	$a0, $a0, 2730
	lu32i.d	$a0, -349526
	lu52i.d	$s6, $a0, 170
	ori	$s7, $zero, 12
	b	.LBB117_5
.LBB117_3:                              # %looks_pointerp.exit
                                        #   in Loop: Header=BB117_5 Depth=1
	pcaddu18i	$ra, %call36(gc_mark)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(nheaps)
	.p2align	4, , 16
.LBB117_4:                              # %looks_pointerp.exit.thread
                                        #   in Loop: Header=BB117_5 Depth=1
	addi.d	$s2, $s2, 1
	beq	$s2, $fp, .LBB117_13
.LBB117_5:                              # %.lr.ph.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB117_8 Depth 2
	blez	$a1, .LBB117_4
# %bb.6:                                # %.lr.ph.i
                                        #   in Loop: Header=BB117_5 Depth=1
	slli.d	$a0, $s2, 3
	ld.d	$a3, $s4, %pc_lo12(heap_size)
	ldx.d	$a0, $s0, $a0
	ld.d	$a2, $s3, %pc_lo12(heaps)
	slli.d	$a4, $a3, 4
	alsl.d	$a3, $a3, $a4, 3
	move	$a4, $a1
	b	.LBB117_8
	.p2align	4, , 16
.LBB117_7:                              #   in Loop: Header=BB117_8 Depth=2
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	beqz	$a4, .LBB117_4
.LBB117_8:                              #   Parent Loop BB117_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a2, 0
	beqz	$a5, .LBB117_7
# %bb.9:                                #   in Loop: Header=BB117_8 Depth=2
	bltu	$a0, $a5, .LBB117_7
# %bb.10:                               #   in Loop: Header=BB117_8 Depth=2
	add.d	$a6, $a5, $a3
	bgeu	$a0, $a6, .LBB117_7
# %bb.11:                               #   in Loop: Header=BB117_8 Depth=2
	sub.d	$a5, $a0, $a5
	mul.d	$a5, $a5, $s5
	rotri.d	$a5, $a5, 3
	bltu	$s6, $a5, .LBB117_7
# %bb.12:                               #   in Loop: Header=BB117_8 Depth=2
	ld.hu	$a5, $a0, 2
	beq	$a5, $s7, .LBB117_7
	b	.LBB117_3
.LBB117_13:
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
.LBB117_14:                             # %._crit_edge
	ret
.Lfunc_end117:
	.size	mark_locations_array, .Lfunc_end117-mark_locations_array
                                        # -- End function
	.globl	looks_pointerp                  # -- Begin function looks_pointerp
	.p2align	5
	.type	looks_pointerp,@function
looks_pointerp:                         # @looks_pointerp
# %bb.0:
	pcalau12i	$a1, %pc_hi20(nheaps)
	ld.d	$a1, $a1, %pc_lo12(nheaps)
	blez	$a1, .LBB118_9
# %bb.1:                                # %.lr.ph
	pcalau12i	$a2, %pc_hi20(heap_size)
	ld.d	$a3, $a2, %pc_lo12(heap_size)
	pcalau12i	$a2, %pc_hi20(heaps)
	ld.d	$a2, $a2, %pc_lo12(heaps)
	slli.d	$a4, $a3, 4
	alsl.d	$a3, $a3, $a4, 3
	lu12i.w	$a5, -349526
	ori	$a4, $a5, 2731
	lu32i.d	$a4, -349526
	lu52i.d	$a4, $a4, -1366
	ori	$a5, $a5, 2730
	lu32i.d	$a5, -349526
	lu52i.d	$a5, $a5, 170
	ori	$a6, $zero, 12
	b	.LBB118_3
	.p2align	4, , 16
.LBB118_2:                              #   in Loop: Header=BB118_3 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB118_9
.LBB118_3:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a2, 0
	beqz	$a7, .LBB118_2
# %bb.4:                                #   in Loop: Header=BB118_3 Depth=1
	bltu	$a0, $a7, .LBB118_2
# %bb.5:                                #   in Loop: Header=BB118_3 Depth=1
	add.d	$t0, $a7, $a3
	bgeu	$a0, $t0, .LBB118_2
# %bb.6:                                #   in Loop: Header=BB118_3 Depth=1
	sub.d	$a7, $a0, $a7
	mul.d	$a7, $a7, $a4
	rotri.d	$a7, $a7, 3
	bltu	$a5, $a7, .LBB118_2
# %bb.7:                                #   in Loop: Header=BB118_3 Depth=1
	ld.hu	$a7, $a0, 2
	beq	$a7, $a6, .LBB118_2
# %bb.8:
	ori	$a0, $zero, 1
	ret
.LBB118_9:
	move	$a0, $zero
	ret
.Lfunc_end118:
	.size	looks_pointerp, .Lfunc_end118-looks_pointerp
                                        # -- End function
	.globl	user_gc                         # -- Begin function user_gc
	.p2align	5
	.type	user_gc,@function
user_gc:                                # @user_gc
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(gc_kind_copying)
	ld.d	$a1, $a1, %pc_lo12(gc_kind_copying)
	ori	$s4, $zero, 1
	move	$fp, $a0
	bne	$a1, $s4, .LBB119_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB119_2:                              # %gc_kind_check.exit
	pcalau12i	$s1, %pc_hi20(nointerrupt)
	ld.d	$s0, $s1, %pc_lo12(nointerrupt)
	pcalau12i	$s2, %pc_hi20(gc_status_flag)
	ld.d	$s3, $s2, %pc_lo12(gc_status_flag)
	st.d	$s4, $s1, %pc_lo12(nointerrupt)
	pcalau12i	$s4, %pc_hi20(errjmp_ok)
	st.d	$zero, $s4, %pc_lo12(errjmp_ok)
	beqz	$fp, .LBB119_8
# %bb.3:
	ld.hu	$a0, $fp, 2
	beqz	$a0, .LBB119_7
# %bb.4:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB119_6
# %bb.5:                                # %car.exit
	ld.d	$a0, $fp, 8
	sltu	$a0, $zero, $a0
	b	.LBB119_7
.LBB119_6:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB119_7:                              # %.sink.split
	st.d	$a0, $s2, %pc_lo12(gc_status_flag)
.LBB119_8:
	pcaddu18i	$ra, %call36(gc_mark_and_sweep)
	jirl	$ra, $ra, 0
	st.d	$s3, $s2, %pc_lo12(gc_status_flag)
	ori	$a0, $zero, 1
	st.d	$a0, $s4, %pc_lo12(errjmp_ok)
	st.d	$s0, $s1, %pc_lo12(nointerrupt)
	bnez	$s0, .LBB119_11
# %bb.9:
	pcalau12i	$a1, %pc_hi20(interrupt_differed)
	ld.d	$a2, $a1, %pc_lo12(interrupt_differed)
	bne	$a2, $a0, .LBB119_11
# %bb.10:
	st.d	$zero, $a1, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB119_11:                             # %no_interrupt.exit
	move	$a0, $zero
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end119:
	.size	user_gc, .Lfunc_end119-user_gc
                                        # -- End function
	.globl	nactive_heaps                   # -- Begin function nactive_heaps
	.p2align	5
	.type	nactive_heaps,@function
nactive_heaps:                          # @nactive_heaps
# %bb.0:
	pcalau12i	$a0, %pc_hi20(nheaps)
	ld.d	$a1, $a0, %pc_lo12(nheaps)
	blez	$a1, .LBB120_5
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %pc_hi20(heaps)
	ld.d	$a2, $a0, %pc_lo12(heaps)
	move	$a0, $zero
	.p2align	4, , 16
.LBB120_2:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	beqz	$a3, .LBB120_6
# %bb.3:                                #   in Loop: Header=BB120_2 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	bne	$a1, $a0, .LBB120_2
# %bb.4:
	move	$a0, $a1
	ret
.LBB120_5:
	move	$a0, $zero
.LBB120_6:                              # %.critedge
	ret
.Lfunc_end120:
	.size	nactive_heaps, .Lfunc_end120-nactive_heaps
                                        # -- End function
	.globl	freelist_length                 # -- Begin function freelist_length
	.p2align	5
	.type	freelist_length,@function
freelist_length:                        # @freelist_length
# %bb.0:
	pcalau12i	$a0, %pc_hi20(freelist)
	ld.d	$a1, $a0, %pc_lo12(freelist)
	beqz	$a1, .LBB121_3
# %bb.1:                                # %.lr.ph.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB121_2:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 16
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB121_2
	b	.LBB121_4
.LBB121_3:
	move	$a0, $zero
.LBB121_4:                              # %._crit_edge
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	pcalau12i	$a2, %pc_hi20(heap)
	ld.d	$a2, $a2, %pc_lo12(heap)
	sub.d	$a1, $a1, $a2
	srai.d	$a1, $a1, 3
	lu12i.w	$a2, -349526
	ori	$a2, $a2, 2731
	lu32i.d	$a2, -349526
	lu52i.d	$a2, $a2, -1366
	mul.d	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ret
.Lfunc_end121:
	.size	freelist_length, .Lfunc_end121-freelist_length
                                        # -- End function
	.globl	gc_status                       # -- Begin function gc_status
	.p2align	5
	.type	gc_status,@function
gc_status:                              # @gc_status
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(gc_status_flag)
	beqz	$a0, .LBB122_6
# %bb.1:
	move	$a1, $a0
	ld.hu	$a0, $a0, 2
	beqz	$a0, .LBB122_5
# %bb.2:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB122_4
# %bb.3:                                # %car.exit
	ld.d	$a0, $a1, 8
	sltu	$a0, $zero, $a0
	b	.LBB122_5
.LBB122_4:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB122_5:                              # %.sink.split
	st.d	$a0, $fp, %pc_lo12(gc_status_flag)
.LBB122_6:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a1, $a0, %pc_lo12(gc_kind_copying)
	ld.d	$a0, $fp, %pc_lo12(gc_status_flag)
	pcalau12i	$a2, %got_pc_hi20(stdout)
	ld.d	$s0, $a2, %got_pc_lo12(stdout)
	ld.d	$a3, $s0, 0
	pcalau12i	$fp, %pc_hi20(nointerrupt)
	ld.d	$s2, $fp, %pc_lo12(nointerrupt)
	ori	$a2, $zero, 1
	st.d	$a2, $fp, %pc_lo12(nointerrupt)
	bne	$a1, $a2, .LBB122_9
# %bb.7:
	beqz	$a0, .LBB122_11
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	ori	$a1, $zero, 25
	b	.LBB122_12
.LBB122_9:
	pcalau12i	$s1, %pc_hi20(interrupt_differed)
	beqz	$a0, .LBB122_17
# %bb.10:
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	ori	$a1, $zero, 27
	b	.LBB122_18
.LBB122_11:
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	ori	$a1, $zero, 26
.LBB122_12:
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.d	$s2, $fp, %pc_lo12(nointerrupt)
	bnez	$s2, .LBB122_15
# %bb.13:
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	ld.d	$a0, $a0, %pc_lo12(interrupt_differed)
	bne	$a0, $s1, .LBB122_15
# %bb.14:                               # %put_st.exit.sink.split
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	st.d	$zero, $a0, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB122_15:                             # %put_st.exit
	pcalau12i	$a0, %pc_hi20(heap)
	ld.d	$a1, $a0, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_org)
	ld.d	$a2, $a0, %pc_lo12(heap_org)
	pcalau12i	$s1, %pc_hi20(tkbuffer)
	ld.d	$a0, $s1, %pc_lo12(tkbuffer)
	sub.d	$a2, $a1, $a2
	srai.d	$a2, $a2, 3
	lu12i.w	$a3, -349526
	ori	$a3, $a3, 2731
	pcalau12i	$a4, %pc_hi20(heap_end)
	ld.d	$a4, $a4, %pc_lo12(heap_end)
	lu32i.d	$a3, -349526
	lu52i.d	$a3, $a3, -1366
	mul.d	$a2, $a2, $a3
	sub.d	$a1, $a4, $a1
	srai.d	$a1, $a1, 3
	mul.d	$a3, $a1, $a3
	pcalau12i	$a1, %pc_hi20(.L.str.80)
	addi.d	$a1, $a1, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(tkbuffer)
	ld.d	$a1, $s0, 0
	ld.d	$s1, $fp, %pc_lo12(nointerrupt)
	ori	$s0, $zero, 1
	st.d	$s0, $fp, %pc_lo12(nointerrupt)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	st.d	$s1, $fp, %pc_lo12(nointerrupt)
	bnez	$s1, .LBB122_34
# %bb.16:                               # %put_st.exit
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	ld.d	$a0, $a0, %pc_lo12(interrupt_differed)
	beq	$a0, $s0, .LBB122_33
	b	.LBB122_34
.LBB122_17:
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a0, $a0, %pc_lo12(.L.str.82)
	ori	$a1, $zero, 26
.LBB122_18:
	ori	$a2, $zero, 1
	ori	$s3, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.d	$s2, $fp, %pc_lo12(nointerrupt)
	bnez	$s2, .LBB122_21
# %bb.19:
	ld.d	$a0, $s1, %pc_lo12(interrupt_differed)
	bne	$a0, $s3, .LBB122_21
# %bb.20:                               # %put_st.exit15.sink.split
	st.d	$zero, $s1, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB122_21:                             # %put_st.exit15
	pcalau12i	$a0, %pc_hi20(nheaps)
	ld.d	$a3, $a0, %pc_lo12(nheaps)
	blez	$a3, .LBB122_29
# %bb.22:                               # %.lr.ph.i
	pcalau12i	$a0, %pc_hi20(heaps)
	ld.d	$a0, $a0, %pc_lo12(heaps)
	move	$a2, $zero
	.p2align	4, , 16
.LBB122_23:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB122_26
# %bb.24:                               #   in Loop: Header=BB122_23 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 8
	bne	$a3, $a2, .LBB122_23
# %bb.25:
	move	$a2, $a3
.LBB122_26:                             # %nactive_heaps.exit
	pcalau12i	$a0, %pc_hi20(freelist)
	ld.d	$a0, $a0, %pc_lo12(freelist)
	beqz	$a0, .LBB122_30
.LBB122_27:                             # %.lr.ph.i19.preheader
	move	$a1, $zero
	.p2align	4, , 16
.LBB122_28:                             # %.lr.ph.i19
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB122_28
	b	.LBB122_31
.LBB122_29:
	move	$a2, $zero
	pcalau12i	$a0, %pc_hi20(freelist)
	ld.d	$a0, $a0, %pc_lo12(freelist)
	bnez	$a0, .LBB122_27
.LBB122_30:
	move	$a1, $zero
.LBB122_31:                             # %freelist_length.exit
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	pcalau12i	$a4, %pc_hi20(heap)
	ld.d	$a4, $a4, %pc_lo12(heap)
	sub.d	$a0, $a0, $a4
	srai.d	$a0, $a0, 3
	lu12i.w	$a4, -349526
	ori	$a4, $a4, 2731
	lu32i.d	$a4, -349526
	lu52i.d	$a4, $a4, -1366
	mul.d	$a4, $a0, $a4
	pcalau12i	$a0, %pc_hi20(heap_size)
	ld.d	$a6, $a0, %pc_lo12(heap_size)
	pcalau12i	$s2, %pc_hi20(tkbuffer)
	ld.d	$a0, $s2, %pc_lo12(tkbuffer)
	add.d	$a5, $a4, $a1
	mul.d	$a1, $a6, $a2
	sub.d	$a4, $a1, $a5
	pcalau12i	$a1, %pc_hi20(.L.str.83)
	addi.d	$a1, $a1, %pc_lo12(.L.str.83)
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(tkbuffer)
	ld.d	$a1, $s0, 0
	ld.d	$s2, $fp, %pc_lo12(nointerrupt)
	ori	$s0, $zero, 1
	st.d	$s0, $fp, %pc_lo12(nointerrupt)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	st.d	$s2, $fp, %pc_lo12(nointerrupt)
	bnez	$s2, .LBB122_34
# %bb.32:                               # %freelist_length.exit
	ld.d	$a0, $s1, %pc_lo12(interrupt_differed)
	bne	$a0, $s0, .LBB122_34
.LBB122_33:                             # %put_st.exit12.sink.split
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	st.d	$zero, $a0, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB122_34:                             # %put_st.exit12
	move	$a0, $zero
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end122:
	.size	gc_status, .Lfunc_end122-gc_status
                                        # -- End function
	.globl	gc_info                         # -- Begin function gc_info
	.p2align	5
	.type	gc_info,@function
gc_info:                                # @gc_info
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bltu	$a1, $a0, .LBB123_18
# %bb.1:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI123_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI123_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB123_2:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	pcalau12i	$a1, %pc_hi20(sym_t)
	ld.d	$a1, $a1, %pc_lo12(sym_t)
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a1, $a0
	b	.LBB123_45
.LBB123_3:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a1, $a0, %pc_lo12(gc_kind_copying)
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB123_19
# %bb.4:
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a2, $a0, %pc_lo12(heap_end)
	pcalau12i	$a0, %pc_hi20(heap)
	ld.d	$a0, $a0, %pc_lo12(heap)
	sub.d	$a3, $a2, $a0
	srai.d	$a3, $a3, 3
	lu12i.w	$a4, -349526
	ori	$a4, $a4, 2731
	lu32i.d	$a4, -349526
	lu52i.d	$a4, $a4, -1366
	mul.d	$a3, $a3, $a4
	b	.LBB123_32
.LBB123_5:
	pcalau12i	$a0, %pc_hi20(nheaps)
	ld.d	$a0, $a0, %pc_lo12(nheaps)
	pcalau12i	$a1, %pc_hi20(inums_dim)
	ld.d	$a2, $a1, %pc_lo12(inums_dim)
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs0, $fa0
	blez	$a2, .LBB123_26
# %bb.6:
	ftintrz.l.d	$fa0, $fs0
	movfr2gr.d	$a1, $fa0
	blt	$a1, $a2, .LBB123_9
	b	.LBB123_26
.LBB123_7:
	pcalau12i	$a0, %pc_hi20(heap_size)
	ld.d	$a0, $a0, %pc_lo12(heap_size)
	pcalau12i	$a1, %pc_hi20(inums_dim)
	ld.d	$a2, $a1, %pc_lo12(inums_dim)
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs0, $fa0
	blez	$a2, .LBB123_26
# %bb.8:
	ftintrz.l.d	$fa0, $fs0
	movfr2gr.d	$a1, $fa0
	bge	$a1, $a2, .LBB123_26
.LBB123_9:
	bltz	$a0, .LBB123_26
# %bb.10:
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	fcmp.cune.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB123_26
# %bb.11:
	pcalau12i	$a0, %pc_hi20(inums)
	ld.d	$a0, $a0, %pc_lo12(inums)
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	b	.LBB123_45
.LBB123_12:
	pcalau12i	$a0, %pc_hi20(nheaps)
	ld.d	$a0, $a0, %pc_lo12(nheaps)
	blez	$a0, .LBB123_22
# %bb.13:                               # %.lr.ph.i
	pcalau12i	$a1, %pc_hi20(heaps)
	ld.d	$a2, $a1, %pc_lo12(heaps)
	move	$a1, $zero
	.p2align	4, , 16
.LBB123_14:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	beqz	$a3, .LBB123_17
# %bb.15:                               #   in Loop: Header=BB123_14 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	bne	$a0, $a1, .LBB123_14
# %bb.16:
	move	$a1, $a0
.LBB123_17:                             # %nactive_heaps.exit.loopexit
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(inums_dim)
	ld.d	$a1, $a0, %pc_lo12(inums_dim)
	bgtz	$a1, .LBB123_23
	b	.LBB123_26
.LBB123_18:
	move	$a0, $zero
	b	.LBB123_45
.LBB123_19:
	pcalau12i	$a0, %pc_hi20(freelist)
	ld.d	$a0, $a0, %pc_lo12(freelist)
	beqz	$a0, .LBB123_30
# %bb.20:                               # %.lr.ph.i17.preheader
	move	$a3, $zero
	.p2align	4, , 16
.LBB123_21:                             # %.lr.ph.i17
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	addi.d	$a3, $a3, 1
	bnez	$a0, .LBB123_21
	b	.LBB123_31
.LBB123_22:
	movgr2fr.d	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(inums_dim)
	ld.d	$a1, $a0, %pc_lo12(inums_dim)
	blez	$a1, .LBB123_26
.LBB123_23:
	ftintrz.l.d	$fa0, $fs0
	movfr2gr.d	$a0, $fa0
	bge	$a0, $a1, .LBB123_26
# %bb.24:
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fcmp.cune.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB123_26
# %bb.25:
	pcalau12i	$a1, %pc_hi20(inums)
	ld.d	$a1, $a1, %pc_lo12(inums)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	b	.LBB123_45
.LBB123_26:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB123_41
# %bb.27:
	pcalau12i	$fp, %pc_hi20(heap)
	ld.d	$a0, $fp, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB123_29
# %bb.28:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB123_29:
	addi.d	$a1, $a0, 24
	st.d	$a1, $fp, %pc_lo12(heap)
	b	.LBB123_44
.LBB123_30:
	move	$a3, $zero
.LBB123_31:                             # %freelist_length.exit
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a2, $a0, %pc_lo12(heap_end)
	pcalau12i	$a0, %pc_hi20(heap)
	ld.d	$a0, $a0, %pc_lo12(heap)
	sub.d	$a4, $a2, $a0
	srai.d	$a4, $a4, 3
	lu12i.w	$a5, -349526
	ori	$a5, $a5, 2731
	lu32i.d	$a5, -349526
	lu52i.d	$a5, $a5, -1366
	mul.d	$a4, $a4, $a5
	add.d	$a3, $a4, $a3
.LBB123_32:
	pcalau12i	$a4, %pc_hi20(inums_dim)
	ld.d	$a5, $a4, %pc_lo12(inums_dim)
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fs0, $fa0
	blez	$a5, .LBB123_37
# %bb.33:
	ftintrz.l.d	$fa0, $fs0
	movfr2gr.d	$a4, $fa0
	bge	$a4, $a5, .LBB123_37
# %bb.34:
	bltz	$a3, .LBB123_37
# %bb.35:
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	fcmp.cune.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB123_37
# %bb.36:
	pcalau12i	$a0, %pc_hi20(inums)
	ld.d	$a0, $a0, %pc_lo12(inums)
	slli.d	$a1, $a4, 3
	ldx.d	$a0, $a0, $a1
	b	.LBB123_45
.LBB123_37:
	ori	$a3, $zero, 1
	bne	$a1, $a3, .LBB123_41
# %bb.38:
	bltu	$a0, $a2, .LBB123_40
# %bb.39:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$fp, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB123_40:
	addi.d	$a1, $a0, 24
	pcalau12i	$a2, %pc_hi20(heap)
	st.d	$a1, $a2, %pc_lo12(heap)
	b	.LBB123_44
.LBB123_41:
	pcalau12i	$fp, %pc_hi20(freelist)
	ld.d	$a0, $fp, %pc_lo12(freelist)
	bnez	$a0, .LBB123_43
# %bb.42:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(freelist)
.LBB123_43:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $fp, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB123_44:
	lu12i.w	$a1, 32
	st.w	$a1, $a0, 0
	fst.d	$fs0, $a0, 8
.LBB123_45:                             # %flocons.exit
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end123:
	.size	gc_info, .Lfunc_end123-gc_info
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI123_0:
	.word	.LBB123_2-.LJTI123_0
	.word	.LBB123_12-.LJTI123_0
	.word	.LBB123_5-.LJTI123_0
	.word	.LBB123_7-.LJTI123_0
	.word	.LBB123_3-.LJTI123_0
                                        # -- End function
	.text
	.globl	leval_args                      # -- Begin function leval_args
	.p2align	5
	.type	leval_args,@function
leval_args:                             # @leval_args
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
	beqz	$a0, .LBB124_7
# %bb.1:
	move	$s0, $a1
	move	$s1, $a0
	ld.hu	$a0, $a0, 2
	ori	$fp, $zero, 1
	beq	$a0, $fp, .LBB124_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a0, $a0, %pc_lo12(.L.str.84)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB124_3:
	ld.d	$a0, $s1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcalau12i	$s4, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $s4, %pc_lo12(gc_kind_copying)
	pcalau12i	$s5, %pc_hi20(freelist)
	pcalau12i	$s6, %pc_hi20(gc_cells_allocated)
	pcalau12i	$s7, %pc_hi20(heap)
	pcalau12i	$s8, %pc_hi20(heap_end)
	bne	$a0, $fp, .LBB124_8
# %bb.4:
	ld.d	$s2, $s7, %pc_lo12(heap)
	ld.d	$a0, $s8, %pc_lo12(heap_end)
	bltu	$s2, $a0, .LBB124_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB124_6:
	addi.d	$a0, $s2, 24
	st.d	$a0, $s7, %pc_lo12(heap)
	b	.LBB124_11
.LBB124_7:
	move	$s2, $zero
	b	.LBB124_24
.LBB124_8:
	ld.d	$s2, $s5, %pc_lo12(freelist)
	bnez	$s2, .LBB124_10
# %bb.9:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s5, %pc_lo12(freelist)
.LBB124_10:
	ld.d	$a0, $s2, 16
	ld.d	$a1, $s6, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s5, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s6, %pc_lo12(gc_cells_allocated)
.LBB124_11:                             # %cons.exit
	lu12i.w	$a0, 16
	st.w	$a0, $s2, 0
	st.d	$s3, $s2, 8
	st.d	$zero, $s2, 16
	ld.d	$fp, $s1, 16
	beqz	$fp, .LBB124_24
# %bb.12:                               # %.lr.ph.preheader
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	ori	$s8, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	b	.LBB124_15
	.p2align	4, , 16
.LBB124_13:                             #   in Loop: Header=BB124_15 Depth=1
	addi.d	$a0, $s1, 24
	st.d	$a0, $s7, %pc_lo12(heap)
.LBB124_14:                             # %cons.exit26
                                        #   in Loop: Header=BB124_15 Depth=1
	lu12i.w	$a0, 16
	st.w	$a0, $s1, 0
	st.d	$s3, $s1, 8
	st.d	$zero, $s1, 16
	st.d	$s1, $s2, 16
	ld.d	$fp, $fp, 16
	move	$s2, $s1
	beqz	$fp, .LBB124_23
.LBB124_15:                             # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $fp, 2
	bne	$a0, $s8, .LBB124_22
# %bb.16:                               #   in Loop: Header=BB124_15 Depth=1
	ld.d	$a0, $fp, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, %pc_lo12(gc_kind_copying)
	move	$s3, $a0
	bne	$a1, $s8, .LBB124_19
# %bb.17:                               #   in Loop: Header=BB124_15 Depth=1
	ld.d	$s1, $s7, %pc_lo12(heap)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s1, $a0, .LBB124_13
# %bb.18:                               #   in Loop: Header=BB124_15 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	b	.LBB124_13
	.p2align	4, , 16
.LBB124_19:                             #   in Loop: Header=BB124_15 Depth=1
	ld.d	$s1, $s5, %pc_lo12(freelist)
	bnez	$s1, .LBB124_21
# %bb.20:                               #   in Loop: Header=BB124_15 Depth=1
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s5, %pc_lo12(freelist)
.LBB124_21:                             #   in Loop: Header=BB124_15 Depth=1
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s6, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s5, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s6, %pc_lo12(gc_cells_allocated)
	b	.LBB124_14
.LBB124_22:                             # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a0, $a0, %pc_lo12(.L.str.84)
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB124_23:                             # %.loopexit
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
.LBB124_24:                             # %.loopexit
	move	$a0, $s2
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
.Lfunc_end124:
	.size	leval_args, .Lfunc_end124-leval_args
                                        # -- End function
	.globl	extend_env                      # -- Begin function extend_env
	.p2align	5
	.type	extend_env,@function
extend_env:                             # @extend_env
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	lu12i.w	$s2, 16
	beqz	$a1, .LBB125_6
# %bb.1:
	ld.hu	$a0, $s1, 2
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB125_6
# %bb.2:
	pcalau12i	$s8, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $s8, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	pcalau12i	$s5, %pc_hi20(freelist)
	pcalau12i	$s4, %pc_hi20(gc_cells_allocated)
	pcalau12i	$s6, %pc_hi20(heap)
	pcalau12i	$s3, %pc_hi20(heap_end)
	bne	$a0, $a1, .LBB125_20
# %bb.3:
	ld.d	$s7, $s6, %pc_lo12(heap)
	ld.d	$a0, $s3, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB125_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB125_5:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s6, %pc_lo12(heap)
	b	.LBB125_23
.LBB125_6:                              # %.critedge
	pcalau12i	$s4, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $s4, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB125_10
# %bb.7:
	pcalau12i	$s5, %pc_hi20(heap)
	ld.d	$s3, $s5, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s3, $a0, .LBB125_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB125_9:
	addi.d	$a0, $s3, 24
	st.d	$a0, $s5, %pc_lo12(heap)
	b	.LBB125_13
.LBB125_10:
	pcalau12i	$s5, %pc_hi20(freelist)
	ld.d	$s3, $s5, %pc_lo12(freelist)
	bnez	$s3, .LBB125_12
# %bb.11:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s5, %pc_lo12(freelist)
.LBB125_12:
	ld.d	$a0, $s3, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s5, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB125_13:                             # %cons.exit25
	st.w	$s2, $s3, 0
	ld.d	$a0, $s4, %pc_lo12(gc_kind_copying)
	st.d	$s1, $s3, 8
	ori	$a1, $zero, 1
	st.d	$s0, $s3, 16
	bne	$a0, $a1, .LBB125_17
# %bb.14:
	pcalau12i	$s0, %pc_hi20(heap)
	ld.d	$a0, $s0, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB125_16
# %bb.15:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s1
.LBB125_16:
	addi.d	$a1, $a0, 24
	st.d	$a1, $s0, %pc_lo12(heap)
	b	.LBB125_44
.LBB125_17:
	pcalau12i	$s0, %pc_hi20(freelist)
	ld.d	$a0, $s0, %pc_lo12(freelist)
	bnez	$a0, .LBB125_19
# %bb.18:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(freelist)
.LBB125_19:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $s0, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
	b	.LBB125_44
.LBB125_20:
	ld.d	$s7, $s5, %pc_lo12(freelist)
	bnez	$s7, .LBB125_22
# %bb.21:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s5, %pc_lo12(freelist)
.LBB125_22:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s4, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s5, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s4, %pc_lo12(gc_cells_allocated)
.LBB125_23:                             # %cons.exit
	st.w	$s2, $s7, 0
	ld.d	$a0, $s8, %pc_lo12(gc_kind_copying)
	st.d	$s1, $s7, 8
	ori	$a1, $zero, 1
	st.d	$zero, $s7, 16
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	bne	$a0, $a1, .LBB125_27
# %bb.24:
	ld.d	$s1, $s6, %pc_lo12(heap)
	ld.d	$a0, $s3, %pc_lo12(heap_end)
	bltu	$s1, $a0, .LBB125_26
# %bb.25:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB125_26:
	addi.d	$a0, $s1, 24
	st.d	$a0, $s6, %pc_lo12(heap)
	b	.LBB125_30
.LBB125_27:
	ld.d	$s1, $s5, %pc_lo12(freelist)
	bnez	$s1, .LBB125_29
# %bb.28:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s5, %pc_lo12(freelist)
.LBB125_29:
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s4, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s5, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s4, %pc_lo12(gc_cells_allocated)
.LBB125_30:                             # %cons.exit13
	move	$fp, $s3
	st.w	$s2, $s1, 0
	ld.d	$a0, $s8, %pc_lo12(gc_kind_copying)
	st.d	$s0, $s1, 8
	ori	$a1, $zero, 1
	st.d	$zero, $s1, 16
	bne	$a0, $a1, .LBB125_34
# %bb.31:
	ld.d	$s3, $s6, %pc_lo12(heap)
	ld.d	$a0, $fp, %pc_lo12(heap_end)
	bltu	$s3, $a0, .LBB125_33
# %bb.32:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB125_33:
	addi.d	$a0, $s3, 24
	st.d	$a0, $s6, %pc_lo12(heap)
	b	.LBB125_37
.LBB125_34:
	ld.d	$s3, $s5, %pc_lo12(freelist)
	bnez	$s3, .LBB125_36
# %bb.35:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s5, %pc_lo12(freelist)
.LBB125_36:
	ld.d	$a0, $s3, 16
	ld.d	$a1, $s4, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s5, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s4, %pc_lo12(gc_cells_allocated)
.LBB125_37:                             # %cons.exit17
	st.w	$s2, $s3, 0
	ld.d	$a0, $s8, %pc_lo12(gc_kind_copying)
	st.d	$s7, $s3, 8
	ori	$a1, $zero, 1
	st.d	$s1, $s3, 16
	bne	$a0, $a1, .LBB125_41
# %bb.38:
	ld.d	$a0, $s6, %pc_lo12(heap)
	ld.d	$a1, $fp, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB125_40
# %bb.39:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB125_40:
	addi.d	$a1, $a0, 24
	st.d	$a1, $s6, %pc_lo12(heap)
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	b	.LBB125_44
.LBB125_41:
	ld.d	$a0, $s5, %pc_lo12(freelist)
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	bnez	$a0, .LBB125_43
# %bb.42:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(freelist)
.LBB125_43:
	ld.d	$a1, $a0, 16
	ld.d	$a2, $s4, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $s5, %pc_lo12(freelist)
	addi.d	$a1, $a2, 1
	st.d	$a1, $s4, %pc_lo12(gc_cells_allocated)
.LBB125_44:                             # %cons.exit21
	st.w	$s2, $a0, 0
	st.d	$s3, $a0, 8
	st.d	$fp, $a0, 16
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end125:
	.size	extend_env, .Lfunc_end125-extend_env
                                        # -- End function
	.globl	set_eval_hooks                  # -- Begin function set_eval_hooks
	.p2align	5
	.type	set_eval_hooks,@function
set_eval_hooks:                         # @set_eval_hooks
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(user_types)
	ld.d	$s1, $s2, %pc_lo12(user_types)
	move	$fp, $a1
	move	$s0, $a0
	bnez	$s1, .LBB126_4
# %bb.1:
	lu12i.w	$a0, 1
	ori	$a1, $a0, 3904
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB126_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB126_3:                              # %must_malloc.exit.i
	st.d	$s1, $s2, %pc_lo12(user_types)
.LBB126_4:
	ori	$a0, $zero, 99
	bltu	$a0, $s0, .LBB126_6
# %bb.5:                                # %get_user_type_hooks.exit
	slli.d	$a0, $s0, 6
	alsl.d	$a0, $s0, $a0, 4
	add.d	$a0, $s1, $a0
	st.d	$fp, $a0, 40
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB126_6:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.Lfunc_end126:
	.size	set_eval_hooks, .Lfunc_end126-set_eval_hooks
                                        # -- End function
	.globl	err_closure_code                # -- Begin function err_closure_code
	.p2align	5
	.type	err_closure_code,@function
err_closure_code:                       # @err_closure_code
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end127:
	.size	err_closure_code, .Lfunc_end127-err_closure_code
                                        # -- End function
	.globl	lapply                          # -- Begin function lapply
	.p2align	5
	.type	lapply,@function
lapply:                                 # @lapply
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(stack_limit_ptr)
	ld.d	$a2, $a2, %pc_lo12(stack_limit_ptr)
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$a0, $sp, 16
	st.d	$s0, $sp, 16
	bgeu	$a0, $a2, .LBB128_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB128_2:
	beqz	$s0, .LBB128_6
# %bb.3:
	ld.hu	$a0, $s0, 2
	addi.d	$a1, $a0, -3
	ori	$a2, $zero, 18
	bltu	$a2, $a1, .LBB128_45
# %bb.4:
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI128_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI128_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB128_5:
	ld.d	$a0, $s0, 16
	jirl	$ra, $a0, 0
	b	.LBB128_15
.LBB128_6:
	move	$s1, $zero
	pcalau12i	$s2, %pc_hi20(user_types)
	ld.d	$fp, $s2, %pc_lo12(user_types)
	bnez	$fp, .LBB128_10
.LBB128_7:
	lu12i.w	$a0, 1
	ori	$a1, $a0, 3904
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB128_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB128_9:                              # %must_malloc.exit.i
	st.d	$fp, $s2, %pc_lo12(user_types)
.LBB128_10:
	ori	$a0, $zero, 99
	bltu	$a0, $s1, .LBB128_231
# %bb.11:                               # %get_user_type_hooks.exit
	slli.d	$a0, $s1, 6
	alsl.d	$a0, $s1, $a0, 4
	add.d	$a0, $fp, $a0
	ld.d	$a0, $a0, 40
	beqz	$a0, .LBB128_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a0, $a0, %pc_lo12(.L.str.91)
	b	.LBB128_14
.LBB128_13:
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
.LBB128_14:                             # %.critedge
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB128_15:                             # %.critedge
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB128_16:
	ld.d	$s0, $s0, 16
	beqz	$fp, .LBB128_46
# %bb.17:
	ld.hu	$a0, $fp, 2
	beqz	$a0, .LBB128_46
# %bb.18:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB128_53
# %bb.19:                               # %.thread438
	ld.d	$a0, $fp, 8
	b	.LBB128_55
.LBB128_20:
	ld.d	$s0, $s0, 16
	beqz	$fp, .LBB128_97
# %bb.21:
	ld.hu	$a0, $fp, 2
	beqz	$a0, .LBB128_97
# %bb.22:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB128_59
# %bb.23:                               # %.thread393
	ld.d	$a0, $fp, 8
	b	.LBB128_61
.LBB128_24:
	ld.d	$s1, $s0, 16
	beqz	$fp, .LBB128_52
# %bb.25:
	ld.hu	$a0, $fp, 2
	beqz	$a0, .LBB128_100
# %bb.26:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB128_65
# %bb.27:                               # %.thread399
	ld.d	$a0, $fp, 8
	b	.LBB128_68
.LBB128_28:
	ld.d	$s0, $s0, 16
	beqz	$fp, .LBB128_47
# %bb.29:
	ld.hu	$a0, $fp, 2
	beqz	$a0, .LBB128_47
# %bb.30:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB128_72
# %bb.31:                               # %.thread406
	ld.d	$a0, $fp, 8
	b	.LBB128_74
.LBB128_32:
	ld.d	$a1, $s0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB128_15
.LBB128_33:
	ld.d	$s0, $s0, 16
	beqz	$fp, .LBB128_79
# %bb.34:
	ld.hu	$a0, $fp, 2
	beqz	$a0, .LBB128_79
# %bb.35:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB128_78
# %bb.36:
	ld.d	$a0, $fp, 8
	jirl	$ra, $s0, 0
	b	.LBB128_15
.LBB128_37:
	ld.d	$s0, $s0, 16
	beqz	$fp, .LBB128_49
# %bb.38:
	ld.hu	$a0, $fp, 2
	beqz	$a0, .LBB128_49
# %bb.39:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB128_80
# %bb.40:                               # %.thread415
	ld.d	$a0, $fp, 8
	b	.LBB128_82
.LBB128_41:
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB128_51
# %bb.42:
	ld.hu	$a1, $a0, 2
	addi.d	$a1, $a1, -1
	ori	$a2, $zero, 19
	bltu	$a2, $a1, .LBB128_51
# %bb.43:
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI128_1)
	addi.d	$a2, $a2, %pc_lo12(.LJTI128_1)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB128_44:
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 16
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 8
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(extend_env)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	b	.LBB128_15
.LBB128_45:
	ext.w.h	$s1, $a0
	pcalau12i	$s2, %pc_hi20(user_types)
	ld.d	$fp, $s2, %pc_lo12(user_types)
	bnez	$fp, .LBB128_10
	b	.LBB128_7
.LBB128_46:
	move	$a3, $zero
	move	$a2, $zero
	move	$a0, $zero
	move	$a1, $zero
	move	$a4, $zero
	jirl	$ra, $s0, 0
	b	.LBB128_15
.LBB128_47:
	move	$a1, $zero
	move	$a0, $zero
.LBB128_48:                             # %car.exit71
	move	$a2, $zero
	jirl	$ra, $s0, 0
	b	.LBB128_15
.LBB128_49:
	move	$a1, $zero
	move	$a0, $zero
.LBB128_50:
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $s0, 0
	b	.LBB128_15
.LBB128_51:                             # %.thread355
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	b	.LBB128_14
.LBB128_52:                             # %car.exit55
	move	$a0, $zero
	move	$a1, $zero
	jirl	$ra, $s1, 0
	b	.LBB128_15
.LBB128_53:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $fp, 2
	move	$a0, $zero
	beqz	$a1, .LBB128_92
# %bb.54:
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB128_94
.LBB128_55:                             # %cdr.exit95
	ld.d	$a1, $fp, 16
	beqz	$a1, .LBB128_116
# %bb.56:
	ld.hu	$a2, $a1, 2
	beqz	$a2, .LBB128_116
# %bb.57:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB128_115
# %bb.58:
	ld.d	$a1, $a1, 8
	b	.LBB128_117
.LBB128_59:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $fp, 2
	move	$a0, $zero
	beqz	$a1, .LBB128_93
# %bb.60:
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB128_96
.LBB128_61:                             # %cdr.exit
	ld.d	$a1, $fp, 16
	beqz	$a1, .LBB128_98
# %bb.62:
	ld.hu	$a2, $a1, 2
	beqz	$a2, .LBB128_98
# %bb.63:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB128_128
# %bb.64:
	ld.d	$a1, $a1, 8
	jirl	$ra, $s0, 0
	b	.LBB128_15
.LBB128_65:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $fp, 2
	beqz	$a0, .LBB128_100
# %bb.66:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB128_99
# %bb.67:
	move	$a0, $zero
.LBB128_68:                             # %cdr.exit53
	ld.d	$a1, $fp, 16
	beqz	$a1, .LBB128_101
# %bb.69:
	ld.hu	$a2, $a1, 2
	beqz	$a2, .LBB128_101
# %bb.70:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB128_129
# %bb.71:
	ld.d	$a1, $a1, 8
	b	.LBB128_102
.LBB128_72:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $fp, 2
	move	$a0, $zero
	beqz	$a1, .LBB128_95
# %bb.73:
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB128_113
.LBB128_74:                             # %cdr.exit63
	ld.d	$a1, $fp, 16
	beqz	$a1, .LBB128_131
# %bb.75:
	ld.hu	$a2, $a1, 2
	beqz	$a2, .LBB128_131
# %bb.76:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB128_130
# %bb.77:
	ld.d	$a1, $a1, 8
	b	.LBB128_132
.LBB128_78:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB128_79:                             # %car.exit
	move	$a0, $zero
	jirl	$ra, $s0, 0
	b	.LBB128_15
.LBB128_80:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $fp, 2
	move	$a0, $zero
	beqz	$a1, .LBB128_112
# %bb.81:
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB128_114
.LBB128_82:                             # %cdr.exit75
	ld.d	$a1, $fp, 16
	beqz	$a1, .LBB128_143
# %bb.83:
	ld.hu	$a2, $a1, 2
	beqz	$a2, .LBB128_143
# %bb.84:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB128_142
# %bb.85:
	ld.d	$a1, $a1, 8
	b	.LBB128_144
.LBB128_86:
	ld.d	$s3, $a0, 16
	ld.d	$s0, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s2
	jirl	$ra, $s3, 0
	b	.LBB128_15
.LBB128_87:
	ld.d	$a1, $a0, 16
	ld.d	$a0, $s0, 8
	jirl	$ra, $a1, 0
	b	.LBB128_15
.LBB128_88:
	ld.d	$s4, $a0, 16
	ld.d	$s0, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s3
	jirl	$ra, $s4, 0
	b	.LBB128_15
.LBB128_89:
	ld.d	$s1, $a0, 16
	ld.d	$s0, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	jirl	$ra, $s1, 0
	b	.LBB128_15
.LBB128_90:
	ld.d	$s2, $a0, 16
	ld.d	$s0, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $s1
	jirl	$ra, $s2, 0
	b	.LBB128_15
.LBB128_91:
	ld.d	$s1, $a0, 16
	ld.d	$a0, $s0, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	jirl	$ra, $s1, 0
	b	.LBB128_15
.LBB128_92:
	move	$a3, $a0
	move	$a2, $a0
	move	$a1, $a0
	move	$a4, $a0
	jirl	$ra, $s0, 0
	b	.LBB128_15
.LBB128_93:
	move	$a1, $a0
	jirl	$ra, $s0, 0
	b	.LBB128_15
.LBB128_94:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB128_116
.LBB128_95:
	move	$a1, $a0
	move	$a2, $a0
	jirl	$ra, $s0, 0
	b	.LBB128_15
.LBB128_96:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB128_97:
	move	$a0, $zero
.LBB128_98:                             # %car.exit49
	move	$a1, $zero
	jirl	$ra, $s0, 0
	b	.LBB128_15
.LBB128_99:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB128_100:                            # %car.exit55.thread138
	move	$a0, $zero
.LBB128_101:
	move	$a1, $zero
.LBB128_102:
	jirl	$ra, $s1, 0
	ld.hu	$a1, $fp, 2
	beqz	$a1, .LBB128_15
# %bb.103:
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB128_111
# %bb.104:                              # %cdr.exit57
	ld.d	$a1, $fp, 16
	beqz	$a1, .LBB128_15
# %bb.105:
	ld.hu	$a2, $a1, 2
	beqz	$a2, .LBB128_15
# %bb.106:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB128_155
# %bb.107:                              # %cdr.exit59
	ld.d	$fp, $a1, 16
	beqz	$fp, .LBB128_15
# %bb.108:                              # %.lr.ph.preheader
	ori	$s1, $zero, 1
.LBB128_109:                            # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a1, $fp, 2
	bne	$a1, $s1, .LBB128_15
# %bb.110:                              #   in Loop: Header=BB128_109 Depth=1
	ld.d	$a2, $s0, 16
	ld.d	$a1, $fp, 8
	jirl	$ra, $a2, 0
	ld.d	$fp, $fp, 16
	bnez	$fp, .LBB128_109
	b	.LBB128_15
.LBB128_111:
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB128_15
.LBB128_112:
	move	$a1, $a0
	move	$a2, $a0
	move	$a3, $a0
	jirl	$ra, $s0, 0
	b	.LBB128_15
.LBB128_113:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB128_131
.LBB128_114:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB128_143
.LBB128_115:
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s1
.LBB128_116:                            # %car.exit97.thread
	move	$a1, $zero
.LBB128_117:                            # %car.exit97.thread
	ld.hu	$a2, $fp, 2
	beqz	$a2, .LBB128_126
# %bb.118:                              # %car.exit97.thread
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB128_127
# %bb.119:                              # %cdr.exit99
	ld.d	$a2, $fp, 16
	beqz	$a2, .LBB128_154
# %bb.120:
	ld.hu	$a3, $a2, 2
	beqz	$a3, .LBB128_160
# %bb.121:
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB128_157
# %bb.122:                              # %cdr.exit101
	ld.d	$a2, $a2, 16
	beqz	$a2, .LBB128_160
# %bb.123:
	ld.hu	$a3, $a2, 2
	beqz	$a3, .LBB128_160
# %bb.124:
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB128_220
# %bb.125:
	ld.d	$a2, $a2, 8
	b	.LBB128_161
.LBB128_126:
	move	$a3, $zero
	move	$a2, $zero
	move	$a4, $zero
	jirl	$ra, $s0, 0
	b	.LBB128_15
.LBB128_127:
	pcalau12i	$a2, %pc_hi20(.L.str.28)
	addi.d	$a2, $a2, %pc_lo12(.L.str.28)
	move	$s1, $a0
	move	$a0, $a2
	move	$s2, $a1
	move	$a1, $fp
	b	.LBB128_159
.LBB128_128:
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB128_98
.LBB128_129:
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	move	$s2, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	b	.LBB128_101
.LBB128_130:
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s1
.LBB128_131:                            # %car.exit65.thread
	move	$a1, $zero
.LBB128_132:                            # %car.exit65.thread
	ld.hu	$a2, $fp, 2
	beqz	$a2, .LBB128_48
# %bb.133:                              # %car.exit65.thread
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB128_141
# %bb.134:                              # %cdr.exit67
	ld.d	$a2, $fp, 16
	beqz	$a2, .LBB128_48
# %bb.135:
	ld.hu	$a3, $a2, 2
	beqz	$a3, .LBB128_48
# %bb.136:
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB128_198
# %bb.137:                              # %cdr.exit69
	ld.d	$a2, $a2, 16
	beqz	$a2, .LBB128_48
# %bb.138:
	ld.hu	$a3, $a2, 2
	beqz	$a3, .LBB128_48
# %bb.139:
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB128_221
# %bb.140:
	ld.d	$a2, $a2, 8
	jirl	$ra, $s0, 0
	b	.LBB128_15
.LBB128_141:
	pcalau12i	$a2, %pc_hi20(.L.str.28)
	addi.d	$a2, $a2, %pc_lo12(.L.str.28)
	move	$s1, $a0
	move	$a0, $a2
	move	$s2, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	move	$a0, $s1
	b	.LBB128_48
.LBB128_142:
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s1
.LBB128_143:                            # %car.exit77.thread
	move	$a1, $zero
.LBB128_144:                            # %car.exit77.thread
	ld.hu	$a2, $fp, 2
	beqz	$a2, .LBB128_50
# %bb.145:                              # %car.exit77.thread
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB128_153
# %bb.146:                              # %cdr.exit79
	ld.d	$a2, $fp, 16
	beqz	$a2, .LBB128_156
# %bb.147:
	ld.hu	$a3, $a2, 2
	beqz	$a3, .LBB128_203
# %bb.148:
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB128_200
# %bb.149:                              # %cdr.exit81
	ld.d	$a2, $a2, 16
	beqz	$a2, .LBB128_203
# %bb.150:
	ld.hu	$a3, $a2, 2
	beqz	$a3, .LBB128_203
# %bb.151:
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB128_222
# %bb.152:
	ld.d	$a2, $a2, 8
	b	.LBB128_204
.LBB128_153:
	pcalau12i	$a2, %pc_hi20(.L.str.28)
	addi.d	$a2, $a2, %pc_lo12(.L.str.28)
	move	$s1, $a0
	move	$a0, $a2
	move	$s2, $a1
	move	$a1, $fp
	b	.LBB128_202
.LBB128_154:
	move	$a2, $zero
	b	.LBB128_163
.LBB128_155:
	pcalau12i	$a2, %pc_hi20(.L.str.28)
	addi.d	$a2, $a2, %pc_lo12(.L.str.28)
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB128_15
.LBB128_156:
	move	$a2, $zero
	b	.LBB128_206
.LBB128_157:
	pcalau12i	$a3, %pc_hi20(.L.str.28)
	addi.d	$a3, $a3, %pc_lo12(.L.str.28)
.LBB128_158:                            # %car.exit103.thread
	move	$s1, $a0
	move	$a0, $a3
	move	$s2, $a1
	move	$a1, $a2
.LBB128_159:                            # %car.exit103.thread
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	move	$a0, $s1
.LBB128_160:                            # %car.exit103.thread
	move	$a2, $zero
.LBB128_161:                            # %car.exit103.thread
	ld.hu	$a3, $fp, 2
	beqz	$a3, .LBB128_174
# %bb.162:                              # %car.exit103.thread
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB128_175
.LBB128_163:                            # %cdr.exit105
	ld.d	$a3, $fp, 16
	beqz	$a3, .LBB128_173
# %bb.164:
	ld.hu	$a4, $a3, 2
	beqz	$a4, .LBB128_173
# %bb.165:
	ori	$a5, $zero, 1
	bne	$a4, $a5, .LBB128_176
# %bb.166:                              # %cdr.exit107
	ld.d	$a3, $a3, 16
	beqz	$a3, .LBB128_173
# %bb.167:
	ld.hu	$a4, $a3, 2
	beqz	$a4, .LBB128_173
# %bb.168:
	ori	$a5, $zero, 1
	bne	$a4, $a5, .LBB128_176
# %bb.169:                              # %cdr.exit109
	ld.d	$a3, $a3, 16
	beqz	$a3, .LBB128_173
# %bb.170:
	move	$s1, $a2
	move	$s2, $a1
	move	$s3, $a0
	ld.hu	$a0, $a3, 2
	beqz	$a0, .LBB128_179
# %bb.171:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB128_227
# %bb.172:
	ld.d	$a3, $a3, 8
	b	.LBB128_180
.LBB128_173:
	move	$s1, $a2
	move	$s2, $a1
	move	$s3, $a0
	b	.LBB128_179
.LBB128_174:
	move	$a3, $zero
	move	$a4, $zero
	jirl	$ra, $s0, 0
	b	.LBB128_15
.LBB128_175:
	move	$s1, $a2
	move	$s2, $a1
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $fp
	b	.LBB128_178
.LBB128_176:
	move	$s1, $a2
	move	$s2, $a1
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
.LBB128_177:                            # %car.exit111.thread
	move	$a1, $a3
.LBB128_178:                            # %car.exit111.thread
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB128_179:                            # %car.exit111.thread
	move	$a3, $zero
.LBB128_180:                            # %car.exit111.thread
	ld.hu	$a0, $fp, 2
	beqz	$a0, .LBB128_197
# %bb.181:                              # %car.exit111.thread
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB128_195
# %bb.182:                              # %cdr.exit113
	ld.d	$a1, $fp, 16
	beqz	$a1, .LBB128_197
# %bb.183:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB128_197
# %bb.184:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB128_219
# %bb.185:                              # %cdr.exit115
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB128_197
# %bb.186:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB128_197
# %bb.187:
	move	$fp, $a3
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB128_223
# %bb.188:                              # %cdr.exit117
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB128_225
# %bb.189:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB128_225
# %bb.190:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB128_223
# %bb.191:                              # %cdr.exit119
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB128_225
# %bb.192:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB128_225
# %bb.193:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB128_230
# %bb.194:
	ld.d	$a4, $a1, 8
	b	.LBB128_226
.LBB128_195:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $fp
.LBB128_196:                            # %car.exit121
	move	$fp, $a3
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a3, $fp
.LBB128_197:
	move	$a4, $zero
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	jirl	$ra, $s0, 0
	b	.LBB128_15
.LBB128_198:
	pcalau12i	$a3, %pc_hi20(.L.str.28)
	addi.d	$a3, $a3, %pc_lo12(.L.str.28)
.LBB128_199:                            # %car.exit71
	move	$fp, $a0
	move	$a0, $a3
	move	$s1, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	move	$a0, $fp
	b	.LBB128_48
.LBB128_200:
	pcalau12i	$a3, %pc_hi20(.L.str.28)
	addi.d	$a3, $a3, %pc_lo12(.L.str.28)
.LBB128_201:                            # %car.exit83.thread
	move	$s1, $a0
	move	$a0, $a3
	move	$s2, $a1
	move	$a1, $a2
.LBB128_202:                            # %car.exit83.thread
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	move	$a0, $s1
.LBB128_203:                            # %car.exit83.thread
	move	$a2, $zero
.LBB128_204:                            # %car.exit83.thread
	ld.hu	$a3, $fp, 2
	beqz	$a3, .LBB128_217
# %bb.205:                              # %car.exit83.thread
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB128_216
.LBB128_206:                            # %cdr.exit85
	ld.d	$a3, $fp, 16
	beqz	$a3, .LBB128_217
# %bb.207:
	ld.hu	$a4, $a3, 2
	beqz	$a4, .LBB128_217
# %bb.208:
	ori	$a5, $zero, 1
	bne	$a4, $a5, .LBB128_218
# %bb.209:                              # %cdr.exit87
	ld.d	$a3, $a3, 16
	beqz	$a3, .LBB128_217
# %bb.210:
	ld.hu	$a4, $a3, 2
	beqz	$a4, .LBB128_217
# %bb.211:
	ori	$a5, $zero, 1
	bne	$a4, $a5, .LBB128_218
# %bb.212:                              # %cdr.exit89
	ld.d	$a3, $a3, 16
	beqz	$a3, .LBB128_217
# %bb.213:
	ld.hu	$a4, $a3, 2
	beqz	$a4, .LBB128_217
# %bb.214:
	move	$fp, $a2
	move	$s1, $a1
	move	$s2, $a0
	ori	$a0, $zero, 1
	bne	$a4, $a0, .LBB128_228
# %bb.215:
	ld.d	$a3, $a3, 8
	b	.LBB128_229
.LBB128_216:
	pcalau12i	$a3, %pc_hi20(.L.str.28)
	addi.d	$a3, $a3, %pc_lo12(.L.str.28)
	move	$s1, $a0
	move	$a0, $a3
	move	$s2, $a1
	move	$a1, $fp
	move	$fp, $a2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a2, $fp
	move	$a1, $s2
	move	$a0, $s1
.LBB128_217:
	move	$a3, $zero
	jirl	$ra, $s0, 0
	b	.LBB128_15
.LBB128_218:
	pcalau12i	$a4, %pc_hi20(.L.str.28)
	addi.d	$a4, $a4, %pc_lo12(.L.str.28)
	move	$fp, $a0
	move	$a0, $a4
	move	$s1, $a1
	move	$a1, $a3
	move	$s2, $a2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a2, $s2
	move	$a1, $s1
	move	$a0, $fp
	move	$a3, $zero
	jirl	$ra, $s0, 0
	b	.LBB128_15
.LBB128_219:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	b	.LBB128_196
.LBB128_220:
	pcalau12i	$a3, %pc_hi20(.L.str.27)
	addi.d	$a3, $a3, %pc_lo12(.L.str.27)
	b	.LBB128_158
.LBB128_221:
	pcalau12i	$a3, %pc_hi20(.L.str.27)
	addi.d	$a3, $a3, %pc_lo12(.L.str.27)
	b	.LBB128_199
.LBB128_222:
	pcalau12i	$a3, %pc_hi20(.L.str.27)
	addi.d	$a3, $a3, %pc_lo12(.L.str.27)
	b	.LBB128_201
.LBB128_223:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
.LBB128_224:                            # %car.exit121
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB128_225:                            # %car.exit121
	move	$a4, $zero
.LBB128_226:                            # %car.exit121
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $fp
	jirl	$ra, $s0, 0
	b	.LBB128_15
.LBB128_227:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB128_177
.LBB128_228:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $a3
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a3, $zero
.LBB128_229:                            # %car.exit91
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $fp
	jirl	$ra, $s0, 0
	b	.LBB128_15
.LBB128_230:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB128_224
.LBB128_231:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.Lfunc_end128:
	.size	lapply, .Lfunc_end128-lapply
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI128_0:
	.word	.LBB128_13-.LJTI128_0
	.word	.LBB128_5-.LJTI128_0
	.word	.LBB128_33-.LJTI128_0
	.word	.LBB128_20-.LJTI128_0
	.word	.LBB128_28-.LJTI128_0
	.word	.LBB128_32-.LJTI128_0
	.word	.LBB128_13-.LJTI128_0
	.word	.LBB128_13-.LJTI128_0
	.word	.LBB128_41-.LJTI128_0
	.word	.LBB128_45-.LJTI128_0
	.word	.LBB128_45-.LJTI128_0
	.word	.LBB128_45-.LJTI128_0
	.word	.LBB128_45-.LJTI128_0
	.word	.LBB128_45-.LJTI128_0
	.word	.LBB128_45-.LJTI128_0
	.word	.LBB128_45-.LJTI128_0
	.word	.LBB128_37-.LJTI128_0
	.word	.LBB128_16-.LJTI128_0
	.word	.LBB128_24-.LJTI128_0
.LJTI128_1:
	.word	.LBB128_44-.LJTI128_1
	.word	.LBB128_51-.LJTI128_1
	.word	.LBB128_51-.LJTI128_1
	.word	.LBB128_51-.LJTI128_1
	.word	.LBB128_87-.LJTI128_1
	.word	.LBB128_89-.LJTI128_1
	.word	.LBB128_90-.LJTI128_1
	.word	.LBB128_91-.LJTI128_1
	.word	.LBB128_51-.LJTI128_1
	.word	.LBB128_51-.LJTI128_1
	.word	.LBB128_51-.LJTI128_1
	.word	.LBB128_51-.LJTI128_1
	.word	.LBB128_51-.LJTI128_1
	.word	.LBB128_51-.LJTI128_1
	.word	.LBB128_51-.LJTI128_1
	.word	.LBB128_51-.LJTI128_1
	.word	.LBB128_51-.LJTI128_1
	.word	.LBB128_51-.LJTI128_1
	.word	.LBB128_86-.LJTI128_1
	.word	.LBB128_88-.LJTI128_1
                                        # -- End function
	.text
	.globl	leval_setq                      # -- Begin function leval_setq
	.p2align	5
	.type	leval_setq,@function
leval_setq:                             # @leval_setq
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	beqz	$a0, .LBB129_11
# %bb.1:
	move	$s1, $a0
	ld.hu	$a0, $a0, 2
	beqz	$a0, .LBB129_11
# %bb.2:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB129_4
# %bb.3:                                # %.thread21
	ld.d	$s0, $s1, 8
	ld.d	$a1, $s1, 16
	bnez	$a1, .LBB129_7
	b	.LBB129_19
.LBB129_4:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s1, 2
	beqz	$a0, .LBB129_11
# %bb.5:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB129_10
# %bb.6:
	move	$s0, $zero
	ld.d	$a1, $s1, 16
	beqz	$a1, .LBB129_19
.LBB129_7:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB129_19
# %bb.8:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB129_18
# %bb.9:
	ld.d	$a0, $a1, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$s0, .LBB129_20
	b	.LBB129_12
.LBB129_10:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB129_11:                             # %.critedge.i.sink.split
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB129_12:                             # %.critedge.i
	move	$s0, $zero
.LBB129_13:                             # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB129_14:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(envlookup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB129_16
# %bb.15:
	st.d	$s1, $a0, 8
	b	.LBB129_17
.LBB129_16:
	st.d	$s1, $s0, 16
.LBB129_17:                             # %setvar.exit
	move	$a0, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB129_18:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB129_19:                             # %car.exit6
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$s0, .LBB129_12
.LBB129_20:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB129_13
	b	.LBB129_14
.Lfunc_end129:
	.size	leval_setq, .Lfunc_end129-leval_setq
                                        # -- End function
	.globl	syntax_define                   # -- Begin function syntax_define
	.p2align	5
	.type	syntax_define,@function
syntax_define:                          # @syntax_define
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
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(sym_lambda)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(gc_kind_copying)
	ori	$s3, $zero, 1
	pcalau12i	$s4, %pc_hi20(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(freelist)
	pcalau12i	$s8, %pc_hi20(gc_cells_allocated)
	b	.LBB130_3
	.p2align	4, , 16
.LBB130_1:                              #   in Loop: Header=BB130_3 Depth=1
	addi.d	$a0, $s0, 24
	st.d	$a0, $s4, %pc_lo12(heap)
.LBB130_2:                              # %cons.exit30
                                        #   in Loop: Header=BB130_3 Depth=1
	st.w	$s6, $s0, 0
	st.d	$s1, $s0, 8
	st.d	$fp, $s0, 16
.LBB130_3:                              # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	beqz	$s0, .LBB130_8
# %bb.4:                                #   in Loop: Header=BB130_3 Depth=1
	ld.hu	$a0, $s0, 2
	beqz	$a0, .LBB130_16
# %bb.5:                                #   in Loop: Header=BB130_3 Depth=1
	bne	$a0, $s3, .LBB130_9
# %bb.6:                                # %car.exit
                                        #   in Loop: Header=BB130_3 Depth=1
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB130_11
# %bb.7:                                # %car.exit8
                                        #   in Loop: Header=BB130_3 Depth=1
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB130_11
	b	.LBB130_59
	.p2align	4, , 16
.LBB130_8:                              # %cdr.exit
                                        #   in Loop: Header=BB130_3 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(sym_lambda)
	move	$s5, $zero
	move	$s1, $zero
	b	.LBB130_34
	.p2align	4, , 16
.LBB130_9:                              # %.critedge.thread
                                        #   in Loop: Header=BB130_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s0, 2
	beqz	$a0, .LBB130_16
# %bb.10:                               # %.critedge.thread
                                        #   in Loop: Header=BB130_3 Depth=1
	bne	$a0, $s3, .LBB130_17
.LBB130_11:                             # %car.exit10
                                        #   in Loop: Header=BB130_3 Depth=1
	ld.d	$a1, $s0, 8
	beqz	$a1, .LBB130_20
# %bb.12:                               #   in Loop: Header=BB130_3 Depth=1
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB130_20
# %bb.13:                               #   in Loop: Header=BB130_3 Depth=1
	bne	$a0, $s3, .LBB130_18
# %bb.14:                               #   in Loop: Header=BB130_3 Depth=1
	ld.d	$s1, $a1, 8
	ld.hu	$a0, $s0, 2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $a1, %pc_lo12(sym_lambda)
	bnez	$a0, .LBB130_21
.LBB130_15:                             #   in Loop: Header=BB130_3 Depth=1
	move	$s5, $zero
	b	.LBB130_34
	.p2align	4, , 16
.LBB130_16:                             # %car.exit12.thread.thread
                                        #   in Loop: Header=BB130_3 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(sym_lambda)
	move	$s1, $zero
	move	$s5, $zero
	ld.hu	$a0, $s0, 2
	bnez	$a0, .LBB130_28
	b	.LBB130_34
.LBB130_17:                             #   in Loop: Header=BB130_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $s0
	b	.LBB130_19
.LBB130_18:                             #   in Loop: Header=BB130_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
.LBB130_19:                             # %car.exit12.thread
                                        #   in Loop: Header=BB130_3 Depth=1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB130_20:                             # %car.exit12.thread
                                        #   in Loop: Header=BB130_3 Depth=1
	move	$s1, $zero
	ld.hu	$a0, $s0, 2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $a1, %pc_lo12(sym_lambda)
	beqz	$a0, .LBB130_15
.LBB130_21:                             # %car.exit12.thread
                                        #   in Loop: Header=BB130_3 Depth=1
	bne	$a0, $s3, .LBB130_26
# %bb.22:                               # %car.exit14
                                        #   in Loop: Header=BB130_3 Depth=1
	ld.d	$a1, $s0, 8
	beqz	$a1, .LBB130_27
# %bb.23:                               #   in Loop: Header=BB130_3 Depth=1
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB130_27
# %bb.24:                               #   in Loop: Header=BB130_3 Depth=1
	bne	$a0, $s3, .LBB130_58
# %bb.25:                               #   in Loop: Header=BB130_3 Depth=1
	ld.d	$s5, $a1, 16
	ld.hu	$a0, $s0, 2
	bnez	$a0, .LBB130_28
	b	.LBB130_34
.LBB130_26:                             #   in Loop: Header=BB130_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB130_27:                             # %cdr.exit.thread
                                        #   in Loop: Header=BB130_3 Depth=1
	move	$s5, $zero
	ld.hu	$a0, $s0, 2
	beqz	$a0, .LBB130_34
.LBB130_28:                             # %cdr.exit.thread
                                        #   in Loop: Header=BB130_3 Depth=1
	bne	$a0, $s3, .LBB130_33
# %bb.29:                               #   in Loop: Header=BB130_3 Depth=1
	ld.d	$s6, $s0, 16
	ld.d	$a0, $s2, %pc_lo12(gc_kind_copying)
	beq	$a0, $s3, .LBB130_35
	.p2align	4, , 16
.LBB130_30:                             #   in Loop: Header=BB130_3 Depth=1
	ld.d	$s0, $s7, %pc_lo12(freelist)
	bnez	$s0, .LBB130_32
# %bb.31:                               #   in Loop: Header=BB130_3 Depth=1
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s7, %pc_lo12(freelist)
.LBB130_32:                             #   in Loop: Header=BB130_3 Depth=1
	ld.d	$a0, $s0, 16
	ld.d	$a1, $s8, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s7, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s8, %pc_lo12(gc_cells_allocated)
	b	.LBB130_38
.LBB130_33:                             #   in Loop: Header=BB130_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB130_34:                             # %cdr.exit17
                                        #   in Loop: Header=BB130_3 Depth=1
	move	$s6, $zero
	ld.d	$a0, $s2, %pc_lo12(gc_kind_copying)
	bne	$a0, $s3, .LBB130_30
.LBB130_35:                             #   in Loop: Header=BB130_3 Depth=1
	ld.d	$s0, $s4, %pc_lo12(heap)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s0, $a0, .LBB130_37
# %bb.36:                               #   in Loop: Header=BB130_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB130_37:                             #   in Loop: Header=BB130_3 Depth=1
	addi.d	$a0, $s0, 24
	st.d	$a0, $s4, %pc_lo12(heap)
.LBB130_38:                             # %cons.exit
                                        #   in Loop: Header=BB130_3 Depth=1
	lu12i.w	$a0, 16
	st.w	$a0, $s0, 0
	ld.d	$a0, $s2, %pc_lo12(gc_kind_copying)
	st.d	$s5, $s0, 8
	st.d	$s6, $s0, 16
	bne	$a0, $s3, .LBB130_42
# %bb.39:                               #   in Loop: Header=BB130_3 Depth=1
	ld.d	$s5, $s4, %pc_lo12(heap)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s5, $a0, .LBB130_41
# %bb.40:                               #   in Loop: Header=BB130_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB130_41:                             #   in Loop: Header=BB130_3 Depth=1
	addi.d	$a0, $s5, 24
	st.d	$a0, $s4, %pc_lo12(heap)
	b	.LBB130_45
	.p2align	4, , 16
.LBB130_42:                             #   in Loop: Header=BB130_3 Depth=1
	ld.d	$s5, $s7, %pc_lo12(freelist)
	bnez	$s5, .LBB130_44
# %bb.43:                               #   in Loop: Header=BB130_3 Depth=1
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s7, %pc_lo12(freelist)
.LBB130_44:                             #   in Loop: Header=BB130_3 Depth=1
	ld.d	$a0, $s5, 16
	ld.d	$a1, $s8, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s7, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s8, %pc_lo12(gc_cells_allocated)
.LBB130_45:                             # %cons.exit22
                                        #   in Loop: Header=BB130_3 Depth=1
	lu12i.w	$s6, 16
	st.w	$s6, $s5, 0
	ld.d	$a0, $s2, %pc_lo12(gc_kind_copying)
	st.d	$fp, $s5, 8
	st.d	$s0, $s5, 16
	bne	$a0, $s3, .LBB130_49
# %bb.46:                               #   in Loop: Header=BB130_3 Depth=1
	ld.d	$fp, $s4, %pc_lo12(heap)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$fp, $a0, .LBB130_48
# %bb.47:                               #   in Loop: Header=BB130_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB130_48:                             #   in Loop: Header=BB130_3 Depth=1
	addi.d	$a0, $fp, 24
	st.d	$a0, $s4, %pc_lo12(heap)
	b	.LBB130_52
	.p2align	4, , 16
.LBB130_49:                             #   in Loop: Header=BB130_3 Depth=1
	ld.d	$fp, $s7, %pc_lo12(freelist)
	bnez	$fp, .LBB130_51
# %bb.50:                               #   in Loop: Header=BB130_3 Depth=1
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s7, %pc_lo12(freelist)
.LBB130_51:                             #   in Loop: Header=BB130_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $s8, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s7, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s8, %pc_lo12(gc_cells_allocated)
.LBB130_52:                             # %cons.exit26
                                        #   in Loop: Header=BB130_3 Depth=1
	st.w	$s6, $fp, 0
	ld.d	$a0, $s2, %pc_lo12(gc_kind_copying)
	st.d	$s5, $fp, 8
	st.d	$zero, $fp, 16
	bne	$a0, $s3, .LBB130_55
# %bb.53:                               #   in Loop: Header=BB130_3 Depth=1
	ld.d	$s0, $s4, %pc_lo12(heap)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s0, $a0, .LBB130_1
# %bb.54:                               #   in Loop: Header=BB130_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	b	.LBB130_1
	.p2align	4, , 16
.LBB130_55:                             #   in Loop: Header=BB130_3 Depth=1
	ld.d	$s0, $s7, %pc_lo12(freelist)
	bnez	$s0, .LBB130_57
# %bb.56:                               #   in Loop: Header=BB130_3 Depth=1
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s7, %pc_lo12(freelist)
.LBB130_57:                             #   in Loop: Header=BB130_3 Depth=1
	ld.d	$a0, $s0, 16
	ld.d	$a1, $s8, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s7, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s8, %pc_lo12(gc_cells_allocated)
	b	.LBB130_2
.LBB130_58:                             #   in Loop: Header=BB130_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	ld.hu	$a0, $s0, 2
	bnez	$a0, .LBB130_28
	b	.LBB130_34
.LBB130_59:
	move	$a0, $s0
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
.Lfunc_end130:
	.size	syntax_define, .Lfunc_end130-syntax_define
                                        # -- End function
	.globl	leval_define                    # -- Begin function leval_define
	.p2align	5
	.type	leval_define,@function
leval_define:                           # @leval_define
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$s1, $a1
	pcaddu18i	$ra, %call36(syntax_define)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.hu	$a0, $a0, 2
	beqz	$a0, .LBB131_5
# %bb.1:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB131_4
# %bb.2:                                # %car.exit
	ld.d	$s0, $fp, 8
	beqz	$s0, .LBB131_5
# %bb.3:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB131_6
	b	.LBB131_8
.LBB131_4:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB131_5:
	move	$s0, $zero
.LBB131_6:
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a0, $a0, %pc_lo12(.L.str.93)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $fp, 2
	beqz	$a0, .LBB131_15
# %bb.7:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB131_12
.LBB131_8:                              # %cdr.exit
	ld.d	$a1, $fp, 16
	beqz	$a1, .LBB131_15
# %bb.9:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB131_15
# %bb.10:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB131_13
# %bb.11:
	ld.d	$a0, $a1, 8
	b	.LBB131_16
.LBB131_12:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $fp
	b	.LBB131_14
.LBB131_13:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
.LBB131_14:                             # %car.exit29
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB131_15:                             # %car.exit29
	move	$a0, $zero
.LBB131_16:                             # %car.exit29
	move	$a1, $s1
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(envlookup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB131_18
# %bb.17:
	st.d	$fp, $a0, 8
	b	.LBB131_59
.LBB131_18:
	beqz	$s1, .LBB131_25
# %bb.19:
	ld.hu	$a0, $s1, 2
	ori	$s6, $zero, 1
	beqz	$a0, .LBB131_26
# %bb.20:
	ori	$s2, $zero, 1
	bne	$a0, $s2, .LBB131_27
# %bb.21:                               # %car.exit31
	ld.d	$s1, $s1, 8
	beqz	$s1, .LBB131_28
# %bb.22:
	ld.hu	$a0, $s1, 2
	beqz	$a0, .LBB131_30
# %bb.23:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB131_29
# %bb.24:
	ld.d	$s8, $s1, 8
	move	$s2, $zero
	b	.LBB131_32
.LBB131_25:
	st.d	$fp, $s0, 16
	b	.LBB131_59
.LBB131_26:
	move	$s1, $zero
	move	$s8, $zero
	ori	$s2, $zero, 1
	b	.LBB131_32
.LBB131_27:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB131_28:
	move	$s1, $zero
	b	.LBB131_31
.LBB131_29:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB131_30:                             # %car.exit33
	move	$s2, $zero
.LBB131_31:                             # %car.exit33
	move	$s8, $zero
.LBB131_32:                             # %car.exit33
	pcalau12i	$s7, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $s7, %pc_lo12(gc_kind_copying)
	pcalau12i	$s4, %pc_hi20(freelist)
	pcalau12i	$s3, %pc_hi20(gc_cells_allocated)
	pcalau12i	$s5, %pc_hi20(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	bne	$a0, $s6, .LBB131_36
# %bb.33:
	ld.d	$s6, $s5, %pc_lo12(heap)
	ld.d	$a0, $a1, %pc_lo12(heap_end)
	bltu	$s6, $a0, .LBB131_35
# %bb.34:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB131_35:
	addi.d	$a0, $s6, 24
	st.d	$a0, $s5, %pc_lo12(heap)
	b	.LBB131_39
.LBB131_36:
	ld.d	$s6, $s4, %pc_lo12(freelist)
	bnez	$s6, .LBB131_38
# %bb.37:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s4, %pc_lo12(freelist)
.LBB131_38:
	ld.d	$a0, $s6, 16
	ld.d	$a1, $s3, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s4, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s3, %pc_lo12(gc_cells_allocated)
.LBB131_39:                             # %cons.exit
	lu12i.w	$a0, 16
	st.w	$a0, $s6, 0
	st.d	$s0, $s6, 8
	st.d	$s8, $s6, 16
	beqz	$s2, .LBB131_41
# %bb.40:                               # %setcar.exit.thread48
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	st.d	$s6, $s1, 8
	b	.LBB131_48
.LBB131_41:
	ld.hu	$a0, $s1, 2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB131_43
# %bb.42:                               # %setcar.exit.thread.thread
	st.d	$s6, $s1, 8
	ld.d	$s0, $s1, 16
	b	.LBB131_48
.LBB131_43:                             # %setcar.exit.thread
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s1, 2
	st.d	$s6, $s1, 8
	beqz	$a0, .LBB131_47
# %bb.44:                               # %setcar.exit.thread
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB131_46
# %bb.45:
	ld.d	$s0, $s1, 16
	b	.LBB131_48
.LBB131_46:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB131_47:                             # %cdr.exit36
	move	$s0, $zero
.LBB131_48:                             # %cdr.exit36
	ld.d	$a0, $s7, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB131_52
# %bb.49:
	ld.d	$s6, $s5, %pc_lo12(heap)
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s6, $a0, .LBB131_51
# %bb.50:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB131_51:
	addi.d	$a0, $s6, 24
	st.d	$a0, $s5, %pc_lo12(heap)
	b	.LBB131_55
.LBB131_52:
	ld.d	$s6, $s4, %pc_lo12(freelist)
	bnez	$s6, .LBB131_54
# %bb.53:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s4, %pc_lo12(freelist)
.LBB131_54:
	ld.d	$a0, $s6, 16
	ld.d	$a1, $s3, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s4, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s3, %pc_lo12(gc_cells_allocated)
.LBB131_55:                             # %cons.exit40
	lu12i.w	$a0, 16
	st.w	$a0, $s6, 0
	st.d	$fp, $s6, 8
	st.d	$s0, $s6, 16
	bnez	$s2, .LBB131_57
# %bb.56:
	ld.hu	$a0, $s1, 2
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB131_58
.LBB131_57:                             # %.critedge.i41
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB131_58:                             # %setcdr.exit
	st.d	$s6, $s1, 16
.LBB131_59:
	move	$a0, $fp
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end131:
	.size	leval_define, .Lfunc_end131-leval_define
                                        # -- End function
	.globl	leval_if                        # -- Begin function leval_if
	.p2align	5
	.type	leval_if,@function
leval_if:                               # @leval_if
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a2, $a0, 0
	beqz	$a2, .LBB132_17
# %bb.1:
	ld.hu	$a0, $a2, 2
	beqz	$a0, .LBB132_17
# %bb.2:
	ori	$a3, $zero, 1
	bne	$a0, $a3, .LBB132_16
# %bb.3:                                # %cdr.exit
	ld.d	$s0, $a2, 16
	ld.d	$a1, $a1, 0
	beqz	$s0, .LBB132_18
# %bb.4:
	ld.hu	$a0, $s0, 2
	beqz	$a0, .LBB132_22
# %bb.5:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB132_21
# %bb.6:
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s0, 2
	bnez	$a0, .LBB132_23
.LBB132_7:
	beqz	$a1, .LBB132_19
# %bb.8:
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB132_29
# %bb.9:                                # %cdr.exit14
	ld.d	$a1, $s0, 16
	beqz	$a1, .LBB132_19
# %bb.10:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB132_19
# %bb.11:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB132_31
# %bb.12:                               # %cdr.exit16
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB132_19
# %bb.13:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB132_19
# %bb.14:
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB132_28
.LBB132_15:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB132_30
.LBB132_16:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$s0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a1, $s0
.LBB132_17:                             # %car.exit.thread
	ld.d	$a1, $a1, 0
.LBB132_18:                             # %car.exit.thread36
	move	$a0, $zero
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
.LBB132_19:                             # %car.exit12
	move	$a0, $zero
.LBB132_20:                             # %car.exit12
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(sym_t)
	ld.d	$a0, $a0, %pc_lo12(sym_t)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB132_21:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$s1, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a1, $s1
.LBB132_22:                             # %car.exit
	move	$a0, $zero
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s0, 2
	beqz	$a0, .LBB132_7
.LBB132_23:
	beqz	$a1, .LBB132_19
# %bb.24:
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB132_29
# %bb.25:                               # %cdr.exit10
	ld.d	$a1, $s0, 16
	beqz	$a1, .LBB132_19
# %bb.26:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB132_19
# %bb.27:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB132_15
.LBB132_28:
	ld.d	$a0, $a1, 8
	b	.LBB132_20
.LBB132_29:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $s0
.LBB132_30:                             # %car.exit12
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	b	.LBB132_19
.LBB132_31:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	b	.LBB132_30
.Lfunc_end132:
	.size	leval_if, .Lfunc_end132-leval_if
                                        # -- End function
	.globl	leval_lambda                    # -- Begin function leval_lambda
	.p2align	5
	.type	leval_lambda,@function
leval_lambda:                           # @leval_lambda
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	pcalau12i	$s1, %pc_hi20(gc_kind_copying)
	lu12i.w	$s2, 16
	beqz	$a0, .LBB133_18
# %bb.1:
	move	$s0, $a0
	ld.hu	$a0, $a0, 2
	beqz	$a0, .LBB133_18
# %bb.2:
	ori	$a2, $zero, 1
	move	$a1, $s0
	bne	$a0, $a2, .LBB133_11
# %bb.3:                                # %cdr.exit
	ld.d	$a1, $s0, 16
	beqz	$a1, .LBB133_14
# %bb.4:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB133_12
# %bb.5:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB133_11
# %bb.6:                                # %cdr.exit7
	ld.d	$a0, $a1, 16
	beqz	$a0, .LBB133_12
# %bb.7:                                # %cdr.exit12
	pcalau12i	$a0, %pc_hi20(sym_progn)
	ld.d	$a2, $s1, %pc_lo12(gc_kind_copying)
	ld.d	$s4, $a0, %pc_lo12(sym_progn)
	ori	$a0, $zero, 1
	bne	$a2, $a0, .LBB133_26
# %bb.8:
	pcalau12i	$s5, %pc_hi20(heap)
	ld.d	$s3, $s5, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s3, $a0, .LBB133_10
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$s6, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a1, $s6
.LBB133_10:
	addi.d	$a0, $s3, 24
	st.d	$a0, $s5, %pc_lo12(heap)
	b	.LBB133_29
.LBB133_11:                             # %.thread.sink.split
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB133_12:                             # %.thread
	ld.hu	$a0, $s0, 2
	beqz	$a0, .LBB133_18
# %bb.13:                               # %.thread
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB133_24
.LBB133_14:                             # %cdr.exit9
	ld.d	$a1, $s0, 16
	beqz	$a1, .LBB133_23
# %bb.15:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB133_23
# %bb.16:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB133_25
# %bb.17:
	ld.d	$s3, $a1, 8
	ld.hu	$a0, $s0, 2
	bnez	$a0, .LBB133_30
	b	.LBB133_19
.LBB133_18:
	move	$s3, $zero
.LBB133_19:                             # %car.exit15
	move	$s4, $zero
	ld.d	$a0, $s1, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB133_32
.LBB133_20:
	pcalau12i	$s5, %pc_hi20(heap)
	ld.d	$s0, $s5, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s0, $a0, .LBB133_22
# %bb.21:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB133_22:
	addi.d	$a0, $s0, 24
	st.d	$a0, $s5, %pc_lo12(heap)
	b	.LBB133_35
.LBB133_23:
	move	$s3, $zero
	ld.hu	$a0, $s0, 2
	bnez	$a0, .LBB133_30
	b	.LBB133_19
.LBB133_24:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	ld.hu	$a0, $s0, 2
	bnez	$a0, .LBB133_30
	b	.LBB133_19
.LBB133_25:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	ld.hu	$a0, $s0, 2
	bnez	$a0, .LBB133_30
	b	.LBB133_19
.LBB133_26:
	pcalau12i	$s5, %pc_hi20(freelist)
	ld.d	$s3, $s5, %pc_lo12(freelist)
	bnez	$s3, .LBB133_28
# %bb.27:
	move	$s3, $a1
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	ld.d	$s3, $s5, %pc_lo12(freelist)
.LBB133_28:
	ld.d	$a0, $s3, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s5, %pc_lo12(freelist)
	addi.d	$a0, $a3, 1
	st.d	$a0, $a2, %pc_lo12(gc_cells_allocated)
.LBB133_29:                             # %cons.exit
	st.w	$s2, $s3, 0
	st.d	$s4, $s3, 8
	st.d	$a1, $s3, 16
	ld.hu	$a0, $s0, 2
	beqz	$a0, .LBB133_19
.LBB133_30:                             # %car.exit.thread
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB133_43
# %bb.31:
	ld.d	$s4, $s0, 8
	ld.d	$a0, $s1, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB133_20
.LBB133_32:
	pcalau12i	$s5, %pc_hi20(freelist)
	ld.d	$s0, $s5, %pc_lo12(freelist)
	bnez	$s0, .LBB133_34
# %bb.33:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s5, %pc_lo12(freelist)
.LBB133_34:
	ld.d	$a0, $s0, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s5, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB133_35:                             # %cons.exit19
	st.w	$s2, $s0, 0
	ld.d	$a0, $s1, %pc_lo12(gc_kind_copying)
	st.d	$s4, $s0, 8
	ori	$a1, $zero, 1
	st.d	$s3, $s0, 16
	bne	$a0, $a1, .LBB133_39
# %bb.36:
	pcalau12i	$s1, %pc_hi20(heap)
	ld.d	$a0, $s1, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB133_38
# %bb.37:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB133_38:
	addi.d	$a1, $a0, 24
	st.d	$a1, $s1, %pc_lo12(heap)
	b	.LBB133_42
.LBB133_39:
	pcalau12i	$s1, %pc_hi20(freelist)
	ld.d	$a0, $s1, %pc_lo12(freelist)
	bnez	$a0, .LBB133_41
# %bb.40:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(freelist)
.LBB133_41:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $s1, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB133_42:                             # %closure.exit
	lu12i.w	$a1, 176
	st.w	$a1, $a0, 0
	st.d	$fp, $a0, 8
	st.d	$s0, $a0, 16
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB133_43:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	b	.LBB133_19
.Lfunc_end133:
	.size	leval_lambda, .Lfunc_end133-leval_lambda
                                        # -- End function
	.globl	arglchk                         # -- Begin function arglchk
	.p2align	5
	.type	arglchk,@function
arglchk:                                # @arglchk
# %bb.0:
	ret
.Lfunc_end134:
	.size	arglchk, .Lfunc_end134-arglchk
                                        # -- End function
	.globl	leval_progn                     # -- Begin function leval_progn
	.p2align	5
	.type	leval_progn,@function
leval_progn:                            # @leval_progn
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a2, $a0, 0
	beqz	$a2, .LBB135_17
# %bb.1:
	ld.hu	$a0, $a2, 2
	beqz	$a0, .LBB135_17
# %bb.2:
	ori	$a3, $zero, 1
	bne	$a0, $a3, .LBB135_15
# %bb.3:                                # %cdr.exit
	move	$a3, $a1
	ld.d	$a1, $a2, 16
	beqz	$a1, .LBB135_17
# %bb.4:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB135_19
# %bb.5:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB135_20
# %bb.6:                                # %cdr.exit12
	ld.d	$a0, $a1, 16
	beqz	$a0, .LBB135_19
# %bb.7:                                # %.lr.ph.preheader.preheader
	ld.d	$s1, $a3, 0
	ori	$s3, $zero, 1
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$s2, $a2, %pc_lo12(.L.str.27)
	.p2align	4, , 16
.LBB135_8:                              # %.lr.ph.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a2, $a1, 2
	move	$s0, $a0
	beqz	$a2, .LBB135_12
# %bb.9:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB135_8 Depth=1
	bne	$a2, $s3, .LBB135_11
# %bb.10:                               #   in Loop: Header=BB135_8 Depth=1
	ld.d	$a0, $a1, 8
	b	.LBB135_13
.LBB135_11:                             #   in Loop: Header=BB135_8 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB135_12:                             #   in Loop: Header=BB135_8 Depth=1
	move	$a0, $zero
.LBB135_13:                             #   in Loop: Header=BB135_8 Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s0, 2
	bne	$a0, $s3, .LBB135_26
# %bb.14:                               # %cdr.exit15
                                        #   in Loop: Header=BB135_8 Depth=1
	ld.d	$a0, $s0, 16
	move	$a1, $s0
	bnez	$a0, .LBB135_8
	b	.LBB135_22
.LBB135_15:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $a2
.LBB135_16:                             # %car.exit17
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB135_17:                             # %car.exit17
	move	$a0, $zero
.LBB135_18:                             # %car.exit17
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(sym_t)
	ld.d	$a0, $a0, %pc_lo12(sym_t)
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB135_19:
	move	$s0, $a1
	b	.LBB135_22
.LBB135_20:
	move	$s0, $a1
.LBB135_21:                             # %._crit_edge.sink.split
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB135_22:                             # %._crit_edge
	ld.hu	$a0, $s0, 2
	beqz	$a0, .LBB135_17
# %bb.23:                               # %._crit_edge
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB135_25
# %bb.24:
	ld.d	$a0, $s0, 8
	b	.LBB135_18
.LBB135_25:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $s0
	b	.LBB135_16
.LBB135_26:
	bnez	$a0, .LBB135_21
	b	.LBB135_22
.Lfunc_end135:
	.size	leval_progn, .Lfunc_end135-leval_progn
                                        # -- End function
	.globl	leval_or                        # -- Begin function leval_or
	.p2align	5
	.type	leval_or,@function
leval_or:                               # @leval_or
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a2, $a0, 0
	beqz	$a2, .LBB136_18
# %bb.1:
	ld.hu	$a0, $a2, 2
	beqz	$a0, .LBB136_18
# %bb.2:
	ori	$a3, $zero, 1
	bne	$a0, $a3, .LBB136_16
# %bb.3:                                # %cdr.exit
	move	$a3, $a1
	ld.d	$a1, $a2, 16
	beqz	$a1, .LBB136_18
# %bb.4:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB136_21
# %bb.5:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB136_22
# %bb.6:                                # %cdr.exit19
	ld.d	$a0, $a1, 16
	beqz	$a0, .LBB136_21
# %bb.7:                                # %.lr.ph.preheader.preheader
	ld.d	$s1, $a3, 0
	ori	$s3, $zero, 1
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$s2, $a2, %pc_lo12(.L.str.27)
	.p2align	4, , 16
.LBB136_8:                              # %.lr.ph.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a2, $a1, 2
	move	$s0, $a0
	beqz	$a2, .LBB136_12
# %bb.9:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB136_8 Depth=1
	bne	$a2, $s3, .LBB136_11
# %bb.10:                               #   in Loop: Header=BB136_8 Depth=1
	ld.d	$a0, $a1, 8
	b	.LBB136_13
.LBB136_11:                             #   in Loop: Header=BB136_8 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB136_12:                             # %car.exit
                                        #   in Loop: Header=BB136_8 Depth=1
	move	$a0, $zero
.LBB136_13:                             # %car.exit
                                        #   in Loop: Header=BB136_8 Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB136_29
# %bb.14:                               #   in Loop: Header=BB136_8 Depth=1
	ld.hu	$a0, $s0, 2
	bne	$a0, $s3, .LBB136_28
# %bb.15:                               # %cdr.exit22
                                        #   in Loop: Header=BB136_8 Depth=1
	ld.d	$a0, $s0, 16
	move	$a1, $s0
	bnez	$a0, .LBB136_8
	b	.LBB136_24
.LBB136_16:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $a2
.LBB136_17:                             # %car.exit24
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB136_18:                             # %car.exit24
	move	$a0, $zero
.LBB136_19:                             # %car.exit24
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(sym_t)
	ld.d	$a0, $a0, %pc_lo12(sym_t)
.LBB136_20:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB136_21:
	move	$s0, $a1
	b	.LBB136_24
.LBB136_22:
	move	$s0, $a1
.LBB136_23:                             # %._crit_edge.sink.split
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB136_24:                             # %._crit_edge
	ld.hu	$a0, $s0, 2
	beqz	$a0, .LBB136_18
# %bb.25:                               # %._crit_edge
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB136_27
# %bb.26:
	ld.d	$a0, $s0, 8
	b	.LBB136_19
.LBB136_27:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $s0
	b	.LBB136_17
.LBB136_28:
	bnez	$a0, .LBB136_23
	b	.LBB136_24
.LBB136_29:
	st.d	$a0, $fp, 0
	move	$a0, $zero
	b	.LBB136_20
.Lfunc_end136:
	.size	leval_or, .Lfunc_end136-leval_or
                                        # -- End function
	.globl	leval_and                       # -- Begin function leval_and
	.p2align	5
	.type	leval_and,@function
leval_and:                              # @leval_and
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a2, $a0, 0
	beqz	$a2, .LBB137_17
# %bb.1:
	move	$a0, $a1
	ld.hu	$a1, $a2, 2
	beqz	$a1, .LBB137_17
# %bb.2:
	ori	$a3, $zero, 1
	bne	$a1, $a3, .LBB137_16
# %bb.3:                                # %cdr.exit
	ld.d	$a1, $a2, 16
	beqz	$a1, .LBB137_17
# %bb.4:
	ld.hu	$a2, $a1, 2
	beqz	$a2, .LBB137_19
# %bb.5:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB137_20
# %bb.6:                                # %cdr.exit18
	ld.d	$a2, $a1, 16
	beqz	$a2, .LBB137_19
# %bb.7:                                # %.lr.ph.preheader
	ld.d	$s1, $a0, 0
	ori	$s3, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s2, $a0, %pc_lo12(.L.str.27)
	.p2align	4, , 16
.LBB137_8:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $a1, 2
	move	$s0, $a2
	beqz	$a0, .LBB137_12
# %bb.9:                                # %.lr.ph
                                        #   in Loop: Header=BB137_8 Depth=1
	bne	$a0, $s3, .LBB137_11
# %bb.10:                               #   in Loop: Header=BB137_8 Depth=1
	ld.d	$a0, $a1, 8
	b	.LBB137_13
.LBB137_11:                             #   in Loop: Header=BB137_8 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB137_12:                             # %car.exit
                                        #   in Loop: Header=BB137_8 Depth=1
	move	$a0, $zero
.LBB137_13:                             # %car.exit
                                        #   in Loop: Header=BB137_8 Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB137_29
# %bb.14:                               #   in Loop: Header=BB137_8 Depth=1
	ld.hu	$a0, $s0, 2
	bne	$a0, $s3, .LBB137_28
# %bb.15:                               # %cdr.exit21
                                        #   in Loop: Header=BB137_8 Depth=1
	ld.d	$a2, $s0, 16
	move	$a1, $s0
	bnez	$a2, .LBB137_8
	b	.LBB137_22
.LBB137_16:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $a2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB137_17:                             # %cdr.exit.thread
	pcalau12i	$a0, %pc_hi20(sym_t)
	ld.d	$a1, $a0, %pc_lo12(sym_t)
	move	$a0, $zero
	st.d	$a1, $fp, 0
.LBB137_18:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB137_19:
	move	$s0, $a1
	b	.LBB137_22
.LBB137_20:
	move	$s0, $a1
.LBB137_21:                             # %._crit_edge.sink.split
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB137_22:                             # %._crit_edge
	ld.hu	$a0, $s0, 2
	beqz	$a0, .LBB137_26
# %bb.23:                               # %._crit_edge
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB137_25
# %bb.24:
	ld.d	$a0, $s0, 8
	b	.LBB137_27
.LBB137_25:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB137_26:                             # %car.exit23
	move	$a0, $zero
.LBB137_27:                             # %car.exit23
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(sym_t)
	ld.d	$a0, $a0, %pc_lo12(sym_t)
	b	.LBB137_18
.LBB137_28:
	bnez	$a0, .LBB137_21
	b	.LBB137_22
.LBB137_29:
	move	$a0, $zero
	st.d	$zero, $fp, 0
	b	.LBB137_18
.Lfunc_end137:
	.size	leval_and, .Lfunc_end137-leval_and
                                        # -- End function
	.globl	leval_catch_1                   # -- Begin function leval_catch_1
	.p2align	5
	.type	leval_catch_1,@function
leval_catch_1:                          # @leval_catch_1
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB138_10
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $a1
	move	$fp, $a0
	ori	$s2, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	.p2align	4, , 16
.LBB138_2:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $fp, 2
	beqz	$a0, .LBB138_6
# %bb.3:                                # %.lr.ph
                                        #   in Loop: Header=BB138_2 Depth=1
	bne	$a0, $s2, .LBB138_5
# %bb.4:                                #   in Loop: Header=BB138_2 Depth=1
	ld.d	$a0, $fp, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $fp, 2
	beq	$a1, $s2, .LBB138_7
	b	.LBB138_8
	.p2align	4, , 16
.LBB138_5:                              #   in Loop: Header=BB138_2 Depth=1
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB138_6:                              #   in Loop: Header=BB138_2 Depth=1
	move	$a0, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $fp, 2
	bne	$a1, $s2, .LBB138_8
.LBB138_7:                              # %cdr.exit
                                        #   in Loop: Header=BB138_2 Depth=1
	ld.d	$fp, $fp, 16
	bnez	$fp, .LBB138_2
	b	.LBB138_11
.LBB138_8:
	beqz	$a1, .LBB138_11
# %bb.9:
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB138_11
.LBB138_10:
	move	$a0, $zero
.LBB138_11:                             # %._crit_edge
	pcalau12i	$a1, %pc_hi20(catch_framep)
	ld.d	$a2, $a1, %pc_lo12(catch_framep)
	ld.d	$a2, $a2, 320
	st.d	$a2, $a1, %pc_lo12(catch_framep)
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end138:
	.size	leval_catch_1, .Lfunc_end138-leval_catch_1
                                        # -- End function
	.globl	leval_catch                     # -- Begin function leval_catch
	.p2align	5
	.type	leval_catch,@function
leval_catch:                            # @leval_catch
# %bb.0:
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a0, .LBB139_5
# %bb.1:
	ld.hu	$a0, $s0, 2
	beqz	$a0, .LBB139_5
# %bb.2:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB139_4
# %bb.3:
	ld.d	$a0, $s0, 8
	b	.LBB139_6
.LBB139_4:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB139_5:                              # %car.exit
	move	$a0, $zero
.LBB139_6:                              # %car.exit
	move	$a1, $fp
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(catch_framep)
	ld.d	$a1, $s2, %pc_lo12(catch_framep)
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 328
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_setjmp)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 2
	st.d	$a1, $s2, %pc_lo12(catch_framep)
	bne	$a0, $a2, .LBB139_8
# %bb.7:
	ld.d	$a0, $sp, 328
	ld.d	$a1, $sp, 16
	st.d	$a0, $s2, %pc_lo12(catch_framep)
	move	$a0, $a1
	b	.LBB139_24
.LBB139_8:
	beqz	$s0, .LBB139_20
# %bb.9:
	ld.hu	$a1, $s0, 2
	move	$a0, $zero
	beqz	$a1, .LBB139_23
# %bb.10:
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB139_21
# %bb.11:                               # %cdr.exit
	ld.d	$s1, $s0, 16
	beqz	$s1, .LBB139_20
# %bb.12:                               # %.lr.ph.i.preheader
	ori	$s3, $zero, 1
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$s0, $a1, %pc_lo12(.L.str.27)
	.p2align	4, , 16
.LBB139_13:                             # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s1, 2
	beqz	$a0, .LBB139_17
# %bb.14:                               # %.lr.ph.i
                                        #   in Loop: Header=BB139_13 Depth=1
	bne	$a0, $s3, .LBB139_16
# %bb.15:                               #   in Loop: Header=BB139_13 Depth=1
	ld.d	$a0, $s1, 8
	b	.LBB139_18
	.p2align	4, , 16
.LBB139_16:                             #   in Loop: Header=BB139_13 Depth=1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB139_17:                             #   in Loop: Header=BB139_13 Depth=1
	move	$a0, $zero
.LBB139_18:                             #   in Loop: Header=BB139_13 Depth=1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s1, 2
	bne	$a1, $s3, .LBB139_25
# %bb.19:                               # %cdr.exit.i
                                        #   in Loop: Header=BB139_13 Depth=1
	ld.d	$a1, $s1, 16
	move	$s1, $a1
	bnez	$a1, .LBB139_13
	b	.LBB139_23
.LBB139_20:
	move	$a0, $zero
	b	.LBB139_23
.LBB139_21:
	move	$a1, $s0
.LBB139_22:                             # %leval_catch_1.exit.sink.split
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB139_23:                             # %leval_catch_1.exit
	ld.d	$a1, $s2, %pc_lo12(catch_framep)
	ld.d	$a1, $a1, 320
	st.d	$a1, $s2, %pc_lo12(catch_framep)
.LBB139_24:
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.LBB139_25:
	beqz	$a1, .LBB139_23
# %bb.26:                               # %leval_catch_1.exit.sink.split.loopexit
	move	$a1, $s1
	b	.LBB139_22
.Lfunc_end139:
	.size	leval_catch, .Lfunc_end139-leval_catch
                                        # -- End function
	.globl	lthrow                          # -- Begin function lthrow
	.p2align	5
	.type	lthrow,@function
lthrow:                                 # @lthrow
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(catch_framep)
	ld.d	$a3, $a2, %pc_lo12(catch_framep)
	move	$a2, $a0
	beqz	$a3, .LBB140_5
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %pc_hi20(sym_catchall)
	ld.d	$a0, $a0, %pc_lo12(sym_catchall)
	.p2align	4, , 16
.LBB140_2:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	beq	$a4, $a2, .LBB140_6
# %bb.3:                                #   in Loop: Header=BB140_2 Depth=1
	beq	$a4, $a0, .LBB140_6
# %bb.4:                                #   in Loop: Header=BB140_2 Depth=1
	ld.d	$a3, $a3, 320
	bnez	$a3, .LBB140_2
.LBB140_5:                              # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a0, $a0, %pc_lo12(.L.str.94)
	move	$a1, $a2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB140_6:
	st.d	$a1, $a3, 8
	addi.d	$a0, $a3, 16
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(longjmp)
	jirl	$ra, $ra, 0
.Lfunc_end140:
	.size	lthrow, .Lfunc_end140-lthrow
                                        # -- End function
	.globl	leval_let                       # -- Begin function leval_let
	.p2align	5
	.type	leval_let,@function
leval_let:                              # @leval_let
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a2, $a0, 0
	move	$s0, $a1
	beqz	$a2, .LBB141_11
# %bb.1:
	ld.hu	$a0, $a2, 2
	beqz	$a0, .LBB141_11
# %bb.2:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB141_10
# %bb.3:                                # %cdr.exit
	ld.d	$s1, $a2, 16
	ld.d	$s2, $s0, 0
	beqz	$s1, .LBB141_12
# %bb.4:
	ld.hu	$a0, $s1, 2
	beqz	$a0, .LBB141_16
# %bb.5:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB141_14
# %bb.6:                                # %cdr.exit10
	ld.d	$a1, $s1, 16
	beqz	$a1, .LBB141_16
# %bb.7:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB141_16
# %bb.8:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB141_34
# %bb.9:
	ld.d	$a0, $a1, 8
	b	.LBB141_17
.LBB141_10:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $a2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB141_11:                             # %cdr.exit.thread
	ld.d	$s2, $s0, 0
.LBB141_12:                             # %car.exit13
	move	$a0, $zero
	move	$a1, $s2
	pcaddu18i	$ra, %call36(leval_args)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(extend_env)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	st.d	$a0, $s0, 0
.LBB141_13:                             # %car.exit19
	st.d	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(sym_t)
	ld.d	$a0, $a0, %pc_lo12(sym_t)
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB141_14:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $s1
.LBB141_15:                             # %car.exit.thread
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB141_16:                             # %car.exit.thread
	move	$a0, $zero
.LBB141_17:                             # %car.exit.thread
	move	$a1, $s2
	pcaddu18i	$ra, %call36(leval_args)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s1, 2
	beqz	$a1, .LBB141_21
# %bb.18:                               # %car.exit.thread
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB141_20
# %bb.19:
	ld.d	$a1, $s1, 8
	b	.LBB141_22
.LBB141_20:
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	move	$s3, $a0
	move	$a0, $a1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s3
.LBB141_21:
	move	$a1, $zero
.LBB141_22:
	move	$a2, $s2
	pcaddu18i	$ra, %call36(extend_env)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s1, 2
	st.d	$a0, $s0, 0
	beqz	$a1, .LBB141_33
# %bb.23:
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB141_31
# %bb.24:                               # %cdr.exit15
	ld.d	$a1, $s1, 16
	beqz	$a1, .LBB141_33
# %bb.25:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB141_33
# %bb.26:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB141_35
# %bb.27:                               # %cdr.exit17
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB141_33
# %bb.28:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB141_33
# %bb.29:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB141_36
# %bb.30:
	ld.d	$a1, $a1, 8
	b	.LBB141_13
.LBB141_31:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $s1
.LBB141_32:                             # %car.exit19
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB141_33:                             # %car.exit19
	move	$a1, $zero
	b	.LBB141_13
.LBB141_34:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB141_15
.LBB141_35:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	b	.LBB141_32
.LBB141_36:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB141_32
.Lfunc_end141:
	.size	leval_let, .Lfunc_end141-leval_let
                                        # -- End function
	.globl	letstar_macro                   # -- Begin function letstar_macro
	.p2align	5
	.type	letstar_macro,@function
letstar_macro:                          # @letstar_macro
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB142_14
# %bb.1:
	ld.hu	$a0, $fp, 2
	beqz	$a0, .LBB142_17
# %bb.2:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB142_15
# %bb.3:                                # %cdr.exit.i
	ld.d	$a1, $fp, 16
	beqz	$a1, .LBB142_17
# %bb.4:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB142_17
# %bb.5:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB142_20
# %bb.6:                                # %cadr.exit
	ld.d	$s1, $a1, 8
	beqz	$s1, .LBB142_17
# %bb.7:
	ld.hu	$a0, $s1, 2
	beqz	$a0, .LBB142_17
# %bb.8:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB142_21
# %bb.9:                                # %cdr.exit
	ld.d	$a0, $s1, 16
	beqz	$a0, .LBB142_17
# %bb.10:                               # %car.exit
	ld.d	$s0, $s1, 8
	pcalau12i	$s7, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $s7, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	pcalau12i	$s4, %pc_hi20(freelist)
	pcalau12i	$s3, %pc_hi20(gc_cells_allocated)
	pcalau12i	$s5, %pc_hi20(heap)
	pcalau12i	$s6, %pc_hi20(heap_end)
	bne	$a0, $a1, .LBB142_22
# %bb.11:
	ld.d	$s2, $s5, %pc_lo12(heap)
	ld.d	$a0, $s6, %pc_lo12(heap_end)
	bltu	$s2, $a0, .LBB142_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB142_13:
	addi.d	$a0, $s2, 24
	st.d	$a0, $s5, %pc_lo12(heap)
	b	.LBB142_25
.LBB142_14:
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	b	.LBB142_18
.LBB142_15:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $fp
.LBB142_16:                             # %.thread
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB142_17:                             # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $fp, 2
	ori	$a2, $zero, 1
	move	$s0, $a0
	beq	$a1, $a2, .LBB142_19
.LBB142_18:                             # %.critedge.i32
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB142_19:                             # %setcar.exit
	st.d	$s0, $fp, 8
	move	$a0, $fp
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB142_20:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB142_16
.LBB142_21:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $s1
	b	.LBB142_16
.LBB142_22:
	ld.d	$s2, $s4, %pc_lo12(freelist)
	bnez	$s2, .LBB142_24
# %bb.23:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s4, %pc_lo12(freelist)
.LBB142_24:
	ld.d	$a0, $s2, 16
	ld.d	$a1, $s3, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s4, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s3, %pc_lo12(gc_cells_allocated)
.LBB142_25:
	lu12i.w	$a0, 16
	st.w	$a0, $s2, 0
	st.d	$s0, $s2, 8
	st.d	$zero, $s2, 16
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s1, 2
	move	$s0, $a0
	beqz	$a1, .LBB142_29
# %bb.26:
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB142_28
# %bb.27:
	ld.d	$s1, $s1, 16
	b	.LBB142_30
.LBB142_28:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB142_29:                             # %cdr.exit13
	move	$s1, $zero
.LBB142_30:                             # %cdr.exit13
	ld.hu	$a0, $fp, 2
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	beqz	$a0, .LBB142_36
# %bb.31:                               # %cdr.exit13
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB142_37
# %bb.32:                               # %cdr.exit.i14
	ld.d	$a1, $fp, 16
	beqz	$a1, .LBB142_36
# %bb.33:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB142_36
# %bb.34:
	move	$s6, $s0
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB142_71
# %bb.35:
	ld.d	$s0, $a1, 16
	b	.LBB142_40
.LBB142_36:
	move	$s6, $s0
	b	.LBB142_39
.LBB142_37:
	move	$s6, $s0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $fp
.LBB142_38:                             # %cddr.exit
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB142_39:                             # %cddr.exit
	move	$s0, $zero
.LBB142_40:                             # %cddr.exit
	ld.d	$a0, $s7, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB142_44
# %bb.41:
	ld.d	$s8, $s5, %pc_lo12(heap)
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s8, $a0, .LBB142_43
# %bb.42:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB142_43:
	addi.d	$a0, $s8, 24
	st.d	$a0, $s5, %pc_lo12(heap)
	b	.LBB142_47
.LBB142_44:
	ld.d	$s8, $s4, %pc_lo12(freelist)
	bnez	$s8, .LBB142_46
# %bb.45:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s8, $s4, %pc_lo12(freelist)
.LBB142_46:
	ld.d	$a0, $s8, 16
	ld.d	$a1, $s3, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s4, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s3, %pc_lo12(gc_cells_allocated)
.LBB142_47:                             # %cons.exit19
	lu12i.w	$a0, 16
	st.w	$a0, $s8, 0
	ld.d	$a0, $s7, %pc_lo12(gc_kind_copying)
	st.d	$s1, $s8, 8
	ori	$a1, $zero, 1
	st.d	$s0, $s8, 16
	bne	$a0, $a1, .LBB142_51
# %bb.48:
	ld.d	$s1, $s5, %pc_lo12(heap)
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s1, $a0, .LBB142_50
# %bb.49:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB142_50:
	addi.d	$a0, $s1, 24
	st.d	$a0, $s5, %pc_lo12(heap)
	b	.LBB142_54
.LBB142_51:
	ld.d	$s1, $s4, %pc_lo12(freelist)
	bnez	$s1, .LBB142_53
# %bb.52:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s4, %pc_lo12(freelist)
.LBB142_53:
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s3, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s4, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s3, %pc_lo12(gc_cells_allocated)
.LBB142_54:                             # %cons.exit23
	lu12i.w	$a0, 16
	st.w	$a0, $s1, 0
	ld.d	$a0, $s7, %pc_lo12(gc_kind_copying)
	st.d	$s6, $s1, 8
	ori	$a1, $zero, 1
	st.d	$s8, $s1, 16
	bne	$a0, $a1, .LBB142_58
# %bb.55:
	ld.d	$s0, $s5, %pc_lo12(heap)
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $s6, %pc_lo12(heap_end)
	bltu	$s0, $a0, .LBB142_57
# %bb.56:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB142_57:
	addi.d	$a0, $s0, 24
	st.d	$a0, $s5, %pc_lo12(heap)
	b	.LBB142_61
.LBB142_58:
	ld.d	$s0, $s4, %pc_lo12(freelist)
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	bnez	$s0, .LBB142_60
# %bb.59:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s4, %pc_lo12(freelist)
.LBB142_60:
	ld.d	$a0, $s0, 16
	ld.d	$a1, $s3, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s4, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s3, %pc_lo12(gc_cells_allocated)
.LBB142_61:                             # %cons.exit27
	lu12i.w	$a0, 16
	st.w	$a0, $s0, 0
	ld.d	$a0, $s7, %pc_lo12(gc_kind_copying)
	st.d	$s1, $s0, 8
	ori	$a1, $zero, 1
	st.d	$zero, $s0, 16
	bne	$a0, $a1, .LBB142_65
# %bb.62:
	ld.d	$s1, $s5, %pc_lo12(heap)
	ld.d	$a0, $s6, %pc_lo12(heap_end)
	bltu	$s1, $a0, .LBB142_64
# %bb.63:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB142_64:
	addi.d	$a0, $s1, 24
	st.d	$a0, $s5, %pc_lo12(heap)
	b	.LBB142_68
.LBB142_65:
	ld.d	$s1, $s4, %pc_lo12(freelist)
	bnez	$s1, .LBB142_67
# %bb.66:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s4, %pc_lo12(freelist)
.LBB142_67:
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s3, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s4, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s3, %pc_lo12(gc_cells_allocated)
.LBB142_68:
	lu12i.w	$a0, 16
	st.w	$a0, $s1, 0
	st.d	$s2, $s1, 8
	st.d	$s0, $s1, 16
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB142_70
# %bb.69:                               # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB142_70:                             # %setcdr.exit
	st.d	$s1, $fp, 16
	b	.LBB142_17
.LBB142_71:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	b	.LBB142_38
.Lfunc_end142:
	.size	letstar_macro, .Lfunc_end142-letstar_macro
                                        # -- End function
	.globl	cadr                            # -- Begin function cadr
	.p2align	5
	.type	cadr,@function
cadr:                                   # @cadr
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB143_9
# %bb.1:
	move	$a1, $a0
	ld.hu	$a0, $a0, 2
	beqz	$a0, .LBB143_9
# %bb.2:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB143_7
# %bb.3:                                # %cdr.exit
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB143_9
# %bb.4:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB143_9
# %bb.5:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB143_10
# %bb.6:
	ld.d	$a0, $a1, 8
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB143_7:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
.LBB143_8:                              # %car.exit
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB143_9:                              # %car.exit
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB143_10:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB143_8
.Lfunc_end143:
	.size	cadr, .Lfunc_end143-cadr
                                        # -- End function
	.globl	cddr                            # -- Begin function cddr
	.p2align	5
	.type	cddr,@function
cddr:                                   # @cddr
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB144_8
# %bb.1:
	move	$a1, $a0
	ld.hu	$a0, $a0, 2
	beqz	$a0, .LBB144_8
# %bb.2:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB144_7
# %bb.3:                                # %cdr.exit
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB144_8
# %bb.4:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB144_8
# %bb.5:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB144_7
# %bb.6:
	ld.d	$a0, $a1, 16
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB144_7:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB144_8:                              # %cdr.exit2
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end144:
	.size	cddr, .Lfunc_end144-cddr
                                        # -- End function
	.globl	letrec_macro                    # -- Begin function letrec_macro
	.p2align	5
	.type	letrec_macro,@function
letrec_macro:                           # @letrec_macro
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
	move	$fp, $a0
	pcalau12i	$s7, %pc_hi20(gc_kind_copying)
	beqz	$a0, .LBB145_7
# %bb.1:
	ld.hu	$a0, $fp, 2
	beqz	$a0, .LBB145_7
# %bb.2:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB145_8
# %bb.3:                                # %cdr.exit.i
	ld.d	$a1, $fp, 16
	beqz	$a1, .LBB145_13
# %bb.4:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB145_10
# %bb.5:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB145_62
# %bb.6:
	ld.d	$s5, $a1, 16
	ld.hu	$a0, $fp, 2
	bnez	$a0, .LBB145_11
	b	.LBB145_65
.LBB145_7:
	move	$s6, $zero
	move	$s5, $zero
	b	.LBB145_66
.LBB145_8:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $fp
.LBB145_9:
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB145_10:
	move	$s5, $zero
	ld.hu	$a0, $fp, 2
	beqz	$a0, .LBB145_65
.LBB145_11:
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB145_14
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $fp
	b	.LBB145_64
.LBB145_13:
	move	$s5, $zero
.LBB145_14:                             # %cdr.exit.i16
	ld.d	$a1, $fp, 16
	beqz	$a1, .LBB145_65
# %bb.15:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB145_65
# %bb.16:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB145_63
# %bb.17:                               # %cadr.exit
	ld.d	$s0, $a1, 8
	beqz	$s0, .LBB145_65
# %bb.18:                               # %.lr.ph.preheader
	pcalau12i	$s3, %pc_hi20(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a0, $a0, %pc_lo12(.L.str.95)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(freelist)
	pcalau12i	$s1, %pc_hi20(gc_cells_allocated)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$s4, $zero
	move	$s8, $s5
	.p2align	4, , 16
.LBB145_19:                             # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s0, 2
	beqz	$a0, .LBB145_27
# %bb.20:                               # %.lr.ph
                                        #   in Loop: Header=BB145_19 Depth=1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB145_25
# %bb.21:                               # %car.exit.i
                                        #   in Loop: Header=BB145_19 Depth=1
	ld.d	$a1, $s0, 8
	beqz	$a1, .LBB145_27
# %bb.22:                               #   in Loop: Header=BB145_19 Depth=1
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB145_27
# %bb.23:                               #   in Loop: Header=BB145_19 Depth=1
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB145_60
# %bb.24:                               #   in Loop: Header=BB145_19 Depth=1
	ld.d	$s6, $a1, 8
	b	.LBB145_28
.LBB145_25:                             #   in Loop: Header=BB145_19 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $s0
.LBB145_26:                             # %caar.exit
                                        #   in Loop: Header=BB145_19 Depth=1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB145_27:                             # %caar.exit
                                        #   in Loop: Header=BB145_19 Depth=1
	move	$s6, $zero
.LBB145_28:                             # %caar.exit
                                        #   in Loop: Header=BB145_19 Depth=1
	ld.d	$a0, $s7, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB145_32
# %bb.29:                               #   in Loop: Header=BB145_19 Depth=1
	ld.d	$s5, $s3, %pc_lo12(heap)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s5, $a0, .LBB145_31
# %bb.30:                               #   in Loop: Header=BB145_19 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB145_31:                             #   in Loop: Header=BB145_19 Depth=1
	addi.d	$a0, $s5, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB145_35
.LBB145_32:                             #   in Loop: Header=BB145_19 Depth=1
	ld.d	$s5, $s2, %pc_lo12(freelist)
	bnez	$s5, .LBB145_34
# %bb.33:                               #   in Loop: Header=BB145_19 Depth=1
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s2, %pc_lo12(freelist)
.LBB145_34:                             #   in Loop: Header=BB145_19 Depth=1
	ld.d	$a0, $s5, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB145_35:                             # %cons.exit
                                        #   in Loop: Header=BB145_19 Depth=1
	lu12i.w	$a0, 16
	st.w	$a0, $s5, 0
	ld.d	$a0, $s7, %pc_lo12(gc_kind_copying)
	st.d	$s6, $s5, 8
	st.d	$zero, $s5, 16
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB145_39
# %bb.36:                               #   in Loop: Header=BB145_19 Depth=1
	ld.d	$s6, $s3, %pc_lo12(heap)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s6, $a0, .LBB145_38
# %bb.37:                               #   in Loop: Header=BB145_19 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB145_38:                             #   in Loop: Header=BB145_19 Depth=1
	addi.d	$a0, $s6, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB145_42
.LBB145_39:                             #   in Loop: Header=BB145_19 Depth=1
	ld.d	$s6, $s2, %pc_lo12(freelist)
	bnez	$s6, .LBB145_41
# %bb.40:                               #   in Loop: Header=BB145_19 Depth=1
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s2, %pc_lo12(freelist)
.LBB145_41:                             #   in Loop: Header=BB145_19 Depth=1
	ld.d	$a0, $s6, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB145_42:                             #   in Loop: Header=BB145_19 Depth=1
	lu12i.w	$a0, 16
	st.w	$a0, $s6, 0
	st.d	$s5, $s6, 8
	st.d	$s4, $s6, 16
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s0, 2
	move	$s4, $a0
	beqz	$a1, .LBB145_50
# %bb.43:                               #   in Loop: Header=BB145_19 Depth=1
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB145_48
# %bb.44:                               # %car.exit.i23
                                        #   in Loop: Header=BB145_19 Depth=1
	ld.d	$a1, $s0, 8
	beqz	$a1, .LBB145_50
# %bb.45:                               #   in Loop: Header=BB145_19 Depth=1
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB145_50
# %bb.46:                               #   in Loop: Header=BB145_19 Depth=1
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB145_61
# %bb.47:                               #   in Loop: Header=BB145_19 Depth=1
	ld.d	$s5, $a1, 8
	b	.LBB145_51
.LBB145_48:                             #   in Loop: Header=BB145_19 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$a1, $s0
.LBB145_49:                             # %caar.exit25
                                        #   in Loop: Header=BB145_19 Depth=1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB145_50:                             # %caar.exit25
                                        #   in Loop: Header=BB145_19 Depth=1
	move	$s5, $zero
.LBB145_51:                             # %caar.exit25
                                        #   in Loop: Header=BB145_19 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cadar)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	ori	$a0, $zero, 3
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(listn)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(gc_kind_copying)
	move	$s4, $a0
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB145_55
# %bb.52:                               #   in Loop: Header=BB145_19 Depth=1
	ld.d	$s5, $s3, %pc_lo12(heap)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s5, $a0, .LBB145_54
# %bb.53:                               #   in Loop: Header=BB145_19 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB145_54:                             #   in Loop: Header=BB145_19 Depth=1
	addi.d	$a0, $s5, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB145_58
.LBB145_55:                             #   in Loop: Header=BB145_19 Depth=1
	ld.d	$s5, $s2, %pc_lo12(freelist)
	bnez	$s5, .LBB145_57
# %bb.56:                               #   in Loop: Header=BB145_19 Depth=1
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s2, %pc_lo12(freelist)
.LBB145_57:                             #   in Loop: Header=BB145_19 Depth=1
	ld.d	$a0, $s5, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB145_58:                             #   in Loop: Header=BB145_19 Depth=1
	lu12i.w	$a0, 16
	st.w	$a0, $s5, 0
	st.d	$s4, $s5, 8
	st.d	$s8, $s5, 16
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB145_79
# %bb.59:                               # %cdr.exit
                                        #   in Loop: Header=BB145_19 Depth=1
	ld.d	$s0, $s0, 16
	move	$s8, $s5
	move	$s4, $s6
	bnez	$s0, .LBB145_19
	b	.LBB145_66
.LBB145_60:                             #   in Loop: Header=BB145_19 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB145_26
.LBB145_61:                             #   in Loop: Header=BB145_19 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	b	.LBB145_49
.LBB145_62:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	b	.LBB145_9
.LBB145_63:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
.LBB145_64:                             # %._crit_edge
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB145_65:                             # %._crit_edge
	move	$s6, $zero
.LBB145_66:                             # %._crit_edge
	ld.d	$a0, $s7, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB145_70
# %bb.67:
	pcalau12i	$s1, %pc_hi20(heap)
	ld.d	$s0, $s1, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s0, $a0, .LBB145_69
# %bb.68:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB145_69:
	addi.d	$a0, $s0, 24
	st.d	$a0, $s1, %pc_lo12(heap)
	b	.LBB145_73
.LBB145_70:
	pcalau12i	$s1, %pc_hi20(freelist)
	ld.d	$s0, $s1, %pc_lo12(freelist)
	bnez	$s0, .LBB145_72
# %bb.71:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s1, %pc_lo12(freelist)
.LBB145_72:
	ld.d	$a0, $s0, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s1, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB145_73:                             # %cons.exit34
	lu12i.w	$a0, 16
	st.w	$a0, $s0, 0
	st.d	$s6, $s0, 8
	st.d	$s5, $s0, 16
	beqz	$fp, .LBB145_75
# %bb.74:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB145_76
.LBB145_75:                             # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB145_76:
	st.d	$s0, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $fp, 2
	ori	$a2, $zero, 1
	move	$s0, $a0
	beq	$a1, $a2, .LBB145_78
# %bb.77:                               # %.critedge.i35
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB145_78:                             # %setcar.exit
	st.d	$s0, $fp, 8
	move	$a0, $fp
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
.LBB145_79:
	beqz	$a0, .LBB145_66
# %bb.80:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	b	.LBB145_66
.Lfunc_end145:
	.size	letrec_macro, .Lfunc_end145-letrec_macro
                                        # -- End function
	.globl	caar                            # -- Begin function caar
	.p2align	5
	.type	caar,@function
caar:                                   # @caar
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB146_8
# %bb.1:
	move	$a1, $a0
	ld.hu	$a0, $a0, 2
	beqz	$a0, .LBB146_8
# %bb.2:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB146_7
# %bb.3:                                # %car.exit
	ld.d	$a1, $a1, 8
	beqz	$a1, .LBB146_8
# %bb.4:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB146_8
# %bb.5:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB146_7
# %bb.6:
	ld.d	$a0, $a1, 8
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB146_7:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB146_8:                              # %car.exit2
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end146:
	.size	caar, .Lfunc_end146-caar
                                        # -- End function
	.globl	reverse                         # -- Begin function reverse
	.p2align	5
	.type	reverse,@function
reverse:                                # @reverse
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	beqz	$a0, .LBB147_17
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a0
	pcalau12i	$s3, %pc_hi20(gc_kind_copying)
	ori	$s4, $zero, 1
	pcalau12i	$s5, %pc_hi20(heap)
	pcalau12i	$s6, %pc_hi20(heap_end)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(freelist)
	pcalau12i	$s0, %pc_hi20(gc_cells_allocated)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $zero
	.p2align	4, , 16
.LBB147_2:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $fp, 2
	beqz	$a0, .LBB147_9
# %bb.3:                                # %.lr.ph
                                        #   in Loop: Header=BB147_2 Depth=1
	bne	$a0, $s4, .LBB147_8
# %bb.4:                                #   in Loop: Header=BB147_2 Depth=1
	ld.d	$s7, $fp, 8
	ld.d	$a0, $s3, %pc_lo12(gc_kind_copying)
	beq	$a0, $s4, .LBB147_10
.LBB147_5:                              #   in Loop: Header=BB147_2 Depth=1
	ld.d	$s2, $s8, %pc_lo12(freelist)
	bnez	$s2, .LBB147_7
# %bb.6:                                #   in Loop: Header=BB147_2 Depth=1
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s8, %pc_lo12(freelist)
.LBB147_7:                              #   in Loop: Header=BB147_2 Depth=1
	ld.d	$a0, $s2, 16
	ld.d	$a1, $s0, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s8, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s0, %pc_lo12(gc_cells_allocated)
	b	.LBB147_13
	.p2align	4, , 16
.LBB147_8:                              #   in Loop: Header=BB147_2 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB147_9:                              # %car.exit
                                        #   in Loop: Header=BB147_2 Depth=1
	move	$s7, $zero
	ld.d	$a0, $s3, %pc_lo12(gc_kind_copying)
	bne	$a0, $s4, .LBB147_5
.LBB147_10:                             #   in Loop: Header=BB147_2 Depth=1
	ld.d	$s2, $s5, %pc_lo12(heap)
	ld.d	$a0, $s6, %pc_lo12(heap_end)
	bltu	$s2, $a0, .LBB147_12
# %bb.11:                               #   in Loop: Header=BB147_2 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB147_12:                             #   in Loop: Header=BB147_2 Depth=1
	addi.d	$a0, $s2, 24
	st.d	$a0, $s5, %pc_lo12(heap)
.LBB147_13:                             #   in Loop: Header=BB147_2 Depth=1
	lu12i.w	$a0, 16
	st.w	$a0, $s2, 0
	st.d	$s7, $s2, 8
	st.d	$s1, $s2, 16
	ld.hu	$a0, $fp, 2
	bne	$a0, $s4, .LBB147_15
# %bb.14:                               # %cdr.exit
                                        #   in Loop: Header=BB147_2 Depth=1
	ld.d	$fp, $fp, 16
	move	$s1, $s2
	bnez	$fp, .LBB147_2
	b	.LBB147_18
.LBB147_15:
	beqz	$a0, .LBB147_18
# %bb.16:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	b	.LBB147_18
.LBB147_17:
	move	$s2, $zero
.LBB147_18:                             # %._crit_edge
	move	$a0, $s2
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end147:
	.size	reverse, .Lfunc_end147-reverse
                                        # -- End function
	.globl	let_macro                       # -- Begin function let_macro
	.p2align	5
	.type	let_macro,@function
let_macro:                              # @let_macro
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$s7, %pc_hi20(gc_kind_copying)
	lu12i.w	$s6, 16
	beqz	$a0, .LBB148_60
# %bb.1:
	ld.hu	$a0, $fp, 2
	beqz	$a0, .LBB148_63
# %bb.2:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB148_61
# %bb.3:                                # %cdr.exit
	ld.d	$a1, $fp, 16
	beqz	$a1, .LBB148_63
# %bb.4:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB148_63
# %bb.5:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB148_79
# %bb.6:                                # %car.exit
	ld.d	$s1, $a1, 8
	beqz	$s1, .LBB148_63
# %bb.7:                                # %.lr.ph.preheader
	ori	$a2, $zero, 1
	pcalau12i	$a0, %pc_hi20(heap)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(heap_end)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(freelist)
	pcalau12i	$a0, %pc_hi20(gc_cells_allocated)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$s3, $zero
	move	$s4, $zero
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB148_8:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s1, 2
	beqz	$a0, .LBB148_19
# %bb.9:                                # %.lr.ph
                                        #   in Loop: Header=BB148_8 Depth=1
	bne	$a0, $a2, .LBB148_18
# %bb.10:                               # %car.exit30
                                        #   in Loop: Header=BB148_8 Depth=1
	ld.d	$s5, $s1, 8
	beqz	$s5, .LBB148_19
# %bb.11:                               #   in Loop: Header=BB148_8 Depth=1
	ld.hu	$a0, $s5, 2
	beqz	$a0, .LBB148_48
# %bb.12:                               #   in Loop: Header=BB148_8 Depth=1
	beq	$a0, $a2, .LBB148_46
# %bb.13:                               #   in Loop: Header=BB148_8 Depth=1
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB148_47
# %bb.14:                               #   in Loop: Header=BB148_8 Depth=1
	ld.d	$a0, $s7, %pc_lo12(gc_kind_copying)
	bne	$a0, $a2, .LBB148_50
# %bb.15:                               #   in Loop: Header=BB148_8 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(heap)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s0, $a0, .LBB148_17
# %bb.16:                               #   in Loop: Header=BB148_8 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ori	$a2, $zero, 1
.LBB148_17:                             #   in Loop: Header=BB148_8 Depth=1
	addi.d	$a0, $s0, 24
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(heap)
	b	.LBB148_53
.LBB148_18:                             #   in Loop: Header=BB148_8 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ori	$a2, $zero, 1
.LBB148_19:                             #   in Loop: Header=BB148_8 Depth=1
	move	$s5, $zero
	move	$s8, $zero
	ori	$s2, $zero, 1
.LBB148_20:                             # %car.exit37
                                        #   in Loop: Header=BB148_8 Depth=1
	ld.d	$a0, $s7, %pc_lo12(gc_kind_copying)
	bne	$a0, $a2, .LBB148_24
# %bb.21:                               #   in Loop: Header=BB148_8 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(heap)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s0, $a0, .LBB148_23
# %bb.22:                               #   in Loop: Header=BB148_8 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ori	$a2, $zero, 1
.LBB148_23:                             #   in Loop: Header=BB148_8 Depth=1
	addi.d	$a0, $s0, 24
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(heap)
	st.w	$s6, $s0, 0
	st.d	$s8, $s0, 8
	st.d	$s4, $s0, 16
	beqz	$s2, .LBB148_27
	b	.LBB148_35
.LBB148_24:                             #   in Loop: Header=BB148_8 Depth=1
	ld.d	$s0, $a3, %pc_lo12(freelist)
	bnez	$s0, .LBB148_26
# %bb.25:                               #   in Loop: Header=BB148_8 Depth=1
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ori	$a2, $zero, 1
	ld.d	$s0, $a3, %pc_lo12(freelist)
.LBB148_26:                             #   in Loop: Header=BB148_8 Depth=1
	ld.d	$a0, $s0, 16
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a4, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $a3, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $a4, %pc_lo12(gc_cells_allocated)
	st.w	$s6, $s0, 0
	st.d	$s8, $s0, 8
	st.d	$s4, $s0, 16
	bnez	$s2, .LBB148_35
.LBB148_27:                             #   in Loop: Header=BB148_8 Depth=1
	ld.hu	$a0, $s5, 2
	beqz	$a0, .LBB148_35
# %bb.28:                               #   in Loop: Header=BB148_8 Depth=1
	bne	$a0, $a2, .LBB148_33
# %bb.29:                               # %cdr.exit43
                                        #   in Loop: Header=BB148_8 Depth=1
	ld.d	$a1, $s5, 16
	beqz	$a1, .LBB148_35
# %bb.30:                               #   in Loop: Header=BB148_8 Depth=1
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB148_35
# %bb.31:                               #   in Loop: Header=BB148_8 Depth=1
	bne	$a0, $a2, .LBB148_49
# %bb.32:                               #   in Loop: Header=BB148_8 Depth=1
	ld.d	$s4, $a1, 8
	b	.LBB148_36
.LBB148_33:                             #   in Loop: Header=BB148_8 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s5
.LBB148_34:                             # %car.exit45
                                        #   in Loop: Header=BB148_8 Depth=1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ori	$a2, $zero, 1
.LBB148_35:                             # %car.exit45
                                        #   in Loop: Header=BB148_8 Depth=1
	move	$s4, $zero
.LBB148_36:                             # %car.exit45
                                        #   in Loop: Header=BB148_8 Depth=1
	ld.d	$a0, $s7, %pc_lo12(gc_kind_copying)
	bne	$a0, $a2, .LBB148_40
# %bb.37:                               #   in Loop: Header=BB148_8 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(heap)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s5, $a0, .LBB148_39
# %bb.38:                               #   in Loop: Header=BB148_8 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ori	$a2, $zero, 1
.LBB148_39:                             #   in Loop: Header=BB148_8 Depth=1
	addi.d	$a0, $s5, 24
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(heap)
	b	.LBB148_44
.LBB148_40:                             #   in Loop: Header=BB148_8 Depth=1
	ld.d	$s5, $a3, %pc_lo12(freelist)
	bnez	$s5, .LBB148_42
# %bb.41:                               #   in Loop: Header=BB148_8 Depth=1
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ori	$a2, $zero, 1
	ld.d	$s5, $a3, %pc_lo12(freelist)
.LBB148_42:                             #   in Loop: Header=BB148_8 Depth=1
	ld.d	$a0, $s5, 16
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a4, %pc_lo12(gc_cells_allocated)
.LBB148_43:                             # %cons.exit35
                                        #   in Loop: Header=BB148_8 Depth=1
	st.d	$a0, $a3, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $a4, %pc_lo12(gc_cells_allocated)
.LBB148_44:                             # %cons.exit35
                                        #   in Loop: Header=BB148_8 Depth=1
	st.w	$s6, $s5, 0
	st.d	$s4, $s5, 8
	st.d	$s3, $s5, 16
	ld.hu	$a0, $s1, 2
	bne	$a0, $a2, .LBB148_81
# %bb.45:                               # %cdr.exit51
                                        #   in Loop: Header=BB148_8 Depth=1
	ld.d	$s1, $s1, 16
	move	$s3, $s5
	move	$s4, $s0
	bnez	$s1, .LBB148_8
	b	.LBB148_64
.LBB148_46:                             #   in Loop: Header=BB148_8 Depth=1
	ld.d	$s8, $s5, 8
	move	$s2, $zero
	b	.LBB148_20
.LBB148_47:                             #   in Loop: Header=BB148_8 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ori	$a2, $zero, 1
.LBB148_48:                             # %car.exit37
                                        #   in Loop: Header=BB148_8 Depth=1
	move	$s2, $zero
	move	$s8, $zero
	b	.LBB148_20
.LBB148_49:                             #   in Loop: Header=BB148_8 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	b	.LBB148_34
.LBB148_50:                             #   in Loop: Header=BB148_8 Depth=1
	ld.d	$s0, $a3, %pc_lo12(freelist)
	bnez	$s0, .LBB148_52
# %bb.51:                               #   in Loop: Header=BB148_8 Depth=1
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ori	$a2, $zero, 1
	ld.d	$s0, $a3, %pc_lo12(freelist)
.LBB148_52:                             #   in Loop: Header=BB148_8 Depth=1
	ld.d	$a0, $s0, 16
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a4, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $a3, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $a4, %pc_lo12(gc_cells_allocated)
.LBB148_53:                             # %cons.exit
                                        #   in Loop: Header=BB148_8 Depth=1
	st.w	$s6, $s0, 0
	ld.d	$a0, $s7, %pc_lo12(gc_kind_copying)
	st.d	$s5, $s0, 8
	st.d	$s4, $s0, 16
	bne	$a0, $a2, .LBB148_57
# %bb.54:                               #   in Loop: Header=BB148_8 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(heap)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s5, $a0, .LBB148_56
# %bb.55:                               #   in Loop: Header=BB148_8 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ori	$a2, $zero, 1
.LBB148_56:                             #   in Loop: Header=BB148_8 Depth=1
	move	$s4, $zero
	b	.LBB148_39
.LBB148_57:                             #   in Loop: Header=BB148_8 Depth=1
	ld.d	$s5, $a3, %pc_lo12(freelist)
	bnez	$s5, .LBB148_59
# %bb.58:                               #   in Loop: Header=BB148_8 Depth=1
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ori	$a2, $zero, 1
	ld.d	$s5, $a3, %pc_lo12(freelist)
.LBB148_59:                             #   in Loop: Header=BB148_8 Depth=1
	ld.d	$a0, $s5, 16
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a4, %pc_lo12(gc_cells_allocated)
	move	$s4, $zero
	b	.LBB148_43
.LBB148_60:
	move	$s5, $zero
	move	$s0, $zero
	move	$s2, $zero
	b	.LBB148_87
.LBB148_61:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $fp
.LBB148_62:
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB148_63:
	move	$s5, $zero
	move	$s0, $zero
.LBB148_64:                             # %._crit_edge.thread
	ld.hu	$a0, $fp, 2
	beqz	$a0, .LBB148_86
# %bb.65:                               # %._crit_edge.thread
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB148_77
# %bb.66:                               # %cdr.exit53
	ld.d	$a1, $fp, 16
	beqz	$a1, .LBB148_86
# %bb.67:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB148_86
# %bb.68:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB148_80
# %bb.69:                               # %cdr.exit55
	ld.d	$s1, $a1, 16
	beqz	$s1, .LBB148_86
# %bb.70:
	ld.hu	$a0, $s1, 2
	beqz	$a0, .LBB148_86
# %bb.71:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB148_83
# %bb.72:                               # %cdr.exit57
	ld.d	$a0, $s1, 16
	beqz	$a0, .LBB148_85
# %bb.73:
	pcalau12i	$a0, %pc_hi20(sym_progn)
	ld.d	$a1, $s7, %pc_lo12(gc_kind_copying)
	ld.d	$s3, $a0, %pc_lo12(sym_progn)
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB148_114
# %bb.74:
	pcalau12i	$s4, %pc_hi20(heap)
	ld.d	$s2, $s4, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s2, $a0, .LBB148_76
# %bb.75:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB148_76:
	addi.d	$a0, $s2, 24
	st.d	$a0, $s4, %pc_lo12(heap)
	b	.LBB148_117
.LBB148_77:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $fp
.LBB148_78:                             # %car.exit59
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	b	.LBB148_87
.LBB148_79:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	b	.LBB148_62
.LBB148_80:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	b	.LBB148_78
.LBB148_81:                             # %cons.exit35
	beqz	$a0, .LBB148_64
# %bb.82:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	b	.LBB148_64
.LBB148_83:                             # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s1, 2
	beqz	$a0, .LBB148_86
# %bb.84:                               # %.thread
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB148_113
.LBB148_85:                             # %.thread.thread125
	ld.d	$s2, $s1, 8
	b	.LBB148_87
.LBB148_86:
	move	$s2, $zero
.LBB148_87:                             # %car.exit59
	move	$a0, $s0
	pcaddu18i	$ra, %call36(reverse)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(reverse)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$s1, $a0
	bne	$a1, $a2, .LBB148_91
# %bb.88:
	pcalau12i	$s4, %pc_hi20(heap)
	ld.d	$s3, $s4, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s3, $a0, .LBB148_90
# %bb.89:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB148_90:
	addi.d	$a0, $s3, 24
	st.d	$a0, $s4, %pc_lo12(heap)
	b	.LBB148_94
.LBB148_91:
	pcalau12i	$s4, %pc_hi20(freelist)
	ld.d	$s3, $s4, %pc_lo12(freelist)
	bnez	$s3, .LBB148_93
# %bb.92:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s4, %pc_lo12(freelist)
.LBB148_93:
	ld.d	$a0, $s3, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s4, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB148_94:                             # %cons.exit67
	st.w	$s6, $s3, 0
	ld.d	$a0, $s7, %pc_lo12(gc_kind_copying)
	st.d	$s2, $s3, 8
	ori	$a1, $zero, 1
	st.d	$zero, $s3, 16
	bne	$a0, $a1, .LBB148_98
# %bb.95:
	pcalau12i	$s4, %pc_hi20(heap)
	ld.d	$s2, $s4, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s2, $a0, .LBB148_97
# %bb.96:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB148_97:
	addi.d	$a0, $s2, 24
	st.d	$a0, $s4, %pc_lo12(heap)
	b	.LBB148_101
.LBB148_98:
	pcalau12i	$s4, %pc_hi20(freelist)
	ld.d	$s2, $s4, %pc_lo12(freelist)
	bnez	$s2, .LBB148_100
# %bb.99:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s4, %pc_lo12(freelist)
.LBB148_100:
	ld.d	$a0, $s2, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s4, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB148_101:                            # %cons.exit71
	st.w	$s6, $s2, 0
	ld.d	$a0, $s7, %pc_lo12(gc_kind_copying)
	st.d	$s1, $s2, 8
	ori	$a1, $zero, 1
	st.d	$s3, $s2, 16
	bne	$a0, $a1, .LBB148_105
# %bb.102:
	pcalau12i	$s3, %pc_hi20(heap)
	ld.d	$s1, $s3, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s1, $a0, .LBB148_104
# %bb.103:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB148_104:
	addi.d	$a0, $s1, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	st.w	$s6, $s1, 0
	st.d	$s0, $s1, 8
	st.d	$s2, $s1, 16
	bnez	$fp, .LBB148_108
	b	.LBB148_109
.LBB148_105:
	pcalau12i	$s3, %pc_hi20(freelist)
	ld.d	$s1, $s3, %pc_lo12(freelist)
	bnez	$s1, .LBB148_107
# %bb.106:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s3, %pc_lo12(freelist)
.LBB148_107:
	ld.d	$a0, $s1, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s3, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
	st.w	$s6, $s1, 0
	st.d	$s0, $s1, 8
	st.d	$s2, $s1, 16
	beqz	$fp, .LBB148_109
.LBB148_108:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB148_110
.LBB148_109:                            # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB148_110:
	st.d	$s1, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $fp, 2
	ori	$a2, $zero, 1
	move	$s0, $a0
	beq	$a1, $a2, .LBB148_112
# %bb.111:                              # %.critedge.i76
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB148_112:                            # %setcar.exit
	st.d	$s0, $fp, 8
	move	$a0, $fp
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB148_113:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $s1
	b	.LBB148_78
.LBB148_114:
	pcalau12i	$s4, %pc_hi20(freelist)
	ld.d	$s2, $s4, %pc_lo12(freelist)
	bnez	$s2, .LBB148_116
# %bb.115:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s4, %pc_lo12(freelist)
.LBB148_116:
	ld.d	$a0, $s2, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s4, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB148_117:                            # %cons.exit63
	st.w	$s6, $s2, 0
	st.d	$s3, $s2, 8
	st.d	$s1, $s2, 16
	b	.LBB148_87
.Lfunc_end148:
	.size	let_macro, .Lfunc_end148-let_macro
                                        # -- End function
	.globl	leval_quote                     # -- Begin function leval_quote
	.p2align	5
	.type	leval_quote,@function
leval_quote:                            # @leval_quote
# %bb.0:
	beqz	$a0, .LBB149_4
# %bb.1:
	move	$a1, $a0
	ld.hu	$a0, $a0, 2
	beqz	$a0, .LBB149_4
# %bb.2:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB149_5
# %bb.3:
	ld.d	$a0, $a1, 8
	ret
.LBB149_4:
	move	$a0, $zero
	ret
.LBB149_5:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end149:
	.size	leval_quote, .Lfunc_end149-leval_quote
                                        # -- End function
	.globl	leval_tenv                      # -- Begin function leval_tenv
	.p2align	5
	.type	leval_tenv,@function
leval_tenv:                             # @leval_tenv
# %bb.0:
	move	$a0, $a1
	ret
.Lfunc_end150:
	.size	leval_tenv, .Lfunc_end150-leval_tenv
                                        # -- End function
	.globl	leval_while                     # -- Begin function leval_while
	.p2align	5
	.type	leval_while,@function
leval_while:                            # @leval_while
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	beqz	$a0, .LBB151_2
# %bb.1:
	move	$s0, $a0
	ori	$s4, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$s2, $a0, %pc_lo12(.L.str.28)
	b	.LBB151_5
	.p2align	4, , 16
.LBB151_2:                              # %car.exit.thread.us
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB151_2
.LBB151_3:                              # %.split18.us
	move	$a0, $zero
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
	.p2align	4, , 16
.LBB151_4:                              # %.loopexit.sink.split
                                        #   in Loop: Header=BB151_5 Depth=1
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB151_5:                              # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB151_13 Depth 2
	ld.hu	$a0, $s0, 2
	beqz	$a0, .LBB151_9
# %bb.6:                                # %.split
                                        #   in Loop: Header=BB151_5 Depth=1
	bne	$a0, $s4, .LBB151_8
# %bb.7:                                #   in Loop: Header=BB151_5 Depth=1
	ld.d	$a0, $s0, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB151_10
	b	.LBB151_3
	.p2align	4, , 16
.LBB151_8:                              #   in Loop: Header=BB151_5 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB151_9:                              # %car.exit
                                        #   in Loop: Header=BB151_5 Depth=1
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB151_3
.LBB151_10:                             #   in Loop: Header=BB151_5 Depth=1
	ld.hu	$a0, $s0, 2
	beqz	$a0, .LBB151_5
# %bb.11:                               #   in Loop: Header=BB151_5 Depth=1
	move	$s3, $s0
	bne	$a0, $s4, .LBB151_4
# %bb.12:                               # %cdr.exit
                                        #   in Loop: Header=BB151_5 Depth=1
	ld.d	$s3, $s0, 16
	beqz	$s3, .LBB151_5
	.p2align	4, , 16
.LBB151_13:                             # %.lr.ph
                                        #   Parent Loop BB151_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $s3, 2
	beqz	$a0, .LBB151_17
# %bb.14:                               # %.lr.ph
                                        #   in Loop: Header=BB151_13 Depth=2
	bne	$a0, $s4, .LBB151_16
# %bb.15:                               #   in Loop: Header=BB151_13 Depth=2
	ld.d	$a0, $s3, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s3, 2
	beq	$a0, $s4, .LBB151_18
	b	.LBB151_19
	.p2align	4, , 16
.LBB151_16:                             #   in Loop: Header=BB151_13 Depth=2
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB151_17:                             #   in Loop: Header=BB151_13 Depth=2
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s3, 2
	bne	$a0, $s4, .LBB151_19
.LBB151_18:                             # %cdr.exit12
                                        #   in Loop: Header=BB151_13 Depth=2
	ld.d	$s3, $s3, 16
	bnez	$s3, .LBB151_13
	b	.LBB151_5
.LBB151_19:                             #   in Loop: Header=BB151_5 Depth=1
	beqz	$a0, .LBB151_5
	b	.LBB151_4
.Lfunc_end151:
	.size	leval_while, .Lfunc_end151-leval_while
                                        # -- End function
	.globl	symbolconc                      # -- Begin function symbolconc
	.p2align	5
	.type	symbolconc,@function
symbolconc:                             # @symbolconc
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
	pcalau12i	$s5, %pc_hi20(tkbuffer)
	ld.d	$a1, $s5, %pc_lo12(tkbuffer)
	st.b	$zero, $a1, 0
	beqz	$a0, .LBB152_15
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$s0, $a0, %pc_lo12(.L.str.97)
	lu12i.w	$a0, 1
	ori	$s6, $a0, 1025
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$s1, $a0, %pc_lo12(.L.str.98)
	ori	$s7, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s2, $a0, %pc_lo12(.L.str.27)
	move	$s8, $zero
	.p2align	4, , 16
.LBB152_2:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $fp, 2
	beqz	$a0, .LBB152_7
# %bb.3:                                # %.lr.ph
                                        #   in Loop: Header=BB152_2 Depth=1
	bne	$a0, $s7, .LBB152_6
# %bb.4:                                # %car.exit
                                        #   in Loop: Header=BB152_2 Depth=1
	ld.d	$s3, $fp, 8
	beqz	$s3, .LBB152_7
# %bb.5:                                #   in Loop: Header=BB152_2 Depth=1
	ld.hu	$a0, $s3, 2
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB152_8
	b	.LBB152_9
	.p2align	4, , 16
.LBB152_6:                              #   in Loop: Header=BB152_2 Depth=1
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB152_7:                              #   in Loop: Header=BB152_2 Depth=1
	move	$s3, $zero
.LBB152_8:                              # %.critedge
                                        #   in Loop: Header=BB152_2 Depth=1
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB152_9:                              #   in Loop: Header=BB152_2 Depth=1
	ld.d	$s4, $s3, 8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s8, $a0, $s8
	blt	$s8, $s6, .LBB152_11
# %bb.10:                               #   in Loop: Header=BB152_2 Depth=1
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s3, 8
.LBB152_11:                             #   in Loop: Header=BB152_2 Depth=1
	ld.d	$a0, $s5, %pc_lo12(tkbuffer)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $fp, 2
	bne	$a0, $s7, .LBB152_13
# %bb.12:                               # %cdr.exit
                                        #   in Loop: Header=BB152_2 Depth=1
	ld.d	$fp, $fp, 16
	bnez	$fp, .LBB152_2
	b	.LBB152_15
.LBB152_13:
	beqz	$a0, .LBB152_15
# %bb.14:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB152_15:                             # %._crit_edge
	ld.d	$a0, $s5, %pc_lo12(tkbuffer)
	ori	$a1, $zero, 1
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
	pcaddu18i	$t8, %call36(gen_intern)
	jr	$t8
.Lfunc_end152:
	.size	symbolconc, .Lfunc_end152-symbolconc
                                        # -- End function
	.globl	subr_kind_str                   # -- Begin function subr_kind_str
	.p2align	5
	.type	subr_kind_str,@function
subr_kind_str:                          # @subr_kind_str
# %bb.0:
	addi.d	$a0, $a0, -4
	ori	$a1, $zero, 17
	bltu	$a1, $a0, .LBB153_2
# %bb.1:                                # %switch.lookup
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.lprin1g)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.lprin1g)
	ldx.d	$a0, $a1, $a0
	ret
.LBB153_2:
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a0, $a0, %pc_lo12(.L.str.109)
	ret
.Lfunc_end153:
	.size	subr_kind_str, .Lfunc_end153-subr_kind_str
                                        # -- End function
	.globl	lprin1g                         # -- Begin function lprin1g
	.p2align	5
	.type	lprin1g,@function
lprin1g:                                # @lprin1g
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(stack_limit_ptr)
	ld.d	$a2, $a2, %pc_lo12(stack_limit_ptr)
	addi.d	$a3, $sp, 16
	move	$fp, $a1
	move	$s0, $a0
	bgeu	$a3, $a2, .LBB154_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB154_2:
	beqz	$s0, .LBB154_7
# %bb.3:
	ld.h	$s2, $s0, 2
	bstrpick.d	$s3, $s2, 15, 0
	ori	$a0, $zero, 21
	bltu	$a0, $s3, .LBB154_15
# %bb.4:
	slli.d	$a0, $s3, 2
	pcalau12i	$a1, %pc_hi20(.LJTI154_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI154_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB154_5:
	pcalau12i	$s1, %pc_hi20(tkbuffer)
	ld.d	$a0, $s1, %pc_lo12(tkbuffer)
	addi.d	$a1, $s3, -4
	bstrpick.d	$a1, $a1, 15, 0
	ori	$a2, $zero, 17
	bltu	$a2, $a1, .LBB154_8
# %bb.6:                                # %switch.lookup
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(.Lswitch.table.lprin1g)
	addi.d	$a2, $a2, %pc_lo12(.Lswitch.table.lprin1g)
	ldx.d	$a2, $a2, $a1
	b	.LBB154_9
.LBB154_7:                              # %.thread
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a0, $a0, %pc_lo12(.L.str.110)
	b	.LBB154_11
.LBB154_8:
	pcalau12i	$a1, %pc_hi20(.L.str.109)
	addi.d	$a2, $a1, %pc_lo12(.L.str.109)
.LBB154_9:                              # %subr_kind_str.exit
	pcalau12i	$a1, %pc_hi20(.L.str.117)
	addi.d	$a1, $a1, %pc_lo12(.L.str.117)
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(tkbuffer)
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 16
	jirl	$ra, $a2, 0
	ld.d	$a0, $s0, 8
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 16
	jirl	$ra, $a2, 0
.LBB154_10:
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
.LBB154_11:
	jirl	$ra, $a2, 0
.LBB154_12:
	move	$a0, $zero
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB154_13:
	fld.d	$fa0, $s0, 8
	ftintrz.l.d	$fa1, $fa0
	movfr2gr.d	$a2, $fa1
	movgr2fr.d	$fa1, $a2
	pcalau12i	$s0, %pc_hi20(tkbuffer)
	ld.d	$a0, $s0, %pc_lo12(tkbuffer)
	ffint.d.l	$fa1, $fa1
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB154_30
# %bb.14:
	pcalau12i	$a1, %pc_hi20(.L.str.115)
	addi.d	$a1, $a1, %pc_lo12(.L.str.115)
	b	.LBB154_31
.LBB154_15:
	pcalau12i	$s4, %pc_hi20(user_types)
	ld.d	$s1, $s4, %pc_lo12(user_types)
	bnez	$s1, .LBB154_19
# %bb.16:
	lu12i.w	$a0, 1
	ori	$a1, $a0, 3904
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB154_18
# %bb.17:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB154_18:                             # %must_malloc.exit.i
	st.d	$s1, $s4, %pc_lo12(user_types)
.LBB154_19:
	bstrpick.d	$a0, $s3, 15, 0
	ori	$a1, $zero, 99
	bltu	$a1, $a0, .LBB154_52
# %bb.20:                               # %get_user_type_hooks.exit
	slli.d	$a0, $s2, 6
	alsl.d	$a0, $s2, $a0, 4
	add.d	$a0, $s1, $a0
	ld.d	$a2, $a0, 32
	beqz	$a2, .LBB154_32
# %bb.21:
	move	$a0, $s0
	move	$a1, $fp
	jirl	$ra, $a2, 0
	b	.LBB154_12
.LBB154_22:
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a0, $a0, %pc_lo12(.L.str.111)
	jirl	$ra, $a2, 0
	ld.hu	$a0, $s0, 2
	beqz	$a0, .LBB154_35
# %bb.23:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB154_34
# %bb.24:
	ld.d	$a0, $s0, 8
	b	.LBB154_36
.LBB154_25:
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a0, $a0, %pc_lo12(.L.str.119)
	jirl	$ra, $a2, 0
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB154_28
# %bb.26:
	ld.hu	$a1, $a0, 2
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB154_28
# %bb.27:
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(lprin1g)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a0, $a0, %pc_lo12(.L.str.112)
	jirl	$ra, $a2, 0
	ld.d	$a0, $s0, 16
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
.LBB154_28:                             # %.critedge40
	move	$a1, $fp
	pcaddu18i	$ra, %call36(lprin1g)
	jirl	$ra, $ra, 0
	b	.LBB154_10
.LBB154_29:
	ld.d	$a0, $s0, 8
	b	.LBB154_33
.LBB154_30:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.116)
	addi.d	$a1, $a1, %pc_lo12(.L.str.116)
.LBB154_31:
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(tkbuffer)
	b	.LBB154_33
.LBB154_32:
	pcalau12i	$s1, %pc_hi20(tkbuffer)
	ld.d	$a0, $s1, %pc_lo12(tkbuffer)
	ld.h	$a2, $s0, 2
	pcalau12i	$a1, %pc_hi20(.L.str.120)
	addi.d	$a1, $a1, %pc_lo12(.L.str.120)
	move	$a3, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(tkbuffer)
.LBB154_33:
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 16
	b	.LBB154_11
.LBB154_34:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB154_35:
	move	$a0, $zero
.LBB154_36:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(lprin1g)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s0, 2
	beqz	$a0, .LBB154_50
# %bb.37:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB154_49
# %bb.38:                               # %cdr.exit
	ld.d	$s0, $s0, 16
	beqz	$s0, .LBB154_50
# %bb.39:                               # %.lr.ph.preheader
	ori	$s3, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$s1, $a0, %pc_lo12(.L.str.112)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s2, $a0, %pc_lo12(.L.str.27)
.LBB154_40:                             # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s0, 2
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 16
	bne	$a0, $s3, .LBB154_51
# %bb.41:                               #   in Loop: Header=BB154_40 Depth=1
	move	$a0, $s1
	jirl	$ra, $a2, 0
	ld.hu	$a0, $s0, 2
	beqz	$a0, .LBB154_45
# %bb.42:                               #   in Loop: Header=BB154_40 Depth=1
	bne	$a0, $s3, .LBB154_44
# %bb.43:                               #   in Loop: Header=BB154_40 Depth=1
	ld.d	$a0, $s0, 8
	b	.LBB154_46
.LBB154_44:                             #   in Loop: Header=BB154_40 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB154_45:                             #   in Loop: Header=BB154_40 Depth=1
	move	$a0, $zero
.LBB154_46:                             #   in Loop: Header=BB154_40 Depth=1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(lprin1g)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s0, 2
	bne	$a0, $s3, .LBB154_48
# %bb.47:                               # %cdr.exit45
                                        #   in Loop: Header=BB154_40 Depth=1
	ld.d	$s0, $s0, 16
	bnez	$s0, .LBB154_40
	b	.LBB154_50
.LBB154_48:
	beqz	$a0, .LBB154_50
.LBB154_49:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB154_50:                             # %.loopexit
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a0, $a0, %pc_lo12(.L.str.114)
	b	.LBB154_11
.LBB154_51:                             # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a0, $a0, %pc_lo12(.L.str.113)
	jirl	$ra, $a2, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(lprin1g)
	jirl	$ra, $ra, 0
	b	.LBB154_50
.LBB154_52:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.Lfunc_end154:
	.size	lprin1g, .Lfunc_end154-lprin1g
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI154_0:
	.word	.LBB154_7-.LJTI154_0
	.word	.LBB154_22-.LJTI154_0
	.word	.LBB154_13-.LJTI154_0
	.word	.LBB154_29-.LJTI154_0
	.word	.LBB154_5-.LJTI154_0
	.word	.LBB154_5-.LJTI154_0
	.word	.LBB154_5-.LJTI154_0
	.word	.LBB154_5-.LJTI154_0
	.word	.LBB154_5-.LJTI154_0
	.word	.LBB154_5-.LJTI154_0
	.word	.LBB154_5-.LJTI154_0
	.word	.LBB154_25-.LJTI154_0
	.word	.LBB154_15-.LJTI154_0
	.word	.LBB154_15-.LJTI154_0
	.word	.LBB154_15-.LJTI154_0
	.word	.LBB154_15-.LJTI154_0
	.word	.LBB154_15-.LJTI154_0
	.word	.LBB154_15-.LJTI154_0
	.word	.LBB154_15-.LJTI154_0
	.word	.LBB154_5-.LJTI154_0
	.word	.LBB154_5-.LJTI154_0
	.word	.LBB154_5-.LJTI154_0
                                        # -- End function
	.text
	.globl	get_c_file                      # -- Begin function get_c_file
	.p2align	5
	.type	get_c_file,@function
get_c_file:                             # @get_c_file
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	bnez	$a0, .LBB155_2
# %bb.1:
	bnez	$a1, .LBB155_7
.LBB155_2:
	beqz	$fp, .LBB155_4
# %bb.3:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB155_5
.LBB155_4:                              # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB155_5:
	ld.d	$a1, $fp, 8
	bnez	$a1, .LBB155_7
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.151)
	addi.d	$a0, $a0, %pc_lo12(.L.str.151)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
.LBB155_7:
	move	$a0, $a1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end155:
	.size	get_c_file, .Lfunc_end155-get_c_file
                                        # -- End function
	.globl	lprin1f                         # -- Begin function lprin1f
	.p2align	5
	.type	lprin1f,@function
lprin1f:                                # @lprin1f
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$zero, $sp, 0
	pcalau12i	$a2, %pc_hi20(fputs_fcn)
	addi.d	$a2, $a2, %pc_lo12(fputs_fcn)
	st.d	$a2, $sp, 8
	st.d	$a1, $sp, 16
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(lprin1g)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end156:
	.size	lprin1f, .Lfunc_end156-lprin1f
                                        # -- End function
	.globl	lprin1                          # -- Begin function lprin1
	.p2align	5
	.type	lprin1,@function
lprin1:                                 # @lprin1
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a1
	bnez	$a1, .LBB157_2
# %bb.1:
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB157_7
.LBB157_2:
	beqz	$fp, .LBB157_4
# %bb.3:
	ld.hu	$a1, $fp, 2
	ori	$a2, $zero, 17
	beq	$a1, $a2, .LBB157_5
.LBB157_4:                              # %.critedge.i
	pcalau12i	$a1, %pc_hi20(.L.str.134)
	addi.d	$a1, $a1, %pc_lo12(.L.str.134)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB157_5:
	ld.d	$a1, $fp, 8
	bnez	$a1, .LBB157_7
# %bb.6:
	pcalau12i	$a1, %pc_hi20(.L.str.151)
	addi.d	$a1, $a1, %pc_lo12(.L.str.151)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a1, $fp, 8
.LBB157_7:                              # %get_c_file.exit
	st.d	$zero, $sp, 0
	pcalau12i	$a2, %pc_hi20(fputs_fcn)
	addi.d	$a2, $a2, %pc_lo12(fputs_fcn)
	st.d	$a2, $sp, 8
	st.d	$a1, $sp, 16
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(lprin1g)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end157:
	.size	lprin1, .Lfunc_end157-lprin1
                                        # -- End function
	.globl	lreadf                          # -- Begin function lreadf
	.p2align	5
	.type	lreadf,@function
lreadf:                                 # @lreadf
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
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(f_getc)
	addi.d	$a0, $a0, %pc_lo12(f_getc)
	st.d	$a0, $sp, 16
	pcalau12i	$a0, %pc_hi20(f_ungetc)
	addi.d	$a0, $a0, %pc_lo12(f_ungetc)
	st.d	$a0, $sp, 24
	pcalau12i	$s2, %pc_hi20(nointerrupt)
	ld.d	$s4, $s2, %pc_lo12(nointerrupt)
	st.d	$fp, $sp, 32
	ori	$s1, $zero, 1
	st.d	$s1, $s2, %pc_lo12(nointerrupt)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s4, $s2, %pc_lo12(nointerrupt)
	pcalau12i	$s3, %pc_hi20(interrupt_differed)
	bnez	$s4, .LBB158_3
# %bb.1:
	ld.d	$a0, $s3, %pc_lo12(interrupt_differed)
	bne	$a0, $s1, .LBB158_3
# %bb.2:
	st.d	$zero, $s3, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB158_3:                              # %f_getc.exit
	addi.w	$s4, $zero, -1
	beq	$s0, $s4, .LBB158_14
# %bb.4:                                # %.lr.ph.i.i.preheader
	ori	$s5, $zero, 59
	ori	$s6, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$s1, $a0, %pc_lo12(.L.str.13)
	move	$s7, $zero
	b	.LBB158_6
	.p2align	4, , 16
.LBB158_5:                              # %f_getc.exit7
                                        #   in Loop: Header=BB158_6 Depth=1
	beq	$s0, $s4, .LBB158_14
.LBB158_6:                              # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	beqz	$s7, .LBB158_11
# %bb.7:                                #   in Loop: Header=BB158_6 Depth=1
	addi.d	$a0, $s0, -10
	sltu	$s7, $zero, $a0
.LBB158_8:                              #   in Loop: Header=BB158_6 Depth=1
	ld.d	$s8, $s2, %pc_lo12(nointerrupt)
	st.d	$s6, $s2, %pc_lo12(nointerrupt)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s8, $s2, %pc_lo12(nointerrupt)
	bnez	$s8, .LBB158_5
# %bb.9:                                #   in Loop: Header=BB158_6 Depth=1
	ld.d	$a0, $s3, %pc_lo12(interrupt_differed)
	bne	$a0, $s6, .LBB158_5
# %bb.10:                               #   in Loop: Header=BB158_6 Depth=1
	st.d	$zero, $s3, %pc_lo12(interrupt_differed)
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	b	.LBB158_5
	.p2align	4, , 16
.LBB158_11:                             #   in Loop: Header=BB158_6 Depth=1
	ori	$s7, $zero, 1
	beq	$s0, $s5, .LBB158_8
# %bb.12:                               # %.thread17.us.i.i
                                        #   in Loop: Header=BB158_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bgez	$a0, .LBB158_16
# %bb.13:                               #   in Loop: Header=BB158_6 Depth=1
	move	$s7, $zero
	b	.LBB158_8
.LBB158_14:                             # %.loopexit.i
	pcalau12i	$a0, %pc_hi20(eof_val)
	ld.d	$a0, $a0, %pc_lo12(eof_val)
.LBB158_15:                             # %readtl.exit
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
.LBB158_16:                             # %flush_ws.exit.i
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(lreadr)
	jirl	$ra, $ra, 0
	b	.LBB158_15
.Lfunc_end158:
	.size	lreadf, .Lfunc_end158-lreadf
                                        # -- End function
	.globl	f_getc                          # -- Begin function f_getc
	.p2align	5
	.type	f_getc,@function
f_getc:                                 # @f_getc
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(nointerrupt)
	ld.d	$s1, $s0, %pc_lo12(nointerrupt)
	ori	$fp, $zero, 1
	st.d	$fp, $s0, %pc_lo12(nointerrupt)
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	st.d	$s1, $s0, %pc_lo12(nointerrupt)
	bnez	$s1, .LBB159_3
# %bb.1:
	pcalau12i	$a1, %pc_hi20(interrupt_differed)
	ld.d	$a2, $a1, %pc_lo12(interrupt_differed)
	bne	$a2, $fp, .LBB159_3
# %bb.2:
	st.d	$zero, $a1, %pc_lo12(interrupt_differed)
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	move	$fp, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB159_3:                              # %no_interrupt.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end159:
	.size	f_getc, .Lfunc_end159-f_getc
                                        # -- End function
	.globl	f_ungetc                        # -- Begin function f_ungetc
	.p2align	5
	.type	f_ungetc,@function
f_ungetc:                               # @f_ungetc
# %bb.0:
	pcaddu18i	$t8, %call36(ungetc)
	jr	$t8
.Lfunc_end160:
	.size	f_ungetc, .Lfunc_end160-f_ungetc
                                        # -- End function
	.globl	flush_ws                        # -- Begin function flush_ws
	.p2align	5
	.type	flush_ws,@function
flush_ws:                               # @flush_ws
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a1, .LBB161_8
# %bb.1:                                # %.split.preheader
	move	$s1, $a1
	ori	$s4, $zero, 1
	addi.w	$s2, $zero, -1
	ori	$s3, $zero, 59
	b	.LBB161_3
	.p2align	4, , 16
.LBB161_2:                              #   in Loop: Header=BB161_3 Depth=1
	addi.d	$a0, $s0, -10
	sltui	$s4, $a0, 1
.LBB161_3:                              # %.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 0
	ld.d	$a0, $fp, 16
	jirl	$ra, $a1, 0
	move	$s0, $a0
	andi	$s4, $s4, 1
	beq	$a0, $s2, .LBB161_6
# %bb.4:                                #   in Loop: Header=BB161_3 Depth=1
	beqz	$s4, .LBB161_2
# %bb.5:                                #   in Loop: Header=BB161_3 Depth=1
	move	$s4, $zero
	beq	$s0, $s3, .LBB161_3
	b	.LBB161_7
	.p2align	4, , 16
.LBB161_6:                              # %.thread
                                        #   in Loop: Header=BB161_3 Depth=1
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB161_2
.LBB161_7:                              # %.thread17
                                        #   in Loop: Header=BB161_3 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	ori	$s4, $zero, 1
	bltz	$a0, .LBB161_3
	b	.LBB161_17
.LBB161_8:                              # %.split.us
	ld.d	$a1, $fp, 0
	ld.d	$a0, $fp, 16
	jirl	$ra, $a1, 0
	addi.w	$s0, $zero, -1
	beq	$a0, $s0, .LBB161_17
# %bb.9:                                # %.lr.ph.preheader
	move	$s3, $zero
	ori	$s2, $zero, 59
	addi.w	$s1, $zero, -1
	move	$s0, $a0
	b	.LBB161_12
	.p2align	4, , 16
.LBB161_10:                             #   in Loop: Header=BB161_12 Depth=1
	addi.d	$a0, $s4, -10
	sltu	$s3, $zero, $a0
.LBB161_11:                             #   in Loop: Header=BB161_12 Depth=1
	ld.d	$a1, $fp, 0
	ld.d	$a0, $fp, 16
	jirl	$ra, $a1, 0
	move	$s0, $a0
	beq	$a0, $s1, .LBB161_16
.LBB161_12:                             # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s4, $s0, 0
	bnez	$s3, .LBB161_10
# %bb.13:                               #   in Loop: Header=BB161_12 Depth=1
	ori	$s3, $zero, 1
	beq	$s4, $s2, .LBB161_11
# %bb.14:                               # %.thread17.us
                                        #   in Loop: Header=BB161_12 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bgez	$a0, .LBB161_17
# %bb.15:                               #   in Loop: Header=BB161_12 Depth=1
	move	$s3, $zero
	b	.LBB161_11
.LBB161_16:
	move	$s0, $s1
.LBB161_17:                             # %.split19.us
	addi.w	$a0, $s0, 0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end161:
	.size	flush_ws, .Lfunc_end161-flush_ws
                                        # -- End function
	.globl	readtl                          # -- Begin function readtl
	.p2align	5
	.type	readtl,@function
readtl:                                 # @readtl
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 16
	jirl	$ra, $a1, 0
	addi.w	$s1, $zero, -1
	beq	$a0, $s1, .LBB162_8
# %bb.1:                                # %.lr.ph.i.preheader
	move	$s3, $zero
	ori	$s2, $zero, 59
	b	.LBB162_4
	.p2align	4, , 16
.LBB162_2:                              #   in Loop: Header=BB162_4 Depth=1
	addi.d	$a0, $s0, -10
	sltu	$s3, $zero, $a0
.LBB162_3:                              #   in Loop: Header=BB162_4 Depth=1
	ld.d	$a1, $fp, 0
	ld.d	$a0, $fp, 16
	jirl	$ra, $a1, 0
	beq	$a0, $s1, .LBB162_8
.LBB162_4:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s0, $a0, 0
	bnez	$s3, .LBB162_2
# %bb.5:                                #   in Loop: Header=BB162_4 Depth=1
	ori	$s3, $zero, 1
	beq	$s0, $s2, .LBB162_3
# %bb.6:                                # %.thread17.us.i
                                        #   in Loop: Header=BB162_4 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bgez	$a0, .LBB162_9
# %bb.7:                                #   in Loop: Header=BB162_4 Depth=1
	move	$s3, $zero
	b	.LBB162_3
.LBB162_8:                              # %.loopexit
	pcalau12i	$a0, %pc_hi20(eof_val)
	ld.d	$a0, $a0, %pc_lo12(eof_val)
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB162_9:                              # %flush_ws.exit
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 16
	move	$a0, $s0
	jirl	$ra, $a2, 0
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(lreadr)
	jr	$t8
.Lfunc_end162:
	.size	readtl, .Lfunc_end162-readtl
                                        # -- End function
	.globl	lreadr                          # -- Begin function lreadr
	.p2align	5
	.type	lreadr,@function
lreadr:                                 # @lreadr
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
	pcalau12i	$a1, %pc_hi20(tkbuffer)
	pcalau12i	$a2, %pc_hi20(stack_limit_ptr)
	ld.d	$a2, $a2, %pc_lo12(stack_limit_ptr)
	ld.d	$s0, $a1, %pc_lo12(tkbuffer)
	addi.d	$a1, $sp, 8
	move	$fp, $a0
	bgeu	$a1, $a2, .LBB163_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB163_2:
	ori	$s5, $zero, 1
	addi.w	$s4, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$s2, $a0, %pc_lo12(.L.str.122)
	ori	$s3, $zero, 59
	b	.LBB163_4
	.p2align	4, , 16
.LBB163_3:                              #   in Loop: Header=BB163_4 Depth=1
	addi.d	$a0, $s1, -10
	sltui	$s5, $a0, 1
.LBB163_4:                              # %.split.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 0
	ld.d	$a0, $fp, 16
	jirl	$ra, $a1, 0
	move	$s1, $a0
	andi	$s5, $s5, 1
	beq	$a0, $s4, .LBB163_7
# %bb.5:                                #   in Loop: Header=BB163_4 Depth=1
	beqz	$s5, .LBB163_3
# %bb.6:                                #   in Loop: Header=BB163_4 Depth=1
	move	$s5, $zero
	beq	$s1, $s3, .LBB163_4
	b	.LBB163_8
	.p2align	4, , 16
.LBB163_7:                              # %.thread.i
                                        #   in Loop: Header=BB163_4 Depth=1
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB163_3
.LBB163_8:                              # %.thread17.i
                                        #   in Loop: Header=BB163_4 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s1, 1
	ldx.hu	$a1, $a1, $a2
	slli.d	$a1, $a1, 50
	ori	$s5, $zero, 1
	bltz	$a1, .LBB163_4
# %bb.9:                                # %flush_ws.exit
	addi.d	$a1, $s1, -34
	ori	$a2, $zero, 62
	bltu	$a2, $a1, .LBB163_12
# %bb.10:                               # %flush_ws.exit
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI163_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI163_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB163_11:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lreadstring)
	jirl	$ra, $ra, 0
	b	.LBB163_54
.LBB163_12:
	move	$s5, $a0
	pcalau12i	$a0, %pc_hi20(user_readm)
	ld.d	$s2, $a0, %pc_lo12(user_readm)
	beqz	$s2, .LBB163_37
# %bb.13:
	pcalau12i	$a0, %pc_hi20(user_ch_readm)
	ld.d	$a0, $a0, %pc_lo12(user_ch_readm)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB163_37
# %bb.14:
	move	$a0, $s1
	move	$a1, $fp
	jirl	$ra, $s2, 0
	b	.LBB163_54
.LBB163_15:
	ld.d	$a1, $fp, 0
	ld.d	$a0, $fp, 16
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 64
	beq	$a0, $a1, .LBB163_44
# %bb.16:
	ori	$a1, $zero, 46
	bne	$a0, $a1, .LBB163_45
# %bb.17:
	pcalau12i	$a0, %pc_hi20(.L.str.126)
	addi.d	$a0, $a0, %pc_lo12(.L.str.126)
	b	.LBB163_46
.LBB163_18:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lreadsharp)
	jirl	$ra, $ra, 0
	b	.LBB163_54
.LBB163_19:
	pcalau12i	$a0, %pc_hi20(.L.str.124)
	addi.d	$a0, $a0, %pc_lo12(.L.str.124)
	b	.LBB163_46
.LBB163_20:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lreadparen)
	jirl	$ra, $ra, 0
	b	.LBB163_54
.LBB163_21:
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a0, $a0, %pc_lo12(.L.str.123)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB163_22:
	pcalau12i	$a0, %pc_hi20(sym_quote)
	ld.d	$s0, $a0, %pc_lo12(sym_quote)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lreadr)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(gc_kind_copying)
	ld.d	$a1, $s3, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB163_26
# %bb.23:
	pcalau12i	$s2, %pc_hi20(heap)
	ld.d	$s1, $s2, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s1, $a0, .LBB163_25
# %bb.24:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB163_25:
	addi.d	$a0, $s1, 24
	st.d	$a0, $s2, %pc_lo12(heap)
	b	.LBB163_29
.LBB163_26:
	pcalau12i	$s2, %pc_hi20(freelist)
	ld.d	$s1, $s2, %pc_lo12(freelist)
	bnez	$s1, .LBB163_28
# %bb.27:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s2, %pc_lo12(freelist)
.LBB163_28:
	ld.d	$a0, $s1, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB163_29:                             # %cons.exit
	lu12i.w	$s2, 16
	st.w	$s2, $s1, 0
	ld.d	$a0, $s3, %pc_lo12(gc_kind_copying)
	st.d	$fp, $s1, 8
	ori	$a1, $zero, 1
	st.d	$zero, $s1, 16
	bne	$a0, $a1, .LBB163_33
# %bb.30:
	pcalau12i	$fp, %pc_hi20(heap)
	ld.d	$a0, $fp, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB163_32
# %bb.31:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s3, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s3
.LBB163_32:
	addi.d	$a1, $a0, 24
	st.d	$a1, $fp, %pc_lo12(heap)
	b	.LBB163_36
.LBB163_33:
	pcalau12i	$fp, %pc_hi20(freelist)
	ld.d	$a0, $fp, %pc_lo12(freelist)
	bnez	$a0, .LBB163_35
# %bb.34:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(freelist)
.LBB163_35:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $fp, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB163_36:                             # %cons.exit37
	st.w	$s2, $a0, 0
	st.d	$s0, $a0, 8
	st.d	$s1, $a0, 16
	b	.LBB163_54
.LBB163_37:
	st.b	$s1, $s0, 0
	ori	$s1, $zero, 1
	lu12i.w	$a0, 1
	ori	$s6, $a0, 1023
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$s2, $a0, %pc_lo12(.L.str.128)
	pcalau12i	$s7, %pc_hi20(user_te_readm)
	.p2align	4, , 16
.LBB163_38:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 0
	ld.d	$a0, $fp, 16
	jirl	$ra, $a1, 0
	beq	$a0, $s4, .LBB163_56
# %bb.39:                               #   in Loop: Header=BB163_38 Depth=1
	move	$s3, $a0
	ld.d	$a0, $s5, 0
	slli.d	$a1, $s3, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bltz	$a0, .LBB163_56
# %bb.40:                               #   in Loop: Header=BB163_38 Depth=1
	ori	$a2, $zero, 8
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB163_55
# %bb.41:                               #   in Loop: Header=BB163_38 Depth=1
	ld.d	$a0, $s7, %pc_lo12(user_te_readm)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB163_55
# %bb.42:                               #   in Loop: Header=BB163_38 Depth=1
	stx.b	$s3, $s0, $s1
	addi.w	$s6, $s6, -1
	addi.d	$s1, $s1, 1
	bnez	$s6, .LBB163_38
# %bb.43:
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a0, $a0, %pc_lo12(.L.str.129)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB163_54
.LBB163_44:
	pcalau12i	$a0, %pc_hi20(.L.str.125)
	addi.d	$a0, $a0, %pc_lo12(.L.str.125)
	b	.LBB163_46
.LBB163_45:
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 16
	jirl	$ra, $a2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a0, $a0, %pc_lo12(.L.str.127)
.LBB163_46:
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lreadr)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(gc_kind_copying)
	ld.d	$a1, $a1, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB163_50
# %bb.47:
	pcalau12i	$s1, %pc_hi20(heap)
	ld.d	$a0, $s1, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB163_49
# %bb.48:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB163_49:
	addi.d	$a1, $a0, 24
	st.d	$a1, $s1, %pc_lo12(heap)
	b	.LBB163_53
.LBB163_50:
	pcalau12i	$s1, %pc_hi20(freelist)
	ld.d	$a0, $s1, %pc_lo12(freelist)
	bnez	$a0, .LBB163_52
# %bb.51:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(freelist)
.LBB163_52:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $s1, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB163_53:                             # %cons.exit41
	lu12i.w	$a1, 16
	st.w	$a1, $a0, 0
	st.d	$s0, $a0, 8
	st.d	$fp, $a0, 16
.LBB163_54:
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
.LBB163_55:
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 16
	move	$a0, $s3
	jirl	$ra, $a2, 0
.LBB163_56:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(lreadtk)
	jirl	$ra, $ra, 0
	b	.LBB163_54
.Lfunc_end163:
	.size	lreadr, .Lfunc_end163-lreadr
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI163_0:
	.word	.LBB163_11-.LJTI163_0
	.word	.LBB163_18-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_22-.LJTI163_0
	.word	.LBB163_20-.LJTI163_0
	.word	.LBB163_21-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_15-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_12-.LJTI163_0
	.word	.LBB163_19-.LJTI163_0
                                        # -- End function
	.text
	.globl	set_read_hooks                  # -- Begin function set_read_hooks
	.p2align	5
	.type	set_read_hooks,@function
set_read_hooks:                         # @set_read_hooks
# %bb.0:
	pcalau12i	$a4, %pc_hi20(user_ch_readm)
	st.d	$a0, $a4, %pc_lo12(user_ch_readm)
	pcalau12i	$a0, %pc_hi20(user_te_readm)
	st.d	$a1, $a0, %pc_lo12(user_te_readm)
	pcalau12i	$a0, %pc_hi20(user_readm)
	st.d	$a2, $a0, %pc_lo12(user_readm)
	pcalau12i	$a0, %pc_hi20(user_readt)
	st.d	$a3, $a0, %pc_lo12(user_readt)
	ret
.Lfunc_end164:
	.size	set_read_hooks, .Lfunc_end164-set_read_hooks
                                        # -- End function
	.globl	lreadparen                      # -- Begin function lreadparen
	.p2align	5
	.type	lreadparen,@function
lreadparen:                             # @lreadparen
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$s4, $zero, 1
	addi.w	$s3, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$s0, $a0, %pc_lo12(.L.str.130)
	ori	$s2, $zero, 59
	b	.LBB165_2
	.p2align	4, , 16
.LBB165_1:                              #   in Loop: Header=BB165_2 Depth=1
	addi.d	$a0, $s1, -10
	sltui	$s4, $a0, 1
.LBB165_2:                              # %.split.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 0
	ld.d	$a0, $fp, 16
	jirl	$ra, $a1, 0
	move	$s1, $a0
	andi	$s4, $s4, 1
	beq	$a0, $s3, .LBB165_5
# %bb.3:                                #   in Loop: Header=BB165_2 Depth=1
	beqz	$s4, .LBB165_1
# %bb.4:                                #   in Loop: Header=BB165_2 Depth=1
	move	$s4, $zero
	beq	$s1, $s2, .LBB165_2
	b	.LBB165_6
	.p2align	4, , 16
.LBB165_5:                              # %.thread.i
                                        #   in Loop: Header=BB165_2 Depth=1
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB165_1
.LBB165_6:                              # %.thread17.i
                                        #   in Loop: Header=BB165_2 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s1, 1
	ldx.hu	$a1, $a1, $a2
	slli.d	$a1, $a1, 50
	ori	$s4, $zero, 1
	bltz	$a1, .LBB165_2
# %bb.7:                                # %flush_ws.exit
	ori	$a1, $zero, 41
	bne	$s1, $a1, .LBB165_9
# %bb.8:
	move	$a0, $zero
	b	.LBB165_28
.LBB165_9:
	move	$s4, $a0
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 16
	move	$a0, $s1
	jirl	$ra, $a2, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lreadr)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(sym_dot)
	ld.d	$a1, $a1, %pc_lo12(sym_dot)
	beq	$a0, $a1, .LBB165_14
# %bb.10:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lreadparen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(gc_kind_copying)
	ld.d	$a1, $a1, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB165_24
# %bb.11:
	pcalau12i	$s1, %pc_hi20(heap)
	ld.d	$a0, $s1, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB165_13
# %bb.12:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB165_13:
	addi.d	$a1, $a0, 24
	st.d	$a1, $s1, %pc_lo12(heap)
	b	.LBB165_27
.LBB165_14:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lreadr)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$s6, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$s1, $a0, %pc_lo12(.L.str.130)
	ori	$s5, $zero, 59
	b	.LBB165_16
	.p2align	4, , 16
.LBB165_15:                             #   in Loop: Header=BB165_16 Depth=1
	addi.d	$a0, $s2, -10
	sltui	$s6, $a0, 1
.LBB165_16:                             # %.split.i15
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 0
	ld.d	$a0, $fp, 16
	jirl	$ra, $a1, 0
	move	$s2, $a0
	andi	$s6, $s6, 1
	beq	$a0, $s3, .LBB165_19
# %bb.17:                               #   in Loop: Header=BB165_16 Depth=1
	beqz	$s6, .LBB165_15
# %bb.18:                               #   in Loop: Header=BB165_16 Depth=1
	move	$s6, $zero
	beq	$s2, $s5, .LBB165_16
	b	.LBB165_20
	.p2align	4, , 16
.LBB165_19:                             # %.thread.i22
                                        #   in Loop: Header=BB165_16 Depth=1
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB165_15
.LBB165_20:                             # %.thread17.i20
                                        #   in Loop: Header=BB165_16 Depth=1
	ld.d	$a0, $s4, 0
	slli.d	$a1, $s2, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	ori	$s6, $zero, 1
	bltz	$a0, .LBB165_16
# %bb.21:                               # %flush_ws.exit24
	ori	$a0, $zero, 41
	beq	$s2, $a0, .LBB165_23
# %bb.22:
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$a0, $a0, %pc_lo12(.L.str.131)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB165_23:
	move	$a0, $s0
	b	.LBB165_28
.LBB165_24:
	pcalau12i	$s1, %pc_hi20(freelist)
	ld.d	$a0, $s1, %pc_lo12(freelist)
	bnez	$a0, .LBB165_26
# %bb.25:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(freelist)
.LBB165_26:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $s1, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB165_27:                             # %cons.exit
	lu12i.w	$a1, 16
	st.w	$a1, $a0, 0
	st.d	$s0, $a0, 8
	st.d	$fp, $a0, 16
.LBB165_28:
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end165:
	.size	lreadparen, .Lfunc_end165-lreadparen
                                        # -- End function
	.globl	lreadtk                         # -- Begin function lreadtk
	.p2align	5
	.type	lreadtk,@function
lreadtk:                                # @lreadtk
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a0
	stx.b	$zero, $a0, $a1
	pcalau12i	$a0, %pc_hi20(user_readt)
	ld.d	$a3, $a0, %pc_lo12(user_readt)
	beqz	$a3, .LBB166_2
# %bb.1:
	addi.d	$a2, $sp, 4
	move	$a0, $fp
	jirl	$ra, $a3, 0
	ld.w	$a1, $sp, 4
	bnez	$a1, .LBB166_22
.LBB166_2:                              # %.peel.begin
	ld.bu	$a0, $fp, 0
	addi.d	$a0, $a0, -45
	sltui	$s1, $a0, 1
	add.d	$s0, $fp, $s1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ldx.bu	$a1, $fp, $s1
	ld.d	$a0, $a0, 0
	ext.w.b	$a2, $a1
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	andi	$a2, $a2, 2048
	beqz	$a2, .LBB166_5
	.p2align	4, , 16
.LBB166_3:                              # %.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a1, $s0, 1
	slli.d	$a3, $a1, 1
	ldx.hu	$a3, $a0, $a3
	slli.d	$a3, $a3, 52
	addi.d	$s0, $s0, 1
	bltz	$a3, .LBB166_3
# %bb.4:
	andi	$a1, $a1, 255
.LBB166_5:                              # %.loopexit43
	ori	$a3, $zero, 46
	bne	$a1, $a3, .LBB166_15
# %bb.6:                                # %.preheader40.preheader
	ld.b	$a1, $s0, 1
	slli.d	$a3, $a1, 1
	ldx.hu	$a3, $a0, $a3
	slli.d	$a4, $a3, 52
	addi.d	$a3, $s0, 1
	bltz	$a4, .LBB166_10
# %bb.7:
	andi	$a1, $a1, 255
	beqz	$a2, .LBB166_21
.LBB166_8:                              # %.loopexit.thread
	ori	$a2, $zero, 101
	beq	$a1, $a2, .LBB166_12
.LBB166_9:                              # %thread-pre-split
	bnez	$a1, .LBB166_21
	b	.LBB166_23
	.p2align	4, , 16
.LBB166_10:                             # %.preheader40
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a1, $a3, 1
	slli.d	$a2, $a1, 1
	ldx.hu	$a2, $a0, $a2
	slli.d	$a2, $a2, 52
	addi.d	$a3, $a3, 1
	bltz	$a2, .LBB166_10
# %bb.11:
	andi	$a1, $a1, 255
	ori	$a2, $zero, 101
	bne	$a1, $a2, .LBB166_9
.LBB166_12:
	ld.bu	$a1, $a3, 1
	ori	$a2, $zero, 45
	beq	$a1, $a2, .LBB166_14
# %bb.13:
	ori	$a2, $zero, 43
	bne	$a1, $a2, .LBB166_16
.LBB166_14:
	ld.bu	$a1, $a3, 2
	addi.d	$a2, $a3, 2
	b	.LBB166_17
.LBB166_15:
	move	$a3, $s0
	bnez	$a2, .LBB166_8
	b	.LBB166_21
.LBB166_16:
	addi.d	$a2, $a3, 1
.LBB166_17:
	ext.w.b	$a1, $a1
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a1, $a1, 52
	bgez	$a1, .LBB166_21
# %bb.18:                               # %.preheader.preheader
	addi.d	$a1, $a2, 1
	.p2align	4, , 16
.LBB166_19:                             # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a2, $a1, 0
	slli.d	$a3, $a2, 1
	ldx.hu	$a3, $a0, $a3
	slli.d	$a3, $a3, 52
	addi.d	$a1, $a1, 1
	bltz	$a3, .LBB166_19
# %bb.20:
	andi	$a1, $a2, 255
	beqz	$a1, .LBB166_23
.LBB166_21:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
.LBB166_22:                             # %flocons.exit
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB166_23:
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(inums_dim)
	ld.d	$a1, $a0, %pc_lo12(inums_dim)
	blez	$a1, .LBB166_28
# %bb.24:
	ftintrz.l.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	bge	$a0, $a1, .LBB166_28
# %bb.25:
	movgr2fr.d	$fa1, $zero
	fcmp.cult.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB166_28
# %bb.26:
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB166_28
# %bb.27:
	pcalau12i	$a1, %pc_hi20(inums)
	ld.d	$a1, $a1, %pc_lo12(inums)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	b	.LBB166_22
.LBB166_28:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB166_32
# %bb.29:
	pcalau12i	$fp, %pc_hi20(heap)
	ld.d	$a0, $fp, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB166_31
# %bb.30:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $zero
	fmov.d	$fs0, $fa0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	fmov.d	$fa0, $fs0
.LBB166_31:
	addi.d	$a1, $a0, 24
	st.d	$a1, $fp, %pc_lo12(heap)
	b	.LBB166_35
.LBB166_32:
	pcalau12i	$fp, %pc_hi20(freelist)
	ld.d	$a0, $fp, %pc_lo12(freelist)
	bnez	$a0, .LBB166_34
# %bb.33:
	fmov.d	$fs0, $fa0
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	fmov.d	$fa0, $fs0
	ld.d	$a0, $fp, %pc_lo12(freelist)
.LBB166_34:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $fp, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB166_35:
	lu12i.w	$a1, 32
	st.w	$a1, $a0, 0
	fst.d	$fa0, $a0, 8
	b	.LBB166_22
.Lfunc_end166:
	.size	lreadtk, .Lfunc_end166-lreadtk
                                        # -- End function
	.globl	copy_list                       # -- Begin function copy_list
	.p2align	5
	.type	copy_list,@function
copy_list:                              # @copy_list
# %bb.0:
	beqz	$a0, .LBB167_6
# %bb.1:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(stack_limit_ptr)
	ld.d	$a0, $a0, %pc_lo12(stack_limit_ptr)
	addi.d	$a1, $sp, 0
	bgeu	$a1, $a0, .LBB167_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB167_3:
	ld.hu	$a0, $fp, 2
	beqz	$a0, .LBB167_12
# %bb.4:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB167_7
# %bb.5:                                # %car.exit.thread8
	ld.d	$s0, $fp, 8
	ld.d	$a0, $fp, 16
	b	.LBB167_13
.LBB167_6:
	move	$a0, $zero
	ret
.LBB167_7:                              # %car.exit
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $fp, 2
	move	$s0, $zero
	beqz	$a0, .LBB167_10
# %bb.8:                                # %car.exit
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB167_11
# %bb.9:
	ld.d	$a0, $fp, 16
	b	.LBB167_13
.LBB167_10:
	move	$a0, $s0
	b	.LBB167_13
.LBB167_11:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB167_12:                             # %cdr.exit
	move	$s0, $zero
	move	$a0, $zero
.LBB167_13:                             # %cdr.exit
	pcaddu18i	$ra, %call36(copy_list)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(gc_kind_copying)
	ld.d	$a1, $a1, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB167_17
# %bb.14:
	pcalau12i	$s1, %pc_hi20(heap)
	ld.d	$a0, $s1, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB167_16
# %bb.15:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB167_16:
	addi.d	$a1, $a0, 24
	st.d	$a1, $s1, %pc_lo12(heap)
	b	.LBB167_20
.LBB167_17:
	pcalau12i	$s1, %pc_hi20(freelist)
	ld.d	$a0, $s1, %pc_lo12(freelist)
	bnez	$a0, .LBB167_19
# %bb.18:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(freelist)
.LBB167_19:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $s1, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB167_20:                             # %cons.exit
	lu12i.w	$a1, 16
	st.w	$a1, $a0, 0
	st.d	$s0, $a0, 8
	st.d	$fp, $a0, 16
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end167:
	.size	copy_list, .Lfunc_end167-copy_list
                                        # -- End function
	.globl	apropos                         # -- Begin function apropos
	.p2align	5
	.type	apropos,@function
apropos:                                # @apropos
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(oblistvar)
	ld.d	$s4, $a1, %pc_lo12(oblistvar)
	beqz	$s4, .LBB168_26
# %bb.1:                                # %.lr.ph29
	move	$s0, $a0
	ori	$s5, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(heap)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(heap_end)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $zero
	pcalau12i	$s1, %pc_hi20(freelist)
	pcalau12i	$s8, %pc_hi20(gc_cells_allocated)
	ori	$s6, $zero, 3
	ori	$s7, $zero, 13
	b	.LBB168_5
	.p2align	4, , 16
.LBB168_2:                              #   in Loop: Header=BB168_5 Depth=1
	addi.d	$a0, $fp, 24
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(heap)
.LBB168_3:                              # %cons.exit
                                        #   in Loop: Header=BB168_5 Depth=1
	lu12i.w	$a0, 16
	st.w	$a0, $fp, 0
	st.d	$s3, $fp, 8
	st.d	$s2, $fp, 16
	move	$s2, $fp
.LBB168_4:                              # %.critedge
                                        #   in Loop: Header=BB168_5 Depth=1
	ld.d	$s4, $s4, 16
	beqz	$s4, .LBB168_27
.LBB168_5:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB168_13 Depth 2
	ld.hu	$a0, $s4, 2
	bne	$a0, $s5, .LBB168_27
# %bb.6:                                #   in Loop: Header=BB168_5 Depth=1
	ld.d	$a1, $s4, 8
	beqz	$a1, .LBB168_10
# %bb.7:                                #   in Loop: Header=BB168_5 Depth=1
	ld.hu	$a0, $a1, 2
	beq	$a0, $s7, .LBB168_11
# %bb.8:                                #   in Loop: Header=BB168_5 Depth=1
	bne	$a0, $s6, .LBB168_10
# %bb.9:                                #   in Loop: Header=BB168_5 Depth=1
	ld.d	$s3, $a1, 8
	bnez	$s0, .LBB168_12
	b	.LBB168_20
	.p2align	4, , 16
.LBB168_10:                             # %.critedge10.i
                                        #   in Loop: Header=BB168_5 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	bnez	$s0, .LBB168_12
	b	.LBB168_20
	.p2align	4, , 16
.LBB168_11:                             #   in Loop: Header=BB168_5 Depth=1
	ld.d	$s3, $a1, 16
	beqz	$s0, .LBB168_20
.LBB168_12:                             # %.lr.ph.preheader
                                        #   in Loop: Header=BB168_5 Depth=1
	move	$fp, $s0
	.p2align	4, , 16
.LBB168_13:                             # %.lr.ph
                                        #   Parent Loop BB168_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $fp, 2
	bne	$a0, $s5, .LBB168_4
# %bb.14:                               #   in Loop: Header=BB168_13 Depth=2
	ld.d	$a1, $fp, 8
	beqz	$a1, .LBB168_28
# %bb.15:                               #   in Loop: Header=BB168_13 Depth=2
	ld.hu	$a2, $a1, 2
	ori	$a0, $zero, 8
	beq	$a2, $s6, .LBB168_18
# %bb.16:                               #   in Loop: Header=BB168_13 Depth=2
	bne	$a2, $s7, .LBB168_28
# %bb.17:                               #   in Loop: Header=BB168_13 Depth=2
	ori	$a0, $zero, 16
.LBB168_18:                             # %get_c_string.exit22
                                        #   in Loop: Header=BB168_13 Depth=2
	ldx.d	$a1, $a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB168_4
# %bb.19:                               #   in Loop: Header=BB168_13 Depth=2
	ld.d	$fp, $fp, 16
	bnez	$fp, .LBB168_13
.LBB168_20:                             # %.critedge19
                                        #   in Loop: Header=BB168_5 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	ld.d	$s3, $s4, 8
	bne	$a0, $s5, .LBB168_23
# %bb.21:                               #   in Loop: Header=BB168_5 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(heap)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$fp, $a0, .LBB168_2
# %bb.22:                               #   in Loop: Header=BB168_5 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	b	.LBB168_2
	.p2align	4, , 16
.LBB168_23:                             #   in Loop: Header=BB168_5 Depth=1
	ld.d	$fp, $s1, %pc_lo12(freelist)
	bnez	$fp, .LBB168_25
# %bb.24:                               #   in Loop: Header=BB168_5 Depth=1
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s1, %pc_lo12(freelist)
.LBB168_25:                             #   in Loop: Header=BB168_5 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $s8, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s1, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s8, %pc_lo12(gc_cells_allocated)
	b	.LBB168_3
.LBB168_26:
	move	$s2, $zero
.LBB168_27:                             # %.critedge17
	move	$a0, $s2
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB168_28:                             # %.critedge10.i21
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.Lfunc_end168:
	.size	apropos, .Lfunc_end168-apropos
                                        # -- End function
	.globl	fopen_cg                        # -- Begin function fopen_cg
	.p2align	5
	.type	fopen_cg,@function
fopen_cg:                               # @fopen_cg
# %bb.0:
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$s4, %pc_hi20(nointerrupt)
	pcalau12i	$a3, %pc_hi20(gc_kind_copying)
	ld.d	$a3, $a3, %pc_lo12(gc_kind_copying)
	ld.d	$s5, $s4, %pc_lo12(nointerrupt)
	move	$s1, $a2
	move	$s0, $a1
	move	$s2, $a0
	ori	$a0, $zero, 1
	st.d	$a0, $s4, %pc_lo12(nointerrupt)
	bne	$a3, $a0, .LBB169_4
# %bb.1:
	pcalau12i	$s3, %pc_hi20(heap)
	ld.d	$fp, $s3, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$fp, $a0, .LBB169_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB169_3:
	addi.d	$a0, $fp, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB169_7
.LBB169_4:
	pcalau12i	$s3, %pc_hi20(freelist)
	ld.d	$fp, $s3, %pc_lo12(freelist)
	bnez	$fp, .LBB169_6
# %bb.5:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s3, %pc_lo12(freelist)
.LBB169_6:
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s3, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB169_7:                              # %newcell.exit
	lu12i.w	$a0, 272
	st.w	$a0, $fp, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 8
	move	$a0, $s0
	move	$a1, $s1
	jirl	$ra, $s2, 0
	st.d	$a0, $fp, 8
	bnez	$a0, .LBB169_15
# %bb.8:                                # %safe_strcpy.exit
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a0, $a0, %pc_lo12(.L.str.132)
	ld.d	$a1, $a0, 7
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 23
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 31
	addi.d	$s1, $sp, 16
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 256
	ori	$s2, $zero, 256
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	sub.d	$a0, $a0, $s1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$a0, $a1, $a0
	beq	$a0, $s2, .LBB169_14
# %bb.9:
	add.d	$s1, $s1, $a0
	sub.d	$s3, $s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bgeu	$a0, $s3, .LBB169_13
# %bb.10:
	move	$s2, $a0
	beqz	$a0, .LBB169_12
# %bb.11:
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB169_12:
	stx.b	$zero, $s1, $s2
	b	.LBB169_14
.LBB169_13:
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 271
.LBB169_14:                             # %safe_strcat.exit
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(llast_c_errmsg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB169_15:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB169_17
# %bb.16:
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s1
.LBB169_17:                             # %must_malloc.exit
	st.d	$a0, $fp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	st.d	$s5, $s4, %pc_lo12(nointerrupt)
	bnez	$s5, .LBB169_20
# %bb.18:                               # %must_malloc.exit
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	ld.d	$a1, $a0, %pc_lo12(interrupt_differed)
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB169_20
# %bb.19:
	st.d	$zero, $a0, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB169_20:                             # %no_interrupt.exit
	move	$a0, $fp
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.Lfunc_end169:
	.size	fopen_cg, .Lfunc_end169-fopen_cg
                                        # -- End function
	.globl	safe_strcpy                     # -- Begin function safe_strcpy
	.p2align	5
	.type	safe_strcpy,@function
safe_strcpy:                            # @safe_strcpy
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a1, .LBB170_6
# %bb.1:
	move	$s0, $a2
	move	$s1, $a1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bgeu	$a0, $s1, .LBB170_5
# %bb.2:
	move	$s2, $a0
	beqz	$a0, .LBB170_4
# %bb.3:
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB170_4:
	stx.b	$zero, $fp, $s2
	b	.LBB170_6
.LBB170_5:
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$a0, $fp, $s1
	st.b	$zero, $a0, -1
.LBB170_6:
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end170:
	.size	safe_strcpy, .Lfunc_end170-safe_strcpy
                                        # -- End function
	.globl	safe_strcat                     # -- Begin function safe_strcat
	.p2align	5
	.type	safe_strcat,@function
safe_strcat:                            # @safe_strcat
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	sub.d	$a0, $a0, $fp
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$a0, $a1, $a0
	beq	$s1, $a0, .LBB171_6
# %bb.1:
	add.d	$s2, $fp, $a0
	sub.d	$s4, $s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bgeu	$a0, $s4, .LBB171_5
# %bb.2:
	move	$s3, $a0
	beqz	$a0, .LBB171_4
# %bb.3:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB171_4:
	stx.b	$zero, $s2, $s3
	b	.LBB171_6
.LBB171_5:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$a0, $fp, $s1
	st.b	$zero, $a0, -1
.LBB171_6:                              # %safe_strcpy.exit
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end171:
	.size	safe_strcat, .Lfunc_end171-safe_strcat
                                        # -- End function
	.globl	llast_c_errmsg                  # -- Begin function llast_c_errmsg
	.p2align	5
	.type	llast_c_errmsg,@function
llast_c_errmsg:                         # @llast_c_errmsg
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a0
	bltz	$a0, .LBB172_3
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strerror)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB172_4
.LBB172_2:
	move	$a1, $zero
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(gen_intern)
	jr	$t8
.LBB172_3:
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$fp, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strerror)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB172_2
.LBB172_4:
	pcalau12i	$a0, %pc_hi20(inums_dim)
	ld.d	$a0, $a0, %pc_lo12(inums_dim)
	blez	$a0, .LBB172_7
# %bb.5:
	bgeu	$fp, $a0, .LBB172_7
# %bb.6:
	pcalau12i	$a0, %pc_hi20(inums)
	ld.d	$a0, $a0, %pc_lo12(inums)
	slli.d	$a1, $fp, 3
	ldx.d	$a0, $a0, $a1
	b	.LBB172_15
.LBB172_7:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	movgr2fr.w	$fa0, $fp
	ori	$a1, $zero, 1
	ffint.d.w	$fs0, $fa0
	bne	$a0, $a1, .LBB172_11
# %bb.8:
	pcalau12i	$fp, %pc_hi20(heap)
	ld.d	$a0, $fp, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB172_10
# %bb.9:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB172_10:
	addi.d	$a1, $a0, 24
	st.d	$a1, $fp, %pc_lo12(heap)
	b	.LBB172_14
.LBB172_11:
	pcalau12i	$fp, %pc_hi20(freelist)
	ld.d	$a0, $fp, %pc_lo12(freelist)
	bnez	$a0, .LBB172_13
# %bb.12:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(freelist)
.LBB172_13:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $fp, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB172_14:
	lu12i.w	$a1, 32
	st.w	$a1, $a0, 0
	fst.d	$fs0, $a0, 8
.LBB172_15:                             # %flocons.exit
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end172:
	.size	llast_c_errmsg, .Lfunc_end172-llast_c_errmsg
                                        # -- End function
	.globl	fopen_c                         # -- Begin function fopen_c
	.p2align	5
	.type	fopen_c,@function
fopen_c:                                # @fopen_c
# %bb.0:
	move	$a2, $a1
	move	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(fopen)
	ld.d	$a0, $a0, %got_pc_lo12(fopen)
	pcaddu18i	$t8, %call36(fopen_cg)
	jr	$t8
.Lfunc_end173:
	.size	fopen_c, .Lfunc_end173-fopen_c
                                        # -- End function
	.globl	fopen_l                         # -- Begin function fopen_l
	.p2align	5
	.type	fopen_l,@function
fopen_l:                                # @fopen_l
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$a1, $a0
	beqz	$a0, .LBB174_4
# %bb.1:
	ld.hu	$a0, $a1, 2
	ori	$a2, $zero, 13
	beq	$a0, $a2, .LBB174_8
# %bb.2:
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB174_4
# %bb.3:
	ld.d	$a1, $a1, 8
	bnez	$fp, .LBB174_5
	b	.LBB174_9
.LBB174_4:                              # %.critedge10.i
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	beqz	$fp, .LBB174_9
.LBB174_5:
	ld.hu	$a0, $fp, 2
	ori	$a2, $zero, 13
	beq	$a0, $a2, .LBB174_10
# %bb.6:
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB174_11
# %bb.7:
	ld.d	$a2, $fp, 8
	b	.LBB174_12
.LBB174_8:
	ld.d	$a1, $a1, 16
	bnez	$fp, .LBB174_5
.LBB174_9:
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a2, $a0, %pc_lo12(.L.str.133)
	b	.LBB174_12
.LBB174_10:
	ld.d	$a2, $fp, 16
	b	.LBB174_12
.LBB174_11:                             # %.critedge10.i4
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$s0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	move	$a2, $zero
.LBB174_12:                             # %get_c_string.exit5
	pcalau12i	$a0, %got_pc_hi20(fopen)
	ld.d	$a0, $a0, %got_pc_lo12(fopen)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fopen_cg)
	jr	$t8
.Lfunc_end174:
	.size	fopen_l, .Lfunc_end174-fopen_l
                                        # -- End function
	.globl	delq                            # -- Begin function delq
	.p2align	5
	.type	delq,@function
delq:                                   # @delq
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	beqz	$a1, .LBB175_9
# %bb.1:
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(stack_limit_ptr)
	ld.d	$a0, $a0, %pc_lo12(stack_limit_ptr)
	addi.d	$a1, $sp, 0
	bgeu	$a1, $a0, .LBB175_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB175_3:
	ld.hu	$a0, $fp, 2
	beqz	$a0, .LBB175_11
# %bb.4:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB175_10
# %bb.5:
	ld.d	$a1, $fp, 8
	ld.hu	$a0, $fp, 2
	bne	$s0, $a1, .LBB175_12
.LBB175_6:
	beqz	$a0, .LBB175_21
# %bb.7:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB175_20
# %bb.8:
	ld.d	$a1, $fp, 16
	b	.LBB175_22
.LBB175_9:
	move	$fp, $zero
	b	.LBB175_23
.LBB175_10:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB175_11:                             # %car.exit
	move	$a1, $zero
	ld.hu	$a0, $fp, 2
	beq	$s0, $a1, .LBB175_6
.LBB175_12:
	beqz	$a0, .LBB175_16
# %bb.13:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB175_15
# %bb.14:
	ld.d	$a1, $fp, 16
	b	.LBB175_17
.LBB175_15:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB175_16:
	move	$a1, $zero
.LBB175_17:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(delq)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $fp, 2
	ori	$a2, $zero, 1
	move	$s0, $a0
	beq	$a1, $a2, .LBB175_19
# %bb.18:                               # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB175_19:                             # %setcdr.exit
	st.d	$s0, $fp, 16
	b	.LBB175_23
.LBB175_20:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB175_21:                             # %cdr.exit
	move	$a1, $zero
.LBB175_22:                             # %cdr.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(delq)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB175_23:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end175:
	.size	delq, .Lfunc_end175-delq
                                        # -- End function
	.globl	fclose_l                        # -- Begin function fclose_l
	.p2align	5
	.type	fclose_l,@function
fclose_l:                               # @fclose_l
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(nointerrupt)
	ld.d	$s0, $s1, %pc_lo12(nointerrupt)
	move	$fp, $a0
	ori	$a0, $zero, 1
	st.d	$a0, $s1, %pc_lo12(nointerrupt)
	beqz	$fp, .LBB176_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB176_3
.LBB176_2:                              # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB176_3:
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB176_5
# %bb.4:
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 8
.LBB176_5:
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB176_7
# %bb.6:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 16
.LBB176_7:                              # %file_gc_free.exit
	st.d	$s0, $s1, %pc_lo12(nointerrupt)
	bnez	$s0, .LBB176_10
# %bb.8:                                # %file_gc_free.exit
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	ld.d	$a1, $a0, %pc_lo12(interrupt_differed)
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB176_10
# %bb.9:
	st.d	$zero, $a0, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB176_10:                             # %no_interrupt.exit
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end176:
	.size	fclose_l, .Lfunc_end176-fclose_l
                                        # -- End function
	.globl	require                         # -- Begin function require
	.p2align	5
	.type	require,@function
require:                                # @require
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
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a0, $a0, %pc_lo12(.L.str.141)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a0, $a0, %pc_lo12(.L.str.142)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$s6, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $s6, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	pcalau12i	$s3, %pc_hi20(freelist)
	pcalau12i	$s2, %pc_hi20(gc_cells_allocated)
	pcalau12i	$s4, %pc_hi20(heap)
	pcalau12i	$s5, %pc_hi20(heap_end)
	bne	$a0, $a1, .LBB177_4
# %bb.1:
	ld.d	$s8, $s4, %pc_lo12(heap)
	ld.d	$a0, $s5, %pc_lo12(heap_end)
	bltu	$s8, $a0, .LBB177_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB177_3:
	addi.d	$a0, $s8, 24
	st.d	$a0, $s4, %pc_lo12(heap)
	b	.LBB177_7
.LBB177_4:
	ld.d	$s8, $s3, %pc_lo12(freelist)
	bnez	$s8, .LBB177_6
# %bb.5:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s8, $s3, %pc_lo12(freelist)
.LBB177_6:
	ld.d	$a0, $s8, 16
	ld.d	$a1, $s2, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s3, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s2, %pc_lo12(gc_cells_allocated)
.LBB177_7:                              # %cons.exit
	lu12i.w	$s7, 16
	st.w	$s7, $s8, 0
	ld.d	$a0, $s6, %pc_lo12(gc_kind_copying)
	st.d	$s1, $s8, 8
	ori	$a1, $zero, 1
	st.d	$zero, $s8, 16
	bne	$a0, $a1, .LBB177_11
# %bb.8:
	ld.d	$s1, $s4, %pc_lo12(heap)
	ld.d	$a0, $s5, %pc_lo12(heap_end)
	bltu	$s1, $a0, .LBB177_10
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB177_10:
	addi.d	$a0, $s1, 24
	st.d	$a0, $s4, %pc_lo12(heap)
	b	.LBB177_14
.LBB177_11:
	ld.d	$s1, $s3, %pc_lo12(freelist)
	bnez	$s1, .LBB177_13
# %bb.12:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s3, %pc_lo12(freelist)
.LBB177_13:
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s2, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s3, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s2, %pc_lo12(gc_cells_allocated)
.LBB177_14:                             # %cons.exit9
	st.w	$s7, $s1, 0
	ld.d	$a0, $s6, %pc_lo12(gc_kind_copying)
	st.d	$fp, $s1, 8
	ori	$a1, $zero, 1
	st.d	$s8, $s1, 16
	bne	$a0, $a1, .LBB177_18
# %bb.15:
	ld.d	$a0, $s4, %pc_lo12(heap)
	ld.d	$a1, $s5, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB177_17
# %bb.16:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB177_17:
	addi.d	$a1, $a0, 24
	st.d	$a1, $s4, %pc_lo12(heap)
	b	.LBB177_21
.LBB177_18:
	ld.d	$a0, $s3, %pc_lo12(freelist)
	bnez	$a0, .LBB177_20
# %bb.19:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(freelist)
.LBB177_20:
	ld.d	$a1, $a0, 16
	ld.d	$a2, $s2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $s3, %pc_lo12(freelist)
	addi.d	$a1, $a2, 1
	st.d	$a1, $s2, %pc_lo12(gc_cells_allocated)
.LBB177_21:                             # %cons.exit13
	st.w	$s7, $a0, 0
	st.d	$s0, $a0, 8
	st.d	$s1, $a0, 16
	pcaddu18i	$ra, %call36(string_append)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	beqz	$a0, .LBB177_25
# %bb.22:
	ld.hu	$a0, $a1, 2
	ori	$a2, $zero, 13
	beq	$a0, $a2, .LBB177_26
# %bb.23:
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB177_25
# %bb.24:
	ld.d	$a0, $a1, 8
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB177_27
	b	.LBB177_28
.LBB177_25:                             # %.critedge10.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB177_27
	b	.LBB177_28
.LBB177_26:
	ld.d	$a0, $a1, 16
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$a0, .LBB177_28
.LBB177_27:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB177_29
.LBB177_28:                             # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB177_29:                             # %symbol_boundp.exit
	ld.d	$s3, $s0, 16
	pcalau12i	$s4, %pc_hi20(unbound_marker)
	ld.d	$a0, $s4, %pc_lo12(unbound_marker)
	pcalau12i	$s1, %pc_hi20(sym_t)
	ld.d	$s2, $s1, %pc_lo12(sym_t)
	beq	$s3, $a0, .LBB177_35
# %bb.30:                               # %symbol_boundp.exit
	beqz	$s2, .LBB177_35
# %bb.31:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB177_33
# %bb.32:
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s0, 16
	ld.d	$a0, $s4, %pc_lo12(unbound_marker)
	beq	$s3, $a0, .LBB177_45
.LBB177_33:                             # %symbol_value.exit
	bnez	$s3, .LBB177_44
.LBB177_34:                             # %symbol_value.exit._crit_edge
	ld.d	$s2, $s1, %pc_lo12(sym_t)
.LBB177_35:
	beqz	$fp, .LBB177_39
# %bb.36:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 13
	beq	$a0, $a1, .LBB177_40
# %bb.37:
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB177_39
# %bb.38:
	ld.d	$a0, $fp, 8
	b	.LBB177_41
.LBB177_39:                             # %.critedge10.i
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB177_41
.LBB177_40:
	ld.d	$a0, $fp, 16
.LBB177_41:
	sltu	$a2, $zero, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(vload)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s0, 2
	ld.d	$fp, $s1, %pc_lo12(sym_t)
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB177_43
# %bb.42:                               # %.critedge.i17
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB177_43:                             # %setvar.exit
	st.d	$fp, $s0, 16
.LBB177_44:
	move	$a0, $s0
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
.LBB177_45:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB177_44
	b	.LBB177_34
.Lfunc_end177:
	.size	require, .Lfunc_end177-require
                                        # -- End function
	.globl	load                            # -- Begin function load
	.p2align	5
	.type	load,@function
load:                                   # @load
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$a1, $a0
	beqz	$a0, .LBB178_4
# %bb.1:
	ld.hu	$a0, $a1, 2
	ori	$a2, $zero, 13
	beq	$a0, $a2, .LBB178_5
# %bb.2:
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB178_4
# %bb.3:
	ld.d	$a0, $a1, 8
	b	.LBB178_6
.LBB178_4:                              # %.critedge10.i
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB178_6
.LBB178_5:
	ld.d	$a0, $a1, 16
.LBB178_6:                              # %get_c_string.exit
	sltu	$a1, $zero, $s0
	sltu	$a2, $zero, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(vload)
	jr	$t8
.Lfunc_end178:
	.size	load, .Lfunc_end178-load
                                        # -- End function
	.globl	save_forms                      # -- Begin function save_forms
	.p2align	5
	.type	save_forms,@function
save_forms:                             # @save_forms
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	move	$s2, $a2
	move	$fp, $a1
	move	$a1, $a0
	beqz	$a0, .LBB179_4
# %bb.1:
	ld.hu	$a0, $a1, 2
	ori	$a2, $zero, 13
	beq	$a0, $a2, .LBB179_7
# %bb.2:
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB179_4
# %bb.3:
	ld.d	$s0, $a1, 8
	bnez	$s2, .LBB179_5
	b	.LBB179_8
.LBB179_4:                              # %.critedge10.i
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	beqz	$s2, .LBB179_8
.LBB179_5:
	pcalau12i	$a0, %pc_hi20(.L.str.144)
	addi.d	$s1, $a0, %pc_lo12(.L.str.144)
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	beq	$s2, $a0, .LBB179_9
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.145)
	addi.d	$a0, $a0, %pc_lo12(.L.str.145)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	b	.LBB179_9
.LBB179_7:
	ld.d	$s0, $a1, 16
	bnez	$s2, .LBB179_5
.LBB179_8:
	pcalau12i	$a0, %pc_hi20(.L.str.143)
	addi.d	$s1, $a0, %pc_lo12(.L.str.143)
.LBB179_9:
	pcalau12i	$s5, %pc_hi20(siod_verbose_level)
	ld.d	$a0, $s5, %pc_lo12(siod_verbose_level)
	ori	$a1, $zero, 3
	pcalau12i	$s4, %pc_hi20(nointerrupt)
	pcalau12i	$s3, %pc_hi20(interrupt_differed)
	blt	$a0, $a1, .LBB179_22
# %bb.10:
	ld.bu	$a0, $s1, 0
	addi.d	$a0, $a0, -97
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.147)
	addi.d	$a1, $a1, %pc_lo12(.L.str.147)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.146)
	addi.d	$a2, $a2, %pc_lo12(.L.str.146)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$s2, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $s2, 0
	ld.d	$s6, $s4, %pc_lo12(nointerrupt)
	ori	$s7, $zero, 1
	st.d	$s7, $s4, %pc_lo12(nointerrupt)
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	st.d	$s6, $s4, %pc_lo12(nointerrupt)
	bnez	$s6, .LBB179_13
# %bb.11:
	ld.d	$a0, $s3, %pc_lo12(interrupt_differed)
	bne	$a0, $s7, .LBB179_13
# %bb.12:
	st.d	$zero, $s3, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s4, %pc_lo12(nointerrupt)
.LBB179_13:                             # %put_st.exit
	ld.d	$a3, $s2, 0
	st.d	$s7, $s4, %pc_lo12(nointerrupt)
	pcalau12i	$a0, %pc_hi20(.L.str.148)
	addi.d	$a0, $a0, %pc_lo12(.L.str.148)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.d	$s6, $s4, %pc_lo12(nointerrupt)
	bnez	$s6, .LBB179_16
# %bb.14:                               # %put_st.exit
	ld.d	$a0, $s3, %pc_lo12(interrupt_differed)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB179_16
# %bb.15:
	st.d	$zero, $s3, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s4, %pc_lo12(nointerrupt)
.LBB179_16:                             # %put_st.exit20
	ld.d	$a1, $s2, 0
	ori	$s7, $zero, 1
	st.d	$s7, $s4, %pc_lo12(nointerrupt)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	st.d	$s6, $s4, %pc_lo12(nointerrupt)
	bnez	$s6, .LBB179_19
# %bb.17:                               # %put_st.exit20
	ld.d	$a0, $s3, %pc_lo12(interrupt_differed)
	bne	$a0, $s7, .LBB179_19
# %bb.18:
	st.d	$zero, $s3, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s4, %pc_lo12(nointerrupt)
.LBB179_19:                             # %put_st.exit23
	ld.d	$a1, $s2, 0
	st.d	$s7, $s4, %pc_lo12(nointerrupt)
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	st.d	$s6, $s4, %pc_lo12(nointerrupt)
	bnez	$s6, .LBB179_22
# %bb.20:                               # %put_st.exit23
	ld.d	$a0, $s3, %pc_lo12(interrupt_differed)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB179_22
# %bb.21:
	st.d	$zero, $s3, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB179_22:                             # %put_st.exit26
	pcalau12i	$a0, %got_pc_hi20(fopen)
	ld.d	$a0, $a0, %got_pc_lo12(fopen)
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fopen_cg)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$fp, .LBB179_48
# %bb.23:                               # %.lr.ph
	ld.d	$s1, $s0, 8
	pcalau12i	$a0, %pc_hi20(fputs_fcn)
	addi.d	$s6, $a0, %pc_lo12(fputs_fcn)
	ori	$s7, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s2, $a0, %pc_lo12(.L.str.27)
	.p2align	4, , 16
.LBB179_24:                             # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $fp, 2
	beqz	$a0, .LBB179_28
# %bb.25:                               #   in Loop: Header=BB179_24 Depth=1
	bne	$a0, $s7, .LBB179_27
# %bb.26:                               #   in Loop: Header=BB179_24 Depth=1
	ld.d	$a0, $fp, 8
	b	.LBB179_29
	.p2align	4, , 16
.LBB179_27:                             #   in Loop: Header=BB179_24 Depth=1
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB179_28:                             #   in Loop: Header=BB179_24 Depth=1
	move	$a0, $zero
.LBB179_29:                             #   in Loop: Header=BB179_24 Depth=1
	st.d	$zero, $sp, 8
	st.d	$s6, $sp, 16
	st.d	$s1, $sp, 24
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(lprin1g)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $fp, 2
	bne	$a0, $s7, .LBB179_31
# %bb.30:                               # %cdr.exit
                                        #   in Loop: Header=BB179_24 Depth=1
	ld.d	$fp, $fp, 16
	bnez	$fp, .LBB179_24
	b	.LBB179_33
.LBB179_31:
	beqz	$a0, .LBB179_33
# %bb.32:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB179_33:                             # %._crit_edge
	ld.d	$fp, $s4, %pc_lo12(nointerrupt)
	ori	$a0, $zero, 1
	st.d	$a0, $s4, %pc_lo12(nointerrupt)
	beqz	$s0, .LBB179_35
# %bb.34:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB179_36
.LBB179_35:                             # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB179_36:
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB179_38
# %bb.37:
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 8
.LBB179_38:
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB179_40
# %bb.39:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 16
.LBB179_40:                             # %file_gc_free.exit.i
	st.d	$fp, $s4, %pc_lo12(nointerrupt)
	bnez	$fp, .LBB179_43
# %bb.41:                               # %file_gc_free.exit.i
	ld.d	$a0, $s3, %pc_lo12(interrupt_differed)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB179_43
# %bb.42:
	st.d	$zero, $s3, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB179_43:                             # %fclose_l.exit
	ld.d	$a0, $s5, %pc_lo12(siod_verbose_level)
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB179_47
# %bb.44:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	ld.d	$s0, $s4, %pc_lo12(nointerrupt)
	ori	$fp, $zero, 1
	st.d	$fp, $s4, %pc_lo12(nointerrupt)
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a0, $a0, %pc_lo12(.L.str.140)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.d	$s0, $s4, %pc_lo12(nointerrupt)
	bnez	$s0, .LBB179_47
# %bb.45:
	ld.d	$a0, $s3, %pc_lo12(interrupt_differed)
	bne	$a0, $fp, .LBB179_47
# %bb.46:
	st.d	$zero, $s3, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB179_47:                             # %put_st.exit31
	pcalau12i	$a0, %pc_hi20(sym_t)
	ld.d	$a0, $a0, %pc_lo12(sym_t)
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB179_48:                             # %._crit_edge.thread
	ld.d	$fp, $s4, %pc_lo12(nointerrupt)
	ori	$a0, $zero, 1
	st.d	$a0, $s4, %pc_lo12(nointerrupt)
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 17
	bne	$a0, $a1, .LBB179_35
	b	.LBB179_36
.Lfunc_end179:
	.size	save_forms, .Lfunc_end179-save_forms
                                        # -- End function
	.globl	quit                            # -- Begin function quit
	.p2align	5
	.type	quit,@function
quit:                                   # @quit
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end180:
	.size	quit, .Lfunc_end180-quit
                                        # -- End function
	.globl	nullp                           # -- Begin function nullp
	.p2align	5
	.type	nullp,@function
nullp:                                  # @nullp
# %bb.0:
	pcalau12i	$a1, %pc_hi20(sym_t)
	ld.d	$a1, $a1, %pc_lo12(sym_t)
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a1, $a0
	ret
.Lfunc_end181:
	.size	nullp, .Lfunc_end181-nullp
                                        # -- End function
	.globl	lgetc                           # -- Begin function lgetc
	.p2align	5
	.type	lgetc,@function
lgetc:                                  # @lgetc
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a0
	bnez	$a0, .LBB182_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB182_7
.LBB182_2:
	beqz	$fp, .LBB182_4
# %bb.3:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB182_5
.LBB182_4:                              # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB182_5:
	ld.d	$a0, $fp, 8
	bnez	$a0, .LBB182_7
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.151)
	addi.d	$a0, $a0, %pc_lo12(.L.str.151)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
.LBB182_7:                              # %get_c_file.exit
	pcalau12i	$s1, %pc_hi20(nointerrupt)
	ld.d	$s2, $s1, %pc_lo12(nointerrupt)
	ori	$s0, $zero, 1
	st.d	$s0, $s1, %pc_lo12(nointerrupt)
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s2, $s1, %pc_lo12(nointerrupt)
	bnez	$s2, .LBB182_10
# %bb.8:                                # %get_c_file.exit
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	ld.d	$a1, $a0, %pc_lo12(interrupt_differed)
	bne	$a1, $s0, .LBB182_10
# %bb.9:
	st.d	$zero, $a0, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB182_10:                             # %f_getc.exit
	addi.w	$a0, $zero, -1
	beq	$fp, $a0, .LBB182_18
# %bb.11:
	pcalau12i	$a0, %pc_hi20(inums_dim)
	ld.d	$a0, $a0, %pc_lo12(inums_dim)
	blez	$a0, .LBB182_14
# %bb.12:
	bgeu	$fp, $a0, .LBB182_14
# %bb.13:
	pcalau12i	$a0, %pc_hi20(inums)
	ld.d	$a0, $a0, %pc_lo12(inums)
	slli.d	$a1, $fp, 3
	ldx.d	$a0, $a0, $a1
	b	.LBB182_23
.LBB182_14:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	movgr2fr.w	$fa0, $fp
	ori	$a1, $zero, 1
	ffint.d.w	$fs0, $fa0
	bne	$a0, $a1, .LBB182_19
# %bb.15:
	pcalau12i	$fp, %pc_hi20(heap)
	ld.d	$a0, $fp, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB182_17
# %bb.16:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB182_17:
	addi.d	$a1, $a0, 24
	st.d	$a1, $fp, %pc_lo12(heap)
	b	.LBB182_22
.LBB182_18:
	move	$a0, $zero
	b	.LBB182_23
.LBB182_19:
	pcalau12i	$fp, %pc_hi20(freelist)
	ld.d	$a0, $fp, %pc_lo12(freelist)
	bnez	$a0, .LBB182_21
# %bb.20:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(freelist)
.LBB182_21:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $fp, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB182_22:
	lu12i.w	$a1, 32
	st.w	$a1, $a0, 0
	fst.d	$fs0, $a0, 8
.LBB182_23:                             # %flocons.exit
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end182:
	.size	lgetc, .Lfunc_end182-lgetc
                                        # -- End function
	.globl	lungetc                         # -- Begin function lungetc
	.p2align	5
	.type	lungetc,@function
lungetc:                                # @lungetc
# %bb.0:
	beqz	$a0, .LBB183_9
# %bb.1:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$fp, .LBB183_3
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$a1, $a0, 0
	bnez	$a1, .LBB183_8
.LBB183_3:
	beqz	$fp, .LBB183_5
# %bb.4:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB183_6
.LBB183_5:                              # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB183_6:
	ld.d	$a1, $fp, 8
	bnez	$a1, .LBB183_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L.str.151)
	addi.d	$a0, $a0, %pc_lo12(.L.str.151)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
.LBB183_8:                              # %get_c_file.exit
	addi.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(ungetc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB183_9:
	move	$a0, $zero
	ret
.Lfunc_end183:
	.size	lungetc, .Lfunc_end183-lungetc
                                        # -- End function
	.globl	lputc                           # -- Begin function lputc
	.p2align	5
	.type	lputc,@function
lputc:                                  # @lputc
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	bnez	$a1, .LBB184_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $a0, 0
	bnez	$a1, .LBB184_7
.LBB184_2:
	beqz	$s0, .LBB184_4
# %bb.3:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB184_5
.LBB184_4:                              # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB184_5:
	ld.d	$a1, $s0, 8
	bnez	$a1, .LBB184_7
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.151)
	addi.d	$a0, $a0, %pc_lo12(.L.str.151)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 8
.LBB184_7:                              # %get_c_file.exit
	beqz	$fp, .LBB184_18
# %bb.8:
	ld.hu	$a0, $fp, 2
	ori	$a2, $zero, 13
	beq	$a0, $a2, .LBB184_12
# %bb.9:
	ori	$a3, $zero, 3
	ori	$a2, $zero, 8
	beq	$a0, $a3, .LBB184_13
# %bb.10:
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB184_18
# %bb.11:
	fld.d	$fa0, $fp, 8
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	b	.LBB184_14
.LBB184_12:
	ori	$a2, $zero, 16
.LBB184_13:                             # %get_c_string.exit
	ldx.d	$a0, $fp, $a2
	ld.b	$a0, $a0, 0
.LBB184_14:
	pcalau12i	$s0, %pc_hi20(nointerrupt)
	ld.d	$s1, $s0, %pc_lo12(nointerrupt)
	ori	$fp, $zero, 1
	st.d	$fp, $s0, %pc_lo12(nointerrupt)
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	st.d	$s1, $s0, %pc_lo12(nointerrupt)
	bnez	$s1, .LBB184_17
# %bb.15:
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	ld.d	$a1, $a0, %pc_lo12(interrupt_differed)
	bne	$a1, $fp, .LBB184_17
# %bb.16:
	st.d	$zero, $a0, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB184_17:                             # %no_interrupt.exit
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB184_18:                             # %.critedge10.i
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.Lfunc_end184:
	.size	lputc, .Lfunc_end184-lputc
                                        # -- End function
	.globl	lputs                           # -- Begin function lputs
	.p2align	5
	.type	lputs,@function
lputs:                                  # @lputs
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a1
	move	$fp, $a0
	bnez	$a1, .LBB185_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$s0, $a0, 0
	bnez	$s0, .LBB185_6
.LBB185_2:
	beqz	$s1, .LBB185_4
# %bb.3:
	ld.hu	$a0, $s1, 2
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB185_5
.LBB185_4:                              # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB185_5:
	ld.d	$s0, $s1, 8
	beqz	$s0, .LBB185_11
.LBB185_6:                              # %get_c_file.exit
	beqz	$fp, .LBB185_12
.LBB185_7:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 13
	beq	$a0, $a1, .LBB185_10
# %bb.8:
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB185_12
# %bb.9:
	ld.d	$a0, $fp, 8
	b	.LBB185_13
.LBB185_10:
	ld.d	$a0, $fp, 16
	b	.LBB185_13
.LBB185_11:
	pcalau12i	$a0, %pc_hi20(.L.str.151)
	addi.d	$a0, $a0, %pc_lo12(.L.str.151)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s1, 8
	bnez	$fp, .LBB185_7
.LBB185_12:                             # %.critedge10.i
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB185_13:                             # %get_c_string.exit
	pcalau12i	$s1, %pc_hi20(nointerrupt)
	ld.d	$s2, $s1, %pc_lo12(nointerrupt)
	ori	$fp, $zero, 1
	st.d	$fp, $s1, %pc_lo12(nointerrupt)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	st.d	$s2, $s1, %pc_lo12(nointerrupt)
	bnez	$s2, .LBB185_16
# %bb.14:                               # %get_c_string.exit
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	ld.d	$a1, $a0, %pc_lo12(interrupt_differed)
	bne	$a1, $fp, .LBB185_16
# %bb.15:
	st.d	$zero, $a0, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB185_16:                             # %fput_st.exit
	move	$a0, $zero
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end185:
	.size	lputs, .Lfunc_end185-lputs
                                        # -- End function
	.globl	lftell                          # -- Begin function lftell
	.p2align	5
	.type	lftell,@function
lftell:                                 # @lftell
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB186_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB186_3
.LBB186_2:                              # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB186_3:
	ld.d	$a0, $fp, 8
	bnez	$a0, .LBB186_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.151)
	addi.d	$a0, $a0, %pc_lo12(.L.str.151)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
.LBB186_5:                              # %get_c_file.exit
	pcaddu18i	$ra, %call36(ftell)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(inums_dim)
	ld.d	$a2, $a1, %pc_lo12(inums_dim)
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs0, $fa0
	blez	$a2, .LBB186_10
# %bb.6:
	ftintrz.l.d	$fa0, $fs0
	movfr2gr.d	$a1, $fa0
	bge	$a1, $a2, .LBB186_10
# %bb.7:
	bltz	$a0, .LBB186_10
# %bb.8:
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	fcmp.cune.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB186_10
# %bb.9:
	pcalau12i	$a0, %pc_hi20(inums)
	ld.d	$a0, $a0, %pc_lo12(inums)
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	b	.LBB186_18
.LBB186_10:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB186_14
# %bb.11:
	pcalau12i	$fp, %pc_hi20(heap)
	ld.d	$a0, $fp, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB186_13
# %bb.12:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB186_13:
	addi.d	$a1, $a0, 24
	st.d	$a1, $fp, %pc_lo12(heap)
	b	.LBB186_17
.LBB186_14:
	pcalau12i	$fp, %pc_hi20(freelist)
	ld.d	$a0, $fp, %pc_lo12(freelist)
	bnez	$a0, .LBB186_16
# %bb.15:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(freelist)
.LBB186_16:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $fp, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB186_17:
	lu12i.w	$a1, 32
	st.w	$a1, $a0, 0
	fst.d	$fs0, $a0, 8
.LBB186_18:                             # %flocons.exit
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end186:
	.size	lftell, .Lfunc_end186-lftell
                                        # -- End function
	.globl	lfseek                          # -- Begin function lfseek
	.p2align	5
	.type	lfseek,@function
lfseek:                                 # @lfseek
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	beqz	$a0, .LBB187_2
# %bb.1:
	ld.hu	$a0, $s1, 2
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB187_3
.LBB187_2:                              # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB187_3:
	ld.d	$s2, $s1, 8
	bnez	$s2, .LBB187_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.151)
	addi.d	$a0, $a0, %pc_lo12(.L.str.151)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s1, 8
.LBB187_5:                              # %get_c_file.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	addi.w	$a2, $a0, 0
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(sym_t)
	ld.d	$a1, $a1, %pc_lo12(sym_t)
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a1, $a0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end187:
	.size	lfseek, .Lfunc_end187-lfseek
                                        # -- End function
	.globl	parse_number                    # -- Begin function parse_number
	.p2align	5
	.type	parse_number,@function
parse_number:                           # @parse_number
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$a1, $a0
	beqz	$a0, .LBB188_18
# %bb.1:
	ld.hu	$a0, $a1, 2
	ori	$a3, $zero, 3
	ori	$a2, $zero, 8
	beq	$a0, $a3, .LBB188_4
# %bb.2:
	ori	$a2, $zero, 13
	bne	$a0, $a2, .LBB188_18
# %bb.3:
	ori	$a2, $zero, 16
.LBB188_4:                              # %get_c_string.exit
	ldx.d	$a0, $a1, $a2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(inums_dim)
	ld.d	$a1, $a0, %pc_lo12(inums_dim)
	blez	$a1, .LBB188_9
# %bb.5:
	ftintrz.l.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	bge	$a0, $a1, .LBB188_9
# %bb.6:
	movgr2fr.d	$fa1, $zero
	fcmp.cult.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB188_9
# %bb.7:
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB188_9
# %bb.8:
	pcalau12i	$a1, %pc_hi20(inums)
	ld.d	$a1, $a1, %pc_lo12(inums)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	b	.LBB188_17
.LBB188_9:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB188_13
# %bb.10:
	pcalau12i	$fp, %pc_hi20(heap)
	ld.d	$a0, $fp, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB188_12
# %bb.11:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $zero
	fmov.d	$fs0, $fa0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	fmov.d	$fa0, $fs0
.LBB188_12:
	addi.d	$a1, $a0, 24
	st.d	$a1, $fp, %pc_lo12(heap)
	b	.LBB188_16
.LBB188_13:
	pcalau12i	$fp, %pc_hi20(freelist)
	ld.d	$a0, $fp, %pc_lo12(freelist)
	bnez	$a0, .LBB188_15
# %bb.14:
	fmov.d	$fs0, $fa0
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	fmov.d	$fa0, $fs0
	ld.d	$a0, $fp, %pc_lo12(freelist)
.LBB188_15:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $fp, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB188_16:
	lu12i.w	$a1, 32
	st.w	$a1, $a0, 0
	fst.d	$fa0, $a0, 8
.LBB188_17:                             # %flocons.exit
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB188_18:                             # %.critedge10.i
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.Lfunc_end188:
	.size	parse_number, .Lfunc_end188-parse_number
                                        # -- End function
	.globl	init_subrs                      # -- Begin function init_subrs
	.p2align	5
	.type	init_subrs,@function
init_subrs:                             # @init_subrs
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(init_subrs_1)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(init_subrs_a)
	jr	$t8
.Lfunc_end189:
	.size	init_subrs, .Lfunc_end189-init_subrs
                                        # -- End function
	.globl	init_subrs_1                    # -- Begin function init_subrs_1
	.p2align	5
	.type	init_subrs_1,@function
init_subrs_1:                           # @init_subrs_1
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
	pcalau12i	$a0, %pc_hi20(.L.str.153)
	addi.d	$s0, $a0, %pc_lo12(.L.str.153)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$s5, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $s5, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	pcalau12i	$s2, %pc_hi20(freelist)
	pcalau12i	$s1, %pc_hi20(gc_cells_allocated)
	pcalau12i	$s3, %pc_hi20(heap)
	pcalau12i	$s4, %pc_hi20(heap_end)
	bne	$a0, $a1, .LBB190_4
# %bb.1:
	ld.d	$s6, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s6, $a0, .LBB190_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_3:
	addi.d	$a0, $s6, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_7
.LBB190_4:
	ld.d	$s6, $s2, %pc_lo12(freelist)
	bnez	$s6, .LBB190_6
# %bb.5:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s2, %pc_lo12(freelist)
.LBB190_6:
	ld.d	$a0, $s6, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_7:                              # %subrcons.exit.i.i
	lu12i.w	$a0, 96
	st.w	$a0, $s6, 0
	st.d	$s0, $s6, 8
	pcalau12i	$a0, %pc_hi20(cons)
	addi.d	$a0, $a0, %pc_lo12(cons)
	st.d	$a0, $s6, 16
	beqz	$fp, .LBB190_9
# %bb.8:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_10
.LBB190_9:                              # %.critedge.i.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_10:                             # %init_subr_2.exit
	st.d	$s6, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.154)
	addi.d	$s0, $a0, %pc_lo12(.L.str.154)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_14
# %bb.11:
	ld.d	$s8, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s8, $a0, .LBB190_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_13:
	addi.d	$a0, $s8, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_17
.LBB190_14:
	ld.d	$s8, $s2, %pc_lo12(freelist)
	bnez	$s8, .LBB190_16
# %bb.15:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s8, $s2, %pc_lo12(freelist)
.LBB190_16:
	ld.d	$a0, $s8, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_17:                             # %subrcons.exit.i.i1
	lu12i.w	$s6, 80
	st.w	$s6, $s8, 0
	st.d	$s0, $s8, 8
	pcalau12i	$a0, %pc_hi20(car)
	addi.d	$a0, $a0, %pc_lo12(car)
	st.d	$a0, $s8, 16
	beqz	$fp, .LBB190_19
# %bb.18:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_20
.LBB190_19:                             # %.critedge.i.i.i3
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_20:                             # %init_subr_1.exit
	st.d	$s8, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.155)
	addi.d	$s0, $a0, %pc_lo12(.L.str.155)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_24
# %bb.21:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	lu12i.w	$s8, 96
	bltu	$s7, $a0, .LBB190_23
# %bb.22:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_23:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_27
.LBB190_24:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	lu12i.w	$s8, 96
	bnez	$s7, .LBB190_26
# %bb.25:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_26:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_27:                             # %subrcons.exit.i.i6
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(cdr)
	addi.d	$a0, $a0, %pc_lo12(cdr)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_29
# %bb.28:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_30
.LBB190_29:                             # %.critedge.i.i.i8
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_30:                             # %init_subr_1.exit11
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.156)
	addi.d	$s0, $a0, %pc_lo12(.L.str.156)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_34
# %bb.31:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_33
# %bb.32:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_33:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_37
.LBB190_34:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_36
# %bb.35:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_36:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_37:                             # %subrcons.exit.i.i12
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(setcar)
	addi.d	$a0, $a0, %pc_lo12(setcar)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_39
# %bb.38:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_40
.LBB190_39:                             # %.critedge.i.i.i14
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_40:                             # %init_subr_2.exit17
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.157)
	addi.d	$s0, $a0, %pc_lo12(.L.str.157)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_44
# %bb.41:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_43
# %bb.42:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_43:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_47
.LBB190_44:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_46
# %bb.45:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_46:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_47:                             # %subrcons.exit.i.i18
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(setcdr)
	addi.d	$a0, $a0, %pc_lo12(setcdr)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_49
# %bb.48:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_50
.LBB190_49:                             # %.critedge.i.i.i20
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_50:                             # %init_subr_2.exit23
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.158)
	addi.d	$s0, $a0, %pc_lo12(.L.str.158)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_54
# %bb.51:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_53
# %bb.52:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_53:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_57
.LBB190_54:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_56
# %bb.55:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_56:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_57:                             # %subrcons.exit.i.i24
	lu12i.w	$s8, 336
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(plus)
	addi.d	$a0, $a0, %pc_lo12(plus)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_59
# %bb.58:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_60
.LBB190_59:                             # %.critedge.i.i.i26
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_60:                             # %init_subr_2n.exit
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.159)
	addi.d	$s0, $a0, %pc_lo12(.L.str.159)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_64
# %bb.61:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_63
# %bb.62:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_63:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_67
.LBB190_64:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_66
# %bb.65:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_66:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_67:                             # %subrcons.exit.i.i29
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(difference)
	addi.d	$a0, $a0, %pc_lo12(difference)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_69
# %bb.68:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_70
.LBB190_69:                             # %.critedge.i.i.i31
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_70:                             # %init_subr_2n.exit34
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$s0, $a0, %pc_lo12(.L.str.141)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_74
# %bb.71:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_73
# %bb.72:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_73:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_77
.LBB190_74:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_76
# %bb.75:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_76:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_77:                             # %subrcons.exit.i.i35
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(ltimes)
	addi.d	$a0, $a0, %pc_lo12(ltimes)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_79
# %bb.78:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_80
.LBB190_79:                             # %.critedge.i.i.i37
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_80:                             # %init_subr_2n.exit40
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$s0, $a0, %pc_lo12(.L.str.137)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_84
# %bb.81:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_83
# %bb.82:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_83:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_87
.LBB190_84:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_86
# %bb.85:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_86:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_87:                             # %subrcons.exit.i.i41
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(Quotient)
	addi.d	$a0, $a0, %pc_lo12(Quotient)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_89
# %bb.88:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_90
.LBB190_89:                             # %.critedge.i.i.i43
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_90:                             # %init_subr_2n.exit46
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.160)
	addi.d	$s0, $a0, %pc_lo12(.L.str.160)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_94
# %bb.91:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_93
# %bb.92:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_93:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_97
.LBB190_94:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_96
# %bb.95:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_96:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_97:                             # %subrcons.exit.i.i47
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lmin)
	addi.d	$a0, $a0, %pc_lo12(lmin)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_99
# %bb.98:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_100
.LBB190_99:                             # %.critedge.i.i.i49
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_100:                            # %init_subr_2n.exit52
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.161)
	addi.d	$s0, $a0, %pc_lo12(.L.str.161)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_104
# %bb.101:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_103
# %bb.102:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_103:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_107
.LBB190_104:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_106
# %bb.105:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_106:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_107:                            # %subrcons.exit.i.i53
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lmax)
	addi.d	$a0, $a0, %pc_lo12(lmax)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_109
# %bb.108:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_110
.LBB190_109:                            # %.critedge.i.i.i55
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_110:                            # %init_subr_2n.exit58
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.162)
	addi.d	$s0, $a0, %pc_lo12(.L.str.162)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	lu12i.w	$s8, 96
	bne	$a1, $a2, .LBB190_114
# %bb.111:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_113
# %bb.112:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_113:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_117
.LBB190_114:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_116
# %bb.115:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_116:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_117:                            # %subrcons.exit.i.i59
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lllabs)
	addi.d	$a0, $a0, %pc_lo12(lllabs)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_119
# %bb.118:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_120
.LBB190_119:                            # %.critedge.i.i.i61
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_120:                            # %init_subr_1.exit64
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.163)
	addi.d	$s0, $a0, %pc_lo12(.L.str.163)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_124
# %bb.121:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_123
# %bb.122:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_123:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_127
.LBB190_124:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_126
# %bb.125:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_126:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_127:                            # %subrcons.exit.i.i65
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lsqrt)
	addi.d	$a0, $a0, %pc_lo12(lsqrt)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_129
# %bb.128:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_130
.LBB190_129:                            # %.critedge.i.i.i67
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_130:                            # %init_subr_1.exit70
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$s0, $a0, %pc_lo12(.L.str.118)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_134
# %bb.131:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_133
# %bb.132:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_133:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_137
.LBB190_134:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_136
# %bb.135:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_136:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_137:                            # %subrcons.exit.i.i71
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(greaterp)
	addi.d	$a0, $a0, %pc_lo12(greaterp)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_139
# %bb.138:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_140
.LBB190_139:                            # %.critedge.i.i.i73
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_140:                            # %init_subr_2.exit76
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$s0, $a0, %pc_lo12(.L.str.164)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_144
# %bb.141:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_143
# %bb.142:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_143:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_147
.LBB190_144:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_146
# %bb.145:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_146:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_147:                            # %subrcons.exit.i.i77
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lessp)
	addi.d	$a0, $a0, %pc_lo12(lessp)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_149
# %bb.148:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_150
.LBB190_149:                            # %.critedge.i.i.i79
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_150:                            # %init_subr_2.exit82
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.165)
	addi.d	$s0, $a0, %pc_lo12(.L.str.165)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_154
# %bb.151:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_153
# %bb.152:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_153:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_157
.LBB190_154:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_156
# %bb.155:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_156:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_157:                            # %subrcons.exit.i.i83
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(greaterEp)
	addi.d	$a0, $a0, %pc_lo12(greaterEp)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_159
# %bb.158:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_160
.LBB190_159:                            # %.critedge.i.i.i85
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_160:                            # %init_subr_2.exit88
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.166)
	addi.d	$s0, $a0, %pc_lo12(.L.str.166)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_164
# %bb.161:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_163
# %bb.162:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_163:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_167
.LBB190_164:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_166
# %bb.165:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_166:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_167:                            # %subrcons.exit.i.i89
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lessEp)
	addi.d	$a0, $a0, %pc_lo12(lessEp)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_169
# %bb.168:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_170
.LBB190_169:                            # %.critedge.i.i.i91
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_170:                            # %init_subr_2.exit94
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.167)
	addi.d	$s0, $a0, %pc_lo12(.L.str.167)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_174
# %bb.171:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_173
# %bb.172:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_173:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_177
.LBB190_174:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_176
# %bb.175:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_176:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_177:                            # %subrcons.exit.i.i95
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(eq)
	addi.d	$a0, $a0, %pc_lo12(eq)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_179
# %bb.178:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_180
.LBB190_179:                            # %.critedge.i.i.i97
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_180:                            # %init_subr_2.exit100
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$s0, $a0, %pc_lo12(.L.str.168)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_184
# %bb.181:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_183
# %bb.182:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_183:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_187
.LBB190_184:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_186
# %bb.185:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_186:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_187:                            # %subrcons.exit.i.i101
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(eql)
	addi.d	$s8, $a0, %pc_lo12(eql)
	st.d	$s8, $s7, 16
	beqz	$fp, .LBB190_189
# %bb.188:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_190
.LBB190_189:                            # %.critedge.i.i.i103
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_190:                            # %init_subr_2.exit106
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$s0, $a0, %pc_lo12(.L.str.169)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_194
# %bb.191:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_193
# %bb.192:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_193:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_197
.LBB190_194:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_196
# %bb.195:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_196:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_197:                            # %subrcons.exit.i.i107
	lu12i.w	$a0, 96
	st.w	$a0, $s7, 0
	st.d	$s0, $s7, 8
	st.d	$s8, $s7, 16
	beqz	$fp, .LBB190_199
# %bb.198:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_200
.LBB190_199:                            # %.critedge.i.i.i109
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_200:                            # %init_subr_2.exit112
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.170)
	addi.d	$s0, $a0, %pc_lo12(.L.str.170)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_204
# %bb.201:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	lu12i.w	$s8, 96
	bltu	$s7, $a0, .LBB190_203
# %bb.202:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_203:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_207
.LBB190_204:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	lu12i.w	$s8, 96
	bnez	$s7, .LBB190_206
# %bb.205:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_206:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_207:                            # %subrcons.exit.i.i113
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(assq)
	addi.d	$a0, $a0, %pc_lo12(assq)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_209
# %bb.208:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_210
.LBB190_209:                            # %.critedge.i.i.i115
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_210:                            # %init_subr_2.exit118
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$s0, $a0, %pc_lo12(.L.str.171)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_214
# %bb.211:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_213
# %bb.212:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_213:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_217
.LBB190_214:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_216
# %bb.215:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_216:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_217:                            # %subrcons.exit.i.i119
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(delq)
	addi.d	$a0, $a0, %pc_lo12(delq)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_219
# %bb.218:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_220
.LBB190_219:                            # %.critedge.i.i.i121
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_220:                            # %init_subr_2.exit124
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.172)
	addi.d	$s0, $a0, %pc_lo12(.L.str.172)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_224
# %bb.221:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_223
# %bb.222:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_223:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_227
.LBB190_224:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_226
# %bb.225:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_226:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_227:                            # %subrcons.exit.i.i125
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lread)
	addi.d	$a0, $a0, %pc_lo12(lread)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_229
# %bb.228:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_230
.LBB190_229:                            # %.critedge.i.i.i127
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_230:                            # %init_subr_1.exit130
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.173)
	addi.d	$s0, $a0, %pc_lo12(.L.str.173)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_234
# %bb.231:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_233
# %bb.232:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_233:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_237
.LBB190_234:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_236
# %bb.235:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_236:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_237:                            # %subrcons.exit.i.i131
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(parser_read)
	addi.d	$a0, $a0, %pc_lo12(parser_read)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_239
# %bb.238:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_240
.LBB190_239:                            # %.critedge.i.i.i133
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_240:                            # %init_subr_1.exit136
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(sym_t)
	ld.d	$s0, $a1, %pc_lo12(sym_t)
	move	$fp, $a0
	beqz	$a0, .LBB190_242
# %bb.241:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_243
.LBB190_242:                            # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_243:                            # %setvar.exit
	st.d	$s0, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.175)
	addi.d	$s0, $a0, %pc_lo12(.L.str.175)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_247
# %bb.244:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_246
# %bb.245:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_246:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_250
.LBB190_247:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_249
# %bb.248:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_249:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_250:                            # %subrcons.exit.i.i137
	lu12i.w	$a0, 64
	st.w	$a0, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(get_eof_val)
	addi.d	$a0, $a0, %pc_lo12(get_eof_val)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_252
# %bb.251:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_253
.LBB190_252:                            # %.critedge.i.i.i139
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_253:                            # %init_subr_0.exit
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.176)
	addi.d	$s0, $a0, %pc_lo12(.L.str.176)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_257
# %bb.254:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_256
# %bb.255:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_256:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_260
.LBB190_257:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_259
# %bb.258:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_259:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_260:                            # %subrcons.exit.i.i142
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lprint)
	addi.d	$a0, $a0, %pc_lo12(lprint)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_262
# %bb.261:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_263
.LBB190_262:                            # %.critedge.i.i.i144
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_263:                            # %init_subr_2.exit147
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.177)
	addi.d	$s0, $a0, %pc_lo12(.L.str.177)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_267
# %bb.264:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_266
# %bb.265:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_266:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_270
.LBB190_267:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_269
# %bb.268:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_269:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_270:                            # %subrcons.exit.i.i148
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lprin1)
	addi.d	$a0, $a0, %pc_lo12(lprin1)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_272
# %bb.271:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_273
.LBB190_272:                            # %.critedge.i.i.i150
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_273:                            # %init_subr_2.exit153
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.178)
	addi.d	$s0, $a0, %pc_lo12(.L.str.178)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_277
# %bb.274:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_276
# %bb.275:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_276:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_280
.LBB190_277:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_279
# %bb.278:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_279:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_280:                            # %subrcons.exit.i.i154
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(leval)
	addi.d	$a0, $a0, %pc_lo12(leval)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_282
# %bb.281:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_283
.LBB190_282:                            # %.critedge.i.i.i156
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_283:                            # %init_subr_2.exit159
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.179)
	addi.d	$s0, $a0, %pc_lo12(.L.str.179)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_287
# %bb.284:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_286
# %bb.285:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_286:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_290
.LBB190_287:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_289
# %bb.288:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_289:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_290:                            # %subrcons.exit.i.i160
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lapply)
	addi.d	$a0, $a0, %pc_lo12(lapply)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_292
# %bb.291:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_293
.LBB190_292:                            # %.critedge.i.i.i162
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_293:                            # %init_subr_2.exit165
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.180)
	addi.d	$s0, $a0, %pc_lo12(.L.str.180)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_297
# %bb.294:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_296
# %bb.295:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_296:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_300
.LBB190_297:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_299
# %bb.298:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_299:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_300:                            # %subrcons.exit.i.i166
	lu12i.w	$a0, 144
	st.w	$a0, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(leval_define)
	addi.d	$a0, $a0, %pc_lo12(leval_define)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_302
# %bb.301:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_303
.LBB190_302:                            # %.critedge.i.i.i168
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_303:                            # %init_fsubr.exit
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$s0, $a0, %pc_lo12(.L.str.66)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_307
# %bb.304:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_306
# %bb.305:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_306:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_310
.LBB190_307:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_309
# %bb.308:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_309:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_310:                            # %subrcons.exit.i.i171
	lu12i.w	$a0, 144
	st.w	$a0, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(leval_lambda)
	addi.d	$a0, $a0, %pc_lo12(leval_lambda)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_312
# %bb.311:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_313
.LBB190_312:                            # %.critedge.i.i.i173
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_313:                            # %init_fsubr.exit176
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.181)
	addi.d	$s0, $a0, %pc_lo12(.L.str.181)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_317
# %bb.314:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_316
# %bb.315:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_316:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_320
.LBB190_317:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_319
# %bb.318:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_319:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_320:                            # %subrcons.exit.i.i177
	lu12i.w	$s8, 160
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(leval_if)
	addi.d	$a0, $a0, %pc_lo12(leval_if)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_322
# %bb.321:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_323
.LBB190_322:                            # %.critedge.i.i.i179
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_323:                            # %init_msubr.exit
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.182)
	addi.d	$s0, $a0, %pc_lo12(.L.str.182)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_327
# %bb.324:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_326
# %bb.325:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_326:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_330
.LBB190_327:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_329
# %bb.328:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_329:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_330:                            # %subrcons.exit.i.i182
	lu12i.w	$a0, 144
	st.w	$a0, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(leval_while)
	addi.d	$a0, $a0, %pc_lo12(leval_while)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_332
# %bb.331:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_333
.LBB190_332:                            # %.critedge.i.i.i184
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_333:                            # %init_fsubr.exit187
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$s0, $a0, %pc_lo12(.L.str.65)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_337
# %bb.334:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_336
# %bb.335:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_336:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_340
.LBB190_337:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_339
# %bb.338:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_339:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_340:                            # %subrcons.exit.i.i188
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(leval_progn)
	addi.d	$a0, $a0, %pc_lo12(leval_progn)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_342
# %bb.341:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_343
.LBB190_342:                            # %.critedge.i.i.i190
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_343:                            # %init_msubr.exit193
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$s0, $a0, %pc_lo12(.L.str.95)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_347
# %bb.344:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_346
# %bb.345:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_346:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_350
.LBB190_347:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_349
# %bb.348:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_349:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_350:                            # %subrcons.exit.i.i194
	lu12i.w	$a0, 144
	st.w	$a0, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(leval_setq)
	addi.d	$a0, $a0, %pc_lo12(leval_setq)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_352
# %bb.351:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_353
.LBB190_352:                            # %.critedge.i.i.i196
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_353:                            # %init_fsubr.exit199
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.183)
	addi.d	$s0, $a0, %pc_lo12(.L.str.183)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_357
# %bb.354:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_356
# %bb.355:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_356:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_360
.LBB190_357:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_359
# %bb.358:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_359:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_360:                            # %subrcons.exit.i.i200
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(leval_or)
	addi.d	$a0, $a0, %pc_lo12(leval_or)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_362
# %bb.361:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_363
.LBB190_362:                            # %.critedge.i.i.i202
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_363:                            # %init_msubr.exit205
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.184)
	addi.d	$s0, $a0, %pc_lo12(.L.str.184)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_367
# %bb.364:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_366
# %bb.365:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_366:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_370
.LBB190_367:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_369
# %bb.368:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_369:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_370:                            # %subrcons.exit.i.i206
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(leval_and)
	addi.d	$a0, $a0, %pc_lo12(leval_and)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_372
# %bb.371:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_373
.LBB190_372:                            # %.critedge.i.i.i208
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_373:                            # %init_msubr.exit211
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.185)
	addi.d	$s0, $a0, %pc_lo12(.L.str.185)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_377
# %bb.374:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_376
# %bb.375:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_376:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_380
.LBB190_377:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_379
# %bb.378:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_379:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_380:                            # %subrcons.exit.i.i212
	lu12i.w	$a0, 144
	st.w	$a0, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(leval_catch)
	addi.d	$a0, $a0, %pc_lo12(leval_catch)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_382
# %bb.381:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_383
.LBB190_382:                            # %.critedge.i.i.i214
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_383:                            # %init_fsubr.exit217
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.186)
	addi.d	$s0, $a0, %pc_lo12(.L.str.186)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_387
# %bb.384:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_386
# %bb.385:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_386:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_390
.LBB190_387:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_389
# %bb.388:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_389:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_390:                            # %subrcons.exit.i.i218
	lu12i.w	$a0, 96
	st.w	$a0, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lthrow)
	addi.d	$a0, $a0, %pc_lo12(lthrow)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_392
# %bb.391:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_393
.LBB190_392:                            # %.critedge.i.i.i220
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_393:                            # %init_subr_2.exit223
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$s0, $a0, %pc_lo12(.L.str.67)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_397
# %bb.394:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_396
# %bb.395:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_396:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_400
.LBB190_397:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_399
# %bb.398:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_399:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_400:                            # %subrcons.exit.i.i224
	lu12i.w	$a0, 144
	st.w	$a0, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(leval_quote)
	addi.d	$a0, $a0, %pc_lo12(leval_quote)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_402
# %bb.401:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_403
.LBB190_402:                            # %.critedge.i.i.i226
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_403:                            # %init_fsubr.exit229
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.187)
	addi.d	$s0, $a0, %pc_lo12(.L.str.187)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_407
# %bb.404:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_406
# %bb.405:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_406:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_410
.LBB190_407:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_409
# %bb.408:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_409:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_410:                            # %subrcons.exit.i.i230
	lu12i.w	$a0, 128
	st.w	$a0, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(apropos)
	addi.d	$a0, $a0, %pc_lo12(apropos)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_412
# %bb.411:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_413
.LBB190_412:                            # %.critedge.i.i.i232
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_413:                            # %init_lsubr.exit
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.188)
	addi.d	$s0, $a0, %pc_lo12(.L.str.188)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_417
# %bb.414:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_416
# %bb.415:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_416:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_420
.LBB190_417:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_419
# %bb.418:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_419:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_420:                            # %subrcons.exit.i.i235
	lu12i.w	$a0, 128
	st.w	$a0, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(siod_verbose)
	addi.d	$a0, $a0, %pc_lo12(siod_verbose)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_422
# %bb.421:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_423
.LBB190_422:                            # %.critedge.i.i.i237
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_423:                            # %init_lsubr.exit240
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.189)
	addi.d	$s0, $a0, %pc_lo12(.L.str.189)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_427
# %bb.424:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_426
# %bb.425:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_426:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_430
.LBB190_427:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_429
# %bb.428:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_429:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_430:                            # %subrcons.exit.i.i241
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(copy_list)
	addi.d	$a0, $a0, %pc_lo12(copy_list)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_432
# %bb.431:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_433
.LBB190_432:                            # %.critedge.i.i.i243
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_433:                            # %init_subr_1.exit246
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.190)
	addi.d	$s0, $a0, %pc_lo12(.L.str.190)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_437
# %bb.434:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_436
# %bb.435:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_436:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_440
.LBB190_437:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_439
# %bb.438:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_439:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_440:                            # %subrcons.exit.i.i247
	lu12i.w	$a0, 128
	st.w	$a0, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(gc_status)
	addi.d	$a0, $a0, %pc_lo12(gc_status)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_442
# %bb.441:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_443
.LBB190_442:                            # %.critedge.i.i.i249
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_443:                            # %init_lsubr.exit252
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.191)
	addi.d	$s0, $a0, %pc_lo12(.L.str.191)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_447
# %bb.444:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_446
# %bb.445:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_446:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_450
.LBB190_447:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_449
# %bb.448:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_449:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_450:                            # %subrcons.exit.i.i253
	lu12i.w	$a0, 128
	st.w	$a0, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(user_gc)
	addi.d	$a0, $a0, %pc_lo12(user_gc)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_452
# %bb.451:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_453
.LBB190_452:                            # %.critedge.i.i.i255
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_453:                            # %init_lsubr.exit258
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.192)
	addi.d	$s0, $a0, %pc_lo12(.L.str.192)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_457
# %bb.454:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_456
# %bb.455:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_456:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_460
.LBB190_457:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_459
# %bb.458:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_459:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_460:                            # %subrcons.exit.i.i259
	lu12i.w	$a0, 112
	st.w	$a0, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(load)
	addi.d	$a0, $a0, %pc_lo12(load)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_462
# %bb.461:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_463
.LBB190_462:                            # %.critedge.i.i.i261
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_463:                            # %init_subr_3.exit
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.193)
	addi.d	$s0, $a0, %pc_lo12(.L.str.193)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_467
# %bb.464:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_466
# %bb.465:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_466:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_470
.LBB190_467:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_469
# %bb.468:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_469:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_470:                            # %subrcons.exit.i.i264
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(require)
	addi.d	$a0, $a0, %pc_lo12(require)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_472
# %bb.471:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_473
.LBB190_472:                            # %.critedge.i.i.i266
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_473:                            # %init_subr_1.exit269
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.194)
	addi.d	$s0, $a0, %pc_lo12(.L.str.194)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_477
# %bb.474:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_476
# %bb.475:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_476:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_480
.LBB190_477:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_479
# %bb.478:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_479:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_480:                            # %subrcons.exit.i.i270
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(consp)
	addi.d	$a0, $a0, %pc_lo12(consp)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_482
# %bb.481:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_483
.LBB190_482:                            # %.critedge.i.i.i272
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_483:                            # %init_subr_1.exit275
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.195)
	addi.d	$s0, $a0, %pc_lo12(.L.str.195)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_487
# %bb.484:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_486
# %bb.485:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_486:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_490
.LBB190_487:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_489
# %bb.488:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_489:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_490:                            # %subrcons.exit.i.i276
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(symbolp)
	addi.d	$a0, $a0, %pc_lo12(symbolp)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_492
# %bb.491:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_493
.LBB190_492:                            # %.critedge.i.i.i278
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_493:                            # %init_subr_1.exit281
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.196)
	addi.d	$s0, $a0, %pc_lo12(.L.str.196)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_497
# %bb.494:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_496
# %bb.495:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_496:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_500
.LBB190_497:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_499
# %bb.498:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_499:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_500:                            # %subrcons.exit.i.i282
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(numberp)
	addi.d	$a0, $a0, %pc_lo12(numberp)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_502
# %bb.501:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_503
.LBB190_502:                            # %.critedge.i.i.i284
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_503:                            # %init_subr_1.exit287
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$s0, $a0, %pc_lo12(.L.str.96)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_507
# %bb.504:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_506
# %bb.505:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_506:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_510
.LBB190_507:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_509
# %bb.508:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_509:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_510:                            # %subrcons.exit.i.i288
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(leval_let)
	addi.d	$a0, $a0, %pc_lo12(leval_let)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_512
# %bb.511:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_513
.LBB190_512:                            # %.critedge.i.i.i290
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_513:                            # %init_msubr.exit293
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$s0, $a0, %pc_lo12(.L.str.58)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	lu12i.w	$s8, 96
	bne	$a1, $a2, .LBB190_517
# %bb.514:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_516
# %bb.515:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_516:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_520
.LBB190_517:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_519
# %bb.518:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_519:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_520:                            # %subrcons.exit.i.i294
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(let_macro)
	addi.d	$a0, $a0, %pc_lo12(let_macro)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_522
# %bb.521:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_523
.LBB190_522:                            # %.critedge.i.i.i296
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_523:                            # %init_subr_1.exit299
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$s0, $a0, %pc_lo12(.L.str.60)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_527
# %bb.524:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_526
# %bb.525:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_526:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_530
.LBB190_527:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_529
# %bb.528:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_529:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_530:                            # %subrcons.exit.i.i300
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(letstar_macro)
	addi.d	$a0, $a0, %pc_lo12(letstar_macro)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_532
# %bb.531:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_533
.LBB190_532:                            # %.critedge.i.i.i302
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_533:                            # %init_subr_1.exit305
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$s0, $a0, %pc_lo12(.L.str.62)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_537
# %bb.534:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_536
# %bb.535:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_536:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_540
.LBB190_537:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_539
# %bb.538:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_539:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_540:                            # %subrcons.exit.i.i306
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(letrec_macro)
	addi.d	$a0, $a0, %pc_lo12(letrec_macro)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_542
# %bb.541:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_543
.LBB190_542:                            # %.critedge.i.i.i308
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_543:                            # %init_subr_1.exit311
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.197)
	addi.d	$s0, $a0, %pc_lo12(.L.str.197)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_547
# %bb.544:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_546
# %bb.545:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_546:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_550
.LBB190_547:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_549
# %bb.548:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_549:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_550:                            # %subrcons.exit.i.i312
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(symbol_boundp)
	addi.d	$a0, $a0, %pc_lo12(symbol_boundp)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_552
# %bb.551:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_553
.LBB190_552:                            # %.critedge.i.i.i314
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_553:                            # %init_subr_2.exit317
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.198)
	addi.d	$s0, $a0, %pc_lo12(.L.str.198)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_557
# %bb.554:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_556
# %bb.555:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_556:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_560
.LBB190_557:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_559
# %bb.558:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_559:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_560:                            # %subrcons.exit.i.i318
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(symbol_value)
	addi.d	$a0, $a0, %pc_lo12(symbol_value)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_562
# %bb.561:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_563
.LBB190_562:                            # %.critedge.i.i.i320
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_563:                            # %init_subr_2.exit323
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.199)
	addi.d	$s0, $a0, %pc_lo12(.L.str.199)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_567
# %bb.564:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_566
# %bb.565:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_566:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_570
.LBB190_567:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_569
# %bb.568:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_569:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_570:                            # %subrcons.exit.i.i324
	lu12i.w	$a0, 112
	st.w	$a0, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(setvar)
	addi.d	$a0, $a0, %pc_lo12(setvar)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_572
# %bb.571:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_573
.LBB190_572:                            # %.critedge.i.i.i326
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_573:                            # %init_subr_3.exit329
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.200)
	addi.d	$s0, $a0, %pc_lo12(.L.str.200)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_577
# %bb.574:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_576
# %bb.575:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_576:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_580
.LBB190_577:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_579
# %bb.578:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_579:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_580:                            # %subrcons.exit.i.i330
	lu12i.w	$a0, 144
	st.w	$a0, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(leval_tenv)
	addi.d	$a0, $a0, %pc_lo12(leval_tenv)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_582
# %bb.581:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_583
.LBB190_582:                            # %.critedge.i.i.i332
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_583:                            # %init_fsubr.exit335
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.201)
	addi.d	$s0, $a0, %pc_lo12(.L.str.201)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_587
# %bb.584:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_586
# %bb.585:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_586:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_590
.LBB190_587:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_589
# %bb.588:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_589:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_590:                            # %subrcons.exit.i.i336
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lerr)
	addi.d	$a0, $a0, %pc_lo12(lerr)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_592
# %bb.591:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_593
.LBB190_592:                            # %.critedge.i.i.i338
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_593:                            # %init_subr_2.exit341
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$s0, $a0, %pc_lo12(.L.str.20)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	lu12i.w	$s8, 64
	bne	$a1, $a2, .LBB190_597
# %bb.594:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_596
# %bb.595:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_596:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_600
.LBB190_597:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_599
# %bb.598:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_599:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_600:                            # %subrcons.exit.i.i342
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(quit)
	addi.d	$a0, $a0, %pc_lo12(quit)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_602
# %bb.601:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_603
.LBB190_602:                            # %.critedge.i.i.i344
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_603:                            # %init_subr_0.exit347
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.202)
	addi.d	$s0, $a0, %pc_lo12(.L.str.202)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_607
# %bb.604:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_606
# %bb.605:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_606:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_610
.LBB190_607:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_609
# %bb.608:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_609:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_610:                            # %subrcons.exit.i.i348
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(nullp)
	addi.d	$s8, $a0, %pc_lo12(nullp)
	st.d	$s8, $s7, 16
	beqz	$fp, .LBB190_612
# %bb.611:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_613
.LBB190_612:                            # %.critedge.i.i.i350
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_613:                            # %init_subr_1.exit353
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.203)
	addi.d	$s0, $a0, %pc_lo12(.L.str.203)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_617
# %bb.614:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_616
# %bb.615:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_616:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	st.d	$s8, $s7, 16
	bnez	$fp, .LBB190_620
	b	.LBB190_621
.LBB190_617:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_619
# %bb.618:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_619:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	st.d	$s8, $s7, 16
	beqz	$fp, .LBB190_621
.LBB190_620:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_622
.LBB190_621:                            # %.critedge.i.i.i356
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_622:                            # %init_subr_1.exit359
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.204)
	addi.d	$s0, $a0, %pc_lo12(.L.str.204)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	lu12i.w	$s8, 96
	bne	$a1, $a2, .LBB190_626
# %bb.623:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_625
# %bb.624:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_625:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_629
.LBB190_626:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_628
# %bb.627:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_628:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_629:                            # %subrcons.exit.i.i360
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(envlookup)
	addi.d	$a0, $a0, %pc_lo12(envlookup)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_631
# %bb.630:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_632
.LBB190_631:                            # %.critedge.i.i.i362
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_632:                            # %init_subr_2.exit365
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.205)
	addi.d	$s0, $a0, %pc_lo12(.L.str.205)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_636
# %bb.633:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_635
# %bb.634:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_635:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_639
.LBB190_636:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_638
# %bb.637:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_638:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_639:                            # %subrcons.exit.i.i366
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(reverse)
	addi.d	$a0, $a0, %pc_lo12(reverse)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_641
# %bb.640:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_642
.LBB190_641:                            # %.critedge.i.i.i368
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_642:                            # %init_subr_1.exit371
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.206)
	addi.d	$s0, $a0, %pc_lo12(.L.str.206)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_646
# %bb.643:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_645
# %bb.644:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_645:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_649
.LBB190_646:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_648
# %bb.647:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_648:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_649:                            # %subrcons.exit.i.i372
	lu12i.w	$a0, 128
	st.w	$a0, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(symbolconc)
	addi.d	$a0, $a0, %pc_lo12(symbolconc)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_651
# %bb.650:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_652
.LBB190_651:                            # %.critedge.i.i.i374
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_652:                            # %init_lsubr.exit377
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.207)
	addi.d	$s0, $a0, %pc_lo12(.L.str.207)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_656
# %bb.653:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_655
# %bb.654:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_655:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_659
.LBB190_656:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_658
# %bb.657:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_658:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_659:                            # %subrcons.exit.i.i378
	lu12i.w	$a0, 112
	st.w	$a0, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(save_forms)
	addi.d	$a0, $a0, %pc_lo12(save_forms)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_661
# %bb.660:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_662
.LBB190_661:                            # %.critedge.i.i.i380
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_662:                            # %init_subr_3.exit383
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.208)
	addi.d	$s0, $a0, %pc_lo12(.L.str.208)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_666
# %bb.663:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_665
# %bb.664:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_665:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_669
.LBB190_666:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_668
# %bb.667:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_668:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_669:                            # %subrcons.exit.i.i384
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(fopen_l)
	addi.d	$a0, $a0, %pc_lo12(fopen_l)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_671
# %bb.670:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_672
.LBB190_671:                            # %.critedge.i.i.i386
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_672:                            # %init_subr_2.exit389
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.209)
	addi.d	$s0, $a0, %pc_lo12(.L.str.209)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_676
# %bb.673:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_675
# %bb.674:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_675:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_679
.LBB190_676:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_678
# %bb.677:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_678:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_679:                            # %subrcons.exit.i.i390
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(fclose_l)
	addi.d	$a0, $a0, %pc_lo12(fclose_l)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_681
# %bb.680:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_682
.LBB190_681:                            # %.critedge.i.i.i392
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_682:                            # %init_subr_1.exit395
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.210)
	addi.d	$s0, $a0, %pc_lo12(.L.str.210)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_686
# %bb.683:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_685
# %bb.684:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_685:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_689
.LBB190_686:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_688
# %bb.687:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_688:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_689:                            # %subrcons.exit.i.i396
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lgetc)
	addi.d	$a0, $a0, %pc_lo12(lgetc)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_691
# %bb.690:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_692
.LBB190_691:                            # %.critedge.i.i.i398
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_692:                            # %init_subr_1.exit401
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.211)
	addi.d	$s0, $a0, %pc_lo12(.L.str.211)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_696
# %bb.693:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_695
# %bb.694:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_695:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_699
.LBB190_696:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_698
# %bb.697:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_698:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_699:                            # %subrcons.exit.i.i402
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lungetc)
	addi.d	$a0, $a0, %pc_lo12(lungetc)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_701
# %bb.700:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_702
.LBB190_701:                            # %.critedge.i.i.i404
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_702:                            # %init_subr_2.exit407
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.212)
	addi.d	$s0, $a0, %pc_lo12(.L.str.212)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_706
# %bb.703:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_705
# %bb.704:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_705:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_709
.LBB190_706:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_708
# %bb.707:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_708:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_709:                            # %subrcons.exit.i.i408
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lputc)
	addi.d	$a0, $a0, %pc_lo12(lputc)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_711
# %bb.710:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_712
.LBB190_711:                            # %.critedge.i.i.i410
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_712:                            # %init_subr_2.exit413
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.213)
	addi.d	$s0, $a0, %pc_lo12(.L.str.213)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_716
# %bb.713:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_715
# %bb.714:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_715:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_719
.LBB190_716:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_718
# %bb.717:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_718:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_719:                            # %subrcons.exit.i.i414
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lputs)
	addi.d	$a0, $a0, %pc_lo12(lputs)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_721
# %bb.720:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_722
.LBB190_721:                            # %.critedge.i.i.i416
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_722:                            # %init_subr_2.exit419
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.214)
	addi.d	$s0, $a0, %pc_lo12(.L.str.214)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_726
# %bb.723:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_725
# %bb.724:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_725:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_729
.LBB190_726:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_728
# %bb.727:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_728:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_729:                            # %subrcons.exit.i.i420
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lftell)
	addi.d	$a0, $a0, %pc_lo12(lftell)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_731
# %bb.730:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_732
.LBB190_731:                            # %.critedge.i.i.i422
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_732:                            # %init_subr_1.exit425
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.215)
	addi.d	$s0, $a0, %pc_lo12(.L.str.215)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_736
# %bb.733:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_735
# %bb.734:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_735:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_739
.LBB190_736:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_738
# %bb.737:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_738:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_739:                            # %subrcons.exit.i.i426
	lu12i.w	$a0, 112
	st.w	$a0, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lfseek)
	addi.d	$a0, $a0, %pc_lo12(lfseek)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_741
# %bb.740:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_742
.LBB190_741:                            # %.critedge.i.i.i428
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_742:                            # %init_subr_3.exit431
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.216)
	addi.d	$s0, $a0, %pc_lo12(.L.str.216)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_746
# %bb.743:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_745
# %bb.744:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_745:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_749
.LBB190_746:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_748
# %bb.747:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_748:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_749:                            # %subrcons.exit.i.i432
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(parse_number)
	addi.d	$a0, $a0, %pc_lo12(parse_number)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_751
# %bb.750:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_752
.LBB190_751:                            # %.critedge.i.i.i434
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_752:                            # %init_subr_1.exit437
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.217)
	addi.d	$s0, $a0, %pc_lo12(.L.str.217)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_756
# %bb.753:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_755
# %bb.754:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_755:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_759
.LBB190_756:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_758
# %bb.757:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_758:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_759:                            # %subrcons.exit.i.i438
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(stack_limit)
	addi.d	$a0, $a0, %pc_lo12(stack_limit)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_761
# %bb.760:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_762
.LBB190_761:                            # %.critedge.i.i.i440
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_762:                            # %init_subr_2.exit443
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.218)
	addi.d	$s0, $a0, %pc_lo12(.L.str.218)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_766
# %bb.763:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_765
# %bb.764:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_765:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_769
.LBB190_766:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_768
# %bb.767:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_768:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_769:                            # %subrcons.exit.i.i444
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(intern)
	addi.d	$a0, $a0, %pc_lo12(intern)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_771
# %bb.770:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_772
.LBB190_771:                            # %.critedge.i.i.i446
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_772:                            # %init_subr_1.exit449
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.219)
	addi.d	$s0, $a0, %pc_lo12(.L.str.219)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_776
# %bb.773:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_775
# %bb.774:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_775:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_779
.LBB190_776:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_778
# %bb.777:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_778:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_779:                            # %subrcons.exit.i.i450
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(closure)
	addi.d	$a0, $a0, %pc_lo12(closure)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_781
# %bb.780:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_782
.LBB190_781:                            # %.critedge.i.i.i452
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_782:                            # %init_subr_2.exit455
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.220)
	addi.d	$s0, $a0, %pc_lo12(.L.str.220)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	lu12i.w	$s8, 64
	bne	$a1, $a2, .LBB190_786
# %bb.783:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_785
# %bb.784:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_785:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_789
.LBB190_786:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_788
# %bb.787:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_788:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_789:                            # %subrcons.exit.i.i456
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(closure_code)
	addi.d	$a0, $a0, %pc_lo12(closure_code)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_791
# %bb.790:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_792
.LBB190_791:                            # %.critedge.i.i.i458
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_792:                            # %init_subr_1.exit461
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.221)
	addi.d	$s0, $a0, %pc_lo12(.L.str.221)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_796
# %bb.793:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_795
# %bb.794:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_795:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_799
.LBB190_796:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_798
# %bb.797:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_798:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_799:                            # %subrcons.exit.i.i462
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(closure_env)
	addi.d	$a0, $a0, %pc_lo12(closure_env)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_801
# %bb.800:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_802
.LBB190_801:                            # %.critedge.i.i.i464
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_802:                            # %init_subr_1.exit467
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.182)
	addi.d	$s0, $a0, %pc_lo12(.L.str.182)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_806
# %bb.803:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_805
# %bb.804:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_805:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_809
.LBB190_806:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_808
# %bb.807:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_808:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_809:                            # %subrcons.exit.i.i468
	lu12i.w	$a0, 144
	st.w	$a0, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lwhile)
	addi.d	$a0, $a0, %pc_lo12(lwhile)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_811
# %bb.810:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_812
.LBB190_811:                            # %.critedge.i.i.i470
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_812:                            # %init_fsubr.exit473
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.222)
	addi.d	$s0, $a0, %pc_lo12(.L.str.222)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_816
# %bb.813:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_815
# %bb.814:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_815:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_819
.LBB190_816:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_818
# %bb.817:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_818:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_819:                            # %subrcons.exit.i.i474
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(nreverse)
	addi.d	$a0, $a0, %pc_lo12(nreverse)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_821
# %bb.820:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_822
.LBB190_821:                            # %.critedge.i.i.i476
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_822:                            # %init_subr_1.exit479
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.223)
	addi.d	$s0, $a0, %pc_lo12(.L.str.223)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_826
# %bb.823:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_825
# %bb.824:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_825:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_829
.LBB190_826:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_828
# %bb.827:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_828:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_829:                            # %subrcons.exit.i.i480
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(allocate_aheap)
	addi.d	$a0, $a0, %pc_lo12(allocate_aheap)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_831
# %bb.830:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_832
.LBB190_831:                            # %.critedge.i.i.i482
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_832:                            # %init_subr_0.exit485
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.224)
	addi.d	$s0, $a0, %pc_lo12(.L.str.224)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_836
# %bb.833:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_835
# %bb.834:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_835:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_839
.LBB190_836:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_838
# %bb.837:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_838:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_839:                            # %subrcons.exit.i.i486
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(gc_info)
	addi.d	$a0, $a0, %pc_lo12(gc_info)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_841
# %bb.840:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_842
.LBB190_841:                            # %.critedge.i.i.i488
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_842:                            # %init_subr_1.exit491
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.225)
	addi.d	$s0, $a0, %pc_lo12(.L.str.225)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_846
# %bb.843:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_845
# %bb.844:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_845:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_849
.LBB190_846:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_848
# %bb.847:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_848:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_849:                            # %subrcons.exit.i.i492
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lruntime)
	addi.d	$a0, $a0, %pc_lo12(lruntime)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_851
# %bb.850:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_852
.LBB190_851:                            # %.critedge.i.i.i494
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_852:                            # %init_subr_0.exit497
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.226)
	addi.d	$s0, $a0, %pc_lo12(.L.str.226)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_856
# %bb.853:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_855
# %bb.854:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_855:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_859
.LBB190_856:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_858
# %bb.857:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_858:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_859:                            # %subrcons.exit.i.i498
	st.w	$s8, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lrealtime)
	addi.d	$a0, $a0, %pc_lo12(lrealtime)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_861
# %bb.860:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_862
.LBB190_861:                            # %.critedge.i.i.i500
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_862:                            # %init_subr_0.exit503
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.227)
	addi.d	$s0, $a0, %pc_lo12(.L.str.227)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_866
# %bb.863:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_865
# %bb.864:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_865:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_869
.LBB190_866:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_868
# %bb.867:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_868:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_869:                            # %subrcons.exit.i.i504
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(caar)
	addi.d	$a0, $a0, %pc_lo12(caar)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_871
# %bb.870:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_872
.LBB190_871:                            # %.critedge.i.i.i506
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_872:                            # %init_subr_1.exit509
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.228)
	addi.d	$s0, $a0, %pc_lo12(.L.str.228)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_876
# %bb.873:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_875
# %bb.874:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_875:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_879
.LBB190_876:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_878
# %bb.877:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_878:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_879:                            # %subrcons.exit.i.i510
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(cadr)
	addi.d	$a0, $a0, %pc_lo12(cadr)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_881
# %bb.880:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_882
.LBB190_881:                            # %.critedge.i.i.i512
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_882:                            # %init_subr_1.exit515
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.229)
	addi.d	$s0, $a0, %pc_lo12(.L.str.229)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_886
# %bb.883:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_885
# %bb.884:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_885:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_889
.LBB190_886:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_888
# %bb.887:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_888:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_889:                            # %subrcons.exit.i.i516
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(cdar)
	addi.d	$a0, $a0, %pc_lo12(cdar)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_891
# %bb.890:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_892
.LBB190_891:                            # %.critedge.i.i.i518
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_892:                            # %init_subr_1.exit521
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.230)
	addi.d	$s0, $a0, %pc_lo12(.L.str.230)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_896
# %bb.893:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_895
# %bb.894:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_895:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_899
.LBB190_896:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_898
# %bb.897:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_898:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_899:                            # %subrcons.exit.i.i522
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(cddr)
	addi.d	$a0, $a0, %pc_lo12(cddr)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_901
# %bb.900:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_902
.LBB190_901:                            # %.critedge.i.i.i524
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_902:                            # %init_subr_1.exit527
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.231)
	addi.d	$s0, $a0, %pc_lo12(.L.str.231)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_906
# %bb.903:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_905
# %bb.904:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_905:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_909
.LBB190_906:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_908
# %bb.907:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_908:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_909:                            # %subrcons.exit.i.i528
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lrand)
	addi.d	$a0, $a0, %pc_lo12(lrand)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_911
# %bb.910:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_912
.LBB190_911:                            # %.critedge.i.i.i530
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_912:                            # %init_subr_1.exit533
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.232)
	addi.d	$s0, $a0, %pc_lo12(.L.str.232)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_916
# %bb.913:
	ld.d	$s7, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s7, $a0, .LBB190_915
# %bb.914:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_915:
	addi.d	$a0, $s7, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_919
.LBB190_916:
	ld.d	$s7, $s2, %pc_lo12(freelist)
	bnez	$s7, .LBB190_918
# %bb.917:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(freelist)
.LBB190_918:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_919:                            # %subrcons.exit.i.i534
	st.w	$s6, $s7, 0
	st.d	$s0, $s7, 8
	pcalau12i	$a0, %pc_hi20(lsrand)
	addi.d	$a0, $a0, %pc_lo12(lsrand)
	st.d	$a0, $s7, 16
	beqz	$fp, .LBB190_921
# %bb.920:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_922
.LBB190_921:                            # %.critedge.i.i.i536
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_922:                            # %init_subr_1.exit539
	st.d	$s7, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.233)
	addi.d	$s0, $a0, %pc_lo12(.L.str.233)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_926
# %bb.923:
	ld.d	$s6, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s6, $a0, .LBB190_925
# %bb.924:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_925:
	addi.d	$a0, $s6, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_929
.LBB190_926:
	ld.d	$s6, $s2, %pc_lo12(freelist)
	bnez	$s6, .LBB190_928
# %bb.927:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s2, %pc_lo12(freelist)
.LBB190_928:
	ld.d	$a0, $s6, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_929:                            # %subrcons.exit.i.i540
	st.w	$s8, $s6, 0
	st.d	$s0, $s6, 8
	pcalau12i	$a0, %pc_hi20(lllast_c_errmsg)
	addi.d	$a0, $a0, %pc_lo12(lllast_c_errmsg)
	st.d	$a0, $s6, 16
	beqz	$fp, .LBB190_931
# %bb.930:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_932
.LBB190_931:                            # %.critedge.i.i.i542
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_932:                            # %init_subr_0.exit545
	st.d	$s6, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.234)
	addi.d	$s0, $a0, %pc_lo12(.L.str.234)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, %pc_lo12(gc_kind_copying)
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB190_936
# %bb.933:
	ld.d	$s5, $s3, %pc_lo12(heap)
	ld.d	$a0, $s4, %pc_lo12(heap_end)
	bltu	$s5, $a0, .LBB190_935
# %bb.934:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_935:
	addi.d	$a0, $s5, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB190_939
.LBB190_936:
	ld.d	$s5, $s2, %pc_lo12(freelist)
	bnez	$s5, .LBB190_938
# %bb.937:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s2, %pc_lo12(freelist)
.LBB190_938:
	ld.d	$a0, $s5, 16
	ld.d	$a1, $s1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s2, %pc_lo12(freelist)
	addi.d	$a0, $a1, 1
	st.d	$a0, $s1, %pc_lo12(gc_cells_allocated)
.LBB190_939:                            # %subrcons.exit.i.i546
	st.w	$s8, $s5, 0
	st.d	$s0, $s5, 8
	pcalau12i	$a0, %pc_hi20(os_classification)
	addi.d	$a0, $a0, %pc_lo12(os_classification)
	st.d	$a0, $s5, 16
	beqz	$fp, .LBB190_941
# %bb.940:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_942
.LBB190_941:                            # %.critedge.i.i.i548
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_942:                            # %init_subr_0.exit551
	st.d	$s5, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.239)
	addi.d	$a0, $a0, %pc_lo12(.L.str.239)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.240)
	addi.d	$a0, $a0, %pc_lo12(.L.str.240)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$fp, .LBB190_944
# %bb.943:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB190_945
.LBB190_944:                            # %.critedge.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB190_945:                            # %init_slib_version.exit
	st.d	$s0, $fp, 16
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
.Lfunc_end190:
	.size	init_subrs_1, .Lfunc_end190-init_subrs_1
                                        # -- End function
	.globl	closure_code                    # -- Begin function closure_code
	.p2align	5
	.type	closure_code,@function
closure_code:                           # @closure_code
# %bb.0:
	ld.d	$a0, $a0, 16
	ret
.Lfunc_end191:
	.size	closure_code, .Lfunc_end191-closure_code
                                        # -- End function
	.globl	closure_env                     # -- Begin function closure_env
	.p2align	5
	.type	closure_env,@function
closure_env:                            # @closure_env
# %bb.0:
	ld.d	$a0, $a0, 8
	ret
.Lfunc_end192:
	.size	closure_env, .Lfunc_end192-closure_env
                                        # -- End function
	.globl	lwhile                          # -- Begin function lwhile
	.p2align	5
	.type	lwhile,@function
lwhile:                                 # @lwhile
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	beqz	$a0, .LBB193_2
# %bb.1:
	move	$s0, $a0
	ori	$s4, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$s2, $a0, %pc_lo12(.L.str.28)
	b	.LBB193_5
	.p2align	4, , 16
.LBB193_2:                              # %car.exit.thread.us
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB193_2
.LBB193_3:                              # %.split18.us
	move	$a0, $zero
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
	.p2align	4, , 16
.LBB193_4:                              # %.loopexit.sink.split
                                        #   in Loop: Header=BB193_5 Depth=1
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB193_5:                              # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB193_13 Depth 2
	ld.hu	$a0, $s0, 2
	beqz	$a0, .LBB193_9
# %bb.6:                                # %.split
                                        #   in Loop: Header=BB193_5 Depth=1
	bne	$a0, $s4, .LBB193_8
# %bb.7:                                #   in Loop: Header=BB193_5 Depth=1
	ld.d	$a0, $s0, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB193_10
	b	.LBB193_3
	.p2align	4, , 16
.LBB193_8:                              #   in Loop: Header=BB193_5 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB193_9:                              # %car.exit
                                        #   in Loop: Header=BB193_5 Depth=1
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB193_3
.LBB193_10:                             #   in Loop: Header=BB193_5 Depth=1
	ld.hu	$a0, $s0, 2
	beqz	$a0, .LBB193_5
# %bb.11:                               #   in Loop: Header=BB193_5 Depth=1
	move	$s3, $s0
	bne	$a0, $s4, .LBB193_4
# %bb.12:                               # %cdr.exit
                                        #   in Loop: Header=BB193_5 Depth=1
	ld.d	$s3, $s0, 16
	beqz	$s3, .LBB193_5
	.p2align	4, , 16
.LBB193_13:                             # %.lr.ph
                                        #   Parent Loop BB193_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $s3, 2
	beqz	$a0, .LBB193_17
# %bb.14:                               # %.lr.ph
                                        #   in Loop: Header=BB193_13 Depth=2
	bne	$a0, $s4, .LBB193_16
# %bb.15:                               #   in Loop: Header=BB193_13 Depth=2
	ld.d	$a0, $s3, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s3, 2
	beq	$a0, $s4, .LBB193_18
	b	.LBB193_19
	.p2align	4, , 16
.LBB193_16:                             #   in Loop: Header=BB193_13 Depth=2
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB193_17:                             #   in Loop: Header=BB193_13 Depth=2
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s3, 2
	bne	$a0, $s4, .LBB193_19
.LBB193_18:                             # %cdr.exit12
                                        #   in Loop: Header=BB193_13 Depth=2
	ld.d	$s3, $s3, 16
	bnez	$s3, .LBB193_13
	b	.LBB193_5
.LBB193_19:                             #   in Loop: Header=BB193_5 Depth=1
	beqz	$a0, .LBB193_5
	b	.LBB193_4
.Lfunc_end193:
	.size	lwhile, .Lfunc_end193-lwhile
                                        # -- End function
	.globl	nreverse                        # -- Begin function nreverse
	.p2align	5
	.type	nreverse,@function
nreverse:                               # @nreverse
# %bb.0:
	beqz	$a0, .LBB194_5
# %bb.1:                                # %.lr.ph.preheader
	move	$a1, $a0
	move	$a2, $zero
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB194_2:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.hu	$a1, $a1, 2
	bne	$a1, $a3, .LBB194_6
# %bb.3:                                #   in Loop: Header=BB194_2 Depth=1
	ld.d	$a1, $a0, 16
	st.d	$a2, $a0, 16
	move	$a2, $a0
	bnez	$a1, .LBB194_2
# %bb.4:                                # %.critedge
	ret
.LBB194_5:
	move	$a0, $zero
	ret
.LBB194_6:
	move	$a0, $a2
	ret
.Lfunc_end194:
	.size	nreverse, .Lfunc_end194-nreverse
                                        # -- End function
	.globl	siod_verbose                    # -- Begin function siod_verbose
	.p2align	5
	.type	siod_verbose,@function
siod_verbose:                           # @siod_verbose
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	beqz	$a0, .LBB195_4
# %bb.1:
	move	$a1, $a0
	ld.hu	$a0, $a0, 2
	beqz	$a0, .LBB195_6
# %bb.2:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB195_5
# %bb.3:
	ld.d	$a0, $a1, 8
	b	.LBB195_7
.LBB195_4:                              # %._crit_edge
	pcalau12i	$a0, %pc_hi20(siod_verbose_level)
	ld.d	$a0, $a0, %pc_lo12(siod_verbose_level)
	b	.LBB195_8
.LBB195_5:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB195_6:                              # %car.exit
	move	$a0, $zero
.LBB195_7:                              # %car.exit
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(siod_verbose_level)
	st.d	$a0, $a1, %pc_lo12(siod_verbose_level)
.LBB195_8:
	pcalau12i	$a1, %pc_hi20(inums_dim)
	ld.d	$a2, $a1, %pc_lo12(inums_dim)
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs0, $fa0
	blez	$a2, .LBB195_13
# %bb.9:
	ftintrz.l.d	$fa0, $fs0
	movfr2gr.d	$a1, $fa0
	bge	$a1, $a2, .LBB195_13
# %bb.10:
	bltz	$a0, .LBB195_13
# %bb.11:
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	fcmp.cune.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB195_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(inums)
	ld.d	$a0, $a0, %pc_lo12(inums)
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	b	.LBB195_21
.LBB195_13:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB195_17
# %bb.14:
	pcalau12i	$fp, %pc_hi20(heap)
	ld.d	$a0, $fp, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB195_16
# %bb.15:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB195_16:
	addi.d	$a1, $a0, 24
	st.d	$a1, $fp, %pc_lo12(heap)
	b	.LBB195_20
.LBB195_17:
	pcalau12i	$fp, %pc_hi20(freelist)
	ld.d	$a0, $fp, %pc_lo12(freelist)
	bnez	$a0, .LBB195_19
# %bb.18:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(freelist)
.LBB195_19:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $fp, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB195_20:
	lu12i.w	$a1, 32
	st.w	$a1, $a0, 0
	fst.d	$fs0, $a0, 8
.LBB195_21:                             # %flocons.exit
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end195:
	.size	siod_verbose, .Lfunc_end195-siod_verbose
                                        # -- End function
	.globl	siod_verbose_check              # -- Begin function siod_verbose_check
	.p2align	5
	.type	siod_verbose_check,@function
siod_verbose_check:                     # @siod_verbose_check
# %bb.0:
	pcalau12i	$a1, %pc_hi20(siod_verbose_level)
	ld.d	$a1, $a1, %pc_lo12(siod_verbose_level)
	slt	$a0, $a1, $a0
	xori	$a0, $a0, 1
	ret
.Lfunc_end196:
	.size	siod_verbose_check, .Lfunc_end196-siod_verbose_check
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function lruntime
.LCPI197_0:
	.dword	0x404e000000000000              # double 60
	.text
	.globl	lruntime
	.p2align	5
	.type	lruntime,@function
lruntime:                               # @lruntime
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 48                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(times)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 24
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	pcalau12i	$a0, %pc_hi20(.LCPI197_0)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI197_0)
	pcalau12i	$s2, %pc_hi20(inums_dim)
	ld.d	$a0, $s2, %pc_lo12(inums_dim)
	fadd.d	$fa0, $fa0, $fa1
	fdiv.d	$fs1, $fa0, $fa2
	pcalau12i	$s0, %pc_hi20(gc_kind_copying)
	lu12i.w	$s1, 32
	blez	$a0, .LBB197_5
# %bb.1:
	ftintrz.l.d	$fa0, $fs1
	movfr2gr.d	$a1, $fa0
	bge	$a1, $a0, .LBB197_5
# %bb.2:
	movgr2fr.d	$fa0, $zero
	fcmp.cult.d	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB197_5
# %bb.3:
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	fcmp.cune.d	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB197_5
# %bb.4:                                # %flocons.exit.thread
	pcalau12i	$a2, %pc_hi20(inums)
	ld.d	$a2, $a2, %pc_lo12(inums)
	slli.d	$a1, $a1, 3
	ldx.d	$fp, $a2, $a1
	pcalau12i	$a1, %pc_hi20(gc_time_taken)
	fld.d	$fs0, $a1, %pc_lo12(gc_time_taken)
	b	.LBB197_13
.LBB197_5:
	ld.d	$a0, $s0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB197_9
# %bb.6:
	pcalau12i	$s3, %pc_hi20(heap)
	ld.d	$fp, $s3, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$fp, $a0, .LBB197_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB197_8:
	addi.d	$a0, $fp, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB197_12
.LBB197_9:
	pcalau12i	$s3, %pc_hi20(freelist)
	ld.d	$fp, $s3, %pc_lo12(freelist)
	bnez	$fp, .LBB197_11
# %bb.10:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s3, %pc_lo12(freelist)
.LBB197_11:
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s3, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB197_12:                             # %flocons.exit
	st.w	$s1, $fp, 0
	ld.d	$a0, $s2, %pc_lo12(inums_dim)
	pcalau12i	$a1, %pc_hi20(gc_time_taken)
	fld.d	$fs0, $a1, %pc_lo12(gc_time_taken)
	fst.d	$fs1, $fp, 8
	blez	$a0, .LBB197_20
.LBB197_13:
	ftintrz.l.d	$fa0, $fs0
	movfr2gr.d	$a1, $fa0
	bge	$a1, $a0, .LBB197_20
# %bb.14:
	movgr2fr.d	$fa0, $zero
	fcmp.cult.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB197_20
# %bb.15:
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	fcmp.cune.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB197_20
# %bb.16:
	pcalau12i	$a0, %pc_hi20(inums)
	ld.d	$a0, $a0, %pc_lo12(inums)
	slli.d	$a1, $a1, 3
	ldx.d	$s2, $a0, $a1
	ld.d	$a0, $s0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB197_28
.LBB197_17:
	pcalau12i	$s3, %pc_hi20(freelist)
	ld.d	$s1, $s3, %pc_lo12(freelist)
	bnez	$s1, .LBB197_19
# %bb.18:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s3, %pc_lo12(freelist)
.LBB197_19:
	ld.d	$a0, $s1, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s3, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
	b	.LBB197_31
.LBB197_20:
	ld.d	$a0, $s0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB197_24
# %bb.21:
	pcalau12i	$s3, %pc_hi20(heap)
	ld.d	$s2, $s3, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s2, $a0, .LBB197_23
# %bb.22:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB197_23:
	addi.d	$a0, $s2, 24
	st.d	$a0, $s3, %pc_lo12(heap)
	b	.LBB197_27
.LBB197_24:
	pcalau12i	$s3, %pc_hi20(freelist)
	ld.d	$s2, $s3, %pc_lo12(freelist)
	bnez	$s2, .LBB197_26
# %bb.25:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s3, %pc_lo12(freelist)
.LBB197_26:
	ld.d	$a0, $s2, 16
	pcalau12i	$a1, %pc_hi20(gc_cells_allocated)
	ld.d	$a2, $a1, %pc_lo12(gc_cells_allocated)
	st.d	$a0, $s3, %pc_lo12(freelist)
	addi.d	$a0, $a2, 1
	st.d	$a0, $a1, %pc_lo12(gc_cells_allocated)
.LBB197_27:
	st.w	$s1, $s2, 0
	fst.d	$fs0, $s2, 8
	ld.d	$a0, $s0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB197_17
.LBB197_28:
	pcalau12i	$s3, %pc_hi20(heap)
	ld.d	$s1, $s3, %pc_lo12(heap)
	pcalau12i	$a0, %pc_hi20(heap_end)
	ld.d	$a0, $a0, %pc_lo12(heap_end)
	bltu	$s1, $a0, .LBB197_30
# %bb.29:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB197_30:
	addi.d	$a0, $s1, 24
	st.d	$a0, $s3, %pc_lo12(heap)
.LBB197_31:                             # %cons.exit
	lu12i.w	$s3, 16
	st.w	$s3, $s1, 0
	ld.d	$a0, $s0, %pc_lo12(gc_kind_copying)
	st.d	$s2, $s1, 8
	ori	$a1, $zero, 1
	st.d	$zero, $s1, 16
	bne	$a0, $a1, .LBB197_35
# %bb.32:
	pcalau12i	$s0, %pc_hi20(heap)
	ld.d	$a0, $s0, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB197_34
# %bb.33:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB197_34:
	addi.d	$a1, $a0, 24
	st.d	$a1, $s0, %pc_lo12(heap)
	b	.LBB197_38
.LBB197_35:
	pcalau12i	$s0, %pc_hi20(freelist)
	ld.d	$a0, $s0, %pc_lo12(freelist)
	bnez	$a0, .LBB197_37
# %bb.36:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(freelist)
.LBB197_37:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $s0, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB197_38:                             # %cons.exit14
	st.w	$s3, $a0, 0
	st.d	$fp, $a0, 8
	st.d	$s1, $a0, 16
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end197:
	.size	lruntime, .Lfunc_end197-lruntime
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function lrealtime
.LCPI198_0:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.globl	lrealtime
	.p2align	5
	.type	lrealtime,@function
lrealtime:                              # @lrealtime
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB198_2
# %bb.1:
	movgr2fr.d	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(inums_dim)
	ld.d	$a1, $a0, %pc_lo12(inums_dim)
	bgtz	$a1, .LBB198_3
	b	.LBB198_7
.LBB198_2:
	ld.d	$a0, $sp, 0
	movgr2fr.d	$fa0, $a0
	ld.d	$a0, $sp, 8
	pcalau12i	$a1, %pc_hi20(.LCPI198_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI198_0)
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa2, $a0
	ffint.d.l	$fa2, $fa2
	fmadd.d	$fs0, $fa2, $fa1, $fa0
	pcalau12i	$a0, %pc_hi20(inums_dim)
	ld.d	$a1, $a0, %pc_lo12(inums_dim)
	blez	$a1, .LBB198_7
.LBB198_3:
	ftintrz.l.d	$fa0, $fs0
	movfr2gr.d	$a0, $fa0
	bge	$a0, $a1, .LBB198_7
# %bb.4:
	movgr2fr.d	$fa0, $zero
	fcmp.cult.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB198_7
# %bb.5:
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fcmp.cune.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB198_7
# %bb.6:
	pcalau12i	$a1, %pc_hi20(inums)
	ld.d	$a1, $a1, %pc_lo12(inums)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	b	.LBB198_15
.LBB198_7:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB198_11
# %bb.8:
	pcalau12i	$fp, %pc_hi20(heap)
	ld.d	$a0, $fp, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB198_10
# %bb.9:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB198_10:
	addi.d	$a1, $a0, 24
	st.d	$a1, $fp, %pc_lo12(heap)
	b	.LBB198_14
.LBB198_11:
	pcalau12i	$fp, %pc_hi20(freelist)
	ld.d	$a0, $fp, %pc_lo12(freelist)
	bnez	$a0, .LBB198_13
# %bb.12:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(freelist)
.LBB198_13:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $fp, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB198_14:
	lu12i.w	$a1, 32
	st.w	$a1, $a0, 0
	fst.d	$fs0, $a0, 8
.LBB198_15:                             # %flocons.exit
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end198:
	.size	lrealtime, .Lfunc_end198-lrealtime
                                        # -- End function
	.globl	cdar                            # -- Begin function cdar
	.p2align	5
	.type	cdar,@function
cdar:                                   # @cdar
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB199_9
# %bb.1:
	move	$a1, $a0
	ld.hu	$a0, $a0, 2
	beqz	$a0, .LBB199_9
# %bb.2:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB199_7
# %bb.3:                                # %car.exit
	ld.d	$a1, $a1, 8
	beqz	$a1, .LBB199_9
# %bb.4:
	ld.hu	$a0, $a1, 2
	beqz	$a0, .LBB199_9
# %bb.5:
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB199_10
# %bb.6:
	ld.d	$a0, $a1, 16
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB199_7:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
.LBB199_8:                              # %cdr.exit
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB199_9:                              # %cdr.exit
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB199_10:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	b	.LBB199_8
.Lfunc_end199:
	.size	cdar, .Lfunc_end199-cdar
                                        # -- End function
	.globl	lrand                           # -- Begin function lrand
	.p2align	5
	.type	lrand,@function
lrand:                                  # @lrand
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$s0, $a0
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$s0, .LBB200_10
# %bb.1:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(inums_dim)
	ld.d	$a2, $a1, %pc_lo12(inums_dim)
	mod.d	$a1, $fp, $a0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fs0, $fa0
	blez	$a2, .LBB200_6
# %bb.2:
	ftintrz.l.d	$fa0, $fs0
	movfr2gr.d	$a0, $fa0
	bge	$a0, $a2, .LBB200_6
# %bb.3:
	bltz	$a1, .LBB200_6
# %bb.4:
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fcmp.cune.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB200_6
# %bb.5:
	pcalau12i	$a1, %pc_hi20(inums)
	ld.d	$a1, $a1, %pc_lo12(inums)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	b	.LBB200_18
.LBB200_6:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB200_14
.LBB200_7:
	pcalau12i	$fp, %pc_hi20(heap)
	ld.d	$a0, $fp, %pc_lo12(heap)
	pcalau12i	$a1, %pc_hi20(heap_end)
	ld.d	$a1, $a1, %pc_lo12(heap_end)
	bltu	$a0, $a1, .LBB200_9
# %bb.8:
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB200_9:
	addi.d	$a1, $a0, 24
	st.d	$a1, $fp, %pc_lo12(heap)
	b	.LBB200_17
.LBB200_10:
	pcalau12i	$a0, %pc_hi20(inums_dim)
	ld.d	$a0, $a0, %pc_lo12(inums_dim)
	blez	$a0, .LBB200_13
# %bb.11:
	bgeu	$fp, $a0, .LBB200_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(inums)
	ld.d	$a0, $a0, %pc_lo12(inums)
	slli.d	$a1, $fp, 3
	ldx.d	$a0, $a0, $a1
	b	.LBB200_18
.LBB200_13:
	pcalau12i	$a0, %pc_hi20(gc_kind_copying)
	ld.d	$a0, $a0, %pc_lo12(gc_kind_copying)
	movgr2fr.w	$fa0, $fp
	ori	$a1, $zero, 1
	ffint.d.w	$fs0, $fa0
	beq	$a0, $a1, .LBB200_7
.LBB200_14:
	pcalau12i	$fp, %pc_hi20(freelist)
	ld.d	$a0, $fp, %pc_lo12(freelist)
	bnez	$a0, .LBB200_16
# %bb.15:
	pcaddu18i	$ra, %call36(gc_for_newcell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(freelist)
.LBB200_16:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(gc_cells_allocated)
	ld.d	$a3, $a2, %pc_lo12(gc_cells_allocated)
	st.d	$a1, $fp, %pc_lo12(freelist)
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, %pc_lo12(gc_cells_allocated)
.LBB200_17:
	lu12i.w	$a1, 32
	st.w	$a1, $a0, 0
	fst.d	$fs0, $a0, 8
.LBB200_18:                             # %flocons.exit
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end200:
	.size	lrand, .Lfunc_end200-lrand
                                        # -- End function
	.globl	lsrand                          # -- Begin function lsrand
	.p2align	5
	.type	lsrand,@function
lsrand:                                 # @lsrand
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_long)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(srand)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end201:
	.size	lsrand, .Lfunc_end201-lsrand
                                        # -- End function
	.globl	a_true_value                    # -- Begin function a_true_value
	.p2align	5
	.type	a_true_value,@function
a_true_value:                           # @a_true_value
# %bb.0:
	pcalau12i	$a0, %pc_hi20(sym_t)
	ld.d	$a0, $a0, %pc_lo12(sym_t)
	ret
.Lfunc_end202:
	.size	a_true_value, .Lfunc_end202-a_true_value
                                        # -- End function
	.globl	poparg                          # -- Begin function poparg
	.p2align	5
	.type	poparg,@function
poparg:                                 # @poparg
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a2, $a0, 0
	move	$fp, $a1
	beqz	$a2, .LBB203_12
# %bb.1:
	ld.hu	$a1, $a2, 2
	beqz	$a1, .LBB203_4
# %bb.2:
	ori	$a3, $zero, 1
	bne	$a1, $a3, .LBB203_5
# %bb.3:                                # %car.exit.thread14
	ld.d	$fp, $a2, 8
	b	.LBB203_6
.LBB203_4:
	move	$fp, $zero
	b	.LBB203_10
.LBB203_5:                              # %car.exit
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	move	$fp, $a0
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$a2, $fp, 0
	move	$fp, $zero
	move	$a1, $zero
	beqz	$a2, .LBB203_11
.LBB203_6:                              # %car.exit.thread
	ld.hu	$a1, $a2, 2
	beqz	$a1, .LBB203_10
# %bb.7:                                # %car.exit.thread
	ori	$a3, $zero, 1
	bne	$a1, $a3, .LBB203_9
# %bb.8:
	ld.d	$a1, $a2, 16
	b	.LBB203_11
.LBB203_9:
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB203_10:                             # %cdr.exit
	move	$a1, $zero
.LBB203_11:                             # %cdr.exit
	st.d	$a1, $a0, 0
.LBB203_12:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end203:
	.size	poparg, .Lfunc_end203-poparg
                                        # -- End function
	.globl	last_c_errmsg                   # -- Begin function last_c_errmsg
	.p2align	5
	.type	last_c_errmsg,@function
last_c_errmsg:                          # @last_c_errmsg
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	bltz	$a0, .LBB204_3
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strerror)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB204_4
.LBB204_2:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB204_3:
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$fp, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strerror)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB204_2
.LBB204_4:
	pcalau12i	$a0, %pc_hi20(last_c_errmsg.serrmsg)
	addi.d	$s0, $a0, %pc_lo12(last_c_errmsg.serrmsg)
	pcalau12i	$a0, %pc_hi20(.L.str.152)
	addi.d	$a1, $a0, %pc_lo12(.L.str.152)
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB204_2
.Lfunc_end204:
	.size	last_c_errmsg, .Lfunc_end204-last_c_errmsg
                                        # -- End function
	.globl	lllast_c_errmsg                 # -- Begin function lllast_c_errmsg
	.p2align	5
	.type	lllast_c_errmsg,@function
lllast_c_errmsg:                        # @lllast_c_errmsg
# %bb.0:
	addi.w	$a0, $zero, -1
	pcaddu18i	$t8, %call36(llast_c_errmsg)
	jr	$t8
.Lfunc_end205:
	.size	lllast_c_errmsg, .Lfunc_end205-lllast_c_errmsg
                                        # -- End function
	.globl	safe_strlen                     # -- Begin function safe_strlen
	.p2align	5
	.type	safe_strlen,@function
safe_strlen:                            # @safe_strlen
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	sub.d	$a0, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$a0, $a1, $a0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end206:
	.size	safe_strlen, .Lfunc_end206-safe_strlen
                                        # -- End function
	.p2align	5                               # -- Begin function parser_read
	.type	parser_read,@function
parser_read:                            # @parser_read
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.172)
	addi.d	$a0, $a0, %pc_lo12(.L.str.172)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gen_intern)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(leval)
	jr	$t8
.Lfunc_end207:
	.size	parser_read, .Lfunc_end207-parser_read
                                        # -- End function
	.p2align	5                               # -- Begin function os_classification
	.type	os_classification,@function
os_classification:                      # @os_classification
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str.238)
	addi.d	$a0, $a0, %pc_lo12(.L.str.238)
	move	$a1, $zero
	pcaddu18i	$t8, %call36(gen_intern)
	jr	$t8
.Lfunc_end208:
	.size	os_classification, .Lfunc_end208-os_classification
                                        # -- End function
	.globl	err0                            # -- Begin function err0
	.p2align	5
	.type	err0,@function
err0:                                   # @err0
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str.235)
	addi.d	$a0, $a0, %pc_lo12(.L.str.235)
	move	$a1, $zero
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end209:
	.size	err0, .Lfunc_end209-err0
                                        # -- End function
	.globl	pr                              # -- Begin function pr
	.p2align	5
	.type	pr,@function
pr:                                     # @pr
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(nheaps)
	ld.d	$a1, $a1, %pc_lo12(nheaps)
	blez	$a1, .LBB210_9
# %bb.1:                                # %.lr.ph.i
	pcalau12i	$a2, %pc_hi20(heap_size)
	ld.d	$a3, $a2, %pc_lo12(heap_size)
	pcalau12i	$a2, %pc_hi20(heaps)
	ld.d	$a2, $a2, %pc_lo12(heaps)
	slli.d	$a4, $a3, 4
	alsl.d	$a3, $a3, $a4, 3
	lu12i.w	$a5, -349526
	ori	$a4, $a5, 2731
	lu32i.d	$a4, -349526
	lu52i.d	$a4, $a4, -1366
	ori	$a5, $a5, 2730
	lu32i.d	$a5, -349526
	lu52i.d	$a5, $a5, 170
	ori	$a6, $zero, 12
	b	.LBB210_3
	.p2align	4, , 16
.LBB210_2:                              #   in Loop: Header=BB210_3 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB210_9
.LBB210_3:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a2, 0
	beqz	$a7, .LBB210_2
# %bb.4:                                #   in Loop: Header=BB210_3 Depth=1
	bltu	$a0, $a7, .LBB210_2
# %bb.5:                                #   in Loop: Header=BB210_3 Depth=1
	add.d	$t0, $a7, $a3
	bgeu	$a0, $t0, .LBB210_2
# %bb.6:                                #   in Loop: Header=BB210_3 Depth=1
	sub.d	$a7, $a0, $a7
	mul.d	$a7, $a7, $a4
	rotri.d	$a7, $a7, 3
	bltu	$a5, $a7, .LBB210_2
# %bb.7:                                #   in Loop: Header=BB210_3 Depth=1
	ld.hu	$a7, $a0, 2
	beq	$a7, $a6, .LBB210_2
# %bb.8:                                # %looks_pointerp.exit
	move	$a1, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(lprint)
	jr	$t8
.LBB210_9:                              # %.loopexit
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$s0, %pc_hi20(nointerrupt)
	ld.d	$s1, $s0, %pc_lo12(nointerrupt)
	ori	$fp, $zero, 1
	st.d	$fp, $s0, %pc_lo12(nointerrupt)
	pcalau12i	$a0, %pc_hi20(.L.str.236)
	addi.d	$a0, $a0, %pc_lo12(.L.str.236)
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.d	$s1, $s0, %pc_lo12(nointerrupt)
	bnez	$s1, .LBB210_12
# %bb.10:                               # %.loopexit
	pcalau12i	$a0, %pc_hi20(interrupt_differed)
	ld.d	$a1, $a0, %pc_lo12(interrupt_differed)
	bne	$a1, $fp, .LBB210_12
# %bb.11:
	st.d	$zero, $a0, %pc_lo12(interrupt_differed)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB210_12:                             # %put_st.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end210:
	.size	pr, .Lfunc_end210-pr
                                        # -- End function
	.globl	prp                             # -- Begin function prp
	.p2align	5
	.type	prp,@function
prp:                                    # @prp
# %bb.0:
	beqz	$a0, .LBB211_2
# %bb.1:
	ld.d	$a0, $a0, 0
	pcaddu18i	$t8, %call36(pr)
	jr	$t8
.LBB211_2:
	ret
.Lfunc_end211:
	.size	prp, .Lfunc_end211-prp
                                        # -- End function
	.p2align	5                               # -- Begin function rcsp_puts
	.type	rcsp_puts,@function
rcsp_puts:                              # @rcsp_puts
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 0
	move	$s1, $a0
	sub.d	$s3, $a2, $a1
	slt	$a0, $a0, $s3
	masknez	$a2, $s3, $a0
	maskeqz	$a0, $s1, $a0
	or	$s2, $a0, $a2
	move	$a0, $a1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	add.d	$a1, $a0, $s2
	st.d	$a1, $fp, 0
	stx.b	$zero, $a0, $s2
	bge	$s3, $s1, .LBB212_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.237)
	addi.d	$a0, $a0, %pc_lo12(.L.str.237)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB212_2:
	ori	$a0, $zero, 1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end212:
	.size	rcsp_puts, .Lfunc_end212-rcsp_puts
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"3.5 5-MAY-97"
	.size	.L.str, 13

	.type	nheaps,@object                  # @nheaps
	.data
	.globl	nheaps
	.p2align	3, 0x0
nheaps:
	.dword	2                               # 0x2
	.size	nheaps, 8

	.type	heap_size,@object               # @heap_size
	.globl	heap_size
	.p2align	3, 0x0
heap_size:
	.dword	5000                            # 0x1388
	.size	heap_size, 8

	.type	gc_status_flag,@object          # @gc_status_flag
	.globl	gc_status_flag
	.p2align	3, 0x0
gc_status_flag:
	.dword	1                               # 0x1
	.size	gc_status_flag, 8

	.type	init_file,@object               # @init_file
	.bss
	.globl	init_file
	.p2align	3, 0x0
init_file:
	.dword	0
	.size	init_file, 8

	.type	tkbuffer,@object                # @tkbuffer
	.globl	tkbuffer
	.p2align	3, 0x0
tkbuffer:
	.dword	0
	.size	tkbuffer, 8

	.type	gc_kind_copying,@object         # @gc_kind_copying
	.globl	gc_kind_copying
	.p2align	3, 0x0
gc_kind_copying:
	.dword	0                               # 0x0
	.size	gc_kind_copying, 8

	.type	gc_cells_allocated,@object      # @gc_cells_allocated
	.globl	gc_cells_allocated
	.p2align	3, 0x0
gc_cells_allocated:
	.dword	0                               # 0x0
	.size	gc_cells_allocated, 8

	.type	stack_start_ptr,@object         # @stack_start_ptr
	.globl	stack_start_ptr
	.p2align	3, 0x0
stack_start_ptr:
	.dword	0
	.size	stack_start_ptr, 8

	.type	errjmp_ok,@object               # @errjmp_ok
	.globl	errjmp_ok
	.p2align	3, 0x0
errjmp_ok:
	.dword	0                               # 0x0
	.size	errjmp_ok, 8

	.type	nointerrupt,@object             # @nointerrupt
	.data
	.globl	nointerrupt
	.p2align	3, 0x0
nointerrupt:
	.dword	1                               # 0x1
	.size	nointerrupt, 8

	.type	interrupt_differed,@object      # @interrupt_differed
	.bss
	.globl	interrupt_differed
	.p2align	3, 0x0
interrupt_differed:
	.dword	0                               # 0x0
	.size	interrupt_differed, 8

	.type	oblistvar,@object               # @oblistvar
	.globl	oblistvar
	.p2align	3, 0x0
oblistvar:
	.dword	0
	.size	oblistvar, 8

	.type	sym_t,@object                   # @sym_t
	.globl	sym_t
	.p2align	3, 0x0
sym_t:
	.dword	0
	.size	sym_t, 8

	.type	eof_val,@object                 # @eof_val
	.globl	eof_val
	.p2align	3, 0x0
eof_val:
	.dword	0
	.size	eof_val, 8

	.type	sym_errobj,@object              # @sym_errobj
	.globl	sym_errobj
	.p2align	3, 0x0
sym_errobj:
	.dword	0
	.size	sym_errobj, 8

	.type	sym_catchall,@object            # @sym_catchall
	.globl	sym_catchall
	.p2align	3, 0x0
sym_catchall:
	.dword	0
	.size	sym_catchall, 8

	.type	sym_progn,@object               # @sym_progn
	.globl	sym_progn
	.p2align	3, 0x0
sym_progn:
	.dword	0
	.size	sym_progn, 8

	.type	sym_lambda,@object              # @sym_lambda
	.globl	sym_lambda
	.p2align	3, 0x0
sym_lambda:
	.dword	0
	.size	sym_lambda, 8

	.type	sym_quote,@object               # @sym_quote
	.globl	sym_quote
	.p2align	3, 0x0
sym_quote:
	.dword	0
	.size	sym_quote, 8

	.type	sym_dot,@object                 # @sym_dot
	.globl	sym_dot
	.p2align	3, 0x0
sym_dot:
	.dword	0
	.size	sym_dot, 8

	.type	sym_after_gc,@object            # @sym_after_gc
	.globl	sym_after_gc
	.p2align	3, 0x0
sym_after_gc:
	.dword	0
	.size	sym_after_gc, 8

	.type	sym_eval_history_ptr,@object    # @sym_eval_history_ptr
	.globl	sym_eval_history_ptr
	.p2align	3, 0x0
sym_eval_history_ptr:
	.dword	0
	.size	sym_eval_history_ptr, 8

	.type	unbound_marker,@object          # @unbound_marker
	.globl	unbound_marker
	.p2align	3, 0x0
unbound_marker:
	.dword	0
	.size	unbound_marker, 8

	.type	obarray_dim,@object             # @obarray_dim
	.data
	.globl	obarray_dim
	.p2align	3, 0x0
obarray_dim:
	.dword	100                             # 0x64
	.size	obarray_dim, 8

	.type	catch_framep,@object            # @catch_framep
	.bss
	.globl	catch_framep
	.p2align	3, 0x0
catch_framep:
	.dword	0
	.size	catch_framep, 8

	.type	repl_puts,@object               # @repl_puts
	.globl	repl_puts
	.p2align	3, 0x0
repl_puts:
	.dword	0
	.size	repl_puts, 8

	.type	repl_read,@object               # @repl_read
	.globl	repl_read
	.p2align	3, 0x0
repl_read:
	.dword	0
	.size	repl_read, 8

	.type	repl_eval,@object               # @repl_eval
	.globl	repl_eval
	.p2align	3, 0x0
repl_eval:
	.dword	0
	.size	repl_eval, 8

	.type	repl_print,@object              # @repl_print
	.globl	repl_print
	.p2align	3, 0x0
repl_print:
	.dword	0
	.size	repl_print, 8

	.type	inums_dim,@object               # @inums_dim
	.data
	.globl	inums_dim
	.p2align	3, 0x0
inums_dim:
	.dword	256                             # 0x100
	.size	inums_dim, 8

	.type	user_types,@object              # @user_types
	.bss
	.globl	user_types
	.p2align	3, 0x0
user_types:
	.dword	0
	.size	user_types, 8

	.type	user_tc_next,@object            # @user_tc_next
	.data
	.globl	user_tc_next
	.p2align	3, 0x0
user_tc_next:
	.dword	50                              # 0x32
	.size	user_tc_next, 8

	.type	protected_registers,@object     # @protected_registers
	.bss
	.globl	protected_registers
	.p2align	3, 0x0
protected_registers:
	.dword	0
	.size	protected_registers, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.space	1
	.size	.L.str.1, 1

	.type	user_ch_readm,@object           # @user_ch_readm
	.data
	.globl	user_ch_readm
	.p2align	3, 0x0
user_ch_readm:
	.dword	.L.str.1
	.size	user_ch_readm, 8

	.type	user_te_readm,@object           # @user_te_readm
	.globl	user_te_readm
	.p2align	3, 0x0
user_te_readm:
	.dword	.L.str.1
	.size	user_te_readm, 8

	.type	user_readm,@object              # @user_readm
	.bss
	.globl	user_readm
	.p2align	3, 0x0
user_readm:
	.dword	0
	.size	user_readm, 8

	.type	user_readt,@object              # @user_readt
	.globl	user_readt
	.p2align	3, 0x0
user_readt:
	.dword	0
	.size	user_readt, 8

	.type	fatal_exit_hook,@object         # @fatal_exit_hook
	.globl	fatal_exit_hook
	.p2align	3, 0x0
fatal_exit_hook:
	.dword	0
	.size	fatal_exit_hook, 8

	.type	stack_limit_ptr,@object         # @stack_limit_ptr
	.globl	stack_limit_ptr
	.p2align	3, 0x0
stack_limit_ptr:
	.dword	0
	.size	stack_limit_ptr, 8

	.type	stack_size,@object              # @stack_size
	.data
	.globl	stack_size
	.p2align	3, 0x0
stack_size:
	.dword	50000                           # 0xc350
	.size	stack_size, 8

	.type	siod_verbose_level,@object      # @siod_verbose_level
	.globl	siod_verbose_level
	.p2align	3, 0x0
siod_verbose_level:
	.dword	4                               # 0x4
	.size	siod_verbose_level, 8

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"/usr/local/lib/siod"
	.size	.L.str.2, 20

	.type	siod_lib,@object                # @siod_lib
	.data
	.globl	siod_lib
	.p2align	3, 0x0
siod_lib:
	.dword	.L.str.2
	.size	siod_lib, 8

	.type	process_cla.siod_lib_set,@object # @process_cla.siod_lib_set
	.local	process_cla.siod_lib_set
	.comm	process_cla.siod_lib_set,1,4
	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"SIOD_LIB"
	.size	.L.str.3, 9

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"bad arg: %s\n"
	.size	.L.str.4, 13

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Welcome to SIOD, Scheme In One Defun, Version %s\n"
	.size	.L.str.5, 50

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%ld heaps. size = %ld cells, %ld bytes. %ld inums. GC is %s\n"
	.size	.L.str.7, 61

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"stop and copy"
	.size	.L.str.8, 14

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"mark and sweep"
	.size	.L.str.9, 15

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"heaps[0] at %p, heaps[1] at %p\n"
	.size	.L.str.10, 32

	.type	heaps,@object                   # @heaps
	.bss
	.globl	heaps
	.p2align	3, 0x0
heaps:
	.dword	0
	.size	heaps, 8

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"heaps[0] at %p\n"
	.size	.L.str.11, 16

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"floating point exception"
	.size	.L.str.12, 25

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"control-c interrupt"
	.size	.L.str.13, 20

	.type	repl_driver.osigint,@object     # @repl_driver.osigint
	.local	repl_driver.osigint
	.comm	repl_driver.osigint,8,8
	.type	repl_driver.osigfpe,@object     # @repl_driver.osigfpe
	.local	repl_driver.osigfpe
	.comm	repl_driver.osigfpe,8,8
	.type	errjmp,@object                  # @errjmp
	.bss
	.globl	errjmp
	.p2align	3, 0x0
errjmp:
	.space	304
	.size	errjmp, 304

	.type	repl_c_string_print_len,@object # @repl_c_string_print_len
	.local	repl_c_string_print_len
	.comm	repl_c_string_print_len,8,8
	.type	repl_c_string_out,@object       # @repl_c_string_out
	.local	repl_c_string_out
	.comm	repl_c_string_out,8,8
	.type	repl_c_string_arg,@object       # @repl_c_string_arg
	.local	repl_c_string_arg
	.comm	repl_c_string_arg,8,8
	.type	repl_c_string_flag,@object      # @repl_c_string_flag
	.local	repl_c_string_flag
	.comm	repl_c_string_flag,1,8
	.type	heap,@object                    # @heap
	.globl	heap
	.p2align	3, 0x0
heap:
	.dword	0
	.size	heap, 8

	.type	heap_end,@object                # @heap_end
	.globl	heap_end
	.p2align	3, 0x0
heap_end:
	.dword	0
	.size	heap_end, 8

	.type	.L.str.15,@object               # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"GC took %g seconds, %ld compressed to %ld, %ld free\n"
	.size	.L.str.15, 53

	.type	old_heap_used,@object           # @old_heap_used
	.bss
	.globl	old_heap_used
	.p2align	3, 0x0
old_heap_used:
	.dword	0                               # 0x0
	.size	old_heap_used, 8

	.type	heap_org,@object                # @heap_org
	.globl	heap_org
	.p2align	3, 0x0
heap_org:
	.dword	0
	.size	heap_org, 8

	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"> "
	.size	.L.str.16, 3

	.type	gc_time_taken,@object           # @gc_time_taken
	.bss
	.globl	gc_time_taken
	.p2align	3, 0x0
gc_time_taken:
	.dword	0x0000000000000000              # double 0
	.size	gc_time_taken, 8

	.type	inside_err,@object              # @inside_err
	.local	inside_err
	.comm	inside_err,1,8
	.type	.L.str.17,@object               # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"ERROR: %s\n"
	.size	.L.str.17, 11

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"ERROR: %s (errobj %s)\n"
	.size	.L.str.18, 23

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"ERROR: %s (see errobj)\n"
	.size	.L.str.19, 24

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"quit"
	.size	.L.str.20, 5

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"BUG. Reached impossible case"
	.size	.L.str.22, 29

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"the currently assigned stack limit has been exceded"
	.size	.L.str.23, 52

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Stack_size = %ld bytes, [%p,%p]\n"
	.size	.L.str.24, 33

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"not a symbol or string"
	.size	.L.str.25, 23

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"ran out of storage"
	.size	.L.str.26, 19

	.type	freelist,@object                # @freelist
	.bss
	.globl	freelist
	.p2align	3, 0x0
freelist:
	.dword	0
	.size	freelist, 8

	.type	.L.str.27,@object               # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"wta to car"
	.size	.L.str.27, 11

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"wta to cdr"
	.size	.L.str.28, 11

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"wta to setcar"
	.size	.L.str.29, 14

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"wta to setcdr"
	.size	.L.str.30, 14

	.type	inums,@object                   # @inums
	.bss
	.globl	inums
	.p2align	3, 0x0
inums:
	.dword	0
	.size	inums, 8

	.type	.L.str.31,@object               # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"wta(1st) to plus"
	.size	.L.str.31, 17

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"wta(2nd) to plus"
	.size	.L.str.32, 17

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"wta(1st) to times"
	.size	.L.str.33, 18

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"wta(2nd) to times"
	.size	.L.str.34, 18

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"wta(1st) to difference"
	.size	.L.str.35, 23

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"wta(2nd) to difference"
	.size	.L.str.36, 23

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"wta(1st) to quotient"
	.size	.L.str.37, 21

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"wta(2nd) to quotient"
	.size	.L.str.38, 21

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"wta to abs"
	.size	.L.str.39, 11

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"wta to sqrt"
	.size	.L.str.40, 12

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"wta(1st) to greaterp"
	.size	.L.str.41, 21

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"wta(2nd) to greaterp"
	.size	.L.str.42, 21

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"wta(1st) to lessp"
	.size	.L.str.43, 18

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"wta(2nd) to lessp"
	.size	.L.str.44, 18

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"wta(1st) to max"
	.size	.L.str.45, 16

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"wta(2nd) to max"
	.size	.L.str.46, 16

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"wta(1st) to min"
	.size	.L.str.47, 16

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"wta(2nd) to min"
	.size	.L.str.48, 16

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"unbound variable"
	.size	.L.str.49, 17

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"not a symbol"
	.size	.L.str.50, 13

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"failed to allocate storage from system"
	.size	.L.str.51, 39

	.type	obarray,@object                 # @obarray
	.bss
	.globl	obarray
	.p2align	3, 0x0
obarray:
	.dword	0
	.size	obarray, 8

	.type	.L.str.52,@object               # @.str.52
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.52:
	.asciz	"invalid number of heaps"
	.size	.L.str.52, 24

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"**unbound-marker**"
	.size	.L.str.53, 19

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"eof"
	.size	.L.str.54, 4

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"t"
	.size	.L.str.55, 2

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"nil"
	.size	.L.str.56, 4

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"let"
	.size	.L.str.57, 4

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"let-internal-macro"
	.size	.L.str.58, 19

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"let*"
	.size	.L.str.59, 5

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"let*-macro"
	.size	.L.str.60, 11

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"letrec"
	.size	.L.str.61, 7

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"letrec-macro"
	.size	.L.str.62, 13

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"errobj"
	.size	.L.str.63, 7

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"all"
	.size	.L.str.64, 4

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"begin"
	.size	.L.str.65, 6

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"lambda"
	.size	.L.str.66, 7

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"quote"
	.size	.L.str.67, 6

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"."
	.size	.L.str.68, 2

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"*after-gc*"
	.size	.L.str.69, 11

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"*eval-history-ptr*"
	.size	.L.str.70, 19

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"improper list to assq"
	.size	.L.str.71, 22

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"type number out of range"
	.size	.L.str.72, 25

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"ran out of user type codes"
	.size	.L.str.73, 27

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"[allocating heap %ld]\n"
	.size	.L.str.74, 23

	.type	save_regs_gc_mark,@object       # @save_regs_gc_mark
	.bss
	.globl	save_regs_gc_mark
	.p2align	4, 0x0
save_regs_gc_mark:
	.space	448
	.size	save_regs_gc_mark, 448

	.type	gc_rt,@object                   # @gc_rt
	.globl	gc_rt
	.p2align	3, 0x0
gc_rt:
	.dword	0x0000000000000000              # double 0
	.size	gc_rt, 8

	.type	gc_cells_collected,@object      # @gc_cells_collected
	.globl	gc_cells_collected
	.p2align	3, 0x0
gc_cells_collected:
	.dword	0                               # 0x0
	.size	gc_cells_collected, 8

	.type	.L.str.76,@object               # @.str.76
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.76:
	.asciz	"[GC took %g cpu seconds, %ld cells collected]\n"
	.size	.L.str.76, 47

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"cannot perform operation with stop-and-copy GC mode. Use -g0\n"
	.size	.L.str.77, 62

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"garbage collection is on\n"
	.size	.L.str.78, 26

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"garbage collection is off\n"
	.size	.L.str.79, 27

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"%ld allocated %ld free\n"
	.size	.L.str.80, 24

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"garbage collection verbose\n"
	.size	.L.str.81, 28

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"garbage collection silent\n"
	.size	.L.str.82, 27

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"%ld/%ld heaps, %ld allocated %ld free\n"
	.size	.L.str.83, 39

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"bad syntax argument list"
	.size	.L.str.84, 25

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"damaged frame"
	.size	.L.str.85, 14

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"too few arguments"
	.size	.L.str.86, 18

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"damaged env"
	.size	.L.str.87, 12

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"closure code type not valid"
	.size	.L.str.88, 28

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"bad function"
	.size	.L.str.89, 13

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"cannot be applied"
	.size	.L.str.90, 18

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"have eval, dont know apply"
	.size	.L.str.91, 27

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"wta(non-symbol) to setvar"
	.size	.L.str.92, 26

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"wta(non-symbol) to define"
	.size	.L.str.93, 26

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"no *catch found with this tag"
	.size	.L.str.94, 30

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"set!"
	.size	.L.str.95, 5

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"let-internal"
	.size	.L.str.96, 13

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"wta(non-symbol) to symbolconc"
	.size	.L.str.97, 30

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"symbolconc buffer overflow"
	.size	.L.str.98, 27

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"subr_0"
	.size	.L.str.99, 7

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"subr_1"
	.size	.L.str.100, 7

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"subr_2"
	.size	.L.str.101, 7

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"subr_2n"
	.size	.L.str.102, 8

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"subr_3"
	.size	.L.str.103, 7

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"subr_4"
	.size	.L.str.104, 7

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"subr_5"
	.size	.L.str.105, 7

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"lsubr"
	.size	.L.str.106, 6

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"fsubr"
	.size	.L.str.107, 6

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"msubr"
	.size	.L.str.108, 6

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"???"
	.size	.L.str.109, 4

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"()"
	.size	.L.str.110, 3

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"("
	.size	.L.str.111, 2

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	" "
	.size	.L.str.112, 2

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	" . "
	.size	.L.str.113, 4

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	")"
	.size	.L.str.114, 2

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"%ld"
	.size	.L.str.115, 4

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"%g"
	.size	.L.str.116, 3

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"#<%s "
	.size	.L.str.117, 6

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	">"
	.size	.L.str.118, 2

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"#<CLOSURE "
	.size	.L.str.119, 11

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"#<UNKNOWN %d %p>"
	.size	.L.str.120, 17

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"end of file inside read"
	.size	.L.str.122, 24

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"unexpected close paren"
	.size	.L.str.123, 23

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"+internal-backquote"
	.size	.L.str.124, 20

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"+internal-comma-atsign"
	.size	.L.str.125, 23

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"+internal-comma-dot"
	.size	.L.str.126, 20

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"+internal-comma"
	.size	.L.str.127, 16

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"()'`,;\""
	.size	.L.str.128, 8

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"token larger than TKBUFFERN"
	.size	.L.str.129, 28

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"end of file inside list"
	.size	.L.str.130, 24

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"missing close paren"
	.size	.L.str.131, 20

	.type	.L.str.132,@object              # @.str.132
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.132:
	.asciz	"could not open "
	.size	.L.str.132, 16

	.type	.L.str.133,@object              # @.str.133
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.133:
	.asciz	"r"
	.size	.L.str.133, 2

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"not a file"
	.size	.L.str.134, 11

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"parser:"
	.size	.L.str.135, 8

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	".scm"
	.size	.L.str.136, 5

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"/"
	.size	.L.str.137, 2

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"loading "
	.size	.L.str.138, 9

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"rb"
	.size	.L.str.139, 3

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"done.\n"
	.size	.L.str.140, 7

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"*"
	.size	.L.str.141, 2

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"-loaded*"
	.size	.L.str.142, 9

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"w"
	.size	.L.str.143, 2

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"a"
	.size	.L.str.144, 2

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"bad argument to save-forms"
	.size	.L.str.145, 27

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"appending"
	.size	.L.str.146, 10

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"saving"
	.size	.L.str.147, 7

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	" forms to "
	.size	.L.str.148, 11

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"#<FILE "
	.size	.L.str.149, 8

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	" %p"
	.size	.L.str.150, 4

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"file is closed"
	.size	.L.str.151, 15

	.type	last_c_errmsg.serrmsg,@object   # @last_c_errmsg.serrmsg
	.local	last_c_errmsg.serrmsg
	.comm	last_c_errmsg.serrmsg,100,1
	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	"errno %d"
	.size	.L.str.152, 9

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	"cons"
	.size	.L.str.153, 5

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"car"
	.size	.L.str.154, 4

	.type	.L.str.155,@object              # @.str.155
.L.str.155:
	.asciz	"cdr"
	.size	.L.str.155, 4

	.type	.L.str.156,@object              # @.str.156
.L.str.156:
	.asciz	"set-car!"
	.size	.L.str.156, 9

	.type	.L.str.157,@object              # @.str.157
.L.str.157:
	.asciz	"set-cdr!"
	.size	.L.str.157, 9

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	"+"
	.size	.L.str.158, 2

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	"-"
	.size	.L.str.159, 2

	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	"min"
	.size	.L.str.160, 4

	.type	.L.str.161,@object              # @.str.161
.L.str.161:
	.asciz	"max"
	.size	.L.str.161, 4

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	"abs"
	.size	.L.str.162, 4

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	"sqrt"
	.size	.L.str.163, 5

	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	"<"
	.size	.L.str.164, 2

	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	">="
	.size	.L.str.165, 3

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	"<="
	.size	.L.str.166, 3

	.type	.L.str.167,@object              # @.str.167
.L.str.167:
	.asciz	"eq?"
	.size	.L.str.167, 4

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	"eqv?"
	.size	.L.str.168, 5

	.type	.L.str.169,@object              # @.str.169
.L.str.169:
	.asciz	"="
	.size	.L.str.169, 2

	.type	.L.str.170,@object              # @.str.170
.L.str.170:
	.asciz	"assq"
	.size	.L.str.170, 5

	.type	.L.str.171,@object              # @.str.171
.L.str.171:
	.asciz	"delq"
	.size	.L.str.171, 5

	.type	.L.str.172,@object              # @.str.172
.L.str.172:
	.asciz	"read"
	.size	.L.str.172, 5

	.type	.L.str.173,@object              # @.str.173
.L.str.173:
	.asciz	"parser_read"
	.size	.L.str.173, 12

	.type	.L.str.174,@object              # @.str.174
.L.str.174:
	.asciz	"*parser_read.scm-loaded*"
	.size	.L.str.174, 25

	.type	.L.str.175,@object              # @.str.175
.L.str.175:
	.asciz	"eof-val"
	.size	.L.str.175, 8

	.type	.L.str.176,@object              # @.str.176
.L.str.176:
	.asciz	"print"
	.size	.L.str.176, 6

	.type	.L.str.177,@object              # @.str.177
.L.str.177:
	.asciz	"prin1"
	.size	.L.str.177, 6

	.type	.L.str.178,@object              # @.str.178
.L.str.178:
	.asciz	"eval"
	.size	.L.str.178, 5

	.type	.L.str.179,@object              # @.str.179
.L.str.179:
	.asciz	"apply"
	.size	.L.str.179, 6

	.type	.L.str.180,@object              # @.str.180
.L.str.180:
	.asciz	"define"
	.size	.L.str.180, 7

	.type	.L.str.181,@object              # @.str.181
.L.str.181:
	.asciz	"if"
	.size	.L.str.181, 3

	.type	.L.str.182,@object              # @.str.182
.L.str.182:
	.asciz	"while"
	.size	.L.str.182, 6

	.type	.L.str.183,@object              # @.str.183
.L.str.183:
	.asciz	"or"
	.size	.L.str.183, 3

	.type	.L.str.184,@object              # @.str.184
.L.str.184:
	.asciz	"and"
	.size	.L.str.184, 4

	.type	.L.str.185,@object              # @.str.185
.L.str.185:
	.asciz	"*catch"
	.size	.L.str.185, 7

	.type	.L.str.186,@object              # @.str.186
.L.str.186:
	.asciz	"*throw"
	.size	.L.str.186, 7

	.type	.L.str.187,@object              # @.str.187
.L.str.187:
	.asciz	"apropos"
	.size	.L.str.187, 8

	.type	.L.str.188,@object              # @.str.188
.L.str.188:
	.asciz	"verbose"
	.size	.L.str.188, 8

	.type	.L.str.189,@object              # @.str.189
.L.str.189:
	.asciz	"copy-list"
	.size	.L.str.189, 10

	.type	.L.str.190,@object              # @.str.190
.L.str.190:
	.asciz	"gc-status"
	.size	.L.str.190, 10

	.type	.L.str.191,@object              # @.str.191
.L.str.191:
	.asciz	"gc"
	.size	.L.str.191, 3

	.type	.L.str.192,@object              # @.str.192
.L.str.192:
	.asciz	"load"
	.size	.L.str.192, 5

	.type	.L.str.193,@object              # @.str.193
.L.str.193:
	.asciz	"require"
	.size	.L.str.193, 8

	.type	.L.str.194,@object              # @.str.194
.L.str.194:
	.asciz	"pair?"
	.size	.L.str.194, 6

	.type	.L.str.195,@object              # @.str.195
.L.str.195:
	.asciz	"symbol?"
	.size	.L.str.195, 8

	.type	.L.str.196,@object              # @.str.196
.L.str.196:
	.asciz	"number?"
	.size	.L.str.196, 8

	.type	.L.str.197,@object              # @.str.197
.L.str.197:
	.asciz	"symbol-bound?"
	.size	.L.str.197, 14

	.type	.L.str.198,@object              # @.str.198
.L.str.198:
	.asciz	"symbol-value"
	.size	.L.str.198, 13

	.type	.L.str.199,@object              # @.str.199
.L.str.199:
	.asciz	"set-symbol-value!"
	.size	.L.str.199, 18

	.type	.L.str.200,@object              # @.str.200
.L.str.200:
	.asciz	"the-environment"
	.size	.L.str.200, 16

	.type	.L.str.201,@object              # @.str.201
.L.str.201:
	.asciz	"error"
	.size	.L.str.201, 6

	.type	.L.str.202,@object              # @.str.202
.L.str.202:
	.asciz	"not"
	.size	.L.str.202, 4

	.type	.L.str.203,@object              # @.str.203
.L.str.203:
	.asciz	"null?"
	.size	.L.str.203, 6

	.type	.L.str.204,@object              # @.str.204
.L.str.204:
	.asciz	"env-lookup"
	.size	.L.str.204, 11

	.type	.L.str.205,@object              # @.str.205
.L.str.205:
	.asciz	"reverse"
	.size	.L.str.205, 8

	.type	.L.str.206,@object              # @.str.206
.L.str.206:
	.asciz	"symbolconc"
	.size	.L.str.206, 11

	.type	.L.str.207,@object              # @.str.207
.L.str.207:
	.asciz	"save-forms"
	.size	.L.str.207, 11

	.type	.L.str.208,@object              # @.str.208
.L.str.208:
	.asciz	"fopen"
	.size	.L.str.208, 6

	.type	.L.str.209,@object              # @.str.209
.L.str.209:
	.asciz	"fclose"
	.size	.L.str.209, 7

	.type	.L.str.210,@object              # @.str.210
.L.str.210:
	.asciz	"getc"
	.size	.L.str.210, 5

	.type	.L.str.211,@object              # @.str.211
.L.str.211:
	.asciz	"ungetc"
	.size	.L.str.211, 7

	.type	.L.str.212,@object              # @.str.212
.L.str.212:
	.asciz	"putc"
	.size	.L.str.212, 5

	.type	.L.str.213,@object              # @.str.213
.L.str.213:
	.asciz	"puts"
	.size	.L.str.213, 5

	.type	.L.str.214,@object              # @.str.214
.L.str.214:
	.asciz	"ftell"
	.size	.L.str.214, 6

	.type	.L.str.215,@object              # @.str.215
.L.str.215:
	.asciz	"fseek"
	.size	.L.str.215, 6

	.type	.L.str.216,@object              # @.str.216
.L.str.216:
	.asciz	"parse-number"
	.size	.L.str.216, 13

	.type	.L.str.217,@object              # @.str.217
.L.str.217:
	.asciz	"%%stack-limit"
	.size	.L.str.217, 14

	.type	.L.str.218,@object              # @.str.218
.L.str.218:
	.asciz	"intern"
	.size	.L.str.218, 7

	.type	.L.str.219,@object              # @.str.219
.L.str.219:
	.asciz	"%%closure"
	.size	.L.str.219, 10

	.type	.L.str.220,@object              # @.str.220
.L.str.220:
	.asciz	"%%closure-code"
	.size	.L.str.220, 15

	.type	.L.str.221,@object              # @.str.221
.L.str.221:
	.asciz	"%%closure-env"
	.size	.L.str.221, 14

	.type	.L.str.222,@object              # @.str.222
.L.str.222:
	.asciz	"nreverse"
	.size	.L.str.222, 9

	.type	.L.str.223,@object              # @.str.223
.L.str.223:
	.asciz	"allocate-heap"
	.size	.L.str.223, 14

	.type	.L.str.224,@object              # @.str.224
.L.str.224:
	.asciz	"gc-info"
	.size	.L.str.224, 8

	.type	.L.str.225,@object              # @.str.225
.L.str.225:
	.asciz	"runtime"
	.size	.L.str.225, 8

	.type	.L.str.226,@object              # @.str.226
.L.str.226:
	.asciz	"realtime"
	.size	.L.str.226, 9

	.type	.L.str.227,@object              # @.str.227
.L.str.227:
	.asciz	"caar"
	.size	.L.str.227, 5

	.type	.L.str.228,@object              # @.str.228
.L.str.228:
	.asciz	"cadr"
	.size	.L.str.228, 5

	.type	.L.str.229,@object              # @.str.229
.L.str.229:
	.asciz	"cdar"
	.size	.L.str.229, 5

	.type	.L.str.230,@object              # @.str.230
.L.str.230:
	.asciz	"cddr"
	.size	.L.str.230, 5

	.type	.L.str.231,@object              # @.str.231
.L.str.231:
	.asciz	"rand"
	.size	.L.str.231, 5

	.type	.L.str.232,@object              # @.str.232
.L.str.232:
	.asciz	"srand"
	.size	.L.str.232, 6

	.type	.L.str.233,@object              # @.str.233
.L.str.233:
	.asciz	"last-c-error"
	.size	.L.str.233, 13

	.type	.L.str.234,@object              # @.str.234
.L.str.234:
	.asciz	"os-classification"
	.size	.L.str.234, 18

	.type	.L.str.235,@object              # @.str.235
.L.str.235:
	.asciz	"0"
	.size	.L.str.235, 2

	.type	.L.str.236,@object              # @.str.236
.L.str.236:
	.asciz	"invalid\n"
	.size	.L.str.236, 9

	.type	.L.str.237,@object              # @.str.237
.L.str.237:
	.asciz	"repl_c_string_print overflow"
	.size	.L.str.237, 29

	.type	.L.str.238,@object              # @.str.238
.L.str.238:
	.asciz	"unix"
	.size	.L.str.238, 5

	.type	.L.str.239,@object              # @.str.239
.L.str.239:
	.asciz	"*slib-version*"
	.size	.L.str.239, 15

	.type	.L.str.240,@object              # @.str.240
.L.str.240:
	.asciz	"$Id$"
	.size	.L.str.240, 5

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"(C) Copyright 1988-1994 Paradigm Associates Inc."
	.size	.Lstr, 49

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"FATAL ERROR DURING STARTUP OR CRITICAL CODE SECTION"
	.size	.Lstr.1, 52

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"[starting GC]"
	.size	.Lstr.2, 14

	.type	.Lswitch.table.lprin1g,@object  # @switch.table.lprin1g
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.Lswitch.table.lprin1g:
	.dword	.L.str.99
	.dword	.L.str.100
	.dword	.L.str.101
	.dword	.L.str.103
	.dword	.L.str.106
	.dword	.L.str.107
	.dword	.L.str.108
	.dword	.L.str.109
	.dword	.L.str.109
	.dword	.L.str.109
	.dword	.L.str.109
	.dword	.L.str.109
	.dword	.L.str.109
	.dword	.L.str.109
	.dword	.L.str.109
	.dword	.L.str.104
	.dword	.L.str.105
	.dword	.L.str.102
	.size	.Lswitch.table.lprin1g, 144

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym handle_sigfpe
	.addrsig_sym handle_sigint
	.addrsig_sym get_eof_val
	.addrsig_sym repl_c_string_read
	.addrsig_sym ignore_puts
	.addrsig_sym repl_c_string_print
	.addrsig_sym noprompt_puts
	.addrsig_sym not_ignore_print
	.addrsig_sym ignore_print
	.addrsig_sym fputs_fcn
	.addrsig_sym lread
	.addrsig_sym leval
	.addrsig_sym lprint
	.addrsig_sym setvar
	.addrsig_sym cons
	.addrsig_sym stack_limit
	.addrsig_sym lerr
	.addrsig_sym consp
	.addrsig_sym car
	.addrsig_sym cdr
	.addrsig_sym setcar
	.addrsig_sym setcdr
	.addrsig_sym numberp
	.addrsig_sym plus
	.addrsig_sym ltimes
	.addrsig_sym difference
	.addrsig_sym Quotient
	.addrsig_sym lllabs
	.addrsig_sym lsqrt
	.addrsig_sym greaterp
	.addrsig_sym lessp
	.addrsig_sym greaterEp
	.addrsig_sym lessEp
	.addrsig_sym lmax
	.addrsig_sym lmin
	.addrsig_sym eq
	.addrsig_sym eql
	.addrsig_sym symbolp
	.addrsig_sym symbol_boundp
	.addrsig_sym envlookup
	.addrsig_sym symbol_value
	.addrsig_sym intern
	.addrsig_sym closure
	.addrsig_sym file_gc_free
	.addrsig_sym file_prin1
	.addrsig_sym assq
	.addrsig_sym allocate_aheap
	.addrsig_sym user_gc
	.addrsig_sym gc_status
	.addrsig_sym gc_info
	.addrsig_sym lapply
	.addrsig_sym leval_setq
	.addrsig_sym leval_define
	.addrsig_sym leval_if
	.addrsig_sym leval_lambda
	.addrsig_sym leval_progn
	.addrsig_sym leval_or
	.addrsig_sym leval_and
	.addrsig_sym leval_catch
	.addrsig_sym lthrow
	.addrsig_sym leval_let
	.addrsig_sym letstar_macro
	.addrsig_sym cadr
	.addrsig_sym cddr
	.addrsig_sym letrec_macro
	.addrsig_sym caar
	.addrsig_sym reverse
	.addrsig_sym let_macro
	.addrsig_sym leval_quote
	.addrsig_sym leval_tenv
	.addrsig_sym leval_while
	.addrsig_sym symbolconc
	.addrsig_sym lprin1
	.addrsig_sym f_getc
	.addrsig_sym f_ungetc
	.addrsig_sym copy_list
	.addrsig_sym apropos
	.addrsig_sym fopen
	.addrsig_sym fopen_l
	.addrsig_sym delq
	.addrsig_sym fclose_l
	.addrsig_sym require
	.addrsig_sym load
	.addrsig_sym save_forms
	.addrsig_sym quit
	.addrsig_sym nullp
	.addrsig_sym lgetc
	.addrsig_sym lungetc
	.addrsig_sym lputc
	.addrsig_sym lputs
	.addrsig_sym lftell
	.addrsig_sym lfseek
	.addrsig_sym parse_number
	.addrsig_sym closure_code
	.addrsig_sym closure_env
	.addrsig_sym lwhile
	.addrsig_sym nreverse
	.addrsig_sym siod_verbose
	.addrsig_sym lruntime
	.addrsig_sym lrealtime
	.addrsig_sym cdar
	.addrsig_sym lrand
	.addrsig_sym lsrand
	.addrsig_sym lllast_c_errmsg
	.addrsig_sym parser_read
	.addrsig_sym os_classification
	.addrsig_sym rcsp_puts
	.addrsig_sym oblistvar
	.addrsig_sym sym_t
	.addrsig_sym eof_val
	.addrsig_sym sym_errobj
	.addrsig_sym sym_catchall
	.addrsig_sym sym_progn
	.addrsig_sym sym_lambda
	.addrsig_sym sym_quote
	.addrsig_sym sym_dot
	.addrsig_sym sym_after_gc
	.addrsig_sym sym_eval_history_ptr
	.addrsig_sym unbound_marker
	.addrsig_sym errjmp
	.addrsig_sym save_regs_gc_mark
	.addrsig_sym last_c_errmsg.serrmsg
