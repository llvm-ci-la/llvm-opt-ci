	.file	"primes.c"
	.text
	.globl	primes_consensus                # -- Begin function primes_consensus
	.p2align	5
	.type	primes_consensus,@function
primes_consensus:                       # @primes_consensus
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
	move	$s4, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB0_6
# %bb.1:
	ld.d	$a0, $s4, 24
	ld.d	$s0, $s4, 0
	beqz	$a0, .LBB0_7
# %bb.2:                                # %.preheader.preheader
	addi.d	$s2, $s4, 24
	ori	$fp, $zero, 16
	.p2align	4, , 16
.LBB0_3:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $s4, $fp
	beqz	$a0, .LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(full_row)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	beqz	$a0, .LBB0_3
# %bb.5:
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$fp, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $fp, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 88
	b	.LBB0_20
.LBB0_6:
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	move	$s2, $a0
	bnez	$a1, .LBB0_21
	b	.LBB0_22
.LBB0_7:
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s4, 16
	move	$s1, $a0
	move	$a0, $s0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	b	.LBB0_20
.LBB0_8:
	ld.w	$a0, $s0, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB0_10
# %bb.9:
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_10:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s4, 16
	move	$s1, $a0
	beqz	$a2, .LBB0_15
# %bb.11:
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB0_12:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
	ld.wu	$a1, $s1, 0
	andi	$a4, $a1, 1023
	addi.d	$a1, $a4, 1
	alsl.d	$a3, $a4, $s1, 2
	alsl.d	$a2, $a4, $a2, 2
	.p2align	4, , 16
.LBB0_13:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a3, 0
	ld.w	$a5, $a2, 0
	or	$a4, $a5, $a4
	st.w	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, -4
	bltu	$a0, $a1, .LBB0_13
# %bb.14:                               # %.loopexit
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.d	$a2, $s2, 0
	addi.d	$s2, $s2, 8
	bnez	$a2, .LBB0_12
.LBB0_15:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s5, $a0, %got_pc_lo12(cube)
	ld.d	$a1, $s5, 88
	move	$a0, $s1
	pcaddu18i	$ra, %call36(setp_equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_24
# %bb.16:
	beqz	$s1, .LBB0_18
# %bb.17:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_18:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(massive_count)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$a1, $a0, %got_pc_lo12(cdata)
	ld.w	$a0, $a1, 32
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB0_34
# %bb.19:
	ld.w	$a1, $s5, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 88
.LBB0_20:
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	move	$s2, $a0
	beqz	$a1, .LBB0_22
.LBB0_21:                               # %primes_consensus_special_cases.exit.thread.sink.split.sink.split
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_22:                               # %primes_consensus_special_cases.exit.thread.sink.split
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_23:                               # %primes_consensus_special_cases.exit.thread
	move	$a0, $s2
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
.LBB0_24:
	ld.w	$s2, $s5, 0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s2, $a1, .LBB0_26
# %bb.25:
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_26:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 88
	move	$s2, $a0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB0_28
# %bb.27:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_28:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(primes_consensus)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.w	$a0, $a0, 12
	ld.w	$a1, $s2, 0
	mul.w	$a1, $a1, $a0
	blez	$a1, .LBB0_66
# %bb.29:                               # %.lr.ph34.preheader
	ld.d	$a0, $s2, 24
	alsl.d	$a1, $a1, $a0, 2
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB0_30:                               # %.lr.ph34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_31 Depth 2
	ld.wu	$a3, $a0, 0
	andi	$a4, $a3, 1023
	addi.d	$a3, $a4, 1
	slli.d	$a4, $a4, 2
	.p2align	4, , 16
.LBB0_31:                               #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a5, $a0, $a4
	ldx.w	$a6, $s1, $a4
	and	$a5, $a6, $a5
	stx.w	$a5, $a0, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, -4
	bltu	$a2, $a3, .LBB0_31
# %bb.32:                               #   in Loop: Header=BB0_30 Depth=1
	ld.w	$a3, $s2, 0
	alsl.d	$a0, $a3, $a0, 2
	bltu	$a0, $a1, .LBB0_30
# %bb.33:
	move	$s4, $s1
	b	.LBB0_22
.LBB0_34:
	ld.w	$a1, $a1, 36
	bne	$a1, $a0, .LBB0_36
# %bb.35:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cubeunlist)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	move	$s2, $a0
	bnez	$a1, .LBB0_21
	b	.LBB0_22
.LBB0_36:                               # %primes_consensus_special_cases.exit
	ld.w	$s0, $s5, 0
	ori	$s1, $zero, 8
	ori	$fp, $zero, 33
	ori	$a0, $zero, 8
	blt	$s0, $fp, .LBB0_38
# %bb.37:
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_38:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s5, 0
	move	$s0, $a0
	blt	$s2, $fp, .LBB0_40
# %bb.39:
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$s1, $a0, 8
.LBB0_40:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a3, $zero, 1
	ori	$s6, $zero, 1
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(binate_split_select)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(primes_consensus)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(primes_consensus)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 12
	ld.w	$a2, $s2, 0
	move	$s3, $a0
	mul.w	$a0, $a2, $a1
	lu12i.w	$fp, -3
	blez	$a0, .LBB0_45
# %bb.41:                               # %.lr.ph.i.i.preheader
	ld.d	$s4, $s2, 24
	alsl.d	$s7, $a0, $s4, 2
	ori	$s8, $fp, 4095
	lu32i.d	$s8, 0
	.p2align	4, , 16
.LBB0_42:                               # %.lr.ph.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_43 Depth 2
	ld.wu	$a0, $s4, 0
	andi	$a1, $a0, 1023
	addi.d	$a0, $a1, 1
	slli.d	$a1, $a1, 2
	.p2align	4, , 16
.LBB0_43:                               #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $s4, $a1
	ldx.w	$a3, $s0, $a1
	and	$a2, $a3, $a2
	stx.w	$a2, $s4, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	bltu	$s6, $a0, .LBB0_43
# %bb.44:                               #   in Loop: Header=BB0_42 Depth=1
	ld.d	$a1, $s5, 88
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cdist)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s4, 0
	slti	$a0, $a0, 1
	and	$a1, $a1, $s8
	slli.d	$a0, $a0, 13
	or	$a0, $a1, $a0
	st.w	$a0, $s4, 0
	ld.w	$a0, $s2, 0
	alsl.d	$s4, $a0, $s4, 2
	bltu	$s4, $s7, .LBB0_42
.LBB0_45:                               # %and_with_cofactor.exit.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_inactive)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 12
	ld.w	$a2, $s3, 0
	mul.w	$a1, $a2, $a1
	move	$s8, $a0
	blez	$a1, .LBB0_50
# %bb.46:                               # %.lr.ph.i51.i.preheader
	ld.d	$s4, $s3, 24
	alsl.d	$s2, $a1, $s4, 2
	ori	$s6, $zero, 1
	ori	$fp, $fp, 4095
	lu32i.d	$fp, 0
	.p2align	4, , 16
.LBB0_47:                               # %.lr.ph.i51.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_48 Depth 2
	ld.wu	$a0, $s4, 0
	andi	$a1, $a0, 1023
	addi.d	$a0, $a1, 1
	slli.d	$a1, $a1, 2
	.p2align	4, , 16
.LBB0_48:                               #   Parent Loop BB0_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $s4, $a1
	ldx.w	$a3, $s1, $a1
	and	$a2, $a3, $a2
	stx.w	$a2, $s4, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	bltu	$s6, $a0, .LBB0_48
# %bb.49:                               #   in Loop: Header=BB0_47 Depth=1
	ld.d	$a1, $s5, 88
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cdist)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s4, 0
	slti	$a0, $a0, 1
	and	$a1, $a1, $fp
	slli.d	$a0, $a0, 13
	or	$a0, $a1, $a0
	st.w	$a0, $s4, 0
	ld.w	$a0, $s3, 0
	alsl.d	$s4, $a0, $s4, 2
	bltu	$s4, $s2, .LBB0_47
.LBB0_50:                               # %and_with_cofactor.exit57.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(sf_inactive)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 4
	move	$s3, $a0
	ori	$a0, $zero, 500
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$s7, $a0, 24
	move	$a0, $s8
	move	$a1, $s3
	pcaddu18i	$ra, %call36(sf_join)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s8, 12
	ld.w	$a1, $s8, 0
	mul.w	$a2, $a1, $a2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	blez	$a2, .LBB0_61
# %bb.51:                               # %.lr.ph68.i
	ld.d	$s6, $s8, 24
	ld.w	$a0, $s3, 0
	alsl.d	$a2, $a2, $s6, 2
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ori	$s2, $zero, 1
	b	.LBB0_54
	.p2align	4, , 16
.LBB0_52:                               # %._crit_edge.loopexit.i
                                        #   in Loop: Header=BB0_54 Depth=1
	move	$s8, $s5
	ld.w	$a1, $s5, 0
.LBB0_53:                               # %._crit_edge.i
                                        #   in Loop: Header=BB0_54 Depth=1
	alsl.d	$s6, $a1, $s6, 2
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	bgeu	$s6, $a2, .LBB0_61
.LBB0_54:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_58 Depth 2
	ld.w	$a2, $s3, 12
	mul.w	$a2, $a2, $a0
	blez	$a2, .LBB0_53
# %bb.55:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB0_54 Depth=1
	move	$s5, $s8
	ld.d	$s8, $s3, 24
	alsl.d	$fp, $a2, $s8, 2
	b	.LBB0_58
	.p2align	4, , 16
.LBB0_56:                               #   in Loop: Header=BB0_58 Depth=2
	ld.w	$a0, $s4, 0
	alsl.d	$s7, $a0, $s7, 2
.LBB0_57:                               #   in Loop: Header=BB0_58 Depth=2
	ld.w	$a0, $s3, 0
	alsl.d	$s8, $a0, $s8, 2
	bgeu	$s8, $fp, .LBB0_52
.LBB0_58:                               # %.lr.ph.i
                                        #   Parent Loop BB0_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s6
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cdist01)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_57
# %bb.59:                               #   in Loop: Header=BB0_58 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s8
	pcaddu18i	$ra, %call36(consensus)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 12
	ld.w	$a1, $s4, 8
	addi.w	$a0, $a0, 1
	st.w	$a0, $s4, 12
	blt	$a0, $a1, .LBB0_56
# %bb.60:                               #   in Loop: Header=BB0_58 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sf_union)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 4
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $zero, 500
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$s7, $a0, 24
	b	.LBB0_57
.LBB0_61:                               # %primes_consensus_merge.exit
	move	$a0, $s8
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sf_union)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$s0, .LBB0_63
# %bb.62:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_63:
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	beqz	$s1, .LBB0_65
# %bb.64:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_65:
	ld.d	$a1, $s4, 0
	bnez	$a1, .LBB0_21
	b	.LBB0_22
.LBB0_66:                               # %._crit_edge35
	move	$s4, $s1
	bnez	$s1, .LBB0_22
	b	.LBB0_23
.Lfunc_end0:
	.size	primes_consensus, .Lfunc_end0-primes_consensus
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
