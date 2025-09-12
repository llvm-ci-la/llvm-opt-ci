	.file	"lencod.c"
	.text
	.globl	init_stats                      # -- Begin function init_stats
	.p2align	5
	.type	init_stats,@function
init_stats:                             # @init_stats
# %bb.0:
	pcalau12i	$a0, %pc_hi20(input)
	ld.d	$a0, $a0, %pc_lo12(input)
	ori	$a1, $zero, 2096
	ldx.w	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(stats)
	ld.d	$a1, $a1, %pc_lo12(stats)
	st.w	$a0, $a1, 700
	pcalau12i	$a0, %pc_hi20(snr)
	ld.d	$a0, $a0, %pc_lo12(snr)
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 728
	st.d	$zero, $a1, 720
	vst	$vr0, $a0, 8
	st.d	$zero, $a0, 0
	vst	$vr0, $a0, 108
	vst	$vr0, $a0, 92
	st.d	$zero, $a0, 84
	ret
.Lfunc_end0:
	.size	init_stats, .Lfunc_end0-init_stats
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	fst.d	$fs0, $sp, 176                  # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(giRDOpt_B8OnlyFlag)
	st.w	$zero, $a2, %pc_lo12(giRDOpt_B8OnlyFlag)
	addi.w	$a2, $zero, -1
	pcalau12i	$a3, %pc_hi20(p_in)
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	lu32i.d	$a2, 0
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	st.w	$a2, $a3, %pc_lo12(p_in)
	pcalau12i	$s2, %pc_hi20(p_dec)
	st.w	$a2, $s2, %pc_lo12(p_dec)
	pcalau12i	$a2, %pc_hi20(p_trace)
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	st.d	$zero, $a2, %pc_lo12(p_trace)
	pcalau12i	$a2, %pc_hi20(p_log)
	st.d	$zero, $a2, %pc_lo12(p_log)
	pcalau12i	$a2, %pc_hi20(p_stat)
	st.d	$zero, $a2, %pc_lo12(p_stat)
	pcalau12i	$a2, %pc_hi20(frame_statistic_start)
	ori	$fp, $zero, 1
	st.w	$fp, $a2, %pc_lo12(frame_statistic_start)
	pcaddu18i	$ra, %call36(Configure)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Init_QMatrix)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Init_QOffsetMatrix)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(AllocNalPayloadBuffer)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(input)
	ld.d	$a1, $s0, %pc_lo12(input)
	lu12i.w	$s8, 1
	ori	$a0, $s8, 992
	ldx.w	$a2, $a1, $a0
	pcalau12i	$s5, %pc_hi20(img)
	ld.d	$a0, $s5, %pc_lo12(img)
	ldptr.w	$a3, $a1, 2964
	stptr.w	$a2, $a0, 15272
	stptr.w	$zero, $a0, 15276
	stptr.w	$fp, $a0, 15288
	bne	$a3, $fp, .LBB1_2
# %bb.1:
	move	$a2, $zero
	ori	$a3, $zero, 2
	stptr.w	$a3, $a0, 15292
	ldptr.w	$a3, $a1, 4704
	stptr.w	$a2, $a0, 15280
	bnez	$a3, .LBB1_4
	b	.LBB1_3
.LBB1_2:
	ori	$a2, $zero, 2096
	ldx.w	$a3, $a1, $a2
	slli.d	$a2, $a3, 1
	sub.d	$a2, $zero, $a2
	ori	$a4, $zero, 2
	alsl.w	$a3, $a3, $a4, 1
	stptr.w	$a3, $a0, 15292
	ldptr.w	$a3, $a1, 4704
	stptr.w	$a2, $a0, 15280
	bnez	$a3, .LBB1_4
.LBB1_3:
	ldptr.w	$a1, $a1, 4708
	beqz	$a1, .LBB1_152
.LBB1_4:                                # %.thread1.i
	ori	$a1, $zero, 1
	stptr.w	$a1, $a0, 15284
.LBB1_5:                                # %init_poc.exit
	stptr.w	$a1, $a0, 15356
	stptr.w	$a1, $a0, 15300
	pcaddu18i	$ra, %call36(GenerateParameterSets)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(SetLevelIndices)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(init_img)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 824
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB1_7
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB1_7:                                # %malloc_picture.exit
	ld.d	$a0, $s0, %pc_lo12(input)
	ldptr.w	$a1, $a0, 2940
	pcalau12i	$a2, %pc_hi20(frame_pic_1)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $a2, %pc_lo12(frame_pic_1)
	pcalau12i	$s3, %pc_hi20(frame_pic_2)
	pcalau12i	$s1, %pc_hi20(frame_pic_3)
	beqz	$a1, .LBB1_13
# %bb.8:
	ori	$a0, $zero, 1
	ori	$a1, $zero, 824
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB1_10
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB1_10:                               # %malloc_picture.exit82
	st.d	$fp, $s3, %pc_lo12(frame_pic_2)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 824
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB1_12
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB1_12:                               # %malloc_picture.exit83
	ld.d	$a0, $s0, %pc_lo12(input)
	st.d	$fp, $s1, %pc_lo12(frame_pic_3)
.LBB1_13:
	ldptr.w	$a1, $a0, 2148
	pcalau12i	$s4, %pc_hi20(frame_pic_si)
	beqz	$a1, .LBB1_17
# %bb.14:
	pcalau12i	$a0, %pc_hi20(si_frame_indicator)
	st.w	$zero, $a0, %pc_lo12(si_frame_indicator)
	pcalau12i	$a0, %pc_hi20(number_sp2_frames)
	st.w	$zero, $a0, %pc_lo12(number_sp2_frames)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 824
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB1_16
# %bb.15:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB1_16:                               # %malloc_picture.exit84
	ld.d	$a0, $s5, %pc_lo12(img)
	ld.w	$a1, $a0, 68
	ld.w	$a2, $a0, 52
	st.d	$fp, $s4, %pc_lo12(frame_pic_si)
	pcalau12i	$a0, %pc_hi20(lrec)
	addi.d	$a0, $a0, %pc_lo12(lrec)
	pcaddu18i	$ra, %call36(get_mem2Dint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(img)
	ld.w	$a2, $a0, 68
	ld.w	$a3, $a0, 52
	pcalau12i	$a0, %pc_hi20(lrec_uv)
	addi.d	$a0, $a0, %pc_lo12(lrec_uv)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(get_mem3Dint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(input)
.LBB1_17:
	ldptr.w	$a0, $a0, 4704
	pcalau12i	$s7, %pc_hi20(top_pic)
	pcalau12i	$s6, %pc_hi20(bottom_pic)
	beqz	$a0, .LBB1_23
# %bb.18:
	ori	$a0, $zero, 1
	ori	$a1, $zero, 824
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB1_20
# %bb.19:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB1_20:                               # %malloc_picture.exit85
	st.d	$fp, $s7, %pc_lo12(top_pic)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 824
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB1_22
# %bb.21:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB1_22:                               # %malloc_picture.exit86
	st.d	$fp, $s6, %pc_lo12(bottom_pic)
.LBB1_23:
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(init_rdopt)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, %pc_lo12(input)
	ori	$fp, $zero, 2096
	ldx.w	$a0, $s1, $fp
	ld.w	$a1, $s1, 8
	addi.d	$a0, $a0, 1
	mul.w	$a0, $a0, $a1
	slli.d	$a0, $a0, 3
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ldptr.w	$a1, $s1, 2968
	pcalau12i	$a2, %pc_hi20(Bit_Buffer)
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(Bit_Buffer)
	beqz	$a1, .LBB1_28
# %bb.24:
	pcaddu18i	$ra, %call36(init_gop_structure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(input)
	ldptr.w	$a1, $a0, 2096
	beqz	$a1, .LBB1_27
# %bb.25:
	ldptr.w	$a0, $a0, 2968
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB1_27
# %bb.26:
	pcaddu18i	$ra, %call36(interpret_gop_structure)
	jirl	$ra, $ra, 0
	b	.LBB1_28
.LBB1_27:
	pcaddu18i	$ra, %call36(create_hierarchy)
	jirl	$ra, $ra, 0
.LBB1_28:
	pcalau12i	$a0, %got_pc_hi20(dpb)
	ld.d	$a0, $a0, %got_pc_lo12(dpb)
	st.w	$zero, $a0, 48
	pcaddu18i	$ra, %call36(init_dpb)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(init_out_buffer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(input)
	ldx.w	$a0, $a0, $fp
	pcalau12i	$a1, %pc_hi20(stats)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a1, $a1, %pc_lo12(stats)
	st.w	$a0, $a1, 700
	pcalau12i	$a0, %pc_hi20(snr)
	ld.d	$a0, $a0, %pc_lo12(snr)
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 728
	st.d	$zero, $a1, 720
	vst	$vr0, $a0, 8
	st.d	$zero, $a0, 0
	vst	$vr0, $a0, 108
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	vst	$vr0, $a0, 92
	st.d	$zero, $a0, 84
	pcalau12i	$a0, %got_pc_hi20(enc_bottom_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_bottom_picture)
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(enc_top_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_top_picture)
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(enc_frame_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_frame_picture)
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	st.d	$zero, $a0, 0
	pcaddu18i	$ra, %call36(init_global_buffers)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(create_context_memory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Init_Motion_Search_Module)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L__const.information_init.yuv_types)
	addi.d	$a0, $a0, %pc_lo12(.L__const.information_init.yuv_types)
	ld.d	$a1, $s0, %pc_lo12(input)
	ld.d	$a2, $a0, 32
	vld	$vr0, $a0, 16
	vld	$vr1, $a0, 0
	ldptr.w	$a0, $a1, 5112
	st.d	$a2, $sp, 168
	vst	$vr0, $sp, 152
	vst	$vr1, $sp, 136
	sltui	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.L.str.214)
	addi.d	$a1, $a1, %pc_lo12(.L.str.214)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.213)
	addi.d	$a2, $a2, %pc_lo12(.L.str.213)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(.L.str.16)
	addi.d	$a2, $a2, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(input)
	addi.d	$fp, $a0, 280
	ori	$a1, $zero, 47
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.215)
	addi.d	$a0, $a0, %pc_lo12(.L.str.215)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(input)
	addi.d	$a1, $a0, 536
	pcalau12i	$a0, %pc_hi20(.L.str.216)
	addi.d	$a0, $a0, %pc_lo12(.L.str.216)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(p_dec)
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB1_30
# %bb.29:
	ld.d	$a0, $s0, %pc_lo12(input)
	addi.d	$a1, $a0, 792
	pcalau12i	$a0, %pc_hi20(.L.str.217)
	addi.d	$a0, $a0, %pc_lo12(.L.str.217)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB1_30:
	ld.d	$a0, $s5, %pc_lo12(img)
	ldptr.w	$a0, $a0, 15536
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 1
	addi.d	$a1, $sp, 136
	add.d	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.218)
	addi.d	$a0, $a0, %pc_lo12(.L.str.218)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(input)
	ori	$a2, $zero, 2096
	ld.w	$a1, $a0, 8
	ldx.w	$a0, $a0, $a2
	addi.d	$a2, $a1, -1
	mul.w	$a2, $a0, $a2
	pcalau12i	$a0, %pc_hi20(.L.str.219)
	addi.d	$a0, $a0, %pc_lo12(.L.str.219)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(input)
	ldptr.w	$a1, $a0, 4704
	ldptr.w	$a2, $a0, 4708
	pcalau12i	$a0, %pc_hi20(.L.str.220)
	addi.d	$a0, $a0, %pc_lo12(.L.str.220)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(input)
	ldptr.w	$a1, $a0, 5100
	pcalau12i	$a0, %pc_hi20(.L.str.221)
	addi.d	$a0, $a0, %pc_lo12(.L.str.221)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(input)
	ldptr.w	$a1, $a0, 5112
	pcalau12i	$a0, %pc_hi20(.Lstr.6)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.6)
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB1_33
# %bb.31:
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB1_35
# %bb.32:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$s1, $a0, %pc_lo12(.Lstr.1)
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	b	.LBB1_34
.LBB1_33:
	pcalau12i	$a1, %pc_hi20(.Lstr.4)
	addi.d	$s1, $a1, %pc_lo12(.Lstr.4)
.LBB1_34:                               # %.sink.split.i
	move	$fp, $a0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	b	.LBB1_36
.LBB1_35:
	pcalau12i	$a1, %pc_hi20(.Lstr.7)
	addi.d	$fp, $a1, %pc_lo12(.Lstr.7)
.LBB1_36:                               # %information_init.exit
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(input)
	ldptr.w	$a1, $a0, 5116
	pcalau12i	$fp, %pc_hi20(quadratic_RC)
	beqz	$a1, .LBB1_38
# %bb.37:
	ld.d	$a0, $fp, %pc_lo12(quadratic_RC)
	pcaddu18i	$ra, %call36(rc_init_seq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(input)
.LBB1_38:
	ldptr.w	$a1, $a0, 5244
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB1_40
# %bb.39:
	pcaddu18i	$ra, %call36(UMHEX_DefineThreshold)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(input)
.LBB1_40:
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(frame_ctr)
	addi.d	$a2, $a1, %pc_lo12(frame_ctr)
	ld.d	$a3, $s5, %pc_lo12(img)
	st.w	$zero, $a2, 16
	ldptr.w	$a1, $a0, 4144
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $a2, 0
	stptr.w	$zero, $a3, 15596
	pcalau12i	$a2, %pc_hi20(tot_time)
	st.d	$zero, $a2, %pc_lo12(tot_time)
	blez	$a1, .LBB1_42
# %bb.41:
	ld.w	$a2, $a0, 20
	add.w	$a1, $a2, $a1
	addi.w	$a2, $a2, 1
	div.w	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 8
.LBB1_42:
	ori	$a1, $zero, 2096
	ldx.w	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(initial_Bframes)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.w	$a0, $a1, %pc_lo12(initial_Bframes)
	pcaddu18i	$ra, %call36(PatchInputNoFrames)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(stats)
	stptr.w	$zero, $a0, 2256
	pcaddu18i	$ra, %call36(start_sequence)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, %pc_lo12(stats)
	ori	$a1, $zero, 2260
	ldx.w	$a3, $a2, $a1
	ori	$a1, $zero, 2256
	ldx.w	$a4, $a2, $a1
	ld.d	$a1, $s0, %pc_lo12(input)
	st.w	$a0, $a2, 32
	add.d	$a3, $a4, $a3
	ldptr.w	$a4, $a1, 5772
	ld.d	$a0, $s5, %pc_lo12(img)
	stptr.w	$a3, $a2, 2256
	pcalau12i	$s4, %pc_hi20(start_frame_no_in_this_IGOP)
	st.w	$zero, $s4, %pc_lo12(start_frame_no_in_this_IGOP)
	beqz	$a4, .LBB1_50
# %bb.43:
	ldptr.w	$a3, $a0, 15536
	ori	$a2, $zero, 2
	beq	$a3, $a2, .LBB1_46
# %bb.44:
	ori	$a2, $zero, 1
	bne	$a3, $a2, .LBB1_47
# %bb.45:
	pcalau12i	$a2, %pc_hi20(img_pad_size_uv_x)
	ori	$a3, $zero, 10
	st.w	$a3, $a2, %pc_lo12(img_pad_size_uv_x)
	pcalau12i	$a2, %pc_hi20(img_pad_size_uv_y)
	st.w	$a3, $a2, %pc_lo12(img_pad_size_uv_y)
	pcalau12i	$a2, %pc_hi20(chroma_mask_mv_y)
	ori	$a3, $zero, 7
	st.b	$a3, $a2, %pc_lo12(chroma_mask_mv_y)
	pcalau12i	$a2, %pc_hi20(chroma_mask_mv_x)
	st.b	$a3, $a2, %pc_lo12(chroma_mask_mv_x)
	pcalau12i	$a2, %pc_hi20(chroma_shift_x)
	ori	$a3, $zero, 3
	st.w	$a3, $a2, %pc_lo12(chroma_shift_x)
	pcalau12i	$a2, %pc_hi20(chroma_shift_y)
	st.w	$a3, $a2, %pc_lo12(chroma_shift_y)
	ori	$a3, $zero, 1
	ori	$a2, $zero, 2
	b	.LBB1_49
.LBB1_46:
	move	$a3, $zero
	pcalau12i	$a4, %pc_hi20(img_pad_size_uv_x)
	ori	$a5, $zero, 10
	st.w	$a5, $a4, %pc_lo12(img_pad_size_uv_x)
	pcalau12i	$a4, %pc_hi20(img_pad_size_uv_y)
	ori	$a5, $zero, 20
	st.w	$a5, $a4, %pc_lo12(img_pad_size_uv_y)
	pcalau12i	$a4, %pc_hi20(chroma_mask_mv_x)
	ori	$a5, $zero, 7
	st.b	$a5, $a4, %pc_lo12(chroma_mask_mv_x)
	pcalau12i	$a4, %pc_hi20(chroma_mask_mv_y)
	ori	$a5, $zero, 3
	st.b	$a5, $a4, %pc_lo12(chroma_mask_mv_y)
	pcalau12i	$a4, %pc_hi20(chroma_shift_y)
	st.w	$a2, $a4, %pc_lo12(chroma_shift_y)
	b	.LBB1_48
.LBB1_47:
	move	$a3, $zero
	pcalau12i	$a4, %pc_hi20(img_pad_size_uv_x)
	ori	$a5, $zero, 20
	st.w	$a5, $a4, %pc_lo12(img_pad_size_uv_x)
	pcalau12i	$a4, %pc_hi20(img_pad_size_uv_y)
	st.w	$a5, $a4, %pc_lo12(img_pad_size_uv_y)
	pcalau12i	$a4, %pc_hi20(chroma_mask_mv_y)
	ori	$a5, $zero, 3
	st.b	$a5, $a4, %pc_lo12(chroma_mask_mv_y)
	pcalau12i	$a4, %pc_hi20(chroma_mask_mv_x)
	st.b	$a5, $a4, %pc_lo12(chroma_mask_mv_x)
	pcalau12i	$a4, %pc_hi20(chroma_shift_y)
	ori	$a5, $zero, 2
	st.w	$a5, $a4, %pc_lo12(chroma_shift_y)
.LBB1_48:                               # %chroma_mc_setup.exit
	pcalau12i	$a4, %pc_hi20(chroma_shift_x)
	st.w	$a5, $a4, %pc_lo12(chroma_shift_x)
.LBB1_49:                               # %chroma_mc_setup.exit
	pcalau12i	$a4, %pc_hi20(shift_cr_y)
	st.w	$a3, $a4, %pc_lo12(shift_cr_y)
	pcalau12i	$a3, %pc_hi20(shift_cr_x)
	st.w	$a2, $a3, %pc_lo12(shift_cr_x)
.LBB1_50:
	ld.w	$a2, $a1, 8
	st.w	$zero, $a0, 0
	blez	$a2, .LBB1_130
# %bb.51:                               # %.lr.ph.preheader
	move	$a2, $zero
	move	$a4, $zero
	move	$s1, $zero
	move	$a3, $s8
	ori	$s8, $zero, 2
	ori	$s7, $zero, 1
	ori	$s3, $zero, 2096
	pcalau12i	$fp, %pc_hi20(log2_max_frame_num_minus4)
	lu12i.w	$a5, 3
	ori	$s6, $a5, 3044
	ori	$s2, $a3, 640
	lu12i.w	$a3, -203743
	ori	$a3, $a3, 2003
	lu32i.d	$a3, -5
	lu52i.d	$a3, $a3, 1021
	movgr2fr.d	$fs0, $a3
	lu12i.w	$a3, 524287
	ori	$a3, $a3, 4095
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	b	.LBB1_53
	.p2align	4, , 16
.LBB1_52:                               # %process_2nd_IGOP.exit
                                        #   in Loop: Header=BB1_53 Depth=1
	addi.w	$a2, $a2, 1
	st.w	$a2, $a0, 0
	sub.d	$a4, $zero, $s1
	bge	$a2, $a3, .LBB1_130
.LBB1_53:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 1560
	beqz	$a5, .LBB1_58
# %bb.54:                               #   in Loop: Header=BB1_53 Depth=1
	ld.w	$a3, $s4, %pc_lo12(start_frame_no_in_this_IGOP)
	sub.w	$a6, $a2, $a3
	mod.w	$a7, $a6, $a5
	ori	$t0, $zero, 1
	beqz	$a7, .LBB1_57
# %bb.55:                               #   in Loop: Header=BB1_53 Depth=1
	ldptr.w	$t1, $a1, 5752
	beqz	$t1, .LBB1_57
# %bb.56:                               #   in Loop: Header=BB1_53 Depth=1
	addi.d	$t0, $a2, 1
	bstrpick.d	$t1, $t0, 31, 31
	add.d	$t1, $t0, $t1
	bstrpick.d	$t1, $t1, 31, 1
	slli.d	$t1, $t1, 1
	sub.d	$t0, $t0, $t1
.LBB1_57:                               #   in Loop: Header=BB1_53 Depth=1
	ld.w	$t1, $a1, 1568
	stptr.w	$t0, $a0, 15360
	sltui	$t0, $t1, 1
	masknez	$a7, $a7, $t0
	maskeqz	$a6, $a6, $t0
	or	$a6, $a6, $a7
	b	.LBB1_62
	.p2align	4, , 16
.LBB1_58:                               #   in Loop: Header=BB1_53 Depth=1
	ori	$a6, $zero, 1
	beqz	$a2, .LBB1_61
# %bb.59:                               #   in Loop: Header=BB1_53 Depth=1
	ldptr.w	$a3, $a1, 5752
	beqz	$a3, .LBB1_61
# %bb.60:                               #   in Loop: Header=BB1_53 Depth=1
	addi.d	$a3, $a2, 1
	bstrpick.d	$a6, $a3, 31, 31
	add.d	$a6, $a3, $a6
	bstrpick.d	$a6, $a6, 31, 1
	slli.d	$a6, $a6, 1
	sub.d	$a6, $a3, $a6
.LBB1_61:                               # %.thread
                                        #   in Loop: Header=BB1_53 Depth=1
	ld.w	$a3, $s4, %pc_lo12(start_frame_no_in_this_IGOP)
	stptr.w	$a6, $a0, 15360
	sub.d	$a6, $a2, $a3
.LBB1_62:                               #   in Loop: Header=BB1_53 Depth=1
	ld.w	$a7, $a1, 20
	ldptr.w	$t0, $a1, 4704
	alsl.w	$a7, $a7, $s8, 1
	mul.d	$a6, $a7, $a6
	stptr.w	$a6, $a0, 15316
	bnez	$t0, .LBB1_64
# %bb.63:                               #   in Loop: Header=BB1_53 Depth=1
	ldptr.w	$t0, $a1, 4708
	move	$a7, $a6
	beqz	$t0, .LBB1_65
.LBB1_64:                               #   in Loop: Header=BB1_53 Depth=1
	ori	$a7, $a6, 1
.LBB1_65:                               #   in Loop: Header=BB1_53 Depth=1
	ldptr.w	$t0, $a1, 2964
	stptr.w	$a7, $a0, 15320
	stptr.w	$a6, $a0, 15324
	beq	$t0, $s7, .LBB1_67
# %bb.66:                               #   in Loop: Header=BB1_53 Depth=1
	ldptr.w	$a6, $a1, 2968
	beqz	$a6, .LBB1_74
.LBB1_67:                               #   in Loop: Header=BB1_53 Depth=1
	blt	$a2, $s8, .LBB1_74
# %bb.68:                               #   in Loop: Header=BB1_53 Depth=1
	ldx.w	$a6, $a1, $s3
	beqz	$a6, .LBB1_74
# %bb.69:                               #   in Loop: Header=BB1_53 Depth=1
	beqz	$a5, .LBB1_73
# %bb.70:                               #   in Loop: Header=BB1_53 Depth=1
	ld.w	$a4, $a1, 1568
	beqz	$a4, .LBB1_73
# %bb.71:                               #   in Loop: Header=BB1_53 Depth=1
	mod.w	$a4, $a2, $a5
	bnez	$a4, .LBB1_73
# %bb.72:                               #   in Loop: Header=BB1_53 Depth=1
	move	$s1, $zero
	stptr.w	$zero, $a0, 15332
	.p2align	4, , 16
.LBB1_73:                               #   in Loop: Header=BB1_53 Depth=1
	ld.w	$a4, $fp, %pc_lo12(log2_max_frame_num_minus4)
	ldx.w	$a5, $a0, $s6
	addi.d	$a4, $a4, 4
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	sll.w	$a4, $a6, $a4
	andn	$a4, $a5, $a4
	b	.LBB1_78
	.p2align	4, , 16
.LBB1_74:                               #   in Loop: Header=BB1_53 Depth=1
	add.d	$a4, $a2, $a4
	beqz	$a5, .LBB1_77
# %bb.75:                               #   in Loop: Header=BB1_53 Depth=1
	ld.w	$a6, $a1, 1568
	beqz	$a6, .LBB1_77
# %bb.76:                               #   in Loop: Header=BB1_53 Depth=1
	ld.w	$a6, $fp, %pc_lo12(log2_max_frame_num_minus4)
	sub.w	$a4, $a4, $a3
	mod.w	$a4, $a4, $a5
	addi.d	$a6, $a6, 4
	sll.w	$a6, $s7, $a6
	mod.w	$a4, $a4, $a6
	sub.w	$a6, $a2, $a3
	mod.w	$a5, $a6, $a5
	sltui	$a5, $a5, 1
	masknez	$a4, $a4, $a5
	stptr.w	$a4, $a0, 15332
	masknez	$s1, $s1, $a5
	stptr.w	$zero, $a0, 15304
	bnez	$a2, .LBB1_79
	b	.LBB1_81
	.p2align	4, , 16
.LBB1_77:                               #   in Loop: Header=BB1_53 Depth=1
	ld.w	$a5, $fp, %pc_lo12(log2_max_frame_num_minus4)
	sub.w	$a4, $a4, $a3
	addi.d	$a5, $a5, 4
	sll.w	$a5, $s7, $a5
	mod.w	$a4, $a4, $a5
.LBB1_78:                               #   in Loop: Header=BB1_53 Depth=1
	stptr.w	$a4, $a0, 15332
	stptr.w	$zero, $a0, 15304
	beqz	$a2, .LBB1_81
.LBB1_79:                               #   in Loop: Header=BB1_53 Depth=1
	ori	$a4, $zero, 2964
	ldx.w	$a4, $a1, $a4
	bne	$a4, $s7, .LBB1_81
# %bb.80:                               #   in Loop: Header=BB1_53 Depth=1
	ldx.w	$a4, $a1, $s3
	slli.d	$a4, $a4, 1
	stptr.w	$a4, $a0, 15304
.LBB1_81:                               #   in Loop: Header=BB1_53 Depth=1
	ld.w	$a4, $a1, 1560
	beqz	$a4, .LBB1_86
# %bb.82:                               #   in Loop: Header=BB1_53 Depth=1
	sub.w	$a5, $a2, $a3
	mod.w	$a4, $a5, $a4
	beqz	$a4, .LBB1_87
.LBB1_83:                               #   in Loop: Header=BB1_53 Depth=1
	ldptr.w	$a4, $a1, 2136
	beqz	$a4, .LBB1_85
# %bb.84:                               #   in Loop: Header=BB1_53 Depth=1
	sub.w	$a2, $a2, $a3
	mod.w	$a2, $a2, $a4
	beqz	$a2, .LBB1_95
.LBB1_85:                               # %SetImgType.exit.thread158
                                        #   in Loop: Header=BB1_53 Depth=1
	ldptr.w	$a2, $a1, 2964
	addi.d	$a2, $a2, -2
	sltui	$a2, $a2, 1
	b	.LBB1_96
	.p2align	4, , 16
.LBB1_86:                               #   in Loop: Header=BB1_53 Depth=1
	bne	$a2, $a3, .LBB1_83
.LBB1_87:                               # %SetImgType.exit
                                        #   in Loop: Header=BB1_53 Depth=1
	ldptr.w	$a3, $a1, 2088
	st.w	$s8, $a0, 20
	bne	$a3, $s7, .LBB1_90
# %bb.88:                               # %SetImgType.exit
                                        #   in Loop: Header=BB1_53 Depth=1
	beqz	$a2, .LBB1_90
# %bb.89:                               #   in Loop: Header=BB1_53 Depth=1
	pcaddu18i	$ra, %call36(rewrite_paramsets)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(stats)
	ori	$a1, $zero, 2260
	ldx.w	$a3, $a2, $a1
	ori	$a1, $zero, 2256
	ldx.w	$a4, $a2, $a1
	ld.d	$a1, $s0, %pc_lo12(input)
	st.w	$a0, $a2, 32
	add.d	$a0, $a4, $a3
	stptr.w	$a0, $a2, 2256
.LBB1_90:                               # %.thread102
                                        #   in Loop: Header=BB1_53 Depth=1
	ldptr.w	$a3, $a1, 2096
	beqz	$a3, .LBB1_97
.LBB1_91:                               #   in Loop: Header=BB1_53 Depth=1
	ldptr.w	$a2, $a1, 4144
	ld.d	$a0, $s5, %pc_lo12(img)
	beqz	$a2, .LBB1_94
# %bb.92:                               #   in Loop: Header=BB1_53 Depth=1
	ld.w	$a4, $a0, 0
	ld.w	$a5, $s4, %pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a6, $a1, 8
	sub.d	$a5, $a4, $a5
	addi.w	$a5, $a5, 1
	bne	$a5, $a6, .LBB1_94
# %bb.93:                               #   in Loop: Header=BB1_53 Depth=1
	ld.w	$a5, $a1, 20
	addi.d	$a5, $a5, 1
	movgr2fr.w	$fa0, $a5
	ffint.s.w	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -912
	fadd.d	$fa1, $fa1, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa0, $fs0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a3, $fa0
	addi.d	$a4, $a4, -1
	mul.d	$a4, $a5, $a4
	sub.w	$a2, $a2, $a4
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a4, $a4, %pc_lo12(initial_Bframes)
	div.w	$a2, $a2, $a3
	addi.d	$a2, $a2, -1
	stptr.w	$a2, $a1, 2096
	sub.w	$a2, $a2, $a4
	slli.d	$a3, $a2, 1
	lu12i.w	$a5, 3
	ori	$a4, $a5, 3028
	ldx.w	$a4, $a0, $a4
	stptr.w	$a3, $a0, 15304
	ori	$a3, $a5, 3032
	ldx.w	$a3, $a0, $a3
	alsl.w	$a5, $a2, $a4, 1
	alsl.d	$a4, $a2, $a4, 1
	stptr.w	$a4, $a0, 15316
	alsl.w	$a4, $a2, $a3, 1
	alsl.d	$a2, $a2, $a3, 1
	stptr.w	$a2, $a0, 15320
	slt	$a2, $a5, $a4
	masknez	$a3, $a4, $a2
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a3
	stptr.w	$a2, $a0, 15324
	.p2align	4, , 16
.LBB1_94:                               #   in Loop: Header=BB1_53 Depth=1
	ld.w	$a2, $a0, 20
	beq	$a2, $s8, .LBB1_98
	b	.LBB1_112
.LBB1_95:                               # %SetImgType.exit.thread
                                        #   in Loop: Header=BB1_53 Depth=1
	ori	$a2, $zero, 3
.LBB1_96:                               # %.thread102
                                        #   in Loop: Header=BB1_53 Depth=1
	st.w	$a2, $a0, 20
	ldptr.w	$a3, $a1, 2096
	bnez	$a3, .LBB1_91
.LBB1_97:                               # %.thread102._crit_edge
                                        #   in Loop: Header=BB1_53 Depth=1
	ld.d	$a0, $s5, %pc_lo12(img)
	ld.w	$a2, $a0, 20
	bne	$a2, $s8, .LBB1_112
.LBB1_98:                               #   in Loop: Header=BB1_53 Depth=1
	ldptr.w	$a2, $a1, 5136
	ori	$a2, $a2, 2
	ori	$a3, $zero, 3
	bne	$a2, $a3, .LBB1_100
# %bb.99:                               #   in Loop: Header=BB1_53 Depth=1
	ld.w	$a3, $a0, 0
	ld.w	$a4, $s4, %pc_lo12(start_frame_no_in_this_IGOP)
	bne	$a3, $a4, .LBB1_112
.LBB1_100:                              #   in Loop: Header=BB1_53 Depth=1
	ldptr.w	$a3, $a1, 5116
	beqz	$a3, .LBB1_112
# %bb.101:                              #   in Loop: Header=BB1_53 Depth=1
	ld.w	$a3, $a1, 1560
	beqz	$a3, .LBB1_103
# %bb.102:                              #   in Loop: Header=BB1_53 Depth=1
	ori	$a4, $zero, 3
	bne	$a2, $a4, .LBB1_104
.LBB1_103:                              #   in Loop: Header=BB1_53 Depth=1
	ld.w	$a0, $a1, 8
	ldx.w	$a2, $a1, $s3
	addi.w	$a1, $a0, -1
	mul.w	$a2, $a1, $a2
	b	.LBB1_111
.LBB1_104:                              #   in Loop: Header=BB1_53 Depth=1
	ldx.w	$a2, $a1, $s3
	ld.w	$a5, $a0, 0
	ld.w	$a4, $a1, 8
	addi.w	$a0, $a2, 1
	div.w	$a6, $a5, $a3
	div.w	$a7, $a4, $a3
	sltui	$a1, $a5, 1
	bge	$a6, $a7, .LBB1_106
# %bb.105:                              #   in Loop: Header=BB1_53 Depth=1
	mul.d	$a3, $a0, $a3
	maskeqz	$a4, $a2, $a1
	sub.d	$a3, $a3, $a4
	b	.LBB1_110
.LBB1_106:                              #   in Loop: Header=BB1_53 Depth=1
	beqz	$a5, .LBB1_108
# %bb.107:                              #   in Loop: Header=BB1_53 Depth=1
	sub.d	$a3, $a4, $a5
	addi.d	$a4, $a3, -1
	mul.d	$a4, $a4, $a2
	add.d	$a3, $a3, $a2
	b	.LBB1_109
.LBB1_108:                              #   in Loop: Header=BB1_53 Depth=1
	addi.d	$a3, $a4, -1
	mul.d	$a3, $a3, $a2
.LBB1_109:                              #   in Loop: Header=BB1_53 Depth=1
	add.d	$a3, $a3, $a4
.LBB1_110:                              #   in Loop: Header=BB1_53 Depth=1
	sll.w	$a1, $a2, $a1
	add.w	$a1, $a3, $a1
	div.w	$a0, $a1, $a0
	addi.w	$a1, $a0, -1
	sub.w	$a2, $a3, $a0
.LBB1_111:                              #   in Loop: Header=BB1_53 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(quadratic_RC)
	pcaddu18i	$ra, %call36(rc_init_GOP)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(img)
	ld.d	$a1, $s0, %pc_lo12(input)
.LBB1_112:                              #   in Loop: Header=BB1_53 Depth=1
	ld.w	$a2, $a0, 0
	ld.w	$a3, $s4, %pc_lo12(start_frame_no_in_this_IGOP)
	ldx.w	$a4, $a1, $s2
	sub.w	$a2, $a2, $a3
	ldptr.w	$a1, $a1, 5084
	addi.w	$a3, $a4, 1
	mod.w	$a2, $a2, $a3
	sltu	$a2, $zero, $a2
	stptr.w	$a2, $a0, 15248
	beqz	$a1, .LBB1_114
# %bb.113:                              #   in Loop: Header=BB1_53 Depth=1
	pcaddu18i	$ra, %call36(Init_redundant_frame)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Set_redundant_frame)
	jirl	$ra, $ra, 0
.LBB1_114:                              #   in Loop: Header=BB1_53 Depth=1
	pcaddu18i	$ra, %call36(encode_one_frame)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, %pc_lo12(input)
	ldptr.w	$a0, $a1, 5084
	beqz	$a0, .LBB1_119
# %bb.115:                              #   in Loop: Header=BB1_53 Depth=1
	pcalau12i	$a0, %pc_hi20(key_frame)
	ld.w	$a2, $a0, %pc_lo12(key_frame)
	beqz	$a2, .LBB1_119
# %bb.116:                              #   in Loop: Header=BB1_53 Depth=1
	ld.d	$a1, $s5, %pc_lo12(img)
	ld.w	$a2, $a1, 20
	st.w	$zero, $a0, %pc_lo12(key_frame)
	pcalau12i	$a0, %pc_hi20(redundant_coding)
	st.w	$s7, $a0, %pc_lo12(redundant_coding)
	stptr.w	$s7, $a1, 15264
	bne	$a2, $s8, .LBB1_118
# %bb.117:                              #   in Loop: Header=BB1_53 Depth=1
	st.w	$zero, $a1, 20
.LBB1_118:                              # %encode_one_redundant_frame.exit
                                        #   in Loop: Header=BB1_53 Depth=1
	pcaddu18i	$ra, %call36(encode_one_frame)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, %pc_lo12(input)
.LBB1_119:                              #   in Loop: Header=BB1_53 Depth=1
	ld.d	$a0, $s5, %pc_lo12(img)
	ld.w	$a2, $a0, 20
	bne	$a2, $s8, .LBB1_122
# %bb.120:                              #   in Loop: Header=BB1_53 Depth=1
	ld.w	$a2, $a1, 1564
	beqz	$a2, .LBB1_122
# %bb.121:                              #   in Loop: Header=BB1_53 Depth=1
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3040
	ldx.w	$a2, $a0, $a2
	stptr.w	$a2, $a0, 15596
.LBB1_122:                              #   in Loop: Header=BB1_53 Depth=1
	ldptr.w	$a1, $a1, 5104
	beqz	$a1, .LBB1_124
# %bb.123:                              #   in Loop: Header=BB1_53 Depth=1
	pcaddu18i	$ra, %call36(report_frame_statistic)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(img)
.LBB1_124:                              #   in Loop: Header=BB1_53 Depth=1
	ldptr.w	$a1, $a0, 15360
	bnez	$a1, .LBB1_126
# %bb.125:                              #   in Loop: Header=BB1_53 Depth=1
	ldx.w	$a1, $a0, $s6
	ld.w	$a2, $fp, %pc_lo12(log2_max_frame_num_minus4)
	addi.d	$s1, $s1, 1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	addi.d	$a2, $a2, 4
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	sll.w	$a2, $a3, $a2
	andn	$a1, $a1, $a2
	stptr.w	$a1, $a0, 15332
.LBB1_126:                              #   in Loop: Header=BB1_53 Depth=1
	pcaddu18i	$ra, %call36(encode_enhancement_layer)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, %pc_lo12(input)
	ld.d	$a0, $s5, %pc_lo12(img)
	ld.w	$a3, $a1, 8
	ldptr.w	$a4, $a1, 4740
	ld.w	$a2, $a0, 0
	beqz	$a4, .LBB1_52
# %bb.127:                              #   in Loop: Header=BB1_53 Depth=1
	addi.w	$a5, $a3, -1
	bne	$a2, $a5, .LBB1_52
# %bb.128:                              #   in Loop: Header=BB1_53 Depth=1
	pcalau12i	$a6, %pc_hi20(In2ndIGOP)
	ld.w	$a7, $a6, %pc_lo12(In2ndIGOP)
	bnez	$a7, .LBB1_52
# %bb.129:                              #   in Loop: Header=BB1_53 Depth=1
	ld.w	$a2, $a1, 20
	st.w	$s7, $a6, %pc_lo12(In2ndIGOP)
	st.w	$a3, $s4, %pc_lo12(start_frame_no_in_this_IGOP)
	addi.d	$a2, $a2, 1
	mul.d	$a2, $a2, $a5
	addi.d	$a2, $a2, 1
	pcalau12i	$a5, %pc_hi20(start_tr_in_this_IGOP)
	st.w	$a2, $a5, %pc_lo12(start_tr_in_this_IGOP)
	ld.w	$a2, $a0, 0
	add.w	$a3, $a4, $a3
	st.w	$a3, $a1, 8
	b	.LBB1_52
.LBB1_130:                              # %._crit_edge
	pcaddu18i	$ra, %call36(terminate_sequence)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(flush_dpb)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(p_in)
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(p_dec)
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB1_132
# %bb.131:
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB1_132:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(p_trace)
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_134
# %bb.133:
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB1_134:
	pcaddu18i	$ra, %call36(Clear_Motion_Search_Module)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(RandomIntraUninit)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(FmoUninit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(input)
	ldptr.w	$a0, $a0, 2968
	beqz	$a0, .LBB1_136
# %bb.135:
	pcaddu18i	$ra, %call36(clear_gop_structure)
	jirl	$ra, $ra, 0
.LBB1_136:
	pcaddu18i	$ra, %call36(clear_rdopt)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(calc_buffer)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(report)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Bit_Buffer)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(frame_pic_1)
	beqz	$fp, .LBB1_138
# %bb.137:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_slice_list)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_138:                              # %free_picture.exit
	ld.d	$a0, $s0, %pc_lo12(input)
	ldptr.w	$a0, $a0, 2940
	beqz	$a0, .LBB1_143
# %bb.139:
	ld.d	$fp, $s2, %pc_lo12(frame_pic_2)
	beqz	$fp, .LBB1_141
# %bb.140:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_slice_list)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_141:                              # %free_picture.exit91
	ld.d	$fp, $s1, %pc_lo12(frame_pic_3)
	beqz	$fp, .LBB1_143
# %bb.142:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_slice_list)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_143:                              # %free_picture.exit93
	ld.d	$a0, $s0, %pc_lo12(input)
	ldptr.w	$a0, $a0, 2148
	beqz	$a0, .LBB1_147
# %bb.144:
	ld.d	$fp, $s3, %pc_lo12(frame_pic_si)
	pcalau12i	$s1, %pc_hi20(lrec)
	pcalau12i	$s0, %pc_hi20(lrec_uv)
	beqz	$fp, .LBB1_146
# %bb.145:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_slice_list)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_146:                              # %free_picture.exit95
	ld.d	$a0, $s1, %pc_lo12(lrec)
	pcaddu18i	$ra, %call36(free_mem2Dint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(lrec_uv)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem3Dint)
	jirl	$ra, $ra, 0
.LBB1_147:
	ld.d	$fp, $s5, %pc_lo12(top_pic)
	beqz	$fp, .LBB1_149
# %bb.148:                              # %free_picture.exit97
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_slice_list)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_149:
	ld.d	$fp, $s4, %pc_lo12(bottom_pic)
	beqz	$fp, .LBB1_151
# %bb.150:                              # %free_picture.exit99
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_slice_list)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_151:
	pcaddu18i	$ra, %call36(free_dpb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(Co_located)
	ld.d	$a0, $a0, %got_pc_lo12(Co_located)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free_colocated)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(uninit_out_buffer)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(free_global_buffers)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(free_img)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(free_context_memory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(FreeNalPayloadBuffer)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(FreeParameterSets)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 176                  # 8-byte Folded Reload
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
.LBB1_152:
	move	$a1, $zero
	stptr.w	$zero, $a0, 15284
	b	.LBB1_5
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.globl	init_poc                        # -- Begin function init_poc
	.p2align	5
	.type	init_poc,@function
init_poc:                               # @init_poc
# %bb.0:
	pcalau12i	$a0, %pc_hi20(input)
	ld.d	$a1, $a0, %pc_lo12(input)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 992
	ldx.w	$a2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	ldptr.w	$a3, $a1, 2964
	stptr.w	$a2, $a0, 15272
	stptr.w	$zero, $a0, 15276
	ori	$a2, $zero, 1
	stptr.w	$a2, $a0, 15288
	bne	$a3, $a2, .LBB2_2
# %bb.1:
	move	$a2, $zero
	ori	$a3, $zero, 2
	stptr.w	$a3, $a0, 15292
	ldptr.w	$a3, $a1, 4704
	stptr.w	$a2, $a0, 15280
	bnez	$a3, .LBB2_4
	b	.LBB2_3
.LBB2_2:
	ori	$a2, $zero, 2096
	ldx.w	$a3, $a1, $a2
	slli.d	$a2, $a3, 1
	sub.d	$a2, $zero, $a2
	ori	$a4, $zero, 2
	alsl.w	$a3, $a3, $a4, 1
	stptr.w	$a3, $a0, 15292
	ldptr.w	$a3, $a1, 4704
	stptr.w	$a2, $a0, 15280
	bnez	$a3, .LBB2_4
.LBB2_3:
	ldptr.w	$a1, $a1, 4708
	beqz	$a1, .LBB2_5
.LBB2_4:                                # %.thread1
	ori	$a1, $zero, 1
	stptr.w	$a1, $a0, 15284
	stptr.w	$a1, $a0, 15356
	stptr.w	$a1, $a0, 15300
	ret
.LBB2_5:
	move	$a1, $zero
	stptr.w	$zero, $a0, 15284
	stptr.w	$a1, $a0, 15356
	stptr.w	$a1, $a0, 15300
	ret
.Lfunc_end2:
	.size	init_poc, .Lfunc_end2-init_poc
                                        # -- End function
	.globl	SetLevelIndices                 # -- Begin function SetLevelIndices
	.p2align	5
	.type	SetLevelIndices,@function
SetLevelIndices:                        # @SetLevelIndices
# %bb.0:
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ld.w	$a1, $a0, 24
	addi.d	$a1, $a1, -9
	ori	$a2, $zero, 42
	bltu	$a2, $a1, .LBB3_22
# %bb.1:
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI3_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI3_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB3_2:
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	st.w	$zero, $a0, 8
	ret
.LBB3_3:
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	ori	$a1, $zero, 10
	st.w	$a1, $a0, 8
	ret
.LBB3_4:
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	ori	$a1, $zero, 16
	st.w	$a1, $a0, 8
	ret
.LBB3_5:
	ld.w	$a1, $a0, 4
	ori	$a2, $zero, 99
	bltu	$a2, $a1, .LBB3_7
# %bb.6:
	ld.w	$a0, $a0, 20
	beqz	$a0, .LBB3_21
.LBB3_7:
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 8
	ret
.LBB3_8:
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	ori	$a1, $zero, 12
	st.w	$a1, $a0, 8
	ret
.LBB3_9:
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	ori	$a1, $zero, 4
	st.w	$a1, $a0, 8
	ret
.LBB3_10:
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	ori	$a1, $zero, 7
	st.w	$a1, $a0, 8
	ret
.LBB3_11:
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	ori	$a1, $zero, 3
	st.w	$a1, $a0, 8
	ret
.LBB3_12:
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	ori	$a1, $zero, 11
	st.w	$a1, $a0, 8
	ret
.LBB3_13:
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	ori	$a1, $zero, 6
	st.w	$a1, $a0, 8
	ret
.LBB3_14:
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	ori	$a1, $zero, 5
	st.w	$a1, $a0, 8
	ret
.LBB3_15:
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	ori	$a1, $zero, 8
	st.w	$a1, $a0, 8
	ret
.LBB3_16:
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	ori	$a1, $zero, 9
	st.w	$a1, $a0, 8
	ret
.LBB3_17:
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	ori	$a1, $zero, 15
	st.w	$a1, $a0, 8
	ret
.LBB3_18:
	ld.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	ori	$a2, $zero, 88
	bltu	$a2, $a1, .LBB3_20
# %bb.19:
	ori	$a1, $zero, 13
	st.w	$a1, $a0, 8
	ret
.LBB3_20:
	ori	$a1, $zero, 14
	st.w	$a1, $a0, 8
	ret
.LBB3_21:
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 8
	ret
.LBB3_22:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.207)
	addi.d	$a0, $a0, %pc_lo12(.L.str.207)
	ori	$a1, $zero, 52
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	ori	$a1, $zero, 16
	st.w	$a1, $a0, 8
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	SetLevelIndices, .Lfunc_end3-SetLevelIndices
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_7-.LJTI3_0
	.word	.LBB3_2-.LJTI3_0
	.word	.LBB3_5-.LJTI3_0
	.word	.LBB3_11-.LJTI3_0
	.word	.LBB3_9-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_14-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_15-.LJTI3_0
	.word	.LBB3_16-.LJTI3_0
	.word	.LBB3_3-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_12-.LJTI3_0
	.word	.LBB3_8-.LJTI3_0
	.word	.LBB3_18-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_17-.LJTI3_0
	.word	.LBB3_4-.LJTI3_0
                                        # -- End function
	.text
	.globl	init_img                        # -- Begin function init_img
	.p2align	5
	.type	init_img,@function
init_img:                               # @init_img
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
	pcalau12i	$s1, %pc_hi20(input)
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.w	$a4, $a1, 64
	pcalau12i	$s2, %pc_hi20(img)
	ld.d	$a0, $s2, %pc_lo12(img)
	lu12i.w	$s0, 1
	ori	$a2, $s0, 1160
	ldx.wu	$a3, $a1, $a2
	stptr.w	$a4, $a0, 15536
	stptr.w	$a3, $a0, 15444
	slli.d	$a2, $a3, 2
	alsl.d	$a2, $a3, $a2, 1
	slli.d	$a5, $a3, 1
	addi.w	$a2, $a2, -48
	stptr.w	$a2, $a0, 15452
	addi.d	$a5, $a5, -16
	stptr.w	$a5, $a0, 15460
	addi.d	$a5, $a3, -1
	ori	$a6, $zero, 1
	sll.w	$a5, $a6, $a5
	stptr.w	$a5, $a0, 15512
	addi.d	$a7, $zero, -1
	sll.w	$a5, $a7, $a3
	nor	$a5, $a5, $zero
	stptr.w	$a5, $a0, 15520
	ori	$a5, $zero, 16
	ori	$t0, $zero, 16
	lu32i.d	$t0, 16
	stptr.d	$t0, $a0, 15552
	lu12i.w	$s3, 3
	beqz	$a4, .LBB4_2
# %bb.1:                                # %.thread
	ldptr.w	$t0, $a1, 5260
	stptr.w	$t0, $a0, 15448
	addi.d	$t1, $t0, -1
	sll.w	$t1, $a6, $t1
	stptr.w	$t1, $a0, 15516
	sll.w	$a7, $a7, $t0
	nor	$a7, $a7, $zero
	stptr.w	$a7, $a0, 15524
	sll.w	$a6, $a6, $a4
	addi.w	$a7, $zero, -2
	and	$a6, $a6, $a7
	stptr.w	$a6, $a0, 15528
	slli.d	$a6, $a6, 1
	stptr.w	$a6, $a0, 15532
	sltui	$a6, $a4, 3
	masknez	$t1, $a5, $a6
	ori	$t2, $zero, 8
	maskeqz	$t3, $t2, $a6
	or	$t1, $t3, $t1
	stptr.w	$t1, $a0, 15568
	stptr.w	$t1, $a0, 15560
	and	$a4, $a4, $a7
	addi.d	$a4, $a4, -2
	sltui	$a4, $a4, 1
	masknez	$a7, $t2, $a4
	maskeqz	$a5, $a5, $a4
	pcalau12i	$t2, %pc_hi20(active_pps)
	ld.d	$t2, $t2, %pc_lo12(active_pps)
	or	$a5, $a5, $a7
	stptr.w	$a5, $a0, 15572
	stptr.w	$a5, $a0, 15564
	ld.w	$a7, $t2, 212
	stptr.w	$t1, $a0, 15544
	stptr.w	$a5, $a0, 15548
	slli.d	$a5, $t0, 2
	stptr.w	$a7, $a0, 15576
	ld.w	$a7, $t2, 216
	alsl.d	$a5, $t0, $a5, 1
	addi.d	$a5, $a5, -48
	stptr.w	$a5, $a0, 15456
	stptr.w	$a7, $a0, 15580
	addi.w	$a5, $a3, 0
	slt	$a7, $t0, $a5
	masknez	$t1, $t0, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $t1
	slli.d	$a7, $t0, 1
	addi.d	$a4, $a4, 3
	sll.w	$a4, $a7, $a4
	ori	$a7, $zero, 4
	sub.d	$a6, $a7, $a6
	sll.w	$a4, $a4, $a6
	b	.LBB4_3
.LBB4_2:
	move	$a4, $zero
	stptr.w	$zero, $a0, 15448
	stptr.d	$zero, $a0, 15524
	stptr.w	$zero, $a0, 15532
	stptr.d	$zero, $a0, 15544
	stptr.w	$zero, $a0, 15456
	vrepli.b	$vr0, 0
	ori	$a5, $s3, 3280
	vstx	$vr0, $a0, $a5
	stptr.d	$zero, $a0, 15560
	move	$a5, $a3
.LBB4_3:                                # %.thread51
	addi.w	$a5, $a5, 0
	ori	$a6, $zero, 8
	slt	$a5, $a6, $a5
	masknez	$a6, $a6, $a5
	ori	$a7, $zero, 16
	maskeqz	$a5, $a7, $a5
	or	$a5, $a5, $a6
	stptr.w	$a5, $a0, 15440
	slli.d	$a3, $a3, 8
	add.d	$a3, $a4, $a3
	addi.d	$a3, $a3, 128
	stptr.w	$a3, $a0, 15464
	pcalau12i	$s6, %pc_hi20(active_sps)
	ld.d	$a3, $s6, %pc_lo12(active_sps)
	srai.d	$a2, $a2, 1
	addi.d	$a4, $a2, 25
	stptr.w	$a4, $a0, 15468
	ld.w	$a4, $a3, 1132
	ld.w	$a3, $a3, 1148
	addi.d	$a2, $a2, 26
	stptr.w	$a2, $a0, 15472
	st.w	$a4, $a0, 28
	sltui	$a2, $a3, 1
	sll.w	$a2, $a4, $a2
	ld.w	$a3, $a1, 32
	ori	$a4, $zero, 4080
	fldx.d	$fa0, $a1, $a4
	st.w	$a2, $a0, 32
	stptr.w	$a3, $a0, 15240
	stptr.w	$zero, $a0, 15420
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a0, 48
	ori	$a1, $s3, 2088
	add.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(get_mem_mv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(img)
	ori	$a1, $s3, 2096
	add.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(get_mem_mv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a0, $a0, 2120
	beqz	$a0, .LBB4_5
# %bb.4:
	ld.d	$a0, $s2, %pc_lo12(img)
	ori	$a1, $s3, 2104
	add.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(get_mem_mv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(img)
	ori	$a1, $s3, 2112
	add.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(get_mem_mv)
	jirl	$ra, $ra, 0
.LBB4_5:
	ld.d	$a0, $s2, %pc_lo12(img)
	ori	$a1, $s3, 1872
	add.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(get_mem_ACcoeff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(img)
	ori	$a1, $s3, 1880
	add.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(get_mem_DCcoeff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a1, $a0, 5652
	beqz	$a1, .LBB4_7
# %bb.6:
	ld.d	$a0, $s2, %pc_lo12(img)
	ori	$a1, $s3, 1888
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	ori	$a2, $zero, 16
	ori	$a3, $zero, 16
	pcaddu18i	$ra, %call36(get_mem3Dint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(img)
	ori	$a1, $s3, 1896
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 3
	ori	$a2, $zero, 16
	ori	$a3, $zero, 16
	pcaddu18i	$ra, %call36(get_mem3Dint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(img)
	ldptr.w	$a3, $a0, 15548
	ldptr.w	$a4, $a0, 15544
	ori	$a1, $s3, 1904
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(get_mem4Dint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(img)
	ldptr.w	$a3, $a0, 15548
	ldptr.w	$a4, $a0, 15544
	ori	$a1, $s3, 1912
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(get_mem4Dint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
.LBB4_7:
	ldptr.w	$a0, $a0, 4708
	pcalau12i	$a1, %pc_hi20(rddata_top_frame_mb)
	addi.d	$s5, $a1, %pc_lo12(rddata_top_frame_mb)
	pcalau12i	$a1, %pc_hi20(rddata_bot_frame_mb)
	addi.d	$s4, $a1, %pc_lo12(rddata_bot_frame_mb)
	beqz	$a0, .LBB4_10
# %bb.8:
	addi.d	$a0, $s5, 1664
	pcaddu18i	$ra, %call36(get_mem_mv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s5, 1672
	pcaddu18i	$ra, %call36(get_mem_mv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s4, 1664
	pcaddu18i	$ra, %call36(get_mem_mv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s4, 1672
	pcaddu18i	$ra, %call36(get_mem_mv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s5, 1544
	pcaddu18i	$ra, %call36(get_mem_ACcoeff)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s5, 1552
	pcaddu18i	$ra, %call36(get_mem_DCcoeff)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s4, 1544
	pcaddu18i	$ra, %call36(get_mem_ACcoeff)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s4, 1552
	pcaddu18i	$ra, %call36(get_mem_DCcoeff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a0, $a0, 4708
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB4_10
# %bb.9:
	pcalau12i	$a0, %pc_hi20(rddata_top_field_mb)
	addi.d	$fp, $a0, %pc_lo12(rddata_top_field_mb)
	addi.d	$a0, $fp, 1664
	pcaddu18i	$ra, %call36(get_mem_mv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 1672
	pcaddu18i	$ra, %call36(get_mem_mv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(rddata_bot_field_mb)
	addi.d	$s7, $a0, %pc_lo12(rddata_bot_field_mb)
	addi.d	$a0, $s7, 1664
	pcaddu18i	$ra, %call36(get_mem_mv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s7, 1672
	pcaddu18i	$ra, %call36(get_mem_mv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 1544
	pcaddu18i	$ra, %call36(get_mem_ACcoeff)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 1552
	pcaddu18i	$ra, %call36(get_mem_DCcoeff)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s7, 1544
	pcaddu18i	$ra, %call36(get_mem_ACcoeff)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s7, 1552
	pcaddu18i	$ra, %call36(get_mem_DCcoeff)
	jirl	$ra, $ra, 0
.LBB4_10:
	ld.d	$s7, $s2, %pc_lo12(img)
	ldptr.w	$a0, $s7, 15520
	ldptr.w	$a1, $s7, 15524
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ori	$a1, $zero, 2
	alsl.w	$fp, $a0, $a1, 1
	ori	$a1, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	stptr.d	$a0, $s7, 14232
	bnez	$a0, .LBB4_12
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(img)
	ldptr.d	$a0, $s7, 14232
.LBB4_12:
	srai.d	$a1, $fp, 1
	alsl.d	$a0, $a1, $a0, 2
	stptr.d	$a0, $s7, 14232
	blez	$a1, .LBB4_15
# %bb.13:                               # %.lr.ph.preheader
	move	$a2, $zero
	move	$a3, $a0
	.p2align	4, , 16
.LBB4_14:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a4, $a2, $a2
	st.w	$a4, $a3, 0
	st.w	$a4, $a0, 0
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, -4
	addi.d	$a0, $a0, 4
	bne	$a1, $a2, .LBB4_14
.LBB4_15:                               # %._crit_edge
	ld.d	$fp, $s1, %pc_lo12(input)
	ld.w	$a2, $fp, 56
	ori	$a0, $s3, 3296
	ldx.w	$a0, $s7, $a0
	ld.w	$a3, $fp, 60
	ori	$a1, $s3, 3300
	ldx.w	$a4, $s7, $a1
	add.w	$a1, $a0, $a2
	add.w	$a0, $a4, $a3
	bstrpick.d	$a4, $a1, 62, 61
	add.w	$a4, $a1, $a4
	srli.d	$a4, $a4, 2
	st.w	$a4, $s7, 60
	bstrpick.d	$a4, $a0, 62, 61
	add.w	$a4, $a0, $a4
	srli.d	$a4, $a4, 2
	st.w	$a4, $s7, 76
	addi.d	$a4, $a1, 40
	st.w	$a4, $s7, 56
	ldptr.w	$a4, $s7, 15536
	addi.d	$a5, $a0, 40
	st.w	$a5, $s7, 72
	st.w	$a1, $s7, 52
	st.w	$a0, $s7, 68
	beqz	$a4, .LBB4_17
# %bb.16:
	slli.d	$a5, $a4, 2
	pcalau12i	$a4, %pc_hi20(init_img.mb_width_cr)
	addi.d	$a4, $a4, %pc_lo12(init_img.mb_width_cr)
	ldx.w	$a4, $a4, $a5
	ori	$a6, $zero, 16
	div.w	$a7, $a6, $a4
	div.w	$a4, $a1, $a7
	pcalau12i	$t0, %pc_hi20(init_img.mb_height_cr)
	addi.d	$t0, $t0, %pc_lo12(init_img.mb_height_cr)
	ldx.w	$a5, $t0, $a5
	div.w	$a6, $a6, $a5
	div.w	$a5, $a0, $a6
	div.w	$a2, $a2, $a7
	div.w	$a3, $a3, $a6
	b	.LBB4_18
.LBB4_17:
	move	$a4, $zero
	move	$a5, $zero
	move	$a2, $zero
	move	$a3, $zero
.LBB4_18:
	st.w	$a4, $s7, 64
	st.w	$a5, $s7, 80
	stptr.w	$a2, $fp, 5268
	stptr.w	$a3, $fp, 5264
	st.w	$a5, $s7, 84
	mul.d	$a2, $a0, $a1
	st.w	$a2, $s7, 88
	mul.d	$a2, $a4, $a5
	st.w	$a2, $s7, 92
	bstrpick.d	$a2, $a1, 62, 59
	add.w	$a1, $a1, $a2
	srai.d	$a1, $a1, 4
	stptr.w	$a1, $s7, 15336
	ld.d	$a2, $s6, %pc_lo12(active_sps)
	bstrpick.d	$a3, $a0, 62, 59
	add.w	$a0, $a0, $a3
	srai.d	$a0, $a0, 4
	ld.w	$a2, $a2, 1148
	stptr.w	$a0, $s7, 15344
	mul.d	$a1, $a0, $a1
	stptr.w	$a1, $s7, 15352
	sltui	$a2, $a2, 1
	srl.w	$a0, $a0, $a2
	stptr.w	$a0, $s7, 15340
	bstrpick.d	$a0, $a1, 31, 0
	ori	$a1, $zero, 536
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	stptr.d	$a0, $s7, 14224
	bnez	$a0, .LBB4_20
# %bb.19:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s1, %pc_lo12(input)
	ld.d	$s7, $s2, %pc_lo12(img)
.LBB4_20:
	ld.w	$a0, $fp, 272
	beqz	$a0, .LBB4_22
# %bb.21:
	ori	$a0, $s3, 3064
	ldx.wu	$a0, $s7, $a0
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	stptr.d	$a0, $s7, 14240
	beqz	$a0, .LBB4_25
.LBB4_22:
	ldptr.w	$a0, $fp, 4172
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB4_26
.LBB4_23:
	ori	$a0, $s3, 3064
	ldx.wu	$a0, $s7, $a0
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(mb16x16_cost_frame)
	st.d	$a0, $a1, %pc_lo12(mb16x16_cost_frame)
	bnez	$a0, .LBB4_26
# %bb.24:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, %pc_lo12(img)
	b	.LBB4_26
.LBB4_25:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s1, %pc_lo12(input)
	ld.d	$s7, $s2, %pc_lo12(img)
	ldptr.w	$a0, $fp, 4172
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_23
.LBB4_26:
	ld.w	$a1, $s7, 76
	ld.w	$a2, $s7, 60
	addi.d	$a0, $s7, 128
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(img)
	ld.w	$a1, $a0, 76
	ld.w	$a2, $a0, 60
	addi.d	$a0, $a0, 136
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(img)
	ld.d	$a1, $a0, 128
	ld.w	$a2, $a0, 76
	ld.w	$a3, $a0, 60
	ld.d	$a0, $a1, 0
	mul.w	$a2, $a3, $a2
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(img)
	ld.d	$a1, $a0, 136
	ld.w	$a2, $a0, 76
	ld.w	$a3, $a0, 60
	ld.d	$a0, $a1, 0
	mul.w	$a2, $a3, $a2
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(img)
	ld.w	$a1, $a0, 76
	ld.w	$a2, $a0, 60
	addi.d	$a0, $s5, 1600
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a0, $a0, 4708
	beqz	$a0, .LBB4_28
# %bb.27:
	ld.d	$a0, $s2, %pc_lo12(img)
	ld.w	$a1, $a0, 76
	ld.w	$a2, $a0, 60
	addi.d	$a0, $s4, 1600
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(img)
	ld.w	$a1, $a0, 76
	ld.w	$a2, $a0, 60
	pcalau12i	$a0, %pc_hi20(rddata_top_field_mb+1600)
	addi.d	$a0, $a0, %pc_lo12(rddata_top_field_mb+1600)
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(img)
	ld.w	$a1, $a0, 76
	ld.w	$a2, $a0, 60
	pcalau12i	$a0, %pc_hi20(rddata_bot_field_mb+1600)
	addi.d	$a0, $a0, %pc_lo12(rddata_bot_field_mb+1600)
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
.LBB4_28:
	ld.d	$a0, $s2, %pc_lo12(img)
	ori	$a1, $s3, 3240
	ldx.w	$a2, $a0, $a1
	ldptr.w	$a1, $a0, 15352
	addi.d	$a0, $a0, 152
	addi.w	$a3, $a2, 4
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(get_mem3Dint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(img)
	ldptr.w	$a3, $a0, 15452
	ori	$a1, $s3, 3192
	add.d	$a0, $a0, $a1
	addi.w	$a2, $a3, 52
	ori	$a1, $zero, 10
	pcaddu18i	$ra, %call36(get_mem2Ddb_offset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(img)
	ldptr.w	$a4, $a0, 15452
	ori	$a1, $s3, 3200
	add.d	$a0, $a0, $a1
	addi.w	$a2, $a4, 52
	ori	$a1, $zero, 10
	ori	$a3, $zero, 3
	pcaddu18i	$ra, %call36(get_mem3Ddb_offset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(img)
	ldptr.w	$a4, $a0, 15452
	ori	$a1, $s3, 3208
	add.d	$a0, $a0, $a1
	addi.w	$a2, $a4, 52
	ori	$a1, $zero, 10
	ori	$a3, $zero, 3
	pcaddu18i	$ra, %call36(get_mem3Dint_offset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a0, $a0, 4172
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB4_30
# %bb.29:
	ld.d	$a0, $s2, %pc_lo12(img)
	ldptr.w	$a3, $a0, 15452
	ori	$a1, $s3, 3216
	add.d	$a0, $a0, $a1
	addi.w	$a2, $a3, 52
	ori	$a1, $zero, 10
	pcaddu18i	$ra, %call36(get_mem2Ddb_offset)
	jirl	$ra, $ra, 0
.LBB4_30:
	pcaddu18i	$ra, %call36(CAVLC_init)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, %pc_lo12(input)
	ld.d	$a3, $s2, %pc_lo12(img)
	ldptr.w	$a4, $a2, 2096
	ldptr.w	$a0, $a3, 15336
	ldptr.w	$a1, $a3, 15344
	ldptr.w	$a2, $a2, 4744
	sltu	$a4, $zero, $a4
	stptr.w	$a4, $a3, 15612
	st.w	$zero, $a3, 112
	pcaddu18i	$ra, %call36(RandomIntraInit)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(InitSEIMessages)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a1, $a0, 4748
	beqz	$a1, .LBB4_32
# %bb.31:
	ori	$a1, $s0, 660
	ldx.w	$a1, $a0, $a1
	ori	$a2, $s0, 664
	ldx.w	$a2, $a0, $a2
	slli.d	$a1, $a1, 1
	stptr.w	$a1, $a0, 4756
	slli.d	$a1, $a2, 1
	b	.LBB4_33
.LBB4_32:
	move	$a1, $zero
	stptr.d	$zero, $a0, 4752
.LBB4_33:
	stptr.w	$a1, $a0, 4760
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
	.size	init_img, .Lfunc_end4-init_img
                                        # -- End function
	.globl	malloc_picture                  # -- Begin function malloc_picture
	.p2align	5
	.type	malloc_picture,@function
malloc_picture:                         # @malloc_picture
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ori	$a1, $zero, 824
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_2
# %bb.1:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB5_2:
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
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
	.size	malloc_picture, .Lfunc_end5-malloc_picture
                                        # -- End function
	.globl	init_global_buffers             # -- Begin function init_global_buffers
	.p2align	5
	.type	init_global_buffers,@function
init_global_buffers:                    # @init_global_buffers
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
	pcalau12i	$s1, %pc_hi20(img)
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a0, $a0, 32
	slli.w	$a0, $a0, 1
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(last_P_no_frm)
	ld.d	$a1, $a1, %got_pc_lo12(last_P_no_frm)
	st.d	$a0, $a1, 0
	beqz	$a0, .LBB6_2
# %bb.1:
	pcalau12i	$s2, %pc_hi20(active_sps)
	ld.d	$a0, $s2, %pc_lo12(active_sps)
	ld.w	$a0, $a0, 1148
	bnez	$a0, .LBB6_5
	b	.LBB6_3
.LBB6_2:
	pcalau12i	$a0, %pc_hi20(.L.str.202)
	addi.d	$a0, $a0, %pc_lo12(.L.str.202)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(active_sps)
	ld.d	$a0, $s2, %pc_lo12(active_sps)
	ld.w	$a0, $a0, 1148
	bnez	$a0, .LBB6_5
.LBB6_3:
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a0, $a0, 32
	slli.w	$a0, $a0, 2
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(last_P_no_fld)
	ld.d	$a1, $a1, %got_pc_lo12(last_P_no_fld)
	st.d	$a0, $a1, 0
	bnez	$a0, .LBB6_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.202)
	addi.d	$a0, $a0, %pc_lo12(.L.str.202)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB6_5:
	pcaddu18i	$ra, %call36(init_orig_buffers)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(img)
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3064
	ldx.w	$a1, $a1, $a2
	move	$s0, $a0
	addi.w	$a1, $a1, 1
	pcalau12i	$a0, %pc_hi20(PicPos)
	addi.d	$fp, $a0, %pc_lo12(PicPos)
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_mem2Dint)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(img)
	ldptr.w	$a2, $a1, 15352
	add.d	$s3, $a0, $s0
	bltz	$a2, .LBB6_8
# %bb.6:                                # %.lr.ph
	ld.d	$a0, $fp, 0
	move	$a2, $zero
	addi.w	$a3, $zero, -1
	.p2align	4, , 16
.LBB6_7:                                # =>This Inner Loop Header: Depth=1
	ldptr.w	$a4, $a1, 15336
	ld.d	$a5, $a0, 0
	mod.wu	$a4, $a2, $a4
	st.w	$a4, $a5, 0
	ldptr.w	$a4, $a1, 15336
	div.wu	$a4, $a2, $a4
	st.w	$a4, $a5, 4
	ldptr.w	$a4, $a1, 15352
	addi.d	$a3, $a3, 1
	addi.w	$a2, $a2, 1
	addi.d	$a0, $a0, 8
	blt	$a3, $a4, .LBB6_7
.LBB6_8:                                # %._crit_edge
	pcalau12i	$s0, %pc_hi20(input)
	ld.d	$a1, $s0, %pc_lo12(input)
	ldptr.w	$a0, $a1, 2928
	bnez	$a0, .LBB6_11
# %bb.9:
	ldptr.w	$a0, $a1, 2932
	bnez	$a0, .LBB6_11
# %bb.10:
	ld.w	$a0, $a1, 1576
	beqz	$a0, .LBB6_12
.LBB6_11:
	pcalau12i	$a0, %pc_hi20(wp_weight)
	addi.d	$a0, $a0, %pc_lo12(wp_weight)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 32
	ori	$a3, $zero, 3
	pcaddu18i	$ra, %call36(get_mem3Dint)
	jirl	$ra, $ra, 0
	add.d	$fp, $a0, $s3
	pcalau12i	$a0, %pc_hi20(wp_offset)
	addi.d	$a0, $a0, %pc_lo12(wp_offset)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 32
	ori	$a3, $zero, 3
	pcaddu18i	$ra, %call36(get_mem3Dint)
	jirl	$ra, $ra, 0
	add.d	$fp, $fp, $a0
	pcalau12i	$a0, %pc_hi20(wbp_weight)
	addi.d	$a0, $a0, %pc_lo12(wbp_weight)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 32
	ori	$a3, $zero, 32
	ori	$a4, $zero, 3
	pcaddu18i	$ra, %call36(get_mem4Dint)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, %pc_lo12(input)
	add.d	$s3, $fp, $a0
.LBB6_12:
	ldptr.w	$a0, $a1, 2096
	bnez	$a0, .LBB6_14
# %bb.13:
	ldptr.w	$a0, $a1, 2964
	blez	$a0, .LBB6_15
.LBB6_14:
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a2, $a0, 76
	ld.w	$a3, $a0, 60
	pcalau12i	$a0, %pc_hi20(direct_ref_idx)
	addi.d	$a0, $a0, %pc_lo12(direct_ref_idx)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(get_mem3D)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, %pc_lo12(img)
	ld.w	$a1, $a2, 76
	ld.w	$a2, $a2, 60
	add.d	$fp, $a0, $s3
	pcalau12i	$a0, %pc_hi20(direct_pdir)
	addi.d	$a0, $a0, %pc_lo12(direct_pdir)
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, %pc_lo12(input)
	add.d	$s3, $fp, $a0
.LBB6_15:
	ldptr.w	$a0, $a1, 4168
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB6_22
# %bb.16:
	pcalau12i	$s4, %pc_hi20(decs)
	ld.d	$a0, $s4, %pc_lo12(decs)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(get_mem2Dint)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, %pc_lo12(input)
	ldptr.w	$fp, $a1, 4728
	add.d	$s3, $a0, $s3
	ori	$a1, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, %pc_lo12(decs)
	st.d	$a0, $a1, 16
	bnez	$a0, .LBB6_18
# %bb.17:
	pcalau12i	$a0, %pc_hi20(.L.str.203)
	addi.d	$a0, $a0, %pc_lo12(.L.str.203)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(input)
	lu12i.w	$a1, 1
	ori	$a1, $a1, 632
	ldx.w	$fp, $a0, $a1
.LBB6_18:
	blez	$fp, .LBB6_21
# %bb.19:                               # %.lr.ph54.preheader
	move	$fp, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB6_20:                               # %.lr.ph54
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, %pc_lo12(decs)
	ld.d	$a1, $s1, %pc_lo12(img)
	ld.d	$a0, $a0, 16
	ld.w	$a4, $a1, 32
	ld.w	$a2, $a1, 68
	ld.w	$a3, $a1, 52
	add.d	$a0, $a0, $fp
	addi.w	$a1, $a4, 1
	pcaddu18i	$ra, %call36(get_mem3Dpel)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, %pc_lo12(input)
	ldptr.w	$a1, $a1, 4728
	add.d	$s3, $a0, $s3
	addi.d	$s5, $s5, 1
	addi.d	$fp, $fp, 8
	blt	$s5, $a1, .LBB6_20
.LBB6_21:                               # %._crit_edge55
	ld.d	$a0, $s4, %pc_lo12(decs)
	addi.d	$a0, $a0, 32
	ori	$a1, $zero, 4
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(get_mem2Dpel)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, %pc_lo12(input)
	ld.d	$a3, $s1, %pc_lo12(img)
	ld.d	$a4, $s4, %pc_lo12(decs)
	ldptr.w	$a1, $a1, 4728
	ld.w	$a2, $a3, 68
	ld.w	$a3, $a3, 52
	add.d	$fp, $a0, $s3
	addi.d	$a0, $a4, 8
	pcaddu18i	$ra, %call36(get_mem3Dpel)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, %pc_lo12(input)
	ld.d	$a3, $s1, %pc_lo12(img)
	ld.d	$a4, $s4, %pc_lo12(decs)
	ldptr.w	$a1, $a1, 4728
	ld.w	$a2, $a3, 68
	ld.w	$a3, $a3, 52
	add.d	$fp, $fp, $a0
	addi.d	$a0, $a4, 24
	pcaddu18i	$ra, %call36(get_mem3Dpel)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, %pc_lo12(img)
	ld.d	$a3, $s4, %pc_lo12(decs)
	ldptr.w	$a1, $a2, 15344
	ldptr.w	$a2, $a2, 15336
	add.d	$fp, $fp, $a0
	addi.d	$a0, $a3, 40
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, %pc_lo12(img)
	ld.d	$a3, $s4, %pc_lo12(decs)
	ldptr.w	$a1, $a2, 15344
	ldptr.w	$a2, $a2, 15336
	add.d	$fp, $fp, $a0
	addi.d	$a0, $a3, 48
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, %pc_lo12(input)
	add.d	$s3, $fp, $a0
.LBB6_22:
	ldptr.w	$a0, $a1, 4732
	beqz	$a0, .LBB6_24
# %bb.23:
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a1, $a0, 68
	ld.w	$a2, $a0, 52
	pcalau12i	$a0, %pc_hi20(pixel_map)
	addi.d	$a0, $a0, %pc_lo12(pixel_map)
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(img)
	ld.w	$a2, $a1, 68
	add.d	$fp, $a0, $s3
	ld.w	$a0, $a1, 52
	bstrpick.d	$a1, $a2, 62, 60
	add.w	$a1, $a2, $a1
	srai.d	$a1, $a1, 3
	bstrpick.d	$a2, $a0, 62, 60
	add.w	$a0, $a0, $a2
	srai.d	$a2, $a0, 3
	pcalau12i	$a0, %pc_hi20(refresh_map)
	addi.d	$a0, $a0, %pc_lo12(refresh_map)
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
	add.d	$s3, $fp, $a0
.LBB6_24:
	ld.d	$a0, $s2, %pc_lo12(active_sps)
	ld.w	$a0, $a0, 1148
	bnez	$a0, .LBB6_27
# %bb.25:
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a1, $a0, 68
	ld.w	$a2, $a0, 52
	pcalau12i	$a0, %pc_hi20(imgY_com)
	addi.d	$a0, $a0, %pc_lo12(imgY_com)
	pcaddu18i	$ra, %call36(get_mem2Dpel)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(img)
	ldptr.w	$a2, $a1, 15536
	add.d	$s3, $a0, $s3
	beqz	$a2, .LBB6_27
# %bb.26:
	ld.w	$a2, $a1, 80
	ld.w	$a3, $a1, 64
	pcalau12i	$a0, %pc_hi20(imgUV_com)
	addi.d	$a0, $a0, %pc_lo12(imgUV_com)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(get_mem3Dpel)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
.LBB6_27:
	ld.d	$a0, $s0, %pc_lo12(input)
	ldptr.w	$a0, $a0, 5244
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB6_32
# %bb.28:
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB6_31
# %bb.29:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB6_34
# %bb.30:
	pcaddu18i	$ra, %call36(UMHEX_get_mem)
	jirl	$ra, $ra, 0
	b	.LBB6_33
.LBB6_31:
	pcaddu18i	$ra, %call36(smpUMHEX_init)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(smpUMHEX_get_mem)
	jirl	$ra, $ra, 0
	b	.LBB6_33
.LBB6_32:
	pcaddu18i	$ra, %call36(EPZSInit)
	jirl	$ra, $ra, 0
.LBB6_33:
	add.d	$s3, $a0, $s3
.LBB6_34:
	ld.d	$a0, $s0, %pc_lo12(input)
	ldptr.w	$a1, $a0, 5116
	beqz	$a1, .LBB6_38
# %bb.35:
	pcalau12i	$a0, %pc_hi20(generic_RC)
	addi.d	$a0, $a0, %pc_lo12(generic_RC)
	pcaddu18i	$ra, %call36(generic_alloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(quadratic_RC)
	addi.d	$a0, $a0, %pc_lo12(quadratic_RC)
	pcaddu18i	$ra, %call36(rc_alloc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(input)
	ldptr.w	$a1, $a0, 2940
	bnez	$a1, .LBB6_37
# %bb.36:
	ldptr.w	$a1, $a0, 4708
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB6_38
.LBB6_37:
	pcalau12i	$a0, %pc_hi20(generic_RC_init)
	addi.d	$a0, $a0, %pc_lo12(generic_RC_init)
	pcaddu18i	$ra, %call36(generic_alloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(quadratic_RC_init)
	addi.d	$a0, $a0, %pc_lo12(quadratic_RC_init)
	pcaddu18i	$ra, %call36(rc_alloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(generic_RC_best)
	addi.d	$a0, $a0, %pc_lo12(generic_RC_best)
	pcaddu18i	$ra, %call36(generic_alloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(quadratic_RC_best)
	addi.d	$a0, $a0, %pc_lo12(quadratic_RC_best)
	pcaddu18i	$ra, %call36(rc_alloc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(input)
.LBB6_38:
	ldptr.w	$a1, $a0, 5084
	ld.d	$a2, $s1, %pc_lo12(img)
	beqz	$a1, .LBB6_40
# %bb.39:
	ld.w	$a1, $a2, 68
	ld.w	$a2, $a0, 56
	pcalau12i	$a0, %pc_hi20(imgY_tmp)
	addi.d	$a0, $a0, %pc_lo12(imgY_tmp)
	pcaddu18i	$ra, %call36(get_mem2Dpel)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, %pc_lo12(input)
	ld.wu	$a2, $a1, 60
	add.d	$s2, $a0, $s3
	ld.wu	$a0, $a1, 56
	srli.d	$a1, $a2, 31
	add.w	$a1, $a2, $a1
	srai.d	$a1, $a1, 1
	srli.d	$a2, $a0, 31
	add.w	$a0, $a0, $a2
	srai.d	$a2, $a0, 1
	pcalau12i	$a0, %pc_hi20(imgUV_tmp)
	addi.d	$fp, $a0, %pc_lo12(imgUV_tmp)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_mem2Dpel)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, %pc_lo12(input)
	ld.wu	$a2, $a1, 60
	add.d	$s0, $s2, $a0
	ld.wu	$a0, $a1, 56
	srli.d	$a1, $a2, 31
	add.w	$a1, $a2, $a1
	srai.d	$a1, $a1, 1
	srli.d	$a2, $a0, 31
	add.w	$a0, $a0, $a2
	srai.d	$a2, $a0, 1
	addi.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(get_mem2Dpel)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, %pc_lo12(img)
	add.d	$s3, $s0, $a0
.LBB6_40:
	ld.w	$a1, $a2, 72
	ld.w	$a2, $a2, 56
	pcalau12i	$a0, %pc_hi20(imgY_sub_tmp)
	addi.d	$a0, $a0, %pc_lo12(imgY_sub_tmp)
	pcaddu18i	$ra, %call36(get_mem2Dint)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(img)
	add.w	$a0, $a0, $s3
	ld.w	$a2, $a1, 52
	ld.w	$a1, $a1, 64
	pcalau12i	$a3, %pc_hi20(img_pad_size_uv_x)
	ld.w	$a3, $a3, %pc_lo12(img_pad_size_uv_x)
	addi.d	$a2, $a2, 40
	pcalau12i	$a4, %pc_hi20(img_padded_size_x)
	st.w	$a2, $a4, %pc_lo12(img_padded_size_x)
	alsl.d	$a1, $a3, $a1, 1
	pcalau12i	$a2, %pc_hi20(img_cr_padded_size_x)
	st.w	$a1, $a2, %pc_lo12(img_cr_padded_size_x)
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
.Lfunc_end6:
	.size	init_global_buffers, .Lfunc_end6-init_global_buffers
                                        # -- End function
	.globl	chroma_mc_setup                 # -- Begin function chroma_mc_setup
	.p2align	5
	.type	chroma_mc_setup,@function
chroma_mc_setup:                        # @chroma_mc_setup
# %bb.0:
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	ldptr.w	$a1, $a0, 15536
	ori	$a0, $zero, 2
	beq	$a1, $a0, .LBB7_3
# %bb.1:
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB7_4
# %bb.2:
	pcalau12i	$a0, %pc_hi20(img_pad_size_uv_x)
	ori	$a1, $zero, 10
	st.w	$a1, $a0, %pc_lo12(img_pad_size_uv_x)
	pcalau12i	$a0, %pc_hi20(img_pad_size_uv_y)
	st.w	$a1, $a0, %pc_lo12(img_pad_size_uv_y)
	pcalau12i	$a0, %pc_hi20(chroma_mask_mv_y)
	ori	$a1, $zero, 7
	st.b	$a1, $a0, %pc_lo12(chroma_mask_mv_y)
	pcalau12i	$a0, %pc_hi20(chroma_mask_mv_x)
	st.b	$a1, $a0, %pc_lo12(chroma_mask_mv_x)
	pcalau12i	$a0, %pc_hi20(chroma_shift_x)
	ori	$a1, $zero, 3
	st.w	$a1, $a0, %pc_lo12(chroma_shift_x)
	pcalau12i	$a0, %pc_hi20(chroma_shift_y)
	st.w	$a1, $a0, %pc_lo12(chroma_shift_y)
	ori	$a1, $zero, 1
	ori	$a0, $zero, 2
	b	.LBB7_6
.LBB7_3:
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(img_pad_size_uv_x)
	ori	$a3, $zero, 10
	st.w	$a3, $a2, %pc_lo12(img_pad_size_uv_x)
	pcalau12i	$a2, %pc_hi20(img_pad_size_uv_y)
	ori	$a3, $zero, 20
	st.w	$a3, $a2, %pc_lo12(img_pad_size_uv_y)
	pcalau12i	$a2, %pc_hi20(chroma_mask_mv_x)
	ori	$a3, $zero, 7
	st.b	$a3, $a2, %pc_lo12(chroma_mask_mv_x)
	pcalau12i	$a2, %pc_hi20(chroma_mask_mv_y)
	ori	$a3, $zero, 3
	st.b	$a3, $a2, %pc_lo12(chroma_mask_mv_y)
	pcalau12i	$a2, %pc_hi20(chroma_shift_y)
	st.w	$a0, $a2, %pc_lo12(chroma_shift_y)
	b	.LBB7_5
.LBB7_4:
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(img_pad_size_uv_x)
	ori	$a3, $zero, 20
	st.w	$a3, $a2, %pc_lo12(img_pad_size_uv_x)
	pcalau12i	$a2, %pc_hi20(img_pad_size_uv_y)
	st.w	$a3, $a2, %pc_lo12(img_pad_size_uv_y)
	pcalau12i	$a2, %pc_hi20(chroma_mask_mv_y)
	ori	$a3, $zero, 3
	st.b	$a3, $a2, %pc_lo12(chroma_mask_mv_y)
	pcalau12i	$a2, %pc_hi20(chroma_mask_mv_x)
	st.b	$a3, $a2, %pc_lo12(chroma_mask_mv_x)
	pcalau12i	$a2, %pc_hi20(chroma_shift_y)
	ori	$a3, $zero, 2
	st.w	$a3, $a2, %pc_lo12(chroma_shift_y)
.LBB7_5:
	pcalau12i	$a2, %pc_hi20(chroma_shift_x)
	st.w	$a3, $a2, %pc_lo12(chroma_shift_x)
.LBB7_6:
	pcalau12i	$a2, %pc_hi20(shift_cr_y)
	st.w	$a1, $a2, %pc_lo12(shift_cr_y)
	pcalau12i	$a1, %pc_hi20(shift_cr_x)
	st.w	$a0, $a1, %pc_lo12(shift_cr_x)
	ret
.Lfunc_end7:
	.size	chroma_mc_setup, .Lfunc_end7-chroma_mc_setup
                                        # -- End function
	.globl	SetImgType                      # -- Begin function SetImgType
	.p2align	5
	.type	SetImgType,@function
SetImgType:                             # @SetImgType
# %bb.0:
	pcalau12i	$a0, %pc_hi20(input)
	ld.d	$a1, $a0, %pc_lo12(input)
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	ld.w	$a4, $a1, 1560
	ld.w	$a2, $a0, 0
	pcalau12i	$a3, %pc_hi20(start_frame_no_in_this_IGOP)
	ld.w	$a3, $a3, %pc_lo12(start_frame_no_in_this_IGOP)
	beqz	$a4, .LBB8_3
# %bb.1:
	sub.w	$a5, $a2, $a3
	mod.w	$a4, $a5, $a4
	bnez	$a4, .LBB8_4
# %bb.2:
	ori	$a4, $zero, 2
	st.w	$a4, $a0, 20
	ret
.LBB8_3:
	ori	$a4, $zero, 2
	beq	$a2, $a3, .LBB8_7
.LBB8_4:
	ldptr.w	$a4, $a1, 2136
	beqz	$a4, .LBB8_6
# %bb.5:
	sub.w	$a2, $a2, $a3
	mod.w	$a2, $a2, $a4
	beqz	$a2, .LBB8_8
.LBB8_6:
	ldptr.w	$a1, $a1, 2964
	addi.d	$a1, $a1, -2
	sltui	$a4, $a1, 1
.LBB8_7:
	st.w	$a4, $a0, 20
	ret
.LBB8_8:
	ori	$a4, $zero, 3
	st.w	$a4, $a0, 20
	ret
.Lfunc_end8:
	.size	SetImgType, .Lfunc_end8-SetImgType
                                        # -- End function
	.globl	Init_redundant_frame            # -- Begin function Init_redundant_frame
	.p2align	5
	.type	Init_redundant_frame,@function
Init_redundant_frame:                   # @Init_redundant_frame
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(input)
	ld.d	$a0, $fp, %pc_lo12(input)
	ldptr.w	$a1, $a0, 5084
	beqz	$a1, .LBB9_11
# %bb.1:
	ldptr.w	$a1, $a0, 2096
	beqz	$a1, .LBB9_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.208)
	addi.d	$a0, $a0, %pc_lo12(.L.str.208)
	ori	$a1, $zero, 100
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
.LBB9_3:
	ldptr.w	$a1, $a0, 4704
	beqz	$a1, .LBB9_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.209)
	addi.d	$a0, $a0, %pc_lo12(.L.str.209)
	ori	$a1, $zero, 100
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
.LBB9_5:
	ld.w	$a2, $a0, 32
	ldptr.w	$a1, $a0, 5764
	lu12i.w	$s0, 1
	bge	$a2, $a1, .LBB9_7
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.210)
	addi.d	$a0, $a0, %pc_lo12(.L.str.210)
	ori	$a1, $zero, 100
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
	ori	$a1, $s0, 1668
	ldx.w	$a1, $a0, $a1
.LBB9_7:
	ori	$a2, $s0, 1664
	ldx.wu	$a2, $a0, $a2
	ori	$s0, $zero, 1
	sll.w	$a2, $s0, $a2
	bge	$a1, $a2, .LBB9_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str.211)
	addi.d	$a0, $a0, %pc_lo12(.L.str.211)
	ori	$a1, $zero, 100
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
.LBB9_9:
	ldptr.w	$a1, $a0, 5112
	beq	$a1, $s0, .LBB9_11
# %bb.10:
	pcalau12i	$a0, %pc_hi20(.L.str.212)
	addi.d	$a0, $a0, %pc_lo12(.L.str.212)
	ori	$a1, $zero, 100
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
.LBB9_11:
	pcalau12i	$a1, %pc_hi20(key_frame)
	pcalau12i	$a2, %pc_hi20(img)
	ld.d	$a2, $a2, %pc_lo12(img)
	st.w	$zero, $a1, %pc_lo12(key_frame)
	pcalau12i	$a1, %pc_hi20(redundant_coding)
	st.w	$zero, $a1, %pc_lo12(redundant_coding)
	ld.w	$a1, $a2, 0
	ldptr.w	$a0, $a0, 5764
	mod.w	$a0, $a1, $a0
	pcalau12i	$a1, %pc_hi20(frameNuminGOP)
	st.w	$a0, $a1, %pc_lo12(frameNuminGOP)
	ld.w	$a3, $a2, 0
	stptr.w	$zero, $a2, 15264
	sltui	$a2, $a3, 1
	masknez	$a0, $a0, $a2
	addi.d	$a3, $zero, -1
	maskeqz	$a2, $a3, $a2
	or	$a0, $a2, $a0
	st.w	$a0, $a1, %pc_lo12(frameNuminGOP)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	Init_redundant_frame, .Lfunc_end9-Init_redundant_frame
                                        # -- End function
	.globl	Set_redundant_frame             # -- Begin function Set_redundant_frame
	.p2align	5
	.type	Set_redundant_frame,@function
Set_redundant_frame:                    # @Set_redundant_frame
# %bb.0:
	pcalau12i	$a0, %pc_hi20(input)
	ld.d	$a5, $a0, %pc_lo12(input)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1668
	pcalau12i	$a1, %pc_hi20(frameNuminGOP)
	ld.w	$a3, $a1, %pc_lo12(frameNuminGOP)
	ldx.w	$a4, $a5, $a0
	pcalau12i	$a2, %pc_hi20(redundant_coding)
	pcalau12i	$a0, %pc_hi20(key_frame)
	pcalau12i	$a1, %pc_hi20(redundant_ref_idx)
	bnez	$a3, .LBB10_2
# %bb.1:
	st.w	$zero, $a2, %pc_lo12(redundant_coding)
	ori	$a6, $zero, 1
	st.w	$a6, $a0, %pc_lo12(key_frame)
	st.w	$a4, $a1, %pc_lo12(redundant_ref_idx)
.LBB10_2:
	ldptr.w	$a5, $a5, 5760
	blez	$a5, .LBB10_24
# %bb.3:
	bstrpick.d	$a6, $a4, 31, 31
	add.w	$a6, $a4, $a6
	srai.d	$a6, $a6, 1
	bne	$a3, $a6, .LBB10_5
# %bb.4:
	st.w	$zero, $a2, %pc_lo12(redundant_coding)
	ori	$a6, $zero, 1
	st.w	$a6, $a0, %pc_lo12(key_frame)
	st.w	$a3, $a1, %pc_lo12(redundant_ref_idx)
.LBB10_5:
	ori	$a6, $zero, 1
	beq	$a5, $a6, .LBB10_24
# %bb.6:
	bstrpick.d	$a6, $a4, 62, 61
	add.w	$a6, $a4, $a6
	srai.d	$a6, $a6, 2
	beq	$a3, $a6, .LBB10_8
# %bb.7:
	alsl.d	$a7, $a4, $a4, 1
	alsl.w	$t0, $a4, $a4, 1
	bstrpick.d	$t0, $t0, 62, 61
	add.w	$a7, $a7, $t0
	srai.d	$a7, $a7, 2
	bne	$a3, $a7, .LBB10_9
.LBB10_8:
	st.w	$zero, $a2, %pc_lo12(redundant_coding)
	ori	$a7, $zero, 1
	st.w	$a7, $a0, %pc_lo12(key_frame)
	st.w	$a6, $a1, %pc_lo12(redundant_ref_idx)
.LBB10_9:
	ori	$a6, $zero, 3
	bltu	$a5, $a6, .LBB10_24
# %bb.10:
	bstrpick.d	$a6, $a4, 62, 60
	add.w	$a6, $a4, $a6
	srai.d	$a6, $a6, 3
	beq	$a3, $a6, .LBB10_14
# %bb.11:
	alsl.d	$a7, $a4, $a4, 1
	alsl.w	$t0, $a4, $a4, 1
	bstrpick.d	$t0, $t0, 62, 60
	add.w	$a7, $a7, $t0
	srai.d	$a7, $a7, 3
	beq	$a3, $a7, .LBB10_14
# %bb.12:
	alsl.d	$a7, $a4, $a4, 2
	alsl.w	$t0, $a4, $a4, 2
	bstrpick.d	$t0, $t0, 62, 60
	add.w	$a7, $a7, $t0
	srai.d	$a7, $a7, 3
	beq	$a3, $a7, .LBB10_14
# %bb.13:
	slli.d	$a7, $a4, 3
	sub.w	$a7, $a7, $a4
	bstrpick.d	$t0, $a7, 62, 60
	add.w	$a7, $a7, $t0
	srai.d	$a7, $a7, 3
	bne	$a3, $a7, .LBB10_15
.LBB10_14:
	st.w	$zero, $a2, %pc_lo12(redundant_coding)
	ori	$a7, $zero, 1
	st.w	$a7, $a0, %pc_lo12(key_frame)
	st.w	$a6, $a1, %pc_lo12(redundant_ref_idx)
.LBB10_15:
	ori	$a6, $zero, 3
	beq	$a5, $a6, .LBB10_24
# %bb.16:
	bstrpick.d	$a5, $a4, 62, 59
	add.w	$a5, $a4, $a5
	srai.d	$a5, $a5, 4
	beq	$a3, $a5, .LBB10_23
# %bb.17:
	alsl.d	$a6, $a4, $a4, 1
	alsl.w	$a7, $a4, $a4, 1
	bstrpick.d	$t0, $a7, 62, 59
	add.w	$t0, $a6, $t0
	srai.d	$t0, $t0, 4
	beq	$a3, $t0, .LBB10_23
# %bb.18:
	alsl.d	$t0, $a4, $a4, 2
	alsl.w	$t1, $a4, $a4, 2
	bstrpick.d	$t2, $t1, 62, 59
	add.w	$t2, $t0, $t2
	srai.d	$t2, $t2, 4
	beq	$a3, $t2, .LBB10_23
# %bb.19:
	slli.d	$t2, $a4, 3
	sub.w	$t2, $t2, $a4
	bstrpick.d	$t3, $t2, 62, 59
	add.w	$t2, $t2, $t3
	srai.d	$t2, $t2, 4
	beq	$a3, $t2, .LBB10_23
# %bb.20:
	alsl.d	$t2, $a4, $a4, 3
	alsl.w	$t3, $a4, $a4, 3
	bstrpick.d	$t3, $t3, 62, 59
	add.w	$t2, $t2, $t3
	srai.d	$t2, $t2, 4
	beq	$a3, $t2, .LBB10_23
# %bb.21:
	alsl.d	$t0, $t0, $a4, 1
	alsl.w	$t1, $t1, $a4, 1
	bstrpick.d	$t1, $t1, 62, 59
	add.w	$t0, $t0, $t1
	srai.d	$t0, $t0, 4
	beq	$a3, $t0, .LBB10_23
# %bb.22:
	alsl.d	$a6, $a6, $a4, 2
	alsl.w	$a4, $a7, $a4, 2
	bstrpick.d	$a4, $a4, 62, 59
	add.w	$a4, $a6, $a4
	srai.d	$a4, $a4, 4
	bne	$a3, $a4, .LBB10_24
.LBB10_23:
	st.w	$zero, $a2, %pc_lo12(redundant_coding)
	ori	$a2, $zero, 1
	st.w	$a2, $a0, %pc_lo12(key_frame)
	st.w	$a5, $a1, %pc_lo12(redundant_ref_idx)
.LBB10_24:                              # %.thread26
	ret
.Lfunc_end10:
	.size	Set_redundant_frame, .Lfunc_end10-Set_redundant_frame
                                        # -- End function
	.globl	encode_one_redundant_frame      # -- Begin function encode_one_redundant_frame
	.p2align	5
	.type	encode_one_redundant_frame,@function
encode_one_redundant_frame:             # @encode_one_redundant_frame
# %bb.0:
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	pcalau12i	$a1, %pc_hi20(key_frame)
	st.w	$zero, $a1, %pc_lo12(key_frame)
	pcalau12i	$a1, %pc_hi20(redundant_coding)
	ld.w	$a2, $a0, 20
	ori	$a3, $zero, 1
	st.w	$a3, $a1, %pc_lo12(redundant_coding)
	ori	$a1, $zero, 2
	stptr.w	$a3, $a0, 15264
	bne	$a2, $a1, .LBB11_2
# %bb.1:
	st.w	$zero, $a0, 20
.LBB11_2:
	pcaddu18i	$t8, %call36(encode_one_frame)
	jr	$t8
.Lfunc_end11:
	.size	encode_one_redundant_frame, .Lfunc_end11-encode_one_redundant_frame
                                        # -- End function
	.globl	report_frame_statistic          # -- Begin function report_frame_statistic
	.p2align	5
	.type	report_frame_statistic,@function
report_frame_statistic:                 # @report_frame_statistic
# %bb.0:
	addi.d	$sp, $sp, -1120
	st.d	$ra, $sp, 1112                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1040                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fopen64)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_2
# %bb.1:
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fopen64)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB12_5
	b	.LBB12_4
.LBB12_2:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fopen64)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_4
# %bb.3:
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$s0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 468
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ori	$a1, $zero, 468
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 468
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB12_5
.LBB12_4:
	pcalau12i	$a0, %pc_hi20(errortext)
	addi.d	$fp, $a0, %pc_lo12(errortext)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a2, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a3, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 300
	move	$a0, $fp
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 500
	move	$a0, $fp
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	move	$fp, $zero
.LBB12_5:
	pcalau12i	$s4, %pc_hi20(frame_statistic_start)
	ld.w	$a0, $s4, %pc_lo12(frame_statistic_start)
	beqz	$a0, .LBB12_7
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 472
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 472
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB12_7:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a2, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a3, $a0, %pc_lo12(.L.str.16)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1008
	addi.d	$a0, $sp, 1008
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1008
	pcaddu18i	$ra, %call36(localtime)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a2, $a0, %pc_lo12(.L.str.17)
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 1000
	move	$a3, $s0
	pcaddu18i	$ra, %call36(strftime)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	addi.d	$a2, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 1000
	move	$a3, $s0
	pcaddu18i	$ra, %call36(strftime)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	addi.d	$a2, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(input)
	ld.d	$a0, $s1, %pc_lo12(input)
	addi.d	$s0, $a0, 280
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -20
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	ldx.b	$a0, $s0, $a0
	st.b	$a0, $sp, 1020
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -20
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	add.d	$a0, $a0, $s0
	ld.b	$a0, $a0, 1
	st.b	$a0, $sp, 1021
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -20
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	add.d	$a0, $a0, $s0
	ld.b	$a0, $a0, 2
	st.b	$a0, $sp, 1022
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -20
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	add.d	$a0, $a0, $s0
	ld.b	$a0, $a0, 3
	st.b	$a0, $sp, 1023
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -20
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	add.d	$a0, $a0, $s0
	ld.b	$a0, $a0, 4
	st.b	$a0, $sp, 1024
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -20
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	add.d	$a0, $a0, $s0
	ld.b	$a0, $a0, 5
	st.b	$a0, $sp, 1025
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -20
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	add.d	$a0, $a0, $s0
	ld.b	$a0, $a0, 6
	st.b	$a0, $sp, 1026
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -20
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	add.d	$a0, $a0, $s0
	ld.b	$a0, $a0, 7
	st.b	$a0, $sp, 1027
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -20
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	add.d	$a0, $a0, $s0
	ld.b	$a0, $a0, 8
	st.b	$a0, $sp, 1028
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -20
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	add.d	$a0, $a0, $s0
	ld.b	$a0, $a0, 9
	st.b	$a0, $sp, 1029
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -20
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	add.d	$a0, $a0, $s0
	ld.b	$a0, $a0, 10
	st.b	$a0, $sp, 1030
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -20
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	add.d	$a0, $a0, $s0
	ld.b	$a0, $a0, 11
	st.b	$a0, $sp, 1031
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -20
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	add.d	$a0, $a0, $s0
	ld.b	$a0, $a0, 12
	st.b	$a0, $sp, 1032
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -20
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	add.d	$a0, $a0, $s0
	ld.b	$a0, $a0, 13
	st.b	$a0, $sp, 1033
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -20
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	add.d	$a0, $a0, $s0
	ld.b	$a0, $a0, 14
	st.b	$a0, $sp, 1034
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -20
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	add.d	$a0, $a0, $s0
	ld.b	$a0, $a0, 15
	st.b	$a0, $sp, 1035
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -20
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	add.d	$a0, $a0, $s0
	ld.b	$a0, $a0, 16
	st.b	$a0, $sp, 1036
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -20
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	add.d	$a0, $a0, $s0
	ld.b	$a0, $a0, 17
	st.b	$a0, $sp, 1037
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -20
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	add.d	$a0, $a0, $s0
	ld.b	$a0, $a0, 18
	st.b	$a0, $sp, 1038
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -20
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	add.d	$a0, $a0, $s0
	ld.b	$a0, $a0, 19
	st.b	$a0, $sp, 1039
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	addi.d	$a2, $sp, 1020
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(frame_no)
	ld.w	$a2, $a0, %pc_lo12(frame_no)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$s0, $a0, %pc_lo12(.L.str.22)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(img)
	ld.d	$a0, $s2, %pc_lo12(img)
	ld.w	$a2, $a0, 36
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a2, $a0, 4704
	ldptr.w	$a3, $a0, 4708
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(img)
	ld.w	$a1, $a0, 0
	pcalau12i	$s5, %pc_hi20(stats)
	bnez	$a1, .LBB12_9
# %bb.8:
	ldptr.w	$a0, $a0, 15332
	beqz	$a0, .LBB12_11
.LBB12_9:
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 24
	pcalau12i	$a1, %pc_hi20(report_frame_statistic.last_bit_ctr_n)
	ld.d	$a2, $a1, %pc_lo12(report_frame_statistic.last_bit_ctr_n)
	sub.w	$a2, $a0, $a2
	st.d	$a0, $a1, %pc_lo12(report_frame_statistic.last_bit_ctr_n)
.LBB12_10:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(snr)
	ld.d	$a0, $a0, %pc_lo12(snr)
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a0, 4
	fld.s	$fa2, $a0, 8
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	movfr2gr.d	$a4, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 1072
	pcalau12i	$a1, %pc_hi20(report_frame_statistic.last_mode_use)
	addi.d	$s0, $a1, %pc_lo12(report_frame_statistic.last_mode_use)
	ld.d	$a1, $s0, 312
	sub.d	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$s1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 1104
	ld.d	$a1, $s0, 344
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 1080
	ld.d	$a1, $s0, 320
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a0, $a0, 684
	pcalau12i	$a1, %pc_hi20(report_frame_statistic.last_mode_chroma_use)
	addi.d	$s6, $a1, %pc_lo12(report_frame_statistic.last_mode_chroma_use)
	ld.w	$a1, $s6, 0
	sub.w	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s2, $a0, %pc_lo12(.L.str.27)
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a0, $a0, 688
	ld.w	$a1, $s6, 4
	sub.w	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a0, $a0, 692
	ld.w	$a1, $s6, 8
	sub.w	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a0, $a0, 696
	ld.w	$a1, $s6, 12
	sub.w	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 832
	ld.d	$a1, $s0, 72
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 864
	ld.d	$a1, $s0, 104
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 840
	ld.d	$a1, $s0, 80
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 760
	ld.d	$a1, $s0, 0
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 768
	ld.d	$a1, $s0, 8
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 776
	ld.d	$a1, $s0, 16
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 784
	ld.d	$a1, $s0, 24
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a2, $a0, 88
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a2, $a0, 388
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a2, $a0, 92
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a2, $a0, 392
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a2, $a0, 96
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a2, $a0, 396
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 824
	ld.d	$a1, $s0, 64
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 792
	ld.d	$a1, $s0, 32
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a2, $a0, 100
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a2, $a0, 400
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 800
	ld.d	$a1, $s0, 40
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 808
	ld.d	$a1, $s0, 48
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 816
	ld.d	$a1, $s0, 56
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 952
	ld.d	$a1, $s0, 192
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 984
	ld.d	$a1, $s0, 224
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 960
	ld.d	$a1, $s0, 200
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 880
	ld.d	$a1, $s0, 120
	addi.d	$s3, $s0, 120
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 888
	ld.d	$a1, $s0, 128
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 896
	ld.d	$a1, $s0, 136
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 904
	ld.d	$a1, $s0, 144
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a2, $a0, 144
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a2, $a0, 444
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a2, $a0, 148
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a2, $a0, 448
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a2, $a0, 152
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a2, $a0, 452
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a2, $a0, 156
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a2, $a0, 456
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 944
	ld.d	$a1, $s0, 184
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a1, $a0, 52
	ld.w	$a0, $a0, 56
	pcalau12i	$a2, %pc_hi20(report_frame_statistic.last_b8_mode_0)
	addi.d	$s7, $a2, %pc_lo12(report_frame_statistic.last_b8_mode_0)
	ld.w	$a2, $s7, 8
	ld.w	$a3, $s7, 12
	add.d	$a0, $a0, $a1
	add.d	$a1, $a2, $a3
	sub.w	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a0, $a0, 56
	ld.w	$a1, $s7, 12
	sub.w	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a0, $a0, 52
	ld.w	$a1, $s7, 8
	sub.w	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 912
	ld.d	$a1, $s0, 152
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a2, $a0, 160
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a2, $a0, 460
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 920
	ld.d	$a1, $s0, 160
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 928
	ld.d	$a1, $s0, 168
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.d	$a0, $a0, 936
	ld.d	$a1, $s0, 176
	sub.d	$a2, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s5, %pc_lo12(stats)
	addi.d	$a1, $s1, 1000
	addi.d	$a0, $s0, 240
	ori	$a2, $zero, 120
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s1, 760
	ori	$a2, $zero, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s1, 880
	ori	$a2, $zero, 120
	move	$a0, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 84
	ori	$a2, $zero, 120
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 384
	ori	$a2, $zero, 120
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 52
	vld	$vr0, $s1, 684
	st.d	$a0, $s7, 8
	vst	$vr0, $s6, 0
	st.w	$zero, $s4, %pc_lo12(frame_statistic_start)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1112                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1120
	ret
.LBB12_11:
	ld.d	$a0, $s5, %pc_lo12(stats)
	ld.w	$a2, $a0, 720
	b	.LBB12_10
.Lfunc_end12:
	.size	report_frame_statistic, .Lfunc_end12-report_frame_statistic
                                        # -- End function
	.globl	process_2nd_IGOP                # -- Begin function process_2nd_IGOP
	.p2align	5
	.type	process_2nd_IGOP,@function
process_2nd_IGOP:                       # @process_2nd_IGOP
# %bb.0:
	pcalau12i	$a0, %pc_hi20(input)
	ld.d	$a0, $a0, %pc_lo12(input)
	ldptr.w	$a1, $a0, 4740
	beqz	$a1, .LBB13_4
# %bb.1:
	pcalau12i	$a2, %pc_hi20(img)
	ld.d	$a3, $a2, %pc_lo12(img)
	ld.w	$a2, $a0, 8
	ld.w	$a4, $a3, 0
	addi.w	$a3, $a2, -1
	bne	$a4, $a3, .LBB13_4
# %bb.2:
	pcalau12i	$a4, %pc_hi20(In2ndIGOP)
	ld.w	$a5, $a4, %pc_lo12(In2ndIGOP)
	bnez	$a5, .LBB13_4
# %bb.3:
	ori	$a5, $zero, 1
	ld.w	$a6, $a0, 20
	st.w	$a5, $a4, %pc_lo12(In2ndIGOP)
	pcalau12i	$a4, %pc_hi20(start_frame_no_in_this_IGOP)
	st.w	$a2, $a4, %pc_lo12(start_frame_no_in_this_IGOP)
	addi.d	$a4, $a6, 1
	mul.d	$a3, $a4, $a3
	addi.d	$a3, $a3, 1
	pcalau12i	$a4, %pc_hi20(start_tr_in_this_IGOP)
	st.w	$a3, $a4, %pc_lo12(start_tr_in_this_IGOP)
	add.d	$a1, $a1, $a2
	st.w	$a1, $a0, 8
.LBB13_4:
	ret
.Lfunc_end13:
	.size	process_2nd_IGOP, .Lfunc_end13-process_2nd_IGOP
                                        # -- End function
	.globl	report                          # -- Begin function report
	.p2align	5
	.type	report,@function
report:                                 # @report
# %bb.0:                                # %.preheader150
	addi.d	$sp, $sp, -1856
	st.d	$ra, $sp, 1848                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1840                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1832                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1824                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1816                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1808                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1800                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1792                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1784                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1776                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1768                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1760                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1752                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1744                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1736                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1728                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1720                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1712                 # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(frame_ctr)
	addi.d	$a6, $a0, %pc_lo12(frame_ctr)
	pcalau12i	$s3, %pc_hi20(stats)
	ld.d	$a0, $s3, %pc_lo12(stats)
	ld.d	$a1, $a0, 1360
	ld.d	$a2, $a0, 1368
	ld.w	$a5, $a6, 4
	add.d	$s0, $a1, $a2
	ld.d	$a1, $a0, 1376
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	ld.d	$s6, $a0, 1384
	ld.d	$a1, $a0, 1392
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1400
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1408
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1416
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1424
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1432
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1440
	st.d	$a1, $sp, 472                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1448
	st.d	$a1, $sp, 496                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1456
	st.d	$a1, $sp, 504                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1464
	st.d	$a1, $sp, 512                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1472
	st.d	$a1, $sp, 520                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 2040
	st.d	$a1, $sp, 552                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 2000
	st.d	$a1, $sp, 568                   # 8-byte Folded Spill
	ldptr.d	$a1, $a0, 2080
	st.d	$a1, $sp, 584                   # 8-byte Folded Spill
	ldptr.d	$a1, $a0, 2120
	st.d	$a1, $sp, 616                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1600
	ld.d	$a2, $a0, 1608
	pcalau12i	$s4, %pc_hi20(img)
	ld.d	$a3, $s4, %pc_lo12(img)
	pcalau12i	$s1, %pc_hi20(input)
	ld.d	$a4, $s1, %pc_lo12(input)
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	ld.w	$a1, $a0, 700
	fld.s	$fa0, $a3, 48
	ld.w	$a2, $a4, 20
	ldptr.d	$a3, $a0, 2160
	st.d	$a3, $sp, 608                   # 8-byte Folded Spill
	addi.d	$a1, $a1, 1
	movgr2fr.w	$fa1, $a1
	addi.d	$a1, $a2, 1
	movgr2fr.w	$fa2, $a1
	ld.d	$a1, $a0, 720
	ldptr.d	$a2, $a0, 2200
	st.d	$a2, $sp, 640                   # 8-byte Folded Spill
	ffint.s.w	$fa1, $fa1
	ld.w	$a2, $a4, 8
	movgr2fr.d	$fa3, $a1
	ld.d	$a1, $a0, 728
	fmul.s	$fa0, $fa0, $fa1
	st.d	$a5, $sp, 624                   # 8-byte Folded Spill
	add.d	$a2, $a2, $a5
	movgr2fr.w	$fa1, $a2
	movgr2fr.d	$fa4, $a1
	ld.d	$a1, $a0, 736
	ld.d	$a2, $a0, 1960
	st.d	$a2, $sp, 648                   # 8-byte Folded Spill
	ffint.s.w	$fa2, $fa2
	fdiv.s	$fa0, $fa0, $fa2
	movgr2fr.d	$fa2, $a1
	ld.d	$a1, $a0, 1480
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	ffint.s.l	$fa3, $fa3
	fmul.s	$fa3, $fa0, $fa3
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa3, $fa3, $fa1
	ld.d	$a1, $a0, 1488
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1496
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1504
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1512
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1520
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1528
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1536
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1544
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1552
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1560
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1568
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1576
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1584
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1592
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ldptr.d	$a1, $a0, 2048
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 2008
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ldptr.d	$a1, $a0, 2088
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ldptr.d	$a1, $a0, 2128
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ldptr.d	$a1, $a0, 2168
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ldptr.d	$a1, $a0, 2208
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1968
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1616
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1624
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	ld.d	$s8, $a0, 1632
	ld.d	$a1, $a0, 1640
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1648
	st.d	$a1, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1656
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1664
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1672
	st.d	$a1, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1680
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1688
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1696
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1704
	st.d	$a1, $sp, 480                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1712
	st.d	$a1, $sp, 488                   # 8-byte Folded Spill
	ldptr.d	$a1, $a0, 2056
	st.d	$a1, $sp, 528                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 2016
	st.d	$a1, $sp, 544                   # 8-byte Folded Spill
	ldptr.d	$a1, $a0, 2096
	st.d	$a1, $sp, 560                   # 8-byte Folded Spill
	ldptr.d	$a1, $a0, 2136
	st.d	$a1, $sp, 576                   # 8-byte Folded Spill
	ldptr.d	$a1, $a0, 2176
	st.d	$a1, $sp, 592                   # 8-byte Folded Spill
	ldptr.d	$a1, $a0, 2216
	st.d	$a1, $sp, 600                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 1976
	st.d	$a1, $sp, 632                   # 8-byte Folded Spill
	fst.s	$fa3, $a0, 744
	ffint.s.l	$fa3, $fa4
	fmul.s	$fa3, $fa0, $fa3
	fdiv.s	$fa3, $fa3, $fa1
	fst.s	$fa3, $a0, 748
	ffint.s.l	$fa2, $fa2
	fmul.s	$fa0, $fa0, $fa2
	ld.w	$a1, $a6, 8
	st.d	$a1, $sp, 536                   # 8-byte Folded Spill
	ld.w	$a1, $a6, 0
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	st.d	$a6, $sp, 656                   # 8-byte Folded Spill
	ld.w	$a1, $a6, 12
	st.d	$a1, $sp, 400                   # 8-byte Folded Spill
	fdiv.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 752
	ori	$s2, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s7, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 80
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a1, $a0, 5112
	pcalau12i	$a2, %pc_hi20(DistortionType)
	addi.d	$s5, $a2, %pc_lo12(DistortionType)
	st.d	$s4, $sp, 664                   # 8-byte Folded Spill
	st.d	$s5, $sp, 368                   # 8-byte Folded Spill
	beqz	$a1, .LBB14_58
# %bb.1:
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a1, $s4, %pc_lo12(img)
	ld.w	$a2, $a0, 20
	ld.d	$a0, $s7, 0
	fld.s	$fa0, $a1, 48
	addi.d	$a1, $a2, 1
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a1, $a0, 5780
	ld.d	$a0, $s7, 0
	ori	$s0, $zero, 20
	mul.d	$a1, $a1, $s0
	add.d	$a3, $s5, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$fp, $a1, %pc_lo12(.L.str.32)
	move	$a1, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a1, $a0, 5784
	ld.d	$a0, $s7, 0
	mul.d	$a1, $a1, $s0
	add.d	$a3, $s5, $a1
	ori	$a2, $zero, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a1, $a0, 5788
	ld.d	$a0, $s7, 0
	mul.d	$a1, $a1, $s0
	add.d	$a3, $s5, $a1
	ori	$a2, $zero, 2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a1, $a0, 5792
	ld.d	$a0, $s7, 0
	mul.d	$a1, $a1, $s0
	add.d	$a2, $s5, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a0, $a0, 5776
	ld.d	$a3, $s7, 0
	bne	$a0, $s2, .LBB14_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	ori	$a1, $zero, 43
	b	.LBB14_4
.LBB14_3:
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	ori	$a1, $zero, 39
.LBB14_4:
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.d	$a0, $s7, 0
	ld.w	$a2, $a1, 56
	ld.w	$a3, $a1, 60
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ld.w	$a0, $a0, 68
	ld.d	$a3, $s7, 0
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB14_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	ori	$a1, $zero, 40
	b	.LBB14_7
.LBB14_6:
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	ori	$a1, $zero, 41
.LBB14_7:
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.d	$a0, $s7, 0
	ld.w	$a2, $a1, 28
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$a1, $a1, %pc_lo12(.L.str.39)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.d	$a0, $s7, 0
	ld.w	$a2, $a1, 32
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.w	$a2, $a1, 36
	ld.d	$a0, $s7, 0
	bnez	$a2, .LBB14_9
# %bb.8:
	ld.w	$a2, $a1, 32
.LBB14_9:
	pcalau12i	$a1, %pc_hi20(.L.str.41)
	addi.d	$a1, $a1, %pc_lo12(.L.str.41)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
	ld.w	$a0, $a0, 700
	beqz	$a0, .LBB14_15
# %bb.10:
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.w	$a2, $a1, 40
	ld.d	$a0, $s7, 0
	bnez	$a2, .LBB14_12
# %bb.11:
	ld.w	$a2, $a1, 32
.LBB14_12:
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.w	$a2, $a1, 44
	ld.d	$a0, $s7, 0
	bnez	$a2, .LBB14_14
# %bb.13:
	ld.w	$a2, $a1, 32
.LBB14_14:
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a1, $a1, %pc_lo12(.L.str.43)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB14_15:
	ld.d	$a3, $s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s3, %pc_lo12(stats)
	ld.w	$a0, $s2, 700
	blez	$a0, .LBB14_18
# %bb.16:
	ld.d	$fp, $s1, %pc_lo12(input)
	ldptr.w	$a0, $fp, 2968
	beqz	$a0, .LBB14_21
# %bb.17:
	ld.d	$a0, $s7, 0
	ld.w	$a2, $fp, 12
	ld.w	$a3, $fp, 16
	ldptr.w	$a4, $fp, 2104
	pcalau12i	$a1, %pc_hi20(.L.str.45)
	addi.d	$a1, $a1, %pc_lo12(.L.str.45)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB14_30
.LBB14_18:
	ld.d	$a1, $s1, %pc_lo12(input)
	bnez	$a0, .LBB14_20
# %bb.19:
	ldptr.w	$a0, $a1, 2136
	beqz	$a0, .LBB14_141
.LBB14_20:
	ld.d	$a0, $s7, 0
	ld.w	$a2, $a1, 12
	ld.w	$a3, $a1, 16
	ldptr.w	$a4, $a1, 2140
	ldptr.w	$a5, $a1, 2144
	pcalau12i	$a1, %pc_hi20(.L.str.53)
	addi.d	$a1, $a1, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB14_30
.LBB14_21:                              # %.lr.ph.preheader
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	st.d	$s6, $sp, 112                   # 8-byte Folded Spill
	ori	$a0, $zero, 73
	st.h	$a0, $sp, 672
	ori	$s0, $zero, 79
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$s5, $a0, %pc_lo12(.L.str.47)
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$s4, $a0, %pc_lo12(.L.str.48)
	move	$s8, $zero
	.p2align	4, , 16
.LBB14_22:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ldptr.w	$a0, $fp, 2964
	sltui	$s6, $a0, 1
	addi.d	$a0, $sp, 672
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	sub.w	$a0, $s0, $a0
	srai.d	$a1, $a0, 63
	andn	$a2, $a0, $a1
	masknez	$a0, $s5, $s6
	maskeqz	$a1, $s4, $s6
	or	$a1, $a1, $a0
	addi.d	$a0, $sp, 672
	pcaddu18i	$ra, %call36(strncat)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 700
	addi.w	$s8, $s8, 1
	blt	$s8, $a0, .LBB14_22
# %bb.23:                               # %._crit_edge
	addi.d	$a0, $sp, 672
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 79
	sub.w	$a0, $s0, $a0
	srai.d	$a1, $a0, 63
	andn	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	addi.d	$a0, $sp, 672
	pcaddu18i	$ra, %call36(strncat)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 700
	blez	$a0, .LBB14_26
# %bb.24:                               # %.lr.ph.1.preheader
	move	$s8, $zero
	.p2align	4, , 16
.LBB14_25:                              # %.lr.ph.1
                                        # =>This Inner Loop Header: Depth=1
	ldptr.w	$a0, $fp, 2964
	sltui	$s6, $a0, 1
	addi.d	$a0, $sp, 672
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	sub.w	$a0, $s0, $a0
	srai.d	$a1, $a0, 63
	andn	$a2, $a0, $a1
	masknez	$a0, $s5, $s6
	maskeqz	$a1, $s4, $s6
	or	$a1, $a1, $a0
	addi.d	$a0, $sp, 672
	pcaddu18i	$ra, %call36(strncat)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 700
	addi.w	$s8, $s8, 1
	blt	$s8, $a0, .LBB14_25
.LBB14_26:                              # %._crit_edge.1
	addi.d	$a0, $sp, 672
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	sub.w	$a0, $s0, $a0
	srai.d	$a1, $a0, 63
	andn	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	addi.d	$a0, $sp, 672
	pcaddu18i	$ra, %call36(strncat)
	jirl	$ra, $ra, 0
	ldptr.w	$a1, $fp, 2964
	ld.d	$a0, $s7, 0
	ld.w	$a3, $fp, 12
	ld.w	$a4, $fp, 16
	ldptr.w	$a5, $fp, 2104
	beqz	$a1, .LBB14_28
# %bb.27:
	ori	$a1, $zero, 2108
	ldx.w	$a1, $fp, $a1
	add.w	$a1, $a1, $a5
	srai.d	$a2, $a1, 63
	andn	$a1, $a1, $a2
	slti	$a2, $a1, 51
	maskeqz	$a1, $a1, $a2
	ori	$a5, $zero, 51
	masknez	$a2, $a5, $a2
	or	$a5, $a1, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	b	.LBB14_29
.LBB14_28:
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
.LBB14_29:
	addi.d	$a2, $sp, 672
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
.LBB14_30:
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a0, $a0, 4008
	ld.d	$a3, $s7, 0
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.55)
	addi.d	$a1, $a1, %pc_lo12(.L.str.55)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.54)
	addi.d	$a2, $a2, %pc_lo12(.L.str.54)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.d	$a0, $s7, 0
	ld.w	$a2, $a1, 0
	ld.w	$a3, $a1, 4
	pcalau12i	$a1, %pc_hi20(.L.str.56)
	addi.d	$a1, $a1, %pc_lo12(.L.str.56)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a0, $a0, 5244
	ld.d	$a3, $s7, 0
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB14_36
# %bb.31:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI14_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI14_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB14_32:
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	ori	$a1, $zero, 54
	b	.LBB14_37
.LBB14_33:
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	ori	$a1, $zero, 42
	b	.LBB14_37
.LBB14_34:
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(EPZSOutputStats)
	jirl	$ra, $ra, 0
	b	.LBB14_38
.LBB14_35:
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 41
	b	.LBB14_37
.LBB14_36:
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	ori	$a1, $zero, 49
.LBB14_37:
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB14_38:
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a0, $a0, 4140
	ld.d	$a3, $s7, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB14_41
# %bb.39:
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB14_42
# %bb.40:
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 42
	b	.LBB14_43
.LBB14_41:
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	ori	$a1, $zero, 60
	b	.LBB14_43
.LBB14_42:
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	ori	$a1, $zero, 79
.LBB14_43:
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a0, $a0, 4168
	ld.d	$a3, $s7, 0
	beqz	$a0, .LBB14_45
# %bb.44:
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	ori	$a1, $zero, 42
	b	.LBB14_46
.LBB14_45:
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	ori	$a1, $zero, 46
.LBB14_46:
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a0, $a0, 4016
	ld.d	$a3, $s7, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB14_49
# %bb.47:
	bnez	$a0, .LBB14_50
# %bb.48:
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	ori	$a1, $zero, 50
	b	.LBB14_52
.LBB14_49:
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	b	.LBB14_51
.LBB14_50:
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
.LBB14_51:
	ori	$a1, $zero, 51
.LBB14_52:
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a0, $a0, 4012
	ld.d	$a3, $s7, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB14_55
# %bb.53:
	bnez	$a0, .LBB14_56
# %bb.54:
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	ori	$a1, $zero, 67
	b	.LBB14_57
.LBB14_55:
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	ori	$a1, $zero, 61
	b	.LBB14_57
.LBB14_56:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	ori	$a1, $zero, 51
.LBB14_57:
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB14_58:
	ld.d	$a3, $s7, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	add.d	$fp, $s0, $a0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	add.d	$s0, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	ori	$a1, $zero, 80
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a1, $a0, 5112
	pcalau12i	$s5, %pc_hi20(snr)
	beqz	$a1, .LBB14_60
# %bb.59:
	ld.w	$a1, $a0, 60
	ld.w	$a2, $a0, 56
	mul.d	$a1, $a2, $a1
	lu12i.w	$a2, 1
	ori	$a3, $a2, 1168
	ldx.w	$a3, $a0, $a3
	ori	$a2, $a2, 1172
	ld.d	$a4, $s4, %pc_lo12(img)
	ldx.w	$a0, $a0, $a2
	lu12i.w	$a2, 3
	ori	$a5, $a2, 3232
	ldx.w	$a5, $a4, $a5
	ori	$a2, $a2, 3236
	ldx.w	$a2, $a4, $a2
	mul.d	$a0, $a0, $a3
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	mul.d	$a0, $a5, $a5
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a2, $a2, $a2
	ld.d	$s2, $s5, %pc_lo12(snr)
	move	$s4, $s1
	move	$s1, $s3
	move	$s3, $s0
	move	$s0, $fp
	move	$fp, $s8
	move	$s8, $s5
	move	$s5, $s6
	bstrpick.d	$s6, $a2, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fld.s	$fa1, $s2, 108
	movgr2fr.w	$fs0, $a1
	ffint.d.w	$fa2, $fs0
	movgr2fr.w	$fs3, $zero
	fcmp.ceq.s	$fcc0, $fa1, $fs3
	fcvt.d.s	$fa1, $fa1
	vldi	$vr3, -912
	fsel	$fa1, $fa1, $fa3, $fcc0
	fdiv.d	$fa1, $fa2, $fa1
	fmul.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	vldi	$vr1, -988
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fs2, $fa0
	movgr2fr.d	$fa0, $s6
	move	$s6, $s5
	move	$s5, $s8
	move	$s8, $fp
	move	$fp, $s0
	move	$s0, $s3
	move	$s3, $s1
	move	$s1, $s4
	fld.s	$fa1, $s2, 112
	ffint.d.l	$fs5, $fa0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	movgr2fr.w	$fs1, $a0
	ld.d	$s4, $sp, 664                   # 8-byte Folded Reload
	ffint.d.w	$fs6, $fs1
	fcmp.ceq.s	$fcc0, $fa1, $fs3
	fcvt.d.s	$fa0, $fa1
	vldi	$vr1, -912
	fsel	$fa0, $fa0, $fa1, $fcc0
	fdiv.d	$fa0, $fs6, $fa0
	fmul.d	$fa0, $fa0, $fs5
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s2, 116
	vldi	$vr2, -988
	fmul.d	$fa0, $fa0, $fa2
	fcvt.s.d	$fs4, $fa0
	fcmp.ceq.s	$fcc0, $fa1, $fs3
	fcvt.d.s	$fa0, $fa1
	vldi	$vr1, -912
	fsel	$fa0, $fa0, $fa1, $fcc0
	fdiv.d	$fa0, $fs6, $fa0
	fmul.d	$fa0, $fa0, $fs5
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s2, 84
	ld.d	$a0, $s7, 0
	vldi	$vr2, -988
	fmul.d	$fa0, $fa0, $fa2
	fcvt.s.d	$fs3, $fa0
	fcvt.d.s	$fa0, $fa1
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.74)
	addi.d	$a1, $a1, %pc_lo12(.L.str.74)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(snr)
	fld.s	$fa0, $a0, 88
	ld.d	$a0, $s7, 0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.75)
	addi.d	$a1, $a1, %pc_lo12(.L.str.75)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(snr)
	fld.s	$fa0, $a0, 92
	ld.d	$a0, $s7, 0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a1, $a1, %pc_lo12(.L.str.76)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(snr)
	fld.s	$fa0, $a0, 108
	ld.d	$a0, $s7, 0
	fcvt.d.s	$fa1, $fs2
	ffint.s.w	$fa2, $fs0
	fdiv.s	$fa0, $fa0, $fa2
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa1
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.77)
	addi.d	$a1, $a1, %pc_lo12(.L.str.77)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(snr)
	fld.s	$fa0, $a0, 112
	ld.d	$a0, $s7, 0
	fcvt.d.s	$fa1, $fs4
	ffint.s.w	$fs0, $fs1
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa1
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.78)
	addi.d	$a1, $a1, %pc_lo12(.L.str.78)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(snr)
	fld.s	$fa0, $a0, 116
	ld.d	$a0, $s7, 0
	fcvt.d.s	$fa1, $fs3
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa1
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.79)
	addi.d	$a1, $a1, %pc_lo12(.L.str.79)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB14_60:
	ld.d	$a1, $s3, %pc_lo12(stats)
	move	$a2, $s6
	ld.d	$s6, $sp, 656                   # 8-byte Folded Reload
	ld.w	$a5, $s6, 4
	ld.d	$a4, $a1, 728
	ld.d	$a3, $a1, 720
	ld.d	$a0, $s7, 0
	add.d	$s2, $fp, $a2
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	add.d	$s0, $s0, $a2
	add.d	$a2, $a3, $a4
	beqz	$a5, .LBB14_62
# %bb.61:
	ld.d	$a5, $a1, 736
	ldptr.w	$a6, $a1, 2256
	add.d	$a1, $a2, $a5
	add.d	$fp, $a1, $a6
	pcalau12i	$a1, %pc_hi20(.L.str.80)
	addi.d	$a1, $a1, %pc_lo12(.L.str.80)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
	ld.d	$a1, $s4, %pc_lo12(img)
	ld.d	$a2, $s1, %pc_lo12(input)
	ld.w	$a3, $a0, 700
	fld.s	$fa0, $a1, 48
	ld.w	$a1, $a2, 20
	addi.d	$a2, $a3, 1
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	addi.d	$a1, $a1, 1
	movgr2fr.w	$fa2, $a1
	ld.w	$a1, $s6, 8
	ld.w	$a2, $s6, 0
	fmul.s	$fa0, $fa0, $fa1
	movgr2fr.d	$fa1, $fp
	ffint.s.w	$fa2, $fa2
	add.d	$a1, $a2, $a1
	ld.w	$a2, $s6, 4
	fdiv.s	$fa0, $fa0, $fa2
	ffint.s.l	$fa1, $fa1
	fmul.s	$fa1, $fa0, $fa1
	add.d	$a1, $a1, $a2
	b	.LBB14_63
.LBB14_62:
	ldptr.w	$a5, $a1, 2256
	add.d	$fp, $a2, $a5
	pcalau12i	$a1, %pc_hi20(.L.str.82)
	addi.d	$a1, $a1, %pc_lo12(.L.str.82)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ld.d	$a1, $s4, %pc_lo12(img)
	ld.w	$a2, $a0, 20
	fld.s	$fa0, $a1, 48
	addi.d	$a1, $a2, 1
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	movgr2fr.d	$fa1, $fp
	ld.w	$a1, $a0, 8
	ffint.s.l	$fa1, $fa1
	fmul.s	$fa1, $fa0, $fa1
	ld.d	$a0, $s3, %pc_lo12(stats)
.LBB14_63:
	movgr2fr.w	$fa2, $a1
	ffint.s.w	$fa2, $fa2
	fdiv.s	$fa1, $fa1, $fa2
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	add.d	$s4, $s2, $a1
	add.d	$s2, $s0, $s8
	fst.s	$fa1, $a0, 12
	ld.d	$a0, $s7, 0
	fcvt.d.s	$fa0, $fa0
	lu12i.w	$a1, 280480
	movgr2fr.w	$fs0, $a1
	fdiv.s	$fa1, $fa1, $fs0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a3, $fa1
	movfr2gr.d	$fp, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.81)
	addi.d	$a1, $a1, %pc_lo12(.L.str.81)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a0, $s7, 0
	ld.w	$a2, $a1, 40
	pcalau12i	$a1, %pc_hi20(.L.str.83)
	addi.d	$a1, $a1, %pc_lo12(.L.str.83)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a0, $s7, 0
	ldptr.w	$a2, $a1, 2256
	pcalau12i	$a1, %pc_hi20(.L.str.84)
	addi.d	$a1, $a1, %pc_lo12(.L.str.84)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 80
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	pcalau12i	$a1, %pc_hi20(.L.str.85)
	addi.d	$a1, $a1, %pc_lo12(.L.str.85)
	pcalau12i	$a2, %pc_hi20(.L.str.86)
	addi.d	$a2, $a2, %pc_lo12(.L.str.86)
	pcalau12i	$a3, %pc_hi20(.L.str.15)
	addi.d	$a3, $a3, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a0, $a0, %pc_lo12(.L.str.87)
	pcalau12i	$a1, %pc_hi20(.L.str.88)
	addi.d	$a1, $a1, %pc_lo12(.L.str.88)
	pcaddu18i	$ra, %call36(fopen64)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$s7, %pc_hi20(p_stat)
	st.d	$a0, $s7, %pc_lo12(p_stat)
	bnez	$a0, .LBB14_65
# %bb.64:
	pcalau12i	$a0, %pc_hi20(errortext)
	addi.d	$s0, $a0, %pc_lo12(errortext)
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a2, $a0, %pc_lo12(.L.str.89)
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a3, $a0, %pc_lo12(.L.str.87)
	ori	$a1, $zero, 300
	move	$a0, $s0
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 500
	move	$a0, $s0
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
.LBB14_65:
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	add.d	$s8, $s4, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	add.d	$s4, $s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$s0, $a0, %pc_lo12(.L.str.90)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a0, $a0, %pc_lo12(.L.str.91)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	addi.d	$a2, $a1, 280
	pcalau12i	$a1, %pc_hi20(.L.str.92)
	addi.d	$a1, $a1, %pc_lo12(.L.str.92)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ld.w	$a1, $a0, 8
	ld.w	$a2, $s6, 4
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	add.w	$a2, $a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.93)
	addi.d	$a1, $a1, %pc_lo12(.L.str.93)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	pcalau12i	$a1, %pc_hi20(.L.str.94)
	addi.d	$a1, $a1, %pc_lo12(.L.str.94)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
	fld.s	$fa0, $a0, 744
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.95)
	addi.d	$a1, $a1, %pc_lo12(.L.str.95)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
	fld.s	$fa0, $a0, 748
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.96)
	addi.d	$a1, $a1, %pc_lo12(.L.str.96)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
	ld.w	$a1, $a0, 700
	beqz	$a1, .LBB14_67
# %bb.66:
	fld.s	$fa0, $a0, 752
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.97)
	addi.d	$a1, $a1, %pc_lo12(.L.str.97)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
.LBB14_67:
	fld.s	$fa0, $a0, 12
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	add.d	$s0, $s8, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	add.d	$s2, $s4, $a0
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.98)
	addi.d	$a1, $a1, %pc_lo12(.L.str.98)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a1, $a0, 5780
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ori	$s4, $zero, 20
	mul.d	$a1, $a1, $s4
	ld.d	$s8, $sp, 368                   # 8-byte Folded Reload
	add.d	$a3, $s8, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.99)
	addi.d	$fp, $a1, %pc_lo12(.L.str.99)
	move	$a1, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a1, $a0, 5784
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	mul.d	$a1, $a1, $s4
	add.d	$a3, $s8, $a1
	ori	$a2, $zero, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a1, $a0, 5788
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	mul.d	$a1, $a1, $s4
	add.d	$a3, $s8, $a1
	ori	$a2, $zero, 2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a1, $a0, 5792
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	mul.d	$a1, $a1, $s4
	add.d	$a2, $s8, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a0, $a0, 5776
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB14_69
# %bb.68:
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	ori	$a1, $zero, 43
	b	.LBB14_70
.LBB14_69:
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	ori	$a1, $zero, 39
.LBB14_70:
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$s8, $s6
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.w	$a2, $a1, 56
	ld.w	$a3, $a1, 60
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	add.d	$fp, $s0, $a1
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	add.d	$s0, $s2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.100)
	addi.d	$a1, $a1, %pc_lo12(.L.str.100)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ld.w	$a0, $a0, 68
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	ori	$s6, $zero, 1
	beqz	$a0, .LBB14_72
# %bb.71:
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a0, $a0, %pc_lo12(.L.str.101)
	ori	$a1, $zero, 35
	b	.LBB14_73
.LBB14_72:
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a0, $a0, %pc_lo12(.L.str.102)
	ori	$a1, $zero, 36
.LBB14_73:
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.w	$a2, $a1, 28
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	add.d	$fp, $fp, $a1
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	add.d	$s2, $s0, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.103)
	addi.d	$a1, $a1, %pc_lo12(.L.str.103)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.w	$a2, $a1, 32
	pcalau12i	$a1, %pc_hi20(.L.str.104)
	addi.d	$a1, $a1, %pc_lo12(.L.str.104)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.w	$a2, $a1, 36
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	bnez	$a2, .LBB14_75
# %bb.74:
	ld.w	$a2, $a1, 32
.LBB14_75:
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	add.d	$s0, $fp, $a1
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	add.d	$s2, $s2, $a1
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	add.w	$fp, $a3, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.105)
	addi.d	$a1, $a1, %pc_lo12(.L.str.105)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
	ld.w	$a0, $a0, 700
	beqz	$a0, .LBB14_81
# %bb.76:
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.w	$a2, $a1, 40
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	bnez	$a2, .LBB14_78
# %bb.77:
	ld.w	$a2, $a1, 32
.LBB14_78:
	pcalau12i	$a1, %pc_hi20(.L.str.106)
	addi.d	$a1, $a1, %pc_lo12(.L.str.106)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.w	$a2, $a1, 44
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	bnez	$a2, .LBB14_80
# %bb.79:
	ld.w	$a2, $a1, 32
.LBB14_80:
	pcalau12i	$a1, %pc_hi20(.L.str.107)
	addi.d	$a1, $a1, %pc_lo12(.L.str.107)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB14_81:
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a0, $a0, 4008
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	add.d	$s0, $s0, $a1
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	add.d	$s2, $s2, $a1
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.109)
	addi.d	$a1, $a1, %pc_lo12(.L.str.109)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.108)
	addi.d	$a2, $a2, %pc_lo12(.L.str.108)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 38
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.w	$a2, $a1, 0
	ld.w	$a3, $a1, 4
	pcalau12i	$a1, %pc_hi20(.L.str.110)
	addi.d	$a1, $a1, %pc_lo12(.L.str.110)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a1, $a0, 4708
	beqz	$a1, .LBB14_83
# %bb.82:
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a0, $a0, %pc_lo12(.L.str.111)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
.LBB14_83:
	ldptr.w	$a1, $a0, 5244
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	add.d	$s0, $s0, $a2
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	add.d	$s2, $s2, $a2
	ori	$a2, $zero, 3
	slt	$s4, $s6, $fp
	bne	$a1, $a2, .LBB14_85
# %bb.84:
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(EPZSOutputStats)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
.LBB14_85:
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	add.d	$s0, $s0, $a1
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	add.d	$s2, $s2, $a1
	ldptr.w	$a0, $a0, 4140
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	maskeqz	$fp, $fp, $s4
	ori	$a1, $zero, 1
	masknez	$s4, $s6, $s4
	beq	$a0, $a1, .LBB14_88
# %bb.86:
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB14_89
# %bb.87:
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a0, $a0, %pc_lo12(.L.str.112)
	ori	$a1, $zero, 37
	b	.LBB14_90
.LBB14_88:
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a0, $a0, %pc_lo12(.L.str.113)
	ori	$a1, $zero, 55
	b	.LBB14_90
.LBB14_89:
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a0, $a0, %pc_lo12(.L.str.114)
	ori	$a1, $zero, 74
.LBB14_90:
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a0, $a0, 4168
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	add.d	$s0, $s0, $a1
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	add.d	$s2, $s2, $a1
	or	$s6, $fp, $s4
	beqz	$a0, .LBB14_92
# %bb.91:
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$a0, $a0, %pc_lo12(.L.str.115)
	ori	$a1, $zero, 37
	b	.LBB14_93
.LBB14_92:
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a0, $a0, %pc_lo12(.L.str.116)
	ori	$a1, $zero, 41
.LBB14_93:
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	add.d	$s0, $s0, $a0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	add.d	$s4, $s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$fp, $a0, %pc_lo12(.L.str.117)
	ori	$a1, $zero, 57
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a0, $a0, %pc_lo12(.L.str.118)
	ori	$a1, $zero, 57
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	ori	$a1, $zero, 57
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a0, $a0, %pc_lo12(.L.str.119)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(snr)
	fld.s	$fa0, $a0, 12
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.120)
	addi.d	$a1, $a1, %pc_lo12(.L.str.120)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(snr)
	fld.s	$fa0, $a0, 84
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.121)
	addi.d	$fp, $a1, %pc_lo12(.L.str.121)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a0, $a0, %pc_lo12(.L.str.122)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(snr)
	fld.s	$fa0, $a0, 16
	fld.s	$fa1, $a0, 20
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.123)
	addi.d	$a1, $a1, %pc_lo12(.L.str.123)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(snr)
	fld.s	$fa0, $a0, 88
	fld.s	$fa1, $a0, 92
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.124)
	addi.d	$a1, $a1, %pc_lo12(.L.str.124)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.125)
	addi.d	$a0, $a0, %pc_lo12(.L.str.125)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ld.w	$a1, $a0, 12
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	srai.d	$a2, $a1, 31
	xor	$a1, $a1, $a2
	sub.w	$a2, $a1, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.126)
	addi.d	$a1, $a1, %pc_lo12(.L.str.126)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.w	$a2, $a1, 4
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa0, $a2
	ffint.s.w	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fcvt.d.s	$fa1, $fa1
	vldi	$vr2, -912
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fdiv.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a2, $fa0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a0, $a0, %pc_lo12(.L.str.127)
	ori	$a1, $zero, 74
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a0, $a0, %pc_lo12(.L.str.128)
	ori	$a1, $zero, 73
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a0, $a0, %pc_lo12(.L.str.129)
	ori	$a1, $zero, 73
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(snr)
	fld.s	$fa0, $a0, 32
	fld.s	$fa1, $a0, 24
	fld.s	$fa2, $a0, 28
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	movfr2gr.d	$a4, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.130)
	addi.d	$a1, $a1, %pc_lo12(.L.str.130)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(snr)
	fld.s	$fa0, $a0, 52
	fld.s	$fa1, $a0, 44
	fld.s	$fa2, $a0, 48
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	movfr2gr.d	$a4, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.131)
	addi.d	$a1, $a1, %pc_lo12(.L.str.131)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(snr)
	fld.s	$fa0, $a0, 72
	fld.s	$fa1, $a0, 64
	fld.s	$fa2, $a0, 68
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	movfr2gr.d	$a4, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.132)
	addi.d	$a1, $a1, %pc_lo12(.L.str.132)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a0, $a0, %pc_lo12(.L.str.133)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	ori	$a1, $zero, 41
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a0, $a0, %pc_lo12(.L.str.135)
	ori	$a1, $zero, 41
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.d	$a2, $a1, 1072
	pcalau12i	$a1, %pc_hi20(.L.str.136)
	addi.d	$a1, $a1, %pc_lo12(.L.str.136)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.d	$a2, $a1, 1104
	pcalau12i	$a1, %pc_hi20(.L.str.137)
	addi.d	$a1, $a1, %pc_lo12(.L.str.137)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.d	$a2, $a1, 1080
	pcalau12i	$a1, %pc_hi20(.L.str.138)
	addi.d	$a1, $a1, %pc_lo12(.L.str.138)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.d	$a2, $a1, 1112
	pcalau12i	$a1, %pc_hi20(.L.str.139)
	addi.d	$a1, $a1, %pc_lo12(.L.str.139)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a0, $a0, %pc_lo12(.L.str.140)
	ori	$a1, $zero, 60
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a0, $a0, %pc_lo12(.L.str.141)
	ori	$a1, $zero, 59
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a0, $a0, %pc_lo12(.L.str.142)
	ori	$a1, $zero, 58
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a3, $a1, 1360
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.d	$a2, $a1, 760
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	bstrpick.d	$a1, $s6, 31, 0
	movgr2fr.d	$fs2, $a1
	ffint.d.l	$fs3, $fs2
	fdiv.d	$fa0, $fa0, $fs3
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.143)
	addi.d	$a1, $a1, %pc_lo12(.L.str.143)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a3, $a1, 1368
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.d	$a2, $a1, 768
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs3
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.144)
	addi.d	$a1, $a1, %pc_lo12(.L.str.144)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a3, $a1, 1376
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.d	$a2, $a1, 776
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs3
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.145)
	addi.d	$a1, $a1, %pc_lo12(.L.str.145)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a3, $a1, 1384
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.d	$a2, $a1, 784
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs3
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.146)
	addi.d	$a1, $a1, %pc_lo12(.L.str.146)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a3, $a1, 1424
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.d	$a2, $a1, 824
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs3
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.147)
	addi.d	$a1, $a1, %pc_lo12(.L.str.147)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.d	$a2, $a1, 832
	pcalau12i	$a1, %pc_hi20(.L.str.148)
	addi.d	$a1, $a1, %pc_lo12(.L.str.148)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.d	$a2, $a1, 864
	pcalau12i	$a1, %pc_hi20(.L.str.149)
	addi.d	$a1, $a1, %pc_lo12(.L.str.149)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.d	$a2, $a1, 840
	pcalau12i	$a1, %pc_hi20(.L.str.150)
	addi.d	$a1, $a1, %pc_lo12(.L.str.150)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.d	$a2, $a1, 872
	pcalau12i	$a1, %pc_hi20(.L.str.151)
	addi.d	$a1, $a1, %pc_lo12(.L.str.151)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
	ld.d	$a1, $a0, 1360
	ld.d	$a2, $a0, 1368
	ld.d	$a3, $a0, 1376
	add.d	$a1, $a2, $a1
	ld.d	$a2, $a0, 1384
	ld.d	$a4, $a0, 1424
	add.d	$a1, $a1, $a3
	ld.w	$a0, $a0, 700
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a4
	movgr2fr.d	$fs0, $zero
	movgr2fr.d	$fs1, $a1
	fmov.d	$fs4, $fs0
	beqz	$a0, .LBB14_96
# %bb.94:
	ld.w	$a0, $s8, 4
	fmov.d	$fs4, $fs0
	beqz	$a0, .LBB14_96
# %bb.95:
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.152)
	addi.d	$a0, $a0, %pc_lo12(.L.str.152)
	ori	$a1, $zero, 61
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.153)
	addi.d	$a0, $a0, %pc_lo12(.L.str.153)
	ori	$a1, $zero, 59
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a0, $a0, %pc_lo12(.L.str.142)
	ori	$a1, $zero, 58
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a3, $a1, 1480
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.w	$a4, $s8, 4
	ld.d	$a2, $a1, 880
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.143)
	addi.d	$a1, $a1, %pc_lo12(.L.str.143)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a3, $a1, 1488
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.w	$a4, $s8, 4
	ld.d	$a2, $a1, 888
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.144)
	addi.d	$a1, $a1, %pc_lo12(.L.str.144)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a3, $a1, 1496
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.w	$a4, $s8, 4
	ld.d	$a2, $a1, 896
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.145)
	addi.d	$a1, $a1, %pc_lo12(.L.str.145)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a3, $a1, 1504
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.w	$a4, $s8, 4
	ld.d	$a2, $a1, 904
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.146)
	addi.d	$a1, $a1, %pc_lo12(.L.str.146)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a3, $a1, 1544
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.w	$a4, $s8, 4
	ld.d	$a2, $a1, 944
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.147)
	addi.d	$a1, $a1, %pc_lo12(.L.str.147)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.d	$a2, $a1, 952
	pcalau12i	$a1, %pc_hi20(.L.str.148)
	addi.d	$a1, $a1, %pc_lo12(.L.str.148)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.d	$a2, $a1, 984
	pcalau12i	$a1, %pc_hi20(.L.str.149)
	addi.d	$a1, $a1, %pc_lo12(.L.str.149)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.d	$a2, $a1, 960
	pcalau12i	$a1, %pc_hi20(.L.str.150)
	addi.d	$a1, $a1, %pc_lo12(.L.str.150)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	ld.d	$a2, $a1, 992
	pcalau12i	$a1, %pc_hi20(.L.str.151)
	addi.d	$a1, $a1, %pc_lo12(.L.str.151)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
	ld.d	$a1, $a0, 1480
	ld.d	$a2, $a0, 1488
	ld.d	$a3, $a0, 1496
	ld.d	$a4, $a0, 1504
	add.d	$a1, $a2, $a1
	ld.d	$a0, $a0, 1544
	add.d	$a1, $a1, $a3
	add.d	$a1, $a1, $a4
	ld.w	$a2, $s8, 4
	add.d	$a0, $a1, $a0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fs4, $fa0, $fa1
.LBB14_96:
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	add.d	$s0, $s0, $a0
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	add.d	$s2, $s4, $a0
	ffint.d.l	$fs5, $fs1
	pcalau12i	$a0, %pc_hi20(.L.str.154)
	addi.d	$a0, $a0, %pc_lo12(.L.str.154)
	ori	$a1, $zero, 77
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.155)
	addi.d	$a0, $a0, %pc_lo12(.L.str.155)
	ori	$a1, $zero, 75
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.156)
	addi.d	$a0, $a0, %pc_lo12(.L.str.156)
	ori	$a1, $zero, 75
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.157)
	addi.d	$a0, $a0, %pc_lo12(.L.str.157)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
	ldptr.d	$a1, $a0, 2056
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fs1, $fa1
	fdiv.s	$fa0, $fa0, $fs1
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.158)
	addi.d	$fp, $a1, %pc_lo12(.L.str.158)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
	ld.d	$a1, $a0, 2040
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	ffint.s.l	$fs2, $fs2
	fdiv.s	$fa0, $fa0, $fs2
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.w	$a2, $a1, 700
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	fmov.d	$fa0, $fs0
	beqz	$a2, .LBB14_99
# %bb.97:
	ld.w	$a2, $s8, 4
	fmov.d	$fa0, $fs0
	beqz	$a2, .LBB14_99
# %bb.98:
	ldptr.d	$a1, $a1, 2048
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
.LBB14_99:
	ld.d	$a1, $sp, 568                   # 8-byte Folded Reload
	add.d	$s0, $a1, $s0
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	add.d	$s2, $a1, $s2
	fdiv.d	$fs3, $fs5, $fs3
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.158)
	addi.d	$fp, $a1, %pc_lo12(.L.str.158)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(p_stat)
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.159)
	addi.d	$a0, $a0, %pc_lo12(.L.str.159)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
	ld.d	$a1, $a0, 2016
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs1
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
	ld.d	$a1, $a0, 2000
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs2
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.w	$a2, $a1, 700
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	fmov.d	$fa0, $fs0
	beqz	$a2, .LBB14_102
# %bb.100:
	ld.w	$a2, $s8, 4
	fmov.d	$fa0, $fs0
	beqz	$a2, .LBB14_102
# %bb.101:
	ld.d	$a1, $a1, 2008
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
.LBB14_102:
	ld.d	$a1, $sp, 584                   # 8-byte Folded Reload
	add.d	$s0, $a1, $s0
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	add.d	$s4, $a1, $s2
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.158)
	addi.d	$fp, $a1, %pc_lo12(.L.str.158)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(p_stat)
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.160)
	addi.d	$a0, $a0, %pc_lo12(.L.str.160)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.161)
	addi.d	$a0, $a0, %pc_lo12(.L.str.161)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	movfr2gr.d	$a2, $fs3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
	ld.w	$a0, $a0, 700
	ld.w	$a1, $s8, 4
	sltu	$a2, $zero, $a0
	sltu	$a1, $zero, $a1
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	movgr2cf	$fcc0, $a1
	fsel	$fa0, $fs0, $fs4, $fcc0
	movgr2cf	$fcc0, $a2
	fsel	$fa0, $fs0, $fa0, $fcc0
	movfr2gr.d	$a2, $fa0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(p_stat)
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.162)
	addi.d	$a0, $a0, %pc_lo12(.L.str.162)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
	ldptr.d	$a1, $a0, 2096
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs1
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
	ldptr.d	$a1, $a0, 2080
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs2
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.w	$a2, $a1, 700
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	fmov.d	$fa0, $fs0
	ld.d	$a3, $sp, 624                   # 8-byte Folded Reload
	beqz	$a2, .LBB14_105
# %bb.103:
	fmov.d	$fa0, $fs0
	beqz	$a3, .LBB14_105
# %bb.104:
	ldptr.d	$a1, $a1, 2088
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
.LBB14_105:
	ld.d	$a1, $sp, 616                   # 8-byte Folded Reload
	add.d	$fp, $a1, $s0
	ld.d	$a1, $sp, 576                   # 8-byte Folded Reload
	add.d	$s0, $a1, $s4
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.158)
	addi.d	$a1, $a1, %pc_lo12(.L.str.158)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(p_stat)
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ldptr.d	$a2, $a1, 2136
	ld.w	$a3, $a1, 700
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	movgr2fr.d	$fa0, $a2
	ldptr.d	$a2, $a1, 2120
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs1
	fcvt.d.s	$fa0, $fa0
	movgr2fr.d	$fa1, $a2
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fs2
	fcvt.d.s	$fa1, $fa1
	fmov.d	$fa2, $fs0
	beqz	$a3, .LBB14_108
# %bb.106:
	ld.w	$a2, $s8, 4
	fmov.d	$fa2, $fs0
	beqz	$a2, .LBB14_108
# %bb.107:
	ldptr.d	$a1, $a1, 2128
	movgr2fr.d	$fa2, $a1
	ffint.s.l	$fa2, $fa2
	movgr2fr.w	$fa3, $a2
	ffint.s.w	$fa3, $fa3
	fdiv.s	$fa2, $fa2, $fa3
	fcvt.d.s	$fa2, $fa2
.LBB14_108:
	ld.d	$a1, $sp, 608                   # 8-byte Folded Reload
	add.d	$fp, $a1, $fp
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	add.d	$s0, $a1, $s0
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	movfr2gr.d	$a4, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.163)
	addi.d	$a1, $a1, %pc_lo12(.L.str.163)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ldptr.d	$a2, $a1, 2176
	ld.w	$a3, $a1, 700
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	movgr2fr.d	$fa0, $a2
	ldptr.d	$a2, $a1, 2160
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs1
	fcvt.d.s	$fa0, $fa0
	movgr2fr.d	$fa1, $a2
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fs2
	fcvt.d.s	$fa1, $fa1
	fmov.d	$fa2, $fs0
	beqz	$a3, .LBB14_111
# %bb.109:
	ld.w	$a2, $s8, 4
	fmov.d	$fa2, $fs0
	beqz	$a2, .LBB14_111
# %bb.110:
	ldptr.d	$a1, $a1, 2168
	movgr2fr.d	$fa2, $a1
	ffint.s.l	$fa2, $fa2
	movgr2fr.w	$fa3, $a2
	ffint.s.w	$fa3, $fa3
	fdiv.s	$fa2, $fa2, $fa3
	fcvt.d.s	$fa2, $fa2
.LBB14_111:
	ld.d	$a1, $sp, 640                   # 8-byte Folded Reload
	add.d	$fp, $a1, $fp
	ld.d	$a1, $sp, 600                   # 8-byte Folded Reload
	add.d	$s2, $a1, $s0
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	movfr2gr.d	$a4, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.164)
	addi.d	$a1, $a1, %pc_lo12(.L.str.164)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ldptr.d	$a2, $a1, 2216
	ld.w	$a3, $a1, 700
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	movgr2fr.d	$fa0, $a2
	ldptr.d	$a2, $a1, 2200
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs1
	fcvt.d.s	$fa0, $fa0
	movgr2fr.d	$fa1, $a2
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fs2
	fcvt.d.s	$fa1, $fa1
	fmov.d	$fa2, $fs0
	beqz	$a3, .LBB14_114
# %bb.112:
	ld.w	$a2, $s8, 4
	fmov.d	$fa2, $fs0
	beqz	$a2, .LBB14_114
# %bb.113:
	ldptr.d	$a1, $a1, 2208
	movgr2fr.d	$fa2, $a1
	ffint.s.l	$fa2, $fa2
	movgr2fr.w	$fa3, $a2
	ffint.s.w	$fa3, $fa3
	fdiv.s	$fa2, $fa2, $fa3
	fcvt.d.s	$fa2, $fa2
.LBB14_114:
	ld.d	$a1, $sp, 648                   # 8-byte Folded Reload
	add.d	$s0, $a1, $fp
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	add.d	$fp, $a1, $s2
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	movfr2gr.d	$a4, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.165)
	addi.d	$a1, $a1, %pc_lo12(.L.str.165)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a2, $a1, 1976
	ld.w	$a3, $a1, 700
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	movgr2fr.d	$fa0, $a2
	ld.d	$a2, $a1, 1960
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs1
	fcvt.d.s	$fa0, $fa0
	movgr2fr.d	$fa1, $a2
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fs2
	fcvt.d.s	$fa1, $fa1
	fmov.d	$fa2, $fs0
	beqz	$a3, .LBB14_117
# %bb.115:
	ld.w	$a2, $s8, 4
	fmov.d	$fa2, $fs0
	beqz	$a2, .LBB14_117
# %bb.116:
	ld.d	$a1, $a1, 1968
	movgr2fr.d	$fa2, $a1
	ffint.s.l	$fa2, $fa2
	movgr2fr.w	$fa3, $a2
	ffint.s.w	$fa3, $fa3
	fdiv.s	$fa2, $fa2, $fa3
	fcvt.d.s	$fa2, $fa2
.LBB14_117:
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	movfr2gr.d	$a4, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.166)
	addi.d	$a1, $a1, %pc_lo12(.L.str.166)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.156)
	addi.d	$a0, $a0, %pc_lo12(.L.str.156)
	ori	$a1, $zero, 75
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.167)
	addi.d	$a0, $a0, %pc_lo12(.L.str.167)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	movgr2fr.d	$fa0, $fp
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs1
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.158)
	addi.d	$fp, $a1, %pc_lo12(.L.str.158)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	movgr2fr.d	$fa0, $s0
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs2
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
	ld.w	$a1, $a0, 700
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	beqz	$a1, .LBB14_120
# %bb.118:
	ld.w	$a1, $s8, 4
	beqz	$a1, .LBB14_120
# %bb.119:
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	movgr2fr.d	$fa0, $a2
	ffint.s.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fs0, $fa0
.LBB14_120:
	movfr2gr.d	$a2, $fs0
	pcalau12i	$a1, %pc_hi20(.L.str.158)
	addi.d	$a1, $a1, %pc_lo12(.L.str.158)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(p_stat)
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, %pc_lo12(p_stat)
	pcalau12i	$a0, %pc_hi20(.L.str.156)
	addi.d	$a0, $a0, %pc_lo12(.L.str.156)
	ori	$a1, $zero, 75
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(p_stat)
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$a0, $a0, %pc_lo12(.L.str.168)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fopen64)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(p_log)
	st.d	$a0, $s0, %pc_lo12(p_log)
	beqz	$a0, .LBB14_122
# %bb.121:
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$a0, $a0, %pc_lo12(.L.str.168)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fopen64)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(p_log)
	bnez	$a0, .LBB14_125
	b	.LBB14_124
.LBB14_122:
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$a0, $a0, %pc_lo12(.L.str.168)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fopen64)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(p_log)
	beqz	$a0, .LBB14_124
# %bb.123:
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$fp, $a0, %pc_lo12(.L.str.169)
	ori	$a1, $zero, 297
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, %pc_lo12(p_log)
	pcalau12i	$a0, %pc_hi20(.L.str.170)
	addi.d	$a0, $a0, %pc_lo12(.L.str.170)
	ori	$a1, $zero, 297
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, %pc_lo12(p_log)
	ori	$a1, $zero, 297
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, %pc_lo12(p_log)
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a0, $a0, %pc_lo12(.L.str.171)
	ori	$a1, $zero, 297
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, %pc_lo12(p_log)
	ori	$a1, $zero, 297
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB14_125
.LBB14_124:
	pcalau12i	$a0, %pc_hi20(errortext)
	addi.d	$fp, $a0, %pc_lo12(errortext)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a2, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$a3, $a0, %pc_lo12(.L.str.168)
	ori	$a1, $zero, 300
	move	$a0, $fp
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 500
	move	$a0, $fp
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB14_125:
	ld.d	$a0, $s0, %pc_lo12(p_log)
	pcalau12i	$a1, %pc_hi20(.L.str.172)
	addi.d	$a1, $a1, %pc_lo12(.L.str.172)
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$a2, $a2, %pc_lo12(.L.str.15)
	pcalau12i	$a3, %pc_hi20(.L.str.16)
	addi.d	$a3, $a3, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1672
	addi.d	$a0, $sp, 1672
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1672
	pcaddu18i	$ra, %call36(localtime)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a2, $a0, %pc_lo12(.L.str.17)
	addi.d	$a0, $sp, 672
	ori	$a1, $zero, 1000
	move	$a3, $fp
	pcaddu18i	$ra, %call36(strftime)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(p_log)
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	addi.d	$a2, $sp, 672
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 672
	ori	$a1, $zero, 1000
	move	$a3, $fp
	pcaddu18i	$ra, %call36(strftime)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(p_log)
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	addi.d	$a2, $sp, 672
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	move	$s2, $zero
	addi.d	$fp, $a0, 280
	addi.d	$s4, $zero, -30
	ori	$s6, $zero, 30
	addi.d	$s7, $sp, 1682
	.p2align	4, , 16
.LBB14_126:                             # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	slt	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	add.w	$a0, $a0, $s4
	ldx.b	$a0, $fp, $a0
	stx.b	$a0, $s2, $s7
	addi.d	$s2, $s2, 1
	addi.d	$s4, $s4, 1
	bne	$s2, $s6, .LBB14_126
# %bb.127:
	ld.d	$a0, $s0, %pc_lo12(p_log)
	pcalau12i	$a1, %pc_hi20(.L.str.173)
	addi.d	$a1, $a1, %pc_lo12(.L.str.173)
	addi.d	$a2, $sp, 1682
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.d	$a0, $s0, %pc_lo12(p_log)
	ld.w	$a2, $a1, 8
	pcalau12i	$a1, %pc_hi20(.L.str.174)
	addi.d	$a1, $a1, %pc_lo12(.L.str.174)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.d	$a0, $s0, %pc_lo12(p_log)
	ldptr.w	$a2, $a1, 4704
	ldptr.w	$a3, $a1, 4708
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.d	$a0, $s0, %pc_lo12(p_log)
	ld.w	$a2, $a1, 12
	pcalau12i	$a1, %pc_hi20(.L.str.175)
	addi.d	$fp, $a1, %pc_lo12(.L.str.175)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.d	$a0, $s0, %pc_lo12(p_log)
	ld.w	$a2, $a1, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.d	$a0, $s0, %pc_lo12(p_log)
	ldptr.w	$a2, $a1, 2104
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.d	$a0, $s0, %pc_lo12(p_log)
	ld.w	$a2, $a1, 56
	ld.w	$a3, $a1, 60
	pcalau12i	$a1, %pc_hi20(.L.str.176)
	addi.d	$a1, $a1, %pc_lo12(.L.str.176)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.d	$a0, $s0, %pc_lo12(p_log)
	ld.w	$a2, $a1, 1560
	pcalau12i	$a1, %pc_hi20(.L.str.177)
	addi.d	$a1, $a1, %pc_lo12(.L.str.177)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a0, $s0, %pc_lo12(p_log)
	ld.w	$a2, $a1, 700
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a0, $a0, 5244
	ld.d	$a3, $s0, %pc_lo12(p_log)
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB14_129
# %bb.128:                              # %switch.lookup
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.report)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.report)
	ldx.d	$a0, $a1, $a0
	b	.LBB14_130
.LBB14_129:
	pcalau12i	$a0, %pc_hi20(.L.str.182)
	addi.d	$a0, $a0, %pc_lo12(.L.str.182)
.LBB14_130:
	ld.d	$fp, $sp, 664                   # 8-byte Folded Reload
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.d	$a0, $s0, %pc_lo12(p_log)
	ldptr.w	$a2, $a1, 5780
	ldptr.w	$a3, $a1, 5784
	ldptr.w	$a4, $a1, 5788
	pcalau12i	$a1, %pc_hi20(.L.str.183)
	addi.d	$a1, $a1, %pc_lo12(.L.str.183)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.d	$a0, $s0, %pc_lo12(p_log)
	ld.w	$a2, $a1, 28
	pcalau12i	$a1, %pc_hi20(.L.str.184)
	addi.d	$a1, $a1, %pc_lo12(.L.str.184)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.d	$a0, $s0, %pc_lo12(p_log)
	ld.w	$a2, $a1, 32
	pcalau12i	$a1, %pc_hi20(.L.str.185)
	addi.d	$a1, $a1, %pc_lo12(.L.str.185)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
	ld.d	$a1, $fp, %pc_lo12(img)
	ld.w	$a0, $a0, 700
	ld.d	$a2, $s1, %pc_lo12(input)
	fld.s	$fa0, $a1, 48
	addi.d	$a0, $a0, 1
	movgr2fr.w	$fa1, $a0
	ld.w	$a1, $a2, 20
	ld.d	$a0, $s0, %pc_lo12(p_log)
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, 1
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.186)
	addi.d	$a1, $a1, %pc_lo12(.L.str.186)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a0, $a0, 4008
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.188)
	addi.d	$a1, $a1, %pc_lo12(.L.str.188)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.187)
	addi.d	$a2, $a2, %pc_lo12(.L.str.187)
	ld.d	$a3, $s0, %pc_lo12(p_log)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.d	$a0, $s0, %pc_lo12(p_log)
	ldptr.w	$a2, $a1, 4168
	pcalau12i	$a1, %pc_hi20(.L.str.189)
	addi.d	$a1, $a1, %pc_lo12(.L.str.189)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ld.w	$a0, $a0, 68
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.191)
	addi.d	$a1, $a1, %pc_lo12(.L.str.191)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.190)
	addi.d	$a2, $a2, %pc_lo12(.L.str.190)
	ld.d	$a3, $s0, %pc_lo12(p_log)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(input)
	ld.d	$a0, $s0, %pc_lo12(p_log)
	ldptr.w	$a2, $a1, 5100
	pcalau12i	$a1, %pc_hi20(.L.str.192)
	addi.d	$a1, $a1, %pc_lo12(.L.str.192)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(snr)
	fld.s	$fa0, $a0, 12
	ld.d	$a0, $s0, %pc_lo12(p_log)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.193)
	addi.d	$fp, $a1, %pc_lo12(.L.str.193)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(snr)
	fld.s	$fa0, $a0, 16
	ld.d	$a0, $s0, %pc_lo12(p_log)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(snr)
	fld.s	$fa0, $a0, 20
	ld.d	$a0, $s0, %pc_lo12(p_log)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(snr)
	fld.s	$fa0, $a0, 84
	ld.d	$a0, $s0, %pc_lo12(p_log)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(snr)
	fld.s	$fa0, $a0, 88
	ld.d	$a0, $s0, %pc_lo12(p_log)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(snr)
	fld.s	$fa0, $a0, 92
	ld.d	$a0, $s0, %pc_lo12(p_log)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
	fld.s	$fa0, $a0, 744
	ld.d	$a0, $s0, %pc_lo12(p_log)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.194)
	addi.d	$fp, $a1, %pc_lo12(.L.str.194)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
	fld.s	$fa0, $a0, 748
	ld.d	$a0, $s0, %pc_lo12(p_log)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
	fld.s	$fa0, $a0, 752
	ld.d	$a0, $s0, %pc_lo12(p_log)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(stats)
	fld.s	$fa0, $a0, 12
	ld.d	$a0, $s0, %pc_lo12(p_log)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.195)
	addi.d	$a1, $a1, %pc_lo12(.L.str.195)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(p_log)
	pcalau12i	$s2, %pc_hi20(tot_time)
	ld.w	$a2, $s2, %pc_lo12(tot_time)
	pcalau12i	$a1, %pc_hi20(.L.str.196)
	addi.d	$fp, $a1, %pc_lo12(.L.str.196)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(p_log)
	pcalau12i	$a1, %pc_hi20(me_tot_time)
	ld.w	$a2, $a1, %pc_lo12(me_tot_time)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, %pc_lo12(p_log)
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(p_log)
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.197)
	addi.d	$a0, $a0, %pc_lo12(.L.str.197)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fopen64)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(stats)
	ld.d	$a4, $s1, %pc_lo12(input)
	ld.w	$a3, $a1, 700
	ld.w	$a2, $a4, 8
	st.d	$a0, $s0, %pc_lo12(p_log)
	beqz	$a3, .LBB14_133
# %bb.131:
	ld.w	$a5, $s8, 4
	beqz	$a5, .LBB14_133
# %bb.132:
	ld.d	$a6, $s5, %pc_lo12(snr)
	ld.w	$a3, $a4, 12
	fld.s	$fa0, $a6, 12
	fld.s	$fa1, $a6, 16
	fld.s	$fa2, $a6, 20
	ld.w	$a4, $a4, 16
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	ld.d	$a7, $a1, 720
	fld.s	$fa3, $a6, 84
	fld.s	$fa4, $a6, 88
	fld.s	$fa5, $a6, 92
	ld.d	$a6, $a1, 16
	fcvt.d.s	$fa3, $fa3
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	add.d	$a6, $a6, $a7
	add.d	$t0, $a2, $a5
	ld.d	$a1, $a1, 736
	ld.d	$t1, $s2, %pc_lo12(tot_time)
	addi.w	$t2, $t0, 0
	div.d	$a6, $a6, $t2
	div.d	$a1, $a1, $a5
	movgr2fr.d	$fa6, $t1
	ffint.d.l	$fa6, $fa6
	lu12i.w	$a5, -184550
	ori	$a5, $a5, 2556
	lu32i.d	$a5, 25165
	lu52i.d	$a5, $a5, 1013
	movgr2fr.d	$fa7, $a5
	fmul.d	$fa6, $fa6, $fa7
	movgr2fr.w	$fa7, $t0
	ffint.d.w	$fa7, $fa7
	fdiv.d	$fa6, $fa6, $fa7
	st.d	$a1, $sp, 72
	st.d	$a6, $sp, 64
	fst.d	$fa5, $sp, 56
	fst.d	$fa4, $sp, 48
	fst.d	$fa3, $sp, 40
	vrepli.b	$vr3, 0
	vst	$vr3, $sp, 24
	vst	$vr3, $sp, 8
	st.d	$a7, $sp, 0
	fst.d	$fa6, $sp, 80
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.198)
	addi.d	$a1, $a1, %pc_lo12(.L.str.198)
	b	.LBB14_135
.LBB14_133:
	beqz	$a2, .LBB14_136
# %bb.134:
	ld.d	$a5, $s5, %pc_lo12(snr)
	ld.w	$a3, $a4, 12
	fld.s	$fa0, $a5, 12
	fld.s	$fa1, $a5, 16
	ld.w	$a4, $a4, 16
	fld.s	$fa2, $a5, 20
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fld.s	$fa3, $a5, 84
	fcvt.d.s	$fa2, $fa2
	ld.d	$a6, $a1, 720
	fld.s	$fa4, $a5, 88
	fcvt.d.s	$fa3, $fa3
	fld.s	$fa5, $a5, 92
	ld.d	$a1, $a1, 16
	fcvt.d.s	$fa4, $fa4
	ld.d	$a5, $s2, %pc_lo12(tot_time)
	fcvt.d.s	$fa5, $fa5
	add.d	$a1, $a1, $a6
	div.d	$a1, $a1, $a2
	movgr2fr.d	$fa6, $a5
	ffint.d.l	$fa6, $fa6
	lu12i.w	$a5, -184550
	ori	$a5, $a5, 2556
	lu32i.d	$a5, 25165
	lu52i.d	$a5, $a5, 1013
	movgr2fr.d	$fa7, $a5
	fmul.d	$fa6, $fa6, $fa7
	movgr2fr.w	$fa7, $a2
	ffint.d.w	$fa7, $fa7
	fdiv.d	$fa6, $fa6, $fa7
	st.d	$zero, $sp, 72
	st.d	$a1, $sp, 64
	fst.d	$fa5, $sp, 56
	fst.d	$fa4, $sp, 48
	fst.d	$fa3, $sp, 40
	vrepli.b	$vr3, 0
	vst	$vr3, $sp, 24
	vst	$vr3, $sp, 8
	st.d	$a6, $sp, 0
	fst.d	$fa6, $sp, 80
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.199)
	addi.d	$a1, $a1, %pc_lo12(.L.str.199)
.LBB14_135:
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB14_136:
	ld.d	$a0, $s0, %pc_lo12(p_log)
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(input)
	ldptr.w	$a0, $a0, 5104
	beqz	$a0, .LBB14_140
# %bb.137:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fopen64)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(p_log)
	beqz	$a0, .LBB14_139
# %bb.138:
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 468
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(p_log)
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB14_140
.LBB14_139:
	pcalau12i	$a0, %pc_hi20(errortext)
	addi.d	$a0, $a0, %pc_lo12(errortext)
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a2, $a1, %pc_lo12(.L.str.8)
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a3, $a1, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 300
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
.LBB14_140:
	fld.d	$fs6, $sp, 1712                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1720                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1728                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1736                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1744                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1752                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1760                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1768                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1776                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1784                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1792                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1800                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1808                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1816                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1824                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1832                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1840                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1848                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1856
	ret
.LBB14_141:
	ld.d	$a0, $s7, 0
	ld.w	$a2, $a1, 12
	ld.w	$a3, $a1, 16
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB14_30
.Lfunc_end14:
	.size	report, .Lfunc_end14-report
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI14_0:
	.word	.LBB14_32-.LJTI14_0
	.word	.LBB14_35-.LJTI14_0
	.word	.LBB14_33-.LJTI14_0
	.word	.LBB14_34-.LJTI14_0
                                        # -- End function
	.text
	.globl	free_picture                    # -- Begin function free_picture
	.p2align	5
	.type	free_picture,@function
free_picture:                           # @free_picture
# %bb.0:
	beqz	$a0, .LBB15_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(free_slice_list)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB15_2:
	ret
.Lfunc_end15:
	.size	free_picture, .Lfunc_end15-free_picture
                                        # -- End function
	.globl	free_global_buffers             # -- Begin function free_global_buffers
	.p2align	5
	.type	free_global_buffers,@function
free_global_buffers:                    # @free_global_buffers
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
	pcalau12i	$a0, %got_pc_hi20(last_P_no_frm)
	ld.d	$a0, $a0, %got_pc_lo12(last_P_no_frm)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(last_P_no_fld)
	ld.d	$a0, $a0, %got_pc_lo12(last_P_no_fld)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(free_orig_planes)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(PicPos)
	ld.d	$a0, $a0, %pc_lo12(PicPos)
	pcaddu18i	$ra, %call36(free_mem2Dint)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(free_QMatrix)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(free_QOffsets)
	jirl	$ra, $ra, 0
	pcalau12i	$fp, %pc_hi20(input)
	ld.d	$a0, $fp, %pc_lo12(input)
	ldptr.w	$a1, $a0, 2928
	bnez	$a1, .LBB16_3
# %bb.1:
	ldptr.w	$a1, $a0, 2932
	bnez	$a1, .LBB16_3
# %bb.2:
	ld.w	$a0, $a0, 1576
	beqz	$a0, .LBB16_4
.LBB16_3:
	pcalau12i	$a0, %pc_hi20(wp_weight)
	ld.d	$a0, $a0, %pc_lo12(wp_weight)
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(free_mem3Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(wp_offset)
	ld.d	$a0, $a0, %pc_lo12(wp_offset)
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(free_mem3Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(wbp_weight)
	ld.d	$a0, $a0, %pc_lo12(wbp_weight)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 32
	pcaddu18i	$ra, %call36(free_mem4Dint)
	jirl	$ra, $ra, 0
.LBB16_4:
	pcalau12i	$a0, %pc_hi20(stats)
	ld.d	$a0, $a0, %pc_lo12(stats)
	ld.w	$a0, $a0, 700
	bnez	$a0, .LBB16_6
# %bb.5:
	ld.d	$a0, $fp, %pc_lo12(input)
	ldptr.w	$a0, $a0, 2964
	blez	$a0, .LBB16_7
.LBB16_6:
	pcalau12i	$a0, %pc_hi20(direct_ref_idx)
	ld.d	$a0, $a0, %pc_lo12(direct_ref_idx)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem3D)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(direct_pdir)
	ld.d	$a0, $a0, %pc_lo12(direct_pdir)
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
.LBB16_7:
	pcalau12i	$s0, %pc_hi20(imgY_sub_tmp)
	ld.d	$a0, $s0, %pc_lo12(imgY_sub_tmp)
	beqz	$a0, .LBB16_9
# %bb.8:
	pcaddu18i	$ra, %call36(free_mem2Dint)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, %pc_lo12(imgY_sub_tmp)
.LBB16_9:
	pcalau12i	$s0, %pc_hi20(img)
	ld.d	$a0, $s0, %pc_lo12(img)
	ld.d	$a0, $a0, 128
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(img)
	ld.d	$a0, $a0, 136
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(img)
	ldptr.d	$a0, $a0, 14224
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(rddata_top_frame_mb+1600)
	ld.d	$a0, $a0, %pc_lo12(rddata_top_frame_mb+1600)
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
	ld.w	$a1, $a0, 272
	beqz	$a1, .LBB16_11
# %bb.10:
	ld.d	$a0, $s0, %pc_lo12(img)
	ldptr.d	$a0, $a0, 14240
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
.LBB16_11:
	ldptr.w	$a1, $a0, 4172
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB16_24
# %bb.12:
	ldptr.w	$a1, $a0, 4168
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB16_25
.LBB16_13:
	ldptr.w	$a0, $a0, 4732
	beqz	$a0, .LBB16_15
.LBB16_14:
	pcalau12i	$s1, %pc_hi20(pixel_map)
	ld.d	$a0, $s1, %pc_lo12(pixel_map)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(pixel_map)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(refresh_map)
	ld.d	$a0, $s1, %pc_lo12(refresh_map)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(refresh_map)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB16_15:
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ld.w	$a0, $a0, 1148
	bnez	$a0, .LBB16_18
# %bb.16:
	pcalau12i	$a0, %pc_hi20(imgY_com)
	ld.d	$a0, $a0, %pc_lo12(imgY_com)
	pcaddu18i	$ra, %call36(free_mem2Dpel)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(img)
	ldptr.w	$a0, $a0, 15536
	beqz	$a0, .LBB16_18
# %bb.17:
	pcalau12i	$a0, %pc_hi20(imgUV_com)
	ld.d	$a0, $a0, %pc_lo12(imgUV_com)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem3Dpel)
	jirl	$ra, $ra, 0
.LBB16_18:
	ld.d	$a1, $s0, %pc_lo12(img)
	ld.d	$a0, $a1, 152
	ldptr.w	$a1, $a1, 15352
	pcaddu18i	$ra, %call36(free_mem3Dint)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, %pc_lo12(img)
	ldptr.d	$a0, $a1, 15480
	ldptr.w	$a1, $a1, 15452
	pcaddu18i	$ra, %call36(free_mem2Ddb_offset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(img)
	ldptr.w	$a3, $a0, 15452
	ldptr.d	$a0, $a0, 15488
	addi.w	$a2, $a3, 52
	ori	$a1, $zero, 10
	pcaddu18i	$ra, %call36(free_mem3Ddb_offset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(img)
	ldptr.w	$a3, $a0, 15452
	ldptr.d	$a0, $a0, 15496
	addi.w	$a2, $a3, 52
	ori	$a1, $zero, 10
	pcaddu18i	$ra, %call36(free_mem3Dint_offset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
	ldptr.w	$a1, $a0, 4172
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB16_20
# %bb.19:
	ld.d	$a1, $s0, %pc_lo12(img)
	ldptr.d	$a0, $a1, 15504
	ldptr.w	$a1, $a1, 15452
	pcaddu18i	$ra, %call36(free_mem2Ddb_offset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
.LBB16_20:
	ldptr.w	$a0, $a0, 5244
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB16_40
# %bb.21:
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB16_32
# %bb.22:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_33
# %bb.23:
	pcaddu18i	$ra, %call36(UMHEX_free_mem)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
	ldptr.w	$a1, $a0, 5116
	bnez	$a1, .LBB16_34
	b	.LBB16_37
.LBB16_24:
	pcalau12i	$a0, %pc_hi20(mb16x16_cost_frame)
	ld.d	$a0, $a0, %pc_lo12(mb16x16_cost_frame)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
	ldptr.w	$a1, $a0, 4168
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB16_13
.LBB16_25:
	pcalau12i	$s1, %pc_hi20(decs)
	ld.d	$a0, $s1, %pc_lo12(decs)
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(decs)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(decs)
	ld.d	$a0, $a0, 32
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(decs)
	ld.d	$a0, $a0, 32
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
	ldptr.w	$a0, $a0, 4728
	blez	$a0, .LBB16_31
# %bb.26:                               # %.lr.ph32.preheader
	move	$s2, $zero
	addi.w	$s3, $zero, -1
	b	.LBB16_28
	.p2align	4, , 16
.LBB16_27:                              # %._crit_edge
                                        #   in Loop: Header=BB16_28 Depth=1
	ld.d	$a0, $s1, %pc_lo12(decs)
	ld.d	$a0, $a0, 16
	ldx.d	$a0, $a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
	ldptr.w	$a0, $a0, 4728
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB16_31
.LBB16_28:                              # %.lr.ph32
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_30 Depth 2
	ld.d	$a0, $s1, %pc_lo12(decs)
	ld.d	$a0, $a0, 8
	slli.d	$s4, $s2, 3
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(decs)
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(decs)
	ld.d	$a0, $a0, 24
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(decs)
	ld.d	$a0, $a0, 24
	ldx.d	$a0, $a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(img)
	ld.w	$a0, $a0, 32
	bltz	$a0, .LBB16_27
# %bb.29:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB16_28 Depth=1
	move	$s5, $zero
	move	$s6, $s3
	.p2align	4, , 16
.LBB16_30:                              # %.lr.ph
                                        #   Parent Loop BB16_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, %pc_lo12(decs)
	ld.d	$a0, $a0, 16
	ldx.d	$a0, $a0, $s4
	ldx.d	$a0, $a0, $s5
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(decs)
	ld.d	$a0, $a0, 16
	ldx.d	$a0, $a0, $s4
	ldx.d	$a0, $a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(img)
	ld.w	$a0, $a0, 32
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	blt	$s6, $a0, .LBB16_30
	b	.LBB16_27
.LBB16_31:                              # %._crit_edge33
	ld.d	$a0, $s1, %pc_lo12(decs)
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(decs)
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(decs)
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(decs)
	ld.d	$a0, $a0, 40
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(decs)
	ld.d	$a0, $a0, 40
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(decs)
	ld.d	$a0, $a0, 48
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(decs)
	ld.d	$a0, $a0, 48
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
	ldptr.w	$a0, $a0, 4732
	bnez	$a0, .LBB16_14
	b	.LBB16_15
.LBB16_32:
	pcaddu18i	$ra, %call36(smpUMHEX_free_mem)
	jirl	$ra, $ra, 0
.LBB16_33:
	ld.d	$a0, $fp, %pc_lo12(input)
	ldptr.w	$a1, $a0, 5116
	beqz	$a1, .LBB16_37
.LBB16_34:
	pcalau12i	$a0, %pc_hi20(generic_RC)
	addi.d	$a0, $a0, %pc_lo12(generic_RC)
	pcaddu18i	$ra, %call36(generic_free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(quadratic_RC)
	addi.d	$a0, $a0, %pc_lo12(quadratic_RC)
	pcaddu18i	$ra, %call36(rc_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
	ldptr.w	$a1, $a0, 2940
	bnez	$a1, .LBB16_36
# %bb.35:
	ldptr.w	$a1, $a0, 4708
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB16_37
.LBB16_36:
	pcalau12i	$a0, %pc_hi20(generic_RC_init)
	addi.d	$a0, $a0, %pc_lo12(generic_RC_init)
	pcaddu18i	$ra, %call36(generic_free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(quadratic_RC_init)
	addi.d	$a0, $a0, %pc_lo12(quadratic_RC_init)
	pcaddu18i	$ra, %call36(rc_free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(generic_RC_best)
	addi.d	$a0, $a0, %pc_lo12(generic_RC_best)
	pcaddu18i	$ra, %call36(generic_free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(quadratic_RC_best)
	addi.d	$a0, $a0, %pc_lo12(quadratic_RC_best)
	pcaddu18i	$ra, %call36(rc_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
.LBB16_37:
	ldptr.w	$a0, $a0, 5084
	beqz	$a0, .LBB16_39
# %bb.38:
	pcalau12i	$a0, %pc_hi20(imgY_tmp)
	ld.d	$a0, $a0, %pc_lo12(imgY_tmp)
	pcaddu18i	$ra, %call36(free_mem2Dpel)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(imgUV_tmp)
	addi.d	$fp, $a0, %pc_lo12(imgUV_tmp)
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(free_mem2Dpel)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
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
	pcaddu18i	$t8, %call36(free_mem2Dpel)
	jr	$t8
.LBB16_39:
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
.LBB16_40:
	pcaddu18i	$ra, %call36(EPZSDelete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
	ldptr.w	$a1, $a0, 5116
	bnez	$a1, .LBB16_34
	b	.LBB16_37
.Lfunc_end16:
	.size	free_global_buffers, .Lfunc_end16-free_global_buffers
                                        # -- End function
	.globl	free_img                        # -- Begin function free_img
	.p2align	5
	.type	free_img,@function
free_img:                               # @free_img
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(CloseSEIMessages)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(img)
	ld.d	$a0, $s0, %pc_lo12(img)
	ldptr.d	$a0, $a0, 14376
	pcaddu18i	$ra, %call36(free_mem_mv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(img)
	ldptr.d	$a0, $a0, 14384
	pcaddu18i	$ra, %call36(free_mem_mv)
	jirl	$ra, $ra, 0
	pcalau12i	$fp, %pc_hi20(input)
	ld.d	$a0, $fp, %pc_lo12(input)
	ldptr.w	$a0, $a0, 2120
	beqz	$a0, .LBB17_2
# %bb.1:
	ld.d	$a0, $s0, %pc_lo12(img)
	ldptr.d	$a0, $a0, 14392
	pcaddu18i	$ra, %call36(free_mem_mv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(img)
	ldptr.d	$a0, $a0, 14400
	pcaddu18i	$ra, %call36(free_mem_mv)
	jirl	$ra, $ra, 0
.LBB17_2:
	ld.d	$a0, $s0, %pc_lo12(img)
	ldptr.d	$a0, $a0, 14160
	pcaddu18i	$ra, %call36(free_mem_ACcoeff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(img)
	ldptr.d	$a0, $a0, 14168
	pcaddu18i	$ra, %call36(free_mem_DCcoeff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
	ldptr.w	$a1, $a0, 5652
	beqz	$a1, .LBB17_4
# %bb.3:
	ld.d	$a0, $s0, %pc_lo12(img)
	ldptr.d	$a0, $a0, 14176
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(free_mem3Dint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(img)
	ldptr.d	$a0, $a0, 14184
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(free_mem3Dint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(img)
	ldptr.d	$a0, $a0, 14192
	ori	$a1, $zero, 4
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(free_mem4Dint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(img)
	ldptr.d	$a0, $a0, 14200
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(free_mem4Dint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
.LBB17_4:
	ldptr.w	$a0, $a0, 4708
	pcalau12i	$a1, %pc_hi20(rddata_bot_frame_mb)
	addi.d	$s1, $a1, %pc_lo12(rddata_bot_frame_mb)
	beqz	$a0, .LBB17_7
# %bb.5:
	pcalau12i	$a0, %pc_hi20(rddata_top_frame_mb)
	addi.d	$s2, $a0, %pc_lo12(rddata_top_frame_mb)
	ld.d	$a0, $s2, 1664
	pcaddu18i	$ra, %call36(free_mem_mv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 1672
	pcaddu18i	$ra, %call36(free_mem_mv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 1664
	pcaddu18i	$ra, %call36(free_mem_mv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 1672
	pcaddu18i	$ra, %call36(free_mem_mv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 1544
	pcaddu18i	$ra, %call36(free_mem_ACcoeff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 1552
	pcaddu18i	$ra, %call36(free_mem_DCcoeff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 1544
	pcaddu18i	$ra, %call36(free_mem_ACcoeff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 1552
	pcaddu18i	$ra, %call36(free_mem_DCcoeff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
	ldptr.w	$a0, $a0, 4708
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB17_7
# %bb.6:
	pcalau12i	$a0, %pc_hi20(rddata_top_field_mb)
	addi.d	$s2, $a0, %pc_lo12(rddata_top_field_mb)
	ld.d	$a0, $s2, 1664
	pcaddu18i	$ra, %call36(free_mem_mv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 1672
	pcaddu18i	$ra, %call36(free_mem_mv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(rddata_bot_field_mb)
	addi.d	$s3, $a0, %pc_lo12(rddata_bot_field_mb)
	ld.d	$a0, $s3, 1664
	pcaddu18i	$ra, %call36(free_mem_mv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 1672
	pcaddu18i	$ra, %call36(free_mem_mv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 1544
	pcaddu18i	$ra, %call36(free_mem_ACcoeff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 1552
	pcaddu18i	$ra, %call36(free_mem_DCcoeff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 1544
	pcaddu18i	$ra, %call36(free_mem_ACcoeff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 1552
	pcaddu18i	$ra, %call36(free_mem_DCcoeff)
	jirl	$ra, $ra, 0
.LBB17_7:
	ld.d	$a0, $s0, %pc_lo12(img)
	ldptr.w	$a1, $a0, 15520
	ldptr.w	$a2, $a0, 15524
	ldptr.d	$a0, $a0, 14232
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	nor	$a1, $a1, $zero
	alsl.d	$a0, $a1, $a0, 2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
	ldptr.w	$a0, $a0, 4708
	beqz	$a0, .LBB17_9
# %bb.8:
	ld.d	$a0, $s1, 1600
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(rddata_top_field_mb+1600)
	ld.d	$a0, $a0, %pc_lo12(rddata_top_field_mb+1600)
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(rddata_bot_field_mb+1600)
	ld.d	$a0, $a0, %pc_lo12(rddata_bot_field_mb+1600)
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(free_mem2D)
	jr	$t8
.LBB17_9:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end17:
	.size	free_img, .Lfunc_end17-free_img
                                        # -- End function
	.globl	report_stats_on_error           # -- Begin function report_stats_on_error
	.p2align	5
	.type	report_stats_on_error,@function
report_stats_on_error:                  # @report_stats_on_error
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	ld.w	$a0, $a0, 0
	pcalau12i	$fp, %pc_hi20(input)
	ld.d	$a1, $fp, %pc_lo12(input)
	st.w	$a0, $a1, 8
	pcaddu18i	$ra, %call36(terminate_sequence)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(flush_dpb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(p_in)
	ld.w	$a0, $a0, %pc_lo12(p_in)
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(p_dec)
	ld.w	$a0, $a0, %pc_lo12(p_dec)
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB18_2
# %bb.1:
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB18_2:
	pcalau12i	$a0, %pc_hi20(p_trace)
	ld.d	$a0, $a0, %pc_lo12(p_trace)
	beqz	$a0, .LBB18_4
# %bb.3:
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB18_4:
	pcaddu18i	$ra, %call36(Clear_Motion_Search_Module)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(RandomIntraUninit)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(FmoUninit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
	ldptr.w	$a0, $a0, 2968
	beqz	$a0, .LBB18_6
# %bb.5:
	pcaddu18i	$ra, %call36(clear_gop_structure)
	jirl	$ra, $ra, 0
.LBB18_6:
	pcaddu18i	$ra, %call36(clear_rdopt)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(calc_buffer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(input)
	ldptr.w	$a0, $a0, 5104
	beqz	$a0, .LBB18_8
# %bb.7:
	pcaddu18i	$ra, %call36(report_frame_statistic)
	jirl	$ra, $ra, 0
.LBB18_8:
	pcaddu18i	$ra, %call36(report)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(frame_pic_1)
	ld.d	$fp, $a0, %pc_lo12(frame_pic_1)
	beqz	$fp, .LBB18_10
# %bb.9:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_slice_list)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB18_10:                              # %free_picture.exit
	pcalau12i	$a0, %pc_hi20(top_pic)
	ld.d	$fp, $a0, %pc_lo12(top_pic)
	beqz	$fp, .LBB18_12
# %bb.11:                               # %free_picture.exit10
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_slice_list)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB18_12:
	pcalau12i	$a0, %pc_hi20(bottom_pic)
	ld.d	$fp, $a0, %pc_lo12(bottom_pic)
	beqz	$fp, .LBB18_14
# %bb.13:                               # %free_picture.exit12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_slice_list)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB18_14:
	pcaddu18i	$ra, %call36(free_dpb)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(Co_located)
	ld.d	$a0, $a0, %got_pc_lo12(Co_located)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free_colocated)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(uninit_out_buffer)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(free_global_buffers)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(free_img)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(free_context_memory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(FreeNalPayloadBuffer)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(FreeParameterSets)
	jr	$t8
.Lfunc_end18:
	.size	report_stats_on_error, .Lfunc_end18-report_stats_on_error
                                        # -- End function
	.globl	CAVLC_init                      # -- Begin function CAVLC_init
	.p2align	5
	.type	CAVLC_init,@function
CAVLC_init:                             # @CAVLC_init
# %bb.0:
	pcalau12i	$a0, %pc_hi20(img)
	ld.d	$a0, $a0, %pc_lo12(img)
	ldptr.w	$a1, $a0, 15348
	beqz	$a1, .LBB19_15
# %bb.1:                                # %.preheader11.lr.ph
	lu12i.w	$a4, 3
	ori	$a1, $a4, 3240
	ldx.w	$a6, $a0, $a1
	move	$a2, $zero
	addi.w	$a3, $zero, -4
	ori	$a4, $a4, 3060
	b	.LBB19_3
	.p2align	4, , 16
.LBB19_2:                               # %._crit_edge.3
                                        #   in Loop: Header=BB19_3 Depth=1
	ldx.wu	$a5, $a0, $a4
	addi.d	$a2, $a2, 1
	bgeu	$a2, $a5, .LBB19_15
.LBB19_3:                               # %.preheader11
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_5 Depth 2
                                        #     Child Loop BB19_8 Depth 2
                                        #     Child Loop BB19_11 Depth 2
                                        #     Child Loop BB19_14 Depth 2
	move	$a5, $a6
	move	$a6, $a3
	beq	$a5, $a3, .LBB19_2
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB19_3 Depth=1
	ld.d	$a6, $a0, 152
	slli.d	$a5, $a2, 3
	ldx.d	$a6, $a6, $a5
	ld.d	$a6, $a6, 0
	move	$a7, $zero
	.p2align	4, , 16
.LBB19_5:                               #   Parent Loop BB19_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$zero, $a6, 0
	ldx.w	$t0, $a0, $a1
	addi.d	$a7, $a7, 1
	addi.d	$t1, $t0, 4
	bstrpick.d	$t1, $t1, 31, 0
	addi.d	$a6, $a6, 4
	bltu	$a7, $t1, .LBB19_5
# %bb.6:                                # %._crit_edge
                                        #   in Loop: Header=BB19_3 Depth=1
	move	$a6, $a3
	beq	$t0, $a3, .LBB19_2
# %bb.7:                                # %.lr.ph.1
                                        #   in Loop: Header=BB19_3 Depth=1
	ld.d	$a6, $a0, 152
	ldx.d	$a6, $a6, $a5
	ld.d	$a6, $a6, 8
	move	$a7, $zero
	.p2align	4, , 16
.LBB19_8:                               #   Parent Loop BB19_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$zero, $a6, 0
	ldx.w	$t0, $a0, $a1
	addi.d	$a7, $a7, 1
	addi.d	$t1, $t0, 4
	bstrpick.d	$t1, $t1, 31, 0
	addi.d	$a6, $a6, 4
	bltu	$a7, $t1, .LBB19_8
# %bb.9:                                # %._crit_edge.1
                                        #   in Loop: Header=BB19_3 Depth=1
	move	$a6, $a3
	beq	$t0, $a3, .LBB19_2
# %bb.10:                               # %.lr.ph.2
                                        #   in Loop: Header=BB19_3 Depth=1
	ld.d	$a6, $a0, 152
	ldx.d	$a6, $a6, $a5
	ld.d	$a6, $a6, 16
	move	$a7, $zero
	.p2align	4, , 16
.LBB19_11:                              #   Parent Loop BB19_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$zero, $a6, 0
	ldx.w	$t0, $a0, $a1
	addi.d	$a7, $a7, 1
	addi.d	$t1, $t0, 4
	bstrpick.d	$t1, $t1, 31, 0
	addi.d	$a6, $a6, 4
	bltu	$a7, $t1, .LBB19_11
# %bb.12:                               # %._crit_edge.2
                                        #   in Loop: Header=BB19_3 Depth=1
	move	$a6, $a3
	beq	$t0, $a3, .LBB19_2
# %bb.13:                               # %.lr.ph.3
                                        #   in Loop: Header=BB19_3 Depth=1
	ld.d	$a6, $a0, 152
	ldx.d	$a5, $a6, $a5
	ld.d	$a5, $a5, 24
	move	$a7, $zero
	.p2align	4, , 16
.LBB19_14:                              #   Parent Loop BB19_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$zero, $a5, 0
	ldx.w	$a6, $a0, $a1
	addi.d	$a7, $a7, 1
	addi.d	$t0, $a6, 4
	bstrpick.d	$t0, $t0, 31, 0
	addi.d	$a5, $a5, 4
	bltu	$a7, $t0, .LBB19_14
	b	.LBB19_2
.LBB19_15:                              # %._crit_edge15
	ret
.Lfunc_end19:
	.size	CAVLC_init, .Lfunc_end19-CAVLC_init
                                        # -- End function
	.globl	get_mem_mv                      # -- Begin function get_mem_mv
	.p2align	5
	.type	get_mem_mv,@function
get_mem_mv:                             # @get_mem_mv
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
	ori	$a0, $zero, 4
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	bnez	$a0, .LBB20_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.204)
	addi.d	$a0, $a0, %pc_lo12(.L.str.204)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB20_2:                               # %.preheader130
	pcalau12i	$a0, %pc_hi20(.L.str.204)
	addi.d	$a0, $a0, %pc_lo12(.L.str.204)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $zero
	pcalau12i	$s4, %pc_hi20(img)
	b	.LBB20_4
	.p2align	4, , 16
.LBB20_3:                               #   in Loop: Header=BB20_4 Depth=1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	addi.d	$s0, $s0, 1
	ori	$a0, $zero, 4
	beq	$s0, $a0, .LBB20_28
.LBB20_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_8 Depth 2
                                        #       Child Loop BB20_15 Depth 3
                                        #       Child Loop BB20_24 Depth 3
	ori	$a0, $zero, 4
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	slli.d	$s5, $s0, 3
	stx.d	$a0, $a1, $s5
	bnez	$a0, .LBB20_6
# %bb.5:                                #   in Loop: Header=BB20_4 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB20_6:                               # %.preheader
                                        #   in Loop: Header=BB20_4 Depth=1
	move	$s6, $zero
	b	.LBB20_8
	.p2align	4, , 16
.LBB20_7:                               # %._crit_edge.1
                                        #   in Loop: Header=BB20_8 Depth=2
	addi.d	$s6, $s6, 1
	ori	$a0, $zero, 4
	beq	$s6, $a0, .LBB20_3
.LBB20_8:                               #   Parent Loop BB20_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB20_15 Depth 3
                                        #       Child Loop BB20_24 Depth 3
	ori	$a0, $zero, 2
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	ldx.d	$a1, $s0, $s5
	move	$s1, $a0
	slli.d	$s7, $s6, 3
	stx.d	$a0, $a1, $s7
	bnez	$a0, .LBB20_10
# %bb.9:                                #   in Loop: Header=BB20_8 Depth=2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	ldx.d	$a0, $s0, $s5
	ldx.d	$s1, $a0, $s7
.LBB20_10:                              #   in Loop: Header=BB20_8 Depth=2
	ld.d	$a0, $s4, %pc_lo12(img)
	ld.w	$a0, $a0, 32
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	bnez	$a0, .LBB20_12
# %bb.11:                               #   in Loop: Header=BB20_8 Depth=2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
.LBB20_12:                              #   in Loop: Header=BB20_8 Depth=2
	ld.d	$a0, $s4, %pc_lo12(img)
	ldx.d	$a1, $s0, $s5
	ld.w	$s1, $a0, 32
	ldx.d	$s8, $a1, $s7
	blez	$s1, .LBB20_19
# %bb.13:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB20_8 Depth=2
	ld.d	$s0, $s8, 0
	move	$s3, $zero
	move	$s2, $zero
	b	.LBB20_15
	.p2align	4, , 16
.LBB20_14:                              #   in Loop: Header=BB20_15 Depth=3
	ld.d	$a0, $s1, 0
	addi.d	$a1, $a0, 4
	st.d	$a1, $s1, 8
	addi.d	$a1, $a0, 8
	st.d	$a1, $s1, 16
	addi.d	$a1, $a0, 12
	st.d	$a1, $s1, 24
	addi.d	$a1, $a0, 16
	st.d	$a1, $s1, 32
	addi.d	$a1, $a0, 20
	st.d	$a1, $s1, 40
	addi.d	$a1, $a0, 24
	st.d	$a1, $s1, 48
	addi.d	$a1, $a0, 28
	st.d	$a1, $s1, 56
	addi.d	$a0, $a0, 32
	st.d	$a0, $s1, 64
	ld.d	$a0, $s4, %pc_lo12(img)
	ld.w	$s1, $a0, 32
	addi.d	$s2, $s2, 1
	addi.d	$s3, $s3, 8
	bge	$s2, $s1, .LBB20_19
.LBB20_15:                              # %.lr.ph
                                        #   Parent Loop BB20_4 Depth=1
                                        #     Parent Loop BB20_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$a0, $zero, 9
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.d	$a0, $s0, $s3
	bnez	$a0, .LBB20_17
# %bb.16:                               #   in Loop: Header=BB20_15 Depth=3
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ldx.d	$a0, $a0, $s5
	ldx.d	$s8, $a0, $s7
	ld.d	$s0, $s8, 0
	ldx.d	$s1, $s0, $s3
.LBB20_17:                              #   in Loop: Header=BB20_15 Depth=3
	ori	$a0, $zero, 18
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	bnez	$a0, .LBB20_14
# %bb.18:                               #   in Loop: Header=BB20_15 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.204)
	addi.d	$a0, $a0, %pc_lo12(.L.str.204)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ldx.d	$a0, $a0, $s5
	ldx.d	$s8, $a0, $s7
	ld.d	$s0, $s8, 0
	ldx.d	$s1, $s0, $s3
	b	.LBB20_14
	.p2align	4, , 16
.LBB20_19:                              # %._crit_edge
                                        #   in Loop: Header=BB20_8 Depth=2
	ori	$a1, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, 8
	beqz	$a0, .LBB20_21
# %bb.20:                               #   in Loop: Header=BB20_8 Depth=2
	bgtz	$s1, .LBB20_22
	b	.LBB20_7
	.p2align	4, , 16
.LBB20_21:                              #   in Loop: Header=BB20_8 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.204)
	addi.d	$a0, $a0, %pc_lo12(.L.str.204)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(img)
	ld.w	$s1, $a0, 32
	blez	$s1, .LBB20_7
.LBB20_22:                              # %.lr.ph.preheader.1
                                        #   in Loop: Header=BB20_8 Depth=2
	ld.d	$a0, $fp, 0
	ldx.d	$a0, $a0, $s5
	ldx.d	$a0, $a0, $s7
	ld.d	$s0, $a0, 8
	move	$s2, $zero
	move	$s3, $zero
	b	.LBB20_24
	.p2align	4, , 16
.LBB20_23:                              #   in Loop: Header=BB20_24 Depth=3
	ld.d	$a0, $s1, 0
	addi.d	$a1, $a0, 4
	st.d	$a1, $s1, 8
	addi.d	$a1, $a0, 8
	st.d	$a1, $s1, 16
	addi.d	$a1, $a0, 12
	st.d	$a1, $s1, 24
	addi.d	$a1, $a0, 16
	st.d	$a1, $s1, 32
	addi.d	$a1, $a0, 20
	st.d	$a1, $s1, 40
	addi.d	$a1, $a0, 24
	st.d	$a1, $s1, 48
	addi.d	$a1, $a0, 28
	st.d	$a1, $s1, 56
	addi.d	$a0, $a0, 32
	st.d	$a0, $s1, 64
	ld.d	$a0, $s4, %pc_lo12(img)
	ld.w	$s1, $a0, 32
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bge	$s3, $s1, .LBB20_7
.LBB20_24:                              # %.lr.ph.1
                                        #   Parent Loop BB20_4 Depth=1
                                        #     Parent Loop BB20_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$a0, $zero, 9
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.d	$a0, $s0, $s2
	bnez	$a0, .LBB20_26
# %bb.25:                               #   in Loop: Header=BB20_24 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.204)
	addi.d	$a0, $a0, %pc_lo12(.L.str.204)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ldx.d	$a0, $a0, $s5
	ldx.d	$a0, $a0, $s7
	ld.d	$s0, $a0, 8
	ldx.d	$s1, $s0, $s2
.LBB20_26:                              #   in Loop: Header=BB20_24 Depth=3
	ori	$a0, $zero, 18
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	bnez	$a0, .LBB20_23
# %bb.27:                               #   in Loop: Header=BB20_24 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.204)
	addi.d	$a0, $a0, %pc_lo12(.L.str.204)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ldx.d	$a0, $a0, $s5
	ldx.d	$a0, $a0, $s7
	ld.d	$s0, $a0, 8
	ldx.d	$s1, $s0, $s2
	b	.LBB20_23
.LBB20_28:
	alsl.w	$a0, $s1, $s1, 3
	slli.w	$a0, $a0, 6
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
.Lfunc_end20:
	.size	get_mem_mv, .Lfunc_end20-get_mem_mv
                                        # -- End function
	.globl	get_mem_ACcoeff                 # -- Begin function get_mem_ACcoeff
	.p2align	5
	.type	get_mem_ACcoeff,@function
get_mem_ACcoeff:                        # @get_mem_ACcoeff
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
	pcalau12i	$a1, %pc_hi20(img)
	ld.d	$a1, $a1, %pc_lo12(img)
	ldptr.w	$s1, $a1, 15528
	move	$s0, $a0
	addi.w	$fp, $s1, 4
	ori	$a1, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	beqz	$a0, .LBB21_2
# %bb.1:
	addi.w	$a0, $zero, -3
	bge	$s1, $a0, .LBB21_3
	b	.LBB21_31
.LBB21_2:
	pcalau12i	$a0, %pc_hi20(.L.str.205)
	addi.d	$a0, $a0, %pc_lo12(.L.str.205)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -3
	blt	$s1, $a0, .LBB21_31
.LBB21_3:                               # %.lr.ph.preheader
	bstrpick.d	$a0, $fp, 31, 0
	slli.d	$s4, $a0, 3
	pcalau12i	$a0, %pc_hi20(.L.str.205)
	addi.d	$s1, $a0, %pc_lo12(.L.str.205)
	move	$s5, $zero
	b	.LBB21_5
	.p2align	4, , 16
.LBB21_4:                               #   in Loop: Header=BB21_5 Depth=1
	addi.d	$s5, $s5, 8
	beq	$s4, $s5, .LBB21_31
.LBB21_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 4
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	move	$s2, $a0
	stx.d	$a0, $a1, $s5
	bnez	$a0, .LBB21_7
# %bb.6:                                #   in Loop: Header=BB21_5 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ldx.d	$s2, $a0, $s5
.LBB21_7:                               #   in Loop: Header=BB21_5 Depth=1
	ori	$a0, $zero, 2
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s2, 0
	bnez	$a0, .LBB21_9
# %bb.8:                                #   in Loop: Header=BB21_5 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ldx.d	$s2, $a0, $s5
	ld.d	$s3, $s2, 0
.LBB21_9:                               #   in Loop: Header=BB21_5 Depth=1
	ori	$a0, $zero, 65
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	bnez	$a0, .LBB21_11
# %bb.10:                               #   in Loop: Header=BB21_5 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ldx.d	$s2, $a0, $s5
	ld.d	$s3, $s2, 0
.LBB21_11:                              #   in Loop: Header=BB21_5 Depth=1
	ori	$a0, $zero, 65
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 8
	bnez	$a0, .LBB21_13
# %bb.12:                               #   in Loop: Header=BB21_5 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ldx.d	$s2, $a0, $s5
.LBB21_13:                              #   in Loop: Header=BB21_5 Depth=1
	ori	$a0, $zero, 2
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s2, 8
	bnez	$a0, .LBB21_15
# %bb.14:                               #   in Loop: Header=BB21_5 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ldx.d	$s2, $a0, $s5
	ld.d	$s3, $s2, 8
.LBB21_15:                              #   in Loop: Header=BB21_5 Depth=1
	ori	$a0, $zero, 65
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	bnez	$a0, .LBB21_17
# %bb.16:                               #   in Loop: Header=BB21_5 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ldx.d	$s2, $a0, $s5
	ld.d	$s3, $s2, 8
.LBB21_17:                              #   in Loop: Header=BB21_5 Depth=1
	ori	$a0, $zero, 65
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 8
	bnez	$a0, .LBB21_19
# %bb.18:                               #   in Loop: Header=BB21_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.205)
	addi.d	$a0, $a0, %pc_lo12(.L.str.205)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ldx.d	$s2, $a0, $s5
.LBB21_19:                              #   in Loop: Header=BB21_5 Depth=1
	ori	$a0, $zero, 2
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s2, 16
	bnez	$a0, .LBB21_21
# %bb.20:                               #   in Loop: Header=BB21_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.205)
	addi.d	$a0, $a0, %pc_lo12(.L.str.205)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ldx.d	$s2, $a0, $s5
	ld.d	$s3, $s2, 16
.LBB21_21:                              #   in Loop: Header=BB21_5 Depth=1
	ori	$a0, $zero, 65
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	bnez	$a0, .LBB21_23
# %bb.22:                               #   in Loop: Header=BB21_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.205)
	addi.d	$a0, $a0, %pc_lo12(.L.str.205)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ldx.d	$s2, $a0, $s5
	ld.d	$s3, $s2, 16
.LBB21_23:                              #   in Loop: Header=BB21_5 Depth=1
	ori	$a0, $zero, 65
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 8
	bnez	$a0, .LBB21_25
# %bb.24:                               #   in Loop: Header=BB21_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.205)
	addi.d	$a0, $a0, %pc_lo12(.L.str.205)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ldx.d	$s2, $a0, $s5
.LBB21_25:                              #   in Loop: Header=BB21_5 Depth=1
	ori	$a0, $zero, 2
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s2, 24
	bnez	$a0, .LBB21_27
# %bb.26:                               #   in Loop: Header=BB21_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.205)
	addi.d	$a0, $a0, %pc_lo12(.L.str.205)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ldx.d	$a0, $a0, $s5
	ld.d	$s3, $a0, 24
.LBB21_27:                              #   in Loop: Header=BB21_5 Depth=1
	ori	$a0, $zero, 65
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	bnez	$a0, .LBB21_29
# %bb.28:                               #   in Loop: Header=BB21_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.205)
	addi.d	$a0, $a0, %pc_lo12(.L.str.205)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ldx.d	$a0, $a0, $s5
	ld.d	$s3, $a0, 24
.LBB21_29:                              #   in Loop: Header=BB21_5 Depth=1
	ori	$a0, $zero, 65
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 8
	bnez	$a0, .LBB21_4
# %bb.30:                               #   in Loop: Header=BB21_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.205)
	addi.d	$a0, $a0, %pc_lo12(.L.str.205)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	b	.LBB21_4
.LBB21_31:                              # %._crit_edge
	ori	$a0, $zero, 2080
	mul.w	$a0, $fp, $a0
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
.Lfunc_end21:
	.size	get_mem_ACcoeff, .Lfunc_end21-get_mem_ACcoeff
                                        # -- End function
	.globl	get_mem_DCcoeff                 # -- Begin function get_mem_DCcoeff
	.p2align	5
	.type	get_mem_DCcoeff,@function
get_mem_DCcoeff:                        # @get_mem_DCcoeff
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 3
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $fp, 0
	bnez	$a0, .LBB22_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.206)
	addi.d	$a0, $a0, %pc_lo12(.L.str.206)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
.LBB22_2:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s0, 0
	bnez	$a0, .LBB22_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.206)
	addi.d	$a0, $a0, %pc_lo12(.L.str.206)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	ld.d	$s1, $s0, 0
.LBB22_4:
	ori	$a0, $zero, 65
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	bnez	$a0, .LBB22_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.206)
	addi.d	$a0, $a0, %pc_lo12(.L.str.206)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	ld.d	$s1, $s0, 0
.LBB22_6:
	ori	$a0, $zero, 65
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	bnez	$a0, .LBB22_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L.str.206)
	addi.d	$a0, $a0, %pc_lo12(.L.str.206)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
.LBB22_8:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s0, 8
	bnez	$a0, .LBB22_10
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.L.str.206)
	addi.d	$a0, $a0, %pc_lo12(.L.str.206)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	ld.d	$s1, $s0, 8
.LBB22_10:
	ori	$a0, $zero, 65
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	bnez	$a0, .LBB22_12
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.206)
	addi.d	$a0, $a0, %pc_lo12(.L.str.206)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	ld.d	$s1, $s0, 8
.LBB22_12:
	ori	$a0, $zero, 65
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	bnez	$a0, .LBB22_14
# %bb.13:
	pcalau12i	$a0, %pc_hi20(.L.str.206)
	addi.d	$a0, $a0, %pc_lo12(.L.str.206)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
.LBB22_14:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s0, 16
	bnez	$a0, .LBB22_16
# %bb.15:
	pcalau12i	$a0, %pc_hi20(.L.str.206)
	addi.d	$a0, $a0, %pc_lo12(.L.str.206)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$s1, $a0, 16
.LBB22_16:
	ori	$a0, $zero, 65
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	bnez	$a0, .LBB22_18
# %bb.17:
	pcalau12i	$a0, %pc_hi20(.L.str.206)
	addi.d	$a0, $a0, %pc_lo12(.L.str.206)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$s1, $a0, 16
.LBB22_18:
	ori	$a0, $zero, 65
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	bnez	$a0, .LBB22_20
# %bb.19:
	pcalau12i	$a0, %pc_hi20(.L.str.206)
	addi.d	$a0, $a0, %pc_lo12(.L.str.206)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB22_20:
	ori	$a0, $zero, 1560
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end22:
	.size	get_mem_DCcoeff, .Lfunc_end22-get_mem_DCcoeff
                                        # -- End function
	.globl	free_mem_mv                     # -- Begin function free_mem_mv
	.p2align	5
	.type	free_mem_mv,@function
free_mem_mv:                            # @free_mem_mv
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
	move	$fp, $a0
	move	$s0, $zero
	pcalau12i	$s1, %pc_hi20(img)
	ori	$s2, $zero, 4
	b	.LBB23_2
	.p2align	4, , 16
.LBB23_1:                               # %._crit_edge.1.3
                                        #   in Loop: Header=BB23_2 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 24
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
	beq	$s0, $s2, .LBB23_26
.LBB23_2:                               # %.preheader31
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_4 Depth 2
                                        #     Child Loop BB23_7 Depth 2
                                        #     Child Loop BB23_10 Depth 2
                                        #     Child Loop BB23_13 Depth 2
                                        #     Child Loop BB23_16 Depth 2
                                        #     Child Loop BB23_19 Depth 2
                                        #     Child Loop BB23_22 Depth 2
                                        #     Child Loop BB23_25 Depth 2
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a0, $a0, 32
	alsl.d	$s3, $s0, $fp, 3
	blez	$a0, .LBB23_5
# %bb.3:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB23_2 Depth=1
	move	$s4, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB23_4:                               # %.lr.ph
                                        #   Parent Loop BB23_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a0, $a0, 32
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	blt	$s5, $a0, .LBB23_4
.LBB23_5:                               # %._crit_edge
                                        #   in Loop: Header=BB23_2 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a0, $a0, 32
	blez	$a0, .LBB23_8
# %bb.6:                                # %.lr.ph.1.preheader
                                        #   in Loop: Header=BB23_2 Depth=1
	move	$s4, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB23_7:                               # %.lr.ph.1
                                        #   Parent Loop BB23_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a0, $a0, 32
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	blt	$s5, $a0, .LBB23_7
.LBB23_8:                               # %._crit_edge.1
                                        #   in Loop: Header=BB23_2 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a0, $a0, 32
	blez	$a0, .LBB23_11
# %bb.9:                                # %.lr.ph.145.preheader
                                        #   in Loop: Header=BB23_2 Depth=1
	move	$s4, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB23_10:                              # %.lr.ph.145
                                        #   Parent Loop BB23_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a0, $a0, 32
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	blt	$s5, $a0, .LBB23_10
.LBB23_11:                              # %._crit_edge.146
                                        #   in Loop: Header=BB23_2 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a0, $a0, 32
	blez	$a0, .LBB23_14
# %bb.12:                               # %.lr.ph.1.1.preheader
                                        #   in Loop: Header=BB23_2 Depth=1
	move	$s4, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB23_13:                              # %.lr.ph.1.1
                                        #   Parent Loop BB23_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a0, $a0, 32
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	blt	$s5, $a0, .LBB23_13
.LBB23_14:                              # %._crit_edge.1.1
                                        #   in Loop: Header=BB23_2 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a0, $a0, 32
	blez	$a0, .LBB23_17
# %bb.15:                               # %.lr.ph.2.preheader
                                        #   in Loop: Header=BB23_2 Depth=1
	move	$s4, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB23_16:                              # %.lr.ph.2
                                        #   Parent Loop BB23_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a0, $a0, 32
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	blt	$s5, $a0, .LBB23_16
.LBB23_17:                              # %._crit_edge.2
                                        #   in Loop: Header=BB23_2 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a0, $a0, 32
	blez	$a0, .LBB23_20
# %bb.18:                               # %.lr.ph.1.2.preheader
                                        #   in Loop: Header=BB23_2 Depth=1
	move	$s4, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB23_19:                              # %.lr.ph.1.2
                                        #   Parent Loop BB23_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a0, $a0, 32
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	blt	$s5, $a0, .LBB23_19
.LBB23_20:                              # %._crit_edge.1.2
                                        #   in Loop: Header=BB23_2 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a0, $a0, 32
	blez	$a0, .LBB23_23
# %bb.21:                               # %.lr.ph.3.preheader
                                        #   in Loop: Header=BB23_2 Depth=1
	move	$s4, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB23_22:                              # %.lr.ph.3
                                        #   Parent Loop BB23_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 24
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 24
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a0, $a0, 32
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	blt	$s5, $a0, .LBB23_22
.LBB23_23:                              # %._crit_edge.3
                                        #   in Loop: Header=BB23_2 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 24
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a0, $a0, 32
	blez	$a0, .LBB23_1
# %bb.24:                               # %.lr.ph.1.3.preheader
                                        #   in Loop: Header=BB23_2 Depth=1
	move	$s4, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB23_25:                              # %.lr.ph.1.3
                                        #   Parent Loop BB23_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 24
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 24
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a0, $a0, 32
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	blt	$s5, $a0, .LBB23_25
	b	.LBB23_1
.LBB23_26:
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end23:
	.size	free_mem_mv, .Lfunc_end23-free_mem_mv
                                        # -- End function
	.globl	free_mem_ACcoeff                # -- Begin function free_mem_ACcoeff
	.p2align	5
	.type	free_mem_ACcoeff,@function
free_mem_ACcoeff:                       # @free_mem_ACcoeff
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(img)
	ld.d	$a1, $s0, %pc_lo12(img)
	ldptr.w	$a1, $a1, 15528
	addi.w	$a2, $zero, -3
	move	$fp, $a0
	blt	$a1, $a2, .LBB24_3
# %bb.1:                                # %.preheader17.preheader
	addi.w	$s1, $zero, -1
	lu12i.w	$a0, 3
	ori	$s2, $a0, 3240
	move	$s3, $fp
	.p2align	4, , 16
.LBB24_2:                               # %.preheader17
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 24
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 24
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(img)
	ldx.w	$a0, $a0, $s2
	addi.w	$a0, $a0, 3
	addi.d	$s1, $s1, 1
	addi.d	$s3, $s3, 8
	blt	$s1, $a0, .LBB24_2
.LBB24_3:                               # %._crit_edge
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end24:
	.size	free_mem_ACcoeff, .Lfunc_end24-free_mem_ACcoeff
                                        # -- End function
	.globl	free_mem_DCcoeff                # -- Begin function free_mem_DCcoeff
	.p2align	5
	.type	free_mem_DCcoeff,@function
free_mem_DCcoeff:                       # @free_mem_DCcoeff
# %bb.0:                                # %.preheader
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end25:
	.size	free_mem_DCcoeff, .Lfunc_end25-free_mem_DCcoeff
                                        # -- End function
	.globl	init_orig_buffers               # -- Begin function init_orig_buffers
	.p2align	5
	.type	init_orig_buffers,@function
init_orig_buffers:                      # @init_orig_buffers
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(img)
	ld.d	$a0, $s1, %pc_lo12(img)
	ld.w	$a1, $a0, 68
	ld.w	$a2, $a0, 52
	pcalau12i	$a0, %pc_hi20(imgY_org_frm)
	addi.d	$s0, $a0, %pc_lo12(imgY_org_frm)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_mem2Dpel)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(img)
	ldptr.w	$a2, $a1, 15536
	move	$fp, $a0
	beqz	$a2, .LBB26_2
# %bb.1:
	ld.w	$a2, $a1, 80
	ld.w	$a3, $a1, 64
	pcalau12i	$a0, %pc_hi20(imgUV_org_frm)
	addi.d	$a0, $a0, %pc_lo12(imgUV_org_frm)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(get_mem3Dpel)
	jirl	$ra, $ra, 0
	add.w	$fp, $a0, $fp
.LBB26_2:
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ld.w	$a0, $a0, 1148
	bnez	$a0, .LBB26_9
# %bb.3:
	ld.d	$a2, $s1, %pc_lo12(img)
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a2, 68
	ld.w	$a2, $a2, 52
	pcalau12i	$a3, %pc_hi20(imgY_org_top)
	addi.d	$a3, $a3, %pc_lo12(imgY_org_top)
	pcalau12i	$a4, %pc_hi20(imgY_org_bot)
	addi.d	$a4, $a4, %pc_lo12(imgY_org_bot)
	pcaddu18i	$ra, %call36(init_top_bot_planes)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(img)
	ldptr.w	$a0, $a0, 15536
	beqz	$a0, .LBB26_9
# %bb.4:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(imgUV_org_top)
	st.d	$a0, $s0, %pc_lo12(imgUV_org_top)
	bnez	$a0, .LBB26_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.200)
	addi.d	$a0, $a0, %pc_lo12(.L.str.200)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB26_6:
	ori	$a0, $zero, 2
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	pcalau12i	$s2, %pc_hi20(imgUV_org_bot)
	st.d	$a0, $s2, %pc_lo12(imgUV_org_bot)
	bnez	$a0, .LBB26_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L.str.201)
	addi.d	$a0, $a0, %pc_lo12(.L.str.201)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s2, %pc_lo12(imgUV_org_bot)
.LBB26_8:
	pcalau12i	$s3, %pc_hi20(imgUV_org_frm)
	ld.d	$a0, $s3, %pc_lo12(imgUV_org_frm)
	ld.d	$a2, $s1, %pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a2, 80
	ld.w	$a2, $a2, 64
	ld.d	$a3, $s0, %pc_lo12(imgUV_org_top)
	pcaddu18i	$ra, %call36(init_top_bot_planes)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(imgUV_org_frm)
	ld.d	$a2, $s1, %pc_lo12(img)
	ld.d	$a5, $a1, 8
	ld.w	$a1, $a2, 80
	ld.d	$a3, $s0, %pc_lo12(imgUV_org_top)
	ld.d	$a4, $s2, %pc_lo12(imgUV_org_bot)
	ld.w	$a2, $a2, 64
	add.d	$fp, $fp, $a0
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 8
	move	$a0, $a5
	pcaddu18i	$ra, %call36(init_top_bot_planes)
	jirl	$ra, $ra, 0
	add.d	$a0, $fp, $a0
	addi.w	$fp, $a0, 32
.LBB26_9:
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end26:
	.size	init_orig_buffers, .Lfunc_end26-init_orig_buffers
                                        # -- End function
	.globl	free_orig_planes                # -- Begin function free_orig_planes
	.p2align	5
	.type	free_orig_planes,@function
free_orig_planes:                       # @free_orig_planes
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(imgY_org_frm)
	ld.d	$a0, $a0, %pc_lo12(imgY_org_frm)
	pcaddu18i	$ra, %call36(free_mem2Dpel)
	jirl	$ra, $ra, 0
	pcalau12i	$fp, %pc_hi20(img)
	ld.d	$a0, $fp, %pc_lo12(img)
	ldptr.w	$a0, $a0, 15536
	beqz	$a0, .LBB27_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(imgUV_org_frm)
	ld.d	$a0, $a0, %pc_lo12(imgUV_org_frm)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem3Dpel)
	jirl	$ra, $ra, 0
.LBB27_2:
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ld.w	$a0, $a0, 1148
	beqz	$a0, .LBB27_4
.LBB27_3:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB27_4:
	pcalau12i	$a0, %pc_hi20(imgY_org_top)
	ld.d	$a0, $a0, %pc_lo12(imgY_org_top)
	pcalau12i	$a1, %pc_hi20(imgY_org_bot)
	ld.d	$a1, $a1, %pc_lo12(imgY_org_bot)
	pcaddu18i	$ra, %call36(free_top_bot_planes)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(img)
	ldptr.w	$a0, $a0, 15536
	beqz	$a0, .LBB27_3
# %bb.5:
	pcalau12i	$fp, %pc_hi20(imgUV_org_top)
	ld.d	$a0, $fp, %pc_lo12(imgUV_org_top)
	pcalau12i	$s0, %pc_hi20(imgUV_org_bot)
	ld.d	$a1, $s0, %pc_lo12(imgUV_org_bot)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(free_top_bot_planes)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(imgUV_org_top)
	ld.d	$a1, $s0, %pc_lo12(imgUV_org_bot)
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(free_top_bot_planes)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(imgUV_org_top)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(imgUV_org_bot)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end27:
	.size	free_orig_planes, .Lfunc_end27-free_orig_planes
                                        # -- End function
	.globl	combine_field                   # -- Begin function combine_field
	.p2align	5
	.type	combine_field,@function
combine_field:                          # @combine_field
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
	pcalau12i	$fp, %pc_hi20(img)
	ld.d	$a1, $fp, %pc_lo12(img)
	ld.w	$a0, $a1, 68
	ori	$a2, $zero, 2
	blt	$a0, $a2, .LBB28_3
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$s0, %pc_hi20(imgY_com)
	pcalau12i	$a0, %got_pc_hi20(enc_top_picture)
	ld.d	$s1, $a0, %got_pc_lo12(enc_top_picture)
	pcalau12i	$a0, %got_pc_hi20(enc_bottom_picture)
	ld.d	$s2, $a0, %got_pc_lo12(enc_bottom_picture)
	move	$s3, $zero
	move	$s4, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB28_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a2, $s0, %pc_lo12(imgY_com)
	ldptr.d	$a3, $a0, 6440
	ldx.d	$a0, $a2, $s4
	ld.w	$a2, $a1, 52
	ldx.d	$a1, $a3, $s3
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s0, %pc_lo12(imgY_com)
	ld.d	$a2, $fp, %pc_lo12(img)
	ldptr.d	$a3, $a0, 6440
	add.d	$a0, $a1, $s4
	ld.d	$a0, $a0, 8
	ld.w	$a2, $a2, 52
	ldx.d	$a1, $a3, $s3
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, %pc_lo12(img)
	ld.wu	$a0, $a1, 68
	addi.d	$s5, $s5, 1
	srli.d	$a2, $a0, 31
	add.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 1
	addi.d	$s4, $s4, 16
	addi.d	$s3, $s3, 8
	blt	$s5, $a0, .LBB28_2
.LBB28_3:                               # %._crit_edge
	ldptr.w	$a0, $a1, 15536
	beqz	$a0, .LBB28_7
# %bb.4:                                # %.preheader
	ld.w	$a0, $a1, 80
	ori	$a2, $zero, 2
	blt	$a0, $a2, .LBB28_7
# %bb.5:                                # %.lr.ph18.preheader
	pcalau12i	$s0, %pc_hi20(imgUV_com)
	pcalau12i	$a0, %got_pc_hi20(enc_top_picture)
	ld.d	$s1, $a0, %got_pc_lo12(enc_top_picture)
	pcalau12i	$a0, %got_pc_hi20(enc_bottom_picture)
	ld.d	$s2, $a0, %got_pc_lo12(enc_bottom_picture)
	move	$s3, $zero
	move	$s4, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB28_6:                               # %.lr.ph18
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a2, $s0, %pc_lo12(imgUV_com)
	ldptr.d	$a0, $a0, 6472
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a0, 0
	ldx.d	$a0, $a2, $s4
	ld.w	$a2, $a1, 64
	ldx.d	$a1, $a3, $s3
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s0, %pc_lo12(imgUV_com)
	ldptr.d	$a0, $a0, 6472
	ld.d	$a1, $a1, 0
	ld.d	$a2, $fp, %pc_lo12(img)
	ld.d	$a3, $a0, 0
	add.d	$a0, $a1, $s4
	ld.d	$a0, $a0, 8
	ld.w	$a2, $a2, 64
	ldx.d	$a1, $a3, $s3
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s0, %pc_lo12(imgUV_com)
	ldptr.d	$a0, $a0, 6472
	ld.d	$a1, $a1, 8
	ld.d	$a2, $fp, %pc_lo12(img)
	ld.d	$a3, $a0, 8
	ldx.d	$a0, $a1, $s4
	ld.w	$a2, $a2, 64
	ldx.d	$a1, $a3, $s3
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s0, %pc_lo12(imgUV_com)
	ldptr.d	$a0, $a0, 6472
	ld.d	$a1, $a1, 8
	ld.d	$a2, $fp, %pc_lo12(img)
	ld.d	$a3, $a0, 8
	add.d	$a0, $a1, $s4
	ld.d	$a0, $a0, 8
	ld.w	$a2, $a2, 64
	ldx.d	$a1, $a3, $s3
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, %pc_lo12(img)
	ld.wu	$a0, $a1, 80
	addi.d	$s5, $s5, 1
	srli.d	$a2, $a0, 31
	add.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 1
	addi.d	$s4, $s4, 16
	addi.d	$s3, $s3, 8
	blt	$s5, $a0, .LBB28_6
.LBB28_7:                               # %.loopexit
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
.Lfunc_end28:
	.size	combine_field, .Lfunc_end28-combine_field
                                        # -- End function
	.globl	decide_fld_frame                # -- Begin function decide_fld_frame
	.p2align	5
	.type	decide_fld_frame,@function
decide_fld_frame:                       # @decide_fld_frame
# %bb.0:
	movgr2fr.w	$fa3, $a1
	ffint.d.w	$fa3, $fa3
	fcvt.d.s	$fa0, $fa0
	fmadd.d	$fa0, $fa3, $fa2, $fa0
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fcvt.d.s	$fa1, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fcmp.cule.d	$fcc0, $fa1, $fa0
	movcf2gr	$a0, $fcc0
	ret
.Lfunc_end29:
	.size	decide_fld_frame, .Lfunc_end29-decide_fld_frame
                                        # -- End function
	.type	inputs,@object                  # @inputs
	.comm	inputs,5800,8
	.type	input,@object                   # @input
	.data
	.globl	input
	.p2align	3, 0x0
input:
	.dword	inputs
	.size	input, 8

	.type	images,@object                  # @images
	.comm	images,15616,8
	.type	img,@object                     # @img
	.globl	img
	.p2align	3, 0x0
img:
	.dword	images
	.size	img, 8

	.type	statistics,@object              # @statistics
	.comm	statistics,2264,8
	.type	stats,@object                   # @stats
	.globl	stats
	.p2align	3, 0x0
stats:
	.dword	statistics
	.size	stats, 8

	.type	snrs,@object                    # @snrs
	.comm	snrs,124,4
	.type	snr,@object                     # @snr
	.globl	snr
	.p2align	3, 0x0
snr:
	.dword	snrs
	.size	snr, 8

	.type	decoders,@object                # @decoders
	.comm	decoders,56,8
	.type	decs,@object                    # @decs
	.globl	decs
	.p2align	3, 0x0
decs:
	.dword	decoders
	.size	decs, 8

	.type	initial_Bframes,@object         # @initial_Bframes
	.bss
	.globl	initial_Bframes
	.p2align	2, 0x0
initial_Bframes:
	.word	0                               # 0x0
	.size	initial_Bframes, 4

	.type	In2ndIGOP,@object               # @In2ndIGOP
	.globl	In2ndIGOP
	.p2align	2, 0x0
In2ndIGOP:
	.word	0                               # 0x0
	.size	In2ndIGOP, 4

	.type	start_frame_no_in_this_IGOP,@object # @start_frame_no_in_this_IGOP
	.globl	start_frame_no_in_this_IGOP
	.p2align	2, 0x0
start_frame_no_in_this_IGOP:
	.word	0                               # 0x0
	.size	start_frame_no_in_this_IGOP, 4

	.type	start_tr_in_this_IGOP,@object   # @start_tr_in_this_IGOP
	.globl	start_tr_in_this_IGOP
	.p2align	2, 0x0
start_tr_in_this_IGOP:
	.word	0                               # 0x0
	.size	start_tr_in_this_IGOP, 4

	.type	FirstFrameIn2ndIGOP,@object     # @FirstFrameIn2ndIGOP
	.globl	FirstFrameIn2ndIGOP
	.p2align	2, 0x0
FirstFrameIn2ndIGOP:
	.word	0                               # 0x0
	.size	FirstFrameIn2ndIGOP, 4

	.type	cabac_encoding,@object          # @cabac_encoding
	.globl	cabac_encoding
	.p2align	2, 0x0
cabac_encoding:
	.word	0                               # 0x0
	.size	cabac_encoding, 4

	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.comm	giRDOpt_B8OnlyFlag,4,4
	.type	p_in,@object                    # @p_in
	.comm	p_in,4,4
	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
	.type	p_trace,@object                 # @p_trace
	.comm	p_trace,8,8
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	p_stat,@object                  # @p_stat
	.comm	p_stat,8,8
	.type	frame_statistic_start,@object   # @frame_statistic_start
	.comm	frame_statistic_start,4,4
	.type	frame_pic_1,@object             # @frame_pic_1
	.comm	frame_pic_1,8,8
	.type	frame_pic_2,@object             # @frame_pic_2
	.comm	frame_pic_2,8,8
	.type	frame_pic_3,@object             # @frame_pic_3
	.comm	frame_pic_3,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	number_sp2_frames,@object       # @number_sp2_frames
	.comm	number_sp2_frames,4,4
	.type	frame_pic_si,@object            # @frame_pic_si
	.comm	frame_pic_si,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	top_pic,@object                 # @top_pic
	.comm	top_pic,8,8
	.type	bottom_pic,@object              # @bottom_pic
	.comm	bottom_pic,8,8
	.type	Bit_Buffer,@object              # @Bit_Buffer
	.comm	Bit_Buffer,8,8
	.type	quadratic_RC,@object            # @quadratic_RC
	.comm	quadratic_RC,8,8
	.type	frame_ctr,@object               # @frame_ctr
	.comm	frame_ctr,20,4
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	key_frame,@object               # @key_frame
	.comm	key_frame,4,4
	.type	init_img.mb_width_cr,@object    # @init_img.mb_width_cr
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2, 0x0
init_img.mb_width_cr:
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	16                              # 0x10
	.size	init_img.mb_width_cr, 16

	.type	init_img.mb_height_cr,@object   # @init_img.mb_height_cr
	.p2align	2, 0x0
init_img.mb_height_cr:
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	16                              # 0x10
	.word	16                              # 0x10
	.size	init_img.mb_height_cr, 16

	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,1752,8
	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,1752,8
	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.comm	rddata_top_field_mb,1752,8
	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,1752,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"init_img: img->quad"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"init_img: img->mb_data"
	.size	.L.str.1, 23

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"init_img: img->intra_block"
	.size	.L.str.2, 27

	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"init mb16x16_cost_frame"
	.size	.L.str.3, 24

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"malloc_picture: Picture structure"
	.size	.L.str.4, 34

	.type	report_frame_statistic.last_mode_use,@object # @report_frame_statistic.last_mode_use
	.local	report_frame_statistic.last_mode_use
	.comm	report_frame_statistic.last_mode_use,600,8
	.type	report_frame_statistic.last_b8_mode_0,@object # @report_frame_statistic.last_b8_mode_0
	.local	report_frame_statistic.last_b8_mode_0
	.comm	report_frame_statistic.last_b8_mode_0,40,4
	.type	report_frame_statistic.last_mode_chroma_use,@object # @report_frame_statistic.last_mode_chroma_use
	.local	report_frame_statistic.last_mode_chroma_use
	.comm	report_frame_statistic.last_mode_chroma_use,16,8
	.type	report_frame_statistic.last_bit_ctr_n,@object # @report_frame_statistic.last_bit_ctr_n
	.local	report_frame_statistic.last_bit_ctr_n
	.comm	report_frame_statistic.last_bit_ctr_n,8,8
	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"stat_frame.dat"
	.size	.L.str.5, 15

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"r"
	.size	.L.str.6, 2

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"a"
	.size	.L.str.7, 2

	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Error open file %s  \n"
	.size	.L.str.8, 22

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"stat_frame.dat.dat"
	.size	.L.str.9, 19

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	" --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- \n"
	.size	.L.str.10, 469

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"|            Encoder statistics. This file is generated during first encoding session, new sessions will be appended                                                                                                                                                                                                                                                                                                                                                              |\n"
	.size	.L.str.11, 469

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"|  ver       | Date  | Time  |    Sequence        |Frm | QP |P/MbInt|   Bits   |  SNRY  |  SNRU  |  SNRV  |  I4  |  I8  | I16  | IC0  | IC1  | IC2  | IC3  | PI4  | PI8  | PI16 |  P0  |  P1  |  P2  |  P3  | P1*8*| P1*4*| P2*8*| P2*4*| P3*8*| P3*4*|  P8  | P8:4 | P4*8*| P4*4*| P8:5 | P8:6 | P8:7 | BI4  | BI8  | BI16 |  B0  |  B1  |  B2  |  B3  | B0*8*| B0*4*| B1*8*| B1*4*| B2*8*| B2*4*| B3*8*| B3*4*|  B8  | B8:0 |B80*8*|B80*4*| B8:4 | B4*8*| B4*4*| B8:5 | B8:6 | B8:7 |\n"
	.size	.L.str.12, 473

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	" ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- \n"
	.size	.L.str.13, 473

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"|%4s/%s"
	.size	.L.str.14, 8

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"12.1"
	.size	.L.str.15, 5

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"(FRExt)"
	.size	.L.str.16, 8

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"%d-%b-%Y"
	.size	.L.str.17, 9

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"| %1.5s |"
	.size	.L.str.18, 10

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"%H:%M:%S"
	.size	.L.str.19, 9

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	" %1.5s |"
	.size	.L.str.20, 9

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"%20.20s|"
	.size	.L.str.21, 9

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"%3d |"
	.size	.L.str.22, 6

	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"  %d/%d  |"
	.size	.L.str.23, 11

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	" %9d|"
	.size	.L.str.24, 6

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	" %2.4f| %2.4f| %2.4f|"
	.size	.L.str.25, 22

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	" %5lld|"
	.size	.L.str.26, 8

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	" %5d|"
	.size	.L.str.27, 6

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	" %d|"
	.size	.L.str.28, 5

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"-------------------------------------------------------------------------------\n"
	.size	.L.str.30, 81

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	" Freq. for encoded bitstream       : %1.0f\n"
	.size	.L.str.31, 44

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	" ME Metric for Refinement Level %1d  : %s\n"
	.size	.L.str.32, 43

	.type	DistortionType,@object          # @DistortionType
	.data
DistortionType:
	.asciz	"SAD\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"SSE\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Hadamard SAD\000\000\000\000\000\000\000"
	.size	DistortionType, 60

	.type	.L.str.33,@object               # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	" Mode Decision Metric              : %s\n"
	.size	.L.str.33, 41

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	" Motion Estimation for components  : YCbCr\n"
	.size	.L.str.34, 44

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	" Motion Estimation for components  : Y\n"
	.size	.L.str.35, 40

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	" Image format                      : %dx%d\n"
	.size	.L.str.36, 44

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	" Error robustness                  : On\n"
	.size	.L.str.37, 41

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	" Error robustness                  : Off\n"
	.size	.L.str.38, 42

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	" Search range                      : %d\n"
	.size	.L.str.39, 41

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	" Total number of references        : %d\n"
	.size	.L.str.40, 41

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	" References for P slices           : %d\n"
	.size	.L.str.41, 41

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	" List0 references for B slices     : %d\n"
	.size	.L.str.42, 41

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	" List1 references for B slices     : %d\n"
	.size	.L.str.43, 41

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	" Sequence type                     :"
	.size	.L.str.44, 37

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	" Hierarchy (QP: I %d, P %d, B %d) \n"
	.size	.L.str.45, 36

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"-RB"
	.size	.L.str.47, 4

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"-B"
	.size	.L.str.48, 3

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"-P"
	.size	.L.str.49, 3

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	" %s (QP: I %d, P %d, RB %d) \n"
	.size	.L.str.50, 30

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	" %s (QP: I %d, P %d, B %d) \n"
	.size	.L.str.51, 29

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	" IPPP (QP: I %d, P %d) \n"
	.size	.L.str.52, 25

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	" I-P-P-SP-P (QP: I %d, P %d, SP (%d, %d)) \n"
	.size	.L.str.53, 44

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	" Entropy coding method             : CAVLC\n"
	.size	.L.str.54, 44

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	" Entropy coding method             : CABAC\n"
	.size	.L.str.55, 44

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	" Profile/Level IDC                 : (%d,%d)\n"
	.size	.L.str.56, 46

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	" Motion Estimation Scheme          : HEX\n"
	.size	.L.str.57, 42

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	" Motion Estimation Scheme          : SHEX\n"
	.size	.L.str.58, 43

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	" Motion Estimation Scheme          : EPZS\n"
	.size	.L.str.59, 43

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	" Motion Estimation Scheme          : Fast Full Search\n"
	.size	.L.str.60, 55

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	" Motion Estimation Scheme          : Full Search\n"
	.size	.L.str.61, 50

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	" Search range restrictions         : none\n"
	.size	.L.str.62, 43

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	" Search range restrictions         : older reference frames\n"
	.size	.L.str.63, 61

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	" Search range restrictions         : smaller blocks and older reference frames\n"
	.size	.L.str.64, 80

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	" RD-optimized mode decision        : used\n"
	.size	.L.str.65, 43

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	" RD-optimized mode decision        : not used\n"
	.size	.L.str.66, 47

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	" Data Partitioning Mode            : 1 partition \n"
	.size	.L.str.67, 51

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	" Data Partitioning Mode            : 3 partitions \n"
	.size	.L.str.68, 52

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	" Data Partitioning Mode            : not supported\n"
	.size	.L.str.69, 52

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	" Output File Format                : H.264 Bit Stream File Format \n"
	.size	.L.str.70, 68

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	" Output File Format                : RTP Packet File Format \n"
	.size	.L.str.71, 62

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	" Output File Format                : not supported\n"
	.size	.L.str.72, 52

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"------------------ Average data all frames  -----------------------------------\n"
	.size	.L.str.73, 81

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	" PSNR Y(dB)                        : %5.2f\n"
	.size	.L.str.74, 44

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	" PSNR U(dB)                        : %5.2f\n"
	.size	.L.str.75, 44

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	" PSNR V(dB)                        : %5.2f\n"
	.size	.L.str.76, 44

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	" cSNR Y(dB)                        : %5.2f (%5.2f)\n"
	.size	.L.str.77, 52

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	" cSNR U(dB)                        : %5.2f (%5.2f)\n"
	.size	.L.str.78, 52

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	" cSNR V(dB)                        : %5.2f (%5.2f)\n"
	.size	.L.str.79, 52

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	" Total bits                        : %lld (I %lld, P %lld, B %lld NVB %d) \n"
	.size	.L.str.80, 76

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	" Bit rate (kbit/s)  @ %2.2f Hz     : %5.2f\n"
	.size	.L.str.81, 44

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	" Total bits                        : %lld (I %lld, P %lld, NVB %d) \n"
	.size	.L.str.82, 69

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	" Bits to avoid Startcode Emulation : %d \n"
	.size	.L.str.83, 42

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	" Bits for parameter sets           : %d \n"
	.size	.L.str.84, 42

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"Exit JM %s encoder ver %s "
	.size	.L.str.85, 27

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"12 (FRExt)"
	.size	.L.str.86, 11

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"stats.dat"
	.size	.L.str.87, 10

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"wt"
	.size	.L.str.88, 3

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"Error open file %s"
	.size	.L.str.89, 19

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	" -------------------------------------------------------------- \n"
	.size	.L.str.90, 66

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"  This file contains statistics for the last encoded sequence   \n"
	.size	.L.str.91, 66

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	" Sequence                     : %s\n"
	.size	.L.str.92, 36

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	" No.of coded pictures         : %4d\n"
	.size	.L.str.93, 37

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	" Freq. for encoded bitstream  : %4.0f\n"
	.size	.L.str.94, 39

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	" I Slice Bitrate(kb/s)        : %6.2f\n"
	.size	.L.str.95, 39

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	" P Slice Bitrate(kb/s)        : %6.2f\n"
	.size	.L.str.96, 39

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	" B Slice Bitrate(kb/s)        : %6.2f\n"
	.size	.L.str.97, 39

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	" Total Bitrate(kb/s)          : %6.2f\n"
	.size	.L.str.98, 39

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	" ME Metric for Refinement Level %1d : %s\n"
	.size	.L.str.99, 42

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	" Image format                 : %dx%d\n"
	.size	.L.str.100, 39

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	" Error robustness             : On\n"
	.size	.L.str.101, 36

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	" Error robustness             : Off\n"
	.size	.L.str.102, 37

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	" Search range                 : %d\n"
	.size	.L.str.103, 36

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	" Total number of references   : %d\n"
	.size	.L.str.104, 36

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	" References for P slices      : %d\n"
	.size	.L.str.105, 36

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	" List0 refs for B slices      : %d\n"
	.size	.L.str.106, 36

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	" List1 refs for B slices      : %d\n"
	.size	.L.str.107, 36

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	" Entropy coding method        : CAVLC\n"
	.size	.L.str.108, 39

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	" Entropy coding method        : CABAC\n"
	.size	.L.str.109, 39

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	" Profile/Level IDC            : (%d,%d)\n"
	.size	.L.str.110, 41

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	" MB Field Coding : On \n"
	.size	.L.str.111, 24

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	" Search range restrictions    : none\n"
	.size	.L.str.112, 38

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	" Search range restrictions    : older reference frames\n"
	.size	.L.str.113, 56

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	" Search range restrictions    : smaller blocks and older reference frames\n"
	.size	.L.str.114, 75

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	" RD-optimized mode decision   : used\n"
	.size	.L.str.115, 38

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	" RD-optimized mode decision   : not used\n"
	.size	.L.str.116, 42

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	" ---------------------|----------------|---------------|\n"
	.size	.L.str.117, 58

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"     Item             |     Intra      |   All frames  |\n"
	.size	.L.str.118, 58

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	" SNR Y(dB)            |"
	.size	.L.str.119, 24

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	" %5.2f          |"
	.size	.L.str.120, 18

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	" %5.2f         |\n"
	.size	.L.str.121, 18

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	" SNR U/V (dB)         |"
	.size	.L.str.122, 24

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	" %5.2f/%5.2f    |"
	.size	.L.str.123, 18

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	" %5.2f/%5.2f   |\n"
	.size	.L.str.124, 18

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	" Average quant        |"
	.size	.L.str.125, 24

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	" %5d          |"
	.size	.L.str.126, 16

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"\n ---------------------|----------------|---------------|---------------|\n"
	.size	.L.str.127, 75

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"     SNR              |        I       |       P       |       B       |\n"
	.size	.L.str.128, 74

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	" ---------------------|----------------|---------------|---------------|\n"
	.size	.L.str.129, 74

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	" SNR Y(dB)            |      %5.3f    |     %5.3f    |     %5.3f    |\n"
	.size	.L.str.130, 71

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	" SNR U(dB)            |      %5.3f    |     %5.3f    |     %5.3f    |\n"
	.size	.L.str.131, 71

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	" SNR V(dB)            |      %5.3f    |     %5.3f    |     %5.3f    |\n"
	.size	.L.str.132, 71

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"\n ---------------------|----------------|\n"
	.size	.L.str.133, 43

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"   Intra              |   Mode used    |\n"
	.size	.L.str.134, 42

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	" ---------------------|----------------|\n"
	.size	.L.str.135, 42

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	" Mode 0  intra 4x4    |  %5lld         |\n"
	.size	.L.str.136, 42

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	" Mode 1  intra 8x8    |  %5lld         |\n"
	.size	.L.str.137, 42

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	" Mode 2+ intra 16x16  |  %5lld         |\n"
	.size	.L.str.138, 42

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	" Mode    intra IPCM   |  %5lld         |\n"
	.size	.L.str.139, 42

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"\n ---------------------|----------------|-----------------|\n"
	.size	.L.str.140, 61

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"   Inter              |   Mode used    | MotionInfo bits |\n"
	.size	.L.str.141, 60

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	" ---------------------|----------------|-----------------|"
	.size	.L.str.142, 59

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"\n Mode  0  (copy)      |  %5lld         |    %8.2f     |"
	.size	.L.str.143, 57

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"\n Mode  1  (16x16)     |  %5lld         |    %8.2f     |"
	.size	.L.str.144, 57

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"\n Mode  2  (16x8)      |  %5lld         |    %8.2f     |"
	.size	.L.str.145, 57

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"\n Mode  3  (8x16)      |  %5lld         |    %8.2f     |"
	.size	.L.str.146, 57

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"\n Mode  4  (8x8)       |  %5lld         |    %8.2f     |"
	.size	.L.str.147, 57

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"\n Mode  5  intra 4x4   |  %5lld         |-----------------|"
	.size	.L.str.148, 60

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"\n Mode  6  intra 8x8   |  %5lld         |"
	.size	.L.str.149, 42

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"\n Mode  7+ intra 16x16 |  %5lld         |"
	.size	.L.str.150, 42

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"\n Mode     intra IPCM  |  %5lld         |"
	.size	.L.str.151, 42

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	"\n\n ---------------------|----------------|-----------------|\n"
	.size	.L.str.152, 62

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	"   B frame            |   Mode used    | MotionInfo bits |\n"
	.size	.L.str.153, 60

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"\n\n ---------------------|----------------|----------------|----------------|\n"
	.size	.L.str.154, 78

	.type	.L.str.155,@object              # @.str.155
.L.str.155:
	.asciz	"  Bit usage:          |      Intra     |      Inter     |    B frame     |\n"
	.size	.L.str.155, 76

	.type	.L.str.156,@object              # @.str.156
.L.str.156:
	.asciz	" ---------------------|----------------|----------------|----------------|\n"
	.size	.L.str.156, 76

	.type	.L.str.157,@object              # @.str.157
.L.str.157:
	.asciz	" Header               |"
	.size	.L.str.157, 24

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	" %10.2f     |"
	.size	.L.str.158, 14

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	" Mode                 |"
	.size	.L.str.159, 24

	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	" Motion Info          |"
	.size	.L.str.160, 24

	.type	.L.str.161,@object              # @.str.161
.L.str.161:
	.asciz	"        ./.     |"
	.size	.L.str.161, 18

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	" CBP Y/C              |"
	.size	.L.str.162, 24

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	" Coeffs. Y            | %10.2f     | %10.2f     | %10.2f     |\n"
	.size	.L.str.163, 64

	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	" Coeffs. C            | %10.2f     | %10.2f     | %10.2f     |\n"
	.size	.L.str.164, 64

	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	" Delta quant          | %10.2f     | %10.2f     | %10.2f     |\n"
	.size	.L.str.165, 64

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	" Stuffing Bits        | %10.2f     | %10.2f     | %10.2f     |\n"
	.size	.L.str.166, 64

	.type	.L.str.167,@object              # @.str.167
.L.str.167:
	.asciz	" average bits/frame   |"
	.size	.L.str.167, 24

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	"log.dat"
	.size	.L.str.168, 8

	.type	.L.str.169,@object              # @.str.169
.L.str.169:
	.asciz	" ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ \n"
	.size	.L.str.169, 298

	.type	.L.str.170,@object              # @.str.170
.L.str.170:
	.asciz	"|                   Encoder statistics. This file is generated during first encoding session, new sessions will be appended                                                                                                                                                                            |\n"
	.size	.L.str.170, 298

	.type	.L.str.171,@object              # @.str.171
.L.str.171:
	.asciz	"|    ver    | Date  | Time  |         Sequence             | #Img |P/MbInt| QPI| QPP| QPB| Format  |Iperiod| #B | FMES | Hdmd | S.R |#Ref | Freq |Coding|RD-opt|Intra upd|8x8Tr| SNRY 1| SNRU 1| SNRV 1| SNRY N| SNRU N| SNRV N|#Bitr I|#Bitr P|#Bitr B|#Bitr IPB|     Total Time   |      Me Time     |\n"
	.size	.L.str.171, 298

	.type	.L.str.172,@object              # @.str.172
.L.str.172:
	.asciz	"|%s/%-4s"
	.size	.L.str.172, 9

	.type	.L.str.173,@object              # @.str.173
.L.str.173:
	.asciz	"%30.30s|"
	.size	.L.str.173, 9

	.type	.L.str.174,@object              # @.str.174
.L.str.174:
	.asciz	"%5d |"
	.size	.L.str.174, 6

	.type	.L.str.175,@object              # @.str.175
.L.str.175:
	.asciz	" %-3d|"
	.size	.L.str.175, 7

	.type	.L.str.176,@object              # @.str.176
.L.str.176:
	.asciz	"%4dx%-4d|"
	.size	.L.str.176, 10

	.type	.L.str.177,@object              # @.str.177
.L.str.177:
	.asciz	"  %3d  |"
	.size	.L.str.177, 9

	.type	.L.str.178,@object              # @.str.178
.L.str.178:
	.asciz	"  HEX |"
	.size	.L.str.178, 8

	.type	.L.str.179,@object              # @.str.179
.L.str.179:
	.asciz	" SHEX |"
	.size	.L.str.179, 8

	.type	.L.str.180,@object              # @.str.180
.L.str.180:
	.asciz	" EPZS |"
	.size	.L.str.180, 8

	.type	.L.str.181,@object              # @.str.181
.L.str.181:
	.asciz	"  FFS |"
	.size	.L.str.181, 8

	.type	.L.str.182,@object              # @.str.182
.L.str.182:
	.asciz	"  FS  |"
	.size	.L.str.182, 8

	.type	.L.str.183,@object              # @.str.183
.L.str.183:
	.asciz	"  %1d%1d%1d |"
	.size	.L.str.183, 14

	.type	.L.str.184,@object              # @.str.184
.L.str.184:
	.asciz	" %3d |"
	.size	.L.str.184, 7

	.type	.L.str.185,@object              # @.str.185
.L.str.185:
	.asciz	" %2d  |"
	.size	.L.str.185, 8

	.type	.L.str.186,@object              # @.str.186
.L.str.186:
	.asciz	" %5.2f|"
	.size	.L.str.186, 8

	.type	.L.str.187,@object              # @.str.187
.L.str.187:
	.asciz	" CAVLC|"
	.size	.L.str.187, 8

	.type	.L.str.188,@object              # @.str.188
.L.str.188:
	.asciz	" CABAC|"
	.size	.L.str.188, 8

	.type	.L.str.189,@object              # @.str.189
.L.str.189:
	.asciz	"   %d  |"
	.size	.L.str.189, 9

	.type	.L.str.190,@object              # @.str.190
.L.str.190:
	.asciz	"   ON    |"
	.size	.L.str.190, 11

	.type	.L.str.191,@object              # @.str.191
.L.str.191:
	.asciz	"   OFF   |"
	.size	.L.str.191, 11

	.type	.L.str.192,@object              # @.str.192
.L.str.192:
	.asciz	"  %d  |"
	.size	.L.str.192, 8

	.type	.L.str.193,@object              # @.str.193
.L.str.193:
	.asciz	"%7.3f|"
	.size	.L.str.193, 7

	.type	.L.str.194,@object              # @.str.194
.L.str.194:
	.asciz	"%7.0f|"
	.size	.L.str.194, 7

	.type	.L.str.195,@object              # @.str.195
.L.str.195:
	.asciz	"%9.0f|"
	.size	.L.str.195, 7

	.type	.L.str.196,@object              # @.str.196
.L.str.196:
	.asciz	"   %12d   |"
	.size	.L.str.196, 12

	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	.L.str.197,@object              # @.str.197
.L.str.197:
	.asciz	"data.txt"
	.size	.L.str.197, 9

	.type	.L.str.198,@object              # @.str.198
.L.str.198:
	.asciz	"%3d %2d %2d %2.2f %2.2f %2.2f %5lld %2.2f %2.2f %2.2f %5d %2.2f %2.2f %2.2f %5lld %5lld %.3f\n"
	.size	.L.str.198, 94

	.type	.L.str.199,@object              # @.str.199
.L.str.199:
	.asciz	"%3d %2d %2d %2.2f %2.2f %2.2f %5lld %2.2f %2.2f %2.2f %5d %2.2f %2.2f %2.2f %5lld %5d %.3f\n"
	.size	.L.str.199, 92

	.type	imgY_org_frm,@object            # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	imgY_org_top,@object            # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org_bot,@object            # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgUV_org_top,@object           # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	.L.str.200,@object              # @.str.200
.L.str.200:
	.asciz	"init_global_buffers: imgUV_org_top"
	.size	.L.str.200, 35

	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	.L.str.201,@object              # @.str.201
.L.str.201:
	.asciz	"init_global_buffers: imgUV_org_bot"
	.size	.L.str.201, 35

	.type	.L.str.202,@object              # @.str.202
.L.str.202:
	.asciz	"init_global_buffers: last_P_no"
	.size	.L.str.202, 31

	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	.L.str.203,@object              # @.str.203
.L.str.203:
	.asciz	"init_global_buffers: decref"
	.size	.L.str.203, 28

	.type	pixel_map,@object               # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object             # @refresh_map
	.comm	refresh_map,8,8
	.type	imgY_com,@object                # @imgY_com
	.comm	imgY_com,8,8
	.type	imgUV_com,@object               # @imgUV_com
	.comm	imgUV_com,8,8
	.type	generic_RC,@object              # @generic_RC
	.comm	generic_RC,8,8
	.type	generic_RC_init,@object         # @generic_RC_init
	.comm	generic_RC_init,8,8
	.type	quadratic_RC_init,@object       # @quadratic_RC_init
	.comm	quadratic_RC_init,8,8
	.type	generic_RC_best,@object         # @generic_RC_best
	.comm	generic_RC_best,8,8
	.type	quadratic_RC_best,@object       # @quadratic_RC_best
	.comm	quadratic_RC_best,8,8
	.type	imgY_tmp,@object                # @imgY_tmp
	.comm	imgY_tmp,8,8
	.type	imgUV_tmp,@object               # @imgUV_tmp
	.comm	imgUV_tmp,16,8
	.type	imgY_sub_tmp,@object            # @imgY_sub_tmp
	.comm	imgY_sub_tmp,8,8
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	img_pad_size_uv_x,@object       # @img_pad_size_uv_x
	.comm	img_pad_size_uv_x,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.type	.L.str.204,@object              # @.str.204
.L.str.204:
	.asciz	"get_mem_mv: mv"
	.size	.L.str.204, 15

	.type	.L.str.205,@object              # @.str.205
.L.str.205:
	.asciz	"get_mem_ACcoeff: cofAC"
	.size	.L.str.205, 23

	.type	.L.str.206,@object              # @.str.206
.L.str.206:
	.asciz	"get_mem_DCcoeff: cofDC"
	.size	.L.str.206, 23

	.type	.L.str.207,@object              # @.str.207
.L.str.207:
	.asciz	"Warning: unknown LevelIDC, using maximum level 5.1 \n"
	.size	.L.str.207, 53

	.type	.L.str.208,@object              # @.str.208
.L.str.208:
	.asciz	"B frame not supported when redundant picture used!"
	.size	.L.str.208, 51

	.type	.L.str.209,@object              # @.str.209
.L.str.209:
	.asciz	"Interlace not supported when redundant picture used!"
	.size	.L.str.209, 53

	.type	.L.str.210,@object              # @.str.210
.L.str.210:
	.asciz	"NumberReferenceFrames must be no less than PrimaryGOPLength"
	.size	.L.str.210, 60

	.type	.L.str.211,@object              # @.str.211
.L.str.211:
	.asciz	"PrimaryGOPLength must be greater than 2^NumRedundantHeirarchy"
	.size	.L.str.211, 62

	.type	.L.str.212,@object              # @.str.212
.L.str.212:
	.asciz	"Redundant slices not supported when Verbose!=1"
	.size	.L.str.212, 47

	.type	redundant_coding,@object        # @redundant_coding
	.comm	redundant_coding,4,4
	.type	frameNuminGOP,@object           # @frameNuminGOP
	.comm	frameNuminGOP,4,4
	.type	redundant_ref_idx,@object       # @redundant_ref_idx
	.comm	redundant_ref_idx,4,4
	.type	img_pad_size_uv_y,@object       # @img_pad_size_uv_y
	.comm	img_pad_size_uv_y,4,4
	.type	chroma_mask_mv_y,@object        # @chroma_mask_mv_y
	.comm	chroma_mask_mv_y,1,1
	.type	chroma_mask_mv_x,@object        # @chroma_mask_mv_x
	.comm	chroma_mask_mv_x,1,1
	.type	chroma_shift_x,@object          # @chroma_shift_x
	.comm	chroma_shift_x,4,4
	.type	chroma_shift_y,@object          # @chroma_shift_y
	.comm	chroma_shift_y,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	color_formats,@object           # @color_formats
	.comm	color_formats,4,4
	.type	frame_pic,@object               # @frame_pic
	.comm	frame_pic,8,8
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	intras,@object                  # @intras
	.comm	intras,4,4
	.type	nextP_tr_fld,@object            # @nextP_tr_fld
	.comm	nextP_tr_fld,4,4
	.type	nextP_tr_frm,@object            # @nextP_tr_frm
	.comm	nextP_tr_frm,4,4
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	configinput,@object             # @configinput
	.comm	configinput,5800,8
	.type	seiHasBufferingPeriod_info,@object # @seiHasBufferingPeriod_info
	.comm	seiHasBufferingPeriod_info,4,4
	.type	seiBufferingPeriod,@object      # @seiBufferingPeriod
	.comm	seiBufferingPeriod,280,8
	.type	seiHasPicTiming_info,@object    # @seiHasPicTiming_info
	.comm	seiHasPicTiming_info,4,4
	.type	seiPicTiming,@object            # @seiPicTiming
	.comm	seiPicTiming,152,8
	.type	WriteNALU,@object               # @WriteNALU
	.comm	WriteNALU,8,8
	.type	McostState,@object              # @McostState
	.comm	McostState,8,8
	.type	SearchState,@object             # @SearchState
	.comm	SearchState,8,8
	.type	fastme_ref_cost,@object         # @fastme_ref_cost
	.comm	fastme_ref_cost,8,8
	.type	fastme_l0_cost,@object          # @fastme_l0_cost
	.comm	fastme_l0_cost,8,8
	.type	fastme_l1_cost,@object          # @fastme_l1_cost
	.comm	fastme_l1_cost,8,8
	.type	fastme_l0_cost_bipred,@object   # @fastme_l0_cost_bipred
	.comm	fastme_l0_cost_bipred,8,8
	.type	fastme_l1_cost_bipred,@object   # @fastme_l1_cost_bipred
	.comm	fastme_l1_cost_bipred,8,8
	.type	bipred_flag,@object             # @bipred_flag
	.comm	bipred_flag,4,4
	.type	fastme_best_cost,@object        # @fastme_best_cost
	.comm	fastme_best_cost,8,8
	.type	pred_SAD,@object                # @pred_SAD
	.comm	pred_SAD,4,4
	.type	pred_MV_ref,@object             # @pred_MV_ref
	.comm	pred_MV_ref,8,4
	.type	pred_MV_uplayer,@object         # @pred_MV_uplayer
	.comm	pred_MV_uplayer,8,4
	.type	UMHEX_blocktype,@object         # @UMHEX_blocktype
	.comm	UMHEX_blocktype,4,4
	.type	predict_point,@object           # @predict_point
	.comm	predict_point,40,4
	.type	SAD_a,@object                   # @SAD_a
	.comm	SAD_a,4,4
	.type	SAD_b,@object                   # @SAD_b
	.comm	SAD_b,4,4
	.type	SAD_c,@object                   # @SAD_c
	.comm	SAD_c,4,4
	.type	SAD_d,@object                   # @SAD_d
	.comm	SAD_d,4,4
	.type	Threshold_DSR_MB,@object        # @Threshold_DSR_MB
	.comm	Threshold_DSR_MB,32,4
	.type	Bsize,@object                   # @Bsize
	.comm	Bsize,32,4
	.type	AlphaFourth_1,@object           # @AlphaFourth_1
	.comm	AlphaFourth_1,32,4
	.type	AlphaFourth_2,@object           # @AlphaFourth_2
	.comm	AlphaFourth_2,32,4
	.type	flag_intra,@object              # @flag_intra
	.comm	flag_intra,8,8
	.type	flag_intra_SAD,@object          # @flag_intra_SAD
	.comm	flag_intra_SAD,4,4
	.type	SymmetricalCrossSearchThreshold1,@object # @SymmetricalCrossSearchThreshold1
	.comm	SymmetricalCrossSearchThreshold1,2,2
	.type	SymmetricalCrossSearchThreshold2,@object # @SymmetricalCrossSearchThreshold2
	.comm	SymmetricalCrossSearchThreshold2,2,2
	.type	ConvergeThreshold,@object       # @ConvergeThreshold
	.comm	ConvergeThreshold,2,2
	.type	SubPelThreshold1,@object        # @SubPelThreshold1
	.comm	SubPelThreshold1,2,2
	.type	SubPelThreshold3,@object        # @SubPelThreshold3
	.comm	SubPelThreshold3,2,2
	.type	smpUMHEX_SearchState,@object    # @smpUMHEX_SearchState
	.comm	smpUMHEX_SearchState,8,8
	.type	smpUMHEX_l0_cost,@object        # @smpUMHEX_l0_cost
	.comm	smpUMHEX_l0_cost,8,8
	.type	smpUMHEX_l1_cost,@object        # @smpUMHEX_l1_cost
	.comm	smpUMHEX_l1_cost,8,8
	.type	smpUMHEX_flag_intra,@object     # @smpUMHEX_flag_intra
	.comm	smpUMHEX_flag_intra,8,8
	.type	smpUMHEX_flag_intra_SAD,@object # @smpUMHEX_flag_intra_SAD
	.comm	smpUMHEX_flag_intra_SAD,4,4
	.type	smpUMHEX_pred_SAD_uplayer,@object # @smpUMHEX_pred_SAD_uplayer
	.comm	smpUMHEX_pred_SAD_uplayer,4,4
	.type	smpUMHEX_pred_MV_uplayer_X,@object # @smpUMHEX_pred_MV_uplayer_X
	.comm	smpUMHEX_pred_MV_uplayer_X,2,2
	.type	smpUMHEX_pred_MV_uplayer_Y,@object # @smpUMHEX_pred_MV_uplayer_Y
	.comm	smpUMHEX_pred_MV_uplayer_Y,2,2
	.type	diffy,@object                   # @diffy
	.comm	diffy,1024,4
	.type	qp_mbaff,@object                # @qp_mbaff
	.comm	qp_mbaff,16,4
	.type	delta_qp_mbaff,@object          # @delta_qp_mbaff
	.comm	delta_qp_mbaff,16,4
	.type	updateQP,@object                # @updateQP
	.comm	updateQP,8,8
	.type	.L__const.information_init.yuv_types,@object # @__const.information_init.yuv_types
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const.information_init.yuv_types:
	.asciz	"YUV 4:0:0"
	.asciz	"YUV 4:2:0"
	.asciz	"YUV 4:2:2"
	.asciz	"YUV 4:4:4"
	.size	.L__const.information_init.yuv_types, 40

	.type	.L.str.213,@object              # @.str.213
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.213:
	.asciz	"------------------------------- JM %s %s --------------------------------\n"
	.size	.L.str.213, 75

	.type	.L.str.214,@object              # @.str.214
.L.str.214:
	.asciz	"------------------------------- JM %s %s ------------------------------------------\n"
	.size	.L.str.214, 85

	.type	.L.str.215,@object              # @.str.215
.L.str.215:
	.asciz	" Input YUV file                    : %s \n"
	.size	.L.str.215, 42

	.type	.L.str.216,@object              # @.str.216
.L.str.216:
	.asciz	" Output H.264 bitstream            : %s \n"
	.size	.L.str.216, 42

	.type	.L.str.217,@object              # @.str.217
.L.str.217:
	.asciz	" Output YUV file                   : %s \n"
	.size	.L.str.217, 42

	.type	.L.str.218,@object              # @.str.218
.L.str.218:
	.asciz	" YUV Format                        : %s \n"
	.size	.L.str.218, 42

	.type	.L.str.219,@object              # @.str.219
.L.str.219:
	.asciz	" Frames to be encoded I-P/B        : %d/%d\n"
	.size	.L.str.219, 44

	.type	.L.str.220,@object              # @.str.220
.L.str.220:
	.asciz	" PicInterlace / MbInterlace        : %d/%d\n"
	.size	.L.str.220, 44

	.type	.L.str.221,@object              # @.str.221
.L.str.221:
	.asciz	" Transform8x8Mode                  : %d\n"
	.size	.L.str.221, 41

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"  Frame  Bit/pic WP QP   SnrY    SnrU    SnrV    Time(ms) MET(ms) Frm/Fld   I D L0 L1 RDP Ref"
	.size	.Lstr.1, 94

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"---------------------------------------------------------------------------------------------"
	.size	.Lstr.2, 94

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"  Frame  Bit/pic    QP   SnrY    SnrU    SnrV    Time(ms) MET(ms) Frm/Fld Ref  "
	.size	.Lstr.4, 80

	.type	.Lstr.6,@object                 # @str.6
.Lstr.6:
	.asciz	"-------------------------------------------------------------------------------"
	.size	.Lstr.6, 80

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"\nEncoding. Please Wait.\n"
	.size	.Lstr.7, 25

	.type	.Lswitch.table.report,@object   # @switch.table.report
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.Lswitch.table.report:
	.dword	.L.str.181
	.dword	.L.str.178
	.dword	.L.str.179
	.dword	.L.str.180
	.size	.Lswitch.table.report, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inputs
	.addrsig_sym images
	.addrsig_sym statistics
	.addrsig_sym snrs
	.addrsig_sym decoders
	.addrsig_sym lrec
	.addrsig_sym lrec_uv
	.addrsig_sym quadratic_RC
	.addrsig_sym rddata_top_frame_mb
	.addrsig_sym rddata_bot_frame_mb
	.addrsig_sym rddata_top_field_mb
	.addrsig_sym rddata_bot_field_mb
	.addrsig_sym errortext
	.addrsig_sym DistortionType
	.addrsig_sym imgY_org_frm
	.addrsig_sym imgUV_org_frm
	.addrsig_sym imgY_org_top
	.addrsig_sym imgY_org_bot
	.addrsig_sym PicPos
	.addrsig_sym wp_weight
	.addrsig_sym wp_offset
	.addrsig_sym wbp_weight
	.addrsig_sym direct_ref_idx
	.addrsig_sym direct_pdir
	.addrsig_sym pixel_map
	.addrsig_sym refresh_map
	.addrsig_sym imgY_com
	.addrsig_sym imgUV_com
	.addrsig_sym generic_RC
	.addrsig_sym generic_RC_init
	.addrsig_sym quadratic_RC_init
	.addrsig_sym generic_RC_best
	.addrsig_sym quadratic_RC_best
	.addrsig_sym imgY_tmp
	.addrsig_sym imgUV_tmp
	.addrsig_sym imgY_sub_tmp
