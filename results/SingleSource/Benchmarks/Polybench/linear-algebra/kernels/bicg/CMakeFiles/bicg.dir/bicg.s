	.file	"bicg.c"
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
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI7_1:
	.dword	0x40a0680000000000              # double 2100
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI7_2:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
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
	st.d	$zero, $sp, 16
	lu12i.w	$a0, 7792
	ori	$a2, $a0, 3968
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16
	beqz	$fp, .LBB7_25
# %bb.1:
	bnez	$a0, .LBB7_25
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 16
	lu12i.w	$s6, 3
	ori	$s4, $s6, 2912
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	move	$a2, $s4
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 16
	beqz	$s0, .LBB7_25
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_25
# %bb.4:                                # %polybench_alloc_data.exit21
	st.d	$zero, $sp, 16
	lu12i.w	$a0, 4
	ori	$s3, $a0, 416
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB7_25
# %bb.5:                                # %polybench_alloc_data.exit21
	bnez	$a0, .LBB7_25
# %bb.6:                                # %polybench_alloc_data.exit23
	st.d	$zero, $sp, 16
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	move	$a2, $s4
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 16
	beqz	$s2, .LBB7_25
# %bb.7:                                # %polybench_alloc_data.exit23
	bnez	$a0, .LBB7_25
# %bb.8:                                # %polybench_alloc_data.exit25
	st.d	$zero, $sp, 16
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	beqz	$s3, .LBB7_25
# %bb.9:                                # %polybench_alloc_data.exit25
	bnez	$a0, .LBB7_25
# %bb.10:                               # %polybench_alloc_data.exit27
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	vreplgr2vr.d	$vr0, $a1
	lu12i.w	$s5, -4
	ori	$a1, $s5, 1184
	lu32i.d	$a0, -151552
	lu52i.d	$a0, $a0, 1033
	vreplgr2vr.d	$vr1, $a0
	ori	$a0, $s6, 2928
	.p2align	4, , 16
.LBB7_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr2, $vr0, 2
	vpickve2gr.w	$a2, $vr0, 1
	bstrpick.d	$a2, $a2, 31, 0
	movgr2fr.d	$fa3, $a2
	ffint.d.l	$fa3, $fa3
	vpickve2gr.w	$a2, $vr0, 0
	bstrpick.d	$a2, $a2, 31, 0
	movgr2fr.d	$fa4, $a2
	ffint.d.l	$fa4, $fa4
	vextrins.d	$vr4, $vr3, 16
	vpickve2gr.w	$a2, $vr2, 1
	bstrpick.d	$a2, $a2, 31, 0
	movgr2fr.d	$fa3, $a2
	ffint.d.l	$fa3, $fa3
	vpickve2gr.w	$a2, $vr2, 0
	bstrpick.d	$a2, $a2, 31, 0
	movgr2fr.d	$fa2, $a2
	ffint.d.l	$fa2, $fa2
	vextrins.d	$vr2, $vr3, 16
	vfdiv.d	$vr3, $vr4, $vr1
	vfdiv.d	$vr2, $vr2, $vr1
	add.d	$a2, $s2, $a1
	vstx	$vr3, $a2, $s4
	vstx	$vr2, $a2, $a0
	addi.d	$a1, $a1, 32
	vaddi.wu	$vr0, $vr0, 4
	bnez	$a1, .LBB7_11
# %bb.12:                               # %.preheader.i.preheader
	move	$a1, $zero
	lu52i.d	$a2, $zero, 1107
	pcalau12i	$a3, %pc_hi20(.LCPI7_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI7_0)
	lu12i.w	$a3, 275200
	pcalau12i	$a4, %pc_hi20(.LCPI7_1)
	fld.d	$fa1, $a4, %pc_lo12(.LCPI7_1)
	pcalau12i	$a4, %pc_hi20(.LCPI7_2)
	vld	$vr2, $a4, %pc_lo12(.LCPI7_2)
	ori	$a4, $s5, 1184
	ori	$a5, $zero, 2100
	ori	$a6, $zero, 0
	lu32i.d	$a6, 26624
	lu52i.d	$a6, $a6, 1034
	vreplgr2vr.d	$vr3, $a6
	move	$a6, $fp
	.p2align	4, , 16
.LBB7_13:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_14 Depth 2
	srli.d	$a7, $a1, 32
	or	$a7, $a7, $a2
	movgr2fr.d	$fa4, $a7
	fsub.d	$fa4, $fa4, $fa0
	move	$a7, $a1
	bstrins.d	$a7, $a3, 63, 32
	movgr2fr.d	$fa5, $a7
	fadd.d	$fa4, $fa5, $fa4
	fdiv.d	$fa4, $fa4, $fa1
	slli.d	$a7, $a1, 3
	fstx.d	$fa4, $s3, $a7
	vreplgr2vr.d	$vr4, $a1
	move	$a7, $a4
	vori.b	$vr5, $vr2, 0
	.p2align	4, , 16
.LBB7_14:                               # %vector.body47
                                        #   Parent Loop BB7_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr6, $vr5, 1
	vaddi.du	$vr7, $vr5, 3
	vmul.d	$vr6, $vr6, $vr4
	vmul.d	$vr7, $vr7, $vr4
	vpickve2gr.w	$t0, $vr6, 0
	mod.wu	$t0, $t0, $a5
	bstrpick.d	$t0, $t0, 31, 0
	vpickve2gr.w	$t1, $vr6, 2
	mod.wu	$t1, $t1, $a5
	bstrpick.d	$t1, $t1, 31, 0
	vpickve2gr.w	$t2, $vr7, 0
	mod.wu	$t2, $t2, $a5
	bstrpick.d	$t2, $t2, 31, 0
	vpickve2gr.w	$t3, $vr7, 2
	mod.wu	$t3, $t3, $a5
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$fa6, $t1
	ffint.d.l	$fa6, $fa6
	movgr2fr.d	$fa7, $t0
	ffint.d.l	$fa7, $fa7
	vextrins.d	$vr7, $vr6, 16
	movgr2fr.d	$fa6, $t3
	ffint.d.l	$fa6, $fa6
	movgr2fr.d	$ft0, $t2
	ffint.d.l	$ft0, $ft0
	vextrins.d	$vr8, $vr6, 16
	vfdiv.d	$vr6, $vr7, $vr3
	vfdiv.d	$vr7, $vr8, $vr3
	add.d	$t0, $a6, $a7
	vstx	$vr6, $t0, $s4
	vstx	$vr7, $t0, $a0
	addi.d	$a7, $a7, 32
	vaddi.du	$vr5, $vr5, 4
	bnez	$a7, .LBB7_14
# %bb.15:                               # %middle.block53
                                        #   in Loop: Header=BB7_13 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a6, $a6, $s4
	bne	$a1, $a5, .LBB7_13
# %bb.16:                               # %init_array.exit
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ori	$a1, $s5, 1184
	ori	$a2, $zero, 2100
	move	$a3, $fp
	.p2align	4, , 16
.LBB7_17:                               # %.preheader.i28
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_18 Depth 2
	alsl.d	$a4, $a0, $s1, 3
	slli.d	$a5, $a0, 3
	stx.d	$zero, $s1, $a5
	alsl.d	$a5, $a0, $s3, 3
	move	$a6, $a1
	.p2align	4, , 16
.LBB7_18:                               #   Parent Loop BB7_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a7, $s0, $a6
	fld.d	$fa0, $a5, 0
	add.d	$t0, $a3, $a6
	fldx.d	$fa1, $t0, $s4
	fldx.d	$fa2, $a7, $s4
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a7, $s4
	fldx.d	$fa0, $t0, $s4
	add.d	$a7, $s2, $a6
	fldx.d	$fa1, $a7, $s4
	fld.d	$fa2, $a4, 0
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	addi.d	$a6, $a6, 8
	fst.d	$fa0, $a4, 0
	bnez	$a6, .LBB7_18
# %bb.19:                               #   in Loop: Header=BB7_17 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a3, $a3, $s4
	bne	$a0, $a2, .LBB7_17
# %bb.20:                               # %kernel_bicg.exit
	lu12i.w	$s6, 8
	ori	$a0, $s6, 833
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a0, $s6, 832
	stx.b	$zero, $s4, $a0
	addi.d	$a0, $s4, 7
	ori	$a1, $s5, 1184
	ori	$a2, $zero, 3
	.p2align	4, , 16
.LBB7_21:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a1
	ldptr.d	$a3, $a3, 15200
	srli.d	$a4, $a3, 8
	srli.d	$a5, $a3, 16
	srli.d	$a6, $a3, 24
	srli.d	$a7, $a3, 32
	srli.d	$t0, $a3, 40
	srli.d	$t1, $a3, 48
	srli.d	$t2, $a3, 56
	bstrins.d	$a3, $a2, 63, 4
	st.b	$a3, $a0, -7
	st.b	$a3, $a0, -6
	bstrins.d	$a4, $a2, 63, 4
	st.b	$a4, $a0, -5
	st.b	$a4, $a0, -4
	bstrins.d	$a5, $a2, 63, 4
	st.b	$a5, $a0, -3
	st.b	$a5, $a0, -2
	bstrins.d	$a6, $a2, 63, 4
	st.b	$a6, $a0, -1
	st.b	$a6, $a0, 0
	bstrins.d	$a7, $a2, 63, 4
	st.b	$a7, $a0, 1
	st.b	$a7, $a0, 2
	bstrins.d	$t0, $a2, 63, 4
	st.b	$t0, $a0, 3
	st.b	$t0, $a0, 4
	bstrins.d	$t1, $a2, 63, 4
	st.b	$t1, $a0, 5
	st.b	$t1, $a0, 6
	bstrins.d	$t2, $a2, 63, 4
	st.b	$t2, $a0, 7
	st.b	$t2, $a0, 8
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 16
	bnez	$a1, .LBB7_21
# %bb.22:
	st.b	$zero, $s4, 1900
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s5, $a0, %got_pc_lo12(stderr)
	ld.d	$a1, $s5, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s4, 7
	lu12i.w	$a1, -5
	ori	$a1, $a1, 3680
	ori	$a2, $zero, 3
	.p2align	4, , 16
.LBB7_23:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s1, $a1
	ldptr.d	$a3, $a3, 16800
	srli.d	$a4, $a3, 8
	srli.d	$a5, $a3, 16
	srli.d	$a6, $a3, 24
	srli.d	$a7, $a3, 32
	srli.d	$t0, $a3, 40
	srli.d	$t1, $a3, 48
	srli.d	$t2, $a3, 56
	bstrins.d	$a3, $a2, 63, 4
	st.b	$a3, $a0, -7
	st.b	$a3, $a0, -6
	bstrins.d	$a4, $a2, 63, 4
	st.b	$a4, $a0, -5
	st.b	$a4, $a0, -4
	bstrins.d	$a5, $a2, 63, 4
	st.b	$a5, $a0, -3
	st.b	$a5, $a0, -2
	bstrins.d	$a6, $a2, 63, 4
	st.b	$a6, $a0, -1
	st.b	$a6, $a0, 0
	bstrins.d	$a7, $a2, 63, 4
	st.b	$a7, $a0, 1
	st.b	$a7, $a0, 2
	bstrins.d	$t0, $a2, 63, 4
	st.b	$t0, $a0, 3
	st.b	$t0, $a0, 4
	bstrins.d	$t1, $a2, 63, 4
	st.b	$t1, $a0, 5
	st.b	$t1, $a0, 6
	bstrins.d	$t2, $a2, 63, 4
	st.b	$t2, $a0, 7
	st.b	$t2, $a0, 8
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 16
	bnez	$a1, .LBB7_23
# %bb.24:                               # %print_array.exit
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 2100
	stx.b	$zero, $s4, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	move	$a0, $s4
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
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
.LBB7_25:
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
