	.file	"parse.c"
	.text
	.globl	print_paren                     # -- Begin function print_paren
	.p2align	5
	.type	print_paren,@function
print_paren:                            # @print_paren
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a0, $a0, 85
	beqz	$a0, .LBB0_2
.LBB0_1:                                # %._crit_edge29.thread
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB0_2:
	ld.w	$a0, $fp, 40
	beqz	$a0, .LBB0_8
# %bb.3:
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB0_5
# %bb.4:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	beqz	$a0, .LBB0_1
.LBB0_5:                                # %.lr.ph28
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 48
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(print_paren)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 40
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	bltu	$s1, $a0, .LBB0_6
# %bb.7:                                # %._crit_edge29
	ori	$a1, $zero, 1
	ori	$s0, $zero, 41
	bgeu	$a1, $a0, .LBB0_1
	b	.LBB0_11
.LBB0_8:
	ld.d	$a0, $fp, 160
	ld.d	$a1, $fp, 200
	beq	$a0, $a1, .LBB0_1
# %bb.9:
	ori	$a0, $zero, 32
	ori	$s0, $zero, 32
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 160
	ld.d	$a0, $fp, 200
	bgeu	$s1, $a0, .LBB0_11
	.p2align	4, , 16
.LBB0_10:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a0, $s1, 0
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 200
	addi.d	$s1, $s1, 1
	bltu	$s1, $a0, .LBB0_10
.LBB0_11:                               # %._crit_edge29.thread.sink.split
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.Lfunc_end0:
	.size	print_paren, .Lfunc_end0-print_paren
                                        # -- End function
	.globl	xprint_paren                    # -- Begin function xprint_paren
	.p2align	5
	.type	xprint_paren,@function
xprint_paren:                           # @xprint_paren
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.bu	$a1, $a1, 85
	beqz	$a1, .LBB1_2
.LBB1_1:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_2:
	move	$s1, $a0
	ld.d	$a0, $a0, 144
	ld.w	$a1, $fp, 152
	ld.d	$a0, $a0, 32
	slli.d	$a2, $a1, 4
	alsl.d	$a1, $a1, $a2, 3
	add.d	$a0, $a0, $a1
	ld.d	$a1, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	beqz	$a0, .LBB1_6
# %bb.3:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	ori	$s0, $zero, 41
	beqz	$a0, .LBB1_9
# %bb.4:                                # %.lr.ph
	move	$s2, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 48
	ldx.d	$a1, $a0, $s2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(xprint_paren)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 40
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bltu	$s3, $a0, .LBB1_5
	b	.LBB1_9
.LBB1_6:
	ld.d	$a0, $fp, 160
	ld.d	$a1, $fp, 200
	beq	$a0, $a1, .LBB1_1
# %bb.7:
	ori	$a0, $zero, 32
	ori	$s0, $zero, 32
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 160
	ld.d	$a0, $fp, 200
	bgeu	$s1, $a0, .LBB1_9
	.p2align	4, , 16
.LBB1_8:                                # %.lr.ph26
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a0, $s1, 0
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 200
	addi.d	$s1, $s1, 1
	bltu	$s1, $a0, .LBB1_8
.LBB1_9:                                # %.sink.split
	move	$a0, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.Lfunc_end1:
	.size	xprint_paren, .Lfunc_end1-xprint_paren
                                        # -- End function
	.globl	xpp                             # -- Begin function xpp
	.p2align	5
	.type	xpp,@function
xpp:                                    # @xpp
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(xprint_paren)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.Lfunc_end2:
	.size	xpp, .Lfunc_end2-xpp
                                        # -- End function
	.globl	pp                              # -- Begin function pp
	.p2align	5
	.type	pp,@function
pp:                                     # @pp
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(print_paren)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.Lfunc_end3:
	.size	pp, .Lfunc_end3-pp
                                        # -- End function
	.globl	d_get_child                     # -- Begin function d_get_child
	.p2align	5
	.type	d_get_child,@function
d_get_child:                            # @d_get_child
# %bb.0:
	bltz	$a1, .LBB4_3
# %bb.1:
	ld.w	$a2, $a0, -112
	bgeu	$a1, $a2, .LBB4_3
# %bb.2:
	ld.d	$a0, $a0, -104
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 152
	ret
.LBB4_3:
	move	$a0, $zero
	ret
.Lfunc_end4:
	.size	d_get_child, .Lfunc_end4-d_get_child
                                        # -- End function
	.globl	d_get_number_of_children        # -- Begin function d_get_number_of_children
	.p2align	5
	.type	d_get_number_of_children,@function
d_get_number_of_children:               # @d_get_number_of_children
# %bb.0:
	ld.w	$a0, $a0, -112
	ret
.Lfunc_end5:
	.size	d_get_number_of_children, .Lfunc_end5-d_get_number_of_children
                                        # -- End function
	.globl	d_find_in_tree                  # -- Begin function d_find_in_tree
	.p2align	5
	.type	d_find_in_tree,@function
d_find_in_tree:                         # @d_find_in_tree
# %bb.0:
	ld.w	$a2, $a0, 0
	beq	$a2, $a1, .LBB6_7
# %bb.1:                                # %.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.wu	$s0, $a0, -112
	beqz	$s0, .LBB6_5
# %bb.2:                                # %.lr.ph
	move	$fp, $a1
	ld.d	$s1, $a0, -104
	.p2align	4, , 16
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	addi.d	$a0, $a0, 152
	move	$a1, $fp
	pcaddu18i	$ra, %call36(d_find_in_tree)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_6
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=1
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	bnez	$s0, .LBB6_3
.LBB6_5:
	move	$a0, $zero
.LBB6_6:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB6_7:                                # %.loopexit
	ret
.Lfunc_end6:
	.size	d_find_in_tree, .Lfunc_end6-d_find_in_tree
                                        # -- End function
	.globl	d_ws_before                     # -- Begin function d_ws_before
	.p2align	5
	.type	d_ws_before,@function
d_ws_before:                            # @d_ws_before
# %bb.0:
	ld.d	$a0, $a1, -32
	ret
.Lfunc_end7:
	.size	d_ws_before, .Lfunc_end7-d_ws_before
                                        # -- End function
	.globl	d_ws_after                      # -- Begin function d_ws_after
	.p2align	5
	.type	d_ws_after,@function
d_ws_after:                             # @d_ws_after
# %bb.0:
	ld.d	$a0, $a1, -24
	ret
.Lfunc_end8:
	.size	d_ws_after, .Lfunc_end8-d_ws_after
                                        # -- End function
	.globl	find_SNode                      # -- Begin function find_SNode
	.p2align	5
	.type	find_SNode,@function
find_SNode:                             # @find_SNode
# %bb.0:
	move	$a4, $a0
	ld.d	$a0, $a0, 216
	beqz	$a0, .LBB9_8
# %bb.1:
	ld.w	$a5, $a4, 228
	slli.d	$a6, $a1, 12
	add.d	$a6, $a6, $a2
	add.w	$a6, $a6, $a3
	mod.wu	$a5, $a6, $a5
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 3
	ldx.d	$a0, $a0, $a5
	beqz	$a0, .LBB9_8
# %bb.2:                                # %.lr.ph
	ld.d	$a4, $a4, 144
	ld.d	$a4, $a4, 8
	bstrpick.d	$a1, $a1, 31, 0
	lu12i.w	$a5, -69906
	ori	$a5, $a5, 3823
	lu32i.d	$a5, -69906
	lu52i.d	$a5, $a5, -274
	b	.LBB9_4
	.p2align	4, , 16
.LBB9_3:                                #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $a0, 120
	beqz	$a0, .LBB9_8
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a0, 0
	sub.d	$a6, $a6, $a4
	srai.d	$a6, $a6, 3
	mul.d	$a6, $a6, $a5
	bne	$a6, $a1, .LBB9_3
# %bb.5:                                #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a6, $a0, 8
	bne	$a6, $a2, .LBB9_3
# %bb.6:                                #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a6, $a0, 16
	bne	$a6, $a3, .LBB9_3
# %bb.7:                                # %.loopexit
	ret
.LBB9_8:
	move	$a0, $zero
	ret
.Lfunc_end9:
	.size	find_SNode, .Lfunc_end9-find_SNode
                                        # -- End function
	.globl	insert_SNode_internal           # -- Begin function insert_SNode_internal
	.p2align	5
	.type	insert_SNode_internal,@function
insert_SNode_internal:                  # @insert_SNode_internal
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
	move	$fp, $a0
	ld.d	$a0, $a0, 144
	move	$s0, $a1
	ld.d	$s3, $a1, 0
	ld.d	$s4, $a0, 8
	ld.d	$s2, $a1, 8
	ld.w	$a0, $fp, 232
	ld.w	$s6, $fp, 228
	ld.d	$s5, $a1, 16
	addi.w	$a0, $a0, 1
	bgeu	$s6, $a0, .LBB10_8
# %bb.1:
	ld.w	$a0, $fp, 224
	ld.d	$s1, $fp, 216
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 224
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %got_pc_hi20(prime2)
	ld.d	$a1, $a1, %got_pc_lo12(prime2)
	ldx.wu	$a0, $a1, $a0
	st.w	$a0, $fp, 228
	slli.d	$a1, $a0, 3
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 216
	beqz	$s6, .LBB10_7
# %bb.2:                                # %.preheader.preheader
	move	$s7, $zero
	bstrpick.d	$s6, $s6, 31, 0
	b	.LBB10_4
	.p2align	4, , 16
.LBB10_3:                               # %._crit_edge
                                        #   in Loop: Header=BB10_4 Depth=1
	addi.d	$s7, $s7, 1
	beq	$s7, $s6, .LBB10_7
.LBB10_4:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_6 Depth 2
	slli.d	$a0, $s7, 3
	ldx.d	$a1, $s1, $a0
	beqz	$a1, .LBB10_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB10_4 Depth=1
	alsl.d	$s8, $s7, $s1, 3
	.p2align	4, , 16
.LBB10_6:                               # %.lr.ph
                                        #   Parent Loop BB10_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a1, 120
	st.d	$a0, $s8, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(insert_SNode_internal)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	bnez	$a1, .LBB10_6
	b	.LBB10_3
.LBB10_7:                               # %._crit_edge40
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 232
	ld.w	$s6, $fp, 228
	addi.d	$a0, $a0, 1
.LBB10_8:
	sub.d	$a1, $s3, $s4
	bstrpick.d	$a1, $a1, 31, 3
	lu12i.w	$a2, -69905
	mul.d	$a1, $a1, $a2
	add.d	$a2, $s5, $s2
	add.w	$a1, $a2, $a1
	ld.d	$a2, $fp, 216
	mod.wu	$a1, $a1, $s6
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a2, $a1
	st.d	$a3, $s0, 120
	stx.d	$s0, $a2, $a1
	st.w	$a0, $fp, 232
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
.Lfunc_end10:
	.size	insert_SNode_internal, .Lfunc_end10-insert_SNode_internal
                                        # -- End function
	.globl	find_PNode                      # -- Begin function find_PNode
	.p2align	5
	.type	find_PNode,@function
find_PNode:                             # @find_PNode
# %bb.0:
	ld.d	$a6, $a0, 184
	beqz	$a6, .LBB11_2
# %bb.1:
	slli.d	$a7, $a1, 8
	slli.d	$t0, $a2, 16
	add.d	$a7, $a7, $a3
	ld.w	$a0, $a0, 196
	add.d	$a7, $a7, $t0
	add.d	$a7, $a7, $a4
	add.w	$a7, $a7, $a5
	mod.wu	$a0, $a7, $a0
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a6, $a0
	bnez	$a0, .LBB11_5
.LBB11_2:
	move	$a0, $zero
.LBB11_3:                               # %.loopexit
	ret
	.p2align	4, , 16
.LBB11_4:                               #   in Loop: Header=BB11_5 Depth=1
	ld.d	$a0, $a0, 96
	beqz	$a0, .LBB11_2
.LBB11_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, 152
	bne	$a6, $a3, .LBB11_4
# %bb.6:                                #   in Loop: Header=BB11_5 Depth=1
	ld.d	$a6, $a0, 160
	bne	$a6, $a1, .LBB11_4
# %bb.7:                                #   in Loop: Header=BB11_5 Depth=1
	ld.d	$a6, $a0, 200
	bne	$a6, $a2, .LBB11_4
# %bb.8:                                #   in Loop: Header=BB11_5 Depth=1
	ld.d	$a6, $a0, 136
	bne	$a6, $a4, .LBB11_4
# %bb.9:                                #   in Loop: Header=BB11_5 Depth=1
	ld.d	$a6, $a0, 144
	bne	$a6, $a5, .LBB11_4
	b	.LBB11_3
.Lfunc_end11:
	.size	find_PNode, .Lfunc_end11-find_PNode
                                        # -- End function
	.globl	insert_PNode_internal           # -- Begin function insert_PNode_internal
	.p2align	5
	.type	insert_PNode_internal,@function
insert_PNode_internal:                  # @insert_PNode_internal
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
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$s3, $a1, 160
	ld.d	$s4, $a1, 200
	ld.w	$s5, $a1, 152
	ld.d	$a3, $a1, 136
	ld.w	$a0, $a0, 200
	ld.w	$s7, $fp, 196
	ld.d	$s6, $a1, 144
	addi.w	$a0, $a0, 1
	bgeu	$s7, $a0, .LBB12_8
# %bb.1:
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 192
	ld.d	$s1, $fp, 184
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 192
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %got_pc_hi20(prime2)
	ld.d	$a1, $a1, %got_pc_lo12(prime2)
	ldx.wu	$a0, $a1, $a0
	st.w	$a0, $fp, 196
	slli.d	$a1, $a0, 3
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 184
	beqz	$s7, .LBB12_7
# %bb.2:                                # %.preheader.preheader
	move	$s8, $zero
	bstrpick.d	$s7, $s7, 31, 0
	b	.LBB12_4
	.p2align	4, , 16
.LBB12_3:                               # %._crit_edge
                                        #   in Loop: Header=BB12_4 Depth=1
	addi.d	$s8, $s8, 1
	beq	$s8, $s7, .LBB12_7
.LBB12_4:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_6 Depth 2
	slli.d	$a0, $s8, 3
	ldx.d	$a1, $s1, $a0
	beqz	$a1, .LBB12_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB12_4 Depth=1
	alsl.d	$s2, $s8, $s1, 3
	.p2align	4, , 16
.LBB12_6:                               # %.lr.ph
                                        #   Parent Loop BB12_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a1, 96
	st.d	$a0, $s2, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(insert_PNode_internal)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	bnez	$a1, .LBB12_6
	b	.LBB12_3
.LBB12_7:                               # %._crit_edge41
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 200
	ld.w	$s7, $fp, 196
	addi.d	$a0, $a0, 1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
.LBB12_8:
	slli.d	$a1, $s3, 8
	slli.d	$a2, $s4, 16
	add.d	$a1, $a1, $s5
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	add.w	$a1, $a1, $s6
	ld.d	$a2, $fp, 184
	mod.wu	$a1, $a1, $s7
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a2, $a1
	st.d	$a3, $s0, 96
	stx.d	$s0, $a2, $a1
	st.w	$a0, $fp, 200
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
.Lfunc_end12:
	.size	insert_PNode_internal, .Lfunc_end12-insert_PNode_internal
                                        # -- End function
	.globl	free_D_ParseTreeBelow           # -- Begin function free_D_ParseTreeBelow
	.p2align	5
	.type	free_D_ParseTreeBelow,@function
free_D_ParseTreeBelow:                  # @free_D_ParseTreeBelow
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.wu	$a2, $a1, -112
	move	$s0, $a0
	beqz	$a2, .LBB13_5
# %bb.1:                                # %.lr.ph.i
	move	$s1, $zero
	move	$s2, $zero
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               #   in Loop: Header=BB13_3 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bgeu	$s2, $a2, .LBB13_5
.LBB13_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -104
	ldx.d	$a1, $a0, $s1
	ld.w	$a0, $a1, 32
	addi.w	$a0, $a0, -1
	st.w	$a0, $a1, 32
	bnez	$a0, .LBB13_2
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free_PNode)
	jirl	$ra, $ra, 0
	ld.wu	$a2, $fp, -112
	b	.LBB13_2
.LBB13_5:                               # %._crit_edge.i
	ld.d	$a0, $fp, -104
	beqz	$a0, .LBB13_8
# %bb.6:                                # %._crit_edge.i
	addi.d	$a1, $fp, -96
	beq	$a0, $a1, .LBB13_8
# %bb.7:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB13_8:
	ld.d	$a1, $fp, -48
	st.w	$zero, $fp, -112
	st.d	$zero, $fp, -104
	beqz	$a1, .LBB13_10
# %bb.9:
	st.d	$zero, $fp, -48
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(free_PNode)
	jr	$t8
.LBB13_10:                              # %free_ParseTreeBelow.exit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end13:
	.size	free_D_ParseTreeBelow, .Lfunc_end13-free_D_ParseTreeBelow
                                        # -- End function
	.globl	ambiguity_count_fn              # -- Begin function ambiguity_count_fn
	.p2align	5
	.type	ambiguity_count_fn,@function
ambiguity_count_fn:                     # @ambiguity_count_fn
# %bb.0:
	ld.w	$a3, $a0, 176
	ld.d	$a2, $a2, 0
	add.d	$a1, $a1, $a3
	addi.d	$a1, $a1, -1
	st.w	$a1, $a0, 176
	move	$a0, $a2
	ret
.Lfunc_end14:
	.size	ambiguity_count_fn, .Lfunc_end14-ambiguity_count_fn
                                        # -- End function
	.globl	ambiguity_abort_fn              # -- Begin function ambiguity_abort_fn
	.p2align	5
	.type	ambiguity_abort_fn,@function
ambiguity_abort_fn:                     # @ambiguity_abort_fn
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	pcalau12i	$a0, %got_pc_hi20(verbose_level)
	ld.d	$a0, $a0, %got_pc_lo12(verbose_level)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB15_4
# %bb.1:
	move	$s0, $a1
	blez	$a1, .LBB15_4
# %bb.2:                                # %.lr.ph.preheader
	move	$s1, $fp
	.p2align	4, , 16
.LBB15_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	addi.d	$a0, $a0, -152
	pcaddu18i	$ra, %call36(print_paren)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	bnez	$s0, .LBB15_3
.LBB15_4:                               # %.loopexit
	ld.d	$a0, $fp, 0
	ld.w	$a1, $a0, 32
	ld.d	$a2, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end15:
	.size	ambiguity_abort_fn, .Lfunc_end15-ambiguity_abort_fn
                                        # -- End function
	.globl	d_pass                          # -- Begin function d_pass
	.p2align	5
	.type	d_pass,@function
d_pass:                                 # @d_pass
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 144
	ld.w	$a3, $a0, 48
	move	$s1, $a2
	move	$s0, $a1
	bltu	$a2, $a3, .LBB16_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 144
.LBB16_2:
	ld.d	$a0, $a0, 56
	slli.d	$a1, $s1, 4
	alsl.d	$a1, $s1, $a1, 3
	add.d	$a1, $a0, $a1
	ld.wu	$a0, $a1, 12
	andi	$a3, $a0, 4
	addi.d	$a2, $s0, -152
	bnez	$a3, .LBB16_6
# %bb.3:
	andi	$a3, $a0, 1
	bnez	$a3, .LBB16_11
# %bb.4:
	andi	$a0, $a0, 2
	beqz	$a0, .LBB16_10
# %bb.5:
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(pass_postorder)
	jr	$t8
.LBB16_6:
	ld.d	$a0, $s0, -136
	beqz	$a0, .LBB16_10
# %bb.7:
	ld.w	$a3, $a0, 40
	ld.w	$a1, $a1, 16
	bgeu	$a1, $a3, .LBB16_10
# %bb.8:
	ld.d	$a0, $a0, 48
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a5, $a0, $a1
	beqz	$a5, .LBB16_10
# %bb.9:
	ld.d	$a1, $s0, -104
	ld.w	$a4, $s0, -112
	ori	$a3, $zero, 152
	move	$a0, $a2
	move	$a2, $a4
	move	$a4, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	jr	$a5
.LBB16_10:                              # %pass_call.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB16_11:
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(pass_preorder)
	jr	$t8
.Lfunc_end16:
	.size	d_pass, .Lfunc_end16-d_pass
                                        # -- End function
	.p2align	5                               # -- Begin function pass_preorder
	.type	pass_preorder,@function
pass_preorder:                          # @pass_preorder
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	ld.d	$a2, $a2, 16
	move	$s0, $a1
	move	$s1, $a0
	beqz	$a2, .LBB17_4
# %bb.1:
	ld.w	$a1, $a2, 40
	ld.w	$a0, $s0, 16
	bgeu	$a0, $a1, .LBB17_6
# %bb.2:
	ld.d	$a1, $a2, 48
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a2, $a1, $a0
	ldx.d	$a5, $a1, $a0
	sltu	$s2, $zero, $a2
	beqz	$a5, .LBB17_5
# %bb.3:
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 40
	ori	$a3, $zero, 152
	move	$a0, $fp
	move	$a4, $s1
	jirl	$ra, $a5, 0
	ld.wu	$a0, $s0, 12
	andi	$a1, $a0, 8
	beqz	$a1, .LBB17_7
	b	.LBB17_8
.LBB17_4:
	move	$s2, $zero
.LBB17_5:                               # %pass_call.exit
	ld.wu	$a0, $s0, 12
	andi	$a1, $a0, 8
	beqz	$a1, .LBB17_7
	b	.LBB17_8
.LBB17_6:
	move	$s2, $zero
	ld.wu	$a0, $s0, 12
	andi	$a1, $a0, 8
	bnez	$a1, .LBB17_8
.LBB17_7:
	andi	$a0, $a0, 16
	sltui	$a0, $a0, 1
	or	$a0, $a0, $s2
	andi	$a0, $a0, 1
	bnez	$a0, .LBB17_11
.LBB17_8:
	ld.w	$a0, $fp, 40
	beqz	$a0, .LBB17_11
# %bb.9:                                # %.lr.ph
	move	$s2, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB17_10:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 48
	ldx.d	$a2, $a0, $s2
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(pass_preorder)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 40
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bltu	$s3, $a0, .LBB17_10
.LBB17_11:                              # %.loopexit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end17:
	.size	pass_preorder, .Lfunc_end17-pass_preorder
                                        # -- End function
	.p2align	5                               # -- Begin function pass_postorder
	.type	pass_postorder,@function
pass_postorder:                         # @pass_postorder
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	ld.d	$a2, $a2, 16
	move	$s1, $a1
	move	$s0, $a0
	beqz	$a2, .LBB18_3
# %bb.1:
	ld.w	$a1, $a2, 40
	ld.w	$a0, $s1, 16
	bgeu	$a0, $a1, .LBB18_3
# %bb.2:
	ld.d	$a1, $a2, 48
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	sltu	$a0, $zero, $a0
	ld.wu	$a1, $s1, 12
	andi	$a3, $a1, 8
	beqz	$a3, .LBB18_4
	b	.LBB18_5
.LBB18_3:
	move	$a0, $zero
	ld.wu	$a1, $s1, 12
	andi	$a3, $a1, 8
	bnez	$a3, .LBB18_5
.LBB18_4:
	andi	$a1, $a1, 16
	sltui	$a1, $a1, 1
	or	$a0, $a1, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB18_9
.LBB18_5:
	ld.w	$a0, $fp, 40
	beqz	$a0, .LBB18_9
# %bb.6:                                # %.lr.ph
	move	$s2, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB18_7:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 48
	ldx.d	$a2, $a0, $s2
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(pass_postorder)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 40
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bltu	$s3, $a0, .LBB18_7
# %bb.8:                                # %.loopexit.loopexit
	ld.d	$a2, $fp, 16
.LBB18_9:                               # %.loopexit
	beqz	$a2, .LBB18_13
# %bb.10:
	ld.w	$a1, $a2, 40
	ld.w	$a0, $s1, 16
	bgeu	$a0, $a1, .LBB18_13
# %bb.11:
	ld.d	$a1, $a2, 48
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a5, $a1, $a0
	beqz	$a5, .LBB18_13
# %bb.12:
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 40
	ori	$a3, $zero, 152
	move	$a0, $fp
	move	$a4, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	jr	$a5
.LBB18_13:                              # %pass_call.exit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end18:
	.size	pass_postorder, .Lfunc_end18-pass_postorder
                                        # -- End function
	.globl	null_white_space                # -- Begin function null_white_space
	.p2align	5
	.type	null_white_space,@function
null_white_space:                       # @null_white_space
# %bb.0:
	ret
.Lfunc_end19:
	.size	null_white_space, .Lfunc_end19-null_white_space
                                        # -- End function
	.globl	new_D_Parser                    # -- Begin function new_D_Parser
	.p2align	5
	.type	new_D_Parser,@function
new_D_Parser:                           # @new_D_Parser
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 432
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 144
	st.w	$s1, $a0, 72
	st.w	$s0, $a0, 84
	ori	$a1, $zero, 100
	lu32i.d	$a1, 1
	st.d	$a1, $a0, 112
	pcalau12i	$a1, %pc_hi20(syntax_error_report_fn)
	addi.d	$a1, $a1, %pc_lo12(syntax_error_report_fn)
	st.d	$a1, $a0, 24
	pcalau12i	$a1, %pc_hi20(ambiguity_abort_fn)
	addi.d	$a2, $a1, %pc_lo12(ambiguity_abort_fn)
	ld.w	$a3, $fp, 64
	ld.d	$a1, $fp, 40
	st.d	$a2, $a0, 32
	st.w	$a3, $a0, 88
	bnez	$a1, .LBB20_4
# %bb.1:
	ld.w	$a1, $fp, 24
	beqz	$a1, .LBB20_3
# %bb.2:
	pcalau12i	$a1, %pc_hi20(parse_whitespace)
	addi.d	$a1, $a1, %pc_lo12(parse_whitespace)
	b	.LBB20_4
.LBB20_3:
	pcalau12i	$a1, %pc_hi20(white_space)
	addi.d	$a1, $a1, %pc_lo12(white_space)
.LBB20_4:
	st.d	$a1, $a0, 8
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end20:
	.size	new_D_Parser, .Lfunc_end20-new_D_Parser
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function syntax_error_report_fn
	.type	syntax_error_report_fn,@function
syntax_error_report_fn:                 # @syntax_error_report_fn
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 56
	pcaddu18i	$ra, %call36(d_dup_pathname_str)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.w	$a3, $fp, 72
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end21:
	.size	syntax_error_report_fn, .Lfunc_end21-syntax_error_report_fn
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function parse_whitespace
	.type	parse_whitespace,@function
parse_whitespace:                       # @parse_whitespace
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a2, $a0, 144
	move	$s0, $a1
	ld.d	$fp, $a0, 416
	ld.d	$a0, $a1, 0
	ld.w	$a1, $a2, 24
	st.d	$a0, $fp, 128
	move	$a0, $fp
	pcaddu18i	$ra, %call36(exhaustive_parse)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB22_5
# %bb.1:
	ld.d	$a0, $fp, 280
	beqz	$a0, .LBB22_5
# %bb.2:
	vld	$vr0, $a0, 40
	vst	$vr0, $s0, 16
	vld	$vr0, $a0, 24
	vst	$vr0, $s0, 0
	ld.d	$a1, $fp, 280
	ld.w	$a0, $a1, 112
	addi.w	$a0, $a0, -1
	st.w	$a0, $a1, 112
	bnez	$a0, .LBB22_4
# %bb.3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_SNode)
	jirl	$ra, $ra, 0
.LBB22_4:
	st.d	$zero, $fp, 280
.LBB22_5:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end22:
	.size	parse_whitespace, .Lfunc_end22-parse_whitespace
                                        # -- End function
	.p2align	5                               # -- Begin function white_space
	.type	white_space,@function
white_space:                            # @white_space
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
	move	$fp, $a1
	ld.d	$s5, $a1, 0
	ld.d	$a0, $a0, 48
	xor	$a0, $a0, $s5
	ld.bu	$a1, $s5, 0
	sltui	$a0, $a0, 1
	maskeqz	$s2, $s5, $a0
	ori	$s3, $zero, 35
	pcalau12i	$a0, %pc_hi20(_wspace)
	addi.d	$s4, $a0, %pc_lo12(_wspace)
	bne	$a1, $s3, .LBB23_2
# %bb.1:
	ld.w	$a0, $fp, 16
	beqz	$a0, .LBB23_30
.LBB23_2:                               # %.critedge
	ori	$a0, $zero, 47
	ori	$a1, $zero, 10
	ori	$a2, $zero, 42
	ori	$a3, $zero, 41
	b	.LBB23_4
	.p2align	4, , 16
.LBB23_3:                               # %.critedge2
                                        #   in Loop: Header=BB23_4 Depth=1
	ld.w	$a4, $fp, 24
	addi.d	$a4, $a4, 1
	st.w	$a4, $fp, 24
.LBB23_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_14 Depth 2
                                        #       Child Loop BB23_15 Depth 3
                                        #         Child Loop BB23_18 Depth 4
                                        #     Child Loop BB23_8 Depth 2
	move	$a5, $s5
	ld.bu	$a4, $s5, 0
	ldx.bu	$a6, $s4, $a4
	addi.d	$s5, $s5, 1
	bnez	$a6, .LBB23_4
# %bb.5:                                #   in Loop: Header=BB23_4 Depth=1
	bne	$a4, $a0, .LBB23_10
# %bb.6:                                #   in Loop: Header=BB23_4 Depth=1
	ld.bu	$a4, $s5, 0
	bne	$a4, $a0, .LBB23_12
# %bb.7:                                # %.preheader.preheader
                                        #   in Loop: Header=BB23_4 Depth=1
	addi.d	$s5, $a5, 1
	andi	$a4, $a4, 255
	beqz	$a4, .LBB23_3
	.p2align	4, , 16
.LBB23_8:                               # %.preheader
                                        #   Parent Loop BB23_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a4, $a1, .LBB23_3
# %bb.9:                                #   in Loop: Header=BB23_8 Depth=2
	ld.bu	$a4, $s5, 0
	addi.d	$s5, $s5, 1
	andi	$a4, $a4, 255
	bnez	$a4, .LBB23_8
	b	.LBB23_3
.LBB23_10:                              #   in Loop: Header=BB23_4 Depth=1
	bne	$a4, $a1, .LBB23_29
# %bb.11:                               #   in Loop: Header=BB23_4 Depth=1
	ld.w	$a4, $fp, 24
	addi.d	$a4, $a4, 1
	st.w	$a4, $fp, 24
	ld.bu	$a4, $s5, 0
	move	$s2, $s5
	bne	$a4, $s3, .LBB23_4
	b	.LBB23_30
.LBB23_12:                              #   in Loop: Header=BB23_4 Depth=1
	bne	$a4, $a2, .LBB23_29
# %bb.13:                               # %.preheader110.preheader
                                        #   in Loop: Header=BB23_4 Depth=1
	move	$a4, $zero
.LBB23_14:                              # %.preheader110
                                        #   Parent Loop BB23_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB23_15 Depth 3
                                        #         Child Loop BB23_18 Depth 4
	addi.d	$a6, $a5, 2
	addi.d	$a4, $a4, 1
.LBB23_15:                              #   Parent Loop BB23_4 Depth=1
                                        #     Parent Loop BB23_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB23_18 Depth 4
	addi.d	$a5, $a6, 1
	b	.LBB23_18
	.p2align	4, , 16
.LBB23_16:                              #   in Loop: Header=BB23_18 Depth=4
	ld.bu	$a6, $a5, 0
	beq	$a6, $a2, .LBB23_26
.LBB23_17:                              # %.thread108
                                        #   in Loop: Header=BB23_18 Depth=4
	addi.d	$a5, $a5, 1
.LBB23_18:                              #   Parent Loop BB23_4 Depth=1
                                        #     Parent Loop BB23_14 Depth=2
                                        #       Parent Loop BB23_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$a6, $a5, -1
	bge	$a3, $a6, .LBB23_22
# %bb.19:                               #   in Loop: Header=BB23_18 Depth=4
	beq	$a6, $a0, .LBB23_16
# %bb.20:                               #   in Loop: Header=BB23_18 Depth=4
	bne	$a6, $a2, .LBB23_17
# %bb.21:                               #   in Loop: Header=BB23_18 Depth=4
	ld.bu	$a6, $a5, 0
	bne	$a6, $a0, .LBB23_17
	b	.LBB23_25
	.p2align	4, , 16
.LBB23_22:                              #   in Loop: Header=BB23_18 Depth=4
	bne	$a6, $a1, .LBB23_24
# %bb.23:                               #   in Loop: Header=BB23_18 Depth=4
	ld.w	$a6, $fp, 24
	addi.d	$a6, $a6, 1
	st.w	$a6, $fp, 24
	move	$s2, $a5
	b	.LBB23_17
.LBB23_24:                              #   in Loop: Header=BB23_18 Depth=4
	bnez	$a6, .LBB23_17
	b	.LBB23_28
	.p2align	4, , 16
.LBB23_25:                              #   in Loop: Header=BB23_15 Depth=3
	addi.w	$a4, $a4, -1
	addi.d	$a6, $a5, 1
	bnez	$a4, .LBB23_15
	b	.LBB23_27
	.p2align	4, , 16
.LBB23_26:                              # %.preheader110.loopexit
                                        #   in Loop: Header=BB23_14 Depth=2
	addi.d	$a5, $a5, -1
	b	.LBB23_14
.LBB23_27:                              # %.outer.backedge.loopexit
                                        #   in Loop: Header=BB23_4 Depth=1
	addi.d	$s5, $a5, 1
	b	.LBB23_4
.LBB23_28:                              # %.thread.loopexit
	addi.d	$a5, $a5, -1
.LBB23_29:                              # %.thread
	sltui	$a0, $s2, 1
	sub.d	$a1, $a5, $s2
	masknez	$a1, $a1, $a0
	addi.d	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	st.w	$a0, $fp, 20
	st.d	$a5, $fp, 0
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
.LBB23_30:                              # %.loopexit112
	addi.d	$s1, $s5, 4
	.p2align	4, , 16
.LBB23_31:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$s6, $s1, -3
	ldx.bu	$a0, $s4, $s6
	addi.d	$s1, $s1, 1
	bnez	$a0, .LBB23_31
# %bb.32:
	addi.d	$s0, $s1, -4
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 4
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB23_35
# %bb.33:
	ld.bu	$a0, $s1, 0
	ldx.bu	$a0, $s4, $a0
	beqz	$a0, .LBB23_35
	.p2align	4, , 16
.LBB23_34:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$s6, $s1, 1
	ldx.bu	$a0, $s4, $s6
	addi.d	$s0, $s1, 1
	move	$s1, $s0
	bnez	$a0, .LBB23_34
.LBB23_35:                              # %.loopexit114
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ext.w.b	$a1, $s6
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 52
	bgez	$a0, .LBB23_44
# %bb.36:
	ori	$a2, $zero, 10
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, 24
	addi.d	$s5, $s0, -2
	.p2align	4, , 16
.LBB23_37:                              # =>This Inner Loop Header: Depth=1
	ld.b	$a0, $s5, 2
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $a1, $a0
	slli.d	$a0, $a0, 52
	addi.d	$s5, $s5, 1
	bltz	$a0, .LBB23_37
	.p2align	4, , 16
.LBB23_38:                              # %.preheader113
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s5, 1
	ldx.bu	$a1, $s4, $a0
	addi.d	$s5, $s5, 1
	bnez	$a1, .LBB23_38
# %bb.39:
	ori	$a1, $zero, 34
	bne	$a0, $a1, .LBB23_41
# %bb.40:
	st.d	$s5, $fp, 8
.LBB23_41:                              # %.preheader191
	ori	$a0, $zero, 10
	ld.bu	$a1, $s5, 0
	beqz	$a1, .LBB23_2
	.p2align	4, , 16
.LBB23_42:                              # =>This Inner Loop Header: Depth=1
	beq	$a1, $a0, .LBB23_2
# %bb.43:                               #   in Loop: Header=BB23_42 Depth=1
	addi.d	$s5, $s5, 1
	ld.bu	$a1, $s5, 0
	bnez	$a1, .LBB23_42
	b	.LBB23_2
.LBB23_44:
	move	$a5, $s5
	b	.LBB23_29
.Lfunc_end23:
	.size	white_space, .Lfunc_end23-white_space
                                        # -- End function
	.globl	free_D_Parser                   # -- Begin function free_D_Parser
	.p2align	5
	.type	free_D_Parser,@function
free_D_Parser:                          # @free_D_Parser
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 272
	beqz	$a0, .LBB24_3
# %bb.1:
	ld.d	$a1, $fp, 16
	bnez	$a1, .LBB24_3
# %bb.2:
	move	$a1, $zero
	pcaddu18i	$ra, %call36(free_D_Scope)
	jirl	$ra, $ra, 0
.LBB24_3:
	ld.d	$a0, $fp, 416
	beqz	$a0, .LBB24_5
# %bb.4:
	pcaddu18i	$ra, %call36(free_D_Parser)
	jirl	$ra, $ra, 0
.LBB24_5:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end24:
	.size	free_D_Parser, .Lfunc_end24-free_D_Parser
                                        # -- End function
	.globl	free_D_ParseNode                # -- Begin function free_D_ParseNode
	.p2align	5
	.type	free_D_ParseNode,@function
free_D_ParseNode:                       # @free_D_ParseNode
# %bb.0:
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB25_3
# %bb.1:
	ld.w	$a2, $a1, -120
	addi.w	$a2, $a2, -1
	st.w	$a2, $a1, -120
	beqz	$a2, .LBB25_4
# %bb.2:
	pcaddu18i	$t8, %call36(free_parser_working_data)
	jr	$t8
.LBB25_3:
	ret
.LBB25_4:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	addi.d	$a1, $a1, -152
	move	$fp, $a0
	pcaddu18i	$ra, %call36(free_PNode)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free_parser_working_data)
	jr	$t8
.Lfunc_end25:
	.size	free_D_ParseNode, .Lfunc_end25-free_D_ParseNode
                                        # -- End function
	.p2align	5                               # -- Begin function free_PNode
	.type	free_PNode,@function
free_PNode:                             # @free_PNode
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a2, $a0, 40
	move	$s0, $a1
	beqz	$a2, .LBB26_2
# %bb.1:
	addi.d	$a0, $s0, 152
	jirl	$ra, $a2, 0
.LBB26_2:
	ld.wu	$a0, $s0, 40
	beqz	$a0, .LBB26_7
# %bb.3:                                # %.lr.ph
	move	$s1, $zero
	move	$s2, $zero
	b	.LBB26_5
	.p2align	4, , 16
.LBB26_4:                               #   in Loop: Header=BB26_5 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bgeu	$s2, $a0, .LBB26_7
.LBB26_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 48
	ldx.d	$a1, $a1, $s1
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, -1
	st.w	$a2, $a1, 32
	bnez	$a2, .LBB26_4
# %bb.6:                                #   in Loop: Header=BB26_5 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_PNode)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s0, 40
	b	.LBB26_4
.LBB26_7:                               # %._crit_edge
	ld.d	$a0, $s0, 48
	beqz	$a0, .LBB26_10
# %bb.8:                                # %._crit_edge
	addi.d	$a1, $s0, 56
	beq	$a0, $a1, .LBB26_10
# %bb.9:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB26_10:
	ld.d	$a1, $s0, 104
	st.w	$zero, $s0, 40
	st.d	$zero, $s0, 48
	beqz	$a1, .LBB26_12
# %bb.11:
	st.d	$zero, $s0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_PNode)
	jirl	$ra, $ra, 0
.LBB26_12:
	ld.d	$a1, $s0, 112
	beq	$a1, $s0, .LBB26_15
# %bb.13:
	ld.w	$a0, $a1, 32
	addi.w	$a0, $a0, -1
	st.w	$a0, $a1, 32
	bnez	$a0, .LBB26_15
# %bb.14:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_PNode)
	jirl	$ra, $ra, 0
.LBB26_15:
	ld.d	$a0, $fp, 320
	st.d	$a0, $s0, 88
	st.d	$s0, $fp, 320
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end26:
	.size	free_PNode, .Lfunc_end26-free_PNode
                                        # -- End function
	.p2align	5                               # -- Begin function free_parser_working_data
	.type	free_parser_working_data,@function
free_parser_working_data:               # @free_parser_working_data
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(free_old_nodes)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_old_nodes)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 184
	beqz	$a0, .LBB27_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB27_2:
	ld.d	$a0, $fp, 216
	addi.d	$s0, $fp, 184
	beqz	$a0, .LBB27_4
# %bb.3:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB27_4:
	ori	$a2, $zero, 72
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 256
	beqz	$a0, .LBB27_9
# %bb.5:                                # %.lr.ph
	ld.d	$s0, $fp, 296
	b	.LBB27_7
	.p2align	4, , 16
.LBB27_6:                               #   in Loop: Header=BB27_7 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 256
	st.d	$s0, $fp, 296
	beqz	$a0, .LBB27_9
.LBB27_7:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 8
	ld.w	$a2, $a1, 112
	move	$a0, $s0
	ld.d	$s0, $s0, 40
	addi.w	$a2, $a2, -1
	st.w	$a2, $a1, 112
	bnez	$a2, .LBB27_6
# %bb.8:                                #   in Loop: Header=BB27_7 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_SNode)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 296
	b	.LBB27_6
.LBB27_9:                               # %.preheader92
	ld.d	$a0, $fp, 264
	beqz	$a0, .LBB27_14
# %bb.10:                               # %.lr.ph95
	ld.d	$s0, $fp, 304
	b	.LBB27_12
	.p2align	4, , 16
.LBB27_11:                              #   in Loop: Header=BB27_12 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 264
	st.d	$s0, $fp, 304
	beqz	$a0, .LBB27_14
.LBB27_12:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 0
	ld.w	$a2, $a1, 112
	move	$a0, $s0
	ld.d	$s0, $s0, 8
	addi.w	$a2, $a2, -1
	st.w	$a2, $a1, 112
	bnez	$a2, .LBB27_11
# %bb.13:                               #   in Loop: Header=BB27_12 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_SNode)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 304
	b	.LBB27_11
.LBB27_14:                              # %.preheader91
	ld.d	$a0, $fp, 296
	beqz	$a0, .LBB27_16
	.p2align	4, , 16
.LBB27_15:                              # %.lr.ph97
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 40
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$s0, $fp, 296
	move	$a0, $s0
	bnez	$s0, .LBB27_15
.LBB27_16:                              # %.preheader90
	ld.d	$a0, $fp, 304
	beqz	$a0, .LBB27_18
	.p2align	4, , 16
.LBB27_17:                              # %.lr.ph99
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$s0, $fp, 304
	move	$a0, $s0
	bnez	$s0, .LBB27_17
.LBB27_18:                              # %.preheader89
	ld.d	$a0, $fp, 320
	beqz	$a0, .LBB27_20
	.p2align	4, , 16
.LBB27_19:                              # %.lr.ph101
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 88
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$s0, $fp, 320
	move	$a0, $s0
	bnez	$s0, .LBB27_19
.LBB27_20:                              # %.preheader88
	ld.d	$a0, $fp, 336
	beqz	$a0, .LBB27_22
	.p2align	4, , 16
.LBB27_21:                              # %.lr.ph103
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$s0, $fp, 336
	move	$a0, $s0
	bnez	$s0, .LBB27_21
.LBB27_22:                              # %.preheader87
	ld.d	$a0, $fp, 328
	beqz	$a0, .LBB27_24
	.p2align	4, , 16
.LBB27_23:                              # %.lr.ph105
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 128
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$s0, $fp, 328
	move	$a0, $s0
	bnez	$s0, .LBB27_23
.LBB27_24:                              # %.preheader
	ld.w	$a0, $fp, 344
	beqz	$a0, .LBB27_27
# %bb.25:                               # %.lr.ph107
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB27_26:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 352
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 344
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	bltu	$s1, $a0, .LBB27_26
.LBB27_27:                              # %._crit_edge
	ld.d	$a0, $fp, 352
	beqz	$a0, .LBB27_30
# %bb.28:                               # %._crit_edge
	addi.d	$a1, $fp, 360
	beq	$a0, $a1, .LBB27_30
# %bb.29:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB27_30:
	ld.d	$a0, $fp, 416
	st.w	$zero, $fp, 344
	st.d	$zero, $fp, 352
	beqz	$a0, .LBB27_32
# %bb.31:
	pcaddu18i	$ra, %call36(free_parser_working_data)
	jirl	$ra, $ra, 0
.LBB27_32:
	ld.d	$a0, $fp, 384
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 384
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end27:
	.size	free_parser_working_data, .Lfunc_end27-free_parser_working_data
                                        # -- End function
	.globl	new_subparser                   # -- Begin function new_subparser
	.p2align	5
	.type	new_subparser,@function
new_subparser:                          # @new_subparser
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 144
	ld.w	$s1, $a0, 84
	ori	$a0, $zero, 1
	ori	$a1, $zero, 432
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 144
	st.w	$s2, $a0, 72
	st.w	$s1, $a0, 84
	ori	$a1, $zero, 100
	lu32i.d	$a1, 1
	st.d	$a1, $a0, 112
	pcalau12i	$a1, %pc_hi20(syntax_error_report_fn)
	addi.d	$a1, $a1, %pc_lo12(syntax_error_report_fn)
	st.d	$a1, $a0, 24
	pcalau12i	$a1, %pc_hi20(ambiguity_abort_fn)
	addi.d	$a2, $a1, %pc_lo12(ambiguity_abort_fn)
	ld.w	$a3, $s0, 64
	ld.d	$a1, $s0, 40
	st.d	$a2, $a0, 32
	st.w	$a3, $a0, 88
	bnez	$a1, .LBB28_4
# %bb.1:
	ld.w	$a1, $s0, 24
	beqz	$a1, .LBB28_3
# %bb.2:
	pcalau12i	$a1, %pc_hi20(parse_whitespace)
	addi.d	$a1, $a1, %pc_lo12(parse_whitespace)
	b	.LBB28_4
.LBB28_3:
	pcalau12i	$a1, %pc_hi20(white_space)
	addi.d	$a1, $a1, %pc_lo12(white_space)
.LBB28_4:                               # %new_D_Parser.exit
	st.d	$a1, $a0, 8
	ld.d	$a1, $fp, 136
	ld.d	$a2, $fp, 424
	st.d	$a1, $a0, 136
	st.d	$a2, $a0, 424
	ori	$a1, $zero, 10
	st.w	$a1, $a0, 192
	pcalau12i	$a1, %got_pc_hi20(prime2)
	ld.d	$s1, $a1, %got_pc_lo12(prime2)
	ld.wu	$a1, $s1, 40
	st.w	$a1, $a0, 196
	slli.d	$a1, $a1, 3
	move	$fp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s1, 32
	st.d	$a0, $fp, 184
	ori	$a0, $zero, 8
	st.w	$a0, $fp, 224
	st.w	$a1, $fp, 228
	slli.d	$a1, $a1, 3
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s0, 28
	st.d	$a0, $fp, 216
	ori	$a0, $zero, 40
	mul.d	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 384
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end28:
	.size	new_subparser, .Lfunc_end28-new_subparser
                                        # -- End function
	.globl	dparse                          # -- Begin function dparse
	.p2align	5
	.type	dparse,@function
dparse:                                 # @dparse
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 144
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 160
	ld.w	$a0, $s0, 24
	st.w	$zero, $fp, 152
	st.d	$a1, $fp, 128
	add.d	$a1, $a1, $a2
	st.d	$a1, $fp, 136
	beqz	$a0, .LBB29_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(new_subparser)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 416
	pcalau12i	$a1, %pc_hi20(null_white_space)
	addi.d	$a1, $a1, %pc_lo12(null_white_space)
	st.d	$a1, $a0, 8
	ld.d	$s0, $fp, 144
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $a0, 116
.LBB29_2:                               # %initialize_whitespace_parser.exit
	ori	$a0, $zero, 10
	st.w	$a0, $fp, 192
	pcalau12i	$a0, %got_pc_hi20(prime2)
	ld.d	$s1, $a0, %got_pc_lo12(prime2)
	ld.wu	$a0, $s1, 40
	st.w	$a0, $fp, 196
	slli.d	$a1, $a0, 3
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s1, 32
	st.d	$a0, $fp, 184
	ori	$a0, $zero, 8
	st.w	$a0, $fp, 224
	st.w	$a1, $fp, 228
	slli.d	$a1, $a1, 3
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s0, 28
	st.d	$a0, $fp, 216
	ori	$a0, $zero, 40
	mul.d	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $fp, 384
	beqz	$a1, .LBB29_5
# %bb.3:
	st.d	$a1, $fp, 272
	ld.w	$a1, $fp, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(exhaustive_parse)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_8
.LBB29_4:
	move	$s0, $zero
	b	.LBB29_22
.LBB29_5:
	ld.d	$a0, $fp, 272
	beqz	$a0, .LBB29_7
# %bb.6:
	move	$a1, $zero
	pcaddu18i	$ra, %call36(free_D_Scope)
	jirl	$ra, $ra, 0
.LBB29_7:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(new_D_Scope)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 272
	ld.b	$a1, $a0, 0
	ori	$a1, $a1, 6
	st.b	$a1, $a0, 0
	ld.w	$a1, $fp, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(exhaustive_parse)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB29_4
.LBB29_8:
	ld.d	$s0, $fp, 280
	ld.w	$a1, $s0, 72
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB29_10
# %bb.9:
	ld.d	$a1, $s0, 80
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a1, 40
	beq	$a2, $a0, .LBB29_11
.LBB29_10:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 80
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 0
.LBB29_11:
	ld.d	$a0, $a1, 112
	ld.d	$a0, $a0, 48
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(commit_tree)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(verbose_level)
	ld.d	$s1, $a0, %got_pc_lo12(verbose_level)
	ld.w	$a0, $s1, 0
	beqz	$a0, .LBB29_17
# %bb.12:
	ld.w	$a1, $fp, 152
	ld.w	$a2, $fp, 160
	ld.w	$a3, $fp, 164
	ld.w	$a4, $fp, 168
	ld.w	$a5, $fp, 172
	ld.w	$a6, $fp, 176
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 88
	beqz	$a0, .LBB29_17
# %bb.13:
	ld.w	$a0, $s1, 0
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB29_15
# %bb.14:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(xprint_paren)
	jirl	$ra, $ra, 0
	b	.LBB29_16
.LBB29_15:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(print_paren)
	jirl	$ra, $ra, 0
.LBB29_16:
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
.LBB29_17:
	ld.w	$a0, $fp, 88
	beqz	$a0, .LBB29_19
# %bb.18:
	ld.w	$a0, $s0, 32
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 32
	addi.d	$s0, $s0, 152
	b	.LBB29_20
.LBB29_19:
	ori	$s0, $zero, 1
.LBB29_20:
	ld.d	$a1, $fp, 280
	ld.w	$a0, $a1, 112
	addi.w	$a0, $a0, -1
	st.w	$a0, $a1, 112
	bnez	$a0, .LBB29_22
# %bb.21:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_SNode)
	jirl	$ra, $ra, 0
.LBB29_22:
	st.d	$zero, $fp, 280
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_parser_working_data)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end29:
	.size	dparse, .Lfunc_end29-dparse
                                        # -- End function
	.p2align	5                               # -- Begin function exhaustive_parse
	.type	exhaustive_parse,@function
exhaustive_parse:                       # @exhaustive_parse
# %bb.0:
	addi.d	$sp, $sp, -608
	st.d	$ra, $sp, 600                   # 8-byte Folded Spill
	st.d	$fp, $sp, 592                   # 8-byte Folded Spill
	st.d	$s0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s1, $sp, 576                   # 8-byte Folded Spill
	st.d	$s2, $sp, 568                   # 8-byte Folded Spill
	st.d	$s3, $sp, 560                   # 8-byte Folded Spill
	st.d	$s4, $sp, 552                   # 8-byte Folded Spill
	st.d	$s5, $sp, 544                   # 8-byte Folded Spill
	st.d	$s6, $sp, 536                   # 8-byte Folded Spill
	st.d	$s7, $sp, 528                   # 8-byte Folded Spill
	st.d	$s8, $sp, 520                   # 8-byte Folded Spill
	move	$s8, $a0
	ld.d	$a0, $a0, 128
	move	$s0, $a1
	st.d	$a0, $s8, 48
	ld.d	$a1, $s8, 56
	vld	$vr0, $s8, 64
	ld.d	$a3, $s8, 8
	st.d	$a0, $sp, 184
	st.d	$a1, $sp, 192
	vst	$vr0, $sp, 200
	addi.d	$a1, $sp, 184
	move	$a0, $s8
	move	$a2, $s8
	jirl	$ra, $a3, 0
	ld.d	$a0, $s8, 144
	ld.d	$a0, $a0, 8
	ld.d	$a3, $s8, 272
	ld.d	$a4, $s8, 0
	ori	$a1, $zero, 120
	mul.d	$a1, $s0, $a1
	add.d	$a1, $a0, $a1
	addi.d	$a2, $sp, 184
	move	$a0, $s8
	pcaddu18i	$ra, %call36(add_SNode)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a0, $sp, 216
	ori	$a2, $zero, 240
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 8
	ld.d	$a1, $s8, 0
	ld.d	$a2, $s8, 272
	st.d	$a0, $sp, 432
	ld.d	$a3, $sp, 184
	st.d	$a1, $sp, 440
	st.d	$a2, $sp, 424
	st.d	$a2, $sp, 352
	st.d	$a3, $sp, 408
	addi.d	$a2, $sp, 184
	addi.d	$a4, $sp, 216
	move	$a0, $s8
	move	$a1, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(add_PNode)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s0, 64
	ld.d	$a1, $s8, 336
	addi.d	$s2, $s0, 72
	beqz	$a1, .LBB30_2
# %bb.1:
	ld.d	$a0, $a1, 0
	st.d	$a0, $s8, 336
	b	.LBB30_3
.LBB30_2:
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB30_3:                               # %new_ZNode.exit
	addi.d	$s3, $s8, 48
	st.d	$s1, $a1, 0
	st.w	$zero, $a1, 8
	st.d	$zero, $a1, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(set_add_znode)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 32
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 32
	addi.d	$a0, $s8, 264
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $s8, 344
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $s8, 360
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $s8, 392
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $s8, 400
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $s8, 395
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $s8, 396
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 19
	ori	$a0, $a0, 2176
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1806
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$s5, $zero, 10
	lu12i.w	$a0, -69906
	ori	$a0, $a0, 3823
	lu32i.d	$a0, -69906
	lu52i.d	$a0, $a0, -274
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 112                   # 8-byte Folded Spill
.LBB30_4:                               # %.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_7 Depth 2
                                        #       Child Loop BB30_9 Depth 3
                                        #         Child Loop BB30_13 Depth 4
                                        #       Child Loop BB30_26 Depth 3
                                        #       Child Loop BB30_32 Depth 3
                                        #         Child Loop BB30_36 Depth 4
                                        #           Child Loop BB30_47 Depth 5
                                        #           Child Loop BB30_39 Depth 5
                                        #         Child Loop BB30_59 Depth 4
                                        #           Child Loop BB30_63 Depth 5
                                        #       Child Loop BB30_78 Depth 3
                                        #       Child Loop BB30_95 Depth 3
                                        #         Child Loop BB30_97 Depth 4
                                        #           Child Loop BB30_100 Depth 5
                                        #     Child Loop BB30_110 Depth 2
                                        #       Child Loop BB30_120 Depth 3
                                        #         Child Loop BB30_130 Depth 4
                                        #           Child Loop BB30_131 Depth 5
                                        #     Child Loop BB30_153 Depth 2
                                        #       Child Loop BB30_165 Depth 3
                                        #         Child Loop BB30_172 Depth 4
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	b	.LBB30_7
	.p2align	4, , 16
.LBB30_5:                               # %._crit_edge259.i
                                        #   in Loop: Header=BB30_7 Depth=2
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB30_70
.LBB30_6:                               # %error_recovery.exit
                                        #   in Loop: Header=BB30_7 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
.LBB30_7:                               #   Parent Loop BB30_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB30_9 Depth 3
                                        #         Child Loop BB30_13 Depth 4
                                        #       Child Loop BB30_26 Depth 3
                                        #       Child Loop BB30_32 Depth 3
                                        #         Child Loop BB30_36 Depth 4
                                        #           Child Loop BB30_47 Depth 5
                                        #           Child Loop BB30_39 Depth 5
                                        #         Child Loop BB30_59 Depth 4
                                        #           Child Loop BB30_63 Depth 5
                                        #       Child Loop BB30_78 Depth 3
                                        #       Child Loop BB30_95 Depth 3
                                        #         Child Loop BB30_97 Depth 4
                                        #           Child Loop BB30_100 Depth 5
	ld.d	$a1, $s8, 256
	beqz	$a1, .LBB30_16
# %bb.8:                                # %.lr.ph164.preheader
                                        #   in Loop: Header=BB30_7 Depth=2
	ori	$s4, $zero, 1
.LBB30_9:                               # %.lr.ph164
                                        #   Parent Loop BB30_4 Depth=1
                                        #     Parent Loop BB30_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB30_13 Depth 4
	ld.d	$a2, $a1, 8
	ld.d	$a0, $s1, 0
	ld.d	$fp, $a2, 24
	beqz	$a0, .LBB30_11
# %bb.10:                               #   in Loop: Header=BB30_9 Depth=3
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 24
	bltu	$a0, $fp, .LBB30_15
.LBB30_11:                              #   in Loop: Header=BB30_9 Depth=3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bgeu	$a0, $fp, .LBB30_13
# %bb.12:                               #   in Loop: Header=BB30_9 Depth=3
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free_old_nodes)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 256
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	beqz	$a1, .LBB30_103
	.p2align	4, , 16
.LBB30_13:                              # %.lr.ph
                                        #   Parent Loop BB30_4 Depth=1
                                        #     Parent Loop BB30_7 Depth=2
                                        #       Parent Loop BB30_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $a1, 8
	ld.d	$a0, $a0, 24
	bne	$a0, $fp, .LBB30_9
# %bb.14:                               #   in Loop: Header=BB30_13 Depth=4
	ld.d	$a0, $a1, 40
	st.d	$a0, $s8, 256
	move	$a0, $s8
	pcaddu18i	$ra, %call36(reduce_one)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 256
	bnez	$a1, .LBB30_13
.LBB30_15:                              # %._crit_edge
                                        #   in Loop: Header=BB30_7 Depth=2
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB30_17
	b	.LBB30_104
	.p2align	4, , 16
.LBB30_16:                              #   in Loop: Header=BB30_7 Depth=2
	ori	$s4, $zero, 1
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB30_104
.LBB30_17:                              #   in Loop: Header=BB30_7 Depth=2
	ld.d	$a0, $s8, 280
	beqz	$a0, .LBB30_20
# %bb.18:                               #   in Loop: Header=BB30_7 Depth=2
	ld.d	$a0, $a0, 24
	ld.d	$a1, $s8, 136
	beq	$a0, $a1, .LBB30_183
# %bb.19:                               #   in Loop: Header=BB30_7 Depth=2
	ld.w	$a0, $s8, 120
	bnez	$a0, .LBB30_183
.LBB30_20:                              #   in Loop: Header=BB30_7 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 248
	move	$s6, $a0
	ori	$a0, $zero, 1
	beqz	$a1, .LBB30_184
# %bb.21:                               #   in Loop: Header=BB30_7 Depth=2
	vld	$vr0, $a1, 40
	vst	$vr0, $s3, 16
	vld	$vr0, $a1, 24
	ld.w	$a3, $s8, 116
	vst	$vr0, $s3, 0
	beqz	$a3, .LBB30_184
# %bb.22:                               #   in Loop: Header=BB30_7 Depth=2
	ld.w	$a0, $s8, 72
	ld.w	$a2, $s8, 288
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	bge	$a2, $a0, .LBB30_24
# %bb.23:                               #   in Loop: Header=BB30_7 Depth=2
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $fp, 124
	ld.d	$a2, $fp, 24
	st.w	$a0, $fp, 288
	addi.d	$a0, $a1, 1
	st.w	$a0, $fp, 124
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a1, $fp, 248
	beqz	$a1, .LBB30_182
.LBB30_24:                              # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB30_7 Depth=2
	move	$s5, $zero
	move	$a0, $a1
	b	.LBB30_26
	.p2align	4, , 16
.LBB30_25:                              #   in Loop: Header=BB30_26 Depth=3
	ld.d	$a0, $a0, 128
	beqz	$a0, .LBB30_28
.LBB30_26:                              # %.lr.ph.i
                                        #   Parent Loop BB30_4 Depth=1
                                        #     Parent Loop BB30_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	$s0, $s5, .LBB30_25
# %bb.27:                               #   in Loop: Header=BB30_26 Depth=3
	slli.d	$a2, $s5, 3
	addi.w	$s5, $s5, 1
	stx.d	$a0, $s6, $a2
	b	.LBB30_25
	.p2align	4, , 16
.LBB30_28:                              # %._crit_edge.i
                                        #   in Loop: Header=BB30_7 Depth=2
	blez	$s5, .LBB30_182
# %bb.29:                               # %.lr.ph244.i.preheader
                                        #   in Loop: Header=BB30_7 Depth=2
	ld.d	$a0, $a1, 24
	move	$t0, $zero
	move	$s2, $zero
	move	$s7, $zero
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s6, $sp, 128                   # 8-byte Folded Spill
	b	.LBB30_32
	.p2align	4, , 16
.LBB30_30:                              #   in Loop: Header=BB30_32 Depth=3
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
.LBB30_31:                              # %.loopexit216.i
                                        #   in Loop: Header=BB30_32 Depth=3
	addi.d	$t0, $t0, 1
	bge	$t0, $s5, .LBB30_65
.LBB30_32:                              # %.lr.ph244.i
                                        #   Parent Loop BB30_4 Depth=1
                                        #     Parent Loop BB30_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB30_36 Depth 4
                                        #           Child Loop BB30_47 Depth 5
                                        #           Child Loop BB30_39 Depth 5
                                        #         Child Loop BB30_59 Depth 4
                                        #           Child Loop BB30_63 Depth 5
	st.d	$t0, $sp, 136                   # 8-byte Folded Spill
	slli.d	$a0, $t0, 3
	ldx.d	$s3, $s6, $a0
	ld.d	$a0, $s3, 0
	ld.wu	$s0, $a0, 48
	beqz	$s0, .LBB30_56
# %bb.33:                               # %.preheader217.i
                                        #   in Loop: Header=BB30_32 Depth=3
	ld.d	$s8, $a0, 56
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	move	$fp, $zero
	st.d	$s8, $sp, 160                   # 8-byte Folded Spill
	b	.LBB30_36
	.p2align	4, , 16
.LBB30_34:                              #   in Loop: Header=BB30_36 Depth=4
	st.d	$s6, $sp, 144                   # 8-byte Folded Spill
	move	$s7, $a0
	move	$s2, $s3
.LBB30_35:                              # %find_substr.exit.thread.i
                                        #   in Loop: Header=BB30_36 Depth=4
	addi.d	$fp, $fp, 1
	beq	$fp, $s0, .LBB30_56
.LBB30_36:                              #   Parent Loop BB30_4 Depth=1
                                        #     Parent Loop BB30_7 Depth=2
                                        #       Parent Loop BB30_32 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB30_47 Depth 5
                                        #           Child Loop BB30_39 Depth 5
	alsl.d	$s6, $fp, $s8, 4
	ld.d	$s1, $s6, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 0
	bne	$a1, $s4, .LBB30_45
# %bb.37:                               # %.preheader.i.i
                                        #   in Loop: Header=BB30_36 Depth=4
	ld.bu	$a1, $s1, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	beqz	$a2, .LBB30_42
# %bb.38:                               # %.lr.ph28.i.i.preheader
                                        #   in Loop: Header=BB30_36 Depth=4
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB30_39:                              # %.lr.ph28.i.i
                                        #   Parent Loop BB30_4 Depth=1
                                        #     Parent Loop BB30_7 Depth=2
                                        #       Parent Loop BB30_32 Depth=3
                                        #         Parent Loop BB30_36 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	beq	$a2, $a1, .LBB30_44
# %bb.40:                               #   in Loop: Header=BB30_39 Depth=5
	ld.bu	$a2, $a0, 0
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB30_39
# %bb.41:                               # %.critedge.i.i.loopexit
                                        #   in Loop: Header=BB30_36 Depth=4
	addi.d	$a0, $a0, -1
.LBB30_42:                              # %.critedge.i.i
                                        #   in Loop: Header=BB30_36 Depth=4
	bnez	$a1, .LBB30_35
# %bb.43:                               #   in Loop: Header=BB30_36 Depth=4
	addi.d	$a0, $a0, 1
.LBB30_44:                              # %find_substr.exit.thread209.i
                                        #   in Loop: Header=BB30_36 Depth=4
	bnez	$s2, .LBB30_51
	b	.LBB30_34
	.p2align	4, , 16
.LBB30_45:                              # %.preheader21.i.i
                                        #   in Loop: Header=BB30_36 Depth=4
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	beqz	$a1, .LBB30_35
# %bb.46:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB30_36 Depth=4
	move	$s8, $s0
	move	$s0, $s3
	move	$s3, $s7
	move	$s7, $s2
	addi.w	$s2, $a0, 0
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB30_47:                              #   Parent Loop BB30_4 Depth=1
                                        #     Parent Loop BB30_7 Depth=2
                                        #       Parent Loop BB30_32 Depth=3
                                        #         Parent Loop BB30_36 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB30_50
# %bb.48:                               #   in Loop: Header=BB30_47 Depth=5
	ld.bu	$a0, $s4, 1
	addi.d	$s4, $s4, 1
	bnez	$a0, .LBB30_47
# %bb.49:                               #   in Loop: Header=BB30_36 Depth=4
	ori	$s4, $zero, 1
	move	$s2, $s7
	move	$s7, $s3
	move	$s3, $s0
	move	$s0, $s8
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	b	.LBB30_35
.LBB30_50:                              # %find_substr.exit.i
                                        #   in Loop: Header=BB30_36 Depth=4
	add.d	$a0, $s4, $s2
	ori	$s4, $zero, 1
	move	$s2, $s7
	move	$s7, $s3
	move	$s3, $s0
	move	$s0, $s8
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	beqz	$s2, .LBB30_34
.LBB30_51:                              # %find_substr.exit.thread209.i
                                        #   in Loop: Header=BB30_36 Depth=4
	bltu	$a0, $s7, .LBB30_34
# %bb.52:                               #   in Loop: Header=BB30_36 Depth=4
	bne	$a0, $s7, .LBB30_35
# %bb.53:                               #   in Loop: Header=BB30_36 Depth=4
	ld.w	$a1, $s2, 56
	ld.w	$a2, $s3, 56
	bltu	$a1, $a2, .LBB30_34
# %bb.54:                               #   in Loop: Header=BB30_36 Depth=4
	bne	$a1, $a2, .LBB30_35
# %bb.55:                               #   in Loop: Header=BB30_36 Depth=4
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.hu	$a1, $a1, 0
	ld.hu	$a2, $s6, 0
	bltu	$a1, $a2, .LBB30_34
	b	.LBB30_35
	.p2align	4, , 16
.LBB30_56:                              # %.loopexit218.i
                                        #   in Loop: Header=BB30_32 Depth=3
	ld.wu	$a0, $s3, 72
	beqz	$a0, .LBB30_30
# %bb.57:                               # %.lr.ph236.i
                                        #   in Loop: Header=BB30_32 Depth=3
	ld.d	$a1, $s3, 80
	move	$a2, $zero
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	b	.LBB30_59
	.p2align	4, , 16
.LBB30_58:                              # %.loopexit.i
                                        #   in Loop: Header=BB30_59 Depth=4
	addi.d	$a2, $a2, 1
	beq	$a2, $a0, .LBB30_31
.LBB30_59:                              #   Parent Loop BB30_4 Depth=1
                                        #     Parent Loop BB30_7 Depth=2
                                        #       Parent Loop BB30_32 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB30_63 Depth 5
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a1, $a3
	beqz	$a3, .LBB30_58
# %bb.60:                               # %.preheader215.i
                                        #   in Loop: Header=BB30_59 Depth=4
	ld.wu	$a5, $a3, 8
	beqz	$a5, .LBB30_58
# %bb.61:                               # %.lr.ph231.i
                                        #   in Loop: Header=BB30_59 Depth=4
	move	$a4, $zero
	slli.d	$a5, $a5, 3
	b	.LBB30_63
	.p2align	4, , 16
.LBB30_62:                              #   in Loop: Header=BB30_63 Depth=5
	addi.d	$a4, $a4, 8
	beq	$a5, $a4, .LBB30_58
.LBB30_63:                              #   Parent Loop BB30_4 Depth=1
                                        #     Parent Loop BB30_7 Depth=2
                                        #       Parent Loop BB30_32 Depth=3
                                        #         Parent Loop BB30_59 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	blt	$t1, $s5, .LBB30_62
# %bb.64:                               #   in Loop: Header=BB30_63 Depth=5
	ld.d	$a6, $a3, 16
	ldx.d	$a6, $a6, $a4
	slli.d	$a7, $s5, 3
	addi.w	$s5, $s5, 1
	stx.d	$a6, $s6, $a7
	b	.LBB30_62
	.p2align	4, , 16
.LBB30_65:                              # %._crit_edge245.i
                                        #   in Loop: Header=BB30_7 Depth=2
	beqz	$s2, .LBB30_182
# %bb.66:                               #   in Loop: Header=BB30_7 Depth=2
	ori	$a0, $zero, 1
	ori	$a1, $zero, 56
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	vld	$vr0, $s3, 16
	vld	$vr1, $s3, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a2, 352
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	vst	$vr0, $sp, 504
	vst	$vr1, $sp, 488
	beqz	$a1, .LBB30_71
# %bb.67:                               #   in Loop: Header=BB30_7 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ori	$s5, $zero, 10
	beq	$a1, $a2, .LBB30_72
# %bb.68:                               #   in Loop: Header=BB30_7 Depth=2
	andi	$a2, $a0, 7
	beqz	$a2, .LBB30_74
# %bb.69:                               #   in Loop: Header=BB30_7 Depth=2
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	slli.d	$a0, $a2, 3
	stx.d	$s4, $a1, $a0
	b	.LBB30_75
	.p2align	4, , 16
.LBB30_70:                              #   in Loop: Header=BB30_7 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 256
	bnez	$a0, .LBB30_6
	b	.LBB30_182
	.p2align	4, , 16
.LBB30_71:                              #   in Loop: Header=BB30_7 Depth=2
	ld.wu	$a0, $a2, 344
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	st.d	$a3, $a2, 352
	addi.d	$a1, $a0, 1
	st.w	$a1, $a2, 344
	slli.d	$a0, $a0, 3
	stx.d	$s4, $a3, $a0
	ori	$s5, $zero, 10
	b	.LBB30_75
.LBB30_72:                              #   in Loop: Header=BB30_7 Depth=2
	ori	$a2, $zero, 2
	bltu	$a2, $a0, .LBB30_74
# %bb.73:                               #   in Loop: Header=BB30_7 Depth=2
	addi.d	$a2, $a0, 1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	slli.d	$a0, $a0, 3
	stx.d	$s4, $a1, $a0
	b	.LBB30_75
	.p2align	4, , 16
.LBB30_74:                              #   in Loop: Header=BB30_7 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $s4
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB30_75:                              #   in Loop: Header=BB30_7 Depth=2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.h	$a0, $a1, 0
	addi.d	$a0, $a0, 1
	st.h	$a0, $s4, 0
	ld.h	$a1, $a1, 2
	ld.d	$a0, $sp, 488
	st.h	$a1, $s4, 2
	bgeu	$a0, $s7, .LBB30_80
# %bb.76:                               # %.lr.ph.i204.preheader.i
                                        #   in Loop: Header=BB30_7 Depth=2
	ld.w	$a1, $sp, 512
	b	.LBB30_78
	.p2align	4, , 16
.LBB30_77:                              #   in Loop: Header=BB30_78 Depth=3
	addi.d	$a0, $a0, 1
	beq	$a0, $s7, .LBB30_80
.LBB30_78:                              # %.lr.ph.i204.i
                                        #   Parent Loop BB30_4 Depth=1
                                        #     Parent Loop BB30_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a2, $a0, 0
	bne	$a2, $s5, .LBB30_77
# %bb.79:                               #   in Loop: Header=BB30_78 Depth=3
	addi.d	$a1, $a1, 1
	st.w	$a1, $sp, 512
	b	.LBB30_77
	.p2align	4, , 16
.LBB30_80:                              # %update_line.exit.i
                                        #   in Loop: Header=BB30_7 Depth=2
	ld.d	$a0, $s2, 80
	st.d	$s7, $sp, 488
	ld.d	$a0, $a0, 0
	ld.d	$s1, $a0, 0
	ld.d	$a3, $s1, 216
	addi.d	$a2, $s1, 224
	addi.d	$a1, $sp, 488
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	move	$a0, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $s2, 112
	ld.d	$a3, $sp, 488
	addi.d	$a0, $a0, 1
	st.w	$a0, $s2, 112
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s3
	move	$a4, $s1
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(add_PNode)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$s7, $s2
	ld.d	$a1, $s2, 0
	ld.d	$a3, $a0, 136
	ld.d	$a4, $a0, 144
	addi.d	$a2, $sp, 488
	move	$a0, $fp
	pcaddu18i	$ra, %call36(new_SNode)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$s1, $a0, 64
	ld.d	$s6, $fp, 336
	beqz	$s6, .LBB30_82
# %bb.81:                               #   in Loop: Header=BB30_7 Depth=2
	ld.d	$a0, $s6, 0
	st.d	$a0, $fp, 336
	b	.LBB30_83
	.p2align	4, , 16
.LBB30_82:                              #   in Loop: Header=BB30_7 Depth=2
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
.LBB30_83:                              # %new_ZNode.exit.i
                                        #   in Loop: Header=BB30_7 Depth=2
	addi.d	$a0, $s2, 72
	st.d	$s1, $s6, 0
	st.w	$zero, $s6, 8
	st.d	$zero, $s6, 16
	move	$a1, $s6
	pcaddu18i	$ra, %call36(set_add_znode)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 32
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 32
	ld.d	$a1, $s6, 16
	addi.d	$a3, $s6, 24
	beqz	$a1, .LBB30_87
# %bb.84:                               #   in Loop: Header=BB30_7 Depth=2
	addi.d	$a0, $s6, 8
	ld.w	$a2, $a0, 0
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	beq	$a1, $a3, .LBB30_88
# %bb.85:                               #   in Loop: Header=BB30_7 Depth=2
	andi	$a3, $a2, 7
	beqz	$a3, .LBB30_91
# %bb.86:                               #   in Loop: Header=BB30_7 Depth=2
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	b	.LBB30_90
	.p2align	4, , 16
.LBB30_87:                              #   in Loop: Header=BB30_7 Depth=2
	ld.wu	$a0, $s6, 8
	st.d	$a3, $s6, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s6, 8
	slli.d	$a0, $a0, 3
	move	$fp, $s7
	stx.d	$s7, $a3, $a0
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	b	.LBB30_92
.LBB30_88:                              #   in Loop: Header=BB30_7 Depth=2
	ori	$a3, $zero, 2
	bltu	$a3, $a2, .LBB30_91
# %bb.89:                               #   in Loop: Header=BB30_7 Depth=2
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
.LBB30_90:                              #   in Loop: Header=BB30_7 Depth=2
	move	$fp, $s7
	stx.d	$s7, $a1, $a0
	b	.LBB30_92
	.p2align	4, , 16
.LBB30_91:                              #   in Loop: Header=BB30_7 Depth=2
	move	$fp, $s7
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB30_92:                              #   in Loop: Header=BB30_7 Depth=2
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	st.d	$s6, $s7, 0
	st.d	$s2, $s7, 8
	ld.w	$a0, $fp, 112
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 112
	st.d	$s4, $s7, 16
	st.d	$zero, $s7, 24
	st.d	$zero, $s7, 40
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_old_nodes)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(reduce_one)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 144
	ld.wu	$a0, $a0, 0
	ori	$t0, $zero, 257
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB30_5
# %bb.93:                               # %.lr.ph258.i
                                        #   in Loop: Header=BB30_7 Depth=2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 216
	move	$a2, $zero
	b	.LBB30_95
	.p2align	4, , 16
.LBB30_94:                              # %._crit_edge255.i
                                        #   in Loop: Header=BB30_95 Depth=3
	addi.d	$a2, $a2, 1
	beq	$a2, $a0, .LBB30_5
.LBB30_95:                              #   Parent Loop BB30_4 Depth=1
                                        #     Parent Loop BB30_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB30_97 Depth 4
                                        #           Child Loop BB30_100 Depth 5
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a1, $a3
	bnez	$a3, .LBB30_97
	b	.LBB30_94
	.p2align	4, , 16
.LBB30_96:                              # %._crit_edge251.i
                                        #   in Loop: Header=BB30_97 Depth=4
	ld.d	$a3, $a3, 120
	beqz	$a3, .LBB30_94
.LBB30_97:                              # %.preheader.i
                                        #   Parent Loop BB30_4 Depth=1
                                        #     Parent Loop BB30_7 Depth=2
                                        #       Parent Loop BB30_95 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB30_100 Depth 5
	ld.wu	$a4, $a3, 72
	beqz	$a4, .LBB30_96
# %bb.98:                               # %.lr.ph250.i
                                        #   in Loop: Header=BB30_97 Depth=4
	ld.d	$a5, $a3, 80
	b	.LBB30_100
	.p2align	4, , 16
.LBB30_99:                              #   in Loop: Header=BB30_100 Depth=5
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	beqz	$a4, .LBB30_96
.LBB30_100:                             #   Parent Loop BB30_4 Depth=1
                                        #     Parent Loop BB30_7 Depth=2
                                        #       Parent Loop BB30_95 Depth=3
                                        #         Parent Loop BB30_97 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a6, $a5, 0
	beqz	$a6, .LBB30_99
# %bb.101:                              #   in Loop: Header=BB30_100 Depth=5
	ld.d	$a6, $a6, 0
	ld.d	$a7, $a6, 16
	bne	$a7, $s4, .LBB30_99
# %bb.102:                              #   in Loop: Header=BB30_100 Depth=5
	st.h	$t0, $a6, 84
	b	.LBB30_99
.LBB30_103:                             #   in Loop: Header=BB30_7 Depth=2
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB30_17
.LBB30_104:                             #   in Loop: Header=BB30_4 Depth=1
	ld.w	$a0, $s8, 92
	bnez	$a0, .LBB30_143
# %bb.105:                              #   in Loop: Header=BB30_4 Depth=1
	ld.d	$a0, $s1, 8
	beqz	$a0, .LBB30_143
# %bb.106:                              #   in Loop: Header=BB30_4 Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$fp, $a0, 24
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	b	.LBB30_110
.LBB30_107:                             #   in Loop: Header=BB30_110 Depth=2
	ld.d	$a1, $a0, 8
	st.d	$a1, $a6, 0
	ld.w	$a1, $a2, 112
	addi.w	$a1, $a1, -1
	st.w	$a1, $a2, 112
	beqz	$a1, .LBB30_141
.LBB30_108:                             #   in Loop: Header=BB30_110 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB30_109:                             # %.critedge2.i
                                        #   in Loop: Header=BB30_110 Depth=2
	addi.d	$s2, $s1, 8
	ld.d	$s1, $s1, 8
	beqz	$s1, .LBB30_142
.LBB30_110:                             #   Parent Loop BB30_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB30_120 Depth 3
                                        #         Child Loop BB30_130 Depth 4
                                        #           Child Loop BB30_131 Depth 5
	ld.d	$a1, $s1, 0
	ld.d	$a0, $a1, 24
	bne	$a0, $fp, .LBB30_142
# %bb.111:                              #   in Loop: Header=BB30_110 Depth=2
	ld.w	$a0, $a1, 72
	bne	$a0, $s4, .LBB30_109
# %bb.112:                              #   in Loop: Header=BB30_110 Depth=2
	ld.d	$a0, $a1, 80
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a3, 0
	ld.w	$a0, $a4, 8
	bne	$a0, $s5, .LBB30_116
# %bb.113:                              #   in Loop: Header=BB30_110 Depth=2
	ld.w	$a0, $a3, 8
	bne	$a0, $s4, .LBB30_109
# %bb.114:                              #   in Loop: Header=BB30_110 Depth=2
	ld.d	$a0, $a3, 16
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a0, 72
	bne	$a2, $s4, .LBB30_109
# %bb.115:                              #   in Loop: Header=BB30_110 Depth=2
	ld.d	$a0, $a0, 80
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a3, 0
	ld.w	$a0, $a4, 8
	.p2align	4, , 16
.LBB30_116:                             #   in Loop: Header=BB30_110 Depth=2
	andi	$a0, $a0, 16
	beqz	$a0, .LBB30_109
# %bb.117:                              # %binary_op_ZNode.exit.i
                                        #   in Loop: Header=BB30_110 Depth=2
	ld.d	$a5, $s1, 8
	beqz	$a5, .LBB30_109
# %bb.118:                              # %.lr.ph.i105
                                        #   in Loop: Header=BB30_110 Depth=2
	addi.d	$a6, $s1, 8
	move	$a0, $a5
	b	.LBB30_120
	.p2align	4, , 16
.LBB30_119:                             # %binary_op_ZNode.exit71.thread.i
                                        #   in Loop: Header=BB30_120 Depth=3
	addi.d	$a6, $a0, 8
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB30_109
.LBB30_120:                             #   Parent Loop BB30_4 Depth=1
                                        #     Parent Loop BB30_110 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB30_130 Depth 4
                                        #           Child Loop BB30_131 Depth 5
	ld.d	$a2, $a0, 0
	ld.d	$a7, $a2, 24
	bne	$a7, $fp, .LBB30_109
# %bb.121:                              #   in Loop: Header=BB30_120 Depth=3
	ld.w	$a7, $a2, 72
	bne	$a7, $s4, .LBB30_119
# %bb.122:                              #   in Loop: Header=BB30_120 Depth=3
	ld.d	$a7, $a2, 80
	ld.d	$t0, $a7, 0
	ld.d	$a7, $t0, 0
	ld.w	$t1, $a7, 8
	bne	$t1, $s5, .LBB30_126
# %bb.123:                              #   in Loop: Header=BB30_120 Depth=3
	ld.w	$a7, $t0, 8
	bne	$a7, $s4, .LBB30_119
# %bb.124:                              #   in Loop: Header=BB30_120 Depth=3
	ld.d	$a7, $t0, 16
	ld.d	$a7, $a7, 0
	ld.w	$t0, $a7, 72
	bne	$t0, $s4, .LBB30_119
# %bb.125:                              #   in Loop: Header=BB30_120 Depth=3
	ld.d	$a7, $a7, 80
	ld.d	$t0, $a7, 0
	ld.d	$a7, $t0, 0
	ld.w	$t1, $a7, 8
	.p2align	4, , 16
.LBB30_126:                             #   in Loop: Header=BB30_120 Depth=3
	andi	$t1, $t1, 16
	beqz	$t1, .LBB30_119
# %bb.127:                              # %binary_op_ZNode.exit71.i
                                        #   in Loop: Header=BB30_120 Depth=3
	ld.w	$t3, $a3, 8
	ld.w	$t1, $t0, 8
	bne	$t3, $t1, .LBB30_119
# %bb.128:                              # %.preheader17.i.i
                                        #   in Loop: Header=BB30_120 Depth=3
	beqz	$t3, .LBB30_134
# %bb.129:                              # %.preheader.lr.ph.split.i.i
                                        #   in Loop: Header=BB30_120 Depth=3
	ld.d	$t1, $a3, 16
	ld.d	$t0, $t0, 16
	move	$t2, $zero
	bstrpick.d	$t3, $t3, 31, 0
.LBB30_130:                             # %.preheader.i.i106
                                        #   Parent Loop BB30_4 Depth=1
                                        #     Parent Loop BB30_110 Depth=2
                                        #       Parent Loop BB30_120 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB30_131 Depth 5
	slli.d	$t4, $t2, 3
	ldx.d	$t4, $t1, $t4
	move	$t5, $t0
	move	$t6, $t3
	.p2align	4, , 16
.LBB30_131:                             #   Parent Loop BB30_4 Depth=1
                                        #     Parent Loop BB30_110 Depth=2
                                        #       Parent Loop BB30_120 Depth=3
                                        #         Parent Loop BB30_130 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$t7, $t5, 0
	beq	$t4, $t7, .LBB30_133
# %bb.132:                              #   in Loop: Header=BB30_131 Depth=5
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	bnez	$t6, .LBB30_131
	b	.LBB30_119
.LBB30_133:                             #   in Loop: Header=BB30_130 Depth=4
	addi.d	$t2, $t2, 1
	bne	$t2, $t3, .LBB30_130
.LBB30_134:                             # %VecSNode_equal.exit.i
                                        #   in Loop: Header=BB30_120 Depth=3
	ld.d	$t2, $s8, 144
	ld.d	$t0, $a1, 0
	ld.d	$t1, $a2, 0
	ld.d	$t2, $t2, 8
	ld.w	$t3, $t0, 112
	sub.d	$t4, $t1, $t2
	srai.d	$t4, $t4, 3
	ld.d	$t5, $sp, 16                    # 8-byte Folded Reload
	mul.d	$t4, $t4, $t5
	beq	$t4, $t3, .LBB30_136
# %bb.135:                              #   in Loop: Header=BB30_120 Depth=3
	ld.w	$t1, $t1, 112
	sub.d	$t0, $t0, $t2
	srai.d	$t0, $t0, 3
	ld.d	$t2, $sp, 16                    # 8-byte Folded Reload
	mul.d	$t0, $t0, $t2
	bne	$t0, $t1, .LBB30_119
.LBB30_136:                             #   in Loop: Header=BB30_120 Depth=3
	ld.w	$t0, $a4, 12
	ld.w	$a7, $a7, 12
	blt	$a7, $t0, .LBB30_107
# %bb.137:                              #   in Loop: Header=BB30_120 Depth=3
	bge	$t0, $a7, .LBB30_119
# %bb.138:                              #   in Loop: Header=BB30_110 Depth=2
	st.d	$a5, $s2, 0
	ld.w	$a0, $a1, 112
	addi.w	$a0, $a0, -1
	st.w	$a0, $a1, 112
	bnez	$a0, .LBB30_140
# %bb.139:                              #   in Loop: Header=BB30_110 Depth=2
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free_SNode)
	jirl	$ra, $ra, 0
.LBB30_140:                             #   in Loop: Header=BB30_110 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s2, 0
	b	.LBB30_109
.LBB30_141:                             #   in Loop: Header=BB30_110 Depth=2
	move	$s2, $a0
	move	$a0, $s8
	move	$a1, $a2
	pcaddu18i	$ra, %call36(free_SNode)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	b	.LBB30_108
.LBB30_142:                             # %cmp_stacks.exit.loopexit
                                        #   in Loop: Header=BB30_4 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $a0, 0
.LBB30_143:                             # %cmp_stacks.exit
                                        #   in Loop: Header=BB30_4 Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$s4, $a0, 24
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bgeu	$a0, $s4, .LBB30_145
# %bb.144:                              #   in Loop: Header=BB30_4 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free_old_nodes)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s8, 264
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
.LBB30_145:                             #   in Loop: Header=BB30_4 Depth=1
	ld.w	$a1, $s8, 112
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a0, $a2, 1
	bge	$a2, $a1, .LBB30_147
# %bb.146:                              #   in Loop: Header=BB30_4 Depth=1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bnez	$s1, .LBB30_150
	b	.LBB30_4
.LBB30_147:                             #   in Loop: Header=BB30_4 Depth=1
	ld.d	$a1, $s1, 8
	ori	$fp, $zero, 1
	beqz	$a1, .LBB30_149
# %bb.148:                              #   in Loop: Header=BB30_4 Depth=1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB30_153
.LBB30_149:                             #   in Loop: Header=BB30_4 Depth=1
	ld.d	$a1, $s1, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(commit_stack)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s8, 264
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	beqz	$s1, .LBB30_4
.LBB30_150:                             #   in Loop: Header=BB30_4 Depth=1
	move	$fp, $zero
	b	.LBB30_153
	.p2align	4, , 16
.LBB30_151:                             # %._crit_edge.i111
                                        #   in Loop: Header=BB30_153 Depth=2
	ld.d	$a1, $s1, 0
	ld.w	$a0, $a1, 112
	addi.w	$a0, $a0, -1
	st.w	$a0, $a1, 112
	beqz	$a0, .LBB30_177
.LBB30_152:                             # %shift_one.exit
                                        #   in Loop: Header=BB30_153 Depth=2
	ld.d	$a0, $s8, 304
	st.d	$a0, $s1, 8
	st.d	$s1, $s8, 304
	ld.d	$s1, $s8, 264
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ori	$s5, $zero, 10
	beqz	$s1, .LBB30_178
.LBB30_153:                             # %.lr.ph171
                                        #   Parent Loop BB30_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB30_165 Depth 3
                                        #         Child Loop BB30_172 Depth 4
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 24
	bne	$a1, $s4, .LBB30_178
# %bb.154:                              #   in Loop: Header=BB30_153 Depth=2
	ld.d	$a1, $s1, 8
	addi.d	$a2, $a0, 24
	st.d	$a1, $s8, 264
	vld	$vr0, $a2, 16
	ld.w	$a1, $s8, 160
	ld.d	$s2, $a0, 0
	vst	$vr0, $sp, 504
	vld	$vr0, $a2, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s8, 160
	ld.d	$a0, $s2, 72
	vst	$vr0, $sp, 488
	st.d	$zero, $sp, 456
	beqz	$a0, .LBB30_157
# %bb.155:                              #   in Loop: Header=BB30_153 Depth=2
	ld.d	$a0, $s8, 384
	vld	$vr0, $sp, 504
	st.w	$zero, $s8, 400
	st.b	$zero, $s8, 395
	vst	$vr0, $a0, 24
	vld	$vr0, $sp, 488
	vst	$vr0, $a0, 8
	ld.d	$a2, $s8, 384
	ld.d	$a7, $s2, 72
	addi.d	$a0, $a2, 8
	addi.d	$a1, $a2, 28
	addi.d	$a2, $a2, 32
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	move	$a3, $s3
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	jirl	$ra, $a7, 0
	beqz	$a0, .LBB30_157
# %bb.156:                              #   in Loop: Header=BB30_153 Depth=2
	ld.d	$a0, $s8, 384
	st.d	$s3, $a0, 0
	ori	$s5, $zero, 1
	ld.d	$a0, $s2, 80
	bnez	$a0, .LBB30_158
	b	.LBB30_159
	.p2align	4, , 16
.LBB30_157:                             #   in Loop: Header=BB30_153 Depth=2
	move	$s5, $zero
	ld.d	$a0, $s2, 80
	beqz	$a0, .LBB30_159
.LBB30_158:                             #   in Loop: Header=BB30_153 Depth=2
	ld.d	$a0, $s8, 384
	slli.d	$a1, $s5, 3
	slli.d	$a2, $s5, 5
	or	$a1, $a2, $a1
	add.d	$a2, $a0, $a1
	addi.d	$a0, $sp, 488
	move	$a1, $s2
	pcaddu18i	$ra, %call36(scan_buffer)
	jirl	$ra, $ra, 0
	add.w	$s5, $a0, $s5
.LBB30_159:                             #   in Loop: Header=BB30_153 Depth=2
	blez	$s5, .LBB30_151
# %bb.160:                              # %.lr.ph.i112
                                        #   in Loop: Header=BB30_153 Depth=2
	move	$s2, $zero
	move	$s6, $zero
	b	.LBB30_165
	.p2align	4, , 16
.LBB30_161:                             # %.critedge13.i.i
                                        #   in Loop: Header=BB30_165 Depth=3
	ld.d	$a1, $s8, 128
.LBB30_162:                             # %find_ws_before.exit.i
                                        #   in Loop: Header=BB30_165 Depth=3
	ld.d	$a0, $sp, 456
	st.d	$a1, $s3, 120
	st.d	$a0, $s3, 128
.LBB30_163:                             #   in Loop: Header=BB30_165 Depth=3
	addi.d	$a1, $sp, 456
	move	$a0, $s8
	move	$a2, $s3
	pcaddu18i	$ra, %call36(goto_PNode)
	jirl	$ra, $ra, 0
.LBB30_164:                             #   in Loop: Header=BB30_165 Depth=3
	addi.d	$s2, $s2, 1
	beq	$s2, $s5, .LBB30_151
.LBB30_165:                             #   Parent Loop BB30_4 Depth=1
                                        #     Parent Loop BB30_153 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB30_172 Depth 4
	ld.w	$a0, $s8, 164
	ld.d	$a1, $s8, 384
	slli.d	$a2, $s2, 5
	alsl.d	$a2, $s2, $a2, 3
	addi.d	$a0, $a0, 1
	st.w	$a0, $s8, 164
	ldx.d	$a7, $a1, $a2
	ld.d	$a0, $s1, 0
	add.d	$s7, $a1, $a2
	ld.hu	$a1, $a7, 0
	ld.d	$a3, $s7, 8
	ld.d	$a4, $a0, 64
	addi.d	$a2, $a0, 24
	move	$a0, $s8
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(add_PNode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB30_164
# %bb.166:                              #   in Loop: Header=BB30_165 Depth=3
	move	$s3, $a0
	ld.d	$a1, $sp, 456
	addi.d	$a0, $s7, 8
	beqz	$a1, .LBB30_169
# %bb.167:                              #   in Loop: Header=BB30_165 Depth=3
	ld.d	$a2, $a0, 0
	bne	$a1, $a2, .LBB30_169
# %bb.168:                              #   in Loop: Header=BB30_165 Depth=3
	ld.d	$a1, $s3, 216
	beq	$s6, $a1, .LBB30_176
	.p2align	4, , 16
.LBB30_169:                             #   in Loop: Header=BB30_165 Depth=3
	vld	$vr0, $a0, 16
	vst	$vr0, $sp, 472
	vld	$vr0, $a0, 0
	ld.d	$s6, $s3, 216
	vst	$vr0, $sp, 456
	addi.d	$a2, $s3, 224
	addi.d	$a1, $sp, 456
	move	$a0, $s8
	jirl	$ra, $s6, 0
	ld.d	$a3, $s1, 0
	ld.w	$a0, $a3, 44
	bltz	$a0, .LBB30_171
# %bb.170:                              #   in Loop: Header=BB30_165 Depth=3
	ld.d	$a1, $a3, 80
	st.w	$a0, $sp, 472
	ld.d	$a0, $a1, 0
	bnez	$a0, .LBB30_172
	b	.LBB30_161
	.p2align	4, , 16
.LBB30_171:                             #   in Loop: Header=BB30_165 Depth=3
	ld.w	$a0, $a3, 40
	ld.d	$a1, $a3, 80
	st.w	$a0, $sp, 472
	ld.d	$a0, $a1, 0
	beqz	$a0, .LBB30_161
	.p2align	4, , 16
.LBB30_172:                             # %.lr.ph.i.i115
                                        #   Parent Loop BB30_4 Depth=1
                                        #     Parent Loop BB30_153 Depth=2
                                        #       Parent Loop BB30_165 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 160
	ld.d	$a1, $a1, 192
	bne	$a2, $a1, .LBB30_162
# %bb.173:                              #   in Loop: Header=BB30_172 Depth=4
	ld.w	$a1, $a0, 8
	beqz	$a1, .LBB30_161
# %bb.174:                              #   in Loop: Header=BB30_172 Depth=4
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 72
	beqz	$a1, .LBB30_161
# %bb.175:                              #   in Loop: Header=BB30_172 Depth=4
	ld.d	$a0, $a0, 80
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB30_172
	b	.LBB30_161
.LBB30_176:                             # %._crit_edge81.i
                                        #   in Loop: Header=BB30_165 Depth=3
	ld.d	$a3, $s1, 0
	b	.LBB30_163
	.p2align	4, , 16
.LBB30_177:                             #   in Loop: Header=BB30_153 Depth=2
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free_SNode)
	jirl	$ra, $ra, 0
	b	.LBB30_152
.LBB30_178:                             # %.critedge2
                                        #   in Loop: Header=BB30_4 Depth=1
	beqz	$fp, .LBB30_4
# %bb.179:                              #   in Loop: Header=BB30_4 Depth=1
	ld.d	$a0, $s8, 256
	beqz	$a0, .LBB30_4
# %bb.180:                              #   in Loop: Header=BB30_4 Depth=1
	ld.d	$a1, $a0, 40
	bnez	$a1, .LBB30_4
# %bb.181:                              #   in Loop: Header=BB30_4 Depth=1
	ld.d	$a1, $a0, 8
	move	$a0, $s8
	pcaddu18i	$ra, %call36(commit_stack)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	b	.LBB30_4
.LBB30_182:                             # %error_recovery.exit.thread.sink.split
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB30_184
.LBB30_183:
	move	$a0, $zero
.LBB30_184:                             # %error_recovery.exit.thread
	ld.d	$s8, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	ret
.Lfunc_end30:
	.size	exhaustive_parse, .Lfunc_end30-exhaustive_parse
                                        # -- End function
	.p2align	5                               # -- Begin function commit_tree
	.type	commit_tree,@function
commit_tree:                            # @commit_tree
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
	move	$s0, $a1
	ld.bu	$a1, $a1, 84
	beqz	$a1, .LBB31_2
.LBB31_1:                               # %free_ParseTreeBelow.exit
	move	$a0, $s0
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
.LBB31_2:
	move	$fp, $a0
	ld.d	$a0, $s0, 160
	ld.d	$a1, $s0, 192
	beq	$a0, $a1, .LBB31_15
# %bb.3:                                # %.thread71
	ld.d	$s1, $s0, 104
	ori	$a0, $zero, 1
	st.b	$a0, $s0, 84
	beqz	$s1, .LBB31_39
# %bb.4:                                # %.thread73
	addi.d	$a1, $s0, 152
	addi.d	$s2, $sp, 48
	st.d	$s2, $sp, 40
	st.w	$a0, $sp, 32
	st.d	$a1, $sp, 48
.LBB31_5:                               # %.lr.ph.split.us.preheader.i
	addi.d	$s0, $sp, 48
	ori	$s3, $zero, 3
	b	.LBB31_8
	.p2align	4, , 16
.LBB31_6:                               #   in Loop: Header=BB31_8 Depth=1
	ld.wu	$a0, $sp, 32
	addi.d	$a1, $s1, 152
	st.d	$s2, $sp, 40
	addi.d	$a2, $a0, 1
	st.w	$a2, $sp, 32
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
.LBB31_7:                               #   in Loop: Header=BB31_8 Depth=1
	ld.d	$s1, $s1, 104
	beqz	$s1, .LBB31_33
.LBB31_8:                               # %.lr.ph.split.us.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB31_6
# %bb.9:                                #   in Loop: Header=BB31_8 Depth=1
	ld.wu	$a1, $sp, 32
	beq	$a0, $s2, .LBB31_12
# %bb.10:                               #   in Loop: Header=BB31_8 Depth=1
	andi	$a2, $a1, 7
	beqz	$a2, .LBB31_14
# %bb.11:                               #   in Loop: Header=BB31_8 Depth=1
	addi.d	$a2, $s1, 152
	addi.d	$a3, $a1, 1
	st.w	$a3, $sp, 32
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a0, $a1
	b	.LBB31_7
	.p2align	4, , 16
.LBB31_12:                              #   in Loop: Header=BB31_8 Depth=1
	bgeu	$a1, $s3, .LBB31_14
# %bb.13:                               #   in Loop: Header=BB31_8 Depth=1
	addi.w	$a2, $a1, 0
	addi.d	$a3, $s1, 152
	addi.d	$a1, $a1, 1
	st.w	$a1, $sp, 32
	slli.d	$a1, $a2, 3
	stx.d	$a3, $a0, $a1
	b	.LBB31_7
	.p2align	4, , 16
.LBB31_14:                              #   in Loop: Header=BB31_8 Depth=1
	addi.d	$a1, $s1, 152
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB31_7
.LBB31_15:
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB31_18
# %bb.16:
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB31_18
# %bb.17:                               # %.thread
	ld.d	$s1, $s0, 104
	bnez	$s1, .LBB31_19
	b	.LBB31_39
.LBB31_18:
	ld.d	$s1, $s0, 104
	ori	$a0, $zero, 1
	st.b	$a0, $s0, 84
	beqz	$s1, .LBB31_39
.LBB31_19:                              # %.lr.ph.i
	addi.d	$s3, $s0, 152
	move	$a0, $s0
	pcaddu18i	$ra, %call36(final_actionless)
	jirl	$ra, $ra, 0
	addi.d	$s2, $sp, 48
	st.d	$s2, $sp, 40
	ori	$a1, $zero, 1
	st.w	$a1, $sp, 32
	st.d	$s3, $sp, 48
	beqz	$a0, .LBB31_5
# %bb.20:
	ori	$s0, $zero, 2
	b	.LBB31_23
	.p2align	4, , 16
.LBB31_21:                              #   in Loop: Header=BB31_23 Depth=1
	ld.wu	$a0, $sp, 32
	addi.d	$a1, $s1, 152
	st.d	$s2, $sp, 40
	addi.d	$a2, $a0, 1
	st.w	$a2, $sp, 32
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
.LBB31_22:                              #   in Loop: Header=BB31_23 Depth=1
	ld.d	$s1, $s1, 104
	beqz	$s1, .LBB31_33
.LBB31_23:                              # %.lr.ph.split.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 100
	bnez	$a0, .LBB31_25
# %bb.24:                               #   in Loop: Header=BB31_23 Depth=1
	ld.d	$a0, $s1, 160
	ld.d	$a1, $s1, 192
	beq	$a0, $a1, .LBB31_32
.LBB31_25:                              #   in Loop: Header=BB31_23 Depth=1
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB31_21
# %bb.26:                               #   in Loop: Header=BB31_23 Depth=1
	ld.w	$a1, $sp, 32
	beq	$a0, $s2, .LBB31_29
# %bb.27:                               #   in Loop: Header=BB31_23 Depth=1
	andi	$a2, $a1, 7
	beqz	$a2, .LBB31_31
# %bb.28:                               #   in Loop: Header=BB31_23 Depth=1
	bstrpick.d	$a2, $a1, 31, 0
	addi.d	$a3, $s1, 152
	addi.d	$a1, $a1, 1
	st.w	$a1, $sp, 32
	slli.d	$a1, $a2, 3
	stx.d	$a3, $a0, $a1
	b	.LBB31_22
	.p2align	4, , 16
.LBB31_29:                              #   in Loop: Header=BB31_23 Depth=1
	bltu	$s0, $a1, .LBB31_31
# %bb.30:                               #   in Loop: Header=BB31_23 Depth=1
	addi.d	$a2, $s1, 152
	addi.d	$a3, $a1, 1
	st.w	$a3, $sp, 32
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a0, $a1
	b	.LBB31_22
	.p2align	4, , 16
.LBB31_31:                              #   in Loop: Header=BB31_23 Depth=1
	addi.d	$a1, $s1, 152
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB31_22
.LBB31_32:                              #   in Loop: Header=BB31_23 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(final_actionless)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB31_22
	b	.LBB31_25
.LBB31_33:                              # %._crit_edge.i
	ld.w	$a1, $sp, 32
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB31_35
# %bb.34:                               # %._crit_edge.thread.i
	ld.d	$a1, $sp, 40
	ld.d	$s0, $a1, 0
	bnez	$a1, .LBB31_36
	b	.LBB31_38
.LBB31_35:
	ld.d	$a3, $fp, 32
	ld.d	$a2, $sp, 40
	move	$a0, $fp
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 40
	move	$s0, $a0
	beqz	$a1, .LBB31_38
.LBB31_36:
	beq	$a1, $s2, .LBB31_38
# %bb.37:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB31_38:                              # %resolve_ambiguities.exit
	addi.d	$s0, $s0, -152
.LBB31_39:
	ld.d	$a0, $fp, 144
	ld.w	$a1, $s0, 152
	ld.d	$a0, $a0, 32
	slli.d	$a2, $a1, 4
	alsl.d	$a1, $a1, $a2, 3
	ld.w	$a2, $s0, 40
	ldx.w	$a1, $a0, $a1
	addi.d	$s1, $s0, 40
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	beqz	$a2, .LBB31_85
# %bb.40:                               # %.lr.ph
	ld.w	$a0, $fp, 96
	bnez	$a0, .LBB31_86
# %bb.41:                               # %.lr.ph
	ori	$s5, $zero, 2
	bne	$a1, $s5, .LBB31_86
# %bb.42:                               # %.lr.ph.split.us.preheader
	addi.d	$s6, $s0, 56
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$s7, $zero
	b	.LBB31_45
	.p2align	4, , 16
.LBB31_43:                              # %fixup_internal_symbol.exit.us
                                        #   in Loop: Header=BB31_45 Depth=1
	ld.w	$s8, $s1, 0
	addi.d	$s7, $s7, -1
.LBB31_44:                              #   in Loop: Header=BB31_45 Depth=1
	addi.w	$s7, $s7, 1
	bgeu	$s7, $s8, .LBB31_88
.LBB31_45:                              # %.lr.ph.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_63 Depth 2
                                        #     Child Loop BB31_83 Depth 2
                                        #     Child Loop BB31_73 Depth 2
                                        #     Child Loop BB31_76 Depth 2
                                        #     Child Loop BB31_54 Depth 2
                                        #     Child Loop BB31_57 Depth 2
	ld.d	$a0, $s0, 48
	slli.d	$s4, $s7, 3
	ldx.d	$a1, $a0, $s4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(commit_tree)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 144
	move	$s3, $a0
	ld.w	$a0, $a0, 152
	ld.d	$a1, $a1, 32
	ld.d	$a2, $s0, 48
	slli.d	$a3, $a0, 4
	alsl.d	$a0, $a0, $a3, 3
	ldx.w	$a0, $a1, $a0
	ld.w	$s8, $s0, 40
	stx.d	$s3, $a2, $s4
	bne	$a0, $s5, .LBB31_44
# %bb.46:                               #   in Loop: Header=BB31_45 Depth=1
	ld.w	$s2, $s3, 40
	beq	$s0, $s3, .LBB31_50
# %bb.47:                               #   in Loop: Header=BB31_45 Depth=1
	beqz	$s2, .LBB31_51
.LBB31_48:                              #   in Loop: Header=BB31_45 Depth=1
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB31_59
# %bb.49:                               #   in Loop: Header=BB31_45 Depth=1
	ld.d	$a0, $s3, 48
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s0, 48
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 32
	stx.d	$a0, $a2, $s4
	b	.LBB31_77
.LBB31_50:                              #   in Loop: Header=BB31_45 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB31_48
.LBB31_51:                              # %.preheader65.i.us
                                        #   in Loop: Header=BB31_45 Depth=1
	addi.w	$a0, $s8, -1
	bge	$s7, $a0, .LBB31_58
# %bb.52:                               # %.lr.ph.i60.us
                                        #   in Loop: Header=BB31_45 Depth=1
	ld.d	$a1, $s0, 48
	sub.d	$a3, $a0, $s7
	move	$a2, $s7
	ori	$a4, $zero, 4
	bltu	$a3, $a4, .LBB31_56
# %bb.53:                               # %vector.ph126
                                        #   in Loop: Header=BB31_45 Depth=1
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	add.d	$a2, $a4, $s7
	alsl.d	$a5, $s7, $a1, 3
	addi.d	$a5, $a5, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB31_54:                              # %vector.body129
                                        #   Parent Loop BB31_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, -8
	vld	$vr1, $a5, 8
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB31_54
# %bb.55:                               # %middle.block135
                                        #   in Loop: Header=BB31_45 Depth=1
	beq	$a3, $a4, .LBB31_58
.LBB31_56:                              # %scalar.ph124.preheader
                                        #   in Loop: Header=BB31_45 Depth=1
	alsl.d	$a1, $a2, $a1, 3
	addi.d	$a1, $a1, 8
	sub.d	$a0, $a0, $a2
	.p2align	4, , 16
.LBB31_57:                              # %scalar.ph124
                                        #   Parent Loop BB31_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	st.d	$a2, $a1, -8
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB31_57
.LBB31_58:                              # %._crit_edge.i59.us
                                        #   in Loop: Header=BB31_45 Depth=1
	ld.w	$a0, $s1, 0
	addi.d	$a0, $a0, -1
	st.w	$a0, $s1, 0
	b	.LBB31_77
.LBB31_59:                              # %.preheader64.i.us
                                        #   in Loop: Header=BB31_45 Depth=1
	blt	$s2, $s5, .LBB31_70
# %bb.60:                               # %.lr.ph68.i.us
                                        #   in Loop: Header=BB31_45 Depth=1
	addi.d	$s4, $s2, -1
	b	.LBB31_63
	.p2align	4, , 16
.LBB31_61:                              #   in Loop: Header=BB31_63 Depth=2
	ld.wu	$a0, $s0, 40
	st.d	$s6, $s0, 48
	addi.d	$a1, $a0, 1
	st.w	$a1, $s0, 40
	slli.d	$a0, $a0, 3
	stx.d	$zero, $s6, $a0
.LBB31_62:                              #   in Loop: Header=BB31_63 Depth=2
	addi.w	$s4, $s4, -1
	beqz	$s4, .LBB31_70
.LBB31_63:                              #   Parent Loop BB31_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 48
	beqz	$a0, .LBB31_61
# %bb.64:                               #   in Loop: Header=BB31_63 Depth=2
	ld.wu	$a1, $s1, 0
	beq	$a0, $s6, .LBB31_67
# %bb.65:                               #   in Loop: Header=BB31_63 Depth=2
	andi	$a2, $a1, 7
	beqz	$a2, .LBB31_69
# %bb.66:                               #   in Loop: Header=BB31_63 Depth=2
	addi.d	$a2, $a1, 1
	st.w	$a2, $s1, 0
	slli.d	$a1, $a1, 3
	stx.d	$zero, $a0, $a1
	b	.LBB31_62
	.p2align	4, , 16
.LBB31_67:                              #   in Loop: Header=BB31_63 Depth=2
	ori	$a2, $zero, 3
	bgeu	$a1, $a2, .LBB31_69
# %bb.68:                               #   in Loop: Header=BB31_63 Depth=2
	addi.w	$a2, $a1, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s1, 0
	slli.d	$a1, $a2, 3
	stx.d	$zero, $a0, $a1
	b	.LBB31_62
	.p2align	4, , 16
.LBB31_69:                              #   in Loop: Header=BB31_63 Depth=2
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB31_62
.LBB31_70:                              # %.preheader63.i.us
                                        #   in Loop: Header=BB31_45 Depth=1
	addi.w	$a0, $s7, 1
	bge	$a0, $s8, .LBB31_74
# %bb.71:                               # %.lr.ph71.i.us
                                        #   in Loop: Header=BB31_45 Depth=1
	ld.d	$a1, $s0, 48
	sub.d	$a2, $s8, $a0
	ori	$a3, $zero, 16
	bgeu	$a2, $a3, .LBB31_79
.LBB31_72:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB31_45 Depth=1
	add.d	$a2, $s2, $s8
	addi.w	$a2, $a2, -2
	alsl.d	$a3, $s8, $a1, 3
	addi.d	$a3, $a3, -8
	.p2align	4, , 16
.LBB31_73:                              # %scalar.ph
                                        #   Parent Loop BB31_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 0
	addi.d	$s8, $s8, -1
	slli.d	$a5, $a2, 3
	stx.d	$a4, $a1, $a5
	addi.w	$a2, $a2, -1
	addi.d	$a3, $a3, -8
	blt	$a0, $s8, .LBB31_73
.LBB31_74:                              # %.preheader.i.us
                                        #   in Loop: Header=BB31_45 Depth=1
	blez	$s2, .LBB31_77
# %bb.75:                               # %.lr.ph73.i.us
                                        #   in Loop: Header=BB31_45 Depth=1
	ld.d	$a1, $s0, 48
	ld.d	$a0, $s3, 48
	alsl.d	$a1, $s7, $a1, 3
	.p2align	4, , 16
.LBB31_76:                              #   Parent Loop BB31_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 0
	ld.w	$a3, $a2, 32
	addi.d	$a3, $a3, 1
	st.w	$a3, $a2, 32
	st.d	$a2, $a1, 0
	addi.d	$s2, $s2, -1
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bnez	$s2, .LBB31_76
.LBB31_77:                              # %.loopexit.i.us
                                        #   in Loop: Header=BB31_45 Depth=1
	ld.w	$a0, $s3, 32
	addi.w	$a0, $a0, -1
	st.w	$a0, $s3, 32
	bnez	$a0, .LBB31_43
# %bb.78:                               #   in Loop: Header=BB31_45 Depth=1
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(free_PNode)
	jirl	$ra, $ra, 0
	b	.LBB31_43
.LBB31_79:                              # %vector.scevcheck
                                        #   in Loop: Header=BB31_45 Depth=1
	nor	$a3, $a0, $zero
	add.d	$a4, $a3, $s8
	add.d	$a3, $s2, $s8
	addi.w	$a3, $a3, -2
	sub.w	$a5, $a3, $a4
	blt	$a3, $a5, .LBB31_72
# %bb.80:                               # %vector.scevcheck
                                        #   in Loop: Header=BB31_45 Depth=1
	srli.d	$a4, $a4, 32
	bnez	$a4, .LBB31_72
# %bb.81:                               # %vector.memcheck
                                        #   in Loop: Header=BB31_45 Depth=1
	slli.d	$a5, $s8, 3
	slli.d	$a4, $a3, 3
	sub.d	$a4, $a5, $a4
	addi.d	$a4, $a4, -8
	ori	$a6, $zero, 32
	bltu	$a4, $a6, .LBB31_72
# %bb.82:                               # %vector.ph
                                        #   in Loop: Header=BB31_45 Depth=1
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	sub.d	$s8, $s8, $a4
	add.d	$a5, $a1, $a5
	addi.d	$a5, $a5, -16
	move	$a6, $a4
	.p2align	4, , 16
.LBB31_83:                              # %vector.body
                                        #   Parent Loop BB31_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, 0
	vld	$vr1, $a5, -16
	alsl.d	$a7, $a3, $a1, 3
	vst	$vr0, $a7, -8
	vst	$vr1, $a7, -24
	addi.d	$a5, $a5, -32
	addi.d	$a6, $a6, -4
	addi.w	$a3, $a3, -4
	bnez	$a6, .LBB31_83
# %bb.84:                               # %middle.block
                                        #   in Loop: Header=BB31_45 Depth=1
	bne	$a2, $a4, .LBB31_72
	b	.LBB31_74
.LBB31_85:
	move	$s8, $zero
	b	.LBB31_88
.LBB31_86:                              # %.lr.ph.split.preheader
	ld.d	$a1, $s0, 48
	move	$s2, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB31_87:                              # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a1, $a1, $s2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(commit_tree)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 48
	ld.wu	$s8, $s0, 40
	stx.d	$a0, $a1, $s2
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bltu	$s3, $s8, .LBB31_87
.LBB31_88:                              # %._crit_edge
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB31_91
# %bb.89:
	ld.d	$a5, $a0, 16
	beqz	$a5, .LBB31_91
# %bb.90:
	ld.d	$a1, $s0, 48
	addi.w	$a2, $s8, 0
	ori	$a3, $zero, 152
	move	$a0, $s0
	move	$a4, $fp
	jirl	$ra, $a5, 0
.LBB31_91:
	ld.bu	$a0, $s0, 84
	beqz	$a0, .LBB31_1
# %bb.92:
	ld.w	$a0, $fp, 88
	bnez	$a0, .LBB31_1
# %bb.93:
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB31_1
# %bb.94:
	ld.wu	$a0, $s1, 0
	beqz	$a0, .LBB31_99
# %bb.95:                               # %.lr.ph.i62
	move	$s2, $zero
	move	$s3, $zero
	b	.LBB31_97
	.p2align	4, , 16
.LBB31_96:                              #   in Loop: Header=BB31_97 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bgeu	$s3, $a0, .LBB31_99
.LBB31_97:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 48
	ldx.d	$a1, $a1, $s2
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, -1
	st.w	$a2, $a1, 32
	bnez	$a2, .LBB31_96
# %bb.98:                               #   in Loop: Header=BB31_97 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_PNode)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s1, 0
	b	.LBB31_96
.LBB31_99:                              # %._crit_edge.i65
	ld.d	$a0, $s0, 48
	beqz	$a0, .LBB31_102
# %bb.100:                              # %._crit_edge.i65
	addi.d	$a1, $s0, 56
	beq	$a0, $a1, .LBB31_102
# %bb.101:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB31_102:
	ld.d	$a1, $s0, 104
	st.w	$zero, $s0, 40
	st.d	$zero, $s0, 48
	beqz	$a1, .LBB31_1
# %bb.103:
	st.d	$zero, $s0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_PNode)
	jirl	$ra, $ra, 0
	b	.LBB31_1
.Lfunc_end31:
	.size	commit_tree, .Lfunc_end31-commit_tree
                                        # -- End function
	.p2align	5                               # -- Begin function free_SNode
	.type	free_SNode,@function
free_SNode:                             # @free_SNode
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.wu	$a1, $a1, 72
	move	$s0, $a0
	beqz	$a1, .LBB32_16
# %bb.1:                                # %.lr.ph26
	move	$s1, $zero
	b	.LBB32_4
	.p2align	4, , 16
.LBB32_2:                               # %free_ZNode.exit
                                        #   in Loop: Header=BB32_4 Depth=1
	ld.d	$a0, $s0, 336
	st.w	$zero, $s2, 8
	ld.wu	$a1, $fp, 72
	st.d	$zero, $s2, 16
	st.d	$a0, $s2, 0
	st.d	$s2, $s0, 336
.LBB32_3:                               #   in Loop: Header=BB32_4 Depth=1
	addi.d	$s1, $s1, 1
	bgeu	$s1, $a1, .LBB32_16
.LBB32_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_10 Depth 2
	ld.d	$a0, $fp, 80
	slli.d	$a2, $s1, 3
	ldx.d	$s2, $a0, $a2
	beqz	$s2, .LBB32_3
# %bb.5:                                #   in Loop: Header=BB32_4 Depth=1
	ld.d	$a1, $s2, 0
	ld.w	$a0, $a1, 32
	addi.w	$a0, $a0, -1
	st.w	$a0, $a1, 32
	beqz	$a0, .LBB32_7
# %bb.6:                                #   in Loop: Header=BB32_4 Depth=1
	ld.wu	$a0, $s2, 8
	bnez	$a0, .LBB32_8
	b	.LBB32_13
	.p2align	4, , 16
.LBB32_7:                               #   in Loop: Header=BB32_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free_PNode)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s2, 8
	beqz	$a0, .LBB32_13
.LBB32_8:                               # %.lr.ph
                                        #   in Loop: Header=BB32_4 Depth=1
	move	$s3, $zero
	move	$s4, $zero
	b	.LBB32_10
	.p2align	4, , 16
.LBB32_9:                               #   in Loop: Header=BB32_10 Depth=2
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	bgeu	$s4, $a0, .LBB32_13
.LBB32_10:                              #   Parent Loop BB32_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s2, 16
	ldx.d	$a1, $a1, $s3
	beq	$fp, $a1, .LBB32_9
# %bb.11:                               #   in Loop: Header=BB32_10 Depth=2
	ld.w	$a2, $a1, 112
	addi.w	$a2, $a2, -1
	st.w	$a2, $a1, 112
	bnez	$a2, .LBB32_9
# %bb.12:                               #   in Loop: Header=BB32_10 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free_SNode)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s2, 8
	b	.LBB32_9
	.p2align	4, , 16
.LBB32_13:                              # %._crit_edge
                                        #   in Loop: Header=BB32_4 Depth=1
	ld.d	$a0, $s2, 16
	beqz	$a0, .LBB32_2
# %bb.14:                               # %._crit_edge
                                        #   in Loop: Header=BB32_4 Depth=1
	addi.d	$a1, $s2, 24
	beq	$a0, $a1, .LBB32_2
# %bb.15:                               #   in Loop: Header=BB32_4 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB32_2
.LBB32_16:                              # %._crit_edge27
	ld.d	$a0, $fp, 80
	beqz	$a0, .LBB32_19
# %bb.17:                               # %._crit_edge27
	addi.d	$a1, $fp, 88
	beq	$a0, $a1, .LBB32_19
# %bb.18:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB32_19:
	ld.d	$a0, $s0, 328
	st.w	$zero, $fp, 72
	st.d	$zero, $fp, 80
	st.d	$a0, $fp, 128
	st.d	$fp, $s0, 328
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end32:
	.size	free_SNode, .Lfunc_end32-free_SNode
                                        # -- End function
	.p2align	5                               # -- Begin function free_old_nodes
	.type	free_old_nodes,@function
free_old_nodes:                         # @free_old_nodes
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 240
	ld.d	$s0, $fp, 208
	beqz	$a0, .LBB33_5
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $fp, 144
	ld.d	$a1, $a1, 8
	ld.d	$a2, $fp, 216
	ld.w	$a3, $fp, 228
	lu12i.w	$a4, -69905
	.p2align	4, , 16
.LBB33_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_3 Depth 2
	ld.d	$a5, $a0, 0
	ld.w	$a6, $a0, 8
	ld.w	$a7, $a0, 16
	sub.d	$a5, $a5, $a1
	bstrpick.d	$a5, $a5, 31, 3
	mul.d	$a5, $a5, $a4
	add.d	$a6, $a7, $a6
	add.w	$a6, $a6, $a5
	ld.d	$a5, $a0, 128
	mod.wu	$a6, $a6, $a3
	bstrpick.d	$a6, $a6, 31, 0
	alsl.d	$a7, $a6, $a2, 3
	.p2align	4, , 16
.LBB33_3:                               #   Parent Loop BB33_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a6, $a7
	ld.d	$t0, $a7, 0
	addi.d	$a7, $t0, 120
	bne	$t0, $a0, .LBB33_3
# %bb.4:                                #   in Loop: Header=BB33_2 Depth=1
	ld.d	$a0, $a7, 0
	st.d	$a0, $a6, 0
	move	$a0, $a5
	bnez	$a5, .LBB33_2
.LBB33_5:                               # %._crit_edge
	ld.d	$a1, $fp, 248
	bnez	$a1, .LBB33_9
.LBB33_6:                               # %._crit_edge89
	ld.d	$a0, $fp, 240
	st.d	$a0, $fp, 248
	st.d	$zero, $fp, 240
	bnez	$s0, .LBB33_12
.LBB33_7:                               # %._crit_edge95
	st.w	$zero, $fp, 200
	st.d	$zero, $fp, 208
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
	.p2align	4, , 16
.LBB33_8:                               #   in Loop: Header=BB33_9 Depth=1
	move	$a1, $s1
	beqz	$s1, .LBB33_6
.LBB33_9:                               # %.lr.ph88
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a1, 112
	ld.d	$s1, $a1, 128
	addi.w	$a0, $a0, -1
	st.w	$a0, $a1, 112
	bnez	$a0, .LBB33_8
# %bb.10:                               #   in Loop: Header=BB33_9 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_SNode)
	jirl	$ra, $ra, 0
	b	.LBB33_8
	.p2align	4, , 16
.LBB33_11:                              #   in Loop: Header=BB33_12 Depth=1
	move	$s0, $s1
	beqz	$s1, .LBB33_7
.LBB33_12:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_16 Depth 2
                                        #     Child Loop BB33_20 Depth 2
	ld.wu	$a0, $s0, 40
	beqz	$a0, .LBB33_19
# %bb.13:                               # %.lr.ph91
                                        #   in Loop: Header=BB33_12 Depth=1
	ld.d	$a2, $s0, 48
	move	$s1, $zero
	move	$s2, $zero
	b	.LBB33_16
	.p2align	4, , 16
.LBB33_14:                              #   in Loop: Header=BB33_16 Depth=2
	ldx.d	$a1, $a2, $s1
	ld.d	$a1, $a1, 112
	stx.d	$a1, $a2, $s1
.LBB33_15:                              #   in Loop: Header=BB33_16 Depth=2
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bgeu	$s2, $a0, .LBB33_19
.LBB33_16:                              #   Parent Loop BB33_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a1, $a2, $s1
	ld.d	$a3, $a1, 112
	beq	$a1, $a3, .LBB33_15
# %bb.17:                               #   in Loop: Header=BB33_16 Depth=2
	ld.w	$a4, $a3, 32
	addi.d	$a4, $a4, 1
	st.w	$a4, $a3, 32
	ld.w	$a3, $a1, 32
	addi.w	$a3, $a3, -1
	st.w	$a3, $a1, 32
	bnez	$a3, .LBB33_14
# %bb.18:                               #   in Loop: Header=BB33_16 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_PNode)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 48
	ld.wu	$a0, $s0, 40
	b	.LBB33_14
	.p2align	4, , 16
.LBB33_19:                              # %._crit_edge92
                                        #   in Loop: Header=BB33_12 Depth=1
	ld.w	$a0, $s0, 160
	ld.w	$a1, $s0, 200
	slli.d	$a0, $a0, 8
	ld.w	$a2, $s0, 152
	slli.d	$a1, $a1, 16
	ld.w	$a3, $s0, 136
	ld.w	$a4, $s0, 144
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a3
	ld.w	$a1, $fp, 196
	add.w	$a0, $a0, $a4
	ld.d	$a2, $fp, 184
	ld.d	$s1, $s0, 88
	mod.wu	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$a1, $a0, $a2, 3
	.p2align	4, , 16
.LBB33_20:                              #   Parent Loop BB33_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a2, $a1, 0
	addi.d	$a1, $a2, 96
	bne	$a2, $s0, .LBB33_20
# %bb.21:                               #   in Loop: Header=BB33_12 Depth=1
	ld.d	$a1, $a1, 0
	ld.w	$a2, $s0, 32
	st.d	$a1, $a0, 0
	addi.w	$a0, $a2, -1
	st.w	$a0, $s0, 32
	bnez	$a0, .LBB33_11
# %bb.22:                               #   in Loop: Header=BB33_12 Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(free_PNode)
	jirl	$ra, $ra, 0
	b	.LBB33_11
.Lfunc_end33:
	.size	free_old_nodes, .Lfunc_end33-free_old_nodes
                                        # -- End function
	.p2align	5                               # -- Begin function add_SNode
	.type	add_SNode,@function
add_SNode:                              # @add_SNode
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a6, $a0, 216
	beqz	$a6, .LBB34_7
# %bb.1:
	ld.d	$a0, $fp, 144
	ld.d	$a0, $a0, 8
	sub.d	$a5, $a1, $a0
	srai.d	$a7, $a5, 3
	lu12i.w	$a5, -69906
	ori	$a5, $a5, 3823
	lu32i.d	$a5, -69906
	lu52i.d	$a5, $a5, -274
	mul.d	$a7, $a7, $a5
	ld.w	$t0, $fp, 228
	slli.d	$t1, $a7, 12
	add.d	$t2, $a4, $a3
	add.w	$t1, $t2, $t1
	mod.wu	$t0, $t1, $t0
	bstrpick.d	$t0, $t0, 31, 0
	slli.d	$t0, $t0, 3
	ldx.d	$s0, $a6, $t0
	beqz	$s0, .LBB34_7
# %bb.2:                                # %.lr.ph.i
	bstrpick.d	$a6, $a7, 31, 0
	b	.LBB34_4
	.p2align	4, , 16
.LBB34_3:                               #   in Loop: Header=BB34_4 Depth=1
	ld.d	$s0, $s0, 120
	beqz	$s0, .LBB34_7
.LBB34_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $s0, 0
	sub.d	$a7, $a7, $a0
	srai.d	$a7, $a7, 3
	mul.d	$a7, $a7, $a5
	bne	$a7, $a6, .LBB34_3
# %bb.5:                                #   in Loop: Header=BB34_4 Depth=1
	ld.d	$a7, $s0, 8
	bne	$a7, $a3, .LBB34_3
# %bb.6:                                #   in Loop: Header=BB34_4 Depth=1
	ld.d	$a7, $s0, 16
	bne	$a7, $a4, .LBB34_3
	b	.LBB34_24
.LBB34_7:                               # %.loopexit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(new_SNode)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$s1, $a0, 0
	ld.d	$a0, $s1, 64
	beqz	$a0, .LBB34_19
# %bb.8:
	ld.d	$a0, $fp, 304
	addi.d	$s2, $fp, 264
	beqz	$a0, .LBB34_10
# %bb.9:
	ld.d	$a1, $a0, 8
	st.d	$a1, $fp, 304
	b	.LBB34_11
.LBB34_10:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
.LBB34_11:
	ld.w	$a2, $s0, 112
	ld.d	$a1, $s2, 0
	st.d	$s0, $a0, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $s0, 112
	beqz	$a1, .LBB34_15
# %bb.12:                               # %.lr.ph.i31
	ld.d	$a2, $a1, 0
	ld.d	$a3, $s0, 24
	ld.d	$a2, $a2, 24
	bgeu	$a2, $a3, .LBB34_18
	.p2align	4, , 16
.LBB34_13:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a1
	ld.d	$a1, $a1, 8
	beqz	$a1, .LBB34_16
# %bb.14:                               #   in Loop: Header=BB34_13 Depth=1
	ld.d	$a4, $a1, 0
	ld.d	$a4, $a4, 24
	bltu	$a4, $a3, .LBB34_13
	b	.LBB34_17
.LBB34_15:
	move	$a1, $zero
	b	.LBB34_18
.LBB34_16:                              # %.add_Shift.exit.loopexit_crit_edge
	move	$a1, $zero
.LBB34_17:                              # %add_Shift.exit.loopexit
	addi.d	$s2, $a2, 8
.LBB34_18:                              # %add_Shift.exit
	st.d	$a1, $a0, 8
	st.d	$a0, $s2, 0
.LBB34_19:
	ld.w	$a0, $s1, 16
	beqz	$a0, .LBB34_24
# %bb.20:                               # %.lr.ph43.preheader
	move	$s2, $zero
	move	$s3, $zero
	b	.LBB34_22
	.p2align	4, , 16
.LBB34_21:                              #   in Loop: Header=BB34_22 Depth=1
	ld.wu	$a0, $s1, 16
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bgeu	$s3, $a0, .LBB34_24
.LBB34_22:                              # %.lr.ph43
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 24
	ldx.d	$a3, $a0, $s2
	ld.hu	$a0, $a3, 0
	bnez	$a0, .LBB34_21
# %bb.23:                               #   in Loop: Header=BB34_22 Depth=1
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(add_Reduction)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 0
	b	.LBB34_21
.LBB34_24:                              # %find_SNode.exit
	move	$a0, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end34:
	.size	add_SNode, .Lfunc_end34-add_SNode
                                        # -- End function
	.p2align	5                               # -- Begin function add_PNode
	.type	add_PNode,@function
add_PNode:                              # @add_PNode
# %bb.0:
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	move	$t1, $a0
	ld.d	$t0, $a0, 184
	move	$s5, $a7
	move	$s2, $a6
	move	$s3, $a5
	move	$s4, $a4
	move	$s6, $a3
	move	$s7, $a2
	move	$s8, $a1
	beqz	$t0, .LBB35_2
# %bb.1:
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s4, 136
	ld.d	$a2, $s4, 144
	slli.d	$a3, $a0, 8
	slli.d	$a4, $s6, 16
	or	$a4, $a4, $s8
	ld.w	$a5, $t1, 196
	add.d	$a3, $a4, $a3
	add.d	$a3, $a3, $a1
	add.w	$a3, $a3, $a2
	mod.wu	$a3, $a3, $a5
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 3
	ldx.d	$s0, $t0, $a3
	bnez	$s0, .LBB35_6
.LBB35_2:
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $zero
.LBB35_3:                               # %find_PNode.exit.thread
	ld.w	$a0, $t1, 84
	ld.d	$s1, $t1, 320
	addi.w	$fp, $a0, 232
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	beqz	$s1, .LBB35_13
# %bb.4:
	ld.d	$a0, $s1, 88
	st.d	$a0, $t1, 320
	b	.LBB35_14
	.p2align	4, , 16
.LBB35_5:                               #   in Loop: Header=BB35_6 Depth=1
	ld.d	$s0, $s0, 96
	beqz	$s0, .LBB35_2
.LBB35_6:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $s0, 152
	bne	$a3, $s8, .LBB35_5
# %bb.7:                                #   in Loop: Header=BB35_6 Depth=1
	ld.d	$a3, $s0, 160
	bne	$a3, $a0, .LBB35_5
# %bb.8:                                #   in Loop: Header=BB35_6 Depth=1
	ld.d	$a3, $s0, 200
	bne	$a3, $s6, .LBB35_5
# %bb.9:                                #   in Loop: Header=BB35_6 Depth=1
	ld.d	$a3, $s0, 136
	bne	$a3, $a1, .LBB35_5
# %bb.10:                               #   in Loop: Header=BB35_6 Depth=1
	ld.d	$a3, $s0, 144
	bne	$a3, $a2, .LBB35_5
# %bb.11:                               # %find_PNode.exit
	beqz	$s5, .LBB35_149
# %bb.12:                               # %PNode_equal.exit
	ld.d	$a0, $s0, 24
	bne	$s5, $a0, .LBB35_150
	b	.LBB35_148
.LBB35_13:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	move	$s1, $a0
.LBB35_14:
	ld.w	$a0, $t1, 156
	addi.d	$a0, $a0, 1
	st.w	$a0, $t1, 156
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.w	$s8, $s1, 152
	vld	$vr0, $s7, 0
	vst	$vr0, $s1, 160
	vld	$vr0, $s7, 16
	vst	$vr0, $s1, 176
	beqz	$s3, .LBB35_22
# %bb.15:
	beqz	$s2, .LBB35_22
# %bb.16:
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s2, 8
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 80
	ld.d	$a1, $s4, 192
	ld.d	$a0, $a0, 0
	st.d	$a1, $s1, 192
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB35_21
	.p2align	4, , 16
.LBB35_17:                              # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 160
	ld.d	$a1, $a1, 192
	bne	$a2, $a1, .LBB35_23
# %bb.18:                               #   in Loop: Header=BB35_17 Depth=1
	ld.w	$a1, $a0, 8
	beqz	$a1, .LBB35_21
# %bb.19:                               #   in Loop: Header=BB35_17 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 72
	beqz	$a1, .LBB35_21
# %bb.20:                               #   in Loop: Header=BB35_17 Depth=1
	ld.d	$a0, $a0, 80
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB35_17
.LBB35_21:                              # %.critedge13.i.i
	ld.d	$a1, $t6, 128
	b	.LBB35_23
.LBB35_22:
	st.d	$s6, $s1, 192
	move	$a1, $s6
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
.LBB35_23:                              # %find_ws_before.exit.i
	st.d	$a1, $s1, 120
	ld.d	$a0, $s4, 224
	st.d	$s6, $s1, 200
	st.d	$s5, $s1, 24
	st.d	$s3, $s1, 16
	st.d	$a0, $s1, 224
	st.d	$a0, $s1, 144
	ld.d	$a0, $s4, 208
	vld	$vr0, $s4, 208
	st.d	$a0, $s1, 136
	vst	$vr0, $s1, 208
	st.d	$s1, $s1, 112
	st.d	$s6, $s1, 128
	beqz	$s5, .LBB35_26
# %bb.24:
	ld.bu	$a0, $s5, 3
	ld.w	$a1, $s5, 4
	ld.d	$a5, $s5, 16
	st.w	$a0, $s1, 8
	st.w	$a1, $s1, 12
	beqz	$a5, .LBB35_60
# %bb.25:
	ld.d	$a1, $s4, 48
	ld.w	$a2, $s4, 40
	ori	$a3, $zero, 152
	move	$a0, $s4
	move	$a4, $t6
	jirl	$ra, $a5, 0
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	bnez	$a0, .LBB35_49
	b	.LBB35_60
.LBB35_26:
	beqz	$s3, .LBB35_60
# %bb.27:
	beqz	$s2, .LBB35_39
# %bb.28:
	ld.w	$a0, $s2, 0
	addi.w	$a0, $a0, -1
	bltz	$a0, .LBB35_39
# %bb.29:                               # %.lr.ph.i55
	addi.d	$s4, $s1, 40
	addi.d	$fp, $s1, 56
	addi.d	$s6, $a0, 1
	slli.d	$s7, $a0, 3
	ori	$s8, $zero, 2
	b	.LBB35_32
	.p2align	4, , 16
.LBB35_30:                              #   in Loop: Header=BB35_32 Depth=1
	ld.wu	$a0, $s1, 40
	st.d	$fp, $s1, 48
	addi.d	$a1, $a0, 1
	st.w	$a1, $s1, 40
	slli.d	$a0, $a0, 3
	stx.d	$s5, $fp, $a0
.LBB35_31:                              #   in Loop: Header=BB35_32 Depth=1
	ld.w	$a0, $s5, 32
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, 32
	addi.d	$s6, $s6, -1
	addi.d	$s7, $s7, -8
	blez	$s6, .LBB35_39
.LBB35_32:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 8
	ldx.d	$a0, $a0, $s7
	ld.d	$a1, $a0, 0
	ld.d	$a0, $s1, 48
	ld.d	$s5, $a1, 112
	beqz	$a0, .LBB35_30
# %bb.33:                               #   in Loop: Header=BB35_32 Depth=1
	ld.w	$a1, $s4, 0
	beq	$a0, $fp, .LBB35_36
# %bb.34:                               #   in Loop: Header=BB35_32 Depth=1
	andi	$a2, $a1, 7
	beqz	$a2, .LBB35_38
# %bb.35:                               #   in Loop: Header=BB35_32 Depth=1
	bstrpick.d	$a2, $a1, 31, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s4, 0
	slli.d	$a1, $a2, 3
	stx.d	$s5, $a0, $a1
	b	.LBB35_31
	.p2align	4, , 16
.LBB35_36:                              #   in Loop: Header=BB35_32 Depth=1
	bltu	$s8, $a1, .LBB35_38
# %bb.37:                               #   in Loop: Header=BB35_32 Depth=1
	addi.d	$a2, $a1, 1
	st.w	$a2, $s4, 0
	slli.d	$a1, $a1, 3
	stx.d	$s5, $a0, $a1
	b	.LBB35_31
	.p2align	4, , 16
.LBB35_38:                              #   in Loop: Header=BB35_32 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	b	.LBB35_31
.LBB35_39:                              # %.loopexit.i
	ld.wu	$a1, $s1, 40
	addi.w	$a2, $a1, 0
	beqz	$a2, .LBB35_44
# %bb.40:                               # %.lr.ph.i139.i
	ld.d	$a3, $s1, 48
	move	$a0, $zero
	b	.LBB35_42
	.p2align	4, , 16
.LBB35_41:                              #   in Loop: Header=BB35_42 Depth=1
	ld.w	$a4, $a4, 80
	sltu	$a5, $a4, $a0
	addi.w	$a4, $a4, 1
	maskeqz	$a0, $a0, $a5
	masknez	$a4, $a4, $a5
	or	$a0, $a0, $a4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	beqz	$a1, .LBB35_45
.LBB35_42:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	ld.w	$a5, $a4, 8
	beqz	$a5, .LBB35_41
# %bb.43:                               #   in Loop: Header=BB35_42 Depth=1
	ld.w	$a6, $a4, 12
	st.w	$a5, $s1, 0
	st.w	$a6, $s1, 4
	b	.LBB35_41
.LBB35_44:
	move	$a0, $zero
.LBB35_45:                              # %._crit_edge.i.i
	ld.hu	$a3, $s3, 24
	ld.w	$a4, $s3, 28
	ld.hu	$a1, $s3, 26
	st.w	$a3, $s1, 8
	st.w	$a4, $s1, 12
	st.w	$a0, $s1, 80
	beqz	$a1, .LBB35_47
# %bb.46:
	ld.w	$a0, $s3, 32
	st.w	$a1, $s1, 0
	st.w	$a0, $s1, 4
.LBB35_47:
	ld.d	$a5, $s3, 8
	beqz	$a5, .LBB35_50
# %bb.48:                               # %reduce_actions.exit.i
	ld.d	$a1, $s1, 48
	ori	$a3, $zero, 152
	move	$a0, $s1
	move	$a4, $t6
	jirl	$ra, $a5, 0
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB35_50
.LBB35_49:                              # %make_PNode.exit.thread
	move	$a0, $t6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(free_PNode)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	masknez	$s0, $s0, $a0
	b	.LBB35_148
.LBB35_50:                              # %reduce_actions.exit.thread.i
	beqz	$s2, .LBB35_60
# %bb.51:
	ld.w	$a0, $s2, 0
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB35_60
# %bb.52:                               # %.lr.ph148.i
	ld.d	$a2, $s1, 48
	addi.w	$a3, $a0, -1
	bstrpick.d	$a4, $a3, 31, 0
	slli.d	$a5, $a4, 3
	pcalau12i	$a6, %pc_hi20(child_table)
	addi.d	$a6, $a6, %pc_lo12(child_table)
	move	$a7, $zero
	move	$t0, $a4
	b	.LBB35_56
	.p2align	4, , 16
.LBB35_53:                              #   in Loop: Header=BB35_56 Depth=1
	move	$t1, $zero
.LBB35_54:                              # %check_child.exit.i
                                        #   in Loop: Header=BB35_56 Depth=1
	sltui	$t4, $t0, 1
	andi	$t5, $t2, 20
	sltui	$t5, $t5, 1
	addi.d	$t2, $t2, -9
	sltui	$t2, $t2, 1
	sub.d	$t2, $a1, $t2
	maskeqz	$t2, $t2, $t5
	andi	$t5, $t3, 20
	sltui	$t5, $t5, 1
	addi.d	$t3, $t3, -9
	sltui	$t3, $t3, 1
	xori	$t3, $t3, 3
	masknez	$t4, $t4, $t5
	maskeqz	$t3, $t3, $t5
	or	$t3, $t3, $t4
	slli.d	$t4, $t3, 3
	slli.d	$t3, $t3, 6
	or	$t3, $t3, $t4
	add.d	$t3, $a6, $t3
	slli.d	$t4, $t2, 4
	alsl.d	$t2, $t2, $t4, 3
	add.d	$t2, $t3, $t2
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $t2, $t1
	beqz	$t1, .LBB35_49
.LBB35_55:                              #   in Loop: Header=BB35_56 Depth=1
	add.w	$a7, $a7, $a3
	sub.d	$t0, $t0, $a4
	add.d	$a2, $a2, $a5
	bge	$a7, $a0, .LBB35_60
.LBB35_56:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a2, 0
	ld.w	$t2, $t1, 0
	beqz	$t2, .LBB35_55
# %bb.57:                               #   in Loop: Header=BB35_56 Depth=1
	ld.w	$t4, $s1, 4
	ld.w	$t5, $t1, 4
	ld.w	$t3, $s1, 0
	blt	$t4, $t5, .LBB35_53
# %bb.58:                               #   in Loop: Header=BB35_56 Depth=1
	ori	$t1, $zero, 1
	blt	$t5, $t4, .LBB35_54
# %bb.59:                               #   in Loop: Header=BB35_56 Depth=1
	srli.d	$t1, $t3, 1
	bstrpick.d	$t4, $t2, 1, 1
	bstrins.d	$t1, $t4, 63, 1
	addi.d	$t1, $t1, 2
	b	.LBB35_54
.LBB35_60:                              # %make_PNode.exit
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	beqz	$a0, .LBB35_63
# %bb.61:
	beqz	$s1, .LBB35_71
# %bb.62:
	move	$a0, $t6
	move	$a1, $s1
	move	$fp, $t6
	pcaddu18i	$ra, %call36(insert_PNode_internal)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 32
	ld.d	$a1, $fp, 208
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 32
	st.d	$a1, $s1, 88
	st.d	$s1, $fp, 208
	b	.LBB35_147
.LBB35_63:
	beqz	$s1, .LBB35_148
# %bb.64:
	ld.w	$a1, $t6, 172
	ld.w	$a0, $s1, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $t6, 172
	beqz	$a0, .LBB35_129
# %bb.65:
	ld.w	$a1, $s0, 0
	beqz	$a1, .LBB35_129
# %bb.66:
	or	$a0, $a1, $a0
	andi	$a0, $a0, 4
	bnez	$a0, .LBB35_69
# %bb.67:
	ld.w	$a0, $s1, 4
	ld.w	$a1, $s0, 4
	blt	$a1, $a0, .LBB35_146
# %bb.68:
	blt	$a0, $a1, .LBB35_145
.LBB35_69:
	addi.d	$s6, $sp, 248
	st.d	$s6, $sp, 240
	st.d	$s6, $sp, 224
	addi.d	$a0, $sp, 312
	st.d	$a0, $sp, 232
	addi.d	$s4, $sp, 160
	st.d	$s4, $sp, 152
	st.d	$s4, $sp, 136
	addi.d	$a0, $sp, 224
	st.d	$a0, $sp, 144
	addi.d	$fp, $sp, 104
	st.d	$fp, $sp, 96
	st.d	$fp, $sp, 80
	addi.d	$a0, $sp, 136
	st.d	$a0, $sp, 88
	addi.d	$s3, $sp, 48
	st.d	$s3, $sp, 40
	st.d	$s3, $sp, 24
	addi.d	$a0, $sp, 80
	st.d	$a0, $sp, 32
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 80
	move	$a0, $s1
	pcaddu18i	$ra, %call36(get_exp_one)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 136
	addi.d	$a2, $sp, 24
	addi.d	$s8, $sp, 136
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_exp_one)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240
	ld.d	$a1, $sp, 224
	beq	$a0, $a1, .LBB35_94
# %bb.70:                               # %.lr.ph.i.i60.preheader
	addi.d	$s8, $sp, 224
	b	.LBB35_74
.LBB35_71:
	move	$s0, $zero
	b	.LBB35_148
.LBB35_72:                              #   in Loop: Header=BB35_74 Depth=1
	st.d	$a0, $sp, 240
	st.d	$a2, $sp, 152
	.p2align	4, , 16
.LBB35_73:                              # %.backedge.i.i
                                        #   in Loop: Header=BB35_74 Depth=1
	ld.d	$a0, $sp, 240
	ld.d	$a1, $sp, 224
	beq	$a0, $a1, .LBB35_93
.LBB35_74:                              # %.lr.ph.i.i60
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_91 Depth 2
                                        #     Child Loop BB35_86 Depth 2
	ld.d	$a1, $sp, 152
	ld.d	$a2, $sp, 136
	beq	$a1, $a2, .LBB35_94
# %bb.75:                               #   in Loop: Header=BB35_74 Depth=1
	ld.d	$s2, $a0, -8
	ld.d	$s5, $a1, -8
	ld.w	$a3, $s2, 80
	ld.w	$a4, $s5, 80
	addi.d	$a0, $a0, -8
	bgeu	$a4, $a3, .LBB35_78
.LBB35_76:                              # %.thread.i.i
                                        #   in Loop: Header=BB35_74 Depth=1
	ld.d	$a2, $sp, 96
	ld.d	$a3, $sp, 88
	ld.w	$a1, $s2, 4
	st.d	$a0, $sp, 240
	beq	$a2, $a3, .LBB35_83
# %bb.77:                               #   in Loop: Header=BB35_74 Depth=1
	addi.d	$a0, $a2, 4
	st.d	$a0, $sp, 96
	st.w	$a1, $a2, 0
	ld.wu	$a1, $s2, 40
	bnez	$a1, .LBB35_84
	b	.LBB35_73
	.p2align	4, , 16
.LBB35_78:                              #   in Loop: Header=BB35_74 Depth=1
	addi.d	$a2, $a1, -8
	bgeu	$a3, $a4, .LBB35_81
.LBB35_79:                              #   in Loop: Header=BB35_74 Depth=1
	ld.d	$a0, $sp, 40
	ld.d	$a3, $sp, 32
	ld.w	$a1, $s5, 4
	st.d	$a2, $sp, 152
	beq	$a0, $a3, .LBB35_88
# %bb.80:                               #   in Loop: Header=BB35_74 Depth=1
	addi.d	$a2, $a0, 4
	st.d	$a2, $sp, 40
	st.w	$a1, $a0, 0
	ld.wu	$a1, $s5, 40
	bnez	$a1, .LBB35_89
	b	.LBB35_73
.LBB35_81:                              #   in Loop: Header=BB35_74 Depth=1
	bltu	$s5, $s2, .LBB35_76
# %bb.82:                               #   in Loop: Header=BB35_74 Depth=1
	bgeu	$s2, $s5, .LBB35_72
	b	.LBB35_79
.LBB35_83:                              #   in Loop: Header=BB35_74 Depth=1
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(stack_push_internal)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s2, 40
	beqz	$a1, .LBB35_73
.LBB35_84:                              # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB35_74 Depth=1
	move	$s5, $zero
	move	$s7, $zero
	b	.LBB35_86
	.p2align	4, , 16
.LBB35_85:                              #   in Loop: Header=BB35_86 Depth=2
	addi.d	$s7, $s7, 1
	addi.d	$s5, $s5, 8
	bgeu	$s7, $a1, .LBB35_73
.LBB35_86:                              #   Parent Loop BB35_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 48
	ldx.d	$a0, $a0, $s5
	ld.w	$a2, $a0, 0
	beqz	$a2, .LBB35_85
# %bb.87:                               #   in Loop: Header=BB35_86 Depth=2
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 80
	pcaddu18i	$ra, %call36(get_exp_one)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s2, 40
	b	.LBB35_85
.LBB35_88:                              #   in Loop: Header=BB35_74 Depth=1
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(stack_push_internal)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s5, 40
	beqz	$a1, .LBB35_73
.LBB35_89:                              # %.lr.ph.i46.i.i
                                        #   in Loop: Header=BB35_74 Depth=1
	move	$s2, $zero
	move	$s7, $zero
	b	.LBB35_91
	.p2align	4, , 16
.LBB35_90:                              #   in Loop: Header=BB35_91 Depth=2
	addi.d	$s7, $s7, 1
	addi.d	$s2, $s2, 8
	bgeu	$s7, $a1, .LBB35_73
.LBB35_91:                              #   Parent Loop BB35_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s5, 48
	ldx.d	$a0, $a0, $s2
	ld.w	$a2, $a0, 0
	beqz	$a2, .LBB35_90
# %bb.92:                               #   in Loop: Header=BB35_91 Depth=2
	addi.d	$a1, $sp, 136
	addi.d	$a2, $sp, 24
	pcaddu18i	$ra, %call36(get_exp_one)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s5, 40
	b	.LBB35_90
.LBB35_93:
	addi.d	$s8, $sp, 136
.LBB35_94:                              # %._crit_edge.i.i61
	ld.d	$a1, $s8, 16
	ld.d	$a0, $s8, 0
	beq	$a1, $a0, .LBB35_98
# %bb.95:                               # %.lr.ph58.i.i
	addi.d	$a0, $sp, 224
	beq	$s8, $a0, .LBB35_97
	.p2align	4, , 16
.LBB35_96:                              # %.lr.ph58.split.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, -8
	addi.d	$a1, $a1, -8
	st.d	$a1, $s8, 16
	addi.d	$a1, $sp, 24
	pcaddu18i	$ra, %call36(get_exp_all)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 16
	ld.d	$a0, $s8, 0
	bne	$a1, $a0, .LBB35_96
	b	.LBB35_98
	.p2align	4, , 16
.LBB35_97:                              # %.lr.ph58.split.us.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, -8
	addi.d	$a1, $a1, -8
	st.d	$a1, $s8, 16
	addi.d	$a1, $sp, 80
	pcaddu18i	$ra, %call36(get_exp_all)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 16
	ld.d	$a0, $s8, 0
	bne	$a1, $a0, .LBB35_97
.LBB35_98:                              # %get_unshared_priorities.exit.i
	ld.d	$a0, $sp, 80
	ld.d	$a1, $sp, 96
	sub.d	$a1, $a1, $a0
	srli.d	$a2, $a1, 2
	addi.w	$a1, $a2, 0
	ori	$a3, $zero, 2
	blt	$a1, $a3, .LBB35_105
# %bb.99:                               # %.preheader.us.preheader.i.i
	addi.d	$a2, $a2, -1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a4, $a0, 4
	b	.LBB35_101
	.p2align	4, , 16
.LBB35_100:                             # %..loopexit_crit_edge.us.i.i
                                        #   in Loop: Header=BB35_101 Depth=1
	beqz	$t0, .LBB35_105
.LBB35_101:                             # %.preheader.us.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_103 Depth 2
	ld.w	$a5, $a0, 0
	move	$t0, $zero
	move	$a6, $a2
	move	$a7, $a4
	b	.LBB35_103
	.p2align	4, , 16
.LBB35_102:                             #   in Loop: Header=BB35_103 Depth=2
	st.w	$t1, $a7, -4
	st.w	$a5, $a7, 0
	ori	$t0, $zero, 1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 4
	beqz	$a6, .LBB35_100
.LBB35_103:                             #   Parent Loop BB35_101 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a7, 0
	blt	$t1, $a5, .LBB35_102
# %bb.104:                              #   in Loop: Header=BB35_103 Depth=2
	move	$a5, $t1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 4
	bnez	$a6, .LBB35_103
	b	.LBB35_100
.LBB35_105:                             # %intsort.exit.i
	ld.d	$a2, $sp, 24
	ld.d	$a4, $sp, 40
	sub.d	$a4, $a4, $a2
	srli.d	$a5, $a4, 2
	addi.w	$a4, $a5, 0
	blt	$a4, $a3, .LBB35_112
# %bb.106:                              # %.preheader.us.preheader.i49.i
	addi.d	$a3, $a5, -1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a5, $a2, 4
	b	.LBB35_108
	.p2align	4, , 16
.LBB35_107:                             # %..loopexit_crit_edge.us.i58.i
                                        #   in Loop: Header=BB35_108 Depth=1
	beqz	$t1, .LBB35_112
.LBB35_108:                             # %.preheader.us.i51.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_110 Depth 2
	ld.w	$a6, $a2, 0
	move	$t1, $zero
	move	$a7, $a3
	move	$t0, $a5
	b	.LBB35_110
	.p2align	4, , 16
.LBB35_109:                             #   in Loop: Header=BB35_110 Depth=2
	st.w	$t2, $t0, -4
	st.w	$a6, $t0, 0
	ori	$t1, $zero, 1
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	beqz	$a7, .LBB35_107
.LBB35_110:                             #   Parent Loop BB35_108 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t0, 0
	blt	$t2, $a6, .LBB35_109
# %bb.111:                              #   in Loop: Header=BB35_110 Depth=2
	move	$a6, $t2
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	bnez	$a7, .LBB35_110
	b	.LBB35_107
.LBB35_112:                             # %intsort.exit60.i
	slt	$a3, $a1, $a4
	masknez	$a4, $a4, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a4
	addi.w	$s8, $zero, -1
	blez	$a1, .LBB35_117
# %bb.113:                              # %.lr.ph.preheader.i.i
	slli.d	$a1, $a1, 2
	.p2align	4, , 16
.LBB35_114:                             # %.lr.ph.i63.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	ld.w	$a4, $a2, 0
	blt	$a4, $a3, .LBB35_118
# %bb.115:                              #   in Loop: Header=BB35_114 Depth=1
	blt	$a3, $a4, .LBB35_119
# %bb.116:                              #   in Loop: Header=BB35_114 Depth=1
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB35_114
.LBB35_117:
	move	$s2, $zero
	ori	$s5, $zero, 1
	b	.LBB35_120
.LBB35_118:
	move	$s5, $zero
	move	$s2, $s8
	b	.LBB35_120
.LBB35_119:
	move	$s5, $zero
	ori	$s2, $zero, 1
.LBB35_120:                             # %cmp_priorities.exit.i
	ld.d	$a0, $sp, 224
	beq	$a0, $s6, .LBB35_122
# %bb.121:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB35_122:
	ld.d	$a0, $sp, 136
	st.d	$s6, $sp, 240
	st.d	$s6, $sp, 224
	addi.d	$a1, $sp, 312
	st.d	$a1, $sp, 232
	beq	$a0, $s4, .LBB35_124
# %bb.123:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB35_124:
	ld.d	$a0, $sp, 80
	st.d	$s4, $sp, 152
	st.d	$s4, $sp, 136
	addi.d	$a1, $sp, 224
	st.d	$a1, $sp, 144
	beq	$a0, $fp, .LBB35_126
# %bb.125:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB35_126:
	ld.d	$a0, $sp, 24
	st.d	$fp, $sp, 96
	st.d	$fp, $sp, 80
	addi.d	$a1, $sp, 136
	st.d	$a1, $sp, 88
	beq	$a0, $s3, .LBB35_128
# %bb.127:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB35_128:
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	beqz	$s5, .LBB35_143
.LBB35_129:
	ld.w	$a0, $t6, 104
	beqz	$a0, .LBB35_132
.LBB35_130:                             # %cmp_eagerness.exit.thread.i
	ld.w	$a0, $t6, 108
	beqz	$a0, .LBB35_141
.LBB35_131:
	ld.d	$a0, $s0, 104
	st.d	$a0, $s1, 104
	st.d	$s1, $s0, 104
	b	.LBB35_148
.LBB35_132:
	ld.w	$a3, $s1, 40
	ld.w	$a4, $s0, 40
	sltu	$a0, $a3, $a4
	masknez	$a1, $a4, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a1
	blez	$a0, .LBB35_130
# %bb.133:                              # %.lr.ph.i68.i
	move	$a1, $zero
	ld.d	$a2, $s0, 48
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	bstrpick.d	$a3, $a3, 31, 0
	bstrpick.d	$a4, $a4, 31, 0
	.p2align	4, , 16
.LBB35_134:                             # =>This Inner Loop Header: Depth=1
	move	$a5, $s1
	beqz	$a3, .LBB35_136
# %bb.135:                              #   in Loop: Header=BB35_134 Depth=1
	ld.d	$a5, $s1, 48
	ldx.d	$a5, $a5, $a1
.LBB35_136:                             #   in Loop: Header=BB35_134 Depth=1
	beqz	$a4, .LBB35_138
# %bb.137:                              #   in Loop: Header=BB35_134 Depth=1
	ldx.d	$a6, $a2, $a1
	ld.d	$a6, $a6, 200
	ld.d	$a5, $a5, 200
	bgeu	$a6, $a5, .LBB35_139
	b	.LBB35_146
.LBB35_138:                             #   in Loop: Header=BB35_134 Depth=1
	ld.d	$a6, $s0, 200
	ld.d	$a5, $a5, 200
	bltu	$a6, $a5, .LBB35_146
.LBB35_139:                             #   in Loop: Header=BB35_134 Depth=1
	bltu	$a5, $a6, .LBB35_145
# %bb.140:                              #   in Loop: Header=BB35_134 Depth=1
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, -1
	bnez	$a0, .LBB35_134
	b	.LBB35_130
.LBB35_141:
	ld.w	$a0, $s1, 80
	ld.w	$a1, $s0, 80
	bltu	$a0, $a1, .LBB35_146
# %bb.142:
	bgeu	$a1, $a0, .LBB35_131
	b	.LBB35_145
.LBB35_143:                             # %cmp_pnodes.exit
	beq	$s2, $s8, .LBB35_146
# %bb.144:                              # %cmp_pnodes.exit
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB35_131
.LBB35_145:
	move	$a0, $t6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(free_PNode)
	jirl	$ra, $ra, 0
	b	.LBB35_148
.LBB35_146:
	move	$a0, $t6
	move	$a1, $s1
	move	$fp, $t6
	pcaddu18i	$ra, %call36(insert_PNode_internal)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 208
	ld.w	$a1, $s1, 32
	st.d	$a0, $s1, 88
	st.d	$s1, $fp, 208
	st.d	$s1, $s0, 112
	addi.d	$a0, $a1, 2
	st.w	$a0, $s1, 32
.LBB35_147:                             # %PNode_equal.exit.thread74
	move	$s0, $s1
.LBB35_148:                             # %PNode_equal.exit.thread74
	move	$a0, $s0
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.LBB35_149:
	ld.d	$a0, $s0, 16
	beq	$s3, $a0, .LBB35_151
.LBB35_150:
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
	b	.LBB35_3
.LBB35_151:
	ld.w	$a0, $s0, 40
	bnez	$s2, .LBB35_153
# %bb.152:
	beqz	$a0, .LBB35_148
.LBB35_153:
	ld.w	$a1, $s2, 0
	bne	$a0, $a1, .LBB35_150
# %bb.154:                              # %.preheader.i
	blez	$a0, .LBB35_148
# %bb.155:                              # %.lr.ph.i52
	ld.d	$a1, $s0, 48
	ld.d	$a2, $s2, 8
	addi.w	$a3, $a0, -1
.LBB35_156:                             # =>This Inner Loop Header: Depth=1
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a2, $a4
	ld.d	$a5, $a1, 0
	ld.d	$a4, $a4, 0
	ld.d	$a5, $a5, 112
	ld.d	$a4, $a4, 112
	bne	$a5, $a4, .LBB35_150
# %bb.157:                              #   in Loop: Header=BB35_156 Depth=1
	addi.d	$a0, $a0, -1
	addi.w	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB35_156
	b	.LBB35_148
.Lfunc_end35:
	.size	add_PNode, .Lfunc_end35-add_PNode
                                        # -- End function
	.p2align	5                               # -- Begin function set_add_znode
	.type	set_add_znode,@function
set_add_znode:                          # @set_add_znode
# %bb.0:
	ld.w	$a2, $a0, 0
	ori	$a3, $zero, 2
	blt	$a3, $a2, .LBB36_5
# %bb.1:
	ld.d	$a3, $a0, 8
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a0, 16
	beqz	$a3, .LBB36_8
# %bb.2:
	beq	$a3, $a5, .LBB36_9
# %bb.3:
	andi	$a5, $a2, 7
	beqz	$a5, .LBB36_11
# %bb.4:
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a4, 3
	stx.d	$a1, $a3, $a0
	ret
.LBB36_5:
	ori	$a3, $zero, 3
	bne	$a2, $a3, .LBB36_7
# %bb.6:                                # %.loopexit.loopexit
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$s1, $a0, 8
	ld.d	$a2, $s1, 0
	st.w	$zero, $a0, 0
	st.d	$zero, $a0, 8
	move	$fp, $a0
	move	$s0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(set_add_znode_hash)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(set_add_znode_hash)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(set_add_znode_hash)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB36_7:                               # %.loopexit
	pcaddu18i	$t8, %call36(set_add_znode_hash)
	jr	$t8
.LBB36_8:
	st.d	$a5, $a0, 8
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a4, 3
	stx.d	$a1, $a5, $a0
	ret
.LBB36_9:
	ori	$a4, $zero, 2
	bltu	$a4, $a2, .LBB36_11
# %bb.10:
	addi.d	$a4, $a2, 1
	st.w	$a4, $a0, 0
	slli.d	$a0, $a2, 3
	stx.d	$a1, $a3, $a0
	ret
.LBB36_11:
	pcaddu18i	$t8, %call36(vec_add_internal)
	jr	$t8
.Lfunc_end36:
	.size	set_add_znode, .Lfunc_end36-set_add_znode
                                        # -- End function
	.p2align	5                               # -- Begin function reduce_one
	.type	reduce_one,@function
reduce_one:                             # @reduce_one
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
	ld.d	$fp, $a1, 8
	ld.d	$a2, $a1, 0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a5, $a1, 16
	move	$s0, $a0
	beqz	$a2, .LBB37_55
# %bb.1:
	ld.hu	$s1, $a5, 0
	st.w	$zero, $sp, 128
	st.d	$zero, $sp, 136
	pcalau12i	$a0, %pc_hi20(path1)
	addi.d	$a1, $a0, %pc_lo12(path1)
	addi.d	$a0, $sp, 144
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	beqz	$s1, .LBB37_59
# %bb.2:                                # %build_paths.exit
	st.w	$zero, $a1, 0
	st.d	$zero, $a1, 8
	st.d	$a0, $sp, 136
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 128
	st.d	$a1, $sp, 144
	addi.d	$a1, $sp, 128
	move	$a0, $a2
	move	$a2, $zero
	move	$a3, $s1
	move	$a4, $s1
	pcaddu18i	$ra, %call36(build_paths_internal)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 128
	beqz	$a0, .LBB37_74
# %bb.3:                                # %.lr.ph100
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	addi.d	$s3, $fp, 24
	pcalau12i	$a0, %pc_hi20(child_table)
	addi.d	$a0, $a0, %pc_lo12(child_table)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $zero
	b	.LBB37_6
.LBB37_4:                               #   in Loop: Header=BB37_6 Depth=1
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $a3, $a0
	ld.d	$a2, $a0, 0
	move	$a0, $s6
	move	$a1, $s7
	pcaddu18i	$ra, %call36(check_assoc_priority)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_47
	.p2align	4, , 16
.LBB37_5:                               # %check_path_priorities_internal.exit.thread81
                                        #   in Loop: Header=BB37_6 Depth=1
	ld.wu	$a1, $sp, 128
	addi.d	$s1, $s1, 1
	bgeu	$s1, $a1, .LBB37_60
.LBB37_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_9 Depth 2
                                        #     Child Loop BB37_28 Depth 2
                                        #       Child Loop BB37_31 Depth 3
                                        #         Child Loop BB37_35 Depth 4
                                        #           Child Loop BB37_38 Depth 5
                                        #     Child Loop BB37_18 Depth 2
                                        #       Child Loop BB37_19 Depth 3
                                        #       Child Loop BB37_23 Depth 3
                                        #     Child Loop BB37_50 Depth 2
	ld.d	$a1, $sp, 136
	slli.d	$a2, $s1, 3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 24
	ldx.d	$s4, $a1, $a2
	beqz	$a0, .LBB37_11
# %bb.7:                                # %.preheader87
                                        #   in Loop: Header=BB37_6 Depth=1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 32
	ld.d	$a2, $s4, 8
	slli.d	$a1, $a1, 3
	ldx.d	$a2, $a2, $a1
	ld.wu	$a1, $a2, 8
	beqz	$a1, .LBB37_5
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB37_6 Depth=1
	ld.d	$a2, $a2, 16
	.p2align	4, , 16
.LBB37_9:                               #   Parent Loop BB37_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	beq	$a3, $a0, .LBB37_11
# %bb.10:                               #   in Loop: Header=BB37_9 Depth=2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB37_9
	b	.LBB37_5
	.p2align	4, , 16
.LBB37_11:                              # %.thread
                                        #   in Loop: Header=BB37_6 Depth=1
	ld.d	$a0, $s4, 8
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	ld.wu	$a0, $s4, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB37_47
# %bb.12:                               #   in Loop: Header=BB37_6 Depth=1
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $s6, 8
	beqz	$a1, .LBB37_41
# %bb.13:                               #   in Loop: Header=BB37_6 Depth=1
	move	$a1, $zero
.LBB37_14:                              #   in Loop: Header=BB37_6 Depth=1
	addi.d	$a2, $a1, 1
	bgeu	$a2, $a0, .LBB37_26
# %bb.15:                               #   in Loop: Header=BB37_6 Depth=1
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ldx.d	$a2, $a3, $a2
	ld.d	$s7, $a2, 0
	addi.d	$a1, $a1, 2
	bltu	$a1, $a0, .LBB37_4
# %bb.16:                               # %.preheader99.i
                                        #   in Loop: Header=BB37_6 Depth=1
	ld.wu	$s2, $a2, 8
	beqz	$s2, .LBB37_46
# %bb.17:                               # %.preheader.lr.ph.i
                                        #   in Loop: Header=BB37_6 Depth=1
	ld.d	$a0, $a2, 16
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	move	$a2, $zero
	addi.d	$a0, $s2, -1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
.LBB37_18:                              # %.preheader.outer.i
                                        #   Parent Loop BB37_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB37_19 Depth 3
                                        #       Child Loop BB37_23 Depth 3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	move	$fp, $a2
	.p2align	4, , 16
.LBB37_19:                              # %.preheader.i
                                        #   Parent Loop BB37_6 Depth=1
                                        #     Parent Loop BB37_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a1, 0
	ld.wu	$s5, $a2, 72
	bnez	$s5, .LBB37_21
# %bb.20:                               # %._crit_edge116.i
                                        #   in Loop: Header=BB37_19 Depth=3
	addi.d	$fp, $fp, 1
	addi.d	$a1, $a1, 8
	bne	$s2, $fp, .LBB37_19
	b	.LBB37_45
	.p2align	4, , 16
.LBB37_21:                              # %.lr.ph115.i
                                        #   in Loop: Header=BB37_18 Depth=2
	ld.d	$s8, $a2, 80
	b	.LBB37_23
	.p2align	4, , 16
.LBB37_22:                              #   in Loop: Header=BB37_23 Depth=3
	addi.d	$s5, $s5, -1
	addi.d	$s8, $s8, 8
	beqz	$s5, .LBB37_25
.LBB37_23:                              #   Parent Loop BB37_6 Depth=1
                                        #     Parent Loop BB37_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s8, 0
	beqz	$a0, .LBB37_22
# %bb.24:                               #   in Loop: Header=BB37_23 Depth=3
	ld.d	$a2, $a0, 0
	move	$a0, $s6
	move	$a1, $s7
	pcaddu18i	$ra, %call36(check_assoc_priority)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB37_22
	b	.LBB37_47
.LBB37_25:                              # %._crit_edge116.thread.i
                                        #   in Loop: Header=BB37_18 Depth=2
	move	$a0, $zero
	addi.d	$a2, $fp, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bne	$a1, $fp, .LBB37_18
	b	.LBB37_5
.LBB37_26:                              #   in Loop: Header=BB37_6 Depth=1
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.wu	$a1, $a0, 8
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	beqz	$a1, .LBB37_47
# %bb.27:                               # %.preheader104.lr.ph.i
                                        #   in Loop: Header=BB37_6 Depth=1
	ld.d	$a0, $a0, 16
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
.LBB37_28:                              # %.preheader104.i
                                        #   Parent Loop BB37_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB37_31 Depth 3
                                        #         Child Loop BB37_35 Depth 4
                                        #           Child Loop BB37_38 Depth 5
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.wu	$a1, $a0, 72
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	beqz	$a1, .LBB37_40
# %bb.29:                               # %.lr.ph111.i
                                        #   in Loop: Header=BB37_28 Depth=2
	ld.d	$a1, $a0, 80
	move	$s7, $zero
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	b	.LBB37_31
	.p2align	4, , 16
.LBB37_30:                              # %.loopexit103.i
                                        #   in Loop: Header=BB37_31 Depth=3
	addi.d	$s7, $s7, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	beq	$s7, $a0, .LBB37_40
.LBB37_31:                              #   Parent Loop BB37_6 Depth=1
                                        #     Parent Loop BB37_28 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB37_35 Depth 4
                                        #           Child Loop BB37_38 Depth 5
	slli.d	$a0, $s7, 3
	ldx.d	$fp, $a1, $a0
	beqz	$fp, .LBB37_30
# %bb.32:                               # %.preheader102.i
                                        #   in Loop: Header=BB37_31 Depth=3
	ld.wu	$a0, $fp, 8
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	beqz	$a0, .LBB37_30
# %bb.33:                               # %.preheader100.lr.ph.i
                                        #   in Loop: Header=BB37_31 Depth=3
	ld.d	$a0, $fp, 16
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	move	$s2, $zero
	b	.LBB37_35
	.p2align	4, , 16
.LBB37_34:                              # %._crit_edge.i
                                        #   in Loop: Header=BB37_35 Depth=4
	addi.d	$s2, $s2, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beq	$s2, $a0, .LBB37_30
.LBB37_35:                              # %.preheader100.i
                                        #   Parent Loop BB37_6 Depth=1
                                        #     Parent Loop BB37_28 Depth=2
                                        #       Parent Loop BB37_31 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB37_38 Depth 5
	slli.d	$a0, $s2, 3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.wu	$s5, $a0, 72
	beqz	$s5, .LBB37_34
# %bb.36:                               # %.lr.ph.i
                                        #   in Loop: Header=BB37_35 Depth=4
	ld.d	$s8, $a0, 80
	b	.LBB37_38
	.p2align	4, , 16
.LBB37_37:                              #   in Loop: Header=BB37_38 Depth=5
	addi.d	$s5, $s5, -1
	addi.d	$s8, $s8, 8
	beqz	$s5, .LBB37_34
.LBB37_38:                              #   Parent Loop BB37_6 Depth=1
                                        #     Parent Loop BB37_28 Depth=2
                                        #       Parent Loop BB37_31 Depth=3
                                        #         Parent Loop BB37_35 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a0, $s8, 0
	beqz	$a0, .LBB37_37
# %bb.39:                               #   in Loop: Header=BB37_38 Depth=5
	ld.d	$a1, $fp, 0
	ld.d	$a2, $a0, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(check_assoc_priority)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB37_37
	b	.LBB37_47
	.p2align	4, , 16
.LBB37_40:                              # %._crit_edge112.i
                                        #   in Loop: Header=BB37_28 Depth=2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	bne	$a1, $a0, .LBB37_28
	b	.LBB37_47
.LBB37_41:                              #   in Loop: Header=BB37_6 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 8
	ld.d	$s6, $a1, 0
	ld.w	$a1, $s6, 8
	beqz	$a1, .LBB37_47
# %bb.42:                               #   in Loop: Header=BB37_6 Depth=1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a3, $a2, 0
	beqz	$a3, .LBB37_51
# %bb.43:                               #   in Loop: Header=BB37_6 Depth=1
	ld.w	$a4, $s6, 12
	ld.w	$a5, $a2, 4
	bge	$a4, $a5, .LBB37_52
# %bb.44:                               #   in Loop: Header=BB37_6 Depth=1
	move	$a2, $zero
	b	.LBB37_54
.LBB37_45:                              # %._crit_edge119.i
                                        #   in Loop: Header=BB37_6 Depth=1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB37_5
.LBB37_46:                              #   in Loop: Header=BB37_6 Depth=1
	move	$a2, $zero
	move	$a0, $s6
	move	$a1, $s7
	pcaddu18i	$ra, %call36(check_assoc_priority)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB37_5
	.p2align	4, , 16
.LBB37_47:                              # %check_path_priorities_internal.exit.thread
                                        #   in Loop: Header=BB37_6 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a5, $a1, 16
	ld.d	$s2, $a0, -8
	ld.w	$a0, $s0, 168
	ld.hu	$a1, $a5, 2
	ld.d	$a2, $s2, 0
	ld.d	$a3, $s3, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 168
	addi.d	$a2, $a2, 160
	move	$a0, $s0
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	move	$a6, $s4
	move	$a7, $zero
	pcaddu18i	$ra, %call36(add_PNode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_5
# %bb.48:                               # %.preheader
                                        #   in Loop: Header=BB37_6 Depth=1
	move	$s4, $a0
	ld.w	$a0, $s2, 8
	beqz	$a0, .LBB37_5
# %bb.49:                               # %.lr.ph98
                                        #   in Loop: Header=BB37_6 Depth=1
	move	$fp, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB37_50:                              #   Parent Loop BB37_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 16
	ldx.d	$a3, $a0, $fp
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(goto_PNode)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s2, 8
	addi.d	$s5, $s5, 1
	addi.d	$fp, $fp, 8
	bltu	$s5, $a0, .LBB37_50
	b	.LBB37_5
.LBB37_51:                              #   in Loop: Header=BB37_6 Depth=1
	ori	$a1, $zero, 1
	b	.LBB37_14
.LBB37_52:                              #   in Loop: Header=BB37_6 Depth=1
	ori	$a2, $zero, 1
	blt	$a5, $a4, .LBB37_54
# %bb.53:                               #   in Loop: Header=BB37_6 Depth=1
	srli.d	$a2, $a1, 1
	bstrpick.d	$a4, $a3, 1, 1
	bstrins.d	$a2, $a4, 63, 1
	addi.d	$a2, $a2, 2
.LBB37_54:                              # %check_child.exit.i
                                        #   in Loop: Header=BB37_6 Depth=1
	andi	$a4, $a3, 20
	sltui	$a4, $a4, 1
	addi.d	$a3, $a3, -9
	sltui	$a3, $a3, 1
	ori	$a5, $zero, 2
	sub.d	$a3, $a5, $a3
	maskeqz	$a3, $a3, $a4
	andi	$a4, $a1, 20
	sltui	$a4, $a4, 1
	addi.d	$a1, $a1, -9
	sltui	$a1, $a1, 1
	xori	$a5, $a1, 3
	ori	$a1, $zero, 1
	masknez	$a6, $a1, $a4
	maskeqz	$a4, $a5, $a4
	or	$a4, $a4, $a6
	slli.d	$a5, $a4, 3
	slli.d	$a4, $a4, 6
	or	$a4, $a4, $a5
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	add.d	$a4, $a5, $a4
	slli.d	$a5, $a3, 4
	alsl.d	$a3, $a3, $a5, 3
	add.d	$a3, $a4, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	bnez	$a2, .LBB37_14
	b	.LBB37_5
.LBB37_55:
	ld.hu	$a1, $a5, 2
	ld.d	$a3, $fp, 24
	ld.d	$a4, $fp, 64
	addi.d	$s2, $fp, 24
	move	$a0, $s0
	move	$a2, $s2
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(add_PNode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_57
# %bb.56:
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(goto_PNode)
	jirl	$ra, $ra, 0
.LBB37_57:
	ld.w	$a0, $fp, 112
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 112
	beqz	$a0, .LBB37_73
.LBB37_58:
	ld.d	$a0, $s0, 296
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, 40
	st.d	$a1, $s0, 296
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
.LBB37_59:
	move	$a1, $zero
.LBB37_60:                              # %._crit_edge
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB37_63
.LBB37_61:                              # %._crit_edge
	addi.d	$a2, $fp, 16
	beq	$a0, $a2, .LBB37_63
# %bb.62:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 128
.LBB37_63:
	st.w	$zero, $fp, 0
	addi.w	$a0, $a1, 0
	ori	$a1, $zero, 2
	st.d	$zero, $fp, 8
	bltu	$a0, $a1, .LBB37_69
# %bb.64:                               # %.lr.ph.i74.preheader
	ori	$fp, $zero, 1
	ori	$s1, $zero, 8
	b	.LBB37_66
	.p2align	4, , 16
.LBB37_65:                              #   in Loop: Header=BB37_66 Depth=1
	st.d	$zero, $a2, 8
	ldx.d	$a0, $a1, $s1
	st.w	$zero, $a2, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $sp, 128
	addi.d	$fp, $fp, 1
	addi.d	$s1, $s1, 8
	bgeu	$fp, $a0, .LBB37_69
.LBB37_66:                              # %.lr.ph.i74
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 136
	ldx.d	$a2, $a1, $s1
	ld.d	$a0, $a2, 8
	beqz	$a0, .LBB37_65
# %bb.67:                               # %.lr.ph.i74
                                        #   in Loop: Header=BB37_66 Depth=1
	addi.d	$a3, $a2, 16
	beq	$a0, $a3, .LBB37_65
# %bb.68:                               #   in Loop: Header=BB37_66 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	ldx.d	$a2, $a1, $s1
	b	.LBB37_65
.LBB37_69:                              # %._crit_edge.i72
	ld.d	$a0, $sp, 136
	beqz	$a0, .LBB37_72
# %bb.70:                               # %._crit_edge.i72
	addi.d	$a1, $sp, 144
	beq	$a0, $a1, .LBB37_72
# %bb.71:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB37_72:                              # %free_paths.exit
	st.w	$zero, $sp, 128
	st.d	$zero, $sp, 136
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 112
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 112
	bnez	$a0, .LBB37_58
.LBB37_73:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(free_SNode)
	jirl	$ra, $ra, 0
	b	.LBB37_58
.LBB37_74:
	move	$a1, $zero
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $fp, 8
	bnez	$a0, .LBB37_61
	b	.LBB37_63
.Lfunc_end37:
	.size	reduce_one, .Lfunc_end37-reduce_one
                                        # -- End function
	.p2align	5                               # -- Begin function commit_stack
	.type	commit_stack,@function
commit_stack:                           # @commit_stack
# %bb.0:
	ld.w	$a3, $a1, 72
	ori	$a2, $zero, 1
	bne	$a3, $a2, .LBB38_3
# %bb.1:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a3, $a1, 80
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a3, 8
	bgeu	$a2, $a4, .LBB38_4
# %bb.2:
	addi.w	$a0, $zero, -2
	b	.LBB38_9
.LBB38_3:
	addi.w	$a0, $zero, -1
	ret
.LBB38_4:
	ld.d	$a2, $a3, 0
	ld.d	$a5, $a2, 160
	ld.d	$a6, $a2, 192
	beq	$a5, $a6, .LBB38_10
.LBB38_5:
	move	$fp, $a1
	beqz	$a4, .LBB38_8
# %bb.6:
	ld.d	$a1, $a3, 16
	ld.d	$a1, $a1, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(commit_stack)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB38_9
# %bb.7:                                # %._crit_edge
	ld.d	$a0, $fp, 80
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 0
	move	$a0, $s0
.LBB38_8:
	move	$a1, $a2
	pcaddu18i	$ra, %call36(commit_tree)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 80
	ld.d	$a2, $a1, 0
	move	$a1, $a0
	move	$a0, $zero
	st.d	$a1, $a2, 0
.LBB38_9:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB38_10:
	ld.d	$a5, $a2, 16
	beqz	$a5, .LBB38_5
# %bb.11:
	ld.d	$a5, $a5, 16
	beqz	$a5, .LBB38_5
# %bb.12:
	addi.w	$a0, $zero, -3
	b	.LBB38_9
.Lfunc_end38:
	.size	commit_stack, .Lfunc_end38-commit_stack
                                        # -- End function
	.p2align	5                               # -- Begin function new_SNode
	.type	new_SNode,@function
new_SNode:                              # @new_SNode
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
	ld.d	$s0, $a0, 328
	move	$s2, $a4
	move	$s3, $a3
	move	$s1, $a2
	move	$s4, $a1
	beqz	$s0, .LBB39_2
# %bb.1:
	ld.d	$a0, $s0, 128
	st.d	$a0, $fp, 328
	b	.LBB39_3
.LBB39_2:
	ori	$a0, $zero, 136
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.LBB39_3:
	st.w	$zero, $s0, 56
	st.w	$zero, $s0, 72
	ld.w	$a0, $fp, 152
	st.d	$zero, $s0, 80
	st.w	$zero, $s0, 112
	st.d	$zero, $s0, 128
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 152
	st.d	$s4, $s0, 0
	st.d	$s3, $s0, 8
	st.d	$s2, $s0, 16
	vld	$vr0, $s1, 0
	vst	$vr0, $s0, 24
	vld	$vr0, $s1, 16
	vst	$vr0, $s0, 40
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(insert_SNode_internal)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ld.w	$a0, $s0, 112
	ld.d	$a2, $fp, 240
	ld.bu	$a1, $a1, 89
	addi.d	$a3, $a0, 1
	st.w	$a3, $s0, 112
	st.d	$a2, $s0, 128
	st.d	$s0, $fp, 240
	beqz	$a1, .LBB39_10
# %bb.4:
	ld.d	$a1, $fp, 280
	beqz	$a1, .LBB39_8
# %bb.5:
	addi.d	$a2, $s0, 24
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a1, 24
	bgeu	$a3, $a2, .LBB39_10
# %bb.6:
	addi.d	$a0, $a0, 2
	st.w	$a0, $s0, 112
	ld.w	$a0, $a1, 112
	addi.w	$a0, $a0, -1
	st.w	$a0, $a1, 112
	bnez	$a0, .LBB39_9
# %bb.7:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_SNode)
	jirl	$ra, $ra, 0
	b	.LBB39_9
.LBB39_8:
	addi.d	$a0, $a0, 2
	st.w	$a0, $s0, 112
.LBB39_9:                               # %.sink.split
	st.d	$s0, $fp, 280
.LBB39_10:
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
.Lfunc_end39:
	.size	new_SNode, .Lfunc_end39-new_SNode
                                        # -- End function
	.p2align	5                               # -- Begin function add_Reduction
	.type	add_Reduction,@function
add_Reduction:                          # @add_Reduction
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	addi.d	$fp, $a0, 256
	lu12i.w	$a6, 524287
	beqz	$a1, .LBB40_4
# %bb.1:                                # %.preheader.i
	ld.w	$a4, $a1, 8
	beqz	$a4, .LBB40_5
# %bb.2:                                # %.lr.ph.i
	ld.d	$a5, $a1, 16
	ori	$t0, $zero, 4
	bstrpick.d	$a7, $a4, 31, 0
	bgeu	$a4, $t0, .LBB40_6
# %bb.3:
	move	$t0, $zero
	move	$a4, $zero
	b	.LBB40_9
.LBB40_4:
	ori	$a4, $a6, 4095
	b	.LBB40_11
.LBB40_5:
	move	$a4, $zero
	b	.LBB40_11
.LBB40_6:                               # %vector.ph
	bstrpick.d	$a4, $a7, 31, 2
	slli.d	$t0, $a4, 2
	vrepli.b	$vr0, 0
	addi.d	$a4, $a5, 16
	move	$t1, $t0
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB40_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a4, -16
	ld.d	$t3, $a4, -8
	ld.d	$t4, $a4, 0
	ld.d	$t5, $a4, 8
	ld.w	$t2, $t2, 56
	ld.w	$t3, $t3, 56
	ld.w	$t4, $t4, 56
	ld.w	$t5, $t5, 56
	vinsgr2vr.w	$vr2, $t2, 0
	vinsgr2vr.w	$vr2, $t3, 1
	vinsgr2vr.w	$vr3, $t4, 0
	vinsgr2vr.w	$vr3, $t5, 1
	vmax.wu	$vr0, $vr0, $vr2
	vmax.wu	$vr1, $vr1, $vr3
	addi.d	$t1, $t1, -4
	addi.d	$a4, $a4, 32
	bnez	$t1, .LBB40_7
# %bb.8:                                # %middle.block
	vmax.wu	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 4
	vmax.wu	$vr0, $vr1, $vr0
	vpickve2gr.w	$a4, $vr0, 0
	beq	$t0, $a7, .LBB40_11
.LBB40_9:                               # %scalar.ph.preheader
	sub.d	$a7, $a7, $t0
	alsl.d	$a5, $t0, $a5, 3
	.p2align	4, , 16
.LBB40_10:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a5, 0
	ld.w	$t0, $t0, 56
	sltu	$t1, $t0, $a4
	masknez	$t0, $t0, $t1
	maskeqz	$a4, $a4, $t1
	or	$a4, $a4, $t0
	addi.d	$a7, $a7, -1
	addi.d	$a5, $a5, 8
	bnez	$a7, .LBB40_10
.LBB40_11:                              # %znode_depth.exit
	ld.d	$s0, $fp, 0
	beqz	$s0, .LBB40_34
# %bb.12:                               # %.lr.ph
	ld.d	$a5, $a2, 24
	ori	$a6, $a6, 4095
	ori	$a7, $zero, 4
	vrepli.b	$vr0, 0
	b	.LBB40_14
	.p2align	4, , 16
.LBB40_13:                              #   in Loop: Header=BB40_14 Depth=1
	addi.d	$fp, $s0, 40
	ld.d	$s0, $s0, 40
	beqz	$s0, .LBB40_34
.LBB40_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_21 Depth 2
                                        #     Child Loop BB40_24 Depth 2
	ld.d	$t0, $s0, 8
	ld.d	$t0, $t0, 24
	bltu	$a5, $t0, .LBB40_35
# %bb.15:                               #   in Loop: Header=BB40_14 Depth=1
	ld.d	$t1, $s0, 0
	move	$t4, $a6
	beqz	$t1, .LBB40_25
# %bb.16:                               # %.preheader.i51
                                        #   in Loop: Header=BB40_14 Depth=1
	ld.w	$t3, $t1, 8
	beqz	$t3, .LBB40_19
# %bb.17:                               # %.lr.ph.i53
                                        #   in Loop: Header=BB40_14 Depth=1
	ld.d	$t1, $t1, 16
	bstrpick.d	$t2, $t3, 31, 0
	bgeu	$t3, $a7, .LBB40_20
# %bb.18:                               #   in Loop: Header=BB40_14 Depth=1
	move	$t3, $zero
	move	$t4, $zero
	b	.LBB40_23
	.p2align	4, , 16
.LBB40_19:                              #   in Loop: Header=BB40_14 Depth=1
	move	$t4, $zero
	b	.LBB40_25
.LBB40_20:                              # %vector.ph94
                                        #   in Loop: Header=BB40_14 Depth=1
	bstrpick.d	$t3, $t2, 31, 2
	slli.d	$t3, $t3, 2
	addi.d	$t4, $t1, 16
	move	$t5, $t3
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB40_21:                              # %vector.body97
                                        #   Parent Loop BB40_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t6, $t4, -16
	ld.d	$t7, $t4, -8
	ld.d	$t8, $t4, 0
	ld.d	$s1, $t4, 8
	ld.w	$t6, $t6, 56
	ld.w	$t7, $t7, 56
	ld.w	$t8, $t8, 56
	ld.w	$s1, $s1, 56
	vinsgr2vr.w	$vr3, $t6, 0
	vinsgr2vr.w	$vr3, $t7, 1
	vinsgr2vr.w	$vr4, $t8, 0
	vinsgr2vr.w	$vr4, $s1, 1
	vmax.wu	$vr1, $vr1, $vr3
	vmax.wu	$vr2, $vr2, $vr4
	addi.d	$t5, $t5, -4
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB40_21
# %bb.22:                               # %middle.block104
                                        #   in Loop: Header=BB40_14 Depth=1
	vmax.wu	$vr1, $vr1, $vr2
	vbsrl.v	$vr2, $vr1, 4
	vmax.wu	$vr1, $vr2, $vr1
	vpickve2gr.w	$t4, $vr1, 0
	beq	$t3, $t2, .LBB40_25
.LBB40_23:                              # %scalar.ph92.preheader
                                        #   in Loop: Header=BB40_14 Depth=1
	sub.d	$t2, $t2, $t3
	alsl.d	$t1, $t3, $t1, 3
	.p2align	4, , 16
.LBB40_24:                              # %scalar.ph92
                                        #   Parent Loop BB40_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t1, 0
	ld.w	$t3, $t3, 56
	sltu	$t5, $t3, $t4
	masknez	$t3, $t3, $t5
	maskeqz	$t4, $t4, $t5
	or	$t4, $t4, $t3
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	bnez	$t2, .LBB40_24
.LBB40_25:                              # %znode_depth.exit61
                                        #   in Loop: Header=BB40_14 Depth=1
	bne	$a5, $t0, .LBB40_13
# %bb.26:                               # %znode_depth.exit61
                                        #   in Loop: Header=BB40_14 Depth=1
	blt	$a4, $t4, .LBB40_13
# %bb.27:
	bne	$a4, $t4, .LBB40_35
# %bb.28:                               # %.preheader.preheader
	move	$a4, $s0
	b	.LBB40_30
	.p2align	4, , 16
.LBB40_29:                              #   in Loop: Header=BB40_30 Depth=1
	ld.d	$a4, $a4, 40
	beqz	$a4, .LBB40_35
.LBB40_30:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 8
	bne	$a2, $a5, .LBB40_29
# %bb.31:                               #   in Loop: Header=BB40_30 Depth=1
	ld.d	$a5, $a4, 0
	bne	$a1, $a5, .LBB40_29
# %bb.32:                               #   in Loop: Header=BB40_30 Depth=1
	ld.d	$a5, $a4, 16
	bne	$a3, $a5, .LBB40_29
# %bb.33:
	move	$a4, $zero
	b	.LBB40_39
.LBB40_34:
	move	$s0, $zero
.LBB40_35:                              # %.loopexit62
	ld.d	$a4, $a0, 296
	beqz	$a4, .LBB40_37
# %bb.36:
	ld.d	$a5, $a4, 40
	st.d	$a5, $a0, 296
	ld.d	$s0, $fp, 0
	b	.LBB40_38
.LBB40_37:
	ori	$a0, $zero, 48
	move	$s1, $a3
	move	$s3, $a2
	move	$s2, $a1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s1
	move	$a4, $a0
.LBB40_38:
	ld.w	$a0, $a2, 112
	st.d	$a1, $a4, 0
	st.d	$a2, $a4, 8
	st.d	$zero, $a4, 24
	addi.d	$a0, $a0, 1
	st.w	$a0, $a2, 112
	st.d	$a3, $a4, 16
	st.d	$s0, $a4, 40
	st.d	$a4, $fp, 0
.LBB40_39:                              # %.loopexit
	move	$a0, $a4
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end40:
	.size	add_Reduction, .Lfunc_end40-add_Reduction
                                        # -- End function
	.p2align	5                               # -- Begin function get_exp_one
	.type	get_exp_one,@function
get_exp_one:                            # @get_exp_one
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 4
	move	$fp, $a1
	bnez	$a0, .LBB41_3
# %bb.1:
	ld.d	$a1, $fp, 16
	ld.d	$a0, $fp, 8
	beq	$a1, $a0, .LBB41_5
# %bb.2:
	addi.d	$a0, $a1, 8
	st.d	$a0, $fp, 16
	st.d	$s0, $a1, 0
	ld.d	$a1, $fp, 0
	addi.d	$a1, $a1, 8
	bltu	$a1, $a0, .LBB41_8
	b	.LBB41_16
.LBB41_3:
	move	$s1, $a2
	ld.d	$a0, $a2, 16
	ld.d	$a2, $a2, 8
	ld.w	$a1, $s0, 4
	beq	$a0, $a2, .LBB41_11
# %bb.4:
	addi.d	$a2, $a0, 4
	st.d	$a2, $s1, 16
	st.w	$a1, $a0, 0
	ld.wu	$a1, $s0, 40
	bnez	$a1, .LBB41_12
	b	.LBB41_16
.LBB41_5:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(stack_push_internal)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	addi.d	$a1, $a1, 8
	bltu	$a1, $a0, .LBB41_8
	b	.LBB41_16
	.p2align	4, , 16
.LBB41_6:                               #   in Loop: Header=BB41_8 Depth=1
	st.d	$a3, $a0, -8
	st.d	$a2, $a0, -16
.LBB41_7:                               #   in Loop: Header=BB41_8 Depth=1
	addi.d	$a0, $a0, -8
	bgeu	$a1, $a0, .LBB41_16
.LBB41_8:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, -8
	ld.d	$a3, $a0, -16
	ld.w	$a4, $a2, 80
	ld.w	$a5, $a3, 80
	bltu	$a5, $a4, .LBB41_7
# %bb.9:                                #   in Loop: Header=BB41_8 Depth=1
	bgeu	$a3, $a2, .LBB41_6
# %bb.10:                               #   in Loop: Header=BB41_8 Depth=1
	beq	$a4, $a5, .LBB41_7
	b	.LBB41_6
.LBB41_11:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(stack_push_internal)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s0, 40
	beqz	$a1, .LBB41_16
.LBB41_12:                              # %.lr.ph
	move	$s2, $zero
	move	$s3, $zero
	b	.LBB41_14
	.p2align	4, , 16
.LBB41_13:                              #   in Loop: Header=BB41_14 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bgeu	$s3, $a1, .LBB41_16
.LBB41_14:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 48
	ldx.d	$a0, $a0, $s2
	ld.w	$a2, $a0, 0
	beqz	$a2, .LBB41_13
# %bb.15:                               #   in Loop: Header=BB41_14 Depth=1
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(get_exp_one)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s0, 40
	b	.LBB41_13
.LBB41_16:                              # %priority_insert.exit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end41:
	.size	get_exp_one, .Lfunc_end41-get_exp_one
                                        # -- End function
	.p2align	5                               # -- Begin function get_exp_all
	.type	get_exp_all,@function
get_exp_all:                            # @get_exp_all
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 0
	move	$s0, $a1
	beqz	$a0, .LBB42_3
# %bb.1:
	ld.d	$a0, $s0, 16
	ld.d	$a2, $s0, 8
	ld.w	$a1, $fp, 4
	beq	$a0, $a2, .LBB42_7
# %bb.2:
	addi.d	$a2, $a0, 4
	st.d	$a2, $s0, 16
	st.w	$a1, $a0, 0
.LBB42_3:
	ld.w	$a0, $fp, 40
	beqz	$a0, .LBB42_6
.LBB42_4:                               # %.lr.ph
	move	$s1, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB42_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 48
	ldx.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 112
	move	$a1, $s0
	pcaddu18i	$ra, %call36(get_exp_all)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 40
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bltu	$s2, $a0, .LBB42_5
.LBB42_6:                               # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB42_7:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(stack_push_internal)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	bnez	$a0, .LBB42_4
	b	.LBB42_6
.Lfunc_end42:
	.size	get_exp_all, .Lfunc_end42-get_exp_all
                                        # -- End function
	.p2align	5                               # -- Begin function set_add_znode_hash
	.type	set_add_znode_hash,@function
set_add_znode_hash:                     # @set_add_znode_hash
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$s2, $a0, 0
	move	$fp, $a1
	beqz	$s2, .LBB43_6
# %bb.1:
	ld.w	$a0, $fp, 0
	ld.d	$s1, $s0, 8
	move	$a2, $zero
	mod.wu	$a0, $a0, $s2
	ori	$a1, $zero, 3
	.p2align	4, , 16
.LBB43_2:                               # =>This Inner Loop Header: Depth=1
	slli.d	$a3, $a0, 3
	ldx.d	$a4, $s1, $a3
	beqz	$a4, .LBB43_15
# %bb.3:                                #   in Loop: Header=BB43_2 Depth=1
	addi.w	$a0, $a0, 1
	mod.w	$a0, $a0, $s2
	bgeu	$a0, $s2, .LBB43_5
# %bb.4:                                #   in Loop: Header=BB43_2 Depth=1
	move	$a3, $a2
	addi.w	$a2, $a2, 1
	bgeu	$a1, $a3, .LBB43_2
.LBB43_5:                               # %.critedge
	ld.w	$a0, $s0, 4
	addi.d	$a0, $a0, 2
	st.w	$a0, $s0, 4
	bstrpick.d	$a0, $a0, 31, 0
	b	.LBB43_7
.LBB43_6:                               # %.critedge40
	move	$s1, $zero
	ori	$a0, $zero, 2
	st.w	$a0, $s0, 4
.LBB43_7:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %got_pc_hi20(prime2)
	ld.d	$a1, $a1, %got_pc_lo12(prime2)
	ldx.wu	$a0, $a1, $a0
	st.w	$a0, $s0, 0
	slli.d	$a1, $a0, 3
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	beqz	$s1, .LBB43_14
# %bb.8:                                # %.preheader
	beqz	$s2, .LBB43_13
# %bb.9:                                # %.lr.ph.preheader
	bstrpick.d	$s2, $s2, 31, 0
	move	$s3, $s1
	b	.LBB43_11
	.p2align	4, , 16
.LBB43_10:                              #   in Loop: Header=BB43_11 Depth=1
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 8
	beqz	$s2, .LBB43_13
.LBB43_11:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s3, 0
	beqz	$a1, .LBB43_10
# %bb.12:                               #   in Loop: Header=BB43_11 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(set_add_znode)
	jirl	$ra, $ra, 0
	b	.LBB43_10
.LBB43_13:                              # %set_union_znode.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB43_14:
	move	$a0, $s0
	move	$a1, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(set_add_znode)
	jr	$t8
.LBB43_15:
	alsl.d	$a0, $a0, $s1, 3
	st.d	$fp, $a0, 0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end43:
	.size	set_add_znode_hash, .Lfunc_end43-set_add_znode_hash
                                        # -- End function
	.p2align	5                               # -- Begin function goto_PNode
	.type	goto_PNode,@function
goto_PNode:                             # @goto_PNode
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
	move	$fp, $a3
	move	$s3, $a2
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a2, 152
	ld.d	$a2, $a3, 0
	bstrpick.d	$a5, $a4, 62, 60
	add.w	$a5, $a4, $a5
	srai.d	$a5, $a5, 3
	ldx.bu	$a2, $a2, $a5
	andi	$a5, $a4, 7
	srl.w	$a2, $a2, $a5
	andi	$a5, $a2, 1
	beqz	$a5, .LBB44_60
# %bb.1:
	move	$a2, $a1
	move	$s1, $a0
	ld.d	$a0, $a0, 144
	ld.w	$a1, $a3, 8
	ld.d	$a3, $a0, 16
	sub.w	$a1, $a4, $a1
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a3, $a1
	ld.d	$a0, $a0, 8
	ori	$a5, $zero, 120
	ld.d	$a3, $s3, 136
	ld.d	$a4, $s3, 144
	mul.d	$a1, $a1, $a5
	add.d	$a0, $a0, $a1
	addi.d	$a1, $a0, -120
	move	$a0, $s1
	pcaddu18i	$ra, %call36(add_SNode)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s3, $a0, 64
	beq	$fp, $a0, .LBB44_4
# %bb.2:
	ld.w	$a0, $fp, 56
	ld.w	$a1, $s0, 56
	addi.w	$a0, $a0, 1
	bgeu	$a1, $a0, .LBB44_4
# %bb.3:
	st.w	$a0, $s0, 56
.LBB44_4:
	ld.w	$a0, $s0, 72
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB44_9
# %bb.5:                                # %.preheader.i
	beqz	$a0, .LBB44_19
# %bb.6:                                # %.lr.ph.i
	ld.d	$a1, $s0, 80
	bstrpick.d	$a0, $a0, 31, 0
	.p2align	4, , 16
.LBB44_7:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $a1, 0
	ld.d	$a2, $s2, 0
	beq	$a2, $s3, .LBB44_28
# %bb.8:                                #   in Loop: Header=BB44_7 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB44_7
	b	.LBB44_19
.LBB44_9:
	ld.d	$a1, $s0, 80
	addi.w	$a2, $s3, 0
	mod.wu	$a2, $a2, $a0
	bstrpick.d	$a3, $a2, 31, 0
	slli.d	$a3, $a3, 3
	ldx.d	$s2, $a1, $a3
	beqz	$s2, .LBB44_19
# %bb.10:
	ld.d	$a3, $s2, 0
	beq	$a3, $s3, .LBB44_28
# %bb.11:
	addi.w	$a2, $a2, 1
	xor	$a3, $a2, $a0
	sltui	$a3, $a3, 1
	masknez	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 31, 0
	slli.d	$a3, $a3, 3
	ldx.d	$s2, $a1, $a3
	beqz	$s2, .LBB44_19
# %bb.12:
	ld.d	$a3, $s2, 0
	beq	$a3, $s3, .LBB44_28
# %bb.13:
	addi.w	$a2, $a2, 1
	mod.wu	$a2, $a2, $a0
	bstrpick.d	$a3, $a2, 31, 0
	slli.d	$a3, $a3, 3
	ldx.d	$s2, $a1, $a3
	beqz	$s2, .LBB44_19
# %bb.14:
	ld.d	$a3, $s2, 0
	beq	$a3, $s3, .LBB44_28
# %bb.15:
	addi.w	$a2, $a2, 1
	xor	$a3, $a2, $a0
	sltui	$a3, $a3, 1
	masknez	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 31, 0
	slli.d	$a3, $a3, 3
	ldx.d	$s2, $a1, $a3
	beqz	$s2, .LBB44_19
# %bb.16:
	ld.d	$a3, $s2, 0
	beq	$a3, $s3, .LBB44_28
# %bb.17:
	addi.w	$a2, $a2, 1
	mod.wu	$a0, $a2, $a0
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$s2, $a1, $a0
	beqz	$s2, .LBB44_19
# %bb.18:
	ld.d	$a0, $s2, 0
	beq	$a0, $s3, .LBB44_28
.LBB44_19:                              # %.loopexit
	ld.d	$s2, $s1, 336
	addi.d	$a0, $s0, 72
	beqz	$s2, .LBB44_21
# %bb.20:
	ld.d	$a1, $s2, 0
	st.d	$a1, $s1, 336
	b	.LBB44_22
.LBB44_21:
	move	$s4, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s4
.LBB44_22:                              # %new_ZNode.exit
	st.d	$s3, $s2, 0
	st.w	$zero, $s2, 8
	st.d	$zero, $s2, 16
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_add_znode)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.w	$a1, $s3, 32
	ld.w	$a2, $a0, 16
	addi.d	$a1, $a1, 1
	st.w	$a1, $s3, 32
	beqz	$a2, .LBB44_27
# %bb.23:                               # %.lr.ph.preheader
	move	$s4, $zero
	move	$s5, $zero
	b	.LBB44_25
	.p2align	4, , 16
.LBB44_24:                              #   in Loop: Header=BB44_25 Depth=1
	ld.wu	$a1, $a0, 16
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	bgeu	$s5, $a1, .LBB44_27
.LBB44_25:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 24
	ldx.d	$a3, $a1, $s4
	ld.hu	$a1, $a3, 0
	beqz	$a1, .LBB44_24
# %bb.26:                               #   in Loop: Header=BB44_25 Depth=1
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(add_Reduction)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	b	.LBB44_24
.LBB44_27:                              # %._crit_edge
	ld.d	$a1, $s3, 24
	beqz	$a1, .LBB44_38
.LBB44_28:                              # %set_find_znode.exit
	ld.w	$a1, $s2, 8
	ld.d	$a2, $s2, 16
	addi.d	$a0, $s2, 8
	beqz	$a1, .LBB44_35
# %bb.29:                               # %.lr.ph140
	move	$a4, $zero
	bstrpick.d	$a3, $a1, 31, 0
	slli.d	$a3, $a3, 3
	.p2align	4, , 16
.LBB44_30:                              # =>This Inner Loop Header: Depth=1
	ldx.d	$a5, $a2, $a4
	beq	$a5, $fp, .LBB44_60
# %bb.31:                               #   in Loop: Header=BB44_30 Depth=1
	addi.d	$a4, $a4, 8
	bne	$a3, $a4, .LBB44_30
# %bb.32:                               # %._crit_edge141.thread
	addi.d	$a4, $s2, 24
	beq	$a2, $a4, .LBB44_57
# %bb.33:
	andi	$a4, $a1, 7
	beqz	$a4, .LBB44_37
# %bb.34:
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	stx.d	$fp, $a2, $a3
	bne	$fp, $s0, .LBB44_59
	b	.LBB44_60
.LBB44_35:                              # %._crit_edge141
	beqz	$a2, .LBB44_41
# %bb.36:                               # %.thread177
	addi.d	$a3, $s2, 24
	beq	$a2, $a3, .LBB44_58
.LBB44_37:                              # %.thread179
	move	$a1, $fp
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	bne	$fp, $s0, .LBB44_59
	b	.LBB44_60
.LBB44_38:                              # %.preheader
	ld.w	$a1, $a0, 32
	beqz	$a1, .LBB44_28
# %bb.39:                               # %.lr.ph138
	ld.d	$a1, $s1, 216
	beqz	$a1, .LBB44_28
# %bb.40:                               # %.lr.ph138.split.preheader
	move	$s4, $zero
	lu12i.w	$a1, -69906
	ori	$a1, $a1, 3823
	lu32i.d	$a1, -69906
	lu52i.d	$s5, $a1, -274
	b	.LBB44_44
.LBB44_41:
	addi.d	$a0, $s2, 24
	st.d	$a0, $s2, 16
	ori	$a2, $zero, 1
	st.w	$a2, $s2, 8
	slli.d	$a1, $a1, 3
	stx.d	$fp, $a0, $a1
	bne	$fp, $s0, .LBB44_59
	b	.LBB44_60
.LBB44_42:                              # %find_SNode.exit.thread.loopexit
                                        #   in Loop: Header=BB44_44 Depth=1
	ld.d	$a0, $s0, 0
	.p2align	4, , 16
.LBB44_43:                              # %find_SNode.exit.thread
                                        #   in Loop: Header=BB44_44 Depth=1
	ld.wu	$a1, $a0, 32
	addi.d	$s4, $s4, 1
	bgeu	$s4, $a1, .LBB44_28
.LBB44_44:                              # %.lr.ph138.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_48 Depth 2
                                        #     Child Loop BB44_54 Depth 2
	ld.d	$a4, $s1, 216
	beqz	$a4, .LBB44_43
# %bb.45:                               #   in Loop: Header=BB44_44 Depth=1
	ld.d	$a1, $a0, 40
	alsl.d	$s6, $s4, $a1, 4
	ld.hu	$a1, $s6, 2
	ld.d	$a2, $s0, 8
	ld.d	$a3, $s0, 16
	ld.w	$a5, $s1, 228
	slli.d	$a6, $a1, 12
	add.d	$a6, $a6, $a2
	add.w	$a6, $a6, $a3
	mod.wu	$a5, $a6, $a5
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 3
	ldx.d	$s3, $a4, $a5
	beqz	$s3, .LBB44_43
# %bb.46:                               # %.lr.ph.i120
                                        #   in Loop: Header=BB44_44 Depth=1
	ld.d	$a4, $s1, 144
	ld.d	$a4, $a4, 8
	b	.LBB44_48
	.p2align	4, , 16
.LBB44_47:                              #   in Loop: Header=BB44_48 Depth=2
	ld.d	$s3, $s3, 120
	beqz	$s3, .LBB44_43
.LBB44_48:                              #   Parent Loop BB44_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $s3, 0
	sub.d	$a5, $a5, $a4
	srai.d	$a5, $a5, 3
	mul.d	$a5, $a5, $s5
	bne	$a5, $a1, .LBB44_47
# %bb.49:                               #   in Loop: Header=BB44_48 Depth=2
	ld.d	$a5, $s3, 8
	bne	$a5, $a2, .LBB44_47
# %bb.50:                               #   in Loop: Header=BB44_48 Depth=2
	ld.d	$a5, $s3, 16
	bne	$a5, $a3, .LBB44_47
# %bb.51:                               # %find_SNode.exit.preheader
                                        #   in Loop: Header=BB44_44 Depth=1
	ld.w	$a1, $s3, 72
	beqz	$a1, .LBB44_43
# %bb.52:                               # %.lr.ph136
                                        #   in Loop: Header=BB44_44 Depth=1
	move	$s7, $zero
	move	$s8, $zero
	b	.LBB44_54
	.p2align	4, , 16
.LBB44_53:                              # %find_SNode.exit
                                        #   in Loop: Header=BB44_54 Depth=2
	ld.wu	$a0, $s3, 72
	addi.d	$s8, $s8, 1
	addi.d	$s7, $s7, 8
	bgeu	$s8, $a0, .LBB44_42
.LBB44_54:                              #   Parent Loop BB44_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 80
	ldx.d	$a1, $a0, $s7
	beqz	$a1, .LBB44_53
# %bb.55:                               #   in Loop: Header=BB44_54 Depth=2
	ld.d	$a3, $s6, 8
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(add_Reduction)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB44_53
# %bb.56:                               #   in Loop: Header=BB44_54 Depth=2
	ld.hu	$a1, $s6, 0
	st.d	$s0, $a0, 24
	st.w	$a1, $a0, 32
	b	.LBB44_53
.LBB44_57:
	ori	$a3, $zero, 2
	bltu	$a3, $a1, .LBB44_37
.LBB44_58:                              # %.thread178
	addi.d	$a3, $a1, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a1, 3
	stx.d	$fp, $a2, $a0
	beq	$fp, $s0, .LBB44_60
.LBB44_59:
	ld.w	$a0, $fp, 112
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 112
.LBB44_60:                              # %.thread
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
.Lfunc_end44:
	.size	goto_PNode, .Lfunc_end44-goto_PNode
                                        # -- End function
	.p2align	5                               # -- Begin function new_VecZNode
	.type	new_VecZNode,@function
new_VecZNode:                           # @new_VecZNode
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
	ld.w	$a0, $a0, 0
	move	$s1, $a2
	move	$s2, $a1
	beqz	$a0, .LBB45_2
# %bb.1:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.w	$zero, $s0, 0
	st.d	$zero, $s0, 8
	bgez	$s1, .LBB45_3
	b	.LBB45_14
.LBB45_2:
	pcalau12i	$a0, %pc_hi20(path1)
	addi.d	$s0, $a0, %pc_lo12(path1)
	st.w	$zero, $s0, 0
	st.d	$zero, $s0, 8
	bltz	$s1, .LBB45_14
.LBB45_3:
	blez	$s2, .LBB45_14
# %bb.4:                                # %.lr.ph
	move	$s3, $zero
	addi.d	$s4, $s0, 16
	slli.d	$s2, $s2, 3
	slli.d	$s1, $s1, 3
	ori	$s5, $zero, 2
	b	.LBB45_7
	.p2align	4, , 16
.LBB45_5:                               #   in Loop: Header=BB45_7 Depth=1
	ld.d	$a0, $fp, 8
	ldx.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 8
	ld.wu	$a1, $s0, 0
	ldx.d	$a0, $a0, $s3
	st.d	$s4, $s0, 8
	addi.d	$a2, $a1, 1
	st.w	$a2, $s0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a0, $s4, $a1
.LBB45_6:                               #   in Loop: Header=BB45_7 Depth=1
	addi.d	$s3, $s3, 8
	beq	$s2, $s3, .LBB45_14
.LBB45_7:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB45_5
# %bb.8:                                #   in Loop: Header=BB45_7 Depth=1
	ld.w	$a1, $s0, 0
	beq	$a0, $s4, .LBB45_11
# %bb.9:                                #   in Loop: Header=BB45_7 Depth=1
	ld.d	$a2, $fp, 8
	andi	$a3, $a1, 7
	beqz	$a3, .LBB45_13
# %bb.10:                               #   in Loop: Header=BB45_7 Depth=1
	ldx.d	$a2, $a2, $s1
	ld.d	$a2, $a2, 8
	bstrpick.d	$a3, $a1, 31, 0
	ldx.d	$a2, $a2, $s3
	addi.d	$a1, $a1, 1
	st.w	$a1, $s0, 0
	slli.d	$a1, $a3, 3
	stx.d	$a2, $a0, $a1
	b	.LBB45_6
	.p2align	4, , 16
.LBB45_11:                              #   in Loop: Header=BB45_7 Depth=1
	ld.d	$a2, $fp, 8
	bltu	$s5, $a1, .LBB45_13
# %bb.12:                               #   in Loop: Header=BB45_7 Depth=1
	ldx.d	$a2, $a2, $s1
	ld.d	$a2, $a2, 8
	ldx.d	$a2, $a2, $s3
	addi.d	$a3, $a1, 1
	st.w	$a3, $s0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a0, $a1
	b	.LBB45_6
	.p2align	4, , 16
.LBB45_13:                              #   in Loop: Header=BB45_7 Depth=1
	ldx.d	$a0, $a2, $s1
	ld.d	$a0, $a0, 8
	ldx.d	$a1, $a0, $s3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB45_6
.LBB45_14:                              # %.loopexit
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
.Lfunc_end45:
	.size	new_VecZNode, .Lfunc_end45-new_VecZNode
                                        # -- End function
	.p2align	5                               # -- Begin function build_paths_internal
	.type	build_paths_internal,@function
build_paths_internal:                   # @build_paths_internal
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
	move	$fp, $a1
	ld.d	$a5, $a1, 8
	move	$s2, $a2
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a5, $a1
	ld.d	$a2, $a1, 8
	move	$s0, $a3
	move	$s1, $a0
	addi.d	$a3, $a1, 16
	beqz	$a2, .LBB46_4
# %bb.1:
	ld.w	$a0, $a1, 0
	beq	$a2, $a3, .LBB46_5
# %bb.2:
	andi	$a3, $a0, 7
	beqz	$a3, .LBB46_7
# %bb.3:
	bstrpick.d	$a3, $a0, 31, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $a1, 0
	slli.d	$a0, $a3, 3
	stx.d	$s1, $a2, $a0
	b	.LBB46_8
.LBB46_4:
	alsl.d	$a0, $s2, $a5, 3
	st.d	$a3, $a1, 8
	ld.d	$a0, $a0, 0
	ld.wu	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a1, 3
	stx.d	$s1, $a3, $a0
	b	.LBB46_8
.LBB46_5:
	ori	$a3, $zero, 2
	bltu	$a3, $a0, .LBB46_7
# %bb.6:
	addi.d	$a3, $a0, 1
	st.w	$a3, $a1, 0
	slli.d	$a0, $a0, 3
	stx.d	$s1, $a2, $a0
	b	.LBB46_8
.LBB46_7:
	move	$a0, $a1
	move	$a1, $s1
	move	$s3, $a4
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	move	$a4, $s3
.LBB46_8:
	ori	$a0, $zero, 2
	bltu	$a4, $a0, .LBB46_27
# %bb.9:                                # %.preheader97
	ld.wu	$a1, $s1, 8
	beqz	$a1, .LBB46_27
# %bb.10:                               # %.preheader.lr.ph
	move	$s5, $zero
	addi.d	$a0, $fp, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	sub.d	$a2, $s0, $a4
	ld.d	$a0, $s1, 16
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	addi.w	$s4, $a4, -1
	b	.LBB46_13
	.p2align	4, , 16
.LBB46_11:                              # %._crit_edge.loopexit
                                        #   in Loop: Header=BB46_13 Depth=1
	ld.wu	$a1, $s1, 8
.LBB46_12:                              # %._crit_edge
                                        #   in Loop: Header=BB46_13 Depth=1
	addi.d	$s5, $s5, 1
	bgeu	$s5, $a1, .LBB46_27
.LBB46_13:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_19 Depth 2
	slli.d	$s8, $s5, 3
	ldx.d	$a2, $a0, $s8
	ld.w	$a3, $a2, 72
	beqz	$a3, .LBB46_12
# %bb.14:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB46_13 Depth=1
	move	$s7, $zero
	move	$s3, $zero
	move	$s6, $zero
	b	.LBB46_19
.LBB46_15:                              #   in Loop: Header=BB46_19 Depth=2
	addi.w	$a2, $s2, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_VecZNode)
	jirl	$ra, $ra, 0
	ld.wu	$s2, $fp, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a2, $fp, 8
	addi.d	$a1, $s2, 1
	st.w	$a1, $fp, 0
	slli.d	$a1, $s2, 3
	stx.d	$a0, $a2, $a1
.LBB46_16:                              #   in Loop: Header=BB46_19 Depth=2
	ld.d	$a0, $s1, 16
.LBB46_17:                              #   in Loop: Header=BB46_19 Depth=2
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 80
	ldx.d	$a0, $a0, $s7
	addi.w	$a2, $s2, 0
	move	$a1, $fp
	move	$a3, $s0
	move	$a4, $s4
	pcaddu18i	$ra, %call36(build_paths_internal)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
	addi.w	$s6, $s6, 1
.LBB46_18:                              #   in Loop: Header=BB46_19 Depth=2
	ldx.d	$a2, $a0, $s8
	ld.wu	$a1, $a2, 72
	addi.d	$s3, $s3, 1
	addi.d	$s7, $s7, 8
	bgeu	$s3, $a1, .LBB46_11
.LBB46_19:                              # %.lr.ph
                                        #   Parent Loop BB46_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a2, 80
	ldx.d	$a1, $a1, $s7
	beqz	$a1, .LBB46_18
# %bb.20:                               #   in Loop: Header=BB46_19 Depth=2
	sub.d	$a1, $zero, $s6
	bstrpick.d	$a1, $a1, 31, 0
	beq	$s5, $a1, .LBB46_17
# %bb.21:                               #   in Loop: Header=BB46_19 Depth=2
	ld.d	$a1, $fp, 8
	beqz	$a1, .LBB46_15
# %bb.22:                               #   in Loop: Header=BB46_19 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	beq	$a1, $a2, .LBB46_25
# %bb.23:                               #   in Loop: Header=BB46_19 Depth=2
	andi	$a0, $a0, 7
	beqz	$a0, .LBB46_26
.LBB46_24:                              #   in Loop: Header=BB46_19 Depth=2
	addi.w	$a2, $s2, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_VecZNode)
	jirl	$ra, $ra, 0
	ld.wu	$s2, $fp, 0
	ld.d	$a1, $fp, 8
	addi.d	$a2, $s2, 1
	st.w	$a2, $fp, 0
	slli.d	$a2, $s2, 3
	stx.d	$a0, $a1, $a2
	b	.LBB46_16
.LBB46_25:                              #   in Loop: Header=BB46_19 Depth=2
	ori	$a1, $zero, 2
	bgeu	$a1, $a0, .LBB46_24
.LBB46_26:                              #   in Loop: Header=BB46_19 Depth=2
	addi.w	$a2, $s2, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_VecZNode)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	addi.d	$s2, $a0, -1
	b	.LBB46_16
.LBB46_27:                              # %.loopexit
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
.Lfunc_end46:
	.size	build_paths_internal, .Lfunc_end46-build_paths_internal
                                        # -- End function
	.p2align	5                               # -- Begin function check_assoc_priority
	.type	check_assoc_priority,@function
check_assoc_priority:                   # @check_assoc_priority
# %bb.0:
	ld.wu	$a6, $a0, 8
	ld.w	$a7, $a1, 8
	andi	$a3, $a6, 24
	beqz	$a3, .LBB47_4
# %bb.1:
	andi	$a4, $a6, 20
	addi.d	$a5, $a6, -9
	pcalau12i	$a3, %pc_hi20(child_table)
	addi.d	$a3, $a3, %pc_lo12(child_table)
	beqz	$a7, .LBB47_8
# %bb.2:
	ld.w	$t0, $a1, 12
	ld.w	$t1, $a0, 12
	bge	$t0, $t1, .LBB47_11
.LBB47_3:
	move	$a2, $zero
	b	.LBB47_13
.LBB47_4:
	andi	$a2, $a7, 24
	beqz	$a2, .LBB47_24
# %bb.5:
	ld.w	$a2, $a0, 0
	beqz	$a2, .LBB47_24
# %bb.6:
	ld.w	$a1, $a1, 12
	ld.w	$a3, $a0, 4
	bge	$a1, $a3, .LBB47_20
# %bb.7:
	move	$a0, $zero
	b	.LBB47_22
.LBB47_8:
	beqz	$a2, .LBB47_14
# %bb.9:
	ld.w	$a7, $a2, 8
	beqz	$a7, .LBB47_14
# %bb.10:
	ld.w	$t0, $a2, 12
	ld.w	$t1, $a0, 12
	blt	$t0, $t1, .LBB47_3
.LBB47_11:
	ori	$a2, $zero, 1
	blt	$t1, $t0, .LBB47_13
# %bb.12:
	srli.d	$a2, $a7, 1
	bstrpick.d	$t0, $a6, 1, 1
	bstrins.d	$a2, $t0, 63, 1
	addi.d	$a2, $a2, 2
.LBB47_13:                              # %check_child.exit46
	sltui	$t0, $a4, 1
	sltui	$t1, $a5, 1
	ori	$t2, $zero, 2
	sub.d	$t1, $t2, $t1
	maskeqz	$t0, $t1, $t0
	andi	$t1, $a7, 20
	sltui	$t1, $t1, 1
	addi.d	$a7, $a7, -9
	sltui	$a7, $a7, 1
	xori	$a7, $a7, 3
	ori	$t2, $zero, 1
	masknez	$t2, $t2, $t1
	maskeqz	$a7, $a7, $t1
	or	$a7, $a7, $t2
	slli.d	$t1, $a7, 3
	slli.d	$a7, $a7, 6
	or	$a7, $a7, $t1
	add.d	$a7, $a3, $a7
	slli.d	$t1, $t0, 4
	alsl.d	$t0, $t0, $t1, 3
	add.d	$a7, $a7, $t0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a7, $a2
	beqz	$a2, .LBB47_25
.LBB47_14:
	ld.w	$a2, $a1, 0
	beqz	$a2, .LBB47_24
# %bb.15:
	ld.w	$a7, $a0, 12
	ld.w	$a1, $a1, 4
	bge	$a7, $a1, .LBB47_17
# %bb.16:
	move	$a0, $zero
	b	.LBB47_19
.LBB47_17:
	ori	$a0, $zero, 1
	blt	$a1, $a7, .LBB47_19
# %bb.18:
	srli.d	$a0, $a6, 1
	bstrpick.d	$a1, $a2, 1, 1
	bstrins.d	$a0, $a1, 63, 1
	addi.d	$a0, $a0, 2
.LBB47_19:                              # %check_child.exit54
	andi	$a1, $a2, 20
	sltui	$a1, $a1, 1
	addi.d	$a2, $a2, -9
	sltui	$a2, $a2, 1
	ori	$a6, $zero, 2
	sub.d	$a2, $a6, $a2
	maskeqz	$a1, $a2, $a1
	sltui	$a2, $a4, 1
	sltui	$a4, $a5, 1
	xori	$a4, $a4, 3
	maskeqz	$a2, $a4, $a2
	slli.d	$a4, $a2, 3
	slli.d	$a2, $a2, 6
	or	$a2, $a2, $a4
	b	.LBB47_23
.LBB47_20:
	ori	$a0, $zero, 1
	blt	$a3, $a1, .LBB47_22
# %bb.21:
	srli.d	$a0, $a7, 1
	bstrpick.d	$a1, $a2, 1, 1
	bstrins.d	$a0, $a1, 63, 1
	addi.d	$a0, $a0, 2
.LBB47_22:                              # %check_child.exit
	andi	$a1, $a2, 20
	sltui	$a1, $a1, 1
	addi.d	$a2, $a2, -9
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 2
	sub.d	$a2, $a3, $a2
	maskeqz	$a1, $a2, $a1
	andi	$a2, $a7, 20
	sltui	$a2, $a2, 1
	addi.d	$a3, $a7, -9
	sltui	$a3, $a3, 1
	xori	$a3, $a3, 3
	ori	$a4, $zero, 1
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	slli.d	$a3, $a2, 3
	slli.d	$a2, $a2, 6
	or	$a2, $a2, $a3
	pcalau12i	$a3, %pc_hi20(child_table)
	addi.d	$a3, $a3, %pc_lo12(child_table)
.LBB47_23:                              # %check_child.exit54
	add.d	$a2, $a3, $a2
	slli.d	$a3, $a1, 4
	alsl.d	$a1, $a1, $a3, 3
	add.d	$a1, $a2, $a1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	beqz	$a0, .LBB47_25
.LBB47_24:
	move	$a0, $zero
	ret
.LBB47_25:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end47:
	.size	check_assoc_priority, .Lfunc_end47-check_assoc_priority
                                        # -- End function
	.p2align	5                               # -- Begin function final_actionless
	.type	final_actionless,@function
final_actionless:                       # @final_actionless
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 16
	beqz	$a1, .LBB48_3
# %bb.1:
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB48_3
.LBB48_2:
	move	$a1, $zero
	b	.LBB48_8
.LBB48_3:
	ld.wu	$fp, $a0, 40
	ori	$a1, $zero, 1
	beqz	$fp, .LBB48_8
# %bb.4:                                # %.lr.ph
	ld.d	$s0, $a0, 48
	.p2align	4, , 16
.LBB48_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(final_actionless)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_2
# %bb.6:                                #   in Loop: Header=BB48_5 Depth=1
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB48_5
# %bb.7:
	ori	$a1, $zero, 1
.LBB48_8:                               # %.loopexit
	move	$a0, $a1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end48:
	.size	final_actionless, .Lfunc_end48-final_actionless
                                        # -- End function
	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"[%s]"
	.size	.L.str.4, 5

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"unresolved ambiguity line %d file %s"
	.size	.L.str.6, 37

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"bad pass number: %d\n"
	.size	.L.str.7, 21

	.type	_wspace,@object                 # @_wspace
	.data
	.globl	_wspace
_wspace:
	.ascii	"\000\000\000\000\000\000\000\000\000\001\000\001\001\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001"
	.space	223
	.size	_wspace, 256

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"internal error: bad final reduction"
	.size	.L.str.8, 36

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%d states %d scans %d shifts %d reductions %d compares %d ambiguities\n"
	.size	.L.str.9, 71

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"syntax error, '%s' line %d\n"
	.size	.L.str.10, 28

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"line"
	.size	.L.str.11, 5

	.type	child_table,@object             # @child_table
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
child_table:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	666                             # 0x29a
	.word	666                             # 0x29a
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	666                             # 0x29a
	.word	666                             # 0x29a
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	666                             # 0x29a
	.word	666                             # 0x29a
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	666                             # 0x29a
	.word	666                             # 0x29a
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	666                             # 0x29a
	.word	0                               # 0x0
	.word	666                             # 0x29a
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	666                             # 0x29a
	.word	666                             # 0x29a
	.word	666                             # 0x29a
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	666                             # 0x29a
	.word	666                             # 0x29a
	.word	1                               # 0x1
	.word	666                             # 0x29a
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	666                             # 0x29a
	.word	0                               # 0x0
	.word	666                             # 0x29a
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	666                             # 0x29a
	.word	1                               # 0x1
	.word	666                             # 0x29a
	.word	666                             # 0x29a
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	666                             # 0x29a
	.word	666                             # 0x29a
	.word	666                             # 0x29a
	.word	1                               # 0x1
	.size	child_table, 288

	.type	path1,@object                   # @path1
	.local	path1
	.comm	path1,40,8
	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"circular parse: unable to fixup internal symbol"
	.size	.L.str.12, 48

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ambiguity_abort_fn
	.addrsig_sym null_white_space
	.addrsig_sym syntax_error_report_fn
	.addrsig_sym parse_whitespace
	.addrsig_sym white_space
	.addrsig_sym path1
