	.file	"seidel-2d.c"
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
	lu12i.w	$a0, 7812
	ori	$s0, $a0, 2048
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16
	beqz	$fp, .LBB7_36
# %bb.1:
	bnez	$a0, .LBB7_36
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 16
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 16
	beqz	$s0, .LBB7_36
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_36
# %bb.4:                                # %polybench_alloc_data.exit18
	move	$a0, $zero
	pcalau12i	$a5, %pc_hi20(.LCPI7_0)
	vld	$vr0, $a5, %pc_lo12(.LCPI7_0)
	lu12i.w	$s3, -4
	ori	$a1, $s3, 384
	ori	$a2, $zero, 0
	lu32i.d	$a2, -49152
	lu52i.d	$a2, $a2, 1033
	vreplgr2vr.d	$vr1, $a2
	lu12i.w	$a3, 3
	ori	$s2, $a3, 3712
	ori	$a4, $a3, 3728
	ori	$a2, $zero, 2000
	move	$a6, $fp
	.p2align	4, , 16
.LBB7_5:                                # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
	vreplgr2vr.d	$vr2, $a0
	move	$a7, $a1
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB7_6:                                # %vector.body
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr4, $vr3, 2
	vaddi.du	$vr3, $vr3, 4
	vmul.d	$vr4, $vr4, $vr2
	vmul.d	$vr5, $vr3, $vr2
	vshuf4i.w	$vr4, $vr4, 8
	vshuf4i.w	$vr5, $vr5, 8
	vaddi.wu	$vr4, $vr4, 2
	vaddi.wu	$vr5, $vr5, 2
	vpickve2gr.w	$t0, $vr4, 1
	bstrpick.d	$t0, $t0, 31, 0
	movgr2fr.d	$fa6, $t0
	ffint.d.l	$fa6, $fa6
	vpickve2gr.w	$t0, $vr4, 0
	bstrpick.d	$t0, $t0, 31, 0
	movgr2fr.d	$fa4, $t0
	ffint.d.l	$fa4, $fa4
	vextrins.d	$vr4, $vr6, 16
	vpickve2gr.w	$t0, $vr5, 1
	bstrpick.d	$t0, $t0, 31, 0
	movgr2fr.d	$fa6, $t0
	ffint.d.l	$fa6, $fa6
	vpickve2gr.w	$t0, $vr5, 0
	bstrpick.d	$t0, $t0, 31, 0
	movgr2fr.d	$fa5, $t0
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr6, 16
	vfdiv.d	$vr4, $vr4, $vr1
	vfdiv.d	$vr5, $vr5, $vr1
	add.d	$t0, $a6, $a7
	vstx	$vr4, $t0, $s2
	addi.d	$a7, $a7, 32
	vstx	$vr5, $t0, $a4
	bnez	$a7, .LBB7_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB7_5 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a6, $a6, $s2
	bne	$a0, $a2, .LBB7_5
# %bb.8:                                # %.preheader41.i.preheader
	move	$a7, $zero
	lu12i.w	$s4, 7
	ori	$t0, $s4, 3344
	ori	$a6, $s3, 384
	ori	$a0, $s3, 392
	ori	$a1, $a3, 3720
	ori	$t1, $s3, 400
	ori	$a2, $s3, 368
	ori	$a3, $a3, 3696
	vldi	$vr0, -990
	ori	$t2, $zero, 1999
	ori	$t3, $zero, 500
	.p2align	4, , 16
.LBB7_9:                                # %.preheader41.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
                                        #       Child Loop BB7_11 Depth 3
	ori	$t4, $zero, 1
	move	$t5, $t0
	.p2align	4, , 16
.LBB7_10:                               # %.preheader.i19
                                        #   Parent Loop BB7_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_11 Depth 3
	mul.d	$t6, $t4, $s2
	add.d	$t7, $fp, $t6
	fldx.d	$fa5, $t7, $a6
	fldx.d	$fa3, $t7, $a0
	fldx.d	$fa6, $fp, $t6
	fld.d	$fa1, $t7, 8
	fldx.d	$fa4, $t7, $s2
	fldx.d	$fa2, $t7, $a1
	add.d	$t6, $fp, $t5
	move	$t7, $t1
	.p2align	4, , 16
.LBB7_11:                               #   Parent Loop BB7_9 Depth=1
                                        #     Parent Loop BB7_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fmov.d	$fa7, $fa3
	add.d	$t8, $t6, $t7
	fldx.d	$fa3, $t8, $a2
	fadd.d	$fa5, $fa7, $fa5
	fadd.d	$fa5, $fa5, $fa3
	fadd.d	$fa5, $fa6, $fa5
	fadd.d	$fa5, $fa1, $fa5
	fld.d	$fa1, $t8, -16
	fmov.d	$fa6, $fa2
	fldx.d	$fa2, $t8, $a3
	fadd.d	$fa5, $fa1, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fadd.d	$ft0, $fa6, $fa4
	fmov.d	$fa4, $fa6
	fmov.d	$fa5, $fa7
	fadd.d	$fa6, $fa2, $ft0
	fdiv.d	$fa6, $fa6, $fa0
	addi.d	$t7, $t7, 8
	fst.d	$fa6, $t8, -24
	bnez	$t7, .LBB7_11
# %bb.12:                               #   in Loop: Header=BB7_10 Depth=2
	addi.d	$t4, $t4, 1
	add.d	$t5, $t5, $s2
	bne	$t4, $t2, .LBB7_10
# %bb.13:                               #   in Loop: Header=BB7_9 Depth=1
	addi.w	$a7, $a7, 1
	bne	$a7, $t3, .LBB7_9
# %bb.14:                               # %.preheader.i23.preheader
	move	$a7, $zero
	vld	$vr0, $a5, %pc_lo12(.LCPI7_0)
	ori	$a5, $zero, 0
	lu32i.d	$a5, -49152
	lu52i.d	$a5, $a5, 1033
	vreplgr2vr.d	$vr1, $a5
	ori	$a5, $zero, 2000
	move	$t0, $s0
	.p2align	4, , 16
.LBB7_15:                               # %.preheader.i23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
	vreplgr2vr.d	$vr2, $a7
	move	$t1, $a6
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB7_16:                               # %vector.body88
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr4, $vr3, 2
	vaddi.du	$vr3, $vr3, 4
	vmul.d	$vr4, $vr4, $vr2
	vmul.d	$vr5, $vr3, $vr2
	vshuf4i.w	$vr4, $vr4, 8
	vshuf4i.w	$vr5, $vr5, 8
	vaddi.wu	$vr4, $vr4, 2
	vaddi.wu	$vr5, $vr5, 2
	vpickve2gr.w	$t2, $vr4, 1
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa6, $t2
	ffint.d.l	$fa6, $fa6
	vpickve2gr.w	$t2, $vr4, 0
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa4, $t2
	ffint.d.l	$fa4, $fa4
	vextrins.d	$vr4, $vr6, 16
	vpickve2gr.w	$t2, $vr5, 1
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa6, $t2
	ffint.d.l	$fa6, $fa6
	vpickve2gr.w	$t2, $vr5, 0
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa5, $t2
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr6, 16
	vfdiv.d	$vr4, $vr4, $vr1
	vfdiv.d	$vr5, $vr5, $vr1
	add.d	$t2, $t0, $t1
	vstx	$vr4, $t2, $s2
	addi.d	$t1, $t1, 32
	vstx	$vr5, $t2, $a4
	bnez	$t1, .LBB7_16
# %bb.17:                               # %middle.block94
                                        #   in Loop: Header=BB7_15 Depth=1
	addi.d	$a7, $a7, 1
	add.d	$t0, $t0, $s2
	bne	$a7, $a5, .LBB7_15
# %bb.18:                               # %.preheader41.i31.preheader
	move	$a5, $zero
	ori	$a6, $s4, 3344
	ori	$a4, $s3, 384
	ori	$a7, $s3, 400
	vldi	$vr0, -990
	ori	$t0, $zero, 1999
	ori	$t1, $zero, 500
	.p2align	4, , 16
.LBB7_19:                               # %.preheader41.i31
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_20 Depth 2
                                        #       Child Loop BB7_21 Depth 3
	ori	$t2, $zero, 1
	move	$t3, $a6
	.p2align	4, , 16
.LBB7_20:                               # %.preheader.i33
                                        #   Parent Loop BB7_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_21 Depth 3
	mul.d	$t4, $t2, $s2
	add.d	$t5, $s0, $t4
	fldx.d	$fa5, $t5, $a4
	fldx.d	$fa3, $t5, $a0
	fldx.d	$fa6, $s0, $t4
	fld.d	$fa1, $t5, 8
	fldx.d	$fa4, $t5, $s2
	fldx.d	$fa2, $t5, $a1
	add.d	$t4, $s0, $t3
	move	$t5, $a7
	.p2align	4, , 16
.LBB7_21:                               #   Parent Loop BB7_19 Depth=1
                                        #     Parent Loop BB7_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fmov.d	$fa7, $fa3
	add.d	$t6, $t4, $t5
	fldx.d	$fa3, $t6, $a2
	fadd.d	$fa5, $fa7, $fa5
	fadd.d	$fa5, $fa5, $fa3
	fadd.d	$fa5, $fa6, $fa5
	fadd.d	$fa5, $fa1, $fa5
	fld.d	$fa1, $t6, -16
	fmov.d	$fa6, $fa2
	fldx.d	$fa2, $t6, $a3
	fadd.d	$fa5, $fa1, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fadd.d	$ft0, $fa6, $fa4
	fmov.d	$fa4, $fa6
	fmov.d	$fa5, $fa7
	fadd.d	$fa6, $fa2, $ft0
	fdiv.d	$fa6, $fa6, $fa0
	addi.d	$t5, $t5, 8
	fst.d	$fa6, $t6, -24
	bnez	$t5, .LBB7_21
# %bb.22:                               #   in Loop: Header=BB7_20 Depth=2
	addi.d	$t2, $t2, 1
	add.d	$t3, $t3, $s2
	bne	$t2, $t0, .LBB7_20
# %bb.23:                               #   in Loop: Header=BB7_19 Depth=1
	addi.w	$a5, $a5, 1
	bne	$a5, $t1, .LBB7_19
# %bb.24:                               # %.preheader.i50.preheader
	move	$a0, $zero
	move	$a2, $zero
	lu12i.w	$a1, -487882
	ori	$a1, $a1, 2289
	lu32i.d	$a1, 325813
	lu52i.d	$a1, $a1, 1006
	movgr2fr.d	$fa0, $a1
	ori	$a5, $zero, 2000
	.p2align	4, , 16
.LBB7_25:                               # %.preheader.i50
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_26 Depth 2
	move	$a3, $zero
	add.d	$a6, $s0, $a0
	add.d	$a7, $fp, $a0
	move	$t0, $a4
	.p2align	4, , 16
.LBB7_26:                               #   Parent Loop BB7_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t1, $a7, $t0
	fldx.d	$fa1, $t1, $s2
	add.d	$t1, $a6, $t0
	fldx.d	$fa2, $t1, $s2
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_34
# %bb.27:                               # %.critedge.i
                                        #   in Loop: Header=BB7_26 Depth=2
	addi.d	$t0, $t0, 8
	addi.w	$a3, $a3, 1
	bnez	$t0, .LBB7_26
# %bb.28:                               #   in Loop: Header=BB7_25 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a0, $a0, $s2
	bne	$a2, $a5, .LBB7_25
# %bb.29:                               # %check_FP.exit
	ori	$a0, $s4, 3329
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $s4, 3328
	stx.b	$zero, $s1, $a0
	addi.d	$s4, $s1, 7
	ori	$s3, $s3, 384
	ori	$s5, $zero, 3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s6, $a0, %got_pc_lo12(stderr)
	move	$s7, $zero
	move	$s8, $zero
.LBB7_30:                               # %.preheader.i54
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_31 Depth 2
	add.d	$a0, $s0, $s7
	move	$a1, $s4
	move	$a2, $s3
	.p2align	4, , 16
.LBB7_31:                               #   Parent Loop BB7_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a0, $a2
	ldptr.d	$a3, $a3, 16000
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
	bnez	$a2, .LBB7_31
# %bb.32:                               #   in Loop: Header=BB7_30 Depth=1
	ld.d	$a1, $s6, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, 1
	add.d	$s7, $s7, $s2
	ori	$a0, $zero, 2000
	bne	$s8, $a0, .LBB7_30
# %bb.33:                               # %print_array.exit
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
	b	.LBB7_35
.LBB7_34:                               # %check_FP.exit.thread
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
.LBB7_35:
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
.LBB7_36:
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
