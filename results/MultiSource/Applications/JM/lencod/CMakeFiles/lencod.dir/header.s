	.file	"header.c"
	.text
	.globl	SliceHeader                     # -- Begin function SliceHeader
	.p2align	5
	.type	SliceHeader,@function
SliceHeader:                            # @SliceHeader
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
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4016
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(assignSE2partition)
	addi.d	$a1, $a1, %pc_lo12(assignSE2partition)
	ldx.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$s2, $a1, %got_pc_lo12(img)
	ld.d	$a1, $s2, 0
	ldptr.d	$a2, $a1, 14216
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a2, $a2, 24
	ori	$a3, $zero, 104
	mul.d	$a0, $a0, $a3
	ldptr.w	$a3, $a1, 15268
	ld.w	$a1, $a1, 12
	ldx.d	$fp, $a2, $a0
	sltu	$a0, $zero, $a3
	sra.w	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ld.w	$a1, $a1, 20
	ori	$a2, $zero, 4
	move	$s0, $a0
	bgeu	$a1, $a2, .LBB0_2
# %bb.1:                                # %switch.lookup
	addi.w	$a1, $a1, 5
	b	.LBB0_3
.LBB0_2:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	move	$a1, $zero
.LBB0_3:                                # %get_picture_type.exit
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(active_pps)
	ld.d	$a1, $s3, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 4
	add.d	$s0, $a0, $s0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	pcalau12i	$a2, %pc_hi20(log2_max_frame_num_minus4)
	ld.w	$a3, $a2, %pc_lo12(log2_max_frame_num_minus4)
	ldptr.w	$a2, $a1, 15332
	add.d	$s0, $s0, $a0
	addi.w	$a0, $a3, 4
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	move	$a3, $fp
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(active_sps)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.w	$a1, $a1, 1148
	add.d	$s4, $s0, $a0
	beqz	$a1, .LBB0_5
# %bb.4:
	move	$s0, $zero
	ori	$s1, $zero, 1
	ld.d	$a1, $s2, 0
	ldptr.d	$a0, $a1, 14208
	ld.w	$a0, $a0, 4
	bnez	$a0, .LBB0_8
	b	.LBB0_9
.LBB0_5:
	ld.d	$a0, $s2, 0
	ld.w	$a0, $a0, 24
	addi.w	$s0, $a0, -1
	sltui	$a1, $s0, 2
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	add.d	$s4, $a0, $s4
	bltu	$s1, $s0, .LBB0_7
# %bb.6:
	ld.d	$a0, $s2, 0
	ld.w	$a0, $a0, 24
	addi.d	$a0, $a0, -2
	sltui	$a1, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	add.d	$s4, $a0, $s4
	ori	$s0, $zero, 1
	ld.d	$a1, $s2, 0
	ldptr.d	$a0, $a1, 14208
	ld.w	$a0, $a0, 4
	bnez	$a0, .LBB0_8
	b	.LBB0_9
.LBB0_7:
	move	$s0, $zero
	ld.d	$a1, $s2, 0
	ldptr.d	$a0, $a1, 14208
	ld.w	$a0, $a0, 4
	beqz	$a0, .LBB0_9
.LBB0_8:
	ld.wu	$a0, $a1, 0
	srli.d	$a1, $a0, 31
	add.d	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a1, $a1, 1
	sub.w	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	add.d	$s4, $a0, $s4
.LBB0_9:
	ldptr.w	$a0, $a1, 15272
	bnez	$a0, .LBB0_19
# %bb.10:
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ld.w	$a0, $a0, 1148
	bnez	$a0, .LBB0_15
# %bb.11:
	bnez	$s1, .LBB0_15
# %bb.12:
	ld.w	$a0, $a1, 24
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB0_15
# %bb.13:
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_127
# %bb.14:
	pcalau12i	$a0, %pc_hi20(log2_max_pic_order_cnt_lsb_minus4)
	ld.w	$a0, $a0, %pc_lo12(log2_max_pic_order_cnt_lsb_minus4)
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3032
	b	.LBB0_16
.LBB0_15:
	pcalau12i	$a0, %pc_hi20(log2_max_pic_order_cnt_lsb_minus4)
	ld.w	$a0, $a0, %pc_lo12(log2_max_pic_order_cnt_lsb_minus4)
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3028
.LBB0_16:
	ldx.w	$a2, $a1, $a2
	addi.w	$a0, $a0, 4
	addi.d	$a3, $zero, -1
	sll.w	$a3, $a3, $a0
	andn	$a2, $a2, $a3
	stptr.w	$a2, $a1, 15296
.LBB0_17:
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	move	$a3, $fp
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ldptr.w	$a2, $a1, 15356
	sltui	$a2, $a2, 1
	or	$a2, $s0, $a2
	add.d	$s4, $a0, $s4
	bnez	$a2, .LBB0_19
# %bb.18:
	ldptr.w	$a1, $a1, 15300
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	add.d	$s4, $a0, $s4
.LBB0_19:
	ldptr.w	$a0, $a1, 15272
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB0_23
# %bb.20:
	ldptr.w	$a0, $a1, 15276
	bnez	$a0, .LBB0_23
# %bb.21:
	ldptr.w	$a1, $a1, 15304
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ldptr.w	$a2, $a1, 15356
	sltui	$a2, $a2, 1
	or	$a2, $s0, $a2
	add.d	$s4, $a0, $s4
	bnez	$a2, .LBB0_23
# %bb.22:
	ldptr.w	$a1, $a1, 15308
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	add.d	$s4, $a0, $s4
.LBB0_23:
	ld.d	$a0, $s3, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 228
	beqz	$a0, .LBB0_25
# %bb.24:
	ldptr.w	$a1, $a1, 15264
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	add.d	$s4, $a0, $s4
.LBB0_25:
	ld.w	$a2, $a1, 20
	ori	$a0, $zero, 1
	bne	$a2, $a0, .LBB0_27
# %bb.26:
	ldptr.w	$a1, $a1, 14452
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ld.w	$a2, $a1, 20
	add.d	$s4, $a0, $s4
.LBB0_27:
	ori	$a0, $zero, 3
	beq	$a2, $a0, .LBB0_30
# %bb.28:
	ori	$a0, $zero, 1
	beq	$a2, $a0, .LBB0_32
# %bb.29:
	bnez	$a2, .LBB0_37
.LBB0_30:
	ld.d	$a0, $s3, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 184
	ldptr.w	$s0, $a1, 14456
.LBB0_31:
	addi.w	$s1, $a0, 1
	xor	$a0, $s0, $s1
	sltu	$a1, $zero, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	add.d	$s4, $a0, $s4
	bne	$s0, $s1, .LBB0_35
	b	.LBB0_37
.LBB0_32:
	ld.d	$a0, $s3, %pc_lo12(active_pps)
	ld.w	$a2, $a0, 184
	ldptr.w	$a3, $a1, 14456
	addi.w	$a2, $a2, 1
	bne	$a3, $a2, .LBB0_34
# %bb.33:
	ld.w	$a0, $a0, 188
	ldptr.w	$s0, $a1, 14460
	b	.LBB0_31
.LBB0_34:                               # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	add.d	$s4, $a0, $s4
.LBB0_35:
	ld.d	$a0, $s2, 0
	lu12i.w	$s0, 3
	ori	$a1, $s0, 2168
	ldx.w	$a0, $a0, $a1
	addi.w	$a1, $a0, -1
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ld.w	$a2, $a1, 20
	ori	$a3, $zero, 1
	add.d	$s4, $a0, $s4
	bne	$a2, $a3, .LBB0_37
# %bb.36:
	ori	$a0, $s0, 2172
	ldx.w	$a0, $a1, $a0
	addi.w	$a1, $a0, -1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	add.d	$s4, $a0, $s4
.LBB0_37:
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $s2, 0
	ldptr.w	$a1, $a1, 5084
	ldptr.d	$s3, $a0, 14216
	beqz	$a1, .LBB0_40
# %bb.38:
	pcalau12i	$a1, %pc_hi20(redundant_coding)
	ld.w	$a1, $a1, %pc_lo12(redundant_coding)
	beqz	$a1, .LBB0_40
# %bb.39:
	ori	$a1, $zero, 1
	ld.d	$a3, $s3, 56
	st.w	$a1, $s3, 48
	ori	$a1, $zero, 0
	lu32i.d	$a1, 3
	st.d	$a1, $a3, 0
	pcalau12i	$a1, %pc_hi20(redundant_ref_idx)
	ld.w	$a1, $a1, %pc_lo12(redundant_ref_idx)
	ld.d	$a4, $s3, 64
	ld.d	$a5, $s3, 72
	addi.d	$a1, $a1, -1
	st.w	$a1, $a4, 0
	st.w	$zero, $a5, 0
	pcalau12i	$a1, %got_pc_hi20(listX)
	ld.d	$a1, $a1, %got_pc_lo12(listX)
	lu12i.w	$a2, 3
	ori	$a2, $a2, 2168
	ldx.w	$a2, $a0, $a2
	ld.d	$a0, $a1, 0
	addi.w	$a2, $a2, -1
	pcalau12i	$a1, %got_pc_hi20(listXsize)
	ld.d	$a1, $a1, %got_pc_lo12(listXsize)
	pcaddu18i	$ra, %call36(reorder_ref_pic_list)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
.LBB0_40:
	ld.w	$a0, $a0, 20
	ori	$a1, $zero, 2
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	bne	$a0, $a1, .LBB0_42
# %bb.41:
	move	$s0, $zero
	b	.LBB0_49
.LBB0_42:
	ld.w	$a1, $s3, 48
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 48
	move	$s0, $a0
	beqz	$a1, .LBB0_49
# %bb.43:                               # %.preheader67.i
	ld.d	$a1, $s3, 56
	addi.d	$a0, $s3, 72
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$s5, $s3, 64
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$s6, $a0, %pc_lo12(.L.str.28)
	ori	$s7, $zero, 2
	ori	$s8, $zero, 3
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$s2, $a0, %pc_lo12(.L.str.29)
	move	$s4, $zero
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_44:                               # %.sink.split.i
                                        #   in Loop: Header=BB0_46 Depth=1
	ld.d	$a1, $a3, 0
	ldx.w	$a1, $a1, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 56
	ldx.w	$a2, $a1, $s4
	add.d	$s0, $a0, $s0
.LBB0_45:                               #   in Loop: Header=BB0_46 Depth=1
	addi.d	$s4, $s4, 4
	beq	$a2, $s8, .LBB0_49
.LBB0_46:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a1, $a1, $s4
	move	$a0, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 56
	ldx.w	$a2, $a1, $s4
	add.d	$s0, $a0, $s0
	move	$a3, $s5
	move	$a0, $s6
	bltu	$a2, $s7, .LBB0_44
# %bb.47:                               #   in Loop: Header=BB0_46 Depth=1
	bne	$a2, $s7, .LBB0_45
# %bb.48:                               #   in Loop: Header=BB0_46 Depth=1
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	move	$a0, $s2
	b	.LBB0_44
.LBB0_49:                               # %.loopexit68.i
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 20
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_57
# %bb.50:
	ld.w	$a1, $s3, 80
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 80
	add.d	$s0, $a0, $s0
	beqz	$a1, .LBB0_57
# %bb.51:                               # %.preheader.i
	ld.d	$a1, $s3, 88
	addi.d	$a0, $s3, 104
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$s5, $s3, 96
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$s1, $a0, %pc_lo12(.L.str.31)
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$s6, $a0, %pc_lo12(.L.str.32)
	ori	$s7, $zero, 2
	ori	$s8, $zero, 3
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$s2, $a0, %pc_lo12(.L.str.33)
	move	$s4, $zero
	b	.LBB0_54
	.p2align	4, , 16
.LBB0_52:                               # %.sink.split75.i
                                        #   in Loop: Header=BB0_54 Depth=1
	ld.d	$a1, $a3, 0
	ldx.w	$a1, $a1, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 88
	ldx.w	$a2, $a1, $s4
	add.d	$s0, $a0, $s0
.LBB0_53:                               #   in Loop: Header=BB0_54 Depth=1
	addi.d	$s4, $s4, 4
	beq	$a2, $s8, .LBB0_57
.LBB0_54:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a1, $a1, $s4
	move	$a0, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 88
	ldx.w	$a2, $a1, $s4
	add.d	$s0, $a0, $s0
	move	$a3, $s5
	move	$a0, $s6
	bltu	$a2, $s7, .LBB0_52
# %bb.55:                               #   in Loop: Header=BB0_54 Depth=1
	bne	$a2, $s7, .LBB0_53
# %bb.56:                               #   in Loop: Header=BB0_54 Depth=1
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	move	$a0, $s2
	b	.LBB0_52
.LBB0_57:                               # %ref_pic_list_reordering.exit
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 20
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	add.d	$s0, $s0, $a2
	beqz	$a1, .LBB0_61
# %bb.58:                               # %ref_pic_list_reordering.exit
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_61
# %bb.59:                               # %ref_pic_list_reordering.exit
	ori	$a2, $zero, 1
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	bne	$a1, $a2, .LBB0_94
# %bb.60:                               # %ref_pic_list_reordering.exit._crit_edge
	ld.d	$a2, $s3, %pc_lo12(active_pps)
	b	.LBB0_63
.LBB0_61:
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $s3, %pc_lo12(active_pps)
	ld.w	$a3, $a2, 192
	bnez	$a3, .LBB0_64
# %bb.62:
	ori	$a3, $zero, 1
	bne	$a1, $a3, .LBB0_94
.LBB0_63:
	ld.w	$a1, $a2, 196
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB0_94
.LBB0_64:
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(luma_log_weight_denom)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a1, $a0, %pc_lo12(luma_log_weight_denom)
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.w	$a1, $a1, 32
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(chroma_log_weight_denom)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	beqz	$a1, .LBB0_66
# %bb.65:
	ld.w	$a1, $a0, %pc_lo12(chroma_log_weight_denom)
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	add.d	$s0, $a0, $s0
.LBB0_66:
	ld.d	$a0, $s2, 0
	ldptr.w	$a1, $a0, 14456
	blez	$a1, .LBB0_79
# %bb.67:                               # %.lr.ph.i.preheader
	pcalau12i	$s8, %pc_hi20(wp_weight)
	pcalau12i	$s7, %pc_hi20(wp_offset)
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$s1, $a0, %pc_lo12(.L.str.45)
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$s3, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$s4, $a0, %pc_lo12(.L.str.50)
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$s6, $a0, %pc_lo12(.L.str.47)
	move	$s2, $zero
	move	$s5, $zero
	b	.LBB0_70
	.p2align	4, , 16
.LBB0_68:                               # %.loopexit89.loopexit.i
                                        #   in Loop: Header=BB0_70 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, %pc_lo12(wp_weight)
	ld.d	$a1, $a1, 0
	ldx.d	$a1, $a1, $s2
	ld.w	$a1, $a1, 4
	add.d	$s0, $a0, $s0
	move	$a0, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(wp_offset)
	ld.d	$a1, $a1, 0
	ldx.d	$a1, $a1, $s2
	ld.w	$a1, $a1, 4
	add.d	$s0, $s0, $a0
	move	$a0, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, %pc_lo12(wp_weight)
	ld.d	$a1, $a1, 0
	ldx.d	$a1, $a1, $s2
	ld.w	$a1, $a1, 8
	add.d	$s0, $s0, $a0
	move	$a0, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(wp_offset)
	ld.d	$a1, $a1, 0
	ldx.d	$a1, $a1, $s2
	ld.w	$a1, $a1, 8
	add.d	$s0, $s0, $a0
	move	$a0, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $a0
.LBB0_69:                               # %.loopexit89.i
                                        #   in Loop: Header=BB0_70 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 14456
	addi.d	$s5, $s5, 1
	addi.d	$s2, $s2, 8
	bge	$s5, $a1, .LBB0_79
.LBB0_70:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, %pc_lo12(wp_weight)
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.wu	$a1, $a1, %pc_lo12(luma_log_weight_denom)
	ld.w	$a0, $a0, 0
	ori	$a2, $zero, 1
	sll.w	$a1, $a2, $a1
	bne	$a0, $a1, .LBB0_72
# %bb.71:                               #   in Loop: Header=BB0_70 Depth=1
	ld.d	$a0, $s7, %pc_lo12(wp_offset)
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s2
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_78
.LBB0_72:                               #   in Loop: Header=BB0_70 Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, %pc_lo12(wp_weight)
	ld.d	$a1, $a1, 0
	ldx.d	$a1, $a1, $s2
	ld.w	$a1, $a1, 0
	add.d	$s0, $a0, $s0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(wp_offset)
	ld.d	$a1, $a1, 0
	ldx.d	$a1, $a1, $s2
	ld.w	$a1, $a1, 0
	add.d	$s0, $s0, $a0
	move	$a0, $s6
	move	$a2, $fp
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ld.w	$a0, $a0, 32
	beqz	$a0, .LBB0_69
.LBB0_73:                               #   in Loop: Header=BB0_70 Depth=1
	ld.d	$a0, $s8, %pc_lo12(wp_weight)
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.wu	$a2, $a1, %pc_lo12(chroma_log_weight_denom)
	ld.w	$a1, $a0, 4
	ori	$a3, $zero, 1
	sll.w	$a2, $a3, $a2
	bne	$a1, $a2, .LBB0_68
# %bb.74:                               #   in Loop: Header=BB0_70 Depth=1
	ld.d	$a2, $s7, %pc_lo12(wp_offset)
	ld.d	$a2, $a2, 0
	ldx.d	$a2, $a2, $s2
	ld.w	$a3, $a2, 4
	bnez	$a3, .LBB0_68
# %bb.75:                               #   in Loop: Header=BB0_70 Depth=1
	ld.w	$a0, $a0, 8
	bne	$a0, $a1, .LBB0_68
# %bb.76:                               #   in Loop: Header=BB0_70 Depth=1
	ld.w	$a0, $a2, 8
	bnez	$a0, .LBB0_68
# %bb.77:                               #   in Loop: Header=BB0_70 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	add.d	$s0, $a0, $s0
	b	.LBB0_69
.LBB0_78:                               #   in Loop: Header=BB0_70 Depth=1
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	add.d	$s0, $a0, $s0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ld.w	$a0, $a0, 32
	bnez	$a0, .LBB0_73
	b	.LBB0_69
.LBB0_79:                               # %._crit_edge.i
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB0_93
# %bb.80:                               # %.preheader.i99
	ldptr.w	$a1, $a0, 14460
	blez	$a1, .LBB0_93
# %bb.81:                               # %.lr.ph99.i.preheader
	pcalau12i	$s8, %pc_hi20(wp_weight)
	pcalau12i	$s7, %pc_hi20(wp_offset)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s1, $a0, %pc_lo12(.L.str.51)
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$s3, $a0, %pc_lo12(.L.str.55)
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$s4, $a0, %pc_lo12(.L.str.56)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$s6, $a0, %pc_lo12(.L.str.53)
	move	$s2, $zero
	move	$s5, $zero
	b	.LBB0_84
	.p2align	4, , 16
.LBB0_82:                               # %.loopexit.loopexit.i
                                        #   in Loop: Header=BB0_84 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, %pc_lo12(wp_weight)
	ld.d	$a1, $a1, 8
	ldx.d	$a1, $a1, $s2
	ld.w	$a1, $a1, 4
	add.d	$s0, $a0, $s0
	move	$a0, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(wp_offset)
	ld.d	$a1, $a1, 8
	ldx.d	$a1, $a1, $s2
	ld.w	$a1, $a1, 4
	add.d	$s0, $s0, $a0
	move	$a0, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, %pc_lo12(wp_weight)
	ld.d	$a1, $a1, 8
	ldx.d	$a1, $a1, $s2
	ld.w	$a1, $a1, 8
	add.d	$s0, $s0, $a0
	move	$a0, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(wp_offset)
	ld.d	$a1, $a1, 8
	ldx.d	$a1, $a1, $s2
	ld.w	$a1, $a1, 8
	add.d	$s0, $s0, $a0
	move	$a0, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $a0
.LBB0_83:                               # %.loopexit.i
                                        #   in Loop: Header=BB0_84 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 14460
	addi.d	$s5, $s5, 1
	addi.d	$s2, $s2, 8
	bge	$s5, $a1, .LBB0_93
.LBB0_84:                               # %.lr.ph99.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, %pc_lo12(wp_weight)
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.wu	$a1, $a1, %pc_lo12(luma_log_weight_denom)
	ld.w	$a0, $a0, 0
	ori	$a2, $zero, 1
	sll.w	$a1, $a2, $a1
	bne	$a0, $a1, .LBB0_86
# %bb.85:                               #   in Loop: Header=BB0_84 Depth=1
	ld.d	$a0, $s7, %pc_lo12(wp_offset)
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s2
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_92
.LBB0_86:                               #   in Loop: Header=BB0_84 Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, %pc_lo12(wp_weight)
	ld.d	$a1, $a1, 8
	ldx.d	$a1, $a1, $s2
	ld.w	$a1, $a1, 0
	add.d	$s0, $a0, $s0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(wp_offset)
	ld.d	$a1, $a1, 8
	ldx.d	$a1, $a1, $s2
	ld.w	$a1, $a1, 0
	add.d	$s0, $s0, $a0
	move	$a0, $s6
	move	$a2, $fp
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ld.w	$a0, $a0, 32
	beqz	$a0, .LBB0_83
.LBB0_87:                               #   in Loop: Header=BB0_84 Depth=1
	ld.d	$a0, $s8, %pc_lo12(wp_weight)
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.wu	$a2, $a1, %pc_lo12(chroma_log_weight_denom)
	ld.w	$a1, $a0, 4
	ori	$a3, $zero, 1
	sll.w	$a2, $a3, $a2
	bne	$a1, $a2, .LBB0_82
# %bb.88:                               #   in Loop: Header=BB0_84 Depth=1
	ld.d	$a2, $s7, %pc_lo12(wp_offset)
	ld.d	$a2, $a2, 8
	ldx.d	$a2, $a2, $s2
	ld.w	$a3, $a2, 4
	bnez	$a3, .LBB0_82
# %bb.89:                               #   in Loop: Header=BB0_84 Depth=1
	ld.w	$a0, $a0, 8
	bne	$a0, $a1, .LBB0_82
# %bb.90:                               #   in Loop: Header=BB0_84 Depth=1
	ld.w	$a0, $a2, 8
	bnez	$a0, .LBB0_82
# %bb.91:                               #   in Loop: Header=BB0_84 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	add.d	$s0, $a0, $s0
	b	.LBB0_83
.LBB0_92:                               #   in Loop: Header=BB0_84 Depth=1
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	add.d	$s0, $a0, $s0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ld.w	$a0, $a0, 32
	bnez	$a0, .LBB0_87
	b	.LBB0_83
.LBB0_93:                               # %pred_weight_table.exit
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$s0, $s0, $a1
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
.LBB0_94:
	ldptr.w	$a1, $a0, 15360
	beqz	$a1, .LBB0_98
# %bb.95:
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	ldptr.d	$a1, $a0, 14208
	ld.w	$a1, $a1, 4
	beqz	$a1, .LBB0_113
# %bb.96:
	ldptr.w	$a1, $a0, 15368
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ldptr.w	$a1, $a1, 15372
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	add.d	$s0, $a0, $s0
.LBB0_97:                               # %dec_ref_pic_marking.exit
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	add.d	$s0, $s0, $a0
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
.LBB0_98:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_101
# %bb.99:
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB0_101
# %bb.100:
	ldptr.w	$a1, $a0, 15384
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	add.d	$s0, $a0, $s0
.LBB0_101:
	ld.d	$a0, $s3, %pc_lo12(active_pps)
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a1, 4
	ld.w	$a0, $a0, 200
	sub.d	$a0, $a1, $a0
	addi.w	$a1, $a0, -26
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ld.w	$a1, $a1, 20
	ori	$a2, $zero, 3
	add.w	$s0, $a0, $s0
	bne	$a1, $a2, .LBB0_103
# %bb.102:
	pcalau12i	$a0, %pc_hi20(si_frame_indicator)
	ld.w	$a0, $a0, %pc_lo12(si_frame_indicator)
	pcalau12i	$a1, %pc_hi20(sp2_frame_indicator)
	ld.w	$a1, $a1, %pc_lo12(sp2_frame_indicator)
	or	$a0, $a0, $a1
	sltu	$a1, $zero, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ld.w	$a1, $a1, 40
	add.d	$s0, $a0, $s0
	addi.w	$a1, $a1, -26
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	add.w	$s0, $s0, $a0
.LBB0_103:
	ld.d	$a0, $s3, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 220
	beqz	$a0, .LBB0_106
# %bb.104:
	ld.d	$a0, $s2, 0
	ldptr.w	$a1, $a0, 14440
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ldptr.w	$a2, $a1, 14440
	ori	$a3, $zero, 1
	add.w	$s0, $a0, $s0
	beq	$a2, $a3, .LBB0_106
# %bb.105:
	lu12i.w	$s1, 3
	ori	$a0, $s1, 2156
	ldx.wu	$a0, $a1, $a0
	srli.d	$a1, $a0, 31
	add.w	$a0, $a0, $a1
	srai.d	$a1, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ori	$a2, $s1, 2160
	ldx.wu	$a1, $a1, $a2
	add.d	$s0, $a0, $s0
	srli.d	$a0, $a1, 31
	add.w	$a0, $a1, $a0
	srai.d	$a1, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	add.w	$s0, $s0, $a0
.LBB0_106:
	ld.d	$a0, $s3, %pc_lo12(active_pps)
	ld.w	$a1, $a0, 60
	beqz	$a1, .LBB0_109
# %bb.107:
	ld.w	$a1, $a0, 64
	addi.w	$a1, $a1, -3
	ori	$a2, $zero, 2
	bltu	$a2, $a1, .LBB0_109
# %bb.108:
	ld.d	$s1, $s2, 0
	lu12i.w	$a1, 3
	ori	$a2, $a1, 3052
	ldx.w	$a2, $s1, $a2
	ori	$a1, $a1, 3048
	ldx.w	$a1, $s1, $a1
	mul.d	$a1, $a1, $a2
	ld.w	$a0, $a0, 168
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	vldi	$vr1, -1168
	fadd.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -4189
	ori	$a0, $a0, 2543
	lu32i.d	$a0, 405058
	lu52i.d	$a0, $a0, 1022
	movgr2fr.d	$fa1, $a0
	fdiv.d	$fa0, $fa0, $fa1
	vreplvei.d	$vr0, $vr0, 0
	ldptr.w	$a2, $s1, 15436
	vfrintrp.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	move	$a3, $fp
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	add.w	$s0, $a0, $s0
.LBB0_109:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4016
	beqz	$a0, .LBB0_112
# %bb.110:
	ld.d	$a0, $s2, 0
	ldptr.d	$a1, $a0, 14208
	ld.w	$a1, $a1, 4
	bnez	$a1, .LBB0_112
# %bb.111:
	ld.w	$a1, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	add.w	$s0, $a0, $s0
.LBB0_112:
	move	$a0, $s0
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
.LBB0_113:
	ldptr.d	$a1, $a0, 15376
	sltu	$a1, $zero, $a1
	stptr.w	$a1, $a0, 15364
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ldptr.w	$a2, $a1, 15364
	move	$s0, $a0
	beqz	$a2, .LBB0_97
# %bb.114:
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3088
	add.d	$a0, $a1, $a0
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.38)
	addi.d	$s2, $a1, %pc_lo12(.L.str.38)
	ori	$s6, $zero, 3
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$s3, $a1, %pc_lo12(.L.str.39)
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ori	$s8, $zero, 2
	pcalau12i	$a1, %pc_hi20(.L.str.41)
	addi.d	$s4, $a1, %pc_lo12(.L.str.41)
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$s1, $a1, %pc_lo12(.L.str.42)
	b	.LBB0_118
	.p2align	4, , 16
.LBB0_115:                              #   in Loop: Header=BB0_118 Depth=1
	ori	$a1, $zero, 8
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
.LBB0_116:                              # %.sink.split.i111
                                        #   in Loop: Header=BB0_118 Depth=1
	ldx.w	$a1, $s7, $a1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	add.d	$s0, $a0, $s0
.LBB0_117:                              #   in Loop: Header=BB0_118 Depth=1
	addi.d	$a0, $s7, 24
	beqz	$s5, .LBB0_97
.LBB0_118:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s7, $a0, 0
	bnez	$s7, .LBB0_120
# %bb.119:                              #   in Loop: Header=BB0_118 Depth=1
	ori	$a1, $zero, 500
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB0_120:                              #   in Loop: Header=BB0_118 Depth=1
	ld.w	$s5, $s7, 0
	move	$a0, $s2
	move	$a1, $s5
	move	$a2, $fp
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ori	$a1, $s5, 2
	add.d	$s0, $a0, $s0
	bne	$a1, $s6, .LBB0_122
# %bb.121:                              #   in Loop: Header=BB0_118 Depth=1
	ld.w	$a1, $s7, 4
	move	$a0, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	add.d	$a0, $s0, $a0
	addi.d	$s0, $a0, 1
.LBB0_122:                              #   in Loop: Header=BB0_118 Depth=1
	beq	$s5, $s8, .LBB0_115
# %bb.123:                              #   in Loop: Header=BB0_118 Depth=1
	ori	$a0, $zero, 6
	beq	$s5, $a0, .LBB0_126
# %bb.124:                              #   in Loop: Header=BB0_118 Depth=1
	beq	$s5, $s6, .LBB0_126
# %bb.125:                              #   in Loop: Header=BB0_118 Depth=1
	ori	$a1, $zero, 16
	move	$a0, $s1
	ori	$a2, $zero, 4
	beq	$s5, $a2, .LBB0_116
	b	.LBB0_117
	.p2align	4, , 16
.LBB0_126:                              #   in Loop: Header=BB0_118 Depth=1
	ld.w	$a1, $s7, 12
	move	$a0, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	add.d	$s0, $a0, $s0
	ori	$a1, $zero, 16
	move	$a0, $s1
	ori	$a2, $zero, 4
	beq	$s5, $a2, .LBB0_116
	b	.LBB0_117
.LBB0_127:                              # %._crit_edge
	pcalau12i	$a0, %pc_hi20(log2_max_pic_order_cnt_lsb_minus4)
	ld.w	$a0, $a0, %pc_lo12(log2_max_pic_order_cnt_lsb_minus4)
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3008
	ldx.w	$a2, $a1, $a2
	addi.w	$a0, $a0, 4
	b	.LBB0_17
.Lfunc_end0:
	.size	SliceHeader, .Lfunc_end0-SliceHeader
                                        # -- End function
	.globl	get_picture_type                # -- Begin function get_picture_type
	.p2align	5
	.type	get_picture_type,@function
get_picture_type:                       # @get_picture_type
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 20
	ori	$a1, $zero, 4
	bgeu	$a0, $a1, .LBB1_2
# %bb.1:                                # %switch.lookup
	addi.w	$a0, $a0, 5
	ret
.LBB1_2:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	get_picture_type, .Lfunc_end1-get_picture_type
                                        # -- End function
	.globl	Partition_BC_Header             # -- Begin function Partition_BC_Header
	.p2align	5
	.type	Partition_BC_Header,@function
Partition_BC_Header:                    # @Partition_BC_Header
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a1, 0
	ldptr.d	$a2, $a1, 14216
	ld.d	$a2, $a2, 24
	ori	$a3, $zero, 104
	mul.d	$a0, $a0, $a3
	ld.w	$a3, $a1, 16
	add.d	$a1, $a2, $a0
	st.w	$zero, $sp, 0
	st.w	$zero, $sp, 8
	st.w	$a3, $sp, 4
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(writeSE_UVLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	Partition_BC_Header, .Lfunc_end2-Partition_BC_Header
                                        # -- End function
	.type	assignSE2partition_NoDP,@object # @assignSE2partition_NoDP
	.bss
	.globl	assignSE2partition_NoDP
	.p2align	2, 0x0
assignSE2partition_NoDP:
	.space	72
	.size	assignSE2partition_NoDP, 72

	.type	assignSE2partition_DP,@object   # @assignSE2partition_DP
	.data
	.globl	assignSE2partition_DP
	.p2align	2, 0x0
assignSE2partition_DP:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.size	assignSE2partition_DP, 72

	.type	assignSE2partition,@object      # @assignSE2partition
	.comm	assignSE2partition,16,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"SH: first_mb_in_slice"
	.size	.L.str, 22

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"SH: slice_type"
	.size	.L.str.1, 15

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"SH: pic_parameter_set_id"
	.size	.L.str.2, 25

	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"SH: frame_num"
	.size	.L.str.3, 14

	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"SH: field_pic_flag"
	.size	.L.str.4, 19

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"SH: bottom_field_flag"
	.size	.L.str.5, 22

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"SH: idr_pic_id"
	.size	.L.str.6, 15

	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"SH: pic_order_cnt_lsb"
	.size	.L.str.7, 22

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"SH: delta_pic_order_cnt_bottom"
	.size	.L.str.8, 31

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"SH: delta_pic_order_cnt[0]"
	.size	.L.str.9, 27

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"SH: delta_pic_order_cnt[1]"
	.size	.L.str.10, 27

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"SH: redundant_pic_cnt"
	.size	.L.str.11, 22

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"SH: direct_spatial_mv_pred_flag"
	.size	.L.str.12, 32

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"SH: num_ref_idx_active_override_flag"
	.size	.L.str.13, 37

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"SH: num_ref_idx_l0_active_minus1"
	.size	.L.str.14, 33

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"SH: num_ref_idx_l1_active_minus1"
	.size	.L.str.15, 33

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"SH: cabac_init_idc"
	.size	.L.str.16, 19

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"SH: slice_qp_delta"
	.size	.L.str.17, 19

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"SH: sp_for_switch_flag"
	.size	.L.str.18, 23

	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"SH: slice_qs_delta"
	.size	.L.str.19, 19

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"SH: disable_deblocking_filter_idc"
	.size	.L.str.20, 34

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"SH: slice_alpha_c0_offset_div2"
	.size	.L.str.21, 31

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"SH: slice_beta_offset_div2"
	.size	.L.str.22, 27

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"SH: slice_group_change_cycle"
	.size	.L.str.23, 29

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"DPA: slice_id"
	.size	.L.str.24, 14

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Picture Type not supported!"
	.size	.L.str.25, 28

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
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
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
	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
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
	.type	seiHasBufferingPeriod_info,@object # @seiHasBufferingPeriod_info
	.comm	seiHasBufferingPeriod_info,4,4
	.type	seiBufferingPeriod,@object      # @seiBufferingPeriod
	.comm	seiBufferingPeriod,280,8
	.type	seiHasPicTiming_info,@object    # @seiHasPicTiming_info
	.comm	seiHasPicTiming_info,4,4
	.type	seiPicTiming,@object            # @seiPicTiming
	.comm	seiPicTiming,152,8
	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"SH: ref_pic_list_reordering_flag_l0"
	.size	.L.str.26, 36

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"SH: reordering_of_pic_nums_idc"
	.size	.L.str.27, 31

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"SH: abs_diff_pic_num_minus1_l0"
	.size	.L.str.28, 31

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"SH: long_term_pic_idx_l0"
	.size	.L.str.29, 25

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"SH: ref_pic_list_reordering_flag_l1"
	.size	.L.str.30, 36

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"SH: remapping_of_pic_num_idc"
	.size	.L.str.31, 29

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"SH: abs_diff_pic_num_minus1_l1"
	.size	.L.str.32, 31

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"SH: long_term_pic_idx_l1"
	.size	.L.str.33, 25

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"SH: no_output_of_prior_pics_flag"
	.size	.L.str.34, 33

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"SH: long_term_reference_flag"
	.size	.L.str.35, 29

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"SH: adaptive_ref_pic_buffering_flag"
	.size	.L.str.36, 36

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Error encoding MMCO commands"
	.size	.L.str.37, 29

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"SH: memory_management_control_operation"
	.size	.L.str.38, 40

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"SH: difference_of_pic_nums_minus1"
	.size	.L.str.39, 34

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"SH: long_term_pic_num"
	.size	.L.str.40, 22

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"SH: long_term_frame_idx"
	.size	.L.str.41, 24

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"SH: max_long_term_pic_idx_plus1"
	.size	.L.str.42, 32

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"SH: luma_log_weight_denom"
	.size	.L.str.43, 26

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"SH: chroma_log_weight_denom"
	.size	.L.str.44, 28

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"SH: luma_weight_flag_l0"
	.size	.L.str.45, 24

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"SH: luma_weight_l0"
	.size	.L.str.46, 19

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"SH: luma_offset_l0"
	.size	.L.str.47, 19

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"chroma_weight_flag_l0"
	.size	.L.str.48, 22

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"chroma_weight_l0"
	.size	.L.str.49, 17

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"chroma_offset_l0"
	.size	.L.str.50, 17

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"SH: luma_weight_flag_l1"
	.size	.L.str.51, 24

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"SH: luma_weight_l1"
	.size	.L.str.52, 19

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"SH: luma_offset_l1"
	.size	.L.str.53, 19

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"chroma_weight_flag_l1"
	.size	.L.str.54, 22

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"chroma_weight_l1"
	.size	.L.str.55, 17

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"chroma_offset_l1"
	.size	.L.str.56, 17

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym listXsize
