	.file	"jacobi-1d.c"
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI7_0:
	.dword	0x409f400000000000              # double 2000
.LCPI7_1:
	.dword	0x3fd555475a31a4be              # double 0.33333000000000002
.LCPI7_2:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI7_3:
	.dword	48                              # 0x30
	.dword	56                              # 0x38
.LCPI7_4:
	.dword	32                              # 0x20
	.dword	40                              # 0x28
.LCPI7_5:
	.dword	16                              # 0x10
	.dword	24                              # 0x18
.LCPI7_6:
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
	lu12i.w	$s4, 3
	ori	$s2, $s4, 3712
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 8
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 8
	beqz	$fp, .LBB7_52
# %bb.1:
	bnez	$a0, .LBB7_52
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 8
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 8
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 8
	beqz	$s0, .LBB7_52
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_52
# %bb.4:                                # %polybench_alloc_data.exit23
	st.d	$zero, $sp, 8
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 8
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 8
	beqz	$s1, .LBB7_52
# %bb.5:                                # %polybench_alloc_data.exit23
	bnez	$a0, .LBB7_52
# %bb.6:                                # %polybench_alloc_data.exit25
	sub.d	$a0, $s1, $fp
	ori	$a1, $zero, 16
	lu12i.w	$s3, -4
	pcalau12i	$a6, %pc_hi20(.LCPI7_0)
	bgeu	$a0, $a1, .LBB7_9
# %bb.7:                                # %scalar.ph.preheader
	fld.d	$fa0, $a6, %pc_lo12(.LCPI7_0)
	ori	$a0, $zero, 3
	ori	$a1, $s3, 384
	.p2align	4, , 16
.LBB7_8:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a3, $a0, -1
	bstrpick.d	$a3, $a3, 31, 0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	add.d	$a3, $fp, $a1
	fstx.d	$fa1, $a3, $s2
	movgr2fr.d	$fa1, $a2
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	add.d	$a2, $s1, $a1
	fstx.d	$fa1, $a2, $s2
	addi.d	$a1, $a1, 8
	addi.w	$a0, $a0, 1
	bnez	$a1, .LBB7_8
	b	.LBB7_11
.LBB7_9:                                # %vector.body.preheader
	ori	$a1, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr1, $a0
	ori	$a0, $s3, 384
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1033
	vreplgr2vr.d	$vr0, $a1
	.p2align	4, , 16
.LBB7_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr2, $vr1, 3
	vaddi.wu	$vr1, $vr1, 2
	vpickve2gr.w	$a1, $vr1, 1
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa3, $a1
	ffint.d.l	$fa3, $fa3
	vpickve2gr.w	$a1, $vr1, 0
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa4, $a1
	ffint.d.l	$fa4, $fa4
	vextrins.d	$vr4, $vr3, 16
	vfdiv.d	$vr3, $vr4, $vr0
	add.d	$a1, $fp, $a0
	vstx	$vr3, $a1, $s2
	vpickve2gr.w	$a1, $vr2, 1
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa3, $a1
	ffint.d.l	$fa3, $fa3
	vpickve2gr.w	$a1, $vr2, 0
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa2, $a1
	ffint.d.l	$fa2, $fa2
	vextrins.d	$vr2, $vr3, 16
	vfdiv.d	$vr2, $vr2, $vr0
	add.d	$a1, $s1, $a0
	addi.d	$a0, $a0, 16
	vstx	$vr2, $a1, $s2
	bnez	$a0, .LBB7_10
.LBB7_11:                               # %.preheader26.i.preheader
	move	$t2, $zero
	addi.d	$a1, $fp, 8
	ori	$a0, $s4, 3704
	add.d	$a2, $fp, $a0
	add.d	$a7, $s1, $s2
	addi.d	$t0, $s1, 8
	add.d	$t1, $s1, $a0
	add.d	$a3, $fp, $s2
	sltu	$a3, $t0, $a3
	sltu	$a4, $fp, $t1
	and	$t3, $a3, $a4
	sltu	$a1, $a1, $a7
	sltu	$a2, $s1, $a2
	and	$t4, $a1, $a2
	addi.d	$a1, $s1, 24
	addi.d	$t5, $fp, 24
	pcalau12i	$a2, %pc_hi20(.LCPI7_1)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI7_1)
	ori	$t6, $zero, 500
	ori	$t7, $s3, 416
	ori	$a2, $s4, 3680
	ori	$a3, $s4, 3696
	lu12i.w	$a4, 369434
	ori	$a4, $a4, 1214
	lu32i.d	$a4, 349511
	lu52i.d	$a4, $a4, 1021
	vreplgr2vr.d	$vr1, $a4
	ori	$a4, $s4, 3688
	ori	$a5, $s4, 3664
	.p2align	4, , 16
.LBB7_12:                               # %vector.memcheck87
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_14 Depth 2
                                        #     Child Loop BB7_17 Depth 2
                                        #     Child Loop BB7_20 Depth 2
                                        #     Child Loop BB7_23 Depth 2
	ori	$s6, $zero, 1
	bnez	$t3, .LBB7_16
# %bb.13:                               # %vector.body96.preheader
                                        #   in Loop: Header=BB7_12 Depth=1
	move	$t8, $t7
	.p2align	4, , 16
.LBB7_14:                               # %vector.body96
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s4, $fp, $t8
	vldx	$vr2, $s4, $a2
	vldx	$vr3, $s4, $a3
	vldx	$vr4, $s4, $a4
	vldx	$vr5, $s4, $a0
	vldx	$vr6, $s4, $s2
	vfadd.d	$vr2, $vr2, $vr4
	vfadd.d	$vr4, $vr3, $vr5
	vfadd.d	$vr2, $vr2, $vr3
	vfadd.d	$vr3, $vr4, $vr6
	vfmul.d	$vr2, $vr2, $vr1
	vfmul.d	$vr3, $vr3, $vr1
	add.d	$s4, $a1, $t8
	vstx	$vr2, $s4, $a5
	addi.d	$t8, $t8, 32
	vstx	$vr3, $s4, $a2
	bnez	$t8, .LBB7_14
# %bb.15:                               #   in Loop: Header=BB7_12 Depth=1
	ori	$s6, $zero, 1997
.LBB7_16:                               # %scalar.ph94.preheader
                                        #   in Loop: Header=BB7_12 Depth=1
	move	$t8, $zero
	slli.d	$s4, $s6, 3
	alsl.d	$s5, $s6, $s1, 3
	alsl.d	$s6, $s6, $fp, 3
	.p2align	4, , 16
.LBB7_17:                               # %scalar.ph94
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s7, $s6, $t8
	fld.d	$fa2, $s7, -8
	fldx.d	$fa3, $s6, $t8
	fld.d	$fa4, $s7, 8
	fadd.d	$fa2, $fa2, $fa3
	fadd.d	$fa2, $fa2, $fa4
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $s5, $t8
	addi.d	$t8, $t8, 8
	add.d	$s7, $s4, $t8
	bne	$s7, $a0, .LBB7_17
# %bb.18:                               # %vector.memcheck72
                                        #   in Loop: Header=BB7_12 Depth=1
	ori	$s6, $zero, 1
	bnez	$t4, .LBB7_22
# %bb.19:                               # %vector.body77.preheader
                                        #   in Loop: Header=BB7_12 Depth=1
	move	$t8, $t7
	.p2align	4, , 16
.LBB7_20:                               # %vector.body77
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s4, $s1, $t8
	vldx	$vr2, $s4, $a2
	vldx	$vr3, $s4, $a3
	vldx	$vr4, $s4, $a4
	vldx	$vr5, $s4, $a0
	vldx	$vr6, $s4, $s2
	vfadd.d	$vr2, $vr2, $vr4
	vfadd.d	$vr4, $vr3, $vr5
	vfadd.d	$vr2, $vr2, $vr3
	vfadd.d	$vr3, $vr4, $vr6
	vfmul.d	$vr2, $vr2, $vr1
	vfmul.d	$vr3, $vr3, $vr1
	add.d	$s4, $t5, $t8
	vstx	$vr2, $s4, $a5
	addi.d	$t8, $t8, 32
	vstx	$vr3, $s4, $a2
	bnez	$t8, .LBB7_20
# %bb.21:                               #   in Loop: Header=BB7_12 Depth=1
	ori	$s6, $zero, 1997
.LBB7_22:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB7_12 Depth=1
	move	$t8, $zero
	slli.d	$s4, $s6, 3
	alsl.d	$s5, $s6, $fp, 3
	alsl.d	$s6, $s6, $s1, 3
	.p2align	4, , 16
.LBB7_23:                               # %.preheader.i
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s7, $s6, $t8
	fld.d	$fa2, $s7, -8
	fldx.d	$fa3, $s6, $t8
	fld.d	$fa4, $s7, 8
	fadd.d	$fa2, $fa2, $fa3
	fadd.d	$fa2, $fa2, $fa4
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $s5, $t8
	addi.d	$t8, $t8, 8
	add.d	$s7, $s4, $t8
	bne	$s7, $a0, .LBB7_23
# %bb.24:                               #   in Loop: Header=BB7_12 Depth=1
	addi.w	$t2, $t2, 1
	bne	$t2, $t6, .LBB7_12
# %bb.25:                               # %vector.memcheck108
	sub.d	$t2, $s1, $s0
	ori	$t3, $zero, 16
	bgeu	$t2, $t3, .LBB7_28
# %bb.26:                               # %kernel_jacobi_1d.exit.preheader
	fld.d	$fa2, $a6, %pc_lo12(.LCPI7_0)
	ori	$a6, $zero, 3
	ori	$t2, $s3, 384
	.p2align	4, , 16
.LBB7_27:                               # %kernel_jacobi_1d.exit
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t3, $a6, 31, 0
	addi.d	$t4, $a6, -1
	bstrpick.d	$t4, $t4, 31, 0
	movgr2fr.d	$fa3, $t4
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa2
	add.d	$t4, $s0, $t2
	fstx.d	$fa3, $t4, $s2
	movgr2fr.d	$fa3, $t3
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa2
	add.d	$t3, $s1, $t2
	fstx.d	$fa3, $t3, $s2
	addi.d	$t2, $t2, 8
	addi.w	$a6, $a6, 1
	bnez	$t2, .LBB7_27
	b	.LBB7_30
.LBB7_28:                               # %vector.body112.preheader
	ori	$t2, $zero, 0
	ori	$a6, $zero, 0
	lu32i.d	$a6, 1
	vreplgr2vr.d	$vr3, $a6
	ori	$a6, $s3, 384
	lu32i.d	$t2, -49152
	lu52i.d	$t2, $t2, 1033
	vreplgr2vr.d	$vr2, $t2
	.p2align	4, , 16
.LBB7_29:                               # %vector.body112
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr4, $vr3, 3
	vaddi.wu	$vr3, $vr3, 2
	vpickve2gr.w	$t2, $vr3, 1
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa5, $t2
	ffint.d.l	$fa5, $fa5
	vpickve2gr.w	$t2, $vr3, 0
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa6, $t2
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vfdiv.d	$vr5, $vr6, $vr2
	add.d	$t2, $s0, $a6
	vstx	$vr5, $t2, $s2
	vpickve2gr.w	$t2, $vr4, 1
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa5, $t2
	ffint.d.l	$fa5, $fa5
	vpickve2gr.w	$t2, $vr4, 0
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa4, $t2
	ffint.d.l	$fa4, $fa4
	vextrins.d	$vr4, $vr5, 16
	vfdiv.d	$vr4, $vr4, $vr2
	add.d	$t2, $s1, $a6
	addi.d	$a6, $a6, 16
	vstx	$vr4, $t2, $s2
	bnez	$a6, .LBB7_29
.LBB7_30:                               # %.preheader26.i33.preheader
	move	$a6, $zero
	addi.d	$t2, $s0, 8
	add.d	$t3, $s0, $a0
	add.d	$t4, $s0, $s2
	sltu	$t0, $t0, $t4
	sltu	$t1, $s0, $t1
	and	$t0, $t0, $t1
	sltu	$a7, $t2, $a7
	sltu	$t1, $s1, $t3
	and	$a7, $a7, $t1
	addi.d	$t1, $s0, 24
	ori	$t2, $zero, 500
	ori	$t3, $s3, 416
	.p2align	4, , 16
.LBB7_31:                               # %vector.memcheck140
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_33 Depth 2
                                        #     Child Loop BB7_36 Depth 2
                                        #     Child Loop BB7_39 Depth 2
                                        #     Child Loop BB7_42 Depth 2
	ori	$t7, $zero, 1
	bnez	$t0, .LBB7_35
# %bb.32:                               # %vector.body149.preheader
                                        #   in Loop: Header=BB7_31 Depth=1
	move	$t4, $t3
	.p2align	4, , 16
.LBB7_33:                               # %vector.body149
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t5, $s0, $t4
	vldx	$vr2, $t5, $a2
	vldx	$vr3, $t5, $a3
	vldx	$vr4, $t5, $a4
	vldx	$vr5, $t5, $a0
	vldx	$vr6, $t5, $s2
	vfadd.d	$vr2, $vr2, $vr4
	vfadd.d	$vr4, $vr3, $vr5
	vfadd.d	$vr2, $vr2, $vr3
	vfadd.d	$vr3, $vr4, $vr6
	vfmul.d	$vr2, $vr2, $vr1
	vfmul.d	$vr3, $vr3, $vr1
	add.d	$t5, $a1, $t4
	vstx	$vr2, $t5, $a5
	addi.d	$t4, $t4, 32
	vstx	$vr3, $t5, $a2
	bnez	$t4, .LBB7_33
# %bb.34:                               #   in Loop: Header=BB7_31 Depth=1
	ori	$t7, $zero, 1997
.LBB7_35:                               # %scalar.ph147.preheader
                                        #   in Loop: Header=BB7_31 Depth=1
	move	$t4, $zero
	slli.d	$t5, $t7, 3
	alsl.d	$t6, $t7, $s1, 3
	alsl.d	$t7, $t7, $s0, 3
	.p2align	4, , 16
.LBB7_36:                               # %scalar.ph147
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t8, $t7, $t4
	fld.d	$fa2, $t8, -8
	fldx.d	$fa3, $t7, $t4
	fld.d	$fa4, $t8, 8
	fadd.d	$fa2, $fa2, $fa3
	fadd.d	$fa2, $fa2, $fa4
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $t6, $t4
	addi.d	$t4, $t4, 8
	add.d	$t8, $t5, $t4
	bne	$t8, $a0, .LBB7_36
# %bb.37:                               # %vector.memcheck119
                                        #   in Loop: Header=BB7_31 Depth=1
	ori	$t7, $zero, 1
	bnez	$a7, .LBB7_41
# %bb.38:                               # %vector.body128.preheader
                                        #   in Loop: Header=BB7_31 Depth=1
	move	$t4, $t3
	.p2align	4, , 16
.LBB7_39:                               # %vector.body128
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t5, $s1, $t4
	vldx	$vr2, $t5, $a2
	vldx	$vr3, $t5, $a3
	vldx	$vr4, $t5, $a4
	vldx	$vr5, $t5, $a0
	vldx	$vr6, $t5, $s2
	vfadd.d	$vr2, $vr2, $vr4
	vfadd.d	$vr4, $vr3, $vr5
	vfadd.d	$vr2, $vr2, $vr3
	vfadd.d	$vr3, $vr4, $vr6
	vfmul.d	$vr2, $vr2, $vr1
	vfmul.d	$vr3, $vr3, $vr1
	add.d	$t5, $t1, $t4
	vstx	$vr2, $t5, $a5
	addi.d	$t4, $t4, 32
	vstx	$vr3, $t5, $a2
	bnez	$t4, .LBB7_39
# %bb.40:                               #   in Loop: Header=BB7_31 Depth=1
	ori	$t7, $zero, 1997
.LBB7_41:                               # %.preheader.i38.preheader
                                        #   in Loop: Header=BB7_31 Depth=1
	move	$t4, $zero
	slli.d	$t5, $t7, 3
	alsl.d	$t6, $t7, $s0, 3
	alsl.d	$t7, $t7, $s1, 3
	.p2align	4, , 16
.LBB7_42:                               # %.preheader.i38
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t8, $t7, $t4
	fld.d	$fa2, $t8, -8
	fldx.d	$fa3, $t7, $t4
	fld.d	$fa4, $t8, 8
	fadd.d	$fa2, $fa2, $fa3
	fadd.d	$fa2, $fa2, $fa4
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $t6, $t4
	addi.d	$t4, $t4, 8
	add.d	$t8, $t5, $t4
	bne	$t8, $a0, .LBB7_42
# %bb.43:                               #   in Loop: Header=BB7_31 Depth=1
	addi.w	$a6, $a6, 1
	bne	$a6, $t2, .LBB7_31
# %bb.44:                               # %kernel_jacobi_1d_StrictFP.exit.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_2)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_2)
	move	$a2, $zero
	ori	$a0, $s3, 384
	.p2align	4, , 16
.LBB7_45:                               # %kernel_jacobi_1d_StrictFP.exit
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $fp, $a0
	fldx.d	$fa1, $a1, $s2
	add.d	$a1, $s0, $a0
	fldx.d	$fa2, $a1, $s2
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_50
# %bb.46:                               # %.critedge.i
                                        #   in Loop: Header=BB7_45 Depth=1
	addi.d	$a0, $a0, 8
	addi.w	$a2, $a2, 1
	bnez	$a0, .LBB7_45
# %bb.47:                               # %check_FP.exit
	lu12i.w	$s2, 7
	ori	$a0, $s2, 3329
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI7_3)
	vld	$vr0, $a1, %pc_lo12(.LCPI7_3)
	pcalau12i	$a1, %pc_hi20(.LCPI7_4)
	vld	$vr1, $a1, %pc_lo12(.LCPI7_4)
	pcalau12i	$a1, %pc_hi20(.LCPI7_5)
	vld	$vr2, $a1, %pc_lo12(.LCPI7_5)
	pcalau12i	$a1, %pc_hi20(.LCPI7_6)
	vld	$vr3, $a1, %pc_lo12(.LCPI7_6)
	ori	$a1, $s2, 3328
	stx.b	$zero, $a0, $a1
	ori	$a1, $s3, 384
	move	$a2, $a0
	.p2align	4, , 16
.LBB7_48:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a1
	ldptr.d	$a3, $a3, 16000
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
	bnez	$a1, .LBB7_48
# %bb.49:                               # %print_array.exit
	pcalau12i	$a1, %got_pc_hi20(stderr)
	ld.d	$a1, $a1, %got_pc_lo12(stderr)
	ld.d	$a1, $a1, 0
	move	$s2, $a0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
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
	b	.LBB7_51
.LBB7_50:                               # %check_FP.exit.thread
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	movfr2gr.d	$a3, $fa1
	movfr2gr.d	$a5, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	lu12i.w	$a4, -487882
	ori	$a4, $a4, 2289
	lu32i.d	$a4, 325813
	lu52i.d	$a6, $a4, 1006
	move	$a4, $a2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB7_51:
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
.LBB7_52:
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
	.asciz	"A[%d] = %lf and B[%d] = %lf differ more than FP_ABSTOLERANCE = %lf\n"
	.size	.L.str.2, 68

	.section	".note.GNU-stack","",@progbits
	.addrsig
