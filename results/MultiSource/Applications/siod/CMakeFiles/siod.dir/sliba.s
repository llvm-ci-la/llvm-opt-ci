	.file	"sliba.c"
	.text
	.globl	init_storage_a1                 # -- Begin function init_storage_a1
	.p2align	5
	.type	init_storage_a1,@function
init_storage_a1:                        # @init_storage_a1
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(array_gc_relocate)
	addi.d	$a1, $a0, %pc_lo12(array_gc_relocate)
	pcalau12i	$a0, %pc_hi20(array_gc_mark)
	addi.d	$a2, $a0, %pc_lo12(array_gc_mark)
	pcalau12i	$a0, %pc_hi20(array_gc_scan)
	addi.d	$a3, $a0, %pc_lo12(array_gc_scan)
	pcalau12i	$a0, %pc_hi20(array_gc_free)
	addi.d	$a4, $a0, %pc_lo12(array_gc_free)
	addi.d	$a5, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(set_gc_hooks)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(array_prin1)
	addi.d	$a1, $a0, %pc_lo12(array_prin1)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(set_print_hooks)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_user_type_hooks)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(array_fast_print)
	addi.d	$a1, $a1, %pc_lo12(array_fast_print)
	st.d	$a1, $a0, 56
	pcalau12i	$a1, %pc_hi20(array_fast_read)
	addi.d	$a1, $a1, %pc_lo12(array_fast_read)
	st.d	$a1, $a0, 64
	pcalau12i	$a1, %pc_hi20(array_equal)
	addi.d	$a1, $a1, %pc_lo12(array_equal)
	st.d	$a1, $a0, 72
	pcalau12i	$a1, %pc_hi20(array_sxhash)
	addi.d	$a1, $a1, %pc_lo12(array_sxhash)
	st.d	$a1, $a0, 48
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	init_storage_a1, .Lfunc_end0-init_storage_a1
                                        # -- End function
	.globl	array_gc_relocate               # -- Begin function array_gc_relocate
	.p2align	5
	.type	array_gc_relocate,@function
array_gc_relocate:                      # @array_gc_relocate
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(heap)
	ld.d	$s1, $a0, %got_pc_lo12(heap)
	ld.d	$s0, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(heap_end)
	ld.d	$a0, $a0, %got_pc_lo12(heap_end)
	ld.d	$a0, $a0, 0
	bltu	$s0, $a0, .LBB1_2
# %bb.1:
	pcaddu18i	$ra, %call36(gc_fatal_error)
	jirl	$ra, $ra, 0
.LBB1_2:
	addi.d	$a0, $s0, 24
	st.d	$a0, $s1, 0
	ld.d	$a0, $fp, 16
	st.d	$a0, $s0, 16
	vld	$vr0, $fp, 0
	vst	$vr0, $s0, 0
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	array_gc_relocate, .Lfunc_end1-array_gc_relocate
                                        # -- End function
	.globl	array_gc_mark                   # -- Begin function array_gc_mark
	.p2align	5
	.type	array_gc_mark,@function
array_gc_mark:                          # @array_gc_mark
# %bb.0:
	beqz	$a0, .LBB2_6
# %bb.1:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 16
	bne	$a0, $a1, .LBB2_5
# %bb.2:                                # %.preheader
	ld.d	$a0, $fp, 8
	blez	$a0, .LBB2_5
# %bb.3:                                # %.lr.ph
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(gc_mark)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB2_4
.LBB2_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB2_6:                                # %.critedge
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	array_gc_mark, .Lfunc_end2-array_gc_mark
                                        # -- End function
	.globl	array_gc_scan                   # -- Begin function array_gc_scan
	.p2align	5
	.type	array_gc_scan,@function
array_gc_scan:                          # @array_gc_scan
# %bb.0:
	beqz	$a0, .LBB3_6
# %bb.1:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 16
	bne	$a0, $a1, .LBB3_5
# %bb.2:                                # %.preheader
	ld.d	$a0, $fp, 8
	blez	$a0, .LBB3_5
# %bb.3:                                # %.lr.ph
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(gc_relocate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	stx.d	$a0, $a1, $s0
	ld.d	$a0, $fp, 8
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB3_4
.LBB3_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB3_6:                                # %.critedge
	ret
.Lfunc_end3:
	.size	array_gc_scan, .Lfunc_end3-array_gc_scan
                                        # -- End function
	.globl	array_gc_free                   # -- Begin function array_gc_free
	.p2align	5
	.type	array_gc_free,@function
array_gc_free:                          # @array_gc_free
# %bb.0:
	ld.hu	$a1, $a0, 2
	addi.d	$a2, $a1, -13
	ori	$a3, $zero, 4
	bltu	$a2, $a3, .LBB4_2
# %bb.1:
	ori	$a2, $zero, 18
	bne	$a1, $a2, .LBB4_3
.LBB4_2:                                # %.sink.split
	ld.d	$a0, $a0, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB4_3:
	ret
.Lfunc_end4:
	.size	array_gc_free, .Lfunc_end4-array_gc_free
                                        # -- End function
	.globl	array_prin1                     # -- Begin function array_prin1
	.p2align	5
	.type	array_prin1,@function
array_prin1:                            # @array_prin1
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a0
	ld.hu	$a0, $a0, 2
	addi.d	$a0, $a0, -13
	ori	$a2, $zero, 5
	bltu	$a2, $a0, .LBB5_35
# %bb.1:
	move	$fp, $a1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI5_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI5_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB5_2:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gput_st)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcspn)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$s2, $a0, .LBB5_23
# %bb.3:
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(gput_st)
	jirl	$ra, $ra, 0
	b	.LBB5_34
.LBB5_4:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gput_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	blez	$a0, .LBB5_21
# %bb.5:                                # %.lr.ph76
	pcalau12i	$a0, %got_pc_hi20(tkbuffer)
	ld.d	$s3, $a0, %got_pc_lo12(tkbuffer)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s1, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s2, $a0, %pc_lo12(.L.str.7)
	move	$s4, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB5_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 16
	ld.d	$a0, $s3, 0
	ldx.d	$a2, $a1, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gput_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	addi.d	$s5, $s5, 1
	bge	$s5, $a0, .LBB5_21
# %bb.7:                                #   in Loop: Header=BB5_6 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(gput_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	addi.d	$s4, $s4, 8
	blt	$s5, $a0, .LBB5_6
	b	.LBB5_21
.LBB5_8:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gput_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	blez	$a0, .LBB5_12
# %bb.9:                                # %.lr.ph68
	pcalau12i	$a0, %got_pc_hi20(tkbuffer)
	ld.d	$s3, $a0, %got_pc_lo12(tkbuffer)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$s1, $a0, %pc_lo12(.L.str.9)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s2, $a0, %pc_lo12(.L.str.7)
	move	$s4, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB5_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 16
	ld.d	$a0, $s3, 0
	ldx.d	$a2, $a1, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gput_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	addi.d	$s5, $s5, 1
	bge	$s5, $a0, .LBB5_12
# %bb.11:                               #   in Loop: Header=BB5_10 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(gput_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	addi.d	$s4, $s4, 8
	blt	$s5, $a0, .LBB5_10
.LBB5_12:                               # %._crit_edge69
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gput_st)
	jirl	$ra, $ra, 0
.LBB5_13:
	pcalau12i	$a0, %got_pc_hi20(tkbuffer)
	ld.d	$s2, $a0, %got_pc_lo12(tkbuffer)
	ld.d	$a0, $s2, 0
	ld.d	$a2, $s0, 8
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gput_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	blez	$a0, .LBB5_16
# %bb.14:                               # %.lr.ph72
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s1, $a0, %pc_lo12(.L.str.11)
	move	$s3, $zero
	.p2align	4, , 16
.LBB5_15:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 16
	ld.d	$a0, $s2, 0
	ldx.bu	$a2, $a1, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gput_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	addi.d	$s3, $s3, 1
	blt	$s3, $a0, .LBB5_15
.LBB5_16:                               # %._crit_edge73
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	b	.LBB5_22
.LBB5_17:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gput_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	blez	$a0, .LBB5_21
# %bb.18:                               # %.lr.ph
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s1, $a0, %pc_lo12(.L.str.7)
	move	$s2, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB5_19:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 16
	ldx.d	$a0, $a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(lprin1g)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB5_21
# %bb.20:                               #   in Loop: Header=BB5_19 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(gput_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	addi.d	$s2, $s2, 8
	blt	$s3, $a0, .LBB5_19
.LBB5_21:                               # %._crit_edge77
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
.LBB5_22:                               # %._crit_edge77
	move	$a0, $fp
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(gput_st)
	jr	$t8
.LBB5_23:
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB5_34
# %bb.24:                               # %.lr.ph80
	bstrpick.d	$s1, $a0, 30, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s2, $a0, %pc_lo12(.L.str.2)
	ori	$s3, $zero, 25
	ori	$s4, $zero, 92
	pcalau12i	$a0, %pc_hi20(.LJTI5_1)
	addi.d	$s5, $a0, %pc_lo12(.LJTI5_1)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s6, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s7, $a0, %pc_lo12(.L.str.3)
	move	$s8, $zero
	b	.LBB5_28
	.p2align	4, , 16
.LBB5_25:                               #   in Loop: Header=BB5_28 Depth=1
	st.b	$s4, $sp, 21
	st.b	$a0, $sp, 22
	st.b	$zero, $sp, 23
.LBB5_26:                               #   in Loop: Header=BB5_28 Depth=1
	addi.d	$a1, $sp, 21
.LBB5_27:                               #   in Loop: Header=BB5_28 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gput_st)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, 1
	beq	$s1, $s8, .LBB5_34
.LBB5_28:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 16
	ldx.bu	$a0, $a0, $s8
	addi.d	$a1, $a0, -9
	bltu	$s3, $a1, .LBB5_31
# %bb.29:                               #   in Loop: Header=BB5_28 Depth=1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s5, $a1
	add.d	$a2, $s5, $a1
	move	$a1, $s2
	jr	$a2
.LBB5_30:                               #   in Loop: Header=BB5_28 Depth=1
	move	$a1, $s6
	b	.LBB5_27
	.p2align	4, , 16
.LBB5_31:                               #   in Loop: Header=BB5_28 Depth=1
	beq	$a0, $s4, .LBB5_25
.LBB5_32:                               #   in Loop: Header=BB5_28 Depth=1
	st.b	$a0, $sp, 21
	st.b	$zero, $sp, 22
	b	.LBB5_26
.LBB5_33:                               #   in Loop: Header=BB5_28 Depth=1
	move	$a1, $s7
	b	.LBB5_27
.LBB5_34:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gput_st)
	jirl	$ra, $ra, 0
.LBB5_35:
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end5:
	.size	array_prin1, .Lfunc_end5-array_prin1
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI5_0:
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_4-.LJTI5_0
	.word	.LBB5_8-.LJTI5_0
	.word	.LBB5_17-.LJTI5_0
	.word	.LBB5_35-.LJTI5_0
	.word	.LBB5_13-.LJTI5_0
.LJTI5_1:
	.word	.LBB5_30-.LJTI5_1
	.word	.LBB5_27-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_33-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_32-.LJTI5_1
	.word	.LBB5_25-.LJTI5_1
                                        # -- End function
	.text
	.globl	array_fast_print                # -- Begin function array_fast_print
	.p2align	5
	.type	array_fast_print,@function
array_fast_print:                       # @array_fast_print
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a1
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $fp, 2
	addi.d	$a2, $a1, -13
	ori	$a3, $zero, 5
	bltu	$a3, $a2, .LBB6_3
# %bb.1:
	move	$s0, $a0
	slli.d	$a0, $a2, 2
	pcalau12i	$a2, %pc_hi20(.LJTI6_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI6_0)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB6_2:
	move	$a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 8
	b	.LBB6_7
.LBB6_3:
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(errswitch)
	jr	$t8
.LBB6_4:
	ori	$a0, $zero, 14
	b	.LBB6_6
.LBB6_5:
	ori	$a0, $zero, 15
.LBB6_6:                                # %.loopexit
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	slli.w	$s1, $a0, 3
.LBB6_7:                                # %.loopexit
	st.d	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ori	$a2, $zero, 1
	move	$a1, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB6_8:                                # %.loopexit
	move	$a0, $zero
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB6_9:
	ori	$a0, $zero, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 8
	addi.w	$s3, $s2, 0
	st.d	$s3, $sp, 8
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB6_8
# %bb.10:                               # %.lr.ph
	move	$s0, $zero
	bstrpick.d	$s2, $s2, 30, 0
	.p2align	4, , 16
.LBB6_11:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$a0, $a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fast_print)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	addi.d	$s0, $s0, 8
	bnez	$s2, .LBB6_11
	b	.LBB6_8
.Lfunc_end6:
	.size	array_fast_print, .Lfunc_end6-array_fast_print
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI6_0:
	.word	.LBB6_2-.LJTI6_0
	.word	.LBB6_4-.LJTI6_0
	.word	.LBB6_5-.LJTI6_0
	.word	.LBB6_9-.LJTI6_0
	.word	.LBB6_3-.LJTI6_0
	.word	.LBB6_2-.LJTI6_0
                                        # -- End function
	.text
	.globl	array_fast_read                 # -- Begin function array_fast_read
	.p2align	5
	.type	array_fast_read,@function
array_fast_read:                        # @array_fast_read
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a1
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, -13
	ori	$a2, $zero, 5
	bltu	$a2, $a1, .LBB7_5
# %bb.1:
	move	$fp, $a0
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI7_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI7_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB7_2:
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 8
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 13
	addi.w	$a1, $zero, -1
	st.h	$a0, $s0, 2
	move	$s3, $s1
	bne	$s1, $a1, .LBB7_4
# %bb.3:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
.LBB7_4:                                # %strcons.exit
	addi.d	$a0, $s3, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	st.d	$s3, $s0, 8
	stx.b	$zero, $a0, $s3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	ori	$a2, $zero, 1
	move	$a1, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	stx.b	$zero, $a0, $s1
	b	.LBB7_14
.LBB7_5:
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(errswitch)
	jr	$t8
.LBB7_6:
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 8
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 15
	b	.LBB7_8
.LBB7_7:
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 8
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 14
.LBB7_8:                                # %.loopexit
	pcaddu18i	$ra, %call36(newcell)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $a0, 8
	slli.d	$a0, $s1, 3
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	ori	$a1, $zero, 8
	move	$a2, $s1
	b	.LBB7_13
.LBB7_9:
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 8
	pcalau12i	$a0, %pc_hi20(bashnum)
	ld.d	$a0, $a0, %pc_lo12(bashnum)
	movgr2fr.d	$fa0, $fp
	ffint.d.l	$fa0, $fa0
	fst.d	$fa0, $a0, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons_array)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	blez	$fp, .LBB7_14
# %bb.10:                               # %.lr.ph
	move	$s2, $zero
	.p2align	4, , 16
.LBB7_11:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fast_read)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 16
	stx.d	$a0, $a1, $s2
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 8
	bnez	$fp, .LBB7_11
	b	.LBB7_14
.LBB7_12:
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 8
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 18
	pcaddu18i	$ra, %call36(newcell)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $a0, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	ori	$a2, $zero, 1
	move	$a1, $s1
.LBB7_13:                               # %.loopexit
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
.LBB7_14:                               # %.loopexit
	move	$a0, $s0
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end7:
	.size	array_fast_read, .Lfunc_end7-array_fast_read
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI7_0:
	.word	.LBB7_2-.LJTI7_0
	.word	.LBB7_7-.LJTI7_0
	.word	.LBB7_6-.LJTI7_0
	.word	.LBB7_9-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_12-.LJTI7_0
                                        # -- End function
	.text
	.globl	array_equal                     # -- Begin function array_equal
	.p2align	5
	.type	array_equal,@function
array_equal:                            # @array_equal
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB8_5
# %bb.1:
	move	$fp, $a1
	move	$s0, $a0
	ld.hu	$a0, $a0, 2
	addi.d	$a0, $a0, -13
	ori	$a1, $zero, 5
	bltu	$a1, $a0, .LBB8_5
# %bb.2:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI8_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI8_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB8_3:
	ld.d	$a2, $s0, 8
	ld.d	$a0, $fp, 8
	bne	$a2, $a0, .LBB8_20
# %bb.4:
	ld.d	$a0, $s0, 16
	ld.d	$a1, $fp, 16
	b	.LBB8_13
.LBB8_5:                                # %.thread
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(errswitch)
	jr	$t8
.LBB8_6:
	ld.d	$a0, $s0, 8
	ld.d	$a1, $fp, 8
	bne	$a0, $a1, .LBB8_20
# %bb.7:                                # %.preheader
	blez	$a0, .LBB8_19
# %bb.8:                                # %.lr.ph49
	ld.d	$a1, $s0, 16
	ld.d	$a2, $fp, 16
	.p2align	4, , 16
.LBB8_9:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a2, 0
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB8_20
# %bb.10:                               #   in Loop: Header=BB8_9 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB8_9
	b	.LBB8_19
.LBB8_11:
	ld.d	$a2, $s0, 8
	ld.d	$a0, $fp, 8
	bne	$a2, $a0, .LBB8_20
# %bb.12:
	ld.d	$a0, $s0, 16
	ld.d	$a1, $fp, 16
	slli.d	$a2, $a2, 3
.LBB8_13:                               # %.loopexit
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %got_pc_hi20(sym_t)
	ld.d	$a1, $a1, %got_pc_lo12(sym_t)
	ld.d	$a1, $a1, 0
	maskeqz	$a0, $a1, $a0
	b	.LBB8_21
.LBB8_14:
	ld.d	$s1, $s0, 8
	ld.d	$a0, $fp, 8
	bne	$s1, $a0, .LBB8_20
# %bb.15:                               # %.preheader45
	blez	$s1, .LBB8_19
# %bb.16:                               # %.lr.ph
	move	$s2, $zero
	.p2align	4, , 16
.LBB8_17:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 16
	ld.d	$a1, $fp, 16
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $a1, $s2
	pcaddu18i	$ra, %call36(equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_20
# %bb.18:                               #   in Loop: Header=BB8_17 Depth=1
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB8_17
.LBB8_19:                               # %._crit_edge50
	pcalau12i	$a0, %got_pc_hi20(sym_t)
	ld.d	$a0, $a0, %got_pc_lo12(sym_t)
	ld.d	$a0, $a0, 0
	b	.LBB8_21
.LBB8_20:
	move	$a0, $zero
.LBB8_21:                               # %.loopexit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	array_equal, .Lfunc_end8-array_equal
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI8_0:
	.word	.LBB8_3-.LJTI8_0
	.word	.LBB8_6-.LJTI8_0
	.word	.LBB8_11-.LJTI8_0
	.word	.LBB8_14-.LJTI8_0
	.word	.LBB8_5-.LJTI8_0
	.word	.LBB8_3-.LJTI8_0
                                        # -- End function
	.text
	.globl	array_sxhash                    # -- Begin function array_sxhash
	.p2align	5
	.type	array_sxhash,@function
array_sxhash:                           # @array_sxhash
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	beqz	$a0, .LBB9_6
# %bb.1:
	move	$fp, $a1
	move	$s0, $a0
	ld.hu	$a0, $a0, 2
	addi.d	$a0, $a0, -13
	ori	$a1, $zero, 5
	bltu	$a1, $a0, .LBB9_6
# %bb.2:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI9_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI9_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB9_3:
	ld.d	$a1, $s0, 8
	blez	$a1, .LBB9_7
# %bb.4:                                # %.lr.ph71.preheader
	ld.d	$a2, $s0, 16
	move	$a0, $zero
	.p2align	4, , 16
.LBB9_5:                                # %.lr.ph71
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a2, 0
	alsl.d	$a0, $a0, $a0, 4
	addi.d	$a0, $a0, 1
	xor	$a0, $a0, $a3
	mod.d	$a0, $a0, $fp
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB9_5
	b	.LBB9_8
.LBB9_6:                                # %.thread
	pcaddu18i	$ra, %call36(errswitch)
	jirl	$ra, $ra, 0
.LBB9_7:                                # %.loopexit
	move	$a0, $zero
.LBB9_8:                                # %.loopexit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB9_9:
	ld.d	$a1, $s0, 8
	blez	$a1, .LBB9_7
# %bb.10:                               # %.lr.ph61.preheader
	move	$a0, $zero
	ld.d	$a2, $s0, 16
	lu52i.d	$a3, $zero, 1086
	movgr2fr.d	$fa0, $a3
	lu52i.d	$a3, $zero, -2048
	.p2align	4, , 16
.LBB9_11:                               # %.lr.ph61
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a2, 0
	alsl.d	$a0, $a0, $a0, 4
	addi.d	$a0, $a0, 1
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsub.d	$fa2, $fa1, $fa0
	ftintrz.l.d	$fa2, $fa2
	movfr2gr.d	$a4, $fa2
	xor	$a4, $a4, $a3
	movcf2gr	$a5, $fcc0
	masknez	$a4, $a4, $a5
	ftintrz.l.d	$fa1, $fa1
	movfr2gr.d	$a6, $fa1
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	mod.du	$a4, $a4, $fp
	xor	$a0, $a4, $a0
	mod.du	$a0, $a0, $fp
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB9_11
	b	.LBB9_8
.LBB9_12:
	ld.d	$a1, $s0, 8
	blez	$a1, .LBB9_7
# %bb.13:                               # %.lr.ph66.preheader
	ld.d	$a2, $s0, 16
	move	$a0, $zero
	.p2align	4, , 16
.LBB9_14:                               # %.lr.ph66
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	alsl.d	$a0, $a0, $a0, 4
	addi.d	$a0, $a0, 1
	mod.du	$a3, $a3, $fp
	xor	$a0, $a3, $a0
	mod.du	$a0, $a0, $fp
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB9_14
	b	.LBB9_8
.LBB9_15:
	ld.d	$s1, $s0, 8
	blez	$s1, .LBB9_7
# %bb.16:                               # %.lr.ph
	move	$s2, $zero
	move	$a0, $zero
	.p2align	4, , 16
.LBB9_17:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 16
	ldx.d	$a1, $a1, $s2
	alsl.d	$a0, $a0, $a0, 4
	addi.d	$s3, $a0, 1
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(c_sxhash)
	jirl	$ra, $ra, 0
	xor	$a0, $a0, $s3
	mod.d	$a0, $a0, $fp
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB9_17
	b	.LBB9_8
.Lfunc_end9:
	.size	array_sxhash, .Lfunc_end9-array_sxhash
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI9_0:
	.word	.LBB9_3-.LJTI9_0
	.word	.LBB9_9-.LJTI9_0
	.word	.LBB9_12-.LJTI9_0
	.word	.LBB9_15-.LJTI9_0
	.word	.LBB9_6-.LJTI9_0
	.word	.LBB9_3-.LJTI9_0
                                        # -- End function
	.text
	.globl	init_storage_a                  # -- Begin function init_storage_a
	.p2align	5
	.type	init_storage_a,@function
init_storage_a:                         # @init_storage_a
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(bashnum)
	addi.d	$fp, $a0, %pc_lo12(bashnum)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gc_protect)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(newcell)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(array_gc_relocate)
	addi.d	$fp, $a0, %pc_lo12(array_gc_relocate)
	pcalau12i	$a0, %pc_hi20(array_gc_mark)
	addi.d	$s0, $a0, %pc_lo12(array_gc_mark)
	pcalau12i	$a0, %pc_hi20(array_gc_scan)
	addi.d	$s1, $a0, %pc_lo12(array_gc_scan)
	pcalau12i	$a0, %pc_hi20(array_gc_free)
	addi.d	$s2, $a0, %pc_lo12(array_gc_free)
	ori	$a0, $zero, 13
	addi.d	$a5, $sp, 8
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(set_gc_hooks)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(array_prin1)
	addi.d	$s3, $a0, %pc_lo12(array_prin1)
	ori	$a0, $zero, 13
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_print_hooks)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 13
	pcaddu18i	$ra, %call36(get_user_type_hooks)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(array_fast_print)
	addi.d	$s4, $a1, %pc_lo12(array_fast_print)
	st.d	$s4, $a0, 56
	pcalau12i	$a1, %pc_hi20(array_fast_read)
	addi.d	$s5, $a1, %pc_lo12(array_fast_read)
	st.d	$s5, $a0, 64
	pcalau12i	$a1, %pc_hi20(array_equal)
	addi.d	$s6, $a1, %pc_lo12(array_equal)
	st.d	$s6, $a0, 72
	pcalau12i	$a1, %pc_hi20(array_sxhash)
	addi.d	$s7, $a1, %pc_lo12(array_sxhash)
	st.d	$s7, $a0, 48
	ori	$a0, $zero, 14
	addi.d	$a5, $sp, 8
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(set_gc_hooks)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 14
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_print_hooks)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 14
	pcaddu18i	$ra, %call36(get_user_type_hooks)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 56
	st.d	$s5, $a0, 64
	st.d	$s6, $a0, 72
	st.d	$s7, $a0, 48
	ori	$a0, $zero, 15
	addi.d	$a5, $sp, 8
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(set_gc_hooks)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 15
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_print_hooks)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 15
	pcaddu18i	$ra, %call36(get_user_type_hooks)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 56
	st.d	$s5, $a0, 64
	st.d	$s6, $a0, 72
	st.d	$s7, $a0, 48
	ori	$a0, $zero, 16
	addi.d	$a5, $sp, 8
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(set_gc_hooks)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 16
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_print_hooks)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(get_user_type_hooks)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 56
	st.d	$s5, $a0, 64
	st.d	$s6, $a0, 72
	st.d	$s7, $a0, 48
	ori	$a0, $zero, 18
	addi.d	$a5, $sp, 8
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(set_gc_hooks)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 18
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_print_hooks)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 18
	pcaddu18i	$ra, %call36(get_user_type_hooks)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 56
	st.d	$s5, $a0, 64
	st.d	$s6, $a0, 72
	st.d	$s7, $a0, 48
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end10:
	.size	init_storage_a, .Lfunc_end10-init_storage_a
                                        # -- End function
	.globl	strcons                         # -- Begin function strcons
	.p2align	5
	.type	strcons,@function
strcons:                                # @strcons
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a1
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 13
	addi.w	$a1, $zero, -1
	st.h	$a0, $s1, 2
	bne	$s0, $a1, .LBB11_2
# %bb.1:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.LBB11_2:
	addi.d	$a0, $s0, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	st.d	$s0, $s1, 8
	beqz	$s2, .LBB11_4
# %bb.3:
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
.LBB11_4:
	stx.b	$zero, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	strcons, .Lfunc_end11-strcons
                                        # -- End function
	.globl	rfs_getc                        # -- Begin function rfs_getc
	.p2align	5
	.type	rfs_getc,@function
rfs_getc:                               # @rfs_getc
# %bb.0:
	move	$a1, $a0
	ld.d	$a2, $a0, 0
	ld.bu	$a0, $a2, 0
	beqz	$a0, .LBB12_2
# %bb.1:
	addi.d	$a2, $a2, 1
	st.d	$a2, $a1, 0
	ret
.LBB12_2:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end12:
	.size	rfs_getc, .Lfunc_end12-rfs_getc
                                        # -- End function
	.globl	rfs_ungetc                      # -- Begin function rfs_ungetc
	.p2align	5
	.type	rfs_ungetc,@function
rfs_ungetc:                             # @rfs_ungetc
# %bb.0:
	ld.d	$a0, $a1, 0
	addi.d	$a0, $a0, -1
	st.d	$a0, $a1, 0
	ret
.Lfunc_end13:
	.size	rfs_ungetc, .Lfunc_end13-rfs_ungetc
                                        # -- End function
	.globl	read_from_string                # -- Begin function read_from_string
	.p2align	5
	.type	read_from_string,@function
read_from_string:                       # @read_from_string
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32
	pcalau12i	$a0, %pc_hi20(rfs_getc)
	addi.d	$a0, $a0, %pc_lo12(rfs_getc)
	st.d	$a0, $sp, 8
	pcalau12i	$a0, %pc_hi20(rfs_ungetc)
	addi.d	$a0, $a0, %pc_lo12(rfs_ungetc)
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 32
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readtl)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end14:
	.size	read_from_string, .Lfunc_end14-read_from_string
                                        # -- End function
	.globl	pts_puts                        # -- Begin function pts_puts
	.p2align	5
	.type	pts_puts,@function
pts_puts:                               # @pts_puts
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 16
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	move	$s3, $a0
	sub.d	$s5, $a1, $a0
	sltu	$a0, $s2, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s2, $a0
	or	$s4, $a0, $a1
	add.d	$a0, $s1, $s3
	move	$a1, $s0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	add.d	$a0, $a0, $s3
	stx.b	$zero, $a0, $s4
	bgeu	$s5, $s2, .LBB15_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB15_2:
	ori	$a0, $zero, 1
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end15:
	.size	pts_puts, .Lfunc_end15-pts_puts
                                        # -- End function
	.globl	err_wta_str                     # -- Begin function err_wta_str
	.p2align	5
	.type	err_wta_str,@function
err_wta_str:                            # @err_wta_str
# %bb.0:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end16:
	.size	err_wta_str, .Lfunc_end16-err_wta_str
                                        # -- End function
	.globl	print_to_string                 # -- Begin function print_to_string
	.p2align	5
	.type	print_to_string,@function
print_to_string:                        # @print_to_string
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	move	$s0, $a2
	move	$fp, $a1
	beqz	$a1, .LBB17_2
# %bb.1:
	ld.hu	$a1, $fp, 2
	ori	$a2, $zero, 13
	beq	$a1, $a2, .LBB17_3
.LBB17_2:                               # %.critedge
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s1
.LBB17_3:
	st.d	$zero, $sp, 8
	pcalau12i	$a1, %pc_hi20(pts_puts)
	addi.d	$a1, $a1, %pc_lo12(pts_puts)
	st.d	$a1, $sp, 16
	st.d	$fp, $sp, 24
	bnez	$s0, .LBB17_5
# %bb.4:
	ld.d	$a1, $fp, 16
	st.b	$zero, $a1, 0
.LBB17_5:
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(lprin1g)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end17:
	.size	print_to_string, .Lfunc_end17-print_to_string
                                        # -- End function
	.globl	aref1                           # -- Begin function aref1
	.p2align	5
	.type	aref1,@function
aref1:                                  # @aref1
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	beqz	$a1, .LBB18_4
# %bb.1:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB18_4
# %bb.2:
	fld.d	$fa0, $s0, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$s1, $fa0
	bltz	$s1, .LBB18_5
.LBB18_3:
	bnez	$fp, .LBB18_6
	b	.LBB18_11
.LBB18_4:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s0, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$s1, $fa0
	bgez	$s1, .LBB18_3
.LBB18_5:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB18_11
.LBB18_6:
	ld.hu	$a0, $fp, 2
	addi.d	$a0, $a0, -13
	ori	$a1, $zero, 5
	bltu	$a1, $a0, .LBB18_11
# %bb.7:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI18_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI18_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB18_8:
	ld.d	$a0, $fp, 8
	blt	$s1, $a0, .LBB18_10
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB18_10:
	ld.d	$a0, $fp, 16
	ldx.bu	$a0, $a0, $s1
	b	.LBB18_24
.LBB18_11:                              # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	move	$a1, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB18_12:
	ld.d	$a0, $fp, 8
	blt	$s1, $a0, .LBB18_14
# %bb.13:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB18_14:
	ld.d	$a0, $fp, 16
	slli.d	$a1, $s1, 3
	ldx.d	$a0, $a0, $a1
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	b	.LBB18_25
.LBB18_15:
	ld.d	$a0, $fp, 8
	blt	$s1, $a0, .LBB18_17
# %bb.16:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB18_17:
	ld.d	$a0, $fp, 16
	slli.d	$a1, $s1, 3
	fldx.d	$fa0, $a0, $a1
	b	.LBB18_25
.LBB18_18:
	ld.d	$a0, $fp, 8
	blt	$s1, $a0, .LBB18_20
# %bb.19:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB18_20:
	ld.d	$a0, $fp, 16
	slli.d	$a1, $s1, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB18_21:
	ld.d	$a0, $fp, 8
	blt	$s1, $a0, .LBB18_23
# %bb.22:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB18_23:
	ld.d	$a0, $fp, 16
	ldx.b	$a0, $a0, $s1
.LBB18_24:
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
.LBB18_25:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end18:
	.size	aref1, .Lfunc_end18-aref1
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI18_0:
	.word	.LBB18_8-.LJTI18_0
	.word	.LBB18_15-.LJTI18_0
	.word	.LBB18_12-.LJTI18_0
	.word	.LBB18_18-.LJTI18_0
	.word	.LBB18_11-.LJTI18_0
	.word	.LBB18_21-.LJTI18_0
                                        # -- End function
	.text
	.globl	err1_aset1                      # -- Begin function err1_aset1
	.p2align	5
	.type	err1_aset1,@function
err1_aset1:                             # @err1_aset1
# %bb.0:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end19:
	.size	err1_aset1, .Lfunc_end19-err1_aset1
                                        # -- End function
	.globl	err2_aset1                      # -- Begin function err2_aset1
	.p2align	5
	.type	err2_aset1,@function
err2_aset1:                             # @err2_aset1
# %bb.0:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end20:
	.size	err2_aset1, .Lfunc_end20-err2_aset1
                                        # -- End function
	.globl	aset1                           # -- Begin function aset1
	.p2align	5
	.type	aset1,@function
aset1:                                  # @aset1
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	beqz	$a1, .LBB21_4
# %bb.1:
	ld.hu	$a0, $s1, 2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB21_4
# %bb.2:
	fld.d	$fa0, $s1, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$s2, $fa0
	bltz	$s2, .LBB21_5
.LBB21_3:
	bnez	$s0, .LBB21_6
	b	.LBB21_14
.LBB21_4:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$s2, $fa0
	bgez	$s2, .LBB21_3
.LBB21_5:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB21_14
.LBB21_6:
	ld.hu	$a0, $s0, 2
	addi.d	$a0, $a0, -13
	ori	$a1, $zero, 5
	bltu	$a1, $a0, .LBB21_14
# %bb.7:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI21_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI21_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB21_8:
	beqz	$fp, .LBB21_10
# %bb.9:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB21_11
.LBB21_10:                              # %.critedge57
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB21_11:
	ld.d	$a0, $s0, 8
	blt	$s2, $a0, .LBB21_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB21_13:
	fld.d	$fa0, $fp, 8
	ld.d	$a0, $s0, 16
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	stx.b	$a1, $a0, $s2
	b	.LBB21_31
.LBB21_14:                              # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	move	$a1, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB21_15:
	beqz	$fp, .LBB21_17
# %bb.16:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB21_18
.LBB21_17:                              # %.critedge59
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB21_18:
	ld.d	$a0, $s0, 8
	blt	$s2, $a0, .LBB21_20
# %bb.19:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB21_20:
	fld.d	$fa0, $fp, 8
	ld.d	$a0, $s0, 16
	b	.LBB21_27
.LBB21_21:
	beqz	$fp, .LBB21_23
# %bb.22:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB21_24
.LBB21_23:                              # %.critedge61
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB21_24:
	ld.d	$a0, $s0, 8
	blt	$s2, $a0, .LBB21_26
# %bb.25:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB21_26:
	fld.d	$fa0, $fp, 8
	ld.d	$a0, $s0, 16
	ftintrz.l.d	$fa0, $fa0
.LBB21_27:
	slli.d	$a1, $s2, 3
	fstx.d	$fa0, $a0, $a1
	b	.LBB21_31
.LBB21_28:
	ld.d	$a0, $s0, 8
	blt	$s2, $a0, .LBB21_30
# %bb.29:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB21_30:
	ld.d	$a0, $s0, 16
	slli.d	$a1, $s2, 3
	stx.d	$fp, $a0, $a1
.LBB21_31:
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end21:
	.size	aset1, .Lfunc_end21-aset1
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI21_0:
	.word	.LBB21_8-.LJTI21_0
	.word	.LBB21_15-.LJTI21_0
	.word	.LBB21_21-.LJTI21_0
	.word	.LBB21_28-.LJTI21_0
	.word	.LBB21_14-.LJTI21_0
	.word	.LBB21_8-.LJTI21_0
                                        # -- End function
	.text
	.globl	arcons                          # -- Begin function arcons
	.p2align	5
	.type	arcons,@function
arcons:                                 # @arcons
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s3, $a2
	move	$s1, $a1
	move	$fp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, -13
	ori	$a2, $zero, 5
	move	$s2, $a0
	bltu	$a2, $a1, .LBB22_10
# %bb.1:
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI22_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI22_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB22_2:
	st.d	$s1, $s2, 8
	addi.d	$a0, $s1, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	stx.b	$zero, $a0, $s1
	beqz	$s3, .LBB22_6
# %bb.3:
	blez	$s1, .LBB22_6
# %bb.4:                                # %.lr.ph67.preheader
	move	$a0, $zero
	ori	$a1, $zero, 32
	.p2align	4, , 16
.LBB22_5:                               # %.lr.ph67
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s2, 16
	stx.b	$a1, $a2, $a0
	addi.d	$a0, $a0, 1
	bne	$s1, $a0, .LBB22_5
.LBB22_6:                               # %.loopexit63
	st.d	$s1, $s2, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	beqz	$s3, .LBB22_22
# %bb.7:                                # %.loopexit63
	blez	$s1, .LBB22_22
# %bb.8:                                # %.lr.ph69.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB22_9:                               # %.lr.ph69
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 16
	stx.b	$zero, $a1, $a0
	addi.d	$a0, $a0, 1
	bne	$s1, $a0, .LBB22_9
	b	.LBB22_22
.LBB22_10:
	pcaddu18i	$ra, %call36(errswitch)
	jirl	$ra, $ra, 0
	b	.LBB22_22
.LBB22_11:
	st.d	$s1, $s2, 8
	slli.d	$a0, $s1, 3
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	beqz	$s3, .LBB22_22
# %bb.12:
	blez	$s1, .LBB22_22
# %bb.13:                               # %.lr.ph73.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB22_14:                              # %.lr.ph73
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 16
	stx.d	$zero, $a1, $a0
	addi.d	$s1, $s1, -1
	addi.d	$a0, $a0, 8
	bnez	$s1, .LBB22_14
	b	.LBB22_22
.LBB22_15:
	st.d	$s1, $s2, 8
	slli.d	$a0, $s1, 3
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	beqz	$s3, .LBB22_22
# %bb.16:
	blez	$s1, .LBB22_22
# %bb.17:                               # %.lr.ph71.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB22_18:                              # %.lr.ph71
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 16
	stx.d	$zero, $a1, $a0
	addi.d	$s1, $s1, -1
	addi.d	$a0, $a0, 8
	bnez	$s1, .LBB22_18
	b	.LBB22_22
.LBB22_19:
	st.d	$s1, $s2, 8
	slli.d	$a0, $s1, 3
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	blez	$s1, .LBB22_22
# %bb.20:                               # %.lr.ph.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB22_21:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 16
	stx.d	$zero, $a1, $a0
	addi.d	$s1, $s1, -1
	addi.d	$a0, $a0, 8
	bnez	$s1, .LBB22_21
.LBB22_22:                              # %.loopexit
	st.h	$fp, $s2, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end22:
	.size	arcons, .Lfunc_end22-arcons
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI22_0:
	.word	.LBB22_2-.LJTI22_0
	.word	.LBB22_11-.LJTI22_0
	.word	.LBB22_15-.LJTI22_0
	.word	.LBB22_19-.LJTI22_0
	.word	.LBB22_10-.LJTI22_0
	.word	.LBB22_6-.LJTI22_0
                                        # -- End function
	.text
	.globl	mallocl                         # -- Begin function mallocl
	.p2align	5
	.type	mallocl,@function
mallocl:                                # @mallocl
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	srli.d	$a0, $a1, 3
	andi	$a1, $a1, 7
	sltu	$a1, $zero, $a1
	add.d	$s2, $a0, $a1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s2, $a0, 8
	slli.d	$a0, $s2, 3
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	ori	$a0, $zero, 15
	st.h	$a0, $s1, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
	st.d	$a0, $fp, 0
	move	$a0, $s1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end23:
	.size	mallocl, .Lfunc_end23-mallocl
                                        # -- End function
	.globl	cons_array                      # -- Begin function cons_array
	.p2align	5
	.type	cons_array,@function
cons_array:                             # @cons_array
# %bb.0:
	move	$a2, $a0
	beqz	$a0, .LBB24_3
# %bb.1:
	ld.hu	$a0, $a2, 2
	ori	$a3, $zero, 2
	bne	$a0, $a3, .LBB24_3
# %bb.2:
	fld.d	$fa0, $a2, 8
	movgr2fr.d	$fa1, $zero
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB24_4
.LBB24_3:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	move	$a1, $a2
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB24_4:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$s0, $fa0
	ori	$a0, $zero, 1
	move	$s2, $a1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	beq	$a0, $s2, .LBB24_11
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	beq	$a0, $s2, .LBB24_14
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	beq	$a0, $s2, .LBB24_17
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	beq	$a0, $s2, .LBB24_20
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB24_23
# %bb.9:
	move	$a1, $s2
	beq	$a0, $s2, .LBB24_23
# %bb.10:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	b	.LBB24_26
.LBB24_11:
	ori	$a0, $zero, 14
	st.h	$a0, $s1, 2
	st.d	$s0, $s1, 8
	slli.d	$a0, $s0, 3
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	blez	$s0, .LBB24_26
# %bb.12:                               # %.lr.ph83.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB24_13:                              # %.lr.ph83
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 16
	stx.d	$zero, $a1, $a0
	addi.d	$s0, $s0, -1
	addi.d	$a0, $a0, 8
	bnez	$s0, .LBB24_13
	b	.LBB24_26
.LBB24_14:
	ori	$a0, $zero, 15
	st.h	$a0, $s1, 2
	st.d	$s0, $s1, 8
	slli.d	$a0, $s0, 3
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	blez	$s0, .LBB24_26
# %bb.15:                               # %.lr.ph81.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB24_16:                              # %.lr.ph81
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 16
	stx.d	$zero, $a1, $a0
	addi.d	$s0, $s0, -1
	addi.d	$a0, $a0, 8
	bnez	$s0, .LBB24_16
	b	.LBB24_26
.LBB24_17:
	ori	$a0, $zero, 13
	st.h	$a0, $s1, 2
	st.d	$s0, $s1, 8
	addi.d	$a0, $s0, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	stx.b	$zero, $a0, $s0
	blez	$s0, .LBB24_26
# %bb.18:                               # %.lr.ph79.preheader
	move	$a0, $zero
	ori	$a1, $zero, 32
	.p2align	4, , 16
.LBB24_19:                              # %.lr.ph79
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s1, 16
	stx.b	$a1, $a2, $a0
	addi.d	$a0, $a0, 1
	bne	$s0, $a0, .LBB24_19
	b	.LBB24_26
.LBB24_20:
	ori	$a0, $zero, 18
	st.h	$a0, $s1, 2
	st.d	$s0, $s1, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	blez	$s0, .LBB24_26
# %bb.21:                               # %.lr.ph77.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB24_22:                              # %.lr.ph77
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 16
	stx.b	$zero, $a1, $a0
	addi.d	$a0, $a0, 1
	bne	$s0, $a0, .LBB24_22
	b	.LBB24_26
.LBB24_23:
	ori	$a0, $zero, 16
	st.h	$a0, $s1, 2
	st.d	$s0, $s1, 8
	slli.d	$a0, $s0, 3
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	blez	$s0, .LBB24_26
# %bb.24:                               # %.lr.ph.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB24_25:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 16
	stx.d	$zero, $a1, $a0
	addi.d	$s0, $s0, -1
	addi.d	$a0, $a0, 8
	bnez	$s0, .LBB24_25
.LBB24_26:                              # %.loopexit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end24:
	.size	cons_array, .Lfunc_end24-cons_array
                                        # -- End function
	.globl	string_append                   # -- Begin function string_append
	.p2align	5
	.type	string_append,@function
string_append:                          # @string_append
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB25_3
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $zero
	move	$s2, $a0
	.p2align	4, , 16
.LBB25_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$fp, $a0, $fp
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB25_2
	b	.LBB25_4
.LBB25_3:
	move	$s2, $a0
	move	$fp, $zero
.LBB25_4:                               # %._crit_edge
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 13
	addi.w	$a1, $zero, -1
	st.h	$a0, $s0, 2
	bne	$fp, $a1, .LBB25_6
# %bb.5:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB25_6:                               # %strcons.exit
	addi.d	$a0, $fp, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	st.d	$fp, $s0, 8
	stx.b	$zero, $a0, $fp
	move	$a0, $s1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, 16
	st.b	$zero, $fp, 0
	beqz	$s2, .LBB25_9
# %bb.7:                                # %.lr.ph20.preheader
	move	$s1, $s2
	.p2align	4, , 16
.LBB25_8:                               # %.lr.ph20
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB25_8
.LBB25_9:                               # %._crit_edge21
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end25:
	.size	string_append, .Lfunc_end25-string_append
                                        # -- End function
	.globl	bytes_append                    # -- Begin function bytes_append
	.p2align	5
	.type	bytes_append,@function
bytes_append:                           # @bytes_append
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB26_3
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $zero
	move	$s2, $a0
	.p2align	4, , 16
.LBB26_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(get_c_string_dim)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0
	add.d	$s0, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB26_2
	b	.LBB26_4
.LBB26_3:
	move	$s2, $a0
	move	$s0, $zero
.LBB26_4:                               # %._crit_edge
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s0, $a0, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	ori	$a0, $zero, 18
	st.h	$a0, $fp, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB26_7
# %bb.5:                                # %.lr.ph25.preheader
	move	$s0, $s2
	ld.d	$s1, $fp, 16
	move	$s2, $zero
	.p2align	4, , 16
.LBB26_6:                               # %.lr.ph25
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(get_c_string_dim)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 0
	move	$a1, $a0
	add.d	$a0, $s1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0
	add.d	$s2, $a0, $s2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB26_6
.LBB26_7:                               # %._crit_edge26
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end26:
	.size	bytes_append, .Lfunc_end26-bytes_append
                                        # -- End function
	.globl	substring                       # -- Begin function substring
	.p2align	5
	.type	substring,@function
substring:                              # @substring
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a2
	move	$s1, $a1
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(get_c_string_dim)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$s1, .LBB27_2
# %bb.1:
	ld.hu	$a0, $s1, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB27_3
.LBB27_2:                               # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB27_3:                               # %get_c_long.exit
	fld.d	$fa0, $s1, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$s2, $fa0
	beqz	$s0, .LBB27_7
# %bb.4:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB27_6
# %bb.5:                                # %.critedge.i18
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB27_6:                               # %get_c_long.exit19
	fld.d	$fa0, $s0, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$s3, $fa0
	bgez	$s2, .LBB27_8
	b	.LBB27_9
.LBB27_7:
	ld.d	$s3, $sp, 8
	bltz	$s2, .LBB27_9
.LBB27_8:
	bge	$s3, $s2, .LBB27_10
.LBB27_9:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB27_10:
	bltz	$s3, .LBB27_12
# %bb.11:
	ld.d	$a0, $sp, 8
	bge	$a0, $s3, .LBB27_13
.LBB27_12:
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB27_13:
	sub.d	$s1, $s3, $s2
	add.d	$s3, $fp, $s2
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 13
	addi.w	$a1, $zero, -1
	st.h	$a0, $s2, 2
	bne	$s1, $a1, .LBB27_15
# %bb.14:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB27_15:
	addi.d	$a0, $s1, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	st.d	$s1, $s2, 8
	beqz	$fp, .LBB27_17
# %bb.16:
	move	$a1, $s3
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 16
.LBB27_17:                              # %strcons.exit
	stx.b	$zero, $a0, $s1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end27:
	.size	substring, .Lfunc_end27-substring
                                        # -- End function
	.globl	get_c_long                      # -- Begin function get_c_long
	.p2align	5
	.type	get_c_long,@function
get_c_long:                             # @get_c_long
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB28_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB28_3
.LBB28_2:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB28_3:
	fld.d	$fa0, $fp, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end28:
	.size	get_c_long, .Lfunc_end28-get_c_long
                                        # -- End function
	.globl	string_search                   # -- Begin function string_search
	.p2align	5
	.type	string_search,@function
string_search:                          # @string_search
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_2
# %bb.1:
	sub.d	$a0, $a0, $fp
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.LBB29_2:
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end29:
	.size	string_search, .Lfunc_end29-string_search
                                        # -- End function
	.globl	string_trim                     # -- Begin function string_trim
	.p2align	5
	.type	string_trim,@function
string_trim:                            # @string_trim
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	ld.bu	$a3, $a0, 0
	lu12i.w	$s0, 2
	beqz	$a3, .LBB30_5
# %bb.1:                                # %.lr.ph.preheader
	ori	$a1, $zero, 1
	ori	$a2, $s0, 1537
	lu32i.d	$a2, 1
	ori	$a4, $zero, 63
	.p2align	4, , 16
.LBB30_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bltu	$a4, $a3, .LBB30_5
# %bb.3:                                # %.lr.ph
                                        #   in Loop: Header=BB30_2 Depth=1
	sll.d	$a3, $a1, $a3
	and	$a3, $a3, $a2
	beqz	$a3, .LBB30_5
# %bb.4:                                #   in Loop: Header=BB30_2 Depth=1
	ld.bu	$a3, $a0, 1
	addi.d	$fp, $a0, 1
	move	$a0, $fp
	bnez	$a3, .LBB30_2
	b	.LBB30_6
.LBB30_5:
	move	$fp, $a0
.LBB30_6:                               # %.critedge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	ori	$a2, $s0, 1537
	lu32i.d	$a2, 1
	ori	$a3, $zero, 63
	.p2align	4, , 16
.LBB30_7:                               # =>This Inner Loop Header: Depth=1
	move	$s0, $a0
	add.d	$a0, $fp, $a0
	bgeu	$fp, $a0, .LBB30_10
# %bb.8:                                #   in Loop: Header=BB30_7 Depth=1
	ld.bu	$a0, $a0, -1
	bltu	$a3, $a0, .LBB30_10
# %bb.9:                                #   in Loop: Header=BB30_7 Depth=1
	sll.d	$a0, $a1, $a0
	and	$a4, $a0, $a2
	addi.d	$a0, $s0, -1
	bnez	$a4, .LBB30_7
.LBB30_10:                              # %.critedge2
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 13
	addi.w	$a1, $zero, -1
	st.h	$a0, $s2, 2
	bne	$s0, $a1, .LBB30_12
# %bb.11:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.LBB30_12:                              # %strcons.exit
	addi.d	$a0, $s0, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	st.d	$s0, $s2, 8
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 16
	stx.b	$zero, $a0, $s0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end30:
	.size	string_trim, .Lfunc_end30-string_trim
                                        # -- End function
	.globl	string_trim_left                # -- Begin function string_trim_left
	.p2align	5
	.type	string_trim_left,@function
string_trim_left:                       # @string_trim_left
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	ld.bu	$a3, $a0, 0
	beqz	$a3, .LBB31_5
# %bb.1:                                # %.lr.ph.preheader
	ori	$a1, $zero, 1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1537
	lu32i.d	$a2, 1
	ori	$a4, $zero, 63
	.p2align	4, , 16
.LBB31_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bltu	$a4, $a3, .LBB31_5
# %bb.3:                                # %.lr.ph
                                        #   in Loop: Header=BB31_2 Depth=1
	sll.d	$a3, $a1, $a3
	and	$a3, $a3, $a2
	beqz	$a3, .LBB31_5
# %bb.4:                                #   in Loop: Header=BB31_2 Depth=1
	ld.bu	$a3, $a0, 1
	addi.d	$fp, $a0, 1
	move	$a0, $fp
	bnez	$a3, .LBB31_2
	b	.LBB31_6
.LBB31_5:
	move	$fp, $a0
.LBB31_6:                               # %.critedge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 13
	addi.w	$a1, $zero, -1
	st.h	$a0, $s2, 2
	bne	$s1, $a1, .LBB31_8
# %bb.7:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB31_8:                               # %strcons.exit
	addi.d	$a0, $s1, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	st.d	$s1, $s2, 8
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 16
	stx.b	$zero, $a0, $s1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end31:
	.size	string_trim_left, .Lfunc_end31-string_trim_left
                                        # -- End function
	.globl	string_trim_right               # -- Begin function string_trim_right
	.p2align	5
	.type	string_trim_right,@function
string_trim_right:                      # @string_trim_right
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1537
	lu32i.d	$a2, 1
	ori	$a3, $zero, 63
	.p2align	4, , 16
.LBB32_1:                               # =>This Inner Loop Header: Depth=1
	move	$s0, $a0
	add.d	$a0, $fp, $a0
	bgeu	$fp, $a0, .LBB32_4
# %bb.2:                                #   in Loop: Header=BB32_1 Depth=1
	ld.bu	$a0, $a0, -1
	bltu	$a3, $a0, .LBB32_4
# %bb.3:                                #   in Loop: Header=BB32_1 Depth=1
	sll.d	$a0, $a1, $a0
	and	$a4, $a0, $a2
	addi.d	$a0, $s0, -1
	bnez	$a4, .LBB32_1
.LBB32_4:                               # %.critedge
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 13
	addi.w	$a1, $zero, -1
	st.h	$a0, $s2, 2
	bne	$s0, $a1, .LBB32_6
# %bb.5:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.LBB32_6:                               # %strcons.exit
	addi.d	$a0, $s0, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	st.d	$s0, $s2, 8
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 16
	stx.b	$zero, $a0, $s0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end32:
	.size	string_trim_right, .Lfunc_end32-string_trim_right
                                        # -- End function
	.globl	string_upcase                   # -- Begin function string_upcase
	.p2align	5
	.type	string_upcase,@function
string_upcase:                          # @string_upcase
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 13
	addi.w	$a1, $zero, -1
	st.h	$a0, $s0, 2
	move	$s3, $fp
	bne	$fp, $a1, .LBB33_2
# %bb.1:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
.LBB33_2:                               # %strcons.exit
	addi.d	$a0, $s3, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	st.d	$s3, $s0, 8
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	stx.b	$zero, $a0, $s3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	blez	$fp, .LBB33_5
# %bb.3:                                # %.lr.ph
	move	$s1, $a0
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB33_4:                               # =>This Inner Loop Header: Depth=1
	ld.b	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	slli.d	$a1, $a1, 2
	ldx.b	$a1, $a2, $a1
	st.b	$a1, $s1, 0
	addi.d	$fp, $fp, -1
	addi.d	$s1, $s1, 1
	bnez	$fp, .LBB33_4
.LBB33_5:                               # %._crit_edge
	move	$a0, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end33:
	.size	string_upcase, .Lfunc_end33-string_upcase
                                        # -- End function
	.globl	string_downcase                 # -- Begin function string_downcase
	.p2align	5
	.type	string_downcase,@function
string_downcase:                        # @string_downcase
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 13
	addi.w	$a1, $zero, -1
	st.h	$a0, $s0, 2
	move	$s3, $fp
	bne	$fp, $a1, .LBB34_2
# %bb.1:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
.LBB34_2:                               # %strcons.exit
	addi.d	$a0, $s3, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	st.d	$s3, $s0, 8
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	stx.b	$zero, $a0, $s3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	blez	$fp, .LBB34_5
# %bb.3:                                # %.lr.ph
	move	$s1, $a0
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB34_4:                               # =>This Inner Loop Header: Depth=1
	ld.b	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	slli.d	$a1, $a1, 2
	ldx.b	$a1, $a2, $a1
	st.b	$a1, $s1, 0
	addi.d	$fp, $fp, -1
	addi.d	$s1, $s1, 1
	bnez	$fp, .LBB34_4
.LBB34_5:                               # %._crit_edge
	move	$a0, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end34:
	.size	string_downcase, .Lfunc_end34-string_downcase
                                        # -- End function
	.globl	lreadstring                     # -- Begin function lreadstring
	.p2align	5
	.type	lreadstring,@function
lreadstring:                            # @lreadstring
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(tkbuffer)
	ld.d	$a0, $a0, %got_pc_lo12(tkbuffer)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s7, $a0, 0
	ori	$s5, $zero, 92
	addi.w	$s6, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI35_0)
	addi.d	$s1, $a0, %pc_lo12(.LJTI35_0)
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$s2, $a0, %pc_lo12(.L.str.34)
	lu12i.w	$a0, 1
	ori	$s8, $a0, 1023
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$s3, $a0, %pc_lo12(.L.str.35)
	move	$fp, $zero
	b	.LBB35_2
	.p2align	4, , 16
.LBB35_1:                               #   in Loop: Header=BB35_2 Depth=1
	st.b	$s4, $s7, 0
	addi.d	$s7, $s7, 1
	addi.w	$fp, $fp, 1
.LBB35_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_10 Depth 2
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s0, 16
	jirl	$ra, $a1, 0
	beq	$a0, $s5, .LBB35_7
# %bb.3:                                #   in Loop: Header=BB35_2 Depth=1
	move	$s4, $a0
	beq	$a0, $s6, .LBB35_23
# %bb.4:                                #   in Loop: Header=BB35_2 Depth=1
	ori	$a0, $zero, 34
	beq	$s4, $a0, .LBB35_23
.LBB35_5:                               #   in Loop: Header=BB35_2 Depth=1
	bltu	$fp, $s8, .LBB35_1
# %bb.6:                                #   in Loop: Header=BB35_2 Depth=1
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	b	.LBB35_1
	.p2align	4, , 16
.LBB35_7:                               #   in Loop: Header=BB35_2 Depth=1
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s0, 16
	jirl	$ra, $a1, 0
	move	$s4, $a0
	addi.d	$a0, $a0, -48
	ori	$a1, $zero, 68
	bltu	$a1, $a0, .LBB35_14
# %bb.8:                                #   in Loop: Header=BB35_2 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s1, $a0
	add.d	$a0, $s1, $a0
	jr	$a0
.LBB35_9:                               # %.preheader.preheader
                                        #   in Loop: Header=BB35_2 Depth=1
	move	$s4, $zero
	.p2align	4, , 16
.LBB35_10:                              # %.preheader
                                        #   Parent Loop BB35_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s0, 16
	jirl	$ra, $a1, 0
	move	$s5, $a0
	bne	$a0, $s6, .LBB35_12
# %bb.11:                               #   in Loop: Header=BB35_10 Depth=2
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB35_12:                              #   in Loop: Header=BB35_10 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 52
	bgez	$a0, .LBB35_21
# %bb.13:                               #   in Loop: Header=BB35_10 Depth=2
	alsl.d	$a0, $s4, $s5, 3
	addi.w	$s4, $a0, -48
	b	.LBB35_10
.LBB35_14:                              #   in Loop: Header=BB35_2 Depth=1
	bne	$s4, $s6, .LBB35_5
# %bb.15:                               #   in Loop: Header=BB35_2 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$s4, $s6
	b	.LBB35_5
.LBB35_16:                              #   in Loop: Header=BB35_2 Depth=1
	ori	$s4, $zero, 9
	b	.LBB35_5
.LBB35_17:                              #   in Loop: Header=BB35_2 Depth=1
	ori	$s4, $zero, 4
	b	.LBB35_5
.LBB35_18:                              #   in Loop: Header=BB35_2 Depth=1
	ori	$s4, $zero, 10
	b	.LBB35_5
.LBB35_19:                              #   in Loop: Header=BB35_2 Depth=1
	move	$s4, $zero
	b	.LBB35_5
.LBB35_20:                              #   in Loop: Header=BB35_2 Depth=1
	ori	$s4, $zero, 13
	b	.LBB35_5
.LBB35_21:                              #   in Loop: Header=BB35_2 Depth=1
	ld.d	$a2, $s0, 8
	ld.d	$a1, $s0, 16
	move	$a0, $s5
	jirl	$ra, $a2, 0
	ori	$s5, $zero, 92
	b	.LBB35_5
.LBB35_22:                              #   in Loop: Header=BB35_2 Depth=1
	ori	$s4, $zero, 32
	b	.LBB35_5
.LBB35_23:
	st.b	$zero, $s7, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $a0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 13
	st.h	$a0, $s1, 2
	addi.d	$a0, $fp, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	st.d	$fp, $s1, 8
	beqz	$s2, .LBB35_25
# %bb.24:
	move	$a1, $s2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
.LBB35_25:                              # %strcons.exit
	stx.b	$zero, $a0, $fp
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end35:
	.size	lreadstring, .Lfunc_end35-lreadstring
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI35_0:
	.word	.LBB35_9-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_19-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_17-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_18-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_20-.LJTI35_0
	.word	.LBB35_22-.LJTI35_0
	.word	.LBB35_16-.LJTI35_0
                                        # -- End function
	.text
	.globl	lreadsharp                      # -- Begin function lreadsharp
	.p2align	5
	.type	lreadsharp,@function
lreadsharp:                             # @lreadsharp
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 16
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 101
	blt	$a1, $a0, .LBB36_4
# %bb.1:
	ori	$a1, $zero, 40
	beq	$a0, $a1, .LBB36_8
# %bb.2:
	ori	$a1, $zero, 46
	bne	$a0, $a1, .LBB36_7
# %bb.3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lreadr)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(leval)
	jr	$t8
.LBB36_4:
	ori	$a1, $zero, 102
	beq	$a0, $a1, .LBB36_13
# %bb.5:
	ori	$a1, $zero, 116
	bne	$a0, $a1, .LBB36_7
# %bb.6:
	vldi	$vr0, -912
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.LBB36_7:
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	move	$a1, $zero
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB36_8:
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 16
	ori	$a0, $zero, 40
	jirl	$ra, $a2, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lreadr)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcaddu18i	$ra, %call36(nlength)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s0, $a0, 8
	slli.d	$a0, $s0, 3
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	blez	$s0, .LBB36_14
# %bb.9:                                # %.lr.ph.i.preheader
	move	$a0, $zero
	move	$a1, $s0
	.p2align	4, , 16
.LBB36_10:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 16
	stx.d	$zero, $a2, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB36_10
# %bb.11:                               # %.lr.ph.preheader
	ori	$a0, $zero, 16
	st.h	$a0, $fp, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	move	$s1, $s2
	.p2align	4, , 16
.LBB36_12:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	stx.d	$a0, $a1, $s3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$s0, $s0, -1
	addi.d	$s3, $s3, 8
	bnez	$s0, .LBB36_12
	b	.LBB36_15
.LBB36_13:
	move	$fp, $zero
	b	.LBB36_15
.LBB36_14:                              # %arcons.exit
	ori	$a0, $zero, 16
	st.h	$a0, $fp, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
.LBB36_15:                              # %.loopexit
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end36:
	.size	lreadsharp, .Lfunc_end36-lreadsharp
                                        # -- End function
	.globl	nlength                         # -- Begin function nlength
	.p2align	5
	.type	nlength,@function
nlength:                                # @nlength
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	beqz	$a0, .LBB37_6
# %bb.1:
	move	$a1, $a0
	ld.hu	$a0, $a0, 2
	ori	$a2, $zero, 18
	bltu	$a2, $a0, .LBB37_5
# %bb.2:
	slli.d	$a2, $a0, 2
	pcalau12i	$a3, %pc_hi20(.LJTI37_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI37_0)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB37_3:
	ld.d	$a0, $a1, 8
.LBB37_4:                               # %.thread
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB37_5:
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB37_6:                               # %.thread
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB37_7:                               # %.preheader.preheader
	move	$a0, $zero
	ori	$a2, $zero, 1
	move	$a3, $a1
	.p2align	4, , 16
.LBB37_8:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a4, $a3, 2
	bne	$a4, $a2, .LBB37_11
# %bb.9:                                #   in Loop: Header=BB37_8 Depth=1
	ld.d	$a3, $a3, 16
	addi.d	$a0, $a0, 1
	bnez	$a3, .LBB37_8
	b	.LBB37_4
.LBB37_10:
	ld.d	$a0, $a1, 16
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(strlen)
	jr	$t8
.LBB37_11:                              # %.critedge
	pcalau12i	$a2, %pc_hi20(.L.str.46)
	addi.d	$a2, $a2, %pc_lo12(.L.str.46)
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end37:
	.size	nlength, .Lfunc_end37-nlength
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI37_0:
	.word	.LBB37_4-.LJTI37_0
	.word	.LBB37_7-.LJTI37_0
	.word	.LBB37_5-.LJTI37_0
	.word	.LBB37_5-.LJTI37_0
	.word	.LBB37_5-.LJTI37_0
	.word	.LBB37_5-.LJTI37_0
	.word	.LBB37_5-.LJTI37_0
	.word	.LBB37_5-.LJTI37_0
	.word	.LBB37_5-.LJTI37_0
	.word	.LBB37_5-.LJTI37_0
	.word	.LBB37_5-.LJTI37_0
	.word	.LBB37_5-.LJTI37_0
	.word	.LBB37_5-.LJTI37_0
	.word	.LBB37_10-.LJTI37_0
	.word	.LBB37_3-.LJTI37_0
	.word	.LBB37_3-.LJTI37_0
	.word	.LBB37_3-.LJTI37_0
	.word	.LBB37_5-.LJTI37_0
	.word	.LBB37_3-.LJTI37_0
                                        # -- End function
	.text
	.globl	c_sxhash                        # -- Begin function c_sxhash
	.p2align	5
	.type	c_sxhash,@function
c_sxhash:                               # @c_sxhash
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$a1, $a0
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %got_pc_hi20(stack_limit_ptr)
	ld.d	$a0, $a0, %got_pc_lo12(stack_limit_ptr)
	ld.d	$a0, $a0, 0
	addi.d	$a2, $sp, 0
	bgeu	$a2, $a0, .LBB38_2
# %bb.1:
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(err_stack)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 0
.LBB38_2:
	beqz	$a1, .LBB38_20
# %bb.3:
	ld.hu	$a0, $a1, 2
	ori	$a2, $zero, 20
	bltu	$a2, $a0, .LBB38_18
# %bb.4:
	slli.d	$a2, $a0, 2
	pcalau12i	$a3, %pc_hi20(.LJTI38_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI38_0)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB38_5:
	ld.d	$a2, $a1, 8
	ld.bu	$a1, $a2, 0
	beqz	$a1, .LBB38_20
# %bb.6:                                # %.lr.ph.preheader
	move	$a0, $zero
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB38_7:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$a0, $a0, $a0, 4
	addi.d	$a0, $a0, 1
	xor	$a0, $a0, $a1
	ld.bu	$a1, $a2, 0
	mod.d	$a0, $a0, $fp
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB38_7
	b	.LBB38_21
.LBB38_8:
	ld.d	$a2, $a1, 8
	ld.bu	$a1, $a2, 0
	beqz	$a1, .LBB38_20
# %bb.9:                                # %.lr.ph48.preheader
	move	$a0, $zero
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB38_10:                              # %.lr.ph48
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$a0, $a0, $a0, 4
	addi.d	$a0, $a0, 1
	xor	$a0, $a0, $a1
	ld.bu	$a1, $a2, 0
	mod.d	$a0, $a0, $fp
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB38_10
	b	.LBB38_21
.LBB38_11:
	fld.d	$fa0, $a1, 8
	lu52i.d	$a0, $zero, 1086
	movgr2fr.d	$fa1, $a0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsub.d	$fa1, $fa0, $fa1
	ftintrz.l.d	$fa1, $fa1
	movfr2gr.d	$a0, $fa1
	lu52i.d	$a1, $zero, -2048
	xor	$a0, $a0, $a1
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	mod.du	$a0, $a0, $fp
	b	.LBB38_21
.LBB38_12:
	ld.d	$a0, $a1, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(c_sxhash)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 0
	ld.d	$s0, $a1, 16
	beqz	$s0, .LBB38_16
# %bb.13:                               # %.lr.ph54.preheader
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB38_14:                              # %.lr.ph54
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a1, $s0, 2
	bne	$a1, $s1, .LBB38_17
# %bb.15:                               #   in Loop: Header=BB38_14 Depth=1
	ld.d	$a1, $s0, 8
	alsl.d	$a0, $a0, $a0, 4
	addi.d	$s2, $a0, 1
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(c_sxhash)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 16
	xor	$a0, $a0, $s2
	mod.d	$a0, $a0, $fp
	bnez	$s0, .LBB38_14
.LBB38_16:
	move	$s0, $zero
.LBB38_17:                              # %.critedge
	alsl.d	$a0, $a0, $a0, 4
	addi.d	$s1, $a0, 1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(c_sxhash)
	jirl	$ra, $ra, 0
	xor	$a0, $a0, $s1
	mod.d	$a0, $a0, $fp
	b	.LBB38_21
.LBB38_18:
	ext.w.h	$a0, $a0
	pcaddu18i	$ra, %call36(get_user_type_hooks)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 48
	beqz	$a2, .LBB38_20
# %bb.19:
	ld.d	$a0, $sp, 0
	move	$a1, $fp
	jirl	$ra, $a2, 0
	b	.LBB38_21
.LBB38_20:
	move	$a0, $zero
.LBB38_21:                              # %.thread
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end38:
	.size	c_sxhash, .Lfunc_end38-c_sxhash
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI38_0:
	.word	.LBB38_21-.LJTI38_0
	.word	.LBB38_12-.LJTI38_0
	.word	.LBB38_11-.LJTI38_0
	.word	.LBB38_8-.LJTI38_0
	.word	.LBB38_5-.LJTI38_0
	.word	.LBB38_5-.LJTI38_0
	.word	.LBB38_5-.LJTI38_0
	.word	.LBB38_5-.LJTI38_0
	.word	.LBB38_5-.LJTI38_0
	.word	.LBB38_5-.LJTI38_0
	.word	.LBB38_5-.LJTI38_0
	.word	.LBB38_18-.LJTI38_0
	.word	.LBB38_18-.LJTI38_0
	.word	.LBB38_18-.LJTI38_0
	.word	.LBB38_18-.LJTI38_0
	.word	.LBB38_18-.LJTI38_0
	.word	.LBB38_18-.LJTI38_0
	.word	.LBB38_18-.LJTI38_0
	.word	.LBB38_18-.LJTI38_0
	.word	.LBB38_5-.LJTI38_0
	.word	.LBB38_5-.LJTI38_0
                                        # -- End function
	.text
	.globl	sxhash                          # -- Begin function sxhash
	.p2align	5
	.type	sxhash,@function
sxhash:                                 # @sxhash
# %bb.0:
	move	$a2, $a1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1808
	beqz	$a2, .LBB39_3
# %bb.1:
	ld.hu	$a3, $a2, 2
	ori	$a4, $zero, 2
	bne	$a3, $a4, .LBB39_3
# %bb.2:
	fld.d	$fa0, $a2, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
.LBB39_3:                               # %.critedge
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(c_sxhash)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end39:
	.size	sxhash, .Lfunc_end39-sxhash
                                        # -- End function
	.globl	equal                           # -- Begin function equal
	.p2align	5
	.type	equal,@function
equal:                                  # @equal
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a1
	st.d	$a0, $sp, 8
	pcalau12i	$a1, %got_pc_hi20(stack_limit_ptr)
	ld.d	$a1, $a1, %got_pc_lo12(stack_limit_ptr)
	ld.d	$a1, $a1, 0
	addi.d	$a2, $sp, 8
	bgeu	$a2, $a1, .LBB40_2
# %bb.1:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(err_stack)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
.LBB40_2:
	beq	$a0, $fp, .LBB40_12
# %bb.3:
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB40_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a0, .LBB40_7
# %bb.5:                                #   in Loop: Header=BB40_4 Depth=1
	ld.h	$a1, $a0, 2
	beqz	$fp, .LBB40_8
.LBB40_6:                               #   in Loop: Header=BB40_4 Depth=1
	ld.h	$a2, $fp, 2
	beq	$a1, $a2, .LBB40_9
	b	.LBB40_17
	.p2align	4, , 16
.LBB40_7:                               #   in Loop: Header=BB40_4 Depth=1
	move	$a1, $zero
	bnez	$fp, .LBB40_6
.LBB40_8:                               #   in Loop: Header=BB40_4 Depth=1
	move	$a2, $zero
	bne	$a1, $a2, .LBB40_17
.LBB40_9:                               #   in Loop: Header=BB40_4 Depth=1
	bne	$a1, $s1, .LBB40_13
# %bb.10:                               #   in Loop: Header=BB40_4 Depth=1
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB40_17
# %bb.11:                               #   in Loop: Header=BB40_4 Depth=1
	ld.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	move	$a0, $a1
	bne	$a1, $fp, .LBB40_4
.LBB40_12:                              # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(sym_t)
	ld.d	$a0, $a0, %got_pc_lo12(sym_t)
	ld.d	$a0, $a0, 0
	b	.LBB40_19
.LBB40_13:
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB40_18
# %bb.14:
	ori	$a0, $zero, 3
	beq	$a1, $a0, .LBB40_17
# %bb.15:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(get_user_type_hooks)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 72
	beqz	$a2, .LBB40_17
# %bb.16:
	ld.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	b	.LBB40_19
.LBB40_17:
	move	$a0, $zero
	b	.LBB40_19
.LBB40_18:
	fld.d	$fa0, $a0, 8
	fld.d	$fa1, $fp, 8
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	pcalau12i	$a0, %got_pc_hi20(sym_t)
	ld.d	$a0, $a0, %got_pc_lo12(sym_t)
	ld.d	$a0, $a0, 0
	movcf2gr	$a1, $fcc0
	maskeqz	$a0, $a0, $a1
.LBB40_19:                              # %.loopexit
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end40:
	.size	equal, .Lfunc_end40-equal
                                        # -- End function
	.globl	href_index                      # -- Begin function href_index
	.p2align	5
	.type	href_index,@function
href_index:                             # @href_index
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	beqz	$a0, .LBB41_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 16
	beq	$a0, $a1, .LBB41_3
.LBB41_2:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB41_3:
	ld.d	$a1, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(c_sxhash)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB41_5
# %bb.4:
	ld.d	$a1, $fp, 8
	blt	$a0, $a1, .LBB41_6
.LBB41_5:
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB41_6:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end41:
	.size	href_index, .Lfunc_end41-href_index
                                        # -- End function
	.globl	href                            # -- Begin function href
	.p2align	5
	.type	href,@function
href:                                   # @href
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.hu	$a0, $a0, 2
	ld.d	$s1, $s0, 16
	ori	$a2, $zero, 16
	move	$fp, $a1
	beq	$a0, $a2, .LBB42_2
# %bb.1:                                # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB42_2:
	ld.d	$a1, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(c_sxhash)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB42_4
# %bb.3:
	ld.d	$a1, $s0, 8
	blt	$a0, $a1, .LBB42_5
.LBB42_4:
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB42_5:                               # %href_index.exit
	slli.d	$a0, $a0, 3
	ldx.d	$s0, $s1, $a0
	beqz	$s0, .LBB42_12
# %bb.6:                                # %.lr.ph.i.preheader
	ori	$s2, $zero, 1
	move	$s3, $s0
	b	.LBB42_8
	.p2align	4, , 16
.LBB42_7:                               # %.critedge16.i
                                        #   in Loop: Header=BB42_8 Depth=1
	ld.d	$s3, $s3, 16
	beqz	$s3, .LBB42_12
.LBB42_8:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s3, 2
	bne	$a0, $s2, .LBB42_13
# %bb.9:                                #   in Loop: Header=BB42_8 Depth=1
	ld.d	$s1, $s3, 8
	beqz	$s1, .LBB42_7
# %bb.10:                               #   in Loop: Header=BB42_8 Depth=1
	ld.hu	$a0, $s1, 2
	bne	$a0, $s2, .LBB42_7
# %bb.11:                               #   in Loop: Header=BB42_8 Depth=1
	ld.d	$a0, $s1, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB42_7
	b	.LBB42_14
.LBB42_12:
	move	$s1, $zero
	b	.LBB42_14
.LBB42_13:                              # %.critedge.i4
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB42_14:                              # %assoc.exit
	move	$a0, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(cdr)
	jr	$t8
.Lfunc_end42:
	.size	href, .Lfunc_end42-href
                                        # -- End function
	.globl	assoc                           # -- Begin function assoc
	.p2align	5
	.type	assoc,@function
assoc:                                  # @assoc
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	beqz	$a1, .LBB43_7
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a1
	move	$s0, $a0
	ori	$s2, $zero, 1
	move	$s3, $a1
	b	.LBB43_3
	.p2align	4, , 16
.LBB43_2:                               # %.critedge16
                                        #   in Loop: Header=BB43_3 Depth=1
	ld.d	$s3, $s3, 16
	beqz	$s3, .LBB43_7
.LBB43_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s3, 2
	bne	$a0, $s2, .LBB43_9
# %bb.4:                                #   in Loop: Header=BB43_3 Depth=1
	ld.d	$s1, $s3, 8
	beqz	$s1, .LBB43_2
# %bb.5:                                #   in Loop: Header=BB43_3 Depth=1
	ld.hu	$a0, $s1, 2
	bne	$a0, $s2, .LBB43_2
# %bb.6:                                #   in Loop: Header=BB43_3 Depth=1
	ld.d	$a0, $s1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB43_2
	b	.LBB43_8
.LBB43_7:
	move	$s1, $zero
.LBB43_8:                               # %.critedge17
	move	$a0, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB43_9:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	move	$a1, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end43:
	.size	assoc, .Lfunc_end43-assoc
                                        # -- End function
	.globl	hset                            # -- Begin function hset
	.p2align	5
	.type	hset,@function
hset:                                   # @hset
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	beqz	$a0, .LBB44_2
# %bb.1:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 16
	beq	$a0, $a1, .LBB44_3
.LBB44_2:                               # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB44_3:
	ld.d	$a1, $s0, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(c_sxhash)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB44_5
# %bb.4:
	ld.d	$a1, $s0, 8
	blt	$a0, $a1, .LBB44_6
.LBB44_5:
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB44_6:                               # %href_index.exit
	ld.d	$a1, $s0, 16
	slli.d	$s4, $a0, 3
	ldx.d	$s2, $a1, $s4
	beqz	$s2, .LBB44_15
# %bb.7:                                # %.lr.ph.i.preheader
	ori	$s5, $zero, 1
	move	$s6, $s2
	b	.LBB44_9
	.p2align	4, , 16
.LBB44_8:                               # %.critedge16.i
                                        #   in Loop: Header=BB44_9 Depth=1
	ld.d	$s6, $s6, 16
	beqz	$s6, .LBB44_15
.LBB44_9:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s6, 2
	bne	$a0, $s5, .LBB44_13
# %bb.10:                               #   in Loop: Header=BB44_9 Depth=1
	ld.d	$s3, $s6, 8
	beqz	$s3, .LBB44_8
# %bb.11:                               #   in Loop: Header=BB44_9 Depth=1
	ld.hu	$a0, $s3, 2
	bne	$a0, $s5, .LBB44_8
# %bb.12:                               #   in Loop: Header=BB44_9 Depth=1
	ld.d	$a0, $s3, 8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB44_8
	b	.LBB44_14
.LBB44_13:                              # %assoc.exit
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beqz	$a0, .LBB44_15
.LBB44_14:                              # %assoc.exit.thread20
	move	$a0, $s3
	move	$a1, $fp
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(setcdr)
	jr	$t8
.LBB44_15:                              # %assoc.exit.thread
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 16
	stx.d	$a0, $a1, $s4
	move	$a0, $fp
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end44:
	.size	hset, .Lfunc_end44-hset
                                        # -- End function
	.globl	assv                            # -- Begin function assv
	.p2align	5
	.type	assv,@function
assv:                                   # @assv
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	beqz	$a1, .LBB45_7
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a1
	move	$s0, $a0
	ori	$s2, $zero, 1
	move	$s3, $a1
	b	.LBB45_3
	.p2align	4, , 16
.LBB45_2:                               # %.critedge16
                                        #   in Loop: Header=BB45_3 Depth=1
	ld.d	$s3, $s3, 16
	beqz	$s3, .LBB45_7
.LBB45_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s3, 2
	bne	$a0, $s2, .LBB45_9
# %bb.4:                                #   in Loop: Header=BB45_3 Depth=1
	ld.d	$s1, $s3, 8
	beqz	$s1, .LBB45_2
# %bb.5:                                #   in Loop: Header=BB45_3 Depth=1
	ld.hu	$a0, $s1, 2
	bne	$a0, $s2, .LBB45_2
# %bb.6:                                #   in Loop: Header=BB45_3 Depth=1
	ld.d	$a0, $s1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(eql)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB45_2
	b	.LBB45_8
.LBB45_7:
	move	$s1, $zero
.LBB45_8:                               # %.critedge17
	move	$a0, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB45_9:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	move	$a1, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end45:
	.size	assv, .Lfunc_end45-assv
                                        # -- End function
	.globl	put_long                        # -- Begin function put_long
	.p2align	5
	.type	put_long,@function
put_long:                               # @put_long
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a3, $a1
	st.d	$a0, $sp, 0
	addi.d	$a0, $sp, 0
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end46:
	.size	put_long, .Lfunc_end46-put_long
                                        # -- End function
	.globl	get_long                        # -- Begin function get_long
	.p2align	5
	.type	get_long,@function
get_long:                               # @get_long
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a3, $a0
	addi.d	$a0, $sp, 0
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end47:
	.size	get_long, .Lfunc_end47-get_long
                                        # -- End function
	.globl	fast_print_table                # -- Begin function fast_print_table
	.p2align	5
	.type	fast_print_table,@function
fast_print_table:                       # @fast_print_table
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 1
	beqz	$a0, .LBB48_9
# %bb.1:
	move	$s4, $a0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(href)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_5
# %bb.2:
	move	$s2, $a0
	ori	$a0, $zero, 127
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s2, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB48_4
# %bb.3:                                # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB48_4:                               # %get_c_long.exit
	fld.d	$fa0, $s2, 8
	ftintrz.l.d	$fa0, $fa0
	fst.d	$fa0, $sp, 16
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	b	.LBB48_9
.LBB48_5:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_9
# %bb.6:
	move	$s2, $a0
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(hset)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(bashnum)
	ld.d	$a0, $s1, %pc_lo12(bashnum)
	lu52i.d	$a1, $zero, 1023
	st.d	$a1, $a0, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(bashnum)
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(plus)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(setcar)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 126
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s2, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB48_8
# %bb.7:                                # %.critedge.i20
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB48_8:                               # %get_c_long.exit21
	fld.d	$fa0, $s2, 8
	ftintrz.l.d	$fa0, $fa0
	fst.d	$fa0, $sp, 16
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	ori	$s3, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB48_9:
	move	$a0, $s3
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end48:
	.size	fast_print_table, .Lfunc_end48-fast_print_table
                                        # -- End function
	.globl	fast_print                      # -- Begin function fast_print
	.p2align	5
	.type	fast_print,@function
fast_print:                             # @fast_print
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a1
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %got_pc_hi20(stack_limit_ptr)
	ld.d	$a0, $a0, %got_pc_lo12(stack_limit_ptr)
	ld.d	$a0, $a0, 0
	addi.d	$a1, $sp, 0
	bgeu	$a1, $a0, .LBB49_2
# %bb.1:
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(err_stack)
	jirl	$ra, $ra, 0
.LBB49_2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 0
	move	$s0, $a0
	beqz	$a1, .LBB49_5
# %bb.3:
	ld.hu	$a0, $a1, 2
	ori	$a2, $zero, 3
	bltu	$a2, $a0, .LBB49_18
# %bb.4:
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(.LJTI49_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI49_0)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB49_5:                               # %.thread
	move	$a0, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB49_29
.LBB49_6:
	ori	$a0, $zero, 2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0
	addi.d	$a0, $a0, 8
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB49_29
.LBB49_7:
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fast_print_table)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB49_29
# %bb.8:
	ori	$a0, $zero, 3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 0
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1024
	move	$fp, $a0
	blt	$a0, $a1, .LBB49_10
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB49_10:
	st.d	$fp, $sp, 8
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0
	ld.d	$a0, $a0, 8
	ori	$a2, $zero, 1
	move	$a1, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(sym_t)
	ld.d	$a0, $a0, %got_pc_lo12(sym_t)
	ld.d	$a0, $a0, 0
	b	.LBB49_30
.LBB49_11:                              # %.lr.ph.preheader
	move	$s1, $zero
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB49_12:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a2, $a1, 2
	bne	$a2, $a0, .LBB49_20
# %bb.13:                               #   in Loop: Header=BB49_12 Depth=1
	ld.d	$a1, $a1, 16
	addi.d	$s1, $s1, 1
	bnez	$a1, .LBB49_12
# %bb.14:                               # %.critedge
	ori	$a0, $zero, 1
	beq	$s1, $a0, .LBB49_21
# %bb.15:
	ori	$a0, $zero, 125
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 0
	beqz	$s0, .LBB49_29
	.p2align	4, , 16
.LBB49_16:                              # %.lr.ph65
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s0, 2
	bne	$a0, $s1, .LBB49_29
# %bb.17:                               #   in Loop: Header=BB49_16 Depth=1
	ld.d	$a0, $s0, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fast_print)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 16
	move	$a0, $zero
	bnez	$s0, .LBB49_16
	b	.LBB49_30
.LBB49_18:
	ext.w.h	$a0, $a0
	pcaddu18i	$ra, %call36(get_user_type_hooks)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 56
	ld.d	$a1, $sp, 0
	beqz	$a2, .LBB49_22
# %bb.19:
	move	$a0, $a1
	move	$a1, $fp
	jirl	$ra, $a2, 0
	b	.LBB49_30
.LBB49_20:                              # %.critedge.thread
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB49_23
.LBB49_21:
	ori	$a0, $zero, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fast_print)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	b	.LBB49_28
.LBB49_22:
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	b	.LBB49_30
.LBB49_23:
	ori	$a0, $zero, 124
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 0
	beqz	$s0, .LBB49_26
	.p2align	4, , 16
.LBB49_24:                              # %.lr.ph59
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s0, 2
	bne	$a0, $s1, .LBB49_27
# %bb.25:                               #   in Loop: Header=BB49_24 Depth=1
	ld.d	$a0, $s0, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fast_print)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 16
	bnez	$s0, .LBB49_24
.LBB49_26:
	move	$s0, $zero
.LBB49_27:                              # %.critedge51
	move	$a0, $s0
.LBB49_28:                              # %.critedge49
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fast_print)
	jirl	$ra, $ra, 0
.LBB49_29:                              # %.critedge49
	move	$a0, $zero
.LBB49_30:                              # %.critedge49
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end49:
	.size	fast_print, .Lfunc_end49-fast_print
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI49_0:
	.word	.LBB49_5-.LJTI49_0
	.word	.LBB49_11-.LJTI49_0
	.word	.LBB49_6-.LJTI49_0
	.word	.LBB49_7-.LJTI49_0
                                        # -- End function
	.text
	.globl	fast_read                       # -- Begin function fast_read
	.p2align	5
	.type	fast_read,@function
fast_read:                              # @fast_read
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a0
	ori	$s1, $zero, 35
	addi.w	$s2, $zero, -1
	ori	$s3, $zero, 10
.LBB50_1:                               # %tailrecurse
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB50_2 Depth 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB50_6
	.p2align	4, , 16
.LBB50_2:                               # %.preheader
                                        #   Parent Loop BB50_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s2, .LBB50_32
# %bb.3:                                # %.preheader
                                        #   in Loop: Header=BB50_2 Depth=2
	beq	$a0, $s3, .LBB50_1
# %bb.4:                                # %.preheader
                                        #   in Loop: Header=BB50_2 Depth=2
	bnez	$a0, .LBB50_2
.LBB50_5:                               # %.loopexit
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	pcalau12i	$s0, %pc_hi20(bashnum)
	ld.d	$a1, $s0, %pc_lo12(bashnum)
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fst.d	$fa0, $a1, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, %pc_lo12(bashnum)
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(href)
	jr	$t8
.LBB50_6:                               # %tailrecurse
	ori	$a1, $zero, 123
	blt	$a1, $a0, .LBB50_10
# %bb.7:                                # %tailrecurse
	addi.d	$a1, $a0, 1
	ori	$a2, $zero, 4
	bltu	$a2, $a1, .LBB50_13
# %bb.8:                                # %tailrecurse
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI50_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI50_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB50_9:
	move	$fp, $zero
	b	.LBB50_32
.LBB50_10:                              # %tailrecurse
	addi.d	$a1, $a0, -124
	ori	$s3, $zero, 2
	bltu	$a1, $s3, .LBB50_15
# %bb.11:                               # %tailrecurse
	ori	$a1, $zero, 126
	beq	$a0, $a1, .LBB50_25
# %bb.12:                               # %tailrecurse
	ori	$a1, $zero, 127
	beq	$a0, $a1, .LBB50_5
.LBB50_13:
	move	$s0, $a0
	pcaddu18i	$ra, %call36(get_user_type_hooks)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 64
	beqz	$a2, .LBB50_33
# %bb.14:
	move	$a0, $s0
	move	$a1, $fp
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	jr	$a2
.LBB50_15:
	move	$s1, $a0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(bashnum)
	ld.d	$s0, $a0, %pc_lo12(bashnum)
	ld.d	$s2, $sp, 16
	ld.hu	$a0, $s0, 2
	movgr2fr.d	$fa0, $s2
	ffint.d.l	$fa0, $fa0
	fst.d	$fa0, $s0, 8
	beq	$a0, $s3, .LBB50_17
# %bb.16:                               # %.critedge.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s0, 8
.LBB50_17:                              # %get_c_long.exit.i
	ftintrz.l.d	$fa0, $fa0
	move	$s0, $zero
	movfr2gr.d	$a0, $fa0
	blez	$a0, .LBB50_20
# %bb.18:                               # %.lr.ph.i.preheader
	addi.d	$s3, $a0, 1
	ori	$s4, $zero, 1
	.p2align	4, , 16
.LBB50_19:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	move	$s0, $a0
	bltu	$s4, $s3, .LBB50_19
.LBB50_20:                              # %make_list.exit
	ori	$s4, $zero, 2
	move	$s3, $s0
	blt	$s2, $s4, .LBB50_23
# %bb.21:                               # %.lr.ph.preheader
	addi.d	$s2, $s2, 1
	move	$s3, $s0
	.p2align	4, , 16
.LBB50_22:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fast_read)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 8
	ld.d	$s3, $s3, 16
	addi.d	$s2, $s2, -1
	bltu	$s4, $s2, .LBB50_22
.LBB50_23:                              # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fast_read)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 124
	st.d	$a0, $s3, 8
	bne	$s1, $a1, .LBB50_29
# %bb.24:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fast_read)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 16
	move	$fp, $s0
	b	.LBB50_32
.LBB50_25:
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fast_read)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	movgr2fr.d	$fa0, $s1
	ffint.d.l	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(hset)
	jirl	$ra, $ra, 0
	move	$fp, $s0
	b	.LBB50_32
.LBB50_26:
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1024
	blt	$fp, $a0, .LBB50_28
# %bb.27:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB50_28:
	pcalau12i	$a0, %got_pc_hi20(tkbuffer)
	ld.d	$s1, $a0, %got_pc_lo12(tkbuffer)
	ld.d	$a0, $s1, 0
	ori	$a2, $zero, 1
	move	$a1, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	stx.b	$zero, $a0, $fp
	ld.d	$a0, $s1, 0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(rintern)
	jr	$t8
.LBB50_29:
	move	$fp, $s0
	b	.LBB50_32
.LBB50_30:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fast_read)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fast_read)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(cons)
	jr	$t8
.LBB50_31:
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(newcell)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a0, $a0, 8
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
.LBB50_32:                              # %common.ret206
	move	$a0, $fp
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB50_33:
	movgr2fr.w	$fa0, $s0
	ffint.d.w	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end50:
	.size	fast_read, .Lfunc_end50-fast_read
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI50_0:
	.word	.LBB50_32-.LJTI50_0
	.word	.LBB50_9-.LJTI50_0
	.word	.LBB50_30-.LJTI50_0
	.word	.LBB50_31-.LJTI50_0
	.word	.LBB50_26-.LJTI50_0
                                        # -- End function
	.text
	.globl	make_list                       # -- Begin function make_list
	.p2align	5
	.type	make_list,@function
make_list:                              # @make_list
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a0, .LBB51_2
# %bb.1:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB51_3
.LBB51_2:                               # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB51_3:                               # %get_c_long.exit
	fld.d	$fa0, $s0, 8
	ftintrz.l.d	$fa0, $fa0
	move	$a1, $zero
	movfr2gr.d	$a0, $fa0
	blez	$a0, .LBB51_6
# %bb.4:                                # %.lr.ph.preheader
	addi.d	$s0, $a0, 1
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB51_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	move	$a1, $a0
	bltu	$s1, $s0, .LBB51_5
.LBB51_6:                               # %._crit_edge
	move	$a0, $a1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end51:
	.size	make_list, .Lfunc_end51-make_list
                                        # -- End function
	.globl	get_c_double                    # -- Begin function get_c_double
	.p2align	5
	.type	get_c_double,@function
get_c_double:                           # @get_c_double
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB52_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB52_3
.LBB52_2:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB52_3:
	fld.d	$fa0, $fp, 8
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end52:
	.size	get_c_double, .Lfunc_end52-get_c_double
                                        # -- End function
	.globl	lfread                          # -- Begin function lfread
	.p2align	5
	.type	lfread,@function
lfread:                                 # @lfread
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$a2, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$s0, .LBB53_6
# %bb.1:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB53_7
# %bb.2:
	ori	$a1, $zero, 13
	beq	$a0, $a1, .LBB53_4
# %bb.3:
	ori	$a1, $zero, 18
	bne	$a0, $a1, .LBB53_6
.LBB53_4:
	ld.d	$a0, $s0, 16
	ld.d	$a2, $s0, 8
	ori	$a1, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB53_11
# %bb.5:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $s0
	ffint.d.l	$fa0, $fa0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.LBB53_6:                               # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB53_7:                               # %.thread42
	fld.d	$fa0, $s0, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$s3, $fa0
	addi.d	$a0, $s3, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.b	$zero, $a0, $s3
	ori	$a1, $zero, 1
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB53_10
# %bb.8:
	move	$s2, $a0
	bne	$a0, $s3, .LBB53_12
# %bb.9:
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 13
	st.h	$a0, $s1, 2
	st.d	$s0, $s1, 16
	st.d	$s3, $s1, 8
	b	.LBB53_15
.LBB53_10:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB53_11:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	b	.LBB53_16
.LBB53_12:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 13
	addi.w	$a1, $zero, -1
	st.h	$a0, $s1, 2
	move	$s4, $s2
	bne	$s2, $a1, .LBB53_14
# %bb.13:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
.LBB53_14:                              # %strcons.exit
	addi.d	$a0, $s4, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	st.d	$s4, $s1, 8
	stx.b	$zero, $a0, $s4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB53_15:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
.LBB53_16:
	move	$a0, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end53:
	.size	lfread, .Lfunc_end53-lfread
                                        # -- End function
	.globl	lfwrite                         # -- Begin function lfwrite
	.p2align	5
	.type	lfwrite,@function
lfwrite:                                # @lfwrite
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$a2, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$s0, .LBB54_8
# %bb.1:
	ld.hu	$a1, $s0, 2
	ori	$s2, $zero, 1
	move	$a0, $s0
	bne	$a1, $s2, .LBB54_3
# %bb.2:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
.LBB54_3:
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(get_c_string_dim)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s0, 2
	move	$s1, $a0
	bne	$a1, $s2, .LBB54_9
# %bb.4:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cadr)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$a0, .LBB54_6
# %bb.5:
	ld.hu	$a0, $s2, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB54_7
.LBB54_6:                               # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB54_7:                               # %get_c_long.exit
	fld.d	$fa0, $s2, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$s2, $fa0
	bgtz	$s2, .LBB54_10
	b	.LBB54_13
.LBB54_8:                               # %.critedge
	addi.d	$a1, $sp, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(get_c_string_dim)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB54_9:                               # %.critedge17
	ld.d	$s2, $sp, 0
	blez	$s2, .LBB54_13
.LBB54_10:
	ld.d	$a0, $sp, 0
	bge	$a0, $s2, .LBB54_12
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB54_12:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 1
	move	$a0, $s1
	move	$a2, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
.LBB54_13:
	move	$a0, $zero
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end54:
	.size	lfwrite, .Lfunc_end54-lfwrite
                                        # -- End function
	.globl	lfflush                         # -- Begin function lfflush
	.p2align	5
	.type	lfflush,@function
lfflush:                                # @lfflush
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end55:
	.size	lfflush, .Lfunc_end55-lfflush
                                        # -- End function
	.globl	string_length                   # -- Begin function string_length
	.p2align	5
	.type	string_length,@function
string_length:                          # @string_length
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB56_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 13
	beq	$a0, $a1, .LBB56_3
.LBB56_2:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB56_3:
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	srli.d	$a1, $a0, 32
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa0, $a1
	lu12i.w	$a1, 256
	lu52i.d	$a1, $a1, 1107
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa0, $fa0, $fa1
	lu12i.w	$a1, 275200
	bstrins.d	$a0, $a1, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end56:
	.size	string_length, .Lfunc_end56-string_length
                                        # -- End function
	.globl	string_dim                      # -- Begin function string_dim
	.p2align	5
	.type	string_dim,@function
string_dim:                             # @string_dim
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB57_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 13
	beq	$a0, $a1, .LBB57_3
.LBB57_2:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB57_3:
	ld.d	$a0, $fp, 8
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end57:
	.size	string_dim, .Lfunc_end57-string_dim
                                        # -- End function
	.globl	llength                         # -- Begin function llength
	.p2align	5
	.type	llength,@function
llength:                                # @llength
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(nlength)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end58:
	.size	llength, .Lfunc_end58-llength
                                        # -- End function
	.globl	number2string                   # -- Begin function number2string
	.p2align	5
	.type	number2string,@function
number2string:                          # @number2string
# %bb.0:
	addi.d	$sp, $sp, -1072
	st.d	$ra, $sp, 1064                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1032                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1024                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1016                 # 8-byte Folded Spill
	move	$s2, $a3
	move	$s3, $a2
	move	$s0, $a1
	move	$fp, $a0
	beqz	$a0, .LBB59_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB59_3
.LBB59_2:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB59_3:
	fld.d	$fs0, $fp, 8
	addi.w	$s1, $zero, -1
	move	$fp, $s1
	beqz	$s3, .LBB59_8
# %bb.4:
	ld.hu	$a0, $s3, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB59_6
# %bb.5:                                # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB59_6:
	fld.d	$fa0, $s3, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$fp, $fa0
	ori	$a0, $zero, 101
	blt	$fp, $a0, .LBB59_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB59_8:                               # %.thread
	beqz	$s2, .LBB59_13
# %bb.9:
	ld.hu	$a0, $s2, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB59_11
# %bb.10:                               # %.critedge.i66
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB59_11:
	fld.d	$fa0, $s2, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$s1, $fa0
	ori	$a0, $zero, 101
	blt	$s1, $a0, .LBB59_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB59_13:                              # %.thread70
	pcalau12i	$a0, %pc_hi20(sym_e)
	ld.d	$a0, $a0, %pc_lo12(sym_e)
	beqz	$s0, .LBB59_22
# %bb.14:                               # %.thread70
	beq	$a0, $s0, .LBB59_22
# %bb.15:                               # %.thread70
	pcalau12i	$a1, %pc_hi20(sym_f)
	ld.d	$a1, $a1, %pc_lo12(sym_f)
	beq	$a1, $s0, .LBB59_22
# %bb.16:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB59_18
# %bb.17:                               # %.critedge.i68
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB59_18:                              # %get_c_long.exit69
	fld.d	$fa0, $s0, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	ori	$a1, $zero, 16
	bltu	$a1, $a0, .LBB59_29
# %bb.19:                               # %get_c_long.exit69
	ori	$a1, $zero, 1
	sll.d	$a1, $a1, $a0
	lu12i.w	$a2, 16
	ori	$a2, $a2, 1280
	and	$a1, $a1, $a2
	beqz	$a1, .LBB59_29
# %bb.20:
	ftintrz.l.d	$fa0, $fs0
	movfr2gr.d	$a3, $fa0
	addi.d	$a1, $a0, -8
	sltui	$a1, $a1, 1
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	bltz	$fp, .LBB59_27
# %bb.21:
	pcalau12i	$a2, %pc_hi20(.L.str.64)
	addi.d	$a2, $a2, %pc_lo12(.L.str.64)
	masknez	$a2, $a2, $a1
	pcalau12i	$a4, %pc_hi20(.L.str.63)
	addi.d	$a4, $a4, %pc_lo12(.L.str.63)
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.62)
	addi.d	$a2, $a2, %pc_lo12(.L.str.62)
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	b	.LBB59_26
.LBB59_22:
	xor	$a0, $a0, $s0
	sltui	$a0, $a0, 1
	or	$a1, $s1, $fp
	bltz	$a1, .LBB59_24
# %bb.23:
	sltui	$a1, $s0, 1
	pcalau12i	$a2, %pc_hi20(.L.str.53)
	addi.d	$a2, $a2, %pc_lo12(.L.str.53)
	masknez	$a2, $a2, $a0
	pcalau12i	$a3, %pc_hi20(.L.str.52)
	addi.d	$a3, $a3, %pc_lo12(.L.str.52)
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.51)
	addi.d	$a2, $a2, %pc_lo12(.L.str.51)
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	movfr2gr.d	$a4, $fs0
	addi.d	$a0, $sp, 16
	move	$a2, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	b	.LBB59_32
.LBB59_24:
	sltui	$a1, $s0, 1
	bltz	$fp, .LBB59_30
# %bb.25:
	pcalau12i	$a2, %pc_hi20(.L.str.56)
	addi.d	$a2, $a2, %pc_lo12(.L.str.56)
	masknez	$a2, $a2, $a0
	pcalau12i	$a3, %pc_hi20(.L.str.55)
	addi.d	$a3, $a3, %pc_lo12(.L.str.55)
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.54)
	addi.d	$a2, $a2, %pc_lo12(.L.str.54)
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	movfr2gr.d	$a3, $fs0
.LBB59_26:                              # %strcons.exit
	addi.d	$a0, $sp, 16
	move	$a2, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	b	.LBB59_32
.LBB59_27:
	pcalau12i	$a2, %pc_hi20(.L.str.66)
	addi.d	$a2, $a2, %pc_lo12(.L.str.66)
	masknez	$a2, $a2, $a1
	pcalau12i	$a4, %pc_hi20(.L.str.65)
	addi.d	$a4, $a4, %pc_lo12(.L.str.65)
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.9)
	addi.d	$a2, $a2, %pc_lo12(.L.str.9)
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	addi.d	$a0, $sp, 16
	move	$a2, $a3
.LBB59_28:                              # %strcons.exit
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	b	.LBB59_32
.LBB59_29:
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	b	.LBB59_32
.LBB59_30:
	bltz	$s1, .LBB59_33
# %bb.31:
	pcalau12i	$a2, %pc_hi20(.L.str.59)
	addi.d	$a2, $a2, %pc_lo12(.L.str.59)
	masknez	$a2, $a2, $a0
	pcalau12i	$a3, %pc_hi20(.L.str.58)
	addi.d	$a3, $a3, %pc_lo12(.L.str.58)
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.57)
	addi.d	$a2, $a2, %pc_lo12(.L.str.57)
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	movfr2gr.d	$a3, $fs0
	addi.d	$a0, $sp, 16
	move	$a2, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
.LBB59_32:                              # %strcons.exit
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 13
	st.h	$a0, $s1, 2
	addi.d	$a0, $fp, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	st.d	$fp, $s1, 8
	addi.d	$a1, $sp, 16
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
	stx.b	$zero, $a0, $fp
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	fld.d	$fs0, $sp, 1016                 # 8-byte Folded Reload
	ld.d	$s3, $sp, 1024                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1064                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1072
	ret
.LBB59_33:
	pcalau12i	$a2, %pc_hi20(.L.str.61)
	addi.d	$a2, $a2, %pc_lo12(.L.str.61)
	masknez	$a2, $a2, $a0
	pcalau12i	$a3, %pc_hi20(.L.str.60)
	addi.d	$a3, $a3, %pc_lo12(.L.str.60)
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.6)
	addi.d	$a2, $a2, %pc_lo12(.L.str.6)
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	movfr2gr.d	$a2, $fs0
	addi.d	$a0, $sp, 16
	b	.LBB59_28
.Lfunc_end59:
	.size	number2string, .Lfunc_end59-number2string
                                        # -- End function
	.globl	string2number                   # -- Begin function string2number
	.p2align	5
	.type	string2number,@function
string2number:                          # @string2number
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 24                   # 8-byte Folded Spill
	move	$fp, $a1
	st.d	$zero, $sp, 16
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB60_7
# %bb.1:
	ld.hu	$a1, $fp, 2
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB60_3
# %bb.2:                                # %.critedge.i
	pcalau12i	$a1, %pc_hi20(.L.str.44)
	addi.d	$a1, $a1, %pc_lo12(.L.str.44)
	move	$s0, $a0
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB60_3:                               # %get_c_long.exit
	fld.d	$fa0, $fp, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$s0, $fa0
	ori	$a1, $zero, 8
	beq	$s0, $a1, .LBB60_9
# %bb.4:                                # %get_c_long.exit
	ori	$a1, $zero, 16
	beq	$s0, $a1, .LBB60_8
# %bb.5:                                # %get_c_long.exit
	ori	$a1, $zero, 10
	bne	$s0, $a1, .LBB60_12
# %bb.6:
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	b	.LBB60_10
.LBB60_7:
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	b	.LBB60_11
.LBB60_8:
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	b	.LBB60_10
.LBB60_9:
	pcalau12i	$a1, %pc_hi20(.L.str.65)
	addi.d	$a1, $a1, %pc_lo12(.L.str.65)
.LBB60_10:                              # %.loopexit
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
.LBB60_11:                              # %.loopexit
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB60_12:
	addi.d	$a1, $s0, -1
	ori	$a2, $zero, 15
	bltu	$a2, $a1, .LBB60_20
# %bb.13:                               # %.preheader
	ld.bu	$s1, $a0, 0
	beqz	$s1, .LBB60_21
# %bb.14:                               # %.lr.ph
	move	$s2, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$fp, $a0, 0
	movgr2fr.d	$fa0, $s0
	ffint.d.l	$fs0, $fa0
	addi.d	$s0, $s2, 1
	movgr2fr.d	$fa0, $zero
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 16384
	lu52i.d	$a1, $a1, -1019
	movgr2fr.d	$fs1, $a1
	lu32i.d	$a0, -524288
	lu52i.d	$a0, $a0, -1020
	movgr2fr.d	$fs2, $a0
	b	.LBB60_17
	.p2align	4, , 16
.LBB60_15:                              #   in Loop: Header=BB60_17 Depth=1
	movgr2fr.w	$fa1, $s1
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fa0, $fa0, $fs0, $fa1
	fadd.d	$fa0, $fa0, $fs2
.LBB60_16:                              #   in Loop: Header=BB60_17 Depth=1
	ld.bu	$s1, $s0, 0
	addi.d	$s0, $s0, 1
	beqz	$s1, .LBB60_11
.LBB60_17:                              # =>This Inner Loop Header: Depth=1
	ext.w.b	$s1, $s1
	slli.d	$a0, $s1, 1
	ldx.hu	$a0, $fp, $a0
	slli.d	$a1, $a0, 52
	bltz	$a1, .LBB60_15
# %bb.18:                               #   in Loop: Header=BB60_17 Depth=1
	slli.d	$a0, $a0, 51
	bgez	$a0, .LBB60_16
# %bb.19:                               #   in Loop: Header=BB60_17 Depth=1
	fmov.d	$fs3, $fa0
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s1, 2
	ldx.w	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmadd.d	$fa0, $fs3, $fs0, $fa0
	fadd.d	$fa0, $fa0, $fs1
	vldi	$vr1, -988
	fadd.d	$fa0, $fa0, $fa1
	b	.LBB60_16
.LBB60_20:
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	move	$a1, $fp
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.LBB60_21:
	movgr2fr.d	$fa0, $zero
	b	.LBB60_11
.Lfunc_end60:
	.size	string2number, .Lfunc_end60-string2number
                                        # -- End function
	.globl	lstrcmp                         # -- Begin function lstrcmp
	.p2align	5
	.type	lstrcmp,@function
lstrcmp:                                # @lstrcmp
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end61:
	.size	lstrcmp, .Lfunc_end61-lstrcmp
                                        # -- End function
	.globl	chk_string                      # -- Begin function chk_string
	.p2align	5
	.type	chk_string,@function
chk_string:                             # @chk_string
# %bb.0:
	move	$a3, $a0
	beqz	$a0, .LBB62_3
# %bb.1:
	ld.hu	$a0, $a3, 2
	ori	$a4, $zero, 13
	bne	$a0, $a4, .LBB62_3
# %bb.2:
	ld.d	$a0, $a3, 16
	st.d	$a0, $a1, 0
	ld.d	$a0, $a3, 8
	st.d	$a0, $a2, 0
	ret
.LBB62_3:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $a3
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end62:
	.size	chk_string, .Lfunc_end62-chk_string
                                        # -- End function
	.globl	lstrcpy                         # -- Begin function lstrcpy
	.p2align	5
	.type	lstrcpy,@function
lstrcpy:                                # @lstrcpy
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$a1, $a0
	beqz	$a0, .LBB63_3
# %bb.1:
	ld.hu	$a0, $a1, 2
	ori	$a2, $zero, 13
	bne	$a0, $a2, .LBB63_3
# %bb.2:
	ld.d	$s0, $a1, 16
	ld.d	$s3, $a1, 8
	b	.LBB63_4
.LBB63_3:                               # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
                                        # implicit-def: $r26
                                        # implicit-def: $r23
.LBB63_4:                               # %chk_string.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	bge	$s3, $a0, .LBB63_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB63_6:
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s0, $s2
	move	$a0, $zero
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end63:
	.size	lstrcpy, .Lfunc_end63-lstrcpy
                                        # -- End function
	.globl	lstrcat                         # -- Begin function lstrcat
	.p2align	5
	.type	lstrcat,@function
lstrcat:                                # @lstrcat
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$a1, $a0
	beqz	$a0, .LBB64_3
# %bb.1:
	ld.hu	$a0, $a1, 2
	ori	$a2, $zero, 13
	bne	$a0, $a2, .LBB64_3
# %bb.2:
	ld.d	$s0, $a1, 16
	ld.d	$s4, $a1, 8
	b	.LBB64_4
.LBB64_3:                               # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
                                        # implicit-def: $r27
                                        # implicit-def: $r23
.LBB64_4:                               # %chk_string.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$s5, $a0, $s2
	bge	$s4, $s5, .LBB64_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB64_6:
	add.d	$a0, $s0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s0, $s5
	move	$a0, $zero
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end64:
	.size	lstrcat, .Lfunc_end64-lstrcat
                                        # -- End function
	.globl	lstrbreakup                     # -- Begin function lstrbreakup
	.p2align	5
	.type	lstrbreakup,@function
lstrbreakup:                            # @lstrbreakup
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s1, 0
	beqz	$a1, .LBB65_7
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $a0
	move	$s2, $zero
	ori	$s7, $zero, 13
	addi.w	$s8, $zero, -1
	b	.LBB65_3
	.p2align	4, , 16
.LBB65_2:                               # %strcons.exit
                                        #   in Loop: Header=BB65_3 Depth=1
	addi.d	$a0, $s6, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 16
	st.d	$s6, $s5, 8
	move	$a1, $s1
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 16
	stx.b	$zero, $a0, $s6
	move	$a0, $s4
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s3, 0
	sltui	$a1, $a1, 1
	masknez	$a1, $s0, $a1
	ldx.bu	$a2, $s3, $a1
	move	$s2, $a0
	add.d	$s1, $s3, $a1
	beqz	$a2, .LBB65_8
.LBB65_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	bnez	$a0, .LBB65_5
# %bb.4:                                #   in Loop: Header=BB65_3 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s3, $s1, $a0
.LBB65_5:                               #   in Loop: Header=BB65_3 Depth=1
	sub.d	$s6, $s3, $s1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.h	$s7, $a0, 2
	bne	$s6, $s8, .LBB65_2
# %bb.6:                                #   in Loop: Header=BB65_3 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	b	.LBB65_2
.LBB65_7:
	move	$s2, $zero
.LBB65_8:                               # %._crit_edge
	move	$a0, $s2
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(nreverse)
	jr	$t8
.Lfunc_end65:
	.size	lstrbreakup, .Lfunc_end65-lstrbreakup
                                        # -- End function
	.globl	lstrunbreakup                   # -- Begin function lstrunbreakup
	.p2align	5
	.type	lstrunbreakup,@function
lstrunbreakup:                          # @lstrunbreakup
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	beqz	$a0, .LBB66_5
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a1
	move	$s0, $a0
	move	$s1, $zero
	move	$s2, $a0
	b	.LBB66_3
	.p2align	4, , 16
.LBB66_2:                               #   in Loop: Header=BB66_3 Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$a0, .LBB66_6
.LBB66_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	beq	$s2, $s0, .LBB66_2
# %bb.4:                                #   in Loop: Header=BB66_3 Depth=1
	move	$s3, $a0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s3
	b	.LBB66_2
.LBB66_5:
	move	$s1, $zero
.LBB66_6:                               # %._crit_edge
	move	$a0, $s1
	pcaddu18i	$ra, %call36(nreverse)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(string_append)
	jr	$t8
.Lfunc_end66:
	.size	lstrunbreakup, .Lfunc_end66-lstrunbreakup
                                        # -- End function
	.globl	stringp                         # -- Begin function stringp
	.p2align	5
	.type	stringp,@function
stringp:                                # @stringp
# %bb.0:
	beqz	$a0, .LBB67_2
# %bb.1:
	ld.h	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 15, 0
	addi.d	$a0, $a0, -13
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %got_pc_hi20(sym_t)
	ld.d	$a1, $a1, %got_pc_lo12(sym_t)
	ld.d	$a1, $a1, 0
	maskeqz	$a0, $a1, $a0
	ret
.LBB67_2:
	move	$a0, $zero
	ret
.Lfunc_end67:
	.size	stringp, .Lfunc_end67-stringp
                                        # -- End function
	.globl	base64encode                    # -- Begin function base64encode
	.p2align	5
	.type	base64encode,@function
base64encode:                           # @base64encode
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(get_c_string_dim)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$s4, $sp, 8
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1366
	lu32i.d	$a0, 349525
	lu52i.d	$a0, $a0, 1365
	mulh.d	$a0, $s4, $a0
	srli.d	$a1, $a0, 63
	add.d	$s3, $a0, $a1
	alsl.d	$a0, $s3, $s3, 1
	sub.d	$s2, $s4, $a0
	sltu	$a0, $zero, $s2
	add.d	$a0, $s3, $a0
	slli.d	$s5, $a0, 2
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 13
	st.h	$a0, $s0, 2
	addi.d	$a0, $s5, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	st.d	$s5, $s0, 8
	stx.b	$zero, $a0, $s5
	move	$a0, $s1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	blt	$s4, $a1, .LBB68_3
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a1, %pc_hi20(.L.str.232)
	addi.d	$a1, $a1, %pc_lo12(.L.str.232)
	.p2align	4, , 16
.LBB68_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $fp, 0
	srli.d	$a2, $a2, 2
	ldx.b	$a2, $a1, $a2
	st.b	$a2, $a0, 0
	ld.bu	$a2, $fp, 1
	ld.b	$a3, $fp, 0
	srli.d	$a2, $a2, 4
	bstrins.d	$a2, $a3, 5, 4
	ldx.b	$a2, $a1, $a2
	st.b	$a2, $a0, 1
	ld.bu	$a2, $fp, 2
	ld.b	$a3, $fp, 1
	srli.d	$a2, $a2, 6
	bstrins.d	$a2, $a3, 5, 2
	ldx.b	$a2, $a1, $a2
	st.b	$a2, $a0, 2
	ld.bu	$a2, $fp, 2
	andi	$a2, $a2, 63
	ldx.b	$a2, $a1, $a2
	st.b	$a2, $a0, 3
	addi.d	$a0, $a0, 4
	addi.d	$s3, $s3, -1
	addi.d	$fp, $fp, 3
	bnez	$s3, .LBB68_2
.LBB68_3:                               # %._crit_edge
	beqz	$s2, .LBB68_9
# %bb.4:                                # %._crit_edge
	ori	$a1, $zero, 2
	beq	$s2, $a1, .LBB68_7
# %bb.5:                                # %._crit_edge
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB68_8
# %bb.6:
	ld.bu	$a1, $fp, 0
	srli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.L.str.232)
	addi.d	$a2, $a2, %pc_lo12(.L.str.232)
	ldx.b	$a1, $a2, $a1
	st.b	$a1, $a0, 0
	ld.b	$a1, $fp, 0
	slli.d	$a1, $a1, 4
	andi	$a1, $a1, 48
	ldx.b	$a1, $a2, $a1
	st.b	$a1, $a0, 1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3389
	st.h	$a1, $a0, 2
	b	.LBB68_9
.LBB68_7:
	ld.bu	$a1, $fp, 0
	srli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.L.str.232)
	addi.d	$a2, $a2, %pc_lo12(.L.str.232)
	ldx.b	$a1, $a2, $a1
	st.b	$a1, $a0, 0
	ld.bu	$a1, $fp, 1
	ld.b	$a3, $fp, 0
	srli.d	$a1, $a1, 4
	bstrins.d	$a1, $a3, 5, 4
	ldx.b	$a1, $a2, $a1
	st.b	$a1, $a0, 1
	ld.b	$a1, $fp, 1
	slli.d	$a1, $a1, 2
	andi	$a1, $a1, 60
	ldx.b	$a1, $a2, $a1
	st.b	$a1, $a0, 2
	ori	$a1, $zero, 61
	st.b	$a1, $a0, 3
	b	.LBB68_9
.LBB68_8:
	pcaddu18i	$ra, %call36(errswitch)
	jirl	$ra, $ra, 0
.LBB68_9:
	move	$a0, $s0
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end68:
	.size	base64encode, .Lfunc_end68-base64encode
                                        # -- End function
	.globl	base64decode                    # -- Begin function base64decode
	.p2align	5
	.type	base64decode,@function
base64decode:                           # @base64decode
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(base64_decode_table)
	ld.d	$s3, $a1, %pc_lo12(base64_decode_table)
	move	$s1, $a0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB69_5
# %bb.1:
	move	$fp, $a0
	andi	$a0, $a0, 3
	beqz	$a0, .LBB69_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB69_3:
	add.d	$a1, $s0, $fp
	ld.bu	$a0, $a1, -1
	ori	$a2, $zero, 61
	bne	$a0, $a2, .LBB69_6
# %bb.4:
	ld.bu	$a1, $a1, -2
	addi.d	$a1, $a1, -61
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 2
	sub.d	$s4, $a2, $a1
	b	.LBB69_7
.LBB69_5:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 13
	st.h	$a0, $fp, 2
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	st.d	$zero, $fp, 8
	st.b	$zero, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	b	.LBB69_27
.LBB69_6:
	move	$s4, $zero
.LBB69_7:
	addi.d	$a0, $a0, -61
	sltui	$a0, $a0, 1
	srai.d	$a1, $fp, 63
	srli.d	$a1, $a1, 62
	add.d	$a1, $fp, $a1
	srai.d	$a1, $a1, 2
	sub.d	$s5, $a1, $a0
	alsl.d	$a0, $s5, $s5, 1
	add.d	$s2, $s4, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 13
	addi.w	$a1, $zero, -1
	st.h	$a0, $fp, 2
	bne	$s2, $a1, .LBB69_9
# %bb.8:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB69_9:                               # %strcons.exit
	addi.d	$a0, $s2, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	st.d	$s2, $fp, 8
	stx.b	$zero, $a0, $s2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	blez	$s5, .LBB69_17
# %bb.10:                               # %.lr.ph.preheader
	ori	$a2, $zero, 63
	.p2align	4, , 16
.LBB69_11:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $s0, 0
	ldx.bu	$a1, $s3, $a1
	bltu	$a2, $a1, .LBB69_26
# %bb.12:                               #   in Loop: Header=BB69_11 Depth=1
	ld.bu	$a3, $s0, 1
	ldx.bu	$a3, $s3, $a3
	bltu	$a2, $a3, .LBB69_26
# %bb.13:                               #   in Loop: Header=BB69_11 Depth=1
	ld.bu	$a4, $s0, 2
	ldx.bu	$a4, $s3, $a4
	bltu	$a2, $a4, .LBB69_26
# %bb.14:                               #   in Loop: Header=BB69_11 Depth=1
	ld.bu	$a5, $s0, 3
	ldx.bu	$a5, $s3, $a5
	bltu	$a2, $a5, .LBB69_26
# %bb.15:                               #   in Loop: Header=BB69_11 Depth=1
	slli.d	$a1, $a1, 2
	srli.d	$a6, $a3, 4
	or	$a1, $a6, $a1
	st.b	$a1, $a0, 0
	slli.d	$a1, $a3, 4
	srli.d	$a3, $a4, 2
	or	$a1, $a3, $a1
	st.b	$a1, $a0, 1
	slli.d	$a1, $a4, 6
	or	$a3, $a5, $a1
	addi.d	$a1, $a0, 3
	st.b	$a3, $a0, 2
	addi.d	$s5, $s5, -1
	addi.d	$s0, $s0, 4
	move	$a0, $a1
	bnez	$s5, .LBB69_11
# %bb.16:                               # %._crit_edge
	bnez	$s4, .LBB69_18
	b	.LBB69_27
.LBB69_17:
	move	$a1, $a0
	beqz	$s4, .LBB69_27
.LBB69_18:                              # %._crit_edge
	ori	$a0, $zero, 2
	bne	$s4, $a0, .LBB69_23
# %bb.19:
	ld.bu	$a0, $s0, 0
	ldx.bu	$a0, $s3, $a0
	ori	$a3, $zero, 63
	bltu	$a3, $a0, .LBB69_26
# %bb.20:
	ld.bu	$a2, $s0, 1
	ldx.bu	$a2, $s3, $a2
	bltu	$a3, $a2, .LBB69_26
# %bb.21:
	ld.bu	$a3, $s0, 2
	ldx.bu	$a3, $s3, $a3
	ori	$a4, $zero, 63
	bltu	$a4, $a3, .LBB69_26
# %bb.22:
	slli.d	$a0, $a0, 2
	srli.d	$a4, $a2, 4
	or	$a0, $a4, $a0
	st.b	$a0, $a1, 0
	slli.d	$a0, $a2, 4
	srli.d	$a2, $a3, 2
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 1
	b	.LBB69_27
.LBB69_23:
	ld.bu	$a0, $s0, 0
	ldx.bu	$a0, $s3, $a0
	ori	$a2, $zero, 63
	bltu	$a2, $a0, .LBB69_26
# %bb.24:
	ld.bu	$a3, $s0, 1
	ldx.bu	$a3, $s3, $a3
	bltu	$a2, $a3, .LBB69_26
# %bb.25:
	slli.d	$a0, $a0, 2
	srli.d	$a2, $a3, 4
	or	$a0, $a2, $a0
	st.b	$a0, $a1, 0
	b	.LBB69_27
.LBB69_26:
	move	$fp, $zero
.LBB69_27:                              # %.loopexit
	move	$a0, $fp
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end69:
	.size	base64decode, .Lfunc_end69-base64decode
                                        # -- End function
	.globl	memq                            # -- Begin function memq
	.p2align	5
	.type	memq,@function
memq:                                   # @memq
# %bb.0:
	beqz	$a1, .LBB70_5
# %bb.1:                                # %.lr.ph.preheader
	move	$a2, $a0
	ori	$a3, $zero, 1
	move	$a0, $a1
	.p2align	4, , 16
.LBB70_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a4, $a0, 2
	bne	$a4, $a3, .LBB70_7
# %bb.3:                                #   in Loop: Header=BB70_2 Depth=1
	ld.d	$a4, $a0, 8
	beq	$a2, $a4, .LBB70_6
# %bb.4:                                #   in Loop: Header=BB70_2 Depth=1
	ld.d	$a0, $a0, 16
	bnez	$a0, .LBB70_2
.LBB70_5:
	move	$a0, $zero
.LBB70_6:                               # %.critedge12
	ret
.LBB70_7:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end70:
	.size	memq, .Lfunc_end70-memq
                                        # -- End function
	.globl	member                          # -- Begin function member
	.p2align	5
	.type	member,@function
member:                                 # @member
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	beqz	$a1, .LBB71_5
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a1
	move	$s1, $a0
	ori	$s2, $zero, 1
	move	$s0, $a1
	.p2align	4, , 16
.LBB71_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s0, 2
	bne	$a0, $s2, .LBB71_7
# %bb.3:                                #   in Loop: Header=BB71_2 Depth=1
	ld.d	$a1, $s0, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(equal)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB71_6
# %bb.4:                                #   in Loop: Header=BB71_2 Depth=1
	ld.d	$s0, $s0, 16
	bnez	$s0, .LBB71_2
.LBB71_5:
	move	$s0, $zero
.LBB71_6:                               # %.critedge12
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB71_7:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	move	$a1, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end71:
	.size	member, .Lfunc_end71-member
                                        # -- End function
	.globl	memv                            # -- Begin function memv
	.p2align	5
	.type	memv,@function
memv:                                   # @memv
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	beqz	$a1, .LBB72_5
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a1
	move	$s1, $a0
	ori	$s2, $zero, 1
	move	$s0, $a1
	.p2align	4, , 16
.LBB72_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s0, 2
	bne	$a0, $s2, .LBB72_7
# %bb.3:                                #   in Loop: Header=BB72_2 Depth=1
	ld.d	$a1, $s0, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(eql)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB72_6
# %bb.4:                                #   in Loop: Header=BB72_2 Depth=1
	ld.d	$s0, $s0, 16
	bnez	$s0, .LBB72_2
.LBB72_5:
	move	$s0, $zero
.LBB72_6:                               # %.critedge12
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB72_7:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	move	$a1, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end72:
	.size	memv, .Lfunc_end72-memv
                                        # -- End function
	.globl	nth                             # -- Begin function nth
	.p2align	5
	.type	nth,@function
nth:                                    # @nth
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	beqz	$a0, .LBB73_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB73_3
.LBB73_2:                               # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB73_3:                               # %get_c_long.exit
	fld.d	$fa0, $fp, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	blez	$a0, .LBB73_8
# %bb.4:                                # %.lr.ph.preheader
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB73_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	beqz	$s0, .LBB73_11
# %bb.6:                                #   in Loop: Header=BB73_5 Depth=1
	ld.hu	$a2, $s0, 2
	bne	$a2, $a1, .LBB73_11
# %bb.7:                                #   in Loop: Header=BB73_5 Depth=1
	ld.d	$s0, $s0, 16
	addi.d	$a0, $a0, -1
	bnez	$a0, .LBB73_5
.LBB73_8:                               # %.critedge
	beqz	$s0, .LBB73_11
# %bb.9:                                # %.critedge.thread
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB73_11
# %bb.10:
	ld.d	$a0, $s0, 8
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB73_11:                              # %.critedge16
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	move	$a1, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end73:
	.size	nth, .Lfunc_end73-nth
                                        # -- End function
	.globl	lref_default                    # -- Begin function lref_default
	.p2align	5
	.type	lref_default,@function
lref_default:                           # @lref_default
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	beqz	$a1, .LBB74_2
# %bb.1:
	ld.hu	$a0, $s1, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB74_3
.LBB74_2:                               # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB74_3:                               # %get_c_long.exit
	fld.d	$fa0, $s1, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	blez	$a0, .LBB74_8
# %bb.4:                                # %.lr.ph.preheader
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB74_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	beqz	$s0, .LBB74_11
# %bb.6:                                #   in Loop: Header=BB74_5 Depth=1
	ld.hu	$a2, $s0, 2
	bne	$a2, $a1, .LBB74_11
# %bb.7:                                #   in Loop: Header=BB74_5 Depth=1
	ld.d	$s0, $s0, 16
	addi.d	$a0, $a0, -1
	bnez	$a0, .LBB74_5
.LBB74_8:                               # %.critedge
	beqz	$s0, .LBB74_11
# %bb.9:                                # %.critedge.thread
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB74_11
# %bb.10:
	ld.d	$a0, $s0, 8
	b	.LBB74_14
.LBB74_11:                              # %.critedge18
	beqz	$fp, .LBB74_13
# %bb.12:
	move	$a0, $fp
	move	$a1, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(lapply)
	jr	$t8
.LBB74_13:
	move	$a0, $zero
.LBB74_14:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end74:
	.size	lref_default, .Lfunc_end74-lref_default
                                        # -- End function
	.globl	larg_default                    # -- Begin function larg_default
	.p2align	5
	.type	larg_default,@function
larg_default:                           # @larg_default
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	beqz	$a1, .LBB75_2
# %bb.1:
	ld.hu	$a0, $s1, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB75_3
.LBB75_2:                               # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB75_3:                               # %get_c_long.exit
	beqz	$s0, .LBB75_12
# %bb.4:                                # %.lr.ph.preheader
	fld.d	$fa0, $s1, 8
	move	$s2, $zero
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$s3, $fa0
	ori	$s4, $zero, 13
	ori	$s5, $zero, 1
	ori	$a0, $zero, 1
	lu32i.d	$a0, 8192
	lu52i.d	$s6, $a0, 64
	ori	$s7, $zero, 63
	b	.LBB75_6
.LBB75_5:                               #   in Loop: Header=BB75_6 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$s0, .LBB75_12
	.p2align	4, , 16
.LBB75_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB75_10
# %bb.7:                                #   in Loop: Header=BB75_6 Depth=1
	ld.hu	$a1, $a0, 2
	bne	$a1, $s4, .LBB75_10
# %bb.8:                                #   in Loop: Header=BB75_6 Depth=1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	ld.bu	$a1, $a1, 0
	bltu	$s7, $a1, .LBB75_10
# %bb.9:                                #   in Loop: Header=BB75_6 Depth=1
	sll.d	$a1, $s5, $a1
	and	$a1, $a1, $s6
	bnez	$a1, .LBB75_5
	.p2align	4, , 16
.LBB75_10:                              # %.critedge
                                        #   in Loop: Header=BB75_6 Depth=1
	beq	$s2, $s3, .LBB75_13
# %bb.11:                               #   in Loop: Header=BB75_6 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s2, $s2, 1
	bnez	$s0, .LBB75_6
.LBB75_12:
	move	$a0, $fp
.LBB75_13:                              # %._crit_edge
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end75:
	.size	larg_default, .Lfunc_end75-larg_default
                                        # -- End function
	.globl	lkey_default                    # -- Begin function lkey_default
	.p2align	5
	.type	lkey_default,@function
lkey_default:                           # @lkey_default
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB76_11
# %bb.1:                                # %.lr.ph.preheader
	move	$s2, $a0
	ori	$s4, $zero, 13
	ori	$s5, $zero, 58
	ori	$s6, $zero, 61
	b	.LBB76_3
	.p2align	4, , 16
.LBB76_2:                               # %.critedge
                                        #   in Loop: Header=BB76_3 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$a0, .LBB76_11
.LBB76_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_2
# %bb.4:                                #   in Loop: Header=BB76_3 Depth=1
	ld.hu	$a1, $a0, 2
	bne	$a1, $s4, .LBB76_2
# %bb.5:                                #   in Loop: Header=BB76_3 Depth=1
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.bu	$a0, $a0, 0
	bne	$a0, $s5, .LBB76_2
# %bb.6:                                #   in Loop: Header=BB76_3 Depth=1
	addi.d	$a0, $s3, 1
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB76_2
# %bb.7:                                #   in Loop: Header=BB76_3 Depth=1
	add.d	$a0, $s3, $s2
	ld.bu	$a1, $a0, 1
	bne	$a1, $s6, .LBB76_2
# %bb.8:
	addi.d	$s0, $a0, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 13
	addi.w	$a1, $zero, -1
	st.h	$a0, $fp, 2
	bne	$s2, $a1, .LBB76_10
# %bb.9:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB76_10:                              # %strcons.exit
	addi.d	$a0, $s2, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	st.d	$s2, $fp, 8
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	stx.b	$zero, $a0, $s2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
.LBB76_11:                              # %.loopexit
	move	$a0, $fp
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end76:
	.size	lkey_default, .Lfunc_end76-lkey_default
                                        # -- End function
	.globl	llist                           # -- Begin function llist
	.p2align	5
	.type	llist,@function
llist:                                  # @llist
# %bb.0:
	ret
.Lfunc_end77:
	.size	llist, .Lfunc_end77-llist
                                        # -- End function
	.globl	writes1                         # -- Begin function writes1
	.p2align	5
	.type	writes1,@function
writes1:                                # @writes1
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(stack_limit_ptr)
	ld.d	$a0, $a0, %got_pc_lo12(stack_limit_ptr)
	ld.d	$a0, $a0, 0
	addi.d	$a1, $sp, 8
	bgeu	$a1, $a0, .LBB78_2
# %bb.1:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(err_stack)
	jirl	$ra, $ra, 0
.LBB78_2:
	st.d	$s0, $sp, 8
	beqz	$s0, .LBB78_11
# %bb.3:                                # %.lr.ph.preheader
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB78_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s0, 2
	bne	$a0, $s1, .LBB78_6
# %bb.5:                                #   in Loop: Header=BB78_4 Depth=1
	ld.d	$a1, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(writes1)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	ld.d	$s0, $a0, 16
	st.d	$s0, $sp, 8
	bnez	$s0, .LBB78_4
	b	.LBB78_11
.LBB78_6:                               # %.lr.ph
	beqz	$a0, .LBB78_11
# %bb.7:                                # %.lr.ph
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB78_9
# %bb.8:                                # %.lr.ph
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB78_10
.LBB78_9:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fput_st)
	jirl	$ra, $ra, 0
	b	.LBB78_11
.LBB78_10:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(lprin1f)
	jirl	$ra, $ra, 0
.LBB78_11:                              # %.thread
	move	$a0, $zero
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end78:
	.size	writes1, .Lfunc_end78-writes1
                                        # -- End function
	.globl	writes                          # -- Begin function writes
	.p2align	5
	.type	writes,@function
writes:                                 # @writes
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(writes1)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end79:
	.size	writes, .Lfunc_end79-writes
                                        # -- End function
	.globl	last                            # -- Begin function last
	.p2align	5
	.type	last,@function
last:                                   # @last
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB80_3
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB80_3
# %bb.2:
	ld.d	$a0, $fp, 16
	bnez	$a0, .LBB80_4
	b	.LBB80_7
.LBB80_3:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB80_7
.LBB80_4:                               # %.lr.ph.preheader
	ld.hu	$a2, $a0, 2
	ori	$a1, $zero, 1
	bne	$a2, $a1, .LBB80_7
	.p2align	4, , 16
.LBB80_5:                               # %.lr.ph21
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB80_7
# %bb.6:                                # %.lr.ph
                                        #   in Loop: Header=BB80_5 Depth=1
	ld.hu	$a2, $a0, 2
	beq	$a2, $a1, .LBB80_5
.LBB80_7:                               # %.critedge13
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end80:
	.size	last, .Lfunc_end80-last
                                        # -- End function
	.globl	butlast                         # -- Begin function butlast
	.p2align	5
	.type	butlast,@function
butlast:                                # @butlast
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$a1, $a0
	st.d	$a0, $sp, 8
	pcalau12i	$a0, %got_pc_hi20(stack_limit_ptr)
	ld.d	$a0, $a0, %got_pc_lo12(stack_limit_ptr)
	ld.d	$a0, $a0, 0
	addi.d	$a2, $sp, 8
	bgeu	$a2, $a0, .LBB81_2
# %bb.1:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(err_stack)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
.LBB81_2:
	bnez	$a1, .LBB81_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	beqz	$a1, .LBB81_8
.LBB81_4:                               # %.thread
	ld.hu	$a0, $a1, 2
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB81_9
# %bb.5:
	ld.d	$a0, $a1, 16
	beqz	$a0, .LBB81_7
# %bb.6:
	ld.d	$fp, $a1, 8
	pcaddu18i	$ra, %call36(butlast)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB81_7:
	move	$a0, $zero
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB81_8:
	move	$a1, $zero
.LBB81_9:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end81:
	.size	butlast, .Lfunc_end81-butlast
                                        # -- End function
	.globl	nconc                           # -- Begin function nconc
	.p2align	5
	.type	nconc,@function
nconc:                                  # @nconc
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB82_3
# %bb.1:
	move	$fp, $a0
	ld.hu	$a0, $a0, 2
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB82_4
# %bb.2:
	ld.d	$a0, $fp, 16
	move	$a2, $fp
	bnez	$a0, .LBB82_5
	b	.LBB82_8
.LBB82_3:
	move	$fp, $a1
	b	.LBB82_9
.LBB82_4:                               # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	move	$s0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	move	$a2, $fp
	beqz	$a0, .LBB82_8
.LBB82_5:                               # %.lr.ph.i.preheader
	ld.hu	$a4, $a0, 2
	ori	$a3, $zero, 1
	move	$a2, $fp
	bne	$a4, $a3, .LBB82_8
	.p2align	4, , 16
.LBB82_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB82_8
# %bb.7:                                # %.lr.ph.i
                                        #   in Loop: Header=BB82_6 Depth=1
	ld.hu	$a4, $a0, 2
	beq	$a4, $a3, .LBB82_6
.LBB82_8:                               # %last.exit
	move	$a0, $a2
	pcaddu18i	$ra, %call36(setcdr)
	jirl	$ra, $ra, 0
.LBB82_9:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end82:
	.size	nconc, .Lfunc_end82-nconc
                                        # -- End function
	.globl	funcall1                        # -- Begin function funcall1
	.p2align	5
	.type	funcall1,@function
funcall1:                               # @funcall1
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	st.d	$a0, $sp, 8
	beqz	$a0, .LBB83_11
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a2, $zero, 11
	beq	$a0, $a2, .LBB83_6
# %bb.2:
	ori	$a2, $zero, 5
	bne	$a0, $a2, .LBB83_11
# %bb.3:
	pcalau12i	$a0, %got_pc_hi20(stack_limit_ptr)
	ld.d	$a0, $a0, %got_pc_lo12(stack_limit_ptr)
	ld.d	$a0, $a0, 0
	addi.d	$a2, $sp, 8
	bgeu	$a2, $a0, .LBB83_5
# %bb.4:
	addi.d	$a0, $sp, 8
	move	$fp, $a1
	pcaddu18i	$ra, %call36(err_stack)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	ld.d	$fp, $sp, 8
.LBB83_5:
	ld.d	$a2, $fp, 16
	move	$a0, $a1
	jirl	$ra, $a2, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB83_6:
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB83_11
# %bb.7:
	ld.hu	$a2, $a0, 2
	ori	$a3, $zero, 6
	bne	$a2, $a3, .LBB83_11
# %bb.8:
	pcalau12i	$a2, %got_pc_hi20(stack_limit_ptr)
	ld.d	$a2, $a2, %got_pc_lo12(stack_limit_ptr)
	ld.d	$a2, $a2, 0
	addi.d	$a3, $sp, 8
	bgeu	$a3, $a2, .LBB83_10
# %bb.9:
	addi.d	$a0, $sp, 8
	move	$fp, $a1
	pcaddu18i	$ra, %call36(err_stack)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	ld.d	$fp, $sp, 8
	ld.d	$a0, $fp, 16
.LBB83_10:
	ld.d	$a2, $a0, 16
	ld.d	$a0, $fp, 8
	jirl	$ra, $a2, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB83_11:                              # %.critedge
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(lapply)
	jr	$t8
.Lfunc_end83:
	.size	funcall1, .Lfunc_end83-funcall1
                                        # -- End function
	.globl	funcall2                        # -- Begin function funcall2
	.p2align	5
	.type	funcall2,@function
funcall2:                               # @funcall2
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	st.d	$a0, $sp, 0
	beqz	$a0, .LBB84_6
# %bb.1:
	ld.hu	$a1, $a0, 2
	ori	$a3, $zero, 21
	beq	$a1, $a3, .LBB84_3
# %bb.2:
	ori	$a3, $zero, 6
	bne	$a1, $a3, .LBB84_6
.LBB84_3:
	pcalau12i	$a1, %got_pc_hi20(stack_limit_ptr)
	ld.d	$a1, $a1, %got_pc_lo12(stack_limit_ptr)
	ld.d	$a1, $a1, 0
	addi.d	$a3, $sp, 0
	bgeu	$a3, $a1, .LBB84_5
# %bb.4:
	addi.d	$a0, $sp, 0
	move	$s0, $a2
	pcaddu18i	$ra, %call36(err_stack)
	jirl	$ra, $ra, 0
	move	$a2, $s0
	ld.d	$a0, $sp, 0
.LBB84_5:
	ld.d	$a3, $a0, 16
	move	$a0, $fp
	move	$a1, $a2
	jirl	$ra, $a3, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB84_6:                               # %.thread
	move	$s0, $a0
	move	$a0, $a2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(lapply)
	jr	$t8
.Lfunc_end84:
	.size	funcall2, .Lfunc_end84-funcall2
                                        # -- End function
	.globl	lqsort                          # -- Begin function lqsort
	.p2align	5
	.type	lqsort,@function
lqsort:                                 # @lqsort
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	beqz	$a0, .LBB85_25
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	move	$s2, $zero
	ori	$a0, $zero, 1
	move	$a1, $s1
	.p2align	4, , 16
.LBB85_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a2, $a1, 2
	bne	$a2, $a0, .LBB85_4
# %bb.3:                                #   in Loop: Header=BB85_2 Depth=1
	ld.d	$a1, $a1, 16
	addi.w	$s2, $s2, 1
	bnez	$a1, .LBB85_2
	b	.LBB85_5
.LBB85_4:                               # %.loopexit
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB85_25
.LBB85_5:                               # %.loopexit.thread90
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	mod.w	$s7, $a0, $s2
	move	$a0, $s1
	blez	$s7, .LBB85_8
# %bb.6:                                # %.lr.ph64.preheader
	move	$a1, $s7
	move	$a0, $s1
	.p2align	4, , 16
.LBB85_7:                               # %.lr.ph64
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	addi.w	$a1, $a1, -1
	bnez	$a1, .LBB85_7
.LBB85_8:                               # %._crit_edge
	ld.d	$s2, $a0, 8
	pcalau12i	$a0, %got_pc_hi20(stack_limit_ptr)
	ld.d	$s8, $a0, %got_pc_lo12(stack_limit_ptr)
	move	$s3, $zero
	move	$s4, $zero
	b	.LBB85_12
	.p2align	4, , 16
.LBB85_9:                               # %.thread.i
                                        #   in Loop: Header=BB85_12 Depth=1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lapply)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 8
	beqz	$a0, .LBB85_21
.LBB85_10:                              #   in Loop: Header=BB85_12 Depth=1
	move	$a0, $a1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s4, $a0
.LBB85_11:                              #   in Loop: Header=BB85_12 Depth=1
	ld.d	$s1, $s1, 16
	addi.w	$s7, $s7, -1
	beqz	$s1, .LBB85_22
.LBB85_12:                              # =>This Inner Loop Header: Depth=1
	beqz	$s7, .LBB85_11
# %bb.13:                               #   in Loop: Header=BB85_12 Depth=1
	ld.d	$s5, $s1, 8
	beqz	$fp, .LBB85_15
# %bb.14:                               #   in Loop: Header=BB85_12 Depth=1
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(funcall1)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(funcall1)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 16
	bnez	$s0, .LBB85_16
	b	.LBB85_9
	.p2align	4, , 16
.LBB85_15:                              #   in Loop: Header=BB85_12 Depth=1
	move	$a0, $s2
	st.d	$s0, $sp, 16
	beqz	$s0, .LBB85_9
.LBB85_16:                              #   in Loop: Header=BB85_12 Depth=1
	ld.hu	$a1, $s0, 2
	ori	$a2, $zero, 21
	beq	$a1, $a2, .LBB85_18
# %bb.17:                               #   in Loop: Header=BB85_12 Depth=1
	ori	$a2, $zero, 6
	bne	$a1, $a2, .LBB85_9
.LBB85_18:                              #   in Loop: Header=BB85_12 Depth=1
	move	$s6, $a0
	ld.d	$a1, $s8, 0
	move	$a0, $s0
	addi.d	$a2, $sp, 16
	bgeu	$a2, $a1, .LBB85_20
# %bb.19:                               #   in Loop: Header=BB85_12 Depth=1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(err_stack)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
.LBB85_20:                              #   in Loop: Header=BB85_12 Depth=1
	ld.d	$a2, $a0, 16
	move	$a0, $s5
	move	$a1, $s6
	jirl	$ra, $a2, 0
	ld.d	$a1, $s1, 8
	bnez	$a0, .LBB85_10
.LBB85_21:                              #   in Loop: Header=BB85_12 Depth=1
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	b	.LBB85_11
.LBB85_22:                              # %._crit_edge73
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(lqsort)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(lqsort)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$s1, .LBB85_26
# %bb.23:
	ld.hu	$a0, $s1, 2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB85_27
# %bb.24:
	ld.d	$a0, $s1, 16
	move	$a1, $s1
	bnez	$a0, .LBB85_28
	b	.LBB85_31
.LBB85_25:
	move	$s1, $zero
	b	.LBB85_32
.LBB85_26:
	move	$s1, $fp
	b	.LBB85_32
.LBB85_27:                              # %.critedge.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	beqz	$a0, .LBB85_31
.LBB85_28:                              # %.lr.ph.i.preheader.i
	ld.hu	$a3, $a0, 2
	ori	$a2, $zero, 1
	move	$a1, $s1
	bne	$a3, $a2, .LBB85_31
	.p2align	4, , 16
.LBB85_29:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB85_31
# %bb.30:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB85_29 Depth=1
	ld.hu	$a3, $a0, 2
	beq	$a3, $a2, .LBB85_29
.LBB85_31:                              # %last.exit.i
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(setcdr)
	jirl	$ra, $ra, 0
.LBB85_32:                              # %nconc.exit
	move	$a0, $s1
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end85:
	.size	lqsort, .Lfunc_end85-lqsort
                                        # -- End function
	.globl	string_lessp                    # -- Begin function string_lessp
	.p2align	5
	.type	string_lessp,@function
string_lessp:                           # @string_lessp
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(sym_t)
	ld.d	$a1, $a1, %got_pc_lo12(sym_t)
	ld.d	$a1, $a1, 0
	srai.d	$a0, $a0, 63
	and	$a0, $a0, $a1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end86:
	.size	string_lessp, .Lfunc_end86-string_lessp
                                        # -- End function
	.globl	benchmark_funcall1              # -- Begin function benchmark_funcall1
	.p2align	5
	.type	benchmark_funcall1,@function
benchmark_funcall1:                     # @benchmark_funcall1
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	beqz	$a0, .LBB87_2
# %bb.1:
	ld.hu	$a0, $s1, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB87_3
.LBB87_2:                               # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB87_3:                               # %get_c_long.exit
	fld.d	$fa0, $s1, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$s1, $fa0
	blez	$s1, .LBB87_5
	.p2align	4, , 16
.LBB87_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(funcall1)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	bnez	$s1, .LBB87_4
	b	.LBB87_6
.LBB87_5:
	move	$a0, $zero
.LBB87_6:                               # %._crit_edge
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end87:
	.size	benchmark_funcall1, .Lfunc_end87-benchmark_funcall1
                                        # -- End function
	.globl	benchmark_funcall2              # -- Begin function benchmark_funcall2
	.p2align	5
	.type	benchmark_funcall2,@function
benchmark_funcall2:                     # @benchmark_funcall2
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	move	$s1, $a0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$s2, .LBB88_2
# %bb.1:
	ld.hu	$a0, $s2, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB88_3
.LBB88_2:                               # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB88_3:                               # %get_c_long.exit
	fld.d	$fa0, $s2, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$s2, $fa0
	blez	$s2, .LBB88_13
# %bb.4:                                # %.lr.ph
	beqz	$s0, .LBB88_12
# %bb.5:
	ori	$s3, $zero, 21
	pcalau12i	$a0, %got_pc_hi20(stack_limit_ptr)
	ld.d	$s4, $a0, %got_pc_lo12(stack_limit_ptr)
	addi.d	$s5, $sp, 16
	ori	$s6, $zero, 6
	b	.LBB88_7
	.p2align	4, , 16
.LBB88_6:                               #   in Loop: Header=BB88_7 Depth=1
	ld.d	$a2, $a0, 16
	move	$a0, $fp
	move	$a1, $s1
	jirl	$ra, $a2, 0
	addi.d	$s2, $s2, -1
	beqz	$s2, .LBB88_14
.LBB88_7:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s0, 2
	st.d	$s0, $sp, 16
	beq	$a0, $s3, .LBB88_9
# %bb.8:                                # %.lr.ph.split
                                        #   in Loop: Header=BB88_7 Depth=1
	bne	$a0, $s6, .LBB88_11
.LBB88_9:                               #   in Loop: Header=BB88_7 Depth=1
	ld.d	$a1, $s4, 0
	move	$a0, $s0
	bgeu	$s5, $a1, .LBB88_6
# %bb.10:                               #   in Loop: Header=BB88_7 Depth=1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(err_stack)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	b	.LBB88_6
	.p2align	4, , 16
.LBB88_11:                              # %.thread.i
                                        #   in Loop: Header=BB88_7 Depth=1
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lapply)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	bnez	$s2, .LBB88_7
	b	.LBB88_14
	.p2align	4, , 16
.LBB88_12:                              # %.thread.i.us
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(lapply)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	bnez	$s2, .LBB88_12
	b	.LBB88_14
.LBB88_13:
	move	$a0, $zero
.LBB88_14:                              # %._crit_edge
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end88:
	.size	benchmark_funcall2, .Lfunc_end88-benchmark_funcall2
                                        # -- End function
	.globl	benchmark_eval                  # -- Begin function benchmark_eval
	.p2align	5
	.type	benchmark_eval,@function
benchmark_eval:                         # @benchmark_eval
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	beqz	$a0, .LBB89_2
# %bb.1:
	ld.hu	$a0, $s1, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB89_3
.LBB89_2:                               # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB89_3:                               # %get_c_long.exit
	fld.d	$fa0, $s1, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$s1, $fa0
	blez	$s1, .LBB89_5
	.p2align	4, , 16
.LBB89_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	bnez	$s1, .LBB89_4
	b	.LBB89_6
.LBB89_5:
	move	$a0, $zero
.LBB89_6:                               # %._crit_edge
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end89:
	.size	benchmark_eval, .Lfunc_end89-benchmark_eval
                                        # -- End function
	.globl	mapcar1                         # -- Begin function mapcar1
	.p2align	5
	.type	mapcar1,@function
mapcar1:                                # @mapcar1
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	beqz	$a1, .LBB90_5
# %bb.1:
	move	$s1, $a1
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(funcall1)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB90_6
# %bb.2:                                # %.lr.ph.preheader
	move	$s1, $a0
	ori	$s2, $zero, 1
	move	$s3, $s0
	.p2align	4, , 16
.LBB90_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s1, 2
	bne	$a0, $s2, .LBB90_6
# %bb.4:                                #   in Loop: Header=BB90_3 Depth=1
	ld.d	$a1, $s1, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(funcall1)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 16
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 16
	ld.d	$s1, $s1, 16
	move	$s3, $a0
	bnez	$s1, .LBB90_3
	b	.LBB90_6
.LBB90_5:
	move	$s0, $zero
.LBB90_6:                               # %.critedge
	move	$a0, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end90:
	.size	mapcar1, .Lfunc_end90-mapcar1
                                        # -- End function
	.globl	mapcar2                         # -- Begin function mapcar2
	.p2align	5
	.type	mapcar2,@function
mapcar2:                                # @mapcar2
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$s8, $zero
	beqz	$a1, .LBB91_27
# %bb.1:
	move	$s2, $a2
	beqz	$a2, .LBB91_27
# %bb.2:
	move	$s1, $a1
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 16
	beqz	$fp, .LBB91_8
# %bb.3:
	ld.hu	$a1, $fp, 2
	ori	$a2, $zero, 21
	beq	$a1, $a2, .LBB91_5
# %bb.4:
	ori	$a2, $zero, 6
	bne	$a1, $a2, .LBB91_8
.LBB91_5:
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(stack_limit_ptr)
	ld.d	$a0, $a0, %got_pc_lo12(stack_limit_ptr)
	ld.d	$a1, $a0, 0
	addi.d	$a2, $sp, 16
	move	$a0, $fp
	bgeu	$a2, $a1, .LBB91_7
# %bb.6:
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(err_stack)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
.LBB91_7:
	ld.d	$a2, $a0, 16
	move	$a0, $s0
	move	$a1, $s3
	jirl	$ra, $a2, 0
	b	.LBB91_9
.LBB91_8:                               # %.thread.i
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lapply)
	jirl	$ra, $ra, 0
.LBB91_9:                               # %funcall2.exit
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB91_27
# %bb.10:                               # %.lr.ph
	move	$s2, $a0
	beqz	$fp, .LBB91_22
# %bb.11:
	ori	$s5, $zero, 1
	ori	$s6, $zero, 21
	pcalau12i	$a0, %got_pc_hi20(stack_limit_ptr)
	ld.d	$s7, $a0, %got_pc_lo12(stack_limit_ptr)
	move	$s0, $s8
	b	.LBB91_14
	.p2align	4, , 16
.LBB91_12:                              #   in Loop: Header=BB91_14 Depth=1
	ld.d	$a2, $a0, 16
	move	$a0, $s3
	move	$a1, $s4
	jirl	$ra, $a2, 0
.LBB91_13:                              # %funcall2.exit33
                                        #   in Loop: Header=BB91_14 Depth=1
	ld.d	$a1, $s0, 16
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	ld.d	$s1, $s1, 16
	ld.d	$s2, $s2, 16
	move	$s0, $a0
	beqz	$s1, .LBB91_27
.LBB91_14:                              # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s1, 2
	bne	$a0, $s5, .LBB91_27
# %bb.15:                               # %.lr.ph.split
                                        #   in Loop: Header=BB91_14 Depth=1
	beqz	$s2, .LBB91_27
# %bb.16:                               #   in Loop: Header=BB91_14 Depth=1
	ld.hu	$a0, $s2, 2
	bne	$a0, $s5, .LBB91_27
# %bb.17:                               #   in Loop: Header=BB91_14 Depth=1
	ld.d	$s3, $s1, 8
	ld.hu	$a0, $fp, 2
	ld.d	$s4, $s2, 8
	st.d	$fp, $sp, 16
	beq	$a0, $s6, .LBB91_19
# %bb.18:                               #   in Loop: Header=BB91_14 Depth=1
	ori	$a1, $zero, 6
	bne	$a0, $a1, .LBB91_21
.LBB91_19:                              #   in Loop: Header=BB91_14 Depth=1
	ld.d	$a1, $s7, 0
	move	$a0, $fp
	addi.d	$a2, $sp, 16
	bgeu	$a2, $a1, .LBB91_12
# %bb.20:                               #   in Loop: Header=BB91_14 Depth=1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(err_stack)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	b	.LBB91_12
	.p2align	4, , 16
.LBB91_21:                              # %.thread.i32
                                        #   in Loop: Header=BB91_14 Depth=1
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lapply)
	jirl	$ra, $ra, 0
	b	.LBB91_13
.LBB91_22:                              # %.lr.ph.split.us.preheader
	ori	$s0, $zero, 1
	move	$s3, $s8
	.p2align	4, , 16
.LBB91_23:                              # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s1, 2
	bne	$a0, $s0, .LBB91_27
# %bb.24:                               # %.lr.ph.split.us
                                        #   in Loop: Header=BB91_23 Depth=1
	beqz	$s2, .LBB91_27
# %bb.25:                               #   in Loop: Header=BB91_23 Depth=1
	ld.hu	$a0, $s2, 2
	bne	$a0, $s0, .LBB91_27
# %bb.26:                               # %.thread.i32.us
                                        #   in Loop: Header=BB91_23 Depth=1
	ld.d	$fp, $s1, 8
	ld.d	$a0, $s2, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(lapply)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 16
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 16
	ld.d	$s1, $s1, 16
	ld.d	$s2, $s2, 16
	move	$s3, $a0
	bnez	$s1, .LBB91_23
.LBB91_27:                              # %.critedge
	move	$a0, $s8
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end91:
	.size	mapcar2, .Lfunc_end91-mapcar2
                                        # -- End function
	.globl	mapcar                          # -- Begin function mapcar
	.p2align	5
	.type	mapcar,@function
mapcar:                                 # @mapcar
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(nlength)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB92_2
# %bb.1:
	ld.hu	$a0, $s1, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB92_3
.LBB92_2:                               # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB92_3:                               # %get_c_long.exit
	fld.d	$fa0, $s1, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB92_6
# %bb.4:                                # %get_c_long.exit
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB92_7
# %bb.5:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(mapcar1)
	jr	$t8
.LBB92_6:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $fp
	move	$a1, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(mapcar2)
	jr	$t8
.LBB92_7:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	move	$a1, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(err)
	jr	$t8
.Lfunc_end92:
	.size	mapcar, .Lfunc_end92-mapcar
                                        # -- End function
	.globl	lfmod                           # -- Begin function lfmod
	.p2align	5
	.type	lfmod,@function
lfmod:                                  # @lfmod
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a0, .LBB93_2
# %bb.1:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB93_3
.LBB93_2:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB93_3:
	beqz	$fp, .LBB93_5
# %bb.4:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB93_6
.LBB93_5:                               # %.critedge11
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a0, $a0, %pc_lo12(.L.str.82)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB93_6:
	fld.d	$fa0, $s0, 8
	fld.d	$fa1, $fp, 8
	pcaddu18i	$ra, %call36(fmod)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end93:
	.size	lfmod, .Lfunc_end93-lfmod
                                        # -- End function
	.globl	lsubset                         # -- Begin function lsubset
	.p2align	5
	.type	lsubset,@function
lsubset:                                # @lsubset
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	beqz	$a1, .LBB94_6
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a1
	move	$s0, $a0
	move	$s1, $zero
	ori	$s2, $zero, 1
	b	.LBB94_3
	.p2align	4, , 16
.LBB94_2:                               #   in Loop: Header=BB94_3 Depth=1
	ld.d	$fp, $fp, 16
	beqz	$fp, .LBB94_7
.LBB94_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $fp, 2
	bne	$a0, $s2, .LBB94_7
# %bb.4:                                #   in Loop: Header=BB94_3 Depth=1
	ld.d	$a1, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(funcall1)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB94_2
# %bb.5:                                #   in Loop: Header=BB94_3 Depth=1
	ld.d	$a0, $fp, 8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	b	.LBB94_2
.LBB94_6:
	move	$s1, $zero
.LBB94_7:                               # %.critedge
	move	$a0, $s1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(nreverse)
	jr	$t8
.Lfunc_end94:
	.size	lsubset, .Lfunc_end94-lsubset
                                        # -- End function
	.globl	ass                             # -- Begin function ass
	.p2align	5
	.type	ass,@function
ass:                                    # @ass
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	beqz	$a1, .LBB95_19
# %bb.1:                                # %.lr.ph
	move	$s2, $a2
	move	$s7, $a1
	move	$s0, $a0
	beqz	$a2, .LBB95_13
# %bb.2:
	ori	$s4, $zero, 1
	ori	$s5, $zero, 21
	pcalau12i	$a0, %got_pc_hi20(stack_limit_ptr)
	ld.d	$s6, $a0, %got_pc_lo12(stack_limit_ptr)
	ori	$s8, $zero, 6
	move	$fp, $s7
	b	.LBB95_5
	.p2align	4, , 16
.LBB95_3:                               #   in Loop: Header=BB95_5 Depth=1
	ld.d	$a2, $a0, 16
	move	$a0, $s3
	move	$a1, $s0
	jirl	$ra, $a2, 0
	bnez	$a0, .LBB95_21
.LBB95_4:                               # %.critedge17
                                        #   in Loop: Header=BB95_5 Depth=1
	ld.d	$fp, $fp, 16
	beqz	$fp, .LBB95_19
.LBB95_5:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $fp, 2
	bne	$a0, $s4, .LBB95_20
# %bb.6:                                #   in Loop: Header=BB95_5 Depth=1
	ld.d	$s1, $fp, 8
	beqz	$s1, .LBB95_4
# %bb.7:                                #   in Loop: Header=BB95_5 Depth=1
	ld.hu	$a0, $s1, 2
	bne	$a0, $s4, .LBB95_4
# %bb.8:                                #   in Loop: Header=BB95_5 Depth=1
	ld.hu	$a0, $s2, 2
	ld.d	$s3, $s1, 8
	st.d	$s2, $sp, 16
	beq	$a0, $s5, .LBB95_10
# %bb.9:                                #   in Loop: Header=BB95_5 Depth=1
	bne	$a0, $s8, .LBB95_12
.LBB95_10:                              #   in Loop: Header=BB95_5 Depth=1
	ld.d	$a1, $s6, 0
	move	$a0, $s2
	addi.d	$a2, $sp, 16
	bgeu	$a2, $a1, .LBB95_3
# %bb.11:                               #   in Loop: Header=BB95_5 Depth=1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(err_stack)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	b	.LBB95_3
.LBB95_12:                              # %.thread.i
                                        #   in Loop: Header=BB95_5 Depth=1
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(lapply)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB95_4
	b	.LBB95_21
.LBB95_13:                              # %.lr.ph.split.us.preheader
	ori	$fp, $zero, 1
	move	$s3, $s7
	b	.LBB95_15
	.p2align	4, , 16
.LBB95_14:                              # %.critedge17.us
                                        #   in Loop: Header=BB95_15 Depth=1
	ld.d	$s3, $s3, 16
	beqz	$s3, .LBB95_19
.LBB95_15:                              # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s3, 2
	bne	$a0, $fp, .LBB95_20
# %bb.16:                               #   in Loop: Header=BB95_15 Depth=1
	ld.d	$s1, $s3, 8
	beqz	$s1, .LBB95_14
# %bb.17:                               #   in Loop: Header=BB95_15 Depth=1
	ld.hu	$a0, $s1, 2
	bne	$a0, $fp, .LBB95_14
# %bb.18:                               # %.thread.i.us
                                        #   in Loop: Header=BB95_15 Depth=1
	ld.d	$s2, $s1, 8
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(lapply)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB95_14
	b	.LBB95_21
.LBB95_19:
	move	$s1, $zero
	b	.LBB95_21
.LBB95_20:                              # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a0, $a0, %pc_lo12(.L.str.83)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB95_21:                              # %.critedge18
	move	$a0, $s1
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end95:
	.size	ass, .Lfunc_end95-ass
                                        # -- End function
	.globl	append2                         # -- Begin function append2
	.p2align	5
	.type	append2,@function
append2:                                # @append2
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(nlength)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$s2, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(nlength)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	add.d	$a0, $a0, $s0
	blez	$a0, .LBB96_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$s0, $a0, 1
	ori	$s3, $zero, 1
	.p2align	4, , 16
.LBB96_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	move	$fp, $a0
	bltu	$s3, $s0, .LBB96_2
.LBB96_3:                               # %.preheader23
	move	$s0, $fp
	beqz	$s1, .LBB96_6
# %bb.4:
	move	$s0, $fp
	.p2align	4, , 16
.LBB96_5:                               # %.lr.ph29
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(setcar)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB96_5
.LBB96_6:                               # %.preheader
	beqz	$s2, .LBB96_9
# %bb.7:
	move	$s1, $s2
	.p2align	4, , 16
.LBB96_8:                               # %.lr.ph34
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(setcar)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB96_8
.LBB96_9:                               # %._crit_edge
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end96:
	.size	append2, .Lfunc_end96-append2
                                        # -- End function
	.globl	append                          # -- Begin function append
	.p2align	5
	.type	append,@function
append:                                 # @append
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a0, $sp, 0
	pcalau12i	$a1, %got_pc_hi20(stack_limit_ptr)
	ld.d	$a1, $a1, %got_pc_lo12(stack_limit_ptr)
	ld.d	$a1, $a1, 0
	addi.d	$a2, $sp, 0
	bgeu	$a2, $a1, .LBB97_2
# %bb.1:
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(err_stack)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0
.LBB97_2:
	beqz	$a0, .LBB97_6
# %bb.3:
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 0
	beqz	$a0, .LBB97_7
# %bb.4:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cddr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 0
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 0
	move	$fp, $a0
	move	$a0, $a1
	beqz	$s0, .LBB97_8
# %bb.5:
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(append)
	jirl	$ra, $ra, 0
	b	.LBB97_9
.LBB97_6:
	move	$a0, $zero
	b	.LBB97_10
.LBB97_7:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	b	.LBB97_10
.LBB97_8:
	pcaddu18i	$ra, %call36(cadr)
	jirl	$ra, $ra, 0
.LBB97_9:
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(append2)
	jirl	$ra, $ra, 0
.LBB97_10:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end97:
	.size	append, .Lfunc_end97-append
                                        # -- End function
	.globl	listn                           # -- Begin function listn
	.p2align	5
	.type	listn,@function
listn:                                  # @listn
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a7, $sp, 104
	st.d	$a6, $sp, 96
	st.d	$a5, $sp, 88
	st.d	$a4, $sp, 80
	st.d	$a3, $sp, 72
	st.d	$a2, $sp, 64
	st.d	$a1, $sp, 56
	blez	$a0, .LBB98_5
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a0
	move	$s0, $zero
	move	$s1, $a0
	.p2align	4, , 16
.LBB98_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	move	$s0, $a0
	bnez	$s1, .LBB98_2
# %bb.3:                                # %.lr.ph18.preheader
	addi.d	$a0, $sp, 56
	st.d	$a0, $sp, 8
	move	$s1, $s0
	.p2align	4, , 16
.LBB98_4:                               # %.lr.ph18
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 8
	addi.d	$a2, $a1, 8
	st.d	$a2, $sp, 8
	ld.d	$a1, $a1, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(setcar)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	move	$s1, $a0
	bnez	$fp, .LBB98_4
	b	.LBB98_6
.LBB98_5:                               # %._crit_edge
	move	$s0, $zero
	addi.d	$a0, $sp, 56
	st.d	$a0, $sp, 8
.LBB98_6:                               # %._crit_edge19
	move	$a0, $s0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end98:
	.size	listn, .Lfunc_end98-listn
                                        # -- End function
	.globl	fast_load                       # -- Begin function fast_load
	.p2align	5
	.type	fast_load,@function
fast_load:                              # @fast_load
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(siod_verbose_level)
	ld.d	$s2, $a0, %got_pc_lo12(siod_verbose_level)
	ld.d	$a0, $s2, 0
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB99_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a0, $a0, %pc_lo12(.L.str.84)
	pcaddu18i	$ra, %call36(put_st)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(put_st)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a0, $a0, %pc_lo12(.L.str.85)
	pcaddu18i	$ra, %call36(put_st)
	jirl	$ra, $ra, 0
.LBB99_2:
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a1, $a0, %pc_lo12(.L.str.86)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fopen_c)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -458752
	lu52i.d	$a0, $a0, 1029
	movgr2fr.d	$fa0, $a0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons_array)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	movgr2fr.d	$fa0, $zero
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	ori	$a0, $zero, 3
	ori	$s3, $zero, 3
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(listn)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(fast_read)
	jirl	$ra, $ra, 0
	beq	$fp, $a0, .LBB99_12
# %bb.3:                                # %.lr.ph
	beqz	$s0, .LBB99_8
# %bb.4:                                # %.lr.ph.split.preheader
	move	$s0, $zero
	ori	$s4, $zero, 5
	b	.LBB99_6
	.p2align	4, , 16
.LBB99_5:                               #   in Loop: Header=BB99_6 Depth=1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fast_read)
	jirl	$ra, $ra, 0
	beq	$fp, $a0, .LBB99_13
.LBB99_6:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	blt	$a1, $s4, .LBB99_5
# %bb.7:                                #   in Loop: Header=BB99_6 Depth=1
	move	$s1, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lprint)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	b	.LBB99_5
.LBB99_8:                               # %.lr.ph.split.us.preheader
	ori	$s1, $zero, 5
	b	.LBB99_10
	.p2align	4, , 16
.LBB99_9:                               #   in Loop: Header=BB99_10 Depth=1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fast_read)
	jirl	$ra, $ra, 0
	beq	$fp, $a0, .LBB99_12
.LBB99_10:                              # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	blt	$a1, $s1, .LBB99_9
# %bb.11:                               #   in Loop: Header=BB99_10 Depth=1
	move	$s0, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lprint)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB99_9
.LBB99_12:
	move	$s0, $zero
.LBB99_13:                              # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(fclose_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	blt	$a0, $s3, .LBB99_15
# %bb.14:
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a0, $a0, %pc_lo12(.L.str.87)
	pcaddu18i	$ra, %call36(put_st)
	jirl	$ra, $ra, 0
.LBB99_15:
	move	$a0, $s0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(nreverse)
	jr	$t8
.Lfunc_end99:
	.size	fast_load, .Lfunc_end99-fast_load
                                        # -- End function
	.globl	fast_save                       # -- Begin function fast_save
	.p2align	5
	.type	fast_save,@function
fast_save:                              # @fast_save
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	move	$s1, $a4
	move	$s2, $a3
	move	$fp, $a2
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(siod_verbose_level)
	ld.d	$a0, $a0, %got_pc_lo12(siod_verbose_level)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB100_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	pcaddu18i	$ra, %call36(put_st)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(put_st)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a0, $a0, %pc_lo12(.L.str.85)
	pcaddu18i	$ra, %call36(put_st)
	jirl	$ra, $ra, 0
.LBB100_2:
	beqz	$s1, .LBB100_5
# %bb.3:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fopen_c)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$fp, .LBB100_6
.LBB100_4:
	move	$fp, $zero
	b	.LBB100_7
.LBB100_5:
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fopen_c)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$fp, .LBB100_4
.LBB100_6:
	ori	$a0, $zero, 0
	lu32i.d	$a0, -458752
	lu52i.d	$a0, $a0, 1029
	movgr2fr.d	$fa0, $a0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons_array)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB100_7:
	movgr2fr.d	$fa0, $zero
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	ori	$a0, $zero, 3
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(listn)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$s2, .LBB100_9
# %bb.8:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fput_st)
	jirl	$ra, $ra, 0
.LBB100_9:
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	vld	$vr0, $a0, 16
	vld	$vr1, $a0, 0
	vst	$vr0, $sp, 96
	vst	$vr1, $sp, 80
	addi.d	$a1, $sp, 80
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fput_st)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a1, $a0, %pc_lo12(.L.str.91)
	addi.d	$a0, $sp, 80
	ori	$a2, $zero, 8
	ori	$a3, $zero, 8
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 80
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fput_st)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.233)
	addi.d	$s2, $a0, %pc_lo12(.L.str.233)
	addi.d	$a0, $sp, 30
	ori	$a2, $zero, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$s3, $sp, 32
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$s5, $sp, 34
	move	$a0, $s5
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$s7, $sp, 36
	move	$a0, $s7
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$s8, $sp, 38
	move	$a0, $s8
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $sp, 40
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$s6, $sp, 42
	move	$a0, $s6
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$s4, $sp, 44
	move	$a0, $s4
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a1, $a0, %pc_lo12(.L.str.92)
	addi.d	$a0, $sp, 80
	addi.d	$a2, $sp, 30
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 80
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fput_st)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 30
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 240
	move	$a0, $s6
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 63
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a1, $a0, %pc_lo12(.L.str.93)
	addi.d	$a0, $sp, 80
	addi.d	$a2, $sp, 30
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 80
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fput_st)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	beqz	$fp, .LBB100_11
	.p2align	4, , 16
.LBB100_10:                             # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fast_print)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB100_10
.LBB100_11:                             # %._crit_edge
	move	$a0, $s0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(fclose_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB100_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a0, $a0, %pc_lo12(.L.str.87)
	pcaddu18i	$ra, %call36(put_st)
	jirl	$ra, $ra, 0
.LBB100_13:
	move	$a0, $zero
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end100:
	.size	fast_save, .Lfunc_end100-fast_save
                                        # -- End function
	.globl	swrite1                         # -- Begin function swrite1
	.p2align	5
	.type	swrite1,@function
swrite1:                                # @swrite1
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$fp, .LBB101_4
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 13
	beq	$a0, $a1, .LBB101_3
# %bb.2:
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB101_4
.LBB101_3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fput_st)
	jr	$t8
.LBB101_4:                              # %.thread
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(lprin1f)
	jr	$t8
.Lfunc_end101:
	.size	swrite1, .Lfunc_end101-swrite1
                                        # -- End function
	.globl	swrite                          # -- Begin function swrite
	.p2align	5
	.type	swrite,@function
swrite:                                 # @swrite
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a0
	beqz	$a2, .LBB102_14
# %bb.1:
	move	$s1, $a1
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB102_48
# %bb.2:
	ori	$a1, $zero, 16
	beq	$a0, $a1, .LBB102_16
# %bb.3:
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB102_21
# %bb.4:
	ld.d	$a0, $fp, 8
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 46
	move	$s2, $fp
	bne	$a1, $a2, .LBB102_6
# %bb.5:
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(rintern)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB102_6:                              # %.critedge.i
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(href)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB102_36
# %bb.7:
	ld.hu	$a1, $a0, 2
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB102_35
# %bb.8:
	ld.d	$a2, $a0, 16
	beqz	$a2, .LBB102_12
# %bb.9:
	bne	$fp, $s2, .LBB102_12
# %bb.10:
	ld.hu	$a1, $a2, 2
	ori	$a3, $zero, 1
	bne	$a1, $a3, .LBB102_12
# %bb.11:
	move	$fp, $a0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hset)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB102_12:                             # %swrite2.exit
	ld.d	$fp, $a0, 8
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$fp, .LBB102_37
# %bb.13:
	move	$fp, $zero
	b	.LBB102_15
.LBB102_14:                             # %.thread39
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.LBB102_15:                             # %.thread.i30
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(lprin1f)
	jirl	$ra, $ra, 0
	b	.LBB102_48
.LBB102_16:
	ld.d	$s4, $fp, 8
	blez	$s4, .LBB102_23
# %bb.17:
	ld.d	$a0, $fp, 16
	ld.d	$s2, $a0, 0
	beqz	$s2, .LBB102_24
.LBB102_18:
	ld.hu	$a0, $s2, 2
	ori	$a1, $zero, 3
	move	$s3, $s2
	bne	$a0, $a1, .LBB102_25
# %bb.19:
	ld.d	$a0, $s2, 8
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 46
	move	$s3, $s2
	bne	$a1, $a2, .LBB102_25
# %bb.20:
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(rintern)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	b	.LBB102_25
.LBB102_21:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $fp, 2
	ori	$a2, $zero, 13
	move	$s0, $a0
	beq	$a1, $a2, .LBB102_39
# %bb.22:
	ori	$a0, $zero, 3
	beq	$a1, $a0, .LBB102_39
	b	.LBB102_15
.LBB102_23:
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a0, $a0, %pc_lo12(.L.str.94)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$s2, $a0, 0
	bnez	$s2, .LBB102_18
.LBB102_24:
	move	$s3, $zero
.LBB102_25:                             # %.critedge.i23
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(href)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB102_32
# %bb.26:
	ld.hu	$a1, $a0, 2
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB102_34
# %bb.27:
	ld.d	$a2, $a0, 16
	beqz	$a2, .LBB102_31
# %bb.28:
	bne	$s2, $s3, .LBB102_31
# %bb.29:
	ld.hu	$a1, $a2, 2
	ori	$a3, $zero, 1
	bne	$a1, $a3, .LBB102_31
# %bb.30:
	move	$s2, $a0
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hset)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB102_31:                             # %.critedge28.i27
	ld.d	$s2, $a0, 8
.LBB102_32:                             # %swrite2.exit28
	beqz	$s2, .LBB102_40
# %bb.33:                               # %swrite2.exit28.swrite2.exit28.thread_crit_edge
	ld.hu	$a1, $s2, 2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB102_41
	b	.LBB102_42
.LBB102_34:
	move	$s2, $a0
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB102_41
	b	.LBB102_42
.LBB102_35:
	move	$fp, $a0
.LBB102_36:                             # %swrite2.exit.thread
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_file)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.LBB102_37:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 13
	beq	$a0, $a1, .LBB102_39
# %bb.38:
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB102_15
.LBB102_39:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fput_st)
	jirl	$ra, $ra, 0
	b	.LBB102_48
.LBB102_40:
	move	$s2, $zero
.LBB102_41:                             # %.critedge.i29
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB102_42:                             # %get_c_long.exit
	fld.d	$fa0, $s2, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$s2, $fa0
	blez	$s2, .LBB102_48
# %bb.43:                               # %get_c_long.exit
	ori	$a0, $zero, 2
	blt	$s4, $a0, .LBB102_48
# %bb.44:                               # %.preheader.us.preheader
	move	$s3, $zero
	addi.d	$s4, $s4, -1
	.p2align	4, , 16
.LBB102_45:                             # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB102_46 Depth 2
	ori	$s5, $zero, 8
	move	$s6, $s4
	.p2align	4, , 16
.LBB102_46:                             #   Parent Loop BB102_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 16
	ldx.d	$a2, $a0, $s5
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(swrite)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 8
	bnez	$s6, .LBB102_46
# %bb.47:                               # %._crit_edge.us
                                        #   in Loop: Header=BB102_45 Depth=1
	addi.d	$s3, $s3, 1
	bne	$s3, $s2, .LBB102_45
.LBB102_48:                             # %swrite1.exit
	move	$a0, $zero
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end102:
	.size	swrite, .Lfunc_end102-swrite
                                        # -- End function
	.globl	lpow                            # -- Begin function lpow
	.p2align	5
	.type	lpow,@function
lpow:                                   # @lpow
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a0, .LBB103_2
# %bb.1:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB103_3
.LBB103_2:                              # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a0, $a0, %pc_lo12(.L.str.95)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB103_3:
	beqz	$fp, .LBB103_5
# %bb.4:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB103_6
.LBB103_5:                              # %.critedge11
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB103_6:
	fld.d	$fa0, $s0, 8
	fld.d	$fa1, $fp, 8
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end103:
	.size	lpow, .Lfunc_end103-lpow
                                        # -- End function
	.globl	lexp                            # -- Begin function lexp
	.p2align	5
	.type	lexp,@function
lexp:                                   # @lexp
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB104_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB104_3
.LBB104_2:                              # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB104_3:                              # %get_c_double.exit
	fld.d	$fa0, $fp, 8
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end104:
	.size	lexp, .Lfunc_end104-lexp
                                        # -- End function
	.globl	llog                            # -- Begin function llog
	.p2align	5
	.type	llog,@function
llog:                                   # @llog
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB105_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB105_3
.LBB105_2:                              # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB105_3:                              # %get_c_double.exit
	fld.d	$fa0, $fp, 8
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end105:
	.size	llog, .Lfunc_end105-llog
                                        # -- End function
	.globl	lsin                            # -- Begin function lsin
	.p2align	5
	.type	lsin,@function
lsin:                                   # @lsin
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB106_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB106_3
.LBB106_2:                              # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB106_3:                              # %get_c_double.exit
	fld.d	$fa0, $fp, 8
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end106:
	.size	lsin, .Lfunc_end106-lsin
                                        # -- End function
	.globl	lcos                            # -- Begin function lcos
	.p2align	5
	.type	lcos,@function
lcos:                                   # @lcos
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB107_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB107_3
.LBB107_2:                              # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB107_3:                              # %get_c_double.exit
	fld.d	$fa0, $fp, 8
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end107:
	.size	lcos, .Lfunc_end107-lcos
                                        # -- End function
	.globl	ltan                            # -- Begin function ltan
	.p2align	5
	.type	ltan,@function
ltan:                                   # @ltan
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB108_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB108_3
.LBB108_2:                              # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB108_3:                              # %get_c_double.exit
	fld.d	$fa0, $fp, 8
	pcaddu18i	$ra, %call36(tan)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end108:
	.size	ltan, .Lfunc_end108-ltan
                                        # -- End function
	.globl	lasin                           # -- Begin function lasin
	.p2align	5
	.type	lasin,@function
lasin:                                  # @lasin
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB109_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB109_3
.LBB109_2:                              # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB109_3:                              # %get_c_double.exit
	fld.d	$fa0, $fp, 8
	pcaddu18i	$ra, %call36(asin)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end109:
	.size	lasin, .Lfunc_end109-lasin
                                        # -- End function
	.globl	lacos                           # -- Begin function lacos
	.p2align	5
	.type	lacos,@function
lacos:                                  # @lacos
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB110_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB110_3
.LBB110_2:                              # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB110_3:                              # %get_c_double.exit
	fld.d	$fa0, $fp, 8
	pcaddu18i	$ra, %call36(acos)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end110:
	.size	lacos, .Lfunc_end110-lacos
                                        # -- End function
	.globl	latan                           # -- Begin function latan
	.p2align	5
	.type	latan,@function
latan:                                  # @latan
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB111_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB111_3
.LBB111_2:                              # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB111_3:                              # %get_c_double.exit
	fld.d	$fa0, $fp, 8
	pcaddu18i	$ra, %call36(atan)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end111:
	.size	latan, .Lfunc_end111-latan
                                        # -- End function
	.globl	latan2                          # -- Begin function latan2
	.p2align	5
	.type	latan2,@function
latan2:                                 # @latan2
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a0, .LBB112_2
# %bb.1:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB112_3
.LBB112_2:                              # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB112_3:                              # %get_c_double.exit
	fld.d	$fs0, $s0, 8
	beqz	$fp, .LBB112_5
# %bb.4:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB112_6
.LBB112_5:                              # %.critedge.i2
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB112_6:                              # %get_c_double.exit3
	fld.d	$fa1, $fp, 8
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(atan2)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end112:
	.size	latan2, .Lfunc_end112-latan2
                                        # -- End function
	.globl	hexstr                          # -- Begin function hexstr
	.p2align	5
	.type	hexstr,@function
hexstr:                                 # @hexstr
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(get_c_string_dim)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	slli.d	$s2, $a1, 1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 13
	st.h	$a0, $s0, 2
	addi.d	$a0, $s2, 1
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	st.d	$s2, $s0, 8
	stx.b	$zero, $a0, $s2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	blez	$a1, .LBB113_3
# %bb.1:                                # %.lr.ph.preheader
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s2, $a0, %pc_lo12(.L.str.11)
	move	$s3, $zero
	.p2align	4, , 16
.LBB113_2:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a2, $fp, $s3
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	addi.d	$s3, $s3, 1
	addi.d	$s1, $s1, 2
	blt	$s3, $a0, .LBB113_2
.LBB113_3:                              # %._crit_edge
	move	$a0, $s0
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end113:
	.size	hexstr, .Lfunc_end113-hexstr
                                        # -- End function
	.globl	hexstr2bytes                    # -- Begin function hexstr2bytes
	.p2align	5
	.type	hexstr2bytes,@function
hexstr2bytes:                           # @hexstr2bytes
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	srli.d	$fp, $a0, 1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$fp, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	ori	$a0, $zero, 18
	st.h	$a0, $s0, 2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	bgeu	$s1, $a0, .LBB114_2
.LBB114_1:                              # %._crit_edge
	move	$a0, $s0
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB114_2:                              # %.lr.ph
	ld.d	$s3, $s0, 16
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$s2, $s2, 1
	b	.LBB114_5
	.p2align	4, , 16
.LBB114_3:                              #   in Loop: Header=BB114_5 Depth=1
	andi	$a0, $s6, 255
	addi.d	$a0, $a0, -48
.LBB114_4:                              # %xdigitvalue.exit19
                                        #   in Loop: Header=BB114_5 Depth=1
	slli.d	$a1, $s4, 4
	add.d	$a0, $a0, $a1
	st.b	$a0, $s3, 0
	addi.d	$fp, $fp, -1
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 2
	beqz	$fp, .LBB114_1
.LBB114_5:                              # =>This Inner Loop Header: Depth=1
	ld.b	$s4, $s2, -1
	ld.d	$s5, $s1, 0
	slli.d	$a0, $s4, 1
	ldx.hu	$a0, $s5, $a0
	slli.d	$a1, $a0, 52
	bltz	$a1, .LBB114_8
# %bb.6:                                #   in Loop: Header=BB114_5 Depth=1
	slli.d	$a0, $a0, 51
	bltz	$a0, .LBB114_9
# %bb.7:                                #   in Loop: Header=BB114_5 Depth=1
	move	$s4, $zero
	b	.LBB114_10
	.p2align	4, , 16
.LBB114_8:                              #   in Loop: Header=BB114_5 Depth=1
	andi	$a0, $s4, 255
	ext.w.b	$a0, $a0
	addi.d	$s4, $a0, -48
	b	.LBB114_10
	.p2align	4, , 16
.LBB114_9:                              #   in Loop: Header=BB114_5 Depth=1
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$a0, $a0, $a1
	addi.d	$s4, $a0, -55
.LBB114_10:                             # %xdigitvalue.exit
                                        #   in Loop: Header=BB114_5 Depth=1
	ld.b	$s6, $s2, 0
	slli.d	$a0, $s6, 1
	ldx.hu	$a0, $s5, $a0
	slli.d	$a1, $a0, 52
	bltz	$a1, .LBB114_3
# %bb.11:                               #   in Loop: Header=BB114_5 Depth=1
	slli.d	$a0, $a0, 51
	bltz	$a0, .LBB114_13
# %bb.12:                               #   in Loop: Header=BB114_5 Depth=1
	move	$a0, $zero
	b	.LBB114_4
	.p2align	4, , 16
.LBB114_13:                             #   in Loop: Header=BB114_5 Depth=1
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s6, 2
	ldx.w	$a0, $a0, $a1
	addi.d	$a0, $a0, -55
	b	.LBB114_4
.Lfunc_end114:
	.size	hexstr2bytes, .Lfunc_end114-hexstr2bytes
                                        # -- End function
	.globl	getprop                         # -- Begin function getprop
	.p2align	5
	.type	getprop,@function
getprop:                                # @getprop
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB115_4
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $a0
	.p2align	4, , 16
.LBB115_2:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	beq	$a0, $fp, .LBB115_5
# %bb.3:                                #   in Loop: Header=BB115_2 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cddr)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB115_2
.LBB115_4:                              # %.loopexit
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB115_5:
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(cadr)
	jr	$t8
.Lfunc_end115:
	.size	getprop, .Lfunc_end115-getprop
                                        # -- End function
	.globl	setprop                         # -- Begin function setprop
	.p2align	5
	.type	setprop,@function
setprop:                                # @setprop
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a0, $a0, %pc_lo12(.L.str.97)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end116:
	.size	setprop, .Lfunc_end116-setprop
                                        # -- End function
	.globl	putprop                         # -- Begin function putprop
	.p2align	5
	.type	putprop,@function
putprop:                                # @putprop
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a0, $a0, %pc_lo12(.L.str.97)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end117:
	.size	putprop, .Lfunc_end117-putprop
                                        # -- End function
	.globl	ltypeof                         # -- Begin function ltypeof
	.p2align	5
	.type	ltypeof,@function
ltypeof:                                # @ltypeof
# %bb.0:
	beqz	$a0, .LBB118_3
# %bb.1:
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 21
	bltu	$a1, $a0, .LBB118_24
# %bb.2:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI118_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI118_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB118_3:                              # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a0, $a0, %pc_lo12(.L.str.98)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.LBB118_4:
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.LBB118_5:
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a0, $a0, %pc_lo12(.L.str.116)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.LBB118_6:
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a0, $a0, %pc_lo12(.L.str.112)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.LBB118_7:
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a0, $a0, %pc_lo12(.L.str.102)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.LBB118_8:
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a0, $a0, %pc_lo12(.L.str.113)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.LBB118_9:
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a0, $a0, %pc_lo12(.L.str.110)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.LBB118_10:
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a0, $a0, %pc_lo12(.L.str.100)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.LBB118_11:
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a0, $a0, %pc_lo12(.L.str.117)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.LBB118_12:
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a0, $a0, %pc_lo12(.L.str.101)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.LBB118_13:
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a0, $a0, %pc_lo12(.L.str.106)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.LBB118_14:
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a0, $a0, %pc_lo12(.L.str.99)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.LBB118_15:
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a0, $a0, %pc_lo12(.L.str.119)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.LBB118_16:
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a0, $a0, %pc_lo12(.L.str.108)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.LBB118_17:
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a0, $a0, %pc_lo12(.L.str.103)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.LBB118_18:
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a0, $a0, %pc_lo12(.L.str.105)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.LBB118_19:
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a0, $a0, %pc_lo12(.L.str.114)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.LBB118_20:
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a0, $a0, %pc_lo12(.L.str.104)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.LBB118_21:
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$a0, $a0, %pc_lo12(.L.str.115)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.LBB118_22:
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a0, $a0, %pc_lo12(.L.str.111)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.LBB118_23:
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a0, $a0, %pc_lo12(.L.str.109)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.LBB118_24:
	ext.w.h	$a0, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.LBB118_25:
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a0, $a0, %pc_lo12(.L.str.107)
	pcaddu18i	$t8, %call36(cintern)
	jr	$t8
.Lfunc_end118:
	.size	ltypeof, .Lfunc_end118-ltypeof
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI118_0:
	.word	.LBB118_3-.LJTI118_0
	.word	.LBB118_14-.LJTI118_0
	.word	.LBB118_10-.LJTI118_0
	.word	.LBB118_12-.LJTI118_0
	.word	.LBB118_7-.LJTI118_0
	.word	.LBB118_17-.LJTI118_0
	.word	.LBB118_20-.LJTI118_0
	.word	.LBB118_13-.LJTI118_0
	.word	.LBB118_23-.LJTI118_0
	.word	.LBB118_9-.LJTI118_0
	.word	.LBB118_22-.LJTI118_0
	.word	.LBB118_6-.LJTI118_0
	.word	.LBB118_8-.LJTI118_0
	.word	.LBB118_19-.LJTI118_0
	.word	.LBB118_5-.LJTI118_0
	.word	.LBB118_11-.LJTI118_0
	.word	.LBB118_4-.LJTI118_0
	.word	.LBB118_15-.LJTI118_0
	.word	.LBB118_21-.LJTI118_0
	.word	.LBB118_25-.LJTI118_0
	.word	.LBB118_16-.LJTI118_0
	.word	.LBB118_18-.LJTI118_0
                                        # -- End function
	.text
	.globl	caaar                           # -- Begin function caaar
	.p2align	5
	.type	caaar,@function
caaar:                                  # @caaar
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(car)
	jr	$t8
.Lfunc_end119:
	.size	caaar, .Lfunc_end119-caaar
                                        # -- End function
	.globl	caadr                           # -- Begin function caadr
	.p2align	5
	.type	caadr,@function
caadr:                                  # @caadr
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(car)
	jr	$t8
.Lfunc_end120:
	.size	caadr, .Lfunc_end120-caadr
                                        # -- End function
	.globl	cadar                           # -- Begin function cadar
	.p2align	5
	.type	cadar,@function
cadar:                                  # @cadar
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(car)
	jr	$t8
.Lfunc_end121:
	.size	cadar, .Lfunc_end121-cadar
                                        # -- End function
	.globl	caddr                           # -- Begin function caddr
	.p2align	5
	.type	caddr,@function
caddr:                                  # @caddr
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(car)
	jr	$t8
.Lfunc_end122:
	.size	caddr, .Lfunc_end122-caddr
                                        # -- End function
	.globl	cdaar                           # -- Begin function cdaar
	.p2align	5
	.type	cdaar,@function
cdaar:                                  # @cdaar
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(cdr)
	jr	$t8
.Lfunc_end123:
	.size	cdaar, .Lfunc_end123-cdaar
                                        # -- End function
	.globl	cdadr                           # -- Begin function cdadr
	.p2align	5
	.type	cdadr,@function
cdadr:                                  # @cdadr
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(cdr)
	jr	$t8
.Lfunc_end124:
	.size	cdadr, .Lfunc_end124-cdadr
                                        # -- End function
	.globl	cddar                           # -- Begin function cddar
	.p2align	5
	.type	cddar,@function
cddar:                                  # @cddar
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(cdr)
	jr	$t8
.Lfunc_end125:
	.size	cddar, .Lfunc_end125-cddar
                                        # -- End function
	.globl	cdddr                           # -- Begin function cdddr
	.p2align	5
	.type	cdddr,@function
cdddr:                                  # @cdddr
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(cdr)
	jr	$t8
.Lfunc_end126:
	.size	cdddr, .Lfunc_end126-cdddr
                                        # -- End function
	.globl	ash                             # -- Begin function ash
	.p2align	5
	.type	ash,@function
ash:                                    # @ash
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a0, .LBB127_2
# %bb.1:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB127_3
.LBB127_2:                              # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB127_3:                              # %get_c_long.exit
	fld.d	$fs0, $s0, 8
	beqz	$fp, .LBB127_5
# %bb.4:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB127_6
.LBB127_5:                              # %.critedge.i8
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB127_6:                              # %get_c_long.exit9
	fld.d	$fa0, $fp, 8
	ftintrz.l.d	$fa1, $fs0
	movfr2gr.d	$a0, $fa1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	slt	$a2, $zero, $a1
	sll.d	$a3, $a0, $a1
	sub.d	$a1, $zero, $a1
	sra.d	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end127:
	.size	ash, .Lfunc_end127-ash
                                        # -- End function
	.globl	bitand                          # -- Begin function bitand
	.p2align	5
	.type	bitand,@function
bitand:                                 # @bitand
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a0, .LBB128_2
# %bb.1:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB128_3
.LBB128_2:                              # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB128_3:                              # %get_c_long.exit
	fld.d	$fs0, $s0, 8
	beqz	$fp, .LBB128_5
# %bb.4:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB128_6
.LBB128_5:                              # %.critedge.i2
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB128_6:                              # %get_c_long.exit3
	fld.d	$fa0, $fp, 8
	ftintrz.l.d	$fa1, $fs0
	movfr2gr.d	$a0, $fa1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	and	$a0, $a1, $a0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end128:
	.size	bitand, .Lfunc_end128-bitand
                                        # -- End function
	.globl	bitor                           # -- Begin function bitor
	.p2align	5
	.type	bitor,@function
bitor:                                  # @bitor
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a0, .LBB129_2
# %bb.1:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB129_3
.LBB129_2:                              # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB129_3:                              # %get_c_long.exit
	fld.d	$fs0, $s0, 8
	beqz	$fp, .LBB129_5
# %bb.4:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB129_6
.LBB129_5:                              # %.critedge.i2
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB129_6:                              # %get_c_long.exit3
	fld.d	$fa0, $fp, 8
	ftintrz.l.d	$fa1, $fs0
	movfr2gr.d	$a0, $fa1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	or	$a0, $a1, $a0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end129:
	.size	bitor, .Lfunc_end129-bitor
                                        # -- End function
	.globl	bitxor                          # -- Begin function bitxor
	.p2align	5
	.type	bitxor,@function
bitxor:                                 # @bitxor
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a0, .LBB130_2
# %bb.1:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB130_3
.LBB130_2:                              # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB130_3:                              # %get_c_long.exit
	fld.d	$fs0, $s0, 8
	beqz	$fp, .LBB130_5
# %bb.4:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB130_6
.LBB130_5:                              # %.critedge.i2
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB130_6:                              # %get_c_long.exit3
	fld.d	$fa0, $fp, 8
	ftintrz.l.d	$fa1, $fs0
	movfr2gr.d	$a0, $fa1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	xor	$a0, $a1, $a0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end130:
	.size	bitxor, .Lfunc_end130-bitxor
                                        # -- End function
	.globl	bitnot                          # -- Begin function bitnot
	.p2align	5
	.type	bitnot,@function
bitnot:                                 # @bitnot
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB131_2
# %bb.1:
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB131_3
.LBB131_2:                              # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB131_3:                              # %get_c_long.exit
	fld.d	$fa0, $fp, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	nor	$a0, $a0, $zero
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end131:
	.size	bitnot, .Lfunc_end131-bitnot
                                        # -- End function
	.globl	leval_prog1                     # -- Begin function leval_prog1
	.p2align	5
	.type	leval_prog1,@function
leval_prog1:                            # @leval_prog1
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB132_2
	.p2align	4, , 16
.LBB132_1:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB132_1
.LBB132_2:                              # %._crit_edge
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end132:
	.size	leval_prog1, .Lfunc_end132-leval_prog1
                                        # -- End function
	.globl	leval_cond                      # -- Begin function leval_cond
	.p2align	5
	.type	leval_cond,@function
leval_cond:                             # @leval_cond
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	move	$s0, $a1
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB133_12
# %bb.1:
	move	$s1, $a0
	ld.d	$s0, $s0, 0
	.p2align	4, , 16
.LBB133_2:                              # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB133_8
# %bb.3:                                # %.lr.ph
                                        #   in Loop: Header=BB133_2 Depth=1
	move	$a1, $s1
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB133_2
# %bb.4:
	move	$s1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB133_13
# %bb.5:
	move	$s1, $a0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB133_15
# %bb.6:                                # %.lr.ph63.preheader
	move	$a1, $s1
	.p2align	4, , 16
.LBB133_7:                              # %.lr.ph63
                                        # =>This Inner Loop Header: Depth=1
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	bnez	$a0, .LBB133_7
	b	.LBB133_15
.LBB133_8:                              # %._crit_edge
	move	$a0, $s1
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB133_16
# %bb.9:
	move	$a1, $s0
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB133_12
# %bb.10:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB133_14
	.p2align	4, , 16
.LBB133_11:                             # %.lr.ph70
                                        # =>This Inner Loop Header: Depth=1
	move	$s1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cdr)
	jirl	$ra, $ra, 0
	move	$s2, $s1
	bnez	$a0, .LBB133_11
	b	.LBB133_15
.LBB133_12:
	move	$a0, $zero
	st.d	$zero, $fp, 0
	b	.LBB133_17
.LBB133_13:
	move	$a0, $zero
	st.d	$s1, $fp, 0
	b	.LBB133_17
.LBB133_14:
	move	$s1, $s2
.LBB133_15:                             # %._crit_edge71
	move	$a0, $s1
	pcaddu18i	$ra, %call36(car)
	jirl	$ra, $ra, 0
.LBB133_16:
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %got_pc_hi20(sym_t)
	ld.d	$a0, $a0, %got_pc_lo12(sym_t)
	ld.d	$a0, $a0, 0
.LBB133_17:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end133:
	.size	leval_cond, .Lfunc_end133-leval_cond
                                        # -- End function
	.globl	lstrspn                         # -- Begin function lstrspn
	.p2align	5
	.type	lstrspn,@function
lstrspn:                                # @lstrspn
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strspn)
	jirl	$ra, $ra, 0
	srli.d	$a1, $a0, 32
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa0, $a1
	lu12i.w	$a1, 256
	lu52i.d	$a1, $a1, 1107
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa0, $fa0, $fa1
	lu12i.w	$a1, 275200
	bstrins.d	$a0, $a1, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end134:
	.size	lstrspn, .Lfunc_end134-lstrspn
                                        # -- End function
	.globl	lstrcspn                        # -- Begin function lstrcspn
	.p2align	5
	.type	lstrcspn,@function
lstrcspn:                               # @lstrcspn
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_c_string)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcspn)
	jirl	$ra, $ra, 0
	srli.d	$a1, $a0, 32
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa0, $a1
	lu12i.w	$a1, 256
	lu52i.d	$a1, $a1, 1107
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa0, $fa0, $fa1
	lu12i.w	$a1, 275200
	bstrins.d	$a0, $a1, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(flocons)
	jr	$t8
.Lfunc_end135:
	.size	lstrcspn, .Lfunc_end135-lstrcspn
                                        # -- End function
	.globl	substring_equal                 # -- Begin function substring_equal
	.p2align	5
	.type	substring_equal,@function
substring_equal:                        # @substring_equal
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	move	$s1, $a3
	move	$s2, $a2
	move	$s0, $a1
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(get_c_string_dim)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a1, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string_dim)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$s2, .LBB136_7
# %bb.1:
	ld.hu	$a0, $s2, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB136_3
# %bb.2:                                # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB136_3:                              # %get_c_long.exit
	fld.d	$fa0, $s2, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$s2, $fa0
	beqz	$s1, .LBB136_8
.LBB136_4:
	ld.hu	$a0, $s1, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB136_6
# %bb.5:                                # %.critedge.i26
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB136_6:                              # %get_c_long.exit27
	fld.d	$fa0, $s1, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $zero
	bgez	$s2, .LBB136_9
	b	.LBB136_14
.LBB136_7:
	move	$s2, $zero
	bnez	$s1, .LBB136_4
.LBB136_8:
	ld.d	$a1, $sp, 16
	move	$a0, $zero
	bltz	$s2, .LBB136_14
.LBB136_9:
	blt	$a1, $s2, .LBB136_14
# %bb.10:
	ld.d	$a2, $sp, 8
	blt	$a2, $a1, .LBB136_14
# %bb.11:
	ld.d	$a0, $sp, 16
	sub.d	$a2, $a1, $s2
	bne	$a2, $a0, .LBB136_13
# %bb.12:
	add.d	$a1, $s0, $s2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB136_15
.LBB136_13:
	move	$a0, $zero
.LBB136_14:
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB136_15:
	pcaddu18i	$ra, %call36(a_true_value)
	jirl	$ra, $ra, 0
	b	.LBB136_14
.Lfunc_end136:
	.size	substring_equal, .Lfunc_end136-substring_equal
                                        # -- End function
	.globl	substring_equalcase             # -- Begin function substring_equalcase
	.p2align	5
	.type	substring_equalcase,@function
substring_equalcase:                    # @substring_equalcase
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	move	$s1, $a3
	move	$s2, $a2
	move	$s0, $a1
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(get_c_string_dim)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a1, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_c_string_dim)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$s2, .LBB137_7
# %bb.1:
	ld.hu	$a0, $s2, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB137_3
# %bb.2:                                # %.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB137_3:                              # %get_c_long.exit
	fld.d	$fa0, $s2, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$s2, $fa0
	beqz	$s1, .LBB137_8
.LBB137_4:
	ld.hu	$a0, $s1, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB137_6
# %bb.5:                                # %.critedge.i26
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB137_6:                              # %get_c_long.exit27
	fld.d	$fa0, $s1, 8
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $zero
	bgez	$s2, .LBB137_9
	b	.LBB137_14
.LBB137_7:
	move	$s2, $zero
	bnez	$s1, .LBB137_4
.LBB137_8:
	ld.d	$a1, $sp, 16
	move	$a0, $zero
	bltz	$s2, .LBB137_14
.LBB137_9:
	blt	$a1, $s2, .LBB137_14
# %bb.10:
	ld.d	$a2, $sp, 8
	blt	$a2, $a1, .LBB137_14
# %bb.11:
	ld.d	$a0, $sp, 16
	sub.d	$a2, $a1, $s2
	bne	$a2, $a0, .LBB137_13
# %bb.12:
	add.d	$a1, $s0, $s2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB137_15
.LBB137_13:
	move	$a0, $zero
.LBB137_14:
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB137_15:
	pcaddu18i	$ra, %call36(a_true_value)
	jirl	$ra, $ra, 0
	b	.LBB137_14
.Lfunc_end137:
	.size	substring_equalcase, .Lfunc_end137-substring_equalcase
                                        # -- End function
	.globl	set_eval_history                # -- Begin function set_eval_history
	.p2align	5
	.type	set_eval_history,@function
set_eval_history:                       # @set_eval_history
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a0, .LBB138_10
# %bb.1:
	move	$s1, $a1
	ld.hu	$a0, $fp, 2
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB138_3
# %bb.2:                                # %.critedge.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
.LBB138_3:                              # %get_c_long.exit.i
	fld.d	$fa0, $fp, 8
	ftintrz.l.d	$fa0, $fa0
	move	$s0, $zero
	movfr2gr.d	$a0, $fa0
	blez	$a0, .LBB138_16
# %bb.4:                                # %.lr.ph.i.preheader
	addi.d	$s2, $a0, 1
	ori	$s3, $zero, 1
	.p2align	4, , 16
.LBB138_5:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	move	$s0, $a0
	bltu	$s3, $s2, .LBB138_5
# %bb.6:                                # %make_list.exit
	beqz	$s1, .LBB138_16
# %bb.7:                                # %make_list.exit
	beqz	$s0, .LBB138_16
# %bb.8:
	ld.hu	$a0, $s0, 2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB138_11
# %bb.9:
	ld.d	$a0, $s0, 16
	move	$a1, $s0
	bnez	$a0, .LBB138_12
	b	.LBB138_15
.LBB138_10:
	move	$s0, $zero
	b	.LBB138_16
.LBB138_11:                             # %.critedge.i.i10
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(err)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	beqz	$a0, .LBB138_15
.LBB138_12:                             # %.lr.ph.i.preheader.i
	ld.hu	$a3, $a0, 2
	ori	$a2, $zero, 1
	move	$a1, $s0
	bne	$a3, $a2, .LBB138_15
	.p2align	4, , 16
.LBB138_13:                             # %.lr.ph.i11
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB138_15
# %bb.14:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB138_13 Depth=1
	ld.hu	$a3, $a0, 2
	beq	$a3, $a2, .LBB138_13
.LBB138_15:                             # %last.exit.i
	move	$a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(setcdr)
	jirl	$ra, $ra, 0
.LBB138_16:                             # %nconc.exit
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a0, $a0, %pc_lo12(.L.str.120)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a0, $a0, %pc_lo12(.L.str.121)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end138:
	.size	set_eval_history, .Lfunc_end138-set_eval_history
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function init_subrs_a
.LCPI139_0:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	15                              # 0xf
.LCPI139_1:
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
	.byte	32                              # 0x20
	.byte	33                              # 0x21
	.byte	34                              # 0x22
	.byte	35                              # 0x23
	.byte	36                              # 0x24
	.byte	37                              # 0x25
	.byte	38                              # 0x26
	.byte	39                              # 0x27
	.byte	40                              # 0x28
	.byte	41                              # 0x29
	.text
	.globl	init_subrs_a
	.p2align	5
	.type	init_subrs_a,@function
init_subrs_a:                           # @init_subrs_a
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a0, $a0, %pc_lo12(.L.str.122)
	pcalau12i	$a1, %pc_hi20(aref1)
	addi.d	$a1, $a1, %pc_lo12(aref1)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a0, $a0, %pc_lo12(.L.str.123)
	pcalau12i	$a1, %pc_hi20(aset1)
	addi.d	$a1, $a1, %pc_lo12(aset1)
	pcaddu18i	$ra, %call36(init_subr_3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.124)
	addi.d	$a0, $a0, %pc_lo12(.L.str.124)
	pcalau12i	$a1, %pc_hi20(string_append)
	addi.d	$a1, $a1, %pc_lo12(string_append)
	pcaddu18i	$ra, %call36(init_lsubr)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.125)
	addi.d	$a0, $a0, %pc_lo12(.L.str.125)
	pcalau12i	$a1, %pc_hi20(bytes_append)
	addi.d	$a1, $a1, %pc_lo12(bytes_append)
	pcaddu18i	$ra, %call36(init_lsubr)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.126)
	addi.d	$a0, $a0, %pc_lo12(.L.str.126)
	pcalau12i	$a1, %pc_hi20(string_length)
	addi.d	$a1, $a1, %pc_lo12(string_length)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a0, $a0, %pc_lo12(.L.str.127)
	pcalau12i	$a1, %pc_hi20(string_dim)
	addi.d	$a1, $a1, %pc_lo12(string_dim)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a0, $a0, %pc_lo12(.L.str.128)
	pcalau12i	$a1, %pc_hi20(read_from_string)
	addi.d	$a1, $a1, %pc_lo12(read_from_string)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a0, $a0, %pc_lo12(.L.str.129)
	pcalau12i	$a1, %pc_hi20(print_to_string)
	addi.d	$a1, $a1, %pc_lo12(print_to_string)
	pcaddu18i	$ra, %call36(init_subr_3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$a0, $a0, %pc_lo12(.L.str.130)
	pcalau12i	$a1, %pc_hi20(cons_array)
	addi.d	$a1, $a1, %pc_lo12(cons_array)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$a0, $a0, %pc_lo12(.L.str.131)
	pcalau12i	$a1, %pc_hi20(sxhash)
	addi.d	$a1, $a1, %pc_lo12(sxhash)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a0, $a0, %pc_lo12(.L.str.132)
	pcalau12i	$a1, %pc_hi20(equal)
	addi.d	$a1, $a1, %pc_lo12(equal)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a0, $a0, %pc_lo12(.L.str.133)
	pcalau12i	$a1, %pc_hi20(href)
	addi.d	$a1, $a1, %pc_lo12(href)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	pcalau12i	$a1, %pc_hi20(hset)
	addi.d	$a1, $a1, %pc_lo12(hset)
	pcaddu18i	$ra, %call36(init_subr_3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a0, $a0, %pc_lo12(.L.str.135)
	pcalau12i	$a1, %pc_hi20(assoc)
	addi.d	$a1, $a1, %pc_lo12(assoc)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.136)
	addi.d	$a0, $a0, %pc_lo12(.L.str.136)
	pcalau12i	$a1, %pc_hi20(assv)
	addi.d	$a1, $a1, %pc_lo12(assv)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	pcalau12i	$a1, %pc_hi20(fast_read)
	addi.d	$a1, $a1, %pc_lo12(fast_read)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	pcalau12i	$a1, %pc_hi20(fast_print)
	addi.d	$a1, $a1, %pc_lo12(fast_print)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	pcalau12i	$a1, %pc_hi20(make_list)
	addi.d	$a1, $a1, %pc_lo12(make_list)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a0, $a0, %pc_lo12(.L.str.140)
	pcalau12i	$a1, %pc_hi20(lfread)
	addi.d	$a1, $a1, %pc_lo12(lfread)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a0, $a0, %pc_lo12(.L.str.141)
	pcalau12i	$a1, %pc_hi20(lfwrite)
	addi.d	$a1, $a1, %pc_lo12(lfwrite)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a0, $a0, %pc_lo12(.L.str.142)
	pcalau12i	$a1, %pc_hi20(lfflush)
	addi.d	$a1, $a1, %pc_lo12(lfflush)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.143)
	addi.d	$a0, $a0, %pc_lo12(.L.str.143)
	pcalau12i	$a1, %pc_hi20(llength)
	addi.d	$a1, $a1, %pc_lo12(llength)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.144)
	addi.d	$a0, $a0, %pc_lo12(.L.str.144)
	pcalau12i	$a1, %pc_hi20(number2string)
	addi.d	$a1, $a1, %pc_lo12(number2string)
	pcaddu18i	$ra, %call36(init_subr_4)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.145)
	addi.d	$a0, $a0, %pc_lo12(.L.str.145)
	pcalau12i	$a1, %pc_hi20(string2number)
	addi.d	$a1, $a1, %pc_lo12(string2number)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$a0, $a0, %pc_lo12(.L.str.146)
	pcalau12i	$a1, %pc_hi20(substring)
	addi.d	$a1, $a1, %pc_lo12(substring)
	pcaddu18i	$ra, %call36(init_subr_3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.147)
	addi.d	$a0, $a0, %pc_lo12(.L.str.147)
	pcalau12i	$a1, %pc_hi20(string_search)
	addi.d	$a1, $a1, %pc_lo12(string_search)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.148)
	addi.d	$a0, $a0, %pc_lo12(.L.str.148)
	pcalau12i	$a1, %pc_hi20(string_trim)
	addi.d	$a1, $a1, %pc_lo12(string_trim)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.149)
	addi.d	$a0, $a0, %pc_lo12(.L.str.149)
	pcalau12i	$a1, %pc_hi20(string_trim_left)
	addi.d	$a1, $a1, %pc_lo12(string_trim_left)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.150)
	addi.d	$a0, $a0, %pc_lo12(.L.str.150)
	pcalau12i	$a1, %pc_hi20(string_trim_right)
	addi.d	$a1, $a1, %pc_lo12(string_trim_right)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.151)
	addi.d	$a0, $a0, %pc_lo12(.L.str.151)
	pcalau12i	$a1, %pc_hi20(string_upcase)
	addi.d	$a1, $a1, %pc_lo12(string_upcase)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.152)
	addi.d	$a0, $a0, %pc_lo12(.L.str.152)
	pcalau12i	$a1, %pc_hi20(string_downcase)
	addi.d	$a1, $a1, %pc_lo12(string_downcase)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.153)
	addi.d	$a0, $a0, %pc_lo12(.L.str.153)
	pcalau12i	$a1, %pc_hi20(lstrcmp)
	addi.d	$a1, $a1, %pc_lo12(lstrcmp)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.154)
	addi.d	$a0, $a0, %pc_lo12(.L.str.154)
	pcalau12i	$a1, %pc_hi20(lstrcat)
	addi.d	$a1, $a1, %pc_lo12(lstrcat)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.155)
	addi.d	$a0, $a0, %pc_lo12(.L.str.155)
	pcalau12i	$a1, %pc_hi20(lstrcpy)
	addi.d	$a1, $a1, %pc_lo12(lstrcpy)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.156)
	addi.d	$a0, $a0, %pc_lo12(.L.str.156)
	pcalau12i	$a1, %pc_hi20(lstrbreakup)
	addi.d	$a1, $a1, %pc_lo12(lstrbreakup)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.157)
	addi.d	$a0, $a0, %pc_lo12(.L.str.157)
	pcalau12i	$a1, %pc_hi20(lstrunbreakup)
	addi.d	$a1, $a1, %pc_lo12(lstrunbreakup)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.158)
	addi.d	$a0, $a0, %pc_lo12(.L.str.158)
	pcalau12i	$a1, %pc_hi20(stringp)
	addi.d	$a1, $a1, %pc_lo12(stringp)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(sym_e)
	addi.d	$a0, $a0, %pc_lo12(sym_e)
	pcalau12i	$a1, %pc_hi20(.L.str.159)
	addi.d	$a1, $a1, %pc_lo12(.L.str.159)
	pcaddu18i	$ra, %call36(gc_protect_sym)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(sym_f)
	addi.d	$a0, $a0, %pc_lo12(sym_f)
	pcalau12i	$a1, %pc_hi20(.L.str.160)
	addi.d	$a1, $a1, %pc_lo12(.L.str.160)
	pcaddu18i	$ra, %call36(gc_protect_sym)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(sym_plists)
	addi.d	$fp, $a0, %pc_lo12(sym_plists)
	pcalau12i	$a0, %pc_hi20(.L.str.161)
	addi.d	$a1, $a0, %pc_lo12(.L.str.161)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gc_protect_sym)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 100
	st.d	$a0, $s1, 8
	ori	$a0, $zero, 800
	ori	$s2, $zero, 800
	pcaddu18i	$ra, %call36(must_malloc)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	st.d	$a0, $s1, 16
	.p2align	4, , 16
.LBB139_1:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 16
	stx.d	$zero, $a0, $a1
	addi.d	$a1, $a1, 8
	bne	$a1, $s2, .LBB139_1
# %bb.2:                                # %arcons.exit
	ori	$a0, $zero, 16
	st.h	$a0, $s1, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_interrupt)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.162)
	addi.d	$a0, $a0, %pc_lo12(.L.str.162)
	pcalau12i	$a1, %pc_hi20(lref_default)
	addi.d	$a1, $a1, %pc_lo12(lref_default)
	pcaddu18i	$ra, %call36(init_subr_3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.163)
	addi.d	$a0, $a0, %pc_lo12(.L.str.163)
	pcalau12i	$a1, %pc_hi20(larg_default)
	addi.d	$a1, $a1, %pc_lo12(larg_default)
	pcaddu18i	$ra, %call36(init_subr_3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$a0, $a0, %pc_lo12(.L.str.164)
	pcalau12i	$a1, %pc_hi20(lkey_default)
	addi.d	$a1, $a1, %pc_lo12(lkey_default)
	pcaddu18i	$ra, %call36(init_subr_3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.165)
	addi.d	$a0, $a0, %pc_lo12(.L.str.165)
	pcalau12i	$a1, %pc_hi20(llist)
	addi.d	$a1, $a1, %pc_lo12(llist)
	pcaddu18i	$ra, %call36(init_lsubr)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.166)
	addi.d	$a0, $a0, %pc_lo12(.L.str.166)
	pcalau12i	$a1, %pc_hi20(writes)
	addi.d	$a1, $a1, %pc_lo12(writes)
	pcaddu18i	$ra, %call36(init_lsubr)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.167)
	addi.d	$a0, $a0, %pc_lo12(.L.str.167)
	pcalau12i	$a1, %pc_hi20(lqsort)
	addi.d	$a1, $a1, %pc_lo12(lqsort)
	pcaddu18i	$ra, %call36(init_subr_3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$a0, $a0, %pc_lo12(.L.str.168)
	pcalau12i	$a1, %pc_hi20(string_lessp)
	addi.d	$a1, $a1, %pc_lo12(string_lessp)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$a0, $a0, %pc_lo12(.L.str.169)
	pcalau12i	$a1, %pc_hi20(mapcar)
	addi.d	$a1, $a1, %pc_lo12(mapcar)
	pcaddu18i	$ra, %call36(init_lsubr)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.170)
	addi.d	$a0, $a0, %pc_lo12(.L.str.170)
	pcalau12i	$a1, %pc_hi20(mapcar2)
	addi.d	$a1, $a1, %pc_lo12(mapcar2)
	pcaddu18i	$ra, %call36(init_subr_3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a1, %pc_hi20(mapcar1)
	addi.d	$a1, $a1, %pc_lo12(mapcar1)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.172)
	addi.d	$a0, $a0, %pc_lo12(.L.str.172)
	pcalau12i	$a1, %pc_hi20(benchmark_funcall1)
	addi.d	$a1, $a1, %pc_lo12(benchmark_funcall1)
	pcaddu18i	$ra, %call36(init_subr_3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.173)
	addi.d	$a0, $a0, %pc_lo12(.L.str.173)
	pcalau12i	$a1, %pc_hi20(benchmark_funcall2)
	addi.d	$a1, $a1, %pc_lo12(benchmark_funcall2)
	pcaddu18i	$ra, %call36(init_lsubr)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a0, $a0, %pc_lo12(.L.str.174)
	pcalau12i	$a1, %pc_hi20(benchmark_eval)
	addi.d	$a1, $a1, %pc_lo12(benchmark_eval)
	pcaddu18i	$ra, %call36(init_subr_3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.175)
	addi.d	$a0, $a0, %pc_lo12(.L.str.175)
	pcalau12i	$a1, %pc_hi20(lfmod)
	addi.d	$a1, $a1, %pc_lo12(lfmod)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.176)
	addi.d	$a0, $a0, %pc_lo12(.L.str.176)
	pcalau12i	$a1, %pc_hi20(lsubset)
	addi.d	$a1, $a1, %pc_lo12(lsubset)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.177)
	addi.d	$a0, $a0, %pc_lo12(.L.str.177)
	pcalau12i	$a1, %pc_hi20(base64encode)
	addi.d	$a1, $a1, %pc_lo12(base64encode)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.178)
	addi.d	$a0, $a0, %pc_lo12(.L.str.178)
	pcalau12i	$a1, %pc_hi20(base64decode)
	addi.d	$a1, $a1, %pc_lo12(base64decode)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.179)
	addi.d	$fp, $a0, %pc_lo12(.L.str.179)
	pcalau12i	$a0, %pc_hi20(ass)
	addi.d	$s0, $a0, %pc_lo12(ass)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(init_subr_3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.180)
	addi.d	$a0, $a0, %pc_lo12(.L.str.180)
	pcalau12i	$a1, %pc_hi20(append2)
	addi.d	$a1, $a1, %pc_lo12(append2)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.181)
	addi.d	$a0, $a0, %pc_lo12(.L.str.181)
	pcalau12i	$a1, %pc_hi20(append)
	addi.d	$a1, $a1, %pc_lo12(append)
	pcaddu18i	$ra, %call36(init_lsubr)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.182)
	addi.d	$a0, $a0, %pc_lo12(.L.str.182)
	pcalau12i	$a1, %pc_hi20(fast_save)
	addi.d	$a1, $a1, %pc_lo12(fast_save)
	pcaddu18i	$ra, %call36(init_subr_5)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.183)
	addi.d	$a0, $a0, %pc_lo12(.L.str.183)
	pcalau12i	$a1, %pc_hi20(fast_load)
	addi.d	$a1, $a1, %pc_lo12(fast_load)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.184)
	addi.d	$a0, $a0, %pc_lo12(.L.str.184)
	pcalau12i	$a1, %pc_hi20(swrite)
	addi.d	$a1, $a1, %pc_lo12(swrite)
	pcaddu18i	$ra, %call36(init_subr_3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.185)
	addi.d	$a0, $a0, %pc_lo12(.L.str.185)
	pcalau12i	$a1, %pc_hi20(lpow)
	addi.d	$a1, $a1, %pc_lo12(lpow)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.186)
	addi.d	$a0, $a0, %pc_lo12(.L.str.186)
	pcalau12i	$a1, %pc_hi20(lexp)
	addi.d	$a1, $a1, %pc_lo12(lexp)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.187)
	addi.d	$a0, $a0, %pc_lo12(.L.str.187)
	pcalau12i	$a1, %pc_hi20(llog)
	addi.d	$a1, $a1, %pc_lo12(llog)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.188)
	addi.d	$a0, $a0, %pc_lo12(.L.str.188)
	pcalau12i	$a1, %pc_hi20(lsin)
	addi.d	$a1, $a1, %pc_lo12(lsin)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.189)
	addi.d	$a0, $a0, %pc_lo12(.L.str.189)
	pcalau12i	$a1, %pc_hi20(lcos)
	addi.d	$a1, $a1, %pc_lo12(lcos)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.190)
	addi.d	$a0, $a0, %pc_lo12(.L.str.190)
	pcalau12i	$a1, %pc_hi20(ltan)
	addi.d	$a1, $a1, %pc_lo12(ltan)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.191)
	addi.d	$a0, $a0, %pc_lo12(.L.str.191)
	pcalau12i	$a1, %pc_hi20(lasin)
	addi.d	$a1, $a1, %pc_lo12(lasin)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.192)
	addi.d	$a0, $a0, %pc_lo12(.L.str.192)
	pcalau12i	$a1, %pc_hi20(lacos)
	addi.d	$a1, $a1, %pc_lo12(lacos)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.193)
	addi.d	$a0, $a0, %pc_lo12(.L.str.193)
	pcalau12i	$a1, %pc_hi20(latan)
	addi.d	$a1, $a1, %pc_lo12(latan)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.194)
	addi.d	$a0, $a0, %pc_lo12(.L.str.194)
	pcalau12i	$a1, %pc_hi20(latan2)
	addi.d	$a1, $a1, %pc_lo12(latan2)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.195)
	addi.d	$a0, $a0, %pc_lo12(.L.str.195)
	pcalau12i	$a1, %pc_hi20(ltypeof)
	addi.d	$a1, $a1, %pc_lo12(ltypeof)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.196)
	addi.d	$a0, $a0, %pc_lo12(.L.str.196)
	pcalau12i	$a1, %pc_hi20(caaar)
	addi.d	$a1, $a1, %pc_lo12(caaar)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.197)
	addi.d	$a0, $a0, %pc_lo12(.L.str.197)
	pcalau12i	$a1, %pc_hi20(caadr)
	addi.d	$a1, $a1, %pc_lo12(caadr)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.198)
	addi.d	$a0, $a0, %pc_lo12(.L.str.198)
	pcalau12i	$a1, %pc_hi20(cadar)
	addi.d	$a1, $a1, %pc_lo12(cadar)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.199)
	addi.d	$a0, $a0, %pc_lo12(.L.str.199)
	pcalau12i	$a1, %pc_hi20(caddr)
	addi.d	$a1, $a1, %pc_lo12(caddr)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.200)
	addi.d	$a0, $a0, %pc_lo12(.L.str.200)
	pcalau12i	$a1, %pc_hi20(cdaar)
	addi.d	$a1, $a1, %pc_lo12(cdaar)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.201)
	addi.d	$a0, $a0, %pc_lo12(.L.str.201)
	pcalau12i	$a1, %pc_hi20(cdadr)
	addi.d	$a1, $a1, %pc_lo12(cdadr)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.202)
	addi.d	$a0, $a0, %pc_lo12(.L.str.202)
	pcalau12i	$a1, %pc_hi20(cddar)
	addi.d	$a1, $a1, %pc_lo12(cddar)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.203)
	addi.d	$a0, $a0, %pc_lo12(.L.str.203)
	pcalau12i	$a1, %pc_hi20(cdddr)
	addi.d	$a1, $a1, %pc_lo12(cdddr)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.204)
	addi.d	$a0, $a0, %pc_lo12(.L.str.204)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	lu12i.w	$a0, 345154
	ori	$a0, $a0, 3352
	lu32i.d	$a0, -450053
	lu52i.d	$a0, $a0, 1024
	movgr2fr.d	$fa0, $a0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(base64_decode_table)
	st.d	$s1, $a0, %pc_lo12(base64_decode_table)
	ori	$a1, $zero, 255
	ori	$a2, $zero, 256
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI139_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI139_0)
	vst	$vr0, $s1, 65
	lu12i.w	$a0, 78113
	ori	$a0, $a0, 272
	lu32i.d	$a0, 398612
	lu52i.d	$a0, $a0, 369
	st.d	$a0, $s1, 81
	pcalau12i	$a0, %pc_hi20(.LCPI139_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI139_1)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2328
	st.h	$a0, $s1, 89
	vst	$vr0, $s1, 97
	lu12i.w	$a0, 185026
	ori	$a0, $a0, 2858
	lu32i.d	$a0, 12078
	lu52i.d	$a0, $a0, 787
	st.d	$a0, $s1, 113
	lu12i.w	$a0, 3
	ori	$a1, $a0, 818
	st.h	$a1, $s1, 121
	lu12i.w	$a1, 226147
	ori	$a1, $a1, 1332
	lu32i.d	$a1, -378568
	lu52i.d	$a1, $a1, 947
	st.d	$a1, $s1, 48
	ori	$a0, $a0, 3388
	st.h	$a0, $s1, 56
	ori	$a0, $zero, 62
	st.b	$a0, $s1, 43
	ori	$a0, $zero, 63
	st.b	$a0, $s1, 47
	ori	$a0, $zero, 64
	st.b	$a0, $s1, 61
	pcalau12i	$a0, %pc_hi20(.L.str.205)
	addi.d	$a0, $a0, %pc_lo12(.L.str.205)
	pcalau12i	$a1, %pc_hi20(hexstr)
	addi.d	$a1, $a1, %pc_lo12(hexstr)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.206)
	addi.d	$a0, $a0, %pc_lo12(.L.str.206)
	pcalau12i	$a1, %pc_hi20(hexstr2bytes)
	addi.d	$a1, $a1, %pc_lo12(hexstr2bytes)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(init_subr_3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.207)
	addi.d	$a0, $a0, %pc_lo12(.L.str.207)
	pcalau12i	$a1, %pc_hi20(bitand)
	addi.d	$a1, $a1, %pc_lo12(bitand)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.208)
	addi.d	$a0, $a0, %pc_lo12(.L.str.208)
	pcalau12i	$a1, %pc_hi20(bitor)
	addi.d	$a1, $a1, %pc_lo12(bitor)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.209)
	addi.d	$a0, $a0, %pc_lo12(.L.str.209)
	pcalau12i	$a1, %pc_hi20(bitxor)
	addi.d	$a1, $a1, %pc_lo12(bitxor)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.210)
	addi.d	$a0, $a0, %pc_lo12(.L.str.210)
	pcalau12i	$a1, %pc_hi20(bitnot)
	addi.d	$a1, $a1, %pc_lo12(bitnot)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.211)
	addi.d	$a0, $a0, %pc_lo12(.L.str.211)
	pcalau12i	$a1, %pc_hi20(leval_cond)
	addi.d	$a1, $a1, %pc_lo12(leval_cond)
	pcaddu18i	$ra, %call36(init_msubr)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.212)
	addi.d	$a0, $a0, %pc_lo12(.L.str.212)
	pcalau12i	$a1, %pc_hi20(leval_prog1)
	addi.d	$a1, $a1, %pc_lo12(leval_prog1)
	pcaddu18i	$ra, %call36(init_fsubr)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.213)
	addi.d	$a0, $a0, %pc_lo12(.L.str.213)
	pcalau12i	$a1, %pc_hi20(lstrspn)
	addi.d	$a1, $a1, %pc_lo12(lstrspn)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.214)
	addi.d	$a0, $a0, %pc_lo12(.L.str.214)
	pcalau12i	$a1, %pc_hi20(lstrcspn)
	addi.d	$a1, $a1, %pc_lo12(lstrcspn)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.215)
	addi.d	$a0, $a0, %pc_lo12(.L.str.215)
	pcalau12i	$a1, %pc_hi20(substring_equal)
	addi.d	$a1, $a1, %pc_lo12(substring_equal)
	pcaddu18i	$ra, %call36(init_subr_4)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.216)
	addi.d	$a0, $a0, %pc_lo12(.L.str.216)
	pcalau12i	$a1, %pc_hi20(substring_equalcase)
	addi.d	$a1, $a1, %pc_lo12(substring_equalcase)
	pcaddu18i	$ra, %call36(init_subr_4)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.217)
	addi.d	$a0, $a0, %pc_lo12(.L.str.217)
	pcalau12i	$a1, %pc_hi20(butlast)
	addi.d	$a1, $a1, %pc_lo12(butlast)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.218)
	addi.d	$a0, $a0, %pc_lo12(.L.str.218)
	pcalau12i	$a1, %pc_hi20(ash)
	addi.d	$a1, $a1, %pc_lo12(ash)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.219)
	addi.d	$a0, $a0, %pc_lo12(.L.str.219)
	pcalau12i	$a1, %pc_hi20(getprop)
	addi.d	$a1, $a1, %pc_lo12(getprop)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.220)
	addi.d	$a0, $a0, %pc_lo12(.L.str.220)
	pcalau12i	$a1, %pc_hi20(setprop)
	addi.d	$a1, $a1, %pc_lo12(setprop)
	pcaddu18i	$ra, %call36(init_subr_3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.221)
	addi.d	$a0, $a0, %pc_lo12(.L.str.221)
	pcalau12i	$a1, %pc_hi20(putprop)
	addi.d	$a1, $a1, %pc_lo12(putprop)
	pcaddu18i	$ra, %call36(init_subr_3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.222)
	addi.d	$a0, $a0, %pc_lo12(.L.str.222)
	pcalau12i	$a1, %pc_hi20(last)
	addi.d	$a1, $a1, %pc_lo12(last)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.223)
	addi.d	$a0, $a0, %pc_lo12(.L.str.223)
	pcalau12i	$a1, %pc_hi20(memq)
	addi.d	$a1, $a1, %pc_lo12(memq)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.224)
	addi.d	$a0, $a0, %pc_lo12(.L.str.224)
	pcalau12i	$a1, %pc_hi20(memv)
	addi.d	$a1, $a1, %pc_lo12(memv)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.225)
	addi.d	$a0, $a0, %pc_lo12(.L.str.225)
	pcalau12i	$a1, %pc_hi20(member)
	addi.d	$a1, $a1, %pc_lo12(member)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.226)
	addi.d	$a0, $a0, %pc_lo12(.L.str.226)
	pcalau12i	$a1, %pc_hi20(nth)
	addi.d	$a1, $a1, %pc_lo12(nth)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.227)
	addi.d	$a0, $a0, %pc_lo12(.L.str.227)
	pcalau12i	$a1, %pc_hi20(nconc)
	addi.d	$a1, $a1, %pc_lo12(nconc)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.228)
	addi.d	$a0, $a0, %pc_lo12(.L.str.228)
	pcalau12i	$a1, %pc_hi20(set_eval_history)
	addi.d	$a1, $a1, %pc_lo12(set_eval_history)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.229)
	addi.d	$a0, $a0, %pc_lo12(.L.str.229)
	pcalau12i	$a1, %pc_hi20(parser_fasl)
	addi.d	$a1, $a1, %pc_lo12(parser_fasl)
	pcaddu18i	$ra, %call36(init_subr_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.230)
	addi.d	$a0, $a0, %pc_lo12(.L.str.230)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(a_true_value)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(setvar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.231)
	addi.d	$a0, $a0, %pc_lo12(.L.str.231)
	pcalau12i	$a1, %pc_hi20(parser_fasl_hook)
	addi.d	$a1, $a1, %pc_lo12(parser_fasl_hook)
	pcaddu18i	$ra, %call36(init_subr_2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.234)
	addi.d	$a0, $a0, %pc_lo12(.L.str.234)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.235)
	addi.d	$a0, $a0, %pc_lo12(.L.str.235)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	move	$a2, $zero
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(setvar)
	jr	$t8
.Lfunc_end139:
	.size	init_subrs_a, .Lfunc_end139-init_subrs_a
                                        # -- End function
	.p2align	5                               # -- Begin function parser_fasl
	.type	parser_fasl,@function
parser_fasl:                            # @parser_fasl
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, -458752
	lu52i.d	$a0, $a0, 1029
	movgr2fr.d	$fa0, $a0
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cons_array)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	movgr2fr.d	$fa0, $zero
	pcaddu18i	$ra, %call36(flocons)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	ori	$a0, $zero, 3
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(listn)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.231)
	addi.d	$a0, $a0, %pc_lo12(.L.str.231)
	pcaddu18i	$ra, %call36(cintern)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(leval)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(closure)
	jr	$t8
.Lfunc_end140:
	.size	parser_fasl, .Lfunc_end140-parser_fasl
                                        # -- End function
	.p2align	5                               # -- Begin function parser_fasl_hook
	.type	parser_fasl_hook,@function
parser_fasl_hook:                       # @parser_fasl_hook
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(setcar)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fast_read)
	jirl	$ra, $ra, 0
	beq	$a0, $fp, .LBB141_2
# %bb.1:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB141_2:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(get_eof_val)
	jr	$t8
.Lfunc_end141:
	.size	parser_fasl_hook, .Lfunc_end141-parser_fasl_hook
                                        # -- End function
	.type	bashnum,@object                 # @bashnum
	.local	bashnum
	.comm	bashnum,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\""
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\"\\\n\r\t"
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\\n"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\\r"
	.size	.L.str.3, 3

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\\t"
	.size	.L.str.4, 3

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"#("
	.size	.L.str.5, 3

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%g"
	.size	.L.str.6, 3

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	" "
	.size	.L.str.7, 2

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	")"
	.size	.L.str.8, 2

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%ld"
	.size	.L.str.9, 4

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"#%ld\""
	.size	.L.str.10, 6

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%02x"
	.size	.L.str.11, 5

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"print to string overflow"
	.size	.L.str.12, 25

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"not a string"
	.size	.L.str.13, 13

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"bad index to aref"
	.size	.L.str.14, 18

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"negative index to aref"
	.size	.L.str.15, 23

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"index too large"
	.size	.L.str.16, 16

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"invalid argument to aref"
	.size	.L.str.17, 25

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"index to aset too large"
	.size	.L.str.18, 24

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"bad value to store in array"
	.size	.L.str.19, 28

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"bad index to aset"
	.size	.L.str.20, 18

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"negative index to aset"
	.size	.L.str.21, 23

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"invalid argument to aset"
	.size	.L.str.22, 25

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"bad dimension to cons-array"
	.size	.L.str.23, 28

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"double"
	.size	.L.str.24, 7

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"long"
	.size	.L.str.25, 5

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"string"
	.size	.L.str.26, 7

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"byte"
	.size	.L.str.27, 5

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"lisp"
	.size	.L.str.28, 5

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"bad type of array"
	.size	.L.str.29, 18

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"bad start index"
	.size	.L.str.30, 16

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"bad end index"
	.size	.L.str.31, 14

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"eof after \\"
	.size	.L.str.33, 12

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"eof after \\0"
	.size	.L.str.34, 13

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"read string overflow"
	.size	.L.str.35, 21

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"readsharp syntax not handled"
	.size	.L.str.36, 29

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"not a hash table"
	.size	.L.str.37, 17

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"sxhash inconsistency"
	.size	.L.str.38, 21

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"improper list to assoc"
	.size	.L.str.39, 23

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"improper list to assv"
	.size	.L.str.40, 22

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"symbol name too long"
	.size	.L.str.41, 21

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"cannot fast-print"
	.size	.L.str.42, 18

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"unknown fast-read opcode"
	.size	.L.str.43, 25

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"not a number"
	.size	.L.str.44, 13

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"write length too long"
	.size	.L.str.45, 22

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"improper list to length"
	.size	.L.str.46, 24

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"wta to length"
	.size	.L.str.47, 14

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"wta"
	.size	.L.str.48, 4

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"width too long"
	.size	.L.str.49, 15

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"precision too large"
	.size	.L.str.50, 20

	.type	sym_e,@object                   # @sym_e
	.local	sym_e
	.comm	sym_e,8,8
	.type	sym_f,@object                   # @sym_f
	.local	sym_f
	.comm	sym_f,8,8
	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"% *.*g"
	.size	.L.str.51, 7

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"% *.*e"
	.size	.L.str.52, 7

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"% *.*f"
	.size	.L.str.53, 7

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"% *g"
	.size	.L.str.54, 5

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"% *e"
	.size	.L.str.55, 5

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"% *f"
	.size	.L.str.56, 5

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"%.*g"
	.size	.L.str.57, 5

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"%.*e"
	.size	.L.str.58, 5

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"%.*f"
	.size	.L.str.59, 5

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"%e"
	.size	.L.str.60, 3

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"%f"
	.size	.L.str.61, 3

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"%0*ld"
	.size	.L.str.62, 6

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"%0*lo"
	.size	.L.str.63, 6

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"%0*lX"
	.size	.L.str.64, 6

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"%lo"
	.size	.L.str.65, 4

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"%lX"
	.size	.L.str.66, 4

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"number base not handled"
	.size	.L.str.67, 24

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"%lx"
	.size	.L.str.68, 4

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"string too long"
	.size	.L.str.69, 16

	.type	base64_decode_table,@object     # @base64_decode_table
	.local	base64_decode_table
	.comm	base64_decode_table,8,8
	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"illegal base64 data length"
	.size	.L.str.70, 27

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"improper list to memq"
	.size	.L.str.71, 22

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"improper list to member"
	.size	.L.str.72, 24

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"improper list to memv"
	.size	.L.str.73, 22

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"bad arg to nth"
	.size	.L.str.74, 15

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"bad arg to last"
	.size	.L.str.76, 16

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"list is empty"
	.size	.L.str.77, 14

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"not a list"
	.size	.L.str.78, 11

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"bad list to qsort"
	.size	.L.str.79, 18

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"mapcar case not handled"
	.size	.L.str.80, 24

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"wta(1st) to fmod"
	.size	.L.str.81, 17

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"wta(2nd) to fmod"
	.size	.L.str.82, 17

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"improper list to ass"
	.size	.L.str.83, 21

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"fast loading "
	.size	.L.str.84, 14

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"\n"
	.size	.L.str.85, 2

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"rb"
	.size	.L.str.86, 3

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"done.\n"
	.size	.L.str.87, 7

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"fast saving forms to "
	.size	.L.str.88, 22

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"wb"
	.size	.L.str.89, 3

	.type	.L.str.90,@object               # @.str.90
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.90:
	.asciz	"# Siod Binary Object Save File\n"
	.size	.L.str.90, 32

	.type	.L.str.91,@object               # @.str.91
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.91:
	.asciz	"# sizeof(long) = %d\n# sizeof(double) = %d\n"
	.size	.L.str.91, 43

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"# 1 = %s\n"
	.size	.L.str.92, 10

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"# 1.0 = %s\n"
	.size	.L.str.93, 12

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"no object repeat count"
	.size	.L.str.94, 23

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"wta(1st) to pow"
	.size	.L.str.95, 16

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"wta(2nd) to pow"
	.size	.L.str.96, 16

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"not implemented"
	.size	.L.str.97, 16

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"tc_nil"
	.size	.L.str.98, 7

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"tc_cons"
	.size	.L.str.99, 8

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"tc_flonum"
	.size	.L.str.100, 10

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"tc_symbol"
	.size	.L.str.101, 10

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"tc_subr_0"
	.size	.L.str.102, 10

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"tc_subr_1"
	.size	.L.str.103, 10

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"tc_subr_2"
	.size	.L.str.104, 10

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"tc_subr_2n"
	.size	.L.str.105, 11

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"tc_subr_3"
	.size	.L.str.106, 10

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"tc_subr_4"
	.size	.L.str.107, 10

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"tc_subr_5"
	.size	.L.str.108, 10

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"tc_lsubr"
	.size	.L.str.109, 9

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"tc_fsubr"
	.size	.L.str.110, 9

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"tc_msubr"
	.size	.L.str.111, 9

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"tc_closure"
	.size	.L.str.112, 11

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"tc_free_cell"
	.size	.L.str.113, 13

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"tc_string"
	.size	.L.str.114, 10

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"tc_byte_array"
	.size	.L.str.115, 14

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"tc_double_array"
	.size	.L.str.116, 16

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"tc_long_array"
	.size	.L.str.117, 14

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"tc_lisp_array"
	.size	.L.str.118, 14

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"tc_c_file"
	.size	.L.str.119, 10

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"*eval-history-ptr*"
	.size	.L.str.120, 19

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"*eval-history*"
	.size	.L.str.121, 15

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"aref"
	.size	.L.str.122, 5

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"aset"
	.size	.L.str.123, 5

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"string-append"
	.size	.L.str.124, 14

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"bytes-append"
	.size	.L.str.125, 13

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"string-length"
	.size	.L.str.126, 14

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"string-dimension"
	.size	.L.str.127, 17

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"read-from-string"
	.size	.L.str.128, 17

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"print-to-string"
	.size	.L.str.129, 16

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"cons-array"
	.size	.L.str.130, 11

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"sxhash"
	.size	.L.str.131, 7

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"equal?"
	.size	.L.str.132, 7

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"href"
	.size	.L.str.133, 5

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"hset"
	.size	.L.str.134, 5

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"assoc"
	.size	.L.str.135, 6

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"assv"
	.size	.L.str.136, 5

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"fast-read"
	.size	.L.str.137, 10

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"fast-print"
	.size	.L.str.138, 11

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"make-list"
	.size	.L.str.139, 10

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"fread"
	.size	.L.str.140, 6

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"fwrite"
	.size	.L.str.141, 7

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"fflush"
	.size	.L.str.142, 7

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"length"
	.size	.L.str.143, 7

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"number->string"
	.size	.L.str.144, 15

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"string->number"
	.size	.L.str.145, 15

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"substring"
	.size	.L.str.146, 10

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"string-search"
	.size	.L.str.147, 14

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"string-trim"
	.size	.L.str.148, 12

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"string-trim-left"
	.size	.L.str.149, 17

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"string-trim-right"
	.size	.L.str.150, 18

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"string-upcase"
	.size	.L.str.151, 14

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	"string-downcase"
	.size	.L.str.152, 16

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	"strcmp"
	.size	.L.str.153, 7

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"strcat"
	.size	.L.str.154, 7

	.type	.L.str.155,@object              # @.str.155
.L.str.155:
	.asciz	"strcpy"
	.size	.L.str.155, 7

	.type	.L.str.156,@object              # @.str.156
.L.str.156:
	.asciz	"strbreakup"
	.size	.L.str.156, 11

	.type	.L.str.157,@object              # @.str.157
.L.str.157:
	.asciz	"unbreakupstr"
	.size	.L.str.157, 13

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	"string?"
	.size	.L.str.158, 8

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	"e"
	.size	.L.str.159, 2

	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	"f"
	.size	.L.str.160, 2

	.type	sym_plists,@object              # @sym_plists
	.local	sym_plists
	.comm	sym_plists,8,8
	.type	.L.str.161,@object              # @.str.161
.L.str.161:
	.asciz	"*plists*"
	.size	.L.str.161, 9

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	"lref-default"
	.size	.L.str.162, 13

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	"larg-default"
	.size	.L.str.163, 13

	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	"lkey-default"
	.size	.L.str.164, 13

	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	"list"
	.size	.L.str.165, 5

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	"writes"
	.size	.L.str.166, 7

	.type	.L.str.167,@object              # @.str.167
.L.str.167:
	.asciz	"qsort"
	.size	.L.str.167, 6

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	"string-lessp"
	.size	.L.str.168, 13

	.type	.L.str.169,@object              # @.str.169
.L.str.169:
	.asciz	"mapcar"
	.size	.L.str.169, 7

	.type	.L.str.170,@object              # @.str.170
.L.str.170:
	.asciz	"mapcar2"
	.size	.L.str.170, 8

	.type	.L.str.171,@object              # @.str.171
.L.str.171:
	.asciz	"mapcar1"
	.size	.L.str.171, 8

	.type	.L.str.172,@object              # @.str.172
.L.str.172:
	.asciz	"benchmark-funcall1"
	.size	.L.str.172, 19

	.type	.L.str.173,@object              # @.str.173
.L.str.173:
	.asciz	"benchmark-funcall2"
	.size	.L.str.173, 19

	.type	.L.str.174,@object              # @.str.174
.L.str.174:
	.asciz	"benchmark-eval"
	.size	.L.str.174, 15

	.type	.L.str.175,@object              # @.str.175
.L.str.175:
	.asciz	"fmod"
	.size	.L.str.175, 5

	.type	.L.str.176,@object              # @.str.176
.L.str.176:
	.asciz	"subset"
	.size	.L.str.176, 7

	.type	.L.str.177,@object              # @.str.177
.L.str.177:
	.asciz	"base64encode"
	.size	.L.str.177, 13

	.type	.L.str.178,@object              # @.str.178
.L.str.178:
	.asciz	"base64decode"
	.size	.L.str.178, 13

	.type	.L.str.179,@object              # @.str.179
.L.str.179:
	.asciz	"ass"
	.size	.L.str.179, 4

	.type	.L.str.180,@object              # @.str.180
.L.str.180:
	.asciz	"append2"
	.size	.L.str.180, 8

	.type	.L.str.181,@object              # @.str.181
.L.str.181:
	.asciz	"append"
	.size	.L.str.181, 7

	.type	.L.str.182,@object              # @.str.182
.L.str.182:
	.asciz	"fast-save"
	.size	.L.str.182, 10

	.type	.L.str.183,@object              # @.str.183
.L.str.183:
	.asciz	"fast-load"
	.size	.L.str.183, 10

	.type	.L.str.184,@object              # @.str.184
.L.str.184:
	.asciz	"swrite"
	.size	.L.str.184, 7

	.type	.L.str.185,@object              # @.str.185
.L.str.185:
	.asciz	"pow"
	.size	.L.str.185, 4

	.type	.L.str.186,@object              # @.str.186
.L.str.186:
	.asciz	"exp"
	.size	.L.str.186, 4

	.type	.L.str.187,@object              # @.str.187
.L.str.187:
	.asciz	"log"
	.size	.L.str.187, 4

	.type	.L.str.188,@object              # @.str.188
.L.str.188:
	.asciz	"sin"
	.size	.L.str.188, 4

	.type	.L.str.189,@object              # @.str.189
.L.str.189:
	.asciz	"cos"
	.size	.L.str.189, 4

	.type	.L.str.190,@object              # @.str.190
.L.str.190:
	.asciz	"tan"
	.size	.L.str.190, 4

	.type	.L.str.191,@object              # @.str.191
.L.str.191:
	.asciz	"asin"
	.size	.L.str.191, 5

	.type	.L.str.192,@object              # @.str.192
.L.str.192:
	.asciz	"acos"
	.size	.L.str.192, 5

	.type	.L.str.193,@object              # @.str.193
.L.str.193:
	.asciz	"atan"
	.size	.L.str.193, 5

	.type	.L.str.194,@object              # @.str.194
.L.str.194:
	.asciz	"atan2"
	.size	.L.str.194, 6

	.type	.L.str.195,@object              # @.str.195
.L.str.195:
	.asciz	"typeof"
	.size	.L.str.195, 7

	.type	.L.str.196,@object              # @.str.196
.L.str.196:
	.asciz	"caaar"
	.size	.L.str.196, 6

	.type	.L.str.197,@object              # @.str.197
.L.str.197:
	.asciz	"caadr"
	.size	.L.str.197, 6

	.type	.L.str.198,@object              # @.str.198
.L.str.198:
	.asciz	"cadar"
	.size	.L.str.198, 6

	.type	.L.str.199,@object              # @.str.199
.L.str.199:
	.asciz	"caddr"
	.size	.L.str.199, 6

	.type	.L.str.200,@object              # @.str.200
.L.str.200:
	.asciz	"cdaar"
	.size	.L.str.200, 6

	.type	.L.str.201,@object              # @.str.201
.L.str.201:
	.asciz	"cdadr"
	.size	.L.str.201, 6

	.type	.L.str.202,@object              # @.str.202
.L.str.202:
	.asciz	"cddar"
	.size	.L.str.202, 6

	.type	.L.str.203,@object              # @.str.203
.L.str.203:
	.asciz	"cdddr"
	.size	.L.str.203, 6

	.type	.L.str.204,@object              # @.str.204
.L.str.204:
	.asciz	"*pi*"
	.size	.L.str.204, 5

	.type	.L.str.205,@object              # @.str.205
.L.str.205:
	.asciz	"array->hexstr"
	.size	.L.str.205, 14

	.type	.L.str.206,@object              # @.str.206
.L.str.206:
	.asciz	"hexstr->bytes"
	.size	.L.str.206, 14

	.type	.L.str.207,@object              # @.str.207
.L.str.207:
	.asciz	"bit-and"
	.size	.L.str.207, 8

	.type	.L.str.208,@object              # @.str.208
.L.str.208:
	.asciz	"bit-or"
	.size	.L.str.208, 7

	.type	.L.str.209,@object              # @.str.209
.L.str.209:
	.asciz	"bit-xor"
	.size	.L.str.209, 8

	.type	.L.str.210,@object              # @.str.210
.L.str.210:
	.asciz	"bit-not"
	.size	.L.str.210, 8

	.type	.L.str.211,@object              # @.str.211
.L.str.211:
	.asciz	"cond"
	.size	.L.str.211, 5

	.type	.L.str.212,@object              # @.str.212
.L.str.212:
	.asciz	"prog1"
	.size	.L.str.212, 6

	.type	.L.str.213,@object              # @.str.213
.L.str.213:
	.asciz	"strspn"
	.size	.L.str.213, 7

	.type	.L.str.214,@object              # @.str.214
.L.str.214:
	.asciz	"strcspn"
	.size	.L.str.214, 8

	.type	.L.str.215,@object              # @.str.215
.L.str.215:
	.asciz	"substring-equal?"
	.size	.L.str.215, 17

	.type	.L.str.216,@object              # @.str.216
.L.str.216:
	.asciz	"substring-equalcase?"
	.size	.L.str.216, 21

	.type	.L.str.217,@object              # @.str.217
.L.str.217:
	.asciz	"butlast"
	.size	.L.str.217, 8

	.type	.L.str.218,@object              # @.str.218
.L.str.218:
	.asciz	"ash"
	.size	.L.str.218, 4

	.type	.L.str.219,@object              # @.str.219
.L.str.219:
	.asciz	"get"
	.size	.L.str.219, 4

	.type	.L.str.220,@object              # @.str.220
.L.str.220:
	.asciz	"setprop"
	.size	.L.str.220, 8

	.type	.L.str.221,@object              # @.str.221
.L.str.221:
	.asciz	"putprop"
	.size	.L.str.221, 8

	.type	.L.str.222,@object              # @.str.222
.L.str.222:
	.asciz	"last"
	.size	.L.str.222, 5

	.type	.L.str.223,@object              # @.str.223
.L.str.223:
	.asciz	"memq"
	.size	.L.str.223, 5

	.type	.L.str.224,@object              # @.str.224
.L.str.224:
	.asciz	"memv"
	.size	.L.str.224, 5

	.type	.L.str.225,@object              # @.str.225
.L.str.225:
	.asciz	"member"
	.size	.L.str.225, 7

	.type	.L.str.226,@object              # @.str.226
.L.str.226:
	.asciz	"nth"
	.size	.L.str.226, 4

	.type	.L.str.227,@object              # @.str.227
.L.str.227:
	.asciz	"nconc"
	.size	.L.str.227, 6

	.type	.L.str.228,@object              # @.str.228
.L.str.228:
	.asciz	"set-eval-history"
	.size	.L.str.228, 17

	.type	.L.str.229,@object              # @.str.229
.L.str.229:
	.asciz	"parser_fasl"
	.size	.L.str.229, 12

	.type	.L.str.230,@object              # @.str.230
.L.str.230:
	.asciz	"*parser_fasl.scm-loaded*"
	.size	.L.str.230, 25

	.type	.L.str.231,@object              # @.str.231
.L.str.231:
	.asciz	"parser_fasl_hook"
	.size	.L.str.231, 17

	.type	.L.str.232,@object              # @.str.232
.L.str.232:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="
	.size	.L.str.232, 66

	.type	.L.str.233,@object              # @.str.233
.L.str.233:
	.asciz	"%02X"
	.size	.L.str.233, 5

	.type	.L.str.234,@object              # @.str.234
.L.str.234:
	.asciz	"*sliba-version*"
	.size	.L.str.234, 16

	.type	.L.str.235,@object              # @.str.235
.L.str.235:
	.asciz	"$Id$"
	.size	.L.str.235, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym array_gc_relocate
	.addrsig_sym array_gc_mark
	.addrsig_sym array_gc_scan
	.addrsig_sym array_gc_free
	.addrsig_sym array_prin1
	.addrsig_sym array_fast_print
	.addrsig_sym array_fast_read
	.addrsig_sym array_equal
	.addrsig_sym array_sxhash
	.addrsig_sym rfs_getc
	.addrsig_sym rfs_ungetc
	.addrsig_sym read_from_string
	.addrsig_sym pts_puts
	.addrsig_sym print_to_string
	.addrsig_sym aref1
	.addrsig_sym aset1
	.addrsig_sym cons_array
	.addrsig_sym string_append
	.addrsig_sym bytes_append
	.addrsig_sym substring
	.addrsig_sym string_search
	.addrsig_sym string_trim
	.addrsig_sym string_trim_left
	.addrsig_sym string_trim_right
	.addrsig_sym string_upcase
	.addrsig_sym string_downcase
	.addrsig_sym sxhash
	.addrsig_sym equal
	.addrsig_sym href
	.addrsig_sym assoc
	.addrsig_sym hset
	.addrsig_sym assv
	.addrsig_sym fast_print
	.addrsig_sym fast_read
	.addrsig_sym make_list
	.addrsig_sym lfread
	.addrsig_sym lfwrite
	.addrsig_sym lfflush
	.addrsig_sym string_length
	.addrsig_sym string_dim
	.addrsig_sym llength
	.addrsig_sym number2string
	.addrsig_sym string2number
	.addrsig_sym lstrcmp
	.addrsig_sym lstrcpy
	.addrsig_sym lstrcat
	.addrsig_sym lstrbreakup
	.addrsig_sym lstrunbreakup
	.addrsig_sym stringp
	.addrsig_sym base64encode
	.addrsig_sym base64decode
	.addrsig_sym memq
	.addrsig_sym member
	.addrsig_sym memv
	.addrsig_sym nth
	.addrsig_sym lref_default
	.addrsig_sym larg_default
	.addrsig_sym lkey_default
	.addrsig_sym llist
	.addrsig_sym writes
	.addrsig_sym last
	.addrsig_sym butlast
	.addrsig_sym nconc
	.addrsig_sym lqsort
	.addrsig_sym string_lessp
	.addrsig_sym benchmark_funcall1
	.addrsig_sym benchmark_funcall2
	.addrsig_sym benchmark_eval
	.addrsig_sym mapcar1
	.addrsig_sym mapcar2
	.addrsig_sym mapcar
	.addrsig_sym lfmod
	.addrsig_sym lsubset
	.addrsig_sym ass
	.addrsig_sym append2
	.addrsig_sym append
	.addrsig_sym fast_load
	.addrsig_sym fast_save
	.addrsig_sym swrite
	.addrsig_sym lpow
	.addrsig_sym lexp
	.addrsig_sym llog
	.addrsig_sym lsin
	.addrsig_sym lcos
	.addrsig_sym ltan
	.addrsig_sym lasin
	.addrsig_sym lacos
	.addrsig_sym latan
	.addrsig_sym latan2
	.addrsig_sym hexstr
	.addrsig_sym hexstr2bytes
	.addrsig_sym getprop
	.addrsig_sym setprop
	.addrsig_sym putprop
	.addrsig_sym ltypeof
	.addrsig_sym caaar
	.addrsig_sym caadr
	.addrsig_sym cadar
	.addrsig_sym caddr
	.addrsig_sym cdaar
	.addrsig_sym cdadr
	.addrsig_sym cddar
	.addrsig_sym cdddr
	.addrsig_sym ash
	.addrsig_sym bitand
	.addrsig_sym bitor
	.addrsig_sym bitxor
	.addrsig_sym bitnot
	.addrsig_sym leval_prog1
	.addrsig_sym leval_cond
	.addrsig_sym lstrspn
	.addrsig_sym lstrcspn
	.addrsig_sym substring_equal
	.addrsig_sym substring_equalcase
	.addrsig_sym set_eval_history
	.addrsig_sym parser_fasl
	.addrsig_sym parser_fasl_hook
	.addrsig_sym bashnum
	.addrsig_sym sym_e
	.addrsig_sym sym_f
	.addrsig_sym sym_plists
