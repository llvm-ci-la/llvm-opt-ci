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
	b	.LBB0_28
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
	bnez	$a1, .LBB0_29
	b	.LBB0_31
.LBB0_9:
	move	$a0, $s0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(compl_cube)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a0
	bnez	$a1, .LBB0_29
	b	.LBB0_31
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
	ld.d	$a4, $fp, 16
	move	$s1, $a0
	beqz	$a4, .LBB0_23
# %bb.13:                               # %.lr.ph.preheader
	addi.d	$a0, $s1, 4
	addi.d	$a1, $s1, -12
	ori	$a2, $zero, 8
	ori	$a3, $zero, 1
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_14:                               # %.loopexit
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.d	$a4, $s2, 0
	addi.d	$s2, $s2, 8
	beqz	$a4, .LBB0_23
.LBB0_15:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_22 Depth 2
	ld.wu	$a5, $s1, 0
	andi	$a6, $a5, 1023
	sltu	$a7, $zero, $a6
	sub.d	$a5, $a6, $a7
	addi.d	$a5, $a5, 1
	bltu	$a5, $a2, .LBB0_21
# %bb.16:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_15 Depth=1
	alsl.d	$t0, $a7, $s1, 2
	alsl.d	$t1, $a6, $a4, 2
	addi.d	$t2, $t1, 4
	bgeu	$t0, $t2, .LBB0_18
# %bb.17:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_15 Depth=1
	alsl.d	$t0, $a6, $a0, 2
	alsl.d	$a7, $a7, $a4, 2
	bltu	$a7, $t0, .LBB0_21
.LBB0_18:                               # %vector.ph
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$a7, $a5
	bstrins.d	$a7, $zero, 2, 0
	sub.d	$t0, $a6, $a7
	alsl.d	$a6, $a6, $a1, 2
	addi.d	$t1, $t1, -12
	move	$t2, $a7
	.p2align	4, , 16
.LBB0_19:                               # %vector.body
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a6, 0
	vld	$vr1, $a6, -16
	vld	$vr2, $t1, 0
	vld	$vr3, $t1, -16
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	vst	$vr0, $a6, 0
	vst	$vr1, $a6, -16
	addi.d	$t2, $t2, -8
	addi.d	$a6, $a6, -32
	addi.d	$t1, $t1, -32
	bnez	$t2, .LBB0_19
# %bb.20:                               # %middle.block
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$a6, $t0
	beq	$a5, $a7, .LBB0_14
	.p2align	4, , 16
.LBB0_21:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	addi.d	$a5, $a6, 1
	alsl.d	$a7, $a6, $s1, 2
	alsl.d	$a4, $a6, $a4, 2
	.p2align	4, , 16
.LBB0_22:                               # %scalar.ph
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a7, 0
	ld.w	$t0, $a4, 0
	or	$a6, $t0, $a6
	st.w	$a6, $a7, 0
	addi.d	$a5, $a5, -1
	addi.d	$a7, $a7, -4
	addi.d	$a4, $a4, -4
	bltu	$a3, $a5, .LBB0_22
	b	.LBB0_14
.LBB0_23:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s2, $a0, %got_pc_lo12(cube)
	ld.d	$a1, $s2, 88
	move	$a0, $s1
	pcaddu18i	$ra, %call36(setp_equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_35
# %bb.24:
	beqz	$s1, .LBB0_26
# %bb.25:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_26:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(massive_count)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$a1, $a0, %got_pc_lo12(cdata)
	ld.w	$a0, $a1, 32
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB0_38
# %bb.27:
	ld.w	$a1, $s2, 0
.LBB0_28:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a0
	beqz	$a1, .LBB0_31
.LBB0_29:
	move	$a0, $a1
.LBB0_30:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_31:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_32:                               # %compl_special_cases.exit.thread
	ld.bu	$a0, $s4, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_34
# %bb.33:
	pcalau12i	$a0, %pc_hi20(complement.compl_level)
	ld.w	$a1, $a0, %pc_lo12(complement.compl_level)
	addi.w	$a2, $a1, -1
	st.w	$a2, $a0, %pc_lo12(complement.compl_level)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(debug1_print)
	jirl	$ra, $ra, 0
.LBB0_34:
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
.LBB0_35:
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
	beqz	$s1, .LBB0_37
# %bb.36:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_37:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(complement)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sf_append)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	b	.LBB0_32
.LBB0_38:
	ld.w	$a1, $a1, 36
	bne	$a1, $a0, .LBB0_42
# %bb.39:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(map_cover_to_unate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a0
	beqz	$a1, .LBB0_41
# %bb.40:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_41:
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
	b	.LBB0_32
.LBB0_42:                               # %compl_special_cases.exit
	ld.w	$s1, $s2, 0
	ori	$s0, $zero, 8
	ori	$s3, $zero, 33
	ori	$a0, $zero, 8
	blt	$s1, $s3, .LBB0_44
# %bb.43:
	addi.d	$a0, $s1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_44:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s2, 0
	move	$s1, $a0
	blt	$s2, $s3, .LBB0_46
# %bb.45:
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$s0, $a0, 8
.LBB0_46:
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
	beqz	$s1, .LBB0_48
# %bb.47:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_48:
	beqz	$s2, .LBB0_50
# %bb.49:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_50:
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB0_30
	b	.LBB0_31
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
	ld.d	$s3, $s1, 0
	beqz	$a0, .LBB1_9
# %bb.4:                                # %.preheader.preheader
	addi.d	$s4, $s1, 24
	ori	$s2, $zero, 16
	.p2align	4, , 16
.LBB1_5:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $s1, $s2
	beqz	$a0, .LBB1_10
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(full_row)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
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
	b	.LBB1_28
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
	bnez	$a1, .LBB1_29
	b	.LBB1_30
.LBB1_9:
	move	$a0, $s3
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(compl_cube)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $fp, 0
	bnez	$a1, .LBB1_29
	b	.LBB1_30
.LBB1_10:
	ld.w	$a0, $s3, 0
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
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s1, 16
	move	$s2, $a0
	beqz	$a4, .LBB1_23
# %bb.13:                               # %.lr.ph.preheader
	addi.d	$a0, $s2, 4
	addi.d	$a1, $s2, -12
	ori	$a2, $zero, 8
	ori	$a3, $zero, 1
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_14:                               # %.loopexit
                                        #   in Loop: Header=BB1_15 Depth=1
	ld.d	$a4, $s4, 0
	addi.d	$s4, $s4, 8
	beqz	$a4, .LBB1_23
.LBB1_15:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
                                        #     Child Loop BB1_22 Depth 2
	ld.wu	$a5, $s2, 0
	andi	$a6, $a5, 1023
	sltu	$a7, $zero, $a6
	sub.d	$a5, $a6, $a7
	addi.d	$a5, $a5, 1
	bltu	$a5, $a2, .LBB1_21
# %bb.16:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_15 Depth=1
	alsl.d	$t0, $a7, $s2, 2
	alsl.d	$t1, $a6, $a4, 2
	addi.d	$t2, $t1, 4
	bgeu	$t0, $t2, .LBB1_18
# %bb.17:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_15 Depth=1
	alsl.d	$t0, $a6, $a0, 2
	alsl.d	$a7, $a7, $a4, 2
	bltu	$a7, $t0, .LBB1_21
.LBB1_18:                               # %vector.ph
                                        #   in Loop: Header=BB1_15 Depth=1
	move	$a7, $a5
	bstrins.d	$a7, $zero, 2, 0
	sub.d	$t0, $a6, $a7
	alsl.d	$a6, $a6, $a1, 2
	addi.d	$t1, $t1, -12
	move	$t2, $a7
	.p2align	4, , 16
.LBB1_19:                               # %vector.body
                                        #   Parent Loop BB1_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a6, 0
	vld	$vr1, $a6, -16
	vld	$vr2, $t1, 0
	vld	$vr3, $t1, -16
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	vst	$vr0, $a6, 0
	vst	$vr1, $a6, -16
	addi.d	$t2, $t2, -8
	addi.d	$a6, $a6, -32
	addi.d	$t1, $t1, -32
	bnez	$t2, .LBB1_19
# %bb.20:                               # %middle.block
                                        #   in Loop: Header=BB1_15 Depth=1
	move	$a6, $t0
	beq	$a5, $a7, .LBB1_14
	.p2align	4, , 16
.LBB1_21:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB1_15 Depth=1
	addi.d	$a5, $a6, 1
	alsl.d	$a7, $a6, $s2, 2
	alsl.d	$a4, $a6, $a4, 2
	.p2align	4, , 16
.LBB1_22:                               # %scalar.ph
                                        #   Parent Loop BB1_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a7, 0
	ld.w	$t0, $a4, 0
	or	$a6, $t0, $a6
	st.w	$a6, $a7, 0
	addi.d	$a5, $a5, -1
	addi.d	$a7, $a7, -4
	addi.d	$a4, $a4, -4
	bltu	$a3, $a5, .LBB1_22
	b	.LBB1_14
.LBB1_23:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s6, $a0, %got_pc_lo12(cube)
	ld.d	$a1, $s6, 88
	move	$a0, $s2
	pcaddu18i	$ra, %call36(setp_equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_34
# %bb.24:
	beqz	$s2, .LBB1_26
# %bb.25:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_26:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(massive_count)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$a1, $a0, %got_pc_lo12(cdata)
	ld.w	$a0, $a1, 32
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB1_50
# %bb.27:
	ld.w	$a1, $s6, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 88
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 0
.LBB1_28:
	st.d	$a0, $s0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB1_30
.LBB1_29:                               # %simp_comp_special_cases.exit.thread.sink.split.sink.split
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_30:                               # %simp_comp_special_cases.exit.thread.sink.split
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_31:                               # %simp_comp_special_cases.exit.thread
	ld.bu	$a0, $s5, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_33
# %bb.32:
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
.LBB1_33:
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
.LBB1_34:
	ld.w	$s4, $s6, 0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s4, $a1, .LBB1_36
# %bb.35:
	addi.d	$a0, $s4, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB1_36:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 88
	move	$s4, $a0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB1_38
# %bb.37:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_38:
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(simp_comp)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 12
	ld.w	$a2, $a0, 0
	mul.w	$a2, $a2, $a1
	blez	$a2, .LBB1_49
# %bb.39:                               # %.lr.ph53.preheader
	ld.d	$a1, $a0, 24
	alsl.d	$a2, $a2, $a1, 2
	addi.d	$a3, $s2, 4
	addi.d	$a4, $s2, -12
	ori	$a5, $zero, 8
	ori	$a6, $zero, 1
	b	.LBB1_41
	.p2align	4, , 16
.LBB1_40:                               # %.loopexit125
                                        #   in Loop: Header=BB1_41 Depth=1
	ld.w	$a7, $a0, 0
	alsl.d	$a1, $a7, $a1, 2
	bgeu	$a1, $a2, .LBB1_49
.LBB1_41:                               # %.lr.ph53
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_45 Depth 2
                                        #     Child Loop BB1_48 Depth 2
	ld.wu	$a7, $a1, 0
	andi	$t0, $a7, 1023
	sltu	$t1, $zero, $t0
	sub.d	$a7, $t0, $t1
	addi.d	$a7, $a7, 1
	bltu	$a7, $a5, .LBB1_47
# %bb.42:                               # %vector.memcheck91
                                        #   in Loop: Header=BB1_41 Depth=1
	alsl.d	$t2, $t1, $a1, 2
	alsl.d	$t4, $t0, $a3, 2
	alsl.d	$t3, $t0, $a1, 2
	bgeu	$t2, $t4, .LBB1_44
# %bb.43:                               # %vector.memcheck91
                                        #   in Loop: Header=BB1_41 Depth=1
	addi.d	$t2, $t3, 4
	alsl.d	$t1, $t1, $s2, 2
	bltu	$t1, $t2, .LBB1_47
.LBB1_44:                               # %vector.ph105
                                        #   in Loop: Header=BB1_41 Depth=1
	move	$t1, $a7
	bstrins.d	$t1, $zero, 2, 0
	sub.d	$t2, $t0, $t1
	addi.d	$t3, $t3, -12
	alsl.d	$t0, $t0, $a4, 2
	move	$t4, $t1
	.p2align	4, , 16
.LBB1_45:                               # %vector.body108
                                        #   Parent Loop BB1_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t3, 0
	vld	$vr1, $t3, -16
	vld	$vr2, $t0, 0
	vld	$vr3, $t0, -16
	vand.v	$vr0, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vst	$vr0, $t3, 0
	vst	$vr1, $t3, -16
	addi.d	$t4, $t4, -8
	addi.d	$t3, $t3, -32
	addi.d	$t0, $t0, -32
	bnez	$t4, .LBB1_45
# %bb.46:                               # %middle.block122
                                        #   in Loop: Header=BB1_41 Depth=1
	move	$t0, $t2
	beq	$a7, $t1, .LBB1_40
	.p2align	4, , 16
.LBB1_47:                               # %scalar.ph103.preheader
                                        #   in Loop: Header=BB1_41 Depth=1
	addi.d	$a7, $t0, 1
	alsl.d	$t1, $t0, $a1, 2
	alsl.d	$t0, $t0, $s2, 2
	.p2align	4, , 16
.LBB1_48:                               # %scalar.ph103
                                        #   Parent Loop BB1_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t1, 0
	ld.w	$t3, $t0, 0
	and	$t2, $t3, $t2
	st.w	$t2, $t1, 0
	addi.d	$a7, $a7, -1
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, -4
	bltu	$a6, $a7, .LBB1_48
	b	.LBB1_40
.LBB1_49:                               # %._crit_edge54
	ld.d	$s1, $fp, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(compl_cube)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sf_append)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	move	$s1, $s2
	bnez	$s2, .LBB1_30
	b	.LBB1_31
.LBB1_50:
	ld.w	$a1, $a1, 36
	bne	$a1, $a0, .LBB1_52
# %bb.51:
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
	b	.LBB1_62
.LBB1_52:                               # %simp_comp_special_cases.exit
	ld.w	$s2, $s6, 0
	ori	$s3, $zero, 8
	ori	$s7, $zero, 33
	ori	$a0, $zero, 8
	blt	$s2, $s7, .LBB1_54
# %bb.53:
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB1_54:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s6, 0
	move	$s2, $a0
	blt	$s4, $s7, .LBB1_56
# %bb.55:
	addi.d	$a0, $s4, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$s3, $a0, 8
.LBB1_56:
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
	bge	$a1, $a2, .LBB1_58
# %bb.57:
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cubeunlist)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
.LBB1_58:
	beqz	$s2, .LBB1_60
# %bb.59:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_60:
	beqz	$s3, .LBB1_62
# %bb.61:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_62:
	ld.d	$a1, $s1, 0
	bnez	$a1, .LBB1_29
	b	.LBB1_30
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
	ld.d	$s1, $fp, 0
	beqz	$a0, .LBB2_9
# %bb.4:                                # %.preheader.preheader
	addi.d	$s2, $fp, 24
	ori	$s0, $zero, 16
	.p2align	4, , 16
.LBB2_5:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $fp, $s0
	beqz	$a0, .LBB2_10
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(full_row)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	beqz	$a0, .LBB2_5
# %bb.7:
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $s0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 88
	b	.LBB2_28
.LBB2_8:
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s1, $a0
	bnez	$a1, .LBB2_29
	b	.LBB2_30
.LBB2_9:
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 16
	move	$s0, $a0
	move	$a0, $s1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	b	.LBB2_28
.LBB2_10:
	ld.w	$a0, $s1, 0
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
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$a4, $fp, 16
	move	$s0, $a0
	beqz	$a4, .LBB2_23
# %bb.13:                               # %.lr.ph.preheader
	addi.d	$a0, $s0, 4
	addi.d	$a1, $s0, -12
	ori	$a2, $zero, 8
	ori	$a3, $zero, 1
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_14:                               # %.loopexit
                                        #   in Loop: Header=BB2_15 Depth=1
	ld.d	$a4, $s2, 0
	addi.d	$s2, $s2, 8
	beqz	$a4, .LBB2_23
.LBB2_15:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_19 Depth 2
                                        #     Child Loop BB2_22 Depth 2
	ld.wu	$a5, $s0, 0
	andi	$a6, $a5, 1023
	sltu	$a7, $zero, $a6
	sub.d	$a5, $a6, $a7
	addi.d	$a5, $a5, 1
	bltu	$a5, $a2, .LBB2_21
# %bb.16:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_15 Depth=1
	alsl.d	$t0, $a7, $s0, 2
	alsl.d	$t1, $a6, $a4, 2
	addi.d	$t2, $t1, 4
	bgeu	$t0, $t2, .LBB2_18
# %bb.17:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_15 Depth=1
	alsl.d	$t0, $a6, $a0, 2
	alsl.d	$a7, $a7, $a4, 2
	bltu	$a7, $t0, .LBB2_21
.LBB2_18:                               # %vector.ph
                                        #   in Loop: Header=BB2_15 Depth=1
	move	$a7, $a5
	bstrins.d	$a7, $zero, 2, 0
	sub.d	$t0, $a6, $a7
	alsl.d	$a6, $a6, $a1, 2
	addi.d	$t1, $t1, -12
	move	$t2, $a7
	.p2align	4, , 16
.LBB2_19:                               # %vector.body
                                        #   Parent Loop BB2_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a6, 0
	vld	$vr1, $a6, -16
	vld	$vr2, $t1, 0
	vld	$vr3, $t1, -16
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	vst	$vr0, $a6, 0
	vst	$vr1, $a6, -16
	addi.d	$t2, $t2, -8
	addi.d	$a6, $a6, -32
	addi.d	$t1, $t1, -32
	bnez	$t2, .LBB2_19
# %bb.20:                               # %middle.block
                                        #   in Loop: Header=BB2_15 Depth=1
	move	$a6, $t0
	beq	$a5, $a7, .LBB2_14
	.p2align	4, , 16
.LBB2_21:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB2_15 Depth=1
	addi.d	$a5, $a6, 1
	alsl.d	$a7, $a6, $s0, 2
	alsl.d	$a4, $a6, $a4, 2
	.p2align	4, , 16
.LBB2_22:                               # %scalar.ph
                                        #   Parent Loop BB2_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a7, 0
	ld.w	$t0, $a4, 0
	or	$a6, $t0, $a6
	st.w	$a6, $a7, 0
	addi.d	$a5, $a5, -1
	addi.d	$a7, $a7, -4
	addi.d	$a4, $a4, -4
	bltu	$a3, $a5, .LBB2_22
	b	.LBB2_14
.LBB2_23:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s3, $a0, %got_pc_lo12(cube)
	ld.d	$a1, $s3, 88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(setp_equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_34
# %bb.24:
	beqz	$s0, .LBB2_26
# %bb.25:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_26:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(massive_count)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$a1, $a0, %got_pc_lo12(cdata)
	ld.w	$a0, $a1, 32
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB2_49
# %bb.27:
	ld.w	$a1, $s3, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 88
.LBB2_28:
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s1, $a0
	beqz	$a1, .LBB2_30
.LBB2_29:                               # %simplify_special_cases.exit.thread.sink.split.sink.split
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_30:                               # %simplify_special_cases.exit.thread.sink.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_31:                               # %simplify_special_cases.exit.thread
	ld.bu	$a0, $s4, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_33
# %bb.32:
	pcalau12i	$a0, %pc_hi20(simplify.simplify_level)
	ld.w	$a1, $a0, %pc_lo12(simplify.simplify_level)
	addi.w	$a2, $a1, -1
	st.w	$a2, $a0, %pc_lo12(simplify.simplify_level)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(debug1_print)
	jirl	$ra, $ra, 0
.LBB2_33:
	move	$a0, $s1
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
.LBB2_34:
	ld.w	$s2, $s3, 0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s2, $a1, .LBB2_36
# %bb.35:
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB2_36:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 88
	move	$s2, $a0
	move	$a2, $s0
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB2_38
# %bb.37:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_38:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(simplify)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.w	$a0, $a0, 12
	ld.w	$a1, $s1, 0
	mul.w	$a1, $a1, $a0
	blez	$a1, .LBB2_63
# %bb.39:                               # %.lr.ph43.preheader
	ld.d	$a0, $s1, 24
	alsl.d	$a1, $a1, $a0, 2
	addi.d	$a2, $s0, 4
	addi.d	$a3, $s0, -12
	ori	$a4, $zero, 8
	ori	$a5, $zero, 1
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_40:                               # %.loopexit117
                                        #   in Loop: Header=BB2_41 Depth=1
	ld.w	$a6, $s1, 0
	alsl.d	$a0, $a6, $a0, 2
	bgeu	$a0, $a1, .LBB2_51
.LBB2_41:                               # %.lr.ph43
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_45 Depth 2
                                        #     Child Loop BB2_48 Depth 2
	ld.wu	$a6, $a0, 0
	andi	$a7, $a6, 1023
	sltu	$t0, $zero, $a7
	sub.d	$a6, $a7, $t0
	addi.d	$a6, $a6, 1
	bltu	$a6, $a4, .LBB2_47
# %bb.42:                               # %vector.memcheck83
                                        #   in Loop: Header=BB2_41 Depth=1
	alsl.d	$t1, $t0, $a0, 2
	alsl.d	$t3, $a7, $a2, 2
	alsl.d	$t2, $a7, $a0, 2
	bgeu	$t1, $t3, .LBB2_44
# %bb.43:                               # %vector.memcheck83
                                        #   in Loop: Header=BB2_41 Depth=1
	addi.d	$t1, $t2, 4
	alsl.d	$t0, $t0, $s0, 2
	bltu	$t0, $t1, .LBB2_47
.LBB2_44:                               # %vector.ph97
                                        #   in Loop: Header=BB2_41 Depth=1
	move	$t0, $a6
	bstrins.d	$t0, $zero, 2, 0
	sub.d	$t1, $a7, $t0
	addi.d	$t2, $t2, -12
	alsl.d	$a7, $a7, $a3, 2
	move	$t3, $t0
	.p2align	4, , 16
.LBB2_45:                               # %vector.body100
                                        #   Parent Loop BB2_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t2, 0
	vld	$vr1, $t2, -16
	vld	$vr2, $a7, 0
	vld	$vr3, $a7, -16
	vand.v	$vr0, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vst	$vr0, $t2, 0
	vst	$vr1, $t2, -16
	addi.d	$t3, $t3, -8
	addi.d	$t2, $t2, -32
	addi.d	$a7, $a7, -32
	bnez	$t3, .LBB2_45
# %bb.46:                               # %middle.block114
                                        #   in Loop: Header=BB2_41 Depth=1
	move	$a7, $t1
	beq	$a6, $t0, .LBB2_40
	.p2align	4, , 16
.LBB2_47:                               # %scalar.ph95.preheader
                                        #   in Loop: Header=BB2_41 Depth=1
	addi.d	$a6, $a7, 1
	alsl.d	$t0, $a7, $a0, 2
	alsl.d	$a7, $a7, $s0, 2
	.p2align	4, , 16
.LBB2_48:                               # %scalar.ph95
                                        #   Parent Loop BB2_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $t0, 0
	ld.w	$t2, $a7, 0
	and	$t1, $t2, $t1
	st.w	$t1, $t0, 0
	addi.d	$a6, $a6, -1
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, -4
	bltu	$a5, $a6, .LBB2_48
	b	.LBB2_40
.LBB2_49:
	ld.w	$a1, $a1, 36
	bne	$a1, $a0, .LBB2_52
# %bb.50:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cubeunlist)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s1, $a0
	bnez	$a1, .LBB2_29
	b	.LBB2_30
.LBB2_51:
	move	$fp, $s0
	b	.LBB2_30
.LBB2_52:                               # %simplify_special_cases.exit
	ld.w	$s0, $s3, 0
	ori	$s1, $zero, 8
	ori	$s5, $zero, 33
	ori	$a0, $zero, 8
	blt	$s0, $s5, .LBB2_54
# %bb.53:
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB2_54:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s3, 0
	move	$s0, $a0
	blt	$s2, $s5, .LBB2_56
# %bb.55:
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$s1, $a0, 8
.LBB2_56:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a3, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(binate_split_select)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(simplify)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(simplify)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $fp
	move	$a1, $s3
	move	$a3, $s0
	move	$a4, $s2
	move	$a5, $s1
	move	$a6, $zero
	pcaddu18i	$ra, %call36(compl_merge)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	move	$s1, $a0
	ld.w	$a0, $a0, 12
	sub.d	$a1, $a1, $fp
	srai.d	$a1, $a1, 3
	addi.d	$a1, $a1, -3
	bge	$a1, $a0, .LBB2_58
# %bb.57:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cubeunlist)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB2_58:
	beqz	$s0, .LBB2_60
# %bb.59:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_60:
	beqz	$s2, .LBB2_62
# %bb.61:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_62:
	ld.d	$a1, $fp, 0
	bnez	$a1, .LBB2_29
	b	.LBB2_30
.LBB2_63:                               # %._crit_edge44
	move	$fp, $s0
	bnez	$s0, .LBB2_30
	b	.LBB2_31
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
.LBB3_10:                               # %scalar.ph57.preheader
                                        #   in Loop: Header=BB3_7 Depth=1
	addi.d	$a3, $a2, 1
	slli.d	$a4, $a2, 2
	alsl.d	$a1, $a1, $a4, 2
	add.d	$a0, $a0, $a1
	alsl.d	$a1, $a2, $s3, 2
	alsl.d	$a4, $a2, $s1, 2
	alsl.d	$a2, $a2, $fp, 2
	.p2align	4, , 16
.LBB3_11:                               # %scalar.ph57
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
.LBB3_12:                               # %vector.memcheck50
                                        #   in Loop: Header=BB3_7 Depth=1
	alsl.d	$a2, $a1, $a0, 2
	sub.d	$a4, $fp, $a2
	bltu	$a4, $s5, .LBB3_9
# %bb.13:                               # %vector.memcheck50
                                        #   in Loop: Header=BB3_7 Depth=1
	sub.d	$a4, $s1, $a2
	bltu	$a4, $s5, .LBB3_9
# %bb.14:                               # %vector.memcheck50
                                        #   in Loop: Header=BB3_7 Depth=1
	sub.d	$a2, $s3, $a2
	bltu	$a2, $s5, .LBB3_9
# %bb.15:                               # %vector.ph59
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
.LBB3_16:                               # %vector.body62
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
# %bb.17:                               # %middle.block73
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
	ori	$a1, $zero, 32
	bltu	$a2, $a1, .LBB3_1
# %bb.20:                               # %vector.memcheck
	sub.d	$a2, $s1, $fp
	bltu	$a2, $a1, .LBB3_1
# %bb.21:                               # %vector.ph
	move	$a2, $a0
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a1, $a3, $a2
	slli.d	$a3, $a3, 2
	addi.d	$a5, $a3, -12
	add.d	$a3, $s3, $a5
	add.d	$a4, $fp, $a5
	add.d	$a5, $s1, $a5
	vrepli.b	$vr0, -1
	move	$a6, $a2
	.p2align	4, , 16
.LBB3_22:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, 0
	vld	$vr2, $a5, -16
	vld	$vr3, $a3, 0
	vld	$vr4, $a3, -16
	vxor.v	$vr1, $vr1, $vr0
	vxor.v	$vr2, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vand.v	$vr2, $vr4, $vr2
	vst	$vr1, $a4, 0
	vst	$vr2, $a4, -16
	addi.d	$a6, $a6, -8
	addi.d	$a3, $a3, -32
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
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
	move	$s4, $a5
	move	$s2, $a4
	move	$s1, $a3
	move	$fp, $a2
	move	$s0, $a1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$a0, $a0, %got_pc_lo12(debug)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.bu	$a0, $a0, 0
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
	blez	$a2, .LBB4_13
# %bb.3:                                # %.lr.ph.preheader
	ld.d	$a1, $s0, 24
	alsl.d	$a2, $a2, $a1, 2
	addi.d	$a3, $s1, 4
	addi.d	$a4, $s1, -12
	ori	$a5, $zero, 8
	ori	$a6, $zero, 1
	b	.LBB4_5
	.p2align	4, , 16
.LBB4_4:                                # %.loopexit402
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.w	$a7, $a1, 0
	or	$a7, $a7, $a0
	st.w	$a7, $a1, 0
	ld.w	$a7, $s0, 0
	alsl.d	$a1, $a7, $a1, 2
	bgeu	$a1, $a2, .LBB4_13
.LBB4_5:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
                                        #     Child Loop BB4_12 Depth 2
	ld.wu	$a7, $a1, 0
	andi	$t0, $a7, 1023
	sltu	$t1, $zero, $t0
	sub.d	$a7, $t0, $t1
	addi.d	$a7, $a7, 1
	bltu	$a7, $a5, .LBB4_11
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB4_5 Depth=1
	alsl.d	$t2, $t1, $a1, 2
	alsl.d	$t4, $t0, $a3, 2
	alsl.d	$t3, $t0, $a1, 2
	bgeu	$t2, $t4, .LBB4_8
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB4_5 Depth=1
	addi.d	$t2, $t3, 4
	alsl.d	$t1, $t1, $s1, 2
	bltu	$t1, $t2, .LBB4_11
.LBB4_8:                                # %vector.ph
                                        #   in Loop: Header=BB4_5 Depth=1
	move	$t1, $a7
	bstrins.d	$t1, $zero, 2, 0
	sub.d	$t2, $t0, $t1
	addi.d	$t3, $t3, -12
	alsl.d	$t0, $t0, $a4, 2
	move	$t4, $t1
	.p2align	4, , 16
.LBB4_9:                                # %vector.body
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t3, 0
	vld	$vr1, $t3, -16
	vld	$vr2, $t0, 0
	vld	$vr3, $t0, -16
	vand.v	$vr0, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vst	$vr0, $t3, 0
	vst	$vr1, $t3, -16
	addi.d	$t4, $t4, -8
	addi.d	$t3, $t3, -32
	addi.d	$t0, $t0, -32
	bnez	$t4, .LBB4_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB4_5 Depth=1
	move	$t0, $t2
	beq	$a7, $t1, .LBB4_4
	.p2align	4, , 16
.LBB4_11:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_5 Depth=1
	addi.d	$a7, $t0, 1
	alsl.d	$t1, $t0, $s1, 2
	alsl.d	$t0, $t0, $a1, 2
	.p2align	4, , 16
.LBB4_12:                               # %scalar.ph
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t0, 0
	ld.w	$t3, $t1, 0
	and	$t2, $t3, $t2
	st.w	$t2, $t0, 0
	addi.d	$a7, $a7, -1
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, -4
	bltu	$a6, $a7, .LBB4_12
	b	.LBB4_4
.LBB4_13:                               # %._crit_edge
	ld.w	$a1, $fp, 12
	ld.w	$a2, $fp, 0
	mul.w	$a2, $a2, $a1
	blez	$a2, .LBB4_24
# %bb.14:                               # %.lr.ph167.preheader
	ld.d	$a1, $fp, 24
	alsl.d	$a2, $a2, $a1, 2
	addi.d	$a3, $s2, 4
	addi.d	$a4, $s2, -12
	ori	$a5, $zero, 8
	ori	$a6, $zero, 1
	b	.LBB4_16
	.p2align	4, , 16
.LBB4_15:                               # %.loopexit401
                                        #   in Loop: Header=BB4_16 Depth=1
	ld.w	$a7, $a1, 0
	or	$a7, $a7, $a0
	st.w	$a7, $a1, 0
	ld.w	$a7, $fp, 0
	alsl.d	$a1, $a7, $a1, 2
	bgeu	$a1, $a2, .LBB4_24
.LBB4_16:                               # %.lr.ph167
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_20 Depth 2
                                        #     Child Loop BB4_23 Depth 2
	ld.wu	$a7, $a1, 0
	andi	$t0, $a7, 1023
	sltu	$t1, $zero, $t0
	sub.d	$a7, $t0, $t1
	addi.d	$a7, $a7, 1
	bltu	$a7, $a5, .LBB4_22
# %bb.17:                               # %vector.memcheck219
                                        #   in Loop: Header=BB4_16 Depth=1
	alsl.d	$t2, $t1, $a1, 2
	alsl.d	$t4, $t0, $a3, 2
	alsl.d	$t3, $t0, $a1, 2
	bgeu	$t2, $t4, .LBB4_19
# %bb.18:                               # %vector.memcheck219
                                        #   in Loop: Header=BB4_16 Depth=1
	addi.d	$t2, $t3, 4
	alsl.d	$t1, $t1, $s2, 2
	bltu	$t1, $t2, .LBB4_22
.LBB4_19:                               # %vector.ph233
                                        #   in Loop: Header=BB4_16 Depth=1
	move	$t1, $a7
	bstrins.d	$t1, $zero, 2, 0
	sub.d	$t2, $t0, $t1
	addi.d	$t3, $t3, -12
	alsl.d	$t0, $t0, $a4, 2
	move	$t4, $t1
	.p2align	4, , 16
.LBB4_20:                               # %vector.body236
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t3, 0
	vld	$vr1, $t3, -16
	vld	$vr2, $t0, 0
	vld	$vr3, $t0, -16
	vand.v	$vr0, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vst	$vr0, $t3, 0
	vst	$vr1, $t3, -16
	addi.d	$t4, $t4, -8
	addi.d	$t3, $t3, -32
	addi.d	$t0, $t0, -32
	bnez	$t4, .LBB4_20
# %bb.21:                               # %middle.block250
                                        #   in Loop: Header=BB4_16 Depth=1
	move	$t0, $t2
	beq	$a7, $t1, .LBB4_15
	.p2align	4, , 16
.LBB4_22:                               # %scalar.ph231.preheader
                                        #   in Loop: Header=BB4_16 Depth=1
	addi.d	$a7, $t0, 1
	alsl.d	$t1, $t0, $s2, 2
	alsl.d	$t0, $t0, $a1, 2
	.p2align	4, , 16
.LBB4_23:                               # %scalar.ph231
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t0, 0
	ld.w	$t3, $t1, 0
	and	$t2, $t3, $t2
	st.w	$t2, $t0, 0
	addi.d	$a7, $a7, -1
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, -4
	bltu	$a6, $a7, .LBB4_23
	b	.LBB4_15
.LBB4_24:                               # %._crit_edge168
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a1, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $a1, 80
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 72
	ld.d	$a0, $a0, 0
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a2, $s4, 3
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
	beqz	$s7, .LBB4_42
# %bb.25:                               # %._crit_edge168
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $a0, 0
	beqz	$s5, .LBB4_42
# %bb.26:                               # %.lr.ph.i.preheader
	addi.w	$s6, $zero, -1
	lu12i.w	$a0, -3
	ori	$a0, $a0, 4095
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s3, $zero, 1
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_27:                               # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_34 Depth 2
                                        #     Child Loop BB4_37 Depth 2
	move	$a0, $s8
	move	$a1, $s4
	pcaddu18i	$ra, %call36(d1_order)
	jirl	$ra, $ra, 0
	beq	$a0, $s6, .LBB4_41
# %bb.28:                               # %.lr.ph.i
                                        #   in Loop: Header=BB4_27 Depth=1
	beqz	$a0, .LBB4_30
# %bb.29:                               # %.lr.ph.i
                                        #   in Loop: Header=BB4_27 Depth=1
	beq	$a0, $s3, .LBB4_38
	b	.LBB4_39
	.p2align	4, , 16
.LBB4_30:                               #   in Loop: Header=BB4_27 Depth=1
	ld.wu	$a0, $s5, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	st.w	$a0, $s5, 0
	ld.wu	$a0, $s7, 0
	andi	$a0, $a0, 1023
	sltu	$a2, $zero, $a0
	sub.d	$a1, $a0, $a2
	addi.d	$a1, $a1, 1
	ori	$a3, $zero, 8
	bltu	$a1, $a3, .LBB4_36
# %bb.31:                               # %vector.memcheck253
                                        #   in Loop: Header=BB4_27 Depth=1
	alsl.d	$a5, $a2, $s7, 2
	alsl.d	$a4, $a0, $s5, 2
	addi.d	$a6, $a4, 4
	alsl.d	$a3, $a0, $s7, 2
	bgeu	$a5, $a6, .LBB4_33
# %bb.32:                               # %vector.memcheck253
                                        #   in Loop: Header=BB4_27 Depth=1
	addi.d	$a5, $a3, 4
	alsl.d	$a2, $a2, $s5, 2
	bltu	$a2, $a5, .LBB4_36
.LBB4_33:                               # %vector.ph267
                                        #   in Loop: Header=BB4_27 Depth=1
	move	$a2, $a1
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a0, $a0, $a2
	addi.d	$a3, $a3, -12
	addi.d	$a4, $a4, -12
	move	$a5, $a2
	.p2align	4, , 16
.LBB4_34:                               # %vector.body270
                                        #   Parent Loop BB4_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, 0
	vld	$vr1, $a3, -16
	vld	$vr2, $a4, 0
	vld	$vr3, $a4, -16
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	vst	$vr0, $a3, 0
	vst	$vr1, $a3, -16
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, -32
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB4_34
# %bb.35:                               # %middle.block284
                                        #   in Loop: Header=BB4_27 Depth=1
	beq	$a1, $a2, .LBB4_38
	.p2align	4, , 16
.LBB4_36:                               # %scalar.ph265.preheader
                                        #   in Loop: Header=BB4_27 Depth=1
	addi.d	$a1, $a0, 1
	alsl.d	$a2, $a0, $s5, 2
	alsl.d	$a0, $a0, $s7, 2
	.p2align	4, , 16
.LBB4_37:                               # %scalar.ph265
                                        #   Parent Loop BB4_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a0, 0
	ld.w	$a4, $a2, 0
	or	$a3, $a4, $a3
	st.w	$a3, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	addi.d	$a0, $a0, -4
	bltu	$s3, $a1, .LBB4_37
.LBB4_38:                               # %.loopexit400
                                        #   in Loop: Header=BB4_27 Depth=1
	ld.d	$s5, $s4, 8
	addi.d	$s4, $s4, 8
.LBB4_39:                               #   in Loop: Header=BB4_27 Depth=1
	beqz	$s7, .LBB4_42
.LBB4_40:                               #   in Loop: Header=BB4_27 Depth=1
	bnez	$s5, .LBB4_27
	b	.LBB4_42
	.p2align	4, , 16
.LBB4_41:                               #   in Loop: Header=BB4_27 Depth=1
	ld.d	$s7, $s8, 8
	addi.d	$s8, $s8, 8
	bnez	$s7, .LBB4_40
.LBB4_42:                               # %compl_d1merge.exit
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB4_44
# %bb.43:
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
	b	.LBB4_82
.LBB4_44:
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 80
	ld.d	$a1, $a1, 72
	ld.d	$s6, $a0, 32
	ld.d	$s7, $a0, 40
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ldx.d	$s5, $a1, $a0
	move	$a0, $s7
	move	$a1, $s2
	move	$a2, $s5
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s4, $a0, 0
	beqz	$s4, .LBB4_63
# %bb.45:                               # %.lr.ph.i140.preheader
	addi.d	$a0, $s7, 4
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $s7, -12
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s8, $zero, 1
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	b	.LBB4_47
	.p2align	4, , 16
.LBB4_46:                               # %.loopexit.i
                                        #   in Loop: Header=BB4_47 Depth=1
	addi.d	$s3, $s3, 8
	ld.d	$s4, $s3, 0
	beqz	$s4, .LBB4_63
.LBB4_47:                               # %.lr.ph.i140
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_51 Depth 2
                                        #       Child Loop BB4_53 Depth 3
                                        #     Child Loop BB4_59 Depth 2
                                        #     Child Loop BB4_62 Depth 2
	ld.bu	$a0, $s4, 1
	andi	$a0, $a0, 32
	beqz	$a0, .LBB4_46
# %bb.48:                               #   in Loop: Header=BB4_47 Depth=1
	move	$a0, $s6
	move	$a1, $s2
	move	$a2, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(set_merge)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	b	.LBB4_51
	.p2align	4, , 16
.LBB4_49:                               #   in Loop: Header=BB4_51 Depth=2
	move	$a2, $a3
.LBB4_50:                               #   in Loop: Header=BB4_51 Depth=2
	beqz	$a2, .LBB4_55
.LBB4_51:                               #   Parent Loop BB4_47 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_53 Depth 3
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB4_46
# %bb.52:                               #   in Loop: Header=BB4_51 Depth=2
	ld.wu	$a2, $s6, 0
	addi.d	$a0, $a0, 8
	andi	$a4, $a2, 1023
	sltui	$a2, $a4, 1
	sub.w	$a3, $zero, $a2
	.p2align	4, , 16
.LBB4_53:                               #   Parent Loop BB4_47 Depth=1
                                        #     Parent Loop BB4_51 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a2, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $s6, $a4
	ldx.w	$a4, $a1, $a4
	andn	$a4, $a5, $a4
	bnez	$a4, .LBB4_50
# %bb.54:                               #   in Loop: Header=BB4_53 Depth=3
	addi.w	$a4, $a2, -1
	blt	$s8, $a2, .LBB4_53
	b	.LBB4_49
	.p2align	4, , 16
.LBB4_55:                               #   in Loop: Header=BB4_47 Depth=1
	ld.wu	$a0, $s4, 0
	andi	$a1, $a0, 1023
	sltu	$a2, $zero, $a1
	sub.d	$a0, $a1, $a2
	addi.d	$a0, $a0, 1
	ori	$a3, $zero, 8
	bltu	$a0, $a3, .LBB4_61
# %bb.56:                               # %vector.memcheck287
                                        #   in Loop: Header=BB4_47 Depth=1
	alsl.d	$a3, $a2, $s4, 2
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a5, $a1, $a4, 2
	alsl.d	$a4, $a1, $s4, 2
	bgeu	$a3, $a5, .LBB4_58
# %bb.57:                               # %vector.memcheck287
                                        #   in Loop: Header=BB4_47 Depth=1
	addi.d	$a3, $a4, 4
	alsl.d	$a2, $a2, $s7, 2
	bltu	$a2, $a3, .LBB4_61
.LBB4_58:                               # %vector.ph301
                                        #   in Loop: Header=BB4_47 Depth=1
	move	$a2, $a0
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a3, $a1, $a2
	addi.d	$a4, $a4, -12
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a5, 2
	move	$a5, $a2
	.p2align	4, , 16
.LBB4_59:                               # %vector.body304
                                        #   Parent Loop BB4_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, 0
	vld	$vr1, $a4, -16
	vld	$vr2, $a1, 0
	vld	$vr3, $a1, -16
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	vst	$vr0, $a4, 0
	vst	$vr1, $a4, -16
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, -32
	addi.d	$a1, $a1, -32
	bnez	$a5, .LBB4_59
# %bb.60:                               # %middle.block318
                                        #   in Loop: Header=BB4_47 Depth=1
	move	$a1, $a3
	beq	$a0, $a2, .LBB4_46
	.p2align	4, , 16
.LBB4_61:                               # %scalar.ph299.preheader
                                        #   in Loop: Header=BB4_47 Depth=1
	addi.d	$a0, $a1, 1
	alsl.d	$a2, $a1, $s7, 2
	alsl.d	$a1, $a1, $s4, 2
	.p2align	4, , 16
.LBB4_62:                               # %scalar.ph299
                                        #   Parent Loop BB4_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a2, 0
	or	$a3, $a4, $a3
	st.w	$a3, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -4
	bltu	$s8, $a0, .LBB4_62
	b	.LBB4_46
.LBB4_63:                               # %compl_lift.exit
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 80
	ld.d	$a1, $a1, 72
	ld.d	$s2, $a0, 32
	ld.d	$s5, $a0, 40
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$s6, $a1, $a0
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s6
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $a0, 0
	beqz	$s4, .LBB4_82
# %bb.64:                               # %.lr.ph.i145.preheader
	addi.d	$s3, $s5, 4
	addi.d	$a0, $s5, -12
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s8, $zero, 1
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	b	.LBB4_66
	.p2align	4, , 16
.LBB4_65:                               # %.loopexit.i157
                                        #   in Loop: Header=BB4_66 Depth=1
	addi.d	$s7, $s7, 8
	ld.d	$s4, $s7, 0
	beqz	$s4, .LBB4_82
.LBB4_66:                               # %.lr.ph.i145
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_70 Depth 2
                                        #       Child Loop BB4_72 Depth 3
                                        #     Child Loop BB4_78 Depth 2
                                        #     Child Loop BB4_81 Depth 2
	ld.bu	$a0, $s4, 1
	andi	$a0, $a0, 32
	beqz	$a0, .LBB4_65
# %bb.67:                               #   in Loop: Header=BB4_66 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s4
	move	$a3, $s6
	pcaddu18i	$ra, %call36(set_merge)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	b	.LBB4_70
	.p2align	4, , 16
.LBB4_68:                               #   in Loop: Header=BB4_70 Depth=2
	move	$a2, $a3
.LBB4_69:                               #   in Loop: Header=BB4_70 Depth=2
	beqz	$a2, .LBB4_74
.LBB4_70:                               #   Parent Loop BB4_66 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_72 Depth 3
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB4_65
# %bb.71:                               #   in Loop: Header=BB4_70 Depth=2
	ld.wu	$a2, $s2, 0
	addi.d	$a0, $a0, 8
	andi	$a4, $a2, 1023
	sltui	$a2, $a4, 1
	sub.w	$a3, $zero, $a2
	.p2align	4, , 16
.LBB4_72:                               #   Parent Loop BB4_66 Depth=1
                                        #     Parent Loop BB4_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a2, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $s2, $a4
	ldx.w	$a4, $a1, $a4
	andn	$a4, $a5, $a4
	bnez	$a4, .LBB4_69
# %bb.73:                               #   in Loop: Header=BB4_72 Depth=3
	addi.w	$a4, $a2, -1
	blt	$s8, $a2, .LBB4_72
	b	.LBB4_68
	.p2align	4, , 16
.LBB4_74:                               #   in Loop: Header=BB4_66 Depth=1
	ld.wu	$a0, $s4, 0
	andi	$a1, $a0, 1023
	sltu	$a2, $zero, $a1
	sub.d	$a0, $a1, $a2
	addi.d	$a0, $a0, 1
	ori	$a3, $zero, 8
	bltu	$a0, $a3, .LBB4_80
# %bb.75:                               # %vector.memcheck321
                                        #   in Loop: Header=BB4_66 Depth=1
	alsl.d	$a3, $a2, $s4, 2
	alsl.d	$a5, $a1, $s3, 2
	alsl.d	$a4, $a1, $s4, 2
	bgeu	$a3, $a5, .LBB4_77
# %bb.76:                               # %vector.memcheck321
                                        #   in Loop: Header=BB4_66 Depth=1
	addi.d	$a3, $a4, 4
	alsl.d	$a2, $a2, $s5, 2
	bltu	$a2, $a3, .LBB4_80
.LBB4_77:                               # %vector.ph335
                                        #   in Loop: Header=BB4_66 Depth=1
	move	$a2, $a0
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a3, $a1, $a2
	addi.d	$a4, $a4, -12
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a5, 2
	move	$a5, $a2
	.p2align	4, , 16
.LBB4_78:                               # %vector.body338
                                        #   Parent Loop BB4_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, 0
	vld	$vr1, $a4, -16
	vld	$vr2, $a1, 0
	vld	$vr3, $a1, -16
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	vst	$vr0, $a4, 0
	vst	$vr1, $a4, -16
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, -32
	addi.d	$a1, $a1, -32
	bnez	$a5, .LBB4_78
# %bb.79:                               # %middle.block352
                                        #   in Loop: Header=BB4_66 Depth=1
	move	$a1, $a3
	beq	$a0, $a2, .LBB4_65
	.p2align	4, , 16
.LBB4_80:                               # %scalar.ph333.preheader
                                        #   in Loop: Header=BB4_66 Depth=1
	addi.d	$a0, $a1, 1
	alsl.d	$a2, $a1, $s5, 2
	alsl.d	$a1, $a1, $s4, 2
	.p2align	4, , 16
.LBB4_81:                               # %scalar.ph333
                                        #   Parent Loop BB4_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a2, 0
	or	$a3, $a4, $a3
	st.w	$a3, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -4
	bltu	$s8, $a0, .LBB4_81
	b	.LBB4_65
.LBB4_82:                               # %.loopexit
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
	blez	$a2, .LBB4_93
# %bb.83:                               # %.lr.ph172
	ld.d	$a1, $s0, 24
	alsl.d	$a2, $a2, $a1, 2
	ori	$a3, $zero, 7
	ori	$a4, $zero, 32
	b	.LBB4_85
	.p2align	4, , 16
.LBB4_84:                               # %.loopexit399
                                        #   in Loop: Header=BB4_85 Depth=1
	ld.w	$a5, $s1, 12
	ld.w	$a6, $s0, 0
	ld.w	$a7, $s1, 0
	addi.d	$a5, $a5, 1
	st.w	$a5, $s1, 12
	alsl.d	$a1, $a6, $a1, 2
	alsl.d	$a0, $a7, $a0, 2
	bgeu	$a1, $a2, .LBB4_93
.LBB4_85:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_88 Depth 2
                                        #     Child Loop BB4_92 Depth 2
	ld.wu	$a5, $a1, 0
	andi	$t1, $a5, 1023
	bltu	$t1, $a3, .LBB4_90
# %bb.86:                               #   in Loop: Header=BB4_85 Depth=1
	sub.d	$a5, $a1, $a0
	bltu	$a5, $a4, .LBB4_90
# %bb.87:                               # %vector.ph360
                                        #   in Loop: Header=BB4_85 Depth=1
	addi.d	$a6, $t1, 1
	andi	$a7, $a6, 2040
	sub.d	$a5, $t1, $a7
	alsl.d	$t0, $t1, $a1, 2
	addi.d	$t0, $t0, -12
	alsl.d	$t1, $t1, $a0, 2
	addi.d	$t1, $t1, -12
	move	$t2, $a7
	.p2align	4, , 16
.LBB4_88:                               # %vector.body363
                                        #   Parent Loop BB4_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t0, 0
	vld	$vr1, $t0, -16
	vst	$vr0, $t1, 0
	vst	$vr1, $t1, -16
	addi.d	$t2, $t2, -8
	addi.d	$t0, $t0, -32
	addi.d	$t1, $t1, -32
	bnez	$t2, .LBB4_88
# %bb.89:                               # %middle.block373
                                        #   in Loop: Header=BB4_85 Depth=1
	beq	$a6, $a7, .LBB4_84
	b	.LBB4_91
	.p2align	4, , 16
.LBB4_90:                               #   in Loop: Header=BB4_85 Depth=1
	move	$a5, $t1
.LBB4_91:                               # %scalar.ph358.preheader
                                        #   in Loop: Header=BB4_85 Depth=1
	addi.d	$a6, $a5, 1
	alsl.d	$a7, $a5, $a0, 2
	alsl.d	$a5, $a5, $a1, 2
	.p2align	4, , 16
.LBB4_92:                               # %scalar.ph358
                                        #   Parent Loop BB4_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a5, 0
	st.w	$t0, $a7, 0
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, -4
	bnez	$a6, .LBB4_92
	b	.LBB4_84
.LBB4_93:                               # %._crit_edge173
	ld.w	$a1, $fp, 12
	ld.w	$a5, $fp, 0
	mul.w	$a2, $a5, $a1
	blez	$a2, .LBB4_106
# %bb.94:                               # %.lr.ph177
	ld.d	$a1, $fp, 24
	alsl.d	$a2, $a2, $a1, 2
	ori	$a3, $zero, 7
	ori	$a4, $zero, 32
	b	.LBB4_97
	.p2align	4, , 16
.LBB4_95:                               # %.loopexit398
                                        #   in Loop: Header=BB4_97 Depth=1
	ld.w	$a6, $s1, 12
	ld.w	$a7, $s1, 0
	ld.w	$a5, $fp, 0
	addi.d	$a6, $a6, 1
	st.w	$a6, $s1, 12
	alsl.d	$a0, $a7, $a0, 2
.LBB4_96:                               #   in Loop: Header=BB4_97 Depth=1
	alsl.d	$a1, $a5, $a1, 2
	bgeu	$a1, $a2, .LBB4_106
.LBB4_97:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_101 Depth 2
                                        #     Child Loop BB4_105 Depth 2
	ld.wu	$a6, $a1, 0
	slli.d	$a7, $a6, 50
	bgez	$a7, .LBB4_96
# %bb.98:                               #   in Loop: Header=BB4_97 Depth=1
	andi	$t1, $a6, 1023
	bltu	$t1, $a3, .LBB4_103
# %bb.99:                               #   in Loop: Header=BB4_97 Depth=1
	sub.d	$a5, $a1, $a0
	bltu	$a5, $a4, .LBB4_103
# %bb.100:                              # %vector.ph382
                                        #   in Loop: Header=BB4_97 Depth=1
	addi.d	$a6, $t1, 1
	andi	$a7, $a6, 2040
	sub.d	$a5, $t1, $a7
	alsl.d	$t0, $t1, $a1, 2
	addi.d	$t0, $t0, -12
	alsl.d	$t1, $t1, $a0, 2
	addi.d	$t1, $t1, -12
	move	$t2, $a7
	.p2align	4, , 16
.LBB4_101:                              # %vector.body385
                                        #   Parent Loop BB4_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t0, 0
	vld	$vr1, $t0, -16
	vst	$vr0, $t1, 0
	vst	$vr1, $t1, -16
	addi.d	$t2, $t2, -8
	addi.d	$t0, $t0, -32
	addi.d	$t1, $t1, -32
	bnez	$t2, .LBB4_101
# %bb.102:                              # %middle.block395
                                        #   in Loop: Header=BB4_97 Depth=1
	beq	$a6, $a7, .LBB4_95
	b	.LBB4_104
	.p2align	4, , 16
.LBB4_103:                              #   in Loop: Header=BB4_97 Depth=1
	move	$a5, $t1
.LBB4_104:                              # %scalar.ph380.preheader
                                        #   in Loop: Header=BB4_97 Depth=1
	addi.d	$a6, $a5, 1
	alsl.d	$a7, $a5, $a0, 2
	alsl.d	$a5, $a5, $a1, 2
	.p2align	4, , 16
.LBB4_105:                              # %scalar.ph380
                                        #   Parent Loop BB4_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a5, 0
	st.w	$t0, $a7, 0
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, -4
	bnez	$a6, .LBB4_105
	b	.LBB4_95
.LBB4_106:                              # %._crit_edge178
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB4_109
# %bb.107:
	ld.w	$a1, $s1, 12
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(verbose_debug)
	ld.d	$a0, $a0, %got_pc_lo12(verbose_debug)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB4_109
# %bb.108:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cprint)
	jirl	$ra, $ra, 0
.LBB4_109:
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
	ld.d	$s4, $a0, 0
	beqz	$s4, .LBB5_32
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
	ldx.d	$a2, $a0, $a1
	addi.d	$a0, $s2, 4
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $a2, $s2
	sltui	$a0, $a0, 32
	sltui	$a1, $a1, 32
	or	$s7, $a0, $a1
	addi.d	$a0, $s0, -12
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$s6, $s2, -12
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $a2, -12
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s8, $zero, 1
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_2:                                # %.loopexit119
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.w	$a0, $s4, 0
	lu12i.w	$a1, 2
	or	$a0, $a0, $a1
	st.w	$a0, $s4, 0
.LBB5_3:                                # %.loopexit
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$fp, $fp, 8
	ld.d	$s4, $fp, 0
	beqz	$s4, .LBB5_32
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
                                        #     Child Loop BB5_11 Depth 2
                                        #     Child Loop BB5_16 Depth 2
                                        #     Child Loop BB5_19 Depth 2
                                        #     Child Loop BB5_22 Depth 2
                                        #     Child Loop BB5_27 Depth 2
                                        #     Child Loop BB5_31 Depth 2
	ld.bu	$a0, $s4, 1
	andi	$a0, $a0, 32
	beqz	$a0, .LBB5_3
# %bb.5:                                #   in Loop: Header=BB5_4 Depth=1
	ld.wu	$a0, $s2, 0
	ld.wu	$a1, $s0, 0
	srli.d	$a0, $a0, 10
	andi	$a5, $a1, 1023
	bstrins.d	$a1, $a0, 63, 10
	sltu	$a0, $zero, $a5
	sub.d	$a0, $a5, $a0
	addi.d	$a0, $a0, 1
	sltui	$a2, $a0, 8
	or	$a2, $a2, $s7
	andi	$a2, $a2, 1
	st.w	$a1, $s2, 0
	beqz	$a2, .LBB5_7
# %bb.6:                                #   in Loop: Header=BB5_4 Depth=1
	move	$a1, $a5
	b	.LBB5_10
	.p2align	4, , 16
.LBB5_7:                                # %vector.ph99
                                        #   in Loop: Header=BB5_4 Depth=1
	move	$a2, $a0
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a1, $a5, $a2
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a3, 2
	alsl.d	$a4, $a5, $s6, 2
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a5, $a5, $a6, 2
	move	$a6, $a2
	.p2align	4, , 16
.LBB5_8:                                # %vector.body102
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, 0
	vld	$vr1, $a3, -16
	vld	$vr2, $a5, 0
	vld	$vr3, $a5, -16
	vand.v	$vr0, $vr2, $vr0
	vand.v	$vr1, $vr3, $vr1
	vst	$vr0, $a4, 0
	vst	$vr1, $a4, -16
	addi.d	$a6, $a6, -8
	addi.d	$a3, $a3, -32
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
	bnez	$a6, .LBB5_8
# %bb.9:                                # %middle.block116
                                        #   in Loop: Header=BB5_4 Depth=1
	beq	$a0, $a2, .LBB5_12
.LBB5_10:                               # %scalar.ph97.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a0, $a1, 1
	alsl.d	$a2, $a1, $s2, 2
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	alsl.d	$a1, $a1, $s0, 2
	.p2align	4, , 16
.LBB5_11:                               # %scalar.ph97
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a1, 0
	ld.w	$a5, $a3, 0
	and	$a4, $a5, $a4
	st.w	$a4, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, -4
	bltu	$s8, $a0, .LBB5_11
.LBB5_12:                               # %.loopexit121
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.wu	$a0, $s2, 0
	ld.wu	$a3, $s4, 0
	srli.d	$a0, $a0, 10
	andi	$a1, $a3, 1023
	bstrins.d	$a3, $a0, 63, 10
	sltu	$a2, $zero, $a1
	sub.d	$a0, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a3, $s2, 0
	ori	$a3, $zero, 8
	bltu	$a0, $a3, .LBB5_18
# %bb.13:                               # %vector.memcheck64
                                        #   in Loop: Header=BB5_4 Depth=1
	alsl.d	$a3, $a2, $s2, 2
	alsl.d	$a4, $a1, $s4, 2
	addi.d	$a5, $a4, 4
	bgeu	$a3, $a5, .LBB5_15
# %bb.14:                               # %vector.memcheck64
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	alsl.d	$a2, $a2, $s4, 2
	bltu	$a2, $a3, .LBB5_18
.LBB5_15:                               # %vector.ph73
                                        #   in Loop: Header=BB5_4 Depth=1
	move	$a2, $a0
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a3, $a1, $a2
	addi.d	$a4, $a4, -12
	alsl.d	$a1, $a1, $s6, 2
	move	$a5, $a2
	.p2align	4, , 16
.LBB5_16:                               # %vector.body76
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, 0
	vld	$vr1, $a4, -16
	vld	$vr2, $a1, 0
	vld	$vr3, $a1, -16
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	vst	$vr0, $a1, 0
	vst	$vr1, $a1, -16
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, -32
	addi.d	$a1, $a1, -32
	bnez	$a5, .LBB5_16
# %bb.17:                               # %middle.block90
                                        #   in Loop: Header=BB5_4 Depth=1
	move	$a1, $a3
	beq	$a0, $a2, .LBB5_20
	.p2align	4, , 16
.LBB5_18:                               # %scalar.ph71.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a0, $a1, 1
	alsl.d	$a2, $a1, $s2, 2
	alsl.d	$a1, $a1, $s4, 2
	.p2align	4, , 16
.LBB5_19:                               # %scalar.ph71
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a2, 0
	or	$a3, $a4, $a3
	st.w	$a3, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -4
	bltu	$s8, $a0, .LBB5_19
.LBB5_20:                               # %.loopexit120
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.w	$a0, $s1, 12
	ld.w	$a1, $s1, 0
	mul.w	$a0, $a1, $a0
	blez	$a0, .LBB5_24
# %bb.21:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$s3, $s1, 24
	alsl.d	$s5, $a0, $s3, 2
	.p2align	4, , 16
.LBB5_22:                               # %.lr.ph
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cdist0)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_3
# %bb.23:                               #   in Loop: Header=BB5_22 Depth=2
	ld.w	$a0, $s1, 0
	alsl.d	$s3, $a0, $s3, 2
	bltu	$s3, $s5, .LBB5_22
.LBB5_24:                               # %._crit_edge
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.wu	$a0, $s2, 0
	andi	$a4, $a0, 1023
	ori	$a0, $zero, 7
	bltu	$a4, $a0, .LBB5_29
# %bb.25:                               # %._crit_edge
                                        #   in Loop: Header=BB5_4 Depth=1
	sub.d	$a0, $s2, $s4
	ori	$a1, $zero, 32
	bltu	$a0, $a1, .LBB5_29
# %bb.26:                               # %vector.ph
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a1, $a4, 1
	andi	$a2, $a1, 2040
	sub.d	$a0, $a4, $a2
	alsl.d	$a3, $a4, $s6, 2
	alsl.d	$a4, $a4, $s4, 2
	addi.d	$a4, $a4, -12
	move	$a5, $a2
	.p2align	4, , 16
.LBB5_27:                               # %vector.body
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, 0
	vld	$vr1, $a3, -16
	vst	$vr0, $a4, 0
	vst	$vr1, $a4, -16
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, -32
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB5_27
# %bb.28:                               # %middle.block
                                        #   in Loop: Header=BB5_4 Depth=1
	beq	$a1, $a2, .LBB5_2
	b	.LBB5_30
.LBB5_29:                               #   in Loop: Header=BB5_4 Depth=1
	move	$a0, $a4
.LBB5_30:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a1, $a0, 1
	alsl.d	$a2, $a0, $s4, 2
	alsl.d	$a0, $a0, $s2, 2
	.p2align	4, , 16
.LBB5_31:                               # %scalar.ph
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a0, 0
	st.w	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	addi.d	$a0, $a0, -4
	bnez	$a1, .LBB5_31
	b	.LBB5_2
.LBB5_32:                               # %._crit_edge53
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
