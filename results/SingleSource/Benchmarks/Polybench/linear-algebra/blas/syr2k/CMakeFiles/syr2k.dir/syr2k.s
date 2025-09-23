	.file	"syr2k.c"
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
	.dword	0x4092c00000000000              # double 1200
.LCPI7_2:
	.dword	0x408f400000000000              # double 1000
.LCPI7_3:
	.dword	0x3ff3333333333333              # double 1.2
.LCPI7_4:
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
	ld.d	$a1, $sp, 80
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	beqz	$a1, .LBB7_70
# %bb.1:
	bnez	$a0, .LBB7_70
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 80
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	beqz	$a1, .LBB7_70
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_70
# %bb.4:                                # %polybench_alloc_data.exit26
	st.d	$zero, $sp, 80
	lu12i.w	$a0, 2343
	ori	$s2, $a0, 3072
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	beqz	$a1, .LBB7_70
# %bb.5:                                # %polybench_alloc_data.exit26
	bnez	$a0, .LBB7_70
# %bb.6:                                # %polybench_alloc_data.exit28
	st.d	$zero, $sp, 80
	lu12i.w	$s3, 1
	addi.d	$a0, $sp, 80
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	beqz	$a1, .LBB7_70
# %bb.7:                                # %polybench_alloc_data.exit28
	bnez	$a0, .LBB7_70
# %bb.8:                                # %polybench_alloc_data.exit30
	move	$a4, $zero
	move	$a5, $zero
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a6, $t7, $t6
	ori	$a7, $zero, 31
	lu12i.w	$a3, -2
	ori	$t0, $a3, 192
	lu12i.w	$a0, 67108
	ori	$t1, $a0, 3539
	ori	$t2, $zero, 1000
	lu12i.w	$a0, 111848
	ori	$a1, $a0, 437
	ori	$t3, $zero, 1200
	pcalau12i	$a0, %pc_hi20(.LCPI7_1)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI7_1)
	ori	$a0, $s3, 3904
	pcalau12i	$a2, %pc_hi20(.LCPI7_2)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI7_2)
	pcalau12i	$a2, %pc_hi20(.LCPI7_0)
	xvld	$xr3, $a2, %pc_lo12(.LCPI7_0)
	vreplgr2vr.w	$vr1, $a1
	vreplgr2vr.w	$vr4, $t3
	ori	$t4, $zero, 0
	ori	$t5, $zero, 0
	lu32i.d	$t5, 180224
	lu52i.d	$t5, $t5, 1033
	xvreplgr2vr.d	$xr5, $t5
	vreplgr2vr.w	$vr6, $t1
	vreplgr2vr.w	$vr7, $t2
	lu32i.d	$t4, -49152
	lu52i.d	$t4, $t4, 1032
	xvreplgr2vr.d	$xr8, $t4
	move	$t4, $t6
	move	$t5, $t7
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_9:                                # %middle.block
                                        #   in Loop: Header=BB7_10 Depth=1
	addi.d	$a5, $a5, 1
	add.d	$t5, $t5, $a0
	add.d	$t4, $t4, $a0
	addi.d	$a4, $a4, 1
	beq	$a5, $t3, .LBB7_15
.LBB7_10:                               # %.preheader43.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_14 Depth 2
                                        #     Child Loop BB7_12 Depth 2
	bltu	$a7, $a6, .LBB7_13
# %bb.11:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_10 Depth=1
	ori	$t6, $zero, 2
	ori	$t7, $zero, 1
	move	$t8, $t0
	.p2align	4, , 16
.LBB7_12:                               # %scalar.ph
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$fp, $t6, 31, 0
	mul.d	$fp, $fp, $t1
	srli.d	$fp, $fp, 38
	mul.d	$fp, $fp, $t2
	sub.d	$fp, $t6, $fp
	bstrpick.d	$fp, $fp, 31, 0
	bstrpick.d	$s0, $t7, 31, 0
	mul.d	$s0, $s0, $a1
	srli.d	$s0, $s0, 39
	mul.d	$s0, $s0, $t3
	sub.d	$s0, $t7, $s0
	bstrpick.d	$s0, $s0, 31, 0
	movgr2fr.d	$ft1, $s0
	ffint.d.l	$ft1, $ft1
	fdiv.d	$ft1, $ft1, $fa2
	add.d	$s0, $t4, $t8
	fstx.d	$ft1, $s0, $a0
	movgr2fr.d	$ft1, $fp
	ffint.d.l	$ft1, $ft1
	fdiv.d	$ft1, $ft1, $fa0
	add.d	$fp, $t5, $t8
	fstx.d	$ft1, $fp, $a0
	addi.d	$t8, $t8, 8
	add.w	$t6, $t6, $a4
	add.w	$t7, $t7, $a4
	bnez	$t8, .LBB7_12
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_13:                               # %vector.ph
                                        #   in Loop: Header=BB7_10 Depth=1
	xvreplgr2vr.d	$xr9, $a5
	move	$t6, $t0
	xvori.b	$xr10, $xr3, 0
	.p2align	4, , 16
.LBB7_14:                               # %vector.body
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvmul.d	$xr11, $xr10, $xr9
	xvpickve2gr.d	$t7, $xr11, 0
	vinsgr2vr.w	$vr12, $t7, 0
	xvpickve2gr.d	$t7, $xr11, 1
	vinsgr2vr.w	$vr12, $t7, 1
	xvpickve2gr.d	$t7, $xr11, 2
	vinsgr2vr.w	$vr12, $t7, 2
	xvpickve2gr.d	$t7, $xr11, 3
	vinsgr2vr.w	$vr12, $t7, 3
	vaddi.wu	$vr11, $vr12, 1
	vmuh.wu	$vr13, $vr11, $vr1
	vsrli.w	$vr13, $vr13, 7
	vmsub.w	$vr11, $vr13, $vr4
	vext2xv.du.wu	$xr11, $xr11
	xvffint.d.lu	$xr11, $xr11
	xvfdiv.d	$xr11, $xr11, $xr5
	add.d	$t7, $t4, $t6
	xvstx	$xr11, $t7, $a0
	vaddi.wu	$vr11, $vr12, 2
	vmuh.wu	$vr12, $vr11, $vr6
	vsrli.w	$vr12, $vr12, 6
	vmsub.w	$vr11, $vr12, $vr7
	vext2xv.du.wu	$xr11, $xr11
	xvffint.d.lu	$xr11, $xr11
	xvfdiv.d	$xr11, $xr11, $xr8
	add.d	$t7, $t5, $t6
	xvstx	$xr11, $t7, $a0
	addi.d	$t6, $t6, 32
	xvaddi.du	$xr10, $xr10, 4
	bnez	$t6, .LBB7_14
	b	.LBB7_9
.LBB7_15:                               # %.preheader.i.preheader
	move	$a5, $zero
	move	$a6, $zero
	ld.d	$t3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a7, $t4, $t3
	ori	$t0, $zero, 31
	lu12i.w	$a4, -3
	ori	$t1, $a4, 2688
	ori	$t2, $zero, 1200
	lu12i.w	$a4, 2
	ori	$s4, $a4, 1408
	xvld	$xr2, $a2, %pc_lo12(.LCPI7_0)
	vreplgr2vr.w	$vr3, $t2
	ori	$a2, $zero, 0
	lu32i.d	$a2, -49152
	lu52i.d	$a2, $a2, 1032
	xvreplgr2vr.d	$xr4, $a2
	move	$a2, $t3
	move	$t3, $t4
	b	.LBB7_17
	.p2align	4, , 16
.LBB7_16:                               # %middle.block107
                                        #   in Loop: Header=BB7_17 Depth=1
	addi.d	$a6, $a6, 1
	add.d	$t3, $t3, $s4
	add.d	$a2, $a2, $s4
	addi.d	$a5, $a5, 1
	beq	$a6, $t2, .LBB7_22
.LBB7_17:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_21 Depth 2
                                        #     Child Loop BB7_19 Depth 2
	bltu	$t0, $a7, .LBB7_20
# %bb.18:                               # %scalar.ph98.preheader
                                        #   in Loop: Header=BB7_17 Depth=1
	ori	$t4, $zero, 3
	move	$t5, $t1
	.p2align	4, , 16
.LBB7_19:                               # %scalar.ph98
                                        #   Parent Loop BB7_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t6, $t4, 31, 0
	mul.d	$t6, $t6, $a1
	srli.d	$t6, $t6, 39
	mul.d	$t6, $t6, $t2
	sub.d	$t6, $t4, $t6
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$fa5, $t6
	ffint.d.l	$fa5, $fa5
	fdiv.d	$fa5, $fa5, $fa0
	add.d	$t6, $a2, $t5
	fstx.d	$fa5, $t6, $s4
	add.d	$t6, $t3, $t5
	fstx.d	$fa5, $t6, $s4
	addi.d	$t5, $t5, 8
	add.w	$t4, $t4, $a5
	bnez	$t5, .LBB7_19
	b	.LBB7_16
	.p2align	4, , 16
.LBB7_20:                               # %vector.ph99
                                        #   in Loop: Header=BB7_17 Depth=1
	xvreplgr2vr.d	$xr5, $a6
	move	$t4, $t1
	xvori.b	$xr6, $xr2, 0
	.p2align	4, , 16
.LBB7_21:                               # %vector.body102
                                        #   Parent Loop BB7_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvmul.d	$xr7, $xr6, $xr5
	xvpickve2gr.d	$t5, $xr7, 0
	vinsgr2vr.w	$vr8, $t5, 0
	xvpickve2gr.d	$t5, $xr7, 1
	vinsgr2vr.w	$vr8, $t5, 1
	xvpickve2gr.d	$t5, $xr7, 2
	vinsgr2vr.w	$vr8, $t5, 2
	xvpickve2gr.d	$t5, $xr7, 3
	vinsgr2vr.w	$vr8, $t5, 3
	vaddi.wu	$vr7, $vr8, 3
	vmuh.wu	$vr8, $vr7, $vr1
	vsrli.w	$vr8, $vr8, 7
	vmsub.w	$vr7, $vr8, $vr3
	vext2xv.du.wu	$xr7, $xr7
	xvffint.d.lu	$xr7, $xr7
	xvfdiv.d	$xr7, $xr7, $xr4
	add.d	$t5, $a2, $t4
	xvstx	$xr7, $t5, $s4
	add.d	$t5, $t3, $t4
	xvstx	$xr7, $t5, $s4
	addi.d	$t4, $t4, 32
	xvaddi.du	$xr6, $xr6, 4
	bnez	$t4, .LBB7_21
	b	.LBB7_16
.LBB7_22:                               # %.preheader36.i.preheader
	move	$a7, $zero
	ld.d	$t8, $sp, 40                    # 8-byte Folded Reload
	addi.d	$t0, $t8, 32
	lu12i.w	$a1, 3
	ori	$a2, $a1, 3712
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$t3, $zero, 1
	addi.w	$t4, $zero, -8
	ori	$a1, $a4, 1416
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	vldi	$vr1, -904
	ori	$t6, $zero, 1000
	lu12i.w	$a1, -4
	ori	$a2, $a1, 384
	ori	$a3, $a3, 192
	ori	$a1, $zero, 0
	lu32i.d	$a1, -524288
	lu52i.d	$a1, $a1, 1023
	xvreplgr2vr.d	$xr2, $a1
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
	lu12i.w	$a1, 209715
	ori	$a1, $a1, 819
	lu32i.d	$a1, 209715
	lu52i.d	$a1, $a1, 1023
	xvreplgr2vr.d	$xr0, $a1
	pcalau12i	$a5, %pc_hi20(.LCPI7_3)
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_23:                               #   in Loop: Header=BB7_24 Depth=1
	addi.d	$a7, $a7, 1
	addi.d	$t3, $t3, 1
	add.d	$t0, $t0, $s4
	add.d	$t8, $t8, $s4
	addi.d	$t4, $t4, -8
	ori	$a1, $zero, 1200
	beq	$a7, $a1, .LBB7_40
.LBB7_24:                               # %.preheader36.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_27 Depth 2
                                        #     Child Loop BB7_30 Depth 2
                                        #     Child Loop BB7_33 Depth 2
                                        #       Child Loop BB7_36 Depth 3
                                        #       Child Loop BB7_39 Depth 3
	ori	$a1, $zero, 8
	bgeu	$t3, $a1, .LBB7_26
# %bb.25:                               #   in Loop: Header=BB7_24 Depth=1
	move	$a1, $zero
	b	.LBB7_29
	.p2align	4, , 16
.LBB7_26:                               # %vector.ph139
                                        #   in Loop: Header=BB7_24 Depth=1
	move	$a6, $t3
	bstrins.d	$a6, $zero, 2, 0
	bstrpick.d	$a1, $t3, 62, 3
	slli.d	$a1, $a1, 3
	move	$t1, $t0
	.p2align	4, , 16
.LBB7_27:                               # %vector.body142
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr3, $t1, -32
	xvld	$xr4, $t1, 0
	xvfmul.d	$xr3, $xr3, $xr0
	xvfmul.d	$xr4, $xr4, $xr0
	xvst	$xr3, $t1, -32
	xvst	$xr4, $t1, 0
	addi.d	$a6, $a6, -8
	addi.d	$t1, $t1, 64
	bnez	$a6, .LBB7_27
# %bb.28:                               # %middle.block147
                                        #   in Loop: Header=BB7_24 Depth=1
	beq	$t3, $a1, .LBB7_31
.LBB7_29:                               # %scalar.ph137.preheader
                                        #   in Loop: Header=BB7_24 Depth=1
	alsl.d	$a6, $a1, $t8, 3
	.p2align	4, , 16
.LBB7_30:                               # %scalar.ph137
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $a6, 0
	fld.d	$fa4, $a5, %pc_lo12(.LCPI7_3)
	fmul.d	$fa3, $fa3, $fa4
	fst.d	$fa3, $a6, 0
	addi.d	$a1, $a1, 1
	addi.d	$a6, $a6, 8
	bne	$t3, $a1, .LBB7_30
.LBB7_31:                               # %.preheader35.i
                                        #   in Loop: Header=BB7_24 Depth=1
	move	$s3, $zero
	move	$s6, $t3
	bstrins.d	$s6, $zero, 1, 0
	mul.d	$a1, $a7, $s4
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a1, $t1, $a1
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a6, $a7, $a6
	add.d	$a6, $t1, $a6
	addi.d	$a6, $a6, 8
	mul.d	$t1, $a7, $a0
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	add.d	$s7, $s1, $t1
	add.d	$t2, $t1, $a0
	add.d	$t5, $s1, $t2
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	add.d	$t2, $s2, $t2
	add.d	$s8, $s2, $t1
	sltu	$t1, $a1, $t5
	sltu	$t5, $s7, $a6
	sltu	$t7, $s1, $a6
	or	$t5, $t5, $t7
	and	$t1, $t1, $t5
	sltu	$a1, $a1, $t2
	sltu	$t2, $s2, $a6
	and	$t2, $a1, $t2
	or	$t1, $t1, $t2
	sltu	$a6, $s8, $a6
	and	$a1, $a1, $a6
	or	$ra, $t1, $a1
	bstrpick.d	$a1, $t3, 62, 2
	slli.d	$s5, $a1, 2
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	b	.LBB7_33
	.p2align	4, , 16
.LBB7_32:                               # %.loopexit201
                                        #   in Loop: Header=BB7_33 Depth=2
	addi.d	$s3, $s3, 1
	addi.d	$t5, $t5, 8
	addi.d	$a6, $a6, 8
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, 8
	beq	$s3, $t6, .LBB7_23
.LBB7_33:                               # %.preheader.i35
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_36 Depth 3
                                        #       Child Loop BB7_39 Depth 3
	sltui	$a1, $t3, 4
	alsl.d	$t7, $s3, $s8, 3
	or	$a1, $a1, $ra
	andi	$t1, $a1, 1
	alsl.d	$a1, $s3, $s7, 3
	beqz	$t1, .LBB7_35
# %bb.34:                               #   in Loop: Header=BB7_33 Depth=2
	move	$t2, $zero
	b	.LBB7_38
	.p2align	4, , 16
.LBB7_35:                               # %vector.ph127
                                        #   in Loop: Header=BB7_33 Depth=2
	xvldrepl.d	$xr3, $t7, 0
	xvldrepl.d	$xr4, $a1, 0
	move	$t2, $a6
	move	$t1, $t5
	move	$fp, $t8
	move	$s0, $s6
	.p2align	4, , 16
.LBB7_36:                               # %vector.body128
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa5, $t1, $a2
	fldx.d	$fa6, $t1, $a3
	fld.d	$fa7, $t1, 0
	fldx.d	$ft0, $t1, $a0
	xvinsve0.d	$xr5, $xr6, 1
	xvinsve0.d	$xr5, $xr7, 2
	xvinsve0.d	$xr5, $xr8, 3
	fldx.d	$fa6, $t2, $a2
	fldx.d	$fa7, $t2, $a3
	fld.d	$ft0, $t2, 0
	fldx.d	$ft1, $t2, $a0
	xvfmul.d	$xr5, $xr5, $xr2
	xvinsve0.d	$xr6, $xr7, 1
	xvinsve0.d	$xr6, $xr8, 2
	xvinsve0.d	$xr6, $xr9, 3
	xvld	$xr7, $fp, 0
	xvfmul.d	$xr6, $xr6, $xr2
	xvfmul.d	$xr6, $xr6, $xr4
	xvfmadd.d	$xr5, $xr5, $xr3, $xr6
	xvfadd.d	$xr5, $xr7, $xr5
	xvst	$xr5, $fp, 0
	addi.d	$s0, $s0, -4
	addi.d	$fp, $fp, 32
	add.d	$t1, $t1, $a4
	add.d	$t2, $t2, $a4
	bnez	$s0, .LBB7_36
# %bb.37:                               # %middle.block135
                                        #   in Loop: Header=BB7_33 Depth=2
	move	$t2, $s5
	beq	$t3, $s5, .LBB7_32
.LBB7_38:                               # %scalar.ph126.preheader
                                        #   in Loop: Header=BB7_33 Depth=2
	slli.d	$t1, $t2, 3
	mul.d	$fp, $t2, $a0
	add.d	$t2, $s2, $fp
	add.d	$fp, $s1, $fp
	.p2align	4, , 16
.LBB7_39:                               # %scalar.ph126
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa3, $t2, 0
	fld.d	$fa4, $fp, 0
	fld.d	$fa5, $a1, 0
	fld.d	$fa6, $t7, 0
	fmul.d	$fa3, $fa3, $fa1
	fldx.d	$fa7, $t8, $t1
	fmul.d	$fa3, $fa3, $fa5
	fmul.d	$fa4, $fa4, $fa1
	fmadd.d	$fa3, $fa4, $fa6, $fa3
	fadd.d	$fa3, $fa7, $fa3
	fstx.d	$fa3, $t8, $t1
	addi.d	$t1, $t1, 8
	add.d	$s0, $t4, $t1
	add.d	$t2, $t2, $a0
	add.d	$fp, $fp, $a0
	bnez	$s0, .LBB7_39
	b	.LBB7_32
.LBB7_40:                               # %.preheader36.i38.preheader
	move	$a7, $zero
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	addi.d	$t0, $fp, 32
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a6
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a6
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$t2, $zero, 1
	addi.w	$t3, $zero, -8
	vldi	$vr1, -904
	ori	$t5, $zero, 1000
	ori	$a1, $zero, 0
	lu32i.d	$a1, -524288
	lu52i.d	$a1, $a1, 1023
	xvreplgr2vr.d	$xr2, $a1
	b	.LBB7_42
	.p2align	4, , 16
.LBB7_41:                               #   in Loop: Header=BB7_42 Depth=1
	addi.d	$a7, $a7, 1
	addi.d	$t2, $t2, 1
	add.d	$t0, $t0, $s4
	add.d	$fp, $fp, $s4
	addi.d	$t3, $t3, -8
	ori	$a1, $zero, 1200
	beq	$a7, $a1, .LBB7_58
.LBB7_42:                               # %.preheader36.i38
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_45 Depth 2
                                        #     Child Loop BB7_48 Depth 2
                                        #     Child Loop BB7_51 Depth 2
                                        #       Child Loop BB7_54 Depth 3
                                        #       Child Loop BB7_57 Depth 3
	ori	$a1, $zero, 8
	bgeu	$t2, $a1, .LBB7_44
# %bb.43:                               #   in Loop: Header=BB7_42 Depth=1
	move	$a1, $zero
	b	.LBB7_47
	.p2align	4, , 16
.LBB7_44:                               # %vector.ph190
                                        #   in Loop: Header=BB7_42 Depth=1
	move	$a6, $t2
	bstrins.d	$a6, $zero, 2, 0
	bstrpick.d	$a1, $t2, 62, 3
	slli.d	$a1, $a1, 3
	move	$t1, $t0
	.p2align	4, , 16
.LBB7_45:                               # %vector.body193
                                        #   Parent Loop BB7_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr3, $t1, -32
	xvld	$xr4, $t1, 0
	xvfmul.d	$xr3, $xr3, $xr0
	xvfmul.d	$xr4, $xr4, $xr0
	xvst	$xr3, $t1, -32
	xvst	$xr4, $t1, 0
	addi.d	$a6, $a6, -8
	addi.d	$t1, $t1, 64
	bnez	$a6, .LBB7_45
# %bb.46:                               # %middle.block198
                                        #   in Loop: Header=BB7_42 Depth=1
	beq	$t2, $a1, .LBB7_49
.LBB7_47:                               # %scalar.ph188.preheader
                                        #   in Loop: Header=BB7_42 Depth=1
	alsl.d	$a6, $a1, $fp, 3
	.p2align	4, , 16
.LBB7_48:                               # %scalar.ph188
                                        #   Parent Loop BB7_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $a6, 0
	fld.d	$fa4, $a5, %pc_lo12(.LCPI7_3)
	fmul.d	$fa3, $fa3, $fa4
	fst.d	$fa3, $a6, 0
	addi.d	$a1, $a1, 1
	addi.d	$a6, $a6, 8
	bne	$t2, $a1, .LBB7_48
.LBB7_49:                               # %.preheader35.i44
                                        #   in Loop: Header=BB7_42 Depth=1
	move	$t8, $zero
	move	$s0, $t2
	bstrins.d	$s0, $zero, 1, 0
	mul.d	$a1, $a7, $s4
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	add.d	$a1, $t1, $a1
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a6, $a7, $a6
	add.d	$a6, $t1, $a6
	addi.d	$a6, $a6, 8
	mul.d	$t1, $a7, $a0
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	add.d	$s6, $s5, $t1
	add.d	$t4, $t1, $a0
	add.d	$t6, $s5, $t4
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	add.d	$t4, $s1, $t4
	add.d	$s7, $s1, $t1
	sltu	$t1, $a1, $t6
	sltu	$t6, $s6, $a6
	sltu	$t7, $s5, $a6
	or	$t6, $t6, $t7
	and	$t1, $t1, $t6
	sltu	$a1, $a1, $t4
	sltu	$t4, $s1, $a6
	and	$t4, $a1, $t4
	or	$t1, $t1, $t4
	sltu	$a6, $s7, $a6
	and	$a1, $a1, $a6
	or	$s8, $t1, $a1
	bstrpick.d	$a1, $t2, 62, 2
	slli.d	$ra, $a1, 2
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 32                    # 8-byte Folded Reload
	b	.LBB7_51
	.p2align	4, , 16
.LBB7_50:                               # %.loopexit
                                        #   in Loop: Header=BB7_51 Depth=2
	addi.d	$t8, $t8, 1
	addi.d	$t4, $t4, 8
	addi.d	$a6, $a6, 8
	addi.d	$s1, $s1, 8
	addi.d	$s5, $s5, 8
	beq	$t8, $t5, .LBB7_41
.LBB7_51:                               # %.preheader.i45
                                        #   Parent Loop BB7_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_54 Depth 3
                                        #       Child Loop BB7_57 Depth 3
	sltui	$a1, $t2, 4
	alsl.d	$t6, $t8, $s7, 3
	or	$a1, $a1, $s8
	andi	$t1, $a1, 1
	alsl.d	$a1, $t8, $s6, 3
	beqz	$t1, .LBB7_53
# %bb.52:                               #   in Loop: Header=BB7_51 Depth=2
	move	$t7, $zero
	b	.LBB7_56
	.p2align	4, , 16
.LBB7_53:                               # %vector.ph174
                                        #   in Loop: Header=BB7_51 Depth=2
	xvldrepl.d	$xr3, $t6, 0
	xvldrepl.d	$xr4, $a1, 0
	move	$s2, $a6
	move	$t1, $t4
	move	$t7, $fp
	move	$s3, $s0
	.p2align	4, , 16
.LBB7_54:                               # %vector.body177
                                        #   Parent Loop BB7_42 Depth=1
                                        #     Parent Loop BB7_51 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa5, $t1, $a2
	fldx.d	$fa6, $t1, $a3
	fld.d	$fa7, $t1, 0
	fldx.d	$ft0, $t1, $a0
	xvinsve0.d	$xr5, $xr6, 1
	xvinsve0.d	$xr5, $xr7, 2
	xvinsve0.d	$xr5, $xr8, 3
	xvfmul.d	$xr5, $xr5, $xr2
	fldx.d	$fa6, $s2, $a2
	fldx.d	$fa7, $s2, $a3
	fld.d	$ft0, $s2, 0
	fldx.d	$ft1, $s2, $a0
	xvfmul.d	$xr5, $xr5, $xr3
	xvinsve0.d	$xr6, $xr7, 1
	xvinsve0.d	$xr6, $xr8, 2
	xvinsve0.d	$xr6, $xr9, 3
	xvld	$xr7, $t7, 0
	xvfmul.d	$xr6, $xr6, $xr2
	xvfmul.d	$xr6, $xr6, $xr4
	xvfadd.d	$xr5, $xr5, $xr6
	xvfadd.d	$xr5, $xr7, $xr5
	xvst	$xr5, $t7, 0
	addi.d	$s3, $s3, -4
	addi.d	$t7, $t7, 32
	add.d	$t1, $t1, $a4
	add.d	$s2, $s2, $a4
	bnez	$s3, .LBB7_54
# %bb.55:                               # %middle.block185
                                        #   in Loop: Header=BB7_51 Depth=2
	move	$t7, $ra
	beq	$t2, $ra, .LBB7_50
.LBB7_56:                               # %scalar.ph172.preheader
                                        #   in Loop: Header=BB7_51 Depth=2
	slli.d	$t1, $t7, 3
	mul.d	$s2, $t7, $a0
	add.d	$t7, $s1, $s2
	add.d	$s2, $s5, $s2
	.p2align	4, , 16
.LBB7_57:                               # %scalar.ph172
                                        #   Parent Loop BB7_42 Depth=1
                                        #     Parent Loop BB7_51 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa3, $s2, 0
	fld.d	$fa4, $t6, 0
	fmul.d	$fa3, $fa3, $fa1
	fld.d	$fa5, $t7, 0
	fld.d	$fa6, $a1, 0
	fmul.d	$fa3, $fa3, $fa4
	fldx.d	$fa4, $fp, $t1
	fmul.d	$fa5, $fa5, $fa1
	fmul.d	$fa5, $fa5, $fa6
	fadd.d	$fa3, $fa3, $fa5
	fadd.d	$fa3, $fa4, $fa3
	fstx.d	$fa3, $fp, $t1
	addi.d	$t1, $t1, 8
	add.d	$s3, $t3, $t1
	add.d	$t7, $t7, $a0
	add.d	$s2, $s2, $a0
	bnez	$s3, .LBB7_57
	b	.LBB7_50
.LBB7_58:                               # %.preheader.i59.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_4)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_4)
	move	$a0, $zero
	move	$a2, $zero
	lu12i.w	$a1, -3
	ori	$a1, $a1, 2688
	ori	$a4, $zero, 1200
	.p2align	4, , 16
.LBB7_59:                               # %.preheader.i59
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_60 Depth 2
	move	$a3, $zero
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	add.d	$a5, $a5, $a0
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	add.d	$a6, $a6, $a0
	move	$a7, $a1
	.p2align	4, , 16
.LBB7_60:                               #   Parent Loop BB7_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	fldx.d	$fa1, $t0, $s4
	add.d	$t0, $a5, $a7
	fldx.d	$fa2, $t0, $s4
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_68
# %bb.61:                               # %.critedge.i
                                        #   in Loop: Header=BB7_60 Depth=2
	addi.d	$a7, $a7, 8
	addi.w	$a3, $a3, 1
	bnez	$a7, .LBB7_60
# %bb.62:                               #   in Loop: Header=BB7_59 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a0, $a0, $s4
	bne	$a2, $a4, .LBB7_59
# %bb.63:                               # %check_FP.exit
	lu12i.w	$fp, 4
	ori	$a0, $fp, 2817
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $fp, 2816
	stx.b	$zero, $s3, $a0
	addi.d	$s1, $s3, 7
	lu12i.w	$a0, -3
	ori	$s2, $a0, 2688
	ori	$s5, $zero, 3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s6, $a0, %got_pc_lo12(stderr)
	move	$s7, $zero
	move	$s8, $zero
	ori	$fp, $zero, 1200
.LBB7_64:                               # %.preheader.i63
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_65 Depth 2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s7
	move	$a1, $s1
	move	$a2, $s2
	.p2align	4, , 16
.LBB7_65:                               #   Parent Loop BB7_64 Depth=1
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
	bnez	$a2, .LBB7_65
# %bb.66:                               #   in Loop: Header=BB7_64 Depth=1
	ld.d	$a1, $s6, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, 1
	add.d	$s7, $s7, $s4
	bne	$s8, $fp, .LBB7_64
# %bb.67:                               # %print_array.exit
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB7_69
.LBB7_68:                               # %check_FP.exit.thread
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
.LBB7_69:
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
.LBB7_70:
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
