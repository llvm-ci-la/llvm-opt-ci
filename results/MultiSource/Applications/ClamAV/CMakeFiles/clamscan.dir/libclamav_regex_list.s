	.file	"libclamav_regex_list.c"
	.text
	.globl	regex_list_match                # -- Begin function regex_list_match
	.p2align	5
	.type	regex_list_match,@function
regex_list_match:                       # @regex_list_match
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
	ld.w	$a7, $a0, 32
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	beqz	$a7, .LBB0_6
# %bb.1:
	move	$s7, $a6
	move	$s6, $a4
	move	$s8, $a2
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	move	$a0, $a1
	move	$s0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	sltui	$a1, $s6, 1
	sltu	$a0, $zero, $s7
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	or	$s4, $a1, $a0
	add.d	$a0, $a0, $s2
	add.d	$a0, $a0, $s3
	addi.d	$s5, $a0, 1
	maskeqz	$a0, $s5, $s4
	masknez	$a1, $s2, $s4
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$s1, $a0, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_7
# %bb.2:
	move	$fp, $a0
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 58
	maskeqz	$a0, $a0, $s4
	stx.b	$a0, $fp, $s2
	beqz	$s4, .LBB0_8
# %bb.3:
	add.d	$a0, $fp, $s2
	addi.d	$a0, $a0, 1
	move	$a1, $s8
	move	$a2, $s3
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	beqz	$s7, .LBB0_5
# %bb.4:
	add.d	$a0, $fp, $s5
	ori	$a1, $zero, 47
	st.b	$a1, $a0, -1
.LBB0_5:
	stx.b	$zero, $fp, $s5
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	bnez	$s6, .LBB0_9
	b	.LBB0_24
.LBB0_6:
	move	$s6, $zero
	b	.LBB0_58
.LBB0_7:
	addi.w	$s6, $zero, -114
	b	.LBB0_58
.LBB0_8:                                # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
.LBB0_9:
	addi.d	$a0, $sp, 88
	ori	$a2, $zero, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_ac_initdata)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	bnez	$a0, .LBB0_58
# %bb.10:                               # %.preheader
	ld.d	$a0, $s0, 24
	beqz	$a0, .LBB0_24
# %bb.11:                               # %.lr.ph
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.w	$s7, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$s5, $zero
	move	$s3, $zero
	ori	$a0, $zero, 1
	lu32i.d	$a0, 32769
	lu52i.d	$a0, $a0, -2048
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_12:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a2, $s4, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_13:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $s0, 24
	addi.d	$s3, $s3, 1
	addi.d	$s5, $s5, 80
	bgeu	$s3, $a0, .LBB0_24
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	add.d	$a3, $a0, $s5
	st.d	$zero, $sp, 8
	addi.d	$a4, $sp, 88
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $fp
	move	$a1, $s7
	move	$a2, $s4
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(cli_ac_scanbuff)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(cli_ac_freedata)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB0_13
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $s4, 0
	ori	$a1, $zero, 58
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=1
	move	$s8, $zero
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(get_char_at_pos_with_skip)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	ori	$a0, $zero, 63
	bltu	$a0, $a3, .LBB0_12
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=1
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	beqz	$a0, .LBB0_12
# %bb.20:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beq	$a0, $s8, .LBB0_59
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=1
	bgeu	$s8, $a0, .LBB0_12
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a2, $a0, $s8
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(get_char_at_pos_with_skip)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	ori	$a0, $zero, 46
	beq	$a3, $a0, .LBB0_60
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=1
	ori	$a0, $zero, 32
	bne	$a3, $a0, .LBB0_12
	b	.LBB0_60
.LBB0_24:                               # %.loopexit134
	ori	$a0, $zero, 16
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	masknez	$a0, $a0, $a2
	ori	$a1, $zero, 8
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	ldx.d	$a5, $s0, $a0
	ld.d	$a0, $a5, 24
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$s2, $a1, %pc_lo12(.L.str.5)
	beqz	$a0, .LBB0_56
# %bb.25:
	st.d	$zero, $s4, 0
	addi.d	$a0, $fp, -1
	ori	$s4, $zero, 6
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$s5, $a1, %pc_lo12(.LJTI0_0)
	ori	$s6, $zero, 1
	.p2align	4, , 16
.LBB0_26:                               # %.critedge141.thread.i.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_27 Depth 2
                                        #       Child Loop BB0_37 Depth 3
                                        #     Child Loop BB0_44 Depth 2
                                        #     Child Loop BB0_53 Depth 2
	move	$s0, $a5
	ld.d	$s8, $a5, 24
	ld.w	$a1, $a5, 12
	addi.d	$a2, $s8, 8
	slli.d	$a3, $a1, 2
	move	$s7, $s1
	move	$s3, $a0
.LBB0_27:                               # %.critedge141.thread.i
                                        #   Parent Loop BB0_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_37 Depth 3
	bltu	$s4, $a1, .LBB0_63
# %bb.28:                               # %.critedge141.thread.i
                                        #   in Loop: Header=BB0_27 Depth=2
	ldx.w	$a0, $s5, $a3
	add.d	$a0, $s5, $a0
	ori	$a5, $zero, 1
	move	$a4, $s8
	jr	$a0
.LBB0_29:                               #   in Loop: Header=BB0_27 Depth=2
	ld.bu	$a0, $s3, 0
	slli.d	$a0, $a0, 1
	pcalau12i	$a4, %pc_hi20(char_class)
	addi.d	$a4, $a4, %pc_lo12(char_class)
	ldx.bu	$a0, $a4, $a0
	ld.bu	$a4, $s0, 8
	and	$a5, $a0, $a4
	b	.LBB0_32
.LBB0_30:                               #   in Loop: Header=BB0_27 Depth=2
	ld.bu	$a0, $s3, 0
	addi.d	$a0, $a0, -10
	sltu	$a5, $zero, $a0
	b	.LBB0_32
.LBB0_31:                               #   in Loop: Header=BB0_27 Depth=2
	addi.d	$s3, $s3, -1
	addi.d	$s7, $s7, 1
.LBB0_32:                               # %.thread150.i
                                        #   in Loop: Header=BB0_27 Depth=2
	move	$a4, $s8
.LBB0_33:                               # %.thread150.i
                                        #   in Loop: Header=BB0_27 Depth=2
	addi.d	$s1, $s7, -1
	addi.d	$a0, $s3, 1
	beqz	$s1, .LBB0_52
.LBB0_34:                               # %.thread150.i
                                        #   in Loop: Header=BB0_27 Depth=2
	beqz	$a5, .LBB0_52
# %bb.35:                               #   in Loop: Header=BB0_27 Depth=2
	ld.b	$a6, $s0, 16
	blez	$a6, .LBB0_39
# %bb.36:                               # %.lr.ph.i
                                        #   in Loop: Header=BB0_27 Depth=2
	ld.b	$a7, $a0, 0
	move	$t0, $zero
	addi.d	$t1, $a6, -1
	.p2align	4, , 16
.LBB0_37:                               #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sub.d	$a5, $t1, $t0
	bstrpick.d	$a5, $a5, 31, 1
	add.w	$t2, $a5, $t0
	slli.d	$a5, $t2, 3
	ldx.d	$a5, $a4, $a5
	ld.bu	$t3, $a5, 8
	beq	$t3, $a7, .LBB0_26
# %bb.38:                               #   in Loop: Header=BB0_37 Depth=3
	slt	$a5, $t3, $a7
	addi.w	$t3, $t2, 1
	addi.d	$t2, $t2, -1
	masknez	$t0, $t0, $a5
	maskeqz	$t3, $t3, $a5
	or	$t0, $t3, $t0
	masknez	$t2, $t2, $a5
	maskeqz	$a5, $t1, $a5
	or	$a5, $a5, $t2
	addi.w	$t1, $a5, 0
	bge	$t1, $t0, .LBB0_37
.LBB0_39:                               # %._crit_edge.i
                                        #   in Loop: Header=BB0_27 Depth=2
	bnez	$a6, .LBB0_42
# %bb.40:                               #   in Loop: Header=BB0_27 Depth=2
	move	$s7, $s1
	move	$s3, $a0
	beqz	$s8, .LBB0_27
	b	.LBB0_46
.LBB0_41:                               #   in Loop: Header=BB0_27 Depth=2
	ld.bu	$a0, $s3, 0
	ld.d	$a4, $s8, 0
	srli.d	$a5, $a0, 3
	ldx.bu	$a4, $a4, $a5
	andi	$a0, $a0, 7
	sll.w	$a0, $s6, $a0
	and	$a5, $a0, $a4
	move	$a4, $a2
	addi.d	$s1, $s7, -1
	addi.d	$a0, $s3, 1
	bnez	$s1, .LBB0_34
	b	.LBB0_52
.LBB0_42:                               # %.preheader166.i
                                        #   in Loop: Header=BB0_26 Depth=1
	ld.d	$a2, $a4, 0
	ld.bu	$a1, $a2, 17
	sltui	$a1, $a1, 1
	masknez	$a3, $s0, $a1
	maskeqz	$a2, $a2, $a1
	or	$a5, $a2, $a3
	beqz	$a5, .LBB0_56
# %bb.43:                               # %.lr.ph192.preheader.i
                                        #   in Loop: Header=BB0_26 Depth=1
	addi.d	$a2, $s3, 2
	masknez	$a0, $a0, $a1
	maskeqz	$a2, $a2, $a1
	or	$a0, $a2, $a0
	addi.d	$a2, $s7, -2
	masknez	$a3, $s1, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	addi.d	$a0, $a0, -1
	addi.d	$s1, $a1, 1
	.p2align	4, , 16
.LBB0_44:                               # %.lr.ph192.i
                                        #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $a5, 17
	ld.d	$a5, $a5, 0
	beqz	$a1, .LBB0_48
# %bb.45:                               #   in Loop: Header=BB0_44 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$s1, $s1, 1
	bnez	$a5, .LBB0_44
	b	.LBB0_56
.LBB0_46:                               #   in Loop: Header=BB0_26 Depth=1
	ld.d	$a5, $a4, 0
	bne	$a1, $s4, .LBB0_26
# %bb.47:                               #   in Loop: Header=BB0_26 Depth=1
	st.d	$s0, $a5, 0
	b	.LBB0_26
.LBB0_48:                               # %.critedge.i
                                        #   in Loop: Header=BB0_26 Depth=1
	bnez	$a5, .LBB0_26
	b	.LBB0_56
.LBB0_49:                               #   in Loop: Header=BB0_26 Depth=1
	ld.d	$a0, $s8, 8
	beqz	$a0, .LBB0_62
# %bb.50:                               #   in Loop: Header=BB0_26 Depth=1
	move	$a1, $s3
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(cli_regexec)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_62
# %bb.51:                               # %.thread150.thread.i
                                        #   in Loop: Header=BB0_26 Depth=1
	addi.d	$s1, $s7, -1
	addi.d	$a0, $s3, 1
.LBB0_52:                               # %.lr.ph197.i.preheader
                                        #   in Loop: Header=BB0_26 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$s1, $s1, 1
	.p2align	4, , 16
.LBB0_53:                               # %.lr.ph197.i
                                        #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $s0, 17
	ld.d	$s0, $s0, 0
	beqz	$a1, .LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_53 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$s1, $s1, 1
	bnez	$s0, .LBB0_53
	b	.LBB0_56
.LBB0_55:                               # %.critedge3.i
                                        #   in Loop: Header=BB0_26 Depth=1
	move	$a5, $s0
	bnez	$s0, .LBB0_26
.LBB0_56:
	move	$s6, $zero
.LBB0_57:                               # %.sink.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_58:
	move	$a0, $s6
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
.LBB0_59:
	move	$s8, $a0
.LBB0_60:
	ld.d	$a2, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$s1, $s2
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s8, 1
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$s2, $a1, %pc_lo12(.L.str.6)
	bltu	$s1, $a0, .LBB0_57
# %bb.61:
	nor	$a0, $s8, $zero
	add.d	$a1, $s0, $s1
	ori	$a2, $zero, 46
	stx.b	$a2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_57
.LBB0_62:                               # %.thread.i
	ld.d	$a0, $s8, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	ori	$s6, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s2, $a0, %pc_lo12(.L.str.6)
	b	.LBB0_57
.LBB0_63:
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	regex_list_match, .Lfunc_end0-regex_list_match
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_29-.LJTI0_0
	.word	.LBB0_41-.LJTI0_0
	.word	.LBB0_30-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_31-.LJTI0_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function get_char_at_pos_with_skip
	.type	get_char_at_pos_with_skip,@function
get_char_at_pos_with_skip:              # @get_char_at_pos_with_skip
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$s1, $a1
	beqz	$a0, .LBB1_5
# %bb.1:
	ld.d	$fp, $a0, 16
	ld.d	$a2, $a0, 24
	ld.d	$a3, $a0, 32
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $s0
	move	$a4, $fp
	move	$a5, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 24
	ld.bu	$s2, $fp, 0
	add.d	$s1, $a0, $s0
	beqz	$s2, .LBB1_6
# %bb.2:                                # %.lr.ph
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	move	$s0, $zero
	addi.d	$a1, $fp, 1
	.p2align	4, , 16
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	ext.w.b	$a2, $s2
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	andi	$a2, $a2, 8
	bnez	$a2, .LBB1_16
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	ldx.bu	$s2, $a1, $s0
	addi.d	$a2, $s0, 1
	move	$s0, $a2
	bnez	$s2, .LBB1_3
	b	.LBB1_7
.LBB1_5:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bltu	$a0, $s0, .LBB1_12
	b	.LBB1_14
.LBB1_6:
	move	$a2, $zero
.LBB1_7:                                # %.critedge.thread
	sltu	$s2, $zero, $s1
	move	$s0, $a2
.LBB1_8:                                # %.preheader
	ori	$a0, $zero, 32
	.p2align	4, , 16
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	ldx.bu	$a1, $fp, $s0
	addi.d	$s0, $s0, 1
	beq	$a1, $a0, .LBB1_9
# %bb.10:
	add.d	$s1, $fp, $s0
	addi.d	$a1, $s1, -1
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	beqz	$s2, .LBB1_13
# %bb.11:
	ld.bu	$a0, $s1, -1
	move	$s1, $fp
	bnez	$a0, .LBB1_14
.LBB1_12:
	move	$a0, $zero
	b	.LBB1_15
.LBB1_13:
	move	$s1, $fp
.LBB1_14:                               # %.sink.split
	addi.d	$a0, $s0, -1
	sltu	$a1, $s0, $a0
	masknez	$a0, $a0, $a1
	ldx.b	$a0, $s1, $a0
.LBB1_15:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_16:                               # %.critedge
	beqz	$s1, .LBB1_21
# %bb.17:                               # %.preheader49.preheader
	ori	$a0, $zero, 32
	.p2align	4, , 16
.LBB1_18:                               # =>This Inner Loop Header: Depth=1
	ldx.bu	$a1, $fp, $s0
	addi.d	$s0, $s0, 1
	beq	$a1, $a0, .LBB1_18
# %bb.19:                               #   in Loop: Header=BB1_18 Depth=1
	ldx.bu	$a1, $fp, $s0
	addi.d	$s1, $s1, -1
	sltu	$s2, $zero, $s1
	beqz	$a1, .LBB1_8
# %bb.20:                               #   in Loop: Header=BB1_18 Depth=1
	bnez	$s1, .LBB1_18
	b	.LBB1_8
.LBB1_21:
	move	$s2, $zero
	b	.LBB1_8
.Lfunc_end1:
	.size	get_char_at_pos_with_skip, .Lfunc_end1-get_char_at_pos_with_skip
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function init_regex_list
.LCPI2_0:
	.dword	1024                            # 0x400
	.dword	0                               # 0x0
	.text
	.globl	init_regex_list
	.p2align	5
	.type	init_regex_list,@function
init_regex_list:                        # @init_regex_list
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	st.w	$zero, $a0, 32
	st.d	$zero, $a0, 0
	st.d	$zero, $a0, 24
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_5
# %bb.1:
	ori	$s0, $zero, 256
	st.h	$s0, $a0, 16
	st.d	$zero, $a0, 24
	ori	$s1, $zero, 5
	st.w	$s1, $a0, 12
	st.b	$zero, $a0, 8
	st.d	$zero, $a0, 0
	st.d	$a0, $fp, 8
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_6
# %bb.2:
	st.h	$s0, $a0, 16
	st.d	$zero, $a0, 24
	st.w	$s1, $a0, 12
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_0)
	st.b	$zero, $a0, 8
	st.d	$zero, $a0, 0
	st.d	$a0, $fp, 16
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vst	$vr0, $fp, 56
	lu12i.w	$a0, 2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 48
	beqz	$a0, .LBB2_7
# %bb.3:
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $fp, 80
	lu12i.w	$a0, 2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 72
	beqz	$a0, .LBB2_11
# %bb.4:
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.d	$a1, $fp, 32
	st.w	$a1, $fp, 40
	b	.LBB2_10
.LBB2_5:                                # %tree_root_alloc.exit.thread
	st.d	$zero, $fp, 8
	b	.LBB2_9
.LBB2_6:
	ld.d	$a0, $fp, 8
	st.d	$zero, $fp, 16
	b	.LBB2_8
.LBB2_7:
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
.LBB2_8:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_9:
	addi.w	$a0, $zero, -114
.LBB2_10:
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB2_11:
	ld.d	$a0, $fp, 16
	addi.d	$s0, $fp, 48
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB2_13
# %bb.12:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_13:                               # %stack_destroy.exit
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 0
	b	.LBB2_9
.Lfunc_end2:
	.size	init_regex_list, .Lfunc_end2-init_regex_list
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function load_regex_matcher
.LCPI3_0:
	.dword	1024                            # 0x400
	.dword	0                               # 0x0
	.text
	.globl	load_regex_matcher
	.p2align	5
	.type	load_regex_matcher,@function
load_regex_matcher:                     # @load_regex_matcher
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
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2272
	sub.d	$sp, $sp, $a2
	move	$fp, $a0
	ld.w	$a0, $a0, 32
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	addi.w	$s0, $zero, -1
	addi.w	$s3, $zero, -116
	beq	$a0, $s0, .LBB3_224
# %bb.1:
	move	$s1, $a1
	beqz	$a1, .LBB3_6
# %bb.2:
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 32
	bnez	$a0, .LBB3_4
# %bb.3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(init_regex_list)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 32
	beqz	$a1, .LBB3_215
.LBB3_4:
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a1, 2
	addi.d	$a0, $sp, 96
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_206
# %bb.5:                                # %.lr.ph
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	ori	$s2, $zero, 6
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	b	.LBB3_10
.LBB3_6:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$s3, $zero, -123
	b	.LBB3_224
.LBB3_7:                                #   in Loop: Header=BB3_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	addi.d	$a1, $sp, 96
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB3_8:                                # %functionality_level_check.exit
                                        #   in Loop: Header=BB3_10 Depth=1
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
.LBB3_9:                                # %functionality_level_check.exit
                                        #   in Loop: Header=BB3_10 Depth=1
	addi.d	$a0, $sp, 96
	lu12i.w	$a1, 2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_206
.LBB3_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_15 Depth 2
                                        #     Child Loop BB3_19 Depth 2
                                        #     Child Loop BB3_195 Depth 2
                                        #     Child Loop BB3_191 Depth 2
                                        #     Child Loop BB3_76 Depth 2
                                        #     Child Loop BB3_32 Depth 2
                                        #     Child Loop BB3_82 Depth 2
                                        #       Child Loop BB3_108 Depth 3
                                        #         Child Loop BB3_114 Depth 4
                                        #         Child Loop BB3_122 Depth 4
                                        #         Child Loop BB3_118 Depth 4
                                        #       Child Loop BB3_87 Depth 3
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(cli_chomp)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 96
	beqz	$a0, .LBB3_9
# %bb.11:                               #   in Loop: Header=BB3_10 Depth=1
	addi.d	$a0, $sp, 96
	ori	$a1, $zero, 58
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_26
# %bb.12:                               #   in Loop: Header=BB3_10 Depth=1
	move	$s4, $a0
	addi.d	$s5, $a0, 1
	ori	$a1, $zero, 45
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_26
# %bb.13:                               #   in Loop: Header=BB3_10 Depth=1
	move	$s6, $a0
	bgeu	$s5, $a0, .LBB3_17
# %bb.14:                               # %.lr.ph.i
                                        #   in Loop: Header=BB3_10 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	nor	$a1, $s4, $zero
	add.d	$a1, $s6, $a1
	move	$a2, $s5
	.p2align	4, , 16
.LBB3_15:                               #   Parent Loop BB3_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a3, $a2, 0
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	slli.d	$a3, $a3, 52
	bgez	$a3, .LBB3_26
# %bb.16:                               #   in Loop: Header=BB3_15 Depth=2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB3_15
.LBB3_17:                               # %.preheader.i
                                        #   in Loop: Header=BB3_10 Depth=1
	addi.d	$s7, $s6, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_21
# %bb.18:                               # %.lr.ph39.i
                                        #   in Loop: Header=BB3_10 Depth=1
	move	$s8, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	move	$a1, $s7
	.p2align	4, , 16
.LBB3_19:                               #   Parent Loop BB3_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a2, $a1, 0
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	slli.d	$a2, $a2, 52
	bgez	$a2, .LBB3_26
# %bb.20:                               #   in Loop: Header=BB3_19 Depth=2
	addi.d	$s8, $s8, -1
	addi.d	$a1, $a1, 1
	bnez	$s8, .LBB3_19
.LBB3_21:                               # %._crit_edge.i
                                        #   in Loop: Header=BB3_10 Depth=1
	st.b	$zero, $s6, 0
	ori	$a2, $zero, 10
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s6, 1
	move	$s5, $a0
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a1, .LBB3_23
# %bb.22:                               #   in Loop: Header=BB3_10 Depth=1
	ori	$a2, $zero, 10
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s0, $a0, 0
.LBB3_23:                               #   in Loop: Header=BB3_10 Depth=1
	addi.w	$s5, $s5, 0
	pcaddu18i	$ra, %call36(cl_retflevel)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	bltu	$a0, $s5, .LBB3_7
# %bb.24:                               #   in Loop: Header=BB3_10 Depth=1
	pcaddu18i	$ra, %call36(cl_retflevel)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	bltu	$s0, $a0, .LBB3_8
# %bb.25:                               #   in Loop: Header=BB3_10 Depth=1
	st.b	$zero, $s4, 0
	.p2align	4, , 16
.LBB3_26:                               # %.loopexit
                                        #   in Loop: Header=BB3_10 Depth=1
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	addi.w	$s0, $s0, 1
	addi.d	$a0, $sp, 96
	ori	$a1, $zero, 58
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_216
# %bb.27:                               #   in Loop: Header=BB3_10 Depth=1
	move	$s6, $a0
	addi.d	$s7, $a0, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	beqz	$a0, .LBB3_51
# %bb.28:                               #   in Loop: Header=BB3_10 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	srli.d	$a1, $a0, 13
	bnez	$a1, .LBB3_217
# %bb.29:                               #   in Loop: Header=BB3_10 Depth=1
	ori	$a1, $zero, 47
	stx.h	$a1, $s7, $a0
	ld.bu	$s8, $sp, 96
	andi	$a2, $s8, 254
	ori	$a0, $zero, 77
	move	$a1, $s8
	ori	$a3, $zero, 88
	bne	$a2, $a3, .LBB3_52
.LBB3_30:                               #   in Loop: Header=BB3_10 Depth=1
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_58
# %bb.31:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB3_10 Depth=1
	move	$s4, $a0
	move	$s3, $zero
	move	$s0, $zero
	ori	$s1, $zero, 10
	move	$s5, $s7
	.p2align	4, , 16
.LBB3_32:                               # %.preheader.i.i
                                        #   Parent Loop BB3_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 96
	add.d	$a1, $sp, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(getNextToken)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 112
	add.d	$a1, $sp, $a1
	ld.bu	$s6, $a1, 0
	bne	$s6, $s2, .LBB3_35
# %bb.33:                               #   in Loop: Header=BB3_32 Depth=2
	beqz	$s0, .LBB3_44
# %bb.34:                               #   in Loop: Header=BB3_32 Depth=2
	ld.d	$s3, $s4, 0
	b	.LBB3_45
	.p2align	4, , 16
.LBB3_35:                               #   in Loop: Header=BB3_32 Depth=2
	ori	$a1, $zero, 4
	bne	$s6, $a1, .LBB3_38
# %bb.36:                               #   in Loop: Header=BB3_32 Depth=2
	lu12i.w	$a1, 2
	ori	$a1, $a1, 96
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB3_38
# %bb.37:                               # %.thread.i.i
                                        #   in Loop: Header=BB3_32 Depth=2
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	b	.LBB3_43
	.p2align	4, , 16
.LBB3_38:                               #   in Loop: Header=BB3_32 Depth=2
	ori	$a1, $zero, 5
	beq	$s6, $a1, .LBB3_40
# %bb.39:                               #   in Loop: Header=BB3_32 Depth=2
	ori	$a1, $zero, 2
	bne	$s6, $a1, .LBB3_43
.LBB3_40:                               #   in Loop: Header=BB3_32 Depth=2
	beqz	$s0, .LBB3_48
# %bb.41:                               #   in Loop: Header=BB3_32 Depth=2
	alsl.d	$a1, $s0, $s4, 3
	ld.d	$a2, $a1, -8
	ld.bu	$a2, $a2, 0
	ori	$a3, $zero, 124
	bne	$a2, $a3, .LBB3_48
# %bb.42:                               #   in Loop: Header=BB3_32 Depth=2
	st.d	$s5, $a1, -8
	move	$s3, $s5
	b	.LBB3_45
	.p2align	4, , 16
.LBB3_43:                               #   in Loop: Header=BB3_32 Depth=2
	addi.d	$a1, $s6, -3
	sltui	$a1, $a1, 1
	sub.d	$s0, $s0, $a1
	move	$s3, $s5
	b	.LBB3_45
.LBB3_44:                               #   in Loop: Header=BB3_32 Depth=2
	move	$s0, $zero
.LBB3_45:                               #   in Loop: Header=BB3_32 Depth=2
	move	$s6, $s1
.LBB3_46:                               #   in Loop: Header=BB3_32 Depth=2
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB3_57
# %bb.47:                               #   in Loop: Header=BB3_32 Depth=2
	lu12i.w	$a1, 2
	ori	$a1, $a1, 112
	add.d	$a1, $sp, $a1
	ld.bu	$a1, $a1, 0
	move	$s5, $a0
	move	$s1, $s6
	bne	$a1, $s2, .LBB3_32
	b	.LBB3_57
.LBB3_48:                               #   in Loop: Header=BB3_32 Depth=2
	addi.d	$a1, $s0, 1
	slli.d	$a2, $s0, 3
	stx.d	$s5, $s4, $a2
	bne	$a1, $s1, .LBB3_50
# %bb.49:                               #   in Loop: Header=BB3_32 Depth=2
	addi.d	$s6, $s1, 20
	slli.d	$a1, $s6, 3
	move	$s0, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s0
	move	$s3, $s5
	move	$s0, $s1
	bnez	$s4, .LBB3_46
	b	.LBB3_58
.LBB3_50:                               #   in Loop: Header=BB3_32 Depth=2
	move	$s3, $s5
	move	$s6, $s1
	move	$s0, $a1
	b	.LBB3_46
.LBB3_51:                               #   in Loop: Header=BB3_10 Depth=1
	ld.bu	$a1, $sp, 96
	ori	$s8, $zero, 82
	ori	$a0, $zero, 72
	beq	$a1, $s8, .LBB3_30
.LBB3_52:                               # %.thread125
                                        #   in Loop: Header=BB3_10 Depth=1
	bne	$a1, $a0, .LBB3_219
# %bb.53:                               #   in Loop: Header=BB3_10 Depth=1
	ld.w	$a1, $fp, 40
	ld.d	$s4, $fp, 0
	ld.d	$a0, $fp, 24
	beqz	$a1, .LBB3_66
# %bb.54:                               #   in Loop: Header=BB3_10 Depth=1
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 24
	slli.d	$a1, $a0, 6
	alsl.d	$a1, $a0, $a1, 4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	beqz	$a0, .LBB3_222
# %bb.55:                               #   in Loop: Header=BB3_10 Depth=1
	ld.d	$a1, $fp, 24
	ori	$a2, $zero, 80
	mul.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	addi.d	$s8, $a0, -80
	ori	$a2, $zero, 80
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_ac_mindepth)
	ld.d	$a0, $a0, %got_pc_lo12(cli_ac_mindepth)
	ld.bu	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(cli_ac_maxdepth)
	ld.d	$a0, $a0, %got_pc_lo12(cli_ac_maxdepth)
	ld.bu	$a2, $a0, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(cli_ac_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_225
# %bb.56:                               #   in Loop: Header=BB3_10 Depth=1
	st.w	$zero, $fp, 40
	ori	$a0, $zero, 1
	ori	$a1, $zero, 96
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_67
	b	.LBB3_223
.LBB3_57:                               #   in Loop: Header=BB3_10 Depth=1
	move	$s0, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
	sltui	$a0, $a0, 1
	add.d	$a0, $s3, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	b	.LBB3_59
.LBB3_58:                               #   in Loop: Header=BB3_10 Depth=1
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
.LBB3_59:                               # %find_regex_start.exit.i
                                        #   in Loop: Header=BB3_10 Depth=1
	addi.d	$a0, $s8, -89
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 8
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 16
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ldx.d	$s6, $fp, $a0
	ld.d	$a2, $fp, 56
	ld.d	$a0, $fp, 48
	st.d	$zero, $fp, 64
	st.d	$zero, $fp, 88
	ori	$s4, $zero, 7
	beqz	$a2, .LBB3_61
# %bb.60:                               #   in Loop: Header=BB3_10 Depth=1
	move	$a1, $zero
	b	.LBB3_63
.LBB3_61:                               #   in Loop: Header=BB3_10 Depth=1
	lu12i.w	$a1, 1
	st.d	$a1, $fp, 56
	lu12i.w	$a1, 8
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 48
	beqz	$a0, .LBB3_64
# %bb.62:                               # %._crit_edge.i.i
                                        #   in Loop: Header=BB3_10 Depth=1
	ld.d	$a1, $fp, 64
.LBB3_63:                               #   in Loop: Header=BB3_10 Depth=1
	addi.d	$a2, $a1, 1
	st.d	$a2, $fp, 64
	slli.d	$a1, $a1, 3
	stx.d	$s6, $a0, $a1
.LBB3_64:                               # %stack_push.exit.i
                                        #   in Loop: Header=BB3_10 Depth=1
	ld.w	$a0, $s6, 12
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB3_8
# %bb.65:                               # %.lr.ph.i109.preheader
                                        #   in Loop: Header=BB3_10 Depth=1
	addi.d	$s5, $s6, 12
	b	.LBB3_82
.LBB3_66:                               #   in Loop: Header=BB3_10 Depth=1
	slli.d	$a1, $a0, 6
	alsl.d	$a0, $a0, $a1, 4
	add.d	$a0, $s4, $a0
	addi.d	$s8, $a0, -80
	ori	$a0, $zero, 1
	ori	$a1, $zero, 96
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_223
.LBB3_67:                               #   in Loop: Header=BB3_10 Depth=1
	move	$s4, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.h	$zero, $s4, 74
	st.d	$zero, $s4, 24
	st.b	$zero, $s4, 72
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $s4, 40
	st.h	$a0, $s4, 16
	ld.hu	$a0, $s8, 0
	bstrpick.d	$a1, $s5, 15, 0
	bgeu	$a0, $a1, .LBB3_69
# %bb.68:                               #   in Loop: Header=BB3_10 Depth=1
	st.h	$s5, $s8, 0
.LBB3_69:                               #   in Loop: Header=BB3_10 Depth=1
	slli.d	$a0, $s5, 1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	beqz	$a0, .LBB3_220
# %bb.70:                               # %.preheader.i113
                                        #   in Loop: Header=BB3_10 Depth=1
	beqz	$s5, .LBB3_77
# %bb.71:                               # %iter.check
                                        #   in Loop: Header=BB3_10 Depth=1
	ori	$a1, $zero, 8
	bltu	$s5, $a1, .LBB3_74
# %bb.72:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_10 Depth=1
	add.d	$a1, $s6, $s5
	addi.d	$a1, $a1, 1
	bgeu	$a0, $a1, .LBB3_188
# %bb.73:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_10 Depth=1
	alsl.d	$a1, $s5, $a0, 1
	bgeu	$s7, $a1, .LBB3_188
.LBB3_74:                               #   in Loop: Header=BB3_10 Depth=1
	move	$a1, $zero
.LBB3_75:                               # %.lr.ph.i114.preheader
                                        #   in Loop: Header=BB3_10 Depth=1
	sub.d	$a2, $s5, $a1
	alsl.d	$a0, $a1, $a0, 1
	add.d	$a1, $s6, $a1
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB3_76:                               # %.lr.ph.i114
                                        #   Parent Loop BB3_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a3, $a1, 0
	st.h	$a3, $a0, 0
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB3_76
.LBB3_77:                               # %._crit_edge.i116
                                        #   in Loop: Header=BB3_10 Depth=1
	addi.d	$a0, $sp, 97
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 32
	move	$a0, $s8
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_ac_addpatt)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_9
	b	.LBB3_221
.LBB3_78:                               # %._crit_edge.i127.i
                                        #   in Loop: Header=BB3_82 Depth=2
	ld.d	$a1, $fp, 64
.LBB3_79:                               #   in Loop: Header=BB3_82 Depth=2
	addi.d	$a2, $a1, 1
	st.d	$a2, $fp, 64
	slli.d	$a1, $a1, 3
	stx.d	$s6, $a0, $a1
.LBB3_80:                               #   in Loop: Header=BB3_82 Depth=2
	move	$s8, $s6
.LBB3_81:                               # %tree_node_char_binsearch.exit.i
                                        #   in Loop: Header=BB3_82 Depth=2
	ld.w	$a0, $s8, 12
	addi.d	$s5, $s8, 12
	move	$s6, $s8
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB3_8
.LBB3_82:                               # %.lr.ph.i109
                                        #   Parent Loop BB3_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_108 Depth 3
                                        #         Child Loop BB3_114 Depth 4
                                        #         Child Loop BB3_122 Depth 4
                                        #         Child Loop BB3_118 Depth 4
                                        #       Child Loop BB3_87 Depth 3
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bgeu	$s7, $a0, .LBB3_186
# %bb.83:                               #   in Loop: Header=BB3_82 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 96
	add.d	$a1, $sp, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(getNextToken)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 112
	add.d	$a1, $sp, $a1
	ld.bu	$a1, $a1, 0
	move	$s7, $a0
	bltu	$s4, $a1, .LBB3_80
# %bb.84:                               #   in Loop: Header=BB3_82 Depth=2
	slli.d	$a0, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI3_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI3_0)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB3_85:                               #   in Loop: Header=BB3_82 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 96
	add.d	$a0, $sp, $a0
	ld.bu	$s1, $a0, 0
	ld.w	$a3, $s5, 0
	ld.b	$a1, $s6, 16
	ld.d	$a0, $s6, 24
	addi.d	$a2, $a3, -2
	sltui	$a2, $a2, 1
	move	$s3, $zero
	blez	$a1, .LBB3_89
# %bb.86:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB3_82 Depth=2
	move	$a5, $zero
	alsl.d	$a4, $a2, $a0, 3
	addi.d	$a7, $a1, -1
	ext.w.b	$a6, $s1
	.p2align	4, , 16
.LBB3_87:                               #   Parent Loop BB3_10 Depth=1
                                        #     Parent Loop BB3_82 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sub.d	$t0, $a7, $a5
	bstrpick.d	$t0, $t0, 31, 1
	add.w	$t0, $t0, $a5
	slli.d	$t1, $t0, 3
	ldx.d	$s8, $a4, $t1
	ld.bu	$t1, $s8, 8
	beq	$t1, $a6, .LBB3_81
# %bb.88:                               #   in Loop: Header=BB3_87 Depth=3
	slt	$t1, $t1, $a6
	addi.w	$t2, $t0, 1
	addi.d	$t0, $t0, -1
	masknez	$t3, $s3, $t1
	maskeqz	$t2, $t2, $t1
	masknez	$a5, $a5, $t1
	or	$a5, $t2, $a5
	masknez	$t0, $t0, $t1
	maskeqz	$a7, $a7, $t1
	or	$a7, $a7, $t0
	addi.w	$a7, $a7, 0
	or	$s3, $t2, $t3
	bge	$a7, $a5, .LBB3_87
.LBB3_89:                               # %.loopexit.i
                                        #   in Loop: Header=BB3_82 Depth=2
	move	$a4, $a0
	ori	$a5, $zero, 2
	bne	$a3, $a5, .LBB3_91
# %bb.90:                               #   in Loop: Header=BB3_82 Depth=2
	ld.d	$a3, $a0, 8
	addi.d	$a4, $a0, 8
	sltui	$a3, $a3, 1
	masknez	$a4, $a4, $a3
.LBB3_91:                               # %tree_node_get_children.exit.i.i.i
                                        #   in Loop: Header=BB3_82 Depth=2
	bnez	$a1, .LBB3_166
# %bb.92:                               # %tree_node_get_children.exit.i.i.i
                                        #   in Loop: Header=BB3_82 Depth=2
	beqz	$a4, .LBB3_166
# %bb.93:                               #   in Loop: Header=BB3_82 Depth=2
	ld.d	$a3, $a4, 0
	sltui	$a4, $a3, 1
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $s6, $a4
	or	$s0, $a4, $a3
	b	.LBB3_168
.LBB3_94:                               #   in Loop: Header=BB3_82 Depth=2
	ld.w	$a1, $s5, 0
	ld.d	$a0, $s6, 24
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB3_96
# %bb.95:                               #   in Loop: Header=BB3_82 Depth=2
	ld.d	$a1, $a0, 8
	addi.d	$a0, $a0, 8
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
.LBB3_96:                               # %tree_node_get_children.exit.i154.i
                                        #   in Loop: Header=BB3_82 Depth=2
	ld.b	$a1, $s6, 16
	bnez	$a1, .LBB3_138
# %bb.97:                               # %tree_node_get_children.exit.i154.i
                                        #   in Loop: Header=BB3_82 Depth=2
	beqz	$a0, .LBB3_138
# %bb.98:                               #   in Loop: Header=BB3_82 Depth=2
	ld.d	$a0, $a0, 0
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s0, $a1, $a0
	ori	$s1, $zero, 1
	b	.LBB3_140
.LBB3_99:                               #   in Loop: Header=BB3_82 Depth=2
	ld.d	$a1, $fp, 88
	ld.d	$a2, $fp, 80
	ld.d	$a0, $fp, 72
	bne	$a1, $a2, .LBB3_102
# %bb.100:                              #   in Loop: Header=BB3_82 Depth=2
	lu12i.w	$a2, 1
	add.d	$a1, $a1, $a2
	st.d	$a1, $fp, 80
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 72
	beqz	$a0, .LBB3_103
# %bb.101:                              # %._crit_edge.i121.i
                                        #   in Loop: Header=BB3_82 Depth=2
	ld.d	$a1, $fp, 88
.LBB3_102:                              #   in Loop: Header=BB3_82 Depth=2
	addi.d	$a2, $a1, 1
	st.d	$a2, $fp, 88
	slli.d	$a1, $a1, 3
	stx.d	$zero, $a0, $a1
.LBB3_103:                              # %stack_push.exit123.i
                                        #   in Loop: Header=BB3_82 Depth=2
	ld.d	$a1, $fp, 64
	ld.d	$a2, $fp, 56
	ld.d	$a0, $fp, 48
	bne	$a1, $a2, .LBB3_79
# %bb.104:                              #   in Loop: Header=BB3_82 Depth=2
	lu12i.w	$a2, 1
	add.d	$a1, $a1, $a2
	st.d	$a1, $fp, 56
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 48
	bnez	$a0, .LBB3_78
	b	.LBB3_80
.LBB3_105:                              #   in Loop: Header=BB3_82 Depth=2
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	beqz	$a0, .LBB3_107
# %bb.106:                              #   in Loop: Header=BB3_82 Depth=2
	st.b	$zero, $s8, 16
	st.d	$zero, $s8, 0
	st.d	$zero, $s8, 24
.LBB3_107:                              # %tree_node_alloc.exit.i
                                        #   in Loop: Header=BB3_82 Depth=2
	st.w	$s2, $s8, 12
	st.b	$zero, $s8, 8
	ori	$s3, $zero, 1
	st.b	$s3, $s8, 17
	move	$a0, $s6
	move	$a1, $s8
	pcaddu18i	$ra, %call36(tree_node_insert_nonbin)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB3_108:                              # %tree_node_alloc.exit.i
                                        #   Parent Loop BB3_10 Depth=1
                                        #     Parent Loop BB3_82 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_114 Depth 4
                                        #         Child Loop BB3_122 Depth 4
                                        #         Child Loop BB3_118 Depth 4
	ld.d	$a0, $fp, 88
	beqz	$a0, .LBB3_125
# %bb.109:                              # %stack_pop.exit.i
                                        #   in Loop: Header=BB3_108 Depth=3
	ld.d	$a1, $fp, 72
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 88
	slli.d	$a0, $a0, 3
	ldx.d	$s1, $a1, $a0
	beqz	$s1, .LBB3_125
# %bb.110:                              #   in Loop: Header=BB3_108 Depth=3
	ld.w	$a3, $s1, 12
	ld.d	$a0, $s1, 24
	move	$a1, $a0
	ori	$a2, $zero, 2
	bne	$a3, $a2, .LBB3_112
# %bb.111:                              #   in Loop: Header=BB3_108 Depth=3
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a0, 8
	sltui	$a1, $a1, 1
	masknez	$a1, $a2, $a1
.LBB3_112:                              # %tree_node_get_children.exit.i.i
                                        #   in Loop: Header=BB3_108 Depth=3
	ld.b	$a2, $s1, 16
	beqz	$a2, .LBB3_116
# %bb.113:                              #   in Loop: Header=BB3_108 Depth=3
	ld.d	$a0, $a1, 0
	ld.d	$a3, $a0, 0
	beq	$a3, $s1, .LBB3_121
	.p2align	4, , 16
.LBB3_114:                              # %.preheader60.i.i
                                        #   Parent Loop BB3_10 Depth=1
                                        #     Parent Loop BB3_82 Depth=2
                                        #       Parent Loop BB3_108 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a0, $a3
	ld.d	$a3, $a3, 0
	bne	$a3, $s1, .LBB3_114
# %bb.115:                              #   in Loop: Header=BB3_108 Depth=3
	st.b	$s3, $s8, 17
	st.b	$zero, $a0, 17
	st.d	$s8, $a0, 0
	b	.LBB3_108
	.p2align	4, , 16
.LBB3_116:                              #   in Loop: Header=BB3_108 Depth=3
	addi.d	$s0, $a3, -2
	beqz	$a0, .LBB3_123
# %bb.117:                              #   in Loop: Header=BB3_108 Depth=3
	sltui	$a1, $s0, 1
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a0, $a1
	beqz	$a1, .LBB3_123
	.p2align	4, , 16
.LBB3_118:                              # %.preheader.i135.i
                                        #   Parent Loop BB3_10 Depth=1
                                        #     Parent Loop BB3_82 Depth=2
                                        #       Parent Loop BB3_108 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB3_120
# %bb.119:                              #   in Loop: Header=BB3_118 Depth=4
	ld.bu	$a2, $a0, 17
	beqz	$a2, .LBB3_118
.LBB3_120:                              # %.critedge.i.i
                                        #   in Loop: Header=BB3_108 Depth=3
	st.b	$zero, $a0, 17
	st.d	$a1, $s8, 0
	st.d	$s8, $a0, 0
	st.b	$s3, $s8, 17
	b	.LBB3_108
	.p2align	4, , 16
.LBB3_121:                              #   in Loop: Header=BB3_108 Depth=3
	st.b	$s3, $s8, 17
	blez	$a2, .LBB3_108
	.p2align	4, , 16
.LBB3_122:                              # %.lr.ph.i133.i
                                        #   Parent Loop BB3_10 Depth=1
                                        #     Parent Loop BB3_82 Depth=2
                                        #       Parent Loop BB3_108 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $a1, 0
	st.d	$s8, $a0, 0
	ld.d	$a0, $a1, 0
	st.b	$zero, $a0, 17
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB3_122
	b	.LBB3_108
	.p2align	4, , 16
.LBB3_123:                              #   in Loop: Header=BB3_108 Depth=3
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 24
	beqz	$a0, .LBB3_108
# %bb.124:                              #   in Loop: Header=BB3_108 Depth=3
	sltui	$a1, $s0, 1
	slli.d	$a1, $a1, 3
	stx.d	$s8, $a0, $a1
	b	.LBB3_108
.LBB3_125:                              # %stack_pop.exit.thread.i
                                        #   in Loop: Header=BB3_82 Depth=2
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB3_81
# %bb.126:                              #   in Loop: Header=BB3_82 Depth=2
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 64
	b	.LBB3_81
.LBB3_127:                              #   in Loop: Header=BB3_82 Depth=2
	ld.w	$a1, $s5, 0
	ld.d	$a0, $s6, 24
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB3_129
# %bb.128:                              #   in Loop: Header=BB3_82 Depth=2
	ld.d	$a1, $a0, 8
	addi.d	$a0, $a0, 8
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
.LBB3_129:                              # %tree_node_get_children.exit.i166.i
                                        #   in Loop: Header=BB3_82 Depth=2
	ld.b	$a1, $s6, 16
	bnez	$a1, .LBB3_156
# %bb.130:                              # %tree_node_get_children.exit.i166.i
                                        #   in Loop: Header=BB3_82 Depth=2
	beqz	$a0, .LBB3_156
# %bb.131:                              #   in Loop: Header=BB3_82 Depth=2
	ld.d	$a0, $a0, 0
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s0, $a1, $a0
	b	.LBB3_158
.LBB3_132:                              #   in Loop: Header=BB3_82 Depth=2
	ld.d	$a1, $fp, 88
	ld.d	$a2, $fp, 80
	ld.d	$a0, $fp, 72
	bne	$a1, $a2, .LBB3_135
# %bb.133:                              #   in Loop: Header=BB3_82 Depth=2
	lu12i.w	$a2, 1
	add.d	$a1, $a1, $a2
	st.d	$a1, $fp, 80
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 72
	beqz	$a0, .LBB3_136
# %bb.134:                              # %._crit_edge.i143.i
                                        #   in Loop: Header=BB3_82 Depth=2
	ld.d	$a1, $fp, 88
.LBB3_135:                              #   in Loop: Header=BB3_82 Depth=2
	addi.d	$a2, $a1, 1
	st.d	$a2, $fp, 88
	slli.d	$a1, $a1, 3
	stx.d	$s6, $a0, $a1
.LBB3_136:                              # %stack_push.exit145.i
                                        #   in Loop: Header=BB3_82 Depth=2
	ld.d	$a1, $fp, 64
	ld.d	$a0, $fp, 48
	beqz	$a1, .LBB3_162
# %bb.137:                              #   in Loop: Header=BB3_82 Depth=2
	addi.d	$a1, $a1, -1
	st.d	$a1, $fp, 64
	slli.d	$a2, $a1, 3
	ldx.d	$s8, $a0, $a2
	ld.d	$a2, $fp, 56
	beq	$a1, $a2, .LBB3_163
	b	.LBB3_165
.LBB3_138:                              #   in Loop: Header=BB3_82 Depth=2
	move	$s0, $s6
	ori	$a2, $zero, 2
	ori	$s1, $zero, 1
	blt	$a1, $a2, .LBB3_140
# %bb.139:                              #   in Loop: Header=BB3_82 Depth=2
	ld.d	$a0, $a0, 0
	ld.d	$s0, $a0, 0
.LBB3_140:                              # %tree_get_next.exit.i
                                        #   in Loop: Header=BB3_82 Depth=2
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	beqz	$a0, .LBB3_142
# %bb.141:                              #   in Loop: Header=BB3_82 Depth=2
	ori	$a0, $zero, 256
	st.h	$a0, $s8, 16
	st.d	$s0, $s8, 0
	st.d	$zero, $s8, 24
.LBB3_142:                              # %tree_node_alloc.exit163.i
                                        #   in Loop: Header=BB3_82 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 96
	add.d	$a0, $sp, $a0
	ld.d	$s4, $a0, 0
	pcalau12i	$a0, %pc_hi20(char_class_bitmap)
	addi.d	$s5, $a0, %pc_lo12(char_class_bitmap)
	ori	$a2, $zero, 32
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_161
# %bb.143:                              #   in Loop: Header=BB3_82 Depth=2
	addi.d	$a1, $s5, 32
	ori	$a2, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_173
# %bb.144:                              #   in Loop: Header=BB3_82 Depth=2
	addi.d	$a1, $s5, 64
	ori	$a2, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_174
# %bb.145:                              #   in Loop: Header=BB3_82 Depth=2
	addi.d	$a1, $s5, 96
	ori	$a2, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_175
# %bb.146:                              #   in Loop: Header=BB3_82 Depth=2
	addi.d	$a1, $s5, 128
	ori	$a2, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_176
# %bb.147:                              #   in Loop: Header=BB3_82 Depth=2
	addi.d	$a1, $s5, 160
	ori	$a2, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_177
# %bb.148:                              #   in Loop: Header=BB3_82 Depth=2
	addi.d	$a1, $s5, 192
	ori	$a2, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_178
# %bb.149:                              #   in Loop: Header=BB3_82 Depth=2
	addi.d	$a1, $s5, 224
	ori	$a2, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_179
# %bb.150:                              #   in Loop: Header=BB3_82 Depth=2
	addi.d	$a1, $s5, 256
	ori	$a2, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_180
# %bb.151:                              #   in Loop: Header=BB3_82 Depth=2
	addi.d	$a1, $s5, 288
	ori	$a2, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_181
# %bb.152:                              #   in Loop: Header=BB3_82 Depth=2
	addi.d	$a1, $s5, 320
	ori	$a2, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_182
# %bb.153:                              #   in Loop: Header=BB3_82 Depth=2
	addi.d	$a1, $s5, 352
	ori	$a2, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_183
# %bb.154:                              # %char_getclass.exit.i
                                        #   in Loop: Header=BB3_82 Depth=2
	ori	$a0, $zero, 2
	st.w	$a0, $s8, 12
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, 24
	beqz	$a0, .LBB3_223
# %bb.155:                              #   in Loop: Header=BB3_82 Depth=2
	st.d	$s4, $a0, 0
	ld.d	$a0, $s8, 24
	st.d	$zero, $a0, 8
	b	.LBB3_185
.LBB3_156:                              #   in Loop: Header=BB3_82 Depth=2
	move	$s0, $s6
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB3_158
# %bb.157:                              #   in Loop: Header=BB3_82 Depth=2
	ld.d	$a0, $a0, 0
	ld.d	$s0, $a0, 0
.LBB3_158:                              # %tree_get_next.exit174.i
                                        #   in Loop: Header=BB3_82 Depth=2
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	beqz	$a0, .LBB3_160
# %bb.159:                              #   in Loop: Header=BB3_82 Depth=2
	ori	$a0, $zero, 256
	st.h	$a0, $s8, 16
	st.d	$s0, $s8, 0
	st.d	$zero, $s8, 24
.LBB3_160:                              # %tree_node_alloc.exit176.i
                                        #   in Loop: Header=BB3_82 Depth=2
	ori	$a0, $zero, 3
	st.w	$a0, $s8, 12
	move	$a0, $s6
	move	$a1, $s8
	pcaddu18i	$ra, %call36(tree_node_insert_nonbin)
	jirl	$ra, $ra, 0
	b	.LBB3_81
.LBB3_161:                              #   in Loop: Header=BB3_82 Depth=2
	move	$a0, $zero
	b	.LBB3_184
.LBB3_162:                              #   in Loop: Header=BB3_82 Depth=2
	move	$a1, $zero
	move	$s8, $zero
	ld.d	$a2, $fp, 56
	bne	$a1, $a2, .LBB3_165
.LBB3_163:                              #   in Loop: Header=BB3_82 Depth=2
	lu12i.w	$a2, 1
	add.d	$a1, $a1, $a2
	st.d	$a1, $fp, 56
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 48
	beqz	$a0, .LBB3_81
# %bb.164:                              # %._crit_edge.i151.i
                                        #   in Loop: Header=BB3_82 Depth=2
	ld.d	$a1, $fp, 64
.LBB3_165:                              #   in Loop: Header=BB3_82 Depth=2
	addi.d	$a2, $a1, 1
	st.d	$a2, $fp, 64
	slli.d	$a1, $a1, 3
	stx.d	$s8, $a0, $a1
	b	.LBB3_81
.LBB3_166:                              #   in Loop: Header=BB3_82 Depth=2
	move	$s0, $s6
	ori	$a3, $zero, 2
	blt	$a1, $a3, .LBB3_168
# %bb.167:                              #   in Loop: Header=BB3_82 Depth=2
	ld.d	$a3, $a4, 0
	ld.d	$s0, $a3, 0
.LBB3_168:                              # %tree_get_next.exit.i.i
                                        #   in Loop: Header=BB3_82 Depth=2
	addi.d	$a1, $a1, 1
	st.b	$a1, $s6, 16
	ext.w.b	$a1, $a1
	add.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$a0, $s6, 24
	ld.w	$s5, $s5, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	beqz	$a0, .LBB3_170
# %bb.169:                              #   in Loop: Header=BB3_82 Depth=2
	xor	$a0, $s6, $s0
	sltui	$a0, $a0, 1
	st.b	$zero, $s8, 16
	st.d	$s0, $s8, 0
	st.b	$a0, $s8, 17
	st.d	$zero, $s8, 24
	st.w	$zero, $s8, 12
	st.b	$s1, $s8, 8
.LBB3_170:                              # %tree_node_alloc.exit.thread.i.i
                                        #   in Loop: Header=BB3_82 Depth=2
	ld.b	$a0, $s6, 16
	addi.d	$a1, $s5, -2
	sltui	$a1, $a1, 1
	nor	$a2, $s3, $zero
	add.w	$a2, $a0, $a2
	alsl.d	$s0, $a1, $s4, 3
	blez	$a2, .LBB3_172
# %bb.171:                              #   in Loop: Header=BB3_82 Depth=2
	alsl.d	$a1, $s3, $s0, 3
	addi.d	$a0, $a1, 8
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB3_172:                              # %tree_node_alloc.exit.thread._crit_edge.i.i
                                        #   in Loop: Header=BB3_82 Depth=2
	slli.d	$a0, $s3, 3
	stx.d	$s8, $s0, $a0
	ori	$s4, $zero, 7
	b	.LBB3_81
.LBB3_173:                              #   in Loop: Header=BB3_82 Depth=2
	ori	$a0, $zero, 1
	b	.LBB3_184
.LBB3_174:                              #   in Loop: Header=BB3_82 Depth=2
	ori	$a0, $zero, 2
	b	.LBB3_184
.LBB3_175:                              #   in Loop: Header=BB3_82 Depth=2
	ori	$a0, $zero, 3
	b	.LBB3_184
.LBB3_176:                              #   in Loop: Header=BB3_82 Depth=2
	ori	$a0, $zero, 4
	b	.LBB3_184
.LBB3_177:                              #   in Loop: Header=BB3_82 Depth=2
	ori	$a0, $zero, 5
	b	.LBB3_184
.LBB3_178:                              #   in Loop: Header=BB3_82 Depth=2
	ori	$a0, $zero, 6
	b	.LBB3_184
.LBB3_179:                              #   in Loop: Header=BB3_82 Depth=2
	ori	$a0, $zero, 7
	b	.LBB3_184
.LBB3_180:                              #   in Loop: Header=BB3_82 Depth=2
	ori	$a0, $zero, 8
	b	.LBB3_184
.LBB3_181:                              #   in Loop: Header=BB3_82 Depth=2
	ori	$a0, $zero, 9
	b	.LBB3_184
.LBB3_182:                              #   in Loop: Header=BB3_82 Depth=2
	ori	$a0, $zero, 10
	b	.LBB3_184
.LBB3_183:                              #   in Loop: Header=BB3_82 Depth=2
	ori	$a0, $zero, 11
.LBB3_184:                              # %select.unfold.i
                                        #   in Loop: Header=BB3_82 Depth=2
	st.w	$s1, $s8, 12
	st.b	$a0, $s8, 8
.LBB3_185:                              # %tree_node_char_binsearch.exit.i
                                        #   in Loop: Header=BB3_82 Depth=2
	move	$a0, $s6
	move	$a1, $s8
	pcaddu18i	$ra, %call36(tree_node_insert_nonbin)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 7
	b	.LBB3_81
.LBB3_186:                              #   in Loop: Header=BB3_10 Depth=1
	ld.bu	$a0, $s7, 0
	beqz	$a0, .LBB3_193
# %bb.187:                              #   in Loop: Header=BB3_10 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 96
	add.d	$a0, $sp, $a0
	st.d	$s7, $a0, 0
	ori	$s0, $zero, 1
	b	.LBB3_199
.LBB3_188:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB3_10 Depth=1
	ori	$a1, $zero, 16
	bgeu	$s5, $a1, .LBB3_194
# %bb.189:                              #   in Loop: Header=BB3_10 Depth=1
	move	$a1, $zero
.LBB3_190:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB3_10 Depth=1
	move	$a4, $a1
	move	$a1, $s5
	bstrins.d	$a1, $zero, 2, 0
	sub.d	$a2, $a4, $a1
	alsl.d	$a3, $a4, $a0, 1
	add.d	$a4, $s6, $a4
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB3_191:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB3_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	vinsgr2vr.d	$vr0, $a5, 0
	vilvl.b	$vr0, $vr0, $vr0
	vslli.h	$vr0, $vr0, 8
	vsrai.h	$vr0, $vr0, 8
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 8
	bnez	$a2, .LBB3_191
# %bb.192:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB3_10 Depth=1
	bne	$s5, $a1, .LBB3_75
	b	.LBB3_77
.LBB3_193:                              #   in Loop: Header=BB3_10 Depth=1
	move	$s0, $zero
	b	.LBB3_199
.LBB3_194:                              # %vector.ph
                                        #   in Loop: Header=BB3_10 Depth=1
	andi	$a2, $s5, 8
	move	$a1, $s5
	bstrins.d	$a1, $zero, 3, 0
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s6, 9
	move	$a5, $a1
	.p2align	4, , 16
.LBB3_195:                              # %vector.body
                                        #   Parent Loop BB3_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a4, -8
	ld.d	$a7, $a4, 0
	vinsgr2vr.d	$vr0, $a6, 0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.b	$vr0, $vr0, $vr0
	vslli.h	$vr0, $vr0, 8
	vsrai.h	$vr0, $vr0, 8
	vilvl.b	$vr1, $vr1, $vr1
	vslli.h	$vr1, $vr1, 8
	vsrai.h	$vr1, $vr1, 8
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -16
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 16
	bnez	$a5, .LBB3_195
# %bb.196:                              # %middle.block
                                        #   in Loop: Header=BB3_10 Depth=1
	beq	$s5, $a1, .LBB3_77
# %bb.197:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB3_10 Depth=1
	bnez	$a2, .LBB3_190
	b	.LBB3_75
.LBB3_198:                              # %.thread.i.loopexit
                                        #   in Loop: Header=BB3_10 Depth=1
	addi.d	$a0, $a1, -6
	sltui	$s0, $a0, 1
.LBB3_199:                              # %.thread.i
                                        #   in Loop: Header=BB3_10 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_223
# %bb.200:                              #   in Loop: Header=BB3_10 Depth=1
	move	$s4, $a0
	addi.d	$a0, $sp, 97
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	beqz	$s0, .LBB3_205
# %bb.201:                              #   in Loop: Header=BB3_10 Depth=1
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_223
# %bb.202:                              #   in Loop: Header=BB3_10 Depth=1
	move	$s5, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 96
	add.d	$a0, $sp, $a0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cli_regcomp)
	jirl	$ra, $ra, 0
	st.d	$s5, $s4, 8
	bnez	$a0, .LBB3_226
# %bb.203:                              #   in Loop: Header=BB3_10 Depth=1
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_223
# %bb.204:                              #   in Loop: Header=BB3_10 Depth=1
	move	$a1, $a0
	ori	$a0, $zero, 4
	st.w	$a0, $a1, 12
	st.d	$s6, $a1, 0
	ori	$a0, $zero, 256
	st.h	$a0, $a1, 16
	st.d	$s4, $a1, 24
	move	$a0, $s6
	pcaddu18i	$ra, %call36(tree_node_insert_nonbin)
	jirl	$ra, $ra, 0
	b	.LBB3_8
.LBB3_205:                              #   in Loop: Header=BB3_10 Depth=1
	st.d	$zero, $s4, 8
	st.b	$zero, $s6, 16
	st.d	$s4, $s6, 24
	ori	$a0, $zero, 4
	st.w	$a0, $s5, 0
	b	.LBB3_8
.LBB3_206:                              # %._crit_edge
	ld.w	$a0, $fp, 32
	ori	$a1, $zero, 1
	st.w	$a1, $fp, 36
	beqz	$a0, .LBB3_214
# %bb.207:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB3_209
# %bb.208:
	ld.d	$a1, $fp, 24
	slli.d	$a2, $a1, 6
	alsl.d	$a1, $a1, $a2, 4
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, -80
	pcaddu18i	$ra, %call36(cli_ac_buildtrie)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	bnez	$a0, .LBB3_224
.LBB3_209:
	ld.d	$a0, $fp, 48
	ori	$a1, $zero, 1
	st.w	$a1, $fp, 40
	addi.d	$s0, $fp, 48
	beqz	$a0, .LBB3_211
# %bb.210:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_211:                              # %stack_destroy.exit.i
	ld.d	$a0, $fp, 72
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 0
	beqz	$a0, .LBB3_213
# %bb.212:
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
.LBB3_213:                              # %regex_list_cleanup.exit
	st.d	$zero, $fp, 80
	vst	$vr0, $fp, 64
	ori	$a0, $zero, 1024
	st.d	$a0, $fp, 56
	lu12i.w	$s0, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI3_0)
	st.d	$a0, $fp, 48
	vst	$vr0, $fp, 80
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	st.d	$a0, $fp, 72
	b	.LBB3_224
.LBB3_214:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	b	.LBB3_224
.LBB3_215:
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(regex_list_done)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 32
	b	.LBB3_224
.LBB3_216:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	b	.LBB3_218
.LBB3_217:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
.LBB3_218:                              # %functionality_level_check.exit.thread157
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(regex_list_done)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 32
.LBB3_219:
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	b	.LBB3_224
.LBB3_220:                              # %.thread146
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB3_223
.LBB3_221:
	ld.d	$a1, $s4, 32
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	beq	$fp, $a0, .LBB3_223
	b	.LBB3_224
.LBB3_222:
	st.d	$s4, $fp, 0
.LBB3_223:
	addi.w	$s3, $zero, -114
.LBB3_224:                              # %functionality_level_check.exit.thread157
	move	$a0, $s3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2272
	add.d	$sp, $sp, $a1
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
.LBB3_225:
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB3_224
.LBB3_226:
	addi.w	$a1, $zero, -114
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB3_224
	b	.LBB3_223
.Lfunc_end3:
	.size	load_regex_matcher, .Lfunc_end3-load_regex_matcher
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_85-.LJTI3_0
	.word	.LBB3_127-.LJTI3_0
	.word	.LBB3_99-.LJTI3_0
	.word	.LBB3_105-.LJTI3_0
	.word	.LBB3_94-.LJTI3_0
	.word	.LBB3_132-.LJTI3_0
	.word	.LBB3_198-.LJTI3_0
	.word	.LBB3_198-.LJTI3_0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function regex_list_cleanup
.LCPI4_0:
	.dword	1024                            # 0x400
	.dword	0                               # 0x0
	.text
	.globl	regex_list_cleanup
	.p2align	5
	.type	regex_list_cleanup,@function
regex_list_cleanup:                     # @regex_list_cleanup
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 48
	addi.d	$s0, $fp, 48
	beqz	$a0, .LBB4_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB4_2:                                # %stack_destroy.exit
	ld.d	$a0, $fp, 72
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 0
	beqz	$a0, .LBB4_4
# %bb.3:
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
.LBB4_4:                                # %stack_destroy.exit5
	st.d	$zero, $fp, 80
	vst	$vr0, $fp, 64
	ori	$a0, $zero, 1024
	st.d	$a0, $fp, 56
	lu12i.w	$s0, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_0)
	st.d	$a0, $fp, 48
	vst	$vr0, $fp, 80
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 72
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	regex_list_cleanup, .Lfunc_end4-regex_list_cleanup
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function regex_list_done
.LCPI5_0:
	.dword	1024                            # 0x400
	.dword	0                               # 0x0
	.text
	.globl	regex_list_done
	.p2align	5
	.type	regex_list_done,@function
regex_list_done:                        # @regex_list_done
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 48
	addi.d	$s1, $fp, 48
	beqz	$a0, .LBB5_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_2:                                # %stack_destroy.exit.i
	ld.d	$a0, $fp, 72
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $s1, 0
	beqz	$a0, .LBB5_4
# %bb.3:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_4:                                # %regex_list_cleanup.exit
	st.d	$zero, $fp, 80
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 64
	ori	$a0, $zero, 1024
	st.d	$a0, $fp, 56
	lu12i.w	$s0, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	st.d	$a0, $fp, 48
	vst	$vr0, $fp, 80
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 36
	st.d	$a0, $fp, 72
	beqz	$a1, .LBB5_17
# %bb.5:
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB5_11
# %bb.6:                                # %.preheader
	ld.d	$a1, $fp, 24
	beqz	$a1, .LBB5_10
# %bb.7:                                # %.lr.ph.preheader
	move	$s0, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB5_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	add.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(cli_ac_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 80
	bltu	$s2, $a0, .LBB5_8
# %bb.9:                                # %._crit_edge.loopexit
	ld.d	$a0, $fp, 0
.LBB5_10:                               # %._crit_edge
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
.LBB5_11:
	ld.d	$a1, $fp, 8
	st.d	$zero, $fp, 24
	st.w	$zero, $fp, 40
	st.d	$zero, $fp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(destroy_tree_internal)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(destroy_tree_internal)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 64
	beqz	$a1, .LBB5_16
# %bb.12:                               # %stack_pop.exit.i.preheader
	addi.d	$s0, $fp, 64
	b	.LBB5_14
	.p2align	4, , 16
.LBB5_13:                               # %stack_pop.exit.thread.i
                                        #   in Loop: Header=BB5_14 Depth=1
	beqz	$a1, .LBB5_16
.LBB5_14:                               # %stack_pop.exit.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	addi.d	$a1, $a1, -1
	slli.d	$a2, $a1, 3
	ldx.d	$a0, $a0, $a2
	st.d	$a1, $s0, 0
	beqz	$a0, .LBB5_13
# %bb.15:                               #   in Loop: Header=BB5_14 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	b	.LBB5_13
.LBB5_16:                               # %destroy_tree.exit
	st.w	$zero, $fp, 36
.LBB5_17:
	ld.w	$a0, $fp, 32
	beqz	$a0, .LBB5_19
# %bb.18:
	st.w	$zero, $fp, 32
.LBB5_19:
	ld.d	$a0, $s1, 0
	addi.d	$fp, $fp, 72
	beqz	$a0, .LBB5_21
# %bb.20:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_21:                               # %stack_destroy.exit
	ld.d	$a0, $fp, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s1, 0
	beqz	$a0, .LBB5_23
# %bb.22:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_23:                               # %stack_destroy.exit21
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 0
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end5:
	.size	regex_list_done, .Lfunc_end5-regex_list_done
                                        # -- End function
	.globl	is_regex_ok                     # -- Begin function is_regex_ok
	.p2align	5
	.type	is_regex_ok,@function
is_regex_ok:                            # @is_regex_ok
# %bb.0:
	ld.w	$a0, $a0, 32
	addi.d	$a0, $a0, 1
	sltu	$a0, $zero, $a0
	ret
.Lfunc_end6:
	.size	is_regex_ok, .Lfunc_end6-is_regex_ok
                                        # -- End function
	.p2align	5                               # -- Begin function getNextToken
	.type	getNextToken,@function
getNextToken:                           # @getNextToken
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
	ld.bu	$a2, $a0, 0
	addi.d	$a2, $a2, -40
	ori	$a3, $zero, 85
	bltu	$a3, $a2, .LBB7_16
# %bb.1:
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI7_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI7_0)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB7_2:
	ori	$a2, $zero, 6
.LBB7_3:
	st.b	$a2, $a1, 16
.LBB7_4:
	addi.d	$a0, $a0, 1
.LBB7_5:                                # %.thread125
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
.LBB7_6:
	st.b	$zero, $a1, 16
	ld.bu	$s1, $a0, 1
	addi.d	$fp, $a0, 1
	move	$s0, $a1
	st.b	$s1, $a1, 0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s1, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 512
	beqz	$a0, .LBB7_64
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L__const.getNextToken.fmt)
	addi.d	$a0, $a0, %pc_lo12(.L__const.getNextToken.fmt)
	ld.b	$a1, $a0, 2
	ld.h	$a0, $a0, 0
	st.b	$a1, $sp, 54
	st.h	$a0, $sp, 52
	st.b	$s1, $sp, 53
	addi.d	$a0, $sp, 51
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 52
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB7_63
# %bb.8:
	ld.b	$a0, $sp, 51
	st.b	$a0, $s0, 0
	b	.LBB7_64
.LBB7_9:
	ori	$a2, $zero, 3
	b	.LBB7_3
.LBB7_10:
	ori	$a2, $zero, 5
	b	.LBB7_3
.LBB7_11:
	ori	$a2, $zero, 2
	b	.LBB7_3
.LBB7_12:
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_17
# %bb.13:
	move	$fp, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.d	$s0, $a0, 1
	ld.bu	$a1, $s0, 0
	ori	$a2, $zero, 94
	bne	$a1, $a2, .LBB7_18
# %bb.14:
	addi.w	$a1, $zero, -1
	st.d	$a1, $fp, 24
	st.d	$a1, $fp, 16
	st.d	$a1, $fp, 8
	st.d	$a1, $fp, 0
	addi.d	$s0, $a0, 2
	b	.LBB7_19
.LBB7_15:
	ori	$a2, $zero, 1
	b	.LBB7_3
.LBB7_16:
	st.b	$zero, $a1, 16
	ld.b	$a2, $a0, 0
	st.b	$a2, $a1, 0
	ori	$a2, $zero, 1
	st.d	$a2, $a1, 8
	b	.LBB7_4
.LBB7_17:
	move	$a0, $zero
	b	.LBB7_5
.LBB7_18:
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 16
	vst	$vr0, $fp, 0
.LBB7_19:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.bu	$a1, $s0, 0
	ori	$s6, $zero, 45
	ori	$s8, $zero, 91
	ori	$a7, $zero, 46
	pcalau12i	$a2, %pc_hi20(.L.str.20)
	addi.d	$a2, $a2, %pc_lo12(.L.str.20)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ori	$s1, $zero, 93
	ori	$s5, $zero, 1
	ori	$t0, $zero, 58
	pcalau12i	$a2, %pc_hi20(.L.str.21)
	addi.d	$a2, $a2, %pc_lo12(.L.str.21)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L.str.22)
	addi.d	$a2, $a2, %pc_lo12(.L.str.22)
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	move	$s4, $zero
	move	$s7, $zero
	ori	$s2, $zero, 256
	b	.LBB7_21
	.p2align	4, , 16
.LBB7_20:                               #   in Loop: Header=BB7_21 Depth=1
	srli.d	$a2, $a1, 3
	ldx.b	$a3, $fp, $a2
	andi	$a1, $a1, 7
	ori	$s4, $zero, 1
	sll.d	$a1, $s4, $a1
	xor	$a1, $a3, $a1
	stx.b	$a1, $fp, $a2
	ld.bu	$a1, $s0, 1
	addi.d	$s0, $s0, 1
	move	$s7, $a1
	beq	$a1, $s1, .LBB7_68
.LBB7_21:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_61 Depth 2
                                        #     Child Loop BB7_30 Depth 2
	bne	$a1, $s6, .LBB7_33
# %bb.22:                               #   in Loop: Header=BB7_21 Depth=1
	beqz	$s4, .LBB7_33
# %bb.23:                               #   in Loop: Header=BB7_21 Depth=1
	ld.bu	$a1, $s0, 1
	bne	$a1, $s8, .LBB7_28
# %bb.24:                               #   in Loop: Header=BB7_21 Depth=1
	ld.bu	$a2, $s0, 2
	ori	$a1, $zero, 91
	bne	$a2, $a7, .LBB7_28
# %bb.25:                               #   in Loop: Header=BB7_21 Depth=1
	ld.bu	$a1, $s0, 3
	bne	$a1, $s6, .LBB7_65
# %bb.26:                               #   in Loop: Header=BB7_21 Depth=1
	ld.bu	$a1, $s0, 4
	bne	$a1, $a7, .LBB7_65
# %bb.27:                               #   in Loop: Header=BB7_21 Depth=1
	ld.bu	$a2, $s0, 5
	ori	$a1, $zero, 45
	bne	$a2, $s1, .LBB7_65
.LBB7_28:                               #   in Loop: Header=BB7_21 Depth=1
	addi.d	$s0, $s0, 1
	bgeu	$s7, $a1, .LBB7_31
# %bb.29:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB7_21 Depth=1
	andi	$a2, $s7, 255
	.p2align	4, , 16
.LBB7_30:                               # %.lr.ph
                                        #   Parent Loop BB7_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a2, $a2, 1
	bstrpick.d	$a3, $a2, 31, 3
	ldx.b	$a4, $fp, $a3
	andi	$a5, $a2, 7
	sll.w	$a5, $s5, $a5
	xor	$a4, $a4, $a5
	stx.b	$a4, $fp, $a3
	bne	$a1, $a2, .LBB7_30
.LBB7_31:                               #   in Loop: Header=BB7_21 Depth=1
	move	$s4, $zero
.LBB7_32:                               # %thread-pre-split
                                        #   in Loop: Header=BB7_21 Depth=1
	ld.bu	$a1, $s0, 0
	bne	$a1, $s1, .LBB7_21
	b	.LBB7_68
	.p2align	4, , 16
.LBB7_33:                               #   in Loop: Header=BB7_21 Depth=1
	bne	$a1, $s8, .LBB7_20
# %bb.34:                               #   in Loop: Header=BB7_21 Depth=1
	ld.bu	$a2, $s0, 1
	bne	$a2, $t0, .LBB7_20
# %bb.35:                               #   in Loop: Header=BB7_21 Depth=1
	addi.d	$s0, $s0, 2
	move	$a0, $s0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_66
# %bb.36:                               #   in Loop: Header=BB7_21 Depth=1
	sub.w	$s3, $a0, $s0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	move	$a0, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_48
# %bb.37:                               #   in Loop: Header=BB7_21 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	move	$a0, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_49
# %bb.38:                               #   in Loop: Header=BB7_21 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_50
# %bb.39:                               #   in Loop: Header=BB7_21 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	move	$a0, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_51
# %bb.40:                               #   in Loop: Header=BB7_21 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	move	$a0, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_52
# %bb.41:                               #   in Loop: Header=BB7_21 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	move	$a0, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_53
# %bb.42:                               #   in Loop: Header=BB7_21 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	move	$a0, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_54
# %bb.43:                               #   in Loop: Header=BB7_21 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	move	$a0, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_55
# %bb.44:                               #   in Loop: Header=BB7_21 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	move	$a0, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_56
# %bb.45:                               #   in Loop: Header=BB7_21 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	move	$a0, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_57
# %bb.46:                               #   in Loop: Header=BB7_21 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	move	$a0, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_58
# %bb.47:                               #   in Loop: Header=BB7_21 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 11
	beqz	$a0, .LBB7_59
	b	.LBB7_69
.LBB7_48:                               #   in Loop: Header=BB7_21 Depth=1
	move	$a1, $zero
	b	.LBB7_59
.LBB7_49:                               #   in Loop: Header=BB7_21 Depth=1
	ori	$a1, $zero, 1
	b	.LBB7_59
.LBB7_50:                               #   in Loop: Header=BB7_21 Depth=1
	ori	$a1, $zero, 2
	b	.LBB7_59
.LBB7_51:                               #   in Loop: Header=BB7_21 Depth=1
	ori	$a1, $zero, 3
	b	.LBB7_59
.LBB7_52:                               #   in Loop: Header=BB7_21 Depth=1
	ori	$a1, $zero, 4
	b	.LBB7_59
.LBB7_53:                               #   in Loop: Header=BB7_21 Depth=1
	ori	$a1, $zero, 5
	b	.LBB7_59
.LBB7_54:                               #   in Loop: Header=BB7_21 Depth=1
	ori	$a1, $zero, 6
	b	.LBB7_59
.LBB7_55:                               #   in Loop: Header=BB7_21 Depth=1
	ori	$a1, $zero, 7
	b	.LBB7_59
.LBB7_56:                               #   in Loop: Header=BB7_21 Depth=1
	ori	$a1, $zero, 8
	b	.LBB7_59
.LBB7_57:                               #   in Loop: Header=BB7_21 Depth=1
	ori	$a1, $zero, 9
	b	.LBB7_59
.LBB7_58:                               #   in Loop: Header=BB7_21 Depth=1
	ori	$a1, $zero, 10
.LBB7_59:                               #   in Loop: Header=BB7_21 Depth=1
	sll.w	$a1, $s5, $a1
	pcalau12i	$a0, %pc_hi20(char_class)
	addi.d	$a2, $a0, %pc_lo12(char_class)
	move	$a3, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ori	$a7, $zero, 46
	ori	$t0, $zero, 58
	b	.LBB7_61
	.p2align	4, , 16
.LBB7_60:                               #   in Loop: Header=BB7_61 Depth=2
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 2
	beq	$a3, $s2, .LBB7_32
.LBB7_61:                               #   Parent Loop BB7_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a4, $a2, 0
	and	$a4, $a1, $a4
	beqz	$a4, .LBB7_60
# %bb.62:                               #   in Loop: Header=BB7_61 Depth=2
	srli.d	$a4, $a3, 3
	ldx.b	$a5, $fp, $a4
	andi	$a6, $a3, 7
	sll.d	$a6, $s5, $a6
	xor	$a5, $a5, $a6
	stx.b	$a5, $fp, $a4
	b	.LBB7_60
.LBB7_63:
	ori	$a0, $zero, 6
	st.b	$a0, $s0, 16
	st.d	$fp, $s0, 0
.LBB7_64:
	ori	$a0, $zero, 1
	st.d	$a0, $s0, 8
	move	$a0, $fp
	b	.LBB7_4
.LBB7_65:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	b	.LBB7_67
.LBB7_66:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
.LBB7_67:                               # %.thread120.sink.split
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
.LBB7_68:                               # %.thread120
	ori	$a1, $zero, 4
	st.b	$a1, $a0, 16
	st.d	$fp, $a0, 0
	move	$a0, $s0
	b	.LBB7_4
.LBB7_69:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	b	.LBB7_67
.Lfunc_end7:
	.size	getNextToken, .Lfunc_end7-getNextToken
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI7_0:
	.word	.LBB7_11-.LJTI7_0
	.word	.LBB7_9-.LJTI7_0
	.word	.LBB7_2-.LJTI7_0
	.word	.LBB7_2-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_15-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_2-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_12-.LJTI7_0
	.word	.LBB7_6-.LJTI7_0
	.word	.LBB7_4-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_16-.LJTI7_0
	.word	.LBB7_2-.LJTI7_0
	.word	.LBB7_10-.LJTI7_0
	.word	.LBB7_2-.LJTI7_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function tree_node_insert_nonbin
	.type	tree_node_insert_nonbin,@function
tree_node_insert_nonbin:                # @tree_node_insert_nonbin
# %bb.0:
	ld.w	$a5, $a0, 12
	ld.d	$a2, $a0, 24
	ori	$a4, $zero, 2
	move	$a3, $a2
	bne	$a5, $a4, .LBB8_2
# %bb.1:
	ld.d	$a3, $a2, 8
	addi.d	$a4, $a2, 8
	sltui	$a3, $a3, 1
	masknez	$a3, $a4, $a3
.LBB8_2:                                # %tree_node_get_children.exit
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.b	$a4, $a0, 16
	beqz	$a4, .LBB8_6
# %bb.3:
	ld.d	$a2, $a3, 0
	ld.d	$a5, $a2, 0
	beq	$a5, $a0, .LBB8_11
	.p2align	4, , 16
.LBB8_4:                                # %.preheader60
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a5
	ld.d	$a5, $a5, 0
	bne	$a5, $a0, .LBB8_4
# %bb.5:
	ori	$a0, $zero, 1
	st.b	$a0, $a1, 17
	st.b	$zero, $a2, 17
	st.d	$a1, $a2, 0
	b	.LBB8_15
.LBB8_6:
	addi.d	$fp, $a5, -2
	beqz	$a2, .LBB8_13
# %bb.7:
	sltui	$a3, $fp, 1
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a2, $a3
	beqz	$a3, .LBB8_13
	.p2align	4, , 16
.LBB8_8:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a3
	ld.d	$a3, $a3, 0
	beqz	$a3, .LBB8_10
# %bb.9:                                #   in Loop: Header=BB8_8 Depth=1
	ld.bu	$a2, $a0, 17
	beqz	$a2, .LBB8_8
.LBB8_10:                               # %.critedge
	st.b	$zero, $a0, 17
	st.d	$a3, $a1, 0
	st.d	$a1, $a0, 0
	ori	$a0, $zero, 1
	st.b	$a0, $a1, 17
	b	.LBB8_15
.LBB8_11:
	ori	$a0, $zero, 1
	st.b	$a0, $a1, 17
	blez	$a4, .LBB8_15
	.p2align	4, , 16
.LBB8_12:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a3, 0
	st.d	$a1, $a0, 0
	ld.d	$a0, $a3, 0
	st.b	$zero, $a0, 17
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB8_12
	b	.LBB8_15
.LBB8_13:
	move	$s0, $a1
	ori	$a1, $zero, 16
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 24
	beqz	$a0, .LBB8_15
# %bb.14:
	sltui	$a2, $fp, 1
	slli.d	$a2, $a2, 3
	stx.d	$s0, $a0, $a2
.LBB8_15:                               # %.loopexit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	tree_node_insert_nonbin, .Lfunc_end8-tree_node_insert_nonbin
                                        # -- End function
	.p2align	5                               # -- Begin function destroy_tree_internal
	.type	destroy_tree_internal,@function
destroy_tree_internal:                  # @destroy_tree_internal
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.w	$a1, $a1, 12
	ld.d	$s2, $fp, 24
	ori	$a2, $zero, 4
	move	$s0, $a0
	beq	$a1, $a2, .LBB9_3
# %bb.1:
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB9_25
# %bb.2:                                # %tree_node_get_children.exit.thread
	ld.d	$a0, $s2, 8
	addi.d	$a1, $s2, 8
	sltui	$a0, $a0, 1
	masknez	$s2, $a1, $a0
	b	.LBB9_25
.LBB9_3:
	ld.d	$a1, $fp, 0
	move	$s1, $s2
	beqz	$a1, .LBB9_5
# %bb.4:
	ld.bu	$a0, $fp, 17
	move	$s1, $s2
	beqz	$a0, .LBB9_9
.LBB9_5:
	ld.d	$a1, $s0, 64
	ld.d	$a0, $s0, 48
	beqz	$a1, .LBB9_10
.LBB9_6:
	move	$a2, $a0
	move	$a3, $a1
	.p2align	4, , 16
.LBB9_7:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	beq	$a4, $s1, .LBB9_13
# %bb.8:                                #   in Loop: Header=BB9_7 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB9_7
	b	.LBB9_10
.LBB9_9:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(destroy_tree_internal)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 24
	ld.d	$a1, $s0, 64
	ld.d	$a0, $s0, 48
	bnez	$a1, .LBB9_6
.LBB9_10:                               # %._crit_edge.i
	ld.d	$a2, $s0, 56
	bne	$a1, $a2, .LBB9_12
# %bb.11:
	lu12i.w	$a2, 1
	add.d	$a1, $a1, $a2
	st.d	$a1, $s0, 56
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 64
	st.d	$a0, $s0, 48
	beqz	$a0, .LBB9_61
.LBB9_12:                               # %._crit_edge.i.i
	slli.d	$a2, $a1, 3
	addi.d	$a1, $a1, 1
	st.d	$a1, $s0, 64
	stx.d	$s1, $a0, $a2
.LBB9_13:                               # %stack_push_once.exit
	beqz	$a1, .LBB9_17
.LBB9_14:
	move	$a2, $a0
	move	$a3, $a1
	.p2align	4, , 16
.LBB9_15:                               # %.lr.ph.i74
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	beq	$a4, $fp, .LBB9_21
# %bb.16:                               #   in Loop: Header=BB9_15 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB9_15
.LBB9_17:                               # %._crit_edge.i77
	ld.d	$a2, $s0, 56
	bne	$a1, $a2, .LBB9_20
# %bb.18:
	lu12i.w	$a2, 1
	add.d	$a1, $a1, $a2
	st.d	$a1, $s0, 56
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 48
	beqz	$a0, .LBB9_21
# %bb.19:                               # %._crit_edge.i.i79
	ld.d	$a1, $s0, 64
.LBB9_20:
	addi.d	$a2, $a1, 1
	st.d	$a2, $s0, 64
	slli.d	$a1, $a1, 3
	stx.d	$fp, $a0, $a1
.LBB9_21:                               # %stack_push_once.exit81
	ld.d	$a0, $s2, 8
	beqz	$a0, .LBB9_23
# %bb.22:
	pcaddu18i	$ra, %call36(cli_regfree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s2, 8
.LBB9_23:
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB9_25
# %bb.24:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s2, 0
.LBB9_25:
	ld.b	$a0, $fp, 16
	beqz	$a0, .LBB9_28
# %bb.26:
	ld.d	$a1, $s2, 0
	ld.w	$a2, $a1, 12
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB9_30
# %bb.27:
	move	$s1, $zero
	bgtz	$a0, .LBB9_31
	b	.LBB9_33
.LBB9_28:
	beqz	$s2, .LBB9_36
# %bb.29:
	ld.d	$s1, $s2, 0
	bnez	$s1, .LBB9_35
	b	.LBB9_36
.LBB9_30:
	ld.d	$s1, $a1, 0
	blez	$a0, .LBB9_33
.LBB9_31:                               # %.lr.ph.preheader
	move	$s3, $zero
	.p2align	4, , 16
.LBB9_32:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(destroy_tree_internal)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 16
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	blt	$s3, $a0, .LBB9_32
.LBB9_33:                               # %._crit_edge
	beqz	$s1, .LBB9_36
# %bb.34:                               # %._crit_edge
	beq	$s1, $fp, .LBB9_36
.LBB9_35:                               # %.sink.split
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(destroy_tree_internal)
	jirl	$ra, $ra, 0
.LBB9_36:
	ld.w	$a0, $fp, 12
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB9_40
# %bb.37:
	ld.d	$a1, $fp, 0
	beqz	$a1, .LBB9_40
# %bb.38:
	ld.bu	$a0, $fp, 17
	bnez	$a0, .LBB9_40
# %bb.39:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(destroy_tree_internal)
	jirl	$ra, $ra, 0
.LBB9_40:
	ld.d	$s1, $fp, 24
	beqz	$s1, .LBB9_49
# %bb.41:
	ld.d	$a1, $s0, 64
	ld.d	$a0, $s0, 48
	beqz	$a1, .LBB9_45
# %bb.42:
	move	$a2, $a0
	move	$a3, $a1
	.p2align	4, , 16
.LBB9_43:                               # %.lr.ph.i84
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	beq	$a4, $s1, .LBB9_49
# %bb.44:                               #   in Loop: Header=BB9_43 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB9_43
.LBB9_45:                               # %._crit_edge.i87
	ld.d	$a2, $s0, 56
	bne	$a1, $a2, .LBB9_48
# %bb.46:
	lu12i.w	$a2, 1
	add.d	$a1, $a1, $a2
	st.d	$a1, $s0, 56
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 48
	beqz	$a0, .LBB9_49
# %bb.47:                               # %._crit_edge.i.i89
	ld.d	$a1, $s0, 64
.LBB9_48:
	addi.d	$a2, $a1, 1
	st.d	$a2, $s0, 64
	slli.d	$a1, $a1, 3
	stx.d	$s1, $a0, $a1
.LBB9_49:                               # %stack_push_once.exit91
	ld.w	$a0, $fp, 12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB9_52
# %bb.50:
	ld.d	$a0, $fp, 24
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_52
# %bb.51:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	st.d	$zero, $a0, 0
.LBB9_52:
	ld.d	$a1, $s0, 64
	ld.d	$a0, $s0, 48
	beqz	$a1, .LBB9_56
# %bb.53:
	move	$a2, $a0
	move	$a3, $a1
	.p2align	4, , 16
.LBB9_54:                               # %.lr.ph.i94
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	beq	$a4, $fp, .LBB9_60
# %bb.55:                               #   in Loop: Header=BB9_54 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB9_54
.LBB9_56:                               # %._crit_edge.i97
	ld.d	$a2, $s0, 56
	bne	$a1, $a2, .LBB9_59
# %bb.57:
	lu12i.w	$a2, 1
	add.d	$a1, $a1, $a2
	st.d	$a1, $s0, 56
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 48
	beqz	$a0, .LBB9_60
# %bb.58:                               # %._crit_edge.i.i99
	ld.d	$a1, $s0, 64
.LBB9_59:
	addi.d	$a2, $a1, 1
	st.d	$a2, $s0, 64
	slli.d	$a1, $a1, 3
	stx.d	$fp, $a0, $a1
.LBB9_60:                               # %stack_push_once.exit101
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB9_61:
	move	$a0, $zero
	bnez	$a1, .LBB9_14
	b	.LBB9_17
.Lfunc_end9:
	.size	destroy_tree_internal, .Lfunc_end9-destroy_tree_internal
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Looking up in regex_list: %s\n"
	.size	.L.str, 30

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Got a match: %s with %s\n"
	.size	.L.str.1, 25

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Before inserting .: %s\n"
	.size	.L.str.2, 24

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"After inserting .: %s\n"
	.size	.L.str.3, 23

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Ignoring false match: %s with %s,%c\n"
	.size	.L.str.4, 37

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Lookup result: not in regex list\n"
	.size	.L.str.5, 34

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Lookup result: in regex list\n"
	.size	.L.str.6, 30

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Unable to load regex list (null file)\n"
	.size	.L.str.7, 39

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Loading regex_list\n"
	.size	.L.str.8, 20

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Regex list failed to initialize!\n"
	.size	.L.str.9, 34

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Malformed regex list line %d\n"
	.size	.L.str.10, 30

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Overlong regex line %d\n"
	.size	.L.str.11, 24

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"regex_list: Initialising AC pattern matcher\n"
	.size	.L.str.12, 45

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"regex_list: Can't initialise AC pattern matcher\n"
	.size	.L.str.13, 49

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"calc_pos_with_skip: skip:%lu, %lu - %lu \"%s\",\"%s\"\n"
	.size	.L.str.15, 51

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"calc_pos_with_skip:%s\n"
	.size	.L.str.16, 23

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"regex list line %s not loaded (required f-level: %u)\n"
	.size	.L.str.17, 54

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Regex list not loaded!\n"
	.size	.L.str.18, 24

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Building regex list\n"
	.size	.L.str.19, 21

	.type	.L__const.getNextToken.fmt,@object # @__const.getNextToken.fmt
	.section	.rodata,"a",@progbits
.L__const.getNextToken.fmt:
	.asciz	"\\\000"
	.size	.L__const.getNextToken.fmt, 3

	.type	.L.str.20,@object               # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"confused about collating sequences in regex,bailing out"
	.size	.L.str.20, 56

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	":]"
	.size	.L.str.21, 3

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"confused about std char class syntax regex,bailing out"
	.size	.L.str.22, 55

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"confused about regex bracket expression, bailing out"
	.size	.L.str.23, 53

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"[:alnum:]"
	.size	.L.str.24, 10

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"[:digit:]"
	.size	.L.str.25, 10

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"[:punct:]"
	.size	.L.str.26, 10

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"[:alpha:]"
	.size	.L.str.27, 10

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"[:graph:]"
	.size	.L.str.28, 10

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"[:space:]"
	.size	.L.str.29, 10

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"[:blank:]"
	.size	.L.str.30, 10

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"[:lower:]"
	.size	.L.str.31, 10

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"[:upper:]"
	.size	.L.str.32, 10

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"[:cntrl:]"
	.size	.L.str.33, 10

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"[:print:]"
	.size	.L.str.34, 10

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"[:xdigit:]"
	.size	.L.str.35, 11

	.type	char_class,@object              # @char_class
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
char_class:
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	608                             # 0x260
	.half	544                             # 0x220
	.half	544                             # 0x220
	.half	544                             # 0x220
	.half	544                             # 0x220
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	512                             # 0x200
	.half	1120                            # 0x460
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	3091                            # 0xc13
	.half	3091                            # 0xc13
	.half	3091                            # 0xc13
	.half	3091                            # 0xc13
	.half	3091                            # 0xc13
	.half	3091                            # 0xc13
	.half	3091                            # 0xc13
	.half	3091                            # 0xc13
	.half	3091                            # 0xc13
	.half	3091                            # 0xc13
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	3353                            # 0xd19
	.half	3353                            # 0xd19
	.half	3353                            # 0xd19
	.half	3353                            # 0xd19
	.half	3353                            # 0xd19
	.half	3353                            # 0xd19
	.half	1305                            # 0x519
	.half	1305                            # 0x519
	.half	1305                            # 0x519
	.half	1305                            # 0x519
	.half	1305                            # 0x519
	.half	1305                            # 0x519
	.half	1305                            # 0x519
	.half	1305                            # 0x519
	.half	1305                            # 0x519
	.half	1305                            # 0x519
	.half	1305                            # 0x519
	.half	1305                            # 0x519
	.half	1305                            # 0x519
	.half	1305                            # 0x519
	.half	1305                            # 0x519
	.half	1305                            # 0x519
	.half	1305                            # 0x519
	.half	1305                            # 0x519
	.half	1305                            # 0x519
	.half	1305                            # 0x519
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	3225                            # 0xc99
	.half	3225                            # 0xc99
	.half	3225                            # 0xc99
	.half	3225                            # 0xc99
	.half	3225                            # 0xc99
	.half	3225                            # 0xc99
	.half	1177                            # 0x499
	.half	1177                            # 0x499
	.half	1177                            # 0x499
	.half	1177                            # 0x499
	.half	1177                            # 0x499
	.half	1177                            # 0x499
	.half	1177                            # 0x499
	.half	1177                            # 0x499
	.half	1177                            # 0x499
	.half	1177                            # 0x499
	.half	1177                            # 0x499
	.half	1177                            # 0x499
	.half	1177                            # 0x499
	.half	1177                            # 0x499
	.half	1177                            # 0x499
	.half	1177                            # 0x499
	.half	1177                            # 0x499
	.half	1177                            # 0x499
	.half	1177                            # 0x499
	.half	1177                            # 0x499
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	1044                            # 0x414
	.half	512                             # 0x200
	.space	256
	.size	char_class, 512

	.type	char_class_bitmap,@object       # @char_class_bitmap
char_class_bitmap:
	.ascii	"\000\000\000\000\000\000\377\003\376\377\377\007\376\377\377\007"
	.space	16
	.ascii	"\000\000\000\000\000\000\377\003"
	.space	24
	.ascii	"\000\000\000\000\376\377\000\374\001\000\000\370\001\000\000x"
	.space	16
	.ascii	"\000\000\000\000\000\000\000\000\376\377\377\007\376\377\377\007"
	.space	16
	.ascii	"\000\000\000\000\376\377\377\377\377\377\377\377\377\377\377\177"
	.space	16
	.byte	0                               # 0x0
	.byte	62                              # 0x3e
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.space	27
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.space	27
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\376\377\377\007"
	.space	16
	.ascii	"\000\000\000\000\000\000\000\000\376\377\377\007"
	.space	20
	.ascii	"\377\377\377\377\000\000\000\000\000\000\000\000\000\000\000\200"
	.space	16
	.ascii	"\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\177"
	.space	16
	.ascii	"\000\000\000\000\000\000\377\003~\000\000\000~"
	.space	19
	.size	char_class_bitmap, 384

	.type	.L.str.38,@object               # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"Encountered invalid operator in tree:%d\n"
	.size	.L.str.38, 41

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym char_class_bitmap
