	.file	"durbin.c"
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
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 1856
	sub.d	$sp, $sp, $a0
	st.d	$zero, $sp, 80
	lu12i.w	$s1, 3
	ori	$s2, $s1, 3712
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 80
	beqz	$s0, .LBB7_38
# %bb.1:
	bnez	$a0, .LBB7_38
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 80
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	beqz	$a1, .LBB7_38
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_38
# %bb.4:                                # %polybench_alloc_data.exit19
	st.d	$zero, $sp, 80
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 80
	beqz	$fp, .LBB7_38
# %bb.5:                                # %polybench_alloc_data.exit19
	bnez	$a0, .LBB7_38
# %bb.6:                                # %polybench_alloc_data.exit21
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr0, $a0
	lu12i.w	$a0, -4
	ori	$a0, $a0, 384
	ori	$a1, $zero, 2001
	vreplgr2vr.w	$vr1, $a1
	ori	$a1, $zero, 1999
	vreplgr2vr.w	$vr2, $a1
	ori	$s5, $s1, 3728
	.p2align	4, , 16
.LBB7_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vsub.w	$vr3, $vr1, $vr0
	vsub.w	$vr4, $vr2, $vr0
	vpickve2gr.w	$a1, $vr3, 1
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa5, $a1
	ffint.d.l	$fa5, $fa5
	vpickve2gr.w	$a1, $vr3, 0
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa3, $a1
	ffint.d.l	$fa3, $fa3
	vextrins.d	$vr3, $vr5, 16
	vpickve2gr.w	$a1, $vr4, 1
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa5, $a1
	ffint.d.l	$fa5, $fa5
	vpickve2gr.w	$a1, $vr4, 0
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa4, $a1
	ffint.d.l	$fa4, $fa4
	vextrins.d	$vr4, $vr5, 16
	add.d	$a1, $s0, $a0
	vstx	$vr3, $a1, $s2
	vstx	$vr4, $a1, $s5
	addi.d	$a0, $a0, 32
	vaddi.wu	$vr0, $vr0, 4
	bnez	$a0, .LBB7_7
# %bb.8:                                # %init_array.exit
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	fld.d	$fa0, $s0, 0
	fneg.d	$fa0, $fa0
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	fst.d	$fa0, $a5, 0
	fld.d	$fa0, $s0, 0
	move	$s6, $zero
	move	$s7, $zero
	fneg.d	$fa3, $fa0
	addi.d	$a0, $a5, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$s8, $a5, -8
	ori	$s3, $zero, 1
	movgr2fr.d	$fs0, $zero
	addi.w	$s4, $zero, -8
	move	$s1, $a5
	vldi	$vr5, -912
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_9:                                # %.preheader.preheader.i
                                        #   in Loop: Header=BB7_10 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$s2, $s3, $a0, 3
	slli.d	$a0, $s7, 3
	addi.d	$a2, $a0, 8
	addi.d	$a1, $sp, 80
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	vst	$vr5, $sp, 48                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vld	$vr3, $sp, 48                   # 16-byte Folded Reload
	fst.d	$fa3, $s2, 0
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	addi.d	$s3, $s3, 1
	addi.d	$s7, $s7, 1
	addi.d	$s6, $s6, 8
	addi.d	$s8, $s8, 8
	addi.d	$s1, $s1, 8
	ori	$a0, $zero, 1999
	vld	$vr5, $sp, 32                   # 16-byte Folded Reload
	beq	$s7, $a0, .LBB7_19
.LBB7_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_11 Depth 2
                                        #     Child Loop BB7_15 Depth 2
                                        #     Child Loop BB7_18 Depth 2
	move	$a1, $s3
	bstrins.d	$a1, $zero, 1, 0
	alsl.d	$a0, $s3, $s0, 3
	move	$a2, $a5
	move	$a3, $s6
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB7_11:                               #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa1, $s0, $a3
	fld.d	$fa2, $a2, 0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 8
	bne	$a3, $s4, .LBB7_11
# %bb.12:                               #   in Loop: Header=BB7_10 Depth=1
	fld.d	$fa1, $a0, 0
	fneg.d	$fa2, $fa3
	vldi	$vr4, -912
	fmadd.d	$fa2, $fa2, $fa3, $fa4
	fmul.d	$fa5, $fa5, $fa2
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	vst	$vr5, $sp, 32                   # 16-byte Folded Spill
	fdiv.d	$fa5, $fa0, $fa5
	ori	$a0, $zero, 4
	bgeu	$s3, $a0, .LBB7_14
# %bb.13:                               #   in Loop: Header=BB7_10 Depth=1
	move	$a0, $zero
	b	.LBB7_17
	.p2align	4, , 16
.LBB7_14:                               # %vector.ph77
                                        #   in Loop: Header=BB7_10 Depth=1
	bstrpick.d	$a0, $s3, 62, 2
	slli.d	$a0, $a0, 2
	vreplvei.d	$vr0, $vr5, 0
	move	$a2, $s8
	addi.d	$a3, $sp, 96
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_15:                               # %vector.body78
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a2, 0
	vld	$vr2, $a2, -16
	vld	$vr3, $a4, -16
	vld	$vr4, $a4, 0
	vshuf4i.d	$vr1, $vr0, 1
	vshuf4i.d	$vr2, $vr0, 1
	vfmadd.d	$vr1, $vr0, $vr1, $vr3
	vfmadd.d	$vr2, $vr0, $vr2, $vr4
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a1, $a1, -4
	addi.d	$a4, $a4, 32
	addi.d	$a3, $a3, 32
	addi.d	$a2, $a2, -32
	bnez	$a1, .LBB7_15
# %bb.16:                               # %middle.block85
                                        #   in Loop: Header=BB7_10 Depth=1
	beq	$s3, $a0, .LBB7_9
.LBB7_17:                               # %scalar.ph76.preheader
                                        #   in Loop: Header=BB7_10 Depth=1
	slli.d	$a2, $a0, 3
	addi.d	$a1, $sp, 80
	alsl.d	$a1, $a0, $a1, 3
	sub.d	$a2, $s1, $a2
	alsl.d	$a3, $a0, $a5, 3
	.p2align	4, , 16
.LBB7_18:                               # %scalar.ph76
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a3, 0
	fld.d	$fa1, $a2, 0
	fmadd.d	$fa0, $fa5, $fa1, $fa0
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -8
	addi.d	$a3, $a3, 8
	bne	$s3, $a0, .LBB7_18
	b	.LBB7_9
.LBB7_19:                               # %kernel_durbin.exit
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr0, $a0
	lu12i.w	$a0, -4
	ori	$a0, $a0, 384
	ori	$a1, $zero, 2001
	vreplgr2vr.w	$vr1, $a1
	ori	$a1, $zero, 1999
	vreplgr2vr.w	$vr2, $a1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_20:                               # %vector.body88
                                        # =>This Inner Loop Header: Depth=1
	vsub.w	$vr3, $vr1, $vr0
	vsub.w	$vr4, $vr2, $vr0
	vpickve2gr.w	$a1, $vr3, 1
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa5, $a1
	ffint.d.l	$fa5, $fa5
	vpickve2gr.w	$a1, $vr3, 0
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa3, $a1
	ffint.d.l	$fa3, $fa3
	vextrins.d	$vr3, $vr5, 16
	vpickve2gr.w	$a1, $vr4, 1
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa5, $a1
	ffint.d.l	$fa5, $fa5
	vpickve2gr.w	$a1, $vr4, 0
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa4, $a1
	ffint.d.l	$fa4, $fa4
	vextrins.d	$vr4, $vr5, 16
	add.d	$a1, $s0, $a0
	vstx	$vr3, $a1, $a2
	vstx	$vr4, $a1, $s5
	addi.d	$a0, $a0, 32
	vaddi.wu	$vr0, $vr0, 4
	bnez	$a0, .LBB7_20
# %bb.21:                               # %init_array.exit28
	fld.d	$fa0, $s0, 0
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $fp, 0
	fld.d	$fa0, $s0, 0
	move	$s5, $zero
	move	$s6, $zero
	fneg.d	$fa3, $fa0
	addi.d	$a0, $fp, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$s3, $fp, -8
	ori	$s8, $zero, 1
	movgr2fr.d	$fs0, $zero
	ori	$s7, $zero, 1999
	move	$s2, $fp
	vldi	$vr4, -912
	b	.LBB7_23
	.p2align	4, , 16
.LBB7_22:                               # %.preheader.preheader.i40
                                        #   in Loop: Header=BB7_23 Depth=1
	alsl.d	$s1, $s8, $fp, 3
	slli.d	$a0, $s6, 3
	addi.d	$a2, $a0, 8
	addi.d	$a1, $sp, 80
	move	$a0, $fp
	vst	$vr5, $sp, 48                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vld	$vr3, $sp, 48                   # 16-byte Folded Reload
	fst.d	$fa3, $s1, 0
	addi.d	$s8, $s8, 1
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	addi.d	$s3, $s3, 8
	addi.d	$s2, $s2, 8
	vld	$vr4, $sp, 32                   # 16-byte Folded Reload
	beq	$s6, $s7, .LBB7_32
.LBB7_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_24 Depth 2
                                        #     Child Loop BB7_28 Depth 2
                                        #     Child Loop BB7_31 Depth 2
	move	$a1, $s8
	bstrins.d	$a1, $zero, 1, 0
	alsl.d	$a0, $s8, $s0, 3
	move	$a2, $fp
	move	$a3, $s5
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB7_24:                               #   Parent Loop BB7_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa1, $s0, $a3
	fld.d	$fa2, $a2, 0
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 8
	bne	$a3, $s4, .LBB7_24
# %bb.25:                               #   in Loop: Header=BB7_23 Depth=1
	fld.d	$fa1, $a0, 0
	fmul.d	$fa2, $fa3, $fa3
	vldi	$vr3, -912
	fsub.d	$fa2, $fa3, $fa2
	fmul.d	$fa4, $fa4, $fa2
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fa0, $fa0
	vst	$vr4, $sp, 32                   # 16-byte Folded Spill
	fdiv.d	$fa5, $fa0, $fa4
	ori	$a0, $zero, 4
	bgeu	$s8, $a0, .LBB7_27
# %bb.26:                               #   in Loop: Header=BB7_23 Depth=1
	move	$a0, $zero
	b	.LBB7_30
	.p2align	4, , 16
.LBB7_27:                               # %vector.ph97
                                        #   in Loop: Header=BB7_23 Depth=1
	bstrpick.d	$a0, $s8, 62, 2
	slli.d	$a0, $a0, 2
	vreplvei.d	$vr0, $vr5, 0
	move	$a2, $s3
	addi.d	$a3, $sp, 96
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_28:                               # %vector.body102
                                        #   Parent Loop BB7_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a2, 0
	vld	$vr2, $a2, -16
	vld	$vr3, $a4, -16
	vld	$vr4, $a4, 0
	vshuf4i.d	$vr1, $vr0, 1
	vshuf4i.d	$vr2, $vr0, 1
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr2, $vr0, $vr2
	vfadd.d	$vr1, $vr3, $vr1
	vfadd.d	$vr2, $vr4, $vr2
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a1, $a1, -4
	addi.d	$a4, $a4, 32
	addi.d	$a3, $a3, 32
	addi.d	$a2, $a2, -32
	bnez	$a1, .LBB7_28
# %bb.29:                               # %middle.block111
                                        #   in Loop: Header=BB7_23 Depth=1
	beq	$s8, $a0, .LBB7_22
.LBB7_30:                               # %scalar.ph95.preheader
                                        #   in Loop: Header=BB7_23 Depth=1
	slli.d	$a2, $a0, 3
	addi.d	$a1, $sp, 80
	alsl.d	$a1, $a0, $a1, 3
	sub.d	$a2, $s2, $a2
	alsl.d	$a3, $a0, $fp, 3
	.p2align	4, , 16
.LBB7_31:                               # %scalar.ph95
                                        #   Parent Loop BB7_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a2, 0
	fld.d	$fa1, $a3, 0
	fmul.d	$fa0, $fa5, $fa0
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -8
	addi.d	$a3, $a3, 8
	bne	$s8, $a0, .LBB7_31
	b	.LBB7_22
.LBB7_32:                               # %kernel_durbin_StrictFP.exit
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_0)
	move	$a2, $zero
	lu12i.w	$a0, -4
	ori	$a0, $a0, 384
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_33:                               # =>This Inner Loop Header: Depth=1
	add.d	$a1, $s1, $a0
	fldx.d	$fa1, $a1, $a3
	add.d	$a1, $fp, $a0
	fldx.d	$fa2, $a1, $a3
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_36
# %bb.34:                               # %.critedge.i
                                        #   in Loop: Header=BB7_33 Depth=1
	addi.d	$a0, $a0, 8
	addi.w	$a2, $a2, 1
	bnez	$a0, .LBB7_33
# %bb.35:                               # %check_FP.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(print_array)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB7_37
.LBB7_36:                               # %check_FP.exit.thread
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	movfr2gr.d	$a3, $fa1
	movfr2gr.d	$a5, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	lu12i.w	$a4, -487882
	ori	$a4, $a4, 2289
	lu32i.d	$a4, 325813
	lu52i.d	$a6, $a4, 1006
	move	$a4, $a2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB7_37:
	lu12i.w	$a1, 3
	ori	$a1, $a1, 1856
	add.d	$sp, $sp, $a1
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
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
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function print_array
	.type	print_array,@function
print_array:                            # @print_array
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s1, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a2, $a2, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -209716
	ori	$a1, $a0, 3277
	lu32i.d	$a1, -209716
	lu52i.d	$s2, $a1, -820
	ori	$a0, $a0, 3276
	lu32i.d	$a0, -209716
	lu52i.d	$s3, $a0, 204
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s0, $a0, %pc_lo12(.L.str.7)
	move	$s4, $zero
	ori	$s5, $zero, 2000
	b	.LBB8_2
	.p2align	4, , 16
.LBB8_1:                                #   in Loop: Header=BB8_2 Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a2, $fp, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 1
	addi.d	$fp, $fp, 8
	beq	$s4, $s5, .LBB8_4
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s4, 15, 0
	mul.d	$a0, $a0, $s2
	rotri.d	$a0, $a0, 2
	bltu	$s3, $a0, .LBB8_1
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB8_1
.LBB8_4:
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a2, $a2, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end8:
	.size	print_array, .Lfunc_end8-print_array
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
	.asciz	"A[%d] = %lf and B[%d] = %lf differ more than FP_ABSTOLERANCE = %lf\n"
	.size	.L.str.2, 68

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"==BEGIN DUMP_ARRAYS==\n"
	.size	.L.str.3, 23

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"begin dump: %s"
	.size	.L.str.4, 15

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"y"
	.size	.L.str.5, 2

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%0.2lf "
	.size	.L.str.7, 8

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\nend   dump: %s\n"
	.size	.L.str.8, 17

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"==END   DUMP_ARRAYS==\n"
	.size	.L.str.9, 23

	.section	".note.GNU-stack","",@progbits
	.addrsig
