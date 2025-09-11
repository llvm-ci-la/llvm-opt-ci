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
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a1, $a0, %pc_lo12(active_sps)
	ld.w	$a0, $a1, 24
	ld.w	$s0, $a1, 1140
	ld.w	$s1, $a1, 1144
	ld.w	$fp, $a1, 1148
	addi.d	$a2, $a0, -9
	ori	$a0, $zero, 42
	bltu	$a0, $a2, .LBB1_16
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
	ori	$a1, $zero, 44
	bltu	$a1, $a0, .LBB1_7
# %bb.5:
	ori	$a1, $zero, 1
	sll.d	$a0, $a1, $a0
	lu12i.w	$a1, 1024
	ori	$a1, $a1, 1025
	lu32i.d	$a1, 4096
	and	$a0, $a0, $a1
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
	ld.w	$a1, $a1, 20
	bnez	$a1, .LBB1_17
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
	move	$a0, $zero
.LBB1_17:
	addi.d	$a1, $s0, 1
	addi.d	$a2, $s1, 1
	mulw.d.w	$a1, $a2, $a1
	sltui	$a2, $fp, 1
	sll.w	$a1, $a1, $a2
	alsl.w	$a1, $a1, $a1, 1
	slli.w	$a1, $a1, 7
	div.w	$a0, $a0, $a1
	slti	$a1, $a0, 16
	maskeqz	$a0, $a0, $a1
	ori	$a2, $zero, 16
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
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
	ld.w	$a0, $a0, 32
	add.w	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a1, 0
	ld.w	$a1, $a1, 28
	ori	$a2, $zero, 1
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	bge	$a1, $a0, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
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
	move	$fp, $a0
	st.w	$a0, $s2, 24
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 32
	bgeu	$fp, $a0, .LBB3_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
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
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
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
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
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
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s2, 24
.LBB3_10:
	addi.w	$a0, $fp, 0
	beqz	$a0, .LBB3_15
# %bb.11:                               # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s0, $a0, %pc_lo12(.L.str.7)
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
	ori	$a1, $zero, 64
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
.LBB3_15:                               # %.preheader18
	ori	$a0, $zero, 33
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(listX)
	addi.d	$s0, $a1, %pc_lo12(listX)
	st.d	$a0, $s0, 0
	bnez	$a0, .LBB3_17
# %bb.16:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB3_17:
	ori	$a0, $zero, 33
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	bnez	$a0, .LBB3_19
# %bb.18:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB3_19:
	ori	$a0, $zero, 33
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	bnez	$a0, .LBB3_21
# %bb.20:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB3_21:
	ori	$a0, $zero, 33
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 24
	bnez	$a0, .LBB3_23
# %bb.22:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB3_23:
	ori	$a0, $zero, 33
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 32
	bnez	$a0, .LBB3_25
# %bb.24:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB3_25:
	ori	$a0, $zero, 33
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s0, 40
	bnez	$a0, .LBB3_27
# %bb.26:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, 40
.LBB3_27:                               # %.preheader.preheader
	ld.d	$a0, $s0, 0
	ori	$a2, $zero, 264
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	ori	$a2, $zero, 264
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	ori	$a2, $zero, 264
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 24
	ori	$a2, $zero, 264
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(listXsize)
	addi.d	$s1, $a0, %pc_lo12(listXsize)
	ld.d	$a0, $s0, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $s1, 0
	ori	$a2, $zero, 264
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.w	$zero, $s1, 16
	ori	$a2, $zero, 264
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.w	$zero, $s1, 20
	lu12i.w	$a0, -524288
	lu32i.d	$a0, 0
	st.w	$a0, $s2, 40
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	stptr.w	$zero, $a0, 15428
	ori	$a0, $zero, 1
	st.w	$a0, $s2, 48
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
	ld.d	$a0, $fp, 40
	beqz	$a0, .LBB4_8
# %bb.7:                                #   in Loop: Header=BB4_5 Depth=1
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 40
.LBB4_8:                                #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB4_10
# %bb.9:                                #   in Loop: Header=BB4_5 Depth=1
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 48
.LBB4_10:                               #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a0, $fp, 56
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
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
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
	ori	$a1, $zero, 64
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_2
# %bb.1:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB5_2:
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
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
	.globl	free_frame_store                # -- Begin function free_frame_store
	.p2align	5
	.type	free_frame_store,@function
free_frame_store:                       # @free_frame_store
# %bb.0:
	beqz	$a0, .LBB6_8
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 40
	beqz	$a0, .LBB6_3
# %bb.2:
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 40
.LBB6_3:
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB6_5
# %bb.4:
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 48
.LBB6_5:
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB6_7
# %bb.6:
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
.LBB6_7:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB6_8:
	ret
.Lfunc_end6:
	.size	free_frame_store, .Lfunc_end6-free_frame_store
                                        # -- End function
	.globl	alloc_storable_picture          # -- Begin function alloc_storable_picture
	.p2align	5
	.type	alloc_storable_picture,@function
alloc_storable_picture:                 # @alloc_storable_picture
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
	move	$fp, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$s7, 1
	ori	$a1, $s7, 2496
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB7_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB7_2:
	ori	$a0, $s7, 2344
	add.d	$a0, $s0, $a0
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(get_mem2Dpel)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s8, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s8, 0
	ldptr.w	$a1, $a0, 15536
	beqz	$a1, .LBB7_4
# %bb.3:
	ori	$a0, $s7, 2376
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 2
	move	$a2, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(get_mem3Dpel)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
.LBB7_4:
	lu12i.w	$s4, 3
	ori	$a1, $s4, 3060
	ldx.wu	$a0, $a0, $a1
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	stptr.d	$a0, $s0, 6480
	bnez	$a0, .LBB7_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB7_6:
	ori	$a0, $s7, 2392
	add.d	$a0, $s0, $a0
	bstrpick.d	$a1, $s2, 62, 61
	add.w	$a1, $s2, $a1
	srai.d	$s5, $a1, 2
	bstrpick.d	$a1, $s3, 62, 61
	add.w	$a1, $s3, $a1
	srai.d	$s6, $a1, 2
	ori	$a1, $zero, 2
	move	$a2, $s5
	move	$a3, $s6
	pcaddu18i	$ra, %call36(get_mem3D)
	jirl	$ra, $ra, 0
	ori	$a0, $s7, 2400
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 6
	move	$a2, $s5
	move	$a3, $s6
	pcaddu18i	$ra, %call36(get_mem3Dint64)
	jirl	$ra, $ra, 0
	ori	$a0, $s7, 2408
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 6
	move	$a2, $s5
	move	$a3, $s6
	pcaddu18i	$ra, %call36(get_mem3Dint64)
	jirl	$ra, $ra, 0
	ori	$a0, $s7, 2416
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 2
	ori	$a4, $zero, 2
	move	$a2, $s5
	move	$a3, $s6
	pcaddu18i	$ra, %call36(get_mem4Dshort)
	jirl	$ra, $ra, 0
	ori	$a0, $s7, 2424
	add.d	$a0, $s0, $a0
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
	ori	$a0, $s7, 2432
	add.d	$a0, $s0, $a0
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	ori	$a0, $s7, 2264
	vstx	$vr0, $s0, $a0
	ori	$a0, $s7, 2280
	vstx	$vr0, $s0, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $s0, 0
	stptr.w	$s3, $s0, 6392
	stptr.w	$s2, $s0, 6396
	addi.d	$a0, $s3, 23
	stptr.w	$a0, $s0, 6408
	addi.d	$a0, $s2, 23
	stptr.w	$a0, $s0, 6412
	ld.d	$a0, $s8, 0
	pcalau12i	$a1, %pc_hi20(img_pad_size_uv_x)
	ld.w	$a1, $a1, %pc_lo12(img_pad_size_uv_x)
	ori	$a2, $s4, 3256
	ldx.w	$a2, $a0, $a2
	stptr.w	$s1, $s0, 6400
	stptr.w	$fp, $s0, 6404
	alsl.d	$a1, $a1, $s1, 1
	nor	$a2, $a2, $zero
	pcalau12i	$a3, %pc_hi20(img_pad_size_uv_y)
	ld.w	$a3, $a3, %pc_lo12(img_pad_size_uv_y)
	ori	$a4, $s4, 3260
	ldx.w	$a0, $a0, $a4
	add.d	$a1, $a2, $a1
	stptr.w	$a1, $s0, 6416
	alsl.d	$a1, $a3, $fp, 1
	nor	$a0, $a0, $zero
	add.d	$a0, $a0, $a1
	stptr.w	$a0, $s0, 6420
	stptr.d	$zero, $s0, 6428
	ori	$a0, $s7, 2440
	vstx	$vr0, $s0, $a0
	stptr.d	$zero, $s0, 6552
	move	$a0, $s0
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
.Lfunc_end7:
	.size	alloc_storable_picture, .Lfunc_end7-alloc_storable_picture
                                        # -- End function
	.globl	free_storable_picture           # -- Begin function free_storable_picture
	.p2align	5
	.type	free_storable_picture,@function
free_storable_picture:                  # @free_storable_picture
# %bb.0:
	beqz	$a0, .LBB8_23
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ldptr.d	$a0, $a0, 6488
	beqz	$a0, .LBB8_3
# %bb.2:
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem3D)
	jirl	$ra, $ra, 0
	stptr.d	$zero, $fp, 6488
.LBB8_3:
	ldptr.d	$a0, $fp, 6496
	beqz	$a0, .LBB8_5
# %bb.4:
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(free_mem3Dint64)
	jirl	$ra, $ra, 0
	stptr.d	$zero, $fp, 6496
.LBB8_5:
	ldptr.d	$a0, $fp, 6504
	beqz	$a0, .LBB8_7
# %bb.6:
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(free_mem3Dint64)
	jirl	$ra, $ra, 0
	stptr.d	$zero, $fp, 6504
.LBB8_7:
	ldptr.d	$a0, $fp, 6512
	beqz	$a0, .LBB8_9
# %bb.8:
	ldptr.w	$a1, $fp, 6396
	bstrpick.d	$a2, $a1, 62, 61
	add.w	$a1, $a1, $a2
	srai.d	$a2, $a1, 2
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem4Dshort)
	jirl	$ra, $ra, 0
	stptr.d	$zero, $fp, 6512
.LBB8_9:
	ldptr.d	$a0, $fp, 6520
	beqz	$a0, .LBB8_11
# %bb.10:
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
	stptr.d	$zero, $fp, 6520
.LBB8_11:
	ldptr.d	$a0, $fp, 6528
	beqz	$a0, .LBB8_13
# %bb.12:
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
	stptr.d	$zero, $fp, 6528
.LBB8_13:
	ldptr.d	$a0, $fp, 6440
	beqz	$a0, .LBB8_15
# %bb.14:
	pcaddu18i	$ra, %call36(free_mem2Dpel)
	jirl	$ra, $ra, 0
	stptr.d	$zero, $fp, 6440
.LBB8_15:
	ldptr.d	$a0, $fp, 6448
	beqz	$a0, .LBB8_17
# %bb.16:
	ori	$a1, $zero, 4
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(free_mem4Dpel)
	jirl	$ra, $ra, 0
	stptr.d	$zero, $fp, 6448
.LBB8_17:
	ldptr.d	$a0, $fp, 6464
	beqz	$a0, .LBB8_27
# %bb.18:
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 15536
	beqz	$a1, .LBB8_27
# %bb.19:
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	ld.d	$a2, $a2, 0
	ldptr.w	$a2, $a2, 5772
	beqz	$a2, .LBB8_27
# %bb.20:
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB8_24
# %bb.21:
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB8_25
# %bb.22:
	ori	$a1, $zero, 2
	ori	$a2, $zero, 8
	ori	$a3, $zero, 8
	b	.LBB8_26
.LBB8_23:
	ret
.LBB8_24:
	ori	$a1, $zero, 2
	ori	$a2, $zero, 4
	ori	$a3, $zero, 8
	b	.LBB8_26
.LBB8_25:
	ori	$a1, $zero, 2
	ori	$a2, $zero, 4
	ori	$a3, $zero, 4
.LBB8_26:                               # %.sink.split
	pcaddu18i	$ra, %call36(free_mem5Dpel)
	jirl	$ra, $ra, 0
	stptr.d	$zero, $fp, 6464
.LBB8_27:
	ldptr.d	$a0, $fp, 6472
	beqz	$a0, .LBB8_29
# %bb.28:
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem3Dpel)
	jirl	$ra, $ra, 0
	stptr.d	$zero, $fp, 6472
.LBB8_29:
	ldptr.d	$a0, $fp, 6480
	beqz	$a0, .LBB8_31
# %bb.30:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_31:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end8:
	.size	free_storable_picture, .Lfunc_end8-free_storable_picture
                                        # -- End function
	.globl	is_short_ref                    # -- Begin function is_short_ref
	.p2align	5
	.type	is_short_ref,@function
is_short_ref:                           # @is_short_ref
# %bb.0:
	ldptr.w	$a1, $a0, 6380
	beqz	$a1, .LBB9_2
# %bb.1:
	ldptr.w	$a0, $a0, 6376
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
	ldptr.w	$a1, $a0, 6380
	beqz	$a1, .LBB10_2
# %bb.1:
	ldptr.w	$a0, $a0, 6376
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
	pcalau12i	$a2, %pc_hi20(log2_max_frame_num_minus4)
	ld.w	$a2, $a2, %pc_lo12(log2_max_frame_num_minus4)
	move	$fp, $a1
	addi.d	$a1, $a2, 4
	ori	$a2, $zero, 1
	sll.w	$a2, $a2, $a1
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
	b	.LBB11_4
	.p2align	4, , 16
.LBB11_3:                               #   in Loop: Header=BB11_4 Depth=1
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 8
	beqz	$a7, .LBB11_9
.LBB11_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a6, 0
	ld.w	$t2, $t1, 4
	beqz	$t2, .LBB11_3
# %bb.5:                                #   in Loop: Header=BB11_4 Depth=1
	ld.w	$t3, $t1, 20
	ldptr.w	$t4, $t0, 15332
	sltu	$t4, $t4, $t3
	maskeqz	$t4, $a2, $t4
	sub.d	$t3, $t3, $t4
	st.w	$t3, $t1, 24
	andi	$t4, $t2, 1
	slli.d	$t3, $t3, 1
	beqz	$t4, .LBB11_7
# %bb.6:                                #   in Loop: Header=BB11_4 Depth=1
	ld.d	$t4, $t1, 48
	or	$t5, $t3, $a4
	stptr.w	$t5, $t4, 6364
.LBB11_7:                               #   in Loop: Header=BB11_4 Depth=1
	andi	$t2, $t2, 2
	beqz	$t2, .LBB11_3
# %bb.8:                                #   in Loop: Header=BB11_4 Depth=1
	ld.d	$t1, $t1, 56
	or	$t2, $t3, $a3
	stptr.w	$t2, $t1, 6364
	b	.LBB11_3
.LBB11_9:                               # %.preheader653
	ld.wu	$a2, $a5, 36
	beqz	$a2, .LBB11_29
# %bb.10:                               # %.lr.ph704
	ld.d	$a5, $a5, 16
	lu12i.w	$a6, 1
	ori	$a6, $a6, 2276
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
	ld.d	$t1, $a7, 48
	ldx.w	$t2, $t1, $a6
	slli.d	$t2, $t2, 1
	or	$t2, $t2, $a4
	stptr.w	$t2, $t1, 6368
	andi	$t0, $t0, 2
	beqz	$t0, .LBB11_11
.LBB11_15:                              #   in Loop: Header=BB11_12 Depth=1
	ld.d	$a7, $a7, 56
	ldx.w	$t0, $a7, $a6
	slli.d	$t0, $t0, 1
	or	$t0, $t0, $a3
	stptr.w	$t0, $a7, 6368
	b	.LBB11_11
.LBB11_16:                              # %.preheader652
	pcalau12i	$a1, %pc_hi20(dpb)
	addi.d	$a3, $a1, %pc_lo12(dpb)
	ld.w	$a1, $a3, 32
	beqz	$a1, .LBB11_23
# %bb.17:                               # %.lr.ph706
	ld.d	$a4, $a3, 8
	bstrpick.d	$a5, $a1, 31, 0
	pcalau12i	$a6, %got_pc_hi20(img)
	ld.d	$a6, $a6, %got_pc_lo12(img)
	ld.d	$a6, $a6, 0
	ori	$a7, $zero, 3
	b	.LBB11_19
	.p2align	4, , 16
.LBB11_18:                              #   in Loop: Header=BB11_19 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 8
	beqz	$a5, .LBB11_23
.LBB11_19:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a4, 0
	ld.w	$t1, $t0, 0
	bne	$t1, $a7, .LBB11_18
# %bb.20:                               #   in Loop: Header=BB11_19 Depth=1
	ld.d	$t1, $t0, 40
	ldptr.w	$t2, $t1, 6380
	beqz	$t2, .LBB11_18
# %bb.21:                               #   in Loop: Header=BB11_19 Depth=1
	ldptr.w	$t2, $t1, 6376
	bnez	$t2, .LBB11_18
# %bb.22:                               #   in Loop: Header=BB11_19 Depth=1
	ld.w	$t2, $t0, 20
	ldptr.w	$t3, $a6, 15332
	sltu	$t3, $t3, $t2
	maskeqz	$t3, $a2, $t3
	sub.d	$t2, $t2, $t3
	st.w	$t2, $t0, 24
	stptr.w	$t2, $t1, 6364
	b	.LBB11_18
.LBB11_23:                              # %.preheader650
	ld.wu	$a2, $a3, 36
	beqz	$a2, .LBB11_29
# %bb.24:                               # %.lr.ph708
	ld.d	$a3, $a3, 16
	ori	$a4, $zero, 3
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2276
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
	ld.d	$a6, $a6, 40
	ldptr.w	$a7, $a6, 6376
	beqz	$a7, .LBB11_25
# %bb.28:                               #   in Loop: Header=BB11_26 Depth=1
	ldx.w	$a7, $a6, $a5
	stptr.w	$a7, $a6, 6368
	b	.LBB11_25
.LBB11_29:                              # %.loopexit651
	ori	$a2, $zero, 4
	bltu	$a2, $a0, .LBB11_41
# %bb.30:                               # %.loopexit651
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
	addi.d	$s5, $a0, %pc_lo12(dpb)
	ld.wu	$s1, $s5, 24
	ori	$a1, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB11_34
# %bb.33:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.wu	$s1, $s5, 24
.LBB11_34:
	ori	$a1, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB11_61
# %bb.35:
	ld.wu	$a0, $s5, 32
	beqz	$a0, .LBB11_62
.LBB11_36:                              # %.lr.ph711
	ld.d	$a1, $s5, 8
	move	$s2, $zero
	b	.LBB11_38
	.p2align	4, , 16
.LBB11_37:                              #   in Loop: Header=BB11_38 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	beqz	$a0, .LBB11_63
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
	b	.LBB11_402
.LBB11_41:
	beqz	$fp, .LBB11_139
# %bb.42:
	pcalau12i	$a0, %pc_hi20(dpb)
	addi.d	$s6, $a0, %pc_lo12(dpb)
	ld.wu	$s2, $s6, 24
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB11_44
# %bb.43:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.wu	$s2, $s6, 24
.LBB11_44:
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB11_46
# %bb.45:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.wu	$s2, $s6, 24
.LBB11_46:
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	bnez	$a0, .LBB11_48
# %bb.47:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB11_48:
	pcalau12i	$a0, %pc_hi20(listXsize)
	addi.d	$s5, $a0, %pc_lo12(listXsize)
	ld.wu	$a0, $s6, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $s5, 0
	beqz	$a0, .LBB11_174
# %bb.49:                               # %.lr.ph734
	ld.d	$a1, $s6, 8
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
	ldptr.w	$a4, $a2, 15328
	ld.w	$a5, $a3, 36
	blt	$a4, $a5, .LBB11_50
# %bb.53:                               #   in Loop: Header=BB11_51 Depth=1
	slli.d	$a4, $s3, 3
	addi.w	$s3, $s3, 1
	stx.d	$a3, $s0, $a4
	b	.LBB11_50
.LBB11_54:                              # %.preheader649
	ld.d	$a0, $s4, %pc_lo12(listX)
	beqz	$a1, .LBB11_147
# %bb.55:                               # %.lr.ph722
	pcalau12i	$a2, %pc_hi20(dpb+8)
	ld.d	$a2, $a2, %pc_lo12(dpb+8)
	move	$fp, $zero
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a3, $zero, 3
	b	.LBB11_57
	.p2align	4, , 16
.LBB11_56:                              #   in Loop: Header=BB11_57 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB11_148
.LBB11_57:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.w	$a5, $a4, 0
	bne	$a5, $a3, .LBB11_56
# %bb.58:                               #   in Loop: Header=BB11_57 Depth=1
	ld.d	$a4, $a4, 40
	ldptr.w	$a5, $a4, 6380
	beqz	$a5, .LBB11_56
# %bb.59:                               #   in Loop: Header=BB11_57 Depth=1
	ldptr.w	$a5, $a4, 6376
	bnez	$a5, .LBB11_56
# %bb.60:                               #   in Loop: Header=BB11_57 Depth=1
	slli.d	$a5, $fp, 3
	addi.w	$fp, $fp, 1
	stx.d	$a4, $a0, $a5
	b	.LBB11_56
.LBB11_61:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s5, 32
	bnez	$a0, .LBB11_36
.LBB11_62:
	move	$s2, $zero
.LBB11_63:                              # %._crit_edge
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
	bne	$fp, $a4, .LBB11_84
# %bb.64:                               # %.preheader88.i
	blez	$s2, .LBB11_87
# %bb.65:                               # %.preheader86.i.preheader
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB11_68
	.p2align	4, , 16
.LBB11_66:                              # %.loopexit85.i
                                        #   in Loop: Header=BB11_68 Depth=1
	blt	$a3, $s2, .LBB11_68
.LBB11_67:                              # %.loopexit85.i
                                        #   in Loop: Header=BB11_68 Depth=1
	bge	$a2, $s2, .LBB11_84
.LBB11_68:                              # %.preheader86.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_71 Depth 2
                                        #     Child Loop BB11_79 Depth 2
	bge	$a3, $s2, .LBB11_75
# %bb.69:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB11_68 Depth=1
	alsl.d	$a4, $a3, $s0, 3
	b	.LBB11_71
	.p2align	4, , 16
.LBB11_70:                              # %is_short_ref.exit548.thread
                                        #   in Loop: Header=BB11_71 Depth=2
	addi.w	$a3, $a3, 1
	addi.d	$a4, $a4, 8
	beq	$s2, $a3, .LBB11_76
.LBB11_71:                              # %.lr.ph.i
                                        #   Parent Loop BB11_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB11_70
# %bb.72:                               #   in Loop: Header=BB11_71 Depth=2
	ld.d	$a5, $a5, 48
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_70
# %bb.73:                               # %is_short_ref.exit548
                                        #   in Loop: Header=BB11_71 Depth=2
	ldptr.w	$a6, $a5, 6376
	bnez	$a6, .LBB11_70
# %bb.74:                               #   in Loop: Header=BB11_68 Depth=1
	slli.d	$a4, $a1, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a1, $a1, 1
	st.w	$a1, $s3, %pc_lo12(listXsize)
	addi.w	$a3, $a3, 1
	bge	$a2, $s2, .LBB11_66
	b	.LBB11_77
	.p2align	4, , 16
.LBB11_75:                              # %.loopexit87.i
                                        #   in Loop: Header=BB11_68 Depth=1
	blt	$a2, $s2, .LBB11_77
	b	.LBB11_66
	.p2align	4, , 16
.LBB11_76:                              #   in Loop: Header=BB11_68 Depth=1
	move	$a3, $s2
	bge	$a2, $s2, .LBB11_66
.LBB11_77:                              # %.lr.ph99.preheader.i
                                        #   in Loop: Header=BB11_68 Depth=1
	alsl.d	$a4, $a2, $s0, 3
	b	.LBB11_79
	.p2align	4, , 16
.LBB11_78:                              # %is_short_ref.exit545.thread
                                        #   in Loop: Header=BB11_79 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, 8
	beq	$s2, $a2, .LBB11_83
.LBB11_79:                              # %.lr.ph99.i
                                        #   Parent Loop BB11_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 2
	beqz	$a6, .LBB11_78
# %bb.80:                               #   in Loop: Header=BB11_79 Depth=2
	ld.d	$a5, $a5, 56
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_78
# %bb.81:                               # %is_short_ref.exit545
                                        #   in Loop: Header=BB11_79 Depth=2
	ldptr.w	$a6, $a5, 6376
	bnez	$a6, .LBB11_78
# %bb.82:                               #   in Loop: Header=BB11_68 Depth=1
	slli.d	$a4, $a1, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a1, $a1, 1
	st.w	$a1, $s3, %pc_lo12(listXsize)
	addi.w	$a2, $a2, 1
	bge	$a3, $s2, .LBB11_67
	b	.LBB11_68
	.p2align	4, , 16
.LBB11_83:                              #   in Loop: Header=BB11_68 Depth=1
	move	$a2, $s2
	bge	$a3, $s2, .LBB11_67
	b	.LBB11_68
.LBB11_84:                              # %.loopexit89.i
	ori	$a4, $zero, 2
	bne	$fp, $a4, .LBB11_87
# %bb.85:                               # %.preheader83.i
	blt	$a3, $s2, .LBB11_118
# %bb.86:                               # %.preheader83.i
	blt	$a2, $s2, .LBB11_118
.LBB11_87:                              # %gen_pic_list_from_frame_list.exit
	ld.wu	$a0, $s5, 36
	addi.w	$s2, $a0, 0
	beqz	$s2, .LBB11_95
# %bb.88:                               # %.lr.ph715
	ld.d	$a1, $s5, 16
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$s2, $a3, .LBB11_93
# %bb.89:                               # %.lr.ph715
	sub.d	$a3, $s1, $a1
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB11_93
# %bb.90:                               # %vector.ph
	bstrpick.d	$a2, $a0, 31, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s1, 16
	addi.d	$a4, $a1, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB11_91:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB11_91
# %bb.92:                               # %middle.block
	beq	$a2, $a0, .LBB11_95
.LBB11_93:                              # %scalar.ph.preheader
	alsl.d	$a1, $a2, $a1, 3
	alsl.d	$a3, $a2, $s1, 3
	sub.d	$a0, $a0, $a2
	.p2align	4, , 16
.LBB11_94:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB11_94
.LBB11_95:                              # %._crit_edge716
	pcalau12i	$a0, %pc_hi20(compare_fs_by_lt_pic_idx_asc)
	addi.d	$a3, $a0, %pc_lo12(compare_fs_by_lt_pic_idx_asc)
	ori	$a2, $zero, 8
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(listX)
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB11_134
# %bb.96:                               # %.preheader88.i307
	beqz	$s2, .LBB11_138
# %bb.97:                               # %.preheader86.i308.preheader
	ld.w	$a3, $s3, %pc_lo12(listXsize)
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB11_100
	.p2align	4, , 16
.LBB11_98:                              # %.loopexit85.i313
                                        #   in Loop: Header=BB11_100 Depth=1
	blt	$a2, $s2, .LBB11_100
.LBB11_99:                              # %.loopexit85.i313
                                        #   in Loop: Header=BB11_100 Depth=1
	bge	$a1, $s2, .LBB11_135
.LBB11_100:                             # %.preheader86.i308
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_103 Depth 2
                                        #     Child Loop BB11_111 Depth 2
	bge	$a2, $s2, .LBB11_107
# %bb.101:                              # %.lr.ph.preheader.i323
                                        #   in Loop: Header=BB11_100 Depth=1
	alsl.d	$a4, $a2, $s1, 3
	b	.LBB11_103
	.p2align	4, , 16
.LBB11_102:                             # %is_long_ref.exit555.thread
                                        #   in Loop: Header=BB11_103 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, 8
	beq	$s2, $a2, .LBB11_108
.LBB11_103:                             # %.lr.ph.i324
                                        #   Parent Loop BB11_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB11_102
# %bb.104:                              #   in Loop: Header=BB11_103 Depth=2
	ld.d	$a5, $a5, 48
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_102
# %bb.105:                              # %is_long_ref.exit555
                                        #   in Loop: Header=BB11_103 Depth=2
	ldptr.w	$a6, $a5, 6376
	beqz	$a6, .LBB11_102
# %bb.106:                              #   in Loop: Header=BB11_100 Depth=1
	slli.d	$a4, $a3, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a3, $a3, 1
	st.w	$a3, $s3, %pc_lo12(listXsize)
	addi.w	$a2, $a2, 1
	bge	$a1, $s2, .LBB11_98
	b	.LBB11_109
	.p2align	4, , 16
.LBB11_107:                             # %.loopexit87.i311
                                        #   in Loop: Header=BB11_100 Depth=1
	blt	$a1, $s2, .LBB11_109
	b	.LBB11_98
	.p2align	4, , 16
.LBB11_108:                             #   in Loop: Header=BB11_100 Depth=1
	move	$a2, $s2
	bge	$a1, $s2, .LBB11_98
.LBB11_109:                             # %.lr.ph99.preheader.i315
                                        #   in Loop: Header=BB11_100 Depth=1
	alsl.d	$a4, $a1, $s1, 3
	b	.LBB11_111
	.p2align	4, , 16
.LBB11_110:                             # %is_long_ref.exit553.thread
                                        #   in Loop: Header=BB11_111 Depth=2
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, 8
	beq	$s2, $a1, .LBB11_115
.LBB11_111:                             # %.lr.ph99.i316
                                        #   Parent Loop BB11_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 2
	beqz	$a6, .LBB11_110
# %bb.112:                              #   in Loop: Header=BB11_111 Depth=2
	ld.d	$a5, $a5, 56
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_110
# %bb.113:                              # %is_long_ref.exit553
                                        #   in Loop: Header=BB11_111 Depth=2
	ldptr.w	$a6, $a5, 6376
	beqz	$a6, .LBB11_110
# %bb.114:                              #   in Loop: Header=BB11_100 Depth=1
	slli.d	$a4, $a3, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a3, $a3, 1
	st.w	$a3, $s3, %pc_lo12(listXsize)
	addi.w	$a1, $a1, 1
	bge	$a2, $s2, .LBB11_99
	b	.LBB11_100
	.p2align	4, , 16
.LBB11_115:                             #   in Loop: Header=BB11_100 Depth=1
	move	$a1, $s2
	bge	$a2, $s2, .LBB11_99
	b	.LBB11_100
	.p2align	4, , 16
.LBB11_116:                             # %.loopexit.i
                                        #   in Loop: Header=BB11_118 Depth=1
	blt	$a3, $s2, .LBB11_118
.LBB11_117:                             # %.loopexit.i
                                        #   in Loop: Header=BB11_118 Depth=1
	bge	$a2, $s2, .LBB11_87
.LBB11_118:                             # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_121 Depth 2
                                        #     Child Loop BB11_129 Depth 2
	bge	$a2, $s2, .LBB11_125
# %bb.119:                              # %.lr.ph106.preheader.i
                                        #   in Loop: Header=BB11_118 Depth=1
	alsl.d	$a4, $a2, $s0, 3
	b	.LBB11_121
	.p2align	4, , 16
.LBB11_120:                             # %is_short_ref.exit542.thread
                                        #   in Loop: Header=BB11_121 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, 8
	beq	$s2, $a2, .LBB11_126
.LBB11_121:                             # %.lr.ph106.i
                                        #   Parent Loop BB11_118 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 2
	beqz	$a6, .LBB11_120
# %bb.122:                              #   in Loop: Header=BB11_121 Depth=2
	ld.d	$a5, $a5, 56
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_120
# %bb.123:                              # %is_short_ref.exit542
                                        #   in Loop: Header=BB11_121 Depth=2
	ldptr.w	$a6, $a5, 6376
	bnez	$a6, .LBB11_120
# %bb.124:                              #   in Loop: Header=BB11_118 Depth=1
	slli.d	$a4, $a1, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a1, $a1, 1
	st.w	$a1, $s3, %pc_lo12(listXsize)
	addi.w	$a2, $a2, 1
	blt	$a3, $s2, .LBB11_127
	b	.LBB11_116
	.p2align	4, , 16
.LBB11_125:                             # %.loopexit82.i
                                        #   in Loop: Header=BB11_118 Depth=1
	blt	$a3, $s2, .LBB11_127
	b	.LBB11_116
	.p2align	4, , 16
.LBB11_126:                             #   in Loop: Header=BB11_118 Depth=1
	move	$a2, $s2
	bge	$a3, $s2, .LBB11_116
.LBB11_127:                             # %.lr.ph109.preheader.i
                                        #   in Loop: Header=BB11_118 Depth=1
	alsl.d	$a4, $a3, $s0, 3
	b	.LBB11_129
	.p2align	4, , 16
.LBB11_128:                             # %is_short_ref.exit.thread
                                        #   in Loop: Header=BB11_129 Depth=2
	addi.w	$a3, $a3, 1
	addi.d	$a4, $a4, 8
	beq	$s2, $a3, .LBB11_133
.LBB11_129:                             # %.lr.ph109.i
                                        #   Parent Loop BB11_118 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB11_128
# %bb.130:                              #   in Loop: Header=BB11_129 Depth=2
	ld.d	$a5, $a5, 48
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_128
# %bb.131:                              # %is_short_ref.exit
                                        #   in Loop: Header=BB11_129 Depth=2
	ldptr.w	$a6, $a5, 6376
	bnez	$a6, .LBB11_128
# %bb.132:                              #   in Loop: Header=BB11_118 Depth=1
	slli.d	$a4, $a1, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a1, $a1, 1
	st.w	$a1, $s3, %pc_lo12(listXsize)
	addi.w	$a3, $a3, 1
	bge	$a3, $s2, .LBB11_117
	b	.LBB11_118
	.p2align	4, , 16
.LBB11_133:                             #   in Loop: Header=BB11_118 Depth=1
	move	$a3, $s2
	bge	$a3, $s2, .LBB11_117
	b	.LBB11_118
.LBB11_134:
	move	$a2, $zero
	move	$a1, $zero
.LBB11_135:                             # %.loopexit89.i280
	ori	$a3, $zero, 2
	bne	$fp, $a3, .LBB11_138
# %bb.136:                              # %.preheader83.i283
	blt	$a2, $s2, .LBB11_155
# %bb.137:                              # %.preheader83.i283
	blt	$a1, $s2, .LBB11_155
.LBB11_138:                             # %gen_pic_list_from_frame_list.exit331
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	b	.LBB11_387
.LBB11_139:                             # %.preheader647
	pcalau12i	$a0, %pc_hi20(listX)
	addi.d	$s1, $a0, %pc_lo12(listX)
	ld.d	$a0, $s1, 0
	beqz	$a1, .LBB11_312
# %bb.140:                              # %.lr.ph763
	pcalau12i	$a2, %pc_hi20(dpb+8)
	ld.d	$a2, $a2, %pc_lo12(dpb+8)
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a3, $zero, 3
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$a4, $a4, %got_pc_lo12(img)
	move	$fp, $zero
	b	.LBB11_142
	.p2align	4, , 16
.LBB11_141:                             #   in Loop: Header=BB11_142 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB11_313
.LBB11_142:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, 0
	ld.w	$a6, $a5, 0
	bne	$a6, $a3, .LBB11_141
# %bb.143:                              #   in Loop: Header=BB11_142 Depth=1
	ld.d	$a5, $a5, 40
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_141
# %bb.144:                              #   in Loop: Header=BB11_142 Depth=1
	ldptr.w	$a6, $a5, 6376
	bnez	$a6, .LBB11_141
# %bb.145:                              #   in Loop: Header=BB11_142 Depth=1
	ld.d	$a6, $a4, 0
	ldptr.w	$a6, $a6, 15324
	ld.w	$a7, $a5, 4
	bge	$a7, $a6, .LBB11_141
# %bb.146:                              #   in Loop: Header=BB11_142 Depth=1
	slli.d	$a6, $fp, 3
	addi.w	$fp, $fp, 1
	stx.d	$a5, $a0, $a6
	b	.LBB11_141
.LBB11_147:
	move	$fp, $zero
.LBB11_148:                             # %._crit_edge723
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
	beqz	$a1, .LBB11_154
# %bb.149:                              # %.lr.ph728
	ld.d	$a2, $a2, 16
	ori	$a3, $zero, 3
	move	$s2, $fp
	b	.LBB11_151
	.p2align	4, , 16
.LBB11_150:                             #   in Loop: Header=BB11_151 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB11_154
.LBB11_151:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.w	$a5, $a4, 0
	bne	$a5, $a3, .LBB11_150
# %bb.152:                              #   in Loop: Header=BB11_151 Depth=1
	ld.d	$a4, $a4, 40
	ldptr.w	$a5, $a4, 6376
	beqz	$a5, .LBB11_150
# %bb.153:                              #   in Loop: Header=BB11_151 Depth=1
	slli.d	$a5, $s2, 3
	addi.w	$s2, $s2, 1
	stx.d	$a4, $a0, $a5
	b	.LBB11_150
.LBB11_154:                             # %._crit_edge729
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
.LBB11_155:                             # %.preheader.i284.preheader
	ld.w	$a3, $s3, %pc_lo12(listXsize)
	b	.LBB11_158
	.p2align	4, , 16
.LBB11_156:                             # %.loopexit.i289
                                        #   in Loop: Header=BB11_158 Depth=1
	blt	$a2, $s2, .LBB11_158
.LBB11_157:                             # %.loopexit.i289
                                        #   in Loop: Header=BB11_158 Depth=1
	bge	$a1, $s2, .LBB11_138
.LBB11_158:                             # %.preheader.i284
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_161 Depth 2
                                        #     Child Loop BB11_169 Depth 2
	bge	$a1, $s2, .LBB11_165
# %bb.159:                              # %.lr.ph106.preheader.i299
                                        #   in Loop: Header=BB11_158 Depth=1
	alsl.d	$a4, $a1, $s1, 3
	b	.LBB11_161
	.p2align	4, , 16
.LBB11_160:                             # %is_long_ref.exit551.thread
                                        #   in Loop: Header=BB11_161 Depth=2
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, 8
	beq	$s2, $a1, .LBB11_166
.LBB11_161:                             # %.lr.ph106.i300
                                        #   Parent Loop BB11_158 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 2
	beqz	$a6, .LBB11_160
# %bb.162:                              #   in Loop: Header=BB11_161 Depth=2
	ld.d	$a5, $a5, 56
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_160
# %bb.163:                              # %is_long_ref.exit551
                                        #   in Loop: Header=BB11_161 Depth=2
	ldptr.w	$a6, $a5, 6376
	beqz	$a6, .LBB11_160
# %bb.164:                              #   in Loop: Header=BB11_158 Depth=1
	slli.d	$a4, $a3, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a3, $a3, 1
	st.w	$a3, $s3, %pc_lo12(listXsize)
	addi.w	$a1, $a1, 1
	bge	$a2, $s2, .LBB11_156
	b	.LBB11_167
	.p2align	4, , 16
.LBB11_165:                             # %.loopexit82.i287
                                        #   in Loop: Header=BB11_158 Depth=1
	blt	$a2, $s2, .LBB11_167
	b	.LBB11_156
	.p2align	4, , 16
.LBB11_166:                             #   in Loop: Header=BB11_158 Depth=1
	move	$a1, $s2
	bge	$a2, $s2, .LBB11_156
.LBB11_167:                             # %.lr.ph109.preheader.i291
                                        #   in Loop: Header=BB11_158 Depth=1
	alsl.d	$a4, $a2, $s1, 3
	b	.LBB11_169
	.p2align	4, , 16
.LBB11_168:                             # %is_long_ref.exit.thread
                                        #   in Loop: Header=BB11_169 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, 8
	beq	$s2, $a2, .LBB11_173
.LBB11_169:                             # %.lr.ph109.i292
                                        #   Parent Loop BB11_158 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB11_168
# %bb.170:                              #   in Loop: Header=BB11_169 Depth=2
	ld.d	$a5, $a5, 48
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_168
# %bb.171:                              # %is_long_ref.exit
                                        #   in Loop: Header=BB11_169 Depth=2
	ldptr.w	$a6, $a5, 6376
	beqz	$a6, .LBB11_168
# %bb.172:                              #   in Loop: Header=BB11_158 Depth=1
	slli.d	$a4, $a3, 3
	stx.d	$a5, $a0, $a4
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
.LBB11_175:                             # %._crit_edge735
	pcalau12i	$a0, %pc_hi20(compare_fs_by_poc_desc)
	addi.d	$a3, $a0, %pc_lo12(compare_fs_by_poc_desc)
	ori	$a2, $zero, 8
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s6, 32
	move	$s7, $s3
	beqz	$a0, .LBB11_181
# %bb.176:                              # %.lr.ph740
	ld.d	$a1, $s6, 8
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $a2, 0
	move	$s7, $s3
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
	ldptr.w	$a4, $a2, 15328
	ld.w	$a5, $a3, 36
	bge	$a4, $a5, .LBB11_177
# %bb.180:                              #   in Loop: Header=BB11_178 Depth=1
	slli.d	$a4, $s7, 3
	addi.w	$s7, $s7, 1
	stx.d	$a3, $s0, $a4
	b	.LBB11_177
.LBB11_181:                             # %._crit_edge741
	alsl.d	$s4, $s3, $s0, 3
	sub.w	$a1, $s7, $s3
	pcalau12i	$a0, %pc_hi20(compare_fs_by_poc_asc)
	addi.d	$a3, $a0, %pc_lo12(compare_fs_by_poc_asc)
	ori	$a2, $zero, 8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB11_189
# %bb.182:                              # %.lr.ph745.preheader
	ori	$a0, $zero, 4
	bgeu	$s3, $a0, .LBB11_184
# %bb.183:
	move	$a0, $zero
	b	.LBB11_187
.LBB11_184:                             # %vector.ph1083
	bstrpick.d	$a0, $s3, 30, 2
	slli.d	$a0, $a0, 2
	slli.d	$a1, $s7, 3
	slli.d	$a2, $s3, 3
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a1, $s1
	addi.d	$a1, $a1, 16
	addi.d	$a2, $s0, 16
	move	$a3, $a0
	.p2align	4, , 16
.LBB11_185:                             # %vector.body1086
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB11_185
# %bb.186:                              # %middle.block1091
	beq	$a0, $s3, .LBB11_189
.LBB11_187:                             # %.lr.ph745.preheader1196
	slli.d	$a1, $a0, 3
	alsl.d	$a1, $s7, $a1, 3
	slli.d	$a2, $s3, 3
	sub.d	$a1, $a1, $a2
	add.d	$a1, $s1, $a1
	alsl.d	$a2, $a0, $s0, 3
	sub.d	$a0, $s3, $a0
	.p2align	4, , 16
.LBB11_188:                             # %.lr.ph745
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	st.d	$a3, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB11_188
.LBB11_189:                             # %.preheader648
	bge	$s3, $s7, .LBB11_191
# %bb.190:                              # %.lr.ph747.preheader
	sub.d	$a0, $s3, $s7
	nor	$a0, $a0, $zero
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	addi.d	$a2, $a0, 8
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB11_191:                             # %._crit_edge748
	st.d	$zero, $s5, 0
	pcalau12i	$a0, %pc_hi20(listX)
	addi.d	$s4, $a0, %pc_lo12(listX)
	ld.d	$a0, $s4, 0
	ori	$a4, $zero, 1
	move	$a1, $zero
	move	$a3, $zero
	move	$a2, $zero
	bne	$fp, $a4, .LBB11_212
# %bb.192:                              # %.preheader88.i359
	blez	$s7, .LBB11_259
# %bb.193:                              # %.preheader86.i360.preheader
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB11_196
	.p2align	4, , 16
.LBB11_194:                             # %.loopexit85.i365
                                        #   in Loop: Header=BB11_196 Depth=1
	blt	$a3, $s7, .LBB11_196
.LBB11_195:                             # %.loopexit85.i365
                                        #   in Loop: Header=BB11_196 Depth=1
	bge	$a2, $s7, .LBB11_212
.LBB11_196:                             # %.preheader86.i360
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_199 Depth 2
                                        #     Child Loop BB11_207 Depth 2
	bge	$a3, $s7, .LBB11_203
# %bb.197:                              # %.lr.ph.preheader.i375
                                        #   in Loop: Header=BB11_196 Depth=1
	alsl.d	$a4, $a3, $s0, 3
	b	.LBB11_199
	.p2align	4, , 16
.LBB11_198:                             # %is_short_ref.exit567.thread
                                        #   in Loop: Header=BB11_199 Depth=2
	addi.w	$a3, $a3, 1
	addi.d	$a4, $a4, 8
	beq	$s7, $a3, .LBB11_204
.LBB11_199:                             # %.lr.ph.i376
                                        #   Parent Loop BB11_196 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB11_198
# %bb.200:                              #   in Loop: Header=BB11_199 Depth=2
	ld.d	$a5, $a5, 48
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_198
# %bb.201:                              # %is_short_ref.exit567
                                        #   in Loop: Header=BB11_199 Depth=2
	ldptr.w	$a6, $a5, 6376
	bnez	$a6, .LBB11_198
# %bb.202:                              #   in Loop: Header=BB11_196 Depth=1
	slli.d	$a4, $a1, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a1, $a1, 1
	st.w	$a1, $s5, 0
	addi.w	$a3, $a3, 1
	bge	$a2, $s7, .LBB11_194
	b	.LBB11_205
	.p2align	4, , 16
.LBB11_203:                             # %.loopexit87.i363
                                        #   in Loop: Header=BB11_196 Depth=1
	blt	$a2, $s7, .LBB11_205
	b	.LBB11_194
	.p2align	4, , 16
.LBB11_204:                             #   in Loop: Header=BB11_196 Depth=1
	move	$a3, $s7
	bge	$a2, $s7, .LBB11_194
.LBB11_205:                             # %.lr.ph99.preheader.i367
                                        #   in Loop: Header=BB11_196 Depth=1
	alsl.d	$a4, $a2, $s0, 3
	b	.LBB11_207
	.p2align	4, , 16
.LBB11_206:                             # %is_short_ref.exit564.thread
                                        #   in Loop: Header=BB11_207 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, 8
	beq	$s7, $a2, .LBB11_211
.LBB11_207:                             # %.lr.ph99.i368
                                        #   Parent Loop BB11_196 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 2
	beqz	$a6, .LBB11_206
# %bb.208:                              #   in Loop: Header=BB11_207 Depth=2
	ld.d	$a5, $a5, 56
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_206
# %bb.209:                              # %is_short_ref.exit564
                                        #   in Loop: Header=BB11_207 Depth=2
	ldptr.w	$a6, $a5, 6376
	bnez	$a6, .LBB11_206
# %bb.210:                              #   in Loop: Header=BB11_196 Depth=1
	slli.d	$a4, $a1, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a1, $a1, 1
	st.w	$a1, $s5, 0
	addi.w	$a2, $a2, 1
	bge	$a3, $s7, .LBB11_195
	b	.LBB11_196
	.p2align	4, , 16
.LBB11_211:                             #   in Loop: Header=BB11_196 Depth=1
	move	$a2, $s7
	bge	$a3, $s7, .LBB11_195
	b	.LBB11_196
.LBB11_212:                             # %.loopexit89.i332
	ori	$a4, $zero, 2
	bne	$fp, $a4, .LBB11_234
# %bb.213:                              # %.preheader83.i335
	blt	$a3, $s7, .LBB11_218
# %bb.214:                              # %.preheader83.i335
	blt	$a2, $s7, .LBB11_218
# %bb.215:                              # %.loopexit89.i384.thread
	ld.d	$a0, $s4, 8
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB11_257
	.p2align	4, , 16
.LBB11_216:                             # %.loopexit.i341
                                        #   in Loop: Header=BB11_218 Depth=1
	blt	$a3, $s7, .LBB11_218
.LBB11_217:                             # %.loopexit.i341
                                        #   in Loop: Header=BB11_218 Depth=1
	bge	$a2, $s7, .LBB11_234
.LBB11_218:                             # %.preheader.i336
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_221 Depth 2
                                        #     Child Loop BB11_229 Depth 2
	bge	$a2, $s7, .LBB11_225
# %bb.219:                              # %.lr.ph106.preheader.i351
                                        #   in Loop: Header=BB11_218 Depth=1
	alsl.d	$a4, $a2, $s0, 3
	b	.LBB11_221
	.p2align	4, , 16
.LBB11_220:                             # %is_short_ref.exit561.thread
                                        #   in Loop: Header=BB11_221 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, 8
	beq	$s7, $a2, .LBB11_226
.LBB11_221:                             # %.lr.ph106.i352
                                        #   Parent Loop BB11_218 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 2
	beqz	$a6, .LBB11_220
# %bb.222:                              #   in Loop: Header=BB11_221 Depth=2
	ld.d	$a5, $a5, 56
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_220
# %bb.223:                              # %is_short_ref.exit561
                                        #   in Loop: Header=BB11_221 Depth=2
	ldptr.w	$a6, $a5, 6376
	bnez	$a6, .LBB11_220
# %bb.224:                              #   in Loop: Header=BB11_218 Depth=1
	slli.d	$a4, $a1, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a1, $a1, 1
	st.w	$a1, $s5, 0
	addi.w	$a2, $a2, 1
	blt	$a3, $s7, .LBB11_227
	b	.LBB11_216
	.p2align	4, , 16
.LBB11_225:                             # %.loopexit82.i339
                                        #   in Loop: Header=BB11_218 Depth=1
	blt	$a3, $s7, .LBB11_227
	b	.LBB11_216
	.p2align	4, , 16
.LBB11_226:                             #   in Loop: Header=BB11_218 Depth=1
	move	$a2, $s7
	bge	$a3, $s7, .LBB11_216
.LBB11_227:                             # %.lr.ph109.preheader.i343
                                        #   in Loop: Header=BB11_218 Depth=1
	alsl.d	$a4, $a3, $s0, 3
	b	.LBB11_229
	.p2align	4, , 16
.LBB11_228:                             # %is_short_ref.exit558.thread
                                        #   in Loop: Header=BB11_229 Depth=2
	addi.w	$a3, $a3, 1
	addi.d	$a4, $a4, 8
	beq	$s7, $a3, .LBB11_233
.LBB11_229:                             # %.lr.ph109.i344
                                        #   Parent Loop BB11_218 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB11_228
# %bb.230:                              #   in Loop: Header=BB11_229 Depth=2
	ld.d	$a5, $a5, 48
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_228
# %bb.231:                              # %is_short_ref.exit558
                                        #   in Loop: Header=BB11_229 Depth=2
	ldptr.w	$a6, $a5, 6376
	bnez	$a6, .LBB11_228
# %bb.232:                              #   in Loop: Header=BB11_218 Depth=1
	slli.d	$a4, $a1, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a1, $a1, 1
	st.w	$a1, $s5, 0
	addi.w	$a3, $a3, 1
	bge	$a3, $s7, .LBB11_217
	b	.LBB11_218
	.p2align	4, , 16
.LBB11_233:                             #   in Loop: Header=BB11_218 Depth=1
	move	$a3, $s7
	bge	$a3, $s7, .LBB11_217
	b	.LBB11_218
.LBB11_234:                             # %gen_pic_list_from_frame_list.exit383
	ld.d	$a0, $s4, 8
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB11_255
# %bb.235:                              # %.preheader88.i411
	blez	$s7, .LBB11_259
# %bb.236:                              # %.preheader86.i412.preheader
	ld.w	$a3, $s5, 4
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB11_239
	.p2align	4, , 16
.LBB11_237:                             # %.loopexit85.i417
                                        #   in Loop: Header=BB11_239 Depth=1
	blt	$a2, $s7, .LBB11_239
.LBB11_238:                             # %.loopexit85.i417
                                        #   in Loop: Header=BB11_239 Depth=1
	bge	$a1, $s7, .LBB11_256
.LBB11_239:                             # %.preheader86.i412
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_242 Depth 2
                                        #     Child Loop BB11_250 Depth 2
	bge	$a2, $s7, .LBB11_246
# %bb.240:                              # %.lr.ph.preheader.i427
                                        #   in Loop: Header=BB11_239 Depth=1
	alsl.d	$a4, $a2, $s1, 3
	b	.LBB11_242
	.p2align	4, , 16
.LBB11_241:                             # %is_short_ref.exit579.thread
                                        #   in Loop: Header=BB11_242 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, 8
	beq	$s7, $a2, .LBB11_247
.LBB11_242:                             # %.lr.ph.i428
                                        #   Parent Loop BB11_239 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB11_241
# %bb.243:                              #   in Loop: Header=BB11_242 Depth=2
	ld.d	$a5, $a5, 48
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_241
# %bb.244:                              # %is_short_ref.exit579
                                        #   in Loop: Header=BB11_242 Depth=2
	ldptr.w	$a6, $a5, 6376
	bnez	$a6, .LBB11_241
# %bb.245:                              #   in Loop: Header=BB11_239 Depth=1
	slli.d	$a4, $a3, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a3, $a3, 1
	st.w	$a3, $s5, 4
	addi.w	$a2, $a2, 1
	bge	$a1, $s7, .LBB11_237
	b	.LBB11_248
	.p2align	4, , 16
.LBB11_246:                             # %.loopexit87.i415
                                        #   in Loop: Header=BB11_239 Depth=1
	blt	$a1, $s7, .LBB11_248
	b	.LBB11_237
	.p2align	4, , 16
.LBB11_247:                             #   in Loop: Header=BB11_239 Depth=1
	move	$a2, $s7
	bge	$a1, $s7, .LBB11_237
.LBB11_248:                             # %.lr.ph99.preheader.i419
                                        #   in Loop: Header=BB11_239 Depth=1
	alsl.d	$a4, $a1, $s1, 3
	b	.LBB11_250
	.p2align	4, , 16
.LBB11_249:                             # %is_short_ref.exit576.thread
                                        #   in Loop: Header=BB11_250 Depth=2
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, 8
	beq	$s7, $a1, .LBB11_254
.LBB11_250:                             # %.lr.ph99.i420
                                        #   Parent Loop BB11_239 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 2
	beqz	$a6, .LBB11_249
# %bb.251:                              #   in Loop: Header=BB11_250 Depth=2
	ld.d	$a5, $a5, 56
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_249
# %bb.252:                              # %is_short_ref.exit576
                                        #   in Loop: Header=BB11_250 Depth=2
	ldptr.w	$a6, $a5, 6376
	bnez	$a6, .LBB11_249
# %bb.253:                              #   in Loop: Header=BB11_239 Depth=1
	slli.d	$a4, $a3, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a3, $a3, 1
	st.w	$a3, $s5, 4
	addi.w	$a1, $a1, 1
	bge	$a2, $s7, .LBB11_238
	b	.LBB11_239
	.p2align	4, , 16
.LBB11_254:                             #   in Loop: Header=BB11_239 Depth=1
	move	$a1, $s7
	bge	$a2, $s7, .LBB11_238
	b	.LBB11_239
.LBB11_255:
	move	$a2, $zero
	move	$a1, $zero
.LBB11_256:                             # %.loopexit89.i384
	ori	$a3, $zero, 2
	bne	$fp, $a3, .LBB11_259
.LBB11_257:                             # %.preheader83.i387
	blt	$a2, $s7, .LBB11_293
# %bb.258:                              # %.preheader83.i387
	blt	$a1, $s7, .LBB11_293
.LBB11_259:                             # %gen_pic_list_from_frame_list.exit435
	ld.wu	$a0, $s6, 36
	addi.w	$s3, $a0, 0
	beqz	$s3, .LBB11_267
# %bb.260:                              # %.lr.ph754
	ld.d	$a1, $s6, 16
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$s3, $a3, .LBB11_265
# %bb.261:                              # %.lr.ph754
	sub.d	$a3, $s2, $a1
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB11_265
# %bb.262:                              # %vector.ph1098
	bstrpick.d	$a2, $a0, 31, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s2, 16
	addi.d	$a4, $a1, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB11_263:                             # %vector.body1101
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB11_263
# %bb.264:                              # %middle.block1106
	beq	$a2, $a0, .LBB11_267
.LBB11_265:                             # %scalar.ph1096.preheader
	alsl.d	$a1, $a2, $a1, 3
	alsl.d	$a3, $a2, $s2, 3
	sub.d	$a0, $a0, $a2
	.p2align	4, , 16
.LBB11_266:                             # %scalar.ph1096
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB11_266
.LBB11_267:                             # %._crit_edge755
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
# %bb.268:                              # %.preheader88.i463
	beqz	$s3, .LBB11_386
# %bb.269:                              # %.preheader86.i464.preheader
	ld.w	$a3, $s5, 0
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB11_272
	.p2align	4, , 16
.LBB11_270:                             # %.loopexit85.i469
                                        #   in Loop: Header=BB11_272 Depth=1
	blt	$a2, $s3, .LBB11_272
.LBB11_271:                             # %.loopexit85.i469
                                        #   in Loop: Header=BB11_272 Depth=1
	bge	$a1, $s3, .LBB11_289
.LBB11_272:                             # %.preheader86.i464
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_275 Depth 2
                                        #     Child Loop BB11_283 Depth 2
	bge	$a2, $s3, .LBB11_279
# %bb.273:                              # %.lr.ph.preheader.i479
                                        #   in Loop: Header=BB11_272 Depth=1
	alsl.d	$a4, $a2, $s2, 3
	b	.LBB11_275
	.p2align	4, , 16
.LBB11_274:                             # %is_long_ref.exit587.thread
                                        #   in Loop: Header=BB11_275 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, 8
	beq	$s3, $a2, .LBB11_280
.LBB11_275:                             # %.lr.ph.i480
                                        #   Parent Loop BB11_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB11_274
# %bb.276:                              #   in Loop: Header=BB11_275 Depth=2
	ld.d	$a5, $a5, 48
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_274
# %bb.277:                              # %is_long_ref.exit587
                                        #   in Loop: Header=BB11_275 Depth=2
	ldptr.w	$a6, $a5, 6376
	beqz	$a6, .LBB11_274
# %bb.278:                              #   in Loop: Header=BB11_272 Depth=1
	slli.d	$a4, $a3, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a3, $a3, 1
	st.w	$a3, $s5, 0
	addi.w	$a2, $a2, 1
	bge	$a1, $s3, .LBB11_270
	b	.LBB11_281
	.p2align	4, , 16
.LBB11_279:                             # %.loopexit87.i467
                                        #   in Loop: Header=BB11_272 Depth=1
	blt	$a1, $s3, .LBB11_281
	b	.LBB11_270
	.p2align	4, , 16
.LBB11_280:                             #   in Loop: Header=BB11_272 Depth=1
	move	$a2, $s3
	bge	$a1, $s3, .LBB11_270
.LBB11_281:                             # %.lr.ph99.preheader.i471
                                        #   in Loop: Header=BB11_272 Depth=1
	alsl.d	$a4, $a1, $s2, 3
	b	.LBB11_283
	.p2align	4, , 16
.LBB11_282:                             # %is_long_ref.exit585.thread
                                        #   in Loop: Header=BB11_283 Depth=2
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, 8
	beq	$s3, $a1, .LBB11_287
.LBB11_283:                             # %.lr.ph99.i472
                                        #   Parent Loop BB11_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 2
	beqz	$a6, .LBB11_282
# %bb.284:                              #   in Loop: Header=BB11_283 Depth=2
	ld.d	$a5, $a5, 56
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_282
# %bb.285:                              # %is_long_ref.exit585
                                        #   in Loop: Header=BB11_283 Depth=2
	ldptr.w	$a6, $a5, 6376
	beqz	$a6, .LBB11_282
# %bb.286:                              #   in Loop: Header=BB11_272 Depth=1
	slli.d	$a4, $a3, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a3, $a3, 1
	st.w	$a3, $s5, 0
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
.LBB11_289:                             # %.loopexit89.i436
	ori	$a3, $zero, 2
	bne	$fp, $a3, .LBB11_361
# %bb.290:                              # %.preheader83.i439
	blt	$a2, $s3, .LBB11_342
# %bb.291:                              # %.preheader83.i439
	blt	$a1, $s3, .LBB11_342
# %bb.292:                              # %.loopexit89.i488.thread
	ld.d	$a0, $s4, 8
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB11_384
.LBB11_293:                             # %.preheader.i388.preheader
	ld.w	$a3, $s5, 4
	b	.LBB11_296
	.p2align	4, , 16
.LBB11_294:                             # %.loopexit.i393
                                        #   in Loop: Header=BB11_296 Depth=1
	blt	$a2, $s7, .LBB11_296
.LBB11_295:                             # %.loopexit.i393
                                        #   in Loop: Header=BB11_296 Depth=1
	bge	$a1, $s7, .LBB11_259
.LBB11_296:                             # %.preheader.i388
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_299 Depth 2
                                        #     Child Loop BB11_307 Depth 2
	bge	$a1, $s7, .LBB11_303
# %bb.297:                              # %.lr.ph106.preheader.i403
                                        #   in Loop: Header=BB11_296 Depth=1
	alsl.d	$a4, $a1, $s1, 3
	b	.LBB11_299
	.p2align	4, , 16
.LBB11_298:                             # %is_short_ref.exit573.thread
                                        #   in Loop: Header=BB11_299 Depth=2
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, 8
	beq	$s7, $a1, .LBB11_304
.LBB11_299:                             # %.lr.ph106.i404
                                        #   Parent Loop BB11_296 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 2
	beqz	$a6, .LBB11_298
# %bb.300:                              #   in Loop: Header=BB11_299 Depth=2
	ld.d	$a5, $a5, 56
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_298
# %bb.301:                              # %is_short_ref.exit573
                                        #   in Loop: Header=BB11_299 Depth=2
	ldptr.w	$a6, $a5, 6376
	bnez	$a6, .LBB11_298
# %bb.302:                              #   in Loop: Header=BB11_296 Depth=1
	slli.d	$a4, $a3, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a3, $a3, 1
	st.w	$a3, $s5, 4
	addi.w	$a1, $a1, 1
	bge	$a2, $s7, .LBB11_294
	b	.LBB11_305
	.p2align	4, , 16
.LBB11_303:                             # %.loopexit82.i391
                                        #   in Loop: Header=BB11_296 Depth=1
	blt	$a2, $s7, .LBB11_305
	b	.LBB11_294
	.p2align	4, , 16
.LBB11_304:                             #   in Loop: Header=BB11_296 Depth=1
	move	$a1, $s7
	bge	$a2, $s7, .LBB11_294
.LBB11_305:                             # %.lr.ph109.preheader.i395
                                        #   in Loop: Header=BB11_296 Depth=1
	alsl.d	$a4, $a2, $s1, 3
	b	.LBB11_307
	.p2align	4, , 16
.LBB11_306:                             # %is_short_ref.exit570.thread
                                        #   in Loop: Header=BB11_307 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, 8
	beq	$s7, $a2, .LBB11_311
.LBB11_307:                             # %.lr.ph109.i396
                                        #   Parent Loop BB11_296 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB11_306
# %bb.308:                              #   in Loop: Header=BB11_307 Depth=2
	ld.d	$a5, $a5, 48
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_306
# %bb.309:                              # %is_short_ref.exit570
                                        #   in Loop: Header=BB11_307 Depth=2
	ldptr.w	$a6, $a5, 6376
	bnez	$a6, .LBB11_306
# %bb.310:                              #   in Loop: Header=BB11_296 Depth=1
	slli.d	$a4, $a3, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a3, $a3, 1
	st.w	$a3, $s5, 4
	addi.w	$a2, $a2, 1
	bge	$a2, $s7, .LBB11_295
	b	.LBB11_296
	.p2align	4, , 16
.LBB11_311:                             #   in Loop: Header=BB11_296 Depth=1
	move	$a2, $s7
	bge	$a2, $s7, .LBB11_295
	b	.LBB11_296
.LBB11_312:
	move	$fp, $zero
.LBB11_313:                             # %._crit_edge764
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
# %bb.314:                              # %.lr.ph769
	ld.d	$a2, $s3, 8
	ori	$a3, $zero, 3
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$a4, $a4, %got_pc_lo12(img)
	move	$s2, $fp
	b	.LBB11_316
	.p2align	4, , 16
.LBB11_315:                             #   in Loop: Header=BB11_316 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB11_321
.LBB11_316:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, 0
	ld.w	$a6, $a5, 0
	bne	$a6, $a3, .LBB11_315
# %bb.317:                              #   in Loop: Header=BB11_316 Depth=1
	ld.d	$a5, $a5, 40
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_315
# %bb.318:                              #   in Loop: Header=BB11_316 Depth=1
	ldptr.w	$a6, $a5, 6376
	bnez	$a6, .LBB11_315
# %bb.319:                              #   in Loop: Header=BB11_316 Depth=1
	ld.d	$a6, $a4, 0
	ldptr.w	$a6, $a6, 15324
	ld.w	$a7, $a5, 4
	bge	$a6, $a7, .LBB11_315
# %bb.320:                              #   in Loop: Header=BB11_316 Depth=1
	slli.d	$a6, $s2, 3
	addi.w	$s2, $s2, 1
	stx.d	$a5, $a0, $a6
	b	.LBB11_315
.LBB11_321:                             # %._crit_edge770
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
# %bb.322:                              # %.lr.ph774
	ld.d	$a2, $s1, 8
	ori	$a3, $zero, 12
	bltu	$fp, $a3, .LBB11_324
# %bb.323:                              # %vector.memcheck1109
	alsl.d	$a3, $s2, $a2, 3
	alsl.d	$a4, $fp, $a0, 3
	sub.d	$a3, $a3, $a4
	ori	$a4, $zero, 32
	bgeu	$a3, $a4, .LBB11_422
.LBB11_324:
	move	$a3, $zero
.LBB11_325:                             # %scalar.ph1112.preheader
	slli.d	$a4, $a3, 3
	alsl.d	$a4, $s2, $a4, 3
	sub.d	$a4, $a4, $a1
	add.d	$a2, $a2, $a4
	alsl.d	$a4, $a3, $a0, 3
	sub.d	$a3, $fp, $a3
	.p2align	4, , 16
.LBB11_326:                             # %scalar.ph1112
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.d	$a5, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB11_326
.LBB11_327:                             # %.preheader646
	bge	$fp, $s2, .LBB11_335
# %bb.328:                              # %.lr.ph776
	ld.d	$a2, $s1, 8
	ori	$a3, $zero, 6
	bltu	$s0, $a3, .LBB11_333
# %bb.329:                              # %vector.memcheck1125
	alsl.d	$a3, $fp, $a0, 3
	sub.d	$a3, $a2, $a3
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB11_333
# %bb.330:                              # %vector.ph1129
	move	$a3, $s0
	bstrins.d	$a3, $zero, 1, 0
	add.d	$fp, $a3, $fp
	add.d	$a4, $a1, $a0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a2, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB11_331:                             # %vector.body1132
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB11_331
# %bb.332:                              # %middle.block1137
	beq	$a3, $s0, .LBB11_335
.LBB11_333:                             # %scalar.ph1127.preheader
	slli.d	$a3, $fp, 3
	sub.d	$a1, $a3, $a1
	add.d	$a1, $a2, $a1
	alsl.d	$a2, $fp, $a0, 3
	sub.d	$a3, $s2, $fp
	.p2align	4, , 16
.LBB11_334:                             # %scalar.ph1127
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	st.d	$a4, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB11_334
.LBB11_335:                             # %._crit_edge777
	pcalau12i	$a1, %pc_hi20(listXsize)
	addi.d	$s4, $a1, %pc_lo12(listXsize)
	ld.wu	$a1, $s3, 36
	st.w	$s2, $s4, 4
	st.w	$s2, $s4, 0
	move	$s0, $s2
	beqz	$a1, .LBB11_341
# %bb.336:                              # %.lr.ph781
	ld.d	$a2, $s3, 16
	ld.d	$a3, $s1, 8
	ori	$a4, $zero, 3
	move	$s0, $s2
	b	.LBB11_338
	.p2align	4, , 16
.LBB11_337:                             #   in Loop: Header=BB11_338 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB11_341
.LBB11_338:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, 0
	ld.w	$a6, $a5, 0
	bne	$a6, $a4, .LBB11_337
# %bb.339:                              #   in Loop: Header=BB11_338 Depth=1
	ld.d	$a6, $a5, 40
	ldptr.w	$a7, $a6, 6376
	beqz	$a7, .LBB11_337
# %bb.340:                              #   in Loop: Header=BB11_338 Depth=1
	slli.d	$a7, $s0, 3
	stx.d	$a6, $a0, $a7
	ld.d	$a5, $a5, 40
	addi.w	$s0, $s0, 1
	stx.d	$a5, $a3, $a7
	b	.LBB11_337
.LBB11_341:                             # %._crit_edge782
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
.LBB11_342:                             # %.preheader.i440.preheader
	ld.w	$a3, $s5, 0
	b	.LBB11_345
	.p2align	4, , 16
.LBB11_343:                             # %.loopexit.i445
                                        #   in Loop: Header=BB11_345 Depth=1
	blt	$a2, $s3, .LBB11_345
.LBB11_344:                             # %.loopexit.i445
                                        #   in Loop: Header=BB11_345 Depth=1
	bge	$a1, $s3, .LBB11_361
.LBB11_345:                             # %.preheader.i440
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_348 Depth 2
                                        #     Child Loop BB11_356 Depth 2
	bge	$a1, $s3, .LBB11_352
# %bb.346:                              # %.lr.ph106.preheader.i455
                                        #   in Loop: Header=BB11_345 Depth=1
	alsl.d	$a4, $a1, $s2, 3
	b	.LBB11_348
	.p2align	4, , 16
.LBB11_347:                             # %is_long_ref.exit583.thread
                                        #   in Loop: Header=BB11_348 Depth=2
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, 8
	beq	$s3, $a1, .LBB11_353
.LBB11_348:                             # %.lr.ph106.i456
                                        #   Parent Loop BB11_345 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 2
	beqz	$a6, .LBB11_347
# %bb.349:                              #   in Loop: Header=BB11_348 Depth=2
	ld.d	$a5, $a5, 56
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_347
# %bb.350:                              # %is_long_ref.exit583
                                        #   in Loop: Header=BB11_348 Depth=2
	ldptr.w	$a6, $a5, 6376
	beqz	$a6, .LBB11_347
# %bb.351:                              #   in Loop: Header=BB11_345 Depth=1
	slli.d	$a4, $a3, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a3, $a3, 1
	st.w	$a3, $s5, 0
	addi.w	$a1, $a1, 1
	bge	$a2, $s3, .LBB11_343
	b	.LBB11_354
	.p2align	4, , 16
.LBB11_352:                             # %.loopexit82.i443
                                        #   in Loop: Header=BB11_345 Depth=1
	blt	$a2, $s3, .LBB11_354
	b	.LBB11_343
	.p2align	4, , 16
.LBB11_353:                             #   in Loop: Header=BB11_345 Depth=1
	move	$a1, $s3
	bge	$a2, $s3, .LBB11_343
.LBB11_354:                             # %.lr.ph109.preheader.i447
                                        #   in Loop: Header=BB11_345 Depth=1
	alsl.d	$a4, $a2, $s2, 3
	b	.LBB11_356
	.p2align	4, , 16
.LBB11_355:                             # %is_long_ref.exit581.thread
                                        #   in Loop: Header=BB11_356 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, 8
	beq	$s3, $a2, .LBB11_360
.LBB11_356:                             # %.lr.ph109.i448
                                        #   Parent Loop BB11_345 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB11_355
# %bb.357:                              #   in Loop: Header=BB11_356 Depth=2
	ld.d	$a5, $a5, 48
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_355
# %bb.358:                              # %is_long_ref.exit581
                                        #   in Loop: Header=BB11_356 Depth=2
	ldptr.w	$a6, $a5, 6376
	beqz	$a6, .LBB11_355
# %bb.359:                              #   in Loop: Header=BB11_345 Depth=1
	slli.d	$a4, $a3, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a3, $a3, 1
	st.w	$a3, $s5, 0
	addi.w	$a2, $a2, 1
	bge	$a2, $s3, .LBB11_344
	b	.LBB11_345
	.p2align	4, , 16
.LBB11_360:                             #   in Loop: Header=BB11_345 Depth=1
	move	$a2, $s3
	bge	$a2, $s3, .LBB11_344
	b	.LBB11_345
.LBB11_361:                             # %gen_pic_list_from_frame_list.exit487
	ld.d	$a0, $s4, 8
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB11_382
# %bb.362:                              # %.preheader88.i515
	beqz	$s3, .LBB11_386
# %bb.363:                              # %.preheader86.i516.preheader
	ld.w	$a3, $s5, 4
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB11_366
	.p2align	4, , 16
.LBB11_364:                             # %.loopexit85.i521
                                        #   in Loop: Header=BB11_366 Depth=1
	blt	$a2, $s3, .LBB11_366
.LBB11_365:                             # %.loopexit85.i521
                                        #   in Loop: Header=BB11_366 Depth=1
	bge	$a1, $s3, .LBB11_383
.LBB11_366:                             # %.preheader86.i516
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_369 Depth 2
                                        #     Child Loop BB11_377 Depth 2
	bge	$a2, $s3, .LBB11_373
# %bb.367:                              # %.lr.ph.preheader.i531
                                        #   in Loop: Header=BB11_366 Depth=1
	alsl.d	$a4, $a2, $s2, 3
	b	.LBB11_369
	.p2align	4, , 16
.LBB11_368:                             # %is_long_ref.exit595.thread
                                        #   in Loop: Header=BB11_369 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, 8
	beq	$s3, $a2, .LBB11_374
.LBB11_369:                             # %.lr.ph.i532
                                        #   Parent Loop BB11_366 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB11_368
# %bb.370:                              #   in Loop: Header=BB11_369 Depth=2
	ld.d	$a5, $a5, 48
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_368
# %bb.371:                              # %is_long_ref.exit595
                                        #   in Loop: Header=BB11_369 Depth=2
	ldptr.w	$a6, $a5, 6376
	beqz	$a6, .LBB11_368
# %bb.372:                              #   in Loop: Header=BB11_366 Depth=1
	slli.d	$a4, $a3, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a3, $a3, 1
	st.w	$a3, $s5, 4
	addi.w	$a2, $a2, 1
	bge	$a1, $s3, .LBB11_364
	b	.LBB11_375
	.p2align	4, , 16
.LBB11_373:                             # %.loopexit87.i519
                                        #   in Loop: Header=BB11_366 Depth=1
	blt	$a1, $s3, .LBB11_375
	b	.LBB11_364
	.p2align	4, , 16
.LBB11_374:                             #   in Loop: Header=BB11_366 Depth=1
	move	$a2, $s3
	bge	$a1, $s3, .LBB11_364
.LBB11_375:                             # %.lr.ph99.preheader.i523
                                        #   in Loop: Header=BB11_366 Depth=1
	alsl.d	$a4, $a1, $s2, 3
	b	.LBB11_377
	.p2align	4, , 16
.LBB11_376:                             # %is_long_ref.exit593.thread
                                        #   in Loop: Header=BB11_377 Depth=2
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, 8
	beq	$s3, $a1, .LBB11_381
.LBB11_377:                             # %.lr.ph99.i524
                                        #   Parent Loop BB11_366 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 2
	beqz	$a6, .LBB11_376
# %bb.378:                              #   in Loop: Header=BB11_377 Depth=2
	ld.d	$a5, $a5, 56
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_376
# %bb.379:                              # %is_long_ref.exit593
                                        #   in Loop: Header=BB11_377 Depth=2
	ldptr.w	$a6, $a5, 6376
	beqz	$a6, .LBB11_376
# %bb.380:                              #   in Loop: Header=BB11_366 Depth=1
	slli.d	$a4, $a3, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a3, $a3, 1
	st.w	$a3, $s5, 4
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
.LBB11_383:                             # %.loopexit89.i488
	ori	$a3, $zero, 2
	bne	$fp, $a3, .LBB11_386
.LBB11_384:                             # %.preheader83.i491
	blt	$a2, $s3, .LBB11_403
# %bb.385:                              # %.preheader83.i491
	blt	$a1, $s3, .LBB11_403
.LBB11_386:                             # %gen_pic_list_from_frame_list.exit539
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s5, 4
.LBB11_387:
	pcalau12i	$a0, %pc_hi20(listXsize)
	addi.d	$a0, $a0, %pc_lo12(listXsize)
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB11_398
# %bb.388:
	bne	$a1, $s0, .LBB11_398
# %bb.389:                              # %.preheader645
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
.LBB11_391:                             # %vector.ph1142
	bstrpick.d	$a5, $a4, 31, 2
	slli.d	$a5, $a5, 2
	addi.d	$a6, $a2, 16
	addi.d	$a7, $a3, 16
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, -1
	move	$t0, $a5
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB11_392:                             # %vector.body1145
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
# %bb.393:                              # %middle.block1153
	vor.v	$vr0, $vr2, $vr0
	vslli.d	$vr0, $vr0, 63
	vmskltz.d	$vr0, $vr0
	vpickve2gr.hu	$a6, $vr0, 0
	sltu	$a6, $zero, $a6
	beq	$a5, $a4, .LBB11_396
.LBB11_394:                             # %scalar.ph1140.preheader
	alsl.d	$a7, $a5, $a2, 3
	alsl.d	$a3, $a5, $a3, 3
	sub.d	$a4, $a4, $a5
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB11_395:                             # %scalar.ph1140
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
.LBB11_396:                             # %.loopexit1156
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
	ldptr.w	$a3, $a2, 14456
	slt	$a4, $a1, $a3
	masknez	$a3, $a3, $a4
	ldptr.w	$a2, $a2, 14460
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a3
	st.w	$a1, $a0, 0
	slt	$a3, $s0, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s0, $a3
	or	$fp, $a3, $a2
	ori	$s0, $zero, 32
	st.w	$fp, $a0, 4
	bltu	$s0, $a1, .LBB11_400
# %bb.399:                              # %.lr.ph788
	pcalau12i	$a0, %pc_hi20(listX)
	ld.d	$a0, $a0, %pc_lo12(listX)
	slli.d	$a1, $a1, 3
	addi.w	$a2, $a1, 0
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 264
	sub.d	$a1, $a2, $a1
	bstrpick.d	$a1, $a1, 31, 3
	slli.d	$a2, $a1, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB11_400:                             # %.preheader
	bltu	$s0, $fp, .LBB11_402
# %bb.401:                              # %.lr.ph790
	pcalau12i	$a0, %pc_hi20(listX+8)
	ld.d	$a0, $a0, %pc_lo12(listX+8)
	slli.d	$a1, $fp, 3
	addi.w	$a2, $a1, 0
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 264
	sub.d	$a1, $a2, $a1
	bstrpick.d	$a1, $a1, 31, 3
	slli.d	$a2, $a1, 3
	move	$a1, $zero
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
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB11_402:                             # %.loopexit
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
.LBB11_403:                             # %.preheader.i492.preheader
	ld.w	$a3, $s5, 4
	b	.LBB11_406
	.p2align	4, , 16
.LBB11_404:                             # %.loopexit.i497
                                        #   in Loop: Header=BB11_406 Depth=1
	blt	$a2, $s3, .LBB11_406
.LBB11_405:                             # %.loopexit.i497
                                        #   in Loop: Header=BB11_406 Depth=1
	bge	$a1, $s3, .LBB11_386
.LBB11_406:                             # %.preheader.i492
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_409 Depth 2
                                        #     Child Loop BB11_417 Depth 2
	bge	$a1, $s3, .LBB11_413
# %bb.407:                              # %.lr.ph106.preheader.i507
                                        #   in Loop: Header=BB11_406 Depth=1
	alsl.d	$a4, $a1, $s2, 3
	b	.LBB11_409
	.p2align	4, , 16
.LBB11_408:                             # %is_long_ref.exit591.thread
                                        #   in Loop: Header=BB11_409 Depth=2
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, 8
	beq	$s3, $a1, .LBB11_414
.LBB11_409:                             # %.lr.ph106.i508
                                        #   Parent Loop BB11_406 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 2
	beqz	$a6, .LBB11_408
# %bb.410:                              #   in Loop: Header=BB11_409 Depth=2
	ld.d	$a5, $a5, 56
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_408
# %bb.411:                              # %is_long_ref.exit591
                                        #   in Loop: Header=BB11_409 Depth=2
	ldptr.w	$a6, $a5, 6376
	beqz	$a6, .LBB11_408
# %bb.412:                              #   in Loop: Header=BB11_406 Depth=1
	slli.d	$a4, $a3, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a3, $a3, 1
	st.w	$a3, $s5, 4
	addi.w	$a1, $a1, 1
	bge	$a2, $s3, .LBB11_404
	b	.LBB11_415
	.p2align	4, , 16
.LBB11_413:                             # %.loopexit82.i495
                                        #   in Loop: Header=BB11_406 Depth=1
	blt	$a2, $s3, .LBB11_415
	b	.LBB11_404
	.p2align	4, , 16
.LBB11_414:                             #   in Loop: Header=BB11_406 Depth=1
	move	$a1, $s3
	bge	$a2, $s3, .LBB11_404
.LBB11_415:                             # %.lr.ph109.preheader.i499
                                        #   in Loop: Header=BB11_406 Depth=1
	alsl.d	$a4, $a2, $s2, 3
	b	.LBB11_417
	.p2align	4, , 16
.LBB11_416:                             # %is_long_ref.exit589.thread
                                        #   in Loop: Header=BB11_417 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, 8
	beq	$s3, $a2, .LBB11_421
.LBB11_417:                             # %.lr.ph109.i500
                                        #   Parent Loop BB11_406 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.bu	$a6, $a5, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB11_416
# %bb.418:                              #   in Loop: Header=BB11_417 Depth=2
	ld.d	$a5, $a5, 48
	ldptr.w	$a6, $a5, 6380
	beqz	$a6, .LBB11_416
# %bb.419:                              # %is_long_ref.exit589
                                        #   in Loop: Header=BB11_417 Depth=2
	ldptr.w	$a6, $a5, 6376
	beqz	$a6, .LBB11_416
# %bb.420:                              #   in Loop: Header=BB11_406 Depth=1
	slli.d	$a4, $a3, 3
	stx.d	$a5, $a0, $a4
	addi.w	$a3, $a3, 1
	st.w	$a3, $s5, 4
	addi.w	$a2, $a2, 1
	bge	$a2, $s3, .LBB11_405
	b	.LBB11_406
	.p2align	4, , 16
.LBB11_421:                             #   in Loop: Header=BB11_406 Depth=1
	move	$a2, $s3
	bge	$a2, $s3, .LBB11_405
	b	.LBB11_406
.LBB11_422:                             # %vector.ph1114
	slli.d	$a4, $s2, 3
	bstrpick.d	$a3, $fp, 30, 2
	slli.d	$a3, $a3, 2
	sub.d	$a4, $a4, $a1
	add.d	$a4, $a4, $a2
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB11_423:                             # %vector.body1117
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB11_423
# %bb.424:                              # %middle.block1122
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
	ldptr.w	$a0, $a0, 6364
	ldptr.w	$a1, $a1, 6364
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
	ldptr.w	$a0, $a0, 6368
	ldptr.w	$a1, $a1, 6368
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
	ld.w	$a0, $a0, 24
	ld.w	$a1, $a1, 24
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
	ld.w	$a0, $a0, 28
	ld.w	$a1, $a1, 28
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
	ld.w	$a0, $a0, 36
	ld.w	$a1, $a1, 36
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
	ld.w	$a0, $a0, 36
	ld.w	$a1, $a1, 36
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
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(listX)
	addi.d	$s3, $a0, %pc_lo12(listX)
	ld.d	$s1, $s3, 16
	ori	$a2, $zero, 264
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s3, 24
	ori	$a2, $zero, 264
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s3, 32
	ori	$a2, $zero, 264
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s3, 40
	ori	$a2, $zero, 264
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(listXsize)
	addi.d	$a0, $a0, %pc_lo12(listXsize)
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB20_3
# %bb.1:                                # %.lr.ph
	ld.d	$a2, $s3, 0
	addi.d	$a3, $s2, 8
	addi.d	$a4, $s1, 8
	move	$a5, $a1
	.p2align	4, , 16
.LBB20_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a2, 0
	ldptr.d	$a6, $a6, 6536
	st.d	$a6, $a4, -8
	ld.d	$a6, $a2, 0
	ldptr.d	$a6, $a6, 6544
	st.d	$a6, $a4, 0
	ld.d	$a6, $a2, 0
	ldptr.d	$a6, $a6, 6544
	st.d	$a6, $a3, -8
	ld.d	$a6, $a2, 0
	ldptr.d	$a6, $a6, 6536
	st.d	$a6, $a3, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 16
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 16
	bnez	$a5, .LBB20_2
.LBB20_3:                               # %._crit_edge
	ld.w	$a2, $a0, 4
	slli.d	$a1, $a1, 1
	st.w	$a1, $a0, 16
	st.w	$a1, $a0, 8
	blez	$a2, .LBB20_6
# %bb.4:                                # %.lr.ph37
	ld.d	$a1, $s3, 8
	addi.d	$a3, $s0, 8
	addi.d	$a4, $fp, 8
	move	$a5, $a2
	.p2align	4, , 16
.LBB20_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a1, 0
	ldptr.d	$a6, $a6, 6536
	st.d	$a6, $a4, -8
	ld.d	$a6, $a1, 0
	ldptr.d	$a6, $a6, 6544
	st.d	$a6, $a4, 0
	ld.d	$a6, $a1, 0
	ldptr.d	$a6, $a6, 6544
	st.d	$a6, $a3, -8
	ld.d	$a6, $a1, 0
	ldptr.d	$a6, $a6, 6536
	st.d	$a6, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 16
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 16
	bnez	$a5, .LBB20_5
.LBB20_6:                               # %._crit_edge38
	slli.d	$a1, $a2, 1
	st.w	$a1, $a0, 20
	st.w	$a1, $a0, 12
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end20:
	.size	init_mbaff_lists, .Lfunc_end20-init_mbaff_lists
                                        # -- End function
	.globl	reorder_ref_pic_list            # -- Begin function reorder_ref_pic_list
	.p2align	5
	.type	reorder_ref_pic_list,@function
reorder_ref_pic_list:                   # @reorder_ref_pic_list
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
	ld.w	$a6, $a3, 0
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ori	$s0, $zero, 3
	addi.w	$t6, $a2, 1
	bne	$a6, $s0, .LBB21_2
.LBB21_1:                               # %._crit_edge
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.w	$t6, $a0, 0
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
.LBB21_2:                               # %.lr.ph
	move	$s5, $a3
	move	$s3, $a2
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(log2_max_frame_num_minus4)
	ld.w	$a0, $a0, %pc_lo12(log2_max_frame_num_minus4)
	addi.d	$a1, $a0, 4
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a0, 24
	lu12i.w	$a3, 3
	ori	$a3, $a3, 3044
	ldx.w	$a3, $a0, $a3
	move	$a0, $zero
	sltui	$a2, $a2, 1
	slli.d	$a4, $a3, 1
	addi.w	$a4, $a4, 1
	ori	$a5, $zero, 2
	sub.d	$a5, $a5, $a2
	maskeqz	$a3, $a3, $a2
	masknez	$a2, $a4, $a2
	or	$s6, $a3, $a2
	sll.w	$t4, $a5, $a1
	addi.d	$t7, $t6, -1
	alsl.d	$a1, $t6, $s4, 3
	addi.d	$a1, $a1, -16
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$t8, $zero, 1
	ori	$fp, $zero, 4
	ori	$s8, $zero, 1
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	b	.LBB21_5
	.p2align	4, , 16
.LBB21_3:                               # %reorder_short_term.exit.sink.split
                                        #   in Loop: Header=BB21_5 Depth=1
	slli.d	$a1, $s1, 3
	stx.d	$a6, $s4, $a1
.LBB21_4:                               # %reorder_short_term.exit
                                        #   in Loop: Header=BB21_5 Depth=1
	slli.d	$a1, $a0, 2
	ldx.w	$a6, $s5, $a1
	addi.w	$s8, $s8, 1
	beq	$a6, $s0, .LBB21_1
.LBB21_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_13 Depth 2
                                        #     Child Loop BB21_20 Depth 2
                                        #     Child Loop BB21_27 Depth 2
                                        #     Child Loop BB21_30 Depth 2
                                        #     Child Loop BB21_34 Depth 2
                                        #     Child Loop BB21_40 Depth 2
                                        #     Child Loop BB21_47 Depth 2
                                        #     Child Loop BB21_54 Depth 2
                                        #     Child Loop BB21_57 Depth 2
                                        #     Child Loop BB21_61 Depth 2
	move	$s1, $a0
	slli.d	$s2, $a0, 2
	blt	$a6, $fp, .LBB21_7
# %bb.6:                                #   in Loop: Header=BB21_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 500
	move	$fp, $t4
	move	$s0, $t6
	move	$s7, $t7
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ori	$t8, $zero, 1
	move	$t7, $s7
	move	$t6, $s0
	ori	$s0, $zero, 3
	move	$t4, $fp
	ori	$fp, $zero, 4
	ldx.w	$a6, $s5, $s2
.LBB21_7:                               #   in Loop: Header=BB21_5 Depth=1
	addi.d	$a1, $s8, -1
	slt	$a0, $s1, $t7
	masknez	$a2, $t7, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a2
	sub.d	$a3, $t6, $a0
	alsl.d	$a2, $s8, $s4, 3
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	addi.d	$a0, $s1, 1
	pcalau12i	$a5, %pc_hi20(dpb)
	addi.d	$t0, $a5, %pc_lo12(dpb)
	blt	$t8, $a6, .LBB21_10
# %bb.8:                                #   in Loop: Header=BB21_5 Depth=1
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ldx.w	$a5, $a5, $s2
	beqz	$a6, .LBB21_36
# %bb.9:                                #   in Loop: Header=BB21_5 Depth=1
	add.d	$a5, $s6, $a5
	addi.w	$a5, $a5, 1
	slt	$a6, $a5, $t4
	masknez	$a6, $t4, $a6
	sub.w	$s6, $a5, $a6
	b	.LBB21_37
	.p2align	4, , 16
.LBB21_10:                              #   in Loop: Header=BB21_5 Depth=1
	ld.wu	$a7, $t0, 36
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ldx.w	$a5, $a5, $s2
	beqz	$a7, .LBB21_23
# %bb.11:                               # %.lr.ph.i.i61
                                        #   in Loop: Header=BB21_5 Depth=1
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	ld.w	$a6, $a6, 24
	ld.d	$t0, $t0, 16
	bnez	$a6, .LBB21_13
	b	.LBB21_20
	.p2align	4, , 16
.LBB21_12:                              #   in Loop: Header=BB21_13 Depth=2
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 8
	beqz	$a7, .LBB21_23
.LBB21_13:                              # %.lr.ph.split.i.i63
                                        #   Parent Loop BB21_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $t0, 0
	ld.wu	$t2, $t1, 4
	andi	$a6, $t2, 1
	beqz	$a6, .LBB21_16
# %bb.14:                               #   in Loop: Header=BB21_13 Depth=2
	ld.d	$a6, $t1, 48
	ldptr.w	$t3, $a6, 6376
	beqz	$t3, .LBB21_16
# %bb.15:                               #   in Loop: Header=BB21_13 Depth=2
	ldptr.w	$t3, $a6, 6368
	beq	$t3, $a5, .LBB21_24
.LBB21_16:                              #   in Loop: Header=BB21_13 Depth=2
	andi	$a6, $t2, 2
	beqz	$a6, .LBB21_12
# %bb.17:                               #   in Loop: Header=BB21_13 Depth=2
	ld.d	$a6, $t1, 56
	ldptr.w	$t1, $a6, 6376
	beqz	$t1, .LBB21_12
# %bb.18:                               #   in Loop: Header=BB21_13 Depth=2
	ldptr.w	$t1, $a6, 6368
	bne	$t1, $a5, .LBB21_12
	b	.LBB21_24
	.p2align	4, , 16
.LBB21_19:                              #   in Loop: Header=BB21_20 Depth=2
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 8
	beqz	$a7, .LBB21_23
.LBB21_20:                              # %.lr.ph.split.us.i.i79
                                        #   Parent Loop BB21_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $t0, 0
	ld.w	$t1, $a6, 4
	bne	$t1, $s0, .LBB21_19
# %bb.21:                               #   in Loop: Header=BB21_20 Depth=2
	ld.d	$a6, $a6, 40
	ldptr.w	$t1, $a6, 6376
	beqz	$t1, .LBB21_19
# %bb.22:                               #   in Loop: Header=BB21_20 Depth=2
	ldptr.w	$t1, $a6, 6368
	bne	$t1, $a5, .LBB21_19
	b	.LBB21_24
	.p2align	4, , 16
.LBB21_23:                              #   in Loop: Header=BB21_5 Depth=1
	move	$a6, $zero
.LBB21_24:                              # %get_long_term_pic.exit.i
                                        #   in Loop: Header=BB21_5 Depth=1
	blt	$s3, $s1, .LBB21_3
# %bb.25:                               # %.lr.ph.i73.preheader
                                        #   in Loop: Header=BB21_5 Depth=1
	move	$a7, $t6
	bltu	$a3, $fp, .LBB21_29
# %bb.26:                               # %vector.ph130
                                        #   in Loop: Header=BB21_5 Depth=1
	move	$t0, $a3
	bstrins.d	$t0, $zero, 1, 0
	sub.d	$a7, $t6, $t0
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB21_27:                              # %vector.body133
                                        #   Parent Loop BB21_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t1, 0
	vld	$vr1, $t1, -16
	vst	$vr0, $t1, 8
	vst	$vr1, $t1, -8
	addi.d	$a4, $a4, -4
	addi.d	$t1, $t1, -32
	bnez	$a4, .LBB21_27
# %bb.28:                               # %middle.block143
                                        #   in Loop: Header=BB21_5 Depth=1
	beq	$a3, $t0, .LBB21_31
.LBB21_29:                              # %.lr.ph.i73.preheader150
                                        #   in Loop: Header=BB21_5 Depth=1
	alsl.d	$a3, $a7, $s4, 3
	.p2align	4, , 16
.LBB21_30:                              # %.lr.ph.i73
                                        #   Parent Loop BB21_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, -8
	addi.d	$t0, $a3, -8
	addi.d	$a7, $a7, -1
	st.d	$a4, $a3, 0
	move	$a3, $t0
	blt	$s1, $a7, .LBB21_30
.LBB21_31:                              # %.lr.ph37.preheader.i
                                        #   in Loop: Header=BB21_5 Depth=1
	slli.d	$a3, $s1, 3
	stx.d	$a6, $s4, $a3
	move	$a3, $a0
	b	.LBB21_34
	.p2align	4, , 16
.LBB21_32:                              #   in Loop: Header=BB21_34 Depth=2
	addi.w	$a6, $a3, 0
	addi.d	$a3, $a3, 1
	slli.d	$a6, $a6, 3
	stx.d	$a4, $s4, $a6
.LBB21_33:                              #   in Loop: Header=BB21_34 Depth=2
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	blt	$s3, $a1, .LBB21_4
.LBB21_34:                              # %.lr.ph37.i
                                        #   Parent Loop BB21_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a2, 0
	ldptr.w	$a6, $a4, 6376
	beqz	$a6, .LBB21_32
# %bb.35:                               #   in Loop: Header=BB21_34 Depth=2
	ldptr.w	$a6, $a4, 6368
	bne	$a6, $a5, .LBB21_32
	b	.LBB21_33
.LBB21_36:                              #   in Loop: Header=BB21_5 Depth=1
	nor	$a5, $a5, $zero
	add.w	$a5, $s6, $a5
	srli.d	$a6, $a5, 31
	and	$a6, $a6, $t4
	add.w	$s6, $a6, $a5
.LBB21_37:                              #   in Loop: Header=BB21_5 Depth=1
	ld.wu	$a7, $t0, 32
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	slt	$a5, $a5, $s6
	maskeqz	$a5, $t4, $a5
	sub.w	$a5, $s6, $a5
	beqz	$a7, .LBB21_50
# %bb.38:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB21_5 Depth=1
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	ld.w	$a6, $a6, 24
	ld.d	$t0, $t0, 8
	bnez	$a6, .LBB21_40
	b	.LBB21_47
	.p2align	4, , 16
.LBB21_39:                              #   in Loop: Header=BB21_40 Depth=2
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 8
	beqz	$a7, .LBB21_50
.LBB21_40:                              # %.lr.ph.split.i.i
                                        #   Parent Loop BB21_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $t0, 0
	ld.wu	$t2, $t1, 4
	andi	$a6, $t2, 1
	beqz	$a6, .LBB21_43
# %bb.41:                               #   in Loop: Header=BB21_40 Depth=2
	ld.d	$a6, $t1, 48
	ldptr.w	$t3, $a6, 6376
	bnez	$t3, .LBB21_43
# %bb.42:                               #   in Loop: Header=BB21_40 Depth=2
	ldptr.w	$t3, $a6, 6364
	beq	$t3, $a5, .LBB21_51
	.p2align	4, , 16
.LBB21_43:                              #   in Loop: Header=BB21_40 Depth=2
	andi	$a6, $t2, 2
	beqz	$a6, .LBB21_39
# %bb.44:                               #   in Loop: Header=BB21_40 Depth=2
	ld.d	$a6, $t1, 56
	ldptr.w	$t1, $a6, 6376
	bnez	$t1, .LBB21_39
# %bb.45:                               #   in Loop: Header=BB21_40 Depth=2
	ldptr.w	$t1, $a6, 6364
	bne	$t1, $a5, .LBB21_39
	b	.LBB21_51
	.p2align	4, , 16
.LBB21_46:                              #   in Loop: Header=BB21_47 Depth=2
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 8
	beqz	$a7, .LBB21_50
.LBB21_47:                              # %.lr.ph.split.us.i.i
                                        #   Parent Loop BB21_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $t0, 0
	ld.w	$t1, $a6, 4
	bne	$t1, $s0, .LBB21_46
# %bb.48:                               #   in Loop: Header=BB21_47 Depth=2
	ld.d	$a6, $a6, 40
	ldptr.w	$t1, $a6, 6376
	bnez	$t1, .LBB21_46
# %bb.49:                               #   in Loop: Header=BB21_47 Depth=2
	ldptr.w	$t1, $a6, 6364
	bne	$t1, $a5, .LBB21_46
	b	.LBB21_51
	.p2align	4, , 16
.LBB21_50:                              #   in Loop: Header=BB21_5 Depth=1
	move	$a6, $zero
.LBB21_51:                              # %get_short_term_pic.exit.i
                                        #   in Loop: Header=BB21_5 Depth=1
	blt	$s3, $s1, .LBB21_3
# %bb.52:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB21_5 Depth=1
	move	$a7, $t6
	bltu	$a3, $fp, .LBB21_56
# %bb.53:                               # %vector.ph
                                        #   in Loop: Header=BB21_5 Depth=1
	move	$t0, $a3
	bstrins.d	$t0, $zero, 1, 0
	sub.d	$a7, $t6, $t0
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB21_54:                              # %vector.body
                                        #   Parent Loop BB21_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t1, 0
	vld	$vr1, $t1, -16
	vst	$vr0, $t1, 8
	vst	$vr1, $t1, -8
	addi.d	$a4, $a4, -4
	addi.d	$t1, $t1, -32
	bnez	$a4, .LBB21_54
# %bb.55:                               # %middle.block
                                        #   in Loop: Header=BB21_5 Depth=1
	beq	$a3, $t0, .LBB21_58
.LBB21_56:                              # %.lr.ph.i.preheader146
                                        #   in Loop: Header=BB21_5 Depth=1
	alsl.d	$a3, $a7, $s4, 3
	.p2align	4, , 16
.LBB21_57:                              # %.lr.ph.i
                                        #   Parent Loop BB21_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, -8
	addi.d	$t0, $a3, -8
	addi.d	$a7, $a7, -1
	st.d	$a4, $a3, 0
	move	$a3, $t0
	blt	$s1, $a7, .LBB21_57
.LBB21_58:                              # %.lr.ph41.preheader.i
                                        #   in Loop: Header=BB21_5 Depth=1
	slli.d	$a3, $s1, 3
	stx.d	$a6, $s4, $a3
	addi.w	$a3, $s1, 1
	b	.LBB21_61
	.p2align	4, , 16
.LBB21_59:                              #   in Loop: Header=BB21_61 Depth=2
	slli.d	$a6, $a3, 3
	addi.w	$a3, $a3, 1
	stx.d	$a4, $s4, $a6
.LBB21_60:                              #   in Loop: Header=BB21_61 Depth=2
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	blt	$s3, $a1, .LBB21_4
.LBB21_61:                              # %.lr.ph41.i
                                        #   Parent Loop BB21_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a2, 0
	beqz	$a4, .LBB21_60
# %bb.62:                               #   in Loop: Header=BB21_61 Depth=2
	ldptr.w	$a6, $a4, 6376
	bnez	$a6, .LBB21_59
# %bb.63:                               #   in Loop: Header=BB21_61 Depth=2
	ldptr.w	$a6, $a4, 6364
	bne	$a6, $a5, .LBB21_59
	b	.LBB21_60
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
	ld.wu	$a2, $a0, 28
	beqz	$a2, .LBB22_15
# %bb.1:                                # %.lr.ph
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a0, 8
	move	$a1, $zero
	ori	$a5, $zero, 3
	b	.LBB22_4
	.p2align	4, , 16
.LBB22_2:                               #   in Loop: Header=BB22_4 Depth=1
	bstrpick.d	$a7, $a1, 31, 0
	addi.w	$a1, $a1, 1
	slli.d	$a7, $a7, 3
	stx.d	$a6, $a4, $a7
.LBB22_3:                               # %is_short_term_reference.exit
                                        #   in Loop: Header=BB22_4 Depth=1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	beqz	$a2, .LBB22_16
.LBB22_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, 0
	ld.w	$a7, $a6, 0
	bne	$a7, $a5, .LBB22_7
# %bb.5:                                #   in Loop: Header=BB22_4 Depth=1
	ld.d	$t0, $a6, 40
	ldptr.w	$t1, $t0, 6380
	beqz	$t1, .LBB22_8
# %bb.6:                                #   in Loop: Header=BB22_4 Depth=1
	ldptr.w	$t0, $t0, 6376
	bnez	$t0, .LBB22_8
	b	.LBB22_2
	.p2align	4, , 16
.LBB22_7:                               #   in Loop: Header=BB22_4 Depth=1
	andi	$t0, $a7, 1
	beqz	$t0, .LBB22_11
.LBB22_8:                               # %.thread.i
                                        #   in Loop: Header=BB22_4 Depth=1
	ld.d	$t0, $a6, 48
	beqz	$t0, .LBB22_11
# %bb.9:                                #   in Loop: Header=BB22_4 Depth=1
	ldptr.w	$t1, $t0, 6380
	beqz	$t1, .LBB22_11
# %bb.10:                               #   in Loop: Header=BB22_4 Depth=1
	ldptr.w	$t0, $t0, 6376
	beqz	$t0, .LBB22_2
	.p2align	4, , 16
.LBB22_11:                              #   in Loop: Header=BB22_4 Depth=1
	andi	$a7, $a7, 2
	beqz	$a7, .LBB22_3
# %bb.12:                               #   in Loop: Header=BB22_4 Depth=1
	ld.d	$a7, $a6, 56
	beqz	$a7, .LBB22_3
# %bb.13:                               #   in Loop: Header=BB22_4 Depth=1
	ldptr.w	$t0, $a7, 6380
	beqz	$t0, .LBB22_3
# %bb.14:                               #   in Loop: Header=BB22_4 Depth=1
	ldptr.w	$a7, $a7, 6376
	bnez	$a7, .LBB22_3
	b	.LBB22_2
.LBB22_15:
	move	$a1, $zero
.LBB22_16:                              # %._crit_edge
	ld.w	$a2, $a0, 24
	st.w	$a1, $a0, 32
	bgeu	$a1, $a2, .LBB22_18
# %bb.17:                               # %.lr.ph15
	ld.d	$a0, $a0, 8
	bstrpick.d	$a3, $a1, 31, 0
	alsl.d	$a0, $a3, $a0, 3
	sub.d	$a1, $a1, $a2
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
	ld.wu	$a2, $a0, 28
	beqz	$a2, .LBB23_15
# %bb.1:                                # %.lr.ph
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a0, 16
	move	$a1, $zero
	ori	$a5, $zero, 3
	b	.LBB23_4
	.p2align	4, , 16
.LBB23_2:                               #   in Loop: Header=BB23_4 Depth=1
	bstrpick.d	$a7, $a1, 31, 0
	addi.w	$a1, $a1, 1
	slli.d	$a7, $a7, 3
	stx.d	$a6, $a4, $a7
.LBB23_3:                               # %is_long_term_reference.exit
                                        #   in Loop: Header=BB23_4 Depth=1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	beqz	$a2, .LBB23_16
.LBB23_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, 0
	ld.w	$a7, $a6, 0
	bne	$a7, $a5, .LBB23_7
# %bb.5:                                #   in Loop: Header=BB23_4 Depth=1
	ld.d	$t0, $a6, 40
	ldptr.w	$t1, $t0, 6380
	beqz	$t1, .LBB23_8
# %bb.6:                                #   in Loop: Header=BB23_4 Depth=1
	ldptr.w	$t0, $t0, 6376
	bnez	$t0, .LBB23_2
	b	.LBB23_8
	.p2align	4, , 16
.LBB23_7:                               #   in Loop: Header=BB23_4 Depth=1
	andi	$t0, $a7, 1
	beqz	$t0, .LBB23_11
.LBB23_8:                               # %.thread.i
                                        #   in Loop: Header=BB23_4 Depth=1
	ld.d	$t0, $a6, 48
	beqz	$t0, .LBB23_11
# %bb.9:                                #   in Loop: Header=BB23_4 Depth=1
	ldptr.w	$t1, $t0, 6380
	beqz	$t1, .LBB23_11
# %bb.10:                               #   in Loop: Header=BB23_4 Depth=1
	ldptr.w	$t0, $t0, 6376
	bnez	$t0, .LBB23_2
	.p2align	4, , 16
.LBB23_11:                              #   in Loop: Header=BB23_4 Depth=1
	andi	$a7, $a7, 2
	beqz	$a7, .LBB23_3
# %bb.12:                               #   in Loop: Header=BB23_4 Depth=1
	ld.d	$a7, $a6, 56
	beqz	$a7, .LBB23_3
# %bb.13:                               #   in Loop: Header=BB23_4 Depth=1
	ldptr.w	$t0, $a7, 6380
	beqz	$t0, .LBB23_3
# %bb.14:                               #   in Loop: Header=BB23_4 Depth=1
	ldptr.w	$a7, $a7, 6376
	bnez	$a7, .LBB23_2
	b	.LBB23_3
.LBB23_15:
	move	$a1, $zero
.LBB23_16:                              # %._crit_edge
	ld.w	$a2, $a0, 24
	st.w	$a1, $a0, 36
	bgeu	$a1, $a2, .LBB23_18
# %bb.17:                               # %.lr.ph15
	ld.d	$a0, $a0, 16
	bstrpick.d	$a3, $a1, 31, 0
	alsl.d	$a0, $a3, $a0, 3
	sub.d	$a1, $a1, $a2
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
	b	.LBB24_5
	.p2align	4, , 16
.LBB24_2:                               #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a5, $a4, 40
	stptr.d	$zero, $a5, 6376
.LBB24_3:                               # %unmark_for_long_term_reference.exit
                                        #   in Loop: Header=BB24_5 Depth=1
	st.d	$zero, $a4, 4
.LBB24_4:                               #   in Loop: Header=BB24_5 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB24_16
.LBB24_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.w	$a5, $a4, 28
	blt	$a5, $a0, .LBB24_4
# %bb.6:                                #   in Loop: Header=BB24_5 Depth=1
	ld.wu	$a5, $a4, 0
	andi	$a6, $a5, 1
	beqz	$a6, .LBB24_9
# %bb.7:                                #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a6, $a4, 48
	beqz	$a6, .LBB24_9
# %bb.8:                                #   in Loop: Header=BB24_5 Depth=1
	stptr.d	$zero, $a6, 6376
.LBB24_9:                               #   in Loop: Header=BB24_5 Depth=1
	andi	$a6, $a5, 2
	beqz	$a6, .LBB24_12
# %bb.10:                               #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a6, $a4, 56
	beqz	$a6, .LBB24_12
# %bb.11:                               #   in Loop: Header=BB24_5 Depth=1
	stptr.d	$zero, $a6, 6376
.LBB24_12:                              #   in Loop: Header=BB24_5 Depth=1
	bne	$a5, $a3, .LBB24_3
# %bb.13:                               #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a5, $a4, 48
	beqz	$a5, .LBB24_2
# %bb.14:                               #   in Loop: Header=BB24_5 Depth=1
	ld.d	$a6, $a4, 56
	beqz	$a6, .LBB24_2
# %bb.15:                               #   in Loop: Header=BB24_5 Depth=1
	stptr.d	$zero, $a5, 6376
	stptr.d	$zero, $a6, 6376
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
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s5, $a0, %got_pc_lo12(img)
	ld.d	$a1, $s5, 0
	ldptr.w	$a0, $a1, 15360
	sltu	$a2, $zero, $a0
	ldptr.d	$a3, $a1, 14208
	ld.w	$a4, $a1, 24
	stptr.w	$a2, $fp, 6380
	stptr.w	$zero, $a1, 15428
	ld.w	$a2, $a3, 4
	addi.d	$a3, $a4, -2
	sltui	$a3, $a3, 1
	stptr.w	$a3, $a1, 15424
	pcalau12i	$a3, %pc_hi20(dpb)
	addi.d	$s6, $a3, %pc_lo12(dpb)
	beqz	$a2, .LBB25_20
# %bb.1:
	ldptr.w	$a0, $a1, 15368
	beqz	$a0, .LBB25_201
# %bb.2:                                # %.preheader14.i
	ld.w	$a0, $s6, 28
	beqz	$a0, .LBB25_15
# %bb.3:                                # %.lr.ph.preheader.i
	ld.d	$a0, $s6, 0
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$s0, $a1, %pc_lo12(.L.str.7)
	move	$s2, $zero
	move	$s3, $zero
	b	.LBB25_5
	.p2align	4, , 16
.LBB25_4:                               # %alloc_frame_store.exit.i
                                        #   in Loop: Header=BB25_5 Depth=1
	ld.d	$a0, $s6, 0
	ld.wu	$a1, $s6, 28
	stx.d	$s1, $a0, $s2
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bgeu	$s3, $a1, .LBB25_15
.LBB25_5:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$s1, $a0, $s2
	beqz	$s1, .LBB25_13
# %bb.6:                                #   in Loop: Header=BB25_5 Depth=1
	ld.d	$a0, $s1, 40
	beqz	$a0, .LBB25_8
# %bb.7:                                #   in Loop: Header=BB25_5 Depth=1
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, 40
.LBB25_8:                               #   in Loop: Header=BB25_5 Depth=1
	ld.d	$a0, $s1, 48
	beqz	$a0, .LBB25_10
# %bb.9:                                #   in Loop: Header=BB25_5 Depth=1
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, 48
.LBB25_10:                              #   in Loop: Header=BB25_5 Depth=1
	ld.d	$a0, $s1, 56
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
	ori	$a1, $zero, 64
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB25_4
# %bb.14:                               #   in Loop: Header=BB25_5 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	b	.LBB25_4
.LBB25_15:                              # %.preheader13.i
	ld.wu	$a1, $s6, 32
	beqz	$a1, .LBB25_17
# %bb.16:                               # %.lr.ph17.i
	ld.d	$a0, $s6, 8
	slli.d	$a2, $a1, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB25_17:                              # %.preheader.i
	ld.wu	$a1, $s6, 36
	beqz	$a1, .LBB25_19
# %bb.18:                               # %.lr.ph19.i
	ld.d	$a0, $s6, 16
	slli.d	$a2, $a1, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB25_19:                              # %._crit_edge.i
	st.w	$zero, $s6, 28
	b	.LBB25_202
.LBB25_20:
	beqz	$a0, .LBB25_206
# %bb.21:
	ldptr.w	$a0, $a1, 15364
	beqz	$a0, .LBB25_206
# %bb.22:
	ldptr.d	$s0, $a1, 15376
	beqz	$s0, .LBB25_206
# %bb.23:                               # %.lr.ph.i38
	ori	$s7, $zero, 6
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI25_0)
	addi.d	$s8, $a0, %pc_lo12(.LJTI25_0)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2264
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s1, $zero, 3
	b	.LBB25_26
	.p2align	4, , 16
.LBB25_24:                              # %mm_unmark_long_term_for_reference.exit.i
                                        #   in Loop: Header=BB25_26 Depth=1
	pcaddu18i	$ra, %call36(update_ltref_list)
	jirl	$ra, $ra, 0
.LBB25_25:                              # %check_num_ref.exit.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a0, $s0, 24
	ld.d	$a1, $s5, 0
	stptr.d	$a0, $a1, 15376
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	ldptr.d	$s0, $a1, 15376
	beqz	$s0, .LBB25_267
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
	bltu	$s7, $a0, .LBB25_65
# %bb.27:                               #   in Loop: Header=BB25_26 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s8, $a0
	add.d	$a0, $s8, $a0
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
	ld.wu	$a1, $s6, 36
	addi.d	$a2, $a0, -1
	st.w	$a2, $s6, 44
	beqz	$a1, .LBB25_24
# %bb.31:                               # %.lr.ph.i49.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a2, $s6, 16
	b	.LBB25_35
	.p2align	4, , 16
.LBB25_32:                              #   in Loop: Header=BB25_35 Depth=2
	ld.d	$a4, $a3, 40
	stptr.d	$zero, $a4, 6376
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
	ld.w	$a4, $a3, 28
	blt	$a4, $a0, .LBB25_34
# %bb.36:                               #   in Loop: Header=BB25_35 Depth=2
	ld.wu	$a4, $a3, 0
	andi	$a5, $a4, 1
	beqz	$a5, .LBB25_39
# %bb.37:                               #   in Loop: Header=BB25_35 Depth=2
	ld.d	$a5, $a3, 48
	beqz	$a5, .LBB25_39
# %bb.38:                               #   in Loop: Header=BB25_35 Depth=2
	stptr.d	$zero, $a5, 6376
.LBB25_39:                              #   in Loop: Header=BB25_35 Depth=2
	andi	$a5, $a4, 2
	beqz	$a5, .LBB25_42
# %bb.40:                               #   in Loop: Header=BB25_35 Depth=2
	ld.d	$a5, $a3, 56
	beqz	$a5, .LBB25_42
# %bb.41:                               #   in Loop: Header=BB25_35 Depth=2
	stptr.d	$zero, $a5, 6376
.LBB25_42:                              #   in Loop: Header=BB25_35 Depth=2
	bne	$a4, $s1, .LBB25_33
# %bb.43:                               #   in Loop: Header=BB25_35 Depth=2
	ld.d	$a4, $a3, 48
	beqz	$a4, .LBB25_32
# %bb.44:                               #   in Loop: Header=BB25_35 Depth=2
	ld.d	$a5, $a3, 56
	beqz	$a5, .LBB25_32
# %bb.45:                               #   in Loop: Header=BB25_35 Depth=2
	stptr.d	$zero, $a4, 6376
	stptr.d	$zero, $a5, 6376
	b	.LBB25_32
.LBB25_46:                              #   in Loop: Header=BB25_26 Depth=1
	ld.wu	$a0, $s6, 36
	beqz	$a0, .LBB25_24
# %bb.47:                               # %.lr.ph.i35.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a1, $s0, 8
	ld.w	$a3, $fp, 0
	ld.d	$a2, $s6, 16
	bnez	$a3, .LBB25_49
	b	.LBB25_109
	.p2align	4, , 16
.LBB25_48:                              #   in Loop: Header=BB25_49 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	beqz	$a0, .LBB25_24
.LBB25_49:                              # %.lr.ph.split.i36.i
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
	ld.d	$a7, $a3, 48
	ldptr.w	$t0, $a7, 6368
	beq	$t0, $a1, .LBB25_186
.LBB25_52:                              #   in Loop: Header=BB25_49 Depth=2
	beqz	$a5, .LBB25_48
# %bb.53:                               #   in Loop: Header=BB25_49 Depth=2
	ld.wu	$a5, $a3, 8
	andi	$a6, $a5, 2
	beqz	$a6, .LBB25_48
# %bb.54:                               #   in Loop: Header=BB25_49 Depth=2
	ld.d	$a6, $a3, 56
	ldptr.w	$a7, $a6, 6368
	bne	$a7, $a1, .LBB25_48
# %bb.55:                               #   in Loop: Header=BB25_26 Depth=1
	stptr.d	$zero, $a6, 6376
	ld.w	$a0, $a3, 0
	st.w	$a4, $a3, 4
	andi	$a1, $a5, 1
	b	.LBB25_187
.LBB25_56:                              #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.w	$a1, $fp, $a1
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
	ld.wu	$a0, $s6, 32
	beqz	$a0, .LBB25_122
# %bb.58:                               # %.lr.ph.i44.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a1, $s6, 8
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
	ld.d	$a4, $a2, 48
	ldptr.w	$a4, $a4, 6364
	beq	$a4, $s4, .LBB25_156
.LBB25_62:                              #   in Loop: Header=BB25_60 Depth=2
	andi	$a3, $a3, 2
	beqz	$a3, .LBB25_59
# %bb.63:                               #   in Loop: Header=BB25_60 Depth=2
	ld.d	$a2, $a2, 56
	ldptr.w	$a2, $a2, 6364
	bne	$a2, $s4, .LBB25_59
# %bb.64:                               #   in Loop: Header=BB25_26 Depth=1
	ori	$a0, $zero, 2
	b	.LBB25_157
.LBB25_65:                              #   in Loop: Header=BB25_26 Depth=1
	ori	$a1, $zero, 500
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	b	.LBB25_105
.LBB25_66:                              #   in Loop: Header=BB25_26 Depth=1
	ld.wu	$a1, $s6, 32
	beqz	$a1, .LBB25_191
# %bb.67:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a0, $fp, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ldx.w	$a2, $fp, $a2
	ld.w	$a3, $s0, 4
	sltui	$a4, $a0, 1
	slli.d	$a5, $a2, 1
	addi.d	$a5, $a5, 1
	maskeqz	$a6, $a2, $a4
	masknez	$a4, $a5, $a4
	ld.d	$a2, $s6, 8
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
	ld.d	$a6, $a0, 48
	ldptr.w	$a7, $a6, 6364
	beq	$a7, $a3, .LBB25_189
.LBB25_72:                              #   in Loop: Header=BB25_69 Depth=2
	beqz	$a5, .LBB25_68
# %bb.73:                               #   in Loop: Header=BB25_69 Depth=2
	ld.bu	$a5, $a0, 8
	andi	$a5, $a5, 2
	bnez	$a5, .LBB25_68
# %bb.74:                               #   in Loop: Header=BB25_69 Depth=2
	ld.d	$a5, $a0, 56
	ldptr.w	$a6, $a5, 6364
	bne	$a6, $a3, .LBB25_68
# %bb.75:                               #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a1, $a0, 0
	stptr.w	$zero, $a5, 6380
	st.w	$a4, $a0, 4
	beq	$a1, $s1, .LBB25_190
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
	bne	$a4, $s1, .LBB25_76
# %bb.78:                               #   in Loop: Header=BB25_77 Depth=2
	ld.w	$a4, $a0, 8
	bnez	$a4, .LBB25_76
# %bb.79:                               #   in Loop: Header=BB25_77 Depth=2
	ld.d	$a4, $a0, 40
	ldptr.w	$a4, $a4, 6364
	bne	$a4, $a3, .LBB25_76
# %bb.80:                               # %.split.us.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	pcaddu18i	$ra, %call36(unmark_for_reference)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(update_ref_list)
	jirl	$ra, $ra, 0
	b	.LBB25_25
.LBB25_81:                              #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a0, $s6, 32
	beqz	$a0, .LBB25_84
# %bb.82:                               # %.lr.ph.i57.i.preheader
                                        #   in Loop: Header=BB25_26 Depth=1
	move	$s2, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB25_83:                              # %.lr.ph.i57.i
                                        #   Parent Loop BB25_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, 8
	ldx.d	$a0, $a0, $s2
	pcaddu18i	$ra, %call36(unmark_for_reference)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s6, 32
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bltu	$s3, $a0, .LBB25_83
.LBB25_84:                              # %mm_unmark_all_short_term_for_reference.exit.i
                                        #   in Loop: Header=BB25_26 Depth=1
	pcaddu18i	$ra, %call36(update_ref_list)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s6, 36
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $s6, 44
	beqz	$a0, .LBB25_100
# %bb.85:                               # %.lr.ph.i.i60.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a1, $s6, 16
	b	.LBB25_89
	.p2align	4, , 16
.LBB25_86:                              #   in Loop: Header=BB25_89 Depth=2
	ld.d	$a3, $a2, 40
	stptr.d	$zero, $a3, 6376
.LBB25_87:                              # %unmark_for_long_term_reference.exit.i.i68.i
                                        #   in Loop: Header=BB25_89 Depth=2
	st.d	$zero, $a2, 4
.LBB25_88:                              #   in Loop: Header=BB25_89 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	beqz	$a0, .LBB25_100
.LBB25_89:                              #   Parent Loop BB25_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	ld.w	$a3, $a2, 28
	bltz	$a3, .LBB25_88
# %bb.90:                               #   in Loop: Header=BB25_89 Depth=2
	ld.wu	$a3, $a2, 0
	andi	$a4, $a3, 1
	beqz	$a4, .LBB25_93
# %bb.91:                               #   in Loop: Header=BB25_89 Depth=2
	ld.d	$a4, $a2, 48
	beqz	$a4, .LBB25_93
# %bb.92:                               #   in Loop: Header=BB25_89 Depth=2
	stptr.d	$zero, $a4, 6376
.LBB25_93:                              #   in Loop: Header=BB25_89 Depth=2
	andi	$a4, $a3, 2
	beqz	$a4, .LBB25_96
# %bb.94:                               #   in Loop: Header=BB25_89 Depth=2
	ld.d	$a4, $a2, 56
	beqz	$a4, .LBB25_96
# %bb.95:                               #   in Loop: Header=BB25_89 Depth=2
	stptr.d	$zero, $a4, 6376
.LBB25_96:                              #   in Loop: Header=BB25_89 Depth=2
	bne	$a3, $s1, .LBB25_87
# %bb.97:                               #   in Loop: Header=BB25_89 Depth=2
	ld.d	$a3, $a2, 48
	beqz	$a3, .LBB25_86
# %bb.98:                               #   in Loop: Header=BB25_89 Depth=2
	ld.d	$a4, $a2, 56
	beqz	$a4, .LBB25_86
# %bb.99:                               #   in Loop: Header=BB25_89 Depth=2
	stptr.d	$zero, $a3, 6376
	stptr.d	$zero, $a4, 6376
	b	.LBB25_86
.LBB25_100:                             # %mm_unmark_all_long_term_for_reference.exit.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a0, $s5, 0
	ori	$a1, $zero, 1
	stptr.w	$a1, $a0, 15428
	b	.LBB25_25
.LBB25_101:                             #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a0, $fp, 0
	ld.w	$s3, $s0, 12
	beqz	$a0, .LBB25_139
# %bb.102:                              #   in Loop: Header=BB25_26 Depth=1
	ldptr.w	$a3, $fp, 6364
	ori	$a2, $zero, 1
	move	$a1, $s3
	move	$a4, $zero
	pcaddu18i	$ra, %call36(unmark_long_term_field_for_reference_by_frame_idx)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 36
	ld.d	$a1, $s5, 0
.LBB25_103:                             # %mm_mark_current_picture_long_term.exit.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a2, $s6, 32
	ld.w	$a1, $a1, 28
	ori	$a3, $zero, 1
	stptr.w	$a3, $fp, 6376
	add.w	$a0, $a2, $a0
	slt	$a2, $a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	stptr.w	$s3, $fp, 6372
	bge	$a1, $a0, .LBB25_25
# %bb.104:                              #   in Loop: Header=BB25_26 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 500
.LBB25_105:                             # %check_num_ref.exit.i
                                        #   in Loop: Header=BB25_26 Depth=1
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	b	.LBB25_25
.LBB25_106:                             #   in Loop: Header=BB25_109 Depth=2
	stptr.d	$zero, $a4, 6376
.LBB25_107:                             # %unmark_for_long_term_reference.exit.us.i.i
                                        #   in Loop: Header=BB25_109 Depth=2
	st.d	$zero, $a3, 4
	.p2align	4, , 16
.LBB25_108:                             #   in Loop: Header=BB25_109 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	beqz	$a0, .LBB25_24
.LBB25_109:                             # %.lr.ph.split.us.i41.i
                                        #   Parent Loop BB25_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	ld.w	$a4, $a3, 4
	bne	$a4, $s1, .LBB25_108
# %bb.110:                              #   in Loop: Header=BB25_109 Depth=2
	ld.w	$a4, $a3, 8
	bne	$a4, $s1, .LBB25_108
# %bb.111:                              #   in Loop: Header=BB25_109 Depth=2
	ld.d	$a4, $a3, 40
	ldptr.w	$a5, $a4, 6368
	bne	$a5, $a1, .LBB25_108
# %bb.112:                              #   in Loop: Header=BB25_109 Depth=2
	ld.wu	$a5, $a3, 0
	andi	$a6, $a5, 1
	beqz	$a6, .LBB25_115
# %bb.113:                              #   in Loop: Header=BB25_109 Depth=2
	ld.d	$a6, $a3, 48
	beqz	$a6, .LBB25_115
# %bb.114:                              #   in Loop: Header=BB25_109 Depth=2
	stptr.d	$zero, $a6, 6376
.LBB25_115:                             #   in Loop: Header=BB25_109 Depth=2
	andi	$a6, $a5, 2
	beqz	$a6, .LBB25_118
# %bb.116:                              #   in Loop: Header=BB25_109 Depth=2
	ld.d	$a6, $a3, 56
	beqz	$a6, .LBB25_118
# %bb.117:                              #   in Loop: Header=BB25_109 Depth=2
	stptr.d	$zero, $a6, 6376
.LBB25_118:                             #   in Loop: Header=BB25_109 Depth=2
	bne	$a5, $s1, .LBB25_107
# %bb.119:                              #   in Loop: Header=BB25_109 Depth=2
	ld.d	$a5, $a3, 48
	beqz	$a5, .LBB25_106
# %bb.120:                              #   in Loop: Header=BB25_109 Depth=2
	ld.d	$a6, $a3, 56
	beqz	$a6, .LBB25_106
# %bb.121:                              #   in Loop: Header=BB25_109 Depth=2
	stptr.d	$zero, $a5, 6376
	stptr.d	$zero, $a6, 6376
	b	.LBB25_106
.LBB25_122:                             # %.critedge.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	ori	$a1, $zero, 200
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	b	.LBB25_158
.LBB25_123:                             #   in Loop: Header=BB25_26 Depth=1
	ld.wu	$a0, $s6, 36
	beqz	$a0, .LBB25_158
# %bb.124:                              # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a1, $s6, 16
	b	.LBB25_128
	.p2align	4, , 16
.LBB25_125:                             #   in Loop: Header=BB25_128 Depth=2
	ld.d	$a3, $a2, 40
	stptr.d	$zero, $a3, 6376
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
	ld.w	$a3, $a2, 28
	bne	$a3, $s3, .LBB25_127
# %bb.129:                              #   in Loop: Header=BB25_128 Depth=2
	ld.wu	$a3, $a2, 0
	andi	$a4, $a3, 1
	beqz	$a4, .LBB25_132
# %bb.130:                              #   in Loop: Header=BB25_128 Depth=2
	ld.d	$a4, $a2, 48
	beqz	$a4, .LBB25_132
# %bb.131:                              #   in Loop: Header=BB25_128 Depth=2
	stptr.d	$zero, $a4, 6376
.LBB25_132:                             #   in Loop: Header=BB25_128 Depth=2
	andi	$a4, $a3, 2
	beqz	$a4, .LBB25_135
# %bb.133:                              #   in Loop: Header=BB25_128 Depth=2
	ld.d	$a4, $a2, 56
	beqz	$a4, .LBB25_135
# %bb.134:                              #   in Loop: Header=BB25_128 Depth=2
	stptr.d	$zero, $a4, 6376
.LBB25_135:                             #   in Loop: Header=BB25_128 Depth=2
	bne	$a3, $s1, .LBB25_126
# %bb.136:                              #   in Loop: Header=BB25_128 Depth=2
	ld.d	$a3, $a2, 48
	beqz	$a3, .LBB25_125
# %bb.137:                              #   in Loop: Header=BB25_128 Depth=2
	ld.d	$a4, $a2, 56
	beqz	$a4, .LBB25_125
# %bb.138:                              #   in Loop: Header=BB25_128 Depth=2
	stptr.d	$zero, $a3, 6376
	stptr.d	$zero, $a4, 6376
	b	.LBB25_125
.LBB25_139:                             #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a0, $s6, 36
	beqz	$a0, .LBB25_155
# %bb.140:                              # %.lr.ph.i.i75.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a2, $s6, 16
	bstrpick.d	$a3, $a0, 31, 0
	b	.LBB25_144
	.p2align	4, , 16
.LBB25_141:                             #   in Loop: Header=BB25_144 Depth=2
	ld.d	$a5, $a4, 40
	stptr.d	$zero, $a5, 6376
.LBB25_142:                             # %unmark_for_long_term_reference.exit.i.i84.i
                                        #   in Loop: Header=BB25_144 Depth=2
	st.d	$zero, $a4, 4
.LBB25_143:                             #   in Loop: Header=BB25_144 Depth=2
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	beqz	$a3, .LBB25_103
.LBB25_144:                             #   Parent Loop BB25_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a2, 0
	ld.w	$a5, $a4, 28
	bne	$a5, $s3, .LBB25_143
# %bb.145:                              #   in Loop: Header=BB25_144 Depth=2
	ld.wu	$a5, $a4, 0
	andi	$a6, $a5, 1
	beqz	$a6, .LBB25_148
# %bb.146:                              #   in Loop: Header=BB25_144 Depth=2
	ld.d	$a6, $a4, 48
	beqz	$a6, .LBB25_148
# %bb.147:                              #   in Loop: Header=BB25_144 Depth=2
	stptr.d	$zero, $a6, 6376
.LBB25_148:                             #   in Loop: Header=BB25_144 Depth=2
	andi	$a6, $a5, 2
	beqz	$a6, .LBB25_151
# %bb.149:                              #   in Loop: Header=BB25_144 Depth=2
	ld.d	$a6, $a4, 56
	beqz	$a6, .LBB25_151
# %bb.150:                              #   in Loop: Header=BB25_144 Depth=2
	stptr.d	$zero, $a6, 6376
.LBB25_151:                             #   in Loop: Header=BB25_144 Depth=2
	bne	$a5, $s1, .LBB25_142
# %bb.152:                              #   in Loop: Header=BB25_144 Depth=2
	ld.d	$a5, $a4, 48
	beqz	$a5, .LBB25_141
# %bb.153:                              #   in Loop: Header=BB25_144 Depth=2
	ld.d	$a6, $a4, 56
	beqz	$a6, .LBB25_141
# %bb.154:                              #   in Loop: Header=BB25_144 Depth=2
	stptr.d	$zero, $a5, 6376
	stptr.d	$zero, $a6, 6376
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
	ld.w	$s2, $fp, 0
	ori	$a0, $zero, 1
	beq	$s2, $a0, .LBB25_171
# %bb.159:                              # %unmark_long_term_frame_for_reference_by_frame_idx.exit.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	bnez	$s2, .LBB25_170
# %bb.160:                              # %.preheader.i.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.wu	$a1, $s6, 32
	beqz	$a1, .LBB25_184
# %bb.161:                              # %.lr.ph.i27.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a2, $s6, 8
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
	bne	$a3, $s1, .LBB25_162
# %bb.164:                              #   in Loop: Header=BB25_163 Depth=2
	ld.d	$a3, $a0, 40
	ldptr.w	$a4, $a3, 6376
	bnez	$a4, .LBB25_162
# %bb.165:                              #   in Loop: Header=BB25_163 Depth=2
	ldptr.w	$a4, $a3, 6364
	bne	$a4, $s4, .LBB25_162
# %bb.166:                              #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a1, $a0, 48
	stptr.w	$s3, $a3, 6372
	st.w	$s3, $a0, 28
	stptr.w	$s3, $a3, 6368
	ori	$a2, $zero, 1
	stptr.w	$a2, $a3, 6376
	beqz	$a1, .LBB25_169
# %bb.167:                              #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a2, $a0, 56
	beqz	$a2, .LBB25_169
# %bb.168:                              #   in Loop: Header=BB25_26 Depth=1
	stptr.w	$s3, $a2, 6372
	stptr.w	$s3, $a1, 6372
	stptr.w	$s3, $a1, 6368
	stptr.w	$s3, $a2, 6368
	ori	$a3, $zero, 1
	stptr.w	$a3, $a2, 6376
	stptr.w	$a3, $a1, 6376
.LBB25_169:                             #   in Loop: Header=BB25_26 Depth=1
	st.w	$s1, $a0, 8
	b	.LBB25_185
.LBB25_170:                             #   in Loop: Header=BB25_26 Depth=1
	move	$s2, $zero
.LBB25_171:                             #   in Loop: Header=BB25_26 Depth=1
	ld.wu	$a0, $s6, 32
	beqz	$a0, .LBB25_183
# %bb.172:                              # %.lr.ph11.i.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a1, $s6, 8
	move	$s7, $zero
	slli.d	$a3, $a0, 3
	b	.LBB25_174
	.p2align	4, , 16
.LBB25_173:                             #   in Loop: Header=BB25_174 Depth=2
	addi.d	$s7, $s7, 8
	beq	$a3, $s7, .LBB25_183
.LBB25_174:                             #   Parent Loop BB25_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a0, $a1, $s7
	ld.wu	$a4, $a0, 4
	andi	$a2, $a4, 1
	beqz	$a2, .LBB25_177
# %bb.175:                              #   in Loop: Header=BB25_174 Depth=2
	ld.d	$a2, $a0, 48
	ldptr.w	$a5, $a2, 6376
	bnez	$a5, .LBB25_177
# %bb.176:                              #   in Loop: Header=BB25_174 Depth=2
	ldptr.w	$a5, $a2, 6364
	beq	$a5, $s4, .LBB25_192
	.p2align	4, , 16
.LBB25_177:                             #   in Loop: Header=BB25_174 Depth=2
	andi	$a2, $a4, 2
	beqz	$a2, .LBB25_173
# %bb.178:                              #   in Loop: Header=BB25_174 Depth=2
	ld.d	$a2, $a0, 56
	ldptr.w	$a4, $a2, 6376
	bnez	$a4, .LBB25_173
# %bb.179:                              #   in Loop: Header=BB25_174 Depth=2
	ldptr.w	$a4, $a2, 6364
	bne	$a4, $s4, .LBB25_173
# %bb.180:                              #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a1, $a0, 8
	beqz	$a1, .LBB25_197
# %bb.181:                              #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a3, $a0, 28
	beq	$a3, $s3, .LBB25_198
# %bb.182:                              #   in Loop: Header=BB25_26 Depth=1
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 8
	ldx.d	$a0, $a0, $s7
	ld.d	$a2, $a0, 56
	ld.w	$a1, $a0, 8
	b	.LBB25_198
.LBB25_183:                             # %._crit_edge12.i.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 6
	b	.LBB25_185
.LBB25_184:                             # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB25_185:                             # %mm_assign_long_term_frame_idx.exit.i
                                        #   in Loop: Header=BB25_26 Depth=1
	pcaddu18i	$ra, %call36(update_ref_list)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(update_ltref_list)
	jirl	$ra, $ra, 0
	b	.LBB25_25
.LBB25_186:                             #   in Loop: Header=BB25_26 Depth=1
	stptr.d	$zero, $a7, 6376
	ld.w	$a0, $a3, 0
	st.w	$a5, $a3, 4
	andi	$a1, $a6, 2
.LBB25_187:                             #   in Loop: Header=BB25_26 Depth=1
	st.w	$a1, $a3, 8
	bne	$a0, $s1, .LBB25_24
# %bb.188:                              # %.loopexit.sink.split.i.i
                                        #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a0, $a3, 40
	stptr.d	$zero, $a0, 6376
	b	.LBB25_24
.LBB25_189:                             #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a1, $a0, 0
	stptr.w	$zero, $a6, 6380
	st.w	$a5, $a0, 4
	bne	$a1, $s1, .LBB25_191
.LBB25_190:                             #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a0, $a0, 40
	stptr.w	$zero, $a0, 6380
.LBB25_191:                             # %mm_unmark_short_term_for_reference.exit.i
                                        #   in Loop: Header=BB25_26 Depth=1
	pcaddu18i	$ra, %call36(update_ref_list)
	jirl	$ra, $ra, 0
	b	.LBB25_25
.LBB25_192:                             #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a1, $a0, 8
	beqz	$a1, .LBB25_195
# %bb.193:                              #   in Loop: Header=BB25_26 Depth=1
	ld.w	$a3, $a0, 28
	beq	$a3, $s3, .LBB25_196
# %bb.194:                              #   in Loop: Header=BB25_26 Depth=1
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 8
	ldx.d	$a0, $a0, $s7
	ld.d	$a2, $a0, 48
	ld.w	$a1, $a0, 8
	b	.LBB25_196
.LBB25_195:                             #   in Loop: Header=BB25_26 Depth=1
	move	$a1, $zero
.LBB25_196:                             #   in Loop: Header=BB25_26 Depth=1
	stptr.w	$s3, $a2, 6372
	st.w	$s3, $a0, 28
	slli.d	$a3, $s3, 1
	or	$a3, $s2, $a3
	stptr.w	$a3, $a2, 6368
	ori	$a3, $zero, 1
	stptr.w	$a3, $a2, 6376
	ori	$a1, $a1, 1
	b	.LBB25_199
.LBB25_197:                             #   in Loop: Header=BB25_26 Depth=1
	move	$a1, $zero
.LBB25_198:                             #   in Loop: Header=BB25_26 Depth=1
	stptr.w	$s3, $a2, 6372
	st.w	$s3, $a0, 28
	slli.d	$a3, $s3, 1
	or	$a3, $s2, $a3
	stptr.w	$a3, $a2, 6368
	ori	$a3, $zero, 1
	stptr.w	$a3, $a2, 6376
	ori	$a1, $a1, 2
.LBB25_199:                             #   in Loop: Header=BB25_26 Depth=1
	st.w	$a1, $a0, 8
	ori	$s7, $zero, 6
	bne	$a1, $s1, .LBB25_185
# %bb.200:                              #   in Loop: Header=BB25_26 Depth=1
	ld.d	$a0, $a0, 40
	ori	$a1, $zero, 1
	stptr.w	$a1, $a0, 6376
	stptr.w	$s3, $a0, 6368
	stptr.w	$s3, $a0, 6372
	b	.LBB25_185
.LBB25_201:
	pcaddu18i	$ra, %call36(flush_dpb)
	jirl	$ra, $ra, 0
.LBB25_202:
	st.d	$zero, $s6, 56
	pcaddu18i	$ra, %call36(update_ref_list)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(update_ltref_list)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ldptr.w	$a0, $a0, 15372
	lu12i.w	$a1, -524288
	lu32i.d	$a1, 0
	st.w	$a1, $s6, 40
	beqz	$a0, .LBB25_204
# %bb.203:
	move	$a0, $zero
	stptr.w	$zero, $fp, 6372
	ori	$a1, $zero, 1
	b	.LBB25_205
.LBB25_204:
	move	$a1, $zero
	addi.d	$a0, $zero, -1
.LBB25_205:                             # %idr_memory_management.exit
	st.w	$a0, $s6, 44
	stptr.w	$a1, $fp, 6376
.LBB25_206:                             # %adaptive_memory_management.exit
	ld.w	$a0, $fp, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB25_210
# %bb.207:
	ld.d	$a0, $s6, 56
	beqz	$a0, .LBB25_215
# %bb.208:
	ld.w	$a1, $a0, 20
	ldptr.w	$a2, $fp, 6364
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
	ld.d	$a0, $s6, 56
	beqz	$a0, .LBB25_215
# %bb.212:                              # %.thread
	ld.w	$a1, $a0, 20
	ldptr.w	$a2, $fp, 6364
	bne	$a1, $a2, .LBB25_215
# %bb.213:                              # %.thread74
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB25_215
.LBB25_214:
	ldptr.w	$a1, $fp, 6380
	ld.w	$a2, $a0, 12
	sltui	$a1, $a1, 1
	sltui	$a2, $a2, 1
	xor	$a1, $a1, $a2
	beqz	$a1, .LBB25_272
.LBB25_215:
	ld.d	$a0, $s5, 0
	ldptr.d	$a1, $a0, 14208
	ld.w	$a1, $a1, 4
	beqz	$a1, .LBB25_251
.LBB25_216:
	ld.wu	$a1, $s6, 28
	ld.wu	$a2, $s6, 24
	beqz	$a1, .LBB25_231
# %bb.217:
	bne	$a1, $a2, .LBB25_231
# %bb.218:                              # %.lr.ph.i50
	ld.d	$a2, $s6, 0
	move	$a0, $zero
	ori	$a3, $zero, 3
	move	$a4, $a1
	b	.LBB25_221
.LBB25_219:                             #   in Loop: Header=BB25_221 Depth=1
	ld.d	$a7, $a5, 40
	ldptr.w	$a7, $a7, 6380
	beqz	$a7, .LBB25_225
	.p2align	4, , 16
.LBB25_220:                             # %is_used_for_reference.exit.thread.i
                                        #   in Loop: Header=BB25_221 Depth=1
	addi.w	$a0, $a0, 1
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	beqz	$a4, .LBB25_232
.LBB25_221:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, 0
	ld.w	$a6, $a5, 32
	beqz	$a6, .LBB25_220
# %bb.222:                              #   in Loop: Header=BB25_221 Depth=1
	ld.w	$a6, $a5, 4
	bnez	$a6, .LBB25_220
# %bb.223:                              #   in Loop: Header=BB25_221 Depth=1
	ld.w	$a6, $a5, 0
	beq	$a6, $a3, .LBB25_219
# %bb.224:                              #   in Loop: Header=BB25_221 Depth=1
	andi	$a7, $a6, 1
	beqz	$a7, .LBB25_227
.LBB25_225:                             # %.thread.i.i
                                        #   in Loop: Header=BB25_221 Depth=1
	ld.d	$a7, $a5, 48
	beqz	$a7, .LBB25_227
# %bb.226:                              #   in Loop: Header=BB25_221 Depth=1
	ldptr.w	$a7, $a7, 6380
	bnez	$a7, .LBB25_220
.LBB25_227:                             #   in Loop: Header=BB25_221 Depth=1
	andi	$a6, $a6, 2
	beqz	$a6, .LBB25_230
# %bb.228:                              #   in Loop: Header=BB25_221 Depth=1
	ld.d	$a5, $a5, 56
	beqz	$a5, .LBB25_230
# %bb.229:                              #   in Loop: Header=BB25_221 Depth=1
	ldptr.w	$a5, $a5, 6380
	bnez	$a5, .LBB25_220
.LBB25_230:                             # %is_used_for_reference.exit.i
	pcaddu18i	$ra, %call36(remove_frame_from_dpb)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s6, 28
	ld.wu	$a2, $s6, 24
.LBB25_231:                             # %remove_unused_frame_from_dpb.exit
	move	$a0, $a1
	move	$a1, $a2
	bne	$a0, $a2, .LBB25_244
.LBB25_232:                             # %.lr.ph
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$s0, $a0, %pc_lo12(.L.str.28)
	addi.w	$s1, $zero, -1
	lu12i.w	$a0, 524287
	ori	$s2, $a0, 4095
	move	$a0, $a1
	b	.LBB25_234
	.p2align	4, , 16
.LBB25_233:                             #   in Loop: Header=BB25_234 Depth=1
	pcaddu18i	$ra, %call36(output_one_frame_from_dpb)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s6, 28
	ld.wu	$a1, $s6, 24
	bne	$a0, $a1, .LBB25_244
.LBB25_234:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_239 Depth 2
	ldptr.w	$a1, $fp, 6380
	bnez	$a1, .LBB25_233
# %bb.235:                              #   in Loop: Header=BB25_234 Depth=1
	bnez	$a0, .LBB25_237
# %bb.236:                              #   in Loop: Header=BB25_234 Depth=1
	ori	$a1, $zero, 150
	move	$a0, $s0
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s6, 28
	beqz	$a0, .LBB25_243
.LBB25_237:                             # %.lr.ph.i61
                                        #   in Loop: Header=BB25_234 Depth=1
	ld.d	$a1, $s6, 0
	move	$a3, $zero
	move	$a2, $s2
	move	$a4, $s1
	b	.LBB25_239
	.p2align	4, , 16
.LBB25_238:                             #   in Loop: Header=BB25_239 Depth=2
	addi.w	$a3, $a3, 1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	beqz	$a0, .LBB25_241
.LBB25_239:                             #   Parent Loop BB25_234 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a1, 0
	ld.w	$a5, $a6, 36
	bge	$a5, $a2, .LBB25_238
# %bb.240:                              #   in Loop: Header=BB25_239 Depth=2
	ld.w	$a6, $a6, 32
	sltui	$a6, $a6, 1
	masknez	$a2, $a2, $a6
	maskeqz	$a5, $a5, $a6
	or	$a2, $a5, $a2
	masknez	$a4, $a4, $a6
	maskeqz	$a5, $a3, $a6
	or	$a4, $a5, $a4
	b	.LBB25_238
	.p2align	4, , 16
.LBB25_241:                             # %get_smallest_poc.exit
                                        #   in Loop: Header=BB25_234 Depth=1
	beq	$a4, $s1, .LBB25_243
# %bb.242:                              #   in Loop: Header=BB25_234 Depth=1
	ld.w	$a0, $fp, 4
	bge	$a0, $a2, .LBB25_233
.LBB25_243:                             # %get_smallest_poc.exit.thread
	pcalau12i	$a0, %pc_hi20(p_dec)
	ld.w	$a1, $a0, %pc_lo12(p_dec)
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(direct_output)
	jr	$t8
.LBB25_244:                             # %._crit_edge
	ldptr.w	$a1, $fp, 6380
	beqz	$a1, .LBB25_262
# %bb.245:
	ldptr.w	$a1, $fp, 6376
	bnez	$a1, .LBB25_262
# %bb.246:
	ld.wu	$a1, $s6, 32
	beqz	$a1, .LBB25_262
# %bb.247:                              # %.lr.ph138
	ld.d	$a0, $s6, 8
	pcalau12i	$a2, %pc_hi20(.L.str.14)
	addi.d	$s0, $a2, %pc_lo12(.L.str.14)
	move	$s1, $zero
	move	$s2, $zero
	b	.LBB25_249
	.p2align	4, , 16
.LBB25_248:                             #   in Loop: Header=BB25_249 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bgeu	$s2, $a1, .LBB25_261
.LBB25_249:                             # =>This Inner Loop Header: Depth=1
	ldx.d	$a2, $a0, $s1
	ld.w	$a2, $a2, 20
	ldptr.w	$a3, $fp, 6360
	bne	$a2, $a3, .LBB25_248
# %bb.250:                              #   in Loop: Header=BB25_249 Depth=1
	ori	$a1, $zero, 500
	move	$a0, $s0
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 8
	ld.wu	$a1, $s6, 32
	b	.LBB25_248
.LBB25_251:
	ldptr.w	$a1, $fp, 6380
	beqz	$a1, .LBB25_216
# %bb.252:
	ldptr.w	$a0, $a0, 15364
	bnez	$a0, .LBB25_216
# %bb.253:
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ld.w	$a0, $a0, 1132
	ld.w	$a1, $s6, 36
	ld.w	$a2, $s6, 32
	sub.w	$a0, $a0, $a1
	bne	$a2, $a0, .LBB25_260
# %bb.254:                              # %.preheader.i44
	ld.wu	$a1, $s6, 28
	beqz	$a1, .LBB25_260
# %bb.255:                              # %.lr.ph.i45
	ld.d	$a2, $s6, 0
	b	.LBB25_257
	.p2align	4, , 16
.LBB25_256:                             #   in Loop: Header=BB25_257 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB25_260
.LBB25_257:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a2, 0
	ld.w	$a3, $a0, 4
	beqz	$a3, .LBB25_256
# %bb.258:                              #   in Loop: Header=BB25_257 Depth=1
	ld.w	$a3, $a0, 8
	bnez	$a3, .LBB25_256
# %bb.259:
	pcaddu18i	$ra, %call36(unmark_for_reference)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(update_ref_list)
	jirl	$ra, $ra, 0
.LBB25_260:                             # %sliding_window_memory_management.exit
	stptr.w	$zero, $fp, 6376
	b	.LBB25_216
.LBB25_261:                             # %.loopexit.loopexit
	ld.wu	$a0, $s6, 28
.LBB25_262:                             # %.loopexit
	ld.d	$a1, $s6, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(insert_picture_in_dpb)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.wu	$a0, $s6, 28
	beqz	$a1, .LBB25_264
# %bb.263:
	ld.d	$a1, $s6, 0
	slli.d	$a2, $a0, 3
	ldx.d	$a1, $a1, $a2
	b	.LBB25_265
.LBB25_264:
	move	$a1, $zero
.LBB25_265:
	st.d	$a1, $s6, 56
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 28
	pcaddu18i	$ra, %call36(update_ref_list)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(update_ltref_list)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.w	$a1, $s6, 36
	ld.w	$a2, $s6, 32
	ld.w	$a0, $a0, 28
	add.w	$a1, $a2, $a1
	ori	$a2, $zero, 1
	slt	$a3, $a2, $a0
	masknez	$a2, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a2
	bge	$a0, $a1, .LBB25_273
# %bb.266:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 500
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
	pcaddu18i	$t8, %call36(error)
	jr	$t8
.LBB25_267:                             # %._crit_edge.i41
	ldptr.w	$a0, $a1, 15428
	beqz	$a0, .LBB25_206
# %bb.268:
	ld.w	$a0, $fp, 0
	stptr.d	$zero, $fp, 6360
	beqz	$a0, .LBB25_275
# %bb.269:
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB25_274
# %bb.270:
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB25_276
# %bb.271:
	move	$a0, $zero
	stptr.w	$zero, $a1, 15320
	st.w	$zero, $fp, 12
	st.w	$zero, $fp, 4
	b	.LBB25_277
.LBB25_272:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(insert_picture_in_dpb)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(update_ref_list)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(update_ltref_list)
	jirl	$ra, $ra, 0
	st.d	$zero, $s6, 56
.LBB25_273:                             # %check_num_ref.exit
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
	ret
.LBB25_274:
	move	$a0, $zero
	stptr.w	$zero, $a1, 15316
	st.d	$zero, $fp, 4
	b	.LBB25_277
.LBB25_275:
	ld.w	$a0, $fp, 4
	ld.w	$a2, $fp, 8
	ld.w	$a3, $fp, 12
	sub.w	$a2, $a2, $a0
	st.w	$a2, $fp, 8
	sub.w	$a0, $a3, $a0
	st.w	$a0, $fp, 12
	stptr.w	$a2, $a1, 15316
	stptr.w	$a0, $a1, 15320
	slt	$a3, $a2, $a0
	masknez	$a0, $a0, $a3
	maskeqz	$a2, $a2, $a3
	or	$a0, $a2, $a0
	st.w	$a0, $fp, 4
	stptr.w	$a0, $a1, 15324
	b	.LBB25_277
.LBB25_276:                             # %._crit_edge181.i
	ld.w	$a0, $fp, 4
.LBB25_277:
	stptr.w	$a0, $a1, 15328
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
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	ldptr.w	$a1, $a1, 6380
	move	$s0, $a0
	beqz	$a1, .LBB26_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(UnifiedOneForthPix)
	jirl	$ra, $ra, 0
.LBB26_2:
	ld.w	$a0, $fp, 0
	ori	$a1, $zero, 2
	lu12i.w	$s1, 1
	beq	$a0, $a1, .LBB26_26
# %bb.3:
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB26_9
# %bb.4:
	bnez	$a0, .LBB26_31
# %bb.5:
	ldptr.w	$a1, $fp, 6380
	st.d	$fp, $s0, 40
	ori	$a0, $zero, 3
	st.w	$a0, $s0, 0
	beqz	$a1, .LBB26_8
# %bb.6:
	ldptr.w	$a1, $fp, 6376
	st.w	$a0, $s0, 4
	st.w	$a0, $s0, 12
	beqz	$a1, .LBB26_8
# %bb.7:
	ori	$a0, $s1, 2276
	ldx.w	$a0, $fp, $a0
	ori	$a1, $zero, 3
	st.w	$a1, $s0, 8
	st.w	$a0, $s0, 28
.LBB26_8:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(dpb_split_field)
	jirl	$ra, $ra, 0
	b	.LBB26_31
.LBB26_9:
	ld.w	$a0, $s0, 0
	ldptr.w	$a1, $fp, 6380
	st.d	$fp, $s0, 48
	ori	$a0, $a0, 1
	st.w	$a0, $s0, 0
	beqz	$a1, .LBB26_12
# %bb.10:
	ld.w	$a1, $s0, 4
	ld.w	$a2, $s0, 12
	ldptr.w	$a3, $fp, 6376
	ori	$a1, $a1, 1
	st.w	$a1, $s0, 4
	ori	$a1, $a2, 1
	st.w	$a1, $s0, 12
	beqz	$a3, .LBB26_12
# %bb.11:
	ld.w	$a1, $s0, 8
	ori	$a2, $s1, 2276
	ldx.w	$a2, $fp, $a2
	ori	$a1, $a1, 1
	st.w	$a1, $s0, 8
	st.w	$a2, $s0, 28
.LBB26_12:
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB26_30
# %bb.13:
	ld.w	$a1, $fp, 4
	ldptr.w	$a6, $fp, 6392
	ori	$a0, $zero, 4
	st.w	$a1, $s0, 36
	blt	$a6, $a0, .LBB26_31
# %bb.14:                               # %.preheader.lr.ph.i
	move	$a1, $zero
	addi.d	$a2, $fp, 24
	ori	$a3, $s1, 2300
	ldx.w	$t1, $fp, $a3
	addi.d	$a3, $fp, 288
	ori	$a4, $zero, 1
	ori	$a5, $s1, 2296
	b	.LBB26_17
	.p2align	4, , 16
.LBB26_15:                              # %._crit_edge.loopexit.i
                                        #   in Loop: Header=BB26_17 Depth=1
	ldx.w	$a6, $fp, $a5
.LBB26_16:                              # %._crit_edge.i
                                        #   in Loop: Header=BB26_17 Depth=1
	addi.d	$a1, $a1, 1
	bstrpick.d	$a7, $a6, 62, 61
	add.w	$a7, $a6, $a7
	srai.d	$a7, $a7, 2
	bge	$a1, $a7, .LBB26_31
.LBB26_17:                              # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_21 Depth 2
	blt	$t1, $a0, .LBB26_16
# %bb.18:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB26_17 Depth=1
	move	$a6, $zero
	move	$a7, $zero
	slli.d	$t0, $a1, 3
	b	.LBB26_21
	.p2align	4, , 16
.LBB26_19:                              #   in Loop: Header=BB26_21 Depth=2
	slli.d	$t2, $t3, 3
	ldx.d	$t2, $a3, $t2
.LBB26_20:                              #   in Loop: Header=BB26_21 Depth=2
	ld.d	$t1, $t1, 8
	ldptr.d	$t3, $fp, 6528
	ldx.d	$t1, $t1, $a6
	ldx.d	$t3, $t3, $a6
	stx.d	$t2, $t1, $t0
	stx.b	$a4, $t3, $a1
	ldptr.w	$t1, $fp, 6396
	addi.d	$a7, $a7, 1
	bstrpick.d	$t2, $t1, 62, 61
	add.w	$t2, $t1, $t2
	srai.d	$t2, $t2, 2
	addi.d	$a6, $a6, 8
	bge	$a7, $t2, .LBB26_15
.LBB26_21:                              # %.lr.ph.i
                                        #   Parent Loop BB26_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldptr.d	$t1, $fp, 6488
	ld.d	$t2, $t1, 0
	ldx.d	$t2, $t2, $a6
	ldx.b	$t2, $t2, $a1
	bltz	$t2, .LBB26_23
# %bb.22:                               #   in Loop: Header=BB26_21 Depth=2
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a2, $t2
	b	.LBB26_24
	.p2align	4, , 16
.LBB26_23:                              #   in Loop: Header=BB26_21 Depth=2
	move	$t2, $zero
.LBB26_24:                              #   in Loop: Header=BB26_21 Depth=2
	ld.d	$t3, $t1, 8
	ldptr.d	$t1, $fp, 6504
	ldx.d	$t3, $t3, $a6
	ld.d	$t4, $t1, 0
	ldx.b	$t3, $t3, $a1
	ldx.d	$t4, $t4, $a6
	stx.d	$t2, $t4, $t0
	bgez	$t3, .LBB26_19
# %bb.25:                               #   in Loop: Header=BB26_21 Depth=2
	move	$t2, $zero
	b	.LBB26_20
.LBB26_26:
	ld.w	$a0, $s0, 0
	ldptr.w	$a1, $fp, 6380
	st.d	$fp, $s0, 56
	ori	$a0, $a0, 2
	st.w	$a0, $s0, 0
	beqz	$a1, .LBB26_29
# %bb.27:
	ld.w	$a1, $s0, 4
	ld.w	$a2, $s0, 12
	ldptr.w	$a3, $fp, 6376
	ori	$a1, $a1, 2
	st.w	$a1, $s0, 4
	ori	$a1, $a2, 2
	st.w	$a1, $s0, 12
	beqz	$a3, .LBB26_29
# %bb.28:
	ld.w	$a1, $s0, 8
	ori	$a2, $s1, 2276
	ldx.w	$a2, $fp, $a2
	ori	$a1, $a1, 2
	st.w	$a1, $s0, 8
	st.w	$a2, $s0, 28
.LBB26_29:
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB26_32
.LBB26_30:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(dpb_combine_field)
	jirl	$ra, $ra, 0
.LBB26_31:                              # %gen_field_ref_ids.exit
	ori	$a0, $s1, 2268
	ldx.w	$a0, $fp, $a0
	ori	$a1, $s1, 2288
	ldx.w	$a1, $fp, $a1
	st.w	$a0, $s0, 20
	st.w	$a1, $s0, 32
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB26_32:
	ld.w	$a1, $fp, 4
	ldptr.w	$a6, $fp, 6392
	ori	$a0, $zero, 4
	st.w	$a1, $s0, 36
	blt	$a6, $a0, .LBB26_31
# %bb.33:                               # %.preheader.lr.ph.i54
	move	$a1, $zero
	addi.d	$a2, $fp, 24
	ori	$a3, $s1, 2300
	ldx.w	$t1, $fp, $a3
	addi.d	$a3, $fp, 288
	ori	$a4, $zero, 1
	ori	$a5, $s1, 2296
	b	.LBB26_36
	.p2align	4, , 16
.LBB26_34:                              # %._crit_edge.loopexit.i63
                                        #   in Loop: Header=BB26_36 Depth=1
	ldx.w	$a6, $fp, $a5
.LBB26_35:                              # %._crit_edge.i58
                                        #   in Loop: Header=BB26_36 Depth=1
	addi.d	$a1, $a1, 1
	bstrpick.d	$a7, $a6, 62, 61
	add.w	$a7, $a6, $a7
	srai.d	$a7, $a7, 2
	bge	$a1, $a7, .LBB26_31
.LBB26_36:                              # %.preheader.i56
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_40 Depth 2
	blt	$t1, $a0, .LBB26_35
# %bb.37:                               # %.lr.ph.i60.preheader
                                        #   in Loop: Header=BB26_36 Depth=1
	move	$a6, $zero
	move	$a7, $zero
	slli.d	$t0, $a1, 3
	b	.LBB26_40
	.p2align	4, , 16
.LBB26_38:                              #   in Loop: Header=BB26_40 Depth=2
	slli.d	$t2, $t3, 3
	ldx.d	$t2, $a3, $t2
.LBB26_39:                              #   in Loop: Header=BB26_40 Depth=2
	ld.d	$t1, $t1, 8
	ldptr.d	$t3, $fp, 6528
	ldx.d	$t1, $t1, $a6
	ldx.d	$t3, $t3, $a6
	stx.d	$t2, $t1, $t0
	stx.b	$a4, $t3, $a1
	ldptr.w	$t1, $fp, 6396
	addi.d	$a7, $a7, 1
	bstrpick.d	$t2, $t1, 62, 61
	add.w	$t2, $t1, $t2
	srai.d	$t2, $t2, 2
	addi.d	$a6, $a6, 8
	bge	$a7, $t2, .LBB26_34
.LBB26_40:                              # %.lr.ph.i60
                                        #   Parent Loop BB26_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldptr.d	$t1, $fp, 6488
	ld.d	$t2, $t1, 0
	ldx.d	$t2, $t2, $a6
	ldx.b	$t2, $t2, $a1
	bltz	$t2, .LBB26_42
# %bb.41:                               #   in Loop: Header=BB26_40 Depth=2
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a2, $t2
	b	.LBB26_43
	.p2align	4, , 16
.LBB26_42:                              #   in Loop: Header=BB26_40 Depth=2
	move	$t2, $zero
.LBB26_43:                              #   in Loop: Header=BB26_40 Depth=2
	ld.d	$t3, $t1, 8
	ldptr.d	$t1, $fp, 6504
	ldx.d	$t3, $t3, $a6
	ld.d	$t4, $t1, 0
	ldx.b	$t3, $t3, $a1
	ldx.d	$t4, $t4, $a6
	stx.d	$t2, $t4, $t0
	bgez	$t3, .LBB26_38
# %bb.44:                               #   in Loop: Header=BB26_40 Depth=2
	move	$t2, $zero
	b	.LBB26_39
.Lfunc_end26:
	.size	insert_picture_in_dpb, .Lfunc_end26-insert_picture_in_dpb
                                        # -- End function
	.p2align	5                               # -- Begin function output_one_frame_from_dpb
	.type	output_one_frame_from_dpb,@function
output_one_frame_from_dpb:              # @output_one_frame_from_dpb
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(dpb)
	addi.d	$s0, $a0, %pc_lo12(dpb)
	ld.w	$a3, $s0, 28
	lu12i.w	$s1, 524287
	bnez	$a3, .LBB27_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 150
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s0, 28
	bnez	$a3, .LBB27_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	ori	$a1, $zero, 150
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s0, 28
	beqz	$a3, .LBB27_23
.LBB27_3:                               # %.lr.ph.i
	move	$a1, $zero
	move	$a2, $zero
	ld.d	$a0, $s0, 0
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 3
	addi.w	$fp, $zero, -1
	ori	$s1, $s1, 4095
	b	.LBB27_5
	.p2align	4, , 16
.LBB27_4:                               #   in Loop: Header=BB27_5 Depth=1
	addi.d	$a1, $a1, 8
	addi.w	$a2, $a2, 1
	beq	$a3, $a1, .LBB27_7
.LBB27_5:                               # =>This Inner Loop Header: Depth=1
	ldx.d	$a5, $a0, $a1
	ld.w	$a4, $a5, 36
	bge	$a4, $s1, .LBB27_4
# %bb.6:                                #   in Loop: Header=BB27_5 Depth=1
	ld.w	$a5, $a5, 32
	sltui	$a5, $a5, 1
	masknez	$a6, $s1, $a5
	maskeqz	$a4, $a4, $a5
	or	$s1, $a4, $a6
	masknez	$a4, $fp, $a5
	maskeqz	$a5, $a2, $a5
	or	$fp, $a5, $a4
	b	.LBB27_4
.LBB27_7:                               # %get_smallest_poc.exit
	addi.w	$a1, $zero, -1
	bne	$fp, $a1, .LBB27_9
.LBB27_8:                               # %get_smallest_poc.exit.thread
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ori	$a1, $zero, 150
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	addi.w	$fp, $zero, -1
.LBB27_9:
	slli.d	$s2, $fp, 3
	ldx.d	$a0, $a0, $s2
	pcalau12i	$a1, %pc_hi20(p_dec)
	ld.w	$a1, $a1, %pc_lo12(p_dec)
	pcaddu18i	$ra, %call36(write_stored_frame)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 5084
	bnez	$a0, .LBB27_12
# %bb.10:
	ld.w	$a0, $s0, 40
	blt	$a0, $s1, .LBB27_12
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	ori	$a1, $zero, 150
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB27_12:
	ld.d	$a0, $s0, 0
	ldx.d	$a0, $a0, $s2
	ld.w	$a1, $a0, 4
	st.w	$s1, $s0, 40
	beqz	$a1, .LBB27_14
.LBB27_13:                              # %is_used_for_reference.exit.thread
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB27_14:
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB27_16
# %bb.15:
	ld.d	$a2, $a0, 40
	ldptr.w	$a2, $a2, 6380
	bnez	$a2, .LBB27_13
	b	.LBB27_17
.LBB27_16:
	andi	$a2, $a1, 1
	beqz	$a2, .LBB27_19
.LBB27_17:                              # %.thread.i
	ld.d	$a2, $a0, 48
	beqz	$a2, .LBB27_19
# %bb.18:
	ldptr.w	$a2, $a2, 6380
	bnez	$a2, .LBB27_13
.LBB27_19:
	andi	$a1, $a1, 2
	beqz	$a1, .LBB27_22
# %bb.20:
	ld.d	$a0, $a0, 56
	beqz	$a0, .LBB27_22
# %bb.21:
	ldptr.w	$a0, $a0, 6380
	bnez	$a0, .LBB27_13
.LBB27_22:                              # %is_used_for_reference.exit
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(remove_frame_from_dpb)
	jr	$t8
.LBB27_23:
	ori	$s1, $s1, 4095
	b	.LBB27_8
.Lfunc_end27:
	.size	output_one_frame_from_dpb, .Lfunc_end27-output_one_frame_from_dpb
                                        # -- End function
	.globl	replace_top_pic_with_frame      # -- Begin function replace_top_pic_with_frame
	.p2align	5
	.type	replace_top_pic_with_frame,@function
replace_top_pic_with_frame:             # @replace_top_pic_with_frame
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s0, 0
	ldptr.w	$a0, $a0, 15360
	sltu	$a1, $zero, $a0
	stptr.w	$a1, $fp, 6380
	beqz	$a0, .LBB28_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(UnifiedOneForthPix)
	jirl	$ra, $ra, 0
.LBB28_2:
	pcalau12i	$a0, %pc_hi20(dpb)
	addi.d	$a1, $a0, %pc_lo12(dpb)
	ld.wu	$a0, $a1, 28
	beqz	$a0, .LBB28_11
# %bb.3:                                # %.lr.ph
	ld.d	$a2, $s0, 0
	ld.d	$a1, $a1, 0
	lu12i.w	$a3, 3
	ori	$a3, $a3, 3044
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 1
	b	.LBB28_5
	.p2align	4, , 16
.LBB28_4:                               #   in Loop: Header=BB28_5 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	beqz	$a0, .LBB28_11
.LBB28_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a1, 0
	ld.w	$a4, $s0, 20
	bne	$a4, $a2, .LBB28_4
# %bb.6:                                #   in Loop: Header=BB28_5 Depth=1
	ld.w	$a4, $s0, 0
	bne	$a4, $a3, .LBB28_4
# %bb.7:
	ld.d	$a0, $s0, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ldptr.w	$a1, $fp, 6380
	st.d	$zero, $s0, 48
	st.d	$fp, $s0, 40
	ori	$a0, $zero, 3
	st.w	$a0, $s0, 0
	beqz	$a1, .LBB28_10
# %bb.8:
	ldptr.w	$a1, $fp, 6376
	st.w	$a0, $s0, 4
	beqz	$a1, .LBB28_10
# %bb.9:
	ori	$a0, $zero, 3
	st.w	$a0, $s0, 8
.LBB28_10:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(dpb_split_field)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(update_ref_list)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(update_ltref_list)
	jr	$t8
.LBB28_11:                              # %.critedge
	pcalau12i	$a0, %pc_hi20(p_dec)
	ld.w	$a1, $a0, %pc_lo12(p_dec)
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(direct_output_paff)
	jr	$t8
.Lfunc_end28:
	.size	replace_top_pic_with_frame, .Lfunc_end28-replace_top_pic_with_frame
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
	ld.d	$a0, $a0, 40
	pcalau12i	$s7, %pc_hi20(active_sps)
	ld.d	$a2, $s7, %pc_lo12(active_sps)
	ldptr.w	$a1, $a0, 6392
	ld.w	$a3, $a0, 4
	ld.w	$a2, $a2, 1148
	srai.d	$a4, $a1, 3
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.w	$a3, $fp, 36
	lu12i.w	$s3, 1
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	beqz	$a2, .LBB29_2
# %bb.1:
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 48
	ori	$a1, $s3, 2440
	vstx	$vr0, $a0, $a1
	b	.LBB29_15
.LBB29_2:
	ori	$s4, $s3, 2300
	ldx.wu	$a2, $a0, $s4
	srli.d	$a3, $a2, 31
	ori	$s0, $s3, 2308
	ldx.wu	$a4, $a0, $s0
	add.w	$a2, $a2, $a3
	srai.d	$a2, $a2, 1
	ldptr.w	$a3, $a0, 6400
	srli.d	$a0, $a4, 31
	add.w	$a0, $a4, $a0
	srai.d	$a4, $a0, 1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 40
	ldx.wu	$a2, $a3, $s4
	st.d	$a0, $fp, 48
	ldptr.w	$a1, $a3, 6392
	srli.d	$a0, $a2, 31
	ldx.wu	$a4, $a3, $s0
	add.w	$a0, $a2, $a0
	srai.d	$a2, $a0, 1
	ldptr.w	$a3, $a3, 6400
	srli.d	$a0, $a4, 31
	add.w	$a0, $a4, $a0
	srai.d	$a4, $a0, 1
	ori	$a0, $zero, 2
	ori	$s1, $zero, 2
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	ldptr.w	$a2, $a1, 6396
	st.d	$a0, $fp, 56
	blt	$a2, $s1, .LBB29_5
# %bb.3:                                # %.lr.ph.preheader
	move	$s2, $zero
	move	$s5, $zero
	move	$s6, $zero
	.p2align	4, , 16
.LBB29_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 48
	ldptr.d	$a0, $a0, 6440
	ldptr.d	$a2, $a1, 6440
	ldx.d	$a0, $a0, $s2
	ldptr.w	$a3, $a1, 6392
	ldx.d	$a1, $a2, $s5
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	ldx.wu	$a0, $a1, $s4
	addi.d	$s6, $s6, 1
	srli.d	$a2, $a0, 31
	add.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 1
	addi.d	$s5, $s5, 16
	addi.d	$s2, $s2, 8
	blt	$s6, $a0, .LBB29_4
.LBB29_5:                               # %.preheader472
	ldptr.w	$a0, $a1, 6404
	blt	$a0, $s1, .LBB29_8
# %bb.6:                                # %.lr.ph475.preheader
	move	$s1, $zero
	move	$s2, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB29_7:                               # %.lr.ph475
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 48
	ldptr.d	$a0, $a0, 6472
	ldptr.d	$a2, $a1, 6472
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a2, 0
	ldx.d	$a0, $a0, $s2
	ldptr.w	$a3, $a1, 6400
	ldx.d	$a1, $a2, $s1
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	ld.d	$a1, $fp, 40
	ldptr.d	$a0, $a0, 6472
	ldptr.d	$a2, $a1, 6472
	ld.d	$a0, $a0, 8
	ld.d	$a2, $a2, 8
	ldx.d	$a0, $a0, $s2
	ldptr.w	$a3, $a1, 6400
	ldx.d	$a1, $a2, $s1
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	ldx.wu	$a0, $a1, $s0
	addi.d	$s5, $s5, 1
	srli.d	$a2, $a0, 31
	add.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 1
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, 16
	blt	$s5, $a0, .LBB29_7
.LBB29_8:                               # %.preheader471
	ldptr.w	$a0, $a1, 6396
	ori	$s1, $zero, 2
	blt	$a0, $s1, .LBB29_11
# %bb.9:                                # %.lr.ph477.preheader
	move	$s2, $zero
	move	$s5, $zero
	ori	$s6, $zero, 8
	.p2align	4, , 16
.LBB29_10:                              # %.lr.ph477
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldptr.d	$a0, $a0, 6440
	ldptr.d	$a2, $a1, 6440
	ldx.d	$a0, $a0, $s2
	ldptr.w	$a3, $a1, 6392
	ldx.d	$a1, $a2, $s6
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	ldx.wu	$a0, $a1, $s4
	addi.d	$s5, $s5, 1
	srli.d	$a2, $a0, 31
	add.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 1
	addi.d	$s6, $s6, 16
	addi.d	$s2, $s2, 8
	blt	$s5, $a0, .LBB29_10
.LBB29_11:                              # %.preheader470
	ldptr.w	$a0, $a1, 6404
	blt	$a0, $s1, .LBB29_14
# %bb.12:                               # %.lr.ph479.preheader
	move	$s1, $zero
	move	$s2, $zero
	ori	$s4, $zero, 8
	.p2align	4, , 16
.LBB29_13:                              # %.lr.ph479
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldptr.d	$a0, $a0, 6472
	ldptr.d	$a2, $a1, 6472
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a2, 0
	ldx.d	$a0, $a0, $s1
	ldptr.w	$a3, $a1, 6400
	ldx.d	$a1, $a2, $s4
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.d	$a1, $fp, 40
	ldptr.d	$a0, $a0, 6472
	ldptr.d	$a2, $a1, 6472
	ld.d	$a0, $a0, 8
	ld.d	$a2, $a2, 8
	ldx.d	$a0, $a0, $s1
	ldptr.w	$a3, $a1, 6400
	ldx.d	$a1, $a2, $s4
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	ldx.wu	$a0, $a1, $s0
	addi.d	$s2, $s2, 1
	srli.d	$a2, $a0, 31
	add.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 1
	addi.d	$s1, $s1, 8
	addi.d	$s4, $s4, 16
	blt	$s2, $a0, .LBB29_13
.LBB29_14:                              # %._crit_edge
	ld.d	$a0, $fp, 48
	pcaddu18i	$ra, %call36(UnifiedOneForthPix)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	pcaddu18i	$ra, %call36(UnifiedOneForthPix)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	ld.w	$a0, $a1, 8
	ld.d	$a2, $fp, 48
	ld.w	$a3, $a1, 12
	ld.d	$a4, $fp, 56
	ld.w	$a5, $a1, 16
	st.w	$a0, $a2, 4
	st.w	$a3, $a4, 4
	st.w	$a5, $a2, 16
	st.w	$a3, $a4, 12
	st.w	$a3, $a2, 12
	ori	$a3, $s3, 2284
	ldx.w	$a3, $a1, $a3
	st.w	$a0, $a4, 8
	st.w	$a0, $a2, 8
	st.w	$a5, $a4, 16
	stptr.w	$a3, $a4, 6380
	ori	$a0, $s3, 2280
	ldx.w	$a0, $a1, $a0
	ori	$a5, $s3, 2276
	ldx.w	$a5, $a1, $a5
	stptr.w	$a3, $a2, 6380
	stptr.w	$a0, $a4, 6376
	stptr.w	$a0, $a2, 6376
	stptr.w	$a5, $a4, 6372
	stptr.w	$a5, $a2, 6372
	st.w	$a5, $fp, 28
	ori	$a0, $s3, 2336
	ldx.w	$a0, $a1, $a0
	ori	$a3, $zero, 1
	stptr.w	$a3, $a4, 6428
	stptr.w	$a3, $a2, 6428
	stptr.w	$a0, $a4, 6432
	stptr.w	$a0, $a2, 6432
	stptr.d	$a2, $a1, 6536
	stptr.d	$a4, $a1, 6544
	stptr.d	$a4, $a2, 6544
	ori	$a0, $s3, 2464
	ldx.w	$a0, $a1, $a0
	stptr.d	$a1, $a2, 6552
	stptr.d	$a2, $a4, 6536
	stptr.d	$a1, $a4, 6552
	stptr.w	$a0, $a4, 6560
	stptr.w	$a0, $a2, 6560
	addi.d	$a0, $a2, 288
	addi.d	$a1, $a1, 816
	pcalau12i	$a2, %pc_hi20(listXsize)
	addi.d	$s1, $a2, %pc_lo12(listXsize)
	ld.w	$a2, $s1, 4
	slli.w	$a2, $a2, 1
	slli.d	$s0, $a2, 3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.d	$a1, $fp, 40
	addi.d	$a0, $a0, 288
	addi.d	$a1, $a1, 1344
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	ld.d	$a1, $fp, 40
	ld.w	$a2, $s1, 0
	addi.d	$a0, $a0, 24
	addi.d	$a1, $a1, 552
	slli.w	$a2, $a2, 1
	slli.d	$s0, $a2, 3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.d	$a1, $fp, 40
	addi.d	$a0, $a0, 24
	addi.d	$a1, $a1, 1080
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
.LBB29_15:
	ldptr.w	$a3, $a0, 6396
	ori	$a2, $zero, 4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bstrins.d	$a1, $zero, 0, 0
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	blt	$a3, $a2, .LBB29_44
# %bb.16:                               # %.lr.ph486
	ldptr.w	$a3, $a0, 6392
	blt	$a3, $a2, .LBB29_44
# %bb.17:                               # %.lr.ph486.split.us
	move	$a2, $zero
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bstrpick.d	$a4, $a1, 62, 61
	add.w	$a4, $a1, $a4
	srai.d	$a1, $a4, 2
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a4, $a0, 24
	addi.d	$a1, $a0, 1608
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a6, $a0, 288
	bstrpick.d	$a7, $a3, 31, 2
	ori	$a3, $s3, 2336
	ldx.w	$a1, $a0, $a3
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	addi.w	$t6, $zero, -1
	lu12i.w	$a3, 262143
	ori	$t7, $a3, 4094
	b	.LBB29_19
	.p2align	4, , 16
.LBB29_18:                              # %._crit_edge483.us
                                        #   in Loop: Header=BB29_19 Depth=1
	addi.d	$a2, $a2, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	beq	$a2, $a1, .LBB29_44
.LBB29_19:                              # %.lr.ph482.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_23 Depth 2
                                        #     Child Loop BB29_40 Depth 2
	slli.d	$t8, $a2, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beqz	$a1, .LBB29_38
# %bb.20:                               # %.lr.ph482.split.us490
                                        #   in Loop: Header=BB29_19 Depth=1
	move	$s0, $zero
	bstrpick.d	$a1, $a2, 2, 2
	bstrpick.d	$a3, $a2, 31, 3
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a3, $a3, $a5
	or	$s3, $a3, $a1
	sltui	$a1, $a1, 1
	ori	$a3, $zero, 4
	masknez	$a3, $a3, $a1
	ori	$a5, $zero, 2
	maskeqz	$a5, $a5, $a1
	or	$s4, $a5, $a3
	ori	$t1, $zero, 264
	mul.d	$a3, $s4, $t1
	add.d	$s5, $a4, $a3
	ldptr.d	$s6, $a0, 6488
	add.d	$a5, $a0, $a3
	addi.d	$s7, $a5, 288
	ori	$a5, $zero, 5
	masknez	$a5, $a5, $a1
	ld.d	$t0, $s6, 0
	ori	$t2, $zero, 3
	maskeqz	$a1, $t2, $a1
	or	$s8, $a1, $a5
	ldptr.d	$ra, $a0, 6480
	ldx.d	$s2, $t0, $t8
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	add.d	$s1, $a5, $a3
	mul.d	$a1, $s8, $t1
	add.d	$t1, $a5, $a1
	b	.LBB29_23
	.p2align	4, , 16
.LBB29_21:                              #   in Loop: Header=BB29_23 Depth=2
	ldx.d	$t3, $t1, $t0
.LBB29_22:                              #   in Loop: Header=BB29_23 Depth=2
	ld.d	$a1, $t4, 8
	ldx.d	$a1, $a1, $t8
	addi.d	$s0, $s0, 1
	stx.d	$t3, $a1, $t2
	beq	$s0, $a7, .LBB29_18
.LBB29_23:                              #   Parent Loop BB29_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$a3, $s0, 1
	and	$a3, $a3, $t7
	add.w	$a3, $a3, $s3
	ldx.bu	$a3, $ra, $a3
	ldx.b	$t5, $s2, $s0
	slli.d	$t2, $s0, 3
	beqz	$a3, .LBB29_26
# %bb.24:                               #   in Loop: Header=BB29_23 Depth=2
	slli.d	$t3, $t5, 3
	bltz	$t5, .LBB29_30
# %bb.25:                               #   in Loop: Header=BB29_23 Depth=2
	ldx.d	$t0, $s5, $t3
	b	.LBB29_31
	.p2align	4, , 16
.LBB29_26:                              #   in Loop: Header=BB29_23 Depth=2
	addi.w	$t3, $zero, -1
	move	$a3, $t3
	bltz	$t5, .LBB29_28
# %bb.27:                               #   in Loop: Header=BB29_23 Depth=2
	slli.d	$a1, $t5, 3
	ldx.d	$a3, $a4, $a1
.LBB29_28:                              #   in Loop: Header=BB29_23 Depth=2
	ld.d	$a1, $s6, 8
	ldptr.d	$t4, $a0, 6504
	ldx.d	$a1, $a1, $t8
	ld.d	$t0, $t4, 0
	ldx.b	$a5, $a1, $s0
	ldx.d	$a1, $t0, $t8
	stx.d	$a3, $a1, $t2
	bltz	$a5, .LBB29_22
# %bb.29:                               #   in Loop: Header=BB29_23 Depth=2
	slli.d	$a1, $a5, 3
	ldx.d	$t3, $a6, $a1
	b	.LBB29_22
	.p2align	4, , 16
.LBB29_30:                              #   in Loop: Header=BB29_23 Depth=2
	move	$t0, $zero
.LBB29_31:                              #   in Loop: Header=BB29_23 Depth=2
	ldptr.d	$t4, $a0, 6504
	ld.d	$a3, $s6, 8
	slli.d	$a5, $s4, 3
	ldx.d	$a5, $t4, $a5
	ldx.d	$a3, $a3, $t8
	ldx.d	$a5, $a5, $t8
	ldx.b	$a3, $a3, $s0
	stx.d	$t0, $a5, $t2
	slli.d	$t0, $a3, 3
	bltz	$a3, .LBB29_33
# %bb.32:                               #   in Loop: Header=BB29_23 Depth=2
	ldx.d	$a5, $s7, $t0
	b	.LBB29_34
	.p2align	4, , 16
.LBB29_33:                              #   in Loop: Header=BB29_23 Depth=2
	move	$a5, $zero
.LBB29_34:                              #   in Loop: Header=BB29_23 Depth=2
	slli.d	$a1, $s8, 3
	ldx.d	$a1, $t4, $a1
	ldx.d	$a1, $a1, $t8
	stx.d	$a5, $a1, $t2
	bltz	$t5, .LBB29_36
# %bb.35:                               #   in Loop: Header=BB29_23 Depth=2
	ldx.d	$a5, $s1, $t3
	ld.d	$a1, $t4, 0
	ldx.d	$a1, $a1, $t8
	stx.d	$a5, $a1, $t2
	bgez	$a3, .LBB29_21
	b	.LBB29_37
	.p2align	4, , 16
.LBB29_36:                              #   in Loop: Header=BB29_23 Depth=2
	move	$a5, $zero
	ld.d	$a1, $t4, 0
	ldx.d	$a1, $a1, $t8
	stx.d	$a5, $a1, $t2
	bgez	$a3, .LBB29_21
.LBB29_37:                              #   in Loop: Header=BB29_23 Depth=2
	move	$t3, $zero
	b	.LBB29_22
	.p2align	4, , 16
.LBB29_38:                              # %.lr.ph482.split.us.us
                                        #   in Loop: Header=BB29_19 Depth=1
	ldptr.d	$a1, $a0, 6488
	ldptr.d	$a3, $a0, 6504
	ld.d	$a5, $a1, 0
	ld.d	$a1, $a1, 8
	ld.d	$t0, $a3, 0
	ld.d	$a3, $a3, 8
	ldx.d	$t1, $a5, $t8
	ldx.d	$t2, $a1, $t8
	ldx.d	$t4, $t0, $t8
	ldx.d	$t5, $a3, $t8
	move	$t8, $a7
	b	.LBB29_40
	.p2align	4, , 16
.LBB29_39:                              #   in Loop: Header=BB29_40 Depth=2
	st.d	$a3, $t5, 0
	addi.d	$t1, $t1, 1
	addi.d	$t2, $t2, 1
	addi.d	$t4, $t4, 8
	addi.d	$t8, $t8, -1
	addi.d	$t5, $t5, 8
	beqz	$t8, .LBB29_18
.LBB29_40:                              #   Parent Loop BB29_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a5, $t1, 0
	move	$a3, $t6
	bltz	$a5, .LBB29_42
# %bb.41:                               #   in Loop: Header=BB29_40 Depth=2
	slli.d	$a1, $a5, 3
	ldx.d	$a3, $a4, $a1
.LBB29_42:                              #   in Loop: Header=BB29_40 Depth=2
	ld.b	$a5, $t2, 0
	st.d	$a3, $t4, 0
	move	$a3, $t6
	bltz	$a5, .LBB29_39
# %bb.43:                               #   in Loop: Header=BB29_40 Depth=2
	slli.d	$a1, $a5, 3
	ldx.d	$a3, $a6, $a1
	b	.LBB29_39
.LBB29_44:                              # %._crit_edge487
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $s8, %pc_lo12(active_sps)
	ld.w	$a1, $a1, 1148
	beqz	$a1, .LBB29_47
# %bb.45:
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
.LBB29_46:                              # %.loopexit469.thread541
	ldptr.d	$a1, $a0, 6528
	ldptr.w	$a2, $a0, 6392
	ld.d	$a0, $a1, 0
	srli.d	$a1, $a2, 4
	mul.w	$a2, $a1, $a7
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
.LBB29_47:
	ldptr.w	$a1, $a0, 6432
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	beqz	$a1, .LBB29_57
# %bb.48:                               # %.preheader468
	ori	$a1, $zero, 8
	blt	$a7, $a1, .LBB29_78
# %bb.49:                               # %.lr.ph496
	move	$a2, $zero
	ori	$a3, $zero, 4
	lu12i.w	$a1, 131071
	ori	$a4, $a1, 4094
	lu12i.w	$a1, 262143
	ori	$a5, $a1, 4094
	ori	$a6, $zero, 1
	b	.LBB29_51
	.p2align	4, , 16
.LBB29_50:                              # %._crit_edge494
                                        #   in Loop: Header=BB29_51 Depth=1
	ldptr.w	$a7, $a0, 6396
	addi.d	$a2, $a2, 1
	bstrpick.d	$a1, $a7, 62, 60
	add.w	$a1, $a7, $a1
	srai.d	$a1, $a1, 3
	bge	$a2, $a1, .LBB29_56
.LBB29_51:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_54 Depth 2
	ldptr.w	$a1, $a0, 6392
	blt	$a1, $a3, .LBB29_50
# %bb.52:                               # %.lr.ph493
                                        #   in Loop: Header=BB29_51 Depth=1
	move	$a1, $zero
	move	$a7, $zero
	move	$t0, $zero
	srli.d	$t2, $a2, 1
	slli.d	$t1, $a2, 1
	and	$t2, $t2, $a4
	move	$t6, $a2
	bstrins.d	$t6, $t2, 63, 2
	ori	$t5, $t6, 4
	bstrpick.d	$t2, $a2, 31, 2
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	mul.d	$t2, $t2, $t3
	bstrpick.d	$t3, $a2, 1, 1
	or	$t2, $t2, $t3
	slli.d	$t3, $a2, 3
	slli.d	$t4, $t1, 3
	slli.d	$t5, $t5, 3
	slli.d	$t6, $t6, 3
	b	.LBB29_54
	.p2align	4, , 16
.LBB29_53:                              #   in Loop: Header=BB29_54 Depth=2
	ldptr.w	$t7, $a0, 6392
	addi.d	$t0, $t0, 1
	bstrpick.d	$t8, $t7, 62, 61
	add.w	$t7, $t7, $t8
	srai.d	$t7, $t7, 2
	addi.w	$a7, $a7, 1
	addi.d	$a1, $a1, 8
	bge	$t0, $t7, .LBB29_50
.LBB29_54:                              #   Parent Loop BB29_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldptr.d	$t7, $a0, 6480
	srli.d	$t8, $a7, 1
	and	$t8, $t8, $a5
	add.w	$t8, $t8, $t2
	ldx.bu	$t7, $t7, $t8
	beqz	$t7, .LBB29_53
# %bb.55:                               #   in Loop: Header=BB29_54 Depth=2
	ld.d	$a0, $fp, 48
	ldptr.d	$a0, $a0, 6528
	ldx.d	$a0, $a0, $t3
	stx.b	$a6, $a0, $t0
	ld.d	$a0, $fp, 56
	ldptr.d	$a0, $a0, 6528
	ldx.d	$a0, $a0, $t3
	stx.b	$a6, $a0, $t0
	ld.d	$a0, $fp, 40
	ldptr.d	$a0, $a0, 6528
	alsl.d	$a0, $t1, $a0, 3
	ld.d	$a0, $a0, 8
	stx.b	$a6, $a0, $t0
	ld.d	$a0, $fp, 40
	ldptr.d	$a0, $a0, 6528
	ldx.d	$a0, $a0, $t4
	stx.b	$a6, $a0, $t0
	ld.d	$a0, $fp, 40
	ldptr.d	$t7, $a0, 6512
	ld.d	$t8, $fp, 56
	ld.d	$s0, $t7, 0
	ldptr.d	$s1, $t8, 6512
	ldx.d	$s0, $s0, $t5
	ld.d	$s2, $s1, 0
	ldx.d	$s0, $s0, $a1
	ldx.d	$s2, $s2, $t3
	ld.h	$s3, $s0, 0
	ldx.d	$s2, $s2, $a1
	ld.d	$t7, $t7, 8
	st.h	$s3, $s2, 0
	ldx.d	$t7, $t7, $t5
	ld.d	$s1, $s1, 8
	ld.h	$s0, $s0, 2
	ldx.d	$t7, $t7, $a1
	ldx.d	$s1, $s1, $t3
	st.h	$s0, $s2, 2
	ldptr.d	$a0, $a0, 6488
	ld.h	$s0, $t7, 0
	ldx.d	$s1, $s1, $a1
	ld.d	$a0, $a0, 0
	ldptr.d	$t8, $t8, 6488
	st.h	$s0, $s1, 0
	ld.h	$t7, $t7, 2
	ldx.d	$a0, $a0, $t5
	ld.d	$t8, $t8, 0
	st.h	$t7, $s1, 2
	ldx.b	$a0, $a0, $t0
	ldx.d	$t7, $t8, $t3
	stx.b	$a0, $t7, $t0
	ld.d	$a0, $fp, 40
	ldptr.d	$a0, $a0, 6488
	ld.d	$t7, $fp, 56
	ld.d	$a0, $a0, 8
	ldptr.d	$t7, $t7, 6488
	ldx.d	$a0, $a0, $t5
	ld.d	$t7, $t7, 8
	ldx.b	$a0, $a0, $t0
	ldx.d	$t7, $t7, $t3
	stx.b	$a0, $t7, $t0
	ld.d	$a0, $fp, 40
	ldptr.d	$t7, $a0, 6504
	ldptr.d	$t8, $a0, 6512
	ld.d	$s0, $fp, 48
	ld.d	$s1, $fp, 56
	ld.d	$s2, $t7, 32
	ld.d	$s3, $t8, 0
	ldptr.d	$s4, $s0, 6512
	ldptr.d	$s1, $s1, 6504
	ldx.d	$s2, $s2, $t5
	ldx.d	$s3, $s3, $t6
	ld.d	$s5, $s4, 0
	ld.d	$s6, $s1, 0
	ldx.d	$s2, $s2, $a1
	ldx.d	$s3, $s3, $a1
	ldx.d	$s5, $s5, $t3
	ldx.d	$s6, $s6, $t3
	ld.h	$s7, $s3, 0
	ldx.d	$s5, $s5, $a1
	stx.d	$s2, $s6, $a1
	ld.d	$t7, $t7, 40
	ld.d	$t8, $t8, 8
	st.h	$s7, $s5, 0
	ld.h	$s2, $s3, 2
	ldx.d	$t7, $t7, $t5
	ldx.d	$t8, $t8, $t6
	ld.d	$s3, $s4, 8
	st.h	$s2, $s5, 2
	ldx.d	$t7, $t7, $a1
	ldx.d	$t8, $t8, $a1
	ldx.d	$s2, $s3, $t3
	ld.d	$s1, $s1, 8
	ldptr.d	$a0, $a0, 6488
	ld.h	$s3, $t8, 0
	ldx.d	$s2, $s2, $a1
	ldx.d	$s1, $s1, $t3
	ld.d	$a0, $a0, 0
	ldptr.d	$s0, $s0, 6488
	st.h	$s3, $s2, 0
	ld.h	$t8, $t8, 2
	ldx.d	$a0, $a0, $t6
	ld.d	$s0, $s0, 0
	stx.d	$t7, $s1, $a1
	st.h	$t8, $s2, 2
	ldx.b	$a0, $a0, $t0
	ldx.d	$t7, $s0, $t3
	stx.b	$a0, $t7, $t0
	ld.d	$a0, $fp, 40
	ldptr.d	$a0, $a0, 6488
	ld.d	$t7, $fp, 48
	ld.d	$a0, $a0, 8
	ldptr.d	$t7, $t7, 6488
	ldx.d	$a0, $a0, $t6
	ld.d	$t7, $t7, 8
	ldx.b	$a0, $a0, $t0
	ldx.d	$t7, $t7, $t3
	stx.b	$a0, $t7, $t0
	ld.d	$a0, $fp, 40
	ldptr.d	$t7, $a0, 6504
	ld.d	$t8, $fp, 48
	ld.d	$s0, $t7, 16
	ldptr.d	$t8, $t8, 6504
	ldx.d	$s0, $s0, $t6
	ld.d	$s1, $t8, 0
	ld.d	$t7, $t7, 24
	ldx.d	$s0, $s0, $a1
	ldx.d	$s1, $s1, $t3
	ldx.d	$t7, $t7, $t6
	ld.d	$t8, $t8, 8
	stx.d	$s0, $s1, $a1
	ldx.d	$t7, $t7, $a1
	ldx.d	$t8, $t8, $t3
	stx.d	$t7, $t8, $a1
	b	.LBB29_53
.LBB29_56:                              # %.loopexit469
	ld.d	$a1, $s8, %pc_lo12(active_sps)
	ld.w	$a1, $a1, 1148
	bnez	$a1, .LBB29_46
.LBB29_57:                              # %.preheader
	ori	$a1, $zero, 8
	blt	$a7, $a1, .LBB29_78
# %bb.58:                               # %.lr.ph504
	move	$a1, $zero
	ori	$a2, $zero, 4
	addi.w	$a3, $zero, -1
	ori	$a4, $zero, 255
	b	.LBB29_60
	.p2align	4, , 16
.LBB29_59:                              # %._crit_edge500
                                        #   in Loop: Header=BB29_60 Depth=1
	ldptr.w	$a5, $a0, 6396
	addi.d	$a1, $a1, 1
	bstrpick.d	$a6, $a5, 62, 60
	add.w	$a5, $a5, $a6
	srai.d	$a5, $a5, 3
	bge	$a1, $a5, .LBB29_78
.LBB29_60:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_64 Depth 2
	ldptr.w	$a5, $a0, 6392
	blt	$a5, $a2, .LBB29_59
# %bb.61:                               # %.lr.ph499
                                        #   in Loop: Header=BB29_60 Depth=1
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $zero
	srli.d	$t0, $a1, 1
	bstrpick.d	$t1, $a1, 1, 1
	bstrpick.d	$t2, $a1, 30, 1
	bstrins.d	$t0, $t2, 63, 1
	slli.w	$t4, $t0, 1
	bstrpick.d	$t0, $a1, 31, 2
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	mul.d	$t0, $t0, $t2
	or	$t0, $t0, $t1
	slli.d	$t1, $a1, 1
	slli.d	$t2, $t1, 3
	slli.d	$t3, $a1, 3
	slli.d	$t4, $t4, 3
	b	.LBB29_64
	.p2align	4, , 16
.LBB29_62:                              #   in Loop: Header=BB29_64 Depth=2
	ldptr.d	$a0, $a0, 6528
	ldx.d	$a0, $a0, $t2
	stx.b	$t5, $a0, $a7
	ld.d	$a0, $fp, 40
	ldptr.d	$a0, $a0, 6528
	alsl.d	$a0, $t1, $a0, 3
	ld.d	$a0, $a0, 8
	stx.b	$t5, $a0, $a7
.LBB29_63:                              #   in Loop: Header=BB29_64 Depth=2
	ld.d	$a0, $fp, 40
	ldptr.w	$t5, $a0, 6392
	addi.d	$a7, $a7, 1
	bstrpick.d	$t6, $t5, 62, 61
	add.w	$t5, $t5, $t6
	srai.d	$t5, $t5, 2
	addi.d	$a6, $a6, 8
	addi.w	$a5, $a5, 1
	bge	$a7, $t5, .LBB29_59
.LBB29_64:                              #   Parent Loop BB29_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldptr.w	$t5, $a0, 6432
	beqz	$t5, .LBB29_66
# %bb.65:                               #   in Loop: Header=BB29_64 Depth=2
	ldptr.d	$t5, $a0, 6480
	bstrpick.d	$t6, $a5, 31, 1
	bstrpick.d	$t6, $t6, 29, 1
	alsl.w	$t6, $t6, $t0, 1
	ldx.bu	$t5, $t5, $t6
	bnez	$t5, .LBB29_62
.LBB29_66:                              #   in Loop: Header=BB29_64 Depth=2
	ldptr.d	$a0, $a0, 6528
	ldx.d	$a0, $a0, $t2
	stx.b	$zero, $a0, $a7
	ld.d	$a0, $fp, 40
	ldptr.d	$a0, $a0, 6528
	alsl.d	$a0, $t1, $a0, 3
	ld.d	$a0, $a0, 8
	stx.b	$zero, $a0, $a7
	ld.d	$a0, $fp, 56
	ldptr.d	$a0, $a0, 6528
	ldx.d	$a0, $a0, $t3
	stx.b	$zero, $a0, $a7
	ld.d	$a0, $fp, 48
	ldptr.d	$a0, $a0, 6528
	ldx.d	$a0, $a0, $t3
	stx.b	$zero, $a0, $a7
	ld.d	$t5, $fp, 40
	srli.d	$a0, $a5, 1
	ldptr.d	$t6, $t5, 6512
	bstrpick.d	$t7, $a5, 30, 1
	ld.d	$t8, $fp, 56
	ld.d	$s0, $fp, 48
	ld.d	$s1, $t6, 0
	bstrins.d	$a0, $t7, 63, 1
	ldptr.d	$t7, $t8, 6512
	ldptr.d	$s0, $s0, 6512
	ldx.d	$s1, $s1, $t4
	addi.w	$a0, $a0, 0
	ld.d	$s2, $t7, 0
	ld.d	$s3, $s0, 0
	slli.d	$s4, $a0, 3
	ldx.d	$s1, $s1, $s4
	ldx.d	$s2, $s2, $t3
	ldx.d	$s3, $s3, $t3
	ld.h	$s5, $s1, 0
	ldx.d	$s2, $s2, $a6
	ldx.d	$s3, $s3, $a6
	ld.d	$t6, $t6, 8
	st.h	$s5, $s2, 0
	st.h	$s5, $s3, 0
	ld.h	$s1, $s1, 2
	ldx.d	$t6, $t6, $t4
	ld.d	$t7, $t7, 8
	ld.d	$s0, $s0, 8
	st.h	$s1, $s2, 2
	ldx.d	$t6, $t6, $s4
	ldx.d	$t7, $t7, $t3
	ldx.d	$s0, $s0, $t3
	st.h	$s1, $s3, 2
	ld.h	$s1, $t6, 0
	ldx.d	$t7, $t7, $a6
	ldx.d	$s0, $s0, $a6
	ldptr.d	$t5, $t5, 6488
	st.h	$s1, $t7, 0
	st.h	$s1, $s0, 0
	ld.d	$t5, $t5, 0
	ldptr.d	$t8, $t8, 6488
	ld.h	$t6, $t6, 2
	ldx.d	$t5, $t5, $t4
	ld.d	$t8, $t8, 0
	st.h	$t6, $t7, 2
	st.h	$t6, $s0, 2
	ldx.b	$t5, $t5, $a0
	ldx.d	$t6, $t8, $t3
	beq	$t5, $a3, .LBB29_69
# %bb.67:                               #   in Loop: Header=BB29_64 Depth=2
	stx.b	$t5, $t6, $a7
	ld.d	$t6, $fp, 48
	ldptr.d	$t6, $t6, 6488
	ld.d	$t6, $t6, 0
	ldx.d	$t6, $t6, $t3
	stx.b	$t5, $t6, $a7
	bltz	$t5, .LBB29_70
# %bb.68:                               #   in Loop: Header=BB29_64 Depth=2
	ld.d	$t6, $fp, 48
	ldptr.d	$t6, $t6, 6504
	ld.d	$t7, $fp, 40
	ld.d	$t6, $t6, 0
	alsl.d	$t5, $t5, $t7, 3
	ldptr.d	$t7, $t5, 3192
	ldx.d	$t6, $t6, $t3
	stx.d	$t7, $t6, $a6
	ldptr.d	$t5, $t5, 4776
	b	.LBB29_71
	.p2align	4, , 16
.LBB29_69:                              #   in Loop: Header=BB29_64 Depth=2
	stx.b	$a4, $t6, $a7
	ld.d	$t5, $fp, 48
	ldptr.d	$t5, $t5, 6488
	ld.d	$t5, $t5, 0
	ldx.d	$t5, $t5, $t3
	stx.b	$a4, $t5, $a7
	b	.LBB29_72
.LBB29_70:                              # %.critedge
                                        #   in Loop: Header=BB29_64 Depth=2
	ld.d	$t5, $fp, 48
	ldptr.d	$t5, $t5, 6504
	ld.d	$t5, $t5, 0
	ldx.d	$t6, $t5, $t3
	move	$t5, $zero
	stx.d	$zero, $t6, $a6
.LBB29_71:                              #   in Loop: Header=BB29_64 Depth=2
	ld.d	$t6, $fp, 56
	ldptr.d	$t6, $t6, 6504
	ld.d	$t6, $t6, 0
	ldx.d	$t6, $t6, $t3
	stx.d	$t5, $t6, $a6
.LBB29_72:                              #   in Loop: Header=BB29_64 Depth=2
	ld.d	$t5, $fp, 40
	ldptr.d	$t5, $t5, 6488
	ld.d	$t6, $fp, 56
	ld.d	$t5, $t5, 8
	ldptr.d	$t6, $t6, 6488
	ldx.d	$t5, $t5, $t4
	ld.d	$t6, $t6, 8
	ldx.b	$a0, $t5, $a0
	ldx.d	$t5, $t6, $t3
	beq	$a0, $a3, .LBB29_75
# %bb.73:                               #   in Loop: Header=BB29_64 Depth=2
	stx.b	$a0, $t5, $a7
	ld.d	$t5, $fp, 48
	ldptr.d	$t5, $t5, 6488
	ld.d	$t5, $t5, 8
	ldx.d	$t5, $t5, $t3
	stx.b	$a0, $t5, $a7
	bltz	$a0, .LBB29_76
# %bb.74:                               #   in Loop: Header=BB29_64 Depth=2
	ld.d	$t5, $fp, 48
	ldptr.d	$t5, $t5, 6504
	ld.d	$t6, $fp, 40
	ld.d	$t5, $t5, 8
	alsl.d	$a0, $a0, $t6, 3
	ldptr.d	$t6, $a0, 3456
	ldx.d	$t5, $t5, $t3
	stx.d	$t6, $t5, $a6
	ldptr.d	$a0, $a0, 5040
	b	.LBB29_77
	.p2align	4, , 16
.LBB29_75:                              #   in Loop: Header=BB29_64 Depth=2
	stx.b	$a4, $t5, $a7
	ld.d	$a0, $fp, 48
	ldptr.d	$a0, $a0, 6488
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $t3
	stx.b	$a4, $a0, $a7
	b	.LBB29_63
.LBB29_76:                              # %.critedge466
                                        #   in Loop: Header=BB29_64 Depth=2
	ld.d	$a0, $fp, 48
	ldptr.d	$a0, $a0, 6504
	ld.d	$a0, $a0, 8
	ldx.d	$t5, $a0, $t3
	move	$a0, $zero
	stx.d	$zero, $t5, $a6
.LBB29_77:                              #   in Loop: Header=BB29_64 Depth=2
	ld.d	$t5, $fp, 56
	ldptr.d	$t5, $t5, 6504
	ld.d	$t5, $t5, 8
	ldx.d	$t5, $t5, $t3
	stx.d	$a0, $t5, $a6
	b	.LBB29_63
.LBB29_78:                              # %.loopexit
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
.Lfunc_end29:
	.size	dpb_split_field, .Lfunc_end29-dpb_split_field
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
	pcalau12i	$a0, %pc_hi20(dpb)
	addi.d	$fp, $a0, %pc_lo12(dpb)
	ld.w	$a0, $fp, 28
	beqz	$a0, .LBB30_19
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB30_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(unmark_for_reference)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 28
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	bltu	$s1, $a1, .LBB30_2
# %bb.3:                                # %.preheader
	beqz	$a1, .LBB30_19
# %bb.4:
	ori	$s0, $zero, 3
.LBB30_5:                               # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_8 Depth 2
	ld.d	$a2, $fp, 0
	move	$a0, $zero
	b	.LBB30_8
.LBB30_6:                               #   in Loop: Header=BB30_8 Depth=2
	ld.d	$a5, $a3, 40
	ldptr.w	$a5, $a5, 6380
	beqz	$a5, .LBB30_12
	.p2align	4, , 16
.LBB30_7:                               # %is_used_for_reference.exit.thread.i
                                        #   in Loop: Header=BB30_8 Depth=2
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	beqz	$a1, .LBB30_18
.LBB30_8:                               #   Parent Loop BB30_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	ld.w	$a4, $a3, 32
	beqz	$a4, .LBB30_7
# %bb.9:                                #   in Loop: Header=BB30_8 Depth=2
	ld.w	$a4, $a3, 4
	bnez	$a4, .LBB30_7
# %bb.10:                               #   in Loop: Header=BB30_8 Depth=2
	ld.w	$a4, $a3, 0
	beq	$a4, $s0, .LBB30_6
# %bb.11:                               #   in Loop: Header=BB30_8 Depth=2
	andi	$a5, $a4, 1
	beqz	$a5, .LBB30_14
.LBB30_12:                              # %.thread.i.i
                                        #   in Loop: Header=BB30_8 Depth=2
	ld.d	$a5, $a3, 48
	beqz	$a5, .LBB30_14
# %bb.13:                               #   in Loop: Header=BB30_8 Depth=2
	ldptr.w	$a5, $a5, 6380
	bnez	$a5, .LBB30_7
.LBB30_14:                              #   in Loop: Header=BB30_8 Depth=2
	andi	$a4, $a4, 2
	beqz	$a4, .LBB30_17
# %bb.15:                               #   in Loop: Header=BB30_8 Depth=2
	ld.d	$a3, $a3, 56
	beqz	$a3, .LBB30_17
# %bb.16:                               #   in Loop: Header=BB30_8 Depth=2
	ldptr.w	$a3, $a3, 6380
	bnez	$a3, .LBB30_7
.LBB30_17:                              # %thread-pre-split
                                        #   in Loop: Header=BB30_5 Depth=1
	pcaddu18i	$ra, %call36(remove_frame_from_dpb)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 28
	bnez	$a1, .LBB30_5
	b	.LBB30_19
	.p2align	4, , 16
.LBB30_18:                              # %.lr.ph11
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(output_one_frame_from_dpb)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 28
	bnez	$a0, .LBB30_18
.LBB30_19:                              # %._crit_edge
	lu12i.w	$a0, -524288
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 40
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end30:
	.size	flush_dpb, .Lfunc_end30-flush_dpb
                                        # -- End function
	.p2align	5                               # -- Begin function unmark_for_reference
	.type	unmark_for_reference,@function
unmark_for_reference:                   # @unmark_for_reference
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.wu	$a0, $a0, 0
	andi	$a1, $a0, 1
	beqz	$a1, .LBB31_3
# %bb.1:
	ld.d	$a1, $fp, 48
	beqz	$a1, .LBB31_3
# %bb.2:
	stptr.w	$zero, $a1, 6380
.LBB31_3:
	andi	$a1, $a0, 2
	beqz	$a1, .LBB31_6
# %bb.4:
	ld.d	$a1, $fp, 56
	beqz	$a1, .LBB31_6
# %bb.5:
	stptr.w	$zero, $a1, 6380
.LBB31_6:
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB31_11
# %bb.7:
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB31_10
# %bb.8:
	ld.d	$a1, $fp, 56
	beqz	$a1, .LBB31_10
# %bb.9:
	stptr.w	$zero, $a0, 6380
	stptr.w	$zero, $a1, 6380
.LBB31_10:                              # %.thread
	ld.d	$a1, $fp, 40
	stptr.w	$zero, $a1, 6380
	st.w	$zero, $fp, 4
	b	.LBB31_12
.LBB31_11:
	ld.d	$a1, $fp, 40
	st.w	$zero, $fp, 4
	beqz	$a1, .LBB31_18
.LBB31_12:
	ldptr.d	$a0, $a1, 6448
	beqz	$a0, .LBB31_14
# %bb.13:
	ori	$a1, $zero, 4
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(free_mem4Dpel)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	stptr.d	$zero, $a1, 6448
.LBB31_14:
	ldptr.d	$a0, $a1, 6496
	beqz	$a0, .LBB31_16
# %bb.15:
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(free_mem3Dint64)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	stptr.d	$zero, $a1, 6496
.LBB31_16:
	ldptr.d	$a0, $a1, 6504
	beqz	$a0, .LBB31_18
# %bb.17:
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(free_mem3Dint64)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	stptr.d	$zero, $a0, 6504
.LBB31_18:
	ld.d	$a1, $fp, 48
	beqz	$a1, .LBB31_25
# %bb.19:
	ldptr.d	$a0, $a1, 6448
	beqz	$a0, .LBB31_21
# %bb.20:
	ori	$a1, $zero, 4
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(free_mem4Dpel)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 48
	stptr.d	$zero, $a1, 6448
.LBB31_21:
	ldptr.d	$a0, $a1, 6496
	beqz	$a0, .LBB31_23
# %bb.22:
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(free_mem3Dint64)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 48
	stptr.d	$zero, $a1, 6496
.LBB31_23:
	ldptr.d	$a0, $a1, 6504
	beqz	$a0, .LBB31_25
# %bb.24:
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(free_mem3Dint64)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	stptr.d	$zero, $a0, 6504
.LBB31_25:
	ld.d	$a1, $fp, 56
	beqz	$a1, .LBB31_32
# %bb.26:
	ldptr.d	$a0, $a1, 6448
	beqz	$a0, .LBB31_28
# %bb.27:
	ori	$a1, $zero, 4
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(free_mem4Dpel)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 56
	stptr.d	$zero, $a1, 6448
.LBB31_28:
	ldptr.d	$a0, $a1, 6496
	beqz	$a0, .LBB31_30
# %bb.29:
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(free_mem3Dint64)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 56
	stptr.d	$zero, $a1, 6496
.LBB31_30:
	ldptr.d	$a0, $a1, 6504
	beqz	$a0, .LBB31_32
# %bb.31:
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(free_mem3Dint64)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	stptr.d	$zero, $a0, 6504
.LBB31_32:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end31:
	.size	unmark_for_reference, .Lfunc_end31-unmark_for_reference
                                        # -- End function
	.globl	gen_field_ref_ids               # -- Begin function gen_field_ref_ids
	.p2align	5
	.type	gen_field_ref_ids,@function
gen_field_ref_ids:                      # @gen_field_ref_ids
# %bb.0:
	ldptr.w	$a7, $a0, 6392
	ori	$a1, $zero, 4
	blt	$a7, $a1, .LBB32_13
# %bb.1:                                # %.preheader.lr.ph
	move	$a2, $zero
	addi.d	$a3, $a0, 24
	lu12i.w	$a6, 1
	ori	$a4, $a6, 2300
	ldx.w	$t2, $a0, $a4
	addi.d	$a4, $a0, 288
	ori	$a5, $zero, 1
	ori	$a6, $a6, 2296
	b	.LBB32_4
	.p2align	4, , 16
.LBB32_2:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB32_4 Depth=1
	ldx.w	$a7, $a0, $a6
.LBB32_3:                               # %._crit_edge
                                        #   in Loop: Header=BB32_4 Depth=1
	addi.d	$a2, $a2, 1
	bstrpick.d	$t0, $a7, 62, 61
	add.w	$t0, $a7, $t0
	srai.d	$t0, $t0, 2
	bge	$a2, $t0, .LBB32_13
.LBB32_4:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_8 Depth 2
	blt	$t2, $a1, .LBB32_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB32_4 Depth=1
	move	$a7, $zero
	move	$t0, $zero
	slli.d	$t1, $a2, 3
	b	.LBB32_8
	.p2align	4, , 16
.LBB32_6:                               #   in Loop: Header=BB32_8 Depth=2
	slli.d	$t3, $t4, 3
	ldx.d	$t3, $a4, $t3
.LBB32_7:                               #   in Loop: Header=BB32_8 Depth=2
	ld.d	$t2, $t2, 8
	ldptr.d	$t4, $a0, 6528
	ldx.d	$t2, $t2, $a7
	ldx.d	$t4, $t4, $a7
	stx.d	$t3, $t2, $t1
	stx.b	$a5, $t4, $a2
	ldptr.w	$t2, $a0, 6396
	addi.d	$t0, $t0, 1
	bstrpick.d	$t3, $t2, 62, 61
	add.w	$t3, $t2, $t3
	srai.d	$t3, $t3, 2
	addi.d	$a7, $a7, 8
	bge	$t0, $t3, .LBB32_2
.LBB32_8:                               # %.lr.ph
                                        #   Parent Loop BB32_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldptr.d	$t2, $a0, 6488
	ld.d	$t3, $t2, 0
	ldx.d	$t3, $t3, $a7
	ldx.b	$t3, $t3, $a2
	bltz	$t3, .LBB32_10
# %bb.9:                                #   in Loop: Header=BB32_8 Depth=2
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $a3, $t3
	b	.LBB32_11
	.p2align	4, , 16
.LBB32_10:                              #   in Loop: Header=BB32_8 Depth=2
	move	$t3, $zero
.LBB32_11:                              #   in Loop: Header=BB32_8 Depth=2
	ld.d	$t4, $t2, 8
	ldptr.d	$t2, $a0, 6504
	ldx.d	$t4, $t4, $a7
	ld.d	$t5, $t2, 0
	ldx.b	$t4, $t4, $a2
	ldx.d	$t5, $t5, $a7
	stx.d	$t3, $t5, $t1
	bgez	$t4, .LBB32_6
# %bb.12:                               #   in Loop: Header=BB32_8 Depth=2
	move	$t3, $zero
	b	.LBB32_7
.LBB32_13:                              # %._crit_edge31
	ret
.Lfunc_end32:
	.size	gen_field_ref_ids, .Lfunc_end32-gen_field_ref_ids
                                        # -- End function
	.globl	dpb_combine_field_yuv           # -- Begin function dpb_combine_field_yuv
	.p2align	5
	.type	dpb_combine_field_yuv,@function
dpb_combine_field_yuv:                  # @dpb_combine_field_yuv
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 48
	ldptr.w	$a1, $a0, 6392
	lu12i.w	$s0, 1
	ori	$a2, $s0, 2300
	ldx.w	$a2, $a0, $a2
	ori	$a3, $s0, 2308
	ldx.w	$a4, $a0, $a3
	ldptr.w	$a3, $a0, 6400
	slli.w	$a2, $a2, 1
	slli.w	$a4, $a4, 1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 48
	ldptr.w	$a2, $a1, 6396
	st.d	$a0, $fp, 40
	blez	$a2, .LBB33_3
# %bb.1:                                # %.lr.ph
	move	$s1, $zero
	move	$s2, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB33_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 40
	ldptr.d	$a0, $a0, 6440
	ldptr.d	$a2, $a1, 6440
	ldx.d	$a0, $a0, $s2
	ldptr.w	$a3, $a1, 6392
	ldx.d	$a1, $a2, $s1
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	ld.d	$a1, $fp, 56
	ldptr.d	$a0, $a0, 6440
	ldptr.d	$a2, $a1, 6440
	add.d	$a0, $a0, $s2
	ld.d	$a0, $a0, 8
	ldptr.w	$a3, $a1, 6392
	ldx.d	$a1, $a2, $s1
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 48
	ldptr.w	$a0, $a1, 6396
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 16
	addi.d	$s1, $s1, 8
	blt	$s3, $a0, .LBB33_2
.LBB33_3:                               # %.preheader
	ldptr.w	$a0, $a1, 6404
	blez	$a0, .LBB33_6
# %bb.4:                                # %.lr.ph90
	move	$s1, $zero
	move	$s2, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB33_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 40
	ldptr.d	$a0, $a0, 6472
	ldptr.d	$a2, $a1, 6472
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a2, 0
	ldx.d	$a0, $a0, $s2
	ldptr.w	$a3, $a1, 6400
	ldx.d	$a1, $a2, $s1
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	ld.d	$a1, $fp, 56
	ldptr.d	$a0, $a0, 6472
	ldptr.d	$a2, $a1, 6472
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a2, 0
	add.d	$a0, $a0, $s2
	ld.d	$a0, $a0, 8
	ldptr.w	$a3, $a1, 6400
	ldx.d	$a1, $a2, $s1
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	ld.d	$a1, $fp, 48
	ldptr.d	$a0, $a0, 6472
	ldptr.d	$a2, $a1, 6472
	ld.d	$a0, $a0, 8
	ld.d	$a2, $a2, 8
	ldx.d	$a0, $a0, $s2
	ldptr.w	$a3, $a1, 6400
	ldx.d	$a1, $a2, $s1
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	ld.d	$a1, $fp, 56
	ldptr.d	$a0, $a0, 6472
	ldptr.d	$a2, $a1, 6472
	ld.d	$a0, $a0, 8
	ld.d	$a2, $a2, 8
	add.d	$a0, $a0, $s2
	ld.d	$a0, $a0, 8
	ldptr.w	$a3, $a1, 6400
	ldx.d	$a1, $a2, $s1
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 48
	ldptr.w	$a0, $a1, 6404
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 16
	addi.d	$s1, $s1, 8
	blt	$s3, $a0, .LBB33_5
.LBB33_6:                               # %._crit_edge
	ld.d	$a0, $fp, 56
	ld.w	$a3, $a1, 4
	ld.w	$a4, $a0, 4
	slt	$a5, $a3, $a4
	ld.d	$a2, $fp, 40
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	st.w	$a3, $a2, 16
	st.w	$a3, $a2, 4
	st.w	$a3, $fp, 36
	st.w	$a3, $a1, 16
	ld.w	$a4, $a1, 4
	st.w	$a3, $a0, 16
	ld.w	$a3, $a0, 4
	ldptr.w	$a5, $a1, 6380
	st.w	$a4, $a2, 8
	st.w	$a4, $a0, 8
	st.w	$a3, $a2, 12
	st.w	$a3, $a1, 12
	beqz	$a5, .LBB33_10
# %bb.7:
	ldptr.w	$a3, $a0, 6380
	sltu	$a3, $zero, $a3
	ldptr.w	$a4, $a1, 6376
	stptr.w	$a3, $a2, 6380
	beqz	$a4, .LBB33_11
.LBB33_8:
	ldptr.w	$a3, $a0, 6376
	sltu	$a4, $zero, $a3
	stptr.w	$a4, $a2, 6376
	beqz	$a3, .LBB33_12
# %bb.9:
	ld.w	$a3, $fp, 28
	stptr.w	$a3, $a2, 6372
	b	.LBB33_12
.LBB33_10:
	move	$a3, $zero
	ldptr.w	$a4, $a1, 6376
	stptr.w	$a3, $a2, 6380
	bnez	$a4, .LBB33_8
.LBB33_11:                              # %.thread
	stptr.w	$zero, $a2, 6376
.LBB33_12:
	stptr.d	$a1, $a2, 6536
	ori	$a3, $s0, 2464
	ldx.w	$a3, $a1, $a3
	ldptr.w	$a4, $a1, 6568
	stptr.d	$a0, $a2, 6544
	stptr.w	$zero, $a2, 6428
	stptr.w	$a3, $a2, 6560
	stptr.w	$a4, $a2, 6568
	beqz	$a4, .LBB33_14
# %bb.13:
	ori	$a3, $s0, 2476
	vldx	$vr0, $a1, $a3
	vstx	$vr0, $a2, $a3
.LBB33_14:
	stptr.d	$a2, $a0, 6552
	stptr.d	$a2, $a1, 6552
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end33:
	.size	dpb_combine_field_yuv, .Lfunc_end33-dpb_combine_field_yuv
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function dpb_combine_field
.LCPI34_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	dpb_combine_field
	.p2align	5
	.type	dpb_combine_field,@function
dpb_combine_field:                      # @dpb_combine_field
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(dpb_combine_field_yuv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(UnifiedOneForthPix)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(listXsize)
	addi.d	$a0, $a0, %pc_lo12(listXsize)
	ld.w	$a5, $a0, 4
	blez	$a5, .LBB34_5
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $fp, 48
	ld.d	$a2, $fp, 56
	ld.d	$a3, $fp, 40
	addi.d	$a4, $a5, 1
	ori	$a6, $zero, 15
	bstrpick.d	$a4, $a4, 31, 1
	bgeu	$a5, $a6, .LBB34_39
# %bb.2:
	move	$a5, $zero
.LBB34_3:                               # %scalar.ph.preheader
	slli.d	$a6, $a5, 4
	addi.d	$a6, $a6, 288
	add.d	$a1, $a1, $a6
	add.d	$a2, $a2, $a6
	alsl.d	$a3, $a5, $a3, 3
	addi.d	$a3, $a3, 288
	sub.d	$a4, $a4, $a5
	addi.w	$a5, $zero, -2
	.p2align	4, , 16
.LBB34_4:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a1, 0
	ld.d	$a7, $a2, 0
	srli.d	$t0, $a6, 63
	add.d	$a6, $a6, $t0
	and	$a6, $a6, $a5
	srli.d	$t0, $a7, 63
	add.d	$a7, $a7, $t0
	and	$a7, $a7, $a5
	slt	$t0, $a6, $a7
	masknez	$a7, $a7, $t0
	maskeqz	$a6, $a6, $t0
	or	$a6, $a6, $a7
	st.d	$a6, $a3, 0
	addi.d	$a1, $a1, 16
	addi.d	$a2, $a2, 16
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB34_4
.LBB34_5:                               # %.preheader167
	ld.w	$a3, $a0, 0
	blez	$a3, .LBB34_10
# %bb.6:                                # %.lr.ph170
	ld.d	$t1, $fp, 48
	ld.d	$a0, $fp, 56
	ld.d	$a1, $fp, 40
	addi.d	$a2, $a3, 1
	ori	$a4, $zero, 15
	bstrpick.d	$a2, $a2, 31, 1
	bgeu	$a3, $a4, .LBB34_44
# %bb.7:
	move	$a5, $zero
.LBB34_8:                               # %scalar.ph203.preheader
	slli.d	$a3, $a5, 4
	addi.d	$a3, $a3, 24
	alsl.d	$a1, $a5, $a1, 3
	addi.d	$a1, $a1, 24
	sub.d	$a2, $a2, $a5
	addi.w	$a4, $zero, -2
	.p2align	4, , 16
.LBB34_9:                               # %scalar.ph203
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a5, $t1, $a3
	ldx.d	$a6, $a0, $a3
	srli.d	$a7, $a5, 63
	add.d	$a5, $a5, $a7
	and	$a5, $a5, $a4
	srli.d	$a7, $a6, 63
	add.d	$a6, $a6, $a7
	and	$a6, $a6, $a4
	slt	$a7, $a5, $a6
	masknez	$a6, $a6, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $a6
	st.d	$a5, $a1, 0
	addi.d	$a3, $a3, 16
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB34_9
	b	.LBB34_11
.LBB34_10:                              # %.preheader167..preheader_crit_edge
	ld.d	$t1, $fp, 48
.LBB34_11:                              # %.preheader
	ldptr.w	$a1, $t1, 6396
	ori	$a0, $zero, 4
	blt	$a1, $a0, .LBB34_38
# %bb.12:                               # %.lr.ph174
	move	$a1, $zero
	lu12i.w	$a2, 131071
	ori	$a2, $a2, 4094
	ori	$a3, $zero, 1
	b	.LBB34_14
	.p2align	4, , 16
.LBB34_13:                              # %._crit_edge
                                        #   in Loop: Header=BB34_14 Depth=1
	ldptr.w	$a4, $t1, 6396
	addi.d	$a1, $a1, 1
	bstrpick.d	$a5, $a4, 62, 61
	add.w	$a4, $a4, $a5
	srai.d	$a4, $a4, 2
	bge	$a1, $a4, .LBB34_38
.LBB34_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_17 Depth 2
	ldptr.w	$a4, $t1, 6392
	blt	$a4, $a0, .LBB34_13
# %bb.15:                               # %.lr.ph172
                                        #   in Loop: Header=BB34_14 Depth=1
	move	$a4, $zero
	move	$a5, $zero
	srli.d	$a6, $a1, 1
	and	$a6, $a6, $a2
	move	$a7, $a1
	bstrins.d	$a7, $a6, 63, 2
	ori	$a6, $a7, 4
	slli.d	$a6, $a6, 3
	slli.d	$a7, $a7, 3
	slli.d	$t0, $a1, 3
	b	.LBB34_17
	.p2align	4, , 16
.LBB34_16:                              #   in Loop: Header=BB34_17 Depth=2
	ld.d	$t2, $fp, 48
	ld.d	$t1, $t1, 8
	ldptr.d	$t2, $t2, 6528
	ldx.d	$t1, $t1, $a6
	ldx.d	$t2, $t2, $t0
	stx.d	$t5, $t1, $a4
	stx.b	$a3, $t2, $a5
	ld.d	$t1, $fp, 56
	ldptr.d	$t1, $t1, 6528
	ldx.d	$t1, $t1, $t0
	stx.b	$a3, $t1, $a5
	ld.d	$t1, $fp, 48
	ldptr.w	$t2, $t1, 6392
	addi.d	$a5, $a5, 1
	bstrpick.d	$t3, $t2, 62, 61
	add.w	$t2, $t2, $t3
	srai.d	$t2, $t2, 2
	addi.d	$a4, $a4, 8
	bge	$a5, $t2, .LBB34_13
.LBB34_17:                              #   Parent Loop BB34_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $fp, 40
	ldptr.d	$t1, $t1, 6528
	ldx.d	$t1, $t1, $a6
	stx.b	$a3, $t1, $a5
	ld.d	$t1, $fp, 40
	ldptr.d	$t1, $t1, 6528
	ldx.d	$t1, $t1, $a7
	stx.b	$a3, $t1, $a5
	ld.d	$t1, $fp, 48
	ldptr.d	$t2, $t1, 6512
	ld.d	$t3, $fp, 40
	ld.d	$t4, $t2, 0
	ldptr.d	$t5, $t3, 6512
	ldx.d	$t4, $t4, $t0
	ld.d	$t6, $t5, 0
	ldx.d	$t4, $t4, $a4
	ldx.d	$t6, $t6, $a7
	ld.h	$t7, $t4, 0
	ldx.d	$t6, $t6, $a4
	ld.d	$t2, $t2, 8
	st.h	$t7, $t6, 0
	ldx.d	$t2, $t2, $t0
	ld.d	$t5, $t5, 8
	ld.h	$t4, $t4, 2
	ldx.d	$t2, $t2, $a4
	ldx.d	$t5, $t5, $a7
	st.h	$t4, $t6, 2
	ldptr.d	$t1, $t1, 6488
	ld.h	$t4, $t2, 0
	ldx.d	$t5, $t5, $a4
	ld.d	$t1, $t1, 0
	ldptr.d	$t3, $t3, 6488
	st.h	$t4, $t5, 0
	ld.h	$t2, $t2, 2
	ldx.d	$t1, $t1, $t0
	ld.d	$t3, $t3, 0
	st.h	$t2, $t5, 2
	ldx.b	$t1, $t1, $a5
	ldx.d	$t2, $t3, $a7
	stx.b	$t1, $t2, $a5
	ld.d	$t2, $fp, 48
	ldptr.d	$t2, $t2, 6488
	ld.d	$t3, $fp, 40
	ld.d	$t2, $t2, 8
	ldptr.d	$t3, $t3, 6488
	ldx.d	$t2, $t2, $t0
	ld.d	$t3, $t3, 8
	ldx.b	$t2, $t2, $a5
	ldx.d	$t3, $t3, $a7
	stx.b	$t2, $t3, $a5
	ld.d	$t4, $fp, 48
	alsl.d	$t3, $t1, $t4, 3
	bltz	$t1, .LBB34_19
# %bb.18:                               #   in Loop: Header=BB34_17 Depth=2
	ld.d	$t6, $t3, 24
	b	.LBB34_20
	.p2align	4, , 16
.LBB34_19:                              #   in Loop: Header=BB34_17 Depth=2
	move	$t6, $zero
.LBB34_20:                              #   in Loop: Header=BB34_17 Depth=2
	ldptr.d	$t5, $t4, 6504
	ld.d	$t7, $t5, 0
	ldx.d	$t7, $t7, $t0
	stx.d	$t6, $t7, $a4
	alsl.d	$t4, $t2, $t4, 3
	bltz	$t2, .LBB34_23
# %bb.21:                               #   in Loop: Header=BB34_17 Depth=2
	ld.d	$t6, $t4, 288
	ld.d	$t5, $t5, 8
	ldx.d	$t5, $t5, $t0
	stx.d	$t6, $t5, $a4
	bltz	$t1, .LBB34_24
.LBB34_22:                              #   in Loop: Header=BB34_17 Depth=2
	ld.d	$t5, $t3, 1608
	b	.LBB34_25
	.p2align	4, , 16
.LBB34_23:                              #   in Loop: Header=BB34_17 Depth=2
	move	$t6, $zero
	ld.d	$t5, $t5, 8
	ldx.d	$t5, $t5, $t0
	stx.d	$t6, $t5, $a4
	bgez	$t1, .LBB34_22
.LBB34_24:                              #   in Loop: Header=BB34_17 Depth=2
	move	$t5, $zero
.LBB34_25:                              #   in Loop: Header=BB34_17 Depth=2
	ld.d	$t1, $fp, 40
	ldptr.d	$t3, $t1, 6504
	ld.d	$t6, $t3, 0
	ldx.d	$t6, $t6, $a7
	stx.d	$t5, $t6, $a4
	bltz	$t2, .LBB34_27
# %bb.26:                               #   in Loop: Header=BB34_17 Depth=2
	ld.d	$t2, $t4, 1872
	b	.LBB34_28
	.p2align	4, , 16
.LBB34_27:                              #   in Loop: Header=BB34_17 Depth=2
	move	$t2, $zero
.LBB34_28:                              #   in Loop: Header=BB34_17 Depth=2
	ld.d	$t4, $fp, 56
	ldptr.d	$t5, $t4, 6512
	ld.d	$t6, $t5, 0
	ldptr.d	$t7, $t1, 6512
	ldx.d	$t6, $t6, $t0
	ld.d	$t8, $t7, 0
	ldx.d	$t6, $t6, $a4
	ldx.d	$t8, $t8, $a6
	ld.h	$s0, $t6, 0
	ldx.d	$t8, $t8, $a4
	ld.d	$t5, $t5, 8
	st.h	$s0, $t8, 0
	ld.h	$t6, $t6, 2
	ldx.d	$t5, $t5, $t0
	ld.d	$t7, $t7, 8
	st.h	$t6, $t8, 2
	ldx.d	$t5, $t5, $a4
	ldx.d	$t6, $t7, $a6
	ld.d	$t3, $t3, 8
	ldptr.d	$t4, $t4, 6488
	ld.h	$t7, $t5, 0
	ldx.d	$t6, $t6, $a4
	ldx.d	$t3, $t3, $a7
	ld.d	$t4, $t4, 0
	ldptr.d	$t1, $t1, 6488
	st.h	$t7, $t6, 0
	ld.h	$t5, $t5, 2
	ldx.d	$t4, $t4, $t0
	ld.d	$t7, $t1, 0
	stx.d	$t2, $t3, $a4
	st.h	$t5, $t6, 2
	ldx.b	$t1, $t4, $a5
	ldx.d	$t2, $t7, $a6
	stx.b	$t1, $t2, $a5
	ld.d	$t2, $fp, 56
	ldptr.d	$t2, $t2, 6488
	ld.d	$t3, $fp, 40
	ld.d	$t2, $t2, 8
	ldptr.d	$t3, $t3, 6488
	ldx.d	$t2, $t2, $t0
	ld.d	$t3, $t3, 8
	ldx.b	$t2, $t2, $a5
	ldx.d	$t3, $t3, $a6
	stx.b	$t2, $t3, $a5
	ld.d	$t4, $fp, 56
	alsl.d	$t3, $t1, $t4, 3
	bltz	$t1, .LBB34_30
# %bb.29:                               #   in Loop: Header=BB34_17 Depth=2
	ld.d	$t6, $t3, 24
	b	.LBB34_31
	.p2align	4, , 16
.LBB34_30:                              #   in Loop: Header=BB34_17 Depth=2
	move	$t6, $zero
.LBB34_31:                              #   in Loop: Header=BB34_17 Depth=2
	ldptr.d	$t5, $t4, 6504
	ld.d	$t7, $t5, 0
	ldx.d	$t7, $t7, $t0
	stx.d	$t6, $t7, $a4
	alsl.d	$t4, $t2, $t4, 3
	bltz	$t2, .LBB34_33
# %bb.32:                               #   in Loop: Header=BB34_17 Depth=2
	ld.d	$t6, $t4, 288
	b	.LBB34_34
	.p2align	4, , 16
.LBB34_33:                              #   in Loop: Header=BB34_17 Depth=2
	move	$t6, $zero
.LBB34_34:                              #   in Loop: Header=BB34_17 Depth=2
	ld.d	$t5, $t5, 8
	ldx.d	$t7, $t5, $t0
	addi.w	$t5, $zero, -1
	stx.d	$t6, $t7, $a4
	move	$t6, $t5
	bltz	$t1, .LBB34_36
# %bb.35:                               #   in Loop: Header=BB34_17 Depth=2
	ld.d	$t6, $t3, 1608
.LBB34_36:                              #   in Loop: Header=BB34_17 Depth=2
	ld.d	$t1, $fp, 40
	ldptr.d	$t1, $t1, 6504
	ld.d	$t3, $t1, 0
	ldx.d	$t3, $t3, $a6
	stx.d	$t6, $t3, $a4
	bltz	$t2, .LBB34_16
# %bb.37:                               #   in Loop: Header=BB34_17 Depth=2
	ld.d	$t5, $t4, 1872
	b	.LBB34_16
.LBB34_38:                              # %._crit_edge175
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB34_39:                              # %vector.memcheck
	addi.d	$a6, $a1, 288
	addi.d	$a7, $a3, 288
	alsl.d	$a5, $a4, $a3, 3
	addi.d	$t1, $a5, 288
	slli.d	$a5, $a4, 4
	addi.d	$t2, $a5, 280
	add.d	$a5, $a1, $t2
	sltu	$a5, $a7, $a5
	sltu	$t0, $a6, $t1
	and	$t0, $a5, $t0
	move	$a5, $zero
	bnez	$t0, .LBB34_3
# %bb.40:                               # %vector.memcheck
	addi.d	$t0, $a2, 288
	add.d	$t2, $a2, $t2
	sltu	$t2, $a7, $t2
	sltu	$t1, $t0, $t1
	and	$t1, $t2, $t1
	bnez	$t1, .LBB34_3
# %bb.41:                               # %vector.ph
	pcalau12i	$a5, %pc_hi20(.LCPI34_0)
	vld	$vr0, $a5, %pc_lo12(.LCPI34_0)
	bstrpick.d	$a5, $a4, 29, 1
	slli.d	$a5, $a5, 1
	move	$t1, $a5
	.p2align	4, , 16
.LBB34_42:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vslli.d	$vr1, $vr0, 1
	vpickve2gr.d	$t2, $vr1, 0
	slli.d	$t2, $t2, 3
	vpickve2gr.d	$t3, $vr1, 1
	slli.d	$t3, $t3, 3
	ldx.d	$t4, $a6, $t2
	ldx.d	$t5, $a6, $t3
	vinsgr2vr.d	$vr1, $t4, 0
	vinsgr2vr.d	$vr1, $t5, 1
	vsrli.d	$vr2, $vr1, 63
	ldx.d	$t2, $t0, $t2
	ldx.d	$t3, $t0, $t3
	vadd.d	$vr1, $vr1, $vr2
	vbitclri.d	$vr1, $vr1, 0
	vinsgr2vr.d	$vr2, $t2, 0
	vinsgr2vr.d	$vr2, $t3, 1
	vsrli.d	$vr3, $vr2, 63
	vadd.d	$vr2, $vr2, $vr3
	vbitclri.d	$vr2, $vr2, 0
	vmin.d	$vr1, $vr1, $vr2
	vst	$vr1, $a7, 0
	vaddi.du	$vr0, $vr0, 2
	addi.d	$t1, $t1, -2
	addi.d	$a7, $a7, 16
	bnez	$t1, .LBB34_42
# %bb.43:                               # %middle.block
	bne	$a5, $a4, .LBB34_3
	b	.LBB34_5
.LBB34_44:                              # %vector.memcheck192
	addi.d	$a3, $t1, 24
	addi.d	$a4, $a1, 24
	alsl.d	$a5, $a2, $a1, 3
	addi.d	$a7, $a5, 24
	slli.d	$a5, $a2, 4
	addi.d	$t0, $a5, 16
	add.d	$a5, $t1, $t0
	sltu	$a5, $a4, $a5
	sltu	$a6, $a3, $a7
	and	$a6, $a5, $a6
	move	$a5, $zero
	bnez	$a6, .LBB34_8
# %bb.45:                               # %vector.memcheck192
	addi.d	$a6, $a0, 24
	add.d	$t0, $a0, $t0
	sltu	$t0, $a4, $t0
	sltu	$a7, $a6, $a7
	and	$a7, $t0, $a7
	bnez	$a7, .LBB34_8
# %bb.46:                               # %vector.ph205
	pcalau12i	$a5, %pc_hi20(.LCPI34_0)
	vld	$vr0, $a5, %pc_lo12(.LCPI34_0)
	bstrpick.d	$a5, $a2, 29, 1
	slli.d	$a5, $a5, 1
	move	$a7, $a5
	.p2align	4, , 16
.LBB34_47:                              # %vector.body208
                                        # =>This Inner Loop Header: Depth=1
	vslli.d	$vr1, $vr0, 1
	vpickve2gr.d	$t0, $vr1, 0
	slli.d	$t0, $t0, 3
	vpickve2gr.d	$t2, $vr1, 1
	slli.d	$t2, $t2, 3
	ldx.d	$t3, $a3, $t0
	ldx.d	$t4, $a3, $t2
	vinsgr2vr.d	$vr1, $t3, 0
	vinsgr2vr.d	$vr1, $t4, 1
	vsrli.d	$vr2, $vr1, 63
	ldx.d	$t0, $a6, $t0
	ldx.d	$t2, $a6, $t2
	vadd.d	$vr1, $vr1, $vr2
	vbitclri.d	$vr1, $vr1, 0
	vinsgr2vr.d	$vr2, $t0, 0
	vinsgr2vr.d	$vr2, $t2, 1
	vsrli.d	$vr3, $vr2, 63
	vadd.d	$vr2, $vr2, $vr3
	vbitclri.d	$vr2, $vr2, 0
	vmin.d	$vr1, $vr1, $vr2
	vst	$vr1, $a4, 0
	vaddi.du	$vr0, $vr0, 2
	addi.d	$a7, $a7, -2
	addi.d	$a4, $a4, 16
	bnez	$a7, .LBB34_47
# %bb.48:                               # %middle.block213
	bne	$a5, $a2, .LBB34_8
	b	.LBB34_11
.Lfunc_end34:
	.size	dpb_combine_field, .Lfunc_end34-dpb_combine_field
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
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 2
	vrepli.b	$vr0, 0
	beq	$a1, $a2, .LBB35_2
# %bb.1:
	ori	$a2, $zero, 4
	bne	$a1, $a2, .LBB35_3
.LBB35_2:
	st.d	$zero, $fp, 72
	vst	$vr0, $fp, 56
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB35_9
	b	.LBB35_16
.LBB35_3:
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	lu12i.w	$a1, 3
	ori	$a1, $a1, 2168
	ldx.w	$a0, $a0, $a1
	addi.w	$s0, $a0, 1
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 56
	bnez	$a0, .LBB35_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB35_5:
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 64
	bnez	$a0, .LBB35_7
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB35_7:
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 72
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	beqz	$a0, .LBB35_15
# %bb.8:
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB35_16
.LBB35_9:
	lu12i.w	$a1, 3
	ori	$a1, $a1, 2172
	ldx.w	$a0, $a0, $a1
	addi.w	$s0, $a0, 1
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 88
	bnez	$a0, .LBB35_11
# %bb.10:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB35_11:
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 96
	bnez	$a0, .LBB35_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB35_13:
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 104
	bnez	$a0, .LBB35_17
# %bb.14:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(no_mem_exit)
	jr	$t8
.LBB35_15:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB35_9
.LBB35_16:
	st.d	$zero, $fp, 104
	vst	$vr0, $fp, 88
.LBB35_17:
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end35:
	.size	alloc_ref_pic_list_reordering_buffer, .Lfunc_end35-alloc_ref_pic_list_reordering_buffer
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
	ld.d	$a0, $a0, 56
	beqz	$a0, .LBB36_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB36_2:
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB36_4
# %bb.3:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB36_4:
	ld.d	$a0, $fp, 72
	addi.d	$s0, $fp, 56
	beqz	$a0, .LBB36_6
# %bb.5:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB36_6:
	ld.d	$a0, $fp, 88
	st.d	$zero, $s0, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vst	$vr0, $s0, 0
	beqz	$a0, .LBB36_8
# %bb.7:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB36_8:
	ld.d	$a0, $fp, 96
	beqz	$a0, .LBB36_10
# %bb.9:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB36_10:
	ld.d	$a0, $fp, 104
	addi.d	$fp, $fp, 88
	beqz	$a0, .LBB36_12
# %bb.11:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB36_12:
	st.d	$zero, $fp, 16
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $fp, 0
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end36:
	.size	free_ref_pic_list_reordering_buffer, .Lfunc_end36-free_ref_pic_list_reordering_buffer
                                        # -- End function
	.globl	fill_frame_num_gap              # -- Begin function fill_frame_num_gap
	.p2align	5
	.type	fill_frame_num_gap,@function
fill_frame_num_gap:                     # @fill_frame_num_gap
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
	pcalau12i	$a1, %pc_hi20(log2_max_frame_num_minus4)
	ld.w	$a1, $a1, %pc_lo12(log2_max_frame_num_minus4)
	move	$fp, $a0
	addi.d	$a0, $a1, 4
	ori	$s0, $zero, 1
	sll.w	$s1, $s0, $a0
	lu12i.w	$a0, 3
	ori	$a1, $a0, 3144
	ldx.w	$a1, $fp, $a1
	ori	$a0, $a0, 3072
	ldptr.w	$s3, $fp, 15332
	ldx.w	$s2, $fp, $a0
	addi.w	$a0, $a1, 1
	mod.w	$s4, $a0, $s1
	stptr.w	$s0, $fp, 15360
	beq	$s3, $s4, .LBB37_3
# %bb.1:                                # %.lr.ph
	ori	$s5, $zero, 1
	lu32i.d	$s5, 1
	.p2align	4, , 16
.LBB37_2:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, 52
	ld.w	$a2, $fp, 68
	ld.w	$a3, $fp, 64
	ld.w	$a4, $fp, 80
	move	$a0, $zero
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	stptr.w	$s0, $a0, 6428
	stptr.w	$s4, $a0, 6364
	stptr.d	$s5, $a0, 6384
	stptr.w	$zero, $fp, 15364
	pcaddu18i	$ra, %call36(store_picture_in_dpb)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s4, 1
	mod.w	$s4, $a0, $s1
	bne	$s3, $s4, .LBB37_2
.LBB37_3:                               # %._crit_edge
	stptr.w	$s2, $fp, 15360
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
.Lfunc_end37:
	.size	fill_frame_num_gap, .Lfunc_end37-fill_frame_num_gap
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
	bnez	$a0, .LBB38_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB38_2:
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
	beqz	$fp, .LBB38_4
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
.LBB38_4:
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
.Lfunc_end38:
	.size	alloc_colocated, .Lfunc_end38-alloc_colocated
                                        # -- End function
	.globl	free_colocated                  # -- Begin function free_colocated
	.p2align	5
	.type	free_colocated,@function
free_colocated:                         # @free_colocated
# %bb.0:
	beqz	$a0, .LBB39_11
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
	beqz	$a0, .LBB39_3
# %bb.2:
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 1624
.LBB39_3:
	ldptr.d	$a0, $fp, 4872
	beqz	$a0, .LBB39_5
# %bb.4:
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
	stptr.d	$zero, $fp, 4872
.LBB39_5:
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB39_10
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
	beqz	$a0, .LBB39_8
# %bb.7:
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
	stptr.d	$zero, $fp, 3240
.LBB39_8:
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
	beqz	$a0, .LBB39_10
# %bb.9:
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
.LBB39_10:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB39_11:
	ret
.Lfunc_end39:
	.size	free_colocated, .Lfunc_end39-free_colocated
                                        # -- End function
	.globl	compute_colocated               # -- Begin function compute_colocated
	.p2align	5
	.type	compute_colocated,@function
compute_colocated:                      # @compute_colocated
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
	ld.d	$a2, $a1, 8
	ld.d	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	ld.d	$s5, $a3, 0
	ldptr.w	$a4, $s5, 15268
	beqz	$a4, .LBB40_2
# %bb.1:
	ld.d	$a4, $a1, 24
	ld.d	$a5, $a1, 40
	ld.d	$a7, $a4, 0
	ld.d	$a6, $a5, 0
	b	.LBB40_8
.LBB40_2:
	ld.w	$a4, $s5, 24
	beqz	$a4, .LBB40_7
# %bb.3:
	ld.w	$a5, $a2, 0
	beq	$a4, $a5, .LBB40_7
# %bb.4:
	ldptr.w	$a5, $a2, 6428
	beqz	$a5, .LBB40_7
# %bb.5:
	ori	$a5, $zero, 1
	bne	$a4, $a5, .LBB40_165
# %bb.6:
	ldptr.d	$a6, $a2, 6536
	b	.LBB40_166
.LBB40_7:
	move	$a6, $a2
	move	$a7, $a2
.LBB40_8:
	pcalau12i	$a4, %pc_hi20(active_sps)
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	ld.d	$t0, $a4, %pc_lo12(active_sps)
	ld.w	$t1, $t0, 1148
	lu12i.w	$a4, 1
	beqz	$t1, .LBB40_10
# %bb.9:
	ld.w	$t0, $t0, 1156
	beqz	$t0, .LBB40_24
.LBB40_10:
	ldptr.w	$fp, $a2, 6396
	ori	$t0, $zero, 4
	blt	$fp, $t0, .LBB40_24
# %bb.11:                               # %.lr.ph832
	move	$t1, $zero
	ori	$t6, $a4, 2392
	add.d	$t2, $a6, $t6
	ori	$t7, $a4, 2280
	add.d	$t3, $a6, $t7
	add.d	$t4, $a7, $t6
	add.d	$t5, $a7, $t7
	add.d	$t6, $a2, $t6
	ori	$t8, $a4, 2296
	ldx.w	$s5, $a2, $t8
	add.d	$t7, $a2, $t7
	lu12i.w	$t8, 262143
	ori	$t8, $t8, 4092
	b	.LBB40_14
	.p2align	4, , 16
.LBB40_12:                              # %._crit_edge.loopexit
                                        #   in Loop: Header=BB40_14 Depth=1
	ori	$a5, $a4, 2300
	ldx.w	$fp, $a2, $a5
.LBB40_13:                              # %._crit_edge
                                        #   in Loop: Header=BB40_14 Depth=1
	addi.d	$t1, $t1, 1
	bstrpick.d	$a5, $fp, 62, 61
	add.w	$a5, $fp, $a5
	srai.d	$a5, $a5, 2
	bge	$t1, $a5, .LBB40_23
.LBB40_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_18 Depth 2
	blt	$s5, $t0, .LBB40_13
# %bb.15:                               # %.lr.ph
                                        #   in Loop: Header=BB40_14 Depth=1
	move	$fp, $zero
	move	$s0, $zero
	bstrpick.d	$s1, $t1, 31, 1
	srli.d	$s2, $t1, 1
	and	$s2, $s2, $t8
	add.w	$s2, $s2, $s1
	addi.w	$s3, $s2, 4
	slli.d	$s4, $t1, 3
	b	.LBB40_18
	.p2align	4, , 16
.LBB40_16:                              #   in Loop: Header=BB40_18 Depth=2
	ldptr.d	$a5, $a2, 6512
	ld.d	$s5, $a5, 0
	ld.d	$s6, $a0, 1616
	ldx.d	$s5, $s5, $s4
	ld.d	$s7, $s6, 0
	ldx.d	$s5, $s5, $fp
	ldx.d	$s7, $s7, $s4
	ld.h	$s8, $s5, 0
	ldx.d	$s7, $s7, $fp
	ld.d	$a5, $a5, 8
	st.h	$s8, $s7, 0
	ldx.d	$a5, $a5, $s4
	ld.d	$s6, $s6, 8
	ld.h	$s5, $s5, 2
	ldx.d	$a5, $a5, $fp
	ldx.d	$s6, $s6, $s4
	st.h	$s5, $s7, 2
	ldptr.d	$s5, $a2, 6488
	ld.h	$s7, $a5, 0
	ldx.d	$s6, $s6, $fp
	ld.d	$s5, $s5, 0
	ld.d	$s8, $a0, 1600
	st.h	$s7, $s6, 0
	ld.h	$a5, $a5, 2
	ldx.d	$s5, $s5, $s4
	ld.d	$s7, $s8, 0
	st.h	$a5, $s6, 2
	ldx.b	$a5, $s5, $s0
	ldx.d	$s5, $s7, $s4
	stx.b	$a5, $s5, $s0
	move	$s8, $t6
	move	$s7, $t1
	move	$s6, $t1
	move	$s5, $t7
.LBB40_17:                              #   in Loop: Header=BB40_18 Depth=2
	ld.d	$a5, $s8, 0
	ld.d	$a5, $a5, 8
	ld.d	$s8, $a0, 1600
	slli.d	$s7, $s7, 3
	ldx.d	$a5, $a5, $s7
	ld.d	$s7, $s8, 8
	ldx.b	$a5, $a5, $s0
	ldx.d	$s7, $s7, $s4
	stx.b	$a5, $s7, $s0
	ldptr.d	$a5, $a2, 6504
	ld.d	$s7, $a5, 0
	ld.d	$s8, $a0, 1608
	slli.d	$s6, $s6, 3
	ldx.d	$s7, $s7, $s6
	ld.d	$ra, $s8, 0
	ld.d	$a5, $a5, 8
	ldx.d	$s7, $s7, $fp
	ldx.d	$ra, $ra, $s4
	ldx.d	$a5, $a5, $s6
	ld.d	$s6, $s8, 8
	stx.d	$s7, $ra, $fp
	ldx.d	$a5, $a5, $fp
	ldx.d	$s6, $s6, $s4
	ld.b	$s7, $s5, 0
	stx.d	$a5, $s6, $fp
	ldptr.w	$s5, $a2, 6392
	ori	$a5, $a4, 768
	stx.b	$s7, $a0, $a5
	addi.d	$s0, $s0, 1
	bstrpick.d	$a5, $s5, 62, 61
	add.w	$a5, $s5, $a5
	srai.d	$a5, $a5, 2
	addi.d	$fp, $fp, 8
	bge	$s0, $a5, .LBB40_12
.LBB40_18:                              #   Parent Loop BB40_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $a3, 0
	ldptr.w	$s5, $s5, 15268
	beqz	$s5, .LBB40_16
# %bb.19:                               #   in Loop: Header=BB40_18 Depth=2
	ldptr.d	$s5, $a2, 6528
	ldx.d	$s5, $s5, $s4
	ldx.bu	$s5, $s5, $s0
	beqz	$s5, .LBB40_16
# %bb.20:                               #   in Loop: Header=BB40_18 Depth=2
	pcalau12i	$s5, %got_pc_hi20(enc_picture)
	ld.d	$s5, $s5, %got_pc_lo12(enc_picture)
	ld.d	$s5, $s5, 0
	ld.w	$s6, $s5, 4
	ld.w	$s7, $a6, 4
	ld.d	$s5, $a0, 1616
	sub.w	$s7, $s6, $s7
	ld.d	$s8, $s5, 0
	srai.d	$ra, $s7, 31
	ld.w	$a5, $a7, 4
	xor	$s7, $s7, $ra
	ldx.d	$s8, $s8, $s4
	sub.w	$s7, $s7, $ra
	sub.w	$a5, $s6, $a5
	srai.d	$ra, $a5, 31
	ldx.d	$s6, $s8, $fp
	xor	$a5, $a5, $ra
	sub.w	$a5, $a5, $ra
	bgeu	$a5, $s7, .LBB40_22
# %bb.21:                               #   in Loop: Header=BB40_18 Depth=2
	ldptr.d	$a5, $a7, 6512
	ld.d	$s7, $a5, 0
	slli.d	$s8, $s1, 3
	ldx.d	$s7, $s7, $s8
	ldx.d	$s7, $s7, $fp
	ld.h	$ra, $s7, 0
	ld.d	$a5, $a5, 8
	st.h	$ra, $s6, 0
	ldx.d	$a5, $a5, $s8
	ld.d	$s5, $s5, 8
	ld.h	$s7, $s7, 2
	ldx.d	$a5, $a5, $fp
	ldx.d	$s5, $s5, $s4
	st.h	$s7, $s6, 2
	ldptr.d	$s6, $a7, 6488
	ld.h	$s7, $a5, 0
	ldx.d	$s5, $s5, $fp
	ld.d	$s6, $s6, 0
	ld.d	$ra, $a0, 1600
	st.h	$s7, $s5, 0
	ld.h	$a5, $a5, 2
	ldx.d	$s6, $s6, $s8
	ld.d	$s7, $ra, 0
	st.h	$a5, $s5, 2
	ldx.b	$a5, $s6, $s0
	ldx.d	$s5, $s7, $s4
	stx.b	$a5, $s5, $s0
	move	$s8, $t4
	move	$s7, $s1
	move	$s6, $s2
	move	$s5, $t5
	b	.LBB40_17
.LBB40_22:                              #   in Loop: Header=BB40_18 Depth=2
	ldptr.d	$a5, $a6, 6512
	ld.d	$s7, $a5, 0
	slli.d	$s8, $s1, 3
	ldx.d	$s7, $s7, $s8
	ldx.d	$s7, $s7, $fp
	ld.h	$ra, $s7, 0
	ld.d	$a5, $a5, 8
	st.h	$ra, $s6, 0
	ldx.d	$a5, $a5, $s8
	ld.d	$s5, $s5, 8
	ld.h	$s7, $s7, 2
	ldx.d	$a5, $a5, $fp
	ldx.d	$s5, $s5, $s4
	st.h	$s7, $s6, 2
	ldptr.d	$s6, $a6, 6488
	ld.h	$s7, $a5, 0
	ldx.d	$s5, $s5, $fp
	ld.d	$s6, $s6, 0
	ld.d	$ra, $a0, 1600
	st.h	$s7, $s5, 0
	ld.h	$a5, $a5, 2
	ldx.d	$s6, $s6, $s8
	ld.d	$s7, $ra, 0
	st.h	$a5, $s5, 2
	ldx.b	$a5, $s6, $s0
	ldx.d	$s5, $s7, $s4
	stx.b	$a5, $s5, $s0
	move	$s8, $t2
	move	$s7, $s1
	move	$s6, $s3
	move	$s5, $t3
	b	.LBB40_17
.LBB40_23:                              # %.loopexit828.loopexit
	ld.d	$s5, $a3, 0
.LBB40_24:                              # %.loopexit828
	ld.w	$a5, $s5, 24
	bnez	$a5, .LBB40_26
# %bb.25:
	ldptr.w	$a5, $s5, 15268
	beqz	$a5, .LBB40_79
.LBB40_26:
	ldptr.w	$fp, $a2, 6396
	ori	$a5, $zero, 8
	blt	$fp, $a5, .LBB40_79
# %bb.27:                               # %.lr.ph839
	move	$t0, $zero
	ori	$a5, $a4, 2296
	ldx.w	$s4, $a2, $a5
	ori	$t1, $zero, 4
	ori	$t2, $zero, 255
	addi.w	$t3, $zero, -1
	ori	$t4, $a4, 2280
	ori	$t5, $a4, 768
	ori	$t6, $zero, 1
	ori	$t7, $zero, 2
	lu12i.w	$a5, 3
	ori	$t8, $a5, 2164
	b	.LBB40_30
	.p2align	4, , 16
.LBB40_28:                              # %._crit_edge836.loopexit
                                        #   in Loop: Header=BB40_30 Depth=1
	ori	$a5, $a4, 2300
	ldx.w	$fp, $a2, $a5
.LBB40_29:                              # %._crit_edge836
                                        #   in Loop: Header=BB40_30 Depth=1
	addi.d	$t0, $t0, 1
	bstrpick.d	$a5, $fp, 62, 60
	add.w	$a5, $fp, $a5
	srai.d	$a5, $a5, 3
	bge	$t0, $a5, .LBB40_79
.LBB40_30:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_36 Depth 2
	blt	$s4, $t1, .LBB40_29
# %bb.31:                               # %.lr.ph835
                                        #   in Loop: Header=BB40_30 Depth=1
	move	$fp, $zero
	move	$s0, $zero
	srli.d	$a5, $t0, 1
	bstrpick.d	$s1, $t0, 30, 1
	bstrins.d	$a5, $s1, 63, 1
	slli.d	$s1, $t0, 4
	slli.d	$s2, $a5, 3
	slli.d	$s3, $t0, 3
	b	.LBB40_36
.LBB40_32:                              # %.thread978
                                        #   in Loop: Header=BB40_36 Depth=2
	ori	$s4, $zero, 1
.LBB40_33:                              #   in Loop: Header=BB40_36 Depth=2
	ldptr.d	$a5, $a0, 3240
	ldx.d	$a5, $a5, $s3
	stx.b	$s4, $a5, $s0
	ld.d	$s5, $a3, 0
	ldx.w	$s4, $s5, $t8
.LBB40_34:                              #   in Loop: Header=BB40_36 Depth=2
	beqz	$s4, .LBB40_45
.LBB40_35:                              #   in Loop: Header=BB40_36 Depth=2
	ldptr.w	$s4, $a2, 6392
	addi.d	$s0, $s0, 1
	bstrpick.d	$a5, $s4, 62, 61
	add.w	$a5, $s4, $a5
	srai.d	$a5, $a5, 2
	addi.d	$fp, $fp, 8
	bge	$s0, $a5, .LBB40_28
.LBB40_36:                              #   Parent Loop BB40_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldptr.w	$a5, $s5, 15268
	srli.d	$s5, $s0, 1
	bstrpick.d	$s4, $s0, 30, 1
	bstrins.d	$s5, $s4, 63, 1
	slli.d	$s4, $s5, 3
	beqz	$a5, .LBB40_43
# %bb.37:                               #   in Loop: Header=BB40_36 Depth=2
	ldptr.d	$a5, $a6, 6512
	ld.d	$s6, $a5, 0
	ldptr.d	$s7, $a0, 4848
	ldx.d	$s6, $s6, $s2
	ld.d	$s8, $s7, 0
	ldx.d	$s6, $s6, $s4
	ldx.d	$s8, $s8, $s3
	ld.h	$ra, $s6, 0
	ldx.d	$s8, $s8, $fp
	ld.d	$a5, $a5, 8
	st.h	$ra, $s8, 0
	ldx.d	$a5, $a5, $s2
	ld.d	$s7, $s7, 8
	ld.h	$s6, $s6, 2
	ldx.d	$a5, $a5, $s4
	ldx.d	$s7, $s7, $s3
	st.h	$s6, $s8, 2
	ldptr.d	$s6, $a6, 6488
	ld.h	$s8, $a5, 0
	ldx.d	$s7, $s7, $fp
	ld.d	$s6, $s6, 0
	ldptr.d	$ra, $a0, 4832
	st.h	$s8, $s7, 0
	ld.h	$a5, $a5, 2
	ldx.d	$s6, $s6, $s2
	ld.d	$s8, $ra, 0
	st.h	$a5, $s7, 2
	ldx.b	$a5, $s6, $s5
	ldx.d	$s6, $s8, $s3
	stx.b	$a5, $s6, $s0
	ldptr.d	$a5, $a6, 6488
	ld.d	$a5, $a5, 8
	ldptr.d	$s6, $a0, 4832
	ldx.d	$a5, $a5, $s2
	ld.d	$s6, $s6, 8
	ldx.b	$a5, $a5, $s5
	ldx.d	$s6, $s6, $s3
	stx.b	$a5, $s6, $s0
	ldptr.d	$a5, $a6, 6504
	ld.d	$s6, $a5, 0
	ldptr.d	$s7, $a0, 4840
	ldx.d	$s6, $s6, $s2
	ld.d	$s8, $s7, 0
	ld.d	$a5, $a5, 8
	ldx.d	$s6, $s6, $s4
	ldx.d	$s8, $s8, $s3
	ldx.d	$a5, $a5, $s2
	ld.d	$s7, $s7, 8
	ld.d	$ra, $a3, 0
	stx.d	$s6, $s8, $fp
	ldx.d	$a5, $a5, $s4
	ldx.d	$s6, $s7, $s3
	ldptr.w	$s7, $ra, 14452
	stx.d	$a5, $s6, $fp
	bne	$s7, $t6, .LBB40_63
# %bb.38:                               #   in Loop: Header=BB40_36 Depth=2
	ldptr.d	$s7, $a0, 4832
	ld.d	$a5, $s7, 0
	ldx.d	$a5, $a5, $s3
	ldptr.w	$s6, $a6, 6376
	ldx.bu	$s8, $a5, $s0
	bnez	$s6, .LBB40_47
# %bb.39:                               #   in Loop: Header=BB40_36 Depth=2
	bnez	$s8, .LBB40_47
# %bb.40:                               #   in Loop: Header=BB40_36 Depth=2
	ldptr.d	$a5, $a0, 4848
	ld.d	$a5, $a5, 0
	ldx.d	$a5, $a5, $s3
	ldx.d	$s6, $a5, $fp
	ld.h	$a5, $s6, 0
	ext.w.h	$s7, $a5
	srai.d	$s7, $s7, 15
	xor	$a5, $a5, $s7
	sub.d	$a5, $a5, $s7
	bstrpick.d	$a5, $a5, 15, 0
	bltu	$t6, $a5, .LBB40_61
# %bb.41:                               #   in Loop: Header=BB40_36 Depth=2
	ld.h	$a5, $s6, 2
	ext.w.h	$s6, $a5
	srai.d	$s6, $s6, 15
	xor	$a5, $a5, $s6
	sub.d	$a5, $a5, $s6
	bstrpick.d	$a5, $a5, 15, 0
	bgeu	$a5, $t7, .LBB40_61
# %bb.42:                               #   in Loop: Header=BB40_36 Depth=2
	move	$s6, $zero
	b	.LBB40_62
	.p2align	4, , 16
.LBB40_43:                              #   in Loop: Header=BB40_36 Depth=2
	ldptr.d	$a5, $a2, 6512
	ld.d	$s6, $a5, 0
	ld.d	$s7, $a0, 1616
	ldx.d	$s6, $s6, $s2
	ld.d	$s8, $s7, 0
	ldx.d	$s6, $s6, $s4
	ldx.d	$s8, $s8, $s3
	ld.h	$ra, $s6, 0
	ldx.d	$s8, $s8, $fp
	ld.d	$a5, $a5, 8
	st.h	$ra, $s8, 0
	ldx.d	$a5, $a5, $s2
	ld.d	$s7, $s7, 8
	ld.h	$s6, $s6, 2
	ldx.d	$a5, $a5, $s4
	ldx.d	$s7, $s7, $s3
	st.h	$s6, $s8, 2
	ldptr.d	$s6, $a2, 6488
	ld.h	$s8, $a5, 0
	ldx.d	$s7, $s7, $fp
	ld.d	$s6, $s6, 0
	ld.d	$ra, $a0, 1600
	st.h	$s8, $s7, 0
	ld.h	$a5, $a5, 2
	ldx.d	$s6, $s6, $s2
	ld.d	$s8, $ra, 0
	st.h	$a5, $s7, 2
	ldx.bu	$s7, $s6, $s5
	ldx.d	$s6, $s8, $s3
	beq	$s7, $t2, .LBB40_51
# %bb.44:                               #   in Loop: Header=BB40_36 Depth=2
	stx.b	$s7, $s6, $s0
	ldptr.d	$a5, $a2, 6504
	ld.d	$a5, $a5, 0
	ldx.d	$a5, $a5, $s2
	ldx.d	$s6, $a5, $s4
	b	.LBB40_52
	.p2align	4, , 16
.LBB40_45:                              #   in Loop: Header=BB40_36 Depth=2
	ldptr.d	$a5, $a2, 6528
	ldx.d	$a5, $a5, $s1
	ldx.bu	$a5, $a5, $s0
	bnez	$a5, .LBB40_35
# %bb.46:                               #   in Loop: Header=BB40_36 Depth=2
	ldptr.d	$a5, $a0, 3232
	ld.d	$s4, $a5, 0
	ldx.d	$s4, $s4, $s3
	ldx.d	$s4, $s4, $fp
	ld.hu	$s6, $s4, 2
	ld.d	$a5, $a5, 8
	srli.d	$s7, $s6, 15
	ldx.d	$a5, $a5, $s3
	add.d	$s6, $s6, $s7
	ext.w.h	$s6, $s6
	ldptr.d	$s7, $a0, 4848
	ldx.d	$a5, $a5, $fp
	srli.d	$s6, $s6, 1
	st.h	$s6, $s4, 2
	ld.d	$s4, $s7, 0
	ld.hu	$s6, $a5, 2
	ldx.d	$s4, $s4, $s3
	srli.d	$s8, $s6, 15
	add.d	$s6, $s6, $s8
	ext.w.h	$s6, $s6
	ldx.d	$s4, $s4, $fp
	srli.d	$s6, $s6, 1
	ld.d	$s7, $s7, 8
	st.h	$s6, $a5, 2
	ld.hu	$a5, $s4, 2
	ldx.d	$s6, $s7, $s3
	srli.d	$s7, $a5, 15
	add.d	$a5, $a5, $s7
	ldx.d	$s6, $s6, $fp
	ext.w.h	$a5, $a5
	srli.d	$a5, $a5, 1
	st.h	$a5, $s4, 2
	ld.hu	$a5, $s6, 2
	srli.d	$s4, $a5, 15
	add.d	$a5, $a5, $s4
	ext.w.h	$a5, $a5
	srli.d	$a5, $a5, 1
	st.h	$a5, $s6, 2
	b	.LBB40_35
.LBB40_47:                              # %._crit_edge903
                                        #   in Loop: Header=BB40_36 Depth=2
	ori	$s6, $zero, 1
	bne	$s8, $t2, .LBB40_62
# %bb.48:                               #   in Loop: Header=BB40_36 Depth=2
	ld.d	$a5, $s7, 8
	ldx.d	$a5, $a5, $s3
	ldx.bu	$a5, $a5, $s0
	bnez	$a5, .LBB40_62
# %bb.49:                               #   in Loop: Header=BB40_36 Depth=2
	ldptr.d	$a5, $a0, 4848
	ld.d	$a5, $a5, 8
	ldx.d	$a5, $a5, $s3
	ldx.d	$s7, $a5, $fp
	ld.h	$a5, $s7, 0
	ext.w.h	$s6, $a5
	srai.d	$s6, $s6, 15
	xor	$a5, $a5, $s6
	sub.d	$a5, $a5, $s6
	bstrpick.d	$a5, $a5, 15, 0
	ori	$s6, $zero, 1
	bltu	$s6, $a5, .LBB40_62
# %bb.50:                               #   in Loop: Header=BB40_36 Depth=2
	ld.h	$a5, $s7, 2
	ext.w.h	$s6, $a5
	srai.d	$s6, $s6, 15
	xor	$a5, $a5, $s6
	sub.d	$a5, $a5, $s6
	bstrpick.d	$a5, $a5, 15, 0
	sltu	$s6, $t6, $a5
	b	.LBB40_62
.LBB40_51:                              #   in Loop: Header=BB40_36 Depth=2
	stx.b	$t2, $s6, $s0
	move	$s6, $t3
.LBB40_52:                              #   in Loop: Header=BB40_36 Depth=2
	ld.d	$a5, $a0, 1608
	ldptr.d	$s7, $a2, 6488
	ld.d	$a5, $a5, 0
	ld.d	$s7, $s7, 8
	ld.d	$s8, $a0, 1600
	ldx.d	$a5, $a5, $s3
	ldx.d	$s7, $s7, $s2
	ld.d	$s8, $s8, 8
	stx.d	$s6, $a5, $fp
	ldx.bu	$s6, $s7, $s5
	ldx.d	$s5, $s8, $s3
	beq	$s6, $t2, .LBB40_54
# %bb.53:                               #   in Loop: Header=BB40_36 Depth=2
	stx.b	$s6, $s5, $s0
	ldptr.d	$a5, $a2, 6504
	ld.d	$a5, $a5, 8
	ldx.d	$a5, $a5, $s2
	ldx.d	$s4, $a5, $s4
	b	.LBB40_55
.LBB40_54:                              #   in Loop: Header=BB40_36 Depth=2
	stx.b	$t2, $s5, $s0
	move	$s4, $t3
.LBB40_55:                              #   in Loop: Header=BB40_36 Depth=2
	ld.d	$a5, $a0, 1608
	ld.d	$a5, $a5, 8
	ld.d	$s5, $a3, 0
	ldx.d	$a5, $a5, $s3
	ldx.w	$s6, $a2, $t4
	ldptr.w	$s7, $s5, 14452
	stx.d	$s4, $a5, $fp
	stx.b	$s6, $a0, $t5
	bne	$s7, $t6, .LBB40_35
# %bb.56:                               #   in Loop: Header=BB40_36 Depth=2
	ld.d	$s5, $a0, 1600
	ld.d	$a5, $s5, 0
	ldx.d	$a5, $a5, $s3
	ldx.bu	$s7, $a5, $s0
	andi	$a5, $s6, 255
	bnez	$a5, .LBB40_73
# %bb.57:                               #   in Loop: Header=BB40_36 Depth=2
	bnez	$s7, .LBB40_73
# %bb.58:                               #   in Loop: Header=BB40_36 Depth=2
	ld.d	$a5, $a0, 1616
	ld.d	$a5, $a5, 0
	ldx.d	$a5, $a5, $s3
	ldx.d	$s4, $a5, $fp
	ld.h	$a5, $s4, 0
	ext.w.h	$s5, $a5
	srai.d	$s5, $s5, 15
	xor	$a5, $a5, $s5
	sub.d	$a5, $a5, $s5
	bstrpick.d	$a5, $a5, 15, 0
	bltu	$t6, $a5, .LBB40_77
# %bb.59:                               #   in Loop: Header=BB40_36 Depth=2
	ld.h	$a5, $s4, 2
	ext.w.h	$s4, $a5
	srai.d	$s4, $s4, 15
	xor	$a5, $a5, $s4
	sub.d	$a5, $a5, $s4
	bstrpick.d	$a5, $a5, 15, 0
	bgeu	$a5, $t7, .LBB40_77
# %bb.60:                               #   in Loop: Header=BB40_36 Depth=2
	move	$s4, $zero
	b	.LBB40_78
.LBB40_61:                              # %.thread976
                                        #   in Loop: Header=BB40_36 Depth=2
	ori	$s6, $zero, 1
.LBB40_62:                              #   in Loop: Header=BB40_36 Depth=2
	ldptr.d	$a5, $a0, 4856
	ldx.d	$a5, $a5, $s3
	stx.b	$s6, $a5, $s0
.LBB40_63:                              #   in Loop: Header=BB40_36 Depth=2
	ldptr.d	$a5, $a7, 6512
	ld.d	$s6, $a5, 0
	ldptr.d	$s7, $a0, 3232
	ldx.d	$s6, $s6, $s2
	ld.d	$s8, $s7, 0
	ldx.d	$s6, $s6, $s4
	ldx.d	$s8, $s8, $s3
	ld.h	$ra, $s6, 0
	ldx.d	$s8, $s8, $fp
	ld.d	$a5, $a5, 8
	st.h	$ra, $s8, 0
	ldx.d	$a5, $a5, $s2
	ld.d	$s7, $s7, 8
	ld.h	$s6, $s6, 2
	ldx.d	$a5, $a5, $s4
	ldx.d	$s7, $s7, $s3
	st.h	$s6, $s8, 2
	ldptr.d	$s6, $a7, 6488
	ld.h	$s8, $a5, 0
	ldx.d	$s7, $s7, $fp
	ld.d	$s6, $s6, 0
	ldptr.d	$ra, $a0, 3216
	st.h	$s8, $s7, 0
	ld.h	$a5, $a5, 2
	ldx.d	$s6, $s6, $s2
	ld.d	$s8, $ra, 0
	st.h	$a5, $s7, 2
	ldx.b	$a5, $s6, $s5
	ldx.d	$s6, $s8, $s3
	stx.b	$a5, $s6, $s0
	ldptr.d	$a5, $a7, 6488
	ld.d	$a5, $a5, 8
	ldptr.d	$s6, $a0, 3216
	ldx.d	$a5, $a5, $s2
	ld.d	$s6, $s6, 8
	ldx.b	$a5, $a5, $s5
	ldx.d	$s5, $s6, $s3
	stx.b	$a5, $s5, $s0
	ldptr.d	$a5, $a7, 6504
	ld.d	$s5, $a5, 0
	ldptr.d	$s6, $a0, 3224
	ldx.d	$s5, $s5, $s2
	ld.d	$s7, $s6, 0
	ld.d	$a5, $a5, 8
	ldx.d	$s8, $s5, $s4
	ldx.d	$s7, $s7, $s3
	ldx.d	$a5, $a5, $s2
	ld.d	$s6, $s6, 8
	ld.d	$s5, $a3, 0
	stx.d	$s8, $s7, $fp
	ldx.d	$a5, $a5, $s4
	ldx.d	$s6, $s6, $s3
	ldptr.w	$s4, $s5, 14452
	stx.d	$a5, $s6, $fp
	bne	$s4, $t6, .LBB40_34
# %bb.64:                               #   in Loop: Header=BB40_36 Depth=2
	ldptr.d	$s5, $a0, 3216
	ld.d	$a5, $s5, 0
	ldx.d	$a5, $a5, $s3
	ldptr.w	$s4, $a7, 6376
	ldx.bu	$s6, $a5, $s0
	bnez	$s4, .LBB40_69
# %bb.65:                               #   in Loop: Header=BB40_36 Depth=2
	bnez	$s6, .LBB40_69
# %bb.66:                               #   in Loop: Header=BB40_36 Depth=2
	ldptr.d	$a5, $a0, 3232
	ld.d	$a5, $a5, 0
	ldx.d	$a5, $a5, $s3
	ldx.d	$s4, $a5, $fp
	ld.h	$a5, $s4, 0
	ext.w.h	$s5, $a5
	srai.d	$s5, $s5, 15
	xor	$a5, $a5, $s5
	sub.d	$a5, $a5, $s5
	bstrpick.d	$a5, $a5, 15, 0
	bltu	$t6, $a5, .LBB40_32
# %bb.67:                               #   in Loop: Header=BB40_36 Depth=2
	ld.h	$a5, $s4, 2
	ext.w.h	$s4, $a5
	srai.d	$s4, $s4, 15
	xor	$a5, $a5, $s4
	sub.d	$a5, $a5, $s4
	bstrpick.d	$a5, $a5, 15, 0
	bgeu	$a5, $t7, .LBB40_32
# %bb.68:                               #   in Loop: Header=BB40_36 Depth=2
	move	$s4, $zero
	b	.LBB40_33
.LBB40_69:                              # %._crit_edge909
                                        #   in Loop: Header=BB40_36 Depth=2
	ori	$s4, $zero, 1
	bne	$s6, $t2, .LBB40_33
# %bb.70:                               #   in Loop: Header=BB40_36 Depth=2
	ld.d	$a5, $s5, 8
	ldx.d	$a5, $a5, $s3
	ldx.bu	$a5, $a5, $s0
	bnez	$a5, .LBB40_33
# %bb.71:                               #   in Loop: Header=BB40_36 Depth=2
	ldptr.d	$a5, $a0, 3232
	ld.d	$a5, $a5, 8
	ldx.d	$a5, $a5, $s3
	ldx.d	$s5, $a5, $fp
	ld.h	$a5, $s5, 0
	ext.w.h	$s4, $a5
	srai.d	$s4, $s4, 15
	xor	$a5, $a5, $s4
	sub.d	$a5, $a5, $s4
	bstrpick.d	$a5, $a5, 15, 0
	ori	$s4, $zero, 1
	bltu	$s4, $a5, .LBB40_33
# %bb.72:                               #   in Loop: Header=BB40_36 Depth=2
	ld.h	$a5, $s5, 2
	ext.w.h	$s4, $a5
	srai.d	$s4, $s4, 15
	xor	$a5, $a5, $s4
	sub.d	$a5, $a5, $s4
	bstrpick.d	$a5, $a5, 15, 0
	sltu	$s4, $t6, $a5
	b	.LBB40_33
.LBB40_73:                              # %._crit_edge919
                                        #   in Loop: Header=BB40_36 Depth=2
	ori	$s4, $zero, 1
	bne	$s7, $t2, .LBB40_78
# %bb.74:                               #   in Loop: Header=BB40_36 Depth=2
	ld.d	$a5, $s5, 8
	ldx.d	$a5, $a5, $s3
	ldx.bu	$a5, $a5, $s0
	bnez	$a5, .LBB40_78
# %bb.75:                               #   in Loop: Header=BB40_36 Depth=2
	ld.d	$a5, $a0, 1616
	ld.d	$a5, $a5, 8
	ldx.d	$a5, $a5, $s3
	ldx.d	$s5, $a5, $fp
	ld.h	$a5, $s5, 0
	ext.w.h	$s4, $a5
	srai.d	$s4, $s4, 15
	xor	$a5, $a5, $s4
	sub.d	$a5, $a5, $s4
	bstrpick.d	$a5, $a5, 15, 0
	ori	$s4, $zero, 1
	bltu	$s4, $a5, .LBB40_78
# %bb.76:                               #   in Loop: Header=BB40_36 Depth=2
	ld.h	$a5, $s5, 2
	ext.w.h	$s4, $a5
	srai.d	$s4, $s4, 15
	xor	$a5, $a5, $s4
	sub.d	$a5, $a5, $s4
	bstrpick.d	$a5, $a5, 15, 0
	sltu	$s4, $t6, $a5
	b	.LBB40_78
.LBB40_77:                              # %.thread
                                        #   in Loop: Header=BB40_36 Depth=2
	ori	$s4, $zero, 1
.LBB40_78:                              #   in Loop: Header=BB40_36 Depth=2
	ld.d	$a5, $a0, 1624
	ldx.d	$a5, $a5, $s3
	stx.b	$s4, $a5, $s0
	ld.d	$s5, $a3, 0
	b	.LBB40_35
.LBB40_79:                              # %.loopexit827
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a7, $a5, %pc_lo12(active_sps)
	ld.w	$t0, $a7, 1148
	beqz	$t0, .LBB40_81
# %bb.80:
	ld.w	$a5, $a7, 1156
	beqz	$a5, .LBB40_94
.LBB40_81:
	ld.w	$a5, $s5, 24
	bnez	$a5, .LBB40_96
# %bb.82:                               # %.preheader825
	ldptr.w	$t5, $a2, 6396
	ori	$a6, $zero, 4
	blt	$t5, $a6, .LBB40_96
# %bb.83:                               # %.lr.ph845
	ori	$a5, $a4, 2448
	add.d	$a7, $a2, $a5
	ori	$a5, $a4, 2440
	add.d	$t0, $a2, $a5
	ori	$a5, $a4, 2296
	ldx.w	$s1, $a2, $a5
	lu12i.w	$a5, 262143
	ori	$t1, $a5, 4092
	ori	$t2, $a4, 2300
	pcalau12i	$a5, %got_pc_hi20(enc_picture)
	ld.d	$t3, $a5, %got_pc_lo12(enc_picture)
	move	$t4, $zero
	b	.LBB40_86
	.p2align	4, , 16
.LBB40_84:                              # %._crit_edge843.loopexit
                                        #   in Loop: Header=BB40_86 Depth=1
	ldx.w	$t5, $a2, $t2
.LBB40_85:                              # %._crit_edge843
                                        #   in Loop: Header=BB40_86 Depth=1
	addi.d	$t4, $t4, 1
	srai.d	$a5, $t5, 2
	bge	$t4, $a5, .LBB40_95
.LBB40_86:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_91 Depth 2
	blt	$s1, $a6, .LBB40_85
# %bb.87:                               # %.lr.ph842
                                        #   in Loop: Header=BB40_86 Depth=1
	move	$t5, $zero
	move	$t6, $zero
	srli.d	$a5, $t4, 1
	and	$t7, $a5, $t1
	add.d	$t7, $t7, $a5
	addi.d	$t8, $t7, 4
	slli.d	$fp, $t4, 3
	slli.d	$s0, $a5, 3
	b	.LBB40_91
	.p2align	4, , 16
.LBB40_88:                              #   in Loop: Header=BB40_91 Depth=2
	ldptr.d	$a5, $s1, 6512
	ld.d	$s4, $a5, 0
	ldx.d	$s4, $s4, $s0
	ldx.d	$s4, $s4, $t5
	ld.h	$s5, $s4, 0
	ld.d	$a5, $a5, 8
	st.h	$s5, $s3, 0
	ldx.d	$a5, $a5, $s0
	ld.d	$s2, $s2, 8
	ld.h	$s4, $s4, 2
	ldx.d	$a5, $a5, $t5
	ldx.d	$s2, $s2, $fp
	st.h	$s4, $s3, 2
	ldptr.d	$s1, $s1, 6488
	ld.h	$s3, $a5, 0
	ldx.d	$s2, $s2, $t5
	ld.d	$s1, $s1, 0
	ld.d	$s4, $a0, 1600
	st.h	$s3, $s2, 0
	ld.h	$a5, $a5, 2
	ldx.d	$s1, $s1, $s0
	ld.d	$s3, $s4, 0
	st.h	$a5, $s2, 2
	ldx.b	$a5, $s1, $t6
	ldx.d	$s1, $s3, $fp
	stx.b	$a5, $s1, $t6
	move	$s1, $a7
	move	$s2, $t8
.LBB40_89:                              # %.sink.split
                                        #   in Loop: Header=BB40_91 Depth=2
	ld.d	$a5, $s1, 0
	ldptr.d	$a5, $a5, 6488
	ld.d	$a5, $a5, 8
	ld.d	$s3, $a0, 1600
	ldx.d	$a5, $a5, $s0
	ld.d	$s3, $s3, 8
	ldx.b	$a5, $a5, $t6
	ldx.d	$s3, $s3, $fp
	stx.b	$a5, $s3, $t6
	ldptr.d	$a5, $a2, 6504
	ld.d	$s3, $a5, 0
	ld.d	$s4, $a0, 1608
	slli.d	$s2, $s2, 3
	ldx.d	$s3, $s3, $s2
	ld.d	$s5, $s4, 0
	ld.d	$a5, $a5, 8
	ldx.d	$s3, $s3, $t5
	ldx.d	$s5, $s5, $fp
	ldx.d	$a5, $a5, $s2
	ld.d	$s2, $s4, 8
	stx.d	$s3, $s5, $t5
	ld.d	$s1, $s1, 0
	ldx.d	$a5, $a5, $t5
	ldx.d	$s2, $s2, $fp
	ori	$s3, $a4, 2280
	ldx.b	$s1, $s1, $s3
	stx.d	$a5, $s2, $t5
	ori	$a5, $a4, 768
	stx.b	$s1, $a0, $a5
.LBB40_90:                              #   in Loop: Header=BB40_91 Depth=2
	ldptr.w	$s1, $a2, 6392
	addi.d	$t6, $t6, 1
	srai.d	$a5, $s1, 2
	addi.d	$t5, $t5, 8
	bge	$t6, $a5, .LBB40_84
.LBB40_91:                              #   Parent Loop BB40_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldptr.d	$a5, $a2, 6528
	ldx.d	$a5, $a5, $fp
	ldx.bu	$a5, $a5, $t6
	beqz	$a5, .LBB40_90
# %bb.92:                               #   in Loop: Header=BB40_91 Depth=2
	ld.d	$a5, $t3, 0
	ld.d	$s1, $a7, 0
	ld.w	$a5, $a5, 4
	ld.w	$s3, $s1, 4
	ld.d	$s2, $a0, 1616
	ld.d	$s4, $t0, 0
	sub.w	$s3, $a5, $s3
	ld.d	$s5, $s2, 0
	srai.d	$s6, $s3, 31
	ld.w	$s7, $s4, 4
	xor	$s3, $s3, $s6
	ldx.d	$s5, $s5, $fp
	sub.w	$s6, $s3, $s6
	sub.w	$a5, $a5, $s7
	srai.d	$s7, $a5, 31
	ldx.d	$s3, $s5, $t5
	xor	$a5, $a5, $s7
	sub.w	$a5, $a5, $s7
	bgeu	$a5, $s6, .LBB40_88
# %bb.93:                               #   in Loop: Header=BB40_91 Depth=2
	ldptr.d	$a5, $s4, 6512
	ld.d	$s1, $a5, 0
	ldx.d	$s1, $s1, $s0
	ldx.d	$s1, $s1, $t5
	ld.h	$s5, $s1, 0
	ld.d	$a5, $a5, 8
	st.h	$s5, $s3, 0
	ldx.d	$a5, $a5, $s0
	ld.d	$s2, $s2, 8
	ld.h	$s1, $s1, 2
	ldx.d	$a5, $a5, $t5
	ldx.d	$s2, $s2, $fp
	st.h	$s1, $s3, 2
	ldptr.d	$s1, $s4, 6488
	ld.h	$s3, $a5, 0
	ldx.d	$s2, $s2, $t5
	ld.d	$s1, $s1, 0
	ld.d	$s4, $a0, 1600
	st.h	$s3, $s2, 0
	ld.h	$a5, $a5, 2
	ldx.d	$s1, $s1, $s0
	ld.d	$s3, $s4, 0
	st.h	$a5, $s2, 2
	ldx.b	$a5, $s1, $t6
	ldx.d	$s1, $s3, $fp
	stx.b	$a5, $s1, $t6
	move	$s1, $t0
	move	$s2, $t7
	b	.LBB40_89
.LBB40_94:                              # %.loopexit826.thread
	ori	$a5, $a4, 2280
	ldx.b	$a5, $a2, $a5
	ori	$a6, $a4, 768
	stx.b	$a5, $a0, $a6
	b	.LBB40_97
.LBB40_95:                              # %.loopexit826.loopexit
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a7, $a5, %pc_lo12(active_sps)
	ld.w	$t0, $a7, 1148
.LBB40_96:                              # %.loopexit826
	ori	$a5, $a4, 2280
	ldx.b	$a5, $a2, $a5
	ori	$a6, $a4, 768
	stx.b	$a5, $a0, $a6
	beqz	$t0, .LBB40_98
.LBB40_97:
	ld.w	$a5, $a7, 1156
	beqz	$a5, .LBB40_117
.LBB40_98:
	ldptr.w	$t3, $a2, 6396
	ori	$a5, $zero, 4
	blt	$t3, $a5, .LBB40_136
# %bb.99:                               # %.lr.ph856
	move	$a6, $zero
	ori	$a7, $a4, 2296
	ldx.w	$t7, $a2, $a7
	ori	$a7, $zero, 1
	ori	$t0, $a4, 768
	ori	$t1, $zero, 2
	ori	$t2, $zero, 255
	b	.LBB40_102
	.p2align	4, , 16
.LBB40_100:                             # %._crit_edge853.loopexit
                                        #   in Loop: Header=BB40_102 Depth=1
	ori	$t3, $a4, 2300
	ldx.w	$t3, $a2, $t3
.LBB40_101:                             # %._crit_edge853
                                        #   in Loop: Header=BB40_102 Depth=1
	addi.d	$a6, $a6, 1
	srai.d	$t4, $t3, 2
	bge	$a6, $t4, .LBB40_136
.LBB40_102:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_107 Depth 2
	blt	$t7, $a5, .LBB40_101
# %bb.103:                              # %.lr.ph852
                                        #   in Loop: Header=BB40_102 Depth=1
	move	$t3, $zero
	move	$t4, $zero
	srli.d	$t5, $a6, 1
	bstrpick.d	$t6, $a6, 30, 1
	bstrins.d	$t5, $t6, 63, 1
	slli.d	$t5, $t5, 3
	slli.d	$t6, $a6, 3
	b	.LBB40_107
.LBB40_104:                             # %.thread981
                                        #   in Loop: Header=BB40_107 Depth=2
	ori	$t7, $zero, 1
.LBB40_105:                             #   in Loop: Header=BB40_107 Depth=2
	ld.d	$t8, $a0, 1624
	ldx.d	$t8, $t8, $t6
	stx.b	$t7, $t8, $t4
.LBB40_106:                             #   in Loop: Header=BB40_107 Depth=2
	ldptr.w	$t7, $a2, 6392
	addi.d	$t4, $t4, 1
	srai.d	$t8, $t7, 2
	addi.d	$t3, $t3, 8
	bge	$t4, $t8, .LBB40_100
.LBB40_107:                             #   Parent Loop BB40_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t7, $a0, 1616
	ld.d	$t8, $t7, 0
	srli.d	$fp, $t4, 1
	ldx.d	$s0, $t8, $t5
	bstrpick.d	$s1, $t4, 30, 1
	bstrins.d	$fp, $s1, 63, 1
	slli.d	$s1, $fp, 3
	ldx.d	$s0, $s0, $s1
	ldx.d	$t8, $t8, $t6
	ld.h	$s2, $s0, 0
	ld.d	$t7, $t7, 8
	ldx.d	$t8, $t8, $t3
	ldx.d	$s3, $t7, $t5
	st.h	$s2, $t8, 0
	ld.h	$s0, $s0, 2
	ldx.d	$s2, $s3, $s1
	ldx.d	$t7, $t7, $t6
	st.h	$s0, $t8, 2
	ld.d	$t8, $a0, 1600
	ld.h	$s0, $s2, 0
	ldx.d	$t7, $t7, $t3
	ld.d	$t8, $t8, 0
	st.h	$s0, $t7, 0
	ld.h	$s0, $s2, 2
	ldx.d	$s2, $t8, $t5
	st.h	$s0, $t7, 2
	ldx.b	$t7, $s2, $fp
	ldx.d	$t8, $t8, $t6
	stx.b	$t7, $t8, $t4
	ld.d	$t7, $a0, 1600
	ld.d	$t7, $t7, 8
	ldx.d	$t8, $t7, $t5
	ldx.b	$t8, $t8, $fp
	ldx.d	$t7, $t7, $t6
	stx.b	$t8, $t7, $t4
	ld.d	$t7, $a0, 1608
	ld.d	$t8, $t7, 0
	ldx.d	$fp, $t8, $t5
	ld.d	$t7, $t7, 8
	ldx.d	$fp, $fp, $s1
	ldx.d	$t8, $t8, $t6
	ldx.d	$s0, $t7, $t5
	ld.d	$s2, $a3, 0
	stx.d	$fp, $t8, $t3
	ldx.d	$t8, $s0, $s1
	ldx.d	$t7, $t7, $t6
	ldptr.w	$fp, $s2, 14452
	stx.d	$t8, $t7, $t3
	bne	$fp, $a7, .LBB40_106
# %bb.108:                              #   in Loop: Header=BB40_107 Depth=2
	ld.d	$t8, $a0, 1600
	ld.d	$t7, $t8, 0
	ldx.d	$t7, $t7, $t6
	ldx.bu	$s0, $a0, $t0
	ldx.bu	$fp, $t7, $t4
	bnez	$s0, .LBB40_113
# %bb.109:                              #   in Loop: Header=BB40_107 Depth=2
	bnez	$fp, .LBB40_113
# %bb.110:                              #   in Loop: Header=BB40_107 Depth=2
	ld.d	$t7, $a0, 1616
	ld.d	$t7, $t7, 0
	ldx.d	$t7, $t7, $t6
	ldx.d	$t7, $t7, $t3
	ld.h	$t8, $t7, 0
	ext.w.h	$fp, $t8
	srai.d	$fp, $fp, 15
	xor	$t8, $t8, $fp
	sub.d	$t8, $t8, $fp
	bstrpick.d	$t8, $t8, 15, 0
	bltu	$a7, $t8, .LBB40_104
# %bb.111:                              #   in Loop: Header=BB40_107 Depth=2
	ld.h	$t7, $t7, 2
	ext.w.h	$t8, $t7
	srai.d	$t8, $t8, 15
	xor	$t7, $t7, $t8
	sub.d	$t7, $t7, $t8
	bstrpick.d	$t7, $t7, 15, 0
	bgeu	$t7, $t1, .LBB40_104
# %bb.112:                              #   in Loop: Header=BB40_107 Depth=2
	move	$t7, $zero
	b	.LBB40_105
	.p2align	4, , 16
.LBB40_113:                             # %._crit_edge942
                                        #   in Loop: Header=BB40_107 Depth=2
	ori	$t7, $zero, 1
	bne	$fp, $t2, .LBB40_105
# %bb.114:                              #   in Loop: Header=BB40_107 Depth=2
	ld.d	$t8, $t8, 8
	ldx.d	$t8, $t8, $t6
	ldx.bu	$t8, $t8, $t4
	bnez	$t8, .LBB40_105
# %bb.115:                              #   in Loop: Header=BB40_107 Depth=2
	ld.d	$t7, $a0, 1616
	ld.d	$t7, $t7, 8
	ldx.d	$t7, $t7, $t6
	ldx.d	$t8, $t7, $t3
	ld.h	$t7, $t8, 0
	ext.w.h	$fp, $t7
	srai.d	$fp, $fp, 15
	xor	$t7, $t7, $fp
	sub.d	$t7, $t7, $fp
	bstrpick.d	$fp, $t7, 15, 0
	ori	$t7, $zero, 1
	bltu	$t7, $fp, .LBB40_105
# %bb.116:                              #   in Loop: Header=BB40_107 Depth=2
	ld.h	$t7, $t8, 2
	ext.w.h	$t8, $t7
	srai.d	$t8, $t8, 15
	xor	$t7, $t7, $t8
	sub.d	$t7, $t7, $t8
	bstrpick.d	$t7, $t7, 15, 0
	sltu	$t7, $a7, $t7
	b	.LBB40_105
.LBB40_117:                             # %.preheader823
	ldptr.w	$t3, $a2, 6396
	ori	$a5, $zero, 4
	blt	$t3, $a5, .LBB40_136
# %bb.118:                              # %.preheader822.lr.ph
	move	$a6, $zero
	ori	$a7, $a4, 2296
	ldx.w	$t6, $a2, $a7
	ori	$a7, $zero, 1
	ori	$t0, $a4, 768
	ori	$t1, $zero, 2
	ori	$t2, $zero, 255
	b	.LBB40_121
	.p2align	4, , 16
.LBB40_119:                             # %._crit_edge848.loopexit
                                        #   in Loop: Header=BB40_121 Depth=1
	ori	$t3, $a4, 2300
	ldx.w	$t3, $a2, $t3
.LBB40_120:                             # %._crit_edge848
                                        #   in Loop: Header=BB40_121 Depth=1
	addi.d	$a6, $a6, 1
	bstrpick.d	$t4, $t3, 62, 61
	add.w	$t4, $t3, $t4
	srai.d	$t4, $t4, 2
	bge	$a6, $t4, .LBB40_136
.LBB40_121:                             # %.preheader822
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_126 Depth 2
	blt	$t6, $a5, .LBB40_120
# %bb.122:                              # %.lr.ph847.preheader
                                        #   in Loop: Header=BB40_121 Depth=1
	move	$t3, $zero
	move	$t4, $zero
	slli.d	$t5, $a6, 3
	b	.LBB40_126
.LBB40_123:                             # %.thread983
                                        #   in Loop: Header=BB40_126 Depth=2
	ori	$t6, $zero, 1
.LBB40_124:                             #   in Loop: Header=BB40_126 Depth=2
	ld.d	$t7, $a0, 1624
	ldx.d	$t7, $t7, $t5
	stx.b	$t6, $t7, $t4
.LBB40_125:                             #   in Loop: Header=BB40_126 Depth=2
	ldptr.w	$t6, $a2, 6392
	addi.d	$t4, $t4, 1
	bstrpick.d	$t7, $t6, 62, 61
	add.w	$t7, $t6, $t7
	srai.d	$t7, $t7, 2
	addi.d	$t3, $t3, 8
	bge	$t4, $t7, .LBB40_119
.LBB40_126:                             # %.lr.ph847
                                        #   Parent Loop BB40_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldptr.d	$t6, $a2, 6512
	ld.d	$t7, $t6, 0
	ld.d	$t8, $a0, 1616
	ldx.d	$t7, $t7, $t5
	ld.d	$fp, $t8, 0
	ldx.d	$t7, $t7, $t3
	ldx.d	$fp, $fp, $t5
	ld.h	$s0, $t7, 0
	ldx.d	$fp, $fp, $t3
	ld.d	$t6, $t6, 8
	st.h	$s0, $fp, 0
	ldx.d	$t6, $t6, $t5
	ld.d	$t8, $t8, 8
	ld.h	$t7, $t7, 2
	ldx.d	$t6, $t6, $t3
	ldx.d	$t8, $t8, $t5
	st.h	$t7, $fp, 2
	ldptr.d	$t7, $a2, 6488
	ld.h	$fp, $t6, 0
	ldx.d	$t8, $t8, $t3
	ld.d	$t7, $t7, 0
	ld.d	$s0, $a0, 1600
	st.h	$fp, $t8, 0
	ld.h	$t6, $t6, 2
	ldx.d	$t7, $t7, $t5
	ld.d	$fp, $s0, 0
	st.h	$t6, $t8, 2
	ldx.b	$t6, $t7, $t4
	ldx.d	$t7, $fp, $t5
	stx.b	$t6, $t7, $t4
	ldptr.d	$t6, $a2, 6488
	ld.d	$t6, $t6, 8
	ld.d	$t7, $a0, 1600
	ldx.d	$t6, $t6, $t5
	ld.d	$t7, $t7, 8
	ldx.b	$t6, $t6, $t4
	ldx.d	$t7, $t7, $t5
	stx.b	$t6, $t7, $t4
	ldptr.d	$t6, $a2, 6504
	ld.d	$t7, $t6, 0
	ld.d	$t8, $a0, 1608
	ldx.d	$t7, $t7, $t5
	ld.d	$fp, $t8, 0
	ld.d	$t6, $t6, 8
	ldx.d	$t7, $t7, $t3
	ldx.d	$fp, $fp, $t5
	ldx.d	$t6, $t6, $t5
	ld.d	$t8, $t8, 8
	ld.d	$s0, $a3, 0
	stx.d	$t7, $fp, $t3
	ldx.d	$t6, $t6, $t3
	ldx.d	$t7, $t8, $t5
	ldptr.w	$t8, $s0, 14452
	stx.d	$t6, $t7, $t3
	bne	$t8, $a7, .LBB40_125
# %bb.127:                              #   in Loop: Header=BB40_126 Depth=2
	ld.d	$t7, $a0, 1600
	ld.d	$t6, $t7, 0
	ldx.d	$t6, $t6, $t5
	ldx.bu	$fp, $a0, $t0
	ldx.bu	$t8, $t6, $t4
	bnez	$fp, .LBB40_132
# %bb.128:                              #   in Loop: Header=BB40_126 Depth=2
	bnez	$t8, .LBB40_132
# %bb.129:                              #   in Loop: Header=BB40_126 Depth=2
	ld.d	$t6, $a0, 1616
	ld.d	$t6, $t6, 0
	ldx.d	$t6, $t6, $t5
	ldx.d	$t6, $t6, $t3
	ld.h	$t7, $t6, 0
	ext.w.h	$t8, $t7
	srai.d	$t8, $t8, 15
	xor	$t7, $t7, $t8
	sub.d	$t7, $t7, $t8
	bstrpick.d	$t7, $t7, 15, 0
	bltu	$a7, $t7, .LBB40_123
# %bb.130:                              #   in Loop: Header=BB40_126 Depth=2
	ld.h	$t6, $t6, 2
	ext.w.h	$t7, $t6
	srai.d	$t7, $t7, 15
	xor	$t6, $t6, $t7
	sub.d	$t6, $t6, $t7
	bstrpick.d	$t6, $t6, 15, 0
	bgeu	$t6, $t1, .LBB40_123
# %bb.131:                              #   in Loop: Header=BB40_126 Depth=2
	move	$t6, $zero
	b	.LBB40_124
	.p2align	4, , 16
.LBB40_132:                             # %._crit_edge933
                                        #   in Loop: Header=BB40_126 Depth=2
	ori	$t6, $zero, 1
	bne	$t8, $t2, .LBB40_124
# %bb.133:                              #   in Loop: Header=BB40_126 Depth=2
	ld.d	$t7, $t7, 8
	ldx.d	$t7, $t7, $t5
	ldx.bu	$t7, $t7, $t4
	bnez	$t7, .LBB40_124
# %bb.134:                              #   in Loop: Header=BB40_126 Depth=2
	ld.d	$t6, $a0, 1616
	ld.d	$t6, $t6, 8
	ldx.d	$t6, $t6, $t5
	ldx.d	$t7, $t6, $t3
	ld.h	$t6, $t7, 0
	ext.w.h	$t8, $t6
	srai.d	$t8, $t8, 15
	xor	$t6, $t6, $t8
	sub.d	$t6, $t6, $t8
	bstrpick.d	$t8, $t6, 15, 0
	ori	$t6, $zero, 1
	bltu	$t6, $t8, .LBB40_124
# %bb.135:                              #   in Loop: Header=BB40_126 Depth=2
	ld.h	$t6, $t7, 2
	ext.w.h	$t7, $t6
	srai.d	$t7, $t7, 15
	xor	$t6, $t6, $t7
	sub.d	$t6, $t6, $t7
	bstrpick.d	$t6, $t6, 15, 0
	sltu	$t6, $a7, $t6
	b	.LBB40_124
.LBB40_136:                             # %.loopexit821
	ld.d	$a3, $a3, 0
	ldptr.w	$a4, $a3, 14452
	beqz	$a4, .LBB40_138
.LBB40_137:                             # %.loopexit
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
.LBB40_138:                             # %.preheader820
	ori	$a4, $zero, 4
	blt	$t3, $a4, .LBB40_153
# %bb.139:                              # %.preheader819.lr.ph
	ldptr.w	$a7, $a2, 6392
	blt	$a7, $a4, .LBB40_153
# %bb.140:                              # %.preheader819.lr.ph.split.us
	move	$a4, $zero
	bstrpick.d	$a6, $t3, 62, 61
	lu12i.w	$a5, 3
	ori	$a5, $a5, 2980
	ldx.w	$a5, $a3, $a5
	add.w	$a6, $t3, $a6
	srai.d	$a6, $a6, 2
	bstrpick.d	$a7, $a7, 31, 2
	b	.LBB40_142
	.p2align	4, , 16
.LBB40_141:                             # %._crit_edge859.us
                                        #   in Loop: Header=BB40_142 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $a6, .LBB40_153
.LBB40_142:                             # %.preheader819.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_147 Depth 2
	move	$t0, $zero
	slli.d	$t1, $a4, 3
	b	.LBB40_147
.LBB40_143:                             #   in Loop: Header=BB40_147 Depth=2
	ldptr.d	$t2, $a2, 6528
	ldx.d	$t2, $t2, $t1
	ldx.bu	$t2, $t2, $t0
	beqz	$t2, .LBB40_146
	.p2align	4, , 16
.LBB40_144:                             #   in Loop: Header=BB40_147 Depth=2
	ld.d	$t2, $a0, 1616
	ld.d	$t3, $t2, 0
	ldx.d	$t3, $t3, $t1
	ld.d	$t2, $t2, 8
	slli.d	$t4, $t0, 3
	ldx.d	$t3, $t3, $t4
	ldx.d	$t2, $t2, $t1
	ld.h	$t5, $t3, 2
	ldx.d	$t2, $t2, $t4
	slli.d	$t4, $t5, 1
	st.h	$t4, $t3, 2
	ld.h	$t3, $t2, 2
	slli.d	$t3, $t3, 1
.LBB40_145:                             # %.thread.us.thread
                                        #   in Loop: Header=BB40_147 Depth=2
	st.h	$t3, $t2, 2
.LBB40_146:                             # %.thread.us.thread
                                        #   in Loop: Header=BB40_147 Depth=2
	addi.d	$t0, $t0, 1
	beq	$t0, $a7, .LBB40_141
.LBB40_147:                             #   Parent Loop BB40_142 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a5, .LBB40_150
# %bb.148:                              #   in Loop: Header=BB40_147 Depth=2
	ldptr.d	$t2, $a2, 6528
	ldx.d	$t2, $t2, $t1
	ldx.bu	$t2, $t2, $t0
	bnez	$t2, .LBB40_144
# %bb.149:                              # %.thread.us
                                        #   in Loop: Header=BB40_147 Depth=2
	ld.w	$t2, $a3, 24
	bnez	$t2, .LBB40_151
	b	.LBB40_146
	.p2align	4, , 16
.LBB40_150:                             #   in Loop: Header=BB40_147 Depth=2
	ld.w	$t2, $a3, 24
	beqz	$t2, .LBB40_143
.LBB40_151:                             # %.thread.us.thread985
                                        #   in Loop: Header=BB40_147 Depth=2
	ldptr.d	$t2, $a2, 6528
	ldx.d	$t2, $t2, $t1
	ldx.bu	$t2, $t2, $t0
	bnez	$t2, .LBB40_146
# %bb.152:                              #   in Loop: Header=BB40_147 Depth=2
	ld.d	$t2, $a0, 1616
	ld.d	$t3, $t2, 0
	ldx.d	$t3, $t3, $t1
	slli.d	$t4, $t0, 3
	ldx.d	$t3, $t3, $t4
	ld.d	$t2, $t2, 8
	ld.hu	$t5, $t3, 2
	ldx.d	$t2, $t2, $t1
	srli.d	$t6, $t5, 15
	add.d	$t5, $t5, $t6
	ldx.d	$t2, $t2, $t4
	ext.w.h	$t4, $t5
	srli.d	$t4, $t4, 1
	st.h	$t4, $t3, 2
	ld.hu	$t3, $t2, 2
	srli.d	$t4, $t3, 15
	add.d	$t3, $t3, $t4
	ext.w.h	$t3, $t3
	srli.d	$t3, $t3, 1
	b	.LBB40_145
.LBB40_153:                             # %.preheader818
	ldptr.w	$t6, $a3, 15268
	bltz	$t6, .LBB40_137
# %bb.154:                              # %.preheader.lr.ph
	lu12i.w	$a6, 3
	ori	$a0, $a6, 2184
	add.d	$a0, $a3, $a0
	pcalau12i	$a2, %pc_hi20(listXsize)
	addi.d	$a2, $a2, %pc_lo12(listXsize)
	pcalau12i	$a4, %got_pc_hi20(enc_picture)
	ld.d	$a4, $a4, %got_pc_lo12(enc_picture)
	move	$t7, $zero
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1807
	ori	$a6, $a6, 2980
	addi.w	$a7, $zero, -128
	ori	$t0, $zero, 127
	lu12i.w	$t1, 4
	addi.w	$t2, $zero, -1024
	ori	$t3, $zero, 1023
	ori	$t4, $zero, 2
	b	.LBB40_157
	.p2align	4, , 16
.LBB40_155:                             # %._crit_edge863.loopexit
                                        #   in Loop: Header=BB40_157 Depth=1
	ldx.w	$t6, $a3, $a6
.LBB40_156:                             # %._crit_edge863
                                        #   in Loop: Header=BB40_157 Depth=1
	addi.d	$t7, $t5, 2
	slli.w	$t8, $t6, 2
	addi.d	$a0, $a0, 256
	bge	$t5, $t8, .LBB40_137
.LBB40_157:                             # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_160 Depth 2
	move	$t5, $t7
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $a2, $t7
	blez	$t7, .LBB40_156
# %bb.158:                              # %.lr.ph862
                                        #   in Loop: Header=BB40_157 Depth=1
	move	$t6, $zero
	alsl.d	$t7, $t5, $a1, 3
	ld.d	$t8, $t7, 8
	alsl.d	$t7, $t5, $a2, 2
	ld.d	$s2, $a4, 0
	slli.d	$fp, $t5, 3
	ld.d	$t8, $t8, 0
	ldx.d	$fp, $a1, $fp
	addi.d	$s0, $s2, 8
	addi.d	$s1, $s2, 4
	addi.d	$s2, $s2, 12
	move	$s3, $a0
	b	.LBB40_160
	.p2align	4, , 16
.LBB40_159:                             #   in Loop: Header=BB40_160 Depth=2
	st.w	$s7, $s3, 0
	ld.w	$s4, $t7, 0
	addi.d	$t6, $t6, 1
	addi.d	$s3, $s3, 4
	addi.d	$fp, $fp, 8
	bge	$t6, $s4, .LBB40_155
.LBB40_160:                             #   Parent Loop BB40_157 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s4, $s1
	beqz	$t5, .LBB40_163
# %bb.161:                              #   in Loop: Header=BB40_160 Depth=2
	move	$s4, $s0
	beq	$t5, $t4, .LBB40_163
# %bb.162:                              #   in Loop: Header=BB40_160 Depth=2
	move	$s4, $s2
.LBB40_163:                             #   in Loop: Header=BB40_160 Depth=2
	ld.d	$s6, $fp, 0
	ld.w	$s5, $t8, 4
	ld.w	$s6, $s6, 4
	move	$s7, $a5
	beq	$s5, $s6, .LBB40_159
# %bb.164:                              #   in Loop: Header=BB40_160 Depth=2
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
	b	.LBB40_159
.LBB40_165:
	ldptr.d	$a6, $a2, 6544
.LBB40_166:
	move	$a7, $a6
	move	$a2, $a6
	b	.LBB40_8
.Lfunc_end40:
	.size	compute_colocated, .Lfunc_end40-compute_colocated
                                        # -- End function
	.p2align	5                               # -- Begin function unmark_long_term_field_for_reference_by_frame_idx
	.type	unmark_long_term_field_for_reference_by_frame_idx,@function
unmark_long_term_field_for_reference_by_frame_idx: # @unmark_long_term_field_for_reference_by_frame_idx
# %bb.0:
	pcalau12i	$a5, %pc_hi20(dpb)
	addi.d	$a7, $a5, %pc_lo12(dpb)
	ld.wu	$a5, $a7, 36
	beqz	$a5, .LBB41_47
# %bb.1:                                # %.lr.ph
	pcalau12i	$a6, %pc_hi20(log2_max_frame_num_minus4)
	ld.w	$a6, $a6, %pc_lo12(log2_max_frame_num_minus4)
	addi.d	$t0, $a6, 4
	ori	$a6, $zero, 2
	sll.w	$t0, $a6, $t0
	srli.d	$t1, $a4, 31
	and	$t0, $t1, $t0
	add.d	$a4, $t0, $a4
	bstrpick.d	$t0, $a4, 31, 31
	add.w	$a4, $a4, $t0
	srai.d	$a4, $a4, 1
	beq	$a0, $a6, .LBB41_25
# %bb.2:                                # %.lr.ph
	ori	$a6, $zero, 1
	bne	$a0, $a6, .LBB41_47
# %bb.3:                                # %.lr.ph.split.us
	ld.d	$a0, $a7, 16
	ld.d	$a7, $a7, 56
	ori	$t0, $zero, 3
	b	.LBB41_7
	.p2align	4, , 16
.LBB41_4:                               # %.sink.split.sink.split
                                        #   in Loop: Header=BB41_7 Depth=1
	ld.d	$t2, $t1, 40
	stptr.d	$zero, $t2, 6376
.LBB41_5:                               # %.sink.split
                                        #   in Loop: Header=BB41_7 Depth=1
	st.d	$zero, $t1, 4
.LBB41_6:                               #   in Loop: Header=BB41_7 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a0, $a0, 8
	beqz	$a5, .LBB41_47
.LBB41_7:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a0, 0
	ld.w	$t2, $t1, 28
	bne	$t2, $a1, .LBB41_6
# %bb.8:                                #   in Loop: Header=BB41_7 Depth=1
	ld.w	$t2, $t1, 8
	beq	$t2, $t0, .LBB41_10
# %bb.9:                                #   in Loop: Header=BB41_7 Depth=1
	bne	$t2, $a6, .LBB41_20
.LBB41_10:                              #   in Loop: Header=BB41_7 Depth=1
	ld.wu	$t2, $t1, 0
	andi	$t3, $t2, 1
	beqz	$t3, .LBB41_13
# %bb.11:                               #   in Loop: Header=BB41_7 Depth=1
	ld.d	$t3, $t1, 48
	beqz	$t3, .LBB41_13
# %bb.12:                               #   in Loop: Header=BB41_7 Depth=1
	stptr.d	$zero, $t3, 6376
.LBB41_13:                              #   in Loop: Header=BB41_7 Depth=1
	andi	$t3, $t2, 2
	beqz	$t3, .LBB41_16
# %bb.14:                               #   in Loop: Header=BB41_7 Depth=1
	ld.d	$t3, $t1, 56
	beqz	$t3, .LBB41_16
# %bb.15:                               #   in Loop: Header=BB41_7 Depth=1
	stptr.d	$zero, $t3, 6376
.LBB41_16:                              #   in Loop: Header=BB41_7 Depth=1
	bne	$t2, $t0, .LBB41_5
# %bb.17:                               #   in Loop: Header=BB41_7 Depth=1
	ld.d	$t2, $t1, 48
	beqz	$t2, .LBB41_4
# %bb.18:                               #   in Loop: Header=BB41_7 Depth=1
	ld.d	$t3, $t1, 56
	beqz	$t3, .LBB41_4
# %bb.19:                               # %.sink.split.sink.split.sink.split
                                        #   in Loop: Header=BB41_7 Depth=1
	stptr.d	$zero, $t2, 6376
	stptr.d	$zero, $t3, 6376
	b	.LBB41_4
.LBB41_20:                              #   in Loop: Header=BB41_7 Depth=1
	beqz	$a2, .LBB41_24
# %bb.21:                               #   in Loop: Header=BB41_7 Depth=1
	beqz	$a7, .LBB41_10
# %bb.22:                               #   in Loop: Header=BB41_7 Depth=1
	bne	$a7, $t1, .LBB41_10
# %bb.23:                               #   in Loop: Header=BB41_7 Depth=1
	ld.w	$t2, $a7, 20
	beq	$t2, $a3, .LBB41_6
	b	.LBB41_10
.LBB41_24:                              #   in Loop: Header=BB41_7 Depth=1
	ld.w	$t2, $t1, 20
	beq	$t2, $a4, .LBB41_6
	b	.LBB41_10
.LBB41_25:                              # %.lr.ph.split.us112
	ld.d	$a0, $a7, 16
	ld.d	$a7, $a7, 56
	ori	$t0, $zero, 3
	b	.LBB41_29
	.p2align	4, , 16
.LBB41_26:                              # %.sink.split166.sink.split
                                        #   in Loop: Header=BB41_29 Depth=1
	ld.d	$t2, $t1, 40
	stptr.d	$zero, $t2, 6376
.LBB41_27:                              # %.sink.split166
                                        #   in Loop: Header=BB41_29 Depth=1
	st.d	$zero, $t1, 4
.LBB41_28:                              #   in Loop: Header=BB41_29 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a0, $a0, 8
	beqz	$a5, .LBB41_47
.LBB41_29:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a0, 0
	ld.w	$t2, $t1, 28
	bne	$t2, $a1, .LBB41_28
# %bb.30:                               #   in Loop: Header=BB41_29 Depth=1
	ld.w	$t2, $t1, 8
	beq	$t2, $t0, .LBB41_32
# %bb.31:                               #   in Loop: Header=BB41_29 Depth=1
	bne	$t2, $a6, .LBB41_42
.LBB41_32:                              #   in Loop: Header=BB41_29 Depth=1
	ld.wu	$t2, $t1, 0
	andi	$t3, $t2, 1
	beqz	$t3, .LBB41_35
# %bb.33:                               #   in Loop: Header=BB41_29 Depth=1
	ld.d	$t3, $t1, 48
	beqz	$t3, .LBB41_35
# %bb.34:                               #   in Loop: Header=BB41_29 Depth=1
	stptr.d	$zero, $t3, 6376
.LBB41_35:                              #   in Loop: Header=BB41_29 Depth=1
	andi	$t3, $t2, 2
	beqz	$t3, .LBB41_38
# %bb.36:                               #   in Loop: Header=BB41_29 Depth=1
	ld.d	$t3, $t1, 56
	beqz	$t3, .LBB41_38
# %bb.37:                               #   in Loop: Header=BB41_29 Depth=1
	stptr.d	$zero, $t3, 6376
.LBB41_38:                              #   in Loop: Header=BB41_29 Depth=1
	bne	$t2, $t0, .LBB41_27
# %bb.39:                               #   in Loop: Header=BB41_29 Depth=1
	ld.d	$t2, $t1, 48
	beqz	$t2, .LBB41_26
# %bb.40:                               #   in Loop: Header=BB41_29 Depth=1
	ld.d	$t3, $t1, 56
	beqz	$t3, .LBB41_26
# %bb.41:                               # %.sink.split166.sink.split.sink.split
                                        #   in Loop: Header=BB41_29 Depth=1
	stptr.d	$zero, $t2, 6376
	stptr.d	$zero, $t3, 6376
	b	.LBB41_26
.LBB41_42:                              #   in Loop: Header=BB41_29 Depth=1
	beqz	$a2, .LBB41_46
# %bb.43:                               #   in Loop: Header=BB41_29 Depth=1
	beqz	$a7, .LBB41_32
# %bb.44:                               #   in Loop: Header=BB41_29 Depth=1
	bne	$a7, $t1, .LBB41_32
# %bb.45:                               #   in Loop: Header=BB41_29 Depth=1
	ld.w	$t2, $a7, 20
	beq	$t2, $a3, .LBB41_28
	b	.LBB41_32
.LBB41_46:                              #   in Loop: Header=BB41_29 Depth=1
	ld.w	$t2, $t1, 20
	beq	$t2, $a4, .LBB41_28
	b	.LBB41_32
.LBB41_47:                              # %._crit_edge
	ret
.Lfunc_end41:
	.size	unmark_long_term_field_for_reference_by_frame_idx, .Lfunc_end41-unmark_long_term_field_for_reference_by_frame_idx
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
	bltu	$a1, $a0, .LBB42_5
# %bb.1:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI42_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI42_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB42_2:
	ld.d	$a0, $s2, 48
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	st.d	$zero, $s2, 48
	b	.LBB42_6
.LBB42_3:
	ld.d	$a0, $s2, 56
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	st.d	$zero, $s2, 56
	b	.LBB42_6
.LBB42_4:
	ld.d	$a0, $s2, 40
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 56
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	st.d	$zero, $s2, 56
	vst	$vr0, $s2, 40
	b	.LBB42_6
.LBB42_5:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	ori	$a1, $zero, 500
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
.LBB42_6:
	vst	$vr0, $s2, 0
	ld.d	$a0, $s0, 0
	ld.w	$a2, $s0, 28
	ldx.d	$a1, $a0, $s1
	addi.w	$a2, $a2, -1
	bgeu	$fp, $a2, .LBB42_9
# %bb.7:                                # %.lr.ph.preheader
	bstrpick.d	$a7, $fp, 31, 0
	bstrpick.d	$a3, $a2, 31, 0
	sub.d	$a5, $a3, $a7
	ori	$a4, $zero, 4
	bgeu	$a5, $a4, .LBB42_10
# %bb.8:
	move	$a4, $a7
	b	.LBB42_13
.LBB42_9:                               # %.._crit_edge_crit_edge
	bstrpick.d	$a3, $a2, 31, 0
	b	.LBB42_15
.LBB42_10:                              # %vector.ph
	move	$a6, $a5
	bstrins.d	$a6, $zero, 1, 0
	add.d	$a4, $a6, $a7
	alsl.d	$a7, $a7, $a0, 3
	addi.d	$a7, $a7, 16
	move	$t0, $a6
	.p2align	4, , 16
.LBB42_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a7, -8
	vld	$vr1, $a7, 8
	vst	$vr0, $a7, -16
	vst	$vr1, $a7, 0
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB42_11
# %bb.12:                               # %middle.block
	beq	$a5, $a6, .LBB42_15
.LBB42_13:                              # %.lr.ph.preheader27
	alsl.d	$a5, $a4, $a0, 3
	addi.d	$a5, $a5, 8
	sub.d	$a4, $a3, $a4
	.p2align	4, , 16
.LBB42_14:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, 0
	st.d	$a6, $a5, -8
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB42_14
.LBB42_15:                              # %._crit_edge
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
.Lfunc_end42:
	.size	remove_frame_from_dpb, .Lfunc_end42-remove_frame_from_dpb
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI42_0:
	.word	.LBB42_6-.LJTI42_0
	.word	.LBB42_2-.LJTI42_0
	.word	.LBB42_3-.LJTI42_0
	.word	.LBB42_4-.LJTI42_0
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

	.type	dpb,@object                     # @dpb
	.comm	dpb,64,8
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Max. number of reference frames exceeded. Invalid stream."
	.size	.L.str.1, 58

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"DPB size at specified level is smaller than the specified number of reference frames. This is not allowed.\n"
	.size	.L.str.2, 108

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"init_dpb: dpb->fs"
	.size	.L.str.3, 18

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"init_dpb: dpb->fs_ref"
	.size	.L.str.4, 22

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"init_dpb: dpb->fs_ltref"
	.size	.L.str.5, 24

	.type	listX,@object                   # @listX
	.comm	listX,48,8
	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"init_dpb: listX[i]"
	.size	.L.str.6, 19

	.type	listXsize,@object               # @listXsize
	.comm	listXsize,24,4
	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"alloc_frame_store: f"
	.size	.L.str.7, 21

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"alloc_storable_picture: s"
	.size	.L.str.8, 26

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"alloc_storable_picture: s->mb_field"
	.size	.L.str.9, 36

	.type	img_pad_size_uv_x,@object       # @img_pad_size_uv_x
	.comm	img_pad_size_uv_x,4,4
	.type	img_pad_size_uv_y,@object       # @img_pad_size_uv_y
	.comm	img_pad_size_uv_y,4,4
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"init_lists: fs_list0"
	.size	.L.str.10, 21

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"init_lists: fs_listlt"
	.size	.L.str.11, 22

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"init_lists: fs_list1"
	.size	.L.str.12, 21

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Invalid remapping_of_pic_nums_idc command"
	.size	.L.str.13, 42

	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"duplicate frame_num im short-term reference picture buffer"
	.size	.L.str.14, 59

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"alloc_ref_pic_list_reordering_buffer: remapping_of_pic_nums_idc_l0"
	.size	.L.str.15, 67

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l0"
	.size	.L.str.16, 65

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l0"
	.size	.L.str.17, 59

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"alloc_ref_pic_list_reordering_buffer: remapping_of_pic_nums_idc_l1"
	.size	.L.str.18, 67

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l1"
	.size	.L.str.19, 65

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l1"
	.size	.L.str.20, 59

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"alloc_colocated: s"
	.size	.L.str.21, 19

	.type	color_formats,@object           # @color_formats
	.comm	color_formats,4,4
	.type	top_pic,@object                 # @top_pic
	.comm	top_pic,8,8
	.type	bottom_pic,@object              # @bottom_pic
	.comm	bottom_pic,8,8
	.type	frame_pic,@object               # @frame_pic
	.comm	frame_pic,8,8
	.type	frame_pic_1,@object             # @frame_pic_1
	.comm	frame_pic_1,8,8
	.type	frame_pic_2,@object             # @frame_pic_2
	.comm	frame_pic_2,8,8
	.type	frame_pic_3,@object             # @frame_pic_3
	.comm	frame_pic_3,8,8
	.type	frame_pic_si,@object            # @frame_pic_si
	.comm	frame_pic_si,8,8
	.type	Bit_Buffer,@object              # @Bit_Buffer
	.comm	Bit_Buffer,8,8
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	imgY_sub_tmp,@object            # @imgY_sub_tmp
	.comm	imgY_sub_tmp,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	imgY_org_top,@object            # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org_bot,@object            # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgUV_org_top,@object           # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	imgY_org_frm,@object            # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	imgY_com,@object                # @imgY_com
	.comm	imgY_com,8,8
	.type	imgUV_com,@object               # @imgUV_com
	.comm	imgUV_com,8,8
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	pixel_map,@object               # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object             # @refresh_map
	.comm	refresh_map,8,8
	.type	intras,@object                  # @intras
	.comm	intras,4,4
	.type	frame_ctr,@object               # @frame_ctr
	.comm	frame_ctr,20,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	nextP_tr_fld,@object            # @nextP_tr_fld
	.comm	nextP_tr_fld,4,4
	.type	nextP_tr_frm,@object            # @nextP_tr_frm
	.comm	nextP_tr_frm,4,4
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,1752,8
	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,1752,8
	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.comm	rddata_top_field_mb,1752,8
	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,1752,8
	.type	p_stat,@object                  # @p_stat
	.comm	p_stat,8,8
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	p_trace,@object                 # @p_trace
	.comm	p_trace,8,8
	.type	p_in,@object                    # @p_in
	.comm	p_in,4,4
	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	number_sp2_frames,@object       # @number_sp2_frames
	.comm	number_sp2_frames,4,4
	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.comm	giRDOpt_B8OnlyFlag,4,4
	.type	imgY_tmp,@object                # @imgY_tmp
	.comm	imgY_tmp,8,8
	.type	imgUV_tmp,@object               # @imgUV_tmp
	.comm	imgUV_tmp,16,8
	.type	frameNuminGOP,@object           # @frameNuminGOP
	.comm	frameNuminGOP,4,4
	.type	redundant_coding,@object        # @redundant_coding
	.comm	redundant_coding,4,4
	.type	key_frame,@object               # @key_frame
	.comm	key_frame,4,4
	.type	redundant_ref_idx,@object       # @redundant_ref_idx
	.comm	redundant_ref_idx,4,4
	.type	chroma_mask_mv_y,@object        # @chroma_mask_mv_y
	.comm	chroma_mask_mv_y,1,1
	.type	chroma_mask_mv_x,@object        # @chroma_mask_mv_x
	.comm	chroma_mask_mv_x,1,1
	.type	chroma_shift_y,@object          # @chroma_shift_y
	.comm	chroma_shift_y,4,4
	.type	chroma_shift_x,@object          # @chroma_shift_x
	.comm	chroma_shift_x,4,4
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"memory_management_control_operation = 0 not last operation in buffer"
	.size	.L.str.22, 69

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"invalid memory_management_control_operation in buffer"
	.size	.L.str.23, 54

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"field for long term marking not found"
	.size	.L.str.24, 38

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Cannot determine smallest POC, DPB empty."
	.size	.L.str.28, 42

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"invalid frame store type"
	.size	.L.str.29, 25

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Cannot output frame, DPB empty."
	.size	.L.str.30, 32

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"no frames for output available"
	.size	.L.str.31, 31

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"output POC must be in ascending order"
	.size	.L.str.32, 38

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
