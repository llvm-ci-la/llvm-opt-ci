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
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI7_0:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI7_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
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
	lu12i.w	$a1, 1
	lu12i.w	$a2, 8640
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 48
	beqz	$fp, .LBB7_82
# %bb.1:
	bnez	$a0, .LBB7_82
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 48
	lu12i.w	$a1, 1
	lu12i.w	$a2, 8640
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 48
	beqz	$s0, .LBB7_82
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_82
# %bb.4:                                # %polybench_alloc_data.exit32
	st.d	$zero, $sp, 48
	lu12i.w	$a1, 1
	lu12i.w	$a2, 8640
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 48
	beqz	$s1, .LBB7_82
# %bb.5:                                # %polybench_alloc_data.exit32
	bnez	$a0, .LBB7_82
# %bb.6:                                # %polybench_alloc_data.exit34
	st.d	$zero, $sp, 48
	lu12i.w	$a1, 1
	lu12i.w	$a2, 8640
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 48
	beqz	$s2, .LBB7_82
# %bb.7:                                # %polybench_alloc_data.exit34
	bnez	$a0, .LBB7_82
# %bb.8:                                # %polybench_alloc_data.exit36
	st.d	$zero, $sp, 48
	lu12i.w	$s4, 1
	lu12i.w	$a2, 8640
	addi.d	$a0, $sp, 48
	move	$a1, $s4
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 48
	beqz	$s3, .LBB7_82
# %bb.9:                                # %polybench_alloc_data.exit36
	bnez	$a0, .LBB7_82
# %bb.10:                               # %polybench_alloc_data.exit38
	move	$a0, $zero
	ori	$a1, $zero, 313
	pcalau12i	$a4, %pc_hi20(.LCPI7_0)
	xvld	$xr0, $a4, %pc_lo12(.LCPI7_0)
	pcalau12i	$a5, %pc_hi20(.LCPI7_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI7_1)
	lu12i.w	$s6, -3
	ori	$a3, $s6, 3648
	ori	$a2, $zero, 991
	xvreplgr2vr.d	$xr2, $a2
	lu12i.w	$a2, 15
	ori	$a2, $a2, 4095
	xvreplgr2vr.w	$xr6, $a2
	lu12i.w	$a2, 292863
	ori	$a2, $a2, 3840
	xvreplgr2vr.w	$xr7, $a2
	lu12i.w	$a2, 2
	ori	$s5, $a2, 448
	move	$a6, $fp
	.p2align	4, , 16
.LBB7_11:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
	mul.d	$a7, $a0, $a1
	xvreplgr2vr.d	$xr3, $a7
	move	$a7, $a3
	xvori.b	$xr4, $xr1, 0
	xvori.b	$xr5, $xr0, 0
	.p2align	4, , 16
.LBB7_12:                               # %vector.body
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvori.b	$xr8, $xr3, 0
	xvmadd.d	$xr8, $xr5, $xr2
	xvori.b	$xr9, $xr3, 0
	xvmadd.d	$xr9, $xr4, $xr2
	xvpickve2gr.d	$t0, $xr9, 0
	xvinsgr2vr.w	$xr10, $t0, 0
	xvpickve2gr.d	$t0, $xr9, 1
	xvinsgr2vr.w	$xr10, $t0, 1
	xvpickve2gr.d	$t0, $xr9, 2
	xvinsgr2vr.w	$xr10, $t0, 2
	xvpickve2gr.d	$t0, $xr9, 3
	xvinsgr2vr.w	$xr10, $t0, 3
	xvpickve2gr.d	$t0, $xr8, 0
	xvinsgr2vr.w	$xr10, $t0, 4
	xvpickve2gr.d	$t0, $xr8, 1
	xvinsgr2vr.w	$xr10, $t0, 5
	xvpickve2gr.d	$t0, $xr8, 2
	xvinsgr2vr.w	$xr10, $t0, 6
	xvpickve2gr.d	$t0, $xr8, 3
	xvinsgr2vr.w	$xr10, $t0, 7
	xvand.v	$xr8, $xr10, $xr6
	xvffint.s.wu	$xr8, $xr8
	xvfdiv.s	$xr8, $xr8, $xr7
	add.d	$t0, $a6, $a7
	xvstx	$xr8, $t0, $s5
	xvaddi.du	$xr4, $xr4, 8
	addi.d	$a7, $a7, 32
	xvaddi.du	$xr5, $xr5, 8
	bnez	$a7, .LBB7_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a6, $a6, $s5
	bne	$a0, $s4, .LBB7_11
# %bb.14:                               # %.preheader180.i.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_2)
	fld.s	$fa4, $a0, %pc_lo12(.LCPI7_2)
	pcalau12i	$a0, %pc_hi20(.LCPI7_3)
	fld.s	$fa5, $a0, %pc_lo12(.LCPI7_3)
	pcalau12i	$a0, %pc_hi20(.LCPI7_4)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI7_4)
	pcalau12i	$a0, %pc_hi20(.LCPI7_5)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI7_5)
	move	$a0, $zero
	move	$a1, $zero
	movgr2fr.w	$fa2, $zero
	ori	$a3, $s6, 3648
	.p2align	4, , 16
.LBB7_15:                               # %.preheader180.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
	add.d	$a6, $s2, $a0
	add.d	$a7, $fp, $a0
	move	$t0, $a3
	fmov.s	$ft0, $fa2
	fmov.s	$fa3, $fa2
	fmov.s	$ft1, $fa2
	.p2align	4, , 16
.LBB7_16:                               #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t1, $a7, $t0
	fldx.s	$ft2, $t1, $s5
	fmov.s	$ft3, $fa3
	fmul.s	$fa3, $ft0, $fa4
	fmadd.s	$fa3, $ft2, $fa5, $fa3
	fmadd.s	$fa3, $ft3, $fa0, $fa3
	fmadd.s	$fa3, $ft1, $fa1, $fa3
	add.d	$t2, $a6, $t0
	fstx.s	$fa3, $t2, $s5
	fldx.s	$ft0, $t1, $s5
	addi.d	$t0, $t0, 4
	fmov.s	$ft1, $ft3
	bnez	$t0, .LBB7_16
# %bb.17:                               #   in Loop: Header=BB7_15 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a0, $a0, $s5
	bne	$a1, $s4, .LBB7_15
# %bb.18:                               # %.preheader178.i.preheader
	move	$a0, $zero
	move	$a1, $zero
	pcalau12i	$a3, %pc_hi20(.LCPI7_6)
	fld.s	$fa2, $a3, %pc_lo12(.LCPI7_6)
	pcalau12i	$a3, %pc_hi20(.LCPI7_7)
	fld.s	$fa3, $a3, %pc_lo12(.LCPI7_7)
	movgr2fr.w	$ft0, $zero
	ori	$a6, $a2, 444
	addi.w	$a3, $zero, -4
	.p2align	4, , 16
.LBB7_19:                               # %.preheader178.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_20 Depth 2
	add.d	$a7, $fp, $a0
	add.d	$t0, $s3, $a0
	move	$t1, $a6
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
	fstx.s	$ft2, $t0, $t1
	fldx.s	$ft1, $a7, $t1
	addi.d	$t1, $t1, -4
	fmov.s	$ft4, $ft5
	bne	$t1, $a3, .LBB7_20
# %bb.21:                               #   in Loop: Header=BB7_19 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a0, $a0, $s5
	bne	$a1, $s4, .LBB7_19
# %bb.22:                               # %.preheader176.i.preheader
	move	$a6, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s0, $s3
	sltui	$a0, $a0, 64
	sltui	$a1, $a1, 64
	or	$t0, $a0, $a1
	addi.d	$a7, $s2, 32
	ori	$t1, $s6, 3648
	ori	$a0, $a2, 416
	ori	$a1, $a2, 480
	move	$t2, $s2
	move	$t3, $s3
	move	$t4, $s0
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_23:                               # %middle.block164
                                        #   in Loop: Header=BB7_24 Depth=1
	addi.d	$a6, $a6, 1
	add.d	$a7, $a7, $s5
	add.d	$t4, $t4, $s5
	add.d	$t3, $t3, $s5
	add.d	$t2, $t2, $s5
	beq	$a6, $s4, .LBB7_27
.LBB7_24:                               # %.preheader176.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_26 Depth 2
                                        #     Child Loop BB7_25 Depth 2
	move	$t5, $t1
	beqz	$t0, .LBB7_26
	.p2align	4, , 16
.LBB7_25:                               # %scalar.ph156
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t6, $t2, $t5
	fldx.s	$ft0, $t6, $s5
	add.d	$t6, $t3, $t5
	fldx.s	$ft1, $t6, $s5
	fadd.s	$ft0, $ft0, $ft1
	add.d	$t6, $t4, $t5
	addi.d	$t5, $t5, 4
	fstx.s	$ft0, $t6, $s5
	bnez	$t5, .LBB7_25
	b	.LBB7_23
	.p2align	4, , 16
.LBB7_26:                               # %vector.body158
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t6, $a7, $t5
	xvldx	$xr8, $t6, $a0
	xvldx	$xr9, $t6, $s5
	add.d	$t6, $t3, $t5
	xvldx	$xr10, $t6, $s5
	xvldx	$xr11, $t6, $a1
	xvfadd.s	$xr8, $xr8, $xr10
	xvfadd.s	$xr9, $xr9, $xr11
	add.d	$t6, $t4, $t5
	xvstx	$xr8, $t6, $s5
	addi.d	$t5, $t5, 64
	xvstx	$xr9, $t6, $a1
	bnez	$t5, .LBB7_26
	b	.LBB7_23
.LBB7_27:                               # %.preheader174.i.preheader
	move	$a6, $zero
	move	$a7, $zero
	movgr2fr.w	$ft0, $zero
	ori	$t1, $zero, 2160
	.p2align	4, , 16
.LBB7_28:                               # %.preheader174.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_29 Depth 2
	move	$t2, $a6
	move	$t3, $s4
	fmov.s	$ft1, $ft0
	fmov.s	$ft2, $ft0
	fmov.s	$ft3, $ft0
	.p2align	4, , 16
.LBB7_29:                               #   Parent Loop BB7_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$ft4, $s0, $t2
	fmov.s	$ft5, $ft2
	fmul.s	$ft1, $ft1, $fa4
	fmadd.s	$ft1, $ft4, $fa5, $ft1
	fmadd.s	$ft1, $ft2, $fa0, $ft1
	fmadd.s	$ft2, $ft3, $fa1, $ft1
	fstx.s	$ft2, $s2, $t2
	fldx.s	$ft1, $s0, $t2
	addi.d	$t3, $t3, -1
	add.d	$t2, $t2, $s5
	fmov.s	$ft3, $ft5
	bnez	$t3, .LBB7_29
# %bb.30:                               #   in Loop: Header=BB7_28 Depth=1
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 4
	bne	$a7, $t1, .LBB7_28
# %bb.31:                               # %.preheader172.i.preheader
	move	$a7, $zero
	lu12i.w	$a6, 8637
	ori	$t2, $a6, 3648
	movgr2fr.w	$ft0, $zero
	lu12i.w	$t3, -1
	ori	$t1, $s6, 3648
	ori	$t4, $zero, 2160
	.p2align	4, , 16
.LBB7_32:                               # %.preheader172.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_33 Depth 2
	move	$t5, $t2
	move	$t6, $t3
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
	fstx.s	$ft2, $s3, $t5
	fldx.s	$ft1, $s0, $t5
	addi.d	$t6, $t6, 1
	add.d	$t5, $t5, $t1
	fmov.s	$ft4, $ft5
	bnez	$t6, .LBB7_33
# %bb.34:                               #   in Loop: Header=BB7_32 Depth=1
	addi.d	$a7, $a7, 1
	addi.d	$t2, $t2, 4
	bne	$a7, $t4, .LBB7_32
# %bb.35:                               # %.preheader.i42.preheader
	move	$t2, $zero
	addi.d	$t3, $s2, 32
	lu12i.w	$a7, 1
	move	$t4, $s2
	move	$t5, $s3
	move	$t6, $s0
	b	.LBB7_37
	.p2align	4, , 16
.LBB7_36:                               # %middle.block178
                                        #   in Loop: Header=BB7_37 Depth=1
	addi.d	$t2, $t2, 1
	add.d	$t3, $t3, $s5
	add.d	$t6, $t6, $s5
	add.d	$t5, $t5, $s5
	add.d	$t4, $t4, $s5
	beq	$t2, $a7, .LBB7_40
.LBB7_37:                               # %.preheader.i42
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_39 Depth 2
                                        #     Child Loop BB7_38 Depth 2
	move	$t7, $t1
	beqz	$t0, .LBB7_39
	.p2align	4, , 16
.LBB7_38:                               # %scalar.ph169
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t8, $t4, $t7
	fldx.s	$ft0, $t8, $s5
	add.d	$t8, $t5, $t7
	fldx.s	$ft1, $t8, $s5
	fadd.s	$ft0, $ft0, $ft1
	add.d	$t8, $t6, $t7
	addi.d	$t7, $t7, 4
	fstx.s	$ft0, $t8, $s5
	bnez	$t7, .LBB7_38
	b	.LBB7_36
	.p2align	4, , 16
.LBB7_39:                               # %vector.body171
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t8, $t3, $t7
	xvldx	$xr8, $t8, $a0
	xvldx	$xr9, $t8, $s5
	add.d	$t8, $t5, $t7
	xvldx	$xr10, $t8, $s5
	xvldx	$xr11, $t8, $a1
	xvfadd.s	$xr8, $xr8, $xr10
	xvfadd.s	$xr9, $xr9, $xr11
	add.d	$t8, $t6, $t7
	xvstx	$xr8, $t8, $s5
	addi.d	$t7, $t7, 64
	xvstx	$xr9, $t8, $a1
	bnez	$t7, .LBB7_39
	b	.LBB7_36
.LBB7_40:                               # %.preheader.i43.preheader
	move	$t0, $zero
	ori	$t1, $zero, 313
	xvld	$xr8, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr9, $a5, %pc_lo12(.LCPI7_1)
	ori	$a4, $s6, 3648
	ori	$a5, $zero, 991
	xvreplgr2vr.d	$xr10, $a5
	move	$a5, $fp
	.p2align	4, , 16
.LBB7_41:                               # %.preheader.i43
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_42 Depth 2
	mul.d	$t2, $t0, $t1
	xvreplgr2vr.d	$xr11, $t2
	move	$t2, $a4
	xvori.b	$xr12, $xr9, 0
	xvori.b	$xr13, $xr8, 0
	.p2align	4, , 16
.LBB7_42:                               # %vector.body184
                                        #   Parent Loop BB7_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvori.b	$xr14, $xr11, 0
	xvmadd.d	$xr14, $xr13, $xr10
	xvori.b	$xr15, $xr11, 0
	xvmadd.d	$xr15, $xr12, $xr10
	xvpickve2gr.d	$t3, $xr15, 0
	xvinsgr2vr.w	$xr16, $t3, 0
	xvpickve2gr.d	$t3, $xr15, 1
	xvinsgr2vr.w	$xr16, $t3, 1
	xvpickve2gr.d	$t3, $xr15, 2
	xvinsgr2vr.w	$xr16, $t3, 2
	xvpickve2gr.d	$t3, $xr15, 3
	xvinsgr2vr.w	$xr16, $t3, 3
	xvpickve2gr.d	$t3, $xr14, 0
	xvinsgr2vr.w	$xr16, $t3, 4
	xvpickve2gr.d	$t3, $xr14, 1
	xvinsgr2vr.w	$xr16, $t3, 5
	xvpickve2gr.d	$t3, $xr14, 2
	xvinsgr2vr.w	$xr16, $t3, 6
	xvpickve2gr.d	$t3, $xr14, 3
	xvinsgr2vr.w	$xr16, $t3, 7
	xvand.v	$xr14, $xr16, $xr6
	xvffint.s.wu	$xr14, $xr14
	xvfdiv.s	$xr14, $xr14, $xr7
	add.d	$t3, $a5, $t2
	xvstx	$xr14, $t3, $s5
	xvaddi.du	$xr12, $xr12, 8
	addi.d	$t2, $t2, 32
	xvaddi.du	$xr13, $xr13, 8
	bnez	$t2, .LBB7_42
# %bb.43:                               # %middle.block189
                                        #   in Loop: Header=BB7_41 Depth=1
	addi.d	$t0, $t0, 1
	add.d	$a5, $a5, $s5
	bne	$t0, $a7, .LBB7_41
# %bb.44:                               # %.preheader180.i52.preheader
	move	$a4, $zero
	move	$a5, $zero
	movgr2fr.w	$fa6, $zero
	ori	$t0, $s6, 3648
	.p2align	4, , 16
.LBB7_45:                               # %.preheader180.i52
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_46 Depth 2
	add.d	$t1, $s2, $a4
	add.d	$t2, $fp, $a4
	move	$t3, $t0
	fmov.s	$fa7, $fa6
	fmov.s	$ft0, $fa6
	fmov.s	$ft1, $fa6
	.p2align	4, , 16
.LBB7_46:                               #   Parent Loop BB7_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t4, $t2, $t3
	fldx.s	$ft2, $t4, $s5
	fmul.s	$ft1, $ft1, $fa1
	fmov.s	$ft3, $ft0
	fmul.s	$ft0, $ft2, $fa5
	fmul.s	$fa7, $fa7, $fa4
	fadd.s	$fa7, $fa7, $ft0
	fmul.s	$ft0, $ft3, $fa0
	fadd.s	$fa7, $ft0, $fa7
	fadd.s	$ft0, $fa7, $ft1
	add.d	$t5, $t1, $t3
	fstx.s	$ft0, $t5, $s5
	fldx.s	$fa7, $t4, $s5
	addi.d	$t3, $t3, 4
	fmov.s	$ft1, $ft3
	bnez	$t3, .LBB7_46
# %bb.47:                               #   in Loop: Header=BB7_45 Depth=1
	addi.d	$a5, $a5, 1
	add.d	$a4, $a4, $s5
	bne	$a5, $a7, .LBB7_45
# %bb.48:                               # %.preheader178.i63.preheader
	move	$a4, $zero
	move	$a5, $zero
	movgr2fr.w	$fa6, $zero
	ori	$a2, $a2, 444
	.p2align	4, , 16
.LBB7_49:                               # %.preheader178.i63
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_50 Depth 2
	add.d	$t0, $fp, $a4
	add.d	$t1, $s3, $a4
	move	$t2, $a2
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
	fstx.s	$ft0, $t1, $t2
	fldx.s	$fa7, $t0, $t2
	addi.d	$t2, $t2, -4
	fmov.s	$ft2, $ft3
	bne	$t2, $a3, .LBB7_50
# %bb.51:                               #   in Loop: Header=BB7_49 Depth=1
	addi.d	$a5, $a5, 1
	add.d	$a4, $a4, $s5
	bne	$a5, $a7, .LBB7_49
# %bb.52:                               # %.preheader176.i74.preheader
	move	$a3, $zero
	sub.d	$a2, $s1, $s2
	sub.d	$a4, $s1, $s3
	sltui	$a2, $a2, 64
	sltui	$a4, $a4, 64
	or	$a2, $a2, $a4
	addi.d	$a4, $s2, 32
	ori	$a5, $s6, 3648
	move	$t0, $s2
	move	$t1, $s3
	move	$t2, $s1
	b	.LBB7_54
	.p2align	4, , 16
.LBB7_53:                               # %middle.block203
                                        #   in Loop: Header=BB7_54 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a4, $a4, $s5
	add.d	$t2, $t2, $s5
	add.d	$t1, $t1, $s5
	add.d	$t0, $t0, $s5
	beq	$a3, $a7, .LBB7_57
.LBB7_54:                               # %.preheader176.i74
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_56 Depth 2
                                        #     Child Loop BB7_55 Depth 2
	move	$t3, $a5
	beqz	$a2, .LBB7_56
	.p2align	4, , 16
.LBB7_55:                               # %scalar.ph194
                                        #   Parent Loop BB7_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t4, $t0, $t3
	fldx.s	$fa6, $t4, $s5
	add.d	$t4, $t1, $t3
	fldx.s	$fa7, $t4, $s5
	fadd.s	$fa6, $fa6, $fa7
	add.d	$t4, $t2, $t3
	addi.d	$t3, $t3, 4
	fstx.s	$fa6, $t4, $s5
	bnez	$t3, .LBB7_55
	b	.LBB7_53
	.p2align	4, , 16
.LBB7_56:                               # %vector.body196
                                        #   Parent Loop BB7_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t4, $a4, $t3
	xvldx	$xr6, $t4, $a0
	xvldx	$xr7, $t4, $s5
	add.d	$t4, $t1, $t3
	xvldx	$xr8, $t4, $s5
	xvldx	$xr9, $t4, $a1
	xvfadd.s	$xr6, $xr6, $xr8
	xvfadd.s	$xr7, $xr7, $xr9
	add.d	$t4, $t2, $t3
	xvstx	$xr6, $t4, $s5
	addi.d	$t3, $t3, 64
	xvstx	$xr7, $t4, $a1
	bnez	$t3, .LBB7_56
	b	.LBB7_53
.LBB7_57:                               # %.preheader174.i81.preheader
	move	$a3, $zero
	move	$a4, $zero
	movgr2fr.w	$fa6, $zero
	ori	$a5, $zero, 2160
	.p2align	4, , 16
.LBB7_58:                               # %.preheader174.i81
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_59 Depth 2
	move	$t0, $a3
	move	$t1, $a7
	fmov.s	$fa7, $fa6
	fmov.s	$ft0, $fa6
	fmov.s	$ft1, $fa6
	.p2align	4, , 16
.LBB7_59:                               #   Parent Loop BB7_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$ft2, $s1, $t0
	fmul.s	$ft1, $ft1, $fa1
	fmov.s	$ft3, $ft0
	fmul.s	$ft0, $ft2, $fa5
	fmul.s	$fa7, $fa7, $fa4
	fadd.s	$fa7, $fa7, $ft0
	fmul.s	$ft0, $ft3, $fa0
	fadd.s	$fa7, $ft0, $fa7
	fadd.s	$ft0, $fa7, $ft1
	fstx.s	$ft0, $s2, $t0
	fldx.s	$fa7, $s1, $t0
	fmov.s	$ft1, $ft3
	addi.d	$t1, $t1, -1
	add.d	$t0, $t0, $s5
	bnez	$t1, .LBB7_59
# %bb.60:                               #   in Loop: Header=BB7_58 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 4
	bne	$a4, $a5, .LBB7_58
# %bb.61:                               # %.preheader172.i95.preheader
	move	$a4, $zero
	ori	$a5, $a6, 3648
	movgr2fr.w	$fa4, $zero
	lu12i.w	$a6, -1
	ori	$a3, $s6, 3648
	ori	$a7, $zero, 2160
	.p2align	4, , 16
.LBB7_62:                               # %.preheader172.i95
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_63 Depth 2
	move	$t0, $a5
	move	$t1, $a6
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
	fstx.s	$fa6, $s3, $t0
	fldx.s	$fa5, $s1, $t0
	fmov.s	$ft0, $ft1
	addi.d	$t1, $t1, 1
	add.d	$t0, $t0, $a3
	bnez	$t1, .LBB7_63
# %bb.64:                               #   in Loop: Header=BB7_62 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 4
	bne	$a4, $a7, .LBB7_62
# %bb.65:                               # %.preheader.i110.preheader
	move	$a4, $zero
	addi.d	$a5, $s2, 32
	lu12i.w	$s7, 1
	move	$a6, $s2
	move	$a7, $s3
	move	$t0, $s1
	b	.LBB7_67
	.p2align	4, , 16
.LBB7_66:                               # %middle.block218
                                        #   in Loop: Header=BB7_67 Depth=1
	addi.d	$a4, $a4, 1
	add.d	$a5, $a5, $s5
	add.d	$t0, $t0, $s5
	add.d	$a7, $a7, $s5
	add.d	$a6, $a6, $s5
	beq	$a4, $s7, .LBB7_70
.LBB7_67:                               # %.preheader.i110
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_69 Depth 2
                                        #     Child Loop BB7_68 Depth 2
	move	$t1, $a3
	beqz	$a2, .LBB7_69
	.p2align	4, , 16
.LBB7_68:                               # %scalar.ph209
                                        #   Parent Loop BB7_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t2, $a6, $t1
	fldx.s	$fa0, $t2, $s5
	add.d	$t2, $a7, $t1
	fldx.s	$fa1, $t2, $s5
	fadd.s	$fa0, $fa0, $fa1
	add.d	$t2, $t0, $t1
	addi.d	$t1, $t1, 4
	fstx.s	$fa0, $t2, $s5
	bnez	$t1, .LBB7_68
	b	.LBB7_66
	.p2align	4, , 16
.LBB7_69:                               # %vector.body211
                                        #   Parent Loop BB7_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t2, $a5, $t1
	xvldx	$xr0, $t2, $a0
	xvldx	$xr1, $t2, $s5
	add.d	$t2, $a7, $t1
	xvldx	$xr2, $t2, $s5
	xvldx	$xr3, $t2, $a1
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	add.d	$t2, $t0, $t1
	xvstx	$xr0, $t2, $s5
	addi.d	$t1, $t1, 64
	xvstx	$xr1, $t2, $a1
	bnez	$t1, .LBB7_69
	b	.LBB7_66
.LBB7_70:                               # %.preheader.i117.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_8)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_8)
	move	$a0, $zero
	move	$a2, $zero
	ori	$a1, $s6, 3648
	.p2align	4, , 16
.LBB7_71:                               # %.preheader.i117
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_72 Depth 2
	move	$a3, $zero
	add.d	$a4, $s1, $a0
	add.d	$a5, $s0, $a0
	move	$a6, $a1
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
	add.d	$a0, $a0, $s5
	bne	$a2, $s7, .LBB7_71
# %bb.75:                               # %check_FP.exit
	lu12i.w	$s4, 16
	ori	$a0, $s4, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.b	$zero, $a0, $s4
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 7
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $s6, 3648
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s8, $zero, 3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $zero
	move	$s4, $zero
.LBB7_76:                               # %.preheader.i121
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_77 Depth 2
	add.d	$a0, $s1, $s6
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_77:                               #   Parent Loop BB7_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a0, $a2
	fldx.s	$fa0, $a3, $s5
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
	srli.d	$a4, $a3, 8
	srli.d	$a5, $a3, 16
	srli.d	$a6, $a3, 24
	srli.d	$a7, $a3, 32
	srli.d	$t0, $a3, 40
	srli.d	$t1, $a3, 48
	srli.d	$t2, $a3, 56
	bstrins.d	$a3, $s8, 63, 4
	st.b	$a3, $a1, -7
	st.b	$a3, $a1, -6
	bstrins.d	$a4, $s8, 63, 4
	st.b	$a4, $a1, -5
	st.b	$a4, $a1, -4
	bstrins.d	$a5, $s8, 63, 4
	st.b	$a5, $a1, -3
	st.b	$a5, $a1, -2
	bstrins.d	$a6, $s8, 63, 4
	st.b	$a6, $a1, -1
	st.b	$a6, $a1, 0
	bstrins.d	$a7, $s8, 63, 4
	st.b	$a7, $a1, 1
	st.b	$a7, $a1, 2
	bstrins.d	$t0, $s8, 63, 4
	st.b	$t0, $a1, 3
	st.b	$t0, $a1, 4
	bstrins.d	$t1, $s8, 63, 4
	st.b	$t1, $a1, 5
	st.b	$t1, $a1, 6
	bstrins.d	$t2, $s8, 63, 4
	st.b	$t2, $a1, 7
	st.b	$t2, $a1, 8
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB7_77
# %bb.78:                               #   in Loop: Header=BB7_76 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 1
	add.d	$s6, $s6, $s5
	bne	$s4, $s7, .LBB7_76
# %bb.79:                               # %print_array.exit
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
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
