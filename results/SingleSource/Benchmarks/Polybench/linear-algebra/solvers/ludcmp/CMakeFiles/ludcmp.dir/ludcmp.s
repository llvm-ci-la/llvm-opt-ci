	.file	"ludcmp.c"
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
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	st.d	$zero, $sp, 8
	lu12i.w	$a0, 7812
	ori	$s5, $a0, 2048
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 8
	move	$a2, $s5
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 8
	beqz	$fp, .LBB7_60
# %bb.1:
	bnez	$a0, .LBB7_60
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 8
	lu12i.w	$a0, 3
	ori	$s1, $a0, 3712
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 8
	beqz	$s0, .LBB7_60
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_60
# %bb.4:                                # %polybench_alloc_data.exit31
	st.d	$zero, $sp, 8
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 8
	beqz	$s2, .LBB7_60
# %bb.5:                                # %polybench_alloc_data.exit31
	bnez	$a0, .LBB7_60
# %bb.6:                                # %polybench_alloc_data.exit33
	st.d	$zero, $sp, 8
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 8
	beqz	$s3, .LBB7_60
# %bb.7:                                # %polybench_alloc_data.exit33
	bnez	$a0, .LBB7_60
# %bb.8:                                # %polybench_alloc_data.exit35
	st.d	$zero, $sp, 8
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 8
	beqz	$s4, .LBB7_60
# %bb.9:                                # %polybench_alloc_data.exit35
	bnez	$a0, .LBB7_60
# %bb.10:                               # %polybench_alloc_data.exit37
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s4
	pcaddu18i	$ra, %call36(init_array)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $zero
	ori	$a2, $zero, 2000
	move	$a3, $fp
	move	$a4, $fp
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_11:                               # %._crit_edge112.i
                                        #   in Loop: Header=BB7_12 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a4, $a4, $s1
	addi.d	$a0, $a0, 8
	addi.d	$a3, $a3, 8
	beq	$a1, $a2, .LBB7_22
.LBB7_12:                               # %.preheader97.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_15 Depth 2
                                        #       Child Loop BB7_17 Depth 3
                                        #     Child Loop BB7_19 Depth 2
                                        #       Child Loop BB7_20 Depth 3
	beqz	$a1, .LBB7_11
# %bb.13:                               # %.lr.ph101.i
                                        #   in Loop: Header=BB7_12 Depth=1
	move	$a6, $zero
	mul.d	$a5, $a1, $s1
	add.d	$a5, $fp, $a5
	move	$a7, $fp
	b	.LBB7_15
	.p2align	4, , 16
.LBB7_14:                               # %._crit_edge.i
                                        #   in Loop: Header=BB7_15 Depth=2
	mul.d	$t1, $a6, $s1
	add.d	$t1, $fp, $t1
	fldx.d	$fa1, $t1, $t0
	alsl.d	$t0, $a6, $a5, 3
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $t0, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 8
	beq	$a6, $a1, .LBB7_18
.LBB7_15:                               #   Parent Loop BB7_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_17 Depth 3
	slli.d	$t0, $a6, 3
	fldx.d	$fa0, $a5, $t0
	beqz	$a6, .LBB7_14
# %bb.16:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB7_15 Depth=2
	move	$t1, $a4
	move	$t2, $a7
	move	$t3, $a6
	.p2align	4, , 16
.LBB7_17:                               # %.lr.ph.i
                                        #   Parent Loop BB7_12 Depth=1
                                        #     Parent Loop BB7_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $t1, 0
	fld.d	$fa2, $t2, 0
	fneg.d	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$t3, $t3, -1
	add.d	$t2, $t2, $s1
	addi.d	$t1, $t1, 8
	bnez	$t3, .LBB7_17
	b	.LBB7_14
	.p2align	4, , 16
.LBB7_18:                               #   in Loop: Header=BB7_12 Depth=1
	move	$a6, $a3
	move	$a7, $a1
	.p2align	4, , 16
.LBB7_19:                               # %.lr.ph107.us.i
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_20 Depth 3
	slli.d	$t0, $a7, 3
	fldx.d	$fa0, $a5, $t0
	move	$t1, $zero
	alsl.d	$t0, $a7, $a5, 3
	move	$t2, $a6
	.p2align	4, , 16
.LBB7_20:                               #   Parent Loop BB7_12 Depth=1
                                        #     Parent Loop BB7_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $a4, $t1
	fld.d	$fa2, $t2, 0
	fneg.d	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$t1, $t1, 8
	add.d	$t2, $t2, $s1
	bne	$a0, $t1, .LBB7_20
# %bb.21:                               # %._crit_edge108.us.i
                                        #   in Loop: Header=BB7_19 Depth=2
	fst.d	$fa0, $t0, 0
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 8
	bne	$a7, $a2, .LBB7_19
	b	.LBB7_11
.LBB7_22:                               # %.preheader95.i.preheader
	move	$a0, $zero
	ori	$a1, $zero, 2000
	move	$a2, $fp
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_23:                               # %._crit_edge119.i
                                        #   in Loop: Header=BB7_24 Depth=1
	fstx.d	$fa0, $s4, $a3
	addi.d	$a0, $a0, 1
	add.d	$a2, $a2, $s1
	beq	$a0, $a1, .LBB7_27
.LBB7_24:                               # %.preheader95.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_26 Depth 2
	slli.d	$a3, $a0, 3
	fldx.d	$fa0, $s0, $a3
	beqz	$a0, .LBB7_23
# %bb.25:                               # %.lr.ph118.i
                                        #   in Loop: Header=BB7_24 Depth=1
	move	$a4, $a2
	move	$a5, $s4
	move	$a6, $a0
	.p2align	4, , 16
.LBB7_26:                               #   Parent Loop BB7_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a4, 0
	fld.d	$fa2, $a5, 0
	fneg.d	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	bnez	$a6, .LBB7_26
	b	.LBB7_23
.LBB7_27:                               # %.preheader.i.preheader
	move	$a0, $zero
	add.d	$a1, $s2, $s1
	add.d	$a2, $fp, $s5
	ori	$a5, $zero, 1999
	ori	$a3, $zero, 1998
	lu12i.w	$s6, -4
	ori	$s7, $s6, 376
	b	.LBB7_29
	.p2align	4, , 16
.LBB7_28:                               # %._crit_edge126.i
                                        #   in Loop: Header=BB7_29 Depth=1
	mul.d	$a6, $a4, $s1
	add.d	$a6, $fp, $a6
	fldx.d	$fa1, $a6, $a5
	fdiv.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s2, $a5
	addi.d	$a5, $a4, -1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, -8
	add.d	$a2, $a2, $s7
	beqz	$a4, .LBB7_32
.LBB7_29:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_31 Depth 2
	move	$a4, $a5
	slli.d	$a5, $a5, 3
	fldx.d	$fa0, $s4, $a5
	bltu	$a3, $a4, .LBB7_28
# %bb.30:                               # %.lr.ph125.i
                                        #   in Loop: Header=BB7_29 Depth=1
	move	$a6, $a2
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB7_31:                               #   Parent Loop BB7_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a6, 0
	fld.d	$fa2, $a7, 0
	fneg.d	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	bnez	$t0, .LBB7_31
	b	.LBB7_28
.LBB7_32:                               # %kernel_ludcmp.exit
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s3
	move	$a3, $s4
	pcaddu18i	$ra, %call36(init_array)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $zero
	ori	$a2, $zero, 2000
	move	$a3, $fp
	move	$a4, $fp
	b	.LBB7_34
	.p2align	4, , 16
.LBB7_33:                               # %._crit_edge112.i67
                                        #   in Loop: Header=BB7_34 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a4, $a4, $s1
	addi.d	$a0, $a0, 8
	addi.d	$a3, $a3, 8
	beq	$a1, $a2, .LBB7_44
.LBB7_34:                               # %.preheader97.i38
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_37 Depth 2
                                        #       Child Loop BB7_39 Depth 3
                                        #     Child Loop BB7_41 Depth 2
                                        #       Child Loop BB7_42 Depth 3
	beqz	$a1, .LBB7_33
# %bb.35:                               # %.lr.ph101.i41
                                        #   in Loop: Header=BB7_34 Depth=1
	move	$a6, $zero
	mul.d	$a5, $a1, $s1
	add.d	$a5, $fp, $a5
	move	$a7, $fp
	b	.LBB7_37
	.p2align	4, , 16
.LBB7_36:                               # %._crit_edge.i51
                                        #   in Loop: Header=BB7_37 Depth=2
	mul.d	$t1, $a6, $s1
	add.d	$t1, $fp, $t1
	fldx.d	$fa1, $t1, $t0
	alsl.d	$t0, $a6, $a5, 3
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $t0, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 8
	beq	$a6, $a1, .LBB7_40
.LBB7_37:                               #   Parent Loop BB7_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_39 Depth 3
	slli.d	$t0, $a6, 3
	fldx.d	$fa0, $a5, $t0
	beqz	$a6, .LBB7_36
# %bb.38:                               # %.lr.ph.i45.preheader
                                        #   in Loop: Header=BB7_37 Depth=2
	move	$t1, $a4
	move	$t2, $a7
	move	$t3, $a6
	.p2align	4, , 16
.LBB7_39:                               # %.lr.ph.i45
                                        #   Parent Loop BB7_34 Depth=1
                                        #     Parent Loop BB7_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $t1, 0
	fld.d	$fa2, $t2, 0
	fmul.d	$fa1, $fa1, $fa2
	fsub.d	$fa0, $fa0, $fa1
	addi.d	$t3, $t3, -1
	add.d	$t2, $t2, $s1
	addi.d	$t1, $t1, 8
	bnez	$t3, .LBB7_39
	b	.LBB7_36
	.p2align	4, , 16
.LBB7_40:                               #   in Loop: Header=BB7_34 Depth=1
	move	$a6, $a3
	move	$a7, $a1
	.p2align	4, , 16
.LBB7_41:                               # %.lr.ph107.us.i56
                                        #   Parent Loop BB7_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_42 Depth 3
	slli.d	$t0, $a7, 3
	fldx.d	$fa0, $a5, $t0
	move	$t1, $zero
	alsl.d	$t0, $a7, $a5, 3
	move	$t2, $a6
	.p2align	4, , 16
.LBB7_42:                               #   Parent Loop BB7_34 Depth=1
                                        #     Parent Loop BB7_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $a4, $t1
	fld.d	$fa2, $t2, 0
	fmul.d	$fa1, $fa1, $fa2
	fsub.d	$fa0, $fa0, $fa1
	addi.d	$t1, $t1, 8
	add.d	$t2, $t2, $s1
	bne	$a0, $t1, .LBB7_42
# %bb.43:                               # %._crit_edge108.us.i64
                                        #   in Loop: Header=BB7_41 Depth=2
	fst.d	$fa0, $t0, 0
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 8
	bne	$a7, $a2, .LBB7_41
	b	.LBB7_33
.LBB7_44:                               # %.preheader95.i70.preheader
	move	$a0, $zero
	ori	$a1, $zero, 2000
	move	$a2, $fp
	b	.LBB7_46
	.p2align	4, , 16
.LBB7_45:                               # %._crit_edge119.i78
                                        #   in Loop: Header=BB7_46 Depth=1
	fstx.d	$fa0, $s4, $a3
	addi.d	$a0, $a0, 1
	add.d	$a2, $a2, $s1
	beq	$a0, $a1, .LBB7_49
.LBB7_46:                               # %.preheader95.i70
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_48 Depth 2
	slli.d	$a3, $a0, 3
	fldx.d	$fa0, $s0, $a3
	beqz	$a0, .LBB7_45
# %bb.47:                               # %.lr.ph118.i73
                                        #   in Loop: Header=BB7_46 Depth=1
	move	$a4, $a2
	move	$a5, $s4
	move	$a6, $a0
	.p2align	4, , 16
.LBB7_48:                               #   Parent Loop BB7_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a4, 0
	fld.d	$fa2, $a5, 0
	fmul.d	$fa1, $fa1, $fa2
	fsub.d	$fa0, $fa0, $fa1
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	bnez	$a6, .LBB7_48
	b	.LBB7_45
.LBB7_49:                               # %.preheader.i82.preheader
	move	$a0, $zero
	add.d	$a1, $s3, $s1
	add.d	$a2, $fp, $s5
	ori	$a5, $zero, 1999
	ori	$a3, $zero, 1998
	b	.LBB7_51
	.p2align	4, , 16
.LBB7_50:                               # %._crit_edge126.i84
                                        #   in Loop: Header=BB7_51 Depth=1
	mul.d	$a6, $a4, $s1
	add.d	$a6, $fp, $a6
	fldx.d	$fa1, $a6, $a5
	fdiv.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s3, $a5
	addi.d	$a5, $a4, -1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, -8
	add.d	$a2, $a2, $s7
	beqz	$a4, .LBB7_54
.LBB7_51:                               # %.preheader.i82
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_53 Depth 2
	move	$a4, $a5
	slli.d	$a5, $a5, 3
	fldx.d	$fa0, $s4, $a5
	bltu	$a3, $a4, .LBB7_50
# %bb.52:                               # %.lr.ph125.i88
                                        #   in Loop: Header=BB7_51 Depth=1
	move	$a6, $a2
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB7_53:                               #   Parent Loop BB7_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a6, 0
	fld.d	$fa2, $a7, 0
	fmul.d	$fa1, $fa1, $fa2
	fsub.d	$fa0, $fa0, $fa1
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	bnez	$t0, .LBB7_53
	b	.LBB7_50
.LBB7_54:                               # %kernel_ludcmp_StrictFP.exit.preheader
	move	$a2, $zero
	ori	$a0, $s6, 384
	lu12i.w	$a1, -487882
	ori	$a1, $a1, 2289
	lu32i.d	$a1, 325813
	lu52i.d	$a6, $a1, 1006
	movgr2fr.d	$fa0, $a6
	.p2align	4, , 16
.LBB7_55:                               # %kernel_ludcmp_StrictFP.exit
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $s2, $a0
	fldx.d	$fa1, $a1, $s1
	add.d	$a1, $s3, $a0
	fldx.d	$fa2, $a1, $s1
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_58
# %bb.56:                               # %.critedge.i
                                        #   in Loop: Header=BB7_55 Depth=1
	addi.d	$a0, $a0, 8
	addi.w	$a2, $a2, 1
	bnez	$a0, .LBB7_55
# %bb.57:                               # %check_FP.exit
	move	$a0, $s3
	pcaddu18i	$ra, %call36(print_array)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB7_59
.LBB7_58:                               # %check_FP.exit.thread
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	movfr2gr.d	$a3, $fa1
	movfr2gr.d	$a5, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a4, $a2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB7_59:
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
.LBB7_60:
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function init_array
.LCPI8_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.p2align	5
	.type	init_array,@function
init_array:                             # @init_array
# %bb.0:                                # %vector.memcheck
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
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	move	$fp, $a0
	sub.d	$a4, $a3, $a2
	ori	$a0, $zero, 32
	lu12i.w	$a7, 3
	lu12i.w	$a5, -4
	bltu	$a4, $a0, .LBB8_5
# %bb.1:                                # %vector.memcheck
	sub.d	$a4, $a1, $a2
	bltu	$a4, $a0, .LBB8_5
# %bb.2:                                # %vector.memcheck
	sub.d	$a0, $a1, $a3
	ori	$a4, $zero, 32
	bltu	$a0, $a4, .LBB8_5
# %bb.3:                                # %vector.body.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI8_0)
	ori	$a0, $a5, 384
	vrepli.b	$vr1, 0
	ori	$a4, $a7, 3712
	ori	$a5, $a7, 3728
	ori	$a6, $zero, 0
	lu32i.d	$a6, -49152
	lu52i.d	$a6, $a6, 1033
	vreplgr2vr.d	$vr2, $a6
	lu52i.d	$a6, $zero, 1022
	vreplgr2vr.d	$vr3, $a6
	lu52i.d	$a6, $zero, 1025
	vreplgr2vr.d	$vr4, $a6
	.p2align	4, , 16
.LBB8_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $a2, $a0
	vstx	$vr1, $a6, $a4
	vstx	$vr1, $a6, $a5
	add.d	$a6, $a3, $a0
	vstx	$vr1, $a6, $a4
	vstx	$vr1, $a6, $a5
	vshuf4i.w	$vr5, $vr0, 8
	vaddi.wu	$vr6, $vr5, 1
	vaddi.wu	$vr5, $vr5, 3
	vpickve2gr.w	$a6, $vr6, 1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa7, $a6
	ffint.d.l	$fa7, $fa7
	vpickve2gr.w	$a6, $vr6, 0
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa6, $a6
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr7, 16
	vpickve2gr.w	$a6, $vr5, 1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa7, $a6
	ffint.d.l	$fa7, $fa7
	vpickve2gr.w	$a6, $vr5, 0
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa5, $a6
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr7, 16
	vfdiv.d	$vr6, $vr6, $vr2
	vfdiv.d	$vr5, $vr5, $vr2
	vfmul.d	$vr6, $vr6, $vr3
	vfmul.d	$vr5, $vr5, $vr3
	vfadd.d	$vr6, $vr6, $vr4
	vfadd.d	$vr5, $vr5, $vr4
	add.d	$a6, $a1, $a0
	vstx	$vr6, $a6, $a4
	vstx	$vr5, $a6, $a5
	addi.d	$a0, $a0, 32
	vaddi.du	$vr0, $vr0, 4
	bnez	$a0, .LBB8_4
	b	.LBB8_7
.LBB8_5:                                # %scalar.ph.preheader
	ori	$a0, $zero, 1
	ori	$a4, $a5, 384
	ori	$a5, $zero, 0
	lu32i.d	$a5, -49152
	lu52i.d	$a5, $a5, 1033
	movgr2fr.d	$fa0, $a5
	vldi	$vr1, -928
	vldi	$vr2, -1008
	ori	$a5, $a7, 3712
	.p2align	4, , 16
.LBB8_6:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $a2, $a4
	stptr.d	$zero, $a6, 16000
	add.d	$a6, $a3, $a4
	stptr.d	$zero, $a6, 16000
	bstrpick.d	$a6, $a0, 31, 0
	movgr2fr.d	$fa3, $a6
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	fmul.d	$fa3, $fa3, $fa1
	fadd.d	$fa3, $fa3, $fa2
	add.d	$a6, $a1, $a4
	fstx.d	$fa3, $a6, $a5
	addi.d	$a4, $a4, 8
	addi.w	$a0, $a0, 1
	bnez	$a4, .LBB8_6
.LBB8_7:                                # %.preheader87.preheader
	move	$s0, $zero
	addi.d	$s1, $fp, 16
	ori	$s6, $zero, 1
	ori	$a0, $a7, 3720
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$s5, $a7, 3696
	ori	$s4, $a7, 3712
	ori	$a4, $zero, 4
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1033
	movgr2fr.d	$fs0, $a1
	vldi	$vr4, -912
	ori	$a5, $zero, 1998
	lu52i.d	$s2, $zero, 1023
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	ori	$s8, $zero, 2000
	vrepli.w	$vr5, -2
	vreplgr2vr.d	$vr6, $a1
	vreplgr2vr.d	$vr7, $s2
	move	$s7, $fp
	vst	$vr5, $sp, 48                   # 16-byte Folded Spill
	vst	$vr6, $sp, 32                   # 16-byte Folded Spill
	vst	$vr7, $sp, 16                   # 16-byte Folded Spill
	b	.LBB8_9
	.p2align	4, , 16
.LBB8_8:                                # %._crit_edge
                                        #   in Loop: Header=BB8_9 Depth=1
	mul.d	$a0, $s0, $s4
	add.d	$a0, $fp, $a0
	addi.d	$s0, $s0, 1
	stx.d	$s2, $a0, $s3
	addi.d	$s6, $s6, 1
	add.d	$s1, $s1, $s4
	add.d	$s7, $s7, $s4
	beq	$s0, $s8, .LBB8_18
.LBB8_9:                                # %.preheader87
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_12 Depth 2
                                        #     Child Loop BB8_15 Depth 2
	bgeu	$s6, $a4, .LBB8_11
# %bb.10:                               #   in Loop: Header=BB8_9 Depth=1
	move	$a0, $zero
	b	.LBB8_14
	.p2align	4, , 16
.LBB8_11:                               # %vector.ph5
                                        #   in Loop: Header=BB8_9 Depth=1
	move	$a1, $s6
	bstrins.d	$a1, $zero, 1, 0
	bstrpick.d	$a0, $s6, 62, 2
	slli.d	$a0, $a0, 2
	move	$a2, $s1
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB8_12:                               # %vector.body6
                                        #   Parent Loop BB8_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vneg.w	$vr1, $vr0
	vsub.w	$vr2, $vr5, $vr0
	vpickve2gr.w	$a3, $vr1, 1
	movgr2fr.w	$fa3, $a3
	ffint.d.w	$fa3, $fa3
	vpickve2gr.w	$a3, $vr1, 0
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	vextrins.d	$vr1, $vr3, 16
	vpickve2gr.w	$a3, $vr2, 1
	movgr2fr.w	$fa3, $a3
	ffint.d.w	$fa3, $fa3
	vpickve2gr.w	$a3, $vr2, 0
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	vextrins.d	$vr2, $vr3, 16
	vfdiv.d	$vr1, $vr1, $vr6
	vfdiv.d	$vr2, $vr2, $vr6
	vfadd.d	$vr1, $vr1, $vr7
	vfadd.d	$vr2, $vr2, $vr7
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, 32
	bnez	$a1, .LBB8_12
# %bb.13:                               # %middle.block12
                                        #   in Loop: Header=BB8_9 Depth=1
	beq	$s6, $a0, .LBB8_16
.LBB8_14:                               # %scalar.ph4.preheader
                                        #   in Loop: Header=BB8_9 Depth=1
	sub.w	$a1, $zero, $a0
	alsl.d	$a2, $a0, $s7, 3
	.p2align	4, , 16
.LBB8_15:                               # %scalar.ph4
                                        #   Parent Loop BB8_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fadd.d	$fa0, $fa0, $fa4
	fst.d	$fa0, $a2, 0
	addi.d	$a0, $a0, 1
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bne	$s6, $a0, .LBB8_15
.LBB8_16:                               # %.loopexit41
                                        #   in Loop: Header=BB8_9 Depth=1
	slli.d	$s3, $s0, 3
	bltu	$a5, $s0, .LBB8_8
# %bb.17:                               # %.lr.ph
                                        #   in Loop: Header=BB8_9 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	mul.d	$a0, $s0, $a0
	add.d	$a0, $fp, $a0
	addi.d	$a0, $a0, 8
	sub.d	$a1, $s5, $s3
	bstrpick.d	$a1, $a1, 34, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vld	$vr7, $sp, 16                   # 16-byte Folded Reload
	vld	$vr6, $sp, 32                   # 16-byte Folded Reload
	vld	$vr5, $sp, 48                   # 16-byte Folded Reload
	ori	$a5, $zero, 1998
	vldi	$vr4, -912
	ori	$a4, $zero, 4
	b	.LBB8_8
.LBB8_18:
	st.d	$zero, $sp, 88
	lu12i.w	$a0, 7812
	ori	$s1, $a0, 2048
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 88
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 88
	beqz	$s0, .LBB8_35
# %bb.19:
	bnez	$a0, .LBB8_35
# %bb.20:                               # %polybench_alloc_data.exit
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	add.d	$a1, $s0, $s1
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	add.d	$a2, $fp, $a2
	addi.d	$a3, $s0, 16
	lu12i.w	$a4, 7808
	ori	$a4, $a4, 2440
	lu12i.w	$s3, -4
	ori	$a5, $s3, 384
	ori	$a6, $zero, 2000
	lu12i.w	$a7, -8
	ori	$a7, $a7, 768
	move	$t0, $fp
	lu12i.w	$s2, 3
	b	.LBB8_22
	.p2align	4, , 16
.LBB8_21:                               #   in Loop: Header=BB8_22 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	addi.d	$t0, $t0, 8
	beq	$a0, $a6, .LBB8_29
.LBB8_22:                               # %.preheader84
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_24 Depth 2
                                        #       Child Loop BB8_28 Depth 3
                                        #       Child Loop BB8_26 Depth 3
	move	$t1, $zero
	alsl.d	$t2, $a0, $fp, 3
	add.d	$t3, $t2, $a4
	sltu	$t3, $s0, $t3
	sltu	$t4, $t2, $a1
	and	$t3, $t3, $t4
	move	$t4, $s0
	move	$t5, $a3
	b	.LBB8_24
	.p2align	4, , 16
.LBB8_23:                               # %middle.block27
                                        #   in Loop: Header=BB8_24 Depth=2
	addi.d	$t1, $t1, 1
	add.d	$t5, $t5, $s4
	add.d	$t4, $t4, $s4
	beq	$t1, $a6, .LBB8_21
.LBB8_24:                               # %.preheader83
                                        #   Parent Loop BB8_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_28 Depth 3
                                        #       Child Loop BB8_26 Depth 3
	mul.d	$t6, $t1, $s4
	add.d	$t6, $t2, $t6
	beqz	$t3, .LBB8_27
# %bb.25:                               # %scalar.ph21.preheader
                                        #   in Loop: Header=BB8_24 Depth=2
	move	$t7, $t0
	move	$t8, $a5
	.p2align	4, , 16
.LBB8_26:                               # %scalar.ph21
                                        #   Parent Loop BB8_22 Depth=1
                                        #     Parent Loop BB8_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $t6, 0
	fld.d	$fa1, $t7, 0
	add.d	$s1, $t4, $t8
	fldx.d	$fa2, $s1, $s4
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $s1, $s4
	addi.d	$t8, $t8, 8
	add.d	$t7, $t7, $s4
	bnez	$t8, .LBB8_26
	b	.LBB8_23
	.p2align	4, , 16
.LBB8_27:                               # %vector.body23.preheader
                                        #   in Loop: Header=BB8_24 Depth=2
	vldrepl.d	$vr0, $t6, 0
	move	$t6, $a2
	move	$t7, $a5
	.p2align	4, , 16
.LBB8_28:                               # %vector.body23
                                        #   Parent Loop BB8_22 Depth=1
                                        #     Parent Loop BB8_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $t6, $a7
	fldx.d	$fa2, $t6, $a5
	fld.d	$fa3, $t6, 0
	fldx.d	$fa4, $t6, $s4
	vextrins.d	$vr1, $vr2, 16
	vextrins.d	$vr3, $vr4, 16
	add.d	$t8, $t5, $t7
	vldx	$vr2, $t8, $s5
	vldx	$vr4, $t8, $s4
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr3, $vr0, $vr3
	vfadd.d	$vr1, $vr2, $vr1
	vfadd.d	$vr2, $vr4, $vr3
	vstx	$vr1, $t8, $s5
	vstx	$vr2, $t8, $s4
	addi.d	$t7, $t7, 32
	addu16i.d	$t6, $t6, 1
	addi.d	$t6, $t6, -1536
	bnez	$t7, .LBB8_28
	b	.LBB8_23
.LBB8_29:                               # %.preheader.preheader
	move	$a0, $zero
	sub.d	$a1, $fp, $s0
	ori	$a2, $zero, 32
	ori	$a3, $s3, 384
	ori	$a4, $zero, 2000
	ori	$a5, $s2, 3728
	move	$a6, $s0
	b	.LBB8_31
	.p2align	4, , 16
.LBB8_30:                               # %middle.block38
                                        #   in Loop: Header=BB8_31 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$fp, $fp, $s4
	add.d	$a6, $a6, $s4
	beq	$a0, $a4, .LBB8_34
.LBB8_31:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_33 Depth 2
                                        #     Child Loop BB8_32 Depth 2
	move	$a7, $a3
	bgeu	$a1, $a2, .LBB8_33
	.p2align	4, , 16
.LBB8_32:                               # %scalar.ph31
                                        #   Parent Loop BB8_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	fldx.d	$fa0, $t0, $s4
	add.d	$t0, $fp, $a7
	addi.d	$a7, $a7, 8
	fstx.d	$fa0, $t0, $s4
	bnez	$a7, .LBB8_32
	b	.LBB8_30
	.p2align	4, , 16
.LBB8_33:                               # %vector.body33
                                        #   Parent Loop BB8_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	vldx	$vr0, $t0, $s4
	vldx	$vr1, $t0, $a5
	add.d	$t0, $fp, $a7
	vstx	$vr0, $t0, $s4
	addi.d	$a7, $a7, 32
	vstx	$vr1, $t0, $a5
	bnez	$a7, .LBB8_33
	b	.LBB8_30
.LBB8_34:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
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
.LBB8_35:
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
.Lfunc_end8:
	.size	init_array, .Lfunc_end8-init_array
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function print_array
	.type	print_array,@function
print_array:                            # @print_array
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
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s1, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a2, $a2, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -209716
	ori	$a1, $a0, 3277
	lu32i.d	$a1, -209716
	lu52i.d	$s2, $a1, -820
	ori	$a0, $a0, 3276
	lu32i.d	$a0, -209716
	lu52i.d	$s3, $a0, 204
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s0, $a0, %pc_lo12(.L.str.7)
	move	$s4, $zero
	ori	$s5, $zero, 2000
	b	.LBB9_2
	.p2align	4, , 16
.LBB9_1:                                #   in Loop: Header=BB9_2 Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a2, $fp, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 1
	addi.d	$fp, $fp, 8
	beq	$s4, $s5, .LBB9_4
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s4, 15, 0
	mul.d	$a0, $a0, $s2
	rotri.d	$a0, $a0, 2
	bltu	$s3, $a0, .LBB9_1
# %bb.3:                                #   in Loop: Header=BB9_2 Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB9_1
.LBB9_4:
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a2, $a2, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end9:
	.size	print_array, .Lfunc_end9-print_array
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
	.asciz	"A[%d] = %lf and B[%d] = %lf differ more than FP_ABSTOLERANCE = %lf\n"
	.size	.L.str.2, 68

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"==BEGIN DUMP_ARRAYS==\n"
	.size	.L.str.3, 23

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"begin dump: %s"
	.size	.L.str.4, 15

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"x"
	.size	.L.str.5, 2

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%0.2lf "
	.size	.L.str.7, 8

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\nend   dump: %s\n"
	.size	.L.str.8, 17

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"==END   DUMP_ARRAYS==\n"
	.size	.L.str.9, 23

	.section	".note.GNU-stack","",@progbits
	.addrsig
