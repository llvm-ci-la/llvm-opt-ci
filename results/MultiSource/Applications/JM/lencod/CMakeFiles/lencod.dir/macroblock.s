	.file	"macroblock.c"
	.text
	.globl	set_MB_parameters               # -- Begin function set_MB_parameters
	.p2align	5
	.type	set_MB_parameters,@function
set_MB_parameters:                      # @set_MB_parameters
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(get_mb_block_pos)
	ld.d	$a3, $a1, %pc_lo12(get_mb_block_pos)
	st.w	$fp, $a0, 12
	addi.d	$a1, $a0, 160
	addi.d	$a2, $a0, 164
	move	$a0, $fp
	jirl	$ra, $a3, 0
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 160
	ld.w	$a4, $a0, 164
	slli.d	$a2, $a1, 2
	st.w	$a2, $a0, 168
	slli.d	$a2, $a4, 2
	st.w	$a2, $a0, 172
	slli.d	$a1, $a1, 4
	ldptr.w	$a3, $a0, 15268
	st.w	$a1, $a0, 176
	slli.d	$a2, $a4, 4
	st.w	$a2, $a0, 180
	st.w	$a1, $a0, 192
	beqz	$a3, .LBB0_3
# %bb.1:
	ldptr.d	$a3, $a0, 14224
	ori	$a5, $zero, 536
	mul.d	$a5, $fp, $a5
	add.d	$a3, $a3, $a5
	ld.w	$a5, $a3, 424
	beqz	$a5, .LBB0_4
# %bb.2:
	andi	$a5, $fp, 1
	sltui	$a5, $a5, 1
	pcalau12i	$a6, %pc_hi20(imgY_org_bot)
	addi.d	$a6, $a6, %pc_lo12(imgY_org_bot)
	pcalau12i	$a7, %pc_hi20(imgY_org_top)
	addi.d	$a7, $a7, %pc_lo12(imgY_org_top)
	masknez	$a6, $a6, $a5
	maskeqz	$a7, $a7, $a5
	or	$a6, $a7, $a6
	ld.d	$a6, $a6, 0
	pcalau12i	$a7, %pc_hi20(imgY_org)
	st.d	$a6, $a7, %pc_lo12(imgY_org)
	pcalau12i	$a6, %pc_hi20(imgUV_org_bot)
	addi.d	$a6, $a6, %pc_lo12(imgUV_org_bot)
	pcalau12i	$a7, %pc_hi20(imgUV_org_top)
	addi.d	$a7, $a7, %pc_lo12(imgUV_org_top)
	masknez	$a6, $a6, $a5
	maskeqz	$a7, $a7, $a5
	or	$a6, $a7, $a6
	ld.d	$a6, $a6, 0
	pcalau12i	$a7, %pc_hi20(imgUV_org)
	st.d	$a6, $a7, %pc_lo12(imgUV_org)
	slli.d	$a4, $a4, 3
	bstrins.d	$a4, $zero, 3, 0
	st.w	$a4, $a0, 196
	ori	$a6, $zero, 4
	masknez	$a6, $a6, $a5
	ori	$a7, $zero, 2
	maskeqz	$a5, $a7, $a5
	or	$a5, $a5, $a6
	ldptr.w	$a6, $a0, 15536
	st.w	$a5, $a3, 432
	bnez	$a6, .LBB0_6
	b	.LBB0_7
.LBB0_3:
	move	$a5, $zero
	ldptr.d	$a3, $a0, 14224
	st.w	$a2, $a0, 196
	ori	$a4, $zero, 536
	mul.d	$a4, $fp, $a4
	add.d	$a3, $a3, $a4
	b	.LBB0_5
.LBB0_4:
	move	$a5, $zero
	pcalau12i	$a4, %pc_hi20(imgY_org_frm)
	ld.d	$a4, $a4, %pc_lo12(imgY_org_frm)
	pcalau12i	$a6, %pc_hi20(imgUV_org_frm)
	ld.d	$a6, $a6, %pc_lo12(imgUV_org_frm)
	pcalau12i	$a7, %pc_hi20(imgY_org)
	st.d	$a4, $a7, %pc_lo12(imgY_org)
	pcalau12i	$a4, %pc_hi20(imgUV_org)
	st.d	$a6, $a4, %pc_lo12(imgUV_org)
	st.w	$a2, $a0, 196
.LBB0_5:
	move	$a4, $a2
	ldptr.w	$a6, $a0, 15536
	st.w	$a5, $a3, 432
	beqz	$a6, .LBB0_7
.LBB0_6:
	lu12i.w	$a3, 3
	ori	$a5, $a3, 3256
	ldx.w	$a5, $a0, $a5
	ori	$a3, $a3, 3260
	ldx.w	$a3, $a0, $a3
	mul.w	$a1, $a5, $a1
	srai.d	$a1, $a1, 4
	st.w	$a1, $a0, 184
	mul.w	$a2, $a3, $a2
	srli.d	$a2, $a2, 4
	st.w	$a2, $a0, 188
	st.w	$a1, $a0, 200
	mul.w	$a1, $a4, $a3
	srli.d	$a1, $a1, 4
	st.w	$a1, $a0, 204
.LBB0_7:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	set_MB_parameters, .Lfunc_end0-set_MB_parameters
                                        # -- End function
	.globl	proceed2nextMacroblock          # -- Begin function proceed2nextMacroblock
	.p2align	5
	.type	proceed2nextMacroblock,@function
proceed2nextMacroblock:                 # @proceed2nextMacroblock
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 12
	ldptr.d	$a2, $a0, 14224
	ori	$a3, $zero, 536
	mul.d	$a1, $a1, $a3
	add.d	$fp, $a2, $a1
	ld.w	$a1, $fp, 28
	ldptr.w	$a2, $a0, 15464
	bge	$a2, $a1, .LBB1_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
.LBB1_2:
	ld.w	$a2, $fp, 32
	pcalau12i	$a1, %got_pc_hi20(stats)
	ld.d	$a1, $a1, %got_pc_lo12(stats)
	ld.d	$a1, $a1, 0
	ld.w	$a5, $a0, 20
	alsl.d	$a3, $a5, $a1, 3
	ld.d	$a4, $a3, 2000
	add.d	$a2, $a4, $a2
	ld.w	$a4, $fp, 44
	ldptr.d	$a6, $a3, 2120
	ld.w	$a7, $fp, 40
	ldptr.d	$t0, $a3, 2080
	st.d	$a2, $a3, 2000
	add.d	$a2, $a6, $a4
	stptr.d	$a2, $a3, 2120
	add.d	$a2, $t0, $a7
	ld.w	$a4, $fp, 48
	ldptr.d	$a6, $a3, 2160
	stptr.d	$a2, $a3, 2080
	ld.w	$a7, $fp, 52
	ldptr.d	$t0, $a3, 2200
	add.d	$a4, $a6, $a4
	ld.w	$a2, $fp, 72
	stptr.d	$a4, $a3, 2160
	add.d	$a4, $t0, $a7
	ori	$a6, $zero, 14
	stptr.d	$a4, $a3, 2200
	bltu	$a6, $a2, .LBB1_7
# %bb.3:
	ori	$a3, $zero, 1
	sll.d	$a3, $a3, $a2
	lu12i.w	$a4, 6
	ori	$a4, $a4, 1536
	and	$a3, $a3, $a4
	beqz	$a3, .LBB1_7
# %bb.4:
	ld.w	$a2, $fp, 416
	alsl.d	$a2, $a2, $a1, 2
	ld.w	$a3, $a2, 684
	addi.d	$a3, $a3, 1
	st.w	$a3, $a2, 684
	ld.bu	$a2, $fp, 364
	andi	$a2, $a2, 15
	beqz	$a2, .LBB1_6
# %bb.5:                                # %thread-pre-split.sink.split
	ld.w	$a2, $fp, 472
	sltui	$a2, $a2, 1
	ld.w	$a3, $a0, 20
	ld.w	$a4, $fp, 72
	ori	$a5, $zero, 84
	masknez	$a5, $a5, $a2
	ori	$a6, $zero, 384
	maskeqz	$a2, $a6, $a2
	or	$a2, $a2, $a5
	add.d	$a2, $a1, $a2
	ori	$a5, $zero, 60
	mul.d	$a3, $a3, $a5
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a4, 2
	ldx.w	$a4, $a2, $a3
	addi.d	$a4, $a4, 1
	stx.w	$a4, $a2, $a3
.LBB1_6:                                # %thread-pre-split
	ld.w	$a2, $fp, 72
	ld.w	$a5, $a0, 20
.LBB1_7:
	addi.d	$a3, $a1, 760
	ori	$a4, $zero, 120
	mul.d	$a4, $a5, $a4
	add.d	$a6, $a3, $a4
	slli.d	$a7, $a2, 3
	ldx.d	$t0, $a6, $a7
	ld.w	$t1, $fp, 36
	add.d	$a4, $a1, $a4
	alsl.d	$a4, $a2, $a4, 3
	ld.d	$t2, $a4, 1360
	addi.d	$t0, $t0, 1
	stx.d	$t0, $a6, $a7
	add.d	$a7, $t2, $t1
	ori	$t0, $zero, 2
	st.d	$a7, $a4, 1360
	bne	$a5, $t0, .LBB1_12
.LBB1_8:                                # %.loopexit
	ld.w	$a0, $a0, 20
	ori	$a2, $zero, 3
	beq	$a0, $a2, .LBB1_10
# %bb.9:                                # %.loopexit
	bnez	$a0, .LBB1_11
.LBB1_10:
	ld.w	$a0, $a1, 0
	ld.w	$a2, $fp, 8
	ld.w	$a3, $a1, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $a1, 0
	add.d	$a0, $a3, $a2
	st.w	$a0, $a1, 4
.LBB1_11:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_12:
	ori	$a4, $zero, 8
	bne	$a2, $a4, .LBB1_21
# %bb.13:                               # %.preheader
	addi.d	$a4, $a1, 44
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	ld.w	$a7, $fp, 376
	ld.d	$a2, $a2, 0
	blez	$a7, .LBB1_25
# %bb.14:
	slli.d	$a5, $a7, 3
	ldx.d	$t0, $a6, $a5
	addi.d	$t0, $t0, 1
	stx.d	$t0, $a6, $a5
	ori	$a5, $zero, 4
	beq	$a7, $a5, .LBB1_26
.LBB1_15:
	ld.w	$a5, $fp, 380
	ld.w	$a6, $a0, 20
	blez	$a5, .LBB1_31
.LBB1_16:
	ori	$a7, $zero, 120
	mul.d	$a6, $a6, $a7
	add.d	$a6, $a3, $a6
	slli.d	$a7, $a5, 3
	ldx.d	$t0, $a6, $a7
	addi.d	$t0, $t0, 1
	stx.d	$t0, $a6, $a7
	ori	$a6, $zero, 4
	beq	$a5, $a6, .LBB1_32
.LBB1_17:
	ld.w	$a5, $fp, 384
	ld.w	$a6, $a0, 20
	blez	$a5, .LBB1_37
.LBB1_18:
	ori	$a7, $zero, 120
	mul.d	$a6, $a6, $a7
	add.d	$a6, $a3, $a6
	slli.d	$a7, $a5, 3
	ldx.d	$t0, $a6, $a7
	addi.d	$t0, $t0, 1
	stx.d	$t0, $a6, $a7
	ori	$a6, $zero, 4
	beq	$a5, $a6, .LBB1_38
.LBB1_19:
	ld.w	$a5, $fp, 388
	ld.w	$a6, $a0, 20
	blez	$a5, .LBB1_43
.LBB1_20:
	ori	$a4, $zero, 120
	mul.d	$a4, $a6, $a4
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a5, 3
	ldx.d	$a6, $a3, $a4
	addi.d	$a6, $a6, 1
	stx.d	$a6, $a3, $a4
	ori	$a3, $zero, 4
	bne	$a5, $a3, .LBB1_8
	b	.LBB1_44
.LBB1_21:
	ori	$a3, $zero, 3
	bltu	$a3, $a2, .LBB1_8
# %bb.22:
	ld.bu	$a3, $fp, 364
	andi	$a3, $a3, 15
	beqz	$a3, .LBB1_8
# %bb.23:
	ld.w	$a3, $fp, 472
	beqz	$a3, .LBB1_50
# %bb.24:
	ori	$a3, $zero, 60
	mul.d	$a3, $a5, $a3
	add.d	$a3, $a1, $a3
	alsl.d	$a2, $a2, $a3, 2
	ld.w	$a3, $a2, 84
	addi.d	$a3, $a3, 1
	st.w	$a3, $a2, 84
	b	.LBB1_8
.LBB1_25:
	ld.w	$a6, $fp, 472
	alsl.d	$a5, $a5, $a4, 3
	slli.d	$a6, $a6, 2
	ldx.w	$a7, $a5, $a6
	addi.d	$a7, $a7, 1
	stx.w	$a7, $a5, $a6
	ld.w	$a7, $fp, 376
	ori	$a5, $zero, 4
	bne	$a7, $a5, .LBB1_15
.LBB1_26:
	ld.w	$a5, $fp, 472
	beqz	$a5, .LBB1_28
# %bb.27:
	ld.bu	$a6, $fp, 364
	ld.w	$a5, $a0, 20
	andi	$a7, $a6, 15
	ori	$a6, $zero, 100
	bnez	$a7, .LBB1_30
	b	.LBB1_29
.LBB1_28:                               # %._crit_edge68
	ld.w	$a5, $a0, 20
.LBB1_29:
	ldptr.w	$a6, $a2, 5100
	addi.d	$a6, $a6, -2
	sltui	$a6, $a6, 1
	ori	$a7, $zero, 400
	masknez	$a7, $a7, $a6
	ori	$t0, $zero, 100
	maskeqz	$a6, $t0, $a6
	or	$a6, $a6, $a7
.LBB1_30:                               # %.sink.split
	ori	$a7, $zero, 60
	mul.d	$a5, $a5, $a7
	add.d	$a5, $a1, $a5
	ldx.w	$a7, $a5, $a6
	addi.d	$a7, $a7, 1
	stx.w	$a7, $a5, $a6
	ld.w	$a5, $fp, 380
	ld.w	$a6, $a0, 20
	bgtz	$a5, .LBB1_16
.LBB1_31:
	ld.w	$a5, $fp, 472
	alsl.d	$a6, $a6, $a4, 3
	slli.d	$a5, $a5, 2
	ldx.w	$a7, $a6, $a5
	addi.d	$a7, $a7, 1
	stx.w	$a7, $a6, $a5
	ld.w	$a5, $fp, 380
	ori	$a6, $zero, 4
	bne	$a5, $a6, .LBB1_17
.LBB1_32:
	ld.w	$a5, $fp, 472
	beqz	$a5, .LBB1_34
# %bb.33:
	ld.bu	$a6, $fp, 364
	ld.w	$a5, $a0, 20
	andi	$a7, $a6, 15
	ori	$a6, $zero, 100
	bnez	$a7, .LBB1_36
	b	.LBB1_35
.LBB1_34:                               # %._crit_edge71
	ld.w	$a5, $a0, 20
.LBB1_35:
	ldptr.w	$a6, $a2, 5100
	addi.d	$a6, $a6, -2
	sltui	$a6, $a6, 1
	ori	$a7, $zero, 400
	masknez	$a7, $a7, $a6
	ori	$t0, $zero, 100
	maskeqz	$a6, $t0, $a6
	or	$a6, $a6, $a7
.LBB1_36:                               # %.sink.split95
	ori	$a7, $zero, 60
	mul.d	$a5, $a5, $a7
	add.d	$a5, $a1, $a5
	ldx.w	$a7, $a5, $a6
	addi.d	$a7, $a7, 1
	stx.w	$a7, $a5, $a6
	ld.w	$a5, $fp, 384
	ld.w	$a6, $a0, 20
	bgtz	$a5, .LBB1_18
.LBB1_37:
	ld.w	$a5, $fp, 472
	alsl.d	$a6, $a6, $a4, 3
	slli.d	$a5, $a5, 2
	ldx.w	$a7, $a6, $a5
	addi.d	$a7, $a7, 1
	stx.w	$a7, $a6, $a5
	ld.w	$a5, $fp, 384
	ori	$a6, $zero, 4
	bne	$a5, $a6, .LBB1_19
.LBB1_38:
	ld.w	$a5, $fp, 472
	beqz	$a5, .LBB1_40
# %bb.39:
	ld.bu	$a6, $fp, 364
	ld.w	$a5, $a0, 20
	andi	$a7, $a6, 15
	ori	$a6, $zero, 100
	bnez	$a7, .LBB1_42
	b	.LBB1_41
.LBB1_40:                               # %._crit_edge74
	ld.w	$a5, $a0, 20
.LBB1_41:
	ldptr.w	$a6, $a2, 5100
	addi.d	$a6, $a6, -2
	sltui	$a6, $a6, 1
	ori	$a7, $zero, 400
	masknez	$a7, $a7, $a6
	ori	$t0, $zero, 100
	maskeqz	$a6, $t0, $a6
	or	$a6, $a6, $a7
.LBB1_42:                               # %.sink.split101
	ori	$a7, $zero, 60
	mul.d	$a5, $a5, $a7
	add.d	$a5, $a1, $a5
	ldx.w	$a7, $a5, $a6
	addi.d	$a7, $a7, 1
	stx.w	$a7, $a5, $a6
	ld.w	$a5, $fp, 388
	ld.w	$a6, $a0, 20
	bgtz	$a5, .LBB1_20
.LBB1_43:
	ld.w	$a3, $fp, 472
	alsl.d	$a4, $a6, $a4, 3
	slli.d	$a3, $a3, 2
	ldx.w	$a5, $a4, $a3
	addi.d	$a5, $a5, 1
	stx.w	$a5, $a4, $a3
	ld.w	$a5, $fp, 388
	ori	$a3, $zero, 4
	bne	$a5, $a3, .LBB1_8
.LBB1_44:
	ld.w	$a3, $fp, 472
	beqz	$a3, .LBB1_48
# %bb.45:
	ld.bu	$a4, $fp, 364
	ld.w	$a3, $a0, 20
	andi	$a4, $a4, 15
	bnez	$a4, .LBB1_47
# %bb.46:
	ldptr.w	$a2, $a2, 5100
	ori	$a4, $zero, 2
	bne	$a2, $a4, .LBB1_49
.LBB1_47:                               # %._crit_edge65
	ori	$a2, $zero, 60
	mul.d	$a2, $a3, $a2
	add.d	$a2, $a1, $a2
	ld.w	$a3, $a2, 100
	addi.d	$a3, $a3, 1
	st.w	$a3, $a2, 100
	b	.LBB1_8
.LBB1_48:                               # %._crit_edge77
	ld.w	$a3, $a0, 20
	ldptr.w	$a2, $a2, 5100
	ori	$a4, $zero, 2
	beq	$a2, $a4, .LBB1_47
.LBB1_49:
	ori	$a2, $zero, 60
	mul.d	$a2, $a3, $a2
	add.d	$a2, $a1, $a2
	ld.w	$a3, $a2, 400
	addi.d	$a3, $a3, 1
	st.w	$a3, $a2, 400
	b	.LBB1_8
.LBB1_50:
	ori	$a3, $zero, 60
	mul.d	$a3, $a5, $a3
	add.d	$a3, $a1, $a3
	alsl.d	$a2, $a2, $a3, 2
	ld.w	$a3, $a2, 384
	addi.d	$a3, $a3, 1
	st.w	$a3, $a2, 384
	b	.LBB1_8
.Lfunc_end1:
	.size	proceed2nextMacroblock, .Lfunc_end1-proceed2nextMacroblock
                                        # -- End function
	.globl	set_chroma_qp                   # -- Begin function set_chroma_qp
	.p2align	5
	.type	set_chroma_qp,@function
set_chroma_qp:                          # @set_chroma_qp
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a0, 8
	lu12i.w	$a3, 3
	ori	$a4, $a3, 3168
	ldx.w	$a5, $a2, $a4
	ori	$a6, $a3, 3288
	ldx.w	$a6, $a2, $a6
	sub.w	$a5, $zero, $a5
	add.w	$a6, $a6, $a1
	slt	$a7, $a5, $a6
	masknez	$a5, $a5, $a7
	maskeqz	$a6, $a6, $a7
	or	$a7, $a6, $a5
	slti	$a6, $a7, 51
	maskeqz	$t0, $a7, $a6
	ori	$a5, $zero, 51
	masknez	$a6, $a5, $a6
	or	$a6, $t0, $a6
	bltz	$a7, .LBB2_2
# %bb.1:
	pcalau12i	$a7, %got_pc_hi20(QP_SCALE_CR)
	ld.d	$a7, $a7, %got_pc_lo12(QP_SCALE_CR)
	ldx.bu	$a6, $a7, $a6
.LBB2_2:
	st.w	$a6, $a0, 12
	ldx.w	$a4, $a2, $a4
	ori	$a3, $a3, 3292
	ldx.w	$a2, $a2, $a3
	sub.w	$a3, $zero, $a4
	add.w	$a1, $a2, $a1
	slt	$a2, $a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$a2, $a1, $a3
	slti	$a1, $a2, 51
	maskeqz	$a3, $a2, $a1
	masknez	$a1, $a5, $a1
	or	$a1, $a3, $a1
	bltz	$a2, .LBB2_4
# %bb.3:
	pcalau12i	$a2, %got_pc_hi20(QP_SCALE_CR)
	ld.d	$a2, $a2, %got_pc_lo12(QP_SCALE_CR)
	ldx.bu	$a1, $a2, $a1
.LBB2_4:
	st.w	$a1, $a0, 16
	ret
.Lfunc_end2:
	.size	set_chroma_qp, .Lfunc_end2-set_chroma_qp
                                        # -- End function
	.globl	start_macroblock                # -- Begin function start_macroblock
	.p2align	5
	.type	start_macroblock,@function
start_macroblock:                       # @start_macroblock
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
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s3, $a0, %got_pc_lo12(input)
	ld.d	$a0, $s3, 0
	ld.w	$fp, $a0, 264
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s2, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s2, 0
	ldptr.d	$a2, $a0, 14224
	ori	$a3, $zero, 536
	ldptr.d	$s5, $a0, 14216
	mul.d	$a0, $s0, $a3
	add.d	$s1, $a2, $a0
	st.w	$a1, $s1, 424
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$s4, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $s4, 0
	ldptr.d	$a0, $a0, 6480
	stx.b	$a1, $a0, $s0
	ld.d	$a1, $s2, 0
	ldptr.w	$a2, $a1, 15312
	ori	$a0, $zero, 1
	bnez	$a2, .LBB3_4
# %bb.1:
	ldptr.w	$a0, $a1, 15268
	beqz	$a0, .LBB3_3
# %bb.2:
	ld.w	$a0, $s1, 424
	sltu	$a0, $zero, $a0
	b	.LBB3_4
.LBB3_3:
	move	$a0, $zero
.LBB3_4:
	st.w	$a0, $s1, 428
	move	$a0, $s0
	pcaddu18i	$ra, %call36(set_MB_parameters)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.w	$a0, $a0, 12
	pcaddu18i	$ra, %call36(FmoGetPreviousMBNr)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $fp, 31, 1
	ld.d	$a2, $s3, 0
	slli.w	$a1, $a1, 1
	ori	$a3, $zero, 2
	move	$fp, $a0
	bne	$a1, $a3, .LBB3_8
# %bb.5:
	andi	$a0, $s0, 1
	beqz	$a0, .LBB3_7
# %bb.6:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 612
	ldx.w	$a0, $a2, $a0
	bnez	$a0, .LBB3_8
.LBB3_7:
	ld.d	$a0, $s2, 0
	ld.w	$a0, $a0, 144
	beqz	$a0, .LBB3_59
.LBB3_8:                                # %.loopexit
	ld.d	$a1, $s2, 0
	ld.w	$a0, $a1, 16
	ld.w	$a3, $a1, 40
	ldptr.w	$a4, $a2, 5116
	st.w	$a0, $s1, 0
	st.w	$a3, $s1, 20
	lu12i.w	$s0, 3
	beqz	$a4, .LBB3_16
# %bb.9:
	bltz	$fp, .LBB3_19
# %bb.10:
	ldptr.w	$a3, $a2, 4708
	ori	$a4, $zero, 2
	bne	$a3, $a4, .LBB3_14
# %bb.11:
	ldptr.w	$a3, $a1, 15412
	bnez	$a3, .LBB3_14
# %bb.12:
	ld.w	$a3, $s1, 424
	beqz	$a3, .LBB3_14
# %bb.13:
	ldptr.d	$a3, $a1, 14224
	ori	$a4, $zero, 536
	mul.d	$a4, $fp, $a4
	add.d	$a3, $a3, $a4
	ld.w	$a3, $a3, 8
	st.w	$a3, $a1, 36
	st.w	$a3, $s1, 8
.LBB3_14:
	ldptr.d	$a4, $a1, 14224
	ori	$a3, $zero, 536
	mul.d	$a5, $fp, $a3
	add.d	$a3, $a4, $a5
	ld.w	$a6, $a3, 8
	ldx.w	$a4, $a4, $a5
	st.w	$a6, $s1, 496
	bne	$a4, $a0, .LBB3_20
# %bb.15:
	ld.w	$a0, $a3, 4
	ldptr.w	$a3, $a2, 5128
	ldptr.w	$a4, $a1, 15352
	st.w	$a0, $s1, 500
	bne	$a3, $a4, .LBB3_21
	b	.LBB3_24
.LBB3_16:
	ldptr.d	$a3, $a1, 14216
	bltz	$fp, .LBB3_25
# %bb.17:
	ldptr.d	$a5, $a1, 14224
	ori	$a2, $zero, 536
	mul.d	$a6, $fp, $a2
	add.d	$a4, $a5, $a6
	ld.w	$a2, $a4, 8
	ldx.w	$a5, $a5, $a6
	st.w	$a2, $s1, 496
	bne	$a5, $a0, .LBB3_26
# %bb.18:
	ld.w	$a4, $a4, 4
	b	.LBB3_27
.LBB3_19:
	ld.w	$a3, $s5, 4
	move	$a0, $zero
	st.w	$a3, $s1, 496
	ldptr.w	$a3, $a2, 5128
	ldptr.w	$a4, $a1, 15352
	st.w	$a0, $s1, 500
	bne	$a3, $a4, .LBB3_21
	b	.LBB3_24
.LBB3_20:
	move	$a0, $zero
	ldptr.w	$a3, $a2, 5128
	ldptr.w	$a4, $a1, 15352
	st.w	$a0, $s1, 500
	beq	$a3, $a4, .LBB3_24
.LBB3_21:
	ld.w	$a0, $a1, 20
	addi.w	$a4, $a0, -1
	ori	$a3, $zero, 1
	bltu	$a3, $a4, .LBB3_23
# %bb.22:
	ldptr.w	$a4, $a2, 5136
	bne	$a4, $a3, .LBB3_24
.LBB3_23:
	ld.w	$a3, $a1, 0
	pcalau12i	$a4, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a4, $a4, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a4, $a4, 0
	bne	$a3, $a4, .LBB3_50
.LBB3_24:
	ld.w	$a0, $a1, 36
	st.w	$zero, $s1, 4
	st.w	$a0, $s1, 8
	b	.LBB3_29
.LBB3_25:
	ld.w	$a2, $a3, 4
	st.w	$a2, $s1, 496
	st.w	$zero, $s1, 500
	move	$a0, $a2
	b	.LBB3_28
.LBB3_26:
	move	$a4, $zero
.LBB3_27:
	ld.w	$a0, $a3, 4
	st.w	$a4, $s1, 500
.LBB3_28:
	ld.w	$a3, $s1, 424
	st.w	$a0, $s1, 8
	sub.d	$a0, $a0, $a2
	st.w	$a0, $s1, 4
	pcalau12i	$a2, %pc_hi20(delta_qp_mbaff)
	addi.d	$a2, $a2, %pc_lo12(delta_qp_mbaff)
	ldptr.w	$a4, $a1, 15412
	alsl.d	$a2, $a3, $a2, 3
	slli.d	$a3, $a4, 2
	stx.w	$a0, $a2, $a3
	ld.w	$a0, $s1, 8
	ld.w	$a2, $s1, 424
	pcalau12i	$a3, %pc_hi20(qp_mbaff)
	addi.d	$a3, $a3, %pc_lo12(qp_mbaff)
	ldptr.w	$a4, $a1, 15412
	alsl.d	$a2, $a2, $a3, 3
	slli.d	$a3, $a4, 2
	stx.w	$a0, $a2, $a3
.LBB3_29:
	ld.w	$a3, $a1, 36
	ori	$a2, $s0, 3164
	ldx.w	$a4, $a1, $a2
	ori	$a2, $s0, 3168
	ldx.w	$a5, $a1, $a2
	ori	$a6, $s0, 3288
	ldx.w	$a6, $a1, $a6
	add.d	$a3, $a4, $a3
	st.w	$a3, $a1, 44
	sub.w	$a3, $zero, $a5
	add.w	$a4, $a6, $a0
	slt	$a5, $a3, $a4
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a4, $a5
	or	$a5, $a4, $a3
	slti	$a4, $a5, 51
	maskeqz	$a6, $a5, $a4
	ori	$a3, $zero, 51
	masknez	$a4, $a3, $a4
	or	$a4, $a6, $a4
	bltz	$a5, .LBB3_31
# %bb.30:
	pcalau12i	$a5, %got_pc_hi20(QP_SCALE_CR)
	ld.d	$a5, $a5, %got_pc_lo12(QP_SCALE_CR)
	ldx.bu	$a4, $a5, $a4
.LBB3_31:
	st.w	$a4, $s1, 12
	ldx.w	$a2, $a1, $a2
	ori	$a4, $s0, 3292
	ldx.w	$a4, $a1, $a4
	sub.w	$a2, $zero, $a2
	add.w	$a0, $a4, $a0
	slt	$a4, $a2, $a0
	masknez	$a2, $a2, $a4
	maskeqz	$a0, $a0, $a4
	or	$a2, $a0, $a2
	slti	$a0, $a2, 51
	maskeqz	$a4, $a2, $a0
	masknez	$a0, $a3, $a0
	or	$a0, $a4, $a0
	bltz	$a2, .LBB3_33
# %bb.32:
	pcalau12i	$a2, %got_pc_hi20(QP_SCALE_CR)
	ld.d	$a2, $a2, %got_pc_lo12(QP_SCALE_CR)
	ldx.bu	$a0, $a2, $a0
.LBB3_33:                               # %set_chroma_qp.exit193
	pcalau12i	$a2, %pc_hi20(active_pps)
	ld.d	$a2, $a2, %pc_lo12(active_pps)
	st.w	$a0, $s1, 16
	ld.w	$a0, $a2, 220
	beqz	$a0, .LBB3_35
# %bb.34:
	ori	$a0, $s0, 2152
	ldx.w	$a0, $a1, $a0
	ori	$a2, $s0, 2156
	ldx.w	$a2, $a1, $a2
	ori	$a3, $s0, 2160
	ldx.w	$a1, $a1, $a3
	b	.LBB3_36
.LBB3_35:
	move	$a0, $zero
	move	$a2, $zero
	move	$a1, $zero
.LBB3_36:
	st.w	$a0, $s1, 516
	st.w	$a2, $s1, 520
	st.w	$a1, $s1, 524
	pcaddu18i	$ra, %call36(CheckAvailabilityOfNeighbors)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldptr.w	$a0, $a0, 4008
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_38
# %bb.37:
	pcaddu18i	$ra, %call36(CheckAvailabilityOfNeighborsCABAC)
	jirl	$ra, $ra, 0
.LBB3_38:                               # %.lr.ph198
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 172
	ld.d	$a4, $s4, 0
	ld.w	$a5, $a0, 168
	addi.d	$a2, $a1, -1
	addi.w	$a0, $zero, -1
	slli.d	$a3, $a1, 3
	move	$a1, $a0
	lu32i.d	$a1, 0
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB3_39:                               # =>This Inner Loop Header: Depth=1
	ldptr.d	$a4, $a4, 6488
	ld.d	$a4, $a4, 0
	ldx.d	$a4, $a4, $a3
	stx.w	$a1, $a4, $a5
	ld.d	$a4, $s4, 0
	ldptr.d	$a4, $a4, 6512
	ld.d	$a5, $s2, 0
	ld.d	$a4, $a4, 0
	ld.w	$a5, $a5, 168
	ldx.d	$a4, $a4, $a3
	slli.d	$a5, $a5, 3
	ldx.d	$a4, $a4, $a5
	vst	$vr0, $a4, 0
	ld.d	$a4, $s4, 0
	ldptr.d	$a5, $a4, 6496
	ld.d	$a6, $s2, 0
	ld.d	$a7, $a5, 0
	ld.w	$a5, $a6, 168
	ldx.d	$a7, $a7, $a3
	slli.d	$t0, $a5, 3
	alsl.d	$t1, $a5, $a7, 3
	stx.d	$a0, $a7, $t0
	st.d	$a0, $t1, 24
	st.d	$a0, $t1, 16
	st.d	$a0, $t1, 8
	ld.w	$a6, $a6, 172
	addi.w	$a6, $a6, 3
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 8
	blt	$a2, $a6, .LBB3_39
# %bb.40:                               # %.lr.ph198.1
	ld.d	$a2, $s2, 0
	ld.w	$a3, $a2, 172
	ld.d	$a4, $s4, 0
	ld.w	$a5, $a2, 168
	addi.d	$a2, $a3, -1
	slli.d	$a3, $a3, 3
	.p2align	4, , 16
.LBB3_41:                               # =>This Inner Loop Header: Depth=1
	ldptr.d	$a4, $a4, 6488
	ld.d	$a4, $a4, 8
	ldx.d	$a4, $a4, $a3
	stx.w	$a1, $a4, $a5
	ld.d	$a4, $s4, 0
	ldptr.d	$a4, $a4, 6512
	ld.d	$a5, $s2, 0
	ld.d	$a4, $a4, 8
	ld.w	$a5, $a5, 168
	ldx.d	$a4, $a4, $a3
	slli.d	$a5, $a5, 3
	ldx.d	$a4, $a4, $a5
	vst	$vr0, $a4, 0
	ld.d	$a4, $s4, 0
	ldptr.d	$a5, $a4, 6496
	ld.d	$a6, $s2, 0
	ld.d	$a7, $a5, 8
	ld.w	$a5, $a6, 168
	ldx.d	$a7, $a7, $a3
	slli.d	$t0, $a5, 3
	alsl.d	$t1, $a5, $a7, 3
	stx.d	$a0, $a7, $t0
	st.d	$a0, $t1, 24
	st.d	$a0, $t1, 16
	st.d	$a0, $t1, 8
	ld.w	$a6, $a6, 172
	addi.w	$a6, $a6, 3
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 8
	blt	$a2, $a6, .LBB3_41
# %bb.42:                               # %._crit_edge.1
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	addi.d	$a0, $s1, 72
	st.d	$zero, $s1, 368
	st.w	$zero, $s1, 364
	st.d	$zero, $s1, 408
	st.w	$zero, $s1, 416
	ori	$a2, $zero, 260
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 8224
	ori	$a0, $a0, 514
	bstrins.d	$a0, $a0, 57, 32
	st.d	$a0, $s1, 332
	st.d	$a0, $s1, 340
	st.d	$a0, $s1, 348
	st.d	$a0, $s1, 356
	ld.d	$a0, $s3, 0
	ld.w	$a1, $a0, 272
	beqz	$a1, .LBB3_44
# %bb.43:
	ld.d	$a1, $s2, 0
	ld.w	$a2, $a1, 12
	ldptr.d	$a1, $a1, 14240
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 1
	stx.w	$a3, $a1, $a2
.LBB3_44:
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	bltz	$fp, .LBB3_46
# %bb.45:
	ld.d	$a1, $s2, 0
	ldptr.d	$a1, $a1, 14224
	ld.w	$a2, $s1, 0
	ori	$a3, $zero, 536
	mul.d	$a3, $fp, $a3
	ldx.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB3_47
.LBB3_46:                               # %.sink.split
	st.w	$zero, $s1, 24
.LBB3_47:
	st.d	$zero, $s1, 48
	vst	$vr0, $s1, 32
	ldptr.w	$a0, $a0, 5244
	beqz	$a0, .LBB3_49
# %bb.48:
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
.LBB3_49:
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(ResetFastFullIntegerSearch)
	jr	$t8
.LBB3_50:
	beqz	$a0, .LBB3_52
# %bb.51:
	ldptr.w	$a0, $a2, 5136
	ori	$a3, $zero, 1
	bne	$a0, $a3, .LBB3_65
.LBB3_52:
	ldptr.w	$a0, $a1, 15408
	beqz	$a0, .LBB3_66
# %bb.53:
	ldptr.w	$a0, $a1, 15412
	beqz	$a0, .LBB3_73
# %bb.54:
	ld.w	$a0, $a1, 36
	st.w	$zero, $s1, 4
	st.w	$a0, $s1, 8
	ori	$a3, $s0, 3168
	ldx.w	$a4, $a1, $a3
	ori	$a5, $s0, 3288
	ldx.w	$a5, $a1, $a5
	sub.w	$a4, $zero, $a4
	add.w	$a5, $a5, $a0
	slt	$a6, $a4, $a5
	masknez	$a4, $a4, $a6
	maskeqz	$a5, $a5, $a6
	or	$a6, $a5, $a4
	slti	$a5, $a6, 51
	maskeqz	$a7, $a6, $a5
	ori	$a4, $zero, 51
	masknez	$a5, $a4, $a5
	or	$a5, $a7, $a5
	bltz	$a6, .LBB3_56
# %bb.55:
	pcalau12i	$a6, %got_pc_hi20(QP_SCALE_CR)
	ld.d	$a6, $a6, %got_pc_lo12(QP_SCALE_CR)
	ldx.bu	$a5, $a6, $a5
.LBB3_56:
	st.w	$a5, $s1, 12
	ldx.w	$a3, $a1, $a3
	ori	$a5, $s0, 3292
	ldx.w	$a5, $a1, $a5
	sub.w	$a3, $zero, $a3
	add.w	$a5, $a5, $a0
	slt	$a6, $a3, $a5
	masknez	$a3, $a3, $a6
	maskeqz	$a5, $a5, $a6
	or	$a5, $a5, $a3
	slti	$a3, $a5, 51
	maskeqz	$a6, $a5, $a3
	masknez	$a3, $a4, $a3
	or	$a3, $a6, $a3
	bltz	$a5, .LBB3_58
# %bb.57:
	pcalau12i	$a4, %got_pc_hi20(QP_SCALE_CR)
	ld.d	$a4, $a4, %got_pc_lo12(QP_SCALE_CR)
	ldx.bu	$a3, $a4, $a3
.LBB3_58:                               # %set_chroma_qp.exit
	st.w	$a3, $s1, 16
	b	.LBB3_84
.LBB3_59:                               # %.preheader
	ld.w	$a0, $s5, 16
	blez	$a0, .LBB3_8
# %bb.60:                               # %.lr.ph
	ldptr.w	$a3, $a2, 4008
	ori	$a1, $zero, 1
	bne	$a3, $a1, .LBB3_70
# %bb.61:                               # %.lr.ph.split.preheader
	pcalau12i	$a3, %got_pc_hi20(stats)
	ld.d	$a3, $a3, %got_pc_lo12(stats)
	ld.d	$a6, $a3, 0
	move	$a4, $zero
	move	$a5, $zero
	b	.LBB3_63
	.p2align	4, , 16
.LBB3_62:                               #   in Loop: Header=BB3_63 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 104
	bge	$a5, $a0, .LBB3_8
.LBB3_63:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $s5, 24
	ldx.d	$t0, $a7, $a4
	ld.d	$t1, $t0, 0
	st.d	$t1, $t0, 12
	ld.b	$t1, $t0, 8
	ld.w	$t2, $a6, 32
	ldptr.w	$t3, $a2, 4008
	st.b	$t1, $t0, 20
	st.w	$t2, $a6, 36
	bne	$t3, $a1, .LBB3_62
# %bb.64:                               #   in Loop: Header=BB3_63 Depth=1
	add.d	$a0, $a7, $a4
	vld	$vr0, $a0, 40
	vld	$vr1, $a0, 24
	vld	$vr2, $a0, 8
	vst	$vr0, $a0, 88
	vst	$vr1, $a0, 72
	vst	$vr2, $a0, 56
	ld.d	$a6, $a3, 0
	ld.d	$a2, $s3, 0
	ld.w	$a0, $s5, 16
	b	.LBB3_62
.LBB3_65:                               # %._crit_edge219
	ld.w	$a0, $s1, 8
	b	.LBB3_29
.LBB3_66:
	bltz	$fp, .LBB3_77
# %bb.67:
	ldptr.w	$a0, $a2, 4708
	beqz	$a0, .LBB3_75
# %bb.68:
	ldptr.w	$a0, $a1, 15412
	beqz	$a0, .LBB3_75
# %bb.69:
	ld.w	$a0, $a1, 36
	st.w	$zero, $s1, 4
	st.w	$a0, $s1, 8
	b	.LBB3_84
.LBB3_70:                               # %.lr.ph.split.us
	ld.d	$a1, $s5, 24
	pcalau12i	$a3, %got_pc_hi20(stats)
	ld.d	$a3, $a3, %got_pc_lo12(stats)
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a3, 32
	.p2align	4, , 16
.LBB3_71:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	ld.d	$a6, $a5, 0
	ld.b	$a7, $a5, 8
	st.d	$a6, $a5, 12
	st.b	$a7, $a5, 20
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 104
	bnez	$a0, .LBB3_71
# %bb.72:                               # %..loopexit_crit_edge.split.us
	st.w	$a4, $a3, 36
	b	.LBB3_8
.LBB3_73:
	ldptr.w	$a0, $a1, 15416
	beqz	$a0, .LBB3_78
# %bb.74:
	pcalau12i	$a0, %pc_hi20(delta_qp_mbaff)
	ld.w	$a0, $a0, %pc_lo12(delta_qp_mbaff)
	st.w	$a0, $s1, 4
	pcalau12i	$a0, %pc_hi20(qp_mbaff)
	ld.w	$a0, $a0, %pc_lo12(qp_mbaff)
	b	.LBB3_80
.LBB3_75:
	ldptr.d	$a0, $a1, 14224
	ori	$a3, $zero, 536
	mul.d	$a3, $fp, $a3
	add.d	$a0, $a0, $a3
	ld.w	$a3, $a0, 504
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB3_81
# %bb.76:
	ld.w	$a3, $a1, 36
	move	$a0, $zero
	st.w	$a3, $s1, 8
	b	.LBB3_82
.LBB3_77:
	ld.w	$a0, $a1, 36
	ld.w	$a3, $s1, 424
	st.w	$zero, $s1, 4
	st.w	$a0, $s1, 8
	pcalau12i	$a0, %pc_hi20(delta_qp_mbaff)
	addi.d	$a0, $a0, %pc_lo12(delta_qp_mbaff)
	ldptr.w	$a4, $a1, 15412
	alsl.d	$a0, $a3, $a0, 3
	slli.d	$a3, $a4, 2
	stx.w	$zero, $a0, $a3
	b	.LBB3_83
.LBB3_78:
	bltz	$fp, .LBB3_103
# %bb.79:
	pcalau12i	$a0, %pc_hi20(delta_qp_mbaff+8)
	ld.w	$a0, $a0, %pc_lo12(delta_qp_mbaff+8)
	st.w	$a0, $s1, 4
	pcalau12i	$a0, %pc_hi20(qp_mbaff+8)
	ld.w	$a0, $a0, %pc_lo12(qp_mbaff+8)
.LBB3_80:
	st.w	$a0, $s1, 8
	st.w	$a0, $a1, 36
	b	.LBB3_84
.LBB3_81:
	ld.w	$a3, $a0, 496
	st.w	$a3, $s1, 8
	ld.w	$a0, $a0, 8
	sub.d	$a0, $a3, $a0
	st.w	$a3, $a1, 36
.LBB3_82:
	ld.w	$a3, $s1, 424
	st.w	$a0, $s1, 4
	pcalau12i	$a4, %pc_hi20(delta_qp_mbaff)
	addi.d	$a4, $a4, %pc_lo12(delta_qp_mbaff)
	ldptr.w	$a5, $a1, 15412
	alsl.d	$a3, $a3, $a4, 3
	slli.d	$a4, $a5, 2
	stx.w	$a0, $a3, $a4
.LBB3_83:
	ld.w	$a0, $s1, 8
	ld.w	$a3, $s1, 424
	pcalau12i	$a4, %pc_hi20(qp_mbaff)
	addi.d	$a4, $a4, %pc_lo12(qp_mbaff)
	ldptr.w	$a5, $a1, 15412
	alsl.d	$a3, $a3, $a4, 3
	slli.d	$a4, $a5, 2
	stx.w	$a0, $a3, $a4
.LBB3_84:
	ldptr.w	$a3, $a1, 15408
	bnez	$a3, .LBB3_29
# %bb.85:
	ldptr.w	$a3, $a2, 4708
	beqz	$a3, .LBB3_88
# %bb.86:
	ldptr.w	$a4, $a1, 15412
	beqz	$a4, .LBB3_88
# %bb.87:
	ld.w	$a2, $a1, 36
	st.w	$a2, $s1, 496
	b	.LBB3_29
.LBB3_88:
	ldptr.w	$a0, $a1, 15388
	blez	$a0, .LBB3_92
# %bb.89:
	ldptr.w	$a4, $a1, 15404
	mod.wu	$a0, $a0, $a4
	bnez	$a0, .LBB3_92
# %bb.90:
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ld.w	$a0, $a0, 1148
	beqz	$a0, .LBB3_104
.LBB3_91:                               # %.thread.sink.split
	pcalau12i	$s5, %pc_hi20(quadratic_RC)
	ld.d	$a0, $s5, %pc_lo12(quadratic_RC)
	pcaddu18i	$ra, %call36(updateRCModel)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(generic_RC)
	ld.d	$a1, $a0, %pc_lo12(generic_RC)
	pcalau12i	$a0, %pc_hi20(updateQP)
	ld.d	$a2, $a0, %pc_lo12(updateQP)
	ld.d	$a0, $s5, %pc_lo12(quadratic_RC)
	ld.w	$a1, $a1, 0
	jirl	$ra, $a2, 0
	ld.d	$a1, $s2, 0
	stptr.w	$a0, $a1, 15392
.LBB3_92:                               # %.thread
	ld.w	$a0, $a1, 12
	beqz	$a0, .LBB3_94
# %bb.93:                               # %.thread._crit_edge
	ori	$a0, $s0, 3104
	ldx.w	$a0, $a1, $a0
	b	.LBB3_95
.LBB3_94:
	ld.w	$a0, $a1, 36
	stptr.w	$a0, $a1, 15392
.LBB3_95:
	ld.w	$a2, $s1, 8
	ori	$a3, $s0, 3184
	ldx.w	$a4, $a1, $a3
	ldptr.w	$a3, $a1, 15468
	sub.w	$a5, $a2, $a4
	add.w	$a6, $a3, $a2
	slt	$a7, $a5, $a0
	masknez	$a5, $a5, $a7
	maskeqz	$a0, $a0, $a7
	or	$a0, $a0, $a5
	slt	$a5, $a0, $a6
	maskeqz	$a0, $a0, $a5
	masknez	$a5, $a6, $a5
	ld.w	$a6, $s1, 4
	or	$a0, $a0, $a5
	st.w	$a0, $s1, 508
	sub.d	$a0, $a0, $a2
	add.w	$a0, $a0, $a6
	pcalau12i	$a5, %pc_hi20(dq)
	st.w	$a0, $a5, %pc_lo12(dq)
	sub.w	$a4, $zero, $a4
	pcalau12i	$a2, %pc_hi20(predict_error)
	bge	$a0, $a4, .LBB3_97
# %bb.96:
	st.w	$a4, $a5, %pc_lo12(dq)
	ld.w	$a0, $s1, 4
	ld.w	$a3, $a1, 36
	sub.d	$a0, $a4, $a0
	st.w	$a0, $a2, %pc_lo12(predict_error)
	add.d	$a0, $a3, $a0
	st.w	$a0, $a1, 36
	st.w	$a4, $s1, 4
	b	.LBB3_100
.LBB3_97:
	bge	$a3, $a0, .LBB3_99
# %bb.98:
	st.w	$a3, $a5, %pc_lo12(dq)
	ld.w	$a0, $s1, 4
	ld.w	$a4, $a1, 36
	sub.d	$a0, $a3, $a0
	st.w	$a0, $a2, %pc_lo12(predict_error)
	add.d	$a0, $a4, $a0
	st.w	$a0, $a1, 36
	st.w	$a3, $s1, 4
	b	.LBB3_100
.LBB3_99:
	ld.w	$a3, $s1, 508
	ld.w	$a4, $s1, 8
	st.w	$a0, $s1, 4
	sub.d	$a0, $a3, $a4
	st.w	$a0, $a2, %pc_lo12(predict_error)
	ld.w	$a0, $s1, 508
	st.w	$a0, $a1, 36
.LBB3_100:
	ld.d	$a3, $s3, 0
	ldptr.w	$a3, $a3, 4708
	st.w	$a0, $s1, 8
	beqz	$a3, .LBB3_102
# %bb.101:
	ld.w	$a0, $s1, 4
	ld.w	$a3, $s1, 424
	pcalau12i	$a4, %pc_hi20(delta_qp_mbaff)
	addi.d	$a4, $a4, %pc_lo12(delta_qp_mbaff)
	ldptr.w	$a5, $a1, 15412
	alsl.d	$a3, $a3, $a4, 3
	slli.d	$a4, $a5, 2
	stx.w	$a0, $a3, $a4
	ld.w	$a0, $s1, 8
	ld.w	$a3, $s1, 424
	pcalau12i	$a4, %pc_hi20(qp_mbaff)
	addi.d	$a4, $a4, %pc_lo12(qp_mbaff)
	ldptr.w	$a5, $a1, 15412
	alsl.d	$a3, $a3, $a4, 3
	slli.d	$a4, $a5, 2
	stx.w	$a0, $a3, $a4
.LBB3_102:
	ld.w	$a2, $a2, %pc_lo12(predict_error)
	st.w	$a2, $s1, 512
	b	.LBB3_29
.LBB3_103:
	ld.w	$a0, $a1, 36
	ld.w	$a3, $s1, 424
	st.w	$zero, $s1, 4
	st.w	$a0, $s1, 8
	slli.d	$a0, $a3, 3
	pcalau12i	$a3, %pc_hi20(delta_qp_mbaff)
	addi.d	$a3, $a3, %pc_lo12(delta_qp_mbaff)
	stx.w	$zero, $a3, $a0
	b	.LBB3_83
.LBB3_104:
	ldptr.w	$a0, $a2, 4704
	beqz	$a0, .LBB3_107
# %bb.105:
	bnez	$a3, .LBB3_91
# %bb.106:
	pcalau12i	$a0, %pc_hi20(generic_RC)
	ld.d	$a0, $a0, %pc_lo12(generic_RC)
	ld.w	$a0, $a0, 12
	bnez	$a0, .LBB3_92
	b	.LBB3_91
.LBB3_107:
	bnez	$a3, .LBB3_91
	b	.LBB3_92
.Lfunc_end3:
	.size	start_macroblock, .Lfunc_end3-start_macroblock
                                        # -- End function
	.globl	terminate_macroblock            # -- Begin function terminate_macroblock
	.p2align	5
	.type	terminate_macroblock,@function
terminate_macroblock:                   # @terminate_macroblock
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
	move	$s0, $a1
	move	$s6, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s3, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s3, 0
	ldptr.d	$s5, $a0, 14216
	ldptr.d	$a1, $a0, 14224
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.w	$s1, $a0, 12
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s8, $a0, %got_pc_lo12(input)
	ld.d	$a0, $s8, 0
	ldptr.w	$a1, $a0, 4016
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(assignSE2partition)
	ld.d	$a2, $a2, %got_pc_lo12(assignSE2partition)
	ldx.d	$a1, $a2, $a1
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.w	$s7, $a0, 264
	ori	$s2, $zero, 1
	beqz	$s1, .LBB4_3
# %bb.1:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FmoGetPreviousMBNr)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_3
# %bb.2:
	ld.d	$a0, $s3, 0
	ldptr.d	$fp, $a0, 14224
	ld.w	$a0, $a0, 12
	pcaddu18i	$ra, %call36(FmoGetPreviousMBNr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ori	$a2, $zero, 536
	mul.d	$a0, $a0, $a2
	ldx.w	$a0, $fp, $a0
	ld.w	$a1, $a1, 16
	xor	$a0, $a0, $a1
	sltui	$s4, $a0, 1
	sltu	$s2, $zero, $a0
	b	.LBB4_4
.LBB4_3:
	move	$s4, $zero
.LBB4_4:
	ld.d	$a0, $s8, 0
	st.w	$zero, $s0, 0
	ld.w	$a3, $a0, 264
	ori	$a0, $zero, 3
	bltu	$a0, $a3, .LBB4_17
# %bb.5:
	slli.d	$a0, $a3, 2
	pcalau12i	$a1, %pc_hi20(.LJTI4_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI4_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB4_6:
	ld.w	$a0, $s5, 20
	addi.d	$a1, $a0, 1
	ld.d	$a0, $s3, 0
	st.w	$a1, $s5, 20
	st.w	$zero, $s0, 0
	ld.w	$a1, $s5, 20
	ldptr.w	$a2, $a0, 15348
	bne	$a1, $a2, .LBB4_18
# %bb.7:
	ori	$fp, $zero, 1
	st.w	$fp, $s6, 0
	b	.LBB4_19
.LBB4_8:
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $s3, 0
	ld.w	$a0, $a0, 144
	beqz	$a0, .LBB4_22
# %bb.9:
	st.w	$a0, $sp, 52
	st.w	$zero, $sp, 56
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 8
	ld.d	$fp, $s5, 24
	st.w	$a0, $sp, 48
	ori	$a0, $zero, 104
	mul.d	$s2, $a1, $a0
	add.d	$a1, $fp, $s2
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(writeSE_UVLC)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $fp, $s2
	ld.w	$s6, $sp, 60
	ld.d	$a1, $a0, 0
	ld.b	$a2, $a0, 8
	ld.d	$a3, $a0, 12
	ld.b	$a4, $a0, 20
	st.d	$a1, $a0, 24
	st.b	$a2, $a0, 21
	st.d	$a3, $a0, 0
	st.b	$a4, $a0, 8
	pcalau12i	$a0, %pc_hi20(terminate_macroblock.skip)
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(terminate_macroblock.skip)
	bnez	$s4, .LBB4_23
	b	.LBB4_37
.LBB4_10:
	ld.d	$a0, $s3, 0
	ld.w	$a0, $a0, 12
	slti	$a0, $a0, 1
	or	$a0, $s2, $a0
	bnez	$a0, .LBB4_13
# %bb.11:
	ld.d	$a1, $s5, 112
	move	$a0, $zero
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_13
# %bb.12:
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 0
	st.w	$a0, $s6, 0
.LBB4_13:
	ld.w	$a0, $s0, 0
	bnez	$a0, .LBB4_57
# %bb.14:
	ld.d	$a0, $s3, 0
	ld.w	$s2, $a0, 12
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FmoMB2SliceGroup)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(FmoGetLastCodedMBOfSliceGroup)
	jirl	$ra, $ra, 0
	bne	$s2, $a0, .LBB4_20
# %bb.15:
	ori	$a0, $zero, 1
	st.w	$a0, $s6, 0
	ld.w	$a0, $s0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_58
	b	.LBB4_21
.LBB4_16:
	ld.w	$a0, $s5, 20
	ld.d	$a1, $s3, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, 20
	st.w	$zero, $s0, 0
	ld.w	$s2, $a1, 12
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FmoMB2SliceGroup)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(FmoGetLastCodedMBOfSliceGroup)
	jirl	$ra, $ra, 0
	xor	$a0, $s2, $a0
	ld.d	$a1, $s8, 0
	sltui	$a0, $a0, 1
	st.w	$a0, $s6, 0
	ld.w	$a2, $s5, 20
	ld.w	$a1, $a1, 268
	slt	$a1, $a2, $a1
	xori	$a1, $a1, 1
	or	$a0, $a0, $a1
	st.w	$a0, $s6, 0
	ld.w	$a0, $s0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_58
	b	.LBB4_21
.LBB4_17:
	pcalau12i	$a0, %pc_hi20(errortext)
	addi.d	$s2, $a0, %pc_lo12(errortext)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 300
	move	$a0, $s2
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 600
	move	$a0, $s2
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_58
	b	.LBB4_21
.LBB4_18:                               # %._crit_edge
	ld.w	$fp, $s6, 0
.LBB4_19:
	ld.w	$s2, $a0, 12
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FmoMB2SliceGroup)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(FmoGetLastCodedMBOfSliceGroup)
	jirl	$ra, $ra, 0
	xor	$a0, $s2, $a0
	sltui	$a0, $a0, 1
	or	$a0, $fp, $a0
	st.w	$a0, $s6, 0
.LBB4_20:                               # %thread-pre-split
	ld.w	$a0, $s0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_58
.LBB4_21:                               # %..loopexit_crit_edge
	ld.d	$a0, $s8, 0
	b	.LBB4_67
.LBB4_22:
	move	$s6, $zero
	beqz	$s4, .LBB4_37
.LBB4_23:
	ld.d	$a3, $s8, 0
	ld.d	$a0, $s3, 0
	ldptr.w	$a1, $a3, 4008
	ldptr.d	$s2, $a0, 14216
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB4_29
# %bb.24:
	bnez	$a1, .LBB4_35
# %bb.25:                               # %.preheader23.i
	ld.w	$a1, $s2, 16
	blez	$a1, .LBB4_35
# %bb.26:                               # %.lr.ph.i
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a2, $s2, 24
	ld.w	$a3, $a3, 268
	.p2align	4, , 16
.LBB4_27:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.w	$a5, $a4, 4
	ld.w	$a4, $a4, 0
	slti	$a6, $a5, 8
	add.d	$a4, $a4, $a6
	slt	$a5, $a5, $s6
	add.w	$a4, $a4, $a5
	blt	$a3, $a4, .LBB4_41
# %bb.28:                               #   in Loop: Header=BB4_27 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 104
	bnez	$a1, .LBB4_27
	b	.LBB4_34
.LBB4_29:                               # %.preheader.i
	ld.w	$a1, $s2, 16
	blez	$a1, .LBB4_35
# %bb.30:                               # %.lr.ph27.i.preheader
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	move	$s7, $zero
	ori	$fp, $zero, 8
	.p2align	4, , 16
.LBB4_31:                               # %.lr.ph27.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 24
	add.d	$a0, $a0, $fp
	pcaddu18i	$ra, %call36(arienco_bits_written)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	ld.w	$a1, $a1, 268
	slli.w	$a1, $a1, 3
	blt	$a1, $a0, .LBB4_41
# %bb.32:                               #   in Loop: Header=BB4_31 Depth=1
	ld.w	$a0, $s2, 16
	addi.d	$s7, $s7, 1
	addi.d	$fp, $fp, 104
	blt	$s7, $a0, .LBB4_31
# %bb.33:                               # %.loopexit129.loopexit136
	ld.d	$a0, $s3, 0
.LBB4_34:                               # %.loopexit129
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
.LBB4_35:                               # %.loopexit129
	ld.w	$a0, $a0, 144
	bnez	$a0, .LBB4_37
# %bb.36:
	pcalau12i	$a0, %pc_hi20(terminate_macroblock.skip)
	st.b	$zero, $a0, %pc_lo12(terminate_macroblock.skip)
.LBB4_37:
	ld.w	$a0, $s0, 0
	bnez	$a0, .LBB4_42
.LBB4_38:
	ld.d	$a0, $s3, 0
	ld.w	$s2, $a0, 12
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FmoMB2SliceGroup)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(FmoGetLastCodedMBOfSliceGroup)
	jirl	$ra, $ra, 0
	bne	$s2, $a0, .LBB4_42
# %bb.39:
	ld.d	$a0, $s3, 0
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	ld.w	$a0, $a0, 144
	bnez	$a0, .LBB4_42
# %bb.40:
	pcalau12i	$a0, %pc_hi20(terminate_macroblock.skip)
	st.b	$zero, $a0, %pc_lo12(terminate_macroblock.skip)
	b	.LBB4_42
.LBB4_41:                               # %slice_too_big.exit
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $s0, 0
	beqz	$a0, .LBB4_38
.LBB4_42:
	bnez	$s4, .LBB4_56
# %bb.43:
	ld.d	$a3, $s8, 0
	ld.d	$a0, $s3, 0
	ldptr.w	$a1, $a3, 4008
	ldptr.d	$s2, $a0, 14216
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB4_49
# %bb.44:
	bnez	$a1, .LBB4_56
# %bb.45:                               # %.preheader23.i112
	ld.w	$a1, $s2, 16
	blez	$a1, .LBB4_56
# %bb.46:                               # %.lr.ph.i113
	ld.d	$a2, $s2, 24
	ld.w	$a3, $a3, 268
	.p2align	4, , 16
.LBB4_47:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.w	$a5, $a4, 4
	ld.w	$a4, $a4, 0
	slti	$a6, $a5, 8
	add.d	$a4, $a4, $a6
	slt	$a5, $a5, $s6
	add.w	$a4, $a4, $a5
	blt	$a3, $a4, .LBB4_54
# %bb.48:                               #   in Loop: Header=BB4_47 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 104
	bnez	$a1, .LBB4_47
	b	.LBB4_56
.LBB4_49:                               # %.preheader.i107
	ld.w	$a0, $s2, 16
	blez	$a0, .LBB4_56
# %bb.50:                               # %.lr.ph27.i109.preheader
	move	$s4, $zero
	ori	$fp, $zero, 8
	.p2align	4, , 16
.LBB4_51:                               # %.lr.ph27.i109
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 24
	add.d	$a0, $a0, $fp
	pcaddu18i	$ra, %call36(arienco_bits_written)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	ld.w	$a1, $a1, 268
	slli.w	$a1, $a1, 3
	blt	$a1, $a0, .LBB4_53
# %bb.52:                               #   in Loop: Header=BB4_51 Depth=1
	ld.w	$a0, $s2, 16
	addi.d	$s4, $s4, 1
	addi.d	$fp, $fp, 104
	blt	$s4, $a0, .LBB4_51
	b	.LBB4_56
.LBB4_53:                               # %slice_too_big.exit120.loopexit133
	ld.d	$a0, $s3, 0
.LBB4_54:                               # %slice_too_big.exit120
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	ld.w	$a0, $a0, 144
	bnez	$a0, .LBB4_56
# %bb.55:
	pcalau12i	$a0, %pc_hi20(terminate_macroblock.skip)
	st.b	$zero, $a0, %pc_lo12(terminate_macroblock.skip)
.LBB4_56:                               # %slice_too_big.exit120.thread
	ld.w	$a0, $s0, 0
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB4_81
.LBB4_57:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB4_21
.LBB4_58:                               # %.preheader
	ld.w	$a1, $s5, 16
	ld.d	$a0, $s8, 0
	blez	$a1, .LBB4_67
# %bb.59:                               # %.lr.ph
	ldptr.w	$a3, $a0, 4008
	ori	$a2, $zero, 1
	bne	$a3, $a2, .LBB4_64
# %bb.60:                               # %.lr.ph.split.preheader
	pcalau12i	$a3, %got_pc_hi20(stats)
	ld.d	$a3, $a3, %got_pc_lo12(stats)
	ld.d	$a6, $a3, 0
	move	$a4, $zero
	move	$a5, $zero
	b	.LBB4_62
	.p2align	4, , 16
.LBB4_61:                               #   in Loop: Header=BB4_62 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 104
	bge	$a5, $a1, .LBB4_67
.LBB4_62:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $s5, 24
	ldx.d	$t0, $a7, $a4
	ld.d	$t1, $t0, 12
	st.d	$t1, $t0, 0
	ld.b	$t1, $t0, 20
	ld.w	$t2, $a6, 36
	ldptr.w	$t3, $a0, 4008
	st.b	$t1, $t0, 8
	st.w	$t2, $a6, 32
	bne	$t3, $a2, .LBB4_61
# %bb.63:                               #   in Loop: Header=BB4_62 Depth=1
	add.d	$a0, $a7, $a4
	vld	$vr0, $a0, 88
	vld	$vr1, $a0, 72
	vld	$vr2, $a0, 56
	vst	$vr0, $a0, 40
	vst	$vr1, $a0, 24
	vst	$vr2, $a0, 8
	ld.d	$a6, $a3, 0
	ld.d	$a0, $s8, 0
	ld.w	$a1, $s5, 16
	b	.LBB4_61
.LBB4_64:                               # %.lr.ph.split.us
	ld.d	$a2, $s5, 24
	pcalau12i	$a3, %got_pc_hi20(stats)
	ld.d	$a3, $a3, %got_pc_lo12(stats)
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a3, 36
	.p2align	4, , 16
.LBB4_65:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a5, 12
	ld.b	$a7, $a5, 20
	st.d	$a6, $a5, 0
	st.b	$a7, $a5, 8
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 104
	bnez	$a1, .LBB4_65
# %bb.66:                               # %..loopexit_crit_edge.split.us
	st.w	$a4, $a3, 32
.LBB4_67:                               # %.loopexit
	ldptr.w	$a0, $a0, 4008
	bnez	$a0, .LBB4_80
# %bb.68:
	ori	$a0, $zero, 536
	mul.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$s2, $a1, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	ld.d	$a2, $s5, 24
	ld.w	$a1, $s6, 0
	ori	$a3, $zero, 104
	mul.d	$a0, $a0, $a3
	ori	$s4, $zero, 1
	add.d	$s1, $a2, $a0
	bne	$a1, $s4, .LBB4_76
# %bb.69:
	pcalau12i	$a0, %pc_hi20(terminate_macroblock.skip)
	ld.b	$a2, $a0, %pc_lo12(terminate_macroblock.skip)
	andi	$a2, $a2, 1
	beqz	$a2, .LBB4_76
# %bb.70:
	ld.d	$a1, $s3, 0
	ld.w	$a2, $a1, 144
	beqz	$a2, .LBB4_74
# %bb.71:
	ld.w	$a3, $s0, 0
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB4_74
# %bb.72:
	addi.w	$a0, $a2, -1
	st.w	$a0, $a1, 144
	beqz	$a0, .LBB4_75
# %bb.73:
	st.w	$a0, $sp, 52
	st.w	$zero, $sp, 56
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 48
	addi.d	$a0, $sp, 48
	move	$a1, $s1
	pcaddu18i	$ra, %call36(writeSE_UVLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 60
	ld.w	$a1, $s2, 32
	ld.d	$a2, $s3, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $s2, 32
	st.w	$zero, $a2, 144
	b	.LBB4_75
.LBB4_74:
	ld.d	$a2, $s1, 0
	ld.d	$a3, $a2, 24
	ld.b	$a4, $a2, 21
	st.d	$a3, $a2, 0
	st.b	$a4, $a2, 8
	st.w	$zero, $a1, 144
	st.b	$zero, $a0, %pc_lo12(terminate_macroblock.skip)
.LBB4_75:                               # %thread-pre-split125
	ld.w	$a1, $s6, 0
.LBB4_76:
	bne	$a1, $s4, .LBB4_80
# %bb.77:
	ld.d	$a0, $s3, 0
	ld.w	$a0, $a0, 144
	beqz	$a0, .LBB4_80
# %bb.78:
	bstrins.d	$s7, $zero, 0, 0
	addi.w	$a2, $s7, 0
	ori	$a1, $zero, 2
	beq	$a2, $a1, .LBB4_80
# %bb.79:
	st.w	$a0, $sp, 52
	st.w	$zero, $sp, 56
	st.w	$a1, $sp, 48
	addi.d	$a0, $sp, 48
	move	$a1, $s1
	pcaddu18i	$ra, %call36(writeSE_UVLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 60
	ld.w	$a1, $s2, 32
	ld.d	$a2, $s3, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $s2, 32
	st.w	$zero, $a2, 144
.LBB4_80:
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
.LBB4_81:
	ld.w	$a0, $s5, 20
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, 20
	ld.w	$a0, $s0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_58
	b	.LBB4_21
.Lfunc_end4:
	.size	terminate_macroblock, .Lfunc_end4-terminate_macroblock
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_6-.LJTI4_0
	.word	.LBB4_16-.LJTI4_0
	.word	.LBB4_8-.LJTI4_0
	.word	.LBB4_10-.LJTI4_0
                                        # -- End function
	.text
	.globl	OneComponentLumaPrediction4x4   # -- Begin function OneComponentLumaPrediction4x4
	.p2align	5
	.type	OneComponentLumaPrediction4x4,@function
OneComponentLumaPrediction4x4:          # @OneComponentLumaPrediction4x4
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a5, $a4
	lu12i.w	$a5, 1
	ori	$a6, $a5, 2312
	ldx.w	$a6, $a4, $a6
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(width_pad)
	st.w	$a6, $a0, %pc_lo12(width_pad)
	ori	$a0, $a5, 2316
	ldx.w	$a5, $a4, $a0
	pcalau12i	$a6, %pc_hi20(height_pad)
	ld.h	$a7, $a3, 2
	ld.h	$t0, $a3, 0
	ldptr.d	$a0, $a4, 6448
	st.w	$a5, $a6, %pc_lo12(height_pad)
	add.w	$a3, $a2, $a7
	add.w	$a2, $a1, $t0
	move	$a1, $a3
	pcaddu18i	$ra, %call36(UMVLine4X)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	st.d	$a1, $fp, 0
	pcalau12i	$a1, %pc_hi20(img_padded_size_x)
	ld.w	$a1, $a1, %pc_lo12(img_padded_size_x)
	slli.d	$a2, $a1, 1
	ldx.d	$a3, $a0, $a2
	alsl.d	$a0, $a1, $a0, 1
	st.d	$a3, $fp, 8
	ldx.d	$a3, $a0, $a2
	alsl.d	$a0, $a1, $a0, 1
	st.d	$a3, $fp, 16
	ldx.d	$a0, $a0, $a2
	st.d	$a0, $fp, 24
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	OneComponentLumaPrediction4x4, .Lfunc_end5-OneComponentLumaPrediction4x4
                                        # -- End function
	.globl	LumaPrediction4x4               # -- Begin function LumaPrediction4x4
	.p2align	5
	.type	LumaPrediction4x4,@function
LumaPrediction4x4:                      # @LumaPrediction4x4
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
	move	$s6, $a6
	move	$s7, $a5
	move	$s3, $a2
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$s2, $a2, %got_pc_lo12(img)
	ld.d	$a5, $s2, 0
	ld.w	$a6, $a5, 192
	ld.w	$a2, $a5, 196
	add.d	$t8, $a6, $a0
	ori	$t7, $zero, 80
	add.d	$a2, $a2, $a1
	pcalau12i	$a6, %pc_hi20(active_pps)
	ld.d	$t0, $a6, %pc_lo12(active_pps)
	ld.w	$a6, $a5, 12
	ldptr.d	$a7, $a5, 14224
	ori	$t1, $zero, 536
	ld.w	$t2, $t0, 192
	mul.d	$t1, $a6, $t1
	srai.d	$a6, $a0, 2
	add.d	$s4, $a7, $t1
	srai.d	$a7, $a1, 2
	beqz	$t2, .LBB6_3
# %bb.1:
	ld.w	$t1, $a5, 20
	ori	$s8, $zero, 1
	beqz	$t1, .LBB6_6
# %bb.2:
	ori	$t2, $zero, 3
	beq	$t1, $t2, .LBB6_6
.LBB6_3:
	ld.w	$t0, $t0, 196
	beqz	$t0, .LBB6_5
# %bb.4:
	ld.w	$t0, $a5, 20
	addi.d	$t0, $t0, -1
	sltui	$s8, $t0, 1
	b	.LBB6_6
.LBB6_5:
	move	$s8, $zero
.LBB6_6:
	ld.hu	$t0, $s4, 480
	sltu	$t1, $zero, $t0
	or	$t2, $s6, $s7
	sltui	$t2, $t2, 1
	addi.d	$t3, $a3, -1
	sltui	$t3, $t3, 1
	addi.d	$t4, $a4, -1
	sltui	$t4, $t4, 1
	addi.d	$t0, $t0, -1
	sltui	$t0, $t0, 1
	lu12i.w	$fp, 3
	ori	$t5, $fp, 2112
	masknez	$t5, $t5, $t0
	ori	$t6, $fp, 2104
	maskeqz	$t0, $t6, $t0
	or	$t0, $t0, $t5
	maskeqz	$t0, $t0, $t1
	ori	$t5, $fp, 2096
	masknez	$t1, $t5, $t1
	or	$t0, $t0, $t1
	maskeqz	$t0, $t0, $t2
	masknez	$t1, $t5, $t2
	or	$t0, $t0, $t1
	maskeqz	$t0, $t0, $t3
	masknez	$t1, $t5, $t3
	or	$t0, $t0, $t1
	maskeqz	$t0, $t0, $t4
	masknez	$t1, $t5, $t4
	or	$t0, $t0, $t1
	addi.d	$t1, $s3, -2
	sltui	$t1, $t1, 1
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $t5, $t1
	or	$t0, $t0, $t1
	ldx.d	$a5, $a5, $t0
	slli.d	$a7, $a7, 3
	ldx.d	$a5, $a5, $a7
	addi.w	$a7, $a0, 4
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	addi.w	$s1, $a1, 4
	slli.d	$a6, $a6, 3
	ldx.d	$s0, $a5, $a6
	alsl.w	$s5, $t8, $t7, 2
	ori	$a1, $zero, 2
	alsl.w	$fp, $a2, $t7, 2
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	beq	$s3, $a1, .LBB6_12
# %bb.7:
	ori	$a1, $zero, 1
	beq	$s3, $a1, .LBB6_10
# %bb.8:
	bnez	$s3, .LBB6_14
# %bb.9:
	ld.d	$a0, $s0, 0
	slli.d	$a1, $s7, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a2, $a3, 3
	ld.w	$a3, $s4, 432
	ldx.d	$a0, $a0, $a2
	slli.d	$a2, $a3, 3
	pcalau12i	$a3, %got_pc_hi20(listX)
	ld.d	$a3, $a3, %got_pc_lo12(listX)
	ldx.d	$a2, $a3, $a2
	ldx.d	$a1, $a2, $a1
	lu12i.w	$a2, 1
	ori	$a3, $a2, 2312
	ldx.w	$a3, $a1, $a3
	pcalau12i	$a4, %pc_hi20(width_pad)
	st.w	$a3, $a4, %pc_lo12(width_pad)
	ori	$a2, $a2, 2316
	ldx.w	$a2, $a1, $a2
	pcalau12i	$a3, %pc_hi20(height_pad)
	ld.h	$a4, $a0, 2
	ld.h	$a5, $a0, 0
	ldptr.d	$a0, $a1, 6448
	st.w	$a2, $a3, %pc_lo12(height_pad)
	add.w	$a1, $fp, $a4
	add.w	$a2, $s5, $a5
	pcaddu18i	$ra, %call36(UMVLine4X)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(LumaPrediction4x4.l0_pred)
	addi.d	$a2, $a2, %pc_lo12(LumaPrediction4x4.l0_pred)
	b	.LBB6_11
.LBB6_10:
	ld.d	$a0, $s0, 8
	slli.d	$a1, $s6, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a2, $a4, 3
	ldx.d	$a0, $a0, $a2
	ld.w	$a2, $s4, 432
	pcalau12i	$a3, %got_pc_hi20(listX)
	ld.d	$a3, $a3, %got_pc_lo12(listX)
	alsl.d	$a2, $a2, $a3, 3
	ld.d	$a2, $a2, 8
	ldx.d	$a1, $a2, $a1
	lu12i.w	$a2, 1
	ori	$a3, $a2, 2312
	ldx.w	$a3, $a1, $a3
	pcalau12i	$a4, %pc_hi20(width_pad)
	st.w	$a3, $a4, %pc_lo12(width_pad)
	ori	$a2, $a2, 2316
	ldx.w	$a2, $a1, $a2
	pcalau12i	$a3, %pc_hi20(height_pad)
	ld.h	$a4, $a0, 2
	ld.h	$a5, $a0, 0
	ldptr.d	$a0, $a1, 6448
	st.w	$a2, $a3, %pc_lo12(height_pad)
	add.w	$a1, $fp, $a4
	add.w	$a2, $s5, $a5
	pcaddu18i	$ra, %call36(UMVLine4X)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(LumaPrediction4x4.l1_pred)
	addi.d	$a2, $a2, %pc_lo12(LumaPrediction4x4.l1_pred)
.LBB6_11:
	pcalau12i	$a3, %pc_hi20(img_padded_size_x)
	ld.w	$a3, $a3, %pc_lo12(img_padded_size_x)
	b	.LBB6_13
.LBB6_12:
	ld.d	$a0, $s0, 0
	slli.d	$a1, $s7, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a2, $a3, 3
	ld.w	$a3, $s4, 432
	ldx.d	$a0, $a0, $a2
	slli.d	$a2, $a3, 3
	pcalau12i	$a3, %got_pc_hi20(listX)
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s6, $a3, %got_pc_lo12(listX)
	ldx.d	$a2, $s6, $a2
	ldx.d	$a1, $a2, $a1
	lu12i.w	$a2, 1
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	ori	$s8, $a2, 2312
	ldx.w	$a3, $a1, $s8
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(width_pad)
	st.w	$a3, $s2, %pc_lo12(width_pad)
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	ori	$s1, $a2, 2316
	ldx.w	$a2, $a1, $s1
	pcalau12i	$a6, %pc_hi20(height_pad)
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	ld.h	$a3, $a0, 2
	ld.h	$a5, $a0, 0
	ldptr.d	$a0, $a1, 6448
	st.w	$a2, $a6, %pc_lo12(height_pad)
	add.w	$a1, $fp, $a3
	add.w	$a2, $s5, $a5
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(UMVLine4X)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(LumaPrediction4x4.l0_pred)
	addi.d	$a2, $a2, %pc_lo12(LumaPrediction4x4.l0_pred)
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(img_padded_size_x)
	ld.w	$a3, $s7, %pc_lo12(img_padded_size_x)
	st.d	$a1, $a2, 0
	slli.d	$a1, $a3, 1
	ldx.d	$a4, $a0, $a1
	alsl.d	$a0, $a3, $a0, 1
	st.d	$a4, $a2, 8
	ldx.d	$a4, $a0, $a1
	alsl.d	$a0, $a3, $a0, 1
	st.d	$a4, $a2, 16
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $a2, 24
	ld.w	$a0, $s4, 432
	alsl.d	$a0, $a0, $s6, 3
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$a1, $s0, 8
	slli.d	$a2, $s6, 3
	ldx.d	$a0, $a0, $a2
	ldx.d	$a1, $a1, $a2
	ldx.w	$a2, $a0, $s8
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	st.w	$a2, $s2, %pc_lo12(width_pad)
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a2, $a0, $s1
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.h	$a3, $a1, 2
	ld.h	$a4, $a1, 0
	ldptr.d	$a0, $a0, 6448
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a2, $a1, %pc_lo12(height_pad)
	add.w	$a1, $fp, $a3
	add.w	$a2, $s5, $a4
	pcaddu18i	$ra, %call36(UMVLine4X)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(LumaPrediction4x4.l1_pred)
	addi.d	$a2, $a2, %pc_lo12(LumaPrediction4x4.l1_pred)
	ld.w	$a3, $s7, %pc_lo12(img_padded_size_x)
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
.LBB6_13:
	st.d	$a1, $a2, 0
	slli.d	$a1, $a3, 1
	ldx.d	$a4, $a0, $a1
	alsl.d	$a0, $a3, $a0, 1
	st.d	$a4, $a2, 8
	ldx.d	$a4, $a0, $a1
	alsl.d	$a0, $a3, $a0, 1
	st.d	$a4, $a2, 16
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $a2, 24
.LBB6_14:
	ori	$a0, $zero, 2
	beqz	$s8, .LBB6_18
# %bb.15:
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	bne	$s3, $a0, .LBB6_21
# %bb.16:                               # %.preheader
	pcalau12i	$a0, %pc_hi20(wbp_weight)
	ld.d	$a0, $a0, %pc_lo12(wbp_weight)
	ld.d	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(wp_offset)
	ld.d	$a2, $a2, %pc_lo12(wp_offset)
	slli.d	$a3, $s7, 3
	ldx.d	$a1, $a1, $a3
	ld.d	$a0, $a0, 8
	ld.d	$a4, $a2, 0
	ld.d	$a2, $a2, 8
	slli.d	$a5, $s6, 3
	ldx.d	$a0, $a0, $a3
	ldx.d	$a3, $a4, $a3
	ldx.d	$a2, $a2, $a5
	ldx.d	$a1, $a1, $a5
	ldx.d	$a4, $a0, $a5
	ld.w	$a3, $a3, 0
	ld.w	$a2, $a2, 0
	ld.w	$a0, $a1, 0
	ld.w	$a1, $a4, 0
	add.d	$a2, $a3, $a2
	addi.w	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(wp_luma_round)
	ld.w	$a6, $a3, %pc_lo12(wp_luma_round)
	pcalau12i	$a3, %pc_hi20(luma_log_weight_denom)
	ld.w	$a4, $a3, %pc_lo12(luma_log_weight_denom)
	ld.d	$a7, $s2, 0
	srai.d	$a3, $a2, 1
	slli.d	$a5, $a6, 1
	addi.d	$a4, $a4, 1
	ldptr.w	$a2, $a7, 15520
	lu12i.w	$t0, 3
	ori	$t0, $t0, 336
	add.d	$t0, $a7, $t0
	slli.d	$a7, $fp, 5
	add.d	$t3, $t0, $a7
	pcalau12i	$a7, %pc_hi20(LumaPrediction4x4.l0_pred)
	addi.d	$t1, $a7, %pc_lo12(LumaPrediction4x4.l0_pred)
	ld.hu	$a7, $t1, 0
	mul.d	$a7, $a0, $a7
	pcalau12i	$t2, %pc_hi20(LumaPrediction4x4.l1_pred)
	addi.d	$t2, $t2, %pc_lo12(LumaPrediction4x4.l1_pred)
	ld.hu	$t4, $t2, 0
	mul.d	$t4, $a1, $t4
	alsl.d	$a6, $a6, $a7, 1
	add.d	$a6, $a6, $t4
	sra.w	$a6, $a6, $a4
	add.w	$a6, $a6, $a3
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a2, $a7
	or	$a6, $a6, $a7
	slli.d	$a7, $t7, 1
	stx.h	$a6, $t3, $a7
	addi.d	$a7, $t7, 1
	slli.d	$a6, $a7, 1
	ld.d	$t8, $sp, 64                    # 8-byte Folded Reload
	bge	$a7, $t8, .LBB6_25
# %bb.17:
	ld.hu	$t4, $t1, 2
	ld.hu	$t5, $t2, 2
	mul.d	$t4, $a0, $t4
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	stx.h	$t4, $t3, $a6
	ld.hu	$t4, $t1, 4
	ld.hu	$t5, $t2, 4
	mul.d	$t4, $a0, $t4
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	alsl.d	$t3, $t7, $t3, 1
	st.h	$t4, $t3, 4
	ld.hu	$t4, $t1, 6
	ld.hu	$t5, $t2, 6
	mul.d	$t4, $a0, $t4
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	st.h	$t4, $t3, 6
	addi.d	$t3, $t2, 8
	addi.d	$t2, $t1, 8
	addi.d	$t1, $fp, 1
	blt	$t1, $s1, .LBB6_26
	b	.LBB6_57
.LBB6_18:
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	bne	$s3, $a0, .LBB6_23
# %bb.19:                               # %.preheader173
	ld.d	$a0, $s2, 0
	lu12i.w	$a1, 3
	ori	$a1, $a1, 336
	add.d	$a2, $a0, $a1
	slli.d	$a0, $t3, 5
	add.d	$a5, $a2, $a0
	pcalau12i	$a0, %pc_hi20(LumaPrediction4x4.l0_pred)
	addi.d	$a3, $a0, %pc_lo12(LumaPrediction4x4.l0_pred)
	ld.hu	$a0, $a3, 0
	pcalau12i	$a1, %pc_hi20(LumaPrediction4x4.l1_pred)
	addi.d	$a4, $a1, %pc_lo12(LumaPrediction4x4.l1_pred)
	ld.hu	$a1, $a4, 0
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	slli.d	$a1, $t1, 1
	stx.h	$a0, $a5, $a1
	addi.d	$a1, $t1, 1
	slli.d	$a0, $a1, 1
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	bge	$a1, $t2, .LBB6_28
# %bb.20:
	ld.hu	$a6, $a3, 2
	ld.hu	$a7, $a4, 2
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	stx.h	$a6, $a5, $a0
	ld.hu	$a6, $a3, 4
	ld.hu	$a7, $a4, 4
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	alsl.d	$a5, $t1, $a5, 1
	st.h	$a6, $a5, 4
	ld.hu	$a6, $a3, 6
	ld.hu	$a7, $a4, 6
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	st.h	$a6, $a5, 6
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a3, 8
	addi.d	$a3, $t3, 1
	blt	$a3, $s1, .LBB6_29
	b	.LBB6_57
.LBB6_21:
	pcalau12i	$a0, %pc_hi20(wp_weight)
	ld.d	$a0, $a0, %pc_lo12(wp_weight)
	pcalau12i	$a1, %pc_hi20(wp_offset)
	beqz	$s3, .LBB6_31
# %bb.22:                               # %.preheader170
	ld.d	$a1, $a1, %pc_lo12(wp_offset)
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	slli.d	$a2, $s6, 3
	ldx.d	$a0, $a0, $a2
	ldx.d	$a1, $a1, $a2
	ld.d	$a5, $s2, 0
	ld.w	$a2, $a0, 0
	ld.w	$a1, $a1, 0
	ldptr.w	$a0, $a5, 15520
	pcalau12i	$a3, %pc_hi20(wp_luma_round)
	ld.w	$a3, $a3, %pc_lo12(wp_luma_round)
	pcalau12i	$a4, %pc_hi20(luma_log_weight_denom)
	ld.wu	$a4, $a4, %pc_lo12(luma_log_weight_denom)
	lu12i.w	$a6, 3
	ori	$a6, $a6, 336
	add.d	$a7, $a5, $a6
	slli.d	$a5, $fp, 5
	add.d	$t1, $a7, $a5
	pcalau12i	$a5, %pc_hi20(LumaPrediction4x4.l1_pred)
	addi.d	$t0, $a5, %pc_lo12(LumaPrediction4x4.l1_pred)
	b	.LBB6_32
.LBB6_23:
	ld.d	$a0, $s2, 0
	slli.d	$a1, $t3, 5
	add.d	$a0, $a0, $a1
	alsl.d	$a0, $t1, $a0, 1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 336
	add.d	$a2, $a0, $a1
	addi.d	$a0, $t3, 1
	beqz	$s3, .LBB6_37
# %bb.24:                               # %.preheader177
	pcalau12i	$a1, %pc_hi20(LumaPrediction4x4.l1_pred)
	addi.d	$a1, $a1, %pc_lo12(LumaPrediction4x4.l1_pred)
	ld.d	$a3, $a1, 0
	st.d	$a3, $a2, 0
	blt	$a0, $s1, .LBB6_38
	b	.LBB6_57
.LBB6_25:
	addi.d	$t3, $t2, 2
	addi.d	$t2, $t1, 2
	addi.d	$t1, $fp, 1
	bge	$t1, $s1, .LBB6_57
.LBB6_26:                               # %.preheader.1
	ld.hu	$t5, $t2, 0
	ld.hu	$t6, $t3, 0
	slli.d	$t1, $t1, 5
	add.d	$t4, $t0, $t1
	mul.d	$t1, $a0, $t5
	mul.d	$t5, $a1, $t6
	add.d	$t1, $t1, $a5
	add.d	$t1, $t1, $t5
	sra.w	$t1, $t1, $a4
	add.w	$t1, $t1, $a3
	srai.d	$t5, $t1, 63
	andn	$t1, $t1, $t5
	slt	$t5, $t1, $a2
	maskeqz	$t1, $t1, $t5
	masknez	$t5, $a2, $t5
	or	$t5, $t1, $t5
	slli.d	$t1, $t7, 1
	stx.h	$t5, $t4, $t1
	bge	$a7, $t8, .LBB6_39
# %bb.27:
	ld.hu	$t5, $t2, 2
	ld.hu	$t6, $t3, 2
	mul.d	$t5, $a0, $t5
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t5, $a5
	add.d	$t5, $t5, $t6
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $a6
	ld.hu	$t5, $t2, 4
	ld.hu	$t6, $t3, 4
	mul.d	$t5, $a0, $t5
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t5, $a5
	add.d	$t5, $t5, $t6
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	alsl.d	$t4, $t7, $t4, 1
	st.h	$t5, $t4, 4
	ld.hu	$t5, $t2, 6
	ld.hu	$t6, $t3, 6
	addi.d	$t2, $t2, 8
	mul.d	$t5, $a0, $t5
	addi.d	$t3, $t3, 8
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t5, $a5
	add.d	$t5, $t5, $t6
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	st.h	$t5, $t4, 6
	b	.LBB6_40
.LBB6_28:
	addi.d	$a4, $a4, 2
	addi.d	$a5, $a3, 2
	addi.d	$a3, $t3, 1
	bge	$a3, $s1, .LBB6_57
.LBB6_29:                               # %.preheader172.1
	ld.hu	$a7, $a5, 0
	ld.hu	$t0, $a4, 0
	slli.d	$a3, $a3, 5
	add.d	$a6, $a2, $a3
	add.d	$a3, $a7, $t0
	addi.d	$a3, $a3, 1
	srli.d	$a7, $a3, 1
	slli.d	$a3, $t1, 1
	stx.h	$a7, $a6, $a3
	bge	$a1, $t2, .LBB6_42
# %bb.30:
	ld.hu	$a7, $a5, 2
	ld.hu	$t0, $a4, 2
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a0
	ld.hu	$a7, $a5, 4
	ld.hu	$t0, $a4, 4
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	alsl.d	$a6, $t1, $a6, 1
	st.h	$a7, $a6, 4
	ld.hu	$a7, $a5, 6
	ld.hu	$t0, $a4, 6
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	st.h	$a7, $a6, 6
	b	.LBB6_43
.LBB6_31:                               # %.preheader168
	ld.d	$a1, $a1, %pc_lo12(wp_offset)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	slli.d	$a2, $s7, 3
	ldx.d	$a0, $a0, $a2
	ldx.d	$a1, $a1, $a2
	ld.d	$a5, $s2, 0
	ld.w	$a2, $a0, 0
	ld.w	$a1, $a1, 0
	ldptr.w	$a0, $a5, 15520
	pcalau12i	$a3, %pc_hi20(wp_luma_round)
	ld.w	$a3, $a3, %pc_lo12(wp_luma_round)
	pcalau12i	$a4, %pc_hi20(luma_log_weight_denom)
	ld.wu	$a4, $a4, %pc_lo12(luma_log_weight_denom)
	lu12i.w	$a6, 3
	ori	$a6, $a6, 336
	add.d	$a7, $a5, $a6
	slli.d	$a5, $fp, 5
	add.d	$t1, $a7, $a5
	pcalau12i	$a5, %pc_hi20(LumaPrediction4x4.l0_pred)
	addi.d	$t0, $a5, %pc_lo12(LumaPrediction4x4.l0_pred)
.LBB6_32:                               # %.preheader170
	ld.hu	$a5, $t0, 0
	mul.d	$a5, $a2, $a5
	add.d	$a5, $a5, $a3
	sra.w	$a5, $a5, $a4
	add.w	$a5, $a5, $a1
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slt	$a6, $a5, $a0
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a0, $a6
	or	$a5, $a5, $a6
	slli.d	$a6, $t7, 1
	stx.h	$a5, $t1, $a6
	addi.d	$a6, $t7, 1
	slli.d	$a5, $a6, 1
	ld.d	$t5, $sp, 64                    # 8-byte Folded Reload
	bge	$a6, $t5, .LBB6_34
# %bb.33:
	ld.hu	$t2, $t0, 2
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a1
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a0
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a0, $t3
	or	$t2, $t2, $t3
	stx.h	$t2, $t1, $a5
	ld.hu	$t2, $t0, 4
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a1
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a0
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a0, $t3
	or	$t2, $t2, $t3
	alsl.d	$t1, $t7, $t1, 1
	st.h	$t2, $t1, 4
	ld.hu	$t2, $t0, 6
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a1
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a0
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a0, $t3
	or	$t2, $t2, $t3
	st.h	$t2, $t1, 6
	addi.d	$t1, $t0, 8
	addi.d	$t0, $fp, 1
	blt	$t0, $s1, .LBB6_35
	b	.LBB6_57
.LBB6_34:
	addi.d	$t1, $t0, 2
	addi.d	$t0, $fp, 1
	bge	$t0, $s1, .LBB6_57
.LBB6_35:                               # %.preheader170.1
	ld.hu	$t3, $t1, 0
	slli.d	$t0, $t0, 5
	add.d	$t2, $a7, $t0
	mul.d	$t0, $a2, $t3
	add.d	$t0, $t0, $a3
	sra.w	$t0, $t0, $a4
	add.w	$t0, $t0, $a1
	srai.d	$t3, $t0, 63
	andn	$t0, $t0, $t3
	slt	$t3, $t0, $a0
	maskeqz	$t0, $t0, $t3
	masknez	$t3, $a0, $t3
	or	$t3, $t0, $t3
	slli.d	$t0, $t7, 1
	stx.h	$t3, $t2, $t0
	bge	$a6, $t5, .LBB6_45
# %bb.36:
	ld.hu	$t3, $t1, 2
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a5
	ld.hu	$t3, $t1, 4
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	alsl.d	$t2, $t7, $t2, 1
	st.h	$t3, $t2, 4
	ld.hu	$t3, $t1, 6
	addi.d	$t1, $t1, 8
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	st.h	$t3, $t2, 6
	b	.LBB6_46
.LBB6_37:                               # %.preheader175
	pcalau12i	$a1, %pc_hi20(LumaPrediction4x4.l0_pred)
	addi.d	$a1, $a1, %pc_lo12(LumaPrediction4x4.l0_pred)
	ld.d	$a3, $a1, 0
	st.d	$a3, $a2, 0
	bge	$a0, $s1, .LBB6_57
.LBB6_38:
	ld.d	$a2, $s2, 0
	ld.d	$a3, $a1, 8
	slli.d	$a0, $a0, 5
	add.d	$a0, $a2, $a0
	alsl.d	$a0, $t1, $a0, 1
	stptr.d	$a3, $a0, 12624
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a1, 16
	slli.d	$a3, $t3, 5
	add.d	$a0, $a0, $a3
	alsl.d	$a0, $t1, $a0, 1
	stptr.d	$a2, $a0, 12688
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a1, 24
	add.d	$a0, $a0, $a3
	alsl.d	$a0, $t1, $a0, 1
	stptr.d	$a1, $a0, 12720
	b	.LBB6_57
.LBB6_39:
	addi.d	$t2, $t2, 2
	addi.d	$t3, $t3, 2
.LBB6_40:                               # %.preheader.2
	slli.d	$t4, $fp, 5
	ld.hu	$t5, $t2, 0
	ld.hu	$t6, $t3, 0
	add.d	$t0, $t0, $t4
	addi.d	$t4, $t0, 64
	mul.d	$t5, $a0, $t5
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t5, $a5
	add.d	$t5, $t5, $t6
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $t1
	bge	$a7, $t8, .LBB6_48
# %bb.41:
	ld.hu	$t5, $t2, 2
	ld.hu	$t6, $t3, 2
	mul.d	$t5, $a0, $t5
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t5, $a5
	add.d	$t5, $t5, $t6
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $a6
	ld.hu	$t5, $t2, 4
	ld.hu	$t6, $t3, 4
	mul.d	$t5, $a0, $t5
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t5, $a5
	add.d	$t5, $t5, $t6
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	alsl.d	$t4, $t7, $t4, 1
	st.h	$t5, $t4, 4
	ld.hu	$t5, $t2, 6
	ld.hu	$t6, $t3, 6
	addi.d	$t2, $t2, 8
	mul.d	$t5, $a0, $t5
	addi.d	$t3, $t3, 8
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t5, $a5
	add.d	$t5, $t5, $t6
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	st.h	$t5, $t4, 6
	b	.LBB6_49
.LBB6_42:
	addi.d	$a5, $a5, 2
	addi.d	$a4, $a4, 2
.LBB6_43:                               # %.preheader172.2
	ld.hu	$a7, $a5, 0
	ld.hu	$t0, $a4, 0
	slli.d	$a6, $t3, 5
	add.d	$a2, $a2, $a6
	addi.d	$a6, $a2, 64
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a3
	bge	$a1, $t2, .LBB6_51
# %bb.44:
	ld.hu	$a7, $a5, 2
	ld.hu	$t0, $a4, 2
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a0
	ld.hu	$a7, $a5, 4
	ld.hu	$t0, $a4, 4
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	alsl.d	$a6, $t1, $a6, 1
	st.h	$a7, $a6, 4
	ld.hu	$a7, $a5, 6
	ld.hu	$t0, $a4, 6
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	st.h	$a7, $a6, 6
	b	.LBB6_52
.LBB6_45:
	addi.d	$t1, $t1, 2
.LBB6_46:                               # %.preheader170.2
	ld.hu	$t3, $t1, 0
	slli.d	$t2, $fp, 5
	add.d	$a7, $a7, $t2
	addi.d	$t2, $a7, 64
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t0
	bge	$a6, $t5, .LBB6_54
# %bb.47:
	ld.hu	$t3, $t1, 2
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a5
	ld.hu	$t3, $t1, 4
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	alsl.d	$t2, $t7, $t2, 1
	st.h	$t3, $t2, 4
	ld.hu	$t3, $t1, 6
	addi.d	$t1, $t1, 8
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	st.h	$t3, $t2, 6
	b	.LBB6_55
.LBB6_48:
	addi.d	$t2, $t2, 2
	addi.d	$t3, $t3, 2
.LBB6_49:                               # %.preheader.3
	ld.hu	$t4, $t2, 0
	ld.hu	$t5, $t3, 0
	addi.d	$t0, $t0, 96
	mul.d	$t4, $a0, $t4
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	stx.h	$t4, $t0, $t1
	bge	$a7, $t8, .LBB6_57
# %bb.50:
	ld.hu	$a7, $t2, 2
	ld.hu	$t1, $t3, 2
	mul.d	$a7, $a0, $a7
	mul.d	$t1, $a1, $t1
	add.d	$a7, $a7, $a5
	add.d	$a7, $a7, $t1
	sra.w	$a7, $a7, $a4
	add.w	$a7, $a7, $a3
	srai.d	$t1, $a7, 63
	andn	$a7, $a7, $t1
	slt	$t1, $a7, $a2
	maskeqz	$a7, $a7, $t1
	masknez	$t1, $a2, $t1
	or	$a7, $a7, $t1
	stx.h	$a7, $t0, $a6
	ld.hu	$a6, $t2, 4
	ld.hu	$a7, $t3, 4
	mul.d	$a6, $a0, $a6
	mul.d	$a7, $a1, $a7
	add.d	$a6, $a6, $a5
	add.d	$a6, $a6, $a7
	sra.w	$a6, $a6, $a4
	add.w	$a6, $a6, $a3
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a2, $a7
	or	$a6, $a6, $a7
	alsl.d	$a7, $t7, $t0, 1
	st.h	$a6, $a7, 4
	ld.hu	$a6, $t2, 6
	ld.hu	$t0, $t3, 6
	mul.d	$a0, $a0, $a6
	mul.d	$a1, $a1, $t0
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a1
	sra.w	$a0, $a0, $a4
	add.w	$a0, $a0, $a3
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.h	$a0, $a7, 6
	b	.LBB6_57
.LBB6_51:
	addi.d	$a5, $a5, 2
	addi.d	$a4, $a4, 2
.LBB6_52:                               # %.preheader172.3
	ld.hu	$a6, $a5, 0
	ld.hu	$a7, $a4, 0
	addi.d	$a2, $a2, 96
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	stx.h	$a6, $a2, $a3
	bge	$a1, $t2, .LBB6_57
# %bb.53:
	ld.hu	$a1, $a5, 2
	ld.hu	$a3, $a4, 2
	add.d	$a1, $a1, $a3
	addi.d	$a1, $a1, 1
	srli.d	$a1, $a1, 1
	stx.h	$a1, $a2, $a0
	ld.hu	$a0, $a5, 4
	ld.hu	$a1, $a4, 4
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	alsl.d	$a1, $t1, $a2, 1
	st.h	$a0, $a1, 4
	ld.hu	$a0, $a5, 6
	ld.hu	$a2, $a4, 6
	add.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	st.h	$a0, $a1, 6
	b	.LBB6_57
.LBB6_54:
	addi.d	$t1, $t1, 2
.LBB6_55:                               # %.preheader168.3
	ld.hu	$t2, $t1, 0
	addi.d	$a7, $a7, 96
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a1
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a0
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a0, $t3
	or	$t2, $t2, $t3
	stx.h	$t2, $a7, $t0
	bge	$a6, $t5, .LBB6_57
# %bb.56:
	ld.hu	$a6, $t1, 2
	mul.d	$a6, $a2, $a6
	add.d	$a6, $a6, $a3
	sra.w	$a6, $a6, $a4
	add.w	$a6, $a6, $a1
	srai.d	$t0, $a6, 63
	andn	$a6, $a6, $t0
	slt	$t0, $a6, $a0
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $a0, $t0
	or	$a6, $a6, $t0
	stx.h	$a6, $a7, $a5
	ld.hu	$a5, $t1, 4
	mul.d	$a5, $a2, $a5
	add.d	$a5, $a5, $a3
	sra.w	$a5, $a5, $a4
	add.w	$a5, $a5, $a1
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slt	$a6, $a5, $a0
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a0, $a6
	or	$a5, $a5, $a6
	alsl.d	$a6, $t7, $a7, 1
	st.h	$a5, $a6, 4
	ld.hu	$a5, $t1, 6
	mul.d	$a2, $a2, $a5
	add.d	$a2, $a2, $a3
	sra.w	$a2, $a2, $a4
	add.w	$a1, $a2, $a1
	srai.d	$a2, $a1, 63
	andn	$a1, $a1, $a2
	slt	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	st.h	$a0, $a6, 6
.LBB6_57:                               # %.loopexit
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
.Lfunc_end6:
	.size	LumaPrediction4x4, .Lfunc_end6-LumaPrediction4x4
                                        # -- End function
	.globl	LumaPrediction4x4Bi             # -- Begin function LumaPrediction4x4Bi
	.p2align	5
	.type	LumaPrediction4x4Bi,@function
LumaPrediction4x4Bi:                    # @LumaPrediction4x4Bi
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
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	move	$t3, $a4
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	addi.w	$t1, $a0, 4
	addi.w	$a3, $a1, 4
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	ld.d	$t0, $a3, 0
	ld.w	$a4, $t0, 192
	ld.w	$a3, $t0, 196
	add.d	$a5, $a4, $a0
	ori	$a4, $zero, 80
	alsl.w	$t4, $a5, $a4, 2
	add.d	$a3, $a3, $a1
	alsl.w	$fp, $a3, $a4, 2
	pcalau12i	$a3, %pc_hi20(active_pps)
	ld.d	$a4, $a3, %pc_lo12(active_pps)
	ld.w	$t2, $t0, 12
	ldptr.d	$a3, $t0, 14224
	ori	$a5, $zero, 536
	ld.w	$a7, $a4, 192
	mul.d	$a5, $t2, $a5
	srai.d	$t2, $a0, 2
	add.d	$s5, $a3, $a5
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	srai.d	$a3, $a1, 2
	beqz	$a7, .LBB7_3
# %bb.1:
	ld.w	$a5, $t0, 20
	ori	$a1, $zero, 1
	beqz	$a5, .LBB7_6
# %bb.2:
	ori	$a7, $zero, 3
	beq	$a5, $a7, .LBB7_6
.LBB7_3:
	ld.w	$a4, $a4, 196
	beqz	$a4, .LBB7_5
# %bb.4:
	ld.w	$a4, $t0, 20
	addi.d	$a4, $a4, -1
	sltui	$a1, $a4, 1
	b	.LBB7_6
.LBB7_5:
	move	$a1, $zero
.LBB7_6:
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$t1, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	sltui	$a4, $a6, 1
	lu12i.w	$a0, 3
	ori	$a5, $a0, 2104
	masknez	$a5, $a5, $a4
	ori	$a6, $a0, 2112
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	ldx.d	$a0, $t0, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a1, $t2, 3
	ldx.d	$s1, $a0, $a1
	ld.d	$a0, $s1, 0
	slli.d	$a1, $t3, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a2, $a2, 3
	ld.w	$a3, $s5, 432
	ldx.d	$a0, $a0, $a2
	slli.d	$a2, $a3, 3
	pcalau12i	$a3, %got_pc_hi20(listX)
	ld.d	$s3, $a3, %got_pc_lo12(listX)
	ldx.d	$a2, $s3, $a2
	ldx.d	$a1, $a2, $a1
	lu12i.w	$a2, 1
	ori	$s0, $a2, 2312
	ldx.w	$a3, $a1, $s0
	pcalau12i	$s7, %pc_hi20(width_pad)
	st.w	$a3, $s7, %pc_lo12(width_pad)
	ori	$s8, $a2, 2316
	ldx.w	$a2, $a1, $s8
	pcalau12i	$s2, %pc_hi20(height_pad)
	ld.h	$a3, $a0, 2
	ld.h	$a4, $a0, 0
	ldptr.d	$a0, $a1, 6448
	st.w	$a2, $s2, %pc_lo12(height_pad)
	add.w	$a1, $fp, $a3
	add.w	$a2, $t4, $a4
	st.d	$t3, $sp, 8                     # 8-byte Folded Spill
	st.d	$t4, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(UMVLine4X)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(LumaPrediction4x4Bi.l0_pred)
	addi.d	$s6, $a2, %pc_lo12(LumaPrediction4x4Bi.l0_pred)
	pcalau12i	$s4, %pc_hi20(img_padded_size_x)
	ld.w	$a2, $s4, %pc_lo12(img_padded_size_x)
	st.d	$a1, $s6, 0
	slli.d	$a1, $a2, 1
	ldx.d	$a3, $a0, $a1
	alsl.d	$a0, $a2, $a0, 1
	st.d	$a3, $s6, 8
	ldx.d	$a3, $a0, $a1
	alsl.d	$a0, $a2, $a0, 1
	st.d	$a3, $s6, 16
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $s6, 24
	ld.w	$a0, $s5, 432
	alsl.d	$a0, $a0, $s3, 3
	ld.d	$a0, $a0, 8
	ld.d	$a1, $s1, 8
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	slli.d	$a2, $s1, 3
	ldx.d	$a0, $a0, $a2
	ldx.d	$a1, $a1, $a2
	ldx.w	$a2, $a0, $s0
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	st.w	$a2, $s7, %pc_lo12(width_pad)
	ldx.w	$a2, $a0, $s8
	ld.h	$a3, $a1, 2
	ld.h	$a4, $a1, 0
	ldptr.d	$a0, $a0, 6448
	st.w	$a2, $s2, %pc_lo12(height_pad)
	add.w	$a1, $fp, $a3
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.w	$a2, $a2, $a4
	pcaddu18i	$ra, %call36(UMVLine4X)
	jirl	$ra, $ra, 0
	ld.d	$a6, $a0, 0
	pcalau12i	$a1, %pc_hi20(LumaPrediction4x4Bi.l1_pred)
	addi.d	$t0, $a1, %pc_lo12(LumaPrediction4x4Bi.l1_pred)
	ld.w	$a1, $s4, %pc_lo12(img_padded_size_x)
	st.d	$a6, $t0, 0
	slli.d	$a2, $a1, 1
	ldx.d	$a3, $a0, $a2
	alsl.d	$a0, $a1, $a0, 1
	st.d	$a3, $t0, 8
	ldx.d	$a3, $a0, $a2
	alsl.d	$a0, $a1, $a0, 1
	st.d	$a3, $t0, 16
	ldx.d	$a0, $a0, $a2
	st.d	$a0, $t0, 24
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB7_9
# %bb.7:                                # %.preheader
	pcalau12i	$a0, %pc_hi20(wbp_weight)
	ld.d	$a0, $a0, %pc_lo12(wbp_weight)
	ld.d	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(wp_offset)
	ld.d	$a2, $a2, %pc_lo12(wp_offset)
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ld.d	$a0, $a0, 8
	ld.d	$a4, $a2, 0
	ld.d	$a2, $a2, 8
	slli.d	$a5, $s1, 3
	ldx.d	$a0, $a0, $a3
	ldx.d	$a3, $a4, $a3
	ldx.d	$a2, $a2, $a5
	ldx.d	$a1, $a1, $a5
	ldx.d	$a4, $a0, $a5
	ld.w	$a3, $a3, 0
	ld.w	$a2, $a2, 0
	ld.w	$a0, $a1, 0
	ld.w	$a1, $a4, 0
	add.d	$a2, $a3, $a2
	addi.w	$a2, $a2, 1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a7, $a3, 0
	pcalau12i	$a3, %pc_hi20(wp_luma_round)
	ld.w	$t3, $a3, %pc_lo12(wp_luma_round)
	pcalau12i	$a3, %pc_hi20(luma_log_weight_denom)
	ld.w	$a5, $a3, %pc_lo12(luma_log_weight_denom)
	srai.d	$a3, $a2, 1
	ldptr.w	$a2, $a7, 15520
	slli.d	$a4, $t3, 1
	addi.d	$a5, $a5, 1
	lu12i.w	$t1, 3
	ori	$t1, $t1, 336
	ld.hu	$t4, $s6, 0
	add.d	$t1, $a7, $t1
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a7, $fp, 5
	add.d	$t2, $t1, $a7
	mul.d	$a7, $a0, $t4
	bstrpick.d	$a6, $a6, 15, 0
	mul.d	$a6, $a1, $a6
	add.d	$a6, $a6, $a7
	alsl.w	$a6, $t3, $a6, 1
	sra.w	$a6, $a6, $a5
	add.w	$a6, $a6, $a3
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a2, $a7
	or	$a6, $a6, $a7
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	slli.d	$a7, $t7, 1
	stx.h	$a6, $t2, $a7
	addi.d	$a7, $t7, 1
	slli.d	$a6, $a7, 1
	ld.d	$t8, $sp, 72                    # 8-byte Folded Reload
	bge	$a7, $t8, .LBB7_11
# %bb.8:
	ld.hu	$t3, $s6, 2
	ld.hu	$t4, $t0, 2
	mul.d	$t3, $a0, $t3
	mul.d	$t4, $a1, $t4
	add.d	$t3, $t4, $t3
	add.d	$t3, $t3, $a4
	sra.w	$t3, $t3, $a5
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a2
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a2, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a6
	ld.hu	$t3, $s6, 4
	ld.hu	$t4, $t0, 4
	mul.d	$t3, $a0, $t3
	mul.d	$t4, $a1, $t4
	add.d	$t3, $t4, $t3
	add.d	$t3, $t3, $a4
	sra.w	$t3, $t3, $a5
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a2
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a2, $t4
	or	$t3, $t3, $t4
	alsl.d	$t2, $t7, $t2, 1
	st.h	$t3, $t2, 4
	ld.hu	$t3, $s6, 6
	ld.hu	$t4, $t0, 6
	mul.d	$t3, $a0, $t3
	mul.d	$t4, $a1, $t4
	add.d	$t3, $t4, $t3
	add.d	$t3, $t3, $a4
	sra.w	$t3, $t3, $a5
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a2
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a2, $t4
	or	$t3, $t3, $t4
	st.h	$t3, $t2, 6
	addi.d	$t3, $t0, 8
	addi.d	$t2, $s6, 8
	addi.d	$t0, $fp, 1
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	blt	$t0, $t4, .LBB7_12
	b	.LBB7_30
.LBB7_9:                                # %.preheader70
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 3
	ori	$a1, $a1, 336
	add.d	$a2, $a0, $a1
	ld.hu	$a0, $s6, 0
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a1, $t3, 5
	add.d	$a3, $a2, $a1
	bstrpick.d	$a1, $a6, 15, 0
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	slli.d	$a1, $t1, 1
	stx.h	$a0, $a3, $a1
	addi.d	$a1, $t1, 1
	slli.d	$a0, $a1, 1
	ld.d	$t2, $sp, 72                    # 8-byte Folded Reload
	bge	$a1, $t2, .LBB7_14
# %bb.10:
	ld.hu	$a4, $s6, 2
	ld.hu	$a5, $t0, 2
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, 1
	srli.d	$a4, $a4, 1
	stx.h	$a4, $a3, $a0
	ld.hu	$a4, $s6, 4
	ld.hu	$a5, $t0, 4
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, 1
	srli.d	$a4, $a4, 1
	alsl.d	$a3, $t1, $a3, 1
	st.h	$a4, $a3, 4
	ld.hu	$a4, $s6, 6
	ld.hu	$a5, $t0, 6
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, 1
	srli.d	$a4, $a4, 1
	st.h	$a4, $a3, 6
	addi.d	$a4, $t0, 8
	addi.d	$a5, $s6, 8
	addi.d	$a3, $t3, 1
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	blt	$a3, $a6, .LBB7_15
	b	.LBB7_30
.LBB7_11:
	addi.d	$t3, $t0, 2
	addi.d	$t2, $s6, 2
	addi.d	$t0, $fp, 1
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	bge	$t0, $t4, .LBB7_30
.LBB7_12:                               # %.preheader.1
	ld.hu	$t5, $t2, 0
	ld.hu	$t6, $t3, 0
	slli.d	$t0, $t0, 5
	add.d	$t4, $t1, $t0
	mul.d	$t0, $a0, $t5
	mul.d	$t5, $a1, $t6
	add.d	$t0, $t5, $t0
	add.d	$t0, $t0, $a4
	sra.w	$t0, $t0, $a5
	add.w	$t0, $t0, $a3
	srai.d	$t5, $t0, 63
	andn	$t0, $t0, $t5
	slt	$t5, $t0, $a2
	maskeqz	$t0, $t0, $t5
	masknez	$t5, $a2, $t5
	or	$t5, $t0, $t5
	slli.d	$t0, $t7, 1
	stx.h	$t5, $t4, $t0
	bge	$a7, $t8, .LBB7_17
# %bb.13:
	ld.hu	$t5, $t2, 2
	ld.hu	$t6, $t3, 2
	mul.d	$t5, $a0, $t5
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a4
	sra.w	$t5, $t5, $a5
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $a6
	ld.hu	$t5, $t2, 4
	ld.hu	$t6, $t3, 4
	mul.d	$t5, $a0, $t5
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a4
	sra.w	$t5, $t5, $a5
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	alsl.d	$t4, $t7, $t4, 1
	st.h	$t5, $t4, 4
	ld.hu	$t5, $t2, 6
	ld.hu	$t6, $t3, 6
	addi.d	$t2, $t2, 8
	mul.d	$t5, $a0, $t5
	addi.d	$t3, $t3, 8
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a4
	sra.w	$t5, $t5, $a5
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	st.h	$t5, $t4, 6
	b	.LBB7_18
.LBB7_14:
	addi.d	$a4, $t0, 2
	addi.d	$a5, $s6, 2
	addi.d	$a3, $t3, 1
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	bge	$a3, $a6, .LBB7_30
.LBB7_15:                               # %.preheader69.1
	ld.hu	$a7, $a5, 0
	ld.hu	$t0, $a4, 0
	slli.d	$a3, $a3, 5
	add.d	$a6, $a2, $a3
	add.d	$a3, $a7, $t0
	addi.d	$a3, $a3, 1
	srli.d	$a7, $a3, 1
	slli.d	$a3, $t1, 1
	stx.h	$a7, $a6, $a3
	bge	$a1, $t2, .LBB7_20
# %bb.16:
	ld.hu	$a7, $a5, 2
	ld.hu	$t0, $a4, 2
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a0
	ld.hu	$a7, $a5, 4
	ld.hu	$t0, $a4, 4
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	alsl.d	$a6, $t1, $a6, 1
	st.h	$a7, $a6, 4
	ld.hu	$a7, $a5, 6
	ld.hu	$t0, $a4, 6
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	st.h	$a7, $a6, 6
	b	.LBB7_21
.LBB7_17:
	addi.d	$t2, $t2, 2
	addi.d	$t3, $t3, 2
.LBB7_18:                               # %.preheader.2
	slli.d	$t4, $fp, 5
	ld.hu	$t5, $t2, 0
	ld.hu	$t6, $t3, 0
	add.d	$t1, $t1, $t4
	addi.d	$t4, $t1, 64
	mul.d	$t5, $a0, $t5
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a4
	sra.w	$t5, $t5, $a5
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $t0
	bge	$a7, $t8, .LBB7_23
# %bb.19:
	ld.hu	$t5, $t2, 2
	ld.hu	$t6, $t3, 2
	mul.d	$t5, $a0, $t5
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a4
	sra.w	$t5, $t5, $a5
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $a6
	ld.hu	$t5, $t2, 4
	ld.hu	$t6, $t3, 4
	mul.d	$t5, $a0, $t5
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a4
	sra.w	$t5, $t5, $a5
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	alsl.d	$t4, $t7, $t4, 1
	st.h	$t5, $t4, 4
	ld.hu	$t5, $t2, 6
	ld.hu	$t6, $t3, 6
	addi.d	$t2, $t2, 8
	mul.d	$t5, $a0, $t5
	addi.d	$t3, $t3, 8
	mul.d	$t6, $a1, $t6
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a4
	sra.w	$t5, $t5, $a5
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	st.h	$t5, $t4, 6
	b	.LBB7_24
.LBB7_20:
	addi.d	$a5, $a5, 2
	addi.d	$a4, $a4, 2
.LBB7_21:                               # %.preheader69.2
	ld.hu	$a7, $a5, 0
	ld.hu	$t0, $a4, 0
	slli.d	$a6, $t3, 5
	add.d	$a2, $a2, $a6
	addi.d	$a6, $a2, 64
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a3
	bge	$a1, $t2, .LBB7_26
# %bb.22:
	ld.hu	$a7, $a5, 2
	ld.hu	$t0, $a4, 2
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a0
	ld.hu	$a7, $a5, 4
	ld.hu	$t0, $a4, 4
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	alsl.d	$a6, $t1, $a6, 1
	st.h	$a7, $a6, 4
	ld.hu	$a7, $a5, 6
	ld.hu	$t0, $a4, 6
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	st.h	$a7, $a6, 6
	b	.LBB7_27
.LBB7_23:
	addi.d	$t2, $t2, 2
	addi.d	$t3, $t3, 2
.LBB7_24:                               # %.preheader.3
	ld.hu	$t4, $t2, 0
	ld.hu	$t5, $t3, 0
	addi.d	$t1, $t1, 96
	mul.d	$t4, $a0, $t4
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t5, $t4
	add.d	$t4, $t4, $a4
	sra.w	$t4, $t4, $a5
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	stx.h	$t4, $t1, $t0
	bge	$a7, $t8, .LBB7_30
# %bb.25:
	ld.hu	$a7, $t2, 2
	ld.hu	$t0, $t3, 2
	mul.d	$a7, $a0, $a7
	mul.d	$t0, $a1, $t0
	add.d	$a7, $t0, $a7
	add.d	$a7, $a7, $a4
	sra.w	$a7, $a7, $a5
	add.w	$a7, $a7, $a3
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a2
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $a2, $t0
	or	$a7, $a7, $t0
	stx.h	$a7, $t1, $a6
	ld.hu	$a6, $t2, 4
	ld.hu	$a7, $t3, 4
	mul.d	$a6, $a0, $a6
	mul.d	$a7, $a1, $a7
	add.d	$a6, $a7, $a6
	add.d	$a6, $a6, $a4
	sra.w	$a6, $a6, $a5
	add.w	$a6, $a6, $a3
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a2, $a7
	or	$a7, $a6, $a7
	alsl.d	$a6, $t7, $t1, 1
	st.h	$a7, $a6, 4
	ld.hu	$a7, $t2, 6
	ld.hu	$t0, $t3, 6
	mul.d	$a0, $a0, $a7
	mul.d	$a1, $a1, $t0
	add.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a4
	sra.w	$a0, $a0, $a5
	add.w	$a0, $a0, $a3
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	b	.LBB7_29
.LBB7_26:
	addi.d	$a5, $a5, 2
	addi.d	$a4, $a4, 2
.LBB7_27:                               # %.preheader69.3
	ld.hu	$a6, $a5, 0
	ld.hu	$a7, $a4, 0
	addi.d	$a2, $a2, 96
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	stx.h	$a6, $a2, $a3
	bge	$a1, $t2, .LBB7_30
# %bb.28:
	ld.hu	$a1, $a5, 2
	ld.hu	$a3, $a4, 2
	add.d	$a1, $a1, $a3
	addi.d	$a1, $a1, 1
	srli.d	$a1, $a1, 1
	stx.h	$a1, $a2, $a0
	ld.hu	$a0, $a5, 4
	ld.hu	$a1, $a4, 4
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	alsl.d	$a6, $t1, $a2, 1
	st.h	$a0, $a6, 4
	ld.hu	$a0, $a5, 6
	ld.hu	$a1, $a4, 6
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
.LBB7_29:                               # %.loopexit.sink.split
	st.h	$a0, $a6, 6
.LBB7_30:                               # %.loopexit
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
.Lfunc_end7:
	.size	LumaPrediction4x4Bi, .Lfunc_end7-LumaPrediction4x4Bi
                                        # -- End function
	.globl	LumaResidualCoding8x8           # -- Begin function LumaResidualCoding8x8
	.p2align	5
	.type	LumaResidualCoding8x8,@function
LumaResidualCoding8x8:                  # @LumaResidualCoding8x8
# %bb.0:
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	move	$s0, $a7
	move	$s8, $a5
	move	$t1, $a2
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.w	$zero, $sp, 196
	slli.d	$a5, $a2, 2
	bstrpick.d	$a0, $a5, 31, 3
	slli.w	$t0, $a0, 3
	ori	$a0, $zero, 1
	or	$a2, $s8, $a4
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$s2, $a1, %got_pc_lo12(img)
	ld.d	$a1, $s2, 0
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	bnez	$a2, .LBB8_2
# %bb.1:
	ld.w	$a2, $a1, 20
	addi.d	$a2, $a2, -1
	sltu	$a2, $zero, $a2
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
.LBB8_2:
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	st.d	$a6, $sp, 176                   # 8-byte Folded Spill
	ld.w	$a2, $a1, 12
	ldptr.d	$a1, $a1, 14224
	ori	$a3, $zero, 536
	mul.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	ld.w	$a1, $a1, 472
	andi	$a2, $t1, 1
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	sll.w	$a0, $a0, $t1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 5772
	sltui	$a0, $a0, 1
	pcalau12i	$a2, %pc_hi20(OneComponentChromaPrediction4x4_retrieve)
	addi.d	$a2, $a2, %pc_lo12(OneComponentChromaPrediction4x4_retrieve)
	masknez	$a2, $a2, $a0
	pcalau12i	$a3, %pc_hi20(OneComponentChromaPrediction4x4_regenerate)
	addi.d	$a3, $a3, %pc_lo12(OneComponentChromaPrediction4x4_regenerate)
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(OneComponentChromaPrediction4x4)
	st.d	$a0, $a2, %pc_lo12(OneComponentChromaPrediction4x4)
	slli.d	$a0, $t1, 3
	andi	$a4, $a0, 8
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $a5, 4
	addi.w	$a0, $a0, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a0, $a4, 4
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a0, $t0, 5
	lu12i.w	$a2, 3
	pcalau12i	$a6, %pc_hi20(imgY_org)
	pcalau12i	$a3, %pc_hi20(si_frame_indicator)
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(sp2_frame_indicator)
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	st.d	$t0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	beqz	$a1, .LBB8_19
# %bb.3:                                # %.preheader160.preheader
	st.d	$t1, $sp, 80                    # 8-byte Folded Spill
	bstrins.d	$a0, $t1, 4, 4
	ori	$a1, $a2, 440
	add.d	$s3, $a0, $a1
	ori	$s4, $a2, 1056
	move	$s1, $t0
	move	$a0, $t0
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	st.d	$a6, $sp, 160                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB8_4:                                # %.preheader160
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $s2, 0
	ld.w	$a2, $a1, 196
	ld.w	$a1, $a1, 192
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	add.d	$s5, $a0, $a2
	add.d	$s0, $a4, $a1
	move	$a0, $a4
	move	$a1, $s1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	move	$a3, $s8
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	move	$a4, $s6
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	move	$a5, $s7
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	move	$a6, $fp
	pcaddu18i	$ra, %call36(LumaPrediction4x4)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(imgY_org)
	slli.d	$a1, $s5, 3
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ldx.d	$a1, $a0, $a1
	ld.d	$a2, $s2, 0
	alsl.d	$a0, $s5, $a0, 3
	slli.d	$a3, $s0, 1
	ldx.d	$a1, $a1, $a3
	add.d	$a4, $a2, $s3
	ld.d	$a5, $a0, 8
	ld.d	$a6, $a4, -104
	vinsgr2vr.d	$vr0, $a1, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	ldx.d	$a1, $a5, $a3
	vinsgr2vr.d	$vr1, $a6, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsub.w	$vr0, $vr0, $vr1
	vinsgr2vr.d	$vr1, $a1, 0
	ld.d	$a1, $a4, -72
	ld.d	$a5, $a0, 16
	add.d	$a2, $a2, $s4
	vst	$vr0, $a2, -208
	vinsgr2vr.d	$vr0, $a1, 0
	ldx.d	$a1, $a5, $a3
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsub.w	$vr0, $vr1, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	ld.d	$a1, $a4, -40
	vst	$vr0, $a2, -144
	ld.d	$a0, $a0, 24
	vsllwil.wu.hu	$vr0, $vr1, 0
	vinsgr2vr.d	$vr1, $a1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	ldx.d	$a0, $a0, $a3
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a1, $a4, -8
	vst	$vr0, $a2, -80
	vinsgr2vr.d	$vr0, $a0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a1, 0
	ld.d	$a0, $s2, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $a2, -16
	ld.w	$a1, $a0, 192
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$s0, $a0, $a1
	move	$a1, $s1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	move	$a3, $s8
	move	$a4, $s6
	move	$a5, $s7
	move	$a6, $fp
	pcaddu18i	$ra, %call36(LumaPrediction4x4)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(imgY_org)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a0
	ld.d	$a0, $s2, 0
	alsl.d	$a1, $s5, $a1, 3
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	slli.d	$a3, $s0, 1
	ldx.d	$a2, $a2, $a3
	add.d	$a4, $a0, $s3
	add.d	$a5, $a0, $s4
	ld.d	$a6, $a4, -96
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 8
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a6, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	ldx.d	$a2, $a2, $a3
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a6, $a4, -64
	vst	$vr0, $a5, -192
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 16
	vinsgr2vr.d	$vr1, $a6, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	ldx.d	$a2, $a2, $a3
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $a5, -128
	ld.d	$a4, $a4, -32
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a1, $a1, 24
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a4, 0
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	vsllwil.wu.hu	$vr1, $vr1, 0
	ldx.d	$a1, $a1, $a3
	vsub.w	$vr0, $vr0, $vr1
	ldx.d	$a2, $a0, $s3
	vst	$vr0, $a5, -64
	vinsgr2vr.d	$vr0, $a1, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a2, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $a0, $s4
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a0, $a1, 4
	addi.d	$s4, $s4, 256
	addi.w	$s1, $s1, 4
	addi.d	$s3, $s3, 128
	blt	$a1, $s5, .LBB8_4
# %bb.5:
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $s2, 0
	ldptr.w	$a1, $a0, 15256
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	or	$a1, $a1, $a2
	andi	$a1, $a1, 1
	bnez	$a1, .LBB8_9
# %bb.6:
	ld.w	$a0, $a0, 20
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB8_9
# %bb.7:
	addi.d	$a1, $sp, 196
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $zero
	pcaddu18i	$ra, %call36(dct_luma8x8)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_9
# %bb.8:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a4, 0
	ori	$a2, $zero, 51
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a3, $a5, 0
	sll.w	$a0, $a2, $a0
	or	$a0, $a1, $a0
	st.d	$a0, $a4, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	or	$a0, $a3, $a0
	st.w	$a0, $a5, 0
.LBB8_9:                                # %.critedge
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s2, 0
	ldptr.w	$a1, $a0, 15256
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	or	$a1, $a1, $a2
	andi	$a1, $a1, 1
	bnez	$a1, .LBB8_40
# %bb.10:                               # %.critedge
	ld.w	$a1, $sp, 196
	ori	$a2, $zero, 4
	blt	$a2, $a1, .LBB8_40
# %bb.11:
	ld.w	$a1, $a0, 44
	beqz	$a1, .LBB8_39
.LBB8_12:
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB8_15
# %bb.13:
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a2, $a1, %pc_lo12(si_frame_indicator)
	ori	$a1, $zero, 1
	beq	$a2, $a1, .LBB8_40
# %bb.14:
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(sp2_frame_indicator)
	beq	$a2, $a1, .LBB8_40
.LBB8_15:
	ori	$a1, $zero, 63
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a2, $a3, 0
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a4
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	slli.d	$fp, $a4, 3
	st.w	$zero, $sp, 196
	and	$a1, $a2, $a1
	st.w	$a1, $a3, 0
	slli.d	$a1, $a4, 1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a2, $a1
	ori	$a2, $zero, 51
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $a4, 0
	sll.w	$a1, $a2, $a1
	nor	$a1, $a1, $zero
	addi.w	$a1, $a1, 0
	and	$a1, $a3, $a1
	st.d	$a1, $a4, 0
	addi.w	$a3, $s0, 8
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a2, $a1, 0
	ldptr.d	$a2, $a2, 6440
	ld.w	$a4, $a0, 180
	alsl.d	$a2, $a4, $a2, 3
	slli.d	$a4, $s0, 3
	ldx.d	$a4, $a2, $a4
	ld.w	$a2, $a0, 176
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	add.d	$a0, $a0, $a5
	alsl.d	$a5, $fp, $a0, 1
	lu12i.w	$a0, 3
	ori	$a0, $a0, 336
	vldx	$vr0, $a5, $a0
	add.w	$a2, $a2, $fp
	slli.d	$a5, $a2, 1
	addi.d	$a2, $s0, 1
	vstx	$vr0, $a4, $a5
	bge	$a2, $a3, .LBB8_17
# %bb.16:
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a2, $a3, 3
	slli.d	$a5, $a5, 3
	ldx.d	$a3, $a3, $a5
	ld.w	$a5, $a4, 176
	slli.d	$a2, $a2, 5
	add.d	$a2, $a4, $a2
	alsl.d	$a2, $fp, $a2, 1
	vldx	$vr0, $a2, $a0
	add.w	$a2, $a5, $fp
	slli.d	$a2, $a2, 1
	vstx	$vr0, $a3, $a2
	ld.d	$a2, $a1, 0
	ld.d	$a3, $s2, 0
	ldptr.d	$a2, $a2, 6440
	ld.w	$a4, $a3, 180
	addi.d	$a5, $s0, 2
	alsl.d	$a2, $a5, $a2, 3
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $a3, 176
	slli.d	$a5, $a5, 5
	add.d	$a3, $a3, $a5
	alsl.d	$a3, $fp, $a3, 1
	vldx	$vr0, $a3, $a0
	add.w	$a3, $a4, $fp
	slli.d	$a3, $a3, 1
	vstx	$vr0, $a2, $a3
	ld.d	$a2, $a1, 0
	ld.d	$a3, $s2, 0
	ldptr.d	$a2, $a2, 6440
	ld.w	$a4, $a3, 180
	addi.d	$a5, $s0, 3
	alsl.d	$a2, $a5, $a2, 3
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $a3, 176
	slli.d	$a5, $a5, 5
	add.d	$a3, $a3, $a5
	alsl.d	$a3, $fp, $a3, 1
	vldx	$vr0, $a3, $a0
	add.w	$a3, $a4, $fp
	slli.d	$a3, $a3, 1
	vstx	$vr0, $a2, $a3
	ld.d	$a2, $a1, 0
	ld.d	$a3, $s2, 0
	ldptr.d	$a2, $a2, 6440
	ld.w	$a4, $a3, 180
	addi.d	$a5, $s0, 4
	alsl.d	$a2, $a5, $a2, 3
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $a3, 176
	slli.d	$a5, $a5, 5
	add.d	$a3, $a3, $a5
	alsl.d	$a3, $fp, $a3, 1
	vldx	$vr0, $a3, $a0
	add.w	$a3, $a4, $fp
	slli.d	$a3, $a3, 1
	vstx	$vr0, $a2, $a3
	ld.d	$a2, $a1, 0
	ld.d	$a3, $s2, 0
	ldptr.d	$a2, $a2, 6440
	ld.w	$a4, $a3, 180
	addi.d	$a5, $s0, 5
	alsl.d	$a2, $a5, $a2, 3
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $a3, 176
	slli.d	$a5, $a5, 5
	add.d	$a3, $a3, $a5
	alsl.d	$a3, $fp, $a3, 1
	vldx	$vr0, $a3, $a0
	add.w	$a3, $a4, $fp
	slli.d	$a3, $a3, 1
	vstx	$vr0, $a2, $a3
	ld.d	$a2, $a1, 0
	ld.d	$a3, $s2, 0
	ldptr.d	$a2, $a2, 6440
	ld.w	$a4, $a3, 180
	addi.d	$a5, $s0, 6
	alsl.d	$a2, $a5, $a2, 3
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $a3, 176
	slli.d	$a5, $a5, 5
	add.d	$a3, $a3, $a5
	alsl.d	$a3, $fp, $a3, 1
	vldx	$vr0, $a3, $a0
	add.w	$a3, $a4, $fp
	slli.d	$a3, $a3, 1
	vstx	$vr0, $a2, $a3
	ld.d	$a1, $a1, 0
	ld.d	$a2, $s2, 0
	ldptr.d	$a1, $a1, 6440
	ld.w	$a3, $a2, 180
	addi.d	$a4, $s0, 7
	alsl.d	$a1, $a4, $a1, 3
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $a2, 176
	slli.d	$a4, $a4, 5
	add.d	$a2, $a2, $a4
	alsl.d	$a2, $fp, $a2, 1
	vldx	$vr0, $a2, $a0
	add.w	$a0, $a3, $fp
	slli.d	$a0, $a0, 1
	vstx	$vr0, $a1, $a0
.LBB8_17:
	ld.d	$a0, $s2, 0
	ld.w	$a0, $a0, 20
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB8_40
# %bb.18:                               # %.loopexit.loopexit
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$fp, $fp, 4
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	b	.LBB8_40
.LBB8_19:                               # %.preheader159.preheader
	srli.d	$a1, $a4, 2
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	addi.d	$s3, $t0, -4
	bstrins.d	$a0, $t1, 4, 4
	ori	$a1, $a2, 440
	add.d	$s4, $a0, $a1
	ori	$a0, $a2, 848
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $a2, 912
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ori	$a0, $a2, 976
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ori	$a0, $a2, 1040
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$s1, $t0
	b	.LBB8_22
	.p2align	4, , 16
.LBB8_20:                               #   in Loop: Header=BB8_22 Depth=1
	move	$a6, $fp
	ld.w	$a0, $a1, 44
	beqz	$a0, .LBB8_35
.LBB8_21:                               #   in Loop: Header=BB8_22 Depth=1
	addi.d	$s3, $s3, 4
	addi.d	$s4, $s4, 128
	addi.w	$s1, $s1, 4
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	bge	$s3, $s5, .LBB8_9
.LBB8_22:                               # %.preheader159
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 196
	ld.w	$a0, $a0, 192
	add.d	$a1, $s3, $a1
	addi.d	$s7, $a1, 4
	add.d	$s6, $a4, $a0
	move	$a0, $a4
	move	$a1, $s1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	move	$a4, $s8
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	move	$s5, $a6
	move	$a6, $s0
	pcaddu18i	$ra, %call36(LumaPrediction4x4)
	jirl	$ra, $ra, 0
	move	$fp, $s5
	ld.d	$a1, $s5, %pc_lo12(imgY_org)
	slli.d	$s5, $s7, 3
	ldx.d	$a2, $a1, $s5
	ld.d	$a0, $s2, 0
	slli.d	$a3, $s6, 1
	ldx.d	$a2, $a2, $a3
	alsl.d	$a1, $s7, $a1, 3
	add.d	$a4, $a0, $s4
	ld.d	$a5, $a4, -104
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 8
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a5, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	ldx.d	$a2, $a2, $a3
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a5, $a4, -72
	ld.d	$a6, $a1, 16
	vinsgr2vr.d	$vr1, $a2, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	vstx	$vr0, $a0, $a2
	vinsgr2vr.d	$vr0, $a5, 0
	ldx.d	$a2, $a6, $a3
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsub.w	$vr0, $vr1, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	ld.d	$a2, $a4, -40
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	vstx	$vr0, $a0, $a5
	ld.d	$a1, $a1, 24
	vsllwil.wu.hu	$vr0, $vr1, 0
	vinsgr2vr.d	$vr1, $a2, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	ldx.d	$a1, $a1, $a3
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a2, $a4, -8
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	vstx	$vr0, $a0, $a3
	vinsgr2vr.d	$vr0, $a1, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a2, 0
	ld.d	$a1, $s2, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	vstx	$vr0, $a0, $a2
	ldptr.w	$a0, $a1, 15256
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	or	$a0, $a0, $a2
	andi	$a0, $a0, 1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.d	$a2, $a2, $s3
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	beqz	$a0, .LBB8_25
# %bb.23:                               #   in Loop: Header=BB8_22 Depth=1
	ld.w	$a0, $a1, 44
	bnez	$a0, .LBB8_30
# %bb.24:                               #   in Loop: Header=BB8_22 Depth=1
	ldptr.w	$a0, $a1, 15540
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB8_30
	.p2align	4, , 16
.LBB8_25:                               #   in Loop: Header=BB8_22 Depth=1
	ld.w	$a0, $a1, 20
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB8_28
# %bb.26:                               #   in Loop: Header=BB8_22 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(si_frame_indicator)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(sp2_frame_indicator)
	or	$a1, $a0, $a1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a2, $sp, 196
	beqz	$a1, .LBB8_36
# %bb.27:                               #   in Loop: Header=BB8_22 Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(dct_luma_sp2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_29
	b	.LBB8_30
	.p2align	4, , 16
.LBB8_28:                               #   in Loop: Header=BB8_22 Depth=1
	addi.d	$a2, $sp, 196
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(dct_luma)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_30
.LBB8_29:                               #   in Loop: Header=BB8_22 Depth=1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 4
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a2, $a4, 0
	ori	$a5, $zero, 1
	sll.d	$a1, $a5, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $a3, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	or	$a0, $a2, $a0
	st.w	$a0, $a4, 0
.LBB8_30:                               #   in Loop: Header=BB8_22 Depth=1
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 192
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$s6, $a0, $a1
	move	$a1, $s1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	move	$a4, $s8
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	move	$a6, $s0
	pcaddu18i	$ra, %call36(LumaPrediction4x4)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, %pc_lo12(imgY_org)
	ldx.d	$a2, $a1, $s5
	ld.d	$a0, $s2, 0
	slli.d	$a3, $s6, 1
	ldx.d	$a2, $a2, $a3
	alsl.d	$a1, $s7, $a1, 3
	add.d	$a4, $a0, $s4
	ld.d	$a5, $a4, -96
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 8
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a5, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	ldx.d	$a2, $a2, $a3
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a5, $a4, -64
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	vstx	$vr0, $a0, $a7
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 16
	vinsgr2vr.d	$vr1, $a5, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	ldx.d	$a2, $a2, $a3
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	vstx	$vr0, $a0, $a5
	ld.d	$a4, $a4, -32
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a1, $a1, 24
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a4, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	ldx.d	$a1, $a1, $a3
	vsub.w	$vr0, $vr0, $vr1
	ldx.d	$a2, $a0, $s4
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	vstx	$vr0, $a0, $a3
	vinsgr2vr.d	$vr0, $a1, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a2, 0
	ld.d	$a1, $s2, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	vstx	$vr0, $a0, $a2
	ldptr.w	$a0, $a1, 15256
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	or	$a0, $a0, $a2
	andi	$a0, $a0, 1
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	bnez	$a0, .LBB8_20
.LBB8_31:                               #   in Loop: Header=BB8_22 Depth=1
	ld.w	$a0, $a1, 20
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB8_34
# %bb.32:                               #   in Loop: Header=BB8_22 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(si_frame_indicator)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(sp2_frame_indicator)
	or	$a1, $a0, $a1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a2, $sp, 196
	beqz	$a1, .LBB8_37
# %bb.33:                               #   in Loop: Header=BB8_22 Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(dct_luma_sp2)
	jirl	$ra, $ra, 0
	move	$a6, $fp
	bnez	$a0, .LBB8_38
	b	.LBB8_21
	.p2align	4, , 16
.LBB8_34:                               #   in Loop: Header=BB8_22 Depth=1
	addi.d	$a2, $sp, 196
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(dct_luma)
	jirl	$ra, $ra, 0
	move	$a6, $fp
	bnez	$a0, .LBB8_38
	b	.LBB8_21
.LBB8_35:                               #   in Loop: Header=BB8_22 Depth=1
	ldptr.w	$a0, $a1, 15540
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB8_21
	b	.LBB8_31
.LBB8_36:                               #   in Loop: Header=BB8_22 Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(dct_luma_sp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_29
	b	.LBB8_30
.LBB8_37:                               #   in Loop: Header=BB8_22 Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(dct_luma_sp)
	jirl	$ra, $ra, 0
	move	$a6, $fp
	beqz	$a0, .LBB8_21
.LBB8_38:                               #   in Loop: Header=BB8_22 Depth=1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 5
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a2, $a4, 0
	ori	$a5, $zero, 1
	sll.d	$a1, $a5, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $a3, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	or	$a0, $a2, $a0
	st.w	$a0, $a4, 0
	b	.LBB8_21
.LBB8_39:
	ldptr.w	$a1, $a0, 15540
	beqz	$a1, .LBB8_12
.LBB8_40:                               # %.loopexit
	ld.w	$a0, $sp, 196
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.Lfunc_end8:
	.size	LumaResidualCoding8x8, .Lfunc_end8-LumaResidualCoding8x8
                                        # -- End function
	.p2align	5                               # -- Begin function OneComponentChromaPrediction4x4_retrieve
	.type	OneComponentChromaPrediction4x4_retrieve,@function
OneComponentChromaPrediction4x4_retrieve: # @OneComponentChromaPrediction4x4_retrieve
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	move	$s1, $a3
	move	$s3, $a2
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a0, 12
	ldptr.d	$a3, $a0, 14224
	ori	$t0, $zero, 536
	mul.d	$a2, $a2, $t0
	add.d	$a2, $a3, $a2
	ld.w	$t1, $a2, 432
	pcalau12i	$a2, %pc_hi20(chroma_shift_x)
	ld.w	$a3, $a2, %pc_lo12(chroma_shift_x)
	pcalau12i	$a2, %pc_hi20(chroma_shift_y)
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a2, $a2, %pc_lo12(chroma_shift_y)
	ld.w	$t0, $a0, 200
	add.w	$t1, $t1, $a4
	slli.d	$t1, $t1, 3
	pcalau12i	$t2, %got_pc_hi20(listX)
	ld.d	$t2, $t2, %got_pc_lo12(listX)
	ldx.d	$t1, $t2, $t1
	slli.d	$a5, $a5, 3
	move	$s8, $a5
	ldx.d	$a5, $t1, $a5
	pcalau12i	$t1, %pc_hi20(active_sps)
	ld.d	$t1, $t1, %pc_lo12(active_sps)
	ldptr.d	$t2, $a5, 6464
	slli.d	$a7, $a7, 3
	ld.w	$t1, $t1, 32
	ldx.d	$s0, $t2, $a7
	ori	$t7, $zero, 80
	ori	$t2, $zero, 1
	lu12i.w	$a7, 1
	bne	$t1, $t2, .LBB9_2
# %bb.1:
	ori	$t1, $a7, 2328
	ldx.w	$t1, $a5, $t1
	addi.d	$t7, $t1, 80
.LBB9_2:
	st.d	$t7, $sp, 56                    # 8-byte Folded Spill
	addi.d	$t1, $a1, 2
	add.d	$t2, $t0, $t1
	sll.w	$t2, $t2, $a3
	add.d	$t0, $t0, $a1
	ori	$t3, $a7, 2320
	ldx.w	$t3, $a5, $t3
	ori	$t4, $zero, 4
	sub.d	$t8, $t4, $a2
	st.d	$t8, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$t5, %pc_hi20(width_pad_cr)
	st.w	$t3, $t5, %pc_lo12(width_pad_cr)
	sra.w	$t3, $s3, $t8
	slli.d	$s2, $t3, 3
	ldx.d	$t3, $s1, $s2
	sub.d	$t4, $t4, $a3
	sra.w	$a1, $a1, $t4
	slli.d	$a1, $a1, 3
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ldx.d	$a1, $t3, $a1
	sll.w	$a3, $t0, $a3
	sra.w	$t0, $t1, $t4
	st.d	$t0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$s5, $a4, 3
	ldx.d	$a1, $a1, $s5
	addi.d	$s4, $t2, 80
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	addi.d	$t0, $a3, 80
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	ori	$a3, $a7, 2324
	ldx.d	$a1, $a1, $s8
	ldx.w	$a3, $a5, $a3
	ld.w	$a0, $a0, 204
	slli.d	$s6, $a6, 3
	ldx.d	$a1, $a1, $s6
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(height_pad_cr)
	st.w	$a3, $a4, %pc_lo12(height_pad_cr)
	add.d	$a0, $a0, $s3
	ld.h	$a3, $a1, 0
	ld.h	$a1, $a1, 2
	sll.w	$a0, $a0, $a2
	add.d	$s7, $a0, $t7
	add.w	$a2, $t0, $a3
	add.w	$a1, $s7, $a1
	move	$a0, $s0
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(UMVLine8X_chroma)
	jirl	$ra, $ra, 0
	ldx.d	$a1, $s1, $s2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	ldx.d	$a1, $a1, $a2
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	ldx.d	$a1, $a1, $s5
	ld.h	$a2, $a0, 0
	ldx.d	$a1, $a1, $s8
	st.h	$a2, $fp, 0
	ld.h	$a0, $a0, 2
	ldx.d	$a1, $a1, $s6
	st.h	$a0, $fp, 2
	ld.h	$a0, $a1, 0
	ld.h	$a1, $a1, 2
	add.w	$a2, $s4, $a0
	add.w	$a1, $s7, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(UMVLine8X_chroma)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s3, 1
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	sra.w	$a2, $a1, $s2
	slli.d	$s4, $a2, 3
	ldx.d	$a2, $s1, $s4
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $s6
	ld.h	$a3, $a0, 0
	ldx.d	$a2, $a2, $s5
	st.h	$a3, $fp, 4
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ldx.d	$a2, $a2, $s8
	ld.h	$a0, $a0, 2
	ld.w	$a3, $a3, 204
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $s5
	st.h	$a0, $fp, 6
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.wu	$a0, $a0, %pc_lo12(chroma_shift_y)
	add.d	$a1, $a3, $a1
	ld.h	$a3, $a2, 0
	ld.h	$a4, $a2, 2
	sll.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$s7, $a0, $a1
	move	$s3, $s0
	move	$s0, $s8
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	add.w	$a2, $s8, $a3
	add.w	$a1, $s7, $a4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(UMVLine8X_chroma)
	jirl	$ra, $ra, 0
	ldx.d	$a1, $s1, $s4
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $s4
	ld.h	$a2, $a0, 0
	ldx.d	$a1, $a1, $s0
	st.h	$a2, $fp, 8
	ld.h	$a0, $a0, 2
	ldx.d	$a1, $a1, $s5
	st.h	$a0, $fp, 10
	ld.h	$a0, $a1, 0
	ld.h	$a1, $a1, 2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.w	$a2, $a2, $a0
	add.w	$a1, $s7, $a1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(UMVLine8X_chroma)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 2
	sra.w	$a2, $a1, $s2
	slli.d	$s5, $a2, 3
	ldx.d	$a2, $s1, $s5
	ldx.d	$a2, $a2, $s6
	ld.h	$a3, $a0, 0
	ldx.d	$a2, $a2, $s4
	st.h	$a3, $fp, 12
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ldx.d	$a2, $a2, $s0
	move	$s2, $s0
	ld.h	$a0, $a0, 2
	ld.w	$a3, $a3, 204
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $s0
	st.h	$a0, $fp, 14
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.wu	$a0, $a0, %pc_lo12(chroma_shift_y)
	add.d	$a1, $a3, $a1
	ld.h	$a3, $a2, 0
	ld.h	$a4, $a2, 2
	sll.w	$a0, $a1, $a0
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	add.d	$s7, $a0, $s6
	add.w	$a2, $s8, $a3
	add.w	$a1, $s7, $a4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(UMVLine8X_chroma)
	jirl	$ra, $ra, 0
	ldx.d	$a1, $s1, $s5
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $s8
	ldx.d	$a1, $a1, $s4
	ld.h	$a2, $a0, 0
	ldx.d	$a1, $a1, $s2
	st.h	$a2, $fp, 16
	ld.h	$a0, $a0, 2
	ldx.d	$a1, $a1, $s0
	st.h	$a0, $fp, 18
	ld.h	$a0, $a1, 0
	ld.h	$a1, $a1, 2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.w	$a2, $a2, $a0
	add.w	$a1, $s7, $a1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(UMVLine8X_chroma)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 3
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	sra.w	$a2, $a1, $a2
	slli.d	$s5, $a2, 3
	ldx.d	$a2, $s1, $s5
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $a3
	ld.h	$a3, $a0, 0
	ldx.d	$a2, $a2, $s4
	st.h	$a3, $fp, 20
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ldx.d	$a2, $a2, $s2
	ld.h	$a0, $a0, 2
	ld.w	$a3, $a3, 204
	ldx.d	$a2, $a2, $s0
	st.h	$a0, $fp, 22
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.wu	$a0, $a0, %pc_lo12(chroma_shift_y)
	add.d	$a1, $a3, $a1
	ld.h	$a3, $a2, 0
	ld.h	$a4, $a2, 2
	sll.w	$a0, $a1, $a0
	add.d	$s6, $a0, $s6
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.w	$a2, $a0, $a3
	add.w	$a1, $s6, $a4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(UMVLine8X_chroma)
	jirl	$ra, $ra, 0
	ldx.d	$a1, $s1, $s5
	ldx.d	$a1, $a1, $s8
	ldx.d	$a1, $a1, $s4
	ld.h	$a2, $a0, 0
	ldx.d	$a1, $a1, $s2
	st.h	$a2, $fp, 24
	ld.h	$a0, $a0, 2
	ldx.d	$a1, $a1, $s0
	st.h	$a0, $fp, 26
	ld.h	$a0, $a1, 0
	ld.h	$a1, $a1, 2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.w	$a2, $a2, $a0
	add.w	$a1, $s6, $a1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(UMVLine8X_chroma)
	jirl	$ra, $ra, 0
	ld.h	$a1, $a0, 0
	st.h	$a1, $fp, 28
	ld.h	$a0, $a0, 2
	st.h	$a0, $fp, 30
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end9:
	.size	OneComponentChromaPrediction4x4_retrieve, .Lfunc_end9-OneComponentChromaPrediction4x4_retrieve
                                        # -- End function
	.p2align	5                               # -- Begin function OneComponentChromaPrediction4x4_regenerate
	.type	OneComponentChromaPrediction4x4_regenerate,@function
OneComponentChromaPrediction4x4_regenerate: # @OneComponentChromaPrediction4x4_regenerate
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	move	$t4, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.w	$a3, $a0, 15544
	ldptr.w	$t8, $a0, 15548
	ori	$t2, $zero, 64
	div.w	$t0, $t2, $a3
	addi.d	$t1, $t0, -1
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	div.w	$t2, $t2, $t8
	addi.d	$t3, $t2, -1
	ld.w	$t5, $a0, 12
	ldptr.d	$t6, $a0, 14224
	mul.w	$t1, $t2, $t0
	ori	$t7, $zero, 536
	mul.d	$t5, $t5, $t7
	add.d	$t5, $t6, $t5
	ld.w	$s0, $t5, 432
	ld.w	$t6, $a0, 80
	st.d	$t1, $sp, 88                    # 8-byte Folded Spill
	srai.d	$t1, $t1, 1
	st.d	$t1, $sp, 80                    # 8-byte Folded Spill
	ld.w	$t7, $a0, 64
	sltu	$fp, $zero, $s0
	sra.w	$t6, $t6, $fp
	addi.w	$t6, $t6, -1
	addi.w	$t7, $t7, -1
	srai.d	$t1, $t8, 2
	st.d	$t1, $sp, 32                    # 8-byte Folded Spill
	srai.d	$fp, $a3, 2
	add.w	$a3, $s0, $a4
	slli.d	$a3, $a3, 3
	pcalau12i	$t8, %got_pc_hi20(listX)
	ld.d	$t8, $t8, %got_pc_lo12(listX)
	ldx.d	$a3, $t8, $a3
	slli.d	$a5, $a5, 3
	ldx.d	$a3, $a3, $a5
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	ldptr.d	$a3, $a3, 6472
	slli.d	$a7, $a7, 3
	pcalau12i	$t8, %pc_hi20(active_sps)
	ld.d	$t8, $t8, %pc_lo12(active_sps)
	ldx.d	$a7, $a3, $a7
	ld.w	$a3, $a0, 204
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 200
	ld.w	$s2, $t8, 32
	addi.w	$s3, $a1, 3
	addi.w	$a3, $a2, 3
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	mul.d	$s5, $t0, $a0
	addi.d	$a0, $a0, 1
	mul.d	$a0, $t0, $a0
	addi.d	$s6, $a0, -1
	slli.d	$a4, $a4, 3
	slli.d	$a6, $a6, 3
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2328
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB10_2
	.p2align	4, , 16
.LBB10_1:                               #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a2, $a1, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB10_6
.LBB10_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_4 Depth 2
	move	$a1, $a2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	div.w	$a0, $a2, $a0
	slli.d	$a0, $a0, 3
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $a0
	move	$t8, $zero
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	mul.d	$a3, $a0, $t2
	move	$a0, $t4
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	b	.LBB10_4
	.p2align	4, , 16
.LBB10_3:                               #   in Loop: Header=BB10_4 Depth=2
	ld.h	$s4, $s4, 0
	add.d	$ra, $s5, $t8
	add.w	$ra, $ra, $s4
	div.w	$s0, $ra, $t0
	srai.d	$s7, $s0, 63
	andn	$s0, $s0, $s7
	slt	$s7, $s0, $t7
	maskeqz	$s0, $s0, $s7
	masknez	$s7, $t7, $s7
	or	$s0, $s0, $s7
	div.w	$s7, $a1, $t2
	srai.d	$s8, $s7, 63
	andn	$s7, $s7, $s8
	slt	$s8, $s7, $t6
	maskeqz	$s7, $s7, $s8
	masknez	$s8, $t6, $s8
	or	$s7, $s7, $s8
	add.d	$s8, $s6, $t8
	add.w	$s4, $s8, $s4
	div.w	$s4, $s4, $t0
	srai.d	$s8, $s4, 63
	andn	$s4, $s4, $s8
	slt	$s8, $s4, $t7
	maskeqz	$s4, $s4, $s8
	masknez	$s8, $t7, $s8
	or	$s4, $s4, $s8
	add.w	$s8, $a1, $t3
	div.w	$s8, $s8, $t2
	srai.d	$t1, $s8, 63
	andn	$t1, $s8, $t1
	slt	$s8, $t1, $t6
	maskeqz	$t1, $t1, $s8
	masknez	$s8, $t6, $s8
	or	$t1, $t1, $s8
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	and	$s8, $ra, $t4
	sub.d	$ra, $t0, $s8
	and	$a1, $a1, $t3
	sub.d	$t4, $t2, $a1
	slli.d	$s7, $s7, 3
	ldx.d	$s7, $a7, $s7
	slli.d	$s0, $s0, 1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a7, $t1
	ldx.hu	$t5, $s7, $s0
	slli.d	$s4, $s4, 1
	ldx.hu	$s7, $s7, $s4
	ldx.hu	$s0, $t1, $s0
	ldx.hu	$t1, $t1, $s4
	mul.d	$t5, $ra, $t5
	mul.d	$s4, $s8, $s7
	mul.d	$s0, $ra, $s0
	mul.d	$t1, $s8, $t1
	add.d	$t1, $t1, $s0
	mul.d	$a1, $t1, $a1
	add.d	$t1, $s4, $t5
	mul.d	$t1, $t1, $t4
	ld.d	$t4, $sp, 80                    # 8-byte Folded Reload
	add.d	$t1, $t1, $t4
	add.w	$a1, $t1, $a1
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	div.w	$t1, $a1, $t1
	addi.d	$t4, $a0, 2
	st.h	$t1, $a0, 0
	addi.w	$s4, $s1, 1
	add.d	$t8, $t8, $t0
	move	$a0, $t4
	bge	$s1, $s3, .LBB10_1
.LBB10_4:                               #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s1, $s4
	div.w	$a1, $s4, $fp
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ldx.d	$a1, $a1, $a4
	ldx.d	$a1, $a1, $a5
	ldx.d	$s4, $a1, $a6
	ld.h	$a1, $s4, 2
	add.w	$a1, $a3, $a1
	ori	$t1, $zero, 1
	bne	$s2, $t1, .LBB10_3
# %bb.5:                                #   in Loop: Header=BB10_4 Depth=2
	ld.d	$t1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$ra, $t1, $t4
	add.w	$a1, $ra, $a1
	b	.LBB10_3
.LBB10_6:
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end10:
	.size	OneComponentChromaPrediction4x4_regenerate, .Lfunc_end10-OneComponentChromaPrediction4x4_regenerate
                                        # -- End function
	.globl	SetModesAndRefframe             # -- Begin function SetModesAndRefframe
	.p2align	5
	.type	SetModesAndRefframe,@function
SetModesAndRefframe:                    # @SetModesAndRefframe
# %bb.0:
	pcalau12i	$a6, %got_pc_hi20(img)
	ld.d	$a6, $a6, %got_pc_lo12(img)
	ld.d	$a6, $a6, 0
	ld.w	$a7, $a6, 12
	ldptr.d	$t0, $a6, 14224
	ori	$t1, $zero, 536
	mul.d	$a7, $a7, $t1
	add.d	$t2, $t0, $a7
	move	$a7, $a0
	bstrins.d	$a7, $zero, 0, 0
	slli.d	$t4, $a0, 1
	lu12i.w	$t0, 15
	addi.w	$t1, $zero, -1
	ori	$t0, $t0, 4095
	move	$t3, $t1
	lu32i.d	$t3, 0
	st.w	$t3, $a3, 0
	st.w	$t3, $a2, 0
	alsl.d	$a0, $a0, $t2, 2
	ld.w	$t2, $a0, 392
	st.h	$t0, $a5, 0
	ld.w	$t5, $a6, 20
	st.h	$t0, $a4, 0
	st.h	$t2, $a1, 0
	ori	$t3, $zero, 1
	andi	$a1, $t4, 2
	bne	$t5, $t3, .LBB11_5
# %bb.1:
	beq	$t2, $t3, .LBB11_6
# %bb.2:
	beqz	$t2, .LBB11_5
# %bb.3:
	bne	$t2, $t1, .LBB11_7
# %bb.4:
	st.h	$t0, $a4, 0
	st.h	$t0, $a5, 0
	st.w	$zero, $a2, 0
	st.w	$zero, $a3, 0
	ret
.LBB11_5:
	pcalau12i	$t0, %got_pc_hi20(enc_picture)
	ld.d	$t0, $t0, %got_pc_lo12(enc_picture)
	ld.d	$t0, $t0, 0
	ldptr.d	$t0, $t0, 6488
	ld.w	$t1, $a6, 172
	ld.d	$t0, $t0, 0
	add.w	$a7, $t1, $a7
	slli.d	$a7, $a7, 3
	ld.w	$a6, $a6, 168
	ldx.d	$a7, $t0, $a7
	add.w	$a1, $a6, $a1
	ldx.b	$a1, $a7, $a1
	ld.w	$a6, $a0, 376
	st.h	$a1, $a4, 0
	st.h	$zero, $a5, 0
	st.w	$a6, $a2, 0
	st.w	$zero, $a3, 0
	ret
.LBB11_6:
	st.h	$zero, $a4, 0
	pcalau12i	$a4, %got_pc_hi20(enc_picture)
	ld.d	$a4, $a4, %got_pc_lo12(enc_picture)
	ld.d	$a4, $a4, 0
	ldptr.d	$a4, $a4, 6488
	ld.w	$t0, $a6, 172
	ld.d	$a4, $a4, 8
	add.w	$a7, $t0, $a7
	slli.d	$a7, $a7, 3
	ld.w	$a6, $a6, 168
	ldx.d	$a4, $a4, $a7
	add.w	$a1, $a6, $a1
	ldx.b	$a1, $a4, $a1
	st.w	$zero, $a2, 0
	ld.w	$a0, $a0, 376
	st.h	$a1, $a5, 0
	st.w	$a0, $a3, 0
	ret
.LBB11_7:
	pcalau12i	$t0, %got_pc_hi20(enc_picture)
	ld.d	$t0, $t0, %got_pc_lo12(enc_picture)
	ld.d	$t0, $t0, 0
	ldptr.d	$t0, $t0, 6488
	ld.w	$t1, $a6, 172
	ld.d	$t2, $t0, 0
	add.w	$a7, $t1, $a7
	slli.d	$a7, $a7, 3
	ld.w	$a6, $a6, 168
	ldx.d	$t1, $t2, $a7
	ld.d	$t0, $t0, 8
	add.w	$a1, $a6, $a1
	ldx.b	$a6, $t1, $a1
	ldx.d	$a7, $t0, $a7
	st.h	$a6, $a4, 0
	ldx.b	$a1, $a7, $a1
	ld.w	$a0, $a0, 376
	st.h	$a1, $a5, 0
	st.w	$a0, $a2, 0
	st.w	$a0, $a3, 0
	ret
.Lfunc_end11:
	.size	SetModesAndRefframe, .Lfunc_end11-SetModesAndRefframe
                                        # -- End function
	.globl	LumaResidualCoding              # -- Begin function LumaResidualCoding
	.p2align	5
	.type	LumaResidualCoding,@function
LumaResidualCoding:                     # @LumaResidualCoding
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s2, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 12
	ldptr.d	$a0, $a0, 14224
	ori	$a2, $zero, 536
	mul.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	addi.d	$fp, $a0, 364
	st.w	$zero, $a0, 364
	addi.d	$s0, $a0, 368
	st.d	$zero, $a0, 368
	addi.d	$a1, $sp, 14
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 12
	addi.d	$a5, $sp, 10
	move	$a0, $zero
	pcaddu18i	$ra, %call36(SetModesAndRefframe)
	jirl	$ra, $ra, 0
	ld.h	$a3, $sp, 14
	ld.w	$a4, $sp, 20
	ld.w	$a5, $sp, 16
	ld.h	$a6, $sp, 12
	ld.h	$a7, $sp, 10
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(LumaResidualCoding8x8)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 1
	addi.d	$a1, $sp, 14
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 12
	addi.d	$a5, $sp, 10
	pcaddu18i	$ra, %call36(SetModesAndRefframe)
	jirl	$ra, $ra, 0
	ld.h	$a3, $sp, 14
	ld.w	$a4, $sp, 20
	ld.w	$a5, $sp, 16
	ld.h	$a6, $sp, 12
	ld.h	$a7, $sp, 10
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(LumaResidualCoding8x8)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 14
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 12
	addi.d	$a5, $sp, 10
	pcaddu18i	$ra, %call36(SetModesAndRefframe)
	jirl	$ra, $ra, 0
	ld.h	$a3, $sp, 14
	ld.w	$a4, $sp, 20
	ld.w	$a5, $sp, 16
	ld.h	$a6, $sp, 12
	ld.h	$a7, $sp, 10
	ori	$a2, $zero, 2
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(LumaResidualCoding8x8)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
	ori	$a0, $zero, 3
	addi.d	$a1, $sp, 14
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 12
	addi.d	$a5, $sp, 10
	pcaddu18i	$ra, %call36(SetModesAndRefframe)
	jirl	$ra, $ra, 0
	ld.h	$a3, $sp, 14
	ld.w	$a4, $sp, 20
	ld.w	$a5, $sp, 16
	ld.h	$a6, $sp, 12
	ld.h	$a7, $sp, 10
	ori	$a2, $zero, 3
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(LumaResidualCoding8x8)
	jirl	$ra, $ra, 0
	add.w	$a0, $a0, $s1
	ori	$a1, $zero, 5
	blt	$a1, $a0, .LBB12_8
# %bb.1:
	ld.d	$a3, $s2, 0
	ld.w	$a0, $a3, 44
	beqz	$a0, .LBB12_7
.LBB12_2:
	ld.w	$a1, $a3, 20
	ori	$a0, $zero, 3
	bne	$a1, $a0, .LBB12_5
# %bb.3:
	pcalau12i	$a1, %pc_hi20(si_frame_indicator)
	ld.w	$a2, $a1, %pc_lo12(si_frame_indicator)
	ori	$a1, $zero, 1
	beq	$a2, $a1, .LBB12_8
# %bb.4:
	pcalau12i	$a2, %pc_hi20(sp2_frame_indicator)
	ld.w	$a2, $a2, %pc_lo12(sp2_frame_indicator)
	beq	$a2, $a1, .LBB12_8
.LBB12_5:
	ld.wu	$a1, $fp, 0
	ld.bu	$a2, $s0, 2
	bstrpick.d	$a1, $a1, 23, 4
	slli.d	$a1, $a1, 4
	st.w	$a1, $fp, 0
	slli.d	$a1, $a2, 16
	st.d	$a1, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a2, 0
	ld.w	$a4, $a3, 180
	ldptr.d	$a1, $a1, 6440
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a1, $a4
	ld.w	$a5, $a3, 176
	lu12i.w	$a1, 3
	ori	$a6, $a1, 336
	vldx	$vr0, $a3, $a6
	slli.d	$a6, $a5, 1
	vstx	$vr0, $a4, $a6
	ori	$a6, $a1, 352
	vldx	$vr0, $a3, $a6
	alsl.d	$a3, $a5, $a4, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $a2, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 8
	ld.w	$a5, $a4, 176
	ori	$a6, $a1, 368
	vldx	$vr0, $a4, $a6
	slli.d	$a6, $a5, 1
	vstx	$vr0, $a3, $a6
	ori	$a6, $a1, 384
	vldx	$vr0, $a4, $a6
	alsl.d	$a3, $a5, $a3, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $a2, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 16
	ld.w	$a5, $a4, 176
	ori	$a6, $a1, 400
	vldx	$vr0, $a4, $a6
	slli.d	$a6, $a5, 1
	vstx	$vr0, $a3, $a6
	ori	$a6, $a1, 416
	vldx	$vr0, $a4, $a6
	alsl.d	$a3, $a5, $a3, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $a2, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 24
	ld.w	$a5, $a4, 176
	ori	$a6, $a1, 432
	vldx	$vr0, $a4, $a6
	slli.d	$a6, $a5, 1
	vstx	$vr0, $a3, $a6
	ori	$a6, $a1, 448
	vldx	$vr0, $a4, $a6
	alsl.d	$a3, $a5, $a3, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $a2, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 32
	ld.w	$a5, $a4, 176
	ori	$a6, $a1, 464
	vldx	$vr0, $a4, $a6
	slli.d	$a6, $a5, 1
	vstx	$vr0, $a3, $a6
	ori	$a6, $a1, 480
	vldx	$vr0, $a4, $a6
	alsl.d	$a3, $a5, $a3, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $a2, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 40
	ld.w	$a5, $a4, 176
	ori	$a6, $a1, 496
	vldx	$vr0, $a4, $a6
	slli.d	$a6, $a5, 1
	vstx	$vr0, $a3, $a6
	ori	$a6, $a1, 512
	vldx	$vr0, $a4, $a6
	alsl.d	$a3, $a5, $a3, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $a2, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 48
	ld.w	$a5, $a4, 176
	ori	$a6, $a1, 528
	vldx	$vr0, $a4, $a6
	slli.d	$a6, $a5, 1
	vstx	$vr0, $a3, $a6
	ori	$a6, $a1, 544
	vldx	$vr0, $a4, $a6
	alsl.d	$a3, $a5, $a3, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $a2, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 56
	ld.w	$a5, $a4, 176
	ori	$a6, $a1, 560
	vldx	$vr0, $a4, $a6
	slli.d	$a6, $a5, 1
	vstx	$vr0, $a3, $a6
	ori	$a6, $a1, 576
	vldx	$vr0, $a4, $a6
	alsl.d	$a3, $a5, $a3, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $a2, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 64
	ld.w	$a5, $a4, 176
	ori	$a6, $a1, 592
	vldx	$vr0, $a4, $a6
	slli.d	$a6, $a5, 1
	vstx	$vr0, $a3, $a6
	ori	$a6, $a1, 608
	vldx	$vr0, $a4, $a6
	alsl.d	$a3, $a5, $a3, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $a2, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 72
	ld.w	$a5, $a4, 176
	ori	$a6, $a1, 624
	vldx	$vr0, $a4, $a6
	slli.d	$a6, $a5, 1
	vstx	$vr0, $a3, $a6
	ori	$a6, $a1, 640
	vldx	$vr0, $a4, $a6
	alsl.d	$a3, $a5, $a3, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $a2, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 80
	ld.w	$a5, $a4, 176
	ori	$a6, $a1, 656
	vldx	$vr0, $a4, $a6
	slli.d	$a6, $a5, 1
	vstx	$vr0, $a3, $a6
	ori	$a6, $a1, 672
	vldx	$vr0, $a4, $a6
	alsl.d	$a3, $a5, $a3, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $a2, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 88
	ld.w	$a5, $a4, 176
	ori	$a6, $a1, 688
	vldx	$vr0, $a4, $a6
	slli.d	$a6, $a5, 1
	vstx	$vr0, $a3, $a6
	ori	$a6, $a1, 704
	vldx	$vr0, $a4, $a6
	alsl.d	$a3, $a5, $a3, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $a2, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 96
	ld.w	$a5, $a4, 176
	ori	$a6, $a1, 720
	vldx	$vr0, $a4, $a6
	slli.d	$a6, $a5, 1
	vstx	$vr0, $a3, $a6
	ori	$a6, $a1, 736
	vldx	$vr0, $a4, $a6
	alsl.d	$a3, $a5, $a3, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $a2, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 104
	ld.w	$a5, $a4, 176
	ori	$a6, $a1, 752
	vldx	$vr0, $a4, $a6
	slli.d	$a6, $a5, 1
	vstx	$vr0, $a3, $a6
	ori	$a6, $a1, 768
	vldx	$vr0, $a4, $a6
	alsl.d	$a3, $a5, $a3, 1
	vst	$vr0, $a3, 16
	ld.d	$a3, $a2, 0
	ld.d	$a4, $s2, 0
	ldptr.d	$a3, $a3, 6440
	ld.w	$a5, $a4, 180
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a3, $a3, 112
	ld.w	$a5, $a4, 176
	ori	$a6, $a1, 784
	vldx	$vr0, $a4, $a6
	slli.d	$a6, $a5, 1
	vstx	$vr0, $a3, $a6
	ori	$a6, $a1, 800
	vldx	$vr0, $a4, $a6
	alsl.d	$a3, $a5, $a3, 1
	vst	$vr0, $a3, 16
	ld.d	$a2, $a2, 0
	ld.d	$a3, $s2, 0
	ldptr.d	$a2, $a2, 6440
	ld.w	$a4, $a3, 180
	alsl.d	$a2, $a4, $a2, 3
	ld.d	$a2, $a2, 120
	ld.w	$a4, $a3, 176
	ori	$a5, $a1, 816
	vldx	$vr0, $a3, $a5
	slli.d	$a5, $a4, 1
	vstx	$vr0, $a2, $a5
	ori	$a1, $a1, 832
	vldx	$vr0, $a3, $a1
	alsl.d	$a1, $a4, $a2, 1
	vst	$vr0, $a1, 16
	ld.d	$a1, $s2, 0
	ld.w	$a1, $a1, 20
	bne	$a1, $a0, .LBB12_8
# %bb.6:                                # %.preheader34.preheader
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	move	$a0, $zero
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 12
	move	$a1, $zero
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 12
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	move	$a0, $zero
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 12
	move	$a0, $zero
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	ori	$a1, $zero, 12
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	ori	$a1, $zero, 12
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 12
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(copyblock_sp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 12
	ori	$a1, $zero, 12
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(copyblock_sp)
	jr	$t8
.LBB12_7:
	ldptr.w	$a0, $a3, 15540
	beqz	$a0, .LBB12_2
.LBB12_8:                               # %.loopexit
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end12:
	.size	LumaResidualCoding, .Lfunc_end12-LumaResidualCoding
                                        # -- End function
	.globl	TransformDecision               # -- Begin function TransformDecision
	.p2align	5
	.type	TransformDecision,@function
TransformDecision:                      # @TransformDecision
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
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a2, $a2, 1
	srli.d	$a3, $a2, 32
	masknez	$fp, $a0, $a3
	masknez	$a0, $a2, $a3
	ori	$a2, $zero, 4
	maskeqz	$a2, $a2, $a3
	or	$a0, $a2, $a0
	addi.w	$a0, $a0, 0
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bge	$fp, $a0, .LBB13_5
# %bb.1:                                # %.lr.ph.preheader
	slli.d	$s3, $fp, 3
	slli.d	$s1, $fp, 2
	lu12i.w	$a0, 3
	ori	$a0, $a0, 440
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s8, $a0, %got_pc_lo12(img)
	pcalau12i	$s4, %pc_hi20(imgY_org)
	pcalau12i	$a0, %pc_hi20(diff64)
	addi.d	$s0, $a0, %pc_lo12(diff64)
	move	$s7, $zero
	move	$a4, $zero
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB13_2:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_3 Depth 2
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	bstrins.d	$s1, $zero, 2, 0
	addi.w	$s6, $s1, 0
	slli.d	$a0, $s6, 5
	bstrpick.d	$a1, $s3, 62, 3
	bstrins.d	$a0, $a1, 4, 4
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$s2, $a0, $a1
	andi	$a0, $s3, 8
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 174
	addi.d	$a2, $sp, 180
	addi.d	$a3, $sp, 176
	addi.d	$a4, $sp, 172
	addi.d	$a5, $sp, 170
	move	$a0, $fp
	pcaddu18i	$ra, %call36(SetModesAndRefframe)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	slli.w	$a0, $fp, 2
	ld.h	$a1, $sp, 174
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a1, $sp, 180
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ld.w	$a1, $sp, 176
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.h	$a1, $sp, 172
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.h	$a1, $sp, 170
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ori	$a0, $a0, 4
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	srli.d	$a0, $s3, 3
	ori	$a1, $zero, 4
	bstrins.d	$a1, $a0, 3, 3
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	move	$s3, $s7
	.p2align	4, , 16
.LBB13_3:                               # %.preheader
                                        #   Parent Loop BB13_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s8, 0
	ld.w	$a1, $a0, 196
	ld.w	$a2, $a0, 192
	st.d	$s6, $sp, 128                   # 8-byte Folded Spill
	add.d	$s6, $s6, $a1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.d	$fp, $a0, $a2
	addi.w	$a1, $s1, 0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s4
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	move	$a3, $s7
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(LumaPrediction4x4)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(imgY_org)
	ld.d	$a1, $s8, 0
	slli.d	$a2, $s6, 3
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	ldx.d	$a4, $a0, $a2
	alsl.d	$a3, $s6, $a0, 3
	slli.d	$a2, $fp, 1
	add.d	$a1, $a1, $s2
	ldx.d	$a0, $a4, $a2
	ld.d	$a4, $a1, -104
	slli.d	$s5, $s5, 32
	srai.d	$a5, $s5, 30
	vinsgr2vr.d	$vr0, $a0, 0
	vinsgr2vr.d	$vr1, $a4, 0
	ld.d	$a4, $a3, 8
	add.d	$a0, $s0, $a5
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	ldx.d	$a4, $a4, $a2
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $s0, $a5
	ori	$a5, $zero, 0
	vinsgr2vr.d	$vr0, $a4, 0
	ld.d	$a4, $a1, -72
	lu32i.d	$a5, 4
	add.d	$a5, $s5, $a5
	srai.d	$a5, $a5, 30
	vinsgr2vr.d	$vr1, $a4, 0
	ld.d	$a4, $a3, 16
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsub.w	$vr0, $vr0, $vr1
	ldx.d	$a4, $a4, $a2
	vstx	$vr0, $s0, $a5
	ori	$a5, $zero, 0
	lu32i.d	$a5, 8
	vinsgr2vr.d	$vr0, $a4, 0
	ld.d	$a4, $a1, -40
	add.d	$a5, $s5, $a5
	srai.d	$a5, $a5, 30
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a4, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a3, $a3, 24
	vstx	$vr0, $s0, $a5
	ori	$a4, $zero, 0
	lu32i.d	$a4, 12
	ldx.d	$a2, $a3, $a2
	add.d	$a3, $s5, $a4
	ld.d	$a1, $a1, -8
	srai.d	$a3, $a3, 30
	vinsgr2vr.d	$vr0, $a2, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $s0, $a3
	pcaddu18i	$ra, %call36(distortion4x4)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	ld.w	$a1, $a1, 192
	add.d	$a0, $a0, $s3
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.d	$fp, $a0, $a1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	move	$a2, $s4
	move	$a3, $s7
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(LumaPrediction4x4)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(imgY_org)
	ld.d	$a1, $s8, 0
	alsl.d	$a3, $s6, $a0, 3
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a2
	ori	$a2, $zero, 0
	lu32i.d	$a2, 16
	add.d	$a4, $s5, $a2
	slli.d	$a2, $fp, 1
	ldx.d	$a0, $a0, $a2
	add.d	$a5, $a1, $s2
	ld.d	$a6, $a5, -96
	srai.d	$a4, $a4, 30
	vinsgr2vr.d	$vr0, $a0, 0
	add.d	$a0, $s0, $a4
	vinsgr2vr.d	$vr1, $a6, 0
	ld.d	$a6, $a3, 8
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsub.w	$vr0, $vr0, $vr1
	ldx.d	$a6, $a6, $a2
	vstx	$vr0, $s0, $a4
	ori	$a4, $zero, 0
	lu32i.d	$a4, 20
	vinsgr2vr.d	$vr0, $a6, 0
	ld.d	$a6, $a5, -64
	add.d	$a4, $s5, $a4
	srai.d	$a4, $a4, 30
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a6, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a6, $a3, 16
	vstx	$vr0, $s0, $a4
	ori	$a4, $zero, 0
	lu32i.d	$a4, 24
	ldx.d	$a6, $a6, $a2
	add.d	$a4, $s5, $a4
	ld.d	$a5, $a5, -32
	srai.d	$a4, $a4, 30
	vinsgr2vr.d	$vr0, $a6, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a5, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $s0, $a4
	ld.d	$a3, $a3, 24
	ori	$a4, $zero, 0
	lu32i.d	$a4, 28
	add.d	$a4, $s5, $a4
	ldx.d	$a2, $a3, $a2
	srai.d	$a3, $a4, 32
	ldx.d	$a1, $a1, $s2
	srai.d	$a4, $a4, 30
	vinsgr2vr.d	$vr0, $a2, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsub.w	$vr0, $vr0, $vr1
	vstx	$vr0, $s0, $a4
	addi.d	$s5, $a3, 4
	pcaddu18i	$ra, %call36(distortion4x4)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.w	$s3, $a0, $a1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$s6, $a1, 4
	addi.d	$s2, $s2, 128
	addi.d	$s1, $s1, 4
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB13_3
# %bb.4:                                #   in Loop: Header=BB13_2 Depth=1
	move	$s7, $s3
	pcalau12i	$a0, %pc_hi20(diff64)
	addi.d	$a0, $a0, %pc_lo12(diff64)
	pcaddu18i	$ra, %call36(distortion8x8)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	add.w	$a4, $a0, $a4
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.w	$fp, $fp, 1
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	addi.w	$s3, $s3, 8
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	addi.w	$s1, $s1, 4
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bne	$fp, $a0, .LBB13_2
	b	.LBB13_6
.LBB13_5:
	move	$a4, $zero
	move	$s7, $zero
.LBB13_6:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 5100
	ori	$a2, $zero, 2
	ori	$a0, $zero, 1
	beq	$a1, $a2, .LBB13_9
# %bb.7:                                # %._crit_edge
	blt	$a4, $s7, .LBB13_9
# %bb.8:
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a3, 0
	move	$a0, $zero
	sub.d	$a2, $s7, $a4
	add.d	$a1, $a2, $a1
	st.w	$a1, $a3, 0
.LBB13_9:
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
.Lfunc_end13:
	.size	TransformDecision, .Lfunc_end13-TransformDecision
                                        # -- End function
	.globl	IntraChromaPrediction4x4        # -- Begin function IntraChromaPrediction4x4
	.p2align	5
	.type	IntraChromaPrediction4x4,@function
IntraChromaPrediction4x4:               # @IntraChromaPrediction4x4
# %bb.0:
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	ld.d	$a4, $a3, 0
	ld.w	$a5, $a4, 12
	ldptr.d	$a6, $a4, 14224
	ori	$a7, $zero, 536
	mul.d	$a5, $a5, $a7
	add.d	$a5, $a6, $a5
	ld.w	$a5, $a5, 416
	slli.d	$a2, $a2, 5
	slli.d	$a0, $a0, 11
	add.d	$a6, $a4, $a0
	slli.d	$a5, $a5, 9
	add.d	$a6, $a6, $a5
	add.d	$a6, $a6, $a2
	alsl.d	$a6, $a1, $a6, 1
	ldptr.d	$a6, $a6, 8528
	add.d	$a4, $a4, $a2
	alsl.d	$a4, $a1, $a4, 1
	stptr.d	$a6, $a4, 12624
	ld.d	$a4, $a3, 0
	addi.d	$a6, $a2, 32
	add.d	$a7, $a4, $a0
	add.d	$a7, $a7, $a5
	add.d	$a7, $a7, $a6
	alsl.d	$a7, $a1, $a7, 1
	ldptr.d	$a7, $a7, 8528
	add.d	$a4, $a4, $a6
	alsl.d	$a4, $a1, $a4, 1
	stptr.d	$a7, $a4, 12624
	ld.d	$a4, $a3, 0
	addi.d	$a6, $a2, 64
	add.d	$a7, $a4, $a0
	add.d	$a7, $a7, $a5
	add.d	$a7, $a7, $a6
	alsl.d	$a7, $a1, $a7, 1
	ldptr.d	$a7, $a7, 8528
	add.d	$a4, $a4, $a6
	alsl.d	$a4, $a1, $a4, 1
	stptr.d	$a7, $a4, 12624
	ld.d	$a3, $a3, 0
	addi.d	$a2, $a2, 96
	add.d	$a0, $a3, $a0
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a2
	alsl.d	$a0, $a1, $a0, 1
	ldptr.d	$a0, $a0, 8528
	add.d	$a2, $a3, $a2
	alsl.d	$a1, $a1, $a2, 1
	stptr.d	$a0, $a1, 12624
	ret
.Lfunc_end14:
	.size	IntraChromaPrediction4x4, .Lfunc_end14-IntraChromaPrediction4x4
                                        # -- End function
	.globl	ChromaPrediction4x4             # -- Begin function ChromaPrediction4x4
	.p2align	5
	.type	ChromaPrediction4x4,@function
ChromaPrediction4x4:                    # @ChromaPrediction4x4
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
	move	$s3, $a6
	move	$s5, $a5
	move	$a6, $a4
	move	$s4, $a3
	move	$s2, $a2
	move	$t6, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$t0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $t0, 0
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a3, $a1, %pc_lo12(active_pps)
	ld.w	$a2, $a0, 12
	ld.w	$a4, $a3, 192
	ldptr.d	$a1, $a0, 14224
	ori	$a5, $zero, 536
	mul.d	$a2, $a2, $a5
	beqz	$a4, .LBB15_3
# %bb.1:
	ld.w	$a4, $a0, 20
	ori	$s8, $zero, 1
	beqz	$a4, .LBB15_6
# %bb.2:
	ori	$a5, $zero, 3
	beq	$a4, $a5, .LBB15_6
.LBB15_3:
	ld.w	$a3, $a3, 196
	beqz	$a3, .LBB15_5
# %bb.4:
	ld.w	$a3, $a0, 20
	addi.d	$a3, $a3, -1
	sltui	$s8, $a3, 1
	b	.LBB15_6
.LBB15_5:
	move	$s8, $zero
.LBB15_6:
	ldptr.d	$s6, $a0, 14384
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 2
	pcalau12i	$s0, %pc_hi20(OneComponentChromaPrediction4x4)
	bne	$s4, $a2, .LBB15_12
# %bb.7:
	ori	$a2, $zero, 1
	bne	$s5, $a2, .LBB15_12
# %bb.8:
	bne	$a6, $a2, .LBB15_12
# %bb.9:
	or	$a2, $a7, $s3
	bnez	$a2, .LBB15_12
# %bb.10:
	ld.hu	$a2, $a1, 480
	beqz	$a2, .LBB15_12
# %bb.11:                               # %.thread161
	st.d	$a7, $sp, 8                     # 8-byte Folded Spill
	st.d	$t0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a1, $a2, -1
	sltui	$a1, $a1, 1
	lu12i.w	$a2, 3
	ori	$a3, $a2, 2112
	masknez	$a3, $a3, $a1
	ori	$a2, $a2, 2104
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	ldx.d	$s6, $a0, $a1
	move	$fp, $zero
	b	.LBB15_14
.LBB15_12:
	addi.w	$a2, $zero, -1
	beq	$s4, $a2, .LBB15_28
# %bb.13:
	st.d	$a7, $sp, 8                     # 8-byte Folded Spill
	st.d	$t0, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $s4
	bstrins.d	$a0, $zero, 1, 1
	sltui	$fp, $s4, 1
	bnez	$a0, .LBB15_15
.LBB15_14:
	ld.d	$t0, $s0, %pc_lo12(OneComponentChromaPrediction4x4)
	pcalau12i	$a0, %pc_hi20(ChromaPrediction4x4.l0_pred)
	addi.d	$a0, $a0, %pc_lo12(ChromaPrediction4x4.l0_pred)
	move	$a1, $t6
	move	$a2, $s2
	move	$a3, $s6
	move	$a4, $zero
	move	$a5, $s3
	move	$a7, $s1
	move	$s7, $t6
	jirl	$ra, $t0, 0
	move	$t6, $s7
.LBB15_15:
	addi.w	$s7, $t6, 4
	addi.w	$a0, $s4, -1
	ori	$a1, $zero, 1
	addi.w	$t5, $s2, 4
	bltu	$a1, $a0, .LBB15_17
# %bb.16:
	ld.d	$t0, $s0, %pc_lo12(OneComponentChromaPrediction4x4)
	pcalau12i	$a0, %pc_hi20(ChromaPrediction4x4.l1_pred)
	addi.d	$a0, $a0, %pc_lo12(ChromaPrediction4x4.l1_pred)
	ori	$a4, $zero, 1
	move	$a1, $t6
	move	$a2, $s2
	move	$a3, $s6
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	move	$a6, $s5
	move	$a7, $s1
	move	$s0, $t6
	move	$s5, $t5
	jirl	$ra, $t0, 0
	move	$t5, $s5
	move	$t6, $s0
.LBB15_17:
	ori	$a0, $zero, 2
	beqz	$s8, .LBB15_21
# %bb.18:
	bne	$s4, $a0, .LBB15_24
# %bb.19:                               # %.preheader
	pcalau12i	$a0, %pc_hi20(wbp_weight)
	ld.d	$a0, $a0, %pc_lo12(wbp_weight)
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s3, 3
	ldx.d	$a1, $a1, $a2
	pcalau12i	$a3, %pc_hi20(wp_offset)
	ld.d	$a3, $a3, %pc_lo12(wp_offset)
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a4, $a4, 3
	ldx.d	$a1, $a1, $a4
	ld.d	$a0, $a0, 8
	ld.d	$a5, $a3, 0
	ld.d	$a3, $a3, 8
	slli.d	$a6, $s1, 2
	ldx.d	$a0, $a0, $a2
	ldx.d	$a2, $a5, $a2
	ldx.d	$a3, $a3, $a4
	addi.d	$a5, $a6, 4
	ldx.d	$a4, $a0, $a4
	ldx.w	$a2, $a2, $a5
	ldx.w	$a3, $a3, $a5
	ldx.w	$a0, $a1, $a5
	ldx.w	$a1, $a4, $a5
	add.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(wp_chroma_round)
	ld.w	$a6, $a3, %pc_lo12(wp_chroma_round)
	pcalau12i	$a3, %pc_hi20(luma_log_weight_denom)
	ld.w	$a4, $a3, %pc_lo12(luma_log_weight_denom)
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a7, $a3, 0
	srai.d	$a3, $a2, 1
	slli.d	$a5, $a6, 1
	addi.d	$a4, $a4, 1
	ldptr.w	$a2, $a7, 15524
	lu12i.w	$t0, 3
	ori	$t0, $t0, 336
	add.d	$a7, $a7, $t0
	slli.d	$t0, $s2, 5
	add.d	$t2, $a7, $t0
	pcalau12i	$t0, %pc_hi20(ChromaPrediction4x4.l0_pred)
	addi.d	$t0, $t0, %pc_lo12(ChromaPrediction4x4.l0_pred)
	ld.hu	$t1, $t0, 0
	mul.d	$t3, $a0, $t1
	pcalau12i	$t1, %pc_hi20(ChromaPrediction4x4.l1_pred)
	addi.d	$t1, $t1, %pc_lo12(ChromaPrediction4x4.l1_pred)
	ld.hu	$t4, $t1, 0
	mul.d	$t4, $a1, $t4
	alsl.d	$a6, $a6, $t3, 1
	add.d	$a6, $a6, $t4
	sra.w	$a6, $a6, $a4
	add.w	$a6, $a6, $a3
	srai.d	$t3, $a6, 63
	andn	$a6, $a6, $t3
	slt	$t3, $a6, $a2
	maskeqz	$a6, $a6, $t3
	masknez	$t3, $a2, $t3
	or	$t3, $a6, $t3
	slli.d	$t4, $t6, 1
	addi.d	$a6, $t6, 1
	stx.h	$t3, $t2, $t4
	bge	$a6, $s7, .LBB15_29
# %bb.20:
	ld.hu	$t3, $t0, 2
	ld.hu	$t4, $t1, 2
	mul.d	$t3, $a0, $t3
	mul.d	$t4, $a1, $t4
	add.d	$t3, $t3, $a5
	add.d	$t3, $t3, $t4
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a2
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a2, $t4
	or	$t3, $t3, $t4
	slli.d	$t4, $a6, 1
	stx.h	$t3, $t2, $t4
	ld.hu	$t3, $t0, 4
	ld.hu	$t4, $t1, 4
	mul.d	$t3, $a0, $t3
	mul.d	$t4, $a1, $t4
	add.d	$t3, $t3, $a5
	add.d	$t3, $t3, $t4
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a2
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a2, $t4
	or	$t3, $t3, $t4
	alsl.d	$t2, $t6, $t2, 1
	st.h	$t3, $t2, 4
	ld.hu	$t3, $t0, 6
	ld.hu	$t4, $t1, 6
	mul.d	$t3, $a0, $t3
	mul.d	$t4, $a1, $t4
	add.d	$t3, $t3, $a5
	add.d	$t3, $t3, $t4
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a2
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a2, $t4
	or	$t3, $t3, $t4
	st.h	$t3, $t2, 6
	addi.d	$t2, $t1, 8
	addi.d	$t1, $t0, 8
	addi.d	$t0, $s2, 1
	blt	$t0, $t5, .LBB15_30
	b	.LBB15_61
.LBB15_21:
	bne	$s4, $a0, .LBB15_26
# %bb.22:                               # %.preheader170
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 3
	ori	$a1, $a1, 336
	add.d	$a1, $a0, $a1
	slli.d	$a0, $s2, 5
	add.d	$a4, $a1, $a0
	pcalau12i	$a0, %pc_hi20(ChromaPrediction4x4.l0_pred)
	addi.d	$a2, $a0, %pc_lo12(ChromaPrediction4x4.l0_pred)
	ld.hu	$a0, $a2, 0
	pcalau12i	$a3, %pc_hi20(ChromaPrediction4x4.l1_pred)
	addi.d	$a3, $a3, %pc_lo12(ChromaPrediction4x4.l1_pred)
	ld.hu	$a5, $a3, 0
	add.d	$a0, $a0, $a5
	addi.d	$a0, $a0, 1
	srli.d	$a5, $a0, 1
	slli.d	$a6, $t6, 1
	addi.d	$a0, $t6, 1
	stx.h	$a5, $a4, $a6
	bge	$a0, $s7, .LBB15_32
# %bb.23:
	ld.hu	$a5, $a2, 2
	ld.hu	$a6, $a3, 2
	add.d	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	srli.d	$a5, $a5, 1
	slli.d	$a6, $a0, 1
	stx.h	$a5, $a4, $a6
	ld.hu	$a5, $a2, 4
	ld.hu	$a6, $a3, 4
	add.d	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	srli.d	$a5, $a5, 1
	alsl.d	$a4, $t6, $a4, 1
	st.h	$a5, $a4, 4
	ld.hu	$a5, $a2, 6
	ld.hu	$a6, $a3, 6
	add.d	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	srli.d	$a5, $a5, 1
	st.h	$a5, $a4, 6
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a2, 8
	addi.d	$a2, $s2, 1
	blt	$a2, $t5, .LBB15_33
	b	.LBB15_61
.LBB15_24:
	pcalau12i	$a0, %pc_hi20(wp_weight)
	ld.d	$a0, $a0, %pc_lo12(wp_weight)
	pcalau12i	$a1, %pc_hi20(wp_offset)
	beqz	$fp, .LBB15_35
# %bb.25:                               # %.preheader165
	ld.d	$a1, $a1, %pc_lo12(wp_offset)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	slli.d	$a2, $s3, 3
	ldx.d	$a0, $a0, $a2
	slli.d	$a3, $s1, 2
	ldx.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a5, $a2, 0
	addi.d	$a3, $a3, 4
	ldx.w	$a2, $a0, $a3
	ldx.w	$a1, $a1, $a3
	ldptr.w	$a0, $a5, 15524
	pcalau12i	$a3, %pc_hi20(wp_chroma_round)
	ld.w	$a3, $a3, %pc_lo12(wp_chroma_round)
	pcalau12i	$a4, %pc_hi20(chroma_log_weight_denom)
	ld.wu	$a4, $a4, %pc_lo12(chroma_log_weight_denom)
	lu12i.w	$a6, 3
	ori	$a6, $a6, 336
	add.d	$a6, $a5, $a6
	slli.d	$a5, $s2, 5
	add.d	$t0, $a6, $a5
	pcalau12i	$a5, %pc_hi20(ChromaPrediction4x4.l0_pred)
	addi.d	$a7, $a5, %pc_lo12(ChromaPrediction4x4.l0_pred)
	b	.LBB15_36
.LBB15_26:
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 0
	slli.d	$a1, $s2, 5
	add.d	$a0, $a0, $a1
	alsl.d	$a0, $t6, $a0, 1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 336
	add.d	$a2, $a0, $a1
	addi.d	$a0, $s2, 1
	beqz	$fp, .LBB15_38
# %bb.27:                               # %.preheader172
	pcalau12i	$a1, %pc_hi20(ChromaPrediction4x4.l0_pred)
	addi.d	$a1, $a1, %pc_lo12(ChromaPrediction4x4.l0_pred)
	ld.d	$a3, $a1, 0
	st.d	$a3, $a2, 0
	blt	$a0, $t5, .LBB15_39
	b	.LBB15_61
.LBB15_28:
	ld.w	$a1, $a1, 416
	slli.d	$a2, $s2, 5
	slli.d	$a3, $s1, 11
	add.d	$a4, $a0, $a3
	slli.d	$a1, $a1, 9
	add.d	$a4, $a4, $a1
	add.d	$a4, $a4, $a2
	alsl.d	$a4, $t6, $a4, 1
	ldptr.d	$a4, $a4, 8528
	add.d	$a0, $a0, $a2
	alsl.d	$a0, $t6, $a0, 1
	stptr.d	$a4, $a0, 12624
	ld.d	$a0, $t0, 0
	addi.d	$a4, $a2, 32
	add.d	$a5, $a0, $a3
	add.d	$a5, $a5, $a1
	add.d	$a5, $a5, $a4
	alsl.d	$a5, $t6, $a5, 1
	ldptr.d	$a5, $a5, 8528
	add.d	$a0, $a0, $a4
	alsl.d	$a0, $t6, $a0, 1
	stptr.d	$a5, $a0, 12624
	ld.d	$a0, $t0, 0
	addi.d	$a4, $a2, 64
	add.d	$a5, $a0, $a3
	add.d	$a5, $a5, $a1
	add.d	$a5, $a5, $a4
	alsl.d	$a5, $t6, $a5, 1
	ldptr.d	$a5, $a5, 8528
	add.d	$a0, $a0, $a4
	alsl.d	$a0, $t6, $a0, 1
	stptr.d	$a5, $a0, 12624
	ld.d	$a0, $t0, 0
	addi.d	$a2, $a2, 96
	add.d	$a3, $a0, $a3
	add.d	$a1, $a3, $a1
	add.d	$a1, $a1, $a2
	alsl.d	$a1, $t6, $a1, 1
	ldptr.d	$a1, $a1, 8528
	add.d	$a0, $a0, $a2
	alsl.d	$a0, $t6, $a0, 1
	stptr.d	$a1, $a0, 12624
	b	.LBB15_61
.LBB15_29:
	addi.d	$t2, $t1, 2
	addi.d	$t1, $t0, 2
	addi.d	$t0, $s2, 1
	bge	$t0, $t5, .LBB15_61
.LBB15_30:                              # %.preheader.1
	ld.hu	$t4, $t1, 0
	ld.hu	$t5, $t2, 0
	slli.d	$t0, $t0, 5
	add.d	$t3, $a7, $t0
	mul.d	$t0, $a0, $t4
	mul.d	$t4, $a1, $t5
	add.d	$t0, $t0, $a5
	add.d	$t0, $t0, $t4
	sra.w	$t0, $t0, $a4
	add.w	$t0, $t0, $a3
	srai.d	$t4, $t0, 63
	andn	$t0, $t0, $t4
	slt	$t4, $t0, $a2
	maskeqz	$t0, $t0, $t4
	masknez	$t4, $a2, $t4
	or	$t4, $t0, $t4
	slli.d	$t0, $t6, 1
	stx.h	$t4, $t3, $t0
	bge	$a6, $s7, .LBB15_43
# %bb.31:
	ld.hu	$t4, $t1, 2
	ld.hu	$t5, $t2, 2
	mul.d	$t4, $a0, $t4
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	slli.d	$t5, $a6, 1
	stx.h	$t4, $t3, $t5
	ld.hu	$t4, $t1, 4
	ld.hu	$t5, $t2, 4
	mul.d	$t4, $a0, $t4
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	alsl.d	$t3, $t6, $t3, 1
	st.h	$t4, $t3, 4
	ld.hu	$t4, $t1, 6
	ld.hu	$t5, $t2, 6
	addi.d	$t1, $t1, 8
	mul.d	$t4, $a0, $t4
	addi.d	$t2, $t2, 8
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	st.h	$t4, $t3, 6
	b	.LBB15_44
.LBB15_32:
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a2, 2
	addi.d	$a2, $s2, 1
	bge	$a2, $t5, .LBB15_61
.LBB15_33:                              # %.preheader169.1
	ld.hu	$a6, $a4, 0
	ld.hu	$a7, $a3, 0
	slli.d	$a2, $a2, 5
	add.d	$a5, $a1, $a2
	add.d	$a2, $a6, $a7
	addi.d	$a2, $a2, 1
	srli.d	$a6, $a2, 1
	slli.d	$a2, $t6, 1
	stx.h	$a6, $a5, $a2
	bge	$a0, $s7, .LBB15_46
# %bb.34:
	ld.hu	$a6, $a4, 2
	ld.hu	$a7, $a3, 2
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	slli.d	$a7, $a0, 1
	stx.h	$a6, $a5, $a7
	ld.hu	$a6, $a4, 4
	ld.hu	$a7, $a3, 4
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	alsl.d	$a5, $t6, $a5, 1
	st.h	$a6, $a5, 4
	ld.hu	$a6, $a4, 6
	ld.hu	$a7, $a3, 6
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	st.h	$a6, $a5, 6
	b	.LBB15_47
.LBB15_35:                              # %.preheader167
	ld.d	$a1, $a1, %pc_lo12(wp_offset)
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	slli.d	$a3, $s1, 2
	ldx.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a5, $a2, 0
	addi.d	$a3, $a3, 4
	ldx.w	$a2, $a0, $a3
	ldx.w	$a1, $a1, $a3
	ldptr.w	$a0, $a5, 15524
	pcalau12i	$a3, %pc_hi20(wp_chroma_round)
	ld.w	$a3, $a3, %pc_lo12(wp_chroma_round)
	pcalau12i	$a4, %pc_hi20(chroma_log_weight_denom)
	ld.wu	$a4, $a4, %pc_lo12(chroma_log_weight_denom)
	lu12i.w	$a6, 3
	ori	$a6, $a6, 336
	add.d	$a6, $a5, $a6
	slli.d	$a5, $s2, 5
	add.d	$t0, $a6, $a5
	pcalau12i	$a5, %pc_hi20(ChromaPrediction4x4.l1_pred)
	addi.d	$a7, $a5, %pc_lo12(ChromaPrediction4x4.l1_pred)
.LBB15_36:                              # %.preheader165
	ld.hu	$a5, $a7, 0
	mul.d	$a5, $a2, $a5
	add.d	$a5, $a5, $a3
	sra.w	$a5, $a5, $a4
	add.w	$a5, $a5, $a1
	srai.d	$t1, $a5, 63
	andn	$a5, $a5, $t1
	slt	$t1, $a5, $a0
	maskeqz	$a5, $a5, $t1
	masknez	$t1, $a0, $t1
	or	$t1, $a5, $t1
	slli.d	$t2, $t6, 1
	addi.d	$a5, $t6, 1
	stx.h	$t1, $t0, $t2
	bge	$a5, $s7, .LBB15_40
# %bb.37:
	ld.hu	$t1, $a7, 2
	mul.d	$t1, $a2, $t1
	add.d	$t1, $t1, $a3
	sra.w	$t1, $t1, $a4
	add.w	$t1, $t1, $a1
	srai.d	$t2, $t1, 63
	andn	$t1, $t1, $t2
	slt	$t2, $t1, $a0
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a0, $t2
	or	$t1, $t1, $t2
	slli.d	$t2, $a5, 1
	stx.h	$t1, $t0, $t2
	ld.hu	$t1, $a7, 4
	mul.d	$t1, $a2, $t1
	add.d	$t1, $t1, $a3
	sra.w	$t1, $t1, $a4
	add.w	$t1, $t1, $a1
	srai.d	$t2, $t1, 63
	andn	$t1, $t1, $t2
	slt	$t2, $t1, $a0
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a0, $t2
	or	$t1, $t1, $t2
	alsl.d	$t0, $t6, $t0, 1
	st.h	$t1, $t0, 4
	ld.hu	$t1, $a7, 6
	mul.d	$t1, $a2, $t1
	add.d	$t1, $t1, $a3
	sra.w	$t1, $t1, $a4
	add.w	$t1, $t1, $a1
	srai.d	$t2, $t1, 63
	andn	$t1, $t1, $t2
	slt	$t2, $t1, $a0
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a0, $t2
	or	$t1, $t1, $t2
	st.h	$t1, $t0, 6
	addi.d	$t1, $a7, 8
	addi.d	$a7, $s2, 1
	blt	$a7, $t5, .LBB15_41
	b	.LBB15_61
.LBB15_38:                              # %.preheader174
	pcalau12i	$a1, %pc_hi20(ChromaPrediction4x4.l1_pred)
	addi.d	$a1, $a1, %pc_lo12(ChromaPrediction4x4.l1_pred)
	ld.d	$a3, $a1, 0
	st.d	$a3, $a2, 0
	bge	$a0, $t5, .LBB15_61
.LBB15_39:
	ld.d	$a2, $a4, 0
	ld.d	$a3, $a1, 8
	slli.d	$a0, $a0, 5
	add.d	$a0, $a2, $a0
	alsl.d	$a0, $t6, $a0, 1
	stptr.d	$a3, $a0, 12624
	ld.d	$a0, $a4, 0
	ld.d	$a2, $a1, 16
	slli.d	$a3, $s2, 5
	add.d	$a0, $a0, $a3
	alsl.d	$a0, $t6, $a0, 1
	stptr.d	$a2, $a0, 12688
	ld.d	$a0, $a4, 0
	ld.d	$a1, $a1, 24
	add.d	$a0, $a0, $a3
	alsl.d	$a0, $t6, $a0, 1
	stptr.d	$a1, $a0, 12720
	b	.LBB15_61
.LBB15_40:
	addi.d	$t1, $a7, 2
	addi.d	$a7, $s2, 1
	bge	$a7, $t5, .LBB15_61
.LBB15_41:                              # %.preheader165.1
	ld.hu	$t0, $t1, 0
	slli.d	$a7, $a7, 5
	add.d	$t2, $a6, $a7
	mul.d	$a7, $a2, $t0
	add.d	$a7, $a7, $a3
	sra.w	$a7, $a7, $a4
	add.w	$a7, $a7, $a1
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a0
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $a0, $t0
	or	$a7, $a7, $t0
	slli.d	$t0, $t6, 1
	stx.h	$a7, $t2, $t0
	slli.d	$a7, $a5, 1
	bge	$a5, $s7, .LBB15_49
# %bb.42:
	ld.hu	$t3, $t1, 2
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a7
	ld.hu	$t3, $t1, 4
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	alsl.d	$t2, $t6, $t2, 1
	st.h	$t3, $t2, 4
	ld.hu	$t3, $t1, 6
	addi.d	$t1, $t1, 8
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	st.h	$t3, $t2, 6
	b	.LBB15_50
.LBB15_43:
	addi.d	$t1, $t1, 2
	addi.d	$t2, $t2, 2
.LBB15_44:                              # %.preheader.2
	slli.d	$t3, $s2, 5
	ld.hu	$t4, $t1, 0
	ld.hu	$t5, $t2, 0
	add.d	$a7, $a7, $t3
	addi.d	$t3, $a7, 64
	mul.d	$t4, $a0, $t4
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	stx.h	$t4, $t3, $t0
	bge	$a6, $s7, .LBB15_52
# %bb.45:
	ld.hu	$t4, $t1, 2
	ld.hu	$t5, $t2, 2
	mul.d	$t4, $a0, $t4
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	slli.d	$t5, $a6, 1
	stx.h	$t4, $t3, $t5
	ld.hu	$t4, $t1, 4
	ld.hu	$t5, $t2, 4
	mul.d	$t4, $a0, $t4
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	alsl.d	$t3, $t6, $t3, 1
	st.h	$t4, $t3, 4
	ld.hu	$t4, $t1, 6
	ld.hu	$t5, $t2, 6
	addi.d	$t1, $t1, 8
	mul.d	$t4, $a0, $t4
	addi.d	$t2, $t2, 8
	mul.d	$t5, $a1, $t5
	add.d	$t4, $t4, $a5
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	st.h	$t4, $t3, 6
	b	.LBB15_53
.LBB15_46:
	addi.d	$a4, $a4, 2
	addi.d	$a3, $a3, 2
.LBB15_47:                              # %.preheader169.2
	ld.hu	$a6, $a4, 0
	ld.hu	$a7, $a3, 0
	slli.d	$a5, $s2, 5
	add.d	$a1, $a1, $a5
	addi.d	$a5, $a1, 64
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	stx.h	$a6, $a5, $a2
	bge	$a0, $s7, .LBB15_55
# %bb.48:
	ld.hu	$a6, $a4, 2
	ld.hu	$a7, $a3, 2
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	slli.d	$a7, $a0, 1
	stx.h	$a6, $a5, $a7
	ld.hu	$a6, $a4, 4
	ld.hu	$a7, $a3, 4
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	alsl.d	$a5, $t6, $a5, 1
	st.h	$a6, $a5, 4
	ld.hu	$a6, $a4, 6
	ld.hu	$a7, $a3, 6
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	st.h	$a6, $a5, 6
	b	.LBB15_56
.LBB15_49:
	addi.d	$t1, $t1, 2
.LBB15_50:                              # %.preheader165.2
	ld.hu	$t3, $t1, 0
	slli.d	$t2, $s2, 5
	add.d	$a6, $a6, $t2
	addi.d	$t2, $a6, 64
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t0
	bge	$a5, $s7, .LBB15_58
# %bb.51:
	ld.hu	$t3, $t1, 2
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a7
	ld.hu	$t3, $t1, 4
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	alsl.d	$t2, $t6, $t2, 1
	st.h	$t3, $t2, 4
	ld.hu	$t3, $t1, 6
	addi.d	$t1, $t1, 8
	mul.d	$t3, $a2, $t3
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a1
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	st.h	$t3, $t2, 6
	b	.LBB15_59
.LBB15_52:
	addi.d	$t1, $t1, 2
	addi.d	$t2, $t2, 2
.LBB15_53:                              # %.preheader.3
	ld.hu	$t3, $t1, 0
	ld.hu	$t4, $t2, 0
	addi.d	$a7, $a7, 96
	mul.d	$t3, $a0, $t3
	mul.d	$t4, $a1, $t4
	add.d	$t3, $t3, $a5
	add.d	$t3, $t3, $t4
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a2
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a2, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $a7, $t0
	bge	$a6, $s7, .LBB15_61
# %bb.54:
	ld.hu	$t0, $t1, 2
	ld.hu	$t3, $t2, 2
	mul.d	$t0, $a0, $t0
	mul.d	$t3, $a1, $t3
	add.d	$t0, $t0, $a5
	add.d	$t0, $t0, $t3
	sra.w	$t0, $t0, $a4
	add.w	$t0, $t0, $a3
	srai.d	$t3, $t0, 63
	andn	$t0, $t0, $t3
	slt	$t3, $t0, $a2
	maskeqz	$t0, $t0, $t3
	masknez	$t3, $a2, $t3
	or	$t0, $t0, $t3
	slli.d	$a6, $a6, 1
	stx.h	$t0, $a7, $a6
	ld.hu	$a6, $t1, 4
	ld.hu	$t0, $t2, 4
	mul.d	$a6, $a0, $a6
	mul.d	$t0, $a1, $t0
	add.d	$a6, $a6, $a5
	add.d	$a6, $a6, $t0
	sra.w	$a6, $a6, $a4
	add.w	$a6, $a6, $a3
	srai.d	$t0, $a6, 63
	andn	$a6, $a6, $t0
	slt	$t0, $a6, $a2
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $a2, $t0
	or	$a6, $a6, $t0
	alsl.d	$a7, $t6, $a7, 1
	st.h	$a6, $a7, 4
	ld.hu	$a6, $t1, 6
	ld.hu	$t0, $t2, 6
	mul.d	$a0, $a0, $a6
	mul.d	$a1, $a1, $t0
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a1
	sra.w	$a0, $a0, $a4
	add.w	$a0, $a0, $a3
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.h	$a0, $a7, 6
	b	.LBB15_61
.LBB15_55:
	addi.d	$a4, $a4, 2
	addi.d	$a3, $a3, 2
.LBB15_56:                              # %.preheader169.3
	ld.hu	$a5, $a4, 0
	ld.hu	$a6, $a3, 0
	addi.d	$a1, $a1, 96
	add.d	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	srli.d	$a5, $a5, 1
	stx.h	$a5, $a1, $a2
	bge	$a0, $s7, .LBB15_61
# %bb.57:
	ld.hu	$a2, $a4, 2
	ld.hu	$a5, $a3, 2
	add.d	$a2, $a2, $a5
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	slli.d	$a0, $a0, 1
	stx.h	$a2, $a1, $a0
	ld.hu	$a0, $a4, 4
	ld.hu	$a2, $a3, 4
	add.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	alsl.d	$a1, $t6, $a1, 1
	st.h	$a0, $a1, 4
	ld.hu	$a0, $a4, 6
	ld.hu	$a2, $a3, 6
	add.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	st.h	$a0, $a1, 6
	b	.LBB15_61
.LBB15_58:
	addi.d	$t1, $t1, 2
.LBB15_59:                              # %.preheader165.3
	ld.hu	$t2, $t1, 0
	addi.d	$a6, $a6, 96
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a1
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a0
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a0, $t3
	or	$t2, $t2, $t3
	stx.h	$t2, $a6, $t0
	bge	$a5, $s7, .LBB15_61
# %bb.60:
	ld.hu	$a5, $t1, 2
	mul.d	$a5, $a2, $a5
	add.d	$a5, $a5, $a3
	sra.w	$a5, $a5, $a4
	add.w	$a5, $a5, $a1
	srai.d	$t0, $a5, 63
	andn	$a5, $a5, $t0
	slt	$t0, $a5, $a0
	maskeqz	$a5, $a5, $t0
	masknez	$t0, $a0, $t0
	or	$a5, $a5, $t0
	stx.h	$a5, $a6, $a7
	ld.hu	$a5, $t1, 4
	mul.d	$a5, $a2, $a5
	add.d	$a5, $a5, $a3
	sra.w	$a5, $a5, $a4
	add.w	$a5, $a5, $a1
	srai.d	$a7, $a5, 63
	andn	$a5, $a5, $a7
	slt	$a7, $a5, $a0
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $a0, $a7
	or	$a5, $a5, $a7
	alsl.d	$a6, $t6, $a6, 1
	st.h	$a5, $a6, 4
	ld.hu	$a5, $t1, 6
	mul.d	$a2, $a2, $a5
	add.d	$a2, $a2, $a3
	sra.w	$a2, $a2, $a4
	add.w	$a1, $a2, $a1
	srai.d	$a2, $a1, 63
	andn	$a1, $a1, $a2
	slt	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	st.h	$a0, $a6, 6
.LBB15_61:                              # %.loopexit
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
.Lfunc_end15:
	.size	ChromaPrediction4x4, .Lfunc_end15-ChromaPrediction4x4
                                        # -- End function
	.globl	ChromaResidualCoding            # -- Begin function ChromaResidualCoding
	.p2align	5
	.type	ChromaResidualCoding,@function
ChromaResidualCoding:                   # @ChromaResidualCoding
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
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s3, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s3, 0
	ld.w	$a1, $a0, 12
	ldptr.d	$a2, $a0, 14224
	ori	$s4, $zero, 536
	mul.d	$a1, $a1, $s4
	add.d	$a1, $a2, $a1
	ld.w	$a1, $a1, 72
	beqz	$a1, .LBB16_2
# %bb.1:
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	b	.LBB16_3
.LBB16_2:
	ld.w	$a1, $a0, 20
	sltui	$a2, $a1, 1
	addi.d	$a1, $a1, -3
	sltui	$a1, $a1, 1
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
.LBB16_3:
	ldptr.w	$a0, $a0, 15536
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 5772
	sltui	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(OneComponentChromaPrediction4x4_retrieve)
	addi.d	$a2, $a2, %pc_lo12(OneComponentChromaPrediction4x4_retrieve)
	masknez	$a2, $a2, $a1
	pcalau12i	$a3, %pc_hi20(OneComponentChromaPrediction4x4_regenerate)
	addi.d	$a3, $a3, %pc_lo12(OneComponentChromaPrediction4x4_regenerate)
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	pcalau12i	$a2, %pc_hi20(OneComponentChromaPrediction4x4)
	st.d	$a1, $a2, %pc_lo12(OneComponentChromaPrediction4x4)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.w	$zero, $a1, 0
	slli.d	$a0, $a0, 6
	pcalau12i	$a1, %pc_hi20(ChromaResidualCoding.block8x8_idx)
	addi.d	$a1, $a1, %pc_lo12(ChromaResidualCoding.block8x8_idx)
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, -64
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s7, $zero, 1
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.w	$s6, $zero, -1
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$fp, $a0, %got_pc_lo12(enc_picture)
	move	$s0, $zero
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ori	$a2, $zero, 1
	b	.LBB16_7
.LBB16_4:                               #   in Loop: Header=BB16_7 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(dct_chroma_sp)
	jirl	$ra, $ra, 0
.LBB16_5:                               # %.thread.sink.split
                                        #   in Loop: Header=BB16_7 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
.LBB16_6:                               # %.thread
                                        #   in Loop: Header=BB16_7 Depth=1
	andi	$a0, $s8, 1
	ori	$s0, $zero, 1
	move	$a2, $zero
	beqz	$a0, .LBB16_49
.LBB16_7:                               # %.preheader85
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_11 Depth 2
                                        #       Child Loop BB16_15 Depth 3
                                        #     Child Loop BB16_25 Depth 2
                                        #     Child Loop BB16_38 Depth 2
                                        #       Child Loop BB16_40 Depth 3
                                        #     Child Loop BB16_48 Depth 2
	ld.d	$a1, $s3, 0
	ldptr.w	$a0, $a1, 15548
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	blez	$a0, .LBB16_22
# %bb.8:                                # %.preheader78.lr.ph
                                        #   in Loop: Header=BB16_7 Depth=1
	ldptr.w	$a2, $a1, 15544
	blez	$a2, .LBB16_22
# %bb.9:                                # %.preheader78.preheader
                                        #   in Loop: Header=BB16_7 Depth=1
	move	$s1, $zero
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	b	.LBB16_11
	.p2align	4, , 16
.LBB16_10:                              # %._crit_edge
                                        #   in Loop: Header=BB16_11 Depth=2
	ldptr.w	$a0, $a1, 15548
	addi.d	$s1, $s1, 4
	addi.w	$a2, $s1, 0
	addi.d	$s8, $s8, 16
	bge	$a2, $a0, .LBB16_22
.LBB16_11:                              # %.preheader78
                                        #   Parent Loop BB16_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_15 Depth 3
	ldptr.w	$a0, $a1, 15544
	blez	$a0, .LBB16_10
# %bb.12:                               # %.lr.ph
                                        #   in Loop: Header=BB16_11 Depth=2
	move	$s2, $zero
	move	$s5, $s8
	b	.LBB16_15
	.p2align	4, , 16
.LBB16_13:                              #   in Loop: Header=BB16_15 Depth=3
	ld.d	$a5, $fp, 0
	ldptr.d	$a5, $a5, 6488
	ld.w	$a6, $a1, 172
	ld.d	$a5, $a5, 0
	add.w	$a4, $a6, $a4
	slli.d	$a4, $a4, 3
	ld.w	$a1, $a1, 168
	ldx.d	$a4, $a5, $a4
	add.w	$a1, $a1, $a3
	ldx.b	$a1, $a4, $a1
	ld.w	$a4, $a2, 376
	move	$a7, $zero
	move	$a5, $zero
.LBB16_14:                              # %SetModesAndRefframe.exit
                                        #   in Loop: Header=BB16_15 Depth=3
	ext.w.h	$a3, $a0
	ext.w.h	$a6, $a1
	ext.w.h	$a7, $a7
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(ChromaPrediction4x4)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ldptr.w	$a0, $a1, 15544
	addi.w	$s2, $s2, 4
	addi.d	$s5, $s5, 4
	bge	$s2, $a0, .LBB16_10
.LBB16_15:                              #   Parent Loop BB16_7 Depth=1
                                        #     Parent Loop BB16_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $a1, 12
	ldptr.d	$a2, $a1, 14224
	ld.w	$a4, $s5, 0
	mul.d	$a0, $a0, $s4
	add.d	$a0, $a2, $a0
	alsl.d	$a2, $a4, $a0, 2
	ld.w	$a5, $a1, 20
	ld.w	$a0, $a2, 392
	slli.d	$a3, $a4, 1
	bstrins.d	$a4, $zero, 0, 0
	andi	$a3, $a3, 2
	bne	$a5, $s7, .LBB16_13
# %bb.16:                               #   in Loop: Header=BB16_15 Depth=3
	beq	$a0, $s6, .LBB16_21
# %bb.17:                               #   in Loop: Header=BB16_15 Depth=3
	beq	$a0, $s7, .LBB16_20
# %bb.18:                               #   in Loop: Header=BB16_15 Depth=3
	beqz	$a0, .LBB16_13
# %bb.19:                               #   in Loop: Header=BB16_15 Depth=3
	ld.d	$a5, $fp, 0
	ldptr.d	$a5, $a5, 6488
	ld.w	$a6, $a1, 172
	ld.d	$a7, $a5, 0
	add.w	$a4, $a6, $a4
	slli.d	$a4, $a4, 3
	ld.d	$a5, $a5, 8
	ld.w	$a1, $a1, 168
	ldx.d	$a6, $a7, $a4
	ldx.d	$a5, $a5, $a4
	add.w	$a3, $a1, $a3
	ldx.b	$a1, $a6, $a3
	ld.w	$a4, $a2, 376
	ldx.b	$a7, $a5, $a3
	move	$a5, $a4
	b	.LBB16_14
.LBB16_20:                              #   in Loop: Header=BB16_15 Depth=3
	ld.d	$a5, $fp, 0
	ldptr.d	$a5, $a5, 6488
	ld.w	$a6, $a1, 172
	ld.d	$a5, $a5, 8
	add.w	$a4, $a6, $a4
	slli.d	$a4, $a4, 3
	ld.w	$a1, $a1, 168
	ldx.d	$a4, $a5, $a4
	add.w	$a1, $a1, $a3
	ldx.b	$a7, $a4, $a1
	ld.w	$a5, $a2, 376
	move	$a4, $zero
	move	$a1, $zero
	b	.LBB16_14
.LBB16_21:                              #   in Loop: Header=BB16_15 Depth=3
	move	$a4, $zero
	move	$a5, $zero
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $a7
	b	.LBB16_14
	.p2align	4, , 16
.LBB16_22:                              # %._crit_edge90
                                        #   in Loop: Header=BB16_7 Depth=1
	ldptr.w	$a2, $a1, 15256
	slli.d	$s1, $s0, 3
	beqz	$a2, .LBB16_26
# %bb.23:                               # %.preheader83
                                        #   in Loop: Header=BB16_7 Depth=1
	lu12i.w	$a2, 3
	blez	$a0, .LBB16_29
# %bb.24:                               # %.lr.ph94.preheader
                                        #   in Loop: Header=BB16_7 Depth=1
	move	$s2, $zero
	ori	$s5, $a2, 336
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB16_25:                              # %.lr.ph94
                                        #   Parent Loop BB16_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 0
	ldptr.d	$a0, $a0, 6472
	ld.w	$a2, $a1, 188
	ldx.d	$a0, $a0, $s1
	add.d	$a2, $s2, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ld.w	$a2, $a1, 184
	ldptr.w	$a3, $a1, 15544
	alsl.d	$a0, $a2, $a0, 1
	add.d	$a1, $a1, $s5
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ldptr.w	$a0, $a1, 15548
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 32
	blt	$s2, $a0, .LBB16_25
	b	.LBB16_30
	.p2align	4, , 16
.LBB16_26:                              #   in Loop: Header=BB16_7 Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	lu12i.w	$t4, 3
	beqz	$a2, .LBB16_34
# %bb.27:                               #   in Loop: Header=BB16_7 Depth=1
	ld.w	$a2, $a1, 20
	ori	$a3, $zero, 3
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	bne	$a2, $a3, .LBB16_46
# %bb.28:                               # %.preheader79.preheader
                                        #   in Loop: Header=BB16_7 Depth=1
	ori	$a0, $t4, 864
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vstx	$vr0, $a1, $a0
	ori	$a0, $t4, 848
	vstx	$vr0, $a1, $a0
	ori	$a0, $t4, 912
	vstx	$vr0, $a1, $a0
	ori	$a0, $t4, 928
	vstx	$vr0, $a1, $a0
	ori	$a0, $t4, 976
	vstx	$vr0, $a1, $a0
	ori	$a0, $t4, 992
	vstx	$vr0, $a1, $a0
	ori	$a0, $t4, 1040
	vstx	$vr0, $a1, $a0
	ori	$a0, $t4, 1056
	vstx	$vr0, $a1, $a0
	ori	$a0, $t4, 1120
	vstx	$vr0, $a1, $a0
	ori	$a0, $t4, 1104
	vstx	$vr0, $a1, $a0
	ori	$a0, $t4, 1168
	vstx	$vr0, $a1, $a0
	ori	$a0, $t4, 1184
	vstx	$vr0, $a1, $a0
	ori	$a0, $t4, 1232
	vstx	$vr0, $a1, $a0
	ori	$a0, $t4, 1248
	vstx	$vr0, $a1, $a0
	ori	$a0, $t4, 1296
	vstx	$vr0, $a1, $a0
	ori	$a0, $t4, 1312
	vstx	$vr0, $a1, $a0
	b	.LBB16_31
	.p2align	4, , 16
.LBB16_29:                              #   in Loop: Header=BB16_7 Depth=1
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
.LBB16_30:                              # %.loopexit
                                        #   in Loop: Header=BB16_7 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB16_42
.LBB16_31:                              # %.loopexit.thread
                                        #   in Loop: Header=BB16_7 Depth=1
	ld.w	$a0, $a1, 20
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB16_6
.LBB16_32:                              #   in Loop: Header=BB16_7 Depth=1
	pcalau12i	$a0, %pc_hi20(si_frame_indicator)
	ld.w	$a0, $a0, %pc_lo12(si_frame_indicator)
	pcalau12i	$a1, %pc_hi20(sp2_frame_indicator)
	ld.w	$a2, $a1, %pc_lo12(sp2_frame_indicator)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	or	$a0, $a0, $a2
	beqz	$a0, .LBB16_4
# %bb.33:                               #   in Loop: Header=BB16_7 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(dct_chroma_sp2)
	jirl	$ra, $ra, 0
	b	.LBB16_5
.LBB16_34:                              # %.critedge.preheader
                                        #   in Loop: Header=BB16_7 Depth=1
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	blez	$a0, .LBB16_42
# %bb.35:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB16_7 Depth=1
	ldptr.w	$a6, $a1, 15544
	blez	$a6, .LBB16_42
# %bb.36:                               # %.preheader.preheader
                                        #   in Loop: Header=BB16_7 Depth=1
	pcalau12i	$a2, %pc_hi20(imgUV_org)
	ld.d	$a3, $a2, %pc_lo12(imgUV_org)
	move	$a2, $zero
	alsl.d	$a3, $s0, $a3, 3
	ori	$a4, $t4, 336
	add.d	$a4, $a1, $a4
	ori	$a5, $t4, 848
	add.d	$a5, $a1, $a5
	b	.LBB16_38
	.p2align	4, , 16
.LBB16_37:                              # %.critedge
                                        #   in Loop: Header=BB16_38 Depth=2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 64
	bge	$a2, $a0, .LBB16_30
.LBB16_38:                              # %.preheader
                                        #   Parent Loop BB16_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_40 Depth 3
	blez	$a6, .LBB16_37
# %bb.39:                               # %.lr.ph96
                                        #   in Loop: Header=BB16_38 Depth=2
	ld.w	$a6, $a1, 204
	ld.d	$a7, $a3, 0
	ld.w	$a0, $a1, 200
	add.w	$a6, $a6, $a2
	slli.d	$a6, $a6, 3
	ldx.d	$a7, $a7, $a6
	move	$t0, $zero
	move	$t1, $a5
	move	$t2, $a4
	.p2align	4, , 16
.LBB16_40:                              #   Parent Loop BB16_7 Depth=1
                                        #     Parent Loop BB16_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a6, $a0, 1
	ldx.hu	$a6, $a7, $a6
	ld.hu	$t3, $t2, 0
	sub.d	$a6, $a6, $t3
	st.w	$a6, $t1, 0
	ldptr.w	$a6, $a1, 15544
	addi.d	$t0, $t0, 1
	addi.w	$a0, $a0, 1
	addi.d	$t2, $t2, 2
	addi.d	$t1, $t1, 4
	blt	$t0, $a6, .LBB16_40
# %bb.41:                               # %.critedge.loopexit
                                        #   in Loop: Header=BB16_38 Depth=2
	ori	$a0, $t4, 3260
	ldx.w	$a0, $a1, $a0
	b	.LBB16_37
	.p2align	4, , 16
.LBB16_42:                              # %.loopexit.thread130
                                        #   in Loop: Header=BB16_7 Depth=1
	ldptr.w	$a0, $a1, 15256
	bnez	$a0, .LBB16_6
# %bb.43:                               #   in Loop: Header=BB16_7 Depth=1
	ld.w	$a0, $a1, 20
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB16_45
# %bb.44:                               #   in Loop: Header=BB16_7 Depth=1
	ld.w	$a0, $a1, 12
	ldptr.d	$a1, $a1, 14224
	mul.d	$a0, $a0, $s4
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 72
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB16_32
.LBB16_45:                              #   in Loop: Header=BB16_7 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(dct_chroma)
	jirl	$ra, $ra, 0
	b	.LBB16_5
.LBB16_46:                              # %.preheader80
                                        #   in Loop: Header=BB16_7 Depth=1
	blez	$a0, .LBB16_31
# %bb.47:                               # %.lr.ph100.preheader
                                        #   in Loop: Header=BB16_7 Depth=1
	move	$s2, $zero
	ori	$s5, $t4, 336
	.p2align	4, , 16
.LBB16_48:                              # %.lr.ph100
                                        #   Parent Loop BB16_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 0
	ldptr.d	$a0, $a0, 6472
	ld.w	$a2, $a1, 188
	ldx.d	$a0, $a0, $s1
	add.d	$a2, $s2, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ld.w	$a2, $a1, 184
	ldptr.w	$a3, $a1, 15544
	alsl.d	$a0, $a2, $a0, 1
	add.d	$a1, $a1, $s5
	slli.d	$a2, $a3, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ldptr.w	$a0, $a1, 15548
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 32
	blt	$s2, $a0, .LBB16_48
	b	.LBB16_31
.LBB16_49:
	ld.d	$a0, $s3, 0
	ld.w	$a1, $a0, 12
	ldptr.d	$a0, $a0, 14224
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	ori	$a3, $zero, 536
	mul.d	$a1, $a1, $a3
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 364
	alsl.d	$a1, $a2, $a1, 4
	st.w	$a1, $a0, 364
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
.Lfunc_end16:
	.size	ChromaResidualCoding, .Lfunc_end16-ChromaResidualCoding
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function IntraChromaPrediction
.LCPI17_0:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI17_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI17_2:
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI17_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	IntraChromaPrediction
	.p2align	5
	.type	IntraChromaPrediction,@function
IntraChromaPrediction:                  # @IntraChromaPrediction
# %bb.0:
	addi.d	$sp, $sp, -1024
	st.d	$ra, $sp, 1016                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1008                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1000                  # 8-byte Folded Spill
	st.d	$s1, $sp, 992                   # 8-byte Folded Spill
	st.d	$s2, $sp, 984                   # 8-byte Folded Spill
	st.d	$s3, $sp, 976                   # 8-byte Folded Spill
	st.d	$s4, $sp, 968                   # 8-byte Folded Spill
	st.d	$s5, $sp, 960                   # 8-byte Folded Spill
	st.d	$s6, $sp, 952                   # 8-byte Folded Spill
	st.d	$s7, $sp, 944                   # 8-byte Folded Spill
	st.d	$s8, $sp, 936                   # 8-byte Folded Spill
	move	$s8, $a2
	move	$s2, $a1
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s7, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s7, 0
	ldptr.d	$s0, $a0, 14224
	ld.w	$fp, $a0, 12
	lu12i.w	$a2, 3
	ori	$a1, $a2, 3256
	ldx.wu	$a1, $a0, $a1
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	ori	$a1, $a2, 3260
	ldx.wu	$a3, $a0, $a1
	ori	$a1, $a2, 3248
	ldx.w	$a0, $a0, $a1
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	st.d	$a3, $sp, 344                   # 8-byte Folded Spill
	addi.w	$a0, $a3, 0
	pcalau12i	$s1, %pc_hi20(getNeighbour)
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	bltz	$a0, .LBB17_3
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	bstrpick.d	$s6, $a0, 31, 0
	addi.w	$s3, $zero, -1
	addi.d	$s4, $sp, 440
	move	$s5, $s3
	.p2align	4, , 16
.LBB17_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $s1, %pc_lo12(getNeighbour)
	ori	$a3, $zero, 1
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $s5
	move	$a4, $s4
	jirl	$ra, $a5, 0
	addi.w	$s5, $s5, 1
	addi.d	$s6, $s6, -1
	addi.d	$s4, $s4, 24
	bnez	$s6, .LBB17_2
.LBB17_3:                               # %._crit_edge
	ld.d	$a5, $s1, %pc_lo12(getNeighbour)
	addi.w	$a2, $zero, -1
	ori	$a3, $zero, 1
	addi.d	$a4, $sp, 848
	move	$a0, $fp
	move	$a1, $zero
	jirl	$ra, $a5, 0
	ld.w	$s4, $sp, 848
	ld.w	$a0, $sp, 440
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	ld.w	$a1, $a1, 272
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	beqz	$a1, .LBB17_6
# %bb.4:
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	srai.d	$a1, $s6, 1
	beqz	$s4, .LBB17_7
# %bb.5:
	ld.d	$a2, $s7, 0
	ld.w	$a3, $sp, 852
	ldptr.d	$a2, $a2, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$s4, $a2, $a3
	ld.d	$ra, $sp, 336                   # 8-byte Folded Reload
	ori	$s3, $zero, 1
	ori	$s5, $zero, 1
	bgtz	$a1, .LBB17_8
	b	.LBB17_12
.LBB17_6:
	ld.w	$s3, $sp, 464
	move	$s5, $s3
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	bnez	$a1, .LBB17_19
	b	.LBB17_20
.LBB17_7:
	move	$s4, $zero
	ld.d	$ra, $sp, 336                   # 8-byte Folded Reload
	ori	$s3, $zero, 1
	ori	$s5, $zero, 1
	blez	$a1, .LBB17_12
.LBB17_8:                               # %.lr.ph460
	ld.d	$a2, $s7, 0
	ori	$s5, $zero, 1
	addi.d	$a3, $sp, 468
	move	$a4, $a1
	b	.LBB17_10
	.p2align	4, , 16
.LBB17_9:                               #   in Loop: Header=BB17_10 Depth=1
	ld.w	$a5, $a3, 0
	ldptr.d	$a6, $a2, 14240
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a6, $a5
	and	$s5, $a5, $s5
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 24
	beqz	$a4, .LBB17_12
.LBB17_10:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, -4
	bnez	$a5, .LBB17_9
# %bb.11:                               #   in Loop: Header=BB17_10 Depth=1
	move	$a5, $zero
	and	$s5, $a5, $s5
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 24
	bnez	$a4, .LBB17_10
.LBB17_12:                              # %.preheader454
	blez	$s6, .LBB17_17
# %bb.13:                               # %.lr.ph464
	ld.d	$a2, $s7, 0
	bstrpick.d	$a3, $a1, 31, 0
	slli.d	$a4, $a3, 4
	alsl.d	$a3, $a3, $a4, 3
	addi.d	$a4, $sp, 440
	add.d	$a3, $a3, $a4
	addi.d	$a3, $a3, 28
	ori	$s3, $zero, 1
	b	.LBB17_15
	.p2align	4, , 16
.LBB17_14:                              #   in Loop: Header=BB17_15 Depth=1
	move	$a4, $zero
	and	$s3, $a4, $s3
	addi.w	$a1, $a1, 1
	addi.d	$a3, $a3, 24
	bge	$a1, $s6, .LBB17_17
.LBB17_15:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, -4
	beqz	$a4, .LBB17_14
# %bb.16:                               #   in Loop: Header=BB17_15 Depth=1
	ld.w	$a4, $a3, 0
	ldptr.d	$a5, $a2, 14240
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a5, $a4
	and	$s3, $a4, $s3
	addi.w	$a1, $a1, 1
	addi.d	$a3, $a3, 24
	blt	$a1, $s6, .LBB17_15
.LBB17_17:                              # %._crit_edge465
	beqz	$a0, .LBB17_197
# %bb.18:
	ld.d	$a0, $s7, 0
	ld.w	$a1, $sp, 444
	ldptr.d	$a0, $a0, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	beqz	$a1, .LBB17_20
.LBB17_19:
	st.w	$s4, $a1, 0
.LBB17_20:
	ori	$a2, $zero, 536
	addi.w	$a1, $a3, -1
	beqz	$s2, .LBB17_22
# %bb.21:
	sltu	$a3, $zero, $s5
	sltu	$a4, $zero, $s3
	and	$a3, $a3, $a4
	st.w	$a3, $s2, 0
.LBB17_22:
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	mul.d	$a2, $a3, $a2
	addi.w	$s2, $ra, 0
	beqz	$s8, .LBB17_24
# %bb.23:
	st.w	$a0, $s8, 0
.LBB17_24:
	add.d	$a2, $s0, $a2
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	sltu	$a4, $zero, $s4
	sltu	$a2, $zero, $s5
	sltu	$a3, $zero, $s3
	and	$a2, $a2, $a3
	st.d	$a2, $sp, 360                   # 8-byte Folded Spill
	slli.d	$a2, $s2, 1
	st.d	$a2, $sp, 368                   # 8-byte Folded Spill
	slti	$t2, $s6, 1
	slti	$a2, $s2, 1
	sltu	$a0, $zero, $a0
	st.d	$a4, $sp, 224                   # 8-byte Folded Spill
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	and	$a0, $a4, $a0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	srai.d	$t3, $s2, 1
	addi.d	$a0, $sp, 904
	alsl.d	$a3, $s2, $a0, 1
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	addi.d	$a3, $t3, -1
	srai.d	$s8, $s6, 1
	addi.d	$s1, $sp, 872
	alsl.d	$a4, $s6, $s1, 1
	st.d	$a4, $sp, 232                   # 8-byte Folded Spill
	addi.d	$a4, $s8, -1
	addi.d	$a5, $s2, -8
	sltui	$a5, $a5, 1
	ori	$a6, $zero, 5
	masknez	$a7, $a6, $a5
	ori	$t0, $zero, 17
	maskeqz	$t1, $t0, $a5
	or	$a7, $t1, $a7
	st.d	$a7, $sp, 176                   # 8-byte Folded Spill
	ori	$a7, $zero, 6
	sub.d	$a5, $a7, $a5
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a5, $s6, -8
	sltui	$a5, $a5, 1
	masknez	$a6, $a6, $a5
	maskeqz	$t0, $t0, $a5
	or	$a6, $t0, $a6
	st.d	$a6, $sp, 152                   # 8-byte Folded Spill
	slli.d	$a6, $s6, 1
	st.d	$a6, $sp, 216                   # 8-byte Folded Spill
	sub.d	$a5, $a7, $a5
	st.d	$a5, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a5, $a3, 31, 0
	st.d	$a5, $sp, 192                   # 8-byte Folded Spill
	bstrpick.d	$a5, $a4, 31, 0
	st.d	$a5, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	bstrpick.d	$a5, $a6, 31, 1
	slli.d	$a5, $a5, 1
	st.d	$a5, $sp, 256                   # 8-byte Folded Spill
	st.d	$t2, $sp, 16                    # 8-byte Folded Spill
	or	$a2, $a2, $t2
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	addi.w	$a2, $zero, -8
	lu32i.d	$a2, 0
	and	$a5, $a6, $a2
	st.d	$a5, $sp, 264                   # 8-byte Folded Spill
	and	$a3, $a3, $a2
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	and	$a2, $a4, $a2
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	bstrpick.d	$a2, $ra, 30, 3
	slli.d	$a2, $a2, 3
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	vreplgr2vr.w	$vr8, $t3
	slli.d	$a2, $a1, 6
	pcalau12i	$a3, %pc_hi20(IntraChromaPrediction.block_pos)
	addi.d	$a3, $a3, %pc_lo12(IntraChromaPrediction.block_pos)
	add.d	$a2, $a2, $a3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 5
	pcalau12i	$a2, %pc_hi20(subblk_offset_x)
	addi.d	$a2, $a2, %pc_lo12(subblk_offset_x)
	add.d	$a2, $a1, $a2
	addi.d	$a2, $a2, 3
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(subblk_offset_y)
	addi.d	$a2, $a2, %pc_lo12(subblk_offset_y)
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	addi.w	$a1, $zero, -2
	and	$a2, $s2, $a1
	add.d	$a0, $a0, $a2
	addi.d	$a2, $a0, -18
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a2, $a0, 8
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $a0, -4
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	and	$a0, $s6, $a1
	add.d	$a0, $s1, $a0
	addi.d	$a1, $a0, -18
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a1, $a0, 8
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $a0, -4
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	sub.d	$a0, $a1, $s8
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$t3, $sp, 248                   # 8-byte Folded Spill
	sub.d	$a0, $a1, $t3
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	move	$a3, $zero
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3228
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 336
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ori	$fp, $zero, 3
	addi.d	$t8, $sp, 440
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s2, $sp, 432                   # 8-byte Folded Spill
	vst	$vr8, $sp, 320                  # 16-byte Folded Spill
	b	.LBB17_26
	.p2align	4, , 16
.LBB17_25:                              # %.thread410
                                        #   in Loop: Header=BB17_26 Depth=1
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$a3, $zero, 1
	move	$a1, $zero
	beqz	$a0, .LBB17_168
.LBB17_26:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_34 Depth 2
                                        #     Child Loop BB17_116 Depth 2
                                        #     Child Loop BB17_125 Depth 2
                                        #     Child Loop BB17_128 Depth 2
                                        #     Child Loop BB17_132 Depth 2
                                        #       Child Loop BB17_135 Depth 3
                                        #       Child Loop BB17_138 Depth 3
                                        #     Child Loop BB17_144 Depth 2
                                        #     Child Loop BB17_147 Depth 2
                                        #     Child Loop BB17_154 Depth 2
                                        #     Child Loop BB17_157 Depth 2
                                        #     Child Loop BB17_161 Depth 2
                                        #       Child Loop BB17_164 Depth 3
                                        #       Child Loop BB17_167 Depth 3
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s7, 0
	ldptr.d	$a0, $a0, 6472
	ldptr.w	$a1, $a2, 15528
	st.d	$a3, $sp, 392                   # 8-byte Folded Spill
	slli.d	$a3, $a3, 3
	ldx.d	$s0, $a0, $a3
	srai.d	$a0, $a1, 1
	blez	$a0, .LBB17_113
# %bb.27:                               # %.preheader450.lr.ph
                                        #   in Loop: Header=BB17_26 Depth=1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 11
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	b	.LBB17_34
	.p2align	4, , 16
.LBB17_28:                              #   in Loop: Header=BB17_34 Depth=2
	beqz	$s3, .LBB17_44
.LBB17_29:                              #   in Loop: Header=BB17_34 Depth=2
	slli.d	$a6, $t0, 4
	alsl.d	$a6, $t0, $a6, 3
	add.d	$a6, $t8, $a6
	ld.w	$a7, $a6, 44
	ld.w	$t2, $a6, 40
	ld.w	$t3, $a6, 68
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $s0, $a7
	slli.d	$t2, $t2, 1
	slli.d	$t3, $t3, 3
	ld.w	$t4, $a6, 64
	ldx.d	$t3, $s0, $t3
	ldx.hu	$a7, $a7, $t2
	ld.w	$t2, $a6, 92
	slli.d	$t4, $t4, 1
	ldx.hu	$t3, $t3, $t4
	ld.w	$t4, $a6, 116
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $s0, $t2
	ld.w	$t5, $a6, 88
	slli.d	$t4, $t4, 3
	ld.w	$a6, $a6, 112
	ldx.d	$t4, $s0, $t4
	slli.d	$t5, $t5, 1
	ldx.hu	$t2, $t2, $t5
	slli.d	$a6, $a6, 1
	ldx.hu	$a6, $t4, $a6
	add.d	$a7, $a7, $t3
	add.d	$a7, $a7, $t2
.LBB17_30:                              # %.thread385.3
                                        #   in Loop: Header=BB17_34 Depth=2
	add.d	$a6, $a7, $a6
.LBB17_31:                              # %.thread385.3
                                        #   in Loop: Header=BB17_34 Depth=2
	addi.d	$a6, $a6, 2
.LBB17_32:                              # %.thread385.3
                                        #   in Loop: Header=BB17_34 Depth=2
	srli.d	$t2, $a6, 2
.LBB17_33:                              # %.thread385.3
                                        #   in Loop: Header=BB17_34 Depth=2
	slli.d	$a6, $t0, 5
	add.d	$a6, $a2, $a6
	slli.d	$a7, $t1, 1
	stx.h	$t2, $a6, $a7
	addi.d	$t0, $a7, 2
	stx.h	$t2, $a6, $t0
	addi.d	$t1, $a7, 4
	stx.h	$t2, $a6, $t1
	addi.d	$t3, $a7, 6
	stx.h	$t2, $a6, $t3
	addi.d	$t4, $a6, 32
	stx.h	$t2, $t4, $a7
	stx.h	$t2, $t4, $t0
	stx.h	$t2, $t4, $t1
	stx.h	$t2, $t4, $t3
	addi.d	$t4, $a6, 64
	stx.h	$t2, $t4, $a7
	stx.h	$t2, $t4, $t0
	stx.h	$t2, $t4, $t1
	stx.h	$t2, $t4, $t3
	addi.d	$a6, $a6, 96
	stx.h	$t2, $a6, $a7
	stx.h	$t2, $a6, $t0
	stx.h	$t2, $a6, $t1
	stx.h	$t2, $a6, $t3
	addi.d	$a0, $a0, -1
	addi.d	$a5, $a5, 16
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	beqz	$a0, .LBB17_113
.LBB17_34:                              # %.preheader450
                                        #   Parent Loop BB17_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $sp, 868
	ld.w	$a6, $sp, 864
	ld.bu	$t0, $a3, -1
	ld.w	$t3, $a5, -8
	ld.bu	$t1, $a4, -3
	alsl.d	$a7, $a7, $s0, 3
	move	$t2, $a1
	bltu	$fp, $t3, .LBB17_56
# %bb.35:                               # %.preheader450
                                        #   in Loop: Header=BB17_34 Depth=2
	slli.d	$t2, $t3, 2
	pcalau12i	$t3, %pc_hi20(.LJTI17_0)
	addi.d	$t3, $t3, %pc_lo12(.LJTI17_0)
	ldx.w	$t2, $t3, $t2
	add.d	$t2, $t3, $t2
	jr	$t2
.LBB17_36:                              #   in Loop: Header=BB17_34 Depth=2
	beqz	$s4, .LBB17_46
# %bb.37:                               # %.preheader438
                                        #   in Loop: Header=BB17_34 Depth=2
	ld.d	$t2, $a7, 0
	alsl.d	$t3, $a6, $t2, 1
	slli.d	$t4, $t1, 1
	ldx.hu	$t3, $t3, $t4
	alsl.d	$t2, $t1, $t2, 1
	alsl.d	$t2, $a6, $t2, 1
	ld.hu	$t4, $t2, 2
	ld.hu	$t5, $t2, 4
	ld.hu	$t2, $t2, 6
	add.d	$t3, $t3, $t4
	add.d	$t3, $t3, $t5
	add.d	$t2, $t3, $t2
	bnez	$s5, .LBB17_48
	b	.LBB17_55
	.p2align	4, , 16
.LBB17_38:                              #   in Loop: Header=BB17_34 Depth=2
	bnez	$s3, .LBB17_53
# %bb.39:                               #   in Loop: Header=BB17_34 Depth=2
	move	$t2, $a1
	bnez	$s4, .LBB17_43
	b	.LBB17_56
	.p2align	4, , 16
.LBB17_40:                              #   in Loop: Header=BB17_34 Depth=2
	beqz	$s4, .LBB17_45
# %bb.41:                               # %.preheader447
                                        #   in Loop: Header=BB17_34 Depth=2
	ld.d	$t2, $a7, 0
	alsl.d	$t3, $a6, $t2, 1
	slli.d	$t4, $t1, 1
	ldx.hu	$t3, $t3, $t4
	alsl.d	$t2, $t1, $t2, 1
	alsl.d	$t2, $a6, $t2, 1
	ld.hu	$t4, $t2, 2
	ld.hu	$t5, $t2, 4
	ld.hu	$t2, $t2, 6
	add.d	$t3, $t3, $t4
	add.d	$t3, $t3, $t5
	add.d	$t2, $t3, $t2
	bnez	$s3, .LBB17_48
	b	.LBB17_55
.LBB17_42:                              #   in Loop: Header=BB17_34 Depth=2
	beqz	$s4, .LBB17_52
.LBB17_43:                              #   in Loop: Header=BB17_34 Depth=2
	ld.d	$t2, $a7, 0
	alsl.d	$t3, $a6, $t2, 1
	slli.d	$t4, $t1, 1
	ldx.hu	$t3, $t3, $t4
	alsl.d	$t2, $t1, $t2, 1
	alsl.d	$t2, $a6, $t2, 1
	ld.hu	$t4, $t2, 2
	ld.hu	$t5, $t2, 4
	ld.hu	$t2, $t2, 6
	add.d	$t3, $t3, $t4
	add.d	$t3, $t3, $t5
	b	.LBB17_54
.LBB17_44:                              #   in Loop: Header=BB17_34 Depth=2
	move	$t2, $a1
	bnez	$s4, .LBB17_105
	b	.LBB17_33
.LBB17_45:                              # %.thread419
                                        #   in Loop: Header=BB17_34 Depth=2
	move	$t2, $a1
	bnez	$s3, .LBB17_47
	b	.LBB17_56
.LBB17_46:                              # %.thread413
                                        #   in Loop: Header=BB17_34 Depth=2
	move	$t2, $a1
	beqz	$s5, .LBB17_56
.LBB17_47:                              #   in Loop: Header=BB17_34 Depth=2
	move	$t2, $zero
.LBB17_48:                              # %.preheader437
                                        #   in Loop: Header=BB17_34 Depth=2
	slli.d	$t3, $t0, 4
	alsl.d	$t3, $t0, $t3, 3
	add.d	$t3, $t8, $t3
	ld.w	$t4, $t3, 44
	ld.w	$t5, $t3, 40
	ld.w	$t6, $t3, 68
	slli.d	$t4, $t4, 3
	ldx.d	$t4, $s0, $t4
	slli.d	$t5, $t5, 1
	slli.d	$t6, $t6, 3
	ld.w	$t7, $t3, 64
	ldx.d	$t6, $s0, $t6
	ldx.hu	$t4, $t4, $t5
	ld.w	$t5, $t3, 92
	slli.d	$t7, $t7, 1
	ldx.hu	$t6, $t6, $t7
	ld.w	$t7, $t3, 116
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $s0, $t5
	ld.w	$t8, $t3, 88
	slli.d	$t7, $t7, 3
	ld.w	$t3, $t3, 112
	ldx.d	$t7, $s0, $t7
	slli.d	$t8, $t8, 1
	ldx.hu	$t5, $t5, $t8
	slli.d	$t3, $t3, 1
	ldx.hu	$t3, $t7, $t3
	add.d	$t4, $t4, $t6
	add.d	$t4, $t4, $t5
	add.d	$t3, $t4, $t3
	beqz	$s4, .LBB17_50
# %bb.49:                               #   in Loop: Header=BB17_34 Depth=2
	add.d	$t2, $t2, $t3
	addi.d	$t2, $t2, 4
	srli.d	$t2, $t2, 3
	b	.LBB17_51
.LBB17_50:                              #   in Loop: Header=BB17_34 Depth=2
	addi.d	$t2, $t3, 2
	srli.d	$t2, $t2, 2
.LBB17_51:                              # %.thread385
                                        #   in Loop: Header=BB17_34 Depth=2
	addi.d	$t8, $sp, 440
	b	.LBB17_56
.LBB17_52:                              #   in Loop: Header=BB17_34 Depth=2
	move	$t2, $a1
	beqz	$s5, .LBB17_56
.LBB17_53:                              #   in Loop: Header=BB17_34 Depth=2
	slli.d	$t2, $t0, 4
	alsl.d	$t2, $t0, $t2, 3
	add.d	$t2, $t8, $t2
	ld.w	$t3, $t2, 44
	ld.w	$t4, $t2, 40
	ld.w	$t5, $t2, 68
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $s0, $t3
	slli.d	$t4, $t4, 1
	slli.d	$t5, $t5, 3
	ld.w	$t6, $t2, 64
	ldx.d	$t5, $s0, $t5
	ldx.hu	$t3, $t3, $t4
	ld.w	$t4, $t2, 92
	slli.d	$t6, $t6, 1
	ldx.hu	$t5, $t5, $t6
	ld.w	$t6, $t2, 116
	slli.d	$t4, $t4, 3
	ldx.d	$t4, $s0, $t4
	ld.w	$t7, $t2, 88
	slli.d	$t6, $t6, 3
	ld.w	$t2, $t2, 112
	ldx.d	$t6, $s0, $t6
	slli.d	$t7, $t7, 1
	ldx.hu	$t4, $t4, $t7
	slli.d	$t2, $t2, 1
	ldx.hu	$t2, $t6, $t2
	add.d	$t3, $t3, $t5
	add.d	$t3, $t3, $t4
.LBB17_54:                              # %.thread382
                                        #   in Loop: Header=BB17_34 Depth=2
	add.d	$t2, $t3, $t2
.LBB17_55:                              # %.thread382
                                        #   in Loop: Header=BB17_34 Depth=2
	addi.d	$t2, $t2, 2
	srli.d	$t2, $t2, 2
.LBB17_56:                              # %.thread385
                                        #   in Loop: Header=BB17_34 Depth=2
	slli.d	$t0, $t0, 5
	add.d	$t0, $a2, $t0
	slli.d	$t1, $t1, 1
	stx.h	$t2, $t0, $t1
	addi.d	$t3, $t1, 2
	stx.h	$t2, $t0, $t3
	addi.d	$t4, $t1, 4
	stx.h	$t2, $t0, $t4
	addi.d	$t5, $t1, 6
	stx.h	$t2, $t0, $t5
	addi.d	$t6, $t0, 32
	stx.h	$t2, $t6, $t1
	stx.h	$t2, $t6, $t3
	stx.h	$t2, $t6, $t4
	stx.h	$t2, $t6, $t5
	addi.d	$t6, $t0, 64
	stx.h	$t2, $t6, $t1
	stx.h	$t2, $t6, $t3
	stx.h	$t2, $t6, $t4
	stx.h	$t2, $t6, $t5
	addi.d	$t0, $t0, 96
	stx.h	$t2, $t0, $t1
	stx.h	$t2, $t0, $t3
	stx.h	$t2, $t0, $t4
	stx.h	$t2, $t0, $t5
	ld.bu	$t0, $a3, 0
	ld.w	$t3, $a5, -4
	ld.bu	$t1, $a4, -2
	move	$t2, $a1
	bltu	$fp, $t3, .LBB17_77
# %bb.57:                               # %.thread385
                                        #   in Loop: Header=BB17_34 Depth=2
	slli.d	$t2, $t3, 2
	pcalau12i	$t3, %pc_hi20(.LJTI17_1)
	addi.d	$t3, $t3, %pc_lo12(.LJTI17_1)
	ldx.w	$t2, $t3, $t2
	add.d	$t2, $t3, $t2
	jr	$t2
.LBB17_58:                              #   in Loop: Header=BB17_34 Depth=2
	beqz	$s4, .LBB17_67
# %bb.59:                               # %.preheader438.1
                                        #   in Loop: Header=BB17_34 Depth=2
	ld.d	$t2, $a7, 0
	alsl.d	$t3, $a6, $t2, 1
	slli.d	$t4, $t1, 1
	ldx.hu	$t3, $t3, $t4
	alsl.d	$t2, $t1, $t2, 1
	alsl.d	$t2, $a6, $t2, 1
	ld.hu	$t4, $t2, 2
	ld.hu	$t5, $t2, 4
	ld.hu	$t2, $t2, 6
	add.d	$t3, $t3, $t4
	add.d	$t3, $t3, $t5
	add.d	$t2, $t3, $t2
	bnez	$s5, .LBB17_69
	b	.LBB17_76
	.p2align	4, , 16
.LBB17_60:                              #   in Loop: Header=BB17_34 Depth=2
	bnez	$s3, .LBB17_74
# %bb.61:                               #   in Loop: Header=BB17_34 Depth=2
	move	$t2, $a1
	bnez	$s4, .LBB17_65
	b	.LBB17_77
	.p2align	4, , 16
.LBB17_62:                              #   in Loop: Header=BB17_34 Depth=2
	beqz	$s4, .LBB17_66
# %bb.63:                               # %.preheader447.1
                                        #   in Loop: Header=BB17_34 Depth=2
	ld.d	$t2, $a7, 0
	alsl.d	$t3, $a6, $t2, 1
	slli.d	$t4, $t1, 1
	ldx.hu	$t3, $t3, $t4
	alsl.d	$t2, $t1, $t2, 1
	alsl.d	$t2, $a6, $t2, 1
	ld.hu	$t4, $t2, 2
	ld.hu	$t5, $t2, 4
	ld.hu	$t2, $t2, 6
	add.d	$t3, $t3, $t4
	add.d	$t3, $t3, $t5
	add.d	$t2, $t3, $t2
	bnez	$s3, .LBB17_69
	b	.LBB17_76
.LBB17_64:                              #   in Loop: Header=BB17_34 Depth=2
	beqz	$s4, .LBB17_73
.LBB17_65:                              #   in Loop: Header=BB17_34 Depth=2
	ld.d	$t2, $a7, 0
	alsl.d	$t3, $a6, $t2, 1
	slli.d	$t4, $t1, 1
	ldx.hu	$t3, $t3, $t4
	alsl.d	$t2, $t1, $t2, 1
	alsl.d	$t2, $a6, $t2, 1
	ld.hu	$t4, $t2, 2
	ld.hu	$t5, $t2, 4
	ld.hu	$t2, $t2, 6
	add.d	$t3, $t3, $t4
	add.d	$t3, $t3, $t5
	b	.LBB17_75
.LBB17_66:                              # %.thread419.1
                                        #   in Loop: Header=BB17_34 Depth=2
	move	$t2, $a1
	bnez	$s3, .LBB17_68
	b	.LBB17_77
.LBB17_67:                              # %.thread413.1
                                        #   in Loop: Header=BB17_34 Depth=2
	move	$t2, $a1
	beqz	$s5, .LBB17_77
.LBB17_68:                              #   in Loop: Header=BB17_34 Depth=2
	move	$t2, $zero
.LBB17_69:                              # %.preheader446.1
                                        #   in Loop: Header=BB17_34 Depth=2
	slli.d	$t3, $t0, 4
	alsl.d	$t3, $t0, $t3, 3
	add.d	$t3, $t8, $t3
	ld.w	$t4, $t3, 44
	ld.w	$t5, $t3, 40
	ld.w	$t6, $t3, 68
	slli.d	$t4, $t4, 3
	ldx.d	$t4, $s0, $t4
	slli.d	$t5, $t5, 1
	slli.d	$t6, $t6, 3
	ld.w	$t7, $t3, 64
	ldx.d	$t6, $s0, $t6
	ldx.hu	$t4, $t4, $t5
	ld.w	$t5, $t3, 92
	slli.d	$t7, $t7, 1
	ldx.hu	$t6, $t6, $t7
	ld.w	$t7, $t3, 116
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $s0, $t5
	ld.w	$t8, $t3, 88
	slli.d	$t7, $t7, 3
	ld.w	$t3, $t3, 112
	ldx.d	$t7, $s0, $t7
	slli.d	$t8, $t8, 1
	ldx.hu	$t5, $t5, $t8
	slli.d	$t3, $t3, 1
	ldx.hu	$t3, $t7, $t3
	add.d	$t4, $t4, $t6
	add.d	$t4, $t4, $t5
	add.d	$t3, $t4, $t3
	beqz	$s4, .LBB17_71
# %bb.70:                               #   in Loop: Header=BB17_34 Depth=2
	add.d	$t2, $t2, $t3
	addi.d	$t2, $t2, 4
	srli.d	$t2, $t2, 3
	b	.LBB17_72
.LBB17_71:                              #   in Loop: Header=BB17_34 Depth=2
	addi.d	$t2, $t3, 2
	srli.d	$t2, $t2, 2
.LBB17_72:                              # %.thread385.1
                                        #   in Loop: Header=BB17_34 Depth=2
	addi.d	$t8, $sp, 440
	b	.LBB17_77
.LBB17_73:                              #   in Loop: Header=BB17_34 Depth=2
	move	$t2, $a1
	beqz	$s5, .LBB17_77
.LBB17_74:                              #   in Loop: Header=BB17_34 Depth=2
	slli.d	$t2, $t0, 4
	alsl.d	$t2, $t0, $t2, 3
	add.d	$t2, $t8, $t2
	ld.w	$t3, $t2, 44
	ld.w	$t4, $t2, 40
	ld.w	$t5, $t2, 68
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $s0, $t3
	slli.d	$t4, $t4, 1
	slli.d	$t5, $t5, 3
	ld.w	$t6, $t2, 64
	ldx.d	$t5, $s0, $t5
	ldx.hu	$t3, $t3, $t4
	ld.w	$t4, $t2, 92
	slli.d	$t6, $t6, 1
	ldx.hu	$t5, $t5, $t6
	ld.w	$t6, $t2, 116
	slli.d	$t4, $t4, 3
	ldx.d	$t4, $s0, $t4
	ld.w	$t7, $t2, 88
	slli.d	$t6, $t6, 3
	ld.w	$t2, $t2, 112
	ldx.d	$t6, $s0, $t6
	slli.d	$t7, $t7, 1
	ldx.hu	$t4, $t4, $t7
	slli.d	$t2, $t2, 1
	ldx.hu	$t2, $t6, $t2
	add.d	$t3, $t3, $t5
	add.d	$t3, $t3, $t4
.LBB17_75:                              # %.thread405.1
                                        #   in Loop: Header=BB17_34 Depth=2
	add.d	$t2, $t3, $t2
.LBB17_76:                              # %.thread405.1
                                        #   in Loop: Header=BB17_34 Depth=2
	addi.d	$t2, $t2, 2
	srli.d	$t2, $t2, 2
.LBB17_77:                              # %.thread385.1
                                        #   in Loop: Header=BB17_34 Depth=2
	slli.d	$t0, $t0, 5
	add.d	$t0, $a2, $t0
	slli.d	$t1, $t1, 1
	stx.h	$t2, $t0, $t1
	addi.d	$t3, $t1, 2
	stx.h	$t2, $t0, $t3
	addi.d	$t4, $t1, 4
	stx.h	$t2, $t0, $t4
	addi.d	$t5, $t1, 6
	stx.h	$t2, $t0, $t5
	addi.d	$t6, $t0, 32
	stx.h	$t2, $t6, $t1
	stx.h	$t2, $t6, $t3
	stx.h	$t2, $t6, $t4
	stx.h	$t2, $t6, $t5
	addi.d	$t6, $t0, 64
	stx.h	$t2, $t6, $t1
	stx.h	$t2, $t6, $t3
	stx.h	$t2, $t6, $t4
	stx.h	$t2, $t6, $t5
	addi.d	$t0, $t0, 96
	stx.h	$t2, $t0, $t1
	stx.h	$t2, $t0, $t3
	stx.h	$t2, $t0, $t4
	stx.h	$t2, $t0, $t5
	ld.bu	$t0, $a3, 1
	ld.w	$t3, $a5, 0
	ld.bu	$t1, $a4, -1
	move	$t2, $a1
	bltu	$fp, $t3, .LBB17_98
# %bb.78:                               # %.thread385.1
                                        #   in Loop: Header=BB17_34 Depth=2
	slli.d	$t2, $t3, 2
	pcalau12i	$t3, %pc_hi20(.LJTI17_2)
	addi.d	$t3, $t3, %pc_lo12(.LJTI17_2)
	ldx.w	$t2, $t3, $t2
	add.d	$t2, $t3, $t2
	jr	$t2
.LBB17_79:                              #   in Loop: Header=BB17_34 Depth=2
	beqz	$s4, .LBB17_88
# %bb.80:                               # %.preheader438.2
                                        #   in Loop: Header=BB17_34 Depth=2
	ld.d	$t2, $a7, 0
	alsl.d	$t3, $a6, $t2, 1
	slli.d	$t4, $t1, 1
	ldx.hu	$t3, $t3, $t4
	alsl.d	$t2, $t1, $t2, 1
	alsl.d	$t2, $a6, $t2, 1
	ld.hu	$t4, $t2, 2
	ld.hu	$t5, $t2, 4
	ld.hu	$t2, $t2, 6
	add.d	$t3, $t3, $t4
	add.d	$t3, $t3, $t5
	add.d	$t2, $t3, $t2
	bnez	$s5, .LBB17_90
	b	.LBB17_97
	.p2align	4, , 16
.LBB17_81:                              #   in Loop: Header=BB17_34 Depth=2
	bnez	$s3, .LBB17_95
# %bb.82:                               #   in Loop: Header=BB17_34 Depth=2
	move	$t2, $a1
	bnez	$s4, .LBB17_86
	b	.LBB17_98
	.p2align	4, , 16
.LBB17_83:                              #   in Loop: Header=BB17_34 Depth=2
	beqz	$s4, .LBB17_87
# %bb.84:                               # %.preheader447.2
                                        #   in Loop: Header=BB17_34 Depth=2
	ld.d	$t2, $a7, 0
	alsl.d	$t3, $a6, $t2, 1
	slli.d	$t4, $t1, 1
	ldx.hu	$t3, $t3, $t4
	alsl.d	$t2, $t1, $t2, 1
	alsl.d	$t2, $a6, $t2, 1
	ld.hu	$t4, $t2, 2
	ld.hu	$t5, $t2, 4
	ld.hu	$t2, $t2, 6
	add.d	$t3, $t3, $t4
	add.d	$t3, $t3, $t5
	add.d	$t2, $t3, $t2
	bnez	$s3, .LBB17_90
	b	.LBB17_97
.LBB17_85:                              #   in Loop: Header=BB17_34 Depth=2
	beqz	$s4, .LBB17_94
.LBB17_86:                              #   in Loop: Header=BB17_34 Depth=2
	ld.d	$t2, $a7, 0
	alsl.d	$t3, $a6, $t2, 1
	slli.d	$t4, $t1, 1
	ldx.hu	$t3, $t3, $t4
	alsl.d	$t2, $t1, $t2, 1
	alsl.d	$t2, $a6, $t2, 1
	ld.hu	$t4, $t2, 2
	ld.hu	$t5, $t2, 4
	ld.hu	$t2, $t2, 6
	add.d	$t3, $t3, $t4
	add.d	$t3, $t3, $t5
	b	.LBB17_96
.LBB17_87:                              # %.thread419.2
                                        #   in Loop: Header=BB17_34 Depth=2
	move	$t2, $a1
	bnez	$s3, .LBB17_89
	b	.LBB17_98
.LBB17_88:                              # %.thread413.2
                                        #   in Loop: Header=BB17_34 Depth=2
	move	$t2, $a1
	beqz	$s5, .LBB17_98
.LBB17_89:                              #   in Loop: Header=BB17_34 Depth=2
	move	$t2, $zero
.LBB17_90:                              # %.preheader446.2
                                        #   in Loop: Header=BB17_34 Depth=2
	slli.d	$t3, $t0, 4
	alsl.d	$t3, $t0, $t3, 3
	add.d	$t3, $t8, $t3
	ld.w	$t4, $t3, 44
	ld.w	$t5, $t3, 40
	ld.w	$t6, $t3, 68
	slli.d	$t4, $t4, 3
	ldx.d	$t4, $s0, $t4
	slli.d	$t5, $t5, 1
	slli.d	$t6, $t6, 3
	ld.w	$t7, $t3, 64
	ldx.d	$t6, $s0, $t6
	ldx.hu	$t4, $t4, $t5
	ld.w	$t5, $t3, 92
	slli.d	$t7, $t7, 1
	ldx.hu	$t6, $t6, $t7
	ld.w	$t7, $t3, 116
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $s0, $t5
	ld.w	$t8, $t3, 88
	slli.d	$t7, $t7, 3
	ld.w	$t3, $t3, 112
	ldx.d	$t7, $s0, $t7
	slli.d	$t8, $t8, 1
	ldx.hu	$t5, $t5, $t8
	slli.d	$t3, $t3, 1
	ldx.hu	$t3, $t7, $t3
	add.d	$t4, $t4, $t6
	add.d	$t4, $t4, $t5
	add.d	$t3, $t4, $t3
	beqz	$s4, .LBB17_92
# %bb.91:                               #   in Loop: Header=BB17_34 Depth=2
	add.d	$t2, $t2, $t3
	addi.d	$t2, $t2, 4
	srli.d	$t2, $t2, 3
	b	.LBB17_93
.LBB17_92:                              #   in Loop: Header=BB17_34 Depth=2
	addi.d	$t2, $t3, 2
	srli.d	$t2, $t2, 2
.LBB17_93:                              # %.thread385.2
                                        #   in Loop: Header=BB17_34 Depth=2
	addi.d	$t8, $sp, 440
	b	.LBB17_98
.LBB17_94:                              #   in Loop: Header=BB17_34 Depth=2
	move	$t2, $a1
	beqz	$s5, .LBB17_98
.LBB17_95:                              #   in Loop: Header=BB17_34 Depth=2
	slli.d	$t2, $t0, 4
	alsl.d	$t2, $t0, $t2, 3
	add.d	$t2, $t8, $t2
	ld.w	$t3, $t2, 44
	ld.w	$t4, $t2, 40
	ld.w	$t5, $t2, 68
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $s0, $t3
	slli.d	$t4, $t4, 1
	slli.d	$t5, $t5, 3
	ld.w	$t6, $t2, 64
	ldx.d	$t5, $s0, $t5
	ldx.hu	$t3, $t3, $t4
	ld.w	$t4, $t2, 92
	slli.d	$t6, $t6, 1
	ldx.hu	$t5, $t5, $t6
	ld.w	$t6, $t2, 116
	slli.d	$t4, $t4, 3
	ldx.d	$t4, $s0, $t4
	ld.w	$t7, $t2, 88
	slli.d	$t6, $t6, 3
	ld.w	$t2, $t2, 112
	ldx.d	$t6, $s0, $t6
	slli.d	$t7, $t7, 1
	ldx.hu	$t4, $t4, $t7
	slli.d	$t2, $t2, 1
	ldx.hu	$t2, $t6, $t2
	add.d	$t3, $t3, $t5
	add.d	$t3, $t3, $t4
.LBB17_96:                              # %.thread405.2
                                        #   in Loop: Header=BB17_34 Depth=2
	add.d	$t2, $t3, $t2
.LBB17_97:                              # %.thread405.2
                                        #   in Loop: Header=BB17_34 Depth=2
	addi.d	$t2, $t2, 2
	srli.d	$t2, $t2, 2
.LBB17_98:                              # %.thread385.2
                                        #   in Loop: Header=BB17_34 Depth=2
	slli.d	$t0, $t0, 5
	add.d	$t0, $a2, $t0
	slli.d	$t1, $t1, 1
	stx.h	$t2, $t0, $t1
	addi.d	$t3, $t1, 2
	stx.h	$t2, $t0, $t3
	addi.d	$t4, $t1, 4
	stx.h	$t2, $t0, $t4
	addi.d	$t5, $t1, 6
	stx.h	$t2, $t0, $t5
	addi.d	$t6, $t0, 32
	stx.h	$t2, $t6, $t1
	stx.h	$t2, $t6, $t3
	stx.h	$t2, $t6, $t4
	stx.h	$t2, $t6, $t5
	addi.d	$t6, $t0, 64
	stx.h	$t2, $t6, $t1
	stx.h	$t2, $t6, $t3
	stx.h	$t2, $t6, $t4
	stx.h	$t2, $t6, $t5
	addi.d	$t0, $t0, 96
	stx.h	$t2, $t0, $t1
	stx.h	$t2, $t0, $t3
	stx.h	$t2, $t0, $t4
	stx.h	$t2, $t0, $t5
	ld.bu	$t0, $a3, 2
	ld.w	$t3, $a5, 4
	ld.bu	$t1, $a4, 0
	move	$t2, $a1
	bltu	$fp, $t3, .LBB17_33
# %bb.99:                               # %.thread385.2
                                        #   in Loop: Header=BB17_34 Depth=2
	slli.d	$t2, $t3, 2
	pcalau12i	$t3, %pc_hi20(.LJTI17_3)
	addi.d	$t3, $t3, %pc_lo12(.LJTI17_3)
	ldx.w	$t2, $t3, $t2
	add.d	$t2, $t3, $t2
	jr	$t2
.LBB17_100:                             #   in Loop: Header=BB17_34 Depth=2
	beqz	$s4, .LBB17_107
# %bb.101:                              # %.preheader438.3
                                        #   in Loop: Header=BB17_34 Depth=2
	ld.d	$a7, $a7, 0
	alsl.d	$t2, $a6, $a7, 1
	slli.d	$t3, $t1, 1
	ldx.hu	$t2, $t2, $t3
	alsl.d	$a7, $t1, $a7, 1
	alsl.d	$a6, $a6, $a7, 1
	ld.hu	$a7, $a6, 2
	ld.hu	$t3, $a6, 4
	ld.hu	$a6, $a6, 6
	add.d	$a7, $t2, $a7
	add.d	$a7, $a7, $t3
	add.d	$a6, $a7, $a6
	bnez	$s5, .LBB17_109
	b	.LBB17_31
	.p2align	4, , 16
.LBB17_102:                             #   in Loop: Header=BB17_34 Depth=2
	beqz	$s4, .LBB17_106
# %bb.103:                              # %.preheader447.3
                                        #   in Loop: Header=BB17_34 Depth=2
	ld.d	$a7, $a7, 0
	alsl.d	$t2, $a6, $a7, 1
	slli.d	$t3, $t1, 1
	ldx.hu	$t2, $t2, $t3
	alsl.d	$a7, $t1, $a7, 1
	alsl.d	$a6, $a6, $a7, 1
	ld.hu	$a7, $a6, 2
	ld.hu	$t3, $a6, 4
	ld.hu	$a6, $a6, 6
	add.d	$a7, $t2, $a7
	add.d	$a7, $a7, $t3
	add.d	$a6, $a7, $a6
	bnez	$s3, .LBB17_109
	b	.LBB17_31
.LBB17_104:                             #   in Loop: Header=BB17_34 Depth=2
	beqz	$s4, .LBB17_112
.LBB17_105:                             #   in Loop: Header=BB17_34 Depth=2
	ld.d	$a7, $a7, 0
	alsl.d	$t2, $a6, $a7, 1
	slli.d	$t3, $t1, 1
	ldx.hu	$t2, $t2, $t3
	alsl.d	$a7, $t1, $a7, 1
	alsl.d	$a6, $a6, $a7, 1
	ld.hu	$a7, $a6, 2
	ld.hu	$t3, $a6, 4
	ld.hu	$a6, $a6, 6
	add.d	$a7, $t2, $a7
	add.d	$a7, $a7, $t3
	b	.LBB17_30
.LBB17_106:                             # %.thread419.3
                                        #   in Loop: Header=BB17_34 Depth=2
	move	$t2, $a1
	bnez	$s3, .LBB17_108
	b	.LBB17_33
.LBB17_107:                             # %.thread413.3
                                        #   in Loop: Header=BB17_34 Depth=2
	move	$t2, $a1
	beqz	$s5, .LBB17_33
.LBB17_108:                             #   in Loop: Header=BB17_34 Depth=2
	move	$a6, $zero
.LBB17_109:                             # %.preheader446.3
                                        #   in Loop: Header=BB17_34 Depth=2
	slli.d	$a7, $t0, 4
	alsl.d	$a7, $t0, $a7, 3
	add.d	$a7, $t8, $a7
	ld.w	$t2, $a7, 44
	ld.w	$t3, $a7, 40
	ld.w	$t4, $a7, 68
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $s0, $t2
	slli.d	$t3, $t3, 1
	slli.d	$t4, $t4, 3
	ld.w	$t5, $a7, 64
	ldx.d	$t4, $s0, $t4
	ldx.hu	$t2, $t2, $t3
	ld.w	$t3, $a7, 92
	slli.d	$t5, $t5, 1
	ldx.hu	$t4, $t4, $t5
	ld.w	$t5, $a7, 116
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $s0, $t3
	ld.w	$t6, $a7, 88
	slli.d	$t5, $t5, 3
	ld.w	$a7, $a7, 112
	ldx.d	$t5, $s0, $t5
	slli.d	$t6, $t6, 1
	ldx.hu	$t3, $t3, $t6
	slli.d	$a7, $a7, 1
	ldx.hu	$a7, $t5, $a7
	add.d	$t2, $t2, $t4
	add.d	$t2, $t2, $t3
	add.d	$a7, $t2, $a7
	beqz	$s4, .LBB17_111
# %bb.110:                              #   in Loop: Header=BB17_34 Depth=2
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 4
	srli.d	$t2, $a6, 3
	b	.LBB17_33
.LBB17_111:                             #   in Loop: Header=BB17_34 Depth=2
	addi.d	$a6, $a7, 2
	b	.LBB17_32
.LBB17_112:                             #   in Loop: Header=BB17_34 Depth=2
	move	$t2, $a1
	bnez	$s5, .LBB17_29
	b	.LBB17_33
	.p2align	4, , 16
.LBB17_113:                             # %._crit_edge487
                                        #   in Loop: Header=BB17_26 Depth=1
	beqz	$s4, .LBB17_118
# %bb.114:                              #   in Loop: Header=BB17_26 Depth=1
	ld.w	$a0, $sp, 868
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s0, $a0
	ld.w	$a1, $sp, 864
	alsl.d	$a1, $a1, $a0, 1
	addi.d	$a0, $sp, 904
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	blez	$s6, .LBB17_122
# %bb.115:                              # %.lr.ph490.preheader
                                        #   in Loop: Header=BB17_26 Depth=1
	move	$s1, $s8
	move	$s8, $s6
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 11
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1360
	add.d	$s2, $a0, $a1
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	move	$s6, $s7
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB17_116:                             # %.lr.ph490
                                        #   Parent Loop BB17_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, 0
	add.d	$a0, $a0, $s2
	addi.d	$a1, $sp, 904
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	addi.d	$s2, $s2, 32
	bnez	$s4, .LBB17_116
# %bb.117:                              # %.loopexit453.thread750
                                        #   in Loop: Header=BB17_26 Depth=1
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 336                   # 8-byte Folded Reload
	move	$s7, $s6
	move	$s6, $s8
	move	$s8, $s1
	addi.d	$s1, $sp, 872
	vld	$vr8, $sp, 320                  # 16-byte Folded Reload
	addi.d	$t8, $sp, 440
	ori	$t2, $zero, 8
	beqz	$a0, .LBB17_25
	b	.LBB17_120
	.p2align	4, , 16
.LBB17_118:                             # %.loopexit453
                                        #   in Loop: Header=BB17_26 Depth=1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ori	$t2, $zero, 8
	beqz	$a0, .LBB17_25
# %bb.119:                              # %.preheader452
                                        #   in Loop: Header=BB17_26 Depth=1
	blez	$s6, .LBB17_123
.LBB17_120:                             # %.lr.ph492.preheader
                                        #   in Loop: Header=BB17_26 Depth=1
	ori	$a0, $zero, 2
	bgeu	$s6, $a0, .LBB17_124
# %bb.121:                              #   in Loop: Header=BB17_26 Depth=1
	move	$a2, $zero
	ld.d	$a7, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 264                   # 8-byte Folded Reload
	b	.LBB17_127
	.p2align	4, , 16
.LBB17_122:                             # %.loopexit453.thread
                                        #   in Loop: Header=BB17_26 Depth=1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 336                   # 8-byte Folded Reload
	vld	$vr8, $sp, 320                  # 16-byte Folded Reload
	addi.d	$t8, $sp, 440
	ori	$t2, $zero, 8
	beqz	$a0, .LBB17_25
.LBB17_123:                             # %.preheader451
                                        #   in Loop: Header=BB17_26 Depth=1
	ld.d	$a7, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 264                   # 8-byte Folded Reload
	beqz	$a0, .LBB17_130
	b	.LBB17_139
.LBB17_124:                             # %vector.body832.preheader
                                        #   in Loop: Header=BB17_26 Depth=1
	addi.d	$a0, $sp, 508
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	addi.d	$a2, $sp, 874
	ld.d	$a7, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 264                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB17_125:                             # %vector.body832
                                        #   Parent Loop BB17_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a0, -24
	ld.w	$a4, $a0, 0
	slli.d	$a3, $a3, 3
	slli.d	$a4, $a4, 3
	ld.w	$a5, $a0, -28
	ld.w	$a6, $a0, -4
	ldx.d	$a3, $s0, $a3
	ldx.d	$a4, $s0, $a4
	slli.d	$a5, $a5, 1
	slli.d	$a6, $a6, 1
	ldx.h	$a3, $a3, $a5
	ldx.h	$a4, $a4, $a6
	st.h	$a3, $a2, -2
	st.h	$a4, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -2
	addi.d	$a0, $a0, 48
	bnez	$a1, .LBB17_125
# %bb.126:                              # %middle.block835
                                        #   in Loop: Header=BB17_26 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $a0
	beq	$a0, $a7, .LBB17_129
.LBB17_127:                             # %.lr.ph492.preheader841
                                        #   in Loop: Header=BB17_26 Depth=1
	alsl.d	$a0, $a2, $s1, 1
	sub.d	$a1, $a7, $a2
	slli.d	$a3, $a2, 4
	alsl.d	$a2, $a2, $a3, 3
	addi.d	$a3, $sp, 484
	add.d	$a2, $a3, $a2
	.p2align	4, , 16
.LBB17_128:                             # %.lr.ph492
                                        #   Parent Loop BB17_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	slli.d	$a3, $a3, 3
	ld.w	$a4, $a2, -4
	ldx.d	$a3, $s0, $a3
	slli.d	$a4, $a4, 1
	ldx.h	$a3, $a3, $a4
	st.h	$a3, $a0, 0
	addi.d	$a0, $a0, 2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 24
	bnez	$a1, .LBB17_128
.LBB17_129:                             # %.preheader451.thread
                                        #   in Loop: Header=BB17_26 Depth=1
	blez	$s2, .LBB17_139
.LBB17_130:                             # %.preheader449.us.preheader
                                        #   in Loop: Header=BB17_26 Depth=1
	ld.d	$a1, $s7, 0
	move	$a0, $zero
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 11
	add.d	$a2, $a1, $a2
	lu12i.w	$a3, 2
	ori	$a1, $a3, 848
	add.d	$a1, $a2, $a1
	ori	$a3, $a3, 1072
	add.d	$a2, $a2, $a3
	b	.LBB17_132
	.p2align	4, , 16
.LBB17_131:                             # %._crit_edge495.us
                                        #   in Loop: Header=BB17_132 Depth=2
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	beq	$a0, $ra, .LBB17_139
.LBB17_132:                             # %.preheader449.us
                                        #   Parent Loop BB17_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_135 Depth 3
                                        #       Child Loop BB17_138 Depth 3
	bgeu	$s6, $t2, .LBB17_134
# %bb.133:                              #   in Loop: Header=BB17_132 Depth=2
	move	$a5, $zero
	b	.LBB17_137
	.p2align	4, , 16
.LBB17_134:                             # %vector.body820.preheader
                                        #   in Loop: Header=BB17_132 Depth=2
	addi.d	$a3, $sp, 872
	move	$a4, $a2
	move	$a5, $t0
	.p2align	4, , 16
.LBB17_135:                             # %vector.body820
                                        #   Parent Loop BB17_26 Depth=1
                                        #     Parent Loop BB17_132 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a3, 0
	vstelm.h	$vr0, $a4, -224, 0
	vstelm.h	$vr0, $a4, -192, 1
	vstelm.h	$vr0, $a4, -160, 2
	vstelm.h	$vr0, $a4, -128, 3
	vstelm.h	$vr0, $a4, -96, 4
	vstelm.h	$vr0, $a4, -64, 5
	vstelm.h	$vr0, $a4, -32, 6
	vstelm.h	$vr0, $a4, 0, 7
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 256
	addi.d	$a3, $a3, 16
	bnez	$a5, .LBB17_135
# %bb.136:                              # %middle.block824
                                        #   in Loop: Header=BB17_132 Depth=2
	move	$a5, $t0
	beq	$t0, $a7, .LBB17_131
.LBB17_137:                             # %scalar.ph815.preheader
                                        #   in Loop: Header=BB17_132 Depth=2
	alsl.d	$a3, $a5, $s1, 1
	slli.d	$a4, $a5, 5
	add.d	$a4, $a1, $a4
	sub.d	$a5, $a7, $a5
	.p2align	4, , 16
.LBB17_138:                             # %scalar.ph815
                                        #   Parent Loop BB17_26 Depth=1
                                        #     Parent Loop BB17_132 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a6, $a3, 0
	st.h	$a6, $a4, 0
	addi.d	$a3, $a3, 2
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB17_138
	b	.LBB17_131
	.p2align	4, , 16
.LBB17_139:                             # %._crit_edge497
                                        #   in Loop: Header=BB17_26 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	beqz	$a0, .LBB17_25
# %bb.140:                              #   in Loop: Header=BB17_26 Depth=1
	ld.w	$a0, $sp, 460
	slli.d	$a0, $a0, 3
	ld.w	$a1, $sp, 456
	ldx.d	$a2, $s0, $a0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.hu	$a0, $a0, -2
	slli.d	$a1, $a1, 1
	ldx.hu	$a3, $a2, $a1
	sub.d	$a1, $a0, $a3
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $a2
	ori	$a4, $zero, 2
	blt	$a2, $a4, .LBB17_148
# %bb.141:                              # %.lr.ph501.preheader
                                        #   in Loop: Header=BB17_26 Depth=1
	ori	$a4, $zero, 9
	bgeu	$a2, $a4, .LBB17_143
# %bb.142:                              #   in Loop: Header=BB17_26 Depth=1
	move	$a6, $zero
	b	.LBB17_146
.LBB17_143:                             # %vector.ph793
                                        #   in Loop: Header=BB17_26 Depth=1
	pcalau12i	$a2, %pc_hi20(.LCPI17_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI17_0)
	pcalau12i	$a2, %pc_hi20(.LCPI17_1)
	vld	$vr2, $a2, %pc_lo12(.LCPI17_1)
	vld	$vr3, $sp, 112                  # 16-byte Folded Reload
	vori.b	$vr1, $vr3, 0
	vinsgr2vr.w	$vr1, $a1, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB17_144:                             # %vector.body796
                                        #   Parent Loop BB17_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a1, -8
	ld.d	$a6, $a1, 0
	ld.d	$a7, $a2, 8
	vinsgr2vr.d	$vr4, $a5, 0
	vinsgr2vr.d	$vr5, $a6, 0
	vinsgr2vr.d	$vr6, $a7, 0
	ld.d	$a5, $a2, 0
	vsllwil.wu.hu	$vr4, $vr4, 0
	vsllwil.wu.hu	$vr5, $vr5, 0
	vshuf4i.h	$vr6, $vr6, 27
	vinsgr2vr.d	$vr7, $a5, 0
	vshuf4i.h	$vr7, $vr7, 27
	vsllwil.wu.hu	$vr6, $vr6, 0
	vsllwil.wu.hu	$vr7, $vr7, 0
	vsub.w	$vr4, $vr4, $vr6
	vsub.w	$vr5, $vr5, $vr7
	vpickev.w	$vr6, $vr0, $vr2
	vaddi.wu	$vr7, $vr6, 1
	vaddi.wu	$vr6, $vr6, 5
	vmadd.w	$vr1, $vr4, $vr7
	vmadd.w	$vr3, $vr5, $vr6
	vaddi.du	$vr2, $vr2, 8
	vaddi.du	$vr0, $vr0, 8
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 16
	bnez	$a4, .LBB17_144
# %bb.145:                              # %middle.block810
                                        #   in Loop: Header=BB17_26 Depth=1
	vadd.w	$vr0, $vr3, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a1, $vr0, 0
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	move	$a6, $a4
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	beq	$a4, $a2, .LBB17_148
.LBB17_146:                             # %.lr.ph501.preheader840
                                        #   in Loop: Header=BB17_26 Depth=1
	slli.d	$a4, $a6, 1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a2, $a6, $a2, 1
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a4, $a5, $a4
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a6
	addi.d	$a6, $a6, 1
	.p2align	4, , 16
.LBB17_147:                             # %.lr.ph501
                                        #   Parent Loop BB17_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a7, $a2, 0
	ld.hu	$t0, $a4, 0
	sub.d	$a7, $a7, $t0
	mul.d	$a7, $a7, $a6
	add.d	$a1, $a7, $a1
	addi.d	$a2, $a2, 2
	addi.d	$a4, $a4, -2
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 1
	bnez	$a5, .LBB17_147
.LBB17_148:                             # %._crit_edge502
                                        #   in Loop: Header=BB17_26 Depth=1
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.hu	$a2, $a2, -2
	sub.d	$a3, $a2, $a3
	mul.d	$a3, $a3, $s8
	ori	$a4, $zero, 2
	blt	$s8, $a4, .LBB17_151
# %bb.149:                              # %.lr.ph507.preheader
                                        #   in Loop: Header=BB17_26 Depth=1
	ori	$a4, $zero, 9
	bgeu	$s8, $a4, .LBB17_153
# %bb.150:                              #   in Loop: Header=BB17_26 Depth=1
	move	$a7, $zero
	b	.LBB17_156
.LBB17_151:                             # %._crit_edge508
                                        #   in Loop: Header=BB17_26 Depth=1
	blez	$s6, .LBB17_25
# %bb.152:                              #   in Loop: Header=BB17_26 Depth=1
	alsl.d	$a3, $a3, $a3, 2
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 6
	bgtz	$s2, .LBB17_159
	b	.LBB17_25
.LBB17_153:                             # %vector.ph775
                                        #   in Loop: Header=BB17_26 Depth=1
	pcalau12i	$a4, %pc_hi20(.LCPI17_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI17_0)
	pcalau12i	$a4, %pc_hi20(.LCPI17_1)
	vld	$vr2, $a4, %pc_lo12(.LCPI17_1)
	vld	$vr3, $sp, 112                  # 16-byte Folded Reload
	vori.b	$vr1, $vr3, 0
	vinsgr2vr.w	$vr1, $a3, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB17_154:                             # %vector.body778
                                        #   Parent Loop BB17_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a3, -8
	ld.d	$a7, $a3, 0
	ld.d	$t0, $a4, 8
	vinsgr2vr.d	$vr4, $a6, 0
	vinsgr2vr.d	$vr5, $a7, 0
	vinsgr2vr.d	$vr6, $t0, 0
	ld.d	$a6, $a4, 0
	vsllwil.wu.hu	$vr4, $vr4, 0
	vsllwil.wu.hu	$vr5, $vr5, 0
	vshuf4i.h	$vr6, $vr6, 27
	vinsgr2vr.d	$vr7, $a6, 0
	vshuf4i.h	$vr7, $vr7, 27
	vsllwil.wu.hu	$vr6, $vr6, 0
	vsllwil.wu.hu	$vr7, $vr7, 0
	vsub.w	$vr4, $vr4, $vr6
	vsub.w	$vr5, $vr5, $vr7
	vpickev.w	$vr6, $vr0, $vr2
	vaddi.wu	$vr7, $vr6, 1
	vaddi.wu	$vr6, $vr6, 5
	vmadd.w	$vr1, $vr4, $vr7
	vmadd.w	$vr3, $vr5, $vr6
	vaddi.du	$vr2, $vr2, 8
	vaddi.du	$vr0, $vr0, 8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 16
	bnez	$a5, .LBB17_154
# %bb.155:                              # %middle.block788
                                        #   in Loop: Header=BB17_26 Depth=1
	vadd.w	$vr0, $vr3, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a3, $vr0, 0
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	move	$a7, $a5
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	beq	$a5, $a4, .LBB17_158
.LBB17_156:                             # %.lr.ph507.preheader839
                                        #   in Loop: Header=BB17_26 Depth=1
	slli.d	$a5, $a7, 1
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a4, $a7, $a4, 1
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	sub.d	$a5, $a6, $a5
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	sub.d	$a6, $a6, $a7
	addi.d	$a7, $a7, 1
	.p2align	4, , 16
.LBB17_157:                             # %.lr.ph507
                                        #   Parent Loop BB17_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t0, $a4, 0
	ld.hu	$t1, $a5, 0
	sub.d	$t0, $t0, $t1
	mul.d	$t0, $t0, $a7
	add.d	$a3, $t0, $a3
	addi.d	$a4, $a4, 2
	addi.d	$a5, $a5, -2
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 1
	bnez	$a6, .LBB17_157
.LBB17_158:                             # %._crit_edge508.thread
                                        #   in Loop: Header=BB17_26 Depth=1
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	mul.d	$a3, $a3, $a4
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a4
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	sra.w	$a3, $a3, $a4
	blez	$s2, .LBB17_25
.LBB17_159:                             # %.preheader448.lr.ph.split.us
                                        #   in Loop: Header=BB17_26 Depth=1
	move	$a4, $zero
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $a5
	ld.d	$a5, $sp, 368                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a5
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	sra.w	$a1, $a1, $a5
	ld.d	$a5, $s7, 0
	add.d	$a0, $a2, $a0
	slli.d	$a6, $a0, 4
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 11
	add.d	$a0, $a5, $a0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1872
	add.d	$a0, $a0, $a2
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3236
	ldx.w	$a2, $a5, $a2
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a5, $a5, $a3
	add.d	$a7, $a5, $a6
	addi.d	$a5, $a6, 16
	vreplgr2vr.w	$vr0, $a1
	vreplgr2vr.w	$vr1, $a2
	addi.d	$a6, $a7, 16
	b	.LBB17_161
	.p2align	4, , 16
.LBB17_160:                             # %._crit_edge512.us
                                        #   in Loop: Header=BB17_161 Depth=2
	addi.d	$a4, $a4, 1
	addi.d	$a0, $a0, 32
	add.d	$a6, $a6, $a3
	ori	$t2, $zero, 8
	beq	$a4, $s6, .LBB17_25
.LBB17_161:                             # %.preheader448.us
                                        #   Parent Loop BB17_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_164 Depth 3
                                        #       Child Loop BB17_167 Depth 3
	bgeu	$s2, $t2, .LBB17_163
# %bb.162:                              #   in Loop: Header=BB17_161 Depth=2
	move	$t1, $zero
	b	.LBB17_166
	.p2align	4, , 16
.LBB17_163:                             # %vector.ph
                                        #   in Loop: Header=BB17_161 Depth=2
	sub.d	$a7, $a4, $s8
	addi.d	$a7, $a7, 1
	pcalau12i	$t0, %pc_hi20(.LCPI17_2)
	vld	$vr2, $t0, %pc_lo12(.LCPI17_2)
	pcalau12i	$t0, %pc_hi20(.LCPI17_3)
	vld	$vr3, $t0, %pc_lo12(.LCPI17_3)
	mul.d	$a7, $a7, $a3
	add.d	$a7, $a5, $a7
	vreplgr2vr.w	$vr4, $a7
	move	$a7, $a0
	ld.d	$t0, $sp, 416                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB17_164:                             # %vector.body
                                        #   Parent Loop BB17_26 Depth=1
                                        #     Parent Loop BB17_161 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vsub.w	$vr5, $vr2, $vr8
	vsub.w	$vr6, $vr3, $vr8
	vaddi.wu	$vr6, $vr6, 1
	vaddi.wu	$vr5, $vr5, 1
	vori.b	$vr7, $vr4, 0
	vmadd.w	$vr7, $vr5, $vr0
	vori.b	$vr5, $vr4, 0
	vmadd.w	$vr5, $vr6, $vr0
	vsrai.w	$vr5, $vr5, 5
	vsrai.w	$vr6, $vr7, 5
	vmaxi.w	$vr6, $vr6, 0
	vmaxi.w	$vr5, $vr5, 0
	vmin.w	$vr5, $vr5, $vr1
	vmin.w	$vr6, $vr6, $vr1
	vpickev.h	$vr5, $vr6, $vr5
	vst	$vr5, $a7, 0
	vaddi.wu	$vr3, $vr3, 8
	vaddi.wu	$vr2, $vr2, 8
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 16
	bnez	$t0, .LBB17_164
# %bb.165:                              # %middle.block
                                        #   in Loop: Header=BB17_161 Depth=2
	ld.d	$a7, $sp, 416                   # 8-byte Folded Reload
	move	$t1, $a7
	beq	$a7, $ra, .LBB17_160
.LBB17_166:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB17_161 Depth=2
	ld.d	$a7, $sp, 400                   # 8-byte Folded Reload
	add.d	$a7, $a7, $t1
	mul.d	$a7, $a1, $a7
	add.w	$a7, $a6, $a7
	slli.d	$t0, $t1, 1
	sub.d	$t1, $ra, $t1
	.p2align	4, , 16
.LBB17_167:                             # %scalar.ph
                                        #   Parent Loop BB17_26 Depth=1
                                        #     Parent Loop BB17_161 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	srai.d	$t2, $a7, 5
	srai.d	$t3, $a7, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a2
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a2, $t3
	or	$t2, $t2, $t3
	stx.h	$t2, $a0, $t0
	add.w	$a7, $a7, $a1
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 2
	bnez	$t1, .LBB17_167
	b	.LBB17_160
.LBB17_168:
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $s2, 0
	ldptr.w	$a0, $a0, 4168
	bnez	$a0, .LBB17_196
# %bb.169:                              # %.preheader435
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	blez	$s6, .LBB17_172
# %bb.170:                              # %.lr.ph517.preheader
	move	$s0, $zero
	addi.d	$s1, $sp, 440
	move	$fp, $s6
	.p2align	4, , 16
.LBB17_171:                             # %.lr.ph517
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $s5, %pc_lo12(getNeighbour)
	ori	$a3, $zero, 1
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $s0
	move	$a4, $s1
	jirl	$ra, $a5, 0
	addi.w	$s0, $s0, 1
	addi.d	$fp, $fp, -1
	addi.d	$s1, $s1, 24
	bnez	$fp, .LBB17_171
.LBB17_172:                             # %.preheader434
	move	$a3, $zero
	move	$a4, $zero
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	slti	$a0, $a0, 1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	and	$a1, $a2, $a1
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	and	$a1, $a1, $a2
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	lu12i.w	$a0, 524287
	ori	$a5, $a0, 4095
	lu12i.w	$a0, 2
	ori	$a2, $a0, 2384
	ori	$a6, $zero, 2
	pcalau12i	$a0, %pc_hi20(imgUV_org)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	ori	$a7, $zero, 4
	st.d	$s7, $sp, 424                   # 8-byte Folded Spill
	b	.LBB17_176
.LBB17_173:                             #   in Loop: Header=BB17_176 Depth=1
	move	$s3, $zero
.LBB17_174:                             # %.split537.us
                                        #   in Loop: Header=BB17_176 Depth=1
	ld.d	$a5, $sp, 352                   # 8-byte Folded Reload
	slt	$a0, $s3, $a5
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	maskeqz	$a2, $a3, $a0
	or	$a4, $a2, $a1
	masknez	$a1, $a5, $a0
	maskeqz	$a0, $s3, $a0
	or	$a5, $a0, $a1
	ld.d	$s7, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	ori	$a6, $zero, 2
	ori	$a7, $zero, 4
.LBB17_175:                             #   in Loop: Header=BB17_176 Depth=1
	addi.d	$a3, $a3, 1
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 512
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	addi.d	$a2, $a2, 512
	beq	$a3, $a7, .LBB17_195
.LBB17_176:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_188 Depth 2
                                        #       Child Loop BB17_189 Depth 3
                                        #     Child Loop BB17_192 Depth 2
                                        #       Child Loop BB17_193 Depth 3
	ld.d	$a0, $s7, 0
	ld.w	$a1, $a0, 20
	ld.d	$a0, $s2, 0
	bne	$a1, $a6, .LBB17_180
# %bb.177:                              #   in Loop: Header=BB17_176 Depth=1
	ldptr.w	$a1, $a0, 4048
	beqz	$a1, .LBB17_180
# %bb.178:                              #   in Loop: Header=BB17_176 Depth=1
	bne	$a3, $a6, .LBB17_182
# %bb.179:                              #   in Loop: Header=BB17_176 Depth=1
	beqz	$s4, .LBB17_175
	b	.LBB17_182
	.p2align	4, , 16
.LBB17_180:                             #   in Loop: Header=BB17_176 Depth=1
	ldptr.w	$a0, $a0, 4072
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	sltu	$a1, $zero, $a3
	and	$a0, $a1, $a0
	bnez	$a0, .LBB17_175
# %bb.181:                              #   in Loop: Header=BB17_176 Depth=1
	addi.d	$a0, $a3, -2
	sltu	$a0, $zero, $a0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	or	$a0, $a0, $a1
	beqz	$a0, .LBB17_175
.LBB17_182:                             #   in Loop: Header=BB17_176 Depth=1
	ori	$a0, $zero, 3
	beq	$a3, $a0, .LBB17_185
# %bb.183:                              #   in Loop: Header=BB17_176 Depth=1
	ori	$a0, $zero, 1
	bne	$a3, $a0, .LBB17_186
# %bb.184:                              #   in Loop: Header=BB17_176 Depth=1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	beqz	$a0, .LBB17_175
	b	.LBB17_186
.LBB17_185:                             #   in Loop: Header=BB17_176 Depth=1
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	beqz	$a0, .LBB17_175
.LBB17_186:                             #   in Loop: Header=BB17_176 Depth=1
	st.d	$a5, $sp, 352                   # 8-byte Folded Spill
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	st.d	$a4, $sp, 368                   # 8-byte Folded Spill
	st.d	$a3, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	bnez	$a0, .LBB17_173
# %bb.187:                              # %.preheader433.lr.ph.us.us
                                        #   in Loop: Header=BB17_176 Depth=1
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(imgUV_org)
	ld.d	$s8, $a0, 0
	move	$a3, $zero
	move	$s3, $zero
	move	$a1, $zero
	ld.d	$s7, $sp, 376                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB17_188:                             # %.preheader433.us.us.us
                                        #   Parent Loop BB17_176 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_189 Depth 3
	st.d	$a1, $sp, 400                   # 8-byte Folded Spill
	move	$s1, $zero
	move	$s4, $zero
	ori	$a1, $zero, 24
	mul.d	$a0, $a3, $a1
	addi.d	$a2, $sp, 440
	add.d	$s6, $a2, $a0
	addi.d	$a0, $a3, 1
	mul.d	$a0, $a0, $a1
	add.d	$s2, $a2, $a0
	addi.d	$a0, $a3, 2
	mul.d	$a0, $a0, $a1
	add.d	$s5, $a2, $a0
	st.d	$a3, $sp, 416                   # 8-byte Folded Spill
	addi.d	$a0, $a3, 3
	mul.d	$a0, $a0, $a1
	add.d	$s0, $a2, $a0
	.p2align	4, , 16
.LBB17_189:                             # %.preheader432.us.us.us
                                        #   Parent Loop BB17_176 Depth=1
                                        #     Parent Loop BB17_188 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s6, 20
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s8, $a0
	ld.w	$a1, $s6, 16
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	alsl.d	$a0, $a1, $a0, 1
	ldx.d	$a1, $a0, $s1
	add.d	$a0, $a2, $s7
	ldx.d	$a2, $a0, $s1
	add.d	$a0, $a0, $s1
	vinsgr2vr.d	$vr0, $a1, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a2, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsub.w	$vr0, $vr0, $vr1
	pcalau12i	$a1, %pc_hi20(diff)
	addi.d	$fp, $a1, %pc_lo12(diff)
	ld.w	$a1, $s2, 20
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s8, $a1
	ld.w	$a2, $s2, 16
	alsl.d	$a1, $a2, $a1, 1
	ldx.d	$a1, $a1, $s1
	ld.w	$a2, $s5, 20
	vst	$vr0, $fp, 0
	vinsgr2vr.d	$vr0, $a1, 0
	ld.d	$a1, $a0, 32
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $s8, $a2
	ld.w	$a3, $s5, 16
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	alsl.d	$a1, $a3, $a2, 1
	ldx.d	$a1, $a1, $s1
	vsub.w	$vr0, $vr0, $vr1
	ld.w	$a2, $s0, 20
	vst	$vr0, $fp, 16
	vinsgr2vr.d	$vr0, $a1, 0
	ld.d	$a1, $a0, 64
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $s8, $a2
	ld.w	$a3, $s0, 16
	vinsgr2vr.d	$vr1, $a1, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	alsl.d	$a1, $a3, $a2, 1
	ldx.d	$a1, $a1, $s1
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a0, $a0, 96
	vst	$vr0, $fp, 32
	vinsgr2vr.d	$vr0, $a1, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a0, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $fp, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(distortion4x4)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
	addi.w	$s4, $s4, 4
	addi.d	$s1, $s1, 8
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	blt	$s4, $a0, .LBB17_189
# %bb.190:                              # %._crit_edge524.us.us.us
                                        #   in Loop: Header=BB17_188 Depth=2
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 4
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 4
	addi.d	$s7, $s7, 128
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB17_188
# %bb.191:                              # %._crit_edge528.split.us.us.us
                                        #   in Loop: Header=BB17_176 Depth=1
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(imgUV_org)
	ld.d	$s8, $a0, 8
	move	$a3, $zero
	move	$a1, $zero
	ld.d	$s5, $sp, 392                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB17_192:                             # %.preheader433.us.us.us.1
                                        #   Parent Loop BB17_176 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_193 Depth 3
	st.d	$a1, $sp, 400                   # 8-byte Folded Spill
	move	$s1, $zero
	move	$s4, $zero
	ori	$a1, $zero, 24
	mul.d	$a0, $a3, $a1
	addi.d	$a2, $sp, 440
	add.d	$s6, $a2, $a0
	addi.d	$a0, $a3, 1
	mul.d	$a0, $a0, $a1
	add.d	$s2, $a2, $a0
	addi.d	$a0, $a3, 2
	mul.d	$a0, $a0, $a1
	add.d	$s0, $a2, $a0
	st.d	$a3, $sp, 416                   # 8-byte Folded Spill
	addi.d	$a0, $a3, 3
	mul.d	$a0, $a0, $a1
	add.d	$s7, $a2, $a0
	.p2align	4, , 16
.LBB17_193:                             # %.preheader432.us.us.us.1
                                        #   Parent Loop BB17_176 Depth=1
                                        #     Parent Loop BB17_192 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s6, 20
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s8, $a0
	ld.w	$a1, $s6, 16
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	alsl.d	$a0, $a1, $a0, 1
	ldx.d	$a0, $a0, $s1
	add.d	$a1, $a2, $s5
	ld.w	$a2, $s2, 20
	add.d	$a3, $a1, $s1
	vinsgr2vr.d	$vr0, $a0, 0
	ldx.d	$a0, $a1, $s1
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s8, $a1
	ld.w	$a2, $s2, 16
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a0, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	alsl.d	$a0, $a2, $a1, 1
	ldx.d	$a0, $a0, $s1
	vsub.w	$vr0, $vr0, $vr1
	ld.w	$a1, $s0, 20
	vst	$vr0, $fp, 0
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $a3, 32
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s8, $a1
	ld.w	$a2, $s0, 16
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a0, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	alsl.d	$a0, $a2, $a1, 1
	ldx.d	$a0, $a0, $s1
	vsub.w	$vr0, $vr0, $vr1
	ld.w	$a1, $s7, 20
	vst	$vr0, $fp, 16
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $a3, 64
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s8, $a1
	ld.w	$a2, $s7, 16
	vinsgr2vr.d	$vr1, $a0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	alsl.d	$a0, $a2, $a1, 1
	ldx.d	$a0, $a0, $s1
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a1, $a3, 96
	vst	$vr0, $fp, 32
	vinsgr2vr.d	$vr0, $a0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $fp, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(distortion4x4)
	jirl	$ra, $ra, 0
	add.w	$s3, $a0, $s3
	addi.w	$s4, $s4, 4
	addi.d	$s1, $s1, 8
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	blt	$s4, $a0, .LBB17_193
# %bb.194:                              # %._crit_edge524.us.us.us.1
                                        #   in Loop: Header=BB17_192 Depth=2
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 4
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 4
	addi.d	$s5, $s5, 128
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB17_192
	b	.LBB17_174
.LBB17_195:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$a4, $a0, 416
.LBB17_196:
	ld.d	$s8, $sp, 936                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 944                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 952                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 960                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 968                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 976                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 984                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 992                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 1000                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1008                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1016                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1024
	ret
.LBB17_197:
	move	$a0, $zero
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	bnez	$a1, .LBB17_19
	b	.LBB17_20
.Lfunc_end17:
	.size	IntraChromaPrediction, .Lfunc_end17-IntraChromaPrediction
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI17_0:
	.word	.LBB17_36-.LJTI17_0
	.word	.LBB17_42-.LJTI17_0
	.word	.LBB17_38-.LJTI17_0
	.word	.LBB17_40-.LJTI17_0
.LJTI17_1:
	.word	.LBB17_58-.LJTI17_1
	.word	.LBB17_64-.LJTI17_1
	.word	.LBB17_60-.LJTI17_1
	.word	.LBB17_62-.LJTI17_1
.LJTI17_2:
	.word	.LBB17_79-.LJTI17_2
	.word	.LBB17_85-.LJTI17_2
	.word	.LBB17_81-.LJTI17_2
	.word	.LBB17_83-.LJTI17_2
.LJTI17_3:
	.word	.LBB17_100-.LJTI17_3
	.word	.LBB17_104-.LJTI17_3
	.word	.LBB17_28-.LJTI17_3
	.word	.LBB17_102-.LJTI17_3
                                        # -- End function
	.text
	.globl	IntraChromaRDDecision           # -- Begin function IntraChromaRDDecision
	.p2align	5
	.type	IntraChromaRDDecision,@function
IntraChromaRDDecision:                  # @IntraChromaRDDecision
# %bb.0:
	addi.d	$sp, $sp, -672
	st.d	$ra, $sp, 664                   # 8-byte Folded Spill
	st.d	$fp, $sp, 656                   # 8-byte Folded Spill
	st.d	$s0, $sp, 648                   # 8-byte Folded Spill
	st.d	$s1, $sp, 640                   # 8-byte Folded Spill
	st.d	$s2, $sp, 632                   # 8-byte Folded Spill
	st.d	$s3, $sp, 624                   # 8-byte Folded Spill
	st.d	$s4, $sp, 616                   # 8-byte Folded Spill
	st.d	$s5, $sp, 608                   # 8-byte Folded Spill
	st.d	$s6, $sp, 600                   # 8-byte Folded Spill
	st.d	$s7, $sp, 592                   # 8-byte Folded Spill
	st.d	$s8, $sp, 584                   # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ldptr.d	$a1, $a0, 14224
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.w	$s5, $a0, 12
	ldptr.w	$s6, $a0, 15548
	ldptr.w	$a0, $a0, 15544
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(getNeighbour)
	bltz	$s6, .LBB18_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $s6, 1
	bstrpick.d	$fp, $a0, 31, 0
	addi.w	$s1, $zero, -1
	addi.d	$s2, $sp, 152
	move	$s3, $s1
	.p2align	4, , 16
.LBB18_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $s0, %pc_lo12(getNeighbour)
	ori	$a3, $zero, 1
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s3
	move	$a4, $s2
	jirl	$ra, $a5, 0
	addi.w	$s3, $s3, 1
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 24
	bnez	$fp, .LBB18_2
.LBB18_3:                               # %._crit_edge
	ld.d	$a5, $s0, %pc_lo12(getNeighbour)
	addi.w	$a2, $zero, -1
	ori	$a3, $zero, 1
	addi.d	$a4, $sp, 560
	move	$a0, $s5
	move	$a1, $zero
	jirl	$ra, $a5, 0
	ld.w	$s7, $sp, 560
	ld.w	$s8, $sp, 152
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 272
	beqz	$a0, .LBB18_6
# %bb.4:
	beqz	$s7, .LBB18_7
# %bb.5:
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a6, 0
	ld.w	$a1, $sp, 564
	ldptr.d	$a0, $a0, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$s7, $a0, $a1
	srai.d	$a0, $s6, 1
	ori	$fp, $zero, 1
	ori	$s3, $zero, 1
	bgtz	$a0, .LBB18_8
	b	.LBB18_13
.LBB18_6:
	ld.w	$fp, $sp, 176
	move	$s3, $fp
	bgtz	$s6, .LBB18_21
	b	.LBB18_23
.LBB18_7:
	move	$s7, $zero
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	srai.d	$a0, $s6, 1
	ori	$fp, $zero, 1
	ori	$s3, $zero, 1
	blez	$a0, .LBB18_13
.LBB18_8:                               # %.lr.ph129
	ld.d	$a1, $a6, 0
	ori	$s3, $zero, 1
	addi.d	$a2, $sp, 180
	move	$a3, $a0
	b	.LBB18_11
	.p2align	4, , 16
.LBB18_9:                               #   in Loop: Header=BB18_11 Depth=1
	ld.w	$a4, $a2, 0
	ldptr.d	$a5, $a1, 14240
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a5, $a4
.LBB18_10:                              #   in Loop: Header=BB18_11 Depth=1
	and	$s3, $a4, $s3
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 24
	beqz	$a3, .LBB18_13
.LBB18_11:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, -4
	bnez	$a4, .LBB18_9
# %bb.12:                               #   in Loop: Header=BB18_11 Depth=1
	move	$a4, $zero
	b	.LBB18_10
.LBB18_13:                              # %.preheader123
	blez	$s6, .LBB18_18
# %bb.14:                               # %.lr.ph133
	ld.d	$a1, $a6, 0
	bstrpick.d	$a2, $a0, 31, 0
	slli.d	$a3, $a2, 4
	alsl.d	$a2, $a2, $a3, 3
	addi.d	$a3, $sp, 152
	add.d	$a2, $a2, $a3
	addi.d	$a2, $a2, 28
	ori	$fp, $zero, 1
	b	.LBB18_16
	.p2align	4, , 16
.LBB18_15:                              #   in Loop: Header=BB18_16 Depth=1
	ld.w	$a3, $a2, 0
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	and	$fp, $a3, $fp
	addi.w	$a0, $a0, 1
	addi.d	$a2, $a2, 24
	bge	$a0, $s6, .LBB18_18
.LBB18_16:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, -4
	bnez	$a3, .LBB18_15
# %bb.17:                               #   in Loop: Header=BB18_16 Depth=1
	move	$a3, $zero
	and	$fp, $a3, $fp
	addi.w	$a0, $a0, 1
	addi.d	$a2, $a2, 24
	blt	$a0, $s6, .LBB18_16
.LBB18_18:                              # %._crit_edge134
	beqz	$s8, .LBB18_20
# %bb.19:
	ld.d	$a0, $a6, 0
	ld.w	$a1, $sp, 156
	ldptr.d	$a0, $a0, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$s8, $a0, $a1
	bgtz	$s6, .LBB18_21
	b	.LBB18_23
.LBB18_20:
	move	$s8, $zero
	blez	$s6, .LBB18_23
.LBB18_21:                              # %.lr.ph138.preheader
	move	$s1, $zero
	addi.d	$s2, $sp, 152
	move	$s4, $s6
	.p2align	4, , 16
.LBB18_22:                              # %.lr.ph138
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $s0, %pc_lo12(getNeighbour)
	ori	$a3, $zero, 1
	move	$a0, $s5
	move	$a1, $zero
	move	$a2, $s1
	move	$a4, $s2
	jirl	$ra, $a5, 0
	addi.w	$s1, $s1, 1
	addi.d	$s4, $s4, -1
	addi.d	$s2, $s2, 24
	bnez	$s4, .LBB18_22
.LBB18_23:                              # %._crit_edge139
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a5, 0
	ldptr.w	$a1, $a0, 15268
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	beqz	$a1, .LBB18_33
# %bb.24:
	ldptr.w	$a0, $a0, 14464
	beqz	$a0, .LBB18_33
# %bb.25:
	blez	$s6, .LBB18_33
# %bb.26:                               # %.lr.ph141.preheader
	ori	$a0, $zero, 2
	bgeu	$s6, $a0, .LBB18_28
# %bb.27:
	move	$a0, $zero
	b	.LBB18_31
.LBB18_28:                              # %vector.ph
	bstrpick.d	$a0, $s6, 30, 1
	slli.d	$a0, $a0, 1
	addi.d	$a1, $sp, 196
	move	$a2, $a0
	.p2align	4, , 16
.LBB18_29:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, -24
	ld.w	$a4, $a1, 0
	srli.d	$a3, $a3, 1
	srli.d	$a4, $a4, 1
	st.w	$a3, $a1, -24
	st.w	$a4, $a1, 0
	addi.d	$a2, $a2, -2
	addi.d	$a1, $a1, 48
	bnez	$a2, .LBB18_29
# %bb.30:                               # %middle.block
	beq	$a0, $s6, .LBB18_33
.LBB18_31:                              # %.lr.ph141.preheader243
	slli.d	$a1, $a0, 4
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a2, $sp, 152
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 20
	sub.d	$a0, $s6, $a0
	.p2align	4, , 16
.LBB18_32:                              # %.lr.ph141
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	srli.d	$a2, $a2, 1
	st.w	$a2, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 24
	bnez	$a0, .LBB18_32
.LBB18_33:                              # %.loopexit
	move	$a7, $zero
	move	$a4, $zero
	slt	$a0, $zero, $s6
	sltu	$a1, $zero, $s7
	sltu	$a2, $zero, $s3
	sltu	$a3, $zero, $fp
	and	$a2, $a2, $a3
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	and	$a1, $a2, $a1
	sltu	$a2, $zero, $s8
	and	$a1, $a1, $a2
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	slt	$a1, $zero, $a6
	and	$a0, $a0, $a1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 336
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$a1, $zero, 2
	pcalau12i	$a0, %pc_hi20(imgUV_org)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$a2, $zero, 4
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 112                   # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	b	.LBB18_37
.LBB18_34:                              #   in Loop: Header=BB18_37 Depth=1
	move	$s1, $zero
.LBB18_35:                              # %.split165.us
                                        #   in Loop: Header=BB18_37 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, 24
	pcalau12i	$a0, %got_pc_hi20(mvbits)
	ld.d	$a0, $a0, %got_pc_lo12(mvbits)
	ld.d	$a0, $a0, 0
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a1, $a7, 2
	ldx.w	$a0, $a0, $a1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	add.w	$a0, $s1, $a0
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	slt	$a1, $a0, $a6
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	masknez	$a2, $a2, $a1
	maskeqz	$a3, $a7, $a1
	or	$a4, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a6, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ori	$a1, $zero, 2
	ori	$a2, $zero, 4
.LBB18_36:                              #   in Loop: Header=BB18_37 Depth=1
	addi.d	$a7, $a7, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 512
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	beq	$a7, $a2, .LBB18_51
.LBB18_37:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_46 Depth 2
                                        #       Child Loop BB18_47 Depth 3
                                        #         Child Loop BB18_48 Depth 4
	bne	$a7, $a1, .LBB18_39
# %bb.38:                               #   in Loop: Header=BB18_37 Depth=1
	beqz	$s7, .LBB18_36
.LBB18_39:                              #   in Loop: Header=BB18_37 Depth=1
	ori	$a0, $zero, 3
	beq	$a7, $a0, .LBB18_42
# %bb.40:                               #   in Loop: Header=BB18_37 Depth=1
	ori	$a0, $zero, 1
	bne	$a7, $a0, .LBB18_43
# %bb.41:                               #   in Loop: Header=BB18_37 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB18_36
	b	.LBB18_43
.LBB18_42:                              #   in Loop: Header=BB18_37 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB18_36
.LBB18_43:                              #   in Loop: Header=BB18_37 Depth=1
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB18_34
# %bb.44:                               # %.preheader121.lr.ph.us.us.preheader
                                        #   in Loop: Header=BB18_37 Depth=1
	move	$a0, $zero
	move	$s1, $zero
	ori	$a2, $zero, 1
	b	.LBB18_46
	.p2align	4, , 16
.LBB18_45:                              # %._crit_edge152.split.us.us.us
                                        #   in Loop: Header=BB18_46 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	slt	$a0, $a0, $s1
	xori	$a0, $a0, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	and	$a1, $a0, $a1
	ori	$a0, $zero, 1
	move	$a2, $zero
	beqz	$a1, .LBB18_35
.LBB18_46:                              # %.preheader121.lr.ph.us.us
                                        #   Parent Loop BB18_37 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_47 Depth 3
                                        #         Child Loop BB18_48 Depth 4
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(imgUV_org)
	slli.d	$a2, $a0, 3
	ldx.d	$s2, $a1, $a2
	move	$s4, $zero
	move	$a2, $zero
	slli.d	$a0, $a0, 11
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$s6, $a1, $a0
	.p2align	4, , 16
.LBB18_47:                              # %.preheader121.us.us.us
                                        #   Parent Loop BB18_37 Depth=1
                                        #     Parent Loop BB18_46 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB18_48 Depth 4
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	move	$s8, $zero
	move	$fp, $zero
	ori	$a1, $zero, 24
	mul.d	$a0, $s4, $a1
	addi.d	$a2, $sp, 152
	add.d	$s0, $a2, $a0
	addi.d	$a0, $s4, 1
	mul.d	$a0, $a0, $a1
	add.d	$s3, $a2, $a0
	addi.d	$a0, $s4, 2
	mul.d	$a0, $a0, $a1
	add.d	$s5, $a2, $a0
	addi.d	$a0, $s4, 3
	mul.d	$a0, $a0, $a1
	add.d	$s7, $a2, $a0
	.p2align	4, , 16
.LBB18_48:                              # %.preheader120.us.us.us
                                        #   Parent Loop BB18_37 Depth=1
                                        #     Parent Loop BB18_46 Depth=2
                                        #       Parent Loop BB18_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a0, $s0, 20
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s2, $a0
	ld.w	$a1, $s0, 16
	ld.d	$a2, $a5, 0
	alsl.d	$a0, $a1, $a0, 1
	ldx.d	$a0, $a0, $s8
	add.d	$a1, $a2, $s6
	ldx.d	$a2, $a1, $s8
	add.d	$a1, $a1, $s8
	vinsgr2vr.d	$vr0, $a0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a2, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsub.w	$vr0, $vr0, $vr1
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$a0, $a0, %pc_lo12(diff)
	ld.w	$a2, $s3, 20
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $s2, $a2
	ld.w	$a3, $s3, 16
	alsl.d	$a2, $a3, $a2, 1
	ldx.d	$a2, $a2, $s8
	ld.w	$a3, $s5, 20
	vst	$vr0, $a0, 0
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 32
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s2, $a3
	ld.w	$a4, $s5, 16
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a2, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	alsl.d	$a2, $a4, $a3, 1
	ldx.d	$a2, $a2, $s8
	vsub.w	$vr0, $vr0, $vr1
	ld.w	$a3, $s7, 20
	vst	$vr0, $a0, 16
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 64
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s2, $a3
	ld.w	$a4, $s7, 16
	vinsgr2vr.d	$vr1, $a2, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	alsl.d	$a2, $a4, $a3, 1
	ldx.d	$a2, $a2, $s8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a1, $a1, 96
	vst	$vr0, $a0, 32
	vinsgr2vr.d	$vr0, $a2, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vinsgr2vr.d	$vr1, $a1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 48
	pcaddu18i	$ra, %call36(distortion4x4)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	add.w	$s1, $a0, $s1
	addi.w	$fp, $fp, 4
	addi.d	$s8, $s8, 8
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	blt	$fp, $a0, .LBB18_48
# %bb.49:                               # %._crit_edge148.us.us.us
                                        #   in Loop: Header=BB18_47 Depth=3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	blt	$a0, $s1, .LBB18_45
# %bb.50:                               # %._crit_edge148.us.us.us
                                        #   in Loop: Header=BB18_47 Depth=3
	addi.w	$a2, $a2, 4
	addi.d	$s4, $s4, 4
	addi.d	$s6, $s6, 128
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blt	$a2, $a0, .LBB18_47
	b	.LBB18_45
.LBB18_51:
	ori	$a0, $zero, 536
	mul.d	$a0, $s5, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.w	$a4, $a0, 416
	ld.d	$s8, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 648                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 656                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 664                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 672
	ret
.Lfunc_end18:
	.size	IntraChromaRDDecision, .Lfunc_end18-IntraChromaRDDecision
                                        # -- End function
	.globl	ZeroRef                         # -- Begin function ZeroRef
	.p2align	5
	.type	ZeroRef,@function
ZeroRef:                                # @ZeroRef
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	ldptr.d	$a2, $a0, 6488
	ld.w	$a0, $a1, 168
	ld.w	$a5, $a1, 172
	ld.d	$a1, $a2, 0
	addi.w	$a2, $a0, 3
	addi.w	$a3, $a5, 3
.LBB19_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_2 Depth 2
	move	$a4, $a5
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a1, $a5
	move	$a6, $a0
	.p2align	4, , 16
.LBB19_2:                               #   Parent Loop BB19_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a7, $a6
	ldx.bu	$a6, $a5, $a6
	bnez	$a6, .LBB19_6
# %bb.3:                                #   in Loop: Header=BB19_2 Depth=2
	addi.d	$a6, $a7, 1
	blt	$a7, $a2, .LBB19_2
# %bb.4:                                #   in Loop: Header=BB19_1 Depth=1
	addi.d	$a5, $a4, 1
	blt	$a4, $a3, .LBB19_1
# %bb.5:
	ori	$a0, $zero, 1
	ret
.LBB19_6:
	move	$a0, $zero
	ret
.Lfunc_end19:
	.size	ZeroRef, .Lfunc_end19-ZeroRef
                                        # -- End function
	.globl	MBType2Value                    # -- Begin function MBType2Value
	.p2align	5
	.type	MBType2Value,@function
MBType2Value:                           # @MBType2Value
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a1, 0
	ld.w	$a3, $a1, 20
	ld.w	$a2, $a0, 72
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB20_6
# %bb.1:
	beqz	$a2, .LBB20_9
# %bb.2:
	move	$a3, $a0
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 2
	ori	$a5, $zero, 9
	ori	$a0, $zero, 23
	beq	$a4, $a5, .LBB20_21
# %bb.3:
	ld.w	$a4, $a3, 392
	ld.w	$a3, $a3, 404
	addi.d	$a2, $a2, -1
	ori	$a0, $zero, 13
	bltu	$a0, $a2, .LBB20_20
# %bb.4:
	ori	$a0, $zero, 48
	slli.d	$a2, $a2, 2
	pcalau12i	$a5, %pc_hi20(.LJTI20_1)
	addi.d	$a5, $a5, %pc_lo12(.LJTI20_1)
	ldx.w	$a2, $a5, $a2
	add.d	$a2, $a5, $a2
	jr	$a2
.LBB20_5:
	slli.d	$a0, $a4, 2
	pcalau12i	$a1, %pc_hi20(MBType2Value.dir1offset)
	addi.d	$a1, $a1, %pc_lo12(MBType2Value.dir1offset)
	ldx.w	$a0, $a1, $a0
	ret
.LBB20_6:
	addi.d	$a0, $a2, -8
	ori	$a4, $zero, 6
	bltu	$a4, $a0, .LBB20_14
# %bb.7:
	slli.d	$a0, $a0, 2
	pcalau12i	$a4, %pc_hi20(.LJTI20_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI20_0)
	ldx.w	$a0, $a4, $a0
	add.d	$a4, $a4, $a0
	move	$a0, $a2
	jr	$a4
.LBB20_8:
	addi.d	$a0, $a3, -2
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 6
	masknez	$a0, $a1, $a0
	ret
.LBB20_9:
	move	$a0, $zero
	ret
.LBB20_10:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	beqz	$a0, .LBB20_15
.LBB20_11:
	ori	$a0, $zero, 4
	ret
.LBB20_12:
	addi.d	$a0, $a3, -2
	lu12i.w	$a2, 3
	ori	$a2, $a2, 2956
	ldx.w	$a1, $a1, $a2
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 6
	masknez	$a0, $a2, $a0
	add.w	$a0, $a1, $a0
	ret
.LBB20_13:
	addi.d	$a0, $a3, -2
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 31
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 25
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ret
.LBB20_14:
	move	$a0, $a2
	ret
.LBB20_15:
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 6488
	ld.w	$a2, $a1, 168
	ld.w	$a6, $a1, 172
	ld.d	$a1, $a0, 0
	addi.w	$a0, $a2, 3
	addi.w	$a3, $a6, 3
	slt	$a4, $a0, $a2
	masknez	$a0, $a0, $a4
	maskeqz	$a4, $a2, $a4
	or	$a0, $a4, $a0
	slt	$a4, $a3, $a6
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a6, $a4
	or	$a3, $a4, $a3
	sub.d	$a0, $a0, $a2
	addi.d	$a4, $a0, 1
.LBB20_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_17 Depth 2
	move	$a5, $a6
	slli.d	$a0, $a6, 3
	ldx.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a2
	move	$a6, $a4
	.p2align	4, , 16
.LBB20_17:                              #   Parent Loop BB20_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a7, $a0, 0
	bnez	$a7, .LBB20_11
# %bb.18:                               #   in Loop: Header=BB20_17 Depth=2
	addi.d	$a6, $a6, -1
	addi.d	$a0, $a0, 1
	bnez	$a6, .LBB20_17
# %bb.19:                               #   in Loop: Header=BB20_16 Depth=1
	addi.d	$a6, $a5, 1
	ori	$a0, $zero, 5
	bne	$a5, $a3, .LBB20_16
	b	.LBB20_21
.LBB20_20:
	slli.d	$a0, $a4, 3
	alsl.d	$a0, $a4, $a0, 2
	pcalau12i	$a1, %pc_hi20(MBType2Value.dir2offset)
	addi.d	$a1, $a1, %pc_lo12(MBType2Value.dir2offset)
	add.d	$a0, $a1, $a0
	slli.d	$a1, $a3, 2
	ldx.w	$a0, $a0, $a1
	addi.w	$a0, $a0, 5
.LBB20_21:                              # %ZeroRef.exit
	ret
.LBB20_22:
	slli.d	$a0, $a4, 3
	alsl.d	$a0, $a4, $a0, 2
	pcalau12i	$a1, %pc_hi20(MBType2Value.dir2offset)
	addi.d	$a1, $a1, %pc_lo12(MBType2Value.dir2offset)
	add.d	$a0, $a1, $a0
	slli.d	$a1, $a3, 2
	ldx.w	$a0, $a0, $a1
	addi.w	$a0, $a0, 4
	ret
.LBB20_23:
	ori	$a0, $zero, 22
	ret
.LBB20_24:
	lu12i.w	$a0, 3
	ori	$a0, $a0, 2956
	ldx.w	$a0, $a1, $a0
	addi.w	$a0, $a0, 23
	ret
.Lfunc_end20:
	.size	MBType2Value, .Lfunc_end20-MBType2Value
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI20_0:
	.word	.LBB20_10-.LJTI20_0
	.word	.LBB20_8-.LJTI20_0
	.word	.LBB20_12-.LJTI20_0
	.word	.LBB20_21-.LJTI20_0
	.word	.LBB20_21-.LJTI20_0
	.word	.LBB20_8-.LJTI20_0
	.word	.LBB20_13-.LJTI20_0
.LJTI20_1:
	.word	.LBB20_5-.LJTI20_1
	.word	.LBB20_22-.LJTI20_1
	.word	.LBB20_20-.LJTI20_1
	.word	.LBB20_20-.LJTI20_1
	.word	.LBB20_20-.LJTI20_1
	.word	.LBB20_20-.LJTI20_1
	.word	.LBB20_20-.LJTI20_1
	.word	.LBB20_23-.LJTI20_1
	.word	.LBB20_20-.LJTI20_1
	.word	.LBB20_24-.LJTI20_1
	.word	.LBB20_20-.LJTI20_1
	.word	.LBB20_20-.LJTI20_1
	.word	.LBB20_20-.LJTI20_1
	.word	.LBB20_21-.LJTI20_1
                                        # -- End function
	.text
	.globl	writeIntra4x4Modes              # -- Begin function writeIntra4x4Modes
	.p2align	5
	.type	writeIntra4x4Modes,@function
writeIntra4x4Modes:                     # @writeIntra4x4Modes
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 12
	ldptr.d	$a2, $a0, 14224
	ldptr.d	$a0, $a0, 14216
	ori	$a3, $zero, 536
	mul.d	$a1, $a1, $a3
	add.d	$s0, $a2, $a1
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 4016
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(assignSE2partition)
	ld.d	$a2, $a2, %got_pc_lo12(assignSE2partition)
	ldx.d	$a1, $a2, $a1
	ld.w	$a1, $a1, 16
	ld.d	$a0, $a0, 24
	ori	$a2, $zero, 104
	mul.d	$a1, $a1, $a2
	st.w	$zero, $sp, 32
	ld.b	$a2, $s0, 332
	add.d	$fp, $a0, $a1
	ori	$s3, $zero, 1
	st.w	$s3, $s0, 420
	st.w	$a2, $sp, 12
	st.w	$zero, $sp, 16
	ori	$s1, $zero, 4
	st.w	$s1, $sp, 8
	pcalau12i	$a0, %got_pc_hi20(writeIntraPredMode)
	ld.d	$s2, $a0, %got_pc_lo12(writeIntraPredMode)
	ld.d	$a2, $s2, 0
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	st.w	$s3, $sp, 32
	ld.b	$a0, $s0, 333
	ld.w	$s3, $sp, 20
	ld.d	$a2, $s2, 0
	st.w	$a0, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 2
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 334
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s2, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 3
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 335
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s2, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	st.w	$s1, $sp, 32
	ld.b	$a1, $s0, 336
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s2, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 5
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 337
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s2, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 6
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 338
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s2, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 7
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 339
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s2, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 8
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 340
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s2, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 9
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 341
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s2, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 10
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 342
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s2, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 11
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 343
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s2, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 12
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 344
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s2, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 13
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 345
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s2, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 14
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 346
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s2, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	ori	$a1, $zero, 15
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 347
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s2, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 44
	ld.w	$a0, $sp, 20
	add.w	$a0, $a0, $s3
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end21:
	.size	writeIntra4x4Modes, .Lfunc_end21-writeIntra4x4Modes
                                        # -- End function
	.globl	writeIntra8x8Modes              # -- Begin function writeIntra8x8Modes
	.p2align	5
	.type	writeIntra8x8Modes,@function
writeIntra8x8Modes:                     # @writeIntra8x8Modes
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 12
	ldptr.d	$a2, $a0, 14224
	ldptr.d	$a0, $a0, 14216
	ori	$a3, $zero, 536
	mul.d	$a1, $a1, $a3
	add.d	$s0, $a2, $a1
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 4016
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(assignSE2partition)
	ld.d	$a2, $a2, %got_pc_lo12(assignSE2partition)
	ldx.d	$a1, $a2, $a1
	ld.w	$a1, $a1, 16
	ld.d	$a0, $a0, 24
	ori	$a2, $zero, 104
	mul.d	$a1, $a1, $a2
	st.w	$zero, $sp, 32
	ld.b	$a2, $s0, 348
	add.d	$fp, $a0, $a1
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 420
	st.w	$a2, $sp, 12
	st.w	$zero, $sp, 16
	ori	$s1, $zero, 4
	st.w	$s1, $sp, 8
	pcalau12i	$a0, %got_pc_hi20(writeIntraPredMode)
	ld.d	$s2, $a0, %got_pc_lo12(writeIntraPredMode)
	ld.d	$a2, $s2, 0
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$s3, $sp, 20
	ld.w	$a0, $s0, 44
	add.d	$a0, $a0, $s3
	st.w	$a0, $s0, 44
	st.w	$s1, $sp, 32
	ld.b	$a0, $s0, 352
	ld.d	$a2, $s2, 0
	st.w	$a0, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s0, 44
	ori	$a1, $zero, 8
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 356
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s2, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s0, 44
	ori	$a1, $zero, 12
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 360
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s2, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a1, $a1, $a0
	add.w	$a0, $a0, $s3
	st.w	$a1, $s0, 44
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end22:
	.size	writeIntra8x8Modes, .Lfunc_end22-writeIntra8x8Modes
                                        # -- End function
	.globl	writeIntraModes                 # -- Begin function writeIntraModes
	.p2align	5
	.type	writeIntraModes,@function
writeIntraModes:                        # @writeIntraModes
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 12
	ldptr.d	$a2, $a0, 14224
	ori	$a3, $zero, 536
	mul.d	$a1, $a1, $a3
	add.d	$s0, $a2, $a1
	ld.w	$a1, $s0, 72
	ori	$a2, $zero, 13
	beq	$a1, $a2, .LBB23_3
# %bb.1:
	ori	$a0, $zero, 9
	bne	$a1, $a0, .LBB23_4
# %bb.2:
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(writeIntra4x4Modes)
	jr	$t8
.LBB23_3:
	ldptr.d	$a0, $a0, 14216
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 4016
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(assignSE2partition)
	ld.d	$a2, $a2, %got_pc_lo12(assignSE2partition)
	ldx.d	$a1, $a2, $a1
	ld.w	$a1, $a1, 16
	ld.d	$a0, $a0, 24
	ori	$a2, $zero, 104
	mul.d	$a1, $a1, $a2
	st.w	$zero, $sp, 32
	ld.b	$a2, $s0, 348
	add.d	$fp, $a0, $a1
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 420
	st.w	$a2, $sp, 12
	st.w	$zero, $sp, 16
	ori	$s1, $zero, 4
	st.w	$s1, $sp, 8
	pcalau12i	$a0, %got_pc_hi20(writeIntraPredMode)
	ld.d	$s2, $a0, %got_pc_lo12(writeIntraPredMode)
	ld.d	$a2, $s2, 0
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$s3, $sp, 20
	ld.w	$a0, $s0, 44
	add.d	$a0, $a0, $s3
	st.w	$a0, $s0, 44
	st.w	$s1, $sp, 32
	ld.b	$a0, $s0, 352
	ld.d	$a2, $s2, 0
	st.w	$a0, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s0, 44
	ori	$a1, $zero, 8
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 356
	add.d	$s3, $a0, $s3
	ld.d	$a2, $s2, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s0, 44
	ori	$a1, $zero, 12
	st.w	$a1, $sp, 32
	ld.b	$a1, $s0, 360
	add.d	$s3, $s3, $a0
	ld.d	$a2, $s2, 0
	st.w	$a1, $sp, 12
	st.w	$zero, $sp, 16
	st.w	$s1, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s0, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s0, 44
	add.w	$a0, $s3, $a0
	b	.LBB23_5
.LBB23_4:
	move	$a0, $zero
.LBB23_5:
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end23:
	.size	writeIntraModes, .Lfunc_end23-writeIntraModes
                                        # -- End function
	.globl	B8Mode2Value                    # -- Begin function B8Mode2Value
	.p2align	5
	.type	B8Mode2Value,@function
B8Mode2Value:                           # @B8Mode2Value
# %bb.0:
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $a2, 0
	ld.w	$a2, $a2, 20
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB24_2
# %bb.1:
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(B8Mode2Value.b8start)
	addi.d	$a2, $a2, %pc_lo12(B8Mode2Value.b8start)
	ldx.w	$a2, $a2, $a0
	pcalau12i	$a3, %pc_hi20(B8Mode2Value.b8inc)
	addi.d	$a3, $a3, %pc_lo12(B8Mode2Value.b8inc)
	ldx.w	$a0, $a3, $a0
	mul.d	$a0, $a0, $a1
	add.w	$a0, $a0, $a2
	ret
.LBB24_2:
	addi.w	$a0, $a0, -4
	ret
.Lfunc_end24:
	.size	B8Mode2Value, .Lfunc_end24-B8Mode2Value
                                        # -- End function
	.globl	writeMBLayer                    # -- Begin function writeMBLayer
	.p2align	5
	.type	writeMBLayer,@function
writeMBLayer:                           # @writeMBLayer
# %bb.0:
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	move	$s4, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$fp, $a0, %got_pc_lo12(img)
	ld.d	$a0, $fp, 0
	ld.w	$s0, $a0, 12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FmoGetPreviousMBNr)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a1, $fp, 0
	ldptr.d	$a6, $a1, 14224
	ori	$a7, $zero, 536
	mul.d	$a2, $s0, $a7
	add.d	$s1, $a6, $a2
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a3, $a2, 0
	ld.w	$a2, $s1, 72
	ldptr.w	$a4, $a3, 4016
	beqz	$a2, .LBB25_2
# %bb.1:
	move	$s5, $zero
	b	.LBB25_4
.LBB25_2:
	ld.w	$a5, $a1, 20
	ori	$s5, $zero, 1
	bne	$a5, $s5, .LBB25_4
# %bb.3:
	ld.w	$a5, $s1, 364
	sltui	$s5, $a5, 1
.LBB25_4:
	slli.d	$a5, $a4, 3
	pcalau12i	$a4, %got_pc_hi20(assignSE2partition)
	ld.d	$s8, $a4, %got_pc_lo12(assignSE2partition)
	ldptr.w	$a4, $a1, 15268
	beqz	$a4, .LBB25_7
# %bb.5:
	andi	$t0, $s0, 1
	bnez	$t0, .LBB25_8
# %bb.6:
	move	$a0, $zero
	ori	$s0, $zero, 1
	ldptr.d	$fp, $a1, 14216
	ldx.d	$s6, $s8, $a5
	ori	$a5, $zero, 13
	bgeu	$a5, $a2, .LBB25_13
	b	.LBB25_14
.LBB25_7:
	move	$a0, $zero
	move	$s0, $zero
	ldptr.d	$fp, $a1, 14216
	ldx.d	$s6, $s8, $a5
	ori	$a5, $zero, 13
	bgeu	$a5, $a2, .LBB25_13
	b	.LBB25_14
.LBB25_8:
	mul.d	$a0, $a0, $a7
	add.d	$a0, $a6, $a0
	ld.w	$a6, $a0, 72
	beqz	$a6, .LBB25_10
.LBB25_9:
	move	$s0, $zero
	b	.LBB25_12
.LBB25_10:
	ld.w	$a6, $a1, 20
	ori	$s0, $zero, 1
	bne	$a6, $s0, .LBB25_12
# %bb.11:
	ld.w	$a6, $a0, 364
	bnez	$a6, .LBB25_9
.LBB25_12:
	ld.w	$a0, $a0, 528
	sltu	$a0, $zero, $a0
	ldptr.d	$fp, $a1, 14216
	ldx.d	$s6, $s8, $a5
	ori	$a5, $zero, 13
	bltu	$a5, $a2, .LBB25_14
.LBB25_13:
	ori	$a5, $zero, 1
	sll.d	$a5, $a5, $a2
	lu12i.w	$a6, 2
	ori	$a6, $a6, 1536
	and	$a6, $a5, $a6
	ori	$a5, $zero, 1
	bnez	$a6, .LBB25_15
.LBB25_14:
	addi.d	$a5, $a2, -14
	sltui	$a5, $a5, 1
.LBB25_15:
	st.w	$a5, $s1, 420
	ld.w	$a6, $s6, 8
	ld.d	$a7, $fp, 24
	ld.w	$a5, $a1, 20
	ori	$t0, $zero, 104
	mul.d	$a6, $a6, $t0
	ori	$t0, $zero, 2
	add.d	$s2, $a7, $a6
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	bne	$a5, $t0, .LBB25_18
# %bb.16:
	beqz	$s0, .LBB25_26
# %bb.17:
	ld.w	$a0, $s1, 424
	st.w	$a0, $sp, 124
	st.w	$zero, $sp, 128
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 120
	pcalau12i	$a0, %got_pc_hi20(writeFieldModeInfo)
	ld.d	$a0, $a0, %got_pc_lo12(writeFieldModeInfo)
	ld.d	$a2, $a0, 0
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$s0, $sp, 132
	b	.LBB25_27
.LBB25_18:
	ldptr.w	$a3, $a3, 4008
	ori	$a6, $zero, 1
	bne	$a3, $a6, .LBB25_28
# %bb.19:
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	beqz	$a4, .LBB25_22
# %bb.20:
	ld.bu	$a1, $a1, 12
	andi	$a1, $a1, 1
	sltui	$a1, $a1, 1
	or	$a0, $a1, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB25_22
# %bb.21:
	ld.w	$s4, $s1, 424
	pcaddu18i	$ra, %call36(field_flag_inference)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, 424
	pcaddu18i	$ra, %call36(CheckAvailabilityOfNeighborsCABAC)
	jirl	$ra, $ra, 0
	st.w	$s4, $s1, 424
.LBB25_22:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(MBType2Value)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.w	$a0, $sp, 124
	ld.w	$a0, $s1, 364
	st.w	$a0, $sp, 128
	ori	$s7, $zero, 2
	st.w	$s7, $sp, 120
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	pcaddu18i	$ra, %call36(writeMB_skip_flagInfo_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$s3, $sp, 132
	pcaddu18i	$ra, %call36(CheckAvailabilityOfNeighborsCABAC)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 15268
	sltu	$a0, $zero, $a0
	xori	$a1, $s5, 1
	and	$a0, $a0, $a1
	and	$a0, $s0, $a0
	beqz	$a0, .LBB25_24
# %bb.23:
	ld.w	$a0, $s1, 424
	st.w	$a0, $sp, 124
	st.w	$zero, $sp, 128
	st.w	$s7, $sp, 120
	pcalau12i	$a0, %got_pc_hi20(writeFieldModeInfo)
	ld.d	$a0, $a0, %got_pc_lo12(writeFieldModeInfo)
	ld.d	$a2, $a0, 0
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$a0, $sp, 132
	add.d	$s3, $a0, $s3
.LBB25_24:
	ld.w	$a0, $s1, 72
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_34
.LBB25_25:
	st.w	$s4, $sp, 124
	st.w	$zero, $sp, 128
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 120
	pcalau12i	$a0, %got_pc_hi20(writeMB_typeInfo)
	ld.d	$a0, $a0, %got_pc_lo12(writeMB_typeInfo)
	ld.d	$a2, $a0, 0
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$a0, $sp, 132
	add.d	$s3, $a0, $s3
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	b	.LBB25_47
.LBB25_26:
	move	$s0, $zero
.LBB25_27:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(MBType2Value)
	jirl	$ra, $ra, 0
	st.w	$a0, $sp, 124
	st.w	$zero, $sp, 128
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 120
	pcalau12i	$a0, %got_pc_hi20(writeMB_typeInfo)
	ld.d	$a0, $a0, %got_pc_lo12(writeMB_typeInfo)
	ld.d	$a2, $a0, 0
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$a0, $sp, 132
	add.d	$s3, $a0, $s0
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	b	.LBB25_47
.LBB25_28:
	beqz	$a2, .LBB25_37
.LBB25_29:
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a1, 144
	st.w	$a0, $sp, 124
	st.w	$zero, $sp, 128
	ori	$s8, $zero, 2
	st.w	$s8, $sp, 120
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	pcaddu18i	$ra, %call36(writeSE_UVLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s7, $s3, 0
	ldptr.w	$a0, $s7, 15268
	ld.w	$s4, $sp, 132
	sltu	$a0, $zero, $a0
	xori	$a1, $s5, 1
	and	$a0, $a0, $a1
	and	$a0, $s0, $a0
	st.w	$zero, $s7, 144
	beqz	$a0, .LBB25_31
# %bb.30:
	ld.w	$a0, $s1, 424
	st.w	$a0, $sp, 124
	st.w	$s8, $sp, 120
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	pcaddu18i	$ra, %call36(writeSE_Flag)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$a0, $sp, 132
	ld.d	$s7, $s3, 0
	add.d	$s4, $a0, $s4
.LBB25_31:
	move	$s0, $s3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(MBType2Value)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 20
	ori	$a2, $zero, 1
	st.w	$a0, $sp, 124
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	beq	$a1, $a2, .LBB25_33
# %bb.32:
	addi.d	$a0, $a0, -1
	st.w	$a0, $sp, 124
.LBB25_33:
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 120
	st.w	$zero, $sp, 128
	pcalau12i	$a0, %got_pc_hi20(writeMB_typeInfo)
	ld.d	$a0, $a0, %got_pc_lo12(writeMB_typeInfo)
	ld.d	$a2, $a0, 0
	addi.d	$a0, $sp, 120
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	move	$a1, $s2
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$a0, $sp, 132
	add.d	$s3, $a0, $s4
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	b	.LBB25_47
.LBB25_34:
	ld.d	$a0, $s0, 0
	ld.w	$a0, $a0, 20
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB25_36
# %bb.35:
	ld.w	$a0, $s1, 364
	bnez	$a0, .LBB25_25
.LBB25_36:
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	b	.LBB25_47
.LBB25_37:
	ori	$a0, $zero, 1
	bne	$a5, $a0, .LBB25_39
# %bb.38:
	ld.w	$a2, $s1, 364
	bnez	$a2, .LBB25_29
.LBB25_39:
	ld.w	$a2, $a1, 144
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, 144
	st.w	$a0, $s1, 528
	ldptr.w	$a0, $a1, 15528
	addi.w	$a2, $zero, -3
	addi.w	$s0, $zero, -1
	blt	$a0, $a2, .LBB25_42
# %bb.40:                               # %.preheader214.lr.ph
	ld.d	$a0, $a1, 152
	move	$a2, $zero
	lu12i.w	$a3, 3
	ori	$a3, $a3, 3240
	move	$a4, $s0
	.p2align	4, , 16
.LBB25_41:                              # %.preheader214
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 12
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a0, $a5
	ld.d	$a5, $a5, 0
	stx.w	$zero, $a5, $a2
	ld.w	$a5, $a1, 12
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a0, $a5
	ld.d	$a5, $a5, 8
	stx.w	$zero, $a5, $a2
	ld.w	$a5, $a1, 12
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a0, $a5
	ld.d	$a5, $a5, 16
	stx.w	$zero, $a5, $a2
	ld.w	$a5, $a1, 12
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a0, $a5
	ld.d	$a5, $a5, 24
	stx.w	$zero, $a5, $a2
	ldx.w	$a5, $a1, $a3
	addi.w	$a5, $a5, 3
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	blt	$a4, $a5, .LBB25_41
.LBB25_42:                              # %._crit_edge
	ld.w	$a0, $a1, 12
	pcaddu18i	$ra, %call36(FmoGetNextMBNr)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB25_44
# %bb.43:
	move	$s3, $zero
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	b	.LBB25_47
.LBB25_44:
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	ld.w	$a0, $a0, 144
	blez	$a0, .LBB25_46
# %bb.45:
	st.w	$a0, $sp, 124
	st.w	$zero, $sp, 128
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 120
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	pcaddu18i	$ra, %call36(writeSE_UVLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.d	$a0, $s0, 0
	ld.w	$s3, $sp, 132
	st.w	$zero, $a0, 144
	b	.LBB25_47
.LBB25_46:
	move	$s3, $zero
.LBB25_47:
	ld.w	$a1, $s1, 72
	beqz	$a1, .LBB25_54
# %bb.48:
	ori	$a0, $zero, 1
	ori	$a2, $zero, 8
	st.w	$a0, $s1, 476
	beq	$a1, $a2, .LBB25_57
# %bb.49:
	ori	$a0, $zero, 14
	bne	$a1, $a0, .LBB25_96
# %bb.50:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB25_52
# %bb.51:
	addi.d	$fp, $s2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(arienco_bits_written)
	jirl	$ra, $ra, 0
	move	$s2, $s3
	move	$s3, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(arienco_done_encoding)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(arienco_bits_written)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a2, 32
	sub.d	$a3, $s2, $s3
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	add.d	$s3, $a3, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(arienco_start_encoding)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(reset_pic_bin_count)
	jirl	$ra, $ra, 0
.LBB25_52:
	ld.d	$a0, $s2, 0
	ld.w	$a0, $a0, 4
	ori	$a1, $zero, 7
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	blt	$a1, $a0, .LBB25_59
# %bb.53:
	ori	$a1, $zero, 2
	st.w	$a1, $sp, 120
	st.w	$a0, $sp, 132
	ld.w	$a1, $s1, 44
	add.d	$s3, $a0, $s3
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 44
	st.w	$zero, $sp, 140
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	pcaddu18i	$ra, %call36(writeSE_Fix)
	jirl	$ra, $ra, 0
	b	.LBB25_60
.LBB25_54:
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 20
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB25_56
# %bb.55:
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ld.w	$a0, $a0, 1156
	sltu	$a0, $zero, $a0
.LBB25_56:                              # %.thread277
	st.w	$a0, $s1, 476
	b	.LBB25_99
.LBB25_57:
	ld.d	$a1, $s0, 0
	ld.d	$a2, $fp, 24
	ld.w	$a3, $s6, 8
	ld.w	$a4, $a1, 20
	ld.w	$a1, $s1, 376
	ori	$a5, $zero, 104
	mul.d	$a3, $a3, $a5
	add.d	$s2, $a2, $a3
	bne	$a4, $a0, .LBB25_73
# %bb.58:
	ld.w	$a0, $s1, 392
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(B8Mode2Value.b8start)
	addi.d	$a2, $a2, %pc_lo12(B8Mode2Value.b8start)
	ldx.w	$a2, $a2, $a1
	pcalau12i	$a3, %pc_hi20(B8Mode2Value.b8inc)
	addi.d	$a3, $a3, %pc_lo12(B8Mode2Value.b8inc)
	ldx.w	$a1, $a3, $a1
	mul.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a2
	b	.LBB25_74
.LBB25_59:
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
.LBB25_60:
	lu12i.w	$a0, 3
	ori	$s3, $a0, 3156
	ori	$s4, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$fp, $a0, %got_pc_lo12(enc_picture)
	move	$a1, $zero
	.p2align	4, , 16
.LBB25_61:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_62 Depth 2
	ld.d	$a0, $s0, 0
	ld.w	$a0, $a0, 180
	move	$s7, $zero
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	add.w	$a0, $a0, $a1
	slli.d	$s8, $a0, 3
	move	$s6, $s0
	ori	$s0, $zero, 16
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB25_62:                              #   Parent Loop BB25_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, 0
	ld.d	$a1, $fp, 0
	ldx.w	$a2, $a0, $s3
	ldptr.d	$a1, $a1, 6440
	st.w	$a2, $sp, 132
	ld.w	$a0, $a0, 176
	st.w	$s4, $sp, 120
	ldx.d	$a1, $a1, $s8
	add.d	$a0, $s7, $a0
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $a1, $a0
	st.w	$a0, $sp, 140
	st.w	$a0, $sp, 124
	ld.w	$a0, $s5, 44
	add.w	$s2, $a2, $s2
	add.d	$a0, $a0, $a2
	st.w	$a0, $s5, 44
	addi.d	$a0, $sp, 120
	move	$a1, $s1
	pcaddu18i	$ra, %call36(writeSE_Fix)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	addi.d	$s7, $s7, 1
	bnez	$s0, .LBB25_62
# %bb.63:                               #   in Loop: Header=BB25_61 Depth=1
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	move	$s0, $s6
	ori	$a0, $zero, 16
	bne	$a1, $a0, .LBB25_61
# %bb.64:
	ld.d	$a0, $s0, 0
	ldptr.w	$a1, $a0, 15536
	beqz	$a1, .LBB25_253
# %bb.65:                               # %.preheader213
	ldptr.w	$a1, $a0, 15548
	blez	$a1, .LBB25_253
# %bb.66:                               # %.lr.ph236
	ldptr.w	$a1, $a0, 15544
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	blez	$a1, .LBB25_190
# %bb.67:                               # %.lr.ph236.split.preheader
	move	$a2, $zero
	lu12i.w	$a1, 3
	ori	$s4, $a1, 3160
	ori	$s5, $zero, 2
	b	.LBB25_70
	.p2align	4, , 16
.LBB25_68:                              #   in Loop: Header=BB25_70 Depth=1
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
.LBB25_69:                              # %._crit_edge233
                                        #   in Loop: Header=BB25_70 Depth=1
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	ldptr.w	$a1, $a0, 15548
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	bge	$a2, $a1, .LBB25_189
.LBB25_70:                              # %.lr.ph236.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_72 Depth 2
	ldptr.w	$a1, $a0, 15544
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	blez	$a1, .LBB25_68
# %bb.71:                               # %.lr.ph
                                        #   in Loop: Header=BB25_70 Depth=1
	ld.w	$a1, $a0, 188
	move	$s6, $zero
	move	$s7, $zero
	add.w	$a1, $a1, $a2
	slli.d	$s8, $a1, 3
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB25_72:                              #   Parent Loop BB25_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 0
	ldx.w	$a2, $a0, $s4
	ldptr.d	$a1, $a1, 6472
	st.w	$a2, $sp, 132
	st.w	$s5, $sp, 120
	ld.d	$a1, $a1, 0
	ld.w	$a0, $a0, 184
	ldx.d	$a1, $a1, $s8
	add.d	$a0, $s6, $a0
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $a1, $a0
	st.w	$a0, $sp, 140
	st.w	$a0, $sp, 124
	ld.w	$a0, $s1, 48
	add.w	$s3, $a2, $s3
	add.d	$a0, $a0, $a2
	st.w	$a0, $s1, 48
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	pcaddu18i	$ra, %call36(writeSE_Fix)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ldptr.w	$a1, $a0, 15544
	addi.w	$s7, $s7, 1
	addi.d	$s6, $s6, 1
	blt	$s7, $a1, .LBB25_72
	b	.LBB25_69
.LBB25_73:
	addi.d	$a0, $a1, -4
.LBB25_74:                              # %B8Mode2Value.exit
	st.w	$a0, $sp, 124
	st.w	$zero, $sp, 128
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 120
	pcalau12i	$a0, %got_pc_hi20(writeB8_typeInfo)
	ld.d	$fp, $a0, %got_pc_lo12(writeB8_typeInfo)
	ld.d	$a2, $fp, 0
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$a1, $sp, 132
	ld.w	$a0, $s1, 376
	add.d	$s0, $a1, $s3
	beqz	$a0, .LBB25_76
.LBB25_75:
	addi.d	$a0, $a0, -4
	sltui	$a1, $a0, 1
	b	.LBB25_77
.LBB25_76:
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.w	$a2, $a1, 1156
	ori	$a1, $zero, 1
	beqz	$a2, .LBB25_75
.LBB25_77:
	ld.wu	$a0, $s1, 476
	and	$a0, $a0, $a1
	st.w	$a0, $s1, 476
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 20
	ld.w	$a0, $s1, 380
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB25_79
# %bb.78:
	ld.w	$a1, $s1, 396
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(B8Mode2Value.b8start)
	addi.d	$a2, $a2, %pc_lo12(B8Mode2Value.b8start)
	ldx.w	$a2, $a2, $a0
	pcalau12i	$a3, %pc_hi20(B8Mode2Value.b8inc)
	addi.d	$a3, $a3, %pc_lo12(B8Mode2Value.b8inc)
	ldx.w	$a0, $a3, $a0
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	b	.LBB25_80
.LBB25_79:
	addi.d	$a0, $a0, -4
.LBB25_80:                              # %B8Mode2Value.exit.1
	st.w	$a0, $sp, 124
	ld.d	$a2, $fp, 0
	st.w	$zero, $sp, 128
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 120
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$a1, $sp, 132
	ld.w	$a0, $s1, 380
	add.d	$s0, $a1, $s0
	beqz	$a0, .LBB25_82
.LBB25_81:
	addi.d	$a0, $a0, -4
	sltui	$a1, $a0, 1
	b	.LBB25_83
.LBB25_82:
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.w	$a2, $a1, 1156
	ori	$a1, $zero, 1
	beqz	$a2, .LBB25_81
.LBB25_83:
	ld.wu	$a0, $s1, 476
	and	$a0, $a0, $a1
	st.w	$a0, $s1, 476
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 20
	ld.w	$a0, $s1, 384
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB25_85
# %bb.84:
	ld.w	$a1, $s1, 400
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(B8Mode2Value.b8start)
	addi.d	$a2, $a2, %pc_lo12(B8Mode2Value.b8start)
	ldx.w	$a2, $a2, $a0
	pcalau12i	$a3, %pc_hi20(B8Mode2Value.b8inc)
	addi.d	$a3, $a3, %pc_lo12(B8Mode2Value.b8inc)
	ldx.w	$a0, $a3, $a0
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	b	.LBB25_86
.LBB25_85:
	addi.d	$a0, $a0, -4
.LBB25_86:                              # %B8Mode2Value.exit.2
	st.w	$a0, $sp, 124
	ld.d	$a2, $fp, 0
	st.w	$zero, $sp, 128
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 120
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$a1, $sp, 132
	ld.w	$a0, $s1, 384
	add.d	$s0, $a1, $s0
	beqz	$a0, .LBB25_88
.LBB25_87:
	addi.d	$a0, $a0, -4
	sltui	$a1, $a0, 1
	b	.LBB25_89
.LBB25_88:
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.w	$a2, $a1, 1156
	ori	$a1, $zero, 1
	beqz	$a2, .LBB25_87
.LBB25_89:
	ld.wu	$a0, $s1, 476
	and	$a0, $a0, $a1
	st.w	$a0, $s1, 476
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 20
	ld.w	$a0, $s1, 388
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB25_91
# %bb.90:
	ld.w	$a1, $s1, 404
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(B8Mode2Value.b8start)
	addi.d	$a2, $a2, %pc_lo12(B8Mode2Value.b8start)
	ldx.w	$a2, $a2, $a0
	pcalau12i	$a3, %pc_hi20(B8Mode2Value.b8inc)
	addi.d	$a3, $a3, %pc_lo12(B8Mode2Value.b8inc)
	ldx.w	$a0, $a3, $a0
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	b	.LBB25_92
.LBB25_91:
	addi.d	$a0, $a0, -4
.LBB25_92:                              # %B8Mode2Value.exit.3
	st.w	$a0, $sp, 124
	ld.d	$a2, $fp, 0
	st.w	$zero, $sp, 128
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 120
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$a1, $sp, 132
	ld.w	$a0, $s1, 388
	add.d	$fp, $a1, $s0
	beqz	$a0, .LBB25_94
.LBB25_93:
	addi.d	$a0, $a0, -4
	sltui	$a1, $a0, 1
	b	.LBB25_95
.LBB25_94:
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.w	$a2, $a1, 1156
	ori	$a1, $zero, 1
	beqz	$a2, .LBB25_93
.LBB25_95:
	ld.wu	$a0, $s1, 476
	and	$a0, $a0, $a1
	st.w	$a0, $s1, 476
	pcaddu18i	$ra, %call36(writeMotionInfo2NAL)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 72
	add.d	$s3, $a0, $fp
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
.LBB25_96:
	ori	$a0, $a1, 4
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB25_99
# %bb.97:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 5100
	beqz	$a0, .LBB25_99
# %bb.98:
	ld.w	$a0, $s1, 472
	st.w	$a0, $sp, 124
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 120
	pcalau12i	$a0, %got_pc_hi20(writeMB_transform_size)
	ld.d	$a0, $a0, %got_pc_lo12(writeMB_transform_size)
	ld.d	$a2, $a0, 0
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 132
	ld.w	$a1, $s1, 32
	add.d	$a0, $a1, $a0
	st.w	$a0, $s1, 32
	ld.w	$a0, $sp, 132
	add.d	$s3, $a0, $s3
.LBB25_99:
	pcaddu18i	$ra, %call36(writeIntraModes)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 420
	add.w	$s3, $a0, $s3
	beqz	$a1, .LBB25_103
# %bb.100:
	ld.d	$a0, $s0, 0
	ldptr.w	$a1, $a0, 15536
	beqz	$a1, .LBB25_103
# %bb.101:
	ld.w	$a1, $a0, 12
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ldptr.d	$a3, $a0, 14224
	ori	$a4, $zero, 536
	mul.d	$a1, $a1, $a4
	ldptr.w	$a2, $a2, 4016
	add.d	$fp, $a3, $a1
	ld.w	$a1, $fp, 416
	ldptr.d	$a0, $a0, 14216
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $s8, $a2
	st.w	$a1, $sp, 164
	st.w	$zero, $sp, 168
	ori	$a1, $zero, 4
	ld.w	$a2, $a2, 16
	ld.d	$a0, $a0, 24
	st.w	$a1, $sp, 160
	ori	$a1, $zero, 104
	mul.d	$a1, $a2, $a1
	add.d	$a1, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(writeCIPredMode)
	ld.d	$a0, $a0, %got_pc_lo12(writeCIPredMode)
	ld.d	$a2, $a0, 0
	addi.d	$a0, $sp, 160
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $fp, 48
	add.d	$a1, $a1, $a0
	st.w	$a1, $fp, 48
	add.w	$s3, $a0, $s3
	ld.w	$a1, $s1, 72
	move	$a0, $a1
	bstrins.d	$a0, $zero, 3, 3
	beqz	$a0, .LBB25_105
.LBB25_102:
	pcaddu18i	$ra, %call36(writeMotionInfo2NAL)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 72
	add.w	$s3, $a0, $s3
	ld.d	$a0, $s0, 0
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	bnez	$a1, .LBB25_106
	b	.LBB25_108
.LBB25_103:
	beqz	$s4, .LBB25_129
# %bb.104:
	ld.w	$a1, $s1, 72
	move	$a0, $a1
	bstrins.d	$a0, $zero, 3, 3
	bnez	$a0, .LBB25_102
.LBB25_105:
	ld.d	$a0, $s0, 0
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	beqz	$a1, .LBB25_108
.LBB25_106:
	ld.w	$a1, $a0, 12
	ldptr.d	$a2, $a0, 14224
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ori	$a4, $zero, 536
	mul.d	$a1, $a1, $a4
	ldptr.d	$a4, $a0, 14168
	ldptr.w	$a3, $a3, 4016
	add.d	$s2, $a2, $a1
	ldptr.d	$s4, $a0, 14216
	ld.d	$a0, $a4, 0
	slli.d	$a1, $a3, 3
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	ldx.d	$s8, $s8, $a1
	ld.w	$s6, $s2, 364
	ld.d	$s0, $a0, 0
	ld.w	$a1, $s2, 72
	ld.d	$s5, $a0, 8
	ori	$a0, $zero, 10
	bne	$a1, $a0, .LBB25_110
# %bb.107:
	move	$s3, $zero
	b	.LBB25_116
.LBB25_108:
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB25_253
# %bb.109:
	ld.w	$a1, $s1, 364
	bnez	$a1, .LBB25_106
	b	.LBB25_253
.LBB25_110:
	st.w	$s6, $sp, 164
	ori	$a0, $zero, 6
	ld.w	$a1, $s8, 24
	ld.d	$a2, $s4, 24
	st.w	$a0, $sp, 160
	ori	$a0, $zero, 104
	mul.d	$a0, $a1, $a0
	add.d	$s1, $a2, $a0
	pcalau12i	$a0, %got_pc_hi20(writeCBP)
	ld.d	$a0, $a0, %got_pc_lo12(writeCBP)
	ld.d	$a2, $a0, 0
	addi.d	$a0, $sp, 160
	move	$a1, $s1
	jirl	$ra, $a2, 0
	ld.w	$s3, $sp, 172
	ld.w	$a1, $s2, 40
	ld.w	$a0, $s2, 72
	add.d	$a1, $a1, $s3
	addi.w	$a2, $a0, -1
	ori	$a3, $zero, 3
	st.w	$a1, $s2, 40
	bltu	$a2, $a3, .LBB25_115
# %bb.111:
	bnez	$a0, .LBB25_114
# %bb.112:
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.w	$a1, $a1, 20
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB25_114
# %bb.113:
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.w	$a1, $a1, 1156
	bnez	$a1, .LBB25_174
.LBB25_114:
	ld.w	$a1, $s2, 476
	beqz	$a1, .LBB25_116
.LBB25_115:
	ori	$a0, $a0, 4
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB25_174
.LBB25_116:                             # %.critedge.i
	bnez	$s6, .LBB25_118
# %bb.117:
	ld.w	$a0, $s2, 72
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB25_134
.LBB25_118:
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $fp, 0
	ld.w	$a1, $s2, 4
	ldptr.d	$a0, $a0, 14216
	st.w	$a1, $sp, 164
	ori	$a1, $zero, 15
	ld.w	$a2, $s8, 60
	ld.d	$a0, $a0, 24
	st.w	$a1, $sp, 160
	ori	$a1, $zero, 104
	mul.d	$a1, $a2, $a1
	add.d	$a1, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(writeDquant)
	ld.d	$a0, $a0, %got_pc_lo12(writeDquant)
	ld.d	$a2, $a0, 0
	addi.d	$a0, $sp, 160
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s2, 52
	add.d	$a1, $a1, $a0
	st.w	$a1, $s2, 52
	add.d	$s3, $a0, $s3
.LBB25_119:
	ld.d	$a0, $fp, 0
	ld.w	$a1, $a0, 12
	ld.d	$a2, $a0, 152
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ldptr.w	$a2, $a0, 15528
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a2, 2
	addi.d	$a2, $a1, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a1, $a0, 12
	ld.d	$a2, $a0, 152
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ldptr.w	$a2, $a0, 15528
	ld.d	$a0, $a1, 8
	slli.d	$a1, $a2, 2
	addi.d	$a2, $a1, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a1, $a0, 12
	ld.d	$a2, $a0, 152
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ldptr.w	$a2, $a0, 15528
	ld.d	$a0, $a1, 16
	slli.d	$a1, $a2, 2
	addi.d	$a2, $a1, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a1, $a0, 12
	ld.d	$a2, $a0, 152
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ldptr.w	$a2, $a0, 15528
	ld.d	$a0, $a1, 24
	slli.d	$a1, $a2, 2
	addi.d	$a2, $a1, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 72
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB25_125
# %bb.120:
	st.d	$s6, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	beqz	$a0, .LBB25_135
# %bb.121:
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$s1, $zero
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 104
	ori	$s7, $zero, 104
	ori	$fp, $zero, 15
	.p2align	4, , 16
.LBB25_122:                             # =>This Inner Loop Header: Depth=1
	ld.w	$s6, $s0, 0
	st.w	$s6, $sp, 164
	ld.w	$a0, $s5, 0
	st.w	$zero, $sp, 184
	ld.w	$a1, $s8, 28
	ld.d	$a2, $s4, 24
	st.w	$a0, $sp, 168
	ori	$a0, $zero, 7
	st.w	$a0, $sp, 160
	mul.d	$a0, $a1, $s7
	add.d	$a1, $a2, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s2, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s2, 44
	add.d	$s3, $a0, $s3
	bltu	$fp, $s1, .LBB25_124
# %bb.123:                              #   in Loop: Header=BB25_122 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s5, $s5, 4
	addi.d	$s0, $s0, 4
	bnez	$s6, .LBB25_122
.LBB25_124:                             # %.loopexit116.i
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	andi	$a0, $a0, 15
	bnez	$a0, .LBB25_136
	b	.LBB25_160
.LBB25_125:                             # %.preheader117.i
	andi	$a0, $s6, 1
	bnez	$a0, .LBB25_130
# %bb.126:
	andi	$a0, $s6, 2
	bnez	$a0, .LBB25_131
.LBB25_127:
	andi	$a0, $s6, 4
	bnez	$a0, .LBB25_132
.LBB25_128:
	andi	$a0, $s6, 8
	bnez	$a0, .LBB25_133
	b	.LBB25_160
.LBB25_129:
	st.w	$zero, $s1, 416
	ld.w	$a1, $s1, 72
	move	$a0, $a1
	bstrins.d	$a0, $zero, 3, 3
	beqz	$a0, .LBB25_105
	b	.LBB25_102
.LBB25_130:
	ld.w	$a1, $s2, 376
	ld.w	$a2, $s2, 472
	move	$a0, $zero
	pcaddu18i	$ra, %call36(writeLumaCoeff8x8)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
	andi	$a0, $s6, 2
	beqz	$a0, .LBB25_127
.LBB25_131:
	ld.w	$a1, $s2, 380
	ld.w	$a2, $s2, 472
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(writeLumaCoeff8x8)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
	andi	$a0, $s6, 4
	beqz	$a0, .LBB25_128
.LBB25_132:
	ld.w	$a1, $s2, 384
	ld.w	$a2, $s2, 472
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(writeLumaCoeff8x8)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
	andi	$a0, $s6, 8
	beqz	$a0, .LBB25_160
.LBB25_133:
	ld.w	$a1, $s2, 388
	ld.w	$a2, $s2, 472
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(writeLumaCoeff8x8)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
	b	.LBB25_160
.LBB25_134:
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	b	.LBB25_119
.LBB25_135:
	ori	$a0, $zero, 1
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	andi	$a0, $a0, 15
	beqz	$a0, .LBB25_160
.LBB25_136:                             # %.preheader114.i
	move	$a2, $zero
	ori	$s6, $zero, 1
	ori	$s0, $zero, 14
	ori	$a1, $zero, 1
	b	.LBB25_138
	.p2align	4, , 16
.LBB25_137:                             #   in Loop: Header=BB25_138 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	addi.d	$a2, $a2, 2
	move	$a1, $zero
	beqz	$a0, .LBB25_160
.LBB25_138:                             # %.preheader113.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_141 Depth 2
                                        #       Child Loop BB25_143 Depth 3
                                        #       Child Loop BB25_148 Depth 3
                                        #       Child Loop BB25_152 Depth 3
                                        #       Child Loop BB25_158 Depth 3
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$a3, $zero
	addi.d	$a0, $a2, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	b	.LBB25_141
	.p2align	4, , 16
.LBB25_139:                             #   in Loop: Header=BB25_141 Depth=2
	ori	$a0, $zero, 2
	ori	$a2, $zero, 3
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a3, $zero
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
.LBB25_140:                             # %.loopexit.1.1.i
                                        #   in Loop: Header=BB25_141 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a3, $a3, 2
	move	$a1, $zero
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB25_137
.LBB25_141:                             # %.preheader112.i
                                        #   Parent Loop BB25_138 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_143 Depth 3
                                        #       Child Loop BB25_148 Depth 3
                                        #       Child Loop BB25_152 Depth 3
                                        #       Child Loop BB25_158 Depth 3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	srli.d	$a1, $a3, 1
	add.d	$a1, $a1, $a2
	slli.d	$a4, $a1, 3
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	beqz	$a0, .LBB25_145
# %bb.142:                              #   in Loop: Header=BB25_141 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.d	$a1, $a0, 14160
	ldx.d	$a1, $a1, $a4
	ld.d	$a1, $a1, 0
	move	$s1, $zero
	ld.d	$fp, $a1, 0
	ld.d	$s7, $a1, 8
	st.w	$a2, $a0, 100
	st.w	$a3, $a0, 96
	st.w	$s6, $a0, 104
	.p2align	4, , 16
.LBB25_143:                             #   Parent Loop BB25_138 Depth=1
                                        #     Parent Loop BB25_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s5, $fp, 0
	st.w	$s5, $sp, 164
	ld.w	$a0, $s7, 0
	st.w	$s6, $sp, 184
	ld.w	$a1, $s8, 36
	ld.d	$a2, $s4, 24
	st.w	$a0, $sp, 168
	ori	$a0, $zero, 9
	st.w	$a0, $sp, 160
	ori	$a0, $zero, 104
	mul.d	$a0, $a1, $a0
	add.d	$a1, $a2, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s2, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s2, 44
	add.d	$s3, $a0, $s3
	bltu	$s0, $s1, .LBB25_146
# %bb.144:                              #   in Loop: Header=BB25_143 Depth=3
	addi.d	$s1, $s1, 1
	addi.d	$s7, $s7, 4
	addi.d	$fp, $fp, 4
	bnez	$s5, .LBB25_143
	b	.LBB25_146
	.p2align	4, , 16
.LBB25_145:                             #   in Loop: Header=BB25_141 Depth=2
	ori	$a0, $zero, 2
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
.LBB25_146:                             # %.loopexit.i
                                        #   in Loop: Header=BB25_141 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a3, $a1, 1
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	beqz	$a0, .LBB25_155
# %bb.147:                              #   in Loop: Header=BB25_141 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.d	$a1, $a0, 14160
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 8
	move	$s1, $zero
	ld.d	$fp, $a1, 0
	ld.d	$s7, $a1, 8
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.w	$a1, $a0, 100
	st.w	$a3, $a0, 96
	st.w	$s6, $a0, 104
	.p2align	4, , 16
.LBB25_148:                             #   Parent Loop BB25_138 Depth=1
                                        #     Parent Loop BB25_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s5, $fp, 0
	st.w	$s5, $sp, 164
	ld.w	$a0, $s7, 0
	st.w	$s6, $sp, 184
	ld.w	$a1, $s8, 36
	ld.d	$a2, $s4, 24
	st.w	$a0, $sp, 168
	ori	$a0, $zero, 9
	st.w	$a0, $sp, 160
	ori	$a0, $zero, 104
	mul.d	$a0, $a1, $a0
	add.d	$a1, $a2, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s2, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s2, 44
	add.d	$s3, $a0, $s3
	bltu	$s0, $s1, .LBB25_150
# %bb.149:                              #   in Loop: Header=BB25_148 Depth=3
	addi.d	$s1, $s1, 1
	addi.d	$s7, $s7, 4
	addi.d	$fp, $fp, 4
	bnez	$s5, .LBB25_148
.LBB25_150:                             # %.loopexit.1.i
                                        #   in Loop: Header=BB25_141 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	beqz	$a0, .LBB25_156
.LBB25_151:                             #   in Loop: Header=BB25_141 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.d	$a1, $a0, 14160
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 16
	move	$s1, $zero
	ld.d	$fp, $a1, 0
	ld.d	$s7, $a1, 8
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$a1, $a0, 100
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a1, $a0, 96
	st.w	$s6, $a0, 104
	.p2align	4, , 16
.LBB25_152:                             #   Parent Loop BB25_138 Depth=1
                                        #     Parent Loop BB25_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s5, $fp, 0
	st.w	$s5, $sp, 164
	ld.w	$a0, $s7, 0
	st.w	$s6, $sp, 184
	ld.w	$a1, $s8, 36
	ld.d	$a2, $s4, 24
	st.w	$a0, $sp, 168
	ori	$a0, $zero, 9
	st.w	$a0, $sp, 160
	ori	$a0, $zero, 104
	mul.d	$a0, $a1, $a0
	add.d	$a1, $a2, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s2, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s2, 44
	add.d	$s3, $a0, $s3
	bltu	$s0, $s1, .LBB25_154
# %bb.153:                              #   in Loop: Header=BB25_152 Depth=3
	addi.d	$s1, $s1, 1
	addi.d	$s7, $s7, 4
	addi.d	$fp, $fp, 4
	bnez	$s5, .LBB25_152
.LBB25_154:                             # %.loopexit.1156.i
                                        #   in Loop: Header=BB25_141 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	bnez	$a0, .LBB25_157
	b	.LBB25_139
	.p2align	4, , 16
.LBB25_155:                             #   in Loop: Header=BB25_141 Depth=2
	ori	$a0, $zero, 2
	ori	$a2, $zero, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a3, $zero
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	bnez	$a0, .LBB25_151
.LBB25_156:                             #   in Loop: Header=BB25_141 Depth=2
	ori	$a0, $zero, 2
	ori	$a2, $zero, 2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a3, $zero
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	beqz	$a0, .LBB25_139
.LBB25_157:                             #   in Loop: Header=BB25_141 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.d	$a1, $a0, 14160
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 24
	move	$s1, $zero
	ld.d	$fp, $a1, 0
	ld.d	$s7, $a1, 8
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$a1, $a0, 100
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.w	$a1, $a0, 96
	st.w	$s6, $a0, 104
	.p2align	4, , 16
.LBB25_158:                             #   Parent Loop BB25_138 Depth=1
                                        #     Parent Loop BB25_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s5, $fp, 0
	st.w	$s5, $sp, 164
	ld.w	$a0, $s7, 0
	st.w	$s6, $sp, 184
	ld.w	$a1, $s8, 36
	ld.d	$a2, $s4, 24
	st.w	$a0, $sp, 168
	ori	$a0, $zero, 9
	st.w	$a0, $sp, 160
	ori	$a0, $zero, 104
	mul.d	$a0, $a1, $a0
	add.d	$a1, $a2, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s2, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s2, 44
	add.d	$s3, $a0, $s3
	bltu	$s0, $s1, .LBB25_140
# %bb.159:                              #   in Loop: Header=BB25_158 Depth=3
	addi.d	$s1, $s1, 1
	addi.d	$s7, $s7, 4
	addi.d	$fp, $fp, 4
	bnez	$s5, .LBB25_158
	b	.LBB25_140
.LBB25_160:                             # %writeCBPandLumaCoeff.exit
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.w	$s3, $a0, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 15536
	beqz	$a1, .LBB25_252
# %bb.161:
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.w	$a3, $a0, 12
	ldptr.d	$a4, $a0, 14224
	ori	$a5, $zero, 536
	ldptr.w	$a6, $a2, 4016
	mul.d	$a3, $a3, $a5
	add.d	$s3, $a4, $a3
	ldptr.d	$a3, $a0, 14216
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a3, $a6, 3
	ld.w	$a5, $s3, 364
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a3, $a4, $a3
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	ori	$a3, $zero, 16
	addi.w	$a4, $a1, -1
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	blt	$a5, $a3, .LBB25_173
# %bb.162:                              # %.preheader93.i
	pcalau12i	$a1, %pc_hi20(writeChromaCoeff.chroma_dc_context)
	addi.d	$a1, $a1, %pc_lo12(writeChromaCoeff.chroma_dc_context)
	ldptr.w	$a2, $a2, 4008
	alsl.d	$a3, $a4, $a1, 2
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	beqz	$a2, .LBB25_177
# %bb.163:
	ldptr.w	$a1, $a0, 15532
	bltz	$a1, .LBB25_197
# %bb.164:                              # %.lr.ph.i
	ldptr.d	$a1, $a0, 14168
	ld.d	$a1, $a1, 8
	move	$s4, $zero
	move	$s1, $zero
	ld.d	$s5, $a1, 0
	ld.d	$s6, $a1, 8
	ld.w	$s8, $a3, 0
	ori	$fp, $zero, 13
	ori	$s7, $zero, 1
	lu12i.w	$a1, 2
	ori	$s0, $a1, 1536
	.p2align	4, , 16
.LBB25_165:                             # =>This Inner Loop Header: Depth=1
	ld.w	$s2, $s5, 0
	st.w	$s2, $sp, 164
	ld.w	$a1, $s6, 0
	st.w	$a1, $sp, 168
	st.w	$s8, $sp, 184
	ld.wu	$a1, $s3, 72
	bltu	$fp, $a1, .LBB25_172
# %bb.166:                              #   in Loop: Header=BB25_165 Depth=1
	sll.d	$a2, $s7, $a1
	and	$a3, $a2, $s0
	ori	$a2, $zero, 8
	beqz	$a3, .LBB25_172
# %bb.167:                              #   in Loop: Header=BB25_165 Depth=1
	st.w	$a2, $sp, 160
	bltu	$fp, $a1, .LBB25_169
.LBB25_168:                             #   in Loop: Header=BB25_165 Depth=1
	sll.d	$a3, $s7, $a1
	and	$a4, $a3, $s0
	ori	$a3, $zero, 1
	bnez	$a4, .LBB25_170
.LBB25_169:                             #   in Loop: Header=BB25_165 Depth=1
	addi.d	$a1, $a1, -14
	sltui	$a3, $a1, 1
.LBB25_170:                             #   in Loop: Header=BB25_165 Depth=1
	st.w	$a3, $a0, 104
	st.w	$zero, $a0, 108
	slli.d	$a0, $a2, 2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 24
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 172
	ld.w	$a0, $s3, 48
	add.d	$a0, $a0, $a1
	st.w	$a0, $s3, 48
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a2, $a0, 15532
	add.d	$s1, $a1, $s1
	bge	$s4, $a2, .LBB25_178
# %bb.171:                              #   in Loop: Header=BB25_165 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s2, .LBB25_165
	b	.LBB25_178
	.p2align	4, , 16
.LBB25_172:                             #   in Loop: Header=BB25_165 Depth=1
	addi.d	$a2, $a1, -14
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 12
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 8
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	st.w	$a2, $sp, 160
	bgeu	$fp, $a1, .LBB25_168
	b	.LBB25_169
.LBB25_173:
	move	$s1, $zero
	b	.LBB25_199
.LBB25_174:                             # %.thread.i
	ld.bu	$a0, $s2, 364
	andi	$a0, $a0, 15
	beqz	$a0, .LBB25_116
# %bb.175:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 5100
	beqz	$a0, .LBB25_116
# %bb.176:
	ld.w	$a0, $s2, 472
	st.w	$a0, $sp, 164
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 160
	pcalau12i	$a0, %got_pc_hi20(writeMB_transform_size)
	ld.d	$a0, $a0, %got_pc_lo12(writeMB_transform_size)
	ld.d	$a2, $a0, 0
	addi.d	$a0, $sp, 160
	move	$a1, $s1
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s2, 32
	add.d	$a1, $a1, $a0
	st.w	$a1, $s2, 32
	add.d	$s3, $a0, $s3
	b	.LBB25_116
.LBB25_177:
	ori	$a0, $zero, 6
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB25_178:                             # %.loopexit92.i
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	beqz	$a0, .LBB25_198
.LBB25_179:
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 15532
	bltz	$a1, .LBB25_199
# %bb.180:                              # %.lr.ph.1.i
	ldptr.d	$a1, $a0, 14168
	ld.d	$a1, $a1, 16
	move	$s4, $zero
	ld.d	$s5, $a1, 0
	ld.d	$s6, $a1, 8
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$s2, $a1, 0
	ori	$s8, $zero, 13
	ori	$fp, $zero, 1
	lu12i.w	$a1, 2
	ori	$s0, $a1, 1536
	.p2align	4, , 16
.LBB25_181:                             # =>This Inner Loop Header: Depth=1
	ld.w	$s7, $s5, 0
	st.w	$s7, $sp, 164
	ld.w	$a1, $s6, 0
	st.w	$a1, $sp, 168
	st.w	$s2, $sp, 184
	ld.wu	$a1, $s3, 72
	bltu	$s8, $a1, .LBB25_188
# %bb.182:                              #   in Loop: Header=BB25_181 Depth=1
	sll.d	$a2, $fp, $a1
	and	$a3, $a2, $s0
	ori	$a2, $zero, 8
	beqz	$a3, .LBB25_188
# %bb.183:                              #   in Loop: Header=BB25_181 Depth=1
	st.w	$a2, $sp, 160
	bltu	$s8, $a1, .LBB25_185
.LBB25_184:                             #   in Loop: Header=BB25_181 Depth=1
	sll.d	$a3, $fp, $a1
	and	$a4, $a3, $s0
	ori	$a3, $zero, 1
	bnez	$a4, .LBB25_186
.LBB25_185:                             #   in Loop: Header=BB25_181 Depth=1
	addi.d	$a1, $a1, -14
	sltui	$a3, $a1, 1
.LBB25_186:                             #   in Loop: Header=BB25_181 Depth=1
	st.w	$a3, $a0, 104
	st.w	$fp, $a0, 108
	slli.d	$a0, $a2, 2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 24
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 172
	ld.w	$a0, $s3, 48
	add.d	$a0, $a0, $a1
	st.w	$a0, $s3, 48
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a2, $a0, 15532
	add.d	$s1, $a1, $s1
	bge	$s4, $a2, .LBB25_199
# %bb.187:                              #   in Loop: Header=BB25_181 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bnez	$s7, .LBB25_181
	b	.LBB25_199
	.p2align	4, , 16
.LBB25_188:                             #   in Loop: Header=BB25_181 Depth=1
	addi.d	$a2, $a1, -14
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 12
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 8
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	st.w	$a2, $sp, 160
	bgeu	$s8, $a1, .LBB25_184
	b	.LBB25_185
.LBB25_189:                             # %._crit_edge237
	blez	$a1, .LBB25_253
.LBB25_190:                             # %.lr.ph236.1
	ldptr.w	$a1, $a0, 15544
	blez	$a1, .LBB25_253
# %bb.191:                              # %.lr.ph236.split.1.preheader
	move	$a2, $zero
	lu12i.w	$a1, 3
	ori	$s0, $a1, 3160
	ori	$s4, $zero, 2
	b	.LBB25_194
	.p2align	4, , 16
.LBB25_192:                             #   in Loop: Header=BB25_194 Depth=1
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
.LBB25_193:                             # %._crit_edge233.1
                                        #   in Loop: Header=BB25_194 Depth=1
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	ldptr.w	$a1, $a0, 15548
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	bge	$a2, $a1, .LBB25_253
.LBB25_194:                             # %.lr.ph236.split.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_196 Depth 2
	ldptr.w	$a1, $a0, 15544
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	blez	$a1, .LBB25_192
# %bb.195:                              # %.lr.ph.1
                                        #   in Loop: Header=BB25_194 Depth=1
	ld.w	$a1, $a0, 188
	move	$s5, $zero
	move	$s6, $zero
	add.w	$a1, $a1, $a2
	slli.d	$s7, $a1, 3
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB25_196:                             #   Parent Loop BB25_194 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 0
	ldx.w	$a2, $a0, $s0
	ldptr.d	$a1, $a1, 6472
	st.w	$a2, $sp, 132
	ld.d	$a1, $a1, 8
	ld.w	$a0, $a0, 184
	st.w	$s4, $sp, 120
	ldx.d	$a1, $a1, $s7
	add.d	$a0, $s5, $a0
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $a1, $a0
	st.w	$a0, $sp, 140
	st.w	$a0, $sp, 124
	ld.w	$a0, $s1, 48
	add.w	$s3, $a2, $s3
	add.d	$a0, $a0, $a2
	st.w	$a0, $s1, 48
	addi.d	$a0, $sp, 120
	move	$a1, $s2
	pcaddu18i	$ra, %call36(writeSE_Fix)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ldptr.w	$a1, $a0, 15544
	addi.w	$s6, $s6, 1
	addi.d	$s5, $s5, 1
	blt	$s6, $a1, .LBB25_196
	b	.LBB25_193
.LBB25_197:
	move	$s1, $zero
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	bnez	$a0, .LBB25_179
.LBB25_198:
	ori	$a0, $zero, 6
	ori	$a3, $zero, 1
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
.LBB25_199:                             # %.loopexit94.i
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bstrins.d	$a1, $zero, 3, 0
	ori	$a0, $zero, 32
	bne	$a1, $a0, .LBB25_251
# %bb.200:                              # %.preheader90.i
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	ldptr.w	$a1, $a0, 15528
	blez	$a1, .LBB25_251
# %bb.201:                              # %.preheader.lr.ph.i
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 5
	pcalau12i	$a2, %pc_hi20(subblk_offset_y)
	addi.d	$a2, $a2, %pc_lo12(subblk_offset_y)
	add.d	$a2, $a2, $a1
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(subblk_offset_x)
	addi.d	$a2, $a2, %pc_lo12(subblk_offset_x)
	add.d	$a2, $a2, $a1
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(writeChromaCoeff.chroma_ac_param)
	addi.d	$a2, $a2, %pc_lo12(writeChromaCoeff.chroma_ac_param)
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $zero, -1
	ori	$a1, $zero, 4
	lu12i.w	$a2, 3
	ori	$s8, $a2, 3240
	ori	$s6, $zero, 13
	lu12i.w	$a2, 2
	ori	$s4, $a2, 1536
	b	.LBB25_204
	.p2align	4, , 16
.LBB25_202:                             #   in Loop: Header=BB25_204 Depth=1
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
.LBB25_203:                             # %.loopexit.i209.3
                                        #   in Loop: Header=BB25_204 Depth=1
	ld.d	$a0, $s0, 0
	ldx.w	$a1, $a0, $s8
	addi.w	$a2, $a1, 3
	addi.d	$a1, $s2, 1
	bge	$s2, $a2, .LBB25_251
.LBB25_204:                             # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_206 Depth 2
                                        #     Child Loop BB25_218 Depth 2
                                        #     Child Loop BB25_230 Depth 2
                                        #     Child Loop BB25_242 Depth 2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	move	$s2, $a1
	slli.d	$a1, $a1, 2
	addi.d	$a1, $a1, -16
	ldptr.w	$a2, $a2, 4008
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	add.d	$s5, $a3, $a1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	add.d	$s7, $a3, $a1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 2
	slli.d	$a3, $s2, 3
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	beqz	$a2, .LBB25_215
# %bb.205:                              #   in Loop: Header=BB25_204 Depth=1
	ldptr.d	$a1, $a0, 14160
	ldx.d	$a1, $a1, $a3
	ld.d	$a1, $a1, 0
	ld.bu	$a2, $s5, 0
	ld.d	$s0, $a1, 0
	ld.d	$s5, $a1, 8
	srli.d	$a1, $a2, 2
	st.w	$a1, $a0, 100
	ld.bu	$a1, $s7, 0
	move	$s7, $zero
	addi.w	$fp, $fp, 1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 96
	.p2align	4, , 16
.LBB25_206:                             #   Parent Loop BB25_204 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s2, $s0, 0
	st.w	$s2, $sp, 164
	ld.w	$a0, $s5, 0
	st.w	$a0, $sp, 168
	ori	$a0, $zero, 7
	st.w	$a0, $sp, 184
	ld.wu	$a1, $s3, 72
	bltu	$s6, $a1, .LBB25_213
# %bb.207:                              #   in Loop: Header=BB25_206 Depth=2
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	and	$a2, $a0, $s4
	ori	$a0, $zero, 10
	beqz	$a2, .LBB25_213
# %bb.208:                              #   in Loop: Header=BB25_206 Depth=2
	st.w	$a0, $sp, 160
	bltu	$s6, $a1, .LBB25_210
.LBB25_209:                             #   in Loop: Header=BB25_206 Depth=2
	ori	$a2, $zero, 1
	sll.d	$a2, $a2, $a1
	and	$a3, $a2, $s4
	ori	$a2, $zero, 1
	bnez	$a3, .LBB25_211
.LBB25_210:                             #   in Loop: Header=BB25_206 Depth=2
	addi.d	$a1, $a1, -14
	sltui	$a2, $a1, 1
.LBB25_211:                             #   in Loop: Header=BB25_206 Depth=2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.w	$a3, $a1, $s8
	st.w	$a2, $a1, 104
	slli.w	$a2, $a3, 1
	slt	$a2, $fp, $a2
	xori	$a2, $a2, 1
	st.w	$a2, $a1, 108
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 24
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s3, 48
	add.d	$a1, $a1, $a0
	st.w	$a1, $s3, 48
	add.d	$s1, $a0, $s1
	ori	$a0, $zero, 14
	bltu	$a0, $s7, .LBB25_214
# %bb.212:                              #   in Loop: Header=BB25_206 Depth=2
	addi.d	$s7, $s7, 1
	addi.d	$s5, $s5, 4
	addi.d	$s0, $s0, 4
	bnez	$s2, .LBB25_206
	b	.LBB25_214
	.p2align	4, , 16
.LBB25_213:                             #   in Loop: Header=BB25_206 Depth=2
	addi.d	$a0, $a1, -14
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 14
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 10
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	st.w	$a0, $sp, 160
	bgeu	$s6, $a1, .LBB25_209
	b	.LBB25_210
	.p2align	4, , 16
.LBB25_214:                             #   in Loop: Header=BB25_204 Depth=1
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	b	.LBB25_216
	.p2align	4, , 16
.LBB25_215:                             #   in Loop: Header=BB25_204 Depth=1
	ld.bu	$a3, $a1, -16
	ori	$a0, $zero, 7
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
.LBB25_216:                             # %.loopexit.i209
                                        #   in Loop: Header=BB25_204 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB25_227
# %bb.217:                              #   in Loop: Header=BB25_204 Depth=1
	ld.d	$a0, $s0, 0
	ldptr.d	$a1, $a0, 14160
	ldx.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 8
	ld.bu	$a2, $s5, 1
	ld.d	$s0, $a1, 0
	ld.d	$s5, $a1, 8
	srli.d	$a1, $a2, 2
	st.w	$a1, $a0, 100
	ld.bu	$a1, $s7, 1
	move	$s7, $zero
	addi.w	$fp, $fp, 1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 96
	.p2align	4, , 16
.LBB25_218:                             #   Parent Loop BB25_204 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s2, $s0, 0
	st.w	$s2, $sp, 164
	ld.w	$a0, $s5, 0
	st.w	$a0, $sp, 168
	ori	$a0, $zero, 7
	st.w	$a0, $sp, 184
	ld.wu	$a1, $s3, 72
	bltu	$s6, $a1, .LBB25_225
# %bb.219:                              #   in Loop: Header=BB25_218 Depth=2
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	and	$a2, $a0, $s4
	ori	$a0, $zero, 10
	beqz	$a2, .LBB25_225
# %bb.220:                              #   in Loop: Header=BB25_218 Depth=2
	st.w	$a0, $sp, 160
	bltu	$s6, $a1, .LBB25_222
.LBB25_221:                             #   in Loop: Header=BB25_218 Depth=2
	ori	$a2, $zero, 1
	sll.d	$a2, $a2, $a1
	and	$a3, $a2, $s4
	ori	$a2, $zero, 1
	bnez	$a3, .LBB25_223
.LBB25_222:                             #   in Loop: Header=BB25_218 Depth=2
	addi.d	$a1, $a1, -14
	sltui	$a2, $a1, 1
.LBB25_223:                             #   in Loop: Header=BB25_218 Depth=2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.w	$a3, $a1, $s8
	st.w	$a2, $a1, 104
	slli.w	$a2, $a3, 1
	slt	$a2, $fp, $a2
	xori	$a2, $a2, 1
	st.w	$a2, $a1, 108
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 24
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s3, 48
	add.d	$a1, $a1, $a0
	st.w	$a1, $s3, 48
	add.d	$s1, $a0, $s1
	ori	$a0, $zero, 14
	bltu	$a0, $s7, .LBB25_226
# %bb.224:                              #   in Loop: Header=BB25_218 Depth=2
	addi.d	$s7, $s7, 1
	addi.d	$s5, $s5, 4
	addi.d	$s0, $s0, 4
	bnez	$s2, .LBB25_218
	b	.LBB25_226
	.p2align	4, , 16
.LBB25_225:                             #   in Loop: Header=BB25_218 Depth=2
	addi.d	$a0, $a1, -14
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 14
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 10
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	st.w	$a0, $sp, 160
	bgeu	$s6, $a1, .LBB25_221
	b	.LBB25_222
	.p2align	4, , 16
.LBB25_226:                             #   in Loop: Header=BB25_204 Depth=1
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	b	.LBB25_228
	.p2align	4, , 16
.LBB25_227:                             #   in Loop: Header=BB25_204 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.bu	$a3, $a0, -15
	ori	$a0, $zero, 7
	ori	$a2, $zero, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
.LBB25_228:                             # %.loopexit.i209.1
                                        #   in Loop: Header=BB25_204 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB25_239
# %bb.229:                              #   in Loop: Header=BB25_204 Depth=1
	ld.d	$a0, $s0, 0
	ldptr.d	$a1, $a0, 14160
	ldx.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $s5, 2
	ld.d	$s0, $a1, 0
	ld.d	$s5, $a1, 8
	srli.d	$a1, $a2, 2
	st.w	$a1, $a0, 100
	ld.bu	$a1, $s7, 2
	move	$s7, $zero
	addi.w	$fp, $fp, 1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 96
	.p2align	4, , 16
.LBB25_230:                             #   Parent Loop BB25_204 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s2, $s0, 0
	st.w	$s2, $sp, 164
	ld.w	$a0, $s5, 0
	st.w	$a0, $sp, 168
	ori	$a0, $zero, 7
	st.w	$a0, $sp, 184
	ld.wu	$a1, $s3, 72
	bltu	$s6, $a1, .LBB25_237
# %bb.231:                              #   in Loop: Header=BB25_230 Depth=2
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	and	$a2, $a0, $s4
	ori	$a0, $zero, 10
	beqz	$a2, .LBB25_237
# %bb.232:                              #   in Loop: Header=BB25_230 Depth=2
	st.w	$a0, $sp, 160
	bltu	$s6, $a1, .LBB25_234
.LBB25_233:                             #   in Loop: Header=BB25_230 Depth=2
	ori	$a2, $zero, 1
	sll.d	$a2, $a2, $a1
	and	$a3, $a2, $s4
	ori	$a2, $zero, 1
	bnez	$a3, .LBB25_235
.LBB25_234:                             #   in Loop: Header=BB25_230 Depth=2
	addi.d	$a1, $a1, -14
	sltui	$a2, $a1, 1
.LBB25_235:                             #   in Loop: Header=BB25_230 Depth=2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.w	$a3, $a1, $s8
	st.w	$a2, $a1, 104
	slli.w	$a2, $a3, 1
	slt	$a2, $fp, $a2
	xori	$a2, $a2, 1
	st.w	$a2, $a1, 108
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 24
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s3, 48
	add.d	$a1, $a1, $a0
	st.w	$a1, $s3, 48
	add.d	$s1, $a0, $s1
	ori	$a0, $zero, 14
	bltu	$a0, $s7, .LBB25_238
# %bb.236:                              #   in Loop: Header=BB25_230 Depth=2
	addi.d	$s7, $s7, 1
	addi.d	$s5, $s5, 4
	addi.d	$s0, $s0, 4
	bnez	$s2, .LBB25_230
	b	.LBB25_238
	.p2align	4, , 16
.LBB25_237:                             #   in Loop: Header=BB25_230 Depth=2
	addi.d	$a0, $a1, -14
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 14
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 10
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	st.w	$a0, $sp, 160
	bgeu	$s6, $a1, .LBB25_233
	b	.LBB25_234
	.p2align	4, , 16
.LBB25_238:                             #   in Loop: Header=BB25_204 Depth=1
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	b	.LBB25_240
	.p2align	4, , 16
.LBB25_239:                             #   in Loop: Header=BB25_204 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.bu	$a3, $a0, -14
	ori	$a0, $zero, 7
	ori	$a2, $zero, 2
	move	$a1, $s2
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
.LBB25_240:                             # %.loopexit.i209.2
                                        #   in Loop: Header=BB25_204 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB25_250
# %bb.241:                              #   in Loop: Header=BB25_204 Depth=1
	ld.d	$a0, $s0, 0
	ldptr.d	$a1, $a0, 14160
	ldx.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 24
	ld.bu	$a2, $s5, 3
	ld.d	$s0, $a1, 0
	ld.d	$s5, $a1, 8
	srli.d	$a1, $a2, 2
	st.w	$a1, $a0, 100
	ld.bu	$a1, $s7, 3
	move	$s7, $zero
	addi.w	$fp, $fp, 1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 96
	.p2align	4, , 16
.LBB25_242:                             #   Parent Loop BB25_204 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s2, $s0, 0
	st.w	$s2, $sp, 164
	ld.w	$a0, $s5, 0
	st.w	$a0, $sp, 168
	ori	$a0, $zero, 7
	st.w	$a0, $sp, 184
	ld.wu	$a1, $s3, 72
	bltu	$s6, $a1, .LBB25_249
# %bb.243:                              #   in Loop: Header=BB25_242 Depth=2
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	and	$a2, $a0, $s4
	ori	$a0, $zero, 10
	beqz	$a2, .LBB25_249
# %bb.244:                              #   in Loop: Header=BB25_242 Depth=2
	st.w	$a0, $sp, 160
	bltu	$s6, $a1, .LBB25_246
.LBB25_245:                             #   in Loop: Header=BB25_242 Depth=2
	ori	$a2, $zero, 1
	sll.d	$a2, $a2, $a1
	and	$a3, $a2, $s4
	ori	$a2, $zero, 1
	bnez	$a3, .LBB25_247
.LBB25_246:                             #   in Loop: Header=BB25_242 Depth=2
	addi.d	$a1, $a1, -14
	sltui	$a2, $a1, 1
.LBB25_247:                             #   in Loop: Header=BB25_242 Depth=2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.w	$a3, $a1, $s8
	st.w	$a2, $a1, 104
	slli.w	$a2, $a3, 1
	slt	$a2, $fp, $a2
	xori	$a2, $a2, 1
	st.w	$a2, $a1, 108
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 24
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 172
	ld.w	$a1, $s3, 48
	add.d	$a1, $a1, $a0
	st.w	$a1, $s3, 48
	add.d	$s1, $a0, $s1
	ori	$a0, $zero, 14
	bltu	$a0, $s7, .LBB25_202
# %bb.248:                              #   in Loop: Header=BB25_242 Depth=2
	addi.d	$s7, $s7, 1
	addi.d	$s5, $s5, 4
	addi.d	$s0, $s0, 4
	bnez	$s2, .LBB25_242
	b	.LBB25_202
	.p2align	4, , 16
.LBB25_249:                             #   in Loop: Header=BB25_242 Depth=2
	addi.d	$a0, $a1, -14
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 14
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 10
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	st.w	$a0, $sp, 160
	bgeu	$s6, $a1, .LBB25_245
	b	.LBB25_246
	.p2align	4, , 16
.LBB25_250:                             #   in Loop: Header=BB25_204 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.bu	$a3, $a0, -13
	ori	$a0, $zero, 7
	ori	$a2, $zero, 3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
	b	.LBB25_203
.LBB25_251:                             # %writeChromaCoeff.exit
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a0, $a1, 0
	add.d	$s3, $a0, $s1
	st.w	$s3, $a1, 0
.LBB25_252:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.w	$a0, $s3, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
.LBB25_253:                             # %.loopexit
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.Lfunc_end25:
	.size	writeMBLayer, .Lfunc_end25-writeMBLayer
                                        # -- End function
	.p2align	5                               # -- Begin function writeMotionInfo2NAL
	.type	writeMotionInfo2NAL,@function
writeMotionInfo2NAL:                    # @writeMotionInfo2NAL
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
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a2, $a0, 0
	ld.w	$a0, $a2, 12
	ldptr.d	$a1, $a2, 14224
	ld.w	$t2, $a2, 20
	ori	$a3, $zero, 536
	mul.d	$a0, $a0, $a3
	add.d	$t1, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s8, $a0, %got_pc_lo12(input)
	ld.w	$a1, $t1, 72
	ld.d	$a0, $s8, 0
	addi.d	$a3, $a1, -8
	sltui	$a3, $a3, 1
	masknez	$a4, $a1, $a3
	ori	$t3, $zero, 4
	maskeqz	$a3, $t3, $a3
	or	$a3, $a3, $a4
	alsl.d	$a3, $a3, $a0, 3
	ld.w	$a4, $a3, 72
	ld.w	$a3, $a3, 76
	srai.d	$s4, $a4, 2
	srai.d	$a3, $a3, 2
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	ori	$a3, $zero, 13
	lu12i.w	$a5, 2
	bltu	$a3, $a1, .LBB26_12
# %bb.1:
	ori	$a3, $zero, 1
	sll.d	$a3, $a3, $a1
	ori	$a4, $a5, 1537
	and	$a3, $a3, $a4
	beqz	$a3, .LBB26_3
# %bb.2:
	move	$fp, $zero
	ori	$a0, $zero, 13
	bgeu	$a0, $a1, .LBB26_27
	b	.LBB26_31
.LBB26_3:
	ori	$a3, $zero, 8
	bne	$a1, $a3, .LBB26_12
# %bb.4:
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a1, 0
	ldptr.d	$a3, $a1, 6488
	ld.w	$a1, $a2, 168
	ld.w	$a6, $a2, 172
	ld.d	$a2, $a3, 0
	addi.w	$a3, $a1, 3
	addi.w	$a4, $a6, 3
	slt	$a5, $a3, $a1
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a1, $a5
	or	$a5, $a5, $a3
	slt	$a3, $a4, $a6
	masknez	$a4, $a4, $a3
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a4
	sub.d	$a4, $a5, $a1
	addi.d	$a4, $a4, 1
.LBB26_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_6 Depth 2
	move	$a5, $a6
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a2, $a6
	add.d	$a6, $a6, $a1
	move	$a7, $a4
	.p2align	4, , 16
.LBB26_6:                               #   Parent Loop BB26_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t0, $a6, 0
	bnez	$t0, .LBB26_12
# %bb.7:                                #   in Loop: Header=BB26_6 Depth=2
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 1
	bnez	$a7, .LBB26_6
# %bb.8:                                #   in Loop: Header=BB26_5 Depth=1
	addi.d	$a6, $a5, 1
	bne	$a5, $a3, .LBB26_5
# %bb.9:                                # %ZeroRef.exit
	ldptr.w	$a1, $a0, 4008
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB26_12
# %bb.10:                               # %ZeroRef.exit
	beq	$t2, $a0, .LBB26_12
# %bb.11:
	move	$fp, $zero
	b	.LBB26_31
.LBB26_12:                              # %ZeroRef.exit.thread
	st.d	$t2, $sp, 8                     # 8-byte Folded Spill
	addi.d	$s1, $t1, 392
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s2, $t1, 376
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(assignSE2partition)
	ld.d	$a0, $a0, %got_pc_lo12(assignSE2partition)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(writeRefFrame)
	ld.d	$a0, $a0, %got_pc_lo12(writeRefFrame)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$s3, $zero
	move	$fp, $zero
	b	.LBB26_14
	.p2align	4, , 16
.LBB26_13:                              #   in Loop: Header=BB26_14 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.w	$s3, $s3, $a0
	bge	$s3, $t3, .LBB26_19
.LBB26_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_16 Depth 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 172
	move	$s0, $zero
	move	$s5, $zero
	add.w	$a0, $a0, $s3
	slli.d	$s7, $a0, 3
	b	.LBB26_16
	.p2align	4, , 16
.LBB26_15:                              #   in Loop: Header=BB26_16 Depth=2
	add.w	$s5, $s5, $s4
	add.d	$s0, $s0, $s4
	bge	$s5, $t3, .LBB26_13
.LBB26_16:                              #   Parent Loop BB26_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$a0, $s5, 1
	add.w	$a0, $a0, $s3
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s1, $a0
	bstrins.d	$a1, $zero, 1, 1
	bnez	$a1, .LBB26_15
# %bb.17:                               #   in Loop: Header=BB26_16 Depth=2
	ldx.w	$a0, $s2, $a0
	beqz	$a0, .LBB26_15
# %bb.18:                               #   in Loop: Header=BB26_16 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ldx.d	$a0, $a0, $s7
	ld.d	$a1, $s8, 0
	ld.w	$a3, $a2, 168
	ldptr.w	$a1, $a1, 4016
	add.d	$a0, $a0, $a3
	ldx.b	$a0, $a0, $s0
	ld.w	$a3, $a2, 12
	slli.d	$a1, $a1, 3
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a1, $a4, $a1
	ldptr.d	$a4, $a2, 14216
	ldptr.d	$a5, $a2, 14224
	ori	$a6, $zero, 536
	mul.d	$a3, $a3, $a6
	ld.w	$a1, $a1, 12
	ld.d	$a4, $a4, 24
	add.d	$s6, $a5, $a3
	ld.w	$a3, $s6, 432
	ori	$a5, $zero, 104
	mul.d	$a1, $a1, $a5
	add.d	$a1, $a4, $a1
	st.w	$s5, $a2, 96
	st.w	$s3, $a2, 100
	slli.d	$a2, $a3, 3
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a2, $a3, $a2
	st.w	$a0, $sp, 84
	ori	$a0, $zero, 3
	st.w	$a0, $sp, 80
	st.w	$zero, $sp, 88
	addi.d	$a0, $sp, 80
	jirl	$ra, $a2, 0
	ori	$t3, $zero, 4
	ld.w	$a0, $sp, 92
	ld.w	$a1, $s6, 36
	add.d	$a1, $a1, $a0
	st.w	$a1, $s6, 36
	add.w	$fp, $a0, $fp
	b	.LBB26_15
.LBB26_19:                              # %.preheader162
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	move	$s5, $zero
	ori	$s3, $zero, 1
	ori	$s0, $zero, 4
	b	.LBB26_21
	.p2align	4, , 16
.LBB26_20:                              #   in Loop: Header=BB26_21 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.w	$s5, $s5, $a0
	bge	$s5, $s0, .LBB26_26
.LBB26_21:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_23 Depth 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 172
	move	$s7, $zero
	move	$s8, $zero
	add.w	$a0, $a0, $s5
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB26_23
	.p2align	4, , 16
.LBB26_22:                              #   in Loop: Header=BB26_23 Depth=2
	add.w	$s8, $s8, $s4
	add.d	$s7, $s7, $s4
	bge	$s8, $s0, .LBB26_20
.LBB26_23:                              #   Parent Loop BB26_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$a0, $s8, 1
	add.w	$a0, $a0, $s5
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s1, $a0
	addi.w	$a1, $a1, -1
	bltu	$s3, $a1, .LBB26_22
# %bb.24:                               #   in Loop: Header=BB26_23 Depth=2
	ldx.w	$a0, $s2, $a0
	beqz	$a0, .LBB26_22
# %bb.25:                               #   in Loop: Header=BB26_23 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.w	$a3, $a2, 168
	ldptr.w	$a1, $a1, 4016
	add.d	$a0, $a0, $a3
	ldx.b	$a0, $a0, $s7
	ld.w	$a3, $a2, 12
	slli.d	$a1, $a1, 3
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a1, $a4, $a1
	ldptr.d	$a4, $a2, 14216
	ldptr.d	$a5, $a2, 14224
	ori	$a6, $zero, 536
	mul.d	$a3, $a3, $a6
	ld.w	$a1, $a1, 12
	ld.d	$a4, $a4, 24
	add.d	$s6, $a5, $a3
	ld.w	$a3, $s6, 432
	ori	$a5, $zero, 104
	mul.d	$a1, $a1, $a5
	add.d	$a1, $a4, $a1
	st.w	$s8, $a2, 96
	st.w	$s5, $a2, 100
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$a2, $a2, 8
	st.w	$a0, $sp, 84
	ori	$a0, $zero, 3
	st.w	$a0, $sp, 80
	st.w	$s3, $sp, 88
	addi.d	$a0, $sp, 80
	jirl	$ra, $a2, 0
	ld.w	$a0, $sp, 92
	ld.w	$a1, $s6, 36
	add.d	$a1, $a1, $a0
	st.w	$a1, $s6, 36
	add.w	$fp, $a0, $fp
	b	.LBB26_22
.LBB26_26:                              # %.loopexit163.loopexit
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $t1, 72
	ld.d	$t2, $sp, 8                     # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$a0, $zero, 13
	bltu	$a0, $a1, .LBB26_31
.LBB26_27:                              # %.loopexit163
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $a5, 1537
	and	$a0, $a0, $a2
	beqz	$a0, .LBB26_31
# %bb.28:
	ori	$a0, $zero, 13
	bltu	$a0, $a1, .LBB26_39
.LBB26_29:
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $a5, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB26_39
.LBB26_30:                              # %.loopexit
	move	$a0, $fp
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
.LBB26_31:                              # %.preheader161
	st.d	$t2, $sp, 8                     # 8-byte Folded Spill
	addi.d	$s3, $t1, 392
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s5, $t1, 376
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$s0, $zero
	ori	$s7, $zero, 4
	b	.LBB26_33
	.p2align	4, , 16
.LBB26_32:                              #   in Loop: Header=BB26_33 Depth=1
	move	$s0, $s1
	bge	$s1, $s7, .LBB26_38
.LBB26_33:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_35 Depth 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 172
	move	$s8, $zero
	move	$s2, $zero
	add.w	$a0, $a0, $s0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.w	$s1, $s0, $a1
	slli.d	$s6, $a0, 3
	b	.LBB26_35
	.p2align	4, , 16
.LBB26_34:                              #   in Loop: Header=BB26_35 Depth=2
	add.w	$s2, $s2, $s4
	add.d	$s8, $s8, $s4
	bge	$s2, $s7, .LBB26_32
.LBB26_35:                              #   Parent Loop BB26_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$a0, $s2, 1
	add.w	$a0, $a0, $s0
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s3, $a0
	bstrins.d	$a1, $zero, 1, 1
	bnez	$a1, .LBB26_34
# %bb.36:                               #   in Loop: Header=BB26_35 Depth=2
	ldx.w	$a6, $s5, $a0
	beqz	$a6, .LBB26_34
# %bb.37:                               #   in Loop: Header=BB26_35 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.d	$a0, $a0, $s6
	ld.w	$a1, $a1, 168
	add.d	$a0, $a0, $a1
	ldx.b	$a4, $a0, $s8
	add.w	$a2, $s4, $s2
	move	$a0, $s2
	move	$a1, $s0
	move	$a3, $s1
	move	$a5, $zero
	pcaddu18i	$ra, %call36(writeMotionVector8x8)
	jirl	$ra, $ra, 0
	add.w	$fp, $a0, $fp
	b	.LBB26_34
.LBB26_38:                              # %thread-pre-split
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $t1, 72
	ld.d	$t2, $sp, 8                     # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$a0, $zero, 13
	bgeu	$a0, $a1, .LBB26_29
.LBB26_39:
	beqz	$a1, .LBB26_30
# %bb.40:
	ori	$s3, $zero, 1
	bne	$t2, $s3, .LBB26_30
# %bb.41:                               # %.preheader
	addi.d	$s5, $t1, 392
	addi.d	$s6, $t1, 376
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$s0, $zero
	ori	$s8, $zero, 4
	b	.LBB26_43
	.p2align	4, , 16
.LBB26_42:                              #   in Loop: Header=BB26_43 Depth=1
	move	$s0, $s1
	bge	$s1, $s8, .LBB26_30
.LBB26_43:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_45 Depth 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 172
	move	$s7, $zero
	move	$s2, $zero
	add.w	$a0, $a0, $s0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.w	$s1, $s0, $a1
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB26_45
	.p2align	4, , 16
.LBB26_44:                              #   in Loop: Header=BB26_45 Depth=2
	add.w	$s2, $s2, $s4
	add.d	$s7, $s7, $s4
	bge	$s2, $s8, .LBB26_42
.LBB26_45:                              #   Parent Loop BB26_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$a0, $s2, 1
	add.w	$a0, $a0, $s0
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s5, $a0
	addi.w	$a1, $a1, -1
	bltu	$s3, $a1, .LBB26_44
# %bb.46:                               #   in Loop: Header=BB26_45 Depth=2
	ldx.w	$a6, $s6, $a0
	beqz	$a6, .LBB26_44
# %bb.47:                               #   in Loop: Header=BB26_45 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a2
	ld.w	$a1, $a1, 168
	add.d	$a0, $a0, $a1
	ldx.b	$a4, $a0, $s7
	add.w	$a2, $s4, $s2
	ori	$a5, $zero, 1
	move	$a0, $s2
	move	$a1, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(writeMotionVector8x8)
	jirl	$ra, $ra, 0
	add.w	$fp, $a0, $fp
	b	.LBB26_44
.Lfunc_end26:
	.size	writeMotionInfo2NAL, .Lfunc_end26-writeMotionInfo2NAL
                                        # -- End function
	.globl	write_terminating_bit           # -- Begin function write_terminating_bit
	.p2align	5
	.type	write_terminating_bit,@function
write_terminating_bit:                  # @write_terminating_bit
# %bb.0:
	move	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4016
	slli.d	$a0, $a0, 3
	pcalau12i	$a2, %got_pc_hi20(assignSE2partition)
	ld.d	$a2, $a2, %got_pc_lo12(assignSE2partition)
	ldx.d	$a0, $a2, $a0
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $a2, 0
	ldptr.d	$a2, $a2, 14216
	ld.w	$a0, $a0, 8
	ld.d	$a2, $a2, 24
	ori	$a3, $zero, 104
	mul.d	$a0, $a0, $a3
	ldx.d	$a3, $a2, $a0
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 1
	addi.d	$a0, $a0, 8
	st.w	$a2, $a3, 40
	pcaddu18i	$t8, %call36(biari_encode_symbol_final)
	jr	$t8
.Lfunc_end27:
	.size	write_terminating_bit, .Lfunc_end27-write_terminating_bit
                                        # -- End function
	.globl	set_last_dquant                 # -- Begin function set_last_dquant
	.p2align	5
	.type	set_last_dquant,@function
set_last_dquant:                        # @set_last_dquant
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a1, $a0, 0
	ld.w	$a0, $a1, 12
	ldptr.d	$a2, $a1, 14224
	ori	$a3, $zero, 536
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a2, $a0
	ld.w	$a2, $a0, 72
	beqz	$a2, .LBB28_2
.LBB28_1:
	ld.w	$a0, $a0, 4
	pcalau12i	$a1, %got_pc_hi20(last_dquant)
	ld.d	$a1, $a1, %got_pc_lo12(last_dquant)
	st.w	$a0, $a1, 0
	ret
.LBB28_2:
	ld.w	$a1, $a1, 20
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB28_4
# %bb.3:
	ld.w	$a1, $a0, 364
	bnez	$a1, .LBB28_1
.LBB28_4:
	move	$a0, $zero
	pcalau12i	$a1, %got_pc_hi20(last_dquant)
	ld.d	$a1, $a1, %got_pc_lo12(last_dquant)
	st.w	$a0, $a1, 0
	ret
.Lfunc_end28:
	.size	set_last_dquant, .Lfunc_end28-set_last_dquant
                                        # -- End function
	.globl	write_one_macroblock            # -- Begin function write_one_macroblock
	.p2align	5
	.type	write_one_macroblock,@function
write_one_macroblock:                   # @write_one_macroblock
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$s2, $a1, %got_pc_lo12(img)
	ld.d	$a1, $s2, 0
	ld.w	$a2, $a1, 12
	ldptr.d	$a3, $a1, 14224
	ori	$a4, $zero, 536
	mul.d	$a4, $a2, $a4
	add.d	$fp, $a3, $a4
	ld.w	$a3, $fp, 8
	lu12i.w	$s0, 3
	ori	$a4, $s0, 3320
	ldx.w	$a4, $a1, $a4
	add.d	$a3, $a4, $a3
	stptr.w	$a3, $a1, 15608
	pcalau12i	$a3, %got_pc_hi20(input)
	ld.d	$s1, $a3, %got_pc_lo12(input)
	ld.d	$a3, $s1, 0
	ld.w	$a4, $a3, 272
	beqz	$a4, .LBB29_6
# %bb.1:
	ld.w	$a5, $a1, 20
	ori	$a4, $zero, 1
	bltu	$a4, $a5, .LBB29_6
# %bb.2:
	ld.w	$a5, $fp, 72
	ori	$a6, $zero, 13
	bltu	$a6, $a5, .LBB29_4
# %bb.3:
	ori	$a6, $zero, 1
	sll.d	$a6, $a6, $a5
	lu12i.w	$a7, 2
	ori	$a7, $a7, 1536
	and	$a6, $a6, $a7
	bnez	$a6, .LBB29_5
.LBB29_4:
	addi.d	$a4, $a5, -14
	sltui	$a4, $a4, 1
.LBB29_5:
	ldptr.d	$a5, $a1, 14240
	slli.d	$a2, $a2, 2
	stx.w	$a4, $a5, $a2
	ld.w	$a2, $a1, 12
.LBB29_6:
	pcalau12i	$a4, %pc_hi20(intras)
	bnez	$a2, .LBB29_8
# %bb.7:
	st.w	$zero, $a4, %pc_lo12(intras)
.LBB29_8:
	ld.w	$a5, $fp, 72
	ori	$a6, $zero, 14
	bltu	$a6, $a5, .LBB29_11
# %bb.9:
	ori	$a6, $zero, 1
	sll.d	$a5, $a6, $a5
	lu12i.w	$a6, 6
	ori	$a6, $a6, 1536
	and	$a5, $a5, $a6
	beqz	$a5, .LBB29_11
# %bb.10:
	ld.w	$a5, $a4, %pc_lo12(intras)
	addi.d	$a5, $a5, 1
	st.w	$a5, $a4, %pc_lo12(intras)
.LBB29_11:
	ldptr.w	$a4, $a3, 4008
	ori	$s4, $zero, 1
	bne	$a4, $s4, .LBB29_15
# %bb.12:
	beqz	$a0, .LBB29_15
# %bb.13:
	ldptr.d	$a0, $a1, 14216
	ld.w	$a1, $a0, 12
	beq	$a2, $a1, .LBB29_15
# %bb.14:
	ldptr.w	$a1, $a3, 4016
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(assignSE2partition)
	ld.d	$a2, $a2, %got_pc_lo12(assignSE2partition)
	ldx.d	$a1, $a2, $a1
	ld.w	$a1, $a1, 8
	ld.d	$a0, $a0, 24
	ori	$a2, $zero, 104
	mul.d	$a1, $a1, $a2
	ldx.d	$a2, $a0, $a1
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	st.w	$a1, $a2, 40
	addi.d	$a0, $a0, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(biari_encode_symbol_final)
	jirl	$ra, $ra, 0
.LBB29_15:
	pcalau12i	$a0, %got_pc_hi20(cabac_encoding)
	ld.d	$s3, $a0, %got_pc_lo12(cabac_encoding)
	st.w	$s4, $s3, 0
	addi.d	$a1, $sp, 20
	move	$a0, $zero
	pcaddu18i	$ra, %call36(writeMBLayer)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 72
	ld.d	$a0, $s2, 0
	bnez	$a1, .LBB29_19
# %bb.16:
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB29_18
# %bb.17:
	ld.w	$a1, $fp, 364
	bnez	$a1, .LBB29_19
.LBB29_18:                              # %.loopexit
	ld.w	$a1, $a0, 12
	ld.d	$a2, $a0, 152
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ldptr.w	$a2, $a0, 15528
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a2, 2
	addi.d	$a2, $a1, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 12
	ld.d	$a2, $a0, 152
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ldptr.w	$a2, $a0, 15528
	ld.d	$a0, $a1, 8
	slli.d	$a1, $a2, 2
	addi.d	$a2, $a1, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 12
	ld.d	$a2, $a0, 152
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ldptr.w	$a2, $a0, 15528
	ld.d	$a0, $a1, 16
	slli.d	$a1, $a2, 2
	addi.d	$a2, $a1, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 12
	ld.d	$a2, $a0, 152
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ldptr.w	$a2, $a0, 15528
	ld.d	$a0, $a1, 24
	slli.d	$a1, $a2, 2
	addi.d	$a2, $a1, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
.LBB29_19:
	ld.w	$a1, $a0, 12
	ldptr.d	$a2, $a0, 14224
	ori	$a3, $zero, 536
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a2, $a1
	ld.w	$a2, $a1, 72
	beqz	$a2, .LBB29_21
.LBB29_20:
	ld.w	$a1, $a1, 4
	b	.LBB29_24
.LBB29_21:
	ld.w	$a2, $a0, 20
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB29_23
# %bb.22:
	ld.w	$a2, $a1, 364
	bnez	$a2, .LBB29_20
.LBB29_23:
	move	$a1, $zero
.LBB29_24:                              # %set_last_dquant.exit
	pcalau12i	$a2, %got_pc_hi20(last_dquant)
	ld.d	$a2, $a2, %got_pc_lo12(last_dquant)
	st.w	$a1, $a2, 0
	ld.w	$a3, $fp, 32
	ld.w	$a4, $fp, 44
	ld.w	$a5, $fp, 36
	ld.w	$a1, $fp, 40
	ld.w	$a2, $fp, 52
	ld.w	$a6, $fp, 48
	add.d	$a3, $a5, $a3
	add.d	$a4, $a3, $a4
	add.d	$a4, $a4, $a1
	ld.d	$a5, $s1, 0
	add.d	$a4, $a4, $a2
	add.d	$a4, $a4, $a6
	st.w	$a4, $fp, 28
	ldptr.w	$a4, $a5, 5116
	beqz	$a4, .LBB29_27
# %bb.25:
	add.d	$a1, $a3, $a1
	add.d	$a1, $a1, $a2
	pcalau12i	$a2, %pc_hi20(generic_RC)
	ld.d	$a2, $a2, %pc_lo12(generic_RC)
	stptr.w	$a1, $a0, 15400
	ld.w	$a3, $fp, 44
	ld.w	$a4, $fp, 48
	ld.w	$a5, $a2, 20
	add.d	$a3, $a4, $a3
	add.d	$a4, $a5, $a3
	ld.w	$a5, $a2, 16
	ldptr.w	$a6, $a0, 15404
	ldptr.w	$a7, $a0, 15352
	st.w	$a4, $a2, 20
	add.d	$a4, $a5, $a1
	st.w	$a4, $a2, 16
	stptr.w	$a3, $a0, 15396
	bgeu	$a6, $a7, .LBB29_27
# %bb.26:
	ld.w	$a4, $a2, 24
	ld.w	$a5, $a2, 28
	add.d	$a1, $a4, $a1
	st.w	$a1, $a2, 24
	add.d	$a1, $a5, $a3
	st.w	$a1, $a2, 28
.LBB29_27:
	ori	$a1, $s0, 3100
	ldx.w	$a1, $a0, $a1
	addi.d	$a1, $a1, 1
	stptr.w	$a1, $a0, 15388
	ld.w	$a0, $fp, 28
	pcalau12i	$a1, %got_pc_hi20(stats)
	ld.d	$a1, $a1, %got_pc_lo12(stats)
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a1, 32
	add.d	$a0, $a2, $a0
	st.w	$a0, $a1, 32
	st.w	$zero, $s3, 0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end29:
	.size	write_one_macroblock, .Lfunc_end29-write_one_macroblock
                                        # -- End function
	.globl	writeReferenceFrame             # -- Begin function writeReferenceFrame
	.p2align	5
	.type	writeReferenceFrame,@function
writeReferenceFrame:                    # @writeReferenceFrame
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.w	$a5, $a0, 12
	ldptr.d	$a6, $a0, 14224
	ldptr.d	$a7, $a0, 14216
	ori	$t0, $zero, 536
	mul.d	$a5, $a5, $t0
	add.d	$fp, $a6, $a5
	pcalau12i	$a5, %got_pc_hi20(input)
	ld.d	$a5, $a5, %got_pc_lo12(input)
	ld.d	$a5, $a5, 0
	ldptr.w	$a5, $a5, 4016
	slli.d	$a5, $a5, 3
	pcalau12i	$a6, %got_pc_hi20(assignSE2partition)
	ld.d	$a6, $a6, %got_pc_lo12(assignSE2partition)
	ldx.d	$a5, $a6, $a5
	ld.w	$a6, $fp, 432
	ld.d	$a7, $a7, 24
	ld.w	$a5, $a5, 12
	sltui	$t0, $a3, 1
	add.w	$a6, $a6, $t0
	ori	$a3, $zero, 104
	mul.d	$a3, $a5, $a3
	add.d	$a3, $a7, $a3
	st.w	$a4, $sp, 12
	ori	$a4, $zero, 3
	st.w	$a4, $sp, 8
	st.w	$t0, $sp, 16
	st.w	$a1, $a0, 96
	st.w	$a2, $a0, 100
	slli.d	$a0, $a6, 3
	pcalau12i	$a1, %got_pc_hi20(writeRefFrame)
	ld.d	$a1, $a1, %got_pc_lo12(writeRefFrame)
	ldx.d	$a2, $a1, $a0
	addi.d	$a0, $sp, 8
	move	$a1, $a3
	jirl	$ra, $a2, 0
	ld.w	$a1, $fp, 36
	ld.w	$a0, $sp, 20
	add.d	$a1, $a1, $a0
	st.w	$a1, $fp, 36
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end30:
	.size	writeReferenceFrame, .Lfunc_end30-writeReferenceFrame
                                        # -- End function
	.globl	writeMotionVector8x8            # -- Begin function writeMotionVector8x8
	.p2align	5
	.type	writeMotionVector8x8,@function
writeMotionVector8x8:                   # @writeMotionVector8x8
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
	move	$t3, $a4
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	move	$s8, $a1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$t0, $a0, %got_pc_lo12(img)
	ld.d	$a7, $t0, 0
	ld.w	$a1, $a7, 12
	ldptr.d	$a0, $a7, 14224
	ori	$a3, $zero, 536
	mul.d	$a3, $a1, $a3
	add.d	$t1, $a0, $a3
	ld.hu	$a3, $t1, 480
	ldptr.d	$a4, $a7, 14384
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	beqz	$a3, .LBB31_5
# %bb.1:
	bnez	$t3, .LBB31_5
# %bb.2:
	ori	$a4, $zero, 1
	bne	$a6, $a4, .LBB31_5
# %bb.3:
	ld.w	$a4, $t1, 392
	ori	$t2, $zero, 2
	bne	$a4, $t2, .LBB31_5
# %bb.4:
	addi.d	$a3, $a3, -1
	sltui	$a3, $a3, 1
	lu12i.w	$a4, 3
	ori	$t2, $a4, 2112
	masknez	$t2, $t2, $a3
	ori	$a4, $a4, 2104
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $t2
	ldx.d	$a3, $a7, $a3
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
.LBB31_5:
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	bge	$s8, $a3, .LBB31_32
# %bb.6:                                # %.preheader70.lr.ph
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	bge	$a3, $a2, .LBB31_32
# %bb.7:                                # %.preheader70.lr.ph.split.us
	st.d	$t1, $sp, 184                   # 8-byte Folded Spill
	st.d	$t0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(input)
	ld.d	$a3, $a3, %got_pc_lo12(input)
	ld.d	$a3, $a3, 0
	alsl.d	$a4, $a6, $a3, 3
	ldptr.w	$a3, $a3, 4016
	ld.wu	$s1, $a4, 136
	ld.w	$s0, $a4, 140
	slli.d	$a3, $a3, 3
	pcalau12i	$a4, %got_pc_hi20(assignSE2partition)
	ld.d	$a4, $a4, %got_pc_lo12(assignSE2partition)
	ldptr.d	$t4, $a7, 14216
	ldx.d	$t0, $a4, $a3
	ldptr.d	$a3, $a7, 14376
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	addi.w	$s5, $s1, 0
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.d	$t0, $sp, 176                   # 8-byte Folded Spill
	st.d	$t4, $sp, 208                   # 8-byte Folded Spill
	blez	$s0, .LBB31_34
# %bb.8:                                # %.preheader70.us.us.preheader
	addi.d	$a2, $a5, 2
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	bstrpick.d	$a2, $s1, 30, 1
	slli.d	$fp, $a2, 1
	ori	$a2, $zero, 536
	mul.d	$a1, $a1, $a2
	slli.d	$a2, $a5, 7
	add.d	$a1, $a1, $a2
	slli.d	$a2, $s8, 5
	add.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	add.d	$a0, $a1, $a0
	addi.d	$a1, $a0, 84
	slli.d	$a2, $s0, 5
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	slli.d	$a2, $s5, 3
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a2, $a0, 76
	addi.d	$a3, $a0, 88
	addi.d	$a4, $a0, 80
	ori	$s3, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(writeMVD)
	ld.d	$a0, $a0, %got_pc_lo12(writeMVD)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$zero, $sp, 224                 # 8-byte Folded Spill
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	st.d	$t3, $sp, 96                    # 8-byte Folded Spill
	b	.LBB31_10
	.p2align	4, , 16
.LBB31_9:                               # %._crit_edge.split.us.us.us
                                        #   in Loop: Header=BB31_10 Depth=1
	add.d	$s8, $s8, $s0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	add.d	$a3, $a3, $a0
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	add.d	$a4, $a4, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bge	$s8, $a0, .LBB31_33
.LBB31_10:                              # %.preheader70.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_12 Depth 2
                                        #       Child Loop BB31_15 Depth 3
                                        #         Child Loop BB31_18 Depth 4
                                        #         Child Loop BB31_21 Depth 4
                                        #       Child Loop BB31_25 Depth 3
                                        #         Child Loop BB31_28 Depth 4
                                        #         Child Loop BB31_31 Depth 4
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a0, $s8, $a0, 3
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a0, $s8, $a0, 3
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	move	$t1, $a2
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	move	$t2, $a1
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	b	.LBB31_12
	.p2align	4, , 16
.LBB31_11:                              # %._crit_edge73.us.us.us.us.1
                                        #   in Loop: Header=BB31_12 Depth=2
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a2, $s7, 20
	ld.d	$s6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $s6, 24
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	add.d	$s2, $a1, $a5
	ori	$a1, $zero, 104
	mul.d	$a1, $a2, $a1
	add.d	$a1, $a3, $a1
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	st.w	$s4, $a4, 96
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	st.w	$s8, $a4, 100
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	st.w	$a0, $sp, 244
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $sp, 248
	ori	$a0, $zero, 5
	st.w	$a0, $sp, 240
	addi.d	$a0, $sp, 240
	jirl	$ra, $a2, 0
	move	$t0, $s7
	ld.w	$a0, $sp, 252
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 36
	add.d	$a1, $a1, $a0
	st.w	$a1, $a2, 36
	add.w	$a0, $a0, $s2
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	add.d	$t6, $s4, $s5
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	add.d	$t2, $t2, $a0
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	add.d	$t1, $t1, $a0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 96                    # 8-byte Folded Reload
	bge	$t6, $a0, .LBB31_9
.LBB31_12:                              # %.preheader69.us.us.us
                                        #   Parent Loop BB31_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB31_15 Depth 3
                                        #         Child Loop BB31_18 Depth 4
                                        #         Child Loop BB31_21 Depth 4
                                        #       Child Loop BB31_25 Depth 3
                                        #         Child Loop BB31_28 Depth 4
                                        #         Child Loop BB31_31 Depth 4
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	slli.d	$s4, $t6, 3
	ldx.d	$a0, $a0, $s4
	ldx.d	$a1, $a1, $s4
	slli.d	$s2, $a5, 3
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $a1, $s2
	slli.d	$s8, $t3, 3
	ldx.d	$a0, $a0, $s8
	ldx.d	$a1, $a1, $s8
	slli.d	$s7, $a6, 3
	ldx.d	$a0, $a0, $s7
	ldx.d	$a1, $a1, $s7
	ld.h	$a0, $a0, 0
	ld.h	$a1, $a1, 0
	sub.d	$a0, $a0, $a1
	blez	$s5, .LBB31_22
# %bb.13:                               # %.preheader.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB31_12 Depth=2
	move	$a1, $zero
	move	$a2, $t1
	move	$a3, $t2
	b	.LBB31_15
	.p2align	4, , 16
.LBB31_14:                              # %._crit_edge.us.us.us.us.us
                                        #   in Loop: Header=BB31_15 Depth=3
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 32
	addi.d	$a2, $a2, 32
	beq	$a1, $s0, .LBB31_22
.LBB31_15:                              # %.preheader.us.us.us.us.us
                                        #   Parent Loop BB31_10 Depth=1
                                        #     Parent Loop BB31_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB31_18 Depth 4
                                        #         Child Loop BB31_21 Depth 4
	bne	$s5, $s3, .LBB31_17
# %bb.16:                               #   in Loop: Header=BB31_15 Depth=3
	move	$a7, $zero
	b	.LBB31_20
	.p2align	4, , 16
.LBB31_17:                              # %vector.body140.preheader
                                        #   in Loop: Header=BB31_15 Depth=3
	move	$a4, $fp
	move	$a7, $a3
	.p2align	4, , 16
.LBB31_18:                              # %vector.body140
                                        #   Parent Loop BB31_10 Depth=1
                                        #     Parent Loop BB31_12 Depth=2
                                        #       Parent Loop BB31_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$a0, $a7, -8
	st.w	$a0, $a7, 0
	addi.d	$a4, $a4, -2
	addi.d	$a7, $a7, 16
	bnez	$a4, .LBB31_18
# %bb.19:                               # %middle.block143
                                        #   in Loop: Header=BB31_15 Depth=3
	move	$a7, $fp
	beq	$fp, $s1, .LBB31_14
.LBB31_20:                              # %scalar.ph135.preheader
                                        #   in Loop: Header=BB31_15 Depth=3
	alsl.d	$a4, $a7, $a2, 3
	sub.d	$a7, $s1, $a7
	.p2align	4, , 16
.LBB31_21:                              # %scalar.ph135
                                        #   Parent Loop BB31_10 Depth=1
                                        #     Parent Loop BB31_12 Depth=2
                                        #       Parent Loop BB31_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$a0, $a4, 0
	addi.d	$a7, $a7, -1
	addi.d	$a4, $a4, 8
	bnez	$a7, .LBB31_21
	b	.LBB31_14
	.p2align	4, , 16
.LBB31_22:                              # %._crit_edge73.us.us.us.us
                                        #   in Loop: Header=BB31_12 Depth=2
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	st.d	$t1, $sp, 144                   # 8-byte Folded Spill
	ld.w	$a1, $t0, 20
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 24
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ori	$a4, $zero, 104
	mul.d	$a1, $a1, $a4
	add.d	$a1, $a2, $a1
	st.d	$t6, $sp, 128                   # 8-byte Folded Spill
	st.w	$t6, $a3, 96
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.w	$a2, $a3, 100
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	st.w	$a0, $sp, 244
	st.w	$a5, $sp, 248
	ori	$a0, $zero, 5
	st.w	$a0, $sp, 240
	addi.d	$a0, $sp, 240
	jirl	$ra, $a2, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.d	$a0, $a0, $s4
	ldx.d	$a1, $a1, $s4
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $a1, $s2
	ldx.d	$a0, $a0, $s8
	ldx.d	$a1, $a1, $s8
	ldx.d	$a0, $a0, $s7
	ldx.d	$a2, $a1, $s7
	ld.w	$a1, $sp, 252
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a3, $a4, 36
	ld.h	$a0, $a0, 2
	ld.h	$a2, $a2, 2
	add.d	$a3, $a3, $a1
	st.w	$a3, $a4, 36
	sub.d	$a0, $a0, $a2
	blez	$s5, .LBB31_11
# %bb.23:                               # %.preheader.us.us.us.us.us.preheader.1
                                        #   in Loop: Header=BB31_12 Depth=2
	move	$a2, $zero
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	b	.LBB31_25
	.p2align	4, , 16
.LBB31_24:                              # %._crit_edge.us.us.us.us.us.1
                                        #   in Loop: Header=BB31_25 Depth=3
	addi.d	$a2, $a2, 1
	addi.d	$a4, $a4, 32
	addi.d	$a3, $a3, 32
	beq	$a2, $s0, .LBB31_11
.LBB31_25:                              # %.preheader.us.us.us.us.us.1
                                        #   Parent Loop BB31_10 Depth=1
                                        #     Parent Loop BB31_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB31_28 Depth 4
                                        #         Child Loop BB31_31 Depth 4
	bne	$s5, $s3, .LBB31_27
# %bb.26:                               #   in Loop: Header=BB31_25 Depth=3
	move	$a6, $zero
	b	.LBB31_30
	.p2align	4, , 16
.LBB31_27:                              # %vector.body.preheader
                                        #   in Loop: Header=BB31_25 Depth=3
	move	$a5, $fp
	move	$a6, $a4
	.p2align	4, , 16
.LBB31_28:                              # %vector.body
                                        #   Parent Loop BB31_10 Depth=1
                                        #     Parent Loop BB31_12 Depth=2
                                        #       Parent Loop BB31_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$a0, $a6, -8
	st.w	$a0, $a6, 0
	addi.d	$a5, $a5, -2
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB31_28
# %bb.29:                               # %middle.block
                                        #   in Loop: Header=BB31_25 Depth=3
	move	$a6, $fp
	beq	$fp, $s1, .LBB31_24
.LBB31_30:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB31_25 Depth=3
	alsl.d	$a5, $a6, $a3, 3
	sub.d	$a6, $s1, $a6
	.p2align	4, , 16
.LBB31_31:                              # %scalar.ph
                                        #   Parent Loop BB31_10 Depth=1
                                        #     Parent Loop BB31_12 Depth=2
                                        #       Parent Loop BB31_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$a0, $a5, 0
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB31_31
	b	.LBB31_24
.LBB31_32:
	st.d	$zero, $sp, 224                 # 8-byte Folded Spill
.LBB31_33:                              # %._crit_edge88
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
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
.LBB31_34:                              # %.preheader70.us.preheader
	addi.d	$a0, $a5, 2
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a1, $s5, 3
	slli.d	$s4, $a5, 3
	slli.d	$s6, $t3, 3
	slli.d	$s2, $a6, 3
	ori	$a6, $zero, 104
	ori	$a7, $zero, 5
	pcalau12i	$a0, %got_pc_hi20(writeMVD)
	ld.d	$t1, $a0, %got_pc_lo12(writeMVD)
	st.d	$zero, $sp, 224                 # 8-byte Folded Spill
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	st.d	$t1, $sp, 200                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB31_35:                              # %.preheader70.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_36 Depth 2
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a0, $s8, $a0, 3
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a0, $s8, $a0, 3
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	move	$s7, $s1
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB31_36:                              # %.preheader69.us90
                                        #   Parent Loop BB31_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $fp, 0
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $s3, 0
	ldx.d	$a0, $a0, $s8
	ldx.d	$a1, $a1, $s8
	ldx.d	$a0, $a0, $s4
	ldx.d	$a1, $a1, $s4
	ldx.d	$a0, $a0, $s6
	ldx.d	$a1, $a1, $s6
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $a1, $s2
	ld.h	$a0, $a0, 0
	ld.h	$a1, $a1, 0
	ld.w	$a2, $t0, 20
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 24
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	sub.d	$a0, $a0, $a1
	mul.d	$a1, $a2, $a6
	add.d	$a1, $a3, $a1
	st.w	$s7, $a4, 96
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.w	$a2, $a4, 100
	ld.d	$a2, $t1, 0
	st.w	$a0, $sp, 244
	st.w	$a5, $sp, 248
	st.w	$a7, $sp, 240
	addi.d	$a0, $sp, 240
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s3, 0
	ldx.d	$a0, $a0, $s8
	ldx.d	$a1, $a1, $s8
	ldx.d	$a0, $a0, $s4
	ldx.d	$a1, $a1, $s4
	ld.w	$a2, $sp, 252
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a3, $fp, 36
	ldx.d	$a0, $a0, $s6
	ldx.d	$a1, $a1, $s6
	add.d	$a3, $a3, $a2
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $a1, $s2
	st.w	$a3, $fp, 36
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	add.d	$s3, $a2, $a3
	ld.h	$a0, $a0, 2
	ld.h	$a1, $a1, 2
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 20
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 24
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	sub.d	$a0, $a0, $a1
	ori	$a1, $zero, 104
	mul.d	$a1, $a2, $a1
	add.d	$a1, $a3, $a1
	st.w	$s7, $a4, 96
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.w	$a2, $a4, 100
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	st.w	$a0, $sp, 244
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.w	$a0, $sp, 248
	ori	$a0, $zero, 5
	st.w	$a0, $sp, 240
	addi.d	$a0, $sp, 240
	jirl	$ra, $a2, 0
	ld.d	$t1, $sp, 200                   # 8-byte Folded Reload
	ori	$a7, $zero, 5
	ori	$a6, $zero, 104
	ld.d	$t0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 252
	ld.w	$a1, $fp, 36
	add.d	$a1, $a1, $a0
	st.w	$a1, $fp, 36
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.w	$a2, $a0, $s3
	add.d	$s1, $s1, $s5
	add.d	$s8, $s8, $a1
	add.d	$s7, $s7, $s5
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blt	$s1, $a0, .LBB31_36
# %bb.37:                               # %._crit_edge.split.us93
                                        #   in Loop: Header=BB31_35 Depth=1
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	add.d	$s8, $s8, $s0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	blt	$s8, $a0, .LBB31_35
	b	.LBB31_33
.Lfunc_end31:
	.size	writeMotionVector8x8, .Lfunc_end31-writeMotionVector8x8
                                        # -- End function
	.globl	writeLumaCoeff4x4_CABAC         # -- Begin function writeLumaCoeff4x4_CABAC
	.p2align	5
	.type	writeLumaCoeff4x4_CABAC,@function
writeLumaCoeff4x4_CABAC:                # @writeLumaCoeff4x4_CABAC
# %bb.0:                                # %.peel.begin
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
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a7, $a3, 0
	ld.w	$a3, $a7, 12
	ldptr.d	$a4, $a7, 14224
	ldptr.d	$t0, $a7, 14216
	ori	$a5, $zero, 536
	mul.d	$a3, $a3, $a5
	add.d	$s3, $a4, $a3
	pcalau12i	$a3, %got_pc_hi20(input)
	ld.d	$a3, $a3, %got_pc_lo12(input)
	ld.d	$a3, $a3, 0
	ldptr.w	$a3, $a3, 4016
	slli.d	$a3, $a3, 3
	pcalau12i	$a4, %got_pc_hi20(assignSE2partition)
	ld.d	$a4, $a4, %got_pc_lo12(assignSE2partition)
	ldptr.d	$a5, $a7, 14160
	slli.d	$a6, $a0, 3
	ldx.d	$a5, $a5, $a6
	slli.d	$a6, $a1, 3
	ldx.d	$a5, $a5, $a6
	ldx.d	$s7, $a4, $a3
	ld.d	$s6, $a5, 0
	ld.d	$s8, $a5, 8
	andi	$a3, $a0, 1
	move	$a4, $a1
	bstrins.d	$a4, $a3, 63, 1
	st.w	$a4, $a7, 96
	slti	$a0, $a0, 2
	ori	$s4, $zero, 1
	slt	$a3, $s4, $a1
	slti	$a1, $a1, 2
	xori	$a1, $a1, 3
	maskeqz	$a3, $a3, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a3, $a0
	st.w	$a0, $a7, 100
	ld.w	$fp, $s6, 0
	sltui	$s5, $a2, 1
	ori	$a0, $zero, 7
	masknez	$a0, $a0, $s5
	st.w	$fp, $sp, 20
	ld.w	$a1, $s8, 0
	ori	$a3, $zero, 11
	maskeqz	$a3, $a3, $s5
	or	$a0, $a3, $a0
	st.w	$a1, $sp, 24
	ori	$a1, $zero, 5
	st.w	$a1, $sp, 40
	st.w	$a0, $sp, 16
	move	$s2, $a2
	st.w	$a2, $a7, 104
	ori	$a0, $zero, 28
	masknez	$a0, $a0, $s5
	ori	$a1, $zero, 44
	maskeqz	$a1, $a1, $s5
	or	$a0, $a1, $a0
	ldx.w	$a0, $s7, $a0
	move	$s1, $t0
	ld.d	$a1, $t0, 24
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$s0, $sp, 28
	ld.w	$a0, $s3, 44
	add.d	$a0, $a0, $s0
	st.w	$a0, $s3, 44
	beqz	$fp, .LBB32_4
# %bb.1:                                # %.peel.next
	ori	$a0, $zero, 9
	masknez	$a0, $a0, $s5
	ori	$a1, $zero, 13
	maskeqz	$a1, $a1, $s5
	move	$a2, $s8
	or	$s8, $a1, $a0
	alsl.d	$s7, $s8, $s7, 2
	addi.d	$s5, $a2, 4
	addi.d	$s6, $s6, 4
	.p2align	4, , 16
.LBB32_2:                               # =>This Inner Loop Header: Depth=1
	ld.w	$fp, $s6, 0
	st.w	$fp, $sp, 20
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.w	$a0, $sp, 24
	ori	$a0, $zero, 5
	st.w	$a0, $sp, 40
	st.w	$s8, $sp, 16
	st.w	$s2, $a1, 104
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s1, 24
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 28
	ld.w	$a1, $s3, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s3, 44
	add.w	$s0, $a0, $s0
	ori	$a0, $zero, 15
	bltu	$a0, $s4, .LBB32_4
# %bb.3:                                #   in Loop: Header=BB32_2 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 4
	addi.d	$s6, $s6, 4
	bnez	$fp, .LBB32_2
.LBB32_4:                               # %.loopexit
	move	$a0, $s0
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
.Lfunc_end32:
	.size	writeLumaCoeff4x4_CABAC, .Lfunc_end32-writeLumaCoeff4x4_CABAC
                                        # -- End function
	.globl	writeLumaCoeff8x8_CABAC         # -- Begin function writeLumaCoeff8x8_CABAC
	.p2align	5
	.type	writeLumaCoeff8x8_CABAC,@function
writeLumaCoeff8x8_CABAC:                # @writeLumaCoeff8x8_CABAC
# %bb.0:                                # %.peel.begin
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
	move	$fp, $a1
	ori	$s1, $zero, 1
	slt	$a1, $s1, $a0
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a2, $a2, 0
	ld.w	$a3, $a2, 12
	ldptr.d	$a4, $a2, 14224
	ldptr.d	$s3, $a2, 14216
	ori	$a5, $zero, 536
	mul.d	$a3, $a3, $a5
	add.d	$s4, $a4, $a3
	pcalau12i	$a3, %got_pc_hi20(input)
	ld.d	$a3, $a3, %got_pc_lo12(input)
	ld.d	$a3, $a3, 0
	ldptr.w	$a3, $a3, 4016
	slli.d	$a3, $a3, 3
	pcalau12i	$a4, %got_pc_hi20(assignSE2partition)
	ld.d	$a4, $a4, %got_pc_lo12(assignSE2partition)
	ldptr.d	$a5, $a2, 14160
	slli.d	$a6, $a0, 3
	ldx.d	$a5, $a5, $a6
	ld.d	$a5, $a5, 0
	ldx.d	$s5, $a4, $a3
	ld.d	$s8, $a5, 0
	ld.d	$s7, $a5, 8
	slli.d	$a0, $a0, 1
	andi	$a0, $a0, 2
	st.w	$a0, $a2, 96
	slli.d	$a0, $a1, 1
	st.w	$a0, $a2, 100
	ld.w	$s2, $s8, 0
	sltui	$s6, $fp, 1
	ori	$a0, $zero, 7
	masknez	$a0, $a0, $s6
	st.w	$s2, $sp, 20
	ld.w	$a1, $s7, 0
	ori	$a3, $zero, 11
	maskeqz	$a3, $a3, $s6
	or	$a0, $a3, $a0
	st.w	$a1, $sp, 24
	ori	$a3, $zero, 2
	ld.w	$a1, $a2, 20
	st.w	$a3, $sp, 40
	st.w	$a0, $sp, 16
	st.w	$fp, $a2, 104
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 16
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s5, $a0
	ld.d	$a1, $s3, 24
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$s0, $sp, 28
	ld.w	$a0, $s4, 44
	add.d	$a0, $a0, $s0
	st.w	$a0, $s4, 44
	beqz	$s2, .LBB33_4
# %bb.1:                                # %.peel.next.preheader
	ori	$a0, $zero, 9
	masknez	$a0, $a0, $s6
	ori	$a1, $zero, 13
	maskeqz	$a1, $a1, $s6
	or	$s6, $a1, $a0
	addi.d	$s7, $s7, 4
	addi.d	$s8, $s8, 4
	.p2align	4, , 16
.LBB33_2:                               # %.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$s2, $s8, 0
	st.w	$s2, $sp, 20
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.w	$a0, $sp, 24
	ld.w	$a0, $a1, 20
	ori	$a2, $zero, 2
	st.w	$a2, $sp, 40
	st.w	$s6, $sp, 16
	st.w	$fp, $a1, 104
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	masknez	$a1, $s6, $a0
	ori	$a2, $zero, 16
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s5, $a0
	ld.d	$a1, $s3, 24
	ori	$a2, $zero, 104
	mul.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(writeRunLevel_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 28
	ld.w	$a1, $s4, 44
	add.d	$a1, $a1, $a0
	st.w	$a1, $s4, 44
	add.w	$s0, $a0, $s0
	ori	$a0, $zero, 63
	bltu	$a0, $s1, .LBB33_4
# %bb.3:                                # %.peel.next
                                        #   in Loop: Header=BB33_2 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s7, $s7, 4
	addi.d	$s8, $s8, 4
	bnez	$s2, .LBB33_2
.LBB33_4:                               # %.loopexit
	move	$a0, $s0
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
.Lfunc_end33:
	.size	writeLumaCoeff8x8_CABAC, .Lfunc_end33-writeLumaCoeff8x8_CABAC
                                        # -- End function
	.globl	writeLumaCoeff8x8               # -- Begin function writeLumaCoeff8x8
	.p2align	5
	.type	writeLumaCoeff8x8,@function
writeLumaCoeff8x8:                      # @writeLumaCoeff8x8
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	addi.d	$a3, $a1, -11
	sltui	$fp, $a3, 1
	pcalau12i	$a3, %got_pc_hi20(input)
	ld.d	$a3, $a3, %got_pc_lo12(input)
	ld.d	$a3, $a3, 0
	ori	$a4, $zero, 4008
	ldx.w	$a3, $a3, $a4
	beqz	$a2, .LBB34_3
# %bb.1:
	beqz	$a3, .LBB34_5
# %bb.2:
	addi.d	$a1, $a1, -13
	sltui	$a1, $a1, 1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(writeLumaCoeff8x8_CABAC)
	jr	$t8
.LBB34_3:
	beqz	$a3, .LBB34_5
# %bb.4:                                # %.preheader23.preheader
	move	$s0, $a0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(writeLumaCoeff4x4_CABAC)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 1
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(writeLumaCoeff4x4_CABAC)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
	ori	$a1, $zero, 2
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(writeLumaCoeff4x4_CABAC)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
	ori	$a1, $zero, 3
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(writeLumaCoeff4x4_CABAC)
	jirl	$ra, $ra, 0
	b	.LBB34_6
.LBB34_5:                               # %.preheader
	sltui	$a2, $a2, 1
	addi.d	$a1, $a1, -13
	sltui	$a1, $a1, 1
	maskeqz	$a3, $fp, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a3, $a1
	move	$s0, $a0
	move	$a0, $zero
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a2, $zero, 1
	move	$a0, $zero
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
	ori	$a2, $zero, 2
	move	$a0, $zero
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
	ori	$a2, $zero, 3
	move	$a0, $zero
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
.LBB34_6:                               # %.loopexit
	add.w	$a0, $a0, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end34:
	.size	writeLumaCoeff8x8, .Lfunc_end34-writeLumaCoeff8x8
                                        # -- End function
	.globl	writeCoeff4x4_CAVLC             # -- Begin function writeCoeff4x4_CAVLC
	.p2align	5
	.type	writeCoeff4x4_CAVLC,@function
writeCoeff4x4_CAVLC:                    # @writeCoeff4x4_CAVLC
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
	ori	$a4, $zero, 7
	bltu	$a4, $a0, .LBB35_71
# %bb.1:
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$t2, $a4, %got_pc_lo12(img)
	ld.d	$a5, $t2, 0
	ld.w	$a6, $a5, 12
	ldptr.d	$a7, $a5, 14224
	ldptr.d	$a4, $a5, 14216
	ori	$t0, $zero, 536
	mul.d	$a6, $a6, $t0
	add.d	$s8, $a7, $a6
	pcalau12i	$a6, %got_pc_hi20(input)
	ld.d	$a6, $a6, %got_pc_lo12(input)
	ld.d	$a6, $a6, 0
	ldptr.w	$a6, $a6, 4016
	slli.d	$a6, $a6, 3
	pcalau12i	$a7, %got_pc_hi20(assignSE2partition)
	ld.d	$a7, $a7, %got_pc_lo12(assignSE2partition)
	ldx.d	$a6, $a7, $a6
	slli.d	$a0, $a0, 2
	pcalau12i	$a7, %pc_hi20(.LJTI35_0)
	addi.d	$a7, $a7, %pc_lo12(.LJTI35_0)
	ldx.w	$a0, $a7, $a0
	add.d	$a0, $a7, $a0
	jr	$a0
.LBB35_2:
	st.d	$t2, $sp, 72                    # 8-byte Folded Spill
	ldptr.d	$a0, $a5, 14160
	slli.d	$a5, $a1, 3
	ldx.d	$a0, $a0, $a5
	slli.d	$a5, $a2, 3
	ldx.d	$a0, $a0, $a5
	vld	$vr0, $a0, 0
	ld.w	$a5, $s8, 72
	ori	$a0, $zero, 1
	ori	$a7, $zero, 16
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	ori	$a7, $zero, 14
	ori	$s7, $zero, 5
	bltu	$a7, $a5, .LBB35_4
# %bb.3:
	ori	$a7, $zero, 1
	sll.d	$a5, $a7, $a5
	lu12i.w	$a7, 6
	ori	$a7, $a7, 1536
	and	$a5, $a5, $a7
	ori	$t8, $zero, 9
	bnez	$a5, .LBB35_16
.LBB35_4:
	ori	$t8, $zero, 13
	b	.LBB35_16
.LBB35_5:                               # %.split
	ldptr.d	$a1, $a5, 14168
	lu12i.w	$a0, 3
	ld.w	$a2, $s8, 72
	ori	$a0, $a0, 3244
	alsl.d	$a1, $a3, $a1, 3
	ld.d	$a1, $a1, 8
	addi.w	$a2, $a2, -9
	addi.w	$a3, $zero, -6
	and	$a2, $a2, $a3
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 12
	masknez	$a3, $a3, $a2
	ori	$a7, $zero, 8
	maskeqz	$a7, $a7, $a2
	ori	$t0, $zero, 48
	masknez	$t0, $t0, $a2
	ori	$t1, $zero, 32
	maskeqz	$a2, $t1, $a2
	ld.d	$s2, $a1, 0
	ld.d	$s1, $a1, 8
	ld.d	$a1, $t2, 0
	ld.d	$a4, $a4, 24
	or	$a2, $a2, $t0
	ldx.w	$a2, $a6, $a2
	ldptr.w	$a1, $a1, 15532
	or	$t2, $a7, $a3
	ori	$a3, $zero, 104
	mul.d	$a2, $a2, $a3
	add.d	$a2, $a4, $a2
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	bltz	$a1, .LBB35_65
# %bb.6:                                # %.lr.ph.preheader
	ld.w	$a2, $s2, 0
	beqz	$a2, .LBB35_65
# %bb.7:                                # %.thread.preheader
	move	$s5, $zero
	move	$s3, $zero
	move	$a3, $zero
	addi.d	$a4, $s2, 4
	ori	$t0, $zero, 1
	ori	$a6, $zero, 2
	move	$a7, $s1
	.p2align	4, , 16
.LBB35_8:                               # %.thread
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a7, 0
	move	$s4, $t0
	add.w	$s3, $t1, $s3
	srai.d	$t0, $a2, 31
	xor	$a2, $a2, $t0
	sub.w	$a2, $a2, $t0
	addi.d	$a2, $a2, -1
	sltui	$a2, $a2, 1
	slti	$t0, $s5, 2
	masknez	$t1, $a6, $t0
	maskeqz	$t0, $s5, $t0
	or	$t0, $t0, $t1
	addi.w	$t0, $t0, 1
	maskeqz	$s5, $t0, $a2
	bgeu	$a3, $a1, .LBB35_67
# %bb.9:                                # %.lr.ph
                                        #   in Loop: Header=BB35_8 Depth=1
	ld.w	$a2, $a4, 0
	addi.d	$a3, $a3, 1
	addi.w	$t0, $s4, 1
	addi.d	$a4, $a4, 4
	addi.d	$a7, $a7, 4
	bnez	$a2, .LBB35_8
# %bb.10:                               # %.thread234.loopexit
	addi.w	$a1, $t0, -2
	b	.LBB35_68
.LBB35_11:
	st.d	$t2, $sp, 72                    # 8-byte Folded Spill
	ldptr.d	$a0, $a5, 14168
	ld.d	$a0, $a0, 0
	vld	$vr0, $a0, 0
	ori	$a0, $zero, 1
	ori	$a5, $zero, 16
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	ori	$s7, $zero, 5
	ori	$t8, $zero, 7
	b	.LBB35_16
.LBB35_12:
	st.d	$t2, $sp, 72                    # 8-byte Folded Spill
	ldptr.d	$a0, $a5, 14160
	slli.d	$a5, $a1, 3
	ldx.d	$a0, $a0, $a5
	slli.d	$a5, $a2, 3
	ldx.d	$a0, $a0, $a5
	vld	$vr0, $a0, 0
	ori	$a0, $zero, 1
	ori	$a5, $zero, 15
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	ori	$s7, $zero, 5
	ori	$t8, $zero, 9
	b	.LBB35_16
.LBB35_13:
	st.d	$t2, $sp, 72                    # 8-byte Folded Spill
	ldptr.d	$a0, $a5, 14160
	slli.d	$a5, $a1, 3
	ldx.d	$a0, $a0, $a5
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a0, $a5
	ld.w	$a0, $s8, 72
	vld	$vr0, $a5, 0
	ori	$a5, $zero, 15
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	ori	$t8, $zero, 14
	ori	$s7, $zero, 6
	bltu	$t8, $a0, .LBB35_66
# %bb.14:
	ori	$a5, $zero, 1
	sll.d	$a0, $a5, $a0
	lu12i.w	$a5, 6
	ori	$a5, $a5, 1536
	and	$a0, $a0, $a5
	beqz	$a0, .LBB35_66
# %bb.15:
	move	$a0, $zero
	ori	$t8, $zero, 10
.LBB35_16:                              # %.split.us.preheader
	slli.d	$a5, $t8, 2
	vpickve2gr.d	$s1, $vr0, 0
	ld.w	$a7, $s1, 0
	ldx.w	$a5, $a6, $a5
	ori	$a6, $zero, 104
	st.d	$t8, $sp, 64                    # 8-byte Folded Spill
	beqz	$a7, .LBB35_21
# %bb.17:                               # %.lr.ph359.preheader
	move	$s5, $zero
	move	$s3, $zero
	move	$t0, $zero
	vpickve2gr.d	$t1, $vr0, 1
	addi.d	$t2, $s1, 4
	ori	$t5, $zero, 1
	ori	$t3, $zero, 2
	ori	$t4, $zero, 16
	.p2align	4, , 16
.LBB35_18:                              # %.lr.ph359
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t6, $t1, 0
	move	$s4, $t5
	add.w	$s3, $t6, $s3
	srai.d	$t5, $a7, 31
	xor	$a7, $a7, $t5
	sub.w	$a7, $a7, $t5
	addi.d	$a7, $a7, -1
	sltui	$a7, $a7, 1
	slti	$t5, $s5, 2
	masknez	$t6, $t3, $t5
	maskeqz	$t5, $s5, $t5
	or	$t5, $t5, $t6
	addi.w	$t5, $t5, 1
	maskeqz	$s5, $t5, $a7
	bgeu	$t0, $t4, .LBB35_22
# %bb.19:                               # %.split.us
                                        #   in Loop: Header=BB35_18 Depth=1
	ld.w	$a7, $t2, 0
	addi.d	$t0, $t0, 1
	addi.w	$t5, $s4, 1
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 4
	bnez	$a7, .LBB35_18
# %bb.20:                               # %.split247.us.loopexit
	addi.w	$a7, $t5, -2
	b	.LBB35_23
.LBB35_21:
	move	$s3, $zero
	move	$s5, $zero
	move	$a7, $zero
	move	$s4, $zero
	b	.LBB35_23
.LBB35_22:                              # %..split247.us_crit_edge
	addi.w	$a7, $s4, -1
.LBB35_23:                              # %.split247.us
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s2, $a4, 24
	mul.d	$s6, $a5, $a6
	beqz	$a0, .LBB35_25
# %bb.24:
	andi	$a0, $a1, 1
	move	$fp, $a2
	bstrins.d	$fp, $a0, 63, 1
	slti	$a0, $a1, 2
	ori	$a1, $zero, 1
	slt	$a1, $a1, $a2
	slti	$a2, $a2, 2
	xori	$a2, $a2, 3
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a2, $a0
	or	$s0, $a1, $a0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(predict_nnz)
	jirl	$ra, $ra, 0
	b	.LBB35_26
.LBB35_25:
	srai.d	$fp, $a3, 4
	andi	$s0, $a3, 15
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(predict_nnz_chroma)
	jirl	$ra, $ra, 0
.LBB35_26:
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a1, 12
	ld.d	$a1, $a1, 152
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	addi.w	$a2, $fp, 0
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	add.d	$a2, $s2, $s6
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a2, $s0, 2
	ori	$a3, $zero, 2
	stx.w	$s4, $a1, $a2
	bge	$a0, $a3, .LBB35_28
# %bb.27:
	move	$a1, $zero
	move	$s2, $s1
	b	.LBB35_30
.LBB35_28:
	ori	$a2, $zero, 4
	ori	$a1, $zero, 1
	move	$s2, $s1
	bltu	$a0, $a2, .LBB35_30
# %bb.29:
	sltui	$a0, $a0, 8
	xori	$a1, $a0, 3
.LBB35_30:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $sp, 80
	st.w	$s4, $sp, 84
	st.w	$s5, $sp, 88
	st.w	$a1, $sp, 92
	addi.d	$a0, $sp, 80
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(writeSyntaxElement_NumCoeffTrailingOnes)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vpickve2gr.d	$s1, $vr0, 1
	ori	$t0, $zero, 1
.LBB35_31:
	addi.d	$a0, $s8, 24
	ld.w	$s0, $sp, 92
	slli.d	$a1, $s7, 2
	ldx.w	$a2, $a0, $a1
	add.d	$a2, $a2, $s0
	stx.w	$a2, $a0, $a1
	beqz	$s4, .LBB35_64
# %bb.32:                               # %.preheader
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	sub.w	$s6, $a2, $s5
	move	$a1, $zero
	blez	$s5, .LBB35_36
# %bb.33:                               # %.lr.ph268.preheader
	bstrpick.d	$a2, $a2, 31, 0
	alsl.d	$a3, $a2, $s2, 2
	ori	$a4, $zero, 2
	.p2align	4, , 16
.LBB35_34:                              # %.lr.ph268
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	srai.d	$a6, $a5, 31
	xor	$a7, $a5, $a6
	sub.w	$a6, $a7, $a6
	bgeu	$a6, $a4, .LBB35_70
# %bb.35:                               #   in Loop: Header=BB35_34 Depth=1
	bstrpick.d	$a5, $a5, 31, 31
	slli.d	$a1, $a1, 1
	or	$a1, $a1, $a5
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -4
	blt	$s6, $a2, .LBB35_34
.LBB35_36:                              # %._crit_edge
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	alsl.d	$s8, $s7, $a0, 2
	beqz	$s5, .LBB35_38
# %bb.37:
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	st.w	$s7, $sp, 80
	st.w	$s5, $sp, 88
	st.w	$a1, $sp, 84
	addi.d	$a0, $sp, 80
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(writeSyntaxElement_VLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 92
	ld.w	$a1, $s8, 0
	add.d	$a1, $a1, $a0
	st.w	$a1, $s8, 0
	add.w	$s0, $a0, $s0
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	bgez	$s6, .LBB35_39
	b	.LBB35_46
.LBB35_38:
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	bltz	$s6, .LBB35_46
.LBB35_39:                              # %.lr.ph276.preheader
	ori	$a0, $zero, 10
	slli.d	$a1, $s6, 2
	ldx.w	$fp, $s2, $a1
	slt	$a0, $a0, $s4
	slti	$a1, $s5, 3
	and	$s1, $a0, $a1
	st.w	$fp, $sp, 84
	ori	$a0, $zero, 4
	st.w	$s7, $sp, 80
	blt	$s4, $a0, .LBB35_41
# %bb.40:                               # %.lr.ph276.preheader
	ori	$a0, $zero, 3
	beq	$s5, $a0, .LBB35_42
.LBB35_41:
	slt	$a0, $zero, $fp
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	add.d	$a0, $a0, $fp
	st.w	$a0, $sp, 84
.LBB35_42:
	pcalau12i	$s7, %pc_hi20(active_sps)
	ld.d	$a0, $s7, %pc_lo12(active_sps)
	ld.w	$a3, $a0, 4
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 80
	beqz	$s1, .LBB35_44
# %bb.43:
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(writeSyntaxElement_Level_VLCN)
	jirl	$ra, $ra, 0
	b	.LBB35_45
.LBB35_44:
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $a3
	pcaddu18i	$ra, %call36(writeSyntaxElement_Level_VLC1)
	jirl	$ra, $ra, 0
.LBB35_45:
	slli.d	$a0, $s1, 2
	pcalau12i	$a1, %pc_hi20(writeCoeff4x4_CAVLC.incVlc)
	addi.d	$s2, $a1, %pc_lo12(writeCoeff4x4_CAVLC.incVlc)
	ld.w	$a1, $sp, 92
	ld.w	$a2, $s8, 0
	ldx.w	$a0, $s2, $a0
	add.d	$a2, $a2, $a1
	st.w	$a2, $s8, 0
	add.w	$s0, $a1, $s0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bne	$a1, $s5, .LBB35_50
.LBB35_46:                              # %._crit_edge277
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bge	$s4, $a0, .LBB35_49
# %bb.47:
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	st.w	$s7, $sp, 80
	st.w	$s3, $sp, 84
	addi.d	$a0, $s4, -1
	st.w	$a0, $sp, 92
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB35_55
# %bb.48:
	addi.d	$a0, $sp, 80
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(writeSyntaxElement_TotalZeros)
	jirl	$ra, $ra, 0
	b	.LBB35_56
.LBB35_49:
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	bgez	$fp, .LBB35_57
	b	.LBB35_64
.LBB35_50:                              # %.lr.ph276.peel.next
	srai.d	$a1, $fp, 31
	xor	$a2, $fp, $a1
	sub.w	$a1, $a2, $a1
	ori	$a2, $zero, 3
	sltu	$a2, $a2, $a1
	slt	$a0, $a0, $a1
	add.w	$a0, $s1, $a0
	masknez	$a0, $a0, $a2
	ori	$a1, $zero, 2
	maskeqz	$a1, $a1, $a2
	or	$s1, $a1, $a0
	addi.d	$s5, $s6, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a0, $s6, $a0, 2
	addi.d	$s6, $a0, -4
	b	.LBB35_53
	.p2align	4, , 16
.LBB35_51:                              #   in Loop: Header=BB35_53 Depth=1
	move	$a1, $s1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(writeSyntaxElement_Level_VLCN)
	jirl	$ra, $ra, 0
.LBB35_52:                              #   in Loop: Header=BB35_53 Depth=1
	srai.d	$a0, $fp, 31
	xor	$a1, $fp, $a0
	slli.d	$a2, $s1, 2
	ldx.w	$a2, $s2, $a2
	ld.w	$a3, $sp, 92
	ld.w	$a4, $s8, 0
	sub.w	$a0, $a1, $a0
	slt	$a0, $a2, $a0
	add.w	$s1, $s1, $a0
	add.d	$a0, $a4, $a3
	st.w	$a0, $s8, 0
	add.w	$s0, $a3, $s0
	addi.d	$s5, $s5, -1
	addi.d	$s6, $s6, -4
	ori	$a0, $zero, 1
	bgeu	$a0, $s5, .LBB35_46
.LBB35_53:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, %pc_lo12(active_sps)
	ld.w	$fp, $s6, 0
	ld.w	$a3, $a0, 4
	st.w	$fp, $sp, 84
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $sp, 80
	addi.d	$a0, $sp, 80
	bnez	$s1, .LBB35_51
# %bb.54:                               #   in Loop: Header=BB35_53 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $a3
	pcaddu18i	$ra, %call36(writeSyntaxElement_Level_VLC1)
	jirl	$ra, $ra, 0
	b	.LBB35_52
.LBB35_55:
	addi.d	$a0, $sp, 80
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(writeSyntaxElement_TotalZerosChromaDC)
	jirl	$ra, $ra, 0
.LBB35_56:
	ld.w	$a0, $sp, 92
	ld.w	$a1, $s8, 0
	add.d	$a1, $a1, $a0
	st.w	$a1, $s8, 0
	add.w	$s0, $a0, $s0
	bltz	$fp, .LBB35_64
.LBB35_57:                              # %.lr.ph284
	ori	$s1, $zero, 2
	blt	$s4, $s1, .LBB35_63
# %bb.58:                               # %.lr.ph284.split.preheader
	addi.d	$s2, $fp, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$s5, $fp, $a0, 2
	ori	$s6, $zero, 7
	b	.LBB35_60
	.p2align	4, , 16
.LBB35_59:                              #   in Loop: Header=BB35_60 Depth=1
	addi.d	$s2, $s2, -1
	addi.d	$s5, $s5, -4
	move	$s4, $a0
	blez	$s2, .LBB35_64
.LBB35_60:                              # %.lr.ph284.split
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$fp, $s5, 0
	st.w	$fp, $sp, 84
	st.w	$s7, $sp, 80
	beqz	$s3, .LBB35_64
# %bb.61:                               #   in Loop: Header=BB35_60 Depth=1
	ori	$a0, $zero, 1
	blt	$s4, $s1, .LBB35_59
# %bb.62:                               #   in Loop: Header=BB35_60 Depth=1
	slti	$a0, $s3, 7
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, -1
	st.w	$a0, $sp, 92
	addi.d	$a0, $sp, 80
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(writeSyntaxElement_Run)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 92
	ld.w	$a1, $s8, 0
	add.d	$a1, $a1, $a0
	st.w	$a1, $s8, 0
	add.w	$s0, $a0, $s0
	sub.w	$s3, $s3, $fp
	addi.w	$a0, $s4, -1
	b	.LBB35_59
.LBB35_63:                              # %.lr.ph284.split.us
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	st.w	$a0, $sp, 84
.LBB35_64:                              # %.loopexit
	move	$a0, $s0
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
.LBB35_65:
	move	$s4, $zero
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	move	$s5, $zero
	move	$s3, $zero
	b	.LBB35_69
.LBB35_66:
	move	$a0, $zero
	b	.LBB35_16
.LBB35_67:                              # %.thread..thread234.loopexit_crit_edge
	addi.w	$a1, $s4, -1
.LBB35_68:                              # %.thread234
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
.LBB35_69:                              # %.thread234
	ldx.w	$a0, $a5, $a0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$t2, $sp, 64                    # 8-byte Folded Spill
	st.w	$t2, $sp, 80
	st.w	$s4, $sp, 84
	st.w	$s5, $sp, 88
	st.w	$zero, $sp, 92
	addi.d	$a0, $sp, 80
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(writeSyntaxElement_NumCoeffTrailingOnesChromaDC)
	jirl	$ra, $ra, 0
	move	$t0, $zero
	ori	$s7, $zero, 6
	b	.LBB35_31
.LBB35_70:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB35_71:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 600
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.Lfunc_end35:
	.size	writeCoeff4x4_CAVLC, .Lfunc_end35-writeCoeff4x4_CAVLC
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI35_0:
	.word	.LBB35_2-.LJTI35_0
	.word	.LBB35_11-.LJTI35_0
	.word	.LBB35_12-.LJTI35_0
	.word	.LBB35_71-.LJTI35_0
	.word	.LBB35_71-.LJTI35_0
	.word	.LBB35_71-.LJTI35_0
	.word	.LBB35_5-.LJTI35_0
	.word	.LBB35_13-.LJTI35_0
                                        # -- End function
	.text
	.globl	predict_nnz                     # -- Begin function predict_nnz
	.p2align	5
	.type	predict_nnz,@function
predict_nnz:                            # @predict_nnz
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
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$s2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $s2, 0
	ld.w	$fp, $a2, 12
	ldptr.d	$a2, $a2, 14224
	ori	$a3, $zero, 536
	mul.d	$a3, $fp, $a3
	add.d	$s5, $a2, $a3
	slli.w	$s0, $a0, 2
	addi.d	$a2, $zero, -1
	alsl.w	$a2, $a0, $a2, 2
	slli.w	$s1, $a1, 2
	addi.d	$a3, $sp, 8
	move	$a0, $fp
	move	$a1, $a2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 72
	ori	$a0, $zero, 13
	lu12i.w	$s6, 2
	pcalau12i	$s4, %pc_hi20(active_pps)
	bltu	$a0, $a1, .LBB36_4
# %bb.1:
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $s6, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB36_4
# %bb.2:
	ld.w	$a0, $sp, 8
	bnez	$a0, .LBB36_6
# %bb.3:
	move	$s3, $zero
	b	.LBB36_13
.LBB36_4:
	ld.w	$a0, $sp, 8
	ori	$a2, $zero, 14
	move	$s3, $zero
	bne	$a1, $a2, .LBB36_11
# %bb.5:
	beqz	$a0, .LBB36_11
.LBB36_6:
	ld.d	$a1, $s4, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 224
	beqz	$a1, .LBB36_9
# %bb.7:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 4016
	beqz	$a1, .LBB36_9
# %bb.8:
	ld.d	$a1, $s2, 0
	ldptr.d	$a2, $a1, 14208
	ld.w	$a2, $a2, 4
	beqz	$a2, .LBB36_10
.LBB36_9:
	move	$s3, $zero
	b	.LBB36_12
.LBB36_10:
	ld.w	$a2, $sp, 12
	ldptr.d	$a1, $a1, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 8
	sltui	$s3, $a0, 1
.LBB36_11:                              # %thread-pre-split
	beqz	$a0, .LBB36_13
.LBB36_12:                              # %thread-pre-split.thread
	ld.d	$a0, $s2, 0
	ld.w	$a1, $sp, 12
	ld.d	$a0, $a0, 152
	ld.w	$a2, $sp, 16
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 3
	ld.w	$a2, $sp, 20
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 2
	ldx.w	$s7, $a0, $a1
	addi.d	$s3, $s3, 1
	b	.LBB36_14
.LBB36_13:
	move	$s7, $zero
.LBB36_14:                              # %.thread
	addi.w	$a2, $s1, -1
	addi.d	$a3, $sp, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 72
	ori	$a0, $zero, 13
	bltu	$a0, $a1, .LBB36_17
# %bb.15:                               # %.thread
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $s6, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB36_17
# %bb.16:
	ld.w	$a0, $sp, 8
	bnez	$a0, .LBB36_19
	b	.LBB36_25
.LBB36_17:
	ld.w	$a0, $sp, 8
	ori	$a2, $zero, 14
	bne	$a1, $a2, .LBB36_23
# %bb.18:
	beqz	$a0, .LBB36_23
.LBB36_19:
	ld.d	$a1, $s4, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 224
	beqz	$a1, .LBB36_24
# %bb.20:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 4016
	beqz	$a1, .LBB36_24
# %bb.21:
	ld.d	$a1, $s2, 0
	ldptr.d	$a2, $a1, 14208
	ld.w	$a2, $a2, 4
	bnez	$a2, .LBB36_24
# %bb.22:
	ld.w	$a2, $sp, 12
	ldptr.d	$a1, $a1, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 8
	sltui	$a1, $a0, 1
	add.d	$s3, $s3, $a1
.LBB36_23:                              # %thread-pre-split46
	beqz	$a0, .LBB36_25
.LBB36_24:                              # %thread-pre-split46.thread
	ld.d	$a0, $s2, 0
	ld.w	$a1, $sp, 12
	ld.d	$a0, $a0, 152
	ld.w	$a2, $sp, 16
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 3
	ld.w	$a2, $sp, 20
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 2
	ldx.w	$a0, $a0, $a1
	add.d	$s7, $a0, $s7
	addi.d	$s3, $s3, 1
.LBB36_25:                              # %.thread48
	addi.d	$a0, $s3, -2
	sltui	$a0, $a0, 1
	addi.w	$a1, $s7, 1
	srli.d	$a1, $a1, 1
	masknez	$a2, $s7, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	addi.w	$a0, $a0, 0
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
.Lfunc_end36:
	.size	predict_nnz, .Lfunc_end36-predict_nnz
                                        # -- End function
	.globl	predict_nnz_chroma              # -- Begin function predict_nnz_chroma
	.p2align	5
	.type	predict_nnz_chroma,@function
predict_nnz_chroma:                     # @predict_nnz_chroma
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
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s2, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s2, 0
	ld.w	$fp, $a0, 12
	slli.d	$s6, $a1, 2
	ldptr.d	$a2, $a0, 14224
	ori	$a3, $zero, 536
	ldptr.w	$a0, $a0, 15536
	mul.d	$a3, $fp, $a3
	add.d	$s4, $a2, $a3
	ori	$a2, $zero, 3
	slli.w	$s0, $s1, 2
	bne	$a0, $a2, .LBB37_5
# %bb.1:
	pcalau12i	$a0, %pc_hi20(predict_nnz_chroma.j_off_tab)
	addi.d	$a0, $a0, %pc_lo12(predict_nnz_chroma.j_off_tab)
	ldx.w	$s6, $a0, $s6
	addi.w	$a2, $s0, -1
	sub.d	$a0, $a1, $s6
	slli.w	$s1, $a0, 2
	addi.d	$a3, $sp, 16
	move	$a0, $fp
	move	$a1, $a2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(getChroma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 72
	ori	$a0, $zero, 13
	bltu	$a0, $a1, .LBB37_9
# %bb.2:
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB37_9
# %bb.3:
	ld.w	$a0, $sp, 16
	bnez	$a0, .LBB37_11
# %bb.4:
	move	$s3, $zero
	b	.LBB37_24
.LBB37_5:
	andi	$s0, $s0, 4
	addi.d	$a4, $s0, -1
	addi.d	$a0, $zero, -16
	alsl.w	$a2, $a1, $a0, 2
	addi.d	$a3, $sp, 16
	move	$a0, $fp
	move	$a1, $a4
	pcaddu18i	$ra, %call36(getChroma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 72
	ori	$a0, $zero, 13
	lu12i.w	$s8, 2
	bstrpick.d	$s1, $s1, 31, 1
	pcalau12i	$s7, %pc_hi20(active_pps)
	bltu	$a0, $a1, .LBB37_15
# %bb.6:
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $s8, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB37_15
# %bb.7:
	ld.w	$a0, $sp, 16
	bnez	$a0, .LBB37_17
# %bb.8:
	move	$s3, $zero
	b	.LBB37_39
.LBB37_9:
	ld.w	$a0, $sp, 16
	ori	$a2, $zero, 14
	move	$s3, $zero
	bne	$a1, $a2, .LBB37_22
# %bb.10:
	beqz	$a0, .LBB37_22
.LBB37_11:
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 224
	beqz	$a1, .LBB37_14
# %bb.12:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 4016
	beqz	$a1, .LBB37_14
# %bb.13:
	ld.d	$a1, $s2, 0
	ldptr.d	$a2, $a1, 14208
	ld.w	$a2, $a2, 4
	beqz	$a2, .LBB37_21
.LBB37_14:
	move	$s3, $zero
	b	.LBB37_23
.LBB37_15:
	ld.w	$a0, $sp, 16
	ori	$a2, $zero, 14
	move	$s3, $zero
	bne	$a1, $a2, .LBB37_37
# %bb.16:
	beqz	$a0, .LBB37_37
.LBB37_17:
	ld.d	$a1, $s7, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 224
	beqz	$a1, .LBB37_20
# %bb.18:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 4016
	beqz	$a1, .LBB37_20
# %bb.19:
	ld.d	$a1, $s2, 0
	ldptr.d	$a2, $a1, 14208
	ld.w	$a2, $a2, 4
	beqz	$a2, .LBB37_36
.LBB37_20:
	move	$s3, $zero
	b	.LBB37_38
.LBB37_21:
	ld.w	$a2, $sp, 20
	ldptr.d	$a1, $a1, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 16
	addi.w	$s3, $zero, -1
.LBB37_22:                              # %thread-pre-split97
	beqz	$a0, .LBB37_24
.LBB37_23:                              # %thread-pre-split97.thread
	ld.d	$a0, $s2, 0
	ld.w	$a1, $sp, 20
	ld.d	$a0, $a0, 152
	slli.d	$a1, $a1, 3
	ld.w	$a2, $sp, 24
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 28
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	add.w	$a1, $a1, $s6
	slli.d	$a1, $a1, 2
	ldx.w	$s5, $a0, $a1
	addi.d	$s3, $s3, 1
	b	.LBB37_25
.LBB37_24:
	move	$s5, $zero
.LBB37_25:                              # %.thread99
	addi.w	$a2, $s1, -1
	addi.d	$a3, $sp, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(getChroma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 72
	ori	$a0, $zero, 13
	bltu	$a0, $a1, .LBB37_28
# %bb.26:                               # %.thread99
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB37_28
# %bb.27:
	ld.w	$a0, $sp, 16
	bnez	$a0, .LBB37_30
	b	.LBB37_52
.LBB37_28:
	ld.w	$a0, $sp, 16
	ori	$a2, $zero, 14
	bne	$a1, $a2, .LBB37_34
# %bb.29:
	beqz	$a0, .LBB37_34
.LBB37_30:
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 224
	beqz	$a1, .LBB37_35
# %bb.31:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 4016
	beqz	$a1, .LBB37_35
# %bb.32:
	ld.d	$a1, $s2, 0
	ldptr.d	$a2, $a1, 14208
	ld.w	$a2, $a2, 4
	bnez	$a2, .LBB37_35
# %bb.33:
	ld.w	$a2, $sp, 20
	ldptr.d	$a1, $a1, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 16
	addi.d	$s3, $s3, -1
.LBB37_34:                              # %thread-pre-split102
	beqz	$a0, .LBB37_52
.LBB37_35:                              # %thread-pre-split102.thread
	ld.d	$a0, $s2, 0
	ld.w	$a1, $sp, 20
	ld.d	$a0, $a0, 152
	slli.d	$a1, $a1, 3
	ld.w	$a2, $sp, 24
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 28
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	add.w	$a1, $a1, $s6
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	b	.LBB37_51
.LBB37_36:
	ld.w	$a2, $sp, 20
	ldptr.d	$a1, $a1, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 16
	sltui	$s3, $a0, 1
.LBB37_37:                              # %thread-pre-split
	beqz	$a0, .LBB37_39
.LBB37_38:                              # %thread-pre-split.thread
	ld.d	$a0, $s2, 0
	ld.w	$a1, $sp, 20
	ld.d	$a0, $a0, 152
	ld.w	$a2, $sp, 24
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	alsl.w	$a1, $s1, $a2, 1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 28
	alsl.d	$a0, $a1, $a0, 2
	ld.w	$s5, $a0, 16
	addi.d	$s3, $s3, 1
	b	.LBB37_40
.LBB37_39:
	move	$s5, $zero
.LBB37_40:                              # %.thread
	addi.w	$a2, $s6, -17
	addi.d	$a3, $sp, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(getChroma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 72
	ori	$a0, $zero, 13
	bltu	$a0, $a1, .LBB37_43
# %bb.41:                               # %.thread
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $s8, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB37_43
# %bb.42:
	ld.w	$a0, $sp, 16
	bnez	$a0, .LBB37_45
	b	.LBB37_52
.LBB37_43:
	ld.w	$a0, $sp, 16
	ori	$a2, $zero, 14
	bne	$a1, $a2, .LBB37_49
# %bb.44:
	beqz	$a0, .LBB37_49
.LBB37_45:
	ld.d	$a1, $s7, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 224
	beqz	$a1, .LBB37_50
# %bb.46:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 4016
	beqz	$a1, .LBB37_50
# %bb.47:
	ld.d	$a1, $s2, 0
	ldptr.d	$a2, $a1, 14208
	ld.w	$a2, $a2, 4
	bnez	$a2, .LBB37_50
# %bb.48:
	ld.w	$a2, $sp, 20
	ldptr.d	$a1, $a1, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 16
	sltui	$a1, $a0, 1
	add.d	$s3, $s3, $a1
.LBB37_49:                              # %thread-pre-split92
	beqz	$a0, .LBB37_52
.LBB37_50:                              # %thread-pre-split92.thread
	ld.d	$a0, $s2, 0
	ld.w	$a1, $sp, 20
	ld.d	$a0, $a0, 152
	ld.w	$a2, $sp, 24
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	alsl.w	$a1, $s1, $a2, 1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 28
	alsl.d	$a0, $a1, $a0, 2
	ld.w	$a0, $a0, 16
.LBB37_51:                              # %.thread94
	add.d	$s5, $a0, $s5
	addi.d	$s3, $s3, 1
.LBB37_52:                              # %.thread94
	addi.d	$a0, $s3, -2
	sltui	$a0, $a0, 1
	addi.w	$a1, $s5, 1
	srli.d	$a1, $a1, 1
	masknez	$a2, $s5, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	addi.w	$a0, $a0, 0
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
.Lfunc_end37:
	.size	predict_nnz_chroma, .Lfunc_end37-predict_nnz_chroma
                                        # -- End function
	.globl	find_sad_16x16                  # -- Begin function find_sad_16x16
	.p2align	5
	.type	find_sad_16x16,@function
find_sad_16x16:                         # @find_sad_16x16
# %bb.0:
	addi.d	$sp, $sp, -1648
	st.d	$ra, $sp, 1640                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1632                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1624                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1616                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1608                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1600                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1592                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1584                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1576                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1568                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1560                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1552                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1544                 # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$fp, $a0, %got_pc_lo12(img)
	ld.d	$a0, $fp, 0
	ld.w	$s0, $a0, 12
	pcalau12i	$s2, %pc_hi20(getNeighbour)
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.w	$s1, $zero, -1
	addi.d	$a4, $sp, 88
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 112
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 136
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 160
	ori	$a2, $zero, 2
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 184
	ori	$a2, $zero, 3
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 208
	ori	$a2, $zero, 4
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 232
	ori	$a2, $zero, 5
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 256
	ori	$a2, $zero, 6
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 280
	ori	$a2, $zero, 7
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 304
	ori	$a2, $zero, 8
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 328
	ori	$a2, $zero, 9
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 352
	ori	$a2, $zero, 10
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 376
	ori	$a2, $zero, 11
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 400
	ori	$a2, $zero, 12
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 424
	ori	$a2, $zero, 13
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 448
	ori	$a2, $zero, 14
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 472
	ori	$a2, $zero, 15
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s2, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 496
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s1
	move	$a3, $zero
	jirl	$ra, $a5, 0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a4, $a0, 0
	ld.w	$a0, $a4, 272
	ld.w	$a5, $sp, 496
	beqz	$a0, .LBB38_20
# %bb.1:
	ld.d	$a2, $fp, 0
	beqz	$a5, .LBB38_21
# %bb.2:
	ld.w	$a0, $sp, 500
	ldptr.d	$a1, $a2, 14240
	slli.d	$a0, $a0, 2
	ldx.w	$a5, $a1, $a0
	ld.w	$a0, $sp, 112
	beqz	$a0, .LBB38_22
.LBB38_3:
	ld.w	$a0, $sp, 116
	ldptr.d	$a1, $a2, 14240
	slli.d	$a0, $a0, 2
	ldx.wu	$a0, $a1, $a0
	andi	$a0, $a0, 1
	ld.w	$a1, $sp, 136
	beqz	$a1, .LBB38_23
.LBB38_4:
	ld.w	$a1, $sp, 140
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 160
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_24
.LBB38_5:
	ld.w	$a1, $sp, 164
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 184
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_25
.LBB38_6:
	ld.w	$a1, $sp, 188
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 208
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_26
.LBB38_7:
	ld.w	$a1, $sp, 212
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 232
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_27
.LBB38_8:
	ld.w	$a1, $sp, 236
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 256
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_28
.LBB38_9:
	ld.w	$a1, $sp, 260
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 280
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_29
.LBB38_10:
	ld.w	$a1, $sp, 284
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 304
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_30
.LBB38_11:
	ld.w	$a1, $sp, 308
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 328
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_31
.LBB38_12:
	ld.w	$a1, $sp, 332
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 352
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_32
.LBB38_13:
	ld.w	$a1, $sp, 356
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 376
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_33
.LBB38_14:
	ld.w	$a1, $sp, 380
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 400
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_34
.LBB38_15:
	ld.w	$a1, $sp, 404
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 424
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_35
.LBB38_16:
	ld.w	$a1, $sp, 428
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 448
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_36
.LBB38_17:
	ld.w	$a1, $sp, 452
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 472
	and	$a0, $a1, $a0
	beqz	$a3, .LBB38_37
.LBB38_18:
	ld.w	$a1, $sp, 476
	ldptr.d	$a3, $a2, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $sp, 88
	and	$a6, $a1, $a0
	beqz	$a3, .LBB38_38
.LBB38_19:
	ld.w	$a0, $sp, 92
	ldptr.d	$a1, $a2, 14240
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	b	.LBB38_39
.LBB38_20:
	ld.w	$a6, $sp, 112
	ld.w	$a0, $sp, 88
	b	.LBB38_39
.LBB38_21:
	move	$a5, $zero
	ld.w	$a0, $sp, 112
	bnez	$a0, .LBB38_3
.LBB38_22:
	move	$a0, $zero
	ld.w	$a1, $sp, 136
	bnez	$a1, .LBB38_4
.LBB38_23:
	move	$a1, $zero
	ld.w	$a3, $sp, 160
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_5
.LBB38_24:
	move	$a1, $zero
	ld.w	$a3, $sp, 184
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_6
.LBB38_25:
	move	$a1, $zero
	ld.w	$a3, $sp, 208
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_7
.LBB38_26:
	move	$a1, $zero
	ld.w	$a3, $sp, 232
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_8
.LBB38_27:
	move	$a1, $zero
	ld.w	$a3, $sp, 256
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_9
.LBB38_28:
	move	$a1, $zero
	ld.w	$a3, $sp, 280
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_10
.LBB38_29:
	move	$a1, $zero
	ld.w	$a3, $sp, 304
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_11
.LBB38_30:
	move	$a1, $zero
	ld.w	$a3, $sp, 328
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_12
.LBB38_31:
	move	$a1, $zero
	ld.w	$a3, $sp, 352
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_13
.LBB38_32:
	move	$a1, $zero
	ld.w	$a3, $sp, 376
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_14
.LBB38_33:
	move	$a1, $zero
	ld.w	$a3, $sp, 400
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_15
.LBB38_34:
	move	$a1, $zero
	ld.w	$a3, $sp, 424
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_16
.LBB38_35:
	move	$a1, $zero
	ld.w	$a3, $sp, 448
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_17
.LBB38_36:
	move	$a1, $zero
	ld.w	$a3, $sp, 472
	and	$a0, $a1, $a0
	bnez	$a3, .LBB38_18
.LBB38_37:
	move	$a1, $zero
	ld.w	$a3, $sp, 88
	and	$a6, $a1, $a0
	bnez	$a3, .LBB38_19
.LBB38_38:
	move	$a0, $zero
.LBB38_39:
	move	$a3, $zero
	ori	$t0, $zero, 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$t0, $a1, 0
	ld.d	$t1, $fp, 0
	sltu	$a1, $zero, $a5
	sltu	$a2, $zero, $a6
	and	$a1, $a2, $a1
	sltu	$a0, $zero, $a0
	and	$a0, $a1, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(imgY_org)
	ld.d	$a0, $a0, %pc_lo12(imgY_org)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$t3, $sp, 1288
	addi.d	$t4, $sp, 776
	addi.d	$t5, $sp, 1032
	addi.d	$t6, $sp, 584
	addi.d	$t7, $sp, 840
	addi.d	$t8, $sp, 1096
	addi.d	$s0, $sp, 1352
	addi.d	$s1, $sp, 648
	addi.d	$s2, $sp, 904
	addi.d	$s3, $sp, 1160
	addi.d	$s4, $sp, 1416
	addi.d	$s5, $sp, 712
	addi.d	$ra, $sp, 968
	addi.d	$t2, $sp, 1224
	addi.d	$a1, $sp, 1480
	lu12i.w	$a0, 1
	ori	$a0, $a0, 750
	add.d	$s7, $t1, $a0
	lu12i.w	$a0, 244
	ori	$a0, $a0, 575
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a7, $zero, 4
	ori	$s6, $zero, 1
	addi.d	$fp, $sp, 520
	vrepli.b	$vr0, 0
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	st.d	$t1, $sp, 32                    # 8-byte Folded Spill
	b	.LBB38_41
	.p2align	4, , 16
.LBB38_40:                              #   in Loop: Header=BB38_41 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$s7, $s7, 512
	beq	$a3, $a7, .LBB38_58
.LBB38_41:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_53 Depth 2
                                        #     Child Loop BB38_55 Depth 2
	ldptr.w	$a0, $a4, 4048
	beqz	$a0, .LBB38_45
# %bb.42:                               #   in Loop: Header=BB38_41 Depth=1
	ld.w	$a0, $t1, 20
	bne	$a0, $t0, .LBB38_45
# %bb.43:                               #   in Loop: Header=BB38_41 Depth=1
	bnez	$a3, .LBB38_49
# %bb.44:                               #   in Loop: Header=BB38_41 Depth=1
	beqz	$a5, .LBB38_40
	b	.LBB38_49
	.p2align	4, , 16
.LBB38_45:                              #   in Loop: Header=BB38_41 Depth=1
	ldptr.w	$a0, $a4, 4064
	beqz	$a0, .LBB38_47
# %bb.46:                               #   in Loop: Header=BB38_41 Depth=1
	bltu	$a3, $t0, .LBB38_40
.LBB38_47:                              #   in Loop: Header=BB38_41 Depth=1
	ldptr.w	$a0, $a4, 4068
	sltu	$a0, $zero, $a0
	addi.d	$a2, $a3, -3
	sltui	$a2, $a2, 1
	and	$a0, $a2, $a0
	bnez	$a0, .LBB38_40
# %bb.48:                               #   in Loop: Header=BB38_41 Depth=1
	or	$a0, $a3, $a5
	sltu	$a0, $zero, $a0
	beqz	$a0, .LBB38_40
.LBB38_49:                              #   in Loop: Header=BB38_41 Depth=1
	bne	$a3, $s6, .LBB38_51
# %bb.50:                               #   in Loop: Header=BB38_41 Depth=1
	beqz	$a6, .LBB38_40
.LBB38_51:                              #   in Loop: Header=BB38_41 Depth=1
	addi.d	$a0, $a3, -3
	sltu	$a0, $zero, $a0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	or	$a0, $a0, $a2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB38_58
# %bb.52:                               #   in Loop: Header=BB38_41 Depth=1
	ld.w	$a0, $t1, 196
	ld.w	$a2, $t1, 192
	move	$a6, $zero
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$s6, $a0, $a4, 3
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB38_53:                              # %.preheader248
                                        #   Parent Loop BB38_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, 0
	slli.d	$a4, $a2, 1
	ldx.hu	$a5, $a0, $a4
	ld.hu	$t0, $s7, -30
	alsl.d	$a4, $a2, $a0, 1
	sub.d	$a0, $a5, $t0
	slli.d	$a5, $a6, 4
	andi	$s8, $a5, 48
	add.d	$t0, $fp, $s8
	ld.hu	$t1, $a4, 2
	move	$a7, $t2
	ld.hu	$t2, $s7, -28
	bstrpick.d	$a5, $a6, 31, 2
	slli.d	$a5, $a5, 2
	stx.w	$a0, $t0, $a5
	sub.d	$a0, $t1, $t2
	add.d	$t0, $t4, $s8
	ld.hu	$t1, $a4, 4
	ld.hu	$t2, $s7, -26
	stx.w	$a0, $t0, $a5
	ld.hu	$a0, $a4, 6
	ld.hu	$t0, $s7, -24
	sub.d	$t1, $t1, $t2
	add.d	$t2, $t5, $s8
	stx.w	$t1, $t2, $a5
	sub.d	$a0, $a0, $t0
	add.d	$t0, $t3, $s8
	ld.hu	$t1, $a4, 8
	ld.hu	$t2, $s7, -22
	stx.w	$a0, $t0, $a5
	ld.hu	$a0, $a4, 10
	ld.hu	$t0, $s7, -20
	sub.d	$t1, $t1, $t2
	add.d	$t2, $t6, $s8
	stx.w	$t1, $t2, $a5
	sub.d	$a0, $a0, $t0
	add.d	$t0, $t7, $s8
	ld.hu	$t1, $a4, 12
	ld.hu	$t2, $s7, -18
	stx.w	$a0, $t0, $a5
	ld.hu	$a0, $a4, 14
	ld.hu	$t0, $s7, -16
	sub.d	$t1, $t1, $t2
	add.d	$t2, $t8, $s8
	stx.w	$t1, $t2, $a5
	sub.d	$a0, $a0, $t0
	add.d	$t0, $s0, $s8
	ld.hu	$t1, $a4, 16
	ld.hu	$t2, $s7, -14
	stx.w	$a0, $t0, $a5
	ld.hu	$a0, $a4, 18
	ld.hu	$t0, $s7, -12
	sub.d	$t1, $t1, $t2
	add.d	$t2, $s1, $s8
	stx.w	$t1, $t2, $a5
	sub.d	$a0, $a0, $t0
	add.d	$t0, $s2, $s8
	ld.hu	$t1, $a4, 20
	ld.hu	$t2, $s7, -10
	stx.w	$a0, $t0, $a5
	ld.hu	$a0, $a4, 22
	ld.hu	$t0, $s7, -8
	sub.d	$t1, $t1, $t2
	add.d	$t2, $s3, $s8
	stx.w	$t1, $t2, $a5
	sub.d	$a0, $a0, $t0
	add.d	$t0, $s4, $s8
	ld.hu	$t1, $a4, 24
	ld.hu	$t2, $s7, -6
	stx.w	$a0, $t0, $a5
	ld.hu	$a0, $a4, 26
	ld.hu	$t0, $s7, -4
	sub.d	$t1, $t1, $t2
	add.d	$t2, $s5, $s8
	stx.w	$t1, $t2, $a5
	sub.d	$a0, $a0, $t0
	add.d	$t0, $ra, $s8
	ld.hu	$t1, $a4, 28
	ld.hu	$t2, $s7, -2
	stx.w	$a0, $t0, $a5
	ld.hu	$a0, $a4, 30
	ld.hu	$a4, $s7, 0
	sub.d	$t0, $t1, $t2
	move	$t2, $a7
	add.d	$t1, $a7, $s8
	stx.w	$t0, $t1, $a5
	sub.d	$a0, $a0, $a4
	add.d	$a4, $a1, $s8
	ori	$t0, $zero, 16
	stx.w	$a0, $a4, $a5
	addi.d	$a6, $a6, 1
	addi.d	$s6, $s6, 8
	addi.d	$s7, $s7, 32
	bne	$a6, $t0, .LBB38_53
# %bb.54:                               # %.preheader247.preheader
                                        #   in Loop: Header=BB38_41 Depth=1
	move	$s6, $zero
	ori	$a6, $zero, 1008
	ori	$a1, $zero, 1024
	.p2align	4, , 16
.LBB38_55:                              # %.preheader247
                                        #   Parent Loop BB38_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $fp, $a6
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $s6, 0
	ld.w	$a0, $a2, -1008
	ld.w	$a4, $a2, -944
	ld.w	$a5, $a2, -880
	ld.w	$t0, $a2, -816
	vinsgr2vr.w	$vr2, $a0, 0
	vinsgr2vr.w	$vr2, $a4, 1
	vinsgr2vr.w	$vr2, $a5, 2
	vinsgr2vr.w	$vr2, $t0, 3
	ld.w	$a0, $a2, -240
	ld.w	$a4, $a2, -176
	ld.w	$a5, $a2, -112
	ld.w	$t0, $a2, -48
	vinsgr2vr.w	$vr3, $a0, 0
	vinsgr2vr.w	$vr3, $a4, 1
	vinsgr2vr.w	$vr3, $a5, 2
	vinsgr2vr.w	$vr3, $t0, 3
	vadd.w	$vr4, $vr3, $vr2
	ld.w	$a0, $a2, -752
	ld.w	$a4, $a2, -688
	ld.w	$a5, $a2, -624
	ld.w	$t0, $a2, -560
	vinsgr2vr.w	$vr5, $a0, 0
	vinsgr2vr.w	$vr5, $a4, 1
	vinsgr2vr.w	$vr5, $a5, 2
	vinsgr2vr.w	$vr5, $t0, 3
	ld.w	$a0, $a2, -496
	ld.w	$a4, $a2, -432
	ld.w	$a5, $a2, -368
	ld.w	$t0, $a2, -304
	vinsgr2vr.w	$vr6, $a0, 0
	vinsgr2vr.w	$vr6, $a4, 1
	vinsgr2vr.w	$vr6, $a5, 2
	vinsgr2vr.w	$vr6, $t0, 3
	vadd.w	$vr8, $vr6, $vr5
	vsub.w	$vr6, $vr5, $vr6
	vsub.w	$vr2, $vr2, $vr3
	vadd.w	$vr7, $vr8, $vr4
	vsub.w	$vr3, $vr4, $vr8
	vadd.w	$vr5, $vr6, $vr2
	vsub.w	$vr2, $vr2, $vr6
	ld.w	$a0, $a2, -992
	ld.w	$a4, $a2, -928
	ld.w	$a5, $a2, -864
	ld.w	$t0, $a2, -800
	vinsgr2vr.w	$vr4, $a0, 0
	vinsgr2vr.w	$vr4, $a4, 1
	vinsgr2vr.w	$vr4, $a5, 2
	vinsgr2vr.w	$vr4, $t0, 3
	ld.w	$a0, $a2, -224
	ld.w	$a4, $a2, -160
	ld.w	$a5, $a2, -96
	ld.w	$t0, $a2, -32
	vinsgr2vr.w	$vr6, $a0, 0
	vinsgr2vr.w	$vr6, $a4, 1
	vinsgr2vr.w	$vr6, $a5, 2
	vinsgr2vr.w	$vr6, $t0, 3
	vadd.w	$vr8, $vr6, $vr4
	ld.w	$a0, $a2, -736
	ld.w	$a4, $a2, -672
	ld.w	$a5, $a2, -608
	ld.w	$t0, $a2, -544
	vinsgr2vr.w	$vr9, $a0, 0
	vinsgr2vr.w	$vr9, $a4, 1
	vinsgr2vr.w	$vr9, $a5, 2
	vinsgr2vr.w	$vr9, $t0, 3
	ld.w	$a0, $a2, -480
	ld.w	$a4, $a2, -416
	ld.w	$a5, $a2, -352
	ld.w	$t0, $a2, -288
	vinsgr2vr.w	$vr10, $a0, 0
	vinsgr2vr.w	$vr10, $a4, 1
	vinsgr2vr.w	$vr10, $a5, 2
	vinsgr2vr.w	$vr10, $t0, 3
	vadd.w	$vr11, $vr10, $vr9
	vsub.w	$vr9, $vr9, $vr10
	vsub.w	$vr4, $vr4, $vr6
	vadd.w	$vr12, $vr11, $vr8
	vsub.w	$vr6, $vr8, $vr11
	vadd.w	$vr11, $vr9, $vr4
	vsub.w	$vr4, $vr4, $vr9
	ld.w	$a0, $a2, -976
	ld.w	$a4, $a2, -912
	ld.w	$a5, $a2, -848
	ld.w	$t0, $a2, -784
	vinsgr2vr.w	$vr8, $a0, 0
	vinsgr2vr.w	$vr8, $a4, 1
	vinsgr2vr.w	$vr8, $a5, 2
	vinsgr2vr.w	$vr8, $t0, 3
	ld.w	$a0, $a2, -208
	ld.w	$a4, $a2, -144
	ld.w	$a5, $a2, -80
	ld.w	$t0, $a2, -16
	vinsgr2vr.w	$vr9, $a0, 0
	vinsgr2vr.w	$vr9, $a4, 1
	vinsgr2vr.w	$vr9, $a5, 2
	vinsgr2vr.w	$vr9, $t0, 3
	vadd.w	$vr10, $vr9, $vr8
	ld.w	$a0, $a2, -720
	ld.w	$a4, $a2, -656
	ld.w	$a5, $a2, -592
	ld.w	$t0, $a2, -528
	vinsgr2vr.w	$vr13, $a0, 0
	vinsgr2vr.w	$vr13, $a4, 1
	vinsgr2vr.w	$vr13, $a5, 2
	vinsgr2vr.w	$vr13, $t0, 3
	ld.w	$a0, $a2, -464
	ld.w	$a4, $a2, -400
	ld.w	$a5, $a2, -336
	ld.w	$t0, $a2, -272
	vinsgr2vr.w	$vr14, $a0, 0
	vinsgr2vr.w	$vr14, $a4, 1
	vinsgr2vr.w	$vr14, $a5, 2
	vinsgr2vr.w	$vr14, $t0, 3
	vadd.w	$vr15, $vr14, $vr13
	vsub.w	$vr14, $vr13, $vr14
	vsub.w	$vr8, $vr8, $vr9
	vadd.w	$vr16, $vr15, $vr10
	vsub.w	$vr13, $vr10, $vr15
	vadd.w	$vr18, $vr14, $vr8
	vsub.w	$vr8, $vr8, $vr14
	ld.w	$a0, $a2, -960
	ld.w	$a4, $a2, -896
	ld.w	$a5, $a2, -832
	ld.w	$t0, $a2, -768
	vinsgr2vr.w	$vr9, $a0, 0
	vinsgr2vr.w	$vr9, $a4, 1
	vinsgr2vr.w	$vr9, $a5, 2
	vinsgr2vr.w	$vr9, $t0, 3
	ld.w	$a0, $a2, -192
	ld.w	$a4, $a2, -128
	ld.w	$a5, $a2, -64
	ldx.w	$t0, $a6, $fp
	vinsgr2vr.w	$vr10, $a0, 0
	vinsgr2vr.w	$vr10, $a4, 1
	vinsgr2vr.w	$vr10, $a5, 2
	vinsgr2vr.w	$vr10, $t0, 3
	vadd.w	$vr14, $vr10, $vr9
	ld.w	$a0, $a2, -704
	ld.w	$a4, $a2, -640
	ld.w	$a5, $a2, -576
	ld.w	$t0, $a2, -512
	vinsgr2vr.w	$vr15, $a0, 0
	vinsgr2vr.w	$vr15, $a4, 1
	vinsgr2vr.w	$vr15, $a5, 2
	vinsgr2vr.w	$vr15, $t0, 3
	ld.w	$a0, $a2, -448
	ld.w	$a4, $a2, -384
	ld.w	$a5, $a2, -320
	ld.w	$t0, $a2, -256
	vinsgr2vr.w	$vr17, $a0, 0
	vinsgr2vr.w	$vr17, $a4, 1
	vinsgr2vr.w	$vr17, $a5, 2
	vinsgr2vr.w	$vr17, $t0, 3
	vadd.w	$vr19, $vr17, $vr15
	vsub.w	$vr15, $vr15, $vr17
	vsub.w	$vr9, $vr9, $vr10
	vadd.w	$vr17, $vr19, $vr14
	vsub.w	$vr19, $vr14, $vr19
	vadd.w	$vr20, $vr15, $vr9
	vsub.w	$vr15, $vr9, $vr15
	vadd.w	$vr9, $vr17, $vr7
	vadd.w	$vr10, $vr16, $vr12
	vsub.w	$vr12, $vr12, $vr16
	vsub.w	$vr7, $vr7, $vr17
	vadd.w	$vr14, $vr10, $vr9
	vpickve2gr.w	$a0, $vr14, 0
	st.w	$a0, $a2, -1008
	vpickve2gr.w	$a0, $vr14, 1
	st.w	$a0, $a2, -944
	vpickve2gr.w	$a0, $vr14, 2
	st.w	$a0, $a2, -880
	vpickve2gr.w	$a0, $vr14, 3
	st.w	$a0, $a2, -816
	vsub.w	$vr14, $vr9, $vr10
	vpickve2gr.w	$a0, $vr14, 0
	st.w	$a0, $a2, -976
	vpickve2gr.w	$a0, $vr14, 1
	st.w	$a0, $a2, -912
	vpickve2gr.w	$a0, $vr14, 2
	st.w	$a0, $a2, -848
	vpickve2gr.w	$a0, $vr14, 3
	st.w	$a0, $a2, -784
	vadd.w	$vr14, $vr12, $vr7
	vpickve2gr.w	$a0, $vr14, 0
	st.w	$a0, $a2, -992
	vpickve2gr.w	$a0, $vr14, 1
	st.w	$a0, $a2, -928
	vpickve2gr.w	$a0, $vr14, 2
	st.w	$a0, $a2, -864
	vpickve2gr.w	$a0, $vr14, 3
	st.w	$a0, $a2, -800
	vsub.w	$vr16, $vr7, $vr12
	vpickve2gr.w	$a0, $vr16, 0
	st.w	$a0, $a2, -960
	vpickve2gr.w	$a0, $vr16, 1
	st.w	$a0, $a2, -896
	vpickve2gr.w	$a0, $vr16, 2
	st.w	$a0, $a2, -832
	vpickve2gr.w	$a0, $vr16, 3
	st.w	$a0, $a2, -768
	vadd.w	$vr16, $vr20, $vr5
	vadd.w	$vr17, $vr18, $vr11
	vsub.w	$vr11, $vr11, $vr18
	vsub.w	$vr18, $vr5, $vr20
	vadd.w	$vr5, $vr17, $vr16
	vpickve2gr.w	$a0, $vr5, 0
	st.w	$a0, $a2, -752
	vpickve2gr.w	$a0, $vr5, 1
	st.w	$a0, $a2, -688
	vpickve2gr.w	$a0, $vr5, 2
	st.w	$a0, $a2, -624
	vpickve2gr.w	$a0, $vr5, 3
	st.w	$a0, $a2, -560
	vsub.w	$vr20, $vr16, $vr17
	vpickve2gr.w	$a0, $vr20, 0
	st.w	$a0, $a2, -720
	vpickve2gr.w	$a0, $vr20, 1
	st.w	$a0, $a2, -656
	vpickve2gr.w	$a0, $vr20, 2
	st.w	$a0, $a2, -592
	vpickve2gr.w	$a0, $vr20, 3
	st.w	$a0, $a2, -528
	vadd.w	$vr20, $vr11, $vr18
	vpickve2gr.w	$a0, $vr20, 0
	st.w	$a0, $a2, -736
	vpickve2gr.w	$a0, $vr20, 1
	st.w	$a0, $a2, -672
	vpickve2gr.w	$a0, $vr20, 2
	st.w	$a0, $a2, -608
	vpickve2gr.w	$a0, $vr20, 3
	st.w	$a0, $a2, -544
	vsub.w	$vr21, $vr18, $vr11
	vpickve2gr.w	$a0, $vr21, 0
	st.w	$a0, $a2, -704
	vpickve2gr.w	$a0, $vr21, 1
	st.w	$a0, $a2, -640
	vpickve2gr.w	$a0, $vr21, 2
	st.w	$a0, $a2, -576
	vstelm.w	$vr21, $a2, -512, 3
	vadd.w	$vr21, $vr19, $vr3
	vadd.w	$vr22, $vr13, $vr6
	vsub.w	$vr6, $vr6, $vr13
	vsub.w	$vr3, $vr3, $vr19
	vadd.w	$vr13, $vr22, $vr21
	vstelm.w	$vr13, $a2, -496, 0
	vstelm.w	$vr13, $a2, -432, 1
	vstelm.w	$vr13, $a2, -368, 2
	vstelm.w	$vr13, $a2, -304, 3
	vsub.w	$vr19, $vr21, $vr22
	vstelm.w	$vr19, $a2, -464, 0
	vstelm.w	$vr19, $a2, -400, 1
	vstelm.w	$vr19, $a2, -336, 2
	vstelm.w	$vr19, $a2, -272, 3
	vadd.w	$vr19, $vr6, $vr3
	vstelm.w	$vr19, $a2, -480, 0
	vstelm.w	$vr19, $a2, -416, 1
	vstelm.w	$vr19, $a2, -352, 2
	vstelm.w	$vr19, $a2, -288, 3
	vsub.w	$vr23, $vr3, $vr6
	vstelm.w	$vr23, $a2, -448, 0
	vstelm.w	$vr23, $a2, -384, 1
	vstelm.w	$vr23, $a2, -320, 2
	vstelm.w	$vr23, $a2, -256, 3
	vadd.w	$vr23, $vr15, $vr2
	vadd.w	$vr24, $vr8, $vr4
	vsub.w	$vr4, $vr4, $vr8
	vsub.w	$vr2, $vr2, $vr15
	vadd.w	$vr8, $vr24, $vr23
	vstelm.w	$vr8, $a2, -240, 0
	vstelm.w	$vr8, $a2, -176, 1
	vstelm.w	$vr8, $a2, -112, 2
	vstelm.w	$vr8, $a2, -48, 3
	vsub.w	$vr15, $vr23, $vr24
	vstelm.w	$vr15, $a2, -208, 0
	vstelm.w	$vr15, $a2, -144, 1
	vstelm.w	$vr15, $a2, -80, 2
	vstelm.w	$vr15, $a2, -16, 3
	vadd.w	$vr15, $vr4, $vr2
	vstelm.w	$vr15, $a2, -224, 0
	vstelm.w	$vr15, $a2, -160, 1
	vstelm.w	$vr15, $a2, -96, 2
	vstelm.w	$vr15, $a2, -32, 3
	vsub.w	$vr25, $vr2, $vr4
	vstelm.w	$vr25, $a2, -192, 0
	vstelm.w	$vr25, $a2, -128, 1
	vstelm.w	$vr25, $a2, -64, 2
	vstelm.w	$vr25, $a2, 0, 3
	vabsd.w	$vr2, $vr2, $vr4
	vabsd.w	$vr4, $vr23, $vr24
	vneg.w	$vr23, $vr15
	vmax.w	$vr15, $vr15, $vr23
	vneg.w	$vr23, $vr8
	vmax.w	$vr8, $vr8, $vr23
	vabsd.w	$vr3, $vr3, $vr6
	vabsd.w	$vr6, $vr21, $vr22
	vneg.w	$vr21, $vr19
	vmax.w	$vr19, $vr19, $vr21
	vneg.w	$vr21, $vr13
	vmax.w	$vr13, $vr13, $vr21
	vabsd.w	$vr11, $vr18, $vr11
	vabsd.w	$vr16, $vr16, $vr17
	vneg.w	$vr17, $vr20
	vmax.w	$vr17, $vr20, $vr17
	vneg.w	$vr18, $vr5
	vmax.w	$vr5, $vr5, $vr18
	vabsd.w	$vr7, $vr7, $vr12
	vabsd.w	$vr9, $vr9, $vr10
	vneg.w	$vr10, $vr14
	vmax.w	$vr10, $vr14, $vr10
	vadd.w	$vr1, $vr10, $vr1
	vadd.w	$vr1, $vr9, $vr1
	vadd.w	$vr1, $vr7, $vr1
	vadd.w	$vr1, $vr5, $vr1
	vadd.w	$vr1, $vr17, $vr1
	vadd.w	$vr1, $vr16, $vr1
	vadd.w	$vr1, $vr11, $vr1
	vadd.w	$vr1, $vr13, $vr1
	vadd.w	$vr1, $vr19, $vr1
	vadd.w	$vr1, $vr6, $vr1
	vadd.w	$vr1, $vr3, $vr1
	vadd.w	$vr1, $vr8, $vr1
	vadd.w	$vr1, $vr15, $vr1
	vadd.w	$vr1, $vr4, $vr1
	vadd.w	$vr1, $vr2, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	addi.d	$a6, $a6, 4
	vpickve2gr.d	$s6, $vr1, 0
	bne	$a6, $a1, .LBB38_55
# %bb.56:                               # %.preheader251
                                        #   in Loop: Header=BB38_41 Depth=1
	ld.w	$a0, $sp, 520
	ld.w	$a4, $sp, 584
	bstrpick.d	$a2, $a0, 62, 61
	add.w	$a0, $a0, $a2
	srai.d	$a2, $a0, 2
	bstrpick.d	$a0, $a4, 62, 61
	ld.w	$a5, $sp, 648
	add.w	$a0, $a4, $a0
	srai.d	$a4, $a0, 2
	ld.w	$a0, $sp, 712
	bstrpick.d	$a6, $a5, 62, 61
	add.w	$a5, $a5, $a6
	srai.d	$a5, $a5, 2
	bstrpick.d	$a6, $a0, 62, 61
	ld.w	$t0, $sp, 524
	add.w	$a0, $a0, $a6
	srai.d	$s7, $a0, 2
	ld.w	$a0, $sp, 588
	bstrpick.d	$a6, $t0, 62, 61
	add.w	$a6, $t0, $a6
	srai.d	$a6, $a6, 2
	bstrpick.d	$t0, $a0, 62, 61
	ld.w	$t1, $sp, 652
	add.w	$a0, $a0, $t0
	srai.d	$s8, $a0, 2
	ld.w	$t0, $sp, 716
	bstrpick.d	$a0, $t1, 62, 61
	add.w	$a0, $t1, $a0
	srai.d	$a0, $a0, 2
	bstrpick.d	$t1, $t0, 62, 61
	ld.w	$t2, $sp, 528
	add.w	$t0, $t0, $t1
	srai.d	$t1, $t0, 2
	ld.w	$t3, $sp, 592
	bstrpick.d	$t0, $t2, 62, 61
	add.w	$t0, $t2, $t0
	srai.d	$t0, $t0, 2
	bstrpick.d	$t2, $t3, 62, 61
	ld.w	$t4, $sp, 656
	add.w	$t2, $t3, $t2
	srai.d	$t2, $t2, 2
	ld.w	$t3, $sp, 720
	bstrpick.d	$t5, $t4, 62, 61
	add.w	$t4, $t4, $t5
	srai.d	$t4, $t4, 2
	bstrpick.d	$t5, $t3, 62, 61
	ld.w	$t6, $sp, 532
	add.w	$t3, $t3, $t5
	srai.d	$t3, $t3, 2
	ld.w	$t5, $sp, 596
	bstrpick.d	$t7, $t6, 62, 61
	add.w	$t6, $t6, $t7
	srai.d	$t6, $t6, 2
	bstrpick.d	$t7, $t5, 62, 61
	ld.w	$t8, $sp, 660
	add.w	$t5, $t5, $t7
	srai.d	$t5, $t5, 2
	ld.w	$t7, $sp, 724
	bstrpick.d	$s0, $t8, 62, 61
	add.w	$t8, $t8, $s0
	srai.d	$t8, $t8, 2
	bstrpick.d	$s0, $t7, 62, 61
	add.w	$t7, $t7, $s0
	srai.d	$t7, $t7, 2
	add.d	$s0, $s7, $a2
	add.d	$s1, $a5, $a4
	sub.d	$a4, $a4, $a5
	sub.d	$a2, $a2, $s7
	add.d	$s2, $s1, $s0
	sub.d	$s7, $s0, $s1
	add.d	$s0, $a4, $a2
	sub.d	$a2, $a2, $a4
	add.d	$a4, $t1, $a6
	add.d	$a5, $a0, $s8
	sub.d	$a0, $s8, $a0
	sub.d	$a6, $a6, $t1
	add.d	$t1, $a5, $a4
	sub.d	$s8, $a4, $a5
	add.d	$s1, $a0, $a6
	sub.d	$a4, $a6, $a0
	add.d	$a0, $t3, $t0
	add.d	$a5, $t4, $t2
	sub.d	$a6, $t2, $t4
	sub.d	$t0, $t0, $t3
	add.d	$t2, $a5, $a0
	sub.d	$a0, $a0, $a5
	add.d	$t3, $a6, $t0
	sub.d	$a5, $t0, $a6
	add.d	$a6, $t7, $t6
	add.d	$t0, $t8, $t5
	sub.d	$t4, $t5, $t8
	sub.d	$t5, $t6, $t7
	add.d	$t6, $t0, $a6
	sub.d	$t0, $a6, $t0
	add.d	$t7, $t4, $t5
	sub.d	$a6, $t5, $t4
	add.d	$t4, $t6, $s2
	add.d	$t5, $t2, $t1
	sub.d	$t1, $t1, $t2
	sub.d	$t2, $s2, $t6
	add.w	$t6, $t5, $t4
	sub.w	$t4, $t4, $t5
	add.w	$t5, $t1, $t2
	sub.w	$t1, $t2, $t1
	srai.d	$t2, $t6, 31
	xor	$t6, $t6, $t2
	sub.d	$t2, $t6, $t2
	add.d	$t2, $t2, $s6
	srai.d	$t6, $t5, 31
	xor	$t5, $t5, $t6
	sub.d	$t5, $t5, $t6
	add.d	$t2, $t5, $t2
	srai.d	$t5, $t4, 31
	xor	$t4, $t4, $t5
	sub.d	$t4, $t4, $t5
	add.d	$t2, $t4, $t2
	srai.d	$t4, $t1, 31
	xor	$t1, $t1, $t4
	sub.d	$t1, $t1, $t4
	add.d	$t1, $t1, $t2
	add.d	$t2, $t7, $s0
	add.d	$t4, $t3, $s1
	sub.d	$t3, $s1, $t3
	sub.d	$t5, $s0, $t7
	add.w	$t6, $t4, $t2
	sub.w	$t2, $t2, $t4
	add.w	$t4, $t3, $t5
	sub.w	$t3, $t5, $t3
	srai.d	$t5, $t6, 31
	xor	$t6, $t6, $t5
	sub.d	$t5, $t6, $t5
	add.d	$t1, $t5, $t1
	srai.d	$t5, $t4, 31
	xor	$t4, $t4, $t5
	sub.d	$t4, $t4, $t5
	add.d	$t1, $t4, $t1
	srai.d	$t4, $t2, 31
	xor	$t2, $t2, $t4
	sub.d	$t2, $t2, $t4
	add.d	$t1, $t2, $t1
	srai.d	$t2, $t3, 31
	xor	$t3, $t3, $t2
	sub.d	$t2, $t3, $t2
	add.d	$t1, $t2, $t1
	add.d	$t2, $t0, $s7
	add.d	$t3, $a0, $s8
	sub.d	$a0, $s8, $a0
	sub.d	$t0, $s7, $t0
	add.w	$t4, $t3, $t2
	sub.w	$t2, $t2, $t3
	add.w	$t3, $a0, $t0
	sub.w	$a0, $t0, $a0
	srai.d	$t0, $t4, 31
	xor	$t4, $t4, $t0
	sub.d	$t0, $t4, $t0
	add.d	$t0, $t0, $t1
	srai.d	$t1, $t3, 31
	xor	$t3, $t3, $t1
	sub.d	$t1, $t3, $t1
	add.d	$t0, $t1, $t0
	srai.d	$t1, $t2, 31
	xor	$t2, $t2, $t1
	sub.d	$t1, $t2, $t1
	add.d	$t0, $t1, $t0
	srai.d	$t1, $a0, 31
	xor	$a0, $a0, $t1
	sub.d	$a0, $a0, $t1
	add.d	$a0, $a0, $t0
	add.d	$t0, $a6, $a2
	add.d	$t1, $a5, $a4
	sub.d	$a4, $a4, $a5
	sub.d	$a2, $a2, $a6
	add.w	$a5, $t1, $t0
	sub.w	$a6, $t0, $t1
	add.w	$t0, $a4, $a2
	sub.w	$a2, $a2, $a4
	srai.d	$a4, $a5, 31
	xor	$a5, $a5, $a4
	sub.d	$a4, $a5, $a4
	add.d	$a0, $a4, $a0
	srai.d	$a4, $t0, 31
	xor	$a5, $t0, $a4
	sub.d	$a4, $a5, $a4
	add.d	$a0, $a4, $a0
	srai.d	$a4, $a6, 31
	xor	$a5, $a6, $a4
	sub.d	$a4, $a5, $a4
	add.d	$a0, $a4, $a0
	srai.d	$a4, $a2, 31
	xor	$a2, $a2, $a4
	sub.d	$a2, $a2, $a4
	add.w	$a0, $a2, $a0
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	ori	$t0, $zero, 2
	ld.d	$t1, $sp, 32                    # 8-byte Folded Reload
	addi.d	$t3, $sp, 1288
	addi.d	$t4, $sp, 776
	addi.d	$t5, $sp, 1032
	addi.d	$t6, $sp, 584
	addi.d	$t7, $sp, 840
	addi.d	$t8, $sp, 1096
	addi.d	$s0, $sp, 1352
	addi.d	$s1, $sp, 648
	addi.d	$s2, $sp, 904
	addi.d	$s3, $sp, 1160
	addi.d	$s4, $sp, 1416
	addi.d	$s5, $sp, 712
	addi.d	$ra, $sp, 968
	move	$t2, $a7
	addi.d	$a1, $sp, 1480
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ori	$a7, $zero, 4
	ori	$s6, $zero, 1
	bge	$a0, $a2, .LBB38_40
# %bb.57:                               #   in Loop: Header=BB38_41 Depth=1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.w	$a3, $a2, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	b	.LBB38_40
.LBB38_58:                              # %.thread
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 1
	fld.d	$fs1, $sp, 1544                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1552                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1560                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1568                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1576                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1584                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1592                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1600                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1608                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1616                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1624                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1632                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1640                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1648
	ret
.Lfunc_end38:
	.size	find_sad_16x16, .Lfunc_end38-find_sad_16x16
                                        # -- End function
	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.type	imgY_org_bot,@object            # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgY_org_top,@object            # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	imgUV_org_top,@object           # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	imgY_org_frm,@object            # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Warning!!! Number of bits (%d) of macroblock_layer() data seems to exceed defined limit (%d).\n"
	.size	.L.str, 95

	.type	delta_qp_mbaff,@object          # @delta_qp_mbaff
	.comm	delta_qp_mbaff,16,4
	.type	qp_mbaff,@object                # @qp_mbaff
	.comm	qp_mbaff,16,4
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	quadratic_RC,@object            # @quadratic_RC
	.comm	quadratic_RC,8,8
	.type	updateQP,@object                # @updateQP
	.comm	updateQP,8,8
	.type	generic_RC,@object              # @generic_RC
	.comm	generic_RC,8,8
	.type	dq,@object                      # @dq
	.comm	dq,4,4
	.type	predict_error,@object           # @predict_error
	.comm	predict_error,4,4
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	terminate_macroblock.skip,@object # @terminate_macroblock.skip
	.local	terminate_macroblock.skip
	.comm	terminate_macroblock.skip,1,4
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Slice Mode %d not supported"
	.size	.L.str.1, 28

	.type	width_pad,@object               # @width_pad
	.comm	width_pad,4,4
	.type	height_pad,@object              # @height_pad
	.comm	height_pad,4,4
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	LumaPrediction4x4.l0_pred,@object # @LumaPrediction4x4.l0_pred
	.local	LumaPrediction4x4.l0_pred
	.comm	LumaPrediction4x4.l0_pred,32,8
	.type	LumaPrediction4x4.l1_pred,@object # @LumaPrediction4x4.l1_pred
	.local	LumaPrediction4x4.l1_pred
	.comm	LumaPrediction4x4.l1_pred,32,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	LumaPrediction4x4Bi.l0_pred,@object # @LumaPrediction4x4Bi.l0_pred
	.local	LumaPrediction4x4Bi.l0_pred
	.comm	LumaPrediction4x4Bi.l0_pred,32,8
	.type	LumaPrediction4x4Bi.l1_pred,@object # @LumaPrediction4x4Bi.l1_pred
	.local	LumaPrediction4x4Bi.l1_pred
	.comm	LumaPrediction4x4Bi.l1_pred,32,8
	.type	OneComponentChromaPrediction4x4,@object # @OneComponentChromaPrediction4x4
	.local	OneComponentChromaPrediction4x4
	.comm	OneComponentChromaPrediction4x4,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	diff64,@object                  # @diff64
	.local	diff64
	.comm	diff64,256,4
	.type	ChromaPrediction4x4.l0_pred,@object # @ChromaPrediction4x4.l0_pred
	.local	ChromaPrediction4x4.l0_pred
	.comm	ChromaPrediction4x4.l0_pred,32,8
	.type	ChromaPrediction4x4.l1_pred,@object # @ChromaPrediction4x4.l1_pred
	.local	ChromaPrediction4x4.l1_pred
	.comm	ChromaPrediction4x4.l1_pred,32,8
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	ChromaResidualCoding.block8x8_idx,@object # @ChromaResidualCoding.block8x8_idx
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
ChromaResidualCoding.block8x8_idx:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	0                               # 0x0
	.space	16
	.space	16
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.size	ChromaResidualCoding.block8x8_idx, 192

	.type	IntraChromaPrediction.block_pos,@object # @IntraChromaPrediction.block_pos
	.p2align	2, 0x0
IntraChromaPrediction.block_pos:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.space	16
	.space	16
	.space	16
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.space	16
	.space	16
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.size	IntraChromaPrediction.block_pos, 192

	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	subblk_offset_y,@object         # @subblk_offset_y
subblk_offset_y:
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\b\b\f\f"
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\b\b\f\f"
	.size	subblk_offset_y, 96

	.type	subblk_offset_x,@object         # @subblk_offset_x
subblk_offset_x:
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.size	subblk_offset_x, 96

	.type	diff,@object                    # @diff
	.local	diff
	.comm	diff,64,16
	.type	MBType2Value.dir1offset,@object # @MBType2Value.dir1offset
	.p2align	2, 0x0
MBType2Value.dir1offset:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.size	MBType2Value.dir1offset, 12

	.type	MBType2Value.dir2offset,@object # @MBType2Value.dir2offset
	.p2align	2, 0x0
MBType2Value.dir2offset:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	6                               # 0x6
	.word	2                               # 0x2
	.word	10                              # 0xa
	.word	12                              # 0xc
	.word	14                              # 0xe
	.word	16                              # 0x10
	.size	MBType2Value.dir2offset, 36

	.type	B8Mode2Value.b8start,@object    # @B8Mode2Value.b8start
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
B8Mode2Value.b8start:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	10                              # 0xa
	.size	B8Mode2Value.b8start, 32

	.type	B8Mode2Value.b8inc,@object      # @B8Mode2Value.b8inc
	.p2align	2, 0x0
B8Mode2Value.b8inc:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.size	B8Mode2Value.b8inc, 32

	.type	intras,@object                  # @intras
	.comm	intras,4,4
	.type	predict_nnz_chroma.j_off_tab,@object # @predict_nnz_chroma.j_off_tab
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
predict_nnz_chroma.j_off_tab:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.size	predict_nnz_chroma.j_off_tab, 48

	.type	writeCoeff4x4_CAVLC.incVlc,@object # @writeCoeff4x4_CAVLC.incVlc
	.p2align	2, 0x0
writeCoeff4x4_CAVLC.incVlc:
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	12                              # 0xc
	.word	24                              # 0x18
	.word	48                              # 0x30
	.word	32768                           # 0x8000
	.size	writeCoeff4x4_CAVLC.incVlc, 28

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"writeCoeff4x4_CAVLC: Invalid block type"
	.size	.L.str.8, 40

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
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
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
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	height_pad_cr,@object           # @height_pad_cr
	.comm	height_pad_cr,4,4
	.type	width_pad_cr,@object            # @width_pad_cr
	.comm	width_pad_cr,4,4
	.type	diffy,@object                   # @diffy
	.comm	diffy,1024,4
	.type	generic_RC_init,@object         # @generic_RC_init
	.comm	generic_RC_init,8,8
	.type	generic_RC_best,@object         # @generic_RC_best
	.comm	generic_RC_best,8,8
	.type	quadratic_RC_init,@object       # @quadratic_RC_init
	.comm	quadratic_RC_init,8,8
	.type	quadratic_RC_best,@object       # @quadratic_RC_best
	.comm	quadratic_RC_best,8,8
	.type	writeChromaCoeff.chroma_dc_context,@object # @writeChromaCoeff.chroma_dc_context
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
writeChromaCoeff.chroma_dc_context:
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	9                               # 0x9
	.size	writeChromaCoeff.chroma_dc_context, 12

	.type	writeChromaCoeff.chroma_ac_param,@object # @writeChromaCoeff.chroma_ac_param
writeChromaCoeff.chroma_ac_param:
	.ascii	"\004\024\005\025"
	.ascii	"$4%5"
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\004\024\005\025"
	.ascii	"\006\026\007\027"
	.ascii	"$4%5"
	.ascii	"&6'7"
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\004\024\005\025"
	.ascii	"$4%5"
	.ascii	"\006\026\007\027"
	.ascii	"&6'7"
	.ascii	"\b\030\t\031"
	.ascii	"(8)9"
	.ascii	"\n\032\013\033"
	.ascii	"*:+;"
	.size	writeChromaCoeff.chroma_ac_param, 96

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"ERROR: level > 1"
	.size	.Lstr, 17

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym OneComponentChromaPrediction4x4_retrieve
	.addrsig_sym OneComponentChromaPrediction4x4_regenerate
	.addrsig_sym errortext
	.addrsig_sym diff64
	.addrsig_sym ChromaPrediction4x4.l0_pred
	.addrsig_sym ChromaPrediction4x4.l1_pred
	.addrsig_sym diff
