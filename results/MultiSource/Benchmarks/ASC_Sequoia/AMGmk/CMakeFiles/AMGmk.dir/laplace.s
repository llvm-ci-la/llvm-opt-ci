	.file	"laplace.c"
	.text
	.globl	GenerateSeqLaplacian            # -- Begin function GenerateSeqLaplacian
	.p2align	5
	.type	GenerateSeqLaplacian,@function
GenerateSeqLaplacian:                   # @GenerateSeqLaplacian
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
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	move	$s5, $a3
	move	$s6, $a2
	move	$s7, $a1
	move	$s8, $a0
	mul.d	$s0, $a1, $a0
	mul.w	$s2, $s0, $a2
	addi.w	$a0, $s2, 1
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	blez	$s2, .LBB0_5
# %bb.1:                                # %.lr.ph.preheader
	ori	$a1, $zero, 12
	bgeu	$s2, $a1, .LBB0_68
# %bb.2:
	move	$a5, $zero
.LBB0_3:                                # %.lr.ph.preheader367
	alsl.d	$a1, $a5, $fp, 3
	alsl.d	$a2, $a5, $a0, 3
	alsl.d	$a3, $a5, $s1, 3
	sub.d	$a5, $s2, $a5
	lu52i.d	$a4, $zero, 1023
	.p2align	4, , 16
.LBB0_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $a3, 0
	st.d	$zero, $a2, 0
	st.d	$a4, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 8
	bnez	$a5, .LBB0_4
.LBB0_5:                                # %._crit_edge
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.w	$zero, $s3, 0
	blez	$s7, .LBB0_30
# %bb.6:                                # %._crit_edge
	blez	$s8, .LBB0_30
# %bb.7:                                # %._crit_edge
	blez	$s6, .LBB0_30
# %bb.8:                                # %.preheader190.us.us.preheader
	move	$a0, $zero
	addi.d	$a1, $s3, 4
	addi.d	$a2, $s8, -2
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a2, $a2, 2
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	ori	$a5, $zero, 1
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %._crit_edge205.split.us.us.us
                                        #   in Loop: Header=BB0_10 Depth=1
	beq	$a0, $s6, .LBB0_30
.LBB0_10:                               # %.preheader190.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
                                        #       Child Loop BB0_27 Depth 3
                                        #       Child Loop BB0_29 Depth 3
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_19 Depth 3
                                        #       Child Loop BB0_16 Depth 3
	sltui	$a6, $a0, 1
	addi.w	$a0, $a0, 1
	sub.d	$a6, $a4, $a6
	move	$a7, $zero
	bge	$a0, $s6, .LBB0_22
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_11:                               # %._crit_edge195.us.us.us.us.sink.split
                                        #   in Loop: Header=BB0_13 Depth=2
	addi.w	$a5, $a5, 1
	add.d	$t1, $t2, $t3
	st.w	$t1, $t0, 0
.LBB0_12:                               # %._crit_edge195.us.us.us.us
                                        #   in Loop: Header=BB0_13 Depth=2
	beq	$a7, $s7, .LBB0_9
.LBB0_13:                               # %.preheader189.us.us.us.us
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_19 Depth 3
                                        #       Child Loop BB0_16 Depth 3
	alsl.d	$t0, $a5, $s3, 2
	ld.w	$t2, $t0, -4
	sltu	$t1, $zero, $a7
	addi.w	$a7, $a7, 1
	add.d	$t2, $t2, $a6
	add.d	$t2, $t2, $t1
	bge	$a7, $s7, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	ori	$t3, $zero, 2
	beq	$s8, $a3, .LBB0_11
# %bb.15:                               # %.lr.ph194.split.us.us.us.us.us.peel.next
                                        #   in Loop: Header=BB0_13 Depth=2
	addi.d	$t2, $t2, 3
	st.w	$t2, $t0, 0
	add.d	$t0, $a6, $t1
	slli.d	$t1, $a5, 2
	ldx.w	$t3, $s3, $t1
	alsl.d	$t1, $a5, $a1, 2
	add.w	$a5, $a2, $a5
	ori	$t2, $zero, 1
	.p2align	4, , 16
.LBB0_16:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t3, $t3, $t0
	addi.w	$t2, $t2, 1
	slt	$t4, $t2, $s8
	add.d	$t3, $t4, $t3
	addi.d	$t3, $t3, 3
	st.w	$t3, $t1, 0
	addi.d	$t1, $t1, 4
	bne	$s8, $t2, .LBB0_16
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	ori	$t3, $zero, 1
	beq	$s8, $t3, .LBB0_11
# %bb.18:                               # %.lr.ph194.split.us214.us.us.us.peel.next
                                        #   in Loop: Header=BB0_13 Depth=2
	addi.d	$t2, $t2, 2
	st.w	$t2, $t0, 0
	add.d	$t0, $a6, $t1
	slli.d	$t1, $a5, 2
	ldx.w	$t3, $s3, $t1
	alsl.d	$t1, $a5, $a1, 2
	add.w	$a5, $a2, $a5
	ori	$t2, $zero, 1
	.p2align	4, , 16
.LBB0_19:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t3, $t3, $t0
	addi.w	$t2, $t2, 1
	slt	$t4, $t2, $s8
	add.d	$t3, $t4, $t3
	addi.d	$t3, $t3, 2
	st.w	$t3, $t1, 0
	addi.d	$t1, $t1, 4
	bne	$s8, $t2, .LBB0_19
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_20:                               # %.thread323
                                        #   in Loop: Header=BB0_22 Depth=2
	addi.w	$a5, $a5, 1
.LBB0_21:                               # %._crit_edge195.us.us.us
                                        #   in Loop: Header=BB0_22 Depth=2
	beq	$a7, $s7, .LBB0_9
.LBB0_22:                               # %.preheader189.us.us.us
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_27 Depth 3
                                        #       Child Loop BB0_29 Depth 3
	alsl.d	$t0, $a5, $s3, 2
	ld.w	$t2, $t0, -4
	sltu	$t1, $zero, $a7
	addi.w	$a7, $a7, 1
	add.d	$t2, $t2, $a6
	add.d	$t2, $t2, $t1
	bge	$a7, $s7, .LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=2
	bne	$s8, $a3, .LBB0_28
# %bb.24:                               # %.thread326
                                        #   in Loop: Header=BB0_22 Depth=2
	addi.w	$a5, $a5, 1
	addi.d	$t1, $t2, 1
	st.w	$t1, $t0, 0
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_25:                               #   in Loop: Header=BB0_22 Depth=2
	st.w	$t2, $t0, 0
	beq	$s8, $a3, .LBB0_20
# %bb.26:                               # %.lr.ph194.split.us214.us.us.peel.next
                                        #   in Loop: Header=BB0_22 Depth=2
	addi.d	$t2, $t2, 1
	st.w	$t2, $t0, 0
	add.d	$t0, $a6, $t1
	slli.d	$t1, $a5, 2
	ldx.w	$t3, $s3, $t1
	alsl.d	$t1, $a5, $a1, 2
	add.w	$a5, $a2, $a5
	ori	$t2, $zero, 1
	.p2align	4, , 16
.LBB0_27:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t3, $t3, $t0
	addi.w	$t2, $t2, 1
	slt	$t4, $t2, $s8
	add.d	$t3, $t4, $t3
	addi.d	$t3, $t3, 1
	st.w	$t3, $t1, 0
	addi.d	$t1, $t1, 4
	bne	$s8, $t2, .LBB0_27
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_28:                               # %.lr.ph194.split.us.us.us.us.peel.next
                                        #   in Loop: Header=BB0_22 Depth=2
	addi.d	$t2, $t2, 2
	st.w	$t2, $t0, 0
	add.d	$t0, $a6, $t1
	slli.d	$t1, $a5, 2
	ldx.w	$t3, $s3, $t1
	alsl.d	$t1, $a5, $a1, 2
	add.w	$a5, $a2, $a5
	ori	$t2, $zero, 1
	.p2align	4, , 16
.LBB0_29:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t3, $t3, $t0
	addi.w	$t2, $t2, 1
	slt	$t4, $t2, $s8
	add.d	$t3, $t4, $t3
	addi.d	$t3, $t3, 2
	st.w	$t3, $t1, 0
	addi.d	$t1, $t1, 4
	bne	$s8, $t2, .LBB0_29
	b	.LBB0_21
.LBB0_30:                               # %._crit_edge220
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	slli.d	$fp, $s2, 2
	ldx.w	$a0, $s3, $fp
	alsl.d	$a1, $s2, $s3, 2
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ldx.w	$a2, $s3, $fp
	move	$s1, $a0
	ori	$a1, $zero, 8
	move	$a0, $a2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	blez	$s6, .LBB0_61
# %bb.31:                               # %.preheader188.lr.ph
	blez	$s7, .LBB0_61
# %bb.32:                               # %.preheader188.lr.ph
	blez	$s8, .LBB0_61
# %bb.33:                               # %.preheader188.us.us.preheader
	move	$a1, $zero
	move	$t0, $zero
	move	$a4, $zero
	sub.d	$a0, $zero, $s8
	sub.d	$a2, $zero, $s0
	ori	$a3, $zero, 1
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               # %._crit_edge234.split.us.us.us
                                        #   in Loop: Header=BB0_35 Depth=1
	move	$a4, $a5
	beq	$a5, $s6, .LBB0_61
.LBB0_35:                               # %.preheader188.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_37 Depth 2
                                        #       Child Loop BB0_47 Depth 3
	move	$a6, $zero
	addi.w	$a5, $a4, 1
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_36:                               # %._crit_edge229.us.us.us.loopexit
                                        #   in Loop: Header=BB0_37 Depth=2
	add.d	$a1, $a1, $t4
	addi.d	$a1, $a1, -1
	move	$a6, $a7
	beq	$a7, $s7, .LBB0_34
.LBB0_37:                               # %.preheader.us.us.us
                                        #   Parent Loop BB0_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_47 Depth 3
	slli.d	$a7, $t0, 2
	fld.d	$fa0, $s5, 0
	stx.w	$a1, $s1, $a7
	addi.w	$t1, $t0, 1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $fp, $a7
	beqz	$a4, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_37 Depth=2
	sub.d	$a7, $a1, $s0
	slli.d	$t2, $t1, 2
	fld.d	$fa0, $s5, 24
	stx.w	$a7, $s1, $t2
	slli.d	$a7, $t1, 3
	addi.w	$t1, $t0, 2
	fstx.d	$fa0, $fp, $a7
.LBB0_39:                               #   in Loop: Header=BB0_37 Depth=2
	beqz	$a6, .LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_37 Depth=2
	sub.d	$a7, $a1, $s8
	slli.d	$t0, $t1, 2
	fld.d	$fa0, $s5, 16
	stx.w	$a7, $s1, $t0
	slli.d	$a7, $t1, 3
	addi.w	$t1, $t1, 1
	fstx.d	$fa0, $fp, $a7
.LBB0_41:                               #   in Loop: Header=BB0_37 Depth=2
	addi.d	$t2, $a1, 1
	bne	$s8, $a3, .LBB0_57
# %bb.42:                               #   in Loop: Header=BB0_37 Depth=2
	addi.w	$a7, $a6, 1
	blt	$a7, $s7, .LBB0_58
.LBB0_43:                               #   in Loop: Header=BB0_37 Depth=2
	bge	$a5, $s6, .LBB0_59
.LBB0_44:                               #   in Loop: Header=BB0_37 Depth=2
	add.d	$t0, $a1, $s0
	slli.d	$t3, $t1, 2
	fld.d	$fa0, $s5, 24
	stx.w	$t0, $s1, $t3
	addi.w	$t0, $t1, 1
	slli.d	$t1, $t1, 3
	fstx.d	$fa0, $fp, $t1
	beq	$s8, $a3, .LBB0_60
.LBB0_45:                               # %.peel.next.preheader
                                        #   in Loop: Header=BB0_37 Depth=2
	add.d	$t1, $s0, $a1
	add.d	$t2, $s8, $a1
	add.d	$t3, $a0, $a1
	add.d	$t5, $a2, $a1
	ori	$t4, $zero, 2
	b	.LBB0_47
	.p2align	4, , 16
.LBB0_46:                               #   in Loop: Header=BB0_47 Depth=3
	addi.w	$t4, $t4, 1
	add.w	$t6, $a0, $t4
	beq	$t6, $a3, .LBB0_36
.LBB0_47:                               # %.peel.next
                                        #   Parent Loop BB0_35 Depth=1
                                        #     Parent Loop BB0_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t6, $a1, $t4
	addi.d	$t8, $t6, -1
	slli.d	$t7, $t0, 2
	fld.d	$fa0, $s5, 0
	stx.w	$t8, $s1, $t7
	addi.w	$t7, $t0, 1
	slli.d	$ra, $t0, 3
	fstx.d	$fa0, $fp, $ra
	beqz	$a4, .LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_47 Depth=3
	add.d	$ra, $t5, $t4
	addi.d	$ra, $ra, -1
	slli.d	$s4, $t7, 2
	fld.d	$fa0, $s5, 24
	stx.w	$ra, $s1, $s4
	slli.d	$t7, $t7, 3
	addi.w	$t0, $t0, 2
	fstx.d	$fa0, $fp, $t7
	move	$t7, $t0
.LBB0_49:                               #   in Loop: Header=BB0_47 Depth=3
	beqz	$a6, .LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_47 Depth=3
	add.d	$t0, $t3, $t4
	addi.d	$t0, $t0, -1
	slli.d	$s4, $t7, 2
	fld.d	$fa0, $s5, 16
	stx.w	$t0, $s1, $s4
	slli.d	$t0, $t7, 3
	addi.w	$t7, $t7, 1
	fstx.d	$fa0, $fp, $t0
.LBB0_51:                               #   in Loop: Header=BB0_47 Depth=3
	slli.d	$t0, $t7, 2
	addi.d	$t8, $t8, -1
	fld.d	$fa0, $s5, 8
	stx.w	$t8, $s1, $t0
	addi.w	$t0, $t7, 1
	slli.d	$t8, $t7, 3
	fstx.d	$fa0, $fp, $t8
	blt	$t4, $s8, .LBB0_54
# %bb.52:                               #   in Loop: Header=BB0_47 Depth=3
	blt	$a7, $s7, .LBB0_55
.LBB0_53:                               #   in Loop: Header=BB0_47 Depth=3
	bge	$a5, $s6, .LBB0_46
	b	.LBB0_56
	.p2align	4, , 16
.LBB0_54:                               #   in Loop: Header=BB0_47 Depth=3
	slli.d	$t8, $t0, 2
	fld.d	$fa0, $s5, 8
	stx.w	$t6, $s1, $t8
	slli.d	$t0, $t0, 3
	addi.w	$t6, $t7, 2
	fstx.d	$fa0, $fp, $t0
	move	$t0, $t6
	bge	$a7, $s7, .LBB0_53
.LBB0_55:                               #   in Loop: Header=BB0_47 Depth=3
	add.d	$t6, $t2, $t4
	addi.d	$t6, $t6, -1
	slli.d	$t7, $t0, 2
	fld.d	$fa0, $s5, 16
	stx.w	$t6, $s1, $t7
	slli.d	$t6, $t0, 3
	addi.w	$t0, $t0, 1
	fstx.d	$fa0, $fp, $t6
	bge	$a5, $s6, .LBB0_46
.LBB0_56:                               #   in Loop: Header=BB0_47 Depth=3
	add.d	$t6, $t1, $t4
	addi.d	$t6, $t6, -1
	slli.d	$t7, $t0, 2
	fld.d	$fa0, $s5, 24
	stx.w	$t6, $s1, $t7
	slli.d	$t6, $t0, 3
	addi.w	$t0, $t0, 1
	fstx.d	$fa0, $fp, $t6
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_57:                               #   in Loop: Header=BB0_37 Depth=2
	slli.d	$a7, $t1, 2
	fld.d	$fa0, $s5, 8
	stx.w	$t2, $s1, $a7
	slli.d	$a7, $t1, 3
	addi.w	$t1, $t1, 1
	fstx.d	$fa0, $fp, $a7
	addi.w	$a7, $a6, 1
	bge	$a7, $s7, .LBB0_43
.LBB0_58:                               #   in Loop: Header=BB0_37 Depth=2
	add.d	$t0, $a1, $s8
	slli.d	$t3, $t1, 2
	fld.d	$fa0, $s5, 16
	stx.w	$t0, $s1, $t3
	slli.d	$t0, $t1, 3
	addi.w	$t1, $t1, 1
	fstx.d	$fa0, $fp, $t0
	blt	$a5, $s6, .LBB0_44
.LBB0_59:                               #   in Loop: Header=BB0_37 Depth=2
	move	$t0, $t1
	bne	$s8, $a3, .LBB0_45
.LBB0_60:                               #   in Loop: Header=BB0_37 Depth=2
	move	$a1, $t2
	move	$a6, $a7
	bne	$a7, $s7, .LBB0_37
	b	.LBB0_34
.LBB0_61:                               # %._crit_edge242
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a2, $a0, 0
	move	$a0, $s2
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_CSRMatrixCreate)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_SeqVectorCreate)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $s6, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_SeqVectorCreate)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $s7, 0
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	blez	$s2, .LBB0_67
# %bb.62:                               # %.lr.ph252.preheader
	ld.w	$a2, $s3, 0
	move	$a0, $zero
	b	.LBB0_64
	.p2align	4, , 16
.LBB0_63:                               # %.loopexit
                                        #   in Loop: Header=BB0_64 Depth=1
	move	$a2, $a1
	beq	$a0, $s2, .LBB0_67
.LBB0_64:                               # %.lr.ph252
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_66 Depth 2
	move	$a3, $a0
	addi.d	$a0, $a0, 1
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $s3, $a1
	bge	$a2, $a1, .LBB0_63
# %bb.65:                               # %.lr.ph249
                                        #   in Loop: Header=BB0_64 Depth=1
	slli.d	$a4, $a3, 3
	fldx.d	$fa0, $a5, $a4
	alsl.d	$a3, $a3, $a5, 3
	alsl.d	$a4, $a2, $fp, 3
	sub.d	$a2, $a1, $a2
	.p2align	4, , 16
.LBB0_66:                               #   Parent Loop BB0_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a4, 0
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 8
	bnez	$a2, .LBB0_66
	b	.LBB0_63
.LBB0_67:                               # %._crit_edge253
	move	$a0, $s2
	move	$s0, $a5
	pcaddu18i	$ra, %call36(hypre_SeqVectorCreate)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 0
	st.d	$s3, $s5, 8
	st.d	$s1, $s5, 16
	st.d	$fp, $s5, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s6, $a1, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$s7, $a1, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	move	$a0, $s5
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
.LBB0_68:                               # %vector.memcheck
	sub.d	$a2, $a0, $s1
	ori	$a1, $zero, 64
	move	$a5, $zero
	bltu	$a2, $a1, .LBB0_3
# %bb.69:                               # %vector.memcheck
	sub.d	$a2, $fp, $s1
	bltu	$a2, $a1, .LBB0_3
# %bb.70:                               # %vector.memcheck
	sub.d	$a1, $fp, $a0
	ori	$a2, $zero, 64
	bltu	$a1, $a2, .LBB0_3
# %bb.71:                               # %vector.ph
	bstrpick.d	$a1, $s2, 30, 3
	slli.d	$a5, $a1, 3
	addi.d	$a1, $fp, 32
	addi.d	$a2, $a0, 32
	addi.d	$a3, $s1, 32
	xvrepli.b	$xr0, 0
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr1, $a4
	move	$a4, $a5
	.p2align	4, , 16
.LBB0_72:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	xvst	$xr1, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a4, $a4, -8
	addi.d	$a1, $a1, 64
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB0_72
# %bb.73:                               # %middle.block
	bne	$a5, $s2, .LBB0_3
	b	.LBB0_5
.Lfunc_end0:
	.size	GenerateSeqLaplacian, .Lfunc_end0-GenerateSeqLaplacian
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
