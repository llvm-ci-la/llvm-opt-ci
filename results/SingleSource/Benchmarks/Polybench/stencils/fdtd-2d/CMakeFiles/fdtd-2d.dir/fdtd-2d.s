	.file	"fdtd-2d.c"
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI7_1:
	.dword	0x408f400000000000              # double 1000
.LCPI7_2:
	.dword	0x4092c00000000000              # double 1200
.LCPI7_3:
	.dword	0xbfe6666666666666              # double -0.69999999999999996
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	st.d	$zero, $sp, 128
	lu12i.w	$s6, 2343
	ori	$s2, $s6, 3072
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 128
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 128
	beqz	$fp, .LBB7_93
# %bb.1:
	bnez	$a0, .LBB7_93
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 128
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 128
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	beqz	$a1, .LBB7_93
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_93
# %bb.4:                                # %polybench_alloc_data.exit40
	st.d	$zero, $sp, 128
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 128
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 128
	beqz	$s1, .LBB7_93
# %bb.5:                                # %polybench_alloc_data.exit40
	bnez	$a0, .LBB7_93
# %bb.6:                                # %polybench_alloc_data.exit42
	st.d	$zero, $sp, 128
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 128
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 128
	beqz	$s5, .LBB7_93
# %bb.7:                                # %polybench_alloc_data.exit42
	bnez	$a0, .LBB7_93
# %bb.8:                                # %polybench_alloc_data.exit44
	st.d	$zero, $sp, 128
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 128
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 128
	beqz	$s3, .LBB7_93
# %bb.9:                                # %polybench_alloc_data.exit44
	bnez	$a0, .LBB7_93
# %bb.10:                               # %polybench_alloc_data.exit46
	st.d	$zero, $sp, 128
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 128
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 128
	beqz	$s7, .LBB7_93
# %bb.11:                               # %polybench_alloc_data.exit46
	bnez	$a0, .LBB7_93
# %bb.12:                               # %polybench_alloc_data.exit48
	st.d	$zero, $sp, 128
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 128
	ori	$a2, $zero, 4000
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 128
	beqz	$s0, .LBB7_93
# %bb.13:                               # %polybench_alloc_data.exit48
	bnez	$a0, .LBB7_93
# %bb.14:                               # %polybench_alloc_data.exit50
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr0, $a0
	lu12i.w	$a0, -1
	ori	$a0, $a0, 96
	ori	$a1, $zero, 4000
	ori	$a2, $zero, 4016
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr1, $vr0, 2
	vpickve2gr.w	$a3, $vr0, 1
	bstrpick.d	$a3, $a3, 31, 0
	movgr2fr.d	$fa2, $a3
	ffint.d.l	$fa2, $fa2
	vpickve2gr.w	$a3, $vr0, 0
	bstrpick.d	$a3, $a3, 31, 0
	movgr2fr.d	$fa3, $a3
	ffint.d.l	$fa3, $fa3
	vextrins.d	$vr3, $vr2, 16
	vpickve2gr.w	$a3, $vr1, 1
	bstrpick.d	$a3, $a3, 31, 0
	movgr2fr.d	$fa2, $a3
	ffint.d.l	$fa2, $fa2
	vpickve2gr.w	$a3, $vr1, 0
	bstrpick.d	$a3, $a3, 31, 0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	vextrins.d	$vr1, $vr2, 16
	add.d	$a3, $s0, $a0
	vstx	$vr3, $a3, $a1
	vstx	$vr1, $a3, $a2
	addi.d	$a0, $a0, 32
	vaddi.wu	$vr0, $vr0, 4
	bnez	$a0, .LBB7_15
# %bb.16:                               # %.preheader.i.preheader
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	sub.d	$a0, $t1, $fp
	sub.d	$a5, $s1, $fp
	sub.d	$a6, $s1, $t1
	sltui	$a0, $a0, 16
	sltui	$a5, $a5, 16
	or	$a0, $a0, $a5
	sltui	$a5, $a6, 16
	or	$a5, $a0, $a5
	lu12i.w	$a0, -3
	ori	$a6, $a0, 2688
	pcalau12i	$a0, %pc_hi20(.LCPI7_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI7_1)
	pcalau12i	$a0, %pc_hi20(.LCPI7_2)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI7_2)
	lu12i.w	$a0, 2
	ori	$s8, $a0, 1408
	ori	$a7, $zero, 1000
	move	$t0, $fp
	move	$t2, $s1
	pcalau12i	$t8, %pc_hi20(.LCPI7_0)
	b	.LBB7_18
	.p2align	4, , 16
.LBB7_17:                               # %middle.block115
                                        #   in Loop: Header=BB7_18 Depth=1
	addi.d	$a4, $a4, 1
	add.d	$t2, $t2, $s8
	add.d	$t1, $t1, $s8
	add.d	$t0, $t0, $s8
	addi.w	$a3, $a3, 3
	addi.d	$a2, $a2, 1
	addi.w	$a1, $a1, 2
	beq	$a4, $a7, .LBB7_23
.LBB7_18:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_22 Depth 2
                                        #     Child Loop BB7_20 Depth 2
	beqz	$a5, .LBB7_21
# %bb.19:                               # %scalar.ph108.preheader
                                        #   in Loop: Header=BB7_18 Depth=1
	move	$t4, $zero
	move	$t3, $a6
	.p2align	4, , 16
.LBB7_20:                               # %scalar.ph108
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t5, $a1, $t4
	add.d	$t6, $a3, $t4
	add.w	$t4, $a2, $t4
	bstrpick.d	$t7, $t4, 31, 0
	movgr2fr.d	$fa0, $t7
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fa1
	add.d	$t7, $t0, $t3
	fstx.d	$fa0, $t7, $s8
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa0, $t5
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fa2
	add.d	$t5, $t1, $t3
	fstx.d	$fa0, $t5, $s8
	bstrpick.d	$t5, $t6, 31, 0
	movgr2fr.d	$fa0, $t5
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fa1
	add.d	$t5, $t2, $t3
	addi.d	$t3, $t3, 8
	fstx.d	$fa0, $t5, $s8
	bnez	$t3, .LBB7_20
	b	.LBB7_17
	.p2align	4, , 16
.LBB7_21:                               # %vector.ph109
                                        #   in Loop: Header=BB7_18 Depth=1
	vld	$vr3, $t8, %pc_lo12(.LCPI7_0)
	vreplgr2vr.d	$vr0, $a4
	lu12i.w	$t3, -3
	ori	$t3, $t3, 2688
	.p2align	4, , 16
.LBB7_22:                               # %vector.body110
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr4, $vr3, 1
	vmul.d	$vr4, $vr4, $vr0
	vffint.d.lu	$vr4, $vr4
	ori	$t4, $zero, 0
	lu32i.d	$t4, -49152
	lu52i.d	$t4, $t4, 1032
	vreplgr2vr.d	$vr5, $t4
	vfdiv.d	$vr4, $vr4, $vr5
	add.d	$t4, $t0, $t3
	vstx	$vr4, $t4, $s8
	vaddi.du	$vr4, $vr3, 3
	vaddi.du	$vr3, $vr3, 2
	vmul.d	$vr6, $vr3, $vr0
	vffint.d.lu	$vr6, $vr6
	ori	$t4, $zero, 0
	lu32i.d	$t4, 180224
	lu52i.d	$t4, $t4, 1033
	vreplgr2vr.d	$vr7, $t4
	vfdiv.d	$vr6, $vr6, $vr7
	add.d	$t4, $t1, $t3
	vstx	$vr6, $t4, $s8
	vmul.d	$vr4, $vr4, $vr0
	vffint.d.lu	$vr4, $vr4
	vfdiv.d	$vr4, $vr4, $vr5
	add.d	$t4, $t2, $t3
	addi.d	$t3, $t3, 16
	vstx	$vr4, $t4, $s8
	bnez	$t3, .LBB7_22
	b	.LBB7_17
.LBB7_23:                               # %.preheader80.i.preheader
	st.d	$t8, $sp, 40                    # 8-byte Folded Spill
	move	$t1, $zero
	lu12i.w	$a1, 2341
	ori	$a2, $a1, 1656
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	add.d	$a2, $s1, $a2
	ori	$a1, $a1, 1664
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	add.d	$a1, $fp, $a1
	ori	$a3, $s6, 3064
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	add.d	$a3, $t4, $a3
	addi.d	$a4, $fp, 8
	add.d	$a5, $fp, $s2
	add.d	$a6, $s1, $s2
	add.d	$a7, $t4, $s8
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	add.d	$t0, $t4, $s2
	sltu	$a7, $a7, $a6
	sltu	$t0, $s1, $t0
	and	$t5, $a7, $t0
	sltu	$a4, $a4, $a6
	sltu	$a5, $s1, $a5
	and	$t6, $a4, $a5
	sltu	$a1, $s1, $a1
	sltu	$a4, $fp, $a2
	and	$a1, $a1, $a4
	sltu	$a3, $s1, $a3
	sltu	$a2, $t4, $a2
	and	$a2, $a3, $a2
	or	$t7, $a1, $a2
	ori	$a1, $a0, 1424
	add.d	$a2, $t4, $a1
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	add.d	$a2, $s1, $a1
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a2, $fp, 24
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a2, $s1, 24
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a2, $s1, 16
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a2, $fp, 16
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a2, -3
	ori	$a2, $a2, 2688
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a2, 4
	ori	$s6, $a2, 2816
	vldi	$vr4, -800
	ori	$s2, $zero, 1000
	ori	$t8, $zero, 999
	lu12i.w	$a3, 419430
	ori	$a3, $a3, 1638
	lu32i.d	$a3, 419430
	lu52i.d	$a3, $a3, -1026
	vreplgr2vr.d	$vr0, $a3
	lu52i.d	$a3, $zero, -1026
	vreplgr2vr.d	$vr5, $a3
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB7_24:                               # %vector.ph179
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_25 Depth 2
                                        #     Child Loop BB7_28 Depth 2
                                        #       Child Loop BB7_30 Depth 3
                                        #       Child Loop BB7_29 Depth 3
                                        #     Child Loop BB7_32 Depth 2
                                        #       Child Loop BB7_34 Depth 3
                                        #       Child Loop BB7_37 Depth 3
                                        #     Child Loop BB7_40 Depth 2
                                        #       Child Loop BB7_43 Depth 3
                                        #       Child Loop BB7_46 Depth 3
	alsl.d	$a3, $t1, $s0, 3
	vldrepl.d	$vr3, $a3, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_25:                               # %vector.body182
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a4, $t4, $a3
	vstx	$vr3, $a4, $s8
	addi.d	$a3, $a3, 32
	vstx	$vr3, $a4, $a1
	bnez	$a3, .LBB7_25
# %bb.26:                               # %.preheader76.i.preheader
                                        #   in Loop: Header=BB7_24 Depth=1
	st.d	$t1, $sp, 104                   # 8-byte Folded Spill
	ori	$a4, $zero, 1
	move	$a5, $t4
	move	$a6, $s1
	ld.d	$t0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 96                    # 8-byte Folded Reload
	b	.LBB7_28
	.p2align	4, , 16
.LBB7_27:                               # %middle.block176
                                        #   in Loop: Header=BB7_28 Depth=2
	addi.d	$a4, $a4, 1
	add.d	$t2, $t2, $s8
	add.d	$t0, $t0, $s8
	add.d	$a6, $a6, $s8
	add.d	$a5, $a5, $s8
	beq	$a4, $s2, .LBB7_31
.LBB7_28:                               # %.preheader76.i
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_30 Depth 3
                                        #       Child Loop BB7_29 Depth 3
	ori	$a3, $a0, 1392
	lu12i.w	$a7, -3
	ori	$t1, $a7, 2688
	beqz	$t5, .LBB7_30
	.p2align	4, , 16
.LBB7_29:                               # %scalar.ph165
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t3, $a5, $t1
	add.d	$s0, $a6, $t1
	fldx.d	$fa3, $s0, $s6
	fldx.d	$fa6, $s0, $s8
	fldx.d	$fa7, $t3, $s6
	fsub.d	$fa3, $fa3, $fa6
	fmadd.d	$fa3, $fa3, $fa4, $fa7
	addi.d	$t1, $t1, 8
	fstx.d	$fa3, $t3, $s6
	bnez	$t1, .LBB7_29
	b	.LBB7_27
	.p2align	4, , 16
.LBB7_30:                               # %vector.body167
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t3, $t2, $t1
	add.d	$s0, $t0, $t1
	vldx	$vr3, $s0, $a3
	vldx	$vr6, $s0, $s8
	vld	$vr7, $s0, -16
	vldx	$vr8, $t0, $t1
	vldx	$vr9, $t3, $a3
	vldx	$vr10, $t3, $s8
	vfsub.d	$vr3, $vr3, $vr7
	vfsub.d	$vr6, $vr6, $vr8
	vfmadd.d	$vr3, $vr3, $vr5, $vr9
	vfmadd.d	$vr6, $vr6, $vr5, $vr10
	vstx	$vr3, $t3, $a3
	addi.d	$t1, $t1, 32
	vstx	$vr6, $t3, $s8
	bnez	$t1, .LBB7_30
	b	.LBB7_27
	.p2align	4, , 16
.LBB7_31:                               # %.preheader75.i.preheader
                                        #   in Loop: Header=BB7_24 Depth=1
	move	$t0, $zero
	move	$t2, $zero
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_32:                               # %.preheader75.i
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_34 Depth 3
                                        #       Child Loop BB7_37 Depth 3
	ori	$s4, $zero, 1
	ori	$a4, $a0, 1360
	ori	$a5, $a0, 1376
	ori	$a6, $a0, 1368
	bnez	$t6, .LBB7_36
# %bb.33:                               # %vector.body148.preheader
                                        #   in Loop: Header=BB7_32 Depth=2
	lu12i.w	$a7, -3
	ori	$t1, $a7, 2720
	.p2align	4, , 16
.LBB7_34:                               # %vector.body148
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s4, $s0, $t1
	add.d	$ra, $t3, $t1
	vldx	$vr3, $ra, $a4
	vldx	$vr6, $ra, $a5
	ori	$a7, $a0, 1352
	vldx	$vr7, $ra, $a7
	vldx	$vr8, $ra, $a6
	vldx	$vr9, $s4, $a4
	vldx	$vr10, $s4, $a5
	vfsub.d	$vr3, $vr3, $vr7
	vfsub.d	$vr6, $vr6, $vr8
	vfmadd.d	$vr3, $vr3, $vr5, $vr9
	vfmadd.d	$vr6, $vr6, $vr5, $vr10
	vstx	$vr3, $s4, $a4
	addi.d	$t1, $t1, 32
	vstx	$vr6, $s4, $a5
	bnez	$t1, .LBB7_34
# %bb.35:                               #   in Loop: Header=BB7_32 Depth=2
	ori	$s4, $zero, 1197
.LBB7_36:                               # %scalar.ph146.preheader
                                        #   in Loop: Header=BB7_32 Depth=2
	addi.d	$t1, $s4, -1200
	alsl.d	$s4, $s4, $t0, 3
	.p2align	4, , 16
.LBB7_37:                               # %scalar.ph146
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a7, $s1, $s4
	fldx.d	$fa3, $s1, $s4
	fld.d	$fa6, $a7, -8
	fldx.d	$fa7, $fp, $s4
	fsub.d	$fa3, $fa3, $fa6
	fmadd.d	$fa3, $fa3, $fa4, $fa7
	fstx.d	$fa3, $fp, $s4
	addi.d	$t1, $t1, 1
	addi.d	$s4, $s4, 8
	bnez	$t1, .LBB7_37
# %bb.38:                               #   in Loop: Header=BB7_32 Depth=2
	addi.d	$t2, $t2, 1
	add.d	$s0, $s0, $s8
	add.d	$t3, $t3, $s8
	add.d	$t0, $t0, $s8
	bne	$t2, $s2, .LBB7_32
# %bb.39:                               # %.preheader.i54.preheader
                                        #   in Loop: Header=BB7_24 Depth=1
	move	$ra, $zero
	move	$t0, $zero
	move	$s0, $t4
	ld.d	$t3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_40:                               # %.preheader.i54
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_43 Depth 3
                                        #       Child Loop BB7_46 Depth 3
	beqz	$t7, .LBB7_42
# %bb.41:                               #   in Loop: Header=BB7_40 Depth=2
	move	$t1, $zero
	b	.LBB7_45
	.p2align	4, , 16
.LBB7_42:                               # %vector.body125.preheader
                                        #   in Loop: Header=BB7_40 Depth=2
	lu12i.w	$a7, -3
	ori	$s4, $a7, 2720
	.p2align	4, , 16
.LBB7_43:                               # %vector.body125
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a7, $t2, $s4
	vldx	$vr3, $a7, $a4
	add.d	$t1, $t3, $s4
	vldx	$vr6, $t1, $a6
	vldx	$vr7, $t1, $a4
	ori	$t4, $a0, 1384
	vldx	$vr8, $t1, $t4
	vldx	$vr9, $t1, $a5
	vfsub.d	$vr6, $vr6, $vr7
	add.d	$t1, $s0, $s4
	ori	$t4, $a2, 2784
	vldx	$vr7, $t1, $t4
	vfsub.d	$vr8, $vr8, $vr9
	ori	$t4, $a2, 2800
	vldx	$vr9, $t1, $t4
	vfadd.d	$vr6, $vr6, $vr7
	vldx	$vr7, $t1, $a5
	vldx	$vr10, $t1, $a3
	vfadd.d	$vr8, $vr8, $vr9
	vldx	$vr9, $a7, $a5
	vfsub.d	$vr6, $vr6, $vr7
	vfsub.d	$vr7, $vr8, $vr10
	vfmadd.d	$vr3, $vr6, $vr0, $vr3
	vfmadd.d	$vr6, $vr7, $vr0, $vr9
	vstx	$vr3, $a7, $a4
	addi.d	$s4, $s4, 32
	vstx	$vr6, $a7, $a5
	bnez	$s4, .LBB7_43
# %bb.44:                               #   in Loop: Header=BB7_40 Depth=2
	ori	$t1, $zero, 1196
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
.LBB7_45:                               # %scalar.ph123.preheader
                                        #   in Loop: Header=BB7_40 Depth=2
	alsl.d	$s4, $t1, $ra, 3
	addi.d	$t1, $t1, -1199
	.p2align	4, , 16
.LBB7_46:                               # %scalar.ph123
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa6, $s1, $s4
	add.d	$a7, $fp, $s4
	fld.d	$fa7, $a7, 8
	fldx.d	$ft0, $fp, $s4
	add.d	$a7, $t4, $s4
	fldx.d	$ft1, $a7, $s8
	fldx.d	$ft2, $t4, $s4
	pcalau12i	$a7, %pc_hi20(.LCPI7_3)
	fld.d	$fa3, $a7, %pc_lo12(.LCPI7_3)
	fsub.d	$fa7, $fa7, $ft0
	fadd.d	$fa7, $fa7, $ft1
	fsub.d	$fa7, $fa7, $ft2
	fmadd.d	$fa6, $fa7, $fa3, $fa6
	fstx.d	$fa6, $s1, $s4
	addi.d	$t1, $t1, 1
	addi.d	$s4, $s4, 8
	bnez	$t1, .LBB7_46
# %bb.47:                               #   in Loop: Header=BB7_40 Depth=2
	addi.d	$t0, $t0, 1
	add.d	$t2, $t2, $s8
	add.d	$t3, $t3, $s8
	add.d	$s0, $s0, $s8
	add.d	$ra, $ra, $s8
	bne	$t0, $t8, .LBB7_40
# %bb.48:                               #   in Loop: Header=BB7_24 Depth=1
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	addi.d	$t1, $t1, 1
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ori	$a7, $zero, 500
	bne	$t1, $a7, .LBB7_24
# %bb.49:                               # %vector.body188.preheader
	ori	$a7, $zero, 0
	lu32i.d	$a7, 1
	vreplgr2vr.d	$vr4, $a7
	lu12i.w	$a7, -1
	ori	$a7, $a7, 96
	ori	$t0, $zero, 4000
	ori	$t1, $zero, 4016
	.p2align	4, , 16
.LBB7_50:                               # %vector.body188
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr5, $vr4, 2
	vpickve2gr.w	$t2, $vr4, 1
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa6, $t2
	ffint.d.l	$fa6, $fa6
	vpickve2gr.w	$t2, $vr4, 0
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa7, $t2
	ffint.d.l	$fa7, $fa7
	vextrins.d	$vr7, $vr6, 16
	vpickve2gr.w	$t2, $vr5, 1
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa6, $t2
	ffint.d.l	$fa6, $fa6
	vpickve2gr.w	$t2, $vr5, 0
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa5, $t2
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr6, 16
	add.d	$t2, $s0, $a7
	vstx	$vr7, $t2, $t0
	vstx	$vr5, $t2, $t1
	addi.d	$a7, $a7, 32
	vaddi.wu	$vr4, $vr4, 4
	bnez	$a7, .LBB7_50
# %bb.51:                               # %.preheader.i58.preheader
	move	$a7, $zero
	move	$t0, $zero
	move	$t1, $zero
	move	$t2, $zero
	sub.d	$t3, $s3, $s5
	sub.d	$t4, $s7, $s5
	sub.d	$t5, $s7, $s3
	sltui	$t3, $t3, 16
	sltui	$t4, $t4, 16
	or	$t3, $t3, $t4
	sltui	$t4, $t5, 16
	or	$t3, $t3, $t4
	lu12i.w	$t4, -3
	ori	$t4, $t4, 2688
	move	$t6, $s5
	move	$t7, $s3
	move	$t8, $s7
	b	.LBB7_53
	.p2align	4, , 16
.LBB7_52:                               # %middle.block210
                                        #   in Loop: Header=BB7_53 Depth=1
	addi.d	$t2, $t2, 1
	add.d	$t8, $t8, $s8
	add.d	$t7, $t7, $s8
	add.d	$t6, $t6, $s8
	addi.w	$t1, $t1, 3
	addi.d	$t0, $t0, 1
	addi.w	$a7, $a7, 2
	ori	$t5, $zero, 1000
	beq	$t2, $t5, .LBB7_58
.LBB7_53:                               # %.preheader.i58
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_57 Depth 2
                                        #     Child Loop BB7_55 Depth 2
	beqz	$t3, .LBB7_56
# %bb.54:                               # %scalar.ph201.preheader
                                        #   in Loop: Header=BB7_53 Depth=1
	move	$s2, $zero
	move	$s0, $t4
	.p2align	4, , 16
.LBB7_55:                               # %scalar.ph201
                                        #   Parent Loop BB7_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s4, $a7, $s2
	add.d	$ra, $t1, $s2
	add.w	$s2, $t0, $s2
	bstrpick.d	$t5, $s2, 31, 0
	movgr2fr.d	$fa4, $t5
	ffint.d.l	$fa4, $fa4
	fdiv.d	$fa4, $fa4, $fa1
	add.d	$t5, $t6, $s0
	fstx.d	$fa4, $t5, $s8
	bstrpick.d	$t5, $s4, 31, 0
	movgr2fr.d	$fa4, $t5
	ffint.d.l	$fa4, $fa4
	fdiv.d	$fa4, $fa4, $fa2
	add.d	$t5, $t7, $s0
	fstx.d	$fa4, $t5, $s8
	bstrpick.d	$t5, $ra, 31, 0
	movgr2fr.d	$fa4, $t5
	ffint.d.l	$fa4, $fa4
	fdiv.d	$fa4, $fa4, $fa1
	add.d	$t5, $t8, $s0
	addi.d	$s0, $s0, 8
	fstx.d	$fa4, $t5, $s8
	bnez	$s0, .LBB7_55
	b	.LBB7_52
	.p2align	4, , 16
.LBB7_56:                               # %vector.ph202
                                        #   in Loop: Header=BB7_53 Depth=1
	ld.d	$t5, $sp, 40                    # 8-byte Folded Reload
	vld	$vr5, $t5, %pc_lo12(.LCPI7_0)
	vreplgr2vr.d	$vr4, $t2
	lu12i.w	$t5, -3
	ori	$s0, $t5, 2688
	.p2align	4, , 16
.LBB7_57:                               # %vector.body205
                                        #   Parent Loop BB7_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr6, $vr5, 1
	vmul.d	$vr6, $vr6, $vr4
	vffint.d.lu	$vr6, $vr6
	ori	$s2, $zero, 0
	lu32i.d	$s2, -49152
	lu52i.d	$s2, $s2, 1032
	vreplgr2vr.d	$vr7, $s2
	vfdiv.d	$vr6, $vr6, $vr7
	add.d	$s2, $t6, $s0
	vstx	$vr6, $s2, $s8
	vaddi.du	$vr6, $vr5, 3
	vaddi.du	$vr5, $vr5, 2
	vmul.d	$vr8, $vr5, $vr4
	vffint.d.lu	$vr8, $vr8
	ori	$s2, $zero, 0
	lu32i.d	$s2, 180224
	lu52i.d	$s2, $s2, 1033
	vreplgr2vr.d	$vr9, $s2
	vfdiv.d	$vr8, $vr8, $vr9
	add.d	$s2, $t7, $s0
	vstx	$vr8, $s2, $s8
	vmul.d	$vr6, $vr6, $vr4
	vffint.d.lu	$vr6, $vr6
	vfdiv.d	$vr6, $vr6, $vr7
	add.d	$s2, $t8, $s0
	addi.d	$s0, $s0, 16
	vstx	$vr6, $s2, $s8
	bnez	$s0, .LBB7_57
	b	.LBB7_52
.LBB7_58:                               # %.preheader80.i66.preheader
	move	$t8, $zero
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	add.d	$t0, $s7, $a7
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	add.d	$t3, $s5, $a7
	ld.d	$a7, $sp, 8                     # 8-byte Folded Reload
	add.d	$t4, $s3, $a7
	addi.d	$t2, $s5, 8
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	add.d	$t5, $s5, $a7
	add.d	$t6, $s7, $a7
	add.d	$t7, $s3, $s8
	add.d	$t1, $s3, $a7
	st.d	$t7, $sp, 96                    # 8-byte Folded Spill
	sltu	$t7, $t7, $t6
	sltu	$t1, $s7, $t1
	and	$t1, $t7, $t1
	sltu	$t2, $t2, $t6
	sltu	$t5, $s7, $t5
	and	$t2, $t2, $t5
	sltu	$t3, $s7, $t3
	sltu	$t5, $s5, $t0
	and	$t3, $t3, $t5
	sltu	$t4, $s7, $t4
	sltu	$t0, $s3, $t0
	and	$t0, $t4, $t0
	or	$t3, $t3, $t0
	add.d	$a7, $s3, $a1
	st.d	$a7, $sp, 88                    # 8-byte Folded Spill
	add.d	$a7, $s7, $a1
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a7, $s5, 24
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a7, $s7, 24
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a7, -3
	ori	$a7, $a7, 2688
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	vldi	$vr1, -800
	ori	$t5, $zero, 1000
	ori	$ra, $zero, 999
	lu52i.d	$t0, $zero, 1022
	vreplgr2vr.d	$vr2, $t0
	.p2align	4, , 16
.LBB7_59:                               # %vector.ph276
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_60 Depth 2
                                        #     Child Loop BB7_63 Depth 2
                                        #       Child Loop BB7_65 Depth 3
                                        #       Child Loop BB7_64 Depth 3
                                        #     Child Loop BB7_67 Depth 2
                                        #       Child Loop BB7_69 Depth 3
                                        #       Child Loop BB7_72 Depth 3
                                        #     Child Loop BB7_75 Depth 2
                                        #       Child Loop BB7_78 Depth 3
                                        #       Child Loop BB7_81 Depth 3
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	st.d	$t8, $sp, 104                   # 8-byte Folded Spill
	alsl.d	$t0, $t8, $a7, 3
	vldrepl.d	$vr4, $t0, 0
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_60:                               # %vector.body279
                                        #   Parent Loop BB7_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t4, $s3, $t0
	vstx	$vr4, $t4, $s8
	addi.d	$t0, $t0, 32
	vstx	$vr4, $t4, $a1
	bnez	$t0, .LBB7_60
# %bb.61:                               # %.preheader76.i72.preheader
                                        #   in Loop: Header=BB7_59 Depth=1
	ori	$t0, $zero, 1
	move	$t4, $s3
	move	$s0, $s7
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	b	.LBB7_63
	.p2align	4, , 16
.LBB7_62:                               # %middle.block273
                                        #   in Loop: Header=BB7_63 Depth=2
	addi.d	$t0, $t0, 1
	add.d	$s4, $s4, $s8
	add.d	$s2, $s2, $s8
	add.d	$s0, $s0, $s8
	add.d	$t4, $t4, $s8
	beq	$t0, $t5, .LBB7_66
.LBB7_63:                               # %.preheader76.i72
                                        #   Parent Loop BB7_59 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_65 Depth 3
                                        #       Child Loop BB7_64 Depth 3
	lu12i.w	$a7, -3
	ori	$t6, $a7, 2688
	beqz	$t1, .LBB7_65
	.p2align	4, , 16
.LBB7_64:                               # %scalar.ph262
                                        #   Parent Loop BB7_59 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t7, $s0, $t6
	fldx.d	$fa4, $t7, $s6
	fldx.d	$fa5, $t7, $s8
	add.d	$t7, $t4, $t6
	fldx.d	$fa6, $t7, $s6
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa1
	fadd.d	$fa4, $fa6, $fa4
	addi.d	$t6, $t6, 8
	fstx.d	$fa4, $t7, $s6
	bnez	$t6, .LBB7_64
	b	.LBB7_62
	.p2align	4, , 16
.LBB7_65:                               # %vector.body264
                                        #   Parent Loop BB7_59 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t7, $s4, $t6
	add.d	$t8, $s2, $t6
	vldx	$vr4, $t8, $a3
	vldx	$vr5, $t8, $s8
	vld	$vr6, $t8, -16
	vldx	$vr7, $s2, $t6
	vldx	$vr8, $t7, $a3
	vldx	$vr9, $t7, $s8
	vfsub.d	$vr4, $vr4, $vr6
	vfsub.d	$vr5, $vr5, $vr7
	vfmul.d	$vr4, $vr4, $vr2
	vfmul.d	$vr5, $vr5, $vr2
	vfsub.d	$vr4, $vr8, $vr4
	vfsub.d	$vr5, $vr9, $vr5
	vstx	$vr4, $t7, $a3
	addi.d	$t6, $t6, 32
	vstx	$vr5, $t7, $s8
	bnez	$t6, .LBB7_65
	b	.LBB7_62
	.p2align	4, , 16
.LBB7_66:                               # %.preheader75.i79.preheader
                                        #   in Loop: Header=BB7_59 Depth=1
	move	$t0, $zero
	move	$t4, $zero
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_67:                               # %.preheader75.i79
                                        #   Parent Loop BB7_59 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_69 Depth 3
                                        #       Child Loop BB7_72 Depth 3
	ori	$t7, $zero, 1
	bnez	$t2, .LBB7_71
# %bb.68:                               # %vector.body244.preheader
                                        #   in Loop: Header=BB7_67 Depth=2
	lu12i.w	$a7, -3
	ori	$t6, $a7, 2720
	.p2align	4, , 16
.LBB7_69:                               # %vector.body244
                                        #   Parent Loop BB7_59 Depth=1
                                        #     Parent Loop BB7_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t7, $s2, $t6
	add.d	$t8, $s0, $t6
	vldx	$vr4, $t8, $a4
	vldx	$vr5, $t8, $a5
	ori	$s4, $a0, 1352
	vldx	$vr6, $t8, $s4
	vldx	$vr7, $t8, $a6
	vldx	$vr8, $t7, $a4
	vldx	$vr9, $t7, $a5
	vfsub.d	$vr4, $vr4, $vr6
	vfsub.d	$vr5, $vr5, $vr7
	vfmul.d	$vr4, $vr4, $vr2
	vfmul.d	$vr5, $vr5, $vr2
	vfsub.d	$vr4, $vr8, $vr4
	vfsub.d	$vr5, $vr9, $vr5
	vstx	$vr4, $t7, $a4
	addi.d	$t6, $t6, 32
	vstx	$vr5, $t7, $a5
	bnez	$t6, .LBB7_69
# %bb.70:                               #   in Loop: Header=BB7_67 Depth=2
	ori	$t7, $zero, 1197
.LBB7_71:                               # %scalar.ph242.preheader
                                        #   in Loop: Header=BB7_67 Depth=2
	addi.d	$t6, $t7, -1200
	alsl.d	$t7, $t7, $t0, 3
	.p2align	4, , 16
.LBB7_72:                               # %scalar.ph242
                                        #   Parent Loop BB7_59 Depth=1
                                        #     Parent Loop BB7_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t8, $s7, $t7
	fldx.d	$fa4, $s7, $t7
	fld.d	$fa5, $t8, -8
	fldx.d	$fa6, $s5, $t7
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa1
	fadd.d	$fa4, $fa6, $fa4
	fstx.d	$fa4, $s5, $t7
	addi.d	$t6, $t6, 1
	addi.d	$t7, $t7, 8
	bnez	$t6, .LBB7_72
# %bb.73:                               #   in Loop: Header=BB7_67 Depth=2
	addi.d	$t4, $t4, 1
	add.d	$s2, $s2, $s8
	add.d	$s0, $s0, $s8
	add.d	$t0, $t0, $s8
	bne	$t4, $t5, .LBB7_67
# %bb.74:                               # %.preheader.i86.preheader
                                        #   in Loop: Header=BB7_59 Depth=1
	move	$s0, $zero
	move	$t0, $zero
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	move	$s2, $s5
	move	$s4, $s7
	.p2align	4, , 16
.LBB7_75:                               # %.preheader.i86
                                        #   Parent Loop BB7_59 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_78 Depth 3
                                        #       Child Loop BB7_81 Depth 3
	beqz	$t3, .LBB7_77
# %bb.76:                               #   in Loop: Header=BB7_75 Depth=2
	move	$t7, $zero
	b	.LBB7_80
	.p2align	4, , 16
.LBB7_77:                               # %vector.body225.preheader
                                        #   in Loop: Header=BB7_75 Depth=2
	lu12i.w	$a7, -3
	ori	$t6, $a7, 2704
	.p2align	4, , 16
.LBB7_78:                               # %vector.body225
                                        #   Parent Loop BB7_59 Depth=1
                                        #     Parent Loop BB7_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t7, $s4, $t6
	add.d	$t8, $s2, $t6
	ori	$a7, $a0, 1400
	vldx	$vr4, $t8, $a7
	vldx	$vr5, $t8, $a3
	add.d	$a7, $t4, $t6
	vldx	$vr6, $a7, $a3
	vld	$vr7, $a7, -16
	vfsub.d	$vr4, $vr4, $vr5
	vldx	$vr5, $t7, $a3
	vfadd.d	$vr4, $vr4, $vr6
	vfsub.d	$vr4, $vr4, $vr7
	vfmul.d	$vr4, $vr4, $vr0
	vfadd.d	$vr4, $vr5, $vr4
	addi.d	$t6, $t6, 16
	vstx	$vr4, $t7, $a3
	bnez	$t6, .LBB7_78
# %bb.79:                               #   in Loop: Header=BB7_75 Depth=2
	ori	$t7, $zero, 1198
.LBB7_80:                               # %scalar.ph223.preheader
                                        #   in Loop: Header=BB7_75 Depth=2
	alsl.d	$t6, $t7, $s0, 3
	addi.d	$t7, $t7, -1199
	.p2align	4, , 16
.LBB7_81:                               # %scalar.ph223
                                        #   Parent Loop BB7_59 Depth=1
                                        #     Parent Loop BB7_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a7, $s5, $t6
	fld.d	$fa4, $a7, 8
	fldx.d	$fa5, $s5, $t6
	add.d	$a7, $s3, $t6
	fldx.d	$fa6, $a7, $s8
	fldx.d	$fa7, $s3, $t6
	fsub.d	$fa4, $fa4, $fa5
	fldx.d	$fa5, $s7, $t6
	fadd.d	$fa4, $fa4, $fa6
	fsub.d	$fa4, $fa4, $fa7
	fmul.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa5, $fa4
	fstx.d	$fa4, $s7, $t6
	addi.d	$t7, $t7, 1
	addi.d	$t6, $t6, 8
	bnez	$t7, .LBB7_81
# %bb.82:                               #   in Loop: Header=BB7_75 Depth=2
	addi.d	$t0, $t0, 1
	add.d	$s4, $s4, $s8
	add.d	$s2, $s2, $s8
	add.d	$t4, $t4, $s8
	add.d	$s0, $s0, $s8
	bne	$t0, $ra, .LBB7_75
# %bb.83:                               #   in Loop: Header=BB7_59 Depth=1
	ld.d	$t8, $sp, 104                   # 8-byte Folded Reload
	addi.d	$t8, $t8, 1
	ori	$a7, $zero, 500
	bne	$t8, $a7, .LBB7_59
# %bb.84:                               # %kernel_fdtd_2d_StrictFP.exit
	ori	$a0, $a2, 2817
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.b	$zero, $a0, $s6
	addi.d	$s4, $a0, 7
	lu12i.w	$a0, -3
	ori	$a0, $a0, 2688
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$s6, $zero, 3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$s0, $zero
	move	$a0, $zero
.LBB7_85:                               # %.preheader.i95
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_86 Depth 2
                                        #     Child Loop BB7_88 Depth 2
                                        #     Child Loop BB7_90 Depth 2
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	add.d	$a0, $s5, $s0
	move	$a1, $s4
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_86:                               #   Parent Loop BB7_85 Depth=1
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
	bstrins.d	$a3, $s6, 63, 4
	st.b	$a3, $a1, -7
	st.b	$a3, $a1, -6
	bstrins.d	$a4, $s6, 63, 4
	st.b	$a4, $a1, -5
	st.b	$a4, $a1, -4
	bstrins.d	$a5, $s6, 63, 4
	st.b	$a5, $a1, -3
	st.b	$a5, $a1, -2
	bstrins.d	$a6, $s6, 63, 4
	st.b	$a6, $a1, -1
	st.b	$a6, $a1, 0
	bstrins.d	$a7, $s6, 63, 4
	st.b	$a7, $a1, 1
	st.b	$a7, $a1, 2
	bstrins.d	$t0, $s6, 63, 4
	st.b	$t0, $a1, 3
	st.b	$t0, $a1, 4
	bstrins.d	$t1, $s6, 63, 4
	st.b	$t1, $a1, 5
	st.b	$t1, $a1, 6
	bstrins.d	$t2, $s6, 63, 4
	st.b	$t2, $a1, 7
	st.b	$t2, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB7_86
# %bb.87:                               #   in Loop: Header=BB7_85 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	add.d	$a0, $s3, $s0
	move	$a1, $s4
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_88:                               #   Parent Loop BB7_85 Depth=1
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
	bstrins.d	$a3, $s6, 63, 4
	st.b	$a3, $a1, -7
	st.b	$a3, $a1, -6
	bstrins.d	$a4, $s6, 63, 4
	st.b	$a4, $a1, -5
	st.b	$a4, $a1, -4
	bstrins.d	$a5, $s6, 63, 4
	st.b	$a5, $a1, -3
	st.b	$a5, $a1, -2
	bstrins.d	$a6, $s6, 63, 4
	st.b	$a6, $a1, -1
	st.b	$a6, $a1, 0
	bstrins.d	$a7, $s6, 63, 4
	st.b	$a7, $a1, 1
	st.b	$a7, $a1, 2
	bstrins.d	$t0, $s6, 63, 4
	st.b	$t0, $a1, 3
	st.b	$t0, $a1, 4
	bstrins.d	$t1, $s6, 63, 4
	st.b	$t1, $a1, 5
	st.b	$t1, $a1, 6
	bstrins.d	$t2, $s6, 63, 4
	st.b	$t2, $a1, 7
	st.b	$t2, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB7_88
# %bb.89:                               #   in Loop: Header=BB7_85 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	add.d	$a0, $s7, $s0
	lu12i.w	$a1, -3
	ori	$a1, $a1, 2688
	move	$a2, $s4
	.p2align	4, , 16
.LBB7_90:                               #   Parent Loop BB7_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a0, $a1
	ldptr.d	$a3, $a3, 9600
	srli.d	$a4, $a3, 8
	srli.d	$a5, $a3, 16
	srli.d	$a6, $a3, 24
	srli.d	$a7, $a3, 32
	srli.d	$t0, $a3, 40
	srli.d	$t1, $a3, 48
	srli.d	$t2, $a3, 56
	bstrins.d	$a3, $s6, 63, 4
	st.b	$a3, $a2, -7
	st.b	$a3, $a2, -6
	bstrins.d	$a4, $s6, 63, 4
	st.b	$a4, $a2, -5
	st.b	$a4, $a2, -4
	bstrins.d	$a5, $s6, 63, 4
	st.b	$a5, $a2, -3
	st.b	$a5, $a2, -2
	bstrins.d	$a6, $s6, 63, 4
	st.b	$a6, $a2, -1
	st.b	$a6, $a2, 0
	bstrins.d	$a7, $s6, 63, 4
	st.b	$a7, $a2, 1
	st.b	$a7, $a2, 2
	bstrins.d	$t0, $s6, 63, 4
	st.b	$t0, $a2, 3
	st.b	$t0, $a2, 4
	bstrins.d	$t1, $s6, 63, 4
	st.b	$t1, $a2, 5
	st.b	$t1, $a2, 6
	bstrins.d	$t2, $s6, 63, 4
	st.b	$t2, $a2, 7
	st.b	$t2, $a2, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 16
	bnez	$a1, .LBB7_90
# %bb.91:                               #   in Loop: Header=BB7_85 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	add.d	$s0, $s0, $s8
	ori	$a1, $zero, 1000
	bne	$a0, $a1, .LBB7_85
# %bb.92:                               # %print_array.exit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.LBB7_93:
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
