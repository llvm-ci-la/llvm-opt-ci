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
.LCPI7_2:
	.dword	48                              # 0x30
	.dword	56                              # 0x38
.LCPI7_3:
	.dword	32                              # 0x20
	.dword	40                              # 0x28
.LCPI7_4:
	.dword	16                              # 0x10
	.dword	24                              # 0x18
.LCPI7_5:
	.dword	0                               # 0x0
	.dword	8                               # 0x8
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI7_1:
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
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	st.d	$zero, $sp, 80
	lu12i.w	$a0, 7812
	ori	$s0, $a0, 2048
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 80
	beqz	$fp, .LBB7_36
# %bb.1:
	bnez	$a0, .LBB7_36
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 80
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 80
	beqz	$s0, .LBB7_36
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_36
# %bb.4:                                # %polybench_alloc_data.exit18
	move	$a1, $zero
	pcalau12i	$a6, %pc_hi20(.LCPI7_0)
	vld	$vr0, $a6, %pc_lo12(.LCPI7_0)
	lu12i.w	$a0, -4
	ori	$a2, $a0, 384
	ori	$a3, $zero, 0
	lu32i.d	$a3, -49152
	lu52i.d	$a3, $a3, 1033
	vreplgr2vr.d	$vr1, $a3
	lu12i.w	$a4, 3
	ori	$s2, $a4, 3712
	ori	$a5, $a4, 3728
	ori	$a3, $zero, 2000
	move	$a7, $fp
	.p2align	4, , 16
.LBB7_5:                                # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
	vreplgr2vr.d	$vr2, $a1
	move	$t0, $a2
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
	vpickve2gr.w	$t1, $vr4, 1
	bstrpick.d	$t1, $t1, 31, 0
	movgr2fr.d	$fa6, $t1
	ffint.d.l	$fa6, $fa6
	vpickve2gr.w	$t1, $vr4, 0
	bstrpick.d	$t1, $t1, 31, 0
	movgr2fr.d	$fa4, $t1
	ffint.d.l	$fa4, $fa4
	vextrins.d	$vr4, $vr6, 16
	vpickve2gr.w	$t1, $vr5, 1
	bstrpick.d	$t1, $t1, 31, 0
	movgr2fr.d	$fa6, $t1
	ffint.d.l	$fa6, $fa6
	vpickve2gr.w	$t1, $vr5, 0
	bstrpick.d	$t1, $t1, 31, 0
	movgr2fr.d	$fa5, $t1
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr6, 16
	vfdiv.d	$vr4, $vr4, $vr1
	vfdiv.d	$vr5, $vr5, $vr1
	add.d	$t1, $a7, $t0
	vstx	$vr4, $t1, $s2
	addi.d	$t0, $t0, 32
	vstx	$vr5, $t1, $a5
	bnez	$t0, .LBB7_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB7_5 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a7, $a7, $s2
	bne	$a1, $a3, .LBB7_5
# %bb.8:                                # %.preheader41.i.preheader
	move	$t0, $zero
	lu12i.w	$s3, 7
	ori	$t1, $s3, 3344
	ori	$a7, $a0, 384
	ori	$a1, $a0, 392
	ori	$a2, $a4, 3720
	ori	$t2, $a0, 400
	ori	$a3, $a0, 368
	ori	$a4, $a4, 3696
	vldi	$vr0, -990
	ori	$t3, $zero, 1999
	ori	$t4, $zero, 500
	.p2align	4, , 16
.LBB7_9:                                # %.preheader41.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
                                        #       Child Loop BB7_11 Depth 3
	ori	$t5, $zero, 1
	move	$t6, $t1
	.p2align	4, , 16
.LBB7_10:                               # %.preheader.i19
                                        #   Parent Loop BB7_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_11 Depth 3
	mul.d	$t7, $t5, $s2
	add.d	$t8, $fp, $t7
	fldx.d	$fa5, $t8, $a7
	fldx.d	$fa3, $t8, $a1
	fldx.d	$fa6, $fp, $t7
	fld.d	$fa1, $t8, 8
	fldx.d	$fa4, $t8, $s2
	fldx.d	$fa2, $t8, $a2
	add.d	$t7, $fp, $t6
	move	$t8, $t2
	.p2align	4, , 16
.LBB7_11:                               #   Parent Loop BB7_9 Depth=1
                                        #     Parent Loop BB7_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fmov.d	$fa7, $fa3
	add.d	$s1, $t7, $t8
	fldx.d	$fa3, $s1, $a3
	fadd.d	$fa5, $fa7, $fa5
	fadd.d	$fa5, $fa5, $fa3
	fadd.d	$fa5, $fa6, $fa5
	fadd.d	$fa5, $fa1, $fa5
	fld.d	$fa1, $s1, -16
	fmov.d	$fa6, $fa2
	fldx.d	$fa2, $s1, $a4
	fadd.d	$fa5, $fa1, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fadd.d	$ft0, $fa6, $fa4
	fmov.d	$fa4, $fa6
	fmov.d	$fa5, $fa7
	fadd.d	$fa6, $fa2, $ft0
	fdiv.d	$fa6, $fa6, $fa0
	addi.d	$t8, $t8, 8
	fst.d	$fa6, $s1, -24
	bnez	$t8, .LBB7_11
# %bb.12:                               #   in Loop: Header=BB7_10 Depth=2
	addi.d	$t5, $t5, 1
	add.d	$t6, $t6, $s2
	bne	$t5, $t3, .LBB7_10
# %bb.13:                               #   in Loop: Header=BB7_9 Depth=1
	addi.w	$t0, $t0, 1
	bne	$t0, $t4, .LBB7_9
# %bb.14:                               # %.preheader.i23.preheader
	move	$t0, $zero
	vld	$vr0, $a6, %pc_lo12(.LCPI7_0)
	ori	$a6, $zero, 0
	lu32i.d	$a6, -49152
	lu52i.d	$a6, $a6, 1033
	vreplgr2vr.d	$vr1, $a6
	ori	$a6, $zero, 2000
	move	$t1, $s0
	.p2align	4, , 16
.LBB7_15:                               # %.preheader.i23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
	vreplgr2vr.d	$vr2, $t0
	move	$t2, $a7
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
	vpickve2gr.w	$t3, $vr4, 1
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$fa6, $t3
	ffint.d.l	$fa6, $fa6
	vpickve2gr.w	$t3, $vr4, 0
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$fa4, $t3
	ffint.d.l	$fa4, $fa4
	vextrins.d	$vr4, $vr6, 16
	vpickve2gr.w	$t3, $vr5, 1
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$fa6, $t3
	ffint.d.l	$fa6, $fa6
	vpickve2gr.w	$t3, $vr5, 0
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$fa5, $t3
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr6, 16
	vfdiv.d	$vr4, $vr4, $vr1
	vfdiv.d	$vr5, $vr5, $vr1
	add.d	$t3, $t1, $t2
	vstx	$vr4, $t3, $s2
	addi.d	$t2, $t2, 32
	vstx	$vr5, $t3, $a5
	bnez	$t2, .LBB7_16
# %bb.17:                               # %middle.block94
                                        #   in Loop: Header=BB7_15 Depth=1
	addi.d	$t0, $t0, 1
	add.d	$t1, $t1, $s2
	bne	$t0, $a6, .LBB7_15
# %bb.18:                               # %.preheader41.i31.preheader
	move	$a6, $zero
	ori	$a7, $s3, 3344
	ori	$a5, $a0, 384
	ori	$a0, $a0, 400
	vldi	$vr0, -990
	ori	$t0, $zero, 1999
	ori	$t1, $zero, 500
	.p2align	4, , 16
.LBB7_19:                               # %.preheader41.i31
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_20 Depth 2
                                        #       Child Loop BB7_21 Depth 3
	ori	$t2, $zero, 1
	move	$t3, $a7
	.p2align	4, , 16
.LBB7_20:                               # %.preheader.i33
                                        #   Parent Loop BB7_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_21 Depth 3
	mul.d	$t4, $t2, $s2
	add.d	$t5, $s0, $t4
	fldx.d	$fa5, $t5, $a5
	fldx.d	$fa3, $t5, $a1
	fldx.d	$fa6, $s0, $t4
	fld.d	$fa1, $t5, 8
	fldx.d	$fa4, $t5, $s2
	fldx.d	$fa2, $t5, $a2
	add.d	$t4, $s0, $t3
	move	$t5, $a0
	.p2align	4, , 16
.LBB7_21:                               #   Parent Loop BB7_19 Depth=1
                                        #     Parent Loop BB7_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fmov.d	$fa7, $fa3
	add.d	$t6, $t4, $t5
	fldx.d	$fa3, $t6, $a3
	fadd.d	$fa5, $fa7, $fa5
	fadd.d	$fa5, $fa5, $fa3
	fadd.d	$fa5, $fa6, $fa5
	fadd.d	$fa5, $fa1, $fa5
	fld.d	$fa1, $t6, -16
	fmov.d	$fa6, $fa2
	fldx.d	$fa2, $t6, $a4
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
	addi.w	$a6, $a6, 1
	bne	$a6, $t1, .LBB7_19
# %bb.24:                               # %.preheader.i50.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_1)
	move	$a0, $zero
	move	$a2, $zero
	ori	$a1, $zero, 2000
	.p2align	4, , 16
.LBB7_25:                               # %.preheader.i50
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_26 Depth 2
	move	$a3, $zero
	add.d	$a4, $s0, $a0
	add.d	$a6, $fp, $a0
	move	$a7, $a5
	.p2align	4, , 16
.LBB7_26:                               #   Parent Loop BB7_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	fldx.d	$fa1, $t0, $s2
	add.d	$t0, $a4, $a7
	fldx.d	$fa2, $t0, $s2
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_34
# %bb.27:                               # %.critedge.i
                                        #   in Loop: Header=BB7_26 Depth=2
	addi.d	$a7, $a7, 8
	addi.w	$a3, $a3, 1
	bnez	$a7, .LBB7_26
# %bb.28:                               #   in Loop: Header=BB7_25 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a0, $a0, $s2
	bne	$a2, $a1, .LBB7_25
# %bb.29:                               # %check_FP.exit
	ori	$a0, $s3, 3329
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$s3, $s3, 3328
	pcalau12i	$a0, %pc_hi20(.LCPI7_2)
	vld	$vr5, $a0, %pc_lo12(.LCPI7_2)
	pcalau12i	$a0, %pc_hi20(.LCPI7_3)
	vld	$vr6, $a0, %pc_lo12(.LCPI7_3)
	pcalau12i	$a0, %pc_hi20(.LCPI7_4)
	vld	$vr7, $a0, %pc_lo12(.LCPI7_4)
	pcalau12i	$a0, %pc_hi20(.LCPI7_5)
	vld	$vr8, $a0, %pc_lo12(.LCPI7_5)
	stx.b	$zero, $s1, $s3
	lu12i.w	$a0, -8
	ori	$s4, $a0, 768
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s5, $a0, %got_pc_lo12(stderr)
	move	$s6, $zero
	ori	$s7, $zero, 2000
	move	$s8, $s0
	vst	$vr5, $sp, 64                   # 16-byte Folded Spill
	vst	$vr6, $sp, 48                   # 16-byte Folded Spill
	vst	$vr7, $sp, 32                   # 16-byte Folded Spill
	vst	$vr8, $sp, 16                   # 16-byte Folded Spill
.LBB7_30:                               # %.preheader.i54
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_31 Depth 2
	move	$a0, $s8
	move	$a1, $s4
	.p2align	4, , 16
.LBB7_31:                               #   Parent Loop BB7_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 0
	add.d	$a3, $s1, $a1
	vreplgr2vr.d	$vr0, $a2
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
	vstx	$vr0, $a3, $s3
	addi.d	$a1, $a1, 16
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB7_31
# %bb.32:                               #   in Loop: Header=BB7_30 Depth=1
	ld.d	$a1, $s5, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 16                   # 16-byte Folded Reload
	vld	$vr7, $sp, 32                   # 16-byte Folded Reload
	vld	$vr6, $sp, 48                   # 16-byte Folded Reload
	vld	$vr5, $sp, 64                   # 16-byte Folded Reload
	addi.d	$s6, $s6, 1
	add.d	$s8, $s8, $s2
	bne	$s6, $s7, .LBB7_30
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
.LBB7_35:
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
