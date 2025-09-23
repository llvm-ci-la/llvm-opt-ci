	.file	"heat-3d.c"
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
	.dword	0x405e000000000000              # double 120
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	st.d	$zero, $sp, 144
	lu12i.w	$a1, 1
	lu12i.w	$a2, 3375
	addi.d	$a0, $sp, 144
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 144
	beqz	$fp, .LBB7_44
# %bb.1:
	bnez	$a0, .LBB7_44
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 144
	lu12i.w	$a1, 1
	lu12i.w	$a2, 3375
	addi.d	$a0, $sp, 144
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 144
	beqz	$s0, .LBB7_44
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_44
# %bb.4:                                # %polybench_alloc_data.exit12
	st.d	$zero, $sp, 144
	lu12i.w	$a1, 1
	lu12i.w	$a2, 3375
	addi.d	$a0, $sp, 144
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	beqz	$a1, .LBB7_44
# %bb.5:                                # %polybench_alloc_data.exit12
	bnez	$a0, .LBB7_44
# %bb.6:                                # %polybench_alloc_data.exit14
	move	$a0, $zero
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a2, $fp, $a7
	ori	$a3, $zero, 120
	ori	$a4, $zero, 31
	vldi	$vr0, -988
	pcalau12i	$a1, %pc_hi20(.LCPI7_1)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI7_1)
	ori	$a5, $zero, 960
	lu12i.w	$a1, 28
	ori	$s3, $a1, 512
	pcalau12i	$a6, %pc_hi20(.LCPI7_0)
	xvld	$xr2, $a6, %pc_lo12(.LCPI7_0)
	xvldi	$xr3, -988
	ori	$a6, $zero, 0
	lu32i.d	$a6, -131072
	lu52i.d	$a6, $a6, 1029
	xvreplgr2vr.d	$xr4, $a6
	ori	$a6, $zero, 120
	move	$t0, $fp
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_7:                                #   in Loop: Header=BB7_8 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$t0, $t0, $s3
	add.d	$a7, $a7, $s3
	addi.w	$a6, $a6, 1
	beq	$a0, $a3, .LBB7_15
.LBB7_8:                                # %.preheader24.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
                                        #       Child Loop BB7_14 Depth 3
                                        #       Child Loop BB7_12 Depth 3
	move	$t1, $zero
	addi.d	$t2, $a0, 120
	move	$t3, $a6
	move	$t4, $a7
	move	$t5, $t0
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_9:                                # %middle.block
                                        #   in Loop: Header=BB7_10 Depth=2
	addi.d	$t1, $t1, 1
	addi.d	$t5, $t5, 960
	addi.d	$t4, $t4, 960
	addi.w	$t3, $t3, 1
	beq	$t1, $a3, .LBB7_7
.LBB7_10:                               # %.preheader.i
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_14 Depth 3
                                        #       Child Loop BB7_12 Depth 3
	move	$t6, $zero
	bltu	$a4, $a2, .LBB7_13
# %bb.11:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_10 Depth=2
	move	$t7, $t3
	.p2align	4, , 16
.LBB7_12:                               # %scalar.ph
                                        #   Parent Loop BB7_8 Depth=1
                                        #     Parent Loop BB7_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa5, $t7
	ffint.d.w	$fa5, $fa5
	fmul.d	$fa5, $fa5, $fa0
	fdiv.d	$fa5, $fa5, $fa1
	fstx.d	$fa5, $t4, $t6
	fstx.d	$fa5, $t5, $t6
	addi.d	$t6, $t6, 8
	addi.w	$t7, $t7, -1
	bne	$t6, $a5, .LBB7_12
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_13:                               # %vector.ph
                                        #   in Loop: Header=BB7_10 Depth=2
	add.d	$t7, $t2, $t1
	xvreplgr2vr.d	$xr5, $t7
	xvori.b	$xr6, $xr2, 0
	.p2align	4, , 16
.LBB7_14:                               # %vector.body
                                        #   Parent Loop BB7_8 Depth=1
                                        #     Parent Loop BB7_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvsub.d	$xr7, $xr5, $xr6
	xvffint.d.l	$xr7, $xr7
	xvfmul.d	$xr7, $xr7, $xr3
	xvfdiv.d	$xr7, $xr7, $xr4
	xvstx	$xr7, $t4, $t6
	xvstx	$xr7, $t5, $t6
	addi.d	$t6, $t6, 32
	xvaddi.du	$xr6, $xr6, 4
	bne	$t6, $a5, .LBB7_14
	b	.LBB7_9
.LBB7_15:                               # %.preheader117.i.preheader
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a5, 56
	ori	$a0, $a5, 1992
	add.d	$a2, $fp, $a0
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	ori	$a6, $a1, 1480
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	add.d	$a3, $a2, $a6
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	ori	$a3, $a1, 520
	add.d	$a4, $fp, $a3
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	ori	$a4, $a1, 1472
	add.d	$a7, $a2, $a4
	st.d	$a7, $sp, 88                    # 8-byte Folded Spill
	ori	$a5, $a5, 1984
	add.d	$a7, $fp, $a5
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	ori	$a1, $a1, 1464
	add.d	$a7, $fp, $a1
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a6, $sp, 128                   # 8-byte Folded Spill
	add.d	$a0, $fp, $a6
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	add.d	$a0, $a2, $a3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	add.d	$a0, $fp, $a4
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $a2, $a5
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $a2, $a1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	lu12i.w	$a0, 84
	ori	$t7, $a0, 568
	vldi	$vr0, -896
	vldi	$vr1, -960
	ori	$t8, $zero, 952
	ori	$s2, $zero, 119
	xvldi	$xr2, -896
	xvldi	$xr3, -960
	ori	$s5, $zero, 928
	.p2align	4, , 16
.LBB7_16:                               # %.preheader117.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_17 Depth 2
                                        #       Child Loop BB7_18 Depth 3
                                        #         Child Loop BB7_20 Depth 4
                                        #         Child Loop BB7_23 Depth 4
                                        #     Child Loop BB7_27 Depth 2
                                        #       Child Loop BB7_28 Depth 3
                                        #         Child Loop BB7_30 Depth 4
                                        #         Child Loop BB7_33 Depth 4
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	move	$s7, $zero
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 88                    # 8-byte Folded Reload
	move	$t3, $fp
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 112                   # 8-byte Folded Reload
	ori	$s0, $zero, 1
	.p2align	4, , 16
.LBB7_17:                               # %.preheader115.i
                                        #   Parent Loop BB7_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_18 Depth 3
                                        #         Child Loop BB7_20 Depth 4
                                        #         Child Loop BB7_23 Depth 4
	mul.d	$a0, $s7, $s3
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	add.d	$a3, $a1, $a2
	lu12i.w	$a2, 56
	ori	$s6, $a2, 56
	add.d	$a1, $a1, $s6
	add.d	$a0, $fp, $a0
	addi.d	$a4, $a0, 968
	add.d	$a0, $a0, $t7
	sltu	$a0, $a3, $a0
	sltu	$a1, $a4, $a1
	and	$a6, $a0, $a1
	ori	$a7, $zero, 1
	move	$s8, $t0
	move	$ra, $t1
	move	$a5, $t2
	move	$s4, $t3
	move	$a4, $t4
	move	$a3, $t5
	move	$a1, $t6
	.p2align	4, , 16
.LBB7_18:                               # %.preheader113.i
                                        #   Parent Loop BB7_16 Depth=1
                                        #     Parent Loop BB7_17 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_20 Depth 4
                                        #         Child Loop BB7_23 Depth 4
	ori	$a0, $zero, 1
	bnez	$a6, .LBB7_22
# %bb.19:                               # %vector.body56.preheader
                                        #   in Loop: Header=BB7_18 Depth=3
	move	$a0, $zero
	.p2align	4, , 16
.LBB7_20:                               # %vector.body56
                                        #   Parent Loop BB7_16 Depth=1
                                        #     Parent Loop BB7_17 Depth=2
                                        #       Parent Loop BB7_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvldx	$xr4, $a1, $a0
	add.d	$s1, $a4, $a0
	xvld	$xr5, $s1, 960
	add.d	$a2, $s4, $a0
	xvld	$xr6, $a2, 968
	xvld	$xr7, $s1, 1920
	xvldx	$xr8, $a4, $a0
	xvfmadd.d	$xr4, $xr5, $xr2, $xr4
	xvfadd.d	$xr4, $xr4, $xr6
	xvfmadd.d	$xr6, $xr5, $xr2, $xr7
	xvfadd.d	$xr6, $xr6, $xr8
	xvld	$xr7, $s1, 968
	xvld	$xr8, $s1, 952
	xvfmul.d	$xr6, $xr6, $xr3
	xvfmadd.d	$xr4, $xr4, $xr3, $xr6
	xvfmadd.d	$xr6, $xr5, $xr2, $xr7
	xvfadd.d	$xr6, $xr6, $xr8
	xvfmadd.d	$xr4, $xr6, $xr3, $xr4
	xvfadd.d	$xr4, $xr5, $xr4
	xvstx	$xr4, $a3, $a0
	addi.d	$a0, $a0, 32
	bne	$a0, $s5, .LBB7_20
# %bb.21:                               #   in Loop: Header=BB7_18 Depth=3
	ori	$a0, $zero, 117
.LBB7_22:                               # %scalar.ph54.preheader
                                        #   in Loop: Header=BB7_18 Depth=3
	slli.d	$a0, $a0, 3
	.p2align	4, , 16
.LBB7_23:                               # %scalar.ph54
                                        #   Parent Loop BB7_16 Depth=1
                                        #     Parent Loop BB7_17 Depth=2
                                        #       Parent Loop BB7_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa4, $ra, $a0
	add.d	$a2, $s8, $a0
	fld.d	$fa5, $a2, 8
	add.d	$s1, $s4, $a0
	fld.d	$fa6, $s1, 960
	fld.d	$fa7, $a2, 968
	fld.d	$ft0, $a2, -952
	fmadd.d	$fa4, $fa5, $fa0, $fa4
	fadd.d	$fa4, $fa4, $fa6
	fmadd.d	$fa6, $fa5, $fa0, $fa7
	fadd.d	$fa6, $fa6, $ft0
	fld.d	$fa7, $a2, 16
	fldx.d	$ft0, $s8, $a0
	fmul.d	$fa6, $fa6, $fa1
	fmadd.d	$fa4, $fa4, $fa1, $fa6
	fmadd.d	$fa6, $fa5, $fa0, $fa7
	fadd.d	$fa6, $fa6, $ft0
	fmadd.d	$fa4, $fa6, $fa1, $fa4
	fadd.d	$fa4, $fa5, $fa4
	fstx.d	$fa4, $a5, $a0
	addi.d	$a0, $a0, 8
	bne	$a0, $t8, .LBB7_23
# %bb.24:                               #   in Loop: Header=BB7_18 Depth=3
	addi.d	$a7, $a7, 1
	addi.d	$a1, $a1, 960
	addi.d	$a3, $a3, 960
	addi.d	$a4, $a4, 960
	addi.d	$s4, $s4, 960
	addi.d	$a5, $a5, 960
	addi.d	$ra, $ra, 960
	addi.d	$s8, $s8, 960
	bne	$a7, $s2, .LBB7_18
# %bb.25:                               #   in Loop: Header=BB7_17 Depth=2
	addi.d	$s0, $s0, 1
	addi.d	$s7, $s7, 1
	add.d	$t6, $t6, $s3
	add.d	$t5, $t5, $s3
	add.d	$t4, $t4, $s3
	add.d	$t3, $t3, $s3
	add.d	$t2, $t2, $s3
	add.d	$t1, $t1, $s3
	add.d	$t0, $t0, $s3
	bne	$s0, $s2, .LBB7_17
# %bb.26:                               # %.preheader114.i.preheader
                                        #   in Loop: Header=BB7_16 Depth=1
	move	$s7, $zero
	ori	$s8, $zero, 1
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_27:                               # %.preheader114.i
                                        #   Parent Loop BB7_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_28 Depth 3
                                        #         Child Loop BB7_30 Depth 4
                                        #         Child Loop BB7_33 Depth 4
	mul.d	$a0, $s7, $s3
	add.d	$a2, $fp, $a0
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	add.d	$a6, $a2, $a6
	add.d	$a2, $a2, $s6
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	add.d	$a0, $a7, $a0
	addi.d	$a7, $a0, 968
	add.d	$a0, $a0, $t7
	sltu	$a0, $a6, $a0
	sltu	$a2, $a7, $a2
	and	$a6, $a0, $a2
	move	$a7, $ra
	move	$t0, $a5
	move	$t1, $s4
	move	$t2, $a4
	move	$t3, $a3
	move	$t4, $a1
	move	$t5, $s0
	ori	$t6, $zero, 1
	.p2align	4, , 16
.LBB7_28:                               # %.preheader.i18
                                        #   Parent Loop BB7_16 Depth=1
                                        #     Parent Loop BB7_27 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_30 Depth 4
                                        #         Child Loop BB7_33 Depth 4
	ori	$a0, $zero, 1
	bnez	$a6, .LBB7_32
# %bb.29:                               # %vector.body33.preheader
                                        #   in Loop: Header=BB7_28 Depth=3
	move	$a0, $zero
	.p2align	4, , 16
.LBB7_30:                               # %vector.body33
                                        #   Parent Loop BB7_16 Depth=1
                                        #     Parent Loop BB7_27 Depth=2
                                        #       Parent Loop BB7_28 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvldx	$xr4, $t5, $a0
	add.d	$a2, $t3, $a0
	xvld	$xr5, $a2, 960
	add.d	$s1, $t2, $a0
	xvld	$xr6, $s1, 968
	xvld	$xr7, $a2, 1920
	xvldx	$xr8, $t3, $a0
	xvfmadd.d	$xr4, $xr5, $xr2, $xr4
	xvfadd.d	$xr4, $xr4, $xr6
	xvfmadd.d	$xr6, $xr5, $xr2, $xr7
	xvfadd.d	$xr6, $xr6, $xr8
	xvld	$xr7, $a2, 968
	xvld	$xr8, $a2, 952
	xvfmul.d	$xr6, $xr6, $xr3
	xvfmadd.d	$xr4, $xr4, $xr3, $xr6
	xvfmadd.d	$xr6, $xr5, $xr2, $xr7
	xvfadd.d	$xr6, $xr6, $xr8
	xvfmadd.d	$xr4, $xr6, $xr3, $xr4
	xvfadd.d	$xr4, $xr5, $xr4
	xvstx	$xr4, $t4, $a0
	addi.d	$a0, $a0, 32
	bne	$a0, $s5, .LBB7_30
# %bb.31:                               #   in Loop: Header=BB7_28 Depth=3
	ori	$a0, $zero, 117
.LBB7_32:                               # %scalar.ph31.preheader
                                        #   in Loop: Header=BB7_28 Depth=3
	slli.d	$a0, $a0, 3
	.p2align	4, , 16
.LBB7_33:                               # %scalar.ph31
                                        #   Parent Loop BB7_16 Depth=1
                                        #     Parent Loop BB7_27 Depth=2
                                        #       Parent Loop BB7_28 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa4, $t0, $a0
	add.d	$a2, $a7, $a0
	fld.d	$fa5, $a2, 8
	add.d	$s1, $t2, $a0
	fld.d	$fa6, $s1, 960
	fld.d	$fa7, $a2, 968
	fld.d	$ft0, $a2, -952
	fmadd.d	$fa4, $fa5, $fa0, $fa4
	fadd.d	$fa4, $fa4, $fa6
	fmadd.d	$fa6, $fa5, $fa0, $fa7
	fadd.d	$fa6, $fa6, $ft0
	fld.d	$fa7, $a2, 16
	fldx.d	$ft0, $a7, $a0
	fmul.d	$fa6, $fa6, $fa1
	fmadd.d	$fa4, $fa4, $fa1, $fa6
	fmadd.d	$fa6, $fa5, $fa0, $fa7
	fadd.d	$fa6, $fa6, $ft0
	fmadd.d	$fa4, $fa6, $fa1, $fa4
	fadd.d	$fa4, $fa5, $fa4
	fstx.d	$fa4, $t1, $a0
	addi.d	$a0, $a0, 8
	bne	$a0, $t8, .LBB7_33
# %bb.34:                               #   in Loop: Header=BB7_28 Depth=3
	addi.d	$t6, $t6, 1
	addi.d	$t5, $t5, 960
	addi.d	$t4, $t4, 960
	addi.d	$t3, $t3, 960
	addi.d	$t2, $t2, 960
	addi.d	$t1, $t1, 960
	addi.d	$t0, $t0, 960
	addi.d	$a7, $a7, 960
	bne	$t6, $s2, .LBB7_28
# %bb.35:                               #   in Loop: Header=BB7_27 Depth=2
	addi.d	$s8, $s8, 1
	addi.d	$s7, $s7, 1
	add.d	$s0, $s0, $s3
	add.d	$a1, $a1, $s3
	add.d	$a3, $a3, $s3
	add.d	$a4, $a4, $s3
	add.d	$s4, $s4, $s3
	add.d	$a5, $a5, $s3
	add.d	$ra, $ra, $s3
	bne	$s8, $s2, .LBB7_27
# %bb.36:                               #   in Loop: Header=BB7_16 Depth=1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	ori	$a0, $zero, 501
	bne	$a1, $a0, .LBB7_16
# %bb.37:                               # %kernel_heat_3d.exit
	ori	$a0, $zero, 1921
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.b	$zero, $a0, 1920
	ori	$s0, $zero, 3
	ori	$s4, $zero, 1920
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s1, $a0, %got_pc_lo12(stderr)
	move	$s5, $zero
	move	$s7, $zero
	.p2align	4, , 16
.LBB7_38:                               # %.preheader22.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_39 Depth 2
                                        #       Child Loop BB7_40 Depth 3
	move	$s8, $zero
	move	$s6, $s5
.LBB7_39:                               # %.preheader.i19
                                        #   Parent Loop BB7_38 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_40 Depth 3
	move	$a0, $zero
	move	$a1, $s6
	.p2align	4, , 16
.LBB7_40:                               #   Parent Loop BB7_38 Depth=1
                                        #     Parent Loop BB7_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a2, $fp, $a1
	srli.d	$a3, $a2, 8
	srli.d	$a4, $a2, 16
	srli.d	$a5, $a2, 24
	srli.d	$a6, $a2, 32
	srli.d	$a7, $a2, 40
	srli.d	$t0, $a2, 48
	srli.d	$t1, $a2, 56
	bstrins.d	$a2, $s0, 63, 4
	add.d	$t2, $s2, $a0
	stx.b	$a2, $s2, $a0
	st.b	$a2, $t2, 1
	bstrins.d	$a3, $s0, 63, 4
	st.b	$a3, $t2, 2
	st.b	$a3, $t2, 3
	bstrins.d	$a4, $s0, 63, 4
	st.b	$a4, $t2, 4
	st.b	$a4, $t2, 5
	bstrins.d	$a5, $s0, 63, 4
	st.b	$a5, $t2, 6
	st.b	$a5, $t2, 7
	bstrins.d	$a6, $s0, 63, 4
	st.b	$a6, $t2, 8
	st.b	$a6, $t2, 9
	bstrins.d	$a7, $s0, 63, 4
	st.b	$a7, $t2, 10
	st.b	$a7, $t2, 11
	bstrins.d	$t0, $s0, 63, 4
	st.b	$t0, $t2, 12
	st.b	$t0, $t2, 13
	bstrins.d	$t1, $s0, 63, 4
	st.b	$t1, $t2, 14
	st.b	$t1, $t2, 15
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 8
	bne	$a0, $s4, .LBB7_40
# %bb.41:                               #   in Loop: Header=BB7_39 Depth=2
	ld.d	$a1, $s1, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, 1
	addi.d	$s6, $s6, 960
	ori	$a0, $zero, 120
	bne	$s8, $a0, .LBB7_39
# %bb.42:                               #   in Loop: Header=BB7_38 Depth=1
	addi.d	$s7, $s7, 1
	add.d	$s5, $s5, $s3
	ori	$a0, $zero, 120
	bne	$s7, $a0, .LBB7_38
# %bb.43:                               # %print_array.exit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB7_44:
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
