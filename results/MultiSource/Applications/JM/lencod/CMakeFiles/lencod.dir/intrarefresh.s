	.file	"intrarefresh.c"
	.text
	.globl	RandomIntraInit                 # -- Begin function RandomIntraInit
	.p2align	5
	.type	RandomIntraInit,@function
RandomIntraInit:                        # @RandomIntraInit
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(srand)
	jirl	$ra, $ra, 0
	mul.w	$a0, $s0, $s1
	pcalau12i	$s0, %pc_hi20(NumberOfMBs)
	st.w	$a0, $s0, %pc_lo12(NumberOfMBs)
	pcalau12i	$a1, %pc_hi20(NumberIntraPerPicture)
	st.w	$fp, $a1, %pc_lo12(NumberIntraPerPicture)
	beqz	$fp, .LBB0_9
# %bb.1:
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(RefreshPattern)
	st.d	$a0, $s1, %pc_lo12(RefreshPattern)
	bnez	$a0, .LBB0_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_3:
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(IntraMBs)
	st.d	$a0, $a1, %pc_lo12(IntraMBs)
	bnez	$a0, .LBB0_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_5:
	ld.w	$a1, $s0, %pc_lo12(NumberOfMBs)
	blez	$a1, .LBB0_10
# %bb.6:                                # %.preheader.preheader
	ld.d	$a0, $s1, %pc_lo12(RefreshPattern)
	slli.d	$a2, $a1, 2
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	addi.w	$s2, $zero, -1
	.p2align	4, , 16
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, %pc_lo12(NumberOfMBs)
	ld.d	$a2, $s1, %pc_lo12(RefreshPattern)
	mod.w	$a0, $a0, $a1
	slli.d	$a3, $a0, 2
	ldx.w	$a3, $a2, $a3
	bne	$a3, $s2, .LBB0_7
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	alsl.d	$a0, $a0, $a2, 2
	st.w	$fp, $a0, 0
	addi.w	$fp, $fp, 1
	blt	$fp, $a1, .LBB0_7
	b	.LBB0_10
.LBB0_9:
	pcalau12i	$a0, %pc_hi20(RefreshPattern)
	st.d	$zero, $a0, %pc_lo12(RefreshPattern)
	pcalau12i	$a0, %pc_hi20(IntraMBs)
	st.d	$zero, $a0, %pc_lo12(IntraMBs)
.LBB0_10:                               # %.loopexit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	RandomIntraInit, .Lfunc_end0-RandomIntraInit
                                        # -- End function
	.globl	RandomIntra                     # -- Begin function RandomIntra
	.p2align	5
	.type	RandomIntra,@function
RandomIntra:                            # @RandomIntra
# %bb.0:
	pcalau12i	$a1, %pc_hi20(NumberIntraPerPicture)
	ld.w	$a1, $a1, %pc_lo12(NumberIntraPerPicture)
	blez	$a1, .LBB1_4
# %bb.1:                                # %.lr.ph
	pcalau12i	$a2, %pc_hi20(IntraMBs)
	ld.d	$a2, $a2, %pc_lo12(IntraMBs)
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	beq	$a3, $a0, .LBB1_5
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB1_2
.LBB1_4:
	move	$a0, $zero
	ret
.LBB1_5:
	ori	$a0, $zero, 1
	ret
.Lfunc_end1:
	.size	RandomIntra, .Lfunc_end1-RandomIntra
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function RandomIntraNewPicture
.LCPI2_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	RandomIntraNewPicture
	.p2align	5
	.type	RandomIntraNewPicture,@function
RandomIntraNewPicture:                  # @RandomIntraNewPicture
# %bb.0:
	pcalau12i	$a0, %pc_hi20(NumberIntraPerPicture)
	ld.w	$a2, $a0, %pc_lo12(NumberIntraPerPicture)
	pcalau12i	$a0, %pc_hi20(WalkAround)
	ld.w	$a1, $a0, %pc_lo12(WalkAround)
	add.w	$a6, $a1, $a2
	st.w	$a6, $a0, %pc_lo12(WalkAround)
	blez	$a2, .LBB2_8
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %pc_hi20(RefreshPattern)
	ld.d	$a0, $a0, %pc_lo12(RefreshPattern)
	pcalau12i	$a1, %pc_hi20(NumberOfMBs)
	ld.w	$a1, $a1, %pc_lo12(NumberOfMBs)
	pcalau12i	$a3, %pc_hi20(IntraMBs)
	ld.d	$a4, $a3, %pc_lo12(IntraMBs)
	ori	$a3, $zero, 4
	bgeu	$a2, $a3, .LBB2_3
# %bb.2:
	move	$a5, $zero
	move	$a3, $a6
	b	.LBB2_6
.LBB2_3:                                # %vector.ph
	bstrpick.d	$a3, $a2, 30, 2
	slli.d	$a5, $a3, 2
	pcalau12i	$a7, %pc_hi20(.LCPI2_0)
	vld	$vr1, $a7, %pc_lo12(.LCPI2_0)
	alsl.w	$a3, $a3, $a6, 2
	vreplgr2vr.w	$vr0, $a1
	vreplgr2vr.w	$vr2, $a6
	vadd.w	$vr1, $vr2, $vr1
	move	$a6, $a4
	move	$a7, $a5
	.p2align	4, , 16
.LBB2_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vmod.w	$vr2, $vr1, $vr0
	vshuf4i.w	$vr3, $vr2, 50
	vslli.d	$vr3, $vr3, 32
	vsrai.d	$vr3, $vr3, 32
	vshuf4i.w	$vr2, $vr2, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vpickve2gr.d	$t0, $vr2, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr2, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr3, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr3, 1
	slli.d	$t3, $t3, 2
	ldx.w	$t0, $a0, $t0
	ldx.w	$t1, $a0, $t1
	ldx.w	$t2, $a0, $t2
	ldx.w	$t3, $a0, $t3
	vinsgr2vr.w	$vr2, $t0, 0
	vinsgr2vr.w	$vr2, $t1, 1
	vinsgr2vr.w	$vr2, $t2, 2
	vinsgr2vr.w	$vr2, $t3, 3
	vst	$vr2, $a6, 0
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, 16
	bnez	$a7, .LBB2_4
# %bb.5:                                # %middle.block
	beq	$a5, $a2, .LBB2_8
.LBB2_6:                                # %scalar.ph.preheader
	alsl.d	$a4, $a5, $a4, 2
	sub.d	$a2, $a2, $a5
	.p2align	4, , 16
.LBB2_7:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	mod.w	$a5, $a3, $a1
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a0, $a5
	st.w	$a5, $a4, 0
	addi.w	$a3, $a3, 1
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 4
	bnez	$a2, .LBB2_7
.LBB2_8:                                # %._crit_edge
	ret
.Lfunc_end2:
	.size	RandomIntraNewPicture, .Lfunc_end2-RandomIntraNewPicture
                                        # -- End function
	.globl	RandomIntraUninit               # -- Begin function RandomIntraUninit
	.p2align	5
	.type	RandomIntraUninit,@function
RandomIntraUninit:                      # @RandomIntraUninit
# %bb.0:
	pcalau12i	$a0, %pc_hi20(NumberIntraPerPicture)
	ld.w	$a0, $a0, %pc_lo12(NumberIntraPerPicture)
	blez	$a0, .LBB3_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(RefreshPattern)
	ld.d	$a0, $a0, %pc_lo12(RefreshPattern)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(IntraMBs)
	ld.d	$a0, $a0, %pc_lo12(IntraMBs)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB3_2:
	ret
.Lfunc_end3:
	.size	RandomIntraUninit, .Lfunc_end3-RandomIntraUninit
                                        # -- End function
	.type	NumberOfMBs,@object             # @NumberOfMBs
	.local	NumberOfMBs
	.comm	NumberOfMBs,4,4
	.type	NumberIntraPerPicture,@object   # @NumberIntraPerPicture
	.local	NumberIntraPerPicture
	.comm	NumberIntraPerPicture,4,4
	.type	RefreshPattern,@object          # @RefreshPattern
	.local	RefreshPattern
	.comm	RefreshPattern,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"RandomIntraInit: RefreshPattern"
	.size	.L.str, 32

	.type	IntraMBs,@object                # @IntraMBs
	.local	IntraMBs
	.comm	IntraMBs,8,8
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"RandomIntraInit: IntraMBs"
	.size	.L.str.1, 26

	.type	WalkAround,@object              # @WalkAround
	.local	WalkAround
	.comm	WalkAround,4,4
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
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
