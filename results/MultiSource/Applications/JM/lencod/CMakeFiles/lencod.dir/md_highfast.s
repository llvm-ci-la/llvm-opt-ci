	.file	"md_highfast.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function encode_one_macroblock_highfast
.LCPI0_0:
	.dword	0x7fefffffffffffff              # double 1.7976931348623157E+308
.LCPI0_1:
	.dword	0x46293e5939a08cea              # double 1.0E+30
	.text
	.globl	encode_one_macroblock_highfast
	.p2align	5
	.type	encode_one_macroblock_highfast,@function
encode_one_macroblock_highfast:         # @encode_one_macroblock_highfast
# %bb.0:
	addi.d	$sp, $sp, -560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s1, $sp, 528                   # 8-byte Folded Spill
	st.d	$s2, $sp, 520                   # 8-byte Folded Spill
	st.d	$s3, $sp, 512                   # 8-byte Folded Spill
	st.d	$s4, $sp, 504                   # 8-byte Folded Spill
	st.d	$s5, $sp, 496                   # 8-byte Folded Spill
	st.d	$s6, $sp, 488                   # 8-byte Folded Spill
	st.d	$s7, $sp, 480                   # 8-byte Folded Spill
	st.d	$s8, $sp, 472                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 464                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 456                  # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$a0, $a0, 3840
	st.h	$a0, $sp, 342
	pcalau12i	$a0, %pc_hi20(.L__const.encode_one_macroblock_highfast.bmcost)
	addi.d	$a0, $a0, %pc_lo12(.L__const.encode_one_macroblock_highfast.bmcost)
	ld.w	$a1, $a0, 16
	vld	$vr0, $a0, 0
	st.w	$a1, $sp, 336
	vst	$vr0, $sp, 320
	st.w	$zero, $sp, 316
	st.w	$zero, $sp, 312
	st.w	$zero, $sp, 308
	st.w	$zero, $sp, 292
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	ld.w	$s8, $a1, 20
	ori	$a0, $zero, 2
	ori	$fp, $zero, 1
	beq	$s8, $a0, .LBB0_6
# %bb.1:
	ori	$a0, $zero, 3
	beq	$s8, $a0, .LBB0_3
# %bb.2:
	bnez	$s8, .LBB0_5
.LBB0_3:
	ld.w	$a0, $a1, 164
	ld.w	$a2, $a1, 112
	bne	$a0, $a2, .LBB0_5
# %bb.4:
	ld.w	$a2, $a1, 116
	xor	$a0, $a0, $a2
	sltu	$fp, $zero, $a0
	b	.LBB0_6
.LBB0_5:
	move	$fp, $zero
.LBB0_6:
	ld.w	$a0, $a1, 12
	ldptr.d	$s0, $a1, 14224
	addi.d	$s4, $s8, -1
	ori	$s2, $zero, 536
	mul.d	$s1, $a0, $s2
	pcaddu18i	$ra, %call36(FmoGetPreviousMBNr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	bltz	$a0, .LBB0_8
# %bb.7:
	ldptr.d	$a2, $a1, 14224
	mul.d	$a0, $a0, $s2
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB0_9
.LBB0_8:
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
.LBB0_9:
	ldptr.d	$a0, $a1, 14384
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	sltui	$a1, $s4, 1
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	add.d	$s3, $s0, $s1
	ld.d	$s0, $a0, 0
	st.h	$zero, $sp, 290
	st.h	$zero, $sp, 288
	st.d	$zero, $sp, 280
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 5244
	ori	$a1, $zero, 2
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	beq	$a0, $a1, .LBB0_12
# %bb.10:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_13
# %bb.11:
	pcaddu18i	$ra, %call36(UMHEX_decide_intrabk_SAD)
	jirl	$ra, $ra, 0
	b	.LBB0_13
.LBB0_12:
	pcaddu18i	$ra, %call36(smpUMHEX_decide_intrabk_SAD)
	jirl	$ra, $ra, 0
.LBB0_13:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 12
	pcaddu18i	$ra, %call36(RandomIntra)
	jirl	$ra, $ra, 0
	or	$fp, $a0, $fp
	ext.w.h	$s4, $fp
	addi.d	$a1, $sp, 352
	move	$a0, $s3
	move	$a2, $s4
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(init_enc_mb_params)
	jirl	$ra, $ra, 0
	bstrpick.d	$fp, $fp, 15, 0
	st.w	$zero, $s3, 416
	pcalau12i	$a0, %got_pc_hi20(cs_cm)
	ld.d	$a0, $a0, %got_pc_lo12(cs_cm)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(store_coding_state)
	jirl	$ra, $ra, 0
	move	$t7, $fp
	pcalau12i	$fp, %pc_hi20(.LCPI0_0)
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$t7, $sp, 112                   # 8-byte Folded Spill
	beqz	$t7, .LBB0_16
# %bb.14:
	fld.d	$fs1, $fp, %pc_lo12(.LCPI0_0)
	move	$a3, $zero
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	ld.hu	$a0, $sp, 290
	beqz	$a0, .LBB0_84
.LBB0_15:
	ld.w	$a0, $s3, 72
	ori	$a1, $zero, 13
	lu12i.w	$fp, 2
	bgeu	$a1, $a0, .LBB0_172
	b	.LBB0_173
.LBB0_16:
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(best_mode)
	ld.d	$a0, $a0, %got_pc_lo12(best_mode)
	ori	$s0, $zero, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.h	$s0, $a0, 0
	lu12i.w	$s1, 236040
	bne	$s8, $s0, .LBB0_19
# %bb.17:
	pcaddu18i	$ra, %call36(Get_Direct_Motion_Vectors)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 396
	beqz	$a0, .LBB0_19
# %bb.18:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.h	$zero, $a0, 0
	st.w	$zero, $s3, 416
	ori	$a0, $s1, 3306
	lu32i.d	$a0, -442791
	lu52i.d	$a0, $a0, 1122
	st.d	$a0, $sp, 344
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 184
	addi.d	$a3, $sp, 344
	addi.d	$a4, $sp, 280
	ori	$a6, $zero, 1
	addi.d	$a7, $sp, 290
	move	$a0, $zero
	move	$a1, $s3
	move	$a5, $zero
	pcaddu18i	$ra, %call36(compute_mode_RD_cost)
	jirl	$ra, $ra, 0
.LBB0_19:
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $t6, 0
	ldptr.w	$a0, $a0, 4172
	bne	$a0, $s0, .LBB0_21
# %bb.20:
	pcaddu18i	$ra, %call36(get_initial_mb16x16_cost)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
.LBB0_21:
	fld.d	$fs1, $fp, %pc_lo12(.LCPI0_0)
	ori	$fp, $zero, 1
	lu12i.w	$a0, 524287
	ori	$s0, $a0, 4095
	pcalau12i	$a0, %got_pc_hi20(bi_pred_me)
	ld.d	$a0, $a0, %got_pc_lo12(bi_pred_me)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$s5, $a0, 2120
	pcalau12i	$a0, %got_pc_hi20(lambda_mf_factor)
	ld.d	$s6, $a0, %got_pc_lo12(lambda_mf_factor)
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	move	$a0, $s0
	bstrins.d	$a0, $s0, 62, 32
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$a0, $s1, 3306
	lu32i.d	$a0, -442791
	lu52i.d	$a0, $a0, 1122
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 4112
	ori	$s1, $a0, 257
	ori	$s3, $zero, 1
	move	$s4, $s0
	st.d	$s5, $sp, 88                    # 8-byte Folded Spill
	b	.LBB0_24
.LBB0_22:                               #   in Loop: Header=BB0_24 Depth=1
	move	$s4, $a0
	.p2align	4, , 16
.LBB0_23:                               #   in Loop: Header=BB0_24 Depth=1
	addi.d	$s3, $s3, 1
	ori	$a0, $zero, 4
	beq	$s3, $a0, .LBB0_74
.LBB0_24:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_29 Depth 2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 1
	addi.d	$a2, $sp, 396
	ldx.hu	$a1, $a2, $a1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.h	$zero, $a2, 0
	alsl.d	$a0, $s3, $a0, 1
	stx.h	$zero, $a0, $s5
	beqz	$a1, .LBB0_23
# %bb.25:                               #   in Loop: Header=BB0_24 Depth=1
	ld.hu	$a0, $sp, 290
	bnez	$a0, .LBB0_23
# %bb.26:                               #   in Loop: Header=BB0_24 Depth=1
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	move	$s4, $zero
	st.w	$zero, $sp, 316
	ori	$s5, $zero, 1
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_27:                               #   in Loop: Header=BB0_29 Depth=2
	ext.w.b	$a2, $a1
	ext.w.b	$a3, $a0
	ext.w.b	$a4, $a4
	move	$a0, $zero
	move	$a1, $s3
	pcaddu18i	$ra, %call36(SetRefAndMotionVectors)
	jirl	$ra, $ra, 0
.LBB0_28:                               #   in Loop: Header=BB0_29 Depth=2
	move	$s5, $zero
	addi.d	$a0, $s3, -1
	sltu	$a0, $zero, $a0
	xori	$a1, $s4, 1
	and	$a0, $a0, $a1
	ori	$s4, $zero, 1
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_54
.LBB0_29:                               # %.preheader502
                                        #   Parent Loop BB0_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $t6, 0
	ldptr.w	$a0, $s2, 4172
	ld.w	$s7, $sp, 384
	beqz	$a0, .LBB0_36
# %bb.30:                               #   in Loop: Header=BB0_29 Depth=2
	fld.d	$fs0, $s6, 0
	fsqrt.d	$fa0, $fs0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_51
.LBB0_31:                               # %.split
                                        #   in Loop: Header=BB0_29 Depth=2
	movgr2fr.w	$fa1, $s7
	ffint.d.w	$fa1, $fa1
	ldptr.w	$a0, $s2, 4172
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	st.w	$a1, $sp, 296
	beqz	$a0, .LBB0_37
# %bb.32:                               #   in Loop: Header=BB0_29 Depth=2
	ld.w	$s7, $sp, 388
	fsqrt.d	$fa0, $fs0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_52
.LBB0_33:                               # %.split651
                                        #   in Loop: Header=BB0_29 Depth=2
	movgr2fr.w	$fa1, $s7
	ffint.d.w	$fa1, $fa1
	ldptr.w	$a0, $s2, 4172
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	st.w	$a1, $sp, 300
	beqz	$a0, .LBB0_38
# %bb.34:                               #   in Loop: Header=BB0_29 Depth=2
	ld.w	$s2, $sp, 392
	fsqrt.d	$fa0, $fs0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_53
.LBB0_35:                               # %.split653
                                        #   in Loop: Header=BB0_29 Depth=2
	movgr2fr.w	$fa1, $s2
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_36:                               # %.thread
                                        #   in Loop: Header=BB0_29 Depth=2
	st.w	$s7, $sp, 296
.LBB0_37:                               # %.thread612
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.w	$a0, $sp, 388
	st.w	$a0, $sp, 300
.LBB0_38:                               #   in Loop: Header=BB0_29 Depth=2
	ld.w	$a0, $sp, 392
.LBB0_39:                               #   in Loop: Header=BB0_29 Depth=2
	st.w	$a0, $sp, 304
	addi.d	$a2, $sp, 296
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(PartitionMotionSearch)
	jirl	$ra, $ra, 0
	st.w	$s0, $sp, 320
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a3, $sp, 184
	addi.d	$a4, $sp, 320
	addi.d	$a5, $sp, 342
	move	$a0, $zero
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(list_prediction_cost)
	jirl	$ra, $ra, 0
	bne	$s8, $fp, .LBB0_43
# %bb.40:                               #   in Loop: Header=BB0_29 Depth=2
	st.w	$s0, $sp, 324
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	addi.d	$a3, $sp, 184
	addi.d	$a4, $sp, 320
	addi.d	$a5, $sp, 342
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(list_prediction_cost)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	addi.d	$a3, $sp, 184
	addi.d	$a4, $sp, 320
	addi.d	$a5, $sp, 342
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(list_prediction_cost)
	jirl	$ra, $ra, 0
	bne	$s3, $fp, .LBB0_44
# %bb.41:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2120
	ldx.w	$a0, $a0, $a1
	beqz	$a0, .LBB0_44
# %bb.42:                               #   in Loop: Header=BB0_29 Depth=2
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	ori	$a2, $zero, 1
	addi.d	$a3, $sp, 184
	addi.d	$a4, $sp, 320
	move	$a1, $s4
	move	$a5, $zero
	pcaddu18i	$ra, %call36(list_prediction_cost)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	ori	$a2, $zero, 1
	addi.d	$a3, $sp, 184
	addi.d	$a4, $sp, 320
	move	$a1, $s4
	move	$a5, $zero
	pcaddu18i	$ra, %call36(list_prediction_cost)
	jirl	$ra, $ra, 0
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_43:                               #   in Loop: Header=BB0_29 Depth=2
	ld.w	$a1, $sp, 320
	ld.w	$a2, $sp, 316
	move	$a0, $zero
	st.b	$zero, $sp, 455
	add.d	$a1, $a2, $a1
	st.w	$a1, $sp, 316
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_44:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $sp, 332
.LBB0_45:                               #   in Loop: Header=BB0_29 Depth=2
	addi.d	$a1, $sp, 320
	addi.d	$a2, $sp, 342
	addi.d	$a3, $sp, 455
	addi.d	$a4, $sp, 316
	move	$a0, $s3
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(determine_prediction_list)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 455
.LBB0_46:                               #   in Loop: Header=BB0_29 Depth=2
	ld.h	$a3, $sp, 426
	ld.b	$a4, $sp, 342
	ld.b	$a5, $sp, 343
	ext.w.b	$a1, $a0
	move	$a0, $s3
	move	$a2, $s4
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(assign_enc_picture_params)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 342
	ori	$a1, $zero, 2
	beq	$s3, $a1, .LBB0_49
# %bb.47:                               #   in Loop: Header=BB0_29 Depth=2
	ori	$a1, $zero, 3
	bne	$s3, $a1, .LBB0_50
# %bb.48:                               #   in Loop: Header=BB0_29 Depth=2
	addi.d	$a2, $s4, 2
	pcalau12i	$a1, %got_pc_hi20(best8x8fwref)
	ld.d	$a3, $a1, %got_pc_lo12(best8x8fwref)
	ld.bu	$a1, $sp, 455
	addi.d	$a3, $a3, 12
	stx.b	$a0, $a3, $a2
	stx.b	$a0, $a3, $s4
	pcalau12i	$a3, %got_pc_hi20(best8x8pdir)
	ld.d	$a3, $a3, %got_pc_lo12(best8x8pdir)
	ld.bu	$a4, $sp, 343
	addi.d	$a3, $a3, 12
	stx.b	$a1, $a3, $a2
	stx.b	$a1, $a3, $s4
	pcalau12i	$a3, %got_pc_hi20(best8x8bwref)
	ld.d	$a3, $a3, %got_pc_lo12(best8x8bwref)
	addi.d	$a3, $a3, 12
	stx.b	$a4, $a3, $a2
	stx.b	$a4, $a3, $s4
	sltui	$a2, $s3, 2
	orn	$a2, $a2, $s5
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_28
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_49:                               #   in Loop: Header=BB0_29 Depth=2
	slli.d	$a2, $s4, 1
	addi.d	$a3, $a2, 1
	pcalau12i	$a1, %got_pc_hi20(best8x8fwref)
	ld.d	$a4, $a1, %got_pc_lo12(best8x8fwref)
	ld.bu	$a1, $sp, 455
	addi.d	$a4, $a4, 8
	stx.b	$a0, $a4, $a3
	stx.b	$a0, $a4, $a2
	pcalau12i	$a4, %got_pc_hi20(best8x8pdir)
	ld.d	$a5, $a4, %got_pc_lo12(best8x8pdir)
	ld.bu	$a4, $sp, 343
	addi.d	$a5, $a5, 8
	stx.b	$a1, $a5, $a3
	stx.b	$a1, $a5, $a2
	pcalau12i	$a5, %got_pc_hi20(best8x8bwref)
	ld.d	$a5, $a5, %got_pc_lo12(best8x8bwref)
	addi.d	$a5, $a5, 8
	stx.b	$a4, $a5, $a3
	stx.b	$a4, $a5, $a2
	sltui	$a2, $s3, 2
	orn	$a2, $a2, $s5
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_27
	b	.LBB0_28
	.p2align	4, , 16
.LBB0_50:                               #   in Loop: Header=BB0_29 Depth=2
	mul.d	$a1, $a0, $s1
	pcalau12i	$a2, %got_pc_hi20(best8x8fwref)
	ld.d	$a2, $a2, %got_pc_lo12(best8x8fwref)
	ld.bu	$a4, $sp, 343
	st.w	$a1, $a2, 4
	mul.d	$a2, $a4, $s1
	pcalau12i	$a1, %got_pc_hi20(best8x8bwref)
	ld.d	$a3, $a1, %got_pc_lo12(best8x8bwref)
	ld.bu	$a1, $sp, 455
	st.w	$a2, $a3, 4
	pcalau12i	$a2, %got_pc_hi20(best8x8pdir)
	ld.d	$a2, $a2, %got_pc_lo12(best8x8pdir)
	st.b	$a1, $a2, 7
	st.b	$a1, $a2, 6
	st.b	$a1, $a2, 5
	st.b	$a1, $a2, 4
	sltui	$a2, $s3, 2
	orn	$a2, $a2, $s5
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_28
	b	.LBB0_27
.LBB0_51:                               # %call.sqrt
                                        #   in Loop: Header=BB0_29 Depth=2
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB0_31
.LBB0_52:                               # %call.sqrt652
                                        #   in Loop: Header=BB0_29 Depth=2
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB0_33
.LBB0_53:                               # %call.sqrt654
                                        #   in Loop: Header=BB0_29 Depth=2
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_54:                               #   in Loop: Header=BB0_24 Depth=1
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	bne	$s3, $fp, .LBB0_69
# %bb.55:                               #   in Loop: Header=BB0_24 Depth=1
	ori	$a0, $zero, 3
	beq	$s8, $a0, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_24 Depth=1
	bnez	$s8, .LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_24 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $sp, 344
.LBB0_58:                               #   in Loop: Header=BB0_24 Depth=1
	bne	$s8, $fp, .LBB0_60
# %bb.59:                               # %.thread613
                                        #   in Loop: Header=BB0_24 Depth=1
	pcalau12i	$a0, %got_pc_hi20(best8x8pdir)
	ld.d	$a0, $a0, %got_pc_lo12(best8x8pdir)
	st.w	$zero, $a0, 4
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	st.w	$zero, $s2, 416
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	addi.d	$a2, $sp, 184
	addi.d	$a3, $sp, 344
	addi.d	$a4, $sp, 280
	addi.d	$a7, $sp, 290
	move	$a1, $s2
	move	$a5, $zero
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(compute_mode_RD_cost)
	jirl	$ra, $ra, 0
	b	.LBB0_68
.LBB0_60:                               #   in Loop: Header=BB0_24 Depth=1
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	st.w	$zero, $s2, 416
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	addi.d	$a2, $sp, 184
	addi.d	$a3, $sp, 344
	addi.d	$a4, $sp, 280
	addi.d	$a7, $sp, 290
	move	$a1, $s2
	move	$a5, $zero
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(compute_mode_RD_cost)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	beq	$s8, $a0, .LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_24 Depth=1
	bnez	$s8, .LBB0_68
.LBB0_62:                               #   in Loop: Header=BB0_24 Depth=1
	pcaddu18i	$ra, %call36(FindSkipModeMotionVector)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 5744
	beqz	$a0, .LBB0_68
# %bb.63:                               #   in Loop: Header=BB0_24 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 364
	bnez	$a0, .LBB0_68
# %bb.64:                               #   in Loop: Header=BB0_24 Depth=1
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ldptr.d	$a1, $a0, 6488
	ld.w	$a3, $a2, 172
	ld.d	$a4, $a1, 0
	slli.d	$a1, $a3, 3
	ldx.d	$a3, $a4, $a1
	ld.w	$a2, $a2, 168
	ldx.bu	$a3, $a3, $a2
	bnez	$a3, .LBB0_68
# %bb.65:                               #   in Loop: Header=BB0_24 Depth=1
	ldptr.d	$a0, $a0, 6512
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 3
	ldx.d	$a0, $a0, $a1
	ld.hu	$a1, $a0, 0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.hu	$a2, $a2, 0
	bne	$a1, $a2, .LBB0_68
# %bb.66:                               #   in Loop: Header=BB0_24 Depth=1
	ld.hu	$a0, $a0, 2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.hu	$a1, $a1, 2
	bne	$a0, $a1, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_24 Depth=1
	st.h	$fp, $sp, 290
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.h	$zero, $a0, 0
	.p2align	4, , 16
.LBB0_68:                               #   in Loop: Header=BB0_24 Depth=1
	fld.d	$fs1, $sp, 344
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.hu	$a0, $a0, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
.LBB0_69:                               #   in Loop: Header=BB0_24 Depth=1
	ld.hu	$a0, $sp, 290
	bnez	$a0, .LBB0_73
# %bb.70:                               #   in Loop: Header=BB0_24 Depth=1
	ld.w	$s4, $sp, 316
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bge	$s4, $a0, .LBB0_22
# %bb.71:                               #   in Loop: Header=BB0_24 Depth=1
	ld.d	$a0, $t6, 0
	ldptr.w	$a0, $a0, 4172
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.h	$s3, $a1, 0
	bne	$a0, $fp, .LBB0_23
# %bb.72:                               #   in Loop: Header=BB0_24 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(adjust_mb16x16_cost)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	b	.LBB0_23
.LBB0_73:                               #   in Loop: Header=BB0_24 Depth=1
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	b	.LBB0_23
.LBB0_74:
	ld.hu	$a0, $sp, 290
	bnez	$a0, .LBB0_82
# %bb.75:
	ld.hu	$a0, $sp, 412
	beqz	$a0, .LBB0_82
# %bb.76:
	pcalau12i	$a0, %pc_hi20(giRDOpt_B8OnlyFlag)
	ori	$fp, $zero, 1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.w	$fp, $a0, %pc_lo12(giRDOpt_B8OnlyFlag)
	pcalau12i	$a0, %got_pc_hi20(tr8x8)
	ld.d	$s3, $a0, %got_pc_lo12(tr8x8)
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4095
	st.w	$a0, $s3, 0
	pcalau12i	$a1, %got_pc_hi20(tr4x4)
	ld.d	$s2, $a1, %got_pc_lo12(tr4x4)
	st.w	$a0, $s2, 0
	pcalau12i	$a0, %got_pc_hi20(cs_mb)
	ld.d	$a0, $a0, %got_pc_lo12(cs_mb)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	move	$s7, $t6
	pcaddu18i	$ra, %call36(store_coding_state)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	st.w	$a0, $s6, 468
	ld.d	$a0, $s7, 0
	ldptr.w	$a0, $a0, 5100
	lu12i.w	$s1, 1
	beqz	$a0, .LBB0_78
# %bb.77:
	st.w	$zero, $s3, 0
	pcalau12i	$a0, %got_pc_hi20(cnt_nonz_8x8)
	ld.d	$a0, $a0, %got_pc_lo12(cnt_nonz_8x8)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cbp_blk8x8)
	ld.d	$a0, $a0, %got_pc_lo12(cbp_blk8x8)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cbp8x8)
	ld.d	$a0, $a0, %got_pc_lo12(cbp8x8)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	st.w	$zero, $sp, 312
	pcalau12i	$a0, %got_pc_hi20(cofAC_8x8ts)
	ld.d	$s5, $a0, %got_pc_lo12(cofAC_8x8ts)
	ld.d	$a0, $s5, 0
	ld.d	$s4, $a0, 0
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 16
	addi.d	$a0, $sp, 292
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 316
	addi.d	$a0, $sp, 184
	addi.d	$a4, $sp, 308
	addi.d	$a7, $sp, 312
	st.d	$a1, $sp, 0
	move	$a1, $s3
	move	$a2, $s6
	move	$a3, $s4
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	move	$a5, $fp
	move	$a6, $zero
	pcaddu18i	$ra, %call36(submacroblock_mode_decision)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2052
	ldx.h	$a0, $s3, $a0
	pcalau12i	$a1, %got_pc_hi20(best8x8mode)
	ld.d	$a2, $a1, %got_pc_lo12(best8x8mode)
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	ori	$a1, $s1, 2060
	ldx.b	$a1, $s3, $a1
	st.h	$a0, $a2, 0
	pcalau12i	$a0, %got_pc_hi20(best8x8pdir)
	ld.d	$a2, $a0, %got_pc_lo12(best8x8pdir)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $s1, 2064
	ldx.b	$a0, $s3, $a0
	st.b	$a1, $a2, 32
	pcalau12i	$a1, %got_pc_hi20(best8x8fwref)
	ori	$s0, $zero, 1
	ld.d	$s6, $a1, %got_pc_lo12(best8x8fwref)
	ori	$a1, $s1, 2068
	ldx.b	$a1, $s3, $a1
	st.b	$a0, $s6, 32
	pcalau12i	$a0, %got_pc_hi20(best8x8bwref)
	ld.d	$s7, $a0, %got_pc_lo12(best8x8bwref)
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $s5, 0
	st.b	$a1, $s7, 32
	ld.d	$s4, $a0, 8
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 16
	addi.d	$a0, $sp, 292
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 184
	addi.d	$a4, $sp, 308
	ori	$a6, $zero, 1
	addi.d	$a7, $sp, 312
	addi.d	$a1, $sp, 316
	st.d	$a1, $sp, 0
	move	$a1, $s3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	move	$a3, $s4
	move	$a5, $fp
	pcaddu18i	$ra, %call36(submacroblock_mode_decision)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2054
	ldx.h	$a0, $s3, $a0
	ori	$a1, $s1, 2061
	ldx.b	$a1, $s3, $a1
	ori	$a2, $s1, 2065
	ldx.b	$a2, $s3, $a2
	ori	$a3, $s1, 2069
	ldx.b	$a3, $s3, $a3
	ld.d	$a4, $s5, 0
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	st.b	$a1, $s0, 33
	st.b	$a2, $s6, 33
	move	$s5, $s6
	move	$s4, $s1
	move	$s1, $s7
	st.b	$a3, $s7, 33
	ld.d	$s7, $a4, 16
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	st.h	$a0, $s6, 2
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 292
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 316
	st.d	$a0, $sp, 0
	addi.d	$a0, $sp, 184
	addi.d	$a4, $sp, 308
	ori	$a6, $zero, 2
	addi.d	$a7, $sp, 312
	move	$a1, $s3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$a5, $fp
	pcaddu18i	$ra, %call36(submacroblock_mode_decision)
	jirl	$ra, $ra, 0
	ori	$a0, $s4, 2056
	ldx.h	$a0, $s3, $a0
	ori	$a1, $s4, 2062
	ldx.b	$a1, $s3, $a1
	ori	$a2, $s4, 2066
	ldx.b	$a2, $s3, $a2
	ori	$a3, $s4, 2070
	ldx.b	$a3, $s3, $a3
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	st.b	$a1, $s0, 34
	st.b	$a2, $s5, 34
	st.b	$a3, $s1, 34
	ld.d	$s7, $a4, 24
	st.h	$a0, $s6, 4
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 292
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 184
	addi.d	$a4, $sp, 308
	ori	$a6, $zero, 3
	addi.d	$a7, $sp, 312
	addi.d	$a1, $sp, 316
	st.d	$a1, $sp, 0
	move	$a1, $s3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$a5, $fp
	pcaddu18i	$ra, %call36(submacroblock_mode_decision)
	jirl	$ra, $ra, 0
	ori	$a0, $s4, 2058
	ldx.h	$a0, $s3, $a0
	st.h	$a0, $s6, 6
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	ori	$a0, $s4, 2063
	ldx.b	$a0, $s3, $a0
	ori	$a1, $s4, 2067
	ldx.b	$a1, $s3, $a1
	ori	$a2, $s4, 2071
	ldx.b	$a2, $s3, $a2
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	st.b	$a0, $s0, 35
	st.b	$a1, $s5, 35
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	st.b	$a2, $s1, 35
	move	$s1, $s4
	pcalau12i	$a0, %got_pc_hi20(cbp8_8x8ts)
	ld.d	$a0, $a0, %got_pc_lo12(cbp8_8x8ts)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	st.w	$a3, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cbp_blk8_8x8ts)
	ld.d	$a0, $a0, %got_pc_lo12(cbp_blk8_8x8ts)
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	st.d	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cnt_nonz8_8x8ts)
	ld.d	$a0, $a0, %got_pc_lo12(cnt_nonz8_8x8ts)
	st.w	$a2, $a0, 0
	st.w	$zero, $s6, 472
	ld.d	$a0, $s7, 0
	ldptr.w	$a0, $a0, 5100
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_79
.LBB0_78:                               # %.loopexit505.loopexit
	st.w	$zero, $s2, 0
	pcalau12i	$a0, %got_pc_hi20(cnt_nonz_8x8)
	ld.d	$a0, $a0, %got_pc_lo12(cnt_nonz_8x8)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cbp_blk8x8)
	ld.d	$a0, $a0, %got_pc_lo12(cbp_blk8x8)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cbp8x8)
	ld.d	$a0, $a0, %got_pc_lo12(cbp8x8)
	st.w	$zero, $a0, 0
	st.w	$zero, $sp, 312
	pcalau12i	$a0, %got_pc_hi20(cofAC8x8)
	ld.d	$s4, $a0, %got_pc_lo12(cofAC8x8)
	ld.d	$a0, $s4, 0
	ld.d	$s3, $a0, 0
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 16
	addi.d	$a0, $sp, 292
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 316
	addi.d	$a0, $sp, 184
	addi.d	$a4, $sp, 308
	addi.d	$a7, $sp, 312
	st.d	$a1, $sp, 0
	move	$a1, $s2
	move	$a2, $s6
	move	$a3, $s3
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	move	$a5, $s0
	move	$a6, $zero
	pcaddu18i	$ra, %call36(submacroblock_mode_decision)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2052
	ldx.h	$a0, $s2, $a0
	pcalau12i	$a1, %got_pc_hi20(best8x8mode)
	ld.d	$a2, $a1, %got_pc_lo12(best8x8mode)
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	ori	$a1, $s1, 2060
	ldx.b	$a1, $s2, $a1
	st.h	$a0, $a2, 0
	pcalau12i	$a0, %got_pc_hi20(best8x8pdir)
	ld.d	$s7, $a0, %got_pc_lo12(best8x8pdir)
	ori	$a0, $s1, 2064
	ldx.b	$a0, $s2, $a0
	st.b	$a1, $s7, 32
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(best8x8fwref)
	ld.d	$fp, $a1, %got_pc_lo12(best8x8fwref)
	ori	$a1, $s1, 2068
	ldx.b	$a1, $s2, $a1
	st.b	$a0, $fp, 32
	pcalau12i	$a0, %got_pc_hi20(best8x8bwref)
	ld.d	$s5, $a0, %got_pc_lo12(best8x8bwref)
	ld.d	$a0, $s4, 0
	st.b	$a1, $s5, 32
	ld.d	$s3, $a0, 8
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 16
	addi.d	$a0, $sp, 292
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 184
	addi.d	$a4, $sp, 308
	ori	$a6, $zero, 1
	addi.d	$a7, $sp, 312
	addi.d	$a1, $sp, 316
	st.d	$a1, $sp, 0
	move	$a1, $s2
	move	$a2, $s6
	move	$a3, $s3
	move	$a5, $s0
	pcaddu18i	$ra, %call36(submacroblock_mode_decision)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2054
	ldx.h	$a0, $s2, $a0
	ori	$a1, $s1, 2061
	ldx.b	$a1, $s2, $a1
	ori	$a2, $s1, 2065
	ldx.b	$a2, $s2, $a2
	ori	$a3, $s1, 2069
	ldx.b	$a3, $s2, $a3
	ld.d	$a4, $s4, 0
	st.b	$a1, $s7, 33
	st.b	$a2, $fp, 33
	st.b	$a3, $s5, 33
	ld.d	$s3, $a4, 16
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	st.h	$a0, $s7, 2
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 16
	addi.d	$a0, $sp, 292
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 184
	addi.d	$a4, $sp, 308
	ori	$a6, $zero, 2
	addi.d	$a7, $sp, 312
	addi.d	$a1, $sp, 316
	st.d	$a1, $sp, 0
	move	$a1, $s2
	move	$a2, $s6
	move	$a3, $s3
	move	$a5, $s0
	pcaddu18i	$ra, %call36(submacroblock_mode_decision)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2056
	ldx.h	$a0, $s2, $a0
	ori	$a1, $s1, 2062
	ldx.b	$a1, $s2, $a1
	ori	$a2, $s1, 2066
	ldx.b	$a2, $s2, $a2
	ori	$a3, $s1, 2070
	ldx.b	$a3, $s2, $a3
	ld.d	$a4, $s4, 0
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	st.b	$a1, $s4, 34
	st.b	$a2, $fp, 34
	st.b	$a3, $s5, 34
	ld.d	$s3, $a4, 24
	st.h	$a0, $s7, 4
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 16
	addi.d	$a0, $sp, 292
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 184
	addi.d	$a4, $sp, 308
	ori	$a6, $zero, 3
	addi.d	$a7, $sp, 312
	addi.d	$a1, $sp, 316
	st.d	$a1, $sp, 0
	move	$a1, $s2
	move	$a2, $s6
	move	$a3, $s3
	move	$a5, $s0
	pcaddu18i	$ra, %call36(submacroblock_mode_decision)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2058
	ldx.h	$a0, $s2, $a0
	ori	$a1, $s1, 2063
	ldx.b	$a1, $s2, $a1
	ori	$a2, $s1, 2067
	ldx.b	$a2, $s2, $a2
	ori	$a3, $s1, 2071
	ldx.b	$a3, $s2, $a3
	st.h	$a0, $s7, 6
	st.b	$a1, $s4, 35
	st.b	$a2, $fp, 35
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	st.b	$a3, $s5, 35
.LBB0_79:                               # %.loopexit505
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(reset_coding_state)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.w	$a0, $a0, 5116
	move	$t6, $s7
	beqz	$a0, .LBB0_81
# %bb.80:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.w	$a0, $a2, 192
	ld.w	$a1, $a2, 196
	lu12i.w	$a3, 3
	ori	$a3, $a3, 336
	add.d	$a2, $a2, $a3
	pcaddu18i	$ra, %call36(rc_store_diff)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
.LBB0_81:
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.w	$zero, $a0, %pc_lo12(giRDOpt_B8OnlyFlag)
	b	.LBB0_83
.LBB0_82:
	pcalau12i	$a0, %got_pc_hi20(tr4x4)
	ld.d	$a0, $a0, %got_pc_lo12(tr4x4)
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	st.w	$a1, $a0, 0
.LBB0_83:
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.hu	$a0, $sp, 290
	bnez	$a0, .LBB0_15
.LBB0_84:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 2
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	bne	$a1, $a2, .LBB0_86
# %bb.85:
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	fld.d	$fs1, $a1, %pc_lo12(.LCPI0_1)
	b	.LBB0_87
.LBB0_86:
	pcalau12i	$a1, %got_pc_hi20(best_mode)
	ld.d	$a1, $a1, %got_pc_lo12(best_mode)
	st.h	$a3, $a1, 0
.LBB0_87:
	ld.d	$a1, $t6, 0
	fst.d	$fs1, $sp, 344
	ori	$s6, $zero, 9
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	bnez	$t7, .LBB0_89
# %bb.88:
	ldptr.w	$a2, $a1, 5748
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 5
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 9
	maskeqz	$a2, $a4, $a2
	or	$s6, $a2, $a3
.LBB0_89:
	ldptr.w	$a1, $a1, 2120
	beqz	$a1, .LBB0_91
# %bb.90:
	lu12i.w	$a1, 3
	ori	$a1, $a1, 2122
	stx.h	$zero, $a0, $a1
.LBB0_91:
	ldptr.w	$a0, $a0, 15536
	move	$a1, $zero
	beqz	$a0, .LBB0_95
# %bb.92:
	ori	$a0, $zero, 5
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	beq	$s6, $a0, .LBB0_98
# %bb.93:
	addi.d	$a0, $sp, 180
	addi.d	$a1, $sp, 176
	addi.d	$a2, $sp, 172
	pcaddu18i	$ra, %call36(IntraChromaPrediction)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $t6, 0
	ldptr.w	$a0, $a0, 4176
	beqz	$a0, .LBB0_96
# %bb.94:
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 184
	pcaddu18i	$ra, %call36(IntraChromaRDDecision)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	ld.h	$a1, $s3, 416
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	b	.LBB0_97
.LBB0_95:
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	b	.LBB0_98
.LBB0_96:
	move	$a1, $zero
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
.LBB0_97:                               # %.lr.ph.preheader
	ld.d	$t7, $sp, 112                   # 8-byte Folded Reload
.LBB0_98:                               # %.lr.ph.preheader
	st.w	$a1, $s3, 416
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	sltu	$t8, $zero, $fp
	pcalau12i	$a2, %got_pc_hi20(mb_mode_table)
	ld.d	$s5, $a2, %got_pc_lo12(mb_mode_table)
	ori	$s0, $zero, 1
	lu12i.w	$a2, 4112
	ori	$a2, $a2, 257
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(best8x8pdir)
	ld.d	$s4, $a2, %got_pc_lo12(best8x8pdir)
	ori	$s1, $zero, 2
	lu12i.w	$a2, 3
	ori	$a2, $a2, 2122
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(best_mode)
	ld.d	$a2, $a2, %got_pc_lo12(best_mode)
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	ori	$ra, $zero, 2960
	pcalau12i	$a2, %pc_hi20(active_pps)
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(active_sps)
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(wbp_weight)
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	move	$s7, $t8
	b	.LBB0_101
	.p2align	4, , 16
.LBB0_99:                               # %.loopexit503.loopexit
                                        #   in Loop: Header=BB0_101 Depth=1
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a2, $s3, 416
.LBB0_100:                              # %.loopexit503
                                        #   in Loop: Header=BB0_101 Depth=1
	addi.w	$a1, $a2, 1
	st.w	$a1, $s3, 416
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	bge	$a2, $a3, .LBB0_167
.LBB0_101:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_118 Depth 2
                                        #       Child Loop BB0_137 Depth 3
                                        #       Child Loop BB0_142 Depth 3
                                        #       Child Loop BB0_147 Depth 3
                                        #       Child Loop BB0_152 Depth 3
	ldptr.w	$a2, $a0, 15536
	beqz	$a2, .LBB0_115
# %bb.102:                              #   in Loop: Header=BB0_101 Depth=1
	ld.d	$a2, $t6, 0
	beqz	$t7, .LBB0_104
# %bb.103:                              #   in Loop: Header=BB0_101 Depth=1
	ldptr.w	$a3, $a2, 4048
	bnez	$a3, .LBB0_107
.LBB0_104:                              #   in Loop: Header=BB0_101 Depth=1
	ldptr.w	$a2, $a2, 4072
	bne	$a2, $s0, .LBB0_107
# %bb.105:                              #   in Loop: Header=BB0_101 Depth=1
	beqz	$a1, .LBB0_115
# %bb.106:                              #   in Loop: Header=BB0_101 Depth=1
	move	$a2, $a1
	b	.LBB0_100
	.p2align	4, , 16
.LBB0_107:                              #   in Loop: Header=BB0_101 Depth=1
	ld.w	$a3, $sp, 180
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_109
# %bb.108:                              #   in Loop: Header=BB0_101 Depth=1
	beqz	$a3, .LBB0_100
.LBB0_109:                              #   in Loop: Header=BB0_101 Depth=1
	ld.w	$a4, $sp, 176
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB0_111
# %bb.110:                              #   in Loop: Header=BB0_101 Depth=1
	beqz	$a4, .LBB0_100
.LBB0_111:                              #   in Loop: Header=BB0_101 Depth=1
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_115
# %bb.112:                              #   in Loop: Header=BB0_101 Depth=1
	ori	$a2, $zero, 3
	beqz	$a4, .LBB0_100
# %bb.113:                              #   in Loop: Header=BB0_101 Depth=1
	beqz	$a3, .LBB0_100
# %bb.114:                              #   in Loop: Header=BB0_101 Depth=1
	ld.w	$a1, $sp, 172
	beqz	$a1, .LBB0_100
	.p2align	4, , 16
.LBB0_115:                              # %.thread489.preheader
                                        #   in Loop: Header=BB0_101 Depth=1
	move	$fp, $zero
	move	$s3, $zero
	b	.LBB0_118
.LBB0_116:                              #   in Loop: Header=BB0_118 Depth=2
	add.d	$a1, $a1, $a3
	addi.d	$a2, $a2, 1
	st.h	$a2, $a1, 0
	.p2align	4, , 16
.LBB0_117:                              # %.critedge483.thread
                                        #   in Loop: Header=BB0_118 Depth=2
	addi.w	$fp, $fp, 1
	bge	$fp, $s6, .LBB0_99
.LBB0_118:                              # %.thread489
                                        #   Parent Loop BB0_101 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_137 Depth 3
                                        #       Child Loop BB0_142 Depth 3
                                        #       Child Loop BB0_147 Depth 3
                                        #       Child Loop BB0_152 Depth 3
	slli.d	$a1, $fp, 2
	ldptr.w	$a2, $a0, 15536
	ldx.w	$s2, $s5, $a1
	beqz	$a2, .LBB0_121
# %bb.119:                              #   in Loop: Header=BB0_118 Depth=2
	sltu	$a1, $zero, $s2
	or	$a1, $t8, $a1
	beqz	$a1, .LBB0_117
# %bb.120:                              #   in Loop: Header=BB0_118 Depth=2
	addi.d	$a1, $s8, -2
	sltui	$a1, $a1, 1
	addi.d	$a2, $s2, -1
	sltu	$a2, $zero, $a2
	or	$a1, $a1, $a2
	beqz	$a1, .LBB0_117
.LBB0_121:                              #   in Loop: Header=BB0_118 Depth=2
	ld.d	$a1, $t6, 0
	bne	$s8, $s0, .LBB0_127
# %bb.122:                              #   in Loop: Header=BB0_118 Depth=2
	bne	$s2, $s0, .LBB0_127
# %bb.123:                              #   in Loop: Header=BB0_118 Depth=2
	ldptr.w	$a2, $a1, 2120
	andi	$a3, $s3, 255
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a3, $a3, $a4
	st.w	$a3, $s4, 4
	beqz	$a2, .LBB0_126
# %bb.124:                              #   in Loop: Header=BB0_118 Depth=2
	bne	$s3, $s1, .LBB0_126
# %bb.125:                              #   in Loop: Header=BB0_118 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ldx.h	$a2, $a0, $a2
	slti	$a2, $a2, 2
	sub.w	$s3, $s1, $a2
.LBB0_126:                              #   in Loop: Header=BB0_118 Depth=2
	slti	$a2, $s3, 2
	sub.d	$fp, $fp, $a2
	addi.w	$s3, $s3, 1
.LBB0_127:                              #   in Loop: Header=BB0_118 Depth=2
	bnez	$t7, .LBB0_132
# %bb.128:                              #   in Loop: Header=BB0_118 Depth=2
	ldx.w	$a2, $a1, $ra
	beqz	$a2, .LBB0_132
# %bb.129:                              #   in Loop: Header=BB0_118 Depth=2
	ori	$a2, $zero, 10
	blt	$s2, $a2, .LBB0_132
# %bb.130:                              #   in Loop: Header=BB0_118 Depth=2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.h	$a2, $a2, 0
	ori	$a3, $zero, 3
	blt	$a3, $a2, .LBB0_132
# %bb.131:                              #   in Loop: Header=BB0_118 Depth=2
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 364
	beqz	$a2, .LBB0_117
.LBB0_132:                              #   in Loop: Header=BB0_118 Depth=2
	bne	$s8, $s0, .LBB0_155
# %bb.133:                              #   in Loop: Header=BB0_118 Depth=2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(active_pps)
	ld.w	$a2, $a2, 196
	bne	$a2, $s0, .LBB0_155
# %bb.134:                              #   in Loop: Header=BB0_118 Depth=2
	ori	$a2, $zero, 7
	blt	$a2, $s2, .LBB0_155
# %bb.135:                              # %.preheader501
                                        #   in Loop: Header=BB0_118 Depth=2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(active_sps)
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(wbp_weight)
	slli.d	$a4, $s2, 2
	pcalau12i	$a5, %got_pc_hi20(best8x8fwref)
	ld.d	$a5, $a5, %got_pc_lo12(best8x8fwref)
	alsl.d	$a5, $s2, $a5, 2
	pcalau12i	$a6, %got_pc_hi20(best8x8bwref)
	ld.d	$a6, $a6, %got_pc_lo12(best8x8bwref)
	ldx.bu	$a7, $s4, $a4
	alsl.d	$a4, $s2, $a6, 2
	bne	$a7, $s1, .LBB0_140
# %bb.136:                              # %.preheader
                                        #   in Loop: Header=BB0_118 Depth=2
	ld.b	$a6, $a5, 0
	ld.d	$a7, $a3, 0
	ld.d	$t0, $a3, 8
	slli.d	$a6, $a6, 3
	ld.b	$t1, $a4, 0
	ldx.d	$a7, $a7, $a6
	ldx.d	$t0, $t0, $a6
	ld.w	$a6, $a2, 32
	slli.d	$t1, $t1, 3
	ldx.d	$a7, $a7, $t1
	ldx.d	$t0, $t0, $t1
	move	$t1, $zero
	.p2align	4, , 16
.LBB0_137:                              #   Parent Loop BB0_101 Depth=1
                                        #     Parent Loop BB0_118 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t2, $a7, 0
	ld.w	$t3, $t0, 0
	add.d	$t2, $t2, $t3
	addi.w	$t3, $t2, -128
	addi.w	$t4, $zero, -256
	bltu	$t3, $t4, .LBB0_163
# %bb.138:                              #   in Loop: Header=BB0_137 Depth=3
	move	$t2, $t1
	beqz	$a6, .LBB0_140
# %bb.139:                              #   in Loop: Header=BB0_137 Depth=3
	addi.d	$t1, $t2, 1
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	bgeu	$s0, $t2, .LBB0_137
.LBB0_140:                              # %.critedge
                                        #   in Loop: Header=BB0_118 Depth=2
	alsl.d	$a6, $s2, $s4, 2
	ld.bu	$a7, $a6, 1
	bne	$a7, $s1, .LBB0_145
# %bb.141:                              # %.preheader.1
                                        #   in Loop: Header=BB0_118 Depth=2
	ld.b	$a7, $a5, 1
	ld.d	$t0, $a3, 0
	ld.d	$t1, $a3, 8
	slli.d	$a7, $a7, 3
	ld.b	$t2, $a4, 1
	ldx.d	$t0, $t0, $a7
	ldx.d	$t1, $t1, $a7
	ld.w	$a7, $a2, 32
	slli.d	$t2, $t2, 3
	ldx.d	$t0, $t0, $t2
	ldx.d	$t1, $t1, $t2
	move	$t2, $zero
	.p2align	4, , 16
.LBB0_142:                              #   Parent Loop BB0_101 Depth=1
                                        #     Parent Loop BB0_118 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t3, $t0, 0
	ld.w	$t4, $t1, 0
	add.d	$t3, $t3, $t4
	addi.w	$t4, $t3, -128
	addi.w	$t5, $zero, -256
	bltu	$t4, $t5, .LBB0_163
# %bb.143:                              #   in Loop: Header=BB0_142 Depth=3
	beqz	$a7, .LBB0_145
# %bb.144:                              #   in Loop: Header=BB0_142 Depth=3
	move	$t3, $t2
	addi.d	$t2, $t2, 1
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, 4
	bltu	$t3, $s1, .LBB0_142
.LBB0_145:                              # %.critedge.1
                                        #   in Loop: Header=BB0_118 Depth=2
	ld.bu	$a7, $a6, 2
	bne	$a7, $s1, .LBB0_150
# %bb.146:                              # %.preheader.2
                                        #   in Loop: Header=BB0_118 Depth=2
	ld.b	$a7, $a5, 2
	ld.d	$t0, $a3, 0
	ld.d	$t1, $a3, 8
	slli.d	$a7, $a7, 3
	ld.b	$t2, $a4, 2
	ldx.d	$t0, $t0, $a7
	ldx.d	$t1, $t1, $a7
	ld.w	$a7, $a2, 32
	slli.d	$t2, $t2, 3
	ldx.d	$t0, $t0, $t2
	ldx.d	$t1, $t1, $t2
	move	$t2, $zero
	.p2align	4, , 16
.LBB0_147:                              #   Parent Loop BB0_101 Depth=1
                                        #     Parent Loop BB0_118 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t3, $t0, 0
	ld.w	$t4, $t1, 0
	add.d	$t3, $t3, $t4
	addi.w	$t4, $t3, -128
	addi.w	$t5, $zero, -256
	bltu	$t4, $t5, .LBB0_163
# %bb.148:                              #   in Loop: Header=BB0_147 Depth=3
	beqz	$a7, .LBB0_150
# %bb.149:                              #   in Loop: Header=BB0_147 Depth=3
	move	$t3, $t2
	addi.d	$t2, $t2, 1
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, 4
	bltu	$t3, $s1, .LBB0_147
.LBB0_150:                              # %.critedge.2
                                        #   in Loop: Header=BB0_118 Depth=2
	ld.bu	$a6, $a6, 3
	bne	$a6, $s1, .LBB0_155
# %bb.151:                              # %.preheader.3
                                        #   in Loop: Header=BB0_118 Depth=2
	ld.b	$a5, $a5, 3
	ld.d	$a6, $a3, 0
	ld.d	$a3, $a3, 8
	slli.d	$a5, $a5, 3
	ld.b	$a4, $a4, 3
	ldx.d	$a6, $a6, $a5
	ldx.d	$a5, $a3, $a5
	ld.w	$a2, $a2, 32
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a6, $a4
	ldx.d	$a4, $a5, $a4
	move	$a5, $zero
	.p2align	4, , 16
.LBB0_152:                              #   Parent Loop BB0_101 Depth=1
                                        #     Parent Loop BB0_118 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a6, $a3, 0
	ld.w	$a7, $a4, 0
	add.d	$a6, $a6, $a7
	addi.w	$a7, $a6, -128
	addi.w	$t0, $zero, -256
	bltu	$a7, $t0, .LBB0_163
# %bb.153:                              #   in Loop: Header=BB0_152 Depth=3
	beqz	$a2, .LBB0_155
# %bb.154:                              #   in Loop: Header=BB0_152 Depth=3
	move	$a6, $a5
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	bltu	$a6, $s1, .LBB0_152
	.p2align	4, , 16
.LBB0_155:                              # %.critedge483
                                        #   in Loop: Header=BB0_118 Depth=2
	slli.d	$a2, $s2, 1
	addi.d	$a3, $sp, 396
	ldx.hu	$a2, $a3, $a2
	beqz	$a2, .LBB0_157
# %bb.156:                              #   in Loop: Header=BB0_118 Depth=2
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 184
	addi.d	$a3, $sp, 344
	addi.d	$a4, $sp, 280
	addi.d	$a7, $sp, 290
	move	$a0, $s2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	move	$a5, $zero
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(compute_mode_RD_cost)
	jirl	$ra, $ra, 0
	ori	$ra, $zero, 2960
	move	$t8, $s7
	ld.d	$t7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $t6, 0
.LBB0_157:                              #   in Loop: Header=BB0_118 Depth=2
	bne	$s8, $s0, .LBB0_117
# %bb.158:                              #   in Loop: Header=BB0_118 Depth=2
	ori	$a2, $zero, 2120
	ldx.w	$a1, $a1, $a2
	beqz	$a1, .LBB0_117
# %bb.159:                              #   in Loop: Header=BB0_118 Depth=2
	bne	$s3, $s1, .LBB0_117
# %bb.160:                              #   in Loop: Header=BB0_118 Depth=2
	ori	$s3, $zero, 2
	bne	$s2, $s0, .LBB0_117
# %bb.161:                              #   in Loop: Header=BB0_118 Depth=2
	alsl.d	$a1, $s2, $a0, 1
	lu12i.w	$a2, 3
	ori	$a3, $a2, 2120
	ldx.h	$a2, $a1, $a3
	blt	$s0, $a2, .LBB0_117
# %bb.162:                              #   in Loop: Header=BB0_118 Depth=2
	ld.bu	$a4, $s4, 4
	beq	$a4, $s1, .LBB0_116
	b	.LBB0_117
.LBB0_163:                              # %.loopexit552
                                        #   in Loop: Header=BB0_118 Depth=2
	ldptr.w	$a1, $a1, 2120
	beqz	$a1, .LBB0_117
# %bb.164:                              # %.loopexit552
                                        #   in Loop: Header=BB0_118 Depth=2
	bne	$s3, $s1, .LBB0_117
# %bb.165:                              #   in Loop: Header=BB0_118 Depth=2
	ori	$s3, $zero, 2
	bne	$s2, $s0, .LBB0_117
# %bb.166:                              #   in Loop: Header=BB0_118 Depth=2
	alsl.d	$a1, $s2, $a0, 1
	lu12i.w	$a2, 3
	ori	$a3, $a2, 2120
	ldx.h	$a2, $a1, $a3
	bge	$s0, $a2, .LBB0_116
	b	.LBB0_117
.LBB0_167:                              # %._crit_edge
	ld.w	$a0, $a0, 20
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_171
# %bb.168:
	ld.d	$a0, $t6, 0
	ldptr.w	$a1, $a0, 5748
	beqz	$a1, .LBB0_171
# %bb.169:
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 99
	blt	$a1, $a0, .LBB0_171
# %bb.170:
	fld.d	$fa0, $sp, 280
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(fast_mode_intra_decision)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	ld.hu	$a0, $sp, 288
	beqz	$a0, .LBB0_207
.LBB0_171:                              # %.loopexit504
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $s3, 72
	ori	$a1, $zero, 13
	lu12i.w	$fp, 2
	bltu	$a1, $a0, .LBB0_173
.LBB0_172:
	ori	$a1, $zero, 1
	sll.d	$a1, $a1, $a0
	ori	$a2, $fp, 1536
	and	$a1, $a1, $a2
	ori	$s1, $zero, 1
	bnez	$a1, .LBB0_174
.LBB0_173:
	addi.d	$a0, $a0, -14
	sltui	$s1, $a0, 1
.LBB0_174:
	pcalau12i	$a0, %got_pc_hi20(cbp)
	ld.d	$a0, $a0, %got_pc_lo12(cbp)
	ld.w	$a1, $a0, 0
	sltu	$a2, $zero, $a1
	pcalau12i	$a0, %got_pc_hi20(best_mode)
	ld.d	$s0, $a0, %got_pc_lo12(best_mode)
	ld.h	$a0, $s0, 0
	bstrpick.d	$a0, $a0, 15, 0
	addi.d	$a3, $a0, -10
	sltui	$a3, $a3, 1
	or	$a2, $a2, $a3
	beqz	$a2, .LBB0_176
# %bb.175:
	ori	$a3, $zero, 14
	ori	$a2, $zero, 1
	bne	$a0, $a3, .LBB0_180
.LBB0_176:
	bnez	$a1, .LBB0_178
# %bb.177:
	ld.d	$a1, $t6, 0
	ldptr.w	$a1, $a1, 5116
	beqz	$a1, .LBB0_179
.LBB0_178:
	ori	$a1, $zero, 14
	bne	$a0, $a1, .LBB0_181
.LBB0_179:
	ld.w	$a0, $s3, 496
	st.w	$zero, $s3, 4
	st.w	$a0, $s3, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(set_chroma_qp)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 8
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$a2, $zero
	st.w	$a0, $a1, 36
.LBB0_180:                              # %.sink.split
	st.w	$a2, $s3, 504
.LBB0_181:
	pcaddu18i	$ra, %call36(set_stored_macroblock_parameters)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 0
	ldptr.w	$a0, $a0, 5116
	beqz	$a0, .LBB0_183
# %bb.182:
	ld.h	$a1, $s0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(update_rc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
.LBB0_183:
	fld.d	$fa0, $sp, 344
	pcalau12i	$s2, %pc_hi20(rdopt)
	ld.d	$a0, $s2, %pc_lo12(rdopt)
	fst.d	$fa0, $a0, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 15268
	beqz	$a1, .LBB0_186
# %bb.184:
	ld.bu	$a0, $a0, 12
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_186
# %bb.185:
	ld.w	$a0, $s3, 72
	beqz	$a0, .LBB0_200
.LBB0_186:
	ld.d	$a0, $a2, 0
	ldptr.w	$a1, $a0, 4732
	beqz	$a1, .LBB0_188
# %bb.187:
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(update_refresh_map)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 0
.LBB0_188:
	ldptr.w	$a0, $a0, 5244
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_191
# %bb.189:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_193
# %bb.190:
	ld.h	$a1, $sp, 426
	ld.h	$a0, $s0, 0
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %got_pc_hi20(listXsize)
	ld.d	$a2, $a2, %got_pc_lo12(listXsize)
	ldx.w	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(UMHEX_skip_intrabk_SAD)
	jirl	$ra, $ra, 0
	b	.LBB0_192
.LBB0_191:
	ld.h	$a1, $sp, 426
	ld.h	$a0, $s0, 0
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %got_pc_hi20(listXsize)
	ld.d	$a2, $a2, %got_pc_lo12(listXsize)
	ldx.w	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(smpUMHEX_skip_intrabk_SAD)
	jirl	$ra, $ra, 0
.LBB0_192:
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
.LBB0_193:
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 272
	beqz	$a0, .LBB0_199
# %bb.194:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a0, 20
	ori	$a1, $zero, 1
	bltu	$a1, $a2, .LBB0_199
# %bb.195:
	ld.w	$a2, $s3, 72
	ori	$a3, $zero, 13
	bltu	$a3, $a2, .LBB0_197
# %bb.196:
	ori	$a3, $zero, 1
	sll.d	$a3, $a3, $a2
	ori	$a4, $fp, 1536
	and	$a3, $a3, $a4
	bnez	$a3, .LBB0_198
.LBB0_197:
	addi.d	$a1, $a2, -14
	sltui	$a1, $a1, 1
.LBB0_198:
	ld.w	$a2, $a0, 12
	ldptr.d	$a0, $a0, 14240
	slli.d	$a2, $a2, 2
	stx.w	$a1, $a0, $a2
.LBB0_199:
	fld.d	$fs1, $sp, 456                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 464                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.LBB0_200:
	ori	$a0, $zero, 1
	bne	$s8, $a0, .LBB0_204
# %bb.201:
	ld.w	$a0, $s3, 364
	bnez	$a0, .LBB0_186
# %bb.202:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 72
	bnez	$a0, .LBB0_186
# %bb.203:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 364
	bnez	$a0, .LBB0_186
	b	.LBB0_205
.LBB0_204:                              # %.thread497
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 72
	bnez	$a0, .LBB0_186
.LBB0_205:                              # %.thread499
	pcaddu18i	$ra, %call36(field_flag_inference)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.h	$a1, $sp, 430
	beq	$a0, $a1, .LBB0_186
# %bb.206:
	ld.d	$a0, $s2, %pc_lo12(rdopt)
	lu12i.w	$a1, 236040
	ori	$a1, $a1, 3306
	lu32i.d	$a1, -442791
	lu52i.d	$a1, $a1, 1122
	st.d	$a1, $a0, 0
	b	.LBB0_186
.LBB0_207:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 15536
	beqz	$a0, .LBB0_210
# %bb.208:
	addi.d	$a0, $sp, 180
	addi.d	$a1, $sp, 176
	addi.d	$a2, $sp, 172
	pcaddu18i	$ra, %call36(IntraChromaPrediction)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $t6, 0
	ldptr.w	$a0, $a0, 4176
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_211
# %bb.209:
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 184
	pcaddu18i	$ra, %call36(IntraChromaRDDecision)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	ld.h	$a1, $s0, 416
	move	$fp, $a1
	b	.LBB0_212
.LBB0_210:
	move	$a7, $s7
	move	$a1, $zero
	move	$fp, $zero
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	b	.LBB0_213
.LBB0_211:
	move	$a1, $zero
	ori	$fp, $zero, 3
.LBB0_212:                              # %.lr.ph530.preheader
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	move	$a7, $s7
.LBB0_213:                              # %.lr.ph530.preheader
	addi.d	$a0, $s8, -2
	ld.w	$s7, $s5, 20
	sltui	$a2, $a0, 1
	st.w	$a1, $s0, 416
	ld.d	$a0, $t6, 0
	sltu	$a3, $zero, $s7
	or	$a3, $a7, $a3
	addi.d	$a4, $s7, -1
	sltu	$a4, $zero, $a4
	ld.w	$t0, $s5, 24
	or	$a4, $a2, $a4
	and	$s0, $a3, $a4
	addi.d	$a5, $sp, 396
	alsl.d	$a3, $s7, $a5, 1
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	sltu	$a3, $zero, $t0
	or	$a3, $a7, $a3
	addi.d	$a4, $t0, -1
	sltu	$a4, $zero, $a4
	ld.w	$t1, $s5, 28
	or	$a4, $a2, $a4
	and	$a3, $a3, $a4
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	move	$s4, $t0
	alsl.d	$a3, $t0, $a5, 1
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	sltu	$a3, $zero, $t1
	or	$a3, $a7, $a3
	addi.d	$a4, $t1, -1
	sltu	$a4, $zero, $a4
	ld.w	$s2, $s5, 32
	or	$a4, $a2, $a4
	and	$a3, $a3, $a4
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	move	$s5, $t1
	alsl.d	$a3, $t1, $a5, 1
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	sltu	$a3, $zero, $s2
	or	$a3, $a7, $a3
	addi.d	$a4, $s2, -1
	sltu	$a4, $zero, $a4
	or	$a2, $a2, $a4
	and	$a2, $a3, $a2
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	alsl.d	$a2, $s2, $a5, 1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	ori	$s6, $zero, 2960
	ori	$s1, $zero, 10
	ori	$s3, $zero, 3
	b	.LBB0_216
	.p2align	4, , 16
.LBB0_214:                              # %.loopexit.loopexit
                                        #   in Loop: Header=BB0_216 Depth=1
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a2, $a3, 416
.LBB0_215:                              # %.loopexit
                                        #   in Loop: Header=BB0_216 Depth=1
	addi.w	$a1, $a2, 1
	st.w	$a1, $a3, 416
	bge	$a2, $fp, .LBB0_171
.LBB0_216:                              # %.lr.ph530
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ldptr.w	$a3, $a2, 15536
	beqz	$a3, .LBB0_231
# %bb.217:                              #   in Loop: Header=BB0_216 Depth=1
	beqz	$a6, .LBB0_219
# %bb.218:                              #   in Loop: Header=BB0_216 Depth=1
	ldptr.w	$a2, $a0, 4048
	bnez	$a2, .LBB0_222
.LBB0_219:                              #   in Loop: Header=BB0_216 Depth=1
	ldptr.w	$a2, $a0, 4072
	ori	$a4, $zero, 1
	bne	$a2, $a4, .LBB0_222
# %bb.220:                              #   in Loop: Header=BB0_216 Depth=1
	beqz	$a1, .LBB0_231
# %bb.221:                              #   in Loop: Header=BB0_216 Depth=1
	move	$a2, $a1
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	b	.LBB0_215
	.p2align	4, , 16
.LBB0_222:                              #   in Loop: Header=BB0_216 Depth=1
	ld.w	$a4, $sp, 180
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_224
# %bb.223:                              #   in Loop: Header=BB0_216 Depth=1
	beqz	$a4, .LBB0_226
.LBB0_224:                              #   in Loop: Header=BB0_216 Depth=1
	ld.w	$a5, $sp, 176
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB0_227
# %bb.225:                              #   in Loop: Header=BB0_216 Depth=1
	bnez	$a5, .LBB0_227
.LBB0_226:                              #   in Loop: Header=BB0_216 Depth=1
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	b	.LBB0_215
.LBB0_227:                              #   in Loop: Header=BB0_216 Depth=1
	bne	$a1, $s3, .LBB0_231
# %bb.228:                              #   in Loop: Header=BB0_216 Depth=1
	ori	$a2, $zero, 3
	beqz	$a5, .LBB0_226
# %bb.229:                              #   in Loop: Header=BB0_216 Depth=1
	beqz	$a4, .LBB0_226
# %bb.230:                              #   in Loop: Header=BB0_216 Depth=1
	ld.w	$a1, $sp, 172
	beqz	$a1, .LBB0_226
	.p2align	4, , 16
.LBB0_231:                              # %.thread496
                                        #   in Loop: Header=BB0_216 Depth=1
	ldx.w	$a2, $a0, $s6
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.h	$a1, $a1, 0
	sltui	$a3, $a3, 1
	bnez	$a6, .LBB0_236
# %bb.232:                              # %.thread496
                                        #   in Loop: Header=BB0_216 Depth=1
	beqz	$a2, .LBB0_236
# %bb.233:                              # %.thread496
                                        #   in Loop: Header=BB0_216 Depth=1
	blt	$s7, $s1, .LBB0_236
# %bb.234:                              # %.thread496
                                        #   in Loop: Header=BB0_216 Depth=1
	blt	$s3, $a1, .LBB0_236
# %bb.235:                              #   in Loop: Header=BB0_216 Depth=1
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a4, $a4, 364
	beqz	$a4, .LBB0_239
.LBB0_236:                              #   in Loop: Header=BB0_216 Depth=1
	or	$a3, $a3, $s0
	andi	$a3, $a3, 1
	beqz	$a3, .LBB0_239
# %bb.237:                              #   in Loop: Header=BB0_216 Depth=1
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.hu	$a3, $a3, 0
	beqz	$a3, .LBB0_239
# %bb.238:                              #   in Loop: Header=BB0_216 Depth=1
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 184
	addi.d	$a3, $sp, 344
	addi.d	$a4, $sp, 280
	addi.d	$a7, $sp, 290
	move	$a0, $s7
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	move	$a5, $zero
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(compute_mode_RD_cost)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $t6, 0
	ldx.w	$a2, $a0, $s6
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.hu	$a1, $a1, 0
.LBB0_239:                              #   in Loop: Header=BB0_216 Depth=1
	bnez	$a6, .LBB0_244
# %bb.240:                              #   in Loop: Header=BB0_216 Depth=1
	beqz	$a2, .LBB0_244
# %bb.241:                              #   in Loop: Header=BB0_216 Depth=1
	blt	$s4, $s1, .LBB0_244
# %bb.242:                              #   in Loop: Header=BB0_216 Depth=1
	ext.w.h	$a3, $a1
	blt	$s3, $a3, .LBB0_244
# %bb.243:                              #   in Loop: Header=BB0_216 Depth=1
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 364
	beqz	$a3, .LBB0_247
.LBB0_244:                              #   in Loop: Header=BB0_216 Depth=1
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ldptr.w	$a3, $a3, 15536
	sltui	$a3, $a3, 1
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	or	$a3, $a3, $a4
	andi	$a3, $a3, 1
	beqz	$a3, .LBB0_247
# %bb.245:                              #   in Loop: Header=BB0_216 Depth=1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.hu	$a3, $a3, 0
	beqz	$a3, .LBB0_247
# %bb.246:                              #   in Loop: Header=BB0_216 Depth=1
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 184
	addi.d	$a3, $sp, 344
	addi.d	$a4, $sp, 280
	addi.d	$a7, $sp, 290
	move	$a0, $s4
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	move	$a5, $zero
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(compute_mode_RD_cost)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $t6, 0
	ldx.w	$a2, $a0, $s6
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.hu	$a1, $a1, 0
.LBB0_247:                              #   in Loop: Header=BB0_216 Depth=1
	bnez	$a6, .LBB0_252
# %bb.248:                              #   in Loop: Header=BB0_216 Depth=1
	beqz	$a2, .LBB0_252
# %bb.249:                              #   in Loop: Header=BB0_216 Depth=1
	blt	$s5, $s1, .LBB0_252
# %bb.250:                              #   in Loop: Header=BB0_216 Depth=1
	ext.w.h	$a3, $a1
	blt	$s3, $a3, .LBB0_252
# %bb.251:                              #   in Loop: Header=BB0_216 Depth=1
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 364
	beqz	$a3, .LBB0_255
.LBB0_252:                              #   in Loop: Header=BB0_216 Depth=1
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ldptr.w	$a3, $a3, 15536
	sltui	$a3, $a3, 1
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	or	$a3, $a3, $a4
	andi	$a3, $a3, 1
	beqz	$a3, .LBB0_255
# %bb.253:                              #   in Loop: Header=BB0_216 Depth=1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.hu	$a3, $a3, 0
	beqz	$a3, .LBB0_255
# %bb.254:                              #   in Loop: Header=BB0_216 Depth=1
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 184
	addi.d	$a3, $sp, 344
	addi.d	$a4, $sp, 280
	addi.d	$a7, $sp, 290
	move	$a0, $s5
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	move	$a5, $zero
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(compute_mode_RD_cost)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $t6, 0
	ldx.w	$a2, $a0, $s6
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.hu	$a1, $a1, 0
.LBB0_255:                              #   in Loop: Header=BB0_216 Depth=1
	bnez	$a6, .LBB0_260
# %bb.256:                              #   in Loop: Header=BB0_216 Depth=1
	beqz	$a2, .LBB0_260
# %bb.257:                              #   in Loop: Header=BB0_216 Depth=1
	blt	$s2, $s1, .LBB0_260
# %bb.258:                              #   in Loop: Header=BB0_216 Depth=1
	ext.w.h	$a1, $a1
	blt	$s3, $a1, .LBB0_260
# %bb.259:                              #   in Loop: Header=BB0_216 Depth=1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 364
	beqz	$a1, .LBB0_214
.LBB0_260:                              #   in Loop: Header=BB0_216 Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 15536
	sltui	$a1, $a1, 1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	or	$a1, $a1, $a2
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_214
# %bb.261:                              #   in Loop: Header=BB0_216 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.hu	$a1, $a1, 0
	beqz	$a1, .LBB0_214
# %bb.262:                              #   in Loop: Header=BB0_216 Depth=1
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 96
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 184
	addi.d	$a3, $sp, 344
	addi.d	$a4, $sp, 280
	addi.d	$a7, $sp, 290
	move	$a0, $s2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	move	$a5, $zero
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(compute_mode_RD_cost)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $t6, 0
	b	.LBB0_214
.Lfunc_end0:
	.size	encode_one_macroblock_highfast, .Lfunc_end0-encode_one_macroblock_highfast
                                        # -- End function
	.type	.L__const.encode_one_macroblock_highfast.bmcost,@object # @__const.encode_one_macroblock_highfast.bmcost
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const.encode_one_macroblock_highfast.bmcost:
	.word	2147483647                      # 0x7fffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.size	.L__const.encode_one_macroblock_highfast.bmcost, 20

	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.comm	giRDOpt_B8OnlyFlag,4,4
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bi_pred_me
	.addrsig_sym tr8x8
	.addrsig_sym tr4x4
