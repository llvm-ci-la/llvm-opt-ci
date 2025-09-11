	.file	"syrk.c"
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
.LCPI7_4:
	.dword	48                              # 0x30
	.dword	56                              # 0x38
.LCPI7_5:
	.dword	32                              # 0x20
	.dword	40                              # 0x28
.LCPI7_6:
	.dword	16                              # 0x10
	.dword	24                              # 0x18
.LCPI7_7:
	.dword	0                               # 0x0
	.dword	8                               # 0x8
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI7_1:
	.dword	0x408f400000000000              # double 1000
.LCPI7_2:
	.dword	0x3ff3333333333333              # double 1.2
.LCPI7_3:
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
	lu12i.w	$a0, 2812
	ori	$s0, $a0, 2048
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 80
	beqz	$fp, .LBB7_65
# %bb.1:
	bnez	$a0, .LBB7_65
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 80
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 80
	beqz	$s0, .LBB7_65
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_65
# %bb.4:                                # %polybench_alloc_data.exit22
	st.d	$zero, $sp, 80
	lu12i.w	$a0, 2343
	ori	$a2, $a0, 3072
	lu12i.w	$s2, 1
	addi.d	$a0, $sp, 80
	move	$a1, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 80
	beqz	$s1, .LBB7_65
# %bb.5:                                # %polybench_alloc_data.exit22
	bnez	$a0, .LBB7_65
# %bb.6:                                # %polybench_alloc_data.exit24
	move	$a1, $zero
	pcalau12i	$t3, %pc_hi20(.LCPI7_0)
	vld	$vr0, $t3, %pc_lo12(.LCPI7_0)
	lu12i.w	$a4, -2
	ori	$a2, $a4, 192
	ori	$a3, $zero, 1200
	ori	$a0, $zero, 0
	lu32i.d	$a0, 180224
	lu52i.d	$a0, $a0, 1033
	vreplgr2vr.d	$vr1, $a0
	ori	$a0, $s2, 3904
	ori	$a5, $s2, 3920
	move	$a6, $s1
	.p2align	4, , 16
.LBB7_7:                                # %.preheader35.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
	vreplgr2vr.d	$vr2, $a1
	move	$a7, $a2
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB7_8:                                # %vector.body
                                        #   Parent Loop BB7_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr4, $vr3, 2
	vmul.d	$vr5, $vr3, $vr2
	vmul.d	$vr4, $vr4, $vr2
	vshuf4i.w	$vr5, $vr5, 8
	vshuf4i.w	$vr4, $vr4, 8
	vaddi.wu	$vr5, $vr5, 1
	vaddi.wu	$vr4, $vr4, 1
	vpickve2gr.w	$t0, $vr5, 0
	mod.wu	$t0, $t0, $a3
	bstrpick.d	$t0, $t0, 31, 0
	vpickve2gr.w	$t1, $vr5, 1
	mod.wu	$t1, $t1, $a3
	bstrpick.d	$t1, $t1, 31, 0
	vpickve2gr.w	$t2, $vr4, 0
	mod.wu	$t2, $t2, $a3
	bstrpick.d	$t2, $t2, 31, 0
	vpickve2gr.w	$t4, $vr4, 1
	mod.wu	$t4, $t4, $a3
	bstrpick.d	$t4, $t4, 31, 0
	movgr2fr.d	$fa4, $t1
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa5, $t0
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	movgr2fr.d	$fa4, $t4
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa6, $t2
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr4, 16
	vfdiv.d	$vr4, $vr5, $vr1
	vfdiv.d	$vr5, $vr6, $vr1
	add.d	$t0, $a6, $a7
	vstx	$vr4, $t0, $a0
	vstx	$vr5, $t0, $a5
	addi.d	$a7, $a7, 32
	vaddi.du	$vr3, $vr3, 4
	bnez	$a7, .LBB7_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB7_7 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a6, $a6, $a0
	bne	$a1, $a3, .LBB7_7
# %bb.10:                               # %.preheader.i.preheader
	move	$a3, $zero
	move	$a5, $zero
	sub.d	$a6, $s0, $fp
	ori	$a7, $zero, 31
	lu12i.w	$a1, -3
	ori	$t0, $a1, 2688
	lu12i.w	$a1, 67108
	ori	$t1, $a1, 3539
	ori	$t2, $zero, 1000
	pcalau12i	$a1, %pc_hi20(.LCPI7_1)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI7_1)
	lu12i.w	$a2, 2
	ori	$s3, $a2, 1408
	ori	$t4, $zero, 1200
	vld	$vr1, $t3, %pc_lo12(.LCPI7_0)
	ori	$a1, $zero, 0
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1032
	vreplgr2vr.d	$vr2, $a1
	ori	$t3, $a2, 1424
	move	$t5, $fp
	move	$t6, $s0
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_11:                               # %middle.block99
                                        #   in Loop: Header=BB7_12 Depth=1
	addi.d	$a5, $a5, 1
	add.d	$t6, $t6, $s3
	add.d	$t5, $t5, $s3
	addi.d	$a3, $a3, 1
	beq	$a5, $t4, .LBB7_17
.LBB7_12:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
                                        #     Child Loop BB7_14 Depth 2
	bltu	$a7, $a6, .LBB7_15
# %bb.13:                               # %scalar.ph89.preheader
                                        #   in Loop: Header=BB7_12 Depth=1
	ori	$a1, $zero, 2
	move	$t7, $t0
	.p2align	4, , 16
.LBB7_14:                               # %scalar.ph89
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t8, $a1, 31, 0
	mul.d	$t8, $t8, $t1
	srli.d	$t8, $t8, 38
	mul.d	$t8, $t8, $t2
	sub.d	$t8, $a1, $t8
	bstrpick.d	$t8, $t8, 31, 0
	movgr2fr.d	$fa3, $t8
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	add.d	$t8, $t5, $t7
	fstx.d	$fa3, $t8, $s3
	add.d	$t8, $t6, $t7
	fstx.d	$fa3, $t8, $s3
	addi.d	$t7, $t7, 8
	add.w	$a1, $a1, $a3
	bnez	$t7, .LBB7_14
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_15:                               # %vector.ph90
                                        #   in Loop: Header=BB7_12 Depth=1
	vreplgr2vr.d	$vr3, $a5
	move	$a1, $t0
	vori.b	$vr4, $vr1, 0
	.p2align	4, , 16
.LBB7_16:                               # %vector.body93
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr5, $vr4, 2
	vmul.d	$vr6, $vr4, $vr3
	vmul.d	$vr5, $vr5, $vr3
	vshuf4i.w	$vr6, $vr6, 8
	vshuf4i.w	$vr5, $vr5, 8
	vaddi.wu	$vr6, $vr6, 2
	vaddi.wu	$vr5, $vr5, 2
	vpickve2gr.w	$t7, $vr6, 0
	mod.wu	$t7, $t7, $t2
	bstrpick.d	$t7, $t7, 31, 0
	vpickve2gr.w	$t8, $vr6, 1
	mod.wu	$t8, $t8, $t2
	bstrpick.d	$t8, $t8, 31, 0
	vpickve2gr.w	$s2, $vr5, 0
	mod.wu	$s2, $s2, $t2
	bstrpick.d	$s2, $s2, 31, 0
	vpickve2gr.w	$s4, $vr5, 1
	mod.wu	$s4, $s4, $t2
	bstrpick.d	$s4, $s4, 31, 0
	movgr2fr.d	$fa5, $t8
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa6, $t7
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	movgr2fr.d	$fa5, $s4
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa7, $s2
	ffint.d.l	$fa7, $fa7
	vextrins.d	$vr7, $vr5, 16
	vfdiv.d	$vr5, $vr6, $vr2
	vfdiv.d	$vr6, $vr7, $vr2
	add.d	$t7, $t5, $a1
	vstx	$vr5, $t7, $s3
	vstx	$vr6, $t7, $t3
	add.d	$t7, $t6, $a1
	vstx	$vr5, $t7, $s3
	vstx	$vr6, $t7, $t3
	addi.d	$a1, $a1, 32
	vaddi.du	$vr4, $vr4, 4
	bnez	$a1, .LBB7_16
	b	.LBB7_11
.LBB7_17:                               # %.preheader29.i.preheader
	move	$t0, $zero
	addi.d	$t5, $fp, 16
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3712
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	add.d	$a7, $s1, $a1
	ori	$t3, $zero, 1
	addi.w	$t4, $zero, -8
	ori	$a2, $a2, 1416
	vldi	$vr1, -904
	ori	$t6, $zero, 1000
	lu12i.w	$a1, -4
	ori	$a3, $a1, 384
	ori	$a4, $a4, 192
	lu12i.w	$a1, 7
	ori	$a5, $a1, 3328
	lu12i.w	$a1, 209715
	ori	$a1, $a1, 819
	lu32i.d	$a1, 209715
	lu52i.d	$a1, $a1, 1023
	vreplgr2vr.d	$vr0, $a1
	move	$t8, $fp
	pcalau12i	$a6, %pc_hi20(.LCPI7_2)
	b	.LBB7_19
	.p2align	4, , 16
.LBB7_18:                               #   in Loop: Header=BB7_19 Depth=1
	addi.d	$t0, $t0, 1
	addi.d	$t3, $t3, 1
	add.d	$t5, $t5, $s3
	add.d	$t8, $t8, $s3
	addi.d	$t4, $t4, -8
	ori	$a1, $zero, 1200
	beq	$t0, $a1, .LBB7_35
.LBB7_19:                               # %.preheader29.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_22 Depth 2
                                        #     Child Loop BB7_25 Depth 2
                                        #     Child Loop BB7_28 Depth 2
                                        #       Child Loop BB7_31 Depth 3
                                        #       Child Loop BB7_34 Depth 3
	move	$t7, $t3
	bstrins.d	$t7, $zero, 1, 0
	bstrpick.d	$s7, $t3, 62, 2
	ori	$a1, $zero, 4
	bgeu	$t3, $a1, .LBB7_21
# %bb.20:                               #   in Loop: Header=BB7_19 Depth=1
	move	$a1, $zero
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_21:                               # %vector.ph119
                                        #   in Loop: Header=BB7_19 Depth=1
	slli.d	$a1, $s7, 2
	move	$t1, $t5
	move	$t2, $t7
	.p2align	4, , 16
.LBB7_22:                               # %vector.body122
                                        #   Parent Loop BB7_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $t1, -16
	vld	$vr3, $t1, 0
	vfmul.d	$vr2, $vr2, $vr0
	vfmul.d	$vr3, $vr3, $vr0
	vst	$vr2, $t1, -16
	vst	$vr3, $t1, 0
	addi.d	$t2, $t2, -4
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB7_22
# %bb.23:                               # %middle.block127
                                        #   in Loop: Header=BB7_19 Depth=1
	beq	$t3, $a1, .LBB7_26
.LBB7_24:                               # %scalar.ph117.preheader
                                        #   in Loop: Header=BB7_19 Depth=1
	alsl.d	$t1, $a1, $t8, 3
	.p2align	4, , 16
.LBB7_25:                               # %scalar.ph117
                                        #   Parent Loop BB7_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $t1, 0
	fld.d	$fa3, $a6, %pc_lo12(.LCPI7_2)
	fmul.d	$fa2, $fa2, $fa3
	fst.d	$fa2, $t1, 0
	addi.d	$a1, $a1, 1
	addi.d	$t1, $t1, 8
	bne	$t3, $a1, .LBB7_25
.LBB7_26:                               # %.preheader28.i
                                        #   in Loop: Header=BB7_19 Depth=1
	move	$s4, $zero
	mul.d	$a1, $t0, $s3
	add.d	$a1, $fp, $a1
	mul.d	$t1, $t0, $a2
	add.d	$t1, $fp, $t1
	addi.d	$t1, $t1, 8
	mul.d	$t2, $t0, $a0
	add.d	$s5, $s1, $t2
	add.d	$t2, $s5, $a0
	sltu	$a1, $a1, $t2
	sltu	$t2, $s1, $t1
	sltu	$t1, $s5, $t1
	or	$t1, $t2, $t1
	and	$s6, $a1, $t1
	slli.d	$s7, $s7, 2
	move	$s8, $s1
	move	$t2, $a7
	b	.LBB7_28
	.p2align	4, , 16
.LBB7_27:                               # %.loopexit170
                                        #   in Loop: Header=BB7_28 Depth=2
	addi.d	$s4, $s4, 1
	addi.d	$t2, $t2, 8
	addi.d	$s8, $s8, 8
	beq	$s4, $t6, .LBB7_18
.LBB7_28:                               # %.preheader.i29
                                        #   Parent Loop BB7_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_31 Depth 3
                                        #       Child Loop BB7_34 Depth 3
	sltui	$a1, $t3, 4
	or	$a1, $a1, $s6
	andi	$t1, $a1, 1
	alsl.d	$a1, $s4, $s5, 3
	beqz	$t1, .LBB7_30
# %bb.29:                               #   in Loop: Header=BB7_28 Depth=2
	move	$s2, $zero
	b	.LBB7_33
	.p2align	4, , 16
.LBB7_30:                               # %vector.ph108
                                        #   in Loop: Header=BB7_28 Depth=2
	fld.d	$fa2, $a1, 0
	fmul.d	$fa2, $fa2, $fa1
	vreplvei.d	$vr2, $vr2, 0
	move	$ra, $t2
	move	$t1, $t5
	move	$s2, $t7
	.p2align	4, , 16
.LBB7_31:                               # %vector.body109
                                        #   Parent Loop BB7_19 Depth=1
                                        #     Parent Loop BB7_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa3, $ra, $a3
	fldx.d	$fa4, $ra, $a4
	fld.d	$fa5, $ra, 0
	fldx.d	$fa6, $ra, $a0
	vld	$vr7, $t1, -16
	vld	$vr8, $t1, 0
	vextrins.d	$vr3, $vr4, 16
	vextrins.d	$vr5, $vr6, 16
	vfmadd.d	$vr3, $vr2, $vr3, $vr7
	vfmadd.d	$vr4, $vr2, $vr5, $vr8
	vst	$vr3, $t1, -16
	vst	$vr4, $t1, 0
	addi.d	$s2, $s2, -4
	addi.d	$t1, $t1, 32
	add.d	$ra, $ra, $a5
	bnez	$s2, .LBB7_31
# %bb.32:                               # %middle.block115
                                        #   in Loop: Header=BB7_28 Depth=2
	move	$s2, $s7
	beq	$t3, $s7, .LBB7_27
.LBB7_33:                               # %scalar.ph107.preheader
                                        #   in Loop: Header=BB7_28 Depth=2
	slli.d	$t1, $s2, 3
	mul.d	$s2, $s2, $a0
	add.d	$s2, $s8, $s2
	.p2align	4, , 16
.LBB7_34:                               # %scalar.ph107
                                        #   Parent Loop BB7_19 Depth=1
                                        #     Parent Loop BB7_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $s2, 0
	fldx.d	$fa4, $t8, $t1
	fmul.d	$fa2, $fa2, $fa1
	fmadd.d	$fa2, $fa2, $fa3, $fa4
	fstx.d	$fa2, $t8, $t1
	addi.d	$t1, $t1, 8
	add.d	$ra, $t4, $t1
	add.d	$s2, $s2, $a0
	bnez	$ra, .LBB7_34
	b	.LBB7_27
.LBB7_35:                               # %.preheader29.i34.preheader
	move	$t0, $zero
	addi.d	$t4, $s0, 16
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a7, $s1, $a1
	ori	$t2, $zero, 1
	addi.w	$t3, $zero, -8
	vldi	$vr1, -904
	ori	$t5, $zero, 1000
	move	$t7, $s0
	b	.LBB7_37
	.p2align	4, , 16
.LBB7_36:                               #   in Loop: Header=BB7_37 Depth=1
	addi.d	$t0, $t0, 1
	addi.d	$t2, $t2, 1
	add.d	$t4, $t4, $s3
	add.d	$t7, $t7, $s3
	addi.d	$t3, $t3, -8
	ori	$a1, $zero, 1200
	beq	$t0, $a1, .LBB7_53
.LBB7_37:                               # %.preheader29.i34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_40 Depth 2
                                        #     Child Loop BB7_43 Depth 2
                                        #     Child Loop BB7_46 Depth 2
                                        #       Child Loop BB7_49 Depth 3
                                        #       Child Loop BB7_52 Depth 3
	move	$t6, $t2
	bstrins.d	$t6, $zero, 1, 0
	bstrpick.d	$s6, $t2, 62, 2
	ori	$a1, $zero, 4
	bgeu	$t2, $a1, .LBB7_39
# %bb.38:                               #   in Loop: Header=BB7_37 Depth=1
	move	$a1, $zero
	b	.LBB7_42
	.p2align	4, , 16
.LBB7_39:                               # %vector.ph159
                                        #   in Loop: Header=BB7_37 Depth=1
	slli.d	$a1, $s6, 2
	move	$t1, $t4
	move	$t8, $t6
	.p2align	4, , 16
.LBB7_40:                               # %vector.body162
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $t1, -16
	vld	$vr3, $t1, 0
	vfmul.d	$vr2, $vr2, $vr0
	vfmul.d	$vr3, $vr3, $vr0
	vst	$vr2, $t1, -16
	vst	$vr3, $t1, 0
	addi.d	$t8, $t8, -4
	addi.d	$t1, $t1, 32
	bnez	$t8, .LBB7_40
# %bb.41:                               # %middle.block167
                                        #   in Loop: Header=BB7_37 Depth=1
	beq	$t2, $a1, .LBB7_44
.LBB7_42:                               # %scalar.ph157.preheader
                                        #   in Loop: Header=BB7_37 Depth=1
	alsl.d	$t1, $a1, $t7, 3
	.p2align	4, , 16
.LBB7_43:                               # %scalar.ph157
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $t1, 0
	fld.d	$fa3, $a6, %pc_lo12(.LCPI7_2)
	fmul.d	$fa2, $fa2, $fa3
	fst.d	$fa2, $t1, 0
	addi.d	$a1, $a1, 1
	addi.d	$t1, $t1, 8
	bne	$t2, $a1, .LBB7_43
.LBB7_44:                               # %.preheader28.i40
                                        #   in Loop: Header=BB7_37 Depth=1
	move	$s2, $zero
	mul.d	$a1, $t0, $s3
	add.d	$a1, $s0, $a1
	mul.d	$t1, $t0, $a2
	add.d	$t1, $s0, $t1
	addi.d	$t1, $t1, 8
	mul.d	$t8, $t0, $a0
	add.d	$s4, $s1, $t8
	add.d	$t8, $s4, $a0
	sltu	$a1, $a1, $t8
	sltu	$t8, $s1, $t1
	sltu	$t1, $s4, $t1
	or	$t1, $t8, $t1
	and	$s5, $a1, $t1
	slli.d	$s6, $s6, 2
	move	$s7, $s1
	move	$s8, $a7
	b	.LBB7_46
	.p2align	4, , 16
.LBB7_45:                               # %.loopexit
                                        #   in Loop: Header=BB7_46 Depth=2
	addi.d	$s2, $s2, 1
	addi.d	$s8, $s8, 8
	addi.d	$s7, $s7, 8
	beq	$s2, $t5, .LBB7_36
.LBB7_46:                               # %.preheader.i41
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_49 Depth 3
                                        #       Child Loop BB7_52 Depth 3
	sltui	$a1, $t2, 4
	or	$a1, $a1, $s5
	andi	$a1, $a1, 1
	alsl.d	$ra, $s2, $s4, 3
	beqz	$a1, .LBB7_48
# %bb.47:                               #   in Loop: Header=BB7_46 Depth=2
	move	$t1, $zero
	b	.LBB7_51
	.p2align	4, , 16
.LBB7_48:                               # %vector.ph144
                                        #   in Loop: Header=BB7_46 Depth=2
	fld.d	$fa2, $ra, 0
	fmul.d	$fa2, $fa2, $fa1
	vreplvei.d	$vr2, $vr2, 0
	move	$a1, $s8
	move	$t1, $t4
	move	$t8, $t6
	.p2align	4, , 16
.LBB7_49:                               # %vector.body147
                                        #   Parent Loop BB7_37 Depth=1
                                        #     Parent Loop BB7_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa3, $a1, $a3
	fldx.d	$fa4, $a1, $a4
	fld.d	$fa5, $a1, 0
	fldx.d	$fa6, $a1, $a0
	vextrins.d	$vr3, $vr4, 16
	vextrins.d	$vr5, $vr6, 16
	vld	$vr4, $t1, -16
	vld	$vr6, $t1, 0
	vfmul.d	$vr3, $vr2, $vr3
	vfmul.d	$vr5, $vr2, $vr5
	vfadd.d	$vr3, $vr4, $vr3
	vfadd.d	$vr4, $vr6, $vr5
	vst	$vr3, $t1, -16
	vst	$vr4, $t1, 0
	addi.d	$t8, $t8, -4
	addi.d	$t1, $t1, 32
	add.d	$a1, $a1, $a5
	bnez	$t8, .LBB7_49
# %bb.50:                               # %middle.block154
                                        #   in Loop: Header=BB7_46 Depth=2
	move	$t1, $s6
	beq	$t2, $s6, .LBB7_45
.LBB7_51:                               # %scalar.ph142.preheader
                                        #   in Loop: Header=BB7_46 Depth=2
	slli.d	$a1, $t1, 3
	mul.d	$t1, $t1, $a0
	add.d	$t1, $s7, $t1
	.p2align	4, , 16
.LBB7_52:                               # %scalar.ph142
                                        #   Parent Loop BB7_37 Depth=1
                                        #     Parent Loop BB7_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $ra, 0
	fld.d	$fa3, $t1, 0
	fldx.d	$fa4, $t7, $a1
	fmul.d	$fa2, $fa2, $fa1
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa2, $fa4, $fa2
	fstx.d	$fa2, $t7, $a1
	addi.d	$a1, $a1, 8
	add.d	$t8, $t3, $a1
	add.d	$t1, $t1, $a0
	bnez	$t8, .LBB7_52
	b	.LBB7_45
.LBB7_53:                               # %.preheader.i53.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_3)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_3)
	move	$a0, $zero
	move	$a2, $zero
	lu12i.w	$a1, -3
	ori	$a1, $a1, 2688
	ori	$a4, $zero, 1200
	.p2align	4, , 16
.LBB7_54:                               # %.preheader.i53
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_55 Depth 2
	move	$a3, $zero
	add.d	$a5, $s0, $a0
	add.d	$a6, $fp, $a0
	move	$a7, $a1
	.p2align	4, , 16
.LBB7_55:                               #   Parent Loop BB7_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	fldx.d	$fa1, $t0, $s3
	add.d	$t0, $a5, $a7
	fldx.d	$fa2, $t0, $s3
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_63
# %bb.56:                               # %.critedge.i
                                        #   in Loop: Header=BB7_55 Depth=2
	addi.d	$a7, $a7, 8
	addi.w	$a3, $a3, 1
	bnez	$a7, .LBB7_55
# %bb.57:                               #   in Loop: Header=BB7_54 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a0, $a0, $s3
	bne	$a2, $a4, .LBB7_54
# %bb.58:                               # %check_FP.exit
	lu12i.w	$s4, 4
	ori	$a0, $s4, 2817
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$s4, $s4, 2816
	pcalau12i	$a0, %pc_hi20(.LCPI7_4)
	vld	$vr5, $a0, %pc_lo12(.LCPI7_4)
	pcalau12i	$a0, %pc_hi20(.LCPI7_5)
	vld	$vr6, $a0, %pc_lo12(.LCPI7_5)
	pcalau12i	$a0, %pc_hi20(.LCPI7_6)
	vld	$vr7, $a0, %pc_lo12(.LCPI7_6)
	pcalau12i	$a0, %pc_hi20(.LCPI7_7)
	vld	$vr8, $a0, %pc_lo12(.LCPI7_7)
	stx.b	$zero, $s2, $s4
	lu12i.w	$a0, -5
	ori	$s5, $a0, 1280
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s6, $a0, %got_pc_lo12(stderr)
	move	$s7, $zero
	move	$s8, $s0
	vst	$vr5, $sp, 64                   # 16-byte Folded Spill
	vst	$vr6, $sp, 48                   # 16-byte Folded Spill
	vst	$vr7, $sp, 32                   # 16-byte Folded Spill
	vst	$vr8, $sp, 16                   # 16-byte Folded Spill
.LBB7_59:                               # %.preheader.i57
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_60 Depth 2
	move	$a0, $s8
	move	$a1, $s5
	.p2align	4, , 16
.LBB7_60:                               #   Parent Loop BB7_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 0
	add.d	$a3, $s2, $a1
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
	vstx	$vr0, $a3, $s4
	addi.d	$a1, $a1, 16
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB7_60
# %bb.61:                               #   in Loop: Header=BB7_59 Depth=1
	ld.d	$a1, $s6, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 16                   # 16-byte Folded Reload
	vld	$vr7, $sp, 32                   # 16-byte Folded Reload
	vld	$vr6, $sp, 48                   # 16-byte Folded Reload
	vld	$vr5, $sp, 64                   # 16-byte Folded Reload
	addi.d	$s7, $s7, 1
	add.d	$s8, $s8, $s3
	ori	$a0, $zero, 1200
	bne	$s7, $a0, .LBB7_59
# %bb.62:                               # %print_array.exit
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
	b	.LBB7_64
.LBB7_63:                               # %check_FP.exit.thread
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
.LBB7_64:
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
.LBB7_65:
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
