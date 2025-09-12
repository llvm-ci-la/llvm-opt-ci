	.file	"slice.c"
	.text
	.globl	init_ref_pic_list_reordering    # -- Begin function init_ref_pic_list_reordering
	.p2align	5
	.type	init_ref_pic_list_reordering,@function
init_ref_pic_list_reordering:           # @init_ref_pic_list_reordering
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 14216
	st.w	$zero, $a0, 48
	st.w	$zero, $a0, 80
	ret
.Lfunc_end0:
	.size	init_ref_pic_list_reordering, .Lfunc_end0-init_ref_pic_list_reordering
                                        # -- End function
	.globl	start_slice                     # -- Begin function start_slice
	.p2align	5
	.type	start_slice,@function
start_slice:                            # @start_slice
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
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.d	$s3, $a0, 14216
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$s2, $a1, %got_pc_lo12(input)
	ld.d	$a1, $s2, 0
	ldptr.d	$a2, $a0, 14208
	ori	$a3, $zero, 4016
	ldx.w	$s4, $a1, $a3
	ld.w	$s5, $a2, 4
	ldptr.w	$a0, $a0, 14248
	pcaddu18i	$ra, %call36(RTPUpdateTimestamp)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 24
	ld.d	$s0, $a0, 0
	st.w	$zero, $s0, 40
	move	$a0, $zero
	pcaddu18i	$ra, %call36(SliceHeader)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ldptr.w	$a1, $a1, 4008
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB1_2
# %bb.1:
	ld.d	$a0, $s3, 24
	ld.w	$a1, $s0, 4
	addi.d	$s1, $a0, 8
	addi.d	$a0, $a1, -8
	sltui	$a0, $a0, 1
	masknez	$a0, $a1, $a0
	add.w	$fp, $a0, $fp
	move	$a0, $s0
	pcaddu18i	$ra, %call36(writeVlcByteAlign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 32
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(arienco_start_encoding)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cabac_new_slice)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB1_3
	b	.LBB1_9
.LBB1_2:
	pcaddu18i	$ra, %call36(CAVLC_init)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB1_9
.LBB1_3:
	beqz	$s4, .LBB1_9
# %bb.4:                                # %.peel.next
	ld.d	$a0, $s3, 24
	ld.d	$s0, $a0, 104
	st.w	$zero, $s0, 40
	ori	$a0, $zero, 1
	ori	$s4, $zero, 1
	pcaddu18i	$ra, %call36(Partition_BC_Header)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ldptr.w	$a1, $a1, 4008
	add.d	$s1, $a0, $fp
	bne	$a1, $s4, .LBB1_6
# %bb.5:
	ld.d	$a0, $s3, 24
	ld.w	$a1, $s0, 4
	addi.d	$fp, $a0, 112
	addi.d	$a0, $a1, -8
	sltui	$a0, $a0, 1
	masknez	$a0, $a1, $a0
	add.d	$s1, $a0, $s1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(writeVlcByteAlign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 32
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(arienco_start_encoding)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cabac_new_slice)
	jirl	$ra, $ra, 0
	b	.LBB1_7
.LBB1_6:
	pcaddu18i	$ra, %call36(CAVLC_init)
	jirl	$ra, $ra, 0
.LBB1_7:                                # %.peel.next.1
	ld.d	$a0, $s3, 24
	ld.d	$s0, $a0, 208
	st.w	$zero, $s0, 40
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(Partition_BC_Header)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ldptr.w	$a1, $a1, 4008
	ori	$a2, $zero, 1
	add.w	$fp, $a0, $s1
	bne	$a1, $a2, .LBB1_12
# %bb.8:
	ld.d	$a0, $s3, 24
	ld.w	$a1, $s0, 4
	addi.d	$s1, $a0, 216
	addi.d	$a0, $a1, -8
	sltui	$a0, $a0, 1
	masknez	$a0, $a1, $a0
	add.w	$fp, $a0, $fp
	move	$a0, $s0
	pcaddu18i	$ra, %call36(writeVlcByteAlign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 32
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(arienco_start_encoding)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cabac_new_slice)
	jirl	$ra, $ra, 0
.LBB1_9:                                # %.loopexit
	ld.d	$a0, $s2, 0
	ldptr.w	$a0, $a0, 4008
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_11
.LBB1_10:
	pcaddu18i	$ra, %call36(init_contexts)
	jirl	$ra, $ra, 0
.LBB1_11:
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
.LBB1_12:
	pcaddu18i	$ra, %call36(CAVLC_init)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.w	$a0, $a0, 4008
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_10
	b	.LBB1_11
.Lfunc_end1:
	.size	start_slice, .Lfunc_end1-start_slice
                                        # -- End function
	.globl	terminate_slice                 # -- Begin function terminate_slice
	.p2align	5
	.type	terminate_slice,@function
terminate_slice:                        # @terminate_slice
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
	move	$s6, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s3, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s3, 0
	ldptr.d	$fp, $a0, 14216
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s4, $a0, %got_pc_lo12(input)
	ld.d	$a0, $s4, 0
	ldptr.w	$a0, $a0, 4008
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_2
# %bb.1:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(write_terminating_bit)
	jirl	$ra, $ra, 0
.LBB2_2:
	ld.w	$a0, $fp, 16
	blez	$a0, .LBB2_12
# %bb.3:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(stats)
	ld.d	$s5, $a0, %got_pc_lo12(stats)
	lu12i.w	$a0, 3
	ori	$s0, $a0, 3312
	ori	$a1, $a0, 3156
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(active_sps)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(terminate_slice.MbWidthC)
	addi.d	$a1, $a1, %pc_lo12(terminate_slice.MbWidthC)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(terminate_slice.MbHeightC)
	addi.d	$a1, $a1, %pc_lo12(terminate_slice.MbHeightC)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	move	$s7, $zero
	move	$s8, $zero
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	ori	$a1, $a0, 3160
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $a0, 3060
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, -349526
	ori	$a0, $a0, 2731
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_4:                                #   in Loop: Header=BB2_6 Depth=1
	ld.w	$a2, $s1, 0
	ld.d	$a0, $s1, 32
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.w	$a3, $a2, $a1
	move	$a1, $zero
.LBB2_5:                                #   in Loop: Header=BB2_6 Depth=1
	pcaddu18i	$ra, %call36(RBSPtoEBSP)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, 0
	sub.w	$a0, $a0, $s2
	ld.d	$a1, $s5, 0
	ldptr.d	$a1, $a1, 2248
	ld.w	$a2, $a1, 0
	alsl.d	$a0, $a0, $a2, 3
	st.w	$a0, $a1, 0
	ld.w	$a0, $fp, 16
	addi.d	$s8, $s8, 1
	addi.d	$s7, $s7, 104
	bge	$s8, $a0, .LBB2_12
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 0
	ld.d	$a0, $fp, 24
	ldptr.w	$a1, $a1, 4008
	ldx.d	$s1, $a0, $s7
	beqz	$a1, .LBB2_11
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
	add.d	$s2, $a0, $s7
	addi.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(arienco_done_encoding)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.w	$a1, $s2, 20
	ld.w	$s2, $s1, 0
	ldx.w	$a2, $a0, $s0
	st.w	$a1, $s1, 4
	st.b	$zero, $s1, 8
	add.d	$a1, $a2, $s2
	stptr.w	$a1, $a0, 15600
	beqz	$s6, .LBB2_4
# %bb.8:                                #   in Loop: Header=BB2_6 Depth=1
	ld.w	$a1, $fp, 16
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	bne	$s8, $a1, .LBB2_4
# %bb.9:                                #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.wu	$a1, $a1, 32
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a2, $a0, $a2
	slli.d	$a1, $a1, 2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a3, $a3, $a1
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ldx.w	$a1, $a4, $a1
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a4
	slli.d	$a2, $a2, 8
	mul.d	$a1, $a3, $a1
	mul.d	$a0, $a1, $a0
	move	$s5, $s4
	move	$s4, $s0
	move	$s0, $s6
	alsl.w	$s6, $a0, $a2, 1
	pcaddu18i	$ra, %call36(get_pic_bin_count)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a2
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	mul.d	$a2, $s6, $a2
	move	$s6, $s0
	move	$s0, $s4
	move	$s4, $s5
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a0, $a0, $a2
	addi.w	$a2, $a0, 1023
	ldptr.w	$a0, $a1, 15600
	bstrpick.d	$a1, $a2, 62, 53
	add.w	$a1, $a2, $a1
	srai.d	$a1, $a1, 10
	bge	$a0, $a1, .LBB2_4
# %bb.10:                               #   in Loop: Header=BB2_6 Depth=1
	sub.w	$a0, $a1, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 33
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_11:                               #   in Loop: Header=BB2_6 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(SODBtoRBSP)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 32
	ld.w	$s2, $s1, 0
	move	$a1, $zero
	move	$a2, $s2
	move	$a3, $zero
	b	.LBB2_5
.LBB2_12:                               # %._crit_edge
	ld.d	$a0, $s4, 0
	ldptr.w	$a0, $a0, 4008
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_14
# %bb.13:
	pcaddu18i	$ra, %call36(store_contexts)
	jirl	$ra, $ra, 0
.LBB2_14:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_ref_pic_list_reordering_buffer)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
.Lfunc_end2:
	.size	terminate_slice, .Lfunc_end2-terminate_slice
                                        # -- End function
	.globl	encode_one_slice                # -- Begin function encode_one_slice
	.p2align	5
	.type	encode_one_slice,@function
encode_one_slice:                       # @encode_one_slice
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
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 120                  # 8-byte Folded Spill
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.w	$zero, $sp, 116
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$s8, $a1, %got_pc_lo12(img)
	ld.d	$a1, $s8, 0
	st.w	$zero, $a1, 144
	pcaddu18i	$ra, %call36(FmoGetFirstMacroblockInSlice)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	ldptr.d	$fp, $a1, 14208
	ld.w	$a2, $fp, 0
	move	$s0, $a0
	st.w	$a0, $a1, 12
	addi.d	$a0, $a2, 1
	ori	$a1, $zero, 99
	st.w	$a0, $fp, 0
	blt	$a2, $a1, .LBB3_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB3_2:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s3, $a0, 0
	ld.w	$a0, $s3, 264
	ori	$a1, $zero, 1
	lu12i.w	$a3, 3
	beq	$a0, $a1, .LBB3_5
# %bb.3:
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB3_6
# %bb.4:
	ld.w	$a0, $s3, 268
	slli.w	$s2, $a0, 1
	b	.LBB3_8
.LBB3_5:
	ld.d	$a0, $s8, 0
	ori	$a1, $a3, 3156
	ldx.w	$a1, $a0, $a1
	ori	$a2, $a3, 3160
	ldx.w	$a0, $a0, $a2
	ld.w	$a2, $s3, 268
	slli.d	$a1, $a1, 8
	slli.d	$a0, $a0, 9
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 128
	mul.d	$a0, $a0, $a2
	b	.LBB3_7
.LBB3_6:
	ld.d	$a0, $s8, 0
	ori	$a1, $a3, 3156
	ldx.w	$a1, $a0, $a1
	ori	$a2, $a3, 3160
	ldx.w	$a2, $a0, $a2
	ori	$a3, $a3, 3064
	ldx.w	$a0, $a0, $a3
	slli.d	$a1, $a1, 8
	slli.d	$a2, $a2, 9
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 128
	mul.d	$a0, $a1, $a0
.LBB3_7:
	addi.w	$s2, $a0, 500
.LBB3_8:
	ori	$a0, $zero, 1
	ori	$a1, $zero, 144
	ori	$s4, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB3_22
# %bb.9:
	ldptr.w	$a0, $s3, 4008
	bne	$a0, $s4, .LBB3_11
.LBB3_10:
	pcaddu18i	$ra, %call36(create_contexts_MotionInfo)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 32
	pcaddu18i	$ra, %call36(create_contexts_TextureInfo)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $a1, 0
	st.d	$a0, $s1, 40
.LBB3_11:
	ori	$a0, $zero, 4016
	ld.d	$a1, $s8, 0
	ldx.w	$a0, $s3, $a0
	ldptr.d	$a1, $a1, 14208
	sltui	$a2, $a0, 1
	ori	$a3, $zero, 3
	masknez	$a3, $a3, $a2
	ld.w	$a1, $a1, 4
	ori	$a4, $zero, 1
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	sltui	$a1, $a1, 1
	maskeqz	$a2, $a2, $a1
	masknez	$a3, $a4, $a1
	or	$s3, $a2, $a3
	st.w	$s3, $s1, 16
	pcalau12i	$a2, %got_pc_hi20(assignSE2partition)
	ld.d	$a2, $a2, %got_pc_lo12(assignSE2partition)
	pcalau12i	$a3, %got_pc_hi20(assignSE2partition_NoDP)
	ld.d	$a3, $a3, %got_pc_lo12(assignSE2partition_NoDP)
	st.d	$a3, $a2, 0
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	masknez	$a4, $a3, $a0
	pcalau12i	$a5, %got_pc_hi20(assignSE2partition_DP)
	ld.d	$a5, $a5, %got_pc_lo12(assignSE2partition_DP)
	maskeqz	$a0, $a5, $a0
	or	$a0, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a3, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $a2, 8
	ori	$a1, $zero, 104
	move	$a0, $s3
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$a0, $s1, 24
	bnez	$a0, .LBB3_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB3_13:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s5, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s6, $a0, %pc_lo12(.L.str.6)
	b	.LBB3_15
	.p2align	4, , 16
.LBB3_14:                               #   in Loop: Header=BB3_15 Depth=1
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, 104
	beqz	$s3, .LBB3_19
.LBB3_15:                               # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$a0, $s4, 0
	bnez	$a0, .LBB3_17
# %bb.16:                               #   in Loop: Header=BB3_15 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s4, 0
.LBB3_17:                               #   in Loop: Header=BB3_15 Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 32
	bnez	$a0, .LBB3_14
# %bb.18:                               #   in Loop: Header=BB3_15 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	b	.LBB3_14
.LBB3_19:                               # %malloc_slice.exit.i
	ld.w	$a0, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$s1, $fp, $a0
	ld.d	$a1, $s8, 0
	ldptr.w	$a0, $a1, 14248
	bstrpick.d	$a2, $a0, 62, 55
	add.d	$a2, $a0, $a2
	bstrpick.d	$a2, $a2, 31, 8
	slli.d	$a2, $a2, 8
	ld.w	$a3, $a1, 36
	sub.d	$a0, $a0, $a2
	stptr.d	$s1, $a1, 14216
	st.w	$a0, $s1, 0
	st.w	$a3, $s1, 4
	st.w	$s0, $s1, 12
	pcalau12i	$a0, %got_pc_hi20(dummy_slice_too_big)
	ld.d	$a2, $a0, %got_pc_lo12(dummy_slice_too_big)
	ld.w	$a0, $s1, 16
	st.d	$a2, $s1, 112
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	blez	$a0, .LBB3_28
# %bb.20:                               # %.lr.ph.i
	ld.d	$a2, $s1, 24
	ori	$a3, $zero, 1
	bne	$a0, $a3, .LBB3_23
# %bb.21:
	move	$a3, $zero
	b	.LBB3_26
.LBB3_22:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $a0, 0
	ldptr.w	$a0, $s3, 4008
	beq	$a0, $s4, .LBB3_10
	b	.LBB3_11
.LBB3_23:                               # %vector.ph
	bstrpick.d	$a3, $a0, 30, 1
	slli.d	$a3, $a3, 1
	ori	$a4, $zero, 0
	lu32i.d	$a4, 8
	move	$a5, $a3
	move	$a6, $a2
	.p2align	4, , 16
.LBB3_24:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a6, 0
	ld.d	$t0, $a6, 104
	st.d	$a4, $a7, 0
	st.d	$a4, $t0, 0
	st.b	$zero, $a7, 8
	st.b	$zero, $t0, 8
	addi.d	$a5, $a5, -2
	addi.d	$a6, $a6, 208
	bnez	$a5, .LBB3_24
# %bb.25:                               # %middle.block
	beq	$a3, $a0, .LBB3_28
.LBB3_26:                               # %scalar.ph.preheader
	sub.d	$a0, $a0, $a3
	ori	$a4, $zero, 104
	mul.d	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	ori	$a3, $zero, 0
	lu32i.d	$a3, 8
	.p2align	4, , 16
.LBB3_27:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	st.d	$a3, $a4, 0
	st.b	$zero, $a4, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 104
	bnez	$a0, .LBB3_27
.LBB3_28:                               # %._crit_edge.i
	pcalau12i	$s5, %pc_hi20(active_pps)
	ld.d	$a0, $s5, %pc_lo12(active_pps)
	ld.d	$a3, $s6, 0
	ld.w	$a2, $a0, 184
	ld.w	$a0, $a0, 188
	ldptr.w	$a5, $a3, 5084
	addi.w	$a4, $a2, 1
	stptr.w	$a4, $a1, 14456
	addi.w	$a2, $a0, 1
	stptr.w	$a2, $a1, 14460
	beqz	$a5, .LBB3_32
# %bb.29:
	pcalau12i	$a0, %pc_hi20(redundant_coding)
	ld.w	$a0, $a0, %pc_lo12(redundant_coding)
	ori	$a4, $zero, 1
	bnez	$a0, .LBB3_31
# %bb.30:
	ld.w	$a0, $a1, 0
	ldptr.w	$a4, $a3, 5768
	slt	$a5, $a0, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a0, $a0, $a5
	or	$a4, $a0, $a4
.LBB3_31:                               # %.sink.split.i
	stptr.w	$a4, $a1, 14456
.LBB3_32:
	ld.w	$a0, $a1, 20
	ori	$a5, $zero, 3
	beq	$a0, $a5, .LBB3_35
# %bb.33:
	ori	$a5, $zero, 1
	beq	$a0, $a5, .LBB3_38
# %bb.34:
	bnez	$a0, .LBB3_42
.LBB3_35:
	ld.w	$a5, $a3, 36
	beqz	$a5, .LBB3_37
# %bb.36:
	ld.w	$a6, $a1, 24
	sltu	$a6, $zero, $a6
	sll.w	$a5, $a5, $a6
	slt	$a6, $a4, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a5
	stptr.w	$a4, $a1, 14456
.LBB3_37:
	ori	$a5, $zero, 1
	bne	$a0, $a5, .LBB3_42
.LBB3_38:
	ld.w	$a5, $a3, 40
	beqz	$a5, .LBB3_40
# %bb.39:
	ld.w	$a6, $a1, 24
	sltu	$a6, $zero, $a6
	sll.w	$a5, $a5, $a6
	slt	$a6, $a4, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a5
	stptr.w	$a4, $a1, 14456
.LBB3_40:
	ld.w	$a3, $a3, 44
	beqz	$a3, .LBB3_42
# %bb.41:
	ld.w	$a4, $a1, 24
	sltu	$a4, $zero, $a4
	sll.w	$a3, $a3, $a4
	slt	$a4, $a2, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	stptr.w	$a2, $a1, 14460
.LBB3_42:
	ld.w	$a1, $a1, 24
	pcaddu18i	$ra, %call36(init_lists)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(listXsize)
	ld.d	$s3, $a0, %got_pc_lo12(listXsize)
	ld.d	$a0, $s8, 0
	ld.d	$a2, $s3, 0
	ldptr.w	$a3, $a0, 15360
	ld.d	$a1, $s6, 0
	stptr.d	$a2, $a0, 14456
	pcalau12i	$s4, %pc_hi20(active_sps)
	beqz	$a3, .LBB3_46
# %bb.43:
	ldptr.w	$a2, $a1, 4004
	beqz	$a2, .LBB3_46
# %bb.44:
	pcalau12i	$a2, %got_pc_hi20(dpb)
	ld.d	$a2, $a2, %got_pc_lo12(dpb)
	ld.d	$a3, $s4, %pc_lo12(active_sps)
	ld.w	$a2, $a2, 32
	ld.w	$a3, $a3, 1132
	bne	$a2, $a3, .LBB3_46
# %bb.45:
	ldptr.w	$a0, $a0, 15332
	pcaddu18i	$ra, %call36(poc_based_ref_management)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
.LBB3_46:
	ld.w	$a0, $a1, 1564
	beqz	$a0, .LBB3_59
# %bb.47:                               # %.preheader119.i
	ld.w	$a2, $s3, 0
	ld.d	$a0, $s8, 0
	blez	$a2, .LBB3_53
# %bb.48:                               # %.lr.ph126.i
	pcalau12i	$a3, %got_pc_hi20(listX)
	ld.d	$a3, $a3, %got_pc_lo12(listX)
	ld.d	$a3, $a3, 0
	ldptr.w	$a4, $a0, 15596
	move	$a5, $zero
	b	.LBB3_50
	.p2align	4, , 16
.LBB3_49:                               #   in Loop: Header=BB3_50 Depth=1
	addi.w	$a5, $a5, 1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	beqz	$a2, .LBB3_53
.LBB3_50:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, 0
	ld.w	$a6, $a6, 4
	bge	$a6, $a4, .LBB3_49
# %bb.51:                               #   in Loop: Header=BB3_50 Depth=1
	ldptr.w	$a6, $a0, 15328
	bge	$a4, $a6, .LBB3_49
# %bb.52:
	ori	$a2, $zero, 1
	slt	$a3, $a2, $a5
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a5, $a3
	or	$a2, $a3, $a2
	stptr.w	$a2, $a0, 14456
	st.w	$a2, $s3, 0
.LBB3_53:                               # %.loopexit120.i
	ld.w	$a2, $s3, 4
	blez	$a2, .LBB3_60
# %bb.54:                               # %.lr.ph129.i
	pcalau12i	$a3, %got_pc_hi20(listX)
	ld.d	$a3, $a3, %got_pc_lo12(listX)
	ld.d	$a3, $a3, 8
	ldptr.w	$a4, $a0, 15596
	move	$a5, $zero
	b	.LBB3_56
	.p2align	4, , 16
.LBB3_55:                               #   in Loop: Header=BB3_56 Depth=1
	addi.w	$a5, $a5, 1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	beqz	$a2, .LBB3_60
.LBB3_56:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, 0
	ld.w	$a6, $a6, 4
	bge	$a6, $a4, .LBB3_55
# %bb.57:                               #   in Loop: Header=BB3_56 Depth=1
	ldptr.w	$a6, $a0, 15328
	bge	$a4, $a6, .LBB3_55
# %bb.58:
	ori	$a2, $zero, 1
	slt	$a3, $a2, $a5
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a5, $a3
	or	$a2, $a3, $a2
	stptr.w	$a2, $a0, 14460
	st.w	$a2, $s3, 4
	b	.LBB3_60
.LBB3_59:                               # %..loopexit118_crit_edge.i
	ld.d	$a0, $s8, 0
.LBB3_60:                               # %.loopexit118.i
	ldptr.d	$a2, $a0, 14216
	ld.w	$a3, $a0, 20
	st.w	$zero, $a2, 48
	st.w	$zero, $a2, 80
	beqz	$a3, .LBB3_63
.LBB3_61:
	ld.w	$a1, $a0, 24
	beqz	$a1, .LBB3_81
# %bb.62:
	ld.w	$a0, $a0, 20
	ori	$a1, $zero, 2
	lu12i.w	$s1, 3
	bne	$a0, $a1, .LBB3_82
	b	.LBB3_92
.LBB3_63:
	ldptr.w	$a1, $a1, 4000
	beqz	$a1, .LBB3_61
# %bb.64:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(alloc_ref_pic_list_reordering_buffer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.w	$a3, $a0, 20
	ori	$a2, $zero, 2
	beq	$a3, $a2, .LBB3_75
# %bb.65:
	ori	$a1, $zero, 4
	beq	$a3, $a1, .LBB3_75
# %bb.66:                               # %.preheader117.i
	ldptr.w	$a1, $a0, 14456
	bltz	$a1, .LBB3_70
# %bb.67:                               # %.lr.ph132.i
	ld.d	$a3, $s1, 56
	ld.d	$a4, $s1, 64
	ld.d	$a5, $s1, 72
	addi.w	$a6, $zero, -1
	ori	$a7, $zero, 3
	.p2align	4, , 16
.LBB3_68:                               # =>This Inner Loop Header: Depth=1
	st.w	$a7, $a3, 0
	st.w	$zero, $a4, 0
	st.w	$zero, $a5, 0
	ldptr.w	$a1, $a0, 14456
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	blt	$a6, $a1, .LBB3_68
# %bb.69:                               # %._crit_edge133.loopexit.i
	ld.w	$a3, $a0, 20
.LBB3_70:                               # %._crit_edge133.i
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB3_75
# %bb.71:                               # %.preheader.i
	move	$t0, $s6
	ldptr.w	$a3, $a0, 14460
	lu12i.w	$s6, 3
	bltz	$a3, .LBB3_78
# %bb.72:                               # %.lr.ph136.i
	ld.d	$a1, $s1, 88
	ld.d	$a3, $s1, 96
	ld.d	$a4, $s1, 104
	addi.w	$a5, $zero, -1
	ori	$a6, $zero, 3
	.p2align	4, , 16
.LBB3_73:                               # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a1, 0
	st.w	$zero, $a3, 0
	st.w	$zero, $a4, 0
	ldptr.w	$a7, $a0, 14460
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	blt	$a5, $a7, .LBB3_73
# %bb.74:                               # %thread-pre-split.loopexit.i
	ld.w	$a3, $a0, 20
	move	$s6, $t0
.LBB3_75:                               # %thread-pre-split.i
	beq	$a3, $a2, .LBB3_61
# %bb.76:                               # %thread-pre-split.i
	ori	$a1, $zero, 4
	beq	$a3, $a1, .LBB3_61
# %bb.77:                               # %thread-pre-split.i.thread-pre-split.thread.i_crit_edge
	lu12i.w	$s6, 3
	ori	$a1, $s6, 2168
	ldx.w	$a1, $a0, $a1
.LBB3_78:                               # %thread-pre-split.thread.i
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$fp, $a0, %got_pc_lo12(listX)
	ld.d	$a0, $fp, 0
	ld.d	$a2, $s1, 56
	ld.d	$a3, $s1, 64
	move	$a5, $zero
	pcaddu18i	$ra, %call36(poc_ref_pic_reorder)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	ld.d	$a0, $fp, 0
	ori	$a2, $s6, 2168
	ldx.w	$a1, $a1, $a2
	ld.d	$a3, $s1, 56
	ld.d	$a4, $s1, 64
	ld.d	$a5, $s1, 72
	addi.w	$a2, $a1, -1
	pcalau12i	$a1, %got_pc_hi20(listXsize)
	ld.d	$s2, $a1, %got_pc_lo12(listXsize)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(reorder_ref_pic_list)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB3_80
# %bb.79:
	ldptr.w	$a1, $a0, 14460
	ld.d	$a0, $fp, 8
	ld.d	$a2, $s1, 88
	ld.d	$a3, $s1, 96
	ori	$a5, $zero, 1
	pcaddu18i	$ra, %call36(poc_ref_pic_reorder)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	ld.d	$a0, $fp, 8
	ori	$a2, $s6, 2172
	ldx.w	$a1, $a1, $a2
	ld.d	$a3, $s1, 88
	ld.d	$a4, $s1, 96
	ld.d	$a5, $s1, 104
	addi.w	$a2, $a1, -1
	addi.d	$a1, $s2, 4
	pcaddu18i	$ra, %call36(reorder_ref_pic_list)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
.LBB3_80:
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	b	.LBB3_61
.LBB3_81:
	pcaddu18i	$ra, %call36(init_mbaff_lists)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.w	$a0, $a0, 20
	ori	$a1, $zero, 2
	lu12i.w	$s1, 3
	beq	$a0, $a1, .LBB3_92
.LBB3_82:
	ld.d	$a1, $s5, %pc_lo12(active_pps)
	ld.w	$a3, $a1, 192
	ori	$a2, $zero, 1
	bne	$a3, $a2, .LBB3_89
# %bb.83:
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB3_85
# %bb.84:
	bnez	$a0, .LBB3_91
.LBB3_85:
	ld.d	$a0, $s6, 0
	ld.w	$a1, $a0, 1576
	beqz	$a1, .LBB3_214
# %bb.86:
	ldptr.w	$a0, $a0, 2940
	beqz	$a0, .LBB3_214
# %bb.87:
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(enc_frame_picture2)
	ld.d	$a1, $a1, %got_pc_lo12(enc_frame_picture2)
	ld.d	$a1, $a1, 0
	beq	$a0, $a1, .LBB3_214
# %bb.88:
	ori	$a0, $zero, 1
	b	.LBB3_215
.LBB3_89:
	bne	$a0, $a2, .LBB3_92
# %bb.90:
	ld.w	$a0, $a1, 196
	beqz	$a0, .LBB3_92
.LBB3_91:                               # %.thread.i
	pcaddu18i	$ra, %call36(estimate_weighting_factor_B_slice)
	jirl	$ra, $ra, 0
.LBB3_92:
	ld.w	$a0, $s3, 0
	blez	$a0, .LBB3_95
.LBB3_93:                               # %.lr.ph.i.i
	pcalau12i	$a1, %got_pc_hi20(listX)
	ld.d	$a1, $a1, %got_pc_lo12(listX)
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	ld.d	$a2, $a2, 0
	addi.d	$a2, $a2, 2047
	addi.d	$a2, $a2, 1145
	.p2align	4, , 16
.LBB3_94:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	ld.w	$a4, $a3, 4
	ld.w	$a5, $a3, 0
	slli.w	$a4, $a4, 1
	addi.d	$a5, $a5, -2
	sltui	$a5, $a5, 1
	ld.w	$a6, $a3, 16
	or	$a4, $a4, $a5
	stptr.d	$a4, $a2, -3168
	ld.w	$a4, $a3, 8
	slli.w	$a5, $a6, 1
	ld.w	$a3, $a3, 12
	st.d	$a5, $a2, -1584
	slli.w	$a4, $a4, 1
	st.d	$a4, $a2, 0
	slli.d	$a3, $a3, 1
	addi.w	$a3, $a3, 1
	st.d	$a3, $a2, 1584
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB3_94
.LBB3_95:                               # %.preheader45.i.i
	ld.w	$a0, $s3, 4
	blez	$a0, .LBB3_98
# %bb.96:                               # %.lr.ph48.i.i
	pcalau12i	$a1, %got_pc_hi20(listX)
	ld.d	$a1, $a1, %got_pc_lo12(listX)
	ld.d	$a1, $a1, 8
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	ld.d	$a2, $a2, 0
	addi.d	$a2, $a2, 2047
	addi.d	$a2, $a2, 1409
	.p2align	4, , 16
.LBB3_97:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	ld.w	$a4, $a3, 4
	ld.w	$a5, $a3, 0
	slli.w	$a4, $a4, 1
	addi.d	$a5, $a5, -2
	sltui	$a5, $a5, 1
	ld.w	$a6, $a3, 16
	or	$a4, $a4, $a5
	stptr.d	$a4, $a2, -3168
	ld.w	$a4, $a3, 8
	slli.w	$a5, $a6, 1
	ld.w	$a3, $a3, 12
	st.d	$a5, $a2, -1584
	slli.w	$a4, $a4, 1
	st.d	$a4, $a2, 0
	slli.d	$a3, $a3, 1
	addi.w	$a3, $a3, 1
	st.d	$a3, $a2, 1584
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB3_97
.LBB3_98:                               # %._crit_edge.i.i
	ld.d	$a0, $s4, %pc_lo12(active_sps)
	ld.w	$a1, $a0, 1148
	ld.d	$a0, $s8, 0
	bnez	$a1, .LBB3_112
# %bb.99:
	ld.w	$a1, $a0, 24
	bnez	$a1, .LBB3_112
# %bb.100:                              # %.preheader44.i.i
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a1, 0
	ld.w	$a3, $s3, 8
	addi.d	$a2, $a1, 2047
	blez	$a3, .LBB3_103
# %bb.101:                              # %.lr.ph50.i.i
	pcalau12i	$a4, %got_pc_hi20(listX)
	ld.d	$a4, $a4, %got_pc_lo12(listX)
	ld.d	$a4, $a4, 16
	addi.d	$a5, $a2, 1673
	.p2align	4, , 16
.LBB3_102:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, 0
	ld.w	$a7, $a6, 4
	ld.w	$t0, $a6, 0
	slli.w	$a7, $a7, 1
	addi.d	$t0, $t0, -2
	sltui	$t0, $t0, 1
	ld.w	$t1, $a6, 16
	or	$a7, $a7, $t0
	stptr.d	$a7, $a5, -3168
	ld.w	$a7, $a6, 8
	slli.w	$t0, $t1, 1
	ld.w	$a6, $a6, 12
	st.d	$t0, $a5, -1584
	slli.w	$a7, $a7, 1
	st.d	$a7, $a5, 0
	slli.d	$a6, $a6, 1
	addi.w	$a6, $a6, 1
	st.d	$a6, $a5, 1584
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB3_102
.LBB3_103:                              # %._crit_edge51.i.i
	ld.w	$a3, $s3, 12
	blez	$a3, .LBB3_106
# %bb.104:                              # %.lr.ph50.1.i.i
	pcalau12i	$a4, %got_pc_hi20(listX)
	ld.d	$a4, $a4, %got_pc_lo12(listX)
	ld.d	$a4, $a4, 24
	addi.d	$a2, $a2, 1937
	.p2align	4, , 16
.LBB3_105:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	ld.w	$a6, $a5, 4
	ld.w	$a7, $a5, 0
	slli.w	$a6, $a6, 1
	addi.d	$a7, $a7, -2
	sltui	$a7, $a7, 1
	ld.w	$t0, $a5, 16
	or	$a6, $a6, $a7
	stptr.d	$a6, $a2, -3168
	ld.w	$a6, $a5, 8
	slli.w	$a7, $t0, 1
	ld.w	$a5, $a5, 12
	st.d	$a7, $a2, -1584
	slli.w	$a6, $a6, 1
	st.d	$a6, $a2, 0
	slli.d	$a5, $a5, 1
	addi.w	$a5, $a5, 1
	st.d	$a5, $a2, 1584
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB3_105
.LBB3_106:                              # %._crit_edge51.1.i.i
	ld.w	$a2, $s3, 16
	blez	$a2, .LBB3_109
# %bb.107:                              # %.lr.ph50.2.i.i
	pcalau12i	$a3, %got_pc_hi20(listX)
	ld.d	$a3, $a3, %got_pc_lo12(listX)
	ld.d	$a3, $a3, 32
	lu12i.w	$a4, 1
	ori	$a4, $a4, 152
	add.d	$a4, $a1, $a4
	.p2align	4, , 16
.LBB3_108:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, 0
	ld.w	$a6, $a5, 4
	ld.w	$a7, $a5, 0
	slli.w	$a6, $a6, 1
	addi.d	$a7, $a7, -2
	sltui	$a7, $a7, 1
	ld.w	$t0, $a5, 16
	or	$a6, $a6, $a7
	stptr.d	$a6, $a4, -3168
	ld.w	$a6, $a5, 8
	slli.w	$a7, $t0, 1
	ld.w	$a5, $a5, 12
	st.d	$a7, $a4, -1584
	slli.w	$a6, $a6, 1
	st.d	$a6, $a4, 0
	slli.d	$a5, $a5, 1
	addi.w	$a5, $a5, 1
	st.d	$a5, $a4, 1584
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB3_108
.LBB3_109:                              # %._crit_edge51.2.i.i
	ld.w	$a2, $s3, 20
	blez	$a2, .LBB3_112
# %bb.110:                              # %.lr.ph50.3.i.i
	pcalau12i	$a3, %got_pc_hi20(listX)
	ld.d	$a3, $a3, %got_pc_lo12(listX)
	ld.d	$a3, $a3, 40
	lu12i.w	$a4, 1
	ori	$a4, $a4, 416
	add.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB3_111:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	ld.w	$a5, $a4, 4
	ld.w	$a6, $a4, 0
	slli.w	$a5, $a5, 1
	addi.d	$a6, $a6, -2
	sltui	$a6, $a6, 1
	ld.w	$a7, $a4, 16
	or	$a5, $a5, $a6
	stptr.d	$a5, $a1, -3168
	ld.w	$a5, $a4, 8
	slli.w	$a6, $a7, 1
	ld.w	$a4, $a4, 12
	st.d	$a6, $a1, -1584
	slli.w	$a5, $a5, 1
	st.d	$a5, $a1, 0
	slli.d	$a4, $a4, 1
	addi.w	$a4, $a4, 1
	st.d	$a4, $a1, 1584
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB3_111
.LBB3_112:                              # %set_ref_pic_num.exit.i
	ld.w	$a1, $a0, 20
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB3_114
# %bb.113:
	pcalau12i	$a0, %got_pc_hi20(Co_located)
	ld.d	$a0, $a0, %got_pc_lo12(Co_located)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(listX)
	ld.d	$a1, $a1, %got_pc_lo12(listX)
	pcaddu18i	$ra, %call36(compute_colocated)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.w	$a1, $a0, 20
.LBB3_114:
	ld.d	$a0, $s6, 0
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB3_117
# %bb.115:
	ldptr.w	$a1, $a0, 5244
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB3_117
# %bb.116:
	pcalau12i	$a0, %got_pc_hi20(EPZSCo_located)
	ld.d	$a0, $a0, %got_pc_lo12(EPZSCo_located)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(listX)
	ld.d	$a1, $a1, %got_pc_lo12(listX)
	pcaddu18i	$ra, %call36(EPZSSliceInit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
.LBB3_117:
	ldptr.w	$a0, $a0, 4008
	beqz	$a0, .LBB3_119
# %bb.118:                              # %.loopexit.loopexit139.i
	pcalau12i	$a0, %got_pc_hi20(writeMB_typeInfo)
	ld.d	$a0, $a0, %got_pc_lo12(writeMB_typeInfo)
	pcalau12i	$a1, %got_pc_hi20(writeMB_typeInfo_CABAC)
	ld.d	$a1, $a1, %got_pc_lo12(writeMB_typeInfo_CABAC)
	st.d	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(writeIntraPredMode)
	ld.d	$a0, $a0, %got_pc_lo12(writeIntraPredMode)
	pcalau12i	$a1, %got_pc_hi20(writeIntraPredMode_CABAC)
	ld.d	$a1, $a1, %got_pc_lo12(writeIntraPredMode_CABAC)
	st.d	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(writeB8_typeInfo)
	ld.d	$a0, $a0, %got_pc_lo12(writeB8_typeInfo)
	pcalau12i	$a1, %got_pc_hi20(writeB8_typeInfo_CABAC)
	ld.d	$a1, $a1, %got_pc_lo12(writeB8_typeInfo_CABAC)
	ld.w	$a2, $s3, 0
	st.d	$a1, $a0, 0
	sltui	$a0, $a2, 2
	pcalau12i	$a1, %got_pc_hi20(writeRefFrame_CABAC)
	ld.d	$a1, $a1, %got_pc_lo12(writeRefFrame_CABAC)
	masknez	$a2, $a1, $a0
	pcalau12i	$a3, %got_pc_hi20(writeSE_Dummy)
	ld.d	$a3, $a3, %got_pc_lo12(writeSE_Dummy)
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	pcalau12i	$a2, %got_pc_hi20(writeRefFrame)
	ld.d	$a2, $a2, %got_pc_lo12(writeRefFrame)
	ld.w	$a4, $s3, 4
	st.d	$a0, $a2, 0
	sltui	$a0, $a4, 2
	masknez	$a4, $a1, $a0
	vld	$vr0, $s3, 8
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a4
	st.d	$a0, $a2, 8
	vslti.wu	$vr0, $vr0, 2
	vpickve2gr.w	$a0, $vr0, 0
	andi	$a0, $a0, 1
	masknez	$a4, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a4
	st.d	$a0, $a2, 16
	vpickve2gr.w	$a0, $vr0, 1
	andi	$a0, $a0, 1
	masknez	$a4, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a4
	st.d	$a0, $a2, 24
	vpickve2gr.w	$a0, $vr0, 2
	andi	$a0, $a0, 1
	masknez	$a4, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a4
	st.d	$a0, $a2, 32
	vpickve2gr.w	$a0, $vr0, 3
	andi	$a0, $a0, 1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$a4, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(writeMB_transform_size_CABAC)
	ld.d	$a1, $a0, %got_pc_lo12(writeMB_transform_size_CABAC)
	pcalau12i	$a0, %got_pc_hi20(writeFieldModeInfo_CABAC)
	ld.d	$a2, $a0, %got_pc_lo12(writeFieldModeInfo_CABAC)
	pcalau12i	$a0, %got_pc_hi20(writeCIPredMode_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(writeCIPredMode_CABAC)
	pcalau12i	$a3, %got_pc_hi20(writeDquant_CABAC)
	ld.d	$a6, $a3, %got_pc_lo12(writeDquant_CABAC)
	pcalau12i	$a3, %got_pc_hi20(writeCBP_CABAC)
	ld.d	$a3, $a3, %got_pc_lo12(writeCBP_CABAC)
	pcalau12i	$a5, %got_pc_hi20(writeMVD_CABAC)
	ld.d	$a5, $a5, %got_pc_lo12(writeMVD_CABAC)
	b	.LBB3_133
.LBB3_119:
	pcalau12i	$a0, %got_pc_hi20(writeMB_typeInfo)
	ld.d	$a1, $a0, %got_pc_lo12(writeMB_typeInfo)
	pcalau12i	$a0, %got_pc_hi20(writeSE_UVLC)
	ld.d	$a0, $a0, %got_pc_lo12(writeSE_UVLC)
	st.d	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(writeIntraPredMode)
	ld.d	$a1, $a1, %got_pc_lo12(writeIntraPredMode)
	pcalau12i	$a2, %got_pc_hi20(writeIntraPredMode_CAVLC)
	ld.d	$a2, $a2, %got_pc_lo12(writeIntraPredMode_CAVLC)
	st.d	$a2, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(writeB8_typeInfo)
	ld.d	$a1, $a1, %got_pc_lo12(writeB8_typeInfo)
	ld.w	$a2, $s3, 0
	st.d	$a0, $a1, 0
	ori	$a3, $zero, 2
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.encode_one_slice.5)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.encode_one_slice.5)
	move	$a4, $a0
	bltu	$a3, $a2, .LBB3_121
# %bb.120:                              # %switch.lookup
	slli.d	$a2, $a2, 3
	ldx.d	$a4, $a1, $a2
.LBB3_121:
	pcalau12i	$a2, %got_pc_hi20(writeRefFrame)
	ld.d	$a2, $a2, %got_pc_lo12(writeRefFrame)
	ld.w	$a5, $s3, 4
	st.d	$a4, $a2, 0
	move	$a4, $a0
	bltu	$a3, $a5, .LBB3_123
# %bb.122:                              # %switch.lookup175
	slli.d	$a3, $a5, 3
	ldx.d	$a4, $a1, $a3
.LBB3_123:
	ld.w	$a5, $s3, 8
	ori	$a3, $zero, 2
	st.d	$a4, $a2, 8
	move	$a4, $a0
	bltu	$a3, $a5, .LBB3_125
# %bb.124:                              # %switch.lookup178
	slli.d	$a4, $a5, 3
	ldx.d	$a4, $a1, $a4
.LBB3_125:
	ld.w	$a5, $s3, 12
	st.d	$a4, $a2, 16
	move	$a4, $a0
	bltu	$a3, $a5, .LBB3_127
# %bb.126:                              # %switch.lookup181
	slli.d	$a3, $a5, 3
	ldx.d	$a4, $a1, $a3
.LBB3_127:
	ld.w	$a5, $s3, 16
	ori	$a6, $zero, 2
	st.d	$a4, $a2, 24
	move	$a3, $a0
	bltu	$a6, $a5, .LBB3_129
# %bb.128:                              # %switch.lookup184
	slli.d	$a3, $a5, 3
	ldx.d	$a3, $a1, $a3
.LBB3_129:
	ld.w	$a4, $s3, 20
	st.d	$a3, $a2, 32
	pcalau12i	$a2, %got_pc_hi20(writeSE_Flag)
	ld.d	$a2, $a2, %got_pc_lo12(writeSE_Flag)
	pcalau12i	$a3, %got_pc_hi20(writeCBP_VLC)
	ld.d	$a3, $a3, %got_pc_lo12(writeCBP_VLC)
	pcalau12i	$a5, %got_pc_hi20(writeSE_SVLC)
	ld.d	$a5, $a5, %got_pc_lo12(writeSE_SVLC)
	ori	$a6, $zero, 3
	bgeu	$a4, $a6, .LBB3_131
# %bb.130:                              # %switch.lookup187
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a1, $a4
	b	.LBB3_132
.LBB3_131:
	move	$a4, $a0
.LBB3_132:                              # %init_slice.exit
	move	$a6, $a5
	move	$a1, $a2
.LBB3_133:                              # %init_slice.exit
	pcalau12i	$a7, %got_pc_hi20(writeRefFrame)
	ld.d	$a7, $a7, %got_pc_lo12(writeRefFrame)
	st.d	$a4, $a7, 40
	pcalau12i	$a4, %got_pc_hi20(writeMVD)
	ld.d	$a4, $a4, %got_pc_lo12(writeMVD)
	st.d	$a5, $a4, 0
	pcalau12i	$a4, %got_pc_hi20(writeCBP)
	ld.d	$a4, $a4, %got_pc_lo12(writeCBP)
	st.d	$a3, $a4, 0
	pcalau12i	$a3, %got_pc_hi20(writeDquant)
	ld.d	$a3, $a3, %got_pc_lo12(writeDquant)
	st.d	$a6, $a3, 0
	pcalau12i	$a3, %got_pc_hi20(writeCIPredMode)
	ld.d	$a3, $a3, %got_pc_lo12(writeCIPredMode)
	st.d	$a0, $a3, 0
	pcalau12i	$a0, %got_pc_hi20(writeFieldModeInfo)
	ld.d	$a0, $a0, %got_pc_lo12(writeFieldModeInfo)
	st.d	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(writeMB_transform_size)
	ld.d	$a0, $a0, %got_pc_lo12(writeMB_transform_size)
	ld.d	$a2, $s8, 0
	ldptr.d	$a2, $a2, 14216
	ld.d	$a2, $a2, 24
	st.d	$a1, $a0, 0
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(Bytes_After_Header)
	st.w	$a0, $a1, %pc_lo12(Bytes_After_Header)
	pcaddu18i	$ra, %call36(SetLagrangianMultipliers)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ldptr.w	$a1, $a0, 4008
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB3_135
# %bb.134:
	pcaddu18i	$ra, %call36(SetCtxModelNumber)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
.LBB3_135:
	ldptr.w	$a1, $a0, 4168
	beqz	$a1, .LBB3_138
# %bb.136:
	ldptr.w	$a1, $a0, 4732
	ld.d	$a0, $s8, 0
	beqz	$a1, .LBB3_139
# %bb.137:
	ld.w	$a1, $a0, 20
	sltui	$a2, $a1, 1
	addi.d	$a1, $a1, -3
	sltui	$a1, $a1, 1
	or	$a1, $a2, $a1
	b	.LBB3_140
.LBB3_138:                              # %._crit_edge83
	ld.d	$a0, $s8, 0
.LBB3_139:
	move	$a1, $zero
.LBB3_140:
	ori	$a2, $s1, 3304
	stx.h	$a1, $a0, $a2
	pcaddu18i	$ra, %call36(start_slice)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	ldptr.w	$a2, $a1, 5116
	ld.d	$a1, $s8, 0
	pcalau12i	$a3, %pc_hi20(generic_RC)
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	beqz	$a2, .LBB3_143
# %bb.141:
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(generic_RC)
	ld.w	$a3, $a2, 16
	ldptr.w	$a4, $a1, 15404
	ldptr.w	$a5, $a1, 15352
	add.d	$a3, $a3, $a0
	st.w	$a3, $a2, 16
	bgeu	$a4, $a5, .LBB3_143
# %bb.142:
	ld.w	$a3, $a2, 24
	add.d	$a3, $a3, $a0
	st.w	$a3, $a2, 24
.LBB3_143:
	pcalau12i	$a2, %got_pc_hi20(stats)
	ld.d	$a2, $a2, %got_pc_lo12(stats)
	ld.d	$a2, $a2, 0
	ld.w	$a3, $a1, 20
	ld.w	$a4, $a2, 32
	alsl.d	$a3, $a3, $a2, 3
	ld.d	$a5, $a3, 2040
	ld.w	$a6, $sp, 116
	add.d	$a4, $a4, $a0
	st.w	$a4, $a2, 32
	add.d	$a0, $a5, $a0
	st.d	$a0, $a3, 2040
	beqz	$a6, .LBB3_145
# %bb.144:
	move	$fp, $zero
	b	.LBB3_218
.LBB3_145:                              # %.lr.ph.preheader
	addi.w	$s3, $zero, -1
	lu52i.d	$a0, $s3, 2046
	movgr2fr.d	$fs0, $a0
	pcalau12i	$s7, %pc_hi20(rdopt)
	pcalau12i	$a0, %pc_hi20(rddata_top_frame_mb)
	addi.d	$a0, $a0, %pc_lo12(rddata_top_frame_mb)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(encode_one_macroblock)
	ori	$fp, $zero, 1
	pcalau12i	$a0, %pc_hi20(errortext)
	addi.d	$a0, $a0, %pc_lo12(errortext)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a1, $a0, 612
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ori	$s5, $zero, 2
	ori	$a0, $a0, 1020
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(quadratic_RC_init)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(quadratic_RC)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(rddata_bot_frame_mb)
	addi.d	$a0, $a0, %pc_lo12(rddata_bot_frame_mb)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	b	.LBB3_149
.LBB3_146:                              #   in Loop: Header=BB3_149 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FmoGetNextMBNr)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beq	$a0, $s3, .LBB3_213
.LBB3_147:                              #   in Loop: Header=BB3_149 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(proceed2nextMacroblock)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB3_148:                              #   in Loop: Header=BB3_149 Depth=1
	ld.w	$a0, $sp, 116
	bnez	$a0, .LBB3_217
.LBB3_149:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	ldptr.w	$a1, $a0, 15260
	beqz	$a1, .LBB3_154
# %bb.150:                              #   in Loop: Header=BB3_149 Depth=1
	ld.d	$a1, $s6, 0
	ldptr.w	$a1, $a1, 5656
	beqz	$a1, .LBB3_154
# %bb.151:                              #   in Loop: Header=BB3_149 Depth=1
	ld.w	$a0, $a0, 12
	mod.w	$a0, $a0, $a1
	bnez	$a0, .LBB3_154
# %bb.152:                              #   in Loop: Header=BB3_149 Depth=1
	pcaddu18i	$ra, %call36(CalculateOffsetParam)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ldptr.w	$a0, $a0, 5100
	beqz	$a0, .LBB3_154
# %bb.153:                              #   in Loop: Header=BB3_149 Depth=1
	pcaddu18i	$ra, %call36(CalculateOffset8Param)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB3_154:                              #   in Loop: Header=BB3_149 Depth=1
	ld.d	$a2, $s8, 0
	ldptr.w	$a0, $a2, 15268
	beqz	$a0, .LBB3_184
# %bb.155:                              #   in Loop: Header=BB3_149 Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.wu	$a1, $a0, $a1
	stptr.w	$zero, $a2, 15408
	bstrpick.d	$a3, $a1, 31, 1
	slli.w	$a3, $a3, 1
	addi.w	$s4, $s0, 1
	bne	$a3, $s5, .LBB3_172
# %bb.156:                              #   in Loop: Header=BB3_149 Depth=1
	stptr.d	$zero, $a2, 14464
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$a3, $a0, $a3
	st.w	$zero, $sp, 112
	stptr.w	$zero, $a2, 15412
	bne	$a1, $s5, .LBB3_161
# %bb.157:                              #   in Loop: Header=BB3_149 Depth=1
	beqz	$a3, .LBB3_161
# %bb.158:                              #   in Loop: Header=BB3_149 Depth=1
	ldptr.w	$a1, $a2, 15388
	blez	$a1, .LBB3_162
# %bb.159:                              #   in Loop: Header=BB3_149 Depth=1
	ldptr.w	$a2, $a2, 15404
	mod.wu	$a1, $a1, $a2
	bnez	$a1, .LBB3_162
# %bb.160:                              #   in Loop: Header=BB3_149 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(quadratic_RC_init)
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(quadratic_RC)
	pcaddu18i	$ra, %call36(copy_rc_jvt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$a3, $a0, $a1
.LBB3_161:                              #   in Loop: Header=BB3_149 Depth=1
	beqz	$a3, .LBB3_164
.LBB3_162:                              # %.thread138
                                        #   in Loop: Header=BB3_149 Depth=1
	ldptr.w	$a0, $a0, 4708
	bne	$a0, $s5, .LBB3_164
# %bb.163:                              #   in Loop: Header=BB3_149 Depth=1
	pcalau12i	$a0, %pc_hi20(generic_RC_init)
	ld.d	$a0, $a0, %pc_lo12(generic_RC_init)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	pcaddu18i	$ra, %call36(copy_rc_generic)
	jirl	$ra, $ra, 0
.LBB3_164:                              #   in Loop: Header=BB3_149 Depth=1
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(start_macroblock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(encode_one_macroblock)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $s7, %pc_lo12(rdopt)
	jirl	$ra, $a0, 0
	ld.d	$a0, $s7, %pc_lo12(rdopt)
	ld.d	$a1, $s8, 0
	fld.d	$fs0, $a0, 0
	stptr.w	$fp, $a1, 15412
	stptr.w	$zero, $a1, 14464
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(start_macroblock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(encode_one_macroblock)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $s7, %pc_lo12(rdopt)
	jirl	$ra, $a0, 0
	ld.d	$a0, $s6, 0
	ldptr.w	$a1, $a0, 5116
	beqz	$a1, .LBB3_171
# %bb.165:                              #   in Loop: Header=BB3_149 Depth=1
	ldptr.w	$a1, $a0, 4708
	bne	$a1, $s5, .LBB3_169
# %bb.166:                              #   in Loop: Header=BB3_149 Depth=1
	ld.d	$a1, $s8, 0
	ldptr.w	$a2, $a1, 15388
	blez	$a2, .LBB3_169
# %bb.167:                              #   in Loop: Header=BB3_149 Depth=1
	ldptr.w	$a1, $a1, 15404
	mod.wu	$a1, $a2, $a1
	bnez	$a1, .LBB3_169
# %bb.168:                              #   in Loop: Header=BB3_149 Depth=1
	pcalau12i	$a0, %pc_hi20(quadratic_RC_best)
	ld.d	$a0, $a0, %pc_lo12(quadratic_RC_best)
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(quadratic_RC)
	pcaddu18i	$ra, %call36(copy_rc_jvt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ldptr.w	$a1, $a0, 5116
	beqz	$a1, .LBB3_171
.LBB3_169:                              # %.thread141
                                        #   in Loop: Header=BB3_149 Depth=1
	ldptr.w	$a1, $a0, 4708
	bne	$a1, $s5, .LBB3_171
# %bb.170:                              #   in Loop: Header=BB3_149 Depth=1
	pcalau12i	$a0, %pc_hi20(generic_RC_best)
	ld.d	$a0, $a0, %pc_lo12(generic_RC_best)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	pcaddu18i	$ra, %call36(copy_rc_generic)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
.LBB3_171:                              # %.thread143
                                        #   in Loop: Header=BB3_149 Depth=1
	ld.d	$a1, $s7, %pc_lo12(rdopt)
	fld.d	$fa0, $a1, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $s8, 0
	fadd.d	$fs0, $fs0, $fa0
.LBB3_172:                              #   in Loop: Header=BB3_149 Depth=1
	addi.w	$a3, $a1, -1
	pcalau12i	$s6, %pc_hi20(MBPairIsField)
	move	$a5, $s1
	ori	$s1, $s1, 2168
	pcalau12i	$a4, %pc_hi20(rddata_top_field_mb)
	addi.d	$s3, $a4, %pc_lo12(rddata_top_field_mb)
	bgeu	$a3, $s5, .LBB3_187
# %bb.173:                              #   in Loop: Header=BB3_149 Depth=1
	ori	$a3, $zero, 1
	ori	$a4, $a5, 2952
	ldx.w	$a4, $a2, $a4
	lu32i.d	$a3, 1
	stptr.d	$a3, $a2, 14464
	ld.w	$a3, $a0, 32
	slli.d	$a4, $a4, 1
	ldx.w	$a5, $a2, $s1
	stptr.w	$a4, $a2, 15240
	slli.d	$a3, $a3, 1
	st.w	$a3, $a0, 32
	slli.d	$a3, $a5, 1
	addi.d	$a4, $a3, 1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$a3, $a0, $a3
	stptr.w	$a4, $a2, 14456
	addi.w	$a1, $a1, 0
	stptr.w	$zero, $a2, 15412
	bne	$a1, $s5, .LBB3_178
# %bb.174:                              #   in Loop: Header=BB3_149 Depth=1
	beqz	$a3, .LBB3_178
# %bb.175:                              #   in Loop: Header=BB3_149 Depth=1
	ldptr.w	$a1, $a2, 15388
	blez	$a1, .LBB3_179
# %bb.176:                              #   in Loop: Header=BB3_149 Depth=1
	ldptr.w	$a2, $a2, 15404
	mod.wu	$a1, $a1, $a2
	bnez	$a1, .LBB3_179
# %bb.177:                              #   in Loop: Header=BB3_149 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(quadratic_RC)
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(quadratic_RC_init)
	pcaddu18i	$ra, %call36(copy_rc_jvt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$a3, $a0, $a1
.LBB3_178:                              #   in Loop: Header=BB3_149 Depth=1
	beqz	$a3, .LBB3_181
.LBB3_179:                              # %.thread146
                                        #   in Loop: Header=BB3_149 Depth=1
	ldptr.w	$a0, $a0, 4708
	bne	$a0, $s5, .LBB3_181
# %bb.180:                              #   in Loop: Header=BB3_149 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(generic_RC)
	pcalau12i	$a1, %pc_hi20(generic_RC_init)
	ld.d	$a1, $a1, %pc_lo12(generic_RC_init)
	pcaddu18i	$ra, %call36(copy_rc_generic)
	jirl	$ra, $ra, 0
.LBB3_181:                              #   in Loop: Header=BB3_149 Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(start_macroblock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(encode_one_macroblock)
	st.d	$s3, $s7, %pc_lo12(rdopt)
	jirl	$ra, $a0, 0
	ld.d	$a0, $s7, %pc_lo12(rdopt)
	ld.d	$a1, $s8, 0
	fld.d	$fs1, $a0, 0
	stptr.w	$fp, $a1, 15412
	stptr.w	$zero, $a1, 14468
	ori	$a1, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(start_macroblock)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(rddata_bot_field_mb)
	addi.d	$a0, $a0, %pc_lo12(rddata_bot_field_mb)
	ld.d	$a1, $s2, %pc_lo12(encode_one_macroblock)
	st.d	$a0, $s7, %pc_lo12(rdopt)
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a3, $s7, %pc_lo12(rdopt)
	ld.d	$a2, $s8, 0
	ldptr.w	$a1, $a0, 4708
	fld.d	$fa0, $a3, 0
	stptr.w	$zero, $a2, 15416
	addi.d	$a3, $a1, -2
	sltui	$a3, $a3, 1
	bne	$a1, $s5, .LBB3_188
# %bb.182:                              #   in Loop: Header=BB3_149 Depth=1
	fadd.d	$fa0, $fs1, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fa0
	bceqz	$fcc0, .LBB3_188
# %bb.183:                              #   in Loop: Header=BB3_149 Depth=1
	ldptr.w	$a1, $a2, 15240
	stptr.w	$zero, $a2, 14464
	st.w	$zero, $s6, %pc_lo12(MBPairIsField)
	ld.w	$a4, $a0, 32
	srli.d	$a1, $a1, 1
	ldx.w	$a5, $a2, $s1
	stptr.w	$a1, $a2, 15240
	srli.d	$a1, $a4, 1
	st.w	$a1, $a0, 32
	addi.w	$a1, $a5, -1
	srli.d	$a1, $a1, 1
	stptr.w	$a1, $a2, 14456
	ldptr.w	$a1, $a0, 5116
	bnez	$a1, .LBB3_190
	b	.LBB3_196
	.p2align	4, , 16
.LBB3_184:                              #   in Loop: Header=BB3_149 Depth=1
	st.w	$zero, $sp, 112
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $s7, %pc_lo12(rdopt)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(start_macroblock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(encode_one_macroblock)
	jirl	$ra, $a0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(write_one_macroblock)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 116
	addi.d	$a1, $sp, 112
	pcaddu18i	$ra, %call36(terminate_macroblock)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 112
	beqz	$a0, .LBB3_146
# %bb.185:                              #   in Loop: Header=BB3_149 Depth=1
	ld.d	$a0, $s8, 0
	ld.w	$a0, $a0, 12
	pcaddu18i	$ra, %call36(FmoGetPreviousMBNr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	st.w	$a0, $a1, 12
	bne	$a0, $s3, .LBB3_148
# %bb.186:                              #   in Loop: Header=BB3_149 Depth=1
	ori	$a2, $zero, 84
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	move	$a0, $s4
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 300
	move	$a0, $s4
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	b	.LBB3_148
	.p2align	4, , 16
.LBB3_187:                              # %.thread148
                                        #   in Loop: Header=BB3_149 Depth=1
	move	$a3, $zero
	stptr.w	$zero, $a2, 15416
.LBB3_188:                              #   in Loop: Header=BB3_149 Depth=1
	addi.w	$a1, $a1, 0
	ori	$a4, $zero, 3
	bne	$a1, $a4, .LBB3_197
# %bb.189:                              # %.thread
                                        #   in Loop: Header=BB3_149 Depth=1
	stptr.w	$zero, $a2, 14464
	st.w	$zero, $s6, %pc_lo12(MBPairIsField)
	ldptr.w	$a1, $a0, 5116
	beqz	$a1, .LBB3_196
.LBB3_190:                              #   in Loop: Header=BB3_149 Depth=1
	beqz	$a3, .LBB3_194
# %bb.191:                              #   in Loop: Header=BB3_149 Depth=1
	ldptr.w	$a1, $a2, 15388
	blez	$a1, .LBB3_194
# %bb.192:                              #   in Loop: Header=BB3_149 Depth=1
	ldptr.w	$a2, $a2, 15404
	mod.wu	$a1, $a1, $a2
	bnez	$a1, .LBB3_194
# %bb.193:                              #   in Loop: Header=BB3_149 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(quadratic_RC)
	pcalau12i	$a1, %pc_hi20(quadratic_RC_best)
	ld.d	$a1, $a1, %pc_lo12(quadratic_RC_best)
	pcaddu18i	$ra, %call36(copy_rc_jvt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 5116
	beqz	$a1, .LBB3_196
	.p2align	4, , 16
.LBB3_194:                              # %.thread156
                                        #   in Loop: Header=BB3_149 Depth=1
	ldptr.w	$a0, $a0, 4708
	bne	$a0, $s5, .LBB3_196
# %bb.195:                              #   in Loop: Header=BB3_149 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(generic_RC)
	pcalau12i	$a1, %pc_hi20(generic_RC_best)
	ld.d	$a1, $a1, %pc_lo12(generic_RC_best)
	pcaddu18i	$ra, %call36(copy_rc_generic)
	jirl	$ra, $ra, 0
.LBB3_196:                              # %.thread158
                                        #   in Loop: Header=BB3_149 Depth=1
	ld.d	$a2, $s8, 0
	ld.w	$a0, $s6, %pc_lo12(MBPairIsField)
	ori	$a1, $zero, 1
	stptr.w	$a1, $a2, 15416
	ori	$fp, $zero, 1
	stptr.w	$a1, $a2, 15408
	sltu	$a0, $zero, $a0
	b	.LBB3_198
	.p2align	4, , 16
.LBB3_197:                              # %.thread70
                                        #   in Loop: Header=BB3_149 Depth=1
	ori	$a0, $zero, 1
	stptr.w	$a0, $a2, 14464
	st.w	$a0, $s6, %pc_lo12(MBPairIsField)
	stptr.w	$a0, $a2, 15408
.LBB3_198:                              #   in Loop: Header=BB3_149 Depth=1
	ldptr.w	$a1, $a2, 14464
	stptr.w	$a0, $a2, 14468
	stptr.w	$zero, $a2, 15412
	move	$a0, $s0
	pcaddu18i	$ra, %call36(start_macroblock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ldptr.w	$a0, $a0, 14464
	sltui	$a0, $a0, 1
	masknez	$a1, $s3, $a0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $s7, %pc_lo12(rdopt)
	move	$a0, $zero
	pcaddu18i	$ra, %call36(copy_rdopt_data)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(write_one_macroblock)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 116
	addi.d	$a1, $sp, 112
	pcaddu18i	$ra, %call36(terminate_macroblock)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 112
	beqz	$a0, .LBB3_206
# %bb.199:                              #   in Loop: Header=BB3_149 Depth=1
	ld.d	$a0, $s8, 0
	ld.w	$a0, $a0, 12
	pcaddu18i	$ra, %call36(FmoGetPreviousMBNr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	st.w	$a0, $a1, 12
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	bne	$a0, $s3, .LBB3_201
.LBB3_200:                              #   in Loop: Header=BB3_149 Depth=1
	pcalau12i	$a0, %pc_hi20(errortext)
	addi.d	$s4, $a0, %pc_lo12(errortext)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 84
	move	$a0, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 300
	move	$a0, $s4
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB3_201:                              #   in Loop: Header=BB3_149 Depth=1
	ld.w	$a1, $s6, %pc_lo12(MBPairIsField)
	ld.d	$a0, $s8, 0
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	beqz	$a1, .LBB3_203
.LBB3_202:                              #   in Loop: Header=BB3_149 Depth=1
	ld.d	$a1, $s6, 0
	ldptr.w	$a2, $a0, 15240
	ld.w	$a3, $a1, 32
	srli.d	$a2, $a2, 1
	ldx.w	$a4, $a0, $s1
	stptr.w	$a2, $a0, 15240
	srli.d	$a2, $a3, 1
	st.w	$a2, $a1, 32
	addi.w	$a1, $a4, -1
	srli.d	$a1, $a1, 1
	stptr.w	$a1, $a0, 14456
.LBB3_203:                              #   in Loop: Header=BB3_149 Depth=1
	ld.w	$a1, $sp, 116
	stptr.d	$zero, $a0, 14464
	bnez	$a1, .LBB3_217
# %bb.204:                              #   in Loop: Header=BB3_149 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FmoMB2SliceGroup)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(FmoGetLastCodedMBOfSliceGroup)
	jirl	$ra, $ra, 0
	beq	$s0, $a0, .LBB3_216
# %bb.205:                              #   in Loop: Header=BB3_149 Depth=1
	lu12i.w	$s1, 3
	b	.LBB3_148
	.p2align	4, , 16
.LBB3_206:                              #   in Loop: Header=BB3_149 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FmoGetNextMBNr)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	bne	$a0, $s3, .LBB3_208
# %bb.207:                              #   in Loop: Header=BB3_149 Depth=1
	st.w	$fp, $sp, 116
.LBB3_208:                              #   in Loop: Header=BB3_149 Depth=1
	pcaddu18i	$ra, %call36(proceed2nextMacroblock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ldptr.w	$a1, $a0, 14464
	stptr.w	$fp, $a0, 15412
	stptr.w	$zero, $a0, 14468
	move	$a0, $s0
	pcaddu18i	$ra, %call36(start_macroblock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ldptr.w	$a0, $a0, 14464
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(rddata_bot_field_mb)
	addi.d	$a1, $a1, %pc_lo12(rddata_bot_field_mb)
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $s7, %pc_lo12(rdopt)
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(copy_rdopt_data)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(write_one_macroblock)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 116
	addi.d	$a1, $sp, 112
	pcaddu18i	$ra, %call36(terminate_macroblock)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 112
	beqz	$a0, .LBB3_210
# %bb.209:                              #   in Loop: Header=BB3_149 Depth=1
	ld.d	$a0, $s8, 0
	ld.w	$a0, $a0, 12
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(FmoGetPreviousMBNr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	st.w	$a0, $a1, 12
	pcaddu18i	$ra, %call36(FmoGetPreviousMBNr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	st.w	$a0, $a1, 12
	bne	$a0, $s3, .LBB3_201
	b	.LBB3_200
.LBB3_210:                              #   in Loop: Header=BB3_149 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FmoGetNextMBNr)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bne	$a0, $s3, .LBB3_212
# %bb.211:                              #   in Loop: Header=BB3_149 Depth=1
	st.w	$fp, $sp, 116
.LBB3_212:                              #   in Loop: Header=BB3_149 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 2
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(proceed2nextMacroblock)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(MBPairIsField)
	ld.d	$a0, $s8, 0
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_202
	b	.LBB3_203
.LBB3_213:                              #   in Loop: Header=BB3_149 Depth=1
	st.w	$fp, $sp, 116
	b	.LBB3_147
.LBB3_214:
	move	$a0, $zero
.LBB3_215:
	pcaddu18i	$ra, %call36(estimate_weighting_factor_P_slice)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
	bgtz	$a0, .LBB3_93
	b	.LBB3_95
.LBB3_216:
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 116
.LBB3_217:                              # %._crit_edge.loopexit
	ld.d	$a1, $s8, 0
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
.LBB3_218:                              # %._crit_edge
	ldptr.w	$a0, $a1, 15348
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.w	$a1, $fp, $a1
	slt	$a0, $a1, $a0
	xori	$a0, $a0, 1
	pcaddu18i	$ra, %call36(terminate_slice)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	fld.d	$fs1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
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
.Lfunc_end3:
	.size	encode_one_slice, .Lfunc_end3-encode_one_slice
                                        # -- End function
	.globl	free_slice_list                 # -- Begin function free_slice_list
	.p2align	5
	.type	free_slice_list,@function
free_slice_list:                        # @free_slice_list
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
	move	$fp, $a0
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB4_17
# %bb.1:                                # %.lr.ph
	addi.d	$s1, $fp, 8
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$s2, $a1, %got_pc_lo12(input)
	move	$s3, $zero
	ori	$s4, $zero, 1
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_2:                                #   in Loop: Header=BB4_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
.LBB4_3:                                # %free_slice.exit
                                        #   in Loop: Header=BB4_4 Depth=1
	alsl.d	$a1, $s3, $s1, 3
	addi.d	$s3, $s3, 1
	st.d	$zero, $a1, 0
	bge	$s3, $a0, .LBB4_17
.LBB4_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
	slli.d	$a1, $s3, 3
	ldx.d	$s0, $s1, $a1
	beqz	$s0, .LBB4_3
# %bb.5:                                # %.preheader.i
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.w	$a0, $s0, 16
	blez	$a0, .LBB4_13
# %bb.6:                                # %.lr.ph.i
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$s7, $s0, 24
	beqz	$s7, .LBB4_13
# %bb.7:                                # %.lr.ph.split.i.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$s5, $zero
	ori	$s6, $zero, 1
	beqz	$s7, .LBB4_11
	.p2align	4, , 16
.LBB4_8:                                #   in Loop: Header=BB4_4 Depth=1
	ldx.d	$a0, $s7, $s5
	ld.d	$a1, $a0, 32
	beqz	$a1, .LBB4_10
# %bb.9:                                #   in Loop: Header=BB4_4 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s7, $s5
	beqz	$a0, .LBB4_11
.LBB4_10:                               # %.thread.i
                                        #   in Loop: Header=BB4_4 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB4_11:                               #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s0, 16
	bge	$s6, $a0, .LBB4_13
# %bb.12:                               # %.lr.ph.splitthread-pre-split.i
                                        #   in Loop: Header=BB4_11 Depth=2
	ld.d	$s7, $s0, 24
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 104
	bnez	$s7, .LBB4_8
	b	.LBB4_11
	.p2align	4, , 16
.LBB4_13:                               # %._crit_edge.i
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $s0, 24
	beqz	$a0, .LBB4_15
# %bb.14:                               #   in Loop: Header=BB4_4 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB4_15:                               #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $s2, 0
	ldptr.w	$a0, $a0, 4008
	bne	$a0, $s4, .LBB4_2
# %bb.16:                               #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $s0, 32
	pcaddu18i	$ra, %call36(delete_contexts_MotionInfo)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	pcaddu18i	$ra, %call36(delete_contexts_TextureInfo)
	jirl	$ra, $ra, 0
	b	.LBB4_2
.LBB4_17:                               # %._crit_edge
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
.Lfunc_end4:
	.size	free_slice_list, .Lfunc_end4-free_slice_list
                                        # -- End function
	.globl	poc_ref_pic_reorder             # -- Begin function poc_ref_pic_reorder
	.p2align	5
	.type	poc_ref_pic_reorder,@function
poc_ref_pic_reorder:                    # @poc_ref_pic_reorder
# %bb.0:
	addi.d	$sp, $sp, -784
	st.d	$ra, $sp, 776                   # 8-byte Folded Spill
	st.d	$fp, $sp, 768                   # 8-byte Folded Spill
	st.d	$s0, $sp, 760                   # 8-byte Folded Spill
	st.d	$s1, $sp, 752                   # 8-byte Folded Spill
	st.d	$s2, $sp, 744                   # 8-byte Folded Spill
	st.d	$s3, $sp, 736                   # 8-byte Folded Spill
	st.d	$s4, $sp, 728                   # 8-byte Folded Spill
	st.d	$s5, $sp, 720                   # 8-byte Folded Spill
	st.d	$s6, $sp, 712                   # 8-byte Folded Spill
	st.d	$s7, $sp, 704                   # 8-byte Folded Spill
	st.d	$s8, $sp, 696                   # 8-byte Folded Spill
	lu12i.w	$a4, 1
	bstrpick.d	$ra, $a1, 31, 0
	beqz	$a1, .LBB5_8
# %bb.1:                                # %.lr.ph.preheader
	ori	$a6, $zero, 1
	bne	$a1, $a6, .LBB5_3
# %bb.2:
	move	$a6, $zero
	b	.LBB5_6
.LBB5_3:                                # %vector.ph
	bstrpick.d	$a6, $ra, 31, 1
	slli.d	$a6, $a6, 1
	addi.d	$a7, $a0, 8
	addi.d	$t0, $sp, 572
	ori	$t1, $a4, 2268
	move	$t2, $a6
	.p2align	4, , 16
.LBB5_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t3, $a7, -8
	ld.d	$t4, $a7, 0
	ldx.w	$t3, $t3, $t1
	ldx.w	$t4, $t4, $t1
	st.w	$t3, $t0, -4
	st.w	$t4, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$t2, $t2, -2
	addi.d	$t0, $t0, 8
	bnez	$t2, .LBB5_4
# %bb.5:                                # %middle.block
	beq	$a6, $ra, .LBB5_8
.LBB5_6:                                # %.lr.ph.preheader261
	alsl.d	$a0, $a6, $a0, 3
	addi.d	$a7, $sp, 568
	alsl.d	$a7, $a6, $a7, 2
	sub.d	$a6, $ra, $a6
	ori	$t0, $a4, 2268
	.p2align	4, , 16
.LBB5_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a0, 0
	ldx.w	$t1, $t1, $t0
	st.w	$t1, $a7, 0
	addi.d	$a0, $a0, 8
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 4
	bnez	$a6, .LBB5_7
.LBB5_8:                                # %.preheader139
	pcalau12i	$a0, %got_pc_hi20(dpb)
	ld.d	$a7, $a0, %got_pc_lo12(dpb)
	ld.w	$a6, $a7, 32
	bstrpick.d	$a0, $a6, 31, 0
	beqz	$a6, .LBB5_19
# %bb.9:                                # %.lr.ph144
	ld.d	$a7, $a7, 8
	pcalau12i	$t0, %got_pc_hi20(enc_picture)
	ld.d	$t0, $t0, %got_pc_lo12(enc_picture)
	ld.d	$t0, $t0, 0
	addi.d	$t1, $sp, 440
	addi.d	$t2, $sp, 56
	addi.d	$t3, $sp, 184
	ori	$a4, $a4, 2268
	ori	$t4, $zero, 3
	sltui	$t5, $a5, 1
	move	$t6, $a0
	b	.LBB5_11
	.p2align	4, , 16
.LBB5_10:                               #   in Loop: Header=BB5_11 Depth=1
	addi.d	$a7, $a7, 8
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, 4
	addi.d	$t6, $t6, -1
	addi.d	$t3, $t3, 4
	beqz	$t6, .LBB5_15
.LBB5_11:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t8, $a7, 0
	ld.d	$t7, $t8, 40
	ldx.w	$fp, $t7, $a4
	ld.w	$t8, $t8, 0
	st.w	$fp, $t1, 0
	bne	$t8, $t4, .LBB5_10
# %bb.12:                               #   in Loop: Header=BB5_11 Depth=1
	ldptr.w	$t8, $t7, 6380
	beqz	$t8, .LBB5_10
# %bb.13:                               #   in Loop: Header=BB5_11 Depth=1
	ldptr.w	$t8, $t7, 6376
	bnez	$t8, .LBB5_10
# %bb.14:                               # %.sink.split
                                        #   in Loop: Header=BB5_11 Depth=1
	ld.w	$t7, $t7, 4
	ld.w	$t8, $t0, 4
	sub.w	$fp, $t7, $t8
	srai.d	$s0, $fp, 31
	xor	$fp, $fp, $s0
	sub.d	$fp, $fp, $s0
	st.w	$fp, $t2, 0
	slt	$fp, $t7, $t8
	slt	$t7, $t8, $t7
	masknez	$t8, $fp, $t5
	maskeqz	$t7, $t7, $t5
	or	$t7, $t7, $t8
	addi.d	$t7, $t7, -1
	ori	$t7, $t7, 1
	st.w	$t7, $t3, 0
	b	.LBB5_10
.LBB5_15:                               # %.preheader138
	addi.w	$a4, $a6, -1
	bnez	$a4, .LBB5_20
.LBB5_16:                               # %.preheader136
	beqz	$a1, .LBB5_48
# %bb.17:                               # %.lr.ph151.preheader
	ori	$a0, $zero, 8
	bgeu	$a1, $a0, .LBB5_30
# %bb.18:
	move	$a0, $zero
	ori	$a4, $zero, 1
	b	.LBB5_33
.LBB5_19:
	addi.w	$a4, $zero, -1
.LBB5_20:                               # %.lr.ph148.preheader
	move	$t3, $zero
	bstrpick.d	$a6, $a4, 31, 0
	addi.d	$a7, $sp, 188
	addi.d	$t0, $sp, 60
	addi.d	$t1, $sp, 444
	addi.d	$t2, $sp, 56
	addi.d	$t4, $sp, 184
	addi.d	$t5, $sp, 440
	b	.LBB5_22
	.p2align	4, , 16
.LBB5_21:                               # %.loopexit137
                                        #   in Loop: Header=BB5_22 Depth=1
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 4
	addi.d	$a4, $a4, -1
	beq	$t3, $a6, .LBB5_16
.LBB5_22:                               # %.lr.ph148
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_27 Depth 2
	move	$t8, $t3
	addi.d	$t3, $t3, 1
	bgeu	$t3, $a0, .LBB5_21
# %bb.23:                               # %.lr.ph146
                                        #   in Loop: Header=BB5_22 Depth=1
	alsl.d	$t6, $t8, $t2, 2
	alsl.d	$t7, $t8, $t4, 2
	alsl.d	$t8, $t8, $t5, 2
	move	$fp, $a4
	move	$s1, $t1
	move	$s2, $t0
	move	$s3, $a7
	b	.LBB5_27
	.p2align	4, , 16
.LBB5_24:                               # %._crit_edge217
                                        #   in Loop: Header=BB5_27 Depth=2
	ld.w	$s6, $t7, 0
	ld.w	$s7, $s3, 0
.LBB5_25:                               #   in Loop: Header=BB5_27 Depth=2
	ld.w	$s0, $s1, 0
	ld.w	$s8, $t8, 0
	st.w	$s5, $t6, 0
	st.w	$s4, $s2, 0
	st.w	$s0, $t8, 0
	st.w	$s8, $s1, 0
	st.w	$s7, $t7, 0
	st.w	$s6, $s3, 0
.LBB5_26:                               #   in Loop: Header=BB5_27 Depth=2
	addi.d	$s3, $s3, 4
	addi.d	$s2, $s2, 4
	addi.w	$fp, $fp, -1
	addi.d	$s1, $s1, 4
	beqz	$fp, .LBB5_21
.LBB5_27:                               #   Parent Loop BB5_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s4, $t6, 0
	ld.w	$s5, $s2, 0
	blt	$s5, $s4, .LBB5_24
# %bb.28:                               #   in Loop: Header=BB5_27 Depth=2
	bne	$s4, $s5, .LBB5_26
# %bb.29:                               #   in Loop: Header=BB5_27 Depth=2
	ld.w	$s7, $s3, 0
	ld.w	$s6, $t7, 0
	blt	$s6, $s7, .LBB5_25
	b	.LBB5_26
.LBB5_30:                               # %vector.ph242
	bstrpick.d	$a0, $ra, 31, 3
	slli.d	$a0, $a0, 3
	addi.d	$a4, $sp, 456
	vrepli.b	$vr0, 0
	addi.d	$a6, $sp, 584
	vrepli.b	$vr1, -1
	move	$a7, $a0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB5_31:                               # %vector.body245
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a6, -16
	vld	$vr4, $a4, -16
	vld	$vr5, $a6, 0
	vld	$vr6, $a4, 0
	vseq.w	$vr3, $vr3, $vr4
	vxor.v	$vr3, $vr3, $vr1
	vseq.w	$vr4, $vr5, $vr6
	vxor.v	$vr4, $vr4, $vr1
	vor.v	$vr0, $vr0, $vr3
	vor.v	$vr2, $vr2, $vr4
	addi.d	$a7, $a7, -8
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB5_31
# %bb.32:                               # %middle.block252
	vor.v	$vr0, $vr2, $vr0
	vslli.w	$vr0, $vr0, 31
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a4, $vr0, 0
	sltui	$a4, $a4, 1
	beq	$a0, $ra, .LBB5_35
.LBB5_33:                               # %.lr.ph151.preheader258
	addi.d	$a6, $sp, 568
	alsl.d	$a6, $a0, $a6, 2
	addi.d	$a7, $sp, 440
	alsl.d	$a7, $a0, $a7, 2
	sub.d	$a0, $ra, $a0
	.p2align	4, , 16
.LBB5_34:                               # %.lr.ph151
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a6, 0
	ld.w	$t1, $a7, 0
	xor	$t0, $t0, $t1
	sltui	$t0, $t0, 1
	maskeqz	$a4, $a4, $t0
	addi.d	$a6, $a6, 4
	addi.d	$a0, $a0, -1
	addi.d	$a7, $a7, 4
	bnez	$a0, .LBB5_34
.LBB5_35:                               # %._crit_edge
	bnez	$a4, .LBB5_48
# %bb.36:                               # %.lr.ph168
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$s3, $a0, 0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3044
	ldx.w	$a0, $s3, $a0
	move	$s2, $zero
	ld.w	$a4, $s3, 24
	pcalau12i	$a6, %pc_hi20(log2_max_frame_num_minus4)
	slli.d	$a7, $a0, 1
	ld.w	$a6, $a6, %pc_lo12(log2_max_frame_num_minus4)
	sltui	$a4, $a4, 1
	addi.w	$a7, $a7, 1
	ori	$t0, $zero, 2
	addi.d	$a6, $a6, 4
	maskeqz	$a0, $a0, $a4
	masknez	$a7, $a7, $a4
	sub.d	$a4, $t0, $a4
	or	$s7, $a0, $a7
	sll.w	$a0, $a4, $a6
	addi.d	$t2, $a0, -1
	bstrpick.d	$a0, $a1, 31, 0
	slli.d	$s4, $a0, 2
	addi.w	$s5, $a1, -1
	bstrpick.d	$t5, $s5, 31, 0
	addi.d	$t6, $sp, 568
	ori	$s6, $zero, 4
	addi.d	$fp, $sp, 440
	addi.d	$s1, $sp, 312
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	st.d	$t2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$t5, $sp, 8                     # 8-byte Folded Spill
.LBB5_37:                               # %.lr.ph156.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_39 Depth 2
                                        #     Child Loop BB5_43 Depth 2
	move	$a0, $s7
	slli.d	$a4, $s2, 2
	ldx.w	$s7, $a4, $fp
	sub.w	$a6, $s7, $a0
	slt	$a7, $zero, $a6
	nor	$t0, $a6, $zero
	xor	$a0, $s7, $a0
	sltui	$a0, $a0, 1
	masknez	$t0, $t0, $a0
	maskeqz	$a0, $t2, $a0
	or	$a0, $a0, $t0
	addi.d	$a6, $a6, -1
	maskeqz	$a6, $a6, $a7
	masknez	$a0, $a0, $a7
	or	$a0, $a6, $a0
	stx.w	$a7, $a2, $a4
	stx.w	$a0, $a3, $a4
	stx.w	$s7, $a4, $s1
	move	$a0, $ra
	move	$a4, $t6
	move	$a6, $s2
	b	.LBB5_39
	.p2align	4, , 16
.LBB5_38:                               #   in Loop: Header=BB5_39 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB5_41
.LBB5_39:                               # %.lr.ph156
                                        #   Parent Loop BB5_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a4, 0
	beq	$a7, $s7, .LBB5_38
# %bb.40:                               #   in Loop: Header=BB5_39 Depth=2
	addi.w	$a6, $a6, 1
	bstrpick.d	$t0, $a6, 31, 0
	slli.d	$t0, $t0, 2
	stx.w	$a7, $t0, $s1
	b	.LBB5_38
	.p2align	4, , 16
.LBB5_41:                               # %._crit_edge157
                                        #   in Loop: Header=BB5_37 Depth=1
	beq	$s2, $t5, .LBB5_47
# %bb.42:                               #   in Loop: Header=BB5_37 Depth=1
	st.d	$t6, $sp, 48                    # 8-byte Folded Spill
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	addi.d	$s2, $s2, 1
	move	$a0, $s5
	move	$a1, $s6
	.p2align	4, , 16
.LBB5_43:                               # %.lr.ph161
                                        #   Parent Loop BB5_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a3, $a1, $s1
	ldx.w	$a4, $a1, $fp
	bne	$a3, $a4, .LBB5_45
# %bb.44:                               #   in Loop: Header=BB5_43 Depth=2
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB5_43
	b	.LBB5_46
	.p2align	4, , 16
.LBB5_45:                               # %.preheader.preheader
                                        #   in Loop: Header=BB5_37 Depth=1
	addi.d	$a0, $sp, 568
	addi.d	$a1, $sp, 312
	move	$s0, $a2
	move	$a2, $s4
	move	$s8, $a5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a2, $s0
	move	$a5, $s8
	ld.d	$t6, $sp, 48                    # 8-byte Folded Reload
	addi.d	$t6, $t6, 4
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$ra, $ra, -1
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, -1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 8                     # 8-byte Folded Reload
	b	.LBB5_37
.LBB5_46:                               # %.critedge.loopexit
	move	$a1, $s2
.LBB5_47:                               # %.critedge
	bstrpick.d	$a0, $a1, 31, 0
	slli.d	$a0, $a0, 2
	ori	$a1, $zero, 3
	stx.w	$a1, $a2, $a0
	sltui	$a0, $a5, 1
	ori	$a1, $zero, 80
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 48
	ldptr.d	$a3, $s3, 14216
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 1
	stx.w	$a1, $a3, $a0
.LBB5_48:                               # %._crit_edge.thread
	ld.d	$s8, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 760                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 768                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 776                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 784
	ret
.Lfunc_end5:
	.size	poc_ref_pic_reorder, .Lfunc_end5-poc_ref_pic_reorder
                                        # -- End function
	.globl	SetLagrangianMultipliers        # -- Begin function SetLagrangianMultipliers
	.p2align	5
	.type	SetLagrangianMultipliers,@function
SetLagrangianMultipliers:               # @SetLagrangianMultipliers
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 128                  # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s0, $a0, 0
	ldptr.w	$a1, $s0, 4168
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a4, $a0, 0
	addi.w	$a0, $zero, -51
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, -4189
	beqz	$a1, .LBB6_126
# %bb.1:                                # %.preheader196.preheader
	ld.w	$a1, $s0, 20
	move	$s1, $zero
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	lu12i.w	$a1, -419431
	ori	$a2, $a1, 2458
	lu32i.d	$a2, -419431
	lu52i.d	$a1, $a2, 1018
	movgr2fr.d	$fa1, $a1
	fmul.d	$fa0, $fa0, $fa1
	movgr2fr.d	$fa1, $zero
	fmax.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmin.d	$fa0, $fa0, $fa1
	vldi	$vr1, -912
	fsub.d	$fs1, $fa1, $fa0
	ori	$s6, $zero, 2
	lu12i.w	$a3, 1
	lu12i.w	$a1, 419430
	ori	$a1, $a1, 1638
	ori	$a5, $a3, 1248
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	lu32i.d	$a1, -104858
	lu52i.d	$a1, $a1, 1022
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	movgr2fr.d	$fs2, $a1
	ori	$a5, $zero, 1
	vldi	$vr3, -928
	lu52i.d	$a1, $zero, 1039
	movgr2fr.d	$fs3, $a1
	ori	$a1, $a3, 1288
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a1, 377487
	ori	$a1, $a1, 1475
	lu32i.d	$a1, 377487
	lu52i.d	$a1, $a1, 1022
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	lu52i.d	$a1, $a2, 1022
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $a0, 2543
	lu32i.d	$a0, 405058
	lu52i.d	$a0, $a0, 1022
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 209715
	ori	$a0, $a0, 819
	lu32i.d	$a0, -314573
	lu52i.d	$a0, $a0, 1022
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %._crit_edge
                                        #   in Loop: Header=BB6_3 Depth=1
	addi.d	$s1, $s1, 1
	ori	$a0, $zero, 5
	beq	$s1, $a0, .LBB6_137
.LBB6_3:                                # %.preheader196
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
	ldptr.w	$a0, $a4, 15452
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB6_2
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	sub.w	$s3, $zero, $a0
	slli.d	$a0, $a0, 3
	sub.d	$s7, $zero, $a0
	slli.d	$a0, $s1, 3
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	move	$fp, $s3
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	b	.LBB6_7
.LBB6_5:                                #   in Loop: Header=BB6_7 Depth=2
	ori	$s6, $zero, 2
	.p2align	4, , 16
.LBB6_6:                                # %.loopexit194
                                        #   in Loop: Header=BB6_7 Depth=2
	addi.d	$fp, $fp, 1
	bstrpick.d	$a0, $fp, 31, 0
	addi.d	$s7, $s7, 8
	addi.w	$s3, $s3, 1
	ori	$a1, $zero, 52
	beq	$a0, $a1, .LBB6_2
.LBB6_7:                                #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldptr.w	$a0, $s0, 5288
	beq	$a0, $s6, .LBB6_11
# %bb.8:                                #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a1, $a4, 15452
	movgr2fr.w	$fa0, $s3
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -856
	fadd.d	$fs0, $fa0, $fa1
	bne	$a0, $a5, .LBB6_15
# %bb.9:                                #   in Loop: Header=BB6_7 Depth=2
	alsl.d	$a0, $s1, $s0, 3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1200
	fldx.d	$fs4, $a0, $a1
	vldi	$vr0, -1016
	fdiv.d	$fs0, $fs0, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $a0, 0
	ldptr.w	$a0, $s0, 5784
	bne	$a0, $s6, .LBB6_19
# %bb.10:                               #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a0, $s0, 5788
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	movgr2fr.d	$fa1, $a1
	movgr2cf	$fcc0, $a0
	vldi	$vr2, -912
	fsel	$fa1, $fa1, $fa2, $fcc0
	b	.LBB6_20
	.p2align	4, , 16
.LBB6_11:                               #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a0, $s0, 5784
	fmov.d	$fa0, $fs2
	bne	$a0, $s6, .LBB6_13
# %bb.12:                               #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a0, $s0, 5788
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	movgr2cf	$fcc0, $a0
	vldi	$vr0, -912
	fsel	$fa0, $fs2, $fa0, $fcc0
.LBB6_13:                               #   in Loop: Header=BB6_7 Depth=2
	ldptr.d	$s8, $a4, 15488
	alsl.d	$a0, $s1, $s0, 3
	ldptr.d	$s4, $a4, 15496
	ldptr.d	$s6, $a4, 15480
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a1, $s8, $a3
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	fldx.d	$fa1, $a0, $a2
	ldx.d	$a0, $s4, $a3
	ldx.d	$s1, $s6, $a3
	ldx.d	$s5, $a1, $s7
	ldptr.w	$a1, $s0, 5780
	ldx.d	$s2, $a0, $s7
	fmul.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $s1, $s7
	bne	$a1, $a5, .LBB6_32
# %bb.14:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_33
	.p2align	4, , 16
.LBB6_15:                               #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$s0, $s0, 2096
	vldi	$vr0, -1016
	fdiv.d	$fa0, $fs0, $fa0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	ori	$a5, $zero, 1
	blez	$s0, .LBB6_45
# %bb.16:                               #   in Loop: Header=BB6_7 Depth=2
	ori	$a0, $zero, 3
	beq	$s1, $a0, .LBB6_68
# %bb.17:                               #   in Loop: Header=BB6_7 Depth=2
	vldi	$vr3, -928
	bne	$s1, $a5, .LBB6_69
# %bb.18:                               #   in Loop: Header=BB6_7 Depth=2
	vldi	$vr1, -1000
	fdiv.d	$fa1, $fs0, $fa1
	vldi	$vr2, -1024
	fmax.d	$fa1, $fa1, $fa2
	vldi	$vr2, -1008
	fmin.d	$fa1, $fa1, $fa2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	b	.LBB6_73
.LBB6_19:                               #   in Loop: Header=BB6_7 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	movgr2fr.d	$fa1, $a0
.LBB6_20:                               #   in Loop: Header=BB6_7 Depth=2
	ori	$a5, $zero, 1
	vldi	$vr3, -928
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ldptr.d	$a0, $a4, 15488
	ldptr.d	$a1, $a4, 15496
	ldptr.d	$a2, $a4, 15480
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a3
	ldx.d	$a1, $a1, $a3
	ldx.d	$s5, $a2, $a3
	ldx.d	$s2, $a0, $s7
	ldptr.w	$a0, $s0, 5780
	ldx.d	$s4, $a1, $s7
	fmul.d	$fa0, $fs4, $fa0
	fmul.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $s5, $s7
	bne	$a0, $a5, .LBB6_22
# %bb.21:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_23
.LBB6_22:                               #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_108
.LBB6_23:                               #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s2, 0
	fmadd.d	$fa0, $fa0, $fs3, $fa3
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s4, 0
	ldptr.w	$a0, $s0, 5784
	fldx.d	$fa1, $s5, $s7
	bne	$a0, $a5, .LBB6_25
# %bb.24:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_26
.LBB6_25:                               #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_109
.LBB6_26:                               #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s2, 8
	fmadd.d	$fa0, $fa0, $fs3, $fa3
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s4, 4
	ldptr.w	$a0, $s0, 5788
	fldx.d	$fa1, $s5, $s7
	bne	$a0, $a5, .LBB6_28
# %bb.27:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_29
.LBB6_28:                               #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_110
.LBB6_29:                               #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s2, 16
	fmadd.d	$fa0, $fa0, $fs3, $fa3
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s4, 8
	bne	$s1, $a5, .LBB6_6
# %bb.30:                               #   in Loop: Header=BB6_7 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1240
	fldx.d	$fs4, $s0, $a0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $a0, 0
	ldptr.w	$a0, $s0, 5784
	bne	$a0, $s6, .LBB6_48
# %bb.31:                               #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a0, $s0, 5788
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	movgr2fr.d	$fa1, $a1
	movgr2cf	$fcc0, $a0
	vldi	$vr2, -912
	fsel	$fa1, $fa1, $fa2, $fcc0
	b	.LBB6_49
.LBB6_32:                               #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_111
.LBB6_33:                               #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s5, 0
	fmadd.d	$fa0, $fa0, $fs3, $fa3
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s2, 0
	ldptr.w	$a0, $s0, 5784
	fldx.d	$fa1, $s1, $s7
	bne	$a0, $a5, .LBB6_35
# %bb.34:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_36
.LBB6_35:                               #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_112
.LBB6_36:                               #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s5, 8
	fmadd.d	$fa0, $fa0, $fs3, $fa3
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s2, 4
	ldptr.w	$a0, $s0, 5788
	fldx.d	$fa1, $s1, $s7
	bne	$a0, $a5, .LBB6_39
# %bb.37:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
.LBB6_38:                               #   in Loop: Header=BB6_7 Depth=2
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB6_40
.LBB6_39:                               #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	bceqz	$fcc0, .LBB6_113
.LBB6_40:                               #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s5, 16
	fmadd.d	$fa0, $fa0, $fs3, $fa3
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s2, 8
	bne	$s1, $a5, .LBB6_5
# %bb.41:                               #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a0, $s0, 5784
	fmov.d	$fa0, $fs2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB6_43
# %bb.42:                               #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a0, $s0, 5788
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	movgr2cf	$fcc0, $a0
	vldi	$vr0, -912
	fsel	$fa0, $fs2, $fa0, $fcc0
.LBB6_43:                               #   in Loop: Header=BB6_7 Depth=2
	ld.d	$a0, $s8, 40
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	fldx.d	$fa1, $s0, $a1
	ld.d	$a1, $s4, 40
	ld.d	$s1, $s6, 40
	ldx.d	$s4, $a0, $s7
	ldptr.w	$a0, $s0, 5780
	ldx.d	$s2, $a1, $s7
	fmul.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $s1, $s7
	bne	$a0, $a5, .LBB6_59
# %bb.44:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	ori	$s6, $zero, 2
	b	.LBB6_60
.LBB6_45:                               #   in Loop: Header=BB6_7 Depth=2
	beq	$s1, $a5, .LBB6_70
# %bb.46:                               #   in Loop: Header=BB6_7 Depth=2
	vldi	$vr3, -928
	ori	$a0, $zero, 3
	bne	$s1, $a0, .LBB6_71
# %bb.47:                               #   in Loop: Header=BB6_7 Depth=2
	vldi	$vr1, -984
	fdiv.d	$fa1, $fs0, $fa1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	lu32i.d	$a0, 419430
	lu52i.d	$a0, $a0, 1023
	movgr2fr.d	$fa2, $a0
	fmax.d	$fa1, $fa1, $fa2
	vldi	$vr2, -1016
	fmin.d	$fa1, $fa1, $fa2
	b	.LBB6_72
.LBB6_48:                               #   in Loop: Header=BB6_7 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	movgr2fr.d	$fa1, $a0
.LBB6_49:                               #   in Loop: Header=BB6_7 Depth=2
	ori	$a5, $zero, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ldptr.d	$a0, $a4, 15488
	ldptr.d	$a1, $a4, 15496
	ldptr.d	$a2, $a4, 15480
	ld.d	$a0, $a0, 40
	ld.d	$a1, $a1, 40
	ld.d	$s5, $a2, 40
	ldx.d	$s2, $a0, $s7
	ldptr.w	$a0, $s0, 5780
	ldx.d	$s4, $a1, $s7
	fmul.d	$fa0, $fs4, $fa0
	fmul.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $s5, $s7
	vldi	$vr3, -928
	bne	$a0, $a5, .LBB6_51
# %bb.50:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_52
.LBB6_51:                               #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_117
.LBB6_52:                               #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s2, 0
	fmadd.d	$fa0, $fa0, $fs3, $fa3
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s4, 0
	ldptr.w	$a0, $s0, 5784
	fldx.d	$fa1, $s5, $s7
	bne	$a0, $a5, .LBB6_54
# %bb.53:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_55
.LBB6_54:                               #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_118
.LBB6_55:                               #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s2, 8
	fmadd.d	$fa0, $fa0, $fs3, $fa3
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s4, 4
	ldptr.w	$a0, $s0, 5788
	fldx.d	$fa1, $s5, $s7
	bne	$a0, $a5, .LBB6_57
# %bb.56:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_58
.LBB6_57:                               #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_119
.LBB6_58:                               # %.loopexit194.loopexit
                                        #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s2, 16
	fmadd.d	$fa0, $fa0, $fs3, $fa3
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s4, 8
	b	.LBB6_6
.LBB6_59:                               #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	ori	$s6, $zero, 2
	bceqz	$fcc0, .LBB6_120
.LBB6_60:                               #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s4, 0
	fmadd.d	$fa0, $fa0, $fs3, $fa3
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s2, 0
	ldptr.w	$a0, $s0, 5784
	fldx.d	$fa1, $s1, $s7
	bne	$a0, $a5, .LBB6_62
# %bb.61:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_63
.LBB6_62:                               #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_121
.LBB6_63:                               #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s4, 8
	fmadd.d	$fa0, $fa0, $fs3, $fa3
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s2, 4
	ldptr.w	$a0, $s0, 5788
	fldx.d	$fa1, $s1, $s7
	bne	$a0, $a5, .LBB6_66
# %bb.64:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
.LBB6_65:                               # %.loopexit194.loopexit214
                                        #   in Loop: Header=BB6_7 Depth=2
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB6_67
.LBB6_66:                               #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	bceqz	$fcc0, .LBB6_122
.LBB6_67:                               # %.loopexit194.loopexit214
                                        #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s4, 16
	fmadd.d	$fa0, $fa0, $fs3, $fa3
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s2, 8
	b	.LBB6_6
.LBB6_68:                               #   in Loop: Header=BB6_7 Depth=2
	vldi	$vr1, -984
	fdiv.d	$fa1, $fs0, $fa1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	lu32i.d	$a0, 419430
	lu52i.d	$a0, $a0, 1023
	movgr2fr.d	$fa2, $a0
	fmax.d	$fa1, $fa1, $fa2
	vldi	$vr2, -1016
	fmin.d	$fa1, $fa1, $fa2
	vldi	$vr3, -928
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	b	.LBB6_73
.LBB6_69:                               #   in Loop: Header=BB6_7 Depth=2
	vldi	$vr1, -912
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	b	.LBB6_73
.LBB6_70:                               #   in Loop: Header=BB6_7 Depth=2
	vldi	$vr1, -1008
	vldi	$vr3, -928
	b	.LBB6_72
.LBB6_71:                               # %.fold.split
                                        #   in Loop: Header=BB6_7 Depth=2
	vldi	$vr1, -912
.LBB6_72:                               #   in Loop: Header=BB6_7 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
.LBB6_73:                               #   in Loop: Header=BB6_7 Depth=2
	movgr2fr.d	$fa2, $a0
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa0, $fa1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ldptr.d	$a0, $a4, 15480
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $a1, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$s8, $a0, $a1
	ldptr.w	$a1, $s0, 5784
	fstx.d	$fa0, $s8, $s7
	bne	$a1, $s6, .LBB6_76
# %bb.74:                               #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a1, $s0, 5788
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	movgr2fr.d	$fa1, $a2
	movgr2cf	$fcc0, $a1
	vldi	$vr2, -912
	fsel	$fa1, $fa1, $fa2, $fcc0
	fmul.d	$fa0, $fa1, $fa0
	beq	$s1, $a5, .LBB6_77
.LBB6_75:                               #   in Loop: Header=BB6_7 Depth=2
	ldptr.d	$s4, $a4, 15488
	ldptr.d	$s6, $a4, 15496
	fmul.d	$fa0, $fs1, $fa0
	fstx.d	$fa0, $s8, $s7
	b	.LBB6_93
.LBB6_76:                               #   in Loop: Header=BB6_7 Depth=2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	movgr2fr.d	$fa1, $a1
	fmul.d	$fa0, $fa1, $fa0
	bne	$s1, $a5, .LBB6_75
.LBB6_77:                               #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a1, $s0, 2964
	bne	$a1, $s6, .LBB6_80
# %bb.78:                               #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a1, $a4, 14364
	sltui	$a1, $a1, 1
	movgr2cf	$fcc0, $a1
	vldi	$vr1, -912
	fsel	$fa1, $fa1, $fa3, $fcc0
	ldptr.w	$a1, $s0, 2968
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s8, $s7
	beq	$a1, $s6, .LBB6_81
.LBB6_79:                               #   in Loop: Header=BB6_7 Depth=2
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	movgr2fr.d	$fa1, $a1
	b	.LBB6_82
.LBB6_80:                               #   in Loop: Header=BB6_7 Depth=2
	vldi	$vr1, -912
	ldptr.w	$a1, $s0, 2968
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s8, $s7
	bne	$a1, $s6, .LBB6_79
.LBB6_81:                               #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a1, $a4, 14364
	pcalau12i	$a2, %pc_hi20(gop_structure)
	ld.d	$a2, $a2, %pc_lo12(gop_structure)
	slli.d	$a3, $a1, 4
	alsl.d	$a1, $a1, $a3, 3
	add.d	$a1, $a2, $a1
	ld.w	$a1, $a1, -8
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	lu52i.d	$a1, $a2, 1020
	movgr2fr.d	$fa2, $a1
	fmul.d	$fa1, $fa1, $fa2
	lu52i.d	$a1, $a2, 1021
	movgr2fr.d	$fa2, $a1
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa1, $fa2, $fcc0
	vldi	$vr2, -912
	fsub.d	$fa1, $fa2, $fa1
.LBB6_82:                               #   in Loop: Header=BB6_7 Depth=2
	ldptr.d	$s4, $a4, 15488
	ldptr.d	$s6, $a4, 15496
	ld.d	$a1, $s4, 40
	ld.d	$a2, $s6, 40
	ld.d	$s1, $a0, 40
	ldx.d	$s5, $a1, $s7
	ldptr.w	$a0, $s0, 5780
	ldx.d	$s2, $a2, $s7
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $fs1, $fa0
	fstx.d	$fa1, $s1, $s7
	bne	$a0, $a5, .LBB6_84
# %bb.83:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_85
.LBB6_84:                               #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_123
.LBB6_85:                               #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s5, 0
	fmadd.d	$fa0, $fa0, $fs3, $fa3
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s2, 0
	ldptr.w	$a0, $s0, 5784
	fldx.d	$fa1, $s1, $s7
	bne	$a0, $a5, .LBB6_87
# %bb.86:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_88
.LBB6_87:                               #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_124
.LBB6_88:                               #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s5, 8
	fmadd.d	$fa0, $fa0, $fs3, $fa3
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s2, 4
	ldptr.w	$a0, $s0, 5788
	fldx.d	$fa1, $s1, $s7
	bne	$a0, $a5, .LBB6_91
# %bb.89:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
.LBB6_90:                               # %.loopexit193.loopexit
                                        #   in Loop: Header=BB6_7 Depth=2
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB6_92
.LBB6_91:                               #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	bceqz	$fcc0, .LBB6_125
.LBB6_92:                               # %.loopexit193.loopexit
                                        #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s5, 16
	fmadd.d	$fa0, $fa0, $fs3, $fa3
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s2, 8
.LBB6_93:                               # %.loopexit193
                                        #   in Loop: Header=BB6_7 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$s4, $s4, $a0
	ldx.d	$a0, $s6, $a0
	ldx.d	$s6, $s4, $s7
	ldx.d	$s2, $a0, $s7
	ldptr.w	$a0, $s0, 5780
	fldx.d	$fa1, $s8, $s7
	bne	$a0, $a5, .LBB6_95
# %bb.94:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_96
.LBB6_95:                               #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_114
.LBB6_96:                               #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s6, 0
	fmadd.d	$fa0, $fa0, $fs3, $fa3
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s2, 0
	ldptr.w	$a0, $s0, 5784
	fldx.d	$fa1, $s8, $s7
	bne	$a0, $a5, .LBB6_98
# %bb.97:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_99
.LBB6_98:                               #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_115
.LBB6_99:                               #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s6, 8
	fmadd.d	$fa0, $fa0, $fs3, $fa3
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s2, 4
	ldptr.w	$a0, $s0, 5788
	fldx.d	$fa1, $s8, $s7
	bne	$a0, $a5, .LBB6_101
# %bb.100:                              #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_102
.LBB6_101:                              #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_116
.LBB6_102:                              #   in Loop: Header=BB6_7 Depth=2
	fmadd.d	$fa1, $fa0, $fs3, $fa3
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	st.w	$a0, $s2, 8
	ldptr.w	$a0, $s0, 4172
	fst.d	$fa0, $s6, 16
	ori	$s6, $zero, 2
	bne	$a0, $a5, .LBB6_6
# %bb.103:                              #   in Loop: Header=BB6_7 Depth=2
	ori	$a0, $zero, 32
	blt	$fp, $a0, .LBB6_105
# %bb.104:                              #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a0, $s0, 5116
	beqz	$a0, .LBB6_107
.LBB6_105:                              #   in Loop: Header=BB6_7 Depth=2
	move	$s1, $a4
	ori	$a1, $zero, 6
	slt	$a0, $a1, $s3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, -6
.LBB6_106:                              #   in Loop: Header=BB6_7 Depth=2
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s4, $a0
	fld.d	$fa0, $a0, 16
	vldi	$vr1, -912
	fadd.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	move	$a4, $s1
	ldptr.d	$a0, $s1, 15504
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	movgr2fr.d	$fa1, $a1
	fdiv.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a0, $s7
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ori	$a5, $zero, 1
	vldi	$vr3, -928
	b	.LBB6_6
.LBB6_107:                              #   in Loop: Header=BB6_7 Depth=2
	move	$s1, $a4
	addi.w	$a0, $s3, -4
	b	.LBB6_106
.LBB6_108:                              # %call.sqrt
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s1, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	ori	$a5, $zero, 1
	move	$a4, $s1
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB6_23
.LBB6_109:                              # %call.sqrt278
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s1, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	ori	$a5, $zero, 1
	move	$a4, $s1
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB6_26
.LBB6_110:                              # %call.sqrt280
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s1, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	ori	$a5, $zero, 1
	move	$a4, $s1
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB6_29
.LBB6_111:                              # %call.sqrt288
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	ori	$a5, $zero, 1
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	b	.LBB6_33
.LBB6_112:                              # %call.sqrt290
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	ori	$a5, $zero, 1
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	b	.LBB6_36
.LBB6_113:                              # %call.sqrt292
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s1, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	ori	$a5, $zero, 1
	move	$a4, $s1
	b	.LBB6_38
.LBB6_114:                              # %call.sqrt306
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s1, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	ori	$a5, $zero, 1
	move	$a4, $s1
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB6_96
.LBB6_115:                              # %call.sqrt308
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s1, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	ori	$a5, $zero, 1
	move	$a4, $s1
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB6_99
.LBB6_116:                              # %call.sqrt310
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s1, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	ori	$a5, $zero, 1
	move	$a4, $s1
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB6_102
.LBB6_117:                              # %call.sqrt282
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s1, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	ori	$a5, $zero, 1
	move	$a4, $s1
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB6_52
.LBB6_118:                              # %call.sqrt284
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s1, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	ori	$a5, $zero, 1
	move	$a4, $s1
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB6_55
.LBB6_119:                              # %call.sqrt286
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s1, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	ori	$a5, $zero, 1
	move	$a4, $s1
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB6_58
.LBB6_120:                              # %call.sqrt294
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s5, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	ori	$a5, $zero, 1
	move	$a4, $s5
	b	.LBB6_60
.LBB6_121:                              # %call.sqrt296
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s5, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	ori	$a5, $zero, 1
	move	$a4, $s5
	b	.LBB6_63
.LBB6_122:                              # %call.sqrt298
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s1, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	ori	$a5, $zero, 1
	move	$a4, $s1
	b	.LBB6_65
.LBB6_123:                              # %call.sqrt300
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	ori	$a5, $zero, 1
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	b	.LBB6_85
.LBB6_124:                              # %call.sqrt302
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	ori	$a5, $zero, 1
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	b	.LBB6_88
.LBB6_125:                              # %call.sqrt304
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s1, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	ori	$a5, $zero, 1
	move	$a4, $s1
	b	.LBB6_90
.LBB6_126:                              # %.preheader
	ori	$fp, $zero, 12
	pcalau12i	$a1, %got_pc_hi20(QP2QUANT)
	ld.d	$s2, $a1, %got_pc_lo12(QP2QUANT)
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	vldi	$vr3, -912
	vldi	$vr4, -928
	lu52i.d	$a1, $zero, 1039
	movgr2fr.d	$fs0, $a1
	ori	$a6, $zero, 1
	ori	$a0, $a0, 2543
	lu32i.d	$a0, 405058
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fs1, $a0
	ori	$a7, $zero, 52
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	b	.LBB6_128
	.p2align	4, , 16
.LBB6_127:                              # %._crit_edge212
                                        #   in Loop: Header=BB6_128 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB6_137
.LBB6_128:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_133 Depth 2
	ldptr.w	$a0, $a4, 15452
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB6_127
# %bb.129:                              # %.lr.ph211
                                        #   in Loop: Header=BB6_128 Depth=1
	ldptr.d	$a1, $a4, 15480
	ldptr.d	$a2, $a4, 15488
	ldptr.d	$a3, $a4, 15496
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	slli.d	$a5, $a5, 3
	ldx.d	$s5, $a1, $a5
	ldx.d	$s6, $a2, $a5
	move	$s1, $a5
	ldx.d	$s3, $a3, $a5
	sub.w	$s4, $zero, $a0
	slli.d	$a0, $a0, 3
	sub.d	$s7, $zero, $a0
	move	$s8, $s4
	b	.LBB6_133
	.p2align	4, , 16
.LBB6_130:                              #   in Loop: Header=BB6_133 Depth=2
	ori	$a1, $zero, 6
	slt	$a0, $a1, $s4
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, -6
.LBB6_131:                              #   in Loop: Header=BB6_133 Depth=2
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s6, $a0
	fld.d	$fa0, $a0, 16
	fadd.d	$fa0, $fa0, $fa3
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	vldi	$vr3, -912
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	ldptr.d	$a0, $a4, 15504
	ldx.d	$a0, $a0, $s1
	fdiv.d	$fa0, $fa0, $fs1
	fstx.d	$fa0, $a0, $s7
	vldi	$vr4, -928
	ori	$a6, $zero, 1
	ori	$a7, $zero, 52
.LBB6_132:                              #   in Loop: Header=BB6_133 Depth=2
	addi.d	$s8, $s8, 1
	bstrpick.d	$a0, $s8, 31, 0
	addi.w	$s4, $s4, 1
	addi.d	$s7, $s7, 8
	beq	$a0, $a7, .LBB6_127
.LBB6_133:                              #   Parent Loop BB6_128 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slt	$a0, $fp, $s4
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	alsl.d	$a0, $a0, $s2, 2
	ld.w	$a0, $a0, -48
	ldptr.w	$a1, $s0, 5780
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	addi.d	$a0, $a1, -1
	sltui	$a0, $a0, 1
	ldx.d	$a1, $s3, $s7
	movgr2cf	$fcc0, $a0
	fsel	$fa1, $fa3, $fa0, $fcc0
	fmul.d	$fa1, $fa1, $fa0
	fmadd.d	$fa2, $fa1, $fs0, $fa4
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a0, $fa2
	ldx.d	$a2, $s6, $s7
	st.w	$a0, $a1, 0
	ldptr.w	$a0, $s0, 5784
	fstx.d	$fa0, $s5, $s7
	fst.d	$fa1, $a2, 0
	fldx.d	$fa0, $s5, $s7
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	movgr2cf	$fcc0, $a0
	fsel	$fa1, $fa3, $fa0, $fcc0
	fmul.d	$fa0, $fa0, $fa1
	fmadd.d	$fa1, $fa0, $fs0, $fa4
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	st.w	$a0, $a1, 4
	ldptr.w	$a0, $s0, 5788
	fst.d	$fa0, $a2, 8
	fldx.d	$fa0, $s5, $s7
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	movgr2cf	$fcc0, $a0
	fsel	$fa1, $fa3, $fa0, $fcc0
	fmul.d	$fa0, $fa0, $fa1
	fmadd.d	$fa1, $fa0, $fs0, $fa4
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	st.w	$a0, $a1, 8
	ldptr.w	$a0, $s0, 4172
	fst.d	$fa0, $a2, 16
	bne	$a0, $a6, .LBB6_132
# %bb.134:                              #   in Loop: Header=BB6_133 Depth=2
	ori	$a0, $zero, 32
	blt	$s8, $a0, .LBB6_130
# %bb.135:                              #   in Loop: Header=BB6_133 Depth=2
	ldptr.w	$a0, $s0, 5116
	bnez	$a0, .LBB6_130
# %bb.136:                              #   in Loop: Header=BB6_133 Depth=2
	addi.w	$a0, $s4, -4
	b	.LBB6_131
.LBB6_137:                              # %.loopexit
	fld.d	$fs4, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 160                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end6:
	.size	SetLagrangianMultipliers, .Lfunc_end6-SetLagrangianMultipliers
                                        # -- End function
	.type	terminate_slice.MbWidthC,@object # @terminate_slice.MbWidthC
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2, 0x0
terminate_slice.MbWidthC:
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	16                              # 0x10
	.size	terminate_slice.MbWidthC, 16

	.type	terminate_slice.MbHeightC,@object # @terminate_slice.MbHeightC
	.p2align	2, 0x0
terminate_slice.MbHeightC:
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	16                              # 0x10
	.word	16                              # 0x10
	.size	terminate_slice.MbHeightC, 16

	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CABAC stuffing words = %6d\n"
	.size	.L.str, 28

	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	generic_RC,@object              # @generic_RC
	.comm	generic_RC,8,8
	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,1752,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.1:
	.asciz	"Error encoding first MB with specified parameter, bits of current MB may be too big"
	.size	.L.str.1, 84

	.type	quadratic_RC_init,@object       # @quadratic_RC_init
	.comm	quadratic_RC_init,8,8
	.type	quadratic_RC,@object            # @quadratic_RC
	.comm	quadratic_RC,8,8
	.type	generic_RC_init,@object         # @generic_RC_init
	.comm	generic_RC_init,8,8
	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,1752,8
	.type	quadratic_RC_best,@object       # @quadratic_RC_best
	.comm	quadratic_RC_best,8,8
	.type	generic_RC_best,@object         # @generic_RC_best
	.comm	generic_RC_best,8,8
	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.comm	rddata_top_field_mb,1752,8
	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,1752,8
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
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
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	p_stat,@object                  # @p_stat
	.comm	p_stat,8,8
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	p_trace,@object                 # @p_trace
	.comm	p_trace,8,8
	.type	p_in,@object                    # @p_in
	.comm	p_in,4,4
	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
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
	.type	img_pad_size_uv_x,@object       # @img_pad_size_uv_x
	.comm	img_pad_size_uv_x,4,4
	.type	img_pad_size_uv_y,@object       # @img_pad_size_uv_y
	.comm	img_pad_size_uv_y,4,4
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
	.type	WriteNALU,@object               # @WriteNALU
	.comm	WriteNALU,8,8
	.type	diffy,@object                   # @diffy
	.comm	diffy,1024,4
	.type	qp_mbaff,@object                # @qp_mbaff
	.comm	qp_mbaff,16,4
	.type	delta_qp_mbaff,@object          # @delta_qp_mbaff
	.comm	delta_qp_mbaff,16,4
	.type	updateQP,@object                # @updateQP
	.comm	updateQP,8,8
	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Too many slices per picture, increase MAXSLICEPERPICTURE in global.h."
	.size	.L.str.2, 70

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"malloc_slice: slice structure"
	.size	.L.str.3, 30

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"malloc_slice: partArr"
	.size	.L.str.4, 22

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"malloc_slice: Bitstream"
	.size	.L.str.5, 24

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"malloc_slice: StreamBuffer"
	.size	.L.str.6, 27

	.type	.Lswitch.table.encode_one_slice.5,@object # @switch.table.encode_one_slice.5
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.Lswitch.table.encode_one_slice.5:
	.dword	0
	.dword	writeSE_Dummy
	.dword	writeSE_invFlag
	.size	.Lswitch.table.encode_one_slice.5, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym dummy_slice_too_big
	.addrsig_sym writeSE_UVLC
	.addrsig_sym writeIntraPredMode_CAVLC
	.addrsig_sym writeSE_Dummy
	.addrsig_sym writeSE_invFlag
	.addrsig_sym writeSE_SVLC
	.addrsig_sym writeCBP_VLC
	.addrsig_sym writeSE_Flag
	.addrsig_sym writeMB_typeInfo_CABAC
	.addrsig_sym writeIntraPredMode_CABAC
	.addrsig_sym writeB8_typeInfo_CABAC
	.addrsig_sym writeRefFrame_CABAC
	.addrsig_sym writeMVD_CABAC
	.addrsig_sym writeCBP_CABAC
	.addrsig_sym writeDquant_CABAC
	.addrsig_sym writeCIPredMode_CABAC
	.addrsig_sym writeFieldModeInfo_CABAC
	.addrsig_sym writeMB_transform_size_CABAC
	.addrsig_sym rddata_top_frame_mb
	.addrsig_sym errortext
	.addrsig_sym rddata_bot_frame_mb
	.addrsig_sym rddata_top_field_mb
	.addrsig_sym rddata_bot_field_mb
	.addrsig_sym listXsize
	.addrsig_sym listX
	.addrsig_sym assignSE2partition_NoDP
	.addrsig_sym assignSE2partition_DP
