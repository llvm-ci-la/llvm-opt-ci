	.file	"gethdr.c"
	.text
	.globl	Get_Hdr                         # -- Begin function Get_Hdr
	.p2align	5
	.type	Get_Hdr,@function
Get_Hdr:                                # @Get_Hdr
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
	pcalau12i	$a0, %got_pc_hi20(ld)
	ld.d	$fp, $a0, %got_pc_lo12(ld)
	ori	$s0, $zero, 2096
	ori	$s1, $zero, 1
	ori	$s2, $zero, 438
	pcalau12i	$a0, %got_pc_hi20(horizontal_size)
	ld.d	$a0, $a0, %got_pc_lo12(horizontal_size)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(vertical_size)
	ld.d	$a0, $a0, %got_pc_lo12(vertical_size)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(aspect_ratio_information)
	ld.d	$a0, $a0, %got_pc_lo12(aspect_ratio_information)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(frame_rate_code)
	ld.d	$a0, $a0, %got_pc_lo12(frame_rate_code)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(bit_rate_value)
	ld.d	$s8, $a0, %got_pc_lo12(bit_rate_value)
	pcalau12i	$a0, %got_pc_hi20(vbv_buffer_size)
	ld.d	$s3, $a0, %got_pc_lo12(vbv_buffer_size)
	pcalau12i	$a0, %got_pc_hi20(constrained_parameters_flag)
	ld.d	$s4, $a0, %got_pc_lo12(constrained_parameters_flag)
	pcalau12i	$a0, %got_pc_hi20(default_intra_quantizer_matrix)
	ld.d	$s5, $a0, %got_pc_lo12(default_intra_quantizer_matrix)
	addi.d	$a0, $s5, 64
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s6, $zero, 64
	vrepli.w	$vr0, 16
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %group_of_pictures_header.exit
                                        #   in Loop: Header=BB0_2 Depth=1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(drop_flag)
	ld.d	$a1, $a1, %got_pc_lo12(drop_flag)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(hour)
	ld.d	$a1, $a1, %got_pc_lo12(hour)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 6
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(minute)
	ld.d	$a1, $a1, %got_pc_lo12(minute)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 6
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(sec)
	ld.d	$a1, $a1, %got_pc_lo12(sec)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 6
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(frame)
	ld.d	$a1, $a1, %got_pc_lo12(frame)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(closed_gop)
	ld.d	$a1, $a1, %got_pc_lo12(closed_gop)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(broken_link)
	ld.d	$a1, $a1, %got_pc_lo12(broken_link)
	st.w	$a0, $a1, 0
	pcaddu18i	$ra, %call36(extension_and_user_data)
	jirl	$ra, $ra, 0
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_23 Depth 2
	ld.d	$a0, $fp, 0
	ldx.wu	$a0, $a0, $s0
	andi	$a0, $a0, 7
	pcaddu18i	$ra, %call36(Flush_Buffer)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	beq	$a0, $s1, .LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %.lr.ph.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Flush_Buffer)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB0_3
.LBB0_4:                                # %next_start_code.exit
                                        #   in Loop: Header=BB0_2 Depth=1
	pcaddu18i	$ra, %call36(Get_Bits32)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	blt	$s2, $a0, .LBB0_9
# %bb.5:                                # %next_start_code.exit
                                        #   in Loop: Header=BB0_2 Depth=1
	ori	$a0, $zero, 435
	bne	$a2, $a0, .LBB0_12
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	ori	$a0, $zero, 12
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 12
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 18
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	st.w	$a0, $s8, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	st.w	$a0, $s3, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	st.w	$a0, $s4, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	stptr.w	$a0, $a1, 3128
	beqz	$a0, .LBB0_16
# %bb.7:                                # %.preheader24.i.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$s7, $zero
	.p2align	4, , 16
.LBB0_8:                                # %.preheader24.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	pcalau12i	$a2, %got_pc_hi20(scan)
	ld.d	$a2, $a2, %got_pc_lo12(scan)
	ldx.bu	$a2, $a2, $s7
	alsl.d	$a1, $a2, $a1, 2
	addi.d	$s7, $s7, 1
	stptr.w	$a0, $a1, 2104
	bne	$s7, $s6, .LBB0_8
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_9:                                # %next_start_code.exit
                                        #   in Loop: Header=BB0_2 Depth=1
	ori	$a0, $zero, 440
	bne	$a2, $a0, .LBB0_13
# %bb.10:                               #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(base)
	ld.d	$a1, $a1, %got_pc_lo12(base)
	bne	$a0, $a1, .LBB0_1
# %bb.11:                               #   in Loop: Header=BB0_2 Depth=1
	pcalau12i	$a0, %pc_hi20(True_Framenum_max)
	ld.w	$a0, $a0, %pc_lo12(True_Framenum_max)
	addi.d	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(Temporal_Reference_Base)
	st.w	$a0, $a1, %pc_lo12(Temporal_Reference_Base)
	pcalau12i	$a0, %pc_hi20(Temporal_Reference_GOP_Reset)
	st.b	$s1, $a0, %pc_lo12(Temporal_Reference_GOP_Reset)
	b	.LBB0_1
.LBB0_12:                               # %next_start_code.exit
                                        #   in Loop: Header=BB0_2 Depth=1
	ori	$a0, $zero, 256
	bne	$a2, $a0, .LBB0_14
	b	.LBB0_26
.LBB0_13:                               # %next_start_code.exit
                                        #   in Loop: Header=BB0_2 Depth=1
	ori	$a0, $zero, 439
	beq	$a2, $a0, .LBB0_35
.LBB0_14:                               #   in Loop: Header=BB0_2 Depth=1
	pcalau12i	$a0, %got_pc_hi20(Quiet_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Quiet_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_2
# %bb.15:                               #   in Loop: Header=BB0_2 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_2
.LBB0_16:                               # %.preheader22.i
                                        #   in Loop: Header=BB0_2 Depth=1
	addi.d	$a2, $a1, 2047
	addi.d	$a0, $a2, 57
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	bgeu	$a0, $a3, .LBB0_20
# %bb.17:                               # %.preheader22.i
                                        #   in Loop: Header=BB0_2 Depth=1
	addi.d	$a2, $a2, 313
	bgeu	$s5, $a2, .LBB0_20
# %bb.18:                               # %scalar.ph12.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$a1, $zero
	.p2align	4, , 16
.LBB0_19:                               # %scalar.ph12
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a2, $s5, $a1
	st.w	$a2, $a0, 0
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 4
	bne	$a1, $s6, .LBB0_19
	b	.LBB0_21
.LBB0_20:                               # %vector.body14
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.w	$a0, $s5, 0
	ld.w	$a2, $s5, 4
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr1, $a2, 0
	ld.w	$a0, $s5, 8
	vsllwil.hu.bu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	ori	$a2, $zero, 2104
	vstx	$vr0, $a1, $a2
	vinsgr2vr.w	$vr0, $a0, 0
	ld.w	$a0, $s5, 12
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	ori	$a2, $zero, 2120
	vstx	$vr1, $a1, $a2
	vinsgr2vr.w	$vr1, $a0, 0
	ld.w	$a0, $s5, 16
	vsllwil.hu.bu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	ori	$a2, $zero, 2136
	vstx	$vr0, $a1, $a2
	vinsgr2vr.w	$vr0, $a0, 0
	ld.w	$a0, $s5, 20
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	ori	$a2, $zero, 2152
	vstx	$vr1, $a1, $a2
	vinsgr2vr.w	$vr1, $a0, 0
	ld.w	$a0, $s5, 24
	vsllwil.hu.bu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	ori	$a2, $zero, 2168
	vstx	$vr0, $a1, $a2
	vinsgr2vr.w	$vr0, $a0, 0
	ld.w	$a0, $s5, 28
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	ori	$a2, $zero, 2184
	vstx	$vr1, $a1, $a2
	vinsgr2vr.w	$vr1, $a0, 0
	ld.w	$a0, $s5, 32
	vsllwil.hu.bu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	ori	$a2, $zero, 2200
	vstx	$vr0, $a1, $a2
	vinsgr2vr.w	$vr0, $a0, 0
	ld.w	$a0, $s5, 36
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	ori	$a2, $zero, 2216
	vstx	$vr1, $a1, $a2
	vinsgr2vr.w	$vr1, $a0, 0
	ld.w	$a0, $s5, 40
	vsllwil.hu.bu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	ori	$a2, $zero, 2232
	vstx	$vr0, $a1, $a2
	vinsgr2vr.w	$vr0, $a0, 0
	ld.w	$a0, $s5, 44
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	ori	$a2, $zero, 2248
	vstx	$vr1, $a1, $a2
	vinsgr2vr.w	$vr1, $a0, 0
	ld.w	$a0, $s5, 48
	vsllwil.hu.bu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	ori	$a2, $zero, 2264
	vstx	$vr0, $a1, $a2
	vinsgr2vr.w	$vr0, $a0, 0
	ld.w	$a0, $s5, 52
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	ori	$a2, $zero, 2280
	vstx	$vr1, $a1, $a2
	vinsgr2vr.w	$vr1, $a0, 0
	ld.w	$a0, $s5, 56
	vsllwil.hu.bu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	ori	$a2, $zero, 2296
	vstx	$vr0, $a1, $a2
	vinsgr2vr.w	$vr0, $a0, 0
	ld.w	$a0, $s5, 60
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	ori	$a2, $zero, 2312
	vstx	$vr1, $a1, $a2
	vinsgr2vr.w	$vr1, $a0, 0
	vsllwil.hu.bu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	ori	$a0, $zero, 2328
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2344
	vstx	$vr1, $a1, $a0
	.p2align	4, , 16
.LBB0_21:                               # %.loopexit23.i
                                        #   in Loop: Header=BB0_2 Depth=1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	stptr.w	$a0, $a1, 3132
	beqz	$a0, .LBB0_24
# %bb.22:                               # %.preheader20.i.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$s7, $zero
	.p2align	4, , 16
.LBB0_23:                               # %.preheader20.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	pcalau12i	$a2, %got_pc_hi20(scan)
	ld.d	$a2, $a2, %got_pc_lo12(scan)
	ldx.bu	$a2, $a2, $s7
	alsl.d	$a2, $a2, $a1, 2
	addi.d	$s7, $s7, 1
	stptr.w	$a0, $a2, 2360
	bne	$s7, $s6, .LBB0_23
	b	.LBB0_25
.LBB0_24:                               # %.preheader.i
                                        #   in Loop: Header=BB0_2 Depth=1
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	ori	$a0, $zero, 2360
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2376
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2392
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2408
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2424
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2440
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2456
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2472
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2488
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2504
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2520
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2536
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2552
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2568
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2584
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2600
	vstx	$vr0, $a1, $a0
.LBB0_25:                               # %vector.body
                                        #   in Loop: Header=BB0_2 Depth=1
	ori	$a0, $zero, 2104
	vldx	$vr0, $a1, $a0
	ori	$a0, $zero, 2120
	vldx	$vr1, $a1, $a0
	ori	$a0, $zero, 2360
	vldx	$vr2, $a1, $a0
	ori	$a0, $zero, 2376
	vldx	$vr3, $a1, $a0
	ori	$a0, $zero, 2616
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2632
	vstx	$vr1, $a1, $a0
	ori	$a0, $zero, 2872
	vstx	$vr2, $a1, $a0
	ori	$a0, $zero, 2888
	vstx	$vr3, $a1, $a0
	ori	$a0, $zero, 2136
	vldx	$vr0, $a1, $a0
	ori	$a0, $zero, 2152
	vldx	$vr1, $a1, $a0
	ori	$a0, $zero, 2392
	vldx	$vr2, $a1, $a0
	ori	$a0, $zero, 2408
	vldx	$vr3, $a1, $a0
	ori	$a0, $zero, 2648
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2664
	vstx	$vr1, $a1, $a0
	ori	$a0, $zero, 2904
	vstx	$vr2, $a1, $a0
	ori	$a0, $zero, 2920
	vstx	$vr3, $a1, $a0
	ori	$a0, $zero, 2168
	vldx	$vr0, $a1, $a0
	ori	$a0, $zero, 2184
	vldx	$vr1, $a1, $a0
	ori	$a0, $zero, 2424
	vldx	$vr2, $a1, $a0
	ori	$a0, $zero, 2440
	vldx	$vr3, $a1, $a0
	ori	$a0, $zero, 2680
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2696
	vstx	$vr1, $a1, $a0
	ori	$a0, $zero, 2936
	vstx	$vr2, $a1, $a0
	ori	$a0, $zero, 2952
	vstx	$vr3, $a1, $a0
	ori	$a0, $zero, 2200
	vldx	$vr0, $a1, $a0
	ori	$a0, $zero, 2216
	vldx	$vr1, $a1, $a0
	ori	$a0, $zero, 2456
	vldx	$vr2, $a1, $a0
	ori	$a0, $zero, 2472
	vldx	$vr3, $a1, $a0
	ori	$a0, $zero, 2712
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2728
	vstx	$vr1, $a1, $a0
	ori	$a0, $zero, 2968
	vstx	$vr2, $a1, $a0
	ori	$a0, $zero, 2984
	vstx	$vr3, $a1, $a0
	ori	$a0, $zero, 2232
	vldx	$vr0, $a1, $a0
	ori	$a0, $zero, 2248
	vldx	$vr1, $a1, $a0
	ori	$a0, $zero, 2488
	vldx	$vr2, $a1, $a0
	ori	$a0, $zero, 2504
	vldx	$vr3, $a1, $a0
	ori	$a0, $zero, 2744
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2760
	vstx	$vr1, $a1, $a0
	ori	$a0, $zero, 3000
	vstx	$vr2, $a1, $a0
	ori	$a0, $zero, 3016
	vstx	$vr3, $a1, $a0
	ori	$a0, $zero, 2264
	vldx	$vr0, $a1, $a0
	ori	$a0, $zero, 2280
	vldx	$vr1, $a1, $a0
	ori	$a0, $zero, 2520
	vldx	$vr2, $a1, $a0
	ori	$a0, $zero, 2536
	vldx	$vr3, $a1, $a0
	ori	$a0, $zero, 2776
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2792
	vstx	$vr1, $a1, $a0
	ori	$a0, $zero, 3032
	vstx	$vr2, $a1, $a0
	ori	$a0, $zero, 3048
	vstx	$vr3, $a1, $a0
	ori	$a0, $zero, 2296
	vldx	$vr0, $a1, $a0
	ori	$a0, $zero, 2312
	vldx	$vr1, $a1, $a0
	ori	$a0, $zero, 2552
	vldx	$vr2, $a1, $a0
	ori	$a0, $zero, 2568
	vldx	$vr3, $a1, $a0
	ori	$a0, $zero, 2808
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2824
	vstx	$vr1, $a1, $a0
	ori	$a0, $zero, 3064
	vstx	$vr2, $a1, $a0
	ori	$a0, $zero, 3080
	vstx	$vr3, $a1, $a0
	ori	$a0, $zero, 2328
	vldx	$vr0, $a1, $a0
	ori	$a0, $zero, 2344
	vldx	$vr1, $a1, $a0
	ori	$a0, $zero, 2584
	vldx	$vr2, $a1, $a0
	ori	$a0, $zero, 2600
	vldx	$vr3, $a1, $a0
	ori	$a0, $zero, 2840
	vstx	$vr0, $a1, $a0
	ori	$a0, $zero, 2856
	vstx	$vr1, $a1, $a0
	ori	$a0, $zero, 3096
	vstx	$vr2, $a1, $a0
	ori	$a0, $zero, 3112
	vstx	$vr3, $a1, $a0
	pcaddu18i	$ra, %call36(extension_and_user_data)
	jirl	$ra, $ra, 0
	b	.LBB0_2
.LBB0_26:
	ld.d	$a0, $fp, 0
	stptr.w	$zero, $a0, 3160
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(temporal_reference)
	ld.d	$s0, $a1, %got_pc_lo12(temporal_reference)
	st.w	$a0, $s0, 0
	ori	$a0, $zero, 3
	ori	$s2, $zero, 3
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(picture_coding_type)
	ld.d	$s1, $a1, %got_pc_lo12(picture_coding_type)
	st.w	$a0, $s1, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(vbv_delay)
	ld.d	$a1, $a1, %got_pc_lo12(vbv_delay)
	ld.wu	$a2, $s1, 0
	bstrpick.d	$a2, $a2, 31, 1
	slli.w	$a2, $a2, 1
	ori	$a3, $zero, 2
	st.w	$a0, $a1, 0
	bne	$a2, $a3, .LBB0_30
# %bb.27:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(full_pel_forward_vector)
	ld.d	$a1, $a1, %got_pc_lo12(full_pel_forward_vector)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(forward_f_code)
	ld.d	$a1, $a1, %got_pc_lo12(forward_f_code)
	ld.w	$a2, $s1, 0
	st.w	$a0, $a1, 0
	bne	$a2, $s2, .LBB0_30
# %bb.28:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(full_pel_backward_vector)
	ld.d	$a1, $a1, %got_pc_lo12(full_pel_backward_vector)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(backward_f_code)
	ld.d	$a1, $a1, %got_pc_lo12(backward_f_code)
	st.w	$a0, $a1, 0
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_29:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB0_30 Depth=1
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Flush_Buffer)
	jirl	$ra, $ra, 0
.LBB0_30:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(Get_Bits1)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_29
# %bb.31:                               # %extra_bit_information.exit.i
	pcaddu18i	$ra, %call36(extension_and_user_data)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 1
	pcalau12i	$a2, %got_pc_hi20(base)
	ld.d	$a2, $a2, %got_pc_lo12(base)
	bne	$a1, $a2, .LBB0_45
# %bb.32:
	ld.w	$a2, $s1, 0
	ld.w	$a1, $s0, 0
	ori	$a3, $zero, 3
	bne	$a2, $a3, .LBB0_36
# %bb.33:                               # %._crit_edge.i.i
	pcalau12i	$a2, %pc_hi20(Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap)
	ld.bu	$a3, $a2, %pc_lo12(Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap)
	pcalau12i	$a2, %pc_hi20(Temporal_Reference_Base)
	ld.w	$a2, $a2, %pc_lo12(Temporal_Reference_Base)
	add.w	$a2, $a2, $a1
	beqz	$a3, .LBB0_44
# %bb.34:                               # %._crit_edge.i.i
	pcalau12i	$a3, %pc_hi20(Update_Temporal_Reference_Tacking_Data.temporal_reference_old)
	ld.w	$a3, $a3, %pc_lo12(Update_Temporal_Reference_Tacking_Data.temporal_reference_old)
	bge	$a3, $a1, .LBB0_43
	b	.LBB0_44
.LBB0_35:                               # %picture_header.exit.loopexit
	move	$a0, $zero
	b	.LBB0_45
.LBB0_36:
	pcalau12i	$a2, %pc_hi20(Update_Temporal_Reference_Tacking_Data.temporal_reference_old)
	ld.w	$a5, $a2, %pc_lo12(Update_Temporal_Reference_Tacking_Data.temporal_reference_old)
	pcalau12i	$a3, %pc_hi20(Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap)
	ld.b	$a4, $a3, %pc_lo12(Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap)
	bne	$a1, $a5, .LBB0_38
# %bb.37:
	pcalau12i	$a2, %pc_hi20(Temporal_Reference_Base)
	ld.w	$a2, $a2, %pc_lo12(Temporal_Reference_Base)
	andi	$a3, $a4, 1
	add.w	$a2, $a2, $a1
	bnez	$a3, .LBB0_43
	b	.LBB0_44
.LBB0_38:
	andi	$a4, $a4, 1
	beqz	$a4, .LBB0_40
# %bb.39:
	pcalau12i	$a4, %pc_hi20(Temporal_Reference_Base)
	ld.w	$a6, $a4, %pc_lo12(Temporal_Reference_Base)
	addi.d	$a6, $a6, 1024
	st.w	$a6, $a4, %pc_lo12(Temporal_Reference_Base)
	st.b	$zero, $a3, %pc_lo12(Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap)
.LBB0_40:
	pcalau12i	$a4, %pc_hi20(Temporal_Reference_GOP_Reset)
	bge	$a1, $a5, .LBB0_46
# %bb.41:
	ld.b	$a5, $a4, %pc_lo12(Temporal_Reference_GOP_Reset)
	andi	$a5, $a5, 1
	bnez	$a5, .LBB0_46
# %bb.42:                               # %.thread.i.i
	ori	$a5, $zero, 1
	pcalau12i	$a6, %pc_hi20(Temporal_Reference_Base)
	ld.w	$a6, $a6, %pc_lo12(Temporal_Reference_Base)
	st.b	$a5, $a3, %pc_lo12(Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap)
	st.w	$a1, $a2, %pc_lo12(Update_Temporal_Reference_Tacking_Data.temporal_reference_old)
	st.b	$zero, $a4, %pc_lo12(Temporal_Reference_GOP_Reset)
	add.d	$a2, $a6, $a1
.LBB0_43:
	addi.w	$a2, $a2, 1024
.LBB0_44:
	pcalau12i	$a1, %got_pc_hi20(True_Framenum)
	ld.d	$a1, $a1, %got_pc_lo12(True_Framenum)
	pcalau12i	$a3, %pc_hi20(True_Framenum_max)
	ld.w	$a4, $a3, %pc_lo12(True_Framenum_max)
	st.w	$a2, $a1, 0
	slt	$a1, $a4, $a2
	masknez	$a4, $a4, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a4
	st.w	$a1, $a3, %pc_lo12(True_Framenum_max)
.LBB0_45:                               # %picture_header.exit
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
.LBB0_46:
	pcalau12i	$a3, %pc_hi20(Temporal_Reference_Base)
	ld.w	$a3, $a3, %pc_lo12(Temporal_Reference_Base)
	st.w	$a1, $a2, %pc_lo12(Update_Temporal_Reference_Tacking_Data.temporal_reference_old)
	st.b	$zero, $a4, %pc_lo12(Temporal_Reference_GOP_Reset)
	add.w	$a2, $a3, $a1
	b	.LBB0_44
.Lfunc_end0:
	.size	Get_Hdr, .Lfunc_end0-Get_Hdr
                                        # -- End function
	.globl	next_start_code                 # -- Begin function next_start_code
	.p2align	5
	.type	next_start_code,@function
next_start_code:                        # @next_start_code
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ld)
	ld.d	$a0, $a0, %got_pc_lo12(ld)
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2096
	ldx.wu	$a0, $a0, $a1
	andi	$a0, $a0, 7
	pcaddu18i	$ra, %call36(Flush_Buffer)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	beq	$a0, $fp, .LBB1_2
	.p2align	4, , 16
.LBB1_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Flush_Buffer)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_1
.LBB1_2:                                # %._crit_edge
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	next_start_code, .Lfunc_end1-next_start_code
                                        # -- End function
	.globl	slice_header                    # -- Begin function slice_header
	.p2align	5
	.type	slice_header,@function
slice_header:                           # @slice_header
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ld)
	ld.d	$s0, $a0, %got_pc_lo12(ld)
	ld.d	$a1, $s0, 0
	ldptr.w	$a0, $a1, 3144
	move	$fp, $zero
	beqz	$a0, .LBB2_3
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(vertical_size)
	ld.d	$a0, $a0, %got_pc_lo12(vertical_size)
	ld.w	$a0, $a0, 0
	ori	$a2, $zero, 2801
	blt	$a0, $a2, .LBB2_3
# %bb.2:
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	move	$fp, $a0
.LBB2_3:
	ldptr.w	$a0, $a1, 3148
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_5
# %bb.4:
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	stptr.w	$a0, $a1, 3164
.LBB2_5:
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ldptr.w	$a2, $a1, 3144
	beqz	$a2, .LBB2_8
# %bb.6:
	ldptr.w	$a2, $a1, 3152
	beqz	$a2, .LBB2_11
# %bb.7:
	pcalau12i	$a2, %got_pc_hi20(Non_Linear_quantizer_scale)
	ld.d	$a2, $a2, %got_pc_lo12(Non_Linear_quantizer_scale)
	ldx.bu	$a0, $a2, $a0
.LBB2_8:
	stptr.w	$a0, $a1, 3168
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_12
.LBB2_9:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	stptr.w	$a0, $a1, 3172
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 6
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Get_Bits1)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_13
	.p2align	4, , 16
.LBB2_10:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Flush_Buffer)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Get_Bits1)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_10
	b	.LBB2_13
.LBB2_11:
	slli.d	$a0, $a0, 1
	stptr.w	$a0, $a1, 3168
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_9
.LBB2_12:
	ld.d	$a0, $s0, 0
	stptr.w	$zero, $a0, 3172
.LBB2_13:                               # %extra_bit_information.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	slice_header, .Lfunc_end2-slice_header
                                        # -- End function
	.globl	marker_bit                      # -- Begin function marker_bit
	.p2align	5
	.type	marker_bit,@function
marker_bit:                             # @marker_bit
# %bb.0:
	ori	$a0, $zero, 1
	pcaddu18i	$t8, %call36(Get_Bits)
	jr	$t8
.Lfunc_end3:
	.size	marker_bit, .Lfunc_end3-marker_bit
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function extension_and_user_data
.LCPI4_0:
	.dword	0x4079000000000000              # double 400
	.text
	.p2align	5
	.type	extension_and_user_data,@function
extension_and_user_data:                # @extension_and_user_data
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
	pcalau12i	$a0, %got_pc_hi20(ld)
	ld.d	$s4, $a0, %got_pc_lo12(ld)
	ld.d	$a0, $s4, 0
	ori	$fp, $zero, 2096
	ldx.wu	$a0, $a0, $fp
	andi	$a0, $a0, 7
	pcaddu18i	$ra, %call36(Flush_Buffer)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	beq	$a0, $s6, .LBB4_2
	.p2align	4, , 16
.LBB4_1:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Flush_Buffer)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB4_1
.LBB4_2:                                # %next_start_code.exit.preheader
	ori	$s0, $zero, 434
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI4_0)
	addi.d	$a0, $a0, %pc_lo12(.LJTI4_0)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(layer_id)
	ld.d	$a0, $a0, %got_pc_lo12(layer_id)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(profile_and_level_indication)
	ld.d	$a0, $a0, %got_pc_lo12(profile_and_level_indication)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(progressive_sequence)
	ld.d	$a0, $a0, %got_pc_lo12(progressive_sequence)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(chroma_format)
	ld.d	$a0, $a0, %got_pc_lo12(chroma_format)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(low_delay)
	ld.d	$a0, $a0, %got_pc_lo12(low_delay)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(frame_rate_extension_n)
	ld.d	$a0, $a0, %got_pc_lo12(frame_rate_extension_n)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(frame_rate_extension_d)
	ld.d	$a0, $a0, %got_pc_lo12(frame_rate_extension_d)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(frame_rate_code)
	ld.d	$a0, $a0, %got_pc_lo12(frame_rate_code)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(frame_rate_Table)
	addi.d	$a0, $a0, %pc_lo12(frame_rate_Table)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(frame_rate)
	ld.d	$a0, $a0, %got_pc_lo12(frame_rate)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(profile)
	ld.d	$a0, $a0, %got_pc_lo12(profile)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(level)
	ld.d	$a0, $a0, %got_pc_lo12(level)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(horizontal_size)
	ld.d	$a0, $a0, %got_pc_lo12(horizontal_size)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(vertical_size)
	ld.d	$a0, $a0, %got_pc_lo12(vertical_size)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(bit_rate_value)
	ld.d	$a0, $a0, %got_pc_lo12(bit_rate_value)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s8, $zero, 64
	lu12i.w	$a0, 3
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB4_3:                                # %next_start_code.exit
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_50 Depth 2
                                        #     Child Loop BB4_24 Depth 2
                                        #     Child Loop BB4_27 Depth 2
                                        #     Child Loop BB4_30 Depth 2
                                        #     Child Loop BB4_33 Depth 2
                                        #     Child Loop BB4_52 Depth 2
                                        #     Child Loop BB4_10 Depth 2
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB4_9
# %bb.4:                                # %next_start_code.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	ori	$a1, $zero, 437
	bne	$a0, $a1, .LBB4_54
# %bb.5:                                #   in Loop: Header=BB4_3 Depth=1
	pcaddu18i	$ra, %call36(Flush_Buffer32)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.d	$a0, $a0, -1
	ori	$a1, $zero, 9
	bltu	$a1, $a0, .LBB4_53
# %bb.6:                                #   in Loop: Header=BB4_3 Depth=1
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB4_7:                                #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $s4, 0
	stptr.d	$s6, $a0, 3144
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	st.w	$a0, $fp, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 12
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $s5, 0
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.w	$a2, $s5, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	slli.d	$a1, $a1, 3
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	fldx.d	$fa0, $a3, $a1
	addi.w	$a1, $a2, 1
	addi.w	$a0, $a0, 1
	div.w	$a0, $a1, $a0
	movgr2fr.w	$fa1, $a0
	ld.w	$a1, $fp, 0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	fst.d	$fa0, $a0, 0
	andi	$a2, $a1, 128
	andi	$a0, $a1, 15
	bnez	$a2, .LBB4_41
# %bb.8:                                #   in Loop: Header=BB4_3 Depth=1
	srli.d	$a1, $a1, 4
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	b	.LBB4_43
	.p2align	4, , 16
.LBB4_9:                                #   in Loop: Header=BB4_3 Depth=1
	pcaddu18i	$ra, %call36(Flush_Buffer32)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ldx.wu	$a0, $a0, $fp
	andi	$a0, $a0, 7
	.p2align	4, , 16
.LBB4_10:                               # %.lr.ph.i.i
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(Flush_Buffer)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	beq	$a0, $s6, .LBB4_3
# %bb.11:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB4_10 Depth=2
	ori	$a0, $zero, 8
	b	.LBB4_10
.LBB4_12:                               #   in Loop: Header=BB4_3 Depth=1
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $a1, 3148
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	ldptr.w	$a1, $a1, 3148
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB4_14
# %bb.13:                               #   in Loop: Header=BB4_3 Depth=1
	ori	$a0, $zero, 14
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(lower_layer_prediction_horizontal_size)
	ld.d	$a1, $a1, %got_pc_lo12(lower_layer_prediction_horizontal_size)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 14
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(lower_layer_prediction_vertical_size)
	ld.d	$a1, $a1, %got_pc_lo12(lower_layer_prediction_vertical_size)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(horizontal_subsampling_factor_m)
	ld.d	$a1, $a1, %got_pc_lo12(horizontal_subsampling_factor_m)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(horizontal_subsampling_factor_n)
	ld.d	$a1, $a1, %got_pc_lo12(horizontal_subsampling_factor_n)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(vertical_subsampling_factor_m)
	ld.d	$a1, $a1, %got_pc_lo12(vertical_subsampling_factor_m)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(vertical_subsampling_factor_n)
	ld.d	$a2, $a1, %got_pc_lo12(vertical_subsampling_factor_n)
	ld.d	$a1, $s4, 0
	ori	$a3, $zero, 3148
	ldx.w	$a1, $a1, $a3
	st.w	$a0, $a2, 0
.LBB4_14:                               #   in Loop: Header=BB4_3 Depth=1
	ori	$a0, $zero, 4
	bne	$a1, $a0, .LBB4_51
# %bb.15:                               #   in Loop: Header=BB4_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB4_51
.LBB4_16:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $s4, 0
	stptr.w	$s6, $a0, 3160
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(lower_layer_temporal_reference)
	ld.d	$a1, $a1, %got_pc_lo12(lower_layer_temporal_reference)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 15
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	slt	$a1, $fp, $a0
	lu12i.w	$s0, -8
	add.d	$a2, $a0, $s0
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
	pcalau12i	$a1, %got_pc_hi20(lower_layer_horizontal_offset)
	ld.d	$a1, $a1, %got_pc_lo12(lower_layer_horizontal_offset)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 15
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	slt	$a1, $fp, $a0
	add.d	$a2, $a0, $s0
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
	pcalau12i	$a1, %got_pc_hi20(lower_layer_vertical_offset)
	ld.d	$a1, $a1, %got_pc_lo12(lower_layer_vertical_offset)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(spatial_temporal_weight_code_table_index)
	ld.d	$a1, $a1, %got_pc_lo12(spatial_temporal_weight_code_table_index)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(lower_layer_progressive_frame)
	ld.d	$a1, $a1, %got_pc_lo12(lower_layer_progressive_frame)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(lower_layer_deinterlaced_field_select)
	ld.d	$a1, $a1, %got_pc_lo12(lower_layer_deinterlaced_field_select)
	st.w	$a0, $a1, 0
	b	.LBB4_51
.LBB4_17:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $s4, 0
	ori	$a1, $zero, 2100
	ldx.w	$a0, $a0, $a1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(copyright_flag)
	ld.d	$s0, $a1, %got_pc_lo12(copyright_flag)
	st.w	$a0, $s0, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(copyright_identifier)
	ld.d	$s1, $a1, %got_pc_lo12(copyright_identifier)
	st.w	$a0, $s1, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(original_or_copy)
	ld.d	$s2, $a1, %got_pc_lo12(original_or_copy)
	st.w	$a0, $s2, 0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 20
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(copyright_number_1)
	ld.d	$s5, $a1, %got_pc_lo12(copyright_number_1)
	st.w	$a0, $s5, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 22
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(copyright_number_2)
	ld.d	$s7, $a1, %got_pc_lo12(copyright_number_2)
	st.w	$a0, $s7, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 22
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(copyright_number_3)
	ld.d	$s3, $a1, %got_pc_lo12(copyright_number_3)
	st.w	$a0, $s3, 0
	pcalau12i	$a0, %got_pc_hi20(Verbose_Flag)
	ld.d	$fp, $a0, %got_pc_lo12(Verbose_Flag)
	ld.w	$a0, $fp, 0
	blez	$a0, .LBB4_51
# %bb.18:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	srai.d	$a0, $a0, 3
	addi.d	$a1, $a0, -4
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB4_51
# %bb.19:                               #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a1, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB4_51
.LBB4_20:                               #   in Loop: Header=BB4_3 Depth=1
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(f_code)
	ld.d	$fp, $a1, %got_pc_lo12(f_code)
	st.w	$a0, $fp, 0
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 4
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 8
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 12
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(intra_dc_precision)
	ld.d	$a1, $a1, %got_pc_lo12(intra_dc_precision)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(picture_structure)
	ld.d	$a1, $a1, %got_pc_lo12(picture_structure)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(top_field_first)
	ld.d	$a1, $a1, %got_pc_lo12(top_field_first)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(frame_pred_frame_dct)
	ld.d	$a1, $a1, %got_pc_lo12(frame_pred_frame_dct)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(concealment_motion_vectors)
	ld.d	$a1, $a1, %got_pc_lo12(concealment_motion_vectors)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	stptr.w	$a0, $a1, 3152
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(intra_vlc_format)
	ld.d	$a1, $a1, %got_pc_lo12(intra_vlc_format)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	stptr.w	$a0, $a1, 3156
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(repeat_first_field)
	ld.d	$a1, $a1, %got_pc_lo12(repeat_first_field)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(chroma_420_type)
	ld.d	$a1, $a1, %got_pc_lo12(chroma_420_type)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(progressive_frame)
	ld.d	$a1, $a1, %got_pc_lo12(progressive_frame)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(composite_display_flag)
	ld.d	$a1, $a1, %got_pc_lo12(composite_display_flag)
	st.w	$a0, $a1, 0
	beqz	$a0, .LBB4_51
# %bb.21:                               #   in Loop: Header=BB4_3 Depth=1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(v_axis)
	ld.d	$a1, $a1, %got_pc_lo12(v_axis)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(field_sequence)
	ld.d	$a1, $a1, %got_pc_lo12(field_sequence)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(sub_carrier)
	ld.d	$a1, $a1, %got_pc_lo12(sub_carrier)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(burst_amplitude)
	ld.d	$a1, $a1, %got_pc_lo12(burst_amplitude)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(sub_carrier_phase)
	ld.d	$a1, $a1, %got_pc_lo12(sub_carrier_phase)
	st.w	$a0, $a1, 0
	b	.LBB4_51
.LBB4_22:                               #   in Loop: Header=BB4_3 Depth=1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	stptr.w	$a0, $a1, 3128
	beqz	$a0, .LBB4_25
# %bb.23:                               # %.preheader21.i.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	move	$s0, $zero
	.p2align	4, , 16
.LBB4_24:                               # %.preheader21.i
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	pcalau12i	$a2, %got_pc_hi20(scan)
	ld.d	$a2, $a2, %got_pc_lo12(scan)
	ldx.bu	$a3, $a2, $s0
	alsl.d	$a3, $a3, $a1, 2
	stptr.w	$a0, $a3, 2104
	ldx.bu	$a2, $a2, $s0
	alsl.d	$a1, $a2, $a1, 2
	addi.d	$s0, $s0, 1
	stptr.w	$a0, $a1, 2616
	bne	$s0, $s8, .LBB4_24
.LBB4_25:                               # %.loopexit22.i
                                        #   in Loop: Header=BB4_3 Depth=1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	stptr.w	$a0, $a1, 3132
	beqz	$a0, .LBB4_28
# %bb.26:                               # %.preheader19.i.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	move	$s0, $zero
	.p2align	4, , 16
.LBB4_27:                               # %.preheader19.i
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	pcalau12i	$a2, %got_pc_hi20(scan)
	ld.d	$a2, $a2, %got_pc_lo12(scan)
	ldx.bu	$a3, $a2, $s0
	alsl.d	$a3, $a3, $a1, 2
	stptr.w	$a0, $a3, 2360
	ldx.bu	$a2, $a2, $s0
	alsl.d	$a1, $a2, $a1, 2
	addi.d	$s0, $s0, 1
	stptr.w	$a0, $a1, 2872
	bne	$s0, $s8, .LBB4_27
.LBB4_28:                               # %.loopexit20.i
                                        #   in Loop: Header=BB4_3 Depth=1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	stptr.w	$a0, $a1, 3136
	beqz	$a0, .LBB4_31
# %bb.29:                               # %.preheader17.i.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	move	$s0, $zero
	.p2align	4, , 16
.LBB4_30:                               # %.preheader17.i
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	pcalau12i	$a2, %got_pc_hi20(scan)
	ld.d	$a2, $a2, %got_pc_lo12(scan)
	ldx.bu	$a2, $a2, $s0
	alsl.d	$a1, $a2, $a1, 2
	addi.d	$s0, $s0, 1
	stptr.w	$a0, $a1, 2616
	bne	$s0, $s8, .LBB4_30
.LBB4_31:                               # %.loopexit18.i
                                        #   in Loop: Header=BB4_3 Depth=1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	stptr.w	$a0, $a1, 3140
	beqz	$a0, .LBB4_51
# %bb.32:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	move	$s0, $zero
	.p2align	4, , 16
.LBB4_33:                               # %.preheader.i
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	pcalau12i	$a2, %got_pc_hi20(scan)
	ld.d	$a2, $a2, %got_pc_lo12(scan)
	ldx.bu	$a2, $a2, $s0
	alsl.d	$a1, $a2, $a1, 2
	addi.d	$s0, $s0, 1
	stptr.w	$a0, $a1, 2872
	bne	$s0, $s8, .LBB4_33
	b	.LBB4_51
.LBB4_34:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB4_45
# %bb.35:                               #   in Loop: Header=BB4_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(repeat_first_field)
	ld.d	$a0, $a0, %got_pc_lo12(repeat_first_field)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB4_48
# %bb.36:                               #   in Loop: Header=BB4_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(top_field_first)
	ld.d	$a0, $a0, %got_pc_lo12(top_field_first)
	b	.LBB4_47
.LBB4_37:                               #   in Loop: Header=BB4_3 Depth=1
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(video_format)
	ld.d	$a1, $a1, %got_pc_lo12(video_format)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(color_description)
	ld.d	$a1, $a1, %got_pc_lo12(color_description)
	st.w	$a0, $a1, 0
	beqz	$a0, .LBB4_39
# %bb.38:                               #   in Loop: Header=BB4_3 Depth=1
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(color_primaries)
	ld.d	$a1, $a1, %got_pc_lo12(color_primaries)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(transfer_characteristics)
	ld.d	$a1, $a1, %got_pc_lo12(transfer_characteristics)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(matrix_coefficients)
	ld.d	$a1, $a1, %got_pc_lo12(matrix_coefficients)
	st.w	$a0, $a1, 0
.LBB4_39:                               # %sequence_display_extension.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	ori	$a0, $zero, 14
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(display_horizontal_size)
	ld.d	$a1, $a1, %got_pc_lo12(display_horizontal_size)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 14
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(display_vertical_size)
	ld.d	$a1, $a1, %got_pc_lo12(display_vertical_size)
	st.w	$a0, $a1, 0
	b	.LBB4_51
.LBB4_40:                               #   in Loop: Header=BB4_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB4_51
.LBB4_41:                               #   in Loop: Header=BB4_3 Depth=1
	ori	$a1, $zero, 5
	bne	$a0, $a1, .LBB4_44
# %bb.42:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ori	$a1, $zero, 133
	st.w	$a1, $a0, 0
	ori	$a0, $zero, 8
.LBB4_43:                               # %.sink.split.i
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
.LBB4_44:                               # %sequence_extension.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.wu	$a0, $a2, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.wu	$a1, $a3, 0
	bstrins.d	$a0, $s2, 63, 12
	st.w	$a0, $a2, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a2, 0
	bstrins.d	$a1, $s1, 63, 12
	st.w	$a1, $a3, 0
	slli.d	$a1, $s3, 18
	add.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI4_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI4_0)
	st.w	$a0, $a2, 0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	pcalau12i	$a0, %got_pc_hi20(bit_rate)
	ld.d	$a0, $a0, %got_pc_lo12(bit_rate)
	fst.d	$fa0, $a0, 0
	slli.d	$a0, $s0, 10
	pcalau12i	$a1, %got_pc_hi20(vbv_buffer_size)
	ld.d	$a1, $a1, %got_pc_lo12(vbv_buffer_size)
	ld.w	$a2, $a1, 0
	add.d	$a0, $a2, $a0
	st.w	$a0, $a1, 0
	b	.LBB4_51
.LBB4_45:                               #   in Loop: Header=BB4_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(picture_structure)
	ld.d	$a0, $a0, %got_pc_lo12(picture_structure)
	ld.w	$a0, $a0, 0
	ori	$s0, $zero, 1
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB4_49
# %bb.46:                               #   in Loop: Header=BB4_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(repeat_first_field)
	ld.d	$a0, $a0, %got_pc_lo12(repeat_first_field)
.LBB4_47:                               #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $a0, 0
	sltui	$a0, $a0, 1
	xori	$s0, $a0, 3
	b	.LBB4_49
.LBB4_48:                               #   in Loop: Header=BB4_3 Depth=1
	ori	$s0, $zero, 1
.LBB4_49:                               #   in Loop: Header=BB4_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(frame_center_vertical_offset)
	ld.d	$s1, $a0, %got_pc_lo12(frame_center_vertical_offset)
	pcalau12i	$a0, %got_pc_hi20(frame_center_horizontal_offset)
	ld.d	$s2, $a0, %got_pc_lo12(frame_center_horizontal_offset)
	.p2align	4, , 16
.LBB4_50:                               #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	st.w	$a0, $s2, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 4
	bnez	$s0, .LBB4_50
	.p2align	4, , 16
.LBB4_51:                               # %quant_matrix_extension.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $s4, 0
	ori	$fp, $zero, 2096
	ldx.wu	$a0, $a0, $fp
	andi	$a0, $a0, 7
	pcaddu18i	$ra, %call36(Flush_Buffer)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 434
	beq	$a0, $s6, .LBB4_3
	.p2align	4, , 16
.LBB4_52:                               # %.lr.ph.i13
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Flush_Buffer)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB4_52
	b	.LBB4_3
.LBB4_53:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB4_51
.LBB4_54:
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
.Lfunc_end4:
	.size	extension_and_user_data, .Lfunc_end4-extension_and_user_data
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_7-.LJTI4_0
	.word	.LBB4_37-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_17-.LJTI4_0
	.word	.LBB4_12-.LJTI4_0
	.word	.LBB4_53-.LJTI4_0
	.word	.LBB4_34-.LJTI4_0
	.word	.LBB4_20-.LJTI4_0
	.word	.LBB4_16-.LJTI4_0
	.word	.LBB4_40-.LJTI4_0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Unexpected next_start_code %08x (ignored)\n"
	.size	.L.str, 43

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"reserved extension start code ID %d\n"
	.size	.L.str.2, 37

	.type	frame_rate_Table,@object        # @frame_rate_Table
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
frame_rate_Table:
	.dword	0x0000000000000000              # double 0
	.dword	0x4036fa1e2d85c116              # double 22.977022977022976
	.dword	0x4038000000000000              # double 24
	.dword	0x4039000000000000              # double 25
	.dword	0x403df853e2556b28              # double 29.970029970029969
	.dword	0x403e000000000000              # double 30
	.dword	0x4049000000000000              # double 50
	.dword	0x404df853e2556b28              # double 59.940059940059939
	.dword	0x404e000000000000              # double 60
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.size	frame_rate_Table, 128

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"temporal scalability not implemented\n"
	.size	.L.str.6, 38

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"temporal scalability not supported\n"
	.size	.L.str.11, 36

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"copyright_extension (byte %d)\n"
	.size	.L.str.15, 31

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"  copyright_flag =%d\n"
	.size	.L.str.16, 22

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"  copyright_identifier=%d\n"
	.size	.L.str.17, 27

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"  original_or_copy = %d (original=1, copy=0)\n"
	.size	.L.str.18, 46

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"  copyright_number_1=%d\n"
	.size	.L.str.19, 25

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"  copyright_number_2=%d\n"
	.size	.L.str.20, 25

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"  copyright_number_3=%d\n"
	.size	.L.str.21, 25

	.type	True_Framenum_max,@object       # @True_Framenum_max
	.data
	.p2align	2, 0x0
True_Framenum_max:
	.word	4294967295                      # 0xffffffff
	.size	True_Framenum_max, 4

	.type	Temporal_Reference_Base,@object # @Temporal_Reference_Base
	.local	Temporal_Reference_Base
	.comm	Temporal_Reference_Base,4,4
	.type	Temporal_Reference_GOP_Reset,@object # @Temporal_Reference_GOP_Reset
	.local	Temporal_Reference_GOP_Reset
	.comm	Temporal_Reference_GOP_Reset,1,4
	.type	Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap,@object # @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap
	.local	Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap
	.comm	Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap,1,4
	.type	Update_Temporal_Reference_Tacking_Data.temporal_reference_old,@object # @Update_Temporal_Reference_Tacking_Data.temporal_reference_old
	.local	Update_Temporal_Reference_Tacking_Data.temporal_reference_old
	.comm	Update_Temporal_Reference_Tacking_Data.temporal_reference_old,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base
