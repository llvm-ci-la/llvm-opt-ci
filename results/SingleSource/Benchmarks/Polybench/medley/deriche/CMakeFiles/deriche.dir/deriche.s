	.file	"deriche.c"
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
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI7_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI7_9:
	.dword	48                              # 0x30
	.dword	56                              # 0x38
.LCPI7_10:
	.dword	32                              # 0x20
	.dword	40                              # 0x28
.LCPI7_11:
	.dword	16                              # 0x10
	.dword	24                              # 0x18
.LCPI7_12:
	.dword	0                               # 0x0
	.dword	8                               # 0x8
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI7_2:
	.word	0x3de1b54c                      # float 0.110209078
.LCPI7_3:
	.word	0xbe4135c4                      # float -0.188681662
.LCPI7_4:
	.word	0x3f5744fd                      # float 0.840896427
.LCPI7_5:
	.word	0xbf1b4598                      # float -0.606530666
.LCPI7_6:
	.word	0x3dea6028                      # float 0.114441216
.LCPI7_7:
	.word	0xbe3c1714                      # float -0.183681786
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI7_8:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
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
	st.d	$zero, $sp, 112
	lu12i.w	$a1, 1
	lu12i.w	$a2, 8640
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 112
	beqz	$fp, .LBB7_82
# %bb.1:
	bnez	$a0, .LBB7_82
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 112
	lu12i.w	$a1, 1
	lu12i.w	$a2, 8640
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 112
	beqz	$s0, .LBB7_82
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_82
# %bb.4:                                # %polybench_alloc_data.exit32
	st.d	$zero, $sp, 112
	lu12i.w	$a1, 1
	lu12i.w	$a2, 8640
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 112
	beqz	$s1, .LBB7_82
# %bb.5:                                # %polybench_alloc_data.exit32
	bnez	$a0, .LBB7_82
# %bb.6:                                # %polybench_alloc_data.exit34
	st.d	$zero, $sp, 112
	lu12i.w	$a1, 1
	lu12i.w	$a2, 8640
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 112
	beqz	$s2, .LBB7_82
# %bb.7:                                # %polybench_alloc_data.exit34
	bnez	$a0, .LBB7_82
# %bb.8:                                # %polybench_alloc_data.exit36
	st.d	$zero, $sp, 112
	lu12i.w	$s4, 1
	lu12i.w	$a2, 8640
	addi.d	$a0, $sp, 112
	move	$a1, $s4
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 112
	beqz	$s3, .LBB7_82
# %bb.9:                                # %polybench_alloc_data.exit36
	bnez	$a0, .LBB7_82
# %bb.10:                               # %polybench_alloc_data.exit38
	move	$a1, $zero
	ori	$a2, $zero, 313
	pcalau12i	$a5, %pc_hi20(.LCPI7_0)
	vld	$vr0, $a5, %pc_lo12(.LCPI7_0)
	pcalau12i	$a6, %pc_hi20(.LCPI7_1)
	vld	$vr1, $a6, %pc_lo12(.LCPI7_1)
	lu12i.w	$a0, -3
	ori	$a4, $a0, 3648
	ori	$a3, $zero, 991
	vreplgr2vr.d	$vr2, $a3
	lu12i.w	$a3, 15
	ori	$a3, $a3, 4095
	vreplgr2vr.w	$vr6, $a3
	lu12i.w	$a3, 292863
	ori	$a3, $a3, 3840
	vreplgr2vr.w	$vr7, $a3
	lu12i.w	$a3, 2
	ori	$s5, $a3, 448
	move	$a7, $fp
	.p2align	4, , 16
.LBB7_11:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
	mul.d	$t0, $a1, $a2
	vreplgr2vr.d	$vr3, $t0
	move	$t0, $a4
	vori.b	$vr4, $vr1, 0
	vori.b	$vr5, $vr0, 0
	.p2align	4, , 16
.LBB7_12:                               # %vector.body
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vori.b	$vr8, $vr3, 0
	vmadd.d	$vr8, $vr4, $vr2
	vori.b	$vr9, $vr3, 0
	vmadd.d	$vr9, $vr5, $vr2
	vpickev.w	$vr8, $vr9, $vr8
	vand.v	$vr8, $vr8, $vr6
	vffint.s.wu	$vr8, $vr8
	vfdiv.s	$vr8, $vr8, $vr7
	add.d	$t1, $a7, $t0
	vstx	$vr8, $t1, $s5
	vaddi.du	$vr4, $vr4, 4
	addi.d	$t0, $t0, 16
	vaddi.du	$vr5, $vr5, 4
	bnez	$t0, .LBB7_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a7, $a7, $s5
	bne	$a1, $s4, .LBB7_11
# %bb.14:                               # %.preheader180.i.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI7_2)
	fld.s	$fa4, $a1, %pc_lo12(.LCPI7_2)
	pcalau12i	$a1, %pc_hi20(.LCPI7_3)
	fld.s	$fa5, $a1, %pc_lo12(.LCPI7_3)
	pcalau12i	$a1, %pc_hi20(.LCPI7_4)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI7_4)
	pcalau12i	$a1, %pc_hi20(.LCPI7_5)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI7_5)
	move	$a1, $zero
	move	$a2, $zero
	movgr2fr.w	$fa2, $zero
	ori	$a4, $a0, 3648
	.p2align	4, , 16
.LBB7_15:                               # %.preheader180.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
	add.d	$a7, $s2, $a1
	add.d	$t0, $fp, $a1
	move	$t1, $a4
	fmov.s	$ft0, $fa2
	fmov.s	$fa3, $fa2
	fmov.s	$ft1, $fa2
	.p2align	4, , 16
.LBB7_16:                               #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t2, $t0, $t1
	fldx.s	$ft2, $t2, $s5
	fmov.s	$ft3, $fa3
	fmul.s	$fa3, $ft0, $fa4
	fmadd.s	$fa3, $ft2, $fa5, $fa3
	fmadd.s	$fa3, $ft3, $fa0, $fa3
	fmadd.s	$fa3, $ft1, $fa1, $fa3
	add.d	$t3, $a7, $t1
	fstx.s	$fa3, $t3, $s5
	fldx.s	$ft0, $t2, $s5
	addi.d	$t1, $t1, 4
	fmov.s	$ft1, $ft3
	bnez	$t1, .LBB7_16
# %bb.17:                               #   in Loop: Header=BB7_15 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a1, $a1, $s5
	bne	$a2, $s4, .LBB7_15
# %bb.18:                               # %.preheader178.i.preheader
	move	$a1, $zero
	move	$a2, $zero
	pcalau12i	$a4, %pc_hi20(.LCPI7_6)
	fld.s	$fa2, $a4, %pc_lo12(.LCPI7_6)
	pcalau12i	$a4, %pc_hi20(.LCPI7_7)
	fld.s	$fa3, $a4, %pc_lo12(.LCPI7_7)
	movgr2fr.w	$ft0, $zero
	ori	$a7, $a3, 444
	addi.w	$a4, $zero, -4
	.p2align	4, , 16
.LBB7_19:                               # %.preheader178.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_20 Depth 2
	add.d	$t0, $fp, $a1
	add.d	$t1, $s3, $a1
	move	$t2, $a7
	fmov.s	$ft1, $ft0
	fmov.s	$ft3, $ft0
	fmov.s	$ft2, $ft0
	fmov.s	$ft4, $ft0
	.p2align	4, , 16
.LBB7_20:                               #   Parent Loop BB7_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fmov.s	$ft5, $ft2
	fmul.s	$ft2, $ft3, $fa2
	fmov.s	$ft3, $ft1
	fmadd.s	$ft1, $ft1, $fa3, $ft2
	fmadd.s	$ft1, $ft5, $fa0, $ft1
	fmadd.s	$ft2, $ft4, $fa1, $ft1
	fstx.s	$ft2, $t1, $t2
	fldx.s	$ft1, $t0, $t2
	addi.d	$t2, $t2, -4
	fmov.s	$ft4, $ft5
	bne	$t2, $a4, .LBB7_20
# %bb.21:                               #   in Loop: Header=BB7_19 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a1, $a1, $s5
	bne	$a2, $s4, .LBB7_19
# %bb.22:                               # %.preheader176.i.preheader
	move	$a7, $zero
	sub.d	$a1, $s0, $s2
	sub.d	$a2, $s0, $s3
	sltui	$a1, $a1, 32
	sltui	$a2, $a2, 32
	or	$t1, $a1, $a2
	addi.d	$t0, $s2, 16
	ori	$t2, $a0, 3648
	ori	$a1, $a3, 432
	ori	$a2, $a3, 464
	move	$t3, $s2
	move	$t4, $s3
	move	$t5, $s0
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_23:                               # %middle.block164
                                        #   in Loop: Header=BB7_24 Depth=1
	addi.d	$a7, $a7, 1
	add.d	$t0, $t0, $s5
	add.d	$t5, $t5, $s5
	add.d	$t4, $t4, $s5
	add.d	$t3, $t3, $s5
	beq	$a7, $s4, .LBB7_27
.LBB7_24:                               # %.preheader176.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_26 Depth 2
                                        #     Child Loop BB7_25 Depth 2
	move	$t6, $t2
	beqz	$t1, .LBB7_26
	.p2align	4, , 16
.LBB7_25:                               # %scalar.ph156
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t7, $t3, $t6
	fldx.s	$ft0, $t7, $s5
	add.d	$t7, $t4, $t6
	fldx.s	$ft1, $t7, $s5
	fadd.s	$ft0, $ft0, $ft1
	add.d	$t7, $t5, $t6
	addi.d	$t6, $t6, 4
	fstx.s	$ft0, $t7, $s5
	bnez	$t6, .LBB7_25
	b	.LBB7_23
	.p2align	4, , 16
.LBB7_26:                               # %vector.body158
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t7, $t0, $t6
	vldx	$vr8, $t7, $a1
	vldx	$vr9, $t7, $s5
	add.d	$t7, $t4, $t6
	vldx	$vr10, $t7, $s5
	vldx	$vr11, $t7, $a2
	vfadd.s	$vr8, $vr8, $vr10
	vfadd.s	$vr9, $vr9, $vr11
	add.d	$t7, $t5, $t6
	vstx	$vr8, $t7, $s5
	addi.d	$t6, $t6, 32
	vstx	$vr9, $t7, $a2
	bnez	$t6, .LBB7_26
	b	.LBB7_23
.LBB7_27:                               # %.preheader174.i.preheader
	move	$a7, $zero
	move	$t0, $zero
	movgr2fr.w	$ft0, $zero
	ori	$t2, $zero, 2160
	.p2align	4, , 16
.LBB7_28:                               # %.preheader174.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_29 Depth 2
	move	$t3, $a7
	move	$t4, $s4
	fmov.s	$ft1, $ft0
	fmov.s	$ft2, $ft0
	fmov.s	$ft3, $ft0
	.p2align	4, , 16
.LBB7_29:                               #   Parent Loop BB7_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$ft4, $s0, $t3
	fmov.s	$ft5, $ft2
	fmul.s	$ft1, $ft1, $fa4
	fmadd.s	$ft1, $ft4, $fa5, $ft1
	fmadd.s	$ft1, $ft2, $fa0, $ft1
	fmadd.s	$ft2, $ft3, $fa1, $ft1
	fstx.s	$ft2, $s2, $t3
	fldx.s	$ft1, $s0, $t3
	addi.d	$t4, $t4, -1
	add.d	$t3, $t3, $s5
	fmov.s	$ft3, $ft5
	bnez	$t4, .LBB7_29
# %bb.30:                               #   in Loop: Header=BB7_28 Depth=1
	addi.d	$t0, $t0, 1
	addi.d	$a7, $a7, 4
	bne	$t0, $t2, .LBB7_28
# %bb.31:                               # %.preheader172.i.preheader
	move	$t0, $zero
	lu12i.w	$a7, 8637
	ori	$t3, $a7, 3648
	movgr2fr.w	$ft0, $zero
	lu12i.w	$t4, -1
	ori	$t2, $a0, 3648
	ori	$t5, $zero, 2160
	.p2align	4, , 16
.LBB7_32:                               # %.preheader172.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_33 Depth 2
	move	$t6, $t3
	move	$t7, $t4
	fmov.s	$ft1, $ft0
	fmov.s	$ft3, $ft0
	fmov.s	$ft2, $ft0
	fmov.s	$ft4, $ft0
	.p2align	4, , 16
.LBB7_33:                               #   Parent Loop BB7_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fmov.s	$ft5, $ft2
	fmul.s	$ft2, $ft3, $fa2
	fmov.s	$ft3, $ft1
	fmadd.s	$ft1, $ft1, $fa3, $ft2
	fmadd.s	$ft1, $ft5, $fa0, $ft1
	fmadd.s	$ft2, $ft4, $fa1, $ft1
	fstx.s	$ft2, $s3, $t6
	fldx.s	$ft1, $s0, $t6
	addi.d	$t7, $t7, 1
	add.d	$t6, $t6, $t2
	fmov.s	$ft4, $ft5
	bnez	$t7, .LBB7_33
# %bb.34:                               #   in Loop: Header=BB7_32 Depth=1
	addi.d	$t0, $t0, 1
	addi.d	$t3, $t3, 4
	bne	$t0, $t5, .LBB7_32
# %bb.35:                               # %.preheader.i42.preheader
	move	$t3, $zero
	addi.d	$t4, $s2, 16
	lu12i.w	$t0, 1
	move	$t5, $s2
	move	$t6, $s3
	move	$t7, $s0
	b	.LBB7_37
	.p2align	4, , 16
.LBB7_36:                               # %middle.block178
                                        #   in Loop: Header=BB7_37 Depth=1
	addi.d	$t3, $t3, 1
	add.d	$t4, $t4, $s5
	add.d	$t7, $t7, $s5
	add.d	$t6, $t6, $s5
	add.d	$t5, $t5, $s5
	beq	$t3, $t0, .LBB7_40
.LBB7_37:                               # %.preheader.i42
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_39 Depth 2
                                        #     Child Loop BB7_38 Depth 2
	move	$t8, $t2
	beqz	$t1, .LBB7_39
	.p2align	4, , 16
.LBB7_38:                               # %scalar.ph169
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s4, $t5, $t8
	fldx.s	$ft0, $s4, $s5
	add.d	$s4, $t6, $t8
	fldx.s	$ft1, $s4, $s5
	fadd.s	$ft0, $ft0, $ft1
	add.d	$s4, $t7, $t8
	addi.d	$t8, $t8, 4
	fstx.s	$ft0, $s4, $s5
	bnez	$t8, .LBB7_38
	b	.LBB7_36
	.p2align	4, , 16
.LBB7_39:                               # %vector.body171
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s4, $t4, $t8
	vldx	$vr8, $s4, $a1
	vldx	$vr9, $s4, $s5
	add.d	$s4, $t6, $t8
	vldx	$vr10, $s4, $s5
	vldx	$vr11, $s4, $a2
	vfadd.s	$vr8, $vr8, $vr10
	vfadd.s	$vr9, $vr9, $vr11
	add.d	$s4, $t7, $t8
	vstx	$vr8, $s4, $s5
	addi.d	$t8, $t8, 32
	vstx	$vr9, $s4, $a2
	bnez	$t8, .LBB7_39
	b	.LBB7_36
.LBB7_40:                               # %.preheader.i43.preheader
	move	$t1, $zero
	ori	$t2, $zero, 313
	vld	$vr8, $a5, %pc_lo12(.LCPI7_0)
	vld	$vr9, $a6, %pc_lo12(.LCPI7_1)
	ori	$a5, $a0, 3648
	ori	$a6, $zero, 991
	vreplgr2vr.d	$vr10, $a6
	move	$a6, $fp
	.p2align	4, , 16
.LBB7_41:                               # %.preheader.i43
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_42 Depth 2
	mul.d	$t3, $t1, $t2
	vreplgr2vr.d	$vr11, $t3
	move	$t3, $a5
	vori.b	$vr12, $vr9, 0
	vori.b	$vr13, $vr8, 0
	.p2align	4, , 16
.LBB7_42:                               # %vector.body184
                                        #   Parent Loop BB7_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vori.b	$vr14, $vr11, 0
	vmadd.d	$vr14, $vr12, $vr10
	vori.b	$vr15, $vr11, 0
	vmadd.d	$vr15, $vr13, $vr10
	vpickev.w	$vr14, $vr15, $vr14
	vand.v	$vr14, $vr14, $vr6
	vffint.s.wu	$vr14, $vr14
	vfdiv.s	$vr14, $vr14, $vr7
	add.d	$t4, $a6, $t3
	vstx	$vr14, $t4, $s5
	vaddi.du	$vr12, $vr12, 4
	addi.d	$t3, $t3, 16
	vaddi.du	$vr13, $vr13, 4
	bnez	$t3, .LBB7_42
# %bb.43:                               # %middle.block189
                                        #   in Loop: Header=BB7_41 Depth=1
	addi.d	$t1, $t1, 1
	add.d	$a6, $a6, $s5
	bne	$t1, $t0, .LBB7_41
# %bb.44:                               # %.preheader180.i52.preheader
	move	$a5, $zero
	move	$a6, $zero
	movgr2fr.w	$fa6, $zero
	ori	$t1, $a0, 3648
	.p2align	4, , 16
.LBB7_45:                               # %.preheader180.i52
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_46 Depth 2
	add.d	$t2, $s2, $a5
	add.d	$t3, $fp, $a5
	move	$t4, $t1
	fmov.s	$fa7, $fa6
	fmov.s	$ft0, $fa6
	fmov.s	$ft1, $fa6
	.p2align	4, , 16
.LBB7_46:                               #   Parent Loop BB7_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t5, $t3, $t4
	fldx.s	$ft2, $t5, $s5
	fmul.s	$ft1, $ft1, $fa1
	fmov.s	$ft3, $ft0
	fmul.s	$ft0, $ft2, $fa5
	fmul.s	$fa7, $fa7, $fa4
	fadd.s	$fa7, $fa7, $ft0
	fmul.s	$ft0, $ft3, $fa0
	fadd.s	$fa7, $ft0, $fa7
	fadd.s	$ft0, $fa7, $ft1
	add.d	$t6, $t2, $t4
	fstx.s	$ft0, $t6, $s5
	fldx.s	$fa7, $t5, $s5
	addi.d	$t4, $t4, 4
	fmov.s	$ft1, $ft3
	bnez	$t4, .LBB7_46
# %bb.47:                               #   in Loop: Header=BB7_45 Depth=1
	addi.d	$a6, $a6, 1
	add.d	$a5, $a5, $s5
	bne	$a6, $t0, .LBB7_45
# %bb.48:                               # %.preheader178.i63.preheader
	move	$a5, $zero
	move	$a6, $zero
	movgr2fr.w	$fa6, $zero
	ori	$a3, $a3, 444
	.p2align	4, , 16
.LBB7_49:                               # %.preheader178.i63
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_50 Depth 2
	add.d	$t1, $fp, $a5
	add.d	$t2, $s3, $a5
	move	$t3, $a3
	fmov.s	$fa7, $fa6
	fmov.s	$ft1, $fa6
	fmov.s	$ft0, $fa6
	fmov.s	$ft2, $fa6
	.p2align	4, , 16
.LBB7_50:                               #   Parent Loop BB7_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fmul.s	$ft2, $ft2, $fa1
	fmov.s	$ft3, $ft0
	fmul.s	$ft0, $ft1, $fa2
	fmov.s	$ft1, $fa7
	fmul.s	$fa7, $fa7, $fa3
	fadd.s	$fa7, $ft0, $fa7
	fmul.s	$ft0, $ft3, $fa0
	fadd.s	$fa7, $ft0, $fa7
	fadd.s	$ft0, $fa7, $ft2
	fstx.s	$ft0, $t2, $t3
	fldx.s	$fa7, $t1, $t3
	addi.d	$t3, $t3, -4
	fmov.s	$ft2, $ft3
	bne	$t3, $a4, .LBB7_50
# %bb.51:                               #   in Loop: Header=BB7_49 Depth=1
	addi.d	$a6, $a6, 1
	add.d	$a5, $a5, $s5
	bne	$a6, $t0, .LBB7_49
# %bb.52:                               # %.preheader176.i74.preheader
	move	$a4, $zero
	sub.d	$a3, $s1, $s2
	sub.d	$a5, $s1, $s3
	sltui	$a3, $a3, 32
	sltui	$a5, $a5, 32
	or	$a3, $a3, $a5
	addi.d	$a5, $s2, 16
	ori	$a6, $a0, 3648
	move	$t1, $s2
	move	$t2, $s3
	move	$t3, $s1
	b	.LBB7_54
	.p2align	4, , 16
.LBB7_53:                               # %middle.block203
                                        #   in Loop: Header=BB7_54 Depth=1
	addi.d	$a4, $a4, 1
	add.d	$a5, $a5, $s5
	add.d	$t3, $t3, $s5
	add.d	$t2, $t2, $s5
	add.d	$t1, $t1, $s5
	beq	$a4, $t0, .LBB7_57
.LBB7_54:                               # %.preheader176.i74
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_56 Depth 2
                                        #     Child Loop BB7_55 Depth 2
	move	$t4, $a6
	beqz	$a3, .LBB7_56
	.p2align	4, , 16
.LBB7_55:                               # %scalar.ph194
                                        #   Parent Loop BB7_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t5, $t1, $t4
	fldx.s	$fa6, $t5, $s5
	add.d	$t5, $t2, $t4
	fldx.s	$fa7, $t5, $s5
	fadd.s	$fa6, $fa6, $fa7
	add.d	$t5, $t3, $t4
	addi.d	$t4, $t4, 4
	fstx.s	$fa6, $t5, $s5
	bnez	$t4, .LBB7_55
	b	.LBB7_53
	.p2align	4, , 16
.LBB7_56:                               # %vector.body196
                                        #   Parent Loop BB7_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t5, $a5, $t4
	vldx	$vr6, $t5, $a1
	vldx	$vr7, $t5, $s5
	add.d	$t5, $t2, $t4
	vldx	$vr8, $t5, $s5
	vldx	$vr9, $t5, $a2
	vfadd.s	$vr6, $vr6, $vr8
	vfadd.s	$vr7, $vr7, $vr9
	add.d	$t5, $t3, $t4
	vstx	$vr6, $t5, $s5
	addi.d	$t4, $t4, 32
	vstx	$vr7, $t5, $a2
	bnez	$t4, .LBB7_56
	b	.LBB7_53
.LBB7_57:                               # %.preheader174.i81.preheader
	move	$a4, $zero
	move	$a5, $zero
	movgr2fr.w	$fa6, $zero
	ori	$a6, $zero, 2160
	.p2align	4, , 16
.LBB7_58:                               # %.preheader174.i81
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_59 Depth 2
	move	$t1, $a4
	move	$t2, $t0
	fmov.s	$fa7, $fa6
	fmov.s	$ft0, $fa6
	fmov.s	$ft1, $fa6
	.p2align	4, , 16
.LBB7_59:                               #   Parent Loop BB7_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$ft2, $s1, $t1
	fmul.s	$ft1, $ft1, $fa1
	fmov.s	$ft3, $ft0
	fmul.s	$ft0, $ft2, $fa5
	fmul.s	$fa7, $fa7, $fa4
	fadd.s	$fa7, $fa7, $ft0
	fmul.s	$ft0, $ft3, $fa0
	fadd.s	$fa7, $ft0, $fa7
	fadd.s	$ft0, $fa7, $ft1
	fstx.s	$ft0, $s2, $t1
	fldx.s	$fa7, $s1, $t1
	fmov.s	$ft1, $ft3
	addi.d	$t2, $t2, -1
	add.d	$t1, $t1, $s5
	bnez	$t2, .LBB7_59
# %bb.60:                               #   in Loop: Header=BB7_58 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 4
	bne	$a5, $a6, .LBB7_58
# %bb.61:                               # %.preheader172.i95.preheader
	move	$a5, $zero
	ori	$a6, $a7, 3648
	movgr2fr.w	$fa4, $zero
	lu12i.w	$a7, -1
	ori	$a4, $a0, 3648
	ori	$t0, $zero, 2160
	.p2align	4, , 16
.LBB7_62:                               # %.preheader172.i95
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_63 Depth 2
	move	$t1, $a6
	move	$t2, $a7
	fmov.s	$fa5, $fa4
	fmov.s	$fa7, $fa4
	fmov.s	$fa6, $fa4
	fmov.s	$ft0, $fa4
	.p2align	4, , 16
.LBB7_63:                               #   Parent Loop BB7_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fmul.s	$ft0, $ft0, $fa1
	fmov.s	$ft1, $fa6
	fmul.s	$fa6, $fa7, $fa2
	fmov.s	$fa7, $fa5
	fmul.s	$fa5, $fa5, $fa3
	fadd.s	$fa5, $fa6, $fa5
	fmul.s	$fa6, $ft1, $fa0
	fadd.s	$fa5, $fa6, $fa5
	fadd.s	$fa6, $fa5, $ft0
	fstx.s	$fa6, $s3, $t1
	fldx.s	$fa5, $s1, $t1
	fmov.s	$ft0, $ft1
	addi.d	$t2, $t2, 1
	add.d	$t1, $t1, $a4
	bnez	$t2, .LBB7_63
# %bb.64:                               #   in Loop: Header=BB7_62 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 4
	bne	$a5, $t0, .LBB7_62
# %bb.65:                               # %.preheader.i110.preheader
	move	$a5, $zero
	addi.d	$a6, $s2, 16
	lu12i.w	$s6, 1
	move	$a7, $s2
	move	$t0, $s3
	move	$t1, $s1
	b	.LBB7_67
	.p2align	4, , 16
.LBB7_66:                               # %middle.block218
                                        #   in Loop: Header=BB7_67 Depth=1
	addi.d	$a5, $a5, 1
	add.d	$a6, $a6, $s5
	add.d	$t1, $t1, $s5
	add.d	$t0, $t0, $s5
	add.d	$a7, $a7, $s5
	beq	$a5, $s6, .LBB7_70
.LBB7_67:                               # %.preheader.i110
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_69 Depth 2
                                        #     Child Loop BB7_68 Depth 2
	move	$t2, $a4
	beqz	$a3, .LBB7_69
	.p2align	4, , 16
.LBB7_68:                               # %scalar.ph209
                                        #   Parent Loop BB7_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t3, $a7, $t2
	fldx.s	$fa0, $t3, $s5
	add.d	$t3, $t0, $t2
	fldx.s	$fa1, $t3, $s5
	fadd.s	$fa0, $fa0, $fa1
	add.d	$t3, $t1, $t2
	addi.d	$t2, $t2, 4
	fstx.s	$fa0, $t3, $s5
	bnez	$t2, .LBB7_68
	b	.LBB7_66
	.p2align	4, , 16
.LBB7_69:                               # %vector.body211
                                        #   Parent Loop BB7_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t3, $a6, $t2
	vldx	$vr0, $t3, $a1
	vldx	$vr1, $t3, $s5
	add.d	$t3, $t0, $t2
	vldx	$vr2, $t3, $s5
	vldx	$vr3, $t3, $a2
	vfadd.s	$vr0, $vr0, $vr2
	vfadd.s	$vr1, $vr1, $vr3
	add.d	$t3, $t1, $t2
	vstx	$vr0, $t3, $s5
	addi.d	$t2, $t2, 32
	vstx	$vr1, $t3, $a2
	bnez	$t2, .LBB7_69
	b	.LBB7_66
.LBB7_70:                               # %.preheader.i117.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI7_8)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI7_8)
	move	$a1, $zero
	move	$a2, $zero
	ori	$a0, $a0, 3648
	.p2align	4, , 16
.LBB7_71:                               # %.preheader.i117
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_72 Depth 2
	move	$a3, $zero
	add.d	$a4, $s1, $a1
	add.d	$a5, $s0, $a1
	move	$a6, $a0
	.p2align	4, , 16
.LBB7_72:                               #   Parent Loop BB7_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a7, $a5, $a6
	fldx.s	$fa1, $a7, $s5
	add.d	$a7, $a4, $a6
	fldx.s	$fa2, $a7, $s5
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_80
# %bb.73:                               # %.critedge.i
                                        #   in Loop: Header=BB7_72 Depth=2
	addi.d	$a6, $a6, 4
	addi.w	$a3, $a3, 1
	bnez	$a6, .LBB7_72
# %bb.74:                               #   in Loop: Header=BB7_71 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a1, $a1, $s5
	bne	$a2, $s6, .LBB7_71
# %bb.75:                               # %check_FP.exit
	lu12i.w	$s7, 16
	ori	$a0, $s7, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI7_9)
	vld	$vr5, $a0, %pc_lo12(.LCPI7_9)
	pcalau12i	$a0, %pc_hi20(.LCPI7_10)
	vld	$vr6, $a0, %pc_lo12(.LCPI7_10)
	pcalau12i	$a0, %pc_hi20(.LCPI7_11)
	vld	$vr7, $a0, %pc_lo12(.LCPI7_11)
	pcalau12i	$a0, %pc_hi20(.LCPI7_12)
	vld	$vr8, $a0, %pc_lo12(.LCPI7_12)
	stx.b	$zero, $s4, $s7
	lu12i.w	$a0, 8
	ori	$s7, $a0, 1792
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$a0, $zero
	move	$s8, $s1
	vst	$vr5, $sp, 80                   # 16-byte Folded Spill
	vst	$vr6, $sp, 64                   # 16-byte Folded Spill
	vst	$vr7, $sp, 48                   # 16-byte Folded Spill
	vst	$vr8, $sp, 32                   # 16-byte Folded Spill
.LBB7_76:                               # %.preheader.i121
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_77 Depth 2
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$a0, $zero
	move	$a1, $s8
	.p2align	4, , 16
.LBB7_77:                               #   Parent Loop BB7_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a1, 0
	fcvt.d.s	$fa0, $fa0
	vreplvei.d	$vr0, $vr0, 0
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
	addi.d	$a1, $a1, 4
	bne	$a0, $s7, .LBB7_77
# %bb.78:                               #   in Loop: Header=BB7_76 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 32                   # 16-byte Folded Reload
	vld	$vr7, $sp, 48                   # 16-byte Folded Reload
	vld	$vr6, $sp, 64                   # 16-byte Folded Reload
	vld	$vr5, $sp, 80                   # 16-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	add.d	$s8, $s8, $s5
	bne	$a0, $s6, .LBB7_76
# %bb.79:                               # %print_array.exit
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
	b	.LBB7_81
.LBB7_80:                               # %check_FP.exit.thread
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
.LBB7_81:
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
.LBB7_82:
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
