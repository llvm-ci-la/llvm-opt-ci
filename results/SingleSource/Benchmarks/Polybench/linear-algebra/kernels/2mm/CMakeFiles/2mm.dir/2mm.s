	.file	"2mm.c"
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
	.p2align	4, 0x0                          # -- Begin function init_array
.LCPI7_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	init_array
	.p2align	5
	.type	init_array,@function
init_array:                             # @init_array
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 0                     # 8-byte Folded Spill
	ori	$t0, $zero, 0
	lu32i.d	$t0, -524288
	lu52i.d	$t0, $t0, 1023
	st.d	$t0, $a4, 0
	lu12i.w	$a4, 209715
	ori	$a4, $a4, 819
	lu32i.d	$a4, 209715
	lu52i.d	$a4, $a4, 1023
	st.d	$a4, $a5, 0
	blez	$a0, .LBB7_11
# %bb.1:                                # %.preheader67.lr.ph
	blez	$a2, .LBB7_22
# %bb.2:                                # %.preheader67.us.preheader
	move	$a4, $zero
	move	$a5, $zero
	bstrpick.d	$t0, $a0, 31, 0
	movgr2fr.d	$fa0, $t0
	ffint.d.l	$fa0, $fa0
	bstrpick.d	$t0, $a2, 30, 2
	slli.d	$t0, $t0, 2
	vinsgr2vr.w	$vr3, $a0, 0
	vinsgr2vr.w	$vr3, $a0, 1
	vreplvei.d	$vr1, $vr0, 0
	addi.d	$t1, $a6, 16
	pcalau12i	$t2, %pc_hi20(.LCPI7_0)
	vld	$vr2, $t2, %pc_lo12(.LCPI7_0)
	ori	$t2, $zero, 4
	vpickve2gr.w	$t3, $vr3, 0
	vpickve2gr.w	$t4, $vr3, 1
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_3:                                # %._crit_edge.us
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$t1, $t1, 560
	addi.d	$a6, $a6, 560
	addi.d	$a4, $a4, 1
	beq	$a5, $a0, .LBB7_11
.LBB7_4:                                # %.preheader67.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_7 Depth 2
                                        #     Child Loop BB7_10 Depth 2
	bgeu	$a2, $t2, .LBB7_6
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=1
	move	$t7, $zero
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_6:                                # %vector.ph
                                        #   in Loop: Header=BB7_4 Depth=1
	vreplgr2vr.d	$vr3, $a5
	move	$t5, $t1
	move	$t6, $t0
	vori.b	$vr4, $vr2, 0
	.p2align	4, , 16
.LBB7_7:                                # %vector.body
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr5, $vr4, 2
	vmul.d	$vr6, $vr4, $vr3
	vmul.d	$vr5, $vr5, $vr3
	vshuf4i.w	$vr6, $vr6, 8
	vshuf4i.w	$vr5, $vr5, 8
	vaddi.wu	$vr6, $vr6, 1
	vaddi.wu	$vr5, $vr5, 1
	vpickve2gr.w	$t7, $vr6, 0
	mod.wu	$t7, $t7, $t3
	bstrpick.d	$t7, $t7, 31, 0
	vpickve2gr.w	$t8, $vr6, 1
	mod.wu	$t8, $t8, $t4
	bstrpick.d	$t8, $t8, 31, 0
	vpickve2gr.w	$fp, $vr5, 0
	mod.wu	$fp, $fp, $t3
	bstrpick.d	$fp, $fp, 31, 0
	vpickve2gr.w	$s0, $vr5, 1
	mod.wu	$s0, $s0, $t4
	bstrpick.d	$s0, $s0, 31, 0
	movgr2fr.d	$fa5, $t8
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa6, $t7
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	movgr2fr.d	$fa5, $s0
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa7, $fp
	ffint.d.l	$fa7, $fa7
	vextrins.d	$vr7, $vr5, 16
	vfdiv.d	$vr5, $vr6, $vr1
	vfdiv.d	$vr6, $vr7, $vr1
	vst	$vr5, $t5, -16
	vst	$vr6, $t5, 0
	vaddi.du	$vr4, $vr4, 4
	addi.d	$t6, $t6, -4
	addi.d	$t5, $t5, 32
	bnez	$t6, .LBB7_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB7_4 Depth=1
	move	$t7, $t0
	beq	$t0, $a2, .LBB7_3
.LBB7_9:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	alsl.d	$t5, $t7, $a6, 3
	mul.d	$t6, $a4, $t7
	addi.w	$t6, $t6, 1
	sub.d	$t7, $a2, $t7
	.p2align	4, , 16
.LBB7_10:                               # %scalar.ph
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mod.wu	$t8, $t6, $a0
	bstrpick.d	$t8, $t8, 31, 0
	movgr2fr.d	$fa3, $t8
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	fst.d	$fa3, $t5, 0
	addi.d	$t5, $t5, 8
	addi.d	$t7, $t7, -1
	add.w	$t6, $t6, $a4
	bnez	$t7, .LBB7_10
	b	.LBB7_3
.LBB7_11:                               # %.preheader66
	blez	$a2, .LBB7_22
# %bb.12:                               # %.preheader65.lr.ph
	blez	$a1, .LBB7_33
# %bb.13:                               # %.preheader65.us.preheader
	move	$a4, $zero
	move	$a5, $zero
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	bstrpick.d	$a6, $a1, 30, 2
	slli.d	$a6, $a6, 2
	vinsgr2vr.w	$vr3, $a1, 0
	vinsgr2vr.w	$vr3, $a1, 1
	vreplvei.d	$vr1, $vr0, 0
	addi.d	$t0, $a7, 16
	pcalau12i	$t1, %pc_hi20(.LCPI7_0)
	vld	$vr2, $t1, %pc_lo12(.LCPI7_0)
	ori	$t1, $zero, 4
	vpickve2gr.w	$t2, $vr3, 0
	vpickve2gr.w	$t3, $vr3, 1
	b	.LBB7_15
	.p2align	4, , 16
.LBB7_14:                               # %._crit_edge.us72
                                        #   in Loop: Header=BB7_15 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$t0, $t0, 400
	addi.d	$a7, $a7, 400
	addi.d	$a4, $a4, 1
	beq	$a5, $a2, .LBB7_22
.LBB7_15:                               # %.preheader65.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_18 Depth 2
                                        #     Child Loop BB7_21 Depth 2
	bgeu	$a1, $t1, .LBB7_17
# %bb.16:                               #   in Loop: Header=BB7_15 Depth=1
	move	$t6, $zero
	b	.LBB7_20
	.p2align	4, , 16
.LBB7_17:                               # %vector.ph124
                                        #   in Loop: Header=BB7_15 Depth=1
	vreplgr2vr.d	$vr3, $a5
	move	$t4, $t0
	move	$t5, $a6
	vori.b	$vr4, $vr2, 0
	.p2align	4, , 16
.LBB7_18:                               # %vector.body133
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr5, $vr4, 1
	vaddi.du	$vr6, $vr4, 3
	vmul.d	$vr5, $vr5, $vr3
	vmul.d	$vr6, $vr6, $vr3
	vpickve2gr.w	$t6, $vr5, 0
	mod.wu	$t6, $t6, $t2
	bstrpick.d	$t6, $t6, 31, 0
	vpickve2gr.w	$t7, $vr5, 2
	mod.wu	$t7, $t7, $t3
	bstrpick.d	$t7, $t7, 31, 0
	vpickve2gr.w	$t8, $vr6, 0
	mod.wu	$t8, $t8, $t2
	bstrpick.d	$t8, $t8, 31, 0
	vpickve2gr.w	$fp, $vr6, 2
	mod.wu	$fp, $fp, $t3
	bstrpick.d	$fp, $fp, 31, 0
	movgr2fr.d	$fa5, $t7
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa6, $t6
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	movgr2fr.d	$fa5, $fp
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa7, $t8
	ffint.d.l	$fa7, $fa7
	vextrins.d	$vr7, $vr5, 16
	vfdiv.d	$vr5, $vr6, $vr1
	vfdiv.d	$vr6, $vr7, $vr1
	vst	$vr5, $t4, -16
	vst	$vr6, $t4, 0
	vaddi.du	$vr4, $vr4, 4
	addi.d	$t5, $t5, -4
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB7_18
# %bb.19:                               # %middle.block139
                                        #   in Loop: Header=BB7_15 Depth=1
	move	$t6, $a6
	beq	$a6, $a1, .LBB7_14
.LBB7_20:                               # %scalar.ph122.preheader
                                        #   in Loop: Header=BB7_15 Depth=1
	alsl.d	$t4, $t6, $a7, 3
	sub.d	$t5, $a1, $t6
	addi.d	$t6, $t6, 1
	mul.w	$t6, $a4, $t6
	.p2align	4, , 16
.LBB7_21:                               # %scalar.ph122
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mod.wu	$t7, $t6, $a1
	bstrpick.d	$t7, $t7, 31, 0
	movgr2fr.d	$fa3, $t7
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	fst.d	$fa3, $t4, 0
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, -1
	add.w	$t6, $t6, $a4
	bnez	$t5, .LBB7_21
	b	.LBB7_14
.LBB7_22:                               # %.preheader64
	blez	$a1, .LBB7_33
# %bb.23:                               # %.preheader63.lr.ph
	blez	$a3, .LBB7_33
# %bb.24:                               # %.preheader63.us.preheader
	move	$a4, $zero
	move	$a5, $zero
	ld.d	$a6, $sp, 16
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$fa0, $fa0
	bstrpick.d	$a7, $a3, 30, 2
	slli.d	$a7, $a7, 2
	vinsgr2vr.w	$vr3, $a3, 0
	vinsgr2vr.w	$vr3, $a3, 1
	vreplvei.d	$vr1, $vr0, 0
	addi.d	$t0, $a6, 16
	pcalau12i	$t1, %pc_hi20(.LCPI7_0)
	vld	$vr2, $t1, %pc_lo12(.LCPI7_0)
	ori	$t1, $zero, 4
	vpickve2gr.w	$t2, $vr3, 0
	vpickve2gr.w	$t3, $vr3, 1
	b	.LBB7_26
	.p2align	4, , 16
.LBB7_25:                               # %._crit_edge.us75
                                        #   in Loop: Header=BB7_26 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$t0, $t0, 640
	addi.d	$a6, $a6, 640
	addi.d	$a4, $a4, 1
	beq	$a5, $a1, .LBB7_33
.LBB7_26:                               # %.preheader63.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_29 Depth 2
                                        #     Child Loop BB7_32 Depth 2
	bgeu	$a3, $t1, .LBB7_28
# %bb.27:                               #   in Loop: Header=BB7_26 Depth=1
	move	$t6, $zero
	b	.LBB7_31
	.p2align	4, , 16
.LBB7_28:                               # %vector.ph144
                                        #   in Loop: Header=BB7_26 Depth=1
	vreplgr2vr.d	$vr3, $a5
	move	$t4, $t0
	move	$t5, $a7
	vori.b	$vr4, $vr2, 0
	.p2align	4, , 16
.LBB7_29:                               # %vector.body153
                                        #   Parent Loop BB7_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr5, $vr4, 3
	vaddi.du	$vr6, $vr4, 5
	vmul.d	$vr5, $vr5, $vr3
	vmul.d	$vr6, $vr6, $vr3
	vshuf4i.w	$vr5, $vr5, 8
	vshuf4i.w	$vr6, $vr6, 8
	vaddi.wu	$vr5, $vr5, 1
	vaddi.wu	$vr6, $vr6, 1
	vpickve2gr.w	$t6, $vr5, 0
	mod.wu	$t6, $t6, $t2
	bstrpick.d	$t6, $t6, 31, 0
	vpickve2gr.w	$t7, $vr5, 1
	mod.wu	$t7, $t7, $t3
	bstrpick.d	$t7, $t7, 31, 0
	vpickve2gr.w	$t8, $vr6, 0
	mod.wu	$t8, $t8, $t2
	bstrpick.d	$t8, $t8, 31, 0
	vpickve2gr.w	$fp, $vr6, 1
	mod.wu	$fp, $fp, $t3
	bstrpick.d	$fp, $fp, 31, 0
	movgr2fr.d	$fa5, $t7
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa6, $t6
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	movgr2fr.d	$fa5, $fp
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa7, $t8
	ffint.d.l	$fa7, $fa7
	vextrins.d	$vr7, $vr5, 16
	vfdiv.d	$vr5, $vr6, $vr1
	vfdiv.d	$vr6, $vr7, $vr1
	vst	$vr5, $t4, -16
	vst	$vr6, $t4, 0
	vaddi.du	$vr4, $vr4, 4
	addi.d	$t5, $t5, -4
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB7_29
# %bb.30:                               # %middle.block159
                                        #   in Loop: Header=BB7_26 Depth=1
	move	$t6, $a7
	beq	$a7, $a3, .LBB7_25
.LBB7_31:                               # %scalar.ph142.preheader
                                        #   in Loop: Header=BB7_26 Depth=1
	alsl.d	$t4, $t6, $a6, 3
	addi.d	$t5, $t6, 3
	mul.d	$t5, $a4, $t5
	addi.w	$t5, $t5, 1
	sub.d	$t6, $a3, $t6
	.p2align	4, , 16
.LBB7_32:                               # %scalar.ph142
                                        #   Parent Loop BB7_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mod.wu	$t7, $t5, $a3
	bstrpick.d	$t7, $t7, 31, 0
	movgr2fr.d	$fa3, $t7
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	fst.d	$fa3, $t4, 0
	addi.d	$t4, $t4, 8
	addi.d	$t6, $t6, -1
	add.w	$t5, $t5, $a4
	bnez	$t6, .LBB7_32
	b	.LBB7_25
.LBB7_33:                               # %.preheader62
	blez	$a0, .LBB7_44
# %bb.34:                               # %.preheader.lr.ph
	blez	$a3, .LBB7_44
# %bb.35:                               # %.preheader.us.preheader
	move	$a1, $zero
	move	$a4, $zero
	ld.d	$a5, $sp, 24
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	bstrpick.d	$a6, $a3, 30, 2
	slli.d	$a6, $a6, 2
	vinsgr2vr.w	$vr3, $a2, 0
	vinsgr2vr.w	$vr3, $a2, 1
	vreplvei.d	$vr1, $vr0, 0
	addi.d	$a7, $a5, 16
	pcalau12i	$t0, %pc_hi20(.LCPI7_0)
	vld	$vr2, $t0, %pc_lo12(.LCPI7_0)
	ori	$t0, $zero, 4
	vpickve2gr.w	$t1, $vr3, 0
	vpickve2gr.w	$t2, $vr3, 1
	b	.LBB7_37
	.p2align	4, , 16
.LBB7_36:                               # %._crit_edge.us79
                                        #   in Loop: Header=BB7_37 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a7, $a7, 640
	addi.d	$a5, $a5, 640
	addi.d	$a1, $a1, 1
	beq	$a4, $a0, .LBB7_44
.LBB7_37:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_40 Depth 2
                                        #     Child Loop BB7_43 Depth 2
	bgeu	$a3, $t0, .LBB7_39
# %bb.38:                               #   in Loop: Header=BB7_37 Depth=1
	move	$t5, $zero
	b	.LBB7_42
	.p2align	4, , 16
.LBB7_39:                               # %vector.ph164
                                        #   in Loop: Header=BB7_37 Depth=1
	vreplgr2vr.d	$vr3, $a4
	move	$t3, $a7
	move	$t4, $a6
	vori.b	$vr4, $vr2, 0
	.p2align	4, , 16
.LBB7_40:                               # %vector.body173
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr5, $vr4, 2
	vaddi.du	$vr4, $vr4, 4
	vmul.d	$vr5, $vr5, $vr3
	vmul.d	$vr6, $vr4, $vr3
	vpickve2gr.w	$t5, $vr5, 0
	mod.w	$t5, $t5, $t1
	bstrpick.d	$t5, $t5, 31, 0
	vpickve2gr.w	$t6, $vr5, 2
	mod.w	$t6, $t6, $t2
	bstrpick.d	$t6, $t6, 31, 0
	vpickve2gr.w	$t7, $vr6, 0
	mod.w	$t7, $t7, $t1
	bstrpick.d	$t7, $t7, 31, 0
	vpickve2gr.w	$t8, $vr6, 2
	mod.w	$t8, $t8, $t2
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
	vfdiv.d	$vr5, $vr6, $vr1
	vfdiv.d	$vr6, $vr7, $vr1
	vst	$vr5, $t3, -16
	vst	$vr6, $t3, 0
	addi.d	$t4, $t4, -4
	addi.d	$t3, $t3, 32
	bnez	$t4, .LBB7_40
# %bb.41:                               # %middle.block179
                                        #   in Loop: Header=BB7_37 Depth=1
	move	$t5, $a6
	beq	$a6, $a3, .LBB7_36
.LBB7_42:                               # %scalar.ph162.preheader
                                        #   in Loop: Header=BB7_37 Depth=1
	alsl.d	$t3, $t5, $a5, 3
	addi.d	$t4, $t5, 2
	mul.w	$t4, $a1, $t4
	sub.d	$t5, $a3, $t5
	.p2align	4, , 16
.LBB7_43:                               # %scalar.ph162
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mod.w	$t6, $t4, $a2
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$fa3, $t6
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	fst.d	$fa3, $t3, 0
	addi.d	$t3, $t3, 8
	addi.d	$t5, $t5, -1
	add.w	$t4, $t4, $a1
	bnez	$t5, .LBB7_43
	b	.LBB7_36
.LBB7_44:                               # %._crit_edge78
	ld.d	$s0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	init_array, .Lfunc_end7-init_array
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI8_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI8_4:
	.dword	48                              # 0x30
	.dword	56                              # 0x38
.LCPI8_5:
	.dword	32                              # 0x20
	.dword	40                              # 0x28
.LCPI8_6:
	.dword	16                              # 0x10
	.dword	24                              # 0x18
.LCPI8_7:
	.dword	0                               # 0x0
	.dword	8                               # 0x8
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI8_1:
	.dword	0x4044000000000000              # double 40
.LCPI8_2:
	.dword	0x4049000000000000              # double 50
.LCPI8_3:
	.dword	0x3ff3333333333333              # double 1.2
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
	lu12i.w	$a0, 3
	ori	$a2, $a0, 3712
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 80
	beqz	$fp, .LBB8_43
# %bb.1:
	bnez	$a0, .LBB8_43
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 80
	lu12i.w	$a0, 5
	ori	$a2, $a0, 1920
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 80
	beqz	$s0, .LBB8_43
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB8_43
# %bb.4:                                # %polybench_alloc_data.exit25
	st.d	$zero, $sp, 80
	lu12i.w	$s3, 6
	ori	$a2, $s3, 3424
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 80
	beqz	$s1, .LBB8_43
# %bb.5:                                # %polybench_alloc_data.exit25
	bnez	$a0, .LBB8_43
# %bb.6:                                # %polybench_alloc_data.exit27
	st.d	$zero, $sp, 80
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 80
	beqz	$s2, .LBB8_43
# %bb.7:                                # %polybench_alloc_data.exit27
	bnez	$a0, .LBB8_43
# %bb.8:                                # %polybench_alloc_data.exit29
	st.d	$zero, $sp, 80
	ori	$a2, $s3, 1024
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 80
	beqz	$s8, .LBB8_43
# %bb.9:                                # %polybench_alloc_data.exit29
	bnez	$a0, .LBB8_43
# %bb.10:                               # %polybench_alloc_data.exit31
	move	$a1, $zero
	ori	$a2, $zero, 560
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI8_0)
	ori	$a3, $zero, 40
	ori	$a4, $zero, 0
	lu32i.d	$a4, 262144
	lu52i.d	$a4, $a4, 1028
	vreplgr2vr.d	$vr1, $a4
	ori	$a4, $zero, 544
	addi.w	$a5, $zero, -3
	lu32i.d	$a5, 0
	pcalau12i	$a6, %pc_hi20(.LCPI8_1)
	fld.d	$fa2, $a6, %pc_lo12(.LCPI8_1)
	lu12i.w	$a6, -209716
	ori	$a6, $a6, 3277
	lu32i.d	$a6, 0
	move	$a7, $s0
	.p2align	4, , 16
.LBB8_11:                               # %.preheader67.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_12 Depth 2
	move	$t1, $zero
	mul.d	$t0, $a1, $a2
	add.d	$t0, $s0, $t0
	vreplgr2vr.d	$vr3, $a1
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB8_12:                               # %vector.body
                                        #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr5, $vr4, 2
	vmul.d	$vr6, $vr4, $vr3
	vmul.d	$vr5, $vr5, $vr3
	vshuf4i.w	$vr6, $vr6, 8
	vshuf4i.w	$vr5, $vr5, 8
	vaddi.wu	$vr6, $vr6, 1
	vaddi.wu	$vr5, $vr5, 1
	vpickve2gr.w	$t2, $vr6, 0
	mod.wu	$t2, $t2, $a3
	bstrpick.d	$t2, $t2, 31, 0
	vpickve2gr.w	$t3, $vr6, 1
	mod.wu	$t3, $t3, $a3
	bstrpick.d	$t3, $t3, 31, 0
	vpickve2gr.w	$t4, $vr5, 0
	mod.wu	$t4, $t4, $a3
	bstrpick.d	$t4, $t4, 31, 0
	vpickve2gr.w	$t5, $vr5, 1
	mod.wu	$t5, $t5, $a3
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa5, $t3
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa6, $t2
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	movgr2fr.d	$fa5, $t5
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa7, $t4
	ffint.d.l	$fa7, $fa7
	vextrins.d	$vr7, $vr5, 16
	vfdiv.d	$vr5, $vr6, $vr1
	vfdiv.d	$vr6, $vr7, $vr1
	add.d	$t2, $a7, $t1
	vstx	$vr5, $a7, $t1
	vst	$vr6, $t2, 16
	addi.d	$t1, $t1, 32
	vaddi.du	$vr4, $vr4, 4
	bne	$t1, $a4, .LBB8_12
# %bb.13:                               # %scalar.ph
                                        #   in Loop: Header=BB8_11 Depth=1
	slli.d	$t1, $a1, 6
	alsl.w	$t1, $a1, $t1, 2
	addi.d	$t1, $t1, 1
	and	$t2, $t1, $a5
	mul.d	$t2, $t2, $a6
	srli.d	$t2, $t2, 37
	mul.d	$t2, $t2, $a3
	sub.d	$t1, $t1, $t2
	and	$t1, $t1, $a5
	movgr2fr.d	$fa3, $t1
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa2
	fst.d	$fa3, $t0, 544
	alsl.d	$t1, $a1, $a1, 4
	alsl.d	$t1, $t1, $a1, 2
	addi.d	$t1, $t1, 1
	bstrpick.d	$t2, $t1, 31, 0
	mul.d	$t2, $t2, $a6
	srli.d	$t2, $t2, 37
	mul.d	$t2, $t2, $a3
	sub.d	$t1, $t1, $t2
	bstrpick.d	$t1, $t1, 31, 0
	movgr2fr.d	$fa3, $t1
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa2
	fst.d	$fa3, $t0, 552
	addi.d	$a1, $a1, 1
	addi.d	$a7, $a7, 560
	bne	$a1, $a3, .LBB8_11
# %bb.14:                               # %.preheader65.us.i.preheader
	move	$a1, $zero
	ori	$a2, $zero, 400
	vld	$vr0, $a0, %pc_lo12(.LCPI8_0)
	ori	$a3, $zero, 50
	ori	$a4, $zero, 0
	lu32i.d	$a4, -458752
	lu52i.d	$a4, $a4, 1028
	vreplgr2vr.d	$vr1, $a4
	ori	$a4, $zero, 384
	lu12i.w	$a5, 335544
	ori	$a5, $a5, 1311
	pcalau12i	$a6, %pc_hi20(.LCPI8_2)
	fld.d	$fa2, $a6, %pc_lo12(.LCPI8_2)
	lu12i.w	$a6, -377488
	ori	$a6, $a6, 2622
	lu32i.d	$a6, 0
	ori	$a7, $zero, 70
	move	$t0, $s1
	.p2align	4, , 16
.LBB8_15:                               # %.preheader65.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_16 Depth 2
	move	$t2, $zero
	mul.d	$t1, $a1, $a2
	add.d	$t1, $s1, $t1
	vreplgr2vr.d	$vr3, $a1
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB8_16:                               # %vector.body48
                                        #   Parent Loop BB8_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr5, $vr4, 1
	vaddi.du	$vr6, $vr4, 3
	vmul.d	$vr5, $vr5, $vr3
	vmul.d	$vr6, $vr6, $vr3
	vpickve2gr.w	$t3, $vr5, 0
	mod.wu	$t3, $t3, $a3
	bstrpick.d	$t3, $t3, 31, 0
	vpickve2gr.w	$t4, $vr5, 2
	mod.wu	$t4, $t4, $a3
	bstrpick.d	$t4, $t4, 31, 0
	vpickve2gr.w	$t5, $vr6, 0
	mod.wu	$t5, $t5, $a3
	bstrpick.d	$t5, $t5, 31, 0
	vpickve2gr.w	$t6, $vr6, 2
	mod.wu	$t6, $t6, $a3
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$fa5, $t4
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa6, $t3
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	movgr2fr.d	$fa5, $t6
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa7, $t5
	ffint.d.l	$fa7, $fa7
	vextrins.d	$vr7, $vr5, 16
	vfdiv.d	$vr5, $vr6, $vr1
	vfdiv.d	$vr6, $vr7, $vr1
	add.d	$t3, $t0, $t2
	vstx	$vr5, $t0, $t2
	vst	$vr6, $t3, 16
	addi.d	$t2, $t2, 32
	vaddi.du	$vr4, $vr4, 4
	bne	$t2, $a4, .LBB8_16
# %bb.17:                               # %scalar.ph44
                                        #   in Loop: Header=BB8_15 Depth=1
	alsl.d	$t2, $a1, $a1, 1
	alsl.d	$t2, $t2, $a1, 4
	bstrpick.d	$t3, $t2, 31, 0
	mul.d	$t3, $t3, $a5
	srli.d	$t3, $t3, 36
	mul.d	$t3, $t3, $a3
	sub.d	$t2, $t2, $t3
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa3, $t2
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa2
	fst.d	$fa3, $t1, 384
	mul.d	$t2, $a1, $a3
	bstrpick.d	$t3, $t2, 31, 1
	mul.d	$t3, $t3, $a6
	srli.d	$t3, $t3, 36
	mul.d	$t3, $t3, $a3
	sub.d	$t2, $t2, $t3
	bstrpick.d	$t2, $t2, 31, 1
	slli.d	$t2, $t2, 1
	movgr2fr.d	$fa3, $t2
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa2
	fst.d	$fa3, $t1, 392
	addi.d	$a1, $a1, 1
	addi.d	$t0, $t0, 400
	bne	$a1, $a7, .LBB8_15
# %bb.18:                               # %.preheader63.us.i.preheader
	move	$a1, $zero
	vld	$vr0, $a0, %pc_lo12(.LCPI8_0)
	ori	$a2, $zero, 80
	ori	$a3, $zero, 0
	lu32i.d	$a3, 262144
	lu52i.d	$a3, $a3, 1029
	vreplgr2vr.d	$vr1, $a3
	ori	$a3, $zero, 640
	ori	$a4, $zero, 50
	move	$a5, $s2
	.p2align	4, , 16
.LBB8_19:                               # %.preheader63.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_20 Depth 2
	move	$a6, $zero
	vreplgr2vr.d	$vr2, $a1
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB8_20:                               # %vector.body60
                                        #   Parent Loop BB8_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr4, $vr3, 3
	vaddi.du	$vr5, $vr3, 5
	vmul.d	$vr4, $vr4, $vr2
	vmul.d	$vr5, $vr5, $vr2
	vshuf4i.w	$vr4, $vr4, 8
	vshuf4i.w	$vr5, $vr5, 8
	vaddi.wu	$vr4, $vr4, 1
	vaddi.wu	$vr5, $vr5, 1
	vpickve2gr.w	$a7, $vr4, 0
	mod.wu	$a7, $a7, $a2
	bstrpick.d	$a7, $a7, 31, 0
	vpickve2gr.w	$t0, $vr4, 1
	mod.wu	$t0, $t0, $a2
	bstrpick.d	$t0, $t0, 31, 0
	vpickve2gr.w	$t1, $vr5, 0
	mod.wu	$t1, $t1, $a2
	bstrpick.d	$t1, $t1, 31, 0
	vpickve2gr.w	$t2, $vr5, 1
	mod.wu	$t2, $t2, $a2
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa4, $t0
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa5, $a7
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	movgr2fr.d	$fa4, $t2
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa6, $t1
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr4, 16
	vfdiv.d	$vr4, $vr5, $vr1
	vfdiv.d	$vr5, $vr6, $vr1
	add.d	$a7, $a5, $a6
	vstx	$vr4, $a5, $a6
	vst	$vr5, $a7, 16
	addi.d	$a6, $a6, 32
	vaddi.du	$vr3, $vr3, 4
	bne	$a6, $a3, .LBB8_20
# %bb.21:                               # %._crit_edge.us75.i
                                        #   in Loop: Header=BB8_19 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a5, $a5, 640
	bne	$a1, $a4, .LBB8_19
# %bb.22:                               # %.preheader.us.i.preheader
	move	$a1, $zero
	vld	$vr0, $a0, %pc_lo12(.LCPI8_0)
	ori	$a0, $zero, 70
	ori	$a2, $zero, 0
	lu32i.d	$a2, 98304
	lu52i.d	$a2, $a2, 1029
	vreplgr2vr.d	$vr1, $a2
	ori	$a2, $zero, 640
	ori	$a3, $zero, 40
	move	$a4, $s8
	.p2align	4, , 16
.LBB8_23:                               # %.preheader.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_24 Depth 2
	move	$a5, $zero
	vreplgr2vr.d	$vr2, $a1
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB8_24:                               # %vector.body71
                                        #   Parent Loop BB8_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr4, $vr3, 2
	vaddi.du	$vr3, $vr3, 4
	vmul.d	$vr4, $vr4, $vr2
	vmul.d	$vr5, $vr3, $vr2
	vpickve2gr.w	$a6, $vr4, 0
	mod.w	$a6, $a6, $a0
	bstrpick.d	$a6, $a6, 31, 0
	vpickve2gr.w	$a7, $vr4, 2
	mod.w	$a7, $a7, $a0
	bstrpick.d	$a7, $a7, 31, 0
	vpickve2gr.w	$t0, $vr5, 0
	mod.w	$t0, $t0, $a0
	bstrpick.d	$t0, $t0, 31, 0
	vpickve2gr.w	$t1, $vr5, 2
	mod.w	$t1, $t1, $a0
	bstrpick.d	$t1, $t1, 31, 0
	movgr2fr.d	$fa4, $a7
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa5, $a6
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	movgr2fr.d	$fa4, $t1
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa6, $t0
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr4, 16
	vfdiv.d	$vr4, $vr5, $vr1
	vfdiv.d	$vr5, $vr6, $vr1
	add.d	$a6, $a4, $a5
	vstx	$vr4, $a4, $a5
	addi.d	$a5, $a5, 32
	vst	$vr5, $a6, 16
	bne	$a5, $a2, .LBB8_24
# %bb.25:                               # %._crit_edge.us79.i
                                        #   in Loop: Header=BB8_23 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 640
	bne	$a1, $a3, .LBB8_23
# %bb.26:                               # %.preheader49.i.preheader
	move	$a0, $zero
	ori	$a1, $zero, 400
	movgr2fr.d	$fa0, $zero
	vldi	$vr1, -904
	ori	$a2, $zero, 560
	ori	$a3, $zero, 50
	ori	$a4, $zero, 40
	move	$a5, $s0
	.p2align	4, , 16
.LBB8_27:                               # %.preheader49.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_28 Depth 2
                                        #       Child Loop BB8_29 Depth 3
	move	$a6, $zero
	mul.d	$a7, $a0, $a1
	add.d	$a7, $fp, $a7
	move	$t0, $s1
	.p2align	4, , 16
.LBB8_28:                               #   Parent Loop BB8_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_29 Depth 3
	move	$t1, $zero
	alsl.d	$t2, $a6, $a7, 3
	slli.d	$t3, $a6, 3
	stx.d	$zero, $a7, $t3
	move	$t3, $t0
	fmov.d	$fa2, $fa0
	.p2align	4, , 16
.LBB8_29:                               #   Parent Loop BB8_27 Depth=1
                                        #     Parent Loop BB8_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa3, $a5, $t1
	fld.d	$fa4, $t3, 0
	fmul.d	$fa3, $fa3, $fa1
	fmul.d	$fa3, $fa3, $fa4
	fadd.d	$fa2, $fa2, $fa3
	fst.d	$fa2, $t2, 0
	addi.d	$t1, $t1, 8
	addi.d	$t3, $t3, 400
	bne	$t1, $a2, .LBB8_29
# %bb.30:                               #   in Loop: Header=BB8_28 Depth=2
	addi.d	$a6, $a6, 1
	addi.d	$t0, $t0, 8
	bne	$a6, $a3, .LBB8_28
# %bb.31:                               #   in Loop: Header=BB8_27 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a5, $a5, 560
	bne	$a0, $a4, .LBB8_27
# %bb.32:                               # %.preheader.i.preheader
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.LCPI8_3)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI8_3)
	ori	$a1, $zero, 400
	ori	$a2, $zero, 80
	ori	$a3, $zero, 40
	move	$a4, $fp
	.p2align	4, , 16
.LBB8_33:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_34 Depth 2
                                        #       Child Loop BB8_35 Depth 3
	move	$a5, $zero
	alsl.d	$a6, $a0, $a0, 2
	slli.d	$a6, $a6, 7
	add.d	$a6, $s8, $a6
	move	$a7, $s2
	.p2align	4, , 16
.LBB8_34:                               #   Parent Loop BB8_33 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_35 Depth 3
	slli.d	$t2, $a5, 3
	fldx.d	$fa1, $a6, $t2
	move	$t0, $zero
	alsl.d	$t1, $a5, $a6, 3
	fmul.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $a6, $t2
	move	$t2, $a7
	.p2align	4, , 16
.LBB8_35:                               #   Parent Loop BB8_33 Depth=1
                                        #     Parent Loop BB8_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa2, $a4, $t0
	fld.d	$fa3, $t2, 0
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $t1, 0
	addi.d	$t0, $t0, 8
	addi.d	$t2, $t2, 640
	bne	$t0, $a1, .LBB8_35
# %bb.36:                               #   in Loop: Header=BB8_34 Depth=2
	addi.d	$a5, $a5, 1
	addi.d	$a7, $a7, 8
	bne	$a5, $a2, .LBB8_34
# %bb.37:                               #   in Loop: Header=BB8_33 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a4, 400
	bne	$a0, $a3, .LBB8_33
# %bb.38:                               # %kernel_2mm.exit
	ori	$a0, $zero, 1281
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI8_4)
	vld	$vr5, $a1, %pc_lo12(.LCPI8_4)
	pcalau12i	$a1, %pc_hi20(.LCPI8_5)
	vld	$vr6, $a1, %pc_lo12(.LCPI8_5)
	pcalau12i	$a1, %pc_hi20(.LCPI8_6)
	vld	$vr7, $a1, %pc_lo12(.LCPI8_6)
	pcalau12i	$a1, %pc_hi20(.LCPI8_7)
	vld	$vr8, $a1, %pc_lo12(.LCPI8_7)
	move	$s4, $a0
	st.b	$zero, $a0, 1280
	ori	$s5, $zero, 1280
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s6, $a0, %got_pc_lo12(stderr)
	move	$s7, $zero
	move	$s3, $s8
	vst	$vr5, $sp, 64                   # 16-byte Folded Spill
	vst	$vr6, $sp, 48                   # 16-byte Folded Spill
	vst	$vr7, $sp, 32                   # 16-byte Folded Spill
	vst	$vr8, $sp, 16                   # 16-byte Folded Spill
.LBB8_39:                               # %.preheader.i35
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_40 Depth 2
	move	$a0, $zero
	move	$a1, $s3
	.p2align	4, , 16
.LBB8_40:                               #   Parent Loop BB8_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
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
	vstx	$vr0, $s4, $a0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 8
	bne	$a0, $s5, .LBB8_40
# %bb.41:                               #   in Loop: Header=BB8_39 Depth=1
	ld.d	$a1, $s6, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 16                   # 16-byte Folded Reload
	vld	$vr7, $sp, 32                   # 16-byte Folded Reload
	vld	$vr6, $sp, 48                   # 16-byte Folded Reload
	vld	$vr5, $sp, 64                   # 16-byte Folded Reload
	addi.d	$s7, $s7, 1
	addi.d	$s3, $s3, 640
	ori	$a0, $zero, 40
	bne	$s7, $a0, .LBB8_39
# %bb.42:                               # %print_array.exit
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
	move	$a0, $s8
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
.LBB8_43:
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
.Lfunc_end8:
	.size	main, .Lfunc_end8-main
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
