	.file	"main.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	move	$s2, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L__const.main.defaultFile)
	addi.d	$a0, $a0, %pc_lo12(.L__const.main.defaultFile)
	ld.d	$a1, $a0, 15
	vld	$vr0, $a0, 0
	st.d	$a1, $sp, 271
	vst	$vr0, $sp, 256
	pcaddu18i	$ra, %call36(Configuration_new)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB0_44
# %bb.1:
	ori	$a0, $zero, 2
	bge	$s1, $a0, .LBB0_6
# %bb.2:
	addi.d	$a0, $sp, 256
.LBB0_3:
	pcaddu18i	$ra, %call36(parseFile)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_31
# %bb.4:
	move	$s0, $a0
	ld.d	$a1, $fp, 16
	ld.d	$a0, $a1, 8
	beqz	$a0, .LBB0_29
# %bb.5:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(findAndLogAllPossibleLegs)
	jirl	$ra, $ra, 0
	b	.LBB0_30
.LBB0_6:                                # %.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(getopt)
	jirl	$ra, $ra, 0
	slli.w	$a0, $a0, 24
	lu12i.w	$s8, -4096
	bne	$a0, $s8, .LBB0_12
# %bb.7:
	move	$a3, $zero
	move	$a5, $zero
	move	$a4, $zero
	move	$s0, $zero
	ori	$a0, $zero, 1
	add.d	$a1, $a5, $a3
	add.w	$a1, $a1, $a4
	ori	$a2, $zero, 2
	bge	$a1, $a2, .LBB0_26
.LBB0_8:
	beqz	$a1, .LBB0_35
# %bb.9:
	sltu	$a1, $zero, $a5
	or	$a0, $a0, $a1
	beqz	$a0, .LBB0_39
# %bb.10:
	move	$a0, $s0
	beqz	$a4, .LBB0_27
# %bb.11:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(runBatch)
	jirl	$ra, $ra, 0
	b	.LBB0_31
.LBB0_12:                               # %.lr.ph78.split.us.preheader
	bstrpick.d	$a1, $s1, 31, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$s3, $zero, 58
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$s4, $a1, %pc_lo12(.L.str.2)
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$s5, $a1, %pc_lo12(.LJTI0_0)
	pcalau12i	$a1, %got_pc_hi20(optarg)
	ld.d	$s6, $a1, %got_pc_lo12(optarg)
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	move	$s0, $zero
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	ori	$s7, $zero, 1
	b	.LBB0_15
.LBB0_13:                               #   in Loop: Header=BB0_15 Depth=1
	ld.d	$a0, $s6, 0
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	st.w	$a0, $fp, 24
	.p2align	4, , 16
.LBB0_14:                               #   in Loop: Header=BB0_15 Depth=1
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(getopt)
	jirl	$ra, $ra, 0
	slli.w	$a0, $a0, 24
	beq	$a0, $s8, .LBB0_25
.LBB0_15:                               # %.lr.ph78.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
	srai.d	$a0, $a0, 24
	addi.d	$a0, $a0, -63
	bltu	$s3, $a0, .LBB0_14
# %bb.16:                               # %.lr.ph78.split.us
                                        #   in Loop: Header=BB0_15 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s5, $a0
	add.d	$a0, $s5, $a0
	jr	$a0
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=1
	ld.d	$s0, $s6, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB0_14
.LBB0_18:                               #   in Loop: Header=BB0_15 Depth=1
	ld.d	$a0, $fp, 16
	st.b	$s7, $a0, 5
	b	.LBB0_14
.LBB0_19:                               #   in Loop: Header=BB0_15 Depth=1
	ld.d	$s0, $s6, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB0_14
.LBB0_20:                               #   in Loop: Header=BB0_15 Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $a1, 8
	ori	$a2, $zero, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.b	$a2, $a1, 6
	b	.LBB0_14
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=1
	ld.d	$s0, $s6, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB0_14
.LBB0_22:                               # %.lr.ph.us
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $s0
	pcaddu18i	$ra, %call36(YAMLOpen)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 56
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	move	$s0, $s2
	.p2align	4, , 16
.LBB0_23:                               #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	addi.d	$a0, $sp, 56
	addi.d	$a2, $sp, 56
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, -1
	addi.d	$s0, $s0, 8
	bnez	$s7, .LBB0_23
# %bb.24:                               # %._crit_edge.us
                                        #   in Loop: Header=BB0_15 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	addi.d	$a1, $sp, 57
	pcaddu18i	$ra, %call36(YAMLWriteString)
	jirl	$ra, $ra, 0
	move	$s0, $s3
	ori	$s3, $zero, 58
	ori	$s7, $zero, 1
	b	.LBB0_14
.LBB0_25:                               # %._crit_edge79.loopexit
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sltui	$a0, $a0, 1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	add.d	$a1, $a5, $a3
	add.w	$a1, $a1, $a4
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB0_8
.LBB0_26:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ori	$a1, $zero, 75
	b	.LBB0_40
.LBB0_27:
	beqz	$a3, .LBB0_3
# %bb.28:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(runInteractively)
	jirl	$ra, $ra, 0
	b	.LBB0_31
.LBB0_29:
	ld.w	$a1, $a1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(findAllPossibleLegs)
	jirl	$ra, $ra, 0
.LBB0_30:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Graph_delete)
	jirl	$ra, $ra, 0
.LBB0_31:                               # %exhaustiveLegSearch.exit
	pcaddu18i	$ra, %call36(YAMLClose)
	jirl	$ra, $ra, 0
.LBB0_32:
	move	$a0, $zero
.LBB0_33:
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
.LBB0_34:                               # %.split85.us
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB0_32
.LBB0_35:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 73
	b	.LBB0_40
.LBB0_36:                               # %.split.us
	pcalau12i	$a0, %got_pc_hi20(optopt)
	ld.d	$a0, $a0, %got_pc_lo12(optopt)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $a0, -99
	ori	$a2, $zero, 21
	ori	$a0, $zero, 1
	bltu	$a2, $a1, .LBB0_33
# %bb.37:                               # %.split.us
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI0_1)
	addi.d	$a2, $a2, %pc_lo12(.LJTI0_1)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB0_38:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 28
	b	.LBB0_40
.LBB0_39:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 79
.LBB0_40:
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB0_33
.LBB0_41:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 41
	b	.LBB0_40
.LBB0_42:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 37
	b	.LBB0_40
.LBB0_43:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 57
	b	.LBB0_40
.LBB0_44:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_36-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_17-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_34-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_13-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_18-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_34-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_21-.LJTI0_0
	.word	.LBB0_22-.LJTI0_0
.LJTI0_1:
	.word	.LBB0_42-.LJTI0_1
	.word	.LBB0_33-.LJTI0_1
	.word	.LBB0_33-.LJTI0_1
	.word	.LBB0_33-.LJTI0_1
	.word	.LBB0_33-.LJTI0_1
	.word	.LBB0_33-.LJTI0_1
	.word	.LBB0_38-.LJTI0_1
	.word	.LBB0_33-.LJTI0_1
	.word	.LBB0_33-.LJTI0_1
	.word	.LBB0_33-.LJTI0_1
	.word	.LBB0_33-.LJTI0_1
	.word	.LBB0_33-.LJTI0_1
	.word	.LBB0_41-.LJTI0_1
	.word	.LBB0_33-.LJTI0_1
	.word	.LBB0_43-.LJTI0_1
	.word	.LBB0_33-.LJTI0_1
	.word	.LBB0_33-.LJTI0_1
	.word	.LBB0_33-.LJTI0_1
	.word	.LBB0_33-.LJTI0_1
	.word	.LBB0_33-.LJTI0_1
	.word	.LBB0_33-.LJTI0_1
	.word	.LBB0_38-.LJTI0_1
                                        # -- End function
	.text
	.globl	exhaustiveLegSearch             # -- Begin function exhaustiveLegSearch
	.p2align	5
	.type	exhaustiveLegSearch,@function
exhaustiveLegSearch:                    # @exhaustiveLegSearch
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	pcaddu18i	$ra, %call36(parseFile)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB1_4
# %bb.1:
	beqz	$a0, .LBB1_4
# %bb.2:
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a1, 8
	beqz	$a2, .LBB1_5
# %bb.3:
	move	$fp, $a0
	pcaddu18i	$ra, %call36(findAndLogAllPossibleLegs)
	jirl	$ra, $ra, 0
	b	.LBB1_6
.LBB1_4:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_5:
	ld.w	$a1, $a1, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(findAllPossibleLegs)
	jirl	$ra, $ra, 0
.LBB1_6:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(Graph_delete)
	jr	$t8
.Lfunc_end1:
	.size	exhaustiveLegSearch, .Lfunc_end1-exhaustiveLegSearch
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function runBatch
.LCPI2_0:
	.dword	0x40ac200000000000              # double 3600
.LCPI2_1:
	.dword	0x404e000000000000              # double 60
	.text
	.globl	runBatch
	.p2align	5
	.type	runBatch,@function
runBatch:                               # @runBatch
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	beqz	$a0, .LBB2_4
# %bb.1:
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(currentTime)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(parseConfigFile)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(currentTime)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fa0, $fs0
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	lu12i.w	$a1, -452053
	ori	$a1, $a1, 965
	mul.d	$a1, $a0, $a1
	srli.d	$a1, $a1, 32
	add.w	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	srai.d	$a0, $a0, 11
	add.d	$s1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_0)
	pcaddu18i	$ra, %call36(fmod)
	jirl	$ra, $ra, 0
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	lu12i.w	$a1, -489336
	ori	$a1, $a1, 2185
	mul.d	$a1, $a0, $a1
	srli.d	$a1, $a1, 32
	add.w	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	srai.d	$a0, $a0, 5
	add.d	$s2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_1)
	pcaddu18i	$ra, %call36(fmod)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB2_3
# %bb.2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(doMultiSearches)
	jirl	$ra, $ra, 0
.LBB2_3:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB2_4:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	runBatch, .Lfunc_end2-runBatch
                                        # -- End function
	.globl	runInteractively                # -- Begin function runInteractively
	.p2align	5
	.type	runInteractively,@function
runInteractively:                       # @runInteractively
# %bb.0:
	addi.d	$sp, $sp, -544
	st.d	$ra, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 528                   # 8-byte Folded Spill
	st.d	$s0, $sp, 520                   # 8-byte Folded Spill
	st.d	$s1, $sp, 512                   # 8-byte Folded Spill
	st.d	$s2, $sp, 504                   # 8-byte Folded Spill
	st.d	$s3, $sp, 496                   # 8-byte Folded Spill
	st.d	$s4, $sp, 488                   # 8-byte Folded Spill
	st.d	$s5, $sp, 480                   # 8-byte Folded Spill
	st.d	$s6, $sp, 472                   # 8-byte Folded Spill
	st.d	$s7, $sp, 464                   # 8-byte Folded Spill
	st.d	$s8, $sp, 456                   # 8-byte Folded Spill
	move	$fp, $a1
	pcaddu18i	$ra, %call36(parseFile)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_2
# %bb.1:
	ld.d	$s8, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 520                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 528                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 536                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 544
	ret
.LBB3_2:                                # %.preheader
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$s1, $a0, %pc_lo12(.Lstr.3)
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$s2, $a0, %pc_lo12(.L.str.19)
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$s4, $a0, %pc_lo12(.L.str.22)
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$s5, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$s6, $a0, %pc_lo12(.Lstr.5)
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB3_5
.LBB3_3:                                #   in Loop: Header=BB3_5 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB3_4:                                #   in Loop: Header=BB3_5 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(NodePtrVec_delete)
	jirl	$ra, $ra, 0
.LBB3_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
                                        #     Child Loop BB3_17 Depth 2
	move	$s7, $zero
.LBB3_6:                                #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	addi.d	$a0, $sp, 256
	ori	$a1, $zero, 200
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_21
# %bb.7:                                #   in Loop: Header=BB3_6 Depth=2
	addi.d	$a0, $sp, 256
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_10
# %bb.8:                                #   in Loop: Header=BB3_6 Depth=2
	addi.d	$a1, $sp, 256
	add.d	$a0, $a1, $a0
	ld.bu	$a1, $a0, -1
	ori	$a2, $zero, 10
	bne	$a1, $a2, .LBB3_10
# %bb.9:                                #   in Loop: Header=BB3_6 Depth=2
	st.b	$zero, $a0, -1
.LBB3_10:                               # %mygets.exit
                                        #   in Loop: Header=BB3_6 Depth=2
	addi.d	$a0, $sp, 256
	ori	$a2, $zero, 5
	move	$a1, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_22
# %bb.11:                               #   in Loop: Header=BB3_6 Depth=2
	ld.bu	$a0, $sp, 256
	beqz	$a0, .LBB3_13
# %bb.12:                               #   in Loop: Header=BB3_6 Depth=2
	addi.d	$a0, $sp, 256
	pcaddu18i	$ra, %call36(strdup)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s7, 3
	addi.d	$s7, $s7, 1
	ori	$s3, $zero, 25
	addi.d	$a2, $sp, 56
	stx.d	$a0, $a1, $a2
	bne	$s7, $s3, .LBB3_6
	b	.LBB3_14
.LBB3_13:                               # %.critedge.split.loop.exit
                                        #   in Loop: Header=BB3_5 Depth=1
	move	$s3, $s7
.LBB3_14:                               # %.critedge
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.w	$s7, $s3, 0
	slli.d	$a0, $s7, 3
	addi.d	$a1, $sp, 56
	stx.d	$zero, $a0, $a1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s7, .LBB3_19
# %bb.15:                               # %.lr.ph
                                        #   in Loop: Header=BB3_5 Depth=1
	move	$s0, $zero
	addi.w	$s3, $s3, -1
	addi.d	$s8, $sp, 56
	b	.LBB3_17
	.p2align	4, , 16
.LBB3_16:                               #   in Loop: Header=BB3_17 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
	addi.d	$s8, $s8, 8
	beq	$s7, $s0, .LBB3_19
.LBB3_17:                               #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s8, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bgeu	$s0, $s3, .LBB3_16
# %bb.18:                               #   in Loop: Header=BB3_17 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
	addi.d	$s8, $s8, 8
	bne	$s7, $s0, .LBB3_17
.LBB3_19:                               # %._crit_edge
                                        #   in Loop: Header=BB3_5 Depth=1
	ori	$a0, $zero, 50
	pcaddu18i	$ra, %call36(NodePtrVec_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.w	$a3, $a1, 0
	move	$s7, $a0
	addi.d	$a1, $sp, 56
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $s7
	pcaddu18i	$ra, %call36(findLabelPath)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_3
# %bb.20:                               #   in Loop: Header=BB3_5 Depth=1
	ld.w	$a1, $s7, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB3_4
.LBB3_21:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_22:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	runInteractively, .Lfunc_end3-runInteractively
                                        # -- End function
	.globl	mygets                          # -- Begin function mygets
	.p2align	5
	.type	mygets,@function
mygets:                                 # @mygets
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$a2, $a0, 0
	addi.w	$a1, $a1, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_5
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_4
# %bb.2:
	add.d	$a0, $fp, $a0
	ld.bu	$a1, $a0, -1
	ori	$a2, $zero, 10
	bne	$a1, $a2, .LBB4_4
# %bb.3:
	st.b	$zero, $a0, -1
.LBB4_4:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB4_5:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	mygets, .Lfunc_end4-mygets
                                        # -- End function
	.type	.L__const.main.defaultFile,@object # @__const.main.defaultFile
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L__const.main.defaultFile:
	.asciz	"MicroTestData.adj_list"
	.size	.L__const.main.defaultFile, 23

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"c:i:x:o:q:huy"
	.size	.L.str.2, 14

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\tPlease specify configuration file.\n\n"
	.size	.L.str.3, 38

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\tPlease specify data file.\n\n"
	.size	.L.str.4, 29

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\tPlease specify output graph data file.\n\n"
	.size	.L.str.5, 42

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\tPlease specify recursion depth to keep spawning tasks.\n\n"
	.size	.L.str.6, 58

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"\n%s\n\n"
	.size	.L.str.7, 6

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\nUsage: PathFinder.exe [OPTIONS] [<fileName>]\n\n  Operation:\n    -c  <config file>   use configuration file\n    -i  <data file>     interactive search of specified data file\n    -x  <data file>     exhaustive leg search (any label to any label) of data file\n\n  Other:\n    -o  <output file>   save optimized graph to file\n    -h,u                prints this help message.\n    -q  <depth>         use qthread parallelism (config file only). The depth value\n                        specifies how deep in recursion to continue spawning new tasks\n                        during searches\n    -y                  create YAML output\n"
	.size	.L.str.8, 625

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%s %s"
	.size	.L.str.9, 6

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Command"
	.size	.L.str.10, 8

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"-c -i and -x are mutually exclusive, PathFinder can only do one of those.\n\n"
	.size	.L.str.11, 76

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"-c (config file) -i (interactive) or -x (exhaustive) must be specified.\n\n"
	.size	.L.str.12, 74

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"-o (optimized graph output) is only compatible with -x (exhaustive searches).\n\n"
	.size	.L.str.13, 80

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Error: No config file entered.\n\n\t---Exiting---"
	.size	.L.str.14, 47

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"\n\nOverall Parse Time: %02d:%02d:%02.3f\n"
	.size	.L.str.15, 40

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Error: No input provided.\n\n\t---Exiting---"
	.size	.L.str.17, 42

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"bail"
	.size	.L.str.19, 5

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"\nSignature: "
	.size	.L.str.21, 13

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"'%s'"
	.size	.L.str.22, 5

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	" -> "
	.size	.L.str.23, 5

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Found, resultant path has %d steps.\n"
	.size	.L.str.25, 37

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"\n\nTotal %d legs found\n\n"
	.size	.L.str.27, 24

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"\n\n        PathFinder: finding a series of labeled nodes within a\n                two-layer directed, cyclic graph.\n               Copyright (2013) Sandia Corporation\n\n Sandia National Laboratories is a multi-program laboratory managed and\n operated by Sandia Corporation, a wholly owned subsidiary of Lockheed\n Martin Corporation, for the U.S. Department of Energy's National Nuclear\n Security Administration under terms of Contract DE-AC04-94AL85000,\n there is a non-exclusive license for use of this work by or on behalf\n of the U.S. Government. Export of this program may require a license \n from the United States Government.\n\n"
	.size	.Lstr, 632

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"Error: Could not allocation configuration structure.\n\n\t---Exiting\n"
	.size	.Lstr.1, 67

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"\n\nSearches complete."
	.size	.Lstr.2, 21

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"\nPlease insert a node label for this signature (\"\" to complete, \"bail\" to exit):"
	.size	.Lstr.3, 81

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"\n\tPath not found for signature."
	.size	.Lstr.4, 32

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"\n"
	.size	.Lstr.5, 2

	.section	".note.GNU-stack","",@progbits
	.addrsig
