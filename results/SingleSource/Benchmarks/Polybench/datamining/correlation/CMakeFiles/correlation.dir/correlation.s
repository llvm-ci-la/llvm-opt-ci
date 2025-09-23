	.file	"correlation.c"
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
.LCPI7_2:
	.dword	0x4095e00000000000              # double 1400
.LCPI7_3:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
.LCPI7_4:
	.dword	0x4042b5524ae1278e              # double 37.416573867739416
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI7_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI7_5:
	.dword	48                              # 0x30
	.dword	56                              # 0x38
.LCPI7_6:
	.dword	32                              # 0x20
	.dword	40                              # 0x28
.LCPI7_7:
	.dword	16                              # 0x10
	.dword	24                              # 0x18
.LCPI7_8:
	.dword	0                               # 0x0
	.dword	8                               # 0x8
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	st.d	$zero, $sp, 88
	lu12i.w	$a0, 3281
	ori	$s4, $a0, 1024
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 88
	move	$a2, $s4
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 88
	beqz	$s5, .LBB7_38
# %bb.1:
	bnez	$a0, .LBB7_38
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 88
	lu12i.w	$a0, 2812
	ori	$a2, $a0, 2048
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 88
	beqz	$fp, .LBB7_38
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_38
# %bb.4:                                # %polybench_alloc_data.exit15
	st.d	$zero, $sp, 88
	lu12i.w	$s7, 2
	ori	$s2, $s7, 1408
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 88
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 88
	beqz	$s1, .LBB7_38
# %bb.5:                                # %polybench_alloc_data.exit15
	bnez	$a0, .LBB7_38
# %bb.6:                                # %polybench_alloc_data.exit17
	st.d	$zero, $sp, 88
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 88
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 88
	beqz	$s3, .LBB7_38
# %bb.7:                                # %polybench_alloc_data.exit17
	bnez	$a0, .LBB7_38
# %bb.8:                                # %polybench_alloc_data.exit19
	move	$a0, $zero
	lu52i.d	$a1, $zero, 1107
	pcalau12i	$a2, %pc_hi20(.LCPI7_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI7_0)
	lu12i.w	$a2, 275200
	pcalau12i	$a3, %pc_hi20(.LCPI7_1)
	vld	$vr1, $a3, %pc_lo12(.LCPI7_1)
	lu12i.w	$s6, -3
	ori	$a3, $s6, 2688
	ori	$a4, $zero, 0
	lu32i.d	$a4, 180224
	lu52i.d	$a4, $a4, 1033
	vreplgr2vr.d	$vr2, $a4
	ori	$a4, $s7, 1424
	ori	$a5, $zero, 1400
	move	$a6, $s5
	.p2align	4, , 16
.LBB7_9:                                # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
	srli.d	$a7, $a0, 32
	or	$a7, $a7, $a1
	movgr2fr.d	$fa3, $a7
	fsub.d	$fa3, $fa3, $fa0
	move	$a7, $a0
	bstrins.d	$a7, $a2, 63, 32
	movgr2fr.d	$fa4, $a7
	fadd.d	$fa4, $fa4, $fa3
	vreplgr2vr.d	$vr3, $a0
	vreplvei.d	$vr4, $vr4, 0
	move	$a7, $a3
	vori.b	$vr5, $vr1, 0
	.p2align	4, , 16
.LBB7_10:                               # %vector.body
                                        #   Parent Loop BB7_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr6, $vr5, 2
	vmul.d	$vr7, $vr5, $vr3
	vmul.d	$vr6, $vr6, $vr3
	vffint.d.lu	$vr7, $vr7
	vffint.d.lu	$vr6, $vr6
	vfdiv.d	$vr7, $vr7, $vr2
	vfdiv.d	$vr6, $vr6, $vr2
	vfadd.d	$vr7, $vr7, $vr4
	vfadd.d	$vr6, $vr6, $vr4
	add.d	$t0, $a6, $a7
	vstx	$vr7, $t0, $s2
	vstx	$vr6, $t0, $a4
	addi.d	$a7, $a7, 32
	vaddi.du	$vr5, $vr5, 4
	bnez	$a7, .LBB7_10
# %bb.11:                               # %middle.block
                                        #   in Loop: Header=BB7_9 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a6, $a6, $s2
	bne	$a0, $a5, .LBB7_9
# %bb.12:                               # %init_array.exit.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_2)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI7_2)
	move	$a0, $zero
	movgr2fr.d	$fa0, $zero
	ori	$a1, $zero, 1200
	move	$a2, $s5
	.p2align	4, , 16
.LBB7_13:                               # %init_array.exit
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_14 Depth 2
	alsl.d	$a3, $a0, $s1, 3
	slli.d	$a4, $a0, 3
	stx.d	$zero, $s1, $a4
	ori	$a4, $zero, 1400
	move	$a5, $a2
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB7_14:                               #   Parent Loop BB7_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a5, 0
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $a3, 0
	addi.d	$a4, $a4, -1
	add.d	$a5, $a5, $s2
	bnez	$a4, .LBB7_14
# %bb.15:                               #   in Loop: Header=BB7_13 Depth=1
	fdiv.d	$fa1, $fa1, $fs0
	fst.d	$fa1, $a3, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	bne	$a0, $a1, .LBB7_13
# %bb.16:                               # %.preheader111.i.preheader
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI7_3)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI7_3)
	movgr2fr.d	$fs2, $zero
	vldi	$vr3, -912
	ori	$s7, $zero, 1200
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	move	$s8, $s5
	.p2align	4, , 16
.LBB7_17:                               # %.preheader111.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_18 Depth 2
	alsl.d	$s5, $s0, $s3, 3
	slli.d	$a0, $s0, 3
	stx.d	$zero, $s3, $a0
	alsl.d	$a0, $s0, $s1, 3
	ori	$a1, $zero, 1400
	move	$a2, $s8
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB7_18:                               #   Parent Loop BB7_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a2, 0
	fld.d	$fa2, $a0, 0
	fsub.d	$fa1, $fa1, $fa2
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s5, 0
	addi.d	$a1, $a1, -1
	add.d	$a2, $a2, $s2
	bnez	$a1, .LBB7_18
# %bb.19:                               #   in Loop: Header=BB7_17 Depth=1
	fdiv.d	$fa1, $fa0, $fs0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB7_21
.LBB7_20:                               # %.split
                                        #   in Loop: Header=BB7_17 Depth=1
	fcmp.cult.d	$fcc0, $fs1, $fa0
	fsel	$fa0, $fa3, $fa0, $fcc0
	fst.d	$fa0, $s5, 0
	addi.d	$s0, $s0, 1
	addi.d	$s8, $s8, 8
	bne	$s0, $s7, .LBB7_17
	b	.LBB7_22
.LBB7_21:                               # %call.sqrt
                                        #   in Loop: Header=BB7_17 Depth=1
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -912
	b	.LBB7_20
.LBB7_22:                               # %.preheader109.i.preheader
	move	$a0, $zero
	ld.d	$t0, $sp, 8                     # 8-byte Folded Reload
	add.d	$a1, $t0, $s4
	add.d	$a2, $s1, $s2
	sltu	$a2, $t0, $a2
	sltu	$a3, $s1, $a1
	and	$a2, $a2, $a3
	add.d	$a3, $s3, $s2
	sltu	$a3, $t0, $a3
	sltu	$a1, $s3, $a1
	and	$a1, $a3, $a1
	or	$a1, $a2, $a1
	ori	$a2, $s6, 2688
	pcalau12i	$a3, %pc_hi20(.LCPI7_4)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI7_4)
	ori	$a3, $zero, 1400
	lu12i.w	$a4, 306706
	ori	$a4, $a4, 1934
	lu32i.d	$a4, 177490
	lu52i.d	$a4, $a4, 1028
	vreplgr2vr.d	$vr1, $a4
	move	$a4, $t0
	lu12i.w	$t7, 2812
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_23:                               # %middle.block52
                                        #   in Loop: Header=BB7_24 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a4, $a4, $s2
	beq	$a0, $a3, .LBB7_27
.LBB7_24:                               # %.preheader109.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_26 Depth 2
                                        #     Child Loop BB7_25 Depth 2
	move	$a5, $a2
	beqz	$a1, .LBB7_26
	.p2align	4, , 16
.LBB7_25:                               # %scalar.ph45
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a6, $s1, $a5
	fldx.d	$fa2, $a6, $s2
	add.d	$a6, $a4, $a5
	fldx.d	$fa3, $a6, $s2
	fsub.d	$fa2, $fa3, $fa2
	fstx.d	$fa2, $a6, $s2
	add.d	$a7, $s3, $a5
	fldx.d	$fa3, $a7, $s2
	fmul.d	$fa3, $fa3, $fa0
	fdiv.d	$fa2, $fa2, $fa3
	addi.d	$a5, $a5, 8
	fstx.d	$fa2, $a6, $s2
	bnez	$a5, .LBB7_25
	b	.LBB7_23
	.p2align	4, , 16
.LBB7_26:                               # %vector.body47
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a6, $s1, $a5
	vldx	$vr2, $a6, $s2
	add.d	$a6, $a4, $a5
	vldx	$vr3, $a6, $s2
	add.d	$a7, $s3, $a5
	vldx	$vr4, $a7, $s2
	vfsub.d	$vr2, $vr3, $vr2
	vfmul.d	$vr3, $vr4, $vr1
	vfdiv.d	$vr2, $vr2, $vr3
	addi.d	$a5, $a5, 16
	vstx	$vr2, $a6, $s2
	bnez	$a5, .LBB7_26
	b	.LBB7_23
.LBB7_27:                               # %.lr.ph.preheader.i.preheader
	move	$a0, $zero
	addi.d	$a2, $t0, 8
	ori	$a3, $zero, 1
	lu52i.d	$a1, $zero, 1023
	movgr2fr.d	$fa0, $zero
	ori	$a4, $zero, 1200
	ori	$a5, $zero, 1199
	move	$a6, $t0
	.p2align	4, , 16
.LBB7_28:                               # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_29 Depth 2
                                        #       Child Loop BB7_30 Depth 3
	mul.d	$a7, $a0, $s2
	add.d	$a7, $fp, $a7
	slli.d	$t0, $a0, 3
	stx.d	$a1, $a7, $t0
	alsl.d	$t0, $a0, $fp, 3
	move	$t1, $a2
	move	$t2, $a3
	.p2align	4, , 16
.LBB7_29:                               # %.lr.ph.i
                                        #   Parent Loop BB7_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_30 Depth 3
	alsl.d	$t3, $t2, $a7, 3
	slli.d	$t4, $t2, 3
	stx.d	$zero, $a7, $t4
	ori	$t4, $zero, 1400
	move	$t5, $a6
	move	$t6, $t1
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB7_30:                               #   Parent Loop BB7_28 Depth=1
                                        #     Parent Loop BB7_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $t5, 0
	fld.d	$fa3, $t6, 0
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $t3, 0
	addi.d	$t4, $t4, -1
	add.d	$t6, $t6, $s2
	add.d	$t5, $t5, $s2
	bnez	$t4, .LBB7_30
# %bb.31:                               #   in Loop: Header=BB7_29 Depth=2
	mul.d	$t3, $t2, $s2
	fstx.d	$fa1, $t0, $t3
	addi.d	$t2, $t2, 1
	addi.d	$t1, $t1, 8
	bne	$t2, $a4, .LBB7_29
# %bb.32:                               # %.loopexit.i
                                        #   in Loop: Header=BB7_28 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 8
	addi.d	$a6, $a6, 8
	bne	$a0, $a5, .LBB7_28
# %bb.33:                               # %kernel_correlation.exit
	ori	$a0, $t7, 2040
	stx.d	$a1, $fp, $a0
	lu12i.w	$s0, 4
	ori	$a0, $s0, 2817
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$s5, $s0, 2816
	pcalau12i	$a0, %pc_hi20(.LCPI7_5)
	vld	$vr5, $a0, %pc_lo12(.LCPI7_5)
	pcalau12i	$a0, %pc_hi20(.LCPI7_6)
	vld	$vr6, $a0, %pc_lo12(.LCPI7_6)
	pcalau12i	$a0, %pc_hi20(.LCPI7_7)
	vld	$vr7, $a0, %pc_lo12(.LCPI7_7)
	pcalau12i	$a0, %pc_hi20(.LCPI7_8)
	vld	$vr8, $a0, %pc_lo12(.LCPI7_8)
	stx.b	$zero, $s4, $s5
	lu12i.w	$a0, -5
	ori	$s6, $a0, 1280
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s7, $a0, %got_pc_lo12(stderr)
	move	$s8, $zero
	move	$s0, $fp
	vst	$vr5, $sp, 64                   # 16-byte Folded Spill
	vst	$vr6, $sp, 48                   # 16-byte Folded Spill
	vst	$vr7, $sp, 32                   # 16-byte Folded Spill
	vst	$vr8, $sp, 16                   # 16-byte Folded Spill
.LBB7_34:                               # %.preheader.i23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_35 Depth 2
	move	$a0, $s0
	move	$a1, $s6
	.p2align	4, , 16
.LBB7_35:                               #   Parent Loop BB7_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 0
	add.d	$a3, $s4, $a1
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
	vstx	$vr0, $a3, $s5
	addi.d	$a1, $a1, 16
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB7_35
# %bb.36:                               #   in Loop: Header=BB7_34 Depth=1
	ld.d	$a1, $s7, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 16                   # 16-byte Folded Reload
	vld	$vr7, $sp, 32                   # 16-byte Folded Reload
	vld	$vr6, $sp, 48                   # 16-byte Folded Reload
	vld	$vr5, $sp, 64                   # 16-byte Folded Reload
	addi.d	$s8, $s8, 1
	add.d	$s0, $s0, $s2
	ori	$a0, $zero, 1200
	bne	$s8, $a0, .LBB7_34
# %bb.37:                               # %print_array.exit
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
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
