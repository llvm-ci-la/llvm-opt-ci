	.file	"nussinov.c"
	.text
	.globl	polybench_flush_cache           # -- Begin function polybench_flush_cache
	.p2align	5
	.type	polybench_flush_cache,@function
polybench_flush_cache:                  # @polybench_flush_cache
# %bb.0:
	ret
.Lfunc_end0:
	.size	polybench_flush_cache, .Lfunc_end0-polybench_flush_cache
                                        # -- End function
	.globl	polybench_prepare_instruments   # -- Begin function polybench_prepare_instruments
	.p2align	5
	.type	polybench_prepare_instruments,@function
polybench_prepare_instruments:          # @polybench_prepare_instruments
# %bb.0:
	ret
.Lfunc_end1:
	.size	polybench_prepare_instruments, .Lfunc_end1-polybench_prepare_instruments
                                        # -- End function
	.globl	polybench_timer_start           # -- Begin function polybench_timer_start
	.p2align	5
	.type	polybench_timer_start,@function
polybench_timer_start:                  # @polybench_timer_start
# %bb.0:
	pcalau12i	$a0, %pc_hi20(polybench_t_start)
	st.d	$zero, $a0, %pc_lo12(polybench_t_start)
	ret
.Lfunc_end2:
	.size	polybench_timer_start, .Lfunc_end2-polybench_timer_start
                                        # -- End function
	.globl	polybench_timer_stop            # -- Begin function polybench_timer_stop
	.p2align	5
	.type	polybench_timer_stop,@function
polybench_timer_stop:                   # @polybench_timer_stop
# %bb.0:
	pcalau12i	$a0, %pc_hi20(polybench_t_end)
	st.d	$zero, $a0, %pc_lo12(polybench_t_end)
	ret
.Lfunc_end3:
	.size	polybench_timer_stop, .Lfunc_end3-polybench_timer_stop
                                        # -- End function
	.globl	polybench_timer_print           # -- Begin function polybench_timer_print
	.p2align	5
	.type	polybench_timer_print,@function
polybench_timer_print:                  # @polybench_timer_print
# %bb.0:
	pcalau12i	$a0, %pc_hi20(polybench_t_end)
	fld.d	$fa0, $a0, %pc_lo12(polybench_t_end)
	pcalau12i	$a0, %pc_hi20(polybench_t_start)
	fld.d	$fa1, $a0, %pc_lo12(polybench_t_start)
	fsub.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end4:
	.size	polybench_timer_print, .Lfunc_end4-polybench_timer_print
                                        # -- End function
	.globl	polybench_free_data             # -- Begin function polybench_free_data
	.p2align	5
	.type	polybench_free_data,@function
polybench_free_data:                    # @polybench_free_data
# %bb.0:
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end5:
	.size	polybench_free_data, .Lfunc_end5-polybench_free_data
                                        # -- End function
	.globl	polybench_alloc_data            # -- Begin function polybench_alloc_data
	.p2align	5
	.type	polybench_alloc_data,@function
polybench_alloc_data:                   # @polybench_alloc_data
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	mul.d	$a2, $a0, $a1
	st.d	$zero, $sp, 0
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 0
	beqz	$a1, .LBB6_3
# %bb.1:
	bnez	$a0, .LBB6_3
# %bb.2:                                # %xmalloc.exit
	move	$a0, $a1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB6_3:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	polybench_alloc_data, .Lfunc_end6-polybench_alloc_data
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI7_0:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI7_1:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI7_2:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI7_3:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI7_4:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI7_5:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI7_6:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI7_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
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
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	st.d	$zero, $sp, 96
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 96
	ori	$a2, $zero, 2500
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 96
	beqz	$fp, .LBB7_40
# %bb.1:
	bnez	$a0, .LBB7_40
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 96
	lu12i.w	$a0, 6103
	ori	$s2, $a0, 2112
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 96
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 96
	beqz	$s0, .LBB7_40
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_40
# %bb.4:                                # %polybench_alloc_data.exit21
	st.d	$zero, $sp, 96
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 96
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 96
	beqz	$s1, .LBB7_40
# %bb.5:                                # %polybench_alloc_data.exit21
	bnez	$a0, .LBB7_40
# %bb.6:                                # %iter.check
	add.d	$s7, $s0, $s2
	add.d	$s4, $s1, $s2
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	vld	$vr0, $a0, %pc_lo12(.LCPI7_0)
	pcalau12i	$a0, %pc_hi20(.LCPI7_1)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	vld	$vr1, $a0, %pc_lo12(.LCPI7_1)
	pcalau12i	$a0, %pc_hi20(.LCPI7_2)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	vld	$vr2, $a0, %pc_lo12(.LCPI7_2)
	pcalau12i	$a0, %pc_hi20(.LCPI7_3)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	vld	$vr3, $a0, %pc_lo12(.LCPI7_3)
	pcalau12i	$a0, %pc_hi20(.LCPI7_4)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	vld	$vr4, $a0, %pc_lo12(.LCPI7_4)
	pcalau12i	$a0, %pc_hi20(.LCPI7_5)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	vld	$vr5, $a0, %pc_lo12(.LCPI7_5)
	pcalau12i	$a0, %pc_hi20(.LCPI7_6)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	vld	$vr6, $a0, %pc_lo12(.LCPI7_6)
	pcalau12i	$a0, %pc_hi20(.LCPI7_7)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	vld	$vr7, $a0, %pc_lo12(.LCPI7_7)
	lu12i.w	$a0, -1
	ori	$a0, $a0, 1600
	ori	$a1, $zero, 2496
	ori	$a2, $zero, 2512
	vrepli.d	$vr11, 32
	.p2align	4, , 16
.LBB7_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vpickev.w	$vr8, $vr6, $vr7
	vpickev.w	$vr9, $vr4, $vr5
	vpickev.h	$vr8, $vr9, $vr8
	vpickev.w	$vr9, $vr2, $vr3
	vpickev.w	$vr10, $vr0, $vr1
	vpickev.h	$vr9, $vr10, $vr9
	vpickev.b	$vr8, $vr9, $vr8
	vaddi.bu	$vr8, $vr8, 1
	vandi.b	$vr8, $vr8, 3
	add.d	$a3, $fp, $a0
	vstx	$vr8, $a3, $a1
	vstx	$vr8, $a3, $a2
	vadd.d	$vr7, $vr7, $vr11
	vadd.d	$vr6, $vr6, $vr11
	vadd.d	$vr5, $vr5, $vr11
	vadd.d	$vr4, $vr4, $vr11
	vadd.d	$vr3, $vr3, $vr11
	vadd.d	$vr2, $vr2, $vr11
	vadd.d	$vr1, $vr1, $vr11
	addi.d	$a0, $a0, 32
	vadd.d	$vr0, $vr0, $vr11
	bnez	$a0, .LBB7_7
# %bb.8:                                # %vec.epilog.vector.body
	vst	$vr11, $sp, 80                  # 16-byte Folded Spill
	lu12i.w	$a0, 48
	ori	$s8, $a0, 513
	stptr.w	$s8, $fp, 2496
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 4
	ori	$s5, $a0, 3616
	add.d	$a0, $s7, $s5
	ori	$a1, $zero, 2500
	ori	$a5, $zero, 2499
	ori	$a2, $zero, 2498
	lu12i.w	$a3, 2
	ori	$s3, $a3, 1808
	lu12i.w	$a3, -3
	ori	$s6, $a3, 2284
	ori	$a3, $zero, 2500
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_9:                                # %._crit_edge135.i
                                        #   in Loop: Header=BB7_10 Depth=1
	addi.d	$a5, $a4, -1
	addi.d	$a3, $a3, -1
	add.d	$a0, $a0, $s6
	add.d	$s7, $s7, $s6
	beqz	$a4, .LBB7_17
.LBB7_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_13 Depth 2
                                        #       Child Loop BB7_16 Depth 3
	move	$a4, $a5
	bltu	$a2, $a5, .LBB7_9
# %bb.11:                               # %.lr.ph134.split.us.preheader.i
                                        #   in Loop: Header=BB7_10 Depth=1
	move	$a5, $zero
	addi.d	$a6, $a4, 1
	mul.d	$a7, $a4, $s3
	add.d	$a7, $s0, $a7
	mul.d	$t0, $a6, $s3
	add.d	$t0, $s0, $t0
	move	$t1, $a0
	move	$t2, $a3
	b	.LBB7_13
	.p2align	4, , 16
.LBB7_12:                               # %._crit_edge.us.i
                                        #   in Loop: Header=BB7_13 Depth=2
	addi.d	$t2, $t2, 1
	addi.d	$a5, $a5, 1
	addi.d	$t1, $t1, 4
	beq	$t2, $a1, .LBB7_9
.LBB7_13:                               # %.lr.ph134.split.us.i
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_16 Depth 3
	addi.d	$t3, $t2, -1
	slli.d	$t6, $t2, 2
	ldx.w	$t4, $a7, $t6
	slli.d	$t5, $t3, 2
	ldx.w	$t7, $a7, $t5
	slt	$t8, $t7, $t4
	ldx.w	$ra, $t0, $t6
	masknez	$t7, $t7, $t8
	maskeqz	$t4, $t4, $t8
	or	$t4, $t4, $t7
	slt	$t7, $ra, $t4
	maskeqz	$t8, $t4, $t7
	ldx.w	$t4, $t0, $t5
	masknez	$t5, $ra, $t7
	or	$t5, $t8, $t5
	stx.w	$t5, $a7, $t6
	bgeu	$a4, $t3, .LBB7_15
# %bb.14:                               #   in Loop: Header=BB7_13 Depth=2
	ldx.b	$t3, $fp, $a4
	ldx.b	$t6, $fp, $t2
	add.d	$t3, $t6, $t3
	addi.d	$t3, $t3, -3
	sltui	$t3, $t3, 1
	add.w	$t4, $t4, $t3
.LBB7_15:                               # %.critedge.us.i
                                        #   in Loop: Header=BB7_13 Depth=2
	alsl.d	$t3, $t2, $a7, 2
	slt	$t6, $t4, $t5
	masknez	$t4, $t4, $t6
	maskeqz	$t5, $t5, $t6
	or	$t4, $t5, $t4
	st.w	$t4, $t3, 0
	move	$t5, $s7
	move	$t6, $t1
	move	$t7, $a5
	bgeu	$a6, $t2, .LBB7_12
	.p2align	4, , 16
.LBB7_16:                               # %.lr.ph.us.i
                                        #   Parent Loop BB7_10 Depth=1
                                        #     Parent Loop BB7_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t8, $t5, 0
	ld.w	$ra, $t6, 0
	add.w	$t8, $ra, $t8
	slt	$ra, $t8, $t4
	masknez	$t8, $t8, $ra
	maskeqz	$t4, $t4, $ra
	or	$t4, $t4, $t8
	st.w	$t4, $t3, 0
	addi.d	$t7, $t7, -1
	add.d	$t6, $t6, $s3
	addi.d	$t5, $t5, 4
	bnez	$t7, .LBB7_16
	b	.LBB7_12
.LBB7_17:                               # %vector.body96.preheader
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	vld	$vr0, $a0, %pc_lo12(.LCPI7_0)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	vld	$vr1, $a0, %pc_lo12(.LCPI7_1)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	vld	$vr2, $a0, %pc_lo12(.LCPI7_2)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	vld	$vr3, $a0, %pc_lo12(.LCPI7_3)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	vld	$vr4, $a0, %pc_lo12(.LCPI7_4)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	vld	$vr5, $a0, %pc_lo12(.LCPI7_5)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	vld	$vr6, $a0, %pc_lo12(.LCPI7_6)
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	vld	$vr7, $a0, %pc_lo12(.LCPI7_7)
	lu12i.w	$a0, -1
	ori	$a0, $a0, 1600
	ori	$a1, $zero, 2496
	ori	$a2, $zero, 2512
	vld	$vr11, $sp, 80                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB7_18:                               # %vector.body96
                                        # =>This Inner Loop Header: Depth=1
	vpickev.w	$vr8, $vr6, $vr7
	vpickev.w	$vr9, $vr4, $vr5
	vpickev.h	$vr8, $vr9, $vr8
	vpickev.w	$vr9, $vr2, $vr3
	vpickev.w	$vr10, $vr0, $vr1
	vpickev.h	$vr9, $vr10, $vr9
	vpickev.b	$vr8, $vr9, $vr8
	vaddi.bu	$vr8, $vr8, 1
	vandi.b	$vr8, $vr8, 3
	add.d	$a3, $fp, $a0
	vstx	$vr8, $a3, $a1
	vstx	$vr8, $a3, $a2
	vadd.d	$vr7, $vr7, $vr11
	vadd.d	$vr6, $vr6, $vr11
	vadd.d	$vr5, $vr5, $vr11
	vadd.d	$vr4, $vr4, $vr11
	vadd.d	$vr3, $vr3, $vr11
	vadd.d	$vr2, $vr2, $vr11
	vadd.d	$vr1, $vr1, $vr11
	addi.d	$a0, $a0, 32
	vadd.d	$vr0, $vr0, $vr11
	bnez	$a0, .LBB7_18
# %bb.19:                               # %vec.epilog.vector.body110
	stptr.w	$s8, $fp, 2496
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $s5
	ori	$a1, $zero, 2500
	ori	$a5, $zero, 2499
	ori	$a2, $zero, 2498
	ori	$a3, $zero, 2500
	lu12i.w	$s5, -3
	b	.LBB7_21
	.p2align	4, , 16
.LBB7_20:                               # %._crit_edge135.i33
                                        #   in Loop: Header=BB7_21 Depth=1
	addi.d	$a5, $a4, -1
	addi.d	$a3, $a3, -1
	add.d	$a0, $a0, $s6
	add.d	$s4, $s4, $s6
	beqz	$a4, .LBB7_28
.LBB7_21:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_24 Depth 2
                                        #       Child Loop BB7_27 Depth 3
	move	$a4, $a5
	bltu	$a2, $a5, .LBB7_20
# %bb.22:                               # %.lr.ph134.split.us.preheader.i37
                                        #   in Loop: Header=BB7_21 Depth=1
	move	$a5, $zero
	addi.d	$a6, $a4, 1
	mul.d	$a7, $a4, $s3
	add.d	$a7, $s1, $a7
	mul.d	$t0, $a6, $s3
	add.d	$t0, $s1, $t0
	move	$t1, $a0
	move	$t2, $a3
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_23:                               # %._crit_edge.us.i45
                                        #   in Loop: Header=BB7_24 Depth=2
	addi.d	$t2, $t2, 1
	addi.d	$a5, $a5, 1
	addi.d	$t1, $t1, 4
	beq	$t2, $a1, .LBB7_20
.LBB7_24:                               # %.lr.ph134.split.us.i38
                                        #   Parent Loop BB7_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_27 Depth 3
	addi.d	$t3, $t2, -1
	slli.d	$t6, $t2, 2
	ldx.w	$t4, $a7, $t6
	slli.d	$t5, $t3, 2
	ldx.w	$t7, $a7, $t5
	slt	$t8, $t7, $t4
	ldx.w	$s2, $t0, $t6
	masknez	$t7, $t7, $t8
	maskeqz	$t4, $t4, $t8
	or	$t4, $t4, $t7
	slt	$t7, $s2, $t4
	maskeqz	$t8, $t4, $t7
	ldx.w	$t4, $t0, $t5
	masknez	$t5, $s2, $t7
	or	$t5, $t8, $t5
	stx.w	$t5, $a7, $t6
	bgeu	$a4, $t3, .LBB7_26
# %bb.25:                               #   in Loop: Header=BB7_24 Depth=2
	ldx.b	$t3, $fp, $a4
	ldx.b	$t6, $fp, $t2
	add.d	$t3, $t6, $t3
	addi.d	$t3, $t3, -3
	sltui	$t3, $t3, 1
	add.w	$t4, $t4, $t3
.LBB7_26:                               # %.critedge.us.i41
                                        #   in Loop: Header=BB7_24 Depth=2
	alsl.d	$t3, $t2, $a7, 2
	slt	$t6, $t4, $t5
	masknez	$t4, $t4, $t6
	maskeqz	$t5, $t5, $t6
	or	$t4, $t5, $t4
	st.w	$t4, $t3, 0
	move	$t5, $s4
	move	$t6, $t1
	move	$t7, $a5
	bgeu	$a6, $t2, .LBB7_23
	.p2align	4, , 16
.LBB7_27:                               # %.lr.ph.us.i48
                                        #   Parent Loop BB7_21 Depth=1
                                        #     Parent Loop BB7_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t8, $t5, 0
	ld.w	$s2, $t6, 0
	add.w	$t8, $s2, $t8
	slt	$s2, $t8, $t4
	masknez	$t8, $t8, $s2
	maskeqz	$t4, $t4, $s2
	or	$t4, $t4, $t8
	st.w	$t4, $t3, 0
	addi.d	$t7, $t7, -1
	add.d	$t6, $t6, $s3
	addi.d	$t5, $t5, 4
	bnez	$t7, .LBB7_27
	b	.LBB7_23
.LBB7_28:                               # %.preheader.i.preheader
	move	$a0, $zero
	move	$a2, $zero
	ori	$a4, $s5, 2288
	lu12i.w	$a1, -487882
	ori	$a1, $a1, 2289
	lu32i.d	$a1, 325813
	lu52i.d	$a1, $a1, 1006
	movgr2fr.d	$fa0, $a1
	ori	$a5, $zero, 2500
	.p2align	4, , 16
.LBB7_29:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_30 Depth 2
	move	$a3, $zero
	add.d	$a6, $s1, $a0
	add.d	$a7, $s0, $a0
	move	$t0, $a4
	.p2align	4, , 16
.LBB7_30:                               #   Parent Loop BB7_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t1, $a7, $t0
	ldptr.w	$t1, $t1, 10000
	add.d	$t2, $a6, $t0
	ldptr.w	$t2, $t2, 10000
	movgr2fr.w	$fa1, $t1
	ffint.d.w	$fa1, $fa1
	movgr2fr.w	$fa2, $t2
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_38
# %bb.31:                               # %.critedge.i
                                        #   in Loop: Header=BB7_30 Depth=2
	addi.d	$t0, $t0, 4
	addi.w	$a3, $a3, 1
	bnez	$t0, .LBB7_30
# %bb.32:                               #   in Loop: Header=BB7_29 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a0, $a0, $s3
	bne	$a2, $a5, .LBB7_29
# %bb.33:                               # %check_FP.exit
	lu12i.w	$s4, 9
	ori	$a0, $s4, 3137
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $s4, 3136
	stx.b	$zero, $s2, $a0
	addi.d	$a0, $s2, 7
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$s5, $s5, 2288
	ori	$s6, $zero, 3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s7, $a0, %got_pc_lo12(stderr)
	move	$s8, $zero
	move	$s4, $zero
.LBB7_34:                               # %.preheader.i58
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_35 Depth 2
	add.d	$a0, $s1, $s8
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $s5
	.p2align	4, , 16
.LBB7_35:                               #   Parent Loop BB7_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a0, $a2
	ldptr.w	$a3, $a3, 10000
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
	srli.d	$a4, $a3, 8
	srli.d	$a5, $a3, 16
	srli.d	$a6, $a3, 24
	srli.d	$a7, $a3, 32
	srli.d	$t0, $a3, 40
	srli.d	$t1, $a3, 48
	srli.d	$t2, $a3, 56
	bstrins.d	$a3, $s6, 63, 4
	st.b	$a3, $a1, -7
	st.b	$a3, $a1, -6
	bstrins.d	$a4, $s6, 63, 4
	st.b	$a4, $a1, -5
	st.b	$a4, $a1, -4
	bstrins.d	$a5, $s6, 63, 4
	st.b	$a5, $a1, -3
	st.b	$a5, $a1, -2
	bstrins.d	$a6, $s6, 63, 4
	st.b	$a6, $a1, -1
	st.b	$a6, $a1, 0
	bstrins.d	$a7, $s6, 63, 4
	st.b	$a7, $a1, 1
	st.b	$a7, $a1, 2
	bstrins.d	$t0, $s6, 63, 4
	st.b	$t0, $a1, 3
	st.b	$t0, $a1, 4
	bstrins.d	$t1, $s6, 63, 4
	st.b	$t1, $a1, 5
	st.b	$t1, $a1, 6
	bstrins.d	$t2, $s6, 63, 4
	st.b	$t2, $a1, 7
	st.b	$t2, $a1, 8
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB7_35
# %bb.36:                               #   in Loop: Header=BB7_34 Depth=1
	ld.d	$a1, $s7, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 1
	add.d	$s8, $s8, $s3
	ori	$a0, $zero, 2500
	bne	$s4, $a0, .LBB7_34
# %bb.37:                               # %print_array.exit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB7_39
.LBB7_38:                               # %check_FP.exit.thread
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 0
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a5, $a2
	move	$a6, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB7_39:
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
.LBB7_40:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	main, .Lfunc_end7-main
                                        # -- End function
	.type	polybench_papi_counters_threadid,@object # @polybench_papi_counters_threadid
	.bss
	.globl	polybench_papi_counters_threadid
	.p2align	2, 0x0
polybench_papi_counters_threadid:
	.word	0                               # 0x0
	.size	polybench_papi_counters_threadid, 4

	.type	polybench_program_total_flops,@object # @polybench_program_total_flops
	.globl	polybench_program_total_flops
	.p2align	3, 0x0
polybench_program_total_flops:
	.dword	0x0000000000000000              # double 0
	.size	polybench_program_total_flops, 8

	.type	polybench_t_start,@object       # @polybench_t_start
	.globl	polybench_t_start
	.p2align	3, 0x0
polybench_t_start:
	.dword	0x0000000000000000              # double 0
	.size	polybench_t_start, 8

	.type	polybench_t_end,@object         # @polybench_t_end
	.globl	polybench_t_end
	.p2align	3, 0x0
polybench_t_end:
	.dword	0x0000000000000000              # double 0
	.size	polybench_t_end, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%0.6f\n"
	.size	.L.str, 7

	.type	polybench_c_start,@object       # @polybench_c_start
	.bss
	.globl	polybench_c_start
	.p2align	3, 0x0
polybench_c_start:
	.dword	0                               # 0x0
	.size	polybench_c_start, 8

	.type	polybench_c_end,@object         # @polybench_c_end
	.globl	polybench_c_end
	.p2align	3, 0x0
polybench_c_end:
	.dword	0                               # 0x0
	.size	polybench_c_end, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"[PolyBench] posix_memalign: cannot allocate memory"
	.size	.L.str.1, 51

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\n"
	.size	.L.str.2, 76

	.section	".note.GNU-stack","",@progbits
	.addrsig
