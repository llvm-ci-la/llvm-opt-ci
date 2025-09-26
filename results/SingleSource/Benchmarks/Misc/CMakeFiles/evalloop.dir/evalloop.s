	.file	"evalloop.c"
	.text
	.globl	execute                         # -- Begin function execute
	.p2align	5
	.type	execute,@function
execute:                                # @execute
# %bb.0:
	pcalau12i	$a1, %pc_hi20(sum)
	ld.w	$a2, $a1, %pc_lo12(sum)
	add.d	$a0, $a2, $a0
	st.w	$a0, $a1, %pc_lo12(sum)
	ret
.Lfunc_end0:
	.size	execute, .Lfunc_end0-execute
                                        # -- End function
	.globl	eval                            # -- Begin function eval
	.p2align	5
	.type	eval,@function
eval:                                   # @eval
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a1, $zero, 31
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 0
	addi.d	$a0, $a0, 4
	bltu	$a1, $a2, .LBB1_1
# %bb.2:
	slli.d	$a1, $a2, 2
	pcalau12i	$a2, %pc_hi20(.LJTI1_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI1_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB1_3:                                # %.split98.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_4:                                # %.split170.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_5:                                # %.split137.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_6:                                # %.split131.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_7:                                # %.split122.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_8:                                # %.split101.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_9:                                # %.split125.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_10:                               # %.split116.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_11:                               # %.split164.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_12:                               # %.split161.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_13:                               # %.split134.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_14:                               # %.split.preheader.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_15:                               # %.split110.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_16:                               # %.split182.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_17:                               # %.split140.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_18:                               # %.split149.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_19:                               # %.split104.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_20:                               # %.split152.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_21:                               # %.split128.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_22:                               # %.split107.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_23:                               # %.split143.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_24:                               # %.split119.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_25:                               # %.split113.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_26:                               # %.split179.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_27:                               # %.split155.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_28:                               # %.split146.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_29:                               # %.split158.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_30:                               # %.split173.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_31:                               # %.split176.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.LBB1_32:                               # %.split167.loopexit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp0:                                 # Block address taken
.LBB1_33:                               # %.split.preheader
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 2
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.Ltmp1:                                 # Block address taken
.LBB1_34:                               # %.loopexit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
	.p2align	4, , 16
.Ltmp2:                                 # Block address taken
.LBB1_35:                               # %.split
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 1
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.Ltmp3:                                 # Block address taken
.LBB1_36:                               # %.split98
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 3
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp4:                                 # Block address taken
.LBB1_37:                               # %.split101
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 4
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp5:                                 # Block address taken
.LBB1_38:                               # %.split104
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 5
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp6:                                 # Block address taken
.LBB1_39:                               # %.split107
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 6
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp7:                                 # Block address taken
.LBB1_40:                               # %.split110
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 7
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp8:                                 # Block address taken
.LBB1_41:                               # %.split113
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 8
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp9:                                 # Block address taken
.LBB1_42:                               # %.split116
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 9
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp10:                                # Block address taken
.LBB1_43:                               # %.split119
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 10
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp11:                                # Block address taken
.LBB1_44:                               # %.split122
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 11
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp12:                                # Block address taken
.LBB1_45:                               # %.split125
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 12
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp13:                                # Block address taken
.LBB1_46:                               # %.split128
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 13
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp14:                                # Block address taken
.LBB1_47:                               # %.split131
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 14
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp15:                                # Block address taken
.LBB1_48:                               # %.split134
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 15
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp16:                                # Block address taken
.LBB1_49:                               # %.split137
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 16
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp17:                                # Block address taken
.LBB1_50:                               # %.split140
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 17
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp18:                                # Block address taken
.LBB1_51:                               # %.split143
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 18
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp19:                                # Block address taken
.LBB1_52:                               # %.split146
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 19
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp20:                                # Block address taken
.LBB1_53:                               # %.split149
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 20
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp21:                                # Block address taken
.LBB1_54:                               # %.split152
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 21
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp22:                                # Block address taken
.LBB1_55:                               # %.split155
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 22
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp23:                                # Block address taken
.LBB1_56:                               # %.split158
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 23
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp24:                                # Block address taken
.LBB1_57:                               # %.split161
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 24
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp25:                                # Block address taken
.LBB1_58:                               # %.split164
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 25
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp26:                                # Block address taken
.LBB1_59:                               # %.split167
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 26
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp27:                                # Block address taken
.LBB1_60:                               # %.split170
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 27
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp28:                                # Block address taken
.LBB1_61:                               # %.split173
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 28
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp29:                                # Block address taken
.LBB1_62:                               # %.split176
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 29
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp30:                                # Block address taken
.LBB1_63:                               # %.split179
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 30
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
	.p2align	4, , 16
.Ltmp31:                                # Block address taken
.LBB1_64:                               # %.split182
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 31
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.d	$a0, $fp, 4
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(eval.dispatch)
	addi.d	$a2, $a2, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a2, $a1
	jr	$a1
.Lfunc_end1:
	.size	eval, .Lfunc_end1-eval
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_34-.LJTI1_0
	.word	.LBB1_14-.LJTI1_0
	.word	.LBB1_3-.LJTI1_0
	.word	.LBB1_3-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_19-.LJTI1_0
	.word	.LBB1_22-.LJTI1_0
	.word	.LBB1_15-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_10-.LJTI1_0
	.word	.LBB1_24-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_9-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_6-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_17-.LJTI1_0
	.word	.LBB1_23-.LJTI1_0
	.word	.LBB1_28-.LJTI1_0
	.word	.LBB1_18-.LJTI1_0
	.word	.LBB1_20-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_29-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_11-.LJTI1_0
	.word	.LBB1_32-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
	.word	.LBB1_30-.LJTI1_0
	.word	.LBB1_31-.LJTI1_0
	.word	.LBB1_26-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2096
	sub.d	$sp, $sp, $a0
	lu12i.w	$a0, 16
	lu32i.d	$a0, 196610
	vreplgr2vr.d	$vr0, $a0
	lu12i.w	$a0, -2
	ori	$a0, $a0, 32
	lu12i.w	$a1, 135300
	ori	$a1, $a1, 529
	lu32i.d	$a1, 135300
	lu52i.d	$a1, $a1, 132
	vrepli.b	$vr1, 0
	addi.d	$a2, $sp, 16
	lu12i.w	$a4, 1
	ori	$a3, $a4, 4064
	ori	$a4, $a4, 4080
	.p2align	4, , 16
.LBB2_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.hu	$vr2, $vr0, 4
	vpickve2gr.h	$a5, $vr0, 1
	bstrpick.d	$a6, $a5, 15, 0
	mulh.du	$a6, $a6, $a1
	slli.d	$a7, $a6, 5
	sub.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	vpickve2gr.h	$a6, $vr0, 0
	bstrpick.d	$a6, $a6, 15, 0
	mulh.du	$a7, $a6, $a1
	slli.d	$t0, $a7, 5
	sub.d	$a7, $a7, $t0
	add.d	$a6, $a6, $a7
	vinsgr2vr.h	$vr3, $a6, 0
	vinsgr2vr.h	$vr3, $a5, 1
	vpickve2gr.h	$a5, $vr0, 2
	bstrpick.d	$a6, $a5, 15, 0
	mulh.du	$a6, $a6, $a1
	slli.d	$a7, $a6, 5
	sub.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	vinsgr2vr.h	$vr3, $a5, 2
	vpickve2gr.h	$a5, $vr0, 3
	bstrpick.d	$a6, $a5, 15, 0
	mulh.du	$a6, $a6, $a1
	slli.d	$a7, $a6, 5
	sub.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	vinsgr2vr.h	$vr3, $a5, 3
	vpickve2gr.h	$a5, $vr2, 1
	bstrpick.d	$a6, $a5, 15, 0
	mulh.du	$a6, $a6, $a1
	slli.d	$a7, $a6, 5
	sub.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	vpickve2gr.h	$a6, $vr2, 0
	bstrpick.d	$a6, $a6, 15, 0
	mulh.du	$a7, $a6, $a1
	slli.d	$t0, $a7, 5
	sub.d	$a7, $a7, $t0
	add.d	$a6, $a6, $a7
	vinsgr2vr.h	$vr4, $a6, 0
	vinsgr2vr.h	$vr4, $a5, 1
	vpickve2gr.h	$a5, $vr2, 2
	bstrpick.d	$a6, $a5, 15, 0
	mulh.du	$a6, $a6, $a1
	slli.d	$a7, $a6, 5
	sub.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	vinsgr2vr.h	$vr4, $a5, 2
	vpickve2gr.h	$a5, $vr2, 3
	bstrpick.d	$a6, $a5, 15, 0
	mulh.du	$a6, $a6, $a1
	slli.d	$a7, $a6, 5
	sub.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	vinsgr2vr.h	$vr4, $a5, 3
	vaddi.hu	$vr2, $vr3, 1
	vaddi.hu	$vr3, $vr4, 1
	vilvl.h	$vr2, $vr1, $vr2
	vilvl.h	$vr3, $vr1, $vr3
	add.d	$a5, $a2, $a0
	vstx	$vr2, $a5, $a3
	vstx	$vr3, $a5, $a4
	addi.d	$a0, $a0, 32
	vaddi.hu	$vr0, $vr0, 8
	bnez	$a0, .LBB2_1
# %bb.2:                                # %scalar.ph
	ori	$a0, $zero, 26
	lu32i.d	$a0, 27
	lu12i.w	$a1, 1
	ori	$a1, $a1, 4080
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	ori	$a0, $zero, 28
	lu32i.d	$a0, 29
	lu12i.w	$a1, 1
	ori	$a1, $a1, 4088
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	ori	$a0, $zero, 30
	lu32i.d	$a0, 31
	lu12i.w	$a1, 2
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	ori	$a0, $zero, 1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 8
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	lu12i.w	$a0, 24
	ori	$fp, $a0, 1696
	.p2align	4, , 16
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(eval)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, -1
	bnez	$fp, .LBB2_3
# %bb.4:
	pcalau12i	$a0, %pc_hi20(sum)
	ld.w	$a1, $a0, %pc_lo12(sum)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2096
	add.d	$sp, $sp, $a1
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	sum,@object                     # @sum
	.bss
	.globl	sum
	.p2align	2, 0x0
sum:
	.word	0                               # 0x0
	.size	sum, 4

	.type	eval.dispatch,@object           # @eval.dispatch
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
eval.dispatch:
	.dword	.Ltmp1
	.dword	.Ltmp2
	.dword	.Ltmp0
	.dword	.Ltmp3
	.dword	.Ltmp4
	.dword	.Ltmp5
	.dword	.Ltmp6
	.dword	.Ltmp7
	.dword	.Ltmp8
	.dword	.Ltmp9
	.dword	.Ltmp10
	.dword	.Ltmp11
	.dword	.Ltmp12
	.dword	.Ltmp13
	.dword	.Ltmp14
	.dword	.Ltmp15
	.dword	.Ltmp16
	.dword	.Ltmp17
	.dword	.Ltmp18
	.dword	.Ltmp19
	.dword	.Ltmp20
	.dword	.Ltmp21
	.dword	.Ltmp22
	.dword	.Ltmp23
	.dword	.Ltmp24
	.dword	.Ltmp25
	.dword	.Ltmp26
	.dword	.Ltmp27
	.dword	.Ltmp28
	.dword	.Ltmp29
	.dword	.Ltmp30
	.dword	.Ltmp31
	.size	eval.dispatch, 256

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Sum: %u\n"
	.size	.L.str, 9

	.section	".note.GNU-stack","",@progbits
	.addrsig
