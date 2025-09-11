	.file	"lu.c"
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI7_1:
	.dword	48                              # 0x30
	.dword	56                              # 0x38
.LCPI7_2:
	.dword	32                              # 0x20
	.dword	40                              # 0x28
.LCPI7_3:
	.dword	16                              # 0x10
	.dword	24                              # 0x18
.LCPI7_4:
	.dword	0                               # 0x0
	.dword	8                               # 0x8
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
	beqz	$fp, .LBB7_42
# %bb.1:
	bnez	$a0, .LBB7_42
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 80
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 80
	beqz	$s0, .LBB7_42
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_42
# %bb.4:                                # %polybench_alloc_data.exit16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(init_array)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $zero
	lu12i.w	$a2, 3
	ori	$s2, $a2, 3712
	ori	$a2, $zero, 2000
	move	$a3, $fp
	move	$a4, $fp
	b	.LBB7_6
	.p2align	4, , 16
.LBB7_5:                                # %._crit_edge55.i
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a4, $a4, $s2
	addi.d	$a0, $a0, 8
	addi.d	$a3, $a3, 8
	beq	$a1, $a2, .LBB7_17
.LBB7_6:                                # %.preheader45.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
                                        #       Child Loop BB7_12 Depth 3
                                        #     Child Loop BB7_14 Depth 2
                                        #       Child Loop BB7_15 Depth 3
	beqz	$a1, .LBB7_5
# %bb.7:                                # %.preheader43.lr.ph.i
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$a6, $zero
	mul.d	$a5, $a1, $s2
	add.d	$a5, $fp, $a5
	move	$a7, $fp
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_8:                                # %.preheader43.._crit_edge_crit_edge.i
                                        #   in Loop: Header=BB7_10 Depth=2
	fld.d	$fa0, $a5, 0
.LBB7_9:                                # %._crit_edge.i
                                        #   in Loop: Header=BB7_10 Depth=2
	mul.d	$t1, $a6, $s2
	add.d	$t1, $fp, $t1
	fldx.d	$fa1, $t1, $t0
	fdiv.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a5, $t0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 8
	beq	$a6, $a1, .LBB7_13
.LBB7_10:                               # %.preheader43.i
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_12 Depth 3
	slli.d	$t0, $a6, 3
	beqz	$a6, .LBB7_8
# %bb.11:                               # %.lr.ph.i
                                        #   in Loop: Header=BB7_10 Depth=2
	fldx.d	$fa0, $a5, $t0
	alsl.d	$t1, $a6, $a5, 3
	move	$t2, $a4
	move	$t3, $a7
	move	$t4, $a6
	.p2align	4, , 16
.LBB7_12:                               #   Parent Loop BB7_6 Depth=1
                                        #     Parent Loop BB7_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $t2, 0
	fld.d	$fa2, $t3, 0
	fneg.d	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fst.d	$fa0, $t1, 0
	addi.d	$t4, $t4, -1
	add.d	$t3, $t3, $s2
	addi.d	$t2, $t2, 8
	bnez	$t4, .LBB7_12
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_13:                               #   in Loop: Header=BB7_6 Depth=1
	move	$a6, $a3
	move	$a7, $a1
	.p2align	4, , 16
.LBB7_14:                               # %.preheader.us.i
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_15 Depth 3
	slli.d	$t0, $a7, 3
	fldx.d	$fa0, $a5, $t0
	move	$t0, $zero
	alsl.d	$t1, $a7, $a5, 3
	move	$t2, $a6
	.p2align	4, , 16
.LBB7_15:                               #   Parent Loop BB7_6 Depth=1
                                        #     Parent Loop BB7_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $a4, $t0
	fld.d	$fa2, $t2, 0
	fneg.d	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fst.d	$fa0, $t1, 0
	addi.d	$t0, $t0, 8
	add.d	$t2, $t2, $s2
	bne	$a0, $t0, .LBB7_15
# %bb.16:                               # %._crit_edge50.us.i
                                        #   in Loop: Header=BB7_14 Depth=2
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 8
	bne	$a7, $a2, .LBB7_14
	b	.LBB7_5
.LBB7_17:                               # %kernel_lu.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(init_array)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $zero
	ori	$a2, $zero, 2000
	move	$a3, $s0
	move	$a4, $s0
	b	.LBB7_19
	.p2align	4, , 16
.LBB7_18:                               # %._crit_edge55.i46
                                        #   in Loop: Header=BB7_19 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a4, $a4, $s2
	addi.d	$a0, $a0, 8
	addi.d	$a3, $a3, 8
	beq	$a1, $a2, .LBB7_30
.LBB7_19:                               # %.preheader45.i17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_23 Depth 2
                                        #       Child Loop BB7_25 Depth 3
                                        #     Child Loop BB7_27 Depth 2
                                        #       Child Loop BB7_28 Depth 3
	beqz	$a1, .LBB7_18
# %bb.20:                               # %.preheader43.lr.ph.i20
                                        #   in Loop: Header=BB7_19 Depth=1
	move	$a6, $zero
	mul.d	$a5, $a1, $s2
	add.d	$a5, $s0, $a5
	move	$a7, $s0
	b	.LBB7_23
	.p2align	4, , 16
.LBB7_21:                               # %.preheader43.._crit_edge_crit_edge.i49
                                        #   in Loop: Header=BB7_23 Depth=2
	fld.d	$fa0, $a5, 0
.LBB7_22:                               # %._crit_edge.i31
                                        #   in Loop: Header=BB7_23 Depth=2
	mul.d	$t1, $a6, $s2
	add.d	$t1, $s0, $t1
	fldx.d	$fa1, $t1, $t0
	fdiv.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a5, $t0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 8
	beq	$a6, $a1, .LBB7_26
.LBB7_23:                               # %.preheader43.i21
                                        #   Parent Loop BB7_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_25 Depth 3
	slli.d	$t0, $a6, 3
	beqz	$a6, .LBB7_21
# %bb.24:                               # %.lr.ph.i24
                                        #   in Loop: Header=BB7_23 Depth=2
	fldx.d	$fa0, $a5, $t0
	alsl.d	$t1, $a6, $a5, 3
	move	$t2, $a4
	move	$t3, $a7
	move	$t4, $a6
	.p2align	4, , 16
.LBB7_25:                               #   Parent Loop BB7_19 Depth=1
                                        #     Parent Loop BB7_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $t2, 0
	fld.d	$fa2, $t3, 0
	fmul.d	$fa1, $fa1, $fa2
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $t1, 0
	addi.d	$t4, $t4, -1
	add.d	$t3, $t3, $s2
	addi.d	$t2, $t2, 8
	bnez	$t4, .LBB7_25
	b	.LBB7_22
	.p2align	4, , 16
.LBB7_26:                               #   in Loop: Header=BB7_19 Depth=1
	move	$a6, $a3
	move	$a7, $a1
	.p2align	4, , 16
.LBB7_27:                               # %.preheader.us.i35
                                        #   Parent Loop BB7_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_28 Depth 3
	slli.d	$t0, $a7, 3
	fldx.d	$fa0, $a5, $t0
	move	$t0, $zero
	alsl.d	$t1, $a7, $a5, 3
	move	$t2, $a6
	.p2align	4, , 16
.LBB7_28:                               #   Parent Loop BB7_19 Depth=1
                                        #     Parent Loop BB7_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $a4, $t0
	fld.d	$fa2, $t2, 0
	fmul.d	$fa1, $fa1, $fa2
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $t1, 0
	addi.d	$t0, $t0, 8
	add.d	$t2, $t2, $s2
	bne	$a0, $t0, .LBB7_28
# %bb.29:                               # %._crit_edge50.us.i43
                                        #   in Loop: Header=BB7_27 Depth=2
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 8
	bne	$a7, $a2, .LBB7_27
	b	.LBB7_18
.LBB7_30:                               # %.preheader.i.preheader
	move	$a0, $zero
	move	$a2, $zero
	pcalau12i	$a1, %pc_hi20(.LCPI7_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI7_0)
	lu12i.w	$a1, -4
	ori	$a1, $a1, 384
	ori	$a4, $zero, 2000
	.p2align	4, , 16
.LBB7_31:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_32 Depth 2
	move	$a3, $zero
	add.d	$a5, $s0, $a0
	add.d	$a6, $fp, $a0
	move	$a7, $a1
	.p2align	4, , 16
.LBB7_32:                               #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	fldx.d	$fa1, $t0, $s2
	add.d	$t0, $a5, $a7
	fldx.d	$fa2, $t0, $s2
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_40
# %bb.33:                               # %.critedge.i
                                        #   in Loop: Header=BB7_32 Depth=2
	addi.d	$a7, $a7, 8
	addi.w	$a3, $a3, 1
	bnez	$a7, .LBB7_32
# %bb.34:                               #   in Loop: Header=BB7_31 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a0, $a0, $s2
	bne	$a2, $a4, .LBB7_31
# %bb.35:                               # %check_FP.exit
	lu12i.w	$s3, 7
	ori	$a0, $s3, 3329
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$s3, $s3, 3328
	pcalau12i	$a0, %pc_hi20(.LCPI7_1)
	vld	$vr5, $a0, %pc_lo12(.LCPI7_1)
	pcalau12i	$a0, %pc_hi20(.LCPI7_2)
	vld	$vr6, $a0, %pc_lo12(.LCPI7_2)
	pcalau12i	$a0, %pc_hi20(.LCPI7_3)
	vld	$vr7, $a0, %pc_lo12(.LCPI7_3)
	pcalau12i	$a0, %pc_hi20(.LCPI7_4)
	vld	$vr8, $a0, %pc_lo12(.LCPI7_4)
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
.LBB7_36:                               # %.preheader.i54
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_37 Depth 2
	move	$a0, $s8
	move	$a1, $s4
	.p2align	4, , 16
.LBB7_37:                               #   Parent Loop BB7_36 Depth=1
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
	bnez	$a1, .LBB7_37
# %bb.38:                               #   in Loop: Header=BB7_36 Depth=1
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
	bne	$s6, $s7, .LBB7_36
# %bb.39:                               # %print_array.exit
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
	b	.LBB7_41
.LBB7_40:                               # %check_FP.exit.thread
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
.LBB7_41:
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
.LBB7_42:
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function init_array
.LCPI8_0:
	.dword	0x409f400000000000              # double 2000
	.text
	.p2align	5
	.type	init_array,@function
init_array:                             # @init_array
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	move	$fp, $a0
	move	$s0, $zero
	addi.d	$s1, $a0, 16
	ori	$s5, $zero, 1
	lu12i.w	$a0, 3
	ori	$a1, $a0, 3720
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ori	$s4, $a0, 3696
	ori	$s2, $a0, 3712
	ori	$a4, $zero, 4
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI8_0)
	vldi	$vr4, -912
	ori	$a5, $zero, 1998
	lu52i.d	$s3, $zero, 1023
	ori	$s7, $zero, 2000
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	ori	$a0, $zero, 0
	vrepli.w	$vr5, -2
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1033
	vreplgr2vr.d	$vr6, $a0
	vreplgr2vr.d	$vr7, $s3
	move	$s6, $fp
	vst	$vr5, $sp, 48                   # 16-byte Folded Spill
	vst	$vr6, $sp, 32                   # 16-byte Folded Spill
	vst	$vr7, $sp, 16                   # 16-byte Folded Spill
	b	.LBB8_2
	.p2align	4, , 16
.LBB8_1:                                # %._crit_edge
                                        #   in Loop: Header=BB8_2 Depth=1
	mul.d	$a0, $s0, $s2
	add.d	$a0, $fp, $a0
	addi.d	$s0, $s0, 1
	stx.d	$s3, $a0, $s8
	addi.d	$s5, $s5, 1
	add.d	$s1, $s1, $s2
	add.d	$s6, $s6, $s2
	beq	$s0, $s7, .LBB8_11
.LBB8_2:                                # %.preheader75
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_5 Depth 2
                                        #     Child Loop BB8_8 Depth 2
	bgeu	$s5, $a4, .LBB8_4
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=1
	move	$a0, $zero
	b	.LBB8_7
	.p2align	4, , 16
.LBB8_4:                                # %vector.ph
                                        #   in Loop: Header=BB8_2 Depth=1
	move	$a1, $s5
	bstrins.d	$a1, $zero, 1, 0
	bstrpick.d	$a0, $s5, 62, 2
	slli.d	$a0, $a0, 2
	move	$a2, $s1
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB8_5:                                # %vector.body
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vneg.w	$vr1, $vr0
	vsub.w	$vr2, $vr5, $vr0
	vpickve2gr.w	$a3, $vr1, 1
	movgr2fr.w	$fa3, $a3
	ffint.d.w	$fa3, $fa3
	vpickve2gr.w	$a3, $vr1, 0
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	vextrins.d	$vr1, $vr3, 16
	vpickve2gr.w	$a3, $vr2, 1
	movgr2fr.w	$fa3, $a3
	ffint.d.w	$fa3, $fa3
	vpickve2gr.w	$a3, $vr2, 0
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	vextrins.d	$vr2, $vr3, 16
	vfdiv.d	$vr1, $vr1, $vr6
	vfdiv.d	$vr2, $vr2, $vr6
	vfadd.d	$vr1, $vr1, $vr7
	vfadd.d	$vr2, $vr2, $vr7
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, 32
	bnez	$a1, .LBB8_5
# %bb.6:                                # %middle.block
                                        #   in Loop: Header=BB8_2 Depth=1
	beq	$s5, $a0, .LBB8_9
.LBB8_7:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB8_2 Depth=1
	sub.w	$a1, $zero, $a0
	alsl.d	$a2, $a0, $s6, 3
	.p2align	4, , 16
.LBB8_8:                                # %scalar.ph
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fadd.d	$fa0, $fa0, $fa4
	fst.d	$fa0, $a2, 0
	addi.d	$a0, $a0, 1
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bne	$s5, $a0, .LBB8_8
.LBB8_9:                                # %.loopexit26
                                        #   in Loop: Header=BB8_2 Depth=1
	slli.d	$s8, $s0, 3
	bltu	$a5, $s0, .LBB8_1
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB8_2 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	mul.d	$a0, $s0, $a0
	add.d	$a0, $fp, $a0
	addi.d	$a0, $a0, 8
	sub.d	$a1, $s4, $s8
	bstrpick.d	$a1, $a1, 34, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vld	$vr7, $sp, 16                   # 16-byte Folded Reload
	vld	$vr6, $sp, 32                   # 16-byte Folded Reload
	vld	$vr5, $sp, 48                   # 16-byte Folded Reload
	ori	$a5, $zero, 1998
	vldi	$vr4, -912
	ori	$a4, $zero, 4
	b	.LBB8_1
.LBB8_11:
	st.d	$zero, $sp, 88
	lu12i.w	$a0, 7812
	ori	$s1, $a0, 2048
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 88
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 88
	beqz	$s0, .LBB8_28
# %bb.12:
	bnez	$a0, .LBB8_28
# %bb.13:                               # %polybench_alloc_data.exit
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	add.d	$a2, $s0, $s1
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3328
	add.d	$a3, $fp, $a0
	addi.d	$a4, $s0, 16
	lu12i.w	$a0, 7808
	ori	$a5, $a0, 2440
	lu12i.w	$a0, -4
	ori	$a6, $a0, 384
	ori	$a7, $zero, 2000
	lu12i.w	$t0, -8
	ori	$t0, $t0, 768
	move	$t1, $fp
	b	.LBB8_15
	.p2align	4, , 16
.LBB8_14:                               #   in Loop: Header=BB8_15 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	addi.d	$t1, $t1, 8
	beq	$a1, $a7, .LBB8_22
.LBB8_15:                               # %.preheader72
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_17 Depth 2
                                        #       Child Loop BB8_21 Depth 3
                                        #       Child Loop BB8_19 Depth 3
	move	$t2, $zero
	alsl.d	$t3, $a1, $fp, 3
	add.d	$t4, $t3, $a5
	sltu	$t4, $s0, $t4
	sltu	$t5, $t3, $a2
	and	$t4, $t4, $t5
	move	$t5, $s0
	move	$t6, $a4
	b	.LBB8_17
	.p2align	4, , 16
.LBB8_16:                               # %middle.block13
                                        #   in Loop: Header=BB8_17 Depth=2
	addi.d	$t2, $t2, 1
	add.d	$t6, $t6, $s2
	add.d	$t5, $t5, $s2
	beq	$t2, $a7, .LBB8_14
.LBB8_17:                               # %.preheader71
                                        #   Parent Loop BB8_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_21 Depth 3
                                        #       Child Loop BB8_19 Depth 3
	mul.d	$t7, $t2, $s2
	add.d	$t7, $t3, $t7
	beqz	$t4, .LBB8_20
# %bb.18:                               # %scalar.ph7.preheader
                                        #   in Loop: Header=BB8_17 Depth=2
	move	$t8, $t1
	move	$s1, $a6
	.p2align	4, , 16
.LBB8_19:                               # %scalar.ph7
                                        #   Parent Loop BB8_15 Depth=1
                                        #     Parent Loop BB8_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $t7, 0
	fld.d	$fa1, $t8, 0
	add.d	$s3, $t5, $s1
	fldx.d	$fa2, $s3, $s2
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $s3, $s2
	addi.d	$s1, $s1, 8
	add.d	$t8, $t8, $s2
	bnez	$s1, .LBB8_19
	b	.LBB8_16
	.p2align	4, , 16
.LBB8_20:                               # %vector.body9.preheader
                                        #   in Loop: Header=BB8_17 Depth=2
	vldrepl.d	$vr0, $t7, 0
	move	$t7, $a3
	move	$t8, $a6
	.p2align	4, , 16
.LBB8_21:                               # %vector.body9
                                        #   Parent Loop BB8_15 Depth=1
                                        #     Parent Loop BB8_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $t7, $t0
	fldx.d	$fa2, $t7, $a6
	fld.d	$fa3, $t7, 0
	fldx.d	$fa4, $t7, $s2
	vextrins.d	$vr1, $vr2, 16
	vextrins.d	$vr3, $vr4, 16
	add.d	$s1, $t6, $t8
	vldx	$vr2, $s1, $s4
	vldx	$vr4, $s1, $s2
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr3, $vr0, $vr3
	vfadd.d	$vr1, $vr2, $vr1
	vfadd.d	$vr2, $vr4, $vr3
	vstx	$vr1, $s1, $s4
	vstx	$vr2, $s1, $s2
	addi.d	$t8, $t8, 32
	addu16i.d	$t7, $t7, 1
	addi.d	$t7, $t7, -1536
	bnez	$t8, .LBB8_21
	b	.LBB8_16
.LBB8_22:                               # %.preheader.preheader
	move	$a1, $zero
	sub.d	$a2, $fp, $s0
	ori	$a3, $zero, 32
	ori	$a0, $a0, 384
	ori	$a4, $zero, 2000
	lu12i.w	$a5, 3
	ori	$a5, $a5, 3728
	move	$a6, $s0
	b	.LBB8_24
	.p2align	4, , 16
.LBB8_23:                               # %middle.block23
                                        #   in Loop: Header=BB8_24 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$fp, $fp, $s2
	add.d	$a6, $a6, $s2
	beq	$a1, $a4, .LBB8_27
.LBB8_24:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_26 Depth 2
                                        #     Child Loop BB8_25 Depth 2
	move	$a7, $a0
	bgeu	$a2, $a3, .LBB8_26
	.p2align	4, , 16
.LBB8_25:                               # %scalar.ph16
                                        #   Parent Loop BB8_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	fldx.d	$fa0, $t0, $s2
	add.d	$t0, $fp, $a7
	addi.d	$a7, $a7, 8
	fstx.d	$fa0, $t0, $s2
	bnez	$a7, .LBB8_25
	b	.LBB8_23
	.p2align	4, , 16
.LBB8_26:                               # %vector.body18
                                        #   Parent Loop BB8_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	vldx	$vr0, $t0, $s2
	vldx	$vr1, $t0, $a5
	add.d	$t0, $fp, $a7
	vstx	$vr0, $t0, $s2
	addi.d	$a7, $a7, 32
	vstx	$vr1, $t0, $a5
	bnez	$a7, .LBB8_26
	b	.LBB8_23
.LBB8_27:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB8_28:
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
	.size	init_array, .Lfunc_end8-init_array
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
