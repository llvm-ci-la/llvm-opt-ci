	.file	"compl.c"
	.text
	.globl	complement                      # -- Begin function complement
	.p2align	5
	.type	complement,@function
complement:                             # @complement
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$s4, $a0, %got_pc_lo12(debug)
	ld.bu	$a0, $s4, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(complement.compl_level)
	ld.w	$a2, $a0, %pc_lo12(complement.compl_level)
	addi.d	$a1, $a2, 1
	st.w	$a1, $a0, %pc_lo12(complement.compl_level)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(debug_print)
	jirl	$ra, $ra, 0
.LBB0_2:
	ld.d	$a2, $fp, 16
	beqz	$a2, .LBB0_8
# %bb.3:
	ld.d	$a0, $fp, 24
	ld.d	$s0, $fp, 0
	beqz	$a0, .LBB0_9
# %bb.4:                                # %.preheader.preheader
	addi.d	$s2, $fp, 24
	ori	$s1, $zero, 16
	.p2align	4, , 16
.LBB0_5:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $fp, $s1
	beqz	$a0, .LBB0_10
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(full_row)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	beqz	$a0, .LBB0_5
# %bb.7:
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 0
	b	.LBB0_22
.LBB0_8:
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $s0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 88
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a0
	bnez	$a1, .LBB0_23
	b	.LBB0_25
.LBB0_9:
	move	$a0, $s0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(compl_cube)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a0
	bnez	$a1, .LBB0_23
	b	.LBB0_25
.LBB0_10:
	ld.w	$a0, $s0, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB0_12
# %bb.11:
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_12:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 16
	move	$s1, $a0
	beqz	$a2, .LBB0_17
# %bb.13:
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB0_14:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	ld.wu	$a1, $s1, 0
	andi	$a4, $a1, 1023
	addi.d	$a1, $a4, 1
	alsl.d	$a3, $a4, $s1, 2
	alsl.d	$a2, $a4, $a2, 2
	.p2align	4, , 16
.LBB0_15:                               #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a3, 0
	ld.w	$a5, $a2, 0
	or	$a4, $a5, $a4
	st.w	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, -4
	bltu	$a0, $a1, .LBB0_15
# %bb.16:                               # %.loopexit
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a2, $s2, 0
	addi.d	$s2, $s2, 8
	bnez	$a2, .LBB0_14
.LBB0_17:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s2, $a0, %got_pc_lo12(cube)
	ld.d	$a1, $s2, 88
	move	$a0, $s1
	pcaddu18i	$ra, %call36(setp_equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_29
# %bb.18:
	beqz	$s1, .LBB0_20
# %bb.19:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_20:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(massive_count)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$a1, $a0, %got_pc_lo12(cdata)
	ld.w	$a0, $a1, 32
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB0_32
# %bb.21:
	ld.w	$a1, $s2, 0
.LBB0_22:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a0
	beqz	$a1, .LBB0_25
.LBB0_23:
	move	$a0, $a1
.LBB0_24:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_25:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_26:                               # %compl_special_cases.exit.thread
	ld.bu	$a0, $s4, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_28
# %bb.27:
	pcalau12i	$a0, %pc_hi20(complement.compl_level)
	ld.w	$a1, $a0, %pc_lo12(complement.compl_level)
	addi.w	$a2, $a1, -1
	st.w	$a2, $a0, %pc_lo12(complement.compl_level)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(debug1_print)
	jirl	$ra, $ra, 0
.LBB0_28:
	move	$a0, $s0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB0_29:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(compl_cube)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 88
	move	$s2, $a0
	move	$a0, $s1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB0_31
# %bb.30:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_31:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(complement)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sf_append)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	b	.LBB0_26
.LBB0_32:
	ld.w	$a1, $a1, 36
	bne	$a1, $a0, .LBB0_36
# %bb.33:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(map_cover_to_unate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a0
	beqz	$a1, .LBB0_35
# %bb.34:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_35:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(unate_compl)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(map_unate_to_cover)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	b	.LBB0_26
.LBB0_36:                               # %compl_special_cases.exit
	ld.w	$s1, $s2, 0
	ori	$s0, $zero, 8
	ori	$s3, $zero, 33
	ori	$a0, $zero, 8
	blt	$s1, $s3, .LBB0_38
# %bb.37:
	addi.d	$a0, $s1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_38:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s2, 0
	move	$s1, $a0
	blt	$s2, $s3, .LBB0_40
# %bb.39:
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$s0, $a0, 8
.LBB0_40:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a3, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(binate_split_select)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(complement)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(complement)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	ld.w	$a0, $a0, 12
	ld.w	$a1, $s3, 12
	ld.d	$a3, $fp, 8
	mul.w	$a4, $a1, $a0
	add.w	$a0, $a1, $a0
	sub.d	$a1, $a3, $fp
	srai.d	$a1, $a1, 3
	addi.d	$a1, $a1, -3
	mul.d	$a0, $a1, $a0
	slt	$a6, $a0, $a4
	move	$a0, $fp
	move	$a1, $s3
	move	$a3, $s1
	move	$a4, $s2
	move	$a5, $s0
	pcaddu18i	$ra, %call36(compl_merge)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$s1, .LBB0_42
# %bb.41:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_42:
	beqz	$s2, .LBB0_44
# %bb.43:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_44:
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB0_24
	b	.LBB0_25
.Lfunc_end0:
	.size	complement, .Lfunc_end0-complement
                                        # -- End function
	.globl	simp_comp                       # -- Begin function simp_comp
	.p2align	5
	.type	simp_comp,@function
simp_comp:                              # @simp_comp
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
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$s5, $a0, %got_pc_lo12(debug)
	ld.bu	$a0, $s5, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(simp_comp.simplify_level)
	ld.w	$a2, $a0, %pc_lo12(simp_comp.simplify_level)
	addi.d	$a1, $a2, 1
	st.w	$a1, $a0, %pc_lo12(simp_comp.simplify_level)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(debug_print)
	jirl	$ra, $ra, 0
.LBB1_2:
	ld.d	$a2, $s1, 16
	beqz	$a2, .LBB1_8
# %bb.3:
	ld.d	$a0, $s1, 24
	ld.d	$s2, $s1, 0
	beqz	$a0, .LBB1_9
# %bb.4:                                # %.preheader.preheader
	addi.d	$s4, $s1, 24
	ori	$s3, $zero, 16
	.p2align	4, , 16
.LBB1_5:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $s1, $s3
	beqz	$a0, .LBB1_10
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(full_row)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 8
	beqz	$a0, .LBB1_5
# %bb.7:
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s2, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $s2, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 88
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	b	.LBB1_22
.LBB1_8:
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s2, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $s2, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 88
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $fp, 0
	bnez	$a1, .LBB1_23
	b	.LBB1_24
.LBB1_9:
	move	$a0, $s2
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(compl_cube)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $fp, 0
	bnez	$a1, .LBB1_23
	b	.LBB1_24
.LBB1_10:
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB1_12
# %bb.11:
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB1_12:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 16
	move	$s3, $a0
	beqz	$a2, .LBB1_17
# %bb.13:
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB1_14:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
	ld.wu	$a1, $s3, 0
	andi	$a4, $a1, 1023
	addi.d	$a1, $a4, 1
	alsl.d	$a3, $a4, $s3, 2
	alsl.d	$a2, $a4, $a2, 2
	.p2align	4, , 16
.LBB1_15:                               #   Parent Loop BB1_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a3, 0
	ld.w	$a5, $a2, 0
	or	$a4, $a5, $a4
	st.w	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, -4
	bltu	$a0, $a1, .LBB1_15
# %bb.16:                               # %.loopexit
                                        #   in Loop: Header=BB1_14 Depth=1
	ld.d	$a2, $s4, 0
	addi.d	$s4, $s4, 8
	bnez	$a2, .LBB1_14
.LBB1_17:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s6, $a0, %got_pc_lo12(cube)
	ld.d	$a1, $s6, 88
	move	$a0, $s3
	pcaddu18i	$ra, %call36(setp_equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_28
# %bb.18:
	beqz	$s3, .LBB1_20
# %bb.19:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_20:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(massive_count)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$a1, $a0, %got_pc_lo12(cdata)
	ld.w	$a0, $a1, 32
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB1_38
# %bb.21:
	ld.w	$a1, $s6, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 88
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 0
.LBB1_22:
	st.d	$a0, $s0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB1_24
.LBB1_23:                               # %simp_comp_special_cases.exit.thread.sink.split.sink.split
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_24:                               # %simp_comp_special_cases.exit.thread.sink.split
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_25:                               # %simp_comp_special_cases.exit.thread
	ld.bu	$a0, $s5, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_27
# %bb.26:
	ld.d	$a0, $s0, 0
	pcalau12i	$s0, %pc_hi20(simp_comp.simplify_level)
	ld.w	$a2, $s0, %pc_lo12(simp_comp.simplify_level)
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(debug1_print)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a2, $s0, %pc_lo12(simp_comp.simplify_level)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(debug1_print)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(simp_comp.simplify_level)
	addi.d	$a0, $a0, -1
	st.w	$a0, $s0, %pc_lo12(simp_comp.simplify_level)
.LBB1_27:
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
.LBB1_28:
	ld.w	$s4, $s6, 0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s4, $a1, .LBB1_30
# %bb.29:
	addi.d	$a0, $s4, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB1_30:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 88
	move	$s4, $a0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB1_32
# %bb.31:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_32:
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(simp_comp)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 12
	ld.w	$a2, $a0, 0
	mul.w	$a2, $a2, $a1
	blez	$a2, .LBB1_37
# %bb.33:                               # %.lr.ph53.preheader
	ld.d	$a1, $a0, 24
	alsl.d	$a2, $a2, $a1, 2
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB1_34:                               # %.lr.ph53
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_35 Depth 2
	ld.wu	$a4, $a1, 0
	andi	$a6, $a4, 1023
	addi.d	$a4, $a6, 1
	alsl.d	$a5, $a6, $a1, 2
	alsl.d	$a6, $a6, $s3, 2
	.p2align	4, , 16
.LBB1_35:                               #   Parent Loop BB1_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a5, 0
	ld.w	$t0, $a6, 0
	and	$a7, $t0, $a7
	st.w	$a7, $a5, 0
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -4
	addi.d	$a6, $a6, -4
	bltu	$a3, $a4, .LBB1_35
# %bb.36:                               #   in Loop: Header=BB1_34 Depth=1
	ld.w	$a4, $a0, 0
	alsl.d	$a1, $a4, $a1, 2
	bltu	$a1, $a2, .LBB1_34
.LBB1_37:                               # %._crit_edge54
	ld.d	$s1, $fp, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(compl_cube)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sf_append)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	move	$s1, $s3
	bnez	$s3, .LBB1_24
	b	.LBB1_25
.LBB1_38:
	ld.w	$a1, $a1, 36
	bne	$a1, $a0, .LBB1_40
# %bb.39:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cubeunlist)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(map_cover_to_unate)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(unate_compl)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcaddu18i	$ra, %call36(map_unate_to_cover)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	b	.LBB1_50
.LBB1_40:                               # %simp_comp_special_cases.exit
	ld.w	$s2, $s6, 0
	ori	$s3, $zero, 8
	ori	$s7, $zero, 33
	ori	$a0, $zero, 8
	blt	$s2, $s7, .LBB1_42
# %bb.41:
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB1_42:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s6, 0
	move	$s2, $a0
	blt	$s4, $s7, .LBB1_44
# %bb.43:
	addi.d	$a0, $s4, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$s3, $a0, 8
.LBB1_44:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(binate_split_select)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 24
	pcaddu18i	$ra, %call36(simp_comp)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(simp_comp)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40
	ld.d	$a2, $sp, 32
	move	$a0, $s1
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $zero
	pcaddu18i	$ra, %call36(compl_merge)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24
	ld.d	$a2, $sp, 16
	st.d	$a0, $s0, 0
	move	$a0, $s1
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $zero
	pcaddu18i	$ra, %call36(compl_merge)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s1, 8
	ld.w	$a2, $a0, 12
	sub.d	$a1, $a1, $s1
	srai.d	$a1, $a1, 3
	addi.d	$a1, $a1, -3
	bge	$a1, $a2, .LBB1_46
# %bb.45:
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cubeunlist)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
.LBB1_46:
	beqz	$s2, .LBB1_48
# %bb.47:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_48:
	beqz	$s3, .LBB1_50
# %bb.49:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_50:
	ld.d	$a1, $s1, 0
	bnez	$a1, .LBB1_23
	b	.LBB1_24
.Lfunc_end1:
	.size	simp_comp, .Lfunc_end1-simp_comp
                                        # -- End function
	.globl	simplify                        # -- Begin function simplify
	.p2align	5
	.type	simplify,@function
simplify:                               # @simplify
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$s4, $a0, %got_pc_lo12(debug)
	ld.bu	$a0, $s4, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(simplify.simplify_level)
	ld.w	$a2, $a0, %pc_lo12(simplify.simplify_level)
	addi.d	$a1, $a2, 1
	st.w	$a1, $a0, %pc_lo12(simplify.simplify_level)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(debug_print)
	jirl	$ra, $ra, 0
.LBB2_2:
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB2_8
# %bb.3:
	ld.d	$a0, $fp, 24
	ld.d	$s0, $fp, 0
	beqz	$a0, .LBB2_9
# %bb.4:                                # %.preheader.preheader
	addi.d	$s2, $fp, 24
	ori	$s1, $zero, 16
	.p2align	4, , 16
.LBB2_5:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $fp, $s1
	beqz	$a0, .LBB2_10
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(full_row)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	beqz	$a0, .LBB2_5
# %bb.7:
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $s0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 88
	b	.LBB2_22
.LBB2_8:
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a0
	bnez	$a1, .LBB2_23
	b	.LBB2_24
.LBB2_9:
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 16
	move	$s1, $a0
	move	$a0, $s0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	b	.LBB2_22
.LBB2_10:
	ld.w	$a0, $s0, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB2_12
# %bb.11:
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB2_12:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 16
	move	$s1, $a0
	beqz	$a2, .LBB2_17
# %bb.13:
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB2_14:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
	ld.wu	$a1, $s1, 0
	andi	$a4, $a1, 1023
	addi.d	$a1, $a4, 1
	alsl.d	$a3, $a4, $s1, 2
	alsl.d	$a2, $a4, $a2, 2
	.p2align	4, , 16
.LBB2_15:                               #   Parent Loop BB2_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a3, 0
	ld.w	$a5, $a2, 0
	or	$a4, $a5, $a4
	st.w	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, -4
	bltu	$a0, $a1, .LBB2_15
# %bb.16:                               # %.loopexit
                                        #   in Loop: Header=BB2_14 Depth=1
	ld.d	$a2, $s2, 0
	addi.d	$s2, $s2, 8
	bnez	$a2, .LBB2_14
.LBB2_17:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s3, $a0, %got_pc_lo12(cube)
	ld.d	$a1, $s3, 88
	move	$a0, $s1
	pcaddu18i	$ra, %call36(setp_equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_28
# %bb.18:
	beqz	$s1, .LBB2_20
# %bb.19:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_20:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(massive_count)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$a1, $a0, %got_pc_lo12(cdata)
	ld.w	$a0, $a1, 32
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB2_38
# %bb.21:
	ld.w	$a1, $s3, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 88
.LBB2_22:
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a0
	beqz	$a1, .LBB2_24
.LBB2_23:                               # %simplify_special_cases.exit.thread.sink.split.sink.split
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_24:                               # %simplify_special_cases.exit.thread.sink.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_25:                               # %simplify_special_cases.exit.thread
	ld.bu	$a0, $s4, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_27
# %bb.26:
	pcalau12i	$a0, %pc_hi20(simplify.simplify_level)
	ld.w	$a1, $a0, %pc_lo12(simplify.simplify_level)
	addi.w	$a2, $a1, -1
	st.w	$a2, $a0, %pc_lo12(simplify.simplify_level)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(debug1_print)
	jirl	$ra, $ra, 0
.LBB2_27:
	move	$a0, $s0
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB2_28:
	ld.w	$s2, $s3, 0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s2, $a1, .LBB2_30
# %bb.29:
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB2_30:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 88
	move	$s2, $a0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB2_32
# %bb.31:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_32:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(simplify)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.w	$a0, $a0, 12
	ld.w	$a1, $s0, 0
	mul.w	$a1, $a1, $a0
	blez	$a1, .LBB2_51
# %bb.33:                               # %.lr.ph43.preheader
	ld.d	$a0, $s0, 24
	alsl.d	$a1, $a1, $a0, 2
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB2_34:                               # %.lr.ph43
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_35 Depth 2
	ld.wu	$a3, $a0, 0
	andi	$a4, $a3, 1023
	addi.d	$a3, $a4, 1
	slli.d	$a4, $a4, 2
	.p2align	4, , 16
.LBB2_35:                               #   Parent Loop BB2_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a5, $a0, $a4
	ldx.w	$a6, $s1, $a4
	and	$a5, $a6, $a5
	stx.w	$a5, $a0, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, -4
	bltu	$a2, $a3, .LBB2_35
# %bb.36:                               #   in Loop: Header=BB2_34 Depth=1
	ld.w	$a3, $s0, 0
	alsl.d	$a0, $a3, $a0, 2
	bltu	$a0, $a1, .LBB2_34
# %bb.37:
	move	$fp, $s1
	b	.LBB2_24
.LBB2_38:
	ld.w	$a1, $a1, 36
	bne	$a1, $a0, .LBB2_40
# %bb.39:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cubeunlist)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a0
	bnez	$a1, .LBB2_23
	b	.LBB2_24
.LBB2_40:                               # %simplify_special_cases.exit
	ld.w	$s1, $s3, 0
	ori	$s0, $zero, 8
	ori	$s5, $zero, 33
	ori	$a0, $zero, 8
	blt	$s1, $s5, .LBB2_42
# %bb.41:
	addi.d	$a0, $s1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB2_42:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s3, 0
	move	$s1, $a0
	blt	$s2, $s5, .LBB2_44
# %bb.43:
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$s0, $a0, 8
.LBB2_44:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a3, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(binate_split_select)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(simplify)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(simplify)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $fp
	move	$a1, $s3
	move	$a3, $s1
	move	$a4, $s2
	move	$a5, $s0
	move	$a6, $zero
	pcaddu18i	$ra, %call36(compl_merge)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	move	$s0, $a0
	ld.w	$a0, $a0, 12
	sub.d	$a1, $a1, $fp
	srai.d	$a1, $a1, 3
	addi.d	$a1, $a1, -3
	bge	$a1, $a0, .LBB2_46
# %bb.45:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cubeunlist)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.LBB2_46:
	beqz	$s1, .LBB2_48
# %bb.47:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_48:
	beqz	$s2, .LBB2_50
# %bb.49:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_50:
	ld.d	$a1, $fp, 0
	bnez	$a1, .LBB2_23
	b	.LBB2_24
.LBB2_51:                               # %._crit_edge44
	move	$fp, $s1
	bnez	$s1, .LBB2_24
	b	.LBB2_25
.Lfunc_end2:
	.size	simplify, .Lfunc_end2-simplify
                                        # -- End function
	.p2align	5                               # -- Begin function compl_cube
	.type	compl_cube,@function
compl_cube:                             # @compl_cube
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
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s2, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $s2, 80
	ld.d	$fp, $a0, 56
	ld.d	$s3, $s2, 88
	ld.w	$a0, $s2, 4
	ld.w	$a1, $s2, 0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 0
	ld.wu	$a2, $s3, 0
	move	$s0, $a0
	srli.d	$a0, $a1, 10
	andi	$a3, $a2, 1023
	bstrins.d	$a2, $a0, 63, 10
	sltu	$a0, $zero, $a3
	sub.d	$a0, $a3, $a0
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 8
	st.w	$a2, $fp, 0
	bgeu	$a0, $a1, .LBB3_19
.LBB3_1:
	move	$a1, $a3
.LBB3_2:                                # %scalar.ph.preheader
	addi.d	$a0, $a1, 1
	alsl.d	$a2, $a1, $fp, 2
	alsl.d	$a3, $a1, $s1, 2
	alsl.d	$a1, $a1, $s3, 2
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB3_3:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a3, 0
	andn	$a5, $a5, $a6
	st.w	$a5, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, -4
	bltu	$a4, $a0, .LBB3_3
.LBB3_4:                                # %.preheader
	ld.w	$a0, $s2, 4
	blez	$a0, .LBB3_18
# %bb.5:                                # %.lr.ph
	move	$s4, $zero
	addi.d	$a0, $s3, -12
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$s6, $fp, -12
	ori	$s7, $zero, 8
	ori	$s8, $zero, 1
	ori	$s5, $zero, 16
	vrepli.b	$vr3, -1
	vst	$vr3, $sp, 16                   # 16-byte Folded Spill
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_6:                                # %.loopexit
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.w	$a0, $s2, 4
	addi.d	$s4, $s4, 1
	bge	$s4, $a0, .LBB3_18
.LBB3_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_16 Depth 2
                                        #     Child Loop BB3_11 Depth 2
	ld.d	$a0, $s2, 72
	slli.d	$a1, $s4, 3
	ldx.d	$s1, $a0, $a1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(setp_disjoint)
	jirl	$ra, $ra, 0
	vld	$vr3, $sp, 16                   # 16-byte Folded Reload
	bnez	$a0, .LBB3_6
# %bb.8:                                #   in Loop: Header=BB3_7 Depth=1
	ld.w	$a1, $s0, 12
	ld.w	$a2, $s0, 0
	ld.d	$a0, $s0, 24
	addi.d	$a3, $a1, 1
	st.w	$a3, $s0, 12
	mul.w	$a1, $a1, $a2
	slli.d	$a5, $a1, 2
	ldx.wu	$a2, $a0, $a5
	ld.wu	$a4, $fp, 0
	srli.d	$a2, $a2, 10
	andi	$t0, $a4, 1023
	bstrins.d	$a4, $a2, 63, 10
	sltu	$a2, $zero, $t0
	sub.d	$a2, $t0, $a2
	addi.d	$a3, $a2, 1
	stx.w	$a4, $a0, $a5
	bgeu	$a3, $s7, .LBB3_12
.LBB3_9:                                #   in Loop: Header=BB3_7 Depth=1
	move	$a2, $t0
.LBB3_10:                               # %scalar.ph52.preheader
                                        #   in Loop: Header=BB3_7 Depth=1
	addi.d	$a3, $a2, 1
	slli.d	$a4, $a2, 2
	alsl.d	$a1, $a1, $a4, 2
	add.d	$a0, $a0, $a1
	alsl.d	$a1, $a2, $s3, 2
	alsl.d	$a4, $a2, $s1, 2
	alsl.d	$a2, $a2, $fp, 2
	.p2align	4, , 16
.LBB3_11:                               # %scalar.ph52
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a2, 0
	ld.w	$a6, $a4, 0
	ld.w	$a7, $a1, 0
	and	$a5, $a6, $a5
	andn	$a6, $a7, $a6
	or	$a5, $a6, $a5
	st.w	$a5, $a0, 0
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, -4
	addi.d	$a4, $a4, -4
	addi.d	$a2, $a2, -4
	bltu	$s8, $a3, .LBB3_11
	b	.LBB3_6
.LBB3_12:                               # %vector.memcheck45
                                        #   in Loop: Header=BB3_7 Depth=1
	alsl.d	$a2, $a1, $a0, 2
	sub.d	$a4, $fp, $a2
	bltu	$a4, $s5, .LBB3_9
# %bb.13:                               # %vector.memcheck45
                                        #   in Loop: Header=BB3_7 Depth=1
	sub.d	$a4, $s1, $a2
	bltu	$a4, $s5, .LBB3_9
# %bb.14:                               # %vector.memcheck45
                                        #   in Loop: Header=BB3_7 Depth=1
	sub.d	$a2, $s3, $a2
	bltu	$a2, $s5, .LBB3_9
# %bb.15:                               # %vector.ph54
                                        #   in Loop: Header=BB3_7 Depth=1
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	sub.d	$a2, $t0, $a4
	alsl.d	$a5, $t0, $a5, 2
	add.d	$a5, $a0, $a5
	addi.d	$a5, $a5, -12
	ld.d	$a6, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$a6, $t0, $a6, 2
	alsl.d	$a7, $t0, $s1, 2
	addi.d	$a7, $a7, -12
	alsl.d	$t0, $t0, $s6, 2
	move	$t1, $a4
	.p2align	4, , 16
.LBB3_16:                               # %vector.body57
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t0, 0
	vld	$vr1, $a7, 0
	vld	$vr2, $a6, 0
	vand.v	$vr0, $vr1, $vr0
	vxor.v	$vr1, $vr1, $vr3
	vand.v	$vr1, $vr2, $vr1
	vor.v	$vr0, $vr1, $vr0
	vst	$vr0, $a5, 0
	addi.d	$t1, $t1, -4
	addi.d	$a5, $a5, -16
	addi.d	$a6, $a6, -16
	addi.d	$a7, $a7, -16
	addi.d	$t0, $t0, -16
	bnez	$t1, .LBB3_16
# %bb.17:                               # %middle.block68
                                        #   in Loop: Header=BB3_7 Depth=1
	beq	$a3, $a4, .LBB3_6
	b	.LBB3_10
.LBB3_18:                               # %._crit_edge
	move	$a0, $s0
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
.LBB3_19:                               # %vector.memcheck
	sub.d	$a2, $s3, $fp
	ori	$a1, $zero, 16
	bltu	$a2, $a1, .LBB3_1
# %bb.20:                               # %vector.memcheck
	sub.d	$a2, $s1, $fp
	bltu	$a2, $a1, .LBB3_1
# %bb.21:                               # %vector.ph
	move	$a2, $a0
	bstrins.d	$a2, $zero, 1, 0
	sub.d	$a1, $a3, $a2
	slli.d	$a3, $a3, 2
	addi.d	$a5, $a3, -12
	add.d	$a3, $fp, $a5
	add.d	$a4, $s1, $a5
	add.d	$a5, $s3, $a5
	vrepli.b	$vr0, -1
	move	$a6, $a2
	.p2align	4, , 16
.LBB3_22:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vld	$vr2, $a5, 0
	vxor.v	$vr1, $vr1, $vr0
	vand.v	$vr1, $vr2, $vr1
	vst	$vr1, $a3, 0
	addi.d	$a6, $a6, -4
	addi.d	$a3, $a3, -16
	addi.d	$a4, $a4, -16
	addi.d	$a5, $a5, -16
	bnez	$a6, .LBB3_22
# %bb.23:                               # %middle.block
	bne	$a0, $a2, .LBB3_2
	b	.LBB3_4
.Lfunc_end3:
	.size	compl_cube, .Lfunc_end3-compl_cube
                                        # -- End function
	.p2align	5                               # -- Begin function compl_merge
	.type	compl_merge,@function
compl_merge:                            # @compl_merge
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
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	move	$s5, $a5
	move	$s2, $a4
	move	$s1, $a3
	move	$fp, $a2
	move	$s0, $a1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$s4, $a0, %got_pc_lo12(debug)
	ld.bu	$a0, $s4, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB4_2
# %bb.1:
	ld.w	$a1, $s0, 12
	ld.w	$a2, $fp, 12
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(pc1)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(pc2)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cprint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cprint)
	jirl	$ra, $ra, 0
.LBB4_2:
	ld.w	$a0, $s0, 12
	ld.w	$a1, $s0, 0
	mul.w	$a2, $a1, $a0
	lu12i.w	$a0, 2
	blez	$a2, .LBB4_7
# %bb.3:                                # %.lr.ph.preheader
	ld.d	$a1, $s0, 24
	alsl.d	$a2, $a2, $a1, 2
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB4_4:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_5 Depth 2
	ld.wu	$a4, $a1, 0
	andi	$a5, $a4, 1023
	addi.d	$a4, $a5, 1
	slli.d	$a5, $a5, 2
	.p2align	4, , 16
.LBB4_5:                                #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a6, $a1, $a5
	ldx.w	$a7, $s1, $a5
	and	$a6, $a7, $a6
	stx.w	$a6, $a1, $a5
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -4
	bltu	$a3, $a4, .LBB4_5
# %bb.6:                                #   in Loop: Header=BB4_4 Depth=1
	ld.w	$a4, $a1, 0
	or	$a4, $a4, $a0
	st.w	$a4, $a1, 0
	ld.w	$a4, $s0, 0
	alsl.d	$a1, $a4, $a1, 2
	bltu	$a1, $a2, .LBB4_4
.LBB4_7:                                # %._crit_edge
	ld.w	$a1, $fp, 12
	ld.w	$a2, $fp, 0
	mul.w	$a2, $a2, $a1
	blez	$a2, .LBB4_12
# %bb.8:                                # %.lr.ph167.preheader
	ld.d	$a1, $fp, 24
	alsl.d	$a2, $a2, $a1, 2
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB4_9:                                # %.lr.ph167
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
	ld.wu	$a4, $a1, 0
	andi	$a5, $a4, 1023
	addi.d	$a4, $a5, 1
	slli.d	$a5, $a5, 2
	.p2align	4, , 16
.LBB4_10:                               #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a6, $a1, $a5
	ldx.w	$a7, $s2, $a5
	and	$a6, $a7, $a6
	stx.w	$a6, $a1, $a5
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -4
	bltu	$a3, $a4, .LBB4_10
# %bb.11:                               #   in Loop: Header=BB4_9 Depth=1
	ld.w	$a4, $a1, 0
	or	$a4, $a4, $a0
	st.w	$a4, $a1, 0
	ld.w	$a4, $fp, 0
	alsl.d	$a1, $a4, $a1, 2
	bltu	$a1, $a2, .LBB4_9
.LBB4_12:                               # %._crit_edge168
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a1, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $a1, 80
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 72
	ld.d	$a0, $a0, 0
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a2, $s5, 3
	ldx.d	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sf_list)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(d1_order)
	ld.d	$s4, $a0, %got_pc_lo12(d1_order)
	ori	$a2, $zero, 8
	move	$a0, $s3
	move	$a3, $s4
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_list)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 8
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a3, $s4
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s7, $s3, 0
	beqz	$s7, .LBB4_24
# %bb.13:                               # %._crit_edge168
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $a0, 0
	beqz	$s5, .LBB4_24
# %bb.14:                               # %.lr.ph.i.preheader
	addi.w	$s6, $zero, -1
	lu12i.w	$a0, -3
	ori	$a0, $a0, 4095
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s3, $zero, 1
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_15:                               # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_19 Depth 2
	move	$a0, $s8
	move	$a1, $s4
	pcaddu18i	$ra, %call36(d1_order)
	jirl	$ra, $ra, 0
	beq	$a0, $s6, .LBB4_23
# %bb.16:                               # %.lr.ph.i
                                        #   in Loop: Header=BB4_15 Depth=1
	beqz	$a0, .LBB4_18
# %bb.17:                               # %.lr.ph.i
                                        #   in Loop: Header=BB4_15 Depth=1
	beq	$a0, $s3, .LBB4_20
	b	.LBB4_21
	.p2align	4, , 16
.LBB4_18:                               #   in Loop: Header=BB4_15 Depth=1
	ld.wu	$a0, $s5, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	st.w	$a0, $s5, 0
	ld.wu	$a0, $s7, 0
	andi	$a1, $a0, 1023
	addi.d	$a0, $a1, 1
	slli.d	$a1, $a1, 2
	.p2align	4, , 16
.LBB4_19:                               #   Parent Loop BB4_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $s7, $a1
	ldx.w	$a3, $s5, $a1
	or	$a2, $a3, $a2
	stx.w	$a2, $s7, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	bltu	$s3, $a0, .LBB4_19
.LBB4_20:                               #   in Loop: Header=BB4_15 Depth=1
	ld.d	$s5, $s4, 8
	addi.d	$s4, $s4, 8
.LBB4_21:                               #   in Loop: Header=BB4_15 Depth=1
	beqz	$s7, .LBB4_24
.LBB4_22:                               #   in Loop: Header=BB4_15 Depth=1
	bnez	$s5, .LBB4_15
	b	.LBB4_24
	.p2align	4, , 16
.LBB4_23:                               #   in Loop: Header=BB4_15 Depth=1
	ld.d	$s7, $s8, 8
	addi.d	$s8, $s8, 8
	bnez	$s7, .LBB4_22
.LBB4_24:                               # %compl_d1merge.exit
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB4_26
# %bb.25:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cubeunlist)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s4
	move	$a2, $s2
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	move	$a3, $s2
	pcaddu18i	$ra, %call36(compl_lift_onset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s4
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(compl_lift_onset)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	b	.LBB4_52
.LBB4_26:
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 80
	ld.d	$a1, $a1, 72
	ld.d	$s6, $a0, 32
	ld.d	$s7, $a0, 40
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ldx.d	$s5, $a1, $a0
	move	$a0, $s7
	move	$a1, $s2
	move	$a2, $s5
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s4, $a0, 0
	beqz	$s4, .LBB4_39
# %bb.27:                               # %.lr.ph.i140.preheader
	ori	$s3, $zero, 1
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	b	.LBB4_29
	.p2align	4, , 16
.LBB4_28:                               # %.loopexit.i
                                        #   in Loop: Header=BB4_29 Depth=1
	addi.d	$s8, $s8, 8
	ld.d	$s4, $s8, 0
	beqz	$s4, .LBB4_39
.LBB4_29:                               # %.lr.ph.i140
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_33 Depth 2
                                        #       Child Loop BB4_35 Depth 3
                                        #     Child Loop BB4_38 Depth 2
	ld.bu	$a0, $s4, 1
	andi	$a0, $a0, 32
	beqz	$a0, .LBB4_28
# %bb.30:                               #   in Loop: Header=BB4_29 Depth=1
	move	$a0, $s6
	move	$a1, $s2
	move	$a2, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(set_merge)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	b	.LBB4_33
	.p2align	4, , 16
.LBB4_31:                               #   in Loop: Header=BB4_33 Depth=2
	move	$a2, $a3
.LBB4_32:                               #   in Loop: Header=BB4_33 Depth=2
	beqz	$a2, .LBB4_37
.LBB4_33:                               #   Parent Loop BB4_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_35 Depth 3
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB4_28
# %bb.34:                               #   in Loop: Header=BB4_33 Depth=2
	ld.wu	$a2, $s6, 0
	addi.d	$a0, $a0, 8
	andi	$a4, $a2, 1023
	sltui	$a2, $a4, 1
	sub.w	$a3, $zero, $a2
	.p2align	4, , 16
.LBB4_35:                               #   Parent Loop BB4_29 Depth=1
                                        #     Parent Loop BB4_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a2, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $s6, $a4
	ldx.w	$a4, $a1, $a4
	andn	$a4, $a5, $a4
	bnez	$a4, .LBB4_32
# %bb.36:                               #   in Loop: Header=BB4_35 Depth=3
	addi.w	$a4, $a2, -1
	blt	$s3, $a2, .LBB4_35
	b	.LBB4_31
	.p2align	4, , 16
.LBB4_37:                               #   in Loop: Header=BB4_29 Depth=1
	ld.wu	$a0, $s4, 0
	andi	$a2, $a0, 1023
	addi.d	$a0, $a2, 1
	alsl.d	$a1, $a2, $s7, 2
	alsl.d	$a2, $a2, $s4, 2
	.p2align	4, , 16
.LBB4_38:                               #   Parent Loop BB4_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	ld.w	$a4, $a1, 0
	or	$a3, $a4, $a3
	st.w	$a3, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, -4
	bltu	$s3, $a0, .LBB4_38
	b	.LBB4_28
.LBB4_39:                               # %compl_lift.exit
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 80
	ld.d	$a1, $a1, 72
	ld.d	$s2, $a0, 32
	ld.d	$s5, $a0, 40
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$s6, $a1, $a0
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s6
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $a0, 0
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	beqz	$s4, .LBB4_52
# %bb.40:                               # %.lr.ph.i145.preheader
	ori	$s3, $zero, 1
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	b	.LBB4_42
	.p2align	4, , 16
.LBB4_41:                               # %.loopexit.i157
                                        #   in Loop: Header=BB4_42 Depth=1
	addi.d	$s7, $s7, 8
	ld.d	$s4, $s7, 0
	beqz	$s4, .LBB4_52
.LBB4_42:                               # %.lr.ph.i145
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_46 Depth 2
                                        #       Child Loop BB4_48 Depth 3
                                        #     Child Loop BB4_51 Depth 2
	ld.bu	$a0, $s4, 1
	andi	$a0, $a0, 32
	beqz	$a0, .LBB4_41
# %bb.43:                               #   in Loop: Header=BB4_42 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s4
	move	$a3, $s6
	pcaddu18i	$ra, %call36(set_merge)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	b	.LBB4_46
	.p2align	4, , 16
.LBB4_44:                               #   in Loop: Header=BB4_46 Depth=2
	move	$a2, $a3
.LBB4_45:                               #   in Loop: Header=BB4_46 Depth=2
	beqz	$a2, .LBB4_50
.LBB4_46:                               #   Parent Loop BB4_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_48 Depth 3
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB4_41
# %bb.47:                               #   in Loop: Header=BB4_46 Depth=2
	ld.wu	$a2, $s2, 0
	addi.d	$a0, $a0, 8
	andi	$a4, $a2, 1023
	sltui	$a2, $a4, 1
	sub.w	$a3, $zero, $a2
	.p2align	4, , 16
.LBB4_48:                               #   Parent Loop BB4_42 Depth=1
                                        #     Parent Loop BB4_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a2, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $s2, $a4
	ldx.w	$a4, $a1, $a4
	andn	$a4, $a5, $a4
	bnez	$a4, .LBB4_45
# %bb.49:                               #   in Loop: Header=BB4_48 Depth=3
	addi.w	$a4, $a2, -1
	blt	$s3, $a2, .LBB4_48
	b	.LBB4_44
	.p2align	4, , 16
.LBB4_50:                               #   in Loop: Header=BB4_42 Depth=1
	ld.wu	$a0, $s4, 0
	andi	$a2, $a0, 1023
	addi.d	$a0, $a2, 1
	alsl.d	$a1, $a2, $s5, 2
	alsl.d	$a2, $a2, $s4, 2
	.p2align	4, , 16
.LBB4_51:                               #   Parent Loop BB4_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	ld.w	$a4, $a1, 0
	or	$a3, $a4, $a3
	st.w	$a3, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, -4
	bltu	$s3, $a0, .LBB4_51
	b	.LBB4_41
.LBB4_52:                               # %.loopexit
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 12
	ld.w	$a2, $fp, 12
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	add.w	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	ld.w	$a2, $s0, 0
	move	$s1, $a0
	ld.d	$a0, $a0, 24
	mul.w	$a2, $a2, $a1
	blez	$a2, .LBB4_63
# %bb.53:                               # %.lr.ph172
	ld.d	$a1, $s0, 24
	alsl.d	$a2, $a2, $a1, 2
	ori	$a3, $zero, 3
	ori	$a4, $zero, 16
	b	.LBB4_55
	.p2align	4, , 16
.LBB4_54:                               # %.loopexit228
                                        #   in Loop: Header=BB4_55 Depth=1
	ld.w	$a5, $s1, 12
	ld.w	$a6, $s0, 0
	ld.w	$a7, $s1, 0
	addi.d	$a5, $a5, 1
	st.w	$a5, $s1, 12
	alsl.d	$a1, $a6, $a1, 2
	alsl.d	$a0, $a7, $a0, 2
	bgeu	$a1, $a2, .LBB4_63
.LBB4_55:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_58 Depth 2
                                        #     Child Loop BB4_62 Depth 2
	ld.wu	$a5, $a1, 0
	andi	$t1, $a5, 1023
	bltu	$t1, $a3, .LBB4_60
# %bb.56:                               #   in Loop: Header=BB4_55 Depth=1
	sub.d	$a5, $a1, $a0
	bltu	$a5, $a4, .LBB4_60
# %bb.57:                               # %vector.ph
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.d	$a6, $t1, 1
	andi	$a7, $a6, 2044
	sub.d	$a5, $t1, $a7
	alsl.d	$t0, $t1, $a0, 2
	addi.d	$t0, $t0, -12
	alsl.d	$t1, $t1, $a1, 2
	addi.d	$t1, $t1, -12
	move	$t2, $a7
	.p2align	4, , 16
.LBB4_58:                               # %vector.body
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t1, 0
	vst	$vr0, $t0, 0
	addi.d	$t2, $t2, -4
	addi.d	$t0, $t0, -16
	addi.d	$t1, $t1, -16
	bnez	$t2, .LBB4_58
# %bb.59:                               # %middle.block
                                        #   in Loop: Header=BB4_55 Depth=1
	beq	$a6, $a7, .LBB4_54
	b	.LBB4_61
	.p2align	4, , 16
.LBB4_60:                               #   in Loop: Header=BB4_55 Depth=1
	move	$a5, $t1
.LBB4_61:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_55 Depth=1
	addi.d	$a6, $a5, 1
	alsl.d	$a7, $a5, $a0, 2
	alsl.d	$a5, $a5, $a1, 2
	.p2align	4, , 16
.LBB4_62:                               # %scalar.ph
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a5, 0
	st.w	$t0, $a7, 0
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, -4
	bnez	$a6, .LBB4_62
	b	.LBB4_54
.LBB4_63:                               # %._crit_edge173
	ld.w	$a1, $fp, 12
	ld.w	$a5, $fp, 0
	mul.w	$a2, $a5, $a1
	blez	$a2, .LBB4_76
# %bb.64:                               # %.lr.ph177
	ld.d	$a1, $fp, 24
	alsl.d	$a2, $a2, $a1, 2
	ori	$a3, $zero, 3
	ori	$a4, $zero, 16
	b	.LBB4_67
	.p2align	4, , 16
.LBB4_65:                               # %.loopexit227
                                        #   in Loop: Header=BB4_67 Depth=1
	ld.w	$a6, $s1, 12
	ld.w	$a7, $s1, 0
	ld.w	$a5, $fp, 0
	addi.d	$a6, $a6, 1
	st.w	$a6, $s1, 12
	alsl.d	$a0, $a7, $a0, 2
.LBB4_66:                               #   in Loop: Header=BB4_67 Depth=1
	alsl.d	$a1, $a5, $a1, 2
	bgeu	$a1, $a2, .LBB4_76
.LBB4_67:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_71 Depth 2
                                        #     Child Loop BB4_75 Depth 2
	ld.wu	$a6, $a1, 0
	slli.d	$a7, $a6, 50
	bgez	$a7, .LBB4_66
# %bb.68:                               #   in Loop: Header=BB4_67 Depth=1
	andi	$t1, $a6, 1023
	bltu	$t1, $a3, .LBB4_73
# %bb.69:                               #   in Loop: Header=BB4_67 Depth=1
	sub.d	$a5, $a1, $a0
	bltu	$a5, $a4, .LBB4_73
# %bb.70:                               # %vector.ph214
                                        #   in Loop: Header=BB4_67 Depth=1
	addi.d	$a6, $t1, 1
	andi	$a7, $a6, 2044
	sub.d	$a5, $t1, $a7
	alsl.d	$t0, $t1, $a0, 2
	addi.d	$t0, $t0, -12
	alsl.d	$t1, $t1, $a1, 2
	addi.d	$t1, $t1, -12
	move	$t2, $a7
	.p2align	4, , 16
.LBB4_71:                               # %vector.body217
                                        #   Parent Loop BB4_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t1, 0
	vst	$vr0, $t0, 0
	addi.d	$t2, $t2, -4
	addi.d	$t0, $t0, -16
	addi.d	$t1, $t1, -16
	bnez	$t2, .LBB4_71
# %bb.72:                               # %middle.block224
                                        #   in Loop: Header=BB4_67 Depth=1
	beq	$a6, $a7, .LBB4_65
	b	.LBB4_74
	.p2align	4, , 16
.LBB4_73:                               #   in Loop: Header=BB4_67 Depth=1
	move	$a5, $t1
.LBB4_74:                               # %scalar.ph212.preheader
                                        #   in Loop: Header=BB4_67 Depth=1
	addi.d	$a6, $a5, 1
	alsl.d	$a7, $a5, $a0, 2
	alsl.d	$a5, $a5, $a1, 2
	.p2align	4, , 16
.LBB4_75:                               # %scalar.ph212
                                        #   Parent Loop BB4_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a5, 0
	st.w	$t0, $a7, 0
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, -4
	bnez	$a6, .LBB4_75
	b	.LBB4_65
.LBB4_76:                               # %._crit_edge178
	ld.bu	$a0, $s8, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB4_79
# %bb.77:
	ld.w	$a1, $s1, 12
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(verbose_debug)
	ld.d	$a0, $a0, %got_pc_lo12(verbose_debug)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB4_79
# %bb.78:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cprint)
	jirl	$ra, $ra, 0
.LBB4_79:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
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
.Lfunc_end4:
	.size	compl_merge, .Lfunc_end4-compl_merge
                                        # -- End function
	.p2align	5                               # -- Begin function compl_lift_onset
	.type	compl_lift_onset,@function
compl_lift_onset:                       # @compl_lift_onset
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
	ld.d	$s4, $a0, 0
	beqz	$s4, .LBB5_21
# %bb.1:                                # %.lr.ph52
	move	$fp, $a0
	move	$s0, $a2
	move	$s1, $a1
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.d	$a1, $a0, 80
	ld.d	$a0, $a0, 72
	ld.d	$s2, $a1, 32
	slli.d	$a1, $a3, 3
	ldx.d	$s5, $a0, $a1
	addi.d	$s6, $s2, -12
	ori	$s7, $zero, 1
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_2:                                # %.loopexit61
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.w	$a0, $s4, 0
	lu12i.w	$a1, 2
	or	$a0, $a0, $a1
	st.w	$a0, $s4, 0
.LBB5_3:                                # %.loopexit
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$fp, $fp, 8
	ld.d	$s4, $fp, 0
	beqz	$s4, .LBB5_21
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
                                        #     Child Loop BB5_8 Depth 2
                                        #     Child Loop BB5_11 Depth 2
                                        #     Child Loop BB5_16 Depth 2
                                        #     Child Loop BB5_20 Depth 2
	ld.bu	$a0, $s4, 1
	andi	$a0, $a0, 32
	beqz	$a0, .LBB5_3
# %bb.5:                                #   in Loop: Header=BB5_4 Depth=1
	ld.wu	$a0, $s2, 0
	ld.wu	$a1, $s0, 0
	srli.d	$a0, $a0, 10
	andi	$a2, $a1, 1023
	bstrins.d	$a1, $a0, 63, 10
	st.w	$a1, $s2, 0
	addi.d	$a0, $a2, 1
	slli.d	$a1, $a2, 2
	.p2align	4, , 16
.LBB5_6:                                #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $s0, $a1
	ldx.w	$a3, $s5, $a1
	and	$a2, $a3, $a2
	stx.w	$a2, $s2, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	bltu	$s7, $a0, .LBB5_6
# %bb.7:                                #   in Loop: Header=BB5_4 Depth=1
	ld.wu	$a0, $s2, 0
	ld.wu	$a1, $s4, 0
	srli.d	$a0, $a0, 10
	andi	$a2, $a1, 1023
	bstrins.d	$a1, $a0, 63, 10
	st.w	$a1, $s2, 0
	addi.d	$a0, $a2, 1
	slli.d	$a1, $a2, 2
	.p2align	4, , 16
.LBB5_8:                                #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $s4, $a1
	ldx.w	$a3, $s2, $a1
	or	$a2, $a3, $a2
	stx.w	$a2, $s2, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	bltu	$s7, $a0, .LBB5_8
# %bb.9:                                #   in Loop: Header=BB5_4 Depth=1
	ld.w	$a0, $s1, 12
	ld.w	$a1, $s1, 0
	mul.w	$a0, $a1, $a0
	blez	$a0, .LBB5_13
# %bb.10:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$s3, $s1, 24
	alsl.d	$s8, $a0, $s3, 2
	.p2align	4, , 16
.LBB5_11:                               # %.lr.ph
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cdist0)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_3
# %bb.12:                               #   in Loop: Header=BB5_11 Depth=2
	ld.w	$a0, $s1, 0
	alsl.d	$s3, $a0, $s3, 2
	bltu	$s3, $s8, .LBB5_11
.LBB5_13:                               # %._crit_edge
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.wu	$a0, $s2, 0
	andi	$a4, $a0, 1023
	ori	$a0, $zero, 3
	bltu	$a4, $a0, .LBB5_18
# %bb.14:                               # %._crit_edge
                                        #   in Loop: Header=BB5_4 Depth=1
	sub.d	$a0, $s2, $s4
	ori	$a1, $zero, 16
	bltu	$a0, $a1, .LBB5_18
# %bb.15:                               # %vector.ph
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a1, $a4, 1
	andi	$a2, $a1, 2044
	sub.d	$a0, $a4, $a2
	alsl.d	$a3, $a4, $s4, 2
	addi.d	$a3, $a3, -12
	alsl.d	$a4, $a4, $s6, 2
	move	$a5, $a2
	.p2align	4, , 16
.LBB5_16:                               # %vector.body
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, -16
	addi.d	$a4, $a4, -16
	bnez	$a5, .LBB5_16
# %bb.17:                               # %middle.block
                                        #   in Loop: Header=BB5_4 Depth=1
	beq	$a1, $a2, .LBB5_2
	b	.LBB5_19
.LBB5_18:                               #   in Loop: Header=BB5_4 Depth=1
	move	$a0, $a4
.LBB5_19:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a1, $a0, 1
	alsl.d	$a2, $a0, $s4, 2
	alsl.d	$a0, $a0, $s2, 2
	.p2align	4, , 16
.LBB5_20:                               # %scalar.ph
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a0, 0
	st.w	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	addi.d	$a0, $a0, -4
	bnez	$a1, .LBB5_20
	b	.LBB5_2
.LBB5_21:                               # %._crit_edge53
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
.Lfunc_end5:
	.size	compl_lift_onset, .Lfunc_end5-compl_lift_onset
                                        # -- End function
	.type	complement.compl_level,@object  # @complement.compl_level
	.local	complement.compl_level
	.comm	complement.compl_level,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"COMPLEMENT"
	.size	.L.str, 11

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"exit COMPLEMENT"
	.size	.L.str.1, 16

	.type	simp_comp.simplify_level,@object # @simp_comp.simplify_level
	.local	simp_comp.simplify_level
	.comm	simp_comp.simplify_level,4,4
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"SIMPCOMP"
	.size	.L.str.2, 9

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"exit SIMPCOMP (new)"
	.size	.L.str.3, 20

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"exit SIMPCOMP (compl)"
	.size	.L.str.4, 22

	.type	simplify.simplify_level,@object # @simplify.simplify_level
	.local	simplify.simplify_level
	.comm	simplify.simplify_level,4,4
	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"SIMPLIFY"
	.size	.L.str.5, 9

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"exit SIMPLIFY"
	.size	.L.str.6, 14

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"compl_merge: left %d, right %d\n"
	.size	.L.str.7, 32

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%s (cl)\n%s (cr)\nLeft is\n"
	.size	.L.str.8, 25

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Result %d\n"
	.size	.L.str.10, 11

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Right is"
	.size	.Lstr, 9

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym d1_order
