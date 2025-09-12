	.file	"heat-3d.c"
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
	.dword	0x405e000000000000              # double 120
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
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	st.d	$zero, $sp, 80
	lu12i.w	$a1, 1
	lu12i.w	$a2, 3375
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 80
	beqz	$fp, .LBB7_38
# %bb.1:
	bnez	$a0, .LBB7_38
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 80
	lu12i.w	$a1, 1
	lu12i.w	$a2, 3375
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 80
	beqz	$s0, .LBB7_38
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_38
# %bb.4:                                # %polybench_alloc_data.exit12
	st.d	$zero, $sp, 80
	lu12i.w	$a1, 1
	lu12i.w	$a2, 3375
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 80
	beqz	$s1, .LBB7_38
# %bb.5:                                # %polybench_alloc_data.exit12
	bnez	$a0, .LBB7_38
# %bb.6:                                # %polybench_alloc_data.exit14
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $zero
	sub.d	$a1, $fp, $s1
	addi.d	$a2, $s1, 16
	ori	$a3, $zero, 120
	ori	$a4, $zero, 31
	vldi	$vr0, -988
	pcalau12i	$a5, %pc_hi20(.LCPI7_1)
	fld.d	$fa1, $a5, %pc_lo12(.LCPI7_1)
	ori	$a6, $zero, 960
	lu12i.w	$a5, 28
	ori	$s3, $a5, 512
	move	$a7, $s1
	ori	$t0, $zero, 120
	move	$t1, $fp
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_7:                                #   in Loop: Header=BB7_8 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a2, $a2, $s3
	add.d	$t1, $t1, $s3
	addi.w	$t0, $t0, 1
	add.d	$a7, $a7, $s3
	beq	$a0, $a3, .LBB7_15
.LBB7_8:                                # %.preheader24.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
                                        #       Child Loop BB7_14 Depth 3
                                        #       Child Loop BB7_12 Depth 3
	move	$t2, $zero
	addi.d	$t3, $a0, 120
	move	$t4, $a7
	move	$t5, $t0
	move	$t6, $t1
	move	$t7, $a2
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_9:                                # %middle.block
                                        #   in Loop: Header=BB7_10 Depth=2
	addi.d	$t2, $t2, 1
	addi.d	$t7, $t7, 960
	addi.d	$t6, $t6, 960
	addi.w	$t5, $t5, 1
	addi.d	$t4, $t4, 960
	beq	$t2, $a3, .LBB7_7
.LBB7_10:                               # %.preheader.i
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_14 Depth 3
                                        #       Child Loop BB7_12 Depth 3
	bltu	$a4, $a1, .LBB7_13
# %bb.11:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_10 Depth=2
	move	$t8, $zero
	move	$s0, $t5
	.p2align	4, , 16
.LBB7_12:                               # %scalar.ph
                                        #   Parent Loop BB7_8 Depth=1
                                        #     Parent Loop BB7_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa2, $s0
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fdiv.d	$fa2, $fa2, $fa1
	fstx.d	$fa2, $t4, $t8
	fstx.d	$fa2, $t6, $t8
	addi.d	$t8, $t8, 8
	addi.w	$s0, $s0, -1
	bne	$t8, $a6, .LBB7_12
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_13:                               # %vector.ph
                                        #   in Loop: Header=BB7_10 Depth=2
	pcalau12i	$t8, %pc_hi20(.LCPI7_0)
	vld	$vr2, $t8, %pc_lo12(.LCPI7_0)
	move	$t8, $zero
	add.d	$s0, $t3, $t2
	vreplgr2vr.d	$vr3, $s0
	.p2align	4, , 16
.LBB7_14:                               # %vector.body
                                        #   Parent Loop BB7_8 Depth=1
                                        #     Parent Loop BB7_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vsub.d	$vr4, $vr3, $vr2
	vsubi.du	$vr5, $vr4, 2
	vffint.d.l	$vr4, $vr4
	vffint.d.l	$vr5, $vr5
	ori	$s0, $zero, 0
	lu32i.d	$s0, 262144
	lu52i.d	$s0, $s0, 1026
	vreplgr2vr.d	$vr6, $s0
	vfmul.d	$vr4, $vr4, $vr6
	vfmul.d	$vr5, $vr5, $vr6
	ori	$s0, $zero, 0
	lu32i.d	$s0, -131072
	lu52i.d	$s0, $s0, 1029
	vreplgr2vr.d	$vr6, $s0
	vfdiv.d	$vr4, $vr4, $vr6
	vfdiv.d	$vr5, $vr5, $vr6
	add.d	$s0, $t7, $t8
	vst	$vr4, $s0, -16
	vstx	$vr5, $t7, $t8
	add.d	$s0, $t6, $t8
	vstx	$vr4, $t6, $t8
	vst	$vr5, $s0, 16
	addi.d	$t8, $t8, 32
	vaddi.du	$vr2, $vr2, 4
	bne	$t8, $a6, .LBB7_14
	b	.LBB7_9
.LBB7_15:                               # %.preheader117.i.preheader
	lu12i.w	$a0, 56
	ori	$a1, $a0, 1992
	add.d	$a2, $fp, $a1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	ori	$a2, $a5, 1480
	add.d	$a3, $s1, $a2
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	ori	$a3, $a5, 520
	add.d	$a4, $fp, $a3
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	ori	$a4, $a5, 1472
	add.d	$a5, $fp, $a4
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	add.d	$a1, $s1, $a1
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a1, $fp, $a2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.d	$a1, $s1, $a3
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	add.d	$t1, $s1, $a4
	ori	$t2, $zero, 1
	lu12i.w	$a1, 84
	ori	$t3, $a1, 568
	vldi	$vr0, -896
	vldi	$vr1, -960
	ori	$t4, $zero, 944
	ori	$t5, $zero, 119
	lu52i.d	$a1, $zero, -1024
	vreplgr2vr.d	$vr2, $a1
	lu52i.d	$a1, $zero, 1020
	vreplgr2vr.d	$vr3, $a1
	b	.LBB7_17
	.p2align	4, , 16
.LBB7_16:                               #   in Loop: Header=BB7_17 Depth=1
	addi.w	$t2, $t2, 1
	ori	$a1, $zero, 501
	beq	$t2, $a1, .LBB7_31
.LBB7_17:                               # %.preheader117.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_19 Depth 2
                                        #       Child Loop BB7_21 Depth 3
                                        #         Child Loop BB7_23 Depth 4
                                        #         Child Loop BB7_22 Depth 4
                                        #     Child Loop BB7_26 Depth 2
                                        #       Child Loop BB7_28 Depth 3
                                        #         Child Loop BB7_30 Depth 4
                                        #         Child Loop BB7_29 Depth 4
	move	$t8, $zero
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $fp
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	ori	$s8, $zero, 1
	b	.LBB7_19
	.p2align	4, , 16
.LBB7_18:                               #   in Loop: Header=BB7_19 Depth=2
	addi.d	$s8, $s8, 1
	addi.d	$t8, $t8, 1
	add.d	$t6, $t6, $s3
	add.d	$a3, $a3, $s3
	add.d	$a4, $a4, $s3
	add.d	$a1, $a1, $s3
	add.d	$a5, $a5, $s3
	beq	$s8, $t5, .LBB7_24
.LBB7_19:                               # %.preheader115.i
                                        #   Parent Loop BB7_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_21 Depth 3
                                        #         Child Loop BB7_23 Depth 4
                                        #         Child Loop BB7_22 Depth 4
	mul.d	$a6, $t8, $s3
	add.d	$s0, $s1, $a6
	add.d	$s2, $s0, $a2
	ori	$t7, $a0, 56
	add.d	$s0, $s0, $t7
	add.d	$a6, $fp, $a6
	addi.d	$s4, $a6, 968
	add.d	$a6, $a6, $t3
	sltu	$a6, $s2, $a6
	sltu	$s0, $s4, $s0
	and	$s0, $a6, $s0
	ori	$ra, $zero, 1
	move	$s2, $a5
	move	$s4, $a1
	move	$s5, $a4
	move	$s6, $a3
	move	$s7, $t6
	b	.LBB7_21
	.p2align	4, , 16
.LBB7_20:                               # %middle.block67
                                        #   in Loop: Header=BB7_21 Depth=3
	addi.d	$ra, $ra, 1
	addi.d	$s7, $s7, 960
	addi.d	$s6, $s6, 960
	addi.d	$s5, $s5, 960
	addi.d	$s4, $s4, 960
	addi.d	$s2, $s2, 960
	beq	$ra, $t5, .LBB7_18
.LBB7_21:                               # %.preheader113.i
                                        #   Parent Loop BB7_17 Depth=1
                                        #     Parent Loop BB7_19 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_23 Depth 4
                                        #         Child Loop BB7_22 Depth 4
	move	$a6, $zero
	beqz	$s0, .LBB7_23
	.p2align	4, , 16
.LBB7_22:                               # %scalar.ph54
                                        #   Parent Loop BB7_17 Depth=1
                                        #     Parent Loop BB7_19 Depth=2
                                        #       Parent Loop BB7_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa4, $s7, $a6
	add.d	$a7, $s2, $a6
	fld.d	$fa5, $a7, 8
	add.d	$t0, $s4, $a6
	fld.d	$fa6, $t0, 968
	fld.d	$fa7, $a7, 968
	fld.d	$ft0, $a7, -952
	fmadd.d	$fa4, $fa5, $fa0, $fa4
	fadd.d	$fa4, $fa4, $fa6
	fmadd.d	$fa6, $fa5, $fa0, $fa7
	fadd.d	$fa6, $fa6, $ft0
	fld.d	$fa7, $a7, 16
	fldx.d	$ft0, $s2, $a6
	fmul.d	$fa6, $fa6, $fa1
	fmadd.d	$fa4, $fa4, $fa1, $fa6
	fmadd.d	$fa6, $fa5, $fa0, $fa7
	fadd.d	$fa6, $fa6, $ft0
	fmadd.d	$fa4, $fa6, $fa1, $fa4
	fadd.d	$fa4, $fa5, $fa4
	fstx.d	$fa4, $s6, $a6
	addi.d	$a6, $a6, 8
	bne	$a6, $t4, .LBB7_22
	b	.LBB7_20
	.p2align	4, , 16
.LBB7_23:                               # %vector.body56
                                        #   Parent Loop BB7_17 Depth=1
                                        #     Parent Loop BB7_19 Depth=2
                                        #       Parent Loop BB7_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vldx	$vr4, $s7, $a6
	add.d	$a7, $s5, $a6
	vld	$vr5, $a7, 960
	add.d	$t0, $s4, $a6
	vld	$vr6, $t0, 968
	vld	$vr7, $a7, 1920
	vldx	$vr8, $s5, $a6
	vfmadd.d	$vr4, $vr5, $vr2, $vr4
	vfadd.d	$vr4, $vr4, $vr6
	vfmadd.d	$vr6, $vr5, $vr2, $vr7
	vfadd.d	$vr6, $vr6, $vr8
	vld	$vr7, $a7, 968
	vld	$vr8, $a7, 952
	vfmul.d	$vr6, $vr6, $vr3
	vfmadd.d	$vr4, $vr4, $vr3, $vr6
	vfmadd.d	$vr6, $vr5, $vr2, $vr7
	vfadd.d	$vr6, $vr6, $vr8
	vfmadd.d	$vr4, $vr6, $vr3, $vr4
	vfadd.d	$vr4, $vr5, $vr4
	vstx	$vr4, $s6, $a6
	addi.d	$a6, $a6, 16
	bne	$a6, $t4, .LBB7_23
	b	.LBB7_20
	.p2align	4, , 16
.LBB7_24:                               # %.preheader114.i.preheader
                                        #   in Loop: Header=BB7_17 Depth=1
	move	$t8, $zero
	ori	$s2, $zero, 1
	move	$s4, $t1
	move	$s5, $s1
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	b	.LBB7_26
	.p2align	4, , 16
.LBB7_25:                               #   in Loop: Header=BB7_26 Depth=2
	addi.d	$s2, $s2, 1
	addi.d	$t8, $t8, 1
	add.d	$s8, $s8, $s3
	add.d	$s7, $s7, $s3
	add.d	$s6, $s6, $s3
	add.d	$s5, $s5, $s3
	add.d	$s4, $s4, $s3
	beq	$s2, $t5, .LBB7_16
.LBB7_26:                               # %.preheader114.i
                                        #   Parent Loop BB7_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_28 Depth 3
                                        #         Child Loop BB7_30 Depth 4
                                        #         Child Loop BB7_29 Depth 4
	mul.d	$a1, $t8, $s3
	add.d	$a3, $fp, $a1
	add.d	$a4, $a3, $a2
	add.d	$a3, $a3, $t7
	add.d	$a1, $s1, $a1
	addi.d	$a5, $a1, 968
	add.d	$a1, $a1, $t3
	sltu	$a1, $a4, $a1
	sltu	$a3, $a5, $a3
	and	$s0, $a1, $a3
	move	$a5, $s4
	move	$a1, $s5
	move	$a4, $s6
	move	$a3, $s7
	move	$t6, $s8
	ori	$ra, $zero, 1
	b	.LBB7_28
	.p2align	4, , 16
.LBB7_27:                               # %middle.block42
                                        #   in Loop: Header=BB7_28 Depth=3
	addi.d	$ra, $ra, 1
	addi.d	$t6, $t6, 960
	addi.d	$a3, $a3, 960
	addi.d	$a4, $a4, 960
	addi.d	$a1, $a1, 960
	addi.d	$a5, $a5, 960
	beq	$ra, $t5, .LBB7_25
.LBB7_28:                               # %.preheader.i18
                                        #   Parent Loop BB7_17 Depth=1
                                        #     Parent Loop BB7_26 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_30 Depth 4
                                        #         Child Loop BB7_29 Depth 4
	move	$a6, $zero
	beqz	$s0, .LBB7_30
	.p2align	4, , 16
.LBB7_29:                               # %scalar.ph31
                                        #   Parent Loop BB7_17 Depth=1
                                        #     Parent Loop BB7_26 Depth=2
                                        #       Parent Loop BB7_28 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa4, $t6, $a6
	add.d	$a7, $a5, $a6
	fld.d	$fa5, $a7, 8
	add.d	$t0, $a1, $a6
	fld.d	$fa6, $t0, 968
	fld.d	$fa7, $a7, 968
	fld.d	$ft0, $a7, -952
	fmadd.d	$fa4, $fa5, $fa0, $fa4
	fadd.d	$fa4, $fa4, $fa6
	fmadd.d	$fa6, $fa5, $fa0, $fa7
	fadd.d	$fa6, $fa6, $ft0
	fld.d	$fa7, $a7, 16
	fldx.d	$ft0, $a5, $a6
	fmul.d	$fa6, $fa6, $fa1
	fmadd.d	$fa4, $fa4, $fa1, $fa6
	fmadd.d	$fa6, $fa5, $fa0, $fa7
	fadd.d	$fa6, $fa6, $ft0
	fmadd.d	$fa4, $fa6, $fa1, $fa4
	fadd.d	$fa4, $fa5, $fa4
	fstx.d	$fa4, $a3, $a6
	addi.d	$a6, $a6, 8
	bne	$a6, $t4, .LBB7_29
	b	.LBB7_27
	.p2align	4, , 16
.LBB7_30:                               # %vector.body33
                                        #   Parent Loop BB7_17 Depth=1
                                        #     Parent Loop BB7_26 Depth=2
                                        #       Parent Loop BB7_28 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vldx	$vr4, $t6, $a6
	add.d	$a7, $a4, $a6
	vld	$vr5, $a7, 960
	add.d	$t0, $a1, $a6
	vld	$vr6, $t0, 968
	vld	$vr7, $a7, 1920
	vldx	$vr8, $a4, $a6
	vfmadd.d	$vr4, $vr5, $vr2, $vr4
	vfadd.d	$vr4, $vr4, $vr6
	vfmadd.d	$vr6, $vr5, $vr2, $vr7
	vfadd.d	$vr6, $vr6, $vr8
	vld	$vr7, $a7, 968
	vld	$vr8, $a7, 952
	vfmul.d	$vr6, $vr6, $vr3
	vfmadd.d	$vr4, $vr4, $vr3, $vr6
	vfmadd.d	$vr6, $vr5, $vr2, $vr7
	vfadd.d	$vr6, $vr6, $vr8
	vfmadd.d	$vr4, $vr6, $vr3, $vr4
	vfadd.d	$vr4, $vr5, $vr4
	vstx	$vr4, $a3, $a6
	addi.d	$a6, $a6, 16
	bne	$a6, $t4, .LBB7_30
	b	.LBB7_27
.LBB7_31:                               # %kernel_heat_3d.exit
	ori	$a0, $zero, 1921
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.b	$zero, $a0, 1920
	ori	$s4, $zero, 3
	ori	$s5, $zero, 1920
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	move	$s6, $zero
	move	$s8, $zero
	.p2align	4, , 16
.LBB7_32:                               # %.preheader22.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_33 Depth 2
                                        #       Child Loop BB7_34 Depth 3
	move	$s0, $zero
	move	$s7, $s6
.LBB7_33:                               # %.preheader.i19
                                        #   Parent Loop BB7_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_34 Depth 3
	move	$a0, $zero
	move	$a1, $s7
	.p2align	4, , 16
.LBB7_34:                               #   Parent Loop BB7_32 Depth=1
                                        #     Parent Loop BB7_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a2, $fp, $a1
	srli.d	$a3, $a2, 8
	srli.d	$a4, $a2, 16
	srli.d	$a5, $a2, 24
	srli.d	$a6, $a2, 32
	srli.d	$a7, $a2, 40
	srli.d	$t0, $a2, 48
	srli.d	$t1, $a2, 56
	bstrins.d	$a2, $s4, 63, 4
	add.d	$t2, $s2, $a0
	stx.b	$a2, $s2, $a0
	st.b	$a2, $t2, 1
	bstrins.d	$a3, $s4, 63, 4
	st.b	$a3, $t2, 2
	st.b	$a3, $t2, 3
	bstrins.d	$a4, $s4, 63, 4
	st.b	$a4, $t2, 4
	st.b	$a4, $t2, 5
	bstrins.d	$a5, $s4, 63, 4
	st.b	$a5, $t2, 6
	st.b	$a5, $t2, 7
	bstrins.d	$a6, $s4, 63, 4
	st.b	$a6, $t2, 8
	st.b	$a6, $t2, 9
	bstrins.d	$a7, $s4, 63, 4
	st.b	$a7, $t2, 10
	st.b	$a7, $t2, 11
	bstrins.d	$t0, $s4, 63, 4
	st.b	$t0, $t2, 12
	st.b	$t0, $t2, 13
	bstrins.d	$t1, $s4, 63, 4
	st.b	$t1, $t2, 14
	st.b	$t1, $t2, 15
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 8
	bne	$a0, $s5, .LBB7_34
# %bb.35:                               #   in Loop: Header=BB7_33 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
	addi.d	$s7, $s7, 960
	ori	$a0, $zero, 120
	bne	$s0, $a0, .LBB7_33
# %bb.36:                               #   in Loop: Header=BB7_32 Depth=1
	addi.d	$s8, $s8, 1
	add.d	$s6, $s6, $s3
	ori	$a0, $zero, 120
	bne	$s8, $a0, .LBB7_32
# %bb.37:                               # %print_array.exit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
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
.LBB7_38:
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
