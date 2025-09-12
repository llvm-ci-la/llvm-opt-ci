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
	ldptr.w	$a0, $a0, 5652
	pcalau12i	$a2, %pc_hi20(encode_one_macroblock)
	st.d	$a1, $a2, %pc_lo12(encode_one_macroblock)
	bnez	$a0, .LBB1_5
	b	.LBB1_6
.LBB1_4:
	pcalau12i	$a1, %got_pc_hi20(encode_one_macroblock_high)
	ld.d	$a1, $a1, %got_pc_lo12(encode_one_macroblock_high)
	ldptr.w	$a0, $a0, 5652
	pcalau12i	$a2, %pc_hi20(encode_one_macroblock)
	st.d	$a1, $a2, %pc_lo12(encode_one_macroblock)
	beqz	$a0, .LBB1_6
.LBB1_5:
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
.LBB1_6:
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
	bne	$a1, $a3, .LBB1_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(mb16x16_cost)
	lu52i.d	$a1, $zero, 1032
	st.d	$a1, $a0, %pc_lo12(mb16x16_cost)
	pcalau12i	$a0, %pc_hi20(lambda_mf_factor)
	lu52i.d	$a1, $zero, 1023
	st.d	$a1, $a0, %pc_lo12(lambda_mf_factor)
.LBB1_8:
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
	addi.d	$sp, $sp, -80
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$s2, $a0, 0
	ld.w	$a1, $s2, 20
	ld.w	$a2, $s2, 68
	ori	$a3, $zero, 2
	bne	$a1, $a3, .LBB2_8
# %bb.1:                                # %.preheader41
	blez	$a2, .LBB2_18
# %bb.2:                                # %.preheader.lr.ph
	ld.w	$a1, $s2, 52
	blez	$a1, .LBB2_18
# %bb.3:                                # %.preheader.preheader
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(pixel_map)
	ori	$a3, $zero, 1
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_4:                                # %._crit_edge59
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$a4, $s2, 68
	addi.d	$a1, $a1, 1
	bge	$a1, $a4, .LBB2_18
.LBB2_5:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	ld.w	$a4, $s2, 52
	blez	$a4, .LBB2_4
# %bb.6:                                # %.lr.ph58.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a4, $zero
	slli.d	$a5, $a1, 3
	.p2align	4, , 16
.LBB2_7:                                # %.lr.ph58
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a2, %pc_lo12(pixel_map)
	ldx.d	$a6, $a6, $a5
	stx.b	$a3, $a6, $a4
	ld.d	$s2, $a0, 0
	ld.w	$a6, $s2, 52
	addi.d	$a4, $a4, 1
	blt	$a4, $a6, .LBB2_7
	b	.LBB2_4
.LBB2_8:                                # %.preheader49
	ori	$a1, $zero, 8
	blt	$a2, $a1, .LBB2_18
# %bb.9:                                # %.preheader48.preheader
	pcalau12i	$a2, %pc_hi20(refresh_map)
	pcalau12i	$a3, %pc_hi20(pixel_map)
	pcalau12i	$a4, %got_pc_hi20(input)
	ld.d	$a4, $a4, %got_pc_lo12(input)
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $zero
	ori	$t0, $zero, 64
	ori	$t1, $zero, 1
	b	.LBB2_11
	.p2align	4, , 16
.LBB2_10:                               # %._crit_edge
                                        #   in Loop: Header=BB2_11 Depth=1
	ld.w	$t2, $s2, 68
	addi.d	$a6, $a6, 1
	srai.d	$t2, $t2, 3
	addi.d	$a7, $a7, 8
	addi.d	$a5, $a5, 64
	bge	$a6, $t2, .LBB2_18
.LBB2_11:                               # %.preheader48
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
                                        #       Child Loop BB2_17 Depth 3
	ld.w	$t2, $s2, 52
	blt	$t2, $a1, .LBB2_10
# %bb.12:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB2_11 Depth=1
	move	$t2, $zero
	move	$t3, $zero
	addi.d	$t5, $a7, 1
	addi.d	$t6, $a7, 2
	addi.d	$t7, $a7, 3
	addi.d	$t8, $a7, 4
	addi.d	$fp, $a7, 5
	addi.d	$s0, $a7, 6
	addi.d	$s1, $a7, 7
	slli.d	$t4, $a6, 3
	slli.d	$t5, $t5, 3
	slli.d	$t6, $t6, 3
	slli.d	$t7, $t7, 3
	slli.d	$t8, $t8, 3
	slli.d	$fp, $fp, 3
	slli.d	$s0, $s0, 3
	slli.d	$s1, $s1, 3
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_13:                               # %.preheader43
                                        #   in Loop: Header=BB2_15 Depth=2
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	slli.d	$s3, $a7, 3
	ldx.d	$s2, $s2, $s3
	stx.b	$t1, $s2, $t3
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s3
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 1
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s3
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 2
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s3
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 3
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s3
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 4
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s3
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 5
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s3
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 6
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s3
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 7
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t5
	stx.b	$t1, $s2, $t3
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t5
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 1
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t5
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 2
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t5
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 3
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t5
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 4
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t5
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 5
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t5
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 6
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t5
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 7
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t6
	stx.b	$t1, $s2, $t3
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t6
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 1
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t6
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 2
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t6
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 3
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t6
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 4
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t6
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 5
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t6
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 6
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t6
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 7
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t7
	stx.b	$t1, $s2, $t3
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t7
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 1
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t7
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 2
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t7
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 3
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t7
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 4
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t7
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 5
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t7
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 6
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t7
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 7
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t8
	stx.b	$t1, $s2, $t3
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t8
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 1
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t8
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 2
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t8
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 3
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t8
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 4
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t8
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 5
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t8
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 6
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $t8
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 7
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $fp
	stx.b	$t1, $s2, $t3
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $fp
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 1
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $fp
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 2
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $fp
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 3
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $fp
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 4
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $fp
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 5
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $fp
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 6
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $fp
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 7
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s0
	stx.b	$t1, $s2, $t3
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s0
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 1
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s0
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 2
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s0
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 3
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s0
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 4
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s0
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 5
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s0
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 6
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s0
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 7
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s1
	stx.b	$t1, $s2, $t3
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s1
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 1
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s1
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 2
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s1
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 3
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s1
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 4
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s1
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 5
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s1
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 6
	ld.d	$s2, $a3, %pc_lo12(pixel_map)
	ldx.d	$s2, $s2, $s1
	add.d	$s2, $s2, $t3
	st.b	$t1, $s2, 7
.LBB2_14:                               # %.loopexit45
                                        #   in Loop: Header=BB2_15 Depth=2
	ld.d	$s2, $a0, 0
	ld.w	$s3, $s2, 52
	addi.d	$t2, $t2, 1
	srai.d	$s3, $s3, 3
	addi.d	$t3, $t3, 8
	bge	$t2, $s3, .LBB2_10
.LBB2_15:                               # %.lr.ph
                                        #   Parent Loop BB2_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_17 Depth 3
	ld.d	$s2, $a2, %pc_lo12(refresh_map)
	ldx.d	$s2, $s2, $t4
	ldx.bu	$s2, $s2, $t2
	bnez	$s2, .LBB2_13
# %bb.16:                               # %.preheader42.preheader
                                        #   in Loop: Header=BB2_15 Depth=2
	move	$s2, $zero
	.p2align	4, , 16
.LBB2_17:                               # %.preheader42
                                        #   Parent Loop BB2_11 Depth=1
                                        #     Parent Loop BB2_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s3, $a3, %pc_lo12(pixel_map)
	add.d	$s3, $s3, $a5
	ldx.d	$s3, $s3, $s2
	ld.d	$s4, $a4, 0
	ldx.bu	$s5, $s3, $t3
	ld.w	$s4, $s4, 32
	slt	$s6, $s5, $s4
	maskeqz	$s5, $s5, $s6
	masknez	$s4, $s4, $s6
	or	$s4, $s5, $s4
	addi.d	$s4, $s4, 1
	stx.b	$s4, $s3, $t3
	ld.d	$s3, $a3, %pc_lo12(pixel_map)
	add.d	$s3, $s3, $a5
	ldx.d	$s3, $s3, $s2
	ld.d	$s4, $a4, 0
	add.d	$s3, $s3, $t3
	ld.bu	$s5, $s3, 1
	ld.w	$s4, $s4, 32
	slt	$s6, $s5, $s4
	maskeqz	$s5, $s5, $s6
	masknez	$s4, $s4, $s6
	or	$s4, $s5, $s4
	addi.d	$s4, $s4, 1
	st.b	$s4, $s3, 1
	ld.d	$s3, $a3, %pc_lo12(pixel_map)
	add.d	$s3, $s3, $a5
	ldx.d	$s3, $s3, $s2
	ld.d	$s4, $a4, 0
	add.d	$s3, $s3, $t3
	ld.bu	$s5, $s3, 2
	ld.w	$s4, $s4, 32
	slt	$s6, $s5, $s4
	maskeqz	$s5, $s5, $s6
	masknez	$s4, $s4, $s6
	or	$s4, $s5, $s4
	addi.d	$s4, $s4, 1
	st.b	$s4, $s3, 2
	ld.d	$s3, $a3, %pc_lo12(pixel_map)
	add.d	$s3, $s3, $a5
	ldx.d	$s3, $s3, $s2
	ld.d	$s4, $a4, 0
	add.d	$s3, $s3, $t3
	ld.bu	$s5, $s3, 3
	ld.w	$s4, $s4, 32
	slt	$s6, $s5, $s4
	maskeqz	$s5, $s5, $s6
	masknez	$s4, $s4, $s6
	or	$s4, $s5, $s4
	addi.d	$s4, $s4, 1
	st.b	$s4, $s3, 3
	ld.d	$s3, $a3, %pc_lo12(pixel_map)
	add.d	$s3, $s3, $a5
	ldx.d	$s3, $s3, $s2
	ld.d	$s4, $a4, 0
	add.d	$s3, $s3, $t3
	ld.bu	$s5, $s3, 4
	ld.w	$s4, $s4, 32
	slt	$s6, $s5, $s4
	maskeqz	$s5, $s5, $s6
	masknez	$s4, $s4, $s6
	or	$s4, $s5, $s4
	addi.d	$s4, $s4, 1
	st.b	$s4, $s3, 4
	ld.d	$s3, $a3, %pc_lo12(pixel_map)
	add.d	$s3, $s3, $a5
	ldx.d	$s3, $s3, $s2
	ld.d	$s4, $a4, 0
	add.d	$s3, $s3, $t3
	ld.bu	$s5, $s3, 5
	ld.w	$s4, $s4, 32
	slt	$s6, $s5, $s4
	maskeqz	$s5, $s5, $s6
	masknez	$s4, $s4, $s6
	or	$s4, $s5, $s4
	addi.d	$s4, $s4, 1
	st.b	$s4, $s3, 5
	ld.d	$s3, $a3, %pc_lo12(pixel_map)
	add.d	$s3, $s3, $a5
	ldx.d	$s3, $s3, $s2
	ld.d	$s4, $a4, 0
	add.d	$s3, $s3, $t3
	ld.bu	$s5, $s3, 6
	ld.w	$s4, $s4, 32
	slt	$s6, $s5, $s4
	maskeqz	$s5, $s5, $s6
	masknez	$s4, $s4, $s6
	or	$s4, $s5, $s4
	addi.d	$s4, $s4, 1
	st.b	$s4, $s3, 6
	ld.d	$s3, $a3, %pc_lo12(pixel_map)
	add.d	$s3, $s3, $a5
	ldx.d	$s3, $s3, $s2
	ld.d	$s4, $a4, 0
	add.d	$s3, $s3, $t3
	ld.bu	$s5, $s3, 7
	ld.w	$s4, $s4, 32
	slt	$s6, $s5, $s4
	maskeqz	$s5, $s5, $s6
	masknez	$s4, $s4, $s6
	or	$s4, $s5, $s4
	addi.d	$s4, $s4, 1
	addi.d	$s2, $s2, 8
	st.b	$s4, $s3, 7
	bne	$s2, $t0, .LBB2_17
	b	.LBB2_14
.LBB2_18:                               # %.loopexit
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	UpdatePixelMap, .Lfunc_end2-UpdatePixelMap
                                        # -- End function
	.globl	CheckReliabilityOfRef           # -- Begin function CheckReliabilityOfRef
	.p2align	5
	.type	CheckReliabilityOfRef,@function
CheckReliabilityOfRef:                  # @CheckReliabilityOfRef
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
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
	ori	$fp, $zero, 4
	masknez	$t3, $fp, $t1
	ori	$a6, $zero, 2
	maskeqz	$t1, $a6, $t1
	or	$t1, $t1, $t3
	masknez	$t1, $t1, $t0
	maskeqz	$t3, $a6, $t0
	or	$t1, $t3, $t1
	add.w	$t7, $a0, $t1
	andi	$t1, $t2, 2
	addi.d	$t3, $a3, -3
	sltui	$t3, $t3, 1
	maskeqz	$t2, $t2, $t3
	masknez	$t2, $t2, $t0
	maskeqz	$t0, $t1, $t0
	or	$t0, $t0, $t2
	slt	$t1, $a6, $a3
	masknez	$t2, $fp, $t1
	maskeqz	$t1, $a6, $t1
	or	$t1, $t1, $t2
	add.w	$s8, $t0, $t1
	ldptr.d	$t5, $a7, 14384
	ld.w	$t4, $a7, 172
	ld.w	$t6, $a7, 168
	pcalau12i	$a7, %pc_hi20(pixel_map)
	ld.d	$a7, $a7, %pc_lo12(pixel_map)
	st.d	$a7, $sp, 144                   # 8-byte Folded Spill
	addi.w	$a7, $a0, 0
	slli.d	$t8, $a1, 3
	slli.d	$s6, $a2, 3
	slli.d	$ra, $a3, 3
	ori	$s0, $zero, 1
.LBB3_1:                                # %.preheader230
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_2 Depth 2
                                        #       Child Loop BB3_207 Depth 3
                                        #         Child Loop BB3_221 Depth 4
                                        #         Child Loop BB3_208 Depth 4
                                        #       Child Loop BB3_167 Depth 3
                                        #         Child Loop BB3_168 Depth 4
                                        #       Child Loop BB3_7 Depth 3
                                        #       Child Loop BB3_126 Depth 3
                                        #         Child Loop BB3_127 Depth 4
	slli.d	$a0, $a7, 3
	ldx.d	$s7, $t5, $a0
	st.d	$a7, $sp, 120                   # 8-byte Folded Spill
	add.d	$a0, $t4, $a7
	slli.d	$s4, $a0, 4
	move	$s1, $t0
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	st.d	$s4, $sp, 128                   # 8-byte Folded Spill
.LBB3_2:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_207 Depth 3
                                        #         Child Loop BB3_221 Depth 4
                                        #         Child Loop BB3_208 Depth 4
                                        #       Child Loop BB3_167 Depth 3
                                        #         Child Loop BB3_168 Depth 4
                                        #       Child Loop BB3_7 Depth 3
                                        #       Child Loop BB3_126 Depth 3
                                        #         Child Loop BB3_127 Depth 4
	slli.d	$a0, $s1, 3
	ldx.d	$a0, $s7, $a0
	ldx.d	$a0, $a0, $t8
	ldx.d	$a0, $a0, $s6
	ldx.d	$a0, $a0, $ra
	ld.hu	$a1, $a0, 2
	ld.h	$a0, $a0, 0
	bstrpick.d	$a3, $a1, 15, 2
	slli.d	$a3, $a3, 2
	ext.w.h	$a3, $a3
	add.w	$a3, $s4, $a3
	srai.d	$s2, $a3, 2
	bstrpick.d	$a3, $a0, 15, 2
	slli.d	$a3, $a3, 2
	ext.w.h	$a3, $a3
	add.d	$a7, $t6, $s1
	alsl.w	$a3, $a7, $a3, 4
	or	$a7, $a1, $a0
	andi	$a7, $a7, 3
	srai.d	$s3, $a3, 2
	beqz	$a7, .LBB3_32
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=2
	andi	$a1, $a1, 3
	beqz	$a1, .LBB3_49
# %bb.4:                                #   in Loop: Header=BB3_2 Depth=2
	andi	$s5, $a0, 3
	beq	$s5, $a6, .LBB3_125
# %bb.5:                                #   in Loop: Header=BB3_2 Depth=2
	bnez	$s5, .LBB3_165
# %bb.6:                                # %.preheader222
                                        #   in Loop: Header=BB3_2 Depth=2
	move	$a0, $zero
	srai.d	$a1, $s3, 63
	andn	$a1, $s3, $a1
	slt	$a3, $a1, $a4
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a4, $a3
	or	$a7, $a1, $a3
	addi.w	$a1, $zero, -1
	slt	$a3, $a1, $s3
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $s3, $a3
	or	$a1, $a3, $a1
	addi.d	$a1, $a1, 1
	slt	$a3, $a1, $a4
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a4, $a3
	or	$t1, $a1, $a3
	addi.w	$a3, $zero, -2
	slt	$a1, $a3, $s3
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $s3, $a1
	or	$a1, $a1, $a3
	addi.d	$a1, $a1, 2
	slt	$a3, $a1, $a4
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a4, $a3
	or	$s4, $a1, $a3
	addi.w	$a6, $zero, -3
	slt	$a1, $a6, $s3
	maskeqz	$a3, $s3, $a1
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	masknez	$a1, $a6, $a1
	or	$a1, $a3, $a1
	addi.d	$a1, $a1, 3
	slt	$a3, $a1, $a4
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a4, $a3
	or	$t3, $a1, $a3
.LBB3_7:                                # %.preheader214
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s5, $t5
	move	$t5, $t6
	move	$t6, $s1
	move	$s1, $t4
	ori	$t4, $zero, 2
	move	$a6, $t8
	add.w	$t8, $s2, $a0
	slt	$a1, $t4, $t8
	maskeqz	$a3, $t8, $a1
	masknez	$a1, $t4, $a1
	or	$a1, $a3, $a1
	addi.w	$a1, $a1, -2
	slt	$a3, $a1, $a5
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a5, $a3
	or	$a1, $a1, $a3
	slli.d	$a1, $a1, 3
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a1, $s3, $a1
	ldx.bu	$a3, $a1, $a7
	bge	$a2, $a3, .LBB3_237
# %bb.8:                                #   in Loop: Header=BB3_7 Depth=3
	slt	$a3, $s0, $t8
	masknez	$t4, $s0, $a3
	maskeqz	$a3, $t8, $a3
	or	$a3, $a3, $t4
	addi.d	$a3, $a3, -1
	slt	$t4, $a3, $a5
	maskeqz	$a3, $a3, $t4
	masknez	$t4, $a5, $t4
	or	$a3, $a3, $t4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s3, $a3
	ldx.bu	$t4, $a3, $a7
	bge	$a2, $t4, .LBB3_237
# %bb.9:                                #   in Loop: Header=BB3_7 Depth=3
	move	$s7, $t7
	srai.d	$t4, $t8, 63
	andn	$t4, $t8, $t4
	slt	$t7, $t4, $a5
	maskeqz	$t4, $t4, $t7
	masknez	$t7, $a5, $t7
	or	$t4, $t4, $t7
	slli.d	$t4, $t4, 3
	ldx.d	$t4, $s3, $t4
	ldx.bu	$t7, $t4, $a7
	bge	$a2, $t7, .LBB3_237
# %bb.10:                               #   in Loop: Header=BB3_7 Depth=3
	addi.w	$t7, $t8, 1
	srai.d	$fp, $t7, 63
	andn	$t7, $t7, $fp
	slt	$fp, $t7, $a5
	maskeqz	$t7, $t7, $fp
	masknez	$fp, $a5, $fp
	or	$t7, $t7, $fp
	slli.d	$t7, $t7, 3
	ldx.d	$t7, $s3, $t7
	ldx.bu	$fp, $t7, $a7
	bge	$a2, $fp, .LBB3_237
# %bb.11:                               #   in Loop: Header=BB3_7 Depth=3
	move	$t2, $s2
	move	$s2, $t0
	move	$t0, $s8
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	slt	$fp, $s0, $t8
	move	$s8, $s3
	masknez	$s3, $s0, $fp
	maskeqz	$fp, $t8, $fp
	or	$fp, $fp, $s3
	addi.w	$fp, $fp, 2
	slt	$s3, $fp, $a5
	maskeqz	$fp, $fp, $s3
	masknez	$s3, $a5, $s3
	or	$fp, $fp, $s3
	slli.d	$fp, $fp, 3
	ldx.d	$s3, $s8, $fp
	ldx.bu	$fp, $s3, $a7
	bge	$a2, $fp, .LBB3_237
# %bb.12:                               #   in Loop: Header=BB3_7 Depth=3
	move	$s0, $ra
	move	$ra, $s6
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	slt	$fp, $s6, $t8
	masknez	$s6, $s6, $fp
	maskeqz	$t8, $t8, $fp
	or	$t8, $t8, $s6
	addi.w	$t8, $t8, 3
	slt	$fp, $t8, $a5
	maskeqz	$t8, $t8, $fp
	masknez	$fp, $a5, $fp
	or	$t8, $t8, $fp
	slli.d	$t8, $t8, 3
	ldx.d	$t8, $s8, $t8
	ldx.bu	$fp, $t8, $a7
	bge	$a2, $fp, .LBB3_237
# %bb.13:                               #   in Loop: Header=BB3_7 Depth=3
	ldx.bu	$fp, $a1, $t1
	bge	$a2, $fp, .LBB3_237
# %bb.14:                               #   in Loop: Header=BB3_7 Depth=3
	ldx.bu	$fp, $a3, $t1
	bge	$a2, $fp, .LBB3_237
# %bb.15:                               #   in Loop: Header=BB3_7 Depth=3
	ldx.bu	$fp, $t4, $t1
	bge	$a2, $fp, .LBB3_237
# %bb.16:                               #   in Loop: Header=BB3_7 Depth=3
	ldx.bu	$fp, $t7, $t1
	bge	$a2, $fp, .LBB3_237
# %bb.17:                               #   in Loop: Header=BB3_7 Depth=3
	ldx.bu	$fp, $s3, $t1
	bge	$a2, $fp, .LBB3_237
# %bb.18:                               #   in Loop: Header=BB3_7 Depth=3
	ldx.bu	$fp, $t8, $t1
	bge	$a2, $fp, .LBB3_237
# %bb.19:                               #   in Loop: Header=BB3_7 Depth=3
	ldx.bu	$fp, $a1, $s4
	bge	$a2, $fp, .LBB3_237
# %bb.20:                               #   in Loop: Header=BB3_7 Depth=3
	ldx.bu	$fp, $a3, $s4
	bge	$a2, $fp, .LBB3_237
# %bb.21:                               #   in Loop: Header=BB3_7 Depth=3
	ldx.bu	$fp, $t4, $s4
	bge	$a2, $fp, .LBB3_237
# %bb.22:                               #   in Loop: Header=BB3_7 Depth=3
	ldx.bu	$fp, $t7, $s4
	bge	$a2, $fp, .LBB3_237
# %bb.23:                               #   in Loop: Header=BB3_7 Depth=3
	ldx.bu	$fp, $s3, $s4
	bge	$a2, $fp, .LBB3_237
# %bb.24:                               #   in Loop: Header=BB3_7 Depth=3
	ldx.bu	$fp, $t8, $s4
	bge	$a2, $fp, .LBB3_237
# %bb.25:                               #   in Loop: Header=BB3_7 Depth=3
	ldx.bu	$a1, $a1, $t3
	bge	$a2, $a1, .LBB3_237
# %bb.26:                               #   in Loop: Header=BB3_7 Depth=3
	ldx.bu	$a1, $a3, $t3
	bge	$a2, $a1, .LBB3_237
# %bb.27:                               #   in Loop: Header=BB3_7 Depth=3
	ldx.bu	$a1, $t4, $t3
	bge	$a2, $a1, .LBB3_237
# %bb.28:                               #   in Loop: Header=BB3_7 Depth=3
	ldx.bu	$a1, $t7, $t3
	bge	$a2, $a1, .LBB3_237
# %bb.29:                               #   in Loop: Header=BB3_7 Depth=3
	ldx.bu	$a1, $s3, $t3
	bge	$a2, $a1, .LBB3_237
# %bb.30:                               #   in Loop: Header=BB3_7 Depth=3
	ldx.bu	$a1, $t8, $t3
	bge	$a2, $a1, .LBB3_237
# %bb.31:                               #   in Loop: Header=BB3_7 Depth=3
	addi.w	$a0, $a0, 1
	ori	$fp, $zero, 4
	move	$t7, $s7
	move	$t8, $a6
	ori	$a6, $zero, 2
	move	$s6, $ra
	move	$ra, $s0
	ori	$s0, $zero, 1
	move	$t4, $s1
	move	$s1, $t6
	move	$t6, $t5
	move	$s8, $t0
	move	$t0, $s2
	move	$s2, $t2
	move	$t5, $s5
	bne	$a0, $fp, .LBB3_7
	b	.LBB3_48
	.p2align	4, , 16
.LBB3_32:                               # %.preheader218
                                        #   in Loop: Header=BB3_2 Depth=2
	srai.d	$a0, $s2, 63
	andn	$a0, $s2, $a0
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$t3, $a1, $a0
	srai.d	$a0, $s3, 63
	andn	$a0, $s3, $a0
	slt	$a1, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a4, $a1
	or	$a0, $a0, $a1
	ldx.bu	$a1, $t3, $a0
	bge	$a2, $a1, .LBB3_237
# %bb.33:                               #   in Loop: Header=BB3_2 Depth=2
	move	$fp, $t5
	move	$t5, $t6
	move	$t6, $s1
	move	$s1, $t4
	addi.w	$t4, $zero, -1
	slt	$a1, $t4, $s3
	masknez	$a3, $t4, $a1
	maskeqz	$a1, $s3, $a1
	or	$a1, $a1, $a3
	addi.d	$a1, $a1, 1
	slt	$a3, $a1, $a4
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a4, $a3
	or	$a1, $a1, $a3
	ldx.bu	$a3, $t3, $a1
	bge	$a2, $a3, .LBB3_237
# %bb.34:                               #   in Loop: Header=BB3_2 Depth=2
	addi.w	$t2, $zero, -2
	slt	$a3, $t2, $s3
	masknez	$a7, $t2, $a3
	maskeqz	$a3, $s3, $a3
	or	$a3, $a3, $a7
	addi.d	$a3, $a3, 2
	slt	$a7, $a3, $a4
	maskeqz	$a3, $a3, $a7
	masknez	$a7, $a4, $a7
	or	$a3, $a3, $a7
	ldx.bu	$a7, $t3, $a3
	bge	$a2, $a7, .LBB3_237
# %bb.35:                               #   in Loop: Header=BB3_2 Depth=2
	move	$s5, $t7
	addi.w	$t1, $zero, -3
	slt	$a7, $t1, $s3
	masknez	$t7, $t1, $a7
	maskeqz	$a7, $s3, $a7
	or	$a7, $a7, $t7
	addi.d	$a7, $a7, 3
	slt	$t7, $a7, $a4
	maskeqz	$a7, $a7, $t7
	masknez	$t7, $a4, $t7
	or	$a7, $a7, $t7
	ldx.bu	$t3, $t3, $a7
	bge	$a2, $t3, .LBB3_237
# %bb.36:                               # %.preheader212.1
                                        #   in Loop: Header=BB3_2 Depth=2
	slt	$t3, $t4, $s2
	masknez	$t4, $t4, $t3
	maskeqz	$t3, $s2, $t3
	or	$t3, $t3, $t4
	addi.d	$t3, $t3, 1
	slt	$t4, $t3, $a5
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a5, $t4
	or	$t3, $t3, $t4
	slli.d	$t3, $t3, 3
	ld.d	$t7, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$t3, $t7, $t3
	ldx.bu	$t4, $t3, $a0
	bge	$a2, $t4, .LBB3_237
# %bb.37:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$t4, $t3, $a1
	bge	$a2, $t4, .LBB3_237
# %bb.38:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$t4, $t3, $a3
	bge	$a2, $t4, .LBB3_237
# %bb.39:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$t3, $t3, $a7
	bge	$a2, $t3, .LBB3_237
# %bb.40:                               # %.preheader212.2
                                        #   in Loop: Header=BB3_2 Depth=2
	slt	$t3, $t2, $s2
	masknez	$t2, $t2, $t3
	maskeqz	$t3, $s2, $t3
	or	$t2, $t3, $t2
	addi.d	$t2, $t2, 2
	slt	$t3, $t2, $a5
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a5, $t3
	or	$t2, $t2, $t3
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $t7, $t2
	ldx.bu	$t3, $t2, $a0
	bge	$a2, $t3, .LBB3_237
# %bb.41:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$t3, $t2, $a1
	bge	$a2, $t3, .LBB3_237
# %bb.42:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$t3, $t2, $a3
	bge	$a2, $t3, .LBB3_237
# %bb.43:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$t2, $t2, $a7
	bge	$a2, $t2, .LBB3_237
# %bb.44:                               # %.preheader212.3
                                        #   in Loop: Header=BB3_2 Depth=2
	slt	$t2, $t1, $s2
	masknez	$t1, $t1, $t2
	maskeqz	$t2, $s2, $t2
	or	$t1, $t2, $t1
	addi.d	$t1, $t1, 3
	slt	$t2, $t1, $a5
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a5, $t2
	or	$t1, $t1, $t2
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $t7, $t1
	ldx.bu	$a0, $t1, $a0
	bge	$a2, $a0, .LBB3_237
# %bb.45:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a0, $t1, $a1
	bge	$a2, $a0, .LBB3_237
# %bb.46:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a0, $t1, $a3
	bge	$a2, $a0, .LBB3_237
# %bb.47:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a0, $t1, $a7
	move	$t7, $s5
	move	$t4, $s1
	move	$s1, $t6
	move	$t6, $t5
	move	$t5, $fp
	ori	$fp, $zero, 4
	bge	$a2, $a0, .LBB3_237
.LBB3_48:                               # %.loopexit219
                                        #   in Loop: Header=BB3_2 Depth=2
	addi.d	$s1, $s1, 1
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	blt	$s1, $s8, .LBB3_2
	b	.LBB3_235
	.p2align	4, , 16
.LBB3_49:                               # %.preheader220
                                        #   in Loop: Header=BB3_2 Depth=2
	st.d	$s6, $sp, 96                    # 8-byte Folded Spill
	slt	$a0, $a6, $s3
	masknez	$a1, $a6, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, -2
	srai.d	$a1, $s2, 63
	andn	$a1, $s2, $a1
	slt	$a3, $a1, $a5
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a5, $a3
	or	$a1, $a1, $a3
	slt	$a3, $a0, $a4
	slli.d	$a1, $a1, 3
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$t3, $a7, $a1
	maskeqz	$a0, $a0, $a3
	masknez	$a1, $a4, $a3
	or	$s6, $a0, $a1
	ldx.bu	$a0, $t3, $s6
	bge	$a2, $a0, .LBB3_237
# %bb.50:                               #   in Loop: Header=BB3_2 Depth=2
	slt	$a0, $s0, $s3
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, -1
	slt	$a1, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a4, $a1
	or	$s5, $a0, $a1
	ldx.bu	$a0, $t3, $s5
	bge	$a2, $a0, .LBB3_237
# %bb.51:                               #   in Loop: Header=BB3_2 Depth=2
	move	$a3, $s8
	st.d	$t8, $sp, 112                   # 8-byte Folded Spill
	srai.d	$a0, $s3, 63
	andn	$a0, $s3, $a0
	slt	$a1, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a4, $a1
	or	$s8, $a0, $a1
	ldx.bu	$a0, $t3, $s8
	bge	$a2, $a0, .LBB3_237
# %bb.52:                               #   in Loop: Header=BB3_2 Depth=2
	move	$t8, $t6
	move	$t6, $t0
	move	$t0, $t4
	addi.w	$t4, $zero, -1
	slt	$a0, $t4, $s3
	masknez	$a1, $t4, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	slt	$a1, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a4, $a1
	or	$s4, $a0, $a1
	ldx.bu	$a0, $t3, $s4
	bge	$a2, $a0, .LBB3_237
# %bb.53:                               #   in Loop: Header=BB3_2 Depth=2
	addi.w	$t2, $zero, -2
	slt	$a0, $t2, $s3
	masknez	$a1, $t2, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, 2
	slt	$a1, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a4, $a1
	or	$s7, $a0, $a1
	ldx.bu	$a0, $t3, $s7
	bge	$a2, $a0, .LBB3_237
# %bb.54:                               #   in Loop: Header=BB3_2 Depth=2
	st.d	$t7, $sp, 104                   # 8-byte Folded Spill
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	move	$t7, $a3
	addi.w	$a0, $zero, -3
	slt	$a1, $a0, $s3
	masknez	$a3, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$a1, $a1, $a3
	addi.d	$a1, $a1, 3
	slt	$a3, $a1, $a4
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a4, $a3
	or	$ra, $a1, $a3
	ldx.bu	$a1, $t3, $ra
	bge	$a2, $a1, .LBB3_237
# %bb.55:                               # %.preheader.1
                                        #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $t3, $s5
	bge	$a2, $a1, .LBB3_237
# %bb.56:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $t3, $s7
	bge	$a2, $a1, .LBB3_237
# %bb.57:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $t3, $ra
	bge	$a2, $a1, .LBB3_237
# %bb.58:                               #   in Loop: Header=BB3_2 Depth=2
	addi.w	$a1, $zero, -4
	slt	$a3, $a1, $s3
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $s3, $a3
	or	$a1, $a3, $a1
	addi.d	$a1, $a1, 4
	slt	$a3, $a1, $a4
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a4, $a3
	or	$a7, $a1, $a3
	ldx.bu	$a1, $t3, $a7
	bge	$a2, $a1, .LBB3_237
# %bb.59:                               # %.preheader.2
                                        #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $t3, $s4
	bge	$a2, $a1, .LBB3_237
# %bb.60:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $t3, $ra
	bge	$a2, $a1, .LBB3_237
# %bb.61:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $t3, $a7
	bge	$a2, $a1, .LBB3_237
# %bb.62:                               #   in Loop: Header=BB3_2 Depth=2
	addi.w	$a1, $zero, -5
	slt	$a3, $a1, $s3
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $s3, $a3
	or	$a1, $a3, $a1
	addi.d	$a1, $a1, 5
	slt	$a3, $a1, $a4
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a4, $a3
	or	$t1, $a1, $a3
	ldx.bu	$a1, $t3, $t1
	bge	$a2, $a1, .LBB3_237
# %bb.63:                               # %.preheader.3
                                        #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $t3, $s4
	bge	$a2, $a1, .LBB3_237
# %bb.64:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $t3, $s7
	bge	$a2, $a1, .LBB3_237
# %bb.65:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $t3, $a7
	bge	$a2, $a1, .LBB3_237
# %bb.66:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $t3, $t1
	bge	$a2, $a1, .LBB3_237
# %bb.67:                               #   in Loop: Header=BB3_2 Depth=2
	addi.w	$a1, $zero, -6
	slt	$a3, $a1, $s3
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $s3, $a3
	or	$a1, $a3, $a1
	addi.d	$a1, $a1, 6
	slt	$a3, $a1, $a4
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a4, $a3
	or	$s3, $a1, $a3
	ldx.bu	$a1, $t3, $s3
	bge	$a2, $a1, .LBB3_237
# %bb.68:                               # %.preheader.1363
                                        #   in Loop: Header=BB3_2 Depth=2
	slt	$a1, $t4, $s2
	masknez	$a3, $t4, $a1
	maskeqz	$a1, $s2, $a1
	or	$a1, $a1, $a3
	addi.d	$a1, $a1, 1
	slt	$a3, $a1, $a5
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a5, $a3
	or	$a1, $a1, $a3
	slli.d	$a1, $a1, 3
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a1, $a3, $a1
	ldx.bu	$a3, $a1, $s6
	bge	$a2, $a3, .LBB3_237
# %bb.69:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $s5
	bge	$a2, $a3, .LBB3_237
# %bb.70:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $s8
	bge	$a2, $a3, .LBB3_237
# %bb.71:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $s4
	bge	$a2, $a3, .LBB3_237
# %bb.72:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $s7
	bge	$a2, $a3, .LBB3_237
# %bb.73:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $ra
	bge	$a2, $a3, .LBB3_237
# %bb.74:                               # %.preheader.1.1
                                        #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $s5
	bge	$a2, $a3, .LBB3_237
# %bb.75:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $s7
	bge	$a2, $a3, .LBB3_237
# %bb.76:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $ra
	bge	$a2, $a3, .LBB3_237
# %bb.77:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $a7
	bge	$a2, $a3, .LBB3_237
# %bb.78:                               # %.preheader.2.1
                                        #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $s4
	bge	$a2, $a3, .LBB3_237
# %bb.79:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $ra
	bge	$a2, $a3, .LBB3_237
# %bb.80:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $a7
	bge	$a2, $a3, .LBB3_237
# %bb.81:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $t1
	bge	$a2, $a3, .LBB3_237
# %bb.82:                               # %.preheader.3.1
                                        #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $s4
	bge	$a2, $a3, .LBB3_237
# %bb.83:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $s7
	bge	$a2, $a3, .LBB3_237
# %bb.84:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $a7
	bge	$a2, $a3, .LBB3_237
# %bb.85:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $t1
	bge	$a2, $a3, .LBB3_237
# %bb.86:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $a1, $s3
	bge	$a2, $a1, .LBB3_237
# %bb.87:                               # %.preheader.2368
                                        #   in Loop: Header=BB3_2 Depth=2
	slt	$a1, $t2, $s2
	masknez	$a3, $t2, $a1
	maskeqz	$a1, $s2, $a1
	or	$a1, $a1, $a3
	addi.d	$a1, $a1, 2
	slt	$a3, $a1, $a5
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a5, $a3
	or	$a1, $a1, $a3
	slli.d	$a1, $a1, 3
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a1, $a3, $a1
	ldx.bu	$a3, $a1, $s6
	bge	$a2, $a3, .LBB3_237
# %bb.88:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $s5
	bge	$a2, $a3, .LBB3_237
# %bb.89:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $s8
	bge	$a2, $a3, .LBB3_237
# %bb.90:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $s4
	bge	$a2, $a3, .LBB3_237
# %bb.91:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $s7
	bge	$a2, $a3, .LBB3_237
# %bb.92:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $ra
	bge	$a2, $a3, .LBB3_237
# %bb.93:                               # %.preheader.1.2
                                        #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $s5
	bge	$a2, $a3, .LBB3_237
# %bb.94:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $s7
	bge	$a2, $a3, .LBB3_237
# %bb.95:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $ra
	bge	$a2, $a3, .LBB3_237
# %bb.96:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $a7
	bge	$a2, $a3, .LBB3_237
# %bb.97:                               # %.preheader.2.2
                                        #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $s4
	bge	$a2, $a3, .LBB3_237
# %bb.98:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $ra
	bge	$a2, $a3, .LBB3_237
# %bb.99:                               #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $a7
	bge	$a2, $a3, .LBB3_237
# %bb.100:                              #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $t1
	bge	$a2, $a3, .LBB3_237
# %bb.101:                              # %.preheader.3.2
                                        #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $s4
	bge	$a2, $a3, .LBB3_237
# %bb.102:                              #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $s7
	bge	$a2, $a3, .LBB3_237
# %bb.103:                              #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $a7
	bge	$a2, $a3, .LBB3_237
# %bb.104:                              #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a3, $a1, $t1
	bge	$a2, $a3, .LBB3_237
# %bb.105:                              #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $a1, $s3
	bge	$a2, $a1, .LBB3_237
# %bb.106:                              # %.preheader.3374
                                        #   in Loop: Header=BB3_2 Depth=2
	slt	$a1, $a0, $s2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$a0, $a1, $a0
	addi.d	$a0, $a0, 3
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ldx.bu	$a1, $a0, $s6
	bge	$a2, $a1, .LBB3_237
# %bb.107:                              #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $a0, $s5
	bge	$a2, $a1, .LBB3_237
# %bb.108:                              #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $a0, $s8
	bge	$a2, $a1, .LBB3_237
# %bb.109:                              #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $a0, $s4
	bge	$a2, $a1, .LBB3_237
# %bb.110:                              #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $a0, $s7
	bge	$a2, $a1, .LBB3_237
# %bb.111:                              #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $a0, $ra
	bge	$a2, $a1, .LBB3_237
# %bb.112:                              # %.preheader.1.3
                                        #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $a0, $s5
	bge	$a2, $a1, .LBB3_237
# %bb.113:                              #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $a0, $s7
	bge	$a2, $a1, .LBB3_237
# %bb.114:                              #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $a0, $ra
	bge	$a2, $a1, .LBB3_237
# %bb.115:                              #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $a0, $a7
	bge	$a2, $a1, .LBB3_237
# %bb.116:                              # %.preheader.2.3
                                        #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $a0, $s4
	bge	$a2, $a1, .LBB3_237
# %bb.117:                              #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $a0, $ra
	bge	$a2, $a1, .LBB3_237
# %bb.118:                              #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $a0, $a7
	bge	$a2, $a1, .LBB3_237
# %bb.119:                              #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $a0, $t1
	bge	$a2, $a1, .LBB3_237
# %bb.120:                              # %.preheader.3.3
                                        #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $a0, $s4
	bge	$a2, $a1, .LBB3_237
# %bb.121:                              #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $a0, $s7
	bge	$a2, $a1, .LBB3_237
# %bb.122:                              #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $a0, $a7
	bge	$a2, $a1, .LBB3_237
# %bb.123:                              #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a1, $a0, $t1
	bge	$a2, $a1, .LBB3_237
# %bb.124:                              #   in Loop: Header=BB3_2 Depth=2
	ldx.bu	$a0, $a0, $s3
	move	$s8, $t7
	move	$t4, $t0
	move	$t0, $t6
	move	$t6, $t8
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	ori	$s0, $zero, 1
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	blt	$a2, $a0, .LBB3_48
	b	.LBB3_237
.LBB3_125:                              # %.preheader224
                                        #   in Loop: Header=BB3_2 Depth=2
	addi.d	$a0, $s2, 3
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$t7, $sp, 104                   # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	st.d	$t6, $sp, 48                    # 8-byte Folded Spill
	st.d	$t8, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 96                    # 8-byte Folded Spill
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
.LBB3_126:                              # %.preheader215
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_127 Depth 4
	move	$t6, $t0
	move	$t0, $t4
	ori	$a3, $zero, 1
	move	$s0, $t5
	move	$s5, $zero
	addi.w	$a7, $s2, 0
	slt	$a0, $a6, $a7
	masknez	$a1, $a6, $a0
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, -2
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a1, $a0, $a1
	slt	$a0, $a3, $a7
	masknez	$a3, $a3, $a0
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a3
	addi.d	$a0, $a0, -1
	slt	$a3, $a0, $a5
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a5, $a3
	or	$a3, $a0, $a3
	srai.d	$a0, $a7, 63
	andn	$a0, $a7, $a0
	slt	$t1, $a0, $a5
	maskeqz	$a0, $a0, $t1
	masknez	$t1, $a5, $t1
	or	$t2, $a0, $t1
	addi.w	$s2, $s2, 1
	srai.d	$a0, $s2, 63
	andn	$a0, $s2, $a0
	slt	$t1, $a0, $a5
	maskeqz	$a0, $a0, $t1
	masknez	$t1, $a5, $t1
	or	$t3, $a0, $t1
	addi.w	$a0, $zero, -2
	slt	$t1, $a0, $a7
	masknez	$t4, $a0, $t1
	maskeqz	$t1, $a7, $t1
	or	$t1, $t1, $t4
	addi.w	$t1, $t1, 2
	slt	$t4, $t1, $a5
	maskeqz	$t1, $t1, $t4
	masknez	$t4, $a5, $t4
	or	$t4, $t1, $t4
	addi.w	$t1, $zero, -3
	slt	$t7, $t1, $a7
	masknez	$t8, $t1, $t7
	maskeqz	$t7, $a7, $t7
	or	$t7, $t7, $t8
	addi.w	$t7, $t7, 3
	slt	$t8, $t7, $a5
	maskeqz	$t7, $t7, $t8
	masknez	$t8, $a5, $t8
	or	$t7, $t7, $t8
	slli.d	$a1, $a1, 3
	ld.d	$t5, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$s6, $t5, $a1
	alsl.d	$s7, $a3, $t5, 3
	alsl.d	$s8, $t2, $t5, 3
	alsl.d	$t2, $t3, $t5, 3
	alsl.d	$ra, $t4, $t5, 3
	alsl.d	$t5, $t7, $t5, 3
.LBB3_127:                              # %.preheader207
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_2 Depth=2
                                        #       Parent Loop BB3_126 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$a3, $s3, $s5
	slt	$a1, $a6, $a3
	maskeqz	$t3, $a3, $a1
	masknez	$a1, $a6, $a1
	or	$a1, $t3, $a1
	addi.w	$a1, $a1, -2
	slt	$t3, $a1, $a4
	maskeqz	$a1, $a1, $t3
	masknez	$t3, $a4, $t3
	or	$t3, $a1, $t3
	ldx.bu	$a1, $s6, $t3
	bge	$a2, $a1, .LBB3_237
# %bb.128:                              #   in Loop: Header=BB3_127 Depth=4
	ori	$t4, $zero, 1
	slt	$a1, $t4, $a3
	masknez	$t4, $t4, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $t4
	addi.d	$a1, $a1, -1
	slt	$t4, $a1, $a4
	maskeqz	$a1, $a1, $t4
	masknez	$t4, $a4, $t4
	or	$t8, $a1, $t4
	ldx.bu	$a1, $s6, $t8
	bge	$a2, $a1, .LBB3_237
# %bb.129:                              #   in Loop: Header=BB3_127 Depth=4
	srai.d	$a1, $a3, 63
	andn	$a1, $a3, $a1
	slt	$t4, $a1, $a4
	maskeqz	$a1, $a1, $t4
	masknez	$t4, $a4, $t4
	or	$t4, $a1, $t4
	ldx.bu	$a1, $s6, $t4
	bge	$a2, $a1, .LBB3_237
# %bb.130:                              #   in Loop: Header=BB3_127 Depth=4
	addi.w	$a1, $a3, 1
	srai.d	$t7, $a1, 63
	andn	$a1, $a1, $t7
	slt	$t7, $a1, $a4
	maskeqz	$a1, $a1, $t7
	masknez	$t7, $a4, $t7
	or	$a1, $a1, $t7
	ldx.bu	$t7, $s6, $a1
	bge	$a2, $t7, .LBB3_237
# %bb.131:                              #   in Loop: Header=BB3_127 Depth=4
	slt	$t7, $a0, $a3
	masknez	$fp, $a0, $t7
	maskeqz	$t7, $a3, $t7
	or	$t7, $t7, $fp
	addi.w	$t7, $t7, 2
	slt	$fp, $t7, $a4
	maskeqz	$t7, $t7, $fp
	masknez	$fp, $a4, $fp
	or	$t7, $t7, $fp
	ldx.bu	$fp, $s6, $t7
	bge	$a2, $fp, .LBB3_237
# %bb.132:                              #   in Loop: Header=BB3_127 Depth=4
	slt	$fp, $t1, $a3
	masknez	$s4, $t1, $fp
	maskeqz	$a3, $a3, $fp
	or	$a3, $a3, $s4
	addi.w	$a3, $a3, 3
	slt	$fp, $a3, $a4
	maskeqz	$a3, $a3, $fp
	masknez	$fp, $a4, $fp
	or	$a3, $a3, $fp
	ldx.bu	$fp, $s6, $a3
	bge	$a2, $fp, .LBB3_237
# %bb.133:                              #   in Loop: Header=BB3_127 Depth=4
	ld.d	$fp, $s7, 0
	ldx.bu	$s4, $fp, $t3
	bge	$a2, $s4, .LBB3_237
# %bb.134:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$s4, $fp, $t8
	bge	$a2, $s4, .LBB3_237
# %bb.135:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$s4, $fp, $t4
	bge	$a2, $s4, .LBB3_237
# %bb.136:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$s4, $fp, $a1
	bge	$a2, $s4, .LBB3_237
# %bb.137:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$s4, $fp, $t7
	bge	$a2, $s4, .LBB3_237
# %bb.138:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$fp, $fp, $a3
	bge	$a2, $fp, .LBB3_237
# %bb.139:                              #   in Loop: Header=BB3_127 Depth=4
	ld.d	$fp, $s8, 0
	ldx.bu	$s4, $fp, $t3
	bge	$a2, $s4, .LBB3_237
# %bb.140:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$s4, $fp, $t8
	bge	$a2, $s4, .LBB3_237
# %bb.141:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$s4, $fp, $t4
	bge	$a2, $s4, .LBB3_237
# %bb.142:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$s4, $fp, $a1
	bge	$a2, $s4, .LBB3_237
# %bb.143:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$s4, $fp, $t7
	bge	$a2, $s4, .LBB3_237
# %bb.144:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$fp, $fp, $a3
	bge	$a2, $fp, .LBB3_237
# %bb.145:                              #   in Loop: Header=BB3_127 Depth=4
	ld.d	$fp, $t2, 0
	ldx.bu	$s4, $fp, $t3
	bge	$a2, $s4, .LBB3_237
# %bb.146:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$s4, $fp, $t8
	bge	$a2, $s4, .LBB3_237
# %bb.147:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$s4, $fp, $t4
	bge	$a2, $s4, .LBB3_237
# %bb.148:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$s4, $fp, $a1
	bge	$a2, $s4, .LBB3_237
# %bb.149:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$s4, $fp, $t7
	bge	$a2, $s4, .LBB3_237
# %bb.150:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$fp, $fp, $a3
	bge	$a2, $fp, .LBB3_237
# %bb.151:                              #   in Loop: Header=BB3_127 Depth=4
	ld.d	$fp, $ra, 0
	ldx.bu	$s4, $fp, $t3
	bge	$a2, $s4, .LBB3_237
# %bb.152:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$s4, $fp, $t8
	bge	$a2, $s4, .LBB3_237
# %bb.153:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$s4, $fp, $t4
	bge	$a2, $s4, .LBB3_237
# %bb.154:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$s4, $fp, $a1
	bge	$a2, $s4, .LBB3_237
# %bb.155:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$s4, $fp, $t7
	bge	$a2, $s4, .LBB3_237
# %bb.156:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$fp, $fp, $a3
	bge	$a2, $fp, .LBB3_237
# %bb.157:                              #   in Loop: Header=BB3_127 Depth=4
	ld.d	$fp, $t5, 0
	ldx.bu	$t3, $fp, $t3
	bge	$a2, $t3, .LBB3_237
# %bb.158:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$t3, $fp, $t8
	bge	$a2, $t3, .LBB3_237
# %bb.159:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$t3, $fp, $t4
	bge	$a2, $t3, .LBB3_237
# %bb.160:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$a1, $fp, $a1
	bge	$a2, $a1, .LBB3_237
# %bb.161:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$a1, $fp, $t7
	bge	$a2, $a1, .LBB3_239
# %bb.162:                              #   in Loop: Header=BB3_127 Depth=4
	ldx.bu	$a1, $fp, $a3
	bge	$a2, $a1, .LBB3_239
# %bb.163:                              #   in Loop: Header=BB3_127 Depth=4
	addi.w	$s5, $s5, 1
	ori	$fp, $zero, 4
	bne	$s5, $fp, .LBB3_127
# %bb.164:                              #   in Loop: Header=BB3_126 Depth=3
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	move	$t5, $s0
	move	$t4, $t0
	move	$t0, $t6
	ld.d	$t6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	ori	$s0, $zero, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bne	$a7, $a0, .LBB3_126
	b	.LBB3_48
.LBB3_165:                              #   in Loop: Header=BB3_2 Depth=2
	addi.d	$a0, $s2, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$t7, $sp, 104                   # 8-byte Folded Spill
	st.d	$t8, $sp, 112                   # 8-byte Folded Spill
	bne	$a1, $a6, .LBB3_206
# %bb.166:                              # %.preheader226
                                        #   in Loop: Header=BB3_2 Depth=2
	st.d	$t4, $sp, 16                    # 8-byte Folded Spill
.LBB3_167:                              # %.preheader216
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_168 Depth 4
	move	$s7, $zero
	addi.w	$a7, $s2, 0
	slt	$a0, $a6, $a7
	masknez	$a1, $a6, $a0
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, -2
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a1, $a0, $a1
	slt	$a0, $s0, $a7
	masknez	$a3, $s0, $a0
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a3
	addi.d	$a0, $a0, -1
	slt	$a3, $a0, $a5
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a5, $a3
	or	$a3, $a0, $a3
	srai.d	$a0, $a7, 63
	andn	$a0, $a7, $a0
	slt	$t1, $a0, $a5
	maskeqz	$a0, $a0, $t1
	masknez	$t1, $a5, $t1
	or	$t2, $a0, $t1
	addi.w	$s2, $s2, 1
	srai.d	$a0, $s2, 63
	andn	$a0, $s2, $a0
	slt	$t1, $a0, $a5
	maskeqz	$a0, $a0, $t1
	masknez	$t1, $a5, $t1
	or	$t3, $a0, $t1
	addi.w	$a0, $zero, -2
	slt	$t1, $a0, $a7
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	masknez	$t4, $a0, $t1
	maskeqz	$t1, $a7, $t1
	or	$t1, $t1, $t4
	addi.w	$t1, $t1, 2
	slt	$t4, $t1, $a5
	maskeqz	$t1, $t1, $t4
	masknez	$t4, $a5, $t4
	or	$t4, $t1, $t4
	addi.w	$t1, $zero, -3
	slt	$t7, $t1, $a7
	st.d	$t1, $sp, 32                    # 8-byte Folded Spill
	masknez	$t8, $t1, $t7
	maskeqz	$t7, $a7, $t7
	or	$t7, $t7, $t8
	addi.w	$t7, $t7, 3
	slt	$t8, $t7, $a5
	maskeqz	$t7, $t7, $t8
	masknez	$t8, $a5, $t8
	or	$t7, $t7, $t8
	slli.d	$a1, $a1, 3
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$s5, $t1, $a1
	alsl.d	$a0, $a3, $t1, 3
	alsl.d	$s4, $t2, $t1, 3
	alsl.d	$t8, $t3, $t1, 3
	alsl.d	$a1, $t4, $t1, 3
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	alsl.d	$a1, $t7, $t1, 3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.d	$t8, $sp, 24                    # 8-byte Folded Spill
.LBB3_168:                              # %.preheader208
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_2 Depth=2
                                        #       Parent Loop BB3_167 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$t3, $s3, $s7
	slt	$a1, $a6, $t3
	maskeqz	$a3, $t3, $a1
	masknez	$a1, $a6, $a1
	or	$a1, $a3, $a1
	addi.w	$a1, $a1, -2
	slt	$a3, $a1, $a4
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a4, $a3
	or	$a1, $a1, $a3
	ldx.bu	$a3, $s5, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.169:                              #   in Loop: Header=BB3_168 Depth=4
	move	$t1, $ra
	ld.d	$ra, $a0, 0
	ldx.bu	$a3, $ra, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.170:                              #   in Loop: Header=BB3_168 Depth=4
	move	$t4, $s8
	ld.d	$s8, $s4, 0
	ldx.bu	$a3, $s8, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.171:                              #   in Loop: Header=BB3_168 Depth=4
	ld.d	$t2, $t8, 0
	ldx.bu	$a3, $t2, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.172:                              #   in Loop: Header=BB3_168 Depth=4
	move	$t7, $t5
	move	$t5, $s7
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $a3, 0
	ldx.bu	$a3, $s7, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.173:                              #   in Loop: Header=BB3_168 Depth=4
	move	$t8, $s6
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $a3, 0
	ldx.bu	$a1, $s6, $a1
	bge	$a2, $a1, .LBB3_239
# %bb.174:                              #   in Loop: Header=BB3_168 Depth=4
	slt	$a1, $s0, $t3
	masknez	$a3, $s0, $a1
	maskeqz	$a1, $t3, $a1
	or	$a1, $a1, $a3
	addi.d	$a1, $a1, -1
	slt	$a3, $a1, $a4
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a4, $a3
	or	$a1, $a1, $a3
	ldx.bu	$a3, $s5, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.175:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a3, $ra, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.176:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a3, $s8, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.177:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a3, $t2, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.178:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a3, $s7, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.179:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a1, $s6, $a1
	bge	$a2, $a1, .LBB3_239
# %bb.180:                              #   in Loop: Header=BB3_168 Depth=4
	srai.d	$a1, $t3, 63
	andn	$a1, $t3, $a1
	slt	$a3, $a1, $a4
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a4, $a3
	or	$a1, $a1, $a3
	ldx.bu	$a3, $s5, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.181:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a3, $ra, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.182:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a3, $s8, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.183:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a3, $t2, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.184:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a3, $s7, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.185:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a1, $s6, $a1
	bge	$a2, $a1, .LBB3_239
# %bb.186:                              #   in Loop: Header=BB3_168 Depth=4
	addi.w	$a1, $t3, 1
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slt	$a3, $a1, $a4
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a4, $a3
	or	$a1, $a1, $a3
	ldx.bu	$a3, $s5, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.187:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a3, $ra, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.188:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a3, $s8, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.189:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a3, $t2, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.190:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a3, $s7, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.191:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a1, $s6, $a1
	bge	$a2, $a1, .LBB3_239
# %bb.192:                              #   in Loop: Header=BB3_168 Depth=4
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	slt	$a1, $a3, $t3
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $t3, $a1
	or	$a1, $a1, $a3
	addi.w	$a1, $a1, 2
	slt	$a3, $a1, $a4
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a4, $a3
	or	$a1, $a1, $a3
	ldx.bu	$a3, $s5, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.193:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a3, $ra, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.194:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a3, $s8, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.195:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a3, $t2, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.196:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a3, $s7, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.197:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a1, $s6, $a1
	bge	$a2, $a1, .LBB3_239
# %bb.198:                              #   in Loop: Header=BB3_168 Depth=4
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	slt	$a1, $a3, $t3
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $t3, $a1
	or	$a1, $a1, $a3
	addi.w	$a1, $a1, 3
	slt	$a3, $a1, $a4
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a4, $a3
	or	$a1, $a1, $a3
	ldx.bu	$a3, $s5, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.199:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a3, $ra, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.200:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a3, $s8, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.201:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a3, $t2, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.202:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a3, $s7, $a1
	bge	$a2, $a3, .LBB3_239
# %bb.203:                              #   in Loop: Header=BB3_168 Depth=4
	ldx.bu	$a1, $s6, $a1
	bge	$a2, $a1, .LBB3_239
# %bb.204:                              #   in Loop: Header=BB3_168 Depth=4
	addi.w	$s7, $t5, 1
	move	$s8, $t4
	move	$t5, $t7
	move	$s6, $t8
	move	$ra, $t1
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	bne	$s7, $fp, .LBB3_168
# %bb.205:                              #   in Loop: Header=BB3_167 Depth=3
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bne	$a7, $a0, .LBB3_167
	b	.LBB3_48
.LBB3_206:                              # %.preheader228
                                        #   in Loop: Header=BB3_2 Depth=2
	addi.d	$a0, $a1, -1
	sltu	$a1, $zero, $a0
	st.d	$s6, $sp, 96                    # 8-byte Folded Spill
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
.LBB3_207:                              # %.preheader217
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_221 Depth 4
                                        #         Child Loop BB3_208 Depth 4
	move	$t8, $t6
	move	$t6, $t0
	move	$t0, $t4
	ori	$t2, $zero, 1
	move	$s0, $t5
	move	$t7, $s8
	add.w	$a0, $s2, $a1
	addi.w	$s7, $s2, 0
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 3
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$s8, $a7, $a0
	slt	$a0, $a6, $s7
	masknez	$a1, $a6, $a0
	maskeqz	$a0, $s7, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, -2
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	alsl.d	$t5, $a0, $a7, 3
	slt	$a0, $t2, $s7
	masknez	$a1, $t2, $a0
	maskeqz	$a0, $s7, $a0
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, -1
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	alsl.d	$a0, $a0, $a7, 3
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	srai.d	$a0, $s7, 63
	andn	$a0, $s7, $a0
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	alsl.d	$s4, $a0, $a7, 3
	addi.w	$s2, $s2, 1
	srai.d	$a0, $s2, 63
	andn	$a0, $s2, $a0
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	alsl.d	$s6, $a0, $a7, 3
	addi.w	$t1, $zero, -2
	slt	$a0, $t1, $s7
	masknez	$a1, $t1, $a0
	maskeqz	$a0, $s7, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 2
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	alsl.d	$a0, $a0, $a7, 3
	addi.w	$ra, $zero, -3
	slt	$a1, $ra, $s7
	masknez	$a3, $ra, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a3
	addi.w	$a1, $a1, 3
	slt	$a3, $a1, $a5
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a5, $a3
	or	$a1, $a1, $a3
	alsl.d	$a7, $a1, $a7, 3
	move	$a1, $zero
	bne	$s5, $t2, .LBB3_221
.LBB3_208:                              # %.preheader217.split.us
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_2 Depth=2
                                        #       Parent Loop BB3_207 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$t2, $s3, $a1
	slt	$a3, $a6, $t2
	maskeqz	$t3, $t2, $a3
	masknez	$a3, $a6, $a3
	or	$a3, $t3, $a3
	addi.w	$a3, $a3, -2
	slt	$t3, $a3, $a4
	maskeqz	$a3, $a3, $t3
	masknez	$t3, $a4, $t3
	or	$a3, $a3, $t3
	ldx.bu	$a3, $s8, $a3
	bge	$a2, $a3, .LBB3_239
# %bb.209:                              #   in Loop: Header=BB3_208 Depth=4
	ori	$t3, $zero, 1
	slt	$a3, $t3, $t2
	masknez	$t3, $t3, $a3
	maskeqz	$a3, $t2, $a3
	or	$a3, $a3, $t3
	addi.d	$a3, $a3, -1
	slt	$t3, $a3, $a4
	maskeqz	$a3, $a3, $t3
	masknez	$t3, $a4, $t3
	or	$a3, $a3, $t3
	ldx.bu	$a3, $s8, $a3
	bge	$a2, $a3, .LBB3_239
# %bb.210:                              #   in Loop: Header=BB3_208 Depth=4
	srai.d	$a3, $t2, 63
	andn	$a3, $t2, $a3
	slt	$t3, $a3, $a4
	maskeqz	$a3, $a3, $t3
	masknez	$t3, $a4, $t3
	or	$a3, $a3, $t3
	ldx.bu	$t3, $s8, $a3
	bge	$a2, $t3, .LBB3_239
# %bb.211:                              #   in Loop: Header=BB3_208 Depth=4
	addi.w	$t3, $t2, 1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a4
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a4, $t4
	or	$t3, $t3, $t4
	ldx.bu	$t3, $s8, $t3
	bge	$a2, $t3, .LBB3_239
# %bb.212:                              #   in Loop: Header=BB3_208 Depth=4
	slt	$t3, $t1, $t2
	masknez	$t4, $t1, $t3
	maskeqz	$t3, $t2, $t3
	or	$t3, $t3, $t4
	addi.w	$t3, $t3, 2
	slt	$t4, $t3, $a4
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a4, $t4
	or	$t3, $t3, $t4
	ldx.bu	$t3, $s8, $t3
	bge	$a2, $t3, .LBB3_239
# %bb.213:                              #   in Loop: Header=BB3_208 Depth=4
	slt	$t3, $ra, $t2
	masknez	$t4, $ra, $t3
	maskeqz	$t2, $t2, $t3
	or	$t2, $t2, $t4
	addi.w	$t2, $t2, 3
	slt	$t3, $t2, $a4
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a4, $t3
	or	$t2, $t2, $t3
	ldx.bu	$t2, $s8, $t2
	bge	$a2, $t2, .LBB3_239
# %bb.214:                              #   in Loop: Header=BB3_208 Depth=4
	ld.d	$t2, $t5, 0
	ldx.bu	$t2, $t2, $a3
	bge	$a2, $t2, .LBB3_239
# %bb.215:                              #   in Loop: Header=BB3_208 Depth=4
	ld.d	$t2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t2, $t2, 0
	ldx.bu	$t2, $t2, $a3
	bge	$a2, $t2, .LBB3_239
# %bb.216:                              #   in Loop: Header=BB3_208 Depth=4
	ld.d	$t2, $s4, 0
	ldx.bu	$t2, $t2, $a3
	bge	$a2, $t2, .LBB3_239
# %bb.217:                              #   in Loop: Header=BB3_208 Depth=4
	ld.d	$t2, $s6, 0
	ldx.bu	$t2, $t2, $a3
	bge	$a2, $t2, .LBB3_239
# %bb.218:                              #   in Loop: Header=BB3_208 Depth=4
	ld.d	$t2, $a0, 0
	ldx.bu	$t2, $t2, $a3
	bge	$a2, $t2, .LBB3_239
# %bb.219:                              #   in Loop: Header=BB3_208 Depth=4
	ld.d	$t2, $a7, 0
	ldx.bu	$a3, $t2, $a3
	bge	$a2, $a3, .LBB3_239
# %bb.220:                              # %.loopexit209.us
                                        #   in Loop: Header=BB3_208 Depth=4
	addi.w	$a1, $a1, 1
	bne	$a1, $fp, .LBB3_208
	b	.LBB3_234
.LBB3_221:                              # %.preheader217.split
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_2 Depth=2
                                        #       Parent Loop BB3_207 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$a3, $s3, $a1
	slt	$t2, $a6, $a3
	maskeqz	$t3, $a3, $t2
	masknez	$t2, $a6, $t2
	or	$t2, $t3, $t2
	addi.w	$t2, $t2, -2
	slt	$t3, $t2, $a4
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a4, $t3
	or	$t2, $t2, $t3
	ldx.bu	$t2, $s8, $t2
	bge	$a2, $t2, .LBB3_239
# %bb.222:                              #   in Loop: Header=BB3_221 Depth=4
	ori	$t3, $zero, 1
	slt	$t2, $t3, $a3
	masknez	$t3, $t3, $t2
	maskeqz	$t2, $a3, $t2
	or	$t2, $t2, $t3
	addi.d	$t2, $t2, -1
	slt	$t3, $t2, $a4
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a4, $t3
	or	$t2, $t2, $t3
	ldx.bu	$t2, $s8, $t2
	bge	$a2, $t2, .LBB3_239
# %bb.223:                              #   in Loop: Header=BB3_221 Depth=4
	srai.d	$t2, $a3, 63
	andn	$t2, $a3, $t2
	slt	$t3, $t2, $a4
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a4, $t3
	or	$t2, $t2, $t3
	ldx.bu	$t2, $s8, $t2
	bge	$a2, $t2, .LBB3_239
# %bb.224:                              #   in Loop: Header=BB3_221 Depth=4
	addi.w	$t2, $a3, 1
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a4
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a4, $t3
	or	$t2, $t2, $t3
	ldx.bu	$t3, $s8, $t2
	bge	$a2, $t3, .LBB3_239
# %bb.225:                              #   in Loop: Header=BB3_221 Depth=4
	slt	$t3, $t1, $a3
	masknez	$t4, $t1, $t3
	maskeqz	$t3, $a3, $t3
	or	$t3, $t3, $t4
	addi.w	$t3, $t3, 2
	slt	$t4, $t3, $a4
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a4, $t4
	or	$t3, $t3, $t4
	ldx.bu	$t3, $s8, $t3
	bge	$a2, $t3, .LBB3_239
# %bb.226:                              #   in Loop: Header=BB3_221 Depth=4
	slt	$t3, $ra, $a3
	masknez	$t4, $ra, $t3
	maskeqz	$a3, $a3, $t3
	or	$a3, $a3, $t4
	addi.w	$a3, $a3, 3
	slt	$t3, $a3, $a4
	maskeqz	$a3, $a3, $t3
	masknez	$t3, $a4, $t3
	or	$a3, $a3, $t3
	ldx.bu	$a3, $s8, $a3
	bge	$a2, $a3, .LBB3_239
# %bb.227:                              #   in Loop: Header=BB3_221 Depth=4
	ld.d	$a3, $t5, 0
	ldx.bu	$a3, $a3, $t2
	bge	$a2, $a3, .LBB3_239
# %bb.228:                              #   in Loop: Header=BB3_221 Depth=4
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ldx.bu	$a3, $a3, $t2
	bge	$a2, $a3, .LBB3_239
# %bb.229:                              #   in Loop: Header=BB3_221 Depth=4
	ld.d	$a3, $s4, 0
	ldx.bu	$a3, $a3, $t2
	bge	$a2, $a3, .LBB3_239
# %bb.230:                              #   in Loop: Header=BB3_221 Depth=4
	ld.d	$a3, $s6, 0
	ldx.bu	$a3, $a3, $t2
	bge	$a2, $a3, .LBB3_239
# %bb.231:                              #   in Loop: Header=BB3_221 Depth=4
	ld.d	$a3, $a0, 0
	ldx.bu	$a3, $a3, $t2
	bge	$a2, $a3, .LBB3_239
# %bb.232:                              #   in Loop: Header=BB3_221 Depth=4
	ld.d	$a3, $a7, 0
	ldx.bu	$a3, $a3, $t2
	bge	$a2, $a3, .LBB3_239
# %bb.233:                              # %.loopexit209
                                        #   in Loop: Header=BB3_221 Depth=4
	addi.w	$a1, $a1, 1
	bne	$a1, $fp, .LBB3_221
.LBB3_234:                              # %.split.us
                                        #   in Loop: Header=BB3_207 Depth=3
	move	$s8, $t7
	move	$t5, $s0
	move	$t4, $t0
	move	$t0, $t6
	move	$t6, $t8
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	ori	$s0, $zero, 1
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bne	$s7, $a0, .LBB3_207
	b	.LBB3_48
.LBB3_235:                              #   in Loop: Header=BB3_1 Depth=1
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a7, $a7, 1
	blt	$a7, $t7, .LBB3_1
# %bb.236:
	ori	$a0, $zero, 1
	b	.LBB3_238
.LBB3_237:
	move	$a0, $zero
.LBB3_238:                              # %.loopexit
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB3_239:
	move	$a0, $zero
	b	.LBB3_238
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
	.globl	Mode_Decision_for_4x4IntraBlocks # -- Begin function Mode_Decision_for_4x4IntraBlocks
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
	beqz	$a0, .LBB5_4
# %bb.1:
	ld.w	$a0, $sp, 324
	beqz	$a0, .LBB5_5
# %bb.2:
	ld.d	$a0, $s6, 0
	ld.w	$a1, $sp, 328
	ldptr.d	$a0, $a0, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	ld.w	$a1, $sp, 300
	st.w	$a0, $sp, 324
	beqz	$a1, .LBB5_6
.LBB5_3:
	ld.d	$a0, $s6, 0
	ld.w	$a1, $sp, 304
	ldptr.d	$a0, $a0, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $a0, $a1
	st.w	$a2, $sp, 300
	b	.LBB5_7
.LBB5_4:                                # %thread-pre-split
	ld.w	$a2, $sp, 300
	b	.LBB5_7
.LBB5_5:
	move	$a0, $zero
	ld.w	$a1, $sp, 300
	st.w	$a0, $sp, 324
	bnez	$a1, .LBB5_3
.LBB5_6:
	move	$a2, $zero
	st.w	$zero, $sp, 300
.LBB5_7:
	add.w	$a0, $s5, $s0
	addi.w	$a4, $zero, -1
	add.w	$a1, $s4, $fp
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	move	$a1, $a4
	beqz	$a2, .LBB5_9
# %bb.8:
	ld.d	$a1, $s6, 0
	ld.w	$a2, $sp, 320
	ld.d	$a1, $a1, 128
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ld.w	$a2, $sp, 316
	ldx.b	$a1, $a1, $a2
.LBB5_9:
	ld.w	$a2, $sp, 324
	add.w	$a3, $s2, $s0
	st.d	$a3, $sp, 216                   # 8-byte Folded Spill
	add.w	$s4, $s3, $fp
	vld	$vr0, $sp, 192                  # 16-byte Folded Reload
	ftintrz.w.d	$fa0, $fa0
	beqz	$a2, .LBB5_11
# %bb.10:
	ld.d	$a3, $s6, 0
	ld.w	$a2, $sp, 344
	ld.d	$a3, $a3, 128
	slli.d	$a2, $a2, 3
	ldx.d	$a3, $a3, $a2
	ld.w	$a2, $sp, 340
	ldx.b	$a4, $a3, $a2
.LBB5_11:
	srai.d	$a2, $a0, 2
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	srai.d	$a2, $s2, 2
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	movfr2gr.s	$a2, $fa0
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
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
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	move	$a1, $s2
	pcaddu18i	$ra, %call36(intrapred_luma)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	move	$s7, $zero
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	addi.w	$fp, $s0, 0
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
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.w	$s2, $zero, -3
	lu12i.w	$a0, 236040
	ori	$a0, $a0, 3306
	lu32i.d	$a0, -442791
	lu52i.d	$a0, $a0, 1122
	movgr2fr.d	$fs2, $a0
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
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	b	.LBB5_16
.LBB5_12:                               # %.loopexit247
                                        #   in Loop: Header=BB5_16 Depth=1
	fmov.d	$fs2, $fs1
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
.LBB5_13:                               # %.loopexit247
                                        #   in Loop: Header=BB5_16 Depth=1
	pcalau12i	$a0, %pc_hi20(cs_cm)
	ld.d	$a0, $a0, %pc_lo12(cs_cm)
	pcaddu18i	$ra, %call36(reset_coding_state)
	jirl	$ra, $ra, 0
.LBB5_14:                               #   in Loop: Header=BB5_16 Depth=1
	ori	$s8, $zero, 2
	ori	$a4, $zero, 1024
	ori	$a5, $zero, 9
.LBB5_15:                               #   in Loop: Header=BB5_16 Depth=1
	addi.d	$s7, $s7, 1
	addi.d	$s5, $s5, 512
	addi.w	$s2, $s2, 1
	beq	$s7, $a5, .LBB5_41
.LBB5_16:                               # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 1
	beq	$s5, $a4, .LBB5_21
# %bb.17:                               #   in Loop: Header=BB5_16 Depth=1
	sltu	$a1, $zero, $s5
	andi	$a2, $s7, 11
	addi.d	$a2, $a2, -3
	sltu	$a2, $zero, $a2
	and	$a1, $a1, $a2
	bnez	$a1, .LBB5_19
# %bb.18:                               #   in Loop: Header=BB5_16 Depth=1
	ld.w	$a1, $sp, 352
	bnez	$a1, .LBB5_21
.LBB5_19:                               #   in Loop: Header=BB5_16 Depth=1
	addi.d	$a1, $s5, -512
	sltu	$a1, $zero, $a1
	addi.d	$a2, $s7, -8
	sltu	$a2, $zero, $a2
	and	$a1, $a1, $a2
	bnez	$a1, .LBB5_35
# %bb.20:                               #   in Loop: Header=BB5_16 Depth=1
	ld.w	$a1, $sp, 356
	beqz	$a1, .LBB5_35
	.p2align	4, , 16
.LBB5_21:                               #   in Loop: Header=BB5_16 Depth=1
	ld.d	$a1, $s1, 0
	ldptr.w	$a2, $a1, 4048
	beqz	$a2, .LBB5_23
.LBB5_22:                               #   in Loop: Header=BB5_16 Depth=1
	ld.d	$a2, $s6, 0
	ld.w	$a2, $a2, 20
	beq	$a2, $s8, .LBB5_28
.LBB5_23:                               #   in Loop: Header=BB5_16 Depth=1
	ldptr.w	$a2, $a1, 4052
	beqz	$a2, .LBB5_25
# %bb.24:                               #   in Loop: Header=BB5_16 Depth=1
	bltu	$s7, $s8, .LBB5_15
.LBB5_25:                               #   in Loop: Header=BB5_16 Depth=1
	ldptr.w	$a2, $a1, 4056
	beqz	$a2, .LBB5_27
# %bb.26:                               #   in Loop: Header=BB5_16 Depth=1
	bltu	$s2, $s8, .LBB5_15
.LBB5_27:                               #   in Loop: Header=BB5_16 Depth=1
	ldptr.w	$a2, $a1, 4060
	sltui	$a2, $a2, 1
	sltui	$a3, $s7, 5
	or	$a2, $a2, $a3
	and	$a0, $a2, $a0
.LBB5_28:                               #   in Loop: Header=BB5_16 Depth=1
	beqz	$a0, .LBB5_15
# %bb.29:                               #   in Loop: Header=BB5_16 Depth=1
	ldptr.w	$a3, $a1, 4168
	pcalau12i	$a0, %pc_hi20(imgY_org)
	slli.d	$a2, $s4, 3
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 1
	beqz	$a3, .LBB5_36
# %bb.30:                               # %.preheader248
                                        #   in Loop: Header=BB5_16 Depth=1
	ld.d	$a3, $s6, 0
	add.d	$a4, $a3, $s5
	ld.d	$a4, $a4, 208
	slli.d	$a5, $s3, 5
	add.d	$a3, $a3, $a5
	alsl.d	$a3, $fp, $a3, 1
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
	alsl.d	$a3, $fp, $a3, 1
	stptr.d	$a2, $a3, 12624
	ld.d	$a2, $a0, %pc_lo12(imgY_org)
	alsl.d	$a2, $s4, $a2, 3
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
	alsl.d	$a3, $fp, $a3, 1
	stptr.d	$a2, $a3, 12624
	ld.d	$a2, $a0, %pc_lo12(imgY_org)
	alsl.d	$a2, $s4, $a2, 3
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
	alsl.d	$a3, $fp, $a3, 1
	stptr.d	$a2, $a3, 12624
	ld.d	$a0, $a0, %pc_lo12(imgY_org)
	alsl.d	$a0, $s4, $a0, 3
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
	bceqz	$fcc0, .LBB5_13
# %bb.31:                               #   in Loop: Header=BB5_16 Depth=1
	fmov.d	$fs1, $fa0
	ld.d	$a0, $s6, 0
	ldptr.d	$a0, $a0, 14160
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	slli.d	$fp, $a1, 3
	ldx.d	$a0, $a0, $fp
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
	ldx.d	$a0, $a0, $fp
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
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	slli.d	$a3, $a6, 1
	ori	$a5, $zero, 3
	bne	$a4, $a5, .LBB5_38
# %bb.32:                               #   in Loop: Header=BB5_16 Depth=1
	pcalau12i	$a4, %pc_hi20(si_frame_indicator)
	ld.w	$a4, $a4, %pc_lo12(si_frame_indicator)
	bnez	$a4, .LBB5_38
# %bb.33:                               #   in Loop: Header=BB5_16 Depth=1
	pcalau12i	$a4, %pc_hi20(sp2_frame_indicator)
	ld.w	$a4, $a4, %pc_lo12(sp2_frame_indicator)
	bnez	$a4, .LBB5_38
# %bb.34:                               #   in Loop: Header=BB5_16 Depth=1
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
	b	.LBB5_39
.LBB5_35:                               #   in Loop: Header=BB5_16 Depth=1
	ld.w	$a0, $sp, 348
	sltu	$a0, $zero, $a0
	ld.d	$a1, $s1, 0
	ldptr.w	$a2, $a1, 4048
	bnez	$a2, .LBB5_22
	b	.LBB5_23
.LBB5_36:                               # %.preheader245
                                        #   in Loop: Header=BB5_16 Depth=1
	ld.d	$a0, $a0, %pc_lo12(imgY_org)
	ldx.d	$a2, $a0, $a2
	ld.d	$a3, $s6, 0
	ldx.d	$a2, $a2, $a1
	add.d	$a3, $a3, $s5
	ld.d	$a4, $a3, 208
	alsl.d	$a5, $s4, $a0, 3
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
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	xor	$a1, $a1, $s5
	sltui	$a1, $a1, 1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	masknez	$s8, $a2, $a1
	pcaddu18i	$ra, %call36(distortion4x4)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 0
	add.w	$a0, $a0, $s8
	bge	$a0, $a1, .LBB5_14
# %bb.37:                               #   in Loop: Header=BB5_16 Depth=1
	st.w	$a0, $a2, 0
	addi.w	$a0, $s2, 3
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	b	.LBB5_14
.LBB5_38:                               # %.thread289
                                        #   in Loop: Header=BB5_16 Depth=1
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$a4, $a4, $a1, 3
	ld.d	$a5, $a4, 8
	ld.d	$a6, $a4, 16
	ld.d	$a4, $a4, 24
	ldx.d	$t0, $a5, $a3
	ldx.d	$a5, $a6, $a3
	ldx.d	$a4, $a4, $a3
.LBB5_39:                               #   in Loop: Header=BB5_16 Depth=1
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	ldx.d	$a1, $a1, $a2
	ldx.d	$a1, $a1, $a3
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ldptr.w	$a1, $a0, 15260
	ld.w	$a2, $sp, 360
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a1, .LBB5_12
# %bb.40:                               # %.preheader246
                                        #   in Loop: Header=BB5_16 Depth=1
	ldptr.d	$a0, $a0, 14176
	ld.d	$a0, $a0, 8
	pcalau12i	$a1, %pc_hi20(fadjust4x4)
	ld.d	$a1, $a1, %pc_lo12(fadjust4x4)
	slli.d	$a2, $s3, 3
	ldx.d	$a0, $a0, $a2
	ldx.d	$a2, $a1, $a2
	slli.d	$a3, $fp, 2
	ldx.d	$a4, $a0, $a3
	alsl.d	$a0, $fp, $a0, 2
	stx.d	$a4, $a2, $a3
	ld.d	$a0, $a0, 8
	alsl.d	$a2, $fp, $a2, 2
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
	b	.LBB5_12
.LBB5_41:
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
	beqz	$a0, .LBB5_61
# %bb.42:                               # %.preheader244
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
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
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
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	slli.d	$a1, $t1, 1
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	stx.d	$a3, $a2, $a1
	ld.d	$a2, $s6, 0
	slli.d	$a4, $s5, 9
	add.d	$a3, $a2, $a4
	ld.d	$a3, $a3, 208
	slli.d	$a5, $s3, 5
	add.d	$a2, $a2, $a5
	alsl.d	$a2, $fp, $a2, 1
	stptr.d	$a3, $a2, 12624
	ld.d	$a2, $s6, 0
	ld.w	$a7, $a2, 20
	pcalau12i	$a2, %pc_hi20(si_frame_indicator)
	ori	$a5, $zero, 3
	pcalau12i	$a3, %pc_hi20(sp2_frame_indicator)
	bne	$a7, $a5, .LBB5_46
# %bb.43:                               # %.preheader244
	ld.w	$a7, $a2, %pc_lo12(si_frame_indicator)
	bnez	$a7, .LBB5_46
# %bb.44:                               # %.preheader244
	ld.w	$a7, $a3, %pc_lo12(sp2_frame_indicator)
	bnez	$a7, .LBB5_46
# %bb.45:
	pcalau12i	$a7, %pc_hi20(lrec)
	ld.d	$a7, $a7, %pc_lo12(lrec)
	ldx.d	$a6, $a7, $a6
	vld	$vr0, $sp, 232
	slli.d	$a7, $t1, 2
	vstx	$vr0, $a6, $a7
.LBB5_46:
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
	alsl.d	$a6, $fp, $a6, 1
	stptr.d	$a7, $a6, 12624
	ld.d	$a6, $s6, 0
	ld.w	$a6, $a6, 20
	move	$t0, $s2
	bne	$a6, $a5, .LBB5_50
# %bb.47:
	ld.w	$a5, $a2, %pc_lo12(si_frame_indicator)
	bnez	$a5, .LBB5_50
# %bb.48:
	ld.w	$a5, $a3, %pc_lo12(sp2_frame_indicator)
	bnez	$a5, .LBB5_50
# %bb.49:
	pcalau12i	$a5, %pc_hi20(lrec)
	ld.d	$a5, $a5, %pc_lo12(lrec)
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a5, $a5, $a6
	vld	$vr0, $sp, 248
	slli.d	$a6, $t1, 2
	vstx	$vr0, $a5, $a6
.LBB5_50:
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
	alsl.d	$a5, $fp, $a5, 1
	stptr.d	$a6, $a5, 12624
	ld.d	$a5, $s6, 0
	ld.w	$a6, $a5, 20
	ori	$a5, $zero, 3
	bne	$a6, $a5, .LBB5_54
# %bb.51:
	ld.w	$a6, $a2, %pc_lo12(si_frame_indicator)
	bnez	$a6, .LBB5_54
# %bb.52:
	ld.w	$a6, $a3, %pc_lo12(sp2_frame_indicator)
	bnez	$a6, .LBB5_54
# %bb.53:
	pcalau12i	$a6, %pc_hi20(lrec)
	ld.d	$a6, $a6, %pc_lo12(lrec)
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a6, $a6, $a7
	vld	$vr0, $sp, 264
	slli.d	$a7, $t1, 2
	vstx	$vr0, $a6, $a7
.LBB5_54:
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
	alsl.d	$a0, $fp, $a0, 1
	stptr.d	$a1, $a0, 12624
	ld.d	$a0, $s6, 0
	ld.w	$a1, $a0, 20
	bne	$a1, $a5, .LBB5_58
# %bb.55:
	ld.w	$a1, $a2, %pc_lo12(si_frame_indicator)
	bnez	$a1, .LBB5_58
# %bb.56:
	ld.w	$a1, $a3, %pc_lo12(sp2_frame_indicator)
	bnez	$a1, .LBB5_58
# %bb.57:
	pcalau12i	$a0, %pc_hi20(lrec)
	ld.d	$a0, $a0, %pc_lo12(lrec)
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	vld	$vr0, $sp, 280
	slli.d	$a1, $t1, 2
	vstx	$vr0, $a0, $a1
	ld.d	$a0, $s6, 0
.LBB5_58:
	ldptr.w	$a1, $a0, 15260
	beqz	$a1, .LBB5_60
# %bb.59:                               # %.preheader242
	ldptr.d	$a0, $a0, 14176
	pcalau12i	$a1, %pc_hi20(fadjust4x4)
	ld.d	$a1, $a1, %pc_lo12(fadjust4x4)
	ld.d	$a0, $a0, 8
	slli.d	$a2, $s3, 3
	ldx.d	$a3, $a1, $a2
	ldx.d	$a0, $a0, $a2
	slli.d	$a2, $fp, 2
	ldx.d	$a4, $a3, $a2
	alsl.d	$a3, $fp, $a3, 2
	stx.d	$a4, $a0, $a2
	ld.d	$a3, $a3, 8
	alsl.d	$a0, $fp, $a0, 2
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
.LBB5_60:                               # %.loopexit
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	b	.LBB5_62
.LBB5_61:                               # %.preheader
	ld.d	$s1, $s6, 0
	slli.d	$a1, $s5, 9
	add.d	$a1, $s1, $a1
	slli.d	$a2, $s3, 5
	add.d	$a2, $s1, $a2
	pcalau12i	$a3, %pc_hi20(imgY_org)
	ld.d	$a4, $a3, %pc_lo12(imgY_org)
	lu12i.w	$s2, 3
	ori	$a3, $s2, 336
	add.d	$t3, $a2, $a3
	ld.hu	$a6, $a1, 208
	slli.d	$a3, $s4, 3
	ldx.d	$t4, $a4, $a3
	slli.d	$a5, $fp, 1
	stx.h	$a6, $t3, $a5
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	slli.d	$a3, $a0, 1
	ldx.hu	$a7, $t4, $a3
	alsl.d	$t1, $s4, $a4, 3
	ld.hu	$t2, $a1, 210
	sub.d	$a4, $a7, $a6
	stptr.w	$a4, $s1, 13136
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
	stptr.w	$t2, $s1, 13140
	ld.hu	$t6, $a1, 214
	sub.d	$t2, $t7, $t5
	stptr.w	$t2, $s1, 13144
	addi.d	$t2, $a5, 6
	stx.h	$t6, $t3, $t2
	addi.d	$t3, $a3, 6
	ldx.hu	$t4, $t4, $t3
	ld.hu	$t5, $a1, 240
	ori	$t7, $s2, 368
	add.d	$t7, $a2, $t7
	ld.d	$t8, $t1, 8
	stx.h	$t5, $t7, $a5
	move	$a0, $fp
	ld.hu	$fp, $a1, 242
	sub.d	$t4, $t4, $t6
	ldx.hu	$t6, $t8, $a3
	stptr.w	$t4, $s1, 13148
	stx.h	$fp, $t7, $a6
	ld.hu	$t4, $a1, 244
	sub.d	$t5, $t6, $t5
	ldx.hu	$t6, $t8, $a7
	stptr.w	$t5, $s1, 13200
	stx.h	$t4, $t7, $t0
	ldx.hu	$t5, $t8, $a4
	sub.d	$t6, $t6, $fp
	ld.hu	$fp, $a1, 246
	stptr.w	$t6, $s1, 13204
	sub.d	$t4, $t5, $t4
	stptr.w	$t4, $s1, 13208
	stx.h	$fp, $t7, $t2
	ldx.hu	$t4, $t8, $t3
	ld.hu	$t5, $a1, 272
	ori	$t6, $s2, 400
	add.d	$t6, $a2, $t6
	ld.d	$t7, $t1, 16
	stx.h	$t5, $t6, $a5
	ld.hu	$t8, $a1, 274
	sub.d	$t4, $t4, $fp
	ldx.hu	$fp, $t7, $a3
	stptr.w	$t4, $s1, 13212
	stx.h	$t8, $t6, $a6
	ld.hu	$t4, $a1, 276
	sub.d	$t5, $fp, $t5
	stptr.w	$t5, $s1, 13264
	ldx.hu	$t5, $t7, $a7
	stx.h	$t4, $t6, $t0
	ldx.hu	$fp, $t7, $a4
	ld.hu	$s0, $a1, 278
	sub.d	$t5, $t5, $t8
	stptr.w	$t5, $s1, 13268
	sub.d	$t4, $fp, $t4
	stx.h	$s0, $t6, $t2
	ldx.hu	$t5, $t7, $t3
	ld.hu	$t6, $a1, 304
	ori	$t7, $s2, 432
	add.d	$a2, $a2, $t7
	ld.d	$t1, $t1, 24
	stx.h	$t6, $a2, $a5
	ld.hu	$a5, $a1, 306
	stptr.w	$t4, $s1, 13272
	sub.d	$t4, $t5, $s0
	ldx.hu	$a3, $t1, $a3
	stx.h	$a5, $a2, $a6
	ld.hu	$a6, $a1, 308
	stptr.w	$t4, $s1, 13276
	sub.d	$a3, $a3, $t6
	ldx.hu	$a7, $t1, $a7
	stx.h	$a6, $a2, $t0
	ld.hu	$a1, $a1, 310
	stptr.w	$a3, $s1, 13328
	sub.d	$a3, $a7, $a5
	ldx.hu	$a4, $t1, $a4
	stx.h	$a1, $a2, $t2
	ldx.hu	$a2, $t1, $t3
	stptr.w	$a3, $s1, 13332
	sub.d	$a3, $a4, $a6
	stptr.w	$a3, $s1, 13336
	sub.d	$a1, $a2, $a1
	stptr.w	$a1, $s1, 13340
	addi.d	$a2, $sp, 364
	ori	$a3, $zero, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(dct_luma)
	jirl	$ra, $ra, 0
.LBB5_62:                               # %.loopexit
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
	.globl	Mode_Decision_for_8x8IntraBlocks # -- Begin function Mode_Decision_for_8x8IntraBlocks
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
	move	$fp, $a1
	fmov.d	$fs0, $fa0
	move	$s0, $a0
	vldi	$vr0, -1000
	lu12i.w	$a0, -451308
	ori	$a0, $a0, 3644
	lu32i.d	$a0, -420
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa1, $a0
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
	.globl	Mode_Decision_for_Intra4x4Macroblock # -- Begin function Mode_Decision_for_Intra4x4Macroblock
	.p2align	5
	.type	Mode_Decision_for_Intra4x4Macroblock,@function
Mode_Decision_for_Intra4x4Macroblock:   # @Mode_Decision_for_Intra4x4Macroblock
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
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	move	$fp, $a0
	fmov.d	$fs0, $fa0
	st.w	$zero, $a0, 0
	vldi	$vr0, -1000
	lu12i.w	$a0, -451308
	ori	$a0, $a0, 3644
	lu32i.d	$a0, -420
	lu52i.d	$a0, $a0, 1021
	movgr2fr.d	$fa1, $a0
	fmadd.d	$fa0, $fs0, $fa0, $fa1
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s3, $fa0
	addi.d	$a2, $sp, 12
	move	$a0, $zero
	move	$a1, $zero
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	move	$s0, $a0
	add.d	$s2, $a1, $s3
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 12
	move	$a0, $zero
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	move	$s1, $a0
	add.d	$s5, $s2, $a1
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 12
	ori	$s4, $zero, 2
	move	$a0, $zero
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	move	$s2, $a0
	add.d	$s5, $s5, $a1
	ori	$a1, $zero, 3
	addi.d	$a2, $sp, 12
	move	$a0, $zero
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	or	$a0, $a0, $s2
	or	$a0, $a0, $s1
	ld.w	$a1, $sp, 12
	ld.w	$a2, $fp, 0
	or	$a0, $a0, $s0
	sltu	$s2, $zero, $a0
	add.d	$a0, $s5, $a1
	add.d	$a0, $a0, $a2
	st.w	$a0, $fp, 0
	ori	$a0, $zero, 1
	addi.d	$a2, $sp, 12
	move	$a1, $zero
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	sltu	$s5, $zero, $a0
	add.d	$s1, $a1, $s3
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 12
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	move	$s0, $a0
	add.d	$s6, $s1, $a1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 12
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	move	$s1, $a0
	add.d	$s6, $s6, $a1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	addi.d	$a2, $sp, 12
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	or	$a0, $a0, $s1
	or	$a0, $a0, $s0
	add.d	$a1, $s6, $a1
	sltui	$a0, $a0, 1
	masknez	$a2, $s4, $a0
	slli.d	$a3, $s5, 1
	ld.w	$a4, $fp, 0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	or	$s2, $a0, $s2
	add.d	$a0, $a1, $a4
	st.w	$a0, $fp, 0
	ori	$a0, $zero, 2
	addi.d	$a2, $sp, 12
	move	$a1, $zero
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	sltu	$s4, $zero, $a0
	add.d	$s1, $a1, $s3
	ori	$a0, $zero, 2
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 12
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	move	$s0, $a0
	add.d	$s5, $s1, $a1
	ori	$a0, $zero, 2
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 12
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	move	$s1, $a0
	add.d	$s5, $s5, $a1
	ori	$a0, $zero, 2
	ori	$a1, $zero, 3
	addi.d	$a2, $sp, 12
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	or	$a0, $a0, $s1
	or	$a0, $a0, $s0
	add.d	$a1, $s5, $a1
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 4
	masknez	$a2, $a2, $a0
	slli.d	$a3, $s4, 2
	ld.w	$a4, $fp, 0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	or	$s2, $a0, $s2
	add.d	$a0, $a1, $a4
	st.w	$a0, $fp, 0
	ori	$a0, $zero, 3
	addi.d	$a2, $sp, 12
	move	$a1, $zero
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	sltu	$s4, $zero, $a0
	add.d	$s1, $a1, $s3
	ori	$a0, $zero, 3
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 12
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	move	$s0, $a0
	add.d	$s3, $s1, $a1
	ori	$a0, $zero, 3
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 12
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	move	$s1, $a0
	add.d	$s3, $s3, $a1
	ori	$a0, $zero, 3
	ori	$a1, $zero, 3
	addi.d	$a2, $sp, 12
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_4x4IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	or	$a0, $a0, $s1
	or	$a0, $a0, $s0
	add.d	$a1, $s3, $a1
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 8
	masknez	$a2, $a2, $a0
	slli.d	$a3, $s4, 3
	ld.w	$a4, $fp, 0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	or	$a0, $a0, $s2
	add.d	$a1, $a1, $a4
	st.w	$a1, $fp, 0
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
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
.Lfunc_end7:
	.size	Mode_Decision_for_Intra4x4Macroblock, .Lfunc_end7-Mode_Decision_for_Intra4x4Macroblock
                                        # -- End function
	.globl	RDCost_for_8x8blocks            # -- Begin function RDCost_for_8x8blocks
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
	bltz	$a3, .LBB8_15
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
	bltu	$a1, $a0, .LBB8_15
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
	bne	$a0, $s3, .LBB8_16
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
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ldptr.w	$a1, $a1, 4008
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	beqz	$a1, .LBB8_23
.LBB8_14:
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
	beqz	$s3, .LBB8_24
	b	.LBB8_36
.LBB8_15:
	lu12i.w	$a0, 494424
	ori	$a0, $a0, 3136
	lu32i.d	$a0, 372509
	lu52i.d	$a0, $a0, 1089
	movgr2fr.d	$fa0, $a0
	b	.LBB8_41
.LBB8_16:                               # %.preheader
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	ldptr.w	$a0, $a1, 4728
	blez	$a0, .LBB8_21
# %bb.17:                               # %.lr.ph
	pcalau12i	$s6, %pc_hi20(imgY_org)
	pcalau12i	$a0, %got_pc_hi20(decs)
	ld.d	$s7, $a0, %got_pc_lo12(decs)
	move	$s3, $zero
	move	$s4, $zero
	vrepli.b	$vr4, 0
	vst	$vr4, $sp, 96                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB8_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_19 Depth 2
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
.LBB8_19:                               #   Parent Loop BB8_18 Depth=1
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
	blt	$a2, $a1, .LBB8_19
# %bb.20:                               #   in Loop: Header=BB8_18 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ldptr.w	$a0, $a1, 4728
	addi.d	$s3, $s3, 1
	blt	$s3, $a0, .LBB8_18
	b	.LBB8_22
.LBB8_21:                               # %.preheader.._crit_edge_crit_edge
	move	$s4, $zero
.LBB8_22:                               # %._crit_edge
	div.d	$s1, $s4, $a0
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ldptr.w	$a1, $a1, 4008
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	bnez	$a1, .LBB8_14
.LBB8_23:
	addi.d	$a2, $sp, 168
	addi.d	$a3, $sp, 172
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ue_linfo)
	jirl	$ra, $ra, 0
	ld.w	$s2, $sp, 168
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	bnez	$s3, .LBB8_36
.LBB8_24:
	ld.d	$a1, $s5, 0
	lu12i.w	$a0, 15
	move	$a2, $a3
	bstrins.d	$a2, $zero, 1, 1
	ori	$s3, $a0, 4093
	bnez	$a2, .LBB8_29
# %bb.25:
	ldptr.w	$a0, $a1, 14456
	ori	$a2, $zero, 2
	blt	$a0, $a2, .LBB8_29
# %bb.26:
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
	ldptr.w	$a0, $a1, 14460
	ori	$a2, $zero, 2
	and	$s3, $a3, $s3
	bge	$a0, $a2, .LBB8_30
.LBB8_27:
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	move	$s4, $s8
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	bnez	$s3, .LBB8_34
.LBB8_28:
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
	addi.d	$a0, $a3, -1
	bstrpick.d	$a0, $a0, 15, 0
	ori	$a1, $zero, 1
	bgeu	$a1, $a0, .LBB8_35
	b	.LBB8_36
.LBB8_29:
	move	$s8, $s4
	ldptr.w	$a0, $a1, 14460
	ori	$a2, $zero, 2
	and	$s3, $a3, $s3
	blt	$a0, $a2, .LBB8_27
.LBB8_30:
	addi.d	$a0, $a3, -1
	bstrpick.d	$a2, $a0, 15, 0
	ori	$a0, $zero, 1
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	move	$s4, $s8
	bltu	$a0, $a2, .LBB8_33
# %bb.31:
	ld.w	$a1, $a1, 20
	bne	$a1, $a0, .LBB8_33
# %bb.32:
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
.LBB8_33:
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	beqz	$s3, .LBB8_28
.LBB8_34:
	addi.d	$a0, $a3, -1
	bstrpick.d	$a0, $a0, 15, 0
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB8_36
.LBB8_35:
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
.LBB8_36:
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB8_38
# %bb.37:
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
	bnez	$a0, .LBB8_39
	b	.LBB8_40
.LBB8_38:
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $s4, 0
	beqz	$a0, .LBB8_40
.LBB8_39:
	ld.w	$a2, $s6, 472
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeLumaCoeff8x8)
	jirl	$ra, $ra, 0
	add.w	$s2, $a0, $s2
.LBB8_40:
	movgr2fr.d	$fa0, $s1
	ffint.d.l	$fa0, $fa0
	movgr2fr.w	$fa1, $s2
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fa0, $fs0, $fa1, $fa0
.LBB8_41:
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
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a2, $a1, %got_pc_lo12(img)
	ld.d	$a6, $a2, 0
	ld.w	$a1, $a6, 12
	ldptr.d	$a3, $a6, 14224
	ori	$a4, $zero, 536
	mul.d	$a1, $a1, $a4
	add.d	$a1, $a3, $a1
	ld.w	$a7, $a6, 20
	st.w	$a0, $a1, 72
	ori	$a4, $zero, 1
	pcalau12i	$a3, %pc_hi20(direct_ref_idx)
	bne	$a0, $a4, .LBB10_70
# %bb.1:                                # %.thread
	lu12i.w	$a4, 3
	ori	$a4, $a4, 2122
	ldx.h	$a5, $a6, $a4
	addi.d	$a4, $a1, 480
	st.h	$a5, $a1, 480
.LBB10_2:                               # %.loopexit240
	pcalau12i	$a5, %pc_hi20(best8x8pdir)
	addi.d	$a5, $a5, %pc_lo12(best8x8pdir)
	slli.d	$t0, $a0, 2
	st.w	$a0, $a1, 376
	ldx.b	$t0, $a5, $t0
	alsl.d	$a5, $a0, $a5, 2
	st.w	$t0, $a1, 392
	st.w	$a0, $a1, 380
	ld.b	$t0, $a5, 1
	st.w	$t0, $a1, 396
	st.w	$a0, $a1, 384
	ld.b	$t0, $a5, 2
	st.w	$t0, $a1, 400
	st.w	$a0, $a1, 388
	ld.b	$a5, $a5, 3
.LBB10_3:                               # %.loopexit240.thread338
	st.w	$a5, $a1, 404
	ori	$a5, $zero, 1
	pcalau12i	$t0, %pc_hi20(best8x8fwref)
	addi.d	$t0, $t0, %pc_lo12(best8x8fwref)
	bne	$a7, $a5, .LBB10_100
.LBB10_4:                               # %.preheader
	pcalau12i	$a6, %pc_hi20(best8x8pdir)
	addi.d	$a6, $a6, %pc_lo12(best8x8pdir)
	alsl.d	$a6, $a0, $a6, 2
	alsl.d	$a7, $a0, $t0, 2
	pcalau12i	$t0, %pc_hi20(best8x8bwref)
	addi.d	$t0, $t0, %pc_lo12(best8x8bwref)
	alsl.d	$t0, $a0, $t0, 2
	ori	$t1, $zero, 8
	pcalau12i	$t2, %pc_hi20(best8x8mode)
	addi.d	$t2, $t2, %pc_lo12(best8x8mode)
	pcalau12i	$t3, %got_pc_hi20(enc_picture)
	ld.d	$t3, $t3, %got_pc_lo12(enc_picture)
	move	$t4, $zero
	ori	$t5, $zero, 4
	b	.LBB10_7
.LBB10_5:                               #   in Loop: Header=BB10_7 Depth=1
	ld.d	$t8, $a3, %pc_lo12(direct_ref_idx)
	ld.d	$fp, $t3, 0
	ld.d	$t8, $t8, 0
	ldptr.d	$fp, $fp, 6488
	ldx.d	$t8, $t8, $t6
	ld.d	$fp, $fp, 0
	ldx.b	$t8, $t8, $t7
	ldx.d	$fp, $fp, $t6
	stx.b	$t8, $fp, $t7
	ld.d	$t8, $a3, %pc_lo12(direct_ref_idx)
	ld.d	$t8, $t8, 8
	ldx.d	$t8, $t8, $t6
	ldx.bu	$s0, $t8, $t7
	.p2align	4, , 16
.LBB10_6:                               # %.split269.us
                                        #   in Loop: Header=BB10_7 Depth=1
	ld.d	$t8, $t3, 0
	ldptr.d	$t8, $t8, 6488
	ld.d	$t8, $t8, 8
	ldx.d	$t6, $t8, $t6
	addi.w	$t4, $t4, 1
	stx.b	$s0, $t6, $t7
	beq	$t4, $t5, .LBB10_81
.LBB10_7:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t6, $a2, 0
	ld.w	$t7, $t6, 172
	ld.w	$t8, $t6, 168
	add.w	$t6, $t4, $t7
	andi	$t7, $t4, 2
	slli.d	$t6, $t6, 3
	bne	$a0, $t1, .LBB10_14
# %bb.8:                                # %.split.us.preheader
                                        #   in Loop: Header=BB10_7 Depth=1
	slli.d	$fp, $t7, 1
	ldx.hu	$s0, $t2, $fp
	alsl.d	$fp, $t7, $t2, 1
	beqz	$s0, .LBB10_49
# %bb.9:                                # %.thread231.us
                                        #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$s1, $a6, $t7
	ori	$s0, $zero, 255
	andi	$s2, $s1, 253
	ori	$s1, $zero, 255
	bnez	$s2, .LBB10_11
# %bb.10:                               #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$s1, $a7, $t7
.LBB10_11:                              #   in Loop: Header=BB10_7 Depth=1
	ld.d	$s2, $t3, 0
	ldptr.d	$s2, $s2, 6488
	ld.d	$s2, $s2, 0
	ldx.d	$s2, $s2, $t6
	stx.b	$s1, $s2, $t8
	ldx.bu	$s1, $a6, $t7
	addi.d	$s1, $s1, -1
	bltu	$a5, $s1, .LBB10_50
# %bb.12:                               #   in Loop: Header=BB10_7 Depth=1
	ld.hu	$s1, $fp, 0
	beqz	$s1, .LBB10_50
# %bb.13:                               #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$s0, $t0, $t7
	b	.LBB10_50
	.p2align	4, , 16
.LBB10_14:                              # %.split.preheader
                                        #   in Loop: Header=BB10_7 Depth=1
	bne	$a0, $a5, .LBB10_19
# %bb.15:                               #   in Loop: Header=BB10_7 Depth=1
	ld.hu	$fp, $a4, 0
	beqz	$fp, .LBB10_19
# %bb.16:                               #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$fp, $a6, $t7
	andi	$s0, $fp, 253
	bnez	$s0, .LBB10_19
# %bb.17:                               #   in Loop: Header=BB10_7 Depth=1
	addi.d	$fp, $fp, -1
	bltu	$a5, $fp, .LBB10_19
# %bb.18:                               # %.split.1.thread
                                        #   in Loop: Header=BB10_7 Depth=1
	ld.d	$fp, $t3, 0
	ldptr.d	$fp, $fp, 6488
	ld.d	$fp, $fp, 0
	ldx.d	$fp, $fp, $t6
	stx.b	$zero, $fp, $t8
	ld.d	$fp, $t3, 0
	ldptr.d	$fp, $fp, 6488
	ld.d	$fp, $fp, 8
	ldx.d	$fp, $fp, $t6
	stx.b	$zero, $fp, $t8
	ld.d	$t8, $a2, 0
	ld.w	$t8, $t8, 168
	addi.w	$t8, $t8, 1
	b	.LBB10_24
	.p2align	4, , 16
.LBB10_19:                              # %.thread231
                                        #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$s0, $a6, $t7
	ori	$fp, $zero, 255
	andi	$s1, $s0, 253
	ori	$s0, $zero, 255
	bnez	$s1, .LBB10_21
# %bb.20:                               #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$s0, $a7, $t7
.LBB10_21:                              #   in Loop: Header=BB10_7 Depth=1
	ld.d	$s1, $t3, 0
	ldptr.d	$s1, $s1, 6488
	ld.d	$s1, $s1, 0
	ldx.d	$s1, $s1, $t6
	stx.b	$s0, $s1, $t8
	ldx.bu	$s0, $a6, $t7
	addi.d	$s0, $s0, -1
	bltu	$a5, $s0, .LBB10_23
# %bb.22:                               #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$fp, $t0, $t7
.LBB10_23:                              # %.split.1
                                        #   in Loop: Header=BB10_7 Depth=1
	ld.d	$s0, $t3, 0
	ldptr.d	$s0, $s0, 6488
	ld.d	$s0, $s0, 8
	ldx.d	$s0, $s0, $t6
	stx.b	$fp, $s0, $t8
	ld.d	$t8, $a2, 0
	ld.w	$t8, $t8, 168
	addi.w	$t8, $t8, 1
	bne	$a0, $a5, .LBB10_28
.LBB10_24:                              #   in Loop: Header=BB10_7 Depth=1
	ld.hu	$fp, $a4, 0
	beqz	$fp, .LBB10_28
# %bb.25:                               #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$fp, $a6, $t7
	andi	$s0, $fp, 253
	bnez	$s0, .LBB10_28
# %bb.26:                               #   in Loop: Header=BB10_7 Depth=1
	addi.d	$fp, $fp, -1
	bltu	$a5, $fp, .LBB10_28
# %bb.27:                               # %.split.2.thread
                                        #   in Loop: Header=BB10_7 Depth=1
	ld.d	$fp, $t3, 0
	ldptr.d	$fp, $fp, 6488
	ld.d	$fp, $fp, 0
	ldx.d	$fp, $fp, $t6
	stx.b	$zero, $fp, $t8
	ld.d	$fp, $t3, 0
	ldptr.d	$fp, $fp, 6488
	ld.d	$fp, $fp, 8
	ldx.d	$fp, $fp, $t6
	stx.b	$zero, $fp, $t8
	ld.d	$t8, $a2, 0
	ld.w	$t8, $t8, 168
	addi.w	$fp, $t8, 2
	ori	$t8, $t7, 1
	b	.LBB10_33
	.p2align	4, , 16
.LBB10_28:                              # %.thread231.1
                                        #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$s0, $a6, $t7
	ori	$fp, $zero, 255
	andi	$s1, $s0, 253
	ori	$s0, $zero, 255
	bnez	$s1, .LBB10_30
# %bb.29:                               #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$s0, $a7, $t7
.LBB10_30:                              #   in Loop: Header=BB10_7 Depth=1
	ld.d	$s1, $t3, 0
	ldptr.d	$s1, $s1, 6488
	ld.d	$s1, $s1, 0
	ldx.d	$s1, $s1, $t6
	stx.b	$s0, $s1, $t8
	ldx.bu	$s0, $a6, $t7
	addi.d	$s0, $s0, -1
	bltu	$a5, $s0, .LBB10_32
# %bb.31:                               #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$fp, $t0, $t7
.LBB10_32:                              # %.split.2
                                        #   in Loop: Header=BB10_7 Depth=1
	ld.d	$s0, $t3, 0
	ldptr.d	$s0, $s0, 6488
	ld.d	$s0, $s0, 8
	ldx.d	$s0, $s0, $t6
	stx.b	$fp, $s0, $t8
	ld.d	$t8, $a2, 0
	ld.w	$t8, $t8, 168
	addi.w	$fp, $t8, 2
	ori	$t8, $t7, 1
	bne	$a0, $a5, .LBB10_37
.LBB10_33:                              #   in Loop: Header=BB10_7 Depth=1
	ld.hu	$t7, $a4, 0
	beqz	$t7, .LBB10_37
# %bb.34:                               #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$t7, $a6, $t8
	andi	$s0, $t7, 253
	bnez	$s0, .LBB10_37
# %bb.35:                               #   in Loop: Header=BB10_7 Depth=1
	addi.d	$t7, $t7, -1
	bltu	$a5, $t7, .LBB10_37
# %bb.36:                               # %.split.3.thread
                                        #   in Loop: Header=BB10_7 Depth=1
	ld.d	$t7, $t3, 0
	ldptr.d	$t7, $t7, 6488
	ld.d	$t7, $t7, 0
	ldx.d	$t7, $t7, $t6
	stx.b	$zero, $t7, $fp
	ld.d	$t7, $t3, 0
	ldptr.d	$t7, $t7, 6488
	ld.d	$t7, $t7, 8
	ldx.d	$t7, $t7, $t6
	stx.b	$zero, $t7, $fp
	ld.d	$t7, $a2, 0
	ld.w	$t7, $t7, 168
	addi.w	$t7, $t7, 3
	b	.LBB10_42
	.p2align	4, , 16
.LBB10_37:                              # %.thread231.2
                                        #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$s0, $a6, $t8
	ori	$t7, $zero, 255
	andi	$s1, $s0, 253
	ori	$s0, $zero, 255
	bnez	$s1, .LBB10_39
# %bb.38:                               #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$s0, $a7, $t8
.LBB10_39:                              #   in Loop: Header=BB10_7 Depth=1
	ld.d	$s1, $t3, 0
	ldptr.d	$s1, $s1, 6488
	ld.d	$s1, $s1, 0
	ldx.d	$s1, $s1, $t6
	stx.b	$s0, $s1, $fp
	ldx.bu	$s0, $a6, $t8
	addi.d	$s0, $s0, -1
	bltu	$a5, $s0, .LBB10_41
# %bb.40:                               #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$t7, $t0, $t8
.LBB10_41:                              # %.split.3
                                        #   in Loop: Header=BB10_7 Depth=1
	ld.d	$s0, $t3, 0
	ldptr.d	$s0, $s0, 6488
	ld.d	$s0, $s0, 8
	ldx.d	$s0, $s0, $t6
	stx.b	$t7, $s0, $fp
	ld.d	$t7, $a2, 0
	ld.w	$t7, $t7, 168
	addi.w	$t7, $t7, 3
	bne	$a0, $a5, .LBB10_46
.LBB10_42:                              #   in Loop: Header=BB10_7 Depth=1
	ld.hu	$fp, $a4, 0
	beqz	$fp, .LBB10_46
# %bb.43:                               #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$fp, $a6, $t8
	andi	$s0, $fp, 253
	bnez	$s0, .LBB10_46
# %bb.44:                               #   in Loop: Header=BB10_7 Depth=1
	addi.d	$fp, $fp, -1
	bltu	$a5, $fp, .LBB10_46
# %bb.45:                               #   in Loop: Header=BB10_7 Depth=1
	ld.d	$t8, $t3, 0
	ldptr.d	$t8, $t8, 6488
	ld.d	$t8, $t8, 0
	ldx.d	$t8, $t8, $t6
	move	$s0, $zero
	stx.b	$zero, $t8, $t7
	b	.LBB10_6
	.p2align	4, , 16
.LBB10_46:                              # %.thread231.3
                                        #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$fp, $a6, $t8
	ori	$s0, $zero, 255
	andi	$s1, $fp, 253
	ori	$fp, $zero, 255
	bnez	$s1, .LBB10_48
# %bb.47:                               #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$fp, $a7, $t8
.LBB10_48:                              #   in Loop: Header=BB10_7 Depth=1
	ld.d	$s1, $t3, 0
	ldptr.d	$s1, $s1, 6488
	ld.d	$s1, $s1, 0
	ldx.d	$s1, $s1, $t6
	stx.b	$fp, $s1, $t7
	ldx.bu	$fp, $a6, $t8
	addi.d	$fp, $fp, -1
	bltu	$a5, $fp, .LBB10_6
	b	.LBB10_69
.LBB10_49:                              #   in Loop: Header=BB10_7 Depth=1
	ld.d	$s0, $a3, %pc_lo12(direct_ref_idx)
	ld.d	$s1, $t3, 0
	ld.d	$s0, $s0, 0
	ldptr.d	$s1, $s1, 6488
	ldx.d	$s0, $s0, $t6
	ld.d	$s1, $s1, 0
	ldx.b	$s0, $s0, $t8
	ldx.d	$s1, $s1, $t6
	stx.b	$s0, $s1, $t8
	ld.d	$s0, $a3, %pc_lo12(direct_ref_idx)
	ld.d	$s0, $s0, 8
	ldx.d	$s0, $s0, $t6
	ldx.bu	$s0, $s0, $t8
.LBB10_50:                              # %.split.us.1
                                        #   in Loop: Header=BB10_7 Depth=1
	ld.d	$s1, $t3, 0
	ldptr.d	$s1, $s1, 6488
	ld.d	$s1, $s1, 8
	ldx.d	$s1, $s1, $t6
	stx.b	$s0, $s1, $t8
	ld.d	$t8, $a2, 0
	ld.w	$t8, $t8, 168
	ld.hu	$s0, $fp, 0
	addi.w	$t8, $t8, 1
	beqz	$s0, .LBB10_56
# %bb.51:                               # %.thread231.us.1
                                        #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$s1, $a6, $t7
	ori	$s0, $zero, 255
	andi	$s2, $s1, 253
	ori	$s1, $zero, 255
	bnez	$s2, .LBB10_53
# %bb.52:                               #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$s1, $a7, $t7
.LBB10_53:                              #   in Loop: Header=BB10_7 Depth=1
	ld.d	$s2, $t3, 0
	ldptr.d	$s2, $s2, 6488
	ld.d	$s2, $s2, 0
	ldx.d	$s2, $s2, $t6
	stx.b	$s1, $s2, $t8
	ldx.bu	$s1, $a6, $t7
	addi.d	$s1, $s1, -1
	bltu	$a5, $s1, .LBB10_57
# %bb.54:                               #   in Loop: Header=BB10_7 Depth=1
	ld.hu	$fp, $fp, 0
	beqz	$fp, .LBB10_57
# %bb.55:                               #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$s0, $t0, $t7
	b	.LBB10_57
.LBB10_56:                              #   in Loop: Header=BB10_7 Depth=1
	ld.d	$fp, $a3, %pc_lo12(direct_ref_idx)
	ld.d	$s0, $t3, 0
	ld.d	$fp, $fp, 0
	ldptr.d	$s0, $s0, 6488
	ldx.d	$fp, $fp, $t6
	ld.d	$s0, $s0, 0
	ldx.b	$fp, $fp, $t8
	ldx.d	$s0, $s0, $t6
	stx.b	$fp, $s0, $t8
	ld.d	$fp, $a3, %pc_lo12(direct_ref_idx)
	ld.d	$fp, $fp, 8
	ldx.d	$fp, $fp, $t6
	ldx.bu	$s0, $fp, $t8
.LBB10_57:                              # %.split.us.2
                                        #   in Loop: Header=BB10_7 Depth=1
	ld.d	$fp, $t3, 0
	ldptr.d	$fp, $fp, 6488
	ld.d	$fp, $fp, 8
	ldx.d	$fp, $fp, $t6
	stx.b	$s0, $fp, $t8
	ld.d	$t8, $a2, 0
	ld.w	$fp, $t8, 168
	addi.d	$t8, $t7, 1
	slli.d	$t7, $t8, 1
	ldx.hu	$s0, $t2, $t7
	addi.w	$t7, $fp, 2
	alsl.d	$fp, $t8, $t2, 1
	beqz	$s0, .LBB10_63
# %bb.58:                               # %.thread231.us.2
                                        #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$s1, $a6, $t8
	ori	$s0, $zero, 255
	andi	$s2, $s1, 253
	ori	$s1, $zero, 255
	bnez	$s2, .LBB10_60
# %bb.59:                               #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$s1, $a7, $t8
.LBB10_60:                              #   in Loop: Header=BB10_7 Depth=1
	ld.d	$s2, $t3, 0
	ldptr.d	$s2, $s2, 6488
	ld.d	$s2, $s2, 0
	ldx.d	$s2, $s2, $t6
	stx.b	$s1, $s2, $t7
	ldx.bu	$s1, $a6, $t8
	addi.d	$s1, $s1, -1
	bltu	$a5, $s1, .LBB10_64
# %bb.61:                               #   in Loop: Header=BB10_7 Depth=1
	ld.hu	$s1, $fp, 0
	beqz	$s1, .LBB10_64
# %bb.62:                               #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$s0, $t0, $t8
	b	.LBB10_64
.LBB10_63:                              #   in Loop: Header=BB10_7 Depth=1
	ld.d	$s0, $a3, %pc_lo12(direct_ref_idx)
	ld.d	$s1, $t3, 0
	ld.d	$s0, $s0, 0
	ldptr.d	$s1, $s1, 6488
	ldx.d	$s0, $s0, $t6
	ld.d	$s1, $s1, 0
	ldx.b	$s0, $s0, $t7
	ldx.d	$s1, $s1, $t6
	stx.b	$s0, $s1, $t7
	ld.d	$s0, $a3, %pc_lo12(direct_ref_idx)
	ld.d	$s0, $s0, 8
	ldx.d	$s0, $s0, $t6
	ldx.bu	$s0, $s0, $t7
.LBB10_64:                              # %.split.us.3
                                        #   in Loop: Header=BB10_7 Depth=1
	ld.d	$s1, $t3, 0
	ldptr.d	$s1, $s1, 6488
	ld.d	$s1, $s1, 8
	ldx.d	$s1, $s1, $t6
	stx.b	$s0, $s1, $t7
	ld.d	$t7, $a2, 0
	ld.w	$t7, $t7, 168
	ld.hu	$s0, $fp, 0
	addi.w	$t7, $t7, 3
	beqz	$s0, .LBB10_5
# %bb.65:                               # %.thread231.us.3
                                        #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$s1, $a6, $t8
	ori	$s0, $zero, 255
	andi	$s2, $s1, 253
	ori	$s1, $zero, 255
	bnez	$s2, .LBB10_67
# %bb.66:                               #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$s1, $a7, $t8
.LBB10_67:                              #   in Loop: Header=BB10_7 Depth=1
	ld.d	$s2, $t3, 0
	ldptr.d	$s2, $s2, 6488
	ld.d	$s2, $s2, 0
	ldx.d	$s2, $s2, $t6
	stx.b	$s1, $s2, $t7
	ldx.bu	$s1, $a6, $t8
	addi.d	$s1, $s1, -1
	bltu	$a5, $s1, .LBB10_6
# %bb.68:                               #   in Loop: Header=BB10_7 Depth=1
	ld.hu	$fp, $fp, 0
	beqz	$fp, .LBB10_6
.LBB10_69:                              #   in Loop: Header=BB10_7 Depth=1
	ldx.bu	$s0, $t0, $t8
	b	.LBB10_6
.LBB10_70:
	ori	$a4, $zero, 14
	st.h	$zero, $a1, 480
	bltu	$a4, $a0, .LBB10_175
# %bb.71:
	addi.d	$a4, $a1, 480
	slli.d	$a5, $a0, 2
	pcalau12i	$t0, %pc_hi20(.LJTI10_0)
	addi.d	$t0, $t0, %pc_lo12(.LJTI10_0)
	ldx.w	$a5, $t0, $a5
	add.d	$a5, $t0, $a5
	jr	$a5
.LBB10_72:                              # %.preheader241
	pcalau12i	$a0, %pc_hi20(direct_pdir)
	ld.d	$a0, $a0, %pc_lo12(direct_pdir)
	ori	$a4, $zero, 1
	st.w	$zero, $a1, 376
	bne	$a7, $a4, .LBB10_172
# %bb.73:                               # %.thread341
	ld.w	$a4, $a6, 172
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a0, $a4
	ld.w	$a5, $a6, 168
	ldx.b	$a4, $a4, $a5
	st.w	$a4, $a1, 392
	st.w	$zero, $a1, 380
	ld.w	$a4, $a6, 172
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a0, $a4
	ld.w	$a5, $a6, 168
	add.d	$a4, $a4, $a5
	ld.b	$a4, $a4, 2
	st.w	$a4, $a1, 396
	st.w	$zero, $a1, 384
	ld.w	$a4, $a6, 172
	alsl.d	$a4, $a4, $a0, 3
	ld.d	$a4, $a4, 16
	ld.w	$a5, $a6, 168
	ldx.b	$a4, $a4, $a5
	st.w	$a4, $a1, 400
	st.w	$zero, $a1, 388
	ld.w	$a4, $a6, 172
	alsl.d	$a0, $a4, $a0, 3
	ld.d	$a0, $a0, 16
	ld.w	$a4, $a6, 168
	add.d	$a0, $a0, $a4
	ld.b	$a0, $a0, 2
	st.w	$a0, $a1, 404
	b	.LBB10_79
.LBB10_74:                              # %.preheader246
	vrepli.w	$vr0, 11
	vst	$vr0, $a1, 376
	vrepli.b	$vr0, -1
	vst	$vr0, $a1, 392
	ori	$a4, $zero, 1
	beq	$a7, $a4, .LBB10_76
	b	.LBB10_169
.LBB10_75:                              # %.preheader248
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 376
	addi.w	$a4, $zero, -1
	st.d	$a4, $a1, 392
	st.d	$a4, $a1, 400
	ori	$a4, $zero, 1
	bne	$a7, $a4, .LBB10_169
.LBB10_76:
	beqz	$a0, .LBB10_79
# %bb.77:                               # %.lr.ph262.preheader
	ld.w	$a3, $a6, 172
	addi.d	$a0, $a3, -1
	slli.d	$a3, $a3, 3
	pcalau12i	$a4, %got_pc_hi20(enc_picture)
	ld.d	$a4, $a4, %got_pc_lo12(enc_picture)
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	.p2align	4, , 16
.LBB10_78:                              # %.lr.ph262
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, 0
	ldptr.d	$a7, $a7, 6488
	ld.d	$a7, $a7, 0
	ldx.d	$a7, $a7, $a3
	ld.w	$a6, $a6, 168
	stx.w	$a5, $a7, $a6
	ld.d	$a6, $a4, 0
	ldptr.d	$a6, $a6, 6488
	ld.d	$a6, $a6, 8
	ld.d	$a7, $a2, 0
	ldx.d	$a6, $a6, $a3
	ld.w	$a7, $a7, 168
	stx.w	$a5, $a6, $a7
	ld.d	$a6, $a2, 0
	ld.w	$a7, $a6, 172
	addi.w	$a7, $a7, 3
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 8
	blt	$a0, $a7, .LBB10_78
	b	.LBB10_81
.LBB10_79:                              # %.lr.ph264.preheader
	ld.w	$a4, $a6, 172
	addi.d	$a0, $a4, -1
	slli.d	$a4, $a4, 3
	pcalau12i	$a5, %got_pc_hi20(enc_picture)
	ld.d	$a5, $a5, %got_pc_lo12(enc_picture)
	.p2align	4, , 16
.LBB10_80:                              # %.lr.ph264
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a5, 0
	ld.d	$t0, $a3, %pc_lo12(direct_ref_idx)
	ldptr.d	$a7, $a7, 6488
	ld.d	$t0, $t0, 0
	ld.d	$a7, $a7, 0
	ld.w	$a6, $a6, 168
	ldx.d	$t0, $t0, $a4
	ldx.d	$a7, $a7, $a4
	ldx.w	$t0, $t0, $a6
	stx.w	$t0, $a7, $a6
	ld.d	$a6, $a5, 0
	ld.d	$a7, $a3, %pc_lo12(direct_ref_idx)
	ldptr.d	$a6, $a6, 6488
	ld.d	$t0, $a2, 0
	ld.d	$a7, $a7, 8
	ld.d	$a6, $a6, 8
	ld.w	$t0, $t0, 168
	ldx.d	$a7, $a7, $a4
	ldx.d	$a6, $a6, $a4
	ldx.w	$a7, $a7, $t0
	stx.w	$a7, $a6, $t0
	ld.d	$a6, $a2, 0
	ld.w	$a7, $a6, 172
	addi.w	$a7, $a7, 3
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a4, 8
	blt	$a0, $a7, .LBB10_80
.LBB10_81:                              # %.loopexit233.thread340
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
	b	.LBB10_83
	.p2align	4, , 16
.LBB10_82:                              #   in Loop: Header=BB10_83 Depth=1
	stx.d	$t8, $t6, $fp
	addi.d	$t0, $t0, 1
	addi.d	$t1, $t1, 8
	addi.d	$t2, $t2, 8
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, 8
	bge	$t0, $a7, .LBB10_166
.LBB10_83:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t7, $t1, 0
	ldx.b	$t6, $t7, $a0
	move	$s1, $t5
	bltz	$t6, .LBB10_85
# %bb.84:                               #   in Loop: Header=BB10_83 Depth=1
	ld.w	$t8, $a1, 432
	slli.d	$fp, $t8, 8
	alsl.d	$t8, $t8, $fp, 3
	add.d	$t8, $a3, $t8
	slli.d	$t6, $t6, 3
	ldx.d	$s1, $t8, $t6
.LBB10_85:                              #   in Loop: Header=BB10_83 Depth=1
	ld.d	$fp, $t2, 0
	ld.d	$t8, $t3, 0
	ldx.b	$s2, $fp, $a0
	ld.d	$t6, $t4, 0
	slli.d	$s0, $a0, 3
	stx.d	$s1, $t8, $s0
	move	$s1, $t5
	bltz	$s2, .LBB10_87
# %bb.86:                               #   in Loop: Header=BB10_83 Depth=1
	ld.w	$s1, $a1, 432
	slli.d	$s3, $s1, 8
	alsl.d	$s1, $s1, $s3, 3
	add.d	$s1, $a2, $s1
	alsl.d	$s1, $s2, $s1, 3
	ld.d	$s1, $s1, 288
.LBB10_87:                              #   in Loop: Header=BB10_83 Depth=1
	stx.d	$s1, $t6, $s0
	ldx.b	$s1, $t7, $a4
	ldx.b	$s0, $fp, $a4
	move	$s2, $t5
	bltz	$s1, .LBB10_89
# %bb.88:                               #   in Loop: Header=BB10_83 Depth=1
	ld.w	$s2, $a1, 432
	slli.d	$s3, $s2, 8
	alsl.d	$s2, $s2, $s3, 3
	add.d	$s2, $a3, $s2
	slli.d	$s1, $s1, 3
	ldx.d	$s2, $s2, $s1
.LBB10_89:                              #   in Loop: Header=BB10_83 Depth=1
	slli.d	$s1, $a4, 3
	stx.d	$s2, $t8, $s1
	move	$s2, $t5
	bltz	$s0, .LBB10_91
# %bb.90:                               #   in Loop: Header=BB10_83 Depth=1
	ld.w	$s2, $a1, 432
	slli.d	$s3, $s2, 8
	alsl.d	$s2, $s2, $s3, 3
	add.d	$s2, $a2, $s2
	alsl.d	$s0, $s0, $s2, 3
	ld.d	$s2, $s0, 288
.LBB10_91:                              #   in Loop: Header=BB10_83 Depth=1
	stx.d	$s2, $t6, $s1
	ldx.b	$s1, $t7, $a5
	ldx.b	$s0, $fp, $a5
	move	$s2, $t5
	bltz	$s1, .LBB10_93
# %bb.92:                               #   in Loop: Header=BB10_83 Depth=1
	ld.w	$s2, $a1, 432
	slli.d	$s3, $s2, 8
	alsl.d	$s2, $s2, $s3, 3
	add.d	$s2, $a3, $s2
	slli.d	$s1, $s1, 3
	ldx.d	$s2, $s2, $s1
.LBB10_93:                              #   in Loop: Header=BB10_83 Depth=1
	slli.d	$s1, $a5, 3
	stx.d	$s2, $t8, $s1
	move	$s2, $t5
	bltz	$s0, .LBB10_95
# %bb.94:                               #   in Loop: Header=BB10_83 Depth=1
	ld.w	$s2, $a1, 432
	slli.d	$s3, $s2, 8
	alsl.d	$s2, $s2, $s3, 3
	add.d	$s2, $a2, $s2
	alsl.d	$s0, $s0, $s2, 3
	ld.d	$s2, $s0, 288
.LBB10_95:                              #   in Loop: Header=BB10_83 Depth=1
	stx.d	$s2, $t6, $s1
	ldx.b	$s0, $t7, $a6
	ldx.b	$t7, $fp, $a6
	move	$s1, $t5
	bltz	$s0, .LBB10_97
# %bb.96:                               #   in Loop: Header=BB10_83 Depth=1
	ld.w	$fp, $a1, 432
	slli.d	$s1, $fp, 8
	alsl.d	$fp, $fp, $s1, 3
	add.d	$fp, $a3, $fp
	slli.d	$s0, $s0, 3
	ldx.d	$s1, $fp, $s0
.LBB10_97:                              #   in Loop: Header=BB10_83 Depth=1
	slli.d	$fp, $a6, 3
	stx.d	$s1, $t8, $fp
	move	$t8, $t5
	bltz	$t7, .LBB10_82
# %bb.98:                               #   in Loop: Header=BB10_83 Depth=1
	ld.w	$t8, $a1, 432
	slli.d	$s0, $t8, 8
	alsl.d	$t8, $t8, $s0, 3
	add.d	$t8, $a2, $t8
	alsl.d	$t7, $t7, $t8, 3
	ld.d	$t8, $t7, 288
	b	.LBB10_82
.LBB10_99:                              # %.preheader243
	vrepli.w	$vr0, 14
	vst	$vr0, $a1, 376
	vrepli.b	$vr0, -1
	vst	$vr0, $a1, 392
	st.w	$zero, $a1, 472
	ori	$a5, $zero, 1
	pcalau12i	$t0, %pc_hi20(best8x8fwref)
	addi.d	$t0, $t0, %pc_lo12(best8x8fwref)
	beq	$a7, $a5, .LBB10_4
.LBB10_100:                             # %.preheader234
	pcalau12i	$a3, %pc_hi20(best8x8pdir)
	addi.d	$a4, $a3, %pc_lo12(best8x8pdir)
	alsl.d	$a3, $a0, $a4, 2
	slli.d	$a5, $a0, 2
	alsl.d	$a0, $a0, $t0, 2
	ldx.bu	$a4, $a4, $a5
	ld.w	$a5, $a6, 172
	ld.w	$a7, $a6, 168
	ori	$a6, $zero, 255
	andi	$a4, $a4, 253
	ori	$t0, $zero, 255
	bnez	$a4, .LBB10_102
# %bb.101:
	ld.bu	$t0, $a0, 0
.LBB10_102:
	pcalau12i	$a4, %got_pc_hi20(enc_picture)
	ld.d	$a4, $a4, %got_pc_lo12(enc_picture)
	ld.d	$t1, $a4, 0
	ldptr.d	$t1, $t1, 6488
	ld.d	$t1, $t1, 0
	slli.d	$a5, $a5, 3
	ldx.d	$t1, $t1, $a5
	stx.b	$t0, $t1, $a7
	ld.d	$a7, $a2, 0
	ld.bu	$t0, $a3, 0
	ld.w	$a7, $a7, 168
	andi	$t0, $t0, 253
	bnez	$t0, .LBB10_104
# %bb.103:
	ld.bu	$a6, $a0, 0
.LBB10_104:
	ld.d	$t0, $a4, 0
	ldptr.d	$t0, $t0, 6488
	ld.d	$t0, $t0, 0
	ldx.d	$t0, $t0, $a5
	add.d	$a7, $t0, $a7
	st.b	$a6, $a7, 1
	ld.d	$a6, $a2, 0
	ld.bu	$t0, $a3, 1
	ld.w	$a7, $a6, 168
	ori	$a6, $zero, 255
	andi	$t1, $t0, 253
	ori	$t0, $zero, 255
	bnez	$t1, .LBB10_106
# %bb.105:
	ld.bu	$t0, $a0, 1
.LBB10_106:
	ld.d	$t1, $a4, 0
	ldptr.d	$t1, $t1, 6488
	ld.d	$t1, $t1, 0
	ldx.d	$t1, $t1, $a5
	add.d	$a7, $t1, $a7
	st.b	$t0, $a7, 2
	ld.d	$a7, $a2, 0
	ld.bu	$t0, $a3, 1
	ld.w	$a7, $a7, 168
	andi	$t0, $t0, 253
	bnez	$t0, .LBB10_108
# %bb.107:
	ld.bu	$a6, $a0, 1
.LBB10_108:
	ld.d	$t0, $a4, 0
	ldptr.d	$t0, $t0, 6488
	ld.d	$t0, $t0, 0
	ldx.d	$a5, $t0, $a5
	add.d	$a5, $a5, $a7
	st.b	$a6, $a5, 3
	ld.d	$a6, $a2, 0
	ld.w	$a5, $a6, 172
	ld.bu	$t0, $a3, 0
	addi.w	$a5, $a5, 1
	ld.w	$a7, $a6, 168
	ori	$a6, $zero, 255
	andi	$t1, $t0, 253
	ori	$t0, $zero, 255
	bnez	$t1, .LBB10_110
# %bb.109:
	ld.bu	$t0, $a0, 0
.LBB10_110:
	ld.d	$t1, $a4, 0
	ldptr.d	$t1, $t1, 6488
	ld.d	$t1, $t1, 0
	slli.d	$a5, $a5, 3
	ldx.d	$t1, $t1, $a5
	stx.b	$t0, $t1, $a7
	ld.d	$a7, $a2, 0
	ld.bu	$t0, $a3, 0
	ld.w	$a7, $a7, 168
	andi	$t0, $t0, 253
	bnez	$t0, .LBB10_112
# %bb.111:
	ld.bu	$a6, $a0, 0
.LBB10_112:
	ld.d	$t0, $a4, 0
	ldptr.d	$t0, $t0, 6488
	ld.d	$t0, $t0, 0
	ldx.d	$t0, $t0, $a5
	add.d	$a7, $t0, $a7
	st.b	$a6, $a7, 1
	ld.d	$a6, $a2, 0
	ld.bu	$t0, $a3, 1
	ld.w	$a7, $a6, 168
	ori	$a6, $zero, 255
	andi	$t1, $t0, 253
	ori	$t0, $zero, 255
	bnez	$t1, .LBB10_114
# %bb.113:
	ld.bu	$t0, $a0, 1
.LBB10_114:
	ld.d	$t1, $a4, 0
	ldptr.d	$t1, $t1, 6488
	ld.d	$t1, $t1, 0
	ldx.d	$t1, $t1, $a5
	add.d	$a7, $t1, $a7
	st.b	$t0, $a7, 2
	ld.d	$a7, $a2, 0
	ld.bu	$t0, $a3, 1
	ld.w	$a7, $a7, 168
	andi	$t0, $t0, 253
	bnez	$t0, .LBB10_116
# %bb.115:
	ld.bu	$a6, $a0, 1
.LBB10_116:
	ld.d	$t0, $a4, 0
	ldptr.d	$t0, $t0, 6488
	ld.d	$t0, $t0, 0
	ldx.d	$a5, $t0, $a5
	add.d	$a5, $a5, $a7
	st.b	$a6, $a5, 3
	ld.d	$a6, $a2, 0
	ld.w	$a5, $a6, 172
	ld.bu	$t0, $a3, 2
	addi.w	$a5, $a5, 2
	ld.w	$a7, $a6, 168
	ori	$a6, $zero, 255
	andi	$t1, $t0, 253
	ori	$t0, $zero, 255
	bnez	$t1, .LBB10_118
# %bb.117:
	ld.bu	$t0, $a0, 2
.LBB10_118:
	ld.d	$t1, $a4, 0
	ldptr.d	$t1, $t1, 6488
	ld.d	$t1, $t1, 0
	slli.d	$a5, $a5, 3
	ldx.d	$t1, $t1, $a5
	stx.b	$t0, $t1, $a7
	ld.d	$a7, $a2, 0
	ld.bu	$t0, $a3, 2
	ld.w	$a7, $a7, 168
	andi	$t0, $t0, 253
	bnez	$t0, .LBB10_120
# %bb.119:
	ld.bu	$a6, $a0, 2
.LBB10_120:
	ld.d	$t0, $a4, 0
	ldptr.d	$t0, $t0, 6488
	ld.d	$t0, $t0, 0
	ldx.d	$t0, $t0, $a5
	add.d	$a7, $t0, $a7
	st.b	$a6, $a7, 1
	ld.d	$a6, $a2, 0
	ld.bu	$t0, $a3, 3
	ld.w	$a7, $a6, 168
	ori	$a6, $zero, 255
	andi	$t1, $t0, 253
	ori	$t0, $zero, 255
	bnez	$t1, .LBB10_122
# %bb.121:
	ld.bu	$t0, $a0, 3
.LBB10_122:
	ld.d	$t1, $a4, 0
	ldptr.d	$t1, $t1, 6488
	ld.d	$t1, $t1, 0
	ldx.d	$t1, $t1, $a5
	add.d	$a7, $t1, $a7
	st.b	$t0, $a7, 2
	ld.d	$a7, $a2, 0
	ld.bu	$t0, $a3, 3
	ld.w	$a7, $a7, 168
	andi	$t0, $t0, 253
	bnez	$t0, .LBB10_124
# %bb.123:
	ld.bu	$a6, $a0, 3
.LBB10_124:
	ld.d	$t0, $a4, 0
	ldptr.d	$t0, $t0, 6488
	ld.d	$t0, $t0, 0
	ldx.d	$a5, $t0, $a5
	add.d	$a5, $a5, $a7
	st.b	$a6, $a5, 3
	ld.d	$a6, $a2, 0
	ld.w	$a5, $a6, 172
	ld.bu	$t0, $a3, 2
	addi.w	$a5, $a5, 3
	ld.w	$a7, $a6, 168
	ori	$a6, $zero, 255
	andi	$t1, $t0, 253
	ori	$t0, $zero, 255
	bnez	$t1, .LBB10_126
# %bb.125:
	ld.bu	$t0, $a0, 2
.LBB10_126:
	ld.d	$t1, $a4, 0
	ldptr.d	$t1, $t1, 6488
	ld.d	$t1, $t1, 0
	slli.d	$a5, $a5, 3
	ldx.d	$t1, $t1, $a5
	stx.b	$t0, $t1, $a7
	ld.d	$a7, $a2, 0
	ld.bu	$t0, $a3, 2
	ld.w	$a7, $a7, 168
	andi	$t0, $t0, 253
	bnez	$t0, .LBB10_128
# %bb.127:
	ld.bu	$a6, $a0, 2
.LBB10_128:
	ld.d	$t0, $a4, 0
	ldptr.d	$t0, $t0, 6488
	ld.d	$t0, $t0, 0
	ldx.d	$t0, $t0, $a5
	add.d	$a7, $t0, $a7
	st.b	$a6, $a7, 1
	ld.d	$a6, $a2, 0
	ld.bu	$t0, $a3, 3
	ld.w	$a7, $a6, 168
	ori	$a6, $zero, 255
	andi	$t1, $t0, 253
	ori	$t0, $zero, 255
	bnez	$t1, .LBB10_130
# %bb.129:
	ld.bu	$t0, $a0, 3
.LBB10_130:
	ld.d	$t1, $a4, 0
	ldptr.d	$t1, $t1, 6488
	ld.d	$t1, $t1, 0
	ldx.d	$t1, $t1, $a5
	add.d	$a7, $t1, $a7
	st.b	$t0, $a7, 2
	ld.d	$a7, $a2, 0
	ld.bu	$t0, $a3, 3
	ld.w	$a3, $a7, 168
	andi	$a7, $t0, 253
	bnez	$a7, .LBB10_132
# %bb.131:
	ld.bu	$a6, $a0, 3
.LBB10_132:                             # %.loopexit233.loopexit277
	ld.d	$a0, $a4, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a3
	st.b	$a6, $a0, 3
.LBB10_133:                             # %.loopexit233.thread
	ld.d	$a0, $a2, 0
	ld.w	$a2, $a0, 172
	ld.w	$a3, $a0, 168
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$t0, $a0, 0
	ldptr.d	$a0, $t0, 6488
	ld.d	$a4, $a0, 0
	ldptr.d	$a0, $t0, 6496
	slli.d	$a6, $a2, 3
	ldx.d	$t5, $a4, $a6
	ld.d	$a5, $a0, 0
	ldx.b	$a7, $t5, $a3
	ldx.d	$t6, $a5, $a6
	addi.w	$a0, $zero, -1
	addi.d	$a2, $t0, 24
	move	$t0, $a0
	bltz	$a7, .LBB10_135
# %bb.134:
	ld.w	$t0, $a1, 432
	slli.d	$t1, $t0, 8
	alsl.d	$t0, $t0, $t1, 3
	add.d	$t0, $a2, $t0
	slli.d	$a7, $a7, 3
	ldx.d	$t0, $t0, $a7
.LBB10_135:
	slli.d	$a7, $a3, 3
	stx.d	$t0, $t6, $a7
	addi.d	$t0, $a3, 1
	ldx.b	$t1, $t5, $t0
	move	$t2, $a0
	bltz	$t1, .LBB10_137
# %bb.136:
	ld.w	$t2, $a1, 432
	slli.d	$t3, $t2, 8
	alsl.d	$t2, $t2, $t3, 3
	add.d	$t2, $a2, $t2
	slli.d	$t1, $t1, 3
	ldx.d	$t2, $t2, $t1
.LBB10_137:
	slli.d	$t1, $t0, 3
	stx.d	$t2, $t6, $t1
	addi.d	$t2, $a3, 2
	ldx.b	$t3, $t5, $t2
	move	$t4, $a0
	bltz	$t3, .LBB10_139
# %bb.138:
	ld.w	$t4, $a1, 432
	slli.d	$t7, $t4, 8
	alsl.d	$t4, $t4, $t7, 3
	add.d	$t4, $a2, $t4
	slli.d	$t3, $t3, 3
	ldx.d	$t4, $t4, $t3
.LBB10_139:
	slli.d	$t3, $t2, 3
	stx.d	$t4, $t6, $t3
	addi.d	$t4, $a3, 3
	ldx.b	$t5, $t5, $t4
	move	$t8, $a0
	bltz	$t5, .LBB10_141
# %bb.140:
	ld.w	$t7, $a1, 432
	slli.d	$t8, $t7, 8
	alsl.d	$t7, $t7, $t8, 3
	add.d	$t7, $a2, $t7
	slli.d	$t5, $t5, 3
	ldx.d	$t8, $t7, $t5
.LBB10_141:
	addi.d	$fp, $a6, 8
	ldx.d	$t7, $a4, $fp
	slli.d	$t5, $t4, 3
	stx.d	$t8, $t6, $t5
	ldx.b	$t8, $t7, $a3
	ldx.d	$t6, $a5, $fp
	move	$fp, $a0
	bltz	$t8, .LBB10_143
# %bb.142:
	ld.w	$fp, $a1, 432
	slli.d	$s0, $fp, 8
	alsl.d	$fp, $fp, $s0, 3
	add.d	$fp, $a2, $fp
	slli.d	$t8, $t8, 3
	ldx.d	$fp, $fp, $t8
.LBB10_143:
	stx.d	$fp, $t6, $a7
	ldx.b	$t8, $t7, $t0
	move	$fp, $a0
	bltz	$t8, .LBB10_145
# %bb.144:
	ld.w	$fp, $a1, 432
	slli.d	$s0, $fp, 8
	alsl.d	$fp, $fp, $s0, 3
	add.d	$fp, $a2, $fp
	slli.d	$t8, $t8, 3
	ldx.d	$fp, $fp, $t8
.LBB10_145:
	stx.d	$fp, $t6, $t1
	ldx.b	$t8, $t7, $t2
	move	$fp, $a0
	bltz	$t8, .LBB10_147
# %bb.146:
	ld.w	$fp, $a1, 432
	slli.d	$s0, $fp, 8
	alsl.d	$fp, $fp, $s0, 3
	add.d	$fp, $a2, $fp
	slli.d	$t8, $t8, 3
	ldx.d	$fp, $fp, $t8
.LBB10_147:
	stx.d	$fp, $t6, $t3
	ldx.b	$t7, $t7, $t4
	move	$t8, $a0
	bltz	$t7, .LBB10_149
# %bb.148:
	ld.w	$t8, $a1, 432
	slli.d	$fp, $t8, 8
	alsl.d	$t8, $t8, $fp, 3
	add.d	$t8, $a2, $t8
	slli.d	$t7, $t7, 3
	ldx.d	$t8, $t8, $t7
.LBB10_149:
	addi.d	$fp, $a6, 16
	ldx.d	$t7, $a4, $fp
	stx.d	$t8, $t6, $t5
	ldx.b	$t8, $t7, $a3
	ldx.d	$t6, $a5, $fp
	move	$fp, $a0
	bltz	$t8, .LBB10_151
# %bb.150:
	ld.w	$fp, $a1, 432
	slli.d	$s0, $fp, 8
	alsl.d	$fp, $fp, $s0, 3
	add.d	$fp, $a2, $fp
	slli.d	$t8, $t8, 3
	ldx.d	$fp, $fp, $t8
.LBB10_151:
	stx.d	$fp, $t6, $a7
	ldx.b	$t8, $t7, $t0
	move	$fp, $a0
	bltz	$t8, .LBB10_153
# %bb.152:
	ld.w	$fp, $a1, 432
	slli.d	$s0, $fp, 8
	alsl.d	$fp, $fp, $s0, 3
	add.d	$fp, $a2, $fp
	slli.d	$t8, $t8, 3
	ldx.d	$fp, $fp, $t8
.LBB10_153:
	stx.d	$fp, $t6, $t1
	ldx.b	$t8, $t7, $t2
	move	$fp, $a0
	bltz	$t8, .LBB10_155
# %bb.154:
	ld.w	$fp, $a1, 432
	slli.d	$s0, $fp, 8
	alsl.d	$fp, $fp, $s0, 3
	add.d	$fp, $a2, $fp
	slli.d	$t8, $t8, 3
	ldx.d	$fp, $fp, $t8
.LBB10_155:
	stx.d	$fp, $t6, $t3
	ldx.b	$t8, $t7, $t4
	move	$t7, $a0
	bltz	$t8, .LBB10_157
# %bb.156:
	ld.w	$t7, $a1, 432
	slli.d	$fp, $t7, 8
	alsl.d	$t7, $t7, $fp, 3
	add.d	$t7, $a2, $t7
	slli.d	$t8, $t8, 3
	ldx.d	$t7, $t7, $t8
.LBB10_157:
	addi.d	$t8, $a6, 24
	ldx.d	$a4, $a4, $t8
	stx.d	$t7, $t6, $t5
	ldx.b	$a6, $a4, $a3
	ldx.d	$a3, $a5, $t8
	move	$a5, $a0
	bltz	$a6, .LBB10_159
# %bb.158:
	ld.w	$a5, $a1, 432
	slli.d	$t6, $a5, 8
	alsl.d	$a5, $a5, $t6, 3
	add.d	$a5, $a2, $a5
	slli.d	$a6, $a6, 3
	ldx.d	$a5, $a5, $a6
.LBB10_159:
	stx.d	$a5, $a3, $a7
	ldx.b	$a5, $a4, $t0
	move	$a6, $a0
	bltz	$a5, .LBB10_161
# %bb.160:
	ld.w	$a6, $a1, 432
	slli.d	$a7, $a6, 8
	alsl.d	$a6, $a6, $a7, 3
	add.d	$a6, $a2, $a6
	slli.d	$a5, $a5, 3
	ldx.d	$a6, $a6, $a5
.LBB10_161:
	stx.d	$a6, $a3, $t1
	ldx.b	$a5, $a4, $t2
	move	$a6, $a0
	bltz	$a5, .LBB10_163
# %bb.162:
	ld.w	$a6, $a1, 432
	slli.d	$a7, $a6, 8
	alsl.d	$a6, $a6, $a7, 3
	add.d	$a6, $a2, $a6
	slli.d	$a5, $a5, 3
	ldx.d	$a6, $a6, $a5
.LBB10_163:
	stx.d	$a6, $a3, $t3
	ldx.b	$a4, $a4, $t4
	bltz	$a4, .LBB10_165
# %bb.164:
	ld.w	$a0, $a1, 432
	slli.d	$a1, $a0, 8
	alsl.d	$a0, $a0, $a1, 3
	add.d	$a0, $a2, $a0
	slli.d	$a1, $a4, 3
	ldx.d	$a0, $a0, $a1
.LBB10_165:                             # %.loopexit.loopexit275
	stx.d	$a0, $a3, $t5
.LBB10_166:                             # %.loopexit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB10_167:                             # %.preheader244
	pcalau12i	$a5, %pc_hi20(best8x8mode)
	addi.d	$a5, $a5, %pc_lo12(best8x8mode)
	ld.h	$t0, $a5, 0
	st.w	$t0, $a1, 376
	pcalau12i	$t0, %pc_hi20(best8x8pdir)
	addi.d	$t0, $t0, %pc_lo12(best8x8pdir)
	ld.b	$t1, $t0, 32
	ld.h	$t2, $a5, 2
	st.w	$t1, $a1, 392
	st.w	$t2, $a1, 380
	ld.b	$t1, $t0, 33
	ld.h	$t2, $a5, 4
	st.w	$t1, $a1, 396
	st.w	$t2, $a1, 384
	ld.b	$t1, $t0, 34
	ld.h	$a5, $a5, 6
	st.w	$t1, $a1, 400
	st.w	$a5, $a1, 388
	ld.b	$a5, $t0, 35
	b	.LBB10_3
.LBB10_168:                             # %.preheader250
	vrepli.w	$vr0, 13
	vst	$vr0, $a1, 376
	vrepli.b	$vr0, -1
	vst	$vr0, $a1, 392
	ori	$a4, $zero, 1
	st.w	$a4, $a1, 472
	ori	$a4, $zero, 1
	beq	$a7, $a4, .LBB10_76
.LBB10_169:
	beqz	$a0, .LBB10_173
# %bb.170:                              # %.lr.ph.preheader
	ld.w	$a3, $a6, 172
	addi.d	$a0, $a3, -1
	slli.d	$a3, $a3, 3
	pcalau12i	$a4, %got_pc_hi20(enc_picture)
	ld.d	$a4, $a4, %got_pc_lo12(enc_picture)
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	.p2align	4, , 16
.LBB10_171:                             # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, 0
	ldptr.d	$a7, $a7, 6488
	ld.d	$a7, $a7, 0
	ldx.d	$a7, $a7, $a3
	ld.w	$a6, $a6, 168
	stx.w	$a5, $a7, $a6
	ld.d	$a6, $a2, 0
	ld.w	$a7, $a6, 172
	addi.w	$a7, $a7, 3
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 8
	blt	$a0, $a7, .LBB10_171
	b	.LBB10_133
.LBB10_172:                             # %.thread343
	st.w	$zero, $a1, 404
	st.d	$zero, $a1, 396
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 380
.LBB10_173:                             # %.lr.ph260.preheader
	ld.w	$a3, $a6, 172
	addi.d	$a0, $a3, -1
	slli.d	$a3, $a3, 3
	pcalau12i	$a4, %got_pc_hi20(enc_picture)
	ld.d	$a4, $a4, %got_pc_lo12(enc_picture)
	.p2align	4, , 16
.LBB10_174:                             # %.lr.ph260
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	ldptr.d	$a5, $a5, 6488
	ld.d	$a5, $a5, 0
	ldx.d	$a5, $a5, $a3
	ld.w	$a6, $a6, 168
	stx.w	$zero, $a5, $a6
	ld.d	$a6, $a2, 0
	ld.w	$a5, $a6, 172
	addi.w	$a5, $a5, 3
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 8
	blt	$a0, $a5, .LBB10_174
	b	.LBB10_133
.LBB10_175:
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
	.word	.LBB10_72-.LJTI10_0
	.word	.LBB10_175-.LJTI10_0
	.word	.LBB10_2-.LJTI10_0
	.word	.LBB10_2-.LJTI10_0
	.word	.LBB10_175-.LJTI10_0
	.word	.LBB10_175-.LJTI10_0
	.word	.LBB10_175-.LJTI10_0
	.word	.LBB10_175-.LJTI10_0
	.word	.LBB10_167-.LJTI10_0
	.word	.LBB10_74-.LJTI10_0
	.word	.LBB10_75-.LJTI10_0
	.word	.LBB10_175-.LJTI10_0
	.word	.LBB10_175-.LJTI10_0
	.word	.LBB10_168-.LJTI10_0
	.word	.LBB10_99-.LJTI10_0
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
	ori	$a1, $a1, 2272
	sub.d	$sp, $sp, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s3, $a0, %got_pc_lo12(img)
	ld.w	$a0, $fp, 472
	ld.d	$a3, $s3, 0
	beqz	$a0, .LBB12_20
# %bb.1:                                # %.preheader160
	ld.w	$a2, $a3, 20
	pcalau12i	$a0, %pc_hi20(tr8x8)
	addi.d	$s0, $a0, %pc_lo12(tr8x8)
	lu12i.w	$s4, 1
	ori	$a0, $s4, 2052
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ldx.h	$a0, $s0, $a0
	st.w	$a0, $fp, 376
	ori	$a0, $s4, 2060
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ldx.b	$a0, $s0, $a0
	ori	$a1, $s4, 2054
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ldx.h	$a1, $s0, $a1
	st.w	$a0, $fp, 392
	st.w	$a1, $fp, 380
	ori	$a0, $s4, 2061
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ldx.b	$a0, $s0, $a0
	ori	$a1, $s4, 2056
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ldx.h	$a1, $s0, $a1
	st.w	$a0, $fp, 396
	st.w	$a1, $fp, 384
	ori	$a0, $s4, 2062
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ldx.b	$a0, $s0, $a0
	ori	$a1, $s4, 2058
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ldx.h	$a1, $s0, $a1
	st.w	$a0, $fp, 400
	st.w	$a1, $fp, 388
	ori	$a0, $s4, 2063
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ldx.b	$a0, $s0, $a0
	ori	$a1, $zero, 1
	st.w	$a0, $fp, 404
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
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
	ld.d	$a1, $a5, 0
	ld.d	$a2, $s3, 0
	ldptr.d	$a1, $a1, 6488
	ld.w	$t2, $a2, 172
	ld.d	$a1, $a1, 8
	add.d	$t2, $a6, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$a1, $a1, $t2
	ld.w	$a2, $a2, 168
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 3
	addi.w	$a7, $a7, 1
	addi.d	$a6, $a6, 1
	beq	$a7, $t1, .LBB12_32
.LBB12_4:                               # %.preheader154
                                        # =>This Inner Loop Header: Depth=1
	andi	$t2, $a7, 2
	slli.d	$a0, $t2, 2
	ldx.bu	$a0, $a3, $a0
	andi	$a0, $a0, 1
	ori	$t4, $zero, 255
	add.d	$t3, $s0, $t2
	ori	$t5, $zero, 255
	bnez	$a0, .LBB12_6
# %bb.5:                                #   in Loop: Header=BB12_4 Depth=1
	ldx.bu	$t5, $t3, $a4
.LBB12_6:                               #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a0, $a5, 0
	ld.d	$a1, $s3, 0
	ldptr.d	$a0, $a0, 6488
	ld.w	$a2, $a1, 172
	ld.d	$a0, $a0, 0
	add.d	$a2, $a6, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a0, $a2
	ld.w	$a1, $a1, 168
	alsl.d	$a0, $t2, $a3, 2
	stx.b	$t5, $a2, $a1
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB12_8
# %bb.7:                                #   in Loop: Header=BB12_4 Depth=1
	ldx.bu	$t4, $t3, $t0
.LBB12_8:                               #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a1, $a5, 0
	ld.d	$a2, $s3, 0
	ldptr.d	$a1, $a1, 6488
	ld.w	$t5, $a2, 172
	ld.d	$a1, $a1, 8
	add.d	$t5, $a6, $t5
	slli.d	$t5, $t5, 3
	ldx.d	$a1, $a1, $t5
	ld.w	$a2, $a2, 168
	stx.b	$t4, $a1, $a2
	ld.bu	$a1, $a0, 0
	andi	$a1, $a1, 1
	ori	$t4, $zero, 255
	ori	$t5, $zero, 255
	bnez	$a1, .LBB12_10
# %bb.9:                                #   in Loop: Header=BB12_4 Depth=1
	ldx.bu	$t5, $t3, $a4
.LBB12_10:                              #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a1, $a5, 0
	ld.d	$a2, $s3, 0
	ldptr.d	$a1, $a1, 6488
	ld.w	$t6, $a2, 172
	ld.d	$a1, $a1, 0
	add.d	$t6, $a6, $t6
	slli.d	$t6, $t6, 3
	ldx.d	$a1, $a1, $t6
	ld.w	$a2, $a2, 168
	add.d	$a1, $a1, $a2
	st.b	$t5, $a1, 1
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB12_12
# %bb.11:                               #   in Loop: Header=BB12_4 Depth=1
	ldx.bu	$t4, $t3, $t0
.LBB12_12:                              #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a0, $a5, 0
	ld.d	$a1, $s3, 0
	ldptr.d	$a0, $a0, 6488
	ld.w	$a2, $a1, 172
	ld.d	$a0, $a0, 8
	add.d	$a2, $a6, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ld.w	$a1, $a1, 168
	add.d	$a0, $a0, $a1
	st.b	$t4, $a0, 1
	addi.d	$t2, $t2, 1
	slli.d	$a0, $t2, 2
	ldx.bu	$a0, $a3, $a0
	andi	$a1, $a0, 1
	ori	$a0, $zero, 255
	ori	$t4, $zero, 255
	bnez	$a1, .LBB12_14
# %bb.13:                               #   in Loop: Header=BB12_4 Depth=1
	add.d	$a1, $s0, $t2
	ldx.bu	$t4, $a1, $a4
.LBB12_14:                              #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a1, $a5, 0
	ld.d	$a2, $s3, 0
	ldptr.d	$a1, $a1, 6488
	ld.w	$t3, $a2, 172
	ld.d	$a1, $a1, 0
	add.d	$t3, $a6, $t3
	slli.d	$t3, $t3, 3
	ldx.d	$a1, $a1, $t3
	ld.w	$a2, $a2, 168
	alsl.d	$t3, $t2, $a3, 2
	add.d	$a1, $a1, $a2
	st.b	$t4, $a1, 2
	ld.w	$a1, $t3, 0
	blez	$a1, .LBB12_16
# %bb.15:                               #   in Loop: Header=BB12_4 Depth=1
	add.d	$a0, $s0, $t2
	ldx.bu	$a0, $a0, $t0
.LBB12_16:                              #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a1, $a5, 0
	ld.d	$a2, $s3, 0
	ldptr.d	$a1, $a1, 6488
	ld.w	$t4, $a2, 172
	ld.d	$a1, $a1, 8
	add.d	$t4, $a6, $t4
	slli.d	$t4, $t4, 3
	ldx.d	$a1, $a1, $t4
	ld.w	$a2, $a2, 168
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 2
	ld.bu	$a0, $t3, 0
	andi	$a1, $a0, 1
	ori	$a0, $zero, 255
	ori	$t4, $zero, 255
	bnez	$a1, .LBB12_18
# %bb.17:                               #   in Loop: Header=BB12_4 Depth=1
	add.d	$a1, $s0, $t2
	ldx.bu	$t4, $a1, $a4
.LBB12_18:                              #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a1, $a5, 0
	ld.d	$a2, $s3, 0
	ldptr.d	$a1, $a1, 6488
	ld.w	$t5, $a2, 172
	ld.d	$a1, $a1, 0
	add.d	$t5, $a6, $t5
	slli.d	$t5, $t5, 3
	ldx.d	$a1, $a1, $t5
	ld.w	$a2, $a2, 168
	add.d	$a1, $a1, $a2
	st.b	$t4, $a1, 3
	ld.w	$a1, $t3, 0
	blez	$a1, .LBB12_3
# %bb.19:                               #   in Loop: Header=BB12_4 Depth=1
	add.d	$a0, $s0, $t2
	ldx.bu	$a0, $a0, $t0
	b	.LBB12_3
.LBB12_20:                              # %.preheader147
	ldptr.w	$a0, $a3, 15528
	addi.w	$a1, $zero, -3
	blt	$a0, $a1, .LBB12_23
# %bb.21:                               # %.preheader146.lr.ph
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(cofAC8x8)
	ld.d	$s1, $a0, %pc_lo12(cofAC8x8)
	addi.w	$s2, $zero, -1
	lu12i.w	$a0, 3
	ori	$s4, $a0, 3240
	.p2align	4, , 16
.LBB12_22:                              # %.preheader146
                                        # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $a3, 14160
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
	ld.d	$a3, $s3, 0
	ldx.w	$a0, $a3, $s4
	addi.w	$a0, $a0, 3
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 8
	blt	$s2, $a0, .LBB12_22
.LBB12_23:                              # %._crit_edge
	pcalau12i	$a0, %pc_hi20(cnt_nonz_8x8)
	ld.w	$a0, $a0, %pc_lo12(cnt_nonz_8x8)
	ori	$a1, $zero, 5
	blt	$a1, $a0, .LBB12_25
# %bb.24:
	ld.w	$a0, $a3, 20
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB12_119
.LBB12_25:
	pcalau12i	$a0, %pc_hi20(cbp8x8)
	ld.w	$a0, $a0, %pc_lo12(cbp8x8)
	pcalau12i	$a1, %pc_hi20(cbp_blk8x8)
	ld.w	$a1, $a1, %pc_lo12(cbp_blk8x8)
	st.w	$a0, $fp, 364
	st.d	$a1, $fp, 368
	pcalau12i	$a0, %pc_hi20(tr4x4)
	addi.d	$a1, $a0, %pc_lo12(tr4x4)
	lu12i.w	$a2, 1
	ori	$a0, $a2, 2072
	add.d	$a0, $a1, $a0
	ori	$a2, $a2, 3096
	add.d	$a1, $a1, $a2
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
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
	addi.d	$a0, $a0, 32
	addi.d	$a1, $a1, 64
	beq	$a4, $t0, .LBB12_126
.LBB12_27:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a2, 0
	ld.w	$t3, $a3, 180
	ldptr.d	$t2, $t2, 6440
	add.d	$t3, $a4, $t3
	slli.d	$t3, $t3, 3
	ldx.d	$t2, $t2, $t3
	ld.w	$a3, $a3, 176
	vld	$vr0, $a0, 0
	slli.d	$t3, $a3, 1
	vstx	$vr0, $t2, $t3
	vld	$vr0, $a0, 16
	alsl.d	$a3, $a3, $t2, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $s3, 0
	ld.w	$t2, $a3, 20
	bne	$t2, $a7, .LBB12_26
# %bb.28:                               #   in Loop: Header=BB12_27 Depth=1
	ld.w	$t2, $a5, %pc_lo12(si_frame_indicator)
	bnez	$t2, .LBB12_26
# %bb.29:                               #   in Loop: Header=BB12_27 Depth=1
	ld.w	$t2, $a6, %pc_lo12(sp2_frame_indicator)
	bnez	$t2, .LBB12_26
# %bb.30:                               #   in Loop: Header=BB12_27 Depth=1
	ld.w	$t2, $a3, 180
	ld.d	$t3, $t1, %pc_lo12(lrec)
	add.d	$t2, $a4, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $t3, $t2
	ld.w	$a3, $a3, 176
	vld	$vr0, $a1, 0
	slli.d	$t3, $a3, 2
	vstx	$vr0, $t2, $t3
	vld	$vr0, $a1, 48
	alsl.d	$a3, $a3, $t2, 2
	vst	$vr0, $a3, 48
	vld	$vr0, $a1, 32
	vst	$vr0, $a3, 32
	vld	$vr0, $a1, 16
	vst	$vr0, $a3, 16
	ld.d	$a3, $s3, 0
	b	.LBB12_26
.LBB12_31:                              # %.preheader157.preheader
	ori	$a5, $s4, 2064
	ldx.b	$a0, $s0, $a5
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a4, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a4, 0
	ldptr.d	$a1, $a1, 6488
	ld.w	$a2, $a3, 172
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ld.w	$a2, $a3, 168
	stx.b	$a0, $a1, $a2
	ld.d	$a1, $a4, 0
	ld.d	$a2, $s3, 0
	ldptr.d	$a1, $a1, 6488
	ld.w	$a3, $a2, 172
	ld.d	$a1, $a1, 0
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ld.w	$a2, $a2, 168
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 1
	ld.d	$a0, $a4, 0
	ld.d	$a1, $s3, 0
	ldptr.d	$a0, $a0, 6488
	ld.w	$a2, $a1, 172
	ld.d	$a0, $a0, 0
	ori	$a3, $s4, 2065
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ld.w	$a1, $a1, 168
	ldx.b	$a2, $s0, $a3
	add.d	$a0, $a0, $a1
	st.b	$a2, $a0, 2
	ld.d	$a0, $a4, 0
	ld.d	$a1, $s3, 0
	ldptr.d	$a0, $a0, 6488
	ld.w	$a6, $a1, 172
	ld.d	$a0, $a0, 0
	slli.d	$a6, $a6, 3
	ldx.d	$a0, $a0, $a6
	ld.w	$a1, $a1, 168
	add.d	$a0, $a0, $a1
	st.b	$a2, $a0, 3
	ld.d	$a0, $a4, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a1, 172
	ldx.b	$a5, $s0, $a5
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a1, 168
	stx.b	$a5, $a0, $a1
	ld.d	$a0, $a4, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a1, 172
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a1, 168
	add.d	$a0, $a0, $a1
	st.b	$a5, $a0, 1
	ld.d	$a0, $a4, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a1, 172
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a1, 168
	ldx.b	$a2, $s0, $a3
	add.d	$a0, $a0, $a1
	st.b	$a2, $a0, 2
	ld.d	$a0, $a4, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	ld.w	$a3, $a1, 172
	alsl.d	$a0, $a3, $a0, 3
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a1, 168
	add.d	$a0, $a0, $a1
	st.b	$a2, $a0, 3
	ld.d	$a0, $a4, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a1, 172
	ori	$a3, $s4, 2066
	ldx.b	$a5, $s0, $a3
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 16
	ld.w	$a1, $a1, 168
	stx.b	$a5, $a0, $a1
	ld.d	$a0, $a4, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a1, 172
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 16
	ld.w	$a1, $a1, 168
	add.d	$a0, $a0, $a1
	st.b	$a5, $a0, 1
	ld.d	$a0, $a4, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a1, 172
	ori	$a5, $s4, 2067
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 16
	ld.w	$a1, $a1, 168
	ldx.b	$a2, $s0, $a5
	add.d	$a0, $a0, $a1
	st.b	$a2, $a0, 2
	ld.d	$a0, $a4, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	ld.w	$a6, $a1, 172
	alsl.d	$a0, $a6, $a0, 3
	ld.d	$a0, $a0, 16
	ld.w	$a1, $a1, 168
	add.d	$a0, $a0, $a1
	st.b	$a2, $a0, 3
	ld.d	$a0, $a4, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a1, 172
	ldx.b	$a3, $s0, $a3
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a1, 168
	stx.b	$a3, $a0, $a1
	ld.d	$a0, $a4, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a1, 172
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a1, 168
	add.d	$a0, $a0, $a1
	st.b	$a3, $a0, 1
	ld.d	$a0, $a4, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a1, 172
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a1, 168
	ldx.b	$a2, $s0, $a5
	add.d	$a0, $a0, $a1
	st.b	$a2, $a0, 2
	ld.d	$a0, $a4, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	ld.w	$a3, $a1, 172
	alsl.d	$a0, $a3, $a0, 3
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a1, 168
	add.d	$a0, $a0, $a1
	st.b	$a2, $a0, 3
.LBB12_32:                              # %.loopexit156
	ld.d	$a0, $s3, 0
	ld.w	$s1, $a0, 172
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a5, $a0, 168
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$s5, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a4, $s5, 0
	ldptr.d	$t8, $a4, 6488
	ld.d	$s7, $t8, 0
	ldptr.d	$t7, $a4, 6496
	slli.d	$a6, $s1, 3
	ldx.d	$t5, $s7, $a6
	ld.d	$s8, $t7, 0
	ldx.b	$a0, $t5, $a5
	ldx.d	$s2, $s8, $a6
	addi.w	$s6, $zero, -1
	addi.d	$ra, $a4, 24
	move	$a1, $s6
	bltz	$a0, .LBB12_34
# %bb.33:
	ld.w	$a1, $fp, 432
	slli.d	$a2, $a1, 8
	alsl.d	$a1, $a1, $a2, 3
	add.d	$a1, $ra, $a1
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $a1, $a0
.LBB12_34:
	slli.d	$a7, $a5, 3
	stx.d	$a1, $s2, $a7
	addi.d	$t0, $a5, 1
	ldx.b	$a0, $t5, $t0
	move	$a1, $s6
	bltz	$a0, .LBB12_36
# %bb.35:
	ld.w	$a1, $fp, 432
	slli.d	$a2, $a1, 8
	alsl.d	$a1, $a1, $a2, 3
	add.d	$a1, $ra, $a1
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $a1, $a0
.LBB12_36:
	slli.d	$t1, $t0, 3
	stx.d	$a1, $s2, $t1
	addi.d	$t2, $a5, 2
	ldx.b	$a0, $t5, $t2
	addi.w	$t6, $s1, 4
	move	$a1, $s6
	bltz	$a0, .LBB12_38
# %bb.37:
	ld.w	$a1, $fp, 432
	slli.d	$a2, $a1, 8
	alsl.d	$a1, $a1, $a2, 3
	add.d	$a1, $ra, $a1
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $a1, $a0
.LBB12_38:
	slli.d	$t3, $t2, 3
	stx.d	$a1, $s2, $t3
	addi.d	$t4, $a5, 3
	ldx.b	$a0, $t5, $t4
	bltz	$a0, .LBB12_40
# %bb.39:
	ld.w	$a1, $fp, 432
	slli.d	$a2, $a1, 8
	alsl.d	$a1, $a1, $a2, 3
	add.d	$a1, $ra, $a1
	slli.d	$a0, $a0, 3
	ldx.d	$s6, $a1, $a0
.LBB12_40:
	slli.d	$t5, $t4, 3
	addi.d	$s1, $s1, 1
	stx.d	$s6, $s2, $t5
	bge	$s1, $t6, .LBB12_66
# %bb.41:
	slli.d	$a2, $s1, 3
	ldx.d	$a0, $s7, $a2
	ldx.b	$a1, $a0, $a5
	ldx.d	$s6, $s8, $a2
	addi.w	$a2, $zero, -1
	move	$s2, $a2
	bltz	$a1, .LBB12_43
# %bb.42:
	ld.w	$s2, $fp, 432
	slli.d	$a3, $s2, 8
	alsl.d	$a3, $s2, $a3, 3
	add.d	$a3, $ra, $a3
	slli.d	$a1, $a1, 3
	ldx.d	$s2, $a3, $a1
.LBB12_43:
	stx.d	$s2, $s6, $a7
	ldx.b	$a1, $a0, $t0
	move	$s2, $a2
	bltz	$a1, .LBB12_45
# %bb.44:
	ld.w	$a3, $fp, 432
	slli.d	$s2, $a3, 8
	alsl.d	$a3, $a3, $s2, 3
	add.d	$a3, $ra, $a3
	slli.d	$a1, $a1, 3
	ldx.d	$s2, $a3, $a1
.LBB12_45:
	stx.d	$s2, $s6, $t1
	ldx.b	$a1, $a0, $t2
	move	$s2, $a2
	bltz	$a1, .LBB12_47
# %bb.46:
	ld.w	$a3, $fp, 432
	slli.d	$s2, $a3, 8
	alsl.d	$a3, $a3, $s2, 3
	add.d	$a3, $ra, $a3
	slli.d	$a1, $a1, 3
	ldx.d	$s2, $a3, $a1
.LBB12_47:
	stx.d	$s2, $s6, $t3
	ldx.b	$a0, $a0, $t4
	move	$a1, $a2
	bltz	$a0, .LBB12_49
# %bb.48:
	ld.w	$a1, $fp, 432
	slli.d	$a3, $a1, 8
	alsl.d	$a1, $a1, $a3, 3
	add.d	$a1, $ra, $a1
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $a1, $a0
.LBB12_49:
	addi.d	$a3, $a6, 16
	ldx.d	$a0, $s7, $a3
	stx.d	$a1, $s6, $t5
	ldx.b	$a1, $a0, $a5
	ldx.d	$s6, $s8, $a3
	move	$s2, $a2
	bltz	$a1, .LBB12_51
# %bb.50:
	ld.w	$a3, $fp, 432
	slli.d	$s2, $a3, 8
	alsl.d	$a3, $a3, $s2, 3
	add.d	$a3, $ra, $a3
	slli.d	$a1, $a1, 3
	ldx.d	$s2, $a3, $a1
.LBB12_51:
	stx.d	$s2, $s6, $a7
	ldx.b	$a1, $a0, $t0
	move	$s2, $a2
	bltz	$a1, .LBB12_53
# %bb.52:
	ld.w	$a3, $fp, 432
	slli.d	$s2, $a3, 8
	alsl.d	$a3, $a3, $s2, 3
	add.d	$a3, $ra, $a3
	slli.d	$a1, $a1, 3
	ldx.d	$s2, $a3, $a1
.LBB12_53:
	stx.d	$s2, $s6, $t1
	ldx.b	$a1, $a0, $t2
	move	$s2, $a2
	bltz	$a1, .LBB12_55
# %bb.54:
	ld.w	$a3, $fp, 432
	slli.d	$s2, $a3, 8
	alsl.d	$a3, $a3, $s2, 3
	add.d	$a3, $ra, $a3
	slli.d	$a1, $a1, 3
	ldx.d	$s2, $a3, $a1
.LBB12_55:
	stx.d	$s2, $s6, $t3
	ldx.b	$a0, $a0, $t4
	move	$a1, $a2
	bltz	$a0, .LBB12_57
# %bb.56:
	ld.w	$a1, $fp, 432
	slli.d	$a3, $a1, 8
	alsl.d	$a1, $a1, $a3, 3
	add.d	$a1, $ra, $a1
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $a1, $a0
.LBB12_57:
	addi.d	$a3, $a6, 24
	ldx.d	$a0, $s7, $a3
	stx.d	$a1, $s6, $t5
	ldx.b	$a1, $a0, $a5
	ldx.d	$s6, $s8, $a3
	move	$s2, $a2
	bltz	$a1, .LBB12_59
# %bb.58:
	ld.w	$a3, $fp, 432
	slli.d	$s2, $a3, 8
	alsl.d	$a3, $a3, $s2, 3
	add.d	$a3, $ra, $a3
	slli.d	$a1, $a1, 3
	ldx.d	$s2, $a3, $a1
.LBB12_59:
	stx.d	$s2, $s6, $a7
	ldx.b	$a1, $a0, $t0
	move	$s2, $a2
	bltz	$a1, .LBB12_61
# %bb.60:
	ld.w	$a3, $fp, 432
	slli.d	$s2, $a3, 8
	alsl.d	$a3, $a3, $s2, 3
	add.d	$a3, $ra, $a3
	slli.d	$a1, $a1, 3
	ldx.d	$s2, $a3, $a1
.LBB12_61:
	stx.d	$s2, $s6, $t1
	ldx.b	$a1, $a0, $t2
	move	$s2, $a2
	bltz	$a1, .LBB12_63
# %bb.62:
	ld.w	$a3, $fp, 432
	slli.d	$s2, $a3, 8
	alsl.d	$a3, $a3, $s2, 3
	add.d	$a3, $ra, $a3
	slli.d	$a1, $a1, 3
	ldx.d	$s2, $a3, $a1
.LBB12_63:
	stx.d	$s2, $s6, $t3
	ldx.b	$a0, $a0, $t4
	bltz	$a0, .LBB12_65
# %bb.64:
	ld.w	$a1, $fp, 432
	slli.d	$a2, $a1, 8
	alsl.d	$a1, $a1, $a2, 3
	add.d	$a1, $ra, $a1
	slli.d	$a0, $a0, 3
	ldx.d	$a2, $a1, $a0
.LBB12_65:
	stx.d	$a2, $s6, $t5
.LBB12_66:
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB12_101
# %bb.67:                               # %.preheader152
	ld.d	$t8, $t8, 8
	ldx.d	$s6, $t8, $a6
	ld.d	$a2, $t7, 8
	ldx.b	$a0, $s6, $a5
	ldx.d	$t7, $a2, $a6
	addi.w	$s2, $zero, -1
	move	$a1, $s2
	bltz	$a0, .LBB12_69
# %bb.68:
	ld.w	$a1, $fp, 432
	slli.d	$a3, $a1, 8
	alsl.d	$a1, $a1, $a3, 3
	add.d	$a1, $a4, $a1
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a1, $a0, 288
.LBB12_69:
	stx.d	$a1, $t7, $a7
	ldx.b	$a0, $s6, $t0
	move	$a1, $s2
	bltz	$a0, .LBB12_71
# %bb.70:
	ld.w	$a1, $fp, 432
	slli.d	$a3, $a1, 8
	alsl.d	$a1, $a1, $a3, 3
	add.d	$a1, $a4, $a1
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a1, $a0, 288
.LBB12_71:
	stx.d	$a1, $t7, $t1
	ldx.b	$a0, $s6, $t2
	move	$a1, $s2
	bltz	$a0, .LBB12_73
# %bb.72:
	ld.w	$a1, $fp, 432
	slli.d	$a3, $a1, 8
	alsl.d	$a1, $a1, $a3, 3
	add.d	$a1, $a4, $a1
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a1, $a0, 288
.LBB12_73:
	stx.d	$a1, $t7, $t3
	ldx.b	$a0, $s6, $t4
	bltz	$a0, .LBB12_75
# %bb.74:
	ld.w	$a1, $fp, 432
	slli.d	$a3, $a1, 8
	alsl.d	$a1, $a1, $a3, 3
	add.d	$a1, $a4, $a1
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$s2, $a0, 288
.LBB12_75:
	stx.d	$s2, $t7, $t5
	bge	$s1, $t6, .LBB12_101
# %bb.76:
	slli.d	$a3, $s1, 3
	ldx.d	$a0, $t8, $a3
	ldx.b	$a1, $a0, $a5
	ldx.d	$t7, $a2, $a3
	addi.w	$t6, $zero, -1
	move	$s1, $t6
	bltz	$a1, .LBB12_78
# %bb.77:
	ld.w	$a3, $fp, 432
	slli.d	$s1, $a3, 8
	alsl.d	$a3, $a3, $s1, 3
	add.d	$a3, $a4, $a3
	alsl.d	$a1, $a1, $a3, 3
	ld.d	$s1, $a1, 288
.LBB12_78:
	stx.d	$s1, $t7, $a7
	ldx.b	$a1, $a0, $t0
	move	$s1, $t6
	bltz	$a1, .LBB12_80
# %bb.79:
	ld.w	$a3, $fp, 432
	slli.d	$s1, $a3, 8
	alsl.d	$a3, $a3, $s1, 3
	add.d	$a3, $a4, $a3
	alsl.d	$a1, $a1, $a3, 3
	ld.d	$s1, $a1, 288
.LBB12_80:
	stx.d	$s1, $t7, $t1
	ldx.b	$a1, $a0, $t2
	move	$s1, $t6
	bltz	$a1, .LBB12_82
# %bb.81:
	ld.w	$a3, $fp, 432
	slli.d	$s1, $a3, 8
	alsl.d	$a3, $a3, $s1, 3
	add.d	$a3, $a4, $a3
	alsl.d	$a1, $a1, $a3, 3
	ld.d	$s1, $a1, 288
.LBB12_82:
	stx.d	$s1, $t7, $t3
	ldx.b	$a0, $a0, $t4
	move	$a1, $t6
	bltz	$a0, .LBB12_84
# %bb.83:
	ld.w	$a1, $fp, 432
	slli.d	$a3, $a1, 8
	alsl.d	$a1, $a1, $a3, 3
	add.d	$a1, $a4, $a1
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a1, $a0, 288
.LBB12_84:
	addi.d	$a3, $a6, 16
	ldx.d	$a0, $t8, $a3
	stx.d	$a1, $t7, $t5
	ldx.b	$a1, $a0, $a5
	ldx.d	$t7, $a2, $a3
	move	$s1, $t6
	bltz	$a1, .LBB12_86
# %bb.85:
	ld.w	$a3, $fp, 432
	slli.d	$s1, $a3, 8
	alsl.d	$a3, $a3, $s1, 3
	add.d	$a3, $a4, $a3
	alsl.d	$a1, $a1, $a3, 3
	ld.d	$s1, $a1, 288
.LBB12_86:
	stx.d	$s1, $t7, $a7
	ldx.b	$a1, $a0, $t0
	move	$s1, $t6
	bltz	$a1, .LBB12_88
# %bb.87:
	ld.w	$a3, $fp, 432
	slli.d	$s1, $a3, 8
	alsl.d	$a3, $a3, $s1, 3
	add.d	$a3, $a4, $a3
	alsl.d	$a1, $a1, $a3, 3
	ld.d	$s1, $a1, 288
.LBB12_88:
	stx.d	$s1, $t7, $t1
	ldx.b	$a1, $a0, $t2
	move	$s1, $t6
	bltz	$a1, .LBB12_90
# %bb.89:
	ld.w	$a3, $fp, 432
	slli.d	$s1, $a3, 8
	alsl.d	$a3, $a3, $s1, 3
	add.d	$a3, $a4, $a3
	alsl.d	$a1, $a1, $a3, 3
	ld.d	$s1, $a1, 288
.LBB12_90:
	stx.d	$s1, $t7, $t3
	ldx.b	$a0, $a0, $t4
	move	$a1, $t6
	bltz	$a0, .LBB12_92
# %bb.91:
	ld.w	$a1, $fp, 432
	slli.d	$a3, $a1, 8
	alsl.d	$a1, $a1, $a3, 3
	add.d	$a1, $a4, $a1
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a1, $a0, 288
.LBB12_92:
	addi.d	$a3, $a6, 24
	ldx.d	$a0, $t8, $a3
	stx.d	$a1, $t7, $t5
	ldx.b	$a1, $a0, $a5
	ldx.d	$a2, $a2, $a3
	move	$a5, $t6
	bltz	$a1, .LBB12_94
# %bb.93:
	ld.w	$a3, $fp, 432
	slli.d	$a5, $a3, 8
	alsl.d	$a3, $a3, $a5, 3
	add.d	$a3, $a4, $a3
	alsl.d	$a1, $a1, $a3, 3
	ld.d	$a5, $a1, 288
.LBB12_94:
	stx.d	$a5, $a2, $a7
	ldx.b	$a1, $a0, $t0
	move	$a5, $t6
	bltz	$a1, .LBB12_96
# %bb.95:
	ld.w	$a3, $fp, 432
	slli.d	$a5, $a3, 8
	alsl.d	$a3, $a3, $a5, 3
	add.d	$a3, $a4, $a3
	alsl.d	$a1, $a1, $a3, 3
	ld.d	$a5, $a1, 288
.LBB12_96:
	stx.d	$a5, $a2, $t1
	ldx.b	$a1, $a0, $t2
	move	$a5, $t6
	bltz	$a1, .LBB12_98
# %bb.97:
	ld.w	$a3, $fp, 432
	slli.d	$a5, $a3, 8
	alsl.d	$a3, $a3, $a5, 3
	add.d	$a3, $a4, $a3
	alsl.d	$a1, $a1, $a3, 3
	ld.d	$a5, $a1, 288
.LBB12_98:
	stx.d	$a5, $a2, $t3
	ldx.b	$a0, $a0, $t4
	bltz	$a0, .LBB12_100
# %bb.99:
	ld.w	$a1, $fp, 432
	slli.d	$a3, $a1, 8
	alsl.d	$a1, $a1, $a3, 3
	add.d	$a1, $a4, $a1
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$t6, $a0, 288
.LBB12_100:
	stx.d	$t6, $a2, $t5
.LBB12_101:                             # %.loopexit153
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 20
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.h	$a2, $s0, $a1
	ori	$a1, $s4, 2064
	ldx.b	$a3, $s0, $a1
	ori	$a1, $s4, 2068
	ldx.b	$a4, $s0, $a1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.b	$a5, $s0, $a1
	addi.d	$a0, $a0, -1
	sltui	$s1, $a0, 1
	ori	$a0, $zero, 1
	move	$a1, $zero
	move	$a6, $s1
	pcaddu18i	$ra, %call36(StoreMVBlock8x8)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ldx.h	$a2, $s0, $a0
	ori	$a0, $s4, 2065
	ldx.b	$a3, $s0, $a0
	ori	$a0, $s4, 2069
	ldx.b	$a4, $s0, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ldx.b	$a5, $s0, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	move	$a6, $s1
	pcaddu18i	$ra, %call36(StoreMVBlock8x8)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ldx.h	$a2, $s0, $a0
	ori	$a0, $s4, 2066
	ldx.b	$a3, $s0, $a0
	ori	$a0, $s4, 2070
	ldx.b	$a4, $s0, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ldx.b	$a5, $s0, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a6, $s1
	pcaddu18i	$ra, %call36(StoreMVBlock8x8)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldx.h	$a2, $s0, $a0
	ori	$a0, $s4, 2067
	ldx.b	$a3, $s0, $a0
	ori	$a0, $s4, 2071
	ldx.b	$a4, $s0, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
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
	addi.d	$a0, $sp, 96
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 96
	move	$a0, $zero
	move	$a1, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(RestoreMVBlock8x8)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 96
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 96
	move	$a0, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(RestoreMVBlock8x8)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 96
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 96
	move	$a0, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(RestoreMVBlock8x8)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 96
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	addi.d	$a2, $sp, 96
	move	$a0, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(RestoreMVBlock8x8)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(cofAC_8x8ts)
	ld.d	$s1, $a0, %pc_lo12(cofAC_8x8ts)
	move	$s2, $zero
	ori	$s6, $zero, 32
	.p2align	4, , 16
.LBB12_102:                             # %.preheader151
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
	bne	$s2, $s6, .LBB12_102
# %bb.103:
	pcalau12i	$a0, %pc_hi20(cnt_nonz8_8x8ts)
	ld.w	$a1, $a0, %pc_lo12(cnt_nonz8_8x8ts)
	ld.d	$a0, $s3, 0
	ori	$a2, $zero, 5
	blt	$a2, $a1, .LBB12_113
# %bb.104:
	ld.w	$a1, $a0, 44
	beqz	$a1, .LBB12_112
.LBB12_105:
	ld.w	$a2, $a0, 20
	ori	$a1, $zero, 3
	beq	$a2, $a1, .LBB12_113
# %bb.106:
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
	b	.LBB12_108
	.p2align	4, , 16
.LBB12_107:                             #   in Loop: Header=BB12_108 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 64
	beq	$a2, $a7, .LBB12_126
.LBB12_108:                             # =>This Inner Loop Header: Depth=1
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
	bne	$t1, $a1, .LBB12_107
# %bb.109:                              #   in Loop: Header=BB12_108 Depth=1
	ld.w	$t1, $a5, %pc_lo12(si_frame_indicator)
	bnez	$t1, .LBB12_107
# %bb.110:                              #   in Loop: Header=BB12_108 Depth=1
	ld.w	$t1, $a6, %pc_lo12(sp2_frame_indicator)
	bnez	$t1, .LBB12_107
# %bb.111:                              #   in Loop: Header=BB12_108 Depth=1
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
	b	.LBB12_107
.LBB12_112:
	ldptr.w	$a1, $a0, 15540
	beqz	$a1, .LBB12_105
.LBB12_113:
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
	b	.LBB12_115
	.p2align	4, , 16
.LBB12_114:                             #   in Loop: Header=BB12_115 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 64
	beq	$a1, $a7, .LBB12_126
.LBB12_115:                             # =>This Inner Loop Header: Depth=1
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
	bne	$t1, $a6, .LBB12_114
# %bb.116:                              #   in Loop: Header=BB12_115 Depth=1
	ld.w	$t1, $a4, %pc_lo12(si_frame_indicator)
	bnez	$t1, .LBB12_114
# %bb.117:                              #   in Loop: Header=BB12_115 Depth=1
	ld.w	$t1, $a5, %pc_lo12(sp2_frame_indicator)
	bnez	$t1, .LBB12_114
# %bb.118:                              #   in Loop: Header=BB12_115 Depth=1
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
	b	.LBB12_114
.LBB12_119:
	ld.w	$a0, $a3, 44
	beqz	$a0, .LBB12_127
.LBB12_120:
	st.w	$zero, $fp, 364
	st.d	$zero, $fp, 368
	pcalau12i	$a0, %pc_hi20(tr4x4)
	addi.d	$a1, $a0, %pc_lo12(tr4x4)
	lu12i.w	$a2, 1
	ori	$a0, $a2, 2584
	add.d	$a0, $a1, $a0
	ori	$a2, $a2, 3096
	add.d	$a1, $a1, $a2
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	move	$a4, $zero
	pcalau12i	$a5, %pc_hi20(si_frame_indicator)
	pcalau12i	$a6, %pc_hi20(sp2_frame_indicator)
	ori	$a7, $zero, 3
	ori	$t0, $zero, 16
	pcalau12i	$t1, %pc_hi20(lrec)
	b	.LBB12_122
	.p2align	4, , 16
.LBB12_121:                             #   in Loop: Header=BB12_122 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a0, $a0, 32
	addi.d	$a1, $a1, 64
	beq	$a4, $t0, .LBB12_126
.LBB12_122:                             # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a2, 0
	ld.w	$t3, $a3, 180
	ldptr.d	$t2, $t2, 6440
	add.d	$t3, $a4, $t3
	slli.d	$t3, $t3, 3
	ldx.d	$t2, $t2, $t3
	ld.w	$a3, $a3, 176
	vld	$vr0, $a0, 0
	slli.d	$t3, $a3, 1
	vstx	$vr0, $t2, $t3
	vld	$vr0, $a0, 16
	alsl.d	$a3, $a3, $t2, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $s3, 0
	ld.w	$t2, $a3, 20
	bne	$t2, $a7, .LBB12_121
# %bb.123:                              #   in Loop: Header=BB12_122 Depth=1
	ld.w	$t2, $a5, %pc_lo12(si_frame_indicator)
	bnez	$t2, .LBB12_121
# %bb.124:                              #   in Loop: Header=BB12_122 Depth=1
	ld.w	$t2, $a6, %pc_lo12(sp2_frame_indicator)
	bnez	$t2, .LBB12_121
# %bb.125:                              #   in Loop: Header=BB12_122 Depth=1
	ld.w	$t2, $a3, 180
	ld.d	$t3, $t1, %pc_lo12(lrec)
	add.d	$t2, $a4, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $t3, $t2
	ld.w	$a3, $a3, 176
	vld	$vr0, $a1, 0
	slli.d	$t3, $a3, 2
	vstx	$vr0, $t2, $t3
	vld	$vr0, $a1, 48
	alsl.d	$a3, $a3, $t2, 2
	vst	$vr0, $a3, 48
	vld	$vr0, $a1, 32
	vst	$vr0, $a3, 32
	vld	$vr0, $a1, 16
	vst	$vr0, $a3, 16
	ld.d	$a3, $s3, 0
	b	.LBB12_121
.LBB12_126:                             # %.loopexit
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2272
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
.LBB12_127:
	ldptr.w	$a0, $a3, 15540
	bnez	$a0, .LBB12_25
	b	.LBB12_120
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
	ld.d	$t5, $a0, %got_pc_lo12(img)
	ld.d	$a0, $t5, 0
	ldptr.d	$ra, $a0, 14384
	ldptr.d	$s6, $a0, 14376
	beqz	$a1, .LBB15_31
# %bb.1:                                # %.preheader228
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
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
	ld.d	$a0, $t5, 0
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
	ld.d	$a6, $t5, 0
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
	move	$s6, $t5
	move	$s5, $t6
	move	$s0, $t7
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ori	$t8, $zero, 2
	move	$t7, $s0
	ori	$s0, $zero, 1
	move	$t6, $s5
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	move	$t5, $s6
	move	$t4, $s2
	lu12i.w	$s2, 3
	move	$t3, $s4
	ori	$s4, $zero, 255
	move	$ra, $s3
	ori	$s3, $zero, 4
	b	.LBB15_5
.LBB15_19:                              # %.loopexit227.loopexit244
	ld.d	$a0, $t5, 0
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
.LBB15_20:                              # %.loopexit227
	ldptr.w	$a1, $a0, 15268
	beqz	$a1, .LBB15_30
# %bb.21:                               # %.preheader225
	ld.w	$a0, $a0, 32
	blez	$a0, .LBB15_30
# %bb.22:                               # %.preheader224.us.preheader
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(rdopt)
	ori	$a3, $zero, 4
	.p2align	4, , 16
.LBB15_23:                              # %.preheader224.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_24 Depth 2
                                        #       Child Loop BB15_25 Depth 3
                                        #       Child Loop BB15_27 Depth 3
	move	$a4, $zero
	slli.d	$a5, $a1, 3
	.p2align	4, , 16
.LBB15_24:                              # %.preheader223.us.us
                                        #   Parent Loop BB15_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_25 Depth 3
                                        #       Child Loop BB15_27 Depth 3
	ld.d	$a6, $a2, %pc_lo12(rdopt)
	ld.d	$a7, $a6, 1672
	slli.d	$t0, $a4, 3
	ld.d	$a6, $a6, 1664
	ldx.d	$t1, $ra, $t0
	ldx.d	$a7, $a7, $t0
	ldx.d	$t2, $s6, $t0
	ldx.d	$t3, $a6, $t0
	ldx.d	$a6, $t1, $a5
	ldx.d	$a7, $a7, $a5
	ldx.d	$t0, $t2, $a5
	ldx.d	$t1, $t3, $a5
	ld.d	$t2, $a6, 0
	ld.d	$t3, $a7, 0
	ld.d	$t4, $t0, 0
	ld.d	$t5, $t1, 0
	move	$t6, $a0
	.p2align	4, , 16
.LBB15_25:                              # %.preheader.us.us.us
                                        #   Parent Loop BB15_23 Depth=1
                                        #     Parent Loop BB15_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t7, $t2, 0
	ld.d	$s1, $t7, 0
	ld.d	$fp, $t3, 0
	ld.d	$t8, $t4, 0
	ld.h	$s2, $s1, 0
	ld.d	$s3, $fp, 0
	ld.d	$s4, $t8, 0
	ld.d	$s0, $t5, 0
	st.h	$s2, $s3, 0
	ld.h	$s2, $s4, 0
	ld.d	$s5, $s0, 0
	st.h	$s2, $s5, 0
	ld.h	$s1, $s1, 2
	st.h	$s1, $s3, 2
	ld.h	$s1, $s4, 2
	ld.d	$s2, $t7, 8
	st.h	$s1, $s5, 2
	ld.h	$s1, $s2, 0
	ld.d	$s3, $fp, 8
	ld.d	$s4, $t8, 8
	st.h	$s1, $s3, 0
	ld.h	$s1, $s4, 0
	ld.d	$s5, $s0, 8
	st.h	$s1, $s5, 0
	ld.h	$s1, $s2, 2
	st.h	$s1, $s3, 2
	ld.h	$s1, $s4, 2
	ld.d	$s2, $t7, 16
	st.h	$s1, $s5, 2
	ld.h	$s1, $s2, 0
	ld.d	$s3, $fp, 16
	ld.d	$s4, $t8, 16
	st.h	$s1, $s3, 0
	ld.h	$s1, $s4, 0
	ld.d	$s5, $s0, 16
	st.h	$s1, $s5, 0
	ld.h	$s1, $s2, 2
	st.h	$s1, $s3, 2
	ld.h	$s1, $s4, 2
	ld.d	$s2, $t7, 24
	st.h	$s1, $s5, 2
	ld.h	$s1, $s2, 0
	ld.d	$s3, $fp, 24
	ld.d	$s4, $t8, 24
	st.h	$s1, $s3, 0
	ld.h	$s1, $s4, 0
	ld.d	$s5, $s0, 24
	st.h	$s1, $s5, 0
	ld.h	$s1, $s2, 2
	st.h	$s1, $s3, 2
	ld.h	$s1, $s4, 2
	ld.d	$s2, $t7, 32
	st.h	$s1, $s5, 2
	ld.h	$s1, $s2, 0
	ld.d	$s3, $fp, 32
	ld.d	$s4, $t8, 32
	st.h	$s1, $s3, 0
	ld.h	$s1, $s4, 0
	ld.d	$s5, $s0, 32
	st.h	$s1, $s5, 0
	ld.h	$s1, $s2, 2
	st.h	$s1, $s3, 2
	ld.h	$s1, $s4, 2
	ld.d	$s2, $t7, 40
	st.h	$s1, $s5, 2
	ld.h	$s1, $s2, 0
	ld.d	$s3, $fp, 40
	ld.d	$s4, $t8, 40
	st.h	$s1, $s3, 0
	ld.h	$s1, $s4, 0
	ld.d	$s5, $s0, 40
	st.h	$s1, $s5, 0
	ld.h	$s1, $s2, 2
	st.h	$s1, $s3, 2
	ld.h	$s1, $s4, 2
	ld.d	$s2, $t7, 48
	st.h	$s1, $s5, 2
	ld.h	$s1, $s2, 0
	ld.d	$s3, $fp, 48
	ld.d	$s4, $t8, 48
	st.h	$s1, $s3, 0
	ld.h	$s1, $s4, 0
	ld.d	$s5, $s0, 48
	st.h	$s1, $s5, 0
	ld.h	$s1, $s2, 2
	st.h	$s1, $s3, 2
	ld.h	$s1, $s4, 2
	ld.d	$s2, $t7, 56
	st.h	$s1, $s5, 2
	ld.h	$s1, $s2, 0
	ld.d	$s3, $fp, 56
	ld.d	$s4, $t8, 56
	st.h	$s1, $s3, 0
	ld.h	$s1, $s4, 0
	ld.d	$s5, $s0, 56
	st.h	$s1, $s5, 0
	ld.h	$s1, $s2, 2
	st.h	$s1, $s3, 2
	ld.h	$s1, $s4, 2
	ld.d	$t7, $t7, 64
	st.h	$s1, $s5, 2
	ld.h	$s1, $t7, 0
	ld.d	$fp, $fp, 64
	ld.d	$t8, $t8, 64
	st.h	$s1, $fp, 0
	ld.h	$s1, $t8, 0
	ld.d	$s0, $s0, 64
	st.h	$s1, $s0, 0
	ld.h	$t7, $t7, 2
	st.h	$t7, $fp, 2
	ld.h	$t7, $t8, 2
	st.h	$t7, $s0, 2
	addi.d	$t2, $t2, 8
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, 8
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	bnez	$t6, .LBB15_25
# %bb.26:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB15_24 Depth=2
	ld.d	$a6, $a6, 8
	ld.d	$a7, $a7, 8
	ld.d	$t0, $t0, 8
	ld.d	$t1, $t1, 8
	move	$t2, $a0
	.p2align	4, , 16
.LBB15_27:                              # %.preheader.us.us.us.1
                                        #   Parent Loop BB15_23 Depth=1
                                        #     Parent Loop BB15_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t3, $a6, 0
	ld.d	$t7, $t3, 0
	ld.d	$t5, $a7, 0
	ld.d	$t4, $t0, 0
	ld.h	$t8, $t7, 0
	ld.d	$fp, $t5, 0
	ld.d	$s0, $t4, 0
	ld.d	$t6, $t1, 0
	st.h	$t8, $fp, 0
	ld.h	$t8, $s0, 0
	ld.d	$s1, $t6, 0
	st.h	$t8, $s1, 0
	ld.h	$t7, $t7, 2
	st.h	$t7, $fp, 2
	ld.h	$t7, $s0, 2
	ld.d	$t8, $t3, 8
	st.h	$t7, $s1, 2
	ld.h	$t7, $t8, 0
	ld.d	$fp, $t5, 8
	ld.d	$s0, $t4, 8
	st.h	$t7, $fp, 0
	ld.h	$t7, $s0, 0
	ld.d	$s1, $t6, 8
	st.h	$t7, $s1, 0
	ld.h	$t7, $t8, 2
	st.h	$t7, $fp, 2
	ld.h	$t7, $s0, 2
	ld.d	$t8, $t3, 16
	st.h	$t7, $s1, 2
	ld.h	$t7, $t8, 0
	ld.d	$fp, $t5, 16
	ld.d	$s0, $t4, 16
	st.h	$t7, $fp, 0
	ld.h	$t7, $s0, 0
	ld.d	$s1, $t6, 16
	st.h	$t7, $s1, 0
	ld.h	$t7, $t8, 2
	st.h	$t7, $fp, 2
	ld.h	$t7, $s0, 2
	ld.d	$t8, $t3, 24
	st.h	$t7, $s1, 2
	ld.h	$t7, $t8, 0
	ld.d	$fp, $t5, 24
	ld.d	$s0, $t4, 24
	st.h	$t7, $fp, 0
	ld.h	$t7, $s0, 0
	ld.d	$s1, $t6, 24
	st.h	$t7, $s1, 0
	ld.h	$t7, $t8, 2
	st.h	$t7, $fp, 2
	ld.h	$t7, $s0, 2
	ld.d	$t8, $t3, 32
	st.h	$t7, $s1, 2
	ld.h	$t7, $t8, 0
	ld.d	$fp, $t5, 32
	ld.d	$s0, $t4, 32
	st.h	$t7, $fp, 0
	ld.h	$t7, $s0, 0
	ld.d	$s1, $t6, 32
	st.h	$t7, $s1, 0
	ld.h	$t7, $t8, 2
	st.h	$t7, $fp, 2
	ld.h	$t7, $s0, 2
	ld.d	$t8, $t3, 40
	st.h	$t7, $s1, 2
	ld.h	$t7, $t8, 0
	ld.d	$fp, $t5, 40
	ld.d	$s0, $t4, 40
	st.h	$t7, $fp, 0
	ld.h	$t7, $s0, 0
	ld.d	$s1, $t6, 40
	st.h	$t7, $s1, 0
	ld.h	$t7, $t8, 2
	st.h	$t7, $fp, 2
	ld.h	$t7, $s0, 2
	ld.d	$t8, $t3, 48
	st.h	$t7, $s1, 2
	ld.h	$t7, $t8, 0
	ld.d	$fp, $t5, 48
	ld.d	$s0, $t4, 48
	st.h	$t7, $fp, 0
	ld.h	$t7, $s0, 0
	ld.d	$s1, $t6, 48
	st.h	$t7, $s1, 0
	ld.h	$t7, $t8, 2
	st.h	$t7, $fp, 2
	ld.h	$t7, $s0, 2
	ld.d	$t8, $t3, 56
	st.h	$t7, $s1, 2
	ld.h	$t7, $t8, 0
	ld.d	$fp, $t5, 56
	ld.d	$s0, $t4, 56
	st.h	$t7, $fp, 0
	ld.h	$t7, $s0, 0
	ld.d	$s1, $t6, 56
	st.h	$t7, $s1, 0
	ld.h	$t7, $t8, 2
	st.h	$t7, $fp, 2
	ld.h	$t7, $s0, 2
	ld.d	$t3, $t3, 64
	st.h	$t7, $s1, 2
	ld.h	$t7, $t3, 0
	ld.d	$t5, $t5, 64
	ld.d	$t4, $t4, 64
	st.h	$t7, $t5, 0
	ld.h	$t7, $t4, 0
	ld.d	$t6, $t6, 64
	st.h	$t7, $t6, 0
	ld.h	$t3, $t3, 2
	st.h	$t3, $t5, 2
	ld.h	$t3, $t4, 2
	st.h	$t3, $t6, 2
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	bnez	$t2, .LBB15_27
# %bb.28:                               # %._crit_edge.us.us.us.1
                                        #   in Loop: Header=BB15_24 Depth=2
	addi.d	$a4, $a4, 1
	bne	$a4, $a3, .LBB15_24
# %bb.29:                               # %.split241.us.us
                                        #   in Loop: Header=BB15_23 Depth=1
	addi.d	$a1, $a1, 1
	bne	$a1, $a3, .LBB15_23
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
	move	$s1, $a2
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	move	$s5, $a0
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
	ldptr.d	$s3, $a1, 14224
	ld.w	$s4, $a1, 20
	ld.w	$s0, $a1, 12
	move	$s2, $a0
	ori	$a0, $zero, 2
	sltui	$fp, $s5, 1
	bne	$s4, $a0, .LBB16_12
# %bb.1:                                # %.thread
	move	$a0, $s5
	pcaddu18i	$ra, %call36(SetModesAndRefframeForBlocks)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
.LBB16_2:                               # %.critedge
	ldptr.w	$a1, $a0, 15268
	ori	$a2, $zero, 536
	mul.d	$a2, $s0, $a2
	add.d	$s8, $s3, $a2
	beqz	$a1, .LBB16_5
# %bb.3:
	ld.w	$a1, $s8, 424
	bnez	$a1, .LBB16_5
# %bb.4:
	ld.w	$a1, $a0, 20
	or	$a1, $a1, $s5
	beqz	$a1, .LBB16_33
.LBB16_5:
	ldptr.w	$a1, $a0, 15260
	lu12i.w	$s0, 3
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
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
	move	$s3, $s2
	move	$s2, $s0
	ori	$s0, $s0, 3260
	ldx.w	$a2, $a0, $s0
	move	$s7, $fp
	move	$fp, $s5
	move	$s5, $s4
	move	$s4, $s1
	ori	$s1, $s2, 3256
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
	move	$s0, $s2
	move	$s2, $s3
	ldx.w	$a3, $a0, $s1
	move	$s1, $s4
	move	$s4, $s5
	move	$s5, $fp
	move	$fp, $s7
	ld.d	$a0, $a1, 0
	mul.w	$a1, $a3, $a2
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB16_7:
	ori	$a0, $zero, 7
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	st.d	$s6, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	blt	$a0, $s5, .LBB16_30
# %bb.8:
	pcaddu18i	$ra, %call36(LumaResidualCoding)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB16_138
# %bb.9:
	ld.w	$a0, $s8, 364
	beqz	$a0, .LBB16_36
# %bb.10:
	ld.d	$a0, $s6, 0
	ld.w	$a2, $a0, 20
	ori	$a1, $zero, 1
	bne	$a2, $a1, .LBB16_199
# %bb.11:
	ldptr.w	$a0, $a0, 15256
	beq	$a0, $a1, .LBB16_199
	b	.LBB16_138
.LBB16_12:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	addi.d	$a0, $a0, -1
	sltu	$a0, $zero, $a0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(SetModesAndRefframeForBlocks)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	bnez	$s5, .LBB16_2
# %bb.13:
	ori	$a1, $zero, 1
	bne	$s4, $a1, .LBB16_2
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
	bltz	$a2, .LBB16_199
# %bb.15:
	addi.d	$a2, $a1, 1
	ldx.b	$a3, $a7, $a2
	bltz	$a3, .LBB16_199
# %bb.16:
	addi.d	$a3, $a1, 2
	ldx.b	$a4, $a7, $a3
	bltz	$a4, .LBB16_199
# %bb.17:
	addi.d	$a4, $a1, 3
	ldx.b	$a7, $a7, $a4
	bltz	$a7, .LBB16_199
# %bb.18:                               # %.preheader219.1
	alsl.d	$a5, $a6, $a5, 3
	ld.d	$a6, $a5, 8
	ldx.b	$a7, $a6, $a1
	bltz	$a7, .LBB16_199
# %bb.19:
	ldx.b	$a7, $a6, $a2
	bltz	$a7, .LBB16_199
# %bb.20:
	ldx.b	$a7, $a6, $a3
	bltz	$a7, .LBB16_199
# %bb.21:
	ldx.b	$a6, $a6, $a4
	bltz	$a6, .LBB16_199
# %bb.22:                               # %.preheader219.2
	ld.d	$a6, $a5, 16
	ldx.b	$a7, $a6, $a1
	bltz	$a7, .LBB16_199
# %bb.23:
	ldx.b	$a7, $a6, $a2
	bltz	$a7, .LBB16_199
# %bb.24:
	ldx.b	$a7, $a6, $a3
	bltz	$a7, .LBB16_199
# %bb.25:
	ldx.b	$a6, $a6, $a4
	bltz	$a6, .LBB16_199
# %bb.26:                               # %.preheader219.3
	ld.d	$a5, $a5, 24
	ldx.b	$a1, $a5, $a1
	bltz	$a1, .LBB16_199
# %bb.27:
	ldx.b	$a1, $a5, $a2
	bltz	$a1, .LBB16_199
# %bb.28:
	ldx.b	$a1, $a5, $a3
	bltz	$a1, .LBB16_199
# %bb.29:
	ldx.b	$a1, $a5, $a4
	ori	$fp, $zero, 1
	bgez	$a1, .LBB16_2
	b	.LBB16_199
.LBB16_30:
	addi.d	$a0, $s5, -8
	ori	$a1, $zero, 6
	bltu	$a1, $a0, .LBB16_138
# %bb.31:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI16_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI16_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB16_32:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(SetCoeffAndReconstruction8x8)
	jirl	$ra, $ra, 0
	b	.LBB16_138
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
	bltu	$a2, $a3, .LBB16_199
# %bb.34:
	ld.w	$a2, $a0, 8
	ld.h	$a1, $a1, 2
	slli.d	$a3, $a2, 4
	alsl.d	$a2, $a2, $a3, 3
	pcalau12i	$a3, %got_pc_hi20(LEVELMVLIMIT)
	ld.d	$a3, $a3, %got_pc_lo12(LEVELMVLIMIT)
	add.d	$a2, $a3, $a2
	ld.w	$a3, $a2, 16
	blt	$a1, $a3, .LBB16_199
# %bb.35:
	ld.w	$a2, $a2, 20
	bge	$a2, $a1, .LBB16_5
	b	.LBB16_199
.LBB16_36:
	ld.w	$a0, $s8, 472
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_199
	b	.LBB16_138
.LBB16_37:
	pcaddu18i	$ra, %call36(intrapred_luma_16x16)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 156
	pcaddu18i	$ra, %call36(find_sad_16x16)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 156
	pcaddu18i	$ra, %call36(dct_luma_16x16)
	jirl	$ra, $ra, 0
	st.w	$a0, $s8, 364
	b	.LBB16_138
.LBB16_38:
	addi.d	$a0, $sp, 140
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_Intra4x4Macroblock)
	jirl	$ra, $ra, 0
	st.w	$a0, $s8, 364
	b	.LBB16_138
.LBB16_39:
	addi.d	$a0, $sp, 140
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_new_Intra8x8Macroblock)
	jirl	$ra, $ra, 0
	st.w	$a0, $s8, 364
	b	.LBB16_138
.LBB16_40:                              # %.preheader218
	ld.d	$a0, $s6, 0
	ld.w	$a4, $a0, 196
	ld.w	$a5, $a0, 180
	pcalau12i	$a1, %pc_hi20(imgY_org)
	ld.d	$a6, $a1, %pc_lo12(imgY_org)
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a2, $a1, 0
	ldptr.d	$a7, $a2, 6440
	slli.d	$a2, $a4, 3
	ldx.d	$t1, $a6, $a2
	slli.d	$a2, $a5, 3
	ldx.d	$t2, $a7, $a2
	ld.w	$a3, $a0, 192
	sub.d	$t0, $t2, $t1
	ori	$t3, $zero, 31
	addi.w	$a2, $a3, 15
	bltu	$t3, $t0, .LBB16_43
# %bb.41:                               # %scalar.ph.preheader
	addi.d	$t0, $a3, -1
	alsl.d	$t1, $a3, $t1, 1
	alsl.d	$t2, $a3, $t2, 1
	.p2align	4, , 16
.LBB16_42:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t3, $t1, 0
	st.h	$t3, $t2, 0
	addi.d	$t0, $t0, 1
	addi.d	$t1, $t1, 2
	addi.d	$t2, $t2, 2
	blt	$t0, $a2, .LBB16_42
	b	.LBB16_44
.LBB16_43:                              # %vector.body
	alsl.d	$t0, $a3, $t1, 1
	slli.d	$t3, $a3, 1
	vldx	$vr0, $t1, $t3
	vld	$vr1, $t0, 16
	alsl.d	$t0, $a3, $t2, 1
	vstx	$vr0, $t2, $t3
	vst	$vr1, $t0, 16
.LBB16_44:                              # %.loopexit601
	alsl.d	$a4, $a4, $a6, 3
	ld.d	$t0, $a4, 8
	alsl.d	$a5, $a5, $a7, 3
	ld.d	$a7, $a5, 8
	sub.d	$a6, $a7, $t0
	ori	$t1, $zero, 31
	bltu	$t1, $a6, .LBB16_47
# %bb.45:                               # %scalar.ph372.preheader
	addi.d	$a6, $a3, -1
	alsl.d	$a7, $a3, $a7, 1
	alsl.d	$t0, $a3, $t0, 1
	.p2align	4, , 16
.LBB16_46:                              # %scalar.ph372
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t1, $t0, 0
	st.h	$t1, $a7, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 2
	addi.d	$t0, $t0, 2
	blt	$a6, $a2, .LBB16_46
	b	.LBB16_48
.LBB16_47:                              # %vector.body374
	alsl.d	$a6, $a3, $t0, 1
	slli.d	$t1, $a3, 1
	vldx	$vr0, $t0, $t1
	vld	$vr1, $a6, 16
	alsl.d	$a6, $a3, $a7, 1
	vstx	$vr0, $a7, $t1
	vst	$vr1, $a6, 16
.LBB16_48:                              # %.loopexit600
	ld.d	$t0, $a4, 16
	ld.d	$a7, $a5, 16
	sub.d	$a6, $a7, $t0
	ori	$t1, $zero, 31
	bltu	$t1, $a6, .LBB16_51
# %bb.49:                               # %scalar.ph381.preheader
	addi.d	$a6, $a3, -1
	alsl.d	$a7, $a3, $a7, 1
	alsl.d	$t0, $a3, $t0, 1
	.p2align	4, , 16
.LBB16_50:                              # %scalar.ph381
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t1, $t0, 0
	st.h	$t1, $a7, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 2
	addi.d	$t0, $t0, 2
	blt	$a6, $a2, .LBB16_50
	b	.LBB16_52
.LBB16_51:                              # %vector.body383
	alsl.d	$a6, $a3, $t0, 1
	slli.d	$t1, $a3, 1
	vldx	$vr0, $t0, $t1
	vld	$vr1, $a6, 16
	alsl.d	$a6, $a3, $a7, 1
	vstx	$vr0, $a7, $t1
	vst	$vr1, $a6, 16
.LBB16_52:                              # %.loopexit599
	ld.d	$t0, $a4, 24
	ld.d	$a7, $a5, 24
	sub.d	$a6, $a7, $t0
	ori	$t1, $zero, 31
	bltu	$t1, $a6, .LBB16_55
# %bb.53:                               # %scalar.ph390.preheader
	addi.d	$a6, $a3, -1
	alsl.d	$a7, $a3, $a7, 1
	alsl.d	$t0, $a3, $t0, 1
	.p2align	4, , 16
.LBB16_54:                              # %scalar.ph390
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t1, $t0, 0
	st.h	$t1, $a7, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 2
	addi.d	$t0, $t0, 2
	blt	$a6, $a2, .LBB16_54
	b	.LBB16_56
.LBB16_55:                              # %vector.body392
	alsl.d	$a6, $a3, $t0, 1
	slli.d	$t1, $a3, 1
	vldx	$vr0, $t0, $t1
	vld	$vr1, $a6, 16
	alsl.d	$a6, $a3, $a7, 1
	vstx	$vr0, $a7, $t1
	vst	$vr1, $a6, 16
.LBB16_56:                              # %.loopexit598
	ld.d	$t0, $a4, 32
	ld.d	$a7, $a5, 32
	sub.d	$a6, $a7, $t0
	ori	$t1, $zero, 31
	bltu	$t1, $a6, .LBB16_59
# %bb.57:                               # %scalar.ph399.preheader
	addi.d	$a6, $a3, -1
	alsl.d	$a7, $a3, $a7, 1
	alsl.d	$t0, $a3, $t0, 1
	.p2align	4, , 16
.LBB16_58:                              # %scalar.ph399
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t1, $t0, 0
	st.h	$t1, $a7, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 2
	addi.d	$t0, $t0, 2
	blt	$a6, $a2, .LBB16_58
	b	.LBB16_60
.LBB16_59:                              # %vector.body401
	alsl.d	$a6, $a3, $t0, 1
	slli.d	$t1, $a3, 1
	vldx	$vr0, $t0, $t1
	vld	$vr1, $a6, 16
	alsl.d	$a6, $a3, $a7, 1
	vstx	$vr0, $a7, $t1
	vst	$vr1, $a6, 16
.LBB16_60:                              # %.loopexit597
	ld.d	$t0, $a4, 40
	ld.d	$a7, $a5, 40
	sub.d	$a6, $a7, $t0
	ori	$t1, $zero, 31
	bltu	$t1, $a6, .LBB16_63
# %bb.61:                               # %scalar.ph408.preheader
	addi.d	$a6, $a3, -1
	alsl.d	$a7, $a3, $a7, 1
	alsl.d	$t0, $a3, $t0, 1
	.p2align	4, , 16
.LBB16_62:                              # %scalar.ph408
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t1, $t0, 0
	st.h	$t1, $a7, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 2
	addi.d	$t0, $t0, 2
	blt	$a6, $a2, .LBB16_62
	b	.LBB16_64
.LBB16_63:                              # %vector.body410
	alsl.d	$a6, $a3, $t0, 1
	slli.d	$t1, $a3, 1
	vldx	$vr0, $t0, $t1
	vld	$vr1, $a6, 16
	alsl.d	$a6, $a3, $a7, 1
	vstx	$vr0, $a7, $t1
	vst	$vr1, $a6, 16
.LBB16_64:                              # %.loopexit596
	ld.d	$t0, $a4, 48
	ld.d	$a7, $a5, 48
	sub.d	$a6, $a7, $t0
	ori	$t1, $zero, 31
	bltu	$t1, $a6, .LBB16_67
# %bb.65:                               # %scalar.ph417.preheader
	addi.d	$a6, $a3, -1
	alsl.d	$a7, $a3, $a7, 1
	alsl.d	$t0, $a3, $t0, 1
	.p2align	4, , 16
.LBB16_66:                              # %scalar.ph417
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t1, $t0, 0
	st.h	$t1, $a7, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 2
	addi.d	$t0, $t0, 2
	blt	$a6, $a2, .LBB16_66
	b	.LBB16_68
.LBB16_67:                              # %vector.body419
	alsl.d	$a6, $a3, $t0, 1
	slli.d	$t1, $a3, 1
	vldx	$vr0, $t0, $t1
	vld	$vr1, $a6, 16
	alsl.d	$a6, $a3, $a7, 1
	vstx	$vr0, $a7, $t1
	vst	$vr1, $a6, 16
.LBB16_68:                              # %.loopexit595
	ld.d	$t0, $a4, 56
	ld.d	$a7, $a5, 56
	sub.d	$a6, $a7, $t0
	ori	$t1, $zero, 31
	bltu	$t1, $a6, .LBB16_71
# %bb.69:                               # %scalar.ph426.preheader
	addi.d	$a6, $a3, -1
	alsl.d	$a7, $a3, $a7, 1
	alsl.d	$t0, $a3, $t0, 1
	.p2align	4, , 16
.LBB16_70:                              # %scalar.ph426
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t1, $t0, 0
	st.h	$t1, $a7, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 2
	addi.d	$t0, $t0, 2
	blt	$a6, $a2, .LBB16_70
	b	.LBB16_72
.LBB16_71:                              # %vector.body428
	alsl.d	$a6, $a3, $t0, 1
	slli.d	$t1, $a3, 1
	vldx	$vr0, $t0, $t1
	vld	$vr1, $a6, 16
	alsl.d	$a6, $a3, $a7, 1
	vstx	$vr0, $a7, $t1
	vst	$vr1, $a6, 16
.LBB16_72:                              # %.loopexit594
	ld.d	$t0, $a4, 64
	ld.d	$a7, $a5, 64
	sub.d	$a6, $a7, $t0
	ori	$t1, $zero, 31
	bltu	$t1, $a6, .LBB16_75
# %bb.73:                               # %scalar.ph435.preheader
	addi.d	$a6, $a3, -1
	alsl.d	$a7, $a3, $a7, 1
	alsl.d	$t0, $a3, $t0, 1
	.p2align	4, , 16
.LBB16_74:                              # %scalar.ph435
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t1, $t0, 0
	st.h	$t1, $a7, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 2
	addi.d	$t0, $t0, 2
	blt	$a6, $a2, .LBB16_74
	b	.LBB16_76
.LBB16_75:                              # %vector.body437
	alsl.d	$a6, $a3, $t0, 1
	slli.d	$t1, $a3, 1
	vldx	$vr0, $t0, $t1
	vld	$vr1, $a6, 16
	alsl.d	$a6, $a3, $a7, 1
	vstx	$vr0, $a7, $t1
	vst	$vr1, $a6, 16
.LBB16_76:                              # %.loopexit593
	ld.d	$t0, $a4, 72
	ld.d	$a7, $a5, 72
	sub.d	$a6, $a7, $t0
	ori	$t1, $zero, 31
	bltu	$t1, $a6, .LBB16_79
# %bb.77:                               # %scalar.ph444.preheader
	addi.d	$a6, $a3, -1
	alsl.d	$a7, $a3, $a7, 1
	alsl.d	$t0, $a3, $t0, 1
	.p2align	4, , 16
.LBB16_78:                              # %scalar.ph444
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t1, $t0, 0
	st.h	$t1, $a7, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 2
	addi.d	$t0, $t0, 2
	blt	$a6, $a2, .LBB16_78
	b	.LBB16_80
.LBB16_79:                              # %vector.body446
	alsl.d	$a6, $a3, $t0, 1
	slli.d	$t1, $a3, 1
	vldx	$vr0, $t0, $t1
	vld	$vr1, $a6, 16
	alsl.d	$a6, $a3, $a7, 1
	vstx	$vr0, $a7, $t1
	vst	$vr1, $a6, 16
.LBB16_80:                              # %.loopexit592
	ld.d	$t0, $a4, 80
	ld.d	$a7, $a5, 80
	sub.d	$a6, $a7, $t0
	ori	$t1, $zero, 31
	bltu	$t1, $a6, .LBB16_83
# %bb.81:                               # %scalar.ph453.preheader
	addi.d	$a6, $a3, -1
	alsl.d	$a7, $a3, $a7, 1
	alsl.d	$t0, $a3, $t0, 1
	.p2align	4, , 16
.LBB16_82:                              # %scalar.ph453
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t1, $t0, 0
	st.h	$t1, $a7, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 2
	addi.d	$t0, $t0, 2
	blt	$a6, $a2, .LBB16_82
	b	.LBB16_84
.LBB16_83:                              # %vector.body455
	alsl.d	$a6, $a3, $t0, 1
	slli.d	$t1, $a3, 1
	vldx	$vr0, $t0, $t1
	vld	$vr1, $a6, 16
	alsl.d	$a6, $a3, $a7, 1
	vstx	$vr0, $a7, $t1
	vst	$vr1, $a6, 16
.LBB16_84:                              # %.loopexit591
	ld.d	$t0, $a4, 88
	ld.d	$a7, $a5, 88
	sub.d	$a6, $a7, $t0
	ori	$t1, $zero, 31
	bltu	$t1, $a6, .LBB16_87
# %bb.85:                               # %scalar.ph462.preheader
	addi.d	$a6, $a3, -1
	alsl.d	$a7, $a3, $a7, 1
	alsl.d	$t0, $a3, $t0, 1
	.p2align	4, , 16
.LBB16_86:                              # %scalar.ph462
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t1, $t0, 0
	st.h	$t1, $a7, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 2
	addi.d	$t0, $t0, 2
	blt	$a6, $a2, .LBB16_86
	b	.LBB16_88
.LBB16_87:                              # %vector.body464
	alsl.d	$a6, $a3, $t0, 1
	slli.d	$t1, $a3, 1
	vldx	$vr0, $t0, $t1
	vld	$vr1, $a6, 16
	alsl.d	$a6, $a3, $a7, 1
	vstx	$vr0, $a7, $t1
	vst	$vr1, $a6, 16
.LBB16_88:                              # %.loopexit590
	ld.d	$t0, $a4, 96
	ld.d	$a7, $a5, 96
	sub.d	$a6, $a7, $t0
	ori	$t1, $zero, 31
	bltu	$t1, $a6, .LBB16_91
# %bb.89:                               # %scalar.ph471.preheader
	addi.d	$a6, $a3, -1
	alsl.d	$a7, $a3, $a7, 1
	alsl.d	$t0, $a3, $t0, 1
	.p2align	4, , 16
.LBB16_90:                              # %scalar.ph471
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t1, $t0, 0
	st.h	$t1, $a7, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 2
	addi.d	$t0, $t0, 2
	blt	$a6, $a2, .LBB16_90
	b	.LBB16_92
.LBB16_91:                              # %vector.body473
	alsl.d	$a6, $a3, $t0, 1
	slli.d	$t1, $a3, 1
	vldx	$vr0, $t0, $t1
	vld	$vr1, $a6, 16
	alsl.d	$a6, $a3, $a7, 1
	vstx	$vr0, $a7, $t1
	vst	$vr1, $a6, 16
.LBB16_92:                              # %.loopexit589
	ld.d	$t0, $a4, 104
	ld.d	$a7, $a5, 104
	sub.d	$a6, $a7, $t0
	ori	$t1, $zero, 31
	bltu	$t1, $a6, .LBB16_95
# %bb.93:                               # %scalar.ph480.preheader
	addi.d	$a6, $a3, -1
	alsl.d	$a7, $a3, $a7, 1
	alsl.d	$t0, $a3, $t0, 1
	.p2align	4, , 16
.LBB16_94:                              # %scalar.ph480
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t1, $t0, 0
	st.h	$t1, $a7, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 2
	addi.d	$t0, $t0, 2
	blt	$a6, $a2, .LBB16_94
	b	.LBB16_96
.LBB16_95:                              # %vector.body482
	alsl.d	$a6, $a3, $t0, 1
	slli.d	$t1, $a3, 1
	vldx	$vr0, $t0, $t1
	vld	$vr1, $a6, 16
	alsl.d	$a6, $a3, $a7, 1
	vstx	$vr0, $a7, $t1
	vst	$vr1, $a6, 16
.LBB16_96:                              # %.loopexit588
	ld.d	$t0, $a4, 112
	ld.d	$a7, $a5, 112
	sub.d	$a6, $a7, $t0
	ori	$t1, $zero, 31
	bltu	$t1, $a6, .LBB16_99
# %bb.97:                               # %scalar.ph489.preheader
	addi.d	$a6, $a3, -1
	alsl.d	$a7, $a3, $a7, 1
	alsl.d	$t0, $a3, $t0, 1
	.p2align	4, , 16
.LBB16_98:                              # %scalar.ph489
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t1, $t0, 0
	st.h	$t1, $a7, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 2
	addi.d	$t0, $t0, 2
	blt	$a6, $a2, .LBB16_98
	b	.LBB16_100
.LBB16_99:                              # %vector.body491
	alsl.d	$a6, $a3, $t0, 1
	slli.d	$t1, $a3, 1
	vldx	$vr0, $t0, $t1
	vld	$vr1, $a6, 16
	alsl.d	$a6, $a3, $a7, 1
	vstx	$vr0, $a7, $t1
	vst	$vr1, $a6, 16
.LBB16_100:                             # %.loopexit587
	ld.d	$a6, $a4, 120
	ld.d	$a5, $a5, 120
	sub.d	$a4, $a5, $a6
	ori	$a7, $zero, 31
	bltu	$a7, $a4, .LBB16_103
# %bb.101:                              # %scalar.ph498.preheader
	addi.d	$a4, $a3, -1
	alsl.d	$a5, $a3, $a5, 1
	alsl.d	$a3, $a3, $a6, 1
	.p2align	4, , 16
.LBB16_102:                             # %scalar.ph498
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a6, $a3, 0
	st.h	$a6, $a5, 0
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 2
	addi.d	$a3, $a3, 2
	blt	$a4, $a2, .LBB16_102
	b	.LBB16_104
.LBB16_103:                             # %vector.body500
	alsl.d	$a2, $a3, $a6, 1
	slli.d	$a4, $a3, 1
	vldx	$vr0, $a6, $a4
	vld	$vr1, $a2, 16
	alsl.d	$a2, $a3, $a5, 1
	vstx	$vr0, $a5, $a4
	vst	$vr1, $a2, 16
.LBB16_104:                             # %.loopexit586
	ldptr.w	$a2, $a0, 15536
	beqz	$a2, .LBB16_126
# %bb.105:                              # %.preheader216
	ldptr.w	$a2, $a0, 15548
	blez	$a2, .LBB16_126
# %bb.106:                              # %.lr.ph227
	ldptr.w	$a5, $a0, 15544
	blez	$a5, .LBB16_126
# %bb.107:                              # %.lr.ph227.split.us
	ld.w	$a3, $a0, 200
	move	$a4, $zero
	ld.d	$a6, $a1, 0
	add.w	$a1, $a5, $a3
	pcalau12i	$a5, %pc_hi20(imgUV_org)
	ld.d	$t1, $a5, %pc_lo12(imgUV_org)
	ldptr.d	$t3, $a6, 6472
	ld.w	$a5, $a0, 188
	ld.w	$a6, $a0, 204
	ld.d	$a7, $t1, 0
	ld.d	$t0, $t3, 0
	ld.d	$t1, $t1, 8
	addi.d	$t2, $a3, 1
	slt	$t4, $a1, $t2
	masknez	$t5, $a1, $t4
	maskeqz	$t2, $t2, $t4
	or	$t2, $t2, $t5
	sub.d	$t2, $t2, $a3
	ld.d	$t3, $t3, 8
	move	$t4, $t2
	bstrins.d	$t4, $zero, 3, 0
	add.d	$t5, $t4, $a3
	st.d	$t5, $sp, 128                   # 8-byte Folded Spill
	andi	$t5, $t2, 8
	st.d	$t5, $sp, 120                   # 8-byte Folded Spill
	move	$t7, $t2
	bstrins.d	$t7, $zero, 2, 0
	add.d	$t8, $t7, $a3
	slli.d	$t5, $a3, 1
	addi.d	$fp, $t5, 16
	sub.d	$s0, $zero, $t7
	ori	$s1, $zero, 8
	ori	$s4, $zero, 32
	b	.LBB16_109
	.p2align	4, , 16
.LBB16_108:                             # %._crit_edge.us
                                        #   in Loop: Header=BB16_109 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $a2, .LBB16_126
.LBB16_109:                             # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_123 Depth 2
                                        #     Child Loop BB16_120 Depth 2
                                        #     Child Loop BB16_111 Depth 2
	add.d	$t5, $a4, $a6
	add.d	$t6, $a4, $a5
	slli.d	$t5, $t5, 3
	ldx.d	$s2, $a7, $t5
	slli.d	$t6, $t6, 3
	ldx.d	$s3, $t0, $t6
	ldx.d	$s5, $t1, $t5
	ldx.d	$s8, $t3, $t6
	move	$s7, $a3
	bgeu	$t2, $s1, .LBB16_112
.LBB16_110:                             # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB16_109 Depth=1
	alsl.d	$t5, $s7, $s2, 1
	alsl.d	$t6, $s7, $s3, 1
	alsl.d	$s2, $s7, $s5, 1
	alsl.d	$s3, $s7, $s8, 1
	.p2align	4, , 16
.LBB16_111:                             # %vec.epilog.scalar.ph
                                        #   Parent Loop BB16_109 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$s5, $t5, 0
	st.h	$s5, $t6, 0
	ld.h	$s5, $s2, 0
	st.h	$s5, $s3, 0
	addi.d	$s7, $s7, 1
	addi.d	$t5, $t5, 2
	addi.d	$t6, $t6, 2
	addi.d	$s2, $s2, 2
	addi.d	$s3, $s3, 2
	blt	$s7, $a1, .LBB16_111
	b	.LBB16_108
	.p2align	4, , 16
.LBB16_112:                             # %vector.memcheck505
                                        #   in Loop: Header=BB16_109 Depth=1
	sub.d	$t5, $s8, $s3
	move	$s7, $a3
	bltu	$t5, $s4, .LBB16_110
# %bb.113:                              # %vector.memcheck505
                                        #   in Loop: Header=BB16_109 Depth=1
	sub.d	$t5, $s3, $s2
	move	$s7, $a3
	bltu	$t5, $s4, .LBB16_110
# %bb.114:                              # %vector.memcheck505
                                        #   in Loop: Header=BB16_109 Depth=1
	sub.d	$t5, $s5, $s3
	move	$s7, $a3
	bltu	$t5, $s4, .LBB16_110
# %bb.115:                              # %vector.memcheck505
                                        #   in Loop: Header=BB16_109 Depth=1
	sub.d	$t5, $s8, $s2
	move	$s7, $a3
	bltu	$t5, $s4, .LBB16_110
# %bb.116:                              # %vector.memcheck505
                                        #   in Loop: Header=BB16_109 Depth=1
	sub.d	$t5, $s8, $s5
	move	$s7, $a3
	bltu	$t5, $s4, .LBB16_110
# %bb.117:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB16_109 Depth=1
	ori	$t5, $zero, 16
	bgeu	$t2, $t5, .LBB16_122
# %bb.118:                              #   in Loop: Header=BB16_109 Depth=1
	move	$t5, $zero
.LBB16_119:                             # %vec.epilog.ph
                                        #   in Loop: Header=BB16_109 Depth=1
	add.d	$t6, $s0, $t5
	add.d	$s6, $a3, $t5
	alsl.d	$t5, $s6, $s8, 1
	alsl.d	$s7, $s6, $s5, 1
	alsl.d	$ra, $s6, $s3, 1
	alsl.d	$s6, $s6, $s2, 1
	.p2align	4, , 16
.LBB16_120:                             # %vec.epilog.vector.body
                                        #   Parent Loop BB16_109 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s6, 0
	vst	$vr0, $ra, 0
	vld	$vr0, $s7, 0
	vst	$vr0, $t5, 0
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 16
	addi.d	$s7, $s7, 16
	addi.d	$ra, $ra, 16
	addi.d	$s6, $s6, 16
	bnez	$t6, .LBB16_120
# %bb.121:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB16_109 Depth=1
	move	$s7, $t8
	beq	$t2, $t7, .LBB16_108
	b	.LBB16_110
.LBB16_122:                             # %vector.body518.preheader
                                        #   in Loop: Header=BB16_109 Depth=1
	add.d	$s7, $s2, $fp
	add.d	$ra, $s8, $fp
	add.d	$t6, $s3, $fp
	add.d	$t5, $s5, $fp
	move	$s6, $t4
	.p2align	4, , 16
.LBB16_123:                             # %vector.body518
                                        #   Parent Loop BB16_109 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s7, -16
	vld	$vr1, $s7, 0
	vst	$vr0, $t6, -16
	vst	$vr1, $t6, 0
	vld	$vr0, $t5, -16
	vld	$vr1, $t5, 0
	vst	$vr0, $ra, -16
	vst	$vr1, $ra, 0
	addi.d	$s6, $s6, -16
	addi.d	$s7, $s7, 32
	addi.d	$ra, $ra, 32
	addi.d	$t6, $t6, 32
	addi.d	$t5, $t5, 32
	bnez	$s6, .LBB16_123
# %bb.124:                              # %middle.block523
                                        #   in Loop: Header=BB16_109 Depth=1
	beq	$t2, $t4, .LBB16_108
# %bb.125:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB16_109 Depth=1
	move	$t5, $t4
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 120                   # 8-byte Folded Reload
	beqz	$t6, .LBB16_110
	b	.LBB16_119
.LBB16_126:                             # %.loopexit217
	ldptr.w	$a2, $a0, 15528
	addi.w	$a1, $zero, -3
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	lu12i.w	$s0, 3
	blt	$a2, $a1, .LBB16_138
# %bb.127:                              # %.lr.ph
	ld.d	$a2, $a0, 152
	move	$a3, $zero
	addi.w	$a4, $zero, -1
	ori	$a5, $zero, 16
	.p2align	4, , 16
.LBB16_128:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, 12
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a2, $a6
	ld.d	$a6, $a6, 0
	stx.w	$a5, $a6, $a3
	ldptr.w	$a6, $a0, 15528
	addi.w	$a7, $a6, 3
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 4
	blt	$a4, $a7, .LBB16_128
# %bb.129:                              # %._crit_edge
	blt	$a6, $a1, .LBB16_138
# %bb.130:                              # %.lr.ph.1
	ld.d	$a2, $a0, 152
	move	$a3, $zero
	addi.w	$a4, $zero, -1
	ori	$a5, $zero, 16
	.p2align	4, , 16
.LBB16_131:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, 12
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a2, $a6
	ld.d	$a6, $a6, 8
	stx.w	$a5, $a6, $a3
	ldptr.w	$a6, $a0, 15528
	addi.w	$a7, $a6, 3
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 4
	blt	$a4, $a7, .LBB16_131
# %bb.132:                              # %._crit_edge.1
	blt	$a6, $a1, .LBB16_138
# %bb.133:                              # %.lr.ph.2
	ld.d	$a2, $a0, 152
	move	$a3, $zero
	addi.w	$a4, $zero, -1
	ori	$a5, $zero, 16
	.p2align	4, , 16
.LBB16_134:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, 12
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a2, $a6
	ld.d	$a6, $a6, 16
	stx.w	$a5, $a6, $a3
	ldptr.w	$a6, $a0, 15528
	addi.w	$a7, $a6, 3
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 4
	blt	$a4, $a7, .LBB16_134
# %bb.135:                              # %._crit_edge.2
	blt	$a6, $a1, .LBB16_138
# %bb.136:                              # %.lr.ph.3
	move	$a1, $zero
	ld.d	$a2, $a0, 152
	addi.w	$a3, $zero, -1
	ori	$a4, $zero, 16
	ori	$a5, $s0, 3240
.LBB16_137:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, 12
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a2, $a6
	ld.d	$a6, $a6, 24
	stx.w	$a4, $a6, $a1
	ldx.w	$a6, $a0, $a5
	addi.w	$a6, $a6, 3
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 4
	blt	$a3, $a6, .LBB16_137
.LBB16_138:                             # %.critedge207
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 4168
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB16_141
# %bb.139:
	ld.d	$a1, $s6, 0
	ld.w	$a1, $a1, 20
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB16_141
# %bb.140:
	addi.d	$a0, $s5, -10
	ld.w	$a1, $sp, 156
	sltui	$a0, $a0, 1
	addi.w	$a2, $zero, -1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	pcaddu18i	$ra, %call36(compute_residue_mb)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
.LBB16_141:
	ldptr.w	$a0, $a0, 5116
	beqz	$a0, .LBB16_144
# %bb.142:
	ld.d	$fp, $s6, 0
	ori	$a0, $zero, 10
	bne	$s5, $a0, .LBB16_145
# %bb.143:
	ld.w	$a0, $sp, 156
	slli.d	$a0, $a0, 9
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 720
	add.d	$a1, $a0, $a1
	b	.LBB16_146
.LBB16_144:                             # %._crit_edge332
	ld.d	$fp, $s6, 0
	stptr.w	$zero, $fp, 15244
	ori	$a0, $zero, 14
	st.w	$zero, $sp, 140
	bne	$s5, $a0, .LBB16_147
	b	.LBB16_149
.LBB16_145:
	ori	$a0, $s0, 336
	add.d	$a1, $fp, $a0
.LBB16_146:
	pcalau12i	$a0, %pc_hi20(pred)
	addi.d	$a0, $a0, %pc_lo12(pred)
	ori	$a2, $zero, 512
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $fp, 15244
	ori	$a0, $zero, 14
	st.w	$zero, $sp, 140
	beq	$s5, $a0, .LBB16_149
.LBB16_147:
	ori	$a0, $s0, 3248
	ldx.w	$a0, $fp, $a0
	beqz	$a0, .LBB16_149
# %bb.148:
	addi.d	$a0, $sp, 140
	pcaddu18i	$ra, %call36(ChromaResidualCoding)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s6, 0
.LBB16_149:
	ori	$a0, $zero, 10
	bne	$s5, $a0, .LBB16_151
# %bb.150:
	ld.wu	$a0, $s8, 364
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
	stptr.w	$a0, $fp, 15244
.LBB16_151:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 4168
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB16_153
# %bb.152:
	ld.w	$a1, $fp, 20
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB16_167
.LBB16_153:
	ld.w	$a3, $fp, 196
	ld.w	$a4, $fp, 180
	ld.w	$a5, $fp, 192
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	ldptr.d	$a0, $fp, 14232
	pcalau12i	$a1, %pc_hi20(imgY_org)
	ld.d	$a6, $a1, %pc_lo12(imgY_org)
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ldptr.d	$a7, $a1, 6440
	move	$a2, $zero
	move	$s8, $zero
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
	addi.d	$s1, $a5, 13
	addi.d	$s2, $a5, 14
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
	slli.d	$s4, $s1, 1
	slli.d	$s3, $s2, 1
	slli.d	$s2, $s5, 1
	.p2align	4, , 16
.LBB16_154:                             # %vector.ph558
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$s6, $a1, $a2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$fp, $a1, $a2
	ldx.hu	$s1, $s6, $a5
	ldx.hu	$s7, $s6, $a6
	ldx.hu	$ra, $fp, $a5
	ldx.hu	$a1, $fp, $a6
	sub.d	$s1, $s1, $ra
	sub.d	$a1, $s7, $a1
	slli.d	$s1, $s1, 2
	slli.d	$a1, $a1, 2
	ldx.w	$s1, $a0, $s1
	ldx.hu	$s7, $s6, $a7
	ldx.hu	$ra, $s6, $t0
	ldx.hu	$s5, $fp, $a7
	ldx.hu	$a3, $fp, $t0
	ldx.w	$a1, $a0, $a1
	add.d	$s1, $s8, $s1
	sub.d	$s5, $s7, $s5
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
	add.d	$s8, $a1, $a3
	ori	$a1, $zero, 128
	bne	$a2, $a1, .LBB16_154
# %bb.155:
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldptr.w	$a1, $a2, 15536
	beqz	$a1, .LBB16_185
# %bb.156:                              # %.preheader
	ldptr.w	$a7, $a2, 15548
	blez	$a7, .LBB16_185
# %bb.157:                              # %.lr.ph261
	ldptr.w	$a5, $a2, 15544
	blez	$a5, .LBB16_185
# %bb.158:                              # %.lr.ph261.split.us
	ld.w	$a3, $a2, 200
	move	$a4, $zero
	add.w	$a5, $a5, $a3
	pcalau12i	$a1, %pc_hi20(imgUV_org)
	ld.d	$t1, $a1, %pc_lo12(imgUV_org)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ldptr.d	$t3, $a1, 6472
	ld.w	$t0, $a2, 188
	ld.w	$t7, $a2, 204
	ld.d	$s3, $t1, 0
	ld.d	$s4, $t3, 0
	ld.d	$t1, $t1, 8
	addi.d	$t2, $a3, 1
	slt	$t4, $a5, $t2
	masknez	$t5, $a5, $t4
	maskeqz	$t2, $t2, $t4
	or	$t2, $t2, $t5
	sub.d	$t2, $t2, $a3
	ld.d	$t3, $t3, 8
	move	$s7, $t2
	bstrins.d	$s7, $zero, 0, 0
	add.d	$a1, $s7, $a3
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	slli.d	$t6, $a3, 1
	addi.d	$t6, $t6, 2
	ori	$t4, $zero, 2
	st.d	$t1, $sp, 120                   # 8-byte Folded Spill
	st.d	$t2, $sp, 112                   # 8-byte Folded Spill
	st.d	$t3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	b	.LBB16_160
	.p2align	4, , 16
.LBB16_159:                             # %._crit_edge257.us
                                        #   in Loop: Header=BB16_160 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $a7, .LBB16_185
.LBB16_160:                             # %.lr.ph256.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_163 Depth 2
                                        #     Child Loop BB16_166 Depth 2
	add.d	$t8, $a4, $t7
	add.d	$fp, $a4, $t0
	slli.d	$s0, $t8, 3
	ldx.d	$t8, $s3, $s0
	slli.d	$s1, $fp, 3
	ldx.d	$fp, $s4, $s1
	ldx.d	$s0, $t1, $s0
	ldx.d	$s1, $t3, $s1
	bgeu	$t2, $t4, .LBB16_162
# %bb.161:                              #   in Loop: Header=BB16_160 Depth=1
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	b	.LBB16_165
	.p2align	4, , 16
.LBB16_162:                             # %vector.body573.preheader
                                        #   in Loop: Header=BB16_160 Depth=1
	move	$t2, $s3
	move	$t3, $t7
	move	$t1, $t0
	move	$t0, $a7
	move	$s2, $zero
	add.d	$s3, $s1, $t6
	add.d	$s4, $s0, $t6
	add.d	$s5, $fp, $t6
	add.d	$s6, $t8, $t6
	move	$t4, $s7
	.p2align	4, , 16
.LBB16_163:                             # %vector.body573
                                        #   Parent Loop BB16_160 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$ra, $s6, -2
	ld.hu	$t7, $s6, 0
	ld.hu	$t5, $s5, -2
	ld.hu	$a3, $s5, 0
	ld.hu	$a2, $s4, -2
	ld.hu	$a1, $s4, 0
	ld.hu	$a6, $s3, -2
	ld.hu	$a7, $s3, 0
	sub.d	$t5, $ra, $t5
	sub.d	$a3, $t7, $a3
	sub.d	$a2, $a2, $a6
	sub.d	$a1, $a1, $a7
	slli.d	$a6, $t5, 2
	slli.d	$a3, $a3, 2
	ldx.w	$a6, $a0, $a6
	ldx.w	$a3, $a0, $a3
	slli.d	$a2, $a2, 2
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $a0, $a2
	ldx.w	$a1, $a0, $a1
	add.d	$a6, $s8, $a6
	add.d	$a3, $s2, $a3
	add.d	$s8, $a6, $a2
	add.d	$s2, $a3, $a1
	addi.d	$s7, $s7, -2
	addi.d	$s3, $s3, 4
	addi.d	$s4, $s4, 4
	addi.d	$s5, $s5, 4
	addi.d	$s6, $s6, 4
	bnez	$s7, .LBB16_163
# %bb.164:                              # %middle.block579
                                        #   in Loop: Header=BB16_160 Depth=1
	add.d	$s8, $s2, $s8
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	move	$a7, $t0
	move	$t0, $t1
	move	$t7, $t3
	move	$s3, $t2
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 80                    # 8-byte Folded Reload
	move	$s7, $t4
	ori	$t4, $zero, 2
	beq	$t2, $s7, .LBB16_159
.LBB16_165:                             # %scalar.ph568.preheader
                                        #   in Loop: Header=BB16_160 Depth=1
	alsl.d	$t8, $s2, $t8, 1
	alsl.d	$fp, $s2, $fp, 1
	alsl.d	$s0, $s2, $s0, 1
	alsl.d	$s1, $s2, $s1, 1
	.p2align	4, , 16
.LBB16_166:                             # %scalar.ph568
                                        #   Parent Loop BB16_160 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a1, $t8, 0
	ld.hu	$a2, $fp, 0
	ld.hu	$a3, $s0, 0
	ld.hu	$a6, $s1, 0
	sub.d	$a1, $a1, $a2
	sub.d	$a2, $a3, $a6
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a0, $a2
	add.d	$a1, $s8, $a1
	add.d	$s8, $a1, $a2
	addi.d	$s2, $s2, 1
	addi.d	$t8, $t8, 2
	addi.d	$fp, $fp, 2
	addi.d	$s0, $s0, 2
	addi.d	$s1, $s1, 2
	blt	$s2, $a5, .LBB16_166
	b	.LBB16_159
.LBB16_167:                             # %.preheader214
	ldptr.w	$a0, $a0, 4728
	blez	$a0, .LBB16_173
# %bb.168:                              # %.lr.ph236.preheader
	pcalau12i	$a0, %pc_hi20(imgY_org)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(decs)
	ld.d	$a0, $a0, %got_pc_lo12(decs)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$fp, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB16_169:                             # %.lr.ph236
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_170 Depth 2
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(decode_one_mb)
	jirl	$ra, $ra, 0
	ld.d	$a5, $s6, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	move	$a0, $zero
	ld.w	$a4, $a5, 192
	ldptr.d	$a1, $a5, 14232
	ld.d	$a2, $a2, 8
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(imgY_org)
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
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
	addi.d	$s8, $a4, 15
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
	slli.d	$s2, $s8, 1
	.p2align	4, , 16
.LBB16_170:                             # %vector.ph534
                                        #   Parent Loop BB16_169 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$s7, $a2, $a0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$fp, $a2, $a0
	ldx.hu	$s8, $s7, $a4
	ldx.hu	$s6, $s7, $a5
	ldx.hu	$s1, $fp, $a4
	ldx.hu	$s4, $fp, $a5
	sub.d	$s1, $s8, $s1
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
	ori	$s0, $zero, 128
	add.d	$a2, $a2, $s1
	add.d	$a3, $a3, $s4
	add.d	$a2, $a2, $fp
	addi.d	$a0, $a0, 8
	add.d	$s5, $a2, $a3
	bne	$a0, $s0, .LBB16_170
# %bb.171:                              #   in Loop: Header=BB16_169 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4728
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	addi.d	$fp, $fp, 1
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	blt	$fp, $a0, .LBB16_169
# %bb.172:                              # %._crit_edge237
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldptr.w	$a1, $a2, 15536
	div.d	$s8, $s5, $a0
	bnez	$a1, .LBB16_174
	b	.LBB16_185
.LBB16_173:                             # %.preheader214.._crit_edge237_crit_edge
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	move	$s5, $zero
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldptr.w	$a1, $a2, 15536
	div.d	$s8, $s5, $a0
	beqz	$a1, .LBB16_185
.LBB16_174:                             # %.preheader212
	ldptr.w	$a7, $a2, 15548
	blez	$a7, .LBB16_185
# %bb.175:                              # %.lr.ph247
	ldptr.w	$a4, $a2, 15544
	blez	$a4, .LBB16_185
# %bb.176:                              # %.lr.ph247.split.us
	ld.w	$a0, $a2, 200
	ld.w	$t0, $a2, 188
	ld.w	$t7, $a2, 204
	pcalau12i	$a5, %pc_hi20(imgUV_org)
	ld.d	$t1, $a5, %pc_lo12(imgUV_org)
	add.w	$a4, $a4, $a0
	pcalau12i	$a5, %got_pc_hi20(enc_picture)
	ld.d	$a5, $a5, %got_pc_lo12(enc_picture)
	ld.d	$a5, $a5, 0
	ldptr.d	$t3, $a5, 6472
	move	$a5, $zero
	ldptr.d	$a6, $a2, 14232
	ld.d	$s3, $t1, 0
	ld.d	$s4, $t3, 0
	ld.d	$t1, $t1, 8
	addi.d	$t2, $a0, 1
	slt	$t4, $a4, $t2
	masknez	$t5, $a4, $t4
	maskeqz	$t2, $t2, $t4
	or	$t2, $t2, $t5
	sub.d	$t2, $t2, $a0
	ld.d	$t3, $t3, 8
	move	$s7, $t2
	bstrins.d	$s7, $zero, 0, 0
	add.d	$a1, $s7, $a0
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	slli.d	$t6, $a0, 1
	addi.d	$t6, $t6, 2
	ori	$t4, $zero, 2
	st.d	$t1, $sp, 120                   # 8-byte Folded Spill
	st.d	$t2, $sp, 112                   # 8-byte Folded Spill
	st.d	$t3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	b	.LBB16_178
	.p2align	4, , 16
.LBB16_177:                             # %._crit_edge243.us
                                        #   in Loop: Header=BB16_178 Depth=1
	addi.d	$a5, $a5, 1
	beq	$a5, $a7, .LBB16_185
.LBB16_178:                             # %.lr.ph242.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_181 Depth 2
                                        #     Child Loop BB16_184 Depth 2
	add.d	$t8, $a5, $t7
	add.d	$fp, $a5, $t0
	slli.d	$s0, $t8, 3
	ldx.d	$t8, $s3, $s0
	slli.d	$s1, $fp, 3
	ldx.d	$fp, $s4, $s1
	ldx.d	$s0, $t1, $s0
	ldx.d	$s1, $t3, $s1
	bgeu	$t2, $t4, .LBB16_180
# %bb.179:                              #   in Loop: Header=BB16_178 Depth=1
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	b	.LBB16_183
	.p2align	4, , 16
.LBB16_180:                             # %vector.body547.preheader
                                        #   in Loop: Header=BB16_178 Depth=1
	move	$t2, $s3
	move	$t3, $t7
	move	$t1, $t0
	move	$t0, $a7
	move	$s2, $zero
	add.d	$s3, $s1, $t6
	add.d	$s4, $s0, $t6
	add.d	$s5, $fp, $t6
	add.d	$s6, $t8, $t6
	move	$t4, $s7
	.p2align	4, , 16
.LBB16_181:                             # %vector.body547
                                        #   Parent Loop BB16_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$ra, $s6, -2
	ld.hu	$t7, $s6, 0
	ld.hu	$t5, $s5, -2
	ld.hu	$a1, $s5, 0
	ld.hu	$a2, $s4, -2
	ld.hu	$a3, $s4, 0
	ld.hu	$a0, $s3, -2
	ld.hu	$a7, $s3, 0
	sub.d	$t5, $ra, $t5
	sub.d	$a1, $t7, $a1
	sub.d	$a0, $a2, $a0
	sub.d	$a2, $a3, $a7
	slli.d	$a3, $t5, 2
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a6, $a3
	ldx.w	$a1, $a6, $a1
	slli.d	$a0, $a0, 2
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a6, $a0
	ldx.w	$a2, $a6, $a2
	add.d	$a3, $s8, $a3
	add.d	$a1, $s2, $a1
	add.d	$s8, $a3, $a0
	add.d	$s2, $a1, $a2
	addi.d	$s7, $s7, -2
	addi.d	$s3, $s3, 4
	addi.d	$s4, $s4, 4
	addi.d	$s5, $s5, 4
	addi.d	$s6, $s6, 4
	bnez	$s7, .LBB16_181
# %bb.182:                              # %middle.block553
                                        #   in Loop: Header=BB16_178 Depth=1
	add.d	$s8, $s2, $s8
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	move	$a7, $t0
	move	$t0, $t1
	move	$t7, $t3
	move	$s3, $t2
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 80                    # 8-byte Folded Reload
	move	$s7, $t4
	ori	$t4, $zero, 2
	beq	$t2, $s7, .LBB16_177
.LBB16_183:                             # %scalar.ph542.preheader
                                        #   in Loop: Header=BB16_178 Depth=1
	alsl.d	$t8, $s2, $t8, 1
	alsl.d	$fp, $s2, $fp, 1
	alsl.d	$s0, $s2, $s0, 1
	alsl.d	$s1, $s2, $s1, 1
	.p2align	4, , 16
.LBB16_184:                             # %scalar.ph542
                                        #   Parent Loop BB16_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $t8, 0
	ld.hu	$a1, $fp, 0
	ld.hu	$a2, $s0, 0
	ld.hu	$a3, $s1, 0
	sub.d	$a0, $a0, $a1
	sub.d	$a1, $a2, $a3
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a6, $a0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a6, $a1
	add.d	$a0, $s8, $a0
	add.d	$s8, $a0, $a1
	addi.d	$s2, $s2, 1
	addi.d	$t8, $t8, 2
	addi.d	$fp, $fp, 2
	addi.d	$s0, $s0, 2
	addi.d	$s1, $s1, 2
	blt	$s2, $a4, .LBB16_184
	b	.LBB16_177
.LBB16_185:                             # %.loopexit
	pcalau12i	$fp, %pc_hi20(cs_cm)
	ld.d	$a0, $fp, %pc_lo12(cs_cm)
	pcaddu18i	$ra, %call36(store_coding_state)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB16_188
# %bb.186:
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 72
	beqz	$a0, .LBB16_189
.LBB16_187:
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
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
	ld.d	$a1, $s0, 0
	sub.d	$a0, $s5, $a0
	st.w	$a0, $sp, 152
	st.w	$s4, $a1, 144
	b	.LBB16_192
.LBB16_188:
	ori	$a0, $zero, 1
	addi.d	$a1, $sp, 148
	pcaddu18i	$ra, %call36(writeMBLayer)
	jirl	$ra, $ra, 0
	st.w	$a0, $sp, 152
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	b	.LBB16_192
.LBB16_189:
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB16_191
# %bb.190:
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 364
	bnez	$a0, .LBB16_187
.LBB16_191:
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	ld.w	$a0, $a0, 144
	ld.w	$a1, $sp, 140
	addi.w	$a0, $a0, 1
	addi.d	$a2, $sp, 152
	addi.d	$a3, $sp, 140
	pcaddu18i	$ra, %call36(ue_linfo)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
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
.LBB16_192:
	ld.d	$a0, $fp, %pc_lo12(cs_cm)
	pcaddu18i	$ra, %call36(reset_coding_state)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 152
	movgr2fr.d	$fa0, $s8
	ffint.d.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa2, $fa1
	vldi	$vr3, -928
	fcmp.clt.d	$fcc0, $fa2, $fa3
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	fld.d	$fa1, $a6, 0
	fsel	$fa2, $fa2, $fa3, $fcc0
	ld.d	$a1, $s0, 0
	fmadd.d	$fa0, $fs0, $fa2, $fa0
	fcmp.cle.d	$fcc0, $fa1, $fa0
	lu12i.w	$a4, 3
	bcnez	$fcc0, .LBB16_196
# %bb.193:
	ld.w	$a0, $a1, 44
	bnez	$a0, .LBB16_200
# %bb.194:
	ldptr.w	$a0, $a1, 15540
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB16_200
# %bb.195:
	beqz	$s8, .LBB16_200
.LBB16_196:
	fcmp.cune.d	$fcc0, $fa0, $fa1
	move	$a0, $zero
	bcnez	$fcc0, .LBB16_207
# %bb.197:
	ld.w	$a2, $a1, 20
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	or	$a2, $a2, $a3
	bnez	$a2, .LBB16_207
# %bb.198:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 0
	ori	$a2, $zero, 99
	bge	$a2, $a0, .LBB16_200
.LBB16_199:
	move	$a0, $zero
	b	.LBB16_207
.LBB16_200:
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bnez	$a0, .LBB16_206
# %bb.201:
	ori	$a0, $a4, 2980
	ldx.w	$a0, $a1, $a0
	beqz	$a0, .LBB16_206
# %bb.202:
	ld.w	$a0, $a1, 20
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB16_204
# %bb.203:
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 364
	bnez	$a2, .LBB16_206
.LBB16_204:
	ld.w	$a2, $a1, 12
	andi	$a3, $a2, 1
	beqz	$a3, .LBB16_206
# %bb.205:
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	ori	$a4, $zero, 536
	mul.d	$a3, $a3, $a4
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	ld.w	$a4, $a3, 72
	beqz	$a4, .LBB16_208
.LBB16_206:
	ld.w	$a0, $sp, 148
	fst.d	$fa0, $a6, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $a5, 0
	ori	$a0, $zero, 1
.LBB16_207:                             # %.loopexit220
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
.LBB16_208:
	ori	$a4, $zero, 1
	bne	$a0, $a4, .LBB16_210
# %bb.209:
	ld.w	$a0, $a3, 364
	bnez	$a0, .LBB16_206
.LBB16_210:
	ldptr.d	$a0, $a1, 14224
	ori	$a1, $zero, 536
	mul.d	$a2, $a2, $a1
	add.d	$a2, $a0, $a2
	ld.w	$a4, $a2, 452
	ori	$a3, $zero, 436
	bnez	$a4, .LBB16_212
# %bb.211:
	ld.w	$a4, $a2, 456
	ori	$a3, $zero, 440
	beqz	$a4, .LBB16_213
.LBB16_212:                             # %.sink.split.i
	ldx.w	$a2, $a2, $a3
	mul.d	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	ld.w	$a0, $a0, 424
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 424
	bne	$a0, $a1, .LBB16_199
	b	.LBB16_206
.LBB16_213:
	move	$a0, $zero
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 424
	bne	$a0, $a1, .LBB16_199
	b	.LBB16_206
.Lfunc_end16:
	.size	RDCost_for_macroblocks, .Lfunc_end16-RDCost_for_macroblocks
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI16_0:
	.word	.LBB16_32-.LJTI16_0
	.word	.LBB16_38-.LJTI16_0
	.word	.LBB16_37-.LJTI16_0
	.word	.LBB16_138-.LJTI16_0
	.word	.LBB16_138-.LJTI16_0
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
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 12
	ldptr.d	$a2, $a0, 14224
	ori	$a3, $zero, 536
	mul.d	$a1, $a1, $a3
	add.d	$fp, $a2, $a1
	ld.w	$a1, $fp, 416
	pcalau12i	$a2, %pc_hi20(best_c_imode)
	lu12i.w	$a3, 3
	ori	$a3, $a3, 2956
	ldx.w	$a3, $a0, $a3
	st.w	$a1, $a2, %pc_lo12(best_c_imode)
	ld.w	$s8, $a0, 20
	pcalau12i	$a1, %pc_hi20(best_i16offset)
	st.w	$a3, $a1, %pc_lo12(best_i16offset)
	pcalau12i	$a1, %pc_hi20(best_mode)
	ori	$a2, $zero, 1
	st.h	$s0, $a1, %pc_lo12(best_mode)
	bne	$s0, $a2, .LBB19_2
# %bb.1:
	ld.hu	$a1, $fp, 480
	b	.LBB19_3
.LBB19_2:
	move	$a1, $zero
.LBB19_3:                               # %.preheader83
	pcalau12i	$a2, %pc_hi20(bi_pred_me)
	st.h	$a1, $a2, %pc_lo12(bi_pred_me)
	vld	$vr0, $fp, 376
	pcalau12i	$a1, %pc_hi20(b8mode)
	vst	$vr0, $a1, %pc_lo12(b8mode)
	vld	$vr0, $fp, 392
	pcalau12i	$a1, %pc_hi20(b8pdir)
	vst	$vr0, $a1, %pc_lo12(b8pdir)
	vld	$vr0, $fp, 332
	pcalau12i	$a1, %pc_hi20(b4_intra_pred_modes)
	vst	$vr0, $a1, %pc_lo12(b4_intra_pred_modes)
	vld	$vr0, $fp, 348
	ld.w	$a1, $a0, 172
	ld.d	$a2, $a0, 128
	pcalau12i	$a3, %pc_hi20(b8_intra_pred_modes8x8)
	vst	$vr0, $a3, %pc_lo12(b8_intra_pred_modes8x8)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a2, $a1
	ld.w	$a4, $a0, 168
	ldx.w	$a3, $a3, $a4
	pcalau12i	$a5, %pc_hi20(b4_ipredmode)
	addi.d	$a5, $a5, %pc_lo12(b4_ipredmode)
	ld.d	$a6, $a0, 136
	st.w	$a3, $a5, 0
	ldx.d	$a3, $a6, $a1
	ldx.w	$a3, $a3, $a4
	pcalau12i	$a7, %pc_hi20(b8_ipredmode8x8)
	addi.d	$a7, $a7, %pc_lo12(b8_ipredmode8x8)
	st.w	$a3, $a7, 0
	addi.d	$a3, $a1, 8
	ldx.d	$t0, $a2, $a3
	ldx.w	$t0, $t0, $a4
	st.w	$t0, $a5, 4
	ldx.d	$a3, $a6, $a3
	ldx.w	$a3, $a3, $a4
	st.w	$a3, $a7, 4
	addi.d	$a3, $a1, 16
	ldx.d	$t0, $a2, $a3
	ldx.w	$t0, $t0, $a4
	st.w	$t0, $a5, 8
	ldx.d	$a3, $a6, $a3
	ldx.w	$a3, $a3, $a4
	st.w	$a3, $a7, 8
	addi.d	$a1, $a1, 24
	ldx.d	$a2, $a2, $a1
	ldx.w	$a2, $a2, $a4
	st.w	$a2, $a5, 12
	ldx.d	$a1, $a6, $a1
	ldx.w	$a1, $a1, $a4
	st.w	$a1, $a7, 12
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$s4, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a2, $s4, 0
	ld.w	$a1, $a0, 180
	ldptr.d	$a3, $a2, 6440
	slli.d	$a4, $a1, 3
	ld.w	$a5, $a0, 176
	ldx.d	$a4, $a3, $a4
	slli.d	$a6, $a5, 1
	vldx	$vr0, $a4, $a6
	alsl.d	$a7, $a1, $a3, 3
	alsl.d	$a4, $a5, $a4, 1
	pcalau12i	$a1, %pc_hi20(rec_mbY)
	addi.d	$a1, $a1, %pc_lo12(rec_mbY)
	vst	$vr0, $a1, 0
	vld	$vr0, $a4, 16
	vst	$vr0, $a1, 16
	ld.d	$a4, $a7, 8
	vldx	$vr0, $a4, $a6
	alsl.d	$a4, $a5, $a4, 1
	vst	$vr0, $a1, 32
	vld	$vr0, $a4, 16
	vst	$vr0, $a1, 48
	ld.d	$a4, $a7, 16
	vldx	$vr0, $a4, $a6
	alsl.d	$a4, $a5, $a4, 1
	vst	$vr0, $a1, 64
	vld	$vr0, $a4, 16
	vst	$vr0, $a1, 80
	ld.d	$a4, $a7, 24
	vldx	$vr0, $a4, $a6
	alsl.d	$a4, $a5, $a4, 1
	vst	$vr0, $a1, 96
	vld	$vr0, $a4, 16
	vst	$vr0, $a1, 112
	ld.d	$a4, $a7, 32
	vldx	$vr0, $a4, $a6
	alsl.d	$a4, $a5, $a4, 1
	vst	$vr0, $a1, 128
	vld	$vr0, $a4, 16
	vst	$vr0, $a1, 144
	ld.d	$a4, $a7, 40
	vldx	$vr0, $a4, $a6
	alsl.d	$a4, $a5, $a4, 1
	vst	$vr0, $a1, 160
	vld	$vr0, $a4, 16
	vst	$vr0, $a1, 176
	ld.w	$a4, $a0, 180
	alsl.d	$a4, $a4, $a3, 3
	ld.w	$a5, $a0, 176
	ld.d	$a4, $a4, 48
	slli.d	$a6, $a5, 1
	vldx	$vr0, $a4, $a6
	alsl.d	$a4, $a5, $a4, 1
	vst	$vr0, $a1, 192
	vld	$vr0, $a4, 16
	vst	$vr0, $a1, 208
	ld.w	$a4, $a0, 180
	alsl.d	$a4, $a4, $a3, 3
	ld.w	$a5, $a0, 176
	ld.d	$a4, $a4, 56
	slli.d	$a6, $a5, 1
	vldx	$vr0, $a4, $a6
	alsl.d	$a4, $a5, $a4, 1
	vst	$vr0, $a1, 224
	vld	$vr0, $a4, 16
	vst	$vr0, $a1, 240
	ld.w	$a4, $a0, 180
	alsl.d	$a4, $a4, $a3, 3
	ld.w	$a5, $a0, 176
	ld.d	$a4, $a4, 64
	slli.d	$a6, $a5, 1
	vldx	$vr0, $a4, $a6
	alsl.d	$a4, $a5, $a4, 1
	vst	$vr0, $a1, 256
	vld	$vr0, $a4, 16
	vst	$vr0, $a1, 272
	ld.w	$a4, $a0, 180
	alsl.d	$a4, $a4, $a3, 3
	ld.w	$a5, $a0, 176
	ld.d	$a4, $a4, 72
	slli.d	$a6, $a5, 1
	vldx	$vr0, $a4, $a6
	alsl.d	$a4, $a5, $a4, 1
	vst	$vr0, $a1, 288
	vld	$vr0, $a4, 16
	vst	$vr0, $a1, 304
	ld.w	$a4, $a0, 180
	alsl.d	$a4, $a4, $a3, 3
	ld.w	$a5, $a0, 176
	ld.d	$a4, $a4, 80
	slli.d	$a6, $a5, 1
	vldx	$vr0, $a4, $a6
	alsl.d	$a4, $a5, $a4, 1
	vst	$vr0, $a1, 320
	vld	$vr0, $a4, 16
	vst	$vr0, $a1, 336
	ld.w	$a4, $a0, 180
	alsl.d	$a4, $a4, $a3, 3
	ld.w	$a5, $a0, 176
	ld.d	$a4, $a4, 88
	slli.d	$a6, $a5, 1
	vldx	$vr0, $a4, $a6
	alsl.d	$a4, $a5, $a4, 1
	vst	$vr0, $a1, 352
	vld	$vr0, $a4, 16
	vst	$vr0, $a1, 368
	ld.w	$a4, $a0, 180
	alsl.d	$a3, $a4, $a3, 3
	ld.w	$a4, $a0, 176
	ld.d	$a3, $a3, 96
	slli.d	$a5, $a4, 1
	vldx	$vr0, $a3, $a5
	alsl.d	$a3, $a4, $a3, 1
	vst	$vr0, $a1, 384
	vld	$vr0, $a3, 16
	vst	$vr0, $a1, 400
	ldptr.d	$a2, $a2, 6440
	ld.w	$a3, $a0, 180
	alsl.d	$a3, $a3, $a2, 3
	ld.w	$a4, $a0, 176
	ld.d	$a3, $a3, 104
	slli.d	$a5, $a4, 1
	vldx	$vr0, $a3, $a5
	alsl.d	$a3, $a4, $a3, 1
	vst	$vr0, $a1, 416
	vld	$vr0, $a3, 16
	vst	$vr0, $a1, 432
	ld.w	$a3, $a0, 180
	alsl.d	$a3, $a3, $a2, 3
	ld.w	$a4, $a0, 176
	ld.d	$a3, $a3, 112
	slli.d	$a5, $a4, 1
	vldx	$vr0, $a3, $a5
	alsl.d	$a3, $a4, $a3, 1
	vst	$vr0, $a1, 448
	vld	$vr0, $a3, 16
	vst	$vr0, $a1, 464
	ld.w	$a3, $a0, 180
	alsl.d	$a2, $a3, $a2, 3
	ld.w	$a3, $a0, 176
	ld.d	$a2, $a2, 120
	slli.d	$a4, $a3, 1
	vldx	$vr0, $a2, $a4
	alsl.d	$a2, $a3, $a2, 1
	vst	$vr0, $a1, 480
	vld	$vr0, $a2, 16
	vst	$vr0, $a1, 496
	ld.w	$a1, $a0, 20
	pcalau12i	$s3, %pc_hi20(si_frame_indicator)
	ori	$a2, $zero, 3
	pcalau12i	$s6, %pc_hi20(sp2_frame_indicator)
	bne	$a1, $a2, .LBB19_7
# %bb.4:                                # %.preheader83
	ld.w	$a1, $s3, %pc_lo12(si_frame_indicator)
	bnez	$a1, .LBB19_7
# %bb.5:                                # %.preheader83
	ld.w	$a1, $s6, %pc_lo12(sp2_frame_indicator)
	bnez	$a1, .LBB19_7
# %bb.6:                                # %.preheader81
	ld.w	$a1, $a0, 180
	pcalau12i	$a2, %pc_hi20(lrec)
	ld.d	$a2, $a2, %pc_lo12(lrec)
	slli.d	$a3, $a1, 3
	ld.w	$a4, $a0, 176
	ldx.d	$a3, $a2, $a3
	slli.d	$a5, $a4, 2
	vldx	$vr0, $a3, $a5
	alsl.d	$a6, $a1, $a2, 3
	alsl.d	$a3, $a4, $a3, 2
	pcalau12i	$a1, %pc_hi20(lrec_rec)
	addi.d	$a1, $a1, %pc_lo12(lrec_rec)
	vst	$vr0, $a1, 0
	vld	$vr0, $a3, 16
	vst	$vr0, $a1, 16
	vld	$vr0, $a3, 32
	vst	$vr0, $a1, 32
	vld	$vr0, $a3, 48
	vst	$vr0, $a1, 48
	ld.d	$a3, $a6, 8
	vldx	$vr0, $a3, $a5
	alsl.d	$a3, $a4, $a3, 2
	vst	$vr0, $a1, 64
	vld	$vr0, $a3, 48
	vst	$vr0, $a1, 112
	vld	$vr0, $a3, 32
	vst	$vr0, $a1, 96
	vld	$vr0, $a3, 16
	vst	$vr0, $a1, 80
	ld.d	$a3, $a6, 16
	vldx	$vr0, $a3, $a5
	alsl.d	$a3, $a4, $a3, 2
	vst	$vr0, $a1, 128
	vld	$vr0, $a3, 48
	vst	$vr0, $a1, 176
	vld	$vr0, $a3, 32
	vst	$vr0, $a1, 160
	vld	$vr0, $a3, 16
	ld.w	$a3, $a0, 180
	vst	$vr0, $a1, 144
	alsl.d	$a3, $a3, $a2, 3
	ld.w	$a4, $a0, 176
	ld.d	$a3, $a3, 24
	slli.d	$a5, $a4, 2
	vldx	$vr0, $a3, $a5
	alsl.d	$a3, $a4, $a3, 2
	vst	$vr0, $a1, 192
	vld	$vr0, $a3, 48
	vst	$vr0, $a1, 240
	vld	$vr0, $a3, 32
	vst	$vr0, $a1, 224
	vld	$vr0, $a3, 16
	vst	$vr0, $a1, 208
	ld.w	$a3, $a0, 180
	alsl.d	$a3, $a3, $a2, 3
	ld.w	$a4, $a0, 176
	ld.d	$a3, $a3, 32
	slli.d	$a5, $a4, 2
	vldx	$vr0, $a3, $a5
	alsl.d	$a3, $a4, $a3, 2
	vst	$vr0, $a1, 256
	vld	$vr0, $a3, 48
	vst	$vr0, $a1, 304
	vld	$vr0, $a3, 32
	vst	$vr0, $a1, 288
	vld	$vr0, $a3, 16
	vst	$vr0, $a1, 272
	ld.w	$a3, $a0, 180
	alsl.d	$a3, $a3, $a2, 3
	ld.w	$a4, $a0, 176
	ld.d	$a3, $a3, 40
	slli.d	$a5, $a4, 2
	vldx	$vr0, $a3, $a5
	alsl.d	$a3, $a4, $a3, 2
	vst	$vr0, $a1, 320
	vld	$vr0, $a3, 48
	vst	$vr0, $a1, 368
	vld	$vr0, $a3, 32
	vst	$vr0, $a1, 352
	vld	$vr0, $a3, 16
	vst	$vr0, $a1, 336
	ld.w	$a3, $a0, 180
	alsl.d	$a3, $a3, $a2, 3
	ld.w	$a4, $a0, 176
	ld.d	$a3, $a3, 48
	slli.d	$a5, $a4, 2
	vldx	$vr0, $a3, $a5
	alsl.d	$a3, $a4, $a3, 2
	vst	$vr0, $a1, 384
	vld	$vr0, $a3, 48
	vst	$vr0, $a1, 432
	vld	$vr0, $a3, 32
	vst	$vr0, $a1, 416
	vld	$vr0, $a3, 16
	vst	$vr0, $a1, 400
	ld.w	$a3, $a0, 180
	alsl.d	$a3, $a3, $a2, 3
	ld.w	$a4, $a0, 176
	ld.d	$a3, $a3, 56
	slli.d	$a5, $a4, 2
	vldx	$vr0, $a3, $a5
	alsl.d	$a3, $a4, $a3, 2
	vst	$vr0, $a1, 448
	vld	$vr0, $a3, 48
	vst	$vr0, $a1, 496
	vld	$vr0, $a3, 32
	vst	$vr0, $a1, 480
	vld	$vr0, $a3, 16
	vst	$vr0, $a1, 464
	ld.w	$a3, $a0, 180
	alsl.d	$a3, $a3, $a2, 3
	ld.w	$a4, $a0, 176
	ld.d	$a3, $a3, 64
	slli.d	$a5, $a4, 2
	vldx	$vr0, $a3, $a5
	alsl.d	$a3, $a4, $a3, 2
	vst	$vr0, $a1, 512
	vld	$vr0, $a3, 48
	vst	$vr0, $a1, 560
	vld	$vr0, $a3, 32
	vst	$vr0, $a1, 544
	vld	$vr0, $a3, 16
	vst	$vr0, $a1, 528
	ld.w	$a3, $a0, 180
	alsl.d	$a3, $a3, $a2, 3
	ld.w	$a4, $a0, 176
	ld.d	$a3, $a3, 72
	slli.d	$a5, $a4, 2
	vldx	$vr0, $a3, $a5
	alsl.d	$a3, $a4, $a3, 2
	vst	$vr0, $a1, 576
	vld	$vr0, $a3, 48
	vst	$vr0, $a1, 624
	vld	$vr0, $a3, 32
	vst	$vr0, $a1, 608
	vld	$vr0, $a3, 16
	vst	$vr0, $a1, 592
	ld.w	$a3, $a0, 180
	alsl.d	$a3, $a3, $a2, 3
	ld.w	$a4, $a0, 176
	ld.d	$a3, $a3, 80
	slli.d	$a5, $a4, 2
	vldx	$vr0, $a3, $a5
	alsl.d	$a3, $a4, $a3, 2
	vst	$vr0, $a1, 640
	vld	$vr0, $a3, 48
	vst	$vr0, $a1, 688
	vld	$vr0, $a3, 32
	vst	$vr0, $a1, 672
	vld	$vr0, $a3, 16
	vst	$vr0, $a1, 656
	ld.w	$a3, $a0, 180
	alsl.d	$a3, $a3, $a2, 3
	ld.w	$a4, $a0, 176
	ld.d	$a3, $a3, 88
	slli.d	$a5, $a4, 2
	vldx	$vr0, $a3, $a5
	alsl.d	$a3, $a4, $a3, 2
	vst	$vr0, $a1, 704
	vld	$vr0, $a3, 48
	vst	$vr0, $a1, 752
	vld	$vr0, $a3, 32
	vst	$vr0, $a1, 736
	vld	$vr0, $a3, 16
	vst	$vr0, $a1, 720
	ld.w	$a3, $a0, 180
	alsl.d	$a3, $a3, $a2, 3
	ld.w	$a4, $a0, 176
	ld.d	$a3, $a3, 96
	slli.d	$a5, $a4, 2
	vldx	$vr0, $a3, $a5
	alsl.d	$a3, $a4, $a3, 2
	vst	$vr0, $a1, 768
	vld	$vr0, $a3, 48
	vst	$vr0, $a1, 816
	vld	$vr0, $a3, 32
	vst	$vr0, $a1, 800
	vld	$vr0, $a3, 16
	vst	$vr0, $a1, 784
	ld.w	$a3, $a0, 180
	alsl.d	$a3, $a3, $a2, 3
	ld.w	$a4, $a0, 176
	ld.d	$a3, $a3, 104
	slli.d	$a5, $a4, 2
	vldx	$vr0, $a3, $a5
	alsl.d	$a3, $a4, $a3, 2
	vst	$vr0, $a1, 832
	vld	$vr0, $a3, 48
	vst	$vr0, $a1, 880
	vld	$vr0, $a3, 32
	vst	$vr0, $a1, 864
	vld	$vr0, $a3, 16
	vst	$vr0, $a1, 848
	ld.w	$a3, $a0, 180
	alsl.d	$a3, $a3, $a2, 3
	ld.w	$a4, $a0, 176
	ld.d	$a3, $a3, 112
	slli.d	$a5, $a4, 2
	vldx	$vr0, $a3, $a5
	alsl.d	$a3, $a4, $a3, 2
	vst	$vr0, $a1, 896
	vld	$vr0, $a3, 48
	vst	$vr0, $a1, 944
	vld	$vr0, $a3, 32
	vst	$vr0, $a1, 928
	vld	$vr0, $a3, 16
	vst	$vr0, $a1, 912
	ld.w	$a3, $a0, 180
	alsl.d	$a2, $a3, $a2, 3
	ld.w	$a3, $a0, 176
	ld.d	$a2, $a2, 120
	slli.d	$a4, $a3, 2
	vldx	$vr0, $a2, $a4
	alsl.d	$a2, $a3, $a2, 2
	vst	$vr0, $a1, 960
	vld	$vr0, $a2, 48
	vst	$vr0, $a1, 1008
	vld	$vr0, $a2, 32
	vst	$vr0, $a1, 992
	vld	$vr0, $a2, 16
	vst	$vr0, $a1, 976
.LBB19_7:                               # %.loopexit82
	ldptr.w	$a0, $a0, 15260
	beqz	$a0, .LBB19_9
# %bb.8:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(store_adaptive_rounding_parameters)
	jirl	$ra, $ra, 0
.LBB19_9:
	ld.d	$s7, $s1, 0
	ldptr.w	$a0, $s7, 15536
	beqz	$a0, .LBB19_20
# %bb.10:                               # %.preheader80
	ldptr.w	$a0, $s7, 15548
	blez	$a0, .LBB19_14
# %bb.11:                               # %.lr.ph
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	move	$s5, $s0
	move	$a0, $s4
	move	$s4, $s8
	move	$s0, $a0
	ld.d	$s8, $a0, 0
	pcalau12i	$a0, %pc_hi20(rec_mbU)
	addi.d	$s1, $a0, %pc_lo12(rec_mbU)
	pcalau12i	$a0, %pc_hi20(rec_mbV)
	addi.d	$s2, $a0, %pc_lo12(rec_mbV)
	move	$s3, $zero
	.p2align	4, , 16
.LBB19_12:                              # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $s8, 6472
	ld.w	$a1, $s7, 188
	ld.d	$a0, $a0, 0
	add.d	$a1, $s3, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $s7, 184
	ldptr.w	$a2, $s7, 15544
	alsl.d	$a1, $a1, $a0, 1
	slli.d	$a2, $a2, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $s8, 6472
	ld.w	$a1, $s7, 188
	ld.d	$a0, $a0, 8
	add.d	$a1, $s3, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $s7, 184
	ldptr.w	$a2, $s7, 15544
	alsl.d	$a1, $a1, $a0, 1
	slli.d	$a2, $a2, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s7, 15548
	addi.d	$s3, $s3, 1
	addi.d	$s1, $s1, 32
	addi.d	$s2, $s2, 32
	blt	$s3, $a0, .LBB19_12
# %bb.13:                               # %._crit_edge.loopexit
	slti	$a0, $a0, 1
	move	$s8, $s4
	move	$s4, $s0
	move	$s0, $s5
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $s7, 20
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB19_15
	b	.LBB19_20
.LBB19_14:
	ori	$a0, $zero, 1
	ld.w	$a1, $s7, 20
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB19_20
.LBB19_15:                              # %._crit_edge
	ld.w	$a1, $s3, %pc_lo12(si_frame_indicator)
	bnez	$a1, .LBB19_20
# %bb.16:                               # %._crit_edge
	ld.w	$a1, $s6, %pc_lo12(sp2_frame_indicator)
	bnez	$a1, .LBB19_20
# %bb.17:                               # %._crit_edge
	bnez	$a0, .LBB19_20
# %bb.18:                               # %.lr.ph89
	pcalau12i	$a0, %pc_hi20(lrec_uv)
	ld.d	$s5, $a0, %pc_lo12(lrec_uv)
	pcalau12i	$a0, %pc_hi20(lrec_rec_U)
	addi.d	$s1, $a0, %pc_lo12(lrec_rec_U)
	pcalau12i	$a0, %pc_hi20(lrec_rec_V)
	addi.d	$s2, $a0, %pc_lo12(lrec_rec_V)
	move	$s3, $zero
	.p2align	4, , 16
.LBB19_19:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s7, 188
	ld.d	$a1, $s5, 0
	add.d	$a0, $s3, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $s7, 184
	ldptr.w	$a2, $s7, 15544
	alsl.d	$a1, $a1, $a0, 2
	slli.d	$a2, $a2, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 188
	ld.d	$a1, $s5, 8
	add.d	$a0, $s3, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $s7, 184
	ldptr.w	$a2, $s7, 15544
	alsl.d	$a1, $a1, $a0, 2
	slli.d	$a2, $a2, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s7, 15548
	addi.d	$s3, $s3, 1
	addi.d	$s1, $s1, 64
	addi.d	$s2, $s2, 64
	blt	$s3, $a0, .LBB19_19
.LBB19_20:                              # %.loopexit79
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 4168
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB19_31
# %bb.21:
	ld.w	$a1, $s7, 20
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB19_31
# %bb.22:                               # %.preheader76
	ldptr.w	$a0, $a0, 4728
	blez	$a0, .LBB19_31
# %bb.23:                               # %.lr.ph93
	pcalau12i	$a1, %got_pc_hi20(decs)
	ld.d	$a1, $a1, %got_pc_lo12(decs)
	ld.d	$a5, $a1, 0
	move	$a1, $zero
	ld.w	$a2, $s7, 176
	ld.w	$a3, $s7, 180
	ld.d	$a4, $a5, 8
	ld.d	$a5, $a5, 24
	addi.w	$a6, $a2, 15
	addi.w	$a7, $a3, 15
	addi.d	$t0, $a2, -1
	slli.d	$t1, $a2, 1
	ori	$t2, $zero, 31
	b	.LBB19_25
	.p2align	4, , 16
.LBB19_24:                              #   in Loop: Header=BB19_25 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a0, .LBB19_31
.LBB19_25:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_28 Depth 2
                                        #       Child Loop BB19_30 Depth 3
	slli.d	$t4, $a1, 3
	ldx.d	$t3, $a4, $t4
	ldx.d	$t4, $a5, $t4
	move	$t6, $a3
	b	.LBB19_28
	.p2align	4, , 16
.LBB19_26:                              # %vector.body
                                        #   in Loop: Header=BB19_28 Depth=2
	alsl.d	$t8, $a2, $t6, 1
	vldx	$vr0, $t6, $t1
	vld	$vr1, $t8, 16
	alsl.d	$t6, $a2, $t7, 1
	vstx	$vr0, $t7, $t1
	vst	$vr1, $t6, 16
.LBB19_27:                              # %.loopexit119
                                        #   in Loop: Header=BB19_28 Depth=2
	addi.d	$t6, $t5, 1
	bge	$t5, $a7, .LBB19_24
.LBB19_28:                              # %vector.memcheck
                                        #   Parent Loop BB19_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_30 Depth 3
	move	$t5, $t6
	slli.d	$t7, $t6, 3
	ldx.d	$t6, $t3, $t7
	ldx.d	$t7, $t4, $t7
	sub.d	$t8, $t7, $t6
	bltu	$t2, $t8, .LBB19_26
# %bb.29:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB19_28 Depth=2
	add.d	$t6, $t6, $t1
	add.d	$t7, $t7, $t1
	move	$t8, $t0
	.p2align	4, , 16
.LBB19_30:                              # %scalar.ph
                                        #   Parent Loop BB19_25 Depth=1
                                        #     Parent Loop BB19_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$s1, $t6, 0
	st.h	$s1, $t7, 0
	addi.d	$t8, $t8, 1
	addi.d	$t6, $t6, 2
	addi.d	$t7, $t7, 2
	blt	$t8, $a6, .LBB19_30
	b	.LBB19_27
.LBB19_31:                              # %.loopexit77
	bnez	$s0, .LBB19_34
# %bb.32:                               # %.loopexit77
	ori	$a0, $zero, 1
	beq	$s8, $a0, .LBB19_34
# %bb.33:
	move	$a1, $zero
	move	$a3, $zero
	b	.LBB19_35
.LBB19_34:
	ldptr.d	$a0, $s7, 14160
	pcalau12i	$a1, %pc_hi20(cofAC)
	ld.d	$a2, $a1, %pc_lo12(cofAC)
	st.d	$a0, $a1, %pc_lo12(cofAC)
	pcalau12i	$a0, %pc_hi20(cofDC)
	ld.d	$a4, $a0, %pc_lo12(cofDC)
	ldptr.d	$a5, $s7, 14168
	ld.w	$a1, $fp, 364
	ld.d	$a3, $fp, 368
	stptr.d	$a2, $s7, 14160
	st.d	$a5, $a0, %pc_lo12(cofDC)
	stptr.d	$a4, $s7, 14168
.LBB19_35:
	ld.d	$a0, $s4, 0
	ldptr.d	$a0, $a0, 6488
	pcalau12i	$a2, %pc_hi20(cbp)
	st.w	$a1, $a2, %pc_lo12(cbp)
	ld.w	$a5, $s7, 172
	ld.d	$a1, $a0, 0
	pcalau12i	$a4, %pc_hi20(cbp_blk)
	ld.w	$a6, $fp, 472
	slli.d	$a2, $a5, 3
	ldx.d	$a7, $a1, $a2
	ld.w	$a1, $s7, 168
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
	bne	$s8, $t0, .LBB19_37
# %bb.36:                               # %.preheader
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
.LBB19_37:                              # %.loopexit
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
	ori	$a0, $a0, 2272
	sub.d	$sp, $sp, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s5, $a0, %got_pc_lo12(img)
	ld.d	$a1, $s5, 0
	ldptr.d	$fp, $a1, 14224
	ld.w	$a0, $a1, 12
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$s8, $a2, %got_pc_lo12(enc_picture)
	ld.d	$a3, $s8, 0
	ldptr.d	$a2, $a3, 6440
	ld.w	$a4, $a1, 180
	ldptr.d	$a3, $a3, 6472
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(best_mode)
	ld.h	$s3, $a3, %pc_lo12(best_mode)
	slli.d	$a3, $a4, 3
	ldx.d	$a3, $a2, $a3
	ld.w	$a4, $a1, 176
	ld.w	$a5, $a1, 20
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 128
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	alsl.d	$a5, $a4, $a3, 1
	slli.d	$a4, $a4, 1
	pcalau12i	$a1, %pc_hi20(rec_mbY)
	addi.d	$a1, $a1, %pc_lo12(rec_mbY)
	vld	$vr0, $a1, 0
	vstx	$vr0, $a3, $a4
	vld	$vr0, $a1, 16
	vst	$vr0, $a5, 16
	ld.d	$a3, $s5, 0
	ld.w	$a4, $a3, 180
	alsl.d	$a4, $a4, $a2, 3
	ld.d	$a4, $a4, 8
	ld.w	$a3, $a3, 176
	vld	$vr0, $a1, 32
	slli.d	$a5, $a3, 1
	vstx	$vr0, $a4, $a5
	vld	$vr0, $a1, 48
	alsl.d	$a3, $a3, $a4, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $s5, 0
	ld.w	$a4, $a3, 180
	alsl.d	$a4, $a4, $a2, 3
	ld.d	$a4, $a4, 16
	ld.w	$a3, $a3, 176
	vld	$vr0, $a1, 64
	slli.d	$a5, $a3, 1
	vstx	$vr0, $a4, $a5
	vld	$vr0, $a1, 80
	alsl.d	$a3, $a3, $a4, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $s5, 0
	ld.w	$a4, $a3, 180
	alsl.d	$a4, $a4, $a2, 3
	ld.d	$a4, $a4, 24
	ld.w	$a3, $a3, 176
	vld	$vr0, $a1, 96
	slli.d	$a5, $a3, 1
	vstx	$vr0, $a4, $a5
	vld	$vr0, $a1, 112
	alsl.d	$a3, $a3, $a4, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $s5, 0
	ld.w	$a4, $a3, 180
	alsl.d	$a4, $a4, $a2, 3
	ld.d	$a4, $a4, 32
	ld.w	$a3, $a3, 176
	vld	$vr0, $a1, 128
	slli.d	$a5, $a3, 1
	vstx	$vr0, $a4, $a5
	vld	$vr0, $a1, 144
	alsl.d	$a3, $a3, $a4, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $s5, 0
	ld.w	$a4, $a3, 180
	alsl.d	$a4, $a4, $a2, 3
	ld.d	$a4, $a4, 40
	ld.w	$a3, $a3, 176
	vld	$vr0, $a1, 160
	slli.d	$a5, $a3, 1
	vstx	$vr0, $a4, $a5
	vld	$vr0, $a1, 176
	alsl.d	$a3, $a3, $a4, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $s5, 0
	ld.w	$a4, $a3, 180
	alsl.d	$a4, $a4, $a2, 3
	ld.d	$a4, $a4, 48
	ld.w	$a3, $a3, 176
	vld	$vr0, $a1, 192
	slli.d	$a5, $a3, 1
	vstx	$vr0, $a4, $a5
	vld	$vr0, $a1, 208
	alsl.d	$a3, $a3, $a4, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $s5, 0
	ld.w	$a4, $a3, 180
	alsl.d	$a4, $a4, $a2, 3
	ld.d	$a4, $a4, 56
	ld.w	$a3, $a3, 176
	vld	$vr0, $a1, 224
	slli.d	$a5, $a3, 1
	vstx	$vr0, $a4, $a5
	vld	$vr0, $a1, 240
	alsl.d	$a3, $a3, $a4, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $s5, 0
	ld.w	$a4, $a3, 180
	alsl.d	$a4, $a4, $a2, 3
	ld.d	$a4, $a4, 64
	ld.w	$a3, $a3, 176
	vld	$vr0, $a1, 256
	slli.d	$a5, $a3, 1
	vstx	$vr0, $a4, $a5
	vld	$vr0, $a1, 272
	alsl.d	$a3, $a3, $a4, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $s5, 0
	ld.w	$a4, $a3, 180
	alsl.d	$a4, $a4, $a2, 3
	ld.d	$a4, $a4, 72
	ld.w	$a3, $a3, 176
	vld	$vr0, $a1, 288
	slli.d	$a5, $a3, 1
	vstx	$vr0, $a4, $a5
	vld	$vr0, $a1, 304
	alsl.d	$a3, $a3, $a4, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $s5, 0
	ld.w	$a4, $a3, 180
	alsl.d	$a4, $a4, $a2, 3
	ld.d	$a4, $a4, 80
	ld.w	$a3, $a3, 176
	vld	$vr0, $a1, 320
	slli.d	$a5, $a3, 1
	vstx	$vr0, $a4, $a5
	vld	$vr0, $a1, 336
	alsl.d	$a3, $a3, $a4, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $s5, 0
	ld.w	$a4, $a3, 180
	alsl.d	$a4, $a4, $a2, 3
	ld.d	$a4, $a4, 88
	ld.w	$a3, $a3, 176
	vld	$vr0, $a1, 352
	slli.d	$a5, $a3, 1
	vstx	$vr0, $a4, $a5
	vld	$vr0, $a1, 368
	alsl.d	$a3, $a3, $a4, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $s5, 0
	ld.w	$a4, $a3, 180
	alsl.d	$a4, $a4, $a2, 3
	ld.d	$a4, $a4, 96
	ld.w	$a3, $a3, 176
	vld	$vr0, $a1, 384
	slli.d	$a5, $a3, 1
	vstx	$vr0, $a4, $a5
	vld	$vr0, $a1, 400
	alsl.d	$a3, $a3, $a4, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $s5, 0
	ld.w	$a4, $a3, 180
	alsl.d	$a4, $a4, $a2, 3
	ld.d	$a4, $a4, 104
	ld.w	$a3, $a3, 176
	vld	$vr0, $a1, 416
	slli.d	$a5, $a3, 1
	vstx	$vr0, $a4, $a5
	vld	$vr0, $a1, 432
	alsl.d	$a3, $a3, $a4, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $s5, 0
	ld.w	$a4, $a3, 180
	alsl.d	$a4, $a4, $a2, 3
	ld.d	$a4, $a4, 112
	ld.w	$a3, $a3, 176
	vld	$vr0, $a1, 448
	slli.d	$a5, $a3, 1
	vstx	$vr0, $a4, $a5
	vld	$vr0, $a1, 464
	alsl.d	$a3, $a3, $a4, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $s5, 0
	ld.w	$a4, $a3, 180
	alsl.d	$a2, $a4, $a2, 3
	ld.d	$a2, $a2, 120
	ld.w	$a3, $a3, 176
	vld	$vr0, $a1, 480
	slli.d	$a4, $a3, 1
	vstx	$vr0, $a2, $a4
	vld	$vr0, $a1, 496
	alsl.d	$a2, $a3, $a2, 1
	vst	$vr0, $a2, 16
	ld.d	$a2, $s5, 0
	ld.w	$a3, $a2, 20
	pcalau12i	$s1, %pc_hi20(si_frame_indicator)
	ori	$a4, $zero, 3
	pcalau12i	$a5, %pc_hi20(sp2_frame_indicator)
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	bne	$a3, $a4, .LBB20_4
# %bb.1:
	ld.w	$a3, $s1, %pc_lo12(si_frame_indicator)
	bnez	$a3, .LBB20_4
# %bb.2:
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a3, $a3, %pc_lo12(sp2_frame_indicator)
	bnez	$a3, .LBB20_4
# %bb.3:                                # %.preheader353.preheader
	pcalau12i	$a3, %pc_hi20(lrec)
	ld.w	$a4, $a2, 180
	ld.d	$a5, $a3, %pc_lo12(lrec)
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a5, $a4
	ld.w	$a2, $a2, 176
	alsl.d	$a5, $a2, $a4, 2
	slli.d	$a6, $a2, 2
	pcalau12i	$a2, %pc_hi20(lrec_rec)
	addi.d	$a2, $a2, %pc_lo12(lrec_rec)
	vld	$vr0, $a2, 0
	vstx	$vr0, $a4, $a6
	vld	$vr0, $a2, 48
	vst	$vr0, $a5, 48
	vld	$vr0, $a2, 32
	vst	$vr0, $a5, 32
	vld	$vr0, $a2, 16
	vst	$vr0, $a5, 16
	ld.d	$a4, $s5, 0
	ld.d	$a5, $a3, %pc_lo12(lrec)
	ld.w	$a6, $a4, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.d	$a5, $a5, 8
	ld.w	$a4, $a4, 176
	vld	$vr0, $a2, 64
	slli.d	$a6, $a4, 2
	vstx	$vr0, $a5, $a6
	vld	$vr0, $a2, 112
	alsl.d	$a4, $a4, $a5, 2
	vst	$vr0, $a4, 48
	vld	$vr0, $a2, 96
	vst	$vr0, $a4, 32
	vld	$vr0, $a2, 80
	vst	$vr0, $a4, 16
	ld.d	$a4, $s5, 0
	ld.d	$a5, $a3, %pc_lo12(lrec)
	ld.w	$a6, $a4, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.d	$a5, $a5, 16
	ld.w	$a4, $a4, 176
	vld	$vr0, $a2, 128
	slli.d	$a6, $a4, 2
	vstx	$vr0, $a5, $a6
	vld	$vr0, $a2, 176
	alsl.d	$a4, $a4, $a5, 2
	vst	$vr0, $a4, 48
	vld	$vr0, $a2, 160
	vst	$vr0, $a4, 32
	vld	$vr0, $a2, 144
	vst	$vr0, $a4, 16
	ld.d	$a4, $s5, 0
	ld.d	$a5, $a3, %pc_lo12(lrec)
	ld.w	$a6, $a4, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.d	$a5, $a5, 24
	ld.w	$a4, $a4, 176
	vld	$vr0, $a2, 192
	slli.d	$a6, $a4, 2
	vstx	$vr0, $a5, $a6
	vld	$vr0, $a2, 240
	alsl.d	$a4, $a4, $a5, 2
	vst	$vr0, $a4, 48
	vld	$vr0, $a2, 224
	vst	$vr0, $a4, 32
	vld	$vr0, $a2, 208
	vst	$vr0, $a4, 16
	ld.d	$a4, $s5, 0
	ld.d	$a5, $a3, %pc_lo12(lrec)
	ld.w	$a6, $a4, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.d	$a5, $a5, 32
	ld.w	$a4, $a4, 176
	vld	$vr0, $a2, 256
	slli.d	$a6, $a4, 2
	vstx	$vr0, $a5, $a6
	vld	$vr0, $a2, 304
	alsl.d	$a4, $a4, $a5, 2
	vst	$vr0, $a4, 48
	vld	$vr0, $a2, 288
	vst	$vr0, $a4, 32
	vld	$vr0, $a2, 272
	vst	$vr0, $a4, 16
	ld.d	$a4, $s5, 0
	ld.d	$a5, $a3, %pc_lo12(lrec)
	ld.w	$a6, $a4, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.d	$a5, $a5, 40
	ld.w	$a4, $a4, 176
	vld	$vr0, $a2, 320
	slli.d	$a6, $a4, 2
	vstx	$vr0, $a5, $a6
	vld	$vr0, $a2, 368
	alsl.d	$a4, $a4, $a5, 2
	vst	$vr0, $a4, 48
	vld	$vr0, $a2, 352
	vst	$vr0, $a4, 32
	vld	$vr0, $a2, 336
	vst	$vr0, $a4, 16
	ld.d	$a4, $s5, 0
	ld.d	$a5, $a3, %pc_lo12(lrec)
	ld.w	$a6, $a4, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.d	$a5, $a5, 48
	ld.w	$a4, $a4, 176
	vld	$vr0, $a2, 384
	slli.d	$a6, $a4, 2
	vstx	$vr0, $a5, $a6
	vld	$vr0, $a2, 432
	alsl.d	$a4, $a4, $a5, 2
	vst	$vr0, $a4, 48
	vld	$vr0, $a2, 416
	vst	$vr0, $a4, 32
	vld	$vr0, $a2, 400
	vst	$vr0, $a4, 16
	ld.d	$a4, $s5, 0
	ld.d	$a5, $a3, %pc_lo12(lrec)
	ld.w	$a6, $a4, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.d	$a5, $a5, 56
	ld.w	$a4, $a4, 176
	vld	$vr0, $a2, 448
	slli.d	$a6, $a4, 2
	vstx	$vr0, $a5, $a6
	vld	$vr0, $a2, 496
	alsl.d	$a4, $a4, $a5, 2
	vst	$vr0, $a4, 48
	vld	$vr0, $a2, 480
	vst	$vr0, $a4, 32
	vld	$vr0, $a2, 464
	vst	$vr0, $a4, 16
	ld.d	$a4, $s5, 0
	ld.d	$a5, $a3, %pc_lo12(lrec)
	ld.w	$a6, $a4, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.d	$a5, $a5, 64
	ld.w	$a4, $a4, 176
	vld	$vr0, $a2, 512
	slli.d	$a6, $a4, 2
	vstx	$vr0, $a5, $a6
	vld	$vr0, $a2, 560
	alsl.d	$a4, $a4, $a5, 2
	vst	$vr0, $a4, 48
	vld	$vr0, $a2, 544
	vst	$vr0, $a4, 32
	vld	$vr0, $a2, 528
	vst	$vr0, $a4, 16
	ld.d	$a4, $s5, 0
	ld.d	$a5, $a3, %pc_lo12(lrec)
	ld.w	$a6, $a4, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.d	$a5, $a5, 72
	ld.w	$a4, $a4, 176
	vld	$vr0, $a2, 576
	slli.d	$a6, $a4, 2
	vstx	$vr0, $a5, $a6
	vld	$vr0, $a2, 624
	alsl.d	$a4, $a4, $a5, 2
	vst	$vr0, $a4, 48
	vld	$vr0, $a2, 608
	vst	$vr0, $a4, 32
	vld	$vr0, $a2, 592
	vst	$vr0, $a4, 16
	ld.d	$a4, $s5, 0
	ld.d	$a5, $a3, %pc_lo12(lrec)
	ld.w	$a6, $a4, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.d	$a5, $a5, 80
	ld.w	$a4, $a4, 176
	vld	$vr0, $a2, 640
	slli.d	$a6, $a4, 2
	vstx	$vr0, $a5, $a6
	vld	$vr0, $a2, 688
	alsl.d	$a4, $a4, $a5, 2
	vst	$vr0, $a4, 48
	vld	$vr0, $a2, 672
	vst	$vr0, $a4, 32
	vld	$vr0, $a2, 656
	vst	$vr0, $a4, 16
	ld.d	$a4, $s5, 0
	ld.d	$a5, $a3, %pc_lo12(lrec)
	ld.w	$a6, $a4, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.d	$a5, $a5, 88
	ld.w	$a4, $a4, 176
	vld	$vr0, $a2, 704
	slli.d	$a6, $a4, 2
	vstx	$vr0, $a5, $a6
	vld	$vr0, $a2, 752
	alsl.d	$a4, $a4, $a5, 2
	vst	$vr0, $a4, 48
	vld	$vr0, $a2, 736
	vst	$vr0, $a4, 32
	vld	$vr0, $a2, 720
	vst	$vr0, $a4, 16
	ld.d	$a4, $s5, 0
	ld.d	$a5, $a3, %pc_lo12(lrec)
	ld.w	$a6, $a4, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.d	$a5, $a5, 96
	ld.w	$a4, $a4, 176
	vld	$vr0, $a2, 768
	slli.d	$a6, $a4, 2
	vstx	$vr0, $a5, $a6
	vld	$vr0, $a2, 816
	alsl.d	$a4, $a4, $a5, 2
	vst	$vr0, $a4, 48
	vld	$vr0, $a2, 800
	vst	$vr0, $a4, 32
	vld	$vr0, $a2, 784
	vst	$vr0, $a4, 16
	ld.d	$a4, $s5, 0
	ld.d	$a5, $a3, %pc_lo12(lrec)
	ld.w	$a6, $a4, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.d	$a5, $a5, 104
	ld.w	$a4, $a4, 176
	vld	$vr0, $a2, 832
	slli.d	$a6, $a4, 2
	vstx	$vr0, $a5, $a6
	vld	$vr0, $a2, 880
	alsl.d	$a4, $a4, $a5, 2
	vst	$vr0, $a4, 48
	vld	$vr0, $a2, 864
	vst	$vr0, $a4, 32
	vld	$vr0, $a2, 848
	vst	$vr0, $a4, 16
	ld.d	$a4, $s5, 0
	ld.d	$a5, $a3, %pc_lo12(lrec)
	ld.w	$a6, $a4, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.d	$a5, $a5, 112
	ld.w	$a4, $a4, 176
	vld	$vr0, $a2, 896
	slli.d	$a6, $a4, 2
	vstx	$vr0, $a5, $a6
	vld	$vr0, $a2, 944
	alsl.d	$a4, $a4, $a5, 2
	vst	$vr0, $a4, 48
	vld	$vr0, $a2, 928
	vst	$vr0, $a4, 32
	vld	$vr0, $a2, 912
	vst	$vr0, $a4, 16
	ld.d	$a4, $s5, 0
	ld.d	$a3, $a3, %pc_lo12(lrec)
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 120
	ld.w	$a4, $a4, 176
	vld	$vr0, $a2, 960
	slli.d	$a5, $a4, 2
	vstx	$vr0, $a3, $a5
	vld	$vr0, $a2, 1008
	alsl.d	$a3, $a4, $a3, 2
	vst	$vr0, $a3, 48
	vld	$vr0, $a2, 992
	vst	$vr0, $a3, 32
	vld	$vr0, $a2, 976
	vst	$vr0, $a3, 16
	ld.d	$a2, $s5, 0
.LBB20_4:                               # %.loopexit354
	ldptr.w	$a4, $a2, 15268
	ori	$a3, $zero, 536
	pcalau12i	$s6, %pc_hi20(rdopt)
	beqz	$a4, .LBB20_6
# %bb.5:                                # %.preheader351.preheader
	ld.d	$a4, $s6, %pc_lo12(rdopt)
	vld	$vr0, $a1, 16
	vst	$vr0, $a4, 24
	vld	$vr0, $a1, 0
	vst	$vr0, $a4, 8
	vld	$vr0, $a1, 48
	vst	$vr0, $a4, 56
	vld	$vr0, $a1, 32
	vst	$vr0, $a4, 40
	vld	$vr0, $a1, 80
	vst	$vr0, $a4, 88
	vld	$vr0, $a1, 64
	vst	$vr0, $a4, 72
	vld	$vr0, $a1, 112
	vst	$vr0, $a4, 120
	vld	$vr0, $a1, 96
	vst	$vr0, $a4, 104
	vld	$vr0, $a1, 144
	vst	$vr0, $a4, 152
	vld	$vr0, $a1, 128
	vst	$vr0, $a4, 136
	vld	$vr0, $a1, 176
	vst	$vr0, $a4, 184
	vld	$vr0, $a1, 160
	vst	$vr0, $a4, 168
	vld	$vr0, $a1, 208
	vst	$vr0, $a4, 216
	vld	$vr0, $a1, 192
	vst	$vr0, $a4, 200
	vld	$vr0, $a1, 240
	vst	$vr0, $a4, 248
	vld	$vr0, $a1, 224
	vst	$vr0, $a4, 232
	vld	$vr0, $a1, 272
	vst	$vr0, $a4, 280
	vld	$vr0, $a1, 256
	vst	$vr0, $a4, 264
	vld	$vr0, $a1, 304
	vst	$vr0, $a4, 312
	vld	$vr0, $a1, 288
	vst	$vr0, $a4, 296
	vld	$vr0, $a1, 336
	vst	$vr0, $a4, 344
	vld	$vr0, $a1, 320
	vst	$vr0, $a4, 328
	vld	$vr0, $a1, 368
	vst	$vr0, $a4, 376
	vld	$vr0, $a1, 352
	vst	$vr0, $a4, 360
	vld	$vr0, $a1, 400
	vst	$vr0, $a4, 408
	vld	$vr0, $a1, 384
	vst	$vr0, $a4, 392
	vld	$vr0, $a1, 432
	vst	$vr0, $a4, 440
	vld	$vr0, $a1, 416
	vst	$vr0, $a4, 424
	vld	$vr0, $a1, 464
	vst	$vr0, $a4, 472
	vld	$vr0, $a1, 448
	vst	$vr0, $a4, 456
	vld	$vr0, $a1, 496
	vst	$vr0, $a4, 504
	vld	$vr0, $a1, 480
	vst	$vr0, $a4, 488
.LBB20_6:                               # %.loopexit352
	ldptr.w	$a1, $a2, 15260
	mul.d	$s0, $a0, $a3
	pcalau12i	$s4, %pc_hi20(luma_transform_size_8x8_flag)
	beqz	$a1, .LBB20_8
# %bb.7:
	ld.w	$a1, $s4, %pc_lo12(luma_transform_size_8x8_flag)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(update_offset_params)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s5, 0
.LBB20_8:
	ldptr.w	$a0, $a2, 15536
	add.d	$fp, $fp, $s0
	beqz	$a0, .LBB20_31
# %bb.9:                                # %.preheader350
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	move	$s4, $s3
	ldptr.w	$a0, $a2, 15548
	pcalau12i	$a1, %pc_hi20(rec_mbU)
	addi.d	$s7, $a1, %pc_lo12(rec_mbU)
	pcalau12i	$a1, %pc_hi20(rec_mbV)
	addi.d	$a1, $a1, %pc_lo12(rec_mbV)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(lrec_uv)
	blez	$a0, .LBB20_19
# %bb.10:                               # %.lr.ph
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(lrec_rec_U)
	addi.d	$s1, $a0, %pc_lo12(lrec_rec_U)
	pcalau12i	$a0, %pc_hi20(lrec_rec_V)
	addi.d	$s2, $a0, %pc_lo12(lrec_rec_V)
	move	$s0, $zero
	move	$s7, $zero
	ori	$s3, $zero, 3
	b	.LBB20_12
	.p2align	4, , 16
.LBB20_11:                              #   in Loop: Header=BB20_12 Depth=1
	ldptr.w	$a0, $a2, 15548
	addi.d	$s7, $s7, 1
	addi.d	$s0, $s0, 32
	addi.d	$s1, $s1, 64
	addi.d	$s2, $s2, 64
	bge	$s7, $a0, .LBB20_18
.LBB20_12:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a2, 188
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $s4, 0
	add.d	$a0, $s7, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $a2, 184
	ldptr.w	$a2, $a2, 15544
	alsl.d	$a0, $a1, $a0, 1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a1, $a1, $s0
	slli.d	$a2, $a2, 1
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
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
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$s4, $a1, $s0
	slli.d	$a2, $a3, 1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s5, 0
	ld.w	$a0, $a2, 20
	bne	$a0, $s3, .LBB20_16
# %bb.13:                               #   in Loop: Header=BB20_12 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(si_frame_indicator)
	bnez	$a0, .LBB20_16
# %bb.14:                               #   in Loop: Header=BB20_12 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(sp2_frame_indicator)
	bnez	$a0, .LBB20_16
# %bb.15:                               #   in Loop: Header=BB20_12 Depth=1
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $s3, %pc_lo12(lrec_uv)
	ld.w	$a1, $a2, 188
	ld.d	$a0, $a0, 0
	add.d	$a1, $s7, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $a2, 184
	ldptr.w	$a2, $a2, 15544
	alsl.d	$a0, $a1, $a0, 2
	slli.d	$a2, $a2, 2
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
	ld.d	$a2, $s5, 0
.LBB20_16:                              #   in Loop: Header=BB20_12 Depth=1
	ldptr.w	$a0, $a2, 15268
	beqz	$a0, .LBB20_11
# %bb.17:                               #   in Loop: Header=BB20_12 Depth=1
	ld.d	$a0, $s6, %pc_lo12(rdopt)
	ldptr.w	$a1, $a2, 15544
	add.d	$a0, $a0, $s0
	addi.d	$a0, $a0, 520
	slli.d	$a2, $a1, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s6, %pc_lo12(rdopt)
	ldptr.w	$a2, $a0, 15544
	add.d	$a0, $a1, $s0
	addi.d	$a0, $a0, 1032
	slli.d	$a2, $a2, 1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s5, 0
	b	.LBB20_11
.LBB20_18:                              # %._crit_edge.loopexit
	slti	$a0, $a0, 1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a2, 20
	ori	$a3, $zero, 3
	beq	$a1, $a3, .LBB20_20
	b	.LBB20_25
.LBB20_19:
	ori	$a0, $zero, 1
	ld.w	$a1, $a2, 20
	ori	$a3, $zero, 3
	bne	$a1, $a3, .LBB20_25
.LBB20_20:                              # %._crit_edge
	ld.w	$a1, $s1, %pc_lo12(si_frame_indicator)
	bnez	$a1, .LBB20_25
# %bb.21:                               # %._crit_edge
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(sp2_frame_indicator)
	bnez	$a1, .LBB20_25
# %bb.22:                               # %._crit_edge
	bnez	$a0, .LBB20_25
# %bb.23:                               # %.lr.ph360.preheader
	pcalau12i	$a0, %pc_hi20(lrec_rec_U)
	addi.d	$s1, $a0, %pc_lo12(lrec_rec_U)
	pcalau12i	$a0, %pc_hi20(lrec_rec_V)
	addi.d	$s2, $a0, %pc_lo12(lrec_rec_V)
	move	$s0, $zero
	.p2align	4, , 16
.LBB20_24:                              # %.lr.ph360
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, %pc_lo12(lrec_uv)
	ld.w	$a1, $a2, 188
	ld.d	$a0, $a0, 0
	add.d	$a1, $s0, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $a2, 184
	ldptr.w	$a2, $a2, 15544
	alsl.d	$a0, $a1, $a0, 2
	slli.d	$a2, $a2, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s3, %pc_lo12(lrec_uv)
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
	ld.d	$a2, $s5, 0
	ldptr.w	$a0, $a2, 15548
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, 64
	addi.d	$s2, $s2, 64
	blt	$s0, $a0, .LBB20_24
.LBB20_25:                              # %.loopexit349
	ldptr.w	$a0, $a2, 15268
	beqz	$a0, .LBB20_29
# %bb.26:                               # %.preheader346
	ldptr.w	$a0, $a2, 15548
	move	$s3, $s4
	blez	$a0, .LBB20_30
# %bb.27:                               # %.lr.ph362.preheader
	move	$s0, $zero
	move	$s1, $zero
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB20_28:                              # %.lr.ph362
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, %pc_lo12(rdopt)
	ldptr.w	$a2, $a2, 15544
	add.d	$a0, $a0, $s0
	addi.d	$a0, $a0, 520
	add.d	$a1, $s7, $s0
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s6, %pc_lo12(rdopt)
	ldptr.w	$a2, $a0, 15544
	add.d	$a0, $a1, $s0
	addi.d	$a0, $a0, 1032
	add.d	$a1, $s2, $s0
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s5, 0
	ldptr.w	$a0, $a2, 15548
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 32
	blt	$s1, $a0, .LBB20_28
	b	.LBB20_31
.LBB20_29:
	move	$s3, $s4
.LBB20_30:
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
.LBB20_31:                              # %.loopexit347
	ldptr.d	$a0, $a2, 14160
	pcalau12i	$a1, %pc_hi20(cofAC)
	ld.d	$a3, $a1, %pc_lo12(cofAC)
	st.d	$a0, $a1, %pc_lo12(cofAC)
	ldptr.d	$a1, $a2, 14168
	stptr.d	$a3, $a2, 14160
	pcalau12i	$a3, %pc_hi20(cofDC)
	ld.d	$a0, $a3, %pc_lo12(cofDC)
	st.d	$a1, $a3, %pc_lo12(cofDC)
	pcalau12i	$a3, %pc_hi20(cbp)
	ld.w	$a1, $a3, %pc_lo12(cbp)
	pcalau12i	$a4, %pc_hi20(cbp_blk)
	ld.d	$a4, $a4, %pc_lo12(cbp_blk)
	stptr.d	$a0, $a2, 14168
	ldptr.w	$a5, $a2, 15268
	st.w	$a1, $fp, 364
	st.d	$a4, $fp, 368
	st.w	$s3, $fp, 72
	beqz	$a5, .LBB20_37
# %bb.32:
	ld.d	$a1, $s6, %pc_lo12(rdopt)
	lu12i.w	$a5, 3
	ori	$a5, $a5, 2956
	ldx.w	$a5, $a2, $a5
	ld.w	$a3, $a3, %pc_lo12(cbp)
	st.w	$a5, $a1, 1712
	st.w	$a3, $a1, 1640
	st.d	$a4, $a1, 1648
	ld.w	$a3, $fp, 496
	ld.w	$a4, $fp, 500
	ld.w	$a5, $fp, 4
	st.w	$s3, $a1, 1656
	st.w	$a3, $a1, 1732
	st.w	$a4, $a1, 1736
	st.w	$a5, $a1, 1740
	ld.w	$a3, $fp, 8
	ld.w	$a4, $fp, 504
	ldptr.w	$a5, $a2, 15528
	st.w	$s3, $a1, 1560
	st.w	$a3, $a1, 1728
	addi.w	$a3, $zero, -3
	st.w	$a4, $a1, 1744
	blt	$a5, $a3, .LBB20_36
# %bb.33:                               # %.preheader345.preheader
	move	$s0, $zero
	addi.w	$s1, $zero, -1
	lu12i.w	$a0, 3
	ori	$s2, $a0, 3240
	.p2align	4, , 16
.LBB20_34:                              # %.preheader345
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, %pc_lo12(rdopt)
	ld.d	$a0, $a0, 1544
	ldptr.d	$a1, $a2, 14160
	ldx.d	$a0, $a0, $s0
	ldx.d	$a1, $a1, $s0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(rdopt)
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
	ld.d	$a0, $s6, %pc_lo12(rdopt)
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
	ld.d	$a0, $s6, %pc_lo12(rdopt)
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
	ld.d	$a0, $s6, %pc_lo12(rdopt)
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
	ld.d	$a0, $s6, %pc_lo12(rdopt)
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
	ld.d	$a0, $s6, %pc_lo12(rdopt)
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
	ld.d	$a0, $s6, %pc_lo12(rdopt)
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
	ld.d	$a2, $s5, 0
	ldx.w	$a0, $a2, $s2
	addi.w	$a0, $a0, 3
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB20_34
# %bb.35:                               # %.preheader342.loopexit
	ld.d	$a1, $s6, %pc_lo12(rdopt)
	ldptr.d	$a0, $a2, 14168
.LBB20_36:                              # %.preheader342
	ld.d	$a1, $a1, 1552
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a2, $zero, 72
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(rdopt)
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
	ld.d	$a0, $s6, %pc_lo12(rdopt)
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
	ld.d	$a0, $s6, %pc_lo12(rdopt)
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
	ld.d	$a0, $s6, %pc_lo12(rdopt)
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
	ld.d	$a0, $s6, %pc_lo12(rdopt)
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
.LBB20_37:                              # %.loopexit343
	pcalau12i	$a1, %pc_hi20(b8mode)
	vld	$vr0, $a1, %pc_lo12(b8mode)
	vst	$vr0, $fp, 376
	pcalau12i	$a2, %pc_hi20(b8pdir)
	vld	$vr0, $a2, %pc_lo12(b8pdir)
	vst	$vr0, $fp, 392
	ld.d	$a0, $s5, 0
	ldptr.w	$a3, $a0, 15268
	bstrpick.d	$s3, $s3, 15, 0
	beqz	$a3, .LBB20_39
# %bb.38:
	ld.d	$a3, $s6, %pc_lo12(rdopt)
	vld	$vr0, $a1, %pc_lo12(b8mode)
	vld	$vr1, $a2, %pc_lo12(b8pdir)
	vst	$vr0, $a3, 1568
	vst	$vr1, $a3, 1584
.LBB20_39:
	ld.w	$a1, $fp, 72
	pcalau12i	$a2, %pc_hi20(bi_pred_me)
	ld.h	$a2, $a2, %pc_lo12(bi_pred_me)
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	maskeqz	$a1, $a2, $a1
	bstrpick.d	$a3, $s3, 15, 0
	ori	$a2, $zero, 8
	st.h	$a1, $fp, 480
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	bne	$a3, $a2, .LBB20_43
# %bb.40:
	ld.w	$a1, $s4, %pc_lo12(luma_transform_size_8x8_flag)
	bnez	$a1, .LBB20_43
# %bb.41:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 5100
	beqz	$a1, .LBB20_43
# %bb.42:
	ld.w	$a0, $a0, 20
	addi.d	$a0, $a0, -1
	sltui	$s0, $a0, 1
	pcalau12i	$a0, %pc_hi20(tr8x8)
	addi.d	$s1, $a0, %pc_lo12(tr8x8)
	lu12i.w	$a0, 2
	ori	$s2, $a0, 24
	addi.d	$a0, $sp, 96
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	addi.d	$a2, $sp, 96
	move	$a1, $zero
	move	$a3, $s0
	pcaddu18i	$ra, %call36(RestoreMVBlock8x8)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 96
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 96
	move	$a3, $s0
	pcaddu18i	$ra, %call36(RestoreMVBlock8x8)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 96
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 96
	move	$a3, $s0
	pcaddu18i	$ra, %call36(RestoreMVBlock8x8)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 96
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	addi.d	$a2, $sp, 96
	move	$a3, $s0
	pcaddu18i	$ra, %call36(RestoreMVBlock8x8)
	jirl	$ra, $ra, 0
.LBB20_43:
	ld.bu	$a0, $fp, 364
	andi	$a0, $a0, 15
	bnez	$a0, .LBB20_45
# %bb.44:
	ld.w	$a0, $fp, 72
	ori	$a0, $a0, 4
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB20_96
.LBB20_45:
	ld.w	$a0, $s4, %pc_lo12(luma_transform_size_8x8_flag)
.LBB20_46:
	ld.d	$a1, $s6, %pc_lo12(rdopt)
	st.w	$a0, $fp, 472
	st.w	$a0, $a1, 1720
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4168
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB20_49
# %bb.47:
	ld.d	$a0, $s5, 0
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB20_49
# %bb.48:
	pcalau12i	$a1, %got_pc_hi20(decs)
	ld.d	$a1, $a1, %got_pc_lo12(decs)
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a0, 164
	ld.d	$a1, $a1, 48
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ld.w	$a0, $a0, 160
	stx.b	$s3, $a1, $a0
.LBB20_49:
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 376
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a1, $fp, 392
	pcalau12i	$a2, %pc_hi20(frefframe)
	addi.d	$a0, $a2, %pc_lo12(frefframe)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	move	$a5, $zero
	move	$a6, $zero
	ori	$a7, $zero, 1
	addi.w	$a2, $zero, -1
	ori	$t0, $zero, 255
	ori	$t1, $zero, 4
	ori	$t2, $zero, 14
	lu12i.w	$a3, 6
	ori	$a3, $a3, 1536
	b	.LBB20_51
	.p2align	4, , 16
.LBB20_50:                              #   in Loop: Header=BB20_51 Depth=1
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 4
	beq	$a6, $t1, .LBB20_69
.LBB20_51:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_53 Depth 2
	ld.d	$t4, $s5, 0
	ld.w	$t7, $t4, 172
	move	$t4, $zero
	move	$t5, $zero
	move	$t6, $zero
	add.w	$s0, $t7, $a6
	andi	$t7, $a6, 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a5
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	slli.d	$s0, $s0, 3
	b	.LBB20_53
	.p2align	4, , 16
.LBB20_52:                              #   in Loop: Header=BB20_53 Depth=2
	addi.d	$t6, $t6, 1
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 1
	beq	$t6, $t1, .LBB20_50
.LBB20_53:                              #   Parent Loop BB20_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$ra, $s5, 0
	ld.w	$s1, $ra, 168
	bstrpick.d	$s2, $t6, 31, 1
	or	$s2, $s2, $t7
	slli.d	$s7, $s2, 2
	ldx.w	$s4, $a1, $s7
	add.w	$s1, $t4, $s1
	beq	$s4, $a7, .LBB20_56
# %bb.54:                               #   in Loop: Header=BB20_53 Depth=2
	ld.w	$s3, $fp, 72
	bltu	$t2, $s3, .LBB20_63
# %bb.55:                               #   in Loop: Header=BB20_53 Depth=2
	sll.d	$a4, $a7, $s3
	and	$a4, $a4, $a3
	beqz	$a4, .LBB20_63
.LBB20_56:                              #   in Loop: Header=BB20_53 Depth=2
	ld.d	$a4, $s8, 0
	ldptr.d	$a4, $a4, 6488
	ld.d	$a4, $a4, 0
	ldx.d	$a4, $a4, $s0
	ori	$s7, $zero, 255
	stx.b	$s7, $a4, $s1
	ld.d	$a4, $s8, 0
	ldptr.d	$s3, $a4, 6512
	ldptr.d	$a4, $a4, 6496
	ld.d	$s3, $s3, 0
	ld.d	$a4, $a4, 0
	ldx.d	$s3, $s3, $s0
	ldx.d	$a4, $a4, $s0
	slli.d	$s4, $s1, 3
	ldx.d	$s3, $s3, $s4
	stx.d	$a2, $a4, $s4
	st.w	$zero, $s3, 0
	ld.d	$a4, $s5, 0
	ldptr.w	$a4, $a4, 15268
	beqz	$a4, .LBB20_58
.LBB20_57:                              # %.sink.split
                                        #   in Loop: Header=BB20_53 Depth=2
	ld.d	$a0, $s6, %pc_lo12(rdopt)
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $t6
	st.b	$s7, $a0, 1680
.LBB20_58:                              #   in Loop: Header=BB20_53 Depth=2
	alsl.d	$a0, $s2, $a1, 2
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB20_61
# %bb.59:                               #   in Loop: Header=BB20_53 Depth=2
	ld.w	$s2, $fp, 72
	bltu	$t2, $s2, .LBB20_52
# %bb.60:                               #   in Loop: Header=BB20_53 Depth=2
	sll.d	$a0, $a7, $s2
	and	$a0, $a0, $a3
	beqz	$a0, .LBB20_52
.LBB20_61:                              #   in Loop: Header=BB20_53 Depth=2
	ld.d	$a0, $s8, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s0
	stx.b	$t0, $a0, $s1
	ld.d	$a0, $s8, 0
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
	beqz	$a0, .LBB20_52
# %bb.62:                               #   in Loop: Header=BB20_53 Depth=2
	ld.d	$a0, $s6, %pc_lo12(rdopt)
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $t6
	st.b	$t0, $a0, 1696
	b	.LBB20_52
.LBB20_63:                              #   in Loop: Header=BB20_53 Depth=2
	bne	$s3, $a7, .LBB20_67
# %bb.64:                               #   in Loop: Header=BB20_53 Depth=2
	ori	$a0, $zero, 2
	bne	$s4, $a0, .LBB20_67
# %bb.65:                               #   in Loop: Header=BB20_53 Depth=2
	ld.hu	$s3, $fp, 480
	beqz	$s3, .LBB20_67
# %bb.66:                               #   in Loop: Header=BB20_53 Depth=2
	addi.d	$a4, $s3, -1
	sltui	$a4, $a4, 1
	lu12i.w	$a0, 3
	ori	$s3, $a0, 2112
	masknez	$s3, $s3, $a4
	ori	$s4, $a0, 2104
	maskeqz	$a4, $s4, $a4
	or	$a4, $a4, $s3
	ldx.d	$a4, $ra, $a4
	slli.d	$s3, $a6, 3
	ldx.d	$a4, $a4, $s3
	ld.d	$s3, $s8, 0
	ldx.d	$a4, $a4, $t5
	ldptr.d	$s3, $s3, 6488
	ld.d	$a4, $a4, 0
	ld.d	$s3, $s3, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$s4, $a0, $s7
	ld.d	$a4, $a4, 0
	ldx.d	$s3, $s3, $s0
	slli.d	$s4, $s4, 3
	ldx.d	$a4, $a4, $s4
	stx.b	$zero, $s3, $s1
	ld.d	$s3, $s8, 0
	ld.w	$s4, $fp, 432
	ldptr.d	$s7, $s3, 6512
	slli.d	$ra, $s4, 8
	ld.d	$s7, $s7, 0
	ldptr.d	$t3, $s3, 6496
	alsl.d	$s4, $s4, $ra, 3
	add.d	$s3, $s3, $s4
	ldx.d	$s4, $s7, $s0
	ld.d	$t3, $t3, 0
	slli.d	$ra, $s1, 3
	ld.h	$s7, $a4, 0
	ldx.d	$s4, $s4, $ra
	ld.d	$s3, $s3, 24
	ld.d	$a0, $s5, 0
	ldx.d	$t3, $t3, $s0
	st.h	$s7, $s4, 0
	ld.h	$a4, $a4, 2
	ldptr.w	$a0, $a0, 15268
	move	$s7, $zero
	stx.d	$s3, $t3, $ra
	st.h	$a4, $s4, 2
	bnez	$a0, .LBB20_57
	b	.LBB20_58
.LBB20_67:                              #   in Loop: Header=BB20_53 Depth=2
	ldptr.d	$a0, $ra, 14384
	slli.d	$a4, $a6, 3
	ldx.d	$a0, $a0, $a4
	ld.d	$a4, $s8, 0
	ldx.d	$a0, $a0, $t5
	ldptr.d	$a4, $a4, 6488
	ld.d	$t3, $sp, 80                    # 8-byte Folded Reload
	ldx.b	$t3, $t3, $t6
	ld.d	$a0, $a0, 0
	ld.d	$a4, $a4, 0
	slli.d	$s3, $t3, 3
	ld.d	$t8, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$s4, $t8, $s7
	ldx.d	$a0, $a0, $s3
	ldx.d	$a4, $a4, $s0
	slli.d	$s3, $s4, 3
	ldx.d	$a0, $a0, $s3
	stx.b	$t3, $a4, $s1
	ld.d	$a4, $s8, 0
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
	beqz	$t8, .LBB20_58
# %bb.68:                               #   in Loop: Header=BB20_53 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$s7, $a0, $t6
	b	.LBB20_57
.LBB20_69:
	ori	$a4, $zero, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bne	$a0, $a4, .LBB20_85
# %bb.70:                               # %.preheader.preheader
	ori	$a5, $zero, 1696
	pcalau12i	$a0, %pc_hi20(brefframe)
	addi.d	$a6, $a0, %pc_lo12(brefframe)
	move	$a7, $zero
	ori	$t0, $zero, 14
	lu12i.w	$a0, 3
	ori	$t1, $a0, 2112
	st.d	$t1, $sp, 80                    # 8-byte Folded Spill
	ori	$t3, $a0, 2104
	ori	$t4, $zero, 4
	b	.LBB20_72
	.p2align	4, , 16
.LBB20_71:                              #   in Loop: Header=BB20_72 Depth=1
	addi.d	$a7, $a7, 1
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 4
	beq	$a7, $t4, .LBB20_85
.LBB20_72:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_77 Depth 2
	ld.d	$a0, $s5, 0
	ld.w	$a0, $a0, 172
	move	$t5, $zero
	move	$t6, $zero
	move	$t7, $zero
	add.w	$a0, $a0, $a7
	andi	$t8, $a7, 2
	slli.d	$s0, $a7, 3
	slli.d	$s1, $a0, 3
	b	.LBB20_77
.LBB20_73:                              #   in Loop: Header=BB20_77 Depth=2
	ldptr.d	$a0, $ra, 14384
	ldx.d	$a0, $a0, $s0
	ld.d	$t1, $s8, 0
	ldx.d	$a0, $a0, $t6
	ldptr.d	$t1, $t1, 6488
	ldx.b	$s3, $a6, $t7
	ld.d	$a0, $a0, 8
	ld.d	$t1, $t1, 8
	slli.d	$s4, $s3, 3
	ld.d	$t2, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$s7, $t2, $s7
	ldx.d	$a0, $a0, $s4
	ldx.d	$t1, $t1, $s1
	slli.d	$s4, $s7, 3
	ldx.d	$a0, $a0, $s4
	stx.b	$s3, $t1, $s2
	ld.d	$t1, $s8, 0
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
	beqz	$t2, .LBB20_76
# %bb.74:                               #   in Loop: Header=BB20_77 Depth=2
	ldx.bu	$s7, $a6, $t7
	.p2align	4, , 16
.LBB20_75:                              # %.sink.split459
                                        #   in Loop: Header=BB20_77 Depth=2
	ld.d	$a0, $s6, %pc_lo12(rdopt)
	add.d	$a0, $a0, $a5
	stx.b	$s7, $a0, $t7
.LBB20_76:                              #   in Loop: Header=BB20_77 Depth=2
	addi.d	$t7, $t7, 1
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 1
	beq	$t7, $t4, .LBB20_71
.LBB20_77:                              #   Parent Loop BB20_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$ra, $s5, 0
	ld.w	$a0, $ra, 168
	ld.w	$s4, $fp, 72
	add.w	$s2, $t5, $a0
	bltu	$t0, $s4, .LBB20_80
# %bb.78:                               #   in Loop: Header=BB20_77 Depth=2
	sll.d	$a0, $a4, $s4
	and	$a0, $a0, $a3
	beqz	$a0, .LBB20_80
.LBB20_79:                              #   in Loop: Header=BB20_77 Depth=2
	ld.d	$a0, $s8, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $s1
	ori	$s7, $zero, 255
	stx.b	$s7, $a0, $s2
	ld.d	$a0, $s8, 0
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
	bnez	$a0, .LBB20_75
	b	.LBB20_76
.LBB20_80:                              #   in Loop: Header=BB20_77 Depth=2
	bstrpick.d	$a0, $t7, 31, 1
	or	$a0, $a0, $t8
	slli.d	$s7, $a0, 2
	ldx.w	$s3, $a1, $s7
	beqz	$s3, .LBB20_79
# %bb.81:                               #   in Loop: Header=BB20_77 Depth=2
	bne	$s4, $a4, .LBB20_73
# %bb.82:                               #   in Loop: Header=BB20_77 Depth=2
	ori	$a0, $zero, 2
	bne	$s3, $a0, .LBB20_73
# %bb.83:                               #   in Loop: Header=BB20_77 Depth=2
	ld.hu	$s3, $fp, 480
	beqz	$s3, .LBB20_73
# %bb.84:                               #   in Loop: Header=BB20_77 Depth=2
	addi.d	$a0, $s3, -1
	sltui	$a0, $a0, 1
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	masknez	$s3, $t1, $a0
	maskeqz	$a0, $t3, $a0
	or	$a0, $a0, $s3
	ldx.d	$a0, $ra, $a0
	ldx.d	$a0, $a0, $s0
	ld.d	$s3, $s8, 0
	ldx.d	$a0, $a0, $t6
	ldptr.d	$s3, $s3, 6488
	ld.d	$a0, $a0, 8
	ld.d	$s3, $s3, 8
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$s4, $t1, $s7
	ld.d	$a0, $a0, 0
	ldx.d	$s3, $s3, $s1
	slli.d	$s4, $s4, 3
	ldx.d	$a0, $a0, $s4
	stx.b	$zero, $s3, $s2
	ld.d	$s3, $s8, 0
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
	ldx.d	$s4, $s4, $s2
	ld.d	$s3, $s3, 288
	ld.d	$ra, $s5, 0
	ldx.d	$t1, $t1, $s1
	st.h	$s7, $s4, 0
	ld.h	$a0, $a0, 2
	ldptr.w	$ra, $ra, 15268
	move	$s7, $zero
	stx.d	$s3, $t1, $s2
	st.h	$a0, $s4, 2
	bnez	$ra, .LBB20_75
	b	.LBB20_76
.LBB20_85:                              # %.loopexit340
	pcalau12i	$a0, %pc_hi20(best_c_imode)
	ld.w	$a0, $a0, %pc_lo12(best_c_imode)
	st.w	$a0, $fp, 416
	pcalau12i	$a0, %pc_hi20(best_i16offset)
	ld.w	$a0, $a0, %pc_lo12(best_i16offset)
	ld.d	$a1, $s5, 0
	ld.w	$a2, $fp, 72
	ori	$a3, $zero, 13
	stptr.w	$a0, $a1, 15244
	bne	$a2, $a3, .LBB20_87
# %bb.86:                               # %.loopexit337.loopexit
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
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	b	.LBB20_92
.LBB20_87:
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4091
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	and	$a1, $a1, $a0
	ori	$a0, $zero, 9
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB20_90
# %bb.88:
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB20_92
# %bb.89:                               # %.loopexit337.loopexit380
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
	b	.LBB20_92
.LBB20_90:                              # %.lr.ph374.preheader
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
.LBB20_91:                              # %.lr.ph374
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
	blt	$a1, $a4, .LBB20_91
.LBB20_92:                              # %.loopexit337
	ld.d	$a0, $s5, 0
	ldptr.w	$a1, $a0, 15268
	beqz	$a1, .LBB20_95
# %bb.93:                               # %.lr.ph379.preheader
	ld.w	$a1, $fp, 416
	ld.d	$a2, $s6, %pc_lo12(rdopt)
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
.LBB20_94:                              # %.lr.ph379
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s6, %pc_lo12(rdopt)
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
	blt	$a1, $a3, .LBB20_94
.LBB20_95:                              # %.loopexit
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	sltui	$a1, $a0, 1
	move	$a0, $fp
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2272
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
.LBB20_96:
	move	$a0, $zero
	b	.LBB20_46
.Lfunc_end20:
	.size	set_stored_macroblock_parameters, .Lfunc_end20-set_stored_macroblock_parameters
                                        # -- End function
	.globl	update_offset_params            # -- Begin function update_offset_params
	.p2align	5
	.type	update_offset_params,@function
update_offset_params:                   # @update_offset_params
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
	ld.d	$a5, $a4, 0
	ld.w	$a4, $a5, 20
	slli.d	$a4, $a4, 2
	ldx.w	$t2, $a2, $a4
	pcalau12i	$a2, %got_pc_hi20(OffsetBits)
	ld.d	$a2, $a2, %got_pc_lo12(OffsetBits)
	ld.w	$a2, $a2, 0
	addi.d	$a2, $a2, -1
	ori	$a6, $zero, 1
	sll.w	$a2, $a6, $a2
	slli.d	$s1, $a1, 2
	addi.d	$a6, $s1, 3
	addi.d	$a7, $a1, 2
	sltui	$t1, $a1, 1
	pcalau12i	$a1, %got_pc_hi20(OffsetList8x8)
	ld.d	$a1, $a1, %got_pc_lo12(OffsetList8x8)
	ld.d	$t0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(OffsetList4x4)
	ld.d	$a1, $a1, %got_pc_lo12(OffsetList4x4)
	ld.d	$a1, $a1, 0
	masknez	$t0, $t0, $t1
	maskeqz	$t3, $a1, $t1
	addi.w	$a0, $a0, -9
	ori	$t4, $zero, 4
	or	$t3, $t3, $t0
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	bltu	$t4, $a0, .LBB21_2
# %bb.1:                                # %switch.lookup
	slli.d	$a0, $a0, 3
	pcalau12i	$t0, %pc_hi20(.Lswitch.table.update_offset_params)
	addi.d	$t0, $t0, %pc_lo12(.Lswitch.table.update_offset_params)
	ldx.d	$t4, $t0, $a0
	pcalau12i	$t0, %pc_hi20(.Lswitch.table.update_offset_params.1)
	addi.d	$t0, $t0, %pc_lo12(.Lswitch.table.update_offset_params.1)
	ldx.d	$t5, $t0, $a0
	b	.LBB21_3
.LBB21_2:
	pcalau12i	$a0, %pc_hi20(bestInterFAdjust4x4)
	addi.d	$t5, $a0, %pc_lo12(bestInterFAdjust4x4)
	pcalau12i	$a0, %pc_hi20(bestInterFAdjust8x8)
	addi.d	$t4, $a0, %pc_lo12(bestInterFAdjust8x8)
.LBB21_3:
	move	$a0, $zero
	move	$t0, $zero
	masknez	$t4, $t4, $t1
	maskeqz	$t1, $t5, $t1
	or	$t1, $t1, $t4
	ld.d	$t1, $t1, 0
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $t3, $t2
	andi	$t3, $s1, 4
	andi	$t4, $a6, 5
	andi	$t5, $a6, 6
	andi	$t6, $a6, 7
	andi	$t7, $s1, 8
	andi	$t8, $a6, 9
	andi	$fp, $a6, 10
	andi	$s0, $a6, 11
	andi	$s1, $s1, 12
	andi	$s2, $a6, 13
	andi	$s3, $a6, 14
	andi	$s4, $a6, 15
	ori	$s5, $zero, 128
	.p2align	4, , 16
.LBB21_4:                               # =>This Inner Loop Header: Depth=1
	ldx.d	$s6, $t1, $a0
	and	$s7, $a6, $t0
	sll.w	$s7, $s7, $a7
	ld.h	$s8, $s6, 0
	slli.d	$ra, $s7, 1
	ldx.h	$a4, $t2, $ra
	alsl.d	$a1, $s7, $t2, 1
	add.d	$a4, $a4, $s8
	ext.w.h	$a4, $a4
	srai.d	$s8, $a4, 63
	andn	$a4, $a4, $s8
	slt	$s8, $a4, $a2
	maskeqz	$a4, $a4, $s8
	ld.h	$a3, $s6, 4
	ld.h	$a5, $a1, 2
	masknez	$s8, $a2, $s8
	or	$a4, $a4, $s8
	stx.h	$a4, $t2, $ra
	add.d	$a3, $a5, $a3
	ext.w.h	$a3, $a3
	srai.d	$a4, $a3, 63
	andn	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	maskeqz	$a3, $a3, $a4
	ld.h	$a5, $s6, 8
	ld.h	$s8, $a1, 4
	masknez	$a4, $a2, $a4
	or	$a3, $a3, $a4
	st.h	$a3, $a1, 2
	add.d	$a3, $s8, $a5
	ext.w.h	$a3, $a3
	srai.d	$a4, $a3, 63
	andn	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	maskeqz	$a3, $a3, $a4
	ld.h	$a5, $s6, 12
	ld.h	$s8, $a1, 6
	masknez	$a4, $a2, $a4
	or	$a3, $a3, $a4
	st.h	$a3, $a1, 4
	add.d	$a3, $s8, $a5
	ext.w.h	$a3, $a3
	srai.d	$a4, $a3, 63
	andn	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a2, $a4
	or	$a3, $a3, $a4
	st.h	$a3, $a1, 6
	add.w	$a1, $t3, $s7
	ld.h	$a3, $s6, 16
	slli.d	$a1, $a1, 1
	ldx.h	$a4, $t2, $a1
	add.d	$a3, $a4, $a3
	ext.w.h	$a3, $a3
	srai.d	$a4, $a3, 63
	andn	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	maskeqz	$a3, $a3, $a4
	add.w	$a5, $t4, $s7
	ld.h	$s8, $s6, 20
	slli.d	$a5, $a5, 1
	ldx.h	$ra, $t2, $a5
	masknez	$a4, $a2, $a4
	or	$a3, $a3, $a4
	stx.h	$a3, $t2, $a1
	add.d	$a1, $ra, $s8
	ext.w.h	$a1, $a1
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slt	$a3, $a1, $a2
	maskeqz	$a1, $a1, $a3
	add.w	$a4, $t5, $s7
	ld.h	$s8, $s6, 24
	slli.d	$a4, $a4, 1
	ldx.h	$ra, $t2, $a4
	masknez	$a3, $a2, $a3
	or	$a1, $a1, $a3
	stx.h	$a1, $t2, $a5
	add.d	$a1, $ra, $s8
	ext.w.h	$a1, $a1
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slt	$a3, $a1, $a2
	maskeqz	$a1, $a1, $a3
	add.w	$a5, $t6, $s7
	ld.h	$s8, $s6, 28
	slli.d	$a5, $a5, 1
	ldx.h	$ra, $t2, $a5
	masknez	$a3, $a2, $a3
	or	$a1, $a1, $a3
	stx.h	$a1, $t2, $a4
	add.d	$a1, $ra, $s8
	ext.w.h	$a1, $a1
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slt	$a3, $a1, $a2
	maskeqz	$a1, $a1, $a3
	add.w	$a4, $t7, $s7
	ld.h	$s8, $s6, 32
	slli.d	$a4, $a4, 1
	ldx.h	$ra, $t2, $a4
	masknez	$a3, $a2, $a3
	or	$a1, $a1, $a3
	stx.h	$a1, $t2, $a5
	add.d	$a1, $ra, $s8
	ext.w.h	$a1, $a1
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slt	$a3, $a1, $a2
	maskeqz	$a1, $a1, $a3
	add.w	$a5, $t8, $s7
	ld.h	$s8, $s6, 36
	slli.d	$a5, $a5, 1
	ldx.h	$ra, $t2, $a5
	masknez	$a3, $a2, $a3
	or	$a1, $a1, $a3
	stx.h	$a1, $t2, $a4
	add.d	$a1, $ra, $s8
	ext.w.h	$a1, $a1
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slt	$a3, $a1, $a2
	maskeqz	$a1, $a1, $a3
	add.w	$a4, $fp, $s7
	ld.h	$s8, $s6, 40
	slli.d	$a4, $a4, 1
	ldx.h	$ra, $t2, $a4
	masknez	$a3, $a2, $a3
	or	$a1, $a1, $a3
	stx.h	$a1, $t2, $a5
	add.d	$a1, $ra, $s8
	ext.w.h	$a1, $a1
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slt	$a3, $a1, $a2
	maskeqz	$a1, $a1, $a3
	add.w	$a5, $s0, $s7
	ld.h	$s8, $s6, 44
	slli.d	$a5, $a5, 1
	ldx.h	$ra, $t2, $a5
	masknez	$a3, $a2, $a3
	or	$a1, $a1, $a3
	stx.h	$a1, $t2, $a4
	add.d	$a1, $ra, $s8
	ext.w.h	$a1, $a1
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slt	$a3, $a1, $a2
	maskeqz	$a1, $a1, $a3
	add.w	$a4, $s1, $s7
	ld.h	$s8, $s6, 48
	slli.d	$a4, $a4, 1
	ldx.h	$ra, $t2, $a4
	masknez	$a3, $a2, $a3
	or	$a1, $a1, $a3
	stx.h	$a1, $t2, $a5
	add.d	$a1, $ra, $s8
	ext.w.h	$a1, $a1
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slt	$a3, $a1, $a2
	maskeqz	$a1, $a1, $a3
	add.w	$a5, $s2, $s7
	ld.h	$s8, $s6, 52
	slli.d	$a5, $a5, 1
	ldx.h	$ra, $t2, $a5
	masknez	$a3, $a2, $a3
	or	$a1, $a1, $a3
	stx.h	$a1, $t2, $a4
	add.d	$a1, $ra, $s8
	ext.w.h	$a1, $a1
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slt	$a3, $a1, $a2
	maskeqz	$a1, $a1, $a3
	add.w	$a4, $s3, $s7
	ld.h	$s8, $s6, 56
	slli.d	$a4, $a4, 1
	ldx.h	$ra, $t2, $a4
	masknez	$a3, $a2, $a3
	or	$a1, $a1, $a3
	stx.h	$a1, $t2, $a5
	add.d	$a1, $ra, $s8
	ext.w.h	$a1, $a1
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slt	$a3, $a1, $a2
	maskeqz	$a1, $a1, $a3
	add.w	$a5, $s4, $s7
	ld.h	$s6, $s6, 60
	slli.d	$a5, $a5, 1
	ldx.h	$s7, $t2, $a5
	masknez	$a3, $a2, $a3
	or	$a1, $a1, $a3
	stx.h	$a1, $t2, $a4
	add.d	$a1, $s7, $s6
	ext.w.h	$a1, $a1
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	slt	$a3, $a1, $a2
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a2, $a3
	or	$a1, $a1, $a3
	stx.h	$a1, $t2, $a5
	addi.d	$a0, $a0, 8
	addi.d	$t0, $t0, 1
	bne	$a0, $s5, .LBB21_4
# %bb.5:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 5660
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB21_16
# %bb.6:
	ldptr.w	$a0, $a1, 15548
	blez	$a0, .LBB21_16
# %bb.7:                                # %.lr.ph73
	ldptr.w	$a5, $a1, 15544
	blez	$a5, .LBB21_16
# %bb.8:                                # %.lr.ph73.split.us
	pcalau12i	$a1, %pc_hi20(bestInterFAdjust4x4Cr)
	addi.d	$a1, $a1, %pc_lo12(bestInterFAdjust4x4Cr)
	pcalau12i	$a3, %pc_hi20(bestIntraFAdjust4x4Cr)
	addi.d	$a3, $a3, %pc_lo12(bestIntraFAdjust4x4Cr)
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	masknez	$a3, $a3, $a4
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a3
	ld.d	$a7, $a1, 0
	slli.d	$a1, $a4, 2
	slli.d	$a3, $a4, 4
	or	$a1, $a3, $a1
	pcalau12i	$a3, %pc_hi20(AdaptRndCrPos)
	addi.d	$a3, $a3, %pc_lo12(AdaptRndCrPos)
	add.d	$a1, $a3, $a1
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a3
	move	$a3, $zero
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a6, 3
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a6, $a1
	ld.d	$a4, $a4, 8
	ld.d	$a6, $a7, 0
	ld.d	$a7, $a7, 8
	alsl.d	$t0, $a5, $a1, 1
	alsl.d	$t1, $a5, $a4, 1
	vreplgr2vr.w	$vr0, $a2
	ori	$t2, $zero, 4
	vrepli.b	$vr1, 0
	b	.LBB21_11
	.p2align	4, , 16
.LBB21_9:                               # %vector.body
                                        #   in Loop: Header=BB21_11 Depth=1
	slli.d	$t6, $t3, 1
	ldx.d	$t7, $a1, $t6
	vld	$vr2, $t5, 0
	alsl.d	$t5, $t3, $a1, 1
	vinsgr2vr.d	$vr3, $t7, 0
	vpickev.h	$vr2, $vr2, $vr2
	vadd.h	$vr2, $vr3, $vr2
	vmaxi.h	$vr2, $vr2, 0
	vilvl.h	$vr2, $vr1, $vr2
	vmin.w	$vr2, $vr2, $vr0
	vpickev.h	$vr2, $vr2, $vr2
	ldx.d	$t6, $a4, $t6
	vld	$vr3, $t4, 0
	vstelm.d	$vr2, $t5, 0, 0
	alsl.d	$t3, $t3, $a4, 1
	vinsgr2vr.d	$vr2, $t6, 0
	vpickev.h	$vr3, $vr3, $vr3
	vadd.h	$vr2, $vr2, $vr3
	vmaxi.h	$vr2, $vr2, 0
	vilvl.h	$vr2, $vr1, $vr2
	vmin.w	$vr2, $vr2, $vr0
	vpickev.h	$vr2, $vr2, $vr2
	vstelm.d	$vr2, $t3, 0, 0
.LBB21_10:                              # %._crit_edge.us
                                        #   in Loop: Header=BB21_11 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a0, .LBB21_16
.LBB21_11:                              # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_15 Depth 2
	slli.d	$t6, $a3, 3
	ldx.d	$t5, $a6, $t6
	ldx.d	$t4, $a7, $t6
	slli.d	$t3, $a3, 2
	andi	$t3, $t3, 12
	bne	$a5, $t2, .LBB21_14
# %bb.12:                               # %vector.memcheck
                                        #   in Loop: Header=BB21_11 Depth=1
	andi	$t6, $t6, 24
	add.d	$t7, $t1, $t6
	add.d	$t8, $a1, $t6
	bgeu	$t8, $t7, .LBB21_9
# %bb.13:                               # %vector.memcheck
                                        #   in Loop: Header=BB21_11 Depth=1
	add.d	$t7, $a4, $t6
	add.d	$t6, $t0, $t6
	bgeu	$t7, $t6, .LBB21_9
.LBB21_14:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB21_11 Depth=1
	move	$t6, $zero
	.p2align	4, , 16
.LBB21_15:                              # %scalar.ph
                                        #   Parent Loop BB21_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$t7, $t6, 3
	or	$t7, $t7, $t3
	ld.h	$t8, $t5, 0
	slli.d	$t7, $t7, 1
	ldx.h	$fp, $a1, $t7
	add.d	$t8, $fp, $t8
	ext.w.h	$t8, $t8
	srai.d	$fp, $t8, 63
	andn	$t8, $t8, $fp
	slt	$fp, $t8, $a2
	maskeqz	$t8, $t8, $fp
	masknez	$fp, $a2, $fp
	or	$t8, $t8, $fp
	stx.h	$t8, $a1, $t7
	ld.h	$t8, $t4, 0
	ldx.h	$fp, $a4, $t7
	add.d	$t8, $fp, $t8
	ext.w.h	$t8, $t8
	srai.d	$fp, $t8, 63
	andn	$t8, $t8, $fp
	slt	$fp, $t8, $a2
	maskeqz	$t8, $t8, $fp
	masknez	$fp, $a2, $fp
	or	$t8, $t8, $fp
	stx.h	$t8, $a4, $t7
	addi.d	$t6, $t6, 1
	addi.d	$t5, $t5, 4
	addi.d	$t4, $t4, 4
	bne	$a5, $t6, .LBB21_15
	b	.LBB21_10
.LBB21_16:                              # %.loopexit
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
	or	$a7, $a5, $a6
	move	$s4, $a0
	bstrins.d	$s4, $zero, 0, 0
	slli.d	$a5, $a0, 1
	andi	$s1, $a5, 2
	pcalau12i	$a6, %got_pc_hi20(input)
	ld.d	$s7, $a6, %got_pc_lo12(input)
	ld.d	$a6, $s7, 0
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	alsl.d	$a7, $a7, $a6, 3
	ld.w	$a6, $a7, 140
	ld.w	$s8, $a7, 136
	add.w	$a7, $a6, $s4
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	add.w	$s3, $s8, $s1
	bltz	$a2, .LBB22_25
# %bb.1:
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a7, $a3, 12
	ldptr.d	$t0, $a3, 14224
	ld.w	$t1, $a3, 20
	ori	$t2, $zero, 536
	mul.d	$a7, $a7, $t2
	ori	$t2, $zero, 1
	add.d	$s5, $t0, $a7
	bne	$t1, $t2, .LBB22_37
# %bb.2:                                # %.preheader
	ld.d	$t4, $sp, 32                    # 8-byte Folded Reload
	blez	$a6, .LBB22_45
# %bb.3:                                # %.lr.ph231
	blez	$s8, .LBB22_45
# %bb.4:                                # %.lr.ph.us232.preheader
	andi	$a3, $a5, 2
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	andi	$a0, $a0, 1
	slli.d	$a0, $a0, 4
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a5, %pc_hi20(direct_pdir)
	pcalau12i	$a6, %pc_hi20(direct_ref_idx)
	ori	$a7, $zero, 1
	ori	$t0, $zero, 2
	lu12i.w	$t1, 3
	ori	$t2, $zero, 255
	b	.LBB22_6
	.p2align	4, , 16
.LBB22_5:                               # %._crit_edge.us233
                                        #   in Loop: Header=BB22_6 Depth=1
	addi.d	$s4, $s4, 1
	ld.d	$t4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bge	$s4, $a0, .LBB22_45
.LBB22_6:                               # %.lr.ph.us232
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_9 Depth 2
	ld.d	$t3, $s0, 0
	ld.w	$t3, $t3, 172
	add.d	$t3, $s4, $t3
	slli.d	$t3, $t3, 3
	ld.d	$t5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
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
	bgeu	$t6, $s3, .LBB22_5
.LBB22_9:                               #   Parent Loop BB22_6 Depth=1
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
	slli.d	$s6, $s4, 3
	bnez	$s2, .LBB22_16
# %bb.12:                               #   in Loop: Header=BB22_9 Depth=2
	pcalau12i	$s2, %got_pc_hi20(enc_picture)
	ld.d	$s2, $s2, %got_pc_lo12(enc_picture)
	ld.d	$s8, $s2, 0
	ldptr.d	$s7, $s8, 6512
	ld.d	$s7, $s7, 0
	ldx.d	$s7, $s7, $t3
	ldx.d	$s7, $s7, $t7
	bne	$a1, $a7, .LBB22_17
# %bb.13:                               #   in Loop: Header=BB22_9 Depth=2
	bne	$a2, $t0, .LBB22_17
# %bb.14:                               #   in Loop: Header=BB22_9 Depth=2
	ld.hu	$ra, $s5, 480
	beqz	$ra, .LBB22_17
# %bb.15:                               # %.thread.us
                                        #   in Loop: Header=BB22_9 Depth=2
	addi.d	$ra, $ra, -1
	sltui	$ra, $ra, 1
	ori	$a3, $t1, 2112
	masknez	$a3, $a3, $ra
	ori	$a0, $t1, 2104
	maskeqz	$a0, $a0, $ra
	or	$a0, $a0, $a3
	ldx.d	$a0, $s1, $a0
	ldx.d	$a0, $a0, $s6
	ldx.d	$a0, $a0, $t5
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	ldptr.d	$a3, $s8, 6488
	ld.h	$s1, $a0, 0
	ld.d	$a3, $a3, 0
	st.h	$s1, $s7, 0
	ld.h	$a0, $a0, 2
	ldx.d	$a3, $a3, $t3
	st.h	$a0, $s7, 2
	stx.b	$zero, $a3, $t8
	ld.d	$s2, $s2, 0
	ld.w	$a0, $s5, 432
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
	ldptr.d	$s1, $s1, 14384
	ldx.d	$s1, $s1, $s6
	ldx.d	$s1, $s1, $t5
	ld.d	$s1, $s1, 0
	slli.d	$ra, $fp, 3
	ldx.d	$s1, $s1, $ra
	slli.d	$ra, $a1, 3
	ldx.d	$s1, $s1, $ra
	ldptr.d	$s8, $s8, 6488
	ld.h	$ra, $s1, 0
	ld.d	$s8, $s8, 0
	st.h	$ra, $s7, 0
	ld.h	$s1, $s1, 2
	ldx.d	$s8, $s8, $t3
	st.h	$s1, $s7, 2
	stx.b	$fp, $s8, $t8
	ld.d	$s2, $s2, 0
	ldptr.d	$s1, $s2, 6488
	ld.d	$s1, $s1, 0
	ldx.d	$s1, $s1, $t3
	ld.w	$s7, $s5, 432
	ldx.b	$s1, $s1, $t8
	slli.d	$s8, $s7, 8
	alsl.d	$s7, $s7, $s8, 3
	add.d	$s7, $s2, $s7
	alsl.d	$s1, $s1, $s7, 3
	ld.d	$s1, $s1, 24
.LBB22_18:                              #   in Loop: Header=BB22_9 Depth=2
	ldptr.d	$a0, $s2, 6496
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t3
	addi.w	$a3, $a2, -1
	stx.d	$s1, $a0, $t7
	bgeu	$a3, $t0, .LBB22_7
.LBB22_19:                              #   in Loop: Header=BB22_9 Depth=2
	ldptr.d	$a0, $s2, 6512
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $t3
	ldx.d	$s1, $a0, $t7
	bne	$a1, $a7, .LBB22_23
# %bb.20:                               #   in Loop: Header=BB22_9 Depth=2
	bne	$a2, $t0, .LBB22_23
# %bb.21:                               #   in Loop: Header=BB22_9 Depth=2
	ld.hu	$s7, $s5, 480
	beqz	$s7, .LBB22_23
# %bb.22:                               #   in Loop: Header=BB22_9 Depth=2
	addi.d	$a0, $s7, -1
	sltui	$a0, $a0, 1
	ld.d	$a3, $s0, 0
	ori	$s7, $t1, 2112
	masknez	$s7, $s7, $a0
	ori	$s8, $t1, 2104
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $s7
	ldx.d	$a0, $a3, $a0
	ldx.d	$a0, $a0, $s6
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
	ld.w	$a3, $s5, 432
	ld.d	$s1, $a0, 0
	slli.d	$a0, $a3, 8
	alsl.d	$a0, $a3, $a0, 3
	add.d	$a0, $s1, $a0
	b	.LBB22_24
	.p2align	4, , 16
.LBB22_23:                              #   in Loop: Header=BB22_9 Depth=2
	ld.d	$a0, $s0, 0
	ldptr.d	$a0, $a0, 14384
	ldx.d	$a0, $a0, $s6
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
	ld.w	$a3, $s5, 432
	ldx.b	$a0, $a0, $t8
	slli.d	$t8, $a3, 8
	alsl.d	$a3, $a3, $t8, 3
	add.d	$a3, $s1, $a3
	alsl.d	$a0, $a0, $a3, 3
.LBB22_24:                              #   in Loop: Header=BB22_9 Depth=2
	ld.d	$t8, $a0, 288
	b	.LBB22_8
.LBB22_25:
	blez	$a6, .LBB22_45
# %bb.26:                               # %.lr.ph237.preheader
	ld.w	$a0, $a3, 172
	add.d	$fp, $a0, $s4
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$s4, $a0, %got_pc_lo12(enc_picture)
	addi.w	$s5, $zero, -1
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	b	.LBB22_28
	.p2align	4, , 16
.LBB22_27:                              # %._crit_edge
                                        #   in Loop: Header=BB22_28 Depth=1
	ldptr.d	$a1, $a1, 6488
	ld.d	$a1, $a1, 0
	ld.d	$a2, $s7, 0
	ldx.d	$a1, $a1, $s2
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a2, $s6, $a2, 3
	ld.w	$a2, $a2, 136
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a0, $a0, 8
	ld.d	$a1, $s0, 0
	ld.d	$a2, $s7, 0
	ldx.d	$a0, $a0, $s2
	ld.w	$a1, $a1, 168
	alsl.d	$a2, $s6, $a2, 3
	ld.w	$a2, $a2, 136
	add.w	$a1, $a1, $s1
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ldptr.d	$a0, $a0, 6512
	ld.d	$a1, $s0, 0
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a1, 168
	ld.d	$a2, $s7, 0
	ldx.d	$a0, $a0, $s2
	add.w	$a1, $a1, $s1
	alsl.d	$a2, $s6, $a2, 3
	ld.w	$a2, $a2, 136
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	slli.w	$a1, $a2, 1
	slli.d	$a2, $a1, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ldptr.d	$a0, $a0, 6512
	ld.d	$a1, $s0, 0
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a1, 168
	ld.d	$a2, $s7, 0
	ldx.d	$a0, $a0, $s2
	add.w	$a1, $a1, $s1
	alsl.d	$a2, $s6, $a2, 3
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
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	bge	$fp, $a0, .LBB22_45
.LBB22_28:                              # %.lr.ph237
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_32 Depth 2
                                        #     Child Loop BB22_36 Depth 2
	ld.w	$a2, $a3, 168
	ld.d	$a1, $s4, 0
	add.w	$a0, $a2, $s1
	slli.d	$s2, $fp, 3
	blez	$s8, .LBB22_27
# %bb.29:                               # %.lr.ph
                                        #   in Loop: Header=BB22_28 Depth=1
	ldptr.d	$a3, $a1, 6496
	ld.d	$a4, $a3, 0
	ld.d	$a3, $a3, 8
	add.w	$a2, $a2, $s3
	ldx.d	$a4, $a4, $s2
	ldx.d	$a5, $a3, $s2
	addi.d	$a3, $a0, 1
	slt	$a6, $a2, $a3
	masknez	$a7, $a2, $a6
	maskeqz	$a3, $a3, $a6
	or	$a3, $a3, $a7
	sub.d	$a6, $a3, $a0
	ori	$a3, $zero, 4
	bltu	$a6, $a3, .LBB22_34
# %bb.30:                               # %.lr.ph
                                        #   in Loop: Header=BB22_28 Depth=1
	sub.d	$a7, $a5, $a4
	move	$a3, $a0
	ori	$t0, $zero, 32
	bltu	$a7, $t0, .LBB22_35
# %bb.31:                               # %vector.ph
                                        #   in Loop: Header=BB22_28 Depth=1
	move	$a7, $a6
	bstrins.d	$a7, $zero, 1, 0
	add.d	$a3, $a7, $a0
	alsl.d	$t0, $a0, $a5, 3
	addi.d	$t0, $t0, 16
	alsl.d	$t1, $a0, $a4, 3
	addi.d	$t1, $t1, 16
	move	$t2, $a7
	.p2align	4, , 16
.LBB22_32:                              # %vector.body
                                        #   Parent Loop BB22_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t1, -16
	vst	$vr0, $t1, 0
	vst	$vr0, $t0, -16
	vst	$vr0, $t0, 0
	addi.d	$t2, $t2, -4
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB22_32
# %bb.33:                               # %middle.block
                                        #   in Loop: Header=BB22_28 Depth=1
	beq	$a6, $a7, .LBB22_27
	b	.LBB22_35
.LBB22_34:                              #   in Loop: Header=BB22_28 Depth=1
	move	$a3, $a0
.LBB22_35:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB22_28 Depth=1
	alsl.d	$a4, $a3, $a4, 3
	alsl.d	$a5, $a3, $a5, 3
	.p2align	4, , 16
.LBB22_36:                              # %scalar.ph
                                        #   Parent Loop BB22_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$s5, $a4, 0
	st.d	$s5, $a5, 0
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	blt	$a3, $a2, .LBB22_36
	b	.LBB22_27
.LBB22_37:                              # %.preheader215
	blez	$a6, .LBB22_45
# %bb.38:                               # %.lr.ph219
	blez	$s8, .LBB22_43
# %bb.39:                               # %.lr.ph.us.preheader
	andi	$a2, $a5, 2
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a2, $a2, 0
	ld.w	$a4, $a3, 168
	andi	$a0, $a0, 1
	slli.d	$s2, $a0, 4
	slli.d	$s8, $fp, 3
	slli.d	$s1, $a1, 3
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB22_40:                              # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_41 Depth 2
	ldptr.d	$a0, $a2, 6488
	ld.w	$a1, $a3, 172
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s7, 0
	add.d	$a1, $s4, $a1
	slli.d	$s6, $a1, 3
	ldx.d	$a0, $a0, $s6
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.w	$a2, $a1, 136
	add.w	$a1, $a4, $a5
	add.d	$a0, $a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ldptr.d	$a0, $a3, 14384
	ldptr.d	$a1, $a2, 6512
	slli.d	$a4, $s4, 3
	ld.w	$a5, $s5, 432
	ldx.d	$a6, $a0, $a4
	ld.d	$a0, $a1, 0
	ldptr.d	$a1, $a2, 6496
	slli.d	$a4, $a5, 8
	alsl.d	$a5, $a5, $a4, 3
	ld.w	$a4, $a3, 168
	ld.d	$a1, $a1, 0
	ldx.d	$a7, $a0, $s6
	add.d	$a0, $a2, $a5
	alsl.d	$a0, $fp, $a0, 3
	ldx.d	$t0, $a1, $s6
	ld.d	$a0, $a0, 24
	add.d	$a1, $a6, $s2
	add.d	$a5, $a7, $s2
	alsl.d	$a5, $a4, $a5, 3
	add.d	$a6, $t0, $s2
	alsl.d	$a6, $a4, $a6, 3
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB22_41:                              #   Parent Loop BB22_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a1, 0
	ld.d	$t0, $t0, 0
	ldx.d	$t0, $t0, $s8
	ldx.d	$t0, $t0, $s1
	ld.h	$t1, $t0, 0
	ld.d	$t2, $a5, 0
	st.h	$t1, $t2, 0
	ld.h	$t0, $t0, 2
	st.h	$t0, $t2, 2
	st.d	$a0, $a6, 0
	addi.d	$a7, $a7, 1
	addi.d	$a1, $a1, 8
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 8
	bltu	$a7, $s3, .LBB22_41
# %bb.42:                               # %._crit_edge.us
                                        #   in Loop: Header=BB22_40 Depth=1
	addi.d	$s4, $s4, 1
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	blt	$s4, $a0, .LBB22_40
	b	.LBB22_45
.LBB22_43:                              # %.lr.ph219.split.preheader
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$s1, $a0, %got_pc_lo12(enc_picture)
	move	$s2, $s4
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB22_44:                              # %.lr.ph219.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s0, 0
	ldptr.d	$a0, $a0, 6488
	ld.w	$a2, $a1, 172
	ld.d	$a0, $a0, 0
	add.d	$a2, $s2, $a2
	ld.d	$a3, $s7, 0
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ld.w	$a1, $a1, 168
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	ld.w	$a2, $a2, 136
	add.w	$a1, $a1, $s3
	add.d	$a0, $a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, 1
	addi.d	$s2, $s2, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	blt	$s4, $a0, .LBB22_44
.LBB22_45:                              # %.loopexit
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
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(tr8x8)
	addi.d	$t3, $a0, %pc_lo12(tr8x8)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2680
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(tr4x4)
	addi.d	$t4, $a0, %pc_lo12(tr4x4)
	pcalau12i	$a5, %pc_hi20(imgY_org)
	pcalau12i	$a0, %pc_hi20(diff4x4)
	addi.d	$a6, $a0, %pc_lo12(diff4x4)
	pcalau12i	$a0, %pc_hi20(diff8x8)
	addi.d	$a7, $a0, %pc_lo12(diff8x8)
	move	$a2, $zero
	move	$a1, $zero
	move	$s8, $zero
	move	$a0, $zero
	move	$a3, $zero
	vrepli.b	$vr2, 0
	ori	$t0, $zero, 0
	ori	$t1, $zero, 0
	lu32i.d	$t1, 4
	ori	$t2, $zero, 0
	lu32i.d	$t2, 8
	lu32i.d	$t0, 12
	st.d	$t3, $sp, 64                    # 8-byte Folded Spill
	st.d	$t4, $sp, 56                    # 8-byte Folded Spill
	vst	$vr2, $sp, 144                  # 16-byte Folded Spill
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	st.d	$t1, $sp, 112                   # 8-byte Folded Spill
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	st.d	$t0, $sp, 96                    # 8-byte Folded Spill
	st.d	$t2, $sp, 88                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB26_2:                               # %.preheader53
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_3 Depth 2
                                        #     Child Loop BB26_5 Depth 2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $zero
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	andi	$s4, $a1, 8
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a1, $a3, 3
	ld.w	$a0, $a0, 196
	andi	$a1, $a1, 8
	addi.d	$a3, $a1, 8
	bstrpick.d	$a1, $a2, 62, 3
	alsl.d	$a4, $a1, $a0, 3
	slli.d	$a1, $s4, 1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 58, 3
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	bstrins.d	$a1, $a0, 63, 8
	add.d	$a0, $t3, $a1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$s1, $a0, $a2
	add.d	$a0, $t4, $a1
	add.d	$s2, $a0, $a2
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	slli.d	$a0, $a4, 3
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB26_3:                               # %.preheader
                                        #   Parent Loop BB26_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a5, %pc_lo12(imgY_org)
	ld.w	$a0, $a0, 192
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a2
	add.d	$a0, $s4, $a0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a1, 3
	slli.d	$a1, $a0, 1
	ldx.d	$a0, $a3, $a1
	slli.d	$a3, $fp, 32
	ld.d	$a4, $s2, -96
	slli.d	$a5, $fp, 2
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a4, 0
	ld.d	$a0, $s1, -96
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr1, $vr0, $vr1
	vstx	$vr1, $a6, $a5
	vinsgr2vr.d	$vr1, $a0, 0
	ld.d	$a0, $a2, 8
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $a7, $a5
	ldx.d	$a0, $a0, $a1
	add.d	$a4, $a3, $t1
	ld.d	$a5, $s2, -64
	srai.d	$a4, $a4, 30
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a5, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $s1, -64
	vsub.w	$vr1, $vr0, $vr1
	ld.d	$a5, $a2, 16
	vstx	$vr1, $a6, $a4
	vinsgr2vr.d	$vr1, $a0, 0
	alsl.d	$a0, $fp, $a6, 2
	ldx.d	$a5, $a5, $a1
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $a7, $a4
	vinsgr2vr.d	$vr0, $a5, 0
	ld.d	$a4, $s2, -32
	add.d	$a5, $a3, $t2
	srai.d	$a5, $a5, 30
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a4, 0
	ld.d	$a4, $s1, -32
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr1, $vr0, $vr1
	vstx	$vr1, $a6, $a5
	vinsgr2vr.d	$vr1, $a4, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a2, $a2, 24
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $a7, $a5
	add.d	$a3, $a3, $t0
	ldx.d	$a1, $a2, $a1
	srai.d	$a2, $a3, 32
	ld.d	$a4, $s2, 0
	srai.d	$a3, $a3, 30
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a4, 0
	ld.d	$a1, $s1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr1, $vr0, $vr1
	vstx	$vr1, $a6, $a3
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $a7, $a3
	addi.w	$fp, $a2, 4
	move	$s7, $a6
	move	$s5, $a7
	move	$s0, $t0
	move	$s3, $t1
	move	$s6, $t2
	pcaddu18i	$ra, %call36(distortion4x4)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	move	$t2, $s6
	move	$t1, $s3
	move	$t0, $s0
	vld	$vr2, $sp, 144                  # 16-byte Folded Reload
	move	$a7, $s5
	move	$a6, $s7
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	add.d	$s8, $a0, $s8
	addi.d	$s4, $s4, 4
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, 8
	bltu	$s4, $a3, .LBB26_3
# %bb.4:                                #   in Loop: Header=BB26_2 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 196
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ori	$a1, $a2, 4
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a0, $a2, 5
	ori	$a2, $a0, 224
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2584
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	add.d	$a4, $a4, $a3
	add.d	$s0, $a4, $a2
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	add.d	$a3, $t4, $a3
	add.d	$s1, $a3, $a2
	ori	$a2, $a0, 192
	add.d	$s7, $a4, $a2
	add.d	$s3, $a3, $a2
	ori	$a0, $a0, 160
	add.d	$s6, $a4, $a0
	add.d	$s2, $a3, $a0
	slli.d	$a0, $a1, 5
	add.d	$s5, $a4, $a0
	add.d	$s4, $a3, $a0
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	st.d	$s8, $sp, 160                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB26_5:                               # %.preheader.1
                                        #   Parent Loop BB26_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(imgY_org)
	ld.w	$a0, $a0, 192
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	slli.d	$a2, $a5, 3
	ldx.d	$a3, $a1, $a2
	add.d	$a0, $a4, $a0
	alsl.d	$a2, $a5, $a1, 3
	slli.d	$a1, $a0, 1
	ldx.d	$a0, $a3, $a1
	slli.d	$a3, $fp, 32
	ldx.d	$a4, $s4, $s8
	slli.d	$a5, $fp, 2
	vinsgr2vr.d	$vr0, $a0, 0
	vld	$vr2, $sp, 144                  # 16-byte Folded Reload
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a4, 0
	ldx.d	$a0, $s5, $s8
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr1, $vr0, $vr1
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	vstx	$vr1, $a6, $a5
	vinsgr2vr.d	$vr1, $a0, 0
	ld.d	$a0, $a2, 8
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	vstx	$vr0, $a7, $a5
	ldx.d	$a0, $a0, $a1
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	add.d	$a4, $a3, $a4
	ldx.d	$a5, $s2, $s8
	srai.d	$a4, $a4, 30
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a5, 0
	vilvl.h	$vr1, $vr2, $vr1
	ldx.d	$a0, $s6, $s8
	vsub.w	$vr1, $vr0, $vr1
	ld.d	$a5, $a2, 16
	vstx	$vr1, $a6, $a4
	vinsgr2vr.d	$vr1, $a0, 0
	alsl.d	$a0, $fp, $a6, 2
	ldx.d	$a5, $a5, $a1
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $a7, $a4
	vinsgr2vr.d	$vr0, $a5, 0
	ldx.d	$a4, $s3, $s8
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	add.d	$a5, $a3, $a5
	srai.d	$a5, $a5, 30
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a4, 0
	ldx.d	$a4, $s7, $s8
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr1, $vr0, $vr1
	vstx	$vr1, $a6, $a5
	vinsgr2vr.d	$vr1, $a4, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a2, $a2, 24
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $a7, $a5
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	add.d	$a3, $a3, $a4
	ldx.d	$a1, $a2, $a1
	srai.d	$a2, $a3, 32
	ldx.d	$a4, $s1, $s8
	srai.d	$a3, $a3, 30
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a4, 0
	ldx.d	$a1, $s0, $s8
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr1, $vr0, $vr1
	vstx	$vr1, $a6, $a3
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $a7, $a3
	addi.w	$fp, $a2, 4
	pcaddu18i	$ra, %call36(distortion4x4)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a4, $a4, 4
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, 8
	addi.d	$s7, $s7, 8
	addi.d	$s3, $s3, 8
	addi.d	$s6, $s6, 8
	addi.d	$s2, $s2, 8
	addi.d	$s5, $s5, 8
	addi.d	$s4, $s4, 8
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bltu	$a4, $a0, .LBB26_5
# %bb.6:                                #   in Loop: Header=BB26_2 Depth=1
	pcalau12i	$a0, %pc_hi20(diff8x8)
	addi.d	$a0, $a0, %pc_lo12(diff8x8)
	pcaddu18i	$ra, %call36(distortion8x8)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	xori	$a1, $a1, 1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 4
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	vld	$vr2, $sp, 144                  # 16-byte Folded Reload
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 88                    # 8-byte Folded Reload
	ori	$a4, $zero, 4
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	bne	$a3, $a4, .LBB26_2
# %bb.7:
	slt	$a0, $a0, $s8
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
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$fp, $a0, %got_pc_lo12(img)
	ld.d	$a3, $fp, 0
	ldptr.d	$a0, $a3, 14224
	ld.w	$a1, $a3, 12
	pcalau12i	$a2, %pc_hi20(best_mode)
	ld.h	$s5, $a2, %pc_lo12(best_mode)
	ld.w	$s2, $a3, 20
	ld.d	$s0, $a3, 128
	pcalau12i	$s1, %pc_hi20(rdopt)
	ld.d	$a2, $s1, %pc_lo12(rdopt)
	pcalau12i	$a4, %got_pc_hi20(enc_picture)
	ld.d	$s3, $a4, %got_pc_lo12(enc_picture)
	ld.d	$a4, $s3, 0
	ld.w	$a5, $a3, 180
	ldptr.d	$a6, $a4, 6440
	slli.d	$a5, $a5, 3
	ld.w	$a7, $a3, 176
	ldx.d	$a5, $a6, $a5
	slli.d	$a6, $a7, 1
	vldx	$vr0, $a5, $a6
	alsl.d	$a5, $a7, $a5, 1
	vst	$vr0, $a2, 8
	vld	$vr0, $a5, 16
	vst	$vr0, $a2, 24
	ldptr.d	$a5, $a4, 6440
	ld.w	$a6, $a3, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.w	$a6, $a3, 176
	ld.d	$a5, $a5, 8
	slli.d	$a7, $a6, 1
	vldx	$vr0, $a5, $a7
	alsl.d	$a5, $a6, $a5, 1
	vst	$vr0, $a2, 40
	vld	$vr0, $a5, 16
	vst	$vr0, $a2, 56
	ldptr.d	$a5, $a4, 6440
	ld.w	$a6, $a3, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.w	$a6, $a3, 176
	ld.d	$a5, $a5, 16
	slli.d	$a7, $a6, 1
	vldx	$vr0, $a5, $a7
	alsl.d	$a5, $a6, $a5, 1
	vst	$vr0, $a2, 72
	vld	$vr0, $a5, 16
	vst	$vr0, $a2, 88
	ldptr.d	$a5, $a4, 6440
	ld.w	$a6, $a3, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.w	$a6, $a3, 176
	ld.d	$a5, $a5, 24
	slli.d	$a7, $a6, 1
	vldx	$vr0, $a5, $a7
	alsl.d	$a5, $a6, $a5, 1
	vst	$vr0, $a2, 104
	vld	$vr0, $a5, 16
	vst	$vr0, $a2, 120
	ldptr.d	$a5, $a4, 6440
	ld.w	$a6, $a3, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.w	$a6, $a3, 176
	ld.d	$a5, $a5, 32
	slli.d	$a7, $a6, 1
	vldx	$vr0, $a5, $a7
	alsl.d	$a5, $a6, $a5, 1
	vst	$vr0, $a2, 136
	vld	$vr0, $a5, 16
	vst	$vr0, $a2, 152
	ldptr.d	$a5, $a4, 6440
	ld.w	$a6, $a3, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.w	$a6, $a3, 176
	ld.d	$a5, $a5, 40
	slli.d	$a7, $a6, 1
	vldx	$vr0, $a5, $a7
	alsl.d	$a5, $a6, $a5, 1
	vst	$vr0, $a2, 168
	vld	$vr0, $a5, 16
	vst	$vr0, $a2, 184
	ldptr.d	$a5, $a4, 6440
	ld.w	$a6, $a3, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.w	$a6, $a3, 176
	ld.d	$a5, $a5, 48
	slli.d	$a7, $a6, 1
	vldx	$vr0, $a5, $a7
	alsl.d	$a5, $a6, $a5, 1
	vst	$vr0, $a2, 200
	vld	$vr0, $a5, 16
	vst	$vr0, $a2, 216
	ldptr.d	$a5, $a4, 6440
	ld.w	$a6, $a3, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.w	$a3, $a3, 176
	ld.d	$a5, $a5, 56
	slli.d	$a6, $a3, 1
	vldx	$vr0, $a5, $a6
	alsl.d	$a3, $a3, $a5, 1
	vst	$vr0, $a2, 232
	vld	$vr0, $a3, 16
	ld.d	$a3, $fp, 0
	vst	$vr0, $a2, 248
	ldptr.d	$a4, $a4, 6440
	ld.w	$a5, $a3, 180
	alsl.d	$a4, $a5, $a4, 3
	ld.w	$a5, $a3, 176
	ld.d	$a4, $a4, 64
	slli.d	$a6, $a5, 1
	vldx	$vr0, $a4, $a6
	alsl.d	$a4, $a5, $a4, 1
	vst	$vr0, $a2, 264
	vld	$vr0, $a4, 16
	ld.d	$a4, $s3, 0
	vst	$vr0, $a2, 280
	ldptr.d	$a2, $a4, 6440
	ld.w	$a5, $a3, 180
	alsl.d	$a2, $a5, $a2, 3
	ld.w	$a5, $a3, 176
	ld.d	$a6, $a2, 72
	ld.d	$a2, $s1, %pc_lo12(rdopt)
	slli.d	$a7, $a5, 1
	vldx	$vr0, $a6, $a7
	alsl.d	$a5, $a5, $a6, 1
	vst	$vr0, $a2, 296
	vld	$vr0, $a5, 16
	vst	$vr0, $a2, 312
	ldptr.d	$a5, $a4, 6440
	ld.w	$a6, $a3, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.w	$a6, $a3, 176
	ld.d	$a5, $a5, 80
	slli.d	$a7, $a6, 1
	vldx	$vr0, $a5, $a7
	alsl.d	$a5, $a6, $a5, 1
	vst	$vr0, $a2, 328
	vld	$vr0, $a5, 16
	vst	$vr0, $a2, 344
	ldptr.d	$a5, $a4, 6440
	ld.w	$a6, $a3, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.w	$a6, $a3, 176
	ld.d	$a5, $a5, 88
	slli.d	$a7, $a6, 1
	vldx	$vr0, $a5, $a7
	alsl.d	$a5, $a6, $a5, 1
	vst	$vr0, $a2, 360
	vld	$vr0, $a5, 16
	vst	$vr0, $a2, 376
	ldptr.d	$a5, $a4, 6440
	ld.w	$a6, $a3, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.w	$a6, $a3, 176
	ld.d	$a5, $a5, 96
	slli.d	$a7, $a6, 1
	vldx	$vr0, $a5, $a7
	alsl.d	$a5, $a6, $a5, 1
	vst	$vr0, $a2, 392
	vld	$vr0, $a5, 16
	vst	$vr0, $a2, 408
	ldptr.d	$a5, $a4, 6440
	ld.w	$a6, $a3, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.w	$a6, $a3, 176
	ld.d	$a5, $a5, 104
	slli.d	$a7, $a6, 1
	vldx	$vr0, $a5, $a7
	alsl.d	$a5, $a6, $a5, 1
	vst	$vr0, $a2, 424
	vld	$vr0, $a5, 16
	vst	$vr0, $a2, 440
	ldptr.d	$a5, $a4, 6440
	ld.w	$a6, $a3, 180
	alsl.d	$a5, $a6, $a5, 3
	ld.w	$a6, $a3, 176
	ld.d	$a5, $a5, 112
	slli.d	$a7, $a6, 1
	vldx	$vr0, $a5, $a7
	alsl.d	$a5, $a6, $a5, 1
	vst	$vr0, $a2, 456
	vld	$vr0, $a5, 16
	vst	$vr0, $a2, 472
	ldptr.d	$a4, $a4, 6440
	ld.w	$a5, $a3, 180
	alsl.d	$a4, $a5, $a4, 3
	ld.w	$a5, $a3, 176
	ld.d	$a4, $a4, 120
	slli.d	$a6, $a5, 1
	vldx	$vr0, $a4, $a6
	alsl.d	$a4, $a5, $a4, 1
	vst	$vr0, $a2, 488
	vld	$vr0, $a4, 16
	vst	$vr0, $a2, 504
	ldptr.w	$a4, $a3, 15536
	ld.d	$a3, $fp, 0
	ori	$a5, $zero, 536
	mul.d	$a1, $a1, $a5
	add.d	$s4, $a0, $a1
	beqz	$a4, .LBB27_5
# %bb.1:                                # %.preheader66
	ldptr.w	$a0, $a3, 15548
	blez	$a0, .LBB27_5
# %bb.2:                                # %.lr.ph.preheader
	move	$s6, $zero
	move	$s7, $zero
	.p2align	4, , 16
.LBB27_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ldptr.d	$a0, $a0, 6472
	ld.w	$a1, $a3, 188
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s1, %pc_lo12(rdopt)
	add.d	$a1, $s7, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a0, $a1
	ld.w	$a4, $a3, 184
	ldptr.w	$a3, $a3, 15544
	add.d	$a0, $a2, $s6
	addi.d	$a0, $a0, 520
	alsl.d	$a1, $a4, $a1, 1
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $fp, 0
	ldptr.d	$a0, $a0, 6472
	ld.w	$a2, $a1, 188
	ld.d	$a0, $a0, 8
	ld.d	$a3, $s1, %pc_lo12(rdopt)
	add.d	$a2, $s7, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a0, $a2
	ld.w	$a4, $a1, 184
	ldptr.w	$a5, $a1, 15544
	add.d	$a0, $a3, $s6
	addi.d	$a0, $a0, 1032
	alsl.d	$a1, $a4, $a2, 1
	slli.d	$a2, $a5, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	ldptr.w	$a0, $a3, 15548
	addi.d	$s7, $s7, 1
	addi.d	$s6, $s6, 32
	blt	$s7, $a0, .LBB27_3
# %bb.4:                                # %.loopexit67.loopexit
	ld.d	$a2, $s1, %pc_lo12(rdopt)
.LBB27_5:                               # %.loopexit67
	lu12i.w	$a0, 3
	ori	$a1, $a0, 2956
	ldx.w	$a1, $a3, $a1
	st.w	$s5, $a2, 1656
	st.w	$a1, $a2, 1712
	ld.w	$a1, $s4, 364
	ld.d	$a4, $s4, 368
	ld.w	$a5, $s4, 72
	ld.w	$a6, $s4, 472
	st.w	$a1, $a2, 1640
	st.d	$a4, $a2, 1648
	st.w	$a5, $a2, 1560
	st.w	$a6, $a2, 1720
	bnez	$a5, .LBB27_8
# %bb.6:                                # %.loopexit67
	bstrpick.d	$a1, $s5, 15, 0
	slli.d	$a1, $a1, 48
	beqz	$a1, .LBB27_8
# %bb.7:
	st.w	$zero, $a2, 1656
.LBB27_8:
	ldptr.w	$a1, $a3, 15528
	addi.w	$a4, $zero, -3
	blt	$a1, $a4, .LBB27_12
# %bb.9:                                # %.preheader65.preheader
	move	$s5, $zero
	addi.w	$s6, $zero, -1
	ori	$s7, $a0, 3240
	.p2align	4, , 16
.LBB27_10:                              # %.preheader65
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, %pc_lo12(rdopt)
	ld.d	$a0, $a0, 1544
	ldptr.d	$a1, $a3, 14160
	ldx.d	$a0, $a0, $s5
	ldx.d	$a1, $a1, $s5
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
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
	ld.d	$a3, $fp, 0
	ldx.w	$a0, $a3, $s7
	addi.w	$a0, $a0, 3
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	blt	$s6, $a0, .LBB27_10
# %bb.11:                               # %.preheader63.loopexit
	ld.d	$a2, $s1, %pc_lo12(rdopt)
.LBB27_12:                              # %.preheader63
	ld.d	$a0, $a2, 1552
	ldptr.d	$a1, $a3, 14168
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
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
	vld	$vr0, $s4, 376
	vst	$vr0, $a1, 1568
	vld	$vr0, $s4, 392
	ld.d	$a2, $s3, 0
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
	bne	$s2, $a5, .LBB27_14
# %bb.13:                               # %.preheader.preheader
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
	ld.h	$a2, $s4, 480
	ld.d	$a1, $s1, %pc_lo12(rdopt)
	ld.d	$a0, $fp, 0
	st.h	$a2, $a1, 1564
	b	.LBB27_15
.LBB27_14:                              # %.preheader61.preheader
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
.LBB27_15:                              # %.lr.ph78.preheader
	vld	$vr0, $s4, 332
	vst	$vr0, $a1, 1608
	vld	$vr0, $s4, 348
	vst	$vr0, $a1, 1624
	ld.w	$a2, $a0, 172
	addi.d	$a1, $a2, -1
	slli.d	$a2, $a2, 3
	.p2align	4, , 16
.LBB27_16:                              # %.lr.ph78
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
	blt	$a1, $a3, .LBB27_16
# %bb.17:                               # %._crit_edge
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
	beq	$a0, $a7, .LBB30_28
# %bb.1:
	ori	$a7, $zero, 2
	bne	$a0, $a7, .LBB30_32
# %bb.2:                                # %.preheader307
	slli.w	$a0, $a2, 1
	ori	$a2, $zero, 1
	pcalau12i	$a7, %got_pc_hi20(img)
	ld.d	$a7, $a7, %got_pc_lo12(img)
	pcalau12i	$t0, %got_pc_hi20(enc_picture)
	ld.d	$t0, $t0, %got_pc_lo12(enc_picture)
	move	$t5, $zero
	ori	$t1, $zero, 255
	addi.w	$t2, $zero, -1
	ori	$t3, $zero, 4
	ori	$t4, $zero, 1
	b	.LBB30_4
	.p2align	4, , 16
.LBB30_3:                               # %.split311.us
                                        #   in Loop: Header=BB30_4 Depth=1
	andi	$t6, $t4, 1
	ori	$t5, $zero, 1
	move	$t4, $zero
	beqz	$t6, .LBB30_68
.LBB30_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_12 Depth 2
	ld.d	$fp, $a7, 0
	ld.w	$t6, $fp, 172
	or	$t7, $a0, $t5
	add.w	$t6, $t7, $t6
	or	$t7, $t5, $a0
	slli.d	$t5, $t6, 3
	slli.d	$t8, $t7, 3
	slli.d	$t7, $a5, 3
	slli.d	$t6, $a3, 8
	bne	$a1, $a2, .LBB30_8
# %bb.5:                                # %.thread.us.preheader
                                        #   in Loop: Header=BB30_4 Depth=1
	ld.d	$s0, $t0, 0
	ldptr.d	$s0, $s0, 6488
	ld.d	$s1, $s0, 0
	ld.w	$s0, $fp, 168
	ldx.d	$fp, $s1, $t5
	stx.b	$t1, $fp, $s0
	ld.d	$fp, $t0, 0
	ldptr.d	$s1, $fp, 6512
	ldptr.d	$s2, $fp, 6496
	ld.d	$s1, $s1, 0
	ld.d	$s2, $s2, 0
	ldx.d	$s3, $s1, $t5
	ldx.d	$s2, $s2, $t5
	slli.d	$s1, $s0, 3
	ldx.d	$s3, $s3, $s1
	stx.d	$t2, $s2, $s1
	st.w	$zero, $s3, 0
	beqz	$a6, .LBB30_16
# %bb.6:                                # %.thread293.us
                                        #   in Loop: Header=BB30_4 Depth=1
	ldptr.d	$fp, $fp, 6488
	ld.d	$fp, $fp, 8
	ldx.d	$fp, $fp, $t5
	stx.b	$a5, $fp, $s0
	ld.d	$s0, $a7, 0
	ld.d	$fp, $t0, 0
	bltz	$a5, .LBB30_17
# %bb.7:                                #   in Loop: Header=BB30_4 Depth=1
	ldptr.d	$s2, $s0, 14384
	ldx.d	$s2, $s2, $t8
	ld.d	$s2, $s2, 0
	ld.d	$s2, $s2, 8
	ldptr.d	$s3, $fp, 6512
	ldx.d	$s2, $s2, $t7
	ld.d	$s3, $s3, 8
	ld.d	$s2, $s2, 16
	ldx.d	$s3, $s3, $t5
	ld.h	$s4, $s2, 0
	ldx.d	$s3, $s3, $s1
	ldptr.d	$s5, $fp, 6496
	st.h	$s4, $s3, 0
	alsl.d	$s4, $a3, $t6, 3
	ld.d	$s5, $s5, 8
	add.d	$s4, $fp, $s4
	alsl.d	$s4, $a5, $s4, 3
	ld.d	$s4, $s4, 288
	ldx.d	$s5, $s5, $t5
	ld.h	$s2, $s2, 2
	stx.d	$s4, $s5, $s1
	st.h	$s2, $s3, 2
	b	.LBB30_17
	.p2align	4, , 16
.LBB30_8:                               # %.split.preheader
                                        #   in Loop: Header=BB30_4 Depth=1
	ld.d	$s1, $t0, 0
	move	$fp, $zero
	move	$s0, $zero
	b	.LBB30_12
	.p2align	4, , 16
.LBB30_9:                               #   in Loop: Header=BB30_12 Depth=2
	stx.b	$t1, $s1, $s0
	ld.d	$s1, $t0, 0
	ldptr.d	$s3, $s1, 6512
	ldptr.d	$s4, $s1, 6496
	ld.d	$s3, $s3, 8
	ld.d	$s4, $s4, 8
	ldx.d	$s3, $s3, $t5
	ldx.d	$s5, $s4, $t5
	ldx.d	$s4, $s3, $s2
	move	$s3, $zero
	stx.d	$t2, $s5, $s2
	st.h	$zero, $s4, 0
.LBB30_10:                              # %.sink.split
                                        #   in Loop: Header=BB30_12 Depth=2
	st.h	$s3, $s4, 2
.LBB30_11:                              #   in Loop: Header=BB30_12 Depth=2
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	beq	$s0, $t3, .LBB30_3
.LBB30_12:                              # %.split
                                        #   Parent Loop BB30_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $a7, 0
	ldptr.d	$s3, $s2, 14384
	ldx.d	$s3, $s3, $t8
	ldx.d	$s3, $s3, $fp
	ldptr.d	$s1, $s1, 6488
	ld.d	$s3, $s3, 0
	ld.d	$s1, $s1, 0
	ld.w	$s4, $s2, 168
	slli.d	$s2, $a4, 3
	ldx.d	$s2, $s3, $s2
	ldx.d	$s1, $s1, $t5
	ld.d	$s5, $s2, 16
	add.d	$s1, $s1, $s4
	stx.b	$a4, $s1, $s0
	ld.d	$s1, $t0, 0
	ldptr.d	$s2, $s1, 6512
	ld.d	$s2, $s2, 0
	add.d	$s3, $s0, $s4
	ldx.d	$s6, $s2, $t5
	ldptr.d	$s7, $s1, 6496
	slli.d	$s2, $s3, 3
	ld.h	$s8, $s5, 0
	ldx.d	$s6, $s6, $s2
	alsl.d	$s3, $a3, $t6, 3
	ld.d	$s7, $s7, 0
	st.h	$s8, $s6, 0
	add.d	$s8, $s1, $s3
	alsl.d	$s8, $a4, $s8, 3
	ld.d	$s8, $s8, 24
	ldx.d	$s7, $s7, $t5
	ld.h	$s5, $s5, 2
	stx.d	$s8, $s7, $s2
	st.h	$s5, $s6, 2
	beqz	$a6, .LBB30_11
# %bb.13:                               #   in Loop: Header=BB30_12 Depth=2
	ldptr.d	$s1, $s1, 6488
	ld.d	$s1, $s1, 8
	ldx.d	$s1, $s1, $t5
	add.d	$s1, $s1, $s4
	beqz	$a1, .LBB30_9
# %bb.14:                               # %.thread293
                                        #   in Loop: Header=BB30_12 Depth=2
	stx.b	$a5, $s1, $s0
	ld.d	$s1, $t0, 0
	bltz	$a5, .LBB30_11
# %bb.15:                               #   in Loop: Header=BB30_12 Depth=2
	ld.d	$s4, $a7, 0
	ldptr.d	$s4, $s4, 14384
	ldx.d	$s4, $s4, $t8
	ldx.d	$s4, $s4, $fp
	ld.d	$s4, $s4, 8
	ldptr.d	$s5, $s1, 6512
	ldx.d	$s4, $s4, $t7
	ld.d	$s5, $s5, 8
	ld.d	$s6, $s4, 16
	ldx.d	$s4, $s5, $t5
	ld.h	$s5, $s6, 0
	ldx.d	$s4, $s4, $s2
	ldptr.d	$s7, $s1, 6496
	st.h	$s5, $s4, 0
	ld.d	$s5, $s7, 8
	add.d	$s3, $s1, $s3
	alsl.d	$s3, $a5, $s3, 3
	ld.d	$s7, $s3, 288
	ldx.d	$s5, $s5, $t5
	ld.hu	$s3, $s6, 2
	stx.d	$s7, $s5, $s2
	b	.LBB30_10
.LBB30_16:                              # %.thread.us.preheader..thread.us.1_crit_edge
                                        #   in Loop: Header=BB30_4 Depth=1
	ld.d	$s0, $a7, 0
.LBB30_17:                              # %.thread.us.1
                                        #   in Loop: Header=BB30_4 Depth=1
	ldptr.d	$fp, $fp, 6488
	ld.d	$fp, $fp, 0
	ld.w	$s0, $s0, 168
	ldx.d	$fp, $fp, $t5
	addi.d	$s0, $s0, 1
	stx.b	$t1, $fp, $s0
	ld.d	$fp, $t0, 0
	ldptr.d	$s1, $fp, 6512
	ldptr.d	$s2, $fp, 6496
	ld.d	$s1, $s1, 0
	ld.d	$s2, $s2, 0
	ldx.d	$s3, $s1, $t5
	ldx.d	$s2, $s2, $t5
	slli.d	$s1, $s0, 3
	ldx.d	$s3, $s3, $s1
	stx.d	$t2, $s2, $s1
	st.w	$zero, $s3, 0
	beqz	$a6, .LBB30_20
# %bb.18:                               # %.thread293.us.1
                                        #   in Loop: Header=BB30_4 Depth=1
	ldptr.d	$fp, $fp, 6488
	ld.d	$fp, $fp, 8
	ldx.d	$fp, $fp, $t5
	stx.b	$a5, $fp, $s0
	ld.d	$s0, $a7, 0
	ld.d	$fp, $t0, 0
	bltz	$a5, .LBB30_21
# %bb.19:                               #   in Loop: Header=BB30_4 Depth=1
	ldptr.d	$s2, $s0, 14384
	ldx.d	$s2, $s2, $t8
	ld.d	$s2, $s2, 8
	ld.d	$s2, $s2, 8
	ldptr.d	$s3, $fp, 6512
	ldx.d	$s2, $s2, $t7
	ld.d	$s3, $s3, 8
	ld.d	$s2, $s2, 16
	ldx.d	$s3, $s3, $t5
	ld.h	$s4, $s2, 0
	ldx.d	$s3, $s3, $s1
	ldptr.d	$s5, $fp, 6496
	st.h	$s4, $s3, 0
	alsl.d	$s4, $a3, $t6, 3
	ld.d	$s5, $s5, 8
	add.d	$s4, $fp, $s4
	alsl.d	$s4, $a5, $s4, 3
	ld.d	$s4, $s4, 288
	ldx.d	$s5, $s5, $t5
	ld.h	$s2, $s2, 2
	stx.d	$s4, $s5, $s1
	st.h	$s2, $s3, 2
	b	.LBB30_21
.LBB30_20:                              # %.thread.us.1..thread.us.2_crit_edge
                                        #   in Loop: Header=BB30_4 Depth=1
	ld.d	$s0, $a7, 0
.LBB30_21:                              # %.thread.us.2
                                        #   in Loop: Header=BB30_4 Depth=1
	ldptr.d	$fp, $fp, 6488
	ld.d	$fp, $fp, 0
	ld.w	$s0, $s0, 168
	ldx.d	$fp, $fp, $t5
	addi.d	$s0, $s0, 2
	stx.b	$t1, $fp, $s0
	ld.d	$fp, $t0, 0
	ldptr.d	$s1, $fp, 6512
	ldptr.d	$s2, $fp, 6496
	ld.d	$s1, $s1, 0
	ld.d	$s2, $s2, 0
	ldx.d	$s3, $s1, $t5
	ldx.d	$s2, $s2, $t5
	slli.d	$s1, $s0, 3
	ldx.d	$s3, $s3, $s1
	stx.d	$t2, $s2, $s1
	st.w	$zero, $s3, 0
	beqz	$a6, .LBB30_24
# %bb.22:                               # %.thread293.us.2
                                        #   in Loop: Header=BB30_4 Depth=1
	ldptr.d	$fp, $fp, 6488
	ld.d	$fp, $fp, 8
	ldx.d	$fp, $fp, $t5
	stx.b	$a5, $fp, $s0
	ld.d	$s0, $a7, 0
	ld.d	$fp, $t0, 0
	bltz	$a5, .LBB30_25
# %bb.23:                               #   in Loop: Header=BB30_4 Depth=1
	ldptr.d	$s2, $s0, 14384
	ldx.d	$s2, $s2, $t8
	ld.d	$s2, $s2, 16
	ld.d	$s2, $s2, 8
	ldptr.d	$s3, $fp, 6512
	ldx.d	$s2, $s2, $t7
	ld.d	$s3, $s3, 8
	ld.d	$s2, $s2, 16
	ldx.d	$s3, $s3, $t5
	ld.h	$s4, $s2, 0
	ldx.d	$s3, $s3, $s1
	ldptr.d	$s5, $fp, 6496
	st.h	$s4, $s3, 0
	alsl.d	$s4, $a3, $t6, 3
	ld.d	$s5, $s5, 8
	add.d	$s4, $fp, $s4
	alsl.d	$s4, $a5, $s4, 3
	ld.d	$s4, $s4, 288
	ldx.d	$s5, $s5, $t5
	ld.h	$s2, $s2, 2
	stx.d	$s4, $s5, $s1
	st.h	$s2, $s3, 2
	b	.LBB30_25
.LBB30_24:                              # %.thread.us.2..thread.us.3_crit_edge
                                        #   in Loop: Header=BB30_4 Depth=1
	ld.d	$s0, $a7, 0
.LBB30_25:                              # %.thread.us.3
                                        #   in Loop: Header=BB30_4 Depth=1
	ldptr.d	$fp, $fp, 6488
	ld.d	$fp, $fp, 0
	ld.w	$s0, $s0, 168
	ldx.d	$fp, $fp, $t5
	addi.d	$s0, $s0, 3
	stx.b	$t1, $fp, $s0
	ld.d	$s1, $t0, 0
	ldptr.d	$fp, $s1, 6512
	ldptr.d	$s2, $s1, 6496
	ld.d	$fp, $fp, 0
	ld.d	$s2, $s2, 0
	ldx.d	$s3, $fp, $t5
	ldx.d	$s2, $s2, $t5
	slli.d	$fp, $s0, 3
	ldx.d	$s3, $s3, $fp
	stx.d	$t2, $s2, $fp
	st.w	$zero, $s3, 0
	beqz	$a6, .LBB30_3
# %bb.26:                               # %.thread293.us.3
                                        #   in Loop: Header=BB30_4 Depth=1
	ldptr.d	$s1, $s1, 6488
	ld.d	$s1, $s1, 8
	ldx.d	$s1, $s1, $t5
	stx.b	$a5, $s1, $s0
	bltz	$a5, .LBB30_3
# %bb.27:                               #   in Loop: Header=BB30_4 Depth=1
	ld.d	$s0, $a7, 0
	ldptr.d	$s0, $s0, 14384
	ldx.d	$t8, $s0, $t8
	ld.d	$t8, $t8, 24
	ld.d	$s0, $t0, 0
	ld.d	$t8, $t8, 8
	ldptr.d	$s1, $s0, 6512
	ldx.d	$t7, $t8, $t7
	ld.d	$t8, $s1, 8
	ldptr.d	$s1, $s0, 6496
	ld.d	$t7, $t7, 16
	alsl.d	$t6, $a3, $t6, 3
	ldx.d	$t8, $t8, $t5
	ld.d	$s1, $s1, 8
	add.d	$t6, $s0, $t6
	ld.h	$s0, $t7, 0
	ldx.d	$t8, $t8, $fp
	ldx.d	$t5, $s1, $t5
	alsl.d	$t6, $a5, $t6, 3
	ld.d	$t6, $t6, 288
	st.h	$s0, $t8, 0
	ld.h	$t7, $t7, 2
	stx.d	$t6, $t5, $fp
	st.h	$t7, $t8, 2
	b	.LBB30_3
.LBB30_28:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$ra, $a0, %got_pc_lo12(img)
	ld.d	$a0, $ra, 0
	st.d	$ra, $sp, 64                    # 8-byte Folded Spill
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	bne	$a1, $a7, .LBB30_51
# %bb.29:
	ld.w	$a1, $a0, 172
	andi	$a3, $a2, 2
	add.w	$a4, $a1, $a3
	srli.d	$a5, $a2, 1
	ori	$s5, $zero, 4
	bstrins.d	$s5, $a5, 1, 1
	add.w	$a5, $s5, $a1
	bge	$a4, $a5, .LBB30_56
# %bb.30:                               # %.lr.ph
	slli.d	$a4, $a2, 1
	andi	$s6, $a4, 2
	slli.d	$a4, $a2, 4
	andi	$s7, $a4, 16
	andi	$a4, $a2, 1
	addi.w	$a5, $zero, -2
	maskeqz	$s8, $a5, $a4
	addi.d	$s3, $s6, 3
	add.d	$s0, $a3, $a1
	pcalau12i	$a3, %got_pc_hi20(enc_picture)
	ld.d	$s1, $a3, %got_pc_lo12(enc_picture)
	ld.d	$fp, $s1, 0
	slli.d	$a2, $a2, 3
	andi	$a2, $a2, 16
	alsl.d	$s2, $a1, $a2, 3
	addi.w	$s4, $zero, -1
	lu32i.d	$s4, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB30_31:                              # =>This Inner Loop Header: Depth=1
	ldptr.d	$a1, $fp, 6488
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a0, 168
	ldx.d	$a0, $a1, $s2
	add.w	$a1, $a2, $s6
	stx.w	$s4, $a0, $a1
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
	add.w	$a3, $s3, $a2
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
	addi.d	$s0, $s0, 1
	add.w	$a1, $s5, $a1
	addi.d	$s2, $s2, 8
	blt	$s0, $a1, .LBB30_31
	b	.LBB30_56
.LBB30_32:                              # %.preheader
	slli.w	$a2, $a2, 1
	addi.d	$a7, $a2, 1
	pcalau12i	$t0, %got_pc_hi20(img)
	ld.d	$t0, $t0, %got_pc_lo12(img)
	ori	$t1, $zero, 1
	pcalau12i	$t2, %got_pc_hi20(enc_picture)
	ld.d	$t2, $t2, %got_pc_lo12(enc_picture)
	move	$t3, $zero
	move	$t4, $zero
	ori	$t5, $zero, 255
	addi.w	$t6, $zero, -1
	ori	$t7, $zero, 32
	b	.LBB30_36
.LBB30_33:                              #   in Loop: Header=BB30_36 Depth=1
	ldptr.d	$fp, $s1, 6488
	ld.d	$fp, $fp, 8
	ldx.d	$fp, $fp, $t8
	stx.b	$t5, $fp, $s2
	ld.d	$fp, $t2, 0
	ldptr.d	$s0, $fp, 6512
	ldptr.d	$fp, $fp, 6496
	ld.d	$s0, $s0, 8
	ld.d	$fp, $fp, 8
	ldx.d	$s0, $s0, $t8
	ldx.d	$s1, $fp, $t8
	ldx.d	$fp, $s0, $s3
	move	$t8, $zero
	stx.d	$t6, $s1, $s3
	st.h	$zero, $fp, 0
.LBB30_34:                              # %.sink.split433
                                        #   in Loop: Header=BB30_36 Depth=1
	st.h	$t8, $fp, 2
.LBB30_35:                              #   in Loop: Header=BB30_36 Depth=1
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, 1
	beq	$t3, $t7, .LBB30_68
.LBB30_36:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $t0, 0
	ld.w	$t8, $s4, 172
	ld.w	$fp, $s4, 168
	add.w	$t8, $t4, $t8
	add.w	$s3, $a2, $fp
	slli.d	$s1, $a4, 3
	slli.d	$s0, $a0, 3
	slli.d	$t8, $t8, 3
	slli.d	$fp, $a3, 8
	slli.d	$s2, $s3, 3
	bne	$a1, $t1, .LBB30_39
# %bb.37:                               # %.thread294
                                        #   in Loop: Header=BB30_36 Depth=1
	ld.d	$s4, $t2, 0
	ldptr.d	$s4, $s4, 6488
	ld.d	$s4, $s4, 0
	ldx.d	$s4, $s4, $t8
	stx.b	$t5, $s4, $s3
	ld.d	$s4, $t2, 0
	ldptr.d	$s5, $s4, 6512
	ldptr.d	$s6, $s4, 6496
	ld.d	$s5, $s5, 0
	ld.d	$s6, $s6, 0
	ldx.d	$s5, $s5, $t8
	ldx.d	$s6, $s6, $t8
	ldx.d	$s5, $s5, $s2
	stx.d	$t6, $s6, $s2
	st.w	$zero, $s5, 0
	bnez	$a6, .LBB30_41
# %bb.38:                               # %.thread421
                                        #   in Loop: Header=BB30_36 Depth=1
	ld.d	$s1, $t0, 0
	ld.w	$s1, $s1, 168
	add.w	$s2, $a7, $s1
	b	.LBB30_44
	.p2align	4, , 16
.LBB30_39:                              #   in Loop: Header=BB30_36 Depth=1
	ldptr.d	$s4, $s4, 14384
	ldx.d	$s4, $s4, $t3
	ld.d	$s5, $t2, 0
	slli.d	$s6, $a2, 3
	ldx.d	$s4, $s4, $s6
	ldptr.d	$s5, $s5, 6488
	ld.d	$s4, $s4, 0
	ld.d	$s5, $s5, 0
	ldx.d	$s4, $s4, $s1
	ldx.d	$s5, $s5, $t8
	ldx.d	$s6, $s4, $s0
	stx.b	$a4, $s5, $s3
	ld.d	$s4, $t2, 0
	ldptr.d	$s5, $s4, 6512
	ld.d	$s5, $s5, 0
	ldx.d	$s5, $s5, $t8
	ld.h	$s7, $s6, 0
	ldx.d	$s5, $s5, $s2
	ldptr.d	$s8, $s4, 6496
	st.h	$s7, $s5, 0
	alsl.d	$s7, $a3, $fp, 3
	ld.d	$s8, $s8, 0
	add.d	$s7, $s4, $s7
	alsl.d	$s7, $a4, $s7, 3
	ld.d	$s7, $s7, 24
	ldx.d	$s8, $s8, $t8
	ld.h	$s6, $s6, 2
	stx.d	$s7, $s8, $s2
	st.h	$s6, $s5, 2
	beqz	$a6, .LBB30_46
# %bb.40:                               #   in Loop: Header=BB30_36 Depth=1
	beqz	$a1, .LBB30_45
.LBB30_41:                              # %.thread296
                                        #   in Loop: Header=BB30_36 Depth=1
	ldptr.d	$s4, $s4, 6488
	ld.d	$s4, $s4, 8
	ldx.d	$s4, $s4, $t8
	stx.b	$a5, $s4, $s3
	bltz	$a5, .LBB30_43
# %bb.42:                               #   in Loop: Header=BB30_36 Depth=1
	ld.d	$s3, $t0, 0
	ldptr.d	$s3, $s3, 14384
	ldx.d	$s3, $s3, $t3
	slli.d	$s4, $a2, 3
	ldx.d	$s3, $s3, $s4
	ld.d	$s4, $t2, 0
	ld.d	$s3, $s3, 8
	ldptr.d	$s5, $s4, 6512
	slli.d	$s6, $a5, 3
	ldx.d	$s3, $s3, $s6
	ld.d	$s5, $s5, 8
	ldx.d	$s3, $s3, $s0
	ldx.d	$s5, $s5, $t8
	ldptr.d	$s6, $s4, 6496
	ld.h	$s7, $s3, 0
	ldx.d	$s5, $s5, $s2
	alsl.d	$s8, $a3, $fp, 3
	add.d	$s4, $s4, $s8
	ld.d	$s6, $s6, 8
	st.h	$s7, $s5, 0
	alsl.d	$s4, $a5, $s4, 3
	ld.d	$s4, $s4, 288
	ldx.d	$s6, $s6, $t8
	ld.h	$s3, $s3, 2
	stx.d	$s4, $s6, $s2
	st.h	$s3, $s5, 2
.LBB30_43:                              #   in Loop: Header=BB30_36 Depth=1
	ld.d	$s3, $t0, 0
	ld.w	$s2, $s3, 168
	add.w	$s2, $a7, $s2
	bne	$a1, $t1, .LBB30_47
.LBB30_44:                              # %.thread294.1
                                        #   in Loop: Header=BB30_36 Depth=1
	ld.d	$s1, $t2, 0
	ldptr.d	$s1, $s1, 6488
	ld.d	$s1, $s1, 0
	ldx.d	$s1, $s1, $t8
	stx.b	$t5, $s1, $s2
	ld.d	$s1, $t2, 0
	ldptr.d	$s3, $s1, 6512
	ldptr.d	$s4, $s1, 6496
	ld.d	$s3, $s3, 0
	ld.d	$s4, $s4, 0
	ldx.d	$s3, $s3, $t8
	ldx.d	$s4, $s4, $t8
	slli.d	$s5, $s2, 3
	ldx.d	$s3, $s3, $s5
	stx.d	$t6, $s4, $s5
	st.w	$zero, $s3, 0
	bnez	$a6, .LBB30_49
	b	.LBB30_35
.LBB30_45:                              #   in Loop: Header=BB30_36 Depth=1
	ldptr.d	$s4, $s4, 6488
	ld.d	$s4, $s4, 8
	ldx.d	$s4, $s4, $t8
	stx.b	$t5, $s4, $s3
	ld.d	$s3, $t2, 0
	ldptr.d	$s4, $s3, 6512
	ldptr.d	$s3, $s3, 6496
	ld.d	$s4, $s4, 8
	ld.d	$s3, $s3, 8
	ldx.d	$s4, $s4, $t8
	ldx.d	$s3, $s3, $t8
	ldx.d	$s4, $s4, $s2
	stx.d	$t6, $s3, $s2
	st.w	$zero, $s4, 0
.LBB30_46:                              # %.thread
                                        #   in Loop: Header=BB30_36 Depth=1
	ld.d	$s3, $t0, 0
	ld.w	$s2, $s3, 168
	add.w	$s2, $a7, $s2
.LBB30_47:                              #   in Loop: Header=BB30_36 Depth=1
	ldptr.d	$s3, $s3, 14384
	ldx.d	$s3, $s3, $t3
	ld.d	$s4, $t2, 0
	alsl.d	$s3, $a2, $s3, 3
	ld.d	$s3, $s3, 8
	ldptr.d	$s4, $s4, 6488
	ld.d	$s3, $s3, 0
	ld.d	$s4, $s4, 0
	ldx.d	$s1, $s3, $s1
	ldx.d	$s3, $s4, $t8
	ldx.d	$s4, $s1, $s0
	stx.b	$a4, $s3, $s2
	ld.d	$s1, $t2, 0
	ldptr.d	$s3, $s1, 6512
	ld.d	$s3, $s3, 0
	ldx.d	$s5, $s3, $t8
	slli.d	$s3, $s2, 3
	ld.h	$s6, $s4, 0
	ldx.d	$s5, $s5, $s3
	ldptr.d	$s7, $s1, 6496
	st.h	$s6, $s5, 0
	alsl.d	$s6, $a3, $fp, 3
	ld.d	$s7, $s7, 0
	add.d	$s6, $s1, $s6
	alsl.d	$s6, $a4, $s6, 3
	ld.d	$s6, $s6, 24
	ldx.d	$s7, $s7, $t8
	ld.h	$s4, $s4, 2
	stx.d	$s6, $s7, $s3
	st.h	$s4, $s5, 2
	beqz	$a6, .LBB30_35
# %bb.48:                               #   in Loop: Header=BB30_36 Depth=1
	beqz	$a1, .LBB30_33
.LBB30_49:                              # %.thread296.1
                                        #   in Loop: Header=BB30_36 Depth=1
	ldptr.d	$s1, $s1, 6488
	ld.d	$s1, $s1, 8
	ldx.d	$s1, $s1, $t8
	stx.b	$a5, $s1, $s2
	bltz	$a5, .LBB30_35
# %bb.50:                               #   in Loop: Header=BB30_36 Depth=1
	ld.d	$s1, $t0, 0
	ldptr.d	$s1, $s1, 14384
	ldx.d	$s1, $s1, $t3
	alsl.d	$s1, $a2, $s1, 3
	ld.d	$s1, $s1, 8
	ld.d	$s1, $s1, 8
	ld.d	$s3, $t2, 0
	slli.d	$s4, $a5, 3
	ldx.d	$s1, $s1, $s4
	ldptr.d	$s4, $s3, 6512
	ldx.d	$s0, $s1, $s0
	ld.d	$s1, $s4, 8
	ldptr.d	$s4, $s3, 6496
	alsl.d	$fp, $a3, $fp, 3
	add.d	$s3, $s3, $fp
	ldx.d	$fp, $s1, $t8
	ld.d	$s1, $s4, 8
	slli.d	$s2, $s2, 3
	ld.h	$s4, $s0, 0
	ldx.d	$fp, $fp, $s2
	ldx.d	$s1, $s1, $t8
	alsl.d	$t8, $a5, $s3, 3
	ld.d	$s3, $t8, 288
	st.h	$s4, $fp, 0
	ld.hu	$t8, $s0, 2
	stx.d	$s3, $s1, $s2
	b	.LBB30_34
.LBB30_51:
	lu12i.w	$t0, 3
	ori	$a5, $t0, 2122
	ldx.hu	$a6, $a0, $a5
	andi	$a1, $a2, 2
	slli.d	$a2, $a2, 1
	andi	$a2, $a2, 2
	beqz	$a6, .LBB30_54
# %bb.52:                               # %.preheader305
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
.LBB30_53:                              # =>This Inner Loop Header: Depth=1
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
	bne	$a6, $t1, .LBB30_53
	b	.LBB30_56
.LBB30_54:                              # %.preheader303
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
.LBB30_55:                              # =>This Inner Loop Header: Depth=1
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
	bne	$a6, $t1, .LBB30_55
.LBB30_56:                              # %.loopexit302
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beqz	$a1, .LBB30_68
# %bb.57:
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	andi	$a1, $a2, 2
	beqz	$a3, .LBB30_61
# %bb.58:
	lu12i.w	$t0, 3
	ori	$a3, $t0, 2122
	ldx.hu	$a4, $a0, $a3
	slli.d	$a2, $a2, 1
	andi	$a2, $a2, 2
	beqz	$a4, .LBB30_64
# %bb.59:                               # %.preheader300
	pcalau12i	$a4, %got_pc_hi20(enc_picture)
	ld.d	$a4, $a4, %got_pc_lo12(enc_picture)
	move	$a5, $zero
	ld.d	$t2, $a4, 0
	slli.d	$a7, $a6, 8
	alsl.d	$a6, $a6, $a7, 3
	ori	$a7, $t0, 2112
	ori	$t0, $t0, 2104
	ori	$t1, $zero, 32
	.p2align	4, , 16
.LBB30_60:                              # =>This Inner Loop Header: Depth=1
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
	bne	$a5, $t1, .LBB30_60
	b	.LBB30_68
.LBB30_61:
	move	$a3, $a2
	ld.d	$a0, $ra, 0
	ld.w	$a2, $a0, 172
	add.w	$a4, $a2, $a1
	addi.d	$s0, $a1, 4
	add.w	$a1, $s0, $a2
	bge	$a4, $a1, .LBB30_68
# %bb.62:                               # %.lr.ph328
	slli.d	$a1, $a3, 1
	andi	$s1, $a1, 2
	slli.d	$a1, $a3, 4
	andi	$s2, $a1, 16
	andi	$a1, $a3, 1
	addi.w	$a4, $zero, -2
	maskeqz	$s3, $a4, $a1
	addi.d	$s4, $s1, 3
	andi	$a1, $a3, 2
	add.d	$s5, $a1, $a2
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$s6, $a1, %got_pc_lo12(enc_picture)
	ld.d	$fp, $s6, 0
	slli.d	$a1, $a3, 3
	andi	$a1, $a1, 16
	alsl.d	$s7, $a2, $a1, 3
	addi.w	$s8, $zero, -1
	lu32i.d	$s8, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB30_63:                              # =>This Inner Loop Header: Depth=1
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
	blt	$s5, $a1, .LBB30_63
	b	.LBB30_68
.LBB30_64:                              # %.preheader298
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	move	$a3, $zero
	ld.d	$t0, $a0, 0
	andi	$a4, $s2, 255
	lu12i.w	$a5, 4112
	ori	$a5, $a5, 257
	mul.d	$a4, $a4, $a5
	slli.d	$a5, $a6, 8
	alsl.d	$a5, $a6, $a5, 3
	slli.d	$a6, $s2, 3
	ori	$a7, $zero, 32
	b	.LBB30_66
	.p2align	4, , 16
.LBB30_65:                              # %.split322.us
                                        #   in Loop: Header=BB30_66 Depth=1
	ld.d	$t5, $ra, 0
	ldptr.d	$t5, $t5, 14384
	ldx.d	$t5, $t5, $a3
	ld.d	$t6, $t5, 0
	ld.d	$t6, $t6, 8
	ldptr.d	$t7, $t0, 6512
	ldx.d	$t6, $t6, $a6
	ld.d	$t7, $t7, 8
	ld.d	$t6, $t6, 8
	ld.d	$t8, $t5, 8
	ldx.d	$t4, $t7, $t4
	ld.h	$t7, $t6, 0
	ld.d	$t8, $t8, 8
	ldx.d	$fp, $t4, $t3
	ldx.d	$t8, $t8, $a6
	st.h	$t7, $fp, 0
	ld.h	$t6, $t6, 2
	ld.d	$t7, $t8, 8
	ld.d	$t8, $t5, 16
	st.h	$t6, $fp, 2
	addi.d	$t6, $t3, 8
	ld.h	$fp, $t7, 0
	ld.d	$t8, $t8, 8
	ldx.d	$s0, $t4, $t6
	ldx.d	$t8, $t8, $a6
	st.h	$fp, $s0, 0
	ld.h	$t7, $t7, 2
	ld.d	$t8, $t8, 8
	ld.d	$t5, $t5, 24
	st.h	$t7, $s0, 2
	addi.d	$t7, $t3, 16
	ld.h	$fp, $t8, 0
	ld.d	$t5, $t5, 8
	ldx.d	$s0, $t4, $t7
	ldx.d	$t5, $t5, $a6
	st.h	$fp, $s0, 0
	ld.h	$t8, $t8, 2
	ld.d	$t5, $t5, 8
	ld.d	$fp, $t2, 0
	st.h	$t8, $s0, 2
	addi.d	$t8, $t3, 24
	ld.h	$s0, $t5, 0
	ldx.d	$t4, $t4, $t8
	stx.d	$fp, $t1, $t3
	stx.d	$fp, $t1, $t6
	ld.d	$t2, $t2, 0
	st.h	$s0, $t4, 0
	ld.h	$t3, $t5, 2
	stx.d	$t2, $t1, $t7
	stx.d	$t2, $t1, $t8
	st.h	$t3, $t4, 2
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 1
	beq	$a3, $a7, .LBB30_68
.LBB30_66:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $ra, 0
	ldptr.d	$t0, $t0, 6488
	ld.w	$t2, $t1, 172
	ld.d	$t0, $t0, 8
	add.w	$t2, $a1, $t2
	ld.w	$t1, $t1, 168
	slli.d	$t4, $t2, 3
	ldx.d	$t0, $t0, $t4
	add.w	$t5, $t1, $a2
	stx.w	$a4, $t0, $t5
	ld.d	$t0, $a0, 0
	ldptr.d	$t1, $t0, 6496
	ld.d	$t1, $t1, 8
	add.d	$t2, $t0, $a5
	ldx.d	$t1, $t1, $t4
	alsl.d	$t2, $s2, $t2, 3
	addi.d	$t2, $t2, 288
	slli.d	$t3, $t5, 3
	bgez	$s2, .LBB30_65
# %bb.67:                               # %.split322.preheader
                                        #   in Loop: Header=BB30_66 Depth=1
	ld.d	$t4, $t2, 0
	alsl.d	$t5, $t5, $t1, 3
	stx.d	$t4, $t1, $t3
	st.d	$t4, $t5, 8
	ld.d	$t1, $t2, 0
	st.d	$t1, $t5, 16
	st.d	$t1, $t5, 24
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 1
	bne	$a3, $a7, .LBB30_66
.LBB30_68:                              # %.loopexit
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
