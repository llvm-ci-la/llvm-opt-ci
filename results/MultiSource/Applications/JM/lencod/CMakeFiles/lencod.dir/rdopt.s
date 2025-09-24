	.file	"rdopt.c"
	.text
	.globl	clear_rdopt                     # -- Begin function clear_rdopt
	.p2align	5
	.type	clear_rdopt,@function
clear_rdopt:                            # @clear_rdopt
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(cofDC)
	ld.d	$a0, $a0, %pc_lo12(cofDC)
	pcaddu18i	$ra, %call36(free_mem_DCcoeff)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(cofAC)
	ld.d	$a0, $a0, %pc_lo12(cofAC)
	pcaddu18i	$ra, %call36(free_mem_ACcoeff)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(cofAC8x8)
	ld.d	$a0, $a0, %pc_lo12(cofAC8x8)
	pcaddu18i	$ra, %call36(free_mem_ACcoeff)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(cofAC4x4intern)
	ld.d	$a0, $a0, %pc_lo12(cofAC4x4intern)
	pcaddu18i	$ra, %call36(free_mem_ACcoeff)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$fp, $a0, %got_pc_lo12(input)
	ld.d	$a0, $fp, 0
	ldptr.w	$a1, $a0, 5100
	beqz	$a1, .LBB0_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(cofAC_8x8ts)
	ld.d	$a0, $a0, %pc_lo12(cofAC_8x8ts)
	pcaddu18i	$ra, %call36(free_mem_ACcoeff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
.LBB0_2:
	ldptr.w	$a0, $a0, 5652
	beqz	$a0, .LBB0_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(bestInterFAdjust4x4)
	ld.d	$a0, $a0, %pc_lo12(bestInterFAdjust4x4)
	pcaddu18i	$ra, %call36(free_mem2Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(bestIntraFAdjust4x4)
	ld.d	$a0, $a0, %pc_lo12(bestIntraFAdjust4x4)
	pcaddu18i	$ra, %call36(free_mem2Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(bestInterFAdjust8x8)
	ld.d	$a0, $a0, %pc_lo12(bestInterFAdjust8x8)
	pcaddu18i	$ra, %call36(free_mem2Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(bestIntraFAdjust8x8)
	ld.d	$a0, $a0, %pc_lo12(bestIntraFAdjust8x8)
	pcaddu18i	$ra, %call36(free_mem2Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(bestInterFAdjust4x4Cr)
	ld.d	$a0, $a0, %pc_lo12(bestInterFAdjust4x4Cr)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem3Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(bestIntraFAdjust4x4Cr)
	ld.d	$a0, $a0, %pc_lo12(bestIntraFAdjust4x4Cr)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem3Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(fadjust8x8)
	ld.d	$a0, $a0, %pc_lo12(fadjust8x8)
	pcaddu18i	$ra, %call36(free_mem2Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(fadjust4x4)
	ld.d	$a0, $a0, %pc_lo12(fadjust4x4)
	pcaddu18i	$ra, %call36(free_mem2Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(fadjust4x4Cr)
	ld.d	$a0, $a0, %pc_lo12(fadjust4x4Cr)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem3Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(fadjust8x8Cr)
	ld.d	$a0, $a0, %pc_lo12(fadjust8x8Cr)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(free_mem3Dint)
	jirl	$ra, $ra, 0
.LBB0_4:
	pcalau12i	$a0, %pc_hi20(cs_mb)
	ld.d	$a0, $a0, %pc_lo12(cs_mb)
	pcaddu18i	$ra, %call36(delete_coding_state)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(cs_b8)
	ld.d	$a0, $a0, %pc_lo12(cs_b8)
	pcaddu18i	$ra, %call36(delete_coding_state)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(cs_cm)
	ld.d	$a0, $a0, %pc_lo12(cs_cm)
	pcaddu18i	$ra, %call36(delete_coding_state)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(cs_imb)
	ld.d	$a0, $a0, %pc_lo12(cs_imb)
	pcaddu18i	$ra, %call36(delete_coding_state)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(cs_ib8)
	ld.d	$a0, $a0, %pc_lo12(cs_ib8)
	pcaddu18i	$ra, %call36(delete_coding_state)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(cs_ib4)
	ld.d	$a0, $a0, %pc_lo12(cs_ib4)
	pcaddu18i	$ra, %call36(delete_coding_state)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(cs_pc)
	ld.d	$a0, $a0, %pc_lo12(cs_pc)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(delete_coding_state)
	jr	$t8
.Lfunc_end0:
	.size	clear_rdopt, .Lfunc_end0-clear_rdopt
                                        # -- End function
	.globl	init_rdopt                      # -- Begin function init_rdopt
	.p2align	5
	.type	init_rdopt,@function
init_rdopt:                             # @init_rdopt
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(rdopt)
	st.d	$zero, $a0, %pc_lo12(rdopt)
	pcalau12i	$a0, %pc_hi20(cofDC)
	addi.d	$a0, $a0, %pc_lo12(cofDC)
	pcaddu18i	$ra, %call36(get_mem_DCcoeff)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(cofAC)
	addi.d	$a0, $a0, %pc_lo12(cofAC)
	pcaddu18i	$ra, %call36(get_mem_ACcoeff)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(cofAC8x8)
	addi.d	$a0, $a0, %pc_lo12(cofAC8x8)
	pcaddu18i	$ra, %call36(get_mem_ACcoeff)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(cofAC4x4intern)
	addi.d	$fp, $a0, %pc_lo12(cofAC4x4intern)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(get_mem_ACcoeff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(cofAC4x4)
	st.d	$a0, $a1, %pc_lo12(cofAC4x4)
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$fp, $a0, %got_pc_lo12(input)
	ld.d	$a0, $fp, 0
	ldptr.w	$a1, $a0, 5100
	beqz	$a1, .LBB1_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(cofAC_8x8ts)
	addi.d	$a0, $a0, %pc_lo12(cofAC_8x8ts)
	pcaddu18i	$ra, %call36(get_mem_ACcoeff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
.LBB1_2:
	ldptr.w	$a1, $a0, 4168
	ori	$a2, $zero, 3
	bltu	$a2, $a1, .LBB1_4
# %bb.3:                                # %switch.lookup
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(.Lswitch.table.init_rdopt)
	addi.d	$a2, $a2, %pc_lo12(.Lswitch.table.init_rdopt)
	ldx.d	$a1, $a2, $a1
	b	.LBB1_5
.LBB1_4:
	pcalau12i	$a1, %got_pc_hi20(encode_one_macroblock_high)
	ld.d	$a1, $a1, %got_pc_lo12(encode_one_macroblock_high)
.LBB1_5:
	ldptr.w	$a0, $a0, 5652
	pcalau12i	$a2, %pc_hi20(encode_one_macroblock)
	st.d	$a1, $a2, %pc_lo12(encode_one_macroblock)
	beqz	$a0, .LBB1_7
# %bb.6:
	pcalau12i	$a0, %pc_hi20(bestInterFAdjust4x4)
	addi.d	$a0, $a0, %pc_lo12(bestInterFAdjust4x4)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(get_mem2Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(bestIntraFAdjust4x4)
	addi.d	$a0, $a0, %pc_lo12(bestIntraFAdjust4x4)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(get_mem2Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(bestInterFAdjust8x8)
	addi.d	$a0, $a0, %pc_lo12(bestInterFAdjust8x8)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(get_mem2Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(bestIntraFAdjust8x8)
	addi.d	$a0, $a0, %pc_lo12(bestIntraFAdjust8x8)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(get_mem2Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s0, 0
	ldptr.w	$a2, $a0, 15548
	ldptr.w	$a3, $a0, 15544
	pcalau12i	$a0, %pc_hi20(bestInterFAdjust4x4Cr)
	addi.d	$a0, $a0, %pc_lo12(bestInterFAdjust4x4Cr)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(get_mem3Dint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ldptr.w	$a2, $a0, 15548
	ldptr.w	$a3, $a0, 15544
	pcalau12i	$a0, %pc_hi20(bestIntraFAdjust4x4Cr)
	addi.d	$a0, $a0, %pc_lo12(bestIntraFAdjust4x4Cr)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(get_mem3Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(fadjust8x8)
	addi.d	$a0, $a0, %pc_lo12(fadjust8x8)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(get_mem2Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(fadjust4x4)
	addi.d	$a0, $a0, %pc_lo12(fadjust4x4)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(get_mem2Dint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ldptr.w	$a2, $a0, 15548
	ldptr.w	$a3, $a0, 15544
	pcalau12i	$a0, %pc_hi20(fadjust4x4Cr)
	addi.d	$a0, $a0, %pc_lo12(fadjust4x4Cr)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(get_mem3Dint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ldptr.w	$a2, $a0, 15548
	ldptr.w	$a3, $a0, 15544
	pcalau12i	$a0, %pc_hi20(fadjust8x8Cr)
	addi.d	$a0, $a0, %pc_lo12(fadjust8x8Cr)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(get_mem3Dint)
	jirl	$ra, $ra, 0
.LBB1_7:
	pcaddu18i	$ra, %call36(create_coding_state)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(cs_mb)
	st.d	$a0, $a1, %pc_lo12(cs_mb)
	pcaddu18i	$ra, %call36(create_coding_state)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(cs_b8)
	st.d	$a0, $a1, %pc_lo12(cs_b8)
	pcaddu18i	$ra, %call36(create_coding_state)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(cs_cm)
	st.d	$a0, $a1, %pc_lo12(cs_cm)
	pcaddu18i	$ra, %call36(create_coding_state)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(cs_imb)
	st.d	$a0, $a1, %pc_lo12(cs_imb)
	pcaddu18i	$ra, %call36(create_coding_state)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(cs_ib8)
	st.d	$a0, $a1, %pc_lo12(cs_ib8)
	pcaddu18i	$ra, %call36(create_coding_state)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(cs_ib4)
	st.d	$a0, $a1, %pc_lo12(cs_ib4)
	pcaddu18i	$ra, %call36(create_coding_state)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ldptr.w	$a1, $a1, 4172
	pcalau12i	$a2, %pc_hi20(cs_pc)
	ori	$a3, $zero, 1
	st.d	$a0, $a2, %pc_lo12(cs_pc)
	bne	$a1, $a3, .LBB1_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(mb16x16_cost)
	lu52i.d	$a1, $zero, 1032
	st.d	$a1, $a0, %pc_lo12(mb16x16_cost)
	pcalau12i	$a0, %pc_hi20(lambda_mf_factor)
	lu52i.d	$a1, $zero, 1023
	st.d	$a1, $a0, %pc_lo12(lambda_mf_factor)
.LBB1_9:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	init_rdopt, .Lfunc_end1-init_rdopt
                                        # -- End function
	.globl	UpdatePixelMap                  # -- Begin function UpdatePixelMap
	.p2align	5
	.type	UpdatePixelMap,@function
UpdatePixelMap:                         # @UpdatePixelMap
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$t4, $a0, 0
	ld.w	$a1, $t4, 20
	ld.w	$a2, $t4, 68
	ori	$a3, $zero, 2
	bne	$a1, $a3, .LBB2_7
# %bb.1:                                # %.preheader41
	blez	$a2, .LBB2_18
# %bb.2:                                # %.preheader.preheader
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(pixel_map)
	ori	$a3, $zero, 1
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_3:                                # %._crit_edge59
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a4, $t4, 68
	addi.d	$a1, $a1, 1
	bge	$a1, $a4, .LBB2_18
.LBB2_4:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	ld.w	$a4, $t4, 52
	blez	$a4, .LBB2_3
# %bb.5:                                # %.lr.ph58.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a4, $zero
	slli.d	$a5, $a1, 3
	.p2align	4, , 16
.LBB2_6:                                # %.lr.ph58
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a2, %pc_lo12(pixel_map)
	ldx.d	$a6, $a6, $a5
	stx.b	$a3, $a6, $a4
	ld.d	$t4, $a0, 0
	ld.w	$a6, $t4, 52
	addi.d	$a4, $a4, 1
	blt	$a4, $a6, .LBB2_6
	b	.LBB2_3
.LBB2_7:                                # %.preheader49
	ori	$a1, $zero, 8
	blt	$a2, $a1, .LBB2_18
# %bb.8:                                # %.preheader48.preheader
	pcalau12i	$a2, %pc_hi20(refresh_map)
	pcalau12i	$a3, %pc_hi20(pixel_map)
	pcalau12i	$a4, %got_pc_hi20(input)
	ld.d	$a4, $a4, %got_pc_lo12(input)
	move	$a5, $zero
	move	$a6, $zero
	ori	$a7, $zero, 64
	ori	$t0, $zero, 1
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_9:                                # %._crit_edge
                                        #   in Loop: Header=BB2_10 Depth=1
	ld.w	$t1, $t4, 68
	addi.d	$a6, $a6, 1
	srai.d	$t1, $t1, 3
	addi.d	$a5, $a5, 64
	bge	$a6, $t1, .LBB2_18
.LBB2_10:                               # %.preheader48
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
                                        #       Child Loop BB2_15 Depth 3
                                        #       Child Loop BB2_17 Depth 3
	ld.w	$t1, $t4, 52
	blt	$t1, $a1, .LBB2_9
# %bb.11:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB2_10 Depth=1
	move	$t1, $zero
	move	$t2, $zero
	slli.d	$t3, $a6, 3
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_12:                               # %.loopexit45
                                        #   in Loop: Header=BB2_13 Depth=2
	ld.d	$t4, $a0, 0
	ld.w	$t5, $t4, 52
	addi.d	$t1, $t1, 1
	srai.d	$t5, $t5, 3
	addi.d	$t2, $t2, 8
	bge	$t1, $t5, .LBB2_9
.LBB2_13:                               # %.lr.ph
                                        #   Parent Loop BB2_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_15 Depth 3
                                        #       Child Loop BB2_17 Depth 3
	ld.d	$t4, $a2, %pc_lo12(refresh_map)
	ldx.d	$t4, $t4, $t3
	ldx.bu	$t4, $t4, $t1
	beqz	$t4, .LBB2_16
# %bb.14:                               # %.preheader43.preheader
                                        #   in Loop: Header=BB2_13 Depth=2
	move	$t4, $zero
	.p2align	4, , 16
.LBB2_15:                               # %.preheader43
                                        #   Parent Loop BB2_10 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t5, $a3, %pc_lo12(pixel_map)
	add.d	$t5, $t5, $a5
	ldx.d	$t5, $t5, $t4
	stx.b	$t0, $t5, $t2
	ld.d	$t5, $a3, %pc_lo12(pixel_map)
	add.d	$t5, $t5, $a5
	ldx.d	$t5, $t5, $t4
	add.d	$t5, $t5, $t2
	st.b	$t0, $t5, 1
	ld.d	$t5, $a3, %pc_lo12(pixel_map)
	add.d	$t5, $t5, $a5
	ldx.d	$t5, $t5, $t4
	add.d	$t5, $t5, $t2
	st.b	$t0, $t5, 2
	ld.d	$t5, $a3, %pc_lo12(pixel_map)
	add.d	$t5, $t5, $a5
	ldx.d	$t5, $t5, $t4
	add.d	$t5, $t5, $t2
	st.b	$t0, $t5, 3
	ld.d	$t5, $a3, %pc_lo12(pixel_map)
	add.d	$t5, $t5, $a5
	ldx.d	$t5, $t5, $t4
	add.d	$t5, $t5, $t2
	st.b	$t0, $t5, 4
	ld.d	$t5, $a3, %pc_lo12(pixel_map)
	add.d	$t5, $t5, $a5
	ldx.d	$t5, $t5, $t4
	add.d	$t5, $t5, $t2
	st.b	$t0, $t5, 5
	ld.d	$t5, $a3, %pc_lo12(pixel_map)
	add.d	$t5, $t5, $a5
	ldx.d	$t5, $t5, $t4
	add.d	$t5, $t5, $t2
	st.b	$t0, $t5, 6
	ld.d	$t5, $a3, %pc_lo12(pixel_map)
	add.d	$t5, $t5, $a5
	ldx.d	$t5, $t5, $t4
	add.d	$t5, $t5, $t2
	addi.d	$t4, $t4, 8
	st.b	$t0, $t5, 7
	bne	$t4, $a7, .LBB2_15
	b	.LBB2_12
	.p2align	4, , 16
.LBB2_16:                               # %.preheader42.preheader
                                        #   in Loop: Header=BB2_13 Depth=2
	move	$t4, $zero
	.p2align	4, , 16
.LBB2_17:                               # %.preheader42
                                        #   Parent Loop BB2_10 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t5, $a3, %pc_lo12(pixel_map)
	add.d	$t5, $t5, $a5
	ldx.d	$t5, $t5, $t4
	ld.d	$t6, $a4, 0
	ldx.bu	$t7, $t5, $t2
	ld.w	$t6, $t6, 32
	slt	$t8, $t7, $t6
	maskeqz	$t7, $t7, $t8
	masknez	$t6, $t6, $t8
	or	$t6, $t7, $t6
	addi.d	$t6, $t6, 1
	stx.b	$t6, $t5, $t2
	ld.d	$t5, $a3, %pc_lo12(pixel_map)
	add.d	$t5, $t5, $a5
	ldx.d	$t5, $t5, $t4
	ld.d	$t6, $a4, 0
	add.d	$t5, $t5, $t2
	ld.bu	$t7, $t5, 1
	ld.w	$t6, $t6, 32
	slt	$t8, $t7, $t6
	maskeqz	$t7, $t7, $t8
	masknez	$t6, $t6, $t8
	or	$t6, $t7, $t6
	addi.d	$t6, $t6, 1
	st.b	$t6, $t5, 1
	ld.d	$t5, $a3, %pc_lo12(pixel_map)
	add.d	$t5, $t5, $a5
	ldx.d	$t5, $t5, $t4
	ld.d	$t6, $a4, 0
	add.d	$t5, $t5, $t2
	ld.bu	$t7, $t5, 2
	ld.w	$t6, $t6, 32
	slt	$t8, $t7, $t6
	maskeqz	$t7, $t7, $t8
	masknez	$t6, $t6, $t8
	or	$t6, $t7, $t6
	addi.d	$t6, $t6, 1
	st.b	$t6, $t5, 2
	ld.d	$t5, $a3, %pc_lo12(pixel_map)
	add.d	$t5, $t5, $a5
	ldx.d	$t5, $t5, $t4
	ld.d	$t6, $a4, 0
	add.d	$t5, $t5, $t2
	ld.bu	$t7, $t5, 3
	ld.w	$t6, $t6, 32
	slt	$t8, $t7, $t6
	maskeqz	$t7, $t7, $t8
	masknez	$t6, $t6, $t8
	or	$t6, $t7, $t6
	addi.d	$t6, $t6, 1
	st.b	$t6, $t5, 3
	ld.d	$t5, $a3, %pc_lo12(pixel_map)
	add.d	$t5, $t5, $a5
	ldx.d	$t5, $t5, $t4
	ld.d	$t6, $a4, 0
	add.d	$t5, $t5, $t2
	ld.bu	$t7, $t5, 4
	ld.w	$t6, $t6, 32
	slt	$t8, $t7, $t6
	maskeqz	$t7, $t7, $t8
	masknez	$t6, $t6, $t8
	or	$t6, $t7, $t6
	addi.d	$t6, $t6, 1
	st.b	$t6, $t5, 4
	ld.d	$t5, $a3, %pc_lo12(pixel_map)
	add.d	$t5, $t5, $a5
	ldx.d	$t5, $t5, $t4
	ld.d	$t6, $a4, 0
	add.d	$t5, $t5, $t2
	ld.bu	$t7, $t5, 5
	ld.w	$t6, $t6, 32
	slt	$t8, $t7, $t6
	maskeqz	$t7, $t7, $t8
	masknez	$t6, $t6, $t8
	or	$t6, $t7, $t6
	addi.d	$t6, $t6, 1
	st.b	$t6, $t5, 5
	ld.d	$t5, $a3, %pc_lo12(pixel_map)
	add.d	$t5, $t5, $a5
	ldx.d	$t5, $t5, $t4
	ld.d	$t6, $a4, 0
	add.d	$t5, $t5, $t2
	ld.bu	$t7, $t5, 6
	ld.w	$t6, $t6, 32
	slt	$t8, $t7, $t6
	maskeqz	$t7, $t7, $t8
	masknez	$t6, $t6, $t8
	or	$t6, $t7, $t6
	addi.d	$t6, $t6, 1
	st.b	$t6, $t5, 6
	ld.d	$t5, $a3, %pc_lo12(pixel_map)
	add.d	$t5, $t5, $a5
	ldx.d	$t5, $t5, $t4
	ld.d	$t6, $a4, 0
	add.d	$t5, $t5, $t2
	ld.bu	$t7, $t5, 7
	ld.w	$t6, $t6, 32
	slt	$t8, $t7, $t6
	maskeqz	$t7, $t7, $t8
	masknez	$t6, $t6, $t8
	or	$t6, $t7, $t6
	addi.d	$t6, $t6, 1
	addi.d	$t4, $t4, 8
	st.b	$t6, $t5, 7
	bne	$t4, $a7, .LBB2_17
	b	.LBB2_12
.LBB2_18:                               # %.loopexit
	ret
.Lfunc_end2:
	.size	UpdatePixelMap, .Lfunc_end2-UpdatePixelMap
                                        # -- End function
	.globl	CheckReliabilityOfRef           # -- Begin function CheckReliabilityOfRef
	.p2align	5
	.type	CheckReliabilityOfRef,@function
CheckReliabilityOfRef:                  # @CheckReliabilityOfRef
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$a4, $a4, %got_pc_lo12(img)
	ld.d	$a7, $a4, 0
	ld.w	$a4, $a7, 52
	ld.w	$a5, $a7, 68
	addi.w	$a4, $a4, -1
	addi.w	$a5, $a5, -1
	ori	$a6, $zero, 3
	slt	$t0, $a6, $a3
	addi.d	$a6, $a3, -2
	sltui	$t1, $a6, 1
	slli.w	$t2, $a0, 1
	bstrins.d	$a0, $zero, 0, 0
	maskeqz	$a6, $t2, $t1
	masknez	$a6, $a6, $t0
	maskeqz	$a0, $a0, $t0
	or	$a0, $a0, $a6
	ori	$s8, $zero, 4
	masknez	$t3, $s8, $t1
	ori	$a6, $zero, 2
	maskeqz	$t1, $a6, $t1
	or	$t1, $t1, $t3
	masknez	$t1, $t1, $t0
	maskeqz	$t3, $a6, $t0
	or	$t1, $t3, $t1
	add.w	$ra, $a0, $t1
	andi	$t1, $t2, 2
	addi.d	$t3, $a3, -3
	sltui	$t3, $t3, 1
	maskeqz	$t2, $t2, $t3
	masknez	$t2, $t2, $t0
	maskeqz	$t0, $t1, $t0
	or	$t0, $t0, $t2
	slt	$t1, $a6, $a3
	masknez	$t2, $s8, $t1
	maskeqz	$t1, $a6, $t1
	or	$t1, $t1, $t2
	add.w	$t7, $t0, $t1
	ldptr.d	$t1, $a7, 14384
	ld.w	$t2, $a7, 172
	ld.w	$s1, $a7, 168
	pcalau12i	$a7, %pc_hi20(pixel_map)
	ld.d	$t5, $a7, %pc_lo12(pixel_map)
	addi.w	$t6, $a0, 0
	vinsgr2vr.w	$vr0, $a5, 0
	vinsgr2vr.w	$vr0, $a5, 1
	slli.d	$a1, $a1, 3
	slli.d	$s2, $a2, 3
	slli.d	$s0, $a3, 3
	addi.w	$t8, $zero, -1
	addi.w	$fp, $zero, -2
	ori	$a3, $zero, 1
	vrepli.d	$vr1, -2
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	st.d	$t2, $sp, 88                    # 8-byte Folded Spill
.LBB3_1:                                # %.preheader230
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_2 Depth 2
                                        #       Child Loop BB3_141 Depth 3
                                        #         Child Loop BB3_142 Depth 4
                                        #       Child Loop BB3_101 Depth 3
                                        #         Child Loop BB3_102 Depth 4
                                        #       Child Loop BB3_24 Depth 3
                                        #         Child Loop BB3_25 Depth 4
                                        #       Child Loop BB3_74 Depth 3
                                        #       Child Loop BB3_64 Depth 3
                                        #         Child Loop BB3_65 Depth 4
	slli.d	$a0, $t6, 3
	ldx.d	$s7, $t1, $a0
	add.d	$a0, $t2, $t6
	slli.d	$t3, $a0, 4
	move	$s3, $t0
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$t3, $sp, 104                   # 8-byte Folded Spill
.LBB3_2:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_141 Depth 3
                                        #         Child Loop BB3_142 Depth 4
                                        #       Child Loop BB3_101 Depth 3
                                        #         Child Loop BB3_102 Depth 4
                                        #       Child Loop BB3_24 Depth 3
                                        #         Child Loop BB3_25 Depth 4
                                        #       Child Loop BB3_74 Depth 3
                                        #       Child Loop BB3_64 Depth 3
                                        #         Child Loop BB3_65 Depth 4
	slli.d	$a0, $s3, 3
	ldx.d	$a0, $s7, $a0
	ldx.d	$a0, $a0, $a1
	ldx.d	$a0, $a0, $s2
	ldx.d	$a0, $a0, $s0
	ld.hu	$a7, $a0, 2
	ld.h	$t1, $a0, 0
	bstrpick.d	$a0, $a7, 15, 2
	slli.d	$a0, $a0, 2
	ext.w.h	$a0, $a0
	add.w	$a0, $t3, $a0
	srai.d	$s4, $a0, 2
	bstrpick.d	$a0, $t1, 15, 2
	slli.d	$a0, $a0, 2
	ext.w.h	$a0, $a0
	add.d	$t2, $s1, $s3
	alsl.w	$t2, $t2, $a0, 4
	andi	$a0, $a7, 3
	andi	$s6, $t1, 3
	or	$a7, $a0, $s6
	srai.d	$t4, $t2, 2
	bnez	$a7, .LBB3_20
# %bb.3:                                # %.preheader218
                                        #   in Loop: Header=BB3_2 Depth=2
	srai.d	$a0, $t4, 63
	andn	$a0, $t4, $a0
	srai.d	$a7, $s4, 63
	andn	$a7, $s4, $a7
	slt	$t1, $a7, $a5
	maskeqz	$a7, $a7, $t1
	masknez	$t1, $a5, $t1
	or	$a7, $a7, $t1
	slt	$t1, $a0, $a4
	slli.d	$a7, $a7, 3
	ldx.d	$s5, $t5, $a7
	maskeqz	$a0, $a0, $t1
	masknez	$a7, $a4, $t1
	or	$a7, $a0, $a7
	ldx.bu	$a0, $s5, $a7
	bge	$a2, $a0, .LBB3_158
# %bb.4:                                #   in Loop: Header=BB3_2 Depth=2
	slt	$a0, $t8, $t4
	masknez	$t1, $t8, $a0
	maskeqz	$a0, $t4, $a0
	or	$a0, $a0, $t1
	addi.d	$a0, $a0, 1
	slt	$t1, $a0, $a4
	maskeqz	$a0, $a0, $t1
	masknez	$t1, $a4, $t1
	or	$a0, $a0, $t1
	ldx.bu	$t1, $s5, $a0
	bge	$a2, $t1, .LBB3_158
# %bb.5:                                #   in Loop: Header=BB3_2 Depth=2
	slt	$t1, $fp, $t4
	masknez	$t2, $fp, $t1
	maskeqz	$t1, $t4, $t1
	or	$t1, $t1, $t2
	addi.d	$t1, $t1, 2
	slt	$t2, $t1, $a4
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a4, $t2
	or	$t1, $t1, $t2
	ldx.bu	$t2, $s5, $t1
	bge	$a2, $t2, .LBB3_158
# %bb.6:                                #   in Loop: Header=BB3_2 Depth=2
	addi.w	$t3, $zero, -3
	slt	$t2, $t3, $t4
	masknez	$s6, $t3, $t2
	maskeqz	$t2, $t4, $t2
	or	$t2, $t2, $s6
	addi.d	$t2, $t2, 3
	slt	$t4, $t2, $a4
	maskeqz	$t2, $t2, $t4
	masknez	$t4, $a4, $t4
	or	$t2, $t2, $t4
	ldx.bu	$t4, $s5, $t2
	bge	$a2, $t4, .LBB3_158
# %bb.7:                                # %.preheader212.1
                                        #   in Loop: Header=BB3_2 Depth=2
	slt	$t4, $t8, $s4
	masknez	$s5, $t8, $t4
	maskeqz	$t4, $s4, $t4
	or	$t4, $t4, $s5
	addi.d	$t4, $t4, 1
	slt	$s5, $t4, $a5
	maskeqz	$t4, $t4, $s5
	masknez	$s5, $a5, $s5
	or	$t4, $t4, $s5
	slli.d	$t4, $t4, 3
	ldx.d	$t4, $t5, $t4
	ldx.bu	$s5, $t4, $a7
	bge	$a2, $s5, .LBB3_158
# %bb.8:                                #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$s5, $t4, $a0
	bge	$a2, $s5, .LBB3_158
# %bb.9:                                #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$s5, $t4, $t1
	bge	$a2, $s5, .LBB3_158
# %bb.10:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$t4, $t4, $t2
	bge	$a2, $t4, .LBB3_158
# %bb.11:                               # %.preheader212.2
                                        #   in Loop: Header=BB3_2 Depth=2
	slt	$t4, $fp, $s4
	masknez	$s5, $fp, $t4
	maskeqz	$t4, $s4, $t4
	or	$t4, $t4, $s5
	addi.d	$t4, $t4, 2
	slt	$s5, $t4, $a5
	maskeqz	$t4, $t4, $s5
	masknez	$s5, $a5, $s5
	or	$t4, $t4, $s5
	slli.d	$t4, $t4, 3
	ldx.d	$t4, $t5, $t4
	ldx.bu	$s5, $t4, $a7
	bge	$a2, $s5, .LBB3_158
# %bb.12:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$s5, $t4, $a0
	bge	$a2, $s5, .LBB3_158
# %bb.13:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$s5, $t4, $t1
	bge	$a2, $s5, .LBB3_158
# %bb.14:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$t4, $t4, $t2
	bge	$a2, $t4, .LBB3_158
# %bb.15:                               # %.preheader212.3
                                        #   in Loop: Header=BB3_2 Depth=2
	slt	$t4, $t3, $s4
	masknez	$t3, $t3, $t4
	maskeqz	$t4, $s4, $t4
	or	$t3, $t4, $t3
	addi.d	$t3, $t3, 3
	slt	$t4, $t3, $a5
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a5, $t4
	or	$t3, $t3, $t4
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $t5, $t3
	ldx.bu	$a7, $t3, $a7
	bge	$a2, $a7, .LBB3_158
# %bb.16:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a0, $t3, $a0
	bge	$a2, $a0, .LBB3_158
# %bb.17:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a0, $t3, $t1
	bge	$a2, $a0, .LBB3_158
# %bb.18:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a0, $t3, $t2
	bge	$a2, $a0, .LBB3_158
.LBB3_19:                               # %.loopexit219
                                        #   in Loop: Header=BB3_2 Depth=2
	addi.d	$s3, $s3, 1
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	blt	$s3, $t7, .LBB3_2
	b	.LBB3_156
	.p2align	4, , 16
.LBB3_20:                               #   in Loop: Header=BB3_2 Depth=2
	beqz	$a0, .LBB3_63
# %bb.21:                               #   in Loop: Header=BB3_2 Depth=2
	beqz	$s6, .LBB3_73
# %bb.22:                               #   in Loop: Header=BB3_2 Depth=2
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	bne	$s6, $a6, .LBB3_99
# %bb.23:                               # %.preheader224
                                        #   in Loop: Header=BB3_2 Depth=2
	addi.d	$a0, $s4, 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
.LBB3_24:                               # %.preheader215
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_25 Depth 4
	move	$a3, $a1
	move	$s8, $zero
	addi.w	$s7, $s4, 0
	vinsgr2vr.w	$vr2, $s4, 0
	vinsgr2vr.w	$vr2, $s4, 1
	ori	$a0, $zero, 2
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr3, $a0
	vmax.w	$vr3, $vr2, $vr3
	vadd.w	$vr3, $vr3, $vr1
	vmin.w	$vr3, $vr3, $vr0
	vpickve2gr.w	$a0, $vr3, 0
	slli.d	$a0, $a0, 3
	ldx.d	$ra, $t5, $a0
	vpickve2gr.w	$a0, $vr3, 1
	alsl.d	$a0, $a0, $t5, 3
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	srai.d	$a0, $s7, 63
	andn	$a0, $s7, $a0
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	alsl.d	$a0, $a0, $t5, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.w	$s4, $s4, 1
	srai.d	$a0, $s4, 63
	andn	$a0, $s4, $a0
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	alsl.d	$a0, $a0, $t5, 3
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$a0, $fp
	lu32i.d	$a0, -3
	vreplgr2vr.d	$vr3, $a0
	vmax.w	$vr2, $vr2, $vr3
	ori	$a0, $zero, 2
	lu32i.d	$a0, 3
	vreplgr2vr.d	$vr3, $a0
	vadd.w	$vr2, $vr2, $vr3
	vmin.w	$vr2, $vr2, $vr0
	vpickve2gr.w	$a0, $vr2, 0
	alsl.d	$a0, $a0, $t5, 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	vpickve2gr.w	$a0, $vr2, 1
	alsl.d	$a0, $a0, $t5, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
.LBB3_25:                               # %.preheader207
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_2 Depth=2
                                        #       Parent Loop BB3_24 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$a0, $t4, $s8
	slt	$a1, $a6, $a0
	maskeqz	$a7, $a0, $a1
	masknez	$a1, $a6, $a1
	or	$a1, $a7, $a1
	addi.w	$a1, $a1, -2
	slt	$a7, $a1, $a4
	maskeqz	$a1, $a1, $a7
	masknez	$a7, $a4, $a7
	or	$t1, $a1, $a7
	ldx.bu	$a1, $ra, $t1
	bge	$a2, $a1, .LBB3_158
# %bb.26:                               #   in Loop: Header=BB3_25 Depth=4
	ori	$a7, $zero, 1
	slt	$a1, $a7, $a0
	masknez	$a7, $a7, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a7
	addi.d	$a1, $a1, -1
	slt	$a7, $a1, $a4
	maskeqz	$a1, $a1, $a7
	masknez	$a7, $a4, $a7
	or	$t2, $a1, $a7
	ldx.bu	$a1, $ra, $t2
	bge	$a2, $a1, .LBB3_158
# %bb.27:                               #   in Loop: Header=BB3_25 Depth=4
	srai.d	$a1, $a0, 63
	andn	$a1, $a0, $a1
	slt	$a7, $a1, $a4
	maskeqz	$a1, $a1, $a7
	masknez	$a7, $a4, $a7
	or	$t3, $a1, $a7
	ldx.bu	$a1, $ra, $t3
	bge	$a2, $a1, .LBB3_158
# %bb.28:                               #   in Loop: Header=BB3_25 Depth=4
	addi.w	$a1, $a0, 1
	srai.d	$a7, $a1, 63
	andn	$a1, $a1, $a7
	slt	$a7, $a1, $a4
	maskeqz	$a1, $a1, $a7
	masknez	$a7, $a4, $a7
	or	$a7, $a1, $a7
	ldx.bu	$a1, $ra, $a7
	bge	$a2, $a1, .LBB3_158
# %bb.29:                               #   in Loop: Header=BB3_25 Depth=4
	slt	$a1, $fp, $a0
	masknez	$s5, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $s5
	addi.w	$a1, $a1, 2
	slt	$s5, $a1, $a4
	maskeqz	$a1, $a1, $s5
	masknez	$s5, $a4, $s5
	or	$s6, $a1, $s5
	ldx.bu	$a1, $ra, $s6
	bge	$a2, $a1, .LBB3_158
# %bb.30:                               #   in Loop: Header=BB3_25 Depth=4
	addi.w	$a1, $zero, -3
	slt	$s5, $a1, $a0
	masknez	$a1, $a1, $s5
	maskeqz	$a0, $a0, $s5
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 3
	slt	$a1, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a4, $a1
	or	$a0, $a0, $a1
	ldx.bu	$a1, $ra, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.31:                               #   in Loop: Header=BB3_25 Depth=4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s5, $a1, 0
	ldx.bu	$a1, $s5, $t1
	bge	$a2, $a1, .LBB3_158
# %bb.32:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $t2
	bge	$a2, $a1, .LBB3_158
# %bb.33:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $t3
	bge	$a2, $a1, .LBB3_158
# %bb.34:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $a7
	bge	$a2, $a1, .LBB3_158
# %bb.35:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $s6
	bge	$a2, $a1, .LBB3_158
# %bb.36:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.37:                               #   in Loop: Header=BB3_25 Depth=4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $a1, 0
	ldx.bu	$a1, $s5, $t1
	bge	$a2, $a1, .LBB3_158
# %bb.38:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $t2
	bge	$a2, $a1, .LBB3_158
# %bb.39:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $t3
	bge	$a2, $a1, .LBB3_158
# %bb.40:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $a7
	bge	$a2, $a1, .LBB3_158
# %bb.41:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $s6
	bge	$a2, $a1, .LBB3_158
# %bb.42:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.43:                               #   in Loop: Header=BB3_25 Depth=4
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $a1, 0
	ldx.bu	$a1, $s5, $t1
	bge	$a2, $a1, .LBB3_158
# %bb.44:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $t2
	bge	$a2, $a1, .LBB3_158
# %bb.45:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $t3
	bge	$a2, $a1, .LBB3_158
# %bb.46:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $a7
	bge	$a2, $a1, .LBB3_158
# %bb.47:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $s6
	bge	$a2, $a1, .LBB3_158
# %bb.48:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.49:                               #   in Loop: Header=BB3_25 Depth=4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s5, $a1, 0
	ldx.bu	$a1, $s5, $t1
	bge	$a2, $a1, .LBB3_158
# %bb.50:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $t2
	bge	$a2, $a1, .LBB3_158
# %bb.51:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $t3
	bge	$a2, $a1, .LBB3_158
# %bb.52:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $a7
	bge	$a2, $a1, .LBB3_158
# %bb.53:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $s6
	bge	$a2, $a1, .LBB3_158
# %bb.54:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.55:                               #   in Loop: Header=BB3_25 Depth=4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $a1, 0
	ldx.bu	$a1, $s5, $t1
	bge	$a2, $a1, .LBB3_158
# %bb.56:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $t2
	bge	$a2, $a1, .LBB3_158
# %bb.57:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $t3
	bge	$a2, $a1, .LBB3_158
# %bb.58:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $a7
	bge	$a2, $a1, .LBB3_158
# %bb.59:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a1, $s5, $s6
	bge	$a2, $a1, .LBB3_158
# %bb.60:                               #   in Loop: Header=BB3_25 Depth=4
	ldx.bu	$a0, $s5, $a0
	bge	$a2, $a0, .LBB3_158
# %bb.61:                               #   in Loop: Header=BB3_25 Depth=4
	addi.w	$s8, $s8, 1
	ori	$a0, $zero, 4
	bne	$s8, $a0, .LBB3_25
# %bb.62:                               #   in Loop: Header=BB3_24 Depth=3
	ori	$s8, $zero, 4
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $a3
	ori	$a3, $zero, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bne	$s7, $a0, .LBB3_24
	b	.LBB3_19
.LBB3_63:                               # %.preheader220
                                        #   in Loop: Header=BB3_2 Depth=2
	addi.d	$a0, $s4, 3
.LBB3_64:                               #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_65 Depth 4
	addi.w	$a7, $s4, 0
	srai.d	$t1, $a7, 63
	andn	$t1, $a7, $t1
	slt	$t2, $t1, $a5
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a5, $t2
	or	$t1, $t1, $t2
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $t5, $t1
	move	$t2, $zero
	.p2align	4, , 16
.LBB3_65:                               # %.preheader
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_2 Depth=2
                                        #       Parent Loop BB3_64 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$t3, $t4, $t2
	slt	$s5, $a6, $t3
	maskeqz	$s6, $t3, $s5
	masknez	$s5, $a6, $s5
	or	$s5, $s6, $s5
	addi.w	$s5, $s5, -2
	slt	$s6, $s5, $a4
	maskeqz	$s5, $s5, $s6
	masknez	$s6, $a4, $s6
	or	$s5, $s5, $s6
	ldx.bu	$s5, $t1, $s5
	bge	$a2, $s5, .LBB3_158
# %bb.66:                               #   in Loop: Header=BB3_65 Depth=4
	slt	$s5, $a3, $t3
	masknez	$s6, $a3, $s5
	maskeqz	$s5, $t3, $s5
	or	$s5, $s5, $s6
	addi.d	$s5, $s5, -1
	slt	$s6, $s5, $a4
	maskeqz	$s5, $s5, $s6
	masknez	$s6, $a4, $s6
	or	$s5, $s5, $s6
	ldx.bu	$s5, $t1, $s5
	bge	$a2, $s5, .LBB3_158
# %bb.67:                               #   in Loop: Header=BB3_65 Depth=4
	srai.d	$s5, $t3, 63
	andn	$s5, $t3, $s5
	slt	$s6, $s5, $a4
	maskeqz	$s5, $s5, $s6
	masknez	$s6, $a4, $s6
	or	$s5, $s5, $s6
	ldx.bu	$s5, $t1, $s5
	bge	$a2, $s5, .LBB3_158
# %bb.68:                               #   in Loop: Header=BB3_65 Depth=4
	addi.w	$s5, $t3, 1
	srai.d	$s6, $s5, 63
	andn	$s5, $s5, $s6
	slt	$s6, $s5, $a4
	maskeqz	$s5, $s5, $s6
	masknez	$s6, $a4, $s6
	or	$s5, $s5, $s6
	ldx.bu	$s5, $t1, $s5
	bge	$a2, $s5, .LBB3_158
# %bb.69:                               #   in Loop: Header=BB3_65 Depth=4
	slt	$s5, $fp, $t3
	masknez	$s6, $fp, $s5
	maskeqz	$s5, $t3, $s5
	or	$s5, $s5, $s6
	addi.w	$s5, $s5, 2
	slt	$s6, $s5, $a4
	maskeqz	$s5, $s5, $s6
	masknez	$s6, $a4, $s6
	or	$s5, $s5, $s6
	ldx.bu	$s5, $t1, $s5
	bge	$a2, $s5, .LBB3_158
# %bb.70:                               #   in Loop: Header=BB3_65 Depth=4
	addi.w	$s5, $zero, -3
	slt	$s6, $s5, $t3
	masknez	$s5, $s5, $s6
	maskeqz	$t3, $t3, $s6
	or	$t3, $t3, $s5
	addi.w	$t3, $t3, 3
	slt	$s5, $t3, $a4
	maskeqz	$t3, $t3, $s5
	masknez	$s5, $a4, $s5
	or	$t3, $t3, $s5
	ldx.bu	$t3, $t1, $t3
	bge	$a2, $t3, .LBB3_158
# %bb.71:                               #   in Loop: Header=BB3_65 Depth=4
	addi.w	$t2, $t2, 1
	bne	$t2, $s8, .LBB3_65
# %bb.72:                               #   in Loop: Header=BB3_64 Depth=3
	addi.d	$s4, $s4, 1
	bne	$a7, $a0, .LBB3_64
	b	.LBB3_19
.LBB3_73:                               # %.preheader222
                                        #   in Loop: Header=BB3_2 Depth=2
	move	$a7, $zero
	srai.d	$a0, $t4, 63
	andn	$a0, $t4, $a0
	slt	$t1, $a0, $a4
	maskeqz	$a0, $a0, $t1
	masknez	$t1, $a4, $t1
	or	$t1, $a0, $t1
	slt	$a0, $t8, $t4
	masknez	$t2, $t8, $a0
	maskeqz	$a0, $t4, $a0
	or	$a0, $a0, $t2
	addi.d	$a0, $a0, 1
	slt	$t2, $a0, $a4
	maskeqz	$a0, $a0, $t2
	masknez	$t2, $a4, $t2
	or	$s6, $a0, $t2
	slt	$a0, $fp, $t4
	masknez	$t2, $fp, $a0
	maskeqz	$a0, $t4, $a0
	or	$a0, $a0, $t2
	addi.d	$a0, $a0, 2
	slt	$t2, $a0, $a4
	maskeqz	$a0, $a0, $t2
	masknez	$t2, $a4, $t2
	or	$s7, $a0, $t2
	addi.w	$a0, $zero, -3
	slt	$t2, $a0, $t4
	masknez	$a0, $a0, $t2
	maskeqz	$t2, $t4, $t2
	or	$a0, $t2, $a0
	addi.d	$a0, $a0, 3
	slt	$t2, $a0, $a4
	maskeqz	$a0, $a0, $t2
	masknez	$t2, $a4, $t2
	or	$s5, $a0, $t2
.LBB3_74:                               # %.preheader214
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$t4, $s4, $a7
	vinsgr2vr.w	$vr2, $t4, 0
	vinsgr2vr.w	$vr2, $t4, 1
	ori	$a0, $zero, 2
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr3, $a0
	vmax.w	$vr3, $vr2, $vr3
	vadd.w	$vr3, $vr3, $vr1
	vmin.w	$vr3, $vr3, $vr0
	vpickve2gr.w	$a0, $vr3, 0
	slli.d	$a0, $a0, 3
	ldx.d	$t2, $t5, $a0
	ldx.bu	$a0, $t2, $t1
	bge	$a2, $a0, .LBB3_158
# %bb.75:                               #   in Loop: Header=BB3_74 Depth=3
	vpickve2gr.w	$a0, $vr3, 1
	alsl.d	$t3, $a0, $t5, 3
	ld.d	$a0, $t3, 0
	ldx.bu	$a0, $a0, $t1
	bge	$a2, $a0, .LBB3_158
# %bb.76:                               #   in Loop: Header=BB3_74 Depth=3
	srai.d	$a0, $t4, 63
	andn	$a0, $t4, $a0
	slt	$s8, $a0, $a5
	maskeqz	$a0, $a0, $s8
	masknez	$s8, $a5, $s8
	or	$a0, $a0, $s8
	alsl.d	$a0, $a0, $t5, 3
	ld.d	$s8, $a0, 0
	ldx.bu	$s8, $s8, $t1
	bge	$a2, $s8, .LBB3_158
# %bb.77:                               #   in Loop: Header=BB3_74 Depth=3
	addi.w	$t4, $t4, 1
	srai.d	$s8, $t4, 63
	andn	$t4, $t4, $s8
	slt	$s8, $t4, $a5
	maskeqz	$t4, $t4, $s8
	masknez	$s8, $a5, $s8
	or	$t4, $t4, $s8
	alsl.d	$s8, $t4, $t5, 3
	ld.d	$t4, $s8, 0
	ldx.bu	$t4, $t4, $t1
	bge	$a2, $t4, .LBB3_158
# %bb.78:                               #   in Loop: Header=BB3_74 Depth=3
	move	$a3, $t7
	move	$t7, $ra
	move	$t4, $fp
	lu32i.d	$t4, -3
	vreplgr2vr.d	$vr3, $t4
	vmax.w	$vr2, $vr2, $vr3
	ori	$t4, $zero, 2
	lu32i.d	$t4, 3
	vreplgr2vr.d	$vr3, $t4
	vadd.w	$vr2, $vr2, $vr3
	vmin.w	$vr2, $vr2, $vr0
	vpickve2gr.w	$t4, $vr2, 0
	alsl.d	$t4, $t4, $t5, 3
	ld.d	$ra, $t4, 0
	ldx.bu	$ra, $ra, $t1
	bge	$a2, $ra, .LBB3_158
# %bb.79:                               #   in Loop: Header=BB3_74 Depth=3
	move	$a6, $t8
	move	$t8, $t6
	move	$t6, $t0
	move	$t0, $s0
	move	$s0, $s2
	move	$s2, $a1
	vpickve2gr.w	$ra, $vr2, 1
	alsl.d	$ra, $ra, $t5, 3
	ld.d	$a1, $ra, 0
	ldx.bu	$a1, $a1, $t1
	bge	$a2, $a1, .LBB3_158
# %bb.80:                               #   in Loop: Header=BB3_74 Depth=3
	ldx.bu	$a1, $t2, $s6
	bge	$a2, $a1, .LBB3_158
# %bb.81:                               #   in Loop: Header=BB3_74 Depth=3
	ld.d	$a1, $t3, 0
	ldx.bu	$a1, $a1, $s6
	bge	$a2, $a1, .LBB3_158
# %bb.82:                               #   in Loop: Header=BB3_74 Depth=3
	ld.d	$a1, $a0, 0
	ldx.bu	$a1, $a1, $s6
	bge	$a2, $a1, .LBB3_158
# %bb.83:                               #   in Loop: Header=BB3_74 Depth=3
	ld.d	$a1, $s8, 0
	ldx.bu	$a1, $a1, $s6
	bge	$a2, $a1, .LBB3_158
# %bb.84:                               #   in Loop: Header=BB3_74 Depth=3
	ld.d	$a1, $t4, 0
	ldx.bu	$a1, $a1, $s6
	bge	$a2, $a1, .LBB3_158
# %bb.85:                               #   in Loop: Header=BB3_74 Depth=3
	ld.d	$a1, $ra, 0
	ldx.bu	$a1, $a1, $s6
	bge	$a2, $a1, .LBB3_158
# %bb.86:                               #   in Loop: Header=BB3_74 Depth=3
	ldx.bu	$a1, $t2, $s7
	bge	$a2, $a1, .LBB3_158
# %bb.87:                               #   in Loop: Header=BB3_74 Depth=3
	ld.d	$a1, $t3, 0
	ldx.bu	$a1, $a1, $s7
	bge	$a2, $a1, .LBB3_158
# %bb.88:                               #   in Loop: Header=BB3_74 Depth=3
	ld.d	$a1, $a0, 0
	ldx.bu	$a1, $a1, $s7
	bge	$a2, $a1, .LBB3_158
# %bb.89:                               #   in Loop: Header=BB3_74 Depth=3
	ld.d	$a1, $s8, 0
	ldx.bu	$a1, $a1, $s7
	bge	$a2, $a1, .LBB3_158
# %bb.90:                               #   in Loop: Header=BB3_74 Depth=3
	ld.d	$a1, $t4, 0
	ldx.bu	$a1, $a1, $s7
	bge	$a2, $a1, .LBB3_158
# %bb.91:                               #   in Loop: Header=BB3_74 Depth=3
	ld.d	$a1, $ra, 0
	ldx.bu	$a1, $a1, $s7
	bge	$a2, $a1, .LBB3_158
# %bb.92:                               #   in Loop: Header=BB3_74 Depth=3
	ldx.bu	$a1, $t2, $s5
	bge	$a2, $a1, .LBB3_158
# %bb.93:                               #   in Loop: Header=BB3_74 Depth=3
	ld.d	$a1, $t3, 0
	ldx.bu	$a1, $a1, $s5
	bge	$a2, $a1, .LBB3_158
# %bb.94:                               #   in Loop: Header=BB3_74 Depth=3
	ld.d	$a0, $a0, 0
	ldx.bu	$a0, $a0, $s5
	bge	$a2, $a0, .LBB3_158
# %bb.95:                               #   in Loop: Header=BB3_74 Depth=3
	ld.d	$a0, $s8, 0
	ldx.bu	$a0, $a0, $s5
	bge	$a2, $a0, .LBB3_158
# %bb.96:                               #   in Loop: Header=BB3_74 Depth=3
	ld.d	$a0, $t4, 0
	ldx.bu	$a0, $a0, $s5
	bge	$a2, $a0, .LBB3_158
# %bb.97:                               #   in Loop: Header=BB3_74 Depth=3
	ld.d	$a0, $ra, 0
	ldx.bu	$a0, $a0, $s5
	bge	$a2, $a0, .LBB3_158
# %bb.98:                               #   in Loop: Header=BB3_74 Depth=3
	addi.w	$a7, $a7, 1
	ori	$s8, $zero, 4
	move	$ra, $t7
	move	$t7, $a3
	move	$a1, $s2
	move	$s2, $s0
	move	$s0, $t0
	move	$t0, $t6
	move	$t6, $t8
	move	$t8, $a6
	ori	$a6, $zero, 2
	ori	$a3, $zero, 1
	bne	$a7, $s8, .LBB3_74
	b	.LBB3_19
.LBB3_99:                               #   in Loop: Header=BB3_2 Depth=2
	bne	$a0, $a6, .LBB3_140
# %bb.100:                              # %.preheader226
                                        #   in Loop: Header=BB3_2 Depth=2
	addi.d	$a0, $s4, 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$t7, $sp, 8                     # 8-byte Folded Spill
.LBB3_101:                              # %.preheader216
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_102 Depth 4
	move	$t7, $zero
	addi.w	$a1, $s4, 0
	vinsgr2vr.w	$vr2, $s4, 0
	vinsgr2vr.w	$vr2, $s4, 1
	ori	$a0, $zero, 2
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr3, $a0
	vmax.w	$vr3, $vr2, $vr3
	vadd.w	$vr3, $vr3, $vr1
	vmin.w	$vr3, $vr3, $vr0
	vpickve2gr.w	$a0, $vr3, 0
	slli.d	$a0, $a0, 3
	ldx.d	$ra, $t5, $a0
	vpickve2gr.w	$a0, $vr3, 1
	alsl.d	$a3, $a0, $t5, 3
	srai.d	$a0, $a1, 63
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	andn	$a0, $a1, $a0
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	alsl.d	$s5, $a0, $t5, 3
	addi.w	$s4, $s4, 1
	srai.d	$a0, $s4, 63
	andn	$a0, $s4, $a0
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	alsl.d	$s8, $a0, $t5, 3
	move	$a0, $fp
	lu32i.d	$a0, -3
	vreplgr2vr.d	$vr3, $a0
	vmax.w	$vr2, $vr2, $vr3
	ori	$a0, $zero, 2
	lu32i.d	$a0, 3
	vreplgr2vr.d	$vr3, $a0
	vadd.w	$vr2, $vr2, $vr3
	vmin.w	$vr2, $vr2, $vr0
	vpickve2gr.w	$a0, $vr2, 0
	alsl.d	$t3, $a0, $t5, 3
	vpickve2gr.w	$a0, $vr2, 1
	alsl.d	$a0, $a0, $t5, 3
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$t3, $sp, 64                    # 8-byte Folded Spill
.LBB3_102:                              # %.preheader208
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_2 Depth=2
                                        #       Parent Loop BB3_101 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$t1, $t4, $t7
	slt	$a0, $a6, $t1
	maskeqz	$a1, $t1, $a0
	masknez	$a0, $a6, $a0
	or	$a0, $a1, $a0
	addi.w	$a0, $a0, -2
	slt	$a1, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a4, $a1
	or	$a0, $a0, $a1
	ldx.bu	$a1, $ra, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.103:                              #   in Loop: Header=BB3_102 Depth=4
	ld.d	$a7, $a3, 0
	ldx.bu	$a1, $a7, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.104:                              #   in Loop: Header=BB3_102 Depth=4
	ld.d	$s6, $s5, 0
	ldx.bu	$a1, $s6, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.105:                              #   in Loop: Header=BB3_102 Depth=4
	ld.d	$s7, $s8, 0
	ldx.bu	$a1, $s7, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.106:                              #   in Loop: Header=BB3_102 Depth=4
	ld.d	$t2, $t3, 0
	ldx.bu	$a1, $t2, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.107:                              #   in Loop: Header=BB3_102 Depth=4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t3, $a1, 0
	ldx.bu	$a0, $t3, $a0
	bge	$a2, $a0, .LBB3_158
# %bb.108:                              #   in Loop: Header=BB3_102 Depth=4
	ori	$a1, $zero, 1
	slt	$a0, $a1, $t1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $t1, $a0
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, -1
	slt	$a1, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a4, $a1
	or	$a0, $a0, $a1
	ldx.bu	$a1, $ra, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.109:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a1, $a7, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.110:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a1, $s6, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.111:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a1, $s7, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.112:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a1, $t2, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.113:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a0, $t3, $a0
	bge	$a2, $a0, .LBB3_158
# %bb.114:                              #   in Loop: Header=BB3_102 Depth=4
	srai.d	$a0, $t1, 63
	andn	$a0, $t1, $a0
	slt	$a1, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a4, $a1
	or	$a0, $a0, $a1
	ldx.bu	$a1, $ra, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.115:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a1, $a7, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.116:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a1, $s6, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.117:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a1, $s7, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.118:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a1, $t2, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.119:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a0, $t3, $a0
	bge	$a2, $a0, .LBB3_158
# %bb.120:                              #   in Loop: Header=BB3_102 Depth=4
	addi.w	$a0, $t1, 1
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a4, $a1
	or	$a0, $a0, $a1
	ldx.bu	$a1, $ra, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.121:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a1, $a7, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.122:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a1, $s6, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.123:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a1, $s7, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.124:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a1, $t2, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.125:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a0, $t3, $a0
	bge	$a2, $a0, .LBB3_158
# %bb.126:                              #   in Loop: Header=BB3_102 Depth=4
	slt	$a0, $fp, $t1
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $t1, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 2
	slt	$a1, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a4, $a1
	or	$a0, $a0, $a1
	ldx.bu	$a1, $ra, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.127:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a1, $a7, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.128:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a1, $s6, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.129:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a1, $s7, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.130:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a1, $t2, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.131:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a0, $t3, $a0
	bge	$a2, $a0, .LBB3_158
# %bb.132:                              #   in Loop: Header=BB3_102 Depth=4
	addi.w	$a0, $zero, -3
	slt	$a1, $a0, $t1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t1, $a1
	or	$a0, $a1, $a0
	addi.w	$a0, $a0, 3
	slt	$a1, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a4, $a1
	or	$a0, $a0, $a1
	ldx.bu	$a1, $ra, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.133:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a1, $a7, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.134:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a1, $s6, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.135:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a1, $s7, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.136:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a1, $t2, $a0
	bge	$a2, $a1, .LBB3_158
# %bb.137:                              #   in Loop: Header=BB3_102 Depth=4
	ldx.bu	$a0, $t3, $a0
	bge	$a2, $a0, .LBB3_158
# %bb.138:                              #   in Loop: Header=BB3_102 Depth=4
	addi.w	$t7, $t7, 1
	ori	$a0, $zero, 4
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	bne	$t7, $a0, .LBB3_102
# %bb.139:                              #   in Loop: Header=BB3_101 Depth=3
	ori	$s8, $zero, 4
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ori	$a3, $zero, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 8                     # 8-byte Folded Reload
	bne	$a7, $a0, .LBB3_101
	b	.LBB3_19
.LBB3_140:                              # %.preheader228
                                        #   in Loop: Header=BB3_2 Depth=2
	addi.d	$a0, $a0, -1
	sltu	$a0, $zero, $a0
	addi.d	$a3, $t4, 3
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a3, $s4, 3
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
.LBB3_141:                              # %.preheader217
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_142 Depth 4
	ori	$a7, $zero, 1
	move	$a3, $a1
	add.w	$a0, $s4, $a0
	addi.w	$t1, $s4, 0
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 3
	ldx.d	$ra, $t5, $a0
	slt	$a0, $a6, $t1
	masknez	$a1, $a6, $a0
	maskeqz	$a0, $t1, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, -2
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	alsl.d	$a0, $a0, $t5, 3
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	slt	$a0, $a7, $t1
	masknez	$a1, $a7, $a0
	maskeqz	$a0, $t1, $a0
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, -1
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	alsl.d	$a0, $a0, $t5, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	srai.d	$a0, $t1, 63
	andn	$a0, $t1, $a0
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	alsl.d	$a0, $a0, $t5, 3
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.w	$s4, $s4, 1
	srai.d	$a0, $s4, 63
	andn	$a0, $s4, $a0
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	alsl.d	$a0, $a0, $t5, 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	slt	$a0, $fp, $t1
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $t1, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 2
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	alsl.d	$t2, $a0, $t5, 3
	addi.w	$t3, $zero, -3
	slt	$a0, $t3, $t1
	masknez	$a1, $t3, $a0
	maskeqz	$a0, $t1, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 3
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	alsl.d	$a7, $a0, $t5, 3
	move	$s5, $t4
.LBB3_142:                              #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_2 Depth=2
                                        #       Parent Loop BB3_141 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$s7, $s5, 0
	slt	$a0, $a6, $s7
	masknez	$a1, $a6, $a0
	maskeqz	$a0, $s7, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, -2
	slt	$a1, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a4, $a1
	or	$a0, $a0, $a1
	ldx.bu	$a0, $ra, $a0
	bge	$a2, $a0, .LBB3_158
# %bb.143:                              #   in Loop: Header=BB3_142 Depth=4
	ori	$a1, $zero, 1
	slt	$a0, $a1, $s7
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s7, $a0
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, -1
	slt	$a1, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a4, $a1
	or	$a0, $a0, $a1
	ldx.bu	$a0, $ra, $a0
	bge	$a2, $a0, .LBB3_158
# %bb.144:                              #   in Loop: Header=BB3_142 Depth=4
	srai.d	$a0, $s7, 63
	andn	$a0, $s7, $a0
	slt	$a1, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a4, $a1
	or	$a0, $a0, $a1
	ldx.bu	$a0, $ra, $a0
	bge	$a2, $a0, .LBB3_158
# %bb.145:                              #   in Loop: Header=BB3_142 Depth=4
	addi.w	$a0, $s5, 1
	srai.d	$a1, $a0, 63
	andn	$a1, $a0, $a1
	slt	$s8, $a1, $a4
	maskeqz	$a1, $a1, $s8
	masknez	$s8, $a4, $s8
	or	$a1, $a1, $s8
	ldx.bu	$a1, $ra, $a1
	bge	$a2, $a1, .LBB3_158
# %bb.146:                              #   in Loop: Header=BB3_142 Depth=4
	slt	$a1, $fp, $s7
	masknez	$s8, $fp, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $s8
	addi.w	$a1, $a1, 2
	slt	$s8, $a1, $a4
	maskeqz	$a1, $a1, $s8
	masknez	$s8, $a4, $s8
	or	$a1, $a1, $s8
	ldx.bu	$a1, $ra, $a1
	bge	$a2, $a1, .LBB3_158
# %bb.147:                              #   in Loop: Header=BB3_142 Depth=4
	slt	$a1, $t3, $s7
	masknez	$s8, $t3, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $s8
	addi.w	$a1, $a1, 3
	slt	$s7, $a1, $a4
	maskeqz	$a1, $a1, $s7
	masknez	$s7, $a4, $s7
	or	$a1, $a1, $s7
	ldx.bu	$a1, $ra, $a1
	bge	$a2, $a1, .LBB3_158
# %bb.148:                              #   in Loop: Header=BB3_142 Depth=4
	addi.d	$a1, $s6, -1
	sltui	$a1, $a1, 1
	masknez	$s7, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$a1, $a1, $s7
	addi.w	$a1, $a1, 0
	srai.d	$s5, $a1, 63
	andn	$a1, $a1, $s5
	slt	$s5, $a1, $a4
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $s7, 0
	maskeqz	$a1, $a1, $s5
	masknez	$s5, $a4, $s5
	or	$s5, $a1, $s5
	ldx.bu	$a1, $s7, $s5
	bge	$a2, $a1, .LBB3_158
# %bb.149:                              #   in Loop: Header=BB3_142 Depth=4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.bu	$a1, $a1, $s5
	bge	$a2, $a1, .LBB3_158
# %bb.150:                              #   in Loop: Header=BB3_142 Depth=4
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.bu	$a1, $a1, $s5
	bge	$a2, $a1, .LBB3_158
# %bb.151:                              #   in Loop: Header=BB3_142 Depth=4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.bu	$a1, $a1, $s5
	bge	$a2, $a1, .LBB3_158
# %bb.152:                              #   in Loop: Header=BB3_142 Depth=4
	ld.d	$a1, $t2, 0
	ldx.bu	$a1, $a1, $s5
	bge	$a2, $a1, .LBB3_158
# %bb.153:                              #   in Loop: Header=BB3_142 Depth=4
	ld.d	$a1, $a7, 0
	ldx.bu	$a1, $a1, $s5
	bge	$a2, $a1, .LBB3_158
# %bb.154:                              # %.loopexit209
                                        #   in Loop: Header=BB3_142 Depth=4
	addi.w	$a1, $a0, -1
	move	$s5, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB3_142
# %bb.155:                              #   in Loop: Header=BB3_141 Depth=3
	ori	$s8, $zero, 4
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $a3
	ori	$a3, $zero, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	bne	$t1, $a7, .LBB3_141
	b	.LBB3_19
.LBB3_156:                              #   in Loop: Header=BB3_1 Depth=1
	addi.d	$t6, $t6, 1
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 88                    # 8-byte Folded Reload
	blt	$t6, $ra, .LBB3_1
# %bb.157:
	ori	$a0, $zero, 1
	b	.LBB3_159
.LBB3_158:
	move	$a0, $zero
.LBB3_159:                              # %.loopexit
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end3:
	.size	CheckReliabilityOfRef, .Lfunc_end3-CheckReliabilityOfRef
                                        # -- End function
	.globl	RDCost_for_4x4IntraBlocks       # -- Begin function RDCost_for_4x4IntraBlocks
	.p2align	5
	.type	RDCost_for_4x4IntraBlocks,@function
RDCost_for_4x4IntraBlocks:              # @RDCost_for_4x4IntraBlocks
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	move	$s0, $a1
	move	$s3, $a0
	slli.d	$a0, $a1, 3
	slli.d	$a1, $a2, 2
	andi	$s2, $a1, 4
	andi	$s4, $a0, 8
	move	$a0, $s2
	bstrins.d	$a0, $s0, 3, 3
	slli.d	$a1, $s0, 2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a4, $a1, 31, 3
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a1, $a2, 1
	bstrpick.d	$a1, $a1, 31, 2
	slli.d	$a3, $a1, 2
	alsl.w	$a1, $a4, $a3, 3
	alsl.d	$a2, $a4, $a3, 3
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$s1, $a3, %got_pc_lo12(img)
	ld.d	$a3, $s1, 0
	ld.w	$fp, $a3, 176
	ld.w	$a4, $a3, 180
	ld.w	$a5, $a3, 196
	add.d	$s5, $fp, $a0
	add.w	$s8, $a4, $a2
	add.w	$s6, $a5, $a2
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	ld.d	$a2, $a2, 0
	ldptr.d	$s7, $a2, 6440
	ldptr.d	$a2, $a3, 14216
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a2, $a2, 0
	ldptr.w	$a2, $a2, 4016
	slli.d	$a2, $a2, 3
	pcalau12i	$a4, %got_pc_hi20(assignSE2partition)
	ld.d	$a4, $a4, %got_pc_lo12(assignSE2partition)
	ld.w	$a3, $a3, 20
	ldx.d	$a2, $a4, $a2
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ori	$a2, $zero, 3
	st.w	$zero, $sp, 108
	bne	$a3, $a2, .LBB4_3
# %bb.1:
	pcalau12i	$a2, %pc_hi20(si_frame_indicator)
	ld.w	$a2, $a2, %pc_lo12(si_frame_indicator)
	pcalau12i	$a3, %pc_hi20(sp2_frame_indicator)
	ld.w	$a3, $a3, %pc_lo12(sp2_frame_indicator)
	addi.w	$a0, $a0, 0
	or	$a2, $a2, $a3
	beqz	$a2, .LBB4_4
# %bb.2:
	addi.d	$a2, $sp, 108
	pcaddu18i	$ra, %call36(dct_luma_sp2)
	jirl	$ra, $ra, 0
	b	.LBB4_5
.LBB4_3:
	addi.w	$a0, $a0, 0
	addi.d	$a2, $sp, 108
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(dct_luma)
	jirl	$ra, $ra, 0
	b	.LBB4_5
.LBB4_4:
	addi.d	$a2, $sp, 108
	pcaddu18i	$ra, %call36(dct_luma_sp)
	jirl	$ra, $ra, 0
.LBB4_5:                                # %.preheader
	pcalau12i	$a1, %pc_hi20(imgY_org)
	ld.d	$a5, $a1, %pc_lo12(imgY_org)
	ld.d	$a1, $s1, 0
	add.d	$a2, $fp, $s4
	slli.d	$a3, $s6, 3
	ldx.d	$a6, $a5, $a3
	slli.d	$a3, $s8, 3
	ldx.d	$t0, $s7, $a3
	add.w	$a3, $a2, $s2
	slli.d	$a2, $a3, 1
	ldx.hu	$a4, $a6, $a2
	ldx.hu	$a7, $t0, $a2
	ldptr.d	$a1, $a1, 14232
	st.w	$a0, $s3, 0
	sub.d	$a0, $a4, $a7
	slli.d	$a0, $a0, 2
	ldx.w	$a7, $a1, $a0
	addi.d	$a0, $a3, 1
	addi.w	$a4, $s5, 3
	slli.d	$a0, $a0, 1
	bge	$a3, $a4, .LBB4_7
# %bb.6:
	ldx.hu	$t1, $a6, $a0
	ldx.hu	$t2, $t0, $a0
	addi.d	$t3, $a2, 4
	ldx.hu	$t4, $a6, $t3
	ldx.hu	$t3, $t0, $t3
	sub.d	$t1, $t1, $t2
	sub.d	$t2, $t4, $t3
	addi.d	$t3, $a2, 6
	ldx.hu	$a6, $a6, $t3
	ldx.hu	$t0, $t0, $t3
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a1, $t1
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a1, $t2
	sub.d	$a6, $a6, $t0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a1, $a6
	add.d	$a7, $a7, $t1
	add.d	$a7, $a7, $t2
	add.d	$a7, $a7, $a6
.LBB4_7:                                # %.preheader.1
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a5, $s6, $a5, 3
	ld.d	$t0, $a5, 8
	alsl.d	$a6, $s8, $s7, 3
	ld.d	$t1, $a6, 8
	ldx.hu	$t2, $t0, $a2
	ldx.hu	$t3, $t1, $a2
	sub.d	$t2, $t2, $t3
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a1, $t2
	add.d	$a7, $a7, $t2
	bge	$a3, $a4, .LBB4_9
# %bb.8:
	ldx.hu	$t2, $t0, $a0
	ldx.hu	$t3, $t1, $a0
	addi.d	$t4, $a2, 4
	ldx.hu	$t5, $t0, $t4
	ldx.hu	$t4, $t1, $t4
	sub.d	$t2, $t2, $t3
	sub.d	$t3, $t5, $t4
	addi.d	$t4, $a2, 6
	ldx.hu	$t0, $t0, $t4
	ldx.hu	$t1, $t1, $t4
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a1, $t2
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $a1, $t3
	sub.d	$t0, $t0, $t1
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a1, $t0
	add.d	$a7, $a7, $t2
	add.d	$a7, $a7, $t3
	add.d	$a7, $a7, $t0
.LBB4_9:                                # %.preheader.2
	ld.d	$t0, $a5, 16
	ld.d	$t1, $a6, 16
	ldx.hu	$t2, $t0, $a2
	ldx.hu	$t3, $t1, $a2
	sub.d	$t2, $t2, $t3
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a1, $t2
	add.d	$a7, $a7, $t2
	bge	$a3, $a4, .LBB4_11
# %bb.10:
	ldx.hu	$t2, $t0, $a0
	ldx.hu	$t3, $t1, $a0
	addi.d	$t4, $a2, 4
	ldx.hu	$t5, $t0, $t4
	ldx.hu	$t4, $t1, $t4
	sub.d	$t2, $t2, $t3
	sub.d	$t3, $t5, $t4
	addi.d	$t4, $a2, 6
	ldx.hu	$t0, $t0, $t4
	ldx.hu	$t1, $t1, $t4
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a1, $t2
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $a1, $t3
	sub.d	$t0, $t0, $t1
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a1, $t0
	add.d	$a7, $a7, $t2
	add.d	$a7, $a7, $t3
	add.d	$a7, $a7, $t0
.LBB4_11:                               # %.preheader.3
	ld.d	$a5, $a5, 24
	ld.d	$a6, $a6, 24
	ldx.hu	$t0, $a5, $a2
	ldx.hu	$t1, $a6, $a2
	sub.d	$t0, $t0, $t1
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a1, $t0
	add.d	$s2, $a7, $t0
	bge	$a3, $a4, .LBB4_13
# %bb.12:
	ldx.hu	$a3, $a5, $a0
	ldx.hu	$a0, $a6, $a0
	sub.d	$a0, $a3, $a0
	addi.d	$a3, $a2, 4
	ldx.hu	$a4, $a5, $a3
	ldx.hu	$a3, $a6, $a3
	addi.d	$a2, $a2, 6
	ldx.hu	$a5, $a5, $a2
	ldx.hu	$a2, $a6, $a2
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	sub.d	$a3, $a4, $a3
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a1, $a3
	sub.d	$a2, $a5, $a2
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	add.d	$a0, $s2, $a0
	add.d	$a0, $a0, $a3
	add.d	$s2, $a0, $a1
.LBB4_13:
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	xor	$a0, $a1, $a2
	sltui	$a0, $a0, 1
	slt	$a1, $a2, $a1
	xori	$a1, $a1, 1
	sub.d	$a1, $a2, $a1
	masknez	$a1, $a1, $a0
	addi.d	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	st.w	$a0, $sp, 68
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s1
	st.w	$a0, $sp, 88
	ori	$a0, $zero, 4
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a1, 16
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 24
	st.w	$a0, $sp, 64
	ori	$a0, $zero, 104
	mul.d	$a0, $a1, $a0
	add.d	$a1, $a2, $a0
	pcalau12i	$a0, %got_pc_hi20(writeIntraPredMode)
	ld.d	$a0, $a0, %got_pc_lo12(writeIntraPredMode)
	ld.d	$a2, $a0, 0
	addi.d	$a0, $sp, 64
	jirl	$ra, $a2, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	ld.w	$fp, $sp, 76
	beqz	$a0, .LBB4_15
# %bb.14:
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(writeLumaCoeff4x4_CABAC)
	jirl	$ra, $ra, 0
	b	.LBB4_16
.LBB4_15:
	move	$a0, $zero
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
.LBB4_16:
	add.d	$a0, $a0, $fp
	movgr2fr.d	$fa0, $s2
	ffint.d.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fa0, $fs0, $fa1, $fa0
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end4:
	.size	RDCost_for_4x4IntraBlocks, .Lfunc_end4-RDCost_for_4x4IntraBlocks
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Mode_Decision_for_4x4IntraBlocks
.LCPI5_0:
	.dword	0x46293e5939a08cea              # double 1.0E+30
	.text
	.globl	Mode_Decision_for_4x4IntraBlocks
	.p2align	5
	.type	Mode_Decision_for_4x4IntraBlocks,@function
Mode_Decision_for_4x4IntraBlocks:       # @Mode_Decision_for_4x4IntraBlocks
# %bb.0:
	addi.d	$sp, $sp, -480
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	st.d	$s3, $sp, 432                   # 8-byte Folded Spill
	st.d	$s4, $sp, 424                   # 8-byte Folded Spill
	st.d	$s5, $sp, 416                   # 8-byte Folded Spill
	st.d	$s6, $sp, 408                   # 8-byte Folded Spill
	st.d	$s7, $sp, 400                   # 8-byte Folded Spill
	st.d	$s8, $sp, 392                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 384                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 376                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 368                  # 8-byte Folded Spill
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	slli.d	$a2, $a1, 2
	andi	$s0, $a2, 4
	bstrins.d	$s0, $a0, 3, 3
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 3
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 2
	slli.d	$a1, $a1, 2
	alsl.w	$a2, $a0, $a1, 3
	alsl.d	$fp, $a0, $a1, 3
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s6, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s6, 0
	ld.w	$s5, $a0, 176
	ld.w	$s4, $a0, 180
	ld.w	$s2, $a0, 192
	ld.w	$s3, $a0, 196
	vldi	$vr0, -1008
	fmul.d	$fa0, $fs0, $fa0
	ld.w	$a0, $a0, 12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	addi.d	$a1, $s0, -1
	addi.d	$a3, $sp, 324
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.w	$a0, $a0, 12
	addi.w	$a2, $fp, -1
	addi.d	$a3, $sp, 300
	move	$a1, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s1, $a0, %got_pc_lo12(input)
	ld.d	$a0, $s1, 0
	ld.w	$a0, $a0, 272
	beqz	$a0, .LBB5_3
# %bb.1:
	ld.w	$a0, $sp, 324
	beqz	$a0, .LBB5_4
# %bb.2:
	ld.d	$a0, $s6, 0
	ld.w	$a1, $sp, 328
	ldptr.d	$a0, $a0, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	b	.LBB5_5
.LBB5_3:                                # %thread-pre-split
	ld.w	$a2, $sp, 300
	b	.LBB5_8
.LBB5_4:
	move	$a0, $zero
.LBB5_5:
	ld.w	$a1, $sp, 300
	st.w	$a0, $sp, 324
	beqz	$a1, .LBB5_7
# %bb.6:
	ld.d	$a0, $s6, 0
	ld.w	$a1, $sp, 304
	ldptr.d	$a0, $a0, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $a0, $a1
	st.w	$a2, $sp, 300
	b	.LBB5_8
.LBB5_7:
	move	$a2, $zero
	st.w	$zero, $sp, 300
.LBB5_8:
	add.w	$a0, $s5, $s0
	addi.w	$a4, $zero, -1
	add.w	$a1, $s4, $fp
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	move	$a1, $a4
	beqz	$a2, .LBB5_10
# %bb.9:
	ld.d	$a1, $s6, 0
	ld.w	$a2, $sp, 320
	ld.d	$a1, $a1, 128
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ld.w	$a2, $sp, 316
	ldx.b	$a1, $a1, $a2
.LBB5_10:
	ld.w	$a2, $sp, 324
	add.w	$a3, $s2, $s0
	st.d	$a3, $sp, 216                   # 8-byte Folded Spill
	add.w	$fp, $s3, $fp
	vld	$vr0, $sp, 192                  # 16-byte Folded Reload
	ftintrz.w.d	$fa0, $fa0
	beqz	$a2, .LBB5_12
# %bb.11:
	ld.d	$a3, $s6, 0
	ld.w	$a2, $sp, 344
	ld.d	$a3, $a3, 128
	slli.d	$a2, $a2, 3
	ldx.d	$a3, $a3, $a2
	ld.w	$a2, $sp, 340
	ldx.b	$a4, $a3, $a2
.LBB5_12:
	srai.d	$a2, $a0, 2
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	srai.d	$a2, $s2, 2
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	movfr2gr.s	$a2, $fa0
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	or	$a2, $a1, $a4
	slti	$a2, $a2, 0
	slt	$a3, $a1, $a4
	masknez	$a4, $a4, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a4
	masknez	$a3, $a1, $a2
	ori	$s8, $zero, 2
	maskeqz	$a1, $s8, $a2
	or	$s3, $a1, $a3
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	addi.d	$a2, $sp, 356
	addi.d	$a3, $sp, 352
	addi.d	$a4, $sp, 348
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$a1, $s2
	pcaddu18i	$ra, %call36(intrapred_luma)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	move	$s7, $zero
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	addi.w	$s4, $s0, 0
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	bstrpick.d	$a0, $s3, 31, 0
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a1, $s3, 1
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a1, $s3, 2
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	addi.d	$s0, $s3, 3
	addi.d	$a1, $s2, 1
	addi.d	$a2, $s2, 2
	addi.d	$a3, $s2, 3
	slli.d	$a0, $a0, 9
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.w	$s2, $zero, -3
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI5_0)
	ori	$a4, $zero, 1024
	ori	$a5, $zero, 9
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	slli.d	$a0, $a1, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a0, $a2, 3
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a0, $a3, 3
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	b	.LBB5_17
.LBB5_13:                               # %.loopexit247
                                        #   in Loop: Header=BB5_17 Depth=1
	fmov.d	$fs2, $fs1
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
.LBB5_14:                               # %.loopexit247
                                        #   in Loop: Header=BB5_17 Depth=1
	pcalau12i	$a0, %pc_hi20(cs_cm)
	ld.d	$a0, $a0, %pc_lo12(cs_cm)
	pcaddu18i	$ra, %call36(reset_coding_state)
	jirl	$ra, $ra, 0
.LBB5_15:                               #   in Loop: Header=BB5_17 Depth=1
	ori	$s8, $zero, 2
	ori	$a4, $zero, 1024
	ori	$a5, $zero, 9
.LBB5_16:                               #   in Loop: Header=BB5_17 Depth=1
	addi.d	$s7, $s7, 1
	addi.w	$s2, $s2, 1
	addi.d	$s5, $s5, 512
	beq	$s7, $a5, .LBB5_42
.LBB5_17:                               # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 1
	beq	$s5, $a4, .LBB5_23
# %bb.18:                               #   in Loop: Header=BB5_17 Depth=1
	sltu	$a1, $zero, $s5
	andi	$a2, $s7, 11
	addi.d	$a2, $a2, -3
	sltu	$a2, $zero, $a2
	and	$a1, $a1, $a2
	bnez	$a1, .LBB5_20
# %bb.19:                               #   in Loop: Header=BB5_17 Depth=1
	ld.w	$a1, $sp, 352
	bnez	$a1, .LBB5_23
.LBB5_20:                               #   in Loop: Header=BB5_17 Depth=1
	addi.d	$a1, $s5, -512
	sltu	$a1, $zero, $a1
	addi.d	$a2, $s7, -8
	sltu	$a2, $zero, $a2
	and	$a1, $a1, $a2
	bnez	$a1, .LBB5_22
# %bb.21:                               #   in Loop: Header=BB5_17 Depth=1
	ld.w	$a1, $sp, 356
	bnez	$a1, .LBB5_23
.LBB5_22:                               #   in Loop: Header=BB5_17 Depth=1
	ld.w	$a0, $sp, 348
	sltu	$a0, $zero, $a0
	.p2align	4, , 16
.LBB5_23:                               #   in Loop: Header=BB5_17 Depth=1
	ld.d	$a1, $s1, 0
	ldptr.w	$a2, $a1, 4048
	beqz	$a2, .LBB5_25
# %bb.24:                               #   in Loop: Header=BB5_17 Depth=1
	ld.d	$a2, $s6, 0
	ld.w	$a2, $a2, 20
	beq	$a2, $s8, .LBB5_30
.LBB5_25:                               #   in Loop: Header=BB5_17 Depth=1
	ldptr.w	$a2, $a1, 4052
	beqz	$a2, .LBB5_27
# %bb.26:                               #   in Loop: Header=BB5_17 Depth=1
	bltu	$s7, $s8, .LBB5_16
.LBB5_27:                               #   in Loop: Header=BB5_17 Depth=1
	ldptr.w	$a2, $a1, 4056
	beqz	$a2, .LBB5_29
# %bb.28:                               #   in Loop: Header=BB5_17 Depth=1
	bltu	$s2, $s8, .LBB5_16
.LBB5_29:                               #   in Loop: Header=BB5_17 Depth=1
	ldptr.w	$a2, $a1, 4060
	sltui	$a2, $a2, 1
	sltui	$a3, $s7, 5
	or	$a2, $a2, $a3
	and	$a0, $a2, $a0
.LBB5_30:                               #   in Loop: Header=BB5_17 Depth=1
	beqz	$a0, .LBB5_16
# %bb.31:                               #   in Loop: Header=BB5_17 Depth=1
	ldptr.w	$a3, $a1, 4168
	pcalau12i	$a0, %pc_hi20(imgY_org)
	slli.d	$a2, $fp, 3
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 1
	beqz	$a3, .LBB5_37
# %bb.32:                               # %.preheader248
                                        #   in Loop: Header=BB5_17 Depth=1
	ld.d	$a3, $s6, 0
	add.d	$a4, $a3, $s5
	ld.d	$a4, $a4, 208
	slli.d	$a5, $s3, 5
	add.d	$a3, $a3, $a5
	alsl.d	$a3, $s4, $a3, 1
	stptr.d	$a4, $a3, 12624
	ld.d	$a3, $a0, %pc_lo12(imgY_org)
	ldx.d	$a2, $a3, $a2
	ld.d	$a3, $s6, 0
	ldx.d	$a2, $a2, $a1
	add.d	$a4, $a3, $s5
	ld.d	$a5, $a4, 208
	vinsgr2vr.d	$vr0, $a2, 0
	vld	$vr2, $sp, 192                  # 16-byte Folded Reload
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a5, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	lu12i.w	$a6, 3
	ori	$a2, $a6, 848
	vstx	$vr0, $a3, $a2
	ld.d	$a2, $a4, 240
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 5
	add.d	$a3, $a3, $a4
	alsl.d	$a3, $s4, $a3, 1
	stptr.d	$a2, $a3, 12624
	ld.d	$a2, $a0, %pc_lo12(imgY_org)
	alsl.d	$a2, $fp, $a2, 3
	ld.d	$a2, $a2, 8
	ld.d	$a3, $s6, 0
	ldx.d	$a2, $a2, $a1
	add.d	$a4, $a3, $s5
	ld.d	$a5, $a4, 240
	vinsgr2vr.d	$vr0, $a2, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a5, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ori	$a2, $a6, 912
	vstx	$vr0, $a3, $a2
	ld.d	$a2, $a4, 272
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 5
	add.d	$a3, $a3, $a4
	alsl.d	$a3, $s4, $a3, 1
	stptr.d	$a2, $a3, 12624
	ld.d	$a2, $a0, %pc_lo12(imgY_org)
	alsl.d	$a2, $fp, $a2, 3
	ld.d	$a2, $a2, 16
	ld.d	$a3, $s6, 0
	ldx.d	$a2, $a2, $a1
	add.d	$a4, $a3, $s5
	ld.d	$a5, $a4, 272
	vinsgr2vr.d	$vr0, $a2, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a5, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ori	$a2, $a6, 976
	vstx	$vr0, $a3, $a2
	ld.d	$a2, $a4, 304
	slli.d	$a4, $s0, 5
	add.d	$a3, $a3, $a4
	alsl.d	$a3, $s4, $a3, 1
	stptr.d	$a2, $a3, 12624
	ld.d	$a0, $a0, %pc_lo12(imgY_org)
	alsl.d	$a0, $fp, $a0, 3
	ld.d	$a0, $a0, 24
	ld.d	$a2, $s6, 0
	ldx.d	$a0, $a0, $a1
	add.d	$a1, $a2, $s5
	ld.d	$a1, $a1, 304
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ori	$a0, $a6, 1040
	vstx	$vr0, $a2, $a0
	addi.w	$s8, $s2, 3
	addi.d	$a0, $sp, 360
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	move	$a3, $s8
	fmov.d	$fa0, $fs0
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(RDCost_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	fcmp.clt.d	$fcc0, $fa0, $fs2
	bceqz	$fcc0, .LBB5_14
# %bb.33:                               #   in Loop: Header=BB5_17 Depth=1
	fmov.d	$fs1, $fa0
	ld.d	$a0, $s6, 0
	ldptr.d	$a0, $a0, 14160
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	slli.d	$s4, $a1, 3
	ldx.d	$a0, $a0, $s4
	pcalau12i	$a1, %pc_hi20(cofAC4x4)
	ld.d	$s0, $a1, %pc_lo12(cofAC4x4)
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	slli.d	$s3, $a1, 3
	ldx.d	$a1, $a0, $s3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s4
	ldx.d	$a1, $a0, $s3
	ld.d	$a0, $s0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $s6, 0
	ld.d	$a1, $a1, 0
	ld.w	$a4, $a0, 20
	ldptr.d	$a1, $a1, 6440
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	slli.d	$a3, $a6, 1
	ori	$a5, $zero, 3
	bne	$a4, $a5, .LBB5_39
# %bb.34:                               #   in Loop: Header=BB5_17 Depth=1
	pcalau12i	$a4, %pc_hi20(si_frame_indicator)
	ld.w	$a4, $a4, %pc_lo12(si_frame_indicator)
	bnez	$a4, .LBB5_39
# %bb.35:                               #   in Loop: Header=BB5_17 Depth=1
	pcalau12i	$a4, %pc_hi20(sp2_frame_indicator)
	ld.w	$a4, $a4, %pc_lo12(sp2_frame_indicator)
	bnez	$a4, .LBB5_39
# %bb.36:                               #   in Loop: Header=BB5_17 Depth=1
	pcalau12i	$a4, %pc_hi20(lrec)
	ld.d	$a4, $a4, %pc_lo12(lrec)
	ldx.d	$a5, $a4, $a2
	slli.d	$a6, $a6, 2
	vldx	$vr0, $a5, $a6
	ld.d	$t0, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a5, $a4, $t0
	vst	$vr0, $sp, 232
	ld.d	$t1, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a7, $a4, $t1
	ldx.d	$t0, $a1, $t0
	vldx	$vr0, $a5, $a6
	ldx.d	$a5, $a1, $t1
	vldx	$vr1, $a7, $a6
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a4, $a4, $a7
	ldx.d	$a7, $a1, $a7
	ldx.d	$t0, $t0, $a3
	ldx.d	$a5, $a5, $a3
	vldx	$vr2, $a4, $a6
	ldx.d	$a4, $a7, $a3
	addi.d	$a6, $sp, 248
	vst	$vr0, $a6, 0
	addi.d	$a6, $sp, 264
	vst	$vr1, $a6, 0
	addi.d	$a6, $sp, 280
	vst	$vr2, $a6, 0
	b	.LBB5_40
.LBB5_37:                               # %.preheader245
                                        #   in Loop: Header=BB5_17 Depth=1
	ld.d	$a0, $a0, %pc_lo12(imgY_org)
	ldx.d	$a2, $a0, $a2
	ld.d	$a3, $s6, 0
	ldx.d	$a2, $a2, $a1
	add.d	$a3, $a3, $s5
	ld.d	$a4, $a3, 208
	alsl.d	$a5, $fp, $a0, 3
	vinsgr2vr.d	$vr0, $a2, 0
	vld	$vr2, $sp, 192                  # 16-byte Folded Reload
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a4, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$a0, $a0, %pc_lo12(diff)
	ld.d	$a2, $a5, 8
	ldx.d	$a2, $a2, $a1
	ld.d	$a4, $a3, 240
	ld.d	$a6, $a5, 16
	vinsgr2vr.d	$vr1, $a2, 0
	vst	$vr0, $a0, 0
	vinsgr2vr.d	$vr0, $a4, 0
	ldx.d	$a2, $a6, $a1
	vilvl.h	$vr1, $vr2, $vr1
	vilvl.h	$vr0, $vr2, $vr0
	vsub.w	$vr0, $vr1, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	ld.d	$a2, $a3, 272
	vst	$vr0, $a0, 16
	ld.d	$a4, $a5, 24
	vilvl.h	$vr0, $vr2, $vr1
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	ldx.d	$a1, $a4, $a1
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a2, $a3, 304
	vst	$vr0, $a0, 32
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 48
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	xor	$a1, $a1, $s5
	sltui	$a1, $a1, 1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	masknez	$s8, $a2, $a1
	pcaddu18i	$ra, %call36(distortion4x4)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 0
	add.w	$a0, $a0, $s8
	bge	$a0, $a1, .LBB5_15
# %bb.38:                               #   in Loop: Header=BB5_17 Depth=1
	st.w	$a0, $a2, 0
	addi.w	$a0, $s2, 3
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	b	.LBB5_15
.LBB5_39:                               # %.thread289
                                        #   in Loop: Header=BB5_17 Depth=1
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$a4, $a4, $a1, 3
	ld.d	$a5, $a4, 8
	ld.d	$a6, $a4, 16
	ld.d	$a4, $a4, 24
	ldx.d	$t0, $a5, $a3
	ldx.d	$a5, $a6, $a3
	ldx.d	$a4, $a4, $a3
.LBB5_40:                               #   in Loop: Header=BB5_17 Depth=1
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	ldx.d	$a1, $a1, $a2
	ldx.d	$a1, $a1, $a3
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ldptr.w	$a1, $a0, 15260
	ld.w	$a2, $sp, 360
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a1, .LBB5_13
# %bb.41:                               # %.preheader246
                                        #   in Loop: Header=BB5_17 Depth=1
	ldptr.d	$a0, $a0, 14176
	ld.d	$a0, $a0, 8
	pcalau12i	$a1, %pc_hi20(fadjust4x4)
	ld.d	$a1, $a1, %pc_lo12(fadjust4x4)
	slli.d	$a2, $s3, 3
	ldx.d	$a0, $a0, $a2
	ldx.d	$a2, $a1, $a2
	slli.d	$a3, $s4, 2
	ldx.d	$a4, $a0, $a3
	alsl.d	$a0, $s4, $a0, 2
	stx.d	$a4, $a2, $a3
	ld.d	$a0, $a0, 8
	alsl.d	$a2, $s4, $a2, 2
	st.d	$a0, $a2, 8
	ld.d	$a0, $s6, 0
	ldptr.d	$a0, $a0, 14176
	ld.d	$a0, $a0, 8
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ldx.d	$a2, $a1, $a2
	vldx	$vr0, $a0, $a3
	vstx	$vr0, $a2, $a3
	ld.d	$a0, $s6, 0
	ldptr.d	$a0, $a0, 14176
	ld.d	$a0, $a0, 8
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ldx.d	$a2, $a1, $a2
	vldx	$vr0, $a0, $a3
	vstx	$vr0, $a2, $a3
	ld.d	$a0, $s6, 0
	ldptr.d	$a0, $a0, 14176
	ld.d	$a0, $a0, 8
	slli.d	$a2, $s0, 3
	ldx.d	$a0, $a0, $a2
	ldx.d	$a1, $a1, $a2
	vldx	$vr0, $a0, $a3
	vstx	$vr0, $a1, $a3
	b	.LBB5_13
.LBB5_42:
	ld.d	$a0, $s6, 0
	ld.d	$a0, $a0, 128
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	stx.b	$s5, $a0, $a1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	xor	$a0, $a1, $s5
	sltui	$a0, $a0, 1
	slt	$a1, $s5, $a1
	xori	$a1, $a1, 1
	sub.d	$a1, $s5, $a1
	ld.d	$a2, $s6, 0
	masknez	$a1, $a1, $a0
	addi.d	$a3, $zero, -1
	maskeqz	$a0, $a3, $a0
	ld.w	$a3, $a2, 12
	ldptr.d	$a2, $a2, 14224
	or	$a0, $a0, $a1
	ori	$a1, $zero, 536
	mul.d	$a1, $a3, $a1
	add.d	$a1, $a2, $a1
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	add.w	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 332
	ld.d	$a0, $s1, 0
	ldptr.w	$a0, $a0, 4168
	beqz	$a0, .LBB5_62
# %bb.43:                               # %.preheader244
	move	$s2, $s0
	ld.d	$a0, $s6, 0
	ldptr.d	$a0, $a0, 14160
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	slli.d	$fp, $a1, 3
	ldx.d	$a0, $a0, $fp
	pcalau12i	$a1, %pc_hi20(cofAC4x4)
	slli.d	$s0, $a3, 3
	ldx.d	$a0, $a0, $s0
	ld.d	$s1, $a1, %pc_lo12(cofAC4x4)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $s1, 0
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $fp
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $s1, 8
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a0, 0
	ldptr.d	$a1, $a1, 6440
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	slli.d	$a6, $a2, 3
	ldx.d	$a2, $a1, $a6
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	slli.d	$a1, $t1, 1
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	stx.d	$a3, $a2, $a1
	ld.d	$a2, $s6, 0
	slli.d	$a4, $s5, 9
	add.d	$a3, $a2, $a4
	ld.d	$a3, $a3, 208
	slli.d	$a5, $s3, 5
	add.d	$a2, $a2, $a5
	alsl.d	$a2, $s4, $a2, 1
	stptr.d	$a3, $a2, 12624
	ld.d	$a2, $s6, 0
	ld.w	$a7, $a2, 20
	pcalau12i	$a2, %pc_hi20(si_frame_indicator)
	ori	$a5, $zero, 3
	pcalau12i	$a3, %pc_hi20(sp2_frame_indicator)
	bne	$a7, $a5, .LBB5_47
# %bb.44:                               # %.preheader244
	ld.w	$a7, $a2, %pc_lo12(si_frame_indicator)
	bnez	$a7, .LBB5_47
# %bb.45:                               # %.preheader244
	ld.w	$a7, $a3, %pc_lo12(sp2_frame_indicator)
	bnez	$a7, .LBB5_47
# %bb.46:
	pcalau12i	$a7, %pc_hi20(lrec)
	ld.d	$a7, $a7, %pc_lo12(lrec)
	ldx.d	$a6, $a7, $a6
	vld	$vr0, $sp, 232
	slli.d	$a7, $t1, 2
	vstx	$vr0, $a6, $a7
.LBB5_47:
	ld.d	$a6, $a0, 0
	ldptr.d	$a6, $a6, 6440
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a6, $a6, $a7
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	stx.d	$a7, $a6, $a1
	ld.d	$a6, $s6, 0
	add.d	$a7, $a6, $a4
	ld.d	$a7, $a7, 240
	ld.d	$t0, $sp, 176                   # 8-byte Folded Reload
	slli.d	$t0, $t0, 5
	add.d	$a6, $a6, $t0
	alsl.d	$a6, $s4, $a6, 1
	stptr.d	$a7, $a6, 12624
	ld.d	$a6, $s6, 0
	ld.w	$a6, $a6, 20
	move	$t0, $s2
	bne	$a6, $a5, .LBB5_51
# %bb.48:
	ld.w	$a5, $a2, %pc_lo12(si_frame_indicator)
	bnez	$a5, .LBB5_51
# %bb.49:
	ld.w	$a5, $a3, %pc_lo12(sp2_frame_indicator)
	bnez	$a5, .LBB5_51
# %bb.50:
	pcalau12i	$a5, %pc_hi20(lrec)
	ld.d	$a5, $a5, %pc_lo12(lrec)
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a5, $a5, $a6
	vld	$vr0, $sp, 248
	slli.d	$a6, $t1, 2
	vstx	$vr0, $a5, $a6
.LBB5_51:
	ld.d	$a5, $a0, 0
	ldptr.d	$a5, $a5, 6440
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a5, $a5, $a6
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	stx.d	$a6, $a5, $a1
	ld.d	$a5, $s6, 0
	add.d	$a6, $a5, $a4
	ld.d	$a6, $a6, 272
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	slli.d	$a7, $a7, 5
	add.d	$a5, $a5, $a7
	alsl.d	$a5, $s4, $a5, 1
	stptr.d	$a6, $a5, 12624
	ld.d	$a5, $s6, 0
	ld.w	$a6, $a5, 20
	ori	$a5, $zero, 3
	bne	$a6, $a5, .LBB5_55
# %bb.52:
	ld.w	$a6, $a2, %pc_lo12(si_frame_indicator)
	bnez	$a6, .LBB5_55
# %bb.53:
	ld.w	$a6, $a3, %pc_lo12(sp2_frame_indicator)
	bnez	$a6, .LBB5_55
# %bb.54:
	pcalau12i	$a6, %pc_hi20(lrec)
	ld.d	$a6, $a6, %pc_lo12(lrec)
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a6, $a6, $a7
	vld	$vr0, $sp, 264
	slli.d	$a7, $t1, 2
	vstx	$vr0, $a6, $a7
.LBB5_55:
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a6
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	stx.d	$a6, $a0, $a1
	ld.d	$a0, $s6, 0
	add.d	$a1, $a0, $a4
	ld.d	$a1, $a1, 304
	slli.d	$a4, $t0, 5
	add.d	$a0, $a0, $a4
	alsl.d	$a0, $s4, $a0, 1
	stptr.d	$a1, $a0, 12624
	ld.d	$a0, $s6, 0
	ld.w	$a1, $a0, 20
	bne	$a1, $a5, .LBB5_59
# %bb.56:
	ld.w	$a1, $a2, %pc_lo12(si_frame_indicator)
	bnez	$a1, .LBB5_59
# %bb.57:
	ld.w	$a1, $a3, %pc_lo12(sp2_frame_indicator)
	bnez	$a1, .LBB5_59
# %bb.58:
	pcalau12i	$a0, %pc_hi20(lrec)
	ld.d	$a0, $a0, %pc_lo12(lrec)
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	vld	$vr0, $sp, 280
	slli.d	$a1, $t1, 2
	vstx	$vr0, $a0, $a1
	ld.d	$a0, $s6, 0
.LBB5_59:
	ldptr.w	$a1, $a0, 15260
	beqz	$a1, .LBB5_61
# %bb.60:                               # %.preheader242
	ldptr.d	$a0, $a0, 14176
	pcalau12i	$a1, %pc_hi20(fadjust4x4)
	ld.d	$a1, $a1, %pc_lo12(fadjust4x4)
	ld.d	$a0, $a0, 8
	slli.d	$a2, $s3, 3
	ldx.d	$a3, $a1, $a2
	ldx.d	$a0, $a0, $a2
	slli.d	$a2, $s4, 2
	ldx.d	$a4, $a3, $a2
	alsl.d	$a3, $s4, $a3, 2
	stx.d	$a4, $a0, $a2
	ld.d	$a3, $a3, 8
	alsl.d	$a0, $s4, $a0, 2
	st.d	$a3, $a0, 8
	ld.d	$a0, $s6, 0
	ldptr.d	$a0, $a0, 14176
	ld.d	$a0, $a0, 8
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 3
	ldx.d	$a4, $a1, $a3
	ldx.d	$a0, $a0, $a3
	vldx	$vr0, $a4, $a2
	vstx	$vr0, $a0, $a2
	ld.d	$a0, $s6, 0
	ldptr.d	$a0, $a0, 14176
	ld.d	$a0, $a0, 8
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 3
	ldx.d	$a4, $a1, $a3
	ldx.d	$a0, $a0, $a3
	vldx	$vr0, $a4, $a2
	vstx	$vr0, $a0, $a2
	ld.d	$a0, $s6, 0
	ldptr.d	$a0, $a0, 14176
	ld.d	$a0, $a0, 8
	slli.d	$a3, $t0, 3
	ldx.d	$a1, $a1, $a3
	ldx.d	$a0, $a0, $a3
	vldx	$vr0, $a1, $a2
	vstx	$vr0, $a0, $a2
.LBB5_61:                               # %.loopexit
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	b	.LBB5_63
.LBB5_62:                               # %.preheader
	ld.d	$a0, $s6, 0
	slli.d	$a1, $s5, 9
	add.d	$a1, $a0, $a1
	slli.d	$a2, $s3, 5
	add.d	$a2, $a0, $a2
	pcalau12i	$a3, %pc_hi20(imgY_org)
	ld.d	$a4, $a3, %pc_lo12(imgY_org)
	lu12i.w	$s1, 3
	ori	$a3, $s1, 336
	add.d	$t3, $a2, $a3
	ld.hu	$a6, $a1, 208
	slli.d	$a3, $fp, 3
	ldx.d	$t4, $a4, $a3
	slli.d	$a5, $s4, 1
	stx.h	$a6, $t3, $a5
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 1
	ldx.hu	$a7, $t4, $a3
	alsl.d	$t1, $fp, $a4, 3
	ld.hu	$t2, $a1, 210
	sub.d	$a4, $a7, $a6
	stptr.w	$a4, $a0, 13136
	addi.d	$a6, $a5, 2
	stx.h	$t2, $t3, $a6
	ld.hu	$t5, $a1, 212
	addi.d	$a7, $a3, 2
	ldx.hu	$t6, $t4, $a7
	addi.d	$t0, $a5, 4
	stx.h	$t5, $t3, $t0
	addi.d	$a4, $a3, 4
	ldx.hu	$t7, $t4, $a4
	sub.d	$t2, $t6, $t2
	stptr.w	$t2, $a0, 13140
	ld.hu	$t6, $a1, 214
	sub.d	$t2, $t7, $t5
	stptr.w	$t2, $a0, 13144
	addi.d	$t2, $a5, 6
	stx.h	$t6, $t3, $t2
	addi.d	$t3, $a3, 6
	ldx.hu	$t4, $t4, $t3
	ld.hu	$t5, $a1, 240
	ori	$t7, $s1, 368
	add.d	$t7, $a2, $t7
	ld.d	$t8, $t1, 8
	stx.h	$t5, $t7, $a5
	ld.hu	$fp, $a1, 242
	sub.d	$t4, $t4, $t6
	ldx.hu	$t6, $t8, $a3
	stptr.w	$t4, $a0, 13148
	stx.h	$fp, $t7, $a6
	ld.hu	$t4, $a1, 244
	sub.d	$t5, $t6, $t5
	ldx.hu	$t6, $t8, $a7
	stptr.w	$t5, $a0, 13200
	stx.h	$t4, $t7, $t0
	ldx.hu	$t5, $t8, $a4
	sub.d	$t6, $t6, $fp
	ld.hu	$fp, $a1, 246
	stptr.w	$t6, $a0, 13204
	sub.d	$t4, $t5, $t4
	stptr.w	$t4, $a0, 13208
	stx.h	$fp, $t7, $t2
	ldx.hu	$t4, $t8, $t3
	ld.hu	$t5, $a1, 272
	ori	$t6, $s1, 400
	add.d	$t6, $a2, $t6
	ld.d	$t7, $t1, 16
	stx.h	$t5, $t6, $a5
	ld.hu	$t8, $a1, 274
	sub.d	$t4, $t4, $fp
	ldx.hu	$fp, $t7, $a3
	stptr.w	$t4, $a0, 13212
	stx.h	$t8, $t6, $a6
	ld.hu	$t4, $a1, 276
	sub.d	$t5, $fp, $t5
	stptr.w	$t5, $a0, 13264
	ldx.hu	$t5, $t7, $a7
	stx.h	$t4, $t6, $t0
	ldx.hu	$fp, $t7, $a4
	ld.hu	$s0, $a1, 278
	sub.d	$t5, $t5, $t8
	stptr.w	$t5, $a0, 13268
	sub.d	$t4, $fp, $t4
	stx.h	$s0, $t6, $t2
	ldx.hu	$t5, $t7, $t3
	ld.hu	$t6, $a1, 304
	ori	$t7, $s1, 432
	add.d	$a2, $a2, $t7
	ld.d	$t1, $t1, 24
	stx.h	$t6, $a2, $a5
	ld.hu	$a5, $a1, 306
	stptr.w	$t4, $a0, 13272
	sub.d	$t4, $t5, $s0
	ldx.hu	$a3, $t1, $a3
	stx.h	$a5, $a2, $a6
	ld.hu	$a6, $a1, 308
	stptr.w	$t4, $a0, 13276
	sub.d	$a3, $a3, $t6
	ldx.hu	$a7, $t1, $a7
	stx.h	$a6, $a2, $t0
	ld.hu	$a1, $a1, 310
	stptr.w	$a3, $a0, 13328
	sub.d	$a3, $a7, $a5
	ldx.hu	$a4, $t1, $a4
	stx.h	$a1, $a2, $t2
	ldx.hu	$a2, $t1, $t3
	stptr.w	$a3, $a0, 13332
	sub.d	$a3, $a4, $a6
	stptr.w	$a3, $a0, 13336
	sub.d	$a1, $a2, $a1
	stptr.w	$a1, $a0, 13340
	addi.d	$a2, $sp, 364
	ori	$a3, $zero, 1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(dct_luma)
	jirl	$ra, $ra, 0
.LBB5_63:                               # %.loopexit
	fld.d	$fs2, $sp, 368                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 376                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 384                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 480
	ret
.Lfunc_end5:
	.size	Mode_Decision_for_4x4IntraBlocks, .Lfunc_end5-Mode_Decision_for_4x4IntraBlocks
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Mode_Decision_for_8x8IntraBlocks
.LCPI6_0:
	.dword	0x3fdffe5c91d14e3c              # double 0.49990000000000001
	.text
	.globl	Mode_Decision_for_8x8IntraBlocks
	.p2align	5
	.type	Mode_Decision_for_8x8IntraBlocks,@function
Mode_Decision_for_8x8IntraBlocks:       # @Mode_Decision_for_8x8IntraBlocks
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI6_0)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI6_0)
	move	$fp, $a1
	fmov.d	$fs0, $fa0
	move	$s0, $a0
	vldi	$vr0, -1000
	fmadd.d	$fa0, $fs0, $fa0, $fa1
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $a1, 0
	addi.d	$a2, $sp, 20
	move	$a0, $s0
	move	$a1, $zero
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	ld.w	$a2, $fp, 0
	move	$s1, $a0
	add.d	$a0, $a2, $a1
	st.w	$a0, $fp, 0
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 20
	move	$a0, $s0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	ld.w	$a2, $fp, 0
	move	$s2, $a0
	add.d	$a0, $a2, $a1
	st.w	$a0, $fp, 0
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 20
	move	$a0, $s0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	ld.w	$a2, $fp, 0
	move	$s3, $a0
	add.d	$a0, $a2, $a1
	st.w	$a0, $fp, 0
	ori	$a1, $zero, 3
	addi.d	$a2, $sp, 20
	move	$a0, $s0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	or	$a0, $a0, $s3
	ld.w	$a1, $sp, 20
	ld.w	$a2, $fp, 0
	or	$a0, $a0, $s2
	or	$a0, $a0, $s1
	sltu	$a0, $zero, $a0
	add.d	$a1, $a2, $a1
	st.w	$a1, $fp, 0
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end6:
	.size	Mode_Decision_for_8x8IntraBlocks, .Lfunc_end6-Mode_Decision_for_8x8IntraBlocks
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Mode_Decision_for_Intra4x4Macroblock
.LCPI7_0:
	.dword	0x3fdffe5c91d14e3c              # double 0.49990000000000001
	.text
	.globl	Mode_Decision_for_Intra4x4Macroblock
	.p2align	5
	.type	Mode_Decision_for_Intra4x4Macroblock,@function
Mode_Decision_for_Intra4x4Macroblock:   # @Mode_Decision_for_Intra4x4Macroblock
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
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI7_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI7_0)
	move	$fp, $a0
	fmov.d	$fs0, $fa0
	move	$s1, $zero
	move	$s0, $zero
	st.w	$zero, $a0, 0
	vldi	$vr0, -1000
	fmadd.d	$fa0, $fs0, $fa0, $fa1
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s3, $fa0
	ori	$s4, $zero, 1
	ori	$s5, $zero, 4
	.p2align	4, , 16
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $sp, 20
	move	$a0, $s1
	move	$a1, $zero
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	move	$s2, $a0
	add.d	$s6, $a1, $s3
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 20
	move	$a0, $s1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	or	$s7, $a0, $s2
	add.d	$s6, $s6, $a1
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 20
	move	$a0, $s1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	move	$s2, $a0
	add.d	$s6, $s6, $a1
	ori	$a1, $zero, 3
	addi.d	$a2, $sp, 20
	move	$a0, $s1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	or	$a0, $a0, $s2
	or	$a0, $a0, $s7
	add.d	$a1, $s6, $a1
	sll.w	$a2, $s4, $s1
	ld.w	$a3, $fp, 0
	sltui	$a0, $a0, 1
	masknez	$a0, $a2, $a0
	or	$s0, $a0, $s0
	add.d	$a0, $a1, $a3
	addi.w	$s1, $s1, 1
	st.w	$a0, $fp, 0
	bne	$s1, $s5, .LBB7_1
# %bb.2:
	move	$a0, $s0
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
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
	.size	Mode_Decision_for_Intra4x4Macroblock, .Lfunc_end7-Mode_Decision_for_Intra4x4Macroblock
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function RDCost_for_8x8blocks
.LCPI8_0:
	.dword	0x4415af1d78b58c40              # double 1.0E+20
	.text
	.globl	RDCost_for_8x8blocks
	.p2align	5
	.type	RDCost_for_8x8blocks,@function
RDCost_for_8x8blocks:                   # @RDCost_for_8x8blocks
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
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	move	$s4, $a4
	move	$fp, $a3
	fmov.d	$fs0, $fa0
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.w	$zero, $sp, 172
	st.w	$zero, $sp, 164
	slli.d	$a0, $a2, 3
	move	$s3, $a2
	slli.d	$s2, $a2, 2
	andi	$s1, $a0, 8
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	bstrins.d	$s2, $zero, 2, 0
	addi.w	$s6, $s2, 0
	srli.d	$s7, $s1, 2
	srai.d	$s8, $s6, 2
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s5, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s5, 0
	ld.w	$a0, $a0, 20
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	sltui	$a1, $a3, 1
	and	$s0, $a1, $a0
	move	$a0, $a3
	move	$a1, $a4
	pcaddu18i	$ra, %call36(B8Mode2Value)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	move	$a4, $a0
	ld.w	$a0, $a1, 12
	ldptr.d	$a2, $a1, 14224
	ldptr.d	$a3, $a1, 14216
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	ori	$a3, $zero, 536
	mul.d	$a0, $a0, $a3
	add.d	$a3, $a2, $a0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4016
	slli.d	$a0, $a0, 3
	pcalau12i	$a2, %got_pc_hi20(assignSE2partition)
	ld.d	$a2, $a2, %got_pc_lo12(assignSE2partition)
	ldx.d	$a0, $a2, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	st.h	$zero, $a3, 480
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	beqz	$s0, .LBB8_3
# %bb.1:
	ld.w	$a0, $a1, 172
	pcalau12i	$a2, %pc_hi20(direct_pdir)
	ld.d	$a2, $a2, %pc_lo12(direct_pdir)
	add.w	$a0, $a0, $s8
	slli.d	$a0, $a0, 3
	ld.w	$a1, $a1, 168
	ldx.d	$a2, $a2, $a0
	add.w	$a1, $a1, $s7
	ldx.b	$a3, $a2, $a1
	bltz	$a3, .LBB8_20
# %bb.2:
	move	$s4, $s8
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(direct_ref_idx)
	ld.d	$a2, $a2, %pc_lo12(direct_ref_idx)
	ld.d	$a4, $a2, 0
	ld.d	$a2, $a2, 8
	ldx.d	$a4, $a4, $a0
	ldx.d	$a0, $a2, $a0
	ldx.b	$a2, $a4, $a1
	ldx.b	$a7, $a0, $a1
	srai.d	$a0, $a2, 63
	andn	$a6, $a2, $a0
	addi.d	$a0, $sp, 164
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$s0, $s3
	move	$a2, $s3
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(LumaResidualCoding8x8)
	jirl	$ra, $ra, 0
	b	.LBB8_7
.LBB8_3:
	ori	$a0, $zero, 2
	bne	$s4, $a0, .LBB8_6
# %bb.4:
	pcalau12i	$a0, %pc_hi20(active_pps)
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 196
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB8_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(wbp_weight)
	ld.d	$a0, $a0, %pc_lo12(wbp_weight)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 8
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ldx.d	$a0, $a0, $a2
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ldx.d	$a0, $a0, $a2
	ld.w	$a1, $a1, 0
	ld.w	$a0, $a0, 0
	add.d	$a0, $a1, $a0
	addi.w	$a0, $a0, 128
	ori	$a1, $zero, 255
	bltu	$a1, $a0, .LBB8_20
.LBB8_6:
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a0, $s4, -2
	sltui	$a0, $a0, 1
	sltui	$a1, $s4, 1
	maskeqz	$a2, $fp, $a1
	maskeqz	$a0, $fp, $a0
	masknez	$a0, $a0, $a1
	or	$a4, $a2, $a0
	addi.d	$a0, $s4, -1
	bstrpick.d	$a0, $a0, 15, 0
	sltui	$a0, $a0, 2
	maskeqz	$a5, $fp, $a0
	addi.d	$a0, $sp, 164
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$s0, $s3
	move	$a2, $s3
	move	$a3, $s4
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(LumaResidualCoding8x8)
	jirl	$ra, $ra, 0
	move	$s4, $s8
.LBB8_7:
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $s7, 0
	ldptr.w	$a0, $a1, 4168
	ld.d	$a2, $s5, 0
	ori	$a3, $zero, 3
	bne	$a0, $a3, .LBB8_11
# %bb.8:
	ld.w	$a0, $a2, 20
	ori	$s3, $zero, 1
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	beq	$a0, $s3, .LBB8_10
# %bb.9:
	addi.w	$a1, $zero, -1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(compute_residue_b8block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ldptr.w	$a0, $a1, 4168
	ld.d	$a2, $s5, 0
	ori	$a3, $zero, 3
	bne	$a0, $a3, .LBB8_11
.LBB8_10:                               # %.thread
	ld.w	$a0, $a2, 20
	bne	$a0, $s3, .LBB8_37
.LBB8_11:                               # %.thread208
	ld.w	$a3, $a2, 176
	ldptr.d	$a0, $a2, 14232
	pcalau12i	$a4, %pc_hi20(imgY_org)
	ld.d	$a4, $a4, %pc_lo12(imgY_org)
	ld.w	$a5, $a2, 196
	add.w	$a6, $a3, $s1
	pcalau12i	$a3, %got_pc_hi20(enc_picture)
	ld.d	$a3, $a3, %got_pc_lo12(enc_picture)
	ld.d	$a3, $a3, 0
	ld.w	$a2, $a2, 180
	ldptr.d	$a3, $a3, 6440
	move	$s1, $zero
	slli.d	$a2, $a2, 3
	alsl.d	$a2, $s6, $a2, 3
	add.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ori	$a3, $a3, 7
	addi.w	$a3, $a3, 0
	slli.d	$a5, $a5, 3
	alsl.d	$a5, $s6, $a5, 3
	add.d	$a4, $a4, $a5
	addi.d	$a5, $s6, -1
	slli.d	$a6, $a6, 1
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB8_12:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, 0
	ld.d	$t0, $a2, 0
	vldx	$vr1, $a7, $a6
	vldx	$vr2, $t0, $a6
	vilvl.h	$vr3, $vr0, $vr1
	vilvh.h	$vr1, $vr0, $vr1
	vilvl.h	$vr4, $vr0, $vr2
	vilvh.h	$vr2, $vr0, $vr2
	vsub.w	$vr1, $vr1, $vr2
	vsub.w	$vr2, $vr3, $vr4
	vpickve2gr.w	$a7, $vr2, 0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a0, $a7
	vpickve2gr.w	$t0, $vr2, 1
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a0, $t0
	vpickve2gr.w	$t1, $vr2, 2
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a0, $t1
	vpickve2gr.w	$t2, $vr2, 3
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a0, $t2
	add.d	$a7, $s1, $a7
	add.d	$a7, $a7, $t0
	add.d	$a7, $a7, $t1
	add.d	$a7, $a7, $t2
	vpickve2gr.w	$t0, $vr1, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a0, $t0
	vpickve2gr.w	$t1, $vr1, 1
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a0, $t1
	vpickve2gr.w	$t2, $vr1, 2
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a0, $t2
	vpickve2gr.w	$t3, $vr1, 3
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $a0, $t3
	add.d	$a7, $a7, $t0
	add.d	$a7, $a7, $t1
	add.d	$a7, $a7, $t2
	add.d	$s1, $a7, $t3
	addi.d	$a2, $a2, 8
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 8
	blt	$a5, $a3, .LBB8_12
# %bb.13:
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
.LBB8_14:                               # %.loopexit
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ldptr.w	$a1, $a1, 4008
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	beqz	$a1, .LBB8_16
# %bb.15:
	st.w	$a0, $sp, 124
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 8
	ld.d	$a2, $s7, 24
	st.w	$a0, $sp, 120
	ori	$a0, $zero, 104
	mul.d	$a0, $a1, $a0
	add.d	$a1, $a2, $a0
	pcalau12i	$a0, %got_pc_hi20(writeB8_typeInfo)
	ld.d	$a0, $a0, %got_pc_lo12(writeB8_typeInfo)
	ld.d	$a2, $a0, 0
	addi.d	$a0, $sp, 120
	jirl	$ra, $a2, 0
	ld.w	$s2, $sp, 132
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	beqz	$s3, .LBB8_17
	b	.LBB8_29
.LBB8_16:
	addi.d	$a2, $sp, 168
	addi.d	$a3, $sp, 172
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ue_linfo)
	jirl	$ra, $ra, 0
	ld.w	$s2, $sp, 168
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	bnez	$s3, .LBB8_29
.LBB8_17:
	ld.d	$a1, $s5, 0
	lu12i.w	$a0, 15
	move	$a2, $a3
	bstrins.d	$a2, $zero, 1, 1
	ori	$s3, $a0, 4093
	bnez	$a2, .LBB8_21
# %bb.18:
	ldptr.w	$a0, $a1, 14456
	ori	$a2, $zero, 2
	blt	$a0, $a2, .LBB8_21
# %bb.19:
	move	$a2, $s4
	move	$s4, $a3
	ori	$a3, $zero, 1
	move	$a0, $fp
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$s8, $a2
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(writeReferenceFrame)
	jirl	$ra, $ra, 0
	move	$a3, $s4
	ld.d	$a1, $s5, 0
	add.w	$s2, $a0, $s2
	b	.LBB8_22
.LBB8_20:
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI8_0)
	b	.LBB8_34
.LBB8_21:
	move	$s8, $s4
.LBB8_22:
	ldptr.w	$a0, $a1, 14460
	ori	$a2, $zero, 2
	and	$s3, $a3, $s3
	blt	$a0, $a2, .LBB8_35
# %bb.23:
	addi.d	$a0, $a3, -1
	bstrpick.d	$a2, $a0, 15, 0
	ori	$a0, $zero, 1
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	move	$s4, $s8
	bltu	$a0, $a2, .LBB8_26
# %bb.24:
	ld.w	$a1, $a1, 20
	bne	$a1, $a0, .LBB8_26
# %bb.25:
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s4
	move	$s8, $s4
	move	$s4, $a3
	move	$a3, $zero
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(writeReferenceFrame)
	jirl	$ra, $ra, 0
	move	$a3, $s4
	move	$s4, $s8
	add.w	$s2, $a0, $s2
.LBB8_26:
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	beqz	$s3, .LBB8_36
.LBB8_27:
	addi.d	$a0, $a3, -1
	bstrpick.d	$a0, $a0, 15, 0
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB8_29
# %bb.28:
	addi.d	$a2, $s5, 2
	addi.d	$a3, $s4, 2
	ori	$a5, $zero, 1
	move	$a0, $s5
	move	$a1, $s4
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	move	$a6, $fp
	pcaddu18i	$ra, %call36(writeMotionVector8x8)
	jirl	$ra, $ra, 0
	add.w	$s2, $a0, $s2
.LBB8_29:
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB8_31
# %bb.30:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 24
	ld.d	$a1, $s7, 24
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	addi.d	$s3, $a0, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(arienco_bits_written)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $s4, 0
	pcalau12i	$a2, %pc_hi20(cbp8x8)
	ld.w	$a2, $a2, %pc_lo12(cbp8x8)
	st.w	$a0, $sp, 168
	slt	$a1, $zero, $a1
	ori	$a4, $zero, 1
	move	$a0, $s0
	move	$a3, $s6
	move	$a5, $s3
	pcaddu18i	$ra, %call36(writeCBP_BIT_CABAC)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(arienco_bits_written)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 168
	sub.d	$a0, $a0, $a1
	st.w	$a0, $sp, 168
	add.w	$s2, $a0, $s2
	ld.w	$a0, $s4, 0
	bnez	$a0, .LBB8_32
	b	.LBB8_33
.LBB8_31:
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $s4, 0
	beqz	$a0, .LBB8_33
.LBB8_32:
	ld.w	$a2, $s6, 472
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeLumaCoeff8x8)
	jirl	$ra, $ra, 0
	add.w	$s2, $a0, $s2
.LBB8_33:
	movgr2fr.d	$fa0, $s1
	ffint.d.l	$fa0, $fa0
	movgr2fr.w	$fa1, $s2
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fa0, $fs0, $fa1, $fa0
.LBB8_34:
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
.LBB8_35:
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	move	$s4, $s8
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	bnez	$s3, .LBB8_27
.LBB8_36:
	addi.d	$a2, $s5, 2
	move	$s3, $a3
	addi.d	$a3, $s4, 2
	move	$a0, $s5
	move	$a1, $s4
	move	$a5, $zero
	move	$a6, $fp
	pcaddu18i	$ra, %call36(writeMotionVector8x8)
	jirl	$ra, $ra, 0
	move	$a3, $s3
	add.w	$s2, $a0, $s2
	b	.LBB8_27
.LBB8_37:                               # %.preheader
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	ldptr.w	$a0, $a1, 4728
	blez	$a0, .LBB8_42
# %bb.38:                               # %.lr.ph
	pcalau12i	$s6, %pc_hi20(imgY_org)
	pcalau12i	$a0, %got_pc_hi20(decs)
	ld.d	$s7, $a0, %got_pc_lo12(decs)
	move	$s3, $zero
	move	$s4, $zero
	vrepli.b	$vr4, 0
	vst	$vr4, $sp, 96                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB8_39:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_40 Depth 2
	ori	$a1, $zero, 8
	move	$a0, $s3
	move	$a2, $s0
	move	$a3, $fp
	move	$a4, $s8
	pcaddu18i	$ra, %call36(decode_one_b8block)
	jirl	$ra, $ra, 0
	vld	$vr4, $sp, 96                   # 16-byte Folded Reload
	ld.d	$a0, $s5, 0
	ld.w	$a1, $a0, 196
	ld.w	$a2, $a0, 192
	ld.d	$a3, $s7, 0
	add.w	$a4, $a1, $s2
	add.w	$a5, $a2, $s1
	ld.d	$a1, $a3, 8
	ldptr.d	$a0, $a0, 14232
	ld.d	$a3, $s6, %pc_lo12(imgY_org)
	slli.d	$a2, $s3, 3
	ldx.d	$a6, $a1, $a2
	addi.w	$a1, $a4, 7
	addi.d	$a2, $a4, -1
	alsl.d	$a3, $a4, $a3, 3
	alsl.d	$a4, $a4, $a6, 3
	slli.d	$a5, $a5, 1
	.p2align	4, , 16
.LBB8_40:                               #   Parent Loop BB8_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a3, 0
	ld.d	$a7, $a4, 0
	vldx	$vr0, $a6, $a5
	vldx	$vr1, $a7, $a5
	vilvl.h	$vr2, $vr4, $vr0
	vilvh.h	$vr0, $vr4, $vr0
	vilvl.h	$vr3, $vr4, $vr1
	vilvh.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vsub.w	$vr1, $vr2, $vr3
	vpickve2gr.w	$a6, $vr1, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a0, $a6
	vpickve2gr.w	$a7, $vr1, 1
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a0, $a7
	vpickve2gr.w	$t0, $vr1, 2
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a0, $t0
	vpickve2gr.w	$t1, $vr1, 3
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a0, $t1
	add.d	$a6, $s4, $a6
	add.d	$a6, $a6, $a7
	add.d	$a6, $a6, $t0
	add.d	$a6, $a6, $t1
	vpickve2gr.w	$a7, $vr0, 0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a0, $a7
	vpickve2gr.w	$t0, $vr0, 1
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a0, $t0
	vpickve2gr.w	$t1, $vr0, 2
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a0, $t1
	vpickve2gr.w	$t2, $vr0, 3
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a0, $t2
	add.d	$a6, $a6, $a7
	add.d	$a6, $a6, $t0
	add.d	$a6, $a6, $t1
	add.d	$s4, $a6, $t2
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 8
	blt	$a2, $a1, .LBB8_40
# %bb.41:                               #   in Loop: Header=BB8_39 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ldptr.w	$a0, $a1, 4728
	addi.d	$s3, $s3, 1
	blt	$s3, $a0, .LBB8_39
	b	.LBB8_43
.LBB8_42:                               # %.preheader.._crit_edge_crit_edge
	move	$s4, $zero
.LBB8_43:                               # %._crit_edge
	div.d	$s1, $s4, $a0
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	b	.LBB8_14
.Lfunc_end8:
	.size	RDCost_for_8x8blocks, .Lfunc_end8-RDCost_for_8x8blocks
                                        # -- End function
	.globl	I16Offset                       # -- Begin function I16Offset
	.p2align	5
	.type	I16Offset,@function
I16Offset:                              # @I16Offset
# %bb.0:
	andi	$a2, $a0, 15
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 13
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 1
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	srli.d	$a0, $a0, 2
	andi	$a0, $a0, 12
	add.d	$a0, $a0, $a1
	add.w	$a0, $a0, $a2
	ret
.Lfunc_end9:
	.size	I16Offset, .Lfunc_end9-I16Offset
                                        # -- End function
	.globl	SetModesAndRefframeForBlocks    # -- Begin function SetModesAndRefframeForBlocks
	.p2align	5
	.type	SetModesAndRefframeForBlocks,@function
SetModesAndRefframeForBlocks:           # @SetModesAndRefframeForBlocks
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a2, $a1, %got_pc_lo12(img)
	ld.d	$a5, $a2, 0
	ld.w	$a1, $a5, 12
	ldptr.d	$a3, $a5, 14224
	ori	$a4, $zero, 536
	mul.d	$a1, $a1, $a4
	add.d	$a1, $a3, $a1
	ld.w	$a3, $a5, 20
	st.w	$a0, $a1, 72
	ori	$a6, $zero, 1
	addi.d	$a4, $a1, 480
	bne	$a0, $a6, .LBB10_25
# %bb.1:                                # %.thread
	lu12i.w	$a6, 3
	ori	$a6, $a6, 2122
	ldx.h	$a5, $a5, $a6
	st.h	$a5, $a1, 480
.LBB10_2:                               # %.loopexit240
	pcalau12i	$a5, %pc_hi20(best8x8pdir)
	addi.d	$a5, $a5, %pc_lo12(best8x8pdir)
	slli.d	$a6, $a0, 2
	st.w	$a0, $a1, 376
	ldx.b	$a6, $a5, $a6
	alsl.d	$a5, $a0, $a5, 2
	st.w	$a6, $a1, 392
	st.w	$a0, $a1, 380
	ld.b	$a6, $a5, 1
	st.w	$a6, $a1, 396
	st.w	$a0, $a1, 384
	ld.b	$a6, $a5, 2
	st.w	$a6, $a1, 400
	st.w	$a0, $a1, 388
	ld.b	$a5, $a5, 3
.LBB10_3:                               # %.loopexit240.thread318
	st.w	$a5, $a1, 404
.LBB10_4:                               # %.loopexit240.thread318
	ori	$a5, $zero, 1
	pcalau12i	$a6, %pc_hi20(best8x8fwref)
	addi.d	$a7, $a6, %pc_lo12(best8x8fwref)
	bne	$a3, $a5, .LBB10_29
# %bb.5:                                # %.preheader
	pcalau12i	$a6, %pc_hi20(best8x8pdir)
	addi.d	$a6, $a6, %pc_lo12(best8x8pdir)
	alsl.d	$a6, $a0, $a6, 2
	alsl.d	$a7, $a0, $a7, 2
	pcalau12i	$t0, %pc_hi20(best8x8bwref)
	addi.d	$t0, $t0, %pc_lo12(best8x8bwref)
	alsl.d	$t0, $a0, $t0, 2
	ori	$t1, $zero, 8
	pcalau12i	$t2, %pc_hi20(best8x8mode)
	addi.d	$t2, $t2, %pc_lo12(best8x8mode)
	pcalau12i	$t3, %pc_hi20(direct_ref_idx)
	pcalau12i	$t4, %got_pc_hi20(enc_picture)
	ld.d	$t4, $t4, %got_pc_lo12(enc_picture)
	move	$t5, $zero
	ori	$t6, $zero, 4
	b	.LBB10_7
	.p2align	4, , 16
.LBB10_6:                               #   in Loop: Header=BB10_7 Depth=1
	addi.w	$t5, $t5, 1
	beq	$t5, $t6, .LBB10_39
.LBB10_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_10 Depth 2
	ld.d	$t7, $a2, 0
	ld.w	$t8, $t7, 172
	move	$t7, $zero
	add.w	$fp, $t8, $t5
	andi	$t8, $t5, 2
	slli.d	$fp, $fp, 3
	b	.LBB10_10
	.p2align	4, , 16
.LBB10_8:                               #   in Loop: Header=BB10_10 Depth=2
	ldx.bu	$s1, $t0, $s2
.LBB10_9:                               #   in Loop: Header=BB10_10 Depth=2
	ld.d	$s2, $t4, 0
	ldptr.d	$s2, $s2, 6488
	ld.d	$s2, $s2, 8
	ldx.d	$s2, $s2, $fp
	addi.w	$t7, $t7, 1
	stx.b	$s1, $s2, $s0
	beq	$t7, $t6, .LBB10_6
.LBB10_10:                              #   Parent Loop BB10_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $a2, 0
	ld.w	$s0, $s0, 168
	add.w	$s0, $t7, $s0
	bstrpick.d	$s1, $t7, 31, 1
	or	$s1, $s1, $t8
	bne	$a0, $t1, .LBB10_13
# %bb.11:                               #   in Loop: Header=BB10_10 Depth=2
	addi.w	$s2, $s1, 0
	slli.d	$s2, $s2, 1
	ldx.hu	$s2, $t2, $s2
	bnez	$s2, .LBB10_18
# %bb.12:                               #   in Loop: Header=BB10_10 Depth=2
	ld.d	$s1, $t3, %pc_lo12(direct_ref_idx)
	ld.d	$s2, $t4, 0
	ld.d	$s1, $s1, 0
	ldptr.d	$s2, $s2, 6488
	ldx.d	$s1, $s1, $fp
	ld.d	$s2, $s2, 0
	ldx.b	$s1, $s1, $s0
	ldx.d	$s2, $s2, $fp
	stx.b	$s1, $s2, $s0
	ld.d	$s1, $t3, %pc_lo12(direct_ref_idx)
	ld.d	$s1, $s1, 8
	ldx.d	$s1, $s1, $fp
	ldx.bu	$s1, $s1, $s0
	b	.LBB10_9
	.p2align	4, , 16
.LBB10_13:                              #   in Loop: Header=BB10_10 Depth=2
	bne	$a0, $a5, .LBB10_18
# %bb.14:                               #   in Loop: Header=BB10_10 Depth=2
	ld.hu	$s2, $a4, 0
	beqz	$s2, .LBB10_18
# %bb.15:                               #   in Loop: Header=BB10_10 Depth=2
	addi.w	$s2, $s1, 0
	ldx.bu	$s2, $a6, $s2
	andi	$s3, $s2, 253
	bnez	$s3, .LBB10_18
# %bb.16:                               #   in Loop: Header=BB10_10 Depth=2
	addi.d	$s2, $s2, -1
	bltu	$a5, $s2, .LBB10_18
# %bb.17:                               #   in Loop: Header=BB10_10 Depth=2
	ld.d	$s1, $t4, 0
	ldptr.d	$s1, $s1, 6488
	ld.d	$s1, $s1, 0
	ldx.d	$s2, $s1, $fp
	move	$s1, $zero
	stx.b	$zero, $s2, $s0
	b	.LBB10_9
	.p2align	4, , 16
.LBB10_18:                              # %.thread231
                                        #   in Loop: Header=BB10_10 Depth=2
	addi.w	$s2, $s1, 0
	ldx.bu	$s3, $a6, $s2
	ori	$s1, $zero, 255
	andi	$s4, $s3, 253
	ori	$s3, $zero, 255
	bnez	$s4, .LBB10_22
# %bb.19:                               #   in Loop: Header=BB10_10 Depth=2
	bne	$a0, $t1, .LBB10_21
# %bb.20:                               #   in Loop: Header=BB10_10 Depth=2
	slli.d	$s3, $s2, 1
	ldx.hu	$s4, $t2, $s3
	ori	$s3, $zero, 255
	beqz	$s4, .LBB10_22
.LBB10_21:                              #   in Loop: Header=BB10_10 Depth=2
	ldx.bu	$s3, $a7, $s2
.LBB10_22:                              #   in Loop: Header=BB10_10 Depth=2
	ld.d	$s4, $t4, 0
	ldptr.d	$s4, $s4, 6488
	ld.d	$s4, $s4, 0
	ldx.d	$s4, $s4, $fp
	stx.b	$s3, $s4, $s0
	ldx.bu	$s3, $a6, $s2
	addi.d	$s3, $s3, -1
	bltu	$a5, $s3, .LBB10_9
# %bb.23:                               #   in Loop: Header=BB10_10 Depth=2
	bne	$a0, $t1, .LBB10_8
# %bb.24:                               #   in Loop: Header=BB10_10 Depth=2
	slli.d	$s3, $s2, 1
	ldx.hu	$s3, $t2, $s3
	bnez	$s3, .LBB10_8
	b	.LBB10_9
.LBB10_25:
	ori	$a6, $zero, 14
	st.h	$zero, $a1, 480
	bltu	$a6, $a0, .LBB10_85
# %bb.26:
	slli.d	$a6, $a0, 2
	pcalau12i	$a7, %pc_hi20(.LJTI10_0)
	addi.d	$a7, $a7, %pc_lo12(.LJTI10_0)
	ldx.w	$a6, $a7, $a6
	add.d	$a6, $a7, $a6
	jr	$a6
.LBB10_27:                              # %.preheader241
	pcalau12i	$a0, %pc_hi20(direct_pdir)
	ld.d	$a0, $a0, %pc_lo12(direct_pdir)
	ori	$a4, $zero, 1
	st.w	$zero, $a1, 376
	bne	$a3, $a4, .LBB10_71
# %bb.28:                               # %.thread321
	ld.w	$a3, $a5, 172
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a0, $a3
	ld.w	$a4, $a5, 168
	ldx.b	$a3, $a3, $a4
	st.w	$a3, $a1, 392
	st.w	$zero, $a1, 380
	ld.w	$a3, $a5, 172
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a0, $a3
	ld.w	$a4, $a5, 168
	add.d	$a3, $a3, $a4
	ld.b	$a3, $a3, 2
	st.w	$a3, $a1, 396
	st.w	$zero, $a1, 384
	ld.w	$a3, $a5, 172
	alsl.d	$a3, $a3, $a0, 3
	ld.d	$a3, $a3, 16
	ld.w	$a4, $a5, 168
	ldx.b	$a3, $a3, $a4
	st.w	$a3, $a1, 400
	st.w	$zero, $a1, 388
	ld.w	$a3, $a5, 172
	alsl.d	$a0, $a3, $a0, 3
	ld.d	$a0, $a0, 16
	ld.w	$a3, $a5, 168
	add.d	$a0, $a0, $a3
	ld.b	$a0, $a0, 2
	st.w	$a0, $a1, 404
	b	.LBB10_63
.LBB10_29:                              # %.preheader234
	pcalau12i	$a4, %pc_hi20(best8x8pdir)
	addi.d	$a4, $a4, %pc_lo12(best8x8pdir)
	alsl.d	$a4, $a0, $a4, 2
	alsl.d	$a0, $a0, $a7, 2
	pcalau12i	$a5, %got_pc_hi20(enc_picture)
	ld.d	$a5, $a5, %got_pc_lo12(enc_picture)
	move	$a6, $zero
	ori	$a7, $zero, 4
	b	.LBB10_31
	.p2align	4, , 16
.LBB10_30:                              #   in Loop: Header=BB10_31 Depth=1
	ld.d	$t2, $a5, 0
	ldptr.d	$t2, $t2, 6488
	ld.d	$t2, $t2, 0
	ldx.d	$t0, $t2, $t0
	add.d	$t0, $t0, $t3
	addi.w	$a6, $a6, 1
	st.b	$t1, $t0, 3
	beq	$a6, $a7, .LBB10_39
.LBB10_31:                              # =>This Inner Loop Header: Depth=1
	andi	$t1, $a6, 2
	ldx.bu	$t0, $a4, $t1
	ori	$t2, $zero, 255
	andi	$t0, $t0, 253
	ori	$t3, $zero, 255
	bnez	$t0, .LBB10_33
# %bb.32:                               #   in Loop: Header=BB10_31 Depth=1
	ldx.bu	$t3, $a0, $t1
.LBB10_33:                              #   in Loop: Header=BB10_31 Depth=1
	ld.d	$t0, $a5, 0
	ld.d	$t4, $a2, 0
	ldptr.d	$t0, $t0, 6488
	ld.w	$t5, $t4, 172
	ld.d	$t6, $t0, 0
	add.w	$t0, $a6, $t5
	ld.w	$t4, $t4, 168
	slli.d	$t0, $t0, 3
	ldx.d	$t5, $t6, $t0
	stx.b	$t3, $t5, $t4
	ldx.bu	$t3, $a4, $t1
	andi	$t3, $t3, 253
	bnez	$t3, .LBB10_35
# %bb.34:                               #   in Loop: Header=BB10_31 Depth=1
	ldx.bu	$t2, $a0, $t1
.LBB10_35:                              #   in Loop: Header=BB10_31 Depth=1
	ld.d	$t3, $a5, 0
	ldptr.d	$t3, $t3, 6488
	ld.d	$t4, $a2, 0
	ld.d	$t3, $t3, 0
	ld.w	$t4, $t4, 168
	ldx.d	$t3, $t3, $t0
	add.d	$t3, $t3, $t4
	st.b	$t2, $t3, 1
	ld.d	$t3, $a2, 0
	addi.d	$t2, $t1, 1
	ldx.bu	$t4, $a4, $t2
	ld.w	$t3, $t3, 168
	ori	$t1, $zero, 255
	andi	$t5, $t4, 253
	ori	$t4, $zero, 255
	bnez	$t5, .LBB10_37
# %bb.36:                               #   in Loop: Header=BB10_31 Depth=1
	ldx.bu	$t4, $a0, $t2
.LBB10_37:                              #   in Loop: Header=BB10_31 Depth=1
	ld.d	$t5, $a5, 0
	ldptr.d	$t5, $t5, 6488
	ld.d	$t5, $t5, 0
	ldx.d	$t5, $t5, $t0
	add.d	$t3, $t5, $t3
	st.b	$t4, $t3, 2
	ld.d	$t3, $a2, 0
	ldx.bu	$t4, $a4, $t2
	ld.w	$t3, $t3, 168
	andi	$t4, $t4, 253
	bnez	$t4, .LBB10_30
# %bb.38:                               #   in Loop: Header=BB10_31 Depth=1
	ldx.bu	$t1, $a0, $t2
	b	.LBB10_30
.LBB10_39:                              # %.loopexit233
	ori	$a0, $zero, 1
	bne	$a3, $a0, .LBB10_74
.LBB10_40:                              # %.loopexit233.thread
	ld.d	$a4, $a2, 0
	ld.w	$a0, $a4, 168
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	ld.d	$a2, $a2, 0
	ldptr.d	$a3, $a2, 6488
	ldptr.d	$a5, $a2, 6496
	ld.d	$t1, $a3, 0
	ld.d	$t2, $a3, 8
	ld.d	$t3, $a5, 0
	ld.d	$t4, $a5, 8
	addi.d	$a3, $a2, 24
	ld.w	$t5, $a4, 172
	addi.d	$a4, $a0, 1
	addi.d	$a5, $a0, 2
	addi.d	$a6, $a0, 3
	addi.w	$a7, $t5, 3
	addi.d	$t0, $t5, -1
	alsl.d	$t1, $t5, $t1, 3
	alsl.d	$t2, $t5, $t2, 3
	alsl.d	$t3, $t5, $t3, 3
	alsl.d	$t4, $t5, $t4, 3
	addi.w	$t5, $zero, -1
	b	.LBB10_42
	.p2align	4, , 16
.LBB10_41:                              #   in Loop: Header=BB10_42 Depth=1
	stx.d	$t8, $t6, $fp
	addi.d	$t0, $t0, 1
	addi.d	$t1, $t1, 8
	addi.d	$t2, $t2, 8
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, 8
	bge	$t0, $a7, .LBB10_84
.LBB10_42:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t7, $t1, 0
	ldx.b	$t6, $t7, $a0
	move	$s1, $t5
	bltz	$t6, .LBB10_44
# %bb.43:                               #   in Loop: Header=BB10_42 Depth=1
	ld.w	$t8, $a1, 432
	slli.d	$fp, $t8, 8
	alsl.d	$t8, $t8, $fp, 3
	add.d	$t8, $a3, $t8
	slli.d	$t6, $t6, 3
	ldx.d	$s1, $t8, $t6
.LBB10_44:                              #   in Loop: Header=BB10_42 Depth=1
	ld.d	$fp, $t2, 0
	ld.d	$t8, $t3, 0
	ldx.b	$s2, $fp, $a0
	ld.d	$t6, $t4, 0
	slli.d	$s0, $a0, 3
	stx.d	$s1, $t8, $s0
	move	$s1, $t5
	bltz	$s2, .LBB10_46
# %bb.45:                               #   in Loop: Header=BB10_42 Depth=1
	ld.w	$s1, $a1, 432
	slli.d	$s3, $s1, 8
	alsl.d	$s1, $s1, $s3, 3
	add.d	$s1, $a2, $s1
	alsl.d	$s1, $s2, $s1, 3
	ld.d	$s1, $s1, 288
.LBB10_46:                              #   in Loop: Header=BB10_42 Depth=1
	stx.d	$s1, $t6, $s0
	ldx.b	$s1, $t7, $a4
	ldx.b	$s0, $fp, $a4
	move	$s2, $t5
	bltz	$s1, .LBB10_48
# %bb.47:                               #   in Loop: Header=BB10_42 Depth=1
	ld.w	$s2, $a1, 432
	slli.d	$s3, $s2, 8
	alsl.d	$s2, $s2, $s3, 3
	add.d	$s2, $a3, $s2
	slli.d	$s1, $s1, 3
	ldx.d	$s2, $s2, $s1
.LBB10_48:                              #   in Loop: Header=BB10_42 Depth=1
	slli.d	$s1, $a4, 3
	stx.d	$s2, $t8, $s1
	move	$s2, $t5
	bltz	$s0, .LBB10_50
# %bb.49:                               #   in Loop: Header=BB10_42 Depth=1
	ld.w	$s2, $a1, 432
	slli.d	$s3, $s2, 8
	alsl.d	$s2, $s2, $s3, 3
	add.d	$s2, $a2, $s2
	alsl.d	$s0, $s0, $s2, 3
	ld.d	$s2, $s0, 288
.LBB10_50:                              #   in Loop: Header=BB10_42 Depth=1
	stx.d	$s2, $t6, $s1
	ldx.b	$s1, $t7, $a5
	ldx.b	$s0, $fp, $a5
	move	$s2, $t5
	bltz	$s1, .LBB10_52
# %bb.51:                               #   in Loop: Header=BB10_42 Depth=1
	ld.w	$s2, $a1, 432
	slli.d	$s3, $s2, 8
	alsl.d	$s2, $s2, $s3, 3
	add.d	$s2, $a3, $s2
	slli.d	$s1, $s1, 3
	ldx.d	$s2, $s2, $s1
.LBB10_52:                              #   in Loop: Header=BB10_42 Depth=1
	slli.d	$s1, $a5, 3
	stx.d	$s2, $t8, $s1
	move	$s2, $t5
	bltz	$s0, .LBB10_54
# %bb.53:                               #   in Loop: Header=BB10_42 Depth=1
	ld.w	$s2, $a1, 432
	slli.d	$s3, $s2, 8
	alsl.d	$s2, $s2, $s3, 3
	add.d	$s2, $a2, $s2
	alsl.d	$s0, $s0, $s2, 3
	ld.d	$s2, $s0, 288
.LBB10_54:                              #   in Loop: Header=BB10_42 Depth=1
	stx.d	$s2, $t6, $s1
	ldx.b	$s0, $t7, $a6
	ldx.b	$t7, $fp, $a6
	move	$s1, $t5
	bltz	$s0, .LBB10_56
# %bb.55:                               #   in Loop: Header=BB10_42 Depth=1
	ld.w	$fp, $a1, 432
	slli.d	$s1, $fp, 8
	alsl.d	$fp, $fp, $s1, 3
	add.d	$fp, $a3, $fp
	slli.d	$s0, $s0, 3
	ldx.d	$s1, $fp, $s0
.LBB10_56:                              #   in Loop: Header=BB10_42 Depth=1
	slli.d	$fp, $a6, 3
	stx.d	$s1, $t8, $fp
	move	$t8, $t5
	bltz	$t7, .LBB10_41
# %bb.57:                               #   in Loop: Header=BB10_42 Depth=1
	ld.w	$t8, $a1, 432
	slli.d	$s0, $t8, 8
	alsl.d	$t8, $t8, $s0, 3
	add.d	$t8, $a2, $t8
	alsl.d	$t7, $t7, $t8, 3
	ld.d	$t8, $t7, 288
	b	.LBB10_41
.LBB10_58:                              # %.preheader246
	vrepli.w	$vr0, 11
	vst	$vr0, $a1, 376
	vrepli.b	$vr0, -1
	vst	$vr0, $a1, 392
	ori	$a4, $zero, 1
	beq	$a3, $a4, .LBB10_60
	b	.LBB10_68
.LBB10_59:                              # %.preheader248
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 376
	addi.w	$a4, $zero, -1
	st.d	$a4, $a1, 392
	st.d	$a4, $a1, 400
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB10_68
.LBB10_60:
	beqz	$a0, .LBB10_63
# %bb.61:                               # %.lr.ph262.preheader
	ld.w	$a3, $a5, 172
	addi.d	$a0, $a3, -1
	slli.d	$a3, $a3, 3
	pcalau12i	$a4, %got_pc_hi20(enc_picture)
	ld.d	$a4, $a4, %got_pc_lo12(enc_picture)
	addi.w	$a6, $zero, -1
	lu32i.d	$a6, 0
	.p2align	4, , 16
.LBB10_62:                              # %.lr.ph262
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, 0
	ldptr.d	$a7, $a7, 6488
	ld.d	$a7, $a7, 0
	ldx.d	$a7, $a7, $a3
	ld.w	$a5, $a5, 168
	stx.w	$a6, $a7, $a5
	ld.d	$a5, $a4, 0
	ldptr.d	$a5, $a5, 6488
	ld.d	$a5, $a5, 8
	ld.d	$a7, $a2, 0
	ldx.d	$a5, $a5, $a3
	ld.w	$a7, $a7, 168
	stx.w	$a6, $a5, $a7
	ld.d	$a5, $a2, 0
	ld.w	$a7, $a5, 172
	addi.w	$a7, $a7, 3
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 8
	blt	$a0, $a7, .LBB10_62
	b	.LBB10_40
.LBB10_63:                              # %.lr.ph264.preheader
	ld.w	$a3, $a5, 172
	addi.d	$a0, $a3, -1
	slli.d	$a3, $a3, 3
	pcalau12i	$a4, %got_pc_hi20(enc_picture)
	ld.d	$a4, $a4, %got_pc_lo12(enc_picture)
	pcalau12i	$a6, %pc_hi20(direct_ref_idx)
	.p2align	4, , 16
.LBB10_64:                              # %.lr.ph264
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, 0
	ld.d	$t0, $a6, %pc_lo12(direct_ref_idx)
	ldptr.d	$a7, $a7, 6488
	ld.d	$t0, $t0, 0
	ld.d	$a7, $a7, 0
	ld.w	$a5, $a5, 168
	ldx.d	$t0, $t0, $a3
	ldx.d	$a7, $a7, $a3
	ldx.w	$t0, $t0, $a5
	stx.w	$t0, $a7, $a5
	ld.d	$a5, $a4, 0
	ld.d	$a7, $a6, %pc_lo12(direct_ref_idx)
	ldptr.d	$a5, $a5, 6488
	ld.d	$t0, $a2, 0
	ld.d	$a7, $a7, 8
	ld.d	$a5, $a5, 8
	ld.w	$t0, $t0, 168
	ldx.d	$a7, $a7, $a3
	ldx.d	$a5, $a5, $a3
	ldx.w	$a7, $a7, $t0
	stx.w	$a7, $a5, $t0
	ld.d	$a5, $a2, 0
	ld.w	$a7, $a5, 172
	addi.w	$a7, $a7, 3
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 8
	blt	$a0, $a7, .LBB10_64
	b	.LBB10_40
.LBB10_65:                              # %.preheader243
	vrepli.w	$vr0, 14
	vst	$vr0, $a1, 376
	vrepli.b	$vr0, -1
	vst	$vr0, $a1, 392
	st.w	$zero, $a1, 472
	b	.LBB10_4
.LBB10_66:                              # %.preheader244
	pcalau12i	$a5, %pc_hi20(best8x8mode)
	addi.d	$a5, $a5, %pc_lo12(best8x8mode)
	ld.h	$a6, $a5, 0
	st.w	$a6, $a1, 376
	pcalau12i	$a6, %pc_hi20(best8x8pdir)
	addi.d	$a6, $a6, %pc_lo12(best8x8pdir)
	ld.b	$a7, $a6, 32
	ld.h	$t0, $a5, 2
	st.w	$a7, $a1, 392
	st.w	$t0, $a1, 380
	ld.b	$a7, $a6, 33
	ld.h	$t0, $a5, 4
	st.w	$a7, $a1, 396
	st.w	$t0, $a1, 384
	ld.b	$a7, $a6, 34
	ld.h	$a5, $a5, 6
	st.w	$a7, $a1, 400
	st.w	$a5, $a1, 388
	ld.b	$a5, $a6, 35
	b	.LBB10_3
.LBB10_67:                              # %.preheader250
	vrepli.w	$vr0, 13
	vst	$vr0, $a1, 376
	vrepli.b	$vr0, -1
	vst	$vr0, $a1, 392
	ori	$a4, $zero, 1
	st.w	$a4, $a1, 472
	ori	$a4, $zero, 1
	beq	$a3, $a4, .LBB10_60
.LBB10_68:
	beqz	$a0, .LBB10_72
# %bb.69:                               # %.lr.ph.preheader
	ld.w	$a3, $a5, 172
	addi.d	$a0, $a3, -1
	slli.d	$a3, $a3, 3
	pcalau12i	$a4, %got_pc_hi20(enc_picture)
	ld.d	$a4, $a4, %got_pc_lo12(enc_picture)
	addi.w	$a6, $zero, -1
	lu32i.d	$a6, 0
	.p2align	4, , 16
.LBB10_70:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, 0
	ldptr.d	$a7, $a7, 6488
	ld.d	$a7, $a7, 0
	ldx.d	$a7, $a7, $a3
	ld.w	$a5, $a5, 168
	stx.w	$a6, $a7, $a5
	ld.d	$a5, $a2, 0
	ld.w	$a7, $a5, 172
	addi.w	$a7, $a7, 3
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 8
	blt	$a0, $a7, .LBB10_70
	b	.LBB10_74
.LBB10_71:                              # %.thread323
	st.w	$zero, $a1, 404
	st.d	$zero, $a1, 396
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 380
.LBB10_72:                              # %.lr.ph260.preheader
	ld.w	$a3, $a5, 172
	addi.d	$a0, $a3, -1
	slli.d	$a3, $a3, 3
	pcalau12i	$a4, %got_pc_hi20(enc_picture)
	ld.d	$a4, $a4, %got_pc_lo12(enc_picture)
	.p2align	4, , 16
.LBB10_73:                              # %.lr.ph260
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, 0
	ldptr.d	$a6, $a6, 6488
	ld.d	$a6, $a6, 0
	ldx.d	$a6, $a6, $a3
	ld.w	$a5, $a5, 168
	stx.w	$zero, $a6, $a5
	ld.d	$a5, $a2, 0
	ld.w	$a6, $a5, 172
	addi.w	$a6, $a6, 3
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 8
	blt	$a0, $a6, .LBB10_73
.LBB10_74:                              # %.loopexit233.thread320
	ld.d	$a3, $a2, 0
	ld.w	$a0, $a3, 168
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	ld.d	$a2, $a2, 0
	ldptr.d	$a4, $a2, 6488
	ldptr.d	$a5, $a2, 6496
	ld.d	$t0, $a4, 0
	ld.d	$t1, $a5, 0
	addi.d	$a2, $a2, 24
	ld.w	$t2, $a3, 172
	addi.d	$a3, $a0, 1
	addi.d	$a4, $a0, 2
	addi.d	$a5, $a0, 3
	addi.w	$a6, $t2, 3
	addi.d	$a7, $t2, -1
	alsl.d	$t0, $t2, $t0, 3
	alsl.d	$t1, $t2, $t1, 3
	addi.w	$t2, $zero, -1
	slli.d	$t3, $a0, 3
	slli.d	$t4, $a3, 3
	slli.d	$t5, $a4, 3
	slli.d	$t6, $a5, 3
	b	.LBB10_76
	.p2align	4, , 16
.LBB10_75:                              #   in Loop: Header=BB10_76 Depth=1
	stx.d	$fp, $t8, $t6
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 8
	addi.d	$t1, $t1, 8
	bge	$a7, $a6, .LBB10_84
.LBB10_76:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t7, $t0, 0
	ldx.b	$t8, $t7, $a0
	move	$fp, $t2
	bltz	$t8, .LBB10_78
# %bb.77:                               #   in Loop: Header=BB10_76 Depth=1
	ld.w	$fp, $a1, 432
	slli.d	$s0, $fp, 8
	alsl.d	$fp, $fp, $s0, 3
	add.d	$fp, $a2, $fp
	slli.d	$t8, $t8, 3
	ldx.d	$fp, $fp, $t8
.LBB10_78:                              #   in Loop: Header=BB10_76 Depth=1
	ld.d	$t8, $t1, 0
	stx.d	$fp, $t8, $t3
	ldx.b	$fp, $t7, $a3
	move	$s0, $t2
	bltz	$fp, .LBB10_80
# %bb.79:                               #   in Loop: Header=BB10_76 Depth=1
	ld.w	$s0, $a1, 432
	slli.d	$s1, $s0, 8
	alsl.d	$s0, $s0, $s1, 3
	add.d	$s0, $a2, $s0
	slli.d	$fp, $fp, 3
	ldx.d	$s0, $s0, $fp
.LBB10_80:                              #   in Loop: Header=BB10_76 Depth=1
	stx.d	$s0, $t8, $t4
	ldx.b	$fp, $t7, $a4
	move	$s0, $t2
	bltz	$fp, .LBB10_82
# %bb.81:                               #   in Loop: Header=BB10_76 Depth=1
	ld.w	$s0, $a1, 432
	slli.d	$s1, $s0, 8
	alsl.d	$s0, $s0, $s1, 3
	add.d	$s0, $a2, $s0
	slli.d	$fp, $fp, 3
	ldx.d	$s0, $s0, $fp
.LBB10_82:                              #   in Loop: Header=BB10_76 Depth=1
	stx.d	$s0, $t8, $t5
	ldx.b	$t7, $t7, $a5
	move	$fp, $t2
	bltz	$t7, .LBB10_75
# %bb.83:                               #   in Loop: Header=BB10_76 Depth=1
	ld.w	$fp, $a1, 432
	slli.d	$s0, $fp, 8
	alsl.d	$fp, $fp, $s0, 3
	add.d	$fp, $a2, $fp
	slli.d	$t7, $t7, 3
	ldx.d	$fp, $fp, $t7
	b	.LBB10_75
.LBB10_84:                              # %.loopexit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB10_85:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	SetModesAndRefframeForBlocks, .Lfunc_end10-SetModesAndRefframeForBlocks
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI10_0:
	.word	.LBB10_27-.LJTI10_0
	.word	.LBB10_85-.LJTI10_0
	.word	.LBB10_2-.LJTI10_0
	.word	.LBB10_2-.LJTI10_0
	.word	.LBB10_85-.LJTI10_0
	.word	.LBB10_85-.LJTI10_0
	.word	.LBB10_85-.LJTI10_0
	.word	.LBB10_85-.LJTI10_0
	.word	.LBB10_66-.LJTI10_0
	.word	.LBB10_58-.LJTI10_0
	.word	.LBB10_59-.LJTI10_0
	.word	.LBB10_85-.LJTI10_0
	.word	.LBB10_85-.LJTI10_0
	.word	.LBB10_67-.LJTI10_0
	.word	.LBB10_65-.LJTI10_0
                                        # -- End function
	.text
	.globl	Intra16x16_Mode_Decision        # -- Begin function Intra16x16_Mode_Decision
	.p2align	5
	.type	Intra16x16_Mode_Decision,@function
Intra16x16_Mode_Decision:               # @Intra16x16_Mode_Decision
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(intrapred_luma_16x16)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(find_sad_16x16)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(dct_luma_16x16)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 364
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end11:
	.size	Intra16x16_Mode_Decision, .Lfunc_end11-Intra16x16_Mode_Decision
                                        # -- End function
	.globl	SetCoeffAndReconstruction8x8    # -- Begin function SetCoeffAndReconstruction8x8
	.p2align	5
	.type	SetCoeffAndReconstruction8x8,@function
SetCoeffAndReconstruction8x8:           # @SetCoeffAndReconstruction8x8
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2256
	sub.d	$sp, $sp, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s3, $a0, %got_pc_lo12(img)
	ld.w	$a1, $fp, 472
	ld.d	$a0, $s3, 0
	beqz	$a1, .LBB12_20
# %bb.1:                                # %.preheader160
	ld.w	$a2, $a0, 20
	pcalau12i	$a0, %pc_hi20(tr8x8)
	addi.d	$s0, $a0, %pc_lo12(tr8x8)
	lu12i.w	$s4, 1
	ori	$a0, $s4, 2052
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ldx.h	$a0, $s0, $a0
	st.w	$a0, $fp, 376
	ori	$a0, $s4, 2060
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ldx.b	$a0, $s0, $a0
	ori	$a1, $s4, 2054
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ldx.h	$a1, $s0, $a1
	st.w	$a0, $fp, 392
	st.w	$a1, $fp, 380
	ori	$a0, $s4, 2061
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ldx.b	$a0, $s0, $a0
	ori	$a1, $s4, 2056
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ldx.h	$a1, $s0, $a1
	st.w	$a0, $fp, 396
	st.w	$a1, $fp, 384
	ori	$a0, $s4, 2062
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ldx.b	$a0, $s0, $a0
	ori	$a1, $s4, 2058
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ldx.h	$a1, $s0, $a1
	st.w	$a0, $fp, 400
	st.w	$a1, $fp, 388
	ori	$a0, $s4, 2063
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ldx.b	$a0, $s0, $a0
	ori	$a1, $zero, 1
	st.w	$a0, $fp, 404
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	bne	$a2, $a1, .LBB12_31
# %bb.2:                                # %.preheader154.preheader
	addi.d	$a3, $fp, 392
	ori	$a4, $s4, 2064
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a5, $a0, %got_pc_lo12(enc_picture)
	move	$a6, $zero
	move	$a7, $zero
	ori	$t0, $s4, 2068
	ori	$t1, $zero, 4
	b	.LBB12_4
	.p2align	4, , 16
.LBB12_3:                               #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a0, $a5, 0
	ld.d	$a1, $s3, 0
	ldptr.d	$a0, $a0, 6488
	ld.w	$t2, $a1, 172
	ld.d	$a0, $a0, 8
	add.d	$t2, $a6, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$a0, $a0, $t2
	ld.w	$a1, $a1, 168
	add.d	$a0, $a0, $a1
	st.b	$t4, $a0, 3
	addi.w	$a7, $a7, 1
	addi.d	$a6, $a6, 1
	beq	$a7, $t1, .LBB12_33
.LBB12_4:                               # %.preheader154
                                        # =>This Inner Loop Header: Depth=1
	andi	$t2, $a7, 2
	slli.d	$a0, $t2, 2
	ldx.bu	$a0, $a3, $a0
	andi	$a0, $a0, 1
	ori	$t5, $zero, 255
	add.d	$t3, $s0, $t2
	ori	$t6, $zero, 255
	bnez	$a0, .LBB12_6
# %bb.5:                                #   in Loop: Header=BB12_4 Depth=1
	ldx.bu	$t6, $t3, $a4
.LBB12_6:                               #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a0, $a5, 0
	ld.d	$a1, $s3, 0
	ldptr.d	$a0, $a0, 6488
	ld.w	$t4, $a1, 172
	ld.d	$a0, $a0, 0
	add.d	$t4, $a6, $t4
	slli.d	$t4, $t4, 3
	ldx.d	$a0, $a0, $t4
	ld.w	$a1, $a1, 168
	alsl.d	$t4, $t2, $a3, 2
	stx.b	$t6, $a0, $a1
	ld.w	$a0, $t4, 0
	blez	$a0, .LBB12_8
# %bb.7:                                #   in Loop: Header=BB12_4 Depth=1
	ldx.bu	$t5, $t3, $t0
.LBB12_8:                               #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a0, $a5, 0
	ld.d	$a1, $s3, 0
	ldptr.d	$a0, $a0, 6488
	ld.w	$t6, $a1, 172
	ld.d	$a0, $a0, 8
	add.d	$t6, $a6, $t6
	slli.d	$t6, $t6, 3
	ldx.d	$a0, $a0, $t6
	ld.w	$a1, $a1, 168
	stx.b	$t5, $a0, $a1
	ld.bu	$a0, $t4, 0
	andi	$a0, $a0, 1
	ori	$t5, $zero, 255
	ori	$t6, $zero, 255
	bnez	$a0, .LBB12_10
# %bb.9:                                #   in Loop: Header=BB12_4 Depth=1
	ldx.bu	$t6, $t3, $a4
.LBB12_10:                              #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a0, $a5, 0
	ld.d	$a1, $s3, 0
	ldptr.d	$a0, $a0, 6488
	ld.w	$t7, $a1, 172
	ld.d	$a0, $a0, 0
	add.d	$t7, $a6, $t7
	slli.d	$t7, $t7, 3
	ldx.d	$a0, $a0, $t7
	ld.w	$a1, $a1, 168
	add.d	$a0, $a0, $a1
	st.b	$t6, $a0, 1
	ld.w	$a0, $t4, 0
	blez	$a0, .LBB12_12
# %bb.11:                               #   in Loop: Header=BB12_4 Depth=1
	ldx.bu	$t5, $t3, $t0
.LBB12_12:                              #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a0, $a5, 0
	ld.d	$a1, $s3, 0
	ldptr.d	$a0, $a0, 6488
	ld.w	$t3, $a1, 172
	ld.d	$a0, $a0, 8
	add.d	$t3, $a6, $t3
	slli.d	$t3, $t3, 3
	ldx.d	$a0, $a0, $t3
	ld.w	$a1, $a1, 168
	add.d	$a0, $a0, $a1
	st.b	$t5, $a0, 1
	addi.d	$t2, $t2, 1
	slli.d	$a0, $t2, 2
	ldx.bu	$a0, $a3, $a0
	andi	$a0, $a0, 1
	ori	$t4, $zero, 255
	ori	$t5, $zero, 255
	bnez	$a0, .LBB12_14
# %bb.13:                               #   in Loop: Header=BB12_4 Depth=1
	add.d	$a0, $s0, $t2
	ldx.bu	$t5, $a0, $a4
.LBB12_14:                              #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a0, $a5, 0
	ld.d	$a1, $s3, 0
	ldptr.d	$a0, $a0, 6488
	ld.w	$t3, $a1, 172
	ld.d	$a0, $a0, 0
	add.d	$t3, $a6, $t3
	slli.d	$t3, $t3, 3
	ldx.d	$a0, $a0, $t3
	ld.w	$a1, $a1, 168
	alsl.d	$t3, $t2, $a3, 2
	add.d	$a0, $a0, $a1
	st.b	$t5, $a0, 2
	ld.w	$a0, $t3, 0
	blez	$a0, .LBB12_16
# %bb.15:                               #   in Loop: Header=BB12_4 Depth=1
	add.d	$a0, $s0, $t2
	ldx.bu	$t4, $a0, $t0
.LBB12_16:                              #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a0, $a5, 0
	ld.d	$a1, $s3, 0
	ldptr.d	$a0, $a0, 6488
	ld.w	$t5, $a1, 172
	ld.d	$a0, $a0, 8
	add.d	$t5, $a6, $t5
	slli.d	$t5, $t5, 3
	ldx.d	$a0, $a0, $t5
	ld.w	$a1, $a1, 168
	add.d	$a0, $a0, $a1
	st.b	$t4, $a0, 2
	ld.bu	$a0, $t3, 0
	andi	$a0, $a0, 1
	ori	$t4, $zero, 255
	ori	$t5, $zero, 255
	bnez	$a0, .LBB12_18
# %bb.17:                               #   in Loop: Header=BB12_4 Depth=1
	add.d	$a0, $s0, $t2
	ldx.bu	$t5, $a0, $a4
.LBB12_18:                              #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a0, $a5, 0
	ld.d	$a1, $s3, 0
	ldptr.d	$a0, $a0, 6488
	ld.w	$t6, $a1, 172
	ld.d	$a0, $a0, 0
	add.d	$t6, $a6, $t6
	slli.d	$t6, $t6, 3
	ldx.d	$a0, $a0, $t6
	ld.w	$a1, $a1, 168
	add.d	$a0, $a0, $a1
	st.b	$t5, $a0, 3
	ld.w	$a0, $t3, 0
	blez	$a0, .LBB12_3
# %bb.19:                               #   in Loop: Header=BB12_4 Depth=1
	add.d	$a0, $s0, $t2
	ldx.bu	$t4, $a0, $t0
	b	.LBB12_3
.LBB12_20:                              # %.preheader147
	ldptr.w	$a1, $a0, 15528
	addi.w	$a2, $zero, -3
	blt	$a1, $a2, .LBB12_23
# %bb.21:                               # %.preheader146.lr.ph
	move	$s0, $zero
	pcalau12i	$a1, %pc_hi20(cofAC8x8)
	ld.d	$s1, $a1, %pc_lo12(cofAC8x8)
	addi.w	$s2, $zero, -1
	lu12i.w	$a1, 3
	ori	$s4, $a1, 3240
	.p2align	4, , 16
.LBB12_22:                              # %.preheader146
                                        # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s0
	ldx.d	$a1, $s1, $s0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s0
	ldx.d	$a1, $s1, $s0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s0
	ldx.d	$a1, $s1, $s0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s0
	ldx.d	$a1, $s1, $s0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s0
	ldx.d	$a1, $s1, $s0
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a1, 16
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s0
	ldx.d	$a1, $s1, $s0
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a1, 16
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s0
	ldx.d	$a1, $s1, $s0
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, 24
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s0
	ldx.d	$a1, $s1, $s0
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, 24
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldx.w	$a1, $a0, $s4
	addi.w	$a1, $a1, 3
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 8
	blt	$s2, $a1, .LBB12_22
.LBB12_23:                              # %._crit_edge
	pcalau12i	$a1, %pc_hi20(cnt_nonz_8x8)
	ld.w	$a1, $a1, %pc_lo12(cnt_nonz_8x8)
	ori	$a2, $zero, 5
	blt	$a2, $a1, .LBB12_25
# %bb.24:
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB12_72
.LBB12_25:
	pcalau12i	$a1, %pc_hi20(cbp8x8)
	ld.w	$a1, $a1, %pc_lo12(cbp8x8)
	pcalau12i	$a2, %pc_hi20(cbp_blk8x8)
	ld.w	$a2, $a2, %pc_lo12(cbp_blk8x8)
	st.w	$a1, $fp, 364
	st.d	$a2, $fp, 368
	pcalau12i	$a1, %pc_hi20(tr4x4)
	addi.d	$a2, $a1, %pc_lo12(tr4x4)
	lu12i.w	$a3, 1
	ori	$a1, $a3, 2072
	add.d	$a1, $a2, $a1
	ori	$a3, $a3, 3096
	add.d	$a2, $a2, $a3
	pcalau12i	$a3, %got_pc_hi20(enc_picture)
	ld.d	$a3, $a3, %got_pc_lo12(enc_picture)
	move	$a4, $zero
	pcalau12i	$a5, %pc_hi20(si_frame_indicator)
	pcalau12i	$a6, %pc_hi20(sp2_frame_indicator)
	ori	$a7, $zero, 3
	ori	$t0, $zero, 16
	pcalau12i	$t1, %pc_hi20(lrec)
	b	.LBB12_27
	.p2align	4, , 16
.LBB12_26:                              #   in Loop: Header=BB12_27 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 64
	beq	$a4, $t0, .LBB12_79
.LBB12_27:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a3, 0
	ld.w	$t3, $a0, 180
	ldptr.d	$t2, $t2, 6440
	add.d	$t3, $a4, $t3
	slli.d	$t3, $t3, 3
	ldx.d	$t2, $t2, $t3
	ld.w	$a0, $a0, 176
	vld	$vr0, $a1, 0
	slli.d	$t3, $a0, 1
	vstx	$vr0, $t2, $t3
	vld	$vr0, $a1, 16
	alsl.d	$a0, $a0, $t2, 1
	vst	$vr0, $a0, 16
	ld.d	$a0, $s3, 0
	ld.w	$t2, $a0, 20
	bne	$t2, $a7, .LBB12_26
# %bb.28:                               #   in Loop: Header=BB12_27 Depth=1
	ld.w	$t2, $a5, %pc_lo12(si_frame_indicator)
	bnez	$t2, .LBB12_26
# %bb.29:                               #   in Loop: Header=BB12_27 Depth=1
	ld.w	$t2, $a6, %pc_lo12(sp2_frame_indicator)
	bnez	$t2, .LBB12_26
# %bb.30:                               #   in Loop: Header=BB12_27 Depth=1
	ld.w	$t2, $a0, 180
	ld.d	$t3, $t1, %pc_lo12(lrec)
	add.d	$t2, $a4, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $t3, $t2
	ld.w	$a0, $a0, 176
	vld	$vr0, $a2, 0
	slli.d	$t3, $a0, 2
	vstx	$vr0, $t2, $t3
	vld	$vr0, $a2, 48
	alsl.d	$a0, $a0, $t2, 2
	vst	$vr0, $a0, 48
	vld	$vr0, $a2, 32
	vst	$vr0, $a0, 32
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	ld.d	$a0, $s3, 0
	b	.LBB12_26
.LBB12_31:                              # %.preheader157.preheader
	ori	$a3, $s4, 2064
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a4, $a0, %got_pc_lo12(enc_picture)
	move	$a5, $zero
	move	$a6, $zero
	ori	$a7, $zero, 4
	.p2align	4, , 16
.LBB12_32:                              # %.preheader157
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a4, 0
	ld.d	$a1, $s3, 0
	ldptr.d	$a0, $a0, 6488
	andi	$t0, $a6, 2
	ld.w	$t1, $a1, 172
	add.d	$t0, $s0, $t0
	ld.d	$a0, $a0, 0
	ldx.b	$t2, $t0, $a3
	add.d	$t1, $a5, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$a0, $a0, $t1
	ld.w	$a1, $a1, 168
	stx.b	$t2, $a0, $a1
	ld.d	$a0, $a4, 0
	ld.d	$a1, $s3, 0
	ldptr.d	$a0, $a0, 6488
	ld.w	$t1, $a1, 172
	ld.d	$a0, $a0, 0
	add.d	$t1, $a5, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$a0, $a0, $t1
	ld.w	$a1, $a1, 168
	add.d	$a0, $a0, $a1
	st.b	$t2, $a0, 1
	ld.d	$a0, $a4, 0
	ld.d	$a1, $s3, 0
	ldptr.d	$a0, $a0, 6488
	ld.w	$t1, $a1, 172
	ld.d	$a0, $a0, 0
	add.d	$t0, $t0, $a3
	add.d	$t1, $a5, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$a0, $a0, $t1
	ld.w	$a1, $a1, 168
	ld.b	$t0, $t0, 1
	add.d	$a0, $a0, $a1
	st.b	$t0, $a0, 2
	ld.d	$a0, $a4, 0
	ld.d	$a1, $s3, 0
	ldptr.d	$a0, $a0, 6488
	ld.w	$t1, $a1, 172
	ld.d	$a0, $a0, 0
	add.d	$t1, $a5, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$a0, $a0, $t1
	ld.w	$a1, $a1, 168
	add.d	$a0, $a0, $a1
	st.b	$t0, $a0, 3
	addi.w	$a6, $a6, 1
	addi.d	$a5, $a5, 1
	bne	$a6, $a7, .LBB12_32
.LBB12_33:                              # %.loopexit156
	ld.d	$a3, $s3, 0
	ld.w	$s2, $a3, 172
	ld.w	$a5, $a3, 168
	addi.w	$a6, $s2, 4
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$s5, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a7, $s5, 0
	ldptr.d	$t6, $a7, 6488
	ldptr.d	$t7, $a7, 6496
	ld.d	$a0, $t6, 0
	ld.d	$a1, $t7, 0
	addi.d	$s1, $a7, 24
	addi.d	$t0, $a5, 1
	addi.d	$t1, $a5, 2
	addi.d	$t2, $a5, 3
	alsl.d	$ra, $s2, $a0, 3
	alsl.d	$s7, $s2, $a1, 3
	addi.w	$a1, $zero, -1
	slli.d	$t3, $a5, 3
	slli.d	$t4, $t0, 3
	slli.d	$t5, $t1, 3
	move	$a4, $s2
	b	.LBB12_35
	.p2align	4, , 16
.LBB12_34:                              #   in Loop: Header=BB12_35 Depth=1
	slli.d	$t8, $t2, 3
	stx.d	$s8, $s6, $t8
	addi.d	$a4, $a4, 1
	addi.d	$ra, $ra, 8
	addi.d	$s7, $s7, 8
	bge	$a4, $a6, .LBB12_43
.LBB12_35:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t8, $ra, 0
	ldx.b	$s6, $t8, $a5
	move	$a0, $a1
	bltz	$s6, .LBB12_37
# %bb.36:                               #   in Loop: Header=BB12_35 Depth=1
	ld.w	$a0, $fp, 432
	slli.d	$s8, $a0, 8
	alsl.d	$a0, $a0, $s8, 3
	add.d	$a0, $s1, $a0
	slli.d	$s6, $s6, 3
	ldx.d	$a0, $a0, $s6
.LBB12_37:                              #   in Loop: Header=BB12_35 Depth=1
	ld.d	$s6, $s7, 0
	stx.d	$a0, $s6, $t3
	ldx.b	$a0, $t8, $t0
	move	$s8, $a1
	bltz	$a0, .LBB12_39
# %bb.38:                               #   in Loop: Header=BB12_35 Depth=1
	ld.w	$s8, $fp, 432
	slli.d	$a2, $s8, 8
	alsl.d	$a2, $s8, $a2, 3
	add.d	$a2, $s1, $a2
	slli.d	$a0, $a0, 3
	ldx.d	$s8, $a2, $a0
.LBB12_39:                              #   in Loop: Header=BB12_35 Depth=1
	stx.d	$s8, $s6, $t4
	ldx.b	$a0, $t8, $t1
	move	$s8, $a1
	bltz	$a0, .LBB12_41
# %bb.40:                               #   in Loop: Header=BB12_35 Depth=1
	ld.w	$a2, $fp, 432
	slli.d	$s8, $a2, 8
	alsl.d	$a2, $a2, $s8, 3
	add.d	$a2, $s1, $a2
	slli.d	$a0, $a0, 3
	ldx.d	$s8, $a2, $a0
.LBB12_41:                              #   in Loop: Header=BB12_35 Depth=1
	stx.d	$s8, $s6, $t5
	ldx.b	$a0, $t8, $t2
	move	$s8, $a1
	bltz	$a0, .LBB12_34
# %bb.42:                               #   in Loop: Header=BB12_35 Depth=1
	ld.w	$a2, $fp, 432
	slli.d	$t8, $a2, 8
	alsl.d	$a2, $a2, $t8, 3
	add.d	$a2, $s1, $a2
	slli.d	$a0, $a0, 3
	ldx.d	$s8, $a2, $a0
	b	.LBB12_34
.LBB12_43:
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bne	$a1, $a0, .LBB12_54
# %bb.44:                               # %.preheader152
	ld.d	$a0, $t6, 8
	ld.d	$a1, $t7, 8
	alsl.d	$a2, $s2, $a0, 3
	alsl.d	$t6, $s2, $a1, 3
	addi.w	$t7, $zero, -1
	b	.LBB12_46
	.p2align	4, , 16
.LBB12_45:                              #   in Loop: Header=BB12_46 Depth=1
	stx.d	$a1, $s1, $t8
	addi.d	$s2, $s2, 1
	addi.d	$a2, $a2, 8
	addi.d	$t6, $t6, 8
	bge	$s2, $a6, .LBB12_54
.LBB12_46:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ldx.b	$a0, $a4, $a5
	move	$a1, $t7
	bltz	$a0, .LBB12_48
# %bb.47:                               #   in Loop: Header=BB12_46 Depth=1
	ld.w	$a1, $fp, 432
	slli.d	$s1, $a1, 8
	alsl.d	$a1, $a1, $s1, 3
	add.d	$a1, $a7, $a1
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a1, $a0, 288
.LBB12_48:                              #   in Loop: Header=BB12_46 Depth=1
	ld.d	$s1, $t6, 0
	stx.d	$a1, $s1, $t3
	ldx.b	$a0, $a4, $t0
	move	$a1, $t7
	bltz	$a0, .LBB12_50
# %bb.49:                               #   in Loop: Header=BB12_46 Depth=1
	ld.w	$a1, $fp, 432
	slli.d	$s6, $a1, 8
	alsl.d	$a1, $a1, $s6, 3
	add.d	$a1, $a7, $a1
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a1, $a0, 288
.LBB12_50:                              #   in Loop: Header=BB12_46 Depth=1
	stx.d	$a1, $s1, $t4
	ldx.b	$a0, $a4, $t1
	move	$a1, $t7
	bltz	$a0, .LBB12_52
# %bb.51:                               #   in Loop: Header=BB12_46 Depth=1
	ld.w	$a1, $fp, 432
	slli.d	$s6, $a1, 8
	alsl.d	$a1, $a1, $s6, 3
	add.d	$a1, $a7, $a1
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a1, $a0, 288
.LBB12_52:                              #   in Loop: Header=BB12_46 Depth=1
	stx.d	$a1, $s1, $t5
	ldx.b	$a0, $a4, $t2
	move	$a1, $t7
	bltz	$a0, .LBB12_45
# %bb.53:                               #   in Loop: Header=BB12_46 Depth=1
	ld.w	$a1, $fp, 432
	slli.d	$a4, $a1, 8
	alsl.d	$a1, $a1, $a4, 3
	add.d	$a1, $a7, $a1
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a1, $a0, 288
	b	.LBB12_45
.LBB12_54:                              # %.loopexit153
	ld.w	$a0, $a3, 20
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.h	$a2, $s0, $a1
	ori	$a1, $s4, 2064
	ldx.b	$a3, $s0, $a1
	ori	$a1, $s4, 2068
	ldx.b	$a4, $s0, $a1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ldx.b	$a5, $s0, $a1
	addi.d	$a0, $a0, -1
	sltui	$s1, $a0, 1
	ori	$a0, $zero, 1
	move	$a1, $zero
	move	$a6, $s1
	pcaddu18i	$ra, %call36(StoreMVBlock8x8)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ldx.h	$a2, $s0, $a0
	ori	$a0, $s4, 2065
	ldx.b	$a3, $s0, $a0
	ori	$a0, $s4, 2069
	ldx.b	$a4, $s0, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ldx.b	$a5, $s0, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	move	$a6, $s1
	pcaddu18i	$ra, %call36(StoreMVBlock8x8)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ldx.h	$a2, $s0, $a0
	ori	$a0, $s4, 2066
	ldx.b	$a3, $s0, $a0
	ori	$a0, $s4, 2070
	ldx.b	$a4, $s0, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ldx.b	$a5, $s0, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a6, $s1
	pcaddu18i	$ra, %call36(StoreMVBlock8x8)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ldx.h	$a2, $s0, $a0
	ori	$a0, $s4, 2067
	ldx.b	$a3, $s0, $a0
	ori	$a0, $s4, 2071
	ldx.b	$a4, $s0, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ldx.b	$a5, $s0, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	move	$a6, $s1
	pcaddu18i	$ra, %call36(StoreMVBlock8x8)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.w	$a0, $a0, 20
	addi.d	$a0, $a0, -1
	sltui	$s1, $a0, 1
	lu12i.w	$a0, 2
	ori	$s2, $a0, 24
	addi.d	$a0, $sp, 80
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 80
	move	$a0, $zero
	move	$a1, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(RestoreMVBlock8x8)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 80
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 80
	move	$a0, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(RestoreMVBlock8x8)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 80
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 80
	move	$a0, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(RestoreMVBlock8x8)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 80
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	addi.d	$a2, $sp, 80
	move	$a0, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(RestoreMVBlock8x8)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(cofAC_8x8ts)
	ld.d	$s1, $a0, %pc_lo12(cofAC_8x8ts)
	move	$s2, $zero
	ori	$s6, $zero, 32
	.p2align	4, , 16
.LBB12_55:                              # %.preheader151
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $s1, $s2
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $s1, $s2
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $s1, $s2
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $s1, $s2
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $s1, $s2
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a1, 16
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $s1, $s2
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a1, 16
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $s1, $s2
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, 24
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $s1, $s2
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, 24
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	bne	$s2, $s6, .LBB12_55
# %bb.56:
	pcalau12i	$a0, %pc_hi20(cnt_nonz8_8x8ts)
	ld.w	$a1, $a0, %pc_lo12(cnt_nonz8_8x8ts)
	ld.d	$a0, $s3, 0
	ori	$a2, $zero, 5
	blt	$a2, $a1, .LBB12_66
# %bb.57:
	ld.w	$a1, $a0, 44
	beqz	$a1, .LBB12_65
.LBB12_58:
	ld.w	$a2, $a0, 20
	ori	$a1, $zero, 3
	beq	$a2, $a1, .LBB12_66
# %bb.59:
	move	$a2, $zero
	st.w	$zero, $fp, 364
	st.d	$zero, $fp, 368
	ori	$a3, $s4, 2584
	add.d	$a3, $s0, $a3
	ori	$a4, $s4, 3096
	add.d	$a4, $s0, $a4
	pcalau12i	$a5, %pc_hi20(si_frame_indicator)
	pcalau12i	$a6, %pc_hi20(sp2_frame_indicator)
	ori	$a7, $zero, 16
	pcalau12i	$t0, %pc_hi20(lrec)
	b	.LBB12_61
	.p2align	4, , 16
.LBB12_60:                              #   in Loop: Header=BB12_61 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 64
	beq	$a2, $a7, .LBB12_79
.LBB12_61:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $s5, 0
	ld.w	$t2, $a0, 180
	ldptr.d	$t1, $t1, 6440
	add.d	$t2, $a2, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$t1, $t1, $t2
	ld.w	$a0, $a0, 176
	vld	$vr0, $a3, 0
	slli.d	$t2, $a0, 1
	vstx	$vr0, $t1, $t2
	vld	$vr0, $a3, 16
	alsl.d	$a0, $a0, $t1, 1
	vst	$vr0, $a0, 16
	ld.d	$a0, $s3, 0
	ld.w	$t1, $a0, 20
	bne	$t1, $a1, .LBB12_60
# %bb.62:                               #   in Loop: Header=BB12_61 Depth=1
	ld.w	$t1, $a5, %pc_lo12(si_frame_indicator)
	bnez	$t1, .LBB12_60
# %bb.63:                               #   in Loop: Header=BB12_61 Depth=1
	ld.w	$t1, $a6, %pc_lo12(sp2_frame_indicator)
	bnez	$t1, .LBB12_60
# %bb.64:                               #   in Loop: Header=BB12_61 Depth=1
	ld.w	$t1, $a0, 180
	ld.d	$t2, $t0, %pc_lo12(lrec)
	add.d	$t1, $a2, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $t2, $t1
	ld.w	$a0, $a0, 176
	vld	$vr0, $a4, 0
	slli.d	$t2, $a0, 2
	vstx	$vr0, $t1, $t2
	vld	$vr0, $a4, 48
	alsl.d	$a0, $a0, $t1, 2
	vst	$vr0, $a0, 48
	vld	$vr0, $a4, 32
	vst	$vr0, $a0, 32
	vld	$vr0, $a4, 16
	vst	$vr0, $a0, 16
	ld.d	$a0, $s3, 0
	b	.LBB12_60
.LBB12_65:
	ldptr.w	$a1, $a0, 15540
	beqz	$a1, .LBB12_58
.LBB12_66:
	pcalau12i	$a1, %pc_hi20(cbp8_8x8ts)
	ld.w	$a2, $a1, %pc_lo12(cbp8_8x8ts)
	pcalau12i	$a1, %pc_hi20(cbp_blk8_8x8ts)
	ld.d	$a3, $a1, %pc_lo12(cbp_blk8_8x8ts)
	move	$a1, $zero
	st.w	$a2, $fp, 364
	st.d	$a3, $fp, 368
	ori	$a2, $s4, 2072
	add.d	$a2, $s0, $a2
	ori	$a3, $s4, 3096
	add.d	$a3, $s0, $a3
	pcalau12i	$a4, %pc_hi20(si_frame_indicator)
	pcalau12i	$a5, %pc_hi20(sp2_frame_indicator)
	ori	$a6, $zero, 3
	ori	$a7, $zero, 16
	pcalau12i	$t0, %pc_hi20(lrec)
	b	.LBB12_68
	.p2align	4, , 16
.LBB12_67:                              #   in Loop: Header=BB12_68 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 64
	beq	$a1, $a7, .LBB12_79
.LBB12_68:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $s5, 0
	ld.w	$t2, $a0, 180
	ldptr.d	$t1, $t1, 6440
	add.d	$t2, $a1, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$t1, $t1, $t2
	ld.w	$a0, $a0, 176
	vld	$vr0, $a2, 0
	slli.d	$t2, $a0, 1
	vstx	$vr0, $t1, $t2
	vld	$vr0, $a2, 16
	alsl.d	$a0, $a0, $t1, 1
	vst	$vr0, $a0, 16
	ld.d	$a0, $s3, 0
	ld.w	$t1, $a0, 20
	bne	$t1, $a6, .LBB12_67
# %bb.69:                               #   in Loop: Header=BB12_68 Depth=1
	ld.w	$t1, $a4, %pc_lo12(si_frame_indicator)
	bnez	$t1, .LBB12_67
# %bb.70:                               #   in Loop: Header=BB12_68 Depth=1
	ld.w	$t1, $a5, %pc_lo12(sp2_frame_indicator)
	bnez	$t1, .LBB12_67
# %bb.71:                               #   in Loop: Header=BB12_68 Depth=1
	ld.w	$t1, $a0, 180
	ld.d	$t2, $t0, %pc_lo12(lrec)
	add.d	$t1, $a1, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $t2, $t1
	ld.w	$a0, $a0, 176
	vld	$vr0, $a3, 0
	slli.d	$t2, $a0, 2
	vstx	$vr0, $t1, $t2
	vld	$vr0, $a3, 48
	alsl.d	$a0, $a0, $t1, 2
	vst	$vr0, $a0, 48
	vld	$vr0, $a3, 32
	vst	$vr0, $a0, 32
	vld	$vr0, $a3, 16
	vst	$vr0, $a0, 16
	ld.d	$a0, $s3, 0
	b	.LBB12_67
.LBB12_72:
	ld.w	$a1, $a0, 44
	beqz	$a1, .LBB12_80
.LBB12_73:
	st.w	$zero, $fp, 364
	st.d	$zero, $fp, 368
	pcalau12i	$a1, %pc_hi20(tr4x4)
	addi.d	$a2, $a1, %pc_lo12(tr4x4)
	lu12i.w	$a3, 1
	ori	$a1, $a3, 2584
	add.d	$a1, $a2, $a1
	ori	$a3, $a3, 3096
	add.d	$a2, $a2, $a3
	pcalau12i	$a3, %got_pc_hi20(enc_picture)
	ld.d	$a3, $a3, %got_pc_lo12(enc_picture)
	move	$a4, $zero
	pcalau12i	$a5, %pc_hi20(si_frame_indicator)
	pcalau12i	$a6, %pc_hi20(sp2_frame_indicator)
	ori	$a7, $zero, 3
	ori	$t0, $zero, 16
	pcalau12i	$t1, %pc_hi20(lrec)
	b	.LBB12_75
	.p2align	4, , 16
.LBB12_74:                              #   in Loop: Header=BB12_75 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 64
	beq	$a4, $t0, .LBB12_79
.LBB12_75:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a3, 0
	ld.w	$t3, $a0, 180
	ldptr.d	$t2, $t2, 6440
	add.d	$t3, $a4, $t3
	slli.d	$t3, $t3, 3
	ldx.d	$t2, $t2, $t3
	ld.w	$a0, $a0, 176
	vld	$vr0, $a1, 0
	slli.d	$t3, $a0, 1
	vstx	$vr0, $t2, $t3
	vld	$vr0, $a1, 16
	alsl.d	$a0, $a0, $t2, 1
	vst	$vr0, $a0, 16
	ld.d	$a0, $s3, 0
	ld.w	$t2, $a0, 20
	bne	$t2, $a7, .LBB12_74
# %bb.76:                               #   in Loop: Header=BB12_75 Depth=1
	ld.w	$t2, $a5, %pc_lo12(si_frame_indicator)
	bnez	$t2, .LBB12_74
# %bb.77:                               #   in Loop: Header=BB12_75 Depth=1
	ld.w	$t2, $a6, %pc_lo12(sp2_frame_indicator)
	bnez	$t2, .LBB12_74
# %bb.78:                               #   in Loop: Header=BB12_75 Depth=1
	ld.w	$t2, $a0, 180
	ld.d	$t3, $t1, %pc_lo12(lrec)
	add.d	$t2, $a4, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $t3, $t2
	ld.w	$a0, $a0, 176
	vld	$vr0, $a2, 0
	slli.d	$t3, $a0, 2
	vstx	$vr0, $t2, $t3
	vld	$vr0, $a2, 48
	alsl.d	$a0, $a0, $t2, 2
	vst	$vr0, $a0, 48
	vld	$vr0, $a2, 32
	vst	$vr0, $a0, 32
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	ld.d	$a0, $s3, 0
	b	.LBB12_74
.LBB12_79:                              # %.loopexit
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2256
	add.d	$sp, $sp, $a0
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB12_80:
	ldptr.w	$a1, $a0, 15540
	bnez	$a1, .LBB12_25
	b	.LBB12_73
.Lfunc_end12:
	.size	SetCoeffAndReconstruction8x8, .Lfunc_end12-SetCoeffAndReconstruction8x8
                                        # -- End function
	.globl	StoreMV8x8                      # -- Begin function StoreMV8x8
	.p2align	5
	.type	StoreMV8x8,@function
StoreMV8x8:                             # @StoreMV8x8
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 20
	addi.d	$a0, $a0, -1
	sltui	$s0, $a0, 1
	pcalau12i	$a0, %pc_hi20(tr8x8)
	addi.d	$s1, $a0, %pc_lo12(tr8x8)
	lu12i.w	$s2, 1
	ori	$a0, $s2, 2052
	ldx.h	$a2, $s1, $a0
	ori	$a0, $s2, 2064
	ldx.b	$a3, $s1, $a0
	ori	$a0, $s2, 2068
	ldx.b	$a4, $s1, $a0
	ori	$a0, $s2, 2060
	ldx.b	$a5, $s1, $a0
	move	$a0, $fp
	move	$a1, $zero
	move	$a6, $s0
	pcaddu18i	$ra, %call36(StoreMVBlock8x8)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 2054
	ldx.h	$a2, $s1, $a0
	ori	$a0, $s2, 2065
	ldx.b	$a3, $s1, $a0
	ori	$a0, $s2, 2069
	ldx.b	$a4, $s1, $a0
	ori	$a0, $s2, 2061
	ldx.b	$a5, $s1, $a0
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a6, $s0
	pcaddu18i	$ra, %call36(StoreMVBlock8x8)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 2056
	ldx.h	$a2, $s1, $a0
	ori	$a0, $s2, 2066
	ldx.b	$a3, $s1, $a0
	ori	$a0, $s2, 2070
	ldx.b	$a4, $s1, $a0
	ori	$a0, $s2, 2062
	ldx.b	$a5, $s1, $a0
	ori	$a1, $zero, 2
	move	$a0, $fp
	move	$a6, $s0
	pcaddu18i	$ra, %call36(StoreMVBlock8x8)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 2058
	ldx.h	$a2, $s1, $a0
	ori	$a0, $s2, 2067
	ldx.b	$a3, $s1, $a0
	ori	$a0, $s2, 2071
	ldx.b	$a4, $s1, $a0
	ori	$a0, $s2, 2063
	ldx.b	$a5, $s1, $a0
	ori	$a1, $zero, 3
	move	$a0, $fp
	move	$a6, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(StoreMVBlock8x8)
	jr	$t8
.Lfunc_end13:
	.size	StoreMV8x8, .Lfunc_end13-StoreMV8x8
                                        # -- End function
	.globl	RestoreMV8x8                    # -- Begin function RestoreMV8x8
	.p2align	5
	.type	RestoreMV8x8,@function
RestoreMV8x8:                           # @RestoreMV8x8
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2144
	sub.d	$sp, $sp, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 20
	addi.d	$a0, $a0, -1
	sltui	$s0, $a0, 1
	pcalau12i	$a0, %pc_hi20(tr8x8)
	addi.d	$s1, $a0, %pc_lo12(tr8x8)
	lu12i.w	$a0, 2
	ori	$s2, $a0, 24
	addi.d	$a0, $sp, 16
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 16
	move	$a0, $fp
	move	$a1, $zero
	move	$a3, $s0
	pcaddu18i	$ra, %call36(RestoreMVBlock8x8)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 16
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(RestoreMVBlock8x8)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 16
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(RestoreMVBlock8x8)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	addi.d	$a2, $sp, 16
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(RestoreMVBlock8x8)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2144
	add.d	$sp, $sp, $a0
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end14:
	.size	RestoreMV8x8, .Lfunc_end14-RestoreMV8x8
                                        # -- End function
	.globl	SetMotionVectorsMB              # -- Begin function SetMotionVectorsMB
	.p2align	5
	.type	SetMotionVectorsMB,@function
SetMotionVectorsMB:                     # @SetMotionVectorsMB
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
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s6, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s6, 0
	ldptr.d	$ra, $a0, 14384
	ldptr.d	$s8, $a0, 14376
	beqz	$a1, .LBB15_31
# %bb.1:                                # %.preheader228
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	addi.d	$t3, $fp, 376
	addi.d	$t4, $fp, 392
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$t7, $a0, %got_pc_lo12(enc_picture)
	move	$t6, $zero
	ori	$t8, $zero, 2
	ori	$s0, $zero, 1
	lu12i.w	$s2, 3
	ori	$s3, $zero, 4
	ori	$s4, $zero, 255
	b	.LBB15_3
	.p2align	4, , 16
.LBB15_2:                               #   in Loop: Header=BB15_3 Depth=1
	addi.d	$t6, $t6, 1
	beq	$t6, $s3, .LBB15_19
.LBB15_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_6 Depth 2
	ld.d	$a0, $s6, 0
	ld.w	$a0, $a0, 172
	move	$s7, $zero
	move	$s8, $zero
	andi	$s5, $t6, 2
	add.w	$a0, $a0, $t6
	slli.d	$s1, $a0, 3
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	b	.LBB15_6
.LBB15_4:                               #   in Loop: Header=BB15_6 Depth=2
	slli.d	$a3, $t6, 3
	ldx.d	$a3, $ra, $a3
	ldx.d	$a3, $a3, $s7
	ld.d	$a3, $a3, 0
	slli.d	$a4, $a4, 3
	ldptr.d	$a2, $a2, 6512
	ldx.d	$a3, $a3, $a4
	slli.d	$a0, $a0, 3
	ld.d	$a4, $a2, 0
	ldx.d	$a0, $a3, $a0
	ldx.d	$a3, $a4, $s1
	ld.h	$a4, $a0, 0
	ld.d	$a2, $a2, 8
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a3, $a1
	ldx.d	$a2, $a2, $s1
	st.h	$a4, $a3, 0
	ld.h	$a0, $a0, 2
	ldx.d	$a1, $a2, $a1
	st.h	$a0, $a3, 2
	st.w	$zero, $a1, 0
	stx.b	$s4, $a5, $s8
	.p2align	4, , 16
.LBB15_5:                               #   in Loop: Header=BB15_6 Depth=2
	addi.d	$s8, $s8, 1
	addi.d	$s7, $s7, 8
	beq	$s8, $s3, .LBB15_2
.LBB15_6:                               #   Parent Loop BB15_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $t7, 0
	ldptr.d	$a0, $a2, 6488
	bstrpick.d	$a1, $s8, 31, 1
	or	$a1, $a1, $s5
	ld.d	$a6, $s6, 0
	ld.d	$a3, $a0, 0
	slli.d	$a1, $a1, 2
	ld.d	$a4, $a0, 8
	ld.w	$t2, $a6, 168
	ldx.d	$a3, $a3, $s1
	ldx.w	$a0, $t3, $a1
	ldx.d	$a5, $a4, $s1
	ldx.w	$a7, $t4, $a1
	add.d	$t0, $a3, $t2
	ldx.b	$a4, $t0, $s8
	add.d	$a5, $a5, $t2
	ld.hu	$t1, $fp, 480
	ldx.b	$a3, $a5, $s8
	add.d	$a1, $s8, $t2
	beqz	$t1, .LBB15_12
# %bb.7:                                #   in Loop: Header=BB15_6 Depth=2
	bne	$a7, $t8, .LBB15_12
# %bb.8:                                #   in Loop: Header=BB15_6 Depth=2
	ld.w	$a5, $fp, 72
	bne	$a5, $s0, .LBB15_10
# %bb.9:                                #   in Loop: Header=BB15_6 Depth=2
	addi.d	$a3, $t1, -1
	sltui	$a3, $a3, 1
	ori	$a4, $s2, 2112
	masknez	$a4, $a4, $a3
	ori	$a5, $s2, 2104
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	ldx.d	$ra, $a6, $a3
	move	$a4, $zero
	move	$a3, $zero
.LBB15_10:                              # %.thread215
                                        #   in Loop: Header=BB15_6 Depth=2
	slli.d	$a5, $t6, 3
	ldx.d	$a5, $ra, $a5
	ldx.d	$a5, $a5, $s7
	ld.d	$a6, $a5, 0
	slli.d	$a4, $a4, 3
	ldptr.d	$a2, $a2, 6512
	ldx.d	$a4, $a6, $a4
	slli.d	$a0, $a0, 3
	ld.d	$a6, $a2, 0
	ldx.d	$a4, $a4, $a0
	ldx.d	$a6, $a6, $s1
	ld.h	$a7, $a4, 0
	ld.d	$a5, $a5, 8
	slli.d	$a1, $a1, 3
	ldx.d	$a6, $a6, $a1
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a5, $a3
	ld.d	$a2, $a2, 8
	st.h	$a7, $a6, 0
	ld.h	$a4, $a4, 2
	ldx.d	$a0, $a3, $a0
	ldx.d	$a2, $a2, $s1
	st.h	$a4, $a6, 2
.LBB15_11:                              #   in Loop: Header=BB15_6 Depth=2
	ld.h	$a3, $a0, 0
	ldx.d	$a1, $a2, $a1
	st.h	$a3, $a1, 0
	ld.h	$a0, $a0, 2
	st.h	$a0, $a1, 2
	b	.LBB15_5
	.p2align	4, , 16
.LBB15_12:                              #   in Loop: Header=BB15_6 Depth=2
	beq	$a7, $s0, .LBB15_16
# %bb.13:                               #   in Loop: Header=BB15_6 Depth=2
	beqz	$a7, .LBB15_4
# %bb.14:                               #   in Loop: Header=BB15_6 Depth=2
	addi.w	$a5, $zero, -1
	bne	$a7, $a5, .LBB15_17
# %bb.15:                               #   in Loop: Header=BB15_6 Depth=2
	ldptr.d	$a0, $a2, 6512
	ld.d	$a2, $a0, 0
	ldx.d	$a2, $a2, $s1
	slli.d	$a1, $a1, 3
	ldx.d	$a2, $a2, $a1
	st.w	$zero, $a2, 0
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s1
	ldx.d	$a0, $a0, $a1
	st.w	$zero, $a0, 0
	b	.LBB15_5
.LBB15_16:                              #   in Loop: Header=BB15_6 Depth=2
	ldptr.d	$a2, $a2, 6512
	ld.d	$a2, $a2, 0
	ldx.d	$a2, $a2, $s1
	slli.d	$a1, $a1, 3
	ldx.d	$a2, $a2, $a1
	st.w	$zero, $a2, 0
	stx.b	$s4, $t0, $s8
	slli.d	$a2, $t6, 3
	ldx.d	$a2, $ra, $a2
	ldx.d	$a2, $a2, $s7
	ld.d	$a4, $t7, 0
	ld.d	$a2, $a2, 8
	ldptr.d	$a4, $a4, 6512
	slli.d	$a3, $a3, 3
	ldx.d	$a2, $a2, $a3
	ld.d	$a3, $a4, 8
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ldx.d	$a2, $a3, $s1
	b	.LBB15_11
.LBB15_17:                              #   in Loop: Header=BB15_6 Depth=2
	beq	$a7, $t8, .LBB15_10
# %bb.18:                               #   in Loop: Header=BB15_6 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 255
	move	$s3, $ra
	move	$s4, $t3
	move	$s2, $t4
	move	$s5, $t6
	move	$s0, $t7
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ori	$t8, $zero, 2
	move	$t7, $s0
	ori	$s0, $zero, 1
	move	$t6, $s5
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	move	$t4, $s2
	lu12i.w	$s2, 3
	move	$t3, $s4
	ori	$s4, $zero, 255
	move	$ra, $s3
	ori	$s3, $zero, 4
	b	.LBB15_5
.LBB15_19:                              # %.loopexit227.loopexit241
	ld.d	$a0, $s6, 0
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
.LBB15_20:                              # %.loopexit227
	ldptr.w	$a1, $a0, 15268
	beqz	$a1, .LBB15_30
# %bb.21:                               # %.preheader225
	ld.wu	$a0, $a0, 32
	move	$a1, $zero
	addi.w	$a2, $a0, 0
	pcalau12i	$a3, %pc_hi20(rdopt)
	ori	$a4, $zero, 4
	b	.LBB15_23
	.p2align	4, , 16
.LBB15_22:                              #   in Loop: Header=BB15_23 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a4, .LBB15_30
.LBB15_23:                              # %.preheader224
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_25 Depth 2
                                        #       Child Loop BB15_27 Depth 3
                                        #         Child Loop BB15_29 Depth 4
	move	$a5, $zero
	slli.d	$a6, $a1, 3
	b	.LBB15_25
	.p2align	4, , 16
.LBB15_24:                              #   in Loop: Header=BB15_25 Depth=2
	addi.d	$a5, $a5, 1
	beq	$a5, $a4, .LBB15_22
.LBB15_25:                              # %.preheader223
                                        #   Parent Loop BB15_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_27 Depth 3
                                        #         Child Loop BB15_29 Depth 4
	move	$t4, $zero
	alsl.d	$a7, $a5, $ra, 3
	ld.d	$t0, $a3, %pc_lo12(rdopt)
	alsl.d	$t1, $a5, $s8, 3
	ori	$t3, $zero, 1
	slli.d	$t2, $a5, 3
	b	.LBB15_27
	.p2align	4, , 16
.LBB15_26:                              # %._crit_edge
                                        #   in Loop: Header=BB15_27 Depth=3
	andi	$t5, $t3, 1
	ori	$t4, $zero, 1
	move	$t3, $zero
	beqz	$t5, .LBB15_24
.LBB15_27:                              # %.preheader222
                                        #   Parent Loop BB15_23 Depth=1
                                        #     Parent Loop BB15_25 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_29 Depth 4
	blez	$a2, .LBB15_26
# %bb.28:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB15_27 Depth=3
	ld.d	$t5, $a7, 0
	ld.d	$t6, $t0, 1672
	ld.d	$t7, $t0, 1664
	ldx.d	$t5, $t5, $a6
	ldx.d	$t6, $t6, $t2
	ld.d	$t8, $t1, 0
	ldx.d	$t7, $t7, $t2
	slli.d	$fp, $t4, 3
	ldx.d	$t6, $t6, $a6
	ldx.d	$t8, $t8, $a6
	ldx.d	$t7, $t7, $a6
	ldx.d	$t4, $t5, $fp
	ldx.d	$t5, $t6, $fp
	ldx.d	$t6, $t8, $fp
	ldx.d	$t7, $t7, $fp
	move	$t8, $a0
	.p2align	4, , 16
.LBB15_29:                              # %.preheader
                                        #   Parent Loop BB15_23 Depth=1
                                        #     Parent Loop BB15_25 Depth=2
                                        #       Parent Loop BB15_27 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$fp, $t4, 0
	ld.d	$s3, $fp, 0
	ld.d	$s1, $t5, 0
	ld.d	$s0, $t6, 0
	ld.h	$s4, $s3, 0
	ld.d	$s5, $s1, 0
	ld.d	$s6, $s0, 0
	ld.d	$s2, $t7, 0
	st.h	$s4, $s5, 0
	ld.h	$s4, $s6, 0
	ld.d	$s7, $s2, 0
	st.h	$s4, $s7, 0
	ld.h	$s3, $s3, 2
	st.h	$s3, $s5, 2
	ld.h	$s3, $s6, 2
	ld.d	$s4, $fp, 8
	st.h	$s3, $s7, 2
	ld.h	$s3, $s4, 0
	ld.d	$s5, $s1, 8
	ld.d	$s6, $s0, 8
	st.h	$s3, $s5, 0
	ld.h	$s3, $s6, 0
	ld.d	$s7, $s2, 8
	st.h	$s3, $s7, 0
	ld.h	$s3, $s4, 2
	st.h	$s3, $s5, 2
	ld.h	$s3, $s6, 2
	ld.d	$s4, $fp, 16
	st.h	$s3, $s7, 2
	ld.h	$s3, $s4, 0
	ld.d	$s5, $s1, 16
	ld.d	$s6, $s0, 16
	st.h	$s3, $s5, 0
	ld.h	$s3, $s6, 0
	ld.d	$s7, $s2, 16
	st.h	$s3, $s7, 0
	ld.h	$s3, $s4, 2
	st.h	$s3, $s5, 2
	ld.h	$s3, $s6, 2
	ld.d	$s4, $fp, 24
	st.h	$s3, $s7, 2
	ld.h	$s3, $s4, 0
	ld.d	$s5, $s1, 24
	ld.d	$s6, $s0, 24
	st.h	$s3, $s5, 0
	ld.h	$s3, $s6, 0
	ld.d	$s7, $s2, 24
	st.h	$s3, $s7, 0
	ld.h	$s3, $s4, 2
	st.h	$s3, $s5, 2
	ld.h	$s3, $s6, 2
	ld.d	$s4, $fp, 32
	st.h	$s3, $s7, 2
	ld.h	$s3, $s4, 0
	ld.d	$s5, $s1, 32
	ld.d	$s6, $s0, 32
	st.h	$s3, $s5, 0
	ld.h	$s3, $s6, 0
	ld.d	$s7, $s2, 32
	st.h	$s3, $s7, 0
	ld.h	$s3, $s4, 2
	st.h	$s3, $s5, 2
	ld.h	$s3, $s6, 2
	ld.d	$s4, $fp, 40
	st.h	$s3, $s7, 2
	ld.h	$s3, $s4, 0
	ld.d	$s5, $s1, 40
	ld.d	$s6, $s0, 40
	st.h	$s3, $s5, 0
	ld.h	$s3, $s6, 0
	ld.d	$s7, $s2, 40
	st.h	$s3, $s7, 0
	ld.h	$s3, $s4, 2
	st.h	$s3, $s5, 2
	ld.h	$s3, $s6, 2
	ld.d	$s4, $fp, 48
	st.h	$s3, $s7, 2
	ld.h	$s3, $s4, 0
	ld.d	$s5, $s1, 48
	ld.d	$s6, $s0, 48
	st.h	$s3, $s5, 0
	ld.h	$s3, $s6, 0
	ld.d	$s7, $s2, 48
	st.h	$s3, $s7, 0
	ld.h	$s3, $s4, 2
	st.h	$s3, $s5, 2
	ld.h	$s3, $s6, 2
	ld.d	$s4, $fp, 56
	st.h	$s3, $s7, 2
	ld.h	$s3, $s4, 0
	ld.d	$s5, $s1, 56
	ld.d	$s6, $s0, 56
	st.h	$s3, $s5, 0
	ld.h	$s3, $s6, 0
	ld.d	$s7, $s2, 56
	st.h	$s3, $s7, 0
	ld.h	$s3, $s4, 2
	st.h	$s3, $s5, 2
	ld.h	$s3, $s6, 2
	ld.d	$fp, $fp, 64
	st.h	$s3, $s7, 2
	ld.h	$s3, $fp, 0
	ld.d	$s1, $s1, 64
	ld.d	$s0, $s0, 64
	st.h	$s3, $s1, 0
	ld.h	$s3, $s0, 0
	ld.d	$s2, $s2, 64
	st.h	$s3, $s2, 0
	ld.h	$fp, $fp, 2
	st.h	$fp, $s1, 2
	ld.h	$fp, $s0, 2
	st.h	$fp, $s2, 2
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	addi.d	$t8, $t8, -1
	addi.d	$t4, $t4, 8
	bnez	$t8, .LBB15_29
	b	.LBB15_26
.LBB15_30:                              # %.loopexit
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
.LBB15_31:                              # %.preheader226
	ld.w	$t2, $a0, 172
	ld.w	$a1, $a0, 168
	addi.d	$a2, $fp, 392
	pcalau12i	$a3, %got_pc_hi20(enc_picture)
	ld.d	$a5, $a3, %got_pc_lo12(enc_picture)
	move	$a3, $zero
	move	$a4, $zero
	ld.d	$a5, $a5, 0
	addi.d	$a6, $fp, 376
	addi.d	$a7, $a1, 1
	addi.d	$t0, $a1, 2
	addi.d	$t1, $a1, 3
	slli.d	$t2, $t2, 3
	slli.d	$t3, $a1, 3
	slli.d	$t4, $a7, 3
	slli.d	$t5, $t0, 3
	slli.d	$t6, $t1, 3
	ori	$t7, $zero, 4
	b	.LBB15_34
	.p2align	4, , 16
.LBB15_32:                              #   in Loop: Header=BB15_34 Depth=1
	ldptr.d	$s0, $a5, 6488
	ld.d	$s0, $s0, 0
	ldx.d	$s1, $ra, $a3
	add.d	$s0, $s0, $t2
	ldx.d	$s0, $s0, $a3
	ld.d	$s2, $s1, 16
	ldx.b	$s3, $s0, $t0
	ld.d	$s2, $s2, 0
	slli.d	$s3, $s3, 3
	ldx.w	$fp, $a6, $fp
	ldx.d	$s2, $s2, $s3
	slli.d	$fp, $fp, 3
	ldx.d	$s2, $s2, $fp
	ld.h	$s3, $s2, 0
	ldx.d	$s4, $t8, $t5
	st.h	$s3, $s4, 0
	ld.h	$s2, $s2, 2
	ld.d	$s1, $s1, 24
	st.h	$s2, $s4, 2
	ldx.b	$s0, $s0, $t1
	ld.d	$s1, $s1, 0
	slli.d	$s0, $s0, 3
	ldx.d	$s0, $s1, $s0
	ldx.d	$fp, $s0, $fp
	ld.h	$s0, $fp, 0
	ldx.d	$t8, $t8, $t6
	st.h	$s0, $t8, 0
	ld.hu	$fp, $fp, 2
.LBB15_33:                              #   in Loop: Header=BB15_34 Depth=1
	st.h	$fp, $t8, 2
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 8
	beq	$a4, $t7, .LBB15_20
.LBB15_34:                              # =>This Inner Loop Header: Depth=1
	andi	$fp, $a4, 2
	slli.d	$s0, $fp, 2
	ldx.w	$t8, $a2, $s0
	bltz	$t8, .LBB15_36
# %bb.35:                               #   in Loop: Header=BB15_34 Depth=1
	ldptr.d	$t8, $a5, 6488
	ld.d	$t8, $t8, 0
	ldx.d	$s1, $ra, $a3
	add.d	$t8, $t8, $t2
	ldx.d	$t8, $t8, $a3
	ld.d	$s1, $s1, 0
	ldx.b	$t8, $t8, $a1
	ld.d	$s1, $s1, 0
	ldptr.d	$s2, $a5, 6512
	ldx.w	$s3, $a6, $s0
	slli.d	$t8, $t8, 3
	ldx.d	$t8, $s1, $t8
	ld.d	$s1, $s2, 0
	slli.d	$s2, $s3, 3
	ldx.d	$s2, $t8, $s2
	add.d	$t8, $s1, $t2
	ldx.d	$t8, $t8, $a3
	ld.h	$s1, $s2, 0
	ldptr.d	$s3, $a5, 6488
	ldx.d	$s4, $t8, $t3
	ld.d	$s3, $s3, 0
	st.h	$s1, $s4, 0
	ldx.d	$s1, $ra, $a3
	ld.h	$s2, $s2, 2
	add.d	$s3, $s3, $t2
	ldx.d	$s3, $s3, $a3
	ld.d	$s1, $s1, 8
	st.h	$s2, $s4, 2
	ldx.b	$s2, $s3, $a7
	ld.d	$s1, $s1, 0
	ldx.w	$s0, $a6, $s0
	slli.d	$s2, $s2, 3
	ldx.d	$s1, $s1, $s2
	slli.d	$s0, $s0, 3
	ldx.d	$s1, $s1, $s0
	ld.h	$s2, $s1, 0
	ldx.d	$s0, $t8, $t4
	st.h	$s2, $s0, 0
	ld.hu	$s1, $s1, 2
	b	.LBB15_37
	.p2align	4, , 16
.LBB15_36:                              #   in Loop: Header=BB15_34 Depth=1
	ldptr.d	$t8, $a5, 6512
	ld.d	$t8, $t8, 0
	add.d	$t8, $t8, $t2
	ldx.d	$t8, $t8, $a3
	ldx.d	$s0, $t8, $t3
	alsl.d	$s1, $a1, $t8, 3
	st.w	$zero, $s0, 0
	ld.d	$s0, $s1, 8
	move	$s1, $zero
	st.h	$zero, $s0, 0
.LBB15_37:                              #   in Loop: Header=BB15_34 Depth=1
	addi.d	$fp, $fp, 1
	slli.d	$fp, $fp, 2
	ldx.w	$s2, $a2, $fp
	st.h	$s1, $s0, 2
	bgez	$s2, .LBB15_32
# %bb.38:                               #   in Loop: Header=BB15_34 Depth=1
	ldx.d	$fp, $t8, $t5
	st.w	$zero, $fp, 0
	alsl.d	$t8, $a1, $t8, 3
	ld.d	$t8, $t8, 24
	move	$fp, $zero
	st.h	$zero, $t8, 0
	b	.LBB15_33
.Lfunc_end15:
	.size	SetMotionVectorsMB, .Lfunc_end15-SetMotionVectorsMB
                                        # -- End function
	.globl	RDCost_for_macroblocks          # -- Begin function RDCost_for_macroblocks
	.p2align	5
	.type	RDCost_for_macroblocks,@function
RDCost_for_macroblocks:                 # @RDCost_for_macroblocks
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
	move	$s2, $a2
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$s4, $a0
	fmov.d	$fs0, $fa0
	st.w	$a3, $sp, 156
	st.w	$zero, $sp, 152
	st.w	$zero, $sp, 148
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s6, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s6, 0
	ld.w	$a0, $a0, 12
	pcaddu18i	$ra, %call36(FmoGetPreviousMBNr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	ldptr.d	$s1, $a1, 14224
	ld.w	$a2, $a1, 20
	ld.w	$s0, $a1, 12
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $zero, 2
	sltui	$fp, $s4, 1
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	bne	$a2, $a0, .LBB16_12
# %bb.1:                                # %.thread
	move	$a0, $s4
	pcaddu18i	$ra, %call36(SetModesAndRefframeForBlocks)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
.LBB16_2:                               # %.critedge
	ldptr.w	$a1, $a0, 15268
	ori	$a2, $zero, 536
	mul.d	$a2, $s0, $a2
	add.d	$s0, $s1, $a2
	beqz	$a1, .LBB16_5
# %bb.3:
	ld.w	$a1, $s0, 424
	bnez	$a1, .LBB16_5
# %bb.4:
	ld.w	$a1, $a0, 20
	or	$a1, $a1, $s4
	beqz	$a1, .LBB16_33
.LBB16_5:
	ldptr.w	$a1, $a0, 15260
	lu12i.w	$s5, 3
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	beqz	$a1, .LBB16_7
# %bb.6:
	ldptr.d	$a0, $a0, 14176
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 1024
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ldptr.d	$a0, $a0, 14184
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 1024
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ldptr.d	$a1, $a0, 14192
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ori	$s0, $s5, 3260
	ldx.w	$a2, $a0, $s0
	move	$s3, $s1
	ori	$s1, $s5, 3256
	ldx.w	$a3, $a0, $s1
	ld.d	$a0, $a1, 0
	mul.w	$a1, $a3, $a2
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ldptr.d	$a1, $a0, 14192
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 8
	ldx.w	$a2, $a0, $s0
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$a3, $a0, $s1
	move	$s1, $s3
	ld.d	$a0, $a1, 0
	mul.w	$a1, $a3, $a2
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB16_7:
	ori	$a0, $zero, 7
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	blt	$a0, $s4, .LBB16_30
# %bb.8:
	pcaddu18i	$ra, %call36(LumaResidualCoding)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB16_80
# %bb.9:
	ld.w	$a0, $s0, 364
	beqz	$a0, .LBB16_36
# %bb.10:
	ld.d	$a0, $s6, 0
	ld.w	$a2, $a0, 20
	ori	$a1, $zero, 1
	bne	$a2, $a1, .LBB16_143
# %bb.11:
	ldptr.w	$a0, $a0, 15256
	beq	$a0, $a1, .LBB16_143
	b	.LBB16_80
.LBB16_12:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	addi.d	$a0, $a0, -1
	sltu	$a0, $zero, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$a0, $s4
	pcaddu18i	$ra, %call36(SetModesAndRefframeForBlocks)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	bnez	$s4, .LBB16_2
# %bb.13:
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	bne	$a2, $a1, .LBB16_2
# %bb.14:                               # %.preheader219
	ld.w	$a1, $a0, 180
	pcalau12i	$a2, %pc_hi20(direct_pdir)
	ld.d	$a5, $a2, %pc_lo12(direct_pdir)
	ld.w	$a2, $a0, 176
	srai.d	$a6, $a1, 2
	slli.d	$a1, $a6, 3
	ldx.d	$a7, $a5, $a1
	srai.d	$a1, $a2, 2
	ldx.b	$a2, $a7, $a1
	bltz	$a2, .LBB16_143
# %bb.15:
	addi.d	$a2, $a1, 1
	ldx.b	$a3, $a7, $a2
	bltz	$a3, .LBB16_143
# %bb.16:
	addi.d	$a3, $a1, 2
	ldx.b	$a4, $a7, $a3
	bltz	$a4, .LBB16_143
# %bb.17:
	addi.d	$a4, $a1, 3
	ldx.b	$a7, $a7, $a4
	bltz	$a7, .LBB16_143
# %bb.18:                               # %.preheader219.1
	alsl.d	$a5, $a6, $a5, 3
	ld.d	$a6, $a5, 8
	ldx.b	$a7, $a6, $a1
	bltz	$a7, .LBB16_143
# %bb.19:
	ldx.b	$a7, $a6, $a2
	bltz	$a7, .LBB16_143
# %bb.20:
	ldx.b	$a7, $a6, $a3
	bltz	$a7, .LBB16_143
# %bb.21:
	ldx.b	$a6, $a6, $a4
	bltz	$a6, .LBB16_143
# %bb.22:                               # %.preheader219.2
	ld.d	$a6, $a5, 16
	ldx.b	$a7, $a6, $a1
	bltz	$a7, .LBB16_143
# %bb.23:
	ldx.b	$a7, $a6, $a2
	bltz	$a7, .LBB16_143
# %bb.24:
	ldx.b	$a7, $a6, $a3
	bltz	$a7, .LBB16_143
# %bb.25:
	ldx.b	$a6, $a6, $a4
	bltz	$a6, .LBB16_143
# %bb.26:                               # %.preheader219.3
	ld.d	$a5, $a5, 24
	ldx.b	$a1, $a5, $a1
	bltz	$a1, .LBB16_143
# %bb.27:
	ldx.b	$a1, $a5, $a2
	bltz	$a1, .LBB16_143
# %bb.28:
	ldx.b	$a1, $a5, $a3
	bltz	$a1, .LBB16_143
# %bb.29:
	ldx.b	$a1, $a5, $a4
	ori	$fp, $zero, 1
	bgez	$a1, .LBB16_2
	b	.LBB16_143
.LBB16_30:
	addi.d	$a0, $s4, -8
	ori	$a1, $zero, 6
	bltu	$a1, $a0, .LBB16_80
# %bb.31:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI16_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI16_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB16_32:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(SetCoeffAndReconstruction8x8)
	jirl	$ra, $ra, 0
	b	.LBB16_80
.LBB16_33:
	ldptr.d	$a1, $a0, 14384
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.hu	$a2, $a1, 0
	lu12i.w	$a3, -2
	add.d	$a2, $a2, $a3
	srli.d	$a2, $a2, 14
	ori	$a3, $zero, 3
	bltu	$a2, $a3, .LBB16_143
# %bb.34:
	ld.w	$a2, $a0, 8
	ld.h	$a1, $a1, 2
	slli.d	$a3, $a2, 4
	alsl.d	$a2, $a2, $a3, 3
	pcalau12i	$a3, %got_pc_hi20(LEVELMVLIMIT)
	ld.d	$a3, $a3, %got_pc_lo12(LEVELMVLIMIT)
	add.d	$a2, $a3, $a2
	ld.w	$a3, $a2, 16
	blt	$a1, $a3, .LBB16_143
# %bb.35:
	ld.w	$a2, $a2, 20
	bge	$a2, $a1, .LBB16_5
	b	.LBB16_143
.LBB16_36:
	ld.w	$a0, $s0, 472
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_143
	b	.LBB16_80
.LBB16_37:
	pcaddu18i	$ra, %call36(intrapred_luma_16x16)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 156
	pcaddu18i	$ra, %call36(find_sad_16x16)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 156
	pcaddu18i	$ra, %call36(dct_luma_16x16)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 364
	b	.LBB16_80
.LBB16_38:
	addi.d	$a0, $sp, 140
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_Intra4x4Macroblock)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 364
	b	.LBB16_80
.LBB16_39:
	addi.d	$a0, $sp, 140
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_new_Intra8x8Macroblock)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 364
	b	.LBB16_80
.LBB16_40:                              # %.preheader218
	ld.d	$a0, $s6, 0
	ld.w	$a3, $a0, 196
	ld.w	$a4, $a0, 180
	pcalau12i	$a1, %pc_hi20(imgY_org)
	ld.d	$a5, $a1, %pc_lo12(imgY_org)
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$t2, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a1, $t2, 0
	ldptr.d	$a6, $a1, 6440
	ld.w	$a1, $a0, 192
	move	$a2, $zero
	alsl.d	$a3, $a3, $a5, 3
	alsl.d	$a4, $a4, $a6, 3
	addi.w	$a5, $a1, 15
	addi.d	$a6, $a1, -1
	slli.d	$a7, $a1, 1
	ori	$t0, $zero, 31
	ori	$t1, $zero, 16
	b	.LBB16_43
	.p2align	4, , 16
.LBB16_41:                              # %vector.body
                                        #   in Loop: Header=BB16_43 Depth=1
	alsl.d	$t5, $a1, $t3, 1
	vldx	$vr0, $t3, $a7
	vld	$vr1, $t5, 16
	alsl.d	$t3, $a1, $t4, 1
	vstx	$vr0, $t4, $a7
	vst	$vr1, $t3, 16
.LBB16_42:                              # %.loopexit435
                                        #   in Loop: Header=BB16_43 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $t1, .LBB16_46
.LBB16_43:                              # %vector.memcheck
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_45 Depth 2
	slli.d	$t4, $a2, 3
	ldx.d	$t3, $a3, $t4
	ldx.d	$t4, $a4, $t4
	sub.d	$t5, $t4, $t3
	bltu	$t0, $t5, .LBB16_41
# %bb.44:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB16_43 Depth=1
	add.d	$t3, $t3, $a7
	add.d	$t4, $t4, $a7
	move	$t5, $a6
	.p2align	4, , 16
.LBB16_45:                              # %scalar.ph
                                        #   Parent Loop BB16_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t6, $t3, 0
	st.h	$t6, $t4, 0
	addi.d	$t5, $t5, 1
	addi.d	$t3, $t3, 2
	addi.d	$t4, $t4, 2
	blt	$t5, $a5, .LBB16_45
	b	.LBB16_42
.LBB16_46:
	move	$s4, $s2
	ldptr.w	$a1, $a0, 15536
	beqz	$a1, .LBB16_68
# %bb.47:                               # %.preheader216
	ldptr.w	$a1, $a0, 15548
	blez	$a1, .LBB16_68
# %bb.48:                               # %.lr.ph227
	ldptr.w	$a2, $a0, 15544
	ld.w	$a3, $a0, 200
	move	$a4, $zero
	ld.w	$a5, $a0, 204
	ld.w	$a6, $a0, 188
	add.w	$a7, $a2, $a3
	pcalau12i	$t0, %pc_hi20(imgUV_org)
	ld.d	$t0, $t0, %pc_lo12(imgUV_org)
	addi.d	$t1, $a3, 1
	slt	$t3, $a7, $t1
	masknez	$t4, $a7, $t3
	maskeqz	$t1, $t1, $t3
	or	$t1, $t1, $t4
	sub.d	$t1, $t1, $a3
	ld.d	$t2, $t2, 0
	move	$t3, $t1
	bstrins.d	$t3, $zero, 3, 0
	add.d	$t4, $t3, $a3
	st.d	$t4, $sp, 128                   # 8-byte Folded Spill
	andi	$t4, $t1, 8
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	move	$t6, $t1
	bstrins.d	$t6, $zero, 2, 0
	add.d	$t7, $t6, $a3
	slli.d	$t4, $a3, 1
	addi.d	$t8, $t4, 16
	sub.d	$fp, $zero, $t6
	ori	$s0, $zero, 8
	ori	$s1, $zero, 32
	b	.LBB16_50
	.p2align	4, , 16
.LBB16_49:                              # %._crit_edge
                                        #   in Loop: Header=BB16_50 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $a1, .LBB16_68
.LBB16_50:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_65 Depth 2
                                        #     Child Loop BB16_62 Depth 2
                                        #     Child Loop BB16_53 Depth 2
	blez	$a2, .LBB16_49
# %bb.51:                               # %iter.check
                                        #   in Loop: Header=BB16_50 Depth=1
	add.d	$t4, $a4, $a6
	ld.d	$t5, $t0, 0
	ldptr.d	$s2, $t2, 6472
	add.d	$s3, $a4, $a5
	slli.d	$s3, $s3, 3
	ldx.d	$s5, $t5, $s3
	ld.d	$t5, $s2, 0
	ld.d	$s6, $t0, 8
	ld.d	$s7, $s2, 8
	slli.d	$t4, $t4, 3
	ldx.d	$s2, $t5, $t4
	ldx.d	$s3, $s6, $s3
	ldx.d	$s6, $s7, $t4
	move	$s7, $a3
	bgeu	$t1, $s0, .LBB16_54
.LBB16_52:                              # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB16_50 Depth=1
	alsl.d	$t5, $s7, $s5, 1
	alsl.d	$s2, $s7, $s2, 1
	alsl.d	$s3, $s7, $s3, 1
	alsl.d	$t4, $s7, $s6, 1
	.p2align	4, , 16
.LBB16_53:                              # %vec.epilog.scalar.ph
                                        #   Parent Loop BB16_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$s5, $t5, 0
	st.h	$s5, $s2, 0
	ld.h	$s5, $s3, 0
	st.h	$s5, $t4, 0
	addi.d	$s7, $s7, 1
	addi.d	$t5, $t5, 2
	addi.d	$s2, $s2, 2
	addi.d	$s3, $s3, 2
	addi.d	$t4, $t4, 2
	blt	$s7, $a7, .LBB16_53
	b	.LBB16_49
	.p2align	4, , 16
.LBB16_54:                              # %vector.memcheck354
                                        #   in Loop: Header=BB16_50 Depth=1
	sub.d	$t4, $s6, $s2
	move	$s7, $a3
	bltu	$t4, $s1, .LBB16_52
# %bb.55:                               # %vector.memcheck354
                                        #   in Loop: Header=BB16_50 Depth=1
	sub.d	$t4, $s2, $s5
	move	$s7, $a3
	bltu	$t4, $s1, .LBB16_52
# %bb.56:                               # %vector.memcheck354
                                        #   in Loop: Header=BB16_50 Depth=1
	sub.d	$t4, $s3, $s2
	move	$s7, $a3
	bltu	$t4, $s1, .LBB16_52
# %bb.57:                               # %vector.memcheck354
                                        #   in Loop: Header=BB16_50 Depth=1
	sub.d	$t4, $s6, $s5
	move	$s7, $a3
	bltu	$t4, $s1, .LBB16_52
# %bb.58:                               # %vector.memcheck354
                                        #   in Loop: Header=BB16_50 Depth=1
	sub.d	$t4, $s6, $s3
	move	$s7, $a3
	bltu	$t4, $s1, .LBB16_52
# %bb.59:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB16_50 Depth=1
	ori	$t4, $zero, 16
	bgeu	$t1, $t4, .LBB16_64
# %bb.60:                               #   in Loop: Header=BB16_50 Depth=1
	move	$t4, $zero
.LBB16_61:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB16_50 Depth=1
	add.d	$s7, $fp, $t4
	add.d	$t4, $a3, $t4
	alsl.d	$t5, $t4, $s6, 1
	alsl.d	$s8, $t4, $s3, 1
	alsl.d	$ra, $t4, $s2, 1
	alsl.d	$t4, $t4, $s5, 1
	.p2align	4, , 16
.LBB16_62:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB16_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t4, 0
	vst	$vr0, $ra, 0
	vld	$vr0, $s8, 0
	vst	$vr0, $t5, 0
	addi.d	$s7, $s7, 8
	addi.d	$t5, $t5, 16
	addi.d	$s8, $s8, 16
	addi.d	$ra, $ra, 16
	addi.d	$t4, $t4, 16
	bnez	$s7, .LBB16_62
# %bb.63:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB16_50 Depth=1
	move	$s7, $t7
	beq	$t1, $t6, .LBB16_49
	b	.LBB16_52
.LBB16_64:                              # %vector.body367.preheader
                                        #   in Loop: Header=BB16_50 Depth=1
	add.d	$s7, $s5, $t8
	add.d	$s8, $s6, $t8
	add.d	$ra, $s2, $t8
	add.d	$t5, $s3, $t8
	move	$t4, $t3
	.p2align	4, , 16
.LBB16_65:                              # %vector.body367
                                        #   Parent Loop BB16_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s7, -16
	vld	$vr1, $s7, 0
	vst	$vr0, $ra, -16
	vst	$vr1, $ra, 0
	vld	$vr0, $t5, -16
	vld	$vr1, $t5, 0
	vst	$vr0, $s8, -16
	vst	$vr1, $s8, 0
	addi.d	$t4, $t4, -16
	addi.d	$s7, $s7, 32
	addi.d	$s8, $s8, 32
	addi.d	$ra, $ra, 32
	addi.d	$t5, $t5, 32
	bnez	$t4, .LBB16_65
# %bb.66:                               # %middle.block372
                                        #   in Loop: Header=BB16_50 Depth=1
	beq	$t1, $t3, .LBB16_49
# %bb.67:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB16_50 Depth=1
	move	$t4, $t3
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 120                   # 8-byte Folded Reload
	beqz	$t5, .LBB16_52
	b	.LBB16_61
.LBB16_68:                              # %.loopexit217
	ldptr.w	$a2, $a0, 15528
	addi.w	$a1, $zero, -3
	move	$s2, $s4
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	blt	$a2, $a1, .LBB16_80
# %bb.69:                               # %.lr.ph229
	ld.d	$a2, $a0, 152
	move	$a3, $zero
	addi.w	$a4, $zero, -1
	ori	$a5, $zero, 16
	.p2align	4, , 16
.LBB16_70:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, 12
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a2, $a6
	ld.d	$a6, $a6, 0
	stx.w	$a5, $a6, $a3
	ldptr.w	$a6, $a0, 15528
	addi.w	$a7, $a6, 3
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 4
	blt	$a4, $a7, .LBB16_70
# %bb.71:                               # %._crit_edge230
	blt	$a6, $a1, .LBB16_80
# %bb.72:                               # %.lr.ph229.1
	ld.d	$a2, $a0, 152
	move	$a3, $zero
	addi.w	$a4, $zero, -1
	ori	$a5, $zero, 16
	.p2align	4, , 16
.LBB16_73:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, 12
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a2, $a6
	ld.d	$a6, $a6, 8
	stx.w	$a5, $a6, $a3
	ldptr.w	$a6, $a0, 15528
	addi.w	$a7, $a6, 3
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 4
	blt	$a4, $a7, .LBB16_73
# %bb.74:                               # %._crit_edge230.1
	blt	$a6, $a1, .LBB16_80
# %bb.75:                               # %.lr.ph229.2
	ld.d	$a2, $a0, 152
	move	$a3, $zero
	addi.w	$a4, $zero, -1
	ori	$a5, $zero, 16
	.p2align	4, , 16
.LBB16_76:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, 12
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a2, $a6
	ld.d	$a6, $a6, 16
	stx.w	$a5, $a6, $a3
	ldptr.w	$a6, $a0, 15528
	addi.w	$a7, $a6, 3
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 4
	blt	$a4, $a7, .LBB16_76
# %bb.77:                               # %._crit_edge230.2
	blt	$a6, $a1, .LBB16_80
# %bb.78:                               # %.lr.ph229.3
	move	$a1, $zero
	ld.d	$a2, $a0, 152
	addi.w	$a3, $zero, -1
	ori	$a4, $zero, 16
	lu12i.w	$a5, 3
	ori	$a5, $a5, 3240
.LBB16_79:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, 12
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a2, $a6
	ld.d	$a6, $a6, 24
	stx.w	$a4, $a6, $a1
	ldx.w	$a6, $a0, $a5
	addi.w	$a6, $a6, 3
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 4
	blt	$a3, $a6, .LBB16_79
.LBB16_80:                              # %.critedge207
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 4168
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB16_83
# %bb.81:
	ld.d	$a1, $s6, 0
	ld.w	$a1, $a1, 20
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB16_83
# %bb.82:
	addi.d	$a0, $s4, -10
	ld.w	$a1, $sp, 156
	sltui	$a0, $a0, 1
	addi.w	$a2, $zero, -1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	pcaddu18i	$ra, %call36(compute_residue_mb)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
.LBB16_83:
	ldptr.w	$a0, $a0, 5116
	lu12i.w	$fp, 3
	beqz	$a0, .LBB16_86
# %bb.84:
	ld.d	$s3, $s6, 0
	ori	$a0, $zero, 10
	bne	$s4, $a0, .LBB16_87
# %bb.85:
	ld.w	$a0, $sp, 156
	slli.d	$a0, $a0, 9
	add.d	$a0, $s3, $a0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 720
	add.d	$a1, $a0, $a1
	b	.LBB16_88
.LBB16_86:                              # %._crit_edge314
	ld.d	$s3, $s6, 0
	b	.LBB16_89
.LBB16_87:
	ori	$a0, $fp, 336
	add.d	$a1, $s3, $a0
.LBB16_88:
	pcalau12i	$a0, %pc_hi20(pred)
	addi.d	$a0, $a0, %pc_lo12(pred)
	ori	$a2, $zero, 512
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB16_89:
	stptr.w	$zero, $s3, 15244
	ori	$a0, $zero, 14
	st.w	$zero, $sp, 140
	beq	$s4, $a0, .LBB16_92
# %bb.90:
	ori	$a0, $fp, 3248
	ldx.w	$a0, $s3, $a0
	beqz	$a0, .LBB16_92
# %bb.91:
	addi.d	$a0, $sp, 140
	pcaddu18i	$ra, %call36(ChromaResidualCoding)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s6, 0
.LBB16_92:
	ori	$a0, $zero, 10
	bne	$s4, $a0, .LBB16_94
# %bb.93:
	ld.wu	$a0, $s0, 364
	ld.w	$a1, $sp, 156
	andi	$a2, $a0, 15
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 13
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 1
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	srli.d	$a0, $a0, 2
	andi	$a0, $a0, 12
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	stptr.w	$a0, $s3, 15244
.LBB16_94:
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 4168
	ori	$a2, $zero, 3
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	bne	$a1, $a2, .LBB16_96
# %bb.95:
	ld.w	$a1, $s3, 20
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB16_110
.LBB16_96:
	ld.w	$a3, $s3, 196
	ld.w	$a4, $s3, 180
	ld.w	$a5, $s3, 192
	st.d	$s3, $sp, 104                   # 8-byte Folded Spill
	ldptr.d	$a0, $s3, 14232
	pcalau12i	$a1, %pc_hi20(imgY_org)
	ld.d	$a6, $a1, %pc_lo12(imgY_org)
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ldptr.d	$a7, $a1, 6440
	move	$a2, $zero
	move	$s1, $zero
	alsl.d	$a1, $a3, $a6, 3
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	alsl.d	$a1, $a4, $a7, 3
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a6, $a5, 1
	addi.d	$a7, $a5, 2
	addi.d	$t0, $a5, 3
	addi.d	$t1, $a5, 4
	addi.d	$t2, $a5, 5
	addi.d	$t3, $a5, 6
	addi.d	$t4, $a5, 7
	addi.d	$t5, $a5, 8
	addi.d	$t6, $a5, 9
	addi.d	$t7, $a5, 10
	addi.d	$t8, $a5, 11
	addi.d	$fp, $a5, 12
	addi.d	$s2, $a5, 13
	addi.d	$s3, $a5, 14
	addi.d	$s5, $a5, 15
	slli.d	$a5, $a5, 1
	slli.d	$a6, $a6, 1
	slli.d	$a7, $a7, 1
	slli.d	$t0, $t0, 1
	slli.d	$t1, $t1, 1
	slli.d	$t2, $t2, 1
	slli.d	$t3, $t3, 1
	slli.d	$t4, $t4, 1
	slli.d	$t5, $t5, 1
	slli.d	$t6, $t6, 1
	slli.d	$t7, $t7, 1
	slli.d	$t8, $t8, 1
	slli.d	$s0, $fp, 1
	slli.d	$s4, $s2, 1
	slli.d	$s3, $s3, 1
	slli.d	$s2, $s5, 1
	.p2align	4, , 16
.LBB16_97:                              # %vector.ph407
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$s6, $a1, $a2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$fp, $a1, $a2
	ldx.hu	$s7, $s6, $a5
	ldx.hu	$s8, $s6, $a6
	ldx.hu	$ra, $fp, $a5
	ldx.hu	$a1, $fp, $a6
	sub.d	$s7, $s7, $ra
	sub.d	$a1, $s8, $a1
	slli.d	$s7, $s7, 2
	slli.d	$a1, $a1, 2
	ldx.w	$s7, $a0, $s7
	ldx.hu	$s8, $s6, $a7
	ldx.hu	$ra, $s6, $t0
	ldx.hu	$s5, $fp, $a7
	ldx.hu	$a3, $fp, $t0
	ldx.w	$a1, $a0, $a1
	add.d	$s1, $s1, $s7
	sub.d	$s5, $s8, $s5
	sub.d	$a3, $ra, $a3
	slli.d	$s5, $s5, 2
	slli.d	$a3, $a3, 2
	ldx.w	$s5, $a0, $s5
	ldx.w	$a3, $a0, $a3
	ldx.hu	$s7, $s6, $t1
	ldx.hu	$s8, $s6, $t2
	ldx.hu	$ra, $fp, $t1
	ldx.hu	$a4, $fp, $t2
	add.d	$s1, $s1, $s5
	add.d	$a1, $a1, $a3
	sub.d	$a3, $s7, $ra
	sub.d	$a4, $s8, $a4
	slli.d	$a3, $a3, 2
	slli.d	$a4, $a4, 2
	ldx.w	$a3, $a0, $a3
	ldx.w	$a4, $a0, $a4
	ldx.hu	$s5, $s6, $t3
	ldx.hu	$s7, $s6, $t4
	ldx.hu	$s8, $fp, $t3
	ldx.hu	$ra, $fp, $t4
	add.d	$a3, $s1, $a3
	add.d	$a1, $a1, $a4
	sub.d	$a4, $s5, $s8
	sub.d	$s1, $s7, $ra
	slli.d	$a4, $a4, 2
	slli.d	$s1, $s1, 2
	ldx.w	$a4, $a0, $a4
	ldx.w	$s1, $a0, $s1
	ldx.hu	$s5, $s6, $t5
	ldx.hu	$s7, $s6, $t6
	ldx.hu	$s8, $fp, $t5
	ldx.hu	$ra, $fp, $t6
	add.d	$a3, $a3, $a4
	add.d	$a1, $a1, $s1
	sub.d	$a4, $s5, $s8
	sub.d	$s1, $s7, $ra
	slli.d	$a4, $a4, 2
	slli.d	$s1, $s1, 2
	ldx.hu	$s5, $s6, $t7
	ldx.hu	$s7, $s6, $t8
	ldx.hu	$s8, $fp, $t7
	ldx.hu	$ra, $fp, $t8
	ldx.w	$a4, $a0, $a4
	ldx.w	$s1, $a0, $s1
	sub.d	$s5, $s5, $s8
	sub.d	$s7, $s7, $ra
	slli.d	$s5, $s5, 2
	slli.d	$s7, $s7, 2
	ldx.w	$s5, $a0, $s5
	ldx.w	$s7, $a0, $s7
	add.d	$a3, $a3, $a4
	add.d	$a1, $a1, $s1
	add.d	$a3, $a3, $s5
	add.d	$a1, $a1, $s7
	ldx.hu	$a4, $s6, $s0
	ldx.hu	$s1, $s6, $s4
	ldx.hu	$s5, $fp, $s0
	ldx.hu	$s7, $fp, $s4
	ldx.hu	$s8, $s6, $s3
	ldx.hu	$s6, $s6, $s2
	ldx.hu	$ra, $fp, $s3
	ldx.hu	$fp, $fp, $s2
	sub.d	$a4, $a4, $s5
	sub.d	$s1, $s1, $s7
	sub.d	$s5, $s8, $ra
	sub.d	$fp, $s6, $fp
	slli.d	$a4, $a4, 2
	slli.d	$s1, $s1, 2
	ldx.w	$a4, $a0, $a4
	ldx.w	$s1, $a0, $s1
	slli.d	$s5, $s5, 2
	slli.d	$fp, $fp, 2
	ldx.w	$s5, $a0, $s5
	ldx.w	$fp, $a0, $fp
	add.d	$a3, $a3, $a4
	add.d	$a1, $a1, $s1
	add.d	$a3, $a3, $s5
	add.d	$a1, $a1, $fp
	addi.d	$a2, $a2, 8
	add.d	$s1, $a1, $a3
	ori	$a1, $zero, 128
	bne	$a2, $a1, .LBB16_97
# %bb.98:
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	ldptr.w	$a1, $a4, 15536
	beqz	$a1, .LBB16_128
# %bb.99:                               # %.preheader
	ldptr.w	$a2, $a4, 15548
	blez	$a2, .LBB16_128
# %bb.100:                              # %.lr.ph263
	ldptr.w	$a3, $a4, 15544
	ld.w	$a6, $a4, 200
	move	$a5, $zero
	ld.w	$t4, $a4, 204
	ld.w	$t6, $a4, 188
	add.w	$t0, $a3, $a6
	pcalau12i	$a1, %pc_hi20(imgUV_org)
	addi.d	$t1, $a6, 1
	slt	$t2, $t0, $t1
	masknez	$t3, $t0, $t2
	maskeqz	$t1, $t1, $t2
	or	$t1, $t1, $t3
	sub.d	$t1, $t1, $a6
	ld.d	$t2, $a1, %pc_lo12(imgUV_org)
	move	$s7, $t1
	bstrins.d	$s7, $zero, 0, 0
	add.d	$a1, $s7, $a6
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.d	$a6, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a1, $a6, 1
	addi.d	$t5, $a1, 2
	ori	$t3, $zero, 2
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	st.d	$t1, $sp, 120                   # 8-byte Folded Spill
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	b	.LBB16_102
	.p2align	4, , 16
.LBB16_101:                             # %._crit_edge259
                                        #   in Loop: Header=BB16_102 Depth=1
	addi.d	$a5, $a5, 1
	beq	$a5, $a2, .LBB16_129
.LBB16_102:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_106 Depth 2
                                        #     Child Loop BB16_109 Depth 2
	blez	$a3, .LBB16_101
# %bb.103:                              # %.lr.ph258
                                        #   in Loop: Header=BB16_102 Depth=1
	add.d	$a1, $a5, $t6
	ld.d	$t7, $t2, 0
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ldptr.d	$t8, $a4, 6472
	add.d	$fp, $a5, $t4
	slli.d	$fp, $fp, 3
	ldx.d	$t7, $t7, $fp
	ld.d	$s0, $t8, 0
	ld.d	$s2, $t2, 8
	ld.d	$s3, $t8, 8
	slli.d	$a1, $a1, 3
	ldx.d	$t8, $s0, $a1
	ldx.d	$fp, $s2, $fp
	ldx.d	$s0, $s3, $a1
	bgeu	$t1, $t3, .LBB16_105
# %bb.104:                              #   in Loop: Header=BB16_102 Depth=1
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	b	.LBB16_108
	.p2align	4, , 16
.LBB16_105:                             # %vector.body422.preheader
                                        #   in Loop: Header=BB16_102 Depth=1
	move	$a2, $a3
	move	$a3, $t6
	move	$t1, $t4
	move	$s2, $zero
	add.d	$s3, $s0, $t5
	add.d	$s4, $fp, $t5
	add.d	$s5, $t8, $t5
	add.d	$s6, $t7, $t5
	move	$t3, $s7
	.p2align	4, , 16
.LBB16_106:                             # %vector.body422
                                        #   Parent Loop BB16_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a1, $s6, -2
	ld.hu	$s8, $s6, 0
	ld.hu	$ra, $s5, -2
	ld.hu	$t6, $s5, 0
	ld.hu	$t4, $s4, -2
	ld.hu	$a4, $s4, 0
	ld.hu	$a6, $s3, -2
	ld.hu	$a7, $s3, 0
	sub.d	$a1, $a1, $ra
	sub.d	$t6, $s8, $t6
	sub.d	$a6, $t4, $a6
	sub.d	$a4, $a4, $a7
	slli.d	$a1, $a1, 2
	slli.d	$a7, $t6, 2
	ldx.w	$a1, $a0, $a1
	ldx.w	$a7, $a0, $a7
	slli.d	$a6, $a6, 2
	slli.d	$a4, $a4, 2
	ldx.w	$a6, $a0, $a6
	ldx.w	$a4, $a0, $a4
	add.d	$a1, $s1, $a1
	add.d	$a7, $s2, $a7
	add.d	$s1, $a1, $a6
	add.d	$s2, $a7, $a4
	addi.d	$s7, $s7, -2
	addi.d	$s3, $s3, 4
	addi.d	$s4, $s4, 4
	addi.d	$s5, $s5, 4
	addi.d	$s6, $s6, 4
	bnez	$s7, .LBB16_106
# %bb.107:                              # %middle.block428
                                        #   in Loop: Header=BB16_102 Depth=1
	add.d	$s1, $s2, $s1
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	move	$t4, $t1
	move	$t6, $a3
	move	$a3, $a2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	move	$s7, $t3
	ori	$t3, $zero, 2
	beq	$t1, $s7, .LBB16_101
.LBB16_108:                             # %scalar.ph417.preheader
                                        #   in Loop: Header=BB16_102 Depth=1
	alsl.d	$t7, $s2, $t7, 1
	alsl.d	$t8, $s2, $t8, 1
	alsl.d	$fp, $s2, $fp, 1
	alsl.d	$s0, $s2, $s0, 1
	.p2align	4, , 16
.LBB16_109:                             # %scalar.ph417
                                        #   Parent Loop BB16_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a1, $t7, 0
	ld.hu	$a4, $t8, 0
	ld.hu	$a6, $fp, 0
	ld.hu	$a7, $s0, 0
	sub.d	$a1, $a1, $a4
	sub.d	$a4, $a6, $a7
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a0, $a4
	add.d	$a1, $s1, $a1
	add.d	$s1, $a1, $a4
	addi.d	$s2, $s2, 1
	addi.d	$t7, $t7, 2
	addi.d	$t8, $t8, 2
	addi.d	$fp, $fp, 2
	addi.d	$s0, $s0, 2
	blt	$s2, $t0, .LBB16_109
	b	.LBB16_101
.LBB16_110:                             # %.preheader214
	ldptr.w	$a0, $a0, 4728
	blez	$a0, .LBB16_115
# %bb.111:                              # %.lr.ph238.preheader
	pcalau12i	$a0, %pc_hi20(imgY_org)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(decs)
	ld.d	$a0, $a0, %got_pc_lo12(decs)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB16_112:                             # %.lr.ph238
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_113 Depth 2
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(decode_one_mb)
	jirl	$ra, $ra, 0
	ld.d	$a5, $s6, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	move	$a0, $zero
	ld.w	$a4, $a5, 192
	ldptr.d	$a1, $a5, 14232
	ld.d	$a2, $a2, 8
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(imgY_org)
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	ld.w	$a5, $a5, 196
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	slli.d	$a6, $fp, 3
	ldx.d	$a6, $a2, $a6
	addi.d	$a7, $a4, 1
	addi.d	$t0, $a4, 2
	addi.d	$t1, $a4, 3
	addi.d	$t2, $a4, 4
	addi.d	$t3, $a4, 5
	addi.d	$t4, $a4, 6
	addi.d	$t5, $a4, 7
	addi.d	$t6, $a4, 8
	addi.d	$t7, $a4, 9
	addi.d	$t8, $a4, 10
	addi.d	$fp, $a4, 11
	addi.d	$s2, $a4, 12
	addi.d	$s3, $a4, 13
	addi.d	$s7, $a4, 14
	alsl.d	$a2, $a5, $a3, 3
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	alsl.d	$a2, $a5, $a6, 3
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	addi.d	$s1, $a4, 15
	slli.d	$a4, $a4, 1
	slli.d	$a5, $a7, 1
	slli.d	$a6, $t0, 1
	slli.d	$a7, $t1, 1
	slli.d	$t0, $t2, 1
	slli.d	$t1, $t3, 1
	slli.d	$t2, $t4, 1
	slli.d	$t3, $t5, 1
	slli.d	$t4, $t6, 1
	slli.d	$t5, $t7, 1
	slli.d	$t6, $t8, 1
	slli.d	$t7, $fp, 1
	slli.d	$t8, $s2, 1
	slli.d	$ra, $s3, 1
	slli.d	$s3, $s7, 1
	slli.d	$s2, $s1, 1
	.p2align	4, , 16
.LBB16_113:                             # %vector.ph383
                                        #   Parent Loop BB16_112 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$s7, $a2, $a0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$fp, $a2, $a0
	ldx.hu	$s1, $s7, $a4
	ldx.hu	$s6, $s7, $a5
	ldx.hu	$s8, $fp, $a4
	ldx.hu	$s4, $fp, $a5
	sub.d	$s1, $s1, $s8
	sub.d	$s4, $s6, $s4
	slli.d	$s1, $s1, 2
	slli.d	$s4, $s4, 2
	ldx.w	$s1, $a1, $s1
	ldx.hu	$s6, $s7, $a6
	ldx.hu	$s8, $s7, $a7
	ldx.hu	$s0, $fp, $a6
	ldx.hu	$a2, $fp, $a7
	ldx.w	$s4, $a1, $s4
	add.d	$s1, $s5, $s1
	sub.d	$s0, $s6, $s0
	sub.d	$a2, $s8, $a2
	slli.d	$s0, $s0, 2
	slli.d	$a2, $a2, 2
	ldx.w	$s0, $a1, $s0
	ldx.w	$a2, $a1, $a2
	ldx.hu	$s5, $s7, $t0
	ldx.hu	$s6, $s7, $t1
	ldx.hu	$s8, $fp, $t0
	ldx.hu	$a3, $fp, $t1
	add.d	$s0, $s1, $s0
	add.d	$a2, $s4, $a2
	sub.d	$s1, $s5, $s8
	sub.d	$a3, $s6, $a3
	slli.d	$s1, $s1, 2
	slli.d	$a3, $a3, 2
	ldx.w	$s1, $a1, $s1
	ldx.w	$a3, $a1, $a3
	ldx.hu	$s4, $s7, $t2
	ldx.hu	$s5, $s7, $t3
	ldx.hu	$s6, $fp, $t2
	ldx.hu	$s8, $fp, $t3
	add.d	$s0, $s0, $s1
	add.d	$a2, $a2, $a3
	sub.d	$a3, $s4, $s6
	sub.d	$s1, $s5, $s8
	slli.d	$a3, $a3, 2
	slli.d	$s1, $s1, 2
	ldx.w	$a3, $a1, $a3
	ldx.w	$s1, $a1, $s1
	ldx.hu	$s4, $s7, $t4
	ldx.hu	$s5, $s7, $t5
	ldx.hu	$s6, $fp, $t4
	ldx.hu	$s8, $fp, $t5
	add.d	$a3, $s0, $a3
	add.d	$a2, $a2, $s1
	sub.d	$s0, $s4, $s6
	sub.d	$s1, $s5, $s8
	slli.d	$s0, $s0, 2
	slli.d	$s1, $s1, 2
	ldx.hu	$s4, $s7, $t6
	ldx.hu	$s5, $s7, $t7
	ldx.hu	$s6, $fp, $t6
	ldx.hu	$s8, $fp, $t7
	ldx.w	$s0, $a1, $s0
	ldx.w	$s1, $a1, $s1
	sub.d	$s4, $s4, $s6
	sub.d	$s5, $s5, $s8
	slli.d	$s4, $s4, 2
	slli.d	$s5, $s5, 2
	ldx.w	$s4, $a1, $s4
	ldx.w	$s5, $a1, $s5
	add.d	$a3, $a3, $s0
	add.d	$a2, $a2, $s1
	add.d	$a3, $a3, $s4
	add.d	$a2, $a2, $s5
	ldx.hu	$s0, $s7, $t8
	ldx.hu	$s1, $s7, $ra
	ldx.hu	$s4, $fp, $t8
	ldx.hu	$s5, $fp, $ra
	ldx.hu	$s6, $s7, $s3
	ldx.hu	$s7, $s7, $s2
	ldx.hu	$s8, $fp, $s3
	ldx.hu	$fp, $fp, $s2
	sub.d	$s0, $s0, $s4
	sub.d	$s1, $s1, $s5
	sub.d	$s4, $s6, $s8
	sub.d	$fp, $s7, $fp
	slli.d	$s0, $s0, 2
	slli.d	$s1, $s1, 2
	ldx.w	$s0, $a1, $s0
	ldx.w	$s1, $a1, $s1
	slli.d	$s4, $s4, 2
	slli.d	$fp, $fp, 2
	ldx.w	$s4, $a1, $s4
	ldx.w	$fp, $a1, $fp
	add.d	$a3, $a3, $s0
	add.d	$a2, $a2, $s1
	add.d	$a3, $a3, $s4
	ori	$s0, $zero, 128
	add.d	$a2, $a2, $fp
	addi.d	$a0, $a0, 8
	add.d	$s5, $a2, $a3
	bne	$a0, $s0, .LBB16_113
# %bb.114:                              #   in Loop: Header=BB16_112 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4728
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	addi.d	$fp, $fp, 1
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	blt	$fp, $a0, .LBB16_112
	b	.LBB16_116
.LBB16_115:                             # %.preheader214.._crit_edge239_crit_edge
	st.d	$s3, $sp, 104                   # 8-byte Folded Spill
	move	$s5, $zero
.LBB16_116:                             # %._crit_edge239
	ld.d	$t5, $sp, 104                   # 8-byte Folded Reload
	ldptr.w	$a1, $t5, 15536
	div.d	$s1, $s5, $a0
	beqz	$a1, .LBB16_128
# %bb.117:                              # %.preheader212
	ldptr.w	$a0, $t5, 15548
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	blez	$a0, .LBB16_129
# %bb.118:                              # %.lr.ph249
	ld.w	$s5, $t5, 204
	ld.w	$s7, $t5, 188
	ldptr.w	$a3, $t5, 15544
	ld.w	$a1, $t5, 200
	pcalau12i	$a5, %pc_hi20(imgUV_org)
	ld.d	$a5, $a5, %pc_lo12(imgUV_org)
	add.w	$a6, $a3, $a1
	pcalau12i	$a7, %got_pc_hi20(enc_picture)
	ld.d	$t1, $a7, %got_pc_lo12(enc_picture)
	move	$a7, $zero
	addi.d	$t0, $a1, 1
	slt	$t2, $a6, $t0
	masknez	$t3, $a6, $t2
	maskeqz	$t0, $t0, $t2
	or	$t0, $t0, $t3
	sub.d	$t0, $t0, $a1
	ld.d	$t2, $t1, 0
	move	$t3, $t0
	bstrins.d	$t3, $zero, 0, 0
	add.d	$a2, $t3, $a1
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	slli.d	$t4, $a1, 1
	addi.d	$a1, $t4, 2
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ori	$t4, $zero, 2
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	st.d	$t2, $sp, 112                   # 8-byte Folded Spill
	b	.LBB16_120
	.p2align	4, , 16
.LBB16_119:                             # %._crit_edge245
                                        #   in Loop: Header=BB16_120 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $a0, .LBB16_129
.LBB16_120:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_124 Depth 2
                                        #     Child Loop BB16_127 Depth 2
	blez	$a3, .LBB16_119
# %bb.121:                              # %.lr.ph244
                                        #   in Loop: Header=BB16_120 Depth=1
	add.d	$t8, $a7, $s7
	add.d	$t7, $a7, $s5
	ld.d	$fp, $a5, 0
	ldptr.d	$s0, $t2, 6472
	ldptr.d	$t6, $t5, 14232
	slli.d	$s2, $t7, 3
	ldx.d	$t7, $fp, $s2
	ld.d	$fp, $s0, 0
	ld.d	$s3, $a5, 8
	ld.d	$s0, $s0, 8
	slli.d	$s4, $t8, 3
	ldx.d	$t8, $fp, $s4
	ldx.d	$fp, $s3, $s2
	ldx.d	$s0, $s0, $s4
	bgeu	$t0, $t4, .LBB16_123
# %bb.122:                              #   in Loop: Header=BB16_120 Depth=1
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	b	.LBB16_126
	.p2align	4, , 16
.LBB16_123:                             # %vector.body396.preheader
                                        #   in Loop: Header=BB16_120 Depth=1
	move	$a5, $t0
	move	$t0, $a0
	move	$a0, $a3
	move	$a3, $s7
	move	$t2, $s5
	move	$s2, $zero
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$s3, $s0, $a1
	add.d	$s4, $fp, $a1
	add.d	$s5, $t8, $a1
	add.d	$s6, $t7, $a1
	move	$t4, $t3
	move	$s7, $t3
	.p2align	4, , 16
.LBB16_124:                             # %vector.body396
                                        #   Parent Loop BB16_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$s8, $s6, -2
	ld.hu	$ra, $s6, 0
	ld.hu	$t5, $s5, -2
	ld.hu	$t3, $s5, 0
	ld.hu	$a4, $s4, -2
	ld.hu	$a1, $s4, 0
	ld.hu	$a2, $s3, -2
	ld.hu	$t1, $s3, 0
	sub.d	$t5, $s8, $t5
	sub.d	$t3, $ra, $t3
	sub.d	$a2, $a4, $a2
	sub.d	$a1, $a1, $t1
	slli.d	$a4, $t5, 2
	slli.d	$t1, $t3, 2
	ldx.w	$a4, $t6, $a4
	ldx.w	$t1, $t6, $t1
	slli.d	$a2, $a2, 2
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $t6, $a2
	ldx.w	$a1, $t6, $a1
	add.d	$a4, $s1, $a4
	add.d	$t1, $s2, $t1
	add.d	$s1, $a4, $a2
	add.d	$s2, $t1, $a1
	addi.d	$s7, $s7, -2
	addi.d	$s3, $s3, 4
	addi.d	$s4, $s4, 4
	addi.d	$s5, $s5, 4
	addi.d	$s6, $s6, 4
	bnez	$s7, .LBB16_124
# %bb.125:                              # %middle.block402
                                        #   in Loop: Header=BB16_120 Depth=1
	add.d	$s1, $s2, $s1
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 104                   # 8-byte Folded Reload
	move	$s5, $t2
	move	$s7, $a3
	move	$a3, $a0
	move	$a0, $t0
	move	$t0, $a5
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	move	$t3, $t4
	ori	$t4, $zero, 2
	beq	$t0, $t3, .LBB16_119
.LBB16_126:                             # %scalar.ph391.preheader
                                        #   in Loop: Header=BB16_120 Depth=1
	alsl.d	$t7, $s2, $t7, 1
	alsl.d	$t8, $s2, $t8, 1
	alsl.d	$fp, $s2, $fp, 1
	alsl.d	$s0, $s2, $s0, 1
	.p2align	4, , 16
.LBB16_127:                             # %scalar.ph391
                                        #   Parent Loop BB16_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a1, $t7, 0
	ld.hu	$a2, $t8, 0
	ld.hu	$a4, $fp, 0
	ld.hu	$t1, $s0, 0
	sub.d	$a1, $a1, $a2
	sub.d	$a2, $a4, $t1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $t6, $a1
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $t6, $a2
	add.d	$a1, $s1, $a1
	add.d	$s1, $a1, $a2
	addi.d	$s2, $s2, 1
	addi.d	$t7, $t7, 2
	addi.d	$t8, $t8, 2
	addi.d	$fp, $fp, 2
	addi.d	$s0, $s0, 2
	blt	$s2, $a6, .LBB16_127
	b	.LBB16_119
.LBB16_128:
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
.LBB16_129:                             # %.loopexit
	pcalau12i	$fp, %pc_hi20(cs_cm)
	ld.d	$a0, $fp, %pc_lo12(cs_cm)
	pcaddu18i	$ra, %call36(store_coding_state)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB16_132
# %bb.130:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 72
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB16_133
.LBB16_131:
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $s2, 0
	ld.w	$s4, $a0, 144
	ori	$a0, $zero, 1
	addi.d	$a1, $sp, 148
	pcaddu18i	$ra, %call36(writeMBLayer)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 140
	move	$s5, $a0
	addi.d	$a2, $sp, 144
	addi.d	$a3, $sp, 140
	move	$a0, $s4
	pcaddu18i	$ra, %call36(ue_linfo)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 144
	ld.d	$a1, $s2, 0
	sub.d	$a0, $s5, $a0
	st.w	$a0, $sp, 152
	st.w	$s4, $a1, 144
	b	.LBB16_136
.LBB16_132:
	ori	$a0, $zero, 1
	addi.d	$a1, $sp, 148
	pcaddu18i	$ra, %call36(writeMBLayer)
	jirl	$ra, $ra, 0
	st.w	$a0, $sp, 152
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	b	.LBB16_136
.LBB16_133:
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB16_135
# %bb.134:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 364
	bnez	$a0, .LBB16_131
.LBB16_135:
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $s2, 0
	ld.w	$a0, $a0, 144
	ld.w	$a1, $sp, 140
	addi.w	$a0, $a0, 1
	addi.d	$a2, $sp, 152
	addi.d	$a3, $sp, 140
	pcaddu18i	$ra, %call36(ue_linfo)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.w	$a0, $a0, 144
	ld.w	$a1, $sp, 140
	addi.d	$a2, $sp, 144
	addi.d	$a3, $sp, 140
	pcaddu18i	$ra, %call36(ue_linfo)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 144
	ld.w	$a1, $sp, 152
	sub.d	$a0, $a1, $a0
	st.w	$a0, $sp, 152
.LBB16_136:
	ld.d	$a0, $fp, %pc_lo12(cs_cm)
	pcaddu18i	$ra, %call36(reset_coding_state)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 152
	movgr2fr.d	$fa0, $s1
	ffint.d.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa2, $fa1
	vldi	$vr3, -928
	fcmp.clt.d	$fcc0, $fa2, $fa3
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	fld.d	$fa1, $a5, 0
	fsel	$fa2, $fa2, $fa3, $fcc0
	ld.d	$a1, $s2, 0
	fmadd.d	$fa0, $fs0, $fa2, $fa0
	fcmp.cle.d	$fcc0, $fa1, $fa0
	lu12i.w	$a3, 3
	bcnez	$fcc0, .LBB16_140
# %bb.137:
	ld.w	$a0, $a1, 44
	bnez	$a0, .LBB16_144
# %bb.138:
	ldptr.w	$a0, $a1, 15540
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB16_144
# %bb.139:
	beqz	$s1, .LBB16_144
.LBB16_140:
	fcmp.cune.d	$fcc0, $fa0, $fa1
	move	$a0, $zero
	bcnez	$fcc0, .LBB16_151
# %bb.141:
	ld.w	$a2, $a1, 20
	or	$a2, $a2, $s6
	bnez	$a2, .LBB16_151
# %bb.142:
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 0
	ori	$a2, $zero, 99
	bge	$a2, $a0, .LBB16_144
.LBB16_143:
	move	$a0, $zero
	b	.LBB16_151
.LBB16_144:
	bnez	$s6, .LBB16_150
# %bb.145:
	ori	$a0, $a3, 2980
	ldx.w	$a0, $a1, $a0
	beqz	$a0, .LBB16_150
# %bb.146:
	ld.w	$a0, $a1, 20
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB16_148
# %bb.147:
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 364
	bnez	$a2, .LBB16_150
.LBB16_148:
	ld.w	$a2, $a1, 12
	andi	$a3, $a2, 1
	beqz	$a3, .LBB16_150
# %bb.149:
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ori	$a4, $zero, 536
	mul.d	$a3, $a3, $a4
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	ld.w	$a4, $a3, 72
	beqz	$a4, .LBB16_152
.LBB16_150:
	ld.w	$a0, $sp, 148
	fst.d	$fa0, $a5, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s0, 0
	ori	$a0, $zero, 1
.LBB16_151:                             # %.loopexit220
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
.LBB16_152:
	ori	$a4, $zero, 1
	bne	$a0, $a4, .LBB16_154
# %bb.153:
	ld.w	$a0, $a3, 364
	bnez	$a0, .LBB16_150
.LBB16_154:
	ldptr.d	$a0, $a1, 14224
	ori	$a1, $zero, 536
	mul.d	$a2, $a2, $a1
	add.d	$a2, $a0, $a2
	ld.w	$a4, $a2, 452
	ori	$a3, $zero, 436
	bnez	$a4, .LBB16_156
# %bb.155:
	ld.w	$a4, $a2, 456
	ori	$a3, $zero, 440
	beqz	$a4, .LBB16_158
.LBB16_156:                             # %.sink.split.i
	ldx.w	$a2, $a2, $a3
	mul.d	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	ld.w	$a0, $a0, 424
.LBB16_157:                             # %field_flag_inference.exit
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 424
	bne	$a0, $a1, .LBB16_143
	b	.LBB16_150
.LBB16_158:
	move	$a0, $zero
	b	.LBB16_157
.Lfunc_end16:
	.size	RDCost_for_macroblocks, .Lfunc_end16-RDCost_for_macroblocks
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI16_0:
	.word	.LBB16_32-.LJTI16_0
	.word	.LBB16_38-.LJTI16_0
	.word	.LBB16_37-.LJTI16_0
	.word	.LBB16_80-.LJTI16_0
	.word	.LBB16_80-.LJTI16_0
	.word	.LBB16_39-.LJTI16_0
	.word	.LBB16_40-.LJTI16_0
                                        # -- End function
	.text
	.globl	field_flag_inference            # -- Begin function field_flag_inference
	.p2align	5
	.type	field_flag_inference,@function
field_flag_inference:                   # @field_flag_inference
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a0, 12
	ldptr.d	$a0, $a0, 14224
	ori	$a1, $zero, 536
	mul.d	$a2, $a2, $a1
	add.d	$a2, $a0, $a2
	ld.w	$a4, $a2, 452
	ori	$a3, $zero, 436
	bnez	$a4, .LBB17_2
# %bb.1:
	ld.w	$a4, $a2, 456
	ori	$a3, $zero, 440
	beqz	$a4, .LBB17_3
.LBB17_2:                               # %.sink.split
	ldx.w	$a2, $a2, $a3
	mul.d	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	ld.w	$a0, $a0, 424
	ret
.LBB17_3:
	move	$a0, $zero
	ret
.Lfunc_end17:
	.size	field_flag_inference, .Lfunc_end17-field_flag_inference
                                        # -- End function
	.globl	store_adaptive_rounding_parameters # -- Begin function store_adaptive_rounding_parameters
	.p2align	5
	.type	store_adaptive_rounding_parameters,@function
store_adaptive_rounding_parameters:     # @store_adaptive_rounding_parameters
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	ld.w	$a1, $a1, 472
	move	$fp, $a0
	addi.d	$a0, $a0, -9
	beqz	$a1, .LBB18_6
# %bb.1:
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB18_5
# %bb.2:
	ori	$a0, $zero, 13
	beq	$fp, $a0, .LBB18_5
# %bb.3:
	ori	$a0, $zero, 8
	bne	$fp, $a0, .LBB18_11
# %bb.4:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 14184
	addi.d	$a0, $a0, 16
	b	.LBB18_12
.LBB18_5:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 14184
	addi.d	$a0, $a0, 8
	pcalau12i	$a1, %pc_hi20(bestIntraFAdjust8x8)
	addi.d	$a1, $a1, %pc_lo12(bestIntraFAdjust8x8)
	b	.LBB18_15
.LBB18_6:
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB18_10
# %bb.7:
	ori	$a1, $zero, 13
	beq	$fp, $a1, .LBB18_10
# %bb.8:
	ori	$a0, $zero, 8
	bne	$fp, $a0, .LBB18_13
# %bb.9:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 14176
	addi.d	$a0, $a0, 24
	b	.LBB18_14
.LBB18_10:
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a1, 0
	ldptr.d	$a1, $a1, 14176
	sltui	$a0, $a0, 1
	alsl.d	$a0, $a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(bestIntraFAdjust4x4)
	addi.d	$a1, $a1, %pc_lo12(bestIntraFAdjust4x4)
	b	.LBB18_15
.LBB18_11:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 14184
.LBB18_12:
	pcalau12i	$a1, %pc_hi20(bestInterFAdjust8x8)
	addi.d	$a1, $a1, %pc_lo12(bestInterFAdjust8x8)
	b	.LBB18_15
.LBB18_13:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 14176
.LBB18_14:
	pcalau12i	$a1, %pc_hi20(bestInterFAdjust4x4)
	addi.d	$a1, $a1, %pc_lo12(bestInterFAdjust4x4)
.LBB18_15:
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a2, $zero, 1024
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 5660
	beqz	$a0, .LBB18_33
# %bb.16:
	ori	$a0, $zero, 8
	bne	$fp, $a0, .LBB18_21
# %bb.17:
	ld.w	$a1, $s0, 472
	beqz	$a1, .LBB18_21
# %bb.18:                               # %.preheader
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$fp, $a0, %got_pc_lo12(img)
	ld.d	$a1, $fp, 0
	ldptr.w	$a0, $a1, 15548
	blez	$a0, .LBB18_33
# %bb.19:                               # %.lr.ph53.preheader
	move	$s0, $zero
	move	$s1, $zero
	pcalau12i	$s2, %pc_hi20(bestInterFAdjust4x4Cr)
	.p2align	4, , 16
.LBB18_20:                              # %.lr.ph53
                                        # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $a1, 14200
	ld.d	$a2, $s2, %pc_lo12(bestInterFAdjust4x4Cr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a0, 0
	ldx.d	$a0, $a2, $s0
	ldptr.w	$a2, $a1, 15544
	ldx.d	$a1, $a3, $s0
	slli.d	$a2, $a2, 2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ldptr.d	$a0, $a1, 14200
	ld.d	$a2, $s2, %pc_lo12(bestInterFAdjust4x4Cr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a2, 8
	ld.d	$a3, $a0, 8
	ldx.d	$a0, $a2, $s0
	ldptr.w	$a2, $a1, 15544
	ldx.d	$a1, $a3, $s0
	slli.d	$a2, $a2, 2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ldptr.w	$a0, $a1, 15548
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB18_20
	b	.LBB18_33
.LBB18_21:
	bne	$fp, $a0, .LBB18_25
# %bb.22:                               # %.preheader42
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$fp, $a0, %got_pc_lo12(img)
	ld.d	$a1, $fp, 0
	ldptr.w	$a0, $a1, 15548
	blez	$a0, .LBB18_33
# %bb.23:                               # %.lr.ph51.preheader
	move	$s0, $zero
	move	$s1, $zero
	pcalau12i	$s2, %pc_hi20(bestInterFAdjust4x4Cr)
	.p2align	4, , 16
.LBB18_24:                              # %.lr.ph51
                                        # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $a1, 14192
	ld.d	$a2, $s2, %pc_lo12(bestInterFAdjust4x4Cr)
	ld.d	$a0, $a0, 16
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a0, 0
	ldx.d	$a0, $a2, $s0
	ldptr.w	$a2, $a1, 15544
	ldx.d	$a1, $a3, $s0
	slli.d	$a2, $a2, 2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ldptr.d	$a0, $a1, 14192
	ld.d	$a2, $s2, %pc_lo12(bestInterFAdjust4x4Cr)
	ld.d	$a0, $a0, 16
	ld.d	$a2, $a2, 8
	ld.d	$a3, $a0, 8
	ldx.d	$a0, $a2, $s0
	ldptr.w	$a2, $a1, 15544
	ldx.d	$a1, $a3, $s0
	slli.d	$a2, $a2, 2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ldptr.w	$a0, $a1, 15548
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB18_24
	b	.LBB18_33
.LBB18_25:
	ori	$a0, $zero, 13
	bltu	$a0, $fp, .LBB18_30
# %bb.26:
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $fp
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1536
	and	$a0, $a0, $a1
	beqz	$a0, .LBB18_30
# %bb.27:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$fp, $a0, %got_pc_lo12(img)
	ld.d	$a1, $fp, 0
	ldptr.w	$a0, $a1, 15548
	blez	$a0, .LBB18_33
# %bb.28:                               # %.lr.ph.preheader
	move	$s0, $zero
	move	$s1, $zero
	pcalau12i	$s2, %pc_hi20(bestIntraFAdjust4x4Cr)
	.p2align	4, , 16
.LBB18_29:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $a1, 14192
	ld.d	$a2, $s2, %pc_lo12(bestIntraFAdjust4x4Cr)
	ld.d	$a0, $a0, 8
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a0, 0
	ldx.d	$a0, $a2, $s0
	ldptr.w	$a2, $a1, 15544
	ldx.d	$a1, $a3, $s0
	slli.d	$a2, $a2, 2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ldptr.d	$a0, $a1, 14192
	ld.d	$a2, $s2, %pc_lo12(bestIntraFAdjust4x4Cr)
	ld.d	$a0, $a0, 8
	ld.d	$a2, $a2, 8
	ld.d	$a3, $a0, 8
	ldx.d	$a0, $a2, $s0
	ldptr.w	$a2, $a1, 15544
	ldx.d	$a1, $a3, $s0
	slli.d	$a2, $a2, 2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ldptr.w	$a0, $a1, 15548
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB18_29
	b	.LBB18_33
.LBB18_30:                              # %.preheader44
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$fp, $a0, %got_pc_lo12(img)
	ld.d	$a1, $fp, 0
	ldptr.w	$a0, $a1, 15548
	blez	$a0, .LBB18_33
# %bb.31:                               # %.lr.ph49.preheader
	move	$s0, $zero
	move	$s1, $zero
	pcalau12i	$s2, %pc_hi20(bestInterFAdjust4x4Cr)
	.p2align	4, , 16
.LBB18_32:                              # %.lr.ph49
                                        # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $a1, 14192
	ld.d	$a2, $s2, %pc_lo12(bestInterFAdjust4x4Cr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a0, 0
	ldx.d	$a0, $a2, $s0
	ldptr.w	$a2, $a1, 15544
	ldx.d	$a1, $a3, $s0
	slli.d	$a2, $a2, 2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ldptr.d	$a0, $a1, 14192
	ld.d	$a2, $s2, %pc_lo12(bestInterFAdjust4x4Cr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a2, 8
	ld.d	$a3, $a0, 8
	ldx.d	$a0, $a2, $s0
	ldptr.w	$a2, $a1, 15544
	ldx.d	$a1, $a3, $s0
	slli.d	$a2, $a2, 2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ldptr.w	$a0, $a1, 15548
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB18_32
.LBB18_33:                              # %.loopexit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end18:
	.size	store_adaptive_rounding_parameters, .Lfunc_end18-store_adaptive_rounding_parameters
                                        # -- End function
	.globl	store_macroblock_parameters     # -- Begin function store_macroblock_parameters
	.p2align	5
	.type	store_macroblock_parameters,@function
store_macroblock_parameters:            # @store_macroblock_parameters
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
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s1, $a0, %got_pc_lo12(img)
	ld.d	$s4, $s1, 0
	ld.w	$a0, $s4, 12
	ldptr.d	$a1, $s4, 14224
	ori	$a2, $zero, 536
	mul.d	$a0, $a0, $a2
	add.d	$fp, $a1, $a0
	ld.w	$a0, $fp, 416
	pcalau12i	$a1, %pc_hi20(best_c_imode)
	lu12i.w	$a2, 3
	ori	$a2, $a2, 2956
	ldx.w	$a2, $s4, $a2
	st.w	$a0, $a1, %pc_lo12(best_c_imode)
	ld.w	$s8, $s4, 20
	pcalau12i	$a0, %pc_hi20(best_i16offset)
	st.w	$a2, $a0, %pc_lo12(best_i16offset)
	pcalau12i	$a0, %pc_hi20(best_mode)
	ori	$a1, $zero, 1
	st.h	$s0, $a0, %pc_lo12(best_mode)
	bne	$s0, $a1, .LBB19_2
# %bb.1:
	ld.hu	$a0, $fp, 480
	b	.LBB19_3
.LBB19_2:
	move	$a0, $zero
.LBB19_3:                               # %.preheader83
	pcalau12i	$a1, %pc_hi20(bi_pred_me)
	st.h	$a0, $a1, %pc_lo12(bi_pred_me)
	vld	$vr0, $fp, 376
	pcalau12i	$a0, %pc_hi20(b8mode)
	vst	$vr0, $a0, %pc_lo12(b8mode)
	vld	$vr0, $fp, 392
	pcalau12i	$a0, %pc_hi20(b8pdir)
	vst	$vr0, $a0, %pc_lo12(b8pdir)
	vld	$vr0, $fp, 332
	pcalau12i	$a0, %pc_hi20(b4_intra_pred_modes)
	vst	$vr0, $a0, %pc_lo12(b4_intra_pred_modes)
	vld	$vr0, $fp, 348
	ld.w	$a0, $s4, 172
	ld.d	$a1, $s4, 128
	pcalau12i	$a2, %pc_hi20(b8_intra_pred_modes8x8)
	vst	$vr0, $a2, %pc_lo12(b8_intra_pred_modes8x8)
	slli.d	$a0, $a0, 3
	ldx.d	$a2, $a1, $a0
	ld.w	$a3, $s4, 168
	ldx.w	$a2, $a2, $a3
	pcalau12i	$a4, %pc_hi20(b4_ipredmode)
	addi.d	$a4, $a4, %pc_lo12(b4_ipredmode)
	ld.d	$a5, $s4, 136
	st.w	$a2, $a4, 0
	ldx.d	$a2, $a5, $a0
	ldx.w	$a2, $a2, $a3
	pcalau12i	$a6, %pc_hi20(b8_ipredmode8x8)
	addi.d	$a6, $a6, %pc_lo12(b8_ipredmode8x8)
	st.w	$a2, $a6, 0
	addi.d	$a2, $a0, 8
	ldx.d	$a7, $a1, $a2
	ldx.w	$a7, $a7, $a3
	st.w	$a7, $a4, 4
	ldx.d	$a2, $a5, $a2
	ldx.w	$a2, $a2, $a3
	st.w	$a2, $a6, 4
	addi.d	$a2, $a0, 16
	ldx.d	$a7, $a1, $a2
	ldx.w	$a7, $a7, $a3
	st.w	$a7, $a4, 8
	ldx.d	$a2, $a5, $a2
	ldx.w	$a2, $a2, $a3
	st.w	$a2, $a6, 8
	addi.d	$a0, $a0, 24
	ldx.d	$a1, $a1, $a0
	ldx.w	$a1, $a1, $a3
	st.w	$a1, $a4, 12
	ldx.d	$a0, $a5, $a0
	ldx.w	$a0, $a0, $a3
	st.w	$a0, $a6, 12
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$s5, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(rec_mbY)
	addi.d	$a1, $a1, %pc_lo12(rec_mbY)
	move	$a2, $zero
	ori	$a3, $zero, 16
	.p2align	4, , 16
.LBB19_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $s4, 180
	ldptr.d	$a5, $a0, 6440
	add.d	$a4, $a2, $a4
	slli.d	$a4, $a4, 3
	ld.w	$a6, $s4, 176
	ldx.d	$a4, $a5, $a4
	slli.d	$a5, $a6, 1
	vldx	$vr0, $a4, $a5
	alsl.d	$a4, $a6, $a4, 1
	vst	$vr0, $a1, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a1, 16
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 32
	bne	$a2, $a3, .LBB19_4
# %bb.5:
	ld.w	$a0, $s4, 20
	pcalau12i	$s7, %pc_hi20(si_frame_indicator)
	ori	$a1, $zero, 3
	pcalau12i	$s6, %pc_hi20(sp2_frame_indicator)
	bne	$a0, $a1, .LBB19_10
# %bb.6:
	ld.w	$a0, $s7, %pc_lo12(si_frame_indicator)
	bnez	$a0, .LBB19_10
# %bb.7:
	ld.w	$a0, $s6, %pc_lo12(sp2_frame_indicator)
	bnez	$a0, .LBB19_10
# %bb.8:                                # %.preheader81
	pcalau12i	$a0, %pc_hi20(lrec)
	ld.d	$a0, $a0, %pc_lo12(lrec)
	pcalau12i	$a1, %pc_hi20(lrec_rec)
	addi.d	$a1, $a1, %pc_lo12(lrec_rec)
	move	$a2, $zero
	ori	$a3, $zero, 16
	.p2align	4, , 16
.LBB19_9:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $s4, 180
	add.d	$a4, $a2, $a4
	slli.d	$a4, $a4, 3
	ld.w	$a5, $s4, 176
	ldx.d	$a4, $a0, $a4
	slli.d	$a6, $a5, 2
	vldx	$vr0, $a4, $a6
	alsl.d	$a4, $a5, $a4, 2
	vst	$vr0, $a1, 0
	vld	$vr0, $a4, 48
	vst	$vr0, $a1, 48
	vld	$vr0, $a4, 32
	vst	$vr0, $a1, 32
	vld	$vr0, $a4, 16
	vst	$vr0, $a1, 16
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 64
	bne	$a2, $a3, .LBB19_9
.LBB19_10:                              # %.loopexit82
	ldptr.w	$a0, $s4, 15260
	beqz	$a0, .LBB19_12
# %bb.11:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(store_adaptive_rounding_parameters)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s1, 0
.LBB19_12:
	ldptr.w	$a0, $s4, 15536
	beqz	$a0, .LBB19_24
# %bb.13:                               # %.preheader80
	ldptr.w	$a0, $s4, 15548
	blez	$a0, .LBB19_17
# %bb.14:                               # %.lr.ph
	move	$a0, $s5
	move	$s5, $s8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s8, $a0, 0
	pcalau12i	$a0, %pc_hi20(rec_mbU)
	addi.d	$s1, $a0, %pc_lo12(rec_mbU)
	pcalau12i	$a0, %pc_hi20(rec_mbV)
	addi.d	$s2, $a0, %pc_lo12(rec_mbV)
	move	$s3, $zero
	.p2align	4, , 16
.LBB19_15:                              # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $s8, 6472
	ld.w	$a1, $s4, 188
	ld.d	$a0, $a0, 0
	add.d	$a1, $s3, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $s4, 184
	ldptr.w	$a2, $s4, 15544
	alsl.d	$a1, $a1, $a0, 1
	slli.d	$a2, $a2, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $s8, 6472
	ld.w	$a1, $s4, 188
	ld.d	$a0, $a0, 8
	add.d	$a1, $s3, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $s4, 184
	ldptr.w	$a2, $s4, 15544
	alsl.d	$a1, $a1, $a0, 1
	slli.d	$a2, $a2, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s4, 15548
	addi.d	$s3, $s3, 1
	addi.d	$s1, $s1, 32
	addi.d	$s2, $s2, 32
	blt	$s3, $a0, .LBB19_15
# %bb.16:                               # %._crit_edge.loopexit
	slti	$a0, $a0, 1
	move	$s8, $s5
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	b	.LBB19_18
.LBB19_17:
	ori	$a0, $zero, 1
.LBB19_18:                              # %._crit_edge
	ld.w	$a1, $s4, 20
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB19_24
# %bb.19:                               # %._crit_edge
	ld.w	$a1, $s7, %pc_lo12(si_frame_indicator)
	bnez	$a1, .LBB19_24
# %bb.20:                               # %._crit_edge
	ld.w	$a1, $s6, %pc_lo12(sp2_frame_indicator)
	bnez	$a1, .LBB19_24
# %bb.21:                               # %._crit_edge
	bnez	$a0, .LBB19_24
# %bb.22:                               # %.lr.ph89
	pcalau12i	$a0, %pc_hi20(lrec_uv)
	ld.d	$s6, $a0, %pc_lo12(lrec_uv)
	pcalau12i	$a0, %pc_hi20(lrec_rec_U)
	addi.d	$s1, $a0, %pc_lo12(lrec_rec_U)
	pcalau12i	$a0, %pc_hi20(lrec_rec_V)
	addi.d	$s2, $a0, %pc_lo12(lrec_rec_V)
	move	$s3, $zero
	.p2align	4, , 16
.LBB19_23:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s4, 188
	ld.d	$a1, $s6, 0
	add.d	$a0, $s3, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $s4, 184
	ldptr.w	$a2, $s4, 15544
	alsl.d	$a1, $a1, $a0, 2
	slli.d	$a2, $a2, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 188
	ld.d	$a1, $s6, 8
	add.d	$a0, $s3, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $s4, 184
	ldptr.w	$a2, $s4, 15544
	alsl.d	$a1, $a1, $a0, 2
	slli.d	$a2, $a2, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s4, 15548
	addi.d	$s3, $s3, 1
	addi.d	$s1, $s1, 64
	addi.d	$s2, $s2, 64
	blt	$s3, $a0, .LBB19_23
.LBB19_24:                              # %.loopexit79
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 4168
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB19_35
# %bb.25:
	ld.w	$a1, $s4, 20
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB19_35
# %bb.26:                               # %.preheader76
	ldptr.w	$a0, $a0, 4728
	blez	$a0, .LBB19_35
# %bb.27:                               # %.lr.ph93
	pcalau12i	$a1, %got_pc_hi20(decs)
	ld.d	$a1, $a1, %got_pc_lo12(decs)
	ld.d	$a5, $a1, 0
	move	$a1, $zero
	ld.w	$a2, $s4, 176
	ld.w	$a3, $s4, 180
	ld.d	$a4, $a5, 8
	ld.d	$a5, $a5, 24
	addi.w	$a6, $a2, 15
	addi.w	$a7, $a3, 15
	addi.d	$t0, $a2, -1
	slli.d	$t1, $a2, 1
	ori	$t2, $zero, 31
	b	.LBB19_29
	.p2align	4, , 16
.LBB19_28:                              #   in Loop: Header=BB19_29 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a0, .LBB19_35
.LBB19_29:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_32 Depth 2
                                        #       Child Loop BB19_34 Depth 3
	slli.d	$t4, $a1, 3
	ldx.d	$t3, $a4, $t4
	ldx.d	$t4, $a5, $t4
	move	$t6, $a3
	b	.LBB19_32
	.p2align	4, , 16
.LBB19_30:                              # %vector.body
                                        #   in Loop: Header=BB19_32 Depth=2
	alsl.d	$t8, $a2, $t6, 1
	vldx	$vr0, $t6, $t1
	vld	$vr1, $t8, 16
	alsl.d	$t6, $a2, $t7, 1
	vstx	$vr0, $t7, $t1
	vst	$vr1, $t6, 16
.LBB19_31:                              # %.loopexit125
                                        #   in Loop: Header=BB19_32 Depth=2
	addi.d	$t6, $t5, 1
	bge	$t5, $a7, .LBB19_28
.LBB19_32:                              # %vector.memcheck
                                        #   Parent Loop BB19_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_34 Depth 3
	move	$t5, $t6
	slli.d	$t7, $t6, 3
	ldx.d	$t6, $t3, $t7
	ldx.d	$t7, $t4, $t7
	sub.d	$t8, $t7, $t6
	bltu	$t2, $t8, .LBB19_30
# %bb.33:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB19_32 Depth=2
	add.d	$t6, $t6, $t1
	add.d	$t7, $t7, $t1
	move	$t8, $t0
	.p2align	4, , 16
.LBB19_34:                              # %scalar.ph
                                        #   Parent Loop BB19_29 Depth=1
                                        #     Parent Loop BB19_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$s1, $t6, 0
	st.h	$s1, $t7, 0
	addi.d	$t8, $t8, 1
	addi.d	$t6, $t6, 2
	addi.d	$t7, $t7, 2
	blt	$t8, $a6, .LBB19_34
	b	.LBB19_31
.LBB19_35:                              # %.loopexit77
	bnez	$s0, .LBB19_38
# %bb.36:                               # %.loopexit77
	ori	$a0, $zero, 1
	beq	$s8, $a0, .LBB19_38
# %bb.37:
	move	$a1, $zero
	move	$a3, $zero
	b	.LBB19_39
.LBB19_38:
	ldptr.d	$a0, $s4, 14160
	pcalau12i	$a1, %pc_hi20(cofAC)
	ld.d	$a2, $a1, %pc_lo12(cofAC)
	st.d	$a0, $a1, %pc_lo12(cofAC)
	pcalau12i	$a0, %pc_hi20(cofDC)
	ld.d	$a4, $a0, %pc_lo12(cofDC)
	ldptr.d	$a5, $s4, 14168
	ld.w	$a1, $fp, 364
	ld.d	$a3, $fp, 368
	stptr.d	$a2, $s4, 14160
	st.d	$a5, $a0, %pc_lo12(cofDC)
	stptr.d	$a4, $s4, 14168
.LBB19_39:
	ld.d	$a0, $s5, 0
	ldptr.d	$a0, $a0, 6488
	pcalau12i	$a2, %pc_hi20(cbp)
	st.w	$a1, $a2, %pc_lo12(cbp)
	ld.w	$a5, $s4, 172
	ld.d	$a1, $a0, 0
	pcalau12i	$a4, %pc_hi20(cbp_blk)
	ld.w	$a6, $fp, 472
	slli.d	$a2, $a5, 3
	ldx.d	$a7, $a1, $a2
	ld.w	$a1, $s4, 168
	st.d	$a3, $a4, %pc_lo12(cbp_blk)
	pcalau12i	$a3, %pc_hi20(luma_transform_size_8x8_flag)
	st.w	$a6, $a3, %pc_lo12(luma_transform_size_8x8_flag)
	ldx.w	$a3, $a7, $a1
	pcalau12i	$a4, %pc_hi20(frefframe)
	addi.d	$a6, $a4, %pc_lo12(frefframe)
	st.w	$a3, $a6, 0
	ld.d	$a4, $a0, 0
	addi.w	$a3, $a5, 1
	slli.d	$a3, $a3, 3
	ldx.d	$a4, $a4, $a3
	ldx.w	$a4, $a4, $a1
	st.w	$a4, $a6, 4
	ld.d	$a7, $a0, 0
	addi.w	$a4, $a5, 2
	slli.d	$a4, $a4, 3
	ldx.d	$a7, $a7, $a4
	ldx.w	$a7, $a7, $a1
	st.w	$a7, $a6, 8
	ld.d	$a7, $a0, 0
	addi.w	$a5, $a5, 3
	slli.d	$a5, $a5, 3
	ldx.d	$a7, $a7, $a5
	ldx.w	$a7, $a7, $a1
	ori	$t0, $zero, 1
	st.w	$a7, $a6, 12
	bne	$s8, $t0, .LBB19_41
# %bb.40:                               # %.preheader
	ld.d	$a6, $a0, 8
	ldx.d	$a2, $a6, $a2
	ldx.w	$a2, $a2, $a1
	pcalau12i	$a7, %pc_hi20(brefframe)
	addi.d	$a7, $a7, %pc_lo12(brefframe)
	st.w	$a2, $a7, 0
	ldx.d	$a2, $a6, $a3
	ldx.w	$a2, $a2, $a1
	st.w	$a2, $a7, 4
	ldx.d	$a2, $a6, $a4
	ldx.w	$a2, $a2, $a1
	st.w	$a2, $a7, 8
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $a5
	ldx.w	$a0, $a0, $a1
	st.w	$a0, $a7, 12
.LBB19_41:                              # %.loopexit
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
.Lfunc_end19:
	.size	store_macroblock_parameters, .Lfunc_end19-store_macroblock_parameters
                                        # -- End function
	.globl	set_stored_macroblock_parameters # -- Begin function set_stored_macroblock_parameters
	.p2align	5
	.type	set_stored_macroblock_parameters,@function
set_stored_macroblock_parameters:       # @set_stored_macroblock_parameters
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2288
	sub.d	$sp, $sp, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s5, $a0, %got_pc_lo12(img)
	ld.d	$a2, $s5, 0
	ldptr.d	$fp, $a2, 14224
	ld.w	$a1, $a2, 12
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$s6, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a3, $s6, 0
	ldptr.d	$a0, $a3, 6440
	ldptr.d	$a3, $a3, 6472
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(best_mode)
	ld.hu	$s2, $a3, %pc_lo12(best_mode)
	ld.w	$a3, $a2, 20
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a2, $a2, 128
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(rec_mbY)
	addi.d	$a2, $a2, %pc_lo12(rec_mbY)
	move	$a3, $zero
	ori	$a4, $zero, 16
	.p2align	4, , 16
.LBB20_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $s5, 0
	ld.w	$a6, $a5, 180
	add.d	$a6, $a3, $a6
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a0, $a6
	ld.w	$a5, $a5, 176
	vld	$vr0, $a2, 0
	slli.d	$a7, $a5, 1
	vstx	$vr0, $a6, $a7
	vld	$vr0, $a2, 16
	alsl.d	$a5, $a5, $a6, 1
	vst	$vr0, $a5, 16
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 32
	bne	$a3, $a4, .LBB20_1
# %bb.2:
	ld.d	$a0, $s5, 0
	ld.w	$a2, $a0, 20
	pcalau12i	$s1, %pc_hi20(si_frame_indicator)
	ori	$a3, $zero, 3
	pcalau12i	$a4, %pc_hi20(sp2_frame_indicator)
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	bne	$a2, $a3, .LBB20_8
# %bb.3:
	ld.w	$a2, $s1, %pc_lo12(si_frame_indicator)
	bnez	$a2, .LBB20_8
# %bb.4:
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(sp2_frame_indicator)
	bnez	$a2, .LBB20_8
# %bb.5:                                # %.preheader353.preheader
	pcalau12i	$a0, %pc_hi20(lrec_rec)
	addi.d	$a0, $a0, %pc_lo12(lrec_rec)
	move	$a2, $zero
	pcalau12i	$a3, %pc_hi20(lrec)
	ori	$a4, $zero, 16
	.p2align	4, , 16
.LBB20_6:                               # %.preheader353
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $s5, 0
	ld.w	$a6, $a5, 180
	ld.d	$a7, $a3, %pc_lo12(lrec)
	add.d	$a6, $a2, $a6
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a7, $a6
	ld.w	$a5, $a5, 176
	vld	$vr0, $a0, 0
	slli.d	$a7, $a5, 2
	vstx	$vr0, $a6, $a7
	vld	$vr0, $a0, 48
	alsl.d	$a5, $a5, $a6, 2
	vst	$vr0, $a5, 48
	vld	$vr0, $a0, 32
	vst	$vr0, $a5, 32
	vld	$vr0, $a0, 16
	vst	$vr0, $a5, 16
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 64
	bne	$a2, $a4, .LBB20_6
# %bb.7:                                # %.loopexit354.loopexit
	ld.d	$a0, $s5, 0
.LBB20_8:                               # %.loopexit354
	ldptr.w	$a3, $a0, 15268
	ori	$a2, $zero, 536
	pcalau12i	$s8, %pc_hi20(rdopt)
	beqz	$a3, .LBB20_10
# %bb.9:                                # %.preheader351.preheader
	ld.d	$a3, $s8, %pc_lo12(rdopt)
	pcalau12i	$a4, %pc_hi20(rec_mbY)
	addi.d	$a4, $a4, %pc_lo12(rec_mbY)
	vld	$vr0, $a4, 16
	vst	$vr0, $a3, 24
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 8
	vld	$vr0, $a4, 48
	vst	$vr0, $a3, 56
	vld	$vr0, $a4, 32
	vst	$vr0, $a3, 40
	vld	$vr0, $a4, 80
	vst	$vr0, $a3, 88
	vld	$vr0, $a4, 64
	vst	$vr0, $a3, 72
	vld	$vr0, $a4, 112
	vst	$vr0, $a3, 120
	vld	$vr0, $a4, 96
	vst	$vr0, $a3, 104
	vld	$vr0, $a4, 144
	vst	$vr0, $a3, 152
	vld	$vr0, $a4, 128
	vst	$vr0, $a3, 136
	vld	$vr0, $a4, 176
	vst	$vr0, $a3, 184
	vld	$vr0, $a4, 160
	vst	$vr0, $a3, 168
	vld	$vr0, $a4, 208
	vst	$vr0, $a3, 216
	vld	$vr0, $a4, 192
	vst	$vr0, $a3, 200
	vld	$vr0, $a4, 240
	vst	$vr0, $a3, 248
	vld	$vr0, $a4, 224
	vst	$vr0, $a3, 232
	vld	$vr0, $a4, 272
	vst	$vr0, $a3, 280
	vld	$vr0, $a4, 256
	vst	$vr0, $a3, 264
	vld	$vr0, $a4, 304
	vst	$vr0, $a3, 312
	vld	$vr0, $a4, 288
	vst	$vr0, $a3, 296
	vld	$vr0, $a4, 336
	vst	$vr0, $a3, 344
	vld	$vr0, $a4, 320
	vst	$vr0, $a3, 328
	vld	$vr0, $a4, 368
	vst	$vr0, $a3, 376
	vld	$vr0, $a4, 352
	vst	$vr0, $a3, 360
	vld	$vr0, $a4, 400
	vst	$vr0, $a3, 408
	vld	$vr0, $a4, 384
	vst	$vr0, $a3, 392
	vld	$vr0, $a4, 432
	vst	$vr0, $a3, 440
	vld	$vr0, $a4, 416
	vst	$vr0, $a3, 424
	vld	$vr0, $a4, 464
	vst	$vr0, $a3, 472
	vld	$vr0, $a4, 448
	vst	$vr0, $a3, 456
	vld	$vr0, $a4, 496
	vst	$vr0, $a3, 504
	vld	$vr0, $a4, 480
	vst	$vr0, $a3, 488
.LBB20_10:                              # %.loopexit352
	ldptr.w	$a3, $a0, 15260
	mul.d	$s0, $a1, $a2
	ext.w.h	$s4, $s2
	pcalau12i	$s3, %pc_hi20(luma_transform_size_8x8_flag)
	beqz	$a3, .LBB20_12
# %bb.11:
	ld.w	$a1, $s3, %pc_lo12(luma_transform_size_8x8_flag)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(update_offset_params)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
.LBB20_12:
	ldptr.w	$a1, $a0, 15536
	add.d	$fp, $fp, $s0
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	beqz	$a1, .LBB20_35
# %bb.13:                               # %.preheader350
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	ldptr.w	$a1, $a0, 15548
	pcalau12i	$a2, %pc_hi20(rec_mbU)
	addi.d	$s7, $a2, %pc_lo12(rec_mbU)
	pcalau12i	$a2, %pc_hi20(rec_mbV)
	addi.d	$a2, $a2, %pc_lo12(rec_mbV)
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$s4, %pc_hi20(lrec_uv)
	blez	$a1, .LBB20_23
# %bb.14:                               # %.lr.ph
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(lrec_rec_U)
	addi.d	$s1, $a1, %pc_lo12(lrec_rec_U)
	pcalau12i	$a1, %pc_hi20(lrec_rec_V)
	addi.d	$s2, $a1, %pc_lo12(lrec_rec_V)
	move	$s0, $zero
	move	$s7, $zero
	ori	$s3, $zero, 3
	b	.LBB20_16
	.p2align	4, , 16
.LBB20_15:                              #   in Loop: Header=BB20_16 Depth=1
	ldptr.w	$a1, $a0, 15548
	addi.d	$s7, $s7, 1
	addi.d	$s0, $s0, 32
	addi.d	$s1, $s1, 64
	addi.d	$s2, $s2, 64
	bge	$s7, $a1, .LBB20_22
.LBB20_16:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 188
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $s4, 0
	add.d	$a1, $s7, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a2, $a0, 184
	ldptr.w	$a3, $a0, 15544
	alsl.d	$a0, $a2, $a1, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $a1, $s0
	slli.d	$a2, $a3, 1
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.w	$a1, $a0, 188
	ld.d	$a2, $s4, 8
	add.d	$a1, $s7, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a2, $a0, 184
	ldptr.w	$a3, $a0, 15544
	alsl.d	$a0, $a2, $a1, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$s4, $a1, $s0
	slli.d	$a2, $a3, 1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.w	$a1, $a0, 20
	bne	$a1, $s3, .LBB20_20
# %bb.17:                               #   in Loop: Header=BB20_16 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(si_frame_indicator)
	bnez	$a1, .LBB20_20
# %bb.18:                               #   in Loop: Header=BB20_16 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(sp2_frame_indicator)
	bnez	$a1, .LBB20_20
# %bb.19:                               #   in Loop: Header=BB20_16 Depth=1
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $s3, %pc_lo12(lrec_uv)
	ld.w	$a2, $a0, 188
	ld.d	$a1, $a1, 0
	add.d	$a2, $s7, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ld.w	$a2, $a0, 184
	ldptr.w	$a3, $a0, 15544
	alsl.d	$a0, $a2, $a1, 2
	slli.d	$a2, $a3, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s3, %pc_lo12(lrec_uv)
	ori	$s3, $zero, 3
	ld.w	$a2, $a0, 188
	ld.d	$a1, $a1, 8
	add.d	$a2, $s7, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ld.w	$a2, $a0, 184
	ldptr.w	$a3, $a0, 15544
	alsl.d	$a0, $a2, $a1, 2
	slli.d	$a2, $a3, 2
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
.LBB20_20:                              #   in Loop: Header=BB20_16 Depth=1
	ldptr.w	$a1, $a0, 15268
	beqz	$a1, .LBB20_15
# %bb.21:                               #   in Loop: Header=BB20_16 Depth=1
	ld.d	$a1, $s8, %pc_lo12(rdopt)
	ldptr.w	$a2, $a0, 15544
	add.d	$a0, $a1, $s0
	addi.d	$a0, $a0, 520
	slli.d	$a2, $a2, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s8, %pc_lo12(rdopt)
	ldptr.w	$a2, $a0, 15544
	add.d	$a0, $a1, $s0
	addi.d	$a0, $a0, 1032
	slli.d	$a2, $a2, 1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	b	.LBB20_15
.LBB20_22:                              # %._crit_edge.loopexit
	slti	$a1, $a1, 1
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	b	.LBB20_24
.LBB20_23:
	ori	$a1, $zero, 1
.LBB20_24:                              # %._crit_edge
	ld.w	$a2, $a0, 20
	ori	$a3, $zero, 3
	bne	$a2, $a3, .LBB20_30
# %bb.25:                               # %._crit_edge
	ld.w	$a2, $s1, %pc_lo12(si_frame_indicator)
	bnez	$a2, .LBB20_30
# %bb.26:                               # %._crit_edge
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(sp2_frame_indicator)
	bnez	$a2, .LBB20_30
# %bb.27:                               # %._crit_edge
	bnez	$a1, .LBB20_30
# %bb.28:                               # %.lr.ph360.preheader
	pcalau12i	$a1, %pc_hi20(lrec_rec_U)
	addi.d	$s1, $a1, %pc_lo12(lrec_rec_U)
	pcalau12i	$a1, %pc_hi20(lrec_rec_V)
	addi.d	$s2, $a1, %pc_lo12(lrec_rec_V)
	move	$s0, $zero
	.p2align	4, , 16
.LBB20_29:                              # %.lr.ph360
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, %pc_lo12(lrec_uv)
	ld.w	$a2, $a0, 188
	ld.d	$a1, $a1, 0
	add.d	$a2, $s0, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ld.w	$a2, $a0, 184
	ldptr.w	$a3, $a0, 15544
	alsl.d	$a0, $a2, $a1, 2
	slli.d	$a2, $a3, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s4, %pc_lo12(lrec_uv)
	ld.w	$a2, $a0, 188
	ld.d	$a1, $a1, 8
	add.d	$a2, $s0, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ld.w	$a2, $a0, 184
	ldptr.w	$a3, $a0, 15544
	alsl.d	$a0, $a2, $a1, 2
	slli.d	$a2, $a3, 2
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ldptr.w	$a1, $a0, 15548
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, 64
	addi.d	$s2, $s2, 64
	blt	$s0, $a1, .LBB20_29
.LBB20_30:                              # %.loopexit349
	ldptr.w	$a1, $a0, 15268
	beqz	$a1, .LBB20_34
# %bb.31:                               # %.preheader346
	ldptr.w	$a1, $a0, 15548
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	blez	$a1, .LBB20_35
# %bb.32:                               # %.lr.ph362.preheader
	move	$s0, $zero
	move	$s1, $zero
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB20_33:                              # %.lr.ph362
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s8, %pc_lo12(rdopt)
	ldptr.w	$a2, $a0, 15544
	add.d	$a0, $a1, $s0
	addi.d	$a0, $a0, 520
	add.d	$a1, $s7, $s0
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s8, %pc_lo12(rdopt)
	ldptr.w	$a2, $a0, 15544
	add.d	$a0, $a1, $s0
	addi.d	$a0, $a0, 1032
	add.d	$a1, $s3, $s0
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ldptr.w	$a1, $a0, 15548
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 32
	blt	$s1, $a1, .LBB20_33
	b	.LBB20_35
.LBB20_34:
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
.LBB20_35:                              # %.loopexit347
	ldptr.d	$a1, $a0, 14160
	pcalau12i	$a2, %pc_hi20(cofAC)
	ld.d	$a3, $a2, %pc_lo12(cofAC)
	st.d	$a1, $a2, %pc_lo12(cofAC)
	ldptr.d	$a2, $a0, 14168
	stptr.d	$a3, $a0, 14160
	pcalau12i	$a3, %pc_hi20(cofDC)
	ld.d	$a1, $a3, %pc_lo12(cofDC)
	st.d	$a2, $a3, %pc_lo12(cofDC)
	pcalau12i	$a4, %pc_hi20(cbp)
	ld.w	$a2, $a4, %pc_lo12(cbp)
	pcalau12i	$a3, %pc_hi20(cbp_blk)
	ld.d	$a3, $a3, %pc_lo12(cbp_blk)
	stptr.d	$a1, $a0, 14168
	ldptr.w	$a5, $a0, 15268
	st.w	$a2, $fp, 364
	st.d	$a3, $fp, 368
	st.w	$s4, $fp, 72
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	beqz	$a5, .LBB20_41
# %bb.36:
	ld.d	$a2, $s8, %pc_lo12(rdopt)
	lu12i.w	$a5, 3
	ori	$a5, $a5, 2956
	ldx.w	$a5, $a0, $a5
	ld.w	$a4, $a4, %pc_lo12(cbp)
	st.w	$s4, $a2, 1656
	st.w	$a5, $a2, 1712
	st.w	$a4, $a2, 1640
	ld.w	$a4, $fp, 496
	ld.w	$a5, $fp, 500
	st.d	$a3, $a2, 1648
	st.w	$s4, $a2, 1560
	st.w	$a4, $a2, 1732
	st.w	$a5, $a2, 1736
	ld.w	$a3, $fp, 4
	ld.w	$a4, $fp, 8
	ld.w	$a5, $fp, 504
	ldptr.w	$a6, $a0, 15528
	st.w	$a3, $a2, 1740
	st.w	$a4, $a2, 1728
	addi.w	$a3, $zero, -3
	st.w	$a5, $a2, 1744
	blt	$a6, $a3, .LBB20_40
# %bb.37:                               # %.preheader345.preheader
	move	$s0, $zero
	addi.w	$s1, $zero, -1
	lu12i.w	$a1, 3
	ori	$s2, $a1, 3240
	.p2align	4, , 16
.LBB20_38:                              # %.preheader345
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s8, %pc_lo12(rdopt)
	ld.d	$a1, $a1, 1544
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a1, $a1, $s0
	ldx.d	$a0, $a0, $s0
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(rdopt)
	ld.d	$a1, $s5, 0
	ld.d	$a0, $a0, 1544
	ldptr.d	$a1, $a1, 14160
	ldx.d	$a0, $a0, $s0
	ldx.d	$a1, $a1, $s0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(rdopt)
	ld.d	$a1, $s5, 0
	ld.d	$a0, $a0, 1544
	ldptr.d	$a1, $a1, 14160
	ldx.d	$a0, $a0, $s0
	ldx.d	$a1, $a1, $s0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(rdopt)
	ld.d	$a1, $s5, 0
	ld.d	$a0, $a0, 1544
	ldptr.d	$a1, $a1, 14160
	ldx.d	$a0, $a0, $s0
	ldx.d	$a1, $a1, $s0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(rdopt)
	ld.d	$a1, $s5, 0
	ld.d	$a0, $a0, 1544
	ldptr.d	$a1, $a1, 14160
	ldx.d	$a0, $a0, $s0
	ldx.d	$a1, $a1, $s0
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a1, 16
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(rdopt)
	ld.d	$a1, $s5, 0
	ld.d	$a0, $a0, 1544
	ldptr.d	$a1, $a1, 14160
	ldx.d	$a0, $a0, $s0
	ldx.d	$a1, $a1, $s0
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a1, 16
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(rdopt)
	ld.d	$a1, $s5, 0
	ld.d	$a0, $a0, 1544
	ldptr.d	$a1, $a1, 14160
	ldx.d	$a0, $a0, $s0
	ldx.d	$a1, $a1, $s0
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, 24
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(rdopt)
	ld.d	$a1, $s5, 0
	ld.d	$a0, $a0, 1544
	ldptr.d	$a1, $a1, 14160
	ldx.d	$a0, $a0, $s0
	ldx.d	$a1, $a1, $s0
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, 24
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ldx.w	$a1, $a0, $s2
	addi.w	$a1, $a1, 3
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a1, .LBB20_38
# %bb.39:                               # %.preheader342.loopexit
	ld.d	$a2, $s8, %pc_lo12(rdopt)
	ldptr.d	$a1, $a0, 14168
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
.LBB20_40:                              # %.preheader342
	ld.d	$a0, $a2, 1552
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(rdopt)
	ld.d	$a1, $s5, 0
	ld.d	$a0, $a0, 1552
	ldptr.d	$a1, $a1, 14168
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(rdopt)
	ld.d	$a1, $s5, 0
	ld.d	$a0, $a0, 1552
	ldptr.d	$a1, $a1, 14168
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(rdopt)
	ld.d	$a1, $s5, 0
	ld.d	$a0, $a0, 1552
	ldptr.d	$a1, $a1, 14168
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(rdopt)
	ld.d	$a1, $s5, 0
	ld.d	$a0, $a0, 1552
	ldptr.d	$a1, $a1, 14168
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a1, 16
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(rdopt)
	ld.d	$a1, $s5, 0
	ld.d	$a0, $a0, 1552
	ldptr.d	$a1, $a1, 14168
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a1, 16
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB20_41:                              # %.loopexit343
	pcalau12i	$a1, %pc_hi20(b8mode)
	vld	$vr0, $a1, %pc_lo12(b8mode)
	vst	$vr0, $fp, 376
	pcalau12i	$a2, %pc_hi20(b8pdir)
	vld	$vr0, $a2, %pc_lo12(b8pdir)
	vst	$vr0, $fp, 392
	ld.d	$a0, $s5, 0
	ldptr.w	$a3, $a0, 15268
	beqz	$a3, .LBB20_43
# %bb.42:
	ld.d	$a3, $s8, %pc_lo12(rdopt)
	vld	$vr0, $a1, %pc_lo12(b8mode)
	vld	$vr1, $a2, %pc_lo12(b8pdir)
	vst	$vr0, $a3, 1568
	vst	$vr1, $a3, 1584
.LBB20_43:
	ld.w	$a1, $fp, 72
	pcalau12i	$a2, %pc_hi20(bi_pred_me)
	ld.h	$a2, $a2, %pc_lo12(bi_pred_me)
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	maskeqz	$a1, $a2, $a1
	ori	$a2, $zero, 8
	st.h	$a1, $fp, 480
	bne	$s2, $a2, .LBB20_47
# %bb.44:
	ld.w	$a1, $s3, %pc_lo12(luma_transform_size_8x8_flag)
	bnez	$a1, .LBB20_47
# %bb.45:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 5100
	beqz	$a1, .LBB20_47
# %bb.46:
	ld.w	$a0, $a0, 20
	addi.d	$a0, $a0, -1
	sltui	$s0, $a0, 1
	pcalau12i	$a0, %pc_hi20(tr8x8)
	addi.d	$s1, $a0, %pc_lo12(tr8x8)
	lu12i.w	$a0, 2
	ori	$s2, $a0, 24
	addi.d	$a0, $sp, 112
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	addi.d	$a2, $sp, 112
	move	$a1, $zero
	move	$a3, $s0
	pcaddu18i	$ra, %call36(RestoreMVBlock8x8)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 112
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 112
	move	$a3, $s0
	pcaddu18i	$ra, %call36(RestoreMVBlock8x8)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 112
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 112
	move	$a3, $s0
	pcaddu18i	$ra, %call36(RestoreMVBlock8x8)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 112
	move	$a1, $s1
	move	$a2, $s2
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	addi.d	$a2, $sp, 112
	move	$a3, $s0
	pcaddu18i	$ra, %call36(RestoreMVBlock8x8)
	jirl	$ra, $ra, 0
.LBB20_47:
	ld.bu	$a0, $fp, 364
	andi	$a0, $a0, 15
	bnez	$a0, .LBB20_49
# %bb.48:
	ld.w	$a0, $fp, 72
	ori	$a0, $a0, 4
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB20_100
.LBB20_49:
	ld.w	$a0, $s3, %pc_lo12(luma_transform_size_8x8_flag)
.LBB20_50:
	ld.d	$a1, $s8, %pc_lo12(rdopt)
	st.w	$a0, $fp, 472
	st.w	$a0, $a1, 1720
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4168
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB20_53
# %bb.51:
	ld.d	$a0, $s5, 0
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB20_53
# %bb.52:
	pcalau12i	$a1, %got_pc_hi20(decs)
	ld.d	$a1, $a1, %got_pc_lo12(decs)
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a0, 164
	ld.d	$a1, $a1, 48
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ld.w	$a0, $a0, 160
	stx.b	$s2, $a1, $a0
.LBB20_53:
	addi.d	$a0, $fp, 376
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a1, $fp, 392
	pcalau12i	$a2, %pc_hi20(frefframe)
	addi.d	$a0, $a2, %pc_lo12(frefframe)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	move	$a5, $zero
	move	$a6, $zero
	ori	$a7, $zero, 1
	addi.w	$a2, $zero, -1
	ori	$t0, $zero, 255
	ori	$t1, $zero, 4
	ori	$t2, $zero, 14
	lu12i.w	$a3, 6
	ori	$a3, $a3, 1536
	b	.LBB20_55
	.p2align	4, , 16
.LBB20_54:                              #   in Loop: Header=BB20_55 Depth=1
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 4
	beq	$a6, $t1, .LBB20_73
.LBB20_55:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_57 Depth 2
	ld.d	$t4, $s5, 0
	ld.w	$t7, $t4, 172
	move	$t4, $zero
	move	$t5, $zero
	move	$t6, $zero
	add.w	$s0, $t7, $a6
	andi	$t7, $a6, 2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a5
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	slli.d	$s0, $s0, 3
	b	.LBB20_57
	.p2align	4, , 16
.LBB20_56:                              #   in Loop: Header=BB20_57 Depth=2
	addi.d	$t6, $t6, 1
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 1
	beq	$t6, $t1, .LBB20_54
.LBB20_57:                              #   Parent Loop BB20_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s7, $s5, 0
	ld.w	$s1, $s7, 168
	bstrpick.d	$s2, $t6, 31, 1
	or	$s2, $s2, $t7
	slli.d	$s4, $s2, 2
	ldx.w	$ra, $a1, $s4
	add.w	$s1, $t4, $s1
	beq	$ra, $a7, .LBB20_60
# %bb.58:                               #   in Loop: Header=BB20_57 Depth=2
	ld.w	$s3, $fp, 72
	bltu	$t2, $s3, .LBB20_67
# %bb.59:                               #   in Loop: Header=BB20_57 Depth=2
	sll.d	$a4, $a7, $s3
	and	$a4, $a4, $a3
	beqz	$a4, .LBB20_67
.LBB20_60:                              #   in Loop: Header=BB20_57 Depth=2
	ld.d	$a4, $s6, 0
	ldptr.d	$a4, $a4, 6488
	ld.d	$a4, $a4, 0
	ldx.d	$a4, $a4, $s0
	ori	$s4, $zero, 255
	stx.b	$s4, $a4, $s1
	ld.d	$a4, $s6, 0
	ldptr.d	$s3, $a4, 6512
	ldptr.d	$a4, $a4, 6496
	ld.d	$s3, $s3, 0
	ld.d	$a4, $a4, 0
	ldx.d	$s3, $s3, $s0
	ldx.d	$a4, $a4, $s0
	slli.d	$s7, $s1, 3
	ldx.d	$s3, $s3, $s7
	stx.d	$a2, $a4, $s7
	st.w	$zero, $s3, 0
	ld.d	$a4, $s5, 0
	ldptr.w	$a4, $a4, 15268
	beqz	$a4, .LBB20_62
.LBB20_61:                              # %.sink.split
                                        #   in Loop: Header=BB20_57 Depth=2
	ld.d	$a0, $s8, %pc_lo12(rdopt)
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $t6
	st.b	$s4, $a0, 1680
.LBB20_62:                              #   in Loop: Header=BB20_57 Depth=2
	alsl.d	$a0, $s2, $a1, 2
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB20_65
# %bb.63:                               #   in Loop: Header=BB20_57 Depth=2
	ld.w	$s2, $fp, 72
	bltu	$t2, $s2, .LBB20_56
# %bb.64:                               #   in Loop: Header=BB20_57 Depth=2
	sll.d	$a0, $a7, $s2
	and	$a0, $a0, $a3
	beqz	$a0, .LBB20_56
.LBB20_65:                              #   in Loop: Header=BB20_57 Depth=2
	ld.d	$a0, $s6, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s0
	stx.b	$t0, $a0, $s1
	ld.d	$a0, $s6, 0
	ldptr.d	$a4, $a0, 6512
	ldptr.d	$a0, $a0, 6496
	ld.d	$a4, $a4, 8
	ld.d	$a0, $a0, 8
	ldx.d	$a4, $a4, $s0
	ldx.d	$a0, $a0, $s0
	slli.d	$t3, $s1, 3
	ldx.d	$a4, $a4, $t3
	stx.d	$a2, $a0, $t3
	st.w	$zero, $a4, 0
	ld.d	$a0, $s5, 0
	ldptr.w	$a0, $a0, 15268
	beqz	$a0, .LBB20_56
# %bb.66:                               #   in Loop: Header=BB20_57 Depth=2
	ld.d	$a0, $s8, %pc_lo12(rdopt)
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $t6
	st.b	$t0, $a0, 1696
	b	.LBB20_56
.LBB20_67:                              #   in Loop: Header=BB20_57 Depth=2
	bne	$s3, $a7, .LBB20_71
# %bb.68:                               #   in Loop: Header=BB20_57 Depth=2
	ori	$a0, $zero, 2
	bne	$ra, $a0, .LBB20_71
# %bb.69:                               #   in Loop: Header=BB20_57 Depth=2
	ld.hu	$s3, $fp, 480
	beqz	$s3, .LBB20_71
# %bb.70:                               #   in Loop: Header=BB20_57 Depth=2
	addi.d	$a4, $s3, -1
	sltui	$a4, $a4, 1
	lu12i.w	$a0, 3
	ori	$s3, $a0, 2112
	masknez	$s3, $s3, $a4
	ori	$ra, $a0, 2104
	maskeqz	$a4, $ra, $a4
	or	$a4, $a4, $s3
	ldx.d	$a4, $s7, $a4
	slli.d	$s3, $a6, 3
	ldx.d	$a4, $a4, $s3
	ld.d	$s3, $s6, 0
	ldx.d	$a4, $a4, $t5
	ldptr.d	$s3, $s3, 6488
	ld.d	$a4, $a4, 0
	ld.d	$s3, $s3, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$s4, $a0, $s4
	ld.d	$a4, $a4, 0
	ldx.d	$s3, $s3, $s0
	slli.d	$s4, $s4, 3
	ldx.d	$a4, $a4, $s4
	stx.b	$zero, $s3, $s1
	ld.d	$s3, $s6, 0
	ld.w	$s4, $fp, 432
	ldptr.d	$s7, $s3, 6512
	slli.d	$ra, $s4, 8
	ld.d	$s7, $s7, 0
	ldptr.d	$t3, $s3, 6496
	alsl.d	$s4, $s4, $ra, 3
	add.d	$s3, $s3, $s4
	ldx.d	$s4, $s7, $s0
	ld.d	$t3, $t3, 0
	slli.d	$s7, $s1, 3
	ld.h	$ra, $a4, 0
	ldx.d	$a0, $s4, $s7
	ld.d	$s3, $s3, 24
	ld.d	$s4, $s5, 0
	ldx.d	$t3, $t3, $s0
	st.h	$ra, $a0, 0
	ld.h	$a4, $a4, 2
	ldptr.w	$ra, $s4, 15268
	move	$s4, $zero
	stx.d	$s3, $t3, $s7
	st.h	$a4, $a0, 2
	bnez	$ra, .LBB20_61
	b	.LBB20_62
.LBB20_71:                              #   in Loop: Header=BB20_57 Depth=2
	ldptr.d	$a0, $s7, 14384
	slli.d	$a4, $a6, 3
	ldx.d	$a0, $a0, $a4
	ld.d	$a4, $s6, 0
	ldx.d	$a0, $a0, $t5
	ldptr.d	$a4, $a4, 6488
	ld.d	$t3, $sp, 96                    # 8-byte Folded Reload
	ldx.b	$t3, $t3, $t6
	ld.d	$a0, $a0, 0
	ld.d	$a4, $a4, 0
	slli.d	$s3, $t3, 3
	ld.d	$t8, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$s4, $t8, $s4
	ldx.d	$a0, $a0, $s3
	ldx.d	$a4, $a4, $s0
	slli.d	$s3, $s4, 3
	ldx.d	$a0, $a0, $s3
	stx.b	$t3, $a4, $s1
	ld.d	$a4, $s6, 0
	ldptr.d	$s3, $a4, 6512
	ld.w	$s4, $fp, 432
	ld.d	$s3, $s3, 0
	slli.d	$s7, $s4, 8
	alsl.d	$s4, $s4, $s7, 3
	ldx.d	$s3, $s3, $s0
	ldptr.d	$s7, $a4, 6496
	slli.d	$ra, $s1, 3
	ld.h	$t8, $a0, 0
	ldx.d	$s3, $s3, $ra
	add.d	$a4, $a4, $s4
	alsl.d	$a4, $t3, $a4, 3
	ld.d	$t3, $s7, 0
	st.h	$t8, $s3, 0
	ld.d	$t8, $s5, 0
	ld.d	$a4, $a4, 24
	ldx.d	$t3, $t3, $s0
	ld.h	$a0, $a0, 2
	ldptr.w	$t8, $t8, 15268
	stx.d	$a4, $t3, $ra
	st.h	$a0, $s3, 2
	beqz	$t8, .LBB20_62
# %bb.72:                               #   in Loop: Header=BB20_57 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ldx.bu	$s4, $a0, $t6
	b	.LBB20_61
.LBB20_73:
	ori	$a4, $zero, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bne	$a0, $a4, .LBB20_89
# %bb.74:                               # %.preheader.preheader
	ori	$a5, $zero, 1696
	pcalau12i	$a0, %pc_hi20(brefframe)
	addi.d	$a6, $a0, %pc_lo12(brefframe)
	move	$a7, $zero
	ori	$t0, $zero, 14
	lu12i.w	$a0, 3
	ori	$t1, $a0, 2112
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	ori	$t3, $a0, 2104
	ori	$t4, $zero, 4
	b	.LBB20_76
	.p2align	4, , 16
.LBB20_75:                              #   in Loop: Header=BB20_76 Depth=1
	addi.d	$a7, $a7, 1
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 4
	beq	$a7, $t4, .LBB20_89
.LBB20_76:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_81 Depth 2
	ld.d	$a0, $s5, 0
	ld.w	$a0, $a0, 172
	move	$t5, $zero
	move	$t6, $zero
	move	$t7, $zero
	add.w	$a0, $a0, $a7
	andi	$t8, $a7, 2
	slli.d	$s0, $a7, 3
	slli.d	$s1, $a0, 3
	b	.LBB20_81
.LBB20_77:                              #   in Loop: Header=BB20_81 Depth=2
	ldptr.d	$a0, $s7, 14384
	ldx.d	$a0, $a0, $s0
	ld.d	$t1, $s6, 0
	ldx.d	$a0, $a0, $t6
	ldptr.d	$t1, $t1, 6488
	ldx.b	$s3, $a6, $t7
	ld.d	$a0, $a0, 8
	ld.d	$t1, $t1, 8
	slli.d	$s7, $s3, 3
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$s4, $t2, $s4
	ldx.d	$a0, $a0, $s7
	ldx.d	$t1, $t1, $s1
	slli.d	$s4, $s4, 3
	ldx.d	$a0, $a0, $s4
	stx.b	$s3, $t1, $s2
	ld.d	$t1, $s6, 0
	ldptr.d	$s4, $t1, 6512
	ld.w	$s7, $fp, 432
	ld.d	$s4, $s4, 8
	slli.d	$ra, $s7, 8
	alsl.d	$s7, $s7, $ra, 3
	ldx.d	$s4, $s4, $s1
	ldptr.d	$ra, $t1, 6496
	slli.d	$s2, $s2, 3
	ld.h	$t2, $a0, 0
	ldx.d	$s4, $s4, $s2
	add.d	$t1, $t1, $s7
	alsl.d	$t1, $s3, $t1, 3
	ld.d	$s3, $ra, 8
	st.h	$t2, $s4, 0
	ld.d	$t2, $s5, 0
	ld.d	$t1, $t1, 288
	ldx.d	$s3, $s3, $s1
	ld.h	$a0, $a0, 2
	ldptr.w	$t2, $t2, 15268
	stx.d	$t1, $s3, $s2
	st.h	$a0, $s4, 2
	beqz	$t2, .LBB20_80
# %bb.78:                               #   in Loop: Header=BB20_81 Depth=2
	ldx.bu	$s4, $a6, $t7
	.p2align	4, , 16
.LBB20_79:                              # %.sink.split470
                                        #   in Loop: Header=BB20_81 Depth=2
	ld.d	$a0, $s8, %pc_lo12(rdopt)
	add.d	$a0, $a0, $a5
	stx.b	$s4, $a0, $t7
.LBB20_80:                              #   in Loop: Header=BB20_81 Depth=2
	addi.d	$t7, $t7, 1
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 1
	beq	$t7, $t4, .LBB20_75
.LBB20_81:                              #   Parent Loop BB20_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s7, $s5, 0
	ld.w	$a0, $s7, 168
	ld.w	$ra, $fp, 72
	add.w	$s2, $t5, $a0
	bltu	$t0, $ra, .LBB20_84
# %bb.82:                               #   in Loop: Header=BB20_81 Depth=2
	sll.d	$a0, $a4, $ra
	and	$a0, $a0, $a3
	beqz	$a0, .LBB20_84
.LBB20_83:                              #   in Loop: Header=BB20_81 Depth=2
	ld.d	$a0, $s6, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s1
	ori	$s4, $zero, 255
	stx.b	$s4, $a0, $s2
	ld.d	$a0, $s6, 0
	ldptr.d	$s3, $a0, 6512
	ldptr.d	$a0, $a0, 6496
	ld.d	$s3, $s3, 8
	ld.d	$a0, $a0, 8
	ldx.d	$s3, $s3, $s1
	ldx.d	$a0, $a0, $s1
	slli.d	$s2, $s2, 3
	ldx.d	$s3, $s3, $s2
	stx.d	$a2, $a0, $s2
	st.w	$zero, $s3, 0
	ld.d	$a0, $s5, 0
	ldptr.w	$a0, $a0, 15268
	bnez	$a0, .LBB20_79
	b	.LBB20_80
.LBB20_84:                              #   in Loop: Header=BB20_81 Depth=2
	bstrpick.d	$a0, $t7, 31, 1
	or	$a0, $a0, $t8
	slli.d	$s4, $a0, 2
	ldx.w	$s3, $a1, $s4
	beqz	$s3, .LBB20_83
# %bb.85:                               #   in Loop: Header=BB20_81 Depth=2
	bne	$ra, $a4, .LBB20_77
# %bb.86:                               #   in Loop: Header=BB20_81 Depth=2
	ori	$a0, $zero, 2
	bne	$s3, $a0, .LBB20_77
# %bb.87:                               #   in Loop: Header=BB20_81 Depth=2
	ld.hu	$s3, $fp, 480
	beqz	$s3, .LBB20_77
# %bb.88:                               #   in Loop: Header=BB20_81 Depth=2
	addi.d	$a0, $s3, -1
	sltui	$a0, $a0, 1
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	masknez	$s3, $t1, $a0
	maskeqz	$a0, $t3, $a0
	or	$a0, $a0, $s3
	ldx.d	$a0, $s7, $a0
	ldx.d	$a0, $a0, $s0
	ld.d	$s3, $s6, 0
	ldx.d	$a0, $a0, $t6
	ldptr.d	$s3, $s3, 6488
	ld.d	$a0, $a0, 8
	ld.d	$s3, $s3, 8
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$s4, $t1, $s4
	ld.d	$a0, $a0, 0
	ldx.d	$s3, $s3, $s1
	slli.d	$s4, $s4, 3
	ldx.d	$a0, $a0, $s4
	stx.b	$zero, $s3, $s2
	ld.d	$s3, $s6, 0
	ld.w	$s4, $fp, 432
	ldptr.d	$s7, $s3, 6512
	slli.d	$ra, $s4, 8
	ld.d	$s7, $s7, 8
	ldptr.d	$t1, $s3, 6496
	alsl.d	$s4, $s4, $ra, 3
	add.d	$s3, $s3, $s4
	ldx.d	$s4, $s7, $s1
	ld.d	$t1, $t1, 8
	slli.d	$s2, $s2, 3
	ld.h	$s7, $a0, 0
	ldx.d	$ra, $s4, $s2
	ld.d	$s3, $s3, 288
	ld.d	$s4, $s5, 0
	ldx.d	$t1, $t1, $s1
	st.h	$s7, $ra, 0
	ld.h	$a0, $a0, 2
	ldptr.w	$s7, $s4, 15268
	move	$s4, $zero
	stx.d	$s3, $t1, $s2
	st.h	$a0, $ra, 2
	bnez	$s7, .LBB20_79
	b	.LBB20_80
.LBB20_89:                              # %.loopexit340
	pcalau12i	$a0, %pc_hi20(best_c_imode)
	ld.w	$a0, $a0, %pc_lo12(best_c_imode)
	st.w	$a0, $fp, 416
	pcalau12i	$a0, %pc_hi20(best_i16offset)
	ld.w	$a0, $a0, %pc_lo12(best_i16offset)
	ld.d	$a1, $s5, 0
	ld.w	$a2, $fp, 72
	ori	$a3, $zero, 13
	stptr.w	$a0, $a1, 15244
	bne	$a2, $a3, .LBB20_91
# %bb.90:                               # %.loopexit337.loopexit
	pcalau12i	$a0, %pc_hi20(b8_intra_pred_modes8x8)
	vld	$vr0, $a0, %pc_lo12(b8_intra_pred_modes8x8)
	vst	$vr0, $fp, 348
	vld	$vr0, $a0, %pc_lo12(b8_intra_pred_modes8x8)
	vst	$vr0, $fp, 332
	ld.d	$a0, $s5, 0
	ld.w	$a1, $a0, 172
	ld.d	$a2, $a0, 128
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a2, $a0, 168
	pcalau12i	$a0, %pc_hi20(b8_ipredmode8x8)
	addi.d	$a0, $a0, %pc_lo12(b8_ipredmode8x8)
	ld.w	$a3, $a0, 0
	stx.w	$a3, $a1, $a2
	ld.d	$a1, $s5, 0
	ld.w	$a2, $a1, 172
	ld.d	$a3, $a1, 136
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a3, $a2
	ld.w	$a1, $a1, 168
	ld.w	$a3, $a0, 0
	stx.w	$a3, $a2, $a1
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a1, 128
	ld.w	$a3, $a1, 172
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$a2, $a2, 8
	ld.w	$a1, $a1, 168
	ld.w	$a3, $a0, 4
	stx.w	$a3, $a2, $a1
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a1, 136
	ld.w	$a3, $a1, 172
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$a2, $a2, 8
	ld.w	$a1, $a1, 168
	ld.w	$a3, $a0, 4
	stx.w	$a3, $a2, $a1
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a1, 128
	ld.w	$a3, $a1, 172
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$a2, $a2, 16
	ld.w	$a1, $a1, 168
	ld.w	$a3, $a0, 8
	stx.w	$a3, $a2, $a1
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a1, 136
	ld.w	$a3, $a1, 172
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$a2, $a2, 16
	ld.w	$a1, $a1, 168
	ld.w	$a3, $a0, 8
	stx.w	$a3, $a2, $a1
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a1, 128
	ld.w	$a3, $a1, 172
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$a2, $a2, 24
	ld.w	$a1, $a1, 168
	ld.w	$a3, $a0, 12
	stx.w	$a3, $a2, $a1
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a1, 136
	ld.w	$a3, $a1, 172
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$a2, $a2, 24
	ld.w	$a1, $a1, 168
	ld.w	$a0, $a0, 12
	stx.w	$a0, $a2, $a1
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	b	.LBB20_96
.LBB20_91:
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4091
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	and	$a1, $a2, $a0
	ori	$a0, $zero, 9
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB20_94
# %bb.92:
	bne	$a2, $a0, .LBB20_96
# %bb.93:                               # %.loopexit337.loopexit380
	pcalau12i	$a0, %pc_hi20(b4_intra_pred_modes)
	vld	$vr0, $a0, %pc_lo12(b4_intra_pred_modes)
	vst	$vr0, $fp, 332
	ld.d	$a0, $s5, 0
	ld.w	$a1, $a0, 172
	ld.d	$a2, $a0, 128
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a0, $a0, 168
	pcalau12i	$a2, %pc_hi20(b4_ipredmode)
	addi.d	$a2, $a2, %pc_lo12(b4_ipredmode)
	ld.w	$a3, $a2, 0
	stx.w	$a3, $a1, $a0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 128
	ld.w	$a3, $a0, 172
	alsl.d	$a1, $a3, $a1, 3
	ld.d	$a1, $a1, 8
	ld.w	$a0, $a0, 168
	ld.w	$a3, $a2, 4
	stx.w	$a3, $a1, $a0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 128
	ld.w	$a3, $a0, 172
	alsl.d	$a1, $a3, $a1, 3
	ld.d	$a1, $a1, 16
	ld.w	$a0, $a0, 168
	ld.w	$a3, $a2, 8
	stx.w	$a3, $a1, $a0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 128
	ld.w	$a3, $a0, 172
	alsl.d	$a1, $a3, $a1, 3
	ld.d	$a1, $a1, 24
	ld.w	$a0, $a0, 168
	ld.w	$a2, $a2, 12
	stx.w	$a2, $a1, $a0
	b	.LBB20_96
.LBB20_94:                              # %.lr.ph374.preheader
	lu12i.w	$a0, 8224
	ori	$a0, $a0, 514
	move	$a1, $a0
	bstrins.d	$a1, $a0, 57, 32
	st.d	$a1, $fp, 340
	st.d	$a1, $fp, 332
	ld.d	$a2, $s5, 0
	ld.w	$a3, $a2, 172
	addi.d	$a1, $a3, -1
	slli.d	$a3, $a3, 3
	.p2align	4, , 16
.LBB20_95:                              # %.lr.ph374
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 128
	ldx.d	$a4, $a4, $a3
	ld.w	$a2, $a2, 168
	stx.w	$a0, $a4, $a2
	ld.d	$a2, $s5, 0
	ld.w	$a4, $a2, 172
	addi.w	$a4, $a4, 3
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	blt	$a1, $a4, .LBB20_95
.LBB20_96:                              # %.loopexit337
	ld.d	$a0, $s5, 0
	ldptr.w	$a1, $a0, 15268
	beqz	$a1, .LBB20_99
# %bb.97:                               # %.lr.ph379.preheader
	ld.w	$a1, $fp, 416
	ld.d	$a2, $s8, %pc_lo12(rdopt)
	lu12i.w	$a3, 3
	ori	$a3, $a3, 2956
	ldx.w	$a3, $a0, $a3
	st.w	$a1, $a2, 1716
	st.w	$a3, $a2, 1712
	vld	$vr0, $fp, 332
	vst	$vr0, $a2, 1608
	vld	$vr0, $fp, 348
	vst	$vr0, $a2, 1624
	ld.w	$a2, $a0, 172
	addi.d	$a1, $a2, -1
	slli.d	$a2, $a2, 3
	.p2align	4, , 16
.LBB20_98:                              # %.lr.ph379
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s8, %pc_lo12(rdopt)
	ld.d	$a3, $a3, 1600
	ld.w	$a0, $a0, 168
	ldx.d	$a4, $a5, $a2
	ldx.d	$a3, $a3, $a2
	ldx.w	$a4, $a4, $a0
	stx.w	$a4, $a3, $a0
	ld.d	$a0, $s5, 0
	ld.w	$a3, $a0, 172
	addi.w	$a3, $a3, 3
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	blt	$a1, $a3, .LBB20_98
.LBB20_99:                              # %.loopexit
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	sltui	$a1, $a0, 1
	move	$a0, $fp
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2288
	add.d	$sp, $sp, $a2
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	pcaddu18i	$t8, %call36(SetMotionVectorsMB)
	jr	$t8
.LBB20_100:
	move	$a0, $zero
	b	.LBB20_50
.Lfunc_end20:
	.size	set_stored_macroblock_parameters, .Lfunc_end20-set_stored_macroblock_parameters
                                        # -- End function
	.globl	update_offset_params            # -- Begin function update_offset_params
	.p2align	5
	.type	update_offset_params,@function
update_offset_params:                   # @update_offset_params
# %bb.0:
	addi.w	$a2, $a0, -11
	sltui	$a2, $a2, -2
	addi.d	$a3, $a0, -13
	sltu	$a3, $zero, $a3
	and	$a3, $a3, $a2
	alsl.w	$a2, $a3, $a1, 1
	ori	$a4, $zero, 20
	mul.d	$a2, $a2, $a4
	pcalau12i	$a4, %pc_hi20(AdaptRndPos)
	addi.d	$a4, $a4, %pc_lo12(AdaptRndPos)
	add.d	$a2, $a4, $a2
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$a4, $a4, %got_pc_lo12(img)
	ld.d	$a4, $a4, 0
	ld.w	$a5, $a4, 20
	slli.d	$a5, $a5, 2
	ldx.w	$t0, $a2, $a5
	pcalau12i	$a2, %got_pc_hi20(OffsetBits)
	ld.d	$a2, $a2, %got_pc_lo12(OffsetBits)
	ld.w	$a2, $a2, 0
	addi.d	$a2, $a2, -1
	ori	$a6, $zero, 1
	sll.w	$a2, $a6, $a2
	slli.d	$t1, $a1, 2
	addi.d	$a7, $a1, 2
	sltui	$a1, $a1, 1
	pcalau12i	$a6, %got_pc_hi20(OffsetList8x8)
	ld.d	$a6, $a6, %got_pc_lo12(OffsetList8x8)
	ld.d	$t2, $a6, 0
	pcalau12i	$a6, %got_pc_hi20(OffsetList4x4)
	ld.d	$a6, $a6, %got_pc_lo12(OffsetList4x4)
	ld.d	$a6, $a6, 0
	masknez	$t2, $t2, $a1
	maskeqz	$t3, $a6, $a1
	addi.w	$a0, $a0, -9
	ori	$t4, $zero, 4
	or	$t2, $t3, $t2
	bltu	$t4, $a0, .LBB21_2
# %bb.1:                                # %switch.lookup
	slli.d	$a0, $a0, 3
	pcalau12i	$t3, %pc_hi20(.Lswitch.table.update_offset_params)
	addi.d	$t3, $t3, %pc_lo12(.Lswitch.table.update_offset_params)
	ldx.d	$t3, $t3, $a0
	pcalau12i	$t4, %pc_hi20(.Lswitch.table.update_offset_params.1)
	addi.d	$t4, $t4, %pc_lo12(.Lswitch.table.update_offset_params.1)
	ldx.d	$t4, $t4, $a0
	b	.LBB21_3
.LBB21_2:
	pcalau12i	$a0, %pc_hi20(bestInterFAdjust4x4)
	addi.d	$t4, $a0, %pc_lo12(bestInterFAdjust4x4)
	pcalau12i	$a0, %pc_hi20(bestInterFAdjust8x8)
	addi.d	$t3, $a0, %pc_lo12(bestInterFAdjust8x8)
.LBB21_3:
	addi.d	$sp, $sp, -16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 0                     # 8-byte Folded Spill
	move	$a0, $zero
	masknez	$t3, $t3, $a1
	maskeqz	$a1, $t4, $a1
	or	$a1, $a1, $t3
	ld.d	$a1, $a1, 0
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $t2, $t0
	addi.d	$t1, $t1, 3
	ori	$t2, $zero, 64
	ori	$t3, $zero, 16
	.p2align	4, , 16
.LBB21_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_5 Depth 2
	slli.d	$t4, $a0, 3
	ldx.d	$t4, $a1, $t4
	move	$t5, $zero
	move	$t6, $zero
	and	$t7, $t1, $a0
	sll.w	$t7, $t7, $a7
	.p2align	4, , 16
.LBB21_5:                               #   Parent Loop BB21_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	and	$t8, $t1, $t6
	add.w	$t8, $t8, $t7
	ldx.h	$fp, $t4, $t5
	slli.d	$t8, $t8, 1
	ldx.h	$s0, $t0, $t8
	add.d	$fp, $s0, $fp
	ext.w.h	$fp, $fp
	srai.d	$s0, $fp, 63
	andn	$fp, $fp, $s0
	slt	$s0, $fp, $a2
	maskeqz	$fp, $fp, $s0
	masknez	$s0, $a2, $s0
	or	$fp, $fp, $s0
	stx.h	$fp, $t0, $t8
	addi.d	$t5, $t5, 4
	addi.d	$t6, $t6, 1
	bne	$t5, $t2, .LBB21_5
# %bb.6:                                #   in Loop: Header=BB21_4 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $t3, .LBB21_4
# %bb.7:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 5660
	beqz	$a0, .LBB21_18
# %bb.8:
	ldptr.w	$a0, $a4, 15548
	blez	$a0, .LBB21_18
# %bb.9:                                # %.lr.ph73
	pcalau12i	$a1, %pc_hi20(bestInterFAdjust4x4Cr)
	addi.d	$a1, $a1, %pc_lo12(bestInterFAdjust4x4Cr)
	pcalau12i	$a7, %pc_hi20(bestIntraFAdjust4x4Cr)
	addi.d	$a7, $a7, %pc_lo12(bestIntraFAdjust4x4Cr)
	masknez	$a7, $a7, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a7
	ld.d	$a1, $a1, 0
	slli.d	$a7, $a3, 2
	slli.d	$a3, $a3, 4
	or	$a3, $a3, $a7
	pcalau12i	$a7, %pc_hi20(AdaptRndCrPos)
	addi.d	$a7, $a7, %pc_lo12(AdaptRndCrPos)
	add.d	$a7, $a7, $a3
	lu12i.w	$a3, 3
	ori	$a3, $a3, 3256
	ldx.wu	$a3, $a4, $a3
	ldx.w	$a7, $a7, $a5
	move	$a4, $zero
	addi.w	$a5, $a3, 0
	alsl.d	$a6, $a7, $a6, 3
	slli.d	$a7, $a3, 1
	vreplgr2vr.w	$vr0, $a2
	ori	$t0, $zero, 4
	vrepli.b	$vr1, 0
	b	.LBB21_12
.LBB21_10:                              # %vector.body
                                        #   in Loop: Header=BB21_12 Depth=1
	slli.d	$t6, $t3, 1
	ldx.d	$t7, $t4, $t6
	vld	$vr2, $t5, 0
	alsl.d	$t4, $t3, $t4, 1
	vinsgr2vr.d	$vr3, $t7, 0
	vpickev.h	$vr2, $vr2, $vr2
	vadd.h	$vr2, $vr3, $vr2
	vmaxi.h	$vr2, $vr2, 0
	vilvl.h	$vr2, $vr1, $vr2
	vmin.w	$vr2, $vr2, $vr0
	vpickev.h	$vr2, $vr2, $vr2
	ldx.d	$t5, $t1, $t6
	vld	$vr3, $t2, 0
	vstelm.d	$vr2, $t4, 0, 0
	alsl.d	$t1, $t3, $t1, 1
	vinsgr2vr.d	$vr2, $t5, 0
	vpickev.h	$vr3, $vr3, $vr3
	vadd.h	$vr2, $vr2, $vr3
	vmaxi.h	$vr2, $vr2, 0
	vilvl.h	$vr2, $vr1, $vr2
	vmin.w	$vr2, $vr2, $vr0
	vpickev.h	$vr2, $vr2, $vr2
	vstelm.d	$vr2, $t1, 0, 0
	.p2align	4, , 16
.LBB21_11:                              # %._crit_edge
                                        #   in Loop: Header=BB21_12 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $a0, .LBB21_18
.LBB21_12:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_17 Depth 2
	blez	$a5, .LBB21_11
# %bb.13:                               # %.lr.ph
                                        #   in Loop: Header=BB21_12 Depth=1
	ld.d	$t1, $a1, 0
	ld.d	$t2, $a1, 8
	slli.d	$t6, $a4, 3
	ldx.d	$t5, $t1, $t6
	ld.d	$t4, $a6, 0
	ldx.d	$t2, $t2, $t6
	ld.d	$t1, $a6, 8
	slli.d	$t3, $a4, 2
	andi	$t3, $t3, 12
	bne	$a5, $t0, .LBB21_16
# %bb.14:                               # %vector.memcheck
                                        #   in Loop: Header=BB21_12 Depth=1
	andi	$t6, $t6, 24
	add.d	$t7, $t4, $t6
	add.d	$t6, $t1, $t6
	add.d	$t8, $t6, $a7
	bgeu	$t7, $t8, .LBB21_10
# %bb.15:                               # %vector.memcheck
                                        #   in Loop: Header=BB21_12 Depth=1
	add.d	$t7, $t7, $a7
	bgeu	$t6, $t7, .LBB21_10
.LBB21_16:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB21_12 Depth=1
	move	$t6, $zero
	.p2align	4, , 16
.LBB21_17:                              # %scalar.ph
                                        #   Parent Loop BB21_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$t7, $t6, 3
	or	$t7, $t7, $t3
	ld.h	$t8, $t5, 0
	slli.d	$t7, $t7, 1
	ldx.h	$fp, $t4, $t7
	add.d	$t8, $fp, $t8
	ext.w.h	$t8, $t8
	srai.d	$fp, $t8, 63
	andn	$t8, $t8, $fp
	slt	$fp, $t8, $a2
	maskeqz	$t8, $t8, $fp
	masknez	$fp, $a2, $fp
	or	$t8, $t8, $fp
	stx.h	$t8, $t4, $t7
	ld.h	$t8, $t2, 0
	ldx.h	$fp, $t1, $t7
	add.d	$t8, $fp, $t8
	ext.w.h	$t8, $t8
	srai.d	$fp, $t8, 63
	andn	$t8, $t8, $fp
	slt	$fp, $t8, $a2
	maskeqz	$t8, $t8, $fp
	masknez	$fp, $a2, $fp
	or	$t8, $t8, $fp
	stx.h	$t8, $t1, $t7
	addi.d	$t6, $t6, 1
	addi.d	$t2, $t2, 4
	addi.d	$t5, $t5, 4
	bne	$a3, $t6, .LBB21_17
	b	.LBB21_11
.LBB21_18:                              # %.loopexit
	ld.d	$s0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end21:
	.size	update_offset_params, .Lfunc_end21-update_offset_params
                                        # -- End function
	.globl	SetRefAndMotionVectors          # -- Begin function SetRefAndMotionVectors
	.p2align	5
	.type	SetRefAndMotionVectors,@function
SetRefAndMotionVectors:                 # @SetRefAndMotionVectors
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
	move	$fp, $a3
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$s0, $a3, %got_pc_lo12(img)
	ld.d	$a3, $s0, 0
	addi.w	$a5, $a1, -1
	sltui	$a5, $a5, 3
	ori	$a6, $zero, 4
	masknez	$a6, $a6, $a5
	maskeqz	$a5, $a1, $a5
	or	$s7, $a5, $a6
	move	$s5, $a0
	bstrins.d	$s5, $zero, 0, 0
	slli.d	$a5, $a0, 1
	andi	$t0, $a5, 2
	pcalau12i	$a6, %got_pc_hi20(input)
	ld.d	$s8, $a6, %got_pc_lo12(input)
	ld.d	$a6, $s8, 0
	alsl.d	$a7, $s7, $a6, 3
	ld.w	$a6, $a7, 140
	ld.w	$a7, $a7, 136
	add.w	$t1, $a6, $s5
	st.d	$t1, $sp, 48                    # 8-byte Folded Spill
	st.d	$t0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	add.w	$s4, $a7, $t0
	bltz	$a2, .LBB22_24
# %bb.1:
	ld.w	$a7, $a3, 12
	ldptr.d	$t0, $a3, 14224
	ld.w	$a3, $a3, 20
	ori	$t1, $zero, 536
	mul.d	$a7, $a7, $t1
	ori	$t1, $zero, 1
	add.d	$s6, $t0, $a7
	bne	$a3, $t1, .LBB22_36
# %bb.2:                                # %.preheader
	blez	$a6, .LBB22_42
# %bb.3:                                # %.lr.ph234
	andi	$a3, $a5, 2
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	andi	$a0, $a0, 1
	slli.d	$a0, $a0, 4
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a5, %pc_hi20(direct_pdir)
	pcalau12i	$a6, %pc_hi20(direct_ref_idx)
	ori	$a7, $zero, 1
	ori	$t0, $zero, 2
	lu12i.w	$t1, 3
	ori	$t2, $zero, 255
	b	.LBB22_5
	.p2align	4, , 16
.LBB22_4:                               # %._crit_edge227
                                        #   in Loop: Header=BB22_5 Depth=1
	addi.d	$s5, $s5, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bge	$s5, $a0, .LBB22_42
.LBB22_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_9 Depth 2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	blez	$a0, .LBB22_4
# %bb.6:                                # %.lr.ph226
                                        #   in Loop: Header=BB22_5 Depth=1
	ld.d	$t3, $s0, 0
	ld.w	$t3, $t3, 172
	add.d	$t3, $s5, $t3
	slli.d	$t3, $t3, 3
	ld.d	$t4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
	b	.LBB22_9
	.p2align	4, , 16
.LBB22_7:                               #   in Loop: Header=BB22_9 Depth=2
	ldptr.d	$a0, $s2, 6512
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $t3
	ldx.d	$a0, $a0, $t7
	st.w	$zero, $a0, 0
	ldptr.d	$a0, $s2, 6488
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $t3
	stx.b	$t2, $a0, $t8
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$s1, $a0, 0
	addi.w	$t8, $zero, -1
.LBB22_8:                               #   in Loop: Header=BB22_9 Depth=2
	ldptr.d	$a0, $s1, 6496
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $t3
	stx.d	$t8, $a0, $t7
	addi.d	$t6, $t6, 1
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 1
	bge	$t6, $s4, .LBB22_4
.LBB22_9:                               #   Parent Loop BB22_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s0, 0
	ld.w	$t7, $s1, 168
	add.w	$t8, $t4, $t7
	bnez	$a1, .LBB22_11
# %bb.10:                               #   in Loop: Header=BB22_9 Depth=2
	ld.d	$a2, $a6, %pc_lo12(direct_ref_idx)
	ld.d	$a4, $a5, %pc_lo12(direct_pdir)
	ld.d	$t7, $a2, 0
	ld.d	$a2, $a2, 8
	ldx.d	$a4, $a4, $t3
	ldx.d	$t7, $t7, $t3
	ldx.d	$s2, $a2, $t3
	ldx.b	$a2, $a4, $t8
	ldx.b	$fp, $t7, $t8
	ldx.b	$a4, $s2, $t8
.LBB22_11:                              #   in Loop: Header=BB22_9 Depth=2
	move	$s2, $a2
	bstrins.d	$s2, $zero, 1, 1
	slli.d	$t7, $t8, 3
	slli.d	$s7, $s5, 3
	bnez	$s2, .LBB22_16
# %bb.12:                               #   in Loop: Header=BB22_9 Depth=2
	pcalau12i	$s2, %got_pc_hi20(enc_picture)
	ld.d	$s2, $s2, %got_pc_lo12(enc_picture)
	ld.d	$s8, $s2, 0
	ldptr.d	$s3, $s8, 6512
	ld.d	$s3, $s3, 0
	ldx.d	$s3, $s3, $t3
	ldx.d	$s3, $s3, $t7
	bne	$a1, $a7, .LBB22_17
# %bb.13:                               #   in Loop: Header=BB22_9 Depth=2
	bne	$a2, $t0, .LBB22_17
# %bb.14:                               #   in Loop: Header=BB22_9 Depth=2
	ld.hu	$ra, $s6, 480
	beqz	$ra, .LBB22_17
# %bb.15:                               # %.thread
                                        #   in Loop: Header=BB22_9 Depth=2
	addi.d	$ra, $ra, -1
	sltui	$ra, $ra, 1
	ori	$a3, $t1, 2112
	masknez	$a3, $a3, $ra
	ori	$a0, $t1, 2104
	maskeqz	$a0, $a0, $ra
	or	$a0, $a0, $a3
	ldx.d	$a0, $s1, $a0
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $t5
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	ldptr.d	$a3, $s8, 6488
	ld.h	$s1, $a0, 0
	ld.d	$a3, $a3, 0
	st.h	$s1, $s3, 0
	ld.h	$a0, $a0, 2
	ldx.d	$a3, $a3, $t3
	st.h	$a0, $s3, 2
	stx.b	$zero, $a3, $t8
	ld.d	$s2, $s2, 0
	ld.w	$a0, $s6, 432
	ldptr.d	$a3, $s2, 6496
	slli.d	$s1, $a0, 8
	ld.d	$a3, $a3, 0
	alsl.d	$a0, $a0, $s1, 3
	add.d	$a0, $s2, $a0
	ld.d	$a0, $a0, 24
	ldx.d	$a3, $a3, $t3
	stx.d	$a0, $a3, $t7
	b	.LBB22_19
	.p2align	4, , 16
.LBB22_16:                              #   in Loop: Header=BB22_9 Depth=2
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a3, $a0, 0
	ldptr.d	$s1, $a3, 6512
	ld.d	$s1, $s1, 0
	ldx.d	$s1, $s1, $t3
	ldx.d	$s1, $s1, $t7
	st.w	$zero, $s1, 0
	ldptr.d	$a3, $a3, 6488
	ld.d	$a3, $a3, 0
	ldx.d	$a3, $a3, $t3
	stx.b	$t2, $a3, $t8
	ld.d	$s2, $a0, 0
	addi.w	$s1, $zero, -1
	b	.LBB22_18
	.p2align	4, , 16
.LBB22_17:                              #   in Loop: Header=BB22_9 Depth=2
	ldptr.d	$a0, $s1, 14384
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $t5
	ld.d	$a0, $a0, 0
	slli.d	$a3, $fp, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a3, $a1, 3
	ldx.d	$a0, $a0, $a3
	ldptr.d	$a3, $s8, 6488
	ld.h	$s1, $a0, 0
	ld.d	$a3, $a3, 0
	st.h	$s1, $s3, 0
	ld.h	$a0, $a0, 2
	ldx.d	$a3, $a3, $t3
	st.h	$a0, $s3, 2
	stx.b	$fp, $a3, $t8
	ld.d	$s2, $s2, 0
	ldptr.d	$a0, $s2, 6488
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t3
	ld.w	$a3, $s6, 432
	ldx.b	$a0, $a0, $t8
	slli.d	$s1, $a3, 8
	alsl.d	$a3, $a3, $s1, 3
	add.d	$a3, $s2, $a3
	alsl.d	$a0, $a0, $a3, 3
	ld.d	$s1, $a0, 24
.LBB22_18:                              #   in Loop: Header=BB22_9 Depth=2
	ldptr.d	$a0, $s2, 6496
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t3
	addi.w	$a3, $a2, -1
	stx.d	$s1, $a0, $t7
	bltu	$a7, $a3, .LBB22_7
.LBB22_19:                              #   in Loop: Header=BB22_9 Depth=2
	ldptr.d	$a0, $s2, 6512
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $t3
	ldx.d	$s1, $a0, $t7
	bne	$a1, $a7, .LBB22_23
# %bb.20:                               #   in Loop: Header=BB22_9 Depth=2
	bne	$a2, $t0, .LBB22_23
# %bb.21:                               #   in Loop: Header=BB22_9 Depth=2
	ld.hu	$s3, $s6, 480
	beqz	$s3, .LBB22_23
# %bb.22:                               #   in Loop: Header=BB22_9 Depth=2
	addi.d	$a0, $s3, -1
	sltui	$a0, $a0, 1
	ld.d	$a3, $s0, 0
	ori	$s3, $t1, 2112
	masknez	$s3, $s3, $a0
	ori	$s8, $t1, 2104
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $s3
	ldx.d	$a0, $a3, $a0
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $t5
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	ldptr.d	$a3, $s2, 6488
	ld.h	$s2, $a0, 0
	ld.d	$a3, $a3, 8
	st.h	$s2, $s1, 0
	ld.h	$a0, $a0, 2
	ldx.d	$a3, $a3, $t3
	st.h	$a0, $s1, 2
	stx.b	$zero, $a3, $t8
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.w	$a3, $s6, 432
	ld.d	$s1, $a0, 0
	slli.d	$a0, $a3, 8
	alsl.d	$a0, $a3, $a0, 3
	add.d	$a0, $s1, $a0
	ld.d	$t8, $a0, 288
	b	.LBB22_8
	.p2align	4, , 16
.LBB22_23:                              #   in Loop: Header=BB22_9 Depth=2
	ld.d	$a0, $s0, 0
	ldptr.d	$a0, $a0, 14384
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $t5
	ld.d	$a0, $a0, 8
	slli.d	$a3, $a4, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a3, $a1, 3
	ldx.d	$a0, $a0, $a3
	ldptr.d	$a3, $s2, 6488
	ld.h	$s2, $a0, 0
	ld.d	$a3, $a3, 8
	st.h	$s2, $s1, 0
	ld.h	$a0, $a0, 2
	ldx.d	$a3, $a3, $t3
	st.h	$a0, $s1, 2
	stx.b	$a4, $a3, $t8
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$s1, $a0, 0
	ldptr.d	$a0, $s1, 6488
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $t3
	ld.w	$a3, $s6, 432
	ldx.b	$a0, $a0, $t8
	slli.d	$t8, $a3, 8
	alsl.d	$a3, $a3, $t8, 3
	add.d	$a3, $s1, $a3
	alsl.d	$a0, $a0, $a3, 3
	ld.d	$t8, $a0, 288
	b	.LBB22_8
.LBB22_24:
	blez	$a6, .LBB22_42
# %bb.25:                               # %.lr.ph241.preheader
	ld.w	$a0, $a3, 172
	add.d	$fp, $a0, $s5
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$s5, $a0, %got_pc_lo12(enc_picture)
	ori	$s2, $zero, 4
	addi.w	$s6, $zero, -1
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	b	.LBB22_27
	.p2align	4, , 16
.LBB22_26:                              # %._crit_edge238
                                        #   in Loop: Header=BB22_27 Depth=1
	ldptr.d	$a1, $a1, 6488
	ld.d	$a1, $a1, 0
	ld.d	$a2, $s8, 0
	ldx.d	$a1, $a1, $s3
	alsl.d	$a2, $s7, $a2, 3
	ld.w	$a2, $a2, 136
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a0, $a0, 8
	ld.d	$a1, $s0, 0
	ld.d	$a2, $s8, 0
	ldx.d	$a0, $a0, $s3
	ld.w	$a1, $a1, 168
	alsl.d	$a2, $s7, $a2, 3
	ld.w	$a2, $a2, 136
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	add.w	$a1, $a1, $s1
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ldptr.d	$a0, $a0, 6512
	ld.d	$a1, $s0, 0
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a1, 168
	ld.d	$a2, $s8, 0
	ldx.d	$a0, $a0, $s3
	add.w	$a1, $a1, $s1
	alsl.d	$a2, $s7, $a2, 3
	ld.w	$a2, $a2, 136
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	slli.w	$a1, $a2, 1
	slli.d	$a2, $a1, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ldptr.d	$a0, $a0, 6512
	ld.d	$a1, $s0, 0
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a1, 168
	ld.d	$a2, $s8, 0
	ldx.d	$a0, $a0, $s3
	add.w	$a1, $a1, $s1
	alsl.d	$a2, $s7, $a2, 3
	ld.w	$a2, $a2, 136
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	slli.w	$a1, $a2, 1
	slli.d	$a2, $a1, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	ld.d	$a3, $s0, 0
	ld.w	$a0, $a3, 172
	addi.d	$fp, $fp, 1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	bge	$fp, $a0, .LBB22_42
.LBB22_27:                              # %.lr.ph241
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_31 Depth 2
                                        #     Child Loop BB22_35 Depth 2
	ld.w	$a2, $a3, 168
	ld.d	$a1, $s5, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.w	$a0, $a2, $a0
	slli.d	$s3, $fp, 3
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	blez	$a3, .LBB22_26
# %bb.28:                               # %.lr.ph237
                                        #   in Loop: Header=BB22_27 Depth=1
	ldptr.d	$a3, $a1, 6496
	ld.d	$a4, $a3, 0
	ld.d	$a3, $a3, 8
	add.w	$a2, $a2, $s4
	ldx.d	$a4, $a4, $s3
	ldx.d	$a5, $a3, $s3
	addi.d	$a3, $a0, 1
	slt	$a6, $a2, $a3
	masknez	$a7, $a2, $a6
	maskeqz	$a3, $a3, $a6
	or	$a3, $a3, $a7
	sub.d	$a6, $a3, $a0
	bltu	$a6, $s2, .LBB22_33
# %bb.29:                               # %.lr.ph237
                                        #   in Loop: Header=BB22_27 Depth=1
	sub.d	$a7, $a5, $a4
	move	$a3, $a0
	ori	$t0, $zero, 32
	bltu	$a7, $t0, .LBB22_34
# %bb.30:                               # %vector.ph
                                        #   in Loop: Header=BB22_27 Depth=1
	move	$a7, $a6
	bstrins.d	$a7, $zero, 1, 0
	add.d	$a3, $a7, $a0
	alsl.d	$t0, $a0, $a5, 3
	addi.d	$t0, $t0, 16
	alsl.d	$t1, $a0, $a4, 3
	addi.d	$t1, $t1, 16
	move	$t2, $a7
	.p2align	4, , 16
.LBB22_31:                              # %vector.body
                                        #   Parent Loop BB22_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t1, -16
	vst	$vr0, $t1, 0
	vst	$vr0, $t0, -16
	vst	$vr0, $t0, 0
	addi.d	$t2, $t2, -4
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB22_31
# %bb.32:                               # %middle.block
                                        #   in Loop: Header=BB22_27 Depth=1
	beq	$a6, $a7, .LBB22_26
	b	.LBB22_34
.LBB22_33:                              #   in Loop: Header=BB22_27 Depth=1
	move	$a3, $a0
.LBB22_34:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB22_27 Depth=1
	alsl.d	$a4, $a3, $a4, 3
	alsl.d	$a5, $a3, $a5, 3
	.p2align	4, , 16
.LBB22_35:                              # %scalar.ph
                                        #   Parent Loop BB22_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$s6, $a4, 0
	st.d	$s6, $a5, 0
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	blt	$a3, $a2, .LBB22_35
	b	.LBB22_26
.LBB22_36:                              # %.preheader215
	blez	$a6, .LBB22_42
# %bb.37:                               # %.lr.ph219
	andi	$a2, $a5, 2
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	andi	$a0, $a0, 1
	slli.d	$a0, $a0, 4
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	slli.d	$s1, $fp, 3
	slli.d	$s3, $a1, 3
	b	.LBB22_39
	.p2align	4, , 16
.LBB22_38:                              # %._crit_edge
                                        #   in Loop: Header=BB22_39 Depth=1
	addi.d	$s5, $s5, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bge	$s5, $a0, .LBB22_42
.LBB22_39:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_41 Depth 2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $s0, 0
	ldptr.d	$a0, $a0, 6488
	ld.w	$a2, $a1, 172
	ld.d	$a0, $a0, 0
	add.d	$a2, $s5, $a2
	ld.d	$a3, $s8, 0
	slli.d	$s2, $a2, 3
	ldx.d	$a0, $a0, $s2
	ld.w	$a1, $a1, 168
	alsl.d	$a2, $s7, $a3, 3
	ld.w	$a2, $a2, 136
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	add.w	$a1, $a1, $a3
	add.d	$a0, $a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	blez	$a0, .LBB22_38
# %bb.40:                               # %.lr.ph
                                        #   in Loop: Header=BB22_39 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldptr.d	$a2, $a0, 14384
	ldptr.d	$a3, $a1, 6512
	slli.d	$a4, $s5, 3
	ld.w	$a5, $s6, 432
	ldx.d	$a4, $a2, $a4
	ld.d	$a2, $a3, 0
	ldptr.d	$a3, $a1, 6496
	slli.d	$a6, $a5, 8
	alsl.d	$a5, $a5, $a6, 3
	ld.w	$a6, $a0, 168
	ld.d	$a0, $a3, 0
	ldx.d	$a2, $a2, $s2
	add.d	$a1, $a1, $a5
	alsl.d	$a1, $fp, $a1, 3
	ldx.d	$a3, $a0, $s2
	ld.d	$a0, $a1, 24
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a5
	alsl.d	$a1, $a6, $a1, 3
	add.d	$a2, $a3, $a5
	alsl.d	$a2, $a6, $a2, 3
	add.d	$a3, $a4, $a5
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB22_41:                              #   Parent Loop BB22_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a3, 0
	ld.d	$a5, $a5, 0
	ldx.d	$a5, $a5, $s1
	ldx.d	$a5, $a5, $s3
	ld.h	$a6, $a5, 0
	ld.d	$a7, $a1, 0
	st.h	$a6, $a7, 0
	ld.h	$a5, $a5, 2
	st.h	$a5, $a7, 2
	st.d	$a0, $a2, 0
	addi.d	$a4, $a4, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	blt	$a4, $s4, .LBB22_41
	b	.LBB22_38
.LBB22_42:                              # %.loopexit
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
.Lfunc_end22:
	.size	SetRefAndMotionVectors, .Lfunc_end22-SetRefAndMotionVectors
                                        # -- End function
	.globl	StoreMVBlock8x8                 # -- Begin function StoreMVBlock8x8
	.p2align	5
	.type	StoreMVBlock8x8,@function
StoreMVBlock8x8:                        # @StoreMVBlock8x8
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a7, %got_pc_hi20(img)
	ld.d	$a7, $a7, %got_pc_lo12(img)
	ld.d	$a7, $a7, 0
	ldptr.d	$t0, $a7, 14384
	ldptr.d	$a7, $a7, 14376
	slli.d	$t6, $a0, 7
	pcalau12i	$a0, %pc_hi20(all_mv8x8)
	addi.d	$a0, $a0, %pc_lo12(all_mv8x8)
	add.d	$t2, $a0, $t6
	move	$t1, $a1
	bstrins.d	$t1, $zero, 0, 0
	addi.w	$a0, $t1, 2
	beqz	$a6, .LBB23_6
# %bb.1:
	ori	$t3, $zero, 2
	addi.d	$a6, $t2, 64
	beq	$a5, $t3, .LBB23_11
# %bb.2:
	ori	$t3, $zero, 1
	beq	$a5, $t3, .LBB23_9
# %bb.3:
	bnez	$a5, .LBB23_17
# %bb.4:                                # %.preheader218
	pcalau12i	$a4, %pc_hi20(pred_mv8x8)
	addi.d	$t4, $a4, %pc_lo12(pred_mv8x8)
	slli.d	$a5, $t1, 3
	ldx.d	$t5, $t0, $a5
	slli.d	$a4, $a1, 1
	andi	$a4, $a4, 2
	slli.d	$t3, $a4, 3
	ldx.d	$a6, $t5, $t3
	ld.d	$a6, $a6, 0
	slli.d	$t7, $a3, 3
	ldx.d	$a6, $a6, $t7
	ldx.d	$t8, $a7, $a5
	slli.d	$fp, $a2, 3
	ldx.d	$a5, $a6, $fp
	ldx.d	$a6, $t8, $t3
	ld.h	$s0, $a5, 0
	alsl.d	$s1, $t1, $t2, 4
	ld.d	$s2, $a6, 0
	slli.d	$a6, $a4, 2
	stx.h	$s0, $s1, $a6
	ld.h	$s0, $a5, 2
	ldx.d	$s2, $s2, $t7
	ori	$a5, $zero, 1
	bstrins.d	$a5, $a1, 1, 1
	slli.d	$a1, $a5, 3
	ldx.d	$t5, $t5, $a1
	ldx.d	$s2, $s2, $fp
	alsl.d	$s3, $a4, $s1, 2
	st.h	$s0, $s3, 2
	ld.d	$s0, $t5, 0
	ld.h	$s3, $s2, 0
	add.d	$t5, $t4, $t6
	alsl.d	$t6, $t1, $t5, 4
	ldx.d	$t4, $s0, $t7
	stx.h	$s3, $t6, $a6
	ldx.d	$t8, $t8, $a1
	ld.h	$s0, $s2, 2
	ldx.d	$s2, $t4, $fp
	alsl.d	$t4, $a4, $t6, 2
	ld.d	$t8, $t8, 0
	st.h	$s0, $t4, 2
	ld.h	$s0, $s2, 0
	ldx.d	$t7, $t8, $t7
	slli.d	$t4, $a5, 2
	stx.h	$s0, $s1, $t4
	ld.h	$t8, $s2, 2
	ldx.d	$t7, $t7, $fp
	alsl.d	$fp, $a5, $s1, 2
	st.h	$t8, $fp, 2
	ld.h	$t8, $t7, 0
	stx.h	$t8, $t6, $t4
	ld.h	$t7, $t7, 2
	alsl.d	$t6, $a5, $t6, 2
	addi.d	$t1, $t1, 1
	st.h	$t7, $t6, 2
	bge	$t1, $a0, .LBB23_16
# %bb.5:                                # %.preheader218.1
	slli.d	$a0, $t1, 3
	ldx.d	$t0, $t0, $a0
	ldx.d	$t6, $t0, $t3
	ld.d	$t6, $t6, 0
	ldx.d	$a0, $a7, $a0
	slli.d	$a3, $a3, 3
	ldx.d	$a7, $t6, $a3
	slli.d	$a2, $a2, 3
	ldx.d	$t3, $a0, $t3
	ldx.d	$a7, $a7, $a2
	ld.d	$t3, $t3, 0
	ld.h	$t6, $a7, 0
	alsl.d	$t2, $t1, $t2, 4
	ldx.d	$t3, $t3, $a3
	stx.h	$t6, $t2, $a6
	ld.h	$a7, $a7, 2
	ldx.d	$t0, $t0, $a1
	ldx.d	$t3, $t3, $a2
	alsl.d	$t6, $a4, $t2, 2
	st.h	$a7, $t6, 2
	ld.d	$a7, $t0, 0
	ld.h	$t0, $t3, 0
	alsl.d	$t1, $t1, $t5, 4
	ldx.d	$a7, $a7, $a3
	stx.h	$t0, $t1, $a6
	ldx.d	$a0, $a0, $a1
	ld.h	$a1, $t3, 2
	ldx.d	$a6, $a7, $a2
	alsl.d	$a4, $a4, $t1, 2
	ld.d	$a0, $a0, 0
	st.h	$a1, $a4, 2
	ld.h	$a1, $a6, 0
	ldx.d	$a0, $a0, $a3
	stx.h	$a1, $t2, $t4
	ld.h	$a1, $a6, 2
	ldx.d	$a0, $a0, $a2
	alsl.d	$a2, $a5, $t2, 2
	st.h	$a1, $a2, 2
	ld.h	$a1, $a0, 0
	stx.h	$a1, $t1, $t4
	ld.h	$a0, $a0, 2
	alsl.d	$a1, $a5, $t1, 2
	b	.LBB23_15
.LBB23_6:
	bltz	$a5, .LBB23_16
# %bb.7:                                # %.preheader
	pcalau12i	$a2, %pc_hi20(pred_mv8x8)
	addi.d	$t3, $a2, %pc_lo12(pred_mv8x8)
	slli.d	$a4, $t1, 3
	ldx.d	$t4, $t0, $a4
	slli.d	$a2, $a1, 1
	andi	$a2, $a2, 2
	slli.d	$a6, $a2, 3
	ldx.d	$a5, $t4, $a6
	ld.d	$a5, $a5, 0
	slli.d	$t5, $a3, 3
	ldx.d	$a5, $a5, $t5
	ldx.d	$t7, $a7, $a4
	ld.d	$a4, $a5, 32
	ldx.d	$a5, $t7, $a6
	ld.h	$t8, $a4, 0
	alsl.d	$fp, $t1, $t2, 4
	ld.d	$s0, $a5, 0
	slli.d	$a5, $a2, 2
	stx.h	$t8, $fp, $a5
	ld.h	$t8, $a4, 2
	ldx.d	$s0, $s0, $t5
	ori	$a4, $zero, 1
	bstrins.d	$a4, $a1, 1, 1
	slli.d	$a1, $a4, 3
	ldx.d	$t4, $t4, $a1
	ld.d	$s0, $s0, 32
	alsl.d	$s1, $a2, $fp, 2
	st.h	$t8, $s1, 2
	ld.d	$t8, $t4, 0
	ld.h	$s1, $s0, 0
	add.d	$t4, $t3, $t6
	alsl.d	$t6, $t1, $t4, 4
	ldx.d	$t3, $t8, $t5
	stx.h	$s1, $t6, $a5
	ldx.d	$t7, $t7, $a1
	ld.h	$t8, $s0, 2
	ld.d	$s0, $t3, 32
	alsl.d	$t3, $a2, $t6, 2
	ld.d	$t7, $t7, 0
	st.h	$t8, $t3, 2
	ld.h	$t8, $s0, 0
	ldx.d	$t5, $t7, $t5
	slli.d	$t3, $a4, 2
	stx.h	$t8, $fp, $t3
	ld.h	$t7, $s0, 2
	ld.d	$t5, $t5, 32
	alsl.d	$t8, $a4, $fp, 2
	st.h	$t7, $t8, 2
	ld.h	$t7, $t5, 0
	stx.h	$t7, $t6, $t3
	ld.h	$t5, $t5, 2
	alsl.d	$t6, $a4, $t6, 2
	addi.d	$t1, $t1, 1
	st.h	$t5, $t6, 2
	bge	$t1, $a0, .LBB23_16
# %bb.8:                                # %.preheader.1
	slli.d	$a0, $t1, 3
	ldx.d	$t0, $t0, $a0
	ldx.d	$t5, $t0, $a6
	ld.d	$t5, $t5, 0
	ldx.d	$a0, $a7, $a0
	slli.d	$a3, $a3, 3
	ldx.d	$a7, $t5, $a3
	ldx.d	$a6, $a0, $a6
	ld.d	$a7, $a7, 32
	ld.d	$a6, $a6, 0
	ld.h	$t5, $a7, 0
	alsl.d	$t2, $t1, $t2, 4
	ldx.d	$a6, $a6, $a3
	stx.h	$t5, $t2, $a5
	ld.h	$a7, $a7, 2
	ldx.d	$t0, $t0, $a1
	ld.d	$a6, $a6, 32
	alsl.d	$t5, $a2, $t2, 2
	st.h	$a7, $t5, 2
	ld.d	$a7, $t0, 0
	ld.h	$t0, $a6, 0
	alsl.d	$t1, $t1, $t4, 4
	ldx.d	$a7, $a7, $a3
	stx.h	$t0, $t1, $a5
	ldx.d	$a0, $a0, $a1
	ld.h	$a1, $a6, 2
	ld.d	$a5, $a7, 32
	alsl.d	$a2, $a2, $t1, 2
	ld.d	$a0, $a0, 0
	st.h	$a1, $a2, 2
	ld.h	$a1, $a5, 0
	ldx.d	$a0, $a0, $a3
	stx.h	$a1, $t2, $t3
	ld.h	$a1, $a5, 2
	ld.d	$a0, $a0, 32
	alsl.d	$a2, $a4, $t2, 2
	st.h	$a1, $a2, 2
	ld.h	$a1, $a0, 0
	stx.h	$a1, $t1, $t3
	ld.h	$a0, $a0, 2
	alsl.d	$a1, $a4, $t1, 2
	b	.LBB23_15
.LBB23_9:                               # %.preheader220
	pcalau12i	$a3, %pc_hi20(pred_mv8x8)
	addi.d	$a5, $a3, %pc_lo12(pred_mv8x8)
	slli.d	$t4, $t1, 3
	ldx.d	$t5, $t0, $t4
	slli.d	$a3, $a1, 1
	andi	$a3, $a3, 2
	slli.d	$t2, $a3, 3
	ldx.d	$t7, $t5, $t2
	ld.d	$t7, $t7, 8
	slli.d	$t8, $a4, 3
	ldx.d	$t7, $t7, $t8
	ldx.d	$t4, $a7, $t4
	slli.d	$fp, $a2, 3
	ldx.d	$t7, $t7, $fp
	ldx.d	$s0, $t4, $t2
	add.d	$t6, $a5, $t6
	ld.h	$s1, $t7, 0
	alsl.d	$s2, $t1, $a6, 4
	ld.d	$s0, $s0, 8
	slli.d	$a5, $a3, 2
	stx.h	$s1, $s2, $a5
	ld.h	$t7, $t7, 2
	ldx.d	$s0, $s0, $t8
	bstrins.d	$t3, $a1, 1, 1
	slli.d	$a1, $t3, 3
	ldx.d	$t5, $t5, $a1
	ldx.d	$s0, $s0, $fp
	alsl.d	$s1, $a3, $s2, 2
	st.h	$t7, $s1, 2
	ld.d	$t7, $t5, 8
	ld.h	$s1, $s0, 0
	addi.d	$t5, $t6, 64
	alsl.d	$t6, $t1, $t5, 4
	ldx.d	$t7, $t7, $t8
	stx.h	$s1, $t6, $a5
	ldx.d	$t4, $t4, $a1
	ld.h	$s0, $s0, 2
	ldx.d	$t7, $t7, $fp
	alsl.d	$s1, $a3, $t6, 2
	ld.d	$t4, $t4, 8
	st.h	$s0, $s1, 2
	ld.h	$s0, $t7, 0
	ldx.d	$t8, $t4, $t8
	slli.d	$t4, $t3, 2
	stx.h	$s0, $s2, $t4
	ld.h	$t7, $t7, 2
	ldx.d	$t8, $t8, $fp
	alsl.d	$fp, $t3, $s2, 2
	st.h	$t7, $fp, 2
	ld.h	$t7, $t8, 0
	stx.h	$t7, $t6, $t4
	ld.h	$t7, $t8, 2
	alsl.d	$t6, $t3, $t6, 2
	addi.d	$t1, $t1, 1
	st.h	$t7, $t6, 2
	bge	$t1, $a0, .LBB23_16
# %bb.10:                               # %.preheader220.1
	slli.d	$a0, $t1, 3
	ldx.d	$t0, $t0, $a0
	ldx.d	$t6, $t0, $t2
	ld.d	$t6, $t6, 8
	ldx.d	$a0, $a7, $a0
	slli.d	$a4, $a4, 3
	ldx.d	$a7, $t6, $a4
	slli.d	$a2, $a2, 3
	ldx.d	$t2, $a0, $t2
	ldx.d	$a7, $a7, $a2
	ld.d	$t2, $t2, 8
	ld.h	$t6, $a7, 0
	alsl.d	$a6, $t1, $a6, 4
	ldx.d	$t2, $t2, $a4
	stx.h	$t6, $a6, $a5
	ld.h	$a7, $a7, 2
	ldx.d	$t0, $t0, $a1
	ldx.d	$t2, $t2, $a2
	alsl.d	$t6, $a3, $a6, 2
	st.h	$a7, $t6, 2
	ld.d	$a7, $t0, 8
	ld.h	$t0, $t2, 0
	alsl.d	$t1, $t1, $t5, 4
	ldx.d	$a7, $a7, $a4
	stx.h	$t0, $t1, $a5
	ldx.d	$a0, $a0, $a1
	ld.h	$a1, $t2, 2
	ldx.d	$a5, $a7, $a2
	alsl.d	$a3, $a3, $t1, 2
	ld.d	$a0, $a0, 8
	st.h	$a1, $a3, 2
	ld.h	$a1, $a5, 0
	ldx.d	$a0, $a0, $a4
	stx.h	$a1, $a6, $t4
	ld.h	$a1, $a5, 2
	ldx.d	$a0, $a0, $a2
	alsl.d	$a2, $t3, $a6, 2
	st.h	$a1, $a2, 2
	ld.h	$a1, $a0, 0
	stx.h	$a1, $t1, $t4
	ld.h	$a0, $a0, 2
	alsl.d	$a1, $t3, $t1, 2
	b	.LBB23_15
.LBB23_11:                              # %.preheader224
	pcalau12i	$a5, %pc_hi20(pred_mv8x8)
	addi.d	$t7, $a5, %pc_lo12(pred_mv8x8)
	slli.d	$t3, $t1, 3
	ldx.d	$s0, $t0, $t3
	slli.d	$a5, $a1, 1
	andi	$a5, $a5, 2
	slli.d	$t5, $a5, 3
	ldx.d	$t8, $s0, $t5
	ld.d	$t4, $t8, 0
	slli.d	$s4, $a3, 3
	ldx.d	$t4, $t4, $s4
	ldx.d	$s2, $a7, $t3
	slli.d	$s5, $a2, 3
	ldx.d	$t3, $t4, $s5
	ldx.d	$fp, $s2, $t5
	ld.h	$s1, $t3, 0
	alsl.d	$s6, $t1, $t2, 4
	ld.d	$s3, $fp, 0
	slli.d	$t4, $a5, 2
	stx.h	$s1, $s6, $t4
	ld.h	$s7, $t3, 2
	ldx.d	$s3, $s3, $s4
	ori	$t3, $zero, 1
	bstrins.d	$t3, $a1, 1, 1
	slli.d	$a1, $t3, 3
	ldx.d	$s1, $s0, $a1
	ldx.d	$s0, $s3, $s5
	alsl.d	$s3, $a5, $s6, 2
	st.h	$s7, $s3, 2
	ld.d	$s7, $s1, 0
	ld.h	$s8, $s0, 0
	add.d	$s3, $t7, $t6
	alsl.d	$t7, $t1, $s3, 4
	ldx.d	$t6, $s7, $s4
	stx.h	$s8, $t7, $t4
	ldx.d	$s2, $s2, $a1
	ld.h	$s0, $s0, 2
	ldx.d	$s7, $t6, $s5
	alsl.d	$t6, $a5, $t7, 2
	ld.d	$s8, $s2, 0
	st.h	$s0, $t6, 2
	ld.h	$s0, $s7, 0
	ldx.d	$s4, $s8, $s4
	slli.d	$t6, $t3, 2
	stx.h	$s0, $s6, $t6
	ld.h	$s0, $s7, 2
	ldx.d	$s4, $s4, $s5
	alsl.d	$s5, $t3, $s6, 2
	st.h	$s0, $s5, 2
	ld.h	$s0, $s4, 0
	stx.h	$s0, $t7, $t6
	ld.h	$s0, $s4, 2
	alsl.d	$t7, $t3, $t7, 2
	st.h	$s0, $t7, 2
	addi.d	$t7, $t1, 1
	slli.d	$s0, $t7, 3
	slli.d	$a2, $a2, 3
	bge	$t7, $a0, .LBB23_13
# %bb.12:                               # %.preheader224.1
	ldx.d	$s4, $t0, $s0
	ldx.d	$s5, $s4, $t5
	ld.d	$s5, $s5, 0
	ldx.d	$s6, $a7, $s0
	slli.d	$a3, $a3, 3
	ldx.d	$s5, $s5, $a3
	ldx.d	$s7, $s6, $t5
	ldx.d	$s5, $s5, $a2
	ld.d	$s7, $s7, 0
	ld.h	$s8, $s5, 0
	alsl.d	$t2, $t7, $t2, 4
	ldx.d	$s7, $s7, $a3
	stx.h	$s8, $t2, $t4
	ld.h	$s5, $s5, 2
	ldx.d	$s4, $s4, $a1
	ldx.d	$s7, $s7, $a2
	alsl.d	$s8, $a5, $t2, 2
	st.h	$s5, $s8, 2
	ld.d	$s4, $s4, 0
	ld.h	$s5, $s7, 0
	alsl.d	$s8, $t7, $s3, 4
	ldx.d	$s4, $s4, $a3
	stx.h	$s5, $s8, $t4
	ldx.d	$s5, $s6, $a1
	ld.h	$s6, $s7, 2
	ldx.d	$s4, $s4, $a2
	alsl.d	$s7, $a5, $s8, 2
	ld.d	$s5, $s5, 0
	st.h	$s6, $s7, 2
	ld.h	$s6, $s4, 0
	ldx.d	$a3, $s5, $a3
	stx.h	$s6, $t2, $t6
	ld.h	$s4, $s4, 2
	ldx.d	$a3, $a3, $a2
	alsl.d	$t2, $t3, $t2, 2
	st.h	$s4, $t2, 2
	ld.h	$t2, $a3, 0
	stx.h	$t2, $s8, $t6
	ld.h	$a3, $a3, 2
	alsl.d	$t2, $t3, $s8, 2
	st.h	$a3, $t2, 2
.LBB23_13:                              # %.preheader222
	ld.d	$a3, $t8, 8
	slli.d	$t2, $a4, 3
	ldx.d	$a3, $a3, $t2
	ldx.d	$a3, $a3, $a2
	ld.d	$t8, $fp, 8
	ld.h	$fp, $a3, 0
	ldx.d	$t8, $t8, $t2
	alsl.d	$s4, $t1, $a6, 4
	stx.h	$fp, $s4, $t4
	ld.h	$a3, $a3, 2
	ldx.d	$t8, $t8, $a2
	alsl.d	$fp, $a5, $s4, 2
	ld.d	$s1, $s1, 8
	st.h	$a3, $fp, 2
	ld.h	$fp, $t8, 0
	addi.d	$a3, $s3, 64
	ldx.d	$s1, $s1, $t2
	alsl.d	$t1, $t1, $a3, 4
	stx.h	$fp, $t1, $t4
	ld.h	$t8, $t8, 2
	ldx.d	$fp, $s1, $a2
	alsl.d	$s1, $a5, $t1, 2
	ld.d	$s2, $s2, 8
	st.h	$t8, $s1, 2
	ld.h	$t8, $fp, 0
	ldx.d	$t2, $s2, $t2
	stx.h	$t8, $s4, $t6
	ld.h	$t8, $fp, 2
	ldx.d	$t2, $t2, $a2
	alsl.d	$fp, $t3, $s4, 2
	st.h	$t8, $fp, 2
	ld.h	$t8, $t2, 0
	stx.h	$t8, $t1, $t6
	ld.h	$t2, $t2, 2
	alsl.d	$t1, $t3, $t1, 2
	st.h	$t2, $t1, 2
	bge	$t7, $a0, .LBB23_16
# %bb.14:                               # %.preheader222.1
	ldx.d	$a0, $t0, $s0
	ldx.d	$t0, $a0, $t5
	ld.d	$t0, $t0, 8
	ldx.d	$a7, $a7, $s0
	slli.d	$a4, $a4, 3
	ldx.d	$t0, $t0, $a4
	ldx.d	$t1, $a7, $t5
	ldx.d	$t0, $t0, $a2
	ld.d	$t1, $t1, 8
	ld.h	$t2, $t0, 0
	alsl.d	$a6, $t7, $a6, 4
	ldx.d	$t1, $t1, $a4
	stx.h	$t2, $a6, $t4
	ld.h	$t0, $t0, 2
	ldx.d	$a0, $a0, $a1
	ldx.d	$t1, $t1, $a2
	alsl.d	$t2, $a5, $a6, 2
	st.h	$t0, $t2, 2
	ld.d	$a0, $a0, 8
	ld.h	$t0, $t1, 0
	alsl.d	$a3, $t7, $a3, 4
	ldx.d	$a0, $a0, $a4
	stx.h	$t0, $a3, $t4
	ldx.d	$a1, $a7, $a1
	ld.h	$a7, $t1, 2
	ldx.d	$a0, $a0, $a2
	alsl.d	$a5, $a5, $a3, 2
	ld.d	$a1, $a1, 8
	st.h	$a7, $a5, 2
	ld.h	$a5, $a0, 0
	ldx.d	$a1, $a1, $a4
	stx.h	$a5, $a6, $t6
	ld.h	$a0, $a0, 2
	ldx.d	$a1, $a1, $a2
	alsl.d	$a2, $t3, $a6, 2
	st.h	$a0, $a2, 2
	ld.h	$a0, $a1, 0
	stx.h	$a0, $a3, $t6
	ld.h	$a0, $a1, 2
	alsl.d	$a1, $t3, $a3, 2
.LBB23_15:                              # %.loopexit
	st.h	$a0, $a1, 2
.LBB23_16:                              # %.loopexit
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB23_17:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 255
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(error)
	jr	$t8
.Lfunc_end23:
	.size	StoreMVBlock8x8, .Lfunc_end23-StoreMVBlock8x8
                                        # -- End function
	.globl	RestoreMVBlock8x8               # -- Begin function RestoreMVBlock8x8
	.p2align	5
	.type	RestoreMVBlock8x8,@function
RestoreMVBlock8x8:                      # @RestoreMVBlock8x8
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
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$a4, $a4, %got_pc_lo12(img)
	ld.d	$a4, $a4, 0
	ldptr.d	$a5, $a4, 14384
	ldptr.d	$a4, $a4, 14376
	slli.d	$t1, $a0, 7
	pcalau12i	$a0, %pc_hi20(all_mv8x8)
	addi.d	$a0, $a0, %pc_lo12(all_mv8x8)
	add.d	$t2, $a2, $a1
	lu12i.w	$t3, 1
	ori	$a6, $t3, 2060
	ldx.bu	$t0, $t2, $a6
	ori	$a6, $t3, 2064
	ldx.b	$t4, $t2, $a6
	add.d	$a7, $a0, $t1
	move	$a6, $a1
	bstrins.d	$a6, $zero, 0, 0
	addi.w	$a0, $a6, 2
	beqz	$a3, .LBB24_6
# %bb.1:
	alsl.d	$a2, $a1, $a2, 1
	ori	$a3, $t3, 2052
	ldx.h	$t6, $a2, $a3
	ori	$a2, $t3, 2068
	ldx.b	$t5, $t2, $a2
	ori	$a3, $zero, 2
	addi.d	$a2, $a7, 64
	beq	$t0, $a3, .LBB24_12
# %bb.2:
	ori	$a3, $zero, 1
	beq	$t0, $a3, .LBB24_9
# %bb.3:
	bnez	$t0, .LBB24_17
# %bb.4:                                # %.preheader222
	pcalau12i	$a2, %pc_hi20(pred_mv8x8)
	addi.d	$t5, $a2, %pc_lo12(pred_mv8x8)
	slli.d	$a2, $a6, 3
	ldx.d	$t7, $a5, $a2
	slli.d	$a3, $a1, 1
	andi	$t0, $a3, 2
	slli.d	$t3, $t0, 3
	ldx.d	$a3, $t7, $t3
	ld.d	$a3, $a3, 0
	alsl.d	$t8, $a6, $a7, 4
	ldx.d	$fp, $a4, $a2
	slli.d	$a2, $t4, 3
	ldx.d	$t4, $a3, $a2
	slli.d	$t2, $t0, 2
	ldx.h	$s0, $t8, $t2
	slli.d	$a3, $t6, 3
	ldx.d	$t4, $t4, $a3
	ldx.d	$t6, $fp, $t3
	st.h	$s0, $t4, 0
	ld.d	$t6, $t6, 0
	alsl.d	$s0, $t0, $t8, 2
	ld.h	$s0, $s0, 2
	add.d	$t5, $t5, $t1
	ldx.d	$t1, $t6, $a2
	alsl.d	$t6, $a6, $t5, 4
	st.h	$s0, $t4, 2
	ldx.h	$s0, $t6, $t2
	ldx.d	$s1, $t1, $a3
	ori	$t1, $zero, 1
	bstrins.d	$t1, $a1, 1, 1
	slli.d	$t4, $t1, 3
	ldx.d	$a1, $t7, $t4
	st.h	$s0, $s1, 0
	alsl.d	$t7, $t0, $t6, 2
	ld.h	$t7, $t7, 2
	ld.d	$a1, $a1, 0
	st.h	$t7, $s1, 2
	ldx.d	$t7, $a1, $a2
	slli.d	$a1, $t1, 2
	ldx.h	$s0, $t8, $a1
	ldx.d	$fp, $fp, $t4
	ldx.d	$t7, $t7, $a3
	alsl.d	$t8, $t1, $t8, 2
	ld.d	$fp, $fp, 0
	st.h	$s0, $t7, 0
	ld.h	$t8, $t8, 2
	ldx.d	$fp, $fp, $a2
	st.h	$t8, $t7, 2
	ldx.h	$t7, $t6, $a1
	ldx.d	$t8, $fp, $a3
	alsl.d	$t6, $t1, $t6, 2
	st.h	$t7, $t8, 0
	ld.h	$t6, $t6, 2
	addi.d	$a6, $a6, 1
	st.h	$t6, $t8, 2
	bge	$a6, $a0, .LBB24_16
# %bb.5:                                # %.preheader222.1
	slli.d	$a0, $a6, 3
	ldx.d	$a5, $a5, $a0
	ldx.d	$t6, $a5, $t3
	ld.d	$t6, $t6, 0
	ldx.d	$t6, $t6, $a2
	ldx.d	$a0, $a4, $a0
	alsl.d	$a4, $a6, $a7, 4
	ldx.h	$a7, $a4, $t2
	ldx.d	$t6, $t6, $a3
	ldx.d	$t3, $a0, $t3
	st.h	$a7, $t6, 0
	ld.d	$a7, $t3, 0
	alsl.d	$t3, $t0, $a4, 2
	ld.h	$t3, $t3, 2
	ldx.d	$a7, $a7, $a2
	alsl.d	$a6, $a6, $t5, 4
	st.h	$t3, $t6, 2
	ldx.h	$t2, $a6, $t2
	ldx.d	$a7, $a7, $a3
	ldx.d	$a5, $a5, $t4
	alsl.d	$t0, $t0, $a6, 2
	st.h	$t2, $a7, 0
	ld.d	$a5, $a5, 0
	ld.h	$t0, $t0, 2
	ldx.d	$a5, $a5, $a2
	st.h	$t0, $a7, 2
	ldx.h	$a7, $a4, $a1
	ldx.d	$a0, $a0, $t4
	ldx.d	$a5, $a5, $a3
	alsl.d	$a4, $t1, $a4, 2
	ld.d	$a0, $a0, 0
	st.h	$a7, $a5, 0
	ld.h	$a4, $a4, 2
	ldx.d	$a0, $a0, $a2
	st.h	$a4, $a5, 2
	ldx.h	$a1, $a6, $a1
	ldx.d	$a0, $a0, $a3
	alsl.d	$a2, $t1, $a6, 2
	b	.LBB24_11
.LBB24_6:
	ext.w.b	$a2, $t0
	bltz	$a2, .LBB24_16
# %bb.7:                                # %.preheader
	pcalau12i	$a2, %pc_hi20(pred_mv8x8)
	addi.d	$t0, $a2, %pc_lo12(pred_mv8x8)
	slli.d	$t2, $a6, 3
	ldx.d	$t5, $a5, $t2
	slli.d	$a2, $a1, 1
	andi	$a3, $a2, 2
	slli.d	$t3, $a3, 3
	ldx.d	$a2, $t5, $t3
	ld.d	$t6, $a2, 0
	alsl.d	$t7, $a6, $a7, 4
	slli.d	$a2, $t4, 3
	ldx.d	$t4, $t6, $a2
	ldx.d	$t6, $a4, $t2
	slli.d	$t2, $a3, 2
	ldx.h	$t8, $t7, $t2
	ld.d	$fp, $t4, 32
	ldx.d	$t4, $t6, $t3
	st.h	$t8, $fp, 0
	ld.d	$t8, $t4, 0
	alsl.d	$t4, $a3, $t7, 2
	ld.h	$s0, $t4, 2
	add.d	$t4, $t0, $t1
	ldx.d	$t0, $t8, $a2
	alsl.d	$t8, $a6, $t4, 4
	st.h	$s0, $fp, 2
	ldx.h	$fp, $t8, $t2
	ld.d	$s0, $t0, 32
	ori	$t0, $zero, 1
	bstrins.d	$t0, $a1, 1, 1
	slli.d	$t1, $t0, 3
	ldx.d	$a1, $t5, $t1
	st.h	$fp, $s0, 0
	alsl.d	$t5, $a3, $t8, 2
	ld.h	$t5, $t5, 2
	ld.d	$a1, $a1, 0
	st.h	$t5, $s0, 2
	ldx.d	$t5, $a1, $a2
	slli.d	$a1, $t0, 2
	ldx.h	$fp, $t7, $a1
	ldx.d	$t6, $t6, $t1
	ld.d	$t5, $t5, 32
	alsl.d	$t7, $t0, $t7, 2
	ld.d	$t6, $t6, 0
	st.h	$fp, $t5, 0
	ld.h	$t7, $t7, 2
	ldx.d	$t6, $t6, $a2
	st.h	$t7, $t5, 2
	ldx.h	$t5, $t8, $a1
	ld.d	$t6, $t6, 32
	alsl.d	$t7, $t0, $t8, 2
	st.h	$t5, $t6, 0
	ld.h	$t5, $t7, 2
	addi.d	$a6, $a6, 1
	st.h	$t5, $t6, 2
	bge	$a6, $a0, .LBB24_16
# %bb.8:                                # %.preheader.1
	slli.d	$a0, $a6, 3
	ldx.d	$a5, $a5, $a0
	ldx.d	$t5, $a5, $t3
	ld.d	$t5, $t5, 0
	ldx.d	$t5, $t5, $a2
	ldx.d	$a0, $a4, $a0
	alsl.d	$a4, $a6, $a7, 4
	ldx.h	$a7, $a4, $t2
	ld.d	$t5, $t5, 32
	ldx.d	$t3, $a0, $t3
	st.h	$a7, $t5, 0
	ld.d	$a7, $t3, 0
	alsl.d	$t3, $a3, $a4, 2
	ld.h	$t3, $t3, 2
	ldx.d	$a7, $a7, $a2
	alsl.d	$a6, $a6, $t4, 4
	st.h	$t3, $t5, 2
	ldx.h	$t2, $a6, $t2
	ld.d	$a7, $a7, 32
	ldx.d	$a5, $a5, $t1
	alsl.d	$a3, $a3, $a6, 2
	st.h	$t2, $a7, 0
	ld.d	$a5, $a5, 0
	ld.h	$a3, $a3, 2
	ldx.d	$a5, $a5, $a2
	st.h	$a3, $a7, 2
	ldx.h	$a3, $a4, $a1
	ldx.d	$a0, $a0, $t1
	ld.d	$a5, $a5, 32
	alsl.d	$a4, $t0, $a4, 2
	ld.d	$a0, $a0, 0
	st.h	$a3, $a5, 0
	ld.h	$a3, $a4, 2
	ldx.d	$a0, $a0, $a2
	st.h	$a3, $a5, 2
	ldx.h	$a1, $a6, $a1
	ld.d	$a0, $a0, 32
	alsl.d	$a2, $t0, $a6, 2
	b	.LBB24_11
.LBB24_9:                               # %.preheader224
	pcalau12i	$a7, %pc_hi20(pred_mv8x8)
	addi.d	$t7, $a7, %pc_lo12(pred_mv8x8)
	slli.d	$a7, $a6, 3
	ldx.d	$t8, $a5, $a7
	slli.d	$t0, $a1, 1
	andi	$t2, $t0, 2
	slli.d	$t4, $t2, 3
	ldx.d	$t0, $t8, $t4
	alsl.d	$fp, $a6, $a2, 4
	ld.d	$t0, $t0, 8
	ldx.d	$s0, $a4, $a7
	slli.d	$t3, $t2, 2
	slli.d	$a7, $t5, 3
	ldx.d	$t5, $t0, $a7
	ldx.h	$s1, $fp, $t3
	slli.d	$t0, $t6, 3
	ldx.d	$t6, $s0, $t4
	ldx.d	$s2, $t5, $t0
	add.d	$t1, $t7, $t1
	alsl.d	$t5, $t2, $fp, 2
	ld.d	$t6, $t6, 8
	st.h	$s1, $s2, 0
	ld.h	$t7, $t5, 2
	addi.d	$t5, $t1, 64
	ldx.d	$t1, $t6, $a7
	alsl.d	$t6, $a6, $t5, 4
	st.h	$t7, $s2, 2
	ldx.h	$t7, $t6, $t3
	ldx.d	$s1, $t1, $t0
	bstrins.d	$a3, $a1, 1, 1
	slli.d	$t1, $a3, 3
	ldx.d	$a1, $t8, $t1
	alsl.d	$t8, $t2, $t6, 2
	st.h	$t7, $s1, 0
	ld.h	$t7, $t8, 2
	ld.d	$a1, $a1, 8
	st.h	$t7, $s1, 2
	ldx.d	$t7, $a1, $a7
	slli.d	$a1, $a3, 2
	ldx.h	$t8, $fp, $a1
	ldx.d	$s0, $s0, $t1
	ldx.d	$t7, $t7, $t0
	alsl.d	$fp, $a3, $fp, 2
	ld.d	$s0, $s0, 8
	st.h	$t8, $t7, 0
	ld.h	$t8, $fp, 2
	ldx.d	$fp, $s0, $a7
	st.h	$t8, $t7, 2
	ldx.h	$t7, $t6, $a1
	ldx.d	$t8, $fp, $t0
	alsl.d	$t6, $a3, $t6, 2
	st.h	$t7, $t8, 0
	ld.h	$t6, $t6, 2
	addi.d	$a6, $a6, 1
	st.h	$t6, $t8, 2
	bge	$a6, $a0, .LBB24_16
# %bb.10:                               # %.preheader224.1
	slli.d	$a0, $a6, 3
	ldx.d	$a5, $a5, $a0
	ldx.d	$t6, $a5, $t4
	ld.d	$t6, $t6, 8
	ldx.d	$t6, $t6, $a7
	ldx.d	$a0, $a4, $a0
	alsl.d	$a2, $a6, $a2, 4
	ldx.h	$a4, $a2, $t3
	ldx.d	$t6, $t6, $t0
	ldx.d	$t4, $a0, $t4
	st.h	$a4, $t6, 0
	ld.d	$a4, $t4, 8
	alsl.d	$t4, $t2, $a2, 2
	ld.h	$t4, $t4, 2
	ldx.d	$a4, $a4, $a7
	alsl.d	$a6, $a6, $t5, 4
	st.h	$t4, $t6, 2
	ldx.h	$t3, $a6, $t3
	ldx.d	$a4, $a4, $t0
	ldx.d	$a5, $a5, $t1
	alsl.d	$t2, $t2, $a6, 2
	st.h	$t3, $a4, 0
	ld.d	$a5, $a5, 8
	ld.h	$t2, $t2, 2
	ldx.d	$a5, $a5, $a7
	st.h	$t2, $a4, 2
	ldx.h	$a4, $a2, $a1
	ldx.d	$a0, $a0, $t1
	ldx.d	$a5, $a5, $t0
	alsl.d	$a2, $a3, $a2, 2
	ld.d	$a0, $a0, 8
	st.h	$a4, $a5, 0
	ld.h	$a2, $a2, 2
	ldx.d	$a0, $a0, $a7
	st.h	$a2, $a5, 2
	ldx.h	$a1, $a6, $a1
	ldx.d	$a0, $a0, $t0
	alsl.d	$a2, $a3, $a6, 2
.LBB24_11:                              # %.loopexit
	st.h	$a1, $a0, 0
	ld.h	$a1, $a2, 2
	st.h	$a1, $a0, 2
	b	.LBB24_16
.LBB24_12:                              # %.preheader228
	pcalau12i	$a3, %pc_hi20(pred_mv8x8)
	addi.d	$fp, $a3, %pc_lo12(pred_mv8x8)
	slli.d	$a3, $a6, 3
	ldx.d	$s1, $a5, $a3
	slli.d	$t0, $a1, 1
	andi	$t0, $t0, 2
	slli.d	$t3, $t0, 3
	ldx.d	$t7, $s1, $t3
	alsl.d	$s4, $a6, $a7, 4
	ld.d	$t8, $t7, 0
	ldx.d	$s2, $a4, $a3
	slli.d	$t2, $t0, 2
	slli.d	$s3, $t4, 3
	ldx.d	$t4, $t8, $s3
	ldx.h	$s0, $s4, $t2
	slli.d	$a3, $t6, 3
	ldx.d	$t8, $s2, $t3
	ldx.d	$t4, $t4, $a3
	alsl.d	$t6, $t0, $s4, 2
	ld.d	$s5, $t8, 0
	st.h	$s0, $t4, 0
	ld.h	$t6, $t6, 2
	add.d	$s0, $fp, $t1
	ldx.d	$t1, $s5, $s3
	alsl.d	$fp, $a6, $s0, 4
	st.h	$t6, $t4, 2
	ldx.h	$t6, $fp, $t2
	ldx.d	$s5, $t1, $a3
	ori	$t1, $zero, 1
	bstrins.d	$t1, $a1, 1, 1
	slli.d	$t4, $t1, 3
	ldx.d	$s1, $s1, $t4
	alsl.d	$a1, $t0, $fp, 2
	st.h	$t6, $s5, 0
	ld.d	$t6, $s1, 0
	ld.h	$a1, $a1, 2
	ldx.d	$t6, $t6, $s3
	st.h	$a1, $s5, 2
	slli.d	$a1, $t1, 2
	ldx.h	$s5, $s4, $a1
	ldx.d	$t6, $t6, $a3
	ldx.d	$s2, $s2, $t4
	st.h	$s5, $t6, 0
	ld.d	$s5, $s2, 0
	alsl.d	$s4, $t1, $s4, 2
	ld.h	$s4, $s4, 2
	ldx.d	$s5, $s5, $s3
	st.h	$s4, $t6, 2
	ldx.h	$t6, $fp, $a1
	ldx.d	$s4, $s5, $a3
	alsl.d	$fp, $t1, $fp, 2
	st.h	$t6, $s4, 0
	ld.h	$t6, $fp, 2
	st.h	$t6, $s4, 2
	addi.d	$t6, $a6, 1
	slli.d	$fp, $t6, 3
	bge	$t6, $a0, .LBB24_14
# %bb.13:                               # %.preheader228.1
	ldx.d	$s4, $a5, $fp
	ldx.d	$s5, $s4, $t3
	ld.d	$s5, $s5, 0
	ldx.d	$s6, $a4, $fp
	ldx.d	$s5, $s5, $s3
	alsl.d	$a7, $t6, $a7, 4
	ldx.h	$s7, $a7, $t2
	ldx.d	$s8, $s6, $t3
	ldx.d	$s5, $s5, $a3
	alsl.d	$ra, $t0, $a7, 2
	ld.d	$s8, $s8, 0
	st.h	$s7, $s5, 0
	ld.h	$s7, $ra, 2
	ldx.d	$s8, $s8, $s3
	alsl.d	$ra, $t6, $s0, 4
	st.h	$s7, $s5, 2
	ldx.h	$s5, $ra, $t2
	ldx.d	$s7, $s8, $a3
	ldx.d	$s4, $s4, $t4
	alsl.d	$s8, $t0, $ra, 2
	st.h	$s5, $s7, 0
	ld.d	$s4, $s4, 0
	ld.h	$s5, $s8, 2
	ldx.d	$s4, $s4, $s3
	st.h	$s5, $s7, 2
	ldx.h	$s5, $a7, $a1
	ldx.d	$s6, $s6, $t4
	ldx.d	$s4, $s4, $a3
	alsl.d	$a7, $t1, $a7, 2
	ld.d	$s6, $s6, 0
	st.h	$s5, $s4, 0
	ld.h	$a7, $a7, 2
	ldx.d	$s3, $s6, $s3
	st.h	$a7, $s4, 2
	ldx.h	$a7, $ra, $a1
	ldx.d	$s3, $s3, $a3
	alsl.d	$s4, $t1, $ra, 2
	st.h	$a7, $s3, 0
	ld.h	$a7, $s4, 2
	st.h	$a7, $s3, 2
.LBB24_14:                              # %.preheader226
	ld.d	$t7, $t7, 8
	slli.d	$a7, $t5, 3
	ldx.d	$t5, $t7, $a7
	alsl.d	$t7, $a6, $a2, 4
	ldx.h	$s3, $t7, $t2
	ldx.d	$s4, $t5, $a3
	alsl.d	$t5, $t0, $t7, 2
	ld.d	$t8, $t8, 8
	st.h	$s3, $s4, 0
	ld.h	$s3, $t5, 2
	addi.d	$t5, $s0, 64
	ldx.d	$t8, $t8, $a7
	alsl.d	$a6, $a6, $t5, 4
	st.h	$s3, $s4, 2
	ldx.h	$s0, $a6, $t2
	ldx.d	$t8, $t8, $a3
	alsl.d	$s3, $t0, $a6, 2
	ld.d	$s1, $s1, 8
	st.h	$s0, $t8, 0
	ld.h	$s0, $s3, 2
	ldx.d	$s1, $s1, $a7
	st.h	$s0, $t8, 2
	ldx.h	$t8, $t7, $a1
	ldx.d	$s0, $s1, $a3
	alsl.d	$t7, $t1, $t7, 2
	ld.d	$s1, $s2, 8
	st.h	$t8, $s0, 0
	ld.h	$t7, $t7, 2
	ldx.d	$t8, $s1, $a7
	st.h	$t7, $s0, 2
	ldx.h	$t7, $a6, $a1
	ldx.d	$t8, $t8, $a3
	alsl.d	$a6, $t1, $a6, 2
	st.h	$t7, $t8, 0
	ld.h	$a6, $a6, 2
	st.h	$a6, $t8, 2
	bge	$t6, $a0, .LBB24_16
# %bb.15:                               # %.preheader226.1
	ldx.d	$a0, $a5, $fp
	ldx.d	$a5, $a0, $t3
	ld.d	$a5, $a5, 8
	ldx.d	$a5, $a5, $a7
	ldx.d	$a4, $a4, $fp
	alsl.d	$a2, $t6, $a2, 4
	ldx.h	$a6, $a2, $t2
	ldx.d	$a5, $a5, $a3
	ldx.d	$t3, $a4, $t3
	st.h	$a6, $a5, 0
	ld.d	$a6, $t3, 8
	alsl.d	$t3, $t0, $a2, 2
	ld.h	$t3, $t3, 2
	ldx.d	$a6, $a6, $a7
	alsl.d	$t5, $t6, $t5, 4
	st.h	$t3, $a5, 2
	ldx.h	$a5, $t5, $t2
	ldx.d	$a6, $a6, $a3
	ldx.d	$a0, $a0, $t4
	alsl.d	$t0, $t0, $t5, 2
	st.h	$a5, $a6, 0
	ld.d	$a0, $a0, 8
	ld.h	$a5, $t0, 2
	ldx.d	$a0, $a0, $a7
	st.h	$a5, $a6, 2
	ldx.h	$a5, $a2, $a1
	ldx.d	$a4, $a4, $t4
	ldx.d	$a0, $a0, $a3
	alsl.d	$a2, $t1, $a2, 2
	ld.d	$a4, $a4, 8
	st.h	$a5, $a0, 0
	ld.h	$a2, $a2, 2
	ldx.d	$a4, $a4, $a7
	st.h	$a2, $a0, 2
	ldx.h	$a0, $t5, $a1
	ldx.d	$a1, $a4, $a3
	alsl.d	$a2, $t1, $t5, 2
	st.h	$a0, $a1, 0
	ld.h	$a0, $a2, 2
	st.h	$a0, $a1, 2
.LBB24_16:                              # %.loopexit
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
.LBB24_17:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 255
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
	pcaddu18i	$t8, %call36(error)
	jr	$t8
.Lfunc_end24:
	.size	RestoreMVBlock8x8, .Lfunc_end24-RestoreMVBlock8x8
                                        # -- End function
	.globl	StoreNewMotionVectorsBlock8x8   # -- Begin function StoreNewMotionVectorsBlock8x8
	.p2align	5
	.type	StoreNewMotionVectorsBlock8x8,@function
StoreNewMotionVectorsBlock8x8:          # @StoreNewMotionVectorsBlock8x8
# %bb.0:
	slli.d	$t4, $a0, 7
	pcalau12i	$a0, %pc_hi20(all_mv8x8)
	addi.d	$a0, $a0, %pc_lo12(all_mv8x8)
	add.d	$t5, $a0, $t4
	addi.d	$a7, $t5, 64
	slli.d	$a0, $a1, 1
	andi	$a0, $a0, 2
	move	$t3, $a1
	bstrins.d	$t3, $zero, 0, 0
	addi.w	$t0, $t3, 2
	bltz	$a5, .LBB25_5
# %bb.1:
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
	pcalau12i	$t1, %got_pc_hi20(img)
	ld.d	$t1, $t1, %got_pc_lo12(img)
	ld.d	$t1, $t1, 0
	ldptr.d	$t2, $t1, 14384
	ldptr.d	$t1, $t1, 14376
	beqz	$a6, .LBB25_8
# %bb.2:
	lu12i.w	$a6, 524287
	ori	$a6, $a6, 4093
	and	$t7, $a5, $a6
	slli.d	$t6, $t3, 4
	addi.d	$a6, $t3, 1
	beqz	$t7, .LBB25_10
# %bb.3:                                # %.preheader172
	alsl.d	$a3, $a0, $t5, 2
	stx.d	$zero, $a3, $t6
	bge	$a6, $t0, .LBB25_12
# %bb.4:
	slli.d	$t5, $a6, 4
	stx.d	$zero, $a3, $t5
	b	.LBB25_12
.LBB25_5:                               # %.preheader
	alsl.d	$a1, $a0, $t5, 2
	alsl.d	$a0, $a0, $a7, 2
	slli.d	$a3, $t3, 4
	stx.d	$zero, $a1, $a3
	addi.d	$a2, $t3, 1
	stx.d	$zero, $a0, $a3
	bge	$a2, $t0, .LBB25_7
# %bb.6:
	slli.d	$a2, $a2, 4
	stx.d	$zero, $a1, $a2
	stx.d	$zero, $a0, $a2
.LBB25_7:                               # %.loopexit
	ret
.LBB25_8:                               # %.preheader164
	pcalau12i	$a2, %pc_hi20(pred_mv8x8)
	addi.d	$a6, $a2, %pc_lo12(pred_mv8x8)
	slli.d	$a2, $t3, 3
	ldx.d	$t6, $t2, $a2
	slli.d	$a5, $a0, 3
	ldx.d	$a4, $t6, $a5
	ld.d	$a4, $a4, 0
	slli.d	$t7, $a3, 3
	ldx.d	$a4, $a4, $t7
	ldx.d	$t8, $t1, $a2
	ld.d	$a2, $a4, 32
	ldx.d	$a4, $t8, $a5
	ld.h	$fp, $a2, 0
	alsl.d	$s0, $t3, $t5, 4
	ld.d	$s1, $a4, 0
	slli.d	$a4, $a0, 2
	stx.h	$fp, $s0, $a4
	ld.h	$fp, $a2, 2
	ldx.d	$s1, $s1, $t7
	ori	$a2, $zero, 1
	bstrins.d	$a2, $a1, 1, 1
	slli.d	$a1, $a2, 3
	ldx.d	$t6, $t6, $a1
	ld.d	$s1, $s1, 32
	alsl.d	$s2, $a0, $s0, 2
	st.h	$fp, $s2, 2
	ld.d	$t6, $t6, 0
	ld.h	$fp, $s1, 0
	add.d	$t4, $a6, $t4
	alsl.d	$s2, $t3, $t4, 4
	ldx.d	$a6, $t6, $t7
	stx.h	$fp, $s2, $a4
	ldx.d	$t6, $t8, $a1
	ld.h	$t8, $s1, 2
	ld.d	$fp, $a6, 32
	alsl.d	$a6, $a0, $s2, 2
	ld.d	$t6, $t6, 0
	st.h	$t8, $a6, 2
	ld.h	$t8, $fp, 0
	ldx.d	$t6, $t6, $t7
	slli.d	$a6, $a2, 2
	stx.h	$t8, $s0, $a6
	ld.h	$t7, $fp, 2
	ld.d	$t6, $t6, 32
	alsl.d	$t8, $a2, $s0, 2
	st.h	$t7, $t8, 2
	ld.h	$t7, $t6, 0
	stx.h	$t7, $s2, $a6
	ld.h	$t6, $t6, 2
	alsl.d	$a7, $a0, $a7, 2
	slli.d	$t7, $t3, 4
	alsl.d	$t8, $a2, $s2, 2
	st.h	$t6, $t8, 2
	addi.d	$t3, $t3, 1
	stx.d	$zero, $a7, $t7
	bge	$t3, $t0, .LBB25_17
# %bb.9:                                # %.preheader164.1
	slli.d	$t0, $t3, 3
	ldx.d	$t2, $t2, $t0
	ldx.d	$t6, $t2, $a5
	ld.d	$t6, $t6, 0
	ldx.d	$t0, $t1, $t0
	slli.d	$a3, $a3, 3
	ldx.d	$t1, $t6, $a3
	ldx.d	$a5, $t0, $a5
	ld.d	$t1, $t1, 32
	ld.d	$a5, $a5, 0
	ld.h	$t6, $t1, 0
	alsl.d	$t5, $t3, $t5, 4
	ldx.d	$a5, $a5, $a3
	stx.h	$t6, $t5, $a4
	ld.h	$t1, $t1, 2
	ldx.d	$t2, $t2, $a1
	ld.d	$a5, $a5, 32
	alsl.d	$t6, $a0, $t5, 2
	st.h	$t1, $t6, 2
	ld.d	$t1, $t2, 0
	ld.h	$t2, $a5, 0
	alsl.d	$t4, $t3, $t4, 4
	ldx.d	$t1, $t1, $a3
	stx.h	$t2, $t4, $a4
	ldx.d	$a1, $t0, $a1
	ld.h	$a4, $a5, 2
	ld.d	$a5, $t1, 32
	alsl.d	$a0, $a0, $t4, 2
	ld.d	$a1, $a1, 0
	st.h	$a4, $a0, 2
	ld.h	$a0, $a5, 0
	ldx.d	$a1, $a1, $a3
	stx.h	$a0, $t5, $a6
	ld.h	$a0, $a5, 2
	ld.d	$a1, $a1, 32
	alsl.d	$a3, $a2, $t5, 2
	st.h	$a0, $a3, 2
	ld.h	$a0, $a1, 0
	stx.h	$a0, $t4, $a6
	ld.h	$a0, $a1, 2
	slli.d	$a1, $t3, 4
	alsl.d	$a2, $a2, $t4, 2
	st.h	$a0, $a2, 2
	stx.d	$zero, $a7, $a1
	b	.LBB25_17
.LBB25_10:                              # %.preheader170
	pcalau12i	$t7, %pc_hi20(pred_mv8x8)
	addi.d	$s1, $t7, %pc_lo12(pred_mv8x8)
	slli.d	$t7, $t3, 3
	ldx.d	$s2, $t2, $t7
	slli.d	$fp, $a0, 3
	ldx.d	$t8, $s2, $fp
	ld.d	$t8, $t8, 0
	slli.d	$s3, $a3, 3
	ldx.d	$t8, $t8, $s3
	ldx.d	$s4, $t1, $t7
	slli.d	$s5, $a2, 3
	ldx.d	$t7, $t8, $s5
	ldx.d	$t8, $s4, $fp
	ld.h	$s0, $t7, 0
	alsl.d	$s6, $t3, $t5, 4
	ld.d	$s7, $t8, 0
	slli.d	$t8, $a0, 2
	stx.h	$s0, $s6, $t8
	ld.h	$s8, $t7, 2
	ldx.d	$s7, $s7, $s3
	ori	$t7, $zero, 1
	bstrins.d	$t7, $a1, 1, 1
	slli.d	$s0, $t7, 3
	ldx.d	$s2, $s2, $s0
	ldx.d	$s7, $s7, $s5
	alsl.d	$ra, $a0, $s6, 2
	st.h	$s8, $ra, 2
	ld.d	$s8, $s2, 0
	ld.h	$ra, $s7, 0
	add.d	$s1, $s1, $t4
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	alsl.d	$s2, $t3, $s1, 4
	ldx.d	$s1, $s8, $s3
	stx.h	$ra, $s2, $t8
	ldx.d	$s4, $s4, $s0
	ld.h	$s7, $s7, 2
	ldx.d	$s8, $s1, $s5
	alsl.d	$s1, $a0, $s2, 2
	ld.d	$s4, $s4, 0
	st.h	$s7, $s1, 2
	ld.h	$s7, $s8, 0
	ldx.d	$s3, $s4, $s3
	slli.d	$s1, $t7, 2
	stx.h	$s7, $s6, $s1
	ld.h	$s4, $s8, 2
	ldx.d	$s3, $s3, $s5
	alsl.d	$s5, $t7, $s6, 2
	st.h	$s4, $s5, 2
	ld.h	$s4, $s3, 0
	stx.h	$s4, $s2, $s1
	ld.h	$s3, $s3, 2
	alsl.d	$s2, $t7, $s2, 2
	st.h	$s3, $s2, 2
	bge	$a6, $t0, .LBB25_12
# %bb.11:                               # %.preheader170.1
	slli.d	$s2, $a6, 3
	ldx.d	$s3, $t2, $s2
	ldx.d	$s4, $s3, $fp
	ld.d	$s4, $s4, 0
	ldx.d	$s2, $t1, $s2
	slli.d	$a3, $a3, 3
	ldx.d	$s4, $s4, $a3
	slli.d	$s5, $a2, 3
	ldx.d	$fp, $s2, $fp
	ldx.d	$s4, $s4, $s5
	ld.d	$fp, $fp, 0
	ld.h	$s6, $s4, 0
	alsl.d	$t5, $a6, $t5, 4
	ldx.d	$fp, $fp, $a3
	stx.h	$s6, $t5, $t8
	ld.h	$s4, $s4, 2
	ldx.d	$s3, $s3, $s0
	ldx.d	$fp, $fp, $s5
	alsl.d	$s6, $a0, $t5, 2
	st.h	$s4, $s6, 2
	ld.d	$s3, $s3, 0
	ld.h	$s4, $fp, 0
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$s6, $a6, $s6, 4
	ldx.d	$s3, $s3, $a3
	stx.h	$s4, $s6, $t8
	ldx.d	$t8, $s2, $s0
	ld.h	$fp, $fp, 2
	ldx.d	$s0, $s3, $s5
	alsl.d	$s2, $a0, $s6, 2
	ld.d	$t8, $t8, 0
	st.h	$fp, $s2, 2
	ld.h	$fp, $s0, 0
	ldx.d	$a3, $t8, $a3
	stx.h	$fp, $t5, $s1
	ld.h	$t8, $s0, 2
	ldx.d	$a3, $a3, $s5
	alsl.d	$t5, $t7, $t5, 2
	st.h	$t8, $t5, 2
	ld.h	$t5, $a3, 0
	stx.h	$t5, $s6, $s1
	ld.h	$a3, $a3, 2
	alsl.d	$t5, $t7, $s6, 2
	st.h	$a3, $t5, 2
.LBB25_12:                              # %.loopexit171
	addi.w	$a3, $a5, -1
	ori	$a5, $zero, 2
	bgeu	$a3, $a5, .LBB25_15
# %bb.13:                               # %.preheader166
	pcalau12i	$a3, %pc_hi20(pred_mv8x8)
	addi.d	$a3, $a3, %pc_lo12(pred_mv8x8)
	slli.d	$a5, $t3, 3
	ldx.d	$t6, $t2, $a5
	slli.d	$t5, $a0, 3
	ldx.d	$t7, $t6, $t5
	ld.d	$t7, $t7, 8
	slli.d	$t8, $a4, 3
	ldx.d	$t7, $t7, $t8
	ldx.d	$fp, $t1, $a5
	slli.d	$s0, $a2, 3
	ldx.d	$t7, $t7, $s0
	ldx.d	$a5, $fp, $t5
	add.d	$t4, $a3, $t4
	ld.h	$a3, $t7, 0
	alsl.d	$s1, $t3, $a7, 4
	ld.d	$s2, $a5, 8
	slli.d	$a5, $a0, 2
	stx.h	$a3, $s1, $a5
	ld.h	$t7, $t7, 2
	ldx.d	$s2, $s2, $t8
	ori	$a3, $zero, 1
	bstrins.d	$a3, $a1, 1, 1
	slli.d	$a1, $a3, 3
	ldx.d	$t6, $t6, $a1
	ldx.d	$s2, $s2, $s0
	alsl.d	$s3, $a0, $s1, 2
	st.h	$t7, $s3, 2
	ld.d	$t6, $t6, 8
	ld.h	$t7, $s2, 0
	addi.d	$t4, $t4, 64
	alsl.d	$s3, $t3, $t4, 4
	ldx.d	$t3, $t6, $t8
	stx.h	$t7, $s3, $a5
	ldx.d	$t6, $fp, $a1
	ld.h	$t7, $s2, 2
	ldx.d	$fp, $t3, $s0
	alsl.d	$t3, $a0, $s3, 2
	ld.d	$t6, $t6, 8
	st.h	$t7, $t3, 2
	ld.h	$t7, $fp, 0
	ldx.d	$t6, $t6, $t8
	slli.d	$t3, $a3, 2
	stx.h	$t7, $s1, $t3
	ld.h	$t7, $fp, 2
	ldx.d	$t6, $t6, $s0
	alsl.d	$t8, $a3, $s1, 2
	st.h	$t7, $t8, 2
	ld.h	$t7, $t6, 0
	stx.h	$t7, $s3, $t3
	ld.h	$t6, $t6, 2
	alsl.d	$t7, $a3, $s3, 2
	st.h	$t6, $t7, 2
	bge	$a6, $t0, .LBB25_17
# %bb.14:                               # %.preheader166.1
	slli.d	$t0, $a6, 3
	ldx.d	$t2, $t2, $t0
	ldx.d	$t6, $t2, $t5
	ld.d	$t6, $t6, 8
	ldx.d	$t0, $t1, $t0
	slli.d	$a4, $a4, 3
	ldx.d	$t1, $t6, $a4
	slli.d	$a2, $a2, 3
	ldx.d	$t5, $t0, $t5
	ldx.d	$t1, $t1, $a2
	ld.d	$t5, $t5, 8
	ld.h	$t6, $t1, 0
	alsl.d	$a7, $a6, $a7, 4
	ldx.d	$t5, $t5, $a4
	stx.h	$t6, $a7, $a5
	ld.h	$t1, $t1, 2
	ldx.d	$t2, $t2, $a1
	ldx.d	$t5, $t5, $a2
	alsl.d	$t6, $a0, $a7, 2
	st.h	$t1, $t6, 2
	ld.d	$t1, $t2, 8
	ld.h	$t2, $t5, 0
	alsl.d	$a6, $a6, $t4, 4
	ldx.d	$t1, $t1, $a4
	stx.h	$t2, $a6, $a5
	ldx.d	$a1, $t0, $a1
	ld.h	$a5, $t5, 2
	ldx.d	$t0, $t1, $a2
	alsl.d	$a0, $a0, $a6, 2
	ld.d	$a1, $a1, 8
	st.h	$a5, $a0, 2
	ld.h	$a0, $t0, 0
	ldx.d	$a1, $a1, $a4
	stx.h	$a0, $a7, $t3
	ld.h	$a0, $t0, 2
	ldx.d	$a1, $a1, $a2
	alsl.d	$a2, $a3, $a7, 2
	st.h	$a0, $a2, 2
	ld.h	$a0, $a1, 0
	stx.h	$a0, $a6, $t3
	ld.h	$a0, $a1, 2
	alsl.d	$a1, $a3, $a6, 2
	st.h	$a0, $a1, 2
	b	.LBB25_17
.LBB25_15:                              # %.preheader168
	alsl.d	$a0, $a0, $a7, 2
	stx.d	$zero, $a0, $t6
	bge	$a6, $t0, .LBB25_17
# %bb.16:
	slli.d	$a1, $a6, 4
	stx.d	$zero, $a0, $a1
.LBB25_17:
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
.Lfunc_end25:
	.size	StoreNewMotionVectorsBlock8x8, .Lfunc_end25-StoreNewMotionVectorsBlock8x8
                                        # -- End function
	.globl	GetBestTransformP8x8            # -- Begin function GetBestTransformP8x8
	.p2align	5
	.type	GetBestTransformP8x8,@function
GetBestTransformP8x8:                   # @GetBestTransformP8x8
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 5100
	ori	$a2, $zero, 2
	ori	$a0, $zero, 1
	beq	$a1, $a2, .LBB26_8
# %bb.1:                                # %.preheader53.preheader
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
	pcalau12i	$a0, %pc_hi20(tr8x8)
	addi.d	$a0, $a0, %pc_lo12(tr8x8)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(tr4x4)
	addi.d	$a0, $a0, %pc_lo12(tr4x4)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a2, $a0, %got_pc_lo12(img)
	pcalau12i	$a0, %pc_hi20(imgY_org)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(diff4x4)
	addi.d	$s3, $a0, %pc_lo12(diff4x4)
	pcalau12i	$a0, %pc_hi20(diff8x8)
	addi.d	$s4, $a0, %pc_lo12(diff8x8)
	move	$a3, $zero
	move	$a4, $zero
	move	$s6, $zero
	move	$a0, $zero
	move	$a5, $zero
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB26_2:                               # %.preheader53
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_3 Depth 2
                                        #       Child Loop BB26_4 Depth 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$s0, $zero
	slli.d	$a0, $a3, 5
	bstrins.d	$a0, $zero, 7, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$s5, $a1, $a0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.d	$s2, $a1, $a0
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a3, 62, 3
	slli.d	$s1, $a0, 3
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a4, 3
	andi	$a3, $a0, 8
	slli.d	$a0, $a5, 2
	andi	$a0, $a0, 8
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a1, $a5, 3
	andi	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a1, $a1, 8
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a0, $a3, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB26_3:                               #   Parent Loop BB26_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB26_4 Depth 3
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 196
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB26_4:                               # %.preheader
                                        #   Parent Loop BB26_2 Depth=1
                                        #     Parent Loop BB26_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(imgY_org)
	ld.d	$a1, $a2, 0
	alsl.d	$a0, $s1, $a0, 3
	ld.w	$a3, $a1, 192
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a1, $a0, $a1
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a4, $a4, $a0, 3
	alsl.d	$a0, $a3, $a1, 1
	add.d	$a1, $s2, $fp
	ldx.d	$a0, $a0, $fp
	slli.d	$a5, $s0, 2
	ldptr.d	$a6, $a1, 6680
	move	$s7, $a2
	add.d	$a2, $s5, $fp
	vinsgr2vr.d	$vr0, $a0, 0
	vld	$vr2, $sp, 80                   # 16-byte Folded Reload
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a6, 0
	ldptr.d	$a0, $a2, 6680
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr1, $vr0, $vr1
	vstx	$vr1, $s3, $a5
	vinsgr2vr.d	$vr1, $a0, 0
	ld.d	$a0, $a4, 8
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $s4, $a5
	alsl.d	$a0, $a3, $a0, 1
	ldx.d	$a0, $a0, $fp
	addi.w	$a5, $s0, 4
	ldptr.d	$a6, $a1, 6712
	slli.d	$a5, $a5, 2
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a6, 0
	vilvl.h	$vr1, $vr2, $vr1
	ldptr.d	$a0, $a2, 6712
	vsub.w	$vr1, $vr0, $vr1
	ld.d	$a6, $a4, 16
	vstx	$vr1, $s3, $a5
	vinsgr2vr.d	$vr1, $a0, 0
	alsl.d	$a0, $s0, $s3, 2
	alsl.d	$a6, $a3, $a6, 1
	ldx.d	$a6, $a6, $fp
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $s4, $a5
	vinsgr2vr.d	$vr0, $a6, 0
	ldptr.d	$a5, $a1, 6744
	addi.w	$a6, $s0, 8
	slli.d	$a6, $a6, 2
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a5, 0
	ldptr.d	$a5, $a2, 6744
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr1, $vr0, $vr1
	vstx	$vr1, $s3, $a6
	vinsgr2vr.d	$vr1, $a5, 0
	ld.d	$a4, $a4, 24
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $s4, $a6
	alsl.d	$a3, $a3, $a4, 1
	ldx.d	$a3, $a3, $fp
	addi.w	$a4, $s0, 12
	ldptr.d	$a1, $a1, 6776
	slli.d	$a4, $a4, 2
	vinsgr2vr.d	$vr0, $a3, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	ldptr.d	$a1, $a2, 6776
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr1, $vr0, $vr1
	vstx	$vr1, $s3, $a4
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $s4, $a4
	addi.w	$s0, $s0, 16
	pcaddu18i	$ra, %call36(distortion4x4)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	move	$a2, $s7
	add.w	$s6, $a0, $s6
	addi.d	$s8, $s8, 4
	addi.d	$fp, $fp, 8
	bltu	$s8, $a1, .LBB26_4
# %bb.5:                                #   in Loop: Header=BB26_3 Depth=2
	addi.d	$s1, $s1, 4
	addi.d	$s5, $s5, 128
	addi.d	$s2, $s2, 128
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bltu	$s1, $a0, .LBB26_3
# %bb.6:                                #   in Loop: Header=BB26_2 Depth=1
	pcalau12i	$a0, %pc_hi20(diff8x8)
	addi.d	$a0, $a0, %pc_lo12(diff8x8)
	pcaddu18i	$ra, %call36(distortion8x8)
	jirl	$ra, $ra, 0
	move	$a2, $s7
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a5, $a5, 1
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	xori	$a4, $a4, 1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a3, $a3, 4
	ori	$a1, $zero, 4
	bne	$a5, $a1, .LBB26_2
# %bb.7:
	slt	$a0, $a0, $s6
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
.LBB26_8:
	ret
.Lfunc_end26:
	.size	GetBestTransformP8x8, .Lfunc_end26-GetBestTransformP8x8
                                        # -- End function
	.globl	set_mbaff_parameters            # -- Begin function set_mbaff_parameters
	.p2align	5
	.type	set_mbaff_parameters,@function
set_mbaff_parameters:                   # @set_mbaff_parameters
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
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$fp, $a0, %got_pc_lo12(img)
	ld.d	$a0, $fp, 0
	ldptr.d	$a1, $a0, 14224
	ld.w	$a2, $a0, 12
	pcalau12i	$a3, %pc_hi20(best_mode)
	ld.hu	$s5, $a3, %pc_lo12(best_mode)
	ld.w	$s3, $a0, 20
	ld.d	$s0, $a0, 128
	ori	$a0, $zero, 8
	pcalau12i	$s1, %pc_hi20(rdopt)
	pcalau12i	$a3, %got_pc_hi20(enc_picture)
	ld.d	$s4, $a3, %got_pc_lo12(enc_picture)
	move	$a3, $zero
	ori	$a4, $zero, 16
	.p2align	4, , 16
.LBB27_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $fp, 0
	ld.d	$a6, $s4, 0
	ld.w	$a7, $a5, 180
	ldptr.d	$a6, $a6, 6440
	add.d	$a7, $a3, $a7
	slli.d	$a7, $a7, 3
	ld.w	$a5, $a5, 176
	ldx.d	$a6, $a6, $a7
	ld.d	$a7, $s1, %pc_lo12(rdopt)
	slli.d	$t0, $a5, 1
	vldx	$vr0, $a6, $t0
	alsl.d	$a5, $a5, $a6, 1
	vstx	$vr0, $a7, $a0
	vld	$vr0, $a5, 16
	add.d	$a5, $a7, $a0
	vst	$vr0, $a5, 16
	addi.d	$a3, $a3, 1
	addi.d	$a0, $a0, 32
	bne	$a3, $a4, .LBB27_1
# %bb.2:
	ld.d	$a0, $fp, 0
	ldptr.w	$a3, $a0, 15536
	ori	$a4, $zero, 536
	mul.d	$a2, $a2, $a4
	add.d	$s2, $a1, $a2
	ext.w.h	$s6, $s5
	beqz	$a3, .LBB27_6
# %bb.3:                                # %.preheader66
	ldptr.w	$a1, $a0, 15548
	blez	$a1, .LBB27_6
# %bb.4:                                # %.lr.ph.preheader
	move	$s7, $zero
	move	$s8, $zero
	.p2align	4, , 16
.LBB27_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 0
	ldptr.d	$a1, $a1, 6472
	ld.w	$a2, $a0, 188
	ld.d	$a1, $a1, 0
	ld.d	$a3, $s1, %pc_lo12(rdopt)
	add.d	$a2, $s8, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ld.w	$a2, $a0, 184
	ldptr.w	$a4, $a0, 15544
	add.d	$a0, $a3, $s7
	addi.d	$a0, $a0, 520
	alsl.d	$a1, $a2, $a1, 1
	slli.d	$a2, $a4, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	ldptr.d	$a0, $a0, 6472
	ld.w	$a2, $a1, 188
	ld.d	$a0, $a0, 8
	ld.d	$a3, $s1, %pc_lo12(rdopt)
	add.d	$a2, $s8, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a0, $a2
	ld.w	$a4, $a1, 184
	ldptr.w	$a5, $a1, 15544
	add.d	$a0, $a3, $s7
	addi.d	$a0, $a0, 1032
	alsl.d	$a1, $a4, $a2, 1
	slli.d	$a2, $a5, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ldptr.w	$a1, $a0, 15548
	addi.d	$s8, $s8, 1
	addi.d	$s7, $s7, 32
	blt	$s8, $a1, .LBB27_5
.LBB27_6:                               # %.loopexit67
	ld.d	$a1, $s1, %pc_lo12(rdopt)
	lu12i.w	$a2, 3
	ori	$a3, $a2, 2956
	ldx.w	$a3, $a0, $a3
	st.w	$s6, $a1, 1656
	st.w	$a3, $a1, 1712
	ld.w	$a3, $s2, 364
	ld.d	$a4, $s2, 368
	ld.w	$a5, $s2, 72
	ld.w	$a6, $s2, 472
	st.w	$a3, $a1, 1640
	st.d	$a4, $a1, 1648
	st.w	$a5, $a1, 1560
	st.w	$a6, $a1, 1720
	bnez	$a5, .LBB27_9
# %bb.7:                                # %.loopexit67
	beqz	$s5, .LBB27_9
# %bb.8:
	st.w	$zero, $a1, 1656
.LBB27_9:
	ldptr.w	$a3, $a0, 15528
	addi.w	$a4, $zero, -3
	blt	$a3, $a4, .LBB27_13
# %bb.10:                               # %.preheader65.preheader
	move	$s5, $zero
	addi.w	$s6, $zero, -1
	ori	$s7, $a2, 3240
	.p2align	4, , 16
.LBB27_11:                              # %.preheader65
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, %pc_lo12(rdopt)
	ld.d	$a1, $a1, 1544
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a1, $a1, $s5
	ldx.d	$a0, $a0, $s5
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(rdopt)
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a0, 1544
	ldptr.d	$a1, $a1, 14160
	ldx.d	$a0, $a0, $s5
	ldx.d	$a1, $a1, $s5
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(rdopt)
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a0, 1544
	ldptr.d	$a1, $a1, 14160
	ldx.d	$a0, $a0, $s5
	ldx.d	$a1, $a1, $s5
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(rdopt)
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a0, 1544
	ldptr.d	$a1, $a1, 14160
	ldx.d	$a0, $a0, $s5
	ldx.d	$a1, $a1, $s5
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(rdopt)
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a0, 1544
	ldptr.d	$a1, $a1, 14160
	ldx.d	$a0, $a0, $s5
	ldx.d	$a1, $a1, $s5
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a1, 16
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(rdopt)
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a0, 1544
	ldptr.d	$a1, $a1, 14160
	ldx.d	$a0, $a0, $s5
	ldx.d	$a1, $a1, $s5
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a1, 16
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(rdopt)
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a0, 1544
	ldptr.d	$a1, $a1, 14160
	ldx.d	$a0, $a0, $s5
	ldx.d	$a1, $a1, $s5
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, 24
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(rdopt)
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a0, 1544
	ldptr.d	$a1, $a1, 14160
	ldx.d	$a0, $a0, $s5
	ldx.d	$a1, $a1, $s5
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, 24
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ldx.w	$a1, $a0, $s7
	addi.w	$a1, $a1, 3
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	blt	$s6, $a1, .LBB27_11
# %bb.12:                               # %.preheader63.loopexit
	ld.d	$a1, $s1, %pc_lo12(rdopt)
.LBB27_13:                              # %.preheader63
	ld.d	$a1, $a1, 1552
	ldptr.d	$a0, $a0, 14168
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(rdopt)
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a0, 1552
	ldptr.d	$a1, $a1, 14168
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(rdopt)
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a0, 1552
	ldptr.d	$a1, $a1, 14168
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(rdopt)
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a0, 1552
	ldptr.d	$a1, $a1, 14168
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(rdopt)
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a0, 1552
	ldptr.d	$a1, $a1, 14168
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a1, 16
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(rdopt)
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a0, 1552
	ldptr.d	$a1, $a1, 14168
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a1, 16
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(rdopt)
	vld	$vr0, $s2, 376
	vst	$vr0, $a1, 1568
	vld	$vr0, $s2, 392
	ld.d	$a2, $s4, 0
	vst	$vr0, $a1, 1584
	ld.d	$a0, $fp, 0
	ldptr.d	$a3, $a2, 6488
	ld.w	$a4, $a0, 172
	ld.d	$a3, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $a0, 168
	ldx.w	$a3, $a3, $a4
	st.w	$a3, $a1, 1680
	ldptr.d	$a4, $a2, 6488
	ld.w	$a3, $a0, 168
	ori	$a5, $zero, 1
	bne	$s3, $a5, .LBB27_15
# %bb.14:                               # %.preheader.preheader
	ld.w	$a5, $a0, 172
	ld.d	$a4, $a4, 8
	slli.d	$a5, $a5, 3
	ldx.d	$a4, $a4, $a5
	ldx.w	$a3, $a4, $a3
	st.w	$a3, $a1, 1696
	ldptr.d	$a3, $a2, 6488
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a0, 172
	alsl.d	$a3, $a4, $a3, 3
	ld.d	$a3, $a3, 8
	ld.w	$a4, $a0, 168
	ldx.w	$a3, $a3, $a4
	st.w	$a3, $a1, 1684
	ldptr.d	$a3, $a2, 6488
	ld.d	$a3, $a3, 8
	ld.w	$a4, $a0, 172
	alsl.d	$a3, $a4, $a3, 3
	ld.d	$a3, $a3, 8
	ld.w	$a4, $a0, 168
	ldx.w	$a3, $a3, $a4
	st.w	$a3, $a1, 1700
	ldptr.d	$a3, $a2, 6488
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a0, 172
	alsl.d	$a3, $a4, $a3, 3
	ld.d	$a3, $a3, 16
	ld.w	$a4, $a0, 168
	ldx.w	$a3, $a3, $a4
	st.w	$a3, $a1, 1688
	ldptr.d	$a3, $a2, 6488
	ld.d	$a3, $a3, 8
	ld.w	$a4, $a0, 172
	alsl.d	$a3, $a4, $a3, 3
	ld.d	$a3, $a3, 16
	ld.w	$a4, $a0, 168
	ldx.w	$a3, $a3, $a4
	st.w	$a3, $a1, 1704
	ldptr.d	$a3, $a2, 6488
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a0, 172
	alsl.d	$a3, $a4, $a3, 3
	ld.d	$a3, $a3, 24
	ld.w	$a4, $a0, 168
	ldx.w	$a3, $a3, $a4
	st.w	$a3, $a1, 1692
	ldptr.d	$a2, $a2, 6488
	ld.d	$a2, $a2, 8
	ld.w	$a3, $a0, 172
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$a2, $a2, 24
	ld.w	$a0, $a0, 168
	ldx.w	$a0, $a2, $a0
	st.w	$a0, $a1, 1708
	ld.h	$a2, $s2, 480
	ld.d	$a1, $s1, %pc_lo12(rdopt)
	ld.d	$a0, $fp, 0
	st.h	$a2, $a1, 1564
	b	.LBB27_16
.LBB27_15:                              # %.preheader61.preheader
	ld.d	$a4, $a4, 0
	ld.w	$a5, $a0, 172
	alsl.d	$a4, $a5, $a4, 3
	ld.d	$a4, $a4, 8
	ldx.w	$a3, $a4, $a3
	st.w	$a3, $a1, 1684
	ldptr.d	$a3, $a2, 6488
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a0, 172
	alsl.d	$a3, $a4, $a3, 3
	ld.d	$a3, $a3, 16
	ld.w	$a4, $a0, 168
	ldx.w	$a3, $a3, $a4
	st.w	$a3, $a1, 1688
	ldptr.d	$a2, $a2, 6488
	ld.d	$a2, $a2, 0
	ld.w	$a3, $a0, 172
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$a2, $a2, 24
	ld.w	$a3, $a0, 168
	ldx.w	$a2, $a2, $a3
	st.w	$a2, $a1, 1692
.LBB27_16:                              # %.lr.ph78.preheader
	vld	$vr0, $s2, 332
	vst	$vr0, $a1, 1608
	vld	$vr0, $s2, 348
	vst	$vr0, $a1, 1624
	ld.w	$a2, $a0, 172
	addi.d	$a1, $a2, -1
	slli.d	$a2, $a2, 3
	.p2align	4, , 16
.LBB27_17:                              # %.lr.ph78
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s1, %pc_lo12(rdopt)
	ld.d	$a3, $a3, 1600
	ld.w	$a0, $a0, 168
	ldx.d	$a4, $s0, $a2
	ldx.d	$a3, $a3, $a2
	ldx.w	$a4, $a4, $a0
	stx.w	$a4, $a3, $a0
	ld.d	$a0, $fp, 0
	ld.w	$a3, $a0, 172
	addi.w	$a3, $a3, 3
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	blt	$a1, $a3, .LBB27_17
# %bb.18:                               # %._crit_edge
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
.Lfunc_end27:
	.size	set_mbaff_parameters, .Lfunc_end27-set_mbaff_parameters
                                        # -- End function
	.globl	store_coding_state_cs_cm        # -- Begin function store_coding_state_cs_cm
	.p2align	5
	.type	store_coding_state_cs_cm,@function
store_coding_state_cs_cm:               # @store_coding_state_cs_cm
# %bb.0:
	pcalau12i	$a0, %pc_hi20(cs_cm)
	ld.d	$a0, $a0, %pc_lo12(cs_cm)
	pcaddu18i	$t8, %call36(store_coding_state)
	jr	$t8
.Lfunc_end28:
	.size	store_coding_state_cs_cm, .Lfunc_end28-store_coding_state_cs_cm
                                        # -- End function
	.globl	reset_coding_state_cs_cm        # -- Begin function reset_coding_state_cs_cm
	.p2align	5
	.type	reset_coding_state_cs_cm,@function
reset_coding_state_cs_cm:               # @reset_coding_state_cs_cm
# %bb.0:
	pcalau12i	$a0, %pc_hi20(cs_cm)
	ld.d	$a0, $a0, %pc_lo12(cs_cm)
	pcaddu18i	$t8, %call36(reset_coding_state)
	jr	$t8
.Lfunc_end29:
	.size	reset_coding_state_cs_cm, .Lfunc_end29-reset_coding_state_cs_cm
                                        # -- End function
	.globl	assign_enc_picture_params       # -- Begin function assign_enc_picture_params
	.p2align	5
	.type	assign_enc_picture_params,@function
assign_enc_picture_params:              # @assign_enc_picture_params
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
	ori	$a7, $zero, 1
	beq	$a0, $a7, .LBB30_14
# %bb.1:
	ori	$a7, $zero, 2
	bne	$a0, $a7, .LBB30_18
# %bb.2:                                # %.preheader307
	slli.w	$a0, $a2, 1
	ori	$a2, $zero, 1
	pcalau12i	$a7, %got_pc_hi20(img)
	ld.d	$a7, $a7, %got_pc_lo12(img)
	pcalau12i	$t0, %got_pc_hi20(enc_picture)
	ld.d	$t0, $t0, %got_pc_lo12(enc_picture)
	move	$t8, $zero
	ori	$t1, $zero, 255
	addi.w	$t2, $zero, -1
	ori	$t3, $zero, 32
	slli.d	$t4, $a5, 3
	slli.d	$t5, $a3, 8
	alsl.d	$a3, $a3, $t5, 3
	ori	$t5, $zero, 1
	b	.LBB30_4
	.p2align	4, , 16
.LBB30_3:                               #   in Loop: Header=BB30_4 Depth=1
	andi	$t6, $t5, 1
	ori	$t8, $zero, 1
	move	$t5, $zero
	beqz	$t6, .LBB30_43
.LBB30_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_8 Depth 2
	ld.d	$t6, $a7, 0
	ld.w	$fp, $t6, 172
	move	$t6, $zero
	move	$t7, $zero
	or	$s0, $a0, $t8
	add.w	$fp, $s0, $fp
	or	$s0, $t8, $a0
	slli.d	$t8, $fp, 3
	slli.d	$fp, $s0, 3
	b	.LBB30_8
.LBB30_5:                               #   in Loop: Header=BB30_8 Depth=2
	ldptr.d	$s2, $s2, 6488
	ld.d	$s2, $s2, 8
	ldx.d	$s2, $s2, $t8
	stx.b	$t1, $s2, $s1
	ld.d	$s1, $t0, 0
	ldptr.d	$s2, $s1, 6512
	ldptr.d	$s1, $s1, 6496
	ld.d	$s2, $s2, 8
	ld.d	$s1, $s1, 8
	ldx.d	$s2, $s2, $t8
	ldx.d	$s3, $s1, $t8
	ldx.d	$s1, $s2, $s0
	move	$s2, $zero
	stx.d	$t2, $s3, $s0
	st.h	$zero, $s1, 0
.LBB30_6:                               # %.sink.split
                                        #   in Loop: Header=BB30_8 Depth=2
	st.h	$s2, $s1, 2
.LBB30_7:                               #   in Loop: Header=BB30_8 Depth=2
	addi.d	$t6, $t6, 8
	addi.d	$t7, $t7, 1
	beq	$t6, $t3, .LBB30_3
.LBB30_8:                               #   Parent Loop BB30_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $a7, 0
	ld.w	$s0, $s2, 168
	add.w	$s1, $t7, $s0
	slli.d	$s0, $s1, 3
	bne	$a1, $a2, .LBB30_10
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB30_8 Depth=2
	ld.d	$s2, $t0, 0
	ldptr.d	$s2, $s2, 6488
	ld.d	$s2, $s2, 0
	ldx.d	$s2, $s2, $t8
	stx.b	$t1, $s2, $s1
	ld.d	$s2, $t0, 0
	ldptr.d	$s3, $s2, 6512
	ldptr.d	$s4, $s2, 6496
	ld.d	$s3, $s3, 0
	ld.d	$s4, $s4, 0
	ldx.d	$s3, $s3, $t8
	ldx.d	$s4, $s4, $t8
	ldx.d	$s3, $s3, $s0
	stx.d	$t2, $s4, $s0
	st.w	$zero, $s3, 0
	bnez	$a6, .LBB30_12
	b	.LBB30_7
	.p2align	4, , 16
.LBB30_10:                              #   in Loop: Header=BB30_8 Depth=2
	ldptr.d	$s2, $s2, 14384
	ldx.d	$s2, $s2, $fp
	ld.d	$s3, $t0, 0
	ldx.d	$s2, $s2, $t6
	ldptr.d	$s3, $s3, 6488
	ld.d	$s2, $s2, 0
	ld.d	$s3, $s3, 0
	slli.d	$s4, $a4, 3
	ldx.d	$s2, $s2, $s4
	ldx.d	$s3, $s3, $t8
	ld.d	$s4, $s2, 16
	stx.b	$a4, $s3, $s1
	ld.d	$s2, $t0, 0
	ldptr.d	$s3, $s2, 6512
	ld.d	$s3, $s3, 0
	ldx.d	$s3, $s3, $t8
	ldptr.d	$s5, $s2, 6496
	ld.h	$s6, $s4, 0
	ldx.d	$s3, $s3, $s0
	ld.d	$s5, $s5, 0
	st.h	$s6, $s3, 0
	add.d	$s6, $s2, $a3
	alsl.d	$s6, $a4, $s6, 3
	ld.d	$s6, $s6, 24
	ldx.d	$s5, $s5, $t8
	ld.h	$s4, $s4, 2
	stx.d	$s6, $s5, $s0
	st.h	$s4, $s3, 2
	beqz	$a6, .LBB30_7
# %bb.11:                               #   in Loop: Header=BB30_8 Depth=2
	beqz	$a1, .LBB30_5
.LBB30_12:                              # %.thread293
                                        #   in Loop: Header=BB30_8 Depth=2
	ldptr.d	$s2, $s2, 6488
	ld.d	$s2, $s2, 8
	ldx.d	$s2, $s2, $t8
	stx.b	$a5, $s2, $s1
	bltz	$a5, .LBB30_7
# %bb.13:                               #   in Loop: Header=BB30_8 Depth=2
	ld.d	$s1, $a7, 0
	ldptr.d	$s1, $s1, 14384
	ldx.d	$s1, $s1, $fp
	ldx.d	$s1, $s1, $t6
	ld.d	$s2, $t0, 0
	ld.d	$s1, $s1, 8
	ldptr.d	$s3, $s2, 6512
	ldx.d	$s1, $s1, $t4
	ld.d	$s3, $s3, 8
	ld.d	$s4, $s1, 16
	ldx.d	$s1, $s3, $t8
	ld.h	$s3, $s4, 0
	ldx.d	$s1, $s1, $s0
	ldptr.d	$s5, $s2, 6496
	st.h	$s3, $s1, 0
	ld.d	$s3, $s5, 8
	add.d	$s2, $s2, $a3
	alsl.d	$s2, $a5, $s2, 3
	ld.d	$s5, $s2, 288
	ldx.d	$s3, $s3, $t8
	ld.hu	$s2, $s4, 2
	stx.d	$s5, $s3, $s0
	b	.LBB30_6
.LBB30_14:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$ra, $a0, %got_pc_lo12(img)
	ld.d	$a0, $ra, 0
	st.d	$ra, $sp, 64                    # 8-byte Folded Spill
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	bne	$a1, $a7, .LBB30_30
# %bb.15:
	ld.w	$a1, $a0, 172
	andi	$a3, $a2, 2
	add.w	$a4, $a1, $a3
	srli.d	$a5, $a2, 1
	ori	$s5, $zero, 4
	bstrins.d	$s5, $a5, 1, 1
	add.w	$a5, $s5, $a1
	bge	$a4, $a5, .LBB30_35
# %bb.16:                               # %.lr.ph
	slli.d	$a4, $a2, 1
	andi	$s6, $a4, 2
	slli.d	$a4, $a2, 4
	andi	$s7, $a4, 16
	andi	$a4, $a2, 1
	addi.w	$a5, $zero, -2
	maskeqz	$s8, $a5, $a4
	addi.d	$s0, $s6, 3
	add.d	$s4, $a3, $a1
	pcalau12i	$a3, %got_pc_hi20(enc_picture)
	ld.d	$s1, $a3, %got_pc_lo12(enc_picture)
	ld.d	$fp, $s1, 0
	slli.d	$a2, $a2, 3
	andi	$a2, $a2, 16
	alsl.d	$s2, $a1, $a2, 3
	addi.w	$s3, $zero, -1
	lu32i.d	$s3, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB30_17:                              # =>This Inner Loop Header: Depth=1
	ldptr.d	$a1, $fp, 6488
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a0, 168
	ldx.d	$a0, $a1, $s2
	add.w	$a1, $a2, $s6
	stx.w	$s3, $a0, $a1
	ld.d	$a0, $s1, 0
	ldptr.d	$a0, $a0, 6512
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s2
	slli.d	$a3, $a1, 3
	ldx.d	$a0, $a0, $a3
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	ld.d	$fp, $s1, 0
	ldptr.d	$a0, $fp, 6496
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s2
	add.d	$a0, $a0, $s7
	alsl.d	$a0, $a2, $a0, 3
	add.w	$a3, $s0, $a2
	slt	$a4, $a1, $a3
	masknez	$a1, $a1, $a4
	maskeqz	$a3, $a3, $a4
	or	$a1, $a3, $a1
	add.d	$a1, $s8, $a1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a1, 8
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $ra, 0
	ld.w	$a1, $a0, 172
	addi.d	$s4, $s4, 1
	add.w	$a1, $s5, $a1
	addi.d	$s2, $s2, 8
	blt	$s4, $a1, .LBB30_17
	b	.LBB30_35
.LBB30_18:                              # %.preheader
	slli.w	$a2, $a2, 1
	pcalau12i	$a7, %got_pc_hi20(img)
	ld.d	$a7, $a7, %got_pc_lo12(img)
	ori	$t0, $zero, 1
	pcalau12i	$t1, %got_pc_hi20(enc_picture)
	ld.d	$t1, $t1, %got_pc_lo12(enc_picture)
	move	$t2, $zero
	ori	$t3, $zero, 255
	addi.w	$t4, $zero, -1
	ori	$t5, $zero, 4
	slli.d	$t6, $a2, 3
	slli.d	$t7, $a5, 3
	slli.d	$a0, $a0, 3
	slli.d	$t8, $a3, 8
	alsl.d	$a3, $a3, $t8, 3
	slli.d	$t8, $a4, 3
	b	.LBB30_20
	.p2align	4, , 16
.LBB30_19:                              #   in Loop: Header=BB30_20 Depth=1
	addi.d	$t2, $t2, 1
	beq	$t2, $t5, .LBB30_43
.LBB30_20:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_24 Depth 2
	ld.d	$fp, $a7, 0
	ld.w	$fp, $fp, 172
	move	$s3, $zero
	add.w	$fp, $fp, $t2
	slli.d	$fp, $fp, 3
	slli.d	$s0, $t2, 3
	ori	$s1, $zero, 1
	b	.LBB30_24
.LBB30_21:                              #   in Loop: Header=BB30_24 Depth=2
	ldptr.d	$s3, $s5, 6488
	ld.d	$s3, $s3, 8
	ldx.d	$s3, $s3, $fp
	stx.b	$t3, $s3, $s4
	ld.d	$s3, $t1, 0
	ldptr.d	$s4, $s3, 6512
	ldptr.d	$s3, $s3, 6496
	ld.d	$s4, $s4, 8
	ld.d	$s3, $s3, 8
	ldx.d	$s4, $s4, $fp
	ldx.d	$s5, $s3, $fp
	ldx.d	$s3, $s4, $s2
	move	$s4, $zero
	stx.d	$t4, $s5, $s2
	st.h	$zero, $s3, 0
.LBB30_22:                              # %.sink.split411
                                        #   in Loop: Header=BB30_24 Depth=2
	st.h	$s4, $s3, 2
.LBB30_23:                              #   in Loop: Header=BB30_24 Depth=2
	andi	$s2, $s1, 1
	ori	$s3, $zero, 1
	move	$s1, $zero
	beqz	$s2, .LBB30_19
.LBB30_24:                              #   Parent Loop BB30_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $a7, 0
	ld.w	$s2, $s5, 168
	or	$s4, $a2, $s3
	add.w	$s4, $s4, $s2
	slli.d	$s2, $s4, 3
	bne	$a1, $t0, .LBB30_26
# %bb.25:                               # %.thread294
                                        #   in Loop: Header=BB30_24 Depth=2
	ld.d	$s5, $t1, 0
	ldptr.d	$s5, $s5, 6488
	ld.d	$s5, $s5, 0
	ldx.d	$s5, $s5, $fp
	stx.b	$t3, $s5, $s4
	ld.d	$s5, $t1, 0
	ldptr.d	$s6, $s5, 6512
	ldptr.d	$s7, $s5, 6496
	ld.d	$s6, $s6, 0
	ld.d	$s7, $s7, 0
	ldx.d	$s6, $s6, $fp
	ldx.d	$s7, $s7, $fp
	ldx.d	$s6, $s6, $s2
	stx.d	$t4, $s7, $s2
	st.w	$zero, $s6, 0
	bnez	$a6, .LBB30_28
	b	.LBB30_23
	.p2align	4, , 16
.LBB30_26:                              #   in Loop: Header=BB30_24 Depth=2
	ldptr.d	$s5, $s5, 14384
	ldx.d	$s5, $s5, $s0
	ld.d	$s6, $t1, 0
	alsl.d	$s5, $s3, $s5, 3
	ldx.d	$s5, $s5, $t6
	ldptr.d	$s6, $s6, 6488
	ld.d	$s5, $s5, 0
	ld.d	$s6, $s6, 0
	ldx.d	$s5, $s5, $t8
	ldx.d	$s6, $s6, $fp
	ldx.d	$s7, $s5, $a0
	stx.b	$a4, $s6, $s4
	ld.d	$s5, $t1, 0
	ldptr.d	$s6, $s5, 6512
	ld.d	$s6, $s6, 0
	ldx.d	$s6, $s6, $fp
	ldptr.d	$s8, $s5, 6496
	ld.h	$ra, $s7, 0
	ldx.d	$s6, $s6, $s2
	ld.d	$s8, $s8, 0
	st.h	$ra, $s6, 0
	add.d	$ra, $s5, $a3
	alsl.d	$ra, $a4, $ra, 3
	ld.d	$ra, $ra, 24
	ldx.d	$s8, $s8, $fp
	ld.h	$s7, $s7, 2
	stx.d	$ra, $s8, $s2
	st.h	$s7, $s6, 2
	beqz	$a6, .LBB30_23
# %bb.27:                               #   in Loop: Header=BB30_24 Depth=2
	beqz	$a1, .LBB30_21
.LBB30_28:                              # %.thread296
                                        #   in Loop: Header=BB30_24 Depth=2
	ldptr.d	$s5, $s5, 6488
	ld.d	$s5, $s5, 8
	ldx.d	$s5, $s5, $fp
	stx.b	$a5, $s5, $s4
	bltz	$a5, .LBB30_23
# %bb.29:                               #   in Loop: Header=BB30_24 Depth=2
	ld.d	$s4, $a7, 0
	ldptr.d	$s4, $s4, 14384
	ldx.d	$s4, $s4, $s0
	alsl.d	$s3, $s3, $s4, 3
	ldx.d	$s3, $s3, $t6
	ld.d	$s4, $t1, 0
	ld.d	$s3, $s3, 8
	ldptr.d	$s5, $s4, 6512
	ldx.d	$s3, $s3, $t7
	ld.d	$s5, $s5, 8
	ldx.d	$s6, $s3, $a0
	ldx.d	$s3, $s5, $fp
	ld.h	$s5, $s6, 0
	ldx.d	$s3, $s3, $s2
	ldptr.d	$s7, $s4, 6496
	st.h	$s5, $s3, 0
	ld.d	$s5, $s7, 8
	add.d	$s4, $s4, $a3
	alsl.d	$s4, $a5, $s4, 3
	ld.d	$s7, $s4, 288
	ldx.d	$s5, $s5, $fp
	ld.hu	$s4, $s6, 2
	stx.d	$s7, $s5, $s2
	b	.LBB30_22
.LBB30_30:
	lu12i.w	$t0, 3
	ori	$a5, $t0, 2122
	ldx.hu	$a6, $a0, $a5
	andi	$a1, $a2, 2
	slli.d	$a2, $a2, 1
	andi	$a2, $a2, 2
	beqz	$a6, .LBB30_33
# %bb.31:                               # %.preheader305
	pcalau12i	$a4, %got_pc_hi20(enc_picture)
	ld.d	$a4, $a4, %got_pc_lo12(enc_picture)
	move	$a6, $zero
	ld.d	$t2, $a4, 0
	slli.d	$a7, $a3, 8
	alsl.d	$a3, $a3, $a7, 3
	ori	$a7, $t0, 2112
	ori	$t0, $t0, 2104
	ori	$t1, $zero, 32
	.p2align	4, , 16
.LBB30_32:                              # =>This Inner Loop Header: Depth=1
	ldptr.d	$t2, $t2, 6488
	ld.w	$t3, $a0, 172
	ld.d	$t2, $t2, 0
	add.w	$t3, $a1, $t3
	ld.w	$a0, $a0, 168
	slli.d	$t3, $t3, 3
	ldx.d	$t2, $t2, $t3
	add.w	$t5, $a0, $a2
	stx.w	$zero, $t2, $t5
	ld.d	$a0, $ra, 0
	ldx.hu	$t2, $a0, $a5
	addi.d	$t2, $t2, -1
	sltui	$t2, $t2, 1
	masknez	$t4, $a7, $t2
	maskeqz	$t2, $t0, $t2
	or	$t2, $t2, $t4
	ldx.d	$t2, $a0, $t2
	ld.d	$t2, $t2, 0
	ldx.d	$t4, $t2, $a6
	ld.d	$t2, $a4, 0
	ld.d	$t4, $t4, 0
	ldptr.d	$t6, $t2, 6512
	ld.d	$t4, $t4, 0
	ld.d	$t6, $t6, 0
	ld.d	$t7, $t4, 8
	ldx.d	$t4, $t6, $t3
	slli.d	$t5, $t5, 3
	ld.h	$t6, $t7, 0
	ldx.d	$t8, $t4, $t5
	st.h	$t6, $t8, 0
	ld.h	$t6, $t7, 2
	st.h	$t6, $t8, 2
	ldx.hu	$t6, $a0, $a5
	addi.d	$t6, $t6, -1
	sltui	$t6, $t6, 1
	masknez	$t7, $a7, $t6
	maskeqz	$t6, $t0, $t6
	or	$t6, $t6, $t7
	ldx.d	$t6, $a0, $t6
	ld.d	$t6, $t6, 8
	ldx.d	$t6, $t6, $a6
	ld.d	$t6, $t6, 0
	ld.d	$t6, $t6, 0
	ld.d	$t6, $t6, 8
	addi.d	$t7, $t5, 8
	ld.h	$t8, $t6, 0
	ldx.d	$fp, $t4, $t7
	st.h	$t8, $fp, 0
	ld.h	$t6, $t6, 2
	st.h	$t6, $fp, 2
	ldx.hu	$t6, $a0, $a5
	addi.d	$t6, $t6, -1
	sltui	$t6, $t6, 1
	masknez	$t8, $a7, $t6
	maskeqz	$t6, $t0, $t6
	or	$t6, $t6, $t8
	ldx.d	$t6, $a0, $t6
	ld.d	$t6, $t6, 16
	ldx.d	$t6, $t6, $a6
	ld.d	$t6, $t6, 0
	ld.d	$t6, $t6, 0
	ld.d	$t6, $t6, 8
	addi.d	$t8, $t5, 16
	ld.h	$fp, $t6, 0
	ldx.d	$s0, $t4, $t8
	st.h	$fp, $s0, 0
	ld.h	$t6, $t6, 2
	st.h	$t6, $s0, 2
	ldx.hu	$t6, $a0, $a5
	addi.d	$t6, $t6, -1
	sltui	$t6, $t6, 1
	masknez	$fp, $a7, $t6
	maskeqz	$t6, $t0, $t6
	or	$t6, $t6, $fp
	ldx.d	$t6, $a0, $t6
	ld.d	$t6, $t6, 24
	ldx.d	$t6, $t6, $a6
	ld.d	$t6, $t6, 0
	ldptr.d	$fp, $t2, 6496
	ld.d	$t6, $t6, 0
	ld.d	$fp, $fp, 0
	add.d	$s0, $t2, $a3
	ld.d	$t6, $t6, 8
	ldx.d	$t3, $fp, $t3
	ld.d	$fp, $s0, 24
	addi.d	$s1, $t5, 24
	ld.h	$s2, $t6, 0
	ldx.d	$t4, $t4, $s1
	stx.d	$fp, $t3, $t5
	stx.d	$fp, $t3, $t7
	ld.d	$t5, $s0, 24
	st.h	$s2, $t4, 0
	ld.h	$t6, $t6, 2
	stx.d	$t5, $t3, $t8
	stx.d	$t5, $t3, $s1
	st.h	$t6, $t4, 2
	addi.d	$a6, $a6, 8
	addi.d	$a1, $a1, 1
	bne	$a6, $t1, .LBB30_32
	b	.LBB30_35
.LBB30_33:                              # %.preheader303
	pcalau12i	$a5, %got_pc_hi20(enc_picture)
	ld.d	$a5, $a5, %got_pc_lo12(enc_picture)
	move	$a6, $zero
	ld.d	$t2, $a5, 0
	andi	$a7, $a4, 255
	lu12i.w	$t0, 4112
	ori	$t0, $t0, 257
	mul.d	$a7, $a7, $t0
	slli.d	$t0, $a3, 8
	alsl.d	$a3, $a3, $t0, 3
	slli.d	$t0, $a4, 3
	ori	$t1, $zero, 32
	.p2align	4, , 16
.LBB30_34:                              # =>This Inner Loop Header: Depth=1
	ldptr.d	$t2, $t2, 6488
	ld.w	$t3, $a0, 172
	ld.d	$t2, $t2, 0
	add.w	$t3, $a1, $t3
	ld.w	$a0, $a0, 168
	slli.d	$t3, $t3, 3
	ldx.d	$t2, $t2, $t3
	add.w	$t5, $a0, $a2
	stx.w	$a7, $t2, $t5
	ld.d	$a0, $ra, 0
	ldptr.d	$t2, $a0, 14384
	ldx.d	$t4, $t2, $a6
	ld.d	$t6, $t4, 0
	ld.d	$t2, $a5, 0
	ld.d	$t6, $t6, 0
	ldptr.d	$t7, $t2, 6512
	ldx.d	$t6, $t6, $t0
	ld.d	$t7, $t7, 0
	ld.d	$t6, $t6, 8
	ld.d	$t8, $t4, 8
	ldx.d	$t7, $t7, $t3
	slli.d	$t5, $t5, 3
	ld.h	$fp, $t6, 0
	ld.d	$t8, $t8, 0
	ldx.d	$s0, $t7, $t5
	ldx.d	$t8, $t8, $t0
	st.h	$fp, $s0, 0
	ld.h	$t6, $t6, 2
	ld.d	$t8, $t8, 8
	ld.d	$fp, $t4, 16
	st.h	$t6, $s0, 2
	addi.d	$t6, $t5, 8
	ld.h	$s0, $t8, 0
	ld.d	$fp, $fp, 0
	ldx.d	$s1, $t7, $t6
	ldx.d	$fp, $fp, $t0
	st.h	$s0, $s1, 0
	ld.h	$t8, $t8, 2
	ld.d	$fp, $fp, 8
	st.h	$t8, $s1, 2
	addi.d	$t8, $t5, 16
	ld.h	$s0, $fp, 0
	ld.d	$t4, $t4, 24
	ldx.d	$s1, $t7, $t8
	ldptr.d	$s2, $t2, 6496
	ld.d	$t4, $t4, 0
	st.h	$s0, $s1, 0
	add.d	$s0, $t2, $a3
	ld.d	$s2, $s2, 0
	ldx.d	$t4, $t4, $t0
	alsl.d	$s0, $a4, $s0, 3
	ld.h	$fp, $fp, 2
	ldx.d	$t3, $s2, $t3
	ld.d	$t4, $t4, 8
	ld.d	$s2, $s0, 24
	st.h	$fp, $s1, 2
	addi.d	$fp, $t5, 24
	ld.h	$s1, $t4, 0
	ldx.d	$t7, $t7, $fp
	stx.d	$s2, $t3, $t5
	stx.d	$s2, $t3, $t6
	ld.d	$t5, $s0, 24
	st.h	$s1, $t7, 0
	ld.h	$t4, $t4, 2
	stx.d	$t5, $t3, $t8
	stx.d	$t5, $t3, $fp
	st.h	$t4, $t7, 2
	addi.d	$a6, $a6, 8
	addi.d	$a1, $a1, 1
	bne	$a6, $t1, .LBB30_34
.LBB30_35:                              # %.loopexit302
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	beqz	$a2, .LBB30_43
# %bb.36:
	beqz	$a1, .LBB30_40
# %bb.37:
	lu12i.w	$t0, 3
	ori	$a3, $t0, 2122
	ldx.hu	$a4, $a0, $a3
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	andi	$a1, $a2, 2
	slli.d	$a2, $a2, 1
	andi	$a2, $a2, 2
	beqz	$a4, .LBB30_44
# %bb.38:                               # %.preheader300
	pcalau12i	$a4, %got_pc_hi20(enc_picture)
	ld.d	$a4, $a4, %got_pc_lo12(enc_picture)
	move	$a5, $zero
	ld.d	$t2, $a4, 0
	ld.d	$a6, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a7, $a6, 8
	alsl.d	$a6, $a6, $a7, 3
	ori	$a7, $t0, 2112
	ori	$t0, $t0, 2104
	ori	$t1, $zero, 32
	.p2align	4, , 16
.LBB30_39:                              # =>This Inner Loop Header: Depth=1
	ldptr.d	$t2, $t2, 6488
	ld.w	$t3, $a0, 172
	ld.d	$t2, $t2, 8
	add.w	$t3, $a1, $t3
	ld.w	$a0, $a0, 168
	slli.d	$t3, $t3, 3
	ldx.d	$t2, $t2, $t3
	add.w	$t5, $a0, $a2
	stx.w	$zero, $t2, $t5
	ld.d	$a0, $ra, 0
	ldx.hu	$t2, $a0, $a3
	addi.d	$t2, $t2, -1
	sltui	$t2, $t2, 1
	masknez	$t4, $a7, $t2
	maskeqz	$t2, $t0, $t2
	or	$t2, $t2, $t4
	ldx.d	$t2, $a0, $t2
	ld.d	$t2, $t2, 0
	ldx.d	$t4, $t2, $a5
	ld.d	$t2, $a4, 0
	ld.d	$t4, $t4, 8
	ldptr.d	$t6, $t2, 6512
	ld.d	$t4, $t4, 0
	ld.d	$t6, $t6, 8
	ld.d	$t7, $t4, 8
	ldx.d	$t4, $t6, $t3
	slli.d	$t5, $t5, 3
	ld.h	$t6, $t7, 0
	ldx.d	$t8, $t4, $t5
	st.h	$t6, $t8, 0
	ld.h	$t6, $t7, 2
	st.h	$t6, $t8, 2
	ldx.hu	$t6, $a0, $a3
	addi.d	$t6, $t6, -1
	sltui	$t6, $t6, 1
	masknez	$t7, $a7, $t6
	maskeqz	$t6, $t0, $t6
	or	$t6, $t6, $t7
	ldx.d	$t6, $a0, $t6
	ld.d	$t6, $t6, 8
	ldx.d	$t6, $t6, $a5
	ld.d	$t6, $t6, 8
	ld.d	$t6, $t6, 0
	ld.d	$t6, $t6, 8
	addi.d	$t7, $t5, 8
	ld.h	$t8, $t6, 0
	ldx.d	$fp, $t4, $t7
	st.h	$t8, $fp, 0
	ld.h	$t6, $t6, 2
	st.h	$t6, $fp, 2
	ldx.hu	$t6, $a0, $a3
	addi.d	$t6, $t6, -1
	sltui	$t6, $t6, 1
	masknez	$t8, $a7, $t6
	maskeqz	$t6, $t0, $t6
	or	$t6, $t6, $t8
	ldx.d	$t6, $a0, $t6
	ld.d	$t6, $t6, 16
	ldx.d	$t6, $t6, $a5
	ld.d	$t6, $t6, 8
	ld.d	$t6, $t6, 0
	ld.d	$t6, $t6, 8
	addi.d	$t8, $t5, 16
	ld.h	$fp, $t6, 0
	ldx.d	$s0, $t4, $t8
	st.h	$fp, $s0, 0
	ld.h	$t6, $t6, 2
	st.h	$t6, $s0, 2
	ldx.hu	$t6, $a0, $a3
	addi.d	$t6, $t6, -1
	sltui	$t6, $t6, 1
	masknez	$fp, $a7, $t6
	maskeqz	$t6, $t0, $t6
	or	$t6, $t6, $fp
	ldx.d	$t6, $a0, $t6
	ld.d	$t6, $t6, 24
	ldx.d	$t6, $t6, $a5
	ld.d	$t6, $t6, 8
	ldptr.d	$fp, $t2, 6496
	ld.d	$t6, $t6, 0
	ld.d	$fp, $fp, 8
	add.d	$s0, $t2, $a6
	ld.d	$t6, $t6, 8
	ldx.d	$t3, $fp, $t3
	ld.d	$fp, $s0, 288
	addi.d	$s1, $t5, 24
	ld.h	$s2, $t6, 0
	ldx.d	$t4, $t4, $s1
	stx.d	$fp, $t3, $t5
	stx.d	$fp, $t3, $t7
	ld.d	$t5, $s0, 288
	st.h	$s2, $t4, 0
	ld.h	$t6, $t6, 2
	stx.d	$t5, $t3, $t8
	stx.d	$t5, $t3, $s1
	st.h	$t6, $t4, 2
	addi.d	$a5, $a5, 8
	addi.d	$a1, $a1, 1
	bne	$a5, $t1, .LBB30_39
	b	.LBB30_43
.LBB30_40:
	ld.w	$a1, $a0, 172
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	andi	$a2, $a4, 2
	add.w	$a5, $a1, $a2
	move	$a3, $a4
	srli.d	$a4, $a4, 1
	ori	$s0, $zero, 4
	bstrins.d	$s0, $a4, 1, 1
	add.w	$a4, $s0, $a1
	bge	$a5, $a4, .LBB30_43
# %bb.41:                               # %.lr.ph323
	slli.d	$a4, $a3, 1
	andi	$s1, $a4, 2
	slli.d	$a4, $a3, 4
	andi	$s2, $a4, 16
	andi	$a4, $a3, 1
	addi.w	$a5, $zero, -2
	maskeqz	$s3, $a5, $a4
	addi.d	$s4, $s1, 3
	add.d	$s5, $a2, $a1
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$s6, $a2, %got_pc_lo12(enc_picture)
	ld.d	$fp, $s6, 0
	slli.d	$a2, $a3, 3
	andi	$a2, $a2, 16
	alsl.d	$s7, $a1, $a2, 3
	addi.w	$s8, $zero, -1
	lu32i.d	$s8, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB30_42:                              # =>This Inner Loop Header: Depth=1
	ldptr.d	$a1, $fp, 6488
	ld.d	$a1, $a1, 8
	ld.w	$a2, $a0, 168
	ldx.d	$a0, $a1, $s7
	add.w	$a1, $a2, $s1
	stx.w	$s8, $a0, $a1
	ld.d	$a0, $s6, 0
	ldptr.d	$a0, $a0, 6512
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s7
	slli.d	$a3, $a1, 3
	ldx.d	$a0, $a0, $a3
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	ld.d	$fp, $s6, 0
	ldptr.d	$a0, $fp, 6496
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s7
	add.d	$a0, $a0, $s2
	alsl.d	$a0, $a2, $a0, 3
	add.w	$a3, $s4, $a2
	slt	$a4, $a1, $a3
	masknez	$a1, $a1, $a4
	maskeqz	$a3, $a3, $a4
	or	$a1, $a3, $a1
	add.d	$a1, $s3, $a1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a1, 8
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 172
	addi.d	$s5, $s5, 1
	add.w	$a1, $s0, $a1
	addi.d	$s7, $s7, 8
	blt	$s5, $a1, .LBB30_42
.LBB30_43:                              # %.loopexit
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
.LBB30_44:                              # %.preheader298
	pcalau12i	$a3, %got_pc_hi20(enc_picture)
	ld.d	$a3, $a3, %got_pc_lo12(enc_picture)
	move	$a4, $zero
	ld.d	$t1, $a3, 0
	andi	$a5, $s3, 255
	lu12i.w	$a6, 4112
	ori	$a6, $a6, 257
	mul.d	$a5, $a5, $a6
	ld.d	$a6, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a7, $a6, 8
	alsl.d	$a6, $a6, $a7, 3
	slli.d	$a7, $s3, 3
	ori	$t0, $zero, 32
	b	.LBB30_47
	.p2align	4, , 16
.LBB30_45:                              #   in Loop: Header=BB30_47 Depth=1
	ldptr.d	$t7, $a0, 14384
	ldx.d	$t7, $t7, $a4
	ld.d	$t8, $t7, 0
	ld.d	$t8, $t8, 8
	ldptr.d	$fp, $t1, 6512
	ldx.d	$t8, $t8, $a7
	ld.d	$fp, $fp, 8
	ld.d	$t8, $t8, 8
	ldx.d	$fp, $fp, $t2
	ld.d	$t7, $t7, 8
	ld.h	$s0, $t8, 0
	ldx.d	$s1, $fp, $t6
	ld.d	$t7, $t7, 8
	st.h	$s0, $s1, 0
	ldx.d	$t7, $t7, $a7
	ld.h	$t8, $t8, 2
	ldptr.d	$s0, $a0, 14384
	ld.d	$t7, $t7, 8
	st.h	$t8, $s1, 2
	ldx.d	$t8, $s0, $a4
	addi.d	$s0, $t6, 8
	ld.h	$s1, $t7, 0
	ldx.d	$fp, $fp, $s0
	ld.d	$t8, $t8, 16
	st.h	$s1, $fp, 0
	ld.d	$t8, $t8, 8
	ldptr.d	$s1, $t1, 6512
	ldptr.d	$s2, $a0, 14384
	ld.h	$t7, $t7, 2
	ldx.d	$t8, $t8, $a7
	ld.d	$s1, $s1, 8
	ldx.d	$s2, $s2, $a4
	st.h	$t7, $fp, 2
	ld.d	$t7, $t8, 8
	ldx.d	$t8, $s1, $t2
	ld.d	$fp, $s2, 24
	addi.d	$s1, $t6, 16
	ld.h	$s2, $t7, 0
	ldx.d	$t8, $t8, $s1
	ld.d	$fp, $fp, 8
	ldptr.d	$s4, $t1, 6512
	st.h	$s2, $t8, 0
	ldx.d	$fp, $fp, $a7
	ld.d	$s2, $s4, 8
	ld.h	$t7, $t7, 2
	ld.d	$fp, $fp, 8
	ldx.d	$t2, $s2, $t2
	st.h	$t7, $t8, 2
	addi.d	$t6, $t6, 24
	ld.h	$t7, $fp, 0
	ldx.d	$t2, $t2, $t6
	stx.d	$t5, $t3, $s0
	ld.d	$t4, $t4, 0
	st.h	$t7, $t2, 0
	ld.h	$t5, $fp, 2
	stx.d	$t4, $t3, $s1
	stx.d	$t4, $t3, $t6
	st.h	$t5, $t2, 2
.LBB30_46:                              #   in Loop: Header=BB30_47 Depth=1
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, 1
	beq	$a4, $t0, .LBB30_43
.LBB30_47:                              # =>This Inner Loop Header: Depth=1
	ldptr.d	$t1, $t1, 6488
	ld.w	$t2, $a0, 172
	ld.d	$t1, $t1, 8
	add.w	$t2, $a1, $t2
	ld.w	$a0, $a0, 168
	slli.d	$t2, $t2, 3
	ldx.d	$t1, $t1, $t2
	add.w	$t7, $a0, $a2
	stx.w	$a5, $t1, $t7
	ld.d	$t1, $a3, 0
	ldptr.d	$a0, $t1, 6496
	ld.d	$a0, $a0, 8
	add.d	$t3, $t1, $a6
	alsl.d	$t4, $s3, $t3, 3
	ldx.d	$t3, $a0, $t2
	ld.d	$t5, $t4, 288
	ld.d	$a0, $ra, 0
	addi.d	$t4, $t4, 288
	slli.d	$t6, $t7, 3
	stx.d	$t5, $t3, $t6
	bgez	$s3, .LBB30_45
# %bb.48:                               #   in Loop: Header=BB30_47 Depth=1
	alsl.d	$t2, $t7, $t3, 3
	st.d	$t5, $t2, 8
	ld.d	$t3, $t4, 0
	st.d	$t3, $t2, 16
	st.d	$t3, $t2, 24
	b	.LBB30_46
.Lfunc_end30:
	.size	assign_enc_picture_params, .Lfunc_end30-assign_enc_picture_params
                                        # -- End function
	.globl	update_refresh_map              # -- Begin function update_refresh_map
	.p2align	5
	.type	update_refresh_map,@function
update_refresh_map:                     # @update_refresh_map
# %bb.0:
	pcalau12i	$a3, %got_pc_hi20(input)
	ld.d	$a3, $a3, %got_pc_lo12(input)
	ld.d	$a3, $a3, 0
	ldptr.w	$a4, $a3, 4732
	ori	$a5, $zero, 2
	beq	$a4, $a5, .LBB31_4
# %bb.1:
	ori	$a5, $zero, 1
	bne	$a4, $a5, .LBB31_7
# %bb.2:
	ldptr.w	$a3, $a3, 4168
	blt	$a5, $a3, .LBB31_8
# %bb.3:
	pcalau12i	$a1, %pc_hi20(refresh_map)
	ld.d	$a2, $a1, %pc_lo12(refresh_map)
	sltu	$a0, $zero, $a0
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	ld.d	$a4, $a3, 0
	ld.w	$a5, $a4, 164
	slli.w	$a5, $a5, 1
	slli.d	$a5, $a5, 3
	ld.w	$a4, $a4, 160
	ldx.d	$a2, $a2, $a5
	slli.d	$a4, $a4, 1
	stx.b	$a0, $a2, $a4
	ld.d	$a2, $a3, 0
	ld.w	$a4, $a2, 164
	ld.d	$a5, $a1, %pc_lo12(refresh_map)
	slli.w	$a4, $a4, 1
	slli.d	$a4, $a4, 3
	ld.w	$a2, $a2, 160
	ldx.d	$a4, $a5, $a4
	slli.w	$a2, $a2, 1
	add.d	$a2, $a4, $a2
	st.b	$a0, $a2, 1
	ld.d	$a2, $a3, 0
	ld.w	$a3, $a2, 164
	ld.d	$a1, $a1, %pc_lo12(refresh_map)
	slli.w	$a3, $a3, 1
	alsl.d	$a1, $a3, $a1, 3
	ld.w	$a2, $a2, 160
	ld.d	$a1, $a1, 8
	slli.d	$a2, $a2, 1
	stx.b	$a0, $a1, $a2
	b	.LBB31_6
.LBB31_4:
	ld.w	$a0, $a2, 72
	pcalau12i	$a1, %pc_hi20(refresh_map)
	ld.d	$a3, $a1, %pc_lo12(refresh_map)
	addi.w	$a0, $a0, -9
	sltui	$a0, $a0, 2
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$a4, $a4, %got_pc_lo12(img)
	ld.d	$a5, $a4, 0
	ld.w	$a6, $a5, 164
	slli.w	$a6, $a6, 1
	slli.d	$a6, $a6, 3
	ld.w	$a5, $a5, 160
	ldx.d	$a3, $a3, $a6
	slli.d	$a5, $a5, 1
	stx.b	$a0, $a3, $a5
	ld.d	$a0, $a4, 0
	ld.w	$a3, $a0, 164
	ld.w	$a5, $a2, 72
	ld.d	$a6, $a1, %pc_lo12(refresh_map)
	slli.w	$a3, $a3, 1
	slli.d	$a3, $a3, 3
	ld.w	$a0, $a0, 160
	ldx.d	$a3, $a6, $a3
	addi.w	$a5, $a5, -9
	sltui	$a5, $a5, 2
	slli.w	$a0, $a0, 1
	add.d	$a0, $a3, $a0
	st.b	$a5, $a0, 1
	ld.d	$a0, $a4, 0
	ld.w	$a3, $a0, 164
	ld.d	$a1, $a1, %pc_lo12(refresh_map)
	ld.w	$a4, $a2, 72
	slli.w	$a3, $a3, 1
	alsl.d	$a1, $a3, $a1, 3
	ld.w	$a0, $a0, 160
	ld.d	$a1, $a1, 8
	addi.w	$a3, $a4, -9
	sltui	$a3, $a3, 2
	slli.d	$a0, $a0, 1
	stx.b	$a3, $a1, $a0
.LBB31_5:                               # %.sink.split
	ld.w	$a0, $a2, 72
	addi.w	$a0, $a0, -9
	sltui	$a0, $a0, 2
.LBB31_6:                               # %.sink.split
	pcalau12i	$a1, %pc_hi20(refresh_map)
	ld.d	$a1, $a1, %pc_lo12(refresh_map)
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $a2, 0
	ld.w	$a3, $a2, 164
	slli.w	$a3, $a3, 1
	alsl.d	$a1, $a3, $a1, 3
	ld.w	$a2, $a2, 160
	ld.d	$a1, $a1, 8
	slli.w	$a2, $a2, 1
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 1
.LBB31_7:
	ret
.LBB31_8:
	ori	$a0, $zero, 3
	bne	$a3, $a0, .LBB31_7
# %bb.9:
	beqz	$a1, .LBB31_11
# %bb.10:
	move	$a4, $zero
	b	.LBB31_12
.LBB31_11:
	ld.w	$a0, $a2, 72
	addi.w	$a0, $a0, -9
	sltui	$a4, $a0, 2
.LBB31_12:
	pcalau12i	$a0, %pc_hi20(refresh_map)
	ld.d	$a5, $a0, %pc_lo12(refresh_map)
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	ld.d	$a6, $a3, 0
	ld.w	$a7, $a6, 164
	slli.w	$a7, $a7, 1
	slli.d	$a7, $a7, 3
	ld.w	$a6, $a6, 160
	ldx.d	$a5, $a5, $a7
	slli.d	$a6, $a6, 1
	stx.b	$a4, $a5, $a6
	beqz	$a1, .LBB31_14
# %bb.13:
	move	$a4, $zero
	b	.LBB31_15
.LBB31_14:
	ld.w	$a4, $a2, 72
	addi.w	$a4, $a4, -9
	sltui	$a4, $a4, 2
.LBB31_15:
	ld.d	$a5, $a3, 0
	ld.w	$a6, $a5, 164
	ld.d	$a7, $a0, %pc_lo12(refresh_map)
	slli.w	$a6, $a6, 1
	slli.d	$a6, $a6, 3
	ld.w	$a5, $a5, 160
	ldx.d	$a6, $a7, $a6
	slli.w	$a5, $a5, 1
	add.d	$a5, $a6, $a5
	st.b	$a4, $a5, 1
	beqz	$a1, .LBB31_17
# %bb.16:
	move	$a4, $zero
	b	.LBB31_18
.LBB31_17:
	ld.w	$a4, $a2, 72
	addi.w	$a4, $a4, -9
	sltui	$a4, $a4, 2
.LBB31_18:
	ld.d	$a3, $a3, 0
	ld.w	$a5, $a3, 164
	ld.d	$a0, $a0, %pc_lo12(refresh_map)
	slli.w	$a5, $a5, 1
	alsl.d	$a0, $a5, $a0, 3
	ld.w	$a3, $a3, 160
	ld.d	$a0, $a0, 8
	slli.d	$a3, $a3, 1
	stx.b	$a4, $a0, $a3
	beqz	$a1, .LBB31_5
# %bb.19:
	move	$a0, $zero
	b	.LBB31_6
.Lfunc_end31:
	.size	update_refresh_map, .Lfunc_end31-update_refresh_map
                                        # -- End function
	.type	AdaptRndCrPos,@object           # @AdaptRndCrPos
	.section	.rodata,"a",@progbits
	.globl	AdaptRndCrPos
	.p2align	2, 0x0
AdaptRndCrPos:
	.word	4                               # 0x4
	.word	7                               # 0x7
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	1                               # 0x1
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
	.size	AdaptRndCrPos, 40

	.type	AdaptRndPos,@object             # @AdaptRndPos
	.globl	AdaptRndPos
	.p2align	2, 0x0
AdaptRndPos:
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	9                               # 0x9
	.word	12                              # 0xc
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.size	AdaptRndPos, 80

	.type	bestInterFAdjust4x4,@object     # @bestInterFAdjust4x4
	.bss
	.globl	bestInterFAdjust4x4
	.p2align	3, 0x0
bestInterFAdjust4x4:
	.dword	0
	.size	bestInterFAdjust4x4, 8

	.type	bestIntraFAdjust4x4,@object     # @bestIntraFAdjust4x4
	.globl	bestIntraFAdjust4x4
	.p2align	3, 0x0
bestIntraFAdjust4x4:
	.dword	0
	.size	bestIntraFAdjust4x4, 8

	.type	bestInterFAdjust8x8,@object     # @bestInterFAdjust8x8
	.globl	bestInterFAdjust8x8
	.p2align	3, 0x0
bestInterFAdjust8x8:
	.dword	0
	.size	bestInterFAdjust8x8, 8

	.type	bestIntraFAdjust8x8,@object     # @bestIntraFAdjust8x8
	.globl	bestIntraFAdjust8x8
	.p2align	3, 0x0
bestIntraFAdjust8x8:
	.dword	0
	.size	bestIntraFAdjust8x8, 8

	.type	bestInterFAdjust4x4Cr,@object   # @bestInterFAdjust4x4Cr
	.globl	bestInterFAdjust4x4Cr
	.p2align	3, 0x0
bestInterFAdjust4x4Cr:
	.dword	0
	.size	bestInterFAdjust4x4Cr, 8

	.type	bestIntraFAdjust4x4Cr,@object   # @bestIntraFAdjust4x4Cr
	.globl	bestIntraFAdjust4x4Cr
	.p2align	3, 0x0
bestIntraFAdjust4x4Cr:
	.dword	0
	.size	bestIntraFAdjust4x4Cr, 8

	.type	fadjust8x8,@object              # @fadjust8x8
	.globl	fadjust8x8
	.p2align	3, 0x0
fadjust8x8:
	.dword	0
	.size	fadjust8x8, 8

	.type	fadjust4x4,@object              # @fadjust4x4
	.globl	fadjust4x4
	.p2align	3, 0x0
fadjust4x4:
	.dword	0
	.size	fadjust4x4, 8

	.type	fadjust4x4Cr,@object            # @fadjust4x4Cr
	.globl	fadjust4x4Cr
	.p2align	3, 0x0
fadjust4x4Cr:
	.dword	0
	.size	fadjust4x4Cr, 8

	.type	fadjust8x8Cr,@object            # @fadjust8x8Cr
	.globl	fadjust8x8Cr
	.p2align	3, 0x0
fadjust8x8Cr:
	.dword	0
	.size	fadjust8x8Cr, 8

	.type	cofAC,@object                   # @cofAC
	.globl	cofAC
	.p2align	3, 0x0
cofAC:
	.dword	0
	.size	cofAC, 8

	.type	cofAC8x8,@object                # @cofAC8x8
	.globl	cofAC8x8
	.p2align	3, 0x0
cofAC8x8:
	.dword	0
	.size	cofAC8x8, 8

	.type	cofDC,@object                   # @cofDC
	.globl	cofDC
	.p2align	3, 0x0
cofDC:
	.dword	0
	.size	cofDC, 8

	.type	cofAC4x4,@object                # @cofAC4x4
	.globl	cofAC4x4
	.p2align	3, 0x0
cofAC4x4:
	.dword	0
	.size	cofAC4x4, 8

	.type	cofAC4x4intern,@object          # @cofAC4x4intern
	.globl	cofAC4x4intern
	.p2align	3, 0x0
cofAC4x4intern:
	.dword	0
	.size	cofAC4x4intern, 8

	.type	cs_mb,@object                   # @cs_mb
	.globl	cs_mb
	.p2align	3, 0x0
cs_mb:
	.dword	0
	.size	cs_mb, 8

	.type	cs_b8,@object                   # @cs_b8
	.globl	cs_b8
	.p2align	3, 0x0
cs_b8:
	.dword	0
	.size	cs_b8, 8

	.type	cs_cm,@object                   # @cs_cm
	.globl	cs_cm
	.p2align	3, 0x0
cs_cm:
	.dword	0
	.size	cs_cm, 8

	.type	cs_imb,@object                  # @cs_imb
	.globl	cs_imb
	.p2align	3, 0x0
cs_imb:
	.dword	0
	.size	cs_imb, 8

	.type	cs_ib8,@object                  # @cs_ib8
	.globl	cs_ib8
	.p2align	3, 0x0
cs_ib8:
	.dword	0
	.size	cs_ib8, 8

	.type	cs_ib4,@object                  # @cs_ib4
	.globl	cs_ib4
	.p2align	3, 0x0
cs_ib4:
	.dword	0
	.size	cs_ib4, 8

	.type	cs_pc,@object                   # @cs_pc
	.globl	cs_pc
	.p2align	3, 0x0
cs_pc:
	.dword	0
	.size	cs_pc, 8

	.type	cofAC_8x8ts,@object             # @cofAC_8x8ts
	.globl	cofAC_8x8ts
	.p2align	3, 0x0
cofAC_8x8ts:
	.dword	0
	.size	cofAC_8x8ts, 8

	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	mb16x16_cost,@object            # @mb16x16_cost
	.comm	mb16x16_cost,8,8
	.type	lambda_mf_factor,@object        # @lambda_mf_factor
	.comm	lambda_mf_factor,8,8
	.type	pixel_map,@object               # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object             # @refresh_map
	.comm	refresh_map,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	diff,@object                    # @diff
	.local	diff
	.comm	diff,64,16
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	cbp8x8,@object                  # @cbp8x8
	.comm	cbp8x8,4,4
	.type	best8x8pdir,@object             # @best8x8pdir
	.comm	best8x8pdir,60,1
	.type	best8x8mode,@object             # @best8x8mode
	.comm	best8x8mode,8,2
	.type	best8x8fwref,@object            # @best8x8fwref
	.comm	best8x8fwref,60,1
	.type	best8x8bwref,@object            # @best8x8bwref
	.comm	best8x8bwref,60,1
	.type	tr8x8,@object                   # @tr8x8
	.comm	tr8x8,8216,4
	.type	cnt_nonz8_8x8ts,@object         # @cnt_nonz8_8x8ts
	.comm	cnt_nonz8_8x8ts,4,4
	.type	cbp8_8x8ts,@object              # @cbp8_8x8ts
	.comm	cbp8_8x8ts,4,4
	.type	cbp_blk8_8x8ts,@object          # @cbp_blk8_8x8ts
	.comm	cbp_blk8_8x8ts,8,8
	.type	cnt_nonz_8x8,@object            # @cnt_nonz_8x8
	.comm	cnt_nonz_8x8,4,4
	.type	tr4x4,@object                   # @tr4x4
	.comm	tr4x4,8216,4
	.type	cbp_blk8x8,@object              # @cbp_blk8x8
	.comm	cbp_blk8x8,4,4
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"invalid direction mode"
	.size	.L.str.1, 23

	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	pred,@object                    # @pred
	.comm	pred,512,2
	.type	best_mode,@object               # @best_mode
	.comm	best_mode,2,2
	.type	best_c_imode,@object            # @best_c_imode
	.comm	best_c_imode,4,4
	.type	best_i16offset,@object          # @best_i16offset
	.comm	best_i16offset,4,4
	.type	bi_pred_me,@object              # @bi_pred_me
	.comm	bi_pred_me,2,2
	.type	b8mode,@object                  # @b8mode
	.comm	b8mode,16,4
	.type	b8pdir,@object                  # @b8pdir
	.comm	b8pdir,16,4
	.type	b4_intra_pred_modes,@object     # @b4_intra_pred_modes
	.comm	b4_intra_pred_modes,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	b4_ipredmode,@object            # @b4_ipredmode
	.comm	b4_ipredmode,16,1
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	rec_mbY,@object                 # @rec_mbY
	.comm	rec_mbY,512,2
	.type	lrec_rec,@object                # @lrec_rec
	.comm	lrec_rec,1024,4
	.type	rec_mbU,@object                 # @rec_mbU
	.comm	rec_mbU,512,2
	.type	rec_mbV,@object                 # @rec_mbV
	.comm	rec_mbV,512,2
	.type	lrec_rec_U,@object              # @lrec_rec_U
	.comm	lrec_rec_U,1024,4
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	lrec_rec_V,@object              # @lrec_rec_V
	.comm	lrec_rec_V,1024,4
	.type	cbp,@object                     # @cbp
	.comm	cbp,4,4
	.type	cbp_blk,@object                 # @cbp_blk
	.comm	cbp_blk,8,8
	.type	luma_transform_size_8x8_flag,@object # @luma_transform_size_8x8_flag
	.comm	luma_transform_size_8x8_flag,4,4
	.type	frefframe,@object               # @frefframe
	.comm	frefframe,16,1
	.type	brefframe,@object               # @brefframe
	.comm	brefframe,16,1
	.type	all_mv8x8,@object               # @all_mv8x8
	.comm	all_mv8x8,256,2
	.type	pred_mv8x8,@object              # @pred_mv8x8
	.comm	pred_mv8x8,256,2
	.type	diff4x4,@object                 # @diff4x4
	.local	diff4x4
	.comm	diff4x4,256,4
	.type	diff8x8,@object                 # @diff8x8
	.local	diff8x8
	.comm	diff8x8,256,4
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
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
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
	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
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
	.type	diffy,@object                   # @diffy
	.comm	diffy,1024,4
	.type	qp_mbaff,@object                # @qp_mbaff
	.comm	qp_mbaff,16,4
	.type	delta_qp_mbaff,@object          # @delta_qp_mbaff
	.comm	delta_qp_mbaff,16,4
	.type	generic_RC,@object              # @generic_RC
	.comm	generic_RC,8,8
	.type	generic_RC_init,@object         # @generic_RC_init
	.comm	generic_RC_init,8,8
	.type	generic_RC_best,@object         # @generic_RC_best
	.comm	generic_RC_best,8,8
	.type	cost8_8x8ts,@object             # @cost8_8x8ts
	.comm	cost8_8x8ts,4,4
	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Unsupported mode in SetModesAndRefframeForBlocks!"
	.size	.Lstr, 50

	.type	.Lswitch.table.init_rdopt,@object # @switch.table.init_rdopt
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.Lswitch.table.init_rdopt:
	.dword	encode_one_macroblock_low
	.dword	encode_one_macroblock_high
	.dword	encode_one_macroblock_highfast
	.dword	encode_one_macroblock_highloss
	.size	.Lswitch.table.init_rdopt, 32

	.type	.Lswitch.table.update_offset_params,@object # @switch.table.update_offset_params
	.p2align	3, 0x0
.Lswitch.table.update_offset_params:
	.dword	bestIntraFAdjust8x8
	.dword	bestIntraFAdjust8x8
	.dword	bestInterFAdjust8x8
	.dword	bestInterFAdjust8x8
	.dword	bestIntraFAdjust8x8
	.size	.Lswitch.table.update_offset_params, 40

	.type	.Lswitch.table.update_offset_params.1,@object # @switch.table.update_offset_params.1
	.p2align	3, 0x0
.Lswitch.table.update_offset_params.1:
	.dword	bestIntraFAdjust4x4
	.dword	bestIntraFAdjust4x4
	.dword	bestInterFAdjust4x4
	.dword	bestInterFAdjust4x4
	.dword	bestIntraFAdjust4x4
	.size	.Lswitch.table.update_offset_params.1, 40

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym encode_one_macroblock_low
	.addrsig_sym encode_one_macroblock_high
	.addrsig_sym encode_one_macroblock_highfast
	.addrsig_sym encode_one_macroblock_highloss
	.addrsig_sym bestInterFAdjust4x4
	.addrsig_sym bestIntraFAdjust4x4
	.addrsig_sym bestInterFAdjust8x8
	.addrsig_sym bestIntraFAdjust8x8
	.addrsig_sym bestInterFAdjust4x4Cr
	.addrsig_sym bestIntraFAdjust4x4Cr
	.addrsig_sym fadjust8x8
	.addrsig_sym fadjust4x4
	.addrsig_sym fadjust4x4Cr
	.addrsig_sym fadjust8x8Cr
	.addrsig_sym cofAC
	.addrsig_sym cofAC8x8
	.addrsig_sym cofDC
	.addrsig_sym cofAC4x4intern
	.addrsig_sym cofAC_8x8ts
	.addrsig_sym diff
	.addrsig_sym diff4x4
	.addrsig_sym diff8x8
