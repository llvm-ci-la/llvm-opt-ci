	.file	"adi.c"
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
	.dword	0x409f3c0000000001              # double 1999.0000000000002
	.dword	0x408f400000000001              # double 1000.0000000000001
.LCPI7_7:
	.dword	48                              # 0x30
	.dword	56                              # 0x38
.LCPI7_8:
	.dword	32                              # 0x20
	.dword	40                              # 0x28
.LCPI7_9:
	.dword	16                              # 0x10
	.dword	24                              # 0x18
.LCPI7_10:
	.dword	0                               # 0x0
	.dword	8                               # 0x8
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI7_1:
	.dword	0x409f400000000001              # double 2000.0000000000002
.LCPI7_2:
	.dword	0x40af420000000001              # double 4001.0000000000005
.LCPI7_3:
	.dword	0x408f400000000001              # double 1000.0000000000001
.LCPI7_5:
	.dword	0x409f440000000001              # double 2001.0000000000002
.LCPI7_6:
	.dword	0xc0af3e0000000001              # double -3999.0000000000005
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
	lu12i.w	$a0, 1953
	ori	$s2, $a0, 512
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 144
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 144
	beqz	$fp, .LBB7_39
# %bb.1:
	bnez	$a0, .LBB7_39
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 144
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 144
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	beqz	$a1, .LBB7_39
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_39
# %bb.4:                                # %polybench_alloc_data.exit14
	st.d	$zero, $sp, 144
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 144
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 144
	beqz	$s1, .LBB7_39
# %bb.5:                                # %polybench_alloc_data.exit14
	bnez	$a0, .LBB7_39
# %bb.6:                                # %polybench_alloc_data.exit16
	st.d	$zero, $sp, 144
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 144
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 144
	beqz	$s2, .LBB7_39
# %bb.7:                                # %polybench_alloc_data.exit16
	bnez	$a0, .LBB7_39
# %bb.8:                                # %polybench_alloc_data.exit18
	move	$a1, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI7_0)
	lu12i.w	$a0, -2
	ori	$a2, $a0, 192
	ori	$a3, $zero, 0
	lu32i.d	$a3, -49152
	lu52i.d	$a3, $a3, 1032
	vreplgr2vr.d	$vr1, $a3
	lu12i.w	$a3, 1
	ori	$s4, $a3, 3904
	ori	$a3, $a3, 3920
	ori	$a4, $zero, 1000
	move	$a5, $fp
	.p2align	4, , 16
.LBB7_9:                                # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
	addi.d	$a6, $a1, 1000
	vreplgr2vr.d	$vr2, $a6
	move	$a6, $a2
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB7_10:                               # %vector.body
                                        #   Parent Loop BB7_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vsub.d	$vr4, $vr2, $vr3
	vsubi.du	$vr5, $vr4, 2
	vffint.d.lu	$vr4, $vr4
	vffint.d.lu	$vr5, $vr5
	vfdiv.d	$vr4, $vr4, $vr1
	vfdiv.d	$vr5, $vr5, $vr1
	add.d	$a7, $a5, $a6
	vstx	$vr4, $a7, $s4
	vstx	$vr5, $a7, $a3
	addi.d	$a6, $a6, 32
	vaddi.du	$vr3, $vr3, 4
	bnez	$a6, .LBB7_10
# %bb.11:                               # %middle.block
                                        #   in Loop: Header=BB7_9 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a5, $a5, $s4
	bne	$a1, $a4, .LBB7_9
# %bb.12:                               # %init_array.exit
	lu12i.w	$a1, 1951
	ori	$a1, $a1, 704
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	add.d	$a1, $a3, $a1
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3912
	add.d	$a2, $s2, $a1
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	add.d	$a2, $fp, $a1
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	add.d	$a2, $s1, $a1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	add.d	$a2, $s2, $s4
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a2, 1949
	ori	$a2, $a2, 904
	add.d	$a2, $a3, $a2
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	add.d	$a1, $a3, $a1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$t0, $zero, 1
	lu12i.w	$s5, 3
	ori	$a1, $s5, 3696
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ori	$a1, $s5, 3704
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	lu52i.d	$s0, $zero, 1023
	ori	$a1, $a0, 208
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ori	$a2, $zero, 1
	pcalau12i	$t8, %pc_hi20(.LCPI7_3)
	pcalau12i	$s7, %pc_hi20(.LCPI7_1)
	.p2align	4, , 16
.LBB7_13:                               # %.preheader154.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_14 Depth 2
                                        #       Child Loop BB7_19 Depth 3
                                        #       Child Loop BB7_17 Depth 3
                                        #       Child Loop BB7_21 Depth 3
                                        #     Child Loop BB7_24 Depth 2
                                        #       Child Loop BB7_29 Depth 3
                                        #       Child Loop BB7_27 Depth 3
                                        #       Child Loop BB7_31 Depth 3
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	move	$t6, $zero
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ori	$a7, $zero, 1
	.p2align	4, , 16
.LBB7_14:                               # %.lver.check
                                        #   Parent Loop BB7_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_19 Depth 3
                                        #       Child Loop BB7_17 Depth 3
                                        #       Child Loop BB7_21 Depth 3
	mul.d	$a1, $t6, $s4
	add.d	$a2, $a1, $s4
	slli.d	$t7, $a7, 3
	ld.d	$t3, $sp, 120                   # 8-byte Folded Reload
	move	$t2, $s0
	stx.d	$s0, $t3, $t7
	mul.d	$t4, $a7, $s4
	stx.d	$zero, $s1, $t4
	fldx.d	$fa0, $t3, $t7
	add.d	$s0, $s1, $a2
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	add.d	$t5, $a1, $t3
	add.d	$t3, $s2, $t5
	fstx.d	$fa0, $s2, $t4
	lu12i.w	$ra, 1
	ori	$s6, $ra, 3888
	ori	$s8, $ra, 3880
	pcalau12i	$t4, %pc_hi20(.LCPI7_2)
	pcalau12i	$a1, %pc_hi20(.LCPI7_4)
	ori	$ra, $ra, 3896
	bgeu	$s0, $t3, .LBB7_18
# %bb.15:                               # %.lver.check
                                        #   in Loop: Header=BB7_14 Depth=2
	add.d	$t3, $s1, $t5
	add.d	$t5, $s2, $a2
	bgeu	$t5, $t3, .LBB7_18
# %bb.16:                               # %.ph.lver.orig.preheader
                                        #   in Loop: Header=BB7_14 Depth=2
	move	$a2, $s3
	ld.d	$t5, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_17:                               # %.ph.lver.orig
                                        #   Parent Loop BB7_13 Depth=1
                                        #     Parent Loop BB7_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t3, $a4, $t5
	fldx.d	$fa0, $t3, $s8
	fld.d	$fa1, $s7, %pc_lo12(.LCPI7_1)
	fld.d	$fa2, $t4, %pc_lo12(.LCPI7_2)
	fmul.d	$fa0, $fa0, $fa1
	fsub.d	$fa0, $fa2, $fa0
	fdiv.d	$fa2, $fa1, $fa0
	fstx.d	$fa2, $t3, $s6
	fld.d	$fa2, $a2, -8
	fld.d	$fa3, $t8, %pc_lo12(.LCPI7_3)
	vld	$vr4, $a2, 0
	vld	$vr5, $a1, %pc_lo12(.LCPI7_4)
	fmul.d	$fa2, $fa2, $fa3
	vfmul.d	$vr3, $vr4, $vr5
	vreplvei.d	$vr4, $vr3, 0
	add.d	$t3, $a5, $t5
	fldx.d	$fa5, $t3, $s6
	fsub.d	$fa2, $fa2, $fa4
	vreplvei.d	$vr3, $vr3, 1
	fadd.d	$fa2, $fa2, $fa3
	fmul.d	$fa1, $fa5, $fa1
	fadd.d	$fa1, $fa2, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	fstx.d	$fa0, $t3, $ra
	addi.d	$t5, $t5, 8
	add.d	$a2, $a2, $s4
	bnez	$t5, .LBB7_17
	b	.LBB7_20
	.p2align	4, , 16
.LBB7_18:                               # %.ph
                                        #   in Loop: Header=BB7_14 Depth=2
	fldx.d	$fa0, $s1, $a2
	fldx.d	$fa1, $s2, $a2
	ori	$t5, $a0, 208
	move	$a2, $s3
	.p2align	4, , 16
.LBB7_19:                               #   Parent Loop BB7_13 Depth=1
                                        #     Parent Loop BB7_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $s7, %pc_lo12(.LCPI7_1)
	fld.d	$fa3, $t4, %pc_lo12(.LCPI7_2)
	fmul.d	$fa0, $fa0, $fa2
	fsub.d	$fa3, $fa3, $fa0
	fdiv.d	$fa0, $fa2, $fa3
	add.d	$t3, $a4, $t5
	fstx.d	$fa0, $t3, $s6
	fld.d	$fa4, $a2, -8
	fld.d	$fa5, $t8, %pc_lo12(.LCPI7_3)
	vld	$vr6, $a2, 0
	vld	$vr7, $a1, %pc_lo12(.LCPI7_4)
	fmul.d	$fa4, $fa4, $fa5
	vfmul.d	$vr5, $vr6, $vr7
	vreplvei.d	$vr6, $vr5, 0
	fsub.d	$fa4, $fa4, $fa6
	vreplvei.d	$vr5, $vr5, 1
	fadd.d	$fa4, $fa4, $fa5
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa4, $fa1
	fdiv.d	$fa1, $fa1, $fa3
	add.d	$t3, $a3, $t5
	fstx.d	$fa1, $t3, $s6
	addi.d	$t5, $t5, 8
	add.d	$a2, $a2, $s4
	bnez	$t5, .LBB7_19
.LBB7_20:                               # %.loopexit34
                                        #   in Loop: Header=BB7_14 Depth=2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$s0, $t2
	stx.d	$t2, $a1, $t7
	ori	$a1, $zero, 999
	move	$a2, $a6
	move	$t4, $t1
	.p2align	4, , 16
.LBB7_21:                               #   Parent Loop BB7_13 Depth=1
                                        #     Parent Loop BB7_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa0, $s1, $t4
	fldx.d	$fa1, $a2, $s4
	fldx.d	$fa2, $s2, $t4
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$t4, $t4, -8
	ori	$t3, $a0, 192
	add.d	$a2, $a2, $t3
	bltu	$t0, $a1, .LBB7_21
# %bb.22:                               #   in Loop: Header=BB7_14 Depth=2
	addi.d	$a7, $a7, 1
	addi.d	$t6, $t6, 1
	add.d	$a3, $a3, $s4
	addi.d	$s3, $s3, 8
	add.d	$a4, $a4, $s4
	add.d	$a5, $a5, $s4
	add.d	$t1, $t1, $s4
	addi.d	$a6, $a6, 8
	ori	$a1, $zero, 999
	bne	$a7, $a1, .LBB7_14
# %bb.23:                               # %.lver.check49.preheader
                                        #   in Loop: Header=BB7_13 Depth=1
	move	$a2, $zero
	ori	$a3, $zero, 1
	ori	$a4, $s5, 3696
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_24:                               # %.lver.check49
                                        #   Parent Loop BB7_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_29 Depth 3
                                        #       Child Loop BB7_27 Depth 3
                                        #       Child Loop BB7_31 Depth 3
	mul.d	$t6, $a2, $s4
	add.d	$t5, $t6, $s4
	mul.d	$t7, $a3, $s4
	stx.d	$s0, $fp, $t7
	stx.d	$zero, $s1, $t7
	fldx.d	$fa0, $fp, $t7
	add.d	$t3, $s1, $t5
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$s3, $t6, $a1
	add.d	$s0, $s2, $s3
	fstx.d	$fa0, $s2, $t7
	pcalau12i	$a1, %pc_hi20(.LCPI7_5)
	pcalau12i	$t4, %pc_hi20(.LCPI7_6)
	bgeu	$t3, $s0, .LBB7_28
# %bb.25:                               # %.lver.check49
                                        #   in Loop: Header=BB7_24 Depth=2
	add.d	$t3, $s1, $s3
	add.d	$s0, $s2, $t5
	bgeu	$s0, $t3, .LBB7_28
# %bb.26:                               # %.ph50.lver.orig.preheader
                                        #   in Loop: Header=BB7_24 Depth=2
	ori	$t5, $a0, 208
	.p2align	4, , 16
.LBB7_27:                               # %.ph50.lver.orig
                                        #   Parent Loop BB7_13 Depth=1
                                        #     Parent Loop BB7_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t3, $a7, $t5
	fldx.d	$fa0, $t3, $s8
	fld.d	$fa1, $t8, %pc_lo12(.LCPI7_3)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI7_5)
	fmul.d	$fa0, $fa0, $fa1
	fsub.d	$fa0, $fa2, $fa0
	fdiv.d	$fa2, $fa1, $fa0
	fstx.d	$fa2, $t3, $s6
	add.d	$t3, $a6, $t5
	fld.d	$fa2, $t3, -16
	fld.d	$fa3, $s7, %pc_lo12(.LCPI7_1)
	fldx.d	$fa4, $t3, $s6
	fld.d	$fa5, $t4, %pc_lo12(.LCPI7_6)
	fmul.d	$fa2, $fa2, $fa3
	fmul.d	$fa4, $fa4, $fa5
	ori	$s0, $s5, 3696
	fldx.d	$fa5, $t3, $s0
	add.d	$t3, $a5, $t5
	fldx.d	$fa6, $t3, $s6
	fadd.d	$fa2, $fa2, $fa4
	fmul.d	$fa3, $fa5, $fa3
	fadd.d	$fa2, $fa2, $fa3
	fmul.d	$fa1, $fa6, $fa1
	fadd.d	$fa1, $fa2, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	addi.d	$t5, $t5, 8
	fstx.d	$fa0, $t3, $ra
	bnez	$t5, .LBB7_27
	b	.LBB7_30
	.p2align	4, , 16
.LBB7_28:                               # %.ph50
                                        #   in Loop: Header=BB7_24 Depth=2
	fldx.d	$fa0, $s1, $t5
	fldx.d	$fa1, $s2, $t5
	ori	$t5, $a0, 208
	.p2align	4, , 16
.LBB7_29:                               #   Parent Loop BB7_13 Depth=1
                                        #     Parent Loop BB7_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $t8, %pc_lo12(.LCPI7_3)
	fld.d	$fa3, $a1, %pc_lo12(.LCPI7_5)
	fmul.d	$fa0, $fa0, $fa2
	fsub.d	$fa3, $fa3, $fa0
	fdiv.d	$fa0, $fa2, $fa3
	add.d	$t3, $a7, $t5
	fstx.d	$fa0, $t3, $s6
	add.d	$t3, $a6, $t5
	fld.d	$fa4, $t3, -16
	fldx.d	$fa5, $t3, $s6
	fld.d	$fa6, $t4, %pc_lo12(.LCPI7_6)
	fld.d	$fa7, $s7, %pc_lo12(.LCPI7_1)
	ori	$s0, $s5, 3696
	fldx.d	$ft0, $t3, $s0
	fmul.d	$fa5, $fa5, $fa6
	fmul.d	$fa4, $fa4, $fa7
	fadd.d	$fa4, $fa4, $fa5
	fmul.d	$fa5, $ft0, $fa7
	fadd.d	$fa4, $fa4, $fa5
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa4, $fa1
	fdiv.d	$fa1, $fa1, $fa3
	add.d	$t3, $t1, $t5
	addi.d	$t5, $t5, 8
	fstx.d	$fa1, $t3, $s6
	bnez	$t5, .LBB7_29
.LBB7_30:                               # %.loopexit51
                                        #   in Loop: Header=BB7_24 Depth=2
	add.d	$a1, $fp, $t6
	add.d	$t3, $fp, $t7
	move	$s0, $t2
	stptr.d	$t2, $t3, 7992
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	fldx.d	$fa0, $a1, $t3
	ori	$a1, $zero, 999
	move	$t4, $a4
	.p2align	4, , 16
.LBB7_31:                               #   Parent Loop BB7_13 Depth=1
                                        #     Parent Loop BB7_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s1, $t4
	fldx.d	$fa2, $s2, $t4
	fmul.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $fp, $t4
	addi.d	$a1, $a1, -1
	addi.d	$t4, $t4, -8
	bltu	$t0, $a1, .LBB7_31
# %bb.32:                               #   in Loop: Header=BB7_24 Depth=2
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	add.d	$t1, $t1, $s4
	add.d	$a7, $a7, $s4
	add.d	$a6, $a6, $s4
	add.d	$a5, $a5, $s4
	add.d	$a4, $a4, $s4
	ori	$a1, $zero, 999
	bne	$a3, $a1, .LBB7_24
# %bb.33:                               #   in Loop: Header=BB7_13 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	ori	$a1, $zero, 501
	bne	$a2, $a1, .LBB7_13
# %bb.34:                               # %kernel_adi.exit
	ori	$a0, $s5, 3713
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$s5, $s5, 3712
	pcalau12i	$a0, %pc_hi20(.LCPI7_7)
	vld	$vr5, $a0, %pc_lo12(.LCPI7_7)
	pcalau12i	$a0, %pc_hi20(.LCPI7_8)
	vld	$vr6, $a0, %pc_lo12(.LCPI7_8)
	pcalau12i	$a0, %pc_hi20(.LCPI7_9)
	vld	$vr7, $a0, %pc_lo12(.LCPI7_9)
	pcalau12i	$a0, %pc_hi20(.LCPI7_10)
	vld	$vr8, $a0, %pc_lo12(.LCPI7_10)
	stx.b	$zero, $s3, $s5
	lu12i.w	$a0, -4
	ori	$s0, $a0, 384
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s7, $a0, %got_pc_lo12(stderr)
	move	$s8, $zero
	move	$s6, $fp
	vst	$vr5, $sp, 128                  # 16-byte Folded Spill
	vst	$vr6, $sp, 96                   # 16-byte Folded Spill
	vst	$vr7, $sp, 80                   # 16-byte Folded Spill
	vst	$vr8, $sp, 64                   # 16-byte Folded Spill
.LBB7_35:                               # %.preheader.i23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_36 Depth 2
	move	$a0, $s6
	move	$a1, $s0
	.p2align	4, , 16
.LBB7_36:                               #   Parent Loop BB7_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 0
	add.d	$a3, $s3, $a1
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
	bnez	$a1, .LBB7_36
# %bb.37:                               #   in Loop: Header=BB7_35 Depth=1
	ld.d	$a1, $s7, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 64                   # 16-byte Folded Reload
	vld	$vr7, $sp, 80                   # 16-byte Folded Reload
	vld	$vr6, $sp, 96                   # 16-byte Folded Reload
	vld	$vr5, $sp, 128                  # 16-byte Folded Reload
	addi.d	$s8, $s8, 1
	add.d	$s6, $s6, $s4
	ori	$a0, $zero, 1000
	bne	$s8, $a0, .LBB7_35
# %bb.38:                               # %print_array.exit
	move	$a0, $s3
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
	move	$a0, $s2
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
.LBB7_39:
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
