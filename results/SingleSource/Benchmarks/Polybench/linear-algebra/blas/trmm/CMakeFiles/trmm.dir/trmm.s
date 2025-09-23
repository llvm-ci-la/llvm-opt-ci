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
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI7_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
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
	move	$a4, $zero
	ori	$a0, $s1, 3904
	lu52i.d	$a5, $zero, 1023
	pcalau12i	$a1, %pc_hi20(.LCPI7_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI7_0)
	lu12i.w	$s3, -3
	ori	$a6, $s3, 2688
	lu12i.w	$a1, 111848
	ori	$a1, $a1, 437
	vreplgr2vr.w	$vr1, $a1
	ori	$a1, $zero, 1200
	vreplgr2vr.w	$vr2, $a1
	ori	$t2, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 180224
	lu52i.d	$a1, $a1, 1033
	xvreplgr2vr.d	$xr3, $a1
	lu12i.w	$a1, 2
	ori	$s2, $a1, 1408
	ori	$a7, $zero, 1000
	ori	$t0, $zero, 4
	lu12i.w	$t1, 67108
	ori	$t1, $t1, 3539
	pcalau12i	$t3, %pc_hi20(.LCPI7_1)
	fld.d	$fa4, $t3, %pc_lo12(.LCPI7_1)
	vreplgr2vr.w	$vr5, $t1
	vreplgr2vr.w	$vr6, $a7
	lu32i.d	$t2, -49152
	lu52i.d	$t2, $t2, 1032
	xvreplgr2vr.d	$xr7, $t2
	move	$t2, $s0
	move	$t3, $fp
	.p2align	4, , 16
.LBB7_5:                                # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
                                        #     Child Loop BB7_12 Depth 2
                                        #     Child Loop BB7_14 Depth 2
	beqz	$a4, .LBB7_13
# %bb.6:                                # %.lr.ph.i
                                        #   in Loop: Header=BB7_5 Depth=1
	bgeu	$a4, $t0, .LBB7_8
# %bb.7:                                #   in Loop: Header=BB7_5 Depth=1
	move	$t4, $zero
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_8:                                # %vector.ph28
                                        #   in Loop: Header=BB7_5 Depth=1
	move	$t5, $a4
	bstrins.d	$t5, $zero, 1, 0
	bstrpick.d	$t4, $a4, 62, 2
	slli.d	$t4, $t4, 2
	xvreplgr2vr.d	$xr8, $a4
	move	$t6, $t3
	xvori.b	$xr9, $xr0, 0
	.p2align	4, , 16
.LBB7_9:                                # %vector.body31
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvadd.d	$xr10, $xr9, $xr8
	xvpickve2gr.d	$t7, $xr10, 0
	vinsgr2vr.w	$vr11, $t7, 0
	xvpickve2gr.d	$t7, $xr10, 1
	vinsgr2vr.w	$vr11, $t7, 1
	xvpickve2gr.d	$t7, $xr10, 2
	vinsgr2vr.w	$vr11, $t7, 2
	xvpickve2gr.d	$t7, $xr10, 3
	vinsgr2vr.w	$vr11, $t7, 3
	vmuh.wu	$vr10, $vr11, $vr5
	vsrli.w	$vr10, $vr10, 6
	vmsub.w	$vr11, $vr10, $vr6
	vext2xv.du.wu	$xr10, $xr11
	xvffint.d.lu	$xr10, $xr10
	xvfdiv.d	$xr10, $xr10, $xr7
	xvst	$xr10, $t6, 0
	xvaddi.du	$xr9, $xr9, 4
	addi.d	$t5, $t5, -4
	addi.d	$t6, $t6, 32
	bnez	$t5, .LBB7_9
# %bb.10:                               # %middle.block36
                                        #   in Loop: Header=BB7_5 Depth=1
	beq	$a4, $t4, .LBB7_13
.LBB7_11:                               # %scalar.ph27.preheader
                                        #   in Loop: Header=BB7_5 Depth=1
	slli.d	$t5, $t4, 3
	add.w	$t4, $a2, $t4
	.p2align	4, , 16
.LBB7_12:                               # %scalar.ph27
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t6, $t4, 31, 0
	mul.d	$t6, $t6, $t1
	srli.d	$t6, $t6, 38
	mul.d	$t6, $t6, $a7
	sub.d	$t6, $t4, $t6
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$ft0, $t6
	ffint.d.l	$ft0, $ft0
	fdiv.d	$ft0, $ft0, $fa4
	fstx.d	$ft0, $t3, $t5
	addi.d	$t5, $t5, 8
	add.d	$t6, $a3, $t5
	addi.w	$t4, $t4, 1
	bnez	$t6, .LBB7_12
.LBB7_13:                               # %._crit_edge.i
                                        #   in Loop: Header=BB7_5 Depth=1
	mul.d	$t4, $a4, $a0
	add.d	$t4, $fp, $t4
	slli.d	$t5, $a4, 3
	stx.d	$a5, $t4, $t5
	addi.d	$t4, $a4, 1200
	xvreplgr2vr.d	$xr8, $t4
	move	$t4, $a6
	xvori.b	$xr9, $xr0, 0
	.p2align	4, , 16
.LBB7_14:                               # %vector.body
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvsub.d	$xr10, $xr8, $xr9
	xvpickve2gr.d	$t5, $xr10, 0
	vinsgr2vr.w	$vr11, $t5, 0
	xvpickve2gr.d	$t5, $xr10, 1
	vinsgr2vr.w	$vr11, $t5, 1
	xvpickve2gr.d	$t5, $xr10, 2
	vinsgr2vr.w	$vr11, $t5, 2
	xvpickve2gr.d	$t5, $xr10, 3
	vinsgr2vr.w	$vr11, $t5, 3
	vmuh.wu	$vr10, $vr11, $vr1
	vsrli.w	$vr10, $vr10, 7
	vmsub.w	$vr11, $vr10, $vr2
	vext2xv.du.wu	$xr10, $xr11
	xvffint.d.lu	$xr10, $xr10
	xvfdiv.d	$xr10, $xr10, $xr3
	add.d	$t5, $t2, $t4
	xvstx	$xr10, $t5, $s2
	addi.d	$t4, $t4, 32
	xvaddi.du	$xr9, $xr9, 4
	bnez	$t4, .LBB7_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB7_5 Depth=1
	addi.d	$a4, $a4, 1
	add.d	$t3, $t3, $a0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 1
	add.d	$t2, $t2, $s2
	bne	$a4, $a7, .LBB7_5
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
	xvreplgr2vr.d	$xr1, $t1
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
.LBB7_23:                               # %vector.body39.preheader
                                        #   in Loop: Header=BB7_18 Depth=1
	move	$t3, $t0
	.p2align	4, , 16
.LBB7_24:                               # %vector.body39
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t4, $t2, $t3
	xvldx	$xr2, $t4, $s2
	ori	$t5, $a1, 1440
	xvldx	$xr3, $t4, $t5
	xvfmul.d	$xr2, $xr2, $xr1
	xvfmul.d	$xr3, $xr3, $xr1
	xvstx	$xr2, $t4, $s2
	addi.d	$t3, $t3, 64
	xvstx	$xr3, $t4, $t5
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
