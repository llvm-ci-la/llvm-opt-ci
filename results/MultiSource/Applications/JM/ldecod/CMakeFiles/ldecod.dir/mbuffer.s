	.file	"mbuffer.c"
	.text
	.globl	dump_dpb                        # -- Begin function dump_dpb
	.p2align	5
	.type	dump_dpb,@function
dump_dpb:                               # @dump_dpb
# %bb.0:
	ret
.Lfunc_end0:
	.size	dump_dpb, .Lfunc_end0-dump_dpb
                                        # -- End function
	.globl	getDpbSize                      # -- Begin function getDpbSize
	.p2align	5
	.type	getDpbSize,@function
getDpbSize:                             # @getDpbSize
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(active_sps)
	ld.d	$a1, $fp, %pc_lo12(active_sps)
	ori	$a0, $zero, 2068
	ldx.w	$a0, $a1, $a0
	ori	$a2, $zero, 2072
	ldx.w	$a2, $a1, $a2
	addi.d	$a0, $a0, 1
	ldptr.w	$a3, $a1, 2076
	addi.d	$a2, $a2, 1
	mulw.d.w	$a0, $a2, $a0
	ld.w	$a2, $a1, 24
	sltui	$a3, $a3, 1
	sll.w	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a0, 1
	addi.d	$a2, $a2, -9
	ori	$a3, $zero, 42
	slli.w	$s0, $a0, 7
	bltu	$a3, $a2, .LBB1_16
# %bb.1:
	lu12i.w	$a0, 37
	ori	$a0, $a0, 512
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI1_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI1_0)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB1_2:
	lu12i.w	$a0, 222
	ori	$a0, $a0, 3072
	b	.LBB1_17
.LBB1_3:
	lu12i.w	$a0, 759
	ori	$a0, $a0, 1536
	b	.LBB1_17
.LBB1_4:
	ld.w	$a0, $a1, 4
	addi.d	$a0, $a0, -100
	ori	$a2, $zero, 44
	bltu	$a2, $a0, .LBB1_7
# %bb.5:
	ori	$a2, $zero, 1
	sll.d	$a0, $a2, $a0
	lu12i.w	$a2, 1024
	ori	$a2, $a2, 1025
	lu32i.d	$a2, 4096
	and	$a0, $a0, $a2
	beqz	$a0, .LBB1_7
# %bb.6:
	lu12i.w	$a0, 3264
	b	.LBB1_17
.LBB1_7:
	lu12i.w	$a0, 3072
	b	.LBB1_17
.LBB1_8:
	lu12i.w	$a0, 1920
	b	.LBB1_17
.LBB1_9:
	ld.w	$a2, $a1, 4
	ori	$a3, $zero, 99
	bltu	$a3, $a2, .LBB1_17
# %bb.10:
	ld.w	$a2, $a1, 20
	bnez	$a2, .LBB1_17
# %bb.11:
	lu12i.w	$a0, 84
	ori	$a0, $a0, 1536
	b	.LBB1_17
.LBB1_12:
	lu12i.w	$a0, 10350
	b	.LBB1_17
.LBB1_13:
	lu12i.w	$a0, 445
	ori	$a0, $a0, 2048
	b	.LBB1_17
.LBB1_14:
	lu12i.w	$a0, 17280
	b	.LBB1_17
.LBB1_15:
	lu12i.w	$a0, 1687
	ori	$a0, $a0, 2048
	b	.LBB1_17
.LBB1_16:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 500
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, %pc_lo12(active_sps)
	move	$a0, $zero
.LBB1_17:
	div.w	$a0, $a0, $s0
	slti	$a2, $a0, 16
	ldptr.w	$a3, $a1, 2108
	maskeqz	$a0, $a0, $a2
	ori	$a4, $zero, 16
	masknez	$a2, $a4, $a2
	or	$a0, $a0, $a2
	beqz	$a3, .LBB1_22
# %bb.18:
	ldptr.w	$a2, $a1, 3032
	beqz	$a2, .LBB1_22
# %bb.19:
	ldptr.w	$a1, $a1, 3060
	bge	$a0, $a1, .LBB1_21
# %bb.20:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 500
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(active_sps)
	ori	$a1, $zero, 3060
	ldx.w	$a1, $a0, $a1
.LBB1_21:
	ori	$a0, $zero, 1
	slt	$a2, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
.LBB1_22:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	getDpbSize, .Lfunc_end1-getDpbSize
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_17-.LJTI1_0
	.word	.LBB1_17-.LJTI1_0
	.word	.LBB1_9-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_3-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_3-.LJTI1_0
	.word	.LBB1_15-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_14-.LJTI1_0
                                        # -- End function
	.text
	.globl	check_num_ref                   # -- Begin function check_num_ref
	.p2align	5
	.type	check_num_ref,@function
check_num_ref:                          # @check_num_ref
# %bb.0:
	pcalau12i	$a0, %pc_hi20(dpb)
	addi.d	$a0, $a0, %pc_lo12(dpb)
	ld.w	$a1, $a0, 36
	ld.w	$a2, $a0, 32
	ld.w	$a0, $a0, 52
	add.w	$a1, $a2, $a1
	ori	$a2, $zero, 1
	slt	$a3, $a2, $a0
	masknez	$a2, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a2
	bge	$a0, $a1, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 500
	pcaddu18i	$t8, %call36(error)
	jr	$t8
.LBB2_2:
	ret
.Lfunc_end2:
	.size	check_num_ref, .Lfunc_end2-check_num_ref
                                        # -- End function
	.globl	init_dpb                        # -- Begin function init_dpb
	.p2align	5
	.type	init_dpb,@function
init_dpb:                               # @init_dpb
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(dpb)
	addi.d	$s2, $a0, %pc_lo12(dpb)
	ld.w	$a0, $s2, 48
	beqz	$a0, .LBB3_2
# %bb.1:
	pcaddu18i	$ra, %call36(free_dpb)
	jirl	$ra, $ra, 0
.LBB3_2:
	pcaddu18i	$ra, %call36(getDpbSize)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ldptr.w	$a1, $a1, 2060
	move	$fp, $a0
	st.w	$a0, $s2, 24
	st.w	$a1, $s2, 52
	bgeu	$a0, $a1, .LBB3_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 1000
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s2, 24
.LBB3_4:
	st.d	$zero, $s2, 28
	st.d	$zero, $s2, 56
	st.w	$zero, $s2, 36
	bstrpick.d	$s0, $fp, 31, 0
	ori	$a1, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	bnez	$a0, .LBB3_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.wu	$s0, $s2, 24
	move	$fp, $s0
.LBB3_6:
	ori	$a1, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 8
	bnez	$a0, .LBB3_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.wu	$s0, $s2, 24
	move	$fp, $s0
.LBB3_8:
	ori	$a1, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	bnez	$a0, .LBB3_10
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s2, 24
.LBB3_10:
	addi.w	$a0, $fp, 0
	beqz	$a0, .LBB3_15
# %bb.11:                               # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s0, $a0, %pc_lo12(.L.str.8)
	move	$s3, $zero
	move	$s4, $zero
	b	.LBB3_13
	.p2align	4, , 16
.LBB3_12:                               # %alloc_frame_store.exit
                                        #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s2, 8
	ld.d	$a2, $s2, 16
	stx.d	$s1, $a0, $s3
	stx.d	$zero, $a1, $s3
	stx.d	$zero, $a2, $s3
	addi.d	$s4, $s4, 1
	bstrpick.d	$a0, $fp, 31, 0
	addi.d	$s3, $s3, 8
	bgeu	$s4, $a0, .LBB3_15
.LBB3_13:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB3_12
# %bb.14:                               #   in Loop: Header=BB3_13 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s2, 24
	b	.LBB3_12
.LBB3_15:                               # %.preheader19
	ori	$a0, $zero, 33
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(listX)
	addi.d	$fp, $a1, %pc_lo12(listX)
	st.d	$a0, $fp, 0
	bnez	$a0, .LBB3_17
# %bb.16:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB3_17:
	ori	$a0, $zero, 33
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	bnez	$a0, .LBB3_19
# %bb.18:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB3_19:
	ori	$a0, $zero, 33
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	bnez	$a0, .LBB3_21
# %bb.20:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB3_21:
	ori	$a0, $zero, 33
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 24
	bnez	$a0, .LBB3_23
# %bb.22:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB3_23:
	ori	$a0, $zero, 33
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 32
	bnez	$a0, .LBB3_25
# %bb.24:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB3_25:
	ori	$a0, $zero, 33
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 40
	bnez	$a0, .LBB3_27
# %bb.26:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB3_27:                               # %.preheader
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 48
	ld.w	$a2, $a0, 52
	ld.w	$a3, $a0, 56
	ld.w	$a4, $a0, 64
	move	$a0, $zero
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 77
	ori	$a2, $a1, 1608
	add.d	$a3, $a0, $a2
	pcalau12i	$a1, %pc_hi20(no_reference_picture)
	st.d	$a0, $a1, %pc_lo12(no_reference_picture)
	ld.d	$a1, $fp, 0
	stx.d	$a0, $a0, $a2
	st.d	$a0, $a3, 8
	st.d	$a0, $a3, 16
	ori	$a2, $zero, 264
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	ori	$a2, $zero, 264
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ori	$a2, $zero, 264
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ori	$a2, $zero, 264
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(listXsize)
	addi.d	$s1, $a0, %pc_lo12(listXsize)
	ld.d	$a0, $fp, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $s1, 0
	ori	$a2, $zero, 264
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	st.w	$zero, $s1, 16
	ori	$a2, $zero, 264
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	st.w	$zero, $s1, 20
	lu12i.w	$a1, -524288
	lu32i.d	$a1, 0
	ldptr.w	$a2, $a0, 6068
	st.w	$a1, $s2, 40
	stptr.w	$zero, $a0, 5860
	ori	$a0, $zero, 1
	st.w	$a0, $s2, 48
	beqz	$a2, .LBB3_31
# %bb.28:
	ori	$a0, $zero, 1
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB3_30
# %bb.29:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB3_30:                               # %alloc_frame_store.exit18
	pcalau12i	$a0, %pc_hi20(last_out_fs)
	st.d	$fp, $a0, %pc_lo12(last_out_fs)
.LBB3_31:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end3:
	.size	init_dpb, .Lfunc_end3-init_dpb
                                        # -- End function
	.globl	free_dpb                        # -- Begin function free_dpb
	.p2align	5
	.type	free_dpb,@function
free_dpb:                               # @free_dpb
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(dpb)
	addi.d	$s0, $a0, %pc_lo12(dpb)
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB4_13
# %bb.1:                                # %.preheader
	ld.wu	$a1, $s0, 24
	beqz	$a1, .LBB4_12
# %bb.2:                                # %.lr.ph.preheader
	move	$s1, $zero
	move	$s2, $zero
	b	.LBB4_5
	.p2align	4, , 16
.LBB4_3:                                #   in Loop: Header=BB4_5 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.wu	$a1, $s0, 24
.LBB4_4:                                # %free_frame_store.exit
                                        #   in Loop: Header=BB4_5 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bgeu	$s2, $a1, .LBB4_12
.LBB4_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$fp, $a0, $s1
	beqz	$fp, .LBB4_4
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB4_8
# %bb.7:                                #   in Loop: Header=BB4_5 Depth=1
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 48
.LBB4_8:                                #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB4_10
# %bb.9:                                #   in Loop: Header=BB4_5 Depth=1
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 56
.LBB4_10:                               #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB4_3
# %bb.11:                               #   in Loop: Header=BB4_5 Depth=1
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	b	.LBB4_3
.LBB4_12:                               # %._crit_edge
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 0
.LBB4_13:
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB4_15
# %bb.14:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB4_15:
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB4_17
# %bb.16:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB4_17:
	lu12i.w	$a0, -524288
	lu32i.d	$a0, 0
	st.w	$a0, $s0, 40
	pcalau12i	$a0, %pc_hi20(listX)
	addi.d	$fp, $a0, %pc_lo12(listX)
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB4_19
# %bb.18:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
.LBB4_19:
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB4_21
# %bb.20:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 8
.LBB4_21:
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB4_23
# %bb.22:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 16
.LBB4_23:
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB4_25
# %bb.24:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 24
.LBB4_25:
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB4_27
# %bb.26:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 32
.LBB4_27:
	ld.d	$a0, $fp, 40
	beqz	$a0, .LBB4_29
# %bb.28:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 40
.LBB4_29:
	st.w	$zero, $s0, 48
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 6068
	beqz	$a0, .LBB4_38
# %bb.30:
	pcalau12i	$a0, %pc_hi20(last_out_fs)
	ld.d	$fp, $a0, %pc_lo12(last_out_fs)
	beqz	$fp, .LBB4_38
# %bb.31:
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB4_33
# %bb.32:
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 48
.LBB4_33:
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB4_35
# %bb.34:
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 56
.LBB4_35:
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB4_37
# %bb.36:
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
.LBB4_37:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB4_38:                               # %free_frame_store.exit19
	pcalau12i	$a0, %pc_hi20(no_reference_picture)
	ld.d	$a0, $a0, %pc_lo12(no_reference_picture)
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(free_storable_picture)
	jr	$t8
.Lfunc_end4:
	.size	free_dpb, .Lfunc_end4-free_dpb
                                        # -- End function
	.globl	alloc_frame_store               # -- Begin function alloc_frame_store
	.p2align	5
	.type	alloc_frame_store,@function
alloc_frame_store:                      # @alloc_frame_store
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_2
# %bb.1:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB5_2:
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	alloc_frame_store, .Lfunc_end5-alloc_frame_store
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function alloc_storable_picture
.LCPI6_0:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.text
	.globl	alloc_storable_picture
	.p2align	5
	.type	alloc_storable_picture,@function
alloc_storable_picture:                 # @alloc_storable_picture
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
	move	$fp, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s4, $a0
	lu12i.w	$s8, 77
	ori	$a1, $s8, 1712
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$s5, $s8, 1432
	bnez	$a0, .LBB6_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB6_2:
	add.d	$s7, $s0, $s5
	beqz	$s4, .LBB6_4
# %bb.3:
	bstrpick.d	$a0, $s2, 31, 31
	add.w	$a0, $s2, $a0
	srai.d	$s2, $a0, 1
	bstrpick.d	$a0, $fp, 31, 31
	add.w	$a0, $fp, $a0
	srai.d	$fp, $a0, 1
.LBB6_4:
	mul.w	$a0, $s2, $s3
	bstrpick.d	$a1, $a0, 62, 55
	add.w	$a0, $a0, $a1
	srli.d	$a0, $a0, 8
	st.w	$a0, $s7, 88
	ori	$a0, $s8, 1528
	add.d	$a0, $s0, $a0
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(get_mem2Dpel)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ld.w	$a0, $a0, 32
	beqz	$a0, .LBB6_6
# %bb.5:
	ori	$a0, $s8, 1536
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 2
	move	$a2, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(get_mem3Dpel)
	jirl	$ra, $ra, 0
.LBB6_6:
	ld.wu	$a0, $s7, 88
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 112
	bnez	$a0, .LBB6_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB6_8:
	ori	$a0, $s8, 1552
	add.d	$a0, $s0, $a0
	srli.d	$s5, $s2, 31
	bstrpick.d	$a1, $s5, 31, 28
	add.w	$a1, $s2, $a1
	srai.d	$a1, $a1, 4
	srli.d	$s6, $s3, 31
	bstrpick.d	$a2, $s6, 31, 28
	add.w	$a2, $s3, $a2
	srai.d	$a2, $a2, 4
	pcaddu18i	$ra, %call36(get_mem2Dshort)
	jirl	$ra, $ra, 0
	ori	$a0, $s8, 1560
	add.d	$a0, $s0, $a0
	bstrpick.d	$a1, $s5, 31, 30
	add.w	$a1, $s2, $a1
	srai.d	$s5, $a1, 2
	bstrpick.d	$a1, $s6, 31, 30
	add.w	$a1, $s3, $a1
	srai.d	$s6, $a1, 2
	ori	$a1, $zero, 2
	move	$a2, $s5
	move	$a3, $s6
	pcaddu18i	$ra, %call36(get_mem3D)
	jirl	$ra, $ra, 0
	ori	$a0, $s8, 1568
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 6
	move	$a2, $s5
	move	$a3, $s6
	pcaddu18i	$ra, %call36(get_mem3Dint64)
	jirl	$ra, $ra, 0
	ori	$a0, $s8, 1576
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 6
	move	$a2, $s5
	move	$a3, $s6
	pcaddu18i	$ra, %call36(get_mem3Dint64)
	jirl	$ra, $ra, 0
	ori	$a0, $s8, 1584
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 2
	ori	$a4, $zero, 2
	move	$a2, $s5
	move	$a3, $s6
	pcaddu18i	$ra, %call36(get_mem4Dshort)
	jirl	$ra, $ra, 0
	ori	$a0, $s8, 1592
	add.d	$a0, $s0, $a0
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
	ori	$a0, $s8, 1600
	add.d	$a0, $s0, $a0
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
	ori	$a0, $s8, 1440
	add.d	$a1, $s0, $a0
	st.w	$zero, $s7, 0
	stx.d	$zero, $s0, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 8
	st.d	$zero, $a1, 22
	st.w	$s4, $s0, 0
	st.w	$s3, $s7, 40
	st.w	$s2, $s7, 44
	st.w	$s1, $s7, 48
	vinsgr2vr.w	$vr0, $fp, 0
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	vld	$vr1, $a0, %pc_lo12(.LCPI6_0)
	vinsgr2vr.w	$vr0, $s3, 1
	vinsgr2vr.w	$vr0, $s2, 2
	vinsgr2vr.w	$vr0, $s1, 3
	vadd.w	$vr0, $vr0, $vr1
	pcalau12i	$a0, %pc_hi20(no_reference_picture)
	ld.d	$a0, $a0, %pc_lo12(no_reference_picture)
	vst	$vr0, $s7, 52
	addi.d	$a1, $fp, -1
	st.w	$a1, $s7, 68
	st.d	$a0, $s7, 176
	st.d	$a0, $s7, 184
	st.d	$a0, $s7, 192
	st.d	$zero, $s7, 264
	st.d	$zero, $s7, 76
	st.w	$zero, $s0, 4
	st.w	$zero, $s0, 12
	st.w	$zero, $s0, 8
	move	$a0, $s0
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
	ret
.Lfunc_end6:
	.size	alloc_storable_picture, .Lfunc_end6-alloc_storable_picture
                                        # -- End function
	.globl	free_frame_store                # -- Begin function free_frame_store
	.p2align	5
	.type	free_frame_store,@function
free_frame_store:                       # @free_frame_store
# %bb.0:
	beqz	$a0, .LBB7_8
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 48
	beqz	$a0, .LBB7_3
# %bb.2:
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 48
.LBB7_3:
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB7_5
# %bb.4:
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 56
.LBB7_5:
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB7_7
# %bb.6:
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
.LBB7_7:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB7_8:
	ret
.Lfunc_end7:
	.size	free_frame_store, .Lfunc_end7-free_frame_store
                                        # -- End function
	.globl	free_storable_picture           # -- Begin function free_storable_picture
	.p2align	5
	.type	free_storable_picture,@function
free_storable_picture:                  # @free_storable_picture
# %bb.0:
	beqz	$a0, .LBB8_22
# %bb.1:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	lu12i.w	$a0, 77
	ori	$a0, $a0, 1476
	add.d	$s0, $fp, $a0
	ld.d	$a0, $s0, 84
	beqz	$a0, .LBB8_3
# %bb.2:
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem3D)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 84
.LBB8_3:
	ld.d	$a0, $s0, 92
	beqz	$a0, .LBB8_5
# %bb.4:
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(free_mem3Dint64)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 92
.LBB8_5:
	ld.d	$a0, $s0, 100
	beqz	$a0, .LBB8_7
# %bb.6:
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(free_mem3Dint64)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 100
.LBB8_7:
	ld.d	$a0, $s0, 108
	beqz	$a0, .LBB8_9
# %bb.8:
	ld.w	$a1, $s0, 0
	bstrpick.d	$a2, $a1, 62, 61
	add.w	$a1, $a1, $a2
	srai.d	$a2, $a1, 2
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem4Dshort)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 108
.LBB8_9:
	ld.d	$a0, $s0, 116
	beqz	$a0, .LBB8_11
# %bb.10:
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 116
.LBB8_11:
	ld.d	$a0, $s0, 124
	beqz	$a0, .LBB8_13
# %bb.12:
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 124
.LBB8_13:
	ld.d	$a0, $s0, 52
	beqz	$a0, .LBB8_15
# %bb.14:
	pcaddu18i	$ra, %call36(free_mem2Dpel)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 52
.LBB8_15:
	ld.d	$a0, $s0, 60
	beqz	$a0, .LBB8_17
# %bb.16:
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem3Dpel)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 60
.LBB8_17:
	ld.d	$a0, $s0, 68
	beqz	$a0, .LBB8_19
# %bb.18:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 68
.LBB8_19:
	ld.d	$a0, $s0, 76
	beqz	$a0, .LBB8_21
# %bb.20:
	pcaddu18i	$ra, %call36(free_mem2Dshort)
	jirl	$ra, $ra, 0
.LBB8_21:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB8_22:
	ret
.Lfunc_end8:
	.size	free_storable_picture, .Lfunc_end8-free_storable_picture
                                        # -- End function
	.globl	is_short_ref                    # -- Begin function is_short_ref
	.p2align	5
	.type	is_short_ref,@function
is_short_ref:                           # @is_short_ref
# %bb.0:
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1452
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 4
	beqz	$a1, .LBB9_2
# %bb.1:
	ld.w	$a0, $a0, 0
	sltui	$a0, $a0, 1
	ret
.LBB9_2:
	move	$a0, $zero
	ret
.Lfunc_end9:
	.size	is_short_ref, .Lfunc_end9-is_short_ref
                                        # -- End function
	.globl	is_long_ref                     # -- Begin function is_long_ref
	.p2align	5
	.type	is_long_ref,@function
is_long_ref:                            # @is_long_ref
# %bb.0:
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1452
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 4
	beqz	$a1, .LBB10_2
# %bb.1:
	ld.w	$a0, $a0, 0
	sltu	$a0, $zero, $a0
	ret
.LBB10_2:
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	is_long_ref, .Lfunc_end10-is_long_ref
                                        # -- End function
	.globl	init_lists                      # -- Begin function init_lists
	.p2align	5
	.type	init_lists,@function
init_lists:                             # @init_lists
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
	pcalau12i	$a2, %pc_hi20(active_sps)
	ld.d	$a2, $a2, %pc_lo12(active_sps)
	ld.w	$a2, $a2, 1008
	move	$fp, $a1
	addi.d	$a1, $a2, 4
	ori	$a2, $zero, 1
	sll.w	$a2, $a2, $a1
	lu12i.w	$s5, 77
	beqz	$fp, .LBB11_16
# %bb.1:
	addi.d	$a1, $fp, -1
	sltu	$a3, $zero, $a1
	sltui	$a4, $a1, 1
	pcalau12i	$a1, %pc_hi20(dpb)
	addi.d	$a5, $a1, %pc_lo12(dpb)
	ld.w	$a1, $a5, 32
	beqz	$a1, .LBB11_9
# %bb.2:                                # %.lr.ph
	ld.d	$a6, $a5, 8
	bstrpick.d	$a7, $a1, 31, 0
	pcalau12i	$t0, %got_pc_hi20(img)
	ld.d	$t0, $t0, %got_pc_lo12(img)
	ld.d	$t0, $t0, 0
	ori	$t1, $s5, 1440
	b	.LBB11_4
	.p2align	4, , 16
.LBB11_3:                               #   in Loop: Header=BB11_4 Depth=1
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 8
	beqz	$a7, .LBB11_9
.LBB11_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a6, 0
	ld.w	$t3, $t2, 4
	beqz	$t3, .LBB11_3
# %bb.5:                                #   in Loop: Header=BB11_4 Depth=1
	ld.w	$t4, $t2, 20
	ldptr.w	$t5, $t0, 5676
	sltu	$t5, $t5, $t4
	maskeqz	$t5, $a2, $t5
	sub.d	$t4, $t4, $t5
	st.w	$t4, $t2, 28
	andi	$t5, $t3, 1
	slli.d	$t4, $t4, 1
	beqz	$t5, .LBB11_7
# %bb.6:                                #   in Loop: Header=BB11_4 Depth=1
	ld.d	$t5, $t2, 56
	or	$t6, $t4, $a4
	stx.w	$t6, $t5, $t1
.LBB11_7:                               #   in Loop: Header=BB11_4 Depth=1
	andi	$t3, $t3, 2
	beqz	$t3, .LBB11_3
# %bb.8:                                #   in Loop: Header=BB11_4 Depth=1
	ld.d	$t2, $t2, 64
	or	$t3, $t4, $a3
	stx.w	$t3, $t2, $t1
	b	.LBB11_3
.LBB11_9:                               # %.preheader654
	ld.wu	$a2, $a5, 36
	beqz	$a2, .LBB11_29
# %bb.10:                               # %.lr.ph705
	ld.d	$a5, $a5, 16
	ori	$a6, $s5, 1444
	b	.LBB11_12
	.p2align	4, , 16
.LBB11_11:                              #   in Loop: Header=BB11_12 Depth=1
	addi.d	$a2, $a2, -1
	addi.d	$a5, $a5, 8
	beqz	$a2, .LBB11_29
.LBB11_12:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a5, 0
	ld.wu	$t0, $a7, 8
	andi	$t1, $t0, 1
	bnez	$t1, .LBB11_14
# %bb.13:                               #   in Loop: Header=BB11_12 Depth=1
	andi	$t0, $t0, 2
	beqz	$t0, .LBB11_11
	b	.LBB11_15
	.p2align	4, , 16
.LBB11_14:                              #   in Loop: Header=BB11_12 Depth=1
	ld.d	$t1, $a7, 56
	add.d	$t2, $t1, $a6
	ld.w	$t2, $t2, 4
	slli.d	$t2, $t2, 1
	or	$t2, $t2, $a4
	stx.w	$t2, $t1, $a6
	andi	$t0, $t0, 2
	beqz	$t0, .LBB11_11
.LBB11_15:                              #   in Loop: Header=BB11_12 Depth=1
	ld.d	$a7, $a7, 64
	add.d	$t0, $a7, $a6
	ld.w	$t0, $t0, 4
	slli.d	$t0, $t0, 1
	or	$t0, $t0, $a3
	stx.w	$t0, $a7, $a6
	b	.LBB11_11
.LBB11_16:                              # %.preheader653
	pcalau12i	$a1, %pc_hi20(dpb)
	addi.d	$a3, $a1, %pc_lo12(dpb)
	ld.w	$a1, $a3, 32
	beqz	$a1, .LBB11_23
# %bb.17:                               # %.lr.ph707
	ld.d	$a4, $a3, 8
	bstrpick.d	$a5, $a1, 31, 0
	pcalau12i	$a6, %got_pc_hi20(img)
	ld.d	$a6, $a6, %got_pc_lo12(img)
	ld.d	$a6, $a6, 0
	ori	$a7, $zero, 3
	ori	$t0, $s5, 1440
	b	.LBB11_19
	.p2align	4, , 16
.LBB11_18:                              #   in Loop: Header=BB11_19 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 8
	beqz	$a5, .LBB11_23
.LBB11_19:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a4, 0
	ld.w	$t2, $t1, 0
	bne	$t2, $a7, .LBB11_18
# %bb.20:                               #   in Loop: Header=BB11_19 Depth=1
	ld.d	$t2, $t1, 48
	add.d	$t2, $t2, $t0
	ld.w	$t3, $t2, 16
	beqz	$t3, .LBB11_18
# %bb.21:                               #   in Loop: Header=BB11_19 Depth=1
	ld.w	$t3, $t2, 12
	bnez	$t3, .LBB11_18
# %bb.22:                               #   in Loop: Header=BB11_19 Depth=1
	ld.w	$t3, $t1, 20
	ldptr.w	$t4, $a6, 5676
	sltu	$t4, $t4, $t3
	maskeqz	$t4, $a2, $t4
	sub.d	$t3, $t3, $t4
	st.w	$t3, $t1, 28
	st.w	$t3, $t2, 0
	b	.LBB11_18
.LBB11_23:                              # %.preheader651
	ld.wu	$a2, $a3, 36
	beqz	$a2, .LBB11_29
# %bb.24:                               # %.lr.ph709
	ld.d	$a3, $a3, 16
	ori	$a4, $zero, 3
	ori	$a5, $s5, 1444
	b	.LBB11_26
	.p2align	4, , 16
.LBB11_25:                              #   in Loop: Header=BB11_26 Depth=1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	beqz	$a2, .LBB11_29
.LBB11_26:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, 0
	ld.w	$a7, $a6, 0
	bne	$a7, $a4, .LBB11_25
# %bb.27:                               #   in Loop: Header=BB11_26 Depth=1
	ld.d	$a6, $a6, 48
	add.d	$a6, $a6, $a5
	ld.w	$a7, $a6, 8
	beqz	$a7, .LBB11_25
# %bb.28:                               #   in Loop: Header=BB11_26 Depth=1
	ld.w	$a7, $a6, 4
	st.w	$a7, $a6, 0
	b	.LBB11_25
.LBB11_29:                              # %.loopexit652
	ori	$a2, $zero, 4
	bltu	$a2, $a0, .LBB11_41
# %bb.30:                               # %.loopexit652
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(.LJTI11_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI11_0)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB11_31:
	pcalau12i	$s4, %pc_hi20(listX)
	beqz	$fp, .LBB11_54
# %bb.32:
	pcalau12i	$a0, %pc_hi20(dpb)
	addi.d	$s6, $a0, %pc_lo12(dpb)
	ld.wu	$s1, $s6, 24
	ori	$a1, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB11_34
# %bb.33:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.wu	$s1, $s6, 24
.LBB11_34:
	ori	$a1, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB11_68
# %bb.35:
	ld.wu	$a0, $s6, 32
	beqz	$a0, .LBB11_69
.LBB11_36:                              # %.lr.ph712
	ld.d	$a1, $s6, 8
	move	$s2, $zero
	b	.LBB11_38
	.p2align	4, , 16
.LBB11_37:                              #   in Loop: Header=BB11_38 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	beqz	$a0, .LBB11_70
.LBB11_38:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	ld.w	$a3, $a2, 4
	beqz	$a3, .LBB11_37
# %bb.39:                               #   in Loop: Header=BB11_38 Depth=1
	slli.d	$a3, $s2, 3
	addi.w	$s2, $s2, 1
	stx.d	$a2, $s0, $a3
	b	.LBB11_37
.LBB11_40:
	pcalau12i	$a0, %pc_hi20(listXsize)
	st.d	$zero, $a0, %pc_lo12(listXsize)
	b	.LBB11_406
.LBB11_41:
	beqz	$fp, .LBB11_128
# %bb.42:
	pcalau12i	$a0, %pc_hi20(dpb)
	addi.d	$s7, $a0, %pc_lo12(dpb)
	ld.wu	$s2, $s7, 24
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB11_44
# %bb.43:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.wu	$s2, $s7, 24
.LBB11_44:
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB11_46
# %bb.45:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.wu	$s2, $s7, 24
.LBB11_46:
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	bnez	$a0, .LBB11_48
# %bb.47:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB11_48:
	pcalau12i	$a0, %pc_hi20(listXsize)
	addi.d	$s6, $a0, %pc_lo12(listXsize)
	ld.wu	$a0, $s7, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $s6, 0
	beqz	$a0, .LBB11_174
# %bb.49:                               # %.lr.ph735
	ld.d	$a1, $s7, 8
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $a2, 0
	move	$s3, $zero
	b	.LBB11_51
	.p2align	4, , 16
.LBB11_50:                              #   in Loop: Header=BB11_51 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	beqz	$a0, .LBB11_175
.LBB11_51:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	ld.w	$a4, $a3, 0
	beqz	$a4, .LBB11_50
# %bb.52:                               #   in Loop: Header=BB11_51 Depth=1
	ldptr.w	$a4, $a2, 5752
	ld.w	$a5, $a3, 40
	blt	$a4, $a5, .LBB11_50
# %bb.53:                               #   in Loop: Header=BB11_51 Depth=1
	slli.d	$a4, $s3, 3
	addi.w	$s3, $s3, 1
	stx.d	$a3, $s0, $a4
	b	.LBB11_50
.LBB11_54:                              # %.preheader650
	ld.d	$a0, $s4, %pc_lo12(listX)
	move	$fp, $zero
	beqz	$a1, .LBB11_61
# %bb.55:                               # %.lr.ph723
	pcalau12i	$a2, %pc_hi20(dpb+8)
	ld.d	$a2, $a2, %pc_lo12(dpb+8)
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a3, $zero, 3
	ori	$a4, $s5, 1452
	b	.LBB11_57
	.p2align	4, , 16
.LBB11_56:                              #   in Loop: Header=BB11_57 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB11_61
.LBB11_57:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, 0
	ld.w	$a6, $a5, 0
	bne	$a6, $a3, .LBB11_56
# %bb.58:                               #   in Loop: Header=BB11_57 Depth=1
	ld.d	$a5, $a5, 48
	add.d	$a6, $a5, $a4
	ld.w	$a7, $a6, 4
	beqz	$a7, .LBB11_56
# %bb.59:                               #   in Loop: Header=BB11_57 Depth=1
	ld.w	$a6, $a6, 0
	bnez	$a6, .LBB11_56
# %bb.60:                               #   in Loop: Header=BB11_57 Depth=1
	slli.d	$a6, $fp, 3
	addi.w	$fp, $fp, 1
	stx.d	$a5, $a0, $a6
	b	.LBB11_56
.LBB11_61:                              # %._crit_edge724
	pcalau12i	$a1, %pc_hi20(compare_pic_by_pic_num_desc)
	addi.d	$a3, $a1, %pc_lo12(compare_pic_by_pic_num_desc)
	ori	$a2, $zero, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(listXsize)
	st.w	$fp, $s1, %pc_lo12(listXsize)
	pcalau12i	$a0, %pc_hi20(dpb)
	addi.d	$a2, $a0, %pc_lo12(dpb)
	ld.wu	$a1, $a2, 36
	ld.d	$a0, $s4, %pc_lo12(listX)
	move	$s2, $fp
	beqz	$a1, .LBB11_67
# %bb.62:                               # %.lr.ph729
	ld.d	$a2, $a2, 16
	ori	$a3, $zero, 3
	ori	$a4, $s5, 1452
	move	$s2, $fp
	b	.LBB11_64
	.p2align	4, , 16
.LBB11_63:                              #   in Loop: Header=BB11_64 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB11_67
.LBB11_64:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, 0
	ld.w	$a6, $a5, 0
	bne	$a6, $a3, .LBB11_63
# %bb.65:                               #   in Loop: Header=BB11_64 Depth=1
	ld.d	$a5, $a5, 48
	ldx.w	$a6, $a5, $a4
	beqz	$a6, .LBB11_63
# %bb.66:                               #   in Loop: Header=BB11_64 Depth=1
	slli.d	$a6, $s2, 3
	addi.w	$s2, $s2, 1
	stx.d	$a5, $a0, $a6
	b	.LBB11_63
.LBB11_67:                              # %._crit_edge730
	alsl.d	$a0, $fp, $a0, 3
	sub.w	$a1, $s2, $fp
	pcalau12i	$a2, %pc_hi20(compare_pic_by_lt_pic_num_asc)
	addi.d	$a3, $a2, %pc_lo12(compare_pic_by_lt_pic_num_asc)
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	st.w	$s2, $s1, %pc_lo12(listXsize)
	b	.LBB11_387
.LBB11_68:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s6, 32
	bnez	$a0, .LBB11_36
.LBB11_69:
	move	$s2, $zero
.LBB11_70:                              # %._crit_edge
	pcalau12i	$a0, %pc_hi20(compare_fs_by_frame_num_desc)
	addi.d	$a3, $a0, %pc_lo12(compare_fs_by_frame_num_desc)
	ori	$a2, $zero, 8
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	move	$a3, $zero
	move	$a2, $zero
	ld.d	$a0, $s4, %pc_lo12(listX)
	pcalau12i	$s3, %pc_hi20(listXsize)
	ori	$a4, $zero, 1
	st.w	$zero, $s3, %pc_lo12(listXsize)
	bne	$fp, $a4, .LBB11_91
# %bb.71:                               # %.preheader88.i
	blez	$s2, .LBB11_94
# %bb.72:                               # %.preheader86.i.preheader
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	ori	$a4, $s5, 1452
	b	.LBB11_75
	.p2align	4, , 16
.LBB11_73:                              # %.loopexit85.i
                                        #   in Loop: Header=BB11_75 Depth=1
	blt	$a3, $s2, .LBB11_75
.LBB11_74:                              # %.loopexit85.i
                                        #   in Loop: Header=BB11_75 Depth=1
	bge	$a2, $s2, .LBB11_91
.LBB11_75:                              # %.preheader86.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_78 Depth 2
                                        #     Child Loop BB11_86 Depth 2
	bge	$a3, $s2, .LBB11_82
# %bb.76:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB11_75 Depth=1
	alsl.d	$a5, $a3, $s0, 3
	b	.LBB11_78
	.p2align	4, , 16
.LBB11_77:                              # %is_short_ref.exit549.thread
                                        #   in Loop: Header=BB11_78 Depth=2
	addi.w	$a3, $a3, 1
	addi.d	$a5, $a5, 8
	beq	$s2, $a3, .LBB11_83
.LBB11_78:                              # %.lr.ph.i
                                        #   Parent Loop BB11_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 1
	beqz	$a7, .LBB11_77
# %bb.79:                               #   in Loop: Header=BB11_78 Depth=2
	ld.d	$a6, $a6, 56
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_77
# %bb.80:                               # %is_short_ref.exit549
                                        #   in Loop: Header=BB11_78 Depth=2
	ld.w	$a7, $a7, 0
	bnez	$a7, .LBB11_77
# %bb.81:                               #   in Loop: Header=BB11_75 Depth=1
	slli.d	$a5, $a1, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a1, $a1, 1
	st.w	$a1, $s3, %pc_lo12(listXsize)
	addi.w	$a3, $a3, 1
	bge	$a2, $s2, .LBB11_73
	b	.LBB11_84
	.p2align	4, , 16
.LBB11_82:                              # %.loopexit87.i
                                        #   in Loop: Header=BB11_75 Depth=1
	blt	$a2, $s2, .LBB11_84
	b	.LBB11_73
	.p2align	4, , 16
.LBB11_83:                              #   in Loop: Header=BB11_75 Depth=1
	move	$a3, $s2
	bge	$a2, $s2, .LBB11_73
.LBB11_84:                              # %.lr.ph99.preheader.i
                                        #   in Loop: Header=BB11_75 Depth=1
	alsl.d	$a5, $a2, $s0, 3
	b	.LBB11_86
	.p2align	4, , 16
.LBB11_85:                              # %is_short_ref.exit546.thread
                                        #   in Loop: Header=BB11_86 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, 8
	beq	$s2, $a2, .LBB11_90
.LBB11_86:                              # %.lr.ph99.i
                                        #   Parent Loop BB11_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 2
	beqz	$a7, .LBB11_85
# %bb.87:                               #   in Loop: Header=BB11_86 Depth=2
	ld.d	$a6, $a6, 64
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_85
# %bb.88:                               # %is_short_ref.exit546
                                        #   in Loop: Header=BB11_86 Depth=2
	ld.w	$a7, $a7, 0
	bnez	$a7, .LBB11_85
# %bb.89:                               #   in Loop: Header=BB11_75 Depth=1
	slli.d	$a5, $a1, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a1, $a1, 1
	st.w	$a1, $s3, %pc_lo12(listXsize)
	addi.w	$a2, $a2, 1
	bge	$a3, $s2, .LBB11_74
	b	.LBB11_75
	.p2align	4, , 16
.LBB11_90:                              #   in Loop: Header=BB11_75 Depth=1
	move	$a2, $s2
	bge	$a3, $s2, .LBB11_74
	b	.LBB11_75
.LBB11_91:                              # %.loopexit89.i
	ori	$a4, $zero, 2
	bne	$fp, $a4, .LBB11_94
# %bb.92:                               # %.preheader83.i
	blt	$a3, $s2, .LBB11_136
# %bb.93:                               # %.preheader83.i
	blt	$a2, $s2, .LBB11_136
.LBB11_94:                              # %gen_pic_list_from_frame_list.exit
	ld.wu	$a0, $s6, 36
	addi.w	$s2, $a0, 0
	beqz	$s2, .LBB11_102
# %bb.95:                               # %.lr.ph716
	ld.d	$a1, $s6, 16
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$s2, $a3, .LBB11_100
# %bb.96:                               # %.lr.ph716
	sub.d	$a3, $s1, $a1
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB11_100
# %bb.97:                               # %vector.ph
	bstrpick.d	$a2, $a0, 31, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s1, 16
	addi.d	$a4, $a1, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB11_98:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB11_98
# %bb.99:                               # %middle.block
	beq	$a2, $a0, .LBB11_102
.LBB11_100:                             # %scalar.ph.preheader
	alsl.d	$a1, $a2, $a1, 3
	alsl.d	$a3, $a2, $s1, 3
	sub.d	$a0, $a0, $a2
	.p2align	4, , 16
.LBB11_101:                             # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB11_101
.LBB11_102:                             # %._crit_edge717
	pcalau12i	$a0, %pc_hi20(compare_fs_by_lt_pic_idx_asc)
	addi.d	$a3, $a0, %pc_lo12(compare_fs_by_lt_pic_idx_asc)
	ori	$a2, $zero, 8
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(listX)
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB11_123
# %bb.103:                              # %.preheader88.i308
	beqz	$s2, .LBB11_127
# %bb.104:                              # %.preheader86.i309.preheader
	ld.w	$a3, $s3, %pc_lo12(listXsize)
	move	$a1, $zero
	move	$a2, $zero
	ori	$a4, $s5, 1452
	b	.LBB11_107
	.p2align	4, , 16
.LBB11_105:                             # %.loopexit85.i314
                                        #   in Loop: Header=BB11_107 Depth=1
	blt	$a2, $s2, .LBB11_107
.LBB11_106:                             # %.loopexit85.i314
                                        #   in Loop: Header=BB11_107 Depth=1
	bge	$a1, $s2, .LBB11_124
.LBB11_107:                             # %.preheader86.i309
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_110 Depth 2
                                        #     Child Loop BB11_118 Depth 2
	bge	$a2, $s2, .LBB11_114
# %bb.108:                              # %.lr.ph.preheader.i324
                                        #   in Loop: Header=BB11_107 Depth=1
	alsl.d	$a5, $a2, $s1, 3
	b	.LBB11_110
	.p2align	4, , 16
.LBB11_109:                             # %is_long_ref.exit556.thread
                                        #   in Loop: Header=BB11_110 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, 8
	beq	$s2, $a2, .LBB11_115
.LBB11_110:                             # %.lr.ph.i325
                                        #   Parent Loop BB11_107 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 1
	beqz	$a7, .LBB11_109
# %bb.111:                              #   in Loop: Header=BB11_110 Depth=2
	ld.d	$a6, $a6, 56
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_109
# %bb.112:                              # %is_long_ref.exit556
                                        #   in Loop: Header=BB11_110 Depth=2
	ld.w	$a7, $a7, 0
	beqz	$a7, .LBB11_109
# %bb.113:                              #   in Loop: Header=BB11_107 Depth=1
	slli.d	$a5, $a3, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a3, $a3, 1
	st.w	$a3, $s3, %pc_lo12(listXsize)
	addi.w	$a2, $a2, 1
	bge	$a1, $s2, .LBB11_105
	b	.LBB11_116
	.p2align	4, , 16
.LBB11_114:                             # %.loopexit87.i312
                                        #   in Loop: Header=BB11_107 Depth=1
	blt	$a1, $s2, .LBB11_116
	b	.LBB11_105
	.p2align	4, , 16
.LBB11_115:                             #   in Loop: Header=BB11_107 Depth=1
	move	$a2, $s2
	bge	$a1, $s2, .LBB11_105
.LBB11_116:                             # %.lr.ph99.preheader.i316
                                        #   in Loop: Header=BB11_107 Depth=1
	alsl.d	$a5, $a1, $s1, 3
	b	.LBB11_118
	.p2align	4, , 16
.LBB11_117:                             # %is_long_ref.exit554.thread
                                        #   in Loop: Header=BB11_118 Depth=2
	addi.w	$a1, $a1, 1
	addi.d	$a5, $a5, 8
	beq	$s2, $a1, .LBB11_122
.LBB11_118:                             # %.lr.ph99.i317
                                        #   Parent Loop BB11_107 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 2
	beqz	$a7, .LBB11_117
# %bb.119:                              #   in Loop: Header=BB11_118 Depth=2
	ld.d	$a6, $a6, 64
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_117
# %bb.120:                              # %is_long_ref.exit554
                                        #   in Loop: Header=BB11_118 Depth=2
	ld.w	$a7, $a7, 0
	beqz	$a7, .LBB11_117
# %bb.121:                              #   in Loop: Header=BB11_107 Depth=1
	slli.d	$a5, $a3, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a3, $a3, 1
	st.w	$a3, $s3, %pc_lo12(listXsize)
	addi.w	$a1, $a1, 1
	bge	$a2, $s2, .LBB11_106
	b	.LBB11_107
	.p2align	4, , 16
.LBB11_122:                             #   in Loop: Header=BB11_107 Depth=1
	move	$a1, $s2
	bge	$a2, $s2, .LBB11_106
	b	.LBB11_107
.LBB11_123:
	move	$a2, $zero
	move	$a1, $zero
.LBB11_124:                             # %.loopexit89.i281
	ori	$a3, $zero, 2
	bne	$fp, $a3, .LBB11_127
# %bb.125:                              # %.preheader83.i284
	blt	$a2, $s2, .LBB11_155
# %bb.126:                              # %.preheader83.i284
	blt	$a1, $s2, .LBB11_155
.LBB11_127:                             # %gen_pic_list_from_frame_list.exit332
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	b	.LBB11_387
.LBB11_128:                             # %.preheader648
	pcalau12i	$a0, %pc_hi20(listX)
	addi.d	$s1, $a0, %pc_lo12(listX)
	ld.d	$a0, $s1, 0
	beqz	$a1, .LBB11_312
# %bb.129:                              # %.lr.ph764
	pcalau12i	$a2, %pc_hi20(dpb+8)
	ld.d	$a2, $a2, %pc_lo12(dpb+8)
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	move	$fp, $zero
	ld.d	$a3, $a3, 0
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a4, $zero, 3
	ori	$a5, $s5, 1452
	b	.LBB11_131
	.p2align	4, , 16
.LBB11_130:                             #   in Loop: Header=BB11_131 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB11_313
.LBB11_131:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a2, 0
	ld.w	$a7, $a6, 0
	bne	$a7, $a4, .LBB11_130
# %bb.132:                              #   in Loop: Header=BB11_131 Depth=1
	ld.d	$a6, $a6, 48
	add.d	$a7, $a6, $a5
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_130
# %bb.133:                              #   in Loop: Header=BB11_131 Depth=1
	ld.w	$a7, $a7, 0
	bnez	$a7, .LBB11_130
# %bb.134:                              #   in Loop: Header=BB11_131 Depth=1
	ldptr.w	$a7, $a3, 5672
	ld.w	$t0, $a6, 4
	blt	$a7, $t0, .LBB11_130
# %bb.135:                              #   in Loop: Header=BB11_131 Depth=1
	slli.d	$a7, $fp, 3
	addi.w	$fp, $fp, 1
	stx.d	$a6, $a0, $a7
	b	.LBB11_130
.LBB11_136:                             # %.preheader.i.preheader
	ori	$a4, $s5, 1452
	b	.LBB11_139
	.p2align	4, , 16
.LBB11_137:                             # %.loopexit.i
                                        #   in Loop: Header=BB11_139 Depth=1
	blt	$a3, $s2, .LBB11_139
.LBB11_138:                             # %.loopexit.i
                                        #   in Loop: Header=BB11_139 Depth=1
	bge	$a2, $s2, .LBB11_94
.LBB11_139:                             # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_142 Depth 2
                                        #     Child Loop BB11_150 Depth 2
	bge	$a2, $s2, .LBB11_146
# %bb.140:                              # %.lr.ph106.preheader.i
                                        #   in Loop: Header=BB11_139 Depth=1
	alsl.d	$a5, $a2, $s0, 3
	b	.LBB11_142
	.p2align	4, , 16
.LBB11_141:                             # %is_short_ref.exit543.thread
                                        #   in Loop: Header=BB11_142 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, 8
	beq	$s2, $a2, .LBB11_147
.LBB11_142:                             # %.lr.ph106.i
                                        #   Parent Loop BB11_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 2
	beqz	$a7, .LBB11_141
# %bb.143:                              #   in Loop: Header=BB11_142 Depth=2
	ld.d	$a6, $a6, 64
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_141
# %bb.144:                              # %is_short_ref.exit543
                                        #   in Loop: Header=BB11_142 Depth=2
	ld.w	$a7, $a7, 0
	bnez	$a7, .LBB11_141
# %bb.145:                              #   in Loop: Header=BB11_139 Depth=1
	slli.d	$a5, $a1, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a1, $a1, 1
	st.w	$a1, $s3, %pc_lo12(listXsize)
	addi.w	$a2, $a2, 1
	bge	$a3, $s2, .LBB11_137
	b	.LBB11_148
	.p2align	4, , 16
.LBB11_146:                             # %.loopexit82.i
                                        #   in Loop: Header=BB11_139 Depth=1
	blt	$a3, $s2, .LBB11_148
	b	.LBB11_137
	.p2align	4, , 16
.LBB11_147:                             #   in Loop: Header=BB11_139 Depth=1
	move	$a2, $s2
	bge	$a3, $s2, .LBB11_137
.LBB11_148:                             # %.lr.ph109.preheader.i
                                        #   in Loop: Header=BB11_139 Depth=1
	alsl.d	$a5, $a3, $s0, 3
	b	.LBB11_150
	.p2align	4, , 16
.LBB11_149:                             # %is_short_ref.exit.thread
                                        #   in Loop: Header=BB11_150 Depth=2
	addi.w	$a3, $a3, 1
	addi.d	$a5, $a5, 8
	beq	$s2, $a3, .LBB11_154
.LBB11_150:                             # %.lr.ph109.i
                                        #   Parent Loop BB11_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 1
	beqz	$a7, .LBB11_149
# %bb.151:                              #   in Loop: Header=BB11_150 Depth=2
	ld.d	$a6, $a6, 56
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_149
# %bb.152:                              # %is_short_ref.exit
                                        #   in Loop: Header=BB11_150 Depth=2
	ld.w	$a7, $a7, 0
	bnez	$a7, .LBB11_149
# %bb.153:                              #   in Loop: Header=BB11_139 Depth=1
	slli.d	$a5, $a1, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a1, $a1, 1
	st.w	$a1, $s3, %pc_lo12(listXsize)
	addi.w	$a3, $a3, 1
	bge	$a3, $s2, .LBB11_138
	b	.LBB11_139
	.p2align	4, , 16
.LBB11_154:                             #   in Loop: Header=BB11_139 Depth=1
	move	$a3, $s2
	bge	$a3, $s2, .LBB11_138
	b	.LBB11_139
.LBB11_155:                             # %.preheader.i285.preheader
	ld.w	$a3, $s3, %pc_lo12(listXsize)
	ori	$a4, $s5, 1452
	b	.LBB11_158
	.p2align	4, , 16
.LBB11_156:                             # %.loopexit.i290
                                        #   in Loop: Header=BB11_158 Depth=1
	blt	$a2, $s2, .LBB11_158
.LBB11_157:                             # %.loopexit.i290
                                        #   in Loop: Header=BB11_158 Depth=1
	bge	$a1, $s2, .LBB11_127
.LBB11_158:                             # %.preheader.i285
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_161 Depth 2
                                        #     Child Loop BB11_169 Depth 2
	bge	$a1, $s2, .LBB11_165
# %bb.159:                              # %.lr.ph106.preheader.i300
                                        #   in Loop: Header=BB11_158 Depth=1
	alsl.d	$a5, $a1, $s1, 3
	b	.LBB11_161
	.p2align	4, , 16
.LBB11_160:                             # %is_long_ref.exit552.thread
                                        #   in Loop: Header=BB11_161 Depth=2
	addi.w	$a1, $a1, 1
	addi.d	$a5, $a5, 8
	beq	$s2, $a1, .LBB11_166
.LBB11_161:                             # %.lr.ph106.i301
                                        #   Parent Loop BB11_158 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 2
	beqz	$a7, .LBB11_160
# %bb.162:                              #   in Loop: Header=BB11_161 Depth=2
	ld.d	$a6, $a6, 64
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_160
# %bb.163:                              # %is_long_ref.exit552
                                        #   in Loop: Header=BB11_161 Depth=2
	ld.w	$a7, $a7, 0
	beqz	$a7, .LBB11_160
# %bb.164:                              #   in Loop: Header=BB11_158 Depth=1
	slli.d	$a5, $a3, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a3, $a3, 1
	st.w	$a3, $s3, %pc_lo12(listXsize)
	addi.w	$a1, $a1, 1
	bge	$a2, $s2, .LBB11_156
	b	.LBB11_167
	.p2align	4, , 16
.LBB11_165:                             # %.loopexit82.i288
                                        #   in Loop: Header=BB11_158 Depth=1
	blt	$a2, $s2, .LBB11_167
	b	.LBB11_156
	.p2align	4, , 16
.LBB11_166:                             #   in Loop: Header=BB11_158 Depth=1
	move	$a1, $s2
	bge	$a2, $s2, .LBB11_156
.LBB11_167:                             # %.lr.ph109.preheader.i292
                                        #   in Loop: Header=BB11_158 Depth=1
	alsl.d	$a5, $a2, $s1, 3
	b	.LBB11_169
	.p2align	4, , 16
.LBB11_168:                             # %is_long_ref.exit.thread
                                        #   in Loop: Header=BB11_169 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, 8
	beq	$s2, $a2, .LBB11_173
.LBB11_169:                             # %.lr.ph109.i293
                                        #   Parent Loop BB11_158 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 1
	beqz	$a7, .LBB11_168
# %bb.170:                              #   in Loop: Header=BB11_169 Depth=2
	ld.d	$a6, $a6, 56
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_168
# %bb.171:                              # %is_long_ref.exit
                                        #   in Loop: Header=BB11_169 Depth=2
	ld.w	$a7, $a7, 0
	beqz	$a7, .LBB11_168
# %bb.172:                              #   in Loop: Header=BB11_158 Depth=1
	slli.d	$a5, $a3, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a3, $a3, 1
	st.w	$a3, $s3, %pc_lo12(listXsize)
	addi.w	$a2, $a2, 1
	bge	$a2, $s2, .LBB11_157
	b	.LBB11_158
	.p2align	4, , 16
.LBB11_173:                             #   in Loop: Header=BB11_158 Depth=1
	move	$a2, $s2
	bge	$a2, $s2, .LBB11_157
	b	.LBB11_158
.LBB11_174:
	move	$s3, $zero
.LBB11_175:                             # %._crit_edge736
	pcalau12i	$a0, %pc_hi20(compare_fs_by_poc_desc)
	addi.d	$a3, $a0, %pc_lo12(compare_fs_by_poc_desc)
	ori	$a2, $zero, 8
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s7, 32
	move	$s8, $s3
	beqz	$a0, .LBB11_181
# %bb.176:                              # %.lr.ph741
	ld.d	$a1, $s7, 8
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $a2, 0
	move	$s8, $s3
	b	.LBB11_178
	.p2align	4, , 16
.LBB11_177:                             #   in Loop: Header=BB11_178 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	beqz	$a0, .LBB11_181
.LBB11_178:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	ld.w	$a4, $a3, 0
	beqz	$a4, .LBB11_177
# %bb.179:                              #   in Loop: Header=BB11_178 Depth=1
	ldptr.w	$a4, $a2, 5752
	ld.w	$a5, $a3, 40
	bge	$a4, $a5, .LBB11_177
# %bb.180:                              #   in Loop: Header=BB11_178 Depth=1
	slli.d	$a4, $s8, 3
	addi.w	$s8, $s8, 1
	stx.d	$a3, $s0, $a4
	b	.LBB11_177
.LBB11_181:                             # %._crit_edge742
	alsl.d	$s4, $s3, $s0, 3
	sub.w	$a1, $s8, $s3
	pcalau12i	$a0, %pc_hi20(compare_fs_by_poc_asc)
	addi.d	$a3, $a0, %pc_lo12(compare_fs_by_poc_asc)
	ori	$a2, $zero, 8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB11_189
# %bb.182:                              # %.lr.ph746.preheader
	ori	$a0, $zero, 4
	bgeu	$s3, $a0, .LBB11_184
# %bb.183:
	move	$a0, $zero
	b	.LBB11_187
.LBB11_184:                             # %vector.ph1086
	bstrpick.d	$a0, $s3, 30, 2
	slli.d	$a0, $a0, 2
	slli.d	$a1, $s8, 3
	slli.d	$a2, $s3, 3
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a1, $s1
	addi.d	$a1, $a1, 16
	addi.d	$a2, $s0, 16
	move	$a3, $a0
	.p2align	4, , 16
.LBB11_185:                             # %vector.body1089
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB11_185
# %bb.186:                              # %middle.block1094
	beq	$a0, $s3, .LBB11_189
.LBB11_187:                             # %.lr.ph746.preheader1226
	slli.d	$a1, $a0, 3
	alsl.d	$a1, $s8, $a1, 3
	slli.d	$a2, $s3, 3
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s1, $a1
	alsl.d	$a2, $a0, $s0, 3
	sub.d	$a0, $s3, $a0
	.p2align	4, , 16
.LBB11_188:                             # %.lr.ph746
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	st.d	$a3, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB11_188
.LBB11_189:                             # %.preheader649
	bge	$s3, $s8, .LBB11_191
# %bb.190:                              # %.lr.ph748.preheader
	sub.d	$a0, $s3, $s8
	nor	$a0, $a0, $zero
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	addi.d	$a2, $a0, 8
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB11_191:                             # %._crit_edge749
	st.d	$zero, $s6, 0
	pcalau12i	$a0, %pc_hi20(listX)
	addi.d	$s4, $a0, %pc_lo12(listX)
	ld.d	$a0, $s4, 0
	ori	$a4, $zero, 1
	move	$a1, $zero
	move	$a3, $zero
	move	$a2, $zero
	bne	$fp, $a4, .LBB11_212
# %bb.192:                              # %.preheader88.i360
	blez	$s8, .LBB11_259
# %bb.193:                              # %.preheader86.i361.preheader
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	ori	$a4, $s5, 1452
	b	.LBB11_196
	.p2align	4, , 16
.LBB11_194:                             # %.loopexit85.i366
                                        #   in Loop: Header=BB11_196 Depth=1
	blt	$a3, $s8, .LBB11_196
.LBB11_195:                             # %.loopexit85.i366
                                        #   in Loop: Header=BB11_196 Depth=1
	bge	$a2, $s8, .LBB11_212
.LBB11_196:                             # %.preheader86.i361
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_199 Depth 2
                                        #     Child Loop BB11_207 Depth 2
	bge	$a3, $s8, .LBB11_203
# %bb.197:                              # %.lr.ph.preheader.i376
                                        #   in Loop: Header=BB11_196 Depth=1
	alsl.d	$a5, $a3, $s0, 3
	b	.LBB11_199
	.p2align	4, , 16
.LBB11_198:                             # %is_short_ref.exit568.thread
                                        #   in Loop: Header=BB11_199 Depth=2
	addi.w	$a3, $a3, 1
	addi.d	$a5, $a5, 8
	beq	$s8, $a3, .LBB11_204
.LBB11_199:                             # %.lr.ph.i377
                                        #   Parent Loop BB11_196 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 1
	beqz	$a7, .LBB11_198
# %bb.200:                              #   in Loop: Header=BB11_199 Depth=2
	ld.d	$a6, $a6, 56
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_198
# %bb.201:                              # %is_short_ref.exit568
                                        #   in Loop: Header=BB11_199 Depth=2
	ld.w	$a7, $a7, 0
	bnez	$a7, .LBB11_198
# %bb.202:                              #   in Loop: Header=BB11_196 Depth=1
	slli.d	$a5, $a1, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a1, $a1, 1
	st.w	$a1, $s6, 0
	addi.w	$a3, $a3, 1
	bge	$a2, $s8, .LBB11_194
	b	.LBB11_205
	.p2align	4, , 16
.LBB11_203:                             # %.loopexit87.i364
                                        #   in Loop: Header=BB11_196 Depth=1
	blt	$a2, $s8, .LBB11_205
	b	.LBB11_194
	.p2align	4, , 16
.LBB11_204:                             #   in Loop: Header=BB11_196 Depth=1
	move	$a3, $s8
	bge	$a2, $s8, .LBB11_194
.LBB11_205:                             # %.lr.ph99.preheader.i368
                                        #   in Loop: Header=BB11_196 Depth=1
	alsl.d	$a5, $a2, $s0, 3
	b	.LBB11_207
	.p2align	4, , 16
.LBB11_206:                             # %is_short_ref.exit565.thread
                                        #   in Loop: Header=BB11_207 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, 8
	beq	$s8, $a2, .LBB11_211
.LBB11_207:                             # %.lr.ph99.i369
                                        #   Parent Loop BB11_196 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 2
	beqz	$a7, .LBB11_206
# %bb.208:                              #   in Loop: Header=BB11_207 Depth=2
	ld.d	$a6, $a6, 64
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_206
# %bb.209:                              # %is_short_ref.exit565
                                        #   in Loop: Header=BB11_207 Depth=2
	ld.w	$a7, $a7, 0
	bnez	$a7, .LBB11_206
# %bb.210:                              #   in Loop: Header=BB11_196 Depth=1
	slli.d	$a5, $a1, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a1, $a1, 1
	st.w	$a1, $s6, 0
	addi.w	$a2, $a2, 1
	bge	$a3, $s8, .LBB11_195
	b	.LBB11_196
	.p2align	4, , 16
.LBB11_211:                             #   in Loop: Header=BB11_196 Depth=1
	move	$a2, $s8
	bge	$a3, $s8, .LBB11_195
	b	.LBB11_196
.LBB11_212:                             # %.loopexit89.i333
	ori	$a4, $zero, 2
	bne	$fp, $a4, .LBB11_234
# %bb.213:                              # %.preheader83.i336
	blt	$a3, $s8, .LBB11_218
# %bb.214:                              # %.preheader83.i336
	blt	$a2, $s8, .LBB11_218
# %bb.215:                              # %.loopexit89.i385.thread
	ld.d	$a0, $s4, 8
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB11_257
	.p2align	4, , 16
.LBB11_216:                             # %.loopexit.i342
                                        #   in Loop: Header=BB11_218 Depth=1
	blt	$a3, $s8, .LBB11_218
.LBB11_217:                             # %.loopexit.i342
                                        #   in Loop: Header=BB11_218 Depth=1
	bge	$a2, $s8, .LBB11_234
.LBB11_218:                             # %.preheader.i337
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_221 Depth 2
                                        #     Child Loop BB11_229 Depth 2
	bge	$a2, $s8, .LBB11_225
# %bb.219:                              # %.lr.ph106.preheader.i352
                                        #   in Loop: Header=BB11_218 Depth=1
	alsl.d	$a4, $a2, $s0, 3
	b	.LBB11_221
	.p2align	4, , 16
.LBB11_220:                             # %is_short_ref.exit562.thread
                                        #   in Loop: Header=BB11_221 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, 8
	beq	$s8, $a2, .LBB11_226
.LBB11_221:                             # %.lr.ph106.i353
                                        #   Parent Loop BB11_218 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 2
	beqz	$a6, .LBB11_220
# %bb.222:                              #   in Loop: Header=BB11_221 Depth=2
	ld.d	$a5, $a5, 64
	ori	$a6, $s5, 1452
	add.d	$a6, $a5, $a6
	ld.w	$a7, $a6, 4
	beqz	$a7, .LBB11_220
# %bb.223:                              # %is_short_ref.exit562
                                        #   in Loop: Header=BB11_221 Depth=2
	ld.w	$a6, $a6, 0
	bnez	$a6, .LBB11_220
# %bb.224:                              #   in Loop: Header=BB11_218 Depth=1
	slli.d	$a4, $a1, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a1, $a1, 1
	st.w	$a1, $s6, 0
	addi.w	$a2, $a2, 1
	blt	$a3, $s8, .LBB11_227
	b	.LBB11_216
	.p2align	4, , 16
.LBB11_225:                             # %.loopexit82.i340
                                        #   in Loop: Header=BB11_218 Depth=1
	blt	$a3, $s8, .LBB11_227
	b	.LBB11_216
	.p2align	4, , 16
.LBB11_226:                             #   in Loop: Header=BB11_218 Depth=1
	move	$a2, $s8
	bge	$a3, $s8, .LBB11_216
.LBB11_227:                             # %.lr.ph109.preheader.i344
                                        #   in Loop: Header=BB11_218 Depth=1
	alsl.d	$a4, $a3, $s0, 3
	b	.LBB11_229
	.p2align	4, , 16
.LBB11_228:                             # %is_short_ref.exit559.thread
                                        #   in Loop: Header=BB11_229 Depth=2
	addi.w	$a3, $a3, 1
	addi.d	$a4, $a4, 8
	beq	$s8, $a3, .LBB11_233
.LBB11_229:                             # %.lr.ph109.i345
                                        #   Parent Loop BB11_218 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB11_228
# %bb.230:                              #   in Loop: Header=BB11_229 Depth=2
	ld.d	$a5, $a5, 56
	ori	$a6, $s5, 1452
	add.d	$a6, $a5, $a6
	ld.w	$a7, $a6, 4
	beqz	$a7, .LBB11_228
# %bb.231:                              # %is_short_ref.exit559
                                        #   in Loop: Header=BB11_229 Depth=2
	ld.w	$a6, $a6, 0
	bnez	$a6, .LBB11_228
# %bb.232:                              #   in Loop: Header=BB11_218 Depth=1
	slli.d	$a4, $a1, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a1, $a1, 1
	st.w	$a1, $s6, 0
	addi.w	$a3, $a3, 1
	bge	$a3, $s8, .LBB11_217
	b	.LBB11_218
	.p2align	4, , 16
.LBB11_233:                             #   in Loop: Header=BB11_218 Depth=1
	move	$a3, $s8
	bge	$a3, $s8, .LBB11_217
	b	.LBB11_218
.LBB11_234:                             # %gen_pic_list_from_frame_list.exit384
	ld.d	$a0, $s4, 8
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB11_255
# %bb.235:                              # %.preheader88.i412
	blez	$s8, .LBB11_259
# %bb.236:                              # %.preheader86.i413.preheader
	ld.w	$a3, $s6, 4
	move	$a1, $zero
	move	$a2, $zero
	ori	$a4, $s5, 1452
	b	.LBB11_239
	.p2align	4, , 16
.LBB11_237:                             # %.loopexit85.i418
                                        #   in Loop: Header=BB11_239 Depth=1
	blt	$a2, $s8, .LBB11_239
.LBB11_238:                             # %.loopexit85.i418
                                        #   in Loop: Header=BB11_239 Depth=1
	bge	$a1, $s8, .LBB11_256
.LBB11_239:                             # %.preheader86.i413
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_242 Depth 2
                                        #     Child Loop BB11_250 Depth 2
	bge	$a2, $s8, .LBB11_246
# %bb.240:                              # %.lr.ph.preheader.i428
                                        #   in Loop: Header=BB11_239 Depth=1
	alsl.d	$a5, $a2, $s1, 3
	b	.LBB11_242
	.p2align	4, , 16
.LBB11_241:                             # %is_short_ref.exit580.thread
                                        #   in Loop: Header=BB11_242 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, 8
	beq	$s8, $a2, .LBB11_247
.LBB11_242:                             # %.lr.ph.i429
                                        #   Parent Loop BB11_239 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 1
	beqz	$a7, .LBB11_241
# %bb.243:                              #   in Loop: Header=BB11_242 Depth=2
	ld.d	$a6, $a6, 56
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_241
# %bb.244:                              # %is_short_ref.exit580
                                        #   in Loop: Header=BB11_242 Depth=2
	ld.w	$a7, $a7, 0
	bnez	$a7, .LBB11_241
# %bb.245:                              #   in Loop: Header=BB11_239 Depth=1
	slli.d	$a5, $a3, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a3, $a3, 1
	st.w	$a3, $s6, 4
	addi.w	$a2, $a2, 1
	bge	$a1, $s8, .LBB11_237
	b	.LBB11_248
	.p2align	4, , 16
.LBB11_246:                             # %.loopexit87.i416
                                        #   in Loop: Header=BB11_239 Depth=1
	blt	$a1, $s8, .LBB11_248
	b	.LBB11_237
	.p2align	4, , 16
.LBB11_247:                             #   in Loop: Header=BB11_239 Depth=1
	move	$a2, $s8
	bge	$a1, $s8, .LBB11_237
.LBB11_248:                             # %.lr.ph99.preheader.i420
                                        #   in Loop: Header=BB11_239 Depth=1
	alsl.d	$a5, $a1, $s1, 3
	b	.LBB11_250
	.p2align	4, , 16
.LBB11_249:                             # %is_short_ref.exit577.thread
                                        #   in Loop: Header=BB11_250 Depth=2
	addi.w	$a1, $a1, 1
	addi.d	$a5, $a5, 8
	beq	$s8, $a1, .LBB11_254
.LBB11_250:                             # %.lr.ph99.i421
                                        #   Parent Loop BB11_239 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 2
	beqz	$a7, .LBB11_249
# %bb.251:                              #   in Loop: Header=BB11_250 Depth=2
	ld.d	$a6, $a6, 64
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_249
# %bb.252:                              # %is_short_ref.exit577
                                        #   in Loop: Header=BB11_250 Depth=2
	ld.w	$a7, $a7, 0
	bnez	$a7, .LBB11_249
# %bb.253:                              #   in Loop: Header=BB11_239 Depth=1
	slli.d	$a5, $a3, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a3, $a3, 1
	st.w	$a3, $s6, 4
	addi.w	$a1, $a1, 1
	bge	$a2, $s8, .LBB11_238
	b	.LBB11_239
	.p2align	4, , 16
.LBB11_254:                             #   in Loop: Header=BB11_239 Depth=1
	move	$a1, $s8
	bge	$a2, $s8, .LBB11_238
	b	.LBB11_239
.LBB11_255:
	move	$a2, $zero
	move	$a1, $zero
.LBB11_256:                             # %.loopexit89.i385
	ori	$a3, $zero, 2
	bne	$fp, $a3, .LBB11_259
.LBB11_257:                             # %.preheader83.i388
	blt	$a2, $s8, .LBB11_293
# %bb.258:                              # %.preheader83.i388
	blt	$a1, $s8, .LBB11_293
.LBB11_259:                             # %gen_pic_list_from_frame_list.exit436
	ld.wu	$a0, $s7, 36
	addi.w	$s3, $a0, 0
	beqz	$s3, .LBB11_267
# %bb.260:                              # %.lr.ph755
	ld.d	$a1, $s7, 16
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$s3, $a3, .LBB11_265
# %bb.261:                              # %.lr.ph755
	sub.d	$a3, $s2, $a1
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB11_265
# %bb.262:                              # %vector.ph1101
	bstrpick.d	$a2, $a0, 31, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s2, 16
	addi.d	$a4, $a1, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB11_263:                             # %vector.body1104
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB11_263
# %bb.264:                              # %middle.block1109
	beq	$a2, $a0, .LBB11_267
.LBB11_265:                             # %scalar.ph1099.preheader
	alsl.d	$a1, $a2, $a1, 3
	alsl.d	$a3, $a2, $s2, 3
	sub.d	$a0, $a0, $a2
	.p2align	4, , 16
.LBB11_266:                             # %scalar.ph1099
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB11_266
.LBB11_267:                             # %._crit_edge756
	pcalau12i	$a0, %pc_hi20(compare_fs_by_lt_pic_idx_asc)
	addi.d	$a3, $a0, %pc_lo12(compare_fs_by_lt_pic_idx_asc)
	ori	$a2, $zero, 8
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB11_288
# %bb.268:                              # %.preheader88.i464
	beqz	$s3, .LBB11_386
# %bb.269:                              # %.preheader86.i465.preheader
	ld.w	$a3, $s6, 0
	move	$a1, $zero
	move	$a2, $zero
	ori	$a4, $s5, 1452
	b	.LBB11_272
	.p2align	4, , 16
.LBB11_270:                             # %.loopexit85.i470
                                        #   in Loop: Header=BB11_272 Depth=1
	blt	$a2, $s3, .LBB11_272
.LBB11_271:                             # %.loopexit85.i470
                                        #   in Loop: Header=BB11_272 Depth=1
	bge	$a1, $s3, .LBB11_289
.LBB11_272:                             # %.preheader86.i465
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_275 Depth 2
                                        #     Child Loop BB11_283 Depth 2
	bge	$a2, $s3, .LBB11_279
# %bb.273:                              # %.lr.ph.preheader.i480
                                        #   in Loop: Header=BB11_272 Depth=1
	alsl.d	$a5, $a2, $s2, 3
	b	.LBB11_275
	.p2align	4, , 16
.LBB11_274:                             # %is_long_ref.exit588.thread
                                        #   in Loop: Header=BB11_275 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, 8
	beq	$s3, $a2, .LBB11_280
.LBB11_275:                             # %.lr.ph.i481
                                        #   Parent Loop BB11_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 1
	beqz	$a7, .LBB11_274
# %bb.276:                              #   in Loop: Header=BB11_275 Depth=2
	ld.d	$a6, $a6, 56
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_274
# %bb.277:                              # %is_long_ref.exit588
                                        #   in Loop: Header=BB11_275 Depth=2
	ld.w	$a7, $a7, 0
	beqz	$a7, .LBB11_274
# %bb.278:                              #   in Loop: Header=BB11_272 Depth=1
	slli.d	$a5, $a3, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a3, $a3, 1
	st.w	$a3, $s6, 0
	addi.w	$a2, $a2, 1
	bge	$a1, $s3, .LBB11_270
	b	.LBB11_281
	.p2align	4, , 16
.LBB11_279:                             # %.loopexit87.i468
                                        #   in Loop: Header=BB11_272 Depth=1
	blt	$a1, $s3, .LBB11_281
	b	.LBB11_270
	.p2align	4, , 16
.LBB11_280:                             #   in Loop: Header=BB11_272 Depth=1
	move	$a2, $s3
	bge	$a1, $s3, .LBB11_270
.LBB11_281:                             # %.lr.ph99.preheader.i472
                                        #   in Loop: Header=BB11_272 Depth=1
	alsl.d	$a5, $a1, $s2, 3
	b	.LBB11_283
	.p2align	4, , 16
.LBB11_282:                             # %is_long_ref.exit586.thread
                                        #   in Loop: Header=BB11_283 Depth=2
	addi.w	$a1, $a1, 1
	addi.d	$a5, $a5, 8
	beq	$s3, $a1, .LBB11_287
.LBB11_283:                             # %.lr.ph99.i473
                                        #   Parent Loop BB11_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 2
	beqz	$a7, .LBB11_282
# %bb.284:                              #   in Loop: Header=BB11_283 Depth=2
	ld.d	$a6, $a6, 64
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_282
# %bb.285:                              # %is_long_ref.exit586
                                        #   in Loop: Header=BB11_283 Depth=2
	ld.w	$a7, $a7, 0
	beqz	$a7, .LBB11_282
# %bb.286:                              #   in Loop: Header=BB11_272 Depth=1
	slli.d	$a5, $a3, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a3, $a3, 1
	st.w	$a3, $s6, 0
	addi.w	$a1, $a1, 1
	bge	$a2, $s3, .LBB11_271
	b	.LBB11_272
	.p2align	4, , 16
.LBB11_287:                             #   in Loop: Header=BB11_272 Depth=1
	move	$a1, $s3
	bge	$a2, $s3, .LBB11_271
	b	.LBB11_272
.LBB11_288:
	move	$a2, $zero
	move	$a1, $zero
.LBB11_289:                             # %.loopexit89.i437
	ori	$a3, $zero, 2
	bne	$fp, $a3, .LBB11_361
# %bb.290:                              # %.preheader83.i440
	blt	$a2, $s3, .LBB11_342
# %bb.291:                              # %.preheader83.i440
	blt	$a1, $s3, .LBB11_342
# %bb.292:                              # %.loopexit89.i489.thread
	ld.d	$a0, $s4, 8
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB11_384
.LBB11_293:                             # %.preheader.i389.preheader
	ld.w	$a3, $s6, 4
	ori	$a4, $s5, 1452
	b	.LBB11_296
	.p2align	4, , 16
.LBB11_294:                             # %.loopexit.i394
                                        #   in Loop: Header=BB11_296 Depth=1
	blt	$a2, $s8, .LBB11_296
.LBB11_295:                             # %.loopexit.i394
                                        #   in Loop: Header=BB11_296 Depth=1
	bge	$a1, $s8, .LBB11_259
.LBB11_296:                             # %.preheader.i389
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_299 Depth 2
                                        #     Child Loop BB11_307 Depth 2
	bge	$a1, $s8, .LBB11_303
# %bb.297:                              # %.lr.ph106.preheader.i404
                                        #   in Loop: Header=BB11_296 Depth=1
	alsl.d	$a5, $a1, $s1, 3
	b	.LBB11_299
	.p2align	4, , 16
.LBB11_298:                             # %is_short_ref.exit574.thread
                                        #   in Loop: Header=BB11_299 Depth=2
	addi.w	$a1, $a1, 1
	addi.d	$a5, $a5, 8
	beq	$s8, $a1, .LBB11_304
.LBB11_299:                             # %.lr.ph106.i405
                                        #   Parent Loop BB11_296 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 2
	beqz	$a7, .LBB11_298
# %bb.300:                              #   in Loop: Header=BB11_299 Depth=2
	ld.d	$a6, $a6, 64
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_298
# %bb.301:                              # %is_short_ref.exit574
                                        #   in Loop: Header=BB11_299 Depth=2
	ld.w	$a7, $a7, 0
	bnez	$a7, .LBB11_298
# %bb.302:                              #   in Loop: Header=BB11_296 Depth=1
	slli.d	$a5, $a3, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a3, $a3, 1
	st.w	$a3, $s6, 4
	addi.w	$a1, $a1, 1
	bge	$a2, $s8, .LBB11_294
	b	.LBB11_305
	.p2align	4, , 16
.LBB11_303:                             # %.loopexit82.i392
                                        #   in Loop: Header=BB11_296 Depth=1
	blt	$a2, $s8, .LBB11_305
	b	.LBB11_294
	.p2align	4, , 16
.LBB11_304:                             #   in Loop: Header=BB11_296 Depth=1
	move	$a1, $s8
	bge	$a2, $s8, .LBB11_294
.LBB11_305:                             # %.lr.ph109.preheader.i396
                                        #   in Loop: Header=BB11_296 Depth=1
	alsl.d	$a5, $a2, $s1, 3
	b	.LBB11_307
	.p2align	4, , 16
.LBB11_306:                             # %is_short_ref.exit571.thread
                                        #   in Loop: Header=BB11_307 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, 8
	beq	$s8, $a2, .LBB11_311
.LBB11_307:                             # %.lr.ph109.i397
                                        #   Parent Loop BB11_296 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 1
	beqz	$a7, .LBB11_306
# %bb.308:                              #   in Loop: Header=BB11_307 Depth=2
	ld.d	$a6, $a6, 56
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_306
# %bb.309:                              # %is_short_ref.exit571
                                        #   in Loop: Header=BB11_307 Depth=2
	ld.w	$a7, $a7, 0
	bnez	$a7, .LBB11_306
# %bb.310:                              #   in Loop: Header=BB11_296 Depth=1
	slli.d	$a5, $a3, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a3, $a3, 1
	st.w	$a3, $s6, 4
	addi.w	$a2, $a2, 1
	bge	$a2, $s8, .LBB11_295
	b	.LBB11_296
	.p2align	4, , 16
.LBB11_311:                             #   in Loop: Header=BB11_296 Depth=1
	move	$a2, $s8
	bge	$a2, $s8, .LBB11_295
	b	.LBB11_296
.LBB11_312:
	move	$fp, $zero
.LBB11_313:                             # %._crit_edge765
	pcalau12i	$a1, %pc_hi20(compare_pic_by_poc_desc)
	addi.d	$a3, $a1, %pc_lo12(compare_pic_by_poc_desc)
	ori	$a2, $zero, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(dpb)
	addi.d	$s3, $a0, %pc_lo12(dpb)
	ld.wu	$a1, $s3, 32
	ld.d	$a0, $s1, 0
	move	$s2, $fp
	beqz	$a1, .LBB11_321
# %bb.314:                              # %.lr.ph770
	ld.d	$a2, $s3, 8
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	ld.d	$a3, $a3, 0
	ori	$a4, $zero, 3
	ori	$a5, $s5, 1452
	move	$s2, $fp
	b	.LBB11_316
	.p2align	4, , 16
.LBB11_315:                             #   in Loop: Header=BB11_316 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB11_321
.LBB11_316:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a2, 0
	ld.w	$a7, $a6, 0
	bne	$a7, $a4, .LBB11_315
# %bb.317:                              #   in Loop: Header=BB11_316 Depth=1
	ld.d	$a6, $a6, 48
	add.d	$a7, $a6, $a5
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_315
# %bb.318:                              #   in Loop: Header=BB11_316 Depth=1
	ld.w	$a7, $a7, 0
	bnez	$a7, .LBB11_315
# %bb.319:                              #   in Loop: Header=BB11_316 Depth=1
	ldptr.w	$a7, $a3, 5672
	ld.w	$t0, $a6, 4
	bge	$a7, $t0, .LBB11_315
# %bb.320:                              #   in Loop: Header=BB11_316 Depth=1
	slli.d	$a7, $s2, 3
	addi.w	$s2, $s2, 1
	stx.d	$a6, $a0, $a7
	b	.LBB11_315
.LBB11_321:                             # %._crit_edge771
	alsl.d	$a0, $fp, $a0, 3
	sub.w	$s0, $s2, $fp
	pcalau12i	$a1, %pc_hi20(compare_pic_by_poc_asc)
	addi.d	$a3, $a1, %pc_lo12(compare_pic_by_poc_asc)
	ori	$a2, $zero, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	slli.d	$a1, $fp, 3
	blez	$fp, .LBB11_327
# %bb.322:                              # %.lr.ph775
	ld.d	$a2, $s1, 8
	ori	$a3, $zero, 12
	bltu	$fp, $a3, .LBB11_324
# %bb.323:                              # %vector.memcheck1112
	alsl.d	$a3, $s2, $a2, 3
	alsl.d	$a4, $fp, $a0, 3
	sub.d	$a3, $a3, $a4
	ori	$a4, $zero, 32
	bgeu	$a3, $a4, .LBB11_436
.LBB11_324:
	move	$a3, $zero
.LBB11_325:                             # %scalar.ph1115.preheader
	slli.d	$a4, $a3, 3
	alsl.d	$a4, $s2, $a4, 3
	sub.d	$a4, $a4, $a1
	add.d	$a2, $a2, $a4
	alsl.d	$a4, $a3, $a0, 3
	sub.d	$a3, $fp, $a3
	.p2align	4, , 16
.LBB11_326:                             # %scalar.ph1115
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.d	$a5, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB11_326
.LBB11_327:                             # %.preheader647
	bge	$fp, $s2, .LBB11_335
# %bb.328:                              # %.lr.ph777
	ld.d	$a2, $s1, 8
	ori	$a3, $zero, 6
	bltu	$s0, $a3, .LBB11_333
# %bb.329:                              # %vector.memcheck1128
	alsl.d	$a3, $fp, $a0, 3
	sub.d	$a3, $a2, $a3
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB11_333
# %bb.330:                              # %vector.ph1132
	move	$a3, $s0
	bstrins.d	$a3, $zero, 1, 0
	add.d	$fp, $a3, $fp
	add.d	$a4, $a1, $a0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a2, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB11_331:                             # %vector.body1135
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB11_331
# %bb.332:                              # %middle.block1140
	beq	$a3, $s0, .LBB11_335
.LBB11_333:                             # %scalar.ph1130.preheader
	slli.d	$a3, $fp, 3
	sub.d	$a1, $a3, $a1
	add.d	$a1, $a2, $a1
	alsl.d	$a2, $fp, $a0, 3
	sub.d	$a3, $s2, $fp
	.p2align	4, , 16
.LBB11_334:                             # %scalar.ph1130
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	st.d	$a4, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB11_334
.LBB11_335:                             # %._crit_edge778
	pcalau12i	$a1, %pc_hi20(listXsize)
	addi.d	$s4, $a1, %pc_lo12(listXsize)
	ld.wu	$a1, $s3, 36
	st.w	$s2, $s4, 4
	st.w	$s2, $s4, 0
	move	$s0, $s2
	beqz	$a1, .LBB11_341
# %bb.336:                              # %.lr.ph782
	ld.d	$a2, $s3, 16
	ld.d	$a3, $s1, 8
	ori	$a4, $zero, 3
	ori	$a5, $s5, 1452
	move	$s0, $s2
	b	.LBB11_338
	.p2align	4, , 16
.LBB11_337:                             #   in Loop: Header=BB11_338 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB11_341
.LBB11_338:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a2, 0
	ld.w	$a7, $a6, 0
	bne	$a7, $a4, .LBB11_337
# %bb.339:                              #   in Loop: Header=BB11_338 Depth=1
	ld.d	$a7, $a6, 48
	ldx.w	$t0, $a7, $a5
	beqz	$t0, .LBB11_337
# %bb.340:                              #   in Loop: Header=BB11_338 Depth=1
	slli.d	$t0, $s0, 3
	stx.d	$a7, $a0, $t0
	ld.d	$a6, $a6, 48
	addi.w	$s0, $s0, 1
	stx.d	$a6, $a3, $t0
	b	.LBB11_337
.LBB11_341:                             # %._crit_edge783
	alsl.d	$a0, $s2, $a0, 3
	sub.w	$a1, $s0, $s2
	pcalau12i	$a2, %pc_hi20(compare_pic_by_lt_pic_num_asc)
	addi.d	$fp, $a2, %pc_lo12(compare_pic_by_lt_pic_num_asc)
	ori	$a2, $zero, 8
	move	$a3, $fp
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	ld.w	$a1, $s4, 0
	alsl.d	$a0, $a1, $a0, 3
	sub.w	$a1, $s0, $a1
	ori	$a2, $zero, 8
	move	$a3, $fp
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	st.w	$s0, $s4, 0
	b	.LBB11_387
.LBB11_342:                             # %.preheader.i441.preheader
	ld.w	$a3, $s6, 0
	ori	$a4, $s5, 1452
	b	.LBB11_345
	.p2align	4, , 16
.LBB11_343:                             # %.loopexit.i446
                                        #   in Loop: Header=BB11_345 Depth=1
	blt	$a2, $s3, .LBB11_345
.LBB11_344:                             # %.loopexit.i446
                                        #   in Loop: Header=BB11_345 Depth=1
	bge	$a1, $s3, .LBB11_361
.LBB11_345:                             # %.preheader.i441
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_348 Depth 2
                                        #     Child Loop BB11_356 Depth 2
	bge	$a1, $s3, .LBB11_352
# %bb.346:                              # %.lr.ph106.preheader.i456
                                        #   in Loop: Header=BB11_345 Depth=1
	alsl.d	$a5, $a1, $s2, 3
	b	.LBB11_348
	.p2align	4, , 16
.LBB11_347:                             # %is_long_ref.exit584.thread
                                        #   in Loop: Header=BB11_348 Depth=2
	addi.w	$a1, $a1, 1
	addi.d	$a5, $a5, 8
	beq	$s3, $a1, .LBB11_353
.LBB11_348:                             # %.lr.ph106.i457
                                        #   Parent Loop BB11_345 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 2
	beqz	$a7, .LBB11_347
# %bb.349:                              #   in Loop: Header=BB11_348 Depth=2
	ld.d	$a6, $a6, 64
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_347
# %bb.350:                              # %is_long_ref.exit584
                                        #   in Loop: Header=BB11_348 Depth=2
	ld.w	$a7, $a7, 0
	beqz	$a7, .LBB11_347
# %bb.351:                              #   in Loop: Header=BB11_345 Depth=1
	slli.d	$a5, $a3, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a3, $a3, 1
	st.w	$a3, $s6, 0
	addi.w	$a1, $a1, 1
	bge	$a2, $s3, .LBB11_343
	b	.LBB11_354
	.p2align	4, , 16
.LBB11_352:                             # %.loopexit82.i444
                                        #   in Loop: Header=BB11_345 Depth=1
	blt	$a2, $s3, .LBB11_354
	b	.LBB11_343
	.p2align	4, , 16
.LBB11_353:                             #   in Loop: Header=BB11_345 Depth=1
	move	$a1, $s3
	bge	$a2, $s3, .LBB11_343
.LBB11_354:                             # %.lr.ph109.preheader.i448
                                        #   in Loop: Header=BB11_345 Depth=1
	alsl.d	$a5, $a2, $s2, 3
	b	.LBB11_356
	.p2align	4, , 16
.LBB11_355:                             # %is_long_ref.exit582.thread
                                        #   in Loop: Header=BB11_356 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, 8
	beq	$s3, $a2, .LBB11_360
.LBB11_356:                             # %.lr.ph109.i449
                                        #   Parent Loop BB11_345 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 1
	beqz	$a7, .LBB11_355
# %bb.357:                              #   in Loop: Header=BB11_356 Depth=2
	ld.d	$a6, $a6, 56
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_355
# %bb.358:                              # %is_long_ref.exit582
                                        #   in Loop: Header=BB11_356 Depth=2
	ld.w	$a7, $a7, 0
	beqz	$a7, .LBB11_355
# %bb.359:                              #   in Loop: Header=BB11_345 Depth=1
	slli.d	$a5, $a3, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a3, $a3, 1
	st.w	$a3, $s6, 0
	addi.w	$a2, $a2, 1
	bge	$a2, $s3, .LBB11_344
	b	.LBB11_345
	.p2align	4, , 16
.LBB11_360:                             #   in Loop: Header=BB11_345 Depth=1
	move	$a2, $s3
	bge	$a2, $s3, .LBB11_344
	b	.LBB11_345
.LBB11_361:                             # %gen_pic_list_from_frame_list.exit488
	ld.d	$a0, $s4, 8
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB11_382
# %bb.362:                              # %.preheader88.i516
	beqz	$s3, .LBB11_386
# %bb.363:                              # %.preheader86.i517.preheader
	ld.w	$a3, $s6, 4
	move	$a1, $zero
	move	$a2, $zero
	ori	$a4, $s5, 1452
	b	.LBB11_366
	.p2align	4, , 16
.LBB11_364:                             # %.loopexit85.i522
                                        #   in Loop: Header=BB11_366 Depth=1
	blt	$a2, $s3, .LBB11_366
.LBB11_365:                             # %.loopexit85.i522
                                        #   in Loop: Header=BB11_366 Depth=1
	bge	$a1, $s3, .LBB11_383
.LBB11_366:                             # %.preheader86.i517
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_369 Depth 2
                                        #     Child Loop BB11_377 Depth 2
	bge	$a2, $s3, .LBB11_373
# %bb.367:                              # %.lr.ph.preheader.i532
                                        #   in Loop: Header=BB11_366 Depth=1
	alsl.d	$a5, $a2, $s2, 3
	b	.LBB11_369
	.p2align	4, , 16
.LBB11_368:                             # %is_long_ref.exit596.thread
                                        #   in Loop: Header=BB11_369 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, 8
	beq	$s3, $a2, .LBB11_374
.LBB11_369:                             # %.lr.ph.i533
                                        #   Parent Loop BB11_366 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 1
	beqz	$a7, .LBB11_368
# %bb.370:                              #   in Loop: Header=BB11_369 Depth=2
	ld.d	$a6, $a6, 56
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_368
# %bb.371:                              # %is_long_ref.exit596
                                        #   in Loop: Header=BB11_369 Depth=2
	ld.w	$a7, $a7, 0
	beqz	$a7, .LBB11_368
# %bb.372:                              #   in Loop: Header=BB11_366 Depth=1
	slli.d	$a5, $a3, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a3, $a3, 1
	st.w	$a3, $s6, 4
	addi.w	$a2, $a2, 1
	bge	$a1, $s3, .LBB11_364
	b	.LBB11_375
	.p2align	4, , 16
.LBB11_373:                             # %.loopexit87.i520
                                        #   in Loop: Header=BB11_366 Depth=1
	blt	$a1, $s3, .LBB11_375
	b	.LBB11_364
	.p2align	4, , 16
.LBB11_374:                             #   in Loop: Header=BB11_366 Depth=1
	move	$a2, $s3
	bge	$a1, $s3, .LBB11_364
.LBB11_375:                             # %.lr.ph99.preheader.i524
                                        #   in Loop: Header=BB11_366 Depth=1
	alsl.d	$a5, $a1, $s2, 3
	b	.LBB11_377
	.p2align	4, , 16
.LBB11_376:                             # %is_long_ref.exit594.thread
                                        #   in Loop: Header=BB11_377 Depth=2
	addi.w	$a1, $a1, 1
	addi.d	$a5, $a5, 8
	beq	$s3, $a1, .LBB11_381
.LBB11_377:                             # %.lr.ph99.i525
                                        #   Parent Loop BB11_366 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 2
	beqz	$a7, .LBB11_376
# %bb.378:                              #   in Loop: Header=BB11_377 Depth=2
	ld.d	$a6, $a6, 64
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_376
# %bb.379:                              # %is_long_ref.exit594
                                        #   in Loop: Header=BB11_377 Depth=2
	ld.w	$a7, $a7, 0
	beqz	$a7, .LBB11_376
# %bb.380:                              #   in Loop: Header=BB11_366 Depth=1
	slli.d	$a5, $a3, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a3, $a3, 1
	st.w	$a3, $s6, 4
	addi.w	$a1, $a1, 1
	bge	$a2, $s3, .LBB11_365
	b	.LBB11_366
	.p2align	4, , 16
.LBB11_381:                             #   in Loop: Header=BB11_366 Depth=1
	move	$a1, $s3
	bge	$a2, $s3, .LBB11_365
	b	.LBB11_366
.LBB11_382:
	move	$a2, $zero
	move	$a1, $zero
.LBB11_383:                             # %.loopexit89.i489
	ori	$a3, $zero, 2
	bne	$fp, $a3, .LBB11_386
.LBB11_384:                             # %.preheader83.i492
	blt	$a2, $s3, .LBB11_417
# %bb.385:                              # %.preheader83.i492
	blt	$a1, $s3, .LBB11_417
.LBB11_386:                             # %gen_pic_list_from_frame_list.exit540
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s6, 4
.LBB11_387:
	pcalau12i	$a0, %pc_hi20(listXsize)
	addi.d	$a0, $a0, %pc_lo12(listXsize)
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB11_398
# %bb.388:
	bne	$a1, $s0, .LBB11_398
# %bb.389:                              # %.preheader646
	pcalau12i	$a2, %pc_hi20(listX)
	addi.d	$a2, $a2, %pc_lo12(listX)
	ld.d	$a3, $a2, 0
	ld.d	$a2, $a2, 8
	ori	$a5, $zero, 4
	bstrpick.d	$a4, $s0, 31, 0
	bgeu	$s0, $a5, .LBB11_391
# %bb.390:
	move	$a5, $zero
	move	$a6, $zero
	b	.LBB11_394
.LBB11_391:                             # %vector.ph1145
	bstrpick.d	$a5, $a4, 31, 2
	slli.d	$a5, $a5, 2
	addi.d	$a6, $a2, 16
	addi.d	$a7, $a3, 16
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, -1
	move	$t0, $a5
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB11_392:                             # %vector.body1148
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a7, -16
	vld	$vr4, $a6, -16
	vld	$vr5, $a7, 0
	vld	$vr6, $a6, 0
	vseq.d	$vr3, $vr3, $vr4
	vxor.v	$vr3, $vr3, $vr1
	vseq.d	$vr4, $vr5, $vr6
	vxor.v	$vr4, $vr4, $vr1
	vor.v	$vr0, $vr0, $vr3
	vor.v	$vr2, $vr2, $vr4
	addi.d	$t0, $t0, -4
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB11_392
# %bb.393:                              # %middle.block1156
	vor.v	$vr0, $vr2, $vr0
	vslli.d	$vr0, $vr0, 63
	vmskltz.d	$vr0, $vr0
	vpickve2gr.hu	$a6, $vr0, 0
	sltu	$a6, $zero, $a6
	beq	$a5, $a4, .LBB11_396
.LBB11_394:                             # %scalar.ph1143.preheader
	alsl.d	$a7, $a5, $a2, 3
	alsl.d	$a3, $a5, $a3, 3
	sub.d	$a4, $a4, $a5
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB11_395:                             # %scalar.ph1143
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a3, 0
	ld.d	$t1, $a7, 0
	xor	$t0, $t0, $t1
	sltui	$t0, $t0, 1
	masknez	$t1, $a5, $t0
	maskeqz	$a6, $a6, $t0
	or	$a6, $a6, $t1
	addi.d	$a7, $a7, 8
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB11_395
.LBB11_396:                             # %.loopexit1186
	bnez	$a6, .LBB11_398
# %bb.397:
	ld.d	$a3, $a2, 8
	ld.d	$a4, $a2, 0
	st.d	$a3, $a2, 0
	st.d	$a4, $a2, 8
.LBB11_398:
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $a2, 0
	ldptr.w	$a3, $a2, 5640
	slt	$a4, $a1, $a3
	masknez	$a3, $a3, $a4
	ldptr.w	$a2, $a2, 5644
	maskeqz	$a1, $a1, $a4
	or	$a5, $a1, $a3
	st.w	$a5, $a0, 0
	slt	$a1, $s0, $a2
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s0, $a1
	or	$a1, $a1, $a2
	st.w	$a1, $a0, 4
	ori	$a2, $zero, 32
	pcalau12i	$a0, %pc_hi20(no_reference_picture)
	bltu	$a2, $a5, .LBB11_402
# %bb.399:                              # %.lr.ph789
	pcalau12i	$a3, %pc_hi20(listX)
	ld.d	$a4, $a3, %pc_lo12(listX)
	ld.d	$a3, $a0, %pc_lo12(no_reference_picture)
	addi.w	$a7, $a5, 1
	ori	$a6, $zero, 34
	sub.d	$a6, $a6, $a7
	ori	$t0, $zero, 12
	bgeu	$a6, $t0, .LBB11_407
.LBB11_400:                             # %scalar.ph1159.preheader
	alsl.d	$a4, $a5, $a4, 3
	addi.d	$a5, $a5, 1
	ori	$a6, $zero, 33
	.p2align	4, , 16
.LBB11_401:                             # %scalar.ph1159
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a3, $a4, 0
	bstrpick.d	$a7, $a5, 31, 0
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 1
	bne	$a7, $a6, .LBB11_401
.LBB11_402:                             # %.preheader
	bltu	$a2, $a1, .LBB11_406
# %bb.403:                              # %.lr.ph791
	pcalau12i	$a2, %pc_hi20(listX+8)
	ld.d	$a2, $a2, %pc_lo12(listX+8)
	ld.d	$a0, $a0, %pc_lo12(no_reference_picture)
	addi.w	$a4, $a1, 1
	ori	$a3, $zero, 34
	sub.d	$a3, $a3, $a4
	ori	$a5, $zero, 12
	bgeu	$a3, $a5, .LBB11_412
.LBB11_404:                             # %scalar.ph1172.preheader
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a1, $a1, 1
	ori	$a3, $zero, 33
	.p2align	4, , 16
.LBB11_405:                             # %scalar.ph1172
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $a2, 0
	bstrpick.d	$a4, $a1, 31, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 1
	bne	$a4, $a3, .LBB11_405
.LBB11_406:                             # %.loopexit
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
	ret
.LBB11_407:                             # %vector.scevcheck
	ori	$t0, $zero, 33
	sub.d	$a7, $t0, $a7
	addi.w	$t0, $a7, 0
	addi.d	$t1, $zero, -2
	sub.w	$t1, $t1, $a5
	bltu	$t1, $t0, .LBB11_400
# %bb.408:                              # %vector.scevcheck
	srli.d	$a7, $a7, 32
	bnez	$a7, .LBB11_400
# %bb.409:                              # %vector.ph1161
	move	$a7, $a6
	bstrins.d	$a7, $zero, 1, 0
	add.d	$t0, $a7, $a5
	vreplgr2vr.d	$vr0, $a3
	alsl.d	$a5, $a5, $a4, 3
	addi.d	$a5, $a5, 16
	move	$t1, $a7
	.p2align	4, , 16
.LBB11_410:                             # %vector.body1164
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a5, -16
	vst	$vr0, $a5, 0
	addi.d	$t1, $t1, -4
	addi.d	$a5, $a5, 32
	bnez	$t1, .LBB11_410
# %bb.411:                              # %middle.block1168
	move	$a5, $t0
	bne	$a6, $a7, .LBB11_400
	b	.LBB11_402
.LBB11_412:                             # %vector.scevcheck1171
	ori	$a5, $zero, 33
	sub.d	$a4, $a5, $a4
	addi.w	$a5, $a4, 0
	addi.d	$a6, $zero, -2
	sub.w	$a6, $a6, $a1
	bltu	$a6, $a5, .LBB11_404
# %bb.413:                              # %vector.scevcheck1171
	srli.d	$a4, $a4, 32
	bnez	$a4, .LBB11_404
# %bb.414:                              # %vector.ph1174
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	add.d	$a5, $a4, $a1
	vreplgr2vr.d	$vr0, $a0
	alsl.d	$a1, $a1, $a2, 3
	addi.d	$a1, $a1, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB11_415:                             # %vector.body1179
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a1, -16
	vst	$vr0, $a1, 0
	addi.d	$a6, $a6, -4
	addi.d	$a1, $a1, 32
	bnez	$a6, .LBB11_415
# %bb.416:                              # %middle.block1183
	move	$a1, $a5
	bne	$a3, $a4, .LBB11_404
	b	.LBB11_406
.LBB11_417:                             # %.preheader.i493.preheader
	ld.w	$a3, $s6, 4
	ori	$a4, $s5, 1452
	b	.LBB11_420
	.p2align	4, , 16
.LBB11_418:                             # %.loopexit.i498
                                        #   in Loop: Header=BB11_420 Depth=1
	blt	$a2, $s3, .LBB11_420
.LBB11_419:                             # %.loopexit.i498
                                        #   in Loop: Header=BB11_420 Depth=1
	bge	$a1, $s3, .LBB11_386
.LBB11_420:                             # %.preheader.i493
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_423 Depth 2
                                        #     Child Loop BB11_431 Depth 2
	bge	$a1, $s3, .LBB11_427
# %bb.421:                              # %.lr.ph106.preheader.i508
                                        #   in Loop: Header=BB11_420 Depth=1
	alsl.d	$a5, $a1, $s2, 3
	b	.LBB11_423
	.p2align	4, , 16
.LBB11_422:                             # %is_long_ref.exit592.thread
                                        #   in Loop: Header=BB11_423 Depth=2
	addi.w	$a1, $a1, 1
	addi.d	$a5, $a5, 8
	beq	$s3, $a1, .LBB11_428
.LBB11_423:                             # %.lr.ph106.i509
                                        #   Parent Loop BB11_420 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 2
	beqz	$a7, .LBB11_422
# %bb.424:                              #   in Loop: Header=BB11_423 Depth=2
	ld.d	$a6, $a6, 64
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_422
# %bb.425:                              # %is_long_ref.exit592
                                        #   in Loop: Header=BB11_423 Depth=2
	ld.w	$a7, $a7, 0
	beqz	$a7, .LBB11_422
# %bb.426:                              #   in Loop: Header=BB11_420 Depth=1
	slli.d	$a5, $a3, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a3, $a3, 1
	st.w	$a3, $s6, 4
	addi.w	$a1, $a1, 1
	bge	$a2, $s3, .LBB11_418
	b	.LBB11_429
	.p2align	4, , 16
.LBB11_427:                             # %.loopexit82.i496
                                        #   in Loop: Header=BB11_420 Depth=1
	blt	$a2, $s3, .LBB11_429
	b	.LBB11_418
	.p2align	4, , 16
.LBB11_428:                             #   in Loop: Header=BB11_420 Depth=1
	move	$a1, $s3
	bge	$a2, $s3, .LBB11_418
.LBB11_429:                             # %.lr.ph109.preheader.i500
                                        #   in Loop: Header=BB11_420 Depth=1
	alsl.d	$a5, $a2, $s2, 3
	b	.LBB11_431
	.p2align	4, , 16
.LBB11_430:                             # %is_long_ref.exit590.thread
                                        #   in Loop: Header=BB11_431 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, 8
	beq	$s3, $a2, .LBB11_435
.LBB11_431:                             # %.lr.ph109.i501
                                        #   Parent Loop BB11_420 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ld.bu	$a7, $a6, 0
	andi	$a7, $a7, 1
	beqz	$a7, .LBB11_430
# %bb.432:                              #   in Loop: Header=BB11_431 Depth=2
	ld.d	$a6, $a6, 56
	add.d	$a7, $a6, $a4
	ld.w	$t0, $a7, 4
	beqz	$t0, .LBB11_430
# %bb.433:                              # %is_long_ref.exit590
                                        #   in Loop: Header=BB11_431 Depth=2
	ld.w	$a7, $a7, 0
	beqz	$a7, .LBB11_430
# %bb.434:                              #   in Loop: Header=BB11_420 Depth=1
	slli.d	$a5, $a3, 3
	stx.d	$a6, $a0, $a5
	addi.w	$a3, $a3, 1
	st.w	$a3, $s6, 4
	addi.w	$a2, $a2, 1
	bge	$a2, $s3, .LBB11_419
	b	.LBB11_420
	.p2align	4, , 16
.LBB11_435:                             #   in Loop: Header=BB11_420 Depth=1
	move	$a2, $s3
	bge	$a2, $s3, .LBB11_419
	b	.LBB11_420
.LBB11_436:                             # %vector.ph1117
	slli.d	$a4, $s2, 3
	bstrpick.d	$a3, $fp, 30, 2
	slli.d	$a3, $a3, 2
	sub.d	$a4, $a4, $a1
	add.d	$a4, $a4, $a2
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB11_437:                             # %vector.body1120
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB11_437
# %bb.438:                              # %middle.block1125
	beq	$a3, $fp, .LBB11_327
	b	.LBB11_325
.Lfunc_end11:
	.size	init_lists, .Lfunc_end11-init_lists
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI11_0:
	.word	.LBB11_31-.LJTI11_0
	.word	.LBB11_41-.LJTI11_0
	.word	.LBB11_40-.LJTI11_0
	.word	.LBB11_31-.LJTI11_0
	.word	.LBB11_40-.LJTI11_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function compare_pic_by_pic_num_desc
	.type	compare_pic_by_pic_num_desc,@function
compare_pic_by_pic_num_desc:            # @compare_pic_by_pic_num_desc
# %bb.0:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	lu12i.w	$a2, 77
	ori	$a2, $a2, 1440
	ldx.w	$a0, $a0, $a2
	ldx.w	$a1, $a1, $a2
	slt	$a2, $a1, $a0
	slt	$a0, $a0, $a1
	sub.d	$a0, $a0, $a2
	ret
.Lfunc_end12:
	.size	compare_pic_by_pic_num_desc, .Lfunc_end12-compare_pic_by_pic_num_desc
                                        # -- End function
	.p2align	5                               # -- Begin function compare_pic_by_lt_pic_num_asc
	.type	compare_pic_by_lt_pic_num_asc,@function
compare_pic_by_lt_pic_num_asc:          # @compare_pic_by_lt_pic_num_asc
# %bb.0:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	lu12i.w	$a2, 77
	ori	$a2, $a2, 1444
	ldx.w	$a0, $a0, $a2
	ldx.w	$a1, $a1, $a2
	slt	$a2, $a0, $a1
	slt	$a0, $a1, $a0
	sub.d	$a0, $a0, $a2
	ret
.Lfunc_end13:
	.size	compare_pic_by_lt_pic_num_asc, .Lfunc_end13-compare_pic_by_lt_pic_num_asc
                                        # -- End function
	.p2align	5                               # -- Begin function compare_fs_by_frame_num_desc
	.type	compare_fs_by_frame_num_desc,@function
compare_fs_by_frame_num_desc:           # @compare_fs_by_frame_num_desc
# %bb.0:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.w	$a0, $a0, 28
	ld.w	$a1, $a1, 28
	slt	$a2, $a1, $a0
	slt	$a0, $a0, $a1
	sub.d	$a0, $a0, $a2
	ret
.Lfunc_end14:
	.size	compare_fs_by_frame_num_desc, .Lfunc_end14-compare_fs_by_frame_num_desc
                                        # -- End function
	.p2align	5                               # -- Begin function compare_fs_by_lt_pic_idx_asc
	.type	compare_fs_by_lt_pic_idx_asc,@function
compare_fs_by_lt_pic_idx_asc:           # @compare_fs_by_lt_pic_idx_asc
# %bb.0:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.w	$a0, $a0, 32
	ld.w	$a1, $a1, 32
	slt	$a2, $a0, $a1
	slt	$a0, $a1, $a0
	sub.d	$a0, $a0, $a2
	ret
.Lfunc_end15:
	.size	compare_fs_by_lt_pic_idx_asc, .Lfunc_end15-compare_fs_by_lt_pic_idx_asc
                                        # -- End function
	.p2align	5                               # -- Begin function compare_pic_by_poc_desc
	.type	compare_pic_by_poc_desc,@function
compare_pic_by_poc_desc:                # @compare_pic_by_poc_desc
# %bb.0:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.w	$a0, $a0, 4
	ld.w	$a1, $a1, 4
	slt	$a2, $a1, $a0
	slt	$a0, $a0, $a1
	sub.d	$a0, $a0, $a2
	ret
.Lfunc_end16:
	.size	compare_pic_by_poc_desc, .Lfunc_end16-compare_pic_by_poc_desc
                                        # -- End function
	.p2align	5                               # -- Begin function compare_pic_by_poc_asc
	.type	compare_pic_by_poc_asc,@function
compare_pic_by_poc_asc:                 # @compare_pic_by_poc_asc
# %bb.0:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.w	$a0, $a0, 4
	ld.w	$a1, $a1, 4
	slt	$a2, $a0, $a1
	slt	$a0, $a1, $a0
	sub.d	$a0, $a0, $a2
	ret
.Lfunc_end17:
	.size	compare_pic_by_poc_asc, .Lfunc_end17-compare_pic_by_poc_asc
                                        # -- End function
	.p2align	5                               # -- Begin function compare_fs_by_poc_desc
	.type	compare_fs_by_poc_desc,@function
compare_fs_by_poc_desc:                 # @compare_fs_by_poc_desc
# %bb.0:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.w	$a0, $a0, 40
	ld.w	$a1, $a1, 40
	slt	$a2, $a1, $a0
	slt	$a0, $a0, $a1
	sub.d	$a0, $a0, $a2
	ret
.Lfunc_end18:
	.size	compare_fs_by_poc_desc, .Lfunc_end18-compare_fs_by_poc_desc
                                        # -- End function
	.p2align	5                               # -- Begin function compare_fs_by_poc_asc
	.type	compare_fs_by_poc_asc,@function
compare_fs_by_poc_asc:                  # @compare_fs_by_poc_asc
# %bb.0:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.w	$a0, $a0, 40
	ld.w	$a1, $a1, 40
	slt	$a2, $a0, $a1
	slt	$a0, $a1, $a0
	sub.d	$a0, $a0, $a2
	ret
.Lfunc_end19:
	.size	compare_fs_by_poc_asc, .Lfunc_end19-compare_fs_by_poc_asc
                                        # -- End function
	.globl	init_mbaff_lists                # -- Begin function init_mbaff_lists
	.p2align	5
	.type	init_mbaff_lists,@function
init_mbaff_lists:                       # @init_mbaff_lists
# %bb.0:                                # %.preheader30
	pcalau12i	$a0, %pc_hi20(listX)
	addi.d	$a1, $a0, %pc_lo12(listX)
	ld.d	$a0, $a1, 16
	pcalau12i	$a2, %pc_hi20(no_reference_picture)
	ld.d	$a3, $a2, %pc_lo12(no_reference_picture)
	st.d	$a3, $a0, 0
	st.d	$a3, $a0, 8
	st.d	$a3, $a0, 16
	st.d	$a3, $a0, 24
	st.d	$a3, $a0, 32
	st.d	$a3, $a0, 40
	st.d	$a3, $a0, 48
	st.d	$a3, $a0, 56
	st.d	$a3, $a0, 64
	st.d	$a3, $a0, 72
	st.d	$a3, $a0, 80
	st.d	$a3, $a0, 88
	st.d	$a3, $a0, 96
	st.d	$a3, $a0, 104
	st.d	$a3, $a0, 112
	st.d	$a3, $a0, 120
	st.d	$a3, $a0, 128
	st.d	$a3, $a0, 136
	st.d	$a3, $a0, 144
	st.d	$a3, $a0, 152
	st.d	$a3, $a0, 160
	st.d	$a3, $a0, 168
	st.d	$a3, $a0, 176
	st.d	$a3, $a0, 184
	st.d	$a3, $a0, 192
	st.d	$a3, $a0, 200
	st.d	$a3, $a0, 208
	st.d	$a3, $a0, 216
	st.d	$a3, $a0, 224
	st.d	$a3, $a0, 232
	st.d	$a3, $a0, 240
	st.d	$a3, $a0, 248
	st.d	$a3, $a0, 256
	pcalau12i	$a0, %pc_hi20(listXsize)
	addi.d	$a0, $a0, %pc_lo12(listXsize)
	ld.d	$a5, $a1, 24
	st.d	$a3, $a5, 0
	ld.d	$a4, $a2, %pc_lo12(no_reference_picture)
	st.d	$a4, $a5, 8
	st.d	$a4, $a5, 16
	st.d	$a4, $a5, 24
	st.d	$a4, $a5, 32
	st.d	$a4, $a5, 40
	st.d	$a4, $a5, 48
	st.d	$a4, $a5, 56
	st.d	$a4, $a5, 64
	st.d	$a4, $a5, 72
	st.d	$a4, $a5, 80
	st.d	$a4, $a5, 88
	st.d	$a4, $a5, 96
	st.d	$a4, $a5, 104
	st.d	$a4, $a5, 112
	st.d	$a4, $a5, 120
	st.d	$a4, $a5, 128
	st.d	$a4, $a5, 136
	st.d	$a4, $a5, 144
	st.d	$a4, $a5, 152
	st.d	$a4, $a5, 160
	st.d	$a4, $a5, 168
	st.d	$a4, $a5, 176
	st.d	$a4, $a5, 184
	st.d	$a4, $a5, 192
	st.d	$a4, $a5, 200
	st.d	$a4, $a5, 208
	st.d	$a4, $a5, 216
	st.d	$a4, $a5, 224
	st.d	$a4, $a5, 232
	st.d	$a4, $a5, 240
	st.d	$a4, $a5, 248
	ld.d	$a6, $a1, 32
	st.d	$a4, $a5, 256
	st.w	$zero, $a0, 8
	st.w	$zero, $a0, 12
	st.d	$a4, $a6, 0
	st.d	$a4, $a6, 8
	st.d	$a4, $a6, 16
	st.d	$a4, $a6, 24
	st.d	$a4, $a6, 32
	st.d	$a4, $a6, 40
	st.d	$a4, $a6, 48
	st.d	$a4, $a6, 56
	st.d	$a4, $a6, 64
	st.d	$a4, $a6, 72
	st.d	$a4, $a6, 80
	st.d	$a4, $a6, 88
	st.d	$a4, $a6, 96
	st.d	$a4, $a6, 104
	ld.d	$a3, $a2, %pc_lo12(no_reference_picture)
	st.d	$a4, $a6, 112
	st.d	$a4, $a6, 120
	st.d	$a4, $a6, 128
	st.d	$a3, $a6, 136
	st.d	$a3, $a6, 144
	st.d	$a3, $a6, 152
	st.d	$a3, $a6, 160
	st.d	$a3, $a6, 168
	st.d	$a3, $a6, 176
	st.d	$a3, $a6, 184
	st.d	$a3, $a6, 192
	st.d	$a3, $a6, 200
	st.d	$a3, $a6, 208
	st.d	$a3, $a6, 216
	st.d	$a3, $a6, 224
	st.d	$a3, $a6, 232
	st.d	$a3, $a6, 240
	ld.d	$a2, $a1, 40
	st.d	$a3, $a6, 248
	st.d	$a3, $a6, 256
	st.w	$zero, $a0, 16
	st.d	$a3, $a2, 0
	st.d	$a3, $a2, 8
	st.d	$a3, $a2, 16
	st.d	$a3, $a2, 24
	st.d	$a3, $a2, 32
	st.d	$a3, $a2, 40
	st.d	$a3, $a2, 48
	st.d	$a3, $a2, 56
	st.d	$a3, $a2, 64
	st.d	$a3, $a2, 72
	st.d	$a3, $a2, 80
	st.d	$a3, $a2, 88
	st.d	$a3, $a2, 96
	st.d	$a3, $a2, 104
	st.d	$a3, $a2, 112
	st.d	$a3, $a2, 120
	st.d	$a3, $a2, 128
	st.d	$a3, $a2, 136
	st.d	$a3, $a2, 144
	st.d	$a3, $a2, 152
	st.d	$a3, $a2, 160
	st.d	$a3, $a2, 168
	st.d	$a3, $a2, 176
	st.d	$a3, $a2, 184
	st.d	$a3, $a2, 192
	st.d	$a3, $a2, 200
	st.d	$a3, $a2, 208
	st.d	$a3, $a2, 216
	st.d	$a3, $a2, 224
	st.d	$a3, $a2, 232
	ld.w	$a4, $a0, 0
	st.d	$a3, $a2, 240
	st.d	$a3, $a2, 248
	st.d	$a3, $a2, 256
	lu12i.w	$a3, 77
	blez	$a4, .LBB20_3
# %bb.1:                                # %.lr.ph
	ld.d	$a6, $a1, 32
	ld.d	$a7, $a1, 16
	ld.d	$a5, $a1, 0
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, 8
	ori	$t0, $a3, 1608
	ori	$t1, $a3, 1616
	move	$t2, $a4
	.p2align	4, , 16
.LBB20_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t3, $a5, 0
	ldx.d	$t3, $t3, $t0
	st.d	$t3, $a7, -8
	ld.d	$t3, $a5, 0
	ldx.d	$t3, $t3, $t1
	st.d	$t3, $a7, 0
	ld.d	$t3, $a5, 0
	ldx.d	$t3, $t3, $t1
	st.d	$t3, $a6, -8
	ld.d	$t3, $a5, 0
	ldx.d	$t3, $t3, $t0
	st.d	$t3, $a6, 0
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 16
	addi.d	$t2, $t2, -1
	addi.d	$a7, $a7, 16
	bnez	$t2, .LBB20_2
.LBB20_3:                               # %._crit_edge
	ld.w	$a5, $a0, 4
	slli.d	$a4, $a4, 1
	st.w	$a4, $a0, 16
	st.w	$a4, $a0, 8
	blez	$a5, .LBB20_6
# %bb.4:                                # %.lr.ph37
	ld.d	$a4, $a1, 24
	ld.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, 8
	ori	$a6, $a3, 1608
	ori	$a3, $a3, 1616
	move	$a7, $a5
	.p2align	4, , 16
.LBB20_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a1, 0
	ldx.d	$t0, $t0, $a6
	st.d	$t0, $a4, -8
	ld.d	$t0, $a1, 0
	ldx.d	$t0, $t0, $a3
	st.d	$t0, $a4, 0
	ld.d	$t0, $a1, 0
	ldx.d	$t0, $t0, $a3
	st.d	$t0, $a2, -8
	ld.d	$t0, $a1, 0
	ldx.d	$t0, $t0, $a6
	st.d	$t0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 16
	addi.d	$a7, $a7, -1
	addi.d	$a4, $a4, 16
	bnez	$a7, .LBB20_5
.LBB20_6:                               # %._crit_edge38
	slli.d	$a1, $a5, 1
	st.w	$a1, $a0, 20
	st.w	$a1, $a0, 12
	ret
.Lfunc_end20:
	.size	init_mbaff_lists, .Lfunc_end20-init_mbaff_lists
                                        # -- End function
	.globl	reorder_ref_pic_list            # -- Begin function reorder_ref_pic_list
	.p2align	5
	.type	reorder_ref_pic_list,@function
reorder_ref_pic_list:                   # @reorder_ref_pic_list
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	move	$t6, $a3
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	move	$s4, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ldptr.w	$a4, $a0, 5584
	lu12i.w	$a1, 1
	ori	$a3, $a1, 1720
	ldx.w	$t7, $a0, $a3
	ori	$a1, $a1, 1580
	beqz	$a4, .LBB21_2
# %bb.1:
	ldx.w	$a0, $a0, $a1
	slli.w	$t7, $t7, 1
	slli.d	$a0, $a0, 1
	addi.w	$a0, $a0, 1
	b	.LBB21_3
.LBB21_2:
	ldx.w	$a0, $a0, $a1
.LBB21_3:
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a5, $t6, 0
	ori	$fp, $zero, 3
	addi.w	$t8, $a2, 1
	bne	$a5, $fp, .LBB21_5
.LBB21_4:                               # %._crit_edge
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.w	$t8, $a0, 0
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB21_5:                               # %.lr.ph
	addi.d	$s0, $t8, -1
	alsl.d	$a0, $t8, $s4, 3
	addi.d	$a0, $a0, -8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s2, $zero, 1
	ori	$s6, $zero, 4
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $zero
	lu12i.w	$a1, 77
	ori	$s5, $a1, 1440
	ori	$s8, $zero, 1
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	b	.LBB21_8
	.p2align	4, , 16
.LBB21_6:                               # %reorder_short_term.exit.sink.split
                                        #   in Loop: Header=BB21_8 Depth=1
	slli.d	$a1, $s7, 3
	stx.d	$a7, $s4, $a1
.LBB21_7:                               # %reorder_short_term.exit
                                        #   in Loop: Header=BB21_8 Depth=1
	slli.d	$a1, $a0, 2
	ldx.w	$a5, $t6, $a1
	addi.w	$s8, $s8, 1
	beq	$a5, $fp, .LBB21_4
.LBB21_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_16 Depth 2
                                        #     Child Loop BB21_23 Depth 2
                                        #     Child Loop BB21_30 Depth 2
                                        #     Child Loop BB21_33 Depth 2
                                        #     Child Loop BB21_37 Depth 2
                                        #     Child Loop BB21_44 Depth 2
                                        #     Child Loop BB21_51 Depth 2
                                        #     Child Loop BB21_58 Depth 2
                                        #     Child Loop BB21_61 Depth 2
                                        #     Child Loop BB21_65 Depth 2
	move	$s7, $a0
	slli.d	$s1, $a0, 2
	blt	$a5, $s6, .LBB21_10
# %bb.9:                                #   in Loop: Header=BB21_8 Depth=1
	ori	$a1, $zero, 500
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$s2, $t6
	move	$fp, $s0
	move	$s0, $t7
	move	$s6, $t8
	move	$s3, $s5
	move	$s5, $s4
	move	$s4, $s8
	move	$s8, $ra
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	move	$ra, $s8
	move	$s8, $s4
	move	$s4, $s5
	move	$s5, $s3
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	move	$t8, $s6
	ori	$s6, $zero, 4
	move	$t7, $s0
	move	$s0, $fp
	ori	$fp, $zero, 3
	move	$t6, $s2
	ori	$s2, $zero, 1
	ldx.w	$a5, $t6, $s1
.LBB21_10:                              #   in Loop: Header=BB21_8 Depth=1
	addi.d	$a1, $s8, -1
	slt	$a0, $s7, $s0
	masknez	$a3, $s0, $a0
	maskeqz	$a0, $s7, $a0
	or	$a0, $a0, $a3
	sub.d	$a3, $t8, $a0
	alsl.d	$s3, $s8, $s4, 3
	move	$a4, $a3
	bstrins.d	$a4, $zero, 0, 0
	addi.d	$a0, $s7, 1
	pcalau12i	$a6, %pc_hi20(dpb)
	addi.d	$a7, $a6, %pc_lo12(dpb)
	blt	$s2, $a5, .LBB21_13
# %bb.11:                               #   in Loop: Header=BB21_8 Depth=1
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	ldx.w	$a6, $a6, $s1
	beqz	$a5, .LBB21_40
# %bb.12:                               #   in Loop: Header=BB21_8 Depth=1
	add.d	$a5, $ra, $a6
	addi.w	$a5, $a5, 1
	slt	$a6, $a5, $t7
	masknez	$a6, $t7, $a6
	sub.w	$ra, $a5, $a6
	b	.LBB21_41
	.p2align	4, , 16
.LBB21_13:                              #   in Loop: Header=BB21_8 Depth=1
	ld.wu	$t0, $a7, 36
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a5, $a5, $s1
	lu12i.w	$a6, 77
	ori	$a6, $a6, 1444
	beqz	$t0, .LBB21_26
# %bb.14:                               # %.lr.ph.i.i58
                                        #   in Loop: Header=BB21_8 Depth=1
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t1, $t1, 0
	ldptr.w	$t2, $t1, 5584
	ld.d	$t1, $a7, 16
	bnez	$t2, .LBB21_16
	b	.LBB21_23
	.p2align	4, , 16
.LBB21_15:                              #   in Loop: Header=BB21_16 Depth=2
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 8
	beqz	$t0, .LBB21_26
.LBB21_16:                              # %.lr.ph.split.i.i59
                                        #   Parent Loop BB21_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $t1, 0
	ld.wu	$t3, $t2, 4
	andi	$a7, $t3, 1
	beqz	$a7, .LBB21_19
# %bb.17:                               #   in Loop: Header=BB21_16 Depth=2
	ld.d	$a7, $t2, 56
	add.d	$t4, $a7, $a6
	ld.w	$t5, $t4, 8
	beqz	$t5, .LBB21_19
# %bb.18:                               #   in Loop: Header=BB21_16 Depth=2
	ld.w	$t4, $t4, 0
	beq	$t4, $a5, .LBB21_27
.LBB21_19:                              #   in Loop: Header=BB21_16 Depth=2
	andi	$a7, $t3, 2
	beqz	$a7, .LBB21_15
# %bb.20:                               #   in Loop: Header=BB21_16 Depth=2
	ld.d	$a7, $t2, 64
	add.d	$t2, $a7, $a6
	ld.w	$t3, $t2, 8
	beqz	$t3, .LBB21_15
# %bb.21:                               #   in Loop: Header=BB21_16 Depth=2
	ld.w	$t2, $t2, 0
	bne	$t2, $a5, .LBB21_15
	b	.LBB21_27
	.p2align	4, , 16
.LBB21_22:                              #   in Loop: Header=BB21_23 Depth=2
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 8
	beqz	$t0, .LBB21_26
.LBB21_23:                              # %.lr.ph.split.us.i.i79
                                        #   Parent Loop BB21_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $t1, 0
	ld.w	$t2, $a7, 4
	bne	$t2, $fp, .LBB21_22
# %bb.24:                               #   in Loop: Header=BB21_23 Depth=2
	ld.d	$a7, $a7, 48
	add.d	$t2, $a7, $a6
	ld.w	$t3, $t2, 8
	beqz	$t3, .LBB21_22
# %bb.25:                               #   in Loop: Header=BB21_23 Depth=2
	ld.w	$t2, $t2, 0
	bne	$t2, $a5, .LBB21_22
	b	.LBB21_27
	.p2align	4, , 16
.LBB21_26:                              #   in Loop: Header=BB21_8 Depth=1
	move	$a7, $zero
.LBB21_27:                              # %get_long_term_pic.exit.i
                                        #   in Loop: Header=BB21_8 Depth=1
	blt	$a2, $s7, .LBB21_6
# %bb.28:                               # %.lr.ph.i69.preheader
                                        #   in Loop: Header=BB21_8 Depth=1
	move	$t0, $t8
	ori	$t1, $zero, 2
	bltu	$a3, $t1, .LBB21_32
# %bb.29:                               # %vector.ph125
                                        #   in Loop: Header=BB21_8 Depth=1
	move	$t1, $a3
	bstrins.d	$t1, $zero, 0, 0
	sub.d	$t0, $t8, $t1
	ld.d	$t2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB21_30:                              # %vector.body128
                                        #   Parent Loop BB21_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t2, -8
	vst	$vr0, $t2, 0
	addi.d	$a4, $a4, -2
	addi.d	$t2, $t2, -16
	bnez	$a4, .LBB21_30
# %bb.31:                               # %middle.block132
                                        #   in Loop: Header=BB21_8 Depth=1
	beq	$a3, $t1, .LBB21_34
.LBB21_32:                              # %.lr.ph.i69.preheader139
                                        #   in Loop: Header=BB21_8 Depth=1
	alsl.d	$a3, $t0, $s4, 3
	.p2align	4, , 16
.LBB21_33:                              # %.lr.ph.i69
                                        #   Parent Loop BB21_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, -8
	addi.d	$t1, $a3, -8
	addi.d	$t0, $t0, -1
	st.d	$a4, $a3, 0
	move	$a3, $t1
	blt	$s7, $t0, .LBB21_33
.LBB21_34:                              # %.lr.ph41.preheader.i
                                        #   in Loop: Header=BB21_8 Depth=1
	slli.d	$a3, $s7, 3
	stx.d	$a7, $s4, $a3
	move	$a3, $a0
	b	.LBB21_37
	.p2align	4, , 16
.LBB21_35:                              #   in Loop: Header=BB21_37 Depth=2
	addi.w	$a7, $a3, 0
	addi.d	$a3, $a3, 1
	slli.d	$a7, $a7, 3
	stx.d	$a4, $s4, $a7
.LBB21_36:                              #   in Loop: Header=BB21_37 Depth=2
	addi.d	$a1, $a1, 1
	addi.d	$s3, $s3, 8
	blt	$a2, $a1, .LBB21_7
.LBB21_37:                              # %.lr.ph41.i
                                        #   Parent Loop BB21_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $s3, 0
	beqz	$a4, .LBB21_36
# %bb.38:                               #   in Loop: Header=BB21_37 Depth=2
	add.d	$a7, $a4, $a6
	ld.w	$t0, $a7, 8
	beqz	$t0, .LBB21_35
# %bb.39:                               #   in Loop: Header=BB21_37 Depth=2
	ld.w	$a7, $a7, 0
	bne	$a7, $a5, .LBB21_35
	b	.LBB21_36
.LBB21_40:                              #   in Loop: Header=BB21_8 Depth=1
	nor	$a5, $a6, $zero
	add.w	$a5, $ra, $a5
	srli.d	$a6, $a5, 31
	and	$a6, $a6, $t7
	add.w	$ra, $a6, $a5
.LBB21_41:                              #   in Loop: Header=BB21_8 Depth=1
	ld.wu	$a6, $a7, 32
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	slt	$a5, $a5, $ra
	maskeqz	$a5, $t7, $a5
	sub.w	$a5, $ra, $a5
	beqz	$a6, .LBB21_54
# %bb.42:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB21_8 Depth=1
	ld.d	$t0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t0, $t0, 0
	ldptr.w	$t1, $t0, 5584
	ld.d	$t0, $a7, 8
	bnez	$t1, .LBB21_44
	b	.LBB21_51
	.p2align	4, , 16
.LBB21_43:                              #   in Loop: Header=BB21_44 Depth=2
	addi.d	$a6, $a6, -1
	addi.d	$t0, $t0, 8
	beqz	$a6, .LBB21_54
.LBB21_44:                              # %.lr.ph.split.i.i
                                        #   Parent Loop BB21_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $t0, 0
	ld.wu	$t2, $t1, 4
	andi	$a7, $t2, 1
	beqz	$a7, .LBB21_47
# %bb.45:                               #   in Loop: Header=BB21_44 Depth=2
	ld.d	$a7, $t1, 56
	add.d	$t3, $a7, $s5
	ld.w	$t4, $t3, 12
	bnez	$t4, .LBB21_47
# %bb.46:                               #   in Loop: Header=BB21_44 Depth=2
	ld.w	$t3, $t3, 0
	beq	$t3, $a5, .LBB21_55
	.p2align	4, , 16
.LBB21_47:                              #   in Loop: Header=BB21_44 Depth=2
	andi	$a7, $t2, 2
	beqz	$a7, .LBB21_43
# %bb.48:                               #   in Loop: Header=BB21_44 Depth=2
	ld.d	$a7, $t1, 64
	add.d	$t1, $a7, $s5
	ld.w	$t2, $t1, 12
	bnez	$t2, .LBB21_43
# %bb.49:                               #   in Loop: Header=BB21_44 Depth=2
	ld.w	$t1, $t1, 0
	bne	$t1, $a5, .LBB21_43
	b	.LBB21_55
	.p2align	4, , 16
.LBB21_50:                              #   in Loop: Header=BB21_51 Depth=2
	addi.d	$a6, $a6, -1
	addi.d	$t0, $t0, 8
	beqz	$a6, .LBB21_54
.LBB21_51:                              # %.lr.ph.split.us.i.i
                                        #   Parent Loop BB21_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $t0, 0
	ld.w	$t1, $a7, 4
	bne	$t1, $fp, .LBB21_50
# %bb.52:                               #   in Loop: Header=BB21_51 Depth=2
	ld.d	$a7, $a7, 48
	add.d	$t1, $a7, $s5
	ld.w	$t2, $t1, 12
	bnez	$t2, .LBB21_50
# %bb.53:                               #   in Loop: Header=BB21_51 Depth=2
	ld.w	$t1, $t1, 0
	bne	$t1, $a5, .LBB21_50
	b	.LBB21_55
	.p2align	4, , 16
.LBB21_54:                              # %._crit_edge.i.i
                                        #   in Loop: Header=BB21_8 Depth=1
	pcalau12i	$a6, %pc_hi20(no_reference_picture)
	ld.d	$a7, $a6, %pc_lo12(no_reference_picture)
.LBB21_55:                              # %get_short_term_pic.exit.i
                                        #   in Loop: Header=BB21_8 Depth=1
	blt	$a2, $s7, .LBB21_6
# %bb.56:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB21_8 Depth=1
	move	$a6, $t8
	ori	$t0, $zero, 2
	bltu	$a3, $t0, .LBB21_60
# %bb.57:                               # %vector.ph
                                        #   in Loop: Header=BB21_8 Depth=1
	move	$t0, $a3
	bstrins.d	$t0, $zero, 0, 0
	sub.d	$a6, $t8, $t0
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB21_58:                              # %vector.body
                                        #   Parent Loop BB21_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t1, -8
	vst	$vr0, $t1, 0
	addi.d	$a4, $a4, -2
	addi.d	$t1, $t1, -16
	bnez	$a4, .LBB21_58
# %bb.59:                               # %middle.block
                                        #   in Loop: Header=BB21_8 Depth=1
	beq	$a3, $t0, .LBB21_62
.LBB21_60:                              # %.lr.ph.i.preheader135
                                        #   in Loop: Header=BB21_8 Depth=1
	alsl.d	$a3, $a6, $s4, 3
	.p2align	4, , 16
.LBB21_61:                              # %.lr.ph.i
                                        #   Parent Loop BB21_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, -8
	addi.d	$t0, $a3, -8
	addi.d	$a6, $a6, -1
	st.d	$a4, $a3, 0
	move	$a3, $t0
	blt	$s7, $a6, .LBB21_61
.LBB21_62:                              # %.lr.ph42.preheader.i
                                        #   in Loop: Header=BB21_8 Depth=1
	slli.d	$a3, $s7, 3
	stx.d	$a7, $s4, $a3
	addi.w	$a3, $s7, 1
	b	.LBB21_65
	.p2align	4, , 16
.LBB21_63:                              #   in Loop: Header=BB21_65 Depth=2
	slli.d	$a6, $a3, 3
	addi.w	$a3, $a3, 1
	stx.d	$a4, $s4, $a6
.LBB21_64:                              #   in Loop: Header=BB21_65 Depth=2
	addi.d	$a1, $a1, 1
	addi.d	$s3, $s3, 8
	blt	$a2, $a1, .LBB21_7
.LBB21_65:                              # %.lr.ph42.i
                                        #   Parent Loop BB21_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $s3, 0
	beqz	$a4, .LBB21_64
# %bb.66:                               #   in Loop: Header=BB21_65 Depth=2
	add.d	$a6, $a4, $s5
	ld.w	$a7, $a6, 12
	bnez	$a7, .LBB21_63
# %bb.67:                               #   in Loop: Header=BB21_65 Depth=2
	ld.w	$a6, $a6, 0
	bne	$a6, $a5, .LBB21_63
	b	.LBB21_64
.Lfunc_end21:
	.size	reorder_ref_pic_list, .Lfunc_end21-reorder_ref_pic_list
                                        # -- End function
	.globl	update_ref_list                 # -- Begin function update_ref_list
	.p2align	5
	.type	update_ref_list,@function
update_ref_list:                        # @update_ref_list
# %bb.0:
	pcalau12i	$a0, %pc_hi20(dpb)
	addi.d	$a0, $a0, %pc_lo12(dpb)
	ld.wu	$a1, $a0, 28
	beqz	$a1, .LBB22_15
# %bb.1:                                # %.lr.ph
	move	$a2, $zero
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a0, 8
	ori	$a5, $zero, 3
	lu12i.w	$a6, 77
	ori	$a6, $a6, 1452
	b	.LBB22_4
	.p2align	4, , 16
.LBB22_2:                               #   in Loop: Header=BB22_4 Depth=1
	bstrpick.d	$t0, $a2, 31, 0
	addi.w	$a2, $a2, 1
	slli.d	$t0, $t0, 3
	stx.d	$a7, $a4, $t0
.LBB22_3:                               # %is_short_term_reference.exit
                                        #   in Loop: Header=BB22_4 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	beqz	$a1, .LBB22_16
.LBB22_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a3, 0
	ld.w	$t0, $a7, 0
	bne	$t0, $a5, .LBB22_7
# %bb.5:                                #   in Loop: Header=BB22_4 Depth=1
	ld.d	$t1, $a7, 48
	add.d	$t1, $t1, $a6
	ld.w	$t2, $t1, 4
	beqz	$t2, .LBB22_8
# %bb.6:                                #   in Loop: Header=BB22_4 Depth=1
	ld.w	$t1, $t1, 0
	bnez	$t1, .LBB22_8
	b	.LBB22_2
	.p2align	4, , 16
.LBB22_7:                               #   in Loop: Header=BB22_4 Depth=1
	andi	$t1, $t0, 1
	beqz	$t1, .LBB22_11
.LBB22_8:                               # %.thread.i
                                        #   in Loop: Header=BB22_4 Depth=1
	ld.d	$t1, $a7, 56
	beqz	$t1, .LBB22_11
# %bb.9:                                #   in Loop: Header=BB22_4 Depth=1
	add.d	$t1, $t1, $a6
	ld.w	$t2, $t1, 4
	beqz	$t2, .LBB22_11
# %bb.10:                               #   in Loop: Header=BB22_4 Depth=1
	ld.w	$t1, $t1, 0
	beqz	$t1, .LBB22_2
	.p2align	4, , 16
.LBB22_11:                              #   in Loop: Header=BB22_4 Depth=1
	andi	$t0, $t0, 2
	beqz	$t0, .LBB22_3
# %bb.12:                               #   in Loop: Header=BB22_4 Depth=1
	ld.d	$t0, $a7, 64
	beqz	$t0, .LBB22_3
# %bb.13:                               #   in Loop: Header=BB22_4 Depth=1
	add.d	$t0, $t0, $a6
	ld.w	$t1, $t0, 4
	beqz	$t1, .LBB22_3
# %bb.14:                               #   in Loop: Header=BB22_4 Depth=1
	ld.w	$t0, $t0, 0
	bnez	$t0, .LBB22_3
	b	.LBB22_2
.LBB22_15:
	move	$a2, $zero
.LBB22_16:                              # %._crit_edge
	ld.w	$a1, $a0, 24
	st.w	$a2, $a0, 32
	bgeu	$a2, $a1, .LBB22_18
# %bb.17:                               # %.lr.ph15
	ld.d	$a0, $a0, 8
	bstrpick.d	$a3, $a2, 31, 0
	alsl.d	$a0, $a3, $a0, 3
	sub.d	$a1, $a2, $a1
	nor	$a1, $a1, $zero
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB22_18:                              # %._crit_edge16
	ret
.Lfunc_end22:
	.size	update_ref_list, .Lfunc_end22-update_ref_list
                                        # -- End function
	.globl	update_ltref_list               # -- Begin function update_ltref_list
	.p2align	5
	.type	update_ltref_list,@function
update_ltref_list:                      # @update_ltref_list
# %bb.0:
	pcalau12i	$a0, %pc_hi20(dpb)
	addi.d	$a0, $a0, %pc_lo12(dpb)
	ld.wu	$a1, $a0, 28
	beqz	$a1, .LBB23_15
# %bb.1:                                # %.lr.ph
	move	$a2, $zero
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a0, 16
	ori	$a5, $zero, 3
	lu12i.w	$a6, 77
	ori	$a6, $a6, 1452
	b	.LBB23_4
	.p2align	4, , 16
.LBB23_2:                               #   in Loop: Header=BB23_4 Depth=1
	bstrpick.d	$t0, $a2, 31, 0
	addi.w	$a2, $a2, 1
	slli.d	$t0, $t0, 3
	stx.d	$a7, $a4, $t0
.LBB23_3:                               # %is_long_term_reference.exit
                                        #   in Loop: Header=BB23_4 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	beqz	$a1, .LBB23_16
.LBB23_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a3, 0
	ld.w	$t0, $a7, 0
	bne	$t0, $a5, .LBB23_7
# %bb.5:                                #   in Loop: Header=BB23_4 Depth=1
	ld.d	$t1, $a7, 48
	add.d	$t1, $t1, $a6
	ld.w	$t2, $t1, 4
	beqz	$t2, .LBB23_8
# %bb.6:                                #   in Loop: Header=BB23_4 Depth=1
	ld.w	$t1, $t1, 0
	bnez	$t1, .LBB23_2
	b	.LBB23_8
	.p2align	4, , 16
.LBB23_7:                               #   in Loop: Header=BB23_4 Depth=1
	andi	$t1, $t0, 1
	beqz	$t1, .LBB23_11
.LBB23_8:                               # %.thread.i
                                        #   in Loop: Header=BB23_4 Depth=1
	ld.d	$t1, $a7, 56
	beqz	$t1, .LBB23_11
# %bb.9:                                #   in Loop: Header=BB23_4 Depth=1
	add.d	$t1, $t1, $a6
	ld.w	$t2, $t1, 4
	beqz	$t2, .LBB23_11
# %bb.10:                               #   in Loop: Header=BB23_4 Depth=1
	ld.w	$t1, $t1, 0
	bnez	$t1, .LBB23_2
	.p2align	4, , 16
.LBB23_11:                              #   in Loop: Header=BB23_4 Depth=1
	andi	$t0, $t0, 2
	beqz	$t0, .LBB23_3
# %bb.12:                               #   in Loop: Header=BB23_4 Depth=1
	ld.d	$t0, $a7, 64
	beqz	$t0, .LBB23_3
# %bb.13:                               #   in Loop: Header=BB23_4 Depth=1
	add.d	$t0, $t0, $a6
	ld.w	$t1, $t0, 4
	beqz	$t1, .LBB23_3
# %bb.14:                               #   in Loop: Header=BB23_4 Depth=1
	ld.w	$t0, $t0, 0
	bnez	$t0, .LBB23_2
	b	.LBB23_3
.LBB23_15:
	move	$a2, $zero
.LBB23_16:                              # %._crit_edge
	ld.w	$a1, $a0, 24
	st.w	$a2, $a0, 36
	bgeu	$a2, $a1, .LBB23_18
# %bb.17:                               # %.lr.ph15
	ld.d	$a0, $a0, 16
	bstrpick.d	$a3, $a2, 31, 0
	alsl.d	$a0, $a3, $a0, 3
	sub.d	$a1, $a2, $a1
	nor	$a1, $a1, $zero
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB23_18:                              # %._crit_edge16
	ret
.Lfunc_end23:
	.size	update_ltref_list, .Lfunc_end23-update_ltref_list
                                        # -- End function
	.globl	mm_update_max_long_term_frame_idx # -- Begin function mm_update_max_long_term_frame_idx
	.p2align	5
	.type	mm_update_max_long_term_frame_idx,@function
mm_update_max_long_term_frame_idx:      # @mm_update_max_long_term_frame_idx
# %bb.0:
	addi.d	$a3, $a0, -1
	pcalau12i	$a1, %pc_hi20(dpb)
	addi.d	$a2, $a1, %pc_lo12(dpb)
	ld.wu	$a1, $a2, 36
	st.w	$a3, $a2, 44
	beqz	$a1, .LBB24_16
# %bb.1:                                # %.lr.ph
	ld.d	$a2, $a2, 16
	ori	$a3, $zero, 3
	lu12i.w	$a4, 77
	ori	$a4, $a4, 1452
	b	.LBB24_5
	.p2align	4, , 16
.LBB24_2:                               #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a6, $a5, 48
	stx.d	$zero, $a6, $a4
.LBB24_3:                               # %unmark_for_long_term_reference.exit
                                        #   in Loop: Header=BB24_5 Depth=1
	st.d	$zero, $a5, 4
.LBB24_4:                               #   in Loop: Header=BB24_5 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB24_16
.LBB24_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, 0
	ld.w	$a6, $a5, 32
	blt	$a6, $a0, .LBB24_4
# %bb.6:                                #   in Loop: Header=BB24_5 Depth=1
	ld.wu	$a6, $a5, 0
	andi	$a7, $a6, 1
	beqz	$a7, .LBB24_9
# %bb.7:                                #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a7, $a5, 56
	beqz	$a7, .LBB24_9
# %bb.8:                                #   in Loop: Header=BB24_5 Depth=1
	add.d	$a7, $a7, $a4
	st.d	$zero, $a7, 0
.LBB24_9:                               #   in Loop: Header=BB24_5 Depth=1
	andi	$a7, $a6, 2
	beqz	$a7, .LBB24_12
# %bb.10:                               #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a7, $a5, 64
	beqz	$a7, .LBB24_12
# %bb.11:                               #   in Loop: Header=BB24_5 Depth=1
	add.d	$a7, $a7, $a4
	st.d	$zero, $a7, 0
.LBB24_12:                              #   in Loop: Header=BB24_5 Depth=1
	bne	$a6, $a3, .LBB24_3
# %bb.13:                               #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a6, $a5, 56
	beqz	$a6, .LBB24_2
# %bb.14:                               #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a7, $a5, 64
	beqz	$a7, .LBB24_2
# %bb.15:                               #   in Loop: Header=BB24_5 Depth=1
	add.d	$a6, $a6, $a4
	add.d	$a7, $a7, $a4
	st.d	$zero, $a6, 0
	st.d	$zero, $a7, 0
	b	.LBB24_2
.LBB24_16:                              # %._crit_edge
	ret
.Lfunc_end24:
	.size	mm_update_max_long_term_frame_idx, .Lfunc_end24-mm_update_max_long_term_frame_idx
                                        # -- End function
	.globl	store_picture_in_dpb            # -- Begin function store_picture_in_dpb
	.p2align	5
	.type	store_picture_in_dpb,@function
store_picture_in_dpb:                   # @store_picture_in_dpb
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
	move	$fp, $a0
	lu12i.w	$s1, 77
	ori	$a0, $s1, 1432
	add.d	$s7, $fp, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s4, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s4, 0
	ld.w	$a1, $fp, 0
	stptr.w	$zero, $a0, 5860
	ld.w	$a2, $s7, 204
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	stptr.w	$a1, $a0, 5864
	pcalau12i	$a0, %pc_hi20(dpb)
	addi.d	$s5, $a0, %pc_lo12(dpb)
	beqz	$a2, .LBB25_20
# %bb.1:
	ld.w	$a0, $s7, 208
	beqz	$a0, .LBB25_201
# %bb.2:                                # %.preheader16.i
	move	$s6, $s1
	ld.w	$a0, $s5, 28
	beqz	$a0, .LBB25_15
# %bb.3:                                # %.lr.ph.preheader.i
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$s0, $a1, %pc_lo12(.L.str.8)
	move	$s2, $zero
	move	$s3, $zero
	b	.LBB25_5
	.p2align	4, , 16
.LBB25_4:                               # %alloc_frame_store.exit.i
                                        #   in Loop: Header=BB25_5 Depth=1
	ld.d	$a0, $s5, 0
	ld.wu	$a1, $s5, 28
	stx.d	$s1, $a0, $s2
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bgeu	$s3, $a1, .LBB25_15
.LBB25_5:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$s1, $a0, $s2
	beqz	$s1, .LBB25_13
# %bb.6:                                #   in Loop: Header=BB25_5 Depth=1
	ld.d	$a0, $s1, 48
	beqz	$a0, .LBB25_8
# %bb.7:                                #   in Loop: Header=BB25_5 Depth=1
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, 48
.LBB25_8:                               #   in Loop: Header=BB25_5 Depth=1
	ld.d	$a0, $s1, 56
	beqz	$a0, .LBB25_10
# %bb.9:                                #   in Loop: Header=BB25_5 Depth=1
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, 56
.LBB25_10:                              #   in Loop: Header=BB25_5 Depth=1
	ld.d	$a0, $s1, 64
	beqz	$a0, .LBB25_12
# %bb.11:                               #   in Loop: Header=BB25_5 Depth=1
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
.LBB25_12:                              #   in Loop: Header=BB25_5 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB25_13:                              # %free_frame_store.exit.i
                                        #   in Loop: Header=BB25_5 Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB25_4
# %bb.14:                               #   in Loop: Header=BB25_5 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	b	.LBB25_4
.LBB25_15:                              # %.preheader15.i
	ld.wu	$a1, $s5, 32
	beqz	$a1, .LBB25_17
# %bb.16:                               # %.lr.ph19.i
	ld.d	$a0, $s5, 8
	slli.d	$a2, $a1, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB25_17:                              # %.preheader.i
	ld.wu	$a1, $s5, 36
	beqz	$a1, .LBB25_19
# %bb.18:                               # %.lr.ph21.i
	ld.d	$a0, $s5, 16
	slli.d	$a2, $a1, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB25_19:                              # %._crit_edge.i
	st.w	$zero, $s5, 28
	move	$s1, $s6
	b	.LBB25_202
.LBB25_20:
	ld.w	$a0, $s7, 24
	beqz	$a0, .LBB25_206
# %bb.21:
	ld.w	$a0, $s7, 216
	beqz	$a0, .LBB25_206
# %bb.22:
	ld.d	$s0, $s7, 264
	beqz	$s0, .LBB25_206
# %bb.23:                               # %.lr.ph.i55
	ori	$s3, $zero, 6
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI25_0)
	addi.d	$a0, $a0, %pc_lo12(.LJTI25_0)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s2, $zero, 3
	ori	$s8, $s1, 1440
	ori	$a0, $s1, 1456
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $s1, 1444
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	b	.LBB25_26
	.p2align	4, , 16
.LBB25_24:                              # %mm_unmark_long_term_for_reference.exit.i
                                        #   in Loop: Header=BB25_26 Depth=1
	pcaddu18i	$ra, %call36(update_ltref_list)
	jirl	$ra, $ra, 0
.LBB25_25:                              # %check_num_ref.exit.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a0, $s0, 24
	st.d	$a0, $s7, 264
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s7, 264
	beqz	$s0, .LBB25_281
.LBB25_26:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_144 Depth 2
                                        #     Child Loop BB25_83 Depth 2
                                        #     Child Loop BB25_89 Depth 2
                                        #     Child Loop BB25_35 Depth 2
                                        #     Child Loop BB25_60 Depth 2
                                        #     Child Loop BB25_128 Depth 2
                                        #     Child Loop BB25_163 Depth 2
                                        #     Child Loop BB25_174 Depth 2
                                        #     Child Loop BB25_49 Depth 2
                                        #     Child Loop BB25_109 Depth 2
                                        #     Child Loop BB25_69 Depth 2
                                        #     Child Loop BB25_77 Depth 2
	ld.w	$a0, $s0, 0
	bltu	$s3, $a0, .LBB25_65
# %bb.27:                               #   in Loop: Header=BB25_26 Depth=1
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	ori	$s6, $s1, 1452
	jr	$a0
.LBB25_28:                              #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a0, $s0, 24
	beqz	$a0, .LBB25_25
# %bb.29:                               #   in Loop: Header=BB25_26 Depth=1
	ori	$a1, $zero, 500
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	b	.LBB25_105
.LBB25_30:                              #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a0, $s0, 16
	ld.wu	$a1, $s5, 36
	addi.d	$a2, $a0, -1
	st.w	$a2, $s5, 44
	beqz	$a1, .LBB25_24
# %bb.31:                               # %.lr.ph.i52.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a2, $s5, 16
	b	.LBB25_35
	.p2align	4, , 16
.LBB25_32:                              #   in Loop: Header=BB25_35 Depth=2
	ld.d	$a4, $a3, 48
	stx.d	$zero, $a4, $s6
.LBB25_33:                              # %unmark_for_long_term_reference.exit.i.i
                                        #   in Loop: Header=BB25_35 Depth=2
	st.d	$zero, $a3, 4
.LBB25_34:                              #   in Loop: Header=BB25_35 Depth=2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB25_24
.LBB25_35:                              #   Parent Loop BB25_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	ld.w	$a4, $a3, 32
	blt	$a4, $a0, .LBB25_34
# %bb.36:                               #   in Loop: Header=BB25_35 Depth=2
	ld.wu	$a4, $a3, 0
	andi	$a5, $a4, 1
	beqz	$a5, .LBB25_39
# %bb.37:                               #   in Loop: Header=BB25_35 Depth=2
	ld.d	$a5, $a3, 56
	beqz	$a5, .LBB25_39
# %bb.38:                               #   in Loop: Header=BB25_35 Depth=2
	add.d	$a5, $a5, $s6
	st.d	$zero, $a5, 0
.LBB25_39:                              #   in Loop: Header=BB25_35 Depth=2
	andi	$a5, $a4, 2
	beqz	$a5, .LBB25_42
# %bb.40:                               #   in Loop: Header=BB25_35 Depth=2
	ld.d	$a5, $a3, 64
	beqz	$a5, .LBB25_42
# %bb.41:                               #   in Loop: Header=BB25_35 Depth=2
	add.d	$a5, $a5, $s6
	st.d	$zero, $a5, 0
.LBB25_42:                              #   in Loop: Header=BB25_35 Depth=2
	bne	$a4, $s2, .LBB25_33
# %bb.43:                               #   in Loop: Header=BB25_35 Depth=2
	ld.d	$a4, $a3, 56
	beqz	$a4, .LBB25_32
# %bb.44:                               #   in Loop: Header=BB25_35 Depth=2
	ld.d	$a5, $a3, 64
	beqz	$a5, .LBB25_32
# %bb.45:                               #   in Loop: Header=BB25_35 Depth=2
	add.d	$a4, $a4, $s6
	add.d	$a5, $a5, $s6
	st.d	$zero, $a4, 0
	st.d	$zero, $a5, 0
	b	.LBB25_32
.LBB25_46:                              #   in Loop: Header=BB25_26 Depth=1
	ld.wu	$a0, $s5, 36
	beqz	$a0, .LBB25_24
# %bb.47:                               # %.lr.ph.i38.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a1, $s0, 8
	ld.w	$a3, $fp, 0
	ld.d	$a2, $s5, 16
	bnez	$a3, .LBB25_49
	b	.LBB25_109
	.p2align	4, , 16
.LBB25_48:                              #   in Loop: Header=BB25_49 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	beqz	$a0, .LBB25_24
.LBB25_49:                              # %.lr.ph.split.i39.i
                                        #   Parent Loop BB25_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	ld.wu	$a5, $a3, 4
	andi	$a4, $a5, 1
	andi	$a5, $a5, 2
	beqz	$a4, .LBB25_52
# %bb.50:                               #   in Loop: Header=BB25_49 Depth=2
	ld.wu	$a6, $a3, 8
	andi	$a7, $a6, 1
	beqz	$a7, .LBB25_52
# %bb.51:                               #   in Loop: Header=BB25_49 Depth=2
	ld.d	$a7, $a3, 56
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	ldx.w	$t0, $a7, $t0
	beq	$t0, $a1, .LBB25_186
.LBB25_52:                              #   in Loop: Header=BB25_49 Depth=2
	beqz	$a5, .LBB25_48
# %bb.53:                               #   in Loop: Header=BB25_49 Depth=2
	ld.wu	$a5, $a3, 8
	andi	$a6, $a5, 2
	beqz	$a6, .LBB25_48
# %bb.54:                               #   in Loop: Header=BB25_49 Depth=2
	ld.d	$a6, $a3, 64
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	ldx.w	$a7, $a6, $a7
	bne	$a7, $a1, .LBB25_48
# %bb.55:                               #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a6, $a0
	st.d	$zero, $a0, 8
	ld.w	$a0, $a3, 0
	st.w	$a4, $a3, 4
	andi	$a1, $a5, 1
	b	.LBB25_187
.LBB25_56:                              #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a0, $fp, 0
	ld.w	$a1, $s7, 0
	ld.w	$a2, $s0, 4
	ld.w	$s3, $s0, 12
	sltui	$a3, $a0, 1
	slli.d	$a4, $a1, 1
	addi.d	$a4, $a4, 1
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a4, $a3
	or	$a1, $a1, $a3
	nor	$a2, $a2, $zero
	add.w	$s4, $a1, $a2
	beqz	$a0, .LBB25_123
# %bb.57:                               # %.preheader.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.wu	$a0, $s5, 32
	beqz	$a0, .LBB25_122
# %bb.58:                               # %.lr.ph.i47.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a1, $s5, 8
	b	.LBB25_60
	.p2align	4, , 16
.LBB25_59:                              #   in Loop: Header=BB25_60 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	beqz	$a0, .LBB25_122
.LBB25_60:                              #   Parent Loop BB25_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	ld.wu	$a3, $a2, 4
	andi	$a4, $a3, 1
	beqz	$a4, .LBB25_62
# %bb.61:                               #   in Loop: Header=BB25_60 Depth=2
	ld.d	$a4, $a2, 56
	ldx.w	$a4, $a4, $s8
	beq	$a4, $s4, .LBB25_156
.LBB25_62:                              #   in Loop: Header=BB25_60 Depth=2
	andi	$a3, $a3, 2
	beqz	$a3, .LBB25_59
# %bb.63:                               #   in Loop: Header=BB25_60 Depth=2
	ld.d	$a2, $a2, 64
	ldx.w	$a2, $a2, $s8
	bne	$a2, $s4, .LBB25_59
# %bb.64:                               #   in Loop: Header=BB25_26 Depth=1
	ori	$a0, $zero, 2
	b	.LBB25_157
.LBB25_65:                              #   in Loop: Header=BB25_26 Depth=1
	ori	$a1, $zero, 500
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	b	.LBB25_105
.LBB25_66:                              #   in Loop: Header=BB25_26 Depth=1
	ld.wu	$a1, $s5, 32
	beqz	$a1, .LBB25_191
# %bb.67:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a0, $fp, 0
	ld.w	$a2, $s7, 0
	ld.w	$a3, $s0, 4
	sltui	$a4, $a0, 1
	slli.d	$a5, $a2, 1
	addi.d	$a5, $a5, 1
	maskeqz	$a6, $a2, $a4
	masknez	$a4, $a5, $a4
	ld.d	$a2, $s5, 8
	or	$a4, $a6, $a4
	nor	$a3, $a3, $zero
	add.w	$a3, $a4, $a3
	bnez	$a0, .LBB25_69
	b	.LBB25_77
	.p2align	4, , 16
.LBB25_68:                              #   in Loop: Header=BB25_69 Depth=2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB25_191
.LBB25_69:                              # %.lr.ph.split.i.i
                                        #   Parent Loop BB25_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a2, 0
	ld.wu	$a5, $a0, 4
	andi	$a4, $a5, 1
	andi	$a5, $a5, 2
	beqz	$a4, .LBB25_72
# %bb.70:                               #   in Loop: Header=BB25_69 Depth=2
	ld.bu	$a6, $a0, 8
	andi	$a6, $a6, 1
	bnez	$a6, .LBB25_72
# %bb.71:                               #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a6, $a0, 56
	ldx.w	$a7, $a6, $s8
	beq	$a7, $a3, .LBB25_189
.LBB25_72:                              #   in Loop: Header=BB25_69 Depth=2
	beqz	$a5, .LBB25_68
# %bb.73:                               #   in Loop: Header=BB25_69 Depth=2
	ld.bu	$a5, $a0, 8
	andi	$a5, $a5, 2
	bnez	$a5, .LBB25_68
# %bb.74:                               #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a5, $a0, 64
	ldx.w	$a6, $a5, $s8
	bne	$a6, $a3, .LBB25_68
# %bb.75:                               #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a1, $a0, 0
	add.d	$a2, $a5, $s8
	st.w	$zero, $a2, 16
	st.w	$a4, $a0, 4
	beq	$a1, $s2, .LBB25_190
	b	.LBB25_191
	.p2align	4, , 16
.LBB25_76:                              #   in Loop: Header=BB25_77 Depth=2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB25_191
.LBB25_77:                              # %.lr.ph.split.us.i.i
                                        #   Parent Loop BB25_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a2, 0
	ld.w	$a4, $a0, 4
	bne	$a4, $s2, .LBB25_76
# %bb.78:                               #   in Loop: Header=BB25_77 Depth=2
	ld.w	$a4, $a0, 8
	bnez	$a4, .LBB25_76
# %bb.79:                               #   in Loop: Header=BB25_77 Depth=2
	ld.d	$a4, $a0, 48
	ldx.w	$a4, $a4, $s8
	bne	$a4, $a3, .LBB25_76
# %bb.80:                               # %.split.us.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	pcaddu18i	$ra, %call36(unmark_for_reference)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(update_ref_list)
	jirl	$ra, $ra, 0
	b	.LBB25_25
.LBB25_81:                              #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a0, $s5, 32
	beqz	$a0, .LBB25_84
# %bb.82:                               # %.lr.ph.i60.i.preheader
                                        #   in Loop: Header=BB25_26 Depth=1
	move	$s1, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB25_83:                              # %.lr.ph.i60.i
                                        #   Parent Loop BB25_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s5, 8
	ldx.d	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(unmark_for_reference)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s5, 32
	addi.d	$s3, $s3, 1
	addi.d	$s1, $s1, 8
	bltu	$s3, $a0, .LBB25_83
.LBB25_84:                              # %mm_unmark_all_short_term_for_reference.exit.i
                                        #   in Loop: Header=BB25_26 Depth=1
	pcaddu18i	$ra, %call36(update_ref_list)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s5, 36
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $s5, 44
	ori	$s3, $zero, 6
	beqz	$a0, .LBB25_100
# %bb.85:                               # %.lr.ph.i.i63.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a1, $s5, 16
	b	.LBB25_89
	.p2align	4, , 16
.LBB25_86:                              #   in Loop: Header=BB25_89 Depth=2
	ld.d	$a3, $a2, 48
	stx.d	$zero, $a3, $s6
.LBB25_87:                              # %unmark_for_long_term_reference.exit.i.i71.i
                                        #   in Loop: Header=BB25_89 Depth=2
	st.d	$zero, $a2, 4
.LBB25_88:                              #   in Loop: Header=BB25_89 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	beqz	$a0, .LBB25_100
.LBB25_89:                              #   Parent Loop BB25_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	ld.w	$a3, $a2, 32
	bltz	$a3, .LBB25_88
# %bb.90:                               #   in Loop: Header=BB25_89 Depth=2
	ld.wu	$a3, $a2, 0
	andi	$a4, $a3, 1
	beqz	$a4, .LBB25_93
# %bb.91:                               #   in Loop: Header=BB25_89 Depth=2
	ld.d	$a4, $a2, 56
	beqz	$a4, .LBB25_93
# %bb.92:                               #   in Loop: Header=BB25_89 Depth=2
	add.d	$a4, $a4, $s6
	st.d	$zero, $a4, 0
.LBB25_93:                              #   in Loop: Header=BB25_89 Depth=2
	andi	$a4, $a3, 2
	beqz	$a4, .LBB25_96
# %bb.94:                               #   in Loop: Header=BB25_89 Depth=2
	ld.d	$a4, $a2, 64
	beqz	$a4, .LBB25_96
# %bb.95:                               #   in Loop: Header=BB25_89 Depth=2
	add.d	$a4, $a4, $s6
	st.d	$zero, $a4, 0
.LBB25_96:                              #   in Loop: Header=BB25_89 Depth=2
	bne	$a3, $s2, .LBB25_87
# %bb.97:                               #   in Loop: Header=BB25_89 Depth=2
	ld.d	$a3, $a2, 56
	beqz	$a3, .LBB25_86
# %bb.98:                               #   in Loop: Header=BB25_89 Depth=2
	ld.d	$a4, $a2, 64
	beqz	$a4, .LBB25_86
# %bb.99:                               #   in Loop: Header=BB25_89 Depth=2
	add.d	$a3, $a3, $s6
	add.d	$a4, $a4, $s6
	st.d	$zero, $a3, 0
	st.d	$zero, $a4, 0
	b	.LBB25_86
.LBB25_100:                             # %mm_unmark_all_long_term_for_reference.exit.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a0, $s4, 0
	ori	$a1, $zero, 1
	stptr.w	$a1, $a0, 5860
	lu12i.w	$s1, 77
	b	.LBB25_25
.LBB25_101:                             #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a0, $fp, 0
	ld.w	$s3, $s0, 12
	beqz	$a0, .LBB25_139
# %bb.102:                              #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a3, $s7, 8
	ori	$a2, $zero, 1
	move	$a1, $s3
	move	$a4, $zero
	pcaddu18i	$ra, %call36(unmark_long_term_field_for_reference_by_frame_idx)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 36
.LBB25_103:                             # %mm_mark_current_picture_long_term.exit.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a1, $s5, 32
	ld.w	$a2, $s5, 52
	ori	$a3, $zero, 1
	st.w	$a3, $s7, 20
	add.w	$a0, $a1, $a0
	slt	$a1, $a3, $a2
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	st.w	$s3, $s7, 16
	ori	$s3, $zero, 6
	bge	$a1, $a0, .LBB25_25
# %bb.104:                              #   in Loop: Header=BB25_26 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 500
.LBB25_105:                             # %check_num_ref.exit.i
                                        #   in Loop: Header=BB25_26 Depth=1
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	b	.LBB25_25
.LBB25_106:                             #   in Loop: Header=BB25_109 Depth=2
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	add.d	$a4, $a4, $a5
	st.d	$zero, $a4, 8
.LBB25_107:                             # %unmark_for_long_term_reference.exit.us.i.i
                                        #   in Loop: Header=BB25_109 Depth=2
	st.d	$zero, $a3, 4
	.p2align	4, , 16
.LBB25_108:                             #   in Loop: Header=BB25_109 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	beqz	$a0, .LBB25_24
.LBB25_109:                             # %.lr.ph.split.us.i44.i
                                        #   Parent Loop BB25_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	ld.w	$a4, $a3, 4
	bne	$a4, $s2, .LBB25_108
# %bb.110:                              #   in Loop: Header=BB25_109 Depth=2
	ld.w	$a4, $a3, 8
	bne	$a4, $s2, .LBB25_108
# %bb.111:                              #   in Loop: Header=BB25_109 Depth=2
	ld.d	$a4, $a3, 48
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ldx.w	$a5, $a4, $a5
	bne	$a5, $a1, .LBB25_108
# %bb.112:                              #   in Loop: Header=BB25_109 Depth=2
	ld.wu	$a5, $a3, 0
	andi	$a6, $a5, 1
	beqz	$a6, .LBB25_115
# %bb.113:                              #   in Loop: Header=BB25_109 Depth=2
	ld.d	$a6, $a3, 56
	beqz	$a6, .LBB25_115
# %bb.114:                              #   in Loop: Header=BB25_109 Depth=2
	add.d	$a6, $a6, $s6
	st.d	$zero, $a6, 0
.LBB25_115:                             #   in Loop: Header=BB25_109 Depth=2
	andi	$a6, $a5, 2
	beqz	$a6, .LBB25_118
# %bb.116:                              #   in Loop: Header=BB25_109 Depth=2
	ld.d	$a6, $a3, 64
	beqz	$a6, .LBB25_118
# %bb.117:                              #   in Loop: Header=BB25_109 Depth=2
	add.d	$a6, $a6, $s6
	st.d	$zero, $a6, 0
.LBB25_118:                             #   in Loop: Header=BB25_109 Depth=2
	bne	$a5, $s2, .LBB25_107
# %bb.119:                              #   in Loop: Header=BB25_109 Depth=2
	ld.d	$a5, $a3, 56
	beqz	$a5, .LBB25_106
# %bb.120:                              #   in Loop: Header=BB25_109 Depth=2
	ld.d	$a6, $a3, 64
	beqz	$a6, .LBB25_106
# %bb.121:                              #   in Loop: Header=BB25_109 Depth=2
	add.d	$a5, $a5, $s6
	add.d	$a6, $a6, $s6
	st.d	$zero, $a5, 0
	st.d	$zero, $a6, 0
	b	.LBB25_106
.LBB25_122:                             # %.critedge.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	ori	$a1, $zero, 200
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	b	.LBB25_158
.LBB25_123:                             #   in Loop: Header=BB25_26 Depth=1
	ld.wu	$a0, $s5, 36
	beqz	$a0, .LBB25_158
# %bb.124:                              # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a1, $s5, 16
	b	.LBB25_128
	.p2align	4, , 16
.LBB25_125:                             #   in Loop: Header=BB25_128 Depth=2
	ld.d	$a3, $a2, 48
	stx.d	$zero, $a3, $s6
.LBB25_126:                             # %unmark_for_long_term_reference.exit.i.i.i
                                        #   in Loop: Header=BB25_128 Depth=2
	st.d	$zero, $a2, 4
.LBB25_127:                             #   in Loop: Header=BB25_128 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	beqz	$a0, .LBB25_158
.LBB25_128:                             #   Parent Loop BB25_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	ld.w	$a3, $a2, 32
	bne	$a3, $s3, .LBB25_127
# %bb.129:                              #   in Loop: Header=BB25_128 Depth=2
	ld.wu	$a3, $a2, 0
	andi	$a4, $a3, 1
	beqz	$a4, .LBB25_132
# %bb.130:                              #   in Loop: Header=BB25_128 Depth=2
	ld.d	$a4, $a2, 56
	beqz	$a4, .LBB25_132
# %bb.131:                              #   in Loop: Header=BB25_128 Depth=2
	add.d	$a4, $a4, $s6
	st.d	$zero, $a4, 0
.LBB25_132:                             #   in Loop: Header=BB25_128 Depth=2
	andi	$a4, $a3, 2
	beqz	$a4, .LBB25_135
# %bb.133:                              #   in Loop: Header=BB25_128 Depth=2
	ld.d	$a4, $a2, 64
	beqz	$a4, .LBB25_135
# %bb.134:                              #   in Loop: Header=BB25_128 Depth=2
	add.d	$a4, $a4, $s6
	st.d	$zero, $a4, 0
.LBB25_135:                             #   in Loop: Header=BB25_128 Depth=2
	bne	$a3, $s2, .LBB25_126
# %bb.136:                              #   in Loop: Header=BB25_128 Depth=2
	ld.d	$a3, $a2, 56
	beqz	$a3, .LBB25_125
# %bb.137:                              #   in Loop: Header=BB25_128 Depth=2
	ld.d	$a4, $a2, 64
	beqz	$a4, .LBB25_125
# %bb.138:                              #   in Loop: Header=BB25_128 Depth=2
	add.d	$a3, $a3, $s6
	add.d	$a4, $a4, $s6
	st.d	$zero, $a3, 0
	st.d	$zero, $a4, 0
	b	.LBB25_125
.LBB25_139:                             #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a0, $s5, 36
	beqz	$a0, .LBB25_155
# %bb.140:                              # %.lr.ph.i.i78.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a1, $s5, 16
	bstrpick.d	$a2, $a0, 31, 0
	b	.LBB25_144
	.p2align	4, , 16
.LBB25_141:                             #   in Loop: Header=BB25_144 Depth=2
	ld.d	$a4, $a3, 48
	stx.d	$zero, $a4, $s6
.LBB25_142:                             # %unmark_for_long_term_reference.exit.i.i87.i
                                        #   in Loop: Header=BB25_144 Depth=2
	st.d	$zero, $a3, 4
.LBB25_143:                             #   in Loop: Header=BB25_144 Depth=2
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	beqz	$a2, .LBB25_103
.LBB25_144:                             #   Parent Loop BB25_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a1, 0
	ld.w	$a4, $a3, 32
	bne	$a4, $s3, .LBB25_143
# %bb.145:                              #   in Loop: Header=BB25_144 Depth=2
	ld.wu	$a4, $a3, 0
	andi	$a5, $a4, 1
	beqz	$a5, .LBB25_148
# %bb.146:                              #   in Loop: Header=BB25_144 Depth=2
	ld.d	$a5, $a3, 56
	beqz	$a5, .LBB25_148
# %bb.147:                              #   in Loop: Header=BB25_144 Depth=2
	add.d	$a5, $a5, $s6
	st.d	$zero, $a5, 0
.LBB25_148:                             #   in Loop: Header=BB25_144 Depth=2
	andi	$a5, $a4, 2
	beqz	$a5, .LBB25_151
# %bb.149:                              #   in Loop: Header=BB25_144 Depth=2
	ld.d	$a5, $a3, 64
	beqz	$a5, .LBB25_151
# %bb.150:                              #   in Loop: Header=BB25_144 Depth=2
	add.d	$a5, $a5, $s6
	st.d	$zero, $a5, 0
.LBB25_151:                             #   in Loop: Header=BB25_144 Depth=2
	bne	$a4, $s2, .LBB25_142
# %bb.152:                              #   in Loop: Header=BB25_144 Depth=2
	ld.d	$a4, $a3, 56
	beqz	$a4, .LBB25_141
# %bb.153:                              #   in Loop: Header=BB25_144 Depth=2
	ld.d	$a5, $a3, 64
	beqz	$a5, .LBB25_141
# %bb.154:                              #   in Loop: Header=BB25_144 Depth=2
	add.d	$a4, $a4, $s6
	add.d	$a5, $a5, $s6
	st.d	$zero, $a4, 0
	st.d	$zero, $a5, 0
	b	.LBB25_141
.LBB25_155:                             #   in Loop: Header=BB25_26 Depth=1
	move	$a0, $zero
	b	.LBB25_103
.LBB25_156:                             #   in Loop: Header=BB25_26 Depth=1
	ori	$a0, $zero, 1
.LBB25_157:                             # %.split.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	move	$a1, $s3
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $s4
	pcaddu18i	$ra, %call36(unmark_long_term_field_for_reference_by_frame_idx)
	jirl	$ra, $ra, 0
.LBB25_158:                             # %unmark_long_term_frame_for_reference_by_frame_idx.exit.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.w	$s6, $fp, 0
	ori	$a0, $zero, 1
	beq	$s6, $a0, .LBB25_171
# %bb.159:                              # %unmark_long_term_frame_for_reference_by_frame_idx.exit.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	bnez	$s6, .LBB25_170
# %bb.160:                              # %.preheader.i.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.wu	$a1, $s5, 32
	beqz	$a1, .LBB25_184
# %bb.161:                              # %.lr.ph.i26.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a2, $s5, 8
	b	.LBB25_163
	.p2align	4, , 16
.LBB25_162:                             #   in Loop: Header=BB25_163 Depth=2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB25_184
.LBB25_163:                             #   Parent Loop BB25_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a2, 0
	ld.w	$a3, $a0, 4
	bne	$a3, $s2, .LBB25_162
# %bb.164:                              #   in Loop: Header=BB25_163 Depth=2
	ld.d	$a3, $a0, 48
	add.d	$a3, $a3, $s8
	ld.w	$a4, $a3, 12
	bnez	$a4, .LBB25_162
# %bb.165:                              #   in Loop: Header=BB25_163 Depth=2
	ld.w	$a4, $a3, 0
	bne	$a4, $s4, .LBB25_162
# %bb.166:                              #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a1, $a0, 56
	st.w	$s3, $a3, 8
	st.w	$s3, $a0, 32
	st.w	$s3, $a3, 4
	ori	$a2, $zero, 1
	st.w	$a2, $a3, 12
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	beqz	$a1, .LBB25_169
# %bb.167:                              #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a2, $a0, 64
	beqz	$a2, .LBB25_169
# %bb.168:                              #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	add.d	$a2, $a2, $a3
	st.w	$s3, $a2, 4
	st.w	$s3, $a1, 4
	st.w	$s3, $a1, 0
	st.w	$s3, $a2, 0
	ori	$a3, $zero, 1
	st.w	$a3, $a2, 8
	st.w	$a3, $a1, 8
.LBB25_169:                             #   in Loop: Header=BB25_26 Depth=1
	st.w	$s2, $a0, 8
	b	.LBB25_185
.LBB25_170:                             #   in Loop: Header=BB25_26 Depth=1
	move	$s6, $zero
.LBB25_171:                             #   in Loop: Header=BB25_26 Depth=1
	ld.wu	$a0, $s5, 32
	beqz	$a0, .LBB25_183
# %bb.172:                              # %.lr.ph10.i.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a1, $s5, 8
	move	$s1, $zero
	slli.d	$a3, $a0, 3
	b	.LBB25_174
	.p2align	4, , 16
.LBB25_173:                             #   in Loop: Header=BB25_174 Depth=2
	addi.d	$s1, $s1, 8
	beq	$a3, $s1, .LBB25_183
.LBB25_174:                             #   Parent Loop BB25_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a0, $a1, $s1
	ld.wu	$a4, $a0, 4
	andi	$a2, $a4, 1
	beqz	$a2, .LBB25_177
# %bb.175:                              #   in Loop: Header=BB25_174 Depth=2
	ld.d	$a2, $a0, 56
	add.d	$a5, $a2, $s8
	ld.w	$a6, $a5, 12
	bnez	$a6, .LBB25_177
# %bb.176:                              #   in Loop: Header=BB25_174 Depth=2
	ld.w	$a5, $a5, 0
	beq	$a5, $s4, .LBB25_192
	.p2align	4, , 16
.LBB25_177:                             #   in Loop: Header=BB25_174 Depth=2
	andi	$a2, $a4, 2
	beqz	$a2, .LBB25_173
# %bb.178:                              #   in Loop: Header=BB25_174 Depth=2
	ld.d	$a2, $a0, 64
	add.d	$a4, $a2, $s8
	ld.w	$a5, $a4, 12
	bnez	$a5, .LBB25_173
# %bb.179:                              #   in Loop: Header=BB25_174 Depth=2
	ld.w	$a4, $a4, 0
	bne	$a4, $s4, .LBB25_173
# %bb.180:                              #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a1, $a0, 8
	beqz	$a1, .LBB25_197
# %bb.181:                              #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a3, $a0, 32
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	beq	$a3, $s3, .LBB25_198
# %bb.182:                              #   in Loop: Header=BB25_26 Depth=1
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 8
	ldx.d	$a0, $a0, $s1
	ld.d	$a2, $a0, 64
	ld.w	$a1, $a0, 8
	b	.LBB25_198
.LBB25_183:                             # %._crit_edge11.i.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	lu12i.w	$s1, 77
	b	.LBB25_185
.LBB25_184:                             # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
.LBB25_185:                             # %mm_assign_long_term_frame_idx.exit.i
                                        #   in Loop: Header=BB25_26 Depth=1
	pcaddu18i	$ra, %call36(update_ref_list)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(update_ltref_list)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 6
	b	.LBB25_25
.LBB25_186:                             #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a7, $a0
	st.d	$zero, $a0, 8
	ld.w	$a0, $a3, 0
	st.w	$a5, $a3, 4
	andi	$a1, $a6, 2
.LBB25_187:                             #   in Loop: Header=BB25_26 Depth=1
	st.w	$a1, $a3, 8
	bne	$a0, $s2, .LBB25_24
# %bb.188:                              # %.loopexit.sink.split.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a0, $a3, 48
	stx.d	$zero, $a0, $s6
	b	.LBB25_24
.LBB25_189:                             #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a1, $a0, 0
	add.d	$a2, $a6, $s8
	st.w	$zero, $a2, 16
	st.w	$a5, $a0, 4
	bne	$a1, $s2, .LBB25_191
.LBB25_190:                             #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a0, $a0, 48
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	stx.w	$zero, $a0, $a1
.LBB25_191:                             # %mm_unmark_short_term_for_reference.exit.i
                                        #   in Loop: Header=BB25_26 Depth=1
	pcaddu18i	$ra, %call36(update_ref_list)
	jirl	$ra, $ra, 0
	b	.LBB25_25
.LBB25_192:                             #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a1, $a0, 8
	beqz	$a1, .LBB25_195
# %bb.193:                              #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a3, $a0, 32
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	beq	$a3, $s3, .LBB25_196
# %bb.194:                              #   in Loop: Header=BB25_26 Depth=1
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 8
	ldx.d	$a0, $a0, $s1
	ld.d	$a2, $a0, 56
	ld.w	$a1, $a0, 8
	b	.LBB25_196
.LBB25_195:                             #   in Loop: Header=BB25_26 Depth=1
	move	$a1, $zero
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
.LBB25_196:                             #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	add.d	$a3, $a2, $a5
	st.w	$s3, $a3, 4
	st.w	$s3, $a0, 32
	slli.d	$a4, $s3, 1
	or	$a4, $s6, $a4
	stx.w	$a4, $a2, $a5
	ori	$a2, $zero, 1
	st.w	$a2, $a3, 8
	ori	$a1, $a1, 1
	b	.LBB25_199
.LBB25_197:                             #   in Loop: Header=BB25_26 Depth=1
	move	$a1, $zero
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
.LBB25_198:                             #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	add.d	$a3, $a2, $a5
	st.w	$s3, $a3, 4
	st.w	$s3, $a0, 32
	slli.d	$a4, $s3, 1
	or	$a4, $s6, $a4
	stx.w	$a4, $a2, $a5
	ori	$a2, $zero, 1
	st.w	$a2, $a3, 8
	ori	$a1, $a1, 2
.LBB25_199:                             #   in Loop: Header=BB25_26 Depth=1
	st.w	$a1, $a0, 8
	lu12i.w	$s1, 77
	bne	$a1, $s2, .LBB25_185
# %bb.200:                              #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a0, $a0, 48
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	add.d	$a1, $a0, $a2
	ori	$a3, $zero, 1
	st.w	$a3, $a1, 8
	stx.w	$s3, $a0, $a2
	st.w	$s3, $a1, 4
	b	.LBB25_185
.LBB25_201:
	pcaddu18i	$ra, %call36(flush_dpb)
	jirl	$ra, $ra, 0
.LBB25_202:
	st.d	$zero, $s5, 56
	pcaddu18i	$ra, %call36(update_ref_list)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(update_ltref_list)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 212
	lu12i.w	$a1, -524288
	lu32i.d	$a1, 0
	st.w	$a1, $s5, 40
	beqz	$a0, .LBB25_204
# %bb.203:
	move	$a0, $zero
	st.w	$zero, $s7, 16
	ori	$a1, $zero, 1
	b	.LBB25_205
.LBB25_204:
	move	$a1, $zero
	addi.d	$a0, $zero, -1
.LBB25_205:                             # %idr_memory_management.exit
	st.w	$a0, $s5, 44
	st.w	$a1, $s7, 20
	pcalau12i	$a0, %pc_hi20(pocs_in_dpb)
	addi.d	$a0, $a0, %pc_lo12(pocs_in_dpb)
	ori	$a2, $zero, 400
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB25_206:                             # %adaptive_memory_management.exit
	ld.w	$a0, $fp, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB25_210
# %bb.207:
	ld.d	$a0, $s5, 56
	beqz	$a0, .LBB25_215
# %bb.208:
	ld.w	$a1, $a0, 20
	ld.w	$a2, $s7, 8
	bne	$a1, $a2, .LBB25_215
# %bb.209:
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB25_214
	b	.LBB25_215
.LBB25_210:
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB25_215
# %bb.211:
	ld.d	$a0, $s5, 56
	beqz	$a0, .LBB25_215
# %bb.212:                              # %.thread
	ld.w	$a1, $a0, 20
	ld.w	$a2, $s7, 8
	bne	$a1, $a2, .LBB25_215
# %bb.213:                              # %.thread91
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB25_215
.LBB25_214:
	ld.w	$a1, $s7, 24
	ld.w	$a2, $a0, 12
	sltui	$a1, $a1, 1
	sltui	$a2, $a2, 1
	xor	$a1, $a1, $a2
	beqz	$a1, .LBB25_286
.LBB25_215:
	ld.w	$a0, $s7, 204
	beqz	$a0, .LBB25_224
.LBB25_216:
	ld.d	$a0, $s4, 0
	ldptr.w	$a0, $a0, 6068
	beqz	$a0, .LBB25_234
# %bb.217:                              # %.preheader98
	ld.w	$a0, $s5, 24
	beqz	$a0, .LBB25_222
# %bb.218:                              # %.lr.ph
	ld.d	$a1, $s5, 0
	bstrpick.d	$a2, $a0, 31, 0
	ori	$a3, $zero, 1
	b	.LBB25_220
	.p2align	4, , 16
.LBB25_219:                             #   in Loop: Header=BB25_220 Depth=1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	beqz	$a2, .LBB25_222
.LBB25_220:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	ld.w	$a5, $a4, 4
	beqz	$a5, .LBB25_219
# %bb.221:                              #   in Loop: Header=BB25_220 Depth=1
	st.w	$a3, $a4, 44
	b	.LBB25_219
.LBB25_222:                             # %._crit_edge
	ld.w	$a1, $s5, 28
	bne	$a1, $a0, .LBB25_251
# %bb.223:
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(conceal_non_ref_pics)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s5, 28
	b	.LBB25_235
.LBB25_224:
	ld.w	$a0, $s7, 24
	beqz	$a0, .LBB25_216
# %bb.225:
	ld.w	$a0, $s7, 216
	bnez	$a0, .LBB25_216
# %bb.226:
	ld.w	$a0, $s5, 52
	ld.w	$a1, $s5, 36
	ld.w	$a2, $s5, 32
	sub.w	$a0, $a0, $a1
	bne	$a2, $a0, .LBB25_233
# %bb.227:                              # %.preheader.i61
	ld.wu	$a1, $s5, 28
	beqz	$a1, .LBB25_233
# %bb.228:                              # %.lr.ph.i62
	ld.d	$a2, $s5, 0
	b	.LBB25_230
	.p2align	4, , 16
.LBB25_229:                             #   in Loop: Header=BB25_230 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB25_233
.LBB25_230:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a2, 0
	ld.w	$a3, $a0, 4
	beqz	$a3, .LBB25_229
# %bb.231:                              #   in Loop: Header=BB25_230 Depth=1
	ld.w	$a3, $a0, 8
	bnez	$a3, .LBB25_229
# %bb.232:
	pcaddu18i	$ra, %call36(unmark_for_reference)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(update_ref_list)
	jirl	$ra, $ra, 0
.LBB25_233:                             # %sliding_window_memory_management.exit
	st.w	$zero, $s7, 20
	b	.LBB25_216
.LBB25_234:                             # %.thread93
	ld.w	$a2, $s5, 28
	ld.w	$a0, $s5, 24
	bne	$a2, $a0, .LBB25_251
.LBB25_235:                             # %.thread94
	beqz	$a2, .LBB25_249
# %bb.236:                              # %.lr.ph.i66
	move	$a0, $zero
	ld.d	$a1, $s5, 0
	bstrpick.d	$a2, $a2, 31, 0
	ori	$a3, $zero, 3
	ori	$a4, $s1, 1456
	b	.LBB25_239
.LBB25_237:                             #   in Loop: Header=BB25_239 Depth=1
	ld.d	$a7, $a5, 48
	ldx.w	$a7, $a7, $a4
	beqz	$a7, .LBB25_243
	.p2align	4, , 16
.LBB25_238:                             # %is_used_for_reference.exit.thread.i
                                        #   in Loop: Header=BB25_239 Depth=1
	addi.w	$a0, $a0, 1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	beqz	$a2, .LBB25_249
.LBB25_239:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	ld.w	$a6, $a5, 36
	beqz	$a6, .LBB25_238
# %bb.240:                              #   in Loop: Header=BB25_239 Depth=1
	ld.w	$a6, $a5, 4
	bnez	$a6, .LBB25_238
# %bb.241:                              #   in Loop: Header=BB25_239 Depth=1
	ld.w	$a6, $a5, 0
	beq	$a6, $a3, .LBB25_237
# %bb.242:                              #   in Loop: Header=BB25_239 Depth=1
	andi	$a7, $a6, 1
	beqz	$a7, .LBB25_245
.LBB25_243:                             # %.thread.i.i
                                        #   in Loop: Header=BB25_239 Depth=1
	ld.d	$a7, $a5, 56
	beqz	$a7, .LBB25_245
# %bb.244:                              #   in Loop: Header=BB25_239 Depth=1
	ldx.w	$a7, $a7, $a4
	bnez	$a7, .LBB25_238
.LBB25_245:                             #   in Loop: Header=BB25_239 Depth=1
	andi	$a6, $a6, 2
	beqz	$a6, .LBB25_248
# %bb.246:                              #   in Loop: Header=BB25_239 Depth=1
	ld.d	$a5, $a5, 64
	beqz	$a5, .LBB25_248
# %bb.247:                              #   in Loop: Header=BB25_239 Depth=1
	ldx.w	$a5, $a5, $a4
	bnez	$a5, .LBB25_238
.LBB25_248:                             # %is_used_for_reference.exit.i
	pcaddu18i	$ra, %call36(remove_frame_from_dpb)
	jirl	$ra, $ra, 0
.LBB25_249:                             # %remove_unused_frame_from_dpb.exit
	ld.d	$a0, $s4, 0
	ldptr.w	$a0, $a0, 6068
	beqz	$a0, .LBB25_251
# %bb.250:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sliding_window_poc_management)
	jirl	$ra, $ra, 0
.LBB25_251:
	ld.wu	$a0, $s5, 28
	ld.wu	$a1, $s5, 24
	bne	$a0, $a1, .LBB25_264
# %bb.252:                              # %.lr.ph156
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$s0, $a1, %pc_lo12(.L.str.29)
	addi.w	$s1, $zero, -1
	lu12i.w	$a1, 524287
	ori	$s2, $a1, 4095
	b	.LBB25_254
	.p2align	4, , 16
.LBB25_253:                             #   in Loop: Header=BB25_254 Depth=1
	pcaddu18i	$ra, %call36(output_one_frame_from_dpb)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s5, 28
	ld.wu	$a1, $s5, 24
	bne	$a0, $a1, .LBB25_264
.LBB25_254:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_259 Depth 2
	ld.w	$a1, $s7, 24
	bnez	$a1, .LBB25_253
# %bb.255:                              #   in Loop: Header=BB25_254 Depth=1
	bnez	$a0, .LBB25_257
# %bb.256:                              #   in Loop: Header=BB25_254 Depth=1
	ori	$a1, $zero, 150
	move	$a0, $s0
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s5, 28
	beqz	$a0, .LBB25_263
.LBB25_257:                             # %.lr.ph.i77
                                        #   in Loop: Header=BB25_254 Depth=1
	ld.d	$a1, $s5, 0
	move	$a3, $zero
	move	$a2, $s2
	move	$a4, $s1
	b	.LBB25_259
	.p2align	4, , 16
.LBB25_258:                             #   in Loop: Header=BB25_259 Depth=2
	addi.w	$a3, $a3, 1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	beqz	$a0, .LBB25_261
.LBB25_259:                             #   Parent Loop BB25_254 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a1, 0
	ld.w	$a5, $a6, 40
	bge	$a5, $a2, .LBB25_258
# %bb.260:                              #   in Loop: Header=BB25_259 Depth=2
	ld.w	$a6, $a6, 36
	sltui	$a6, $a6, 1
	masknez	$a2, $a2, $a6
	maskeqz	$a5, $a5, $a6
	or	$a2, $a5, $a2
	masknez	$a4, $a4, $a6
	maskeqz	$a5, $a3, $a6
	or	$a4, $a5, $a4
	b	.LBB25_258
	.p2align	4, , 16
.LBB25_261:                             # %get_smallest_poc.exit
                                        #   in Loop: Header=BB25_254 Depth=1
	beq	$a4, $s1, .LBB25_263
# %bb.262:                              #   in Loop: Header=BB25_254 Depth=1
	ld.w	$a0, $fp, 4
	bge	$a0, $a2, .LBB25_253
.LBB25_263:                             # %get_smallest_poc.exit.thread
	pcalau12i	$a0, %pc_hi20(p_out)
	ld.w	$a1, $a0, %pc_lo12(p_out)
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(direct_output)
	jr	$t8
.LBB25_264:                             # %._crit_edge157
	ld.w	$a1, $s7, 24
	beqz	$a1, .LBB25_272
# %bb.265:
	ld.w	$a1, $s7, 20
	bnez	$a1, .LBB25_272
# %bb.266:
	ld.wu	$a1, $s5, 32
	beqz	$a1, .LBB25_272
# %bb.267:                              # %.lr.ph159
	ld.d	$a0, $s5, 8
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$s0, $a2, %pc_lo12(.L.str.15)
	move	$s1, $zero
	move	$s2, $zero
	b	.LBB25_269
	.p2align	4, , 16
.LBB25_268:                             #   in Loop: Header=BB25_269 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bgeu	$s2, $a1, .LBB25_271
.LBB25_269:                             # =>This Inner Loop Header: Depth=1
	ldx.d	$a2, $a0, $s1
	ld.w	$a2, $a2, 20
	ld.w	$a3, $s7, 0
	bne	$a2, $a3, .LBB25_268
# %bb.270:                              #   in Loop: Header=BB25_269 Depth=1
	ori	$a1, $zero, 500
	move	$a0, $s0
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 8
	ld.wu	$a1, $s5, 32
	b	.LBB25_268
.LBB25_271:                             # %.loopexit.loopexit
	ld.wu	$a0, $s5, 28
.LBB25_272:                             # %.loopexit
	ld.d	$a1, $s5, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(insert_picture_in_dpb)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 204
	beqz	$a0, .LBB25_274
# %bb.273:
	ld.d	$a0, $s4, 0
	stptr.w	$zero, $a0, 6072
.LBB25_274:
	ld.w	$a1, $fp, 0
	ld.wu	$a0, $s5, 28
	beqz	$a1, .LBB25_276
# %bb.275:
	ld.d	$a1, $s5, 0
	slli.d	$a2, $a0, 3
	ldx.d	$a1, $a1, $a2
	b	.LBB25_277
.LBB25_276:
	move	$a1, $zero
.LBB25_277:
	ld.d	$a2, $s4, 0
	ldptr.w	$a2, $a2, 6068
	st.d	$a1, $s5, 56
	addi.d	$a1, $a0, 1
	st.w	$a1, $s5, 28
	beqz	$a2, .LBB25_279
# %bb.278:
	pcalau12i	$a1, %pc_hi20(pocs_in_dpb)
	addi.d	$a1, $a1, %pc_lo12(pocs_in_dpb)
	ld.w	$a2, $fp, 4
	slli.d	$a0, $a0, 2
	stx.w	$a2, $a1, $a0
.LBB25_279:
	pcaddu18i	$ra, %call36(update_ref_list)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(update_ltref_list)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 36
	ld.w	$a1, $s5, 32
	ld.w	$a2, $s5, 52
	add.w	$a0, $a1, $a0
	ori	$a1, $zero, 1
	slt	$a3, $a1, $a2
	masknez	$a1, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$a1, $a2, $a1
	bge	$a1, $a0, .LBB25_287
# %bb.280:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 500
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
	pcaddu18i	$t8, %call36(error)
	jr	$t8
.LBB25_281:                             # %._crit_edge.i58
	ld.d	$a0, $s4, 0
	ldptr.w	$a1, $a0, 5860
	beqz	$a1, .LBB25_206
# %bb.282:
	ld.w	$a1, $fp, 0
	st.w	$zero, $s7, 0
	st.w	$zero, $s7, 8
	beqz	$a1, .LBB25_289
# %bb.283:
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB25_288
# %bb.284:
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB25_290
# %bb.285:
	move	$a1, $zero
	stptr.w	$zero, $a0, 5668
	st.w	$zero, $fp, 12
	st.w	$zero, $fp, 4
	b	.LBB25_291
.LBB25_286:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(insert_picture_in_dpb)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(update_ref_list)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(update_ltref_list)
	jirl	$ra, $ra, 0
	st.d	$zero, $s5, 56
.LBB25_287:                             # %check_num_ref.exit
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
.LBB25_288:
	move	$a1, $zero
	stptr.w	$zero, $a0, 5664
	st.d	$zero, $fp, 4
	b	.LBB25_291
.LBB25_289:
	ld.w	$a1, $fp, 4
	ld.w	$a2, $fp, 8
	ld.w	$a3, $fp, 12
	sub.w	$a2, $a2, $a1
	st.w	$a2, $fp, 8
	sub.w	$a1, $a3, $a1
	st.w	$a1, $fp, 12
	stptr.w	$a2, $a0, 5664
	stptr.w	$a1, $a0, 5668
	slt	$a3, $a2, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$a1, $a2, $a1
	st.w	$a1, $fp, 4
	stptr.w	$a1, $a0, 5672
	b	.LBB25_291
.LBB25_290:                             # %._crit_edge183.i
	ld.w	$a1, $fp, 4
.LBB25_291:
	stptr.w	$a1, $a0, 5752
	pcaddu18i	$ra, %call36(flush_dpb)
	jirl	$ra, $ra, 0
	b	.LBB25_206
.Lfunc_end25:
	.size	store_picture_in_dpb, .Lfunc_end25-store_picture_in_dpb
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI25_0:
	.word	.LBB25_28-.LJTI25_0
	.word	.LBB25_66-.LJTI25_0
	.word	.LBB25_46-.LJTI25_0
	.word	.LBB25_56-.LJTI25_0
	.word	.LBB25_30-.LJTI25_0
	.word	.LBB25_81-.LJTI25_0
	.word	.LBB25_101-.LJTI25_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function insert_picture_in_dpb
	.type	insert_picture_in_dpb,@function
insert_picture_in_dpb:                  # @insert_picture_in_dpb
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a1, 0
	lu12i.w	$a2, 77
	ori	$a2, $a2, 1436
	ori	$a3, $zero, 2
	add.d	$s0, $a1, $a2
	beq	$a0, $a3, .LBB26_10
# %bb.1:
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB26_7
# %bb.2:
	bnez	$a0, .LBB26_17
# %bb.3:
	ld.w	$a2, $s0, 20
	st.d	$a1, $fp, 48
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 0
	beqz	$a2, .LBB26_6
# %bb.4:
	ld.w	$a1, $s0, 16
	st.w	$a0, $fp, 4
	st.w	$a0, $fp, 12
	beqz	$a1, .LBB26_6
# %bb.5:
	ld.w	$a0, $s0, 12
	ori	$a1, $zero, 3
	st.w	$a1, $fp, 8
	st.w	$a0, $fp, 32
.LBB26_6:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(dpb_split_field)
	jirl	$ra, $ra, 0
	b	.LBB26_17
.LBB26_7:
	ld.w	$a0, $fp, 0
	ld.w	$a2, $s0, 20
	st.d	$a1, $fp, 56
	ori	$a0, $a0, 1
	st.w	$a0, $fp, 0
	beqz	$a2, .LBB26_14
# %bb.8:
	ld.w	$a2, $fp, 4
	ld.w	$a3, $fp, 12
	ld.w	$a4, $s0, 16
	ori	$a2, $a2, 1
	st.w	$a2, $fp, 4
	ori	$a2, $a3, 1
	st.w	$a2, $fp, 12
	beqz	$a4, .LBB26_14
# %bb.9:
	ld.w	$a2, $fp, 8
	ld.w	$a3, $s0, 12
	ori	$a2, $a2, 1
	b	.LBB26_13
.LBB26_10:
	ld.w	$a0, $fp, 0
	ld.w	$a2, $s0, 20
	st.d	$a1, $fp, 64
	ori	$a0, $a0, 2
	st.w	$a0, $fp, 0
	beqz	$a2, .LBB26_14
# %bb.11:
	ld.w	$a2, $fp, 4
	ld.w	$a3, $fp, 12
	ld.w	$a4, $s0, 16
	ori	$a2, $a2, 2
	st.w	$a2, $fp, 4
	ori	$a2, $a3, 2
	st.w	$a2, $fp, 12
	beqz	$a4, .LBB26_14
# %bb.12:
	ld.w	$a2, $fp, 8
	ld.w	$a3, $s0, 12
	ori	$a2, $a2, 2
.LBB26_13:
	st.w	$a2, $fp, 8
	st.w	$a3, $fp, 32
.LBB26_14:
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB26_16
# %bb.15:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(dpb_combine_field)
	jirl	$ra, $ra, 0
	b	.LBB26_17
.LBB26_16:
	ld.w	$a0, $a1, 4
	st.w	$a0, $fp, 40
	move	$a0, $a1
	pcaddu18i	$ra, %call36(gen_field_ref_ids)
	jirl	$ra, $ra, 0
.LBB26_17:
	ld.d	$a0, $s0, 0
	rotri.d	$a0, $a0, 32
	st.d	$a0, $fp, 20
	ld.w	$a0, $s0, 24
	ld.w	$a1, $fp, 0
	ori	$a2, $zero, 3
	st.w	$a0, $fp, 36
	bne	$a1, $a2, .LBB26_20
# %bb.18:
	pcalau12i	$a0, %pc_hi20(p_ref)
	ld.w	$a2, $a0, %pc_lo12(p_ref)
	addi.w	$a0, $zero, -1
	beq	$a2, $a0, .LBB26_20
# %bb.19:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 3016
	beqz	$a0, .LBB26_21
.LBB26_20:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB26_21:
	pcalau12i	$a0, %got_pc_hi20(snr)
	ld.d	$a0, $a0, %got_pc_lo12(snr)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $fp, 48
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(find_snr)
	jr	$t8
.Lfunc_end26:
	.size	insert_picture_in_dpb, .Lfunc_end26-insert_picture_in_dpb
                                        # -- End function
	.globl	flush_dpb                       # -- Begin function flush_dpb
	.p2align	5
	.type	flush_dpb,@function
flush_dpb:                              # @flush_dpb
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 6068
	beqz	$a0, .LBB27_2
# %bb.1:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(conceal_non_ref_pics)
	jirl	$ra, $ra, 0
.LBB27_2:
	pcalau12i	$a0, %pc_hi20(dpb)
	addi.d	$fp, $a0, %pc_lo12(dpb)
	ld.w	$a0, $fp, 28
	beqz	$a0, .LBB27_21
# %bb.3:                                # %.lr.ph.preheader
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB27_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(unmark_for_reference)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 28
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	bltu	$s1, $a1, .LBB27_4
# %bb.5:                                # %.preheader
	beqz	$a1, .LBB27_21
# %bb.6:
	ori	$s0, $zero, 3
	lu12i.w	$a0, 77
	ori	$s1, $a0, 1456
.LBB27_7:                               # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_10 Depth 2
	ld.d	$a2, $fp, 0
	move	$a0, $zero
	b	.LBB27_10
.LBB27_8:                               #   in Loop: Header=BB27_10 Depth=2
	ld.d	$a5, $a3, 48
	ldx.w	$a5, $a5, $s1
	beqz	$a5, .LBB27_14
	.p2align	4, , 16
.LBB27_9:                               # %is_used_for_reference.exit.thread.i
                                        #   in Loop: Header=BB27_10 Depth=2
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB27_20
.LBB27_10:                              #   Parent Loop BB27_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	ld.w	$a4, $a3, 36
	beqz	$a4, .LBB27_9
# %bb.11:                               #   in Loop: Header=BB27_10 Depth=2
	ld.w	$a4, $a3, 4
	bnez	$a4, .LBB27_9
# %bb.12:                               #   in Loop: Header=BB27_10 Depth=2
	ld.w	$a4, $a3, 0
	beq	$a4, $s0, .LBB27_8
# %bb.13:                               #   in Loop: Header=BB27_10 Depth=2
	andi	$a5, $a4, 1
	beqz	$a5, .LBB27_16
.LBB27_14:                              # %.thread.i.i
                                        #   in Loop: Header=BB27_10 Depth=2
	ld.d	$a5, $a3, 56
	beqz	$a5, .LBB27_16
# %bb.15:                               #   in Loop: Header=BB27_10 Depth=2
	ldx.w	$a5, $a5, $s1
	bnez	$a5, .LBB27_9
.LBB27_16:                              #   in Loop: Header=BB27_10 Depth=2
	andi	$a4, $a4, 2
	beqz	$a4, .LBB27_19
# %bb.17:                               #   in Loop: Header=BB27_10 Depth=2
	ld.d	$a3, $a3, 64
	beqz	$a3, .LBB27_19
# %bb.18:                               #   in Loop: Header=BB27_10 Depth=2
	ldx.w	$a3, $a3, $s1
	bnez	$a3, .LBB27_9
.LBB27_19:                              # %thread-pre-split
                                        #   in Loop: Header=BB27_7 Depth=1
	pcaddu18i	$ra, %call36(remove_frame_from_dpb)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 28
	bnez	$a1, .LBB27_7
	b	.LBB27_21
	.p2align	4, , 16
.LBB27_20:                              # %.lr.ph12
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(output_one_frame_from_dpb)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 28
	bnez	$a0, .LBB27_20
.LBB27_21:                              # %._crit_edge
	lu12i.w	$a0, -524288
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 40
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end27:
	.size	flush_dpb, .Lfunc_end27-flush_dpb
                                        # -- End function
	.p2align	5                               # -- Begin function unmark_for_reference
	.type	unmark_for_reference,@function
unmark_for_reference:                   # @unmark_for_reference
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.wu	$a0, $a0, 0
	andi	$a1, $a0, 1
	lu12i.w	$s0, 77
	beqz	$a1, .LBB28_3
# %bb.1:
	ld.d	$a1, $fp, 56
	beqz	$a1, .LBB28_3
# %bb.2:
	ori	$a2, $s0, 1456
	stx.w	$zero, $a1, $a2
.LBB28_3:
	andi	$a1, $a0, 2
	beqz	$a1, .LBB28_6
# %bb.4:
	ld.d	$a1, $fp, 64
	beqz	$a1, .LBB28_6
# %bb.5:
	ori	$a2, $s0, 1456
	stx.w	$zero, $a1, $a2
.LBB28_6:
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB28_11
# %bb.7:
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB28_10
# %bb.8:
	ld.d	$a1, $fp, 64
	beqz	$a1, .LBB28_10
# %bb.9:
	ori	$a2, $s0, 1456
	stx.w	$zero, $a0, $a2
	stx.w	$zero, $a1, $a2
.LBB28_10:                              # %.thread
	ld.d	$a1, $fp, 48
	ori	$a0, $s0, 1456
	stx.w	$zero, $a1, $a0
	st.w	$zero, $fp, 4
	b	.LBB28_12
.LBB28_11:
	ld.d	$a1, $fp, 48
	st.w	$zero, $fp, 4
	beqz	$a1, .LBB28_16
.LBB28_12:
	ori	$s1, $s0, 1568
	ldx.d	$a0, $a1, $s1
	beqz	$a0, .LBB28_14
# %bb.13:
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(free_mem3Dint64)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 48
	stx.d	$zero, $a1, $s1
.LBB28_14:
	ori	$s1, $s0, 1576
	ldx.d	$a0, $a1, $s1
	beqz	$a0, .LBB28_16
# %bb.15:
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(free_mem3Dint64)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	stx.d	$zero, $a0, $s1
.LBB28_16:
	ld.d	$a1, $fp, 56
	beqz	$a1, .LBB28_21
# %bb.17:
	ori	$s1, $s0, 1568
	ldx.d	$a0, $a1, $s1
	beqz	$a0, .LBB28_19
# %bb.18:
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(free_mem3Dint64)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 56
	stx.d	$zero, $a1, $s1
.LBB28_19:
	ori	$s1, $s0, 1576
	ldx.d	$a0, $a1, $s1
	beqz	$a0, .LBB28_21
# %bb.20:
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(free_mem3Dint64)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	stx.d	$zero, $a0, $s1
.LBB28_21:
	ld.d	$a1, $fp, 64
	beqz	$a1, .LBB28_26
# %bb.22:
	ori	$s1, $s0, 1568
	ldx.d	$a0, $a1, $s1
	beqz	$a0, .LBB28_24
# %bb.23:
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(free_mem3Dint64)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 64
	stx.d	$zero, $a1, $s1
.LBB28_24:
	ori	$s0, $s0, 1576
	ldx.d	$a0, $a1, $s0
	beqz	$a0, .LBB28_26
# %bb.25:
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(free_mem3Dint64)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	stx.d	$zero, $a0, $s0
.LBB28_26:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end28:
	.size	unmark_for_reference, .Lfunc_end28-unmark_for_reference
                                        # -- End function
	.globl	gen_field_ref_ids               # -- Begin function gen_field_ref_ids
	.p2align	5
	.type	gen_field_ref_ids,@function
gen_field_ref_ids:                      # @gen_field_ref_ids
# %bb.0:
	lu12i.w	$a1, 77
	ori	$a3, $a1, 1472
	ldx.w	$a7, $a0, $a3
	ori	$a1, $zero, 4
	blt	$a7, $a1, .LBB29_13
# %bb.1:                                # %.preheader.lr.ph
	move	$a2, $zero
	add.d	$a3, $a0, $a3
	ld.w	$t3, $a3, 4
	addi.d	$a4, $a0, 24
	ori	$a5, $zero, 1584
	ori	$a6, $zero, 1
	b	.LBB29_4
	.p2align	4, , 16
.LBB29_2:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB29_4 Depth=1
	ld.w	$a7, $a3, 0
.LBB29_3:                               # %._crit_edge
                                        #   in Loop: Header=BB29_4 Depth=1
	addi.d	$a2, $a2, 1
	bstrpick.d	$t0, $a7, 62, 61
	add.w	$t0, $a7, $t0
	srai.d	$t0, $t0, 2
	bge	$a2, $t0, .LBB29_13
.LBB29_4:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_8 Depth 2
	blt	$t3, $a1, .LBB29_3
# %bb.5:                                # %.lr.ph
                                        #   in Loop: Header=BB29_4 Depth=1
	move	$a7, $zero
	move	$t0, $zero
	bstrpick.d	$t1, $a2, 31, 2
	slli.d	$t1, $t1, 1
	slli.d	$t2, $a2, 3
	b	.LBB29_8
	.p2align	4, , 16
.LBB29_6:                               #   in Loop: Header=BB29_8 Depth=2
	ld.d	$t5, $a3, 80
	bstrpick.d	$t3, $t3, 32, 3
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $t5, $t3
	ldx.h	$t3, $t3, $t1
	mul.d	$t3, $t3, $a5
	add.d	$t3, $a0, $t3
	alsl.d	$t3, $t6, $t3, 3
	ld.d	$t3, $t3, 288
.LBB29_7:                               #   in Loop: Header=BB29_8 Depth=2
	ld.d	$t4, $t4, 8
	ld.d	$t5, $a3, 128
	ldx.d	$t4, $t4, $a7
	ldx.d	$t5, $t5, $a7
	stx.d	$t3, $t4, $t2
	stx.b	$a6, $t5, $a2
	ld.w	$t3, $a3, 4
	addi.d	$t0, $t0, 1
	bstrpick.d	$t4, $t3, 62, 61
	add.w	$t4, $t3, $t4
	srai.d	$t4, $t4, 2
	addi.d	$a7, $a7, 8
	bge	$t0, $t4, .LBB29_2
.LBB29_8:                               #   Parent Loop BB29_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $a3, 88
	ld.d	$t3, $t4, 0
	ldx.d	$t3, $t3, $a7
	ldx.b	$t5, $t3, $a2
	slli.d	$t3, $t0, 1
	bltz	$t5, .LBB29_10
# %bb.9:                                #   in Loop: Header=BB29_8 Depth=2
	ld.d	$t6, $a3, 80
	bstrpick.d	$t7, $t3, 32, 3
	slli.d	$t7, $t7, 3
	ldx.d	$t6, $t6, $t7
	ldx.h	$t6, $t6, $t1
	mul.d	$t6, $t6, $a5
	add.d	$t6, $a4, $t6
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $t6, $t5
	b	.LBB29_11
	.p2align	4, , 16
.LBB29_10:                              #   in Loop: Header=BB29_8 Depth=2
	move	$t5, $zero
.LBB29_11:                              #   in Loop: Header=BB29_8 Depth=2
	ld.d	$t6, $t4, 8
	ld.d	$t4, $a3, 104
	ldx.d	$t6, $t6, $a7
	ld.d	$t7, $t4, 0
	ldx.b	$t6, $t6, $a2
	ldx.d	$t7, $t7, $a7
	stx.d	$t5, $t7, $t2
	bgez	$t6, .LBB29_6
# %bb.12:                               #   in Loop: Header=BB29_8 Depth=2
	move	$t3, $zero
	b	.LBB29_7
.LBB29_13:                              # %._crit_edge37
	ret
.Lfunc_end29:
	.size	gen_field_ref_ids, .Lfunc_end29-gen_field_ref_ids
                                        # -- End function
	.globl	dpb_split_field                 # -- Begin function dpb_split_field
	.p2align	5
	.type	dpb_split_field,@function
dpb_split_field:                        # @dpb_split_field
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
	move	$fp, $a0
	ld.d	$a2, $a0, 48
	lu12i.w	$a6, 77
	ori	$s0, $a6, 1472
	ldx.w	$a1, $a2, $s0
	add.d	$a0, $a2, $s0
	ld.w	$a3, $a2, 4
	ld.w	$a4, $a0, 184
	bstrpick.d	$a5, $a1, 62, 59
	add.w	$a5, $a1, $a5
	srai.d	$s2, $a5, 4
	st.w	$a3, $fp, 40
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	beqz	$a4, .LBB30_2
# %bb.1:
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 56
	ori	$a0, $a6, 1608
	vstx	$vr0, $a2, $a0
	b	.LBB30_20
.LBB30_2:
	ld.w	$a2, $a0, 4
	ld.w	$a3, $a0, 8
	ld.w	$a4, $a0, 12
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 48
	add.d	$a4, $a1, $s0
	ldx.w	$a1, $a1, $s0
	ld.w	$a2, $a4, 4
	ld.w	$a3, $a4, 8
	ld.w	$a4, $a4, 12
	st.d	$a0, $fp, 56
	ori	$a0, $zero, 2
	ori	$s1, $zero, 2
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	lu12i.w	$a3, 77
	ld.d	$a2, $fp, 48
	ori	$s4, $a3, 1476
	ldx.w	$a1, $a2, $s4
	st.d	$a0, $fp, 64
	blt	$a1, $s1, .LBB30_5
# %bb.3:                                # %.lr.ph.preheader
	move	$s3, $zero
	move	$s5, $zero
	move	$s6, $zero
	ori	$s7, $a3, 1528
	.p2align	4, , 16
.LBB30_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s7
	add.d	$a1, $a2, $s0
	ld.d	$a1, $a1, 56
	ldx.d	$a0, $a0, $s3
	ldx.w	$a2, $a2, $s0
	ldx.d	$a1, $a1, $s5
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 48
	ldx.wu	$a0, $a2, $s4
	addi.d	$s6, $s6, 1
	srli.d	$a1, $a0, 31
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 1
	addi.d	$s5, $s5, 16
	addi.d	$s3, $s3, 8
	blt	$s6, $a0, .LBB30_4
.LBB30_5:                               # %.preheader552
	lu12i.w	$a1, 77
	ori	$s3, $a1, 1484
	ldx.w	$a0, $a2, $s3
	blt	$a0, $s1, .LBB30_8
# %bb.6:                                # %.lr.ph556.preheader
	move	$s1, $zero
	move	$s5, $zero
	move	$s6, $zero
	ori	$s7, $a1, 1480
	ori	$s8, $a1, 1536
	.p2align	4, , 16
.LBB30_7:                               # %.lr.ph556
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s8
	add.d	$a1, $a2, $s7
	ld.d	$a1, $a1, 56
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ldx.d	$a0, $a0, $s5
	ldx.w	$a2, $a2, $s7
	ldx.d	$a1, $a1, $s1
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.d	$a1, $fp, 48
	ldx.d	$a0, $a0, $s8
	add.d	$a2, $a1, $s7
	ld.d	$a2, $a2, 56
	ld.d	$a0, $a0, 8
	ld.d	$a2, $a2, 8
	ldx.d	$a0, $a0, $s5
	ldx.w	$a3, $a1, $s7
	ldx.d	$a1, $a2, $s1
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 48
	ldx.wu	$a0, $a2, $s3
	addi.d	$s6, $s6, 1
	srli.d	$a1, $a0, 31
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 1
	addi.d	$s5, $s5, 8
	addi.d	$s1, $s1, 16
	blt	$s6, $a0, .LBB30_7
.LBB30_8:                               # %.preheader551
	ldx.w	$a0, $a2, $s4
	ori	$s1, $zero, 2
	blt	$a0, $s1, .LBB30_11
# %bb.9:                                # %.lr.ph558.preheader
	move	$s5, $zero
	move	$s6, $zero
	ori	$s7, $zero, 8
	lu12i.w	$a0, 77
	ori	$s8, $a0, 1528
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB30_10:                              # %.lr.ph558
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 64
	ldx.d	$a0, $a0, $s8
	add.d	$a1, $a2, $s0
	ld.d	$a1, $a1, 56
	ldx.d	$a0, $a0, $s5
	ldx.w	$a2, $a2, $s0
	ldx.d	$a1, $a1, $s7
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 48
	ldx.wu	$a0, $a2, $s4
	addi.d	$s6, $s6, 1
	srli.d	$a1, $a0, 31
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 1
	addi.d	$s7, $s7, 16
	addi.d	$s5, $s5, 8
	blt	$s6, $a0, .LBB30_10
.LBB30_11:                              # %.preheader550
	ldx.w	$a0, $a2, $s3
	blt	$a0, $s1, .LBB30_14
# %bb.12:                               # %.lr.ph560.preheader
	move	$s1, $zero
	move	$s4, $zero
	ori	$s5, $zero, 8
	lu12i.w	$a0, 77
	ori	$s6, $a0, 1480
	ori	$s7, $a0, 1536
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB30_13:                              # %.lr.ph560
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 64
	ldx.d	$a0, $a0, $s7
	add.d	$a1, $a2, $s6
	ld.d	$a1, $a1, 56
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ldx.d	$a0, $a0, $s1
	ldx.w	$a2, $a2, $s6
	ldx.d	$a1, $a1, $s5
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	ld.d	$a1, $fp, 48
	ldx.d	$a0, $a0, $s7
	add.d	$a2, $a1, $s6
	ld.d	$a2, $a2, 56
	ld.d	$a0, $a0, 8
	ld.d	$a2, $a2, 8
	ldx.d	$a0, $a0, $s1
	ldx.w	$a3, $a1, $s6
	ldx.d	$a1, $a2, $s5
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 48
	ldx.wu	$a0, $a2, $s3
	addi.d	$s4, $s4, 1
	srli.d	$a1, $a0, 31
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 1
	addi.d	$s1, $s1, 8
	addi.d	$s5, $s5, 16
	blt	$s4, $a0, .LBB30_13
	b	.LBB30_15
.LBB30_14:
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
.LBB30_15:                              # %._crit_edge
	ld.d	$a1, $fp, 56
	lu12i.w	$a0, 77
	ori	$a3, $a0, 1448
	add.d	$a4, $a2, $a3
	ld.w	$a5, $a2, 8
	add.d	$a6, $a1, $a3
	ld.d	$a0, $fp, 64
	ld.w	$a7, $a2, 12
	ld.w	$t0, $a2, 16
	st.w	$a5, $a1, 4
	add.d	$t1, $a0, $a3
	st.w	$a7, $a0, 4
	st.w	$t0, $a1, 16
	st.w	$a7, $a0, 12
	st.w	$a7, $a1, 12
	st.w	$a5, $a0, 8
	ld.w	$a7, $a4, 8
	st.w	$a5, $a1, 8
	st.w	$t0, $a0, 16
	ld.w	$a5, $a4, 4
	st.w	$a7, $t1, 8
	ldx.w	$t0, $a2, $a3
	st.w	$a7, $a6, 8
	st.w	$a5, $t1, 4
	st.w	$a5, $a6, 4
	stx.w	$t0, $a0, $a3
	stx.w	$t0, $a1, $a3
	st.w	$t0, $fp, 32
	ld.w	$a3, $a4, 64
	ori	$a5, $zero, 1
	st.w	$a5, $t1, 60
	st.w	$a5, $a6, 60
	st.w	$a3, $t1, 64
	st.w	$a3, $a6, 64
	st.d	$a1, $a4, 160
	st.d	$a0, $a4, 168
	st.d	$a0, $a6, 168
	st.d	$a2, $a6, 176
	ld.w	$a3, $a4, 204
	ld.h	$a5, $a4, 20
	st.d	$a1, $t1, 160
	st.d	$a2, $t1, 176
	st.w	$a3, $t1, 204
	st.w	$a3, $a6, 204
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	bltz	$a5, .LBB30_20
# %bb.16:                               # %.preheader548.lr.ph
	move	$a3, $zero
	move	$a4, $zero
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 15, 0
	addi.d	$a0, $a0, 288
	addi.d	$a6, $a1, 288
	addi.d	$a7, $a2, 816
	.p2align	4, , 16
.LBB30_17:                              # %.preheader548
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_18 Depth 2
	ori	$t0, $zero, 16
	move	$t1, $a3
	.p2align	4, , 16
.LBB30_18:                              #   Parent Loop BB30_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$t2, $a7, $t1
	add.d	$t3, $a7, $t1
	stx.d	$t2, $a6, $t1
	ld.d	$t2, $t3, 8
	add.d	$t4, $a6, $t1
	st.d	$t2, $t4, 8
	ld.d	$t2, $t3, 528
	stx.d	$t2, $a0, $t1
	ld.d	$t2, $t3, 536
	add.d	$t5, $a0, $t1
	st.d	$t2, $t5, 8
	ld.d	$t2, $t3, -264
	st.d	$t2, $t4, -264
	ld.d	$t2, $t3, -256
	st.d	$t2, $t4, -256
	ld.d	$t2, $t3, 264
	st.d	$t2, $t5, -264
	ld.d	$t2, $t3, 272
	st.d	$t2, $t5, -256
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 16
	bnez	$t0, .LBB30_18
# %bb.19:                               #   in Loop: Header=BB30_17 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 1584
	bne	$a4, $a5, .LBB30_17
.LBB30_20:                              # %.loopexit549
	add.d	$a4, $a2, $s0
	ld.w	$a1, $a4, 4
	ori	$a3, $zero, 4
	slli.d	$a0, $s2, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	blt	$a1, $a3, .LBB30_45
# %bb.21:                               # %.lr.ph576
	ld.w	$a0, $a4, 0
	blt	$a0, $a3, .LBB30_45
# %bb.22:                               # %.lr.ph576.split.us
	move	$a5, $zero
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bstrpick.d	$a3, $a1, 62, 61
	add.w	$a3, $a1, $a3
	srai.d	$a1, $a3, 2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a7, $a2, 24
	lu12i.w	$a3, 19
	ori	$a3, $a3, 1400
	add.d	$a1, $a2, $a3
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$t1, $a0, 31, 2
	ld.w	$t2, $a4, 40
	addi.w	$t8, $zero, -1
	ori	$s2, $zero, 1584
	b	.LBB30_24
	.p2align	4, , 16
.LBB30_23:                              # %._crit_edge567.us
                                        #   in Loop: Header=BB30_24 Depth=1
	addi.d	$a5, $a5, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$a5, $a0, .LBB30_45
.LBB30_24:                              # %.lr.ph566.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_27 Depth 2
	move	$s3, $zero
	bstrpick.d	$a0, $a5, 31, 0
	bstrpick.d	$s4, $a5, 31, 2
	bstrpick.d	$a0, $a0, 2, 2
	bstrpick.d	$a3, $a5, 31, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	mul.d	$a3, $a3, $a1
	or	$s5, $a3, $a0
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 4
	masknez	$a3, $a1, $a0
	ori	$a1, $zero, 2
	maskeqz	$a6, $a1, $a0
	or	$s6, $a6, $a3
	ori	$t0, $zero, 264
	mul.d	$a3, $s6, $t0
	add.d	$s7, $a7, $a3
	add.d	$s8, $a2, $a3
	ori	$a1, $zero, 5
	masknez	$a6, $a1, $a0
	ori	$a1, $zero, 3
	maskeqz	$a0, $a1, $a0
	or	$ra, $a0, $a6
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a3
	mul.d	$a3, $ra, $t0
	add.d	$t3, $a1, $a3
	slli.d	$t4, $a5, 3
	b	.LBB30_27
	.p2align	4, , 16
.LBB30_25:                              #   in Loop: Header=BB30_27 Depth=2
	ld.d	$a1, $a4, 80
	slli.d	$a3, $s4, 3
	ldx.d	$a1, $a1, $a3
	addi.w	$a3, $a6, 0
	slli.d	$a3, $a3, 1
	ldx.h	$a1, $a1, $a3
	mul.d	$a1, $a1, $s2
	add.d	$a1, $a2, $a1
	alsl.d	$a1, $t0, $a1, 3
	ld.d	$a3, $a1, 288
.LBB30_26:                              #   in Loop: Header=BB30_27 Depth=2
	ld.d	$a1, $t7, 8
	ldx.d	$a1, $a1, $t4
	addi.d	$s3, $s3, 1
	stx.d	$a3, $a1, $t6
	beq	$s3, $t1, .LBB30_23
.LBB30_27:                              #   Parent Loop BB30_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a6, $s3, 31, 2
	slli.d	$t6, $s3, 3
	beqz	$t2, .LBB30_31
# %bb.28:                               #   in Loop: Header=BB30_27 Depth=2
	ld.d	$a3, $a4, 72
	alsl.w	$t0, $a6, $s5, 1
	ldx.bu	$a3, $a3, $t0
	ld.d	$t7, $a4, 88
	beqz	$a3, .LBB30_32
# %bb.29:                               #   in Loop: Header=BB30_27 Depth=2
	ld.d	$a3, $t7, 0
	ldx.d	$a3, $a3, $t4
	ldx.b	$t0, $a3, $s3
	slli.d	$s1, $s4, 3
	addi.w	$a6, $a6, 0
	slli.d	$t5, $t0, 3
	bltz	$t0, .LBB30_36
# %bb.30:                               #   in Loop: Header=BB30_27 Depth=2
	ld.d	$a3, $a4, 80
	ldx.d	$a3, $a3, $s1
	slli.d	$s0, $a6, 1
	ldx.h	$a3, $a3, $s0
	mul.d	$a3, $a3, $s2
	add.d	$a3, $s7, $a3
	ldx.d	$s0, $a3, $t5
	b	.LBB30_37
	.p2align	4, , 16
.LBB30_31:                              # %._crit_edge622
                                        #   in Loop: Header=BB30_27 Depth=2
	ld.d	$t7, $a4, 88
.LBB30_32:                              #   in Loop: Header=BB30_27 Depth=2
	ld.d	$a1, $t7, 0
	ldx.d	$a1, $a1, $t4
	ldx.b	$t0, $a1, $s3
	move	$a3, $t8
	bltz	$t0, .LBB30_34
# %bb.33:                               #   in Loop: Header=BB30_27 Depth=2
	ld.d	$a1, $a4, 80
	slli.d	$a3, $s4, 3
	ldx.d	$a1, $a1, $a3
	addi.w	$a3, $a6, 0
	slli.d	$a3, $a3, 1
	ldx.h	$a1, $a1, $a3
	mul.d	$a1, $a1, $s2
	add.d	$a1, $a7, $a1
	slli.d	$a3, $t0, 3
	ldx.d	$a3, $a1, $a3
.LBB30_34:                              #   in Loop: Header=BB30_27 Depth=2
	ld.d	$a1, $t7, 8
	ld.d	$t7, $a4, 104
	ldx.d	$a1, $a1, $t4
	ld.d	$t5, $t7, 0
	ldx.b	$t0, $a1, $s3
	ldx.d	$a1, $t5, $t4
	stx.d	$a3, $a1, $t6
	bgez	$t0, .LBB30_25
# %bb.35:                               #   in Loop: Header=BB30_27 Depth=2
	move	$a3, $t8
	b	.LBB30_26
.LBB30_36:                              #   in Loop: Header=BB30_27 Depth=2
	move	$s0, $zero
.LBB30_37:                              #   in Loop: Header=BB30_27 Depth=2
	ld.d	$a3, $t7, 8
	ld.d	$t7, $a4, 104
	ldx.d	$a3, $a3, $t4
	slli.d	$a1, $s6, 3
	ldx.d	$a1, $t7, $a1
	ldx.b	$a3, $a3, $s3
	ldx.d	$a1, $a1, $t4
	stx.d	$s0, $a1, $t6
	bltz	$a3, .LBB30_39
# %bb.38:                               #   in Loop: Header=BB30_27 Depth=2
	ld.d	$a1, $a4, 80
	ldx.d	$a1, $a1, $s1
	slli.d	$s0, $a6, 1
	ldx.h	$a1, $a1, $s0
	mul.d	$a1, $a1, $s2
	add.d	$a1, $s8, $a1
	alsl.d	$a1, $a3, $a1, 3
	ld.d	$s0, $a1, 288
	b	.LBB30_40
.LBB30_39:                              #   in Loop: Header=BB30_27 Depth=2
	move	$s0, $zero
.LBB30_40:                              #   in Loop: Header=BB30_27 Depth=2
	slli.d	$a1, $ra, 3
	ldx.d	$a1, $t7, $a1
	ldx.d	$a1, $a1, $t4
	stx.d	$s0, $a1, $t6
	bltz	$t0, .LBB30_43
# %bb.41:                               #   in Loop: Header=BB30_27 Depth=2
	ld.d	$a1, $a4, 80
	ldx.d	$a1, $a1, $s1
	slli.d	$t0, $a6, 1
	ldx.h	$a1, $a1, $t0
	mul.d	$a1, $a1, $s2
	add.d	$a1, $a0, $a1
	ldx.d	$t0, $a1, $t5
	ld.d	$a1, $t7, 0
	ldx.d	$a1, $a1, $t4
	stx.d	$t0, $a1, $t6
	bltz	$a3, .LBB30_44
.LBB30_42:                              #   in Loop: Header=BB30_27 Depth=2
	ld.d	$a1, $a4, 80
	ldx.d	$a1, $a1, $s1
	slli.d	$a6, $a6, 1
	ldx.h	$a1, $a1, $a6
	mul.d	$a1, $a1, $s2
	add.d	$a1, $t3, $a1
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a1, $a3
	b	.LBB30_26
.LBB30_43:                              #   in Loop: Header=BB30_27 Depth=2
	move	$t0, $zero
	ld.d	$a1, $t7, 0
	ldx.d	$a1, $a1, $t4
	stx.d	$t0, $a1, $t6
	bgez	$a3, .LBB30_42
.LBB30_44:                              #   in Loop: Header=BB30_27 Depth=2
	move	$a3, $zero
	b	.LBB30_26
.LBB30_45:                              # %._crit_edge577
	ld.w	$a0, $a4, 184
	beqz	$a0, .LBB30_48
# %bb.46:
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
.LBB30_47:                              # %.loopexit547.thread632
	add.d	$a0, $a2, $s7
	ld.d	$a0, $a0, 128
	ldx.w	$a1, $a2, $s7
	ld.d	$a0, $a0, 0
	mul.w	$a1, $a1, $a3
	bstrpick.d	$a2, $a1, 62, 59
	add.w	$a1, $a1, $a2
	srai.d	$a2, $a1, 4
	move	$a1, $zero
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
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB30_48:
	ld.w	$a0, $a4, 40
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB30_57
# %bb.49:                               # %.preheader546
	ori	$a0, $zero, 8
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	lu12i.w	$a1, 77
	blt	$a3, $a0, .LBB30_81
# %bb.50:                               # %.lr.ph584
	move	$a4, $zero
	lu12i.w	$a0, 131071
	ori	$a0, $a0, 4094
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 262143
	ori	$a7, $a0, 4094
	ori	$t0, $a1, 1544
	ori	$t1, $a1, 1600
	ori	$t2, $zero, 1
	ori	$t3, $a1, 1560
	ori	$t4, $a1, 1576
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	b	.LBB30_52
	.p2align	4, , 16
.LBB30_51:                              # %._crit_edge582
                                        #   in Loop: Header=BB30_52 Depth=1
	lu12i.w	$t6, 77
	ori	$a0, $t6, 1476
	ldx.w	$a3, $a2, $a0
	addi.d	$a4, $a4, 1
	bstrpick.d	$a1, $a3, 62, 60
	add.w	$a1, $a3, $a1
	srai.d	$a1, $a1, 3
	bge	$a4, $a1, .LBB30_58
.LBB30_52:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_55 Depth 2
	ldx.w	$a0, $a2, $s7
	ori	$a1, $zero, 4
	blt	$a0, $a1, .LBB30_51
# %bb.53:                               # %.lr.ph581
                                        #   in Loop: Header=BB30_52 Depth=1
	move	$a3, $zero
	move	$t5, $zero
	move	$t6, $zero
	srli.d	$a0, $a4, 1
	slli.d	$t7, $a4, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	move	$a1, $a4
	bstrins.d	$a1, $a0, 63, 2
	ori	$a0, $a1, 4
	bstrpick.d	$t8, $a4, 31, 2
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	mul.d	$t8, $t8, $a5
	bstrpick.d	$s0, $a4, 1, 1
	or	$t8, $t8, $s0
	slli.d	$s2, $a4, 3
	slli.d	$s3, $t7, 3
	slli.d	$s4, $a0, 3
	slli.d	$s5, $a1, 3
	b	.LBB30_55
	.p2align	4, , 16
.LBB30_54:                              #   in Loop: Header=BB30_55 Depth=2
	ldx.w	$a0, $a2, $s7
	addi.d	$t6, $t6, 1
	bstrpick.d	$a1, $a0, 62, 61
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	addi.w	$t5, $t5, 1
	addi.d	$a3, $a3, 8
	bge	$t6, $a0, .LBB30_51
.LBB30_55:                              #   Parent Loop BB30_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a0, $a2, $t0
	srli.d	$a1, $t5, 1
	and	$a1, $a1, $a7
	add.w	$a1, $a1, $t8
	ldx.bu	$a0, $a0, $a1
	beqz	$a0, .LBB30_54
# %bb.56:                               #   in Loop: Header=BB30_55 Depth=2
	ldx.d	$a0, $s1, $t1
	ldx.d	$a0, $a0, $s2
	stx.b	$t2, $a0, $t6
	ld.d	$a0, $fp, 64
	ldx.d	$a0, $a0, $t1
	ldx.d	$a0, $a0, $s2
	stx.b	$t2, $a0, $t6
	ld.d	$a0, $fp, 48
	ldx.d	$a0, $a0, $t1
	alsl.d	$a0, $t7, $a0, 3
	ld.d	$a0, $a0, 8
	stx.b	$t2, $a0, $t6
	ld.d	$a0, $fp, 48
	ldx.d	$a0, $a0, $t1
	ldx.d	$a0, $a0, $s3
	stx.b	$t2, $a0, $t6
	ld.d	$a0, $fp, 48
	add.d	$a1, $a0, $t3
	ld.d	$a1, $a1, 24
	ld.d	$a2, $fp, 64
	ld.d	$s0, $a1, 0
	add.d	$s1, $a2, $t3
	ld.d	$s1, $s1, 24
	ldx.d	$s0, $s0, $s4
	ld.d	$s6, $s1, 0
	ldx.d	$s0, $s0, $a3
	ldx.d	$s6, $s6, $s2
	ld.h	$s7, $s0, 0
	ldx.d	$s6, $s6, $a3
	ld.d	$a1, $a1, 8
	st.h	$s7, $s6, 0
	ldx.d	$a1, $a1, $s4
	ld.d	$s1, $s1, 8
	ld.h	$s0, $s0, 2
	ldx.d	$a1, $a1, $a3
	ldx.d	$s1, $s1, $s2
	st.h	$s0, $s6, 2
	ldx.d	$a0, $a0, $t3
	ld.h	$s0, $a1, 0
	ldx.d	$s1, $s1, $a3
	ld.d	$a0, $a0, 0
	ldx.d	$a2, $a2, $t3
	st.h	$s0, $s1, 0
	ld.h	$a1, $a1, 2
	ldx.d	$a0, $a0, $s4
	ld.d	$a2, $a2, 0
	st.h	$a1, $s1, 2
	ldx.b	$a0, $a0, $t6
	ldx.d	$a1, $a2, $s2
	stx.b	$a0, $a1, $t6
	ld.d	$a0, $fp, 48
	ldx.d	$a0, $a0, $t3
	ld.d	$a1, $fp, 64
	ld.d	$a0, $a0, 8
	ldx.d	$a1, $a1, $t3
	ldx.d	$a0, $a0, $s4
	ld.d	$a1, $a1, 8
	ldx.b	$a0, $a0, $t6
	ldx.d	$a1, $a1, $s2
	stx.b	$a0, $a1, $t6
	ld.d	$a0, $fp, 48
	add.d	$a1, $a0, $t3
	ld.d	$a2, $a1, 16
	ld.d	$a1, $a1, 24
	ld.d	$s0, $fp, 56
	ld.d	$s1, $a2, 32
	ld.d	$s6, $fp, 64
	ld.d	$s7, $a1, 0
	add.d	$s8, $s0, $t3
	ld.d	$s8, $s8, 24
	ldx.d	$s6, $s6, $t4
	ldx.d	$s1, $s1, $s4
	ldx.d	$s7, $s7, $s5
	ld.d	$ra, $s8, 0
	ld.d	$a5, $s6, 0
	ldx.d	$s1, $s1, $a3
	ldx.d	$s7, $s7, $a3
	ldx.d	$ra, $ra, $s2
	ldx.d	$a5, $a5, $s2
	ld.h	$a6, $s7, 0
	ldx.d	$ra, $ra, $a3
	stx.d	$s1, $a5, $a3
	ld.d	$a2, $a2, 40
	ld.d	$a1, $a1, 8
	st.h	$a6, $ra, 0
	ld.h	$a5, $s7, 2
	ldx.d	$a2, $a2, $s4
	ldx.d	$a1, $a1, $s5
	ld.d	$a6, $s8, 8
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	st.h	$a5, $ra, 2
	ldx.d	$a2, $a2, $a3
	ldx.d	$a1, $a1, $a3
	ldx.d	$a5, $a6, $s2
	ld.d	$a6, $s6, 8
	ldx.d	$a0, $a0, $t3
	ld.h	$s1, $a1, 0
	ldx.d	$a5, $a5, $a3
	ldx.d	$a6, $a6, $s2
	ld.d	$a0, $a0, 0
	ldx.d	$s0, $s0, $t3
	st.h	$s1, $a5, 0
	ld.h	$a1, $a1, 2
	ldx.d	$a0, $a0, $s5
	ld.d	$s0, $s0, 0
	stx.d	$a2, $a6, $a3
	st.h	$a1, $a5, 2
	ldx.b	$a0, $a0, $t6
	ldx.d	$a1, $s0, $s2
	stx.b	$a0, $a1, $t6
	ld.d	$a0, $fp, 48
	ldx.d	$a0, $a0, $t3
	ld.d	$a1, $fp, 56
	ld.d	$a0, $a0, 8
	ldx.d	$a1, $a1, $t3
	ldx.d	$a0, $a0, $s5
	ld.d	$a1, $a1, 8
	ldx.b	$a0, $a0, $t6
	ldx.d	$a1, $a1, $s2
	stx.b	$a0, $a1, $t6
	ld.d	$a2, $fp, 48
	ldx.d	$a0, $a2, $t4
	ld.d	$s1, $fp, 56
	ld.d	$a1, $a0, 16
	ldx.d	$a5, $s1, $t4
	ldx.d	$a1, $a1, $s5
	ld.d	$a6, $a5, 0
	ld.d	$a0, $a0, 24
	ldx.d	$a1, $a1, $a3
	ldx.d	$a6, $a6, $s2
	ldx.d	$a0, $a0, $s5
	ld.d	$a5, $a5, 8
	stx.d	$a1, $a6, $a3
	ldx.d	$a0, $a0, $a3
	ldx.d	$a1, $a5, $s2
	stx.d	$a0, $a1, $a3
	b	.LBB30_54
.LBB30_57:
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	lu12i.w	$t6, 77
	b	.LBB30_59
.LBB30_58:                              # %.loopexit547
	add.d	$a0, $a2, $a0
	ld.w	$a0, $a0, 180
	bnez	$a0, .LBB30_47
.LBB30_59:                              # %.preheader
	ori	$a0, $zero, 8
	blt	$a3, $a0, .LBB30_81
# %bb.60:                               # %.lr.ph593
	move	$a1, $zero
	ori	$a4, $t6, 1512
	ori	$a5, $t6, 1600
	ori	$a6, $t6, 1560
	ori	$a7, $t6, 1584
	addi.w	$t0, $zero, -1
	lu12i.w	$a0, 524287
	ori	$t2, $a0, 4094
	lu12i.w	$a0, 38
	ori	$a0, $a0, 3040
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 58
	ori	$a0, $a0, 320
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB30_62
	.p2align	4, , 16
.LBB30_61:                              # %._crit_edge589
                                        #   in Loop: Header=BB30_62 Depth=1
	ori	$a0, $t6, 1476
	ldx.w	$a0, $a2, $a0
	addi.d	$a1, $a1, 1
	bstrpick.d	$a3, $a0, 62, 60
	add.w	$a0, $a0, $a3
	srai.d	$a0, $a0, 3
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB30_81
.LBB30_62:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_67 Depth 2
	ldx.w	$a0, $a2, $s7
	ori	$a3, $zero, 4
	blt	$a0, $a3, .LBB30_61
# %bb.63:                               # %.lr.ph588
                                        #   in Loop: Header=BB30_62 Depth=1
	move	$t8, $zero
	move	$s2, $zero
	move	$s3, $zero
	bstrpick.d	$a0, $a1, 31, 0
	bstrpick.d	$s4, $a1, 31, 1
	bstrpick.d	$a0, $a0, 1, 1
	bstrpick.d	$s0, $a1, 30, 1
	move	$s1, $s4
	bstrins.d	$s1, $s0, 63, 1
	slli.w	$s0, $s1, 1
	bstrpick.d	$s1, $a1, 31, 2
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	mul.d	$s1, $s1, $a3
	or	$s5, $s1, $a0
	slli.d	$s6, $a1, 1
	slli.d	$s7, $s6, 3
	slli.d	$s8, $a1, 3
	slli.d	$ra, $s0, 3
	b	.LBB30_67
	.p2align	4, , 16
.LBB30_64:                              #   in Loop: Header=BB30_67 Depth=2
	ld.d	$a0, $a0, 88
	ldx.d	$a0, $a0, $s7
	stx.b	$a2, $a0, $s3
	ld.d	$a0, $fp, 48
	ldx.d	$a0, $a0, $a5
	alsl.d	$a0, $s6, $a0, 3
	ld.d	$a0, $a0, 8
.LBB30_65:                              #   in Loop: Header=BB30_67 Depth=2
	stx.b	$a2, $a0, $s3
.LBB30_66:                              #   in Loop: Header=BB30_67 Depth=2
	ld.d	$a2, $fp, 48
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a0, $a2, $a0
	addi.d	$s3, $s3, 1
	bstrpick.d	$a3, $a0, 62, 61
	add.w	$a0, $a0, $a3
	srai.d	$a0, $a0, 2
	addi.d	$s2, $s2, 8
	addi.w	$t8, $t8, 1
	bge	$s3, $a0, .LBB30_61
.LBB30_67:                              #   Parent Loop BB30_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$s0, $a2, $a4
	add.d	$a0, $a2, $a4
	beqz	$s0, .LBB30_69
# %bb.68:                               #   in Loop: Header=BB30_67 Depth=2
	ld.d	$a2, $a0, 32
	bstrpick.d	$s0, $t8, 31, 1
	bstrpick.d	$s0, $s0, 29, 1
	alsl.w	$s0, $s0, $s5, 1
	ldx.bu	$a2, $a2, $s0
	bnez	$a2, .LBB30_64
.LBB30_69:                              #   in Loop: Header=BB30_67 Depth=2
	ld.d	$a0, $a0, 88
	ldx.d	$a0, $a0, $s7
	stx.b	$zero, $a0, $s3
	ld.d	$a0, $fp, 48
	ldx.d	$a0, $a0, $a5
	alsl.d	$a0, $s6, $a0, 3
	ld.d	$a0, $a0, 8
	stx.b	$zero, $a0, $s3
	ld.d	$a0, $fp, 64
	ldx.d	$a0, $a0, $a5
	ldx.d	$a0, $a0, $s8
	stx.b	$zero, $a0, $s3
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $a5
	ldx.d	$a0, $a0, $s8
	stx.b	$zero, $a0, $s3
	ld.d	$a0, $fp, 48
	srli.d	$a2, $t8, 1
	bstrpick.d	$s0, $t8, 30, 1
	add.d	$s1, $a0, $a6
	ld.d	$a3, $s1, 24
	ld.d	$s1, $fp, 64
	bstrins.d	$a2, $s0, 63, 1
	ld.d	$s0, $fp, 56
	ld.d	$t4, $a3, 0
	add.d	$t6, $s1, $a6
	ld.d	$t6, $t6, 24
	ldx.d	$s0, $s0, $a7
	ldx.d	$t4, $t4, $ra
	addi.w	$a2, $a2, 0
	ld.d	$t3, $t6, 0
	ld.d	$t5, $s0, 0
	slli.d	$t7, $a2, 3
	ldx.d	$t4, $t4, $t7
	ldx.d	$t3, $t3, $s8
	ldx.d	$t5, $t5, $s8
	ld.h	$t1, $t4, 0
	ldx.d	$t3, $t3, $s2
	ldx.d	$t5, $t5, $s2
	ld.d	$a3, $a3, 8
	st.h	$t1, $t3, 0
	st.h	$t1, $t5, 0
	ld.h	$t1, $t4, 2
	ldx.d	$a3, $a3, $ra
	ld.d	$t4, $t6, 8
	ld.d	$t6, $s0, 8
	st.h	$t1, $t3, 2
	ldx.d	$a3, $a3, $t7
	ldx.d	$t3, $t4, $s8
	ldx.d	$t4, $t6, $s8
	lu12i.w	$t6, 77
	st.h	$t1, $t5, 2
	ld.h	$t1, $a3, 0
	ldx.d	$t3, $t3, $s2
	ldx.d	$t4, $t4, $s2
	ldx.d	$a0, $a0, $a6
	st.h	$t1, $t3, 0
	st.h	$t1, $t4, 0
	ld.d	$a0, $a0, 0
	ldx.d	$t1, $s1, $a6
	ld.h	$a3, $a3, 2
	ldx.d	$a0, $a0, $ra
	ld.d	$t1, $t1, 0
	st.h	$a3, $t3, 2
	st.h	$a3, $t4, 2
	ldx.b	$s1, $a0, $a2
	ldx.d	$s0, $t1, $s8
	ori	$a0, $t6, 1576
	beq	$s1, $t0, .LBB30_72
# %bb.70:                               #   in Loop: Header=BB30_67 Depth=2
	stx.b	$s1, $s0, $s3
	ld.d	$a3, $fp, 56
	ldx.d	$a3, $a3, $a6
	ld.d	$a3, $a3, 0
	ldx.d	$a3, $a3, $s8
	stx.b	$s1, $a3, $s3
	bltz	$s1, .LBB30_73
# %bb.71:                               #   in Loop: Header=BB30_67 Depth=2
	ld.d	$a3, $fp, 48
	ori	$t1, $t6, 1552
	ldx.d	$t1, $a3, $t1
	slli.d	$t3, $s4, 3
	ldx.d	$t1, $t1, $t3
	srli.d	$t3, $s3, 1
	ld.d	$t4, $fp, 56
	and	$t3, $t3, $t2
	ldx.h	$t1, $t1, $t3
	ldx.d	$t3, $t4, $a0
	ori	$t4, $zero, 1584
	mul.d	$t1, $t1, $t4
	add.d	$a3, $a3, $t1
	ld.d	$t1, $t3, 0
	alsl.d	$a3, $s1, $a3, 3
	lu12i.w	$t3, 38
	ori	$t3, $t3, 2776
	ldx.d	$t3, $a3, $t3
	ldx.d	$t1, $t1, $s8
	stx.d	$t3, $t1, $s2
	lu12i.w	$t1, 58
	ori	$t1, $t1, 56
	ldx.d	$s0, $a3, $t1
	b	.LBB30_74
	.p2align	4, , 16
.LBB30_72:                              #   in Loop: Header=BB30_67 Depth=2
	ori	$t1, $zero, 255
	stx.b	$t1, $s0, $s3
	ld.d	$a3, $fp, 56
	ldx.d	$a3, $a3, $a6
	ld.d	$a3, $a3, 0
	ldx.d	$a3, $a3, $s8
	stx.b	$t1, $a3, $s3
	b	.LBB30_75
.LBB30_73:                              # %.critedge
                                        #   in Loop: Header=BB30_67 Depth=2
	ld.d	$a3, $fp, 56
	ldx.d	$a3, $a3, $a0
	ld.d	$a3, $a3, 0
	ldx.d	$a3, $a3, $s8
	move	$s0, $zero
	stx.d	$zero, $a3, $s2
.LBB30_74:                              #   in Loop: Header=BB30_67 Depth=2
	ld.d	$a3, $fp, 64
	ldx.d	$a3, $a3, $a0
	ld.d	$a3, $a3, 0
	ldx.d	$a3, $a3, $s8
	stx.d	$s0, $a3, $s2
.LBB30_75:                              #   in Loop: Header=BB30_67 Depth=2
	ld.d	$a3, $fp, 48
	ldx.d	$a3, $a3, $a6
	ld.d	$t1, $fp, 64
	ld.d	$a3, $a3, 8
	ldx.d	$t1, $t1, $a6
	ldx.d	$a3, $a3, $ra
	ld.d	$t1, $t1, 8
	ldx.b	$a2, $a3, $a2
	ldx.d	$s0, $t1, $s8
	beq	$a2, $t0, .LBB30_78
# %bb.76:                               #   in Loop: Header=BB30_67 Depth=2
	stx.b	$a2, $s0, $s3
	ld.d	$a3, $fp, 56
	ldx.d	$a3, $a3, $a6
	ld.d	$a3, $a3, 8
	ldx.d	$a3, $a3, $s8
	stx.b	$a2, $a3, $s3
	bltz	$a2, .LBB30_79
# %bb.77:                               #   in Loop: Header=BB30_67 Depth=2
	ld.d	$a3, $fp, 48
	ori	$t1, $t6, 1552
	ldx.d	$t1, $a3, $t1
	slli.d	$t3, $s4, 3
	ldx.d	$t1, $t1, $t3
	ld.d	$t3, $fp, 56
	srli.d	$t4, $s3, 1
	and	$t4, $t4, $t2
	ldx.h	$t1, $t1, $t4
	ldx.d	$t3, $t3, $a0
	ori	$t4, $zero, 1584
	mul.d	$t1, $t1, $t4
	ld.d	$t3, $t3, 8
	add.d	$a3, $a3, $t1
	alsl.d	$a2, $a2, $a3, 3
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a3, $a2, $a3
	ldx.d	$t1, $t3, $s8
	stx.d	$a3, $t1, $s2
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $a3
	b	.LBB30_80
	.p2align	4, , 16
.LBB30_78:                              #   in Loop: Header=BB30_67 Depth=2
	ori	$a2, $zero, 255
	stx.b	$a2, $s0, $s3
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $a6
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s8
	b	.LBB30_65
.LBB30_79:                              # %.critedge544
                                        #   in Loop: Header=BB30_67 Depth=2
	ld.d	$a2, $fp, 56
	ldx.d	$a2, $a2, $a0
	ld.d	$a2, $a2, 8
	ldx.d	$a3, $a2, $s8
	move	$a2, $zero
	stx.d	$zero, $a3, $s2
.LBB30_80:                              #   in Loop: Header=BB30_67 Depth=2
	ld.d	$a3, $fp, 64
	ldx.d	$a0, $a3, $a0
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s8
	stx.d	$a2, $a0, $s2
	b	.LBB30_66
.LBB30_81:                              # %.loopexit
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
.Lfunc_end30:
	.size	dpb_split_field, .Lfunc_end30-dpb_split_field
                                        # -- End function
	.globl	dpb_combine_field_yuv           # -- Begin function dpb_combine_field_yuv
	.p2align	5
	.type	dpb_combine_field_yuv,@function
dpb_combine_field_yuv:                  # @dpb_combine_field_yuv
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
	move	$fp, $a0
	ld.d	$a0, $a0, 56
	lu12i.w	$s0, 77
	ori	$s1, $s0, 1472
	add.d	$a2, $a0, $s1
	ldx.w	$a1, $a0, $s1
	ld.w	$a0, $a2, 4
	ld.w	$a4, $a2, 12
	ld.w	$a3, $a2, 8
	slli.w	$a2, $a0, 1
	slli.w	$a4, $a4, 1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 56
	ori	$s2, $s0, 1476
	ldx.w	$a2, $a1, $s2
	st.d	$a0, $fp, 48
	blez	$a2, .LBB31_3
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	move	$s4, $zero
	move	$s5, $zero
	ori	$s6, $s0, 1528
	.p2align	4, , 16
.LBB31_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 48
	ldx.d	$a0, $a0, $s6
	add.d	$a2, $a1, $s1
	ld.d	$a2, $a2, 56
	ldx.d	$a0, $a0, $s4
	ldx.w	$a3, $a1, $s1
	ldx.d	$a1, $a2, $s3
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	ld.d	$a1, $fp, 64
	ldx.d	$a0, $a0, $s6
	add.d	$a2, $a1, $s1
	ld.d	$a2, $a2, 56
	add.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 8
	ldx.w	$a3, $a1, $s1
	ldx.d	$a1, $a2, $s3
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 56
	ldx.w	$a0, $a1, $s2
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 16
	addi.d	$s3, $s3, 8
	blt	$s5, $a0, .LBB31_2
.LBB31_3:                               # %.preheader
	ori	$s1, $s0, 1484
	ldx.w	$a0, $a1, $s1
	blez	$a0, .LBB31_6
# %bb.4:                                # %.lr.ph90
	move	$s2, $zero
	move	$s3, $zero
	move	$s4, $zero
	ori	$s5, $s0, 1480
	ori	$s6, $s0, 1536
	.p2align	4, , 16
.LBB31_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 48
	ldx.d	$a0, $a0, $s6
	add.d	$a2, $a1, $s5
	ld.d	$a2, $a2, 56
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a2, 0
	ldx.d	$a0, $a0, $s3
	ldx.w	$a3, $a1, $s5
	ldx.d	$a1, $a2, $s2
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	ld.d	$a1, $fp, 64
	ldx.d	$a0, $a0, $s6
	add.d	$a2, $a1, $s5
	ld.d	$a2, $a2, 56
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a2, 0
	add.d	$a0, $a0, $s3
	ld.d	$a0, $a0, 8
	ldx.w	$a3, $a1, $s5
	ldx.d	$a1, $a2, $s2
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	ld.d	$a1, $fp, 56
	ldx.d	$a0, $a0, $s6
	add.d	$a2, $a1, $s5
	ld.d	$a2, $a2, 56
	ld.d	$a0, $a0, 8
	ld.d	$a2, $a2, 8
	ldx.d	$a0, $a0, $s3
	ldx.w	$a3, $a1, $s5
	ldx.d	$a1, $a2, $s2
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	ld.d	$a1, $fp, 64
	ldx.d	$a0, $a0, $s6
	add.d	$a2, $a1, $s5
	ld.d	$a2, $a2, 56
	ld.d	$a0, $a0, 8
	ld.d	$a2, $a2, 8
	add.d	$a0, $a0, $s3
	ld.d	$a0, $a0, 8
	ldx.w	$a3, $a1, $s5
	ldx.d	$a1, $a2, $s2
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 56
	ldx.w	$a0, $a1, $s1
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 16
	addi.d	$s2, $s2, 8
	blt	$s4, $a0, .LBB31_5
.LBB31_6:                               # %._crit_edge
	ld.d	$a3, $fp, 64
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a3, 4
	ori	$a4, $s0, 1452
	slt	$a5, $a0, $a2
	masknez	$a6, $a2, $a5
	maskeqz	$a5, $a0, $a5
	ld.d	$a0, $fp, 48
	add.d	$a2, $a1, $a4
	add.d	$a4, $a3, $a4
	or	$a5, $a5, $a6
	st.w	$a5, $a0, 16
	st.w	$a5, $a0, 4
	ld.w	$a6, $a1, 4
	st.w	$a5, $fp, 40
	st.w	$a5, $a1, 16
	st.w	$a5, $a3, 16
	st.w	$a6, $a0, 8
	st.w	$a6, $a3, 8
	ld.w	$a6, $a3, 4
	ld.w	$a7, $a2, 4
	ori	$a5, $s0, 1448
	add.d	$a5, $a0, $a5
	st.w	$a6, $a0, 12
	st.w	$a6, $a1, 12
	beqz	$a7, .LBB31_10
# %bb.7:
	ld.w	$a6, $a4, 4
	sltu	$a6, $zero, $a6
	ld.w	$a7, $a2, 0
	st.w	$a6, $a5, 8
	beqz	$a7, .LBB31_11
.LBB31_8:
	ld.w	$a6, $a4, 0
	sltu	$a7, $zero, $a6
	st.w	$a7, $a5, 4
	beqz	$a6, .LBB31_12
# %bb.9:
	ld.w	$a6, $fp, 32
	st.w	$a6, $a5, 0
	b	.LBB31_12
.LBB31_10:
	move	$a6, $zero
	ld.w	$a7, $a2, 0
	st.w	$a6, $a5, 8
	bnez	$a7, .LBB31_8
.LBB31_11:                              # %.thread
	st.w	$zero, $a5, 4
.LBB31_12:
	st.d	$a1, $a5, 160
	ld.w	$a1, $a2, 200
	ld.w	$a6, $a2, 208
	st.d	$a3, $a5, 168
	st.w	$zero, $a5, 60
	st.w	$a1, $a5, 204
	st.w	$a6, $a5, 212
	beqz	$a6, .LBB31_14
# %bb.13:
	vld	$vr0, $a2, 212
	vst	$vr0, $a5, 216
.LBB31_14:
	st.d	$a0, $a4, 172
	st.d	$a0, $a2, 172
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
.Lfunc_end31:
	.size	dpb_combine_field_yuv, .Lfunc_end31-dpb_combine_field_yuv
                                        # -- End function
	.globl	dpb_combine_field               # -- Begin function dpb_combine_field
	.p2align	5
	.type	dpb_combine_field,@function
dpb_combine_field:                      # @dpb_combine_field
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
	move	$fp, $a0
	pcaddu18i	$ra, %call36(dpb_combine_field_yuv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 56
	ld.d	$a2, $fp, 64
	lu12i.w	$a0, 77
	ori	$a3, $a0, 1468
	ldx.h	$a4, $a1, $a3
	ldx.h	$a5, $a2, $a3
	slt	$a6, $a5, $a4
	masknez	$a5, $a5, $a6
	maskeqz	$a4, $a4, $a6
	or	$t1, $a4, $a5
	add.d	$a3, $a1, $a3
	bltz	$t1, .LBB32_11
# %bb.1:                                # %.preheader202.lr.ph
	ld.d	$a4, $fp, 48
	move	$a5, $zero
	addi.d	$a6, $a1, 24
	addi.d	$a7, $a2, 24
	addi.d	$t0, $a4, 24
	addi.d	$t1, $t1, 1
	bstrpick.d	$t1, $t1, 15, 0
	ori	$t2, $zero, 1584
	mul.d	$t5, $t1, $t2
	add.d	$t4, $a4, $t5
	addi.d	$t7, $t4, -1432
	addi.d	$t3, $t5, -1312
	add.d	$t8, $a1, $t3
	add.d	$s0, $a2, $t3
	addi.d	$t3, $a4, 288
	addi.d	$t6, $t4, -1168
	addi.d	$t4, $a1, 288
	addi.d	$s1, $t5, -1048
	add.d	$t5, $a1, $s1
	sltu	$t5, $t3, $t5
	sltu	$s2, $t4, $t6
	and	$s2, $t5, $s2
	addi.d	$t5, $a2, 288
	add.d	$s1, $a2, $s1
	sltu	$s1, $t3, $s1
	sltu	$t6, $t5, $t6
	and	$t6, $s1, $t6
	or	$t6, $s2, $t6
	sltu	$t8, $t0, $t8
	sltu	$s1, $a6, $t7
	and	$t8, $t8, $s1
	sltu	$s0, $t0, $s0
	sltu	$t7, $a7, $t7
	and	$t7, $s0, $t7
	or	$t7, $t8, $t7
	ori	$t8, $zero, 256
	move	$s0, $t0
	move	$s1, $a7
	move	$s2, $a6
	b	.LBB32_4
	.p2align	4, , 16
.LBB32_2:                               # %vector.body
                                        #   in Loop: Header=BB32_4 Depth=1
	add.d	$s5, $a6, $s3
	ld.d	$s6, $s5, 0
	ld.d	$s7, $s5, 16
	add.d	$s4, $a7, $s3
	add.d	$s3, $t0, $s3
	vinsgr2vr.d	$vr0, $s6, 0
	vinsgr2vr.d	$vr0, $s7, 1
	vsrli.d	$vr1, $vr0, 63
	ld.d	$s6, $s4, 0
	ld.d	$s7, $s4, 16
	vadd.d	$vr0, $vr0, $vr1
	vbitclri.d	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $s6, 0
	vinsgr2vr.d	$vr1, $s7, 1
	vsrli.d	$vr2, $vr1, 63
	vadd.d	$vr1, $vr1, $vr2
	vbitclri.d	$vr1, $vr1, 0
	ld.d	$s6, $s5, 32
	ld.d	$s7, $s5, 48
	vmin.d	$vr0, $vr0, $vr1
	vst	$vr0, $s3, 0
	vinsgr2vr.d	$vr0, $s6, 0
	vinsgr2vr.d	$vr0, $s7, 1
	vsrli.d	$vr1, $vr0, 63
	ld.d	$s6, $s4, 32
	ld.d	$s7, $s4, 48
	vadd.d	$vr0, $vr0, $vr1
	vbitclri.d	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $s6, 0
	vinsgr2vr.d	$vr1, $s7, 1
	vsrli.d	$vr2, $vr1, 63
	vadd.d	$vr1, $vr1, $vr2
	vbitclri.d	$vr1, $vr1, 0
	ld.d	$s6, $s5, 64
	ld.d	$s7, $s5, 80
	vmin.d	$vr0, $vr0, $vr1
	vst	$vr0, $s3, 16
	vinsgr2vr.d	$vr0, $s6, 0
	vinsgr2vr.d	$vr0, $s7, 1
	vsrli.d	$vr1, $vr0, 63
	ld.d	$s6, $s4, 64
	ld.d	$s7, $s4, 80
	vadd.d	$vr0, $vr0, $vr1
	vbitclri.d	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $s6, 0
	vinsgr2vr.d	$vr1, $s7, 1
	vsrli.d	$vr2, $vr1, 63
	vadd.d	$vr1, $vr1, $vr2
	vbitclri.d	$vr1, $vr1, 0
	ld.d	$s6, $s5, 96
	ld.d	$s7, $s5, 112
	vmin.d	$vr0, $vr0, $vr1
	vst	$vr0, $s3, 32
	vinsgr2vr.d	$vr0, $s6, 0
	vinsgr2vr.d	$vr0, $s7, 1
	vsrli.d	$vr1, $vr0, 63
	ld.d	$s6, $s4, 96
	ld.d	$s7, $s4, 112
	vadd.d	$vr0, $vr0, $vr1
	vbitclri.d	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $s6, 0
	vinsgr2vr.d	$vr1, $s7, 1
	vsrli.d	$vr2, $vr1, 63
	vadd.d	$vr1, $vr1, $vr2
	vbitclri.d	$vr1, $vr1, 0
	ld.d	$s6, $s5, 128
	ld.d	$s7, $s5, 144
	vmin.d	$vr0, $vr0, $vr1
	vst	$vr0, $s3, 48
	vinsgr2vr.d	$vr0, $s6, 0
	vinsgr2vr.d	$vr0, $s7, 1
	vsrli.d	$vr1, $vr0, 63
	ld.d	$s6, $s4, 128
	ld.d	$s7, $s4, 144
	vadd.d	$vr0, $vr0, $vr1
	vbitclri.d	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $s6, 0
	vinsgr2vr.d	$vr1, $s7, 1
	vsrli.d	$vr2, $vr1, 63
	vadd.d	$vr1, $vr1, $vr2
	vbitclri.d	$vr1, $vr1, 0
	ld.d	$s6, $s5, 160
	ld.d	$s7, $s5, 176
	vmin.d	$vr0, $vr0, $vr1
	vst	$vr0, $s3, 64
	vinsgr2vr.d	$vr0, $s6, 0
	vinsgr2vr.d	$vr0, $s7, 1
	vsrli.d	$vr1, $vr0, 63
	ld.d	$s6, $s4, 160
	ld.d	$s7, $s4, 176
	vadd.d	$vr0, $vr0, $vr1
	vbitclri.d	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $s6, 0
	vinsgr2vr.d	$vr1, $s7, 1
	vsrli.d	$vr2, $vr1, 63
	vadd.d	$vr1, $vr1, $vr2
	vbitclri.d	$vr1, $vr1, 0
	ld.d	$s6, $s5, 192
	ld.d	$s7, $s5, 208
	vmin.d	$vr0, $vr0, $vr1
	vst	$vr0, $s3, 80
	vinsgr2vr.d	$vr0, $s6, 0
	vinsgr2vr.d	$vr0, $s7, 1
	vsrli.d	$vr1, $vr0, 63
	ld.d	$s6, $s4, 192
	ld.d	$s7, $s4, 208
	vadd.d	$vr0, $vr0, $vr1
	vbitclri.d	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $s6, 0
	vinsgr2vr.d	$vr1, $s7, 1
	vsrli.d	$vr2, $vr1, 63
	vadd.d	$vr1, $vr1, $vr2
	vbitclri.d	$vr1, $vr1, 0
	ld.d	$s6, $s5, 224
	ld.d	$s5, $s5, 240
	vmin.d	$vr0, $vr0, $vr1
	vst	$vr0, $s3, 96
	vinsgr2vr.d	$vr0, $s6, 0
	vinsgr2vr.d	$vr0, $s5, 1
	vsrli.d	$vr1, $vr0, 63
	ld.d	$s5, $s4, 224
	ld.d	$s4, $s4, 240
	vadd.d	$vr0, $vr0, $vr1
	vbitclri.d	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $s5, 0
	vinsgr2vr.d	$vr1, $s4, 1
	vsrli.d	$vr2, $vr1, 63
	vadd.d	$vr1, $vr1, $vr2
	vbitclri.d	$vr1, $vr1, 0
	vmin.d	$vr0, $vr0, $vr1
	vst	$vr0, $s3, 112
.LBB32_3:                               # %middle.block
                                        #   in Loop: Header=BB32_4 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$t4, $t4, 1584
	addi.d	$t5, $t5, 1584
	addi.d	$t3, $t3, 1584
	addi.d	$s2, $s2, 1584
	addi.d	$s1, $s1, 1584
	addi.d	$s0, $s0, 1584
	beq	$a5, $t1, .LBB32_11
.LBB32_4:                               # %.preheader202
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_6 Depth 2
                                        #     Child Loop BB32_10 Depth 2
	mul.d	$s3, $a5, $t2
	beqz	$t6, .LBB32_8
# %bb.5:                                # %scalar.ph242.preheader
                                        #   in Loop: Header=BB32_4 Depth=1
	move	$s4, $zero
	move	$s5, $t3
	.p2align	4, , 16
.LBB32_6:                               # %scalar.ph242
                                        #   Parent Loop BB32_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$s6, $t4, $s4
	srli.d	$s7, $s6, 63
	ldx.d	$s8, $t5, $s4
	add.d	$s6, $s6, $s7
	addi.w	$s7, $zero, -2
	and	$s6, $s6, $s7
	srli.d	$ra, $s8, 63
	add.d	$s8, $s8, $ra
	and	$s7, $s8, $s7
	slt	$s8, $s6, $s7
	masknez	$s7, $s7, $s8
	maskeqz	$s6, $s6, $s8
	or	$s6, $s6, $s7
	st.d	$s6, $s5, 0
	addi.d	$s4, $s4, 16
	addi.d	$s5, $s5, 8
	bne	$s4, $t8, .LBB32_6
# %bb.7:                                # %.preheader201
                                        #   in Loop: Header=BB32_4 Depth=1
	beqz	$t7, .LBB32_2
	b	.LBB32_9
	.p2align	4, , 16
.LBB32_8:                               # %vector.body244
                                        #   in Loop: Header=BB32_4 Depth=1
	add.d	$s6, $a1, $s3
	ld.d	$s7, $s6, 288
	ld.d	$s8, $s6, 304
	add.d	$s5, $a2, $s3
	add.d	$s4, $a4, $s3
	vinsgr2vr.d	$vr0, $s7, 0
	vinsgr2vr.d	$vr0, $s8, 1
	vsrli.d	$vr1, $vr0, 63
	ld.d	$s7, $s5, 288
	ld.d	$s8, $s5, 304
	vadd.d	$vr0, $vr0, $vr1
	vbitclri.d	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $s7, 0
	vinsgr2vr.d	$vr1, $s8, 1
	vsrli.d	$vr2, $vr1, 63
	vadd.d	$vr1, $vr1, $vr2
	vbitclri.d	$vr1, $vr1, 0
	ld.d	$s7, $s6, 320
	ld.d	$s8, $s6, 336
	vmin.d	$vr0, $vr0, $vr1
	vst	$vr0, $s4, 288
	vinsgr2vr.d	$vr0, $s7, 0
	vinsgr2vr.d	$vr0, $s8, 1
	vsrli.d	$vr1, $vr0, 63
	ld.d	$s7, $s5, 320
	ld.d	$s8, $s5, 336
	vadd.d	$vr0, $vr0, $vr1
	vbitclri.d	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $s7, 0
	vinsgr2vr.d	$vr1, $s8, 1
	vsrli.d	$vr2, $vr1, 63
	vadd.d	$vr1, $vr1, $vr2
	vbitclri.d	$vr1, $vr1, 0
	ld.d	$s7, $s6, 352
	ld.d	$s8, $s6, 368
	vmin.d	$vr0, $vr0, $vr1
	vst	$vr0, $s4, 304
	vinsgr2vr.d	$vr0, $s7, 0
	vinsgr2vr.d	$vr0, $s8, 1
	vsrli.d	$vr1, $vr0, 63
	ld.d	$s7, $s5, 352
	ld.d	$s8, $s5, 368
	vadd.d	$vr0, $vr0, $vr1
	vbitclri.d	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $s7, 0
	vinsgr2vr.d	$vr1, $s8, 1
	vsrli.d	$vr2, $vr1, 63
	vadd.d	$vr1, $vr1, $vr2
	vbitclri.d	$vr1, $vr1, 0
	ld.d	$s7, $s6, 384
	ld.d	$s8, $s6, 400
	vmin.d	$vr0, $vr0, $vr1
	vst	$vr0, $s4, 320
	vinsgr2vr.d	$vr0, $s7, 0
	vinsgr2vr.d	$vr0, $s8, 1
	vsrli.d	$vr1, $vr0, 63
	ld.d	$s7, $s5, 384
	ld.d	$s8, $s5, 400
	vadd.d	$vr0, $vr0, $vr1
	vbitclri.d	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $s7, 0
	vinsgr2vr.d	$vr1, $s8, 1
	vsrli.d	$vr2, $vr1, 63
	vadd.d	$vr1, $vr1, $vr2
	vbitclri.d	$vr1, $vr1, 0
	ld.d	$s7, $s6, 416
	ld.d	$s8, $s6, 432
	vmin.d	$vr0, $vr0, $vr1
	vst	$vr0, $s4, 336
	vinsgr2vr.d	$vr0, $s7, 0
	vinsgr2vr.d	$vr0, $s8, 1
	vsrli.d	$vr1, $vr0, 63
	ld.d	$s7, $s5, 416
	ld.d	$s8, $s5, 432
	vadd.d	$vr0, $vr0, $vr1
	vbitclri.d	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $s7, 0
	vinsgr2vr.d	$vr1, $s8, 1
	vsrli.d	$vr2, $vr1, 63
	vadd.d	$vr1, $vr1, $vr2
	vbitclri.d	$vr1, $vr1, 0
	ld.d	$s7, $s6, 448
	ld.d	$s8, $s6, 464
	vmin.d	$vr0, $vr0, $vr1
	vst	$vr0, $s4, 352
	vinsgr2vr.d	$vr0, $s7, 0
	vinsgr2vr.d	$vr0, $s8, 1
	vsrli.d	$vr1, $vr0, 63
	ld.d	$s7, $s5, 448
	ld.d	$s8, $s5, 464
	vadd.d	$vr0, $vr0, $vr1
	vbitclri.d	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $s7, 0
	vinsgr2vr.d	$vr1, $s8, 1
	vsrli.d	$vr2, $vr1, 63
	vadd.d	$vr1, $vr1, $vr2
	vbitclri.d	$vr1, $vr1, 0
	ld.d	$s7, $s6, 480
	ld.d	$s8, $s6, 496
	vmin.d	$vr0, $vr0, $vr1
	vst	$vr0, $s4, 368
	vinsgr2vr.d	$vr0, $s7, 0
	vinsgr2vr.d	$vr0, $s8, 1
	vsrli.d	$vr1, $vr0, 63
	ld.d	$s7, $s5, 480
	ld.d	$s8, $s5, 496
	vadd.d	$vr0, $vr0, $vr1
	vbitclri.d	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $s7, 0
	vinsgr2vr.d	$vr1, $s8, 1
	vsrli.d	$vr2, $vr1, 63
	vadd.d	$vr1, $vr1, $vr2
	vbitclri.d	$vr1, $vr1, 0
	ld.d	$s7, $s6, 512
	ld.d	$s6, $s6, 528
	vmin.d	$vr0, $vr0, $vr1
	vst	$vr0, $s4, 384
	vinsgr2vr.d	$vr0, $s7, 0
	vinsgr2vr.d	$vr0, $s6, 1
	vsrli.d	$vr1, $vr0, 63
	ld.d	$s6, $s5, 512
	ld.d	$s5, $s5, 528
	vadd.d	$vr0, $vr0, $vr1
	vbitclri.d	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $s6, 0
	vinsgr2vr.d	$vr1, $s5, 1
	vsrli.d	$vr2, $vr1, 63
	vadd.d	$vr1, $vr1, $vr2
	vbitclri.d	$vr1, $vr1, 0
	vmin.d	$vr0, $vr0, $vr1
	vst	$vr0, $s4, 400
	beqz	$t7, .LBB32_2
.LBB32_9:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB32_4 Depth=1
	move	$s3, $zero
	move	$s4, $s0
	.p2align	4, , 16
.LBB32_10:                              # %scalar.ph
                                        #   Parent Loop BB32_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$s5, $s2, $s3
	srli.d	$s6, $s5, 63
	ldx.d	$s7, $s1, $s3
	add.d	$s5, $s5, $s6
	addi.w	$s6, $zero, -2
	and	$s5, $s5, $s6
	srli.d	$s8, $s7, 63
	add.d	$s7, $s7, $s8
	and	$s6, $s7, $s6
	slt	$s7, $s5, $s6
	masknez	$s6, $s6, $s7
	maskeqz	$s5, $s5, $s7
	or	$s5, $s5, $s6
	st.d	$s5, $s4, 0
	addi.d	$s3, $s3, 16
	addi.d	$s4, $s4, 8
	bne	$s3, $t8, .LBB32_10
	b	.LBB32_3
.LBB32_11:                              # %.preheader
	ld.w	$a3, $a3, 8
	ori	$a0, $zero, 4
	blt	$a3, $a0, .LBB32_38
# %bb.12:                               # %.lr.ph210
	move	$a3, $zero
	lu12i.w	$a0, 77
	ori	$a4, $a0, 1472
	lu12i.w	$a5, 131071
	ori	$a2, $a5, 4094
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ori	$a6, $a0, 1600
	ori	$a7, $zero, 1
	ori	$t0, $a0, 1560
	ori	$t1, $a0, 1552
	lu12i.w	$t2, 524287
	ori	$t2, $t2, 4094
	ori	$t3, $zero, 1584
	lu12i.w	$t4, 19
	ori	$t5, $t4, 1400
	b	.LBB32_14
	.p2align	4, , 16
.LBB32_13:                              # %._crit_edge
                                        #   in Loop: Header=BB32_14 Depth=1
	lu12i.w	$a0, 77
	ori	$a0, $a0, 1476
	ldx.w	$a0, $a1, $a0
	addi.d	$a3, $a3, 1
	bstrpick.d	$a2, $a0, 62, 61
	add.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 2
	bge	$a3, $a0, .LBB32_38
.LBB32_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_17 Depth 2
	ldx.w	$t6, $a1, $a4
	ori	$a0, $zero, 4
	blt	$t6, $a0, .LBB32_13
# %bb.15:                               # %.lr.ph
                                        #   in Loop: Header=BB32_14 Depth=1
	move	$t6, $zero
	move	$t7, $zero
	srli.d	$a1, $a3, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	and	$a1, $a1, $a0
	move	$s0, $a3
	bstrins.d	$s0, $a1, 63, 2
	ori	$a1, $s0, 4
	bstrpick.d	$s2, $a3, 31, 2
	slli.d	$t8, $a1, 3
	slli.d	$s0, $s0, 3
	slli.d	$s1, $a3, 3
	slli.d	$s2, $s2, 3
	b	.LBB32_17
	.p2align	4, , 16
.LBB32_16:                              #   in Loop: Header=BB32_17 Depth=2
	ld.d	$a0, $fp, 56
	ld.d	$a1, $s6, 8
	ldx.d	$a0, $a0, $a6
	ldx.d	$a1, $a1, $t8
	ldx.d	$a0, $a0, $s1
	stx.d	$s8, $a1, $t6
	stx.b	$a7, $a0, $t7
	ld.d	$a0, $fp, 64
	ldx.d	$a0, $a0, $a6
	ldx.d	$a0, $a0, $s1
	stx.b	$a7, $a0, $t7
	ld.d	$a1, $fp, 56
	ldx.w	$a0, $a1, $a4
	addi.d	$t7, $t7, 1
	bstrpick.d	$a2, $a0, 62, 61
	add.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 2
	addi.d	$t6, $t6, 8
	bge	$t7, $a0, .LBB32_13
.LBB32_17:                              #   Parent Loop BB32_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 48
	ldx.d	$a1, $a1, $a6
	ldx.d	$a1, $a1, $t8
	stx.b	$a7, $a1, $t7
	ld.d	$a1, $fp, 48
	ldx.d	$a1, $a1, $a6
	ldx.d	$a1, $a1, $s0
	stx.b	$a7, $a1, $t7
	ld.d	$a1, $fp, 56
	add.d	$s3, $a1, $t0
	ld.d	$s3, $s3, 24
	ld.d	$s4, $fp, 48
	ld.d	$s5, $s3, 0
	add.d	$s6, $s4, $t0
	ld.d	$s6, $s6, 24
	ldx.d	$s5, $s5, $s1
	ld.d	$s7, $s6, 0
	ldx.d	$s5, $s5, $t6
	ldx.d	$s7, $s7, $s0
	ld.h	$s8, $s5, 0
	ldx.d	$s7, $s7, $t6
	ld.d	$s3, $s3, 8
	st.h	$s8, $s7, 0
	ldx.d	$s3, $s3, $s1
	ld.d	$s6, $s6, 8
	ld.h	$s5, $s5, 2
	ldx.d	$s3, $s3, $t6
	ldx.d	$s6, $s6, $s0
	st.h	$s5, $s7, 2
	ldx.d	$a1, $a1, $t0
	ld.h	$s5, $s3, 0
	ldx.d	$s6, $s6, $t6
	ld.d	$a1, $a1, 0
	ldx.d	$s4, $s4, $t0
	st.h	$s5, $s6, 0
	ld.h	$s3, $s3, 2
	ldx.d	$a1, $a1, $s1
	ld.d	$s4, $s4, 0
	st.h	$s3, $s6, 2
	ldx.b	$s3, $a1, $t7
	ldx.d	$a1, $s4, $s0
	stx.b	$s3, $a1, $t7
	ld.d	$a1, $fp, 56
	ldx.d	$a1, $a1, $t0
	ld.d	$s4, $fp, 48
	ld.d	$a1, $a1, 8
	ldx.d	$s4, $s4, $t0
	ldx.d	$a1, $a1, $s1
	ld.d	$s5, $s4, 8
	ldx.b	$s4, $a1, $t7
	ldx.d	$a1, $s5, $s0
	stx.b	$s4, $a1, $t7
	ld.d	$s5, $fp, 56
	add.d	$s6, $s5, $t1
	srli.d	$a1, $t7, 1
	bltz	$s3, .LBB32_19
# %bb.18:                               #   in Loop: Header=BB32_17 Depth=2
	ld.d	$s7, $s6, 0
	ldx.d	$s7, $s7, $s2
	and	$s8, $a1, $t2
	ldx.h	$s7, $s7, $s8
	mul.d	$s7, $s7, $t3
	add.d	$s7, $s5, $s7
	alsl.d	$s7, $s3, $s7, 3
	ld.d	$s8, $s7, 24
	b	.LBB32_20
	.p2align	4, , 16
.LBB32_19:                              #   in Loop: Header=BB32_17 Depth=2
	move	$s8, $zero
.LBB32_20:                              #   in Loop: Header=BB32_17 Depth=2
	ld.d	$s7, $s6, 24
	ld.d	$ra, $s7, 0
	ldx.d	$ra, $ra, $s1
	stx.d	$s8, $ra, $t6
	bltz	$s4, .LBB32_23
# %bb.21:                               #   in Loop: Header=BB32_17 Depth=2
	ld.d	$s8, $s6, 0
	ldx.d	$s8, $s8, $s2
	and	$ra, $a1, $t2
	ldx.h	$s8, $s8, $ra
	mul.d	$s8, $s8, $t3
	add.d	$s8, $s5, $s8
	alsl.d	$s8, $s4, $s8, 3
	ld.d	$s8, $s8, 288
	ld.d	$s7, $s7, 8
	ldx.d	$s7, $s7, $s1
	stx.d	$s8, $s7, $t6
	bltz	$s3, .LBB32_24
.LBB32_22:                              #   in Loop: Header=BB32_17 Depth=2
	ld.d	$s7, $s6, 0
	ldx.d	$s7, $s7, $s2
	and	$s8, $a1, $t2
	ldx.h	$s7, $s7, $s8
	mul.d	$s7, $s7, $t3
	add.d	$s7, $s5, $s7
	alsl.d	$s3, $s3, $s7, 3
	ldx.d	$s3, $s3, $t5
	b	.LBB32_25
	.p2align	4, , 16
.LBB32_23:                              #   in Loop: Header=BB32_17 Depth=2
	move	$s8, $zero
	ld.d	$s7, $s7, 8
	ldx.d	$s7, $s7, $s1
	stx.d	$s8, $s7, $t6
	bgez	$s3, .LBB32_22
.LBB32_24:                              #   in Loop: Header=BB32_17 Depth=2
	move	$s3, $zero
.LBB32_25:                              #   in Loop: Header=BB32_17 Depth=2
	ld.d	$s7, $fp, 48
	add.d	$s7, $s7, $t0
	ld.d	$s8, $s7, 16
	ld.d	$ra, $s8, 0
	ldx.d	$ra, $ra, $s0
	stx.d	$s3, $ra, $t6
	ori	$s3, $t4, 1664
	bltz	$s4, .LBB32_27
# %bb.26:                               #   in Loop: Header=BB32_17 Depth=2
	ld.d	$s6, $s6, 0
	ldx.d	$s6, $s6, $s2
	and	$ra, $a1, $t2
	ldx.h	$s6, $s6, $ra
	mul.d	$s6, $s6, $t3
	add.d	$s5, $s5, $s6
	alsl.d	$s4, $s4, $s5, 3
	ldx.d	$s4, $s4, $s3
	b	.LBB32_28
	.p2align	4, , 16
.LBB32_27:                              #   in Loop: Header=BB32_17 Depth=2
	move	$s4, $zero
.LBB32_28:                              #   in Loop: Header=BB32_17 Depth=2
	ld.d	$s5, $fp, 64
	add.d	$s6, $s5, $t0
	ld.d	$s6, $s6, 24
	ld.d	$ra, $s6, 0
	ld.d	$a5, $s7, 24
	ldx.d	$ra, $ra, $s1
	ld.d	$a2, $a5, 0
	ldx.d	$ra, $ra, $t6
	ldx.d	$a2, $a2, $t8
	ld.h	$a0, $ra, 0
	ldx.d	$a2, $a2, $t6
	ld.d	$s6, $s6, 8
	st.h	$a0, $a2, 0
	ld.h	$a0, $ra, 2
	ldx.d	$s6, $s6, $s1
	ld.d	$a5, $a5, 8
	st.h	$a0, $a2, 2
	ldx.d	$a0, $s6, $t6
	ldx.d	$a2, $a5, $t8
	ld.d	$a5, $s8, 8
	ldx.d	$s5, $s5, $t0
	ld.h	$s6, $a0, 0
	ldx.d	$a2, $a2, $t6
	ldx.d	$a5, $a5, $s0
	ld.d	$s5, $s5, 0
	ld.d	$s7, $s7, 0
	st.h	$s6, $a2, 0
	ld.h	$a0, $a0, 2
	ldx.d	$s5, $s5, $s1
	ld.d	$s7, $s7, 0
	stx.d	$s4, $a5, $t6
	st.h	$a0, $a2, 2
	ldx.b	$s6, $s5, $t7
	ldx.d	$a0, $s7, $t8
	stx.b	$s6, $a0, $t7
	ld.d	$a0, $fp, 64
	ldx.d	$a0, $a0, $t0
	ld.d	$a2, $fp, 48
	ld.d	$a0, $a0, 8
	ldx.d	$a2, $a2, $t0
	ldx.d	$a0, $a0, $s1
	ld.d	$a2, $a2, 8
	ldx.b	$s4, $a0, $t7
	ldx.d	$a0, $a2, $t8
	stx.b	$s4, $a0, $t7
	ld.d	$s5, $fp, 64
	add.d	$s7, $s5, $t1
	bltz	$s6, .LBB32_30
# %bb.29:                               #   in Loop: Header=BB32_17 Depth=2
	ld.d	$a0, $s7, 0
	ldx.d	$a0, $a0, $s2
	and	$a2, $a1, $t2
	ldx.h	$a0, $a0, $a2
	mul.d	$a0, $a0, $t3
	add.d	$a0, $s5, $a0
	alsl.d	$a0, $s6, $a0, 3
	ld.d	$ra, $a0, 24
	b	.LBB32_31
	.p2align	4, , 16
.LBB32_30:                              #   in Loop: Header=BB32_17 Depth=2
	move	$ra, $zero
.LBB32_31:                              #   in Loop: Header=BB32_17 Depth=2
	ld.d	$s8, $s7, 24
	ld.d	$a0, $s8, 0
	ldx.d	$a0, $a0, $s1
	stx.d	$ra, $a0, $t6
	bltz	$s4, .LBB32_33
# %bb.32:                               #   in Loop: Header=BB32_17 Depth=2
	ld.d	$a0, $s7, 0
	ldx.d	$a0, $a0, $s2
	and	$a2, $a1, $t2
	ldx.h	$a0, $a0, $a2
	mul.d	$a0, $a0, $t3
	add.d	$a0, $s5, $a0
	alsl.d	$a0, $s4, $a0, 3
	ld.d	$ra, $a0, 288
	b	.LBB32_34
	.p2align	4, , 16
.LBB32_33:                              #   in Loop: Header=BB32_17 Depth=2
	move	$ra, $zero
.LBB32_34:                              #   in Loop: Header=BB32_17 Depth=2
	ld.d	$a0, $s8, 8
	ldx.d	$a0, $a0, $s1
	addi.w	$s8, $zero, -1
	stx.d	$ra, $a0, $t6
	move	$ra, $s8
	bltz	$s6, .LBB32_36
# %bb.35:                               #   in Loop: Header=BB32_17 Depth=2
	ld.d	$a0, $s7, 0
	ldx.d	$a0, $a0, $s2
	and	$a2, $a1, $t2
	ldx.h	$a0, $a0, $a2
	mul.d	$a0, $a0, $t3
	add.d	$a0, $s5, $a0
	alsl.d	$a0, $s6, $a0, 3
	ldx.d	$ra, $a0, $t5
.LBB32_36:                              #   in Loop: Header=BB32_17 Depth=2
	ld.d	$a0, $fp, 48
	lu12i.w	$a2, 77
	ori	$a2, $a2, 1576
	ldx.d	$s6, $a0, $a2
	ld.d	$a0, $s6, 0
	ldx.d	$a0, $a0, $t8
	stx.d	$ra, $a0, $t6
	bltz	$s4, .LBB32_16
# %bb.37:                               #   in Loop: Header=BB32_17 Depth=2
	ld.d	$a0, $s7, 0
	ldx.d	$a0, $a0, $s2
	and	$a1, $a1, $t2
	ldx.h	$a0, $a0, $a1
	mul.d	$a0, $a0, $t3
	add.d	$a0, $s5, $a0
	alsl.d	$a0, $s4, $a0, 3
	ldx.d	$s8, $a0, $s3
	b	.LBB32_16
.LBB32_38:                              # %._crit_edge211
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
.Lfunc_end32:
	.size	dpb_combine_field, .Lfunc_end32-dpb_combine_field
                                        # -- End function
	.globl	alloc_ref_pic_list_reordering_buffer # -- Begin function alloc_ref_pic_list_reordering_buffer
	.p2align	5
	.type	alloc_ref_pic_list_reordering_buffer,@function
alloc_ref_pic_list_reordering_buffer:   # @alloc_ref_pic_list_reordering_buffer
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s1, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 44
	ori	$a2, $zero, 2
	vrepli.b	$vr0, 0
	beq	$a1, $a2, .LBB33_2
# %bb.1:
	ori	$a2, $zero, 4
	bne	$a1, $a2, .LBB33_3
.LBB33_2:
	st.d	$zero, $fp, 88
	vst	$vr0, $fp, 72
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 44
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB33_9
	b	.LBB33_16
.LBB33_3:
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1544
	ldx.w	$a0, $a0, $a1
	addi.w	$s0, $a0, 1
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 72
	bnez	$a0, .LBB33_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB33_5:
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 80
	bnez	$a0, .LBB33_7
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB33_7:
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 88
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	beqz	$a0, .LBB33_15
# %bb.8:
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 44
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB33_16
.LBB33_9:
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1548
	ldx.w	$a0, $a0, $a1
	addi.w	$s0, $a0, 1
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 104
	bnez	$a0, .LBB33_11
# %bb.10:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB33_11:
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 112
	bnez	$a0, .LBB33_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB33_13:
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 120
	bnez	$a0, .LBB33_17
# %bb.14:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(no_mem_exit)
	jr	$t8
.LBB33_15:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 44
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB33_9
.LBB33_16:
	st.d	$zero, $fp, 120
	vst	$vr0, $fp, 104
.LBB33_17:
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end33:
	.size	alloc_ref_pic_list_reordering_buffer, .Lfunc_end33-alloc_ref_pic_list_reordering_buffer
                                        # -- End function
	.globl	free_ref_pic_list_reordering_buffer # -- Begin function free_ref_pic_list_reordering_buffer
	.p2align	5
	.type	free_ref_pic_list_reordering_buffer,@function
free_ref_pic_list_reordering_buffer:    # @free_ref_pic_list_reordering_buffer
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 72
	beqz	$a0, .LBB34_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB34_2:
	ld.d	$a0, $fp, 80
	beqz	$a0, .LBB34_4
# %bb.3:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB34_4:
	ld.d	$a0, $fp, 88
	addi.d	$s0, $fp, 72
	beqz	$a0, .LBB34_6
# %bb.5:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB34_6:
	ld.d	$a0, $fp, 104
	st.d	$zero, $s0, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vst	$vr0, $s0, 0
	beqz	$a0, .LBB34_8
# %bb.7:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB34_8:
	ld.d	$a0, $fp, 112
	beqz	$a0, .LBB34_10
# %bb.9:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB34_10:
	ld.d	$a0, $fp, 120
	addi.d	$fp, $fp, 104
	beqz	$a0, .LBB34_12
# %bb.11:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB34_12:
	st.d	$zero, $fp, 16
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $fp, 0
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end34:
	.size	free_ref_pic_list_reordering_buffer, .Lfunc_end34-free_ref_pic_list_reordering_buffer
                                        # -- End function
	.globl	fill_frame_num_gap              # -- Begin function fill_frame_num_gap
	.p2align	5
	.type	fill_frame_num_gap,@function
fill_frame_num_gap:                     # @fill_frame_num_gap
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
	move	$fp, $a0
	lu12i.w	$a0, 1
	ori	$a1, $a0, 1600
	ldx.w	$a1, $fp, $a1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$a1, $a0, 1604
	ori	$a2, $a0, 1564
	ldx.w	$a2, $fp, $a2
	ldptr.w	$a3, $fp, 5816
	ldptr.w	$s1, $fp, 5676
	ldx.w	$s2, $fp, $a1
	addi.w	$a1, $a2, 1
	mod.wu	$s3, $a1, $a3
	stptr.d	$zero, $fp, 5696
	bne	$s1, $s3, .LBB35_2
.LBB35_1:                               # %._crit_edge
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	stptr.w	$a0, $fp, 5696
	stptr.w	$s2, $fp, 5700
	stptr.w	$s1, $fp, 5676
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
.LBB35_2:                               # %.lr.ph
	lu12i.w	$a1, 77
	ori	$s4, $a1, 1432
	ori	$s5, $zero, 1
	ori	$s6, $zero, 1
	lu32i.d	$s6, 1
	pcalau12i	$s7, %pc_hi20(active_sps)
	ori	$s8, $a0, 1576
	b	.LBB35_4
	.p2align	4, , 16
.LBB35_3:                               #   in Loop: Header=BB35_4 Depth=1
	ldptr.d	$a1, $fp, 5664
	st.d	$a1, $a0, 8
	ldx.w	$a1, $fp, $s8
	st.w	$a1, $a0, 16
	st.w	$a1, $a0, 4
	pcaddu18i	$ra, %call36(store_picture_in_dpb)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $fp, 5816
	stptr.w	$s3, $fp, 5660
	addi.w	$a1, $s3, 1
	mod.w	$s3, $a1, $a0
	beq	$s1, $s3, .LBB35_1
.LBB35_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, 48
	ld.w	$a2, $fp, 52
	ld.w	$a3, $fp, 56
	ld.w	$a4, $fp, 64
	move	$a0, $zero
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	add.d	$a1, $a0, $s4
	st.d	$s6, $a1, 24
	ld.d	$a2, $s7, %pc_lo12(active_sps)
	st.w	$s5, $a1, 76
	st.w	$s3, $a1, 8
	ld.w	$a2, $a2, 1012
	stx.w	$s3, $a0, $s4
	st.w	$s5, $a1, 32
	st.w	$zero, $a1, 216
	stptr.w	$s3, $fp, 5676
	beqz	$a2, .LBB35_3
# %bb.5:                                #   in Loop: Header=BB35_4 Depth=1
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(decode_poc)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB35_3
.Lfunc_end35:
	.size	fill_frame_num_gap, .Lfunc_end35-fill_frame_num_gap
                                        # -- End function
	.globl	alloc_colocated                 # -- Begin function alloc_colocated
	.p2align	5
	.type	alloc_colocated,@function
alloc_colocated:                        # @alloc_colocated
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s2, $a1
	move	$s1, $a0
	lu12i.w	$s4, 1
	ori	$a1, $s4, 784
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB36_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB36_2:
	st.w	$s1, $s0, 4
	st.w	$s2, $s0, 8
	addi.d	$a0, $s0, 1600
	bstrpick.d	$a1, $s2, 62, 61
	add.w	$a1, $s2, $a1
	srai.d	$s3, $a1, 2
	bstrpick.d	$a1, $s1, 62, 61
	add.w	$a1, $s1, $a1
	srai.d	$s1, $a1, 2
	ori	$a1, $zero, 2
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(get_mem3D)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 1608
	ori	$a1, $zero, 2
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(get_mem3Dint64)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 1616
	ori	$a1, $zero, 2
	ori	$a4, $zero, 2
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(get_mem4Dshort)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 1624
	move	$a1, $s3
	move	$a2, $s1
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
	ori	$a0, $s4, 776
	add.d	$a0, $s0, $a0
	move	$a1, $s3
	move	$a2, $s1
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB36_4
# %bb.3:
	addi.d	$s3, $s0, 2047
	addi.d	$a0, $s3, 1169
	bstrpick.d	$a1, $s2, 62, 60
	add.w	$a1, $s2, $a1
	srai.d	$s2, $a1, 3
	ori	$a1, $zero, 2
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(get_mem3D)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s3, 1177
	ori	$a1, $zero, 2
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(get_mem3Dint64)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s3, 1185
	ori	$a1, $zero, 2
	ori	$a4, $zero, 2
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(get_mem4Dshort)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s3, 1193
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
	ori	$a0, $s4, 736
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 2
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(get_mem3D)
	jirl	$ra, $ra, 0
	ori	$a0, $s4, 744
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 2
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(get_mem3Dint64)
	jirl	$ra, $ra, 0
	ori	$a0, $s4, 752
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 2
	ori	$a4, $zero, 2
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(get_mem4Dshort)
	jirl	$ra, $ra, 0
	ori	$a0, $s4, 760
	add.d	$a0, $s0, $a0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
.LBB36_4:
	st.w	$fp, $s0, 0
	move	$a0, $s0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end36:
	.size	alloc_colocated, .Lfunc_end36-alloc_colocated
                                        # -- End function
	.globl	free_colocated                  # -- Begin function free_colocated
	.p2align	5
	.type	free_colocated,@function
free_colocated:                         # @free_colocated
# %bb.0:
	beqz	$a0, .LBB37_11
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 1600
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem3D)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1608
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem3Dint64)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	ld.d	$a0, $fp, 1616
	bstrpick.d	$a2, $a1, 62, 61
	add.w	$a1, $a1, $a2
	srai.d	$a2, $a1, 2
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem4Dshort)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1624
	beqz	$a0, .LBB37_3
# %bb.2:
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 1624
.LBB37_3:
	ldptr.d	$a0, $fp, 4872
	beqz	$a0, .LBB37_5
# %bb.4:
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
	stptr.d	$zero, $fp, 4872
.LBB37_5:
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB37_10
# %bb.6:
	ldptr.d	$a0, $fp, 3216
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem3D)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 3224
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem3Dint64)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	ldptr.d	$a0, $fp, 3232
	bstrpick.d	$a2, $a1, 62, 60
	add.w	$a1, $a1, $a2
	srai.d	$a2, $a1, 3
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem4Dshort)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 3240
	beqz	$a0, .LBB37_8
# %bb.7:
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
	stptr.d	$zero, $fp, 3240
.LBB37_8:
	ldptr.d	$a0, $fp, 4832
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem3D)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 4840
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem3Dint64)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	ldptr.d	$a0, $fp, 4848
	bstrpick.d	$a2, $a1, 62, 60
	add.w	$a1, $a1, $a2
	srai.d	$a2, $a1, 3
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem4Dshort)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 4856
	beqz	$a0, .LBB37_10
# %bb.9:
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
.LBB37_10:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB37_11:
	ret
.Lfunc_end37:
	.size	free_colocated, .Lfunc_end37-free_colocated
                                        # -- End function
	.globl	compute_colocated               # -- Begin function compute_colocated
	.p2align	5
	.type	compute_colocated,@function
compute_colocated:                      # @compute_colocated
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
	ld.d	$a2, $a1, 8
	ld.d	$a2, $a2, 0
	lu12i.w	$a7, 77
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a4, $a3, %got_pc_lo12(img)
	ld.d	$s5, $a4, 0
	ldptr.w	$a3, $s5, 5624
	beqz	$a3, .LBB38_2
# %bb.1:
	ld.d	$a3, $a1, 24
	ld.d	$a5, $a1, 40
	ld.d	$t3, $a3, 0
	ld.d	$t2, $a5, 0
	b	.LBB38_10
.LBB38_2:
	ldptr.w	$a3, $s5, 5680
	beqz	$a3, .LBB38_4
# %bb.3:
	ldptr.w	$a3, $s5, 5584
	ld.w	$a5, $a2, 0
	bne	$a3, $a5, .LBB38_5
.LBB38_4:
	move	$t2, $a2
	move	$t3, $a2
	b	.LBB38_10
.LBB38_5:
	ori	$a5, $a7, 1508
	add.d	$a5, $a2, $a5
	ld.w	$a6, $a5, 0
	move	$t2, $a2
	move	$t3, $a2
	beqz	$a6, .LBB38_10
# %bb.6:
	ori	$a2, $zero, 1
	bne	$a3, $a2, .LBB38_8
# %bb.7:
	ld.d	$t2, $a5, 100
	b	.LBB38_9
.LBB38_8:
	ld.d	$t2, $a5, 108
.LBB38_9:
	move	$t3, $t2
	move	$a2, $t2
.LBB38_10:
	pcalau12i	$a5, %pc_hi20(active_sps)
	ld.d	$t4, $a5, %pc_lo12(active_sps)
	ori	$a6, $a7, 1452
	ldptr.w	$t5, $t4, 2076
	add.d	$t0, $t2, $a6
	add.d	$t1, $t3, $a6
	add.d	$a3, $a2, $a6
	beqz	$t5, .LBB38_12
# %bb.11:
	ldptr.w	$t4, $t4, 2084
	beqz	$t4, .LBB38_26
.LBB38_12:
	ld.w	$fp, $a3, 24
	ori	$t4, $zero, 4
	blt	$fp, $t4, .LBB38_26
# %bb.13:                               # %.lr.ph832
	ld.w	$s5, $a3, 20
	lu12i.w	$t5, 262143
	ori	$t5, $t5, 4092
	lu12i.w	$a2, 1
	ori	$t6, $a2, 768
	pcalau12i	$t7, %got_pc_hi20(dec_picture)
	ld.d	$t7, $t7, %got_pc_lo12(dec_picture)
	move	$t8, $zero
	b	.LBB38_16
	.p2align	4, , 16
.LBB38_14:                              # %._crit_edge.loopexit
                                        #   in Loop: Header=BB38_16 Depth=1
	ld.w	$fp, $a3, 24
.LBB38_15:                              # %._crit_edge
                                        #   in Loop: Header=BB38_16 Depth=1
	addi.d	$t8, $t8, 1
	bstrpick.d	$a2, $fp, 62, 61
	add.w	$a2, $fp, $a2
	srai.d	$a2, $a2, 2
	bge	$t8, $a2, .LBB38_25
.LBB38_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_20 Depth 2
	blt	$s5, $t4, .LBB38_15
# %bb.17:                               # %.lr.ph
                                        #   in Loop: Header=BB38_16 Depth=1
	move	$fp, $zero
	move	$s0, $zero
	bstrpick.d	$s1, $t8, 31, 1
	srli.d	$s2, $t8, 1
	and	$s2, $s2, $t5
	add.w	$s2, $s2, $s1
	addi.w	$s3, $s2, 4
	slli.d	$s4, $t8, 3
	b	.LBB38_20
	.p2align	4, , 16
.LBB38_18:                              #   in Loop: Header=BB38_20 Depth=2
	ld.d	$a2, $a3, 132
	ld.d	$s5, $a2, 0
	ld.d	$s6, $a0, 1616
	ldx.d	$s5, $s5, $s4
	ld.d	$s7, $s6, 0
	ldx.d	$s5, $s5, $fp
	ldx.d	$s7, $s7, $s4
	ld.h	$s8, $s5, 0
	ldx.d	$s7, $s7, $fp
	ld.d	$a2, $a2, 8
	st.h	$s8, $s7, 0
	ldx.d	$a2, $a2, $s4
	ld.d	$s6, $s6, 8
	ld.h	$s5, $s5, 2
	ldx.d	$a2, $a2, $fp
	ldx.d	$s6, $s6, $s4
	st.h	$s5, $s7, 2
	ld.d	$s5, $a3, 108
	ld.h	$s7, $a2, 0
	ldx.d	$s6, $s6, $fp
	ld.d	$s5, $s5, 0
	ld.d	$s8, $a0, 1600
	st.h	$s7, $s6, 0
	ld.h	$a2, $a2, 2
	ldx.d	$s5, $s5, $s4
	ld.d	$s7, $s8, 0
	st.h	$a2, $s6, 2
	ldx.b	$a2, $s5, $s0
	ldx.d	$s5, $s7, $s4
	stx.b	$a2, $s5, $s0
	move	$s7, $t8
	move	$s6, $t8
	move	$s5, $a3
.LBB38_19:                              #   in Loop: Header=BB38_20 Depth=2
	ld.d	$a2, $s5, 108
	ld.d	$a2, $a2, 8
	ld.d	$s8, $a0, 1600
	slli.d	$s7, $s7, 3
	ldx.d	$a2, $a2, $s7
	ld.d	$s7, $s8, 8
	ldx.b	$a2, $a2, $s0
	ldx.d	$s7, $s7, $s4
	stx.b	$a2, $s7, $s0
	ld.d	$a2, $a3, 124
	ld.d	$s7, $a2, 0
	ld.d	$s8, $a0, 1608
	slli.d	$s6, $s6, 3
	ldx.d	$s7, $s7, $s6
	ld.d	$ra, $s8, 0
	ld.d	$a2, $a2, 8
	ldx.d	$s7, $s7, $fp
	ldx.d	$ra, $ra, $s4
	ldx.d	$a2, $a2, $s6
	ld.d	$s6, $s8, 8
	stx.d	$s7, $ra, $fp
	ldx.d	$a2, $a2, $fp
	ldx.d	$s6, $s6, $s4
	ld.b	$s7, $s5, 0
	ld.w	$s5, $a3, 20
	stx.d	$a2, $s6, $fp
	stx.b	$s7, $a0, $t6
	addi.d	$s0, $s0, 1
	bstrpick.d	$a2, $s5, 62, 61
	add.w	$a2, $s5, $a2
	srai.d	$a2, $a2, 2
	addi.d	$fp, $fp, 8
	bge	$s0, $a2, .LBB38_14
.LBB38_20:                              #   Parent Loop BB38_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $a4, 0
	ldptr.w	$s5, $s5, 5624
	beqz	$s5, .LBB38_18
# %bb.21:                               #   in Loop: Header=BB38_20 Depth=2
	ld.d	$s5, $a3, 148
	ldx.d	$s5, $s5, $s4
	ldx.bu	$s5, $s5, $s0
	beqz	$s5, .LBB38_18
# %bb.22:                               #   in Loop: Header=BB38_20 Depth=2
	ld.d	$s5, $t7, 0
	ld.w	$s6, $s5, 4
	ld.w	$s7, $t2, 4
	ld.d	$s5, $a0, 1616
	sub.w	$s7, $s6, $s7
	ld.d	$s8, $s5, 0
	srai.d	$ra, $s7, 31
	ld.w	$a2, $t3, 4
	xor	$s7, $s7, $ra
	ldx.d	$s8, $s8, $s4
	sub.w	$s7, $s7, $ra
	sub.w	$a2, $s6, $a2
	srai.d	$ra, $a2, 31
	ldx.d	$s6, $s8, $fp
	xor	$a2, $a2, $ra
	sub.w	$a2, $a2, $ra
	bgeu	$a2, $s7, .LBB38_24
# %bb.23:                               #   in Loop: Header=BB38_20 Depth=2
	ld.d	$a2, $t1, 132
	ld.d	$s7, $a2, 0
	slli.d	$s8, $s1, 3
	ldx.d	$s7, $s7, $s8
	ldx.d	$s7, $s7, $fp
	ld.h	$ra, $s7, 0
	ld.d	$a2, $a2, 8
	st.h	$ra, $s6, 0
	ldx.d	$a2, $a2, $s8
	ld.d	$s5, $s5, 8
	ld.h	$s7, $s7, 2
	ldx.d	$a2, $a2, $fp
	ldx.d	$s5, $s5, $s4
	st.h	$s7, $s6, 2
	ld.d	$s6, $t1, 108
	ld.h	$s7, $a2, 0
	ldx.d	$s5, $s5, $fp
	ld.d	$s6, $s6, 0
	ld.d	$ra, $a0, 1600
	st.h	$s7, $s5, 0
	ld.h	$a2, $a2, 2
	ldx.d	$s6, $s6, $s8
	ld.d	$s7, $ra, 0
	st.h	$a2, $s5, 2
	ldx.b	$a2, $s6, $s0
	ldx.d	$s5, $s7, $s4
	stx.b	$a2, $s5, $s0
	move	$s7, $s1
	move	$s6, $s2
	move	$s5, $t1
	b	.LBB38_19
.LBB38_24:                              #   in Loop: Header=BB38_20 Depth=2
	ld.d	$a2, $t0, 132
	ld.d	$s7, $a2, 0
	slli.d	$s8, $s1, 3
	ldx.d	$s7, $s7, $s8
	ldx.d	$s7, $s7, $fp
	ld.h	$ra, $s7, 0
	ld.d	$a2, $a2, 8
	st.h	$ra, $s6, 0
	ldx.d	$a2, $a2, $s8
	ld.d	$s5, $s5, 8
	ld.h	$s7, $s7, 2
	ldx.d	$a2, $a2, $fp
	ldx.d	$s5, $s5, $s4
	st.h	$s7, $s6, 2
	ld.d	$s6, $t0, 108
	ld.h	$s7, $a2, 0
	ldx.d	$s5, $s5, $fp
	ld.d	$s6, $s6, 0
	ld.d	$ra, $a0, 1600
	st.h	$s7, $s5, 0
	ld.h	$a2, $a2, 2
	ldx.d	$s6, $s6, $s8
	ld.d	$s7, $ra, 0
	st.h	$a2, $s5, 2
	ldx.b	$a2, $s6, $s0
	ldx.d	$s5, $s7, $s4
	stx.b	$a2, $s5, $s0
	move	$s7, $s1
	move	$s6, $s3
	move	$s5, $t0
	b	.LBB38_19
.LBB38_25:                              # %.loopexit828.loopexit
	ld.d	$s5, $a4, 0
.LBB38_26:                              # %.loopexit828
	ldptr.w	$a2, $s5, 5584
	bnez	$a2, .LBB38_28
# %bb.27:
	ldptr.w	$a2, $s5, 5624
	beqz	$a2, .LBB38_81
.LBB38_28:
	ld.w	$fp, $a3, 24
	ori	$a2, $zero, 8
	blt	$fp, $a2, .LBB38_81
# %bb.29:                               # %.lr.ph839
	move	$t2, $zero
	ld.w	$s4, $a3, 20
	ori	$t3, $zero, 4
	ori	$t4, $zero, 255
	addi.w	$t5, $zero, -1
	lu12i.w	$a2, 1
	ori	$t6, $a2, 768
	ori	$t7, $zero, 1
	ori	$t8, $zero, 2
	b	.LBB38_32
	.p2align	4, , 16
.LBB38_30:                              # %._crit_edge836.loopexit
                                        #   in Loop: Header=BB38_32 Depth=1
	ld.w	$fp, $a3, 24
.LBB38_31:                              # %._crit_edge836
                                        #   in Loop: Header=BB38_32 Depth=1
	addi.d	$t2, $t2, 1
	bstrpick.d	$a2, $fp, 62, 60
	add.w	$a2, $fp, $a2
	srai.d	$a2, $a2, 3
	bge	$t2, $a2, .LBB38_81
.LBB38_32:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_38 Depth 2
	blt	$s4, $t3, .LBB38_31
# %bb.33:                               # %.lr.ph835
                                        #   in Loop: Header=BB38_32 Depth=1
	move	$fp, $zero
	move	$s0, $zero
	srli.d	$a2, $t2, 1
	bstrpick.d	$s1, $t2, 30, 1
	bstrins.d	$a2, $s1, 63, 1
	slli.d	$s1, $t2, 4
	slli.d	$s2, $a2, 3
	slli.d	$s3, $t2, 3
	b	.LBB38_38
.LBB38_34:                              # %.thread978
                                        #   in Loop: Header=BB38_38 Depth=2
	ori	$s4, $zero, 1
.LBB38_35:                              #   in Loop: Header=BB38_38 Depth=2
	ldptr.d	$a2, $a0, 3240
	ldx.d	$a2, $a2, $s3
	stx.b	$s4, $a2, $s0
	ld.d	$s5, $a4, 0
	ld.w	$s4, $s5, 40
.LBB38_36:                              #   in Loop: Header=BB38_38 Depth=2
	beqz	$s4, .LBB38_47
.LBB38_37:                              #   in Loop: Header=BB38_38 Depth=2
	ld.w	$s4, $a3, 20
	addi.d	$s0, $s0, 1
	bstrpick.d	$a2, $s4, 62, 61
	add.w	$a2, $s4, $a2
	srai.d	$a2, $a2, 2
	addi.d	$fp, $fp, 8
	bge	$s0, $a2, .LBB38_30
.LBB38_38:                              #   Parent Loop BB38_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldptr.w	$a2, $s5, 5624
	srli.d	$s5, $s0, 1
	bstrpick.d	$s4, $s0, 30, 1
	bstrins.d	$s5, $s4, 63, 1
	slli.d	$s4, $s5, 3
	beqz	$a2, .LBB38_45
# %bb.39:                               #   in Loop: Header=BB38_38 Depth=2
	ld.d	$a2, $t0, 132
	ld.d	$s6, $a2, 0
	ldptr.d	$s7, $a0, 4848
	ldx.d	$s6, $s6, $s2
	ld.d	$s8, $s7, 0
	ldx.d	$s6, $s6, $s4
	ldx.d	$s8, $s8, $s3
	ld.h	$ra, $s6, 0
	ldx.d	$s8, $s8, $fp
	ld.d	$a2, $a2, 8
	st.h	$ra, $s8, 0
	ldx.d	$a2, $a2, $s2
	ld.d	$s7, $s7, 8
	ld.h	$s6, $s6, 2
	ldx.d	$a2, $a2, $s4
	ldx.d	$s7, $s7, $s3
	st.h	$s6, $s8, 2
	ld.d	$s6, $t0, 108
	ld.h	$s8, $a2, 0
	ldx.d	$s7, $s7, $fp
	ld.d	$s6, $s6, 0
	ldptr.d	$ra, $a0, 4832
	st.h	$s8, $s7, 0
	ld.h	$a2, $a2, 2
	ldx.d	$s6, $s6, $s2
	ld.d	$s8, $ra, 0
	st.h	$a2, $s7, 2
	ldx.b	$a2, $s6, $s5
	ldx.d	$s6, $s8, $s3
	stx.b	$a2, $s6, $s0
	ld.d	$a2, $t0, 108
	ld.d	$a2, $a2, 8
	ldptr.d	$s6, $a0, 4832
	ldx.d	$a2, $a2, $s2
	ld.d	$s6, $s6, 8
	ldx.b	$a2, $a2, $s5
	ldx.d	$s6, $s6, $s3
	stx.b	$a2, $s6, $s0
	ld.d	$a2, $t0, 124
	ld.d	$s6, $a2, 0
	ldptr.d	$s7, $a0, 4840
	ldx.d	$s6, $s6, $s2
	ld.d	$s8, $s7, 0
	ld.d	$a2, $a2, 8
	ldx.d	$s6, $s6, $s4
	ldx.d	$s8, $s8, $s3
	ldx.d	$a2, $a2, $s2
	ld.d	$s7, $s7, 8
	ld.d	$ra, $a4, 0
	stx.d	$s6, $s8, $fp
	ldx.d	$a2, $a2, $s4
	ldx.d	$s6, $s7, $s3
	ld.w	$s7, $ra, 40
	stx.d	$a2, $s6, $fp
	bne	$s7, $t7, .LBB38_65
# %bb.40:                               #   in Loop: Header=BB38_38 Depth=2
	ldptr.d	$s7, $a0, 4832
	ld.d	$a2, $s7, 0
	ldx.d	$a2, $a2, $s3
	ld.w	$s6, $t0, 0
	ldx.bu	$s8, $a2, $s0
	bnez	$s6, .LBB38_49
# %bb.41:                               #   in Loop: Header=BB38_38 Depth=2
	bnez	$s8, .LBB38_49
# %bb.42:                               #   in Loop: Header=BB38_38 Depth=2
	ldptr.d	$a2, $a0, 4848
	ld.d	$a2, $a2, 0
	ldx.d	$a2, $a2, $s3
	ldx.d	$s6, $a2, $fp
	ld.h	$a2, $s6, 0
	ext.w.h	$s7, $a2
	srai.d	$s7, $s7, 15
	xor	$a2, $a2, $s7
	sub.d	$a2, $a2, $s7
	bstrpick.d	$a2, $a2, 15, 0
	bltu	$t7, $a2, .LBB38_63
# %bb.43:                               #   in Loop: Header=BB38_38 Depth=2
	ld.h	$a2, $s6, 2
	ext.w.h	$s6, $a2
	srai.d	$s6, $s6, 15
	xor	$a2, $a2, $s6
	sub.d	$a2, $a2, $s6
	bstrpick.d	$a2, $a2, 15, 0
	bgeu	$a2, $t8, .LBB38_63
# %bb.44:                               #   in Loop: Header=BB38_38 Depth=2
	move	$s6, $zero
	b	.LBB38_64
	.p2align	4, , 16
.LBB38_45:                              #   in Loop: Header=BB38_38 Depth=2
	ld.d	$a2, $a3, 132
	ld.d	$s6, $a2, 0
	ld.d	$s7, $a0, 1616
	ldx.d	$s6, $s6, $s2
	ld.d	$s8, $s7, 0
	ldx.d	$s6, $s6, $s4
	ldx.d	$s8, $s8, $s3
	ld.h	$ra, $s6, 0
	ldx.d	$s8, $s8, $fp
	ld.d	$a2, $a2, 8
	st.h	$ra, $s8, 0
	ldx.d	$a2, $a2, $s2
	ld.d	$s7, $s7, 8
	ld.h	$s6, $s6, 2
	ldx.d	$a2, $a2, $s4
	ldx.d	$s7, $s7, $s3
	st.h	$s6, $s8, 2
	ld.d	$s6, $a3, 108
	ld.h	$s8, $a2, 0
	ldx.d	$s7, $s7, $fp
	ld.d	$s6, $s6, 0
	ld.d	$ra, $a0, 1600
	st.h	$s8, $s7, 0
	ld.h	$a2, $a2, 2
	ldx.d	$s6, $s6, $s2
	ld.d	$s8, $ra, 0
	st.h	$a2, $s7, 2
	ldx.bu	$s7, $s6, $s5
	ldx.d	$s6, $s8, $s3
	beq	$s7, $t4, .LBB38_53
# %bb.46:                               #   in Loop: Header=BB38_38 Depth=2
	stx.b	$s7, $s6, $s0
	ld.d	$a2, $a3, 124
	ld.d	$a2, $a2, 0
	ldx.d	$a2, $a2, $s2
	ldx.d	$s6, $a2, $s4
	b	.LBB38_54
	.p2align	4, , 16
.LBB38_47:                              #   in Loop: Header=BB38_38 Depth=2
	ld.d	$a2, $a3, 148
	ldx.d	$a2, $a2, $s1
	ldx.bu	$a2, $a2, $s0
	bnez	$a2, .LBB38_37
# %bb.48:                               #   in Loop: Header=BB38_38 Depth=2
	ldptr.d	$a2, $a0, 3232
	ld.d	$s4, $a2, 0
	ldx.d	$s4, $s4, $s3
	ldx.d	$s4, $s4, $fp
	ld.hu	$s6, $s4, 2
	ld.d	$a2, $a2, 8
	srli.d	$s7, $s6, 15
	ldx.d	$a2, $a2, $s3
	add.d	$s6, $s6, $s7
	ext.w.h	$s6, $s6
	ldptr.d	$s7, $a0, 4848
	ldx.d	$a2, $a2, $fp
	srli.d	$s6, $s6, 1
	st.h	$s6, $s4, 2
	ld.d	$s4, $s7, 0
	ld.hu	$s6, $a2, 2
	ldx.d	$s4, $s4, $s3
	srli.d	$s8, $s6, 15
	add.d	$s6, $s6, $s8
	ext.w.h	$s6, $s6
	ldx.d	$s4, $s4, $fp
	srli.d	$s6, $s6, 1
	ld.d	$s7, $s7, 8
	st.h	$s6, $a2, 2
	ld.hu	$a2, $s4, 2
	ldx.d	$s6, $s7, $s3
	srli.d	$s7, $a2, 15
	add.d	$a2, $a2, $s7
	ldx.d	$s6, $s6, $fp
	ext.w.h	$a2, $a2
	srli.d	$a2, $a2, 1
	st.h	$a2, $s4, 2
	ld.hu	$a2, $s6, 2
	srli.d	$s4, $a2, 15
	add.d	$a2, $a2, $s4
	ext.w.h	$a2, $a2
	srli.d	$a2, $a2, 1
	st.h	$a2, $s6, 2
	b	.LBB38_37
.LBB38_49:                              # %._crit_edge903
                                        #   in Loop: Header=BB38_38 Depth=2
	ori	$s6, $zero, 1
	bne	$s8, $t4, .LBB38_64
# %bb.50:                               #   in Loop: Header=BB38_38 Depth=2
	ld.d	$a2, $s7, 8
	ldx.d	$a2, $a2, $s3
	ldx.bu	$a2, $a2, $s0
	bnez	$a2, .LBB38_64
# %bb.51:                               #   in Loop: Header=BB38_38 Depth=2
	ldptr.d	$a2, $a0, 4848
	ld.d	$a2, $a2, 8
	ldx.d	$a2, $a2, $s3
	ldx.d	$s7, $a2, $fp
	ld.h	$a2, $s7, 0
	ext.w.h	$s6, $a2
	srai.d	$s6, $s6, 15
	xor	$a2, $a2, $s6
	sub.d	$a2, $a2, $s6
	bstrpick.d	$a2, $a2, 15, 0
	ori	$s6, $zero, 1
	bltu	$s6, $a2, .LBB38_64
# %bb.52:                               #   in Loop: Header=BB38_38 Depth=2
	ld.h	$a2, $s7, 2
	ext.w.h	$s6, $a2
	srai.d	$s6, $s6, 15
	xor	$a2, $a2, $s6
	sub.d	$a2, $a2, $s6
	bstrpick.d	$a2, $a2, 15, 0
	sltu	$s6, $t7, $a2
	b	.LBB38_64
.LBB38_53:                              #   in Loop: Header=BB38_38 Depth=2
	stx.b	$t4, $s6, $s0
	move	$s6, $t5
.LBB38_54:                              #   in Loop: Header=BB38_38 Depth=2
	ld.d	$a2, $a0, 1608
	ld.d	$s7, $a3, 108
	ld.d	$a2, $a2, 0
	ld.d	$s7, $s7, 8
	ld.d	$s8, $a0, 1600
	ldx.d	$a2, $a2, $s3
	ldx.d	$s7, $s7, $s2
	ld.d	$s8, $s8, 8
	stx.d	$s6, $a2, $fp
	ldx.bu	$s6, $s7, $s5
	ldx.d	$s5, $s8, $s3
	beq	$s6, $t4, .LBB38_56
# %bb.55:                               #   in Loop: Header=BB38_38 Depth=2
	stx.b	$s6, $s5, $s0
	ld.d	$a2, $a3, 124
	ld.d	$a2, $a2, 8
	ldx.d	$a2, $a2, $s2
	ldx.d	$s4, $a2, $s4
	b	.LBB38_57
.LBB38_56:                              #   in Loop: Header=BB38_38 Depth=2
	stx.b	$t4, $s5, $s0
	move	$s4, $t5
.LBB38_57:                              #   in Loop: Header=BB38_38 Depth=2
	ld.d	$a2, $a0, 1608
	ld.d	$a2, $a2, 8
	ld.d	$s5, $a4, 0
	ldx.d	$a2, $a2, $s3
	ld.w	$s6, $a3, 0
	ld.w	$s7, $s5, 40
	stx.d	$s4, $a2, $fp
	stx.b	$s6, $a0, $t6
	bne	$s7, $t7, .LBB38_37
# %bb.58:                               #   in Loop: Header=BB38_38 Depth=2
	ld.d	$s5, $a0, 1600
	ld.d	$a2, $s5, 0
	ldx.d	$a2, $a2, $s3
	ldx.bu	$s7, $a2, $s0
	andi	$a2, $s6, 255
	bnez	$a2, .LBB38_75
# %bb.59:                               #   in Loop: Header=BB38_38 Depth=2
	bnez	$s7, .LBB38_75
# %bb.60:                               #   in Loop: Header=BB38_38 Depth=2
	ld.d	$a2, $a0, 1616
	ld.d	$a2, $a2, 0
	ldx.d	$a2, $a2, $s3
	ldx.d	$s4, $a2, $fp
	ld.h	$a2, $s4, 0
	ext.w.h	$s5, $a2
	srai.d	$s5, $s5, 15
	xor	$a2, $a2, $s5
	sub.d	$a2, $a2, $s5
	bstrpick.d	$a2, $a2, 15, 0
	bltu	$t7, $a2, .LBB38_79
# %bb.61:                               #   in Loop: Header=BB38_38 Depth=2
	ld.h	$a2, $s4, 2
	ext.w.h	$s4, $a2
	srai.d	$s4, $s4, 15
	xor	$a2, $a2, $s4
	sub.d	$a2, $a2, $s4
	bstrpick.d	$a2, $a2, 15, 0
	bgeu	$a2, $t8, .LBB38_79
# %bb.62:                               #   in Loop: Header=BB38_38 Depth=2
	move	$s4, $zero
	b	.LBB38_80
.LBB38_63:                              # %.thread976
                                        #   in Loop: Header=BB38_38 Depth=2
	ori	$s6, $zero, 1
.LBB38_64:                              #   in Loop: Header=BB38_38 Depth=2
	ldptr.d	$a2, $a0, 4856
	ldx.d	$a2, $a2, $s3
	stx.b	$s6, $a2, $s0
.LBB38_65:                              #   in Loop: Header=BB38_38 Depth=2
	ld.d	$a2, $t1, 132
	ld.d	$s6, $a2, 0
	ldptr.d	$s7, $a0, 3232
	ldx.d	$s6, $s6, $s2
	ld.d	$s8, $s7, 0
	ldx.d	$s6, $s6, $s4
	ldx.d	$s8, $s8, $s3
	ld.h	$ra, $s6, 0
	ldx.d	$s8, $s8, $fp
	ld.d	$a2, $a2, 8
	st.h	$ra, $s8, 0
	ldx.d	$a2, $a2, $s2
	ld.d	$s7, $s7, 8
	ld.h	$s6, $s6, 2
	ldx.d	$a2, $a2, $s4
	ldx.d	$s7, $s7, $s3
	st.h	$s6, $s8, 2
	ld.d	$s6, $t1, 108
	ld.h	$s8, $a2, 0
	ldx.d	$s7, $s7, $fp
	ld.d	$s6, $s6, 0
	ldptr.d	$ra, $a0, 3216
	st.h	$s8, $s7, 0
	ld.h	$a2, $a2, 2
	ldx.d	$s6, $s6, $s2
	ld.d	$s8, $ra, 0
	st.h	$a2, $s7, 2
	ldx.b	$a2, $s6, $s5
	ldx.d	$s6, $s8, $s3
	stx.b	$a2, $s6, $s0
	ld.d	$a2, $t1, 108
	ld.d	$a2, $a2, 8
	ldptr.d	$s6, $a0, 3216
	ldx.d	$a2, $a2, $s2
	ld.d	$s6, $s6, 8
	ldx.b	$a2, $a2, $s5
	ldx.d	$s5, $s6, $s3
	stx.b	$a2, $s5, $s0
	ld.d	$a2, $t1, 124
	ld.d	$s5, $a2, 0
	ldptr.d	$s6, $a0, 3224
	ldx.d	$s5, $s5, $s2
	ld.d	$s7, $s6, 0
	ld.d	$a2, $a2, 8
	ldx.d	$s8, $s5, $s4
	ldx.d	$s7, $s7, $s3
	ldx.d	$a2, $a2, $s2
	ld.d	$s6, $s6, 8
	ld.d	$s5, $a4, 0
	stx.d	$s8, $s7, $fp
	ldx.d	$a2, $a2, $s4
	ldx.d	$s6, $s6, $s3
	ld.w	$s4, $s5, 40
	stx.d	$a2, $s6, $fp
	bne	$s4, $t7, .LBB38_36
# %bb.66:                               #   in Loop: Header=BB38_38 Depth=2
	ldptr.d	$s5, $a0, 3216
	ld.d	$a2, $s5, 0
	ldx.d	$a2, $a2, $s3
	ld.w	$s4, $t1, 0
	ldx.bu	$s6, $a2, $s0
	bnez	$s4, .LBB38_71
# %bb.67:                               #   in Loop: Header=BB38_38 Depth=2
	bnez	$s6, .LBB38_71
# %bb.68:                               #   in Loop: Header=BB38_38 Depth=2
	ldptr.d	$a2, $a0, 3232
	ld.d	$a2, $a2, 0
	ldx.d	$a2, $a2, $s3
	ldx.d	$s4, $a2, $fp
	ld.h	$a2, $s4, 0
	ext.w.h	$s5, $a2
	srai.d	$s5, $s5, 15
	xor	$a2, $a2, $s5
	sub.d	$a2, $a2, $s5
	bstrpick.d	$a2, $a2, 15, 0
	bltu	$t7, $a2, .LBB38_34
# %bb.69:                               #   in Loop: Header=BB38_38 Depth=2
	ld.h	$a2, $s4, 2
	ext.w.h	$s4, $a2
	srai.d	$s4, $s4, 15
	xor	$a2, $a2, $s4
	sub.d	$a2, $a2, $s4
	bstrpick.d	$a2, $a2, 15, 0
	bgeu	$a2, $t8, .LBB38_34
# %bb.70:                               #   in Loop: Header=BB38_38 Depth=2
	move	$s4, $zero
	b	.LBB38_35
.LBB38_71:                              # %._crit_edge909
                                        #   in Loop: Header=BB38_38 Depth=2
	ori	$s4, $zero, 1
	bne	$s6, $t4, .LBB38_35
# %bb.72:                               #   in Loop: Header=BB38_38 Depth=2
	ld.d	$a2, $s5, 8
	ldx.d	$a2, $a2, $s3
	ldx.bu	$a2, $a2, $s0
	bnez	$a2, .LBB38_35
# %bb.73:                               #   in Loop: Header=BB38_38 Depth=2
	ldptr.d	$a2, $a0, 3232
	ld.d	$a2, $a2, 8
	ldx.d	$a2, $a2, $s3
	ldx.d	$s5, $a2, $fp
	ld.h	$a2, $s5, 0
	ext.w.h	$s4, $a2
	srai.d	$s4, $s4, 15
	xor	$a2, $a2, $s4
	sub.d	$a2, $a2, $s4
	bstrpick.d	$a2, $a2, 15, 0
	ori	$s4, $zero, 1
	bltu	$s4, $a2, .LBB38_35
# %bb.74:                               #   in Loop: Header=BB38_38 Depth=2
	ld.h	$a2, $s5, 2
	ext.w.h	$s4, $a2
	srai.d	$s4, $s4, 15
	xor	$a2, $a2, $s4
	sub.d	$a2, $a2, $s4
	bstrpick.d	$a2, $a2, 15, 0
	sltu	$s4, $t7, $a2
	b	.LBB38_35
.LBB38_75:                              # %._crit_edge919
                                        #   in Loop: Header=BB38_38 Depth=2
	ori	$s4, $zero, 1
	bne	$s7, $t4, .LBB38_80
# %bb.76:                               #   in Loop: Header=BB38_38 Depth=2
	ld.d	$a2, $s5, 8
	ldx.d	$a2, $a2, $s3
	ldx.bu	$a2, $a2, $s0
	bnez	$a2, .LBB38_80
# %bb.77:                               #   in Loop: Header=BB38_38 Depth=2
	ld.d	$a2, $a0, 1616
	ld.d	$a2, $a2, 8
	ldx.d	$a2, $a2, $s3
	ldx.d	$s5, $a2, $fp
	ld.h	$a2, $s5, 0
	ext.w.h	$s4, $a2
	srai.d	$s4, $s4, 15
	xor	$a2, $a2, $s4
	sub.d	$a2, $a2, $s4
	bstrpick.d	$a2, $a2, 15, 0
	ori	$s4, $zero, 1
	bltu	$s4, $a2, .LBB38_80
# %bb.78:                               #   in Loop: Header=BB38_38 Depth=2
	ld.h	$a2, $s5, 2
	ext.w.h	$s4, $a2
	srai.d	$s4, $s4, 15
	xor	$a2, $a2, $s4
	sub.d	$a2, $a2, $s4
	bstrpick.d	$a2, $a2, 15, 0
	sltu	$s4, $t7, $a2
	b	.LBB38_80
.LBB38_79:                              # %.thread
                                        #   in Loop: Header=BB38_38 Depth=2
	ori	$s4, $zero, 1
.LBB38_80:                              #   in Loop: Header=BB38_38 Depth=2
	ld.d	$a2, $a0, 1624
	ldx.d	$a2, $a2, $s3
	stx.b	$s4, $a2, $s0
	ld.d	$s5, $a4, 0
	b	.LBB38_37
.LBB38_81:                              # %.loopexit827
	ld.d	$t1, $a5, %pc_lo12(active_sps)
	ldptr.w	$t2, $t1, 2076
	beqz	$t2, .LBB38_83
# %bb.82:
	ldptr.w	$a2, $t1, 2084
	beqz	$a2, .LBB38_96
.LBB38_83:
	ldptr.w	$a2, $s5, 5584
	bnez	$a2, .LBB38_98
# %bb.84:                               # %.preheader825
	ld.w	$t7, $a3, 24
	ori	$t0, $zero, 4
	blt	$t7, $t0, .LBB38_98
# %bb.85:                               # %.lr.ph845
	addi.d	$t1, $a3, 164
	ld.w	$s3, $a3, 20
	addi.d	$t2, $a3, 156
	lu12i.w	$a2, 262143
	ori	$t3, $a2, 4092
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$t4, $a2, %got_pc_lo12(dec_picture)
	move	$t5, $zero
	ori	$a7, $a7, 1560
	lu12i.w	$a2, 1
	ori	$t6, $a2, 768
	b	.LBB38_88
	.p2align	4, , 16
.LBB38_86:                              # %._crit_edge843.loopexit
                                        #   in Loop: Header=BB38_88 Depth=1
	ld.w	$t7, $a3, 24
.LBB38_87:                              # %._crit_edge843
                                        #   in Loop: Header=BB38_88 Depth=1
	addi.d	$t5, $t5, 1
	bstrpick.d	$a2, $t7, 62, 61
	add.w	$a2, $t7, $a2
	srai.d	$a2, $a2, 2
	bge	$t5, $a2, .LBB38_97
.LBB38_88:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_93 Depth 2
	blt	$s3, $t0, .LBB38_87
# %bb.89:                               # %.lr.ph842
                                        #   in Loop: Header=BB38_88 Depth=1
	move	$t7, $zero
	move	$t8, $zero
	srli.d	$fp, $t5, 1
	and	$a2, $fp, $t3
	add.d	$s0, $a2, $fp
	addi.d	$s1, $s0, 4
	slli.d	$s2, $t5, 3
	b	.LBB38_93
	.p2align	4, , 16
.LBB38_90:                              #   in Loop: Header=BB38_93 Depth=2
	add.d	$a2, $s6, $a7
	ld.d	$s6, $a2, 24
	ld.d	$s7, $s6, 0
	ldx.d	$s7, $s7, $s3
	ldx.d	$s7, $s7, $t7
	ld.h	$s8, $s7, 0
	ld.d	$s6, $s6, 8
	st.h	$s8, $s5, 0
	ldx.d	$s6, $s6, $s3
	ld.d	$s4, $s4, 8
	ld.h	$s7, $s7, 2
	ldx.d	$s6, $s6, $t7
	ldx.d	$s4, $s4, $s2
	st.h	$s7, $s5, 2
	ld.d	$a2, $a2, 0
	ld.h	$s5, $s6, 0
	ldx.d	$s4, $s4, $t7
	ld.d	$a2, $a2, 0
	ld.d	$s7, $a0, 1600
	st.h	$s5, $s4, 0
	ld.h	$s5, $s6, 2
	ldx.d	$a2, $a2, $s3
	ld.d	$s6, $s7, 0
	st.h	$s5, $s4, 2
	ldx.b	$a2, $a2, $t8
	ldx.d	$s4, $s6, $s2
	stx.b	$a2, $s4, $t8
	move	$s4, $t1
	move	$s5, $s1
.LBB38_91:                              # %.sink.split
                                        #   in Loop: Header=BB38_93 Depth=2
	ld.d	$a2, $s4, 0
	ldx.d	$a2, $a2, $a7
	ld.d	$a2, $a2, 8
	ld.d	$s6, $a0, 1600
	ldx.d	$a2, $a2, $s3
	ld.d	$s3, $s6, 8
	ldx.b	$a2, $a2, $t8
	ldx.d	$s3, $s3, $s2
	stx.b	$a2, $s3, $t8
	ld.d	$a2, $a3, 124
	ld.d	$s3, $a2, 0
	ld.d	$s6, $a0, 1608
	slli.d	$s5, $s5, 3
	ldx.d	$s3, $s3, $s5
	ld.d	$s7, $s6, 0
	ld.d	$a2, $a2, 8
	ldx.d	$s3, $s3, $t7
	ldx.d	$s7, $s7, $s2
	ldx.d	$a2, $a2, $s5
	ld.d	$s5, $s6, 8
	ld.d	$s4, $s4, 0
	stx.d	$s3, $s7, $t7
	ldx.d	$a2, $a2, $t7
	ldx.d	$s3, $s5, $s2
	ldx.b	$s4, $s4, $a6
	stx.d	$a2, $s3, $t7
	stx.b	$s4, $a0, $t6
.LBB38_92:                              #   in Loop: Header=BB38_93 Depth=2
	ld.w	$s3, $a3, 20
	addi.d	$t8, $t8, 1
	bstrpick.d	$a2, $s3, 62, 61
	add.w	$a2, $s3, $a2
	srai.d	$a2, $a2, 2
	addi.d	$t7, $t7, 8
	bge	$t8, $a2, .LBB38_86
.LBB38_93:                              #   Parent Loop BB38_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a3, 148
	ldx.d	$a2, $a2, $s2
	ldx.bu	$a2, $a2, $t8
	beqz	$a2, .LBB38_92
# %bb.94:                               #   in Loop: Header=BB38_93 Depth=2
	ld.d	$a2, $t4, 0
	ld.d	$s6, $t1, 0
	ld.w	$a2, $a2, 4
	ld.w	$s3, $s6, 4
	ld.d	$s4, $a0, 1616
	ld.d	$s7, $t2, 0
	sub.w	$s3, $a2, $s3
	ld.d	$s5, $s4, 0
	srai.d	$s8, $s3, 31
	ld.w	$ra, $s7, 4
	xor	$s3, $s3, $s8
	ldx.d	$s5, $s5, $s2
	sub.w	$s8, $s3, $s8
	sub.w	$a2, $a2, $ra
	srai.d	$s3, $a2, 31
	ldx.d	$s5, $s5, $t7
	xor	$a2, $a2, $s3
	sub.w	$a2, $a2, $s3
	slli.d	$s3, $fp, 3
	bgeu	$a2, $s8, .LBB38_90
# %bb.95:                               #   in Loop: Header=BB38_93 Depth=2
	add.d	$a2, $s7, $a7
	ld.d	$s6, $a2, 24
	ld.d	$s7, $s6, 0
	ldx.d	$s7, $s7, $s3
	ldx.d	$s7, $s7, $t7
	ld.h	$s8, $s7, 0
	ld.d	$s6, $s6, 8
	st.h	$s8, $s5, 0
	ldx.d	$s6, $s6, $s3
	ld.d	$s4, $s4, 8
	ld.h	$s7, $s7, 2
	ldx.d	$s6, $s6, $t7
	ldx.d	$s4, $s4, $s2
	st.h	$s7, $s5, 2
	ld.d	$a2, $a2, 0
	ld.h	$s5, $s6, 0
	ldx.d	$s4, $s4, $t7
	ld.d	$a2, $a2, 0
	ld.d	$s7, $a0, 1600
	st.h	$s5, $s4, 0
	ld.h	$s5, $s6, 2
	ldx.d	$a2, $a2, $s3
	ld.d	$s6, $s7, 0
	st.h	$s5, $s4, 2
	ldx.b	$a2, $a2, $t8
	ldx.d	$s4, $s6, $s2
	stx.b	$a2, $s4, $t8
	move	$s4, $t2
	move	$s5, $s0
	b	.LBB38_91
.LBB38_96:                              # %.loopexit826.thread
	ld.b	$a2, $a3, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 768
	stx.b	$a2, $a0, $a5
	b	.LBB38_99
.LBB38_97:                              # %.loopexit826.loopexit
	ld.d	$t1, $a5, %pc_lo12(active_sps)
	ori	$a2, $zero, 2076
	ldx.w	$t2, $t1, $a2
.LBB38_98:                              # %.loopexit826
	ld.b	$a2, $a3, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 768
	stx.b	$a2, $a0, $a5
	beqz	$t2, .LBB38_100
.LBB38_99:
	ldptr.w	$a2, $t1, 2084
	beqz	$a2, .LBB38_119
.LBB38_100:
	ld.w	$t3, $a3, 24
	ori	$a5, $zero, 4
	blt	$t3, $a5, .LBB38_138
# %bb.101:                              # %.lr.ph856
	move	$a6, $zero
	ld.w	$t7, $a3, 20
	ori	$a7, $zero, 1
	lu12i.w	$a2, 1
	ori	$t0, $a2, 768
	ori	$t1, $zero, 2
	ori	$t2, $zero, 255
	b	.LBB38_104
	.p2align	4, , 16
.LBB38_102:                             # %._crit_edge853.loopexit
                                        #   in Loop: Header=BB38_104 Depth=1
	ld.w	$t3, $a3, 24
.LBB38_103:                             # %._crit_edge853
                                        #   in Loop: Header=BB38_104 Depth=1
	addi.d	$a6, $a6, 1
	bstrpick.d	$a2, $t3, 62, 61
	add.w	$a2, $t3, $a2
	srai.d	$a2, $a2, 2
	bge	$a6, $a2, .LBB38_138
.LBB38_104:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_109 Depth 2
	blt	$t7, $a5, .LBB38_103
# %bb.105:                              # %.lr.ph852
                                        #   in Loop: Header=BB38_104 Depth=1
	move	$t3, $zero
	move	$t4, $zero
	srli.d	$a2, $a6, 1
	bstrpick.d	$t5, $a6, 30, 1
	bstrins.d	$a2, $t5, 63, 1
	slli.d	$t5, $a2, 3
	slli.d	$t6, $a6, 3
	b	.LBB38_109
.LBB38_106:                             # %.thread981
                                        #   in Loop: Header=BB38_109 Depth=2
	ori	$t7, $zero, 1
.LBB38_107:                             #   in Loop: Header=BB38_109 Depth=2
	ld.d	$a2, $a0, 1624
	ldx.d	$a2, $a2, $t6
	stx.b	$t7, $a2, $t4
.LBB38_108:                             #   in Loop: Header=BB38_109 Depth=2
	ld.w	$t7, $a3, 20
	addi.d	$t4, $t4, 1
	bstrpick.d	$a2, $t7, 62, 61
	add.w	$a2, $t7, $a2
	srai.d	$a2, $a2, 2
	addi.d	$t3, $t3, 8
	bge	$t4, $a2, .LBB38_102
.LBB38_109:                             #   Parent Loop BB38_104 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 1616
	ld.d	$t7, $a2, 0
	srli.d	$t8, $t4, 1
	ldx.d	$fp, $t7, $t5
	bstrpick.d	$s0, $t4, 30, 1
	bstrins.d	$t8, $s0, 63, 1
	slli.d	$s0, $t8, 3
	ldx.d	$fp, $fp, $s0
	ldx.d	$t7, $t7, $t6
	ld.h	$s1, $fp, 0
	ld.d	$a2, $a2, 8
	ldx.d	$t7, $t7, $t3
	ldx.d	$s2, $a2, $t5
	st.h	$s1, $t7, 0
	ld.h	$fp, $fp, 2
	ldx.d	$s1, $s2, $s0
	ldx.d	$a2, $a2, $t6
	st.h	$fp, $t7, 2
	ld.d	$t7, $a0, 1600
	ld.h	$fp, $s1, 0
	ldx.d	$a2, $a2, $t3
	ld.d	$t7, $t7, 0
	st.h	$fp, $a2, 0
	ld.h	$fp, $s1, 2
	ldx.d	$s1, $t7, $t5
	st.h	$fp, $a2, 2
	ldx.b	$a2, $s1, $t8
	ldx.d	$t7, $t7, $t6
	stx.b	$a2, $t7, $t4
	ld.d	$a2, $a0, 1600
	ld.d	$a2, $a2, 8
	ldx.d	$t7, $a2, $t5
	ldx.b	$t7, $t7, $t8
	ldx.d	$a2, $a2, $t6
	stx.b	$t7, $a2, $t4
	ld.d	$a2, $a0, 1608
	ld.d	$t7, $a2, 0
	ldx.d	$t8, $t7, $t5
	ld.d	$a2, $a2, 8
	ldx.d	$t8, $t8, $s0
	ldx.d	$t7, $t7, $t6
	ldx.d	$fp, $a2, $t5
	ld.d	$s1, $a4, 0
	stx.d	$t8, $t7, $t3
	ldx.d	$t7, $fp, $s0
	ldx.d	$a2, $a2, $t6
	ld.w	$t8, $s1, 40
	stx.d	$t7, $a2, $t3
	bne	$t8, $a7, .LBB38_108
# %bb.110:                              #   in Loop: Header=BB38_109 Depth=2
	ld.d	$t8, $a0, 1600
	ld.d	$a2, $t8, 0
	ldx.d	$a2, $a2, $t6
	ldx.bu	$t7, $a0, $t0
	ldx.bu	$fp, $a2, $t4
	bnez	$t7, .LBB38_115
# %bb.111:                              #   in Loop: Header=BB38_109 Depth=2
	bnez	$fp, .LBB38_115
# %bb.112:                              #   in Loop: Header=BB38_109 Depth=2
	ld.d	$a2, $a0, 1616
	ld.d	$a2, $a2, 0
	ldx.d	$a2, $a2, $t6
	ldx.d	$t7, $a2, $t3
	ld.h	$a2, $t7, 0
	ext.w.h	$t8, $a2
	srai.d	$t8, $t8, 15
	xor	$a2, $a2, $t8
	sub.d	$a2, $a2, $t8
	bstrpick.d	$a2, $a2, 15, 0
	bltu	$a7, $a2, .LBB38_106
# %bb.113:                              #   in Loop: Header=BB38_109 Depth=2
	ld.h	$a2, $t7, 2
	ext.w.h	$t7, $a2
	srai.d	$t7, $t7, 15
	xor	$a2, $a2, $t7
	sub.d	$a2, $a2, $t7
	bstrpick.d	$a2, $a2, 15, 0
	bgeu	$a2, $t1, .LBB38_106
# %bb.114:                              #   in Loop: Header=BB38_109 Depth=2
	move	$t7, $zero
	b	.LBB38_107
	.p2align	4, , 16
.LBB38_115:                             # %._crit_edge942
                                        #   in Loop: Header=BB38_109 Depth=2
	ori	$t7, $zero, 1
	bne	$fp, $t2, .LBB38_107
# %bb.116:                              #   in Loop: Header=BB38_109 Depth=2
	ld.d	$a2, $t8, 8
	ldx.d	$a2, $a2, $t6
	ldx.bu	$a2, $a2, $t4
	bnez	$a2, .LBB38_107
# %bb.117:                              #   in Loop: Header=BB38_109 Depth=2
	ld.d	$a2, $a0, 1616
	ld.d	$a2, $a2, 8
	ldx.d	$a2, $a2, $t6
	ldx.d	$t8, $a2, $t3
	ld.h	$a2, $t8, 0
	ext.w.h	$t7, $a2
	srai.d	$t7, $t7, 15
	xor	$a2, $a2, $t7
	sub.d	$a2, $a2, $t7
	bstrpick.d	$a2, $a2, 15, 0
	ori	$t7, $zero, 1
	bltu	$t7, $a2, .LBB38_107
# %bb.118:                              #   in Loop: Header=BB38_109 Depth=2
	ld.h	$a2, $t8, 2
	ext.w.h	$t7, $a2
	srai.d	$t7, $t7, 15
	xor	$a2, $a2, $t7
	sub.d	$a2, $a2, $t7
	bstrpick.d	$a2, $a2, 15, 0
	sltu	$t7, $a7, $a2
	b	.LBB38_107
.LBB38_119:                             # %.preheader823
	ld.w	$t3, $a3, 24
	ori	$a5, $zero, 4
	blt	$t3, $a5, .LBB38_138
# %bb.120:                              # %.preheader822.lr.ph
	move	$a6, $zero
	ld.w	$t6, $a3, 20
	ori	$a7, $zero, 1
	lu12i.w	$a2, 1
	ori	$t0, $a2, 768
	ori	$t1, $zero, 2
	ori	$t2, $zero, 255
	b	.LBB38_123
	.p2align	4, , 16
.LBB38_121:                             # %._crit_edge848.loopexit
                                        #   in Loop: Header=BB38_123 Depth=1
	ld.w	$t3, $a3, 24
.LBB38_122:                             # %._crit_edge848
                                        #   in Loop: Header=BB38_123 Depth=1
	addi.d	$a6, $a6, 1
	bstrpick.d	$a2, $t3, 62, 61
	add.w	$a2, $t3, $a2
	srai.d	$a2, $a2, 2
	bge	$a6, $a2, .LBB38_138
.LBB38_123:                             # %.preheader822
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_128 Depth 2
	blt	$t6, $a5, .LBB38_122
# %bb.124:                              # %.lr.ph847.preheader
                                        #   in Loop: Header=BB38_123 Depth=1
	move	$t3, $zero
	move	$t4, $zero
	slli.d	$t5, $a6, 3
	b	.LBB38_128
.LBB38_125:                             # %.thread983
                                        #   in Loop: Header=BB38_128 Depth=2
	ori	$t6, $zero, 1
.LBB38_126:                             #   in Loop: Header=BB38_128 Depth=2
	ld.d	$a2, $a0, 1624
	ldx.d	$a2, $a2, $t5
	stx.b	$t6, $a2, $t4
.LBB38_127:                             #   in Loop: Header=BB38_128 Depth=2
	ld.w	$t6, $a3, 20
	addi.d	$t4, $t4, 1
	bstrpick.d	$a2, $t6, 62, 61
	add.w	$a2, $t6, $a2
	srai.d	$a2, $a2, 2
	addi.d	$t3, $t3, 8
	bge	$t4, $a2, .LBB38_121
.LBB38_128:                             # %.lr.ph847
                                        #   Parent Loop BB38_123 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a3, 132
	ld.d	$t6, $a2, 0
	ld.d	$t7, $a0, 1616
	ldx.d	$t6, $t6, $t5
	ld.d	$t8, $t7, 0
	ldx.d	$t6, $t6, $t3
	ldx.d	$t8, $t8, $t5
	ld.h	$fp, $t6, 0
	ldx.d	$t8, $t8, $t3
	ld.d	$a2, $a2, 8
	st.h	$fp, $t8, 0
	ldx.d	$a2, $a2, $t5
	ld.d	$t7, $t7, 8
	ld.h	$t6, $t6, 2
	ldx.d	$a2, $a2, $t3
	ldx.d	$t7, $t7, $t5
	st.h	$t6, $t8, 2
	ld.d	$t6, $a3, 108
	ld.h	$t8, $a2, 0
	ldx.d	$t7, $t7, $t3
	ld.d	$t6, $t6, 0
	ld.d	$fp, $a0, 1600
	st.h	$t8, $t7, 0
	ld.h	$a2, $a2, 2
	ldx.d	$t6, $t6, $t5
	ld.d	$t8, $fp, 0
	st.h	$a2, $t7, 2
	ldx.b	$a2, $t6, $t4
	ldx.d	$t6, $t8, $t5
	stx.b	$a2, $t6, $t4
	ld.d	$a2, $a3, 108
	ld.d	$a2, $a2, 8
	ld.d	$t6, $a0, 1600
	ldx.d	$a2, $a2, $t5
	ld.d	$t6, $t6, 8
	ldx.b	$a2, $a2, $t4
	ldx.d	$t6, $t6, $t5
	stx.b	$a2, $t6, $t4
	ld.d	$a2, $a3, 124
	ld.d	$t6, $a2, 0
	ld.d	$t7, $a0, 1608
	ldx.d	$t6, $t6, $t5
	ld.d	$t8, $t7, 0
	ld.d	$a2, $a2, 8
	ldx.d	$t6, $t6, $t3
	ldx.d	$t8, $t8, $t5
	ldx.d	$a2, $a2, $t5
	ld.d	$t7, $t7, 8
	ld.d	$fp, $a4, 0
	stx.d	$t6, $t8, $t3
	ldx.d	$a2, $a2, $t3
	ldx.d	$t6, $t7, $t5
	ld.w	$t7, $fp, 40
	stx.d	$a2, $t6, $t3
	bne	$t7, $a7, .LBB38_127
# %bb.129:                              #   in Loop: Header=BB38_128 Depth=2
	ld.d	$t7, $a0, 1600
	ld.d	$a2, $t7, 0
	ldx.d	$a2, $a2, $t5
	ldx.bu	$t6, $a0, $t0
	ldx.bu	$t8, $a2, $t4
	bnez	$t6, .LBB38_134
# %bb.130:                              #   in Loop: Header=BB38_128 Depth=2
	bnez	$t8, .LBB38_134
# %bb.131:                              #   in Loop: Header=BB38_128 Depth=2
	ld.d	$a2, $a0, 1616
	ld.d	$a2, $a2, 0
	ldx.d	$a2, $a2, $t5
	ldx.d	$t6, $a2, $t3
	ld.h	$a2, $t6, 0
	ext.w.h	$t7, $a2
	srai.d	$t7, $t7, 15
	xor	$a2, $a2, $t7
	sub.d	$a2, $a2, $t7
	bstrpick.d	$a2, $a2, 15, 0
	bltu	$a7, $a2, .LBB38_125
# %bb.132:                              #   in Loop: Header=BB38_128 Depth=2
	ld.h	$a2, $t6, 2
	ext.w.h	$t6, $a2
	srai.d	$t6, $t6, 15
	xor	$a2, $a2, $t6
	sub.d	$a2, $a2, $t6
	bstrpick.d	$a2, $a2, 15, 0
	bgeu	$a2, $t1, .LBB38_125
# %bb.133:                              #   in Loop: Header=BB38_128 Depth=2
	move	$t6, $zero
	b	.LBB38_126
	.p2align	4, , 16
.LBB38_134:                             # %._crit_edge933
                                        #   in Loop: Header=BB38_128 Depth=2
	ori	$t6, $zero, 1
	bne	$t8, $t2, .LBB38_126
# %bb.135:                              #   in Loop: Header=BB38_128 Depth=2
	ld.d	$a2, $t7, 8
	ldx.d	$a2, $a2, $t5
	ldx.bu	$a2, $a2, $t4
	bnez	$a2, .LBB38_126
# %bb.136:                              #   in Loop: Header=BB38_128 Depth=2
	ld.d	$a2, $a0, 1616
	ld.d	$a2, $a2, 8
	ldx.d	$a2, $a2, $t5
	ldx.d	$t7, $a2, $t3
	ld.h	$a2, $t7, 0
	ext.w.h	$t6, $a2
	srai.d	$t6, $t6, 15
	xor	$a2, $a2, $t6
	sub.d	$a2, $a2, $t6
	bstrpick.d	$a2, $a2, 15, 0
	ori	$t6, $zero, 1
	bltu	$t6, $a2, .LBB38_126
# %bb.137:                              #   in Loop: Header=BB38_128 Depth=2
	ld.h	$a2, $t7, 2
	ext.w.h	$t6, $a2
	srai.d	$t6, $t6, 15
	xor	$a2, $a2, $t6
	sub.d	$a2, $a2, $t6
	bstrpick.d	$a2, $a2, 15, 0
	sltu	$t6, $a7, $a2
	b	.LBB38_126
.LBB38_138:                             # %.loopexit821
	ld.d	$a4, $a4, 0
	ld.w	$a2, $a4, 40
	beqz	$a2, .LBB38_140
.LBB38_139:                             # %.loopexit
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
	ret
.LBB38_140:                             # %.preheader820
	ori	$a5, $zero, 4
	blt	$t3, $a5, .LBB38_155
# %bb.141:                              # %.preheader819.lr.ph
	ld.w	$t0, $a3, 20
	blt	$t0, $a5, .LBB38_155
# %bb.142:                              # %.preheader819.lr.ph.split.us
	move	$a5, $zero
	bstrpick.d	$a2, $t3, 62, 61
	lu12i.w	$a6, 1
	ori	$a6, $a6, 1528
	ldx.w	$a6, $a4, $a6
	add.w	$a2, $t3, $a2
	srai.d	$a7, $a2, 2
	bstrpick.d	$t0, $t0, 31, 2
	b	.LBB38_144
	.p2align	4, , 16
.LBB38_143:                             # %._crit_edge859.us
                                        #   in Loop: Header=BB38_144 Depth=1
	addi.d	$a5, $a5, 1
	beq	$a5, $a7, .LBB38_155
.LBB38_144:                             # %.preheader819.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_149 Depth 2
	move	$t1, $zero
	slli.d	$t2, $a5, 3
	b	.LBB38_149
.LBB38_145:                             #   in Loop: Header=BB38_149 Depth=2
	ld.d	$a2, $a3, 148
	ldx.d	$a2, $a2, $t2
	ldx.bu	$a2, $a2, $t1
	beqz	$a2, .LBB38_148
	.p2align	4, , 16
.LBB38_146:                             #   in Loop: Header=BB38_149 Depth=2
	ld.d	$a2, $a0, 1616
	ld.d	$t3, $a2, 0
	ldx.d	$t3, $t3, $t2
	ld.d	$a2, $a2, 8
	slli.d	$t4, $t1, 3
	ldx.d	$t3, $t3, $t4
	ldx.d	$a2, $a2, $t2
	ld.h	$t5, $t3, 2
	ldx.d	$a2, $a2, $t4
	slli.d	$t4, $t5, 1
	st.h	$t4, $t3, 2
	ld.h	$t3, $a2, 2
	slli.d	$t3, $t3, 1
.LBB38_147:                             # %.thread.us.thread
                                        #   in Loop: Header=BB38_149 Depth=2
	st.h	$t3, $a2, 2
.LBB38_148:                             # %.thread.us.thread
                                        #   in Loop: Header=BB38_149 Depth=2
	addi.d	$t1, $t1, 1
	beq	$t1, $t0, .LBB38_143
.LBB38_149:                             #   Parent Loop BB38_144 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a6, .LBB38_152
# %bb.150:                              #   in Loop: Header=BB38_149 Depth=2
	ld.d	$a2, $a3, 148
	ldx.d	$a2, $a2, $t2
	ldx.bu	$a2, $a2, $t1
	bnez	$a2, .LBB38_146
# %bb.151:                              # %.thread.us
                                        #   in Loop: Header=BB38_149 Depth=2
	ldptr.w	$a2, $a4, 5584
	bnez	$a2, .LBB38_153
	b	.LBB38_148
	.p2align	4, , 16
.LBB38_152:                             #   in Loop: Header=BB38_149 Depth=2
	ldptr.w	$a2, $a4, 5584
	beqz	$a2, .LBB38_145
.LBB38_153:                             # %.thread.us.thread985
                                        #   in Loop: Header=BB38_149 Depth=2
	ld.d	$a2, $a3, 148
	ldx.d	$a2, $a2, $t2
	ldx.bu	$a2, $a2, $t1
	bnez	$a2, .LBB38_148
# %bb.154:                              #   in Loop: Header=BB38_149 Depth=2
	ld.d	$a2, $a0, 1616
	ld.d	$t3, $a2, 0
	ldx.d	$t3, $t3, $t2
	slli.d	$t4, $t1, 3
	ldx.d	$t3, $t3, $t4
	ld.d	$a2, $a2, 8
	ld.hu	$t5, $t3, 2
	ldx.d	$a2, $a2, $t2
	srli.d	$t6, $t5, 15
	add.d	$t5, $t5, $t6
	ldx.d	$a2, $a2, $t4
	ext.w.h	$t4, $t5
	srli.d	$t4, $t4, 1
	st.h	$t4, $t3, 2
	ld.hu	$t3, $a2, 2
	srli.d	$t4, $t3, 15
	add.d	$t3, $t3, $t4
	ext.w.h	$t3, $t3
	srli.d	$t3, $t3, 1
	b	.LBB38_147
.LBB38_155:                             # %.preheader818
	ldptr.w	$t6, $a4, 5624
	bltz	$t6, .LBB38_139
# %bb.156:                              # %.preheader.lr.ph
	addi.d	$a0, $a4, 616
	pcalau12i	$a2, %pc_hi20(listXsize)
	addi.d	$a3, $a2, %pc_lo12(listXsize)
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a5, $a2, %got_pc_lo12(dec_picture)
	move	$t7, $zero
	lu12i.w	$a2, 2
	ori	$a6, $a2, 1807
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1528
	addi.w	$a7, $zero, -128
	ori	$t0, $zero, 127
	lu12i.w	$t1, 4
	addi.w	$t2, $zero, -1024
	ori	$t3, $zero, 1023
	ori	$t4, $zero, 2
	b	.LBB38_159
	.p2align	4, , 16
.LBB38_157:                             # %._crit_edge863.loopexit
                                        #   in Loop: Header=BB38_159 Depth=1
	ldx.w	$t6, $a4, $a2
.LBB38_158:                             # %._crit_edge863
                                        #   in Loop: Header=BB38_159 Depth=1
	addi.d	$t7, $t5, 2
	slli.w	$t8, $t6, 2
	addi.d	$a0, $a0, 256
	bge	$t5, $t8, .LBB38_139
.LBB38_159:                             # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_162 Depth 2
	move	$t5, $t7
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $a3, $t7
	blez	$t7, .LBB38_158
# %bb.160:                              # %.lr.ph862
                                        #   in Loop: Header=BB38_159 Depth=1
	move	$t6, $zero
	alsl.d	$t7, $t5, $a1, 3
	ld.d	$t8, $t7, 8
	alsl.d	$t7, $t5, $a3, 2
	ld.d	$s2, $a5, 0
	slli.d	$fp, $t5, 3
	ld.d	$t8, $t8, 0
	ldx.d	$fp, $a1, $fp
	addi.d	$s0, $s2, 8
	addi.d	$s1, $s2, 4
	addi.d	$s2, $s2, 12
	move	$s3, $a0
	b	.LBB38_162
	.p2align	4, , 16
.LBB38_161:                             #   in Loop: Header=BB38_162 Depth=2
	st.w	$s7, $s3, 0
	ld.w	$s4, $t7, 0
	addi.d	$t6, $t6, 1
	addi.d	$s3, $s3, 4
	addi.d	$fp, $fp, 8
	bge	$t6, $s4, .LBB38_157
.LBB38_162:                             #   Parent Loop BB38_159 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s4, $s1
	beqz	$t5, .LBB38_165
# %bb.163:                              #   in Loop: Header=BB38_162 Depth=2
	move	$s4, $s0
	beq	$t5, $t4, .LBB38_165
# %bb.164:                              #   in Loop: Header=BB38_162 Depth=2
	move	$s4, $s2
.LBB38_165:                             #   in Loop: Header=BB38_162 Depth=2
	ld.d	$s6, $fp, 0
	ld.w	$s5, $t8, 4
	ld.w	$s6, $s6, 4
	move	$s7, $a6
	beq	$s5, $s6, .LBB38_161
# %bb.166:                              #   in Loop: Header=BB38_162 Depth=2
	ld.d	$s7, $fp, 0
	ld.w	$s7, $s7, 4
	ld.w	$s4, $s4, 0
	sub.w	$s4, $s4, $s7
	slt	$s7, $a7, $s4
	maskeqz	$s4, $s4, $s7
	masknez	$s7, $a7, $s7
	or	$s4, $s4, $s7
	slti	$s7, $s4, 127
	maskeqz	$s4, $s4, $s7
	masknez	$s7, $t0, $s7
	or	$s4, $s4, $s7
	sub.w	$s5, $s5, $s6
	slt	$s6, $a7, $s5
	maskeqz	$s5, $s5, $s6
	masknez	$s6, $a7, $s6
	or	$s5, $s5, $s6
	slti	$s6, $s5, 127
	maskeqz	$s5, $s5, $s6
	masknez	$s6, $t0, $s6
	or	$s5, $s5, $s6
	bstrpick.d	$s6, $s5, 7, 7
	add.d	$s6, $s5, $s6
	ext.w.b	$s6, $s6
	srai.d	$s6, $s6, 1
	srai.d	$s7, $s6, 63
	xor	$s6, $s6, $s7
	sub.d	$s6, $s6, $s7
	or	$s6, $s6, $t1
	ext.w.h	$s5, $s5
	div.d	$s5, $s6, $s5
	ext.w.h	$s5, $s5
	mul.d	$s4, $s4, $s5
	addi.w	$s4, $s4, 32
	srai.d	$s4, $s4, 6
	slt	$s5, $t2, $s4
	maskeqz	$s4, $s4, $s5
	masknez	$s5, $t2, $s5
	or	$s4, $s4, $s5
	slti	$s5, $s4, 1023
	maskeqz	$s4, $s4, $s5
	masknez	$s5, $t3, $s5
	or	$s7, $s4, $s5
	b	.LBB38_161
.Lfunc_end38:
	.size	compute_colocated, .Lfunc_end38-compute_colocated
                                        # -- End function
	.p2align	5                               # -- Begin function unmark_long_term_field_for_reference_by_frame_idx
	.type	unmark_long_term_field_for_reference_by_frame_idx,@function
unmark_long_term_field_for_reference_by_frame_idx: # @unmark_long_term_field_for_reference_by_frame_idx
# %bb.0:
	bgez	$a4, .LBB39_2
# %bb.1:
	pcalau12i	$a5, %got_pc_hi20(img)
	ld.d	$a5, $a5, %got_pc_lo12(img)
	ld.d	$a5, $a5, 0
	lu12i.w	$a6, 1
	ori	$a6, $a6, 1720
	ldx.w	$a5, $a5, $a6
	alsl.w	$a4, $a5, $a4, 1
.LBB39_2:
	pcalau12i	$a5, %pc_hi20(dpb)
	addi.d	$a7, $a5, %pc_lo12(dpb)
	ld.wu	$a5, $a7, 36
	beqz	$a5, .LBB39_49
# %bb.3:                                # %.lr.ph
	bstrpick.d	$a6, $a4, 31, 31
	add.w	$a4, $a4, $a6
	ori	$a6, $zero, 2
	srai.d	$a4, $a4, 1
	beq	$a0, $a6, .LBB39_27
# %bb.4:                                # %.lr.ph
	ori	$a6, $zero, 1
	bne	$a0, $a6, .LBB39_49
# %bb.5:                                # %.lr.ph.split.us
	ld.d	$a0, $a7, 16
	ld.d	$a7, $a7, 56
	ori	$t0, $zero, 3
	lu12i.w	$t1, 77
	ori	$t1, $t1, 1452
	b	.LBB39_9
	.p2align	4, , 16
.LBB39_6:                               # %.sink.split.sink.split
                                        #   in Loop: Header=BB39_9 Depth=1
	ld.d	$t3, $t2, 48
	stx.d	$zero, $t3, $t1
.LBB39_7:                               # %.sink.split
                                        #   in Loop: Header=BB39_9 Depth=1
	st.d	$zero, $t2, 4
.LBB39_8:                               #   in Loop: Header=BB39_9 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a0, $a0, 8
	beqz	$a5, .LBB39_49
.LBB39_9:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a0, 0
	ld.w	$t3, $t2, 32
	bne	$t3, $a1, .LBB39_8
# %bb.10:                               #   in Loop: Header=BB39_9 Depth=1
	ld.w	$t3, $t2, 8
	beq	$t3, $t0, .LBB39_12
# %bb.11:                               #   in Loop: Header=BB39_9 Depth=1
	bne	$t3, $a6, .LBB39_22
.LBB39_12:                              #   in Loop: Header=BB39_9 Depth=1
	ld.wu	$t3, $t2, 0
	andi	$t4, $t3, 1
	beqz	$t4, .LBB39_15
# %bb.13:                               #   in Loop: Header=BB39_9 Depth=1
	ld.d	$t4, $t2, 56
	beqz	$t4, .LBB39_15
# %bb.14:                               #   in Loop: Header=BB39_9 Depth=1
	add.d	$t4, $t4, $t1
	st.d	$zero, $t4, 0
.LBB39_15:                              #   in Loop: Header=BB39_9 Depth=1
	andi	$t4, $t3, 2
	beqz	$t4, .LBB39_18
# %bb.16:                               #   in Loop: Header=BB39_9 Depth=1
	ld.d	$t4, $t2, 64
	beqz	$t4, .LBB39_18
# %bb.17:                               #   in Loop: Header=BB39_9 Depth=1
	add.d	$t4, $t4, $t1
	st.d	$zero, $t4, 0
.LBB39_18:                              #   in Loop: Header=BB39_9 Depth=1
	bne	$t3, $t0, .LBB39_7
# %bb.19:                               #   in Loop: Header=BB39_9 Depth=1
	ld.d	$t3, $t2, 56
	beqz	$t3, .LBB39_6
# %bb.20:                               #   in Loop: Header=BB39_9 Depth=1
	ld.d	$t4, $t2, 64
	beqz	$t4, .LBB39_6
# %bb.21:                               # %.sink.split.sink.split.sink.split
                                        #   in Loop: Header=BB39_9 Depth=1
	stx.d	$zero, $t3, $t1
	stx.d	$zero, $t4, $t1
	b	.LBB39_6
.LBB39_22:                              #   in Loop: Header=BB39_9 Depth=1
	beqz	$a2, .LBB39_26
# %bb.23:                               #   in Loop: Header=BB39_9 Depth=1
	beqz	$a7, .LBB39_12
# %bb.24:                               #   in Loop: Header=BB39_9 Depth=1
	bne	$a7, $t2, .LBB39_12
# %bb.25:                               #   in Loop: Header=BB39_9 Depth=1
	ld.w	$t3, $a7, 20
	beq	$t3, $a3, .LBB39_8
	b	.LBB39_12
.LBB39_26:                              #   in Loop: Header=BB39_9 Depth=1
	ld.w	$t3, $t2, 20
	beq	$t3, $a4, .LBB39_8
	b	.LBB39_12
.LBB39_27:                              # %.lr.ph.split.us111
	ld.d	$a0, $a7, 16
	ld.d	$a7, $a7, 56
	ori	$t0, $zero, 3
	lu12i.w	$t1, 77
	ori	$t1, $t1, 1452
	b	.LBB39_31
	.p2align	4, , 16
.LBB39_28:                              # %.sink.split165.sink.split
                                        #   in Loop: Header=BB39_31 Depth=1
	ld.d	$t3, $t2, 48
	stx.d	$zero, $t3, $t1
.LBB39_29:                              # %.sink.split165
                                        #   in Loop: Header=BB39_31 Depth=1
	st.d	$zero, $t2, 4
.LBB39_30:                              #   in Loop: Header=BB39_31 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a0, $a0, 8
	beqz	$a5, .LBB39_49
.LBB39_31:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a0, 0
	ld.w	$t3, $t2, 32
	bne	$t3, $a1, .LBB39_30
# %bb.32:                               #   in Loop: Header=BB39_31 Depth=1
	ld.w	$t3, $t2, 8
	beq	$t3, $t0, .LBB39_34
# %bb.33:                               #   in Loop: Header=BB39_31 Depth=1
	bne	$t3, $a6, .LBB39_44
.LBB39_34:                              #   in Loop: Header=BB39_31 Depth=1
	ld.wu	$t3, $t2, 0
	andi	$t4, $t3, 1
	beqz	$t4, .LBB39_37
# %bb.35:                               #   in Loop: Header=BB39_31 Depth=1
	ld.d	$t4, $t2, 56
	beqz	$t4, .LBB39_37
# %bb.36:                               #   in Loop: Header=BB39_31 Depth=1
	add.d	$t4, $t4, $t1
	st.d	$zero, $t4, 0
.LBB39_37:                              #   in Loop: Header=BB39_31 Depth=1
	andi	$t4, $t3, 2
	beqz	$t4, .LBB39_40
# %bb.38:                               #   in Loop: Header=BB39_31 Depth=1
	ld.d	$t4, $t2, 64
	beqz	$t4, .LBB39_40
# %bb.39:                               #   in Loop: Header=BB39_31 Depth=1
	add.d	$t4, $t4, $t1
	st.d	$zero, $t4, 0
.LBB39_40:                              #   in Loop: Header=BB39_31 Depth=1
	bne	$t3, $t0, .LBB39_29
# %bb.41:                               #   in Loop: Header=BB39_31 Depth=1
	ld.d	$t3, $t2, 56
	beqz	$t3, .LBB39_28
# %bb.42:                               #   in Loop: Header=BB39_31 Depth=1
	ld.d	$t4, $t2, 64
	beqz	$t4, .LBB39_28
# %bb.43:                               # %.sink.split165.sink.split.sink.split
                                        #   in Loop: Header=BB39_31 Depth=1
	stx.d	$zero, $t3, $t1
	stx.d	$zero, $t4, $t1
	b	.LBB39_28
.LBB39_44:                              #   in Loop: Header=BB39_31 Depth=1
	beqz	$a2, .LBB39_48
# %bb.45:                               #   in Loop: Header=BB39_31 Depth=1
	beqz	$a7, .LBB39_34
# %bb.46:                               #   in Loop: Header=BB39_31 Depth=1
	bne	$a7, $t2, .LBB39_34
# %bb.47:                               #   in Loop: Header=BB39_31 Depth=1
	ld.w	$t3, $a7, 20
	beq	$t3, $a3, .LBB39_30
	b	.LBB39_34
.LBB39_48:                              #   in Loop: Header=BB39_31 Depth=1
	ld.w	$t3, $t2, 20
	beq	$t3, $a4, .LBB39_30
	b	.LBB39_34
.LBB39_49:                              # %._crit_edge
	ret
.Lfunc_end39:
	.size	unmark_long_term_field_for_reference_by_frame_idx, .Lfunc_end39-unmark_long_term_field_for_reference_by_frame_idx
                                        # -- End function
	.p2align	5                               # -- Begin function remove_frame_from_dpb
	.type	remove_frame_from_dpb,@function
remove_frame_from_dpb:                  # @remove_frame_from_dpb
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(dpb)
	addi.d	$s0, $a0, %pc_lo12(dpb)
	ld.d	$a0, $s0, 0
	slli.d	$s1, $fp, 3
	ldx.d	$s2, $a0, $s1
	ld.w	$a0, $s2, 0
	ori	$a1, $zero, 3
	vrepli.b	$vr0, 0
	bltu	$a1, $a0, .LBB40_5
# %bb.1:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI40_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI40_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB40_2:
	ld.d	$a0, $s2, 56
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	st.d	$zero, $s2, 56
	b	.LBB40_6
.LBB40_3:
	ld.d	$a0, $s2, 64
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	st.d	$zero, $s2, 64
	b	.LBB40_6
.LBB40_4:
	ld.d	$a0, $s2, 48
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 56
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 64
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	st.d	$zero, $s2, 64
	vst	$vr0, $s2, 48
	b	.LBB40_6
.LBB40_5:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 500
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
.LBB40_6:
	vst	$vr0, $s2, 0
	ld.d	$a0, $s0, 0
	ld.w	$a2, $s0, 28
	ldx.d	$a1, $a0, $s1
	addi.w	$a2, $a2, -1
	bgeu	$fp, $a2, .LBB40_9
# %bb.7:                                # %.lr.ph.preheader
	bstrpick.d	$a7, $fp, 31, 0
	bstrpick.d	$a3, $a2, 31, 0
	sub.d	$a5, $a3, $a7
	ori	$a4, $zero, 4
	bgeu	$a5, $a4, .LBB40_10
# %bb.8:
	move	$a4, $a7
	b	.LBB40_13
.LBB40_9:                               # %.._crit_edge_crit_edge
	bstrpick.d	$a3, $a2, 31, 0
	b	.LBB40_15
.LBB40_10:                              # %vector.ph
	move	$a6, $a5
	bstrins.d	$a6, $zero, 1, 0
	add.d	$a4, $a6, $a7
	alsl.d	$a7, $a7, $a0, 3
	addi.d	$a7, $a7, 16
	move	$t0, $a6
	.p2align	4, , 16
.LBB40_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a7, -8
	vld	$vr1, $a7, 8
	vst	$vr0, $a7, -16
	vst	$vr1, $a7, 0
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB40_11
# %bb.12:                               # %middle.block
	beq	$a5, $a6, .LBB40_15
.LBB40_13:                              # %.lr.ph.preheader27
	alsl.d	$a5, $a4, $a0, 3
	addi.d	$a5, $a5, 8
	sub.d	$a4, $a3, $a4
	.p2align	4, , 16
.LBB40_14:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, 0
	st.d	$a6, $a5, -8
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB40_14
.LBB40_15:                              # %._crit_edge
	slli.d	$a3, $a3, 3
	stx.d	$a1, $a0, $a3
	st.w	$a2, $s0, 28
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end40:
	.size	remove_frame_from_dpb, .Lfunc_end40-remove_frame_from_dpb
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI40_0:
	.word	.LBB40_6-.LJTI40_0
	.word	.LBB40_2-.LJTI40_0
	.word	.LBB40_3-.LJTI40_0
	.word	.LBB40_4-.LJTI40_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function output_one_frame_from_dpb
	.type	output_one_frame_from_dpb,@function
output_one_frame_from_dpb:              # @output_one_frame_from_dpb
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(dpb)
	addi.d	$s1, $a0, %pc_lo12(dpb)
	ld.w	$a2, $s1, 28
	lu12i.w	$s0, 524287
	bnez	$a2, .LBB41_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ori	$a1, $zero, 150
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 28
	bnez	$a2, .LBB41_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	ori	$a1, $zero, 150
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 28
	beqz	$a2, .LBB41_27
.LBB41_3:                               # %.lr.ph.i
	move	$a0, $zero
	ld.d	$a1, $s1, 0
	bstrpick.d	$a2, $a2, 31, 0
	addi.w	$fp, $zero, -1
	ori	$s0, $s0, 4095
	b	.LBB41_5
	.p2align	4, , 16
.LBB41_4:                               #   in Loop: Header=BB41_5 Depth=1
	addi.w	$a0, $a0, 1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	beqz	$a2, .LBB41_7
.LBB41_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	ld.w	$a3, $a4, 40
	bge	$a3, $s0, .LBB41_4
# %bb.6:                                #   in Loop: Header=BB41_5 Depth=1
	ld.w	$a4, $a4, 36
	sltui	$a4, $a4, 1
	masknez	$a5, $s0, $a4
	maskeqz	$a3, $a3, $a4
	or	$s0, $a3, $a5
	masknez	$a3, $fp, $a4
	maskeqz	$a4, $a0, $a4
	or	$fp, $a4, $a3
	b	.LBB41_4
.LBB41_7:                               # %get_smallest_poc.exit
	addi.w	$a0, $zero, -1
	bne	$fp, $a0, .LBB41_9
.LBB41_8:                               # %get_smallest_poc.exit.thread
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	ori	$a1, $zero, 150
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	addi.w	$fp, $zero, -1
.LBB41_9:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s2, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s2, 0
	ldptr.w	$a0, $a0, 6068
	pcalau12i	$s4, %pc_hi20(p_out)
	beqz	$a0, .LBB41_13
# %bb.10:
	ld.w	$a0, $s1, 40
	bnez	$a0, .LBB41_12
# %bb.11:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(write_lost_ref_after_idr)
	jirl	$ra, $ra, 0
.LBB41_12:
	ld.w	$a1, $s4, %pc_lo12(p_out)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(write_lost_non_ref_pic)
	jirl	$ra, $ra, 0
.LBB41_13:
	ld.d	$a0, $s1, 0
	slli.d	$s3, $fp, 3
	ldx.d	$a0, $a0, $s3
	ld.w	$a1, $s4, %pc_lo12(p_out)
	pcaddu18i	$ra, %call36(write_stored_frame)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.w	$a0, $a0, 6068
	bnez	$a0, .LBB41_16
# %bb.14:
	ld.w	$a0, $s1, 40
	blt	$a0, $s0, .LBB41_16
# %bb.15:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	ori	$a1, $zero, 150
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB41_16:
	ld.d	$a0, $s1, 0
	ldx.d	$a0, $a0, $s3
	ld.w	$a1, $a0, 4
	st.w	$s0, $s1, 40
	beqz	$a1, .LBB41_18
.LBB41_17:                              # %is_used_for_reference.exit.thread
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB41_18:
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB41_20
# %bb.19:
	ld.d	$a2, $a0, 48
	lu12i.w	$a3, 77
	ori	$a3, $a3, 1456
	ldx.w	$a2, $a2, $a3
	bnez	$a2, .LBB41_17
	b	.LBB41_21
.LBB41_20:
	andi	$a2, $a1, 1
	beqz	$a2, .LBB41_23
.LBB41_21:                              # %.thread.i
	ld.d	$a2, $a0, 56
	beqz	$a2, .LBB41_23
# %bb.22:
	lu12i.w	$a3, 77
	ori	$a3, $a3, 1456
	ldx.w	$a2, $a2, $a3
	bnez	$a2, .LBB41_17
.LBB41_23:
	andi	$a1, $a1, 2
	beqz	$a1, .LBB41_26
# %bb.24:
	ld.d	$a0, $a0, 64
	beqz	$a0, .LBB41_26
# %bb.25:
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1456
	ldx.w	$a0, $a0, $a1
	bnez	$a0, .LBB41_17
.LBB41_26:                              # %is_used_for_reference.exit
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(remove_frame_from_dpb)
	jr	$t8
.LBB41_27:
	ori	$s0, $s0, 4095
	b	.LBB41_8
.Lfunc_end41:
	.size	output_one_frame_from_dpb, .Lfunc_end41-output_one_frame_from_dpb
                                        # -- End function
	.type	Co_located,@object              # @Co_located
	.bss
	.globl	Co_located
	.p2align	3, 0x0
Co_located:
	.dword	0
	.size	Co_located, 8

	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"undefined level"
	.size	.L.str, 16

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"max_dec_frame_buffering larger than MaxDpbSize"
	.size	.L.str.1, 47

	.type	dpb,@object                     # @dpb
	.comm	dpb,64,8
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Max. number of reference frames exceeded. Invalid stream."
	.size	.L.str.2, 58

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"DPB size at specified level is smaller than the specified number of reference frames. This is not allowed.\n"
	.size	.L.str.3, 108

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"init_dpb: dpb->fs"
	.size	.L.str.4, 18

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"init_dpb: dpb->fs_ref"
	.size	.L.str.5, 22

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"init_dpb: dpb->fs_ltref"
	.size	.L.str.6, 24

	.type	listX,@object                   # @listX
	.comm	listX,48,8
	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"init_dpb: listX[i]"
	.size	.L.str.7, 19

	.type	no_reference_picture,@object    # @no_reference_picture
	.comm	no_reference_picture,8,8
	.type	listXsize,@object               # @listXsize
	.comm	listXsize,24,4
	.type	last_out_fs,@object             # @last_out_fs
	.comm	last_out_fs,8,8
	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"alloc_frame_store: f"
	.size	.L.str.8, 21

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"alloc_storable_picture: s"
	.size	.L.str.9, 26

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"alloc_storable_picture: s->mb_field"
	.size	.L.str.10, 36

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"init_lists: fs_list0"
	.size	.L.str.11, 21

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"init_lists: fs_listlt"
	.size	.L.str.12, 22

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"init_lists: fs_list1"
	.size	.L.str.13, 21

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Invalid remapping_of_pic_nums_idc command"
	.size	.L.str.14, 42

	.type	pocs_in_dpb,@object             # @pocs_in_dpb
	.comm	pocs_in_dpb,400,4
	.type	p_out,@object                   # @p_out
	.comm	p_out,4,4
	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"duplicate frame_num in short-term reference picture buffer"
	.size	.L.str.15, 59

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"alloc_ref_pic_list_reordering_buffer: reordering_of_pic_nums_idc_l0"
	.size	.L.str.16, 68

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l0"
	.size	.L.str.17, 65

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l0"
	.size	.L.str.18, 59

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"alloc_ref_pic_list_reordering_buffer: reordering_of_pic_nums_idc_l1"
	.size	.L.str.19, 68

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l1"
	.size	.L.str.20, 65

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l1"
	.size	.L.str.21, 59

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"alloc_colocated: s"
	.size	.L.str.22, 19

	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	imgY_ref,@object                # @imgY_ref
	.comm	imgY_ref,8,8
	.type	imgUV_ref,@object               # @imgUV_ref
	.comm	imgUV_ref,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	ReMapRef,@object                # @ReMapRef
	.comm	ReMapRef,80,4
	.type	Bframe_ctr,@object              # @Bframe_ctr
	.comm	Bframe_ctr,4,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	g_nFrame,@object                # @g_nFrame
	.comm	g_nFrame,4,4
	.type	TopFieldForSkip_Y,@object       # @TopFieldForSkip_Y
	.comm	TopFieldForSkip_Y,1024,4
	.type	TopFieldForSkip_UV,@object      # @TopFieldForSkip_UV
	.comm	TopFieldForSkip_UV,2048,4
	.type	InvLevelScale4x4Luma_Intra,@object # @InvLevelScale4x4Luma_Intra
	.comm	InvLevelScale4x4Luma_Intra,384,4
	.type	InvLevelScale4x4Chroma_Intra,@object # @InvLevelScale4x4Chroma_Intra
	.comm	InvLevelScale4x4Chroma_Intra,768,4
	.type	InvLevelScale4x4Luma_Inter,@object # @InvLevelScale4x4Luma_Inter
	.comm	InvLevelScale4x4Luma_Inter,384,4
	.type	InvLevelScale4x4Chroma_Inter,@object # @InvLevelScale4x4Chroma_Inter
	.comm	InvLevelScale4x4Chroma_Inter,768,4
	.type	InvLevelScale8x8Luma_Intra,@object # @InvLevelScale8x8Luma_Intra
	.comm	InvLevelScale8x8Luma_Intra,1536,4
	.type	InvLevelScale8x8Luma_Inter,@object # @InvLevelScale8x8Luma_Inter
	.comm	InvLevelScale8x8Luma_Inter,1536,4
	.type	qmatrix,@object                 # @qmatrix
	.comm	qmatrix,64,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	p_ref,@object                   # @p_ref
	.comm	p_ref,4,4
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	previous_frame_num,@object      # @previous_frame_num
	.comm	previous_frame_num,4,4
	.type	ref_flag,@object                # @ref_flag
	.comm	ref_flag,68,4
	.type	Is_primary_correct,@object      # @Is_primary_correct
	.comm	Is_primary_correct,4,4
	.type	Is_redundant_correct,@object    # @Is_redundant_correct
	.comm	Is_redundant_correct,4,4
	.type	redundant_slice_ref_idx,@object # @redundant_slice_ref_idx
	.comm	redundant_slice_ref_idx,4,4
	.type	nal_startcode_follows,@object   # @nal_startcode_follows
	.comm	nal_startcode_follows,8,8
	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"memory_management_control_operation = 0 not last operation in buffer"
	.size	.L.str.23, 69

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"invalid memory_management_control_operation in buffer"
	.size	.L.str.24, 54

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"field for long term marking not found"
	.size	.L.str.25, 38

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Cannot determine smallest POC, DPB empty."
	.size	.L.str.29, 42

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"invalid frame store type"
	.size	.L.str.30, 25

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Cannot output frame, DPB empty."
	.size	.L.str.31, 32

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"no frames for output available"
	.size	.L.str.32, 31

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"output POC must be in ascending order"
	.size	.L.str.33, 38

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Warning: reference field for long term marking not found"
	.size	.Lstr, 57

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Warning: assigning long_term_frame_idx different from other field"
	.size	.Lstr.2, 66

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Warning: reference frame for long term marking not found"
	.size	.Lstr.3, 57

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym compare_pic_by_pic_num_desc
	.addrsig_sym compare_pic_by_lt_pic_num_asc
	.addrsig_sym compare_fs_by_frame_num_desc
	.addrsig_sym compare_fs_by_lt_pic_idx_asc
	.addrsig_sym compare_pic_by_poc_desc
	.addrsig_sym compare_pic_by_poc_asc
	.addrsig_sym compare_fs_by_poc_desc
	.addrsig_sym compare_fs_by_poc_asc
