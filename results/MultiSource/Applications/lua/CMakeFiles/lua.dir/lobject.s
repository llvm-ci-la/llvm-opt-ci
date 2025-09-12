	.file	"lobject.c"
	.text
	.hidden	luaO_int2fb                     # -- Begin function luaO_int2fb
	.globl	luaO_int2fb
	.p2align	5
	.type	luaO_int2fb,@function
luaO_int2fb:                            # @luaO_int2fb
# %bb.0:
	ori	$a2, $zero, 16
	ori	$a1, $zero, 8
	bltu	$a0, $a2, .LBB0_3
# %bb.1:                                # %.lr.ph.preheader
	ori	$a1, $zero, 8
	ori	$a2, $zero, 31
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a3, $a0, 1
	bstrpick.d	$a0, $a3, 31, 1
	addi.d	$a1, $a1, 8
	bltu	$a2, $a3, .LBB0_2
.LBB0_3:                                # %._crit_edge
	addi.w	$a2, $a0, 0
	sltui	$a2, $a2, 8
	addi.d	$a3, $a0, -8
	or	$a1, $a1, $a3
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ret
.Lfunc_end0:
	.size	luaO_int2fb, .Lfunc_end0-luaO_int2fb
                                        # -- End function
	.hidden	luaO_fb2int                     # -- Begin function luaO_fb2int
	.globl	luaO_fb2int
	.p2align	5
	.type	luaO_fb2int,@function
luaO_fb2int:                            # @luaO_fb2int
# %bb.0:
	bstrpick.d	$a1, $a0, 7, 3
	sltui	$a2, $a1, 1
	ori	$a3, $zero, 1
	maskeqz	$a4, $a0, $a2
	bstrins.d	$a0, $a3, 63, 3
	addi.d	$a1, $a1, -1
	sll.w	$a0, $a0, $a1
	masknez	$a0, $a0, $a2
	or	$a0, $a4, $a0
	ret
.Lfunc_end1:
	.size	luaO_fb2int, .Lfunc_end1-luaO_fb2int
                                        # -- End function
	.hidden	luaO_log2                       # -- Begin function luaO_log2
	.globl	luaO_log2
	.p2align	5
	.type	luaO_log2,@function
luaO_log2:                              # @luaO_log2
# %bb.0:
	ori	$a1, $zero, 256
	bltu	$a0, $a1, .LBB2_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a1, $zero, -1
	move	$a2, $a0
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $a2, 31, 8
	bstrpick.d	$a3, $a2, 31, 16
	addi.d	$a1, $a1, 8
	move	$a2, $a0
	bnez	$a3, .LBB2_2
	b	.LBB2_4
.LBB2_3:
	addi.d	$a1, $zero, -1
.LBB2_4:                                # %._crit_edge
	addi.w	$a0, $a0, 0
	pcalau12i	$a2, %pc_hi20(luaO_log2.log_2)
	addi.d	$a2, $a2, %pc_lo12(luaO_log2.log_2)
	ldx.bu	$a0, $a2, $a0
	add.w	$a0, $a1, $a0
	ret
.Lfunc_end2:
	.size	luaO_log2, .Lfunc_end2-luaO_log2
                                        # -- End function
	.hidden	luaO_rawequalObj                # -- Begin function luaO_rawequalObj
	.globl	luaO_rawequalObj
	.p2align	5
	.type	luaO_rawequalObj,@function
luaO_rawequalObj:                       # @luaO_rawequalObj
# %bb.0:
	ld.w	$a3, $a0, 8
	ld.w	$a2, $a1, 8
	bne	$a3, $a2, .LBB3_4
# %bb.1:
	ori	$a2, $zero, 3
	bltu	$a2, $a3, .LBB3_7
# %bb.2:
	move	$a2, $a0
	ori	$a0, $zero, 1
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI3_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI3_0)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB3_3:
	ld.w	$a0, $a2, 0
	ld.w	$a1, $a1, 0
	b	.LBB3_9
.LBB3_4:
	move	$a0, $zero
	ret
.LBB3_5:
	ld.d	$a0, $a2, 0
	b	.LBB3_8
.LBB3_6:
	fld.d	$fa0, $a2, 0
	fld.d	$fa1, $a1, 0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	ret
.LBB3_7:
	ld.d	$a0, $a0, 0
.LBB3_8:
	ld.d	$a1, $a1, 0
.LBB3_9:
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
.LBB3_10:
	ret
.Lfunc_end3:
	.size	luaO_rawequalObj, .Lfunc_end3-luaO_rawequalObj
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_3-.LJTI3_0
	.word	.LBB3_5-.LJTI3_0
	.word	.LBB3_6-.LJTI3_0
                                        # -- End function
	.text
	.hidden	luaO_str2d                      # -- Begin function luaO_str2d
	.globl	luaO_str2d
	.p2align	5
	.type	luaO_str2d,@function
luaO_str2d:                             # @luaO_str2d
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s0, $sp, 0
	fst.d	$fa0, $fp, 0
	beq	$s0, $a0, .LBB4_7
# %bb.1:
	ld.bu	$a1, $s0, 0
	ori	$a2, $a1, 32
	ori	$a3, $zero, 120
	bne	$a2, $a3, .LBB4_3
# %bb.2:
	addi.d	$a1, $sp, 0
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(strtoul)
	jirl	$ra, $ra, 0
	srli.d	$a1, $a0, 32
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa0, $a1
	lu12i.w	$a1, 256
	lu52i.d	$a1, $a1, 1107
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa0, $fa0, $fa1
	lu12i.w	$a1, 275200
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$s0, $sp, 0
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $fp, 0
	ld.bu	$a1, $s0, 0
.LBB4_3:
	beqz	$a1, .LBB4_8
# %bb.4:                                # %.preheader
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	.p2align	4, , 16
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $s0, 0
	slli.d	$a2, $a1, 1
	ldx.hu	$a2, $a0, $a2
	slli.d	$a2, $a2, 50
	addi.d	$s0, $s0, 1
	bltz	$a2, .LBB4_5
# %bb.6:
	sltui	$a0, $a1, 1
	b	.LBB4_9
.LBB4_7:
	move	$a0, $zero
	b	.LBB4_9
.LBB4_8:
	ori	$a0, $zero, 1
.LBB4_9:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	luaO_str2d, .Lfunc_end4-luaO_str2d
                                        # -- End function
	.hidden	luaO_pushvfstring               # -- Begin function luaO_pushvfstring
	.globl	luaO_pushvfstring
	.p2align	5
	.type	luaO_pushvfstring,@function
luaO_pushvfstring:                      # @luaO_pushvfstring
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
	move	$fp, $a0
	ld.d	$s1, $a0, 16
	move	$s0, $a2
	move	$s3, $a1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaS_newlstr)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	ori	$a0, $zero, 4
	st.w	$a0, $s1, 8
	ld.d	$a1, $fp, 56
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a1, $a0
	ori	$a2, $zero, 16
	blt	$a2, $a1, .LBB5_2
# %bb.1:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaD_growstack)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
.LBB5_2:                                # %pushstr.exit
	addi.d	$s2, $a0, 16
	st.d	$s2, $fp, 16
	ori	$a1, $zero, 37
	ori	$s5, $zero, 37
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_23
# %bb.3:                                # %.lr.ph
	move	$s1, $a0
	ori	$s4, $zero, 1
	ori	$s6, $zero, 4
	ori	$s7, $zero, 16
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI5_0)
	addi.d	$s8, $a0, %pc_lo12(.LJTI5_0)
	b	.LBB5_6
	.p2align	4, , 16
.LBB5_4:                                # %pushstr.exit60
                                        #   in Loop: Header=BB5_6 Depth=1
	addi.d	$s0, $s0, 8
.LBB5_5:                                # %pushstr.exit68
                                        #   in Loop: Header=BB5_6 Depth=1
	addi.d	$s2, $a0, 16
	st.d	$s2, $fp, 16
	addi.w	$s4, $s4, 2
	addi.d	$s3, $s1, 2
	ori	$a1, $zero, 37
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB5_24
.LBB5_6:                                # =>This Inner Loop Header: Depth=1
	sub.d	$a2, $s1, $s3
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(luaS_newlstr)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	st.w	$s6, $s2, 8
	ld.d	$a0, $fp, 56
	ld.d	$s2, $fp, 16
	sub.d	$a0, $a0, $s2
	blt	$s7, $a0, .LBB5_8
# %bb.7:                                #   in Loop: Header=BB5_6 Depth=1
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaD_growstack)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 16
.LBB5_8:                                #   in Loop: Header=BB5_6 Depth=1
	addi.d	$a0, $s2, 16
	st.d	$a0, $fp, 16
	ld.bu	$a0, $s1, 1
	addi.d	$a1, $a0, -99
	bltu	$s7, $a1, .LBB5_11
# %bb.9:                                #   in Loop: Header=BB5_6 Depth=1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s8, $a1
	add.d	$a1, $s8, $a1
	jr	$a1
.LBB5_10:                               #   in Loop: Header=BB5_6 Depth=1
	ld.b	$a0, $s0, 0
	st.b	$a0, $sp, 16
	st.b	$zero, $sp, 17
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	b	.LBB5_17
	.p2align	4, , 16
.LBB5_11:                               #   in Loop: Header=BB5_6 Depth=1
	bne	$a0, $s5, .LBB5_13
# %bb.12:                               #   in Loop: Header=BB5_6 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $fp
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	b	.LBB5_14
.LBB5_13:                               #   in Loop: Header=BB5_6 Depth=1
	st.b	$s5, $sp, 16
	st.b	$a0, $sp, 17
	st.b	$zero, $sp, 18
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.d	$a1, $sp, 16
	move	$a0, $fp
.LBB5_14:                               #   in Loop: Header=BB5_6 Depth=1
	pcaddu18i	$ra, %call36(luaS_newlstr)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	st.w	$s6, $s2, 24
	ld.d	$a1, $fp, 56
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a1, $a0
	blt	$s7, $a1, .LBB5_5
# %bb.15:                               #   in Loop: Header=BB5_6 Depth=1
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaD_growstack)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	b	.LBB5_5
.LBB5_16:                               #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a0, $s0, 0
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $fp
	move	$a1, $s3
.LBB5_17:                               #   in Loop: Header=BB5_6 Depth=1
	pcaddu18i	$ra, %call36(luaS_newlstr)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	st.w	$s6, $s2, 24
	ld.d	$a1, $fp, 56
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a1, $a0
	blt	$s7, $a1, .LBB5_4
	b	.LBB5_22
.LBB5_18:                               #   in Loop: Header=BB5_6 Depth=1
	fld.d	$fa0, $s0, 0
	b	.LBB5_20
.LBB5_19:                               #   in Loop: Header=BB5_6 Depth=1
	ld.w	$a0, $s0, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
.LBB5_20:                               #   in Loop: Header=BB5_6 Depth=1
	fst.d	$fa0, $s2, 16
	ori	$a0, $zero, 3
	st.w	$a0, $s2, 24
	ld.d	$a1, $fp, 56
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a1, $a0
	blt	$s7, $a1, .LBB5_4
	b	.LBB5_22
.LBB5_21:                               #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a2, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 16
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaS_newlstr)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	st.w	$s6, $s2, 8
	ld.d	$a1, $fp, 56
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a1, $a0
	blt	$s7, $a1, .LBB5_4
	.p2align	4, , 16
.LBB5_22:                               #   in Loop: Header=BB5_6 Depth=1
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaD_growstack)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	b	.LBB5_4
.LBB5_23:
	ori	$s4, $zero, 1
.LBB5_24:                               # %._crit_edge
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(luaS_newlstr)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	ori	$a0, $zero, 4
	st.w	$a0, $s2, 8
	ld.d	$a1, $fp, 56
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a1, $a0
	ori	$a2, $zero, 16
	blt	$a2, $a1, .LBB5_26
# %bb.25:
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaD_growstack)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
.LBB5_26:                               # %pushstr.exit70
	ld.d	$a2, $fp, 24
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 16
	addi.w	$a1, $s4, 1
	sub.d	$a0, $a0, $a2
	srli.d	$a0, $a0, 4
	addi.w	$a2, $a0, -1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaV_concat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	slli.d	$a1, $s4, 4
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, 16
	ld.d	$a0, $a0, -16
	addi.d	$a0, $a0, 24
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
.Lfunc_end5:
	.size	luaO_pushvfstring, .Lfunc_end5-luaO_pushvfstring
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI5_0:
	.word	.LBB5_10-.LJTI5_0
	.word	.LBB5_19-.LJTI5_0
	.word	.LBB5_13-.LJTI5_0
	.word	.LBB5_18-.LJTI5_0
	.word	.LBB5_13-.LJTI5_0
	.word	.LBB5_13-.LJTI5_0
	.word	.LBB5_13-.LJTI5_0
	.word	.LBB5_13-.LJTI5_0
	.word	.LBB5_13-.LJTI5_0
	.word	.LBB5_13-.LJTI5_0
	.word	.LBB5_13-.LJTI5_0
	.word	.LBB5_13-.LJTI5_0
	.word	.LBB5_13-.LJTI5_0
	.word	.LBB5_21-.LJTI5_0
	.word	.LBB5_13-.LJTI5_0
	.word	.LBB5_13-.LJTI5_0
	.word	.LBB5_16-.LJTI5_0
                                        # -- End function
	.text
	.hidden	luaO_pushfstring                # -- Begin function luaO_pushfstring
	.globl	luaO_pushfstring
	.p2align	5
	.type	luaO_pushfstring,@function
luaO_pushfstring:                       # @luaO_pushfstring
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$a7, $sp, 72
	st.d	$a6, $sp, 64
	st.d	$a5, $sp, 56
	st.d	$a4, $sp, 48
	st.d	$a3, $sp, 40
	st.d	$a2, $sp, 32
	addi.d	$a2, $sp, 32
	st.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(luaO_pushvfstring)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end6:
	.size	luaO_pushfstring, .Lfunc_end6-luaO_pushfstring
                                        # -- End function
	.hidden	luaO_chunkid                    # -- Begin function luaO_chunkid
	.globl	luaO_chunkid
	.p2align	5
	.type	luaO_chunkid,@function
luaO_chunkid:                           # @luaO_chunkid
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.bu	$a3, $a1, 0
	ori	$a4, $zero, 64
	move	$s1, $a2
	move	$fp, $a0
	beq	$a3, $a4, .LBB7_3
# %bb.1:
	ori	$a0, $zero, 61
	bne	$a3, $a0, .LBB7_6
# %bb.2:
	addi.d	$a1, $a1, 1
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	add.d	$a0, $fp, $s1
	st.b	$zero, $a0, -1
	b	.LBB7_10
.LBB7_3:
	addi.d	$s0, $a1, 1
	addi.d	$s1, $s1, -8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.b	$zero, $fp, 0
	bgeu	$s1, $a0, .LBB7_5
# %bb.4:
	sub.d	$a0, $a0, $s1
	add.d	$s0, $s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 738
	ori	$a1, $a1, 3630
	stx.w	$a1, $fp, $a0
.LBB7_5:
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(strcat)
	jr	$t8
.LBB7_6:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	move	$a0, $a1
	move	$s0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(strcspn)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	addi.d	$a2, $s1, -17
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a2, $a2, $a3
	or	$a2, $a0, $a2
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ld.h	$a3, $a0, 8
	ld.d	$a0, $a0, 0
	st.h	$a3, $fp, 8
	st.d	$a0, $fp, 0
	ldx.bu	$a0, $s0, $a2
	beqz	$a0, .LBB7_8
# %bb.7:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strncat)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 738
	ori	$a1, $a1, 3630
	stx.w	$a1, $fp, $a0
	b	.LBB7_9
.LBB7_8:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
.LBB7_9:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $fp, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	addi.d	$a2, $a2, %pc_lo12(.L.str.7)
	ld.h	$a3, $a2, 0
	ld.b	$a2, $a2, 2
	stx.h	$a3, $fp, $a0
	st.b	$a2, $a1, 2
.LBB7_10:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	luaO_chunkid, .Lfunc_end7-luaO_chunkid
                                        # -- End function
	.hidden	luaO_nilobject_                 # @luaO_nilobject_
	.type	luaO_nilobject_,@object
	.section	.rodata,"a",@progbits
	.globl	luaO_nilobject_
	.p2align	3, 0x0
luaO_nilobject_:
	.space	16
	.size	luaO_nilobject_, 16

	.type	luaO_log2.log_2,@object         # @luaO_log2.log_2
luaO_log2.log_2:
	.ascii	"\000\001\002\002\003\003\003\003\004\004\004\004\004\004\004\004\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
	.size	luaO_log2.log_2, 256

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.space	1
	.size	.L.str, 1

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"(null)"
	.size	.L.str.1, 7

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%p"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%"
	.size	.L.str.3, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\n\r"
	.size	.L.str.5, 3

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.6:
	.asciz	"[string \""
	.size	.L.str.6, 10

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"\"]"
	.size	.L.str.7, 3

	.hidden	luaS_newlstr
	.hidden	luaD_growstack
	.hidden	luaV_concat
	.section	".note.GNU-stack","",@progbits
	.addrsig
