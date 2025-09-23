	.file	"irred.c"
	.text
	.globl	irredundant                     # -- Begin function irredundant
	.p2align	5
	.type	irredundant,@function
irredundant:                            # @irredundant
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(mark_irredundant)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(sf_inactive)
	jr	$t8
.Lfunc_end0:
	.size	irredundant, .Lfunc_end0-irredundant
                                        # -- End function
	.globl	mark_irredundant                # -- Begin function mark_irredundant
	.p2align	5
	.type	mark_irredundant,@function
mark_irredundant:                       # @mark_irredundant
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $a1
	move	$s2, $a0
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 24
	addi.d	$a4, $sp, 16
	pcaddu18i	$ra, %call36(irred_split_cover)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 32
	ld.d	$fp, $sp, 16
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(irred_derive_table)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a2, $zero, 1
	move	$a1, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(sm_minimum_cover)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 12
	ld.w	$a3, $s2, 0
	ld.d	$a1, $s2, 24
	mul.w	$a2, $a3, $a2
	move	$s3, $a0
	blez	$a2, .LBB1_3
# %bb.1:                                # %.lr.ph.preheader
	alsl.d	$a0, $a2, $a1, 2
	lu12i.w	$a2, -3
	ori	$a2, $a2, 3071
	lu32i.d	$a2, 0
	move	$a3, $a1
	.p2align	4, , 16
.LBB1_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a4, $a3, 0
	and	$a4, $a4, $a2
	st.w	$a4, $a3, 0
	ld.w	$a4, $s2, 0
	alsl.d	$a3, $a4, $a3, 2
	bltu	$a3, $a0, .LBB1_2
.LBB1_3:                                # %._crit_edge
	ld.w	$a0, $s1, 12
	ld.w	$a2, $s1, 0
	mul.w	$a3, $a2, $a0
	lu12i.w	$a0, 2
	blez	$a3, .LBB1_6
# %bb.4:                                # %.lr.ph40.preheader
	ld.d	$a2, $s1, 24
	alsl.d	$a3, $a3, $a2, 2
	ori	$a4, $a0, 1024
	.p2align	4, , 16
.LBB1_5:                                # %.lr.ph40
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $s2, 0
	ld.hu	$a6, $a2, 2
	mul.d	$a5, $a6, $a5
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a6, $a1, $a5
	or	$a6, $a6, $a4
	stx.w	$a6, $a1, $a5
	ld.w	$a5, $s1, 0
	alsl.d	$a2, $a5, $a2, 2
	bltu	$a2, $a3, .LBB1_5
.LBB1_6:                                # %._crit_edge41
	ld.d	$a2, $s3, 16
	beqz	$a2, .LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %.lr.ph46
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $s2, 0
	ld.w	$a4, $a2, 4
	mul.w	$a3, $a4, $a3
	slli.d	$a3, $a3, 2
	ldx.w	$a4, $a1, $a3
	ld.d	$a2, $a2, 24
	or	$a4, $a4, $a0
	stx.w	$a4, $a1, $a3
	bnez	$a2, .LBB1_7
.LBB1_8:                                # %._crit_edge47
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$a0, $a0, %got_pc_lo12(debug)
	ld.bu	$a0, $a0, 0
	ld.d	$s4, $sp, 24
	andi	$a0, $a0, 32
	beqz	$a0, .LBB1_10
# %bb.9:
	ld.w	$a4, $s4, 12
	ld.w	$a5, $fp, 12
	ld.w	$a2, $s1, 12
	ld.w	$a6, $s3, 4
	ld.w	$a1, $s2, 12
	add.w	$a3, $a5, $a4
	add.w	$a7, $a6, $a2
	st.d	$zero, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB1_10:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sm_free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(sm_row_free)
	jr	$t8
.Lfunc_end1:
	.size	mark_irredundant, .Lfunc_end1-mark_irredundant
                                        # -- End function
	.globl	irred_split_cover               # -- Begin function irred_split_cover
	.p2align	5
	.type	irred_split_cover,@function
irred_split_cover:                      # @irred_split_cover
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
	move	$s7, $a0
	ld.w	$a0, $a0, 12
	ld.w	$a5, $s7, 0
	mul.w	$a5, $a5, $a0
	move	$s8, $a4
	move	$s0, $a3
	move	$s3, $a2
	move	$s2, $a1
	blez	$a5, .LBB2_3
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$a0, $s7, 24
	move	$a2, $zero
	alsl.d	$a1, $a5, $a0, 2
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a3, $a0, 0
	add.d	$a3, $a2, $a3
	st.w	$a3, $a0, 0
	ld.w	$a3, $s7, 0
	alsl.d	$a0, $a3, $a0, 2
	addu16i.d	$a2, $a2, 1
	addi.w	$a2, $a2, 0
	bltu	$a0, $a1, .LBB2_2
.LBB2_3:                                # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$fp, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $fp, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	st.d	$a0, $s3, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $s0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	st.d	$a0, $s8, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s7
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cube2list)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 12
	ld.w	$a2, $s7, 0
	mul.w	$a1, $a2, $a1
	move	$s2, $a0
	blez	$a1, .LBB2_11
# %bb.4:                                # %.lr.ph90.preheader
	ld.d	$s6, $s7, 24
	alsl.d	$fp, $a1, $s6, 2
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$s4, $a0, %got_pc_lo12(debug)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_5:                                #   in Loop: Header=BB2_6 Depth=1
	ld.w	$a0, $s7, 0
	alsl.d	$s6, $a0, $s6, 2
	bgeu	$s6, $fp, .LBB2_11
.LBB2_6:                                # %.lr.ph90
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(tautology)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	b	.LBB2_9
	.p2align	4, , 16
.LBB2_8:                                #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a0, $s3, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
.LBB2_9:                                #   in Loop: Header=BB2_6 Depth=1
	ld.bu	$a0, $s4, 1
	andi	$a0, $a0, 64
	beqz	$a0, .LBB2_5
# %bb.10:                               #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a0, $s3, 0
	move	$s3, $s8
	ld.w	$s8, $s1, 12
	move	$s0, $fp
	move	$fp, $s2
	ld.w	$s2, $a0, 12
	ld.w	$a0, $s7, 12
	add.d	$a1, $s2, $s8
	move	$s5, $s1
	move	$s1, $s7
	sub.w	$s7, $a0, $a1
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s8
	move	$s8, $s3
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	move	$a2, $s2
	move	$s2, $fp
	move	$fp, $s0
	move	$a3, $s7
	move	$s7, $s1
	move	$s1, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB2_5
.LBB2_11:                               # %._crit_edge91
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB2_13
# %bb.12:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_13:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cube2list)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 12
	ld.w	$a2, $s1, 0
	mul.w	$a1, $a2, $a1
	move	$s2, $a0
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	blez	$a1, .LBB2_18
# %bb.14:                               # %.lr.ph94.preheader
	ld.d	$s3, $s1, 24
	alsl.d	$fp, $a1, $s3, 2
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$s0, $a0, %got_pc_lo12(debug)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s4, $a0, %pc_lo12(.L.str.2)
	b	.LBB2_16
	.p2align	4, , 16
.LBB2_15:                               #   in Loop: Header=BB2_16 Depth=1
	ld.w	$a0, $s1, 0
	alsl.d	$s3, $a0, $s3, 2
	bgeu	$s3, $fp, .LBB2_18
.LBB2_16:                               # %.lr.ph94
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(tautology)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s8, $a0
	or	$s5, $a0, $a1
	ld.d	$a0, $s5, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
	ld.bu	$a0, $s0, 1
	andi	$a0, $a0, 64
	beqz	$a0, .LBB2_15
# %bb.17:                               #   in Loop: Header=BB2_16 Depth=1
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s6, 0
	ld.w	$s5, $a0, 12
	ld.w	$s6, $a1, 12
	ld.w	$a0, $s1, 12
	add.d	$a1, $s6, $s5
	sub.w	$s7, $a0, $a1
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s6
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	move	$a3, $s7
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB2_15
.LBB2_18:                               # %._crit_edge95
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB2_20
# %bb.19:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_20:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
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
	pcaddu18i	$t8, %call36(sf_free)
	jr	$t8
.Lfunc_end2:
	.size	irred_split_cover, .Lfunc_end2-irred_split_cover
                                        # -- End function
	.globl	irred_derive_table              # -- Begin function irred_derive_table
	.p2align	5
	.type	irred_derive_table,@function
irred_derive_table:                     # @irred_derive_table
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
	ld.w	$a3, $a0, 12
	ld.w	$a4, $a0, 0
	move	$fp, $a2
	mul.w	$a3, $a4, $a3
	lu12i.w	$s0, -2
	blez	$a3, .LBB3_3
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$a2, $a0, 24
	alsl.d	$a3, $a3, $a2, 2
	ori	$a4, $s0, 4095
	lu32i.d	$a4, 0
	.p2align	4, , 16
.LBB3_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a5, $a2, 0
	and	$a5, $a5, $a4
	st.w	$a5, $a2, 0
	ld.w	$a5, $a0, 0
	alsl.d	$a2, $a5, $a2, 2
	bltu	$a2, $a3, .LBB3_2
.LBB3_3:                                # %._crit_edge
	ld.w	$a2, $a1, 12
	ld.w	$a3, $a1, 0
	mul.w	$a3, $a3, $a2
	blez	$a3, .LBB3_6
# %bb.4:                                # %.lr.ph70.preheader
	ld.d	$a2, $a1, 24
	alsl.d	$a3, $a3, $a2, 2
	ori	$a4, $s0, 4095
	lu32i.d	$a4, 0
	.p2align	4, , 16
.LBB3_5:                                # %.lr.ph70
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a5, $a2, 0
	and	$a5, $a5, $a4
	st.w	$a5, $a2, 0
	ld.w	$a5, $a1, 0
	alsl.d	$a2, $a5, $a2, 2
	bltu	$a2, $a3, .LBB3_5
.LBB3_6:                                # %._crit_edge71
	ld.w	$a2, $fp, 12
	ld.w	$a3, $fp, 0
	mul.w	$a3, $a3, $a2
	blez	$a3, .LBB3_9
# %bb.7:                                # %.lr.ph74.preheader
	ld.d	$a2, $fp, 24
	alsl.d	$a3, $a3, $a2, 2
	lu12i.w	$a4, 1
	.p2align	4, , 16
.LBB3_8:                                # %.lr.ph74
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	or	$a5, $a5, $a4
	st.w	$a5, $a2, 0
	ld.w	$a5, $fp, 0
	alsl.d	$a2, $a5, $a2, 2
	bltu	$a2, $a3, .LBB3_8
.LBB3_9:                                # %._crit_edge75
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cube3list)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sm_alloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	ld.w	$a2, $fp, 0
	mul.w	$a1, $a2, $a1
	move	$s1, $a0
	blez	$a1, .LBB3_17
# %bb.10:                               # %.lr.ph80
	ld.d	$s2, $fp, 24
	alsl.d	$s4, $a1, $s2, 2
	pcalau12i	$s6, %pc_hi20(Rp_current)
	ori	$s7, $s0, 4095
	lu32i.d	$s7, 0
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$s8, $a0, %got_pc_lo12(debug)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $zero
	move	$s5, $zero
	move	$s3, $zero
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_11:                               #   in Loop: Header=BB3_12 Depth=1
	ld.w	$a0, $fp, 0
	addi.w	$s5, $s5, 1
	alsl.d	$s2, $a0, $s2, 2
	addi.d	$s0, $s0, -1
	bgeu	$s2, $s4, .LBB3_17
.LBB3_12:                               # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s2, 2
	st.w	$a0, $s6, %pc_lo12(Rp_current)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cofactor)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(ftautology)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s2, 0
	and	$a0, $a0, $s7
	st.w	$a0, $s2, 0
	ld.bu	$a0, $s8, 1
	andi	$a0, $a0, 64
	beqz	$a0, .LBB3_14
# %bb.13:                               #   in Loop: Header=BB3_12 Depth=1
	ld.w	$s7, $fp, 12
	ld.w	$s8, $s1, 48
	ld.w	$a0, $s1, 72
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $s6
	move	$s6, $s4
	add.w	$s4, $s0, $s7
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s7
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	move	$a3, $s4
	move	$s4, $s6
	move	$s6, $fp
	move	$a4, $s8
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB3_14:                               #   in Loop: Header=BB3_12 Depth=1
	ld.w	$a0, $s1, 48
	sub.w	$a0, $a0, $s3
	ori	$a1, $zero, 1001
	blt	$a0, $a1, .LBB3_11
# %bb.15:                               #   in Loop: Header=BB3_12 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sm_row_dominance)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s8, 1
	ld.w	$s3, $s1, 48
	andi	$a0, $a0, 64
	beqz	$a0, .LBB3_11
# %bb.16:                               #   in Loop: Header=BB3_12 Depth=1
	ld.w	$a2, $s1, 72
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB3_11
.LBB3_17:                               # %._crit_edge81
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB3_19
# %bb.18:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_19:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
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
.Lfunc_end3:
	.size	irred_derive_table, .Lfunc_end3-irred_derive_table
                                        # -- End function
	.globl	cube_is_covered                 # -- Begin function cube_is_covered
	.p2align	5
	.type	cube_is_covered,@function
cube_is_covered:                        # @cube_is_covered
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cofactor)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(tautology)
	jr	$t8
.Lfunc_end4:
	.size	cube_is_covered, .Lfunc_end4-cube_is_covered
                                        # -- End function
	.globl	tautology                       # -- Begin function tautology
	.p2align	5
	.type	tautology,@function
tautology:                              # @tautology
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$s4, $a0, %got_pc_lo12(debug)
	ld.bu	$a0, $s4, 1
	andi	$a0, $a0, 2
	pcalau12i	$s3, %pc_hi20(tautology.taut_level)
	beqz	$a0, .LBB5_2
# %bb.1:
	ld.w	$a2, $s3, %pc_lo12(tautology.taut_level)
	addi.d	$a0, $a2, 1
	st.w	$a0, $s3, %pc_lo12(tautology.taut_level)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(debug_print)
	jirl	$ra, $ra, 0
.LBB5_2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(taut_special_cases)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$s2, $a0
	bne	$a0, $a1, .LBB5_14
# %bb.3:
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s2, $a0, %got_pc_lo12(cube)
	ld.w	$s0, $s2, 0
	ori	$s1, $zero, 8
	ori	$s6, $zero, 33
	lu12i.w	$s5, 131071
	ori	$a0, $zero, 8
	blt	$s0, $s6, .LBB5_5
# %bb.4:
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s5, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB5_5:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s2, 0
	move	$s0, $a0
	blt	$s2, $s6, .LBB5_7
# %bb.6:
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s5, 4092
	and	$a0, $a0, $a1
	addi.d	$s1, $a0, 8
.LBB5_7:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a3, $zero, 512
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(binate_split_select)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(tautology)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_17
# %bb.8:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(tautology)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB5_10
.LBB5_9:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_10:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB5_12
# %bb.11:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_12:
	beqz	$s1, .LBB5_14
# %bb.13:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_14:
	ld.bu	$a0, $s4, 1
	andi	$a0, $a0, 2
	beqz	$a0, .LBB5_16
# %bb.15:
	ld.w	$a0, $s3, %pc_lo12(tautology.taut_level)
	addi.w	$a1, $a0, -1
	st.w	$a1, $s3, %pc_lo12(tautology.taut_level)
	sltui	$a0, $s2, 1
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
	masknez	$a2, $a2, $a0
	pcalau12i	$a3, %pc_hi20(.L.str.7)
	addi.d	$a3, $a3, %pc_lo12(.L.str.7)
	maskeqz	$a0, $a3, $a0
	or	$a2, $a0, $a2
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_16:
	move	$a0, $s2
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
.LBB5_17:
	move	$s2, $zero
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB5_9
	b	.LBB5_10
.Lfunc_end5:
	.size	tautology, .Lfunc_end5-tautology
                                        # -- End function
	.globl	taut_special_cases              # -- Begin function taut_special_cases
	.p2align	5
	.type	taut_special_cases,@function
taut_special_cases:                     # @taut_special_cases
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
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s3, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $s3, 80
	ld.d	$s0, $a0, 0
	ld.d	$s1, $a0, 8
	addi.d	$a0, $fp, 16
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s2, $zero, 16
	.p2align	4, , 16
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $fp, $s2
	beqz	$a0, .LBB6_7
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(full_row)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	beqz	$a0, .LBB6_1
.LBB6_3:
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_5
# %bb.4:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB6_5:
	move	$a0, $fp
.LBB6_6:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB6_53
.LBB6_7:                                # %.preheader120
	addi.d	$a0, $fp, 24
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$s6, $s0, 4
	addi.d	$s4, $s0, -12
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$s2, $a0, %got_pc_lo12(cdata)
	ori	$s5, $zero, 1
	ori	$s7, $zero, 8
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB6_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_11 Depth 2
                                        #     Child Loop BB6_15 Depth 2
                                        #     Child Loop BB6_24 Depth 2
                                        #       Child Loop BB6_28 Depth 3
                                        #       Child Loop BB6_31 Depth 3
                                        #     Child Loop BB6_34 Depth 2
                                        #       Child Loop BB6_39 Depth 3
                                        #       Child Loop BB6_42 Depth 3
                                        #     Child Loop BB6_46 Depth 2
	ld.d	$a0, $fp, 0
	ld.wu	$a1, $a0, 0
	andi	$a5, $a1, 1023
	ori	$a1, $zero, 7
	bltu	$a5, $a1, .LBB6_13
# %bb.9:                                #   in Loop: Header=BB6_8 Depth=1
	sub.d	$a1, $a0, $s0
	ori	$a2, $zero, 32
	bltu	$a1, $a2, .LBB6_13
# %bb.10:                               # %vector.ph199
                                        #   in Loop: Header=BB6_8 Depth=1
	addi.d	$a2, $a5, 1
	andi	$a3, $a2, 2040
	sub.d	$a1, $a5, $a3
	alsl.d	$a4, $a5, $a0, 2
	addi.d	$a4, $a4, -12
	alsl.d	$a5, $a5, $s4, 2
	move	$a6, $a3
	.p2align	4, , 16
.LBB6_11:                               # %vector.body202
                                        #   Parent Loop BB6_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, 0
	vld	$vr1, $a4, -16
	vst	$vr0, $a5, 0
	vst	$vr1, $a5, -16
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
	bnez	$a6, .LBB6_11
# %bb.12:                               # %middle.block212
                                        #   in Loop: Header=BB6_8 Depth=1
	bne	$a2, $a3, .LBB6_14
	b	.LBB6_16
	.p2align	4, , 16
.LBB6_13:                               #   in Loop: Header=BB6_8 Depth=1
	move	$a1, $a5
.LBB6_14:                               # %scalar.ph197.preheader
                                        #   in Loop: Header=BB6_8 Depth=1
	addi.d	$a2, $a1, 1
	alsl.d	$a3, $a1, $s0, 2
	alsl.d	$a0, $a1, $a0, 2
	.p2align	4, , 16
.LBB6_15:                               # %scalar.ph197
                                        #   Parent Loop BB6_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $a0, 0
	st.w	$a1, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -4
	addi.d	$a0, $a0, -4
	bnez	$a2, .LBB6_15
.LBB6_16:                               # %.preheader119
                                        #   in Loop: Header=BB6_8 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bnez	$a1, .LBB6_24
.LBB6_17:                               # %._crit_edge
                                        #   in Loop: Header=BB6_8 Depth=1
	ld.d	$a1, $s3, 88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(setp_equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_50
# %bb.18:                               #   in Loop: Header=BB6_8 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(massive_count)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 36
	ld.w	$a1, $s2, 32
	beq	$a0, $a1, .LBB6_50
# %bb.19:                               #   in Loop: Header=BB6_8 Depth=1
	beq	$a1, $s5, .LBB6_3
# %bb.20:                               #   in Loop: Header=BB6_8 Depth=1
	beqz	$a0, .LBB6_54
# %bb.21:                               #   in Loop: Header=BB6_8 Depth=1
	ld.d	$a1, $s3, 96
	move	$a0, $s0
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s3, 4
	blez	$a3, .LBB6_43
# %bb.22:                               # %.lr.ph124
                                        #   in Loop: Header=BB6_8 Depth=1
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s3, 72
	move	$a2, $zero
	b	.LBB6_34
	.p2align	4, , 16
.LBB6_23:                               # %.loopexit118
                                        #   in Loop: Header=BB6_24 Depth=2
	ld.d	$a1, $a0, 0
	addi.d	$a0, $a0, 8
	beqz	$a1, .LBB6_17
.LBB6_24:                               # %.lr.ph
                                        #   Parent Loop BB6_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_28 Depth 3
                                        #       Child Loop BB6_31 Depth 3
	ld.wu	$a2, $s0, 0
	andi	$a3, $a2, 1023
	sltu	$a4, $zero, $a3
	sub.d	$a2, $a3, $a4
	addi.d	$a2, $a2, 1
	bltu	$a2, $s7, .LBB6_30
# %bb.25:                               # %vector.memcheck162
                                        #   in Loop: Header=BB6_24 Depth=2
	alsl.d	$a5, $a4, $s0, 2
	alsl.d	$a6, $a3, $a1, 2
	addi.d	$a7, $a6, 4
	bgeu	$a5, $a7, .LBB6_27
# %bb.26:                               # %vector.memcheck162
                                        #   in Loop: Header=BB6_24 Depth=2
	alsl.d	$a5, $a3, $s6, 2
	alsl.d	$a4, $a4, $a1, 2
	bltu	$a4, $a5, .LBB6_30
.LBB6_27:                               # %vector.ph176
                                        #   in Loop: Header=BB6_24 Depth=2
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	sub.d	$a5, $a3, $a4
	alsl.d	$a3, $a3, $s4, 2
	addi.d	$a6, $a6, -12
	move	$a7, $a4
	.p2align	4, , 16
.LBB6_28:                               # %vector.body179
                                        #   Parent Loop BB6_8 Depth=1
                                        #     Parent Loop BB6_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a3, 0
	vld	$vr1, $a3, -16
	vld	$vr2, $a6, 0
	vld	$vr3, $a6, -16
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	vst	$vr0, $a3, 0
	vst	$vr1, $a3, -16
	addi.d	$a7, $a7, -8
	addi.d	$a3, $a3, -32
	addi.d	$a6, $a6, -32
	bnez	$a7, .LBB6_28
# %bb.29:                               # %middle.block193
                                        #   in Loop: Header=BB6_24 Depth=2
	move	$a3, $a5
	beq	$a2, $a4, .LBB6_23
	.p2align	4, , 16
.LBB6_30:                               # %scalar.ph174.preheader
                                        #   in Loop: Header=BB6_24 Depth=2
	addi.d	$a2, $a3, 1
	alsl.d	$a1, $a3, $a1, 2
	alsl.d	$a3, $a3, $s0, 2
	.p2align	4, , 16
.LBB6_31:                               # %scalar.ph174
                                        #   Parent Loop BB6_8 Depth=1
                                        #     Parent Loop BB6_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a3, 0
	ld.w	$a5, $a1, 0
	or	$a4, $a5, $a4
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, -4
	addi.d	$a3, $a3, -4
	bltu	$s5, $a2, .LBB6_31
	b	.LBB6_23
	.p2align	4, , 16
.LBB6_32:                               # %.loopexit.loopexit
                                        #   in Loop: Header=BB6_34 Depth=2
	ld.w	$a3, $s3, 4
.LBB6_33:                               # %.loopexit
                                        #   in Loop: Header=BB6_34 Depth=2
	addi.d	$a2, $a2, 1
	bge	$a2, $a3, .LBB6_43
.LBB6_34:                               #   Parent Loop BB6_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_39 Depth 3
                                        #       Child Loop BB6_42 Depth 3
	slli.d	$a4, $a2, 2
	ldx.w	$a4, $a0, $a4
	beqz	$a4, .LBB6_33
# %bb.35:                               #   in Loop: Header=BB6_34 Depth=2
	ld.wu	$a4, $s0, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a1, $a3
	andi	$a5, $a4, 1023
	sltu	$a6, $zero, $a5
	sub.d	$a4, $a5, $a6
	addi.d	$a4, $a4, 1
	bltu	$a4, $s7, .LBB6_41
# %bb.36:                               # %vector.memcheck
                                        #   in Loop: Header=BB6_34 Depth=2
	alsl.d	$a7, $a6, $s0, 2
	alsl.d	$t0, $a5, $a3, 2
	addi.d	$t1, $t0, 4
	bgeu	$a7, $t1, .LBB6_38
# %bb.37:                               # %vector.memcheck
                                        #   in Loop: Header=BB6_34 Depth=2
	alsl.d	$a7, $a5, $s6, 2
	alsl.d	$a6, $a6, $a3, 2
	bltu	$a6, $a7, .LBB6_41
.LBB6_38:                               # %vector.ph
                                        #   in Loop: Header=BB6_34 Depth=2
	move	$a6, $a4
	bstrins.d	$a6, $zero, 2, 0
	sub.d	$a7, $a5, $a6
	alsl.d	$a5, $a5, $s4, 2
	addi.d	$t0, $t0, -12
	move	$t1, $a6
	.p2align	4, , 16
.LBB6_39:                               # %vector.body
                                        #   Parent Loop BB6_8 Depth=1
                                        #     Parent Loop BB6_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a5, 0
	vld	$vr1, $a5, -16
	vld	$vr2, $t0, 0
	vld	$vr3, $t0, -16
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	vst	$vr0, $a5, 0
	vst	$vr1, $a5, -16
	addi.d	$t1, $t1, -8
	addi.d	$a5, $a5, -32
	addi.d	$t0, $t0, -32
	bnez	$t1, .LBB6_39
# %bb.40:                               # %middle.block
                                        #   in Loop: Header=BB6_34 Depth=2
	move	$a5, $a7
	beq	$a4, $a6, .LBB6_32
	.p2align	4, , 16
.LBB6_41:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB6_34 Depth=2
	addi.d	$a4, $a5, 1
	alsl.d	$a3, $a5, $a3, 2
	alsl.d	$a5, $a5, $s0, 2
	.p2align	4, , 16
.LBB6_42:                               # %scalar.ph
                                        #   Parent Loop BB6_8 Depth=1
                                        #     Parent Loop BB6_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a6, $a5, 0
	ld.w	$a7, $a3, 0
	or	$a6, $a7, $a6
	st.w	$a6, $a5, 0
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, -4
	addi.d	$a5, $a5, -4
	bltu	$s5, $a4, .LBB6_42
	b	.LBB6_32
	.p2align	4, , 16
.LBB6_43:                               # %.preheader
                                        #   in Loop: Header=BB6_8 Depth=1
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $s4, 0
	beqz	$s2, .LBB6_48
# %bb.44:                               # %.lr.ph127.preheader
                                        #   in Loop: Header=BB6_8 Depth=1
	ori	$s8, $zero, 24
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	b	.LBB6_46
	.p2align	4, , 16
.LBB6_45:                               #   in Loop: Header=BB6_46 Depth=2
	ldx.d	$s2, $fp, $s8
	addi.d	$s8, $s8, 8
	beqz	$s2, .LBB6_48
.LBB6_46:                               # %.lr.ph127
                                        #   Parent Loop BB6_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $fp, 0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(setp_implies)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_45
# %bb.47:                               #   in Loop: Header=BB6_46 Depth=2
	addi.d	$a0, $s4, 8
	st.d	$s2, $s4, 0
	move	$s4, $a0
	b	.LBB6_45
	.p2align	4, , 16
.LBB6_48:                               # %._crit_edge128
                                        #   in Loop: Header=BB6_8 Depth=1
	addi.d	$a0, $s4, 8
	st.d	$zero, $s4, 0
	st.d	$a0, $fp, 8
	pcalau12i	$a1, %got_pc_hi20(debug)
	ld.d	$a1, $a1, %got_pc_lo12(debug)
	ld.bu	$a1, $a1, 1
	andi	$a1, $a1, 2
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	beqz	$a1, .LBB6_8
# %bb.49:                               #   in Loop: Header=BB6_8 Depth=1
	ld.w	$a1, $s2, 36
	sub.d	$a0, $a0, $fp
	srai.d	$a0, $a0, 3
	addi.d	$a2, $a0, -3
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB6_8
.LBB6_50:
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_52
# %bb.51:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB6_52:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB6_53:
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
.LBB6_54:
	ld.w	$a0, $s2, 40
	ld.d	$a1, $s2, 8
	ld.d	$a2, $fp, 8
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $a1, $a0
	sub.d	$a0, $a2, $fp
	srai.d	$a0, $a0, 3
	addi.d	$a0, $a0, -3
	srli.d	$a2, $a0, 63
	add.d	$a0, $a0, $a2
	srai.d	$a2, $a0, 1
	ori	$a0, $zero, 2
	bge	$a1, $a2, .LBB6_53
# %bb.55:
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$a0, $a0, %got_pc_lo12(debug)
	ld.wu	$a0, $a0, 0
	andi	$a3, $a0, 512
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cubelist_partition)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 2
	beqz	$a1, .LBB6_53
# %bb.56:
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_58
# %bb.57:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB6_58:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(tautology)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40
	beqz	$a0, .LBB6_62
# %bb.59:
	ld.d	$a0, $a1, 0
	beqz	$a0, .LBB6_61
# %bb.60:                               # %.thread
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40
	st.d	$zero, $a1, 0
.LBB6_61:
	move	$a0, $a1
	b	.LBB6_6
.LBB6_62:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(tautology)
	jirl	$ra, $ra, 0
	b	.LBB6_53
.Lfunc_end6:
	.size	taut_special_cases, .Lfunc_end6-taut_special_cases
                                        # -- End function
	.p2align	5                               # -- Begin function ftautology
	.type	ftautology,@function
ftautology:                             # @ftautology
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
	move	$s4, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$a0, $a0, %got_pc_lo12(debug)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.bu	$a0, $a0, 1
	andi	$a0, $a0, 2
	beqz	$a0, .LBB7_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(ftautology.ftaut_level)
	ld.w	$a2, $a0, %pc_lo12(ftautology.ftaut_level)
	addi.d	$a1, $a2, 1
	st.w	$a1, $a0, %pc_lo12(ftautology.ftaut_level)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(debug_print)
	jirl	$ra, $ra, 0
.LBB7_2:
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s5, $a0, %got_pc_lo12(cube)
	ld.d	$a1, $s5, 80
	ld.d	$s1, $a1, 0
	ld.d	$a0, $s0, 16
	ld.d	$s2, $a1, 8
	beqz	$a0, .LBB7_7
# %bb.3:                                # %.lr.ph.i.preheader
	ori	$fp, $zero, 24
	b	.LBB7_5
	.p2align	4, , 16
.LBB7_4:                                #   in Loop: Header=BB7_5 Depth=1
	ldx.d	$a0, $s0, $fp
	addi.d	$fp, $fp, 8
	beqz	$a0, .LBB7_7
.LBB7_5:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 1
	andi	$a1, $a1, 16
	bnez	$a1, .LBB7_4
# %bb.6:                                #   in Loop: Header=BB7_5 Depth=1
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(full_row)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_4
	b	.LBB7_40
.LBB7_7:                                # %.preheader81.i
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(massive_count)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$s8, $a0, %got_pc_lo12(cdata)
	ld.w	$a0, $s8, 36
	ld.w	$a1, $s8, 32
	bne	$a0, $a1, .LBB7_10
.LBB7_8:                                # %._crit_edge90.i
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $s4, 40
	beqz	$a0, .LBB7_33
# %bb.9:
	ld.w	$a0, $a0, 0
	addi.w	$s1, $a0, 1
	b	.LBB7_34
.LBB7_10:                               # %.lr.ph89.i
	addi.d	$s3, $s2, 4
	addi.d	$s7, $s2, -12
	ori	$s4, $zero, 8
	ori	$s6, $zero, 1
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_11:                               #   in Loop: Header=BB7_12 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(massive_count)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 36
	ld.w	$a1, $s8, 32
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB7_8
.LBB7_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_17 Depth 2
                                        #       Child Loop BB7_22 Depth 3
                                        #       Child Loop BB7_25 Depth 3
                                        #     Child Loop BB7_29 Depth 2
	beqz	$a0, .LBB7_47
# %bb.13:                               #   in Loop: Header=BB7_12 Depth=1
	ld.d	$a1, $s5, 96
	move	$a0, $s2
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s5, 4
	blez	$a3, .LBB7_26
# %bb.14:                               # %.lr.ph85.i
                                        #   in Loop: Header=BB7_12 Depth=1
	ld.d	$a0, $s8, 24
	ld.d	$a1, $s5, 72
	move	$a2, $zero
	b	.LBB7_17
	.p2align	4, , 16
.LBB7_15:                               # %.loopexit.loopexit.i
                                        #   in Loop: Header=BB7_17 Depth=2
	ld.w	$a3, $s5, 4
.LBB7_16:                               # %.loopexit.i
                                        #   in Loop: Header=BB7_17 Depth=2
	addi.d	$a2, $a2, 1
	bge	$a2, $a3, .LBB7_26
.LBB7_17:                               #   Parent Loop BB7_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_22 Depth 3
                                        #       Child Loop BB7_25 Depth 3
	slli.d	$a4, $a2, 2
	ldx.w	$a4, $a0, $a4
	beqz	$a4, .LBB7_16
# %bb.18:                               #   in Loop: Header=BB7_17 Depth=2
	ld.wu	$a4, $s2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a1, $a3
	andi	$a5, $a4, 1023
	sltu	$a6, $zero, $a5
	sub.d	$a4, $a5, $a6
	addi.d	$a4, $a4, 1
	bltu	$a4, $s4, .LBB7_24
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_17 Depth=2
	alsl.d	$a7, $a6, $s2, 2
	alsl.d	$t0, $a5, $a3, 2
	addi.d	$t1, $t0, 4
	bgeu	$a7, $t1, .LBB7_21
# %bb.20:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_17 Depth=2
	alsl.d	$a7, $a5, $s3, 2
	alsl.d	$a6, $a6, $a3, 2
	bltu	$a6, $a7, .LBB7_24
.LBB7_21:                               # %vector.ph
                                        #   in Loop: Header=BB7_17 Depth=2
	move	$a6, $a4
	bstrins.d	$a6, $zero, 2, 0
	sub.d	$a7, $a5, $a6
	alsl.d	$a5, $a5, $s7, 2
	addi.d	$t0, $t0, -12
	move	$t1, $a6
	.p2align	4, , 16
.LBB7_22:                               # %vector.body
                                        #   Parent Loop BB7_12 Depth=1
                                        #     Parent Loop BB7_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a5, 0
	vld	$vr1, $a5, -16
	vld	$vr2, $t0, 0
	vld	$vr3, $t0, -16
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	vst	$vr0, $a5, 0
	vst	$vr1, $a5, -16
	addi.d	$t1, $t1, -8
	addi.d	$a5, $a5, -32
	addi.d	$t0, $t0, -32
	bnez	$t1, .LBB7_22
# %bb.23:                               # %middle.block
                                        #   in Loop: Header=BB7_17 Depth=2
	move	$a5, $a7
	beq	$a4, $a6, .LBB7_15
	.p2align	4, , 16
.LBB7_24:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_17 Depth=2
	addi.d	$a4, $a5, 1
	alsl.d	$a3, $a5, $a3, 2
	alsl.d	$a5, $a5, $s2, 2
	.p2align	4, , 16
.LBB7_25:                               # %scalar.ph
                                        #   Parent Loop BB7_12 Depth=1
                                        #     Parent Loop BB7_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a6, $a5, 0
	ld.w	$a7, $a3, 0
	or	$a6, $a7, $a6
	st.w	$a6, $a5, 0
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, -4
	addi.d	$a5, $a5, -4
	bltu	$s6, $a4, .LBB7_25
	b	.LBB7_15
	.p2align	4, , 16
.LBB7_26:                               # %.preheader.i
                                        #   in Loop: Header=BB7_12 Depth=1
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $fp, 0
	beqz	$s3, .LBB7_31
# %bb.27:                               # %.lr.ph88.i.preheader
                                        #   in Loop: Header=BB7_12 Depth=1
	ori	$s7, $zero, 24
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	b	.LBB7_29
	.p2align	4, , 16
.LBB7_28:                               #   in Loop: Header=BB7_29 Depth=2
	ldx.d	$s3, $s0, $s7
	addi.d	$s7, $s7, 8
	beqz	$s3, .LBB7_31
.LBB7_29:                               # %.lr.ph88.i
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s0, 0
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(setp_implies)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_28
# %bb.30:                               #   in Loop: Header=BB7_29 Depth=2
	addi.d	$a0, $fp, 8
	st.d	$s3, $fp, 0
	move	$fp, $a0
	b	.LBB7_28
	.p2align	4, , 16
.LBB7_31:                               # %._crit_edge.i
                                        #   in Loop: Header=BB7_12 Depth=1
	st.d	$zero, $fp, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.bu	$a1, $a0, 1
	addi.d	$a0, $fp, 8
	andi	$a1, $a1, 2
	st.d	$a0, $s0, 8
	beqz	$a1, .LBB7_11
# %bb.32:                               #   in Loop: Header=BB7_12 Depth=1
	ld.w	$a1, $s8, 36
	sub.d	$a0, $a0, $s0
	srai.d	$a0, $a0, 3
	addi.d	$a2, $a0, -3
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB7_11
.LBB7_33:
	move	$s1, $zero
.LBB7_34:
	pcalau12i	$a0, %pc_hi20(Rp_current)
	ld.w	$a2, $a0, %pc_lo12(Rp_current)
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(sm_insert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $a0, 0
	beqz	$s2, .LBB7_40
# %bb.35:                               # %.lr.ph93.i.preheader
	ori	$fp, $zero, 24
	b	.LBB7_37
	.p2align	4, , 16
.LBB7_36:                               #   in Loop: Header=BB7_37 Depth=1
	ldx.d	$s2, $s0, $fp
	addi.d	$fp, $fp, 8
	beqz	$s2, .LBB7_40
.LBB7_37:                               # %.lr.ph93.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s2, 1
	andi	$a0, $a0, 16
	beqz	$a0, .LBB7_36
# %bb.38:                               #   in Loop: Header=BB7_37 Depth=1
	ld.d	$a1, $s0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(full_row)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_36
# %bb.39:                               #   in Loop: Header=BB7_37 Depth=1
	ld.hu	$a2, $s2, 2
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(sm_insert)
	jirl	$ra, $ra, 0
	b	.LBB7_36
.LBB7_40:
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB7_42
# %bb.41:                               # %.loopexit82.sink.split.sink.split.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_42:
	move	$a0, $s0
.LBB7_43:                               # %.sink.split
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_44:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 1
	andi	$a0, $a0, 2
	bnez	$a0, .LBB7_46
# %bb.45:
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
.LBB7_46:
	pcalau12i	$a0, %pc_hi20(ftautology.ftaut_level)
	ld.w	$a1, $a0, %pc_lo12(ftautology.ftaut_level)
	ld.w	$a2, $s4, 48
	ld.w	$a3, $s4, 72
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, %pc_lo12(ftautology.ftaut_level)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
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
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB7_47:
	ld.w	$s1, $s5, 0
	ori	$s2, $zero, 8
	ori	$fp, $zero, 33
	ori	$a0, $zero, 8
	blt	$s1, $fp, .LBB7_49
# %bb.48:
	addi.d	$a0, $s1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB7_49:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s5, 0
	move	$s1, $a0
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	blt	$s3, $fp, .LBB7_51
# %bb.50:
	addi.d	$a0, $s3, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$s2, $a0, 8
.LBB7_51:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a3, $zero, 512
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(binate_split_select)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(ftautology)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$fp, $s2
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(ftautology)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB7_53
# %bb.52:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_53:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB7_55
# %bb.54:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_55:
	move	$a0, $fp
	bnez	$fp, .LBB7_43
	b	.LBB7_44
.Lfunc_end7:
	.size	ftautology, .Lfunc_end7-ftautology
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"# IRRED: F=%d E=%d R=%d Rt=%d Rp=%d Rc=%d Final=%d Bound=%d\n"
	.size	.L.str, 61

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"IRRED1: zr=%d ze=%d to-go=%d time=%s\n"
	.size	.L.str.1, 38

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"IRRED1: zr=%d zrt=%d to-go=%d time=%s\n"
	.size	.L.str.2, 39

	.type	Rp_current,@object              # @Rp_current
	.local	Rp_current
	.comm	Rp_current,4,4
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"IRRED1: %d of %d to-go=%d, table=%dx%d time=%s\n"
	.size	.L.str.3, 48

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"IRRED1: delete redundant rows, now %dx%d\n"
	.size	.L.str.4, 42

	.type	tautology.taut_level,@object    # @tautology.taut_level
	.local	tautology.taut_level
	.comm	tautology.taut_level,4,4
	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"TAUTOLOGY"
	.size	.L.str.5, 10

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"exit TAUTOLOGY[%d]: %s\n"
	.size	.L.str.6, 24

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"FALSE"
	.size	.L.str.7, 6

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"TRUE"
	.size	.L.str.8, 5

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"UNATE_REDUCTION: %d unate variables, reduced to %d\n"
	.size	.L.str.10, 52

	.type	ftautology.ftaut_level,@object  # @ftautology.ftaut_level
	.local	ftautology.ftaut_level
	.comm	ftautology.ftaut_level,4,4
	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"FIND_TAUTOLOGY"
	.size	.L.str.11, 15

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"exit FIND_TAUTOLOGY[%d]: table is %d by %d\n"
	.size	.L.str.12, 44

	.section	".note.GNU-stack","",@progbits
	.addrsig
