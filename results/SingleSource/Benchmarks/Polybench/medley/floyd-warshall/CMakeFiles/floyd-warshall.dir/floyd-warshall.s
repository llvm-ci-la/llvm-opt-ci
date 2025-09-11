	.file	"floyd-warshall.c"
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
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI7_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI7_2:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$zero, $sp, 88
	lu12i.w	$a0, 7656
	ori	$s1, $a0, 1024
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 88
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 88
	beqz	$fp, .LBB7_42
# %bb.1:
	bnez	$a0, .LBB7_42
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 88
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 88
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 88
	beqz	$s0, .LBB7_42
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_42
# %bb.4:                                # %polybench_alloc_data.exit16
	move	$a2, $zero
	pcalau12i	$a3, %pc_hi20(.LCPI7_0)
	vld	$vr8, $a3, %pc_lo12(.LCPI7_0)
	pcalau12i	$a4, %pc_hi20(.LCPI7_1)
	vld	$vr9, $a4, %pc_lo12(.LCPI7_1)
	lu12i.w	$a0, -3
	ori	$a5, $a0, 1088
	lu12i.w	$a1, 149796
	ori	$a6, $a1, 2341
	vreplgr2vr.w	$vr0, $a6
	vrepli.w	$vr1, 7
	lu12i.w	$a6, -241980
	ori	$a6, $a6, 3781
	vreplgr2vr.w	$vr2, $a6
	lu12i.w	$a6, 80659
	ori	$a6, $a6, 2835
	vreplgr2vr.w	$vr3, $a6
	lu12i.w	$a6, -299594
	ori	$a6, $a6, 3511
	vreplgr2vr.w	$vr4, $a6
	ori	$a1, $a1, 2340
	vreplgr2vr.w	$vr5, $a1
	lu12i.w	$a1, -285976
	ori	$a1, $a1, 2979
	vreplgr2vr.w	$vr6, $a1
	lu12i.w	$a1, 95325
	ori	$a1, $a1, 372
	vreplgr2vr.w	$vr7, $a1
	ori	$a1, $zero, 999
	vreplgr2vr.w	$vr10, $a1
	lu12i.w	$a1, 2
	ori	$s2, $a1, 3008
	ori	$a6, $zero, 2800
	move	$a7, $fp
	.p2align	4, , 16
.LBB7_5:                                # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
	vreplgr2vr.d	$vr11, $a2
	move	$t0, $a5
	vori.b	$vr12, $vr9, 0
	vori.b	$vr13, $vr8, 0
	.p2align	4, , 16
.LBB7_6:                                # %vector.body
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmul.d	$vr14, $vr12, $vr11
	vmul.d	$vr15, $vr13, $vr11
	vpickev.w	$vr14, $vr15, $vr14
	vmuh.wu	$vr15, $vr14, $vr0
	vsub.w	$vr16, $vr14, $vr15
	vsrli.w	$vr16, $vr16, 1
	vadd.w	$vr15, $vr16, $vr15
	vsrli.w	$vr15, $vr15, 2
	vmsub.w	$vr14, $vr15, $vr1
	vaddi.wu	$vr14, $vr14, 1
	add.d	$t1, $a7, $t0
	vadd.d	$vr15, $vr12, $vr11
	vadd.d	$vr16, $vr13, $vr11
	vpickev.w	$vr15, $vr16, $vr15
	vmul.w	$vr16, $vr15, $vr2
	vsle.wu	$vr16, $vr16, $vr3
	vmul.w	$vr17, $vr15, $vr4
	vsle.wu	$vr17, $vr17, $vr5
	vor.v	$vr16, $vr16, $vr17
	vmul.w	$vr15, $vr15, $vr6
	vsle.wu	$vr15, $vr15, $vr7
	vor.v	$vr15, $vr15, $vr16
	vbitsel.v	$vr14, $vr14, $vr10, $vr15
	vstx	$vr14, $t1, $s2
	vaddi.du	$vr12, $vr12, 4
	addi.d	$t0, $t0, 16
	vaddi.du	$vr13, $vr13, 4
	bnez	$t0, .LBB7_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB7_5 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a7, $a7, $s2
	bne	$a2, $a6, .LBB7_5
# %bb.8:                                # %.preheader34.i.preheader
	move	$a5, $zero
	add.d	$a6, $fp, $s1
	addi.d	$a7, $fp, 16
	lu12i.w	$a2, 7653
	ori	$a2, $a2, 2116
	ori	$t0, $a0, 1088
	ori	$t1, $zero, 2800
	move	$t2, $fp
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_9:                                #   in Loop: Header=BB7_10 Depth=1
	addi.d	$a5, $a5, 1
	add.d	$t2, $t2, $s2
	beq	$a5, $t1, .LBB7_17
.LBB7_10:                               # %.preheader34.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
                                        #       Child Loop BB7_16 Depth 3
                                        #       Child Loop BB7_14 Depth 3
	move	$t3, $zero
	alsl.d	$t4, $a5, $fp, 2
	add.d	$t5, $t4, $a2
	mul.d	$t6, $a5, $s2
	add.d	$t6, $fp, $t6
	sltu	$t5, $fp, $t5
	sltu	$t4, $t4, $a6
	and	$t4, $t5, $t4
	add.d	$t5, $t6, $s2
	sltu	$t5, $fp, $t5
	sltu	$t6, $t6, $a6
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	move	$t5, $fp
	move	$t6, $a7
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_11:                               # %middle.block96
                                        #   in Loop: Header=BB7_12 Depth=2
	addi.d	$t3, $t3, 1
	add.d	$t6, $t6, $s2
	add.d	$t5, $t5, $s2
	beq	$t3, $t1, .LBB7_9
.LBB7_12:                               # %.preheader.i17
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_16 Depth 3
                                        #       Child Loop BB7_14 Depth 3
	mul.d	$t7, $t3, $s2
	add.d	$t7, $fp, $t7
	alsl.d	$t7, $a5, $t7, 2
	beqz	$t4, .LBB7_15
# %bb.13:                               # %scalar.ph86.preheader
                                        #   in Loop: Header=BB7_12 Depth=2
	move	$t8, $t0
	.p2align	4, , 16
.LBB7_14:                               # %scalar.ph86
                                        #   Parent Loop BB7_10 Depth=1
                                        #     Parent Loop BB7_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s3, $t5, $t8
	ld.w	$s4, $t7, 0
	add.d	$s5, $t2, $t8
	ldx.w	$s5, $s5, $s2
	ldptr.w	$s6, $s3, 11200
	add.w	$s4, $s5, $s4
	slt	$s5, $s6, $s4
	masknez	$s4, $s4, $s5
	maskeqz	$s5, $s6, $s5
	or	$s4, $s5, $s4
	addi.d	$t8, $t8, 4
	stptr.w	$s4, $s3, 11200
	bnez	$t8, .LBB7_14
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_15:                               # %vector.body88.preheader
                                        #   in Loop: Header=BB7_12 Depth=2
	vldrepl.w	$vr8, $t7, 0
	ori	$t7, $a0, 1088
	.p2align	4, , 16
.LBB7_16:                               # %vector.body88
                                        #   Parent Loop BB7_10 Depth=1
                                        #     Parent Loop BB7_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t8, $t6, $t7
	ori	$s3, $a1, 2992
	add.d	$s4, $t2, $t7
	vldx	$vr9, $s4, $s2
	ori	$s5, $a1, 3024
	vldx	$vr10, $s4, $s5
	vldx	$vr11, $t8, $s3
	vldx	$vr12, $t8, $s2
	vadd.w	$vr9, $vr9, $vr8
	vadd.w	$vr10, $vr10, $vr8
	vmin.w	$vr9, $vr11, $vr9
	vmin.w	$vr10, $vr12, $vr10
	vstx	$vr9, $t8, $s3
	addi.d	$t7, $t7, 32
	vstx	$vr10, $t8, $s2
	bnez	$t7, .LBB7_16
	b	.LBB7_11
.LBB7_17:                               # %.preheader.i21.preheader
	move	$a5, $zero
	vld	$vr8, $a3, %pc_lo12(.LCPI7_0)
	vld	$vr9, $a4, %pc_lo12(.LCPI7_1)
	ori	$a3, $a0, 1088
	ori	$a4, $zero, 999
	vreplgr2vr.w	$vr10, $a4
	ori	$a4, $zero, 2800
	move	$a6, $s0
	.p2align	4, , 16
.LBB7_18:                               # %.preheader.i21
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_19 Depth 2
	vreplgr2vr.d	$vr11, $a5
	move	$a7, $a3
	vori.b	$vr12, $vr9, 0
	vori.b	$vr13, $vr8, 0
	.p2align	4, , 16
.LBB7_19:                               # %vector.body101
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmul.d	$vr14, $vr12, $vr11
	vmul.d	$vr15, $vr13, $vr11
	vpickev.w	$vr14, $vr15, $vr14
	vmuh.wu	$vr15, $vr14, $vr0
	vsub.w	$vr16, $vr14, $vr15
	vsrli.w	$vr16, $vr16, 1
	vadd.w	$vr15, $vr16, $vr15
	vsrli.w	$vr15, $vr15, 2
	vmsub.w	$vr14, $vr15, $vr1
	vaddi.wu	$vr14, $vr14, 1
	add.d	$t0, $a6, $a7
	vadd.d	$vr15, $vr12, $vr11
	vadd.d	$vr16, $vr13, $vr11
	vpickev.w	$vr15, $vr16, $vr15
	vmul.w	$vr16, $vr15, $vr2
	vsle.wu	$vr16, $vr16, $vr3
	vmul.w	$vr17, $vr15, $vr4
	vsle.wu	$vr17, $vr17, $vr5
	vor.v	$vr16, $vr16, $vr17
	vmul.w	$vr15, $vr15, $vr6
	vsle.wu	$vr15, $vr15, $vr7
	vor.v	$vr15, $vr15, $vr16
	vbitsel.v	$vr14, $vr14, $vr10, $vr15
	vstx	$vr14, $t0, $s2
	vaddi.du	$vr12, $vr12, 4
	addi.d	$a7, $a7, 16
	vaddi.du	$vr13, $vr13, 4
	bnez	$a7, .LBB7_19
# %bb.20:                               # %middle.block106
                                        #   in Loop: Header=BB7_18 Depth=1
	addi.d	$a5, $a5, 1
	add.d	$a6, $a6, $s2
	bne	$a5, $a4, .LBB7_18
# %bb.21:                               # %.preheader34.i32.preheader
	move	$a3, $zero
	add.d	$a4, $s0, $s1
	addi.d	$a5, $s0, 16
	ori	$a6, $a0, 1088
	ori	$a7, $zero, 2800
	move	$t0, $s0
	b	.LBB7_23
	.p2align	4, , 16
.LBB7_22:                               #   in Loop: Header=BB7_23 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$t0, $t0, $s2
	beq	$a3, $a7, .LBB7_30
.LBB7_23:                               # %.preheader34.i32
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_25 Depth 2
                                        #       Child Loop BB7_29 Depth 3
                                        #       Child Loop BB7_27 Depth 3
	move	$t1, $zero
	alsl.d	$t2, $a3, $s0, 2
	add.d	$t3, $t2, $a2
	mul.d	$t4, $a3, $s2
	add.d	$t4, $s0, $t4
	sltu	$t3, $s0, $t3
	sltu	$t2, $t2, $a4
	and	$t2, $t3, $t2
	add.d	$t3, $t4, $s2
	sltu	$t3, $s0, $t3
	sltu	$t4, $t4, $a4
	and	$t3, $t3, $t4
	or	$t2, $t2, $t3
	move	$t3, $s0
	move	$t4, $a5
	b	.LBB7_25
	.p2align	4, , 16
.LBB7_24:                               # %middle.block131
                                        #   in Loop: Header=BB7_25 Depth=2
	addi.d	$t1, $t1, 1
	add.d	$t4, $t4, $s2
	add.d	$t3, $t3, $s2
	beq	$t1, $a7, .LBB7_22
.LBB7_25:                               # %.preheader.i34
                                        #   Parent Loop BB7_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_29 Depth 3
                                        #       Child Loop BB7_27 Depth 3
	mul.d	$t5, $t1, $s2
	add.d	$t5, $s0, $t5
	alsl.d	$t5, $a3, $t5, 2
	beqz	$t2, .LBB7_28
# %bb.26:                               # %scalar.ph120.preheader
                                        #   in Loop: Header=BB7_25 Depth=2
	move	$t6, $a6
	.p2align	4, , 16
.LBB7_27:                               # %scalar.ph120
                                        #   Parent Loop BB7_23 Depth=1
                                        #     Parent Loop BB7_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t7, $t3, $t6
	ld.w	$t8, $t5, 0
	add.d	$s1, $t0, $t6
	ldx.w	$s1, $s1, $s2
	ldptr.w	$s3, $t7, 11200
	add.w	$t8, $s1, $t8
	slt	$s1, $s3, $t8
	masknez	$t8, $t8, $s1
	maskeqz	$s1, $s3, $s1
	or	$t8, $s1, $t8
	addi.d	$t6, $t6, 4
	stptr.w	$t8, $t7, 11200
	bnez	$t6, .LBB7_27
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_28:                               # %vector.body122.preheader
                                        #   in Loop: Header=BB7_25 Depth=2
	vldrepl.w	$vr0, $t5, 0
	ori	$t5, $a0, 1088
	.p2align	4, , 16
.LBB7_29:                               # %vector.body122
                                        #   Parent Loop BB7_23 Depth=1
                                        #     Parent Loop BB7_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t6, $t4, $t5
	ori	$t7, $a1, 2992
	add.d	$t8, $t0, $t5
	vldx	$vr1, $t8, $s2
	ori	$s1, $a1, 3024
	vldx	$vr2, $t8, $s1
	vldx	$vr3, $t6, $t7
	vldx	$vr4, $t6, $s2
	vadd.w	$vr1, $vr1, $vr0
	vadd.w	$vr2, $vr2, $vr0
	vmin.w	$vr1, $vr3, $vr1
	vmin.w	$vr2, $vr4, $vr2
	vstx	$vr1, $t6, $t7
	addi.d	$t5, $t5, 32
	vstx	$vr2, $t6, $s2
	bnez	$t5, .LBB7_29
	b	.LBB7_24
.LBB7_30:                               # %.preheader.i44.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI7_2)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI7_2)
	move	$a1, $zero
	move	$a2, $zero
	ori	$a0, $a0, 1088
	ori	$a4, $zero, 2800
	.p2align	4, , 16
.LBB7_31:                               # %.preheader.i44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_32 Depth 2
	move	$a3, $zero
	add.d	$a5, $s0, $a1
	add.d	$a6, $fp, $a1
	move	$a7, $a0
	.p2align	4, , 16
.LBB7_32:                               #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	ldptr.w	$t0, $t0, 11200
	add.d	$t1, $a5, $a7
	ldptr.w	$t1, $t1, 11200
	movgr2fr.w	$fa1, $t0
	ffint.d.w	$fa1, $fa1
	movgr2fr.w	$fa2, $t1
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_40
# %bb.33:                               # %.critedge.i
                                        #   in Loop: Header=BB7_32 Depth=2
	addi.d	$a7, $a7, 4
	addi.w	$a3, $a3, 1
	bnez	$a7, .LBB7_32
# %bb.34:                               #   in Loop: Header=BB7_31 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a1, $a1, $s2
	bne	$a2, $a4, .LBB7_31
# %bb.35:                               # %check_FP.exit
	lu12i.w	$s3, 10
	ori	$a0, $s3, 3841
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI7_3)
	vld	$vr5, $a1, %pc_lo12(.LCPI7_3)
	pcalau12i	$a1, %pc_hi20(.LCPI7_4)
	vld	$vr6, $a1, %pc_lo12(.LCPI7_4)
	pcalau12i	$a1, %pc_hi20(.LCPI7_5)
	vld	$vr7, $a1, %pc_lo12(.LCPI7_5)
	pcalau12i	$a1, %pc_hi20(.LCPI7_6)
	vld	$vr8, $a1, %pc_lo12(.LCPI7_6)
	move	$s1, $a0
	ori	$s3, $s3, 3840
	stx.b	$zero, $a0, $s3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s4, $a0, %got_pc_lo12(stderr)
	move	$s5, $zero
	ori	$s6, $zero, 2800
	move	$s7, $s0
	vst	$vr5, $sp, 64                   # 16-byte Folded Spill
	vst	$vr6, $sp, 48                   # 16-byte Folded Spill
	vst	$vr7, $sp, 32                   # 16-byte Folded Spill
	vst	$vr8, $sp, 16                   # 16-byte Folded Spill
.LBB7_36:                               # %.preheader.i51
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_37 Depth 2
	move	$a0, $zero
	move	$a1, $s7
	.p2align	4, , 16
.LBB7_37:                               #   Parent Loop BB7_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vsrl.d	$vr1, $vr0, $vr5
	vsrl.d	$vr2, $vr0, $vr6
	vsrl.d	$vr3, $vr0, $vr7
	vsrl.d	$vr0, $vr0, $vr8
	vpickve2gr.d	$a2, $vr0, 0
	vinsgr2vr.b	$vr4, $a2, 0
	vpickve2gr.d	$a2, $vr0, 1
	vinsgr2vr.b	$vr4, $a2, 1
	vpickve2gr.d	$a2, $vr3, 0
	vinsgr2vr.b	$vr4, $a2, 2
	vpickve2gr.d	$a2, $vr3, 1
	vinsgr2vr.b	$vr4, $a2, 3
	vpickve2gr.d	$a2, $vr2, 0
	vinsgr2vr.b	$vr4, $a2, 4
	vpickve2gr.d	$a2, $vr2, 1
	vinsgr2vr.b	$vr4, $a2, 5
	vpickve2gr.d	$a2, $vr1, 0
	vinsgr2vr.b	$vr4, $a2, 6
	vpickve2gr.d	$a2, $vr1, 1
	vinsgr2vr.b	$vr4, $a2, 7
	vandi.b	$vr0, $vr4, 15
	vori.b	$vr0, $vr0, 48
	vilvl.b	$vr0, $vr0, $vr0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 4
	bne	$a0, $s3, .LBB7_37
# %bb.38:                               #   in Loop: Header=BB7_36 Depth=1
	ld.d	$a1, $s4, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 16                   # 16-byte Folded Reload
	vld	$vr7, $sp, 32                   # 16-byte Folded Reload
	vld	$vr6, $sp, 48                   # 16-byte Folded Reload
	vld	$vr5, $sp, 64                   # 16-byte Folded Reload
	addi.d	$s5, $s5, 1
	add.d	$s7, $s7, $s2
	bne	$s5, $s6, .LBB7_36
# %bb.39:                               # %print_array.exit
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
	b	.LBB7_41
.LBB7_40:                               # %check_FP.exit.thread
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
.LBB7_41:
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB7_42:
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
