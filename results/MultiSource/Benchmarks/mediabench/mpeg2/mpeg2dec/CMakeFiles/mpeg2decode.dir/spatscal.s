	.file	"spatscal.c"
	.text
	.globl	Spatial_Prediction              # -- Begin function Spatial_Prediction
	.p2align	5
	.type	Spatial_Prediction,@function
Spatial_Prediction:                     # @Spatial_Prediction
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
	pcalau12i	$a0, %got_pc_hi20(Frame_Store_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Frame_Store_Flag)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(lower_layer_prediction_horizontal_size)
	ld.d	$s6, $a1, %got_pc_lo12(lower_layer_prediction_horizontal_size)
	ld.w	$a1, $s6, 0
	pcalau12i	$a2, %got_pc_hi20(lower_layer_prediction_vertical_size)
	ld.d	$fp, $a2, %got_pc_lo12(lower_layer_prediction_vertical_size)
	ld.w	$a2, $fp, 0
	beqz	$a0, .LBB0_2
# %bb.1:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(Read_Lower_Layer_Component_Framewise)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	ld.w	$a2, $fp, 0
	srai.d	$a1, $a0, 1
	srai.d	$a2, $a2, 1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Read_Lower_Layer_Component_Framewise)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	ld.w	$a2, $fp, 0
	srai.d	$a1, $a0, 1
	srai.d	$a2, $a2, 1
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(Read_Lower_Layer_Component_Framewise)
	jirl	$ra, $ra, 0
	b	.LBB0_3
.LBB0_2:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(Read_Lower_Layer_Component_Fieldwise)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	ld.w	$a2, $fp, 0
	srai.d	$a1, $a0, 1
	srai.d	$a2, $a2, 1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Read_Lower_Layer_Component_Fieldwise)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	ld.w	$a2, $fp, 0
	srai.d	$a1, $a0, 1
	srai.d	$a2, $a2, 1
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(Read_Lower_Layer_Component_Fieldwise)
	jirl	$ra, $ra, 0
.LBB0_3:
	pcalau12i	$a0, %got_pc_hi20(progressive_frame)
	ld.d	$a0, $a0, %got_pc_lo12(progressive_frame)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(lower_layer_progressive_frame)
	ld.d	$s7, $a1, %got_pc_lo12(lower_layer_progressive_frame)
	ld.w	$a1, $s7, 0
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(llframe0)
	ld.d	$s2, $a2, %got_pc_lo12(llframe0)
	ld.d	$a2, $s2, 0
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(llframe1)
	ld.d	$s8, $a3, %got_pc_lo12(llframe1)
	ld.d	$a3, $s8, 0
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a4, %got_pc_hi20(lltmp)
	ld.d	$s3, $a4, %got_pc_lo12(lltmp)
	ld.d	$a4, $s3, 0
	pcalau12i	$a5, %got_pc_hi20(current_frame)
	ld.d	$s4, $a5, %got_pc_lo12(current_frame)
	ld.d	$a5, $s4, 0
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a6, %got_pc_hi20(lower_layer_horizontal_offset)
	ld.d	$s0, $a6, %got_pc_lo12(lower_layer_horizontal_offset)
	ld.w	$a6, $s0, 0
	pcalau12i	$a7, %got_pc_hi20(lower_layer_vertical_offset)
	ld.d	$s5, $a7, %got_pc_lo12(lower_layer_vertical_offset)
	ld.w	$a7, $s5, 0
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	ld.w	$t0, $s6, 0
	ld.w	$t1, $fp, 0
	pcalau12i	$t2, %got_pc_hi20(horizontal_size)
	ld.d	$t2, $t2, %got_pc_lo12(horizontal_size)
	st.d	$t2, $sp, 168                   # 8-byte Folded Spill
	ld.w	$t2, $t2, 0
	pcalau12i	$t3, %got_pc_hi20(vertical_size)
	ld.d	$t3, $t3, %got_pc_lo12(vertical_size)
	st.d	$t3, $sp, 160                   # 8-byte Folded Spill
	ld.w	$t3, $t3, 0
	pcalau12i	$t4, %got_pc_hi20(vertical_subsampling_factor_m)
	ld.d	$t4, $t4, %got_pc_lo12(vertical_subsampling_factor_m)
	st.d	$t4, $sp, 152                   # 8-byte Folded Spill
	ld.w	$t4, $t4, 0
	pcalau12i	$t5, %got_pc_hi20(vertical_subsampling_factor_n)
	ld.d	$t5, $t5, %got_pc_lo12(vertical_subsampling_factor_n)
	st.d	$t5, $sp, 144                   # 8-byte Folded Spill
	ld.w	$t5, $t5, 0
	pcalau12i	$t6, %got_pc_hi20(horizontal_subsampling_factor_m)
	ld.d	$t6, $t6, %got_pc_lo12(horizontal_subsampling_factor_m)
	st.d	$t6, $sp, 136                   # 8-byte Folded Spill
	ld.w	$t6, $t6, 0
	pcalau12i	$t7, %got_pc_hi20(horizontal_subsampling_factor_n)
	ld.d	$s1, $t7, %got_pc_lo12(horizontal_subsampling_factor_n)
	ld.w	$t7, $s1, 0
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$t8, %got_pc_hi20(picture_structure)
	ld.d	$t8, $t8, %got_pc_lo12(picture_structure)
	ld.w	$t8, $t8, 0
	addi.d	$t8, $t8, -3
	sltu	$t8, $zero, $t8
	st.d	$t8, $sp, 64
	st.d	$t7, $sp, 56
	st.d	$t6, $sp, 48
	st.d	$t5, $sp, 40
	st.d	$t4, $sp, 32
	st.d	$t3, $sp, 24
	st.d	$t2, $sp, 16
	st.d	$t1, $sp, 8
	st.d	$t0, $sp, 0
	pcaddu18i	$ra, %call36(Make_Spatial_Prediction_Frame)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s2, 8
	ld.wu	$a6, $s0, 0
	ld.d	$a3, $s8, 8
	ld.d	$a4, $s3, 0
	ld.d	$a5, $s4, 8
	srli.d	$a7, $a6, 31
	ld.wu	$t0, $s5, 0
	add.w	$a6, $a6, $a7
	srai.d	$a6, $a6, 1
	ld.w	$t1, $s6, 0
	srli.d	$a7, $t0, 31
	add.w	$a7, $t0, $a7
	srai.d	$a7, $a7, 1
	srai.d	$t0, $t1, 1
	ld.w	$t1, $fp, 0
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	ld.w	$t2, $s7, 0
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	ld.w	$t3, $s8, 0
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.w	$t4, $s2, 0
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	ld.w	$t5, $s4, 0
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	ld.w	$t6, $s5, 0
	ld.w	$t7, $s1, 0
	move	$fp, $s1
	srai.d	$t1, $t1, 1
	srai.d	$t2, $t2, 1
	srai.d	$t3, $t3, 1
	ori	$s1, $zero, 1
	st.d	$s1, $sp, 64
	st.d	$t7, $sp, 56
	st.d	$t6, $sp, 48
	st.d	$t5, $sp, 40
	st.d	$t4, $sp, 32
	st.d	$t3, $sp, 24
	st.d	$t2, $sp, 16
	st.d	$t1, $sp, 8
	st.d	$t0, $sp, 0
	pcaddu18i	$ra, %call36(Make_Spatial_Prediction_Frame)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 16
	ld.wu	$a6, $s0, 0
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 16
	ld.d	$a4, $s3, 0
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a5, $a5, 16
	srli.d	$a7, $a6, 31
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	ld.wu	$t0, $t0, 0
	add.w	$a6, $a6, $a7
	srai.d	$a6, $a6, 1
	ld.w	$t1, $s6, 0
	srli.d	$a7, $t0, 31
	add.w	$a7, $t0, $a7
	srai.d	$a7, $a7, 1
	srai.d	$t0, $t1, 1
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$t1, $t1, 0
	ld.w	$t2, $s7, 0
	ld.w	$t3, $s8, 0
	ld.w	$t4, $s2, 0
	ld.w	$t5, $s4, 0
	ld.w	$t6, $s5, 0
	ld.w	$t7, $fp, 0
	srai.d	$t1, $t1, 1
	srai.d	$t2, $t2, 1
	srai.d	$t3, $t3, 1
	st.d	$s1, $sp, 64
	st.d	$t7, $sp, 56
	st.d	$t6, $sp, 48
	st.d	$t5, $sp, 40
	st.d	$t4, $sp, 32
	st.d	$t3, $sp, 24
	st.d	$t2, $sp, 16
	st.d	$t1, $sp, 8
	st.d	$t0, $sp, 0
	pcaddu18i	$ra, %call36(Make_Spatial_Prediction_Frame)
	jirl	$ra, $ra, 0
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
.Lfunc_end0:
	.size	Spatial_Prediction, .Lfunc_end0-Spatial_Prediction
                                        # -- End function
	.p2align	5                               # -- Begin function Read_Lower_Layer_Component_Framewise
	.type	Read_Lower_Layer_Component_Framewise,@function
Read_Lower_Layer_Component_Framewise:   # @Read_Lower_Layer_Component_Framewise
# %bb.0:
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(Lower_Layer_Picture_Filename)
	ld.d	$a0, $a0, %got_pc_lo12(Lower_Layer_Picture_Filename)
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(True_Framenum)
	ld.d	$a0, $a0, %got_pc_lo12(True_Framenum)
	ld.w	$a2, $a0, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s2, $s2, 1
	pcalau12i	$a1, %pc_hi20(.L__const.Read_Lower_Layer_Component_Fieldwise.ext)
	addi.d	$a1, $a1, %pc_lo12(.L__const.Read_Lower_Layer_Component_Fieldwise.ext)
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_11
# %bb.1:                                # %.preheader27
	move	$s1, $a0
	blez	$fp, .LBB1_10
# %bb.2:                                # %.preheader.lr.ph
	blez	$s0, .LBB1_10
# %bb.3:                                # %.preheader.us.us.preheader
	pcalau12i	$a0, %got_pc_hi20(llframe0)
	ld.d	$a0, $a0, %got_pc_lo12(llframe0)
	alsl.d	$s3, $s2, $a0, 3
	pcalau12i	$a0, %got_pc_hi20(llframe1)
	ld.d	$a0, $a0, %got_pc_lo12(llframe1)
	alsl.d	$s2, $s2, $a0, 3
	pcalau12i	$a0, %got_pc_hi20(lower_layer_progressive_frame)
	ld.d	$s4, $a0, %got_pc_lo12(lower_layer_progressive_frame)
	move	$s5, $zero
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_4:                                # %..loopexit_crit_edge.us.us
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.w	$s5, $s5, 1
	bge	$s5, $fp, .LBB1_10
.LBB1_5:                                # %.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
                                        #     Child Loop BB1_9 Depth 2
	mul.w	$s6, $s5, $s0
	move	$s7, $s0
	.p2align	4, , 16
.LBB1_6:                                #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	stx.b	$a0, $a1, $s6
	addi.d	$s7, $s7, -1
	addi.d	$s6, $s6, 1
	bnez	$s7, .LBB1_6
# %bb.7:                                # %._crit_edge.us.us
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $s4, 0
	bnez	$a0, .LBB1_4
# %bb.8:                                # %.lr.ph31.us.us
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$s5, $s5, 1
	mul.w	$s6, $s5, $s0
	move	$s7, $s0
	.p2align	4, , 16
.LBB1_9:                                #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	stx.b	$a0, $a1, $s6
	addi.d	$s7, $s7, -1
	addi.d	$s6, $s6, 1
	bnez	$s7, .LBB1_9
	b	.LBB1_4
.LBB1_10:                               # %._crit_edge33
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.LBB1_11:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	Read_Lower_Layer_Component_Framewise, .Lfunc_end1-Read_Lower_Layer_Component_Framewise
                                        # -- End function
	.p2align	5                               # -- Begin function Read_Lower_Layer_Component_Fieldwise
	.type	Read_Lower_Layer_Component_Fieldwise,@function
Read_Lower_Layer_Component_Fieldwise:   # @Read_Lower_Layer_Component_Fieldwise
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	move	$s0, $a2
	move	$fp, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(Lower_Layer_Picture_Filename)
	ld.d	$a0, $a0, %got_pc_lo12(Lower_Layer_Picture_Filename)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(True_Framenum)
	ld.d	$s5, $a0, %got_pc_lo12(True_Framenum)
	ld.w	$a2, $s5, 0
	pcalau12i	$a0, %got_pc_hi20(lower_layer_progressive_frame)
	ld.d	$s6, $a0, %got_pc_lo12(lower_layer_progressive_frame)
	ld.w	$a0, $s6, 0
	sltui	$a0, $a0, 1
	ori	$a3, $zero, 102
	masknez	$a3, $a3, $a0
	ori	$a4, $zero, 97
	maskeqz	$a0, $a4, $a0
	or	$a3, $a0, $a3
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	alsl.d	$a0, $s1, $s1, 1
	pcalau12i	$a1, %pc_hi20(.L__const.Read_Lower_Layer_Component_Fieldwise.ext)
	addi.d	$a1, $a1, %pc_lo12(.L__const.Read_Lower_Layer_Component_Fieldwise.ext)
	add.d	$s2, $a1, $a0
	addi.d	$a0, $sp, 24
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_17
# %bb.1:                                # %.preheader38
	move	$s3, $a0
	move	$s4, $s0
	blez	$s0, .LBB2_7
# %bb.2:                                # %.preheader37.lr.ph
	blez	$fp, .LBB2_7
# %bb.3:                                # %.preheader37.us.preheader
	pcalau12i	$a0, %got_pc_hi20(llframe0)
	ld.d	$a0, $a0, %got_pc_lo12(llframe0)
	move	$s8, $zero
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$s7, $a1, $a0, 3
	.p2align	4, , 16
.LBB2_4:                                # %.preheader37.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
	mul.d	$a0, $s8, $fp
	bstrpick.d	$s1, $a0, 31, 0
	move	$s0, $fp
	.p2align	4, , 16
.LBB2_5:                                #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	stx.b	$a0, $a1, $s1
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 1
	bnez	$s0, .LBB2_5
# %bb.6:                                # %._crit_edge.us
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a0, $s6, 0
	sltui	$a0, $a0, 1
	add.d	$a0, $a0, $s8
	addi.w	$s8, $a0, 1
	blt	$s8, $s4, .LBB2_4
.LBB2_7:                                # %._crit_edge41
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	bnez	$a0, .LBB2_16
# %bb.8:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.w	$a2, $s5, 0
	addi.d	$a0, $sp, 24
	ori	$a3, $zero, 98
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_17
# %bb.9:                                # %.preheader36
	move	$s2, $a0
	ori	$a0, $zero, 2
	blt	$s4, $a0, .LBB2_15
# %bb.10:                               # %.preheader.lr.ph
	blez	$fp, .LBB2_15
# %bb.11:                               # %.preheader.us.preheader
	move	$s7, $s4
	pcalau12i	$a0, %got_pc_hi20(llframe1)
	ld.d	$a0, $a0, %got_pc_lo12(llframe1)
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$s1, $a1, $a0, 3
	slli.d	$s3, $fp, 1
	ori	$s4, $zero, 1
	move	$s5, $fp
	.p2align	4, , 16
.LBB2_12:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
	move	$s0, $fp
	move	$s6, $s5
	.p2align	4, , 16
.LBB2_13:                               #   Parent Loop BB2_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	stx.b	$a0, $a1, $s6
	addi.d	$s0, $s0, -1
	addi.d	$s6, $s6, 1
	bnez	$s0, .LBB2_13
# %bb.14:                               # %._crit_edge.us45
                                        #   in Loop: Header=BB2_12 Depth=1
	addi.d	$s4, $s4, 2
	add.d	$s5, $s5, $s3
	bltu	$s4, $s7, .LBB2_12
.LBB2_15:                               # %._crit_edge44
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB2_16:
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB2_17:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	Read_Lower_Layer_Component_Fieldwise, .Lfunc_end2-Read_Lower_Layer_Component_Fieldwise
                                        # -- End function
	.p2align	5                               # -- Begin function Make_Spatial_Prediction_Frame
	.type	Make_Spatial_Prediction_Frame,@function
Make_Spatial_Prediction_Frame:          # @Make_Spatial_Prediction_Frame
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
	ld.d	$s4, $sp, 200
	ld.d	$s7, $sp, 184
	ld.d	$fp, $sp, 144
	ld.d	$s1, $sp, 152
	ld.d	$t1, $sp, 176
	move	$s0, $a2
	mul.w	$t0, $s4, $fp
	mul.w	$a2, $s7, $s1
	st.d	$t1, $sp, 48                    # 8-byte Folded Spill
	div.w	$s6, $a2, $t1
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	beqz	$a1, .LBB3_14
# %bb.1:
	blez	$s6, .LBB3_68
# %bb.2:                                # %.lr.ph39.i
	blez	$fp, .LBB3_68
# %bb.3:                                # %.lr.ph.us.preheader.i
	move	$a0, $zero
	addi.w	$a1, $s1, -1
	srai.d	$a2, $s7, 1
	mul.d	$a3, $s6, $fp
	alsl.d	$a3, $a3, $a4, 1
	add.d	$t0, $s0, $fp
	bstrpick.d	$t1, $fp, 30, 3
	slli.d	$t1, $t1, 3
	slli.d	$t2, $fp, 1
	ori	$t3, $zero, 16
	ori	$t4, $zero, 8
	move	$t5, $a4
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_4:                                # %._crit_edge.us.i
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$t5, $t5, $t2
	beq	$a0, $s6, .LBB3_68
.LBB3_5:                                # %.lr.ph.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_12 Depth 2
                                        #     Child Loop BB3_8 Depth 2
	ld.d	$t6, $sp, 48                    # 8-byte Folded Reload
	mul.w	$t7, $t6, $a0
	div.w	$t8, $t7, $s7
	mul.w	$s1, $t8, $fp
	slt	$t6, $t8, $a1
	maskeqz	$t6, $fp, $t6
	bstrpick.d	$t6, $t6, 31, 0
	mul.d	$t8, $t8, $s7
	sub.d	$t7, $t7, $t8
	alsl.w	$t7, $t7, $a2, 4
	div.w	$t7, $t7, $s7
	sub.d	$t8, $t3, $t7
	bgeu	$fp, $t4, .LBB3_9
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	move	$s5, $zero
.LBB3_7:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_5 Depth=1
	sub.d	$s2, $fp, $s5
	slli.d	$s3, $s5, 1
	add.d	$s1, $s5, $s1
	add.d	$s1, $s0, $s1
	.p2align	4, , 16
.LBB3_8:                                # %scalar.ph
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$s5, $s1, 0
	ldx.bu	$s8, $s1, $t6
	mul.d	$s5, $t8, $s5
	mul.d	$s8, $t7, $s8
	add.d	$s5, $s8, $s5
	stx.h	$s5, $t5, $s3
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 2
	addi.d	$s1, $s1, 1
	bnez	$s2, .LBB3_8
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_9:                                # %vector.memcheck
                                        #   in Loop: Header=BB3_5 Depth=1
	add.d	$s2, $s0, $s1
	add.d	$s5, $s2, $t6
	add.d	$s3, $t0, $s1
	add.d	$ra, $s3, $t6
	sltu	$ra, $a4, $ra
	sltu	$s5, $s5, $a3
	and	$ra, $ra, $s5
	move	$s5, $zero
	bnez	$ra, .LBB3_7
# %bb.10:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_5 Depth=1
	sltu	$s3, $a4, $s3
	sltu	$ra, $s2, $a3
	and	$s3, $s3, $ra
	bnez	$s3, .LBB3_7
# %bb.11:                               # %vector.ph
                                        #   in Loop: Header=BB3_5 Depth=1
	vreplgr2vr.h	$vr0, $t8
	vreplgr2vr.h	$vr1, $t7
	move	$s3, $t5
	move	$s5, $t1
	.p2align	4, , 16
.LBB3_12:                               # %vector.body
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$ra, $s2, 0
	ldx.d	$s8, $s2, $t6
	vinsgr2vr.d	$vr2, $ra, 0
	vsllwil.hu.bu	$vr2, $vr2, 0
	vinsgr2vr.d	$vr3, $s8, 0
	vsllwil.hu.bu	$vr3, $vr3, 0
	vmul.h	$vr3, $vr1, $vr3
	vmadd.h	$vr3, $vr0, $vr2
	vst	$vr3, $s3, 0
	addi.d	$s5, $s5, -8
	addi.d	$s3, $s3, 16
	addi.d	$s2, $s2, 8
	bnez	$s5, .LBB3_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB3_5 Depth=1
	move	$s5, $t1
	beq	$t1, $fp, .LBB3_4
	b	.LBB3_7
.LBB3_14:
	ld.d	$s2, $sp, 208
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	beqz	$a0, .LBB3_29
# %bb.15:
	st.d	$a7, $sp, 16                    # 8-byte Folded Spill
	move	$s3, $a4
	move	$s5, $a5
	pcalau12i	$a0, %got_pc_hi20(lower_layer_deinterlaced_field_select)
	ld.d	$a0, $a0, %got_pc_lo12(lower_layer_deinterlaced_field_select)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB3_42
# %bb.16:
	move	$a0, $a3
	move	$a1, $s0
	move	$a2, $zero
	move	$s0, $a3
	move	$a3, $fp
	move	$a4, $s1
	move	$a5, $s2
	pcaddu18i	$ra, %call36(Deinterlace)
	jirl	$ra, $ra, 0
	move	$a5, $s5
	move	$a4, $s3
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	blez	$s6, .LBB3_68
# %bb.17:                               # %.lr.ph39.i122
	blez	$fp, .LBB3_68
# %bb.18:                               # %.lr.ph.us.preheader.i123
	move	$a0, $s0
	move	$a1, $zero
	addi.w	$a2, $s1, -1
	srai.d	$a3, $s7, 1
	mul.d	$t0, $s6, $fp
	alsl.d	$t0, $t0, $a4, 1
	add.d	$t1, $s0, $fp
	bstrpick.d	$t2, $fp, 30, 3
	slli.d	$t2, $t2, 3
	slli.d	$t3, $fp, 1
	ori	$t4, $zero, 16
	ori	$t5, $zero, 8
	move	$t6, $a4
	b	.LBB3_20
	.p2align	4, , 16
.LBB3_19:                               # %._crit_edge.us.i131
                                        #   in Loop: Header=BB3_20 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$t6, $t6, $t3
	beq	$a1, $s6, .LBB3_68
.LBB3_20:                               # %.lr.ph.us.i124
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_27 Depth 2
                                        #     Child Loop BB3_23 Depth 2
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	mul.w	$t8, $t7, $a1
	div.w	$s0, $t8, $s7
	mul.w	$s1, $s0, $fp
	slt	$t7, $s0, $a2
	maskeqz	$t7, $fp, $t7
	bstrpick.d	$t7, $t7, 31, 0
	mul.d	$s0, $s0, $s7
	sub.d	$t8, $t8, $s0
	alsl.w	$t8, $t8, $a3, 4
	div.w	$t8, $t8, $s7
	sub.d	$s0, $t4, $t8
	bgeu	$fp, $t5, .LBB3_24
# %bb.21:                               #   in Loop: Header=BB3_20 Depth=1
	move	$s5, $zero
.LBB3_22:                               # %scalar.ph226.preheader
                                        #   in Loop: Header=BB3_20 Depth=1
	sub.d	$s2, $fp, $s5
	slli.d	$s3, $s5, 1
	add.d	$s1, $s5, $s1
	add.d	$s1, $a0, $s1
	.p2align	4, , 16
.LBB3_23:                               # %scalar.ph226
                                        #   Parent Loop BB3_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$s5, $s1, 0
	ldx.bu	$s8, $s1, $t7
	mul.d	$s5, $s0, $s5
	mul.d	$s8, $t8, $s8
	add.d	$s5, $s8, $s5
	stx.h	$s5, $t6, $s3
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 2
	addi.d	$s1, $s1, 1
	bnez	$s2, .LBB3_23
	b	.LBB3_19
	.p2align	4, , 16
.LBB3_24:                               # %vector.memcheck213
                                        #   in Loop: Header=BB3_20 Depth=1
	add.d	$s2, $a0, $s1
	add.d	$s5, $s2, $t7
	add.d	$s3, $t1, $s1
	add.d	$s8, $s3, $t7
	sltu	$s8, $a4, $s8
	sltu	$s5, $s5, $t0
	and	$s8, $s8, $s5
	move	$s5, $zero
	bnez	$s8, .LBB3_22
# %bb.25:                               # %vector.memcheck213
                                        #   in Loop: Header=BB3_20 Depth=1
	sltu	$s3, $a4, $s3
	sltu	$s8, $s2, $t0
	and	$s3, $s3, $s8
	bnez	$s3, .LBB3_22
# %bb.26:                               # %vector.ph228
                                        #   in Loop: Header=BB3_20 Depth=1
	vreplgr2vr.h	$vr0, $s0
	vreplgr2vr.h	$vr1, $t8
	move	$s3, $t6
	move	$s5, $t2
	.p2align	4, , 16
.LBB3_27:                               # %vector.body235
                                        #   Parent Loop BB3_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s8, $s2, 0
	ldx.d	$ra, $s2, $t7
	vinsgr2vr.d	$vr2, $s8, 0
	vsllwil.hu.bu	$vr2, $vr2, 0
	vinsgr2vr.d	$vr3, $ra, 0
	vsllwil.hu.bu	$vr3, $vr3, 0
	vmul.h	$vr3, $vr1, $vr3
	vmadd.h	$vr3, $vr0, $vr2
	vst	$vr3, $s3, 0
	addi.d	$s5, $s5, -8
	addi.d	$s3, $s3, 16
	addi.d	$s2, $s2, 8
	bnez	$s5, .LBB3_27
# %bb.28:                               # %middle.block240
                                        #   in Loop: Header=BB3_20 Depth=1
	move	$s5, $t2
	beq	$t2, $fp, .LBB3_19
	b	.LBB3_22
.LBB3_29:
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $a3
	move	$s3, $a3
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	move	$a3, $fp
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	move	$a4, $s1
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	move	$a5, $s2
	move	$s5, $a7
	pcaddu18i	$ra, %call36(Deinterlace)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $fp
	move	$a4, $s1
	move	$a5, $s2
	pcaddu18i	$ra, %call36(Deinterlace)
	jirl	$ra, $ra, 0
	move	$a7, $s5
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	blez	$s6, .LBB3_68
# %bb.30:                               # %.lr.ph39.i146
	addi.w	$a0, $s1, -1
	srai.d	$a1, $s7, 1
	blez	$fp, .LBB3_55
# %bb.31:                               # %.lr.ph.us.preheader.i147
	move	$a2, $zero
	slli.d	$a3, $s6, 1
	addi.d	$a3, $a3, -2
	ori	$a3, $a3, 2
	mul.d	$a3, $a3, $fp
	add.d	$a3, $a4, $a3
	add.d	$t0, $s0, $fp
	bstrpick.d	$t1, $fp, 30, 3
	slli.d	$t1, $t1, 3
	slli.d	$t2, $fp, 2
	ori	$s3, $zero, 16
	ori	$t4, $zero, 8
	move	$t5, $a4
	b	.LBB3_33
	.p2align	4, , 16
.LBB3_32:                               # %._crit_edge.us.i155
                                        #   in Loop: Header=BB3_33 Depth=1
	addi.d	$a2, $a2, 2
	add.d	$t5, $t5, $t2
	bgeu	$a2, $s6, .LBB3_55
.LBB3_33:                               # %.lr.ph.us.i148
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_40 Depth 2
                                        #     Child Loop BB3_36 Depth 2
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	mul.w	$t7, $t3, $a2
	div.w	$t8, $t7, $s7
	mul.w	$s1, $t8, $fp
	slt	$t6, $t8, $a0
	maskeqz	$t6, $fp, $t6
	bstrpick.d	$t6, $t6, 31, 0
	mul.d	$t8, $t8, $s7
	sub.d	$t7, $t7, $t8
	alsl.w	$t7, $t7, $a1, 4
	div.w	$t7, $t7, $s7
	sub.d	$t8, $s3, $t7
	bgeu	$fp, $t4, .LBB3_37
# %bb.34:                               #   in Loop: Header=BB3_33 Depth=1
	move	$ra, $zero
.LBB3_35:                               # %scalar.ph286.preheader
                                        #   in Loop: Header=BB3_33 Depth=1
	sub.d	$s2, $fp, $ra
	slli.d	$s5, $ra, 1
	add.d	$t3, $ra, $s1
	add.d	$s1, $s0, $t3
	.p2align	4, , 16
.LBB3_36:                               # %scalar.ph286
                                        #   Parent Loop BB3_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t3, $s1, 0
	ldx.bu	$s8, $s1, $t6
	mul.d	$t3, $t8, $t3
	mul.d	$s8, $t7, $s8
	add.d	$t3, $s8, $t3
	stx.h	$t3, $t5, $s5
	addi.d	$s2, $s2, -1
	addi.d	$s5, $s5, 2
	addi.d	$s1, $s1, 1
	bnez	$s2, .LBB3_36
	b	.LBB3_32
	.p2align	4, , 16
.LBB3_37:                               # %vector.memcheck273
                                        #   in Loop: Header=BB3_33 Depth=1
	add.d	$s2, $s0, $s1
	add.d	$s8, $s2, $t6
	add.d	$s5, $t0, $s1
	add.d	$ra, $s5, $t6
	sltu	$ra, $a4, $ra
	sltu	$s8, $s8, $a3
	and	$s8, $ra, $s8
	move	$ra, $zero
	bnez	$s8, .LBB3_35
# %bb.38:                               # %vector.memcheck273
                                        #   in Loop: Header=BB3_33 Depth=1
	sltu	$s5, $a4, $s5
	sltu	$s8, $s2, $a3
	and	$s5, $s5, $s8
	bnez	$s5, .LBB3_35
# %bb.39:                               # %vector.ph288
                                        #   in Loop: Header=BB3_33 Depth=1
	vreplgr2vr.h	$vr0, $t8
	vreplgr2vr.h	$vr1, $t7
	move	$s5, $t5
	move	$ra, $t1
	.p2align	4, , 16
.LBB3_40:                               # %vector.body295
                                        #   Parent Loop BB3_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s8, $s2, 0
	ldx.d	$t3, $s2, $t6
	vinsgr2vr.d	$vr2, $s8, 0
	vsllwil.hu.bu	$vr2, $vr2, 0
	vinsgr2vr.d	$vr3, $t3, 0
	vsllwil.hu.bu	$vr3, $vr3, 0
	vmul.h	$vr3, $vr1, $vr3
	vmadd.h	$vr3, $vr0, $vr2
	vst	$vr3, $s5, 0
	addi.d	$ra, $ra, -8
	addi.d	$s5, $s5, 16
	addi.d	$s2, $s2, 8
	bnez	$ra, .LBB3_40
# %bb.41:                               # %middle.block300
                                        #   in Loop: Header=BB3_33 Depth=1
	move	$ra, $t1
	beq	$t1, $fp, .LBB3_32
	b	.LBB3_35
.LBB3_42:
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $a3
	move	$a3, $fp
	move	$a4, $s1
	move	$a5, $s2
	pcaddu18i	$ra, %call36(Deinterlace)
	jirl	$ra, $ra, 0
	move	$a5, $s5
	move	$a4, $s3
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	blez	$s6, .LBB3_68
# %bb.43:                               # %.lr.ph39.i134
	blez	$fp, .LBB3_68
# %bb.44:                               # %.lr.ph.us.preheader.i135
	move	$a0, $zero
	addi.w	$a1, $s1, -1
	srai.d	$a2, $s7, 1
	mul.d	$a3, $s6, $fp
	alsl.d	$a3, $a3, $a4, 1
	add.d	$t0, $s0, $fp
	bstrpick.d	$t1, $fp, 30, 3
	slli.d	$t1, $t1, 3
	slli.d	$t2, $fp, 1
	ori	$t3, $zero, 16
	ori	$t4, $zero, 8
	move	$t5, $a4
	b	.LBB3_46
	.p2align	4, , 16
.LBB3_45:                               # %._crit_edge.us.i143
                                        #   in Loop: Header=BB3_46 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$t5, $t5, $t2
	beq	$a0, $s6, .LBB3_68
.LBB3_46:                               # %.lr.ph.us.i136
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_53 Depth 2
                                        #     Child Loop BB3_49 Depth 2
	ld.d	$t6, $sp, 48                    # 8-byte Folded Reload
	mul.w	$t7, $t6, $a0
	div.w	$t8, $t7, $s7
	mul.w	$s1, $t8, $fp
	slt	$t6, $t8, $a1
	maskeqz	$t6, $fp, $t6
	bstrpick.d	$t6, $t6, 31, 0
	mul.d	$t8, $t8, $s7
	sub.d	$t7, $t7, $t8
	alsl.w	$t7, $t7, $a2, 4
	div.w	$t7, $t7, $s7
	sub.d	$t8, $t3, $t7
	bgeu	$fp, $t4, .LBB3_50
# %bb.47:                               #   in Loop: Header=BB3_46 Depth=1
	move	$s5, $zero
.LBB3_48:                               # %scalar.ph256.preheader
                                        #   in Loop: Header=BB3_46 Depth=1
	sub.d	$s2, $fp, $s5
	slli.d	$s3, $s5, 1
	add.d	$s1, $s5, $s1
	add.d	$s1, $s0, $s1
	.p2align	4, , 16
.LBB3_49:                               # %scalar.ph256
                                        #   Parent Loop BB3_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$s5, $s1, 0
	ldx.bu	$s8, $s1, $t6
	mul.d	$s5, $t8, $s5
	mul.d	$s8, $t7, $s8
	add.d	$s5, $s8, $s5
	stx.h	$s5, $t5, $s3
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 2
	addi.d	$s1, $s1, 1
	bnez	$s2, .LBB3_49
	b	.LBB3_45
	.p2align	4, , 16
.LBB3_50:                               # %vector.memcheck243
                                        #   in Loop: Header=BB3_46 Depth=1
	add.d	$s2, $s0, $s1
	add.d	$s5, $s2, $t6
	add.d	$s3, $t0, $s1
	add.d	$s8, $s3, $t6
	sltu	$s8, $a4, $s8
	sltu	$s5, $s5, $a3
	and	$s8, $s8, $s5
	move	$s5, $zero
	bnez	$s8, .LBB3_48
# %bb.51:                               # %vector.memcheck243
                                        #   in Loop: Header=BB3_46 Depth=1
	sltu	$s3, $a4, $s3
	sltu	$s8, $s2, $a3
	and	$s3, $s3, $s8
	bnez	$s3, .LBB3_48
# %bb.52:                               # %vector.ph258
                                        #   in Loop: Header=BB3_46 Depth=1
	vreplgr2vr.h	$vr0, $t8
	vreplgr2vr.h	$vr1, $t7
	move	$s3, $t5
	move	$s5, $t1
	.p2align	4, , 16
.LBB3_53:                               # %vector.body265
                                        #   Parent Loop BB3_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s8, $s2, 0
	ldx.d	$ra, $s2, $t6
	vinsgr2vr.d	$vr2, $s8, 0
	vsllwil.hu.bu	$vr2, $vr2, 0
	vinsgr2vr.d	$vr3, $ra, 0
	vsllwil.hu.bu	$vr3, $vr3, 0
	vmul.h	$vr3, $vr1, $vr3
	vmadd.h	$vr3, $vr0, $vr2
	vst	$vr3, $s3, 0
	addi.d	$s5, $s5, -8
	addi.d	$s3, $s3, 16
	addi.d	$s2, $s2, 8
	bnez	$s5, .LBB3_53
# %bb.54:                               # %middle.block270
                                        #   in Loop: Header=BB3_46 Depth=1
	move	$s5, $t1
	beq	$t1, $fp, .LBB3_45
	b	.LBB3_48
.LBB3_55:                               # %Subsample_Vertical.exit157
	ori	$a2, $zero, 1
	beq	$s6, $a2, .LBB3_68
# %bb.56:                               # %.lr.ph39.i158
	blez	$fp, .LBB3_68
# %bb.57:                               # %.lr.ph.us.preheader.i159
	alsl.d	$a2, $fp, $a4, 1
	ori	$a3, $zero, 3
	sltu	$t0, $a3, $s6
	masknez	$a3, $a3, $t0
	maskeqz	$t0, $s6, $t0
	or	$a3, $t0, $a3
	slli.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 2
	mul.d	$a3, $a3, $fp
	alsl.d	$a3, $a3, $a4, 2
	ld.d	$t0, $sp, 32                    # 8-byte Folded Reload
	add.d	$t0, $t0, $fp
	bstrpick.d	$t1, $fp, 30, 3
	slli.d	$t1, $t1, 3
	slli.d	$t2, $fp, 2
	ori	$t3, $zero, 1
	ori	$t4, $zero, 16
	ori	$t5, $zero, 8
	move	$t6, $a2
	b	.LBB3_59
	.p2align	4, , 16
.LBB3_58:                               # %._crit_edge.us.i167
                                        #   in Loop: Header=BB3_59 Depth=1
	addi.d	$t3, $t3, 2
	add.d	$t6, $t6, $t2
	bgeu	$t3, $s6, .LBB3_68
.LBB3_59:                               # %.lr.ph.us.i160
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_66 Depth 2
                                        #     Child Loop BB3_62 Depth 2
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	mul.w	$t8, $t7, $t3
	div.w	$s0, $t8, $s7
	mul.w	$s1, $s0, $fp
	slt	$t7, $s0, $a0
	maskeqz	$t7, $fp, $t7
	bstrpick.d	$t7, $t7, 31, 0
	mul.d	$s0, $s0, $s7
	sub.d	$t8, $t8, $s0
	alsl.w	$t8, $t8, $a1, 4
	div.w	$t8, $t8, $s7
	sub.d	$s0, $t4, $t8
	bgeu	$fp, $t5, .LBB3_63
# %bb.60:                               #   in Loop: Header=BB3_59 Depth=1
	move	$ra, $zero
.LBB3_61:                               # %scalar.ph317.preheader
                                        #   in Loop: Header=BB3_59 Depth=1
	sub.d	$s2, $fp, $ra
	slli.d	$s5, $ra, 1
	add.d	$s1, $ra, $s1
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	add.d	$s1, $s3, $s1
	.p2align	4, , 16
.LBB3_62:                               # %scalar.ph317
                                        #   Parent Loop BB3_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$s3, $s1, 0
	ldx.bu	$s8, $s1, $t7
	mul.d	$s3, $s0, $s3
	mul.d	$s8, $t8, $s8
	add.d	$s3, $s8, $s3
	stx.h	$s3, $t6, $s5
	addi.d	$s2, $s2, -1
	addi.d	$s5, $s5, 2
	addi.d	$s1, $s1, 1
	bnez	$s2, .LBB3_62
	b	.LBB3_58
	.p2align	4, , 16
.LBB3_63:                               # %vector.memcheck303
                                        #   in Loop: Header=BB3_59 Depth=1
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	add.d	$s2, $s2, $s1
	add.d	$s3, $s2, $t7
	add.d	$s5, $t0, $s1
	add.d	$s8, $s5, $t7
	sltu	$s8, $a2, $s8
	sltu	$s3, $s3, $a3
	and	$s3, $s8, $s3
	move	$ra, $zero
	bnez	$s3, .LBB3_61
# %bb.64:                               # %vector.memcheck303
                                        #   in Loop: Header=BB3_59 Depth=1
	sltu	$s3, $a2, $s5
	sltu	$s5, $s2, $a3
	and	$s3, $s3, $s5
	bnez	$s3, .LBB3_61
# %bb.65:                               # %vector.ph319
                                        #   in Loop: Header=BB3_59 Depth=1
	vreplgr2vr.h	$vr0, $s0
	vreplgr2vr.h	$vr1, $t8
	move	$s5, $t6
	move	$ra, $t1
	.p2align	4, , 16
.LBB3_66:                               # %vector.body326
                                        #   Parent Loop BB3_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $s2, 0
	ldx.d	$s8, $s2, $t7
	vinsgr2vr.d	$vr2, $s3, 0
	vsllwil.hu.bu	$vr2, $vr2, 0
	vinsgr2vr.d	$vr3, $s8, 0
	vsllwil.hu.bu	$vr3, $vr3, 0
	vmul.h	$vr3, $vr1, $vr3
	vmadd.h	$vr3, $vr0, $vr2
	vst	$vr3, $s5, 0
	addi.d	$ra, $ra, -8
	addi.d	$s5, $s5, 16
	addi.d	$s2, $s2, 8
	bnez	$ra, .LBB3_66
# %bb.67:                               # %middle.block331
                                        #   in Loop: Header=BB3_59 Depth=1
	move	$ra, $t1
	beq	$t1, $fp, .LBB3_58
	b	.LBB3_61
.LBB3_68:                               # %Subsample_Vertical.exit
	ld.d	$a0, $sp, 192
	ld.d	$a2, $sp, 168
	ld.d	$a1, $sp, 160
	bltz	$a7, .LBB3_71
# %bb.69:
	mul.w	$a3, $a1, $a7
	add.d	$a5, $a5, $a3
	sub.w	$a2, $a2, $a7
	slt	$a3, $a2, $s6
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $s6, $a3
	or	$a2, $a2, $a3
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	div.w	$a7, $a3, $a0
	bltz	$a6, .LBB3_72
.LBB3_70:
	move	$a3, $zero
	add.d	$a5, $a5, $a6
	sub.w	$a6, $a1, $a6
	slt	$t0, $a6, $a7
	maskeqz	$a6, $a6, $t0
	masknez	$a7, $a7, $t0
	or	$a6, $a6, $a7
	bgtz	$a6, .LBB3_73
	b	.LBB3_78
.LBB3_71:
	mul.w	$a3, $fp, $a7
	slli.d	$a3, $a3, 1
	sub.d	$a4, $a4, $a3
	add.w	$a3, $s6, $a7
	srai.d	$a7, $a3, 63
	andn	$a3, $a3, $a7
	slt	$a7, $a2, $a3
	masknez	$a3, $a3, $a7
	maskeqz	$a2, $a2, $a7
	or	$a2, $a2, $a3
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	div.w	$a7, $a3, $a0
	bgez	$a6, .LBB3_70
.LBB3_72:
	sub.d	$a3, $zero, $a6
	add.w	$a6, $a7, $a6
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a1, $a6
	masknez	$a6, $a6, $a7
	maskeqz	$a7, $a1, $a7
	or	$a6, $a7, $a6
	blez	$a6, .LBB3_78
.LBB3_73:                               # %.lr.ph47.i
	blez	$a2, .LBB3_78
# %bb.74:                               # %.lr.ph.us.preheader.i170
	move	$a7, $zero
	addi.w	$t0, $fp, -1
	srai.d	$t1, $s4, 1
	slli.d	$t2, $fp, 1
	ori	$t3, $zero, 16
	.p2align	4, , 16
.LBB3_75:                               # %.lr.ph.us.i171
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_76 Depth 2
	add.d	$t4, $a5, $a7
	add.d	$t5, $a3, $a7
	mul.w	$t7, $t5, $a0
	div.w	$t8, $t7, $s4
	alsl.d	$t5, $t8, $a4, 1
	slt	$t6, $t8, $t0
	slli.d	$t6, $t6, 1
	mul.d	$t8, $t8, $s4
	sub.d	$t7, $t7, $t8
	alsl.w	$t7, $t7, $t1, 4
	div.w	$t7, $t7, $s4
	sub.d	$t8, $t3, $t7
	move	$fp, $a2
	.p2align	4, , 16
.LBB3_76:                               #   Parent Loop BB3_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$s0, $t5, 0
	ldx.h	$s1, $t5, $t6
	mul.d	$s0, $t8, $s0
	mul.d	$s1, $t7, $s1
	add.w	$s0, $s1, $s0
	srli.d	$s1, $s0, 31
	add.d	$s0, $s1, $s0
	addi.d	$s0, $s0, 128
	srli.d	$s0, $s0, 8
	st.b	$s0, $t4, 0
	add.d	$t4, $t4, $a1
	addi.w	$fp, $fp, -1
	add.d	$t5, $t5, $t2
	bnez	$fp, .LBB3_76
# %bb.77:                               # %._crit_edge.us.i175
                                        #   in Loop: Header=BB3_75 Depth=1
	addi.d	$a7, $a7, 1
	bne	$a7, $a6, .LBB3_75
.LBB3_78:                               # %Subsample_Horizontal.exit
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
.Lfunc_end3:
	.size	Make_Spatial_Prediction_Frame, .Lfunc_end3-Make_Spatial_Prediction_Frame
                                        # -- End function
	.p2align	5                               # -- Begin function Deinterlace
	.type	Deinterlace,@function
Deinterlace:                            # @Deinterlace
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	bge	$a2, $a4, .LBB4_25
# %bb.1:                                # %.lr.ph68
	sub.d	$a6, $zero, $a3
	addi.w	$a7, $a4, -1
	slli.d	$t0, $a3, 1
	beqz	$a5, .LBB4_20
# %bb.2:                                # %.lr.ph68.split
	blez	$a3, .LBB4_25
# %bb.3:                                # %.preheader.us.preheader
	bstrpick.d	$a1, $a2, 31, 0
	andi	$a2, $a3, 12
	bstrpick.d	$a5, $a3, 30, 4
	slli.d	$a5, $a5, 4
	bstrpick.d	$t1, $a3, 30, 2
	slli.d	$t1, $t1, 2
	mul.d	$t2, $a3, $a1
	add.d	$a0, $a0, $t2
	sub.d	$t2, $zero, $t1
	ori	$t3, $zero, 4
	ori	$t4, $zero, 16
	b	.LBB4_5
	.p2align	4, , 16
.LBB4_4:                                # %..loopexit63_crit_edge.us
                                        #   in Loop: Header=BB4_5 Depth=1
	addi.d	$a1, $a1, 2
	add.d	$a0, $a0, $t0
	bgeu	$a1, $a4, .LBB4_25
.LBB4_5:                                # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
                                        #     Child Loop BB4_18 Depth 2
                                        #     Child Loop BB4_8 Depth 2
	sltui	$t5, $a1, 1
	masknez	$t6, $a6, $t5
	maskeqz	$t5, $a3, $t5
	or	$t5, $t5, $t6
	xor	$t6, $a1, $a7
	sltui	$t6, $t6, 1
	masknez	$t7, $a3, $t6
	maskeqz	$t6, $a6, $t6
	or	$t6, $t6, $t7
	bgeu	$a3, $t3, .LBB4_9
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	move	$t7, $zero
.LBB4_7:                                # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB4_5 Depth=1
	add.d	$t5, $a0, $t5
	add.d	$t6, $a0, $t6
	.p2align	4, , 16
.LBB4_8:                                # %vec.epilog.scalar.ph
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$t8, $t5, $t7
	ldx.bu	$fp, $t6, $t7
	add.d	$t8, $t8, $fp
	addi.d	$t8, $t8, 1
	srli.d	$t8, $t8, 1
	stx.b	$t8, $a0, $t7
	addi.d	$t7, $t7, 1
	bne	$a3, $t7, .LBB4_8
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_9:                                # %vector.memcheck
                                        #   in Loop: Header=BB4_5 Depth=1
	addi.d	$t8, $t5, 15
	move	$t7, $zero
	bltu	$t8, $t4, .LBB4_7
# %bb.10:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_5 Depth=1
	addi.d	$t8, $t6, 15
	bltu	$t8, $t4, .LBB4_7
# %bb.11:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB4_5 Depth=1
	bgeu	$a3, $t4, .LBB4_13
# %bb.12:                               #   in Loop: Header=BB4_5 Depth=1
	move	$t8, $zero
	b	.LBB4_17
.LBB4_13:                               # %vector.body.preheader
                                        #   in Loop: Header=BB4_5 Depth=1
	move	$t7, $a0
	move	$t8, $a5
	.p2align	4, , 16
.LBB4_14:                               # %vector.body
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vldx	$vr0, $t7, $t5
	vldx	$vr1, $t7, $t6
	vor.v	$vr2, $vr0, $vr1
	vxor.v	$vr0, $vr0, $vr1
	vsrli.b	$vr0, $vr0, 1
	vsub.b	$vr0, $vr2, $vr0
	vst	$vr0, $t7, 0
	addi.d	$t8, $t8, -16
	addi.d	$t7, $t7, 16
	bnez	$t8, .LBB4_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB4_5 Depth=1
	beq	$a5, $a3, .LBB4_4
# %bb.16:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB4_5 Depth=1
	move	$t8, $a5
	move	$t7, $a5
	beqz	$a2, .LBB4_7
.LBB4_17:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB4_5 Depth=1
	add.d	$t7, $t2, $t8
	add.d	$t8, $a0, $t8
	.p2align	4, , 16
.LBB4_18:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$fp, $t8, $t5
	ldx.w	$s0, $t8, $t6
	vinsgr2vr.w	$vr0, $fp, 0
	vinsgr2vr.w	$vr1, $s0, 0
	vor.v	$vr2, $vr0, $vr1
	vxor.v	$vr0, $vr0, $vr1
	vsrli.b	$vr0, $vr0, 1
	vsub.b	$vr0, $vr2, $vr0
	vstelm.w	$vr0, $t8, 0, 0
	addi.d	$t7, $t7, 4
	addi.d	$t8, $t8, 4
	bnez	$t7, .LBB4_18
# %bb.19:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB4_5 Depth=1
	move	$t7, $t1
	beq	$t1, $a3, .LBB4_4
	b	.LBB4_7
.LBB4_20:                               # %.lr.ph68.split.us
	blez	$a3, .LBB4_25
# %bb.21:                               # %.lr.ph66.us.us.preheader
	addi.w	$a5, $t0, 0
	sub.d	$t1, $zero, $a5
	addi.w	$t2, $a4, -2
	bstrpick.d	$a2, $a2, 31, 0
	mul.d	$t3, $a3, $a2
	add.d	$a0, $a0, $t3
	add.d	$a1, $a1, $t3
	pcalau12i	$t3, %got_pc_hi20(Clip)
	ld.d	$t3, $t3, %got_pc_lo12(Clip)
	.p2align	4, , 16
.LBB4_22:                               # %.lr.ph66.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_23 Depth 2
	move	$t4, $zero
	sltui	$t5, $a2, 1
	masknez	$t6, $a6, $t5
	maskeqz	$t5, $a3, $t5
	or	$t5, $t5, $t6
	xor	$t6, $a2, $a7
	sltui	$t6, $t6, 1
	masknez	$t7, $a3, $t6
	maskeqz	$t6, $a6, $t6
	or	$t6, $t6, $t7
	sltui	$t7, $a2, 2
	masknez	$t7, $t1, $t7
	slt	$t8, $a2, $t2
	maskeqz	$t8, $a5, $t8
	add.d	$t5, $a0, $t5
	add.d	$t6, $a0, $t6
	add.d	$t7, $a1, $t7
	add.d	$t8, $a1, $t8
	.p2align	4, , 16
.LBB4_23:                               #   Parent Loop BB4_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$fp, $t5, $t4
	ldx.bu	$s0, $t6, $t4
	ldx.bu	$s1, $a1, $t4
	ldx.bu	$s2, $t7, $t4
	ldx.bu	$s3, $t8, $t4
	add.d	$fp, $s0, $fp
	slli.d	$fp, $fp, 3
	alsl.d	$fp, $s1, $fp, 1
	add.d	$s0, $s2, $s3
	sub.d	$fp, $fp, $s0
	ld.d	$s0, $t3, 0
	srli.d	$s1, $fp, 31
	add.d	$fp, $s1, $fp
	addi.w	$fp, $fp, 8
	srai.d	$fp, $fp, 4
	ldx.b	$fp, $s0, $fp
	stx.b	$fp, $a0, $t4
	addi.d	$t4, $t4, 1
	bne	$a3, $t4, .LBB4_23
# %bb.24:                               # %..loopexit_crit_edge.us.us
                                        #   in Loop: Header=BB4_22 Depth=1
	addi.d	$a2, $a2, 2
	add.d	$a0, $a0, $t0
	add.d	$a1, $a1, $t0
	bltu	$a2, $a4, .LBB4_22
.LBB4_25:                               # %._crit_edge
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	Deinterlace, .Lfunc_end4-Deinterlace
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rb"
	.size	.L.str, 3

	.type	.L__const.Read_Lower_Layer_Component_Fieldwise.ext,@object # @__const.Read_Lower_Layer_Component_Fieldwise.ext
	.section	.rodata,"a",@progbits
.L__const.Read_Lower_Layer_Component_Fieldwise.ext:
	.asciz	".Y"
	.asciz	".U"
	.asciz	".V"
	.size	.L__const.Read_Lower_Layer_Component_Fieldwise.ext, 9

	.section	".note.GNU-stack","",@progbits
	.addrsig
