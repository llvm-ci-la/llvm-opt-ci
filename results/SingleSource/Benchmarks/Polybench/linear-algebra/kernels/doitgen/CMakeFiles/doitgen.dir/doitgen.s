	.file	"doitgen.c"
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
	.globl	kernel_doitgen                  # -- Begin function kernel_doitgen
	.p2align	5
	.type	kernel_doitgen,@function
kernel_doitgen:                         # @kernel_doitgen
# %bb.0:
	blez	$a0, .LBB7_19
# %bb.1:
	blez	$a1, .LBB7_19
# %bb.2:
	blez	$a2, .LBB7_19
# %bb.3:                                # %.preheader37.us.us.us.preheader
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	move	$a6, $zero
	sub.d	$a7, $a3, $a5
	bstrpick.d	$t0, $a2, 30, 2
	slli.d	$t0, $t0, 2
	slli.d	$t1, $a2, 3
	bstrpick.d	$t1, $t1, 33, 5
	slli.d	$t1, $t1, 5
	lu12i.w	$t2, 43
	ori	$t2, $t2, 3072
	movgr2fr.d	$fa0, $zero
	ori	$t3, $zero, 4
	ori	$t4, $zero, 32
	b	.LBB7_5
	.p2align	4, , 16
.LBB7_4:                                # %._crit_edge43.split.us.us.us.split.us.us
                                        #   in Loop: Header=BB7_5 Depth=1
	addi.d	$a6, $a6, 1
	add.d	$a3, $a3, $t2
	beq	$a6, $a0, .LBB7_18
.LBB7_5:                                # %.preheader37.us.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_7 Depth 2
                                        #       Child Loop BB7_8 Depth 3
                                        #         Child Loop BB7_9 Depth 4
                                        #       Child Loop BB7_14 Depth 3
                                        #       Child Loop BB7_17 Depth 3
	move	$t5, $zero
	mul.d	$t6, $a6, $t2
	add.d	$t6, $a7, $t6
	move	$t7, $a3
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_6:                                # %._crit_edge.us45.us.us.us.us
                                        #   in Loop: Header=BB7_7 Depth=2
	addi.d	$t5, $t5, 1
	addi.d	$t7, $t7, 1280
	beq	$t5, $a1, .LBB7_4
.LBB7_7:                                # %.preheader36.us.us.us.us.us
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_8 Depth 3
                                        #         Child Loop BB7_9 Depth 4
                                        #       Child Loop BB7_14 Depth 3
                                        #       Child Loop BB7_17 Depth 3
	move	$fp, $zero
	alsl.d	$t8, $t5, $t5, 2
	slli.d	$t8, $t8, 8
	add.d	$t8, $t6, $t8
	move	$s0, $a4
	.p2align	4, , 16
.LBB7_8:                                # %.lr.ph.us.us.us.us.us.us
                                        #   Parent Loop BB7_5 Depth=1
                                        #     Parent Loop BB7_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_9 Depth 4
	alsl.d	$s1, $fp, $a5, 3
	slli.d	$s2, $fp, 3
	stx.d	$zero, $a5, $s2
	move	$s2, $a2
	move	$s3, $s0
	move	$s4, $t7
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB7_9:                                #   Parent Loop BB7_5 Depth=1
                                        #     Parent Loop BB7_7 Depth=2
                                        #       Parent Loop BB7_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa2, $s4, 0
	fld.d	$fa3, $s3, 0
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $s1, 0
	addi.d	$s4, $s4, 8
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 1280
	bnez	$s2, .LBB7_9
# %bb.10:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB7_8 Depth=3
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 8
	bne	$fp, $a2, .LBB7_8
# %bb.11:                               # %..preheader_crit_edge.split.us.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB7_7 Depth=2
	move	$fp, $zero
	bltu	$a2, $t3, .LBB7_16
# %bb.12:                               # %..preheader_crit_edge.split.us.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB7_7 Depth=2
	bltu	$t8, $t4, .LBB7_16
# %bb.13:                               # %vector.body.preheader
                                        #   in Loop: Header=BB7_7 Depth=2
	move	$t8, $zero
	.p2align	4, , 16
.LBB7_14:                               # %vector.body
                                        #   Parent Loop BB7_5 Depth=1
                                        #     Parent Loop BB7_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vldx	$vr1, $a5, $t8
	add.d	$fp, $a5, $t8
	vld	$vr2, $fp, 16
	add.d	$fp, $t7, $t8
	vstx	$vr1, $t7, $t8
	addi.d	$t8, $t8, 32
	vst	$vr2, $fp, 16
	bne	$t1, $t8, .LBB7_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB7_7 Depth=2
	move	$fp, $t0
	beq	$t0, $a2, .LBB7_6
.LBB7_16:                               # %..preheader_crit_edge.split.us.us.us.us.us.us.preheader84
                                        #   in Loop: Header=BB7_7 Depth=2
	slli.d	$t8, $fp, 3
	sub.d	$fp, $a2, $fp
	.p2align	4, , 16
.LBB7_17:                               # %..preheader_crit_edge.split.us.us.us.us.us.us
                                        #   Parent Loop BB7_5 Depth=1
                                        #     Parent Loop BB7_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $a5, $t8
	fstx.d	$fa1, $t7, $t8
	addi.d	$fp, $fp, -1
	addi.d	$t8, $t8, 8
	bnez	$fp, .LBB7_17
	b	.LBB7_6
.LBB7_18:
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB7_19:                               # %._crit_edge
	ret
.Lfunc_end7:
	.size	kernel_doitgen, .Lfunc_end7-kernel_doitgen
                                        # -- End function
	.globl	kernel_doitgen_StrictFP         # -- Begin function kernel_doitgen_StrictFP
	.p2align	5
	.type	kernel_doitgen_StrictFP,@function
kernel_doitgen_StrictFP:                # @kernel_doitgen_StrictFP
# %bb.0:
	blez	$a0, .LBB8_19
# %bb.1:
	blez	$a1, .LBB8_19
# %bb.2:
	blez	$a2, .LBB8_19
# %bb.3:                                # %.preheader37.us.us.us.preheader
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	move	$a6, $zero
	sub.d	$a7, $a3, $a5
	bstrpick.d	$t0, $a2, 30, 2
	slli.d	$t0, $t0, 2
	slli.d	$t1, $a2, 3
	bstrpick.d	$t1, $t1, 33, 5
	slli.d	$t1, $t1, 5
	lu12i.w	$t2, 43
	ori	$t2, $t2, 3072
	movgr2fr.d	$fa0, $zero
	ori	$t3, $zero, 4
	ori	$t4, $zero, 32
	b	.LBB8_5
	.p2align	4, , 16
.LBB8_4:                                # %._crit_edge43.split.us.us.us.split.us.us
                                        #   in Loop: Header=BB8_5 Depth=1
	addi.d	$a6, $a6, 1
	add.d	$a3, $a3, $t2
	beq	$a6, $a0, .LBB8_18
.LBB8_5:                                # %.preheader37.us.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_7 Depth 2
                                        #       Child Loop BB8_8 Depth 3
                                        #         Child Loop BB8_9 Depth 4
                                        #       Child Loop BB8_14 Depth 3
                                        #       Child Loop BB8_17 Depth 3
	move	$t5, $zero
	mul.d	$t6, $a6, $t2
	add.d	$t6, $a7, $t6
	move	$t7, $a3
	b	.LBB8_7
	.p2align	4, , 16
.LBB8_6:                                # %._crit_edge.us45.us.us.us.us
                                        #   in Loop: Header=BB8_7 Depth=2
	addi.d	$t5, $t5, 1
	addi.d	$t7, $t7, 1280
	beq	$t5, $a1, .LBB8_4
.LBB8_7:                                # %.preheader36.us.us.us.us.us
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_8 Depth 3
                                        #         Child Loop BB8_9 Depth 4
                                        #       Child Loop BB8_14 Depth 3
                                        #       Child Loop BB8_17 Depth 3
	move	$fp, $zero
	alsl.d	$t8, $t5, $t5, 2
	slli.d	$t8, $t8, 8
	add.d	$t8, $t6, $t8
	move	$s0, $a4
	.p2align	4, , 16
.LBB8_8:                                # %.lr.ph.us.us.us.us.us.us
                                        #   Parent Loop BB8_5 Depth=1
                                        #     Parent Loop BB8_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_9 Depth 4
	alsl.d	$s1, $fp, $a5, 3
	slli.d	$s2, $fp, 3
	stx.d	$zero, $a5, $s2
	move	$s2, $a2
	move	$s3, $s0
	move	$s4, $t7
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB8_9:                                #   Parent Loop BB8_5 Depth=1
                                        #     Parent Loop BB8_7 Depth=2
                                        #       Parent Loop BB8_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa2, $s4, 0
	fld.d	$fa3, $s3, 0
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $s1, 0
	addi.d	$s4, $s4, 8
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 1280
	bnez	$s2, .LBB8_9
# %bb.10:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB8_8 Depth=3
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 8
	bne	$fp, $a2, .LBB8_8
# %bb.11:                               # %..preheader_crit_edge.split.us.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB8_7 Depth=2
	move	$fp, $zero
	bltu	$a2, $t3, .LBB8_16
# %bb.12:                               # %..preheader_crit_edge.split.us.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB8_7 Depth=2
	bltu	$t8, $t4, .LBB8_16
# %bb.13:                               # %vector.body.preheader
                                        #   in Loop: Header=BB8_7 Depth=2
	move	$t8, $zero
	.p2align	4, , 16
.LBB8_14:                               # %vector.body
                                        #   Parent Loop BB8_5 Depth=1
                                        #     Parent Loop BB8_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vldx	$vr1, $a5, $t8
	add.d	$fp, $a5, $t8
	vld	$vr2, $fp, 16
	add.d	$fp, $t7, $t8
	vstx	$vr1, $t7, $t8
	addi.d	$t8, $t8, 32
	vst	$vr2, $fp, 16
	bne	$t1, $t8, .LBB8_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB8_7 Depth=2
	move	$fp, $t0
	beq	$t0, $a2, .LBB8_6
.LBB8_16:                               # %..preheader_crit_edge.split.us.us.us.us.us.us.preheader84
                                        #   in Loop: Header=BB8_7 Depth=2
	slli.d	$t8, $fp, 3
	sub.d	$fp, $a2, $fp
	.p2align	4, , 16
.LBB8_17:                               # %..preheader_crit_edge.split.us.us.us.us.us.us
                                        #   Parent Loop BB8_5 Depth=1
                                        #     Parent Loop BB8_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $a5, $t8
	fstx.d	$fa1, $t7, $t8
	addi.d	$fp, $fp, -1
	addi.d	$t8, $t8, 8
	bnez	$fp, .LBB8_17
	b	.LBB8_6
.LBB8_18:
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB8_19:                               # %._crit_edge
	ret
.Lfunc_end8:
	.size	kernel_doitgen_StrictFP, .Lfunc_end8-kernel_doitgen_StrictFP
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI9_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	st.d	$zero, $sp, 64
	lu12i.w	$a0, 6562
	ori	$s0, $a0, 2048
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 64
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 64
	beqz	$fp, .LBB9_61
# %bb.1:
	bnez	$a0, .LBB9_61
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 64
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 64
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 64
	beqz	$s0, .LBB9_61
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB9_61
# %bb.4:                                # %polybench_alloc_data.exit32
	st.d	$zero, $sp, 64
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 64
	ori	$a2, $zero, 1280
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 64
	beqz	$s1, .LBB9_61
# %bb.5:                                # %polybench_alloc_data.exit32
	bnez	$a0, .LBB9_61
# %bb.6:                                # %polybench_alloc_data.exit34
	st.d	$zero, $sp, 64
	lu12i.w	$a1, 1
	lu12i.w	$a2, 50
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 64
	beqz	$s2, .LBB9_61
# %bb.7:                                # %polybench_alloc_data.exit34
	bnez	$a0, .LBB9_61
# %bb.8:                                # %polybench_alloc_data.exit36
	move	$a0, $zero
	move	$a1, $zero
	sub.d	$a2, $s0, $fp
	addi.d	$a3, $fp, 16
	ori	$a4, $zero, 31
	lu12i.w	$a5, -209716
	ori	$a5, $a5, 3277
	lu32i.d	$a5, 0
	ori	$a6, $zero, 0
	lu32i.d	$a6, 262144
	lu52i.d	$a6, $a6, 1030
	movgr2fr.d	$fa0, $a6
	ori	$a7, $zero, 1280
	ori	$t0, $zero, 140
	lu12i.w	$t1, 43
	ori	$s4, $t1, 3072
	ori	$t1, $zero, 150
	ori	$t2, $zero, 160
	move	$t3, $fp
	move	$t4, $s0
	b	.LBB9_10
	.p2align	4, , 16
.LBB9_9:                                #   in Loop: Header=BB9_10 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a3, $a3, $s4
	add.d	$t4, $t4, $s4
	add.d	$t3, $t3, $s4
	addi.d	$a0, $a0, 1
	beq	$a1, $t1, .LBB9_17
.LBB9_10:                               # %.preheader41.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_12 Depth 2
                                        #       Child Loop BB9_16 Depth 3
                                        #       Child Loop BB9_14 Depth 3
	move	$t5, $zero
	move	$t6, $zero
	move	$t7, $t3
	move	$t8, $t4
	move	$s3, $a3
	b	.LBB9_12
	.p2align	4, , 16
.LBB9_11:                               # %middle.block
                                        #   in Loop: Header=BB9_12 Depth=2
	addi.d	$t6, $t6, 1
	addi.d	$s3, $s3, 1280
	addi.d	$t8, $t8, 1280
	addi.d	$t7, $t7, 1280
	add.w	$t5, $t5, $a0
	beq	$t6, $t0, .LBB9_9
.LBB9_12:                               # %.preheader40.i
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_16 Depth 3
                                        #       Child Loop BB9_14 Depth 3
	move	$s5, $zero
	bltu	$a4, $a2, .LBB9_15
# %bb.13:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB9_12 Depth=2
	move	$s6, $t5
	.p2align	4, , 16
.LBB9_14:                               # %scalar.ph
                                        #   Parent Loop BB9_10 Depth=1
                                        #     Parent Loop BB9_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$s7, $s6, 31, 0
	mul.d	$s7, $s7, $a5
	srli.d	$s7, $s7, 39
	alsl.d	$s7, $s7, $s7, 2
	slli.d	$s7, $s7, 5
	sub.d	$s7, $s6, $s7
	bstrpick.d	$s7, $s7, 31, 0
	movgr2fr.d	$fa1, $s7
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $t7, $s5
	fstx.d	$fa1, $t8, $s5
	addi.d	$s5, $s5, 8
	addi.w	$s6, $s6, 1
	bne	$s5, $a7, .LBB9_14
	b	.LBB9_11
	.p2align	4, , 16
.LBB9_15:                               # %vector.ph
                                        #   in Loop: Header=BB9_12 Depth=2
	pcalau12i	$s6, %pc_hi20(.LCPI9_0)
	vld	$vr1, $s6, %pc_lo12(.LCPI9_0)
	mul.d	$s6, $t6, $a1
	vreplgr2vr.d	$vr2, $s6
	vaddi.du	$vr3, $vr2, 2
	.p2align	4, , 16
.LBB9_16:                               # %vector.body
                                        #   Parent Loop BB9_10 Depth=1
                                        #     Parent Loop BB9_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vadd.d	$vr4, $vr1, $vr2
	vadd.d	$vr5, $vr1, $vr3
	vpickve2gr.w	$s6, $vr4, 0
	mod.wu	$s6, $s6, $t2
	bstrpick.d	$s6, $s6, 31, 0
	vpickve2gr.w	$s7, $vr4, 2
	mod.wu	$s7, $s7, $t2
	bstrpick.d	$s7, $s7, 31, 0
	vpickve2gr.w	$s8, $vr5, 0
	mod.wu	$s8, $s8, $t2
	bstrpick.d	$s8, $s8, 31, 0
	vpickve2gr.w	$ra, $vr5, 2
	mod.wu	$ra, $ra, $t2
	bstrpick.d	$ra, $ra, 31, 0
	movgr2fr.d	$fa4, $s7
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa5, $s6
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	movgr2fr.d	$fa4, $ra
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa6, $s8
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr4, 16
	vreplgr2vr.d	$vr4, $a6
	vfdiv.d	$vr5, $vr5, $vr4
	vfdiv.d	$vr4, $vr6, $vr4
	add.d	$s6, $s3, $s5
	vst	$vr5, $s6, -16
	vstx	$vr4, $s3, $s5
	add.d	$s6, $t8, $s5
	vstx	$vr5, $t8, $s5
	vst	$vr4, $s6, 16
	addi.d	$s5, $s5, 32
	vaddi.du	$vr1, $vr1, 4
	bne	$s5, $a7, .LBB9_16
	b	.LBB9_11
.LBB9_17:                               # %.preheader.i.preheader
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.LCPI9_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI9_0)
	ori	$a1, $zero, 160
	ori	$a2, $zero, 0
	lu32i.d	$a2, 262144
	lu52i.d	$a2, $a2, 1030
	vreplgr2vr.d	$vr1, $a2
	ori	$a2, $zero, 1280
	move	$a3, $s2
	.p2align	4, , 16
.LBB9_18:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_19 Depth 2
	move	$a4, $zero
	vreplgr2vr.d	$vr2, $a0
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB9_19:                               # %vector.body106
                                        #   Parent Loop BB9_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr4, $vr3, 2
	vmul.d	$vr5, $vr3, $vr2
	vmul.d	$vr4, $vr4, $vr2
	vpickve2gr.w	$a5, $vr5, 0
	mod.wu	$a5, $a5, $a1
	bstrpick.d	$a5, $a5, 31, 0
	vpickve2gr.w	$a6, $vr5, 2
	mod.wu	$a6, $a6, $a1
	bstrpick.d	$a6, $a6, 31, 0
	vpickve2gr.w	$a7, $vr4, 0
	mod.wu	$a7, $a7, $a1
	bstrpick.d	$a7, $a7, 31, 0
	vpickve2gr.w	$t0, $vr4, 2
	mod.wu	$t0, $t0, $a1
	bstrpick.d	$t0, $t0, 31, 0
	movgr2fr.d	$fa4, $a6
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa5, $a5
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	movgr2fr.d	$fa4, $t0
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa6, $a7
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr4, 16
	vfdiv.d	$vr4, $vr5, $vr1
	vfdiv.d	$vr5, $vr6, $vr1
	add.d	$a5, $a3, $a4
	vstx	$vr4, $a3, $a4
	vst	$vr5, $a5, 16
	addi.d	$a4, $a4, 32
	vaddi.du	$vr3, $vr3, 4
	bne	$a4, $a2, .LBB9_19
# %bb.20:                               # %middle.block112
                                        #   in Loop: Header=BB9_18 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 1280
	bne	$a0, $a1, .LBB9_18
# %bb.21:                               # %.preheader37.us.us.us.i.preheader
	move	$a0, $zero
	sub.d	$a1, $fp, $s1
	movgr2fr.d	$fa0, $zero
	ori	$a2, $zero, 1280
	ori	$a3, $zero, 160
	ori	$a4, $zero, 31
	ori	$a5, $zero, 140
	ori	$a6, $zero, 150
	move	$a7, $fp
	b	.LBB9_23
	.p2align	4, , 16
.LBB9_22:                               # %._crit_edge43.split.us.us.us.split.us.us.i
                                        #   in Loop: Header=BB9_23 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a7, $a7, $s4
	beq	$a0, $a6, .LBB9_33
.LBB9_23:                               # %.preheader37.us.us.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_26 Depth 2
                                        #       Child Loop BB9_27 Depth 3
                                        #         Child Loop BB9_28 Depth 4
                                        #       Child Loop BB9_32 Depth 3
	move	$t0, $zero
	mul.d	$t2, $a0, $s4
	add.d	$t1, $a1, $t2
	add.d	$t2, $fp, $t2
	move	$t3, $a7
	b	.LBB9_26
	.p2align	4, , 16
.LBB9_24:                               # %vector.body117
                                        #   in Loop: Header=BB9_26 Depth=2
	vld	$vr1, $s1, 0
	vld	$vr2, $s1, 16
	vst	$vr1, $t4, 0
	vst	$vr2, $t4, 16
	vld	$vr1, $s1, 32
	vld	$vr2, $s1, 48
	vst	$vr1, $t4, 32
	vst	$vr2, $t4, 48
	vld	$vr1, $s1, 64
	vld	$vr2, $s1, 80
	vst	$vr1, $t4, 64
	vst	$vr2, $t4, 80
	vld	$vr1, $s1, 96
	vld	$vr2, $s1, 112
	vst	$vr1, $t4, 96
	vst	$vr2, $t4, 112
	vld	$vr1, $s1, 128
	vld	$vr2, $s1, 144
	vst	$vr1, $t4, 128
	vst	$vr2, $t4, 144
	vld	$vr1, $s1, 160
	vld	$vr2, $s1, 176
	vst	$vr1, $t4, 160
	vst	$vr2, $t4, 176
	vld	$vr1, $s1, 192
	vld	$vr2, $s1, 208
	vst	$vr1, $t4, 192
	vst	$vr2, $t4, 208
	vld	$vr1, $s1, 224
	vld	$vr2, $s1, 240
	vst	$vr1, $t4, 224
	vst	$vr2, $t4, 240
	vld	$vr1, $s1, 256
	vld	$vr2, $s1, 272
	vst	$vr1, $t4, 256
	vst	$vr2, $t4, 272
	vld	$vr1, $s1, 288
	vld	$vr2, $s1, 304
	vst	$vr1, $t4, 288
	vst	$vr2, $t4, 304
	vld	$vr1, $s1, 320
	vld	$vr2, $s1, 336
	vst	$vr1, $t4, 320
	vst	$vr2, $t4, 336
	vld	$vr1, $s1, 352
	vld	$vr2, $s1, 368
	vst	$vr1, $t4, 352
	vst	$vr2, $t4, 368
	vld	$vr1, $s1, 384
	vld	$vr2, $s1, 400
	vst	$vr1, $t4, 384
	vst	$vr2, $t4, 400
	vld	$vr1, $s1, 416
	vld	$vr2, $s1, 432
	vst	$vr1, $t4, 416
	vst	$vr2, $t4, 432
	vld	$vr1, $s1, 448
	vld	$vr2, $s1, 464
	vst	$vr1, $t4, 448
	vst	$vr2, $t4, 464
	vld	$vr1, $s1, 480
	vld	$vr2, $s1, 496
	vst	$vr1, $t4, 480
	vst	$vr2, $t4, 496
	vld	$vr1, $s1, 512
	vld	$vr2, $s1, 528
	vst	$vr1, $t4, 512
	vst	$vr2, $t4, 528
	vld	$vr1, $s1, 544
	vld	$vr2, $s1, 560
	vst	$vr1, $t4, 544
	vst	$vr2, $t4, 560
	vld	$vr1, $s1, 576
	vld	$vr2, $s1, 592
	vst	$vr1, $t4, 576
	vst	$vr2, $t4, 592
	vld	$vr1, $s1, 608
	vld	$vr2, $s1, 624
	vst	$vr1, $t4, 608
	vst	$vr2, $t4, 624
	vld	$vr1, $s1, 640
	vld	$vr2, $s1, 656
	vst	$vr1, $t4, 640
	vst	$vr2, $t4, 656
	vld	$vr1, $s1, 672
	vld	$vr2, $s1, 688
	vst	$vr1, $t4, 672
	vst	$vr2, $t4, 688
	vld	$vr1, $s1, 704
	vld	$vr2, $s1, 720
	vst	$vr1, $t4, 704
	vst	$vr2, $t4, 720
	vld	$vr1, $s1, 736
	vld	$vr2, $s1, 752
	vst	$vr1, $t4, 736
	vst	$vr2, $t4, 752
	vld	$vr1, $s1, 768
	vld	$vr2, $s1, 784
	vst	$vr1, $t4, 768
	vst	$vr2, $t4, 784
	vld	$vr1, $s1, 800
	vld	$vr2, $s1, 816
	vst	$vr1, $t4, 800
	vst	$vr2, $t4, 816
	vld	$vr1, $s1, 832
	vld	$vr2, $s1, 848
	vst	$vr1, $t4, 832
	vst	$vr2, $t4, 848
	vld	$vr1, $s1, 864
	vld	$vr2, $s1, 880
	vst	$vr1, $t4, 864
	vst	$vr2, $t4, 880
	vld	$vr1, $s1, 896
	vld	$vr2, $s1, 912
	vst	$vr1, $t4, 896
	vst	$vr2, $t4, 912
	vld	$vr1, $s1, 928
	vld	$vr2, $s1, 944
	vst	$vr1, $t4, 928
	vst	$vr2, $t4, 944
	vld	$vr1, $s1, 960
	vld	$vr2, $s1, 976
	vst	$vr1, $t4, 960
	vst	$vr2, $t4, 976
	vld	$vr1, $s1, 992
	vld	$vr2, $s1, 1008
	vst	$vr1, $t4, 992
	vst	$vr2, $t4, 1008
	vld	$vr1, $s1, 1024
	vld	$vr2, $s1, 1040
	vst	$vr1, $t4, 1024
	vst	$vr2, $t4, 1040
	vld	$vr1, $s1, 1056
	vld	$vr2, $s1, 1072
	vst	$vr1, $t4, 1056
	vst	$vr2, $t4, 1072
	vld	$vr1, $s1, 1088
	vld	$vr2, $s1, 1104
	vst	$vr1, $t4, 1088
	vst	$vr2, $t4, 1104
	vld	$vr1, $s1, 1120
	vld	$vr2, $s1, 1136
	vst	$vr1, $t4, 1120
	vst	$vr2, $t4, 1136
	vld	$vr1, $s1, 1152
	vld	$vr2, $s1, 1168
	vst	$vr1, $t4, 1152
	vst	$vr2, $t4, 1168
	vld	$vr1, $s1, 1184
	vld	$vr2, $s1, 1200
	vst	$vr1, $t4, 1184
	vst	$vr2, $t4, 1200
	vld	$vr1, $s1, 1216
	vld	$vr2, $s1, 1232
	vst	$vr1, $t4, 1216
	vst	$vr2, $t4, 1232
	vld	$vr1, $s1, 1248
	vld	$vr2, $s1, 1264
	vst	$vr1, $t4, 1248
	vst	$vr2, $t4, 1264
.LBB9_25:                               # %._crit_edge.us45.us.us.us.us.i
                                        #   in Loop: Header=BB9_26 Depth=2
	addi.d	$t0, $t0, 1
	addi.d	$t3, $t3, 1280
	beq	$t0, $a5, .LBB9_22
.LBB9_26:                               # %.preheader36.us.us.us.us.us.i
                                        #   Parent Loop BB9_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_27 Depth 3
                                        #         Child Loop BB9_28 Depth 4
                                        #       Child Loop BB9_32 Depth 3
	move	$t5, $zero
	alsl.d	$t4, $t0, $t0, 2
	slli.d	$t4, $t4, 8
	add.d	$t6, $t1, $t4
	add.d	$t4, $t2, $t4
	move	$t7, $s2
	.p2align	4, , 16
.LBB9_27:                               # %.lr.ph.us.us.us.us.us.us.i
                                        #   Parent Loop BB9_23 Depth=1
                                        #     Parent Loop BB9_26 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_28 Depth 4
	move	$t8, $zero
	alsl.d	$s3, $t5, $s1, 3
	slli.d	$s5, $t5, 3
	stx.d	$zero, $s1, $s5
	move	$s5, $t7
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB9_28:                               #   Parent Loop BB9_23 Depth=1
                                        #     Parent Loop BB9_26 Depth=2
                                        #       Parent Loop BB9_27 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa2, $t3, $t8
	fld.d	$fa3, $s5, 0
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fst.d	$fa1, $s3, 0
	addi.d	$t8, $t8, 8
	addi.d	$s5, $s5, 1280
	bne	$t8, $a2, .LBB9_28
# %bb.29:                               # %._crit_edge.us.us.us.us.us.us.i
                                        #   in Loop: Header=BB9_27 Depth=3
	addi.d	$t5, $t5, 1
	addi.d	$t7, $t7, 8
	bne	$t5, $a3, .LBB9_27
# %bb.30:                               # %vector.memcheck113
                                        #   in Loop: Header=BB9_26 Depth=2
	bltu	$a4, $t6, .LBB9_24
# %bb.31:                               # %..preheader_crit_edge.split.us.us.us.us.us.us.i.preheader
                                        #   in Loop: Header=BB9_26 Depth=2
	move	$t4, $zero
	.p2align	4, , 16
.LBB9_32:                               # %..preheader_crit_edge.split.us.us.us.us.us.us.i
                                        #   Parent Loop BB9_23 Depth=1
                                        #     Parent Loop BB9_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s1, $t4
	fstx.d	$fa1, $t3, $t4
	addi.d	$t4, $t4, 8
	bne	$t4, $a2, .LBB9_32
	b	.LBB9_25
.LBB9_33:                               # %.preheader37.us.us.us.i40.preheader
	move	$a0, $zero
	sub.d	$a1, $s0, $s1
	movgr2fr.d	$fa0, $zero
	ori	$a2, $zero, 1280
	ori	$a3, $zero, 160
	ori	$a4, $zero, 31
	ori	$a5, $zero, 140
	ori	$a6, $zero, 150
	move	$a7, $s0
	b	.LBB9_35
	.p2align	4, , 16
.LBB9_34:                               # %._crit_edge43.split.us.us.us.split.us.us.i61
                                        #   in Loop: Header=BB9_35 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a7, $a7, $s4
	beq	$a0, $a6, .LBB9_45
.LBB9_35:                               # %.preheader37.us.us.us.i40
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_38 Depth 2
                                        #       Child Loop BB9_39 Depth 3
                                        #         Child Loop BB9_40 Depth 4
                                        #       Child Loop BB9_44 Depth 3
	move	$t0, $zero
	mul.d	$t2, $a0, $s4
	add.d	$t1, $a1, $t2
	add.d	$t2, $s0, $t2
	move	$t3, $a7
	b	.LBB9_38
	.p2align	4, , 16
.LBB9_36:                               # %vector.body127
                                        #   in Loop: Header=BB9_38 Depth=2
	vld	$vr1, $s1, 0
	vld	$vr2, $s1, 16
	vst	$vr1, $t4, 0
	vst	$vr2, $t4, 16
	vld	$vr1, $s1, 32
	vld	$vr2, $s1, 48
	vst	$vr1, $t4, 32
	vst	$vr2, $t4, 48
	vld	$vr1, $s1, 64
	vld	$vr2, $s1, 80
	vst	$vr1, $t4, 64
	vst	$vr2, $t4, 80
	vld	$vr1, $s1, 96
	vld	$vr2, $s1, 112
	vst	$vr1, $t4, 96
	vst	$vr2, $t4, 112
	vld	$vr1, $s1, 128
	vld	$vr2, $s1, 144
	vst	$vr1, $t4, 128
	vst	$vr2, $t4, 144
	vld	$vr1, $s1, 160
	vld	$vr2, $s1, 176
	vst	$vr1, $t4, 160
	vst	$vr2, $t4, 176
	vld	$vr1, $s1, 192
	vld	$vr2, $s1, 208
	vst	$vr1, $t4, 192
	vst	$vr2, $t4, 208
	vld	$vr1, $s1, 224
	vld	$vr2, $s1, 240
	vst	$vr1, $t4, 224
	vst	$vr2, $t4, 240
	vld	$vr1, $s1, 256
	vld	$vr2, $s1, 272
	vst	$vr1, $t4, 256
	vst	$vr2, $t4, 272
	vld	$vr1, $s1, 288
	vld	$vr2, $s1, 304
	vst	$vr1, $t4, 288
	vst	$vr2, $t4, 304
	vld	$vr1, $s1, 320
	vld	$vr2, $s1, 336
	vst	$vr1, $t4, 320
	vst	$vr2, $t4, 336
	vld	$vr1, $s1, 352
	vld	$vr2, $s1, 368
	vst	$vr1, $t4, 352
	vst	$vr2, $t4, 368
	vld	$vr1, $s1, 384
	vld	$vr2, $s1, 400
	vst	$vr1, $t4, 384
	vst	$vr2, $t4, 400
	vld	$vr1, $s1, 416
	vld	$vr2, $s1, 432
	vst	$vr1, $t4, 416
	vst	$vr2, $t4, 432
	vld	$vr1, $s1, 448
	vld	$vr2, $s1, 464
	vst	$vr1, $t4, 448
	vst	$vr2, $t4, 464
	vld	$vr1, $s1, 480
	vld	$vr2, $s1, 496
	vst	$vr1, $t4, 480
	vst	$vr2, $t4, 496
	vld	$vr1, $s1, 512
	vld	$vr2, $s1, 528
	vst	$vr1, $t4, 512
	vst	$vr2, $t4, 528
	vld	$vr1, $s1, 544
	vld	$vr2, $s1, 560
	vst	$vr1, $t4, 544
	vst	$vr2, $t4, 560
	vld	$vr1, $s1, 576
	vld	$vr2, $s1, 592
	vst	$vr1, $t4, 576
	vst	$vr2, $t4, 592
	vld	$vr1, $s1, 608
	vld	$vr2, $s1, 624
	vst	$vr1, $t4, 608
	vst	$vr2, $t4, 624
	vld	$vr1, $s1, 640
	vld	$vr2, $s1, 656
	vst	$vr1, $t4, 640
	vst	$vr2, $t4, 656
	vld	$vr1, $s1, 672
	vld	$vr2, $s1, 688
	vst	$vr1, $t4, 672
	vst	$vr2, $t4, 688
	vld	$vr1, $s1, 704
	vld	$vr2, $s1, 720
	vst	$vr1, $t4, 704
	vst	$vr2, $t4, 720
	vld	$vr1, $s1, 736
	vld	$vr2, $s1, 752
	vst	$vr1, $t4, 736
	vst	$vr2, $t4, 752
	vld	$vr1, $s1, 768
	vld	$vr2, $s1, 784
	vst	$vr1, $t4, 768
	vst	$vr2, $t4, 784
	vld	$vr1, $s1, 800
	vld	$vr2, $s1, 816
	vst	$vr1, $t4, 800
	vst	$vr2, $t4, 816
	vld	$vr1, $s1, 832
	vld	$vr2, $s1, 848
	vst	$vr1, $t4, 832
	vst	$vr2, $t4, 848
	vld	$vr1, $s1, 864
	vld	$vr2, $s1, 880
	vst	$vr1, $t4, 864
	vst	$vr2, $t4, 880
	vld	$vr1, $s1, 896
	vld	$vr2, $s1, 912
	vst	$vr1, $t4, 896
	vst	$vr2, $t4, 912
	vld	$vr1, $s1, 928
	vld	$vr2, $s1, 944
	vst	$vr1, $t4, 928
	vst	$vr2, $t4, 944
	vld	$vr1, $s1, 960
	vld	$vr2, $s1, 976
	vst	$vr1, $t4, 960
	vst	$vr2, $t4, 976
	vld	$vr1, $s1, 992
	vld	$vr2, $s1, 1008
	vst	$vr1, $t4, 992
	vst	$vr2, $t4, 1008
	vld	$vr1, $s1, 1024
	vld	$vr2, $s1, 1040
	vst	$vr1, $t4, 1024
	vst	$vr2, $t4, 1040
	vld	$vr1, $s1, 1056
	vld	$vr2, $s1, 1072
	vst	$vr1, $t4, 1056
	vst	$vr2, $t4, 1072
	vld	$vr1, $s1, 1088
	vld	$vr2, $s1, 1104
	vst	$vr1, $t4, 1088
	vst	$vr2, $t4, 1104
	vld	$vr1, $s1, 1120
	vld	$vr2, $s1, 1136
	vst	$vr1, $t4, 1120
	vst	$vr2, $t4, 1136
	vld	$vr1, $s1, 1152
	vld	$vr2, $s1, 1168
	vst	$vr1, $t4, 1152
	vst	$vr2, $t4, 1168
	vld	$vr1, $s1, 1184
	vld	$vr2, $s1, 1200
	vst	$vr1, $t4, 1184
	vst	$vr2, $t4, 1200
	vld	$vr1, $s1, 1216
	vld	$vr2, $s1, 1232
	vst	$vr1, $t4, 1216
	vst	$vr2, $t4, 1232
	vld	$vr1, $s1, 1248
	vld	$vr2, $s1, 1264
	vst	$vr1, $t4, 1248
	vst	$vr2, $t4, 1264
.LBB9_37:                               # %._crit_edge.us45.us.us.us.us.i58
                                        #   in Loop: Header=BB9_38 Depth=2
	addi.d	$t0, $t0, 1
	addi.d	$t3, $t3, 1280
	beq	$t0, $a5, .LBB9_34
.LBB9_38:                               # %.preheader36.us.us.us.us.us.i42
                                        #   Parent Loop BB9_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_39 Depth 3
                                        #         Child Loop BB9_40 Depth 4
                                        #       Child Loop BB9_44 Depth 3
	move	$t5, $zero
	alsl.d	$t4, $t0, $t0, 2
	slli.d	$t4, $t4, 8
	add.d	$t6, $t1, $t4
	add.d	$t4, $t2, $t4
	move	$t7, $s2
	.p2align	4, , 16
.LBB9_39:                               # %.lr.ph.us.us.us.us.us.us.i44
                                        #   Parent Loop BB9_35 Depth=1
                                        #     Parent Loop BB9_38 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_40 Depth 4
	move	$t8, $zero
	alsl.d	$s3, $t5, $s1, 3
	slli.d	$s5, $t5, 3
	stx.d	$zero, $s1, $s5
	move	$s5, $t7
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB9_40:                               #   Parent Loop BB9_35 Depth=1
                                        #     Parent Loop BB9_38 Depth=2
                                        #       Parent Loop BB9_39 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa2, $t3, $t8
	fld.d	$fa3, $s5, 0
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $s3, 0
	addi.d	$t8, $t8, 8
	addi.d	$s5, $s5, 1280
	bne	$t8, $a2, .LBB9_40
# %bb.41:                               # %._crit_edge.us.us.us.us.us.us.i51
                                        #   in Loop: Header=BB9_39 Depth=3
	addi.d	$t5, $t5, 1
	addi.d	$t7, $t7, 8
	bne	$t5, $a3, .LBB9_39
# %bb.42:                               # %vector.memcheck123
                                        #   in Loop: Header=BB9_38 Depth=2
	bltu	$a4, $t6, .LBB9_36
# %bb.43:                               # %..preheader_crit_edge.split.us.us.us.us.us.us.i54.preheader
                                        #   in Loop: Header=BB9_38 Depth=2
	move	$t4, $zero
	.p2align	4, , 16
.LBB9_44:                               # %..preheader_crit_edge.split.us.us.us.us.us.us.i54
                                        #   Parent Loop BB9_35 Depth=1
                                        #     Parent Loop BB9_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s1, $t4
	fstx.d	$fa1, $t3, $t4
	addi.d	$t4, $t4, 8
	bne	$t4, $a2, .LBB9_44
	b	.LBB9_37
.LBB9_45:                               # %.preheader35.i.preheader
	move	$a0, $zero
	move	$a2, $zero
	lu12i.w	$a1, -487882
	ori	$a1, $a1, 2289
	lu32i.d	$a1, 325813
	lu52i.d	$a1, $a1, 1006
	movgr2fr.d	$fa0, $a1
	ori	$a5, $zero, 1280
	ori	$a6, $zero, 140
	ori	$a7, $zero, 150
.LBB9_46:                               # %.preheader35.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_47 Depth 2
                                        #       Child Loop BB9_48 Depth 3
	move	$a3, $zero
	move	$t0, $a0
	.p2align	4, , 16
.LBB9_47:                               # %.preheader.i64
                                        #   Parent Loop BB9_46 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_48 Depth 3
	move	$t1, $zero
	move	$a4, $zero
	add.d	$t2, $s0, $t0
	add.d	$t3, $fp, $t0
	.p2align	4, , 16
.LBB9_48:                               #   Parent Loop BB9_46 Depth=1
                                        #     Parent Loop BB9_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $t3, $t1
	fldx.d	$fa2, $t2, $t1
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB9_59
# %bb.49:                               # %.critedge.i
                                        #   in Loop: Header=BB9_48 Depth=3
	addi.d	$t1, $t1, 8
	addi.w	$a4, $a4, 1
	bne	$t1, $a5, .LBB9_48
# %bb.50:                               #   in Loop: Header=BB9_47 Depth=2
	addi.d	$a3, $a3, 1
	addi.d	$t0, $t0, 1280
	bne	$a3, $a6, .LBB9_47
# %bb.51:                               #   in Loop: Header=BB9_46 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a0, $a0, $s4
	bne	$a2, $a7, .LBB9_46
# %bb.52:                               # %check_FP.exit
	ori	$a0, $zero, 2561
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2560
	stx.b	$zero, $a0, $a1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$s5, $a0, 7
	ori	$s6, $zero, 3
	ori	$s7, $zero, 1280
	ori	$s8, $zero, 140
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$s3, $zero
	move	$a0, $zero
.LBB9_53:                               # %.preheader21.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_54 Depth 2
                                        #       Child Loop BB9_55 Depth 3
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$a0, $zero
	move	$a1, $s3
	.p2align	4, , 16
.LBB9_54:                               # %.preheader.i68
                                        #   Parent Loop BB9_53 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_55 Depth 3
	move	$a2, $zero
	add.d	$a3, $s0, $a1
	move	$a4, $s5
	.p2align	4, , 16
.LBB9_55:                               #   Parent Loop BB9_53 Depth=1
                                        #     Parent Loop BB9_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a5, $a3, $a2
	srli.d	$a6, $a5, 8
	srli.d	$a7, $a5, 16
	srli.d	$t0, $a5, 24
	srli.d	$t1, $a5, 32
	srli.d	$t2, $a5, 40
	srli.d	$t3, $a5, 48
	srli.d	$t4, $a5, 56
	bstrins.d	$a5, $s6, 63, 4
	st.b	$a5, $a4, -7
	st.b	$a5, $a4, -6
	bstrins.d	$a6, $s6, 63, 4
	st.b	$a6, $a4, -5
	st.b	$a6, $a4, -4
	bstrins.d	$a7, $s6, 63, 4
	st.b	$a7, $a4, -3
	st.b	$a7, $a4, -2
	bstrins.d	$t0, $s6, 63, 4
	st.b	$t0, $a4, -1
	st.b	$t0, $a4, 0
	bstrins.d	$t1, $s6, 63, 4
	st.b	$t1, $a4, 1
	st.b	$t1, $a4, 2
	bstrins.d	$t2, $s6, 63, 4
	st.b	$t2, $a4, 3
	st.b	$t2, $a4, 4
	bstrins.d	$t3, $s6, 63, 4
	st.b	$t3, $a4, 5
	st.b	$t3, $a4, 6
	bstrins.d	$t4, $s6, 63, 4
	st.b	$t4, $a4, 7
	st.b	$t4, $a4, 8
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, 16
	bne	$a2, $s7, .LBB9_55
# %bb.56:                               #   in Loop: Header=BB9_54 Depth=2
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1280
	bne	$a0, $s8, .LBB9_54
# %bb.57:                               #   in Loop: Header=BB9_53 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	add.d	$s3, $s3, $s4
	ori	$a1, $zero, 150
	bne	$a0, $a1, .LBB9_53
# %bb.58:                               # %print_array.exit
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
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
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB9_60
.LBB9_59:                               # %check_FP.exit.thread
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 16
	fst.d	$fa2, $sp, 8
	st.d	$a4, $sp, 0
	movfr2gr.d	$a5, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a6, $a2
	move	$a7, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB9_60:
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
.LBB9_61:
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
.Lfunc_end9:
	.size	main, .Lfunc_end9-main
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
	.asciz	"A[%d][%d][%d] = %lf and B[%d][%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\n"
	.size	.L.str.2, 84

	.section	".note.GNU-stack","",@progbits
	.addrsig
