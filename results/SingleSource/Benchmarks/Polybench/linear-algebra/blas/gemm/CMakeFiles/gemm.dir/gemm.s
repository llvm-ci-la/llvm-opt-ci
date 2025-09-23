	.file	"gemm.c"
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
.LCPI7_2:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	st.d	$zero, $sp, 32
	lu12i.w	$a0, 2148
	ori	$s0, $a0, 1792
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 32
	beqz	$fp, .LBB7_57
# %bb.1:
	bnez	$a0, .LBB7_57
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 32
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 32
	beqz	$s0, .LBB7_57
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_57
# %bb.4:                                # %polybench_alloc_data.exit31
	st.d	$zero, $sp, 32
	lu12i.w	$a0, 2343
	ori	$a2, $a0, 3072
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 32
	beqz	$s1, .LBB7_57
# %bb.5:                                # %polybench_alloc_data.exit31
	bnez	$a0, .LBB7_57
# %bb.6:                                # %polybench_alloc_data.exit33
	st.d	$zero, $sp, 32
	lu12i.w	$a0, 2578
	ori	$s3, $a0, 512
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 32
	beqz	$s2, .LBB7_57
# %bb.7:                                # %polybench_alloc_data.exit33
	bnez	$a0, .LBB7_57
# %bb.8:                                # %polybench_alloc_data.exit35
	move	$a1, $zero
	move	$a4, $zero
	sub.d	$a5, $s0, $fp
	ori	$a6, $zero, 31
	lu12i.w	$s5, -3
	ori	$a7, $s5, 3488
	lu12i.w	$a0, 67108
	ori	$t0, $a0, 3539
	ori	$t1, $zero, 1000
	pcalau12i	$a0, %pc_hi20(.LCPI7_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_1)
	lu12i.w	$a3, 2
	ori	$s4, $a3, 608
	pcalau12i	$a2, %pc_hi20(.LCPI7_0)
	vld	$vr1, $a2, %pc_lo12(.LCPI7_0)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	vreplgr2vr.d	$vr2, $a0
	ori	$a0, $a3, 624
	move	$t2, $fp
	move	$t3, $s0
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_9:                                # %middle.block
                                        #   in Loop: Header=BB7_10 Depth=1
	addi.d	$a4, $a4, 1
	add.d	$t3, $t3, $s4
	add.d	$t2, $t2, $s4
	addi.d	$a1, $a1, 1
	beq	$a4, $t1, .LBB7_15
.LBB7_10:                               # %.preheader53.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_14 Depth 2
                                        #     Child Loop BB7_12 Depth 2
	bltu	$a6, $a5, .LBB7_13
# %bb.11:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_10 Depth=1
	ori	$t4, $zero, 1
	move	$t5, $a7
	.p2align	4, , 16
.LBB7_12:                               # %scalar.ph
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t6, $t4, 31, 0
	mul.d	$t6, $t6, $t0
	srli.d	$t6, $t6, 38
	mul.d	$t6, $t6, $t1
	sub.d	$t6, $t4, $t6
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$fa3, $t6
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	add.d	$t6, $t2, $t5
	fstx.d	$fa3, $t6, $s4
	add.d	$t6, $t3, $t5
	fstx.d	$fa3, $t6, $s4
	addi.d	$t5, $t5, 8
	add.w	$t4, $t4, $a1
	bnez	$t5, .LBB7_12
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_13:                               # %vector.ph
                                        #   in Loop: Header=BB7_10 Depth=1
	vreplgr2vr.d	$vr3, $a4
	move	$t4, $a7
	vori.b	$vr4, $vr1, 0
	.p2align	4, , 16
.LBB7_14:                               # %vector.body
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr5, $vr4, 2
	vmul.d	$vr6, $vr4, $vr3
	vmul.d	$vr5, $vr5, $vr3
	vshuf4i.w	$vr6, $vr6, 8
	vshuf4i.w	$vr5, $vr5, 8
	vaddi.wu	$vr6, $vr6, 1
	vaddi.wu	$vr5, $vr5, 1
	vpickve2gr.w	$t5, $vr6, 0
	mod.wu	$t5, $t5, $t1
	bstrpick.d	$t5, $t5, 31, 0
	vpickve2gr.w	$t6, $vr6, 1
	mod.wu	$t6, $t6, $t1
	bstrpick.d	$t6, $t6, 31, 0
	vpickve2gr.w	$t7, $vr5, 0
	mod.wu	$t7, $t7, $t1
	bstrpick.d	$t7, $t7, 31, 0
	vpickve2gr.w	$t8, $vr5, 1
	mod.wu	$t8, $t8, $t1
	bstrpick.d	$t8, $t8, 31, 0
	movgr2fr.d	$fa5, $t6
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa6, $t5
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	movgr2fr.d	$fa5, $t8
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa7, $t7
	ffint.d.l	$fa7, $fa7
	vextrins.d	$vr7, $vr5, 16
	vfdiv.d	$vr5, $vr6, $vr2
	vfdiv.d	$vr6, $vr7, $vr2
	add.d	$t5, $t2, $t4
	vstx	$vr5, $t5, $s4
	vstx	$vr6, $t5, $a0
	add.d	$t5, $t3, $t4
	vstx	$vr5, $t5, $s4
	vstx	$vr6, $t5, $a0
	addi.d	$t4, $t4, 32
	vaddi.du	$vr4, $vr4, 4
	bnez	$t4, .LBB7_14
	b	.LBB7_9
.LBB7_15:                               # %.preheader51.i.preheader
	move	$a4, $zero
	vld	$vr0, $a2, %pc_lo12(.LCPI7_0)
	ori	$a5, $s5, 2688
	ori	$a6, $zero, 1200
	ori	$a1, $zero, 0
	lu32i.d	$a1, 180224
	lu52i.d	$a1, $a1, 1033
	vreplgr2vr.d	$vr1, $a1
	ori	$a1, $a3, 1408
	ori	$a3, $a3, 1424
	ori	$a7, $zero, 1000
	move	$t0, $s1
	.p2align	4, , 16
.LBB7_16:                               # %.preheader51.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_17 Depth 2
	vreplgr2vr.d	$vr2, $a4
	move	$t1, $a5
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB7_17:                               # %vector.body99
                                        #   Parent Loop BB7_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr4, $vr3, 1
	vaddi.du	$vr5, $vr3, 3
	vmul.d	$vr4, $vr4, $vr2
	vmul.d	$vr5, $vr5, $vr2
	vpickve2gr.w	$t2, $vr4, 0
	mod.wu	$t2, $t2, $a6
	bstrpick.d	$t2, $t2, 31, 0
	vpickve2gr.w	$t3, $vr4, 2
	mod.wu	$t3, $t3, $a6
	bstrpick.d	$t3, $t3, 31, 0
	vpickve2gr.w	$t4, $vr5, 0
	mod.wu	$t4, $t4, $a6
	bstrpick.d	$t4, $t4, 31, 0
	vpickve2gr.w	$t5, $vr5, 2
	mod.wu	$t5, $t5, $a6
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa4, $t3
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa5, $t2
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	movgr2fr.d	$fa4, $t5
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa6, $t4
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr4, 16
	vfdiv.d	$vr4, $vr5, $vr1
	vfdiv.d	$vr5, $vr6, $vr1
	add.d	$t2, $t0, $t1
	vstx	$vr4, $t2, $a1
	vstx	$vr5, $t2, $a3
	addi.d	$t1, $t1, 32
	vaddi.du	$vr3, $vr3, 4
	bnez	$t1, .LBB7_17
# %bb.18:                               # %middle.block105
                                        #   in Loop: Header=BB7_16 Depth=1
	addi.d	$a4, $a4, 1
	add.d	$t0, $t0, $a1
	bne	$a4, $a7, .LBB7_16
# %bb.19:                               # %.preheader.i.preheader
	move	$a3, $zero
	vld	$vr0, $a2, %pc_lo12(.LCPI7_0)
	ori	$a2, $s5, 3488
	ori	$a4, $zero, 1100
	ori	$a5, $zero, 0
	lu32i.d	$a5, 77824
	lu52i.d	$a5, $a5, 1033
	vreplgr2vr.d	$vr1, $a5
	ori	$a5, $zero, 1200
	move	$a6, $s2
	.p2align	4, , 16
.LBB7_20:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_21 Depth 2
	vreplgr2vr.d	$vr2, $a3
	move	$a7, $a2
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB7_21:                               # %vector.body110
                                        #   Parent Loop BB7_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr4, $vr3, 2
	vaddi.du	$vr3, $vr3, 4
	vmul.d	$vr4, $vr4, $vr2
	vmul.d	$vr5, $vr3, $vr2
	vpickve2gr.w	$t0, $vr4, 0
	mod.wu	$t0, $t0, $a4
	bstrpick.d	$t0, $t0, 31, 0
	vpickve2gr.w	$t1, $vr4, 2
	mod.wu	$t1, $t1, $a4
	bstrpick.d	$t1, $t1, 31, 0
	vpickve2gr.w	$t2, $vr5, 0
	mod.wu	$t2, $t2, $a4
	bstrpick.d	$t2, $t2, 31, 0
	vpickve2gr.w	$t3, $vr5, 2
	mod.wu	$t3, $t3, $a4
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$fa4, $t1
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa5, $t0
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	movgr2fr.d	$fa4, $t3
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa6, $t2
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr4, 16
	vfdiv.d	$vr4, $vr5, $vr1
	vfdiv.d	$vr5, $vr6, $vr1
	add.d	$t0, $a6, $a7
	vstx	$vr4, $t0, $s4
	addi.d	$a7, $a7, 32
	vstx	$vr5, $t0, $a0
	bnez	$a7, .LBB7_21
# %bb.22:                               # %middle.block116
                                        #   in Loop: Header=BB7_20 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a6, $a6, $s4
	bne	$a3, $a5, .LBB7_20
# %bb.23:                               # %.preheader29.i.preheader
	move	$a3, $zero
	add.d	$a2, $s2, $s3
	ori	$a4, $s5, 3488
	lu12i.w	$a5, 209715
	ori	$a5, $a5, 819
	lu32i.d	$a5, 209715
	lu52i.d	$a5, $a5, 1023
	vreplgr2vr.d	$vr0, $a5
	vldi	$vr1, -904
	ori	$a5, $zero, 1200
	ori	$a6, $zero, 1000
	move	$a7, $fp
	b	.LBB7_25
	.p2align	4, , 16
.LBB7_24:                               #   in Loop: Header=BB7_25 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a7, $a7, $s4
	beq	$a3, $a6, .LBB7_34
.LBB7_25:                               # %.preheader29.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_26 Depth 2
                                        #     Child Loop BB7_29 Depth 2
                                        #       Child Loop BB7_33 Depth 3
                                        #       Child Loop BB7_31 Depth 3
	mul.d	$t0, $a3, $s4
	add.d	$t2, $fp, $t0
	add.d	$t3, $t2, $s4
	mul.d	$t0, $a3, $a1
	add.d	$t0, $s1, $t0
	add.d	$t4, $t0, $a1
	move	$t1, $a4
	.p2align	4, , 16
.LBB7_26:                               # %vector.body139
                                        #   Parent Loop BB7_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t5, $a7, $t1
	vldx	$vr2, $t5, $s4
	vldx	$vr3, $t5, $a0
	vfmul.d	$vr2, $vr2, $vr0
	vfmul.d	$vr3, $vr3, $vr0
	vstx	$vr2, $t5, $s4
	addi.d	$t1, $t1, 32
	vstx	$vr3, $t5, $a0
	bnez	$t1, .LBB7_26
# %bb.27:                               # %.preheader28.i
                                        #   in Loop: Header=BB7_25 Depth=1
	move	$t1, $zero
	sltu	$t4, $t2, $t4
	sltu	$t5, $t0, $t3
	and	$t4, $t4, $t5
	sltu	$t2, $t2, $a2
	sltu	$t3, $s2, $t3
	and	$t2, $t2, $t3
	or	$t2, $t4, $t2
	move	$t3, $s2
	b	.LBB7_29
	.p2align	4, , 16
.LBB7_28:                               # %middle.block135
                                        #   in Loop: Header=BB7_29 Depth=2
	addi.d	$t1, $t1, 1
	add.d	$t3, $t3, $s4
	beq	$t1, $a5, .LBB7_24
.LBB7_29:                               # %.preheader.i39
                                        #   Parent Loop BB7_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_33 Depth 3
                                        #       Child Loop BB7_31 Depth 3
	alsl.d	$t4, $t1, $t0, 3
	beqz	$t2, .LBB7_32
# %bb.30:                               # %scalar.ph125.preheader
                                        #   in Loop: Header=BB7_29 Depth=2
	move	$t5, $a4
	.p2align	4, , 16
.LBB7_31:                               # %scalar.ph125
                                        #   Parent Loop BB7_25 Depth=1
                                        #     Parent Loop BB7_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $t4, 0
	add.d	$t6, $t3, $t5
	fldx.d	$fa3, $t6, $s4
	add.d	$t6, $a7, $t5
	fldx.d	$fa4, $t6, $s4
	fmul.d	$fa2, $fa2, $fa1
	fmadd.d	$fa2, $fa2, $fa3, $fa4
	addi.d	$t5, $t5, 8
	fstx.d	$fa2, $t6, $s4
	bnez	$t5, .LBB7_31
	b	.LBB7_28
	.p2align	4, , 16
.LBB7_32:                               # %vector.body127.preheader
                                        #   in Loop: Header=BB7_29 Depth=2
	fld.d	$fa2, $t4, 0
	fmul.d	$fa2, $fa2, $fa1
	vreplvei.d	$vr2, $vr2, 0
	ori	$t4, $s5, 3488
	.p2align	4, , 16
.LBB7_33:                               # %vector.body127
                                        #   Parent Loop BB7_25 Depth=1
                                        #     Parent Loop BB7_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t5, $t3, $t4
	vldx	$vr3, $t5, $s4
	vldx	$vr4, $t5, $a0
	add.d	$t5, $a7, $t4
	vldx	$vr5, $t5, $s4
	vldx	$vr6, $t5, $a0
	vfmadd.d	$vr3, $vr2, $vr3, $vr5
	vfmadd.d	$vr4, $vr2, $vr4, $vr6
	vstx	$vr3, $t5, $s4
	addi.d	$t4, $t4, 32
	vstx	$vr4, $t5, $a0
	bnez	$t4, .LBB7_33
	b	.LBB7_28
.LBB7_34:                               # %.preheader29.i40.preheader
	move	$a3, $zero
	ori	$a4, $s5, 3488
	vldi	$vr1, -904
	ori	$a5, $zero, 1200
	ori	$a6, $zero, 1000
	move	$a7, $s0
	b	.LBB7_36
	.p2align	4, , 16
.LBB7_35:                               #   in Loop: Header=BB7_36 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a7, $a7, $s4
	beq	$a3, $a6, .LBB7_45
.LBB7_36:                               # %.preheader29.i40
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_37 Depth 2
                                        #     Child Loop BB7_40 Depth 2
                                        #       Child Loop BB7_44 Depth 3
                                        #       Child Loop BB7_42 Depth 3
	mul.d	$t0, $a3, $s4
	add.d	$t2, $s0, $t0
	add.d	$t3, $t2, $s4
	mul.d	$t0, $a3, $a1
	add.d	$t0, $s1, $t0
	add.d	$t4, $t0, $a1
	move	$t1, $a4
	.p2align	4, , 16
.LBB7_37:                               # %vector.body173
                                        #   Parent Loop BB7_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t5, $a7, $t1
	vldx	$vr2, $t5, $s4
	vldx	$vr3, $t5, $a0
	vfmul.d	$vr2, $vr2, $vr0
	vfmul.d	$vr3, $vr3, $vr0
	vstx	$vr2, $t5, $s4
	addi.d	$t1, $t1, 32
	vstx	$vr3, $t5, $a0
	bnez	$t1, .LBB7_37
# %bb.38:                               # %.preheader28.i45
                                        #   in Loop: Header=BB7_36 Depth=1
	move	$t1, $zero
	sltu	$t4, $t2, $t4
	sltu	$t5, $t0, $t3
	and	$t4, $t4, $t5
	sltu	$t2, $t2, $a2
	sltu	$t3, $s2, $t3
	and	$t2, $t2, $t3
	or	$t2, $t4, $t2
	move	$t3, $s2
	b	.LBB7_40
	.p2align	4, , 16
.LBB7_39:                               # %middle.block169
                                        #   in Loop: Header=BB7_40 Depth=2
	addi.d	$t1, $t1, 1
	add.d	$t3, $t3, $s4
	beq	$t1, $a5, .LBB7_35
.LBB7_40:                               # %.preheader.i46
                                        #   Parent Loop BB7_36 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_44 Depth 3
                                        #       Child Loop BB7_42 Depth 3
	alsl.d	$t4, $t1, $t0, 3
	beqz	$t2, .LBB7_43
# %bb.41:                               # %scalar.ph158.preheader
                                        #   in Loop: Header=BB7_40 Depth=2
	move	$t5, $a4
	.p2align	4, , 16
.LBB7_42:                               # %scalar.ph158
                                        #   Parent Loop BB7_36 Depth=1
                                        #     Parent Loop BB7_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $t4, 0
	add.d	$t6, $t3, $t5
	fldx.d	$fa3, $t6, $s4
	add.d	$t6, $a7, $t5
	fldx.d	$fa4, $t6, $s4
	fmul.d	$fa2, $fa2, $fa1
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa2, $fa4, $fa2
	addi.d	$t5, $t5, 8
	fstx.d	$fa2, $t6, $s4
	bnez	$t5, .LBB7_42
	b	.LBB7_39
	.p2align	4, , 16
.LBB7_43:                               # %vector.body160.preheader
                                        #   in Loop: Header=BB7_40 Depth=2
	fld.d	$fa2, $t4, 0
	fmul.d	$fa2, $fa2, $fa1
	vreplvei.d	$vr2, $vr2, 0
	ori	$t4, $s5, 3488
	.p2align	4, , 16
.LBB7_44:                               # %vector.body160
                                        #   Parent Loop BB7_36 Depth=1
                                        #     Parent Loop BB7_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t5, $t3, $t4
	vldx	$vr3, $t5, $s4
	vldx	$vr4, $t5, $a0
	add.d	$t5, $a7, $t4
	vldx	$vr5, $t5, $s4
	vldx	$vr6, $t5, $a0
	vfmul.d	$vr3, $vr2, $vr3
	vfmul.d	$vr4, $vr2, $vr4
	vfadd.d	$vr3, $vr5, $vr3
	vfadd.d	$vr4, $vr6, $vr4
	vstx	$vr3, $t5, $s4
	addi.d	$t4, $t4, 32
	vstx	$vr4, $t5, $a0
	bnez	$t4, .LBB7_44
	b	.LBB7_39
.LBB7_45:                               # %.preheader.i55.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_2)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_2)
	move	$a0, $zero
	move	$a2, $zero
	ori	$a1, $s5, 3488
	ori	$a4, $zero, 1000
	.p2align	4, , 16
.LBB7_46:                               # %.preheader.i55
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_47 Depth 2
	move	$a3, $zero
	add.d	$a5, $s0, $a0
	add.d	$a6, $fp, $a0
	move	$a7, $a1
	.p2align	4, , 16
.LBB7_47:                               #   Parent Loop BB7_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	fldx.d	$fa1, $t0, $s4
	add.d	$t0, $a5, $a7
	fldx.d	$fa2, $t0, $s4
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_55
# %bb.48:                               # %.critedge.i
                                        #   in Loop: Header=BB7_47 Depth=2
	addi.d	$a7, $a7, 8
	addi.w	$a3, $a3, 1
	bnez	$a7, .LBB7_47
# %bb.49:                               #   in Loop: Header=BB7_46 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a0, $a0, $s4
	bne	$a2, $a4, .LBB7_46
# %bb.50:                               # %check_FP.exit
	lu12i.w	$s6, 4
	ori	$a0, $s6, 1217
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $s6, 1216
	stx.b	$zero, $s3, $a0
	addi.d	$a0, $s3, 7
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $s5, 3488
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s7, $zero, 3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s8, $a0, %got_pc_lo12(stderr)
	move	$s6, $zero
	move	$s5, $zero
.LBB7_51:                               # %.preheader.i62
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_52 Depth 2
	add.d	$a0, $s0, $s6
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_52:                               #   Parent Loop BB7_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a0, $a2
	ldptr.d	$a3, $a3, 8800
	srli.d	$a4, $a3, 8
	srli.d	$a5, $a3, 16
	srli.d	$a6, $a3, 24
	srli.d	$a7, $a3, 32
	srli.d	$t0, $a3, 40
	srli.d	$t1, $a3, 48
	srli.d	$t2, $a3, 56
	bstrins.d	$a3, $s7, 63, 4
	st.b	$a3, $a1, -7
	st.b	$a3, $a1, -6
	bstrins.d	$a4, $s7, 63, 4
	st.b	$a4, $a1, -5
	st.b	$a4, $a1, -4
	bstrins.d	$a5, $s7, 63, 4
	st.b	$a5, $a1, -3
	st.b	$a5, $a1, -2
	bstrins.d	$a6, $s7, 63, 4
	st.b	$a6, $a1, -1
	st.b	$a6, $a1, 0
	bstrins.d	$a7, $s7, 63, 4
	st.b	$a7, $a1, 1
	st.b	$a7, $a1, 2
	bstrins.d	$t0, $s7, 63, 4
	st.b	$t0, $a1, 3
	st.b	$t0, $a1, 4
	bstrins.d	$t1, $s7, 63, 4
	st.b	$t1, $a1, 5
	st.b	$t1, $a1, 6
	bstrins.d	$t2, $s7, 63, 4
	st.b	$t2, $a1, 7
	st.b	$t2, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB7_52
# %bb.53:                               #   in Loop: Header=BB7_51 Depth=1
	ld.d	$a1, $s8, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	add.d	$s6, $s6, $s4
	ori	$a0, $zero, 1000
	bne	$s5, $a0, .LBB7_51
# %bb.54:                               # %print_array.exit
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
	b	.LBB7_56
.LBB7_55:                               # %check_FP.exit.thread
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, -487882
	ori	$a1, $a1, 2289
	lu32i.d	$a1, 325813
	lu52i.d	$a1, $a1, 1006
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
.LBB7_56:
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
.LBB7_57:
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
