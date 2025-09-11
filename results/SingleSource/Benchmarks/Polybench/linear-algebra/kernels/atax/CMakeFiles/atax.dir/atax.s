	.file	"atax.c"
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
.LCPI7_1:
	.dword	48                              # 0x30
	.dword	56                              # 0x38
.LCPI7_2:
	.dword	32                              # 0x20
	.dword	40                              # 0x28
.LCPI7_3:
	.dword	16                              # 0x10
	.dword	24                              # 0x18
.LCPI7_4:
	.dword	0                               # 0x0
	.dword	8                               # 0x8
	.text
	.globl	main
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
	lu12i.w	$a0, 7792
	ori	$s4, $a0, 3968
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 8
	move	$a2, $s4
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 8
	beqz	$fp, .LBB7_26
# %bb.1:
	bnez	$a0, .LBB7_26
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 8
	lu12i.w	$s7, 4
	ori	$s3, $s7, 416
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 8
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 8
	beqz	$s0, .LBB7_26
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_26
# %bb.4:                                # %polybench_alloc_data.exit16
	st.d	$zero, $sp, 8
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 8
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 8
	beqz	$s1, .LBB7_26
# %bb.5:                                # %polybench_alloc_data.exit16
	bnez	$a0, .LBB7_26
# %bb.6:                                # %polybench_alloc_data.exit18
	st.d	$zero, $sp, 8
	lu12i.w	$a0, 3
	ori	$s5, $a0, 2912
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 8
	move	$a2, $s5
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 8
	beqz	$s2, .LBB7_26
# %bb.7:                                # %polybench_alloc_data.exit18
	bnez	$a0, .LBB7_26
# %bb.8:                                # %polybench_alloc_data.exit20
	ori	$a1, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr0, $a0
	lu12i.w	$s6, -5
	ori	$a0, $s6, 3680
	lu32i.d	$a1, 26624
	lu52i.d	$a1, $a1, 1034
	vreplgr2vr.d	$vr1, $a1
	lu52i.d	$a1, $zero, 1023
	vreplgr2vr.d	$vr2, $a1
	ori	$s7, $s7, 432
	.p2align	4, , 16
.LBB7_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr3, $vr0, 2
	vpickve2gr.w	$a1, $vr0, 1
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa4, $a1
	ffint.d.l	$fa4, $fa4
	vpickve2gr.w	$a1, $vr0, 0
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa5, $a1
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vpickve2gr.w	$a1, $vr3, 1
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa4, $a1
	ffint.d.l	$fa4, $fa4
	vpickve2gr.w	$a1, $vr3, 0
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa3, $a1
	ffint.d.l	$fa3, $fa3
	vextrins.d	$vr3, $vr4, 16
	vfdiv.d	$vr4, $vr5, $vr1
	vfdiv.d	$vr3, $vr3, $vr1
	vfadd.d	$vr4, $vr4, $vr2
	vfadd.d	$vr3, $vr3, $vr2
	add.d	$a1, $s0, $a0
	vstx	$vr4, $a1, $s3
	vstx	$vr3, $a1, $s7
	addi.d	$a0, $a0, 32
	vaddi.wu	$vr0, $vr0, 4
	bnez	$a0, .LBB7_9
# %bb.10:                               # %.preheader.i.preheader
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.LCPI7_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI7_0)
	ori	$a1, $s6, 3680
	ori	$a2, $zero, 2100
	ori	$a3, $zero, 0
	lu32i.d	$a3, 167424
	lu52i.d	$a3, $a3, 1036
	vreplgr2vr.d	$vr1, $a3
	ori	$a3, $zero, 1900
	move	$a4, $fp
	.p2align	4, , 16
.LBB7_11:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
	vreplgr2vr.d	$vr2, $a0
	vaddi.du	$vr3, $vr2, 2
	move	$a5, $a1
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB7_12:                               # %vector.body33
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vadd.d	$vr5, $vr4, $vr2
	vadd.d	$vr6, $vr4, $vr3
	vpickve2gr.w	$a6, $vr5, 0
	mod.wu	$a6, $a6, $a2
	bstrpick.d	$a6, $a6, 31, 0
	vpickve2gr.w	$a7, $vr5, 2
	mod.wu	$a7, $a7, $a2
	bstrpick.d	$a7, $a7, 31, 0
	vpickve2gr.w	$t0, $vr6, 0
	mod.wu	$t0, $t0, $a2
	bstrpick.d	$t0, $t0, 31, 0
	vpickve2gr.w	$t1, $vr6, 2
	mod.wu	$t1, $t1, $a2
	bstrpick.d	$t1, $t1, 31, 0
	movgr2fr.d	$fa5, $a7
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa6, $a6
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	movgr2fr.d	$fa5, $t1
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa7, $t0
	ffint.d.l	$fa7, $fa7
	vextrins.d	$vr7, $vr5, 16
	vfdiv.d	$vr5, $vr6, $vr1
	vfdiv.d	$vr6, $vr7, $vr1
	add.d	$a6, $a4, $a5
	vstx	$vr5, $a6, $s3
	vstx	$vr6, $a6, $s7
	addi.d	$a5, $a5, 32
	vaddi.du	$vr4, $vr4, 4
	bnez	$a5, .LBB7_12
# %bb.13:                               # %middle.block39
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a4, $a4, $s3
	bne	$a0, $a3, .LBB7_11
# %bb.14:                               # %init_array.exit
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	add.d	$a1, $s1, $s3
	add.d	$a2, $fp, $s4
	add.d	$a3, $s2, $s5
	sltu	$a2, $s1, $a2
	sltu	$a4, $fp, $a1
	and	$a2, $a2, $a4
	sltu	$a3, $s1, $a3
	sltu	$a1, $s2, $a1
	and	$a1, $a3, $a1
	or	$a1, $a2, $a1
	movgr2fr.d	$fa0, $zero
	ori	$a2, $s6, 3680
	ori	$a3, $zero, 1900
	move	$a4, $fp
	b	.LBB7_16
	.p2align	4, , 16
.LBB7_15:                               # %middle.block55
                                        #   in Loop: Header=BB7_16 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a4, $a4, $s3
	beq	$a0, $a3, .LBB7_23
.LBB7_16:                               # %.preheader36.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_17 Depth 2
                                        #     Child Loop BB7_22 Depth 2
                                        #     Child Loop BB7_20 Depth 2
	alsl.d	$a5, $a0, $s2, 3
	slli.d	$a6, $a0, 3
	stx.d	$zero, $s2, $a6
	move	$a6, $a2
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB7_17:                               #   Parent Loop BB7_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a7, $a4, $a6
	fldx.d	$fa2, $a7, $s3
	add.d	$a7, $s0, $a6
	fldx.d	$fa3, $a7, $s3
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	addi.d	$a6, $a6, 8
	fst.d	$fa1, $a5, 0
	bnez	$a6, .LBB7_17
# %bb.18:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_16 Depth=1
	beqz	$a1, .LBB7_21
# %bb.19:                               # %.preheader.i24.preheader
                                        #   in Loop: Header=BB7_16 Depth=1
	move	$a6, $a2
	.p2align	4, , 16
.LBB7_20:                               # %.preheader.i24
                                        #   Parent Loop BB7_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a7, $s1, $a6
	add.d	$t0, $a4, $a6
	fldx.d	$fa1, $t0, $s3
	fld.d	$fa2, $a5, 0
	fldx.d	$fa3, $a7, $s3
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa3, $fa1
	addi.d	$a6, $a6, 8
	fstx.d	$fa1, $a7, $s3
	bnez	$a6, .LBB7_20
	b	.LBB7_15
	.p2align	4, , 16
.LBB7_21:                               # %vector.body47.preheader
                                        #   in Loop: Header=BB7_16 Depth=1
	vldrepl.d	$vr1, $a5, 0
	move	$a5, $a2
	.p2align	4, , 16
.LBB7_22:                               # %vector.body47
                                        #   Parent Loop BB7_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a6, $s1, $a5
	add.d	$a7, $a4, $a5
	vldx	$vr2, $a7, $s3
	vldx	$vr3, $a7, $s7
	vldx	$vr4, $a6, $s3
	vldx	$vr5, $a6, $s7
	vfmul.d	$vr2, $vr2, $vr1
	vfmul.d	$vr3, $vr3, $vr1
	vfadd.d	$vr2, $vr4, $vr2
	vfadd.d	$vr3, $vr5, $vr3
	vstx	$vr2, $a6, $s3
	addi.d	$a5, $a5, 32
	vstx	$vr3, $a6, $s7
	bnez	$a5, .LBB7_22
	b	.LBB7_15
.LBB7_23:                               # %kernel_atax.exit
	lu12i.w	$s3, 8
	ori	$a0, $s3, 833
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI7_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI7_1)
	pcalau12i	$a1, %pc_hi20(.LCPI7_2)
	vld	$vr1, $a1, %pc_lo12(.LCPI7_2)
	pcalau12i	$a1, %pc_hi20(.LCPI7_3)
	vld	$vr2, $a1, %pc_lo12(.LCPI7_3)
	pcalau12i	$a1, %pc_hi20(.LCPI7_4)
	vld	$vr3, $a1, %pc_lo12(.LCPI7_4)
	ori	$a1, $s3, 832
	stx.b	$zero, $a0, $a1
	ori	$a1, $s6, 3680
	move	$a2, $a0
	.p2align	4, , 16
.LBB7_24:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s1, $a1
	ldptr.d	$a3, $a3, 16800
	vreplgr2vr.d	$vr4, $a3
	vsrl.d	$vr5, $vr4, $vr0
	vsrl.d	$vr6, $vr4, $vr1
	vsrl.d	$vr7, $vr4, $vr2
	vsrl.d	$vr4, $vr4, $vr3
	vpickve2gr.d	$a3, $vr4, 0
	vinsgr2vr.b	$vr8, $a3, 0
	vpickve2gr.d	$a3, $vr4, 1
	vinsgr2vr.b	$vr8, $a3, 1
	vpickve2gr.d	$a3, $vr7, 0
	vinsgr2vr.b	$vr8, $a3, 2
	vpickve2gr.d	$a3, $vr7, 1
	vinsgr2vr.b	$vr8, $a3, 3
	vpickve2gr.d	$a3, $vr6, 0
	vinsgr2vr.b	$vr8, $a3, 4
	vpickve2gr.d	$a3, $vr6, 1
	vinsgr2vr.b	$vr8, $a3, 5
	vpickve2gr.d	$a3, $vr5, 0
	vinsgr2vr.b	$vr8, $a3, 6
	vpickve2gr.d	$a3, $vr5, 1
	vinsgr2vr.b	$vr8, $a3, 7
	vandi.b	$vr4, $vr8, 15
	vori.b	$vr4, $vr4, 48
	vilvl.b	$vr4, $vr4, $vr4
	vst	$vr4, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 16
	bnez	$a1, .LBB7_24
# %bb.25:                               # %print_array.exit
	pcalau12i	$a1, %got_pc_hi20(stderr)
	ld.d	$a1, $a1, %got_pc_lo12(stderr)
	ld.d	$a1, $a1, 0
	move	$s3, $a0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	move	$a0, $s3
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
.LBB7_26:
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
