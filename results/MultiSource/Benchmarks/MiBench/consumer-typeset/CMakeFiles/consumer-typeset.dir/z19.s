	.file	"z19.c"
	.text
	.globl	DetachGalley                    # -- Begin function DetachGalley
	.p2align	5
	.type	DetachGalley,@function
DetachGalley:                           # @DetachGalley
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
	move	$s0, $a0
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB0_2
# %bb.1:
	ld.d	$s1, $s0, 24
	bne	$s1, $s0, .LBB0_3
.LBB0_2:
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
	ld.d	$s1, $s0, 24
	.p2align	4, , 16
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s1, 0
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB0_3
# %bb.4:
	ld.d	$a0, $s1, 24
	bne	$a0, $s1, .LBB0_6
# %bb.5:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a5, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_6:
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s5, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s5, 120
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s4, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s4, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s3, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$fp, $s3, $a1
	beqz	$fp, .LBB0_8
# %bb.7:
	alsl.d	$a0, $a0, $s3, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$fp, $a1, 0
	ld.d	$a1, $fp, 0
	st.d	$a1, $a0, 0
	b	.LBB0_9
.LBB0_8:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB0_9:
	ori	$a0, $zero, 120
	st.b	$a0, $fp, 32
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	st.d	$fp, $fp, 8
	st.d	$fp, $fp, 0
	st.d	$zero, $fp, 88
	ld.d	$a0, $s0, 24
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s0, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a1, $a0, 8
	st.d	$a0, $s0, 0
	beq	$a1, $a0, .LBB0_11
# %bb.10:
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s0, 0
	ld.d	$a0, $a2, 0
	ld.d	$a3, $a1, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s2, 0
	st.d	$a1, $a1, 8
	st.d	$a0, $a2, 0
	st.d	$fp, $s0, 0
	bnez	$a0, .LBB0_12
	b	.LBB0_13
.LBB0_11:                               # %.thread
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a1, 0
	st.d	$fp, $s0, 0
.LBB0_12:
	ld.d	$a1, $fp, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a0, $a4, 8
	st.d	$a2, $a3, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $a2, 8
.LBB0_13:
	ld.bu	$a2, $s5, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s3, $a0
	st.w	$a2, $s4, 0
	beqz	$a0, .LBB0_15
# %bb.14:
	st.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s3, 3
	st.d	$a1, $a2, 0
	b	.LBB0_16
.LBB0_15:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB0_16:
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	ld.d	$a2, $s1, 24
	ld.d	$a2, $a2, 8
	st.d	$a0, $a1, 0
	st.d	$a2, $s0, 0
	beqz	$a2, .LBB0_18
# %bb.17:
	ld.d	$a3, $a2, 0
	pcalau12i	$a4, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a0, $a1, 0
	ld.d	$a2, $s0, 0
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a4, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a0, 0
	ld.d	$a2, $a1, 0
	ld.d	$a0, $s2, 0
	st.d	$a2, $a4, 8
	st.d	$a0, $a1, 0
	st.d	$fp, $s0, 0
	bnez	$a0, .LBB0_19
	b	.LBB0_20
.LBB0_18:                               # %.thread32
	st.d	$fp, $s0, 0
.LBB0_19:
	ld.d	$a1, $fp, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $fp, 16
	st.d	$fp, $a3, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_20:
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
.Lfunc_end0:
	.size	DetachGalley, .Lfunc_end0-DetachGalley
                                        # -- End function
	.globl	SearchGalley                    # -- Begin function SearchGalley
	.p2align	5
	.type	SearchGalley,@function
SearchGalley:                           # @SearchGalley
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
	ld.bu	$a6, $a0, 32
	andi	$a6, $a6, 247
	move	$s1, $a5
	move	$s2, $a4
	move	$fp, $a1
	beqz	$a6, .LBB1_2
# %bb.1:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a6, $a1, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a5, $a1, %pc_lo12(.L.str.4)
	move	$s0, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$s3, $a2
	move	$a2, $a6
	move	$s4, $a3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $s3
	move	$a3, $s4
	move	$a0, $s0
.LBB1_2:
	sltu	$a1, $zero, $a2
	slli.d	$s3, $a1, 3
	ldx.d	$s4, $a0, $s3
	ld.bu	$a0, $s4, 32
	beqz	$a3, .LBB1_27
# %bb.3:                                # %.split
	ori	$s5, $zero, 8
	beq	$a0, $s5, .LBB1_28
# %bb.4:
	ori	$s6, $zero, 122
	pcalau12i	$a0, %got_pc_hi20(InputSym)
	ld.d	$a0, $a0, %got_pc_lo12(InputSym)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s8, $zero, 121
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_5:                                # %.loopexit55
                                        #   in Loop: Header=BB1_7 Depth=1
	move	$s0, $a0
	bnez	$a0, .LBB1_29
.LBB1_6:                                # %.loopexit55.thread
                                        #   in Loop: Header=BB1_7 Depth=1
	ldx.d	$s4, $s4, $s3
	ld.bu	$a0, $s4, 32
	beq	$a0, $s5, .LBB1_28
.LBB1_7:                                # %.preheader54
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #     Child Loop BB1_13 Depth 2
                                        #       Child Loop BB1_14 Depth 3
	move	$s0, $s4
	.p2align	4, , 16
.LBB1_8:                                #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_8
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=1
	beq	$a0, $s6, .LBB1_12
# %bb.10:                               #   in Loop: Header=BB1_7 Depth=1
	beq	$a0, $s8, .LBB1_18
# %bb.11:                               #   in Loop: Header=BB1_7 Depth=1
	ori	$a1, $zero, 120
	bne	$a0, $a1, .LBB1_6
.LBB1_12:                               # %.preheader53
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.d	$s7, $s0, 8
	beq	$s7, $s0, .LBB1_22
	.p2align	4, , 16
.LBB1_13:                               # %.preheader
                                        #   Parent Loop BB1_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_14 Depth 3
	move	$a0, $s7
	.p2align	4, , 16
.LBB1_14:                               #   Parent Loop BB1_7 Depth=1
                                        #     Parent Loop BB1_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_14
# %bb.15:                               #   in Loop: Header=BB1_13 Depth=2
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	move	$a1, $fp
	move	$a5, $s1
	pcaddu18i	$ra, %call36(SearchGalley)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s7, 8
	beq	$s7, $s0, .LBB1_17
# %bb.16:                               #   in Loop: Header=BB1_13 Depth=2
	beqz	$a0, .LBB1_13
.LBB1_17:                               # %.loopexit
                                        #   in Loop: Header=BB1_7 Depth=1
	bnez	$s1, .LBB1_23
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_18:                               #   in Loop: Header=BB1_7 Depth=1
	beqz	$s2, .LBB1_25
# %bb.19:                               #   in Loop: Header=BB1_7 Depth=1
	ld.d	$a0, $s0, 80
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB1_25
# %bb.20:                               #   in Loop: Header=BB1_7 Depth=1
	ld.d	$a0, $a0, 80
	move	$a1, $fp
	pcaddu18i	$ra, %call36(SearchUses)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	sltu	$a0, $zero, $a0
	maskeqz	$a0, $s0, $a0
	bnez	$a1, .LBB1_5
# %bb.21:                               #   in Loop: Header=BB1_7 Depth=1
	bnez	$s1, .LBB1_26
	b	.LBB1_5
.LBB1_22:                               #   in Loop: Header=BB1_7 Depth=1
	move	$a0, $zero
	beqz	$s1, .LBB1_5
.LBB1_23:                               # %.loopexit
                                        #   in Loop: Header=BB1_7 Depth=1
	bnez	$a0, .LBB1_5
# %bb.24:                               #   in Loop: Header=BB1_7 Depth=1
	ld.bu	$a0, $s0, 32
	bne	$a0, $s6, .LBB1_6
	b	.LBB1_26
.LBB1_25:                               #   in Loop: Header=BB1_7 Depth=1
	beqz	$s1, .LBB1_6
.LBB1_26:                               #   in Loop: Header=BB1_7 Depth=1
	ld.d	$a0, $s0, 80
	ld.d	$a0, $a0, 80
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	bne	$a0, $a1, .LBB1_6
	b	.LBB1_29
.LBB1_27:                               # %.split.us
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB1_30
.LBB1_28:
	move	$s0, $zero
.LBB1_29:                               # %.critedge
	move	$a0, $s0
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
.LBB1_30:                               # %.preheader54.us.lr.ph
	beqz	$s2, .LBB1_42
# %bb.31:                               # %.preheader54.us.lr.ph.split
	beqz	$s1, .LBB1_50
# %bb.32:                               # %.preheader54.us.us78.preheader
	ori	$s1, $zero, 122
	pcalau12i	$a0, %got_pc_hi20(InputSym)
	ld.d	$s2, $a0, %got_pc_lo12(InputSym)
	ori	$s5, $zero, 8
	ori	$s6, $zero, 121
	ori	$s7, $zero, 2
	b	.LBB1_36
	.p2align	4, , 16
.LBB1_33:                               #   in Loop: Header=BB1_36 Depth=1
	ld.d	$a0, $s0, 80
.LBB1_34:                               #   in Loop: Header=BB1_36 Depth=1
	ld.d	$a0, $a0, 80
	ld.d	$a1, $s2, 0
	beq	$a0, $a1, .LBB1_29
.LBB1_35:                               # %.loopexit55.us.us92.thread
                                        #   in Loop: Header=BB1_36 Depth=1
	ldx.d	$s4, $s4, $s3
	ld.bu	$a0, $s4, 32
	beq	$a0, $s5, .LBB1_28
.LBB1_36:                               # %.preheader54.us.us78
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_37 Depth 2
	move	$s0, $s4
	.p2align	4, , 16
.LBB1_37:                               #   Parent Loop BB1_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_37
# %bb.38:                               #   in Loop: Header=BB1_36 Depth=1
	beq	$a0, $s1, .LBB1_33
# %bb.39:                               #   in Loop: Header=BB1_36 Depth=1
	bne	$a0, $s6, .LBB1_35
# %bb.40:                               #   in Loop: Header=BB1_36 Depth=1
	ld.d	$a0, $s0, 80
	ld.bu	$a1, $a0, 32
	bne	$a1, $s7, .LBB1_34
# %bb.41:                               #   in Loop: Header=BB1_36 Depth=1
	ld.d	$a0, $a0, 80
	move	$a1, $fp
	pcaddu18i	$ra, %call36(SearchUses)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_33
	b	.LBB1_29
.LBB1_42:                               # %.preheader54.us.lr.ph.split.us
	beqz	$s1, .LBB1_28
# %bb.43:                               # %.preheader54.us.us.us.preheader
	pcalau12i	$a0, %got_pc_hi20(InputSym)
	ld.d	$a0, $a0, %got_pc_lo12(InputSym)
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 122
	ori	$a2, $zero, 8
	ori	$a3, $zero, 121
	b	.LBB1_46
	.p2align	4, , 16
.LBB1_44:                               #   in Loop: Header=BB1_46 Depth=1
	ld.d	$a4, $s0, 80
	ld.d	$a4, $a4, 80
	beq	$a4, $a0, .LBB1_29
.LBB1_45:                               # %.loopexit166
                                        #   in Loop: Header=BB1_46 Depth=1
	ldx.d	$s4, $s4, $s3
	ld.bu	$a4, $s4, 32
	move	$s0, $zero
	beq	$a4, $a2, .LBB1_29
.LBB1_46:                               # %.preheader54.us.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_47 Depth 2
	move	$s0, $s4
	.p2align	4, , 16
.LBB1_47:                               #   Parent Loop BB1_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a4, $s0, 32
	beqz	$a4, .LBB1_47
# %bb.48:                               #   in Loop: Header=BB1_46 Depth=1
	beq	$a4, $a1, .LBB1_44
# %bb.49:                               #   in Loop: Header=BB1_46 Depth=1
	beq	$a4, $a3, .LBB1_44
	b	.LBB1_45
.LBB1_50:
	ori	$s1, $zero, 121
	ori	$s2, $zero, 2
	ori	$s5, $zero, 8
	b	.LBB1_52
	.p2align	4, , 16
.LBB1_51:                               # %.loopexit169
                                        #   in Loop: Header=BB1_52 Depth=1
	ldx.d	$s4, $s4, $s3
	ld.bu	$a0, $s4, 32
	beq	$a0, $s5, .LBB1_28
.LBB1_52:                               # %.preheader54.us.us97
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_53 Depth 2
	move	$s0, $s4
	.p2align	4, , 16
.LBB1_53:                               #   Parent Loop BB1_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_53
# %bb.54:                               #   in Loop: Header=BB1_52 Depth=1
	bne	$a0, $s1, .LBB1_51
# %bb.55:                               #   in Loop: Header=BB1_52 Depth=1
	ld.d	$a0, $s0, 80
	ld.bu	$a1, $a0, 32
	bne	$a1, $s2, .LBB1_51
# %bb.56:                               #   in Loop: Header=BB1_52 Depth=1
	ld.d	$a0, $a0, 80
	move	$a1, $fp
	pcaddu18i	$ra, %call36(SearchUses)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_51
	b	.LBB1_29
.Lfunc_end1:
	.size	SearchGalley, .Lfunc_end1-SearchGalley
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function AttachGalley
.LCPI2_0:
	.word	0x440dc000                      # float 567
	.text
	.globl	AttachGalley
	.p2align	5
	.type	AttachGalley,@function
AttachGalley:                           # @AttachGalley
# %bb.0:
	addi.d	$sp, $sp, -480
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	st.d	$s3, $sp, 432                   # 8-byte Folded Spill
	st.d	$s4, $sp, 424                   # 8-byte Folded Spill
	st.d	$s5, $sp, 416                   # 8-byte Folded Spill
	st.d	$s6, $sp, 408                   # 8-byte Folded Spill
	st.d	$s7, $sp, 400                   # 8-byte Folded Spill
	st.d	$s8, $sp, 392                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 384                  # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s3, $a0, 24
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	bne	$s3, $a0, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	move	$s0, $a2
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a5, $a0, %pc_lo12(.L.str.5)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $s0
	ld.d	$s3, $fp, 24
	.p2align	4, , 16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s3, 0
	ld.bu	$a0, $s3, 32
	beqz	$a0, .LBB2_2
# %bb.3:
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	ori	$a1, $zero, 120
	beq	$a0, $a1, .LBB2_5
# %bb.4:
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
.LBB2_5:                                # %.loopexit1071
	ld.hu	$a0, $fp, 42
	st.d	$zero, $sp, 360
	st.d	$zero, $sp, 376
	bstrpick.d	$a1, $a0, 8, 8
	sltui	$a2, $a1, 1
	addi.d	$a3, $fp, 48
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a3, $fp, 56
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a3, $fp, 32
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	andi	$a2, $a0, 2
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	xori	$a1, $a1, 1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$s0, $a1, %got_pc_lo12(zz_lengths)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s7, $a1, %got_pc_lo12(zz_size)
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s2, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$s1, $a1, %got_pc_lo12(no_fpos)
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	lu12i.w	$a1, 2047
	ori	$s5, $a1, 4095
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4063
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a1, -393217
	ori	$a1, $a1, 4095
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
                                        # implicit-def: $r5
                                        # kill: killed $r5
	st.d	$s1, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_6:                                #   in Loop: Header=BB2_7 Depth=1
	ld.hu	$a0, $fp, 42
.LBB2_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_54 Depth 2
                                        #     Child Loop BB2_99 Depth 2
                                        #       Child Loop BB2_100 Depth 3
                                        #       Child Loop BB2_103 Depth 3
                                        #       Child Loop BB2_113 Depth 3
                                        #       Child Loop BB2_115 Depth 3
                                        #       Child Loop BB2_128 Depth 3
                                        #       Child Loop BB2_133 Depth 3
                                        #     Child Loop BB2_168 Depth 2
                                        #       Child Loop BB2_169 Depth 3
                                        #       Child Loop BB2_176 Depth 3
                                        #       Child Loop BB2_181 Depth 3
                                        #       Child Loop BB2_193 Depth 3
                                        #         Child Loop BB2_194 Depth 4
                                        #       Child Loop BB2_198 Depth 3
                                        #       Child Loop BB2_204 Depth 3
                                        #     Child Loop BB2_231 Depth 2
                                        #     Child Loop BB2_254 Depth 2
	ld.d	$a1, $fp, 88
	andi	$a0, $a0, 2
	bnez	$a0, .LBB2_10
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=1
	ld.bu	$a2, $fp, 40
	ld.d	$a0, $s3, 24
	ori	$a3, $zero, 133
	bne	$a2, $a3, .LBB2_12
# %bb.9:                                #   in Loop: Header=BB2_7 Depth=1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	move	$a2, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(SearchGalley)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bnez	$a0, .LBB2_14
	b	.LBB2_357
	.p2align	4, , 16
.LBB2_10:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $s3, 24
	ori	$a2, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(SearchGalley)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_333
# %bb.11:                               #   in Loop: Header=BB2_7 Depth=1
	move	$s4, $a0
	ld.d	$a0, $a0, 80
	ld.d	$a0, $a0, 80
	pcalau12i	$a1, %got_pc_hi20(InputSym)
	ld.d	$a1, $a1, %got_pc_lo12(InputSym)
	ld.d	$a1, $a1, 0
	bne	$a0, $a1, .LBB2_15
	b	.LBB2_341
	.p2align	4, , 16
.LBB2_12:                               #   in Loop: Header=BB2_7 Depth=1
	ori	$a3, $zero, 1
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	move	$fp, $a1
	move	$a2, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(SearchGalley)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bnez	$a0, .LBB2_15
# %bb.13:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $s3, 24
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	move	$a1, $fp
	move	$a5, $zero
	pcaddu18i	$ra, %call36(SearchGalley)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	beqz	$a0, .LBB2_357
.LBB2_14:                               #   in Loop: Header=BB2_7 Depth=1
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
.LBB2_15:                               # %.thread
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.bu	$a0, $s4, 32
	ori	$a1, $zero, 121
	beq	$a0, $a1, .LBB2_17
# %bb.16:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a4, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a5, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_17:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$fp, $s4, 80
	ld.bu	$a0, $fp, 32
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB2_19
# %bb.18:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a4, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a5, $a0, %pc_lo12(.L.str.9)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_19:                               #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(EnterErrorBlock)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 8
	slli.d	$a1, $a0, 3
	ldx.d	$a4, $s2, $a1
	st.w	$a0, $s7, 0
	beqz	$a4, .LBB2_21
# %bb.20:                               #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a4, $a0, 0
	ld.d	$a0, $a4, 0
	stx.d	$a0, $s2, $a1
	b	.LBB2_22
	.p2align	4, , 16
.LBB2_21:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a4, $a0, 0
.LBB2_22:                               #   in Loop: Header=BB2_7 Depth=1
	st.d	$a4, $sp, 240                   # 8-byte Folded Spill
	ori	$a0, $zero, 8
	st.b	$a0, $a4, 32
	st.d	$a4, $a4, 24
	st.d	$a4, $a4, 16
	ld.hu	$a0, $a4, 42
	st.d	$a4, $a4, 8
	st.d	$a4, $a4, 0
	lu12i.w	$a5, 14
	ori	$a1, $a5, 4095
	and	$a1, $a0, $a1
	st.h	$a1, $a4, 42
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $a4, 104
	vst	$vr0, $a4, 128
	vst	$vr0, $a4, 144
	ld.h	$a1, $fp, 42
	ori	$a2, $a5, 3839
	and	$a0, $a0, $a2
	bstrpick.d	$a1, $a1, 58, 3
	bstrins.d	$a0, $a1, 8, 8
	xori	$a0, $a0, 256
	st.h	$a0, $a4, 42
	ld.h	$a1, $fp, 34
	st.h	$a1, $a4, 34
	ld.wu	$a1, $fp, 36
	ld.wu	$a2, $a4, 36
	srli.d	$a2, $a2, 20
	move	$a3, $a1
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $a4, 36
	ld.wu	$a2, $fp, 36
	srli.d	$a2, $a2, 20
	bstrins.d	$a1, $a2, 63, 20
	st.w	$a1, $a4, 36
	ld.d	$a1, $fp, 80
	st.d	$a1, $a4, 80
	vst	$vr0, $a4, 88
	ori	$a1, $zero, 129
	st.b	$a1, $a4, 40
	ori	$a1, $a5, 3965
	and	$a0, $a0, $a1
	st.h	$a0, $a4, 42
	st.d	$s4, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	st.d	$fp, $sp, 200                   # 8-byte Folded Spill
	bnez	$a0, .LBB2_24
# %bb.23:                               #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $s5
	bstrins.d	$a0, $s5, 54, 32
	st.d	$a0, $sp, 336
	st.w	$s5, $sp, 344
	b	.LBB2_31
	.p2align	4, , 16
.LBB2_24:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a1, $sp, 336
	addi.d	$a3, $sp, 312
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 336
	ld.w	$a1, $sp, 340
	ld.w	$a0, $sp, 344
	bne	$a2, $s5, .LBB2_28
# %bb.25:                               #   in Loop: Header=BB2_7 Depth=1
	bne	$a1, $s5, .LBB2_28
# %bb.26:                               #   in Loop: Header=BB2_7 Depth=1
	bne	$a0, $s5, .LBB2_28
# %bb.27:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $fp, 80
	addi.d	$fp, $fp, 32
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 336
	ld.w	$a1, $sp, 340
	ld.w	$a0, $sp, 344
.LBB2_28:                               #   in Loop: Header=BB2_7 Depth=1
	bltz	$a2, .LBB2_266
# %bb.29:                               #   in Loop: Header=BB2_7 Depth=1
	bltz	$a1, .LBB2_266
# %bb.30:                               #   in Loop: Header=BB2_7 Depth=1
	bltz	$a0, .LBB2_266
.LBB2_31:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $s8, 0
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	move	$a0, $s1
	pcaddu18i	$ra, %call36(CopyObject)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.bu	$a2, $a1, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a1, $s2, $a3
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB2_33
# %bb.32:                               #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a2, 0
	ld.d	$a2, $a1, 0
	stx.d	$a2, $s2, $a3
	b	.LBB2_34
	.p2align	4, , 16
.LBB2_33:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s8, 0
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
.LBB2_34:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(xx_link)
	ld.d	$a5, $a2, %got_pc_lo12(xx_link)
	st.d	$a1, $a5, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$s6, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $s6, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$s0, $a2, %got_pc_lo12(zz_hold)
	st.d	$a6, $s0, 0
	ld.d	$a2, $a6, 0
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a2, $a4, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a6, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $s0, 0
	ld.d	$a3, $a1, 0
	st.d	$a4, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a4, $a4, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a2, $s6, 0
	st.d	$a5, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a1, $a5, 0
	st.d	$a2, $a4, 8
	st.d	$a1, $s6, 0
	st.d	$a0, $s0, 0
	beqz	$a0, .LBB2_37
# %bb.35:                               #   in Loop: Header=BB2_7 Depth=1
	beqz	$a1, .LBB2_37
# %bb.36:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a1, 16
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	st.d	$a2, $a4, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB2_37:                               #   in Loop: Header=BB2_7 Depth=1
	pcaddu18i	$ra, %call36(DetachEnv)
	jirl	$ra, $ra, 0
	ld.hu	$s5, $s1, 42
	ld.hu	$s4, $fp, 42
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 136
	ld.d	$s1, $a1, 88
	move	$fp, $a0
	beqz	$a2, .LBB2_39
# %bb.38:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s8, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(CopyObject)
	jirl	$ra, $ra, 0
	b	.LBB2_40
	.p2align	4, , 16
.LBB2_39:                               #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $zero
.LBB2_40:                               #   in Loop: Header=BB2_7 Depth=1
	andi	$a1, $s5, 24
	sltu	$a2, $zero, $a1
	bstrpick.d	$a3, $s5, 2, 2
	andi	$a4, $s4, 1
	bstrpick.d	$a5, $s4, 6, 6
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a6, $a1, 64
	st.d	$a0, $sp, 32
	addi.d	$a0, $sp, 360
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 352
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 368
	st.d	$a0, $sp, 8
	addi.d	$a7, $sp, 336
	st.d	$s1, $sp, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(SizeGalley)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352
	beqz	$a0, .LBB2_42
# %bb.41:                               #   in Loop: Header=BB2_7 Depth=1
	pcaddu18i	$ra, %call36(ExpandRecursives)
	jirl	$ra, $ra, 0
.LBB2_42:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 368
	ld.d	$a3, $a0, 80
	ld.wu	$a0, $a3, 40
	lu12i.w	$a1, 393216
	and	$a1, $a0, $a1
	beqz	$a1, .LBB2_44
# %bb.43:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	bnez	$a0, .LBB2_45
	b	.LBB2_52
	.p2align	4, , 16
.LBB2_44:                               #   in Loop: Header=BB2_7 Depth=1
	lu12i.w	$a1, 131072
	or	$a0, $a0, $a1
	st.w	$a0, $a3, 40
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	beqz	$a0, .LBB2_52
.LBB2_45:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a1, $sp, 336
	move	$a0, $a3
	addi.d	$a3, $sp, 312
	move	$a2, $zero
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 336
	ld.w	$a1, $sp, 340
	ld.w	$a0, $sp, 344
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	bne	$a2, $a3, .LBB2_49
# %bb.46:                               #   in Loop: Header=BB2_7 Depth=1
	bne	$a1, $a3, .LBB2_49
# %bb.47:                               #   in Loop: Header=BB2_7 Depth=1
	bne	$a0, $a3, .LBB2_49
# %bb.48:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
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
	ld.w	$a2, $sp, 336
	ld.w	$a1, $sp, 340
	ld.w	$a0, $sp, 344
.LBB2_49:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	bltz	$a2, .LBB2_266
# %bb.50:                               #   in Loop: Header=BB2_7 Depth=1
	bltz	$a1, .LBB2_266
# %bb.51:                               #   in Loop: Header=BB2_7 Depth=1
	bltz	$a0, .LBB2_266
.LBB2_52:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.hu	$a0, $fp, 42
	andi	$a0, $a0, 2
	bnez	$a0, .LBB2_95
# %bb.53:                               #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(EnterErrorBlock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	st.d	$zero, $sp, 328
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_54:                               #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB2_54
# %bb.55:                               #   in Loop: Header=BB2_7 Depth=1
	pcaddu18i	$ra, %call36(DetachEnv)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_57
# %bb.56:                               #   in Loop: Header=BB2_7 Depth=1
	move	$a3, $zero
	ld.d	$s1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	b	.LBB2_58
.LBB2_57:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.hu	$a0, $a2, 42
	bstrpick.d	$a3, $a0, 2, 2
	ld.d	$s1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
.LBB2_58:                               #   in Loop: Header=BB2_7 Depth=1
	ld.hu	$a0, $fp, 42
	addi.d	$a6, $a2, 64
	st.d	$zero, $sp, 32
	addi.d	$a2, $sp, 376
	st.d	$a2, $sp, 24
	addi.d	$a2, $sp, 352
	st.d	$a2, $sp, 16
	addi.d	$a2, $sp, 328
	st.d	$a2, $sp, 8
	andi	$a4, $a0, 1
	ori	$a2, $zero, 1
	ori	$a5, $zero, 1
	addi.d	$a7, $sp, 336
	st.d	$zero, $sp, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(SizeGalley)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352
	beqz	$a0, .LBB2_60
# %bb.59:                               #   in Loop: Header=BB2_7 Depth=1
	pcaddu18i	$ra, %call36(ExpandRecursives)
	jirl	$ra, $ra, 0
.LBB2_60:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB2_94
# %bb.61:                               #   in Loop: Header=BB2_7 Depth=1
	ld.bu	$a0, $s1, 124
	slli.d	$a1, $a0, 3
	ldx.d	$s4, $s2, $a1
	st.w	$a0, $s7, 0
	beqz	$s4, .LBB2_63
# %bb.62:                               #   in Loop: Header=BB2_7 Depth=1
	st.d	$s4, $s0, 0
	ld.d	$a1, $s4, 0
	alsl.d	$a0, $a0, $s2, 3
	st.d	$a1, $a0, 0
	b	.LBB2_64
.LBB2_63:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s8, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$a0, $s0, 0
.LBB2_64:                               #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 124
	st.b	$a0, $s4, 32
	st.d	$s4, $s4, 24
	st.d	$s4, $s4, 16
	st.d	$s4, $s4, 8
	st.d	$s4, $s4, 0
	ld.bu	$a0, $s1, 125
	slli.d	$a1, $a0, 3
	ldx.d	$fp, $s2, $a1
	st.w	$a0, $s7, 0
	beqz	$fp, .LBB2_66
# %bb.65:                               #   in Loop: Header=BB2_7 Depth=1
	st.d	$fp, $s0, 0
	ld.d	$a1, $fp, 0
	alsl.d	$a0, $a0, $s2, 3
	st.d	$a1, $a0, 0
	b	.LBB2_67
.LBB2_66:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s8, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s0, 0
.LBB2_67:                               #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 125
	st.b	$a0, $fp, 32
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	ld.hu	$a0, $fp, 42
	st.d	$fp, $fp, 0
	ld.d	$a2, $s8, 0
	st.d	$fp, $fp, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	st.h	$a0, $fp, 42
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s1, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s2, $a1
	move	$s5, $a0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB2_69
# %bb.68:                               #   in Loop: Header=BB2_7 Depth=1
	st.d	$a1, $s0, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a0, $a2, 0
	b	.LBB2_70
.LBB2_69:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s8, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB2_70:                               #   in Loop: Header=BB2_7 Depth=1
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $a4, 0
	st.d	$a1, $s6, 0
	st.d	$s4, $s0, 0
	ld.d	$a0, $s4, 0
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s6, 0
	st.d	$s5, $s0, 0
	beqz	$s5, .LBB2_73
# %bb.71:                               #   in Loop: Header=BB2_7 Depth=1
	beqz	$a0, .LBB2_73
# %bb.72:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s5, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a5, 0
	st.d	$a2, $s5, 16
	st.d	$s5, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB2_73:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $s7, 0
	beqz	$a0, .LBB2_75
# %bb.74:                               #   in Loop: Header=BB2_7 Depth=1
	st.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a1, $a2, 0
	b	.LBB2_76
.LBB2_75:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s8, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
.LBB2_76:                               #   in Loop: Header=BB2_7 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	st.d	$a0, $s6, 0
	st.d	$fp, $s0, 0
	ld.d	$a1, $fp, 0
	st.d	$a1, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s6, 0
	st.d	$s5, $s0, 0
	beqz	$s5, .LBB2_79
# %bb.77:                               #   in Loop: Header=BB2_7 Depth=1
	beqz	$a0, .LBB2_79
# %bb.78:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s5, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a5, 0
	st.d	$a2, $s5, 16
	st.d	$s5, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB2_79:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$s1, $sp, 248                   # 8-byte Folded Reload
	ld.bu	$a2, $s1, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $s7, 0
	beqz	$a0, .LBB2_81
# %bb.80:                               #   in Loop: Header=BB2_7 Depth=1
	st.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a1, $a2, 0
	b	.LBB2_82
.LBB2_81:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s8, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
.LBB2_82:                               #   in Loop: Header=BB2_7 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $s3, 24
	st.d	$a0, $a4, 0
	st.d	$a0, $s6, 0
	st.d	$a1, $s0, 0
	beqz	$a1, .LBB2_84
# %bb.83:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s6, 0
	st.d	$s4, $s0, 0
	bnez	$a0, .LBB2_85
	b	.LBB2_86
.LBB2_84:                               # %.thread1635
                                        #   in Loop: Header=BB2_7 Depth=1
	st.d	$s4, $s0, 0
.LBB2_85:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s4, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a5, 0
	st.d	$a2, $s4, 16
	st.d	$s4, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB2_86:                               #   in Loop: Header=BB2_7 Depth=1
	ld.bu	$a2, $s1, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $s7, 0
	beqz	$a0, .LBB2_88
# %bb.87:                               #   in Loop: Header=BB2_7 Depth=1
	st.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a1, $a2, 0
	b	.LBB2_89
.LBB2_88:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s8, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
.LBB2_89:                               #   in Loop: Header=BB2_7 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 8
	st.d	$a0, $a4, 0
	st.d	$a0, $s6, 0
	st.d	$a1, $s0, 0
	beqz	$a1, .LBB2_92
# %bb.90:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $a4, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $s6, 0
	st.d	$fp, $s0, 0
	beqz	$a1, .LBB2_94
# %bb.91:                               # %._crit_edge1339
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	b	.LBB2_93
.LBB2_92:                               # %.thread1023
                                        #   in Loop: Header=BB2_7 Depth=1
	st.d	$fp, $s0, 0
	move	$a1, $a0
.LBB2_93:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a2, $fp, 16
	st.d	$a0, $fp, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $a5, 0
	st.d	$fp, $a0, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB2_94:                               #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(LeaveErrorBlock)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
.LBB2_95:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_152
.LBB2_96:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$s8, $fp, 8
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	bne	$s8, $fp, .LBB2_99
	b	.LBB2_278
	.p2align	4, , 16
.LBB2_97:                               #   in Loop: Header=BB2_99 Depth=2
	ld.wu	$a0, $s4, 40
	ld.wu	$a1, $a3, 40
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	and	$a0, $a0, $a2
	srli.d	$a1, $a1, 29
	bstrins.d	$a0, $a1, 30, 29
	st.w	$a0, $s4, 40
.LBB2_98:                               #   in Loop: Header=BB2_99 Depth=2
	ld.d	$s8, $s8, 8
	beq	$s8, $fp, .LBB2_278
.LBB2_99:                               # %.preheader1065
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_100 Depth 3
                                        #       Child Loop BB2_103 Depth 3
                                        #       Child Loop BB2_113 Depth 3
                                        #       Child Loop BB2_115 Depth 3
                                        #       Child Loop BB2_128 Depth 3
                                        #       Child Loop BB2_133 Depth 3
	move	$s4, $s8
	.p2align	4, , 16
.LBB2_100:                              #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB2_100
# %bb.101:                              #   in Loop: Header=BB2_99 Depth=2
	ori	$a1, $zero, 9
	bne	$a0, $a1, .LBB2_104
# %bb.102:                              #   in Loop: Header=BB2_99 Depth=2
	ldx.d	$s4, $s4, $s1
	.p2align	4, , 16
.LBB2_103:                              #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB2_103
.LBB2_104:                              # %.loopexit1064
                                        #   in Loop: Header=BB2_99 Depth=2
	addi.d	$a1, $a0, -1
	ori	$a2, $zero, 137
	bltu	$a2, $a1, .LBB2_121
# %bb.105:                              # %.loopexit1064
                                        #   in Loop: Header=BB2_99 Depth=2
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI2_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI2_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB2_106:                              #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_98
# %bb.107:                              #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a0, $sp, 376
	bnez	$a0, .LBB2_145
# %bb.108:                              #   in Loop: Header=BB2_99 Depth=2
	ld.bu	$a2, $s5, 17
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $s7, 0
	beqz	$a0, .LBB2_143
# %bb.109:                              #   in Loop: Header=BB2_99 Depth=2
	st.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a1, $a2, 0
	b	.LBB2_144
.LBB2_110:                              #   in Loop: Header=BB2_99 Depth=2
	ld.wu	$a0, $s4, 40
	ld.wu	$a1, $a3, 40
	ld.hu	$a2, $s4, 44
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	and	$a0, $a0, $a3
	srli.d	$a1, $a1, 29
	bstrins.d	$a0, $a1, 30, 29
	andi	$a1, $a2, 512
	st.w	$a0, $s4, 40
	bnez	$a1, .LBB2_141
# %bb.111:                              #   in Loop: Header=BB2_99 Depth=2
	ld.h	$a0, $fp, 42
	ori	$a0, $a0, 32
	st.h	$a0, $fp, 42
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	b	.LBB2_98
.LBB2_112:                              #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a0, $s4, 8
	.p2align	4, , 16
.LBB2_113:                              #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB2_113
# %bb.114:                              #   in Loop: Header=BB2_99 Depth=2
	ld.d	$fp, $a0, 24
	ld.d	$a0, $a0, 16
	beq	$fp, $a0, .LBB2_125
	.p2align	4, , 16
.LBB2_115:                              # %.preheader1062
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$fp, $fp, 0
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB2_115
# %bb.116:                              # %.preheader1062
                                        #   in Loop: Header=BB2_99 Depth=2
	ori	$a1, $zero, 124
	beq	$a0, $a1, .LBB2_118
# %bb.117:                              #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a5, $a0, %pc_lo12(.L.str.14)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_118:                              # %.loopexit1063
                                        #   in Loop: Header=BB2_99 Depth=2
	move	$a0, $fp
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(CheckComponentOrder)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 157
	beq	$a0, $a1, .LBB2_122
# %bb.119:                              # %.loopexit1063
                                        #   in Loop: Header=BB2_99 Depth=2
	ori	$a1, $zero, 155
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB2_266
# %bb.120:                              # %.loopexit1063
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ori	$a1, $zero, 156
	bne	$a0, $a1, .LBB2_98
	b	.LBB2_320
.LBB2_121:                              #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $a1, 0
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a2, $a0, %pc_lo12(.L.str.24)
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a5, $a0, %pc_lo12(.L.str.25)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	move	$a3, $zero
	move	$a4, $fp
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	b	.LBB2_98
.LBB2_122:                              #   in Loop: Header=BB2_99 Depth=2
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$a0, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a1, $fp, 24
	st.d	$fp, $a0, 0
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	bne	$a1, $fp, .LBB2_128
.LBB2_123:                              # %.preheader1061
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a1, $fp, 8
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	bne	$a1, $fp, .LBB2_133
.LBB2_124:                              # %._crit_edge
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.bu	$a0, $fp, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $fp, 33
	add.d	$a0, $s5, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s2, $a1
	st.d	$fp, $s0, 0
	st.w	$a0, $s7, 0
	st.d	$a1, $fp, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
.LBB2_125:                              #   in Loop: Header=BB2_99 Depth=2
	ld.d	$s8, $s8, 0
	ld.d	$a0, $s8, 8
	ld.d	$a2, $a0, 24
	st.d	$a0, $a5, 0
	beq	$a2, $a0, .LBB2_137
# %bb.126:                              #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a1, $a0, 16
	st.d	$a2, $s6, 0
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB2_138
	.p2align	4, , 16
.LBB2_127:                              #   in Loop: Header=BB2_128 Depth=3
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s2, $a3
	st.d	$a1, $s0, 0
	st.w	$a2, $s7, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s0, 0
	ld.d	$fp, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s2, $a1
	ld.d	$a1, $fp, 24
	beq	$a1, $fp, .LBB2_123
.LBB2_128:                              # %.lr.ph
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a1, 24
	st.d	$a1, $a5, 0
	beq	$a2, $a1, .LBB2_130
# %bb.129:                              #   in Loop: Header=BB2_128 Depth=3
	ld.d	$a3, $a1, 16
	st.d	$a2, $s6, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB2_130:                              #   in Loop: Header=BB2_128 Depth=3
	ld.d	$a2, $a1, 8
	st.d	$a1, $s0, 0
	beq	$a2, $a1, .LBB2_127
# %bb.131:                              #   in Loop: Header=BB2_128 Depth=3
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s0, 0
	ld.d	$a1, $s6, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $a5, 0
	st.d	$a2, $a2, 8
	b	.LBB2_127
	.p2align	4, , 16
.LBB2_132:                              #   in Loop: Header=BB2_133 Depth=3
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s2, $a3
	st.d	$a1, $s0, 0
	st.w	$a2, $s7, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s0, 0
	ld.d	$fp, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s2, $a1
	ld.d	$a1, $fp, 8
	beq	$a1, $fp, .LBB2_124
.LBB2_133:                              # %.lr.ph1166
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a1, 24
	st.d	$a1, $a5, 0
	beq	$a2, $a1, .LBB2_135
# %bb.134:                              #   in Loop: Header=BB2_133 Depth=3
	ld.d	$a3, $a1, 16
	st.d	$a2, $s6, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB2_135:                              #   in Loop: Header=BB2_133 Depth=3
	ld.d	$a2, $a1, 8
	st.d	$a1, $s0, 0
	beq	$a2, $a1, .LBB2_132
# %bb.136:                              #   in Loop: Header=BB2_133 Depth=3
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s0, 0
	ld.d	$a1, $s6, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $a5, 0
	st.d	$a2, $a2, 8
	b	.LBB2_132
.LBB2_137:                              #   in Loop: Header=BB2_99 Depth=2
	move	$a2, $zero
.LBB2_138:                              #   in Loop: Header=BB2_99 Depth=2
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	ld.d	$a3, $a0, 8
	st.d	$a2, $a1, 0
	st.d	$a0, $s0, 0
	beq	$a3, $a0, .LBB2_140
# %bb.139:                              #   in Loop: Header=BB2_99 Depth=2
	st.d	$a3, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a2, $s0, 0
	ld.d	$a0, $s6, 0
	ld.d	$a3, $a2, 0
	st.d	$a0, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a0, $a5, 0
	st.d	$a2, $a2, 8
.LBB2_140:                              #   in Loop: Header=BB2_99 Depth=2
	ld.bu	$a2, $a0, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a0, 33
	add.d	$a2, $s5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s2, $a3
	st.d	$a0, $s0, 0
	st.w	$a2, $s7, 0
	st.d	$a3, $a0, 0
	ld.w	$a2, $s7, 0
	ld.d	$a3, $s0, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a2, 3
	stx.d	$a3, $s2, $a1
	ld.d	$a1, $a0, 24
	beq	$a1, $a0, .LBB2_142
.LBB2_141:                              #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	b	.LBB2_98
.LBB2_142:                              #   in Loop: Header=BB2_99 Depth=2
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	b	.LBB2_98
.LBB2_143:                              #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $s0, 0
.LBB2_144:                              #   in Loop: Header=BB2_99 Depth=2
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $sp, 376
.LBB2_145:                              #   in Loop: Header=BB2_99 Depth=2
	ld.bu	$a2, $s5, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $s7, 0
	beqz	$a0, .LBB2_147
# %bb.146:                              #   in Loop: Header=BB2_99 Depth=2
	st.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a1, $a2, 0
	b	.LBB2_148
.LBB2_147:                              #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
.LBB2_148:                              #   in Loop: Header=BB2_99 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 0
	ld.d	$a1, $sp, 376
	st.d	$a0, $a0, 8
	st.d	$a0, $a5, 0
	st.d	$a0, $s6, 0
	st.d	$a1, $s0, 0
	beqz	$a1, .LBB2_150
# %bb.149:                              #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a2, $a1, 0
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	st.d	$a2, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a3, 8
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $s6, 0
	st.d	$s4, $s0, 0
	bnez	$a0, .LBB2_151
	b	.LBB2_98
.LBB2_150:                              # %.thread1636
                                        #   in Loop: Header=BB2_99 Depth=2
	st.d	$s4, $s0, 0
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
.LBB2_151:                              #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a1, $s4, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a4, 0
	st.d	$a2, $s4, 16
	st.d	$s4, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB2_98
	.p2align	4, , 16
.LBB2_152:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.w	$a1, $sp, 336
	bge	$a1, $a0, .LBB2_208
.LBB2_153:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $fp, 80
	move	$fp, $a3
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 80
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a2, $a0, %pc_lo12(.L.str.13)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 3
	ori	$a3, $zero, 2
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	move	$a5, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB2_266
.LBB2_154:                              #   in Loop: Header=BB2_7 Depth=1
	ld.wu	$a1, $s4, 40
	ld.wu	$a2, $a3, 40
	addi.d	$a3, $s4, 32
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	and	$a1, $a1, $a3
	srli.d	$a2, $a2, 29
	bstrins.d	$a1, $a2, 30, 29
	st.w	$a1, $s4, 40
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	beqz	$a1, .LBB2_158
# %bb.155:                              # %.preheader1067
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$s1, $s8, 8
	bne	$s1, $fp, .LBB2_168
# %bb.156:                              # %._crit_edge1201
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a1, $zero, 18
	bne	$a0, $a1, .LBB2_158
.LBB2_157:                              #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(VerticalHyphenate)
	jirl	$ra, $ra, 0
.LBB2_158:                              #   in Loop: Header=BB2_7 Depth=1
	st.d	$zero, $sp, 320
	addi.d	$a1, $sp, 336
	addi.d	$a3, $sp, 320
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	alsl.d	$fp, $fp, $s4, 2
	ld.w	$a3, $fp, 48
	ld.w	$a0, $sp, 336
	bge	$a0, $a3, .LBB2_210
.LBB2_159:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.hu	$a0, $a0, 42
	slli.d	$a0, $a0, 51
	bgez	$a0, .LBB2_162
# %bb.160:                              #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $fp, 56
	add.w	$a0, $a1, $a3
	blez	$a0, .LBB2_162
# %bb.161:                              #   in Loop: Header=BB2_7 Depth=1
	addi.d	$s1, $fp, 48
	addi.d	$a2, $sp, 336
	move	$a0, $a3
	pcaddu18i	$ra, %call36(ScaleToConstraint)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s1, 0
	move	$s5, $a0
	ori	$a0, $zero, 65
	bge	$s5, $a0, .LBB2_215
.LBB2_162:                              #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a0, $fp, 56
	add.w	$a0, $a0, $a3
	blez	$a0, .LBB2_266
# %bb.163:                              #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	fld.s	$fs0, $a1, %pc_lo12(.LCPI2_0)
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$s4, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 292
	move	$a1, $s4
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 340
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	addi.d	$a0, $sp, 272
	move	$a1, $s4
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_213
# %bb.164:                              #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a2, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 13
	b	.LBB2_214
	.p2align	4, , 16
.LBB2_165:                              # %._crit_edge1195
                                        #   in Loop: Header=BB2_168 Depth=2
	ld.bu	$a0, $fp, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $fp, 33
	add.d	$a0, $s5, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s2, $a1
	st.d	$fp, $s0, 0
	st.w	$a0, $s7, 0
	st.d	$a1, $fp, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
.LBB2_166:                              # %.loopexit1060.loopexit
                                        #   in Loop: Header=BB2_168 Depth=2
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
.LBB2_167:                              # %.loopexit1060
                                        #   in Loop: Header=BB2_168 Depth=2
	ld.d	$s1, $s1, 8
	beq	$s1, $a1, .LBB2_212
.LBB2_168:                              # %.preheader1059
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_169 Depth 3
                                        #       Child Loop BB2_176 Depth 3
                                        #       Child Loop BB2_181 Depth 3
                                        #       Child Loop BB2_193 Depth 3
                                        #         Child Loop BB2_194 Depth 4
                                        #       Child Loop BB2_198 Depth 3
                                        #       Child Loop BB2_204 Depth 3
	move	$fp, $s1
	.p2align	4, , 16
.LBB2_169:                              #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB2_169
# %bb.170:                              #   in Loop: Header=BB2_168 Depth=2
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB2_186
# %bb.171:                              #   in Loop: Header=BB2_168 Depth=2
	ori	$a1, $zero, 122
	beq	$a0, $a1, .LBB2_188
# %bb.172:                              #   in Loop: Header=BB2_168 Depth=2
	ori	$a1, $zero, 121
	bne	$a0, $a1, .LBB2_166
# %bb.173:                              #   in Loop: Header=BB2_168 Depth=2
	ld.hu	$a0, $fp, 42
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_319
# %bb.174:                              #   in Loop: Header=BB2_168 Depth=2
	ld.d	$s1, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$a0, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a1, $fp, 24
	st.d	$fp, $a0, 0
	bne	$a1, $fp, .LBB2_176
	b	.LBB2_181
	.p2align	4, , 16
.LBB2_175:                              #   in Loop: Header=BB2_176 Depth=3
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s2, $a3
	st.d	$a1, $s0, 0
	st.w	$a2, $s7, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s0, 0
	ld.d	$fp, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s2, $a1
	ld.d	$a1, $fp, 24
	beq	$a1, $fp, .LBB2_181
.LBB2_176:                              # %.lr.ph1192
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a1, 24
	st.d	$a1, $a5, 0
	beq	$a2, $a1, .LBB2_178
# %bb.177:                              #   in Loop: Header=BB2_176 Depth=3
	ld.d	$a3, $a1, 16
	st.d	$a2, $s6, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB2_178:                              #   in Loop: Header=BB2_176 Depth=3
	ld.d	$a2, $a1, 8
	st.d	$a1, $s0, 0
	beq	$a2, $a1, .LBB2_175
# %bb.179:                              #   in Loop: Header=BB2_176 Depth=3
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s0, 0
	ld.d	$a1, $s6, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $a5, 0
	st.d	$a2, $a2, 8
	b	.LBB2_175
	.p2align	4, , 16
.LBB2_180:                              #   in Loop: Header=BB2_181 Depth=3
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s2, $a3
	st.d	$a1, $s0, 0
	st.w	$a2, $s7, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s0, 0
	ld.d	$fp, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s2, $a1
.LBB2_181:                              # %.preheader1057
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $fp, 8
	beq	$a1, $fp, .LBB2_165
# %bb.182:                              # %.lr.ph1194
                                        #   in Loop: Header=BB2_181 Depth=3
	ld.d	$a2, $a1, 24
	st.d	$a1, $a5, 0
	beq	$a2, $a1, .LBB2_184
# %bb.183:                              #   in Loop: Header=BB2_181 Depth=3
	ld.d	$a3, $a1, 16
	st.d	$a2, $s6, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB2_184:                              #   in Loop: Header=BB2_181 Depth=3
	ld.d	$a2, $a1, 8
	st.d	$a1, $s0, 0
	beq	$a2, $a1, .LBB2_180
# %bb.185:                              #   in Loop: Header=BB2_181 Depth=3
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s0, 0
	ld.d	$a1, $s6, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $a5, 0
	st.d	$a2, $a2, 8
	b	.LBB2_180
	.p2align	4, , 16
.LBB2_186:                              #   in Loop: Header=BB2_168 Depth=2
	ld.hu	$a0, $fp, 44
	andi	$a0, $a0, 512
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_167
# %bb.187:                              #   in Loop: Header=BB2_168 Depth=2
	ld.d	$s1, $a1, 0
	b	.LBB2_167
	.p2align	4, , 16
.LBB2_188:                              #   in Loop: Header=BB2_168 Depth=2
	ld.hu	$a0, $fp, 42
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_319
# %bb.189:                              #   in Loop: Header=BB2_168 Depth=2
	ld.d	$a1, $fp, 8
	ld.d	$s1, $s1, 0
	bne	$a1, $fp, .LBB2_193
.LBB2_190:                              # %._crit_edge1182
                                        #   in Loop: Header=BB2_168 Depth=2
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$a0, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a2, $fp, 24
	st.d	$fp, $a0, 0
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	bne	$a2, $fp, .LBB2_198
# %bb.191:                              # %.preheader1058
                                        #   in Loop: Header=BB2_168 Depth=2
	bne	$a1, $fp, .LBB2_204
	b	.LBB2_165
	.p2align	4, , 16
.LBB2_192:                              #   in Loop: Header=BB2_193 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(DetachGalley)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(KillGalley)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	beq	$a1, $fp, .LBB2_190
.LBB2_193:                              # %.lr.ph1181
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_168 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_194 Depth 4
	ld.d	$s5, $s4, 8
	.p2align	4, , 16
.LBB2_194:                              #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_168 Depth=2
                                        #       Parent Loop BB2_193 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$s5, $s5, 16
	ld.bu	$a0, $s5, 32
	beqz	$a0, .LBB2_194
# %bb.195:                              #   in Loop: Header=BB2_193 Depth=3
	ld.d	$a0, $s5, 104
	beqz	$a0, .LBB2_192
# %bb.196:                              #   in Loop: Header=BB2_193 Depth=3
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $s5, 104
	b	.LBB2_192
	.p2align	4, , 16
.LBB2_197:                              #   in Loop: Header=BB2_198 Depth=3
	ld.bu	$a1, $a2, 32
	addi.d	$a3, $a1, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a2, 33
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a4, $a3
	or	$a1, $a3, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a3, $a1, 3
	ldx.d	$a3, $s2, $a3
	st.d	$a2, $s0, 0
	st.w	$a1, $s7, 0
	st.d	$a3, $a2, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s0, 0
	ld.d	$fp, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s2, $a1
	ld.d	$a2, $fp, 24
	beq	$a2, $fp, .LBB2_202
.LBB2_198:                              # %.lr.ph1185
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a2, 24
	st.d	$a2, $a5, 0
	beq	$a1, $a2, .LBB2_200
# %bb.199:                              #   in Loop: Header=BB2_198 Depth=3
	ld.d	$a3, $a2, 16
	st.d	$a1, $s6, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a2, $a2, 24
	st.d	$a2, $a2, 16
.LBB2_200:                              #   in Loop: Header=BB2_198 Depth=3
	ld.d	$a1, $a2, 8
	st.d	$a2, $s0, 0
	beq	$a1, $a2, .LBB2_197
# %bb.201:                              #   in Loop: Header=BB2_198 Depth=3
	st.d	$a1, $s6, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a1, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $s6, 0
	ld.d	$a3, $a1, 0
	st.d	$a2, $a3, 8
	st.d	$a1, $a1, 0
	ld.d	$a2, $a5, 0
	st.d	$a1, $a1, 8
	b	.LBB2_197
.LBB2_202:                              # %.preheader1058.loopexit
                                        #   in Loop: Header=BB2_168 Depth=2
	ld.d	$a1, $fp, 8
	bne	$a1, $fp, .LBB2_204
	b	.LBB2_165
	.p2align	4, , 16
.LBB2_203:                              #   in Loop: Header=BB2_204 Depth=3
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s2, $a3
	st.d	$a1, $s0, 0
	st.w	$a2, $s7, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s0, 0
	ld.d	$fp, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s2, $a1
	ld.d	$a1, $fp, 8
	beq	$a1, $fp, .LBB2_165
.LBB2_204:                              # %.lr.ph1187
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a1, 24
	st.d	$a1, $a5, 0
	beq	$a2, $a1, .LBB2_206
# %bb.205:                              #   in Loop: Header=BB2_204 Depth=3
	ld.d	$a3, $a1, 16
	st.d	$a2, $s6, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB2_206:                              #   in Loop: Header=BB2_204 Depth=3
	ld.d	$a2, $a1, 8
	st.d	$a1, $s0, 0
	beq	$a2, $a1, .LBB2_203
# %bb.207:                              #   in Loop: Header=BB2_204 Depth=3
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s0, 0
	ld.d	$a1, $s6, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $a5, 0
	st.d	$a2, $a2, 8
	b	.LBB2_203
.LBB2_208:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.w	$a2, $sp, 340
	add.w	$a0, $a1, $a0
	blt	$a2, $a0, .LBB2_153
# %bb.209:                              #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a0, $sp, 344
	bge	$a0, $a1, .LBB2_96
	b	.LBB2_153
.LBB2_210:                              #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a0, $fp, 56
	ld.w	$a1, $sp, 340
	add.w	$a2, $a0, $a3
	blt	$a1, $a2, .LBB2_159
# %bb.211:                              #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $sp, 344
	bge	$a1, $a0, .LBB2_219
	b	.LBB2_159
.LBB2_212:                              # %._crit_edge1201.loopexit
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 18
	beq	$a0, $a1, .LBB2_157
	b	.LBB2_158
.LBB2_213:                              #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 12
.LBB2_214:                              #   in Loop: Header=BB2_7 Depth=1
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 292
	addi.d	$a6, $sp, 272
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB2_266
.LBB2_215:                              #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a0, $fp, 56
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	fld.s	$fs0, $a1, %pc_lo12(.LCPI2_0)
	add.d	$a0, $a0, $a3
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$fp, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 292
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 340
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	addi.d	$a0, $sp, 272
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_217
# %bb.216:                              # %.split591
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a7, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 5
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 292
	addi.d	$a6, $sp, 272
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	b	.LBB2_218
.LBB2_217:                              # %.split
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a2, $a0, %pc_lo12(.L.str.16)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a7, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 4
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 292
	addi.d	$a6, $sp, 272
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
.LBB2_218:                              # %.thread1029
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(InterposeScale)
	jirl	$ra, $ra, 0
	move	$s4, $a0
.LBB2_219:                              #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a0, $s4, 52
	addi.d	$a1, $s4, 60
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	masknez	$a2, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a2
	ld.w	$fp, $a0, 0
	ld.w	$s5, $a1, 0
	addi.d	$a1, $sp, 336
	addi.d	$a3, $sp, 312
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 336
	bge	$a0, $fp, .LBB2_225
.LBB2_220:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.hu	$a0, $a0, 42
	slli.d	$a0, $a0, 51
	bgez	$a0, .LBB2_266
# %bb.221:                              #   in Loop: Header=BB2_7 Depth=1
	add.w	$s1, $s5, $fp
	blez	$s1, .LBB2_266
# %bb.222:                              #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a2, $sp, 336
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(ScaleToConstraint)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 65
	blt	$a1, $a0, .LBB2_266
# %bb.223:                              #   in Loop: Header=BB2_7 Depth=1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI2_0)
	bstrpick.d	$a0, $s1, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$s1, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 292
	move	$a1, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 340
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	addi.d	$a0, $sp, 272
	move	$a1, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a4, $s4, 32
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_228
# %bb.224:                              # %.split593
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a2, $a0, %pc_lo12(.L.str.16)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a7, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 6
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 292
	addi.d	$a6, $sp, 272
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	b	.LBB2_229
.LBB2_225:                              #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a0, $sp, 340
	add.w	$a1, $s5, $fp
	blt	$a0, $a1, .LBB2_220
# %bb.226:                              #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a0, $sp, 344
	blt	$a0, $s5, .LBB2_220
# %bb.227:                              #   in Loop: Header=BB2_7 Depth=1
	st.d	$s5, $sp, 88                    # 8-byte Folded Spill
	b	.LBB2_230
.LBB2_228:                              # %.split595
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a7, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 7
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 292
	addi.d	$a6, $sp, 272
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $zero
.LBB2_229:                              #   in Loop: Header=BB2_7 Depth=1
	st.d	$s5, $sp, 88                    # 8-byte Folded Spill
	move	$a0, $s4
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(InterposeScale)
	jirl	$ra, $ra, 0
	move	$s4, $a0
.LBB2_230:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$s1, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $s4, 2
	ld.w	$a1, $a0, 48
	ld.w	$a2, $a0, 56
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	move	$a0, $s5
	move	$a3, $s1
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $fp
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 336
	addi.d	$a3, $sp, 320
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	move	$a2, $s1
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 0
	.p2align	4, , 16
.LBB2_231:                              #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB2_231
# %bb.232:                              #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a0, $a0, -119
	ori	$a1, $zero, 19
	bltu	$a1, $a0, .LBB2_234
# %bb.233:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a5, $a0, %pc_lo12(.L.str.21)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_234:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$s1, $a0, $fp, 2
	ld.w	$a0, $s1, 48
	addi.d	$s5, $s1, 48
	bltz	$a0, .LBB2_236
# %bb.235:                              #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $s1, 56
	bgez	$a1, .LBB2_237
.LBB2_236:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a5, $a0, %pc_lo12(.L.str.22)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
.LBB2_237:                              #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $sp, 336
	bge	$a1, $a0, .LBB2_245
.LBB2_238:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.hu	$a1, $a1, 42
	slli.d	$a1, $a1, 51
	bgez	$a1, .LBB2_242
# %bb.239:                              #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $s1, 56
	add.w	$a2, $a1, $a0
	blez	$a2, .LBB2_242
# %bb.240:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 128
	ld.d	$a3, $sp, 320
	beq	$a2, $a3, .LBB2_242
# %bb.241:                              #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a2, $sp, 336
	pcaddu18i	$ra, %call36(ScaleToConstraint)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 65
	bge	$a1, $a0, .LBB2_249
.LBB2_242:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 320
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, 128
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s1, 56
	add.w	$a0, $a1, $a0
	blez	$a0, .LBB2_266
# %bb.243:                              #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	fld.s	$fs0, $a1, %pc_lo12(.LCPI2_0)
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$fp, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 292
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 340
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	addi.d	$a0, $sp, 272
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a4, $s4, 32
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_247
# %bb.244:                              #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a2, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 15
	b	.LBB2_248
.LBB2_245:                              #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $s1, 56
	ld.w	$a2, $sp, 340
	add.w	$a3, $a1, $a0
	blt	$a2, $a3, .LBB2_238
# %bb.246:                              #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a2, $sp, 344
	bge	$a2, $a1, .LBB2_253
	b	.LBB2_238
.LBB2_247:                              #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 14
.LBB2_248:                              #   in Loop: Header=BB2_7 Depth=1
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 292
	addi.d	$a6, $sp, 272
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB2_266
.LBB2_249:                              #   in Loop: Header=BB2_7 Depth=1
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 56
	ld.w	$a1, $s5, 0
	ld.w	$a0, $a0, 0
	pcalau12i	$a2, %pc_hi20(.LCPI2_0)
	fld.s	$fs0, $a2, %pc_lo12(.LCPI2_0)
	add.d	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$s5, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 292
	move	$a1, $s5
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 340
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	addi.d	$a0, $sp, 272
	move	$a1, $s5
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a4, $s4, 32
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_251
# %bb.250:                              # %.split600
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a7, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 9
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 292
	addi.d	$a6, $sp, 272
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	b	.LBB2_252
.LBB2_251:                              # %.split598
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a2, $a0, %pc_lo12(.L.str.16)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a7, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 8
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 292
	addi.d	$a6, $sp, 272
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
.LBB2_252:                              # %.thread1041
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(InterposeWideOrHigh)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(InterposeScale)
	jirl	$ra, $ra, 0
.LBB2_253:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 320
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, 128
	addi.d	$a1, $sp, 336
	addi.d	$a3, $sp, 312
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 0
	.p2align	4, , 16
.LBB2_254:                              #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB2_254
# %bb.255:                              #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a0, $a0, -119
	ori	$a1, $zero, 19
	bltu	$a1, $a0, .LBB2_257
# %bb.256:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a5, $a0, %pc_lo12(.L.str.21)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_257:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$s1, $a0, $fp, 2
	ld.w	$a0, $s1, 48
	addi.d	$s5, $s1, 48
	bltz	$a0, .LBB2_259
# %bb.258:                              #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $s1, 56
	bgez	$a1, .LBB2_260
.LBB2_259:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a5, $a0, %pc_lo12(.L.str.23)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
.LBB2_260:                              #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $sp, 336
	blt	$a1, $a0, .LBB2_263
# %bb.261:                              #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $s1, 56
	ld.w	$a2, $sp, 340
	add.w	$a3, $a1, $a0
	blt	$a2, $a3, .LBB2_263
# %bb.262:                              #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a2, $sp, 344
	bge	$a2, $a1, .LBB2_373
.LBB2_263:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.hu	$a1, $a1, 42
	slli.d	$a1, $a1, 51
	bgez	$a1, .LBB2_266
# %bb.264:                              #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $s1, 56
	add.w	$a2, $a1, $a0
	blez	$a2, .LBB2_266
# %bb.265:                              #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a2, $sp, 336
	pcaddu18i	$ra, %call36(ScaleToConstraint)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 65
	bge	$a0, $a1, .LBB2_369
	.p2align	4, , 16
.LBB2_266:                              # %.critedge973
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(LeaveErrorBlock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360
	beqz	$a0, .LBB2_268
# %bb.267:                              #   in Loop: Header=BB2_7 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 360
.LBB2_268:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.bu	$a0, $fp, 40
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	ori	$a1, $zero, 133
	bne	$a0, $a1, .LBB2_273
# %bb.269:                              #   in Loop: Header=BB2_7 Depth=1
	ld.hu	$a0, $fp, 42
	andi	$a0, $a0, 2
	bnez	$a0, .LBB2_273
# %bb.270:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $s3, 24
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a3, $a0, 8
	st.d	$a0, $a1, 0
	beq	$a3, $a0, .LBB2_272
# %bb.271:                              #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	st.d	$a3, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a3, $a1, 0
	ld.d	$a0, $a4, 0
	ld.d	$a4, $a3, 0
	st.d	$a0, $a4, 8
	st.d	$a3, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a3, $a3, 8
.LBB2_272:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a3, $a2, %got_pc_lo12(zz_res)
	ld.d	$a2, $a5, 24
	st.d	$a0, $a3, 0
	st.d	$a2, $a1, 0
	bnez	$a2, .LBB2_276
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_273:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $s3, 24
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a3, $a0, 8
	st.d	$a0, $a1, 0
	beq	$a3, $a0, .LBB2_275
# %bb.274:                              #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	st.d	$a3, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a3, $a1, 0
	ld.d	$a0, $a4, 0
	ld.d	$a4, $a3, 0
	st.d	$a0, $a4, 8
	st.d	$a3, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a3, $a3, 8
.LBB2_275:                              #   in Loop: Header=BB2_7 Depth=1
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a3, $a2, %got_pc_lo12(zz_res)
	ld.d	$a2, $a5, 24
	ld.d	$a2, $a2, 8
	st.d	$a0, $a3, 0
	st.d	$a2, $a1, 0
	beqz	$a2, .LBB2_6
.LBB2_276:                              #   in Loop: Header=BB2_7 Depth=1
	beqz	$a0, .LBB2_6
# %bb.277:                              # %.sink.split
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a1, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	ld.d	$a2, $a1, 0
	ld.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a0, $a4, 8
	st.d	$a3, $a2, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $a3, 8
	b	.LBB2_6
.LBB2_278:                              # %._crit_edge1171
	ld.d	$a0, $sp, 360
	beqz	$a0, .LBB2_280
# %bb.279:
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 360
.LBB2_280:
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(LeaveErrorBlock)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $fp, 8
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	beq	$fp, $a0, .LBB2_294
# %bb.281:                              # %.preheader1046.preheader
	ori	$s1, $zero, 7
	ori	$s4, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$s5, $a0, %got_pc_lo12(xx_tmp)
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	b	.LBB2_283
	.p2align	4, , 16
.LBB2_282:                              # %.loopexit
                                        #   in Loop: Header=BB2_283 Depth=1
	ld.d	$fp, $fp, 8
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	beq	$fp, $a0, .LBB2_293
.LBB2_283:                              # %.preheader1046
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_284 Depth 2
	move	$a0, $fp
	.p2align	4, , 16
.LBB2_284:                              #   Parent Loop BB2_283 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB2_284
# %bb.285:                              #   in Loop: Header=BB2_283 Depth=1
	bltu	$s1, $a1, .LBB2_282
# %bb.286:                              #   in Loop: Header=BB2_283 Depth=1
	sll.d	$a0, $s4, $a1
	andi	$a0, $a0, 246
	beqz	$a0, .LBB2_282
# %bb.287:                              #   in Loop: Header=BB2_283 Depth=1
	ld.d	$fp, $fp, 0
	ld.d	$a0, $fp, 8
	ld.d	$a1, $a0, 24
	st.d	$a0, $a5, 0
	beq	$a1, $a0, .LBB2_292
# %bb.288:                              #   in Loop: Header=BB2_283 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	ld.d	$a2, $a0, 8
	st.d	$a1, $s5, 0
	st.d	$a0, $s0, 0
	beq	$a2, $a0, .LBB2_290
.LBB2_289:                              #   in Loop: Header=BB2_283 Depth=1
	st.d	$a2, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a1, 8
.LBB2_290:                              #   in Loop: Header=BB2_283 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s2, $a2
	st.d	$a0, $s0, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s0, 0
	ld.d	$a0, $s5, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s2, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB2_282
# %bb.291:                              #   in Loop: Header=BB2_283 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	b	.LBB2_282
	.p2align	4, , 16
.LBB2_292:                              #   in Loop: Header=BB2_283 Depth=1
	move	$a1, $zero
	ld.d	$a2, $a0, 8
	st.d	$a1, $s5, 0
	st.d	$a0, $s0, 0
	bne	$a2, $a0, .LBB2_289
	b	.LBB2_290
.LBB2_293:                              # %._crit_edge1240.loopexit
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 8
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 224                   # 8-byte Folded Reload
	bne	$fp, $a0, .LBB2_295
	b	.LBB2_299
.LBB2_294:
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 224                   # 8-byte Folded Reload
	beq	$fp, $a0, .LBB2_299
.LBB2_295:
	ld.bu	$a0, $fp, 32
	ld.d	$s1, $s4, 24
	beqz	$a0, .LBB2_297
# %bb.296:
	ld.d	$a4, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a5, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
.LBB2_297:
	st.d	$fp, $s6, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a1, $s0, 0
	ld.d	$a0, $a1, 0
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a0, $fp, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s6, 0
	st.d	$a0, $a3, 8
	st.d	$fp, $s6, 0
	st.d	$s1, $s0, 0
	beqz	$s1, .LBB2_299
# %bb.298:
	ld.d	$a0, $s1, 0
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a0, $fp, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s6, 0
	st.d	$a0, $a3, 8
.LBB2_299:
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a0, 8
	st.d	$a0, $a5, 0
	st.d	$a0, $s0, 0
	beq	$a1, $a0, .LBB2_317
# %bb.300:
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a1, 8
	st.d	$a0, $s6, 0
	st.d	$s4, $s0, 0
	bnez	$a0, .LBB2_318
# %bb.301:
	ld.bu	$a0, $s3, 32
	ori	$a1, $zero, 120
	beq	$a0, $a1, .LBB2_303
.LBB2_302:
	ld.d	$a4, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a5, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
.LBB2_303:
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$a0, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a1, $s3, 24
	st.d	$s3, $a0, 0
	bne	$a1, $s3, .LBB2_305
	b	.LBB2_310
	.p2align	4, , 16
.LBB2_304:                              #   in Loop: Header=BB2_305 Depth=1
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s2, $a3
	st.d	$a1, $s0, 0
	st.w	$a2, $s7, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s0, 0
	ld.d	$s3, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s2, $a1
	ld.d	$a1, $s3, 24
	beq	$a1, $s3, .LBB2_310
.LBB2_305:                              # %.lr.ph1243
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 24
	st.d	$a1, $a5, 0
	beq	$a2, $a1, .LBB2_307
# %bb.306:                              #   in Loop: Header=BB2_305 Depth=1
	ld.d	$a3, $a1, 16
	st.d	$a2, $s6, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB2_307:                              #   in Loop: Header=BB2_305 Depth=1
	ld.d	$a2, $a1, 8
	st.d	$a1, $s0, 0
	beq	$a2, $a1, .LBB2_304
# %bb.308:                              #   in Loop: Header=BB2_305 Depth=1
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s0, 0
	ld.d	$a1, $s6, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $a5, 0
	st.d	$a2, $a2, 8
	b	.LBB2_304
	.p2align	4, , 16
.LBB2_309:                              #   in Loop: Header=BB2_310 Depth=1
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s2, $a3
	st.d	$a1, $s0, 0
	st.w	$a2, $s7, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s0, 0
	ld.d	$s3, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s2, $a1
.LBB2_310:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s3, 8
	beq	$a1, $s3, .LBB2_315
# %bb.311:                              # %.lr.ph1245
                                        #   in Loop: Header=BB2_310 Depth=1
	ld.d	$a2, $a1, 24
	st.d	$a1, $a5, 0
	beq	$a2, $a1, .LBB2_313
# %bb.312:                              #   in Loop: Header=BB2_310 Depth=1
	ld.d	$a3, $a1, 16
	st.d	$a2, $s6, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB2_313:                              #   in Loop: Header=BB2_310 Depth=1
	ld.d	$a2, $a1, 8
	st.d	$a1, $s0, 0
	beq	$a2, $a1, .LBB2_309
# %bb.314:                              #   in Loop: Header=BB2_310 Depth=1
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s0, 0
	ld.d	$a1, $s6, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $a5, 0
	st.d	$a2, $a2, 8
	b	.LBB2_309
.LBB2_315:                              # %._crit_edge1246
	ld.bu	$a0, $s3, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s3, 33
	add.d	$a0, $s5, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s2, $a1
	st.d	$s3, $s0, 0
	st.w	$a0, $s7, 0
	st.d	$a1, $s3, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $sp, 376
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a2, $a0, 0
	ori	$a0, $zero, 4
.LBB2_316:
	fld.d	$fs0, $sp, 384                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 480
	ret
.LBB2_317:                              # %.thread1044
	st.d	$a0, $s6, 0
	st.d	$s4, $s0, 0
.LBB2_318:
	ld.d	$a1, $s4, 0
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s6, 0
	st.d	$a0, $a3, 8
	ld.bu	$a0, $s3, 32
	ori	$a1, $zero, 120
	bne	$a0, $a1, .LBB2_302
	b	.LBB2_303
.LBB2_319:
	move	$s4, $fp
.LBB2_320:                              # %.loopexit1068
	ld.h	$a0, $s4, 42
	ori	$a0, $a0, 32
	st.h	$a0, $s4, 42
	move	$a0, $zero
	pcaddu18i	$ra, %call36(LeaveErrorBlock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360
	beqz	$a0, .LBB2_322
# %bb.321:
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 360
.LBB2_322:
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 24
	ld.d	$a1, $a0, 8
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	st.d	$a0, $s0, 0
	beq	$a1, $a0, .LBB2_324
# %bb.323:
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a3, 0
	st.d	$a1, $a1, 8
.LBB2_324:
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 24
	st.d	$a0, $s6, 0
	st.d	$a1, $s0, 0
	beqz	$a1, .LBB2_327
# %bb.325:
	beqz	$a0, .LBB2_327
# %bb.326:
	ld.d	$a2, $a1, 0
	st.d	$a2, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s6, 0
	st.d	$a0, $a3, 8
.LBB2_327:
	ld.d	$a0, $sp, 376
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bnez	$a1, .LBB2_329
# %bb.328:
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	b	.LBB2_332
.LBB2_329:
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB2_331
# %bb.330:
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB2_331:
	move	$a0, $zero
.LBB2_332:
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	st.d	$s4, $fp, 0
	ori	$a0, $zero, 3
	b	.LBB2_316
.LBB2_333:                              # %.preheader1055.preheader
	ori	$a0, $zero, 9
	ori	$a1, $zero, 90
	move	$a2, $fp
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	b	.LBB2_335
	.p2align	4, , 16
.LBB2_334:                              # %.loopexit1052
                                        #   in Loop: Header=BB2_335 Depth=1
	addi.d	$a4, $a4, -9
	bgeu	$a1, $a4, .LBB2_358
.LBB2_335:                              # %.preheader1055
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_337 Depth 2
                                        #     Child Loop BB2_340 Depth 2
	ld.d	$a2, $a2, 8
	beq	$a2, $fp, .LBB2_359
# %bb.336:                              # %.preheader1053.preheader
                                        #   in Loop: Header=BB2_335 Depth=1
	move	$a3, $a2
	.p2align	4, , 16
.LBB2_337:                              # %.preheader1053
                                        #   Parent Loop BB2_335 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a3, 16
	ld.bu	$a4, $a3, 32
	beqz	$a4, .LBB2_337
# %bb.338:                              # %.preheader1053
                                        #   in Loop: Header=BB2_335 Depth=1
	bne	$a4, $a0, .LBB2_334
# %bb.339:                              #   in Loop: Header=BB2_335 Depth=1
	ldx.d	$a3, $a3, $a5
	.p2align	4, , 16
.LBB2_340:                              #   Parent Loop BB2_335 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a3, 16
	ld.bu	$a4, $a3, 32
	beqz	$a4, .LBB2_340
	b	.LBB2_334
.LBB2_341:
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$a0, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a4, $s3, 24
	st.d	$s3, $a0, 0
	beq	$a4, $s3, .LBB2_348
# %bb.342:
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a1, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	b	.LBB2_344
	.p2align	4, , 16
.LBB2_343:                              #   in Loop: Header=BB2_344 Depth=1
	ld.bu	$a5, $a4, 32
	addi.d	$a6, $a5, -11
	sltui	$a6, $a6, 2
	addi.d	$a7, $a4, 33
	add.d	$a5, $s0, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $a7, $a6
	or	$a5, $a6, $a5
	ld.bu	$a5, $a5, 0
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $s2, $a6
	st.d	$a4, $a2, 0
	st.w	$a5, $s7, 0
	st.d	$a6, $a4, 0
	ld.w	$a4, $s7, 0
	ld.d	$a5, $a2, 0
	ld.d	$s3, $a0, 0
	slli.d	$a4, $a4, 3
	stx.d	$a5, $s2, $a4
	ld.d	$a4, $s3, 24
	beq	$a4, $s3, .LBB2_348
.LBB2_344:                              # %.lr.ph1204
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 24
	st.d	$a4, $a1, 0
	beq	$a5, $a4, .LBB2_346
# %bb.345:                              #   in Loop: Header=BB2_344 Depth=1
	ld.d	$a6, $a4, 16
	st.d	$a5, $a3, 0
	st.d	$a6, $a5, 16
	st.d	$a5, $a6, 24
	st.d	$a4, $a4, 24
	st.d	$a4, $a4, 16
.LBB2_346:                              #   in Loop: Header=BB2_344 Depth=1
	ld.d	$a5, $a4, 8
	st.d	$a4, $a2, 0
	beq	$a5, $a4, .LBB2_343
# %bb.347:                              #   in Loop: Header=BB2_344 Depth=1
	st.d	$a5, $a3, 0
	ld.d	$a4, $a4, 0
	st.d	$a4, $a5, 0
	ld.d	$a5, $a2, 0
	ld.d	$a4, $a3, 0
	ld.d	$a6, $a5, 0
	st.d	$a4, $a6, 8
	st.d	$a5, $a5, 0
	ld.d	$a4, $a1, 0
	st.d	$a5, $a5, 8
	b	.LBB2_343
.LBB2_348:                              # %.preheader1056
	ld.d	$a4, $s3, 8
	beq	$a4, $s3, .LBB2_355
# %bb.349:
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a1, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	b	.LBB2_351
	.p2align	4, , 16
.LBB2_350:                              #   in Loop: Header=BB2_351 Depth=1
	ld.bu	$a5, $a4, 32
	addi.d	$a6, $a5, -11
	sltui	$a6, $a6, 2
	addi.d	$a7, $a4, 33
	add.d	$a5, $s0, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $a7, $a6
	or	$a5, $a6, $a5
	ld.bu	$a5, $a5, 0
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $s2, $a6
	st.d	$a4, $a2, 0
	st.w	$a5, $s7, 0
	st.d	$a6, $a4, 0
	ld.w	$a4, $s7, 0
	ld.d	$a5, $a2, 0
	ld.d	$s3, $a0, 0
	slli.d	$a4, $a4, 3
	stx.d	$a5, $s2, $a4
	ld.d	$a4, $s3, 8
	beq	$a4, $s3, .LBB2_355
.LBB2_351:                              # %.lr.ph1206
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 24
	st.d	$a4, $a1, 0
	beq	$a5, $a4, .LBB2_353
# %bb.352:                              #   in Loop: Header=BB2_351 Depth=1
	ld.d	$a6, $a4, 16
	st.d	$a5, $a3, 0
	st.d	$a6, $a5, 16
	st.d	$a5, $a6, 24
	st.d	$a4, $a4, 24
	st.d	$a4, $a4, 16
.LBB2_353:                              #   in Loop: Header=BB2_351 Depth=1
	ld.d	$a5, $a4, 8
	st.d	$a4, $a2, 0
	beq	$a5, $a4, .LBB2_350
# %bb.354:                              #   in Loop: Header=BB2_351 Depth=1
	st.d	$a5, $a3, 0
	ld.d	$a4, $a4, 0
	st.d	$a4, $a5, 0
	ld.d	$a5, $a2, 0
	ld.d	$a4, $a3, 0
	ld.d	$a6, $a5, 0
	st.d	$a4, $a6, 8
	st.d	$a5, $a5, 0
	ld.d	$a4, $a1, 0
	st.d	$a5, $a5, 8
	b	.LBB2_350
.LBB2_355:                              # %._crit_edge1207
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$fp, $a0, %got_pc_lo12(zz_hold)
	ld.bu	$a0, $s3, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s3, 33
	add.d	$a0, $s0, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s2, $a1
	st.d	$s3, $fp, 0
	st.w	$a0, $s7, 0
	st.d	$a1, $s3, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $fp, 0
	ld.bu	$a2, $s0, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a0, $s2, $a1
	st.w	$a2, $s7, 0
	beqz	$a0, .LBB2_364
# %bb.356:
	st.d	$a0, $fp, 0
	ld.d	$a2, $a0, 0
	stx.d	$a2, $s2, $a1
	b	.LBB2_365
.LBB2_357:
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 2
	b	.LBB2_316
.LBB2_358:
	ld.d	$a0, $fp, 80
	addi.d	$fp, $a3, 32
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 1
	ori	$a3, $zero, 2
	move	$a4, $fp
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_359:                              # %.critedge
	ld.d	$a0, $sp, 376
	beqz	$a0, .LBB2_361
# %bb.360:
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 376
.LBB2_361:
	ld.d	$a0, $sp, 360
	beqz	$a0, .LBB2_363
# %bb.362:
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 360
.LBB2_363:
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(KillGalley)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$zero, $a1, 0
	b	.LBB2_316
.LBB2_364:
	ld.d	$a1, $s1, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB2_365:
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
	st.d	$s4, $fp, 0
	ld.d	$a4, $s4, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a4, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $a3, 0
	ld.d	$a4, $fp, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a1, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a4, $a6, 8
	st.d	$a0, $a3, 0
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	st.d	$a4, $fp, 0
	beqz	$a4, .LBB2_368
# %bb.366:
	beqz	$a0, .LBB2_368
# %bb.367:
	ld.d	$a2, $a4, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $a4, 16
	st.d	$a4, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB2_368:
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 1
	b	.LBB2_316
.LBB2_369:
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	addi.d	$a0, $s1, 56
	ld.w	$a1, $s5, 0
	ld.w	$a0, $a0, 0
	pcalau12i	$a2, %pc_hi20(.LCPI2_0)
	fld.s	$fs0, $a2, %pc_lo12(.LCPI2_0)
	add.d	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$s5, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 292
	move	$a1, $s5
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 340
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	addi.d	$a0, $sp, 272
	move	$a1, $s5
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a4, $s4, 32
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_371
# %bb.370:                              # %.split604
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a2, $a0, %pc_lo12(.L.str.16)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a7, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 10
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 292
	addi.d	$a6, $sp, 272
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	b	.LBB2_372
.LBB2_371:                              # %.split606
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a7, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 11
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 292
	addi.d	$a6, $sp, 272
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$s5, $zero
.LBB2_372:
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(InterposeWideOrHigh)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(InterposeScale)
	jirl	$ra, $ra, 0
.LBB2_373:                              # %.loopexit1070
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.hu	$a0, $a0, 42
	andi	$a1, $a0, 8
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	bnez	$a1, .LBB2_379
# %bb.374:
	andi	$a0, $a0, 16
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_378
# %bb.375:
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 0
.LBB2_376:                              # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB2_376
# %bb.377:
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $fp, 2
	ld.w	$a1, $a0, 48
	ld.w	$a2, $a0, 56
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
.LBB2_378:                              # %.sink.split1777
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a0, $a3, $fp, 2
	ld.w	$a1, $a0, 48
	ld.w	$a2, $a0, 56
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
.LBB2_379:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(LeaveErrorBlock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a0, 8
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a0, $s0, 0
	beq	$a1, $a0, .LBB2_381
# %bb.380:
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a1, 8
.LBB2_381:
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 368
	st.d	$a0, $s6, 0
	st.d	$a1, $s0, 0
	beqz	$a1, .LBB2_384
# %bb.382:
	beqz	$a0, .LBB2_384
# %bb.383:
	ld.d	$a2, $a1, 0
	st.d	$a2, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s6, 0
	st.d	$a0, $a3, 8
.LBB2_384:
	ld.bu	$a0, $s3, 32
	ori	$a1, $zero, 120
	beq	$a0, $a1, .LBB2_386
# %bb.385:
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a5, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
.LBB2_386:
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$fp, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a0, $s3, 24
	st.d	$s3, $fp, 0
	bne	$a0, $s3, .LBB2_388
	b	.LBB2_393
.LBB2_387:                              #   in Loop: Header=BB2_388 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s2, $a2
	st.d	$a0, $s0, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	ld.d	$s3, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
	ld.d	$a0, $s3, 24
	beq	$a0, $s3, .LBB2_393
.LBB2_388:                              # %.lr.ph1211
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a0, $a4, 0
	beq	$a1, $a0, .LBB2_390
# %bb.389:                              #   in Loop: Header=BB2_388 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB2_390:                              #   in Loop: Header=BB2_388 Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a0, $s0, 0
	beq	$a1, $a0, .LBB2_387
# %bb.391:                              #   in Loop: Header=BB2_388 Depth=1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a1, 8
	b	.LBB2_387
.LBB2_392:                              #   in Loop: Header=BB2_393 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s2, $a2
	st.d	$a0, $s0, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	ld.d	$s3, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
.LBB2_393:                              # %.preheader1051
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 8
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	beq	$a0, $s3, .LBB2_398
# %bb.394:                              # %.lr.ph1213
                                        #   in Loop: Header=BB2_393 Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a0, $a4, 0
	beq	$a1, $a0, .LBB2_396
# %bb.395:                              #   in Loop: Header=BB2_393 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB2_396:                              #   in Loop: Header=BB2_393 Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a0, $s0, 0
	beq	$a1, $a0, .LBB2_392
# %bb.397:                              #   in Loop: Header=BB2_393 Depth=1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a1, 8
	b	.LBB2_392
.LBB2_398:                              # %._crit_edge1214
	ld.bu	$a0, $s3, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s3, 33
	add.d	$a0, $s5, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s2, $a1
	st.d	$s3, $s0, 0
	st.w	$a0, $s7, 0
	st.d	$a1, $s3, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
	ld.hu	$a0, $a3, 42
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	bnez	$a1, .LBB2_405
# %bb.399:
	andi	$a0, $a0, 8
	bnez	$a0, .LBB2_407
# %bb.400:
	ori	$a1, $zero, 17
	move	$a0, $a3
	move	$a2, $s4
	move	$a3, $s4
	pcaddu18i	$ra, %call36(Interpose)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a5, 24
.LBB2_401:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	st.d	$a0, $sp, 312
	beqz	$a1, .LBB2_401
# %bb.402:
	ori	$a2, $zero, 17
	beq	$a1, $a2, .LBB2_404
# %bb.403:
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a5, $a0, %pc_lo12(.L.str.28)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 312
.LBB2_404:                              # %.loopexit1050
	ld.hu	$a2, $a5, 64
	ld.h	$a1, $a0, 64
	bstrpick.d	$a2, $a2, 7, 7
	bstrins.d	$a1, $a2, 7, 7
	st.h	$a1, $a0, 64
	ld.hu	$a2, $a5, 64
	bstrpick.d	$a2, $a2, 8, 8
	move	$a3, $a1
	bstrins.d	$a3, $a2, 8, 8
	st.h	$a3, $a0, 64
	ld.hu	$a2, $a5, 64
	bstrpick.d	$a2, $a2, 9, 9
	bstrins.d	$a3, $a2, 9, 9
	st.h	$a3, $a0, 64
	ld.hu	$a2, $a5, 64
	bstrpick.d	$a2, $a2, 12, 10
	bstrins.d	$a3, $a2, 12, 10
	st.h	$a3, $a0, 64
	ld.hu	$a2, $a5, 64
	srli.d	$a2, $a2, 13
	bstrins.d	$a3, $a2, 63, 13
	st.h	$a3, $a0, 64
	ld.h	$a2, $a5, 66
	st.h	$a2, $a0, 66
	ld.bu	$a2, $a5, 68
	ld.b	$a3, $a0, 68
	andi	$a2, $a2, 3
	bstrins.d	$a3, $a2, 1, 0
	st.b	$a3, $a0, 68
	ld.bu	$a2, $a5, 68
	bstrpick.d	$a2, $a2, 3, 2
	bstrins.d	$a3, $a2, 3, 2
	st.b	$a3, $a0, 68
	ld.bu	$a2, $a5, 68
	andi	$a3, $a3, 143
	srli.d	$a2, $a2, 4
	bstrins.d	$a3, $a2, 6, 4
	st.b	$a3, $a0, 68
	ld.bu	$a2, $a5, 64
	bstrpick.d	$a2, $a2, 3, 3
	bstrins.d	$a1, $a2, 3, 3
	st.b	$a1, $a0, 64
	ld.hu	$a2, $a5, 68
	ld.h	$a3, $a0, 68
	bstrpick.d	$a2, $a2, 7, 7
	bstrins.d	$a3, $a2, 7, 7
	st.h	$a3, $a0, 68
	ld.hu	$a2, $a5, 68
	bstrpick.d	$a2, $a2, 8, 8
	bstrins.d	$a3, $a2, 8, 8
	st.h	$a3, $a0, 68
	ld.hu	$a2, $a5, 68
	bstrpick.d	$a2, $a2, 9, 9
	bstrins.d	$a3, $a2, 9, 9
	st.h	$a3, $a0, 68
	ld.hu	$a2, $a5, 68
	bstrpick.d	$a2, $a2, 12, 10
	bstrins.d	$a3, $a2, 12, 10
	st.h	$a3, $a0, 68
	ld.hu	$a2, $a5, 68
	srli.d	$a2, $a2, 13
	bstrins.d	$a3, $a2, 63, 13
	st.h	$a3, $a0, 68
	ld.h	$a2, $a5, 70
	st.h	$a2, $a0, 70
	ld.wu	$a2, $a5, 76
	ld.w	$a3, $a0, 76
	andi	$a2, $a2, 4095
	bstrins.d	$a3, $a2, 11, 0
	st.w	$a3, $a0, 76
	ld.wu	$a2, $a5, 76
	bstrpick.d	$a2, $a2, 21, 12
	bstrins.d	$a3, $a2, 21, 12
	st.w	$a3, $a0, 76
	ld.wu	$a2, $a5, 76
	bstrpick.d	$a2, $a2, 23, 22
	bstrins.d	$a3, $a2, 23, 22
	st.w	$a3, $a0, 76
	ld.wu	$a2, $a5, 76
	bstrpick.d	$a2, $a2, 29, 24
	bstrins.d	$a3, $a2, 29, 24
	st.w	$a3, $a0, 76
	ld.w	$a2, $a5, 76
	srli.d	$a2, $a2, 31
	bstrins.d	$a3, $a2, 63, 31
	st.w	$a3, $a0, 76
	ld.wu	$a2, $a5, 76
	lu12i.w	$a4, -262145
	ori	$a4, $a4, 4095
	lu32i.d	$a4, 0
	and	$a3, $a3, $a4
	srli.d	$a2, $a2, 30
	bstrins.d	$a3, $a2, 30, 30
	st.w	$a3, $a0, 76
	ld.bu	$a2, $a5, 64
	srli.d	$a1, $a1, 1
	bstrins.d	$a2, $a1, 63, 1
	st.b	$a2, $a0, 64
	ld.bu	$a1, $a5, 64
	bstrpick.d	$a1, $a1, 1, 1
	bstrins.d	$a2, $a1, 1, 1
	st.b	$a2, $a0, 64
	ld.bu	$a1, $a5, 64
	bstrpick.d	$a3, $a1, 2, 2
	bstrins.d	$a2, $a3, 2, 2
	st.b	$a2, $a0, 64
	ld.bu	$a3, $a5, 64
	andi	$a2, $a2, 143
	srli.d	$a3, $a3, 4
	bstrins.d	$a2, $a3, 6, 4
	st.b	$a2, $a0, 64
	ld.h	$a2, $a5, 72
	st.h	$a2, $a0, 72
	ld.h	$a2, $a5, 74
	ld.hu	$a3, $a0, 42
	st.h	$a2, $a0, 74
	lu12i.w	$a2, 15
	ori	$a2, $a2, 2047
	and	$a2, $a3, $a2
	srli.d	$a1, $a1, 2
	bstrins.d	$a2, $a1, 11, 11
	st.h	$a2, $a0, 42
	b	.LBB2_407
.LBB2_405:
	andi	$a0, $a0, 16
	bnez	$a0, .LBB2_407
# %bb.406:
	ori	$a1, $zero, 19
	move	$a0, $a3
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$a3, $s4
	pcaddu18i	$ra, %call36(Interpose)
	jirl	$ra, $ra, 0
.LBB2_407:
	ld.d	$a1, $s8, 8
	ld.d	$a2, $sp, 368
	ori	$a3, $zero, 1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Promote)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.hu	$a0, $a0, 42
	andi	$a0, $a0, 24
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_411
# %bb.408:
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
.LBB2_409:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a2, 16
	ld.bu	$a0, $a2, 32
	beqz	$a0, .LBB2_409
# %bb.410:
	ori	$a1, $zero, 19
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	move	$a3, $a2
	pcaddu18i	$ra, %call36(Interpose)
	jirl	$ra, $ra, 0
.LBB2_411:
	ori	$a3, $zero, 1
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	move	$a0, $s3
	move	$a1, $s3
	move	$a2, $s1
	pcaddu18i	$ra, %call36(Promote)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 24
	st.d	$s3, $fp, 0
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	bne	$a0, $s3, .LBB2_413
	b	.LBB2_418
.LBB2_412:                              #   in Loop: Header=BB2_413 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s2, $a2
	st.d	$a0, $s0, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	ld.d	$s3, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
	ld.d	$a0, $s3, 24
	beq	$a0, $s3, .LBB2_418
.LBB2_413:                              # %.lr.ph1218
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a0, $a4, 0
	beq	$a1, $a0, .LBB2_415
# %bb.414:                              #   in Loop: Header=BB2_413 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB2_415:                              #   in Loop: Header=BB2_413 Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a0, $s0, 0
	beq	$a1, $a0, .LBB2_412
# %bb.416:                              #   in Loop: Header=BB2_413 Depth=1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a1, 8
	b	.LBB2_412
.LBB2_417:                              #   in Loop: Header=BB2_418 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s2, $a2
	st.d	$a0, $s0, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	ld.d	$s3, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
.LBB2_418:                              # %.preheader1049
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 8
	beq	$a0, $s3, .LBB2_423
# %bb.419:                              # %.lr.ph1220
                                        #   in Loop: Header=BB2_418 Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a0, $a4, 0
	beq	$a1, $a0, .LBB2_421
# %bb.420:                              #   in Loop: Header=BB2_418 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB2_421:                              #   in Loop: Header=BB2_418 Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a0, $s0, 0
	beq	$a1, $a0, .LBB2_417
# %bb.422:                              #   in Loop: Header=BB2_418 Depth=1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a1, 8
	b	.LBB2_417
.LBB2_423:                              # %._crit_edge1221
	ld.bu	$a0, $s3, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s3, 33
	add.d	$a0, $s5, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s2, $a1
	st.d	$s3, $s0, 0
	st.w	$a0, $s7, 0
	st.d	$a1, $s3, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
	ld.d	$a0, $s1, 8
	beq	$a0, $s1, .LBB2_425
# %bb.424:
	ld.d	$a4, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a5, $a0, %pc_lo12(.L.str.29)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
.LBB2_425:
	ld.hu	$a0, $s1, 42
	andi	$a0, $a0, 32
	beqz	$a0, .LBB2_427
# %bb.426:
	ld.d	$a0, $sp, 368
	ld.h	$a1, $a0, 42
	ori	$a1, $a1, 32
	st.h	$a1, $a0, 42
.LBB2_427:
	ld.d	$a0, $s1, 24
	st.d	$s1, $fp, 0
	bne	$a0, $s1, .LBB2_429
	b	.LBB2_434
.LBB2_428:                              #   in Loop: Header=BB2_429 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s2, $a2
	st.d	$a0, $s0, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	ld.d	$s1, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
	ld.d	$a0, $s1, 24
	beq	$a0, $s1, .LBB2_434
.LBB2_429:                              # %.lr.ph1225
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a0, $a4, 0
	beq	$a1, $a0, .LBB2_431
# %bb.430:                              #   in Loop: Header=BB2_429 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB2_431:                              #   in Loop: Header=BB2_429 Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a0, $s0, 0
	beq	$a1, $a0, .LBB2_428
# %bb.432:                              #   in Loop: Header=BB2_429 Depth=1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a1, 8
	b	.LBB2_428
.LBB2_433:                              #   in Loop: Header=BB2_434 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s2, $a2
	st.d	$a0, $s0, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	ld.d	$s1, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
.LBB2_434:                              # %.preheader1048
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 8
	beq	$a0, $s1, .LBB2_439
# %bb.435:                              # %.lr.ph1227
                                        #   in Loop: Header=BB2_434 Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a0, $a4, 0
	beq	$a1, $a0, .LBB2_437
# %bb.436:                              #   in Loop: Header=BB2_434 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB2_437:                              #   in Loop: Header=BB2_434 Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a0, $s0, 0
	beq	$a1, $a0, .LBB2_433
# %bb.438:                              #   in Loop: Header=BB2_434 Depth=1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a1, 8
	b	.LBB2_433
.LBB2_439:                              # %._crit_edge1228
	ld.bu	$a0, $s1, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s1, 33
	add.d	$a0, $s5, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s2, $a1
	st.d	$s1, $s0, 0
	st.w	$a0, $s7, 0
	st.d	$a1, $s1, 0
	ld.d	$a0, $s0, 0
	ld.w	$a1, $s7, 0
	ld.d	$s3, $sp, 360
	ld.d	$s1, $sp, 376
	slli.d	$a1, $a1, 3
	stx.d	$a0, $s2, $a1
	beqz	$s3, .LBB2_458
# %bb.440:
	beqz	$s1, .LBB2_459
# %bb.441:
	ld.d	$s4, $s1, 8
	beq	$s4, $s1, .LBB2_445
# %bb.442:
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB2_444
# %bb.443:
	ld.d	$a4, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a5, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
.LBB2_444:
	st.d	$s4, $s6, 0
	st.d	$s1, $s0, 0
	ld.d	$a0, $s1, 0
	st.d	$a0, $a5, 0
	ld.d	$a0, $s4, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s6, 0
	st.d	$a0, $a3, 8
	st.d	$s4, $s6, 0
	st.d	$s3, $s0, 0
	ld.d	$a0, $s3, 0
	st.d	$a0, $a5, 0
	ld.d	$a0, $s4, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s6, 0
	ld.d	$s1, $sp, 376
	st.d	$a0, $a3, 8
.LBB2_445:
	ld.d	$a0, $s1, 24
	st.d	$s1, $fp, 0
	bne	$a0, $s1, .LBB2_447
	b	.LBB2_452
.LBB2_446:                              #   in Loop: Header=BB2_447 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s2, $a2
	st.d	$a0, $s0, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	ld.d	$s1, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
	ld.d	$a0, $s1, 24
	beq	$a0, $s1, .LBB2_452
.LBB2_447:                              # %.lr.ph1232
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a0, $a4, 0
	beq	$a1, $a0, .LBB2_449
# %bb.448:                              #   in Loop: Header=BB2_447 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB2_449:                              #   in Loop: Header=BB2_447 Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a0, $s0, 0
	beq	$a1, $a0, .LBB2_446
# %bb.450:                              #   in Loop: Header=BB2_447 Depth=1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a1, 8
	b	.LBB2_446
.LBB2_451:                              #   in Loop: Header=BB2_452 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s2, $a2
	st.d	$a0, $s0, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	ld.d	$s1, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
.LBB2_452:                              # %.preheader1047
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 8
	beq	$a0, $s1, .LBB2_457
# %bb.453:                              # %.lr.ph1234
                                        #   in Loop: Header=BB2_452 Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a0, $a4, 0
	beq	$a1, $a0, .LBB2_455
# %bb.454:                              #   in Loop: Header=BB2_452 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB2_455:                              #   in Loop: Header=BB2_452 Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a0, $s0, 0
	beq	$a1, $a0, .LBB2_451
# %bb.456:                              #   in Loop: Header=BB2_452 Depth=1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a1, 8
	b	.LBB2_451
.LBB2_457:                              # %._crit_edge1235
	ld.bu	$a0, $s1, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s1, 33
	add.d	$a0, $s5, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s2, $a1
	st.d	$s1, $s0, 0
	st.w	$a0, $s7, 0
	st.d	$a1, $s1, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $sp, 360
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a2, $a0, 0
	ori	$a0, $zero, 5
	b	.LBB2_316
.LBB2_458:
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$s1, $a0, 0
	ori	$a0, $zero, 5
	b	.LBB2_316
.LBB2_459:
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$s3, $a0, 0
	ori	$a0, $zero, 5
	b	.LBB2_316
.Lfunc_end2:
	.size	AttachGalley, .Lfunc_end2-AttachGalley
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_110-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_106-.LJTI2_0
	.word	.LBB2_320-.LJTI2_0
	.word	.LBB2_320-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_106-.LJTI2_0
	.word	.LBB2_112-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function InterposeScale
	.type	InterposeScale,@function
InterposeScale:                         # @InterposeScale
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s4, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $s4, 34
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s3, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $s3, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$s2, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	beqz	$a0, .LBB3_2
# %bb.1:
	alsl.d	$a1, $a2, $s2, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB3_3
.LBB3_2:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB3_3:
	ori	$a1, $zero, 34
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.h	$a1, $fp, 34
	st.h	$a1, $a0, 34
	ld.wu	$a1, $fp, 36
	ld.wu	$a2, $a0, 36
	srli.d	$a2, $a2, 20
	move	$a3, $a1
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $a0, 36
	ld.wu	$a2, $fp, 36
	srli.d	$a2, $a2, 20
	bstrins.d	$a1, $a2, 63, 20
	st.w	$a1, $a0, 36
	sltui	$a1, $s0, 1
	ori	$a2, $zero, 128
	masknez	$a3, $a2, $a1
	maskeqz	$a4, $s1, $a1
	or	$a3, $a4, $a3
	masknez	$a4, $s1, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a4
	st.w	$a3, $a0, 64
	st.w	$a1, $a0, 72
	addi.d	$a1, $fp, 48
	slli.d	$a2, $s0, 2
	ldx.w	$a3, $a1, $a2
	mul.w	$a3, $a3, $s1
	bstrpick.d	$a4, $a3, 62, 56
	add.w	$a3, $a3, $a4
	srli.d	$a3, $a3, 7
	addi.d	$a4, $a0, 48
	stx.w	$a3, $a4, $a2
	addi.d	$a3, $fp, 56
	ldx.w	$a5, $a3, $a2
	mul.w	$a5, $a5, $s1
	bstrpick.d	$a6, $a5, 62, 56
	add.w	$a5, $a5, $a6
	srli.d	$a5, $a5, 7
	addi.d	$a6, $a0, 56
	stx.w	$a5, $a6, $a2
	xori	$a2, $s0, 1
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	stx.w	$a1, $a4, $a2
	ldx.w	$a1, $a3, $a2
	stx.w	$a1, $a6, $a2
	ld.d	$a1, $fp, 24
	beq	$a1, $fp, .LBB3_5
# %bb.4:
	ld.d	$a2, $fp, 16
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(xx_tmp)
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a0, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	ld.d	$a3, $a1, 16
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a4, $a0, 16
	st.d	$a3, $a2, 0
	st.d	$a4, $a1, 16
	st.d	$a1, $a4, 24
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	b	.LBB3_6
.LBB3_5:                                # %.thread
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$zero, $a1, 0
.LBB3_6:
	ld.bu	$a2, $s4, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s2, $a1
	st.w	$a2, $s3, 0
	beqz	$a1, .LBB3_8
# %bb.7:
	alsl.d	$a2, $a2, $s2, 3
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a1, $a3, 0
	ld.d	$a3, $a1, 0
	st.d	$a3, $a2, 0
	b	.LBB3_9
.LBB3_8:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
.LBB3_9:
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
	st.d	$a0, $a5, 0
	ld.d	$a6, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a6, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
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
	st.d	$fp, $a5, 0
	beqz	$a1, .LBB3_11
# %bb.10:
	ld.d	$a3, $fp, 16
	ld.d	$a4, $a1, 16
	st.d	$a3, $a2, 0
	st.d	$a4, $fp, 16
	st.d	$fp, $a4, 24
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
.LBB3_11:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end3:
	.size	InterposeScale, .Lfunc_end3-InterposeScale
                                        # -- End function
	.p2align	5                               # -- Begin function InterposeWideOrHigh
	.type	InterposeWideOrHigh,@function
InterposeWideOrHigh:                    # @InterposeWideOrHigh
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	sltui	$a0, $a1, 1
	xori	$s4, $a0, 27
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s3, $a0, %got_pc_lo12(zz_lengths)
	ldx.bu	$a2, $s3, $s4
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s2, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $s2, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$s1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	beqz	$a0, .LBB4_2
# %bb.1:
	alsl.d	$a1, $a2, $s1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB4_3
.LBB4_2:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB4_3:
	st.b	$s4, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.h	$a1, $fp, 34
	st.h	$a1, $a0, 34
	ld.wu	$a1, $fp, 36
	ld.wu	$a2, $a0, 36
	srli.d	$a2, $a2, 20
	move	$a3, $a1
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $a0, 36
	ld.wu	$a2, $fp, 36
	srli.d	$a2, $a2, 20
	bstrins.d	$a1, $a2, 63, 20
	st.w	$a1, $a0, 36
	addi.d	$a1, $fp, 48
	slli.d	$a2, $s0, 2
	ldx.w	$a3, $a1, $a2
	addi.d	$a4, $a0, 48
	stx.w	$a3, $a4, $a2
	addi.d	$a5, $fp, 56
	ldx.w	$a6, $a5, $a2
	addi.d	$a7, $a0, 56
	stx.w	$a6, $a7, $a2
	xori	$a2, $s0, 1
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	stx.w	$a1, $a4, $a2
	ldx.w	$a1, $a5, $a2
	stx.w	$a1, $a7, $a2
	lu12i.w	$a1, 2047
	ori	$a1, $a1, 4095
	st.w	$a1, $a0, 64
	add.d	$a2, $a6, $a3
	st.w	$a2, $a0, 68
	st.w	$a1, $a0, 72
	ld.d	$a1, $fp, 24
	beq	$a1, $fp, .LBB4_5
# %bb.4:
	ld.d	$a2, $fp, 16
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(xx_tmp)
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a0, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	ld.d	$a3, $a1, 16
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a4, $a0, 16
	st.d	$a3, $a2, 0
	st.d	$a4, $a1, 16
	st.d	$a1, $a4, 24
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	b	.LBB4_6
.LBB4_5:                                # %.thread
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$zero, $a1, 0
.LBB4_6:
	ld.bu	$a2, $s3, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s1, $a1
	st.w	$a2, $s2, 0
	beqz	$a1, .LBB4_8
# %bb.7:
	alsl.d	$a2, $a2, $s1, 3
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a1, $a3, 0
	ld.d	$a3, $a1, 0
	st.d	$a3, $a2, 0
	b	.LBB4_9
.LBB4_8:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
.LBB4_9:
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
	st.d	$a0, $a5, 0
	ld.d	$a6, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a6, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
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
	st.d	$fp, $a5, 0
	beqz	$a1, .LBB4_11
# %bb.10:
	ld.d	$a3, $fp, 16
	ld.d	$a4, $a1, 16
	st.d	$a3, $a2, 0
	st.d	$a4, $fp, 16
	st.d	$fp, $a4, 24
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
.LBB4_11:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end4:
	.size	InterposeWideOrHigh, .Lfunc_end4-InterposeWideOrHigh
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"DetachGalley: precondition!"
	.size	.L.str.1, 28

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"DetachGalley: parent!"
	.size	.L.str.2, 22

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"SearchGalley: start!"
	.size	.L.str.4, 21

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"AttachGalley: no index!"
	.size	.L.str.5, 24

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"AttachGalley: not UNATTACHED!"
	.size	.L.str.6, 30

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"galley %s deleted from here (no target)"
	.size	.L.str.7, 40

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"AttachGalley: target_index!"
	.size	.L.str.8, 28

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"AttachGalley: target!"
	.size	.L.str.9, 22

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"receptive symbol %s has unconstrained width"
	.size	.L.str.10, 44

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"AttachGalley: dest unconstrained!"
	.size	.L.str.11, 34

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.space	1
	.size	.L.str.12, 1

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"too little horizontal space for galley %s at %s"
	.size	.L.str.13, 48

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Attach: PRECEDES!"
	.size	.L.str.14, 18

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"%.1fc"
	.size	.L.str.15, 6

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"%s object too high for %s space; %s inserted"
	.size	.L.str.16, 45

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"@Scale"
	.size	.L.str.17, 7

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"%s object too wide for %s space; %s inserted"
	.size	.L.str.18, 45

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"%s object too high for %s space; will try elsewhere"
	.size	.L.str.19, 52

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"%s object too wide for %s space; will try elsewhere"
	.size	.L.str.20, 52

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"AttachGalley: is_index(z)!"
	.size	.L.str.21, 27

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"AttachGalley: z size!"
	.size	.L.str.22, 22

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"AttachGalley: z size (perpendicular)!"
	.size	.L.str.23, 38

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"assert failed in %s %s"
	.size	.L.str.24, 23

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"AttachGalley:"
	.size	.L.str.25, 14

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"TransferLinks: start_link!"
	.size	.L.str.26, 27

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"AttachGalley: type(hd_index)!"
	.size	.L.str.27, 30

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"AttachGalley: type(junk) != ACAT!"
	.size	.L.str.28, 34

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"AttachGalley: target_ind"
	.size	.L.str.29, 25

	.section	".note.GNU-stack","",@progbits
	.addrsig
