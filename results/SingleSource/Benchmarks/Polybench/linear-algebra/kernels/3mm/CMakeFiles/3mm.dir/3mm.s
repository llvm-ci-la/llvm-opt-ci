	.file	"3mm.c"
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
	lu12i.w	$a0, 1406
	ori	$a2, $a0, 1024
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 48
	beqz	$fp, .LBB7_53
# %bb.1:
	bnez	$a0, .LBB7_53
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 48
	lu12i.w	$a0, 1562
	ori	$a2, $a0, 2048
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 48
	beqz	$s0, .LBB7_53
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_53
# %bb.4:                                # %polybench_alloc_data.exit31
	st.d	$zero, $sp, 48
	lu12i.w	$a0, 1757
	ori	$a2, $a0, 3328
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 48
	beqz	$s1, .LBB7_53
# %bb.5:                                # %polybench_alloc_data.exit31
	bnez	$a0, .LBB7_53
# %bb.6:                                # %polybench_alloc_data.exit33
	st.d	$zero, $sp, 48
	lu12i.w	$a0, 1933
	ori	$a2, $a0, 2432
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 48
	beqz	$s2, .LBB7_53
# %bb.7:                                # %polybench_alloc_data.exit33
	bnez	$a0, .LBB7_53
# %bb.8:                                # %polybench_alloc_data.exit35
	st.d	$zero, $sp, 48
	lu12i.w	$a0, 2109
	ori	$a2, $a0, 1536
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 48
	beqz	$s3, .LBB7_53
# %bb.9:                                # %polybench_alloc_data.exit35
	bnez	$a0, .LBB7_53
# %bb.10:                               # %polybench_alloc_data.exit37
	st.d	$zero, $sp, 48
	lu12i.w	$a0, 2578
	ori	$a2, $a0, 512
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 48
	beqz	$s4, .LBB7_53
# %bb.11:                               # %polybench_alloc_data.exit37
	bnez	$a0, .LBB7_53
# %bb.12:                               # %polybench_alloc_data.exit39
	st.d	$zero, $sp, 48
	lu12i.w	$a0, 1718
	ori	$a2, $a0, 3072
	lu12i.w	$s6, 1
	addi.d	$a0, $sp, 48
	move	$a1, $s6
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 48
	beqz	$s5, .LBB7_53
# %bb.13:                               # %polybench_alloc_data.exit39
	bnez	$a0, .LBB7_53
# %bb.14:                               # %polybench_alloc_data.exit41
	move	$a1, $zero
	pcalau12i	$a4, %pc_hi20(.LCPI7_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI7_0)
	lu12i.w	$a0, -2
	ori	$a3, $a0, 192
	ori	$a5, $zero, 800
	ori	$a2, $zero, 0
	lu32i.d	$a2, -49152
	lu52i.d	$a2, $a2, 1034
	vreplgr2vr.d	$vr1, $a2
	ori	$a2, $s6, 3904
	ori	$a6, $s6, 3920
	move	$a7, $s0
	.p2align	4, , 16
.LBB7_15:                               # %.preheader63.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
	vreplgr2vr.d	$vr2, $a1
	move	$t0, $a3
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB7_16:                               # %vector.body
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr4, $vr3, 2
	vmul.d	$vr5, $vr3, $vr2
	vmul.d	$vr4, $vr4, $vr2
	vshuf4i.w	$vr5, $vr5, 8
	vshuf4i.w	$vr4, $vr4, 8
	vaddi.wu	$vr5, $vr5, 1
	vaddi.wu	$vr4, $vr4, 1
	vpickve2gr.w	$t1, $vr5, 0
	mod.wu	$t1, $t1, $a5
	bstrpick.d	$t1, $t1, 31, 0
	vpickve2gr.w	$t2, $vr5, 1
	mod.wu	$t2, $t2, $a5
	bstrpick.d	$t2, $t2, 31, 0
	vpickve2gr.w	$t3, $vr4, 0
	mod.wu	$t3, $t3, $a5
	bstrpick.d	$t3, $t3, 31, 0
	vpickve2gr.w	$t4, $vr4, 1
	mod.wu	$t4, $t4, $a5
	bstrpick.d	$t4, $t4, 31, 0
	movgr2fr.d	$fa4, $t2
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa5, $t1
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	movgr2fr.d	$fa4, $t4
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa6, $t3
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr4, 16
	vfdiv.d	$vr4, $vr5, $vr1
	vfdiv.d	$vr5, $vr6, $vr1
	add.d	$t1, $a7, $t0
	vstx	$vr4, $t1, $a2
	vstx	$vr5, $t1, $a6
	addi.d	$t0, $t0, 32
	vaddi.du	$vr3, $vr3, 4
	bnez	$t0, .LBB7_16
# %bb.17:                               # %middle.block
                                        #   in Loop: Header=BB7_15 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a7, $a7, $a2
	bne	$a1, $a5, .LBB7_15
# %bb.18:                               # %.preheader61.i.preheader
	move	$a3, $zero
	vld	$vr0, $a4, %pc_lo12(.LCPI7_0)
	ori	$a5, $a0, 992
	ori	$a6, $zero, 900
	ori	$a1, $zero, 0
	lu32i.d	$a1, 103424
	lu52i.d	$a1, $a1, 1035
	vreplgr2vr.d	$vr1, $a1
	ori	$a1, $s6, 3104
	ori	$a7, $s6, 3120
	ori	$t0, $zero, 1000
	move	$t1, $s1
	.p2align	4, , 16
.LBB7_19:                               # %.preheader61.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_20 Depth 2
	vreplgr2vr.d	$vr2, $a3
	move	$t2, $a5
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB7_20:                               # %vector.body60
                                        #   Parent Loop BB7_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr4, $vr3, 1
	vaddi.du	$vr5, $vr3, 3
	vmul.d	$vr4, $vr4, $vr2
	vmul.d	$vr5, $vr5, $vr2
	vshuf4i.w	$vr4, $vr4, 8
	vshuf4i.w	$vr5, $vr5, 8
	vaddi.wu	$vr4, $vr4, 2
	vaddi.wu	$vr5, $vr5, 2
	vpickve2gr.w	$t3, $vr4, 0
	mod.wu	$t3, $t3, $a6
	bstrpick.d	$t3, $t3, 31, 0
	vpickve2gr.w	$t4, $vr4, 1
	mod.wu	$t4, $t4, $a6
	bstrpick.d	$t4, $t4, 31, 0
	vpickve2gr.w	$t5, $vr5, 0
	mod.wu	$t5, $t5, $a6
	bstrpick.d	$t5, $t5, 31, 0
	vpickve2gr.w	$t6, $vr5, 1
	mod.wu	$t6, $t6, $a6
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$fa4, $t4
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa5, $t3
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	movgr2fr.d	$fa4, $t6
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa6, $t5
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr4, 16
	vfdiv.d	$vr4, $vr5, $vr1
	vfdiv.d	$vr5, $vr6, $vr1
	add.d	$t3, $t1, $t2
	vstx	$vr4, $t3, $a1
	vstx	$vr5, $t3, $a7
	addi.d	$t2, $t2, 32
	vaddi.du	$vr3, $vr3, 4
	bnez	$t2, .LBB7_20
# %bb.21:                               # %middle.block66
                                        #   in Loop: Header=BB7_19 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$t1, $t1, $a1
	bne	$a3, $t0, .LBB7_19
# %bb.22:                               # %.preheader59.i.preheader
	move	$a6, $zero
	vld	$vr0, $a4, %pc_lo12(.LCPI7_0)
	lu12i.w	$s8, -3
	ori	$a7, $s8, 2688
	ori	$t0, $zero, 1100
	ori	$a3, $zero, 0
	lu32i.d	$a3, 359424
	lu52i.d	$a3, $a3, 1035
	vreplgr2vr.d	$vr1, $a3
	lu12i.w	$a5, 2
	ori	$a3, $a5, 1408
	ori	$t1, $a5, 1424
	ori	$t2, $zero, 900
	move	$t3, $s3
	.p2align	4, , 16
.LBB7_23:                               # %.preheader59.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_24 Depth 2
	vreplgr2vr.d	$vr2, $a6
	move	$t4, $a7
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB7_24:                               # %vector.body71
                                        #   Parent Loop BB7_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr4, $vr3, 3
	vaddi.du	$vr5, $vr3, 5
	vmul.d	$vr4, $vr4, $vr2
	vmul.d	$vr5, $vr5, $vr2
	vpickve2gr.w	$t5, $vr4, 0
	mod.wu	$t5, $t5, $t0
	bstrpick.d	$t5, $t5, 31, 0
	vpickve2gr.w	$t6, $vr4, 2
	mod.wu	$t6, $t6, $t0
	bstrpick.d	$t6, $t6, 31, 0
	vpickve2gr.w	$t7, $vr5, 0
	mod.wu	$t7, $t7, $t0
	bstrpick.d	$t7, $t7, 31, 0
	vpickve2gr.w	$t8, $vr5, 2
	mod.wu	$t8, $t8, $t0
	bstrpick.d	$t8, $t8, 31, 0
	movgr2fr.d	$fa4, $t6
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa5, $t5
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	movgr2fr.d	$fa4, $t8
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa6, $t7
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr4, 16
	vfdiv.d	$vr4, $vr5, $vr1
	vfdiv.d	$vr5, $vr6, $vr1
	add.d	$t5, $t3, $t4
	vstx	$vr4, $t5, $a3
	vstx	$vr5, $t5, $t1
	addi.d	$t4, $t4, 32
	vaddi.du	$vr3, $vr3, 4
	bnez	$t4, .LBB7_24
# %bb.25:                               # %middle.block77
                                        #   in Loop: Header=BB7_23 Depth=1
	addi.d	$a6, $a6, 1
	add.d	$t3, $t3, $a3
	bne	$a6, $t2, .LBB7_23
# %bb.26:                               # %.preheader.i.preheader
	move	$a6, $zero
	vld	$vr0, $a4, %pc_lo12(.LCPI7_0)
	ori	$a4, $s8, 3488
	ori	$a7, $zero, 1000
	ori	$t0, $zero, 0
	lu32i.d	$t0, 231424
	lu52i.d	$t0, $t0, 1035
	vreplgr2vr.d	$vr1, $t0
	ori	$s7, $a5, 608
	ori	$a5, $a5, 624
	ori	$t0, $zero, 1200
	move	$t1, $s4
	.p2align	4, , 16
.LBB7_27:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_28 Depth 2
	vreplgr2vr.d	$vr2, $a6
	move	$t2, $a4
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB7_28:                               # %vector.body82
                                        #   Parent Loop BB7_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr4, $vr3, 2
	vaddi.du	$vr3, $vr3, 4
	vmul.d	$vr4, $vr4, $vr2
	vmul.d	$vr5, $vr3, $vr2
	vshuf4i.w	$vr4, $vr4, 8
	vshuf4i.w	$vr5, $vr5, 8
	vaddi.wu	$vr4, $vr4, 2
	vaddi.wu	$vr5, $vr5, 2
	vpickve2gr.w	$t3, $vr4, 0
	mod.wu	$t3, $t3, $a7
	bstrpick.d	$t3, $t3, 31, 0
	vpickve2gr.w	$t4, $vr4, 1
	mod.wu	$t4, $t4, $a7
	bstrpick.d	$t4, $t4, 31, 0
	vpickve2gr.w	$t5, $vr5, 0
	mod.wu	$t5, $t5, $a7
	bstrpick.d	$t5, $t5, 31, 0
	vpickve2gr.w	$t6, $vr5, 1
	mod.wu	$t6, $t6, $a7
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$fa4, $t4
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa5, $t3
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	movgr2fr.d	$fa4, $t6
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa6, $t5
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr4, 16
	vfdiv.d	$vr4, $vr5, $vr1
	vfdiv.d	$vr5, $vr6, $vr1
	add.d	$t3, $t1, $t2
	vstx	$vr4, $t3, $s7
	addi.d	$t2, $t2, 32
	vstx	$vr5, $t3, $a5
	bnez	$t2, .LBB7_28
# %bb.29:                               # %middle.block88
                                        #   in Loop: Header=BB7_27 Depth=1
	addi.d	$a6, $a6, 1
	add.d	$t1, $t1, $s7
	bne	$a6, $t0, .LBB7_27
# %bb.30:                               # %.preheader73.i.preheader
	move	$a4, $zero
	movgr2fr.d	$fa0, $zero
	ori	$a5, $a0, 192
	ori	$a6, $zero, 900
	ori	$a7, $zero, 800
	move	$t0, $s0
	.p2align	4, , 16
.LBB7_31:                               # %.preheader73.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_32 Depth 2
                                        #       Child Loop BB7_33 Depth 3
	move	$t1, $zero
	mul.d	$t2, $a4, $a1
	add.d	$t2, $fp, $t2
	move	$t3, $s1
	.p2align	4, , 16
.LBB7_32:                               #   Parent Loop BB7_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_33 Depth 3
	alsl.d	$t4, $t1, $t2, 3
	slli.d	$t5, $t1, 3
	stx.d	$zero, $t2, $t5
	move	$t5, $t3
	move	$t6, $a5
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB7_33:                               #   Parent Loop BB7_31 Depth=1
                                        #     Parent Loop BB7_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t7, $t0, $t6
	fldx.d	$fa2, $t7, $a2
	fld.d	$fa3, $t5, 0
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $t4, 0
	addi.d	$t6, $t6, 8
	add.d	$t5, $t5, $a1
	bnez	$t6, .LBB7_33
# %bb.34:                               #   in Loop: Header=BB7_32 Depth=2
	addi.d	$t1, $t1, 1
	addi.d	$t3, $t3, 8
	bne	$t1, $a6, .LBB7_32
# %bb.35:                               #   in Loop: Header=BB7_31 Depth=1
	addi.d	$a4, $a4, 1
	add.d	$t0, $t0, $a2
	bne	$a4, $a7, .LBB7_31
# %bb.36:                               # %.preheader71.i.preheader
	move	$a2, $zero
	movgr2fr.d	$fa0, $zero
	ori	$a4, $s8, 2688
	ori	$a5, $zero, 1100
	ori	$a6, $zero, 900
	move	$a7, $s3
	.p2align	4, , 16
.LBB7_37:                               # %.preheader71.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_38 Depth 2
                                        #       Child Loop BB7_39 Depth 3
	move	$t0, $zero
	mul.d	$t1, $a2, $s7
	add.d	$t1, $s2, $t1
	move	$t2, $s4
	.p2align	4, , 16
.LBB7_38:                               #   Parent Loop BB7_37 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_39 Depth 3
	alsl.d	$t3, $t0, $t1, 3
	slli.d	$t4, $t0, 3
	stx.d	$zero, $t1, $t4
	move	$t4, $t2
	move	$t5, $a4
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB7_39:                               #   Parent Loop BB7_37 Depth=1
                                        #     Parent Loop BB7_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t6, $a7, $t5
	fldx.d	$fa2, $t6, $a3
	fld.d	$fa3, $t4, 0
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $t3, 0
	addi.d	$t5, $t5, 8
	add.d	$t4, $t4, $s7
	bnez	$t5, .LBB7_39
# %bb.40:                               #   in Loop: Header=BB7_38 Depth=2
	addi.d	$t0, $t0, 1
	addi.d	$t2, $t2, 8
	bne	$t0, $a5, .LBB7_38
# %bb.41:                               #   in Loop: Header=BB7_37 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a7, $a7, $a3
	bne	$a2, $a6, .LBB7_37
# %bb.42:                               # %.preheader.i45.preheader
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	move	$a2, $zero
	movgr2fr.d	$fa0, $zero
	ori	$a0, $a0, 992
	ori	$a3, $zero, 1100
	ori	$a4, $zero, 800
	move	$a5, $fp
	.p2align	4, , 16
.LBB7_43:                               # %.preheader.i45
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_44 Depth 2
                                        #       Child Loop BB7_45 Depth 3
	move	$a6, $zero
	mul.d	$a7, $a2, $s7
	add.d	$a7, $s5, $a7
	move	$t0, $s2
	.p2align	4, , 16
.LBB7_44:                               #   Parent Loop BB7_43 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_45 Depth 3
	alsl.d	$t1, $a6, $a7, 3
	slli.d	$t2, $a6, 3
	stx.d	$zero, $a7, $t2
	move	$t2, $t0
	move	$t3, $a0
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB7_45:                               #   Parent Loop BB7_43 Depth=1
                                        #     Parent Loop BB7_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t4, $a5, $t3
	fldx.d	$fa2, $t4, $a1
	fld.d	$fa3, $t2, 0
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $t1, 0
	addi.d	$t3, $t3, 8
	add.d	$t2, $t2, $s7
	bnez	$t3, .LBB7_45
# %bb.46:                               #   in Loop: Header=BB7_44 Depth=2
	addi.d	$a6, $a6, 1
	addi.d	$t0, $t0, 8
	bne	$a6, $a3, .LBB7_44
# %bb.47:                               #   in Loop: Header=BB7_43 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a5, $a5, $a1
	bne	$a2, $a4, .LBB7_43
# %bb.48:                               # %kernel_3mm.exit
	lu12i.w	$s0, 4
	ori	$a0, $s0, 1217
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a0, $s0, 1216
	stx.b	$zero, $s6, $a0
	addi.d	$a0, $s6, 7
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $s8, 3488
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s3, $zero, 3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$s8, $zero
	move	$s0, $zero
.LBB7_49:                               # %.preheader.i46
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_50 Depth 2
	add.d	$a0, $s5, $s8
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_50:                               #   Parent Loop BB7_49 Depth=1
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
	bstrins.d	$a3, $s3, 63, 4
	st.b	$a3, $a1, -7
	st.b	$a3, $a1, -6
	bstrins.d	$a4, $s3, 63, 4
	st.b	$a4, $a1, -5
	st.b	$a4, $a1, -4
	bstrins.d	$a5, $s3, 63, 4
	st.b	$a5, $a1, -3
	st.b	$a5, $a1, -2
	bstrins.d	$a6, $s3, 63, 4
	st.b	$a6, $a1, -1
	st.b	$a6, $a1, 0
	bstrins.d	$a7, $s3, 63, 4
	st.b	$a7, $a1, 1
	st.b	$a7, $a1, 2
	bstrins.d	$t0, $s3, 63, 4
	st.b	$t0, $a1, 3
	st.b	$t0, $a1, 4
	bstrins.d	$t1, $s3, 63, 4
	st.b	$t1, $a1, 5
	st.b	$t1, $a1, 6
	bstrins.d	$t2, $s3, 63, 4
	st.b	$t2, $a1, 7
	st.b	$t2, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB7_50
# %bb.51:                               #   in Loop: Header=BB7_49 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
	add.d	$s8, $s8, $s7
	ori	$a0, $zero, 800
	bne	$s0, $a0, .LBB7_49
# %bb.52:                               # %print_array.exit
	move	$a0, $s6
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
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
.LBB7_53:
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
