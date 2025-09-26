	.file	"getpic.c"
	.text
	.globl	Decode_Picture                  # -- Begin function Decode_Picture
	.p2align	5
	.type	Decode_Picture,@function
Decode_Picture:                         # @Decode_Picture
# %bb.0:
	addi.d	$sp, $sp, -416
	st.d	$ra, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	st.d	$s2, $sp, 376                   # 8-byte Folded Spill
	st.d	$s3, $sp, 368                   # 8-byte Folded Spill
	st.d	$s4, $sp, 360                   # 8-byte Folded Spill
	st.d	$s5, $sp, 352                   # 8-byte Folded Spill
	st.d	$s6, $sp, 344                   # 8-byte Folded Spill
	st.d	$s7, $sp, 336                   # 8-byte Folded Spill
	st.d	$s8, $sp, 328                   # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(picture_structure)
	ld.d	$a0, $a0, %got_pc_lo12(picture_structure)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.w	$a3, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(Second_Field)
	ld.d	$fp, $a0, %got_pc_lo12(Second_Field)
	ld.w	$a0, $fp, 0
	ori	$a4, $zero, 3
	bne	$a3, $a4, .LBB0_4
# %bb.1:
	beqz	$a0, .LBB0_4
# %bb.2:                                # %.thread
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a3, $a0, 0
	st.w	$zero, $fp, 0
	pcalau12i	$a0, %got_pc_hi20(picture_coding_type)
	ld.d	$a0, $a0, %got_pc_lo12(picture_coding_type)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(Coded_Picture_Width)
	ld.d	$a1, $a1, %got_pc_lo12(Coded_Picture_Width)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(Chroma_Width)
	ld.d	$a1, $a1, %got_pc_lo12(Chroma_Width)
	ld.w	$a1, $a1, 0
	ori	$a4, $zero, 3
	bne	$a0, $a4, .LBB0_11
# %bb.3:
	move	$a0, $zero
	b	.LBB0_5
.LBB0_4:
	pcalau12i	$a1, %got_pc_hi20(picture_coding_type)
	ld.d	$a1, $a1, %got_pc_lo12(picture_coding_type)
	ld.w	$a5, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(Coded_Picture_Width)
	ld.d	$a1, $a1, %got_pc_lo12(Coded_Picture_Width)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(Chroma_Width)
	ld.d	$a1, $a1, %got_pc_lo12(Chroma_Width)
	ld.w	$a1, $a1, 0
	bne	$a5, $a4, .LBB0_7
.LBB0_5:
	addi.d	$a3, $a3, -2
	sltui	$a3, $a3, 1
	beqz	$a3, .LBB0_13
# %bb.6:                                # %.split.us.split.us.preheader.i
	pcalau12i	$a3, %got_pc_hi20(auxframe)
	ld.d	$a3, $a3, %got_pc_lo12(auxframe)
	b	.LBB0_10
.LBB0_7:                                # %.split.i
	beqz	$a0, .LBB0_11
# %bb.8:                                # %.split.split.i
	ori	$a4, $zero, 2
	bne	$a3, $a4, .LBB0_15
# %bb.9:                                # %.split.split.split.us.preheader.i
	pcalau12i	$a3, %got_pc_hi20(backward_reference_frame)
	ld.d	$a3, $a3, %got_pc_lo12(backward_reference_frame)
.LBB0_10:                               # %Update_Picture_Buffers.exit
	ld.d	$a4, $a3, 0
	add.d	$a2, $a4, $a2
	pcalau12i	$a4, %got_pc_hi20(current_frame)
	ld.d	$a4, $a4, %got_pc_lo12(current_frame)
	ld.d	$a5, $a3, 8
	ld.d	$a3, $a3, 16
	st.d	$a2, $a4, 0
	add.d	$a2, $a5, $a1
	st.d	$a2, $a4, 8
	add.d	$a1, $a3, $a1
	st.d	$a1, $a4, 16
	b	.LBB0_17
.LBB0_11:                               # %.split.split.us.i
	pcalau12i	$a0, %got_pc_hi20(forward_reference_frame)
	ld.d	$a4, $a0, %got_pc_lo12(forward_reference_frame)
	ld.d	$a0, $a4, 0
	pcalau12i	$a5, %got_pc_hi20(backward_reference_frame)
	ld.d	$a5, $a5, %got_pc_lo12(backward_reference_frame)
	ld.d	$a6, $a5, 0
	st.d	$a6, $a4, 0
	ori	$a4, $zero, 2
	st.d	$a0, $a5, 0
	bne	$a3, $a4, .LBB0_14
# %bb.12:                               # %.split.split.us.split.us.preheader.i
	add.d	$a0, $a0, $a2
	pcalau12i	$a2, %got_pc_hi20(current_frame)
	ld.d	$a2, $a2, %got_pc_lo12(current_frame)
	st.d	$a0, $a2, 0
	pcalau12i	$a0, %got_pc_hi20(forward_reference_frame)
	ld.d	$a3, $a0, %got_pc_lo12(forward_reference_frame)
	ld.d	$a4, $a3, 8
	ld.d	$a5, $a3, 16
	add.d	$a0, $a4, $a1
	st.d	$a0, $a2, 8
	pcalau12i	$a0, %got_pc_hi20(backward_reference_frame)
	ld.d	$a6, $a0, %got_pc_lo12(backward_reference_frame)
	vld	$vr0, $a6, 8
	move	$a0, $zero
	st.d	$a4, $a6, 8
	vst	$vr0, $a3, 8
	st.d	$a5, $a6, 16
	add.d	$a1, $a5, $a1
	st.d	$a1, $a2, 16
	b	.LBB0_17
.LBB0_13:                               # %.split.us.split.preheader.i
	pcalau12i	$a1, %got_pc_hi20(auxframe)
	ld.d	$a1, $a1, %got_pc_lo12(auxframe)
	b	.LBB0_16
.LBB0_14:                               # %.split.split.us.split.preheader.i
	pcalau12i	$a1, %got_pc_hi20(current_frame)
	ld.d	$a1, $a1, %got_pc_lo12(current_frame)
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(forward_reference_frame)
	ld.d	$a2, $a0, %got_pc_lo12(forward_reference_frame)
	ld.d	$a3, $a2, 8
	ld.d	$a4, $a2, 16
	st.d	$a3, $a1, 8
	pcalau12i	$a0, %got_pc_hi20(backward_reference_frame)
	ld.d	$a5, $a0, %got_pc_lo12(backward_reference_frame)
	vld	$vr0, $a5, 8
	move	$a0, $zero
	st.d	$a3, $a5, 8
	vst	$vr0, $a2, 8
	st.d	$a4, $a5, 16
	st.d	$a4, $a1, 16
	b	.LBB0_17
.LBB0_15:                               # %.split.split.split.preheader.i
	pcalau12i	$a1, %got_pc_hi20(backward_reference_frame)
	ld.d	$a1, $a1, %got_pc_lo12(backward_reference_frame)
.LBB0_16:                               # %Update_Picture_Buffers.exit
	ld.d	$a2, $a1, 16
	pcalau12i	$a3, %got_pc_hi20(current_frame)
	ld.d	$a3, $a3, %got_pc_lo12(current_frame)
	vld	$vr0, $a1, 0
	st.d	$a2, $a3, 16
	vst	$vr0, $a3, 0
.LBB0_17:                               # %Update_Picture_Buffers.exit
	pcalau12i	$a1, %got_pc_hi20(Ersatz_Flag)
	ld.d	$a1, $a1, %got_pc_lo12(Ersatz_Flag)
	ld.w	$a1, $a1, 0
	beqz	$a1, .LBB0_19
# %bb.18:
	move	$a0, $s0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Substitute_Frame_Buffer)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
.LBB0_19:
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(base)
	ld.d	$a1, $a1, %got_pc_lo12(base)
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ldptr.w	$a1, $a1, 3160
	beqz	$a1, .LBB0_22
# %bb.20:
	bnez	$a0, .LBB0_22
# %bb.21:
	pcaddu18i	$ra, %call36(Spatial_Prediction)
	jirl	$ra, $ra, 0
.LBB0_22:
	pcalau12i	$a0, %got_pc_hi20(mb_width)
	ld.d	$a0, $a0, %got_pc_lo12(mb_width)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.w	$s0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(mb_height)
	ld.d	$a0, $a0, %got_pc_lo12(mb_height)
	ld.w	$s1, $a0, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$s3, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(ld)
	ld.d	$fp, $a0, %got_pc_lo12(ld)
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %got_pc_hi20(Fault_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Fault_Flag)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	pcaddu18i	$ra, %call36(next_start_code)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.w	$a0, $a0, -432
	addi.w	$a1, $zero, -175
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	bgeu	$a0, $a1, .LBB0_31
.LBB0_23:                               # %._crit_edge.i
	pcalau12i	$a0, %got_pc_hi20(Quiet_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Quiet_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_26
# %bb.24:
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
.LBB0_25:                               # %picture_data.exit
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB0_26:                               # %picture_data.exit
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_206
# %bb.27:
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 3
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_29
# %bb.28:
	ld.w	$a2, $fp, 0
	ori	$a1, $zero, 1
	beqz	$a2, .LBB0_209
.LBB0_29:
	pcalau12i	$a1, %got_pc_hi20(picture_coding_type)
	ld.d	$a1, $a1, %got_pc_lo12(picture_coding_type)
	ld.w	$a1, $a1, 0
	bne	$a1, $a0, .LBB0_207
# %bb.30:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a1, $a0, -1
	pcalau12i	$a0, %got_pc_hi20(auxframe)
	ld.d	$a0, $a0, %got_pc_lo12(auxframe)
	pcaddu18i	$ra, %call36(Write_Frame)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB0_208
	b	.LBB0_210
.LBB0_31:                               # %.lr.ph.i
	mul.d	$a0, $s1, $s0
	addi.d	$a1, $s3, -3
	sltu	$a1, $zero, $a1
	sra.w	$a0, $a0, $a1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$s7, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(enhan)
	ld.d	$a0, $a0, %got_pc_lo12(enhan)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -176
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 176                  # 16-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(concealment_motion_vectors)
	ld.d	$a0, $a0, %got_pc_lo12(concealment_motion_vectors)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$a0, $a0, 2048
	vreplgr2vr.h	$vr0, $a0
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	ori	$a0, $zero, 2047
	vreplgr2vr.h	$vr0, $a0
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_32:                               #   in Loop: Header=BB0_35 Depth=1
	move	$s3, $a0
	pcaddu18i	$ra, %call36(Get_macroblock_address_increment)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	beqz	$a1, .LBB0_40
.LBB0_33:                               #   in Loop: Header=BB0_35 Depth=1
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB0_34:                               # %slice.exit.i
                                        #   in Loop: Header=BB0_35 Depth=1
	st.d	$s0, $fp, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	pcaddu18i	$ra, %call36(next_start_code)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.w	$a0, $a0, -432
	move	$s4, $s0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB0_23
.LBB0_35:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_43 Depth 2
                                        #       Child Loop BB0_107 Depth 3
                                        #       Child Loop BB0_165 Depth 3
                                        #       Child Loop BB0_180 Depth 3
	pcaddu18i	$ra, %call36(Flush_Buffer32)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(slice_header)
	jirl	$ra, $ra, 0
	ldptr.w	$a1, $s4, 3148
	move	$s0, $s4
	bne	$a1, $s7, .LBB0_32
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(next_start_code)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.w	$a0, $a0, -432
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB0_211
# %bb.37:                               #   in Loop: Header=BB0_35 Depth=1
	pcaddu18i	$ra, %call36(Flush_Buffer32)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(slice_header)
	jirl	$ra, $ra, 0
	ldptr.w	$a1, $s0, 3164
	move	$s3, $a0
	beq	$a1, $s7, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_35 Depth=1
	st.d	$s0, $fp, 0
.LBB0_39:                               #   in Loop: Header=BB0_35 Depth=1
	pcaddu18i	$ra, %call36(Get_macroblock_address_increment)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bnez	$a1, .LBB0_33
.LBB0_40:                               #   in Loop: Header=BB0_35 Depth=1
	slli.d	$a1, $s3, 7
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	andi	$a3, $s2, 255
	add.d	$a1, $a3, $a1
	addi.d	$a1, $a1, -1
	mul.d	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	addi.w	$s1, $a0, -1
	st.w	$zero, $sp, 296
	st.d	$zero, $sp, 288
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vst	$vr0, $sp, 256
	vst	$vr0, $sp, 272
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	bge	$s1, $a0, .LBB0_26
# %bb.41:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB0_35 Depth=1
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	move	$s5, $zero
	ori	$a2, $zero, 1
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_42:                               # %motion_compensation.exit.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	ld.w	$a0, $s3, 0
	ori	$a1, $zero, 3148
	ldx.w	$a1, $a3, $a1
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	addi.w	$s1, $s1, 1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a2, $a2, -1
	sltu	$a0, $zero, $a0
	addi.d	$a1, $a1, -3
	sltui	$a1, $a1, 1
	and	$a0, $a0, $a1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	sub.w	$s5, $s5, $a0
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ori	$s7, $zero, 1
	bge	$s1, $a0, .LBB0_26
.LBB0_43:                               # %.preheader.i.i
                                        #   Parent Loop BB0_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_107 Depth 3
                                        #       Child Loop BB0_165 Depth 3
                                        #       Child Loop BB0_180 Depth 3
	st.d	$s0, $fp, 0
	beqz	$a2, .LBB0_52
# %bb.44:                               #   in Loop: Header=BB0_43 Depth=2
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 120                   # 8-byte Folded Spill
	bne	$a2, $s7, .LBB0_62
.LBB0_45:                               #   in Loop: Header=BB0_43 Depth=2
	ldptr.w	$a0, $s0, 3148
	ori	$s1, $zero, 1
	bne	$a0, $s7, .LBB0_47
# %bb.46:                               # %.sink.split.i.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	ldptr.w	$a0, $s0, 3164
	slti	$a0, $a0, 3
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $fp, 0
.LBB0_47:                               #   in Loop: Header=BB0_43 Depth=2
	addi.d	$a0, $sp, 308
	addi.d	$a1, $sp, 228
	addi.d	$a2, $sp, 224
	addi.d	$a3, $sp, 304
	addi.d	$a4, $sp, 324
	addi.d	$a5, $sp, 320
	addi.d	$a6, $sp, 316
	addi.d	$a7, $sp, 312
	addi.d	$t0, $sp, 300
	st.d	$t0, $sp, 0
	pcaddu18i	$ra, %call36(macroblock_modes)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$t1, $zero, 3
	bnez	$a0, .LBB0_205
# %bb.48:                               #   in Loop: Header=BB0_43 Depth=2
	ld.wu	$s2, $sp, 308
	andi	$a0, $s2, 16
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_75
# %bb.49:                               #   in Loop: Header=BB0_43 Depth=2
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ldptr.w	$a2, $a1, 3144
	beqz	$a2, .LBB0_71
# %bb.50:                               #   in Loop: Header=BB0_43 Depth=2
	ldptr.w	$a2, $a1, 3152
	ori	$a3, $zero, 1
	beqz	$a2, .LBB0_72
# %bb.51:                               #   in Loop: Header=BB0_43 Depth=2
	pcalau12i	$a2, %got_pc_hi20(Non_Linear_quantizer_scale)
	ld.d	$a2, $a2, %got_pc_lo12(Non_Linear_quantizer_scale)
	ldx.bu	$a0, $a2, $a0
	b	.LBB0_73
	.p2align	4, , 16
.LBB0_52:                               #   in Loop: Header=BB0_43 Depth=2
	ldptr.w	$a0, $s0, 3148
	bne	$a0, $s7, .LBB0_55
# %bb.53:                               #   in Loop: Header=BB0_43 Depth=2
	ori	$a0, $zero, 3164
	ldx.w	$a0, $s0, $a0
	bne	$a0, $s7, .LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_43 Depth=2
	st.d	$a3, $fp, 0
.LBB0_55:                               #   in Loop: Header=BB0_43 Depth=2
	ori	$a0, $zero, 23
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_34
# %bb.56:                               #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_34
# %bb.57:                               #   in Loop: Header=BB0_43 Depth=2
	ldptr.w	$a0, $s0, 3148
	bne	$a0, $s7, .LBB0_60
# %bb.58:                               #   in Loop: Header=BB0_43 Depth=2
	ori	$a0, $zero, 3164
	ldx.w	$a0, $s0, $a0
	bne	$a0, $s7, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $fp, 0
.LBB0_60:                               #   in Loop: Header=BB0_43 Depth=2
	pcaddu18i	$ra, %call36(Get_macroblock_address_increment)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bnez	$a1, .LBB0_34
# %bb.61:                               #   in Loop: Header=BB0_43 Depth=2
	move	$a2, $a0
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 120                   # 8-byte Folded Spill
	beq	$a2, $s7, .LBB0_45
.LBB0_62:                               #   in Loop: Header=BB0_43 Depth=2
	ldptr.w	$a0, $s0, 3148
	bne	$a0, $s7, .LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_43 Depth=2
	st.d	$s0, $fp, 0
.LBB0_64:                               #   in Loop: Header=BB0_43 Depth=2
	pcalau12i	$a0, %got_pc_hi20(block_count)
	ld.d	$a0, $a0, %got_pc_lo12(block_count)
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB0_66
# %bb.65:                               # %.lr.ph.i34.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a0, $fp, 0
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1129
	slli.d	$a2, $a1, 7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
.LBB0_66:                               # %._crit_edge.i33.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	st.w	$zero, $sp, 296
	st.d	$zero, $sp, 288
	pcalau12i	$a0, %got_pc_hi20(picture_coding_type)
	ld.d	$a0, $a0, %got_pc_lo12(picture_coding_type)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_43 Depth=2
	st.d	$zero, $sp, 272
	st.d	$zero, $sp, 256
.LBB0_68:                               #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	ori	$a1, $zero, 2
	ori	$t1, $zero, 3
	beq	$a2, $t1, .LBB0_70
# %bb.69:                               #   in Loop: Header=BB0_43 Depth=2
	addi.d	$a1, $a2, -2
	sltui	$a1, $a1, 1
	st.w	$a1, $sp, 244
	st.w	$a1, $sp, 240
	ori	$a1, $zero, 1
.LBB0_70:                               # %skipped_macroblock.exit.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	st.w	$a1, $sp, 304
	addi.d	$a0, $a0, -1
	ld.w	$s2, $sp, 308
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 3
	st.w	$a0, $sp, 228
	bstrins.d	$s2, $zero, 0, 0
	st.w	$s2, $sp, 308
	pcalau12i	$a0, %got_pc_hi20(Two_Streams)
	ld.d	$s3, $a0, %got_pc_lo12(Two_Streams)
	ld.w	$a0, $s3, 0
	bnez	$a0, .LBB0_128
	b	.LBB0_172
.LBB0_71:                               #   in Loop: Header=BB0_43 Depth=2
	ori	$a3, $zero, 1
	b	.LBB0_73
.LBB0_72:                               #   in Loop: Header=BB0_43 Depth=2
	slli.d	$a0, $a0, 1
.LBB0_73:                               #   in Loop: Header=BB0_43 Depth=2
	ori	$t1, $zero, 3
	ldptr.w	$a2, $s0, 3148
	stptr.w	$a0, $a1, 3168
	ori	$s1, $zero, 1
	bne	$a2, $a3, .LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_43 Depth=2
	stptr.w	$a0, $s0, 3168
.LBB0_75:                               #   in Loop: Header=BB0_43 Depth=2
	andi	$a0, $s2, 8
	andi	$a1, $s2, 1
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	bnez	$a0, .LBB0_78
# %bb.76:                               #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_82
# %bb.77:                               #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_82
.LBB0_78:                               #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a0, $fp, 0
	ldptr.w	$a0, $a0, 3144
	beqz	$a0, .LBB0_80
# %bb.79:                               #   in Loop: Header=BB0_43 Depth=2
	ld.w	$a4, $sp, 324
	ld.w	$a5, $sp, 320
	pcalau12i	$a0, %got_pc_hi20(f_code)
	ld.d	$a0, $a0, %got_pc_lo12(f_code)
	ld.w	$a1, $a0, 0
	ld.w	$a0, $a0, 4
	ld.w	$a3, $sp, 316
	ld.w	$a2, $sp, 312
	addi.w	$a6, $a1, -1
	addi.w	$a7, $a0, -1
	st.d	$a2, $sp, 8
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 232
	addi.d	$a2, $sp, 240
	st.d	$a3, $sp, 0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(motion_vectors)
	jirl	$ra, $ra, 0
	b	.LBB0_81
.LBB0_80:                               #   in Loop: Header=BB0_43 Depth=2
	pcalau12i	$a0, %got_pc_hi20(forward_f_code)
	ld.d	$a0, $a0, %got_pc_lo12(forward_f_code)
	ld.w	$a0, $a0, 0
	addi.w	$a2, $a0, -1
	pcalau12i	$a0, %got_pc_hi20(full_pel_forward_vector)
	ld.d	$a0, $a0, %got_pc_lo12(full_pel_forward_vector)
	ld.w	$a6, $a0, 0
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 232
	move	$a3, $a2
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(motion_vector)
	jirl	$ra, $ra, 0
.LBB0_81:                               #   in Loop: Header=BB0_43 Depth=2
	ori	$t1, $zero, 3
.LBB0_82:                               #   in Loop: Header=BB0_43 Depth=2
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_205
# %bb.83:                               #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	andi	$a0, $a0, 4
	beqz	$a0, .LBB0_87
# %bb.84:                               #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a0, $fp, 0
	ldptr.w	$a0, $a0, 3144
	beqz	$a0, .LBB0_86
# %bb.85:                               #   in Loop: Header=BB0_43 Depth=2
	ld.w	$a4, $sp, 324
	ld.w	$a5, $sp, 320
	pcalau12i	$a0, %got_pc_hi20(f_code)
	ld.d	$a0, $a0, %got_pc_lo12(f_code)
	ld.w	$a1, $a0, 8
	ld.w	$a0, $a0, 12
	ld.w	$a2, $sp, 312
	addi.w	$a6, $a1, -1
	addi.w	$a7, $a0, -1
	st.d	$a2, $sp, 8
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 232
	addi.d	$a2, $sp, 240
	ori	$a3, $zero, 1
	st.d	$zero, $sp, 0
	pcaddu18i	$ra, %call36(motion_vectors)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$t1, $zero, 3
	beqz	$a0, .LBB0_87
	b	.LBB0_205
.LBB0_86:                               #   in Loop: Header=BB0_43 Depth=2
	pcalau12i	$a0, %got_pc_hi20(backward_f_code)
	ld.d	$a0, $a0, %got_pc_lo12(backward_f_code)
	ld.w	$a0, $a0, 0
	addi.w	$a2, $a0, -1
	pcalau12i	$a0, %got_pc_hi20(full_pel_backward_vector)
	ld.d	$a0, $a0, %got_pc_lo12(full_pel_backward_vector)
	ld.w	$a6, $a0, 0
	addi.d	$a1, $sp, 232
	addi.d	$a0, $sp, 264
	move	$a3, $a2
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(motion_vector)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$t1, $zero, 3
	bnez	$a0, .LBB0_205
	.p2align	4, , 16
.LBB0_87:                               # %.thread.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_90
# %bb.88:                               # %.thread.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_90
# %bb.89:                               #   in Loop: Header=BB0_43 Depth=2
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Flush_Buffer)
	jirl	$ra, $ra, 0
	ori	$t1, $zero, 3
.LBB0_90:                               #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldptr.w	$a0, $a1, 3148
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	bne	$a0, $s1, .LBB0_93
# %bb.91:                               #   in Loop: Header=BB0_43 Depth=2
	ori	$a0, $zero, 3164
	ldx.w	$a0, $a1, $a0
	bne	$a0, $t1, .LBB0_93
# %bb.92:                               #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $fp, 0
.LBB0_93:                               #   in Loop: Header=BB0_43 Depth=2
	andi	$a0, $a2, 2
	bnez	$a0, .LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %got_pc_hi20(block_count)
	ld.d	$a1, $a1, %got_pc_lo12(block_count)
	ld.wu	$a1, $a1, 0
	addi.d	$a2, $zero, -1
	sll.w	$a1, $a2, $a1
	nor	$a1, $a1, $zero
	masknez	$s4, $a1, $a0
	b	.LBB0_100
	.p2align	4, , 16
.LBB0_95:                               #   in Loop: Header=BB0_43 Depth=2
	pcaddu18i	$ra, %call36(Get_coded_block_pattern)
	jirl	$ra, $ra, 0
	ori	$t1, $zero, 3
	move	$s4, $a0
	pcalau12i	$a0, %got_pc_hi20(chroma_format)
	ld.d	$a0, $a0, %got_pc_lo12(chroma_format)
	ld.w	$a0, $a0, 0
	beq	$a0, $t1, .LBB0_98
# %bb.96:                               #   in Loop: Header=BB0_43 Depth=2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_100
# %bb.97:                               #   in Loop: Header=BB0_43 Depth=2
	slli.d	$s0, $s4, 2
	ori	$a0, $zero, 2
	b	.LBB0_99
.LBB0_98:                               #   in Loop: Header=BB0_43 Depth=2
	slli.d	$s0, $s4, 6
	ori	$a0, $zero, 6
.LBB0_99:                               #   in Loop: Header=BB0_43 Depth=2
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ori	$t1, $zero, 3
	or	$s4, $a0, $s0
.LBB0_100:                              #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_205
# %bb.101:                              # %.preheader.i.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	pcalau12i	$a0, %got_pc_hi20(block_count)
	ld.d	$s2, $a0, %got_pc_lo12(block_count)
	ld.w	$s8, $s2, 0
	blez	$s8, .LBB0_116
# %bb.102:                              # %.lr.ph.i.preheader.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	move	$s5, $zero
	move	$s3, $zero
	addi.d	$s6, $zero, -1
	ori	$s7, $zero, 3176
	b	.LBB0_107
	.p2align	4, , 16
.LBB0_103:                              #   in Loop: Header=BB0_107 Depth=3
	addi.d	$a1, $sp, 288
	beqz	$a0, .LBB0_114
# %bb.104:                              #   in Loop: Header=BB0_107 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Decode_MPEG2_Intra_Block)
	jirl	$ra, $ra, 0
.LBB0_105:                              #   in Loop: Header=BB0_107 Depth=3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$t1, $zero, 3
	bnez	$a0, .LBB0_205
.LBB0_106:                              #   in Loop: Header=BB0_107 Depth=3
	ld.w	$s8, $s2, 0
	addi.d	$s3, $s3, 1
	addi.w	$s5, $s5, 1
	addi.d	$s6, $s6, -1
	addi.d	$s7, $s7, 128
	bge	$s3, $s8, .LBB0_116
.LBB0_107:                              # %.lr.ph.i.i.i
                                        #   Parent Loop BB0_35 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ldptr.w	$a0, $s0, 3148
	bne	$a0, $s1, .LBB0_109
# %bb.108:                              #   in Loop: Header=BB0_107 Depth=3
	st.d	$s0, $fp, 0
	b	.LBB0_110
	.p2align	4, , 16
.LBB0_109:                              # %.lr.ph._crit_edge.i.i.i
                                        #   in Loop: Header=BB0_107 Depth=3
	ld.d	$s0, $fp, 0
.LBB0_110:                              #   in Loop: Header=BB0_107 Depth=3
	add.d	$a0, $s0, $s7
	ori	$a2, $zero, 128
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$a0, $s8, $s6
	srl.w	$a0, $s4, $a0
	andi	$a0, $a0, 1
	ori	$t1, $zero, 3
	beqz	$a0, .LBB0_106
# %bb.111:                              #   in Loop: Header=BB0_107 Depth=3
	ori	$a0, $zero, 3144
	ldx.w	$a0, $s0, $a0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bnez	$a1, .LBB0_103
# %bb.112:                              #   in Loop: Header=BB0_107 Depth=3
	beqz	$a0, .LBB0_115
# %bb.113:                              #   in Loop: Header=BB0_107 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Decode_MPEG2_Non_Intra_Block)
	jirl	$ra, $ra, 0
	b	.LBB0_105
.LBB0_114:                              #   in Loop: Header=BB0_107 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Decode_MPEG1_Intra_Block)
	jirl	$ra, $ra, 0
	b	.LBB0_105
.LBB0_115:                              #   in Loop: Header=BB0_107 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Decode_MPEG1_Non_Intra_Block)
	jirl	$ra, $ra, 0
	b	.LBB0_105
	.p2align	4, , 16
.LBB0_116:                              # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	pcalau12i	$a0, %got_pc_hi20(picture_coding_type)
	ld.d	$s0, $a0, %got_pc_lo12(picture_coding_type)
	ld.w	$a0, $s0, 0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB0_118
# %bb.117:                              #   in Loop: Header=BB0_43 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(marker_bit)
	jirl	$ra, $ra, 0
	ori	$t1, $zero, 3
.LBB0_118:                              #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_120
# %bb.119:                              # %.thread87.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	st.w	$zero, $sp, 296
	st.d	$zero, $sp, 288
	andi	$a0, $s2, 9
	ori	$s7, $zero, 1
	beqz	$a0, .LBB0_122
	b	.LBB0_125
.LBB0_120:                              #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_142
# %bb.121:                              #   in Loop: Header=BB0_43 Depth=2
	andi	$a0, $s2, 9
	ori	$s7, $zero, 1
	bnez	$a0, .LBB0_125
.LBB0_122:                              #   in Loop: Header=BB0_43 Depth=2
	ld.w	$a0, $s0, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_125
# %bb.123:                              #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.d	$zero, $sp, 272
	st.d	$zero, $sp, 256
	bne	$a0, $t1, .LBB0_139
# %bb.124:                              #   in Loop: Header=BB0_43 Depth=2
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 304
.LBB0_125:                              #   in Loop: Header=BB0_43 Depth=2
	ld.w	$a0, $sp, 224
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB0_127
.LBB0_126:                              #   in Loop: Header=BB0_43 Depth=2
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vst	$vr0, $sp, 272
	vst	$vr0, $sp, 256
.LBB0_127:                              # %decode_macroblock.exit.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	pcalau12i	$a0, %got_pc_hi20(Two_Streams)
	ld.d	$s3, $a0, %got_pc_lo12(Two_Streams)
	ld.w	$a0, $s3, 0
	beqz	$a0, .LBB0_172
.LBB0_128:                              #   in Loop: Header=BB0_43 Depth=2
	ori	$a0, $zero, 3148
	ldx.w	$a0, $a3, $a0
	bne	$a0, $t1, .LBB0_172
# %bb.129:                              #   in Loop: Header=BB0_43 Depth=2
	st.d	$a3, $fp, 0
	beqz	$s5, .LBB0_136
# %bb.130:                              #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bne	$a0, $s1, .LBB0_154
.LBB0_131:                              #   in Loop: Header=BB0_43 Depth=2
	bne	$s5, $s7, .LBB0_140
.LBB0_132:                              # %.thread55.i.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	addi.d	$a0, $sp, 324
	addi.d	$a1, $sp, 316
	addi.d	$a2, $sp, 316
	addi.d	$a3, $sp, 316
	addi.d	$a4, $sp, 316
	addi.d	$a5, $sp, 316
	addi.d	$a6, $sp, 316
	addi.d	$a7, $sp, 316
	addi.d	$t0, $sp, 320
	st.d	$t0, $sp, 0
	pcaddu18i	$ra, %call36(macroblock_modes)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $sp, 324
	andi	$s0, $a0, 2
	bnez	$s0, .LBB0_150
# %bb.133:                              #   in Loop: Header=BB0_43 Depth=2
	andi	$a0, $a0, 16
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_151
.LBB0_134:                              #   in Loop: Header=BB0_43 Depth=2
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	bnez	$s0, .LBB0_157
.LBB0_135:                              #   in Loop: Header=BB0_43 Depth=2
	move	$s4, $zero
	b	.LBB0_161
.LBB0_136:                              #   in Loop: Header=BB0_43 Depth=2
	ori	$a0, $zero, 23
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_143
# %bb.137:                              #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB0_147
# %bb.138:                              #   in Loop: Header=BB0_43 Depth=2
	pcaddu18i	$ra, %call36(Get_macroblock_address_increment)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	ori	$t1, $zero, 3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$a0, $s1, .LBB0_131
	b	.LBB0_154
.LBB0_139:                              #   in Loop: Header=BB0_43 Depth=2
	st.w	$s7, $sp, 304
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	st.w	$a0, $sp, 240
	ld.w	$a0, $sp, 224
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_126
	b	.LBB0_127
.LBB0_140:                              # %.preheader.i35.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	pcalau12i	$a0, %got_pc_hi20(block_count)
	ld.d	$a0, $a0, %got_pc_lo12(block_count)
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB0_170
# %bb.141:                              # %.lr.ph.i36.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a0, $fp, 0
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1129
	slli.d	$a2, $a1, 7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$t1, $zero, 3
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	b	.LBB0_170
.LBB0_142:                              #   in Loop: Header=BB0_43 Depth=2
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vst	$vr0, $sp, 272
	vst	$vr0, $sp, 256
	andi	$a0, $s2, 9
	ori	$s7, $zero, 1
	beqz	$a0, .LBB0_122
	b	.LBB0_125
.LBB0_143:                              #   in Loop: Header=BB0_43 Depth=2
	pcaddu18i	$ra, %call36(next_start_code)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	addi.w	$a0, $a0, -432
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_153
# %bb.144:                              #   in Loop: Header=BB0_43 Depth=2
	pcalau12i	$a0, %got_pc_hi20(Quiet_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Quiet_Flag)
	ld.w	$a0, $a0, 0
	ori	$t1, $zero, 3
	bnez	$a0, .LBB0_146
# %bb.145:                              #   in Loop: Header=BB0_43 Depth=2
	pcalau12i	$a0, %pc_hi20(.Lstr.6)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.6)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$t1, $zero, 3
.LBB0_146:                              #   in Loop: Header=BB0_43 Depth=2
	move	$s5, $zero
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	b	.LBB0_171
.LBB0_147:                              #   in Loop: Header=BB0_43 Depth=2
	pcalau12i	$a0, %got_pc_hi20(Quiet_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Quiet_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_149
# %bb.148:                              #   in Loop: Header=BB0_43 Depth=2
	pcalau12i	$a0, %pc_hi20(.Lstr.8)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.8)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB0_149:                              #   in Loop: Header=BB0_43 Depth=2
	move	$s5, $zero
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	ori	$t1, $zero, 3
	b	.LBB0_171
.LBB0_150:                              #   in Loop: Header=BB0_43 Depth=2
	ld.w	$a1, $sp, 320
	st.w	$a1, $sp, 300
	andi	$a0, $a0, 16
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_134
.LBB0_151:                              #   in Loop: Header=BB0_43 Depth=2
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ldptr.w	$a2, $a1, 3152
	beqz	$a2, .LBB0_156
# %bb.152:                              #   in Loop: Header=BB0_43 Depth=2
	pcalau12i	$a2, %got_pc_hi20(Non_Linear_quantizer_scale)
	ld.d	$a2, $a2, %got_pc_lo12(Non_Linear_quantizer_scale)
	ldx.bu	$a0, $a2, $a0
	stptr.w	$a0, $a1, 3168
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	beqz	$s0, .LBB0_135
	b	.LBB0_157
.LBB0_153:                              # %.thread.i.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	pcaddu18i	$ra, %call36(Flush_Buffer32)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(slice_header)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcaddu18i	$ra, %call36(Get_macroblock_address_increment)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s4, 7
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	andi	$a3, $s5, 255
	add.d	$a1, $a3, $a1
	addi.d	$a1, $a1, -1
	mul.d	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -1
	ori	$s5, $zero, 1
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	ori	$t1, $zero, 3
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	beq	$a0, $s1, .LBB0_132
.LBB0_154:                              #   in Loop: Header=BB0_43 Depth=2
	pcalau12i	$a0, %got_pc_hi20(Quiet_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Quiet_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_171
# %bb.155:                              #   in Loop: Header=BB0_43 Depth=2
	pcalau12i	$a0, %pc_hi20(.Lstr.7)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.7)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$t1, $zero, 3
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	b	.LBB0_171
.LBB0_156:                              #   in Loop: Header=BB0_43 Depth=2
	slli.d	$a0, $a0, 1
	stptr.w	$a0, $a1, 3168
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	beqz	$s0, .LBB0_135
.LBB0_157:                              #   in Loop: Header=BB0_43 Depth=2
	pcaddu18i	$ra, %call36(Get_coded_block_pattern)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcalau12i	$a0, %got_pc_hi20(chroma_format)
	ld.d	$a0, $a0, %got_pc_lo12(chroma_format)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_160
# %bb.158:                              #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	ori	$t1, $zero, 3
	bne	$a0, $t1, .LBB0_162
# %bb.159:                              #   in Loop: Header=BB0_43 Depth=2
	ori	$a0, $zero, 6
.LBB0_160:                              # %.sink.split.i37.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	sll.w	$s0, $s4, $a0
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	or	$s4, $a0, $s0
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
.LBB0_161:                              #   in Loop: Header=BB0_43 Depth=2
	ori	$t1, $zero, 3
.LBB0_162:                              #   in Loop: Header=BB0_43 Depth=2
	pcalau12i	$a0, %got_pc_hi20(block_count)
	ld.d	$s1, $a0, %got_pc_lo12(block_count)
	ld.w	$s2, $s1, 0
	ori	$s5, $zero, 1
	blez	$s2, .LBB0_168
# %bb.163:                              # %.lr.ph47.preheader.i.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	ld.d	$s6, $fp, 0
	move	$s5, $zero
	move	$s7, $zero
	addi.d	$s8, $zero, -1
	ori	$s0, $zero, 3176
	b	.LBB0_165
	.p2align	4, , 16
.LBB0_164:                              #   in Loop: Header=BB0_165 Depth=3
	addi.d	$s7, $s7, 1
	addi.w	$s5, $s5, 1
	addi.d	$s8, $s8, -1
	addi.d	$s0, $s0, 128
	bge	$s7, $s2, .LBB0_167
.LBB0_165:                              # %.lr.ph47.i.i.i
                                        #   Parent Loop BB0_35 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a0, $s6, $s0
	ori	$a2, $zero, 128
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$a0, $s2, $s8
	srl.w	$a0, $s4, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_164
# %bb.166:                              #   in Loop: Header=BB0_165 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Decode_MPEG2_Non_Intra_Block)
	jirl	$ra, $ra, 0
	ld.d	$s6, $fp, 0
	ld.w	$s2, $s1, 0
	b	.LBB0_164
.LBB0_167:                              #   in Loop: Header=BB0_43 Depth=2
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ori	$s7, $zero, 1
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	ori	$t1, $zero, 3
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	ori	$s5, $zero, 1
	b	.LBB0_169
.LBB0_168:                              #   in Loop: Header=BB0_43 Depth=2
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ori	$s7, $zero, 1
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
.LBB0_169:                              # %.loopexit.i.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
.LBB0_170:                              # %.loopexit.i.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	st.d	$s0, $fp, 0
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
.LBB0_171:                              # %Decode_SNR_Macroblock.exit.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	st.d	$s5, $sp, 120                   # 8-byte Folded Spill
.LBB0_172:                              #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.w	$a1, $sp, 300
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	div.w	$a1, $s1, $a0
	mul.d	$a0, $a1, $a0
	sub.d	$a0, $s1, $a0
	slli.w	$s4, $a0, 4
	andi	$s6, $s2, 1
	slli.w	$s5, $a1, 4
	bnez	$s6, .LBB0_175
# %bb.173:                              #   in Loop: Header=BB0_43 Depth=2
	ld.w	$a7, $sp, 228
	ld.w	$a3, $sp, 304
	addi.w	$a2, $s2, 0
	addi.d	$a4, $sp, 256
	addi.d	$a5, $sp, 240
	addi.d	$a6, $sp, 232
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(form_predictions)
	jirl	$ra, $ra, 0
	ori	$t1, $zero, 3
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	ldptr.w	$a0, $s0, 3148
	beq	$a0, $s7, .LBB0_176
.LBB0_174:                              #   in Loop: Header=BB0_43 Depth=2
	pcalau12i	$a0, %got_pc_hi20(block_count)
	ld.d	$s7, $a0, %got_pc_lo12(block_count)
	ld.w	$a0, $s7, 0
	bgtz	$a0, .LBB0_177
	b	.LBB0_42
	.p2align	4, , 16
.LBB0_175:                              #   in Loop: Header=BB0_43 Depth=2
	ldptr.w	$a0, $s0, 3148
	bne	$a0, $s7, .LBB0_174
.LBB0_176:                              #   in Loop: Header=BB0_43 Depth=2
	st.d	$s0, $fp, 0
	pcalau12i	$a0, %got_pc_hi20(block_count)
	ld.d	$s7, $a0, %got_pc_lo12(block_count)
	ld.w	$a0, $s7, 0
	blez	$a0, .LBB0_42
.LBB0_177:                              # %.lr.ph.i48.i.i
                                        #   in Loop: Header=BB0_43 Depth=2
	move	$s2, $zero
	move	$s1, $zero
	move	$s0, $zero
	ori	$s8, $zero, 3302
	b	.LBB0_180
	.p2align	4, , 16
.LBB0_178:                              # %.preheader69.i.i.i.i
                                        #   in Loop: Header=BB0_180 Depth=3
	ld.b	$a6, $a6, 128
	st.b	$a6, $a5, 0
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -124
	add.d	$a6, $a6, $a7
	ld.b	$a6, $a6, 128
	st.b	$a6, $a5, 1
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -122
	add.d	$a6, $a6, $a7
	ld.b	$a6, $a6, 128
	st.b	$a6, $a5, 2
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -120
	add.d	$a6, $a6, $a7
	ld.b	$a6, $a6, 128
	st.b	$a6, $a5, 3
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -118
	add.d	$a6, $a6, $a7
	ld.b	$a6, $a6, 128
	st.b	$a6, $a5, 4
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -116
	add.d	$a6, $a6, $a7
	ld.b	$a6, $a6, 128
	st.b	$a6, $a5, 5
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -114
	add.d	$a6, $a6, $a7
	ld.b	$a6, $a6, 128
	st.b	$a6, $a5, 6
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -112
	add.d	$a6, $a6, $a7
	ld.b	$a6, $a6, 128
	st.b	$a6, $a5, 7
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -110
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -108
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -106
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -104
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -102
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -100
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -98
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -96
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 15
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -94
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	addi.d	$a4, $a4, 8
	add.d	$a4, $a4, $a3
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -92
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -90
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -88
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -86
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -84
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -82
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -80
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 15
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -78
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	addi.d	$a4, $a4, 8
	add.d	$a4, $a4, $a3
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -76
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -74
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -72
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -70
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -68
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -66
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -64
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 15
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -62
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	addi.d	$a4, $a4, 8
	add.d	$a4, $a4, $a3
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -60
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -58
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -56
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -54
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -52
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -50
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -48
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 15
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -46
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	addi.d	$a4, $a4, 8
	add.d	$a4, $a4, $a3
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -44
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -42
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -40
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -38
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -36
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -34
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -32
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 15
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -30
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	addi.d	$a4, $a4, 8
	add.d	$a4, $a4, $a3
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -28
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -26
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -24
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -22
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -20
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -18
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -16
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 15
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -14
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	addi.d	$a4, $a4, 8
	add.d	$a3, $a4, $a3
	st.b	$a5, $a3, 8
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -12
	add.d	$a4, $a4, $a5
	ld.b	$a4, $a4, 128
	st.b	$a4, $a3, 9
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -10
	add.d	$a4, $a4, $a5
	ld.b	$a4, $a4, 128
	st.b	$a4, $a3, 10
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -8
	add.d	$a4, $a4, $a5
	ld.b	$a4, $a4, 128
	st.b	$a4, $a3, 11
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -6
	add.d	$a4, $a4, $a5
	ld.b	$a4, $a4, 128
	st.b	$a4, $a3, 12
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -4
	add.d	$a4, $a4, $a5
	ld.b	$a4, $a4, 128
	st.b	$a4, $a3, 13
	ld.d	$a4, $a1, 0
	ld.h	$a2, $a2, -2
	add.d	$a2, $a4, $a2
	ld.b	$a2, $a2, 128
	st.b	$a2, $a3, 14
	ld.d	$a1, $a1, 0
	ldx.h	$a0, $a0, $s8
	add.d	$a0, $a1, $a0
	ld.b	$a0, $a0, 128
.LBB0_179:                              # %Add_Block.exit.i.i.i
                                        #   in Loop: Header=BB0_180 Depth=3
	st.b	$a0, $a3, 15
	ld.w	$a0, $s7, 0
	addi.d	$s0, $s0, 1
	addi.d	$s8, $s8, 128
	addi.w	$s1, $s1, 1
	addi.d	$s2, $s2, 4
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	bge	$s0, $a0, .LBB0_42
.LBB0_180:                              #   Parent Loop BB0_35 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s3, 0
	beqz	$a0, .LBB0_183
# %bb.181:                              #   in Loop: Header=BB0_180 Depth=3
	ori	$a0, $zero, 3148
	ldx.w	$a0, $a3, $a0
	bne	$a0, $t1, .LBB0_183
# %bb.182:                              # %vector.body36
                                        #   in Loop: Header=BB0_180 Depth=3
	add.d	$a0, $a3, $s8
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s8
	vld	$vr0, $a0, -126
	vld	$vr1, $a0, -110
	vld	$vr2, $a1, -126
	vld	$vr3, $a1, -110
	vadd.h	$vr0, $vr2, $vr0
	vadd.h	$vr1, $vr3, $vr1
	vld	$vr2, $a0, -94
	vld	$vr3, $a0, -78
	vld	$vr4, $a1, -94
	vld	$vr5, $a1, -78
	vst	$vr0, $a1, -126
	vst	$vr1, $a1, -110
	vadd.h	$vr0, $vr4, $vr2
	vadd.h	$vr1, $vr5, $vr3
	vld	$vr2, $a0, -62
	vld	$vr3, $a0, -46
	vld	$vr4, $a1, -62
	vld	$vr5, $a1, -46
	vst	$vr0, $a1, -94
	vst	$vr1, $a1, -78
	vadd.h	$vr0, $vr4, $vr2
	vadd.h	$vr1, $vr5, $vr3
	vst	$vr0, $a1, -62
	vld	$vr0, $a0, -30
	vld	$vr2, $a1, -30
	vld	$vr3, $a0, -14
	vld	$vr4, $a1, -14
	vst	$vr1, $a1, -46
	vadd.h	$vr0, $vr2, $vr0
	ld.d	$a0, $fp, 0
	vadd.h	$vr1, $vr4, $vr3
	vst	$vr0, $a1, -30
	vst	$vr1, $a1, -14
	b	.LBB0_184
	.p2align	4, , 16
.LBB0_183:                              # %Sum_Block.exit.i.i.i
                                        #   in Loop: Header=BB0_180 Depth=3
	ld.d	$a0, $fp, 0
	ldptr.w	$a1, $a0, 3144
	beqz	$a1, .LBB0_186
.LBB0_184:                              # %Sum_Block.exit.thread.i.i.i
                                        #   in Loop: Header=BB0_180 Depth=3
	add.d	$a1, $a0, $s8
	ld.d	$a2, $a1, -126
	ld.d	$a3, $a1, -118
	vinsgr2vr.d	$vr0, $a2, 0
	vinsgr2vr.d	$vr1, $a3, 0
	vld	$vr7, $sp, 160                  # 16-byte Folded Reload
	vmax.h	$vr0, $vr0, $vr7
	vmax.h	$vr1, $vr1, $vr7
	ld.d	$a2, $a1, -110
	vld	$vr8, $sp, 144                  # 16-byte Folded Reload
	vmin.h	$vr0, $vr0, $vr8
	vmin.h	$vr1, $vr1, $vr8
	vld	$vr6, $sp, 176                  # 16-byte Folded Reload
	vilvl.h	$vr2, $vr6, $vr0
	vinsgr2vr.d	$vr3, $a2, 0
	ld.d	$a2, $a1, -102
	vilvl.h	$vr4, $vr6, $vr1
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $a1, -126
	vinsgr2vr.d	$vr0, $a2, 0
	vmax.h	$vr1, $vr3, $vr7
	vmax.h	$vr0, $vr0, $vr7
	vmin.h	$vr1, $vr1, $vr8
	vmin.h	$vr0, $vr0, $vr8
	ld.d	$a2, $a1, -94
	vilvl.h	$vr3, $vr6, $vr1
	vilvl.h	$vr5, $vr6, $vr0
	vpackev.d	$vr0, $vr0, $vr1
	vinsgr2vr.d	$vr1, $a2, 0
	ld.d	$a2, $a1, -86
	vst	$vr0, $a1, -110
	vadd.w	$vr0, $vr2, $vr3
	vadd.w	$vr2, $vr4, $vr5
	vinsgr2vr.d	$vr3, $a2, 0
	vmax.h	$vr1, $vr1, $vr7
	vmax.h	$vr3, $vr3, $vr7
	vmin.h	$vr1, $vr1, $vr8
	vmin.h	$vr3, $vr3, $vr8
	ld.d	$a2, $a1, -78
	vilvl.h	$vr4, $vr6, $vr1
	vilvl.h	$vr5, $vr6, $vr3
	vpackev.d	$vr1, $vr3, $vr1
	vinsgr2vr.d	$vr3, $a2, 0
	ld.d	$a2, $a1, -70
	vst	$vr1, $a1, -94
	vadd.w	$vr0, $vr0, $vr4
	vadd.w	$vr1, $vr2, $vr5
	vinsgr2vr.d	$vr2, $a2, 0
	vmax.h	$vr3, $vr3, $vr7
	vmax.h	$vr2, $vr2, $vr7
	vmin.h	$vr3, $vr3, $vr8
	vmin.h	$vr2, $vr2, $vr8
	ld.d	$a2, $a1, -62
	vilvl.h	$vr4, $vr6, $vr3
	vilvl.h	$vr5, $vr6, $vr2
	vpackev.d	$vr2, $vr2, $vr3
	vinsgr2vr.d	$vr3, $a2, 0
	ld.d	$a2, $a1, -54
	vst	$vr2, $a1, -78
	vadd.w	$vr0, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr5
	vinsgr2vr.d	$vr2, $a2, 0
	vmax.h	$vr3, $vr3, $vr7
	vmax.h	$vr2, $vr2, $vr7
	vmin.h	$vr3, $vr3, $vr8
	vmin.h	$vr2, $vr2, $vr8
	ld.d	$a2, $a1, -46
	vilvl.h	$vr4, $vr6, $vr3
	vilvl.h	$vr5, $vr6, $vr2
	vpackev.d	$vr2, $vr2, $vr3
	vinsgr2vr.d	$vr3, $a2, 0
	ld.d	$a2, $a1, -38
	vst	$vr2, $a1, -62
	vadd.w	$vr0, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr5
	vinsgr2vr.d	$vr2, $a2, 0
	vmax.h	$vr3, $vr3, $vr7
	vmax.h	$vr2, $vr2, $vr7
	vmin.h	$vr3, $vr3, $vr8
	vmin.h	$vr2, $vr2, $vr8
	ld.d	$a2, $a1, -30
	vilvl.h	$vr4, $vr6, $vr3
	vilvl.h	$vr5, $vr6, $vr2
	vpackev.d	$vr2, $vr2, $vr3
	vinsgr2vr.d	$vr3, $a2, 0
	ld.d	$a2, $a1, -22
	vst	$vr2, $a1, -46
	vadd.w	$vr0, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr5
	vinsgr2vr.d	$vr2, $a2, 0
	vmax.h	$vr3, $vr3, $vr7
	vmax.h	$vr2, $vr2, $vr7
	vmin.h	$vr3, $vr3, $vr8
	vmin.h	$vr2, $vr2, $vr8
	ld.d	$a2, $a1, -14
	vilvl.h	$vr4, $vr6, $vr3
	vilvl.h	$vr5, $vr6, $vr2
	vpackev.d	$vr2, $vr2, $vr3
	vinsgr2vr.d	$vr3, $a2, 0
	ld.d	$a2, $a1, -6
	vst	$vr2, $a1, -30
	vadd.w	$vr0, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr5
	vinsgr2vr.d	$vr2, $a2, 0
	vmax.h	$vr3, $vr3, $vr7
	vmax.h	$vr2, $vr2, $vr7
	vmin.h	$vr3, $vr3, $vr8
	vmin.h	$vr2, $vr2, $vr8
	vilvl.h	$vr4, $vr6, $vr3
	vilvl.h	$vr5, $vr6, $vr2
	vpackev.d	$vr2, $vr2, $vr3
	vadd.w	$vr0, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr5
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a2, $vr0, 0
	andi	$a2, $a2, 1
	vst	$vr2, $a1, -14
	bnez	$a2, .LBB0_186
# %bb.185:                              #   in Loop: Header=BB0_180 Depth=3
	ldx.h	$a1, $a0, $s8
	xori	$a1, $a1, 1
	stx.h	$a1, $a0, $s8
.LBB0_186:                              # %Saturate.exit.i.i.i
                                        #   in Loop: Header=BB0_180 Depth=3
	pcalau12i	$a1, %got_pc_hi20(Reference_IDCT_Flag)
	ld.d	$a1, $a1, %got_pc_lo12(Reference_IDCT_Flag)
	ld.w	$a1, $a1, 0
	add.d	$a0, $a0, $s8
	addi.d	$a0, $a0, -126
	beqz	$a1, .LBB0_191
# %bb.187:                              #   in Loop: Header=BB0_180 Depth=3
	pcaddu18i	$ra, %call36(Reference_IDCT)
	jirl	$ra, $ra, 0
	andi	$a2, $s1, 1
	ori	$t1, $zero, 3
	bltu	$t1, $s0, .LBB0_192
.LBB0_188:                              #   in Loop: Header=BB0_180 Depth=3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a3, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(current_frame)
	ld.d	$a0, $a0, %got_pc_lo12(current_frame)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(Coded_Picture_Width)
	ld.d	$a1, $a1, %got_pc_lo12(Coded_Picture_Width)
	ld.w	$a1, $a1, 0
	bne	$a3, $t1, .LBB0_197
# %bb.189:                              #   in Loop: Header=BB0_180 Depth=3
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	beqz	$a3, .LBB0_204
# %bb.190:                              #   in Loop: Header=BB0_180 Depth=3
	bstrpick.d	$a3, $s1, 31, 1
	or	$a3, $a3, $s5
	mul.w	$a3, $a1, $a3
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $s4
	b	.LBB0_196
	.p2align	4, , 16
.LBB0_191:                              #   in Loop: Header=BB0_180 Depth=3
	pcaddu18i	$ra, %call36(Fast_IDCT)
	jirl	$ra, $ra, 0
	andi	$a2, $s1, 1
	ori	$t1, $zero, 3
	bgeu	$t1, $s0, .LBB0_188
.LBB0_192:                              #   in Loop: Header=BB0_180 Depth=3
	addi.d	$a1, $a2, 1
	pcalau12i	$a0, %got_pc_hi20(chroma_format)
	ld.d	$a0, $a0, %got_pc_lo12(chroma_format)
	ld.w	$a4, $a0, 0
	addi.d	$a0, $a4, -3
	sltu	$a0, $zero, $a0
	sra.w	$a0, $s4, $a0
	addi.d	$a2, $a4, -1
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a5, $a3, 0
	sltui	$a2, $a2, 1
	sra.w	$a3, $s5, $a2
	slli.d	$a1, $a1, 3
	andi	$a2, $s0, 8
	bne	$a5, $t1, .LBB0_198
# %bb.193:                              #   in Loop: Header=BB0_180 Depth=3
	pcalau12i	$a5, %got_pc_hi20(current_frame)
	ld.d	$a5, $a5, %got_pc_lo12(current_frame)
	ldx.d	$a5, $a5, $a1
	pcalau12i	$a1, %got_pc_hi20(Chroma_Width)
	ld.d	$a1, $a1, %got_pc_lo12(Chroma_Width)
	ld.w	$a1, $a1, 0
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	beqz	$a6, .LBB0_199
# %bb.194:                              #   in Loop: Header=BB0_180 Depth=3
	ori	$a6, $zero, 1
	beq	$a4, $a6, .LBB0_199
# %bb.195:                              #   in Loop: Header=BB0_180 Depth=3
	bstrpick.d	$a3, $s1, 1, 1
	or	$a3, $a3, $s5
	mul.w	$a3, $a1, $a3
	add.d	$a3, $a5, $a3
	add.d	$a0, $a3, $a0
.LBB0_196:                              #   in Loop: Header=BB0_180 Depth=3
	add.d	$a5, $a0, $a2
	slli.w	$a1, $a1, 1
	b	.LBB0_202
	.p2align	4, , 16
.LBB0_197:                              #   in Loop: Header=BB0_180 Depth=3
	slli.w	$a1, $a1, 1
	andi	$a3, $s2, 8
	or	$a3, $a3, $s5
	mul.w	$a3, $a1, $a3
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $s4
	alsl.d	$a5, $a2, $a0, 3
	b	.LBB0_202
	.p2align	4, , 16
.LBB0_198:                              #   in Loop: Header=BB0_180 Depth=3
	pcalau12i	$a4, %got_pc_hi20(current_frame)
	ld.d	$a4, $a4, %got_pc_lo12(current_frame)
	ldx.d	$a4, $a4, $a1
	pcalau12i	$a1, %got_pc_hi20(Chroma_Width)
	ld.d	$a1, $a1, %got_pc_lo12(Chroma_Width)
	ld.w	$a1, $a1, 0
	slli.w	$a1, $a1, 1
	andi	$a5, $s2, 8
	add.d	$a3, $a3, $a5
	mul.w	$a3, $a1, $a3
	add.d	$a3, $a4, $a3
	b	.LBB0_200
.LBB0_199:                              #   in Loop: Header=BB0_180 Depth=3
	andi	$a4, $s2, 8
	add.d	$a3, $a3, $a4
	mul.w	$a3, $a1, $a3
	add.d	$a3, $a5, $a3
.LBB0_200:                              #   in Loop: Header=BB0_180 Depth=3
	add.d	$a0, $a3, $a0
.LBB0_201:                              #   in Loop: Header=BB0_180 Depth=3
	add.d	$a5, $a0, $a2
.LBB0_202:                              #   in Loop: Header=BB0_180 Depth=3
	ld.d	$a0, $fp, 0
	addi.d	$a3, $a1, -8
	add.d	$a2, $a0, $s8
	pcalau12i	$a1, %got_pc_hi20(Clip)
	ld.d	$a1, $a1, %got_pc_lo12(Clip)
	ld.d	$a4, $a1, 0
	ld.h	$a6, $a2, -126
	add.d	$a6, $a4, $a6
	add.d	$a4, $a5, $a3
	bnez	$s6, .LBB0_178
# %bb.203:                              # %.preheader70.i.preheader.i.i.i
                                        #   in Loop: Header=BB0_180 Depth=3
	ld.bu	$a7, $a5, 0
	ldx.b	$a6, $a6, $a7
	st.b	$a6, $a5, 0
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -124
	ld.bu	$t0, $a5, 1
	add.d	$a6, $a6, $a7
	ldx.b	$a6, $a6, $t0
	st.b	$a6, $a5, 1
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -122
	ld.bu	$t0, $a5, 2
	add.d	$a6, $a6, $a7
	ldx.b	$a6, $a6, $t0
	st.b	$a6, $a5, 2
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -120
	ld.bu	$t0, $a5, 3
	add.d	$a6, $a6, $a7
	ldx.b	$a6, $a6, $t0
	st.b	$a6, $a5, 3
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -118
	ld.bu	$t0, $a5, 4
	add.d	$a6, $a6, $a7
	ldx.b	$a6, $a6, $t0
	st.b	$a6, $a5, 4
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -116
	ld.bu	$t0, $a5, 5
	add.d	$a6, $a6, $a7
	ldx.b	$a6, $a6, $t0
	st.b	$a6, $a5, 5
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -114
	ld.bu	$t0, $a5, 6
	add.d	$a6, $a6, $a7
	ldx.b	$a6, $a6, $t0
	st.b	$a6, $a5, 6
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -112
	ld.bu	$t0, $a5, 7
	add.d	$a6, $a6, $a7
	ldx.b	$a6, $a6, $t0
	st.b	$a6, $a5, 7
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -110
	ld.bu	$a7, $a4, 8
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -108
	ld.bu	$a7, $a4, 9
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -106
	ld.bu	$a7, $a4, 10
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -104
	ld.bu	$a7, $a4, 11
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -102
	ld.bu	$a7, $a4, 12
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -100
	ld.bu	$a7, $a4, 13
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -98
	ld.bu	$a7, $a4, 14
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -96
	ld.bu	$a7, $a4, 15
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	addi.d	$a6, $a4, 8
	st.b	$a5, $a4, 15
	add.d	$a4, $a6, $a3
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -94
	ld.bu	$a7, $a4, 8
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -92
	ld.bu	$a7, $a4, 9
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -90
	ld.bu	$a7, $a4, 10
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -88
	ld.bu	$a7, $a4, 11
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -86
	ld.bu	$a7, $a4, 12
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -84
	ld.bu	$a7, $a4, 13
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -82
	ld.bu	$a7, $a4, 14
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -80
	ld.bu	$a7, $a4, 15
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	addi.d	$a6, $a4, 8
	st.b	$a5, $a4, 15
	add.d	$a4, $a6, $a3
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -78
	ld.bu	$a7, $a4, 8
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -76
	ld.bu	$a7, $a4, 9
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -74
	ld.bu	$a7, $a4, 10
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -72
	ld.bu	$a7, $a4, 11
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -70
	ld.bu	$a7, $a4, 12
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -68
	ld.bu	$a7, $a4, 13
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -66
	ld.bu	$a7, $a4, 14
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -64
	ld.bu	$a7, $a4, 15
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	addi.d	$a6, $a4, 8
	st.b	$a5, $a4, 15
	add.d	$a4, $a6, $a3
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -62
	ld.bu	$a7, $a4, 8
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -60
	ld.bu	$a7, $a4, 9
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -58
	ld.bu	$a7, $a4, 10
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -56
	ld.bu	$a7, $a4, 11
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -54
	ld.bu	$a7, $a4, 12
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -52
	ld.bu	$a7, $a4, 13
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -50
	ld.bu	$a7, $a4, 14
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -48
	ld.bu	$a7, $a4, 15
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	addi.d	$a6, $a4, 8
	st.b	$a5, $a4, 15
	add.d	$a4, $a6, $a3
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -46
	ld.bu	$a7, $a4, 8
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -44
	ld.bu	$a7, $a4, 9
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -42
	ld.bu	$a7, $a4, 10
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -40
	ld.bu	$a7, $a4, 11
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -38
	ld.bu	$a7, $a4, 12
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -36
	ld.bu	$a7, $a4, 13
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -34
	ld.bu	$a7, $a4, 14
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -32
	ld.bu	$a7, $a4, 15
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	addi.d	$a6, $a4, 8
	st.b	$a5, $a4, 15
	add.d	$a4, $a6, $a3
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -30
	ld.bu	$a7, $a4, 8
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -28
	ld.bu	$a7, $a4, 9
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -26
	ld.bu	$a7, $a4, 10
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -24
	ld.bu	$a7, $a4, 11
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -22
	ld.bu	$a7, $a4, 12
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -20
	ld.bu	$a7, $a4, 13
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -18
	ld.bu	$a7, $a4, 14
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -16
	ld.bu	$a7, $a4, 15
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	addi.d	$a6, $a4, 8
	st.b	$a5, $a4, 15
	add.d	$a3, $a6, $a3
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -14
	ld.bu	$a6, $a3, 8
	add.d	$a4, $a4, $a5
	ldx.b	$a4, $a4, $a6
	st.b	$a4, $a3, 8
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -12
	ld.bu	$a6, $a3, 9
	add.d	$a4, $a4, $a5
	ldx.b	$a4, $a4, $a6
	st.b	$a4, $a3, 9
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -10
	ld.bu	$a6, $a3, 10
	add.d	$a4, $a4, $a5
	ldx.b	$a4, $a4, $a6
	st.b	$a4, $a3, 10
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -8
	ld.bu	$a6, $a3, 11
	add.d	$a4, $a4, $a5
	ldx.b	$a4, $a4, $a6
	st.b	$a4, $a3, 11
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -6
	ld.bu	$a6, $a3, 12
	add.d	$a4, $a4, $a5
	ldx.b	$a4, $a4, $a6
	st.b	$a4, $a3, 12
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -4
	ld.bu	$a6, $a3, 13
	add.d	$a4, $a4, $a5
	ldx.b	$a4, $a4, $a6
	st.b	$a4, $a3, 13
	ld.d	$a4, $a1, 0
	ld.h	$a2, $a2, -2
	ld.bu	$a5, $a3, 14
	add.d	$a2, $a4, $a2
	ldx.b	$a2, $a2, $a5
	st.b	$a2, $a3, 14
	ld.d	$a1, $a1, 0
	ldx.h	$a0, $a0, $s8
	ld.bu	$a2, $a3, 15
	add.d	$a0, $a1, $a0
	ldx.b	$a0, $a0, $a2
	b	.LBB0_179
.LBB0_204:                              #   in Loop: Header=BB0_180 Depth=3
	andi	$a3, $s2, 8
	or	$a3, $a3, $s5
	mul.w	$a3, $a1, $a3
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $s4
	b	.LBB0_201
	.p2align	4, , 16
.LBB0_205:                              # %decode_macroblock.exit.thread.i.i
                                        #   in Loop: Header=BB0_35 Depth=1
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ori	$s7, $zero, 1
	b	.LBB0_34
.LBB0_206:
	pcalau12i	$a0, %got_pc_hi20(progressive_frame)
	ld.d	$a0, $a0, %got_pc_lo12(progressive_frame)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(frame_reorder.Oldref_progressive_frame)
	st.w	$a0, $a1, %pc_lo12(frame_reorder.Oldref_progressive_frame)
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB0_208
	b	.LBB0_210
.LBB0_207:
	pcalau12i	$a0, %got_pc_hi20(progressive_frame)
	ld.d	$fp, $a0, %got_pc_lo12(progressive_frame)
	ld.w	$a0, $fp, 0
	pcalau12i	$s0, %pc_hi20(frame_reorder.Oldref_progressive_frame)
	ld.w	$a1, $s0, %pc_lo12(frame_reorder.Oldref_progressive_frame)
	pcalau12i	$s1, %pc_hi20(frame_reorder.Newref_progressive_frame)
	st.w	$a0, $s1, %pc_lo12(frame_reorder.Newref_progressive_frame)
	st.w	$a1, $fp, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a1, $a0, -1
	pcalau12i	$a0, %got_pc_hi20(forward_reference_frame)
	ld.d	$a0, $a0, %got_pc_lo12(forward_reference_frame)
	pcaddu18i	$ra, %call36(Write_Frame)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(frame_reorder.Newref_progressive_frame)
	st.w	$a0, $fp, 0
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $s0, %pc_lo12(frame_reorder.Oldref_progressive_frame)
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_210
.LBB0_208:                              # %frame_reorder.exit.frame_reorder.exit.thread_crit_edge
	ld.w	$a0, $fp, 0
	sltui	$a1, $a0, 1
.LBB0_209:                              # %frame_reorder.exit.thread
	st.w	$a1, $fp, 0
.LBB0_210:
	ld.d	$s8, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 416
	ret
.LBB0_211:
	pcalau12i	$a0, %got_pc_hi20(Quiet_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Quiet_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_26
# %bb.212:
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	b	.LBB0_25
.Lfunc_end0:
	.size	Decode_Picture, .Lfunc_end0-Decode_Picture
                                        # -- End function
	.globl	Output_Last_Frame_of_Sequence   # -- Begin function Output_Last_Frame_of_Sequence
	.p2align	5
	.type	Output_Last_Frame_of_Sequence,@function
Output_Last_Frame_of_Sequence:          # @Output_Last_Frame_of_Sequence
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(Second_Field)
	ld.d	$a1, $a1, %got_pc_lo12(Second_Field)
	ld.w	$a1, $a1, 0
	beqz	$a1, .LBB1_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB1_2:
	addi.w	$a1, $a0, -1
	pcalau12i	$a0, %got_pc_hi20(backward_reference_frame)
	ld.d	$a0, $a0, %got_pc_lo12(backward_reference_frame)
	pcaddu18i	$t8, %call36(Write_Frame)
	jr	$t8
.Lfunc_end1:
	.size	Output_Last_Frame_of_Sequence, .Lfunc_end1-Output_Last_Frame_of_Sequence
                                        # -- End function
	.p2align	5                               # -- Begin function macroblock_modes
	.type	macroblock_modes,@function
macroblock_modes:                       # @macroblock_modes
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
	move	$fp, $a7
	move	$s0, $a6
	move	$s1, $a5
	move	$s2, $a4
	move	$s3, $a3
	move	$s4, $a2
	move	$s5, $a1
	move	$s6, $a0
	pcaddu18i	$ra, %call36(Get_macroblock_type)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	pcalau12i	$a0, %got_pc_hi20(Fault_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Fault_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB2_21
# %bb.1:
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	andi	$a0, $s7, 32
	bnez	$a0, .LBB2_3
# %bb.2:
	srli.d	$a0, $s7, 3
	andi	$fp, $a0, 8
	b	.LBB2_6
.LBB2_3:
	pcalau12i	$a0, %got_pc_hi20(spatial_temporal_weight_code_table_index)
	ld.d	$fp, $a0, %got_pc_lo12(spatial_temporal_weight_code_table_index)
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB2_5
# %bb.4:
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	pcalau12i	$a2, %pc_hi20(macroblock_modes.stwc_table)
	addi.d	$a2, $a2, %pc_lo12(macroblock_modes.stwc_table)
	alsl.d	$a1, $a1, $a2, 2
	add.d	$a0, $a1, $a0
	ld.bu	$fp, $a0, -4
	b	.LBB2_6
.LBB2_5:
	ori	$fp, $zero, 4
.LBB2_6:
	pcalau12i	$a0, %pc_hi20(macroblock_modes.stwclass_table)
	addi.d	$a0, $a0, %pc_lo12(macroblock_modes.stwclass_table)
	ldx.bu	$a4, $a0, $fp
	andi	$a0, $s7, 12
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	beqz	$a0, .LBB2_10
# %bb.7:
	pcalau12i	$a0, %got_pc_hi20(picture_structure)
	ld.d	$a0, $a0, %got_pc_lo12(picture_structure)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB2_9
# %bb.8:
	pcalau12i	$a0, %got_pc_hi20(frame_pred_frame_dct)
	ld.d	$a0, $a0, %got_pc_lo12(frame_pred_frame_dct)
	ld.w	$a0, $a0, 0
	ori	$s8, $zero, 2
	bnez	$a0, .LBB2_15
.LBB2_9:                                # %thread-pre-split.sink.split
	ori	$a0, $zero, 2
	move	$s8, $a4
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	move	$a4, $s8
	move	$s8, $a0
	b	.LBB2_14
.LBB2_10:
	andi	$a0, $s7, 1
	move	$s8, $zero
	beqz	$a0, .LBB2_14
# %bb.11:
	pcalau12i	$a0, %got_pc_hi20(concealment_motion_vectors)
	ld.d	$a0, $a0, %got_pc_lo12(concealment_motion_vectors)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_14
# %bb.12:
	pcalau12i	$a0, %got_pc_hi20(picture_structure)
	ld.d	$a0, $a0, %got_pc_lo12(picture_structure)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $a0, -3
	sltui	$a1, $a1, 1
	addi.d	$s8, $a1, 1
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB2_15
.LBB2_13:
	move	$a1, $zero
	move	$s0, $zero
	addi.d	$a0, $s8, -2
	sltui	$a0, $a0, 1
	addi.d	$s5, $a0, 1
	ori	$a2, $zero, 1
	b	.LBB2_16
.LBB2_14:                               # %thread-pre-split
	pcalau12i	$a0, %got_pc_hi20(picture_structure)
	ld.d	$a0, $a0, %got_pc_lo12(picture_structure)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB2_13
.LBB2_15:                               # %.thread
	move	$a2, $zero
	addi.d	$a0, $s8, -1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 1
	sll.d	$a3, $a1, $fp
	andi	$a3, $a3, 27
	sltu	$a3, $zero, $a3
	and	$a0, $a0, $a3
	addi.d	$s5, $a0, 1
	addi.d	$a0, $s8, -2
	sltui	$s0, $a0, 1
.LBB2_16:
	move	$a0, $zero
	ld.d	$s2, $sp, 160
	addi.d	$a3, $s8, -3
	sltui	$s3, $a3, 1
	sltui	$a3, $s0, 1
	and	$s4, $a1, $a3
	bnez	$a2, .LBB2_20
# %bb.17:
	pcalau12i	$a1, %got_pc_hi20(frame_pred_frame_dct)
	ld.d	$a1, $a1, %got_pc_lo12(frame_pred_frame_dct)
	ld.w	$a1, $a1, 0
	bnez	$a1, .LBB2_20
# %bb.18:
	andi	$a1, $s7, 3
	beqz	$a1, .LBB2_20
# %bb.19:
	ori	$a0, $zero, 1
	move	$s1, $fp
	move	$fp, $a4
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	move	$a4, $fp
	move	$fp, $s1
.LBB2_20:
	st.w	$s7, $s6, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$fp, $a1, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.w	$a4, $a1, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.w	$s8, $a1, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.w	$s5, $a1, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$s0, $a1, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.w	$s3, $a1, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.w	$s4, $a1, 0
	st.w	$a0, $s2, 0
.LBB2_21:
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
.Lfunc_end2:
	.size	macroblock_modes, .Lfunc_end2-macroblock_modes
                                        # -- End function
	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"D picture end_of_macroblock bit"
	.size	.L.str.6, 32

	.type	macroblock_modes.stwc_table,@object # @macroblock_modes.stwc_table
	.section	.rodata,"a",@progbits
macroblock_modes.stwc_table:
	.ascii	"\006\003\007\004"
	.ascii	"\002\001\005\004"
	.ascii	"\002\005\007\004"
	.size	macroblock_modes.stwc_table, 12

	.type	macroblock_modes.stwclass_table,@object # @macroblock_modes.stwclass_table
macroblock_modes.stwclass_table:
	.ascii	"\000\001\002\001\001\002\003\003\004"
	.size	macroblock_modes.stwclass_table, 9

	.type	frame_reorder.Oldref_progressive_frame,@object # @frame_reorder.Oldref_progressive_frame
	.local	frame_reorder.Oldref_progressive_frame
	.comm	frame_reorder.Oldref_progressive_frame,4,4
	.type	frame_reorder.Newref_progressive_frame,@object # @frame_reorder.Newref_progressive_frame
	.local	frame_reorder.Newref_progressive_frame
	.comm	frame_reorder.Newref_progressive_frame,4,4
	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"odd number of field pictures"
	.size	.Lstr, 29

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"last frame incomplete, not stored"
	.size	.Lstr.1, 34

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"start_of_slice(): MBAinc unsuccessful"
	.size	.Lstr.3, 38

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"DP: Premature end of picture"
	.size	.Lstr.4, 29

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"start_of_slice(): Premature end of picture"
	.size	.Lstr.5, 43

	.type	.Lstr.6,@object                 # @str.6
.Lstr.6:
	.asciz	"SNR: Premature end of picture"
	.size	.Lstr.6, 30

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"Cant't synchronize streams"
	.size	.Lstr.7, 27

	.type	.Lstr.8,@object                 # @str.8
.Lstr.8:
	.asciz	"Too many macroblocks in picture"
	.size	.Lstr.8, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base
	.addrsig_sym backward_reference_frame
	.addrsig_sym enhan
	.addrsig_sym auxframe
	.addrsig_sym forward_reference_frame
