	.file	"gramschmidt.c"
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
	.dword	0x408f400000000000              # double 1000
.LCPI7_2:
	.dword	0x4059000000000000              # double 100
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
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	st.d	$zero, $sp, 136
	lu12i.w	$a0, 2343
	ori	$s2, $a0, 3072
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 136
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	beqz	$a1, .LBB7_35
# %bb.1:
	bnez	$a0, .LBB7_35
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 136
	lu12i.w	$a0, 2812
	ori	$s3, $a0, 2048
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 136
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	beqz	$a1, .LBB7_35
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_35
# %bb.4:                                # %polybench_alloc_data.exit18
	st.d	$zero, $sp, 136
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 136
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$t2, $sp, 136
	beqz	$t2, .LBB7_35
# %bb.5:                                # %polybench_alloc_data.exit18
	bnez	$a0, .LBB7_35
# %bb.6:                                # %polybench_alloc_data.exit20
	move	$t4, $zero
	move	$a1, $zero
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	sub.d	$a2, $t2, $t1
	ori	$a3, $zero, 31
	lu12i.w	$fp, -3
	ori	$a4, $fp, 2688
	lu12i.w	$a5, 67108
	ori	$a5, $a5, 3539
	ori	$a6, $zero, 1000
	pcalau12i	$a7, %pc_hi20(.LCPI7_1)
	fld.d	$fa0, $a7, %pc_lo12(.LCPI7_1)
	pcalau12i	$a7, %pc_hi20(.LCPI7_2)
	fld.d	$fa1, $a7, %pc_lo12(.LCPI7_2)
	vldi	$vr2, -988
	lu12i.w	$s0, 2
	ori	$s4, $s0, 1408
	pcalau12i	$a7, %pc_hi20(.LCPI7_0)
	xvld	$xr3, $a7, %pc_lo12(.LCPI7_0)
	vreplgr2vr.w	$vr4, $a5
	vreplgr2vr.w	$vr5, $a6
	ori	$a7, $zero, 0
	ori	$t0, $zero, 0
	lu32i.d	$t0, -49152
	lu52i.d	$t0, $t0, 1032
	xvreplgr2vr.d	$xr6, $t0
	ori	$t0, $zero, 0
	lu32i.d	$t0, -458752
	lu52i.d	$t0, $t0, 1029
	xvreplgr2vr.d	$xr7, $t0
	lu32i.d	$a7, 262144
	lu52i.d	$a7, $a7, 1026
	xvreplgr2vr.d	$xr8, $a7
	xvrepli.b	$xr9, 0
	move	$a7, $t1
	st.d	$t2, $sp, 88                    # 8-byte Folded Spill
	move	$t0, $t2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_7:                                # %middle.block
                                        #   in Loop: Header=BB7_8 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$t0, $t0, $s4
	add.d	$a7, $a7, $s4
	addi.d	$t4, $t4, 1
	beq	$a1, $a6, .LBB7_13
.LBB7_8:                                # %.preheader29.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
                                        #     Child Loop BB7_10 Depth 2
	bltu	$a3, $a2, .LBB7_11
# %bb.9:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_8 Depth=1
	move	$t1, $zero
	move	$t2, $a4
	.p2align	4, , 16
.LBB7_10:                               # %scalar.ph
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t3, $t1, 31, 0
	mul.d	$t3, $t3, $a5
	srli.d	$t3, $t3, 38
	mul.d	$t3, $t3, $a6
	sub.d	$t3, $t1, $t3
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$ft2, $t3
	ffint.d.l	$ft2, $ft2
	fdiv.d	$ft2, $ft2, $fa0
	fmul.d	$ft2, $ft2, $fa1
	fadd.d	$ft2, $ft2, $fa2
	add.d	$t3, $a7, $t2
	fstx.d	$ft2, $t3, $s4
	add.d	$t3, $t0, $t2
	stptr.d	$zero, $t3, 9600
	addi.d	$t2, $t2, 8
	add.w	$t1, $t1, $t4
	bnez	$t2, .LBB7_10
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_11:                               # %vector.ph
                                        #   in Loop: Header=BB7_8 Depth=1
	xvreplgr2vr.d	$xr10, $a1
	move	$t1, $a4
	xvori.b	$xr11, $xr3, 0
	.p2align	4, , 16
.LBB7_12:                               # %vector.body
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvmul.d	$xr12, $xr11, $xr10
	xvpickve2gr.d	$t2, $xr12, 0
	vinsgr2vr.w	$vr13, $t2, 0
	xvpickve2gr.d	$t2, $xr12, 1
	vinsgr2vr.w	$vr13, $t2, 1
	xvpickve2gr.d	$t2, $xr12, 2
	vinsgr2vr.w	$vr13, $t2, 2
	xvpickve2gr.d	$t2, $xr12, 3
	vinsgr2vr.w	$vr13, $t2, 3
	vmuh.wu	$vr12, $vr13, $vr4
	vsrli.w	$vr12, $vr12, 6
	vmsub.w	$vr13, $vr12, $vr5
	vext2xv.du.wu	$xr12, $xr13
	xvffint.d.lu	$xr12, $xr12
	xvfdiv.d	$xr12, $xr12, $xr6
	xvfmul.d	$xr12, $xr12, $xr7
	xvfadd.d	$xr12, $xr12, $xr8
	add.d	$t2, $a7, $t1
	xvstx	$xr12, $t2, $s4
	add.d	$t2, $t0, $t1
	xvstx	$xr9, $t2, $s4
	addi.d	$t1, $t1, 32
	xvaddi.du	$xr11, $xr11, 4
	bnez	$t1, .LBB7_12
	b	.LBB7_7
.LBB7_13:                               # %init_array.exit
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	move	$s5, $zero
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	add.d	$t6, $t3, $s2
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $t5, $s2
	add.d	$a1, $t4, $s3
	sltu	$a2, $t5, $t6
	sltu	$a3, $t3, $a0
	and	$a2, $a2, $a3
	sltu	$a1, $t5, $a1
	sltu	$a0, $t4, $a0
	and	$a0, $a1, $a0
	or	$t7, $a2, $a0
	addi.d	$t8, $t3, 8
	lu12i.w	$s7, 4
	ori	$a0, $s7, 2824
	add.d	$ra, $t3, $a0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	lu12i.w	$a0, 2341
	ori	$a0, $a0, 1672
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$a0, $s0, 1416
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	lu12i.w	$a0, -5
	ori	$s1, $a0, 1280
	ori	$s6, $fp, 2688
	lu12i.w	$a0, 7
	ori	$s0, $a0, 128
	lu12i.w	$a0, 9
	ori	$s3, $a0, 1536
	move	$s8, $t5
	move	$fp, $t3
	b	.LBB7_15
	.p2align	4, , 16
.LBB7_14:                               # %.loopexit.i
                                        #   in Loop: Header=BB7_15 Depth=1
	addi.d	$s5, $s5, 1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$fp, $fp, 8
	addi.d	$s8, $s8, 8
	addi.d	$t8, $t8, 8
	addi.d	$ra, $ra, 8
	ori	$a0, $zero, 1200
	beq	$s5, $a0, .LBB7_34
.LBB7_15:                               # %.preheader67.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
                                        #     Child Loop BB7_23 Depth 2
                                        #     Child Loop BB7_20 Depth 2
                                        #     Child Loop BB7_27 Depth 2
                                        #       Child Loop BB7_28 Depth 3
                                        #       Child Loop BB7_33 Depth 3
                                        #       Child Loop BB7_31 Depth 3
	alsl.d	$a0, $s5, $t3, 3
	addi.d	$a6, $a0, 8
	alsl.d	$a7, $s5, $t5, 3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.d	$t1, $a7, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	mul.d	$a0, $s5, $a0
	add.d	$a0, $t4, $a0
	addi.d	$t0, $a0, 8
	mul.d	$a0, $s5, $s4
	add.d	$s2, $t4, $a0
	add.d	$t2, $s2, $s4
	ori	$a0, $zero, 1000
	move	$a1, $fp
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB7_16:                               #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a0, $a0, -1
	add.d	$a1, $a1, $s4
	bnez	$a0, .LBB7_16
# %bb.17:                               # %vector.memcheck44
                                        #   in Loop: Header=BB7_15 Depth=1
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB7_21
# %bb.18:                               # %vector.memcheck44.split
                                        #   in Loop: Header=BB7_15 Depth=1
	alsl.d	$a0, $s5, $s2, 3
	slli.d	$a1, $s5, 3
	fstx.d	$fa1, $s2, $a1
	beqz	$t7, .LBB7_22
.LBB7_19:                               # %scalar.ph54.preheader
                                        #   in Loop: Header=BB7_15 Depth=1
	move	$a1, $zero
	ori	$a2, $zero, 1000
	.p2align	4, , 16
.LBB7_20:                               # %scalar.ph54
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa0, $fp, $a1
	fld.d	$fa1, $a0, 0
	fdiv.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s8, $a1
	addi.d	$a2, $a2, -1
	add.d	$a1, $a1, $s4
	bnez	$a2, .LBB7_20
	b	.LBB7_24
.LBB7_21:                               # %call.sqrt
                                        #   in Loop: Header=BB7_15 Depth=1
	st.d	$t6, $sp, 80                    # 8-byte Folded Spill
	st.d	$t7, $sp, 72                    # 8-byte Folded Spill
	st.d	$t8, $sp, 64                    # 8-byte Folded Spill
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	st.d	$t0, $sp, 32                    # 8-byte Folded Spill
	st.d	$t1, $sp, 24                    # 8-byte Folded Spill
	st.d	$t2, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$t2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	fmov.d	$fa1, $fa0
	alsl.d	$a0, $s5, $s2, 3
	slli.d	$a1, $s5, 3
	fstx.d	$fa1, $s2, $a1
	bnez	$t7, .LBB7_19
	.p2align	4, , 16
.LBB7_22:                               # %vector.body56.preheader
                                        #   in Loop: Header=BB7_15 Depth=1
	xvldrepl.d	$xr0, $a0, 0
	ori	$a0, $s7, 2816
	ori	$a1, $zero, 1000
	.p2align	4, , 16
.LBB7_23:                               # %vector.body56
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $fp, $a0
	fldx.d	$fa1, $a2, $s1
	fldx.d	$fa2, $a2, $s6
	fldx.d	$fa3, $fp, $a0
	fldx.d	$fa4, $a2, $s4
	xvinsve0.d	$xr1, $xr2, 1
	xvinsve0.d	$xr1, $xr3, 2
	xvinsve0.d	$xr1, $xr4, 3
	xvfdiv.d	$xr1, $xr1, $xr0
	add.d	$a2, $s8, $a0
	add.d	$a3, $a2, $s1
	add.d	$a4, $a2, $s6
	add.d	$a5, $a2, $s4
	xvstelm.d	$xr1, $a3, 0, 0
	xvstelm.d	$xr1, $a4, 0, 1
	xvstelm.d	$xr1, $a2, 0, 2
	xvstelm.d	$xr1, $a5, 0, 3
	addi.d	$a1, $a1, -4
	add.d	$a0, $a0, $s3
	bnez	$a1, .LBB7_23
.LBB7_24:                               # %middle.block61
                                        #   in Loop: Header=BB7_15 Depth=1
	ori	$a0, $zero, 1198
	bltu	$a0, $s5, .LBB7_14
# %bb.25:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB7_15 Depth=1
	sltu	$a0, $a6, $t1
	sltu	$a1, $a7, $t6
	and	$a0, $a0, $a1
	sltu	$a1, $a6, $t2
	sltu	$a2, $t0, $t6
	and	$a1, $a1, $a2
	or	$a0, $a0, $a1
	move	$a1, $ra
	move	$a2, $t8
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	b	.LBB7_27
	.p2align	4, , 16
.LBB7_26:                               # %middle.block42
                                        #   in Loop: Header=BB7_27 Depth=2
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	ori	$a4, $zero, 1200
	beq	$a3, $a4, .LBB7_14
.LBB7_27:                               # %.lr.ph.i
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_28 Depth 3
                                        #       Child Loop BB7_33 Depth 3
                                        #       Child Loop BB7_31 Depth 3
	move	$a5, $zero
	alsl.d	$a4, $a3, $s2, 3
	slli.d	$a6, $a3, 3
	stx.d	$zero, $s2, $a6
	ori	$a6, $zero, 1000
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB7_28:                               #   Parent Loop BB7_15 Depth=1
                                        #     Parent Loop BB7_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s8, $a5
	fldx.d	$fa2, $a2, $a5
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a4, 0
	addi.d	$a6, $a6, -1
	add.d	$a5, $a5, $s4
	bnez	$a6, .LBB7_28
# %bb.29:                               # %vector.memcheck26
                                        #   in Loop: Header=BB7_27 Depth=2
	beqz	$a0, .LBB7_32
# %bb.30:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB7_27 Depth=2
	move	$a5, $zero
	ori	$a6, $zero, 1000
	.p2align	4, , 16
.LBB7_31:                               # %.preheader.i
                                        #   Parent Loop BB7_15 Depth=1
                                        #     Parent Loop BB7_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa0, $s8, $a5
	fld.d	$fa1, $a4, 0
	fldx.d	$fa2, $a2, $a5
	fmul.d	$fa0, $fa0, $fa1
	fsub.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a2, $a5
	addi.d	$a6, $a6, -1
	add.d	$a5, $a5, $s4
	bnez	$a6, .LBB7_31
	b	.LBB7_26
	.p2align	4, , 16
.LBB7_32:                               # %vector.body37.preheader
                                        #   in Loop: Header=BB7_27 Depth=2
	xvldrepl.d	$xr0, $a4, 0
	move	$a4, $zero
	ori	$a5, $zero, 1000
	.p2align	4, , 16
.LBB7_33:                               # %vector.body37
                                        #   Parent Loop BB7_15 Depth=1
                                        #     Parent Loop BB7_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a6, $a1, $a4
	add.d	$a7, $a6, $s1
	fldx.d	$fa1, $a6, $s1
	fldx.d	$fa2, $a6, $s6
	fldx.d	$fa3, $a1, $a4
	fldx.d	$fa4, $a6, $s4
	add.d	$t0, $a6, $s6
	xvinsve0.d	$xr1, $xr2, 1
	xvinsve0.d	$xr1, $xr3, 2
	xvinsve0.d	$xr1, $xr4, 3
	add.d	$t1, $s8, $a4
	fldx.d	$fa2, $s8, $a4
	fldx.d	$fa3, $t1, $s4
	ori	$t2, $s7, 2816
	fldx.d	$fa4, $t1, $t2
	fldx.d	$fa5, $t1, $s0
	add.d	$t1, $a6, $s4
	xvinsve0.d	$xr2, $xr3, 1
	xvinsve0.d	$xr2, $xr4, 2
	xvinsve0.d	$xr2, $xr5, 3
	xvfmul.d	$xr2, $xr2, $xr0
	xvfsub.d	$xr1, $xr1, $xr2
	xvstelm.d	$xr1, $a7, 0, 0
	xvstelm.d	$xr1, $t0, 0, 1
	xvstelm.d	$xr1, $a6, 0, 2
	xvstelm.d	$xr1, $t1, 0, 3
	addi.d	$a5, $a5, -4
	add.d	$a4, $a4, $s3
	bnez	$a5, .LBB7_33
	b	.LBB7_26
.LBB7_34:                               # %kernel_gramschmidt.exit
	move	$a0, $t4
	move	$a1, $t5
	move	$fp, $t3
	move	$s0, $t4
	move	$s1, $t5
	pcaddu18i	$ra, %call36(print_array)
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
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
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
.LBB7_35:
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
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s2, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$a2, $a2, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -3
	ori	$a0, $a0, 2688
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, -209716
	ori	$a0, $a0, 3277
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s1, $a0, %pc_lo12(.L.str.6)
	move	$s4, $zero
	move	$s3, $zero
	move	$s5, $zero
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1408
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB8_1:                                # %.preheader1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_2 Depth 2
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	move	$s7, $s4
	move	$s8, $s3
.LBB8_2:                                #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a0, $s7, 31, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 36
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 2
	add.w	$a0, $s8, $a0
	bnez	$a0, .LBB8_4
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=2
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB8_4:                                #   in Loop: Header=BB8_2 Depth=2
	ld.d	$a0, $s2, 0
	add.d	$a1, $s0, $s6
	ldptr.d	$a2, $a1, 9600
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, -1
	addi.d	$s6, $s6, 8
	addi.w	$s7, $s7, 1
	bnez	$s6, .LBB8_2
# %bb.5:                                #   in Loop: Header=BB8_1 Depth=1
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, -1200
	addi.w	$s4, $s4, 1200
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$s0, $s0, $a0
	ori	$a0, $zero, 1200
	bne	$s5, $a0, .LBB8_1
# %bb.6:
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$a2, $a2, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -3
	ori	$s8, $a0, 2688
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s0, $a0, %pc_lo12(.L.str.6)
	move	$s5, $zero
	move	$s6, $zero
	move	$s7, $zero
	.p2align	4, , 16
.LBB8_7:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_8 Depth 2
	move	$s1, $s8
	move	$s4, $s5
	move	$s3, $s6
.LBB8_8:                                #   Parent Loop BB8_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a0, $s4, 31, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 36
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 2
	add.w	$a0, $s3, $a0
	bnez	$a0, .LBB8_10
# %bb.9:                                #   in Loop: Header=BB8_8 Depth=2
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB8_10:                               #   in Loop: Header=BB8_8 Depth=2
	ld.d	$a0, $s2, 0
	add.d	$a1, $fp, $s1
	ldptr.d	$a2, $a1, 9600
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 8
	addi.w	$s4, $s4, 1
	bnez	$s1, .LBB8_8
# %bb.11:                               #   in Loop: Header=BB8_7 Depth=1
	addi.d	$s7, $s7, 1
	addi.d	$s6, $s6, -1200
	addi.w	$s5, $s5, 1200
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$fp, $fp, $a0
	ori	$a0, $zero, 1000
	bne	$s7, $a0, .LBB8_7
# %bb.12:
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
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
	.asciz	"==BEGIN DUMP_ARRAYS==\n"
	.size	.L.str.2, 23

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"begin dump: %s"
	.size	.L.str.3, 15

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"R"
	.size	.L.str.4, 2

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%0.2lf "
	.size	.L.str.6, 8

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"\nend   dump: %s\n"
	.size	.L.str.7, 17

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Q"
	.size	.L.str.8, 2

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"==END   DUMP_ARRAYS==\n"
	.size	.L.str.9, 23

	.section	".note.GNU-stack","",@progbits
	.addrsig
