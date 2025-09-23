	.file	"z08.c"
	.text
	.globl	ReplaceWithTidy                 # -- Begin function ReplaceWithTidy
	.p2align	5
	.type	ReplaceWithTidy,@function
ReplaceWithTidy:                        # @ReplaceWithTidy
# %bb.0:
	move	$a5, $a0
	ld.bu	$a0, $a0, 32
	ori	$a2, $zero, 17
	bne	$a0, $a2, .LBB0_91
# %bb.1:
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
	ld.d	$fp, $a5, 8
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	beq	$fp, $a5, .LBB0_20
# %bb.2:                                # %.preheader125.preheader
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$a4, $zero, 17
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$s4, $a0, %got_pc_lo12(xx_link)
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$s5, $a0, %got_pc_lo12(xx_tmp)
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$s7, $a0, %got_pc_lo12(zz_hold)
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s1, $a0, %got_pc_lo12(zz_size)
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$s0, $a0, %got_pc_lo12(zz_free)
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$s6, $a0, %got_pc_lo12(zz_res)
	pcalau12i	$a0, %got_pc_hi20(zz_tmp)
	ld.d	$s8, $a0, %got_pc_lo12(zz_tmp)
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=1
	ld.d	$fp, $s3, 0
.LBB0_4:                                # %.loopexit
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$fp, $fp, 8
	beq	$fp, $a5, .LBB0_19
.LBB0_5:                                # %.preheader125
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	move	$s2, $fp
	.p2align	4, , 16
.LBB0_6:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $s2, 16
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB0_6
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	bne	$a0, $a4, .LBB0_4
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	ld.d	$s3, $s2, 8
	beq	$s3, $s2, .LBB0_13
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=1
	ld.bu	$a0, $s3, 32
	beqz	$a0, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a4, $zero, 17
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
.LBB0_11:                               #   in Loop: Header=BB0_5 Depth=1
	st.d	$s3, $s6, 0
	st.d	$s2, $s7, 0
	ld.d	$a0, $s2, 0
	st.d	$a0, $s8, 0
	ld.d	$a0, $s3, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s6, 0
	st.d	$a0, $a3, 8
	st.d	$s3, $s6, 0
	st.d	$fp, $s7, 0
	beqz	$fp, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $fp, 0
	st.d	$a0, $s8, 0
	ld.d	$a0, $s3, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s6, 0
	st.d	$a0, $a3, 8
.LBB0_13:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $fp, 24
	st.d	$fp, $s4, 0
	beq	$a0, $fp, .LBB0_18
# %bb.14:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a1, $fp, 16
	st.d	$a0, $s6, 0
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	ld.d	$a1, $fp, 8
	st.d	$a0, $s5, 0
	st.d	$fp, $s7, 0
	beq	$a1, $fp, .LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_5 Depth=1
	st.d	$a1, $s6, 0
	ld.d	$a0, $fp, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	st.d	$a1, $a2, 8
	st.d	$a0, $a0, 0
	ld.d	$fp, $s4, 0
	st.d	$a0, $a0, 8
.LBB0_16:                               #   in Loop: Header=BB0_5 Depth=1
	ld.bu	$a0, $fp, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $fp, 33
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a3, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s0, $a1
	st.d	$fp, $s7, 0
	st.w	$a0, $s1, 0
	st.d	$a1, $fp, 0
	ld.w	$a1, $s1, 0
	ld.d	$a2, $s7, 0
	ld.d	$a0, $s5, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s0, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB0_3
# %bb.17:                               #   in Loop: Header=BB0_5 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ori	$a4, $zero, 17
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_3
.LBB0_18:                               #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $zero
	ld.d	$a1, $fp, 8
	st.d	$a0, $s5, 0
	st.d	$fp, $s7, 0
	bne	$a1, $fp, .LBB0_15
	b	.LBB0_16
.LBB0_19:                               # %._crit_edge.loopexit
	ld.d	$fp, $a5, 8
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
.LBB0_20:                               # %._crit_edge
	pcalau12i	$s7, %pc_hi20(ReplaceWithTidy.buff_len)
	st.w	$zero, $s7, %pc_lo12(ReplaceWithTidy.buff_len)
	ld.h	$a0, $a5, 34
	pcalau12i	$s8, %pc_hi20(ReplaceWithTidy.buff_typ)
	ori	$a2, $zero, 11
	st.w	$a2, $s8, %pc_lo12(ReplaceWithTidy.buff_typ)
	pcalau12i	$a2, %pc_hi20(ReplaceWithTidy.buff_pos)
	addi.d	$s0, $a2, %pc_lo12(ReplaceWithTidy.buff_pos)
	ld.w	$a2, $a5, 36
	st.h	$a0, $s0, 2
	st.w	$a2, $s0, 4
	beq	$fp, $a5, .LBB0_43
# %bb.21:                               # %.preheader124.lr.ph
	beqz	$a1, .LBB0_47
# %bb.22:
	ori	$s2, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ReplaceWithTidy.buff)
	addi.d	$a0, $a0, %pc_lo12(ReplaceWithTidy.buff)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$s5, $zero, 32
	b	.LBB0_25
.LBB0_23:                               #   in Loop: Header=BB0_25 Depth=1
	ori	$a0, $zero, 12
	st.w	$a0, $s8, %pc_lo12(ReplaceWithTidy.buff_typ)
.LBB0_24:                               #   in Loop: Header=BB0_25 Depth=1
	ld.d	$fp, $fp, 8
	beq	$fp, $a5, .LBB0_43
.LBB0_25:                               # %.preheader124
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_26 Depth 2
                                        #     Child Loop BB0_41 Depth 2
	move	$s6, $fp
	.p2align	4, , 16
.LBB0_26:                               #   Parent Loop BB0_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $s6, 16
	ld.bu	$a0, $s6, 32
	beqz	$a0, .LBB0_26
# %bb.27:                               #   in Loop: Header=BB0_25 Depth=1
	addi.d	$a1, $a0, -11
	bgeu	$a1, $s2, .LBB0_31
# %bb.28:                               #   in Loop: Header=BB0_25 Depth=1
	ld.w	$s1, $s7, %pc_lo12(ReplaceWithTidy.buff_len)
	addi.d	$s4, $s6, 32
	addi.d	$s3, $s6, 64
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $s1
	ori	$a1, $zero, 512
	bltu	$a0, $a1, .LBB0_36
# %bb.29:                               #   in Loop: Header=BB0_25 Depth=1
	ori	$a0, $zero, 8
	ori	$a1, $zero, 1
	ori	$a3, $zero, 2
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	move	$a4, $s4
.LBB0_30:                               #   in Loop: Header=BB0_25 Depth=1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_31:                               #   in Loop: Header=BB0_25 Depth=1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_90
# %bb.32:                               #   in Loop: Header=BB0_25 Depth=1
	ld.d	$a0, $s6, 8
	ld.bu	$a1, $s6, 41
	ld.bu	$a2, $s6, 42
	bne	$a0, $s6, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_25 Depth=1
	or	$a0, $a2, $a1
	beqz	$a0, .LBB0_24
.LBB0_34:                               # %._crit_edge154
                                        #   in Loop: Header=BB0_25 Depth=1
	ld.w	$a0, $s7, %pc_lo12(ReplaceWithTidy.buff_len)
	add.d	$a3, $a0, $a1
	add.w	$a2, $a3, $a2
	ori	$a3, $zero, 511
	bge	$a3, $a2, .LBB0_39
# %bb.35:                               #   in Loop: Header=BB0_25 Depth=1
	addi.d	$a4, $s6, 32
	ori	$a0, $zero, 8
	ori	$a1, $zero, 2
	ori	$a3, $zero, 2
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_30
.LBB0_36:                               #   in Loop: Header=BB0_25 Depth=1
	bnez	$s1, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_25 Depth=1
	ld.h	$a0, $s6, 34
	ld.w	$a1, $s6, 36
	st.h	$a0, $s0, 2
	st.w	$a1, $s0, 4
.LBB0_38:                               #   in Loop: Header=BB0_25 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s4, 0
	add.d	$a0, $s1, $a0
	st.w	$a0, $s7, %pc_lo12(ReplaceWithTidy.buff_len)
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ori	$a0, $zero, 12
	beq	$a1, $a0, .LBB0_23
	b	.LBB0_24
.LBB0_39:                               # %.preheader
                                        #   in Loop: Header=BB0_25 Depth=1
	ld.bu	$a2, $s6, 42
	or	$a1, $a2, $a1
	beqz	$a1, .LBB0_23
# %bb.40:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_25 Depth=1
	move	$a1, $zero
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	.p2align	4, , 16
.LBB0_41:                               # %.lr.ph
                                        #   Parent Loop BB0_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$s5, $a2, 0
	ld.bu	$a3, $s6, 41
	ld.bu	$a4, $s6, 42
	addi.w	$a1, $a1, 1
	add.d	$a3, $a4, $a3
	addi.d	$a2, $a2, 1
	bltu	$a1, $a3, .LBB0_41
# %bb.42:                               # %._crit_edge137
                                        #   in Loop: Header=BB0_25 Depth=1
	add.d	$a0, $a0, $a1
	st.w	$a0, $s7, %pc_lo12(ReplaceWithTidy.buff_len)
	b	.LBB0_23
.LBB0_43:                               # %._crit_edge142.thread
	ld.w	$a0, $s8, %pc_lo12(ReplaceWithTidy.buff_typ)
	pcalau12i	$a1, %pc_hi20(ReplaceWithTidy.buff)
	addi.d	$a1, $a1, %pc_lo12(ReplaceWithTidy.buff)
	pcalau12i	$a2, %pc_hi20(ReplaceWithTidy.buff_pos)
	addi.d	$a2, $a2, %pc_lo12(ReplaceWithTidy.buff_pos)
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
.LBB0_44:
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a5, 24
	beq	$a1, $a5, .LBB0_87
.LBB0_45:
	ld.d	$a2, $a5, 16
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a5, $a5, 24
	st.d	$a5, $a5, 16
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(xx_tmp)
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a0, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a2, 0
	beqz	$a0, .LBB0_88
# %bb.46:
	ld.d	$a2, $a1, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	ld.d	$a4, $a0, 16
	st.d	$a2, $a3, 0
	st.d	$a4, $a1, 16
	st.d	$a1, $a4, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	b	.LBB0_88
.LBB0_47:                               # %.preheader124.us.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ReplaceWithTidy.buff)
	addi.d	$a0, $a0, %pc_lo12(ReplaceWithTidy.buff)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a0, $a0, %got_pc_lo12(zz_size)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a0, $a0, %got_pc_lo12(zz_free)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$s6, $a0, %got_pc_lo12(zz_hold)
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$s3, $a0, %got_pc_lo12(xx_link)
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_tmp)
	ld.d	$s5, $a0, %got_pc_lo12(zz_tmp)
	move	$s1, $zero
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
.LBB0_48:                               # %.preheader124.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_49 Depth 2
	move	$s2, $fp
	.p2align	4, , 16
.LBB0_49:                               #   Parent Loop BB0_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $s2, 16
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB0_49
# %bb.50:                               #   in Loop: Header=BB0_48 Depth=1
	addi.d	$a1, $a0, -11
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB0_53
# %bb.51:                               #   in Loop: Header=BB0_48 Depth=1
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	move	$s1, $s3
	move	$s3, $s5
	ld.w	$s6, $s7, %pc_lo12(ReplaceWithTidy.buff_len)
	addi.d	$s4, $s2, 32
	addi.d	$s5, $s2, 64
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $s6
	ori	$a1, $zero, 511
	bgeu	$a1, $a0, .LBB0_59
# %bb.52:                               #   in Loop: Header=BB0_48 Depth=1
	ori	$a0, $zero, 8
	ori	$a1, $zero, 1
	ori	$a3, $zero, 2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	move	$a4, $s4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_53:                               #   in Loop: Header=BB0_48 Depth=1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_81
# %bb.54:                               #   in Loop: Header=BB0_48 Depth=1
	ld.d	$a0, $s2, 8
	bne	$a0, $s2, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_48 Depth=1
	ld.bu	$a0, $s2, 41
	ld.bu	$a1, $s2, 42
	or	$a0, $a1, $a0
	beqz	$a0, .LBB0_77
.LBB0_56:                               #   in Loop: Header=BB0_48 Depth=1
	ld.w	$a0, $s8, %pc_lo12(ReplaceWithTidy.buff_typ)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	move	$s4, $a0
	st.w	$zero, $s7, %pc_lo12(ReplaceWithTidy.buff_len)
	ori	$a0, $zero, 11
	st.w	$a0, $s8, %pc_lo12(ReplaceWithTidy.buff_typ)
	bnez	$s1, .LBB0_66
# %bb.57:                               #   in Loop: Header=BB0_48 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 17
	slli.d	$a1, $a0, 3
	ldx.d	$s1, $a6, $a1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$s1, .LBB0_64
# %bb.58:                               #   in Loop: Header=BB0_48 Depth=1
	st.d	$s1, $s6, 0
	ld.d	$a1, $s1, 0
	alsl.d	$a0, $a0, $a6, 3
	st.d	$a1, $a0, 0
	b	.LBB0_65
.LBB0_59:                               #   in Loop: Header=BB0_48 Depth=1
	bnez	$s6, .LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_48 Depth=1
	ld.h	$a0, $s2, 34
	ld.w	$a1, $s2, 36
	st.h	$a0, $s0, 2
	st.w	$a1, $s0, 4
.LBB0_61:                               #   in Loop: Header=BB0_48 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s4, 0
	add.d	$a0, $s6, $a0
	st.w	$a0, $s7, %pc_lo12(ReplaceWithTidy.buff_len)
	ori	$a0, $zero, 12
	bne	$a1, $a0, .LBB0_63
# %bb.62:                               #   in Loop: Header=BB0_48 Depth=1
	st.w	$a0, $s8, %pc_lo12(ReplaceWithTidy.buff_typ)
.LBB0_63:                               #   in Loop: Header=BB0_48 Depth=1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	move	$s5, $s3
	move	$s3, $s1
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	b	.LBB0_77
.LBB0_64:                               #   in Loop: Header=BB0_48 Depth=1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	move	$s1, $a0
	st.d	$a0, $s6, 0
.LBB0_65:                               #   in Loop: Header=BB0_48 Depth=1
	ori	$a0, $zero, 17
	st.b	$a0, $s1, 32
	st.d	$s1, $s1, 24
	st.d	$s1, $s1, 16
	st.d	$s1, $s1, 8
	st.d	$s1, $s1, 0
	ld.h	$a0, $a5, 34
	st.h	$a0, $s1, 34
	ld.wu	$a0, $a5, 36
	ld.wu	$a1, $s1, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s1, 36
	ld.wu	$a1, $a5, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s1, 36
.LBB0_66:                               #   in Loop: Header=BB0_48 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a6, $a0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_48 Depth=1
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a6, 3
	st.d	$a1, $a2, 0
	b	.LBB0_69
.LBB0_68:                               #   in Loop: Header=BB0_48 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
.LBB0_69:                               #   in Loop: Header=BB0_48 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$s1, $s6, 0
	ld.d	$a1, $s1, 0
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $a4, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $a4, 0
	ld.d	$a0, $s3, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $a4, 0
	st.d	$s4, $s6, 0
	beqz	$s4, .LBB0_72
# %bb.70:                               #   in Loop: Header=BB0_48 Depth=1
	beqz	$a0, .LBB0_72
# %bb.71:                               #   in Loop: Header=BB0_48 Depth=1
	ld.d	$a1, $s4, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s5, 0
	st.d	$a2, $s4, 16
	st.d	$s4, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_72:                               #   in Loop: Header=BB0_48 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a6, $a0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_74
# %bb.73:                               #   in Loop: Header=BB0_48 Depth=1
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a6, 3
	st.d	$a1, $a2, 0
	b	.LBB0_75
.LBB0_74:                               #   in Loop: Header=BB0_48 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
.LBB0_75:                               #   in Loop: Header=BB0_48 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$s1, $s6, 0
	ld.d	$a1, $s1, 0
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $a4, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $a4, 0
	ld.d	$a0, $s3, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $a4, 0
	st.d	$s2, $s6, 0
	beqz	$a0, .LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_48 Depth=1
	ld.d	$a1, $s2, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s5, 0
	st.d	$a2, $s2, 16
	st.d	$s2, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	.p2align	4, , 16
.LBB0_77:                               #   in Loop: Header=BB0_48 Depth=1
	ld.d	$fp, $fp, 8
	bne	$fp, $a5, .LBB0_48
# %bb.78:                               # %._crit_edge142
	ld.w	$a0, $s8, %pc_lo12(ReplaceWithTidy.buff_typ)
	pcalau12i	$a1, %pc_hi20(ReplaceWithTidy.buff)
	addi.d	$a1, $a1, %pc_lo12(ReplaceWithTidy.buff)
	pcalau12i	$a2, %pc_hi20(ReplaceWithTidy.buff_pos)
	addi.d	$a2, $a2, %pc_lo12(ReplaceWithTidy.buff_pos)
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB0_44
# %bb.79:
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.bu	$a2, $a1, 0
	slli.d	$a1, $a2, 3
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a1, $a4, $a1
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$a1, .LBB0_82
# %bb.80:
	st.d	$a1, $s6, 0
	ld.d	$a3, $a1, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a3, $a2, 0
	b	.LBB0_83
.LBB0_81:                               # %.split.us
	bnez	$s1, .LBB0_89
	b	.LBB0_90
.LBB0_82:
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
.LBB0_83:
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	st.d	$a1, $s3, 0
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	st.d	$a1, $a5, 0
	st.d	$s1, $s6, 0
	ld.d	$a2, $s1, 0
	st.d	$a2, $s5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s1, 0
	ld.d	$a1, $a5, 0
	ld.d	$a2, $s6, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s5, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a1, $a5, 0
	st.d	$a1, $a4, 8
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_86
# %bb.84:
	ld.d	$a1, $s3, 0
	beqz	$a1, .LBB0_86
# %bb.85:
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s5, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB0_86:
	move	$a0, $s1
	ld.d	$a1, $a5, 24
	bne	$a1, $a5, .LBB0_45
.LBB0_87:                               # %.thread
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$zero, $a1, 0
.LBB0_88:                               # %.split.us.thread.sink.split
	move	$s1, $a5
	move	$a5, $a0
.LBB0_89:                               # %.split.us.thread.sink.split
	move	$a0, $s1
	move	$fp, $a5
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	move	$a5, $fp
.LBB0_90:
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
.LBB0_91:                               # %.split.us.thread
	move	$a0, $a5
	ret
.Lfunc_end0:
	.size	ReplaceWithTidy, .Lfunc_end0-ReplaceWithTidy
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function Manifest
.LCPI1_0:
	.word	0x43000000                      # float 128
	.text
	.globl	Manifest
	.p2align	5
	.type	Manifest,@function
Manifest:                               # @Manifest
# %bb.0:
	addi.d	$sp, $sp, -944
	st.d	$ra, $sp, 936                   # 8-byte Folded Spill
	st.d	$fp, $sp, 928                   # 8-byte Folded Spill
	st.d	$s0, $sp, 920                   # 8-byte Folded Spill
	st.d	$s1, $sp, 912                   # 8-byte Folded Spill
	st.d	$s2, $sp, 904                   # 8-byte Folded Spill
	st.d	$s3, $sp, 896                   # 8-byte Folded Spill
	st.d	$s4, $sp, 888                   # 8-byte Folded Spill
	st.d	$s5, $sp, 880                   # 8-byte Folded Spill
	st.d	$s6, $sp, 872                   # 8-byte Folded Spill
	st.d	$s7, $sp, 864                   # 8-byte Folded Spill
	st.d	$s8, $sp, 856                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 848                  # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(Manifest.depth)
	ld.w	$t0, $s8, %pc_lo12(Manifest.depth)
	move	$s0, $a7
	move	$s1, $a6
	move	$s3, $a5
	move	$s4, $a4
	move	$s7, $a3
	move	$s5, $a2
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	move	$s6, $a0
	addi.w	$a0, $t0, 1
	st.w	$a0, $s8, %pc_lo12(Manifest.depth)
	ori	$a1, $zero, 1000
	addi.d	$s2, $s6, 32
	bne	$a0, $a1, .LBB1_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 40
	ori	$a3, $zero, 1
	ori	$a5, $zero, 1000
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_2:
	ld.bu	$a0, $s6, 32
	addi.d	$a1, $a0, -2
	ori	$a2, $zero, 97
	bltu	$a2, $a1, .LBB1_255
# %bb.3:
	ld.d	$a2, $sp, 960
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 952
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 944
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI1_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI1_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	st.d	$s1, $sp, 232                   # 8-byte Folded Spill
	st.d	$s0, $sp, 240                   # 8-byte Folded Spill
	jr	$a1
.LBB1_4:
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_5
.LBB1_6:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a5, $s3
	move	$a6, $s1
	move	$a7, $s0
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 8
	bnez	$a0, .LBB1_438
	b	.LBB1_162
.LBB1_7:
	ld.d	$a0, $s6, 8
	beq	$a0, $s6, .LBB1_9
# %bb.8:
	ld.d	$a1, $a0, 8
	bne	$a1, $s6, .LBB1_10
.LBB1_9:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a5, $a0, %pc_lo12(.L.str.31)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 8
.LBB1_10:
	ld.hu	$a1, $s5, 0
	bstrpick.d	$a2, $a1, 15, 7
	ld.bu	$a3, $s5, 4
	slli.d	$a2, $a2, 7
	st.h	$a2, $sp, 288
	ld.h	$a2, $s5, 2
	andi	$a3, $a3, 127
	ld.hu	$a4, $s5, 4
	st.b	$a3, $sp, 292
	ld.hu	$a3, $sp, 292
	st.h	$a2, $sp, 290
	srli.d	$a2, $a4, 7
	ld.h	$a4, $s5, 6
	bstrins.d	$a3, $a2, 63, 7
	move	$a2, $s5
	ld.d	$a5, $s5, 8
	st.h	$a3, $sp, 292
	st.h	$a4, $sp, 294
	st.b	$a1, $sp, 288
	st.d	$a5, $sp, 296
	.p2align	4, , 16
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_11
# %bb.12:
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	move	$s5, $s4
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	pcalau12i	$a1, %pc_hi20(nenclose)
	addi.d	$a1, $a1, %pc_lo12(nenclose)
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	pcalau12i	$a1, %pc_hi20(ntarget)
	addi.d	$a5, $a1, %pc_lo12(ntarget)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s2, 0
	addi.d	$a1, $a1, -65
	sltui	$a1, $a1, 1
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s2, 0
	addi.d	$a2, $a1, -59
	ori	$a3, $zero, 8
	bltu	$a3, $a2, .LBB1_262
# %bb.13:
	move	$a1, $a0
	slli.d	$a0, $a2, 2
	pcalau12i	$a2, %pc_hi20(.LJTI1_1)
	addi.d	$a2, $a2, %pc_lo12(.LJTI1_1)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB1_14:
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(FontChange)
	jirl	$ra, $ra, 0
	b	.LBB1_262
.LBB1_15:
	ld.hu	$a1, $s5, 0
	bstrpick.d	$a2, $a1, 15, 7
	ld.bu	$a3, $s5, 4
	slli.d	$a2, $a2, 7
	st.h	$a2, $sp, 288
	ld.h	$a2, $s5, 2
	andi	$a3, $a3, 127
	ld.hu	$a4, $s5, 4
	st.b	$a3, $sp, 292
	ld.hu	$a3, $sp, 292
	st.h	$a2, $sp, 290
	srli.d	$a2, $a4, 7
	ld.h	$a4, $s5, 6
	bstrins.d	$a3, $a2, 63, 7
	ld.w	$a2, $s5, 12
	st.h	$a3, $sp, 292
	st.h	$a4, $sp, 294
	ld.w	$a3, $s5, 8
	st.w	$a2, $sp, 300
	st.b	$a1, $sp, 288
	ori	$a4, $zero, 48
	st.w	$a3, $sp, 296
	beq	$a0, $a4, .LBB1_219
# %bb.16:
	ori	$a3, $zero, 49
	beq	$a0, $a3, .LBB1_213
# %bb.17:
	ori	$a3, $zero, 66
	bne	$a0, $a3, .LBB1_220
# %bb.18:
	lu12i.w	$a0, -3073
	ori	$a0, $a0, 4095
	lu32i.d	$a0, 0
	and	$a0, $a2, $a0
	lu12i.w	$a1, 1024
	or	$a0, $a0, $a1
	st.w	$a0, $sp, 300
	b	.LBB1_222
.LBB1_19:
	ld.d	$s0, $s6, 8
	beq	$s0, $s6, .LBB1_21
# %bb.20:
	ld.d	$a0, $s0, 8
	bne	$a0, $s6, .LBB1_22
.LBB1_21:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a5, $a0, %pc_lo12(.L.str.33)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s6, 8
	.p2align	4, , 16
.LBB1_22:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_22
# %bb.23:
	ori	$a1, $zero, 17
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	st.d	$s6, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB1_112
# %bb.24:                               # %.loopexit2471.loopexit
	move	$a0, $s0
	b	.LBB1_307
.LBB1_25:
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_26:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_26
# %bb.27:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	pcalau12i	$a1, %pc_hi20(nenclose)
	addi.d	$a1, $a1, %pc_lo12(nenclose)
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	pcalau12i	$a1, %pc_hi20(ntarget)
	addi.d	$a5, $a1, %pc_lo12(ntarget)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a2, $sp, 812
	addi.d	$a3, $sp, 828
	move	$a1, $s5
	pcaddu18i	$ra, %call36(GetGap)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 828
	ori	$a1, $zero, 158
	bne	$a0, $a1, .LBB1_95
# %bb.28:
	ld.hu	$a0, $sp, 812
	bstrpick.d	$a0, $a0, 15, 10
	slli.d	$a0, $a0, 10
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1024
	bne	$a0, $a1, .LBB1_95
# %bb.29:                               # %._crit_edge2634
	ld.h	$a1, $sp, 814
	b	.LBB1_96
.LBB1_30:
	addi.d	$a0, $a0, -71
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 10
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 8
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ldx.h	$a0, $s5, $a0
	lu12i.w	$a1, 6
	ori	$a1, $a1, 1639
	mul.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 19
	add.d	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 11
	addi.d	$a1, $sp, 288
	b	.LBB1_445
.LBB1_31:
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_32:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_32
# %bb.33:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	pcalau12i	$a1, %pc_hi20(nenclose)
	addi.d	$a1, $a1, %pc_lo12(nenclose)
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	pcalau12i	$a1, %pc_hi20(ntarget)
	addi.d	$a5, $a1, %pc_lo12(ntarget)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s6, 64
	addi.d	$a3, $sp, 828
	move	$a1, $s5
	pcaddu18i	$ra, %call36(GetGap)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	.p2align	4, , 16
.LBB1_34:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_34
	b	.LBB1_290
.LBB1_35:
	beqz	$s0, .LBB1_114
# %bb.36:
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB1_114
# %bb.37:
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s2, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s2, 17
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s1, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $fp, $a1
	beqz	$s0, .LBB1_457
# %bb.38:
	alsl.d	$a0, $a0, $fp, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $a1, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $a0, 0
	b	.LBB1_458
.LBB1_39:
	ld.d	$a0, $s6, 0
	.p2align	4, , 16
.LBB1_40:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_40
# %bb.41:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a5, $s3
	move	$a6, $s1
	move	$a7, $s0
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s5, 0
	ld.h	$a0, $s6, 64
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a0, $a1, 7, 7
	st.h	$a0, $s6, 64
	ld.hu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 8, 8
	move	$a2, $a0
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $s6, 64
	ld.hu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $s6, 64
	ld.hu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $s6, 64
	ld.hu	$a1, $s5, 0
	srli.d	$a1, $a1, 13
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $s6, 64
	ld.h	$a1, $s5, 2
	st.h	$a1, $s6, 66
	ld.bu	$a1, $s5, 4
	ld.b	$a2, $s6, 68
	andi	$a1, $a1, 3
	bstrins.d	$a2, $a1, 1, 0
	st.b	$a2, $s6, 68
	ld.bu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 3, 2
	bstrins.d	$a2, $a1, 3, 2
	st.b	$a2, $s6, 68
	ld.bu	$a1, $s5, 4
	andi	$a2, $a2, 143
	srli.d	$a1, $a1, 4
	bstrins.d	$a2, $a1, 6, 4
	st.b	$a2, $s6, 68
	ld.bu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 3, 3
	bstrins.d	$a0, $a1, 3, 3
	st.b	$a0, $s6, 64
	ld.hu	$a1, $s5, 4
	ld.h	$a2, $s6, 68
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a2, $a1, 7, 7
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 8, 8
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	srli.d	$a1, $a1, 13
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $s6, 68
	ld.h	$a1, $s5, 6
	st.h	$a1, $s6, 70
	ld.wu	$a1, $s5, 12
	ld.w	$a2, $s6, 76
	andi	$a1, $a1, 4095
	bstrins.d	$a2, $a1, 11, 0
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 21, 12
	bstrins.d	$a2, $a1, 21, 12
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 23, 22
	bstrins.d	$a2, $a1, 23, 22
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 29, 24
	bstrins.d	$a2, $a1, 29, 24
	st.w	$a2, $s6, 76
	ld.w	$a1, $s5, 12
	srli.d	$a1, $a1, 31
	bstrins.d	$a2, $a1, 63, 31
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	lu12i.w	$a3, -262145
	ori	$a3, $a3, 4095
	lu32i.d	$a3, 0
	and	$a2, $a2, $a3
	srli.d	$a1, $a1, 30
	bstrins.d	$a2, $a1, 30, 30
	st.w	$a2, $s6, 76
	ld.bu	$a1, $s5, 0
	andi	$a1, $a1, 1
	bstrins.d	$a0, $a1, 0, 0
	st.b	$a0, $s6, 64
	ld.bu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 1, 1
	bstrins.d	$a0, $a1, 1, 1
	st.b	$a0, $s6, 64
	ld.bu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 2, 2
	bstrins.d	$a0, $a1, 2, 2
	st.b	$a0, $s6, 64
	ld.bu	$a1, $s5, 0
	andi	$a0, $a0, 143
	srli.d	$a1, $a1, 4
	bstrins.d	$a0, $a1, 6, 4
	st.b	$a0, $s6, 64
	ld.h	$a0, $s5, 8
	st.h	$a0, $s6, 72
	ld.h	$a1, $s5, 10
	ld.d	$a0, $s6, 8
	st.h	$a1, $s6, 74
	.p2align	4, , 16
.LBB1_42:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_42
# %bb.43:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	pcalau12i	$a1, %pc_hi20(nenclose)
	addi.d	$a1, $a1, %pc_lo12(nenclose)
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	pcalau12i	$a1, %pc_hi20(ntarget)
	addi.d	$a5, $a1, %pc_lo12(ntarget)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 8
	bnez	$a0, .LBB1_438
	b	.LBB1_162
.LBB1_44:
	ld.d	$a0, $s6, 0
	.p2align	4, , 16
.LBB1_45:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_45
# %bb.46:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a5, $s3
	move	$a6, $s1
	move	$a7, $s0
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s5, 0
	ld.h	$a0, $s6, 64
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a0, $a1, 7, 7
	st.h	$a0, $s6, 64
	ld.hu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 8, 8
	move	$a2, $a0
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $s6, 64
	ld.hu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $s6, 64
	ld.hu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $s6, 64
	ld.hu	$a1, $s5, 0
	srli.d	$a1, $a1, 13
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $s6, 64
	ld.h	$a1, $s5, 2
	st.h	$a1, $s6, 66
	ld.bu	$a1, $s5, 4
	ld.b	$a2, $s6, 68
	andi	$a1, $a1, 3
	bstrins.d	$a2, $a1, 1, 0
	st.b	$a2, $s6, 68
	ld.bu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 3, 2
	bstrins.d	$a2, $a1, 3, 2
	st.b	$a2, $s6, 68
	ld.bu	$a1, $s5, 4
	andi	$a2, $a2, 143
	srli.d	$a1, $a1, 4
	bstrins.d	$a2, $a1, 6, 4
	st.b	$a2, $s6, 68
	ld.bu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 3, 3
	bstrins.d	$a0, $a1, 3, 3
	st.b	$a0, $s6, 64
	ld.hu	$a1, $s5, 4
	ld.h	$a2, $s6, 68
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a2, $a1, 7, 7
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 8, 8
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	srli.d	$a1, $a1, 13
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $s6, 68
	ld.h	$a1, $s5, 6
	st.h	$a1, $s6, 70
	ld.wu	$a1, $s5, 12
	ld.w	$a2, $s6, 76
	andi	$a1, $a1, 4095
	bstrins.d	$a2, $a1, 11, 0
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 21, 12
	bstrins.d	$a2, $a1, 21, 12
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 23, 22
	bstrins.d	$a2, $a1, 23, 22
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 29, 24
	bstrins.d	$a2, $a1, 29, 24
	st.w	$a2, $s6, 76
	ld.w	$a1, $s5, 12
	srli.d	$a1, $a1, 31
	bstrins.d	$a2, $a1, 63, 31
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	lu12i.w	$a3, -262145
	ori	$a3, $a3, 4095
	lu32i.d	$a3, 0
	and	$a2, $a2, $a3
	srli.d	$a1, $a1, 30
	bstrins.d	$a2, $a1, 30, 30
	st.w	$a2, $s6, 76
	ld.bu	$a1, $s5, 0
	andi	$a1, $a1, 1
	bstrins.d	$a0, $a1, 0, 0
	st.b	$a0, $s6, 64
	ld.bu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 1, 1
	bstrins.d	$a0, $a1, 1, 1
	st.b	$a0, $s6, 64
	ld.bu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 2, 2
	bstrins.d	$a0, $a1, 2, 2
	st.b	$a0, $s6, 64
	ld.bu	$a1, $s5, 0
	andi	$a0, $a0, 143
	srli.d	$a1, $a1, 4
	bstrins.d	$a0, $a1, 6, 4
	st.b	$a0, $s6, 64
	ld.h	$a0, $s5, 8
	st.h	$a0, $s6, 72
	ld.h	$a1, $s5, 10
	ld.d	$a0, $s6, 8
	st.h	$a1, $s6, 74
	.p2align	4, , 16
.LBB1_47:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_47
	b	.LBB1_160
.LBB1_48:
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_49:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_49
# %bb.50:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	pcalau12i	$a1, %pc_hi20(nenclose)
	addi.d	$a1, $a1, %pc_lo12(nenclose)
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	pcalau12i	$a1, %pc_hi20(ntarget)
	addi.d	$a5, $a1, %pc_lo12(ntarget)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a2, $s6, 64
	addi.d	$a3, $sp, 828
	move	$a1, $s5
	pcaddu18i	$ra, %call36(GetGap)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s6, 64
	ld.h	$a1, $sp, 828
	lu12i.w	$a2, 14
	and	$a2, $a0, $a2
	lu12i.w	$a3, 2
	st.h	$a1, $s6, 70
	bne	$a2, $a3, .LBB1_52
# %bb.51:
	srli.d	$a0, $a0, 10
	ori	$a0, $a0, 4
	andi	$a0, $a0, 7
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB1_53
.LBB1_52:
	ld.bu	$a0, $s6, 32
	addi.d	$s0, $s0, 32
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 27
	ori	$a3, $zero, 2
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 159
	ld.hu	$a1, $s6, 64
	st.h	$a0, $s6, 70
	st.h	$zero, $s6, 66
	ori	$a0, $zero, 9
	bstrins.d	$a1, $a0, 63, 10
	st.h	$a1, $s6, 64
.LBB1_53:
	ld.d	$a0, $s6, 8
	b	.LBB1_97
.LBB1_54:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 11
	move	$a2, $s2
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$a1, $a1, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a1, $a1, %got_pc_lo12(zz_size)
	st.w	$a2, $a1, 0
	slli.d	$a3, $a2, 3
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a4, $a1, %got_pc_lo12(zz_free)
	ldx.d	$a1, $a4, $a3
	beqz	$a1, .LBB1_286
# %bb.55:
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a2, 0
	ld.d	$a2, $a1, 0
	stx.d	$a2, $a4, $a3
	b	.LBB1_287
.LBB1_56:
	ld.d	$a0, $s6, 8
	beq	$a0, $s6, .LBB1_58
# %bb.57:
	ld.d	$a1, $s6, 0
	bne	$a1, $a0, .LBB1_59
.LBB1_58:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a5, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_59:
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	bnez	$a0, .LBB1_707
# %bb.60:
	ld.d	$a0, $s6, 8
.LBB1_61:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_61
# %bb.62:
	ori	$fp, $zero, 2
	bne	$a1, $fp, .LBB1_418
# %bb.63:
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a4, $sp, 288
	move	$a0, $s6
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s1
	pcaddu18i	$ra, %call36(CrossExpand)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.bu	$a0, $a0, 32
	beq	$a0, $fp, .LBB1_65
# %bb.64:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a5, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_65:
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s3, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s3, 17
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s2, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s1, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$fp, $s1, $a1
	beqz	$fp, .LBB1_729
# %bb.66:
	alsl.d	$a0, $a0, $s1, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$fp, $a1, 0
	ld.d	$a1, $fp, 0
	st.d	$a1, $a0, 0
	b	.LBB1_730
.LBB1_67:
	ld.hu	$a1, $s5, 0
	bstrpick.d	$a2, $a1, 15, 7
	ld.bu	$a3, $s5, 4
	slli.d	$a2, $a2, 7
	st.h	$a2, $sp, 812
	ld.h	$a2, $s5, 2
	andi	$a3, $a3, 127
	ld.hu	$a4, $s5, 4
	st.b	$a3, $sp, 816
	ld.hu	$a3, $sp, 816
	st.h	$a2, $sp, 814
	srli.d	$a2, $a4, 7
	ld.h	$a4, $s5, 6
	bstrins.d	$a3, $a2, 63, 7
	ld.d	$a2, $s5, 8
	st.h	$a3, $sp, 816
	st.h	$a4, $sp, 818
	ori	$a3, $zero, 18
	st.d	$a2, $sp, 820
	bne	$a0, $a3, .LBB1_146
# %bb.68:
	ld.hu	$a0, $s6, 42
	lu12i.w	$a2, 15
	ori	$a2, $a2, 2047
	and	$a0, $a0, $a2
	srli.d	$a2, $a1, 1
	bstrins.d	$a0, $a2, 11, 11
	st.h	$a0, $s6, 42
	ori	$fp, $zero, 1
	ori	$a0, $zero, 253
	b	.LBB1_147
.LBB1_69:
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_70:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_70
# %bb.71:
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	pcalau12i	$a1, %pc_hi20(nenclose)
	addi.d	$fp, $a1, %pc_lo12(nenclose)
	st.d	$fp, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	pcalau12i	$a1, %pc_hi20(ntarget)
	addi.d	$a5, $a1, %pc_lo12(ntarget)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 8
	ld.d	$a1, $a1, 8
	move	$s0, $a0
	.p2align	4, , 16
.LBB1_72:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 16
	ld.bu	$a0, $a1, 32
	beqz	$a0, .LBB1_72
# %bb.73:
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	st.d	$fp, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(nbt)
	addi.d	$a3, $a0, %pc_lo12(nbt)
	pcalau12i	$a0, %pc_hi20(nft)
	addi.d	$a4, $a0, %pc_lo12(nft)
	pcalau12i	$a0, %pc_hi20(ntarget)
	addi.d	$a5, $a0, %pc_lo12(ntarget)
	move	$a0, $a1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s0, 32
	addi.d	$a1, $a1, -11
	ori	$fp, $zero, 1
	bltu	$fp, $a1, .LBB1_91
# %bb.74:
	move	$s2, $a0
	addi.d	$a0, $s0, 64
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$a1, $a1, %pc_lo12(.L.str.39)
	addi.d	$a2, $sp, 832
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_91
# %bb.75:
	ld.bu	$a0, $s2, 32
	addi.d	$a0, $a0, -11
	ori	$fp, $zero, 1
	bltu	$fp, $a0, .LBB1_91
# %bb.76:
	addi.d	$a0, $s2, 64
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$a1, $a1, %pc_lo12(.L.str.39)
	addi.d	$a2, $sp, 812
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_91
# %bb.77:
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $fp, 0
	ld.w	$a1, $sp, 812
	addi.d	$a0, $a0, -79
	sltui	$a0, $a0, 1
	ld.w	$a2, $sp, 832
	sub.d	$a3, $zero, $a1
	masknez	$a3, $a3, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a3
	add.w	$a2, $a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a1, $a0, %pc_lo12(.L.str.39)
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 11
	addi.d	$a1, $sp, 288
	move	$a2, $fp
	b	.LBB1_92
.LBB1_78:
	ld.wu	$a1, $s5, 12
	andi	$a1, $a1, 4095
	beqz	$a1, .LBB1_292
# %bb.79:
	ori	$a2, $zero, 69
	bne	$a0, $a2, .LBB1_296
# %bb.80:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(FontFamily)
	jirl	$ra, $ra, 0
	b	.LBB1_297
.LBB1_81:
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_82:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_82
# %bb.83:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	b	.LBB1_225
.LBB1_84:
	ld.hu	$a1, $s5, 0
	ld.h	$a0, $s6, 64
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a0, $a1, 7, 7
	st.h	$a0, $s6, 64
	ld.hu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 8, 8
	move	$a2, $a0
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $s6, 64
	ld.hu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $s6, 64
	ld.hu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $s6, 64
	ld.hu	$a1, $s5, 0
	srli.d	$a1, $a1, 13
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $s6, 64
	ld.h	$a1, $s5, 2
	st.h	$a1, $s6, 66
	ld.bu	$a1, $s5, 4
	ld.b	$a2, $s6, 68
	andi	$a1, $a1, 3
	bstrins.d	$a2, $a1, 1, 0
	st.b	$a2, $s6, 68
	ld.bu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 3, 2
	bstrins.d	$a2, $a1, 3, 2
	st.b	$a2, $s6, 68
	ld.bu	$a1, $s5, 4
	andi	$a2, $a2, 143
	srli.d	$a1, $a1, 4
	bstrins.d	$a2, $a1, 6, 4
	st.b	$a2, $s6, 68
	ld.bu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 3, 3
	bstrins.d	$a0, $a1, 3, 3
	st.b	$a0, $s6, 64
	ld.hu	$a1, $s5, 4
	ld.h	$a2, $s6, 68
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a2, $a1, 7, 7
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 8, 8
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	srli.d	$a1, $a1, 13
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $s6, 68
	ld.h	$a1, $s5, 6
	st.h	$a1, $s6, 70
	ld.wu	$a1, $s5, 12
	ld.w	$a2, $s6, 76
	andi	$a1, $a1, 4095
	bstrins.d	$a2, $a1, 11, 0
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 21, 12
	bstrins.d	$a2, $a1, 21, 12
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 23, 22
	bstrins.d	$a2, $a1, 23, 22
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 29, 24
	bstrins.d	$a2, $a1, 29, 24
	st.w	$a2, $s6, 76
	ld.w	$a1, $s5, 12
	srli.d	$a1, $a1, 31
	bstrins.d	$a2, $a1, 63, 31
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	lu12i.w	$a3, -262145
	ori	$a3, $a3, 4095
	lu32i.d	$a3, 0
	and	$a2, $a2, $a3
	srli.d	$a1, $a1, 30
	bstrins.d	$a2, $a1, 30, 30
	st.w	$a2, $s6, 76
	ld.bu	$a1, $s5, 0
	andi	$a1, $a1, 1
	bstrins.d	$a0, $a1, 0, 0
	st.b	$a0, $s6, 64
	ld.bu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 1, 1
	bstrins.d	$a0, $a1, 1, 1
	st.b	$a0, $s6, 64
	ld.bu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 2, 2
	bstrins.d	$a0, $a1, 2, 2
	st.b	$a0, $s6, 64
	ld.bu	$a1, $s5, 0
	andi	$a0, $a0, 143
	srli.d	$a1, $a1, 4
	bstrins.d	$a0, $a1, 6, 4
	st.b	$a0, $s6, 64
	ld.h	$a0, $s5, 8
	st.h	$a0, $s6, 72
	ld.h	$a1, $s5, 10
	ld.d	$a0, $s6, 8
	st.h	$a1, $s6, 74
	.p2align	4, , 16
.LBB1_85:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_85
# %bb.86:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	pcalau12i	$a1, %pc_hi20(nenclose)
	addi.d	$a1, $a1, %pc_lo12(nenclose)
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	pcalau12i	$a1, %pc_hi20(ntarget)
	addi.d	$a5, $a1, %pc_lo12(ntarget)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	addi.d	$a1, $a1, -11
	ori	$a2, $zero, 2
	bltu	$a1, $a2, .LBB1_161
# %bb.87:
	ld.bu	$a1, $s6, 32
	addi.d	$a4, $a0, 32
	addi.d	$a0, $a1, -94
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.45)
	addi.d	$a1, $a1, %pc_lo12(.L.str.45)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.44)
	addi.d	$a2, $a2, %pc_lo12(.L.str.44)
	maskeqz	$a0, $a2, $a0
	or	$a5, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a2, $a0, %pc_lo12(.L.str.43)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 37
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 11
	move	$a2, $s2
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 24
	move	$s0, $a0
	beq	$a1, $s6, .LBB1_440
# %bb.88:
	ld.d	$a0, $s6, 16
	st.d	$a0, $a1, 16
	st.d	$a1, $a0, 24
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
	beqz	$a1, .LBB1_441
# %bb.89:
	beqz	$s0, .LBB1_441
# %bb.90:
	ld.d	$a0, $a1, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $s0, 16
	st.d	$a0, $a2, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a0, $s0, 16
	st.d	$s0, $a0, 24
	b	.LBB1_441
.LBB1_91:
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	ori	$a0, $zero, 11
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
.LBB1_92:
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s7
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 24
	beq	$a1, $s6, .LBB1_251
# %bb.93:
	ld.d	$a2, $s6, 16
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(xx_tmp)
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a0, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a2, 0
	beqz	$a1, .LBB1_253
# %bb.94:
	bnez	$a0, .LBB1_250
	b	.LBB1_253
.LBB1_95:
	ld.bu	$a0, $s2, 0
	addi.d	$s0, $s0, 32
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 26
	ori	$a3, $zero, 2
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 812
	lu12i.w	$a1, 14
	ori	$a1, $a1, 1023
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 1024
	st.h	$a0, $sp, 812
	ori	$a1, $zero, 2880
	st.h	$a1, $sp, 814
.LBB1_96:
	lu12i.w	$a0, 2047
	ori	$a2, $a0, 4095
	ld.d	$a0, $s6, 8
	st.w	$a2, $s6, 64
	st.w	$a1, $s6, 68
	st.w	$a2, $s6, 72
.LBB1_97:
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a3, $a1, %got_pc_lo12(xx_link)
	ld.d	$a2, $a0, 24
	st.d	$a0, $a3, 0
	beq	$a2, $a0, .LBB1_99
# %bb.98:
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	ld.d	$a4, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a4, $a2, 16
	st.d	$a2, $a4, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB1_100
.LBB1_99:
	move	$a2, $zero
.LBB1_100:
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$a2, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	ld.d	$a4, $a0, 8
	st.d	$a0, $a2, 0
	beq	$a4, $a0, .LBB1_102
# %bb.101:
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	st.d	$a4, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a4, $a2, 0
	ld.d	$a0, $a5, 0
	ld.d	$a5, $a4, 0
	st.d	$a0, $a5, 8
	st.d	$a4, $a4, 0
	ld.d	$a0, $a3, 0
	st.d	$a4, $a4, 8
.LBB1_102:
	ld.bu	$a3, $a0, 32
	st.d	$a0, $a2, 0
	addi.d	$a4, $a3, -11
	sltui	$a4, $a4, 2
	addi.d	$a5, $a0, 33
	pcalau12i	$a6, %got_pc_hi20(zz_lengths)
	ld.d	$a6, $a6, %got_pc_lo12(zz_lengths)
	add.d	$a3, $a6, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a5, $a4
	or	$a3, $a4, $a3
	ld.bu	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	st.w	$a3, $a4, 0
	slli.d	$a3, $a3, 3
	pcalau12i	$a5, %got_pc_hi20(zz_free)
	ld.d	$a5, $a5, %got_pc_lo12(zz_free)
	ldx.d	$a3, $a5, $a3
	st.d	$a3, $a0, 0
	ld.w	$a3, $a4, 0
	ld.d	$a2, $a2, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a3, 3
	stx.d	$a2, $a5, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_104
# %bb.103:                              # %.sink.split
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB1_104:
	ld.bu	$a0, $s2, 0
	addi.d	$a1, $a0, -24
	bstrpick.d	$a2, $a1, 7, 1
	slli.d	$a1, $a1, 7
	or	$a1, $a1, $a2
	andi	$a2, $a1, 255
	ori	$a3, $zero, 9
	bgeu	$a2, $a3, .LBB1_107
# %bb.105:                              # %switch.hole_check
	ori	$a2, $zero, 451
	srl.d	$a1, $a2, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB1_107
# %bb.106:
	move	$a1, $zero
	b	.LBB1_108
.LBB1_107:
	addi.d	$a0, $a0, -28
	sltu	$a1, $zero, $a0
.LBB1_108:                              # %switch.lookup
	move	$a5, $s3
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_109:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a2, $a0, 32
	beqz	$a2, .LBB1_109
# %bb.110:
	slli.d	$fp, $a1, 3
	addi.d	$a2, $sp, 832
	or	$s0, $a2, $fp
	xori	$a1, $a1, 1
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s7, $a1
	st.d	$zero, $s0, 0
	addi.d	$a4, $sp, 288
	or	$s1, $a4, $a1
	st.d	$a3, $s1, 0
	ldx.d	$a3, $s4, $a1
	or	$s2, $a4, $fp
	st.d	$zero, $s2, 0
	or	$s3, $a2, $a1
	st.d	$a3, $s3, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	addi.d	$a3, $sp, 288
	addi.d	$a4, $sp, 832
	st.d	$zero, $sp, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s7, $fp
	ldx.d	$a1, $s4, $fp
	st.d	$a0, $s2, 0
	st.d	$a1, $s0, 0
	st.d	$zero, $s3, 0
	st.d	$zero, $s1, 0
	vld	$vr0, $sp, 832
	vld	$vr1, $sp, 288
	vshuf4i.d	$vr0, $vr0, 1
	vshuf4i.d	$vr1, $vr0, 1
	vseqi.d	$vr1, $vr1, 0
	vrepli.b	$vr2, -1
	vxor.v	$vr1, $vr1, $vr2
	vseqi.d	$vr0, $vr0, 0
	vxor.v	$vr0, $vr0, $vr2
	vpickev.w	$vr0, $vr0, $vr1
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a0, $vr0, 0
	beqz	$a0, .LBB1_707
# %bb.111:
	addi.d	$a1, $sp, 288
	addi.d	$a2, $sp, 832
	move	$a0, $s6
	b	.LBB1_439
.LBB1_112:
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s2, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $s2, 17
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s1, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $s1, 0
	slli.d	$a1, $a2, 3
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$fp, $a0, %got_pc_lo12(zz_free)
	ldx.d	$a0, $fp, $a1
	beqz	$a0, .LBB1_298
# %bb.113:
	move	$s7, $s3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	stx.d	$a2, $fp, $a1
	b	.LBB1_299
.LBB1_114:
	ld.wu	$a1, $s5, 12
	ld.w	$a0, $s6, 40
	andi	$a1, $a1, 4095
	bstrins.d	$a0, $a1, 11, 0
	st.w	$a0, $s6, 40
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 21, 12
	bstrins.d	$a0, $a1, 21, 12
	st.w	$a0, $s6, 40
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 22, 22
	bstrins.d	$a0, $a1, 22, 22
	st.w	$a0, $s6, 40
	ld.w	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 29, 24
	bstrins.d	$a0, $a1, 28, 23
	st.w	$a0, $s6, 40
	ld.bu	$a1, $s5, 4
	andi	$a1, $a1, 3
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	bstrins.d	$a0, $a1, 63, 31
	st.w	$a0, $s6, 40
	beqz	$s0, .LBB1_117
# %bb.115:
	ld.bu	$a1, $s5, 0
	andi	$a1, $a1, 8
	beqz	$a1, .LBB1_117
# %bb.116:
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(MapSmallCaps)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.w	$a0, $a0, 40
.LBB1_117:
	lu12i.w	$a1, -393217
	ori	$a1, $a1, 4095
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	lu12i.w	$a1, 131072
	or	$a0, $a0, $a1
	st.w	$a0, $s6, 40
	ld.d	$a0, $s7, 8
	bnez	$a0, .LBB1_438
	b	.LBB1_162
.LBB1_118:
	ld.d	$s0, $s6, 8
	.p2align	4, , 16
.LBB1_119:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_119
# %bb.120:
	ori	$a1, $zero, 17
	bne	$a0, $a1, .LBB1_384
# %bb.121:                              # %.preheader2474
	ld.d	$fp, $s0, 8
	beq	$fp, $s0, .LBB1_708
# %bb.122:
	ori	$s1, $zero, 1
	b	.LBB1_124
.LBB1_123:                              # %.loopexit2473
                                        #   in Loop: Header=BB1_124 Depth=1
	ld.d	$fp, $fp, 8
	beq	$fp, $s0, .LBB1_709
.LBB1_124:                              # %.preheader2472
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_125 Depth 2
	move	$a0, $fp
	.p2align	4, , 16
.LBB1_125:                              #   Parent Loop BB1_124 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_125
# %bb.126:                              #   in Loop: Header=BB1_124 Depth=1
	beq	$a1, $s1, .LBB1_123
# %bb.127:                              #   in Loop: Header=BB1_124 Depth=1
	ld.d	$s2, $s3, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s7
	move	$a4, $s4
	move	$a5, $s3
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	beq	$a1, $s2, .LBB1_123
	b	.LBB1_709
.LBB1_128:
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $s6
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s7
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s1
	move	$a7, $s0
	pcaddu18i	$ra, %call36(ManifestTg)
	jirl	$ra, $ra, 0
	b	.LBB1_727
.LBB1_129:
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $s6
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s7
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s1
	move	$a7, $s0
	pcaddu18i	$ra, %call36(ManifestCase)
	jirl	$ra, $ra, 0
	b	.LBB1_727
.LBB1_130:
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_131:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_131
# %bb.132:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	pcalau12i	$a1, %pc_hi20(nenclose)
	addi.d	$a1, $a1, %pc_lo12(nenclose)
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	pcalau12i	$a1, %pc_hi20(ntarget)
	addi.d	$a5, $a1, %pc_lo12(ntarget)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	ori	$a3, $zero, 1
	bltu	$a3, $a2, .LBB1_385
# %bb.133:
	ld.bu	$a1, $a0, 64
	bnez	$a1, .LBB1_391
# %bb.134:
	st.w	$zero, $s6, 72
	st.w	$zero, $s6, 64
	b	.LBB1_392
.LBB1_135:
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_136:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_136
# %bb.137:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	pcalau12i	$a1, %pc_hi20(nenclose)
	addi.d	$a1, $a1, %pc_lo12(nenclose)
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	pcalau12i	$a1, %pc_hi20(ntarget)
	addi.d	$a5, $a1, %pc_lo12(ntarget)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	.p2align	4, , 16
.LBB1_138:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_138
	b	.LBB1_6
.LBB1_139:
	ld.d	$a0, $s6, 8
	beq	$a0, $s6, .LBB1_141
# %bb.140:
	ld.d	$a0, $a0, 8
	beq	$a0, $s6, .LBB1_142
.LBB1_141:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a5, $a0, %pc_lo12(.L.str.32)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_142:
	ori	$a0, $zero, 17
	st.b	$a0, $s6, 32
	ld.hu	$a0, $s6, 42
	ld.b	$a1, $s5, 0
	lu12i.w	$a2, 15
	ori	$a2, $a2, 2047
	and	$a0, $a0, $a2
	bstrpick.d	$a1, $a1, 54, 2
	bstrins.d	$a0, $a1, 11, 11
	st.h	$a0, $s6, 42
	ld.bu	$a0, $s5, 0
	andi	$a0, $a0, 251
	st.b	$a0, $s5, 0
	ld.hu	$a1, $s5, 0
	ld.h	$a0, $s6, 64
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a0, $a1, 7, 7
	st.h	$a0, $s6, 64
	ld.hu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 8, 8
	move	$a2, $a0
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $s6, 64
	ld.hu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $s6, 64
	ld.hu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $s6, 64
	ld.hu	$a1, $s5, 0
	srli.d	$a1, $a1, 13
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $s6, 64
	ld.h	$a1, $s5, 2
	st.h	$a1, $s6, 66
	ld.bu	$a1, $s5, 4
	ld.b	$a2, $s6, 68
	andi	$a1, $a1, 3
	bstrins.d	$a2, $a1, 1, 0
	st.b	$a2, $s6, 68
	ld.bu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 3, 2
	bstrins.d	$a2, $a1, 3, 2
	st.b	$a2, $s6, 68
	ld.bu	$a1, $s5, 4
	andi	$a2, $a2, 143
	srli.d	$a1, $a1, 4
	bstrins.d	$a2, $a1, 6, 4
	st.b	$a2, $s6, 68
	ld.bu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 3, 3
	bstrins.d	$a0, $a1, 3, 3
	st.b	$a0, $s6, 64
	ld.hu	$a1, $s5, 4
	ld.h	$a2, $s6, 68
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a2, $a1, 7, 7
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 8, 8
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	srli.d	$a1, $a1, 13
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $s6, 68
	ld.h	$a1, $s5, 6
	st.h	$a1, $s6, 70
	ld.wu	$a1, $s5, 12
	ld.w	$a2, $s6, 76
	andi	$a1, $a1, 4095
	bstrins.d	$a2, $a1, 11, 0
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 21, 12
	bstrins.d	$a2, $a1, 21, 12
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 23, 22
	bstrins.d	$a2, $a1, 23, 22
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 29, 24
	bstrins.d	$a2, $a1, 29, 24
	st.w	$a2, $s6, 76
	ld.w	$a1, $s5, 12
	srli.d	$a1, $a1, 31
	bstrins.d	$a2, $a1, 63, 31
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	lu12i.w	$a3, -262145
	ori	$a3, $a3, 4095
	lu32i.d	$a3, 0
	and	$a2, $a2, $a3
	srli.d	$a1, $a1, 30
	bstrins.d	$a2, $a1, 30, 30
	st.w	$a2, $s6, 76
	ld.bu	$a1, $s5, 0
	andi	$a1, $a1, 1
	bstrins.d	$a0, $a1, 0, 0
	st.b	$a0, $s6, 64
	ld.bu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 1, 1
	bstrins.d	$a0, $a1, 1, 1
	st.b	$a0, $s6, 64
	ld.bu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 2, 2
	bstrins.d	$a0, $a1, 2, 2
	st.b	$a0, $s6, 64
	ld.bu	$a1, $s5, 0
	andi	$a0, $a0, 143
	srli.d	$a1, $a1, 4
	bstrins.d	$a0, $a1, 6, 4
	st.b	$a0, $s6, 64
	ld.h	$a0, $s5, 8
	st.h	$a0, $s6, 72
	ld.h	$a1, $s5, 10
	ld.d	$a0, $s6, 8
	st.h	$a1, $s6, 74
	.p2align	4, , 16
.LBB1_143:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_143
# %bb.144:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a5, $s3
	move	$a6, $s1
	move	$a7, $s0
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(SetUnderline)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 8
	bnez	$a0, .LBB1_438
	b	.LBB1_162
.LBB1_145:
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$fp, $sp, 0
	move	$a0, $s6
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s7
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s1
	move	$a7, $s0
	pcaddu18i	$ra, %call36(ManifestCl)
	jirl	$ra, $ra, 0
	b	.LBB1_727
.LBB1_146:
	ld.hu	$a0, $s6, 42
	move	$fp, $zero
	lu12i.w	$a2, 15
	ori	$a2, $a2, 2047
	and	$a0, $a0, $a2
	bstrins.d	$a0, $a1, 11, 11
	st.h	$a0, $s6, 42
	ori	$a0, $zero, 254
.LBB1_147:
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s1, $s6, 8
	ld.d	$s0, $s1, 8
	and	$a0, $a1, $a0
	st.b	$a0, $sp, 812
	beq	$s1, $s6, .LBB1_149
# %bb.148:
	bne	$s0, $s6, .LBB1_150
.LBB1_149:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a5, $a0, %pc_lo12(.L.str.56)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_150:                              # %.preheader3137
	st.d	$s0, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	xori	$s2, $fp, 1
	move	$s0, $s1
	.p2align	4, , 16
.LBB1_151:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_151
# %bb.152:                              # %.preheader2465.preheader
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_153:                              # %.preheader2465
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s8, $s8, 16
	ld.bu	$a0, $s8, 32
	beqz	$a0, .LBB1_153
# %bb.154:
	slli.d	$a0, $s2, 3
	ldx.d	$a1, $s7, $a0
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	ldx.d	$a2, $s4, $a0
	slli.d	$a3, $fp, 3
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	ldx.d	$a3, $s7, $a3
	addi.d	$s3, $sp, 288
	stx.d	$a1, $a0, $s3
	addi.d	$a1, $sp, 832
	stx.d	$a2, $a0, $a1
	beqz	$a3, .LBB1_291
# %bb.155:
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $a0, 139
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a1, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $a1, 0
	slli.d	$a1, $a0, 3
	pcalau12i	$a2, %got_pc_hi20(zz_free)
	ld.d	$a2, $a2, %got_pc_lo12(zz_free)
	ldx.d	$s4, $a2, $a1
	beqz	$s4, .LBB1_405
# %bb.156:
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s4, $a0, 0
	ld.d	$a0, $s4, 0
	stx.d	$a0, $a2, $a1
	b	.LBB1_406
.LBB1_157:
	ld.hu	$a1, $s5, 0
	ld.h	$a0, $s6, 64
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a0, $a1, 7, 7
	st.h	$a0, $s6, 64
	ld.hu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 8, 8
	move	$a2, $a0
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $s6, 64
	ld.hu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $s6, 64
	ld.hu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $s6, 64
	ld.hu	$a1, $s5, 0
	srli.d	$a1, $a1, 13
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $s6, 64
	ld.h	$a1, $s5, 2
	st.h	$a1, $s6, 66
	ld.bu	$a1, $s5, 4
	ld.b	$a2, $s6, 68
	andi	$a1, $a1, 3
	bstrins.d	$a2, $a1, 1, 0
	st.b	$a2, $s6, 68
	ld.bu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 3, 2
	bstrins.d	$a2, $a1, 3, 2
	st.b	$a2, $s6, 68
	ld.bu	$a1, $s5, 4
	andi	$a2, $a2, 143
	srli.d	$a1, $a1, 4
	bstrins.d	$a2, $a1, 6, 4
	st.b	$a2, $s6, 68
	ld.bu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 3, 3
	bstrins.d	$a0, $a1, 3, 3
	st.b	$a0, $s6, 64
	ld.hu	$a1, $s5, 4
	ld.h	$a2, $s6, 68
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a2, $a1, 7, 7
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 8, 8
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	srli.d	$a1, $a1, 13
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $s6, 68
	ld.h	$a1, $s5, 6
	st.h	$a1, $s6, 70
	ld.wu	$a1, $s5, 12
	ld.w	$a2, $s6, 76
	andi	$a1, $a1, 4095
	bstrins.d	$a2, $a1, 11, 0
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 21, 12
	bstrins.d	$a2, $a1, 21, 12
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 23, 22
	bstrins.d	$a2, $a1, 23, 22
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 29, 24
	bstrins.d	$a2, $a1, 29, 24
	st.w	$a2, $s6, 76
	ld.w	$a1, $s5, 12
	srli.d	$a1, $a1, 31
	bstrins.d	$a2, $a1, 63, 31
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	lu12i.w	$a3, -262145
	ori	$a3, $a3, 4095
	lu32i.d	$a3, 0
	and	$a2, $a2, $a3
	srli.d	$a1, $a1, 30
	bstrins.d	$a2, $a1, 30, 30
	st.w	$a2, $s6, 76
	ld.bu	$a1, $s5, 0
	srli.d	$a0, $a0, 1
	bstrins.d	$a1, $a0, 63, 1
	st.b	$a1, $s6, 64
	ld.bu	$a0, $s5, 0
	bstrpick.d	$a0, $a0, 1, 1
	bstrins.d	$a1, $a0, 1, 1
	st.b	$a1, $s6, 64
	ld.bu	$a0, $s5, 0
	bstrpick.d	$a0, $a0, 2, 2
	bstrins.d	$a1, $a0, 2, 2
	st.b	$a1, $s6, 64
	ld.bu	$a0, $s5, 0
	andi	$a1, $a1, 143
	srli.d	$a0, $a0, 4
	bstrins.d	$a1, $a0, 6, 4
	st.b	$a1, $s6, 64
	ld.h	$a0, $s5, 8
	st.h	$a0, $s6, 72
	ld.h	$a0, $s5, 10
	st.h	$a0, $s6, 74
	ld.d	$a0, $s7, 8
	bnez	$a0, .LBB1_438
	b	.LBB1_162
.LBB1_158:
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_159:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_159
.LBB1_160:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	pcalau12i	$a1, %pc_hi20(nenclose)
	addi.d	$a1, $a1, %pc_lo12(nenclose)
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	pcalau12i	$a1, %pc_hi20(ntarget)
	addi.d	$a5, $a1, %pc_lo12(ntarget)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
.LBB1_161:
	ld.d	$a0, $s7, 8
	bnez	$a0, .LBB1_438
.LBB1_162:
	ld.d	$a0, $s7, 0
	bnez	$a0, .LBB1_438
# %bb.163:
	ld.d	$a0, $s4, 8
	bnez	$a0, .LBB1_438
# %bb.164:
	ld.d	$a0, $s4, 0
	bnez	$a0, .LBB1_438
	b	.LBB1_707
.LBB1_165:
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_166:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_166
# %bb.167:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	pcalau12i	$a1, %pc_hi20(nenclose)
	addi.d	$a1, $a1, %pc_lo12(nenclose)
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	pcalau12i	$a1, %pc_hi20(ntarget)
	addi.d	$a5, $a1, %pc_lo12(ntarget)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a2, $sp, 812
	addi.d	$a3, $sp, 828
	move	$a1, $s5
	pcaddu18i	$ra, %call36(GetGap)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 828
	ori	$a1, $zero, 158
	bne	$a0, $a1, .LBB1_293
# %bb.168:
	ld.hu	$a0, $sp, 812
	bstrpick.d	$a0, $a0, 15, 10
	slli.d	$a0, $a0, 10
	lu12i.w	$a1, 3
	bne	$a0, $a1, .LBB1_293
# %bb.169:                              # %._crit_edge2628
	ld.h	$a1, $sp, 814
	b	.LBB1_294
.LBB1_170:
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_171:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_171
# %bb.172:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	pcalau12i	$a1, %pc_hi20(nenclose)
	addi.d	$a1, $a1, %pc_lo12(nenclose)
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	pcalau12i	$a1, %pc_hi20(ntarget)
	addi.d	$a5, $a1, %pc_lo12(ntarget)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	addi.d	$a1, $a1, -11
	ori	$a2, $zero, 2
	addi.d	$a4, $a0, 32
	bgeu	$a1, $a2, .LBB1_401
# %bb.173:
	ld.wu	$a2, $s5, 12
	ld.wu	$a3, $a0, 40
	andi	$a1, $a2, 4095
	srli.d	$a3, $a3, 12
	bstrins.d	$a2, $a3, 63, 12
	st.w	$a2, $a0, 40
	beqz	$a1, .LBB1_717
# %bb.174:
	move	$s0, $s2
	move	$fp, $a0
	addi.d	$s2, $a0, 64
	move	$a0, $a1
	st.d	$a4, $sp, 280                   # 8-byte Folded Spill
	move	$a1, $a4
	pcaddu18i	$ra, %call36(FontMapping)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(MapCharEncoding)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_767
# %bb.175:
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 12
	move	$a2, $s0
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.b	$s2, $a0, 64
	b	.LBB1_720
.LBB1_176:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a2, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a5, $a0, %pc_lo12(.L.str.22)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 29
	ori	$a3, $zero, 1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_707
.LBB1_177:
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_178:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_178
# %bb.179:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a5, $s3
	move	$a6, $s1
	move	$a7, $s0
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	.p2align	4, , 16
.LBB1_180:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_180
	b	.LBB1_6
.LBB1_181:
	ld.d	$a0, $s6, 8
	move	$s2, $a0
	.p2align	4, , 16
.LBB1_182:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s2, 16
	ld.bu	$a1, $s2, 32
	beqz	$a1, .LBB1_182
# %bb.183:
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s1, $a1, %got_pc_lo12(xx_link)
	ld.d	$a1, $a0, 24
	st.d	$a0, $s1, 0
	beq	$a1, $a0, .LBB1_185
# %bb.184:
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB1_185:
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$fp, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a1, $a0, 8
	st.d	$a0, $fp, 0
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	move	$s7, $s5
	beq	$a1, $a0, .LBB1_187
# %bb.186:
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a2, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s1, 0
	st.d	$a1, $a1, 8
.LBB1_187:
	ld.bu	$a1, $a0, 32
	addi.d	$a4, $s2, 32
	st.d	$a0, $fp, 0
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	pcalau12i	$a5, %got_pc_hi20(zz_lengths)
	ld.d	$s5, $a5, %got_pc_lo12(zz_lengths)
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$s4, $a2, %got_pc_lo12(zz_size)
	st.w	$a1, $s4, 0
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_free)
	ld.d	$s3, $a2, %got_pc_lo12(zz_free)
	ldx.d	$a1, $s3, $a1
	st.d	$a1, $a0, 0
	ld.w	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s3, $a0
	ld.d	$s0, $s6, 0
	.p2align	4, , 16
.LBB1_188:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_188
# %bb.189:
	ld.bu	$a0, $a4, 0
	addi.d	$a2, $a0, -6
	ori	$a1, $zero, 2
	bgeu	$a2, $a1, .LBB1_402
# %bb.190:
	ld.d	$a0, $s2, 8
.LBB1_191:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_191
# %bb.192:
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB1_588
# %bb.193:
	st.d	$s1, $sp, 280                   # 8-byte Folded Spill
	st.d	$a0, $sp, 832
	addi.d	$a4, $sp, 288
	move	$a0, $s2
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	move	$a1, $s1
	move	$a2, $s7
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(CrossExpand)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(AttachEnv)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(SetEnv)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s5, 17
	slli.d	$a1, $a2, 3
	ldx.d	$s2, $s3, $a1
	st.d	$a0, $sp, 288
	st.w	$a2, $s4, 0
	beqz	$s2, .LBB1_768
# %bb.194:
	st.d	$s2, $fp, 0
	ld.d	$a0, $s2, 0
	stx.d	$a0, $s3, $a1
	b	.LBB1_769
.LBB1_195:
	ld.bu	$a0, $s5, 15
	andi	$a0, $a0, 63
	beqz	$a0, .LBB1_442
# %bb.196:
	pcaddu18i	$ra, %call36(LanguageString)
	jirl	$ra, $ra, 0
	b	.LBB1_297
.LBB1_197:
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_198:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_198
# %bb.199:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	pcalau12i	$a1, %pc_hi20(nenclose)
	addi.d	$a1, $a1, %pc_lo12(nenclose)
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	pcalau12i	$a1, %pc_hi20(ntarget)
	addi.d	$a5, $a1, %pc_lo12(ntarget)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 8
	st.d	$a0, $sp, 832
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$s3, $a0, %got_pc_lo12(xx_link)
	ld.d	$a0, $a1, 24
	st.d	$a1, $s3, 0
	beq	$a0, $a1, .LBB1_201
# %bb.200:
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	ld.d	$a3, $a1, 16
	st.d	$a0, $a2, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB1_201:
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$fp, $a0, %got_pc_lo12(zz_hold)
	ld.d	$a0, $a1, 8
	st.d	$a1, $fp, 0
	beq	$a0, $a1, .LBB1_203
# %bb.202:
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a0, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a1, $a2, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $s3, 0
	st.d	$a0, $a0, 8
.LBB1_203:
	ld.bu	$a0, $a1, 32
	st.d	$a1, $fp, 0
	addi.d	$a2, $a0, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a1, 33
	pcalau12i	$a4, %got_pc_hi20(zz_lengths)
	ld.d	$s2, $a4, %got_pc_lo12(zz_lengths)
	add.d	$a0, $s2, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a3, $a2
	or	$a0, $a2, $a0
	ld.bu	$a0, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$s0, $a2, %got_pc_lo12(zz_size)
	st.w	$a0, $s0, 0
	slli.d	$a0, $a0, 3
	pcalau12i	$a2, %got_pc_hi20(zz_free)
	ld.d	$s1, $a2, %got_pc_lo12(zz_free)
	ldx.d	$a0, $s1, $a0
	st.d	$a0, $a1, 0
	ld.w	$a0, $s0, 0
	ld.d	$a1, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s1, $a0
	ld.d	$a0, $s6, 0
	.p2align	4, , 16
.LBB1_204:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_204
# %bb.205:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s7
	move	$a4, $s4
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a1, 24
	st.d	$a1, $s3, 0
	beq	$a2, $a1, .LBB1_207
# %bb.206:
	ld.d	$a3, $a1, 16
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB1_207:
	ld.d	$a2, $a1, 8
	st.d	$a1, $fp, 0
	beq	$a2, $a1, .LBB1_209
# %bb.208:
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	st.d	$a2, $a3, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $fp, 0
	ld.d	$a1, $a3, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $s3, 0
	st.d	$a2, $a2, 8
.LBB1_209:
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s2, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s1, $a3
	st.d	$a1, $fp, 0
	st.w	$a2, $s0, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s0, 0
	ld.d	$a2, $fp, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s1, $a1
	pcalau12i	$a1, %got_pc_hi20(xx_res)
	ld.d	$a2, $a1, %got_pc_lo12(xx_res)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(xx_hold)
	ld.d	$a1, $a1, %got_pc_lo12(xx_hold)
	ld.d	$a3, $s6, 24
	st.d	$s6, $a1, 0
	beq	$a3, $s6, .LBB1_449
# %bb.210:
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	ld.d	$a5, $s6, 16
	st.d	$a3, $a4, 0
	st.d	$a5, $a3, 16
	st.d	$a3, $a5, 24
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	pcalau12i	$a4, %got_pc_hi20(xx_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(xx_tmp)
	st.d	$a3, $a4, 0
	beqz	$a3, .LBB1_450
# %bb.211:
	beqz	$a0, .LBB1_450
# %bb.212:
	ld.d	$a4, $a3, 16
	pcalau12i	$a5, %got_pc_hi20(zz_tmp)
	ld.d	$a5, $a5, %got_pc_lo12(zz_tmp)
	ld.d	$a6, $a0, 16
	st.d	$a4, $a5, 0
	st.d	$a6, $a3, 16
	st.d	$a3, $a6, 24
	st.d	$a4, $a0, 16
	st.d	$a0, $a4, 24
	b	.LBB1_450
.LBB1_213:
	ori	$a0, $a1, 1
	b	.LBB1_221
.LBB1_214:
	ld.d	$a0, $s6, 8
	bne	$a0, $s6, .LBB1_216
# %bb.215:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a5, $a0, %pc_lo12(.L.str.38)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_216:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_216
# %bb.217:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s7
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 288
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 288
	pcaddu18i	$ra, %call36(Next)
	jirl	$ra, $ra, 0
	b	.LBB1_227
.LBB1_218:
	pcalau12i	$a0, %got_pc_hi20(BackEnd)
	ld.d	$a0, $a0, %got_pc_lo12(BackEnd)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 8
	ori	$a0, $zero, 11
	b	.LBB1_445
.LBB1_219:
	ori	$a0, $a1, 2
	b	.LBB1_221
.LBB1_220:
	ori	$a0, $a1, 4
.LBB1_221:
	st.b	$a0, $sp, 288
.LBB1_222:
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_223:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_223
# %bb.224:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	addi.d	$a2, $sp, 288
	st.d	$zero, $sp, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
.LBB1_225:
	move	$a3, $s7
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s1
	move	$a7, $s0
.LBB1_226:
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
.LBB1_227:
	ld.d	$a5, $s6, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	ld.d	$a1, $a5, 24
	st.d	$a5, $a2, 0
	beq	$a1, $a5, .LBB1_229
# %bb.228:
	ld.d	$a3, $a5, 16
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a5, $a5, 24
	st.d	$a5, $a5, 16
.LBB1_229:
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a3, $a5, 8
	st.d	$a5, $a1, 0
	beq	$a3, $a5, .LBB1_231
# %bb.230:
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	st.d	$a3, $a4, 0
	ld.d	$a5, $a5, 0
	st.d	$a5, $a3, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a4, 0
	ld.d	$a5, $a3, 0
	st.d	$a4, $a5, 8
	st.d	$a3, $a3, 0
	ld.d	$a5, $a2, 0
	st.d	$a3, $a3, 8
.LBB1_231:
	ld.bu	$a2, $a5, 32
	st.d	$a5, $a1, 0
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a6, $a5, 33
	pcalau12i	$a4, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a4, %got_pc_lo12(zz_lengths)
	add.d	$a2, $a4, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a6, $a3
	or	$a2, $a3, $a2
	ld.bu	$a3, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$a2, $a2, %got_pc_lo12(zz_size)
	st.w	$a3, $a2, 0
	slli.d	$a6, $a3, 3
	pcalau12i	$a3, %got_pc_hi20(zz_free)
	ld.d	$a3, $a3, %got_pc_lo12(zz_free)
	ldx.d	$a6, $a3, $a6
	st.d	$a6, $a5, 0
	ld.w	$a5, $a2, 0
	ld.d	$a6, $a1, 0
	slli.d	$a5, $a5, 3
	stx.d	$a6, $a3, $a5
	pcalau12i	$a5, %got_pc_hi20(xx_res)
	ld.d	$a6, $a5, %got_pc_lo12(xx_res)
	st.d	$a0, $a6, 0
	pcalau12i	$a5, %got_pc_hi20(xx_hold)
	ld.d	$a5, $a5, %got_pc_lo12(xx_hold)
	ld.d	$a7, $s6, 24
	st.d	$s6, $a5, 0
	beq	$a7, $s6, .LBB1_239
# %bb.232:
	pcalau12i	$t0, %got_pc_hi20(zz_res)
	ld.d	$t0, $t0, %got_pc_lo12(zz_res)
	ld.d	$t1, $s6, 16
	st.d	$a7, $t0, 0
	st.d	$t1, $a7, 16
	st.d	$a7, $t1, 24
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	pcalau12i	$t0, %got_pc_hi20(xx_tmp)
	ld.d	$t0, $t0, %got_pc_lo12(xx_tmp)
	st.d	$a7, $t0, 0
	beqz	$a7, .LBB1_235
# %bb.233:
	beqz	$a0, .LBB1_235
# %bb.234:
	ld.d	$t0, $a7, 16
	pcalau12i	$t1, %got_pc_hi20(zz_tmp)
	ld.d	$t1, $t1, %got_pc_lo12(zz_tmp)
	ld.d	$t2, $a0, 16
	st.d	$t0, $t1, 0
	st.d	$t2, $a7, 16
	st.d	$a7, $t2, 24
	st.d	$t0, $a0, 16
	st.d	$a0, $t0, 24
.LBB1_235:
	ld.d	$t0, $s6, 8
	st.d	$s6, $a1, 0
	beq	$t0, $s6, .LBB1_240
.LBB1_236:
	pcalau12i	$a7, %got_pc_hi20(zz_res)
	ld.d	$a7, $a7, %got_pc_lo12(zz_res)
	st.d	$t0, $a7, 0
	ld.d	$t1, $s6, 0
	st.d	$t1, $t0, 0
	ld.d	$t1, $a1, 0
	ld.d	$t0, $a7, 0
	ld.d	$t2, $t1, 0
	st.d	$t0, $t2, 8
	st.d	$t1, $t1, 0
	ld.d	$t0, $a7, 0
	ld.d	$a6, $a6, 0
	st.d	$t1, $t1, 8
	pcalau12i	$t1, %got_pc_hi20(xx_tmp)
	ld.d	$t1, $t1, %got_pc_lo12(xx_tmp)
	st.d	$t0, $t1, 0
	st.d	$a6, $a7, 0
	st.d	$t0, $a1, 0
	beqz	$t0, .LBB1_241
# %bb.237:
	beqz	$a6, .LBB1_241
# %bb.238:
	ld.d	$t1, $t0, 0
	pcalau12i	$t2, %got_pc_hi20(zz_tmp)
	ld.d	$t2, $t2, %got_pc_lo12(zz_tmp)
	st.d	$t1, $t2, 0
	ld.d	$a6, $a6, 0
	st.d	$a6, $t0, 0
	ld.d	$a6, $a7, 0
	ld.d	$t0, $a1, 0
	ld.d	$t1, $a6, 0
	ld.d	$t2, $t2, 0
	st.d	$t0, $t1, 8
	st.d	$t2, $a6, 0
	ld.d	$a6, $a7, 0
	st.d	$a6, $t2, 8
	b	.LBB1_241
.LBB1_239:                              # %.thread2990
	pcalau12i	$a7, %got_pc_hi20(xx_tmp)
	ld.d	$a7, $a7, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a7, 0
	ld.d	$t0, $s6, 8
	st.d	$s6, $a1, 0
	bne	$t0, $s6, .LBB1_236
.LBB1_240:                              # %.thread2992
	pcalau12i	$a6, %got_pc_hi20(xx_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a6, 0
	pcalau12i	$a6, %got_pc_hi20(zz_res)
	ld.d	$a6, $a6, %got_pc_lo12(zz_res)
	st.d	$a0, $a6, 0
.LBB1_241:
	ld.d	$a5, $a5, 0
	ld.bu	$a6, $a5, 32
	addi.d	$a7, $a6, -11
	sltui	$a7, $a7, 2
	addi.d	$t0, $a5, 33
	add.d	$a4, $a4, $a6
	masknez	$a4, $a4, $a7
	maskeqz	$a6, $t0, $a7
	or	$a4, $a6, $a4
	ld.bu	$a4, $a4, 0
	slli.d	$a6, $a4, 3
	ldx.d	$a6, $a3, $a6
	st.d	$a5, $a1, 0
	st.w	$a4, $a2, 0
	st.d	$a6, $a5, 0
	ld.w	$a2, $a2, 0
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a2, 3
	stx.d	$a1, $a3, $a2
	b	.LBB1_727
.LBB1_242:
	ld.d	$a0, $s6, 8
	move	$s0, $a0
	.p2align	4, , 16
.LBB1_243:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 16
	ld.bu	$a1, $s0, 32
	beqz	$a1, .LBB1_243
# %bb.244:
	ld.d	$s2, $a0, 8
	.p2align	4, , 16
.LBB1_245:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s2, 16
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB1_245
# %bb.246:
	ori	$a1, $zero, 82
	beq	$a0, $a1, .LBB1_248
# %bb.247:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a5, $a0, %pc_lo12(.L.str.5)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_248:                              # %.loopexit
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 0
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s5
	move	$a3, $s7
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s1
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 24
	beq	$a1, $s6, .LBB1_251
# %bb.249:
	ld.d	$a2, $s6, 16
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(xx_tmp)
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a0, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a2, 0
	beqz	$a0, .LBB1_253
.LBB1_250:
	ld.d	$a2, $a1, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	ld.d	$a4, $a0, 16
	st.d	$a2, $a3, 0
	st.d	$a4, $a1, 16
	st.d	$a1, $a4, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	b	.LBB1_253
.LBB1_251:                              # %.thread
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
.LBB1_252:
	st.d	$zero, $a1, 0
.LBB1_253:
	move	$fp, $a0
	move	$a0, $s6
.LBB1_254:
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB1_727
.LBB1_255:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$s0, $a1, 0
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a2, $a0, %pc_lo12(.L.str.46)
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a5, $a0, %pc_lo12(.L.str.47)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	move	$a3, $zero
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_707
.LBB1_256:
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(ColourChange)
	jirl	$ra, $ra, 0
	b	.LBB1_262
.LBB1_257:
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(SpaceChange)
	jirl	$ra, $ra, 0
	b	.LBB1_262
.LBB1_258:
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(LanguageChange)
	jirl	$ra, $ra, 0
	b	.LBB1_262
.LBB1_259:
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(YUnitChange)
	jirl	$ra, $ra, 0
	b	.LBB1_262
.LBB1_260:
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(ZUnitChange)
	jirl	$ra, $ra, 0
	b	.LBB1_262
.LBB1_261:
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(BreakChange)
	jirl	$ra, $ra, 0
.LBB1_262:
	move	$s8, $s7
	ld.d	$a0, $s6, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s4, $a1, %got_pc_lo12(xx_link)
	ld.d	$a1, $a0, 24
	st.d	$a0, $s4, 0
	move	$s7, $s3
	beq	$a1, $a0, .LBB1_264
# %bb.263:
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB1_265
.LBB1_264:
	move	$a1, $zero
.LBB1_265:
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$s3, $a2, %got_pc_lo12(xx_tmp)
	st.d	$a1, $s3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$fp, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a1, $a0, 8
	st.d	$a0, $fp, 0
	beq	$a1, $a0, .LBB1_267
# %bb.266:
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a2, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s4, 0
	st.d	$a1, $a1, 8
.LBB1_267:
	ld.bu	$a1, $a0, 32
	st.d	$a0, $fp, 0
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	pcalau12i	$a4, %got_pc_hi20(zz_lengths)
	ld.d	$s2, $a4, %got_pc_lo12(zz_lengths)
	add.d	$a1, $s2, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$s0, $a2, %got_pc_lo12(zz_size)
	st.w	$a1, $s0, 0
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_free)
	ld.d	$s1, $a2, %got_pc_lo12(zz_free)
	ldx.d	$a1, $s1, $a1
	st.d	$a1, $a0, 0
	ld.w	$a1, $s0, 0
	ld.d	$a2, $fp, 0
	ld.d	$a0, $s3, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s1, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_269
# %bb.268:
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB1_269:
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_270:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_270
# %bb.271:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	addi.d	$a2, $sp, 288
	st.d	$zero, $sp, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a3, $s8
	move	$a4, $s5
	move	$a5, $s7
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 8
	ld.d	$a2, $a1, 24
	st.d	$a1, $s4, 0
	beq	$a2, $a1, .LBB1_273
# %bb.272:
	ld.d	$a3, $a1, 16
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB1_273:
	ld.d	$a2, $a1, 8
	st.d	$a1, $fp, 0
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	beq	$a2, $a1, .LBB1_275
# %bb.274:
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	st.d	$a2, $a3, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $fp, 0
	ld.d	$a1, $a3, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $s4, 0
	st.d	$a2, $a2, 8
.LBB1_275:
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s2, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s1, $a3
	st.d	$a1, $fp, 0
	st.w	$a2, $s0, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s0, 0
	ld.d	$a2, $fp, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s1, $a1
	pcalau12i	$a1, %got_pc_hi20(xx_res)
	ld.d	$a2, $a1, %got_pc_lo12(xx_res)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(xx_hold)
	ld.d	$a1, $a1, %got_pc_lo12(xx_hold)
	ld.d	$a3, $s6, 24
	st.d	$s6, $a1, 0
	beq	$a3, $s6, .LBB1_279
# %bb.276:
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	ld.d	$a5, $s6, 16
	st.d	$a3, $a4, 0
	st.d	$a5, $a3, 16
	st.d	$a3, $a5, 24
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	st.d	$a3, $s3, 0
	beqz	$a3, .LBB1_280
# %bb.277:
	beqz	$a0, .LBB1_280
# %bb.278:
	ld.d	$a4, $a3, 16
	pcalau12i	$a5, %got_pc_hi20(zz_tmp)
	ld.d	$a5, $a5, %got_pc_lo12(zz_tmp)
	ld.d	$a6, $a0, 16
	st.d	$a4, $a5, 0
	st.d	$a6, $a3, 16
	st.d	$a3, $a6, 24
	st.d	$a4, $a0, 16
	st.d	$a0, $a4, 24
	b	.LBB1_280
.LBB1_279:                              # %.thread3004
	st.d	$zero, $s3, 0
.LBB1_280:
	ld.d	$a4, $s6, 8
	st.d	$s6, $fp, 0
	beq	$a4, $s6, .LBB1_284
# %bb.281:
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	st.d	$a4, $a3, 0
	ld.d	$a5, $s6, 0
	st.d	$a5, $a4, 0
	ld.d	$a5, $fp, 0
	ld.d	$a4, $a3, 0
	ld.d	$a6, $a5, 0
	st.d	$a4, $a6, 8
	st.d	$a5, $a5, 0
	ld.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a5, $a5, 8
	st.d	$a4, $s3, 0
	st.d	$a2, $a3, 0
	st.d	$a4, $fp, 0
	beqz	$a4, .LBB1_285
# %bb.282:
	beqz	$a2, .LBB1_285
# %bb.283:
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a4, 0
	ld.d	$a2, $a3, 0
	ld.d	$a4, $fp, 0
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a2, 0
	ld.d	$a2, $a3, 0
	st.d	$a2, $a6, 8
	b	.LBB1_285
.LBB1_284:                              # %.thread3006
	st.d	$zero, $s3, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a0, $a2, 0
.LBB1_285:
	ld.d	$a1, $a1, 0
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s2, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s1, $a3
	st.d	$a1, $fp, 0
	st.w	$a2, $s0, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s0, 0
	ld.d	$a2, $fp, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s1, $a1
	b	.LBB1_727
.LBB1_286:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	ld.d	$s0, $sp, 240                   # 8-byte Folded Reload
.LBB1_287:
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(xx_link)
	ld.d	$a3, $a2, %got_pc_lo12(xx_link)
	st.d	$a1, $a3, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a4, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $a4, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a5, $a2, %got_pc_lo12(zz_hold)
	st.d	$s6, $a5, 0
	ld.d	$a6, $s6, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a6, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s6, 0
	ld.d	$a1, $a4, 0
	ld.d	$a6, $a5, 0
	ld.d	$a7, $a1, 0
	ld.d	$t0, $a2, 0
	st.d	$a6, $a7, 8
	st.d	$t0, $a1, 0
	ld.d	$a6, $a4, 0
	ld.d	$a1, $a3, 0
	st.d	$a6, $t0, 8
	st.d	$a1, $a4, 0
	st.d	$a0, $a5, 0
	beqz	$a0, .LBB1_290
# %bb.288:
	beqz	$a1, .LBB1_290
# %bb.289:
	ld.d	$a3, $a0, 16
	ld.d	$a4, $a1, 16
	st.d	$a3, $a2, 0
	st.d	$a4, $a0, 16
	st.d	$a0, $a4, 24
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
.LBB1_290:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	st.d	$fp, $sp, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s7
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s1
	move	$a7, $s0
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	b	.LBB1_707
.LBB1_291:
	move	$s4, $zero
	b	.LBB1_407
.LBB1_292:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a2, $a0, %pc_lo12(.L.str.29)
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$s0, $a0, %pc_lo12(.L.str.28)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 38
	b	.LBB1_443
.LBB1_293:
	ld.bu	$a0, $s2, 0
	addi.d	$s0, $s0, 32
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a2, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 28
	ori	$a3, $zero, 2
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 812
	move	$a1, $zero
	lu12i.w	$a2, 14
	ori	$a2, $a2, 1023
	and	$a0, $a0, $a2
	lu12i.w	$a2, 1
	or	$a0, $a0, $a2
	st.h	$a0, $sp, 812
	st.h	$zero, $sp, 814
.LBB1_294:
	ld.d	$a0, $s6, 8
	st.w	$a1, $s6, 76
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a3, $a1, %got_pc_lo12(xx_link)
	ld.d	$a2, $a0, 24
	st.d	$a0, $a3, 0
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	beq	$a2, $a0, .LBB1_430
# %bb.295:
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	ld.d	$a4, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a4, $a2, 16
	st.d	$a2, $a4, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB1_431
.LBB1_296:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(FontFace)
	jirl	$ra, $ra, 0
.LBB1_297:
	move	$s0, $a0
	b	.LBB1_444
.LBB1_298:
	move	$s7, $s3
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB1_299:
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.hu	$a1, $a0, 42
	ld.b	$a2, $s5, 0
	lu12i.w	$a3, 15
	ori	$a3, $a3, 2047
	and	$a1, $a1, $a3
	bstrpick.d	$a2, $a2, 54, 2
	bstrins.d	$a1, $a2, 11, 11
	st.h	$a1, $a0, 42
	ld.bu	$a1, $s5, 0
	andi	$a1, $a1, 251
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.b	$a1, $s5, 0
	ld.d	$a1, $s6, 8
	pcalau12i	$a2, %got_pc_hi20(xx_link)
	ld.d	$s3, $a2, %got_pc_lo12(xx_link)
	ld.d	$a2, $a1, 24
	st.d	$a1, $s3, 0
	beq	$a2, $a1, .LBB1_301
# %bb.300:
	ld.d	$a3, $a1, 16
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB1_301:
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$s4, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $s4, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$s6, $a2, %got_pc_lo12(zz_hold)
	ld.d	$a4, $a0, 16
	st.d	$a0, $s6, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s5, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a1, 16
	st.d	$a3, $a0, 16
	ld.bu	$a2, $s2, 0
	st.d	$a0, $a3, 24
	st.d	$a4, $a1, 16
	st.d	$a1, $a4, 24
	slli.d	$a3, $a2, 3
	ldx.d	$a1, $fp, $a3
	st.d	$a4, $s5, 0
	st.w	$a2, $s1, 0
	beqz	$a1, .LBB1_303
# %bb.302:
	st.d	$a1, $s6, 0
	ld.d	$a2, $a1, 0
	stx.d	$a2, $fp, $a3
	b	.LBB1_304
.LBB1_303:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
.LBB1_304:
	ld.d	$s1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	st.d	$a1, $s3, 0
	st.d	$a1, $s4, 0
	st.d	$a0, $s6, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $s5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s4, 0
	ld.d	$a2, $s6, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s5, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a2, $s4, 0
	ld.d	$a1, $s3, 0
	st.d	$a2, $a4, 8
	st.d	$a1, $s4, 0
	st.d	$s0, $s6, 0
	beqz	$a1, .LBB1_306
# %bb.305:
	ld.d	$a2, $s0, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s5, 0
	st.d	$a3, $s0, 16
	st.d	$s0, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB1_306:
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	move	$s3, $s7
.LBB1_307:                              # %.loopexit2471
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	move	$a5, $s3
	move	$a6, $s1
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ld.d	$fp, $a0, 8
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	beq	$fp, $a0, .LBB1_326
# %bb.308:                              # %.preheader2470.preheader
	move	$s3, $a0
	ori	$a5, $zero, 17
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$a6, $a0, %got_pc_lo12(xx_link)
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a7, $a0, %got_pc_lo12(xx_tmp)
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$s4, $a0, %got_pc_lo12(zz_hold)
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s6, $a0, %got_pc_lo12(zz_size)
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$s7, $a0, %got_pc_lo12(zz_free)
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$s8, $a0, %got_pc_lo12(zz_res)
	move	$s1, $s3
	st.d	$a6, $sp, 224                   # 8-byte Folded Spill
	st.d	$a7, $sp, 216                   # 8-byte Folded Spill
	b	.LBB1_311
	.p2align	4, , 16
.LBB1_309:                              #   in Loop: Header=BB1_311 Depth=1
	st.d	$s0, $sp, 832
	move	$s1, $fp
.LBB1_310:                              #   in Loop: Header=BB1_311 Depth=1
	ld.d	$fp, $s1, 8
	beq	$fp, $s3, .LBB1_326
.LBB1_311:                              # %.preheader2470
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_312 Depth 2
	move	$s0, $fp
	.p2align	4, , 16
.LBB1_312:                              #   Parent Loop BB1_311 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_312
# %bb.313:                              #   in Loop: Header=BB1_311 Depth=1
	bne	$a0, $a5, .LBB1_309
# %bb.314:                              #   in Loop: Header=BB1_311 Depth=1
	move	$s3, $s2
	move	$s2, $s5
	ld.d	$s5, $s0, 8
	st.d	$s0, $sp, 832
	beq	$s5, $s0, .LBB1_319
# %bb.315:                              #   in Loop: Header=BB1_311 Depth=1
	ld.bu	$a0, $s5, 32
	beqz	$a0, .LBB1_317
# %bb.316:                              #   in Loop: Header=BB1_311 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	ori	$a5, $zero, 17
.LBB1_317:                              #   in Loop: Header=BB1_311 Depth=1
	st.d	$s5, $s8, 0
	st.d	$s0, $s4, 0
	ld.d	$a1, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(zz_tmp)
	st.d	$a1, $a0, 0
	ld.d	$a1, $s5, 0
	st.d	$a1, $s0, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $s4, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a0, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a1, $s8, 0
	st.d	$a1, $a4, 8
	st.d	$s5, $s8, 0
	st.d	$fp, $s4, 0
	beqz	$fp, .LBB1_319
# %bb.318:                              #   in Loop: Header=BB1_311 Depth=1
	ld.d	$a1, $fp, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s5, 0
	st.d	$a1, $fp, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $s4, 0
	ld.d	$a3, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a2, $a3, 8
	st.d	$a0, $a1, 0
	ld.d	$a1, $s8, 0
	st.d	$a1, $a0, 8
.LBB1_319:                              #   in Loop: Header=BB1_311 Depth=1
	ld.d	$a0, $s0, 24
	ld.d	$a1, $a0, 24
	st.d	$a0, $a6, 0
	beq	$a1, $a0, .LBB1_321
# %bb.320:                              #   in Loop: Header=BB1_311 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s8, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB1_322
.LBB1_321:                              #   in Loop: Header=BB1_311 Depth=1
	move	$a1, $zero
.LBB1_322:                              #   in Loop: Header=BB1_311 Depth=1
	move	$s5, $s2
	ld.d	$a2, $a0, 8
	st.d	$a1, $a7, 0
	st.d	$a0, $s4, 0
	move	$s2, $s3
	beq	$a2, $a0, .LBB1_324
# %bb.323:                              #   in Loop: Header=BB1_311 Depth=1
	st.d	$a2, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $s4, 0
	ld.d	$a0, $s8, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a6, 0
	st.d	$a1, $a1, 8
.LBB1_324:                              #   in Loop: Header=BB1_311 Depth=1
	ld.d	$s3, $sp, 280                   # 8-byte Folded Reload
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s7, $a2
	st.d	$a0, $s4, 0
	st.w	$a1, $s6, 0
	st.d	$a2, $a0, 0
	ld.w	$a1, $s6, 0
	ld.d	$a2, $s4, 0
	ld.d	$a0, $a7, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s7, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_310
# %bb.325:                              #   in Loop: Header=BB1_311 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	ori	$a5, $zero, 17
	b	.LBB1_310
.LBB1_326:                              # %._crit_edge2516
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $s3, 8
	ld.d	$s0, $a0, 8
	.p2align	4, , 16
.LBB1_327:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_327
# %bb.328:
	ori	$a1, $zero, 17
	bne	$a0, $a1, .LBB1_330
# %bb.329:                              # %.loopexit2469.loopexit
	move	$a0, $s0
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	b	.LBB1_341
.LBB1_330:
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s2, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $s2, 17
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s1, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $s1, 0
	slli.d	$a1, $a2, 3
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$fp, $a0, %got_pc_lo12(zz_free)
	ldx.d	$a0, $fp, $a1
	beqz	$a0, .LBB1_332
# %bb.331:
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	stx.d	$a2, $fp, $a1
	b	.LBB1_333
.LBB1_332:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB1_333:
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.hu	$a1, $a0, 42
	ld.b	$a2, $s5, 0
	lu12i.w	$a3, 15
	ori	$a3, $a3, 2047
	and	$a1, $a1, $a3
	bstrpick.d	$a2, $a2, 54, 2
	bstrins.d	$a1, $a2, 11, 11
	st.h	$a1, $a0, 42
	ld.bu	$a1, $s5, 0
	andi	$a1, $a1, 251
	move	$s7, $s5
	st.b	$a1, $s5, 0
	ld.d	$a1, $s3, 8
	ld.d	$a1, $a1, 8
	pcalau12i	$a2, %got_pc_hi20(xx_link)
	ld.d	$s3, $a2, %got_pc_lo12(xx_link)
	ld.d	$a2, $a1, 24
	st.d	$a1, $s3, 0
	beq	$a2, $a1, .LBB1_335
# %bb.334:
	ld.d	$a3, $a1, 16
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB1_335:
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$s4, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $s4, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$s6, $a2, %got_pc_lo12(zz_hold)
	ld.d	$a4, $a0, 16
	st.d	$a0, $s6, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s5, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a1, 16
	st.d	$a3, $a0, 16
	ld.bu	$a2, $s2, 0
	st.d	$a0, $a3, 24
	st.d	$a4, $a1, 16
	st.d	$a1, $a4, 24
	slli.d	$a3, $a2, 3
	ldx.d	$a1, $fp, $a3
	st.d	$a4, $s5, 0
	st.w	$a2, $s1, 0
	beqz	$a1, .LBB1_337
# %bb.336:
	st.d	$a1, $s6, 0
	ld.d	$a2, $a1, 0
	stx.d	$a2, $fp, $a3
	b	.LBB1_338
.LBB1_337:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
.LBB1_338:
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	st.d	$a1, $s3, 0
	st.d	$a1, $s4, 0
	st.d	$a0, $s6, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $s5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s4, 0
	ld.d	$a2, $s6, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s5, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a2, $s4, 0
	ld.d	$a1, $s3, 0
	st.d	$a2, $a4, 8
	st.d	$a1, $s4, 0
	st.d	$s0, $s6, 0
	beqz	$a1, .LBB1_340
# %bb.339:
	ld.d	$a2, $s0, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s5, 0
	st.d	$a3, $s0, 16
	st.d	$s0, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB1_340:
	move	$s5, $s7
.LBB1_341:                              # %.loopexit2469
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ld.d	$s0, $a0, 8
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	beq	$s0, $a0, .LBB1_359
# %bb.342:                              # %.preheader2468.preheader
	ori	$a6, $zero, 17
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$s3, $a1, %got_pc_lo12(xx_tmp)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s4, $a1, %got_pc_lo12(zz_hold)
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$a1, $a1, %got_pc_lo12(zz_lengths)
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s6, $a1, %got_pc_lo12(zz_size)
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s7, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s8, $a1, %got_pc_lo12(zz_res)
	move	$s1, $a0
	b	.LBB1_345
	.p2align	4, , 16
.LBB1_343:                              #   in Loop: Header=BB1_345 Depth=1
	st.d	$fp, $sp, 832
	move	$s1, $s0
.LBB1_344:                              #   in Loop: Header=BB1_345 Depth=1
	ld.d	$s0, $s1, 8
	beq	$s0, $a0, .LBB1_359
.LBB1_345:                              # %.preheader2468
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_346 Depth 2
	move	$fp, $s0
	.p2align	4, , 16
.LBB1_346:                              #   Parent Loop BB1_345 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $fp, 16
	ld.bu	$a1, $fp, 32
	beqz	$a1, .LBB1_346
# %bb.347:                              #   in Loop: Header=BB1_345 Depth=1
	bne	$a1, $a6, .LBB1_343
# %bb.348:                              #   in Loop: Header=BB1_345 Depth=1
	ld.d	$s5, $fp, 8
	st.d	$fp, $sp, 832
	beq	$s5, $fp, .LBB1_353
# %bb.349:                              #   in Loop: Header=BB1_345 Depth=1
	ld.bu	$a1, $s5, 32
	beqz	$a1, .LBB1_351
# %bb.350:                              #   in Loop: Header=BB1_345 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 17
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
.LBB1_351:                              #   in Loop: Header=BB1_345 Depth=1
	st.d	$s5, $s8, 0
	st.d	$fp, $s4, 0
	ld.d	$a2, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a2, $a1, 0
	ld.d	$a2, $s5, 0
	st.d	$a2, $fp, 0
	ld.d	$a2, $s8, 0
	ld.d	$a3, $s4, 0
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a1, 0
	st.d	$a3, $a4, 8
	st.d	$a5, $a2, 0
	ld.d	$a2, $s8, 0
	st.d	$a2, $a5, 8
	st.d	$s5, $s8, 0
	st.d	$s0, $s4, 0
	beqz	$s0, .LBB1_353
# %bb.352:                              #   in Loop: Header=BB1_345 Depth=1
	ld.d	$a2, $s0, 0
	st.d	$a2, $a1, 0
	ld.d	$a2, $s5, 0
	st.d	$a2, $s0, 0
	ld.d	$a2, $s8, 0
	ld.d	$a3, $s4, 0
	ld.d	$a4, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a3, $a4, 8
	st.d	$a1, $a2, 0
	ld.d	$a2, $s8, 0
	st.d	$a2, $a1, 8
.LBB1_353:                              #   in Loop: Header=BB1_345 Depth=1
	ld.d	$a1, $fp, 24
	ld.d	$a2, $a1, 24
	st.d	$a1, $s2, 0
	beq	$a2, $a1, .LBB1_358
# %bb.354:                              #   in Loop: Header=BB1_345 Depth=1
	ld.d	$a3, $a1, 16
	st.d	$a2, $s8, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	ld.d	$a3, $a1, 8
	st.d	$a2, $s3, 0
	st.d	$a1, $s4, 0
	beq	$a3, $a1, .LBB1_356
.LBB1_355:                              #   in Loop: Header=BB1_345 Depth=1
	st.d	$a3, $s8, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a3, 0
	ld.d	$a2, $s4, 0
	ld.d	$a1, $s8, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $s2, 0
	st.d	$a2, $a2, 8
.LBB1_356:                              #   in Loop: Header=BB1_345 Depth=1
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	add.d	$a2, $a5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s7, $a3
	st.d	$a1, $s4, 0
	st.w	$a2, $s6, 0
	st.d	$a3, $a1, 0
	ld.w	$a2, $s6, 0
	ld.d	$a3, $s4, 0
	ld.d	$a1, $s3, 0
	slli.d	$a2, $a2, 3
	stx.d	$a3, $s7, $a2
	ld.d	$a2, $a1, 24
	bne	$a2, $a1, .LBB1_344
# %bb.357:                              #   in Loop: Header=BB1_345 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 17
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	b	.LBB1_344
.LBB1_358:                              #   in Loop: Header=BB1_345 Depth=1
	move	$a2, $zero
	ld.d	$a3, $a1, 8
	st.d	$a2, $s3, 0
	st.d	$a1, $s4, 0
	bne	$a3, $a1, .LBB1_355
	b	.LBB1_356
.LBB1_359:                              # %._crit_edge2520
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$s2, $a1, 0
	ori	$a1, $zero, 75
	bne	$s2, $a1, .LBB1_361
# %bb.360:
	move	$a1, $a0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Meld)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	b	.LBB1_757
.LBB1_361:
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $a1, 8
	ld.d	$s1, $a0, 8
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	beq	$fp, $a1, .LBB1_373
# %bb.362:
	beq	$s1, $a0, .LBB1_373
# %bb.363:                              # %.preheader2467.preheader
	ori	$s3, $zero, 1
	move	$s0, $s1
.LBB1_364:                              # %.preheader2467
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_365 Depth 2
                                        #     Child Loop BB1_367 Depth 2
	move	$a1, $fp
	.p2align	4, , 16
.LBB1_365:                              #   Parent Loop BB1_364 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB1_365
# %bb.366:                              # %.preheader2466.preheader
                                        #   in Loop: Header=BB1_364 Depth=1
	move	$a3, $s0
	.p2align	4, , 16
.LBB1_367:                              # %.preheader2466
                                        #   Parent Loop BB1_364 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a3, 16
	ld.bu	$a4, $a3, 32
	beqz	$a4, .LBB1_367
# %bb.368:                              #   in Loop: Header=BB1_364 Depth=1
	addi.d	$a5, $a2, -11
	addi.d	$a6, $a4, -11
	or	$a5, $a6, $a5
	andi	$a5, $a5, 255
	bltu	$s3, $a5, .LBB1_370
# %bb.369:                              #   in Loop: Header=BB1_364 Depth=1
	addi.d	$a0, $a1, 64
	addi.d	$a1, $a3, 64
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	beqz	$a1, .LBB1_371
	b	.LBB1_374
.LBB1_370:                              #   in Loop: Header=BB1_364 Depth=1
	bne	$a2, $a4, .LBB1_374
.LBB1_371:                              #   in Loop: Header=BB1_364 Depth=1
	ld.d	$fp, $fp, 8
	ld.d	$s0, $s0, 8
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	beq	$fp, $a1, .LBB1_374
# %bb.372:                              #   in Loop: Header=BB1_364 Depth=1
	bne	$s0, $a0, .LBB1_364
	b	.LBB1_374
.LBB1_373:
	move	$s0, $s1
.LBB1_374:                              # %._crit_edge2526
	ori	$a1, $zero, 74
	beq	$s2, $a1, .LBB1_394
# %bb.375:                              # %._crit_edge2526
	ori	$a1, $zero, 73
	ld.d	$s3, $sp, 280                   # 8-byte Folded Reload
	bne	$s2, $a1, .LBB1_757
# %bb.376:
	beq	$s0, $a0, .LBB1_757
# %bb.377:
	beq	$fp, $s3, .LBB1_748
# %bb.378:
	beq	$s0, $s1, .LBB1_587
# %bb.379:
	ld.d	$fp, $s0, 0
	beq	$fp, $a0, .LBB1_757
# %bb.380:
	ld.bu	$a1, $fp, 32
	beqz	$a1, .LBB1_382
# %bb.381:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
.LBB1_382:
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$fp, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a4, $a0, 0
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a4, $a3, 0
	ld.d	$a4, $fp, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a4, 0
	ld.d	$a7, $a3, 0
	st.d	$a5, $a6, 8
	st.d	$a7, $a4, 0
	ld.d	$a4, $a1, 0
	st.d	$a4, $a7, 8
	st.d	$fp, $a1, 0
	st.d	$s3, $a2, 0
	beqz	$s3, .LBB1_757
# %bb.383:
	ld.d	$a4, $s3, 0
	st.d	$a4, $a3, 0
	ld.d	$a4, $fp, 0
	st.d	$a4, $s3, 0
	ld.d	$a4, $a1, 0
	ld.d	$a2, $a2, 0
	ld.d	$a5, $a4, 0
	ld.d	$a3, $a3, 0
	st.d	$a2, $a5, 8
	st.d	$a3, $a4, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a3, 8
	b	.LBB1_757
.LBB1_384:
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a2, $a0, %pc_lo12(.L.str.36)
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a5, $a0, %pc_lo12(.L.str.37)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 39
	ori	$a3, $zero, 2
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$zero, $sp, 0
	move	$a0, $s0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s7
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s1
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	b	.LBB1_226
.LBB1_385:
	ori	$a2, $zero, 17
	bne	$a1, $a2, .LBB1_391
# %bb.386:
	move	$fp, $a0
	ld.d	$a0, $a0, 8
.LBB1_387:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_387
# %bb.388:
	pcaddu18i	$ra, %call36(GetScaleFactor)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI1_0)
	fmul.s	$fa0, $fa0, $fs0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s6, 64
	ld.d	$a0, $fp, 0
.LBB1_389:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_389
# %bb.390:
	pcaddu18i	$ra, %call36(GetScaleFactor)
	jirl	$ra, $ra, 0
	fmul.s	$fa0, $fa0, $fs0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s6, 72
	b	.LBB1_392
.LBB1_391:                              # %.thread2438
	pcaddu18i	$ra, %call36(GetScaleFactor)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI1_0)
	fmul.s	$fa0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s6, 72
	st.w	$a0, $s6, 64
.LBB1_392:
	ld.d	$a0, $s6, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a3, $a1, %got_pc_lo12(xx_link)
	ld.d	$a2, $a0, 24
	st.d	$a0, $a3, 0
	beq	$a2, $a0, .LBB1_411
# %bb.393:
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	ld.d	$a4, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a4, $a2, 16
	st.d	$a2, $a4, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB1_412
.LBB1_394:
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB1_587
# %bb.395:
	beq	$fp, $s2, .LBB1_749
# %bb.396:
	beq	$s1, $s0, .LBB1_757
# %bb.397:
	ld.bu	$a1, $s1, 32
	beqz	$a1, .LBB1_399
# %bb.398:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
.LBB1_399:
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$s1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$s0, $a2, 0
	beqz	$s0, .LBB1_755
# %bb.400:
	ld.d	$a3, $s0, 0
	pcalau12i	$a4, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a4, 0
	ld.d	$a3, $s1, 0
	st.d	$a3, $s0, 0
	b	.LBB1_754
.LBB1_401:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a2, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a5, $a0, %pc_lo12(.L.str.24)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 30
	b	.LBB1_718
.LBB1_402:
	bne	$a0, $a1, .LBB1_589
# %bb.403:
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(AttachEnv)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s7, 0
	ld.h	$a0, $s2, 64
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a0, $a1, 7, 7
	st.h	$a0, $s2, 64
	ld.hu	$a1, $s7, 0
	bstrpick.d	$a1, $a1, 8, 8
	move	$a2, $a0
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $s2, 64
	ld.hu	$a1, $s7, 0
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $s2, 64
	ld.hu	$a1, $s7, 0
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $s2, 64
	ld.hu	$a1, $s7, 0
	srli.d	$a1, $a1, 13
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $s2, 64
	ld.h	$a1, $s7, 2
	st.h	$a1, $s2, 66
	ld.bu	$a1, $s7, 4
	ld.b	$a2, $s2, 68
	andi	$a1, $a1, 3
	bstrins.d	$a2, $a1, 1, 0
	st.b	$a2, $s2, 68
	ld.bu	$a1, $s7, 4
	bstrpick.d	$a1, $a1, 3, 2
	bstrins.d	$a2, $a1, 3, 2
	st.b	$a2, $s2, 68
	ld.bu	$a1, $s7, 4
	andi	$a2, $a2, 143
	srli.d	$a1, $a1, 4
	bstrins.d	$a2, $a1, 6, 4
	st.b	$a2, $s2, 68
	ld.bu	$a1, $s7, 0
	bstrpick.d	$a1, $a1, 3, 3
	bstrins.d	$a0, $a1, 3, 3
	st.b	$a0, $s2, 64
	ld.hu	$a1, $s7, 4
	ld.h	$a2, $s2, 68
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a2, $a1, 7, 7
	st.h	$a2, $s2, 68
	ld.hu	$a1, $s7, 4
	bstrpick.d	$a1, $a1, 8, 8
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $s2, 68
	ld.hu	$a1, $s7, 4
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $s2, 68
	ld.hu	$a1, $s7, 4
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $s2, 68
	ld.hu	$a1, $s7, 4
	srli.d	$a1, $a1, 13
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $s2, 68
	ld.h	$a1, $s7, 6
	st.h	$a1, $s2, 70
	ld.wu	$a1, $s7, 12
	ld.w	$a2, $s2, 76
	andi	$a1, $a1, 4095
	bstrins.d	$a2, $a1, 11, 0
	st.w	$a2, $s2, 76
	ld.wu	$a1, $s7, 12
	bstrpick.d	$a1, $a1, 21, 12
	bstrins.d	$a2, $a1, 21, 12
	st.w	$a2, $s2, 76
	ld.wu	$a1, $s7, 12
	bstrpick.d	$a1, $a1, 23, 22
	bstrins.d	$a2, $a1, 23, 22
	st.w	$a2, $s2, 76
	ld.wu	$a1, $s7, 12
	bstrpick.d	$a1, $a1, 29, 24
	bstrins.d	$a2, $a1, 29, 24
	st.w	$a2, $s2, 76
	ld.w	$a1, $s7, 12
	srli.d	$a1, $a1, 31
	bstrins.d	$a2, $a1, 63, 31
	st.w	$a2, $s2, 76
	ld.wu	$a1, $s7, 12
	lu12i.w	$a3, -262145
	ori	$a3, $a3, 4095
	lu32i.d	$a3, 0
	and	$a2, $a2, $a3
	srli.d	$a1, $a1, 30
	bstrins.d	$a2, $a1, 30, 30
	st.w	$a2, $s2, 76
	ld.bu	$a1, $s7, 0
	andi	$a1, $a1, 1
	bstrins.d	$a0, $a1, 0, 0
	st.b	$a0, $s2, 64
	ld.bu	$a1, $s7, 0
	bstrpick.d	$a1, $a1, 1, 1
	bstrins.d	$a0, $a1, 1, 1
	st.b	$a0, $s2, 64
	ld.bu	$a1, $s7, 0
	bstrpick.d	$a1, $a1, 2, 2
	bstrins.d	$a0, $a1, 2, 2
	st.b	$a0, $s2, 64
	ld.bu	$a1, $s7, 0
	andi	$a0, $a0, 143
	srli.d	$a1, $a1, 4
	bstrins.d	$a0, $a1, 6, 4
	st.b	$a0, $s2, 64
	ld.h	$a0, $s7, 8
	st.h	$a0, $s2, 72
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	ld.h	$a0, $s7, 10
	st.h	$a0, $s2, 74
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SetEnv)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s5, 17
	slli.d	$a1, $a2, 3
	ldx.d	$s2, $s3, $a1
	st.d	$a0, $sp, 288
	st.w	$a2, $s4, 0
	beqz	$s2, .LBB1_771
# %bb.404:
	st.d	$s2, $fp, 0
	ld.d	$a0, $s2, 0
	stx.d	$a0, $s3, $a1
	b	.LBB1_772
.LBB1_405:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s4, $a0, 0
.LBB1_406:
	ori	$a0, $zero, 139
	st.b	$a0, $s4, 32
	st.d	$s4, $s4, 24
	st.d	$s4, $s4, 16
	st.d	$s4, $s4, 8
	st.d	$s4, $s4, 0
.LBB1_407:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	stx.d	$s4, $a0, $s3
	ld.hu	$a0, $s8, 44
	andi	$a0, $a0, 512
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	bnez	$a0, .LBB1_409
# %bb.408:
	move	$a0, $zero
	b	.LBB1_423
.LBB1_409:
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 139
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a0, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $a0, 0
	slli.d	$a1, $a2, 3
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a3, $a0, %got_pc_lo12(zz_free)
	ldx.d	$a0, $a3, $a1
	beqz	$a0, .LBB1_421
# %bb.410:
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	stx.d	$a2, $a3, $a1
	b	.LBB1_422
.LBB1_411:
	move	$a2, $zero
.LBB1_412:
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$a2, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	ld.d	$a4, $a0, 8
	st.d	$a0, $a2, 0
	beq	$a4, $a0, .LBB1_414
# %bb.413:
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	st.d	$a4, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a4, $a2, 0
	ld.d	$a0, $a5, 0
	ld.d	$a5, $a4, 0
	st.d	$a0, $a5, 8
	st.d	$a4, $a4, 0
	ld.d	$a0, $a3, 0
	st.d	$a4, $a4, 8
.LBB1_414:
	ld.bu	$a3, $a0, 32
	st.d	$a0, $a2, 0
	addi.d	$a4, $a3, -11
	sltui	$a4, $a4, 2
	addi.d	$a5, $a0, 33
	pcalau12i	$a6, %got_pc_hi20(zz_lengths)
	ld.d	$a6, $a6, %got_pc_lo12(zz_lengths)
	add.d	$a3, $a6, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a5, $a4
	or	$a3, $a4, $a3
	ld.bu	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	st.w	$a3, $a4, 0
	slli.d	$a3, $a3, 3
	pcalau12i	$a5, %got_pc_hi20(zz_free)
	ld.d	$a5, $a5, %got_pc_lo12(zz_free)
	ldx.d	$a3, $a5, $a3
	st.d	$a3, $a0, 0
	ld.w	$a3, $a4, 0
	ld.d	$a2, $a2, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a3, 3
	stx.d	$a2, $a5, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_416
# %bb.415:
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB1_416:
	ld.d	$a0, $s6, 0
	.p2align	4, , 16
.LBB1_417:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_417
	b	.LBB1_6
.LBB1_418:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 11
	move	$a2, $s2
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 24
	move	$s0, $a0
	beq	$a1, $s6, .LBB1_732
# %bb.419:
	ld.d	$a0, $s6, 16
	st.d	$a0, $a1, 16
	st.d	$a1, $a0, 24
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
	beqz	$s0, .LBB1_733
# %bb.420:
	ld.d	$a0, $a1, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $s0, 16
	st.d	$a0, $a2, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a0, $s0, 16
	st.d	$s0, $a0, 24
	b	.LBB1_733
.LBB1_421:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB1_422:
	ori	$a1, $zero, 139
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
.LBB1_423:
	addi.d	$s5, $sp, 832
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	stx.d	$a0, $a1, $s5
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	addi.d	$a2, $sp, 812
	addi.d	$a3, $sp, 288
	addi.d	$a4, $sp, 832
	st.d	$zero, $sp, 0
	move	$a0, $s0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 240                   # 8-byte Folded Reload
	move	$a7, $s0
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	beqz	$s0, .LBB1_593
# %bb.424:
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 19
	bne	$a0, $a1, .LBB1_593
# %bb.425:
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s0, $a0, 0
	beqz	$s0, .LBB1_593
# %bb.426:
	move	$s4, $s7
	move	$s7, $s6
	ld.d	$s6, $s0, 8
	beq	$s6, $s0, .LBB1_591
# %bb.427:
	ld.bu	$a0, $s6, 32
	beqz	$a0, .LBB1_429
# %bb.428:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_429:
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s6, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $a1, 0
	ld.d	$a2, $s0, 0
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a2, $a3, 0
	ld.d	$a2, $s6, 0
	st.d	$a2, $s0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a3, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a6, 8
	st.d	$s6, $a0, 0
	st.d	$s1, $a1, 0
	ld.d	$a2, $s1, 0
	st.d	$a2, $a3, 0
	ld.d	$a2, $s6, 0
	st.d	$a2, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a4, 8
	st.d	$a3, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 8
	ld.d	$s1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s0, $s1, 0
	b	.LBB1_592
.LBB1_430:
	move	$a2, $zero
.LBB1_431:
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$a2, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	ld.d	$a4, $a0, 8
	st.d	$a0, $a2, 0
	beq	$a4, $a0, .LBB1_433
# %bb.432:
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	st.d	$a4, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a4, $a2, 0
	ld.d	$a0, $a5, 0
	ld.d	$a5, $a4, 0
	st.d	$a0, $a5, 8
	st.d	$a4, $a4, 0
	ld.d	$a0, $a3, 0
	st.d	$a4, $a4, 8
.LBB1_433:
	ld.bu	$a3, $a0, 32
	st.d	$a0, $a2, 0
	addi.d	$a4, $a3, -11
	sltui	$a4, $a4, 2
	addi.d	$a5, $a0, 33
	pcalau12i	$a6, %got_pc_hi20(zz_lengths)
	ld.d	$a6, $a6, %got_pc_lo12(zz_lengths)
	add.d	$a3, $a6, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a5, $a4
	or	$a3, $a4, $a3
	ld.bu	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	st.w	$a3, $a4, 0
	slli.d	$a3, $a3, 3
	pcalau12i	$a5, %got_pc_hi20(zz_free)
	ld.d	$a5, $a5, %got_pc_lo12(zz_free)
	ldx.d	$a3, $a5, $a3
	st.d	$a3, $a0, 0
	ld.w	$a3, $a4, 0
	ld.d	$a2, $a2, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a3, 3
	stx.d	$a2, $a5, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_435
# %bb.434:
	move	$fp, $a7
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	move	$a7, $fp
.LBB1_435:
	ld.d	$a0, $s6, 8
	.p2align	4, , 16
.LBB1_436:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_436
# %bb.437:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a5, $s3
	move	$a6, $s1
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 8
	beqz	$a0, .LBB1_162
.LBB1_438:
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $s4
.LBB1_439:
	pcaddu18i	$ra, %call36(insert_split)
	jirl	$ra, $ra, 0
	b	.LBB1_727
.LBB1_440:                              # %.thread3032
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$zero, $a0, 0
.LBB1_441:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$zero, $sp, 0
	move	$a0, $s0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s7
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s1
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	b	.LBB1_728
.LBB1_442:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a2, $a0, %pc_lo12(.L.str.27)
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$s0, $a0, %pc_lo12(.L.str.28)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 33
.LBB1_443:
	ori	$a3, $zero, 2
	move	$a4, $s2
	move	$a5, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_444:
	ori	$a0, $zero, 11
	move	$a1, $s0
.LBB1_445:
	move	$a2, $s2
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 24
	move	$s0, $a0
	beq	$a1, $s6, .LBB1_724
# %bb.446:
	ld.d	$a0, $s6, 16
	st.d	$a0, $a1, 16
	st.d	$a1, $a0, 24
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
	beqz	$a1, .LBB1_725
# %bb.447:
	beqz	$s0, .LBB1_725
# %bb.448:
	ld.d	$a0, $a1, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $s0, 16
	st.d	$a0, $a2, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a0, $s0, 16
	st.d	$s0, $a0, 24
	b	.LBB1_725
.LBB1_449:                              # %.thread3014
	pcalau12i	$a3, %got_pc_hi20(xx_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a3, 0
.LBB1_450:
	ld.d	$a4, $s6, 8
	st.d	$s6, $fp, 0
	beq	$a4, $s6, .LBB1_454
# %bb.451:
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	st.d	$a4, $a3, 0
	ld.d	$a5, $s6, 0
	st.d	$a5, $a4, 0
	ld.d	$a5, $fp, 0
	ld.d	$a4, $a3, 0
	ld.d	$a6, $a5, 0
	st.d	$a4, $a6, 8
	st.d	$a5, $a5, 0
	ld.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a5, $a5, 8
	pcalau12i	$a5, %got_pc_hi20(xx_tmp)
	ld.d	$a5, $a5, %got_pc_lo12(xx_tmp)
	st.d	$a4, $a5, 0
	st.d	$a2, $a3, 0
	st.d	$a4, $fp, 0
	beqz	$a4, .LBB1_455
# %bb.452:
	beqz	$a2, .LBB1_455
# %bb.453:
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a4, 0
	ld.d	$a2, $a3, 0
	ld.d	$a4, $fp, 0
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a2, 0
	ld.d	$a2, $a3, 0
	st.d	$a2, $a6, 8
	b	.LBB1_455
.LBB1_454:                              # %.thread3016
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a0, $a2, 0
.LBB1_455:
	ld.d	$a1, $a1, 0
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s2, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s1, $a3
	st.d	$a1, $fp, 0
	st.w	$a2, $s0, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s0, 0
	ld.d	$a2, $fp, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s1, $a1
	addi.d	$a1, $sp, 832
	move	$a2, $s5
	pcaddu18i	$ra, %call36(InsertObject)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 832
	beqz	$a1, .LBB1_727
# %bb.456:
	addi.d	$a4, $a0, 32
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a2, $a1, %pc_lo12(.L.str.34)
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a5, $a1, %pc_lo12(.L.str.35)
	move	$fp, $a0
	ori	$a0, $zero, 8
	ori	$a1, $zero, 34
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 832
	b	.LBB1_254
.LBB1_457:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.LBB1_458:
	ori	$a0, $zero, 17
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	ld.h	$a0, $s6, 34
	st.h	$a0, $s0, 34
	ld.wu	$a0, $s6, 36
	ld.wu	$a1, $s0, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s0, 36
	ld.wu	$a1, $s6, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s0, 36
	ld.d	$a0, $s6, 24
	beq	$a0, $s6, .LBB1_460
# %bb.459:
	ld.d	$a1, $s6, 16
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$s0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a2, $a0, 16
	st.d	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $s0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	b	.LBB1_461
.LBB1_460:                              # %.thread2429
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$zero, $a0, 0
.LBB1_461:
	ld.bu	$a2, $s2, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s1, 0
	beqz	$a0, .LBB1_463
# %bb.462:
	alsl.d	$a1, $a2, $fp, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB1_464
.LBB1_463:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_464:
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $a4, 0
	ld.d	$a5, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $a3, 0
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a0, 0
	ld.d	$a7, $a1, 0
	st.d	$a5, $a6, 8
	st.d	$a7, $a0, 0
	ld.d	$a5, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a5, $a7, 8
	st.d	$a0, $a3, 0
	st.d	$s6, $a4, 0
	beqz	$a0, .LBB1_466
# %bb.465:
	ld.d	$a2, $s6, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s6, 16
	st.d	$s6, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB1_466:
	move	$s6, $s0
.LBB1_467:
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	ld.hu	$a1, $s5, 0
	ld.h	$a0, $s6, 64
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a0, $a1, 7, 7
	st.h	$a0, $s6, 64
	ld.hu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 8, 8
	move	$a2, $a0
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $s6, 64
	ld.hu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $s6, 64
	ld.hu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $s6, 64
	ld.hu	$a1, $s5, 0
	srli.d	$a1, $a1, 13
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $s6, 64
	ld.h	$a1, $s5, 2
	st.h	$a1, $s6, 66
	ld.bu	$a1, $s5, 4
	ld.b	$a2, $s6, 68
	andi	$a1, $a1, 3
	bstrins.d	$a2, $a1, 1, 0
	st.b	$a2, $s6, 68
	ld.bu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 3, 2
	bstrins.d	$a2, $a1, 3, 2
	st.b	$a2, $s6, 68
	ld.bu	$a1, $s5, 4
	andi	$a2, $a2, 143
	srli.d	$a1, $a1, 4
	bstrins.d	$a2, $a1, 6, 4
	st.b	$a2, $s6, 68
	ld.bu	$a1, $s5, 0
	bstrpick.d	$a1, $a1, 3, 3
	bstrins.d	$a0, $a1, 3, 3
	st.b	$a0, $s6, 64
	ld.hu	$a1, $s5, 4
	ld.h	$a2, $s6, 68
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a2, $a1, 7, 7
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 8, 8
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $s6, 68
	ld.hu	$a1, $s5, 4
	srli.d	$a1, $a1, 13
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $s6, 68
	ld.h	$a1, $s5, 6
	st.h	$a1, $s6, 70
	ld.wu	$a1, $s5, 12
	ld.w	$a2, $s6, 76
	andi	$a1, $a1, 4095
	bstrins.d	$a2, $a1, 11, 0
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 21, 12
	bstrins.d	$a2, $a1, 21, 12
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 23, 22
	bstrins.d	$a2, $a1, 23, 22
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 29, 24
	bstrins.d	$a2, $a1, 29, 24
	st.w	$a2, $s6, 76
	ld.w	$a1, $s5, 12
	srli.d	$a1, $a1, 31
	bstrins.d	$a2, $a1, 63, 31
	st.w	$a2, $s6, 76
	ld.wu	$a1, $s5, 12
	lu12i.w	$a3, -262145
	ori	$a3, $a3, 4095
	lu32i.d	$a3, 0
	and	$a2, $a2, $a3
	srli.d	$a1, $a1, 30
	bstrins.d	$a2, $a1, 30, 30
	st.w	$a2, $s6, 76
	ld.bu	$a1, $s5, 0
	srli.d	$a0, $a0, 1
	bstrins.d	$a1, $a0, 63, 1
	st.b	$a1, $s6, 64
	ld.bu	$a0, $s5, 0
	bstrpick.d	$a0, $a0, 1, 1
	bstrins.d	$a1, $a0, 1, 1
	st.b	$a1, $s6, 64
	ld.bu	$a0, $s5, 0
	bstrpick.d	$a0, $a0, 2, 2
	bstrins.d	$a1, $a0, 2, 2
	st.b	$a1, $s6, 64
	ld.bu	$a0, $s5, 0
	andi	$a1, $a1, 143
	srli.d	$a0, $a0, 4
	bstrins.d	$a1, $a0, 6, 4
	st.b	$a1, $s6, 64
	ld.h	$a0, $s5, 8
	st.h	$a0, $s6, 72
	ld.h	$a0, $s5, 10
	st.h	$a0, $s6, 74
	ld.hu	$a0, $s6, 42
	ld.b	$a1, $s5, 0
	lu12i.w	$fp, 15
	ori	$a2, $fp, 2047
	and	$a0, $a0, $a2
	bstrpick.d	$a1, $a1, 54, 2
	bstrins.d	$a0, $a1, 11, 11
	st.h	$a0, $s6, 42
	ld.hu	$a0, $s5, 0
	ld.hu	$a1, $sp, 288
	srli.d	$a2, $a0, 7
	bstrins.d	$a1, $a2, 63, 7
	ld.h	$a2, $s5, 2
	ld.bu	$a3, $sp, 292
	st.h	$a1, $sp, 288
	ld.bu	$a1, $s5, 4
	st.h	$a2, $sp, 290
	srli.d	$a2, $a3, 7
	ld.hu	$a3, $s5, 4
	bstrins.d	$a1, $a2, 63, 7
	st.b	$a1, $sp, 292
	ld.hu	$a1, $sp, 292
	srli.d	$a2, $a3, 7
	ld.w	$a3, $s5, 12
	ld.h	$a4, $s5, 8
	bstrins.d	$a1, $a2, 63, 7
	ld.h	$a2, $s5, 10
	st.w	$a3, $sp, 300
	st.h	$a4, $sp, 296
	ld.h	$a3, $s5, 6
	st.h	$a2, $sp, 298
	ld.d	$s0, $s6, 8
	st.h	$a1, $sp, 292
	st.h	$a3, $sp, 294
	andi	$a0, $a0, 251
	st.b	$a0, $sp, 288
	bne	$s0, $s6, .LBB1_469
# %bb.468:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a5, $a0, %pc_lo12(.L.str.9)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s6, 8
.LBB1_469:
	move	$s7, $s0
	.p2align	4, , 16
.LBB1_470:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s7, $s7, 16
	ld.bu	$a0, $s7, 32
	beqz	$a0, .LBB1_470
# %bb.471:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_473
# %bb.472:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a5, $a0, %pc_lo12(.L.str.10)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s7, 32
.LBB1_473:                              # %.loopexit2460
	addi.d	$a0, $a0, -11
	ori	$a1, $zero, 1
	lu12i.w	$s1, -393217
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	bltu	$a1, $a0, .LBB1_477
# %bb.474:
	ld.wu	$a1, $s5, 12
	ld.w	$a0, $s7, 40
	andi	$a1, $a1, 4095
	bstrins.d	$a0, $a1, 11, 0
	st.w	$a0, $s7, 40
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 21, 12
	bstrins.d	$a0, $a1, 21, 12
	st.w	$a0, $s7, 40
	ld.wu	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 22, 22
	bstrins.d	$a0, $a1, 22, 22
	st.w	$a0, $s7, 40
	ld.w	$a1, $s5, 12
	bstrpick.d	$a1, $a1, 29, 24
	bstrins.d	$a0, $a1, 28, 23
	st.w	$a0, $s7, 40
	ld.bu	$a1, $s5, 4
	andi	$a1, $a1, 3
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	bstrins.d	$a0, $a1, 63, 31
	st.w	$a0, $s7, 40
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	beqz	$a1, .LBB1_478
# %bb.475:
	ld.bu	$a1, $s5, 0
	andi	$a1, $a1, 8
	beqz	$a1, .LBB1_478
# %bb.476:                              # %.thread2430
	move	$a0, $s7
	move	$a1, $s5
	pcaddu18i	$ra, %call36(MapSmallCaps)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.wu	$a0, $a0, 40
	ori	$a1, $s1, 4095
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	lu12i.w	$a1, 131072
	or	$a0, $a0, $a1
	st.w	$a0, $s7, 40
	b	.LBB1_480
.LBB1_477:
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(nbt)
	addi.d	$a3, $a0, %pc_lo12(nbt)
	pcalau12i	$a0, %pc_hi20(nft)
	addi.d	$a4, $a0, %pc_lo12(nft)
	addi.d	$a2, $sp, 288
	move	$a0, $s7
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a5, $s3
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 240                   # 8-byte Folded Reload
	move	$a7, $s2
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.w	$a0, $a0, 40
	b	.LBB1_479
.LBB1_478:
	ld.d	$s2, $sp, 240                   # 8-byte Folded Reload
.LBB1_479:
	ori	$a1, $s1, 4095
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	lu12i.w	$a1, 131072
	or	$a0, $a0, $a1
	st.w	$a0, $s7, 40
	beqz	$s2, .LBB1_487
.LBB1_480:
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $a0, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	beqz	$s3, .LBB1_488
# %bb.481:
	ld.d	$s2, $s3, 8
	beq	$s2, $s3, .LBB1_486
# %bb.482:
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB1_484
# %bb.483:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_484:
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s2, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s3, $a1, 0
	ld.d	$a3, $s3, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a2, 0
	ld.d	$a3, $s2, 0
	st.d	$a3, $s3, 0
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a2, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a3, 0
	ld.d	$a3, $a0, 0
	st.d	$a3, $a6, 8
	st.d	$s2, $a0, 0
	st.d	$s0, $a1, 0
	beqz	$s0, .LBB1_486
# %bb.485:
	ld.d	$a3, $s0, 0
	st.d	$a3, $a2, 0
	ld.d	$a3, $s2, 0
	st.d	$a3, $s0, 0
	ld.d	$a3, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a1, $a4, 8
	st.d	$a2, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 8
.LBB1_486:
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $s2, 0
	b	.LBB1_488
.LBB1_487:
	st.d	$zero, $sp, 224                 # 8-byte Folded Spill
.LBB1_488:
	ld.d	$s5, $s0, 8
	beq	$s5, $s6, .LBB1_582
# %bb.489:                              # %.preheader2458.preheader
	ori	$s8, $zero, 1
	ori	$a0, $s1, 4095
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	xori	$a0, $a0, 1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$a0, $fp, 3967
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI1_2)
	addi.d	$a0, $a0, %pc_lo12(.LJTI1_2)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	lu12i.w	$fp, 12320
	lu32i.d	$fp, 48
	lu12i.w	$a0, -524288
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 160                   # 8-byte Folded Spill
	b	.LBB1_492
.LBB1_490:                              #   in Loop: Header=BB1_492 Depth=1
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, 0
.LBB1_491:                              #   in Loop: Header=BB1_492 Depth=1
	ld.d	$s5, $s0, 8
	beq	$s5, $s6, .LBB1_582
.LBB1_492:                              # %.preheader2458
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_493 Depth 2
                                        #     Child Loop BB1_499 Depth 2
                                        #     Child Loop BB1_508 Depth 2
                                        #     Child Loop BB1_516 Depth 2
                                        #       Child Loop BB1_519 Depth 3
                                        #     Child Loop BB1_524 Depth 2
                                        #       Child Loop BB1_527 Depth 3
	move	$s3, $s5
	.p2align	4, , 16
.LBB1_493:                              #   Parent Loop BB1_492 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $s3, 16
	ld.bu	$a0, $s3, 32
	beqz	$a0, .LBB1_493
# %bb.494:                              #   in Loop: Header=BB1_492 Depth=1
	beq	$a0, $s8, .LBB1_496
# %bb.495:                              #   in Loop: Header=BB1_492 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a5, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_496:                              # %.loopexit2459
                                        #   in Loop: Header=BB1_492 Depth=1
	ld.wu	$a0, $s3, 40
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	and	$a0, $a0, $a1
	lu12i.w	$a1, 131072
	or	$a0, $a0, $a1
	st.w	$a0, $s3, 40
	ld.d	$s0, $s5, 8
	bne	$s0, $s6, .LBB1_498
# %bb.497:                              #   in Loop: Header=BB1_492 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_498:                              # %.preheader3118
                                        #   in Loop: Header=BB1_492 Depth=1
	move	$s2, $s0
	ld.d	$s1, $sp, 232                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_499:                              #   Parent Loop BB1_492 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $s2, 16
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB1_499
# %bb.500:                              #   in Loop: Header=BB1_492 Depth=1
	bne	$a0, $s8, .LBB1_502
# %bb.501:                              #   in Loop: Header=BB1_492 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s2, 32
.LBB1_502:                              # %.loopexit2457
                                        #   in Loop: Header=BB1_492 Depth=1
	addi.d	$a0, $a0, -11
	bltu	$s8, $a0, .LBB1_505
# %bb.503:                              #   in Loop: Header=BB1_492 Depth=1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.wu	$a0, $a1, 12
	ld.w	$a2, $s2, 40
	andi	$a0, $a0, 4095
	bstrins.d	$a2, $a0, 11, 0
	st.w	$a2, $s2, 40
	ld.wu	$a0, $a1, 12
	bstrpick.d	$a0, $a0, 21, 12
	bstrins.d	$a2, $a0, 21, 12
	st.w	$a2, $s2, 40
	ld.wu	$a0, $a1, 12
	bstrpick.d	$a0, $a0, 22, 22
	bstrins.d	$a2, $a0, 22, 22
	st.w	$a2, $s2, 40
	ld.w	$a0, $a1, 12
	bstrpick.d	$a0, $a0, 29, 24
	bstrins.d	$a2, $a0, 28, 23
	st.w	$a2, $s2, 40
	ld.bu	$a0, $a1, 4
	andi	$a0, $a0, 3
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	bstrins.d	$a2, $a0, 63, 31
	st.w	$a2, $s2, 40
	ld.bu	$a0, $a1, 0
	andi	$a0, $a0, 8
	sltui	$a0, $a0, 1
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	or	$a0, $a2, $a0
	bnez	$a0, .LBB1_507
# %bb.504:                              #   in Loop: Header=BB1_492 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(MapSmallCaps)
	jirl	$ra, $ra, 0
	b	.LBB1_506
	.p2align	4, , 16
.LBB1_505:                              #   in Loop: Header=BB1_492 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(nbt)
	addi.d	$a3, $a0, %pc_lo12(nbt)
	pcalau12i	$a0, %pc_hi20(nft)
	addi.d	$a4, $a0, %pc_lo12(nft)
	addi.d	$a2, $sp, 288
	move	$a0, $s2
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	move	$a6, $s1
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
.LBB1_506:                              #   in Loop: Header=BB1_492 Depth=1
	move	$s2, $a0
.LBB1_507:                              #   in Loop: Header=BB1_492 Depth=1
	ld.wu	$a0, $s2, 40
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	and	$a0, $a0, $a1
	lu12i.w	$a1, 131072
	or	$a0, $a0, $a1
	st.w	$a0, $s2, 40
	ld.d	$a0, $s3, 8
	beq	$a0, $s3, .LBB1_510
	.p2align	4, , 16
.LBB1_508:                              # %.preheader
                                        #   Parent Loop BB1_492 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_508
# %bb.509:                              #   in Loop: Header=BB1_492 Depth=1
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	pcalau12i	$a1, %pc_hi20(nenclose)
	addi.d	$a1, $a1, %pc_lo12(nenclose)
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	pcalau12i	$a1, %pc_hi20(ntarget)
	addi.d	$a5, $a1, %pc_lo12(ntarget)
	addi.d	$a2, $sp, 288
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 832
	addi.d	$a2, $s3, 44
	addi.d	$a3, $sp, 828
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(GetGap)
	jirl	$ra, $ra, 0
	st.h	$zero, $s3, 41
	ld.bu	$a0, $s2, 32
	addi.d	$a0, $a0, -11
	bltu	$s8, $a0, .LBB1_533
	b	.LBB1_531
.LBB1_510:                              #   in Loop: Header=BB1_492 Depth=1
	move	$s1, $s4
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.hu	$a0, $a2, 4
	ld.h	$a1, $s3, 44
	bstrpick.d	$a0, $a0, 7, 7
	bstrins.d	$a1, $a0, 7, 7
	st.h	$a1, $s3, 44
	ld.hu	$a0, $a2, 4
	bstrpick.d	$a0, $a0, 8, 8
	bstrins.d	$a1, $a0, 8, 8
	st.h	$a1, $s3, 44
	ld.hu	$a0, $a2, 4
	bstrpick.d	$a0, $a0, 9, 9
	bstrins.d	$a1, $a0, 9, 9
	st.h	$a1, $s3, 44
	ld.hu	$a0, $a2, 4
	bstrpick.d	$a0, $a0, 12, 10
	bstrins.d	$a1, $a0, 12, 10
	st.h	$a1, $s3, 44
	ld.hu	$a0, $a2, 4
	srli.d	$a0, $a0, 13
	bstrins.d	$a1, $a0, 63, 13
	st.h	$a1, $s3, 44
	ld.hu	$s4, $a2, 6
	st.h	$s4, $s3, 46
	ld.b	$a0, $a2, 0
	bstrpick.d	$a0, $a0, 6, 4
	ori	$a1, $zero, 4
	bltu	$a1, $a0, .LBB1_528
# %bb.511:                              #   in Loop: Header=BB1_492 Depth=1
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB1_512:                              #   in Loop: Header=BB1_492 Depth=1
	ld.bu	$a0, $s3, 42
	ld.bu	$a1, $s3, 41
	add.d	$a0, $a1, $a0
	mul.d	$s4, $a0, $s4
.LBB1_513:                              # %.loopexit2455
                                        #   in Loop: Header=BB1_492 Depth=1
	st.h	$s4, $s3, 46
	b	.LBB1_529
.LBB1_514:                              #   in Loop: Header=BB1_492 Depth=1
	ld.bu	$a0, $s3, 42
	ld.bu	$a1, $s3, 41
	or	$a0, $a1, $a0
	beqz	$a0, .LBB1_521
# %bb.515:                              #   in Loop: Header=BB1_492 Depth=1
	ld.bu	$a0, $s7, 32
	move	$s6, $s7
	.p2align	4, , 16
.LBB1_516:                              #   Parent Loop BB1_492 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_519 Depth 3
	st.d	$s6, $sp, 832
	ori	$a1, $zero, 37
	bltu	$a1, $a0, .LBB1_529
# %bb.517:                              #   in Loop: Header=BB1_516 Depth=2
	sll.d	$a0, $s8, $a0
	and	$a1, $a0, $fp
	beqz	$a1, .LBB1_559
# %bb.518:                              # %.critedge7
                                        #   in Loop: Header=BB1_516 Depth=2
	ld.d	$s6, $s6, 0
	.p2align	4, , 16
.LBB1_519:                              #   Parent Loop BB1_492 Depth=1
                                        #     Parent Loop BB1_516 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s6, $s6, 16
	ld.bu	$a0, $s6, 32
	beqz	$a0, .LBB1_519
	b	.LBB1_516
.LBB1_520:                              #   in Loop: Header=BB1_492 Depth=1
	ld.bu	$a0, $s3, 42
	ld.bu	$a1, $s3, 41
	or	$a0, $a1, $a0
	bnez	$a0, .LBB1_529
.LBB1_521:                              # %.loopexit2455.thread
                                        #   in Loop: Header=BB1_492 Depth=1
	st.h	$zero, $s3, 46
	ori	$a0, $zero, 128
	b	.LBB1_530
.LBB1_522:                              #   in Loop: Header=BB1_492 Depth=1
	ld.bu	$a0, $s3, 42
	ld.bu	$a1, $s3, 41
	add.d	$a1, $a1, $a0
	mul.d	$s4, $a1, $s4
	st.h	$s4, $s3, 46
	beqz	$a0, .LBB1_529
# %bb.523:                              #   in Loop: Header=BB1_492 Depth=1
	ld.bu	$a0, $s7, 32
	move	$s6, $s7
	.p2align	4, , 16
.LBB1_524:                              #   Parent Loop BB1_492 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_527 Depth 3
	st.d	$s6, $sp, 832
	ori	$a1, $zero, 37
	bltu	$a1, $a0, .LBB1_529
# %bb.525:                              #   in Loop: Header=BB1_524 Depth=2
	sll.d	$a0, $s8, $a0
	and	$a1, $a0, $fp
	beqz	$a1, .LBB1_563
# %bb.526:                              # %.critedge
                                        #   in Loop: Header=BB1_524 Depth=2
	ld.d	$s6, $s6, 0
	.p2align	4, , 16
.LBB1_527:                              #   Parent Loop BB1_492 Depth=1
                                        #     Parent Loop BB1_524 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s6, $s6, 16
	ld.bu	$a0, $s6, 32
	beqz	$a0, .LBB1_527
	b	.LBB1_524
.LBB1_528:                              #   in Loop: Header=BB1_492 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.hu	$s4, $s3, 46
.LBB1_529:                              # %.loopexit2455
                                        #   in Loop: Header=BB1_492 Depth=1
	bstrpick.d	$a0, $s4, 15, 0
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 7
.LBB1_530:                              #   in Loop: Header=BB1_492 Depth=1
	move	$s4, $s1
	ld.hu	$a1, $s3, 44
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	and	$a1, $a1, $a2
	or	$a0, $a1, $a0
	st.h	$a0, $s3, 44
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 232                   # 8-byte Folded Reload
	ld.bu	$a0, $s2, 32
	addi.d	$a0, $a0, -11
	bltu	$s8, $a0, .LBB1_533
.LBB1_531:                              #   in Loop: Header=BB1_492 Depth=1
	ld.hu	$a0, $s3, 46
	bnez	$a0, .LBB1_533
# %bb.532:                              #   in Loop: Header=BB1_492 Depth=1
	ld.hu	$a0, $s3, 44
	andi	$a1, $a0, 128
	bnez	$a1, .LBB1_540
	.p2align	4, , 16
.LBB1_533:                              #   in Loop: Header=BB1_492 Depth=1
	move	$s7, $s2
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_491
.LBB1_534:                              #   in Loop: Header=BB1_492 Depth=1
	ld.d	$s3, $s1, 0
	beqz	$s3, .LBB1_491
# %bb.535:                              #   in Loop: Header=BB1_492 Depth=1
	ld.d	$s2, $s3, 8
	beq	$s2, $s3, .LBB1_490
# %bb.536:                              #   in Loop: Header=BB1_492 Depth=1
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB1_538
# %bb.537:                              #   in Loop: Header=BB1_492 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_538:                              #   in Loop: Header=BB1_492 Depth=1
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s2, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s3, $a1, 0
	ld.d	$a3, $s3, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a2, 0
	ld.d	$a3, $s2, 0
	st.d	$a3, $s3, 0
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a2, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a3, 0
	ld.d	$a3, $a0, 0
	st.d	$a3, $a6, 8
	st.d	$s2, $a0, 0
	st.d	$s0, $a1, 0
	beqz	$s0, .LBB1_490
# %bb.539:                              #   in Loop: Header=BB1_492 Depth=1
	ld.d	$a3, $s0, 0
	st.d	$a3, $a2, 0
	ld.d	$a3, $s2, 0
	st.d	$a3, $s0, 0
	ld.d	$a3, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a1, $a4, 8
	st.d	$a2, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 8
	b	.LBB1_490
.LBB1_540:                              #   in Loop: Header=BB1_492 Depth=1
	bstrpick.d	$a1, $a0, 12, 10
	slli.d	$a1, $a1, 10
	ori	$a2, $zero, 1024
	bne	$a1, $a2, .LBB1_533
# %bb.541:                              #   in Loop: Header=BB1_492 Depth=1
	ld.bu	$a1, $s3, 42
	ld.bu	$a2, $s3, 41
	or	$a1, $a2, $a1
	bnez	$a1, .LBB1_533
# %bb.542:                              #   in Loop: Header=BB1_492 Depth=1
	beqz	$s7, .LBB1_533
# %bb.543:                              #   in Loop: Header=BB1_492 Depth=1
	lu12i.w	$a1, 14
	and	$a1, $a0, $a1
	lu12i.w	$a2, 2
	bne	$a1, $a2, .LBB1_533
# %bb.544:                              #   in Loop: Header=BB1_492 Depth=1
	andi	$a0, $a0, 256
	bnez	$a0, .LBB1_533
# %bb.545:                              #   in Loop: Header=BB1_492 Depth=1
	ld.bu	$a0, $s7, 32
	addi.d	$a0, $a0, -11
	bltu	$s8, $a0, .LBB1_533
# %bb.546:                              #   in Loop: Header=BB1_492 Depth=1
	ld.w	$a1, $s7, 40
	ld.w	$a0, $s2, 40
	xor	$a2, $a0, $a1
	slli.d	$a2, $a2, 35
	bnez	$a2, .LBB1_533
# %bb.547:                              #   in Loop: Header=BB1_492 Depth=1
	lu12i.w	$s1, 393216
	and	$a1, $a1, $s1
	lu12i.w	$a2, 131072
	beq	$a1, $a2, .LBB1_549
# %bb.548:                              #   in Loop: Header=BB1_492 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a5, $a0, %pc_lo12(.L.str.15)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 40
.LBB1_549:                              #   in Loop: Header=BB1_492 Depth=1
	and	$a0, $a0, $s1
	lu12i.w	$a1, 131072
	beq	$a0, $a1, .LBB1_551
# %bb.550:                              #   in Loop: Header=BB1_492 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a5, $a0, %pc_lo12(.L.str.16)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_551:                              #   in Loop: Header=BB1_492 Depth=1
	addi.d	$a0, $s7, 32
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$s3, $s7, 64
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$s6, $s2, 64
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $s1
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	ori	$a1, $zero, 512
	bltu	$a0, $a1, .LBB1_553
# %bb.552:                              #   in Loop: Header=BB1_492 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a2, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 24
	ori	$a3, $zero, 1
	move	$a4, $s1
	move	$a5, $s3
	move	$a6, $s6
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_553:                              #   in Loop: Header=BB1_492 Depth=1
	ld.bu	$a1, $s1, 0
	ori	$a0, $zero, 12
	st.d	$s2, $sp, 832
	beq	$a1, $a0, .LBB1_555
# %bb.554:                              #   in Loop: Header=BB1_492 Depth=1
	ld.bu	$a0, $s2, 32
	addi.d	$a0, $a0, -12
	sltui	$a0, $a0, 1
	addi.d	$a0, $a0, 11
.LBB1_555:                              #   in Loop: Header=BB1_492 Depth=1
	move	$a1, $s3
	move	$a2, $s6
	move	$a3, $s1
	pcaddu18i	$ra, %call36(MakeWordTwo)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.wu	$a0, $s7, 40
	ld.w	$a1, $s2, 40
	andi	$a0, $a0, 4095
	bstrins.d	$a1, $a0, 11, 0
	st.w	$a1, $s2, 40
	ld.wu	$a0, $s7, 40
	bstrpick.d	$a0, $a0, 21, 12
	bstrins.d	$a1, $a0, 21, 12
	st.w	$a1, $s2, 40
	ld.wu	$a0, $s7, 40
	bstrpick.d	$a0, $a0, 22, 22
	bstrins.d	$a1, $a0, 22, 22
	st.w	$a1, $s2, 40
	ld.wu	$a0, $s7, 40
	bstrpick.d	$a0, $a0, 28, 23
	bstrins.d	$a1, $a0, 28, 23
	st.w	$a1, $s2, 40
	ld.wu	$a0, $s7, 40
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	and	$a0, $a0, $a2
	srli.d	$a0, $a0, 29
	bstrins.d	$a1, $a0, 63, 29
	lu12i.w	$a0, 131072
	or	$a0, $a1, $a0
	st.w	$a0, $s2, 40
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$s1, $a0, %got_pc_lo12(xx_link)
	ld.d	$a1, $s0, 24
	ld.d	$a0, $s0, 16
	st.d	$s0, $s1, 0
	beq	$a1, $s0, .LBB1_557
# %bb.556:                              #   in Loop: Header=BB1_492 Depth=1
	st.d	$a0, $a1, 16
	st.d	$a1, $a0, 24
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	move	$a0, $s0
.LBB1_557:                              # %._crit_edge2653
                                        #   in Loop: Header=BB1_492 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s6, $a1, %got_pc_lo12(zz_res)
	st.d	$s0, $s6, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s3, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a1, $s2, 16
	st.d	$s2, $s3, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a0, $s2, 16
	ld.d	$a3, $s0, 16
	st.d	$a1, $a2, 0
	ld.d	$a0, $sp, 832
	st.d	$s2, $a3, 24
	st.d	$a1, $s0, 16
	st.d	$s0, $a1, 24
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 24
	ld.d	$a1, $a0, 24
	move	$a5, $s1
	st.d	$a0, $s1, 0
	beq	$a1, $a0, .LBB1_569
# %bb.558:                              #   in Loop: Header=BB1_492 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB1_570
.LBB1_559:                              #   in Loop: Header=BB1_492 Depth=1
	bstrpick.d	$a0, $a0, 12, 11
	slli.d	$a0, $a0, 11
	beqz	$a0, .LBB1_529
# %bb.560:                              #   in Loop: Header=BB1_492 Depth=1
	addi.d	$a0, $s6, 64
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_529
# %bb.561:                              #   in Loop: Header=BB1_492 Depth=1
	add.d	$a0, $s6, $a0
	ld.bu	$a0, $a0, 63
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %got_pc_hi20(LanguageSentenceEnds)
	ld.d	$a1, $a1, %got_pc_lo12(LanguageSentenceEnds)
	ldx.w	$a0, $a1, $a0
	beqz	$a0, .LBB1_529
# %bb.562:                              #   in Loop: Header=BB1_492 Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s6
	b	.LBB1_567
.LBB1_563:                              #   in Loop: Header=BB1_492 Depth=1
	bstrpick.d	$a0, $a0, 12, 11
	slli.d	$a0, $a0, 11
	beqz	$a0, .LBB1_529
# %bb.564:                              #   in Loop: Header=BB1_492 Depth=1
	addi.d	$a0, $s6, 64
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_529
# %bb.565:                              #   in Loop: Header=BB1_492 Depth=1
	add.d	$a0, $s6, $a0
	ld.bu	$a0, $a0, 63
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %got_pc_hi20(LanguageSentenceEnds)
	ld.d	$a1, $a1, %got_pc_lo12(LanguageSentenceEnds)
	ldx.w	$a0, $a1, $a0
	beqz	$a0, .LBB1_529
# %bb.566:                              #   in Loop: Header=BB1_492 Depth=1
	move	$a0, $s6
	move	$a1, $zero
.LBB1_567:                              #   in Loop: Header=BB1_492 Depth=1
	pcaddu18i	$ra, %call36(LanguageWordEndsSentence)
	jirl	$ra, $ra, 0
	ld.hu	$s4, $s3, 46
	beqz	$a0, .LBB1_529
# %bb.568:                              #   in Loop: Header=BB1_492 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.h	$a0, $a0, 6
	add.d	$s4, $s4, $a0
	b	.LBB1_513
.LBB1_569:                              #   in Loop: Header=BB1_492 Depth=1
	move	$a1, $zero
.LBB1_570:                              #   in Loop: Header=BB1_492 Depth=1
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$s1, $a2, %got_pc_lo12(xx_tmp)
	ld.d	$a2, $a0, 8
	st.d	$a1, $s1, 0
	st.d	$a0, $s3, 0
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	beq	$a2, $a0, .LBB1_572
# %bb.571:                              #   in Loop: Header=BB1_492 Depth=1
	st.d	$a2, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $s3, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a1, 8
.LBB1_572:                              #   in Loop: Header=BB1_492 Depth=1
	ld.bu	$a1, $a0, 32
	st.d	$a0, $s3, 0
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	pcalau12i	$a4, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a4, %got_pc_lo12(zz_lengths)
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$s7, $a2, %got_pc_lo12(zz_size)
	st.w	$a1, $s7, 0
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_free)
	ld.d	$s4, $a2, %got_pc_lo12(zz_free)
	ldx.d	$a1, $s4, $a1
	st.d	$a1, $a0, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s3, 0
	ld.d	$a0, $s1, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s4, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_574
# %bb.573:                              #   in Loop: Header=BB1_492 Depth=1
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
.LBB1_574:                              #   in Loop: Header=BB1_492 Depth=1
	ld.d	$a0, $s5, 24
	st.d	$s5, $a5, 0
	beq	$a0, $s5, .LBB1_576
# %bb.575:                              #   in Loop: Header=BB1_492 Depth=1
	ld.d	$a1, $s5, 16
	st.d	$a0, $s6, 0
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$s5, $s5, 24
	st.d	$s5, $s5, 16
	b	.LBB1_577
.LBB1_576:                              #   in Loop: Header=BB1_492 Depth=1
	move	$a0, $zero
.LBB1_577:                              #   in Loop: Header=BB1_492 Depth=1
	ld.d	$a1, $s5, 8
	st.d	$a0, $s1, 0
	st.d	$s5, $s3, 0
	beq	$a1, $s5, .LBB1_579
# %bb.578:                              #   in Loop: Header=BB1_492 Depth=1
	st.d	$a1, $s6, 0
	ld.d	$a0, $s5, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	st.d	$a1, $a2, 8
	st.d	$a0, $a0, 0
	ld.d	$s5, $a5, 0
	st.d	$a0, $a0, 8
.LBB1_579:                              #   in Loop: Header=BB1_492 Depth=1
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	ld.bu	$a0, $s5, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s5, 33
	add.d	$a0, $a4, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s4, $a1
	st.d	$s5, $s3, 0
	st.w	$a0, $s7, 0
	st.d	$a1, $s5, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s3, 0
	ld.d	$a0, $s1, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s4, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_581
# %bb.580:                              #   in Loop: Header=BB1_492 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB1_581:                              #   in Loop: Header=BB1_492 Depth=1
	move	$s7, $s2
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_491
	b	.LBB1_534
.LBB1_582:                              # %._crit_edge2570
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB1_586
# %bb.583:
	ld.d	$a0, $a1, 0
	bnez	$a0, .LBB1_586
# %bb.584:
	ld.d	$a0, $s4, 8
	bnez	$a0, .LBB1_586
# %bb.585:
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB1_794
.LBB1_586:
	move	$a0, $s6
	move	$a2, $s4
	pcaddu18i	$ra, %call36(insert_split)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	b	.LBB1_727
.LBB1_587:
	addi.d	$a2, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	b	.LBB1_757
.LBB1_588:
	st.d	$a0, $sp, 832
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a2, $a0, %pc_lo12(.L.str.41)
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a5, $a0, %pc_lo12(.L.str.42)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 35
	b	.LBB1_590
.LBB1_589:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a2, $a0, %pc_lo12(.L.str.41)
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a5, $a0, %pc_lo12(.L.str.42)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 36
.LBB1_590:
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$zero, $sp, 0
	move	$a0, $s0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s7
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	b	.LBB1_785
.LBB1_591:
	ld.d	$s1, $sp, 232                   # 8-byte Folded Reload
.LBB1_592:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, 0
	move	$s6, $s7
	move	$s7, $s4
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
.LBB1_593:                              # %.lr.ph
	alsl.d	$a0, $s2, $s3, 3
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 832
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	alsl.d	$a0, $fp, $s7, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	alsl.d	$a0, $fp, $s3, 3
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	sltu	$a0, $zero, $s4
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	alsl.d	$a0, $fp, $s5, 3
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 3
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(nbt)
	addi.d	$a0, $a0, %pc_lo12(nbt)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(nft)
	addi.d	$a0, $a0, %pc_lo12(nft)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ntarget)
	addi.d	$a0, $a0, %pc_lo12(ntarget)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s4, $a0, %got_pc_lo12(zz_size)
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$s0, $a0, %got_pc_lo12(zz_free)
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$s5, $a0, %got_pc_lo12(zz_hold)
	ld.d	$s1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	st.d	$s6, $sp, 160                   # 8-byte Folded Spill
	b	.LBB1_595
	.p2align	4, , 16
.LBB1_594:                              #   in Loop: Header=BB1_595 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	maskeqz	$a0, $a0, $a1
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	beqz	$s8, .LBB1_687
.LBB1_595:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_599 Depth 2
                                        #     Child Loop BB1_615 Depth 2
                                        #     Child Loop BB1_618 Depth 2
                                        #     Child Loop BB1_651 Depth 2
                                        #     Child Loop BB1_653 Depth 2
                                        #     Child Loop BB1_659 Depth 2
                                        #       Child Loop BB1_660 Depth 3
                                        #       Child Loop BB1_662 Depth 3
	ld.bu	$a0, $s8, 32
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_597
# %bb.596:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a5, $a0, %pc_lo12(.L.str.57)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_597:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $s8, 8
	bne	$a0, $s8, .LBB1_599
# %bb.598:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 8
	.p2align	4, , 16
.LBB1_599:                              #   Parent Loop BB1_595 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_599
# %bb.600:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	addi.d	$a2, $sp, 812
	st.d	$zero, $sp, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s8, 44
	addi.d	$a3, $sp, 828
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(GetGap)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 0
	beqz	$fp, .LBB1_606
# %bb.601:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a0, $s0, $a1
	st.w	$a2, $s4, 0
	beqz	$a0, .LBB1_603
# %bb.602:                              #   in Loop: Header=BB1_595 Depth=1
	st.d	$a0, $s5, 0
	ld.d	$a2, $a0, 0
	stx.d	$a2, $s0, $a1
	b	.LBB1_604
.LBB1_603:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_604:                              #   in Loop: Header=BB1_595 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a3, 0
	st.d	$fp, $s5, 0
	ld.d	$a4, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a4, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $a3, 0
	ld.d	$a4, $s5, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a1, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a4, $a6, 8
	st.d	$a0, $a3, 0
	st.d	$s8, $s5, 0
	beqz	$a0, .LBB1_606
# %bb.605:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a2, $s8, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s8, 16
	st.d	$s8, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB1_606:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 0
	beqz	$fp, .LBB1_612
# %bb.607:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	st.w	$a2, $s4, 0
	beqz	$a0, .LBB1_609
# %bb.608:                              #   in Loop: Header=BB1_595 Depth=1
	st.d	$a0, $s5, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s0, 3
	st.d	$a1, $a2, 0
	b	.LBB1_610
.LBB1_609:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_610:                              #   in Loop: Header=BB1_595 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a3, 0
	st.d	$fp, $s5, 0
	ld.d	$a4, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a4, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $a3, 0
	ld.d	$a4, $s5, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a1, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a4, $a6, 8
	st.d	$a0, $a3, 0
	st.d	$s8, $s5, 0
	beqz	$a0, .LBB1_612
# %bb.611:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a2, $s8, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s8, 16
	st.d	$s8, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB1_612:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$s3, $s2, 8
	bne	$s3, $s6, .LBB1_614
# %bb.613:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_614:                              # %.preheader3132
                                        #   in Loop: Header=BB1_595 Depth=1
	move	$s7, $s3
	.p2align	4, , 16
.LBB1_615:                              #   Parent Loop BB1_595 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s7, $s7, 16
	ld.bu	$a0, $s7, 32
	beqz	$a0, .LBB1_615
# %bb.616:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a1, $s3, 8
	beq	$a1, $s6, .LBB1_622
# %bb.617:                              # %.preheader2463.preheader
                                        #   in Loop: Header=BB1_595 Depth=1
	move	$s8, $a1
	.p2align	4, , 16
.LBB1_618:                              # %.preheader2463
                                        #   Parent Loop BB1_595 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s8, $s8, 16
	ld.bu	$a0, $s8, 32
	beqz	$a0, .LBB1_618
# %bb.619:                              # %.loopexit2464
                                        #   in Loop: Header=BB1_595 Depth=1
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s6, $a0, 0
	beqz	$s6, .LBB1_623
.LBB1_620:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 139
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $s0, $a1
	st.w	$a0, $s4, 0
	beqz	$s2, .LBB1_627
# %bb.621:                              #   in Loop: Header=BB1_595 Depth=1
	st.d	$s2, $s5, 0
	ld.d	$a1, $s2, 0
	alsl.d	$a0, $a0, $s0, 3
	st.d	$a1, $a0, 0
	b	.LBB1_628
	.p2align	4, , 16
.LBB1_622:                              #   in Loop: Header=BB1_595 Depth=1
	move	$s8, $zero
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s6, $a0, 0
	bnez	$s6, .LBB1_620
.LBB1_623:                              #   in Loop: Header=BB1_595 Depth=1
	move	$s2, $zero
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.d	$s2, $a0, 0
	bnez	$s8, .LBB1_629
.LBB1_624:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB1_630
.LBB1_625:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 139
	slli.d	$a1, $a0, 3
	ldx.d	$a2, $s0, $a1
	st.w	$a0, $s4, 0
	beqz	$a2, .LBB1_631
# %bb.626:                              #   in Loop: Header=BB1_595 Depth=1
	st.d	$a2, $s5, 0
	ld.d	$a1, $a2, 0
	alsl.d	$a0, $a0, $s0, 3
	st.d	$a1, $a0, 0
	b	.LBB1_632
.LBB1_627:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $s5, 0
.LBB1_628:                              #   in Loop: Header=BB1_595 Depth=1
	ori	$a0, $zero, 139
	st.b	$a0, $s2, 32
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	st.d	$s2, $s2, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.d	$s2, $a0, 0
	beqz	$s8, .LBB1_624
.LBB1_629:                              #   in Loop: Header=BB1_595 Depth=1
	ld.hu	$a0, $s8, 44
	andi	$a0, $a0, 512
	bnez	$a0, .LBB1_625
.LBB1_630:                              #   in Loop: Header=BB1_595 Depth=1
	move	$a2, $zero
	b	.LBB1_633
.LBB1_631:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$a0, $s5, 0
.LBB1_632:                              #   in Loop: Header=BB1_595 Depth=1
	ori	$a0, $zero, 139
	st.b	$a0, $a2, 32
	st.d	$a2, $a2, 24
	st.d	$a2, $a2, 16
	st.d	$a2, $a2, 8
	st.d	$a2, $a2, 0
.LBB1_633:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	st.d	$a2, $a0, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	addi.d	$a2, $sp, 812
	addi.d	$a3, $sp, 288
	addi.d	$a4, $sp, 832
	st.d	$zero, $sp, 0
	move	$a0, $s7
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	move	$a6, $s1
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	move	$a7, $fp
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB1_641
# %bb.634:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 19
	bne	$a0, $a1, .LBB1_641
# %bb.635:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$s7, $s1, 0
	beqz	$s7, .LBB1_641
# %bb.636:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$fp, $s7, 8
	beq	$fp, $s7, .LBB1_640
# %bb.637:                              #   in Loop: Header=BB1_595 Depth=1
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB1_639
# %bb.638:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_639:                              #   in Loop: Header=BB1_595 Depth=1
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$fp, $a0, 0
	st.d	$s7, $s5, 0
	ld.d	$a1, $s7, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $a2, 0
	ld.d	$a1, $fp, 0
	st.d	$a1, $s7, 0
	ld.d	$a1, $a0, 0
	ld.d	$a3, $s5, 0
	ld.d	$a4, $a1, 0
	ld.d	$a5, $a2, 0
	st.d	$a3, $a4, 8
	st.d	$a5, $a1, 0
	ld.d	$a1, $a0, 0
	st.d	$a1, $a5, 8
	st.d	$fp, $a0, 0
	st.d	$s3, $s5, 0
	ld.d	$a1, $s3, 0
	st.d	$a1, $a2, 0
	ld.d	$a1, $fp, 0
	st.d	$a1, $s3, 0
	ld.d	$a1, $a0, 0
	ld.d	$a3, $s5, 0
	ld.d	$a4, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a3, $a4, 8
	st.d	$a2, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 8
	ld.d	$s7, $s1, 0
.LBB1_640:                              #   in Loop: Header=BB1_595 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, 0
.LBB1_641:                              #   in Loop: Header=BB1_595 Depth=1
	beqz	$s2, .LBB1_644
# %bb.642:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $s2, 8
	beq	$a0, $s2, .LBB1_645
# %bb.643:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	bnez	$s6, .LBB1_646
	b	.LBB1_655
	.p2align	4, , 16
.LBB1_644:                              #   in Loop: Header=BB1_595 Depth=1
	st.d	$zero, $sp, 216                 # 8-byte Folded Spill
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	bnez	$s8, .LBB1_595
	b	.LBB1_687
.LBB1_645:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a5, $a0, %pc_lo12(.L.str.60)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	beqz	$s6, .LBB1_655
.LBB1_646:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $s6, 8
	beq	$a0, $s6, .LBB1_655
# %bb.647:                              #   in Loop: Header=BB1_595 Depth=1
	beqz	$fp, .LBB1_656
.LBB1_648:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $fp, 8
	bne	$a0, $fp, .LBB1_650
# %bb.649:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a5, $a0, %pc_lo12(.L.str.62)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_650:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $s2, 0
	.p2align	4, , 16
.LBB1_651:                              #   Parent Loop BB1_595 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_651
# %bb.652:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a1, $fp, 0
	.p2align	4, , 16
.LBB1_653:                              #   Parent Loop BB1_595 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB1_653
# %bb.654:                              #   in Loop: Header=BB1_595 Depth=1
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	b	.LBB1_657
	.p2align	4, , 16
.LBB1_655:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a5, $a0, %pc_lo12(.L.str.61)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB1_648
.LBB1_656:                              #   in Loop: Header=BB1_595 Depth=1
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
.LBB1_657:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$s7, $s6, 8
	ld.d	$s1, $s2, 8
	xor	$a0, $s7, $s6
	sltu	$fp, $zero, $a0
	beq	$s7, $s6, .LBB1_674
# %bb.658:                              #   in Loop: Header=BB1_595 Depth=1
	beq	$s1, $s2, .LBB1_674
	.p2align	4, , 16
.LBB1_659:                              # %.preheader2462
                                        #   Parent Loop BB1_595 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_660 Depth 3
                                        #       Child Loop BB1_662 Depth 3
	move	$fp, $s7
	.p2align	4, , 16
.LBB1_660:                              #   Parent Loop BB1_595 Depth=1
                                        #     Parent Loop BB1_659 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB1_660
# %bb.661:                              # %.preheader2461.preheader
                                        #   in Loop: Header=BB1_659 Depth=2
	move	$s3, $s1
	.p2align	4, , 16
.LBB1_662:                              # %.preheader2461
                                        #   Parent Loop BB1_595 Depth=1
                                        #     Parent Loop BB1_659 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s3, $s3, 16
	ld.bu	$a0, $s3, 32
	beqz	$a0, .LBB1_662
# %bb.663:                              #   in Loop: Header=BB1_659 Depth=2
	bne	$fp, $s3, .LBB1_665
# %bb.664:                              #   in Loop: Header=BB1_659 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a5, $a0, %pc_lo12(.L.str.63)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_665:                              #   in Loop: Header=BB1_659 Depth=2
	pcalau12i	$a0, %got_pc_hi20(xx_res)
	ld.d	$a1, $a0, %got_pc_lo12(xx_res)
	st.d	$fp, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$a0, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a2, $s3, 24
	st.d	$s3, $a0, 0
	beq	$a2, $s3, .LBB1_670
# %bb.666:                              #   in Loop: Header=BB1_659 Depth=2
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	ld.d	$a4, $s3, 16
	st.d	$a2, $a3, 0
	st.d	$a4, $a2, 16
	st.d	$a2, $a4, 24
	st.d	$s3, $s3, 24
	st.d	$s3, $s3, 16
	pcalau12i	$a3, %got_pc_hi20(xx_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(xx_tmp)
	ld.d	$a4, $a2, 16
	st.d	$a2, $a3, 0
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	ld.d	$a5, $fp, 16
	st.d	$a4, $a3, 0
	st.d	$a5, $a2, 16
	st.d	$a2, $a5, 24
	st.d	$a4, $fp, 16
	st.d	$fp, $a4, 24
	ld.d	$a3, $s3, 8
	st.d	$s3, $s5, 0
	beq	$a3, $s3, .LBB1_671
.LBB1_667:                              #   in Loop: Header=BB1_659 Depth=2
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a3, $a2, 0
	ld.d	$a4, $s3, 0
	st.d	$a4, $a3, 0
	ld.d	$a4, $s5, 0
	ld.d	$a3, $a2, 0
	ld.d	$a5, $a4, 0
	st.d	$a3, $a5, 8
	st.d	$a4, $a4, 0
	ld.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a4, $a4, 8
	pcalau12i	$a4, %got_pc_hi20(xx_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(xx_tmp)
	st.d	$a3, $a4, 0
	st.d	$a1, $a2, 0
	st.d	$a3, $s5, 0
	beqz	$a3, .LBB1_672
# %bb.668:                              #   in Loop: Header=BB1_659 Depth=2
	beqz	$a1, .LBB1_672
# %bb.669:                              #   in Loop: Header=BB1_659 Depth=2
	ld.d	$a4, $a3, 0
	pcalau12i	$a5, %got_pc_hi20(zz_tmp)
	ld.d	$a5, $a5, %got_pc_lo12(zz_tmp)
	st.d	$a4, $a5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a3, 0
	ld.d	$a1, $a2, 0
	ld.d	$a3, $s5, 0
	ld.d	$a4, $a1, 0
	ld.d	$a5, $a5, 0
	st.d	$a3, $a4, 8
	st.d	$a5, $a1, 0
	ld.d	$a1, $a2, 0
	st.d	$a1, $a5, 8
	b	.LBB1_672
	.p2align	4, , 16
.LBB1_670:                              # %.thread2434
                                        #   in Loop: Header=BB1_659 Depth=2
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a2, 0
	ld.d	$a3, $s3, 8
	st.d	$s3, $s5, 0
	bne	$a3, $s3, .LBB1_667
.LBB1_671:                              # %.thread2984
                                        #   in Loop: Header=BB1_659 Depth=2
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$fp, $a1, 0
.LBB1_672:                              #   in Loop: Header=BB1_659 Depth=2
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s0, $a2
	st.d	$a0, $s5, 0
	st.w	$a1, $s4, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s4, 0
	ld.d	$a1, $s5, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	ld.d	$s7, $s7, 8
	ld.d	$s1, $s1, 8
	xor	$a0, $s7, $s6
	sltu	$fp, $zero, $a0
	beq	$s7, $s6, .LBB1_674
# %bb.673:                              #   in Loop: Header=BB1_659 Depth=2
	bne	$s1, $s2, .LBB1_659
.LBB1_674:                              # %.critedge.i
                                        #   in Loop: Header=BB1_595 Depth=1
	beq	$s1, $s2, .LBB1_680
# %bb.675:                              # %.critedge.i
                                        #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_680
# %bb.676:                              #   in Loop: Header=BB1_595 Depth=1
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB1_678
# %bb.677:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_678:                              #   in Loop: Header=BB1_595 Depth=1
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s1, $a0, 0
	st.d	$s2, $s5, 0
	ld.d	$a2, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a2, $a1, 0
	ld.d	$a2, $s1, 0
	st.d	$a2, $s2, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s5, 0
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a1, 0
	st.d	$a3, $a4, 8
	st.d	$a5, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a5, 8
	st.d	$s1, $a0, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a2, $s5, 0
	beqz	$a2, .LBB1_680
# %bb.679:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a3, 0
	st.d	$a2, $a1, 0
	ld.d	$a2, $s1, 0
	st.d	$a2, $a3, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s5, 0
	ld.d	$a4, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a3, $a4, 8
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 8
.LBB1_680:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	and	$a0, $a0, $fp
	ld.d	$s1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_594
# %bb.681:                              #   in Loop: Header=BB1_595 Depth=1
	ld.bu	$a0, $s7, 32
	beqz	$a0, .LBB1_683
# %bb.682:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_683:                              #   in Loop: Header=BB1_595 Depth=1
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s7, $a0, 0
	st.d	$s6, $s5, 0
	beqz	$s6, .LBB1_685
# %bb.684:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a1, $s6, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $a2, 0
	ld.d	$a1, $s7, 0
	st.d	$a1, $s6, 0
	ld.d	$a1, $a0, 0
	ld.d	$a3, $s5, 0
	ld.d	$a4, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a3, $a4, 8
	st.d	$a2, $a1, 0
	ld.d	$a1, $a0, 0
	st.d	$a1, $a2, 8
.LBB1_685:                              #   in Loop: Header=BB1_595 Depth=1
	st.d	$s7, $a0, 0
	st.d	$fp, $s5, 0
	beqz	$fp, .LBB1_594
# %bb.686:                              #   in Loop: Header=BB1_595 Depth=1
	ld.d	$a1, $fp, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $a2, 0
	ld.d	$a1, $s7, 0
	st.d	$a1, $fp, 0
	ld.d	$a1, $a0, 0
	ld.d	$a3, $s5, 0
	ld.d	$a4, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a3, $a4, 8
	st.d	$a2, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 8
	b	.LBB1_594
.LBB1_687:                              # %._crit_edge2553
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a2, $a0, $a3
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	beqz	$a2, .LBB1_697
# %bb.688:
	pcalau12i	$a0, %got_pc_hi20(xx_res)
	ld.d	$a1, $a0, %got_pc_lo12(xx_res)
	addi.d	$a0, $sp, 832
	ldx.d	$a3, $a3, $a0
	st.d	$a2, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$a0, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a4, $a3, 24
	st.d	$a3, $a0, 0
	beq	$a4, $a3, .LBB1_690
# %bb.689:
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	ld.d	$a6, $a3, 16
	st.d	$a4, $a5, 0
	st.d	$a6, $a4, 16
	st.d	$a4, $a6, 24
	st.d	$a3, $a3, 24
	st.d	$a3, $a3, 16
	pcalau12i	$a5, %got_pc_hi20(xx_tmp)
	ld.d	$a5, $a5, %got_pc_lo12(xx_tmp)
	ld.d	$a6, $a4, 16
	st.d	$a4, $a5, 0
	pcalau12i	$a5, %got_pc_hi20(zz_tmp)
	ld.d	$a5, $a5, %got_pc_lo12(zz_tmp)
	ld.d	$a7, $a2, 16
	st.d	$a6, $a5, 0
	st.d	$a7, $a4, 16
	st.d	$a4, $a7, 24
	st.d	$a6, $a2, 16
	st.d	$a2, $a6, 24
	b	.LBB1_691
.LBB1_690:                              # %.thread2436
	pcalau12i	$a4, %got_pc_hi20(xx_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a4, 0
.LBB1_691:
	ld.d	$a4, $a3, 8
	st.d	$a3, $s5, 0
	beq	$a4, $a3, .LBB1_695
# %bb.692:
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a4, 0
	ld.d	$a4, $s5, 0
	ld.d	$a3, $a2, 0
	ld.d	$a5, $a4, 0
	st.d	$a3, $a5, 8
	st.d	$a4, $a4, 0
	ld.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a4, $a4, 8
	pcalau12i	$a4, %got_pc_hi20(xx_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(xx_tmp)
	st.d	$a3, $a4, 0
	st.d	$a1, $a2, 0
	st.d	$a3, $s5, 0
	beqz	$a3, .LBB1_696
# %bb.693:
	beqz	$a1, .LBB1_696
# %bb.694:
	ld.d	$a4, $a3, 0
	pcalau12i	$a5, %got_pc_hi20(zz_tmp)
	ld.d	$a5, $a5, %got_pc_lo12(zz_tmp)
	st.d	$a4, $a5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a3, 0
	ld.d	$a1, $a2, 0
	ld.d	$a3, $s5, 0
	ld.d	$a4, $a1, 0
	ld.d	$a5, $a5, 0
	st.d	$a3, $a4, 8
	st.d	$a5, $a1, 0
	ld.d	$a1, $a2, 0
	st.d	$a1, $a5, 8
	b	.LBB1_696
.LBB1_695:                              # %.thread2986
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a2, $a1, 0
.LBB1_696:
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s0, $a2
	st.d	$a0, $s5, 0
	st.w	$a1, $s4, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s4, 0
	ld.d	$a1, $s5, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
.LBB1_697:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	beqz	$a2, .LBB1_707
# %bb.698:
	pcalau12i	$a0, %got_pc_hi20(xx_res)
	ld.d	$a1, $a0, %got_pc_lo12(xx_res)
	st.d	$a2, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$a0, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a7, 24
	st.d	$a7, $a0, 0
	beq	$a3, $a7, .LBB1_700
# %bb.699:
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	ld.d	$a5, $a7, 16
	st.d	$a3, $a4, 0
	st.d	$a5, $a3, 16
	st.d	$a3, $a5, 24
	st.d	$a7, $a7, 24
	st.d	$a7, $a7, 16
	pcalau12i	$a4, %got_pc_hi20(xx_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(xx_tmp)
	ld.d	$a5, $a3, 16
	st.d	$a3, $a4, 0
	pcalau12i	$a4, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(zz_tmp)
	ld.d	$a6, $a2, 16
	st.d	$a5, $a4, 0
	st.d	$a6, $a3, 16
	st.d	$a3, $a6, 24
	st.d	$a5, $a2, 16
	st.d	$a2, $a5, 24
	b	.LBB1_701
.LBB1_700:                              # %.thread2437
	pcalau12i	$a3, %got_pc_hi20(xx_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a3, 0
.LBB1_701:
	ld.d	$a3, $a7, 8
	st.d	$a7, $s5, 0
	beq	$a3, $a7, .LBB1_705
# %bb.702:
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a3, $a2, 0
	ld.d	$a4, $a7, 0
	st.d	$a4, $a3, 0
	ld.d	$a4, $s5, 0
	ld.d	$a3, $a2, 0
	ld.d	$a5, $a4, 0
	st.d	$a3, $a5, 8
	st.d	$a4, $a4, 0
	ld.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a4, $a4, 8
	pcalau12i	$a4, %got_pc_hi20(xx_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(xx_tmp)
	st.d	$a3, $a4, 0
	st.d	$a1, $a2, 0
	st.d	$a3, $s5, 0
	beqz	$a3, .LBB1_706
# %bb.703:
	beqz	$a1, .LBB1_706
# %bb.704:
	ld.d	$a4, $a3, 0
	pcalau12i	$a5, %got_pc_hi20(zz_tmp)
	ld.d	$a5, $a5, %got_pc_lo12(zz_tmp)
	st.d	$a4, $a5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a3, 0
	ld.d	$a1, $a2, 0
	ld.d	$a3, $s5, 0
	ld.d	$a4, $a1, 0
	ld.d	$a5, $a5, 0
	st.d	$a3, $a4, 8
	st.d	$a5, $a1, 0
	ld.d	$a1, $a2, 0
	st.d	$a1, $a5, 8
	b	.LBB1_706
.LBB1_705:                              # %.thread2988
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a2, $a1, 0
.LBB1_706:
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s0, $a2
	st.d	$a0, $s5, 0
	st.w	$a1, $s4, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s4, 0
	ld.d	$a1, $s5, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
.LBB1_707:
	move	$a0, $s6
	b	.LBB1_727
.LBB1_708:
                                        # implicit-def: $r4
.LBB1_709:                              # %._crit_edge
	ld.d	$a2, $a0, 24
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a3, $a1, %got_pc_lo12(xx_link)
	ld.d	$a1, $a2, 24
	st.d	$a2, $a3, 0
	beq	$a1, $a2, .LBB1_711
# %bb.710:
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	ld.d	$a5, $a2, 16
	st.d	$a1, $a4, 0
	st.d	$a5, $a1, 16
	st.d	$a1, $a5, 24
	st.d	$a2, $a2, 24
	st.d	$a2, $a2, 16
.LBB1_711:
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a4, $a2, 8
	st.d	$a2, $a1, 0
	beq	$a4, $a2, .LBB1_713
# %bb.712:
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	st.d	$a4, $a5, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a4, 0
	ld.d	$a4, $a1, 0
	ld.d	$a2, $a5, 0
	ld.d	$a5, $a4, 0
	st.d	$a2, $a5, 8
	st.d	$a4, $a4, 0
	ld.d	$a2, $a3, 0
	st.d	$a4, $a4, 8
.LBB1_713:
	ld.bu	$a3, $a2, 32
	st.d	$a2, $a1, 0
	addi.d	$a4, $a3, -11
	sltui	$a4, $a4, 2
	addi.d	$a5, $a2, 33
	pcalau12i	$a6, %got_pc_hi20(zz_lengths)
	ld.d	$a6, $a6, %got_pc_lo12(zz_lengths)
	add.d	$a3, $a6, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a5, $a4
	or	$a3, $a4, $a3
	ld.bu	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	st.w	$a3, $a4, 0
	slli.d	$a3, $a3, 3
	pcalau12i	$a5, %got_pc_hi20(zz_free)
	ld.d	$a5, $a5, %got_pc_lo12(zz_free)
	ldx.d	$a3, $a5, $a3
	st.d	$a3, $a2, 0
	ld.w	$a2, $a4, 0
	ld.d	$a3, $a1, 0
	slli.d	$a2, $a2, 3
	stx.d	$a3, $a5, $a2
	ld.d	$a2, $s6, 24
	beq	$a2, $s6, .LBB1_716
# %bb.714:
	ld.d	$a3, $s6, 16
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	pcalau12i	$a3, %got_pc_hi20(xx_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(xx_tmp)
	st.d	$a2, $a3, 0
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	st.d	$a0, $a3, 0
	st.d	$a2, $a1, 0
	beqz	$a2, .LBB1_253
# %bb.715:
	ld.d	$a1, $a2, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	ld.d	$a4, $a0, 16
	st.d	$a1, $a3, 0
	st.d	$a4, $a2, 16
	st.d	$a2, $a4, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB1_253
.LBB1_716:                              # %.thread3022
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a0, $a2, 0
	b	.LBB1_252
.LBB1_717:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a2, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a5, $a0, %pc_lo12(.L.str.24)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 31
.LBB1_718:
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 11
	move	$a2, $s2
.LBB1_719:
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.LBB1_720:
	ld.d	$a0, $s6, 24
	beq	$a0, $s6, .LBB1_724
# %bb.721:
	ld.d	$a1, $s6, 16
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$s0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	beqz	$a0, .LBB1_725
# %bb.722:
	beqz	$s0, .LBB1_725
# %bb.723:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $s0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a1, $s0, 16
	st.d	$s0, $a1, 24
	b	.LBB1_725
.LBB1_724:                              # %.thread2994
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$zero, $a0, 0
.LBB1_725:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
.LBB1_726:
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$zero, $sp, 0
	move	$a0, $s0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s7
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s1
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
.LBB1_727:
	ld.w	$a1, $s8, %pc_lo12(Manifest.depth)
	addi.d	$a1, $a1, -1
	st.w	$a1, $s8, %pc_lo12(Manifest.depth)
.LBB1_728:
	fld.d	$fs0, $sp, 848                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 856                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 864                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 872                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 880                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 888                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 896                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 904                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 912                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 920                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 928                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 936                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 944
	ret
.LBB1_729:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$fp, $a0, 0
.LBB1_730:
	ori	$a0, $zero, 17
	st.b	$a0, $fp, 32
	st.d	$fp, $fp, 0
	ld.bu	$a2, $s3, 0
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	st.d	$fp, $fp, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	st.w	$a2, $s2, 0
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	beqz	$a0, .LBB1_734
# %bb.731:
	alsl.d	$a1, $a2, $s1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB1_735
.LBB1_732:                              # %.thread2427
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$zero, $a0, 0
.LBB1_733:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 16
	b	.LBB1_726
.LBB1_734:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_735:
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s6, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $s6, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s5, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $s5, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s7, $a1, %got_pc_lo12(zz_hold)
	st.d	$fp, $s7, 0
	ld.d	$a1, $fp, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s4, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a2, $s5, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $sp, 288
	st.d	$a2, $a3, 8
	st.d	$a0, $s5, 0
	st.d	$a1, $s7, 0
	beqz	$a1, .LBB1_738
# %bb.736:
	beqz	$a0, .LBB1_738
# %bb.737:
	ld.d	$a2, $a1, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $s4, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB1_738:
	addi.d	$a4, $sp, 832
	move	$a0, $s0
	move	$a2, $zero
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ClosureExpand)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s3, 17
	slli.d	$a1, $a2, 3
	ldx.d	$s0, $s1, $a1
	st.w	$a2, $s2, 0
	beqz	$s0, .LBB1_740
# %bb.739:
	st.d	$s0, $s7, 0
	ld.d	$a1, $s0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_741
.LBB1_740:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	move	$s2, $s8
	move	$s8, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s8
	move	$s8, $s2
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	st.d	$s0, $s7, 0
.LBB1_741:
	ori	$a1, $zero, 17
	st.b	$a1, $s0, 32
	st.d	$s0, $s0, 0
	ld.bu	$a2, $s3, 0
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s1, $a1
	st.w	$a2, $s2, 0
	beqz	$a1, .LBB1_743
# %bb.742:
	st.d	$a1, $s7, 0
	ld.d	$a3, $a1, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a3, $a2, 0
	b	.LBB1_744
.LBB1_743:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
.LBB1_744:
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	st.d	$a1, $s6, 0
	st.d	$a1, $s5, 0
	st.d	$s0, $s7, 0
	ld.d	$a2, $s0, 0
	st.d	$a2, $s4, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $s7, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s4, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a3, $s5, 0
	ld.d	$a2, $s6, 0
	ld.d	$a1, $sp, 832
	st.d	$a3, $a4, 8
	st.d	$a2, $s5, 0
	st.d	$a1, $s7, 0
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	beqz	$a1, .LBB1_747
# %bb.745:
	beqz	$a2, .LBB1_747
# %bb.746:
	ld.d	$a3, $a1, 16
	ld.d	$a4, $a2, 16
	st.d	$a3, $s4, 0
	st.d	$a4, $a1, 16
	st.d	$a1, $a4, 24
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
.LBB1_747:
	st.d	$zero, $sp, 16
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	st.d	$a2, $sp, 8
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	b	.LBB1_727
.LBB1_748:
	move	$a0, $s3
	b	.LBB1_757
.LBB1_749:
	ld.d	$fp, $s0, 8
	beq	$s1, $fp, .LBB1_757
# %bb.750:
	ld.bu	$a1, $s1, 32
	beqz	$a1, .LBB1_752
# %bb.751:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
.LBB1_752:
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$s1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$fp, $a2, 0
	beqz	$fp, .LBB1_755
# %bb.753:
	ld.d	$a3, $fp, 0
	pcalau12i	$a4, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a4, 0
	ld.d	$a3, $s1, 0
	st.d	$a3, $fp, 0
.LBB1_754:
	ld.d	$a3, $a1, 0
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a3, 0
	ld.d	$a4, $a4, 0
	st.d	$a5, $a6, 8
	st.d	$a4, $a3, 0
	ld.d	$a3, $a1, 0
	st.d	$a3, $a4, 8
.LBB1_755:
	st.d	$s1, $a1, 0
	st.d	$s2, $a2, 0
	beqz	$s2, .LBB1_757
# %bb.756:
	ld.d	$a3, $s2, 0
	pcalau12i	$a4, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a4, 0
	ld.d	$a3, $s1, 0
	st.d	$a3, $s2, 0
	ld.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	ld.d	$a5, $a3, 0
	ld.d	$a4, $a4, 0
	st.d	$a2, $a5, 8
	st.d	$a4, $a3, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a4, 8
.LBB1_757:
	ld.d	$a1, $s4, 24
	beq	$a1, $s4, .LBB1_761
# %bb.758:
	ld.d	$a2, $s4, 16
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$s4, $s4, 24
	st.d	$s4, $s4, 16
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(xx_tmp)
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a0, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a2, 0
	beqz	$a1, .LBB1_762
# %bb.759:
	beqz	$a0, .LBB1_762
# %bb.760:
	ld.d	$a2, $a1, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	ld.d	$a4, $a0, 16
	st.d	$a2, $a3, 0
	st.d	$a4, $a1, 16
	st.d	$a1, $a4, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	b	.LBB1_762
.LBB1_761:                              # %.thread3012
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$zero, $a1, 0
.LBB1_762:
	move	$s0, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 8
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB1_766
# %bb.763:
	ld.d	$a0, $s5, 0
	bnez	$a0, .LBB1_766
# %bb.764:
	ld.d	$a0, $a2, 8
	bnez	$a0, .LBB1_766
# %bb.765:
	ld.d	$a0, $a2, 0
	beqz	$a0, .LBB1_793
.LBB1_766:
	move	$a0, $s0
	move	$a1, $s5
	b	.LBB1_439
.LBB1_767:
	ori	$a0, $zero, 12
	st.b	$a0, $fp, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(StringQuotedWord)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 40
	move	$s2, $a0
	andi	$a0, $a1, 4095
	pcaddu18i	$ra, %call36(FontFamilyAndFace)
	jirl	$ra, $ra, 0
	move	$a7, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a2, $a0, %pc_lo12(.L.str.26)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a5, $a0, %pc_lo12(.L.str.24)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 32
	ori	$a3, $zero, 2
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	move	$a6, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 11
	move	$a2, $s0
	b	.LBB1_719
.LBB1_768:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $fp, 0
.LBB1_769:
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	ori	$a0, $zero, 17
	st.b	$a0, $s2, 32
	st.d	$s2, $s2, 0
	ld.bu	$a2, $s5, 0
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	slli.d	$a1, $a2, 3
	ldx.d	$a0, $s3, $a1
	st.w	$a2, $s4, 0
	beqz	$a0, .LBB1_774
# %bb.770:
	st.d	$a0, $fp, 0
	ld.d	$a2, $a0, 0
	stx.d	$a2, $s3, $a1
	b	.LBB1_775
.LBB1_771:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $fp, 0
.LBB1_772:
	ori	$a0, $zero, 17
	st.b	$a0, $s2, 32
	st.d	$s2, $s2, 0
	ld.bu	$a2, $s5, 0
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	slli.d	$a1, $a2, 3
	ldx.d	$a0, $s3, $a1
	st.w	$a2, $s4, 0
	beqz	$a0, .LBB1_779
# %bb.773:
	st.d	$a0, $fp, 0
	ld.d	$a2, $a0, 0
	stx.d	$a2, $s3, $a1
	b	.LBB1_780
.LBB1_774:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_775:
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a3, 0
	st.d	$s2, $fp, 0
	ld.d	$a1, $s2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $a3, 0
	ld.d	$a1, $fp, 0
	ld.d	$a6, $a0, 0
	ld.d	$a7, $a2, 0
	st.d	$a1, $a6, 8
	st.d	$a7, $a0, 0
	ld.d	$a6, $a3, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $sp, 288
	st.d	$a6, $a7, 8
	st.d	$a0, $a3, 0
	st.d	$a1, $fp, 0
	beqz	$a1, .LBB1_778
# %bb.776:
	beqz	$a0, .LBB1_778
# %bb.777:
	ld.d	$a3, $a1, 16
	ld.d	$a6, $a0, 16
	st.d	$a3, $a2, 0
	st.d	$a6, $a1, 16
	st.d	$a1, $a6, 24
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
.LBB1_778:
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$zero, $sp, 0
	move	$a0, $s0
	move	$a2, $s7
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	b	.LBB1_784
.LBB1_779:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_780:
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a3, 0
	st.d	$s2, $fp, 0
	ld.d	$a1, $s2, 0
	pcalau12i	$a4, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a4, %got_pc_lo12(zz_tmp)
	st.d	$a1, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $a3, 0
	ld.d	$a1, $fp, 0
	ld.d	$a4, $a0, 0
	ld.d	$a7, $a6, 0
	st.d	$a1, $a4, 8
	st.d	$a7, $a0, 0
	ld.d	$a4, $a3, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $sp, 288
	st.d	$a4, $a7, 8
	st.d	$a0, $a3, 0
	st.d	$a1, $fp, 0
	beqz	$a1, .LBB1_783
# %bb.781:
	beqz	$a0, .LBB1_783
# %bb.782:
	ld.d	$a3, $a1, 16
	ld.d	$a4, $a0, 16
	st.d	$a3, $a6, 0
	st.d	$a4, $a1, 16
	st.d	$a1, $a4, 24
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
.LBB1_783:
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$zero, $sp, 0
	move	$a0, $s0
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	move	$a4, $s7
.LBB1_784:
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
.LBB1_785:
	ld.d	$a1, $s6, 24
	beq	$a1, $s6, .LBB1_789
# %bb.786:
	ld.d	$a2, $s6, 16
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(xx_tmp)
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a0, $a2, 0
	st.d	$a1, $fp, 0
	beqz	$a1, .LBB1_790
# %bb.787:
	beqz	$a0, .LBB1_790
# %bb.788:
	ld.d	$a2, $a1, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	ld.d	$a4, $a0, 16
	st.d	$a2, $a3, 0
	st.d	$a4, $a1, 16
	st.d	$a1, $a4, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	b	.LBB1_790
.LBB1_789:                              # %.thread3030
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a1, 0
	st.d	$zero, $fp, 0
.LBB1_790:
	move	$fp, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB1_792
# %bb.791:
	move	$a0, $s2
	b	.LBB1_254
.LBB1_792:
	move	$a0, $fp
	b	.LBB1_727
.LBB1_793:
	move	$a0, $s0
	b	.LBB1_727
.LBB1_794:
	move	$a0, $s6
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	b	.LBB1_727
.Lfunc_end1:
	.size	Manifest, .Lfunc_end1-Manifest
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_145-.LJTI1_0
	.word	.LBB1_255-.LJTI1_0
	.word	.LBB1_158-.LJTI1_0
	.word	.LBB1_157-.LJTI1_0
	.word	.LBB1_56-.LJTI1_0
	.word	.LBB1_56-.LJTI1_0
	.word	.LBB1_255-.LJTI1_0
	.word	.LBB1_255-.LJTI1_0
	.word	.LBB1_255-.LJTI1_0
	.word	.LBB1_35-.LJTI1_0
	.word	.LBB1_35-.LJTI1_0
	.word	.LBB1_255-.LJTI1_0
	.word	.LBB1_255-.LJTI1_0
	.word	.LBB1_255-.LJTI1_0
	.word	.LBB1_255-.LJTI1_0
	.word	.LBB1_467-.LJTI1_0
	.word	.LBB1_67-.LJTI1_0
	.word	.LBB1_67-.LJTI1_0
	.word	.LBB1_31-.LJTI1_0
	.word	.LBB1_54-.LJTI1_0
	.word	.LBB1_31-.LJTI1_0
	.word	.LBB1_54-.LJTI1_0
	.word	.LBB1_104-.LJTI1_0
	.word	.LBB1_104-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_48-.LJTI1_0
	.word	.LBB1_48-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
	.word	.LBB1_130-.LJTI1_0
	.word	.LBB1_135-.LJTI1_0
	.word	.LBB1_104-.LJTI1_0
	.word	.LBB1_104-.LJTI1_0
	.word	.LBB1_104-.LJTI1_0
	.word	.LBB1_104-.LJTI1_0
	.word	.LBB1_104-.LJTI1_0
	.word	.LBB1_104-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
	.word	.LBB1_161-.LJTI1_0
	.word	.LBB1_161-.LJTI1_0
	.word	.LBB1_15-.LJTI1_0
	.word	.LBB1_15-.LJTI1_0
	.word	.LBB1_15-.LJTI1_0
	.word	.LBB1_165-.LJTI1_0
	.word	.LBB1_177-.LJTI1_0
	.word	.LBB1_129-.LJTI1_0
	.word	.LBB1_81-.LJTI1_0
	.word	.LBB1_81-.LJTI1_0
	.word	.LBB1_176-.LJTI1_0
	.word	.LBB1_218-.LJTI1_0
	.word	.LBB1_255-.LJTI1_0
	.word	.LBB1_170-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_139-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_15-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_195-.LJTI1_0
	.word	.LBB1_78-.LJTI1_0
	.word	.LBB1_78-.LJTI1_0
	.word	.LBB1_30-.LJTI1_0
	.word	.LBB1_30-.LJTI1_0
	.word	.LBB1_19-.LJTI1_0
	.word	.LBB1_19-.LJTI1_0
	.word	.LBB1_19-.LJTI1_0
	.word	.LBB1_197-.LJTI1_0
	.word	.LBB1_118-.LJTI1_0
	.word	.LBB1_214-.LJTI1_0
	.word	.LBB1_69-.LJTI1_0
	.word	.LBB1_69-.LJTI1_0
	.word	.LBB1_242-.LJTI1_0
	.word	.LBB1_255-.LJTI1_0
	.word	.LBB1_255-.LJTI1_0
	.word	.LBB1_255-.LJTI1_0
	.word	.LBB1_255-.LJTI1_0
	.word	.LBB1_255-.LJTI1_0
	.word	.LBB1_255-.LJTI1_0
	.word	.LBB1_255-.LJTI1_0
	.word	.LBB1_255-.LJTI1_0
	.word	.LBB1_255-.LJTI1_0
	.word	.LBB1_255-.LJTI1_0
	.word	.LBB1_181-.LJTI1_0
	.word	.LBB1_128-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_39-.LJTI1_0
	.word	.LBB1_39-.LJTI1_0
	.word	.LBB1_44-.LJTI1_0
	.word	.LBB1_44-.LJTI1_0
.LJTI1_1:
	.word	.LBB1_14-.LJTI1_1
	.word	.LBB1_257-.LJTI1_1
	.word	.LBB1_259-.LJTI1_1
	.word	.LBB1_260-.LJTI1_1
	.word	.LBB1_261-.LJTI1_1
	.word	.LBB1_262-.LJTI1_1
	.word	.LBB1_256-.LJTI1_1
	.word	.LBB1_262-.LJTI1_1
	.word	.LBB1_258-.LJTI1_1
.LJTI1_2:
	.word	.LBB1_512-.LJTI1_2
	.word	.LBB1_520-.LJTI1_2
	.word	.LBB1_529-.LJTI1_2
	.word	.LBB1_522-.LJTI1_2
	.word	.LBB1_514-.LJTI1_2
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function ManifestCl
	.type	ManifestCl,@function
ManifestCl:                             # @ManifestCl
# %bb.0:
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	move	$t2, $a2
	move	$s6, $a0
	ld.hu	$a2, $a2, 0
	ld.h	$a0, $a0, 64
	bstrpick.d	$a2, $a2, 7, 7
	bstrins.d	$a0, $a2, 7, 7
	st.h	$a0, $s6, 64
	ld.hu	$a2, $t2, 0
	bstrpick.d	$a2, $a2, 8, 8
	move	$t0, $a0
	bstrins.d	$t0, $a2, 8, 8
	st.h	$t0, $s6, 64
	ld.hu	$a2, $t2, 0
	bstrpick.d	$a2, $a2, 9, 9
	bstrins.d	$t0, $a2, 9, 9
	st.h	$t0, $s6, 64
	ld.hu	$a2, $t2, 0
	bstrpick.d	$a2, $a2, 12, 10
	bstrins.d	$t0, $a2, 12, 10
	st.h	$t0, $s6, 64
	ld.hu	$a2, $t2, 0
	srli.d	$a2, $a2, 13
	bstrins.d	$t0, $a2, 63, 13
	st.h	$t0, $s6, 64
	ld.h	$a2, $t2, 2
	st.h	$a2, $s6, 66
	ld.bu	$a2, $t2, 4
	ld.b	$t0, $s6, 68
	andi	$a2, $a2, 3
	bstrins.d	$t0, $a2, 1, 0
	st.b	$t0, $s6, 68
	ld.bu	$a2, $t2, 4
	bstrpick.d	$a2, $a2, 3, 2
	bstrins.d	$t0, $a2, 3, 2
	st.b	$t0, $s6, 68
	ld.bu	$a2, $t2, 4
	andi	$t0, $t0, 143
	srli.d	$a2, $a2, 4
	bstrins.d	$t0, $a2, 6, 4
	st.b	$t0, $s6, 68
	ld.bu	$a2, $t2, 0
	bstrpick.d	$a2, $a2, 3, 3
	bstrins.d	$a0, $a2, 3, 3
	st.b	$a0, $s6, 64
	ld.hu	$a2, $t2, 4
	ld.h	$t0, $s6, 68
	bstrpick.d	$a2, $a2, 7, 7
	bstrins.d	$t0, $a2, 7, 7
	st.h	$t0, $s6, 68
	ld.hu	$a2, $t2, 4
	bstrpick.d	$a2, $a2, 8, 8
	bstrins.d	$t0, $a2, 8, 8
	st.h	$t0, $s6, 68
	ld.hu	$a2, $t2, 4
	bstrpick.d	$a2, $a2, 9, 9
	bstrins.d	$t0, $a2, 9, 9
	st.h	$t0, $s6, 68
	ld.hu	$a2, $t2, 4
	bstrpick.d	$a2, $a2, 12, 10
	bstrins.d	$t0, $a2, 12, 10
	st.h	$t0, $s6, 68
	ld.hu	$a2, $t2, 4
	srli.d	$a2, $a2, 13
	bstrins.d	$t0, $a2, 63, 13
	st.h	$t0, $s6, 68
	ld.h	$a2, $t2, 6
	st.h	$a2, $s6, 70
	ld.wu	$a2, $t2, 12
	ld.w	$t0, $s6, 76
	andi	$a2, $a2, 4095
	bstrins.d	$t0, $a2, 11, 0
	st.w	$t0, $s6, 76
	ld.wu	$a2, $t2, 12
	bstrpick.d	$a2, $a2, 21, 12
	bstrins.d	$t0, $a2, 21, 12
	st.w	$t0, $s6, 76
	ld.wu	$a2, $t2, 12
	bstrpick.d	$a2, $a2, 23, 22
	bstrins.d	$t0, $a2, 23, 22
	st.w	$t0, $s6, 76
	ld.wu	$a2, $t2, 12
	bstrpick.d	$a2, $a2, 29, 24
	bstrins.d	$t0, $a2, 29, 24
	st.w	$t0, $s6, 76
	ld.w	$a2, $t2, 12
	srli.d	$a2, $a2, 31
	bstrins.d	$t0, $a2, 63, 31
	st.w	$t0, $s6, 76
	ld.wu	$a2, $t2, 12
	lu12i.w	$t1, -262145
	ori	$t1, $t1, 4095
	lu32i.d	$t1, 0
	and	$t0, $t0, $t1
	srli.d	$a2, $a2, 30
	bstrins.d	$t0, $a2, 30, 30
	st.w	$t0, $s6, 76
	ld.bu	$a2, $t2, 0
	srli.d	$a0, $a0, 1
	bstrins.d	$a2, $a0, 63, 1
	st.b	$a2, $s6, 64
	ld.bu	$a0, $t2, 0
	bstrpick.d	$a0, $a0, 1, 1
	bstrins.d	$a2, $a0, 1, 1
	st.b	$a2, $s6, 64
	ld.bu	$a0, $t2, 0
	bstrpick.d	$a0, $a0, 2, 2
	bstrins.d	$a2, $a0, 2, 2
	st.b	$a2, $s6, 64
	ld.bu	$a0, $t2, 0
	andi	$a2, $a2, 143
	srli.d	$a0, $a0, 4
	bstrins.d	$a2, $a0, 6, 4
	st.b	$a2, $s6, 64
	ld.h	$a0, $t2, 8
	st.h	$a0, $s6, 72
	st.d	$t2, $sp, 192                   # 8-byte Folded Spill
	ld.h	$a0, $t2, 10
	ld.d	$t0, $sp, 328
	ld.d	$a2, $sp, 336
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	st.h	$a0, $s6, 74
	ld.d	$a0, $t0, 0
	ld.d	$s0, $s6, 80
	st.d	$a6, $sp, 200                   # 8-byte Folded Spill
	move	$s7, $a4
	move	$s4, $a3
	move	$s5, $a1
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	st.d	$t0, $sp, 104                   # 8-byte Folded Spill
	beqz	$a0, .LBB2_3
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(GalleySym)
	ld.d	$a0, $a0, %got_pc_lo12(GalleySym)
	ld.d	$a0, $a0, 0
	beq	$s0, $a0, .LBB2_33
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(ForceGalleySym)
	ld.d	$a0, $a0, %got_pc_lo12(ForceGalleySym)
	ld.d	$a0, $a0, 0
	beq	$s0, $a0, .LBB2_33
.LBB2_3:
	st.d	$s7, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s2, $s6, 8
	ld.d	$a0, $sp, 320
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	beq	$s2, $s6, .LBB2_28
# %bb.4:                                # %.preheader.preheader
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	ori	$fp, $zero, 1
	ori	$s1, $zero, 2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(zz_tmp)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(nenclose)
	addi.d	$a0, $a0, %pc_lo12(nenclose)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(nbt)
	addi.d	$a0, $a0, %pc_lo12(nbt)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(nft)
	addi.d	$a0, $a0, %pc_lo12(nft)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ntarget)
	addi.d	$a0, $a0, %pc_lo12(ntarget)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$s4, $a0, %pc_lo12(.L.str.48)
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_5:                                # %.loopexit.loopexit
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$s7, $s5
.LBB2_6:                                # %.loopexit
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.bu	$a0, $s7, 32
	ld.d	$s2, $s2, 8
	addi.d	$a0, $a0, -11
	sltui	$a0, $a0, 2
	maskeqz	$fp, $fp, $a0
	beq	$s2, $s6, .LBB2_27
.LBB2_7:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
                                        #     Child Loop BB2_12 Depth 2
	move	$s8, $s2
	.p2align	4, , 16
.LBB2_8:                                #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s8, $s8, 16
	ld.bu	$a0, $s8, 32
	beqz	$a0, .LBB2_8
# %bb.9:                                #   in Loop: Header=BB2_7 Depth=1
	ori	$a1, $zero, 10
	beq	$a0, $a1, .LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s0
	move	$a3, $zero
	move	$a5, $s4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_11:                               # %.loopexit387
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$s5, $s8, 8
	addi.d	$s3, $s8, 32
	.p2align	4, , 16
.LBB2_12:                               #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $s5, 16
	ld.bu	$a0, $s5, 32
	beqz	$a0, .LBB2_12
# %bb.13:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a1, $a0, -11
	bltu	$a1, $s1, .LBB2_5
# %bb.14:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s8, 80
	ld.bu	$a2, $a1, 43
	andi	$a2, $a2, 8
	bnez	$a2, .LBB2_5
# %bb.15:                               #   in Loop: Header=BB2_7 Depth=1
	ld.hu	$a1, $a1, 41
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	and	$a1, $a1, $a2
	beqz	$a1, .LBB2_18
# %bb.16:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$zero, $sp, 0
	move	$a0, $s5
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -11
	bltu	$a0, $s1, .LBB2_6
# %bb.17:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $s8, 80
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	ori	$a0, $zero, 8
	ori	$a1, $zero, 41
	ori	$a3, $zero, 1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB2_6
.LBB2_18:                               #   in Loop: Header=BB2_7 Depth=1
	beq	$a0, $s1, .LBB2_21
# %bb.19:                               #   in Loop: Header=BB2_7 Depth=1
	ori	$a1, $zero, 78
	bne	$a0, $a1, .LBB2_5
# %bb.20:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$zero, $sp, 0
	move	$a0, $s5
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	b	.LBB2_6
.LBB2_21:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $s5, 80
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -144
	bltu	$s1, $a0, .LBB2_5
# %bb.22:                               #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $s5
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ParameterCheck)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_5
# %bb.23:                               #   in Loop: Header=BB2_7 Depth=1
	move	$s7, $a0
	ld.d	$a0, $s5, 24
	beq	$a0, $s5, .LBB2_25
# %bb.24:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s5, 16
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$s5, $s5, 24
	st.d	$s5, $s5, 16
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 16
	ld.d	$a2, $s7, 16
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	st.d	$s7, $a3, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	st.d	$a1, $a3, 0
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	st.d	$a1, $s7, 16
	st.d	$s7, $a1, 24
	b	.LBB2_26
.LBB2_25:                               # %.thread
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$s7, $a0, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$zero, $a0, 0
.LBB2_26:                               #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	b	.LBB2_6
.LBB2_27:                               # %._crit_edge
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	beqz	$fp, .LBB2_29
.LBB2_28:                               # %._crit_edge.thread
	ld.d	$a0, $s0, 96
	beqz	$a0, .LBB2_35
.LBB2_29:
	move	$s8, $zero
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ld.hu	$a0, $s0, 41
	bnez	$t0, .LBB2_94
.LBB2_30:
	andi	$a1, $a0, 64
	beqz	$a1, .LBB2_94
# %bb.31:
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s3, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s3, 8
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s2, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s0, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s1, $s0, $a1
	beqz	$s1, .LBB2_45
# %bb.32:
	alsl.d	$a0, $a0, $s0, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s1, $a1, 0
	ld.d	$a1, $s1, 0
	st.d	$a1, $a0, 0
	b	.LBB2_46
.LBB2_33:
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$fp, $a0, %got_pc_lo12(zz_hold)
	ld.d	$a1, $s6, 24
	st.d	$s6, $fp, 0
	beq	$a1, $s6, .LBB2_64
# %bb.34:
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	ld.d	$a2, $s6, 16
	st.d	$a1, $a0, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	b	.LBB2_65
.LBB2_35:
	ld.d	$a1, $s0, 48
	pcalau12i	$a0, %got_pc_hi20(StartSym)
	ld.d	$a0, $a0, %got_pc_lo12(StartSym)
	ld.d	$a0, $a0, 0
	beq	$a1, $a0, .LBB2_29
# %bb.36:
	move	$fp, $a5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(SearchEnv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_85
# %bb.37:
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 2
	move	$a5, $fp
	bne	$a1, $a2, .LBB2_29
# %bb.38:
	move	$s3, $a5
	ld.d	$s5, $a0, 24
	.p2align	4, , 16
.LBB2_39:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s5, $s5, 0
	ld.bu	$a1, $s5, 32
	beqz	$a1, .LBB2_39
# %bb.40:
	ori	$s1, $zero, 82
	bne	$a1, $s1, .LBB2_139
.LBB2_41:                               # %.thread381
	ld.d	$a1, $s5, 8
	ld.d	$a2, $s5, 0
	beq	$a1, $a2, .LBB2_43
# %bb.42:
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SetEnv)
	jirl	$ra, $ra, 0
	move	$s5, $a0
.LBB2_43:
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s1, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s1, 17
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s0, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s8, $fp, $a1
	beqz	$s8, .LBB2_86
# %bb.44:
	alsl.d	$a0, $a0, $fp, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s8, $a1, 0
	ld.d	$a1, $s8, 0
	st.d	$a1, $a0, 0
	b	.LBB2_87
.LBB2_45:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB2_46:
	ori	$a0, $zero, 8
	st.b	$a0, $s1, 32
	st.d	$s1, $s1, 24
	st.d	$s1, $s1, 16
	st.d	$s1, $s1, 8
	st.d	$s1, $s1, 0
	ld.h	$a0, $s6, 34
	st.h	$a0, $s1, 34
	ld.wu	$a0, $s6, 36
	ld.wu	$a1, $s1, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s1, 36
	ld.wu	$a1, $s6, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s1, 36
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a1, $s1, 80
	st.d	$zero, $s1, 128
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 208                  # 16-byte Folded Spill
	vst	$vr0, $s1, 104
	ld.hu	$a0, $s1, 42
	ld.b	$a1, $a1, 43
	lu12i.w	$fp, 15
	ori	$a2, $fp, 3709
	and	$a0, $a0, $a2
	bstrpick.d	$a1, $a1, 60, 5
	bstrins.d	$a0, $a1, 8, 8
	st.d	$zero, $s1, 96
	ori	$a0, $a0, 128
	st.h	$a0, $s1, 42
	ld.d	$a0, $s6, 24
	beq	$a0, $s6, .LBB2_48
# %bb.47:
	ld.d	$a1, $s6, 16
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$s1, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a2, $a0, 16
	st.d	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $s1, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $s1, 16
	st.d	$s1, $a2, 24
	b	.LBB2_49
.LBB2_48:                               # %.thread382
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$zero, $a0, 0
.LBB2_49:
	ld.bu	$a2, $s3, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	st.w	$a2, $s2, 0
	beqz	$a0, .LBB2_51
# %bb.50:
	alsl.d	$a1, $a2, $s0, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB2_52
.LBB2_51:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB2_52:
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a1, %got_pc_lo12(zz_hold)
	st.d	$s1, $a4, 0
	ld.d	$a5, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $a3, 0
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a0, 0
	ld.d	$a7, $a1, 0
	st.d	$a5, $a6, 8
	st.d	$a7, $a0, 0
	ld.d	$a5, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a5, $a7, 8
	st.d	$a0, $a3, 0
	st.d	$s6, $a4, 0
	beqz	$a0, .LBB2_54
# %bb.53:
	ld.d	$a2, $s6, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s6, 16
	st.d	$s6, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB2_54:
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AttachEnv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(SetTarget)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 126
	andi	$a0, $a0, 32
	bnez	$a0, .LBB2_56
# %bb.55:
	move	$a0, $zero
	b	.LBB2_57
.LBB2_56:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(BuildEnclose)
	jirl	$ra, $ra, 0
.LBB2_57:
	st.d	$a0, $s1, 136
	vld	$vr0, $sp, 208                  # 16-byte Folded Reload
	vst	$vr0, $s1, 144
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 4
	bnez	$a1, .LBB2_59
# %bb.58:
	ld.d	$a0, $s0, 0
	sltu	$a0, $zero, $a0
	slli.d	$a0, $a0, 2
.LBB2_59:
	ld.hu	$a1, $s1, 42
	ori	$a2, $fp, 4091
	and	$a1, $a1, $a2
	or	$a0, $a1, $a0
	st.h	$a0, $s1, 42
	ld.d	$a0, $s4, 8
	bnez	$a0, .LBB2_63
# %bb.60:
	ld.d	$a0, $s4, 0
	bnez	$a0, .LBB2_63
# %bb.61:
	ld.d	$a0, $s0, 8
	bnez	$a0, .LBB2_63
# %bb.62:
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB2_135
.LBB2_63:
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(insert_split)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$s8, .LBB2_136
	b	.LBB2_137
.LBB2_64:
	move	$a1, $zero
.LBB2_65:
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$a1, $a0, 0
	ld.d	$a2, $t0, 0
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$s0, $a3, %got_pc_lo12(zz_res)
	st.d	$a2, $s0, 0
	st.d	$a1, $fp, 0
	beqz	$a1, .LBB2_68
# %bb.66:
	beqz	$a2, .LBB2_68
# %bb.67:
	ld.d	$a3, $a1, 16
	pcalau12i	$a4, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(zz_tmp)
	ld.d	$a5, $a2, 16
	st.d	$a3, $a4, 0
	st.d	$a5, $a1, 16
	st.d	$a1, $a5, 24
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
.LBB2_68:
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $t0, 0
	ld.d	$a1, $a1, 8
	.p2align	4, , 16
.LBB2_69:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB2_69
# %bb.70:
	ld.d	$s1, $a1, 8
	.p2align	4, , 16
.LBB2_71:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s1, 16
	ld.bu	$a1, $s1, 32
	beqz	$a1, .LBB2_71
# %bb.72:
	ld.d	$a1, $s1, 8
	pcalau12i	$a2, %got_pc_hi20(xx_link)
	ld.d	$s2, $a2, %got_pc_lo12(xx_link)
	ld.d	$a2, $a1, 24
	st.d	$a1, $s2, 0
	beq	$a2, $a1, .LBB2_74
# %bb.73:
	ld.d	$a3, $a1, 16
	st.d	$a2, $s0, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	b	.LBB2_75
.LBB2_74:
	move	$a2, $zero
.LBB2_75:
	ld.d	$a3, $a1, 8
	st.d	$a2, $a0, 0
	st.d	$a1, $fp, 0
	move	$s8, $s4
	beq	$a3, $a1, .LBB2_77
# %bb.76:
	st.d	$a3, $s0, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a3, 0
	ld.d	$a2, $fp, 0
	ld.d	$a1, $s0, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $s2, 0
	st.d	$a2, $a2, 8
.LBB2_77:
	ld.bu	$a2, $a1, 32
	st.d	$a1, $fp, 0
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	pcalau12i	$a5, %got_pc_hi20(zz_lengths)
	ld.d	$s3, $a5, %got_pc_lo12(zz_lengths)
	add.d	$a2, $s3, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_size)
	ld.d	$s5, $a3, %got_pc_lo12(zz_size)
	st.w	$a2, $s5, 0
	slli.d	$a2, $a2, 3
	pcalau12i	$a3, %got_pc_hi20(zz_free)
	ld.d	$s4, $a3, %got_pc_lo12(zz_free)
	ldx.d	$a2, $s4, $a2
	st.d	$a2, $a1, 0
	ld.w	$a1, $s5, 0
	ld.d	$a2, $fp, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s4, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB2_79
# %bb.78:
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB2_79:
	ld.bu	$a2, $s3, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s4, $a0
	st.w	$a2, $s5, 0
	beqz	$a0, .LBB2_81
# %bb.80:
	st.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s4, 3
	st.d	$a1, $a2, 0
	b	.LBB2_82
.LBB2_81:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB2_82:
	move	$a3, $s8
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	st.d	$a0, $s0, 0
	st.d	$s1, $fp, 0
	ld.d	$a2, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a2, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $fp, 0
	ld.d	$a5, $a0, 0
	ld.d	$a4, $a1, 0
	st.d	$a2, $a5, 8
	st.d	$a4, $a0, 0
	ld.d	$a2, $s0, 0
	ld.d	$a0, $s2, 0
	st.d	$a2, $a4, 8
	st.d	$a0, $s0, 0
	st.d	$s6, $fp, 0
	beqz	$a0, .LBB2_84
# %bb.83:
	ld.d	$a2, $s6, 16
	ld.d	$a4, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a4, $s6, 16
	st.d	$s6, $a4, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB2_84:
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 0
	st.d	$zero, $a1, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	st.d	$a2, $sp, 16
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	move	$a4, $s7
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	b	.LBB2_138
.LBB2_85:
	move	$s8, $zero
	move	$a5, $fp
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ld.hu	$a0, $s0, 41
	beqz	$t0, .LBB2_30
	b	.LBB2_94
.LBB2_86:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s8, $a0, 0
.LBB2_87:
	ori	$a0, $zero, 17
	st.b	$a0, $s8, 32
	st.d	$s8, $s8, 0
	ld.bu	$a2, $s1, 0
	st.d	$s8, $s8, 24
	st.d	$s8, $s8, 16
	st.d	$s8, $s8, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s0, 0
	beqz	$a0, .LBB2_89
# %bb.88:
	alsl.d	$a1, $a2, $fp, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB2_90
.LBB2_89:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB2_90:
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a1, %got_pc_lo12(zz_hold)
	st.d	$s8, $a4, 0
	ld.d	$a5, $s8, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s8, 0
	ld.d	$a0, $a3, 0
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a0, 0
	ld.d	$a7, $a1, 0
	st.d	$a5, $a6, 8
	st.d	$a7, $a0, 0
	ld.d	$a5, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a5, $a7, 8
	st.d	$a0, $a3, 0
	st.d	$s5, $a4, 0
	beqz	$s5, .LBB2_93
# %bb.91:
	beqz	$a0, .LBB2_93
# %bb.92:
	ld.d	$a2, $s5, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s5, 16
	st.d	$s5, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB2_93:
	move	$a5, $s3
	ld.hu	$a0, $s0, 41
	beqz	$t0, .LBB2_30
.LBB2_94:
	ld.d	$a1, $a5, 0
	beq	$a1, $s0, .LBB2_108
# %bb.95:
	bnez	$t0, .LBB2_109
# %bb.96:
	andi	$a2, $a0, 1536
	beqz	$a2, .LBB2_109
# %bb.97:
	ld.bu	$a2, $s0, 43
	bstrpick.d	$a2, $a2, 4, 4
	andi	$a3, $a0, 1024
	sltui	$a3, $a3, 1
	and	$a2, $a3, $a2
	bnez	$a2, .LBB2_109
# %bb.98:
	andi	$a0, $a0, 512
	beqz	$a0, .LBB2_101
# %bb.99:
	beqz	$a1, .LBB2_101
# %bb.100:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(SearchUses)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_109
.LBB2_101:
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AttachEnv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 4
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	bnez	$a1, .LBB2_103
# %bb.102:
	ld.d	$a0, $a2, 0
	sltu	$a0, $zero, $a0
	slli.d	$a0, $a0, 2
.LBB2_103:
	ld.hu	$a1, $s6, 42
	lu12i.w	$a3, 15
	ori	$a3, $a3, 4091
	and	$a1, $a1, $a3
	or	$a0, $a1, $a0
	st.h	$a0, $s6, 42
	ld.d	$a0, $s4, 8
	bnez	$a0, .LBB2_107
# %bb.104:
	ld.d	$a0, $s4, 0
	bnez	$a0, .LBB2_107
# %bb.105:
	ld.d	$a0, $a2, 8
	bnez	$a0, .LBB2_107
# %bb.106:
	ld.d	$a0, $a2, 0
	beqz	$a0, .LBB2_141
.LBB2_107:
	move	$a0, $s6
	move	$a1, $s4
	pcaddu18i	$ra, %call36(insert_split)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$s8, .LBB2_136
	b	.LBB2_137
.LBB2_108:
	st.d	$zero, $a5, 0
.LBB2_109:
	ori	$a2, $zero, 1
	addi.d	$a4, $sp, 224
	move	$a0, $s6
	move	$a1, $s5
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ClosureExpand)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s2, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s2, 17
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s0, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s6, $fp, $a1
	beqz	$s6, .LBB2_111
# %bb.110:
	alsl.d	$a0, $a0, $fp, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s6, $a1, 0
	ld.d	$a1, $s6, 0
	st.d	$a1, $a0, 0
	b	.LBB2_112
.LBB2_111:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s6, $a0, 0
.LBB2_112:
	ori	$a0, $zero, 17
	st.b	$a0, $s6, 32
	st.d	$s6, $s6, 0
	ld.bu	$a2, $s2, 0
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	st.d	$s6, $s6, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s0, 0
	move	$s7, $s5
	beqz	$a0, .LBB2_114
# %bb.113:
	alsl.d	$a1, $a2, $fp, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB2_115
.LBB2_114:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB2_115:
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a1, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$s4, $a2, %got_pc_lo12(zz_res)
	st.d	$a0, $s4, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$s5, $a2, %got_pc_lo12(zz_hold)
	st.d	$s6, $s5, 0
	ld.d	$a2, $s6, 0
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$s1, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a2, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $s4, 0
	ld.d	$a2, $s5, 0
	ld.d	$a3, $a0, 0
	ld.d	$a4, $s1, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a0, 0
	ld.d	$a2, $s4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a1, $sp, 224
	st.d	$a2, $a4, 8
	st.d	$a0, $s4, 0
	st.d	$a1, $s5, 0
	beqz	$a1, .LBB2_118
# %bb.116:
	beqz	$a0, .LBB2_118
# %bb.117:
	ld.d	$a2, $a1, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $s1, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB2_118:
	ld.bu	$a0, $s3, 32
	ori	$a2, $zero, 57
	bne	$a0, $a2, .LBB2_125
# %bb.119:
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 146
	beq	$a0, $a1, .LBB2_121
# %bb.120:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a5, $a0, %pc_lo12(.L.str.52)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_121:
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 48
	ld.d	$a0, $a0, 104
	bnez	$a0, .LBB2_123
# %bb.122:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a5, $a0, %pc_lo12(.L.str.53)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_123:
	ld.bu	$a2, $s2, 2
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s0, 0
	beqz	$a0, .LBB2_126
# %bb.124:
	st.d	$a0, $s5, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $fp, 3
	st.d	$a1, $a2, 0
	b	.LBB2_127
.LBB2_125:
	move	$fp, $s3
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	b	.LBB2_134
.LBB2_126:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
.LBB2_127:
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	ori	$s2, $zero, 2
	st.b	$s2, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.h	$a1, $s3, 34
	st.h	$a1, $a0, 34
	ld.wu	$a1, $s3, 36
	ld.wu	$a2, $a0, 36
	srli.d	$a2, $a2, 20
	move	$a3, $a1
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $a0, 36
	ld.wu	$a2, $s3, 36
	srli.d	$a2, $a2, 20
	bstrins.d	$a1, $a2, 63, 20
	st.w	$a1, $a0, 36
	ld.d	$a1, $s0, 48
	ld.d	$a1, $a1, 104
	st.d	$a1, $a0, 80
	move	$fp, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(FilterSetFileNames)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	pcalau12i	$a0, %pc_hi20(nenclose)
	addi.d	$a0, $a0, %pc_lo12(nenclose)
	st.d	$a0, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(nbt)
	addi.d	$a3, $a0, %pc_lo12(nbt)
	pcalau12i	$a0, %pc_hi20(nft)
	addi.d	$a4, $a0, %pc_lo12(nft)
	pcalau12i	$a0, %pc_hi20(ntarget)
	addi.d	$a5, $a0, %pc_lo12(ntarget)
	move	$a0, $fp
	move	$a1, $s7
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	move	$s0, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -11
	bltu	$a0, $s2, .LBB2_129
# %bb.128:
	ld.d	$a0, $a1, 48
	addi.d	$fp, $s0, 32
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a2, $a0, %pc_lo12(.L.str.54)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 19
	ori	$a3, $zero, 1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_129:
	ld.d	$a2, $sp, 224
	addi.d	$a1, $s0, 64
	move	$a0, $s3
	pcaddu18i	$ra, %call36(FilterExecute)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 24
	beq	$a0, $s3, .LBB2_132
# %bb.130:
	ld.d	$a1, $s3, 16
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$s3, $s3, 24
	st.d	$s3, $s3, 16
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$a0, $a1, 0
	st.d	$fp, $s4, 0
	st.d	$a0, $s5, 0
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	beqz	$fp, .LBB2_133
# %bb.131:
	ld.d	$a1, $a0, 16
	ld.d	$a2, $fp, 16
	st.d	$a1, $s1, 0
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	st.d	$a1, $fp, 16
	st.d	$fp, $a1, 24
	b	.LBB2_133
.LBB2_132:                              # %.thread383
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a0, 0
	st.d	$fp, $s4, 0
	st.d	$zero, $s5, 0
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
.LBB2_133:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
.LBB2_134:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$zero, $sp, 0
	move	$a0, $fp
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	move	$a4, $s0
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	move	$a7, $s2
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB2_135:
	beqz	$s8, .LBB2_137
.LBB2_136:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB2_137:
	move	$a0, $s1
.LBB2_138:
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB2_139:
	pcalau12i	$a2, %got_pc_hi20(stderr)
	ld.d	$a2, $a2, %got_pc_lo12(stderr)
	ld.d	$fp, $a2, 0
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.bu	$a1, $s5, 32
	beq	$a1, $s1, .LBB2_41
# %bb.140:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a5, $a0, %pc_lo12(.L.str.51)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB2_41
.LBB2_141:
	move	$s1, $s6
	bnez	$s8, .LBB2_136
	b	.LBB2_137
.Lfunc_end2:
	.size	ManifestCl, .Lfunc_end2-ManifestCl
                                        # -- End function
	.p2align	5                               # -- Begin function insert_split
	.type	insert_split,@function
insert_split:                           # @insert_split
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
	move	$fp, $a0
	ld.bu	$a0, $a0, 32
	ori	$a3, $zero, 9
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	bne	$a0, $a3, .LBB3_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a5, $a0, %pc_lo12(.L.str.55)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB3_2:
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $a4, 9
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a5, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $a5, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s6, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$a6, $s6, $a1
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	beqz	$a6, .LBB3_4
# %bb.3:
	alsl.d	$a0, $a0, $s6, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a6, $a1, 0
	ld.d	$a1, $a6, 0
	st.d	$a1, $a0, 0
	b	.LBB3_5
.LBB3_4:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	move	$a6, $a0
.LBB3_5:
	ori	$a0, $zero, 9
	st.b	$a0, $a6, 32
	st.d	$a6, $a6, 24
	st.d	$a6, $a6, 16
	st.d	$a6, $a6, 8
	st.d	$a6, $a6, 0
	ld.h	$a0, $fp, 34
	st.h	$a0, $a6, 34
	ld.wu	$a0, $fp, 36
	ld.wu	$a1, $a6, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $a6, 36
	ld.wu	$a1, $fp, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $a6, 36
	ld.d	$a0, $fp, 24
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	beq	$a0, $fp, .LBB3_7
# %bb.6:
	ld.d	$a1, $fp, 16
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a6, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a2, $a0, 16
	st.d	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a6, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $a6, 16
	st.d	$a6, $a2, 24
	b	.LBB3_8
.LBB3_7:                                # %.thread
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$a6, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$zero, $a0, 0
.LBB3_8:                                # %.preheader
	ori	$a1, $zero, 1
	ori	$s8, $zero, 16
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$s0, $a0, %got_pc_lo12(xx_link)
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$s7, $a0, %got_pc_lo12(zz_res)
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$s1, $a0, %got_pc_lo12(zz_hold)
	pcalau12i	$a0, %got_pc_hi20(zz_tmp)
	ld.d	$s2, $a0, %got_pc_lo12(zz_tmp)
	move	$s4, $zero
	b	.LBB3_13
	.p2align	4, , 16
.LBB3_9:                                # %.thread84
                                        #   in Loop: Header=BB3_13 Depth=1
	st.d	$a0, $s7, 0
	st.d	$s3, $s1, 0
	move	$a1, $a0
.LBB3_10:                               #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a2, $s3, 16
	st.d	$a0, $s3, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $s2, 0
	st.d	$s3, $a0, 24
.LBB3_11:                               # %.sink.split
                                        #   in Loop: Header=BB3_13 Depth=1
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB3_12:                               #   in Loop: Header=BB3_13 Depth=1
	ori	$s4, $zero, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$s8, $zero, 15
	move	$a1, $zero
	beqz	$a0, .LBB3_49
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	slli.d	$s5, $s4, 3
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s5
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	bnez	$a0, .LBB3_15
# %bb.14:                               #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s5
	beqz	$a0, .LBB3_44
.LBB3_15:                               #   in Loop: Header=BB3_13 Depth=1
	ldx.bu	$a0, $a4, $s8
	slli.d	$a1, $a0, 3
	ldx.d	$s3, $s6, $a1
	st.w	$a0, $a5, 0
	beqz	$s3, .LBB3_17
# %bb.16:                               #   in Loop: Header=BB3_13 Depth=1
	st.d	$s3, $s1, 0
	ld.d	$a1, $s3, 0
	alsl.d	$a0, $a0, $s6, 3
	st.d	$a1, $a0, 0
	b	.LBB3_18
	.p2align	4, , 16
.LBB3_17:                               #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	move	$s3, $a0
	st.d	$a0, $s1, 0
.LBB3_18:                               #   in Loop: Header=BB3_13 Depth=1
	st.b	$s8, $s3, 32
	st.d	$s3, $s3, 24
	st.d	$s3, $s3, 16
	st.d	$s3, $s3, 8
	st.d	$s3, $s3, 0
	st.b	$zero, $s3, 41
	xori	$a0, $s4, 1
	alsl.d	$a0, $a0, $s3, 2
	st.w	$zero, $a0, 56
	st.w	$zero, $a0, 48
	ld.h	$a0, $fp, 34
	st.h	$a0, $s3, 34
	ld.wu	$a0, $fp, 36
	ld.wu	$a1, $s3, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s3, 36
	ld.wu	$a1, $fp, 36
	ld.bu	$a2, $a4, 0
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s3, 36
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s6, $a0
	st.w	$a2, $a5, 0
	beqz	$a0, .LBB3_20
# %bb.19:                               #   in Loop: Header=BB3_13 Depth=1
	st.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s6, 3
	st.d	$a1, $a2, 0
	b	.LBB3_21
	.p2align	4, , 16
.LBB3_20:                               #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
.LBB3_21:                               #   in Loop: Header=BB3_13 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	st.d	$a0, $s7, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a2, $s1, 0
	ld.d	$a1, $a2, 0
	st.d	$a1, $s2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s2, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s0, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$s3, $s1, 0
	beqz	$a0, .LBB3_23
# %bb.22:                               #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a1, $s3, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s2, 0
	st.d	$a2, $s3, 16
	st.d	$s3, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB3_23:                               #   in Loop: Header=BB3_13 Depth=1
	ld.bu	$a2, $a4, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s6, $a0
	st.w	$a2, $a5, 0
	beqz	$a0, .LBB3_25
# %bb.24:                               #   in Loop: Header=BB3_13 Depth=1
	st.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s6, 3
	st.d	$a1, $a2, 0
	b	.LBB3_26
	.p2align	4, , 16
.LBB3_25:                               #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
.LBB3_26:                               #   in Loop: Header=BB3_13 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	st.d	$a0, $s7, 0
	st.d	$s3, $s1, 0
	ld.d	$a1, $s3, 0
	st.d	$a1, $s2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s2, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s0, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$fp, $s1, 0
	beqz	$a0, .LBB3_28
# %bb.27:                               #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s2, 0
	st.d	$a2, $fp, 16
	st.d	$fp, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB3_28:                               #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$s8, $s4, $a0, 3
	ld.d	$a0, $s8, 0
	beqz	$a0, .LBB3_37
# %bb.29:                               #   in Loop: Header=BB3_13 Depth=1
	ld.bu	$a2, $a4, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s6, $a0
	st.w	$a2, $a5, 0
	beqz	$a0, .LBB3_31
# %bb.30:                               #   in Loop: Header=BB3_13 Depth=1
	st.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s6, 3
	st.d	$a1, $a2, 0
	b	.LBB3_32
	.p2align	4, , 16
.LBB3_31:                               #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $s1, 0
.LBB3_32:                               #   in Loop: Header=BB3_13 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	st.d	$a0, $s7, 0
	ld.d	$a1, $s8, 0
	st.d	$a1, $s1, 0
	beqz	$a1, .LBB3_35
# %bb.33:                               #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $s2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s2, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $s7, 0
	st.d	$s3, $s1, 0
	beqz	$a1, .LBB3_37
# %bb.34:                               # %._crit_edge
                                        #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a0, $a1, 16
	b	.LBB3_36
	.p2align	4, , 16
.LBB3_35:                               # %.thread82
                                        #   in Loop: Header=BB3_13 Depth=1
	st.d	$a0, $s7, 0
	st.d	$s3, $s1, 0
	move	$a1, $a0
.LBB3_36:                               #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a2, $s3, 16
	st.d	$a0, $s3, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $s2, 0
	st.d	$s3, $a0, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB3_37:                               #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s5
	beqz	$a0, .LBB3_12
# %bb.38:                               #   in Loop: Header=BB3_13 Depth=1
	ld.bu	$a2, $a4, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s6, $a0
	st.w	$a2, $a5, 0
	beqz	$a0, .LBB3_40
# %bb.39:                               #   in Loop: Header=BB3_13 Depth=1
	st.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s6, 3
	st.d	$a1, $a2, 0
	b	.LBB3_41
	.p2align	4, , 16
.LBB3_40:                               #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $s1, 0
.LBB3_41:                               #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a1, $s4, $a1, 3
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	st.d	$a0, $s7, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s1, 0
	beqz	$a1, .LBB3_9
# %bb.42:                               #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $s2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s2, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $s7, 0
	st.d	$s3, $s1, 0
	beqz	$a1, .LBB3_12
# %bb.43:                               # %._crit_edge86
                                        #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a0, $a1, 16
	b	.LBB3_10
.LBB3_44:                               #   in Loop: Header=BB3_13 Depth=1
	ld.bu	$a2, $a4, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s6, $a0
	st.w	$a2, $a5, 0
	beqz	$a0, .LBB3_46
# %bb.45:                               #   in Loop: Header=BB3_13 Depth=1
	st.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s6, 3
	st.d	$a1, $a2, 0
	b	.LBB3_47
.LBB3_46:                               #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
.LBB3_47:                               #   in Loop: Header=BB3_13 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	st.d	$a0, $s7, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a2, $s1, 0
	ld.d	$a1, $a2, 0
	st.d	$a1, $s2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s2, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $s7, 0
	st.d	$fp, $s1, 0
	beqz	$a1, .LBB3_12
# %bb.48:                               #   in Loop: Header=BB3_13 Depth=1
	ld.d	$a2, $fp, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $s2, 0
	st.d	$a0, $fp, 16
	st.d	$fp, $a0, 24
	b	.LBB3_11
.LBB3_49:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
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
.Lfunc_end3:
	.size	insert_split, .Lfunc_end3-insert_split
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function GetScaleFactor
.LCPI4_0:
	.dword	0x3f847ae147ae147b              # double 0.01
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI4_1:
	.word	0x42c80000                      # float 100
	.text
	.p2align	5
	.type	GetScaleFactor,@function
GetScaleFactor:                         # @GetScaleFactor
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.bu	$a1, $a0, 32
	addi.d	$a1, $a1, -11
	ori	$a2, $zero, 2
	addi.d	$fp, $a0, 32
	bgeu	$a1, $a2, .LBB4_4
# %bb.1:
	addi.d	$s0, $a0, 64
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a1, $a0, %pc_lo12(.L.str.65)
	addi.d	$a2, $sp, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB4_5
# %bb.2:
	fld.s	$fa0, $sp, 4
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_0)
	fcvt.d.s	$fa2, $fa0
	fcmp.cule.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB4_9
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a2, $a0, %pc_lo12(.L.str.67)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 5
	b	.LBB4_6
.LBB4_4:
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a2, $a0, %pc_lo12(.L.str.64)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 3
	ori	$a3, $zero, 2
	move	$a4, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB4_7
.LBB4_5:
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a2, $a0, %pc_lo12(.L.str.66)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 4
.LBB4_6:
	ori	$a3, $zero, 2
	move	$a4, $fp
	move	$a5, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_7:
	vldi	$vr0, -1168
.LBB4_8:
                                        # kill: def $f0 killed $f0 killed $vr0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB4_9:
	pcalau12i	$a0, %pc_hi20(.LCPI4_1)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI4_1)
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB4_8
# %bb.10:
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a2, $a0, %pc_lo12(.L.str.68)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 6
	b	.LBB4_6
.Lfunc_end4:
	.size	GetScaleFactor, .Lfunc_end4-GetScaleFactor
                                        # -- End function
	.p2align	5                               # -- Begin function ManifestCase
	.type	ManifestCase,@function
ManifestCase:                           # @ManifestCase
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
	move	$s5, $a0
	ld.d	$s4, $sp, 264
	ld.d	$a0, $sp, 256
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $s5, 8
	move	$s3, $a7
	move	$s2, $a6
	move	$fp, $a5
	st.d	$a4, $sp, 136                   # 8-byte Folded Spill
	move	$s6, $a3
	move	$s8, $a2
	.p2align	4, , 16
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a2, $a0, 32
	beqz	$a2, .LBB5_1
# %bb.2:
	st.d	$s4, $sp, 16
	pcalau12i	$a2, %pc_hi20(nenclose)
	addi.d	$a2, $a2, %pc_lo12(nenclose)
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.d	$a2, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a2, %pc_hi20(nbt)
	addi.d	$a3, $a2, %pc_lo12(nbt)
	pcalau12i	$a2, %pc_hi20(nft)
	addi.d	$a4, $a2, %pc_lo12(nft)
	pcalau12i	$a2, %pc_hi20(ntarget)
	addi.d	$a5, $a2, %pc_lo12(ntarget)
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	move	$a2, $s8
	move	$a6, $s2
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s5, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB5_3
# %bb.4:
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	ori	$a1, $zero, 55
	bne	$a0, $a1, .LBB5_7
# %bb.5:
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	move	$s8, $s6
	move	$s1, $s4
	move	$s7, $s3
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s6, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s6, 17
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s4, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s4, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s3, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$fp, $s3, $a1
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	beqz	$fp, .LBB5_8
# %bb.6:
	alsl.d	$a0, $a0, $s3, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$fp, $a1, 0
	ld.d	$a1, $fp, 0
	st.d	$a1, $a0, 0
	b	.LBB5_9
.LBB5_7:                                # %.loopexit223.loopexit
	move	$fp, $s0
	ld.bu	$a0, $fp, 32
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB5_18
	b	.LBB5_65
.LBB5_8:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB5_9:
	ori	$a0, $zero, 17
	st.b	$a0, $fp, 32
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	st.d	$fp, $fp, 8
	st.d	$fp, $fp, 0
	ld.d	$a0, $s0, 24
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s0, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s2, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a1, $a0, 8
	st.d	$a0, $s2, 0
	beq	$a1, $a0, .LBB5_11
# %bb.10:
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s2, 0
	ld.d	$a0, $a2, 0
	ld.d	$a3, $a1, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s0, 0
	st.d	$a1, $a1, 8
	st.d	$a0, $a2, 0
	st.d	$fp, $s2, 0
	bnez	$a0, .LBB5_12
	b	.LBB5_13
.LBB5_11:                               # %.thread
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a1, 0
	st.d	$fp, $s2, 0
.LBB5_12:
	ld.d	$a1, $fp, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a0, $a4, 8
	st.d	$a2, $a3, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $a2, 8
.LBB5_13:
	ld.bu	$a2, $s6, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s3, $a0
	st.w	$a2, $s4, 0
	beqz	$a0, .LBB5_15
# %bb.14:
	st.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s3, 3
	st.d	$a1, $a2, 0
	b	.LBB5_16
.LBB5_15:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB5_16:
	move	$s3, $s7
	move	$s4, $s1
	move	$s6, $s8
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a2, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a2, 0
	st.d	$s5, $s2, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $a2, 0
	ld.d	$a3, $s2, 0
	ld.d	$a4, $a0, 0
	ld.d	$a5, $a1, 0
	st.d	$a3, $a4, 8
	st.d	$a5, $a0, 0
	ld.d	$a3, $a2, 0
	ld.d	$a0, $s0, 0
	st.d	$a3, $a5, 8
	st.d	$a0, $a2, 0
	st.d	$fp, $s2, 0
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB5_64
# %bb.17:
	ld.d	$a2, $fp, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $fp, 16
	st.d	$fp, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a0, $fp, 32
	ori	$a1, $zero, 17
	bne	$a0, $a1, .LBB5_65
.LBB5_18:                               # %.preheader222
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s6, $fp, 8
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a6, $a0, 64
	beq	$s6, $fp, .LBB5_62
# %bb.19:                               # %.preheader220.lr.ph
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	ori	$a3, $zero, 1
	pcalau12i	$a0, %pc_hi20(nbt)
	addi.d	$a0, $a0, %pc_lo12(nbt)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(nft)
	addi.d	$a0, $a0, %pc_lo12(nft)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ntarget)
	addi.d	$a0, $a0, %pc_lo12(ntarget)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
                                        # implicit-def: $r30
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
.LBB5_20:                               # %.preheader220
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_21 Depth 2
                                        #     Child Loop BB5_25 Depth 2
                                        #     Child Loop BB5_37 Depth 2
                                        #       Child Loop BB5_38 Depth 3
                                        #       Child Loop BB5_42 Depth 3
                                        #     Child Loop BB5_29 Depth 2
	move	$s0, $s6
	.p2align	4, , 16
.LBB5_21:                               #   Parent Loop BB5_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB5_21
# %bb.22:                               #   in Loop: Header=BB5_20 Depth=1
	beq	$a0, $a3, .LBB5_34
# %bb.23:                               #   in Loop: Header=BB5_20 Depth=1
	ori	$a1, $zero, 55
	bne	$a0, $a1, .LBB5_53
# %bb.24:                               #   in Loop: Header=BB5_20 Depth=1
	ld.d	$a0, $s0, 8
	.p2align	4, , 16
.LBB5_25:                               #   Parent Loop BB5_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB5_25
# %bb.26:                               #   in Loop: Header=BB5_20 Depth=1
	st.d	$s4, $sp, 16
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	move	$a2, $s8
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	move	$s8, $s2
	move	$a6, $s2
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a1, $a0, -11
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB5_35
# %bb.27:                               #   in Loop: Header=BB5_20 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bnez	$a0, .LBB5_31
# %bb.28:                               #   in Loop: Header=BB5_20 Depth=1
	ld.d	$s7, $s0, 0
	.p2align	4, , 16
.LBB5_29:                               #   Parent Loop BB5_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s7, $s7, 16
	ld.bu	$a0, $s7, 32
	beqz	$a0, .LBB5_29
# %bb.30:                               #   in Loop: Header=BB5_20 Depth=1
	move	$a0, $s2
.LBB5_31:                               # %.loopexit216
                                        #   in Loop: Header=BB5_20 Depth=1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$s1, $s4
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -11
	addi.d	$s2, $s2, 64
	bltu	$a1, $a0, .LBB5_33
# %bb.32:                               #   in Loop: Header=BB5_20 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_73
.LBB5_33:                               #   in Loop: Header=BB5_20 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 1
	bnez	$a0, .LBB5_52
	b	.LBB5_73
	.p2align	4, , 16
.LBB5_34:                               # %.loopexit217.loopexit54
                                        #   in Loop: Header=BB5_20 Depth=1
	move	$s1, $s4
	move	$s8, $s2
	b	.LBB5_52
.LBB5_35:                               #   in Loop: Header=BB5_20 Depth=1
	move	$s1, $s4
	ori	$a1, $zero, 17
	bne	$a0, $a1, .LBB5_49
# %bb.36:                               # %.preheader218
                                        #   in Loop: Header=BB5_20 Depth=1
	ld.d	$s4, $s2, 8
	ori	$a3, $zero, 1
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	beq	$s4, $s2, .LBB5_52
.LBB5_37:                               # %.preheader
                                        #   Parent Loop BB5_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_38 Depth 3
                                        #       Child Loop BB5_42 Depth 3
	move	$a0, $s4
	.p2align	4, , 16
.LBB5_38:                               #   Parent Loop BB5_20 Depth=1
                                        #     Parent Loop BB5_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB5_38
# %bb.39:                               #   in Loop: Header=BB5_37 Depth=2
	addi.d	$a2, $a1, -11
	ori	$a4, $zero, 2
	bgeu	$a2, $a4, .LBB5_47
# %bb.40:                               #   in Loop: Header=BB5_37 Depth=2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	bnez	$a1, .LBB5_44
# %bb.41:                               #   in Loop: Header=BB5_37 Depth=2
	ld.d	$s7, $s0, 0
	.p2align	4, , 16
.LBB5_42:                               #   Parent Loop BB5_20 Depth=1
                                        #     Parent Loop BB5_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s7, $s7, 16
	ld.bu	$a1, $s7, 32
	beqz	$a1, .LBB5_42
# %bb.43:                               #   in Loop: Header=BB5_37 Depth=2
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
.LBB5_44:                               # %.loopexit
                                        #   in Loop: Header=BB5_37 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.bu	$a1, $a1, 32
	addi.d	$a1, $a1, -11
	addi.d	$s3, $a0, 64
	bltu	$a3, $a1, .LBB5_46
# %bb.45:                               #   in Loop: Header=BB5_37 Depth=2
	move	$a0, $s3
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_75
.LBB5_46:                               #   in Loop: Header=BB5_37 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a1, $a0, %pc_lo12(.L.str.72)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_48
	b	.LBB5_75
.LBB5_47:                               #   in Loop: Header=BB5_37 Depth=2
	bne	$a1, $a3, .LBB5_50
.LBB5_48:                               # %.loopexit215
                                        #   in Loop: Header=BB5_37 Depth=2
	ld.d	$s4, $s4, 8
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ori	$a3, $zero, 1
	bne	$s4, $s2, .LBB5_37
	b	.LBB5_52
.LBB5_49:                               #   in Loop: Header=BB5_20 Depth=1
	addi.d	$a4, $s2, 32
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a2, $a0, %pc_lo12(.L.str.73)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a5, $a0, %pc_lo12(.L.str.22)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 10
	b	.LBB5_51
.LBB5_50:                               #   in Loop: Header=BB5_20 Depth=1
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a2, $a0, %pc_lo12(.L.str.73)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a5, $a0, %pc_lo12(.L.str.22)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 9
.LBB5_51:                               # %.loopexit217
                                        #   in Loop: Header=BB5_20 Depth=1
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB5_52:                               # %.loopexit217
                                        #   in Loop: Header=BB5_20 Depth=1
	ld.d	$s6, $s6, 8
	move	$s2, $s8
	move	$s4, $s1
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	bne	$s6, $fp, .LBB5_20
	b	.LBB5_54
.LBB5_53:                               # %.thread201
	addi.d	$a4, $s0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a2, $a0, %pc_lo12(.L.str.71)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a5, $a0, %pc_lo12(.L.str.22)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 8
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB5_54:                               # %._crit_edge.thread
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beqz	$a1, .LBB5_62
# %bb.55:
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a4, $a0, 32
	addi.d	$a7, $a1, 64
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a2, $a0, %pc_lo12(.L.str.74)
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a5, $a0, %pc_lo12(.L.str.70)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 11
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB5_56:                               # %.thread207
	ld.d	$a1, $s7, 24
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$a2, $a0, %got_pc_lo12(xx_link)
	ld.d	$a0, $a1, 24
	st.d	$a1, $a2, 0
	beq	$a0, $a1, .LBB5_58
# %bb.57:
	ld.d	$a3, $a1, 16
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB5_58:
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$a3, $a1, 8
	st.d	$a1, $a0, 0
	beq	$a3, $a1, .LBB5_60
# %bb.59:
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	st.d	$a3, $a4, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a3, 0
	ld.d	$a3, $a0, 0
	ld.d	$a1, $a4, 0
	ld.d	$a4, $a3, 0
	st.d	$a1, $a4, 8
	st.d	$a3, $a3, 0
	ld.d	$a1, $a2, 0
	st.d	$a3, $a3, 8
.LBB5_60:
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.bu	$a2, $a1, 32
	st.d	$a1, $a0, 0
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	pcalau12i	$a5, %got_pc_hi20(zz_lengths)
	ld.d	$a5, $a5, %got_pc_lo12(zz_lengths)
	add.d	$a2, $a5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_size)
	ld.d	$a3, $a3, %got_pc_lo12(zz_size)
	st.w	$a2, $a3, 0
	slli.d	$a2, $a2, 3
	pcalau12i	$a4, %got_pc_hi20(zz_free)
	ld.d	$a4, $a4, %got_pc_lo12(zz_free)
	ldx.d	$a2, $a4, $a2
	st.d	$a2, $a1, 0
	ld.w	$a1, $a3, 0
	ld.d	$a2, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a4, $a1
	ld.d	$a1, $s5, 24
	beq	$a1, $s5, .LBB5_70
# %bb.61:
	ld.d	$a2, $s5, 16
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$s5, $s5, 24
	st.d	$s5, $s5, 16
	ld.d	$a2, $a1, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	ld.d	$a4, $s7, 16
	st.d	$a2, $a3, 0
	st.d	$a4, $a1, 16
	st.d	$a1, $a4, 24
	st.d	$a2, $s7, 16
	st.d	$s7, $a2, 24
	b	.LBB5_71
.LBB5_62:                               # %._crit_edge.thread.thread
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a5, $a0, %pc_lo12(.L.str.70)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 12
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s5, 32
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 24
	move	$s7, $a0
	beq	$a1, $s5, .LBB5_69
# %bb.63:
	ld.d	$a0, $s5, 16
	st.d	$a0, $a1, 16
	st.d	$a1, $a0, 24
	st.d	$s5, $s5, 24
	st.d	$s5, $s5, 16
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s7, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	bnez	$s7, .LBB5_67
	b	.LBB5_72
.LBB5_64:
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a0, $fp, 32
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB5_18
.LBB5_65:
	addi.d	$a4, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a2, $a0, %pc_lo12(.L.str.69)
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a5, $a0, %pc_lo12(.L.str.70)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 7
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s5, 32
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 24
	move	$s7, $a0
	beq	$a1, $s5, .LBB5_68
# %bb.66:
	ld.d	$a0, $s5, 16
	st.d	$a0, $a1, 16
	st.d	$a1, $a0, 24
	st.d	$s5, $s5, 24
	st.d	$s5, $s5, 16
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s7, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	beqz	$s7, .LBB5_72
.LBB5_67:
	ld.d	$a0, $a1, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $s7, 16
	st.d	$a0, $a2, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a0, $s7, 16
	st.d	$s7, $a0, 24
	b	.LBB5_72
.LBB5_68:                               # %.thread199
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s7, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$zero, $a0, 0
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	b	.LBB5_72
.LBB5_69:                               # %.thread211
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s7, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$zero, $a0, 0
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	b	.LBB5_72
.LBB5_70:
	move	$a1, $zero
.LBB5_71:                               # %.thread213
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(xx_tmp)
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$s7, $a2, 0
	st.d	$a1, $a0, 0
.LBB5_72:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 16
	st.d	$s1, $sp, 8
	st.d	$zero, $sp, 0
	move	$a0, $s7
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	move	$a2, $s8
	move	$a3, $s6
	move	$a4, $s0
	move	$a5, $fp
	move	$a6, $s2
	move	$a7, $s3
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
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
.LBB5_73:
	ld.d	$s7, $s0, 0
	move	$s2, $s8
	move	$s4, $s1
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_74:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s7, $s7, 16
	ld.bu	$a0, $s7, 32
	beqz	$a0, .LBB5_74
	b	.LBB5_56
.LBB5_75:
	ld.d	$s7, $s0, 0
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	move	$s2, $s8
	move	$s4, $s1
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
.LBB5_76:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s7, $s7, 16
	ld.bu	$a0, $s7, 32
	beqz	$a0, .LBB5_76
	b	.LBB5_56
.Lfunc_end5:
	.size	ManifestCase, .Lfunc_end5-ManifestCase
                                        # -- End function
	.p2align	5                               # -- Begin function SetUnderline
	.type	SetUnderline,@function
SetUnderline:                           # @SetUnderline
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 17
	bne	$a0, $a1, .LBB6_5
# %bb.1:                                # %.preheader11
	ld.d	$s0, $fp, 8
	beq	$s0, $fp, .LBB6_5
	.p2align	4, , 16
.LBB6_2:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	move	$a0, $s0
	.p2align	4, , 16
.LBB6_3:                                #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB6_3
# %bb.4:                                #   in Loop: Header=BB6_2 Depth=1
	pcaddu18i	$ra, %call36(SetUnderline)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 8
	bne	$s0, $fp, .LBB6_2
.LBB6_5:                                # %.loopexit
	ld.wu	$a0, $fp, 40
	lu12i.w	$a1, -393217
	ori	$a1, $a1, 4095
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	lu12i.w	$a1, 262144
	or	$a0, $a0, $a1
	st.w	$a0, $fp, 40
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	SetUnderline, .Lfunc_end6-SetUnderline
                                        # -- End function
	.p2align	5                               # -- Begin function ManifestTg
	.type	ManifestTg,@function
ManifestTg:                             # @ManifestTg
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
	move	$s2, $a0
	ld.d	$s0, $sp, 168
	ld.d	$a0, $a0, 8
	ld.d	$fp, $sp, 160
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	move	$s3, $a6
	move	$s4, $a5
	move	$s1, $a4
	move	$s8, $a3
	move	$s5, $a2
	move	$s6, $a1
	beq	$a0, $s2, .LBB7_3
# %bb.1:
	ld.d	$a1, $a0, 8
	beq	$a1, $s2, .LBB7_3
# %bb.2:
	ld.d	$a1, $a1, 8
	beq	$a1, $s2, .LBB7_4
.LBB7_3:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a5, $a0, %pc_lo12(.L.str.76)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 8
	.p2align	4, , 16
.LBB7_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB7_4
# %bb.5:
	addi.d	$a1, $a1, -6
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB7_12
.LBB7_6:                                # %.loopexit
	ld.d	$a2, $a0, 8
	move	$a3, $a2
	.p2align	4, , 16
.LBB7_7:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a3, 16
	ld.bu	$a1, $a3, 32
	beqz	$a1, .LBB7_7
# %bb.8:
	ori	$a4, $zero, 2
	bne	$a1, $a4, .LBB7_11
# %bb.9:
	ld.d	$a1, $a3, 80
	ld.hu	$a4, $a1, 41
	andi	$a4, $a4, 2
	bnez	$a4, .LBB7_21
# %bb.10:
	addi.d	$s7, $a3, 32
	move	$a0, $a1
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a2, $a0, %pc_lo12(.L.str.80)
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a6, $a0, %pc_lo12(.L.str.81)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 15
	ori	$a3, $zero, 2
	move	$a4, $s7
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB7_15
.LBB7_11:
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a2, $a0, %pc_lo12(.L.str.79)
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a5, $a0, %pc_lo12(.L.str.78)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 14
	b	.LBB7_14
.LBB7_12:
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 16
	pcalau12i	$a1, %pc_hi20(nenclose)
	addi.d	$a1, $a1, %pc_lo12(nenclose)
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	pcalau12i	$a1, %pc_hi20(ntarget)
	addi.d	$a5, $a1, %pc_lo12(ntarget)
	move	$a1, $s6
	move	$a2, $s5
	move	$a6, $s3
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	andi	$a1, $a1, 254
	ori	$a2, $zero, 6
	beq	$a1, $a2, .LBB7_6
# %bb.13:
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a2, $a0, %pc_lo12(.L.str.77)
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a5, $a0, %pc_lo12(.L.str.78)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 13
.LBB7_14:
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB7_15:
	addi.d	$a2, $s2, 32
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 24
	move	$s7, $a0
	beq	$a1, $s2, .LBB7_18
# %bb.16:
	ld.d	$a0, $s2, 16
	st.d	$a0, $a1, 16
	st.d	$a1, $a0, 24
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 16
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s7, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
	beqz	$s7, .LBB7_19
.LBB7_17:
	ld.d	$a0, $a1, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $s7, 16
	st.d	$a0, $a2, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a0, $s7, 16
	st.d	$s7, $a0, 24
	b	.LBB7_19
.LBB7_18:                               # %.thread
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s7, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$zero, $a0, 0
.LBB7_19:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 16
	st.d	$fp, $sp, 8
	st.d	$zero, $sp, 0
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s5
	move	$a3, $s8
	move	$a4, $s1
	move	$a5, $s4
	move	$a6, $s3
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
.LBB7_20:
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
.LBB7_21:
	st.d	$s8, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 8
	.p2align	4, , 16
.LBB7_22:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB7_22
# %bb.23:
	st.d	$s0, $sp, 16
	pcalau12i	$a1, %pc_hi20(nenclose)
	addi.d	$s1, $a1, %pc_lo12(nenclose)
	st.d	$s1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	pcalau12i	$a1, %pc_hi20(ntarget)
	addi.d	$a5, $a1, %pc_lo12(ntarget)
	move	$a1, $s6
	move	$a2, $s5
	move	$a6, $s3
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -11
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB7_27
# %bb.24:
	addi.d	$s7, $s8, 64
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a1, $a0, %pc_lo12(.L.str.82)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_30
# %bb.25:
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a1, $a0, %pc_lo12(.L.str.83)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_31
# %bb.26:
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a1, $a0, %pc_lo12(.L.str.84)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_32
.LBB7_27:
	addi.d	$a4, $s8, 32
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a2, $a0, %pc_lo12(.L.str.85)
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a5, $a0, %pc_lo12(.L.str.82)
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a6, $a0, %pc_lo12(.L.str.83)
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a7, $a0, %pc_lo12(.L.str.84)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 16
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s2, 32
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 24
	move	$s7, $a0
	beq	$a1, $s2, .LBB7_29
# %bb.28:
	ld.d	$a0, $s2, 16
	st.d	$a0, $a1, 16
	st.d	$a1, $a0, 24
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 16
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s7, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	bnez	$s7, .LBB7_17
	b	.LBB7_19
.LBB7_29:                               # %.thread217
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s7, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$zero, $a0, 0
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	b	.LBB7_19
.LBB7_30:
	ori	$a0, $zero, 134
	b	.LBB7_33
.LBB7_31:
	ori	$a0, $zero, 127
	b	.LBB7_33
.LBB7_32:
	ori	$a0, $zero, 128
.LBB7_33:
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.b	$a0, $a1, 41
	ld.d	$a0, $s2, 0
	.p2align	4, , 16
.LBB7_34:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB7_34
# %bb.35:
	st.d	$s0, $sp, 16
	st.d	$s1, $sp, 8
	st.d	$zero, $sp, 0
	pcalau12i	$a1, %pc_hi20(nbt)
	addi.d	$a3, $a1, %pc_lo12(nbt)
	pcalau12i	$a1, %pc_hi20(nft)
	addi.d	$a4, $a1, %pc_lo12(nft)
	pcalau12i	$a1, %pc_hi20(ntarget)
	addi.d	$a5, $a1, %pc_lo12(ntarget)
	move	$a1, $s6
	move	$a2, $s5
	move	$a6, $s3
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	addi.d	$a1, $a1, -11
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB7_38
# %bb.36:
	ld.d	$a1, $s8, 24
	beq	$a1, $s8, .LBB7_40
# %bb.37:
	ld.d	$a2, $s8, 16
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$s8, $s8, 24
	st.d	$s8, $s8, 16
	ld.d	$a2, $a1, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	ld.d	$a4, $a0, 16
	st.d	$a2, $a3, 0
	st.d	$a4, $a1, 16
	st.d	$a1, $a4, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	b	.LBB7_41
.LBB7_38:
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a2, $a0, %pc_lo12(.L.str.86)
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a5, $a0, %pc_lo12(.L.str.78)
	ori	$a0, $zero, 8
	ori	$a1, $zero, 17
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s2, 32
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 24
	move	$s7, $a0
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	beq	$a1, $s2, .LBB7_43
# %bb.39:
	ld.d	$a0, $s2, 16
	st.d	$a0, $a1, 16
	st.d	$a1, $a0, 24
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 16
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s7, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	bnez	$s7, .LBB7_17
	b	.LBB7_19
.LBB7_40:
	move	$a1, $zero
.LBB7_41:                               # %.thread221
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$fp, $a2, %got_pc_lo12(xx_tmp)
	st.d	$a1, $fp, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$s0, $a2, %got_pc_lo12(zz_res)
	st.d	$a0, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$s1, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $s1, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 24
	beq	$a0, $s2, .LBB7_44
# %bb.42:
	ld.d	$a1, $s2, 16
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 16
	ld.d	$a2, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a1, %got_pc_lo12(zz_tmp)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $a1, 16
	st.d	$a2, $a3, 0
	st.d	$a4, $a0, 16
	st.d	$a0, $a4, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	b	.LBB7_45
.LBB7_43:                               # %.thread219
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$s7, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$zero, $a0, 0
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	b	.LBB7_19
.LBB7_44:
	move	$a0, $zero
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
.LBB7_45:                               # %.thread223
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $fp, 0
	st.d	$a1, $s0, 0
	st.d	$a0, $s1, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 8
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB7_49
# %bb.46:
	ld.d	$a0, $s3, 0
	bnez	$a0, .LBB7_49
# %bb.47:
	ld.d	$a0, $a2, 8
	bnez	$a0, .LBB7_49
# %bb.48:
	ld.d	$a0, $a2, 0
	beqz	$a0, .LBB7_50
.LBB7_49:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $s3
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
	pcaddu18i	$t8, %call36(insert_split)
	jr	$t8
.LBB7_50:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	b	.LBB7_20
.Lfunc_end7:
	.size	ManifestTg, .Lfunc_end7-ManifestTg
                                        # -- End function
	.type	ReplaceWithTidy.buff,@object    # @ReplaceWithTidy.buff
	.local	ReplaceWithTidy.buff
	.comm	ReplaceWithTidy.buff,512,1
	.type	ReplaceWithTidy.buff_len,@object # @ReplaceWithTidy.buff_len
	.local	ReplaceWithTidy.buff_len
	.comm	ReplaceWithTidy.buff_len,4,4
	.type	ReplaceWithTidy.buff_pos,@object # @ReplaceWithTidy.buff_pos
	.local	ReplaceWithTidy.buff_pos
	.comm	ReplaceWithTidy.buff_pos,8,4
	.type	ReplaceWithTidy.buff_typ,@object # @ReplaceWithTidy.buff_typ
	.local	ReplaceWithTidy.buff_typ
	.comm	ReplaceWithTidy.buff_typ,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"TransferLinks: start_link!"
	.size	.L.str.1, 27

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"word is too long"
	.size	.L.str.2, 17

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	" "
	.size	.L.str.3, 2

	.type	Manifest.depth,@object          # @Manifest.depth
	.local	Manifest.depth
	.comm	Manifest.depth,4,4
	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"maximum depth of symbol expansion (%d) reached"
	.size	.L.str.4, 47

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Manifest/ENV_OBJ: res_env!"
	.size	.L.str.5, 27

	.type	nbt,@object                     # @nbt
	.local	nbt
	.comm	nbt,16,8
	.type	nft,@object                     # @nft
	.local	nft
	.comm	nft,16,8
	.type	ntarget,@object                 # @ntarget
	.local	ntarget
	.comm	ntarget,8,8
	.type	nenclose,@object                # @nenclose
	.local	nenclose
	.comm	nenclose,8,8
	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Manifest: CROSS child!"
	.size	.L.str.6, 23

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Manifest/CROSS: type(x)!"
	.size	.L.str.7, 25

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.space	1
	.size	.L.str.8, 1

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Manifest: ACAT!"
	.size	.L.str.9, 16

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Manifest ACAT: GAP_OBJ is first!"
	.size	.L.str.10, 33

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Manifest ACAT: no GAP_OBJ!"
	.size	.L.str.11, 27

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Manifest ACAT: GAP_OBJ is last!"
	.size	.L.str.12, 32

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Manifest ACAT: double GAP_OBJ!"
	.size	.L.str.13, 31

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Manifest: unexpected space_style!"
	.size	.L.str.14, 34

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Manifest/ACAT: underline(prev)!"
	.size	.L.str.15, 32

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Manifest/ACAT: underline(y)!"
	.size	.L.str.16, 29

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"word %s%s is too long"
	.size	.L.str.17, 22

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"replacing invalid left parameter of %s by 2i"
	.size	.L.str.18, 45

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"replacing invalid left parameter of %s by +0i"
	.size	.L.str.19, 46

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"replacing invalid left parameter of %s by 0d"
	.size	.L.str.20, 45

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"%s not expected here"
	.size	.L.str.21, 21

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"@Yield"
	.size	.L.str.22, 7

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"%s dropped (parameter is not a simple word)"
	.size	.L.str.23, 44

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"@Char"
	.size	.L.str.24, 6

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"%s dropped (no current font at this point)"
	.size	.L.str.25, 43

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"%s dropped (character %s unknown in font %s)"
	.size	.L.str.26, 45

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"no current language at this point, using %s"
	.size	.L.str.27, 44

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"none"
	.size	.L.str.28, 5

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"no current font at this point, using %s"
	.size	.L.str.29, 40

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"%dp"
	.size	.L.str.30, 4

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Manifest: FONT!"
	.size	.L.str.31, 16

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"Manifest: UNDERLINE!"
	.size	.L.str.32, 21

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Manifest: COMMON!"
	.size	.L.str.33, 18

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"object dropped by %s: no suitable insert point"
	.size	.L.str.34, 47

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"@Insert"
	.size	.L.str.35, 8

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"%s ignored: no choices in right parameter"
	.size	.L.str.36, 42

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"@OneOf"
	.size	.L.str.37, 7

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"Manifest/NEXT: Down(x) == x!"
	.size	.L.str.38, 29

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"%d"
	.size	.L.str.39, 3

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"??"
	.size	.L.str.40, 3

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"invalid left parameter of %s"
	.size	.L.str.41, 29

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"@Open"
	.size	.L.str.42, 6

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"%s deleted (invalid right parameter)"
	.size	.L.str.43, 37

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"@IncludeGraphic"
	.size	.L.str.44, 16

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"@SysIncludeGraphic"
	.size	.L.str.45, 19

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"assert failed in %s %s"
	.size	.L.str.46, 23

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"Manifest:"
	.size	.L.str.47, 10

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"Manifest/CLOSURE: type(y) != PAR!"
	.size	.L.str.48, 34

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"this %s is not a sequence of one or more words"
	.size	.L.str.49, 47

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"%s\n"
	.size	.L.str.50, 4

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"Manifest: prntenv!"
	.size	.L.str.51, 19

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"ManifestCl/filtered: type(sym)!"
	.size	.L.str.52, 32

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"ManifestCl filter-encl!"
	.size	.L.str.53, 24

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"filter parameter of %s symbol is not simple"
	.size	.L.str.54, 44

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"ReplaceWithSplit: type(x) already SPLIT!"
	.size	.L.str.55, 41

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"Manifest/VCAT: less than two children!"
	.size	.L.str.56, 39

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"Manifest/VCAT: type(g) != GAP_OBJECT!"
	.size	.L.str.57, 38

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"Manifest/VCAT: GAP_OBJ has no child!"
	.size	.L.str.58, 37

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"Manifest/VCAT: GAP_OBJ is last child!"
	.size	.L.str.59, 38

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"Manifest: bt[par] no children!"
	.size	.L.str.60, 31

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"Manifest:last_ft!"
	.size	.L.str.61, 18

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"Manifest: ft[par] child!"
	.size	.L.str.62, 25

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"Manifest: lthread == rthread!"
	.size	.L.str.63, 30

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"replacing invalid scale factor by 1.0"
	.size	.L.str.64, 38

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"%f"
	.size	.L.str.65, 3

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"replacing invalid scale factor %s by 1.0"
	.size	.L.str.66, 41

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"replacing undersized scale factor %s by 1.0"
	.size	.L.str.67, 44

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"replacing oversized scale factor %s by 1.0"
	.size	.L.str.68, 43

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"%s deleted (right parameter is malformed)"
	.size	.L.str.69, 42

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"@Case"
	.size	.L.str.70, 6

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"%s expected here"
	.size	.L.str.71, 17

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"else"
	.size	.L.str.72, 5

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"error in left parameter of %s"
	.size	.L.str.73, 30

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"replacing unknown %s option %s by %s"
	.size	.L.str.74, 37

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"%s deleted (choice %s unknown)"
	.size	.L.str.75, 31

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"Manifest TAGGED: children!"
	.size	.L.str.76, 27

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"left parameter of %s is not a cross reference"
	.size	.L.str.77, 46

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"@Tagged"
	.size	.L.str.78, 8

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"left parameter of %s must be a symbol"
	.size	.L.str.79, 38

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"symbol %s not allowed here (it has no %s)"
	.size	.L.str.80, 42

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"@Tag"
	.size	.L.str.81, 5

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"preceding"
	.size	.L.str.82, 10

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"following"
	.size	.L.str.83, 10

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"foll_or_prec"
	.size	.L.str.84, 13

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"%s, %s or %s expected in left parameter of %s"
	.size	.L.str.85, 46

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"right parameter of %s must be a simple word"
	.size	.L.str.86, 44

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ReplaceWithTidy.buff
	.addrsig_sym ReplaceWithTidy.buff_pos
	.addrsig_sym nbt
	.addrsig_sym nft
	.addrsig_sym ntarget
	.addrsig_sym nenclose
