	.file	"jacobi-2d.c"
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
	.dword	0x4094500000000000              # double 1300
.LCPI7_2:
	.dword	0x3fc999999999999a              # double 0.20000000000000001
.LCPI7_3:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	st.d	$zero, $sp, 48
	lu12i.w	$s2, 3300
	ori	$s1, $s2, 3200
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 48
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 48
	beqz	$fp, .LBB7_60
# %bb.1:
	bnez	$a0, .LBB7_60
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 48
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 48
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 48
	beqz	$s0, .LBB7_60
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_60
# %bb.4:                                # %polybench_alloc_data.exit23
	st.d	$zero, $sp, 48
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 48
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 48
	beqz	$s1, .LBB7_60
# %bb.5:                                # %polybench_alloc_data.exit23
	bnez	$a0, .LBB7_60
# %bb.6:                                # %polybench_alloc_data.exit25
	move	$a0, $zero
	move	$a1, $zero
	sub.d	$a2, $s1, $fp
	ori	$a4, $zero, 3
	ori	$a5, $zero, 2
	ori	$a6, $zero, 15
	lu12i.w	$s4, -3
	ori	$a7, $s4, 1888
	pcalau12i	$a3, %pc_hi20(.LCPI7_1)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI7_1)
	lu12i.w	$t3, 2
	ori	$s3, $t3, 2208
	ori	$t0, $zero, 1300
	pcalau12i	$a3, %pc_hi20(.LCPI7_0)
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	vld	$vr1, $a3, %pc_lo12(.LCPI7_0)
	ori	$a3, $zero, 0
	lu32i.d	$a3, 282624
	lu52i.d	$a3, $a3, 1033
	vreplgr2vr.d	$vr2, $a3
	move	$t1, $fp
	move	$t2, $s1
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_7:                                # %middle.block
                                        #   in Loop: Header=BB7_8 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$t2, $t2, $s3
	add.d	$t1, $t1, $s3
	addi.w	$a4, $a4, 3
	addi.d	$a0, $a0, 1
	addi.w	$a5, $a5, 2
	beq	$a1, $t0, .LBB7_13
.LBB7_8:                                # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
                                        #     Child Loop BB7_10 Depth 2
	bltu	$a6, $a2, .LBB7_11
# %bb.9:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_8 Depth=1
	move	$a3, $zero
	move	$t4, $a7
	.p2align	4, , 16
.LBB7_10:                               # %scalar.ph
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t5, $a5, $a3
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa3, $t5
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	add.d	$t5, $t1, $t4
	fstx.d	$fa3, $t5, $s3
	add.d	$t5, $a4, $a3
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa3, $t5
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	add.d	$t5, $t2, $t4
	fstx.d	$fa3, $t5, $s3
	addi.d	$t4, $t4, 8
	add.w	$a3, $a3, $a0
	bnez	$t4, .LBB7_10
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_11:                               # %vector.ph
                                        #   in Loop: Header=BB7_8 Depth=1
	vreplgr2vr.d	$vr3, $a1
	move	$a3, $a7
	vori.b	$vr4, $vr1, 0
	.p2align	4, , 16
.LBB7_12:                               # %vector.body
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr5, $vr4, 3
	vaddi.du	$vr4, $vr4, 2
	vmul.d	$vr6, $vr4, $vr3
	vshuf4i.w	$vr6, $vr6, 8
	vaddi.wu	$vr6, $vr6, 2
	vpickve2gr.w	$t4, $vr6, 1
	bstrpick.d	$t4, $t4, 31, 0
	movgr2fr.d	$fa7, $t4
	ffint.d.l	$fa7, $fa7
	vpickve2gr.w	$t4, $vr6, 0
	bstrpick.d	$t4, $t4, 31, 0
	movgr2fr.d	$fa6, $t4
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr7, 16
	vfdiv.d	$vr6, $vr6, $vr2
	add.d	$t4, $t1, $a3
	vstx	$vr6, $t4, $s3
	vmul.d	$vr5, $vr5, $vr3
	vshuf4i.w	$vr5, $vr5, 8
	vaddi.wu	$vr5, $vr5, 3
	vpickve2gr.w	$t4, $vr5, 1
	bstrpick.d	$t4, $t4, 31, 0
	movgr2fr.d	$fa6, $t4
	ffint.d.l	$fa6, $fa6
	vpickve2gr.w	$t4, $vr5, 0
	bstrpick.d	$t4, $t4, 31, 0
	movgr2fr.d	$fa5, $t4
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr6, 16
	vfdiv.d	$vr5, $vr5, $vr2
	add.d	$t4, $t2, $a3
	addi.d	$a3, $a3, 16
	vstx	$vr5, $t4, $s3
	bnez	$a3, .LBB7_12
	b	.LBB7_7
.LBB7_13:                               # %.preheader57.i.preheader
	move	$t4, $zero
	ori	$a5, $t3, 2216
	add.d	$t5, $fp, $a5
	lu12i.w	$a0, 3298
	ori	$a7, $a0, 984
	add.d	$a0, $fp, $a7
	addi.d	$a3, $s1, 8
	ori	$t0, $s2, 3192
	add.d	$a6, $s1, $t0
	add.d	$a4, $s1, $a5
	add.d	$t1, $s1, $a7
	addi.d	$a1, $fp, 8
	add.d	$a2, $fp, $t0
	sltu	$a2, $a4, $a2
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	sltu	$a1, $a1, $t1
	and	$t7, $a2, $a1
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	sltu	$a1, $t5, $a6
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	sltu	$a0, $a3, $a0
	and	$t8, $a1, $a0
	lu12i.w	$a0, 5
	ori	$t2, $a0, 328
	add.d	$a3, $fp, $t2
	add.d	$s6, $s1, $t2
	ori	$s7, $s4, 1904
	ori	$s8, $zero, 1299
	lu12i.w	$a0, -419431
	ori	$a0, $a0, 2458
	lu32i.d	$a0, -419431
	lu52i.d	$a0, $a0, 1020
	vreplgr2vr.d	$vr1, $a0
	ori	$ra, $zero, 500
	pcalau12i	$a2, %pc_hi20(.LCPI7_2)
	b	.LBB7_15
	.p2align	4, , 16
.LBB7_14:                               #   in Loop: Header=BB7_15 Depth=1
	addi.w	$t4, $t4, 1
	beq	$t4, $ra, .LBB7_27
.LBB7_15:                               # %.preheader57.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_17 Depth 2
                                        #       Child Loop BB7_21 Depth 3
                                        #       Child Loop BB7_19 Depth 3
                                        #     Child Loop BB7_24 Depth 2
                                        #       Child Loop BB7_26 Depth 3
                                        #       Child Loop BB7_25 Depth 3
	ori	$s5, $zero, 1
	move	$s2, $a3
	move	$t6, $a4
	b	.LBB7_17
	.p2align	4, , 16
.LBB7_16:                               # %middle.block124
                                        #   in Loop: Header=BB7_17 Depth=2
	addi.d	$s5, $s5, 1
	add.d	$t6, $t6, $s3
	add.d	$s2, $s2, $s3
	beq	$s5, $s8, .LBB7_22
.LBB7_17:                               # %.preheader55.i
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_21 Depth 3
                                        #       Child Loop BB7_19 Depth 3
	ori	$a0, $t3, 2192
	ori	$a1, $s4, 1872
	beqz	$t7, .LBB7_20
# %bb.18:                               # %scalar.ph113.preheader
                                        #   in Loop: Header=BB7_17 Depth=2
	move	$a6, $s7
	.p2align	4, , 16
.LBB7_19:                               # %scalar.ph113
                                        #   Parent Loop BB7_15 Depth=1
                                        #     Parent Loop BB7_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t1, $s2, $a6
	fld.d	$fa2, $t1, -16
	fld.d	$fa3, $t1, -24
	fadd.d	$fa2, $fa2, $fa3
	fld.d	$fa3, $t1, -8
	fldx.d	$fa4, $t1, $a0
	fldx.d	$fa5, $t1, $a1
	fld.d	$fa6, $a2, %pc_lo12(.LCPI7_2)
	fadd.d	$fa2, $fa2, $fa3
	fadd.d	$fa2, $fa2, $fa4
	fadd.d	$fa2, $fa2, $fa5
	fmul.d	$fa2, $fa2, $fa6
	add.d	$t1, $t6, $a6
	addi.d	$a6, $a6, 8
	fstx.d	$fa2, $t1, $a0
	bnez	$a6, .LBB7_19
	b	.LBB7_16
	.p2align	4, , 16
.LBB7_20:                               # %vector.body115.preheader
                                        #   in Loop: Header=BB7_17 Depth=2
	ori	$a6, $s4, 1904
	.p2align	4, , 16
.LBB7_21:                               # %vector.body115
                                        #   Parent Loop BB7_15 Depth=1
                                        #     Parent Loop BB7_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t1, $s2, $a6
	vld	$vr2, $t1, -16
	vld	$vr3, $t1, -24
	vld	$vr4, $t1, -8
	vldx	$vr5, $t1, $a0
	vldx	$vr6, $t1, $a1
	vfadd.d	$vr2, $vr2, $vr3
	vfadd.d	$vr2, $vr2, $vr4
	vfadd.d	$vr2, $vr2, $vr5
	vfadd.d	$vr2, $vr2, $vr6
	vfmul.d	$vr2, $vr2, $vr1
	add.d	$t1, $t6, $a6
	addi.d	$a6, $a6, 16
	vstx	$vr2, $t1, $a0
	bnez	$a6, .LBB7_21
	b	.LBB7_16
	.p2align	4, , 16
.LBB7_22:                               # %.preheader.i29.preheader
                                        #   in Loop: Header=BB7_15 Depth=1
	ori	$t6, $zero, 1
	move	$s2, $s6
	move	$s5, $t5
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_23:                               # %middle.block103
                                        #   in Loop: Header=BB7_24 Depth=2
	addi.d	$t6, $t6, 1
	add.d	$s5, $s5, $s3
	add.d	$s2, $s2, $s3
	beq	$t6, $s8, .LBB7_14
.LBB7_24:                               # %.preheader.i29
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_26 Depth 3
                                        #       Child Loop BB7_25 Depth 3
	ori	$a6, $s4, 1904
	beqz	$t8, .LBB7_26
	.p2align	4, , 16
.LBB7_25:                               # %scalar.ph94
                                        #   Parent Loop BB7_15 Depth=1
                                        #     Parent Loop BB7_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t1, $s2, $a6
	fld.d	$fa2, $t1, -16
	fld.d	$fa3, $t1, -24
	fadd.d	$fa2, $fa2, $fa3
	fld.d	$fa3, $t1, -8
	fldx.d	$fa4, $t1, $a0
	fldx.d	$fa5, $t1, $a1
	fld.d	$fa6, $a2, %pc_lo12(.LCPI7_2)
	fadd.d	$fa2, $fa2, $fa3
	fadd.d	$fa2, $fa2, $fa4
	fadd.d	$fa2, $fa2, $fa5
	fmul.d	$fa2, $fa2, $fa6
	add.d	$t1, $s5, $a6
	addi.d	$a6, $a6, 8
	fstx.d	$fa2, $t1, $a0
	bnez	$a6, .LBB7_25
	b	.LBB7_23
	.p2align	4, , 16
.LBB7_26:                               # %vector.body96
                                        #   Parent Loop BB7_15 Depth=1
                                        #     Parent Loop BB7_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t1, $s2, $a6
	vld	$vr2, $t1, -16
	vld	$vr3, $t1, -24
	vld	$vr4, $t1, -8
	vldx	$vr5, $t1, $a0
	vldx	$vr6, $t1, $a1
	vfadd.d	$vr2, $vr2, $vr3
	vfadd.d	$vr2, $vr2, $vr4
	vfadd.d	$vr2, $vr2, $vr5
	vfadd.d	$vr2, $vr2, $vr6
	vfmul.d	$vr2, $vr2, $vr1
	add.d	$t1, $s5, $a6
	addi.d	$a6, $a6, 16
	vstx	$vr2, $t1, $a0
	bnez	$a6, .LBB7_26
	b	.LBB7_23
.LBB7_27:                               # %.preheader.i30.preheader
	move	$t3, $zero
	move	$t4, $zero
	sub.d	$t5, $s1, $s0
	ori	$t6, $zero, 3
	ori	$t7, $zero, 2
	ori	$t8, $zero, 15
	ori	$s2, $s4, 1888
	ori	$s6, $zero, 1300
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	vld	$vr2, $a3, %pc_lo12(.LCPI7_0)
	ori	$a3, $zero, 0
	lu32i.d	$a3, 282624
	lu52i.d	$a3, $a3, 1033
	vreplgr2vr.d	$vr3, $a3
	move	$a3, $s0
	move	$s7, $s1
	b	.LBB7_29
	.p2align	4, , 16
.LBB7_28:                               # %middle.block137
                                        #   in Loop: Header=BB7_29 Depth=1
	addi.d	$t4, $t4, 1
	add.d	$s7, $s7, $s3
	add.d	$a3, $a3, $s3
	addi.w	$t6, $t6, 3
	addi.d	$t3, $t3, 1
	addi.w	$t7, $t7, 2
	beq	$t4, $s6, .LBB7_34
.LBB7_29:                               # %.preheader.i30
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_33 Depth 2
                                        #     Child Loop BB7_31 Depth 2
	bltu	$t8, $t5, .LBB7_32
# %bb.30:                               # %scalar.ph128.preheader
                                        #   in Loop: Header=BB7_29 Depth=1
	move	$a4, $zero
	move	$a6, $s2
	.p2align	4, , 16
.LBB7_31:                               # %scalar.ph128
                                        #   Parent Loop BB7_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t1, $t7, $a4
	bstrpick.d	$t1, $t1, 31, 0
	movgr2fr.d	$fa4, $t1
	ffint.d.l	$fa4, $fa4
	fdiv.d	$fa4, $fa4, $fa0
	add.d	$t1, $a3, $a6
	fstx.d	$fa4, $t1, $s3
	add.d	$t1, $t6, $a4
	bstrpick.d	$t1, $t1, 31, 0
	movgr2fr.d	$fa4, $t1
	ffint.d.l	$fa4, $fa4
	fdiv.d	$fa4, $fa4, $fa0
	add.d	$t1, $s7, $a6
	fstx.d	$fa4, $t1, $s3
	addi.d	$a6, $a6, 8
	add.w	$a4, $a4, $t3
	bnez	$a6, .LBB7_31
	b	.LBB7_28
	.p2align	4, , 16
.LBB7_32:                               # %vector.ph129
                                        #   in Loop: Header=BB7_29 Depth=1
	vreplgr2vr.d	$vr4, $t4
	move	$a4, $s2
	vori.b	$vr5, $vr2, 0
	.p2align	4, , 16
.LBB7_33:                               # %vector.body132
                                        #   Parent Loop BB7_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr6, $vr5, 3
	vaddi.du	$vr5, $vr5, 2
	vmul.d	$vr7, $vr5, $vr4
	vshuf4i.w	$vr7, $vr7, 8
	vaddi.wu	$vr7, $vr7, 2
	vpickve2gr.w	$a6, $vr7, 1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$ft0, $a6
	ffint.d.l	$ft0, $ft0
	vpickve2gr.w	$a6, $vr7, 0
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa7, $a6
	ffint.d.l	$fa7, $fa7
	vextrins.d	$vr7, $vr8, 16
	vfdiv.d	$vr7, $vr7, $vr3
	add.d	$a6, $a3, $a4
	vstx	$vr7, $a6, $s3
	vmul.d	$vr6, $vr6, $vr4
	vshuf4i.w	$vr6, $vr6, 8
	vaddi.wu	$vr6, $vr6, 3
	vpickve2gr.w	$a6, $vr6, 1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa7, $a6
	ffint.d.l	$fa7, $fa7
	vpickve2gr.w	$a6, $vr6, 0
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa6, $a6
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr7, 16
	vfdiv.d	$vr6, $vr6, $vr3
	add.d	$a6, $s7, $a4
	addi.d	$a4, $a4, 16
	vstx	$vr6, $a6, $s3
	bnez	$a4, .LBB7_33
	b	.LBB7_28
.LBB7_34:                               # %.preheader57.i38.preheader
	move	$a3, $zero
	add.d	$t3, $s0, $a5
	add.d	$a4, $s0, $a7
	add.d	$a5, $s1, $a5
	addi.d	$a6, $s0, 8
	add.d	$a7, $s0, $t0
	sltu	$a7, $a5, $a7
	ld.d	$t0, $sp, 16                    # 8-byte Folded Reload
	sltu	$a6, $a6, $t0
	and	$a7, $a7, $a6
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	sltu	$a6, $t3, $a6
	ld.d	$t0, $sp, 32                    # 8-byte Folded Reload
	sltu	$a4, $t0, $a4
	and	$a4, $a6, $a4
	add.d	$a6, $s0, $t2
	add.d	$t0, $s1, $t2
	ori	$t1, $s4, 1904
	ori	$t2, $zero, 1299
	ori	$t4, $zero, 500
	b	.LBB7_36
	.p2align	4, , 16
.LBB7_35:                               #   in Loop: Header=BB7_36 Depth=1
	addi.w	$a3, $a3, 1
	beq	$a3, $t4, .LBB7_48
.LBB7_36:                               # %.preheader57.i38
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_38 Depth 2
                                        #       Child Loop BB7_42 Depth 3
                                        #       Child Loop BB7_40 Depth 3
                                        #     Child Loop BB7_45 Depth 2
                                        #       Child Loop BB7_47 Depth 3
                                        #       Child Loop BB7_46 Depth 3
	ori	$t5, $zero, 1
	move	$t6, $a6
	move	$t7, $a5
	b	.LBB7_38
	.p2align	4, , 16
.LBB7_37:                               # %middle.block179
                                        #   in Loop: Header=BB7_38 Depth=2
	addi.d	$t5, $t5, 1
	add.d	$t7, $t7, $s3
	add.d	$t6, $t6, $s3
	beq	$t5, $t2, .LBB7_43
.LBB7_38:                               # %.preheader55.i40
                                        #   Parent Loop BB7_36 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_42 Depth 3
                                        #       Child Loop BB7_40 Depth 3
	beqz	$a7, .LBB7_41
# %bb.39:                               # %scalar.ph168.preheader
                                        #   in Loop: Header=BB7_38 Depth=2
	move	$t8, $t1
	.p2align	4, , 16
.LBB7_40:                               # %scalar.ph168
                                        #   Parent Loop BB7_36 Depth=1
                                        #     Parent Loop BB7_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s2, $t6, $t8
	fld.d	$fa0, $s2, -16
	fld.d	$fa2, $s2, -24
	fadd.d	$fa0, $fa0, $fa2
	fld.d	$fa2, $s2, -8
	fldx.d	$fa3, $s2, $a0
	fldx.d	$fa4, $s2, $a1
	fld.d	$fa5, $a2, %pc_lo12(.LCPI7_2)
	fadd.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa0, $fa3
	fadd.d	$fa0, $fa0, $fa4
	fmul.d	$fa0, $fa0, $fa5
	add.d	$s2, $t7, $t8
	addi.d	$t8, $t8, 8
	fstx.d	$fa0, $s2, $a0
	bnez	$t8, .LBB7_40
	b	.LBB7_37
	.p2align	4, , 16
.LBB7_41:                               # %vector.body170.preheader
                                        #   in Loop: Header=BB7_38 Depth=2
	ori	$t8, $s4, 1904
	.p2align	4, , 16
.LBB7_42:                               # %vector.body170
                                        #   Parent Loop BB7_36 Depth=1
                                        #     Parent Loop BB7_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s2, $t6, $t8
	vld	$vr0, $s2, -16
	vld	$vr2, $s2, -24
	vld	$vr3, $s2, -8
	vldx	$vr4, $s2, $a0
	vldx	$vr5, $s2, $a1
	vfadd.d	$vr0, $vr0, $vr2
	vfadd.d	$vr0, $vr0, $vr3
	vfadd.d	$vr0, $vr0, $vr4
	vfadd.d	$vr0, $vr0, $vr5
	vfmul.d	$vr0, $vr0, $vr1
	add.d	$s2, $t7, $t8
	addi.d	$t8, $t8, 16
	vstx	$vr0, $s2, $a0
	bnez	$t8, .LBB7_42
	b	.LBB7_37
	.p2align	4, , 16
.LBB7_43:                               # %.preheader.i47.preheader
                                        #   in Loop: Header=BB7_36 Depth=1
	ori	$t5, $zero, 1
	move	$t6, $t0
	move	$t7, $t3
	b	.LBB7_45
	.p2align	4, , 16
.LBB7_44:                               # %middle.block158
                                        #   in Loop: Header=BB7_45 Depth=2
	addi.d	$t5, $t5, 1
	add.d	$t7, $t7, $s3
	add.d	$t6, $t6, $s3
	beq	$t5, $t2, .LBB7_35
.LBB7_45:                               # %.preheader.i47
                                        #   Parent Loop BB7_36 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_47 Depth 3
                                        #       Child Loop BB7_46 Depth 3
	ori	$t8, $s4, 1904
	beqz	$a4, .LBB7_47
	.p2align	4, , 16
.LBB7_46:                               # %scalar.ph147
                                        #   Parent Loop BB7_36 Depth=1
                                        #     Parent Loop BB7_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s2, $t6, $t8
	fld.d	$fa0, $s2, -16
	fld.d	$fa2, $s2, -24
	fadd.d	$fa0, $fa0, $fa2
	fld.d	$fa2, $s2, -8
	fldx.d	$fa3, $s2, $a0
	fldx.d	$fa4, $s2, $a1
	fld.d	$fa5, $a2, %pc_lo12(.LCPI7_2)
	fadd.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa0, $fa3
	fadd.d	$fa0, $fa0, $fa4
	fmul.d	$fa0, $fa0, $fa5
	add.d	$s2, $t7, $t8
	addi.d	$t8, $t8, 8
	fstx.d	$fa0, $s2, $a0
	bnez	$t8, .LBB7_46
	b	.LBB7_44
	.p2align	4, , 16
.LBB7_47:                               # %vector.body149
                                        #   Parent Loop BB7_36 Depth=1
                                        #     Parent Loop BB7_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s2, $t6, $t8
	vld	$vr0, $s2, -16
	vld	$vr2, $s2, -24
	vld	$vr3, $s2, -8
	vldx	$vr4, $s2, $a0
	vldx	$vr5, $s2, $a1
	vfadd.d	$vr0, $vr0, $vr2
	vfadd.d	$vr0, $vr0, $vr3
	vfadd.d	$vr0, $vr0, $vr4
	vfadd.d	$vr0, $vr0, $vr5
	vfmul.d	$vr0, $vr0, $vr1
	add.d	$s2, $t7, $t8
	addi.d	$t8, $t8, 16
	vstx	$vr0, $s2, $a0
	bnez	$t8, .LBB7_47
	b	.LBB7_44
.LBB7_48:                               # %.preheader.i55.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_3)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_3)
	move	$a0, $zero
	move	$a2, $zero
	ori	$a1, $s4, 1888
	ori	$a4, $zero, 1300
	.p2align	4, , 16
.LBB7_49:                               # %.preheader.i55
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_50 Depth 2
	move	$a3, $zero
	add.d	$a5, $s0, $a0
	add.d	$a6, $fp, $a0
	move	$a7, $a1
	.p2align	4, , 16
.LBB7_50:                               #   Parent Loop BB7_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	fldx.d	$fa1, $t0, $s3
	add.d	$t0, $a5, $a7
	fldx.d	$fa2, $t0, $s3
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_58
# %bb.51:                               # %.critedge.i
                                        #   in Loop: Header=BB7_50 Depth=2
	addi.d	$a7, $a7, 8
	addi.w	$a3, $a3, 1
	bnez	$a7, .LBB7_50
# %bb.52:                               #   in Loop: Header=BB7_49 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a0, $a0, $s3
	bne	$a2, $a4, .LBB7_49
# %bb.53:                               # %check_FP.exit
	lu12i.w	$s5, 5
	ori	$a0, $s5, 321
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $s5, 320
	stx.b	$zero, $s2, $a0
	addi.d	$a0, $s2, 7
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$s4, $s4, 1888
	ori	$s6, $zero, 3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s7, $a0, %got_pc_lo12(stderr)
	move	$s8, $zero
	move	$s5, $zero
.LBB7_54:                               # %.preheader.i59
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_55 Depth 2
	add.d	$a0, $s0, $s8
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $s4
	.p2align	4, , 16
.LBB7_55:                               #   Parent Loop BB7_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a0, $a2
	ldptr.d	$a3, $a3, 10400
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
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB7_55
# %bb.56:                               #   in Loop: Header=BB7_54 Depth=1
	ld.d	$a1, $s7, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	add.d	$s8, $s8, $s3
	ori	$a0, $zero, 1300
	bne	$s5, $a0, .LBB7_54
# %bb.57:                               # %print_array.exit
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
	b	.LBB7_59
.LBB7_58:                               # %check_FP.exit.thread
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
.LBB7_59:
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
