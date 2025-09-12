	.file	"trmm.c"
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
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI7_1:
	.dword	0x408f400000000000              # double 1000
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	st.d	$zero, $sp, 16
	lu12i.w	$a0, 1953
	ori	$a2, $a0, 512
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16
	beqz	$fp, .LBB7_30
# %bb.1:
	bnez	$a0, .LBB7_30
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 16
	lu12i.w	$a0, 2343
	ori	$a2, $a0, 3072
	lu12i.w	$s1, 1
	addi.d	$a0, $sp, 16
	move	$a1, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 16
	beqz	$s0, .LBB7_30
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_30
# %bb.4:                                # %polybench_alloc_data.exit13
	move	$a2, $zero
	move	$a3, $zero
	addi.d	$a4, $fp, 16
	ori	$a0, $s1, 3904
	lu52i.d	$a5, $zero, 1023
	pcalau12i	$a6, %pc_hi20(.LCPI7_0)
	vld	$vr0, $a6, %pc_lo12(.LCPI7_0)
	lu12i.w	$s3, -3
	ori	$a7, $s3, 2688
	ori	$t0, $zero, 1200
	ori	$a1, $zero, 0
	lu32i.d	$a1, 180224
	lu52i.d	$a1, $a1, 1033
	vreplgr2vr.d	$vr1, $a1
	lu12i.w	$a1, 2
	ori	$s2, $a1, 1408
	ori	$a1, $a1, 1424
	ori	$t1, $zero, 1000
	pcalau12i	$t2, %pc_hi20(.LCPI7_1)
	fld.d	$fa2, $t2, %pc_lo12(.LCPI7_1)
	ori	$t2, $zero, 4
	lu12i.w	$t3, 67108
	ori	$t3, $t3, 3539
	move	$t4, $s0
	move	$t5, $fp
	.p2align	4, , 16
.LBB7_5:                                # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
                                        #     Child Loop BB7_12 Depth 2
                                        #     Child Loop BB7_14 Depth 2
	beqz	$a3, .LBB7_13
# %bb.6:                                # %.lr.ph.i
                                        #   in Loop: Header=BB7_5 Depth=1
	bgeu	$a3, $t2, .LBB7_8
# %bb.7:                                #   in Loop: Header=BB7_5 Depth=1
	move	$t6, $zero
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_8:                                # %vector.ph28
                                        #   in Loop: Header=BB7_5 Depth=1
	move	$t7, $a3
	bstrins.d	$t7, $zero, 1, 0
	bstrpick.d	$t6, $a3, 62, 2
	vld	$vr3, $a6, %pc_lo12(.LCPI7_0)
	slli.d	$t6, $t6, 2
	vreplgr2vr.d	$vr4, $a3
	vaddi.du	$vr5, $vr4, 2
	move	$t8, $a4
	.p2align	4, , 16
.LBB7_9:                                # %vector.body31
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vadd.d	$vr6, $vr3, $vr4
	vadd.d	$vr7, $vr3, $vr5
	vpickve2gr.w	$s4, $vr6, 0
	mod.wu	$s4, $s4, $t1
	bstrpick.d	$s4, $s4, 31, 0
	vpickve2gr.w	$s5, $vr6, 2
	mod.wu	$s5, $s5, $t1
	bstrpick.d	$s5, $s5, 31, 0
	vpickve2gr.w	$s6, $vr7, 0
	mod.wu	$s6, $s6, $t1
	bstrpick.d	$s6, $s6, 31, 0
	vpickve2gr.w	$s7, $vr7, 2
	mod.wu	$s7, $s7, $t1
	bstrpick.d	$s7, $s7, 31, 0
	movgr2fr.d	$fa6, $s5
	ffint.d.l	$fa6, $fa6
	movgr2fr.d	$fa7, $s4
	ffint.d.l	$fa7, $fa7
	vextrins.d	$vr7, $vr6, 16
	movgr2fr.d	$fa6, $s7
	ffint.d.l	$fa6, $fa6
	movgr2fr.d	$ft0, $s6
	ffint.d.l	$ft0, $ft0
	vextrins.d	$vr8, $vr6, 16
	ori	$s4, $zero, 0
	lu32i.d	$s4, -49152
	lu52i.d	$s4, $s4, 1032
	vreplgr2vr.d	$vr6, $s4
	vfdiv.d	$vr7, $vr7, $vr6
	vfdiv.d	$vr6, $vr8, $vr6
	vst	$vr7, $t8, -16
	vst	$vr6, $t8, 0
	vaddi.du	$vr3, $vr3, 4
	addi.d	$t7, $t7, -4
	addi.d	$t8, $t8, 32
	bnez	$t7, .LBB7_9
# %bb.10:                               # %middle.block37
                                        #   in Loop: Header=BB7_5 Depth=1
	beq	$a3, $t6, .LBB7_13
.LBB7_11:                               # %scalar.ph27.preheader
                                        #   in Loop: Header=BB7_5 Depth=1
	alsl.d	$t7, $t6, $t5, 3
	add.w	$t8, $a2, $t6
	.p2align	4, , 16
.LBB7_12:                               # %scalar.ph27
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$s4, $t8, 31, 0
	mul.d	$s4, $s4, $t3
	srli.d	$s4, $s4, 38
	mul.d	$s4, $s4, $t1
	sub.d	$s4, $t8, $s4
	bstrpick.d	$s4, $s4, 31, 0
	movgr2fr.d	$fa3, $s4
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa2
	fst.d	$fa3, $t7, 0
	addi.d	$t6, $t6, 1
	addi.d	$t7, $t7, 8
	addi.w	$t8, $t8, 1
	bne	$a3, $t6, .LBB7_12
.LBB7_13:                               # %._crit_edge.i
                                        #   in Loop: Header=BB7_5 Depth=1
	mul.d	$t6, $a3, $a0
	add.d	$t6, $fp, $t6
	slli.d	$t7, $a3, 3
	stx.d	$a5, $t6, $t7
	addi.d	$t6, $a3, 1200
	vreplgr2vr.d	$vr3, $t6
	move	$t6, $a7
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB7_14:                               # %vector.body
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vsub.d	$vr5, $vr3, $vr4
	vsubi.du	$vr6, $vr5, 2
	vpickve2gr.w	$t7, $vr5, 0
	mod.wu	$t7, $t7, $t0
	bstrpick.d	$t7, $t7, 31, 0
	vpickve2gr.w	$t8, $vr5, 2
	mod.wu	$t8, $t8, $t0
	bstrpick.d	$t8, $t8, 31, 0
	vpickve2gr.w	$s4, $vr6, 0
	mod.wu	$s4, $s4, $t0
	bstrpick.d	$s4, $s4, 31, 0
	vpickve2gr.w	$s5, $vr6, 2
	mod.wu	$s5, $s5, $t0
	bstrpick.d	$s5, $s5, 31, 0
	movgr2fr.d	$fa5, $t8
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa6, $t7
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	movgr2fr.d	$fa5, $s5
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa7, $s4
	ffint.d.l	$fa7, $fa7
	vextrins.d	$vr7, $vr5, 16
	vfdiv.d	$vr5, $vr6, $vr1
	vfdiv.d	$vr6, $vr7, $vr1
	add.d	$t7, $t4, $t6
	vstx	$vr5, $t7, $s2
	vstx	$vr6, $t7, $a1
	addi.d	$t6, $t6, 32
	vaddi.du	$vr4, $vr4, 4
	bnez	$t6, .LBB7_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB7_5 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a4, $a4, $a0
	add.d	$t5, $t5, $a0
	addi.d	$a2, $a2, 1
	add.d	$t4, $t4, $s2
	bne	$a3, $t1, .LBB7_5
# %bb.16:                               # %.preheader28.i.preheader
	move	$a2, $zero
	add.d	$a3, $s0, $s2
	add.d	$a4, $fp, $a0
	ori	$a5, $zero, 999
	vldi	$vr0, -904
	ori	$a6, $zero, 1200
	ori	$a7, $zero, 1000
	ori	$t0, $s3, 2688
	ori	$t1, $zero, 0
	lu32i.d	$t1, -524288
	lu52i.d	$t1, $t1, 1023
	vreplgr2vr.d	$vr1, $t1
	ori	$t1, $zero, 999
	move	$t2, $s0
	b	.LBB7_18
	.p2align	4, , 16
.LBB7_17:                               # %.split.us.i
                                        #   in Loop: Header=BB7_18 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$t2, $t2, $s2
	addi.d	$t1, $t1, -1
	add.d	$a3, $a3, $s2
	ori	$t3, $s1, 3912
	add.d	$a4, $a4, $t3
	beq	$a2, $a7, .LBB7_25
.LBB7_18:                               # %.preheader28.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_24 Depth 2
                                        #     Child Loop BB7_20 Depth 2
                                        #       Child Loop BB7_21 Depth 3
	bgeu	$a2, $a5, .LBB7_23
# %bb.19:                               # %.preheader.us.i.preheader
                                        #   in Loop: Header=BB7_18 Depth=1
	move	$t3, $zero
	mul.d	$t4, $a2, $s2
	add.d	$t4, $s0, $t4
	move	$t5, $a3
	.p2align	4, , 16
.LBB7_20:                               # %.preheader.us.i
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_21 Depth 3
	slli.d	$t6, $t3, 3
	fldx.d	$fa2, $t4, $t6
	alsl.d	$t6, $t3, $t4, 3
	move	$t7, $a4
	move	$t8, $t5
	move	$s4, $t1
	.p2align	4, , 16
.LBB7_21:                               #   Parent Loop BB7_18 Depth=1
                                        #     Parent Loop BB7_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa3, $t7, 0
	fld.d	$fa4, $t8, 0
	fmul.d	$fa3, $fa3, $fa4
	fadd.d	$fa2, $fa2, $fa3
	fst.d	$fa2, $t6, 0
	addi.d	$s4, $s4, -1
	add.d	$t8, $t8, $s2
	add.d	$t7, $t7, $a0
	bnez	$s4, .LBB7_21
# %bb.22:                               # %._crit_edge.us.i
                                        #   in Loop: Header=BB7_20 Depth=2
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $t6, 0
	addi.d	$t3, $t3, 1
	addi.d	$t5, $t5, 8
	bne	$t3, $a6, .LBB7_20
	b	.LBB7_17
	.p2align	4, , 16
.LBB7_23:                               # %vector.body40.preheader
                                        #   in Loop: Header=BB7_18 Depth=1
	move	$t3, $t0
	.p2align	4, , 16
.LBB7_24:                               # %vector.body40
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t4, $t2, $t3
	vldx	$vr2, $t4, $s2
	vldx	$vr3, $t4, $a1
	vfmul.d	$vr2, $vr2, $vr1
	vfmul.d	$vr3, $vr3, $vr1
	vstx	$vr2, $t4, $s2
	addi.d	$t3, $t3, 32
	vstx	$vr3, $t4, $a1
	bnez	$t3, .LBB7_24
	b	.LBB7_17
.LBB7_25:                               # %kernel_trmm.exit
	lu12i.w	$s4, 4
	ori	$a0, $s4, 2817
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $s4, 2816
	stx.b	$zero, $s1, $a0
	addi.d	$s4, $s1, 7
	ori	$s3, $s3, 2688
	ori	$s5, $zero, 3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s6, $a0, %got_pc_lo12(stderr)
	move	$s7, $zero
	move	$s8, $zero
.LBB7_26:                               # %.preheader.i18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_27 Depth 2
	add.d	$a0, $s0, $s7
	move	$a1, $s4
	move	$a2, $s3
	.p2align	4, , 16
.LBB7_27:                               #   Parent Loop BB7_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a0, $a2
	ldptr.d	$a3, $a3, 9600
	srli.d	$a4, $a3, 8
	srli.d	$a5, $a3, 16
	srli.d	$a6, $a3, 24
	srli.d	$a7, $a3, 32
	srli.d	$t0, $a3, 40
	srli.d	$t1, $a3, 48
	srli.d	$t2, $a3, 56
	bstrins.d	$a3, $s5, 63, 4
	st.b	$a3, $a1, -7
	st.b	$a3, $a1, -6
	bstrins.d	$a4, $s5, 63, 4
	st.b	$a4, $a1, -5
	st.b	$a4, $a1, -4
	bstrins.d	$a5, $s5, 63, 4
	st.b	$a5, $a1, -3
	st.b	$a5, $a1, -2
	bstrins.d	$a6, $s5, 63, 4
	st.b	$a6, $a1, -1
	st.b	$a6, $a1, 0
	bstrins.d	$a7, $s5, 63, 4
	st.b	$a7, $a1, 1
	st.b	$a7, $a1, 2
	bstrins.d	$t0, $s5, 63, 4
	st.b	$t0, $a1, 3
	st.b	$t0, $a1, 4
	bstrins.d	$t1, $s5, 63, 4
	st.b	$t1, $a1, 5
	st.b	$t1, $a1, 6
	bstrins.d	$t2, $s5, 63, 4
	st.b	$t2, $a1, 7
	st.b	$t2, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB7_27
# %bb.28:                               #   in Loop: Header=BB7_26 Depth=1
	ld.d	$a1, $s6, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, 1
	add.d	$s7, $s7, $s2
	ori	$a0, $zero, 1000
	bne	$s8, $a0, .LBB7_26
# %bb.29:                               # %print_array.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
.LBB7_30:
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

	.section	".note.GNU-stack","",@progbits
	.addrsig
