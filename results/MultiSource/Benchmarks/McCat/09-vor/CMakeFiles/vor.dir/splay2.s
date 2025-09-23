	.file	"splay2.c"
	.text
	.globl	CHfind                          # -- Begin function CHfind
	.p2align	5
	.type	CHfind,@function
CHfind:                                 # @CHfind
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a1, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_5
# %bb.1:
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_6
# %bb.2:
	fld.d	$fa2, $a0, 8
	fld.d	$fa3, $a1, 8
	fcmp.clt.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB0_5
# %bb.3:
	fcmp.cune.d	$fcc0, $fa2, $fa3
	bcnez	$fcc0, .LBB0_6
# %bb.4:
	ld.w	$a2, $a0, 16
	ld.w	$a3, $a1, 16
	bge	$a2, $a3, .LBB0_6
.LBB0_5:
	ld.d	$a2, $a0, 48
	bnez	$a2, .LBB0_12
.LBB0_6:
	fcmp.clt.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_11
# %bb.7:
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_13
# %bb.8:
	fld.d	$fa0, $a0, 8
	fld.d	$fa1, $a1, 8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_11
# %bb.9:
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_13
# %bb.10:
	ld.w	$a2, $a0, 16
	ld.w	$a3, $a1, 16
	bge	$a3, $a2, .LBB0_13
.LBB0_11:
	ld.d	$a2, $a0, 40
	beqz	$a2, .LBB0_13
.LBB0_12:
	ld.d	$a0, $a1, 16
	vld	$vr0, $a1, 0
	st.d	$a0, $sp, 16
	vst	$vr0, $sp, 0
	addi.d	$a1, $sp, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(CHfind)
	jirl	$ra, $ra, 0
.LBB0_13:
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	CHfind, .Lfunc_end0-CHfind
                                        # -- End function
	.globl	CHrotate                        # -- Begin function CHrotate
	.p2align	5
	.type	CHrotate,@function
CHrotate:                               # @CHrotate
# %bb.0:
	ld.d	$a1, $a0, 32
	ld.d	$a2, $a1, 40
	beq	$a2, $a0, .LBB1_5
# %bb.1:
	ld.d	$a2, $a0, 40
	st.d	$a2, $a1, 48
	beqz	$a2, .LBB1_3
# %bb.2:
	st.d	$a1, $a2, 32
	ld.d	$a1, $a0, 32
.LBB1_3:
	st.d	$a1, $a0, 40
	ld.d	$a2, $a1, 32
	st.d	$a0, $a1, 32
	bnez	$a2, .LBB1_8
.LBB1_4:
	st.d	$a2, $a0, 32
	ret
.LBB1_5:
	ld.d	$a2, $a0, 48
	st.d	$a2, $a1, 40
	beqz	$a2, .LBB1_7
# %bb.6:
	st.d	$a1, $a2, 32
	ld.d	$a1, $a0, 32
.LBB1_7:
	st.d	$a1, $a0, 48
	ld.d	$a2, $a1, 32
	st.d	$a0, $a1, 32
	beqz	$a2, .LBB1_4
.LBB1_8:
	ld.d	$a1, $a2, 40
	ld.d	$a3, $a0, 32
	beq	$a1, $a3, .LBB1_10
# %bb.9:
	st.d	$a0, $a2, 48
	st.d	$a2, $a0, 32
	ret
.LBB1_10:
	st.d	$a0, $a2, 40
	st.d	$a2, $a0, 32
	ret
.Lfunc_end1:
	.size	CHrotate, .Lfunc_end1-CHrotate
                                        # -- End function
	.globl	CHsplay                         # -- Begin function CHsplay
	.p2align	5
	.type	CHsplay,@function
CHsplay:                                # @CHsplay
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a2, $a1, 16
	vld	$vr0, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a2, $sp, 24
	vst	$vr0, $sp, 8
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(CHfind)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 32
	bnez	$a1, .LBB2_4
.LBB2_1:                                # %._crit_edge
	st.d	$a0, $fp, 0
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
	.p2align	4, , 16
.LBB2_2:                                #   in Loop: Header=BB2_4 Depth=1
	st.d	$a0, $a1, 48
.LBB2_3:                                # %CHrotate.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	st.d	$a1, $a0, 32
	beqz	$a1, .LBB2_1
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 32
	ld.d	$a3, $a1, 40
	beqz	$a2, .LBB2_15
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	bne	$a3, $a0, .LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a4, $a2, 40
	beq	$a4, $a1, .LBB2_27
.LBB2_7:                                #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a4, $a1, 48
	bne	$a4, $a0, .LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a5, $a2, 48
	beq	$a5, $a1, .LBB2_32
.LBB2_9:                                #   in Loop: Header=BB2_4 Depth=1
	beq	$a3, $a0, .LBB2_19
# %bb.10:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a2, $a0, 40
	st.d	$a2, $a1, 48
	beqz	$a2, .LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$a1, $a2, 32
	ld.d	$a1, $a0, 32
.LBB2_12:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$a1, $a0, 40
	ld.d	$a2, $a1, 32
	st.d	$a0, $a1, 32
	beqz	$a2, .LBB2_22
.LBB2_13:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $a2, 40
	ld.d	$a3, $a0, 32
	beq	$a1, $a3, .LBB2_26
# %bb.14:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$a0, $a2, 48
	st.d	$a2, $a0, 32
	bne	$a1, $a0, .LBB2_43
	b	.LBB2_38
	.p2align	4, , 16
.LBB2_15:                               #   in Loop: Header=BB2_4 Depth=1
	beq	$a3, $a0, .LBB2_23
# %bb.16:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a2, $a0, 40
	st.d	$a2, $a1, 48
	beqz	$a2, .LBB2_18
# %bb.17:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$a1, $a2, 32
	ld.d	$a1, $a0, 32
.LBB2_18:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$a1, $a0, 40
	move	$a2, $a1
	ld.d	$a1, $a1, 32
	st.d	$a0, $a2, 32
	bnez	$a1, .LBB2_46
	b	.LBB2_3
.LBB2_19:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a2, $a0, 48
	st.d	$a2, $a1, 40
	beqz	$a2, .LBB2_21
# %bb.20:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$a1, $a2, 32
	ld.d	$a1, $a0, 32
.LBB2_21:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$a1, $a0, 48
	ld.d	$a2, $a1, 32
	st.d	$a0, $a1, 32
	bnez	$a2, .LBB2_13
.LBB2_22:                               # %.CHrotate.exit53_crit_edge
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $zero, 40
	st.d	$a2, $a0, 32
	bne	$a1, $a0, .LBB2_43
	b	.LBB2_38
.LBB2_23:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a2, $a0, 48
	st.d	$a2, $a1, 40
	beqz	$a2, .LBB2_25
# %bb.24:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$a1, $a2, 32
	ld.d	$a1, $a0, 32
.LBB2_25:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$a1, $a0, 48
	move	$a2, $a1
	ld.d	$a1, $a1, 32
	st.d	$a0, $a2, 32
	bnez	$a1, .LBB2_46
	b	.LBB2_3
.LBB2_26:                               # %CHrotate.exit53.thread
                                        #   in Loop: Header=BB2_4 Depth=1
	st.d	$a2, $a0, 32
	b	.LBB2_38
.LBB2_27:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a3, $a1, 48
	st.d	$a3, $a2, 40
	beqz	$a3, .LBB2_29
# %bb.28:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$a2, $a3, 32
	ld.d	$a2, $a1, 32
.LBB2_29:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a3, $a2, 32
	st.d	$a2, $a1, 48
	st.d	$a1, $a2, 32
	beqz	$a3, .LBB2_42
# %bb.30:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a2, $a3, 40
	ld.d	$a4, $a1, 32
	beq	$a2, $a4, .LBB2_37
.LBB2_31:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$a1, $a3, 48
	b	.LBB2_42
.LBB2_32:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a5, $a2, 40
	beq	$a5, $a1, .LBB2_41
# %bb.33:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$a3, $a2, 48
	beqz	$a3, .LBB2_35
# %bb.34:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$a2, $a3, 32
	ld.d	$a2, $a1, 32
.LBB2_35:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$a2, $a1, 40
	ld.d	$a3, $a2, 32
	st.d	$a1, $a2, 32
	beqz	$a3, .LBB2_42
.LBB2_36:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a2, $a3, 40
	ld.d	$a4, $a1, 32
	bne	$a2, $a4, .LBB2_31
.LBB2_37:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$a1, $a3, 40
	st.d	$a3, $a1, 32
	ld.d	$a2, $a0, 32
	ld.d	$a1, $a2, 40
	bne	$a1, $a0, .LBB2_43
	.p2align	4, , 16
.LBB2_38:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $a0, 48
	st.d	$a1, $a2, 40
	beqz	$a1, .LBB2_40
# %bb.39:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$a2, $a1, 32
	ld.d	$a2, $a0, 32
.LBB2_40:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$a2, $a0, 48
	ld.d	$a1, $a2, 32
	st.d	$a0, $a2, 32
	bnez	$a1, .LBB2_46
	b	.LBB2_3
.LBB2_41:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$a4, $a2, 40
	st.d	$a2, $a4, 32
	ld.d	$a2, $a1, 32
	st.d	$a2, $a1, 48
	ld.d	$a3, $a2, 32
	st.d	$a1, $a2, 32
	bnez	$a3, .LBB2_36
.LBB2_42:                               # %CHrotate.exit29
                                        #   in Loop: Header=BB2_4 Depth=1
	st.d	$a3, $a1, 32
	ld.d	$a2, $a0, 32
	ld.d	$a1, $a2, 40
	beq	$a1, $a0, .LBB2_38
.LBB2_43:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $a0, 40
	st.d	$a1, $a2, 48
	beqz	$a1, .LBB2_45
# %bb.44:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$a2, $a1, 32
	ld.d	$a2, $a0, 32
.LBB2_45:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$a2, $a0, 40
	ld.d	$a1, $a2, 32
	st.d	$a0, $a2, 32
	beqz	$a1, .LBB2_3
.LBB2_46:                               #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a2, $a1, 40
	ld.d	$a3, $a0, 32
	bne	$a2, $a3, .LBB2_2
# %bb.47:                               #   in Loop: Header=BB2_4 Depth=1
	st.d	$a0, $a1, 40
	b	.LBB2_3
.Lfunc_end2:
	.size	CHsplay, .Lfunc_end2-CHsplay
                                        # -- End function
	.globl	CHtraverse                      # -- Begin function CHtraverse
	.p2align	5
	.type	CHtraverse,@function
CHtraverse:                             # @CHtraverse
# %bb.0:
	beqz	$a0, .LBB3_4
# %bb.1:                                # %tailrecurse.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s0, $a0, %pc_lo12(.L.str)
	.p2align	4, , 16
.LBB3_2:                                # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(CHtraverse)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.w	$a1, $a0, 4
	ld.w	$a2, $a0, 8
	ld.w	$a5, $fp, 16
	ld.d	$a4, $fp, 8
	ld.d	$a3, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 48
	bnez	$fp, .LBB3_2
# %bb.3:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB3_4:                                # %tailrecurse._crit_edge
	ret
.Lfunc_end3:
	.size	CHtraverse, .Lfunc_end3-CHtraverse
                                        # -- End function
	.globl	CHfree_tree                     # -- Begin function CHfree_tree
	.p2align	5
	.type	CHfree_tree,@function
CHfree_tree:                            # @CHfree_tree
# %bb.0:
	beqz	$a0, .LBB4_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 40
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(CHfree_tree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	pcaddu18i	$ra, %call36(CHfree_tree)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB4_2:                                # %common.ret4
	ret
.Lfunc_end4:
	.size	CHfree_tree, .Lfunc_end4-CHfree_tree
                                        # -- End function
	.globl	CHcreate_node                   # -- Begin function CHcreate_node
	.p2align	5
	.type	CHcreate_node,@function
CHcreate_node:                          # @CHcreate_node
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 56
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_2
# %bb.1:
	st.d	$zero, $a0, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 32
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(before)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(next)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 4
	ld.d	$a1, $fp, 4
	ld.d	$a2, $a0, 4
	move	$a0, $a3
	pcaddu18i	$ra, %call36(centre)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 4
	pcaddu18i	$ra, %call36(radius2)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(before)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(next)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(angle)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	fst.d	$fs0, $s0, 0
	fst.d	$fa0, $s0, 8
	st.w	$a0, $s0, 16
	st.d	$fp, $s0, 24
	move	$a0, $s0
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB5_2:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	CHcreate_node, .Lfunc_end5-CHcreate_node
                                        # -- End function
	.globl	CHinit                          # -- Begin function CHinit
	.p2align	5
	.type	CHinit,@function
CHinit:                                 # @CHinit
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end6:
	.size	CHinit, .Lfunc_end6-CHinit
                                        # -- End function
	.globl	CHinsert                        # -- Begin function CHinsert
	.p2align	5
	.type	CHinsert,@function
CHinsert:                               # @CHinsert
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(CHcreate_node)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a0
	beqz	$a1, .LBB7_13
# %bb.1:
	ld.d	$a0, $s0, 16
	vld	$vr0, $s0, 0
	st.d	$a0, $sp, 16
	vst	$vr0, $sp, 0
	addi.d	$a1, $sp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CHsplay)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $s0, 0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB7_6
# %bb.2:
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB7_9
# %bb.3:
	fld.d	$fa0, $a0, 8
	fld.d	$fa1, $s0, 8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB7_6
# %bb.4:
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB7_9
# %bb.5:
	ld.w	$a1, $a0, 16
	ld.w	$a2, $s0, 16
	bge	$a2, $a1, .LBB7_9
.LBB7_6:
	ld.d	$a1, $a0, 40
	st.d	$a1, $s0, 40
	beqz	$a1, .LBB7_8
# %bb.7:
	st.d	$s0, $a1, 32
	ld.d	$a0, $fp, 0
.LBB7_8:
	st.d	$a0, $s0, 48
	st.d	$zero, $a0, 40
	b	.LBB7_12
.LBB7_9:
	ld.d	$a1, $a0, 48
	st.d	$a1, $s0, 48
	beqz	$a1, .LBB7_11
# %bb.10:
	st.d	$s0, $a1, 32
	ld.d	$a0, $fp, 0
.LBB7_11:
	st.d	$a0, $s0, 40
	st.d	$zero, $a0, 48
.LBB7_12:
	ld.d	$a0, $fp, 0
	st.d	$s0, $a0, 32
.LBB7_13:
	st.d	$s0, $fp, 0
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	CHinsert, .Lfunc_end7-CHinsert
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function CHdelete_max
.LCPI8_0:
	.dword	0x47efffffe0000000              # double 3.4028234663852886E+38
	.dword	0x408f400000000000              # double 1000
	.text
	.globl	CHdelete_max
	.p2align	5
	.type	CHdelete_max,@function
CHdelete_max:                           # @CHdelete_max
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB8_4
# %bb.1:
	pcalau12i	$a1, %pc_hi20(.LCPI8_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI8_0)
	vst	$vr0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 32
	addi.d	$a1, $sp, 16
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CHsplay)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 40
	ld.d	$fp, $a0, 24
	st.d	$a1, $s0, 0
	beqz	$a1, .LBB8_3
# %bb.2:
	st.d	$zero, $a1, 32
.LBB8_3:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB8_5
.LBB8_4:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$fp, $zero
.LBB8_5:
	move	$a0, $fp
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end8:
	.size	CHdelete_max, .Lfunc_end8-CHdelete_max
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function CHdelete
.LCPI9_0:
	.dword	0x47efffffe0000000              # double 3.4028234663852886E+38
	.dword	0x408f400000000000              # double 1000
	.text
	.globl	CHdelete
	.p2align	5
	.type	CHdelete,@function
CHdelete:                               # @CHdelete
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_3
# %bb.1:
	ld.d	$a0, $a1, 16
	vld	$vr0, $a1, 0
	st.d	$a0, $sp, 32
	vst	$vr0, $sp, 16
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CHsplay)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 40
	ld.d	$s0, $a0, 48
	st.d	$a1, $sp, 56
	or	$a2, $a1, $s0
	st.d	$s0, $sp, 48
	bnez	$a2, .LBB9_4
# %bb.2:
	st.d	$zero, $fp, 0
	b	.LBB9_11
.LBB9_3:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB9_4:
	bnez	$a1, .LBB9_7
# %bb.5:
	beqz	$s0, .LBB9_7
# %bb.6:
	st.d	$s0, $fp, 0
	st.d	$zero, $s0, 32
	b	.LBB9_11
.LBB9_7:
	beqz	$a1, .LBB9_10
# %bb.8:
	bnez	$s0, .LBB9_10
# %bb.9:
	st.d	$a1, $fp, 0
	st.d	$zero, $a1, 32
	b	.LBB9_11
.LBB9_10:
	pcalau12i	$a2, %pc_hi20(.LCPI9_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI9_0)
	st.d	$zero, $a1, 32
	vst	$vr0, $sp, 16
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 32
	move	$s1, $a0
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(CHsplay)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 32
	vldi	$vr0, -784
	vst	$vr0, $sp, 16
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $sp, 32
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(CHsplay)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$a1, $sp, 48
	ld.d	$a2, $sp, 56
	st.d	$a1, $a2, 48
	st.d	$a2, $a1, 32
	st.d	$a2, $fp, 0
.LBB9_11:
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end9:
	.size	CHdelete, .Lfunc_end9-CHdelete
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(%d,%d)  key: (%f,%f,%d)\n"
	.size	.L.str, 26

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Can't create node"
	.size	.Lstr, 18

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"No elements in tree! [CHdelete_max]"
	.size	.Lstr.1, 36

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"No elements in tree! [CHdelete]"
	.size	.Lstr.2, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
