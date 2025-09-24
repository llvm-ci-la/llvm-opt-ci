	.file	"operators.ompif.c"
	.text
	.globl	DoBufferCopy                    # -- Begin function DoBufferCopy
	.p2align	5
	.type	DoBufferCopy,@function
DoBufferCopy:                           # @DoBufferCopy
# %bb.0:
	alsl.d	$a4, $a1, $a0, 3
	ld.d	$a4, $a4, 1432
	ori	$a5, $zero, 88
	mul.d	$a3, $a3, $a5
	add.d	$a5, $a4, $a3
	ld.w	$a3, $a5, 24
	ld.wu	$t2, $a5, 12
	bltz	$a3, .LBB0_2
# %bb.1:
	ld.d	$a4, $a0, 1776
	slli.d	$a3, $a3, 8
	add.d	$a3, $a4, $a3
	ld.d	$a3, $a3, 248
	ori	$a4, $zero, 216
	mul.d	$a4, $a1, $a4
	add.d	$a3, $a3, $a4
	ld.d	$a3, $a3, 176
	alsl.d	$a6, $a2, $a3, 3
	b	.LBB0_3
.LBB0_2:
	addi.d	$a6, $a5, 48
.LBB0_3:
	ld.w	$a3, $a5, 56
	ld.wu	$t0, $a5, 16
	addi.w	$t4, $t2, 0
	bltz	$a3, .LBB0_5
# %bb.4:
	ld.d	$a0, $a0, 1776
	slli.d	$a3, $a3, 8
	add.d	$a0, $a0, $a3
	ld.d	$a0, $a0, 248
	ori	$a3, $zero, 216
	mul.d	$a1, $a1, $a3
	add.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 176
	slli.d	$a1, $a2, 3
	ldx.d	$a0, $a0, $a1
	b	.LBB0_6
.LBB0_5:
	ld.d	$a0, $a5, 80
.LBB0_6:
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
	ld.w	$a1, $a5, 20
	ld.w	$t7, $a5, 28
	ld.w	$t1, $a5, 32
	ld.w	$t8, $a5, 36
	ld.w	$a2, $a5, 40
	ld.w	$a3, $a5, 44
	ld.w	$t6, $a5, 60
	ld.w	$t3, $a5, 64
	ld.w	$fp, $a5, 68
	ld.w	$a4, $a5, 72
	ld.w	$a5, $a5, 76
	ld.d	$a6, $a6, 0
	ori	$t5, $zero, 1
	addi.w	$a7, $t0, 0
	beq	$t4, $t5, .LBB0_14
# %bb.7:
	ori	$t5, $zero, 4
	bne	$t4, $t5, .LBB0_28
# %bb.8:                                # %.preheader168
	blez	$a1, .LBB0_46
# %bb.9:                                # %.preheader167.lr.ph
	move	$t2, $zero
	mul.d	$t4, $fp, $a5
	add.d	$t4, $t6, $t4
	mul.d	$t3, $t3, $a4
	add.w	$t3, $t4, $t3
	mul.d	$t4, $t8, $a3
	add.d	$t4, $t7, $t4
	mul.d	$t1, $t1, $a2
	add.w	$t1, $t4, $t1
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               # %._crit_edge
                                        #   in Loop: Header=BB0_11 Depth=1
	addi.w	$t2, $t2, 1
	add.w	$t3, $t3, $a5
	add.w	$t1, $t1, $a3
	beq	$t2, $a1, .LBB0_46
.LBB0_11:                               # %.preheader167
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
	blez	$a7, .LBB0_10
# %bb.12:                               # %.lr.ph
                                        #   in Loop: Header=BB0_11 Depth=1
	move	$t4, $t0
	move	$t5, $t1
	move	$t6, $t3
	.p2align	4, , 16
.LBB0_13:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t7, $t5, 3
	fldx.d	$fa0, $a6, $t7
	alsl.d	$t7, $t5, $a6, 3
	slli.d	$t8, $t6, 3
	fstx.d	$fa0, $a0, $t8
	fld.d	$fa0, $t7, 8
	alsl.d	$t8, $t6, $a0, 3
	fst.d	$fa0, $t8, 8
	fld.d	$fa0, $t7, 16
	fst.d	$fa0, $t8, 16
	fld.d	$fa0, $t7, 24
	fst.d	$fa0, $t8, 24
	add.w	$t6, $t6, $a4
	addi.d	$t4, $t4, -1
	add.w	$t5, $t5, $a2
	bnez	$t4, .LBB0_13
	b	.LBB0_10
.LBB0_14:                               # %.preheader165
	blez	$a1, .LBB0_46
# %bb.15:                               # %.preheader164.lr.ph
	move	$t2, $zero
	addi.d	$t4, $t0, -1
	mul.d	$t5, $fp, $a5
	add.d	$t5, $t6, $t5
	add.w	$t6, $t5, $t3
	mul.d	$t8, $t8, $a3
	add.d	$t7, $t7, $t8
	add.w	$t8, $t7, $t1
	addi.d	$fp, $a4, -1
	sltu	$fp, $zero, $fp
	addi.d	$s0, $a2, -1
	sltu	$s0, $zero, $s0
	srli.d	$s1, $t4, 32
	sltu	$s1, $zero, $s1
	or	$fp, $fp, $s0
	or	$fp, $s1, $fp
	bstrpick.d	$s0, $t0, 30, 2
	slli.d	$s0, $s0, 2
	ori	$s1, $zero, 12
	ori	$s2, $zero, 32
	move	$s3, $t8
	move	$s4, $t6
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_16:                               # %._crit_edge174
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$t2, $t2, 1
	add.w	$s4, $s4, $a5
	add.w	$s3, $s3, $a3
	add.d	$t5, $t5, $a5
	add.d	$t7, $t7, $a3
	beq	$t2, $a1, .LBB0_46
.LBB0_17:                               # %.preheader164
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_26 Depth 2
                                        #     Child Loop BB0_21 Depth 2
	blez	$a7, .LBB0_16
# %bb.18:                               # %.lr.ph173
                                        #   in Loop: Header=BB0_17 Depth=1
	bgeu	$a7, $s1, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=1
	move	$s5, $zero
.LBB0_20:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	add.d	$s6, $t3, $s5
	mul.d	$s6, $a4, $s6
	add.w	$s6, $t5, $s6
	add.d	$s7, $t1, $s5
	mul.d	$s7, $a2, $s7
	add.w	$s7, $t7, $s7
	sub.d	$s5, $t0, $s5
	.p2align	4, , 16
.LBB0_21:                               # %scalar.ph
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$s8, $s7, 3
	fldx.d	$fa0, $a6, $s8
	slli.d	$s8, $s6, 3
	fstx.d	$fa0, $a0, $s8
	add.w	$s6, $s6, $a4
	addi.d	$s5, $s5, -1
	add.w	$s7, $s7, $a2
	bnez	$s5, .LBB0_21
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_22:                               # %vector.scevcheck
                                        #   in Loop: Header=BB0_17 Depth=1
	mul.d	$s5, $a3, $t2
	add.w	$s6, $t8, $s5
	add.w	$s7, $s6, $t4
	move	$s5, $zero
	blt	$s7, $s6, .LBB0_20
# %bb.23:                               # %vector.scevcheck
                                        #   in Loop: Header=BB0_17 Depth=1
	mul.d	$s7, $a5, $t2
	add.w	$s7, $t6, $s7
	add.w	$s8, $s7, $t4
	slt	$s8, $s8, $s7
	or	$s8, $s8, $fp
	bnez	$s8, .LBB0_20
# %bb.24:                               # %vector.scevcheck
                                        #   in Loop: Header=BB0_17 Depth=1
	alsl.d	$s7, $s7, $a0, 3
	alsl.d	$s6, $s6, $a6, 3
	sub.d	$s6, $s7, $s6
	bltu	$s6, $s2, .LBB0_20
# %bb.25:                               # %vector.ph
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s5, $s3
	move	$s6, $s4
	move	$s7, $s0
	.p2align	4, , 16
.LBB0_26:                               # %vector.body
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$s8, $s5, $a6, 3
	slli.d	$ra, $s5, 3
	vldx	$vr0, $a6, $ra
	vld	$vr1, $s8, 16
	alsl.d	$s8, $s6, $a0, 3
	slli.d	$ra, $s6, 3
	vstx	$vr0, $a0, $ra
	vst	$vr1, $s8, 16
	addi.d	$s7, $s7, -4
	addi.w	$s6, $s6, 4
	addi.w	$s5, $s5, 4
	bnez	$s7, .LBB0_26
# %bb.27:                               # %middle.block
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s5, $s0
	beq	$s0, $t0, .LBB0_16
	b	.LBB0_20
.LBB0_28:                               # %.preheader163
	blez	$a1, .LBB0_46
# %bb.29:                               # %.preheader162.lr.ph
	move	$t0, $zero
	addi.d	$t5, $t2, -1
	mul.d	$fp, $fp, $a5
	add.d	$t6, $t6, $fp
	mul.d	$t3, $t3, $a4
	add.w	$s0, $t6, $t3
	mul.d	$t6, $t8, $a3
	add.d	$t6, $t7, $t6
	mul.d	$t1, $t1, $a2
	add.w	$t1, $t6, $t1
	bstrpick.d	$t6, $t2, 30, 2
	slli.d	$t6, $t6, 2
	ori	$t7, $zero, 10
	ori	$t8, $zero, 32
	move	$fp, $t1
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_30:                               # %._crit_edge180
                                        #   in Loop: Header=BB0_31 Depth=1
	addi.w	$t0, $t0, 1
	add.w	$s0, $s0, $a5
	add.w	$fp, $fp, $a3
	beq	$t0, $a1, .LBB0_46
.LBB0_31:                               # %.preheader162
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_34 Depth 2
                                        #       Child Loop BB0_44 Depth 3
                                        #       Child Loop BB0_38 Depth 3
	blez	$a7, .LBB0_30
# %bb.32:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB0_31 Depth=1
	move	$s1, $zero
	mul.d	$s2, $a5, $t0
	ld.d	$t3, $sp, 16                    # 8-byte Folded Reload
	add.d	$s2, $t3, $s2
	mul.d	$s3, $a3, $t0
	add.d	$s3, $t1, $s3
	move	$s4, $fp
	move	$s5, $s0
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_33:                               # %._crit_edge178
                                        #   in Loop: Header=BB0_34 Depth=2
	addi.w	$s1, $s1, 1
	add.w	$s5, $s5, $a4
	add.w	$s4, $s4, $a2
	beq	$s1, $a7, .LBB0_30
.LBB0_34:                               # %.preheader
                                        #   Parent Loop BB0_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_44 Depth 3
                                        #       Child Loop BB0_38 Depth 3
	blez	$t4, .LBB0_33
# %bb.35:                               # %.lr.ph177
                                        #   in Loop: Header=BB0_34 Depth=2
	bgeu	$t2, $t7, .LBB0_39
# %bb.36:                               #   in Loop: Header=BB0_34 Depth=2
	move	$s6, $zero
.LBB0_37:                               # %scalar.ph218.preheader
                                        #   in Loop: Header=BB0_34 Depth=2
	sub.d	$s7, $t2, $s6
	.p2align	4, , 16
.LBB0_38:                               # %scalar.ph218
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$t3, $s4, $s6
	slli.d	$t3, $t3, 3
	fldx.d	$fa0, $a6, $t3
	add.w	$t3, $s5, $s6
	slli.d	$t3, $t3, 3
	fstx.d	$fa0, $a0, $t3
	addi.d	$s7, $s7, -1
	addi.d	$s6, $s6, 1
	bnez	$s7, .LBB0_38
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_39:                               # %vector.scevcheck215
                                        #   in Loop: Header=BB0_34 Depth=2
	mul.d	$s6, $a4, $s1
	add.w	$s7, $s2, $s6
	add.w	$s8, $s7, $t5
	move	$s6, $zero
	blt	$s8, $s7, .LBB0_37
# %bb.40:                               # %vector.scevcheck215
                                        #   in Loop: Header=BB0_34 Depth=2
	mul.d	$s8, $a2, $s1
	add.w	$s8, $s3, $s8
	add.w	$ra, $s8, $t5
	blt	$ra, $s8, .LBB0_37
# %bb.41:                               # %vector.scevcheck215
                                        #   in Loop: Header=BB0_34 Depth=2
	srli.d	$ra, $t5, 32
	bnez	$ra, .LBB0_37
# %bb.42:                               # %vector.scevcheck215
                                        #   in Loop: Header=BB0_34 Depth=2
	alsl.d	$s7, $s7, $a0, 3
	alsl.d	$s8, $s8, $a6, 3
	sub.d	$s7, $s7, $s8
	bltu	$s7, $t8, .LBB0_37
# %bb.43:                               # %vector.body223.preheader
                                        #   in Loop: Header=BB0_34 Depth=2
	move	$s6, $s4
	move	$s7, $s5
	move	$s8, $t6
	.p2align	4, , 16
.LBB0_44:                               # %vector.body223
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	alsl.d	$ra, $s6, $a6, 3
	slli.d	$t3, $s6, 3
	vldx	$vr0, $a6, $t3
	vld	$vr1, $ra, 16
	alsl.d	$t3, $s7, $a0, 3
	slli.d	$ra, $s7, 3
	vstx	$vr0, $a0, $ra
	vst	$vr1, $t3, 16
	addi.d	$s8, $s8, -4
	addi.w	$s7, $s7, 4
	addi.w	$s6, $s6, 4
	bnez	$s8, .LBB0_44
# %bb.45:                               # %middle.block228
                                        #   in Loop: Header=BB0_34 Depth=2
	move	$s6, $t6
	beq	$t6, $t2, .LBB0_33
	b	.LBB0_37
.LBB0_46:                               # %.loopexit
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
.Lfunc_end0:
	.size	DoBufferCopy, .Lfunc_end0-DoBufferCopy
                                        # -- End function
	.globl	exchange_boundary               # -- Begin function exchange_boundary
	.p2align	5
	.type	exchange_boundary,@function
exchange_boundary:                      # @exchange_boundary
# %bb.0:
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
	move	$s0, $a5
	move	$s1, $a4
	move	$s2, $a3
	move	$s3, $a2
	move	$s4, $a1
	move	$s5, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 152
	addi.d	$a0, $sp, 152
	ori	$a2, $zero, 108
	ori	$s6, $zero, 108
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 168
	st.w	$a0, $sp, 192
	st.w	$a0, $sp, 200
	st.w	$a0, $sp, 208
	st.w	$a0, $sp, 216
	st.w	$a0, $sp, 240
	addi.d	$a0, $sp, 40
	ori	$a2, $zero, 108
	addi.d	$s7, $sp, 40
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L__const.exchange_boundary.corners)
	addi.d	$a0, $a0, %pc_lo12(.L__const.exchange_boundary.corners)
	pcalau12i	$a1, %pc_hi20(.L__const.exchange_boundary.edges)
	addi.d	$a1, $a1, %pc_lo12(.L__const.exchange_boundary.edges)
	move	$a2, $zero
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	addi.d	$a2, $a2, 4
	beq	$a2, $s6, .LBB1_8
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	beqz	$s2, .LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	ldx.w	$a3, $a2, $fp
	ldx.w	$a4, $a2, $s7
	or	$a3, $a4, $a3
	stx.w	$a3, $a2, $s7
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	beqz	$s1, .LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=1
	ldx.w	$a3, $a1, $a2
	ldx.w	$a4, $a2, $s7
	or	$a3, $a4, $a3
	stx.w	$a3, $a2, $s7
.LBB1_6:                                #   in Loop: Header=BB1_2 Depth=1
	beqz	$s0, .LBB1_1
# %bb.7:                                #   in Loop: Header=BB1_2 Depth=1
	ldx.w	$a3, $a0, $a2
	ldx.w	$a4, $a2, $s7
	or	$a3, $a4, $a3
	stx.w	$a3, $a2, $s7
	b	.LBB1_1
.LBB1_8:
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s5, 1520
	ld.w	$a1, $s5, 1524
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	alsl.d	$a0, $s4, $s5, 3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bge	$fp, $a1, .LBB1_18
# %bb.9:                                # %.lr.ph
	addi.d	$s6, $a0, 1432
	ori	$a0, $zero, 88
	mul.d	$s8, $fp, $a0
	move	$s7, $fp
	b	.LBB1_12
	.p2align	4, , 16
.LBB1_10:                               #   in Loop: Header=BB1_12 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	move	$a3, $s7
	pcaddu18i	$ra, %call36(DoBufferCopy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 1524
.LBB1_11:                               #   in Loop: Header=BB1_12 Depth=1
	addi.d	$fp, $fp, 1
	addi.w	$s7, $s7, 1
	addi.d	$s8, $s8, 88
	bge	$fp, $a1, .LBB1_18
.LBB1_12:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	beqz	$s2, .LBB1_14
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=1
	ldx.w	$a2, $a0, $s8
	bnez	$a2, .LBB1_10
.LBB1_14:                               #   in Loop: Header=BB1_12 Depth=1
	add.d	$a0, $a0, $s8
	beqz	$s1, .LBB1_16
# %bb.15:                               #   in Loop: Header=BB1_12 Depth=1
	ld.w	$a2, $a0, 4
	bnez	$a2, .LBB1_10
.LBB1_16:                               #   in Loop: Header=BB1_12 Depth=1
	beqz	$s0, .LBB1_11
# %bb.17:                               #   in Loop: Header=BB1_12 Depth=1
	ld.w	$a0, $a0, 8
	bnez	$a0, .LBB1_10
	b	.LBB1_11
.LBB1_18:                               # %._crit_edge
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $fp, 560
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, 560
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 400
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, 400
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.Lfunc_end1:
	.size	exchange_boundary, .Lfunc_end1-exchange_boundary
                                        # -- End function
	.globl	rebuild_lambda                  # -- Begin function rebuild_lambda
	.p2align	5
	.type	rebuild_lambda,@function
rebuild_lambda:                         # @rebuild_lambda
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 1600
	move	$s1, $a0
	alsl.d	$s2, $fp, $s0, 3
	blez	$a1, .LBB2_13
# %bb.1:                                # %.lr.ph162
	move	$a0, $zero
	ld.d	$a2, $s0, 1776
	addi.d	$a3, $s2, 1616
	vldi	$vr10, -784
	ori	$a4, $zero, 216
	mul.d	$a4, $fp, $a4
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_2:                                #   in Loop: Header=BB2_4 Depth=1
	vldi	$vr0, -784
.LBB2_3:                                # %._crit_edge157
                                        #   in Loop: Header=BB2_4 Depth=1
	fcmp.clt.d	$fcc0, $ft2, $fa0
	addi.d	$a0, $a0, 1
	fsel	$ft2, $ft2, $fa0, $fcc0
	beq	$a0, $a1, .LBB2_14
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #       Child Loop BB2_10 Depth 3
                                        #         Child Loop BB2_12 Depth 4
	slli.d	$a5, $a0, 8
	add.d	$a5, $a2, $a5
	ld.d	$a5, $a5, 248
	add.d	$t6, $a5, $a4
	ld.w	$a5, $t6, 28
	blez	$a5, .LBB2_2
# %bb.5:                                # %.preheader148.lr.ph
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a6, $zero
	move	$a7, $zero
	ld.w	$t0, $t6, 48
	ld.d	$t7, $t6, 176
	ld.w	$t1, $t6, 52
	ld.w	$t3, $t6, 44
	ld.w	$t2, $t6, 24
	ld.d	$t4, $t7, 16
	add.d	$t5, $t0, $t1
	addi.d	$t5, $t5, 1
	ld.d	$t8, $t7, 40
	ld.d	$s3, $t7, 48
	mul.w	$s4, $t3, $t5
	alsl.d	$t3, $s4, $t4, 3
	alsl.d	$t4, $s4, $t8, 3
	alsl.d	$t5, $s4, $s3, 3
	ld.d	$t8, $t7, 56
	ld.d	$s3, $t7, 32
	ld.wu	$t6, $t6, 20
	fld.d	$fa0, $a3, 0
	alsl.d	$t7, $s4, $t8, 3
	alsl.d	$t8, $s4, $s3, 3
	addi.w	$s3, $t6, 0
	fmul.d	$fa0, $fa0, $fa0
	frecip.d	$fa0, $fa0
	fmul.d	$fa1, $fs0, $fa0
	vldi	$vr0, -784
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_6:                                # %._crit_edge153
                                        #   in Loop: Header=BB2_7 Depth=2
	addi.w	$a7, $a7, 1
	add.w	$a6, $a6, $t1
	beq	$a7, $a5, .LBB2_3
.LBB2_7:                                # %.preheader148
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_10 Depth 3
                                        #         Child Loop BB2_12 Depth 4
	blez	$t2, .LBB2_6
# %bb.8:                                # %.preheader.lr.ph
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$s4, $zero
	move	$s5, $a6
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_9:                                # %._crit_edge
                                        #   in Loop: Header=BB2_10 Depth=3
	addi.w	$s4, $s4, 1
	add.w	$s5, $s5, $t0
	beq	$s4, $t2, .LBB2_6
.LBB2_10:                               # %.preheader
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_12 Depth 4
	blez	$s3, .LBB2_9
# %bb.11:                               # %.lr.ph
                                        #   in Loop: Header=BB2_10 Depth=3
	move	$s6, $t6
	move	$s7, $s5
	.p2align	4, , 16
.LBB2_12:                               #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        #       Parent Loop BB2_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$s8, $s7, 3
	fldx.d	$fa2, $t4, $s8
	alsl.d	$ra, $s7, $t4, 3
	fld.d	$fa3, $ra, 8
	fmul.d	$fa4, $fa1, $fa2
	fabs.d	$fa4, $fa4
	fmul.d	$fa5, $fa1, $fa3
	fabs.d	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fldx.d	$fa5, $t5, $s8
	add.w	$ra, $t0, $s7
	slli.d	$ra, $ra, 3
	fldx.d	$fa6, $t5, $ra
	fmul.d	$fa7, $fa1, $fa5
	fabs.d	$fa7, $fa7
	fadd.d	$fa4, $fa4, $fa7
	fmul.d	$fa7, $fa1, $fa6
	fabs.d	$fa7, $fa7
	fadd.d	$fa4, $fa4, $fa7
	fldx.d	$fa7, $t7, $s8
	add.w	$ra, $t1, $s7
	slli.d	$ra, $ra, 3
	fldx.d	$ft0, $t7, $ra
	fmul.d	$ft1, $fa1, $fa7
	fabs.d	$ft1, $ft1
	fadd.d	$fa4, $fa4, $ft1
	fmul.d	$ft1, $fa1, $ft0
	fabs.d	$ft1, $ft1
	fadd.d	$fa4, $fa4, $ft1
	fldx.d	$ft1, $t3, $s8
	fneg.d	$fa2, $fa2
	fsub.d	$fa2, $fa2, $fa3
	fsub.d	$fa2, $fa2, $fa5
	fsub.d	$fa2, $fa2, $fa6
	fsub.d	$fa2, $fa2, $fa7
	fsub.d	$fa2, $fa2, $ft0
	fneg.d	$fa2, $fa2
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa2, $fs1, $ft1, $fa2
	frecip.d	$fa3, $fa2
	fstx.d	$fa3, $t8, $s8
	fadd.d	$fa3, $fa2, $fa4
	fdiv.d	$fa2, $fa3, $fa2
	fcmp.clt.d	$fcc0, $fa0, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	addi.d	$s6, $s6, -1
	addi.w	$s7, $s7, 1
	bnez	$s6, .LBB2_12
	b	.LBB2_9
.LBB2_13:
	vldi	$vr10, -784
.LBB2_14:                               # %._crit_edge163
	vst	$vr10, $sp, 16                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 960
	ld.w	$a2, $s0, 1596
	sub.d	$a0, $a0, $s1
	add.d	$a0, $a0, $a1
	st.d	$a0, $s2, 960
	bnez	$a2, .LBB2_18
# %bb.15:
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	bnez	$fp, .LBB2_17
# %bb.16:
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
.LBB2_17:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB2_18:
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	fst.d	$fa0, $s2, 1696
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.Lfunc_end2:
	.size	rebuild_lambda, .Lfunc_end2-rebuild_lambda
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function smooth
.LCPI3_0:
	.dword	0xbfe5555555555555              # double -0.66666666666666663
	.text
	.globl	smooth
	.p2align	5
	.type	smooth,@function
smooth:                                 # @smooth
# %bb.0:
	addi.d	$sp, $sp, -1040
	st.d	$ra, $sp, 1032                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1024                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1016                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1008                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1000                  # 8-byte Folded Spill
	st.d	$s3, $sp, 992                   # 8-byte Folded Spill
	st.d	$s4, $sp, 984                   # 8-byte Folded Spill
	st.d	$s5, $sp, 976                   # 8-byte Folded Spill
	st.d	$s6, $sp, 968                   # 8-byte Folded Spill
	st.d	$s7, $sp, 960                   # 8-byte Folded Spill
	st.d	$s8, $sp, 952                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 944                  # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a0, $a0, 1612
	ori	$fp, $zero, 2
	fmov.d	$fs0, $fa1
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	move	$s3, $a3
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	move	$s1, $a1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	blt	$a0, $fp, .LBB3_2
# %bb.1:
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
.LBB3_2:
	move	$a1, $zero
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	slt	$a0, $a2, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	alsl.d	$a0, $s1, $s0, 3
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1616
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	vreplvei.d	$vr0, $vr0, 0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	ori	$a0, $zero, 216
	mul.d	$a0, $s1, $a0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	slli.d	$a0, $s3, 3
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	lu32i.d	$fp, 1
	vreplgr2vr.d	$vr0, $fp
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1365
	lu32i.d	$a0, 349525
	lu52i.d	$a0, $a0, -1026
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	st.d	$s0, $sp, 128                   # 8-byte Folded Spill
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %._crit_edge226
                                        #   in Loop: Header=BB3_4 Depth=1
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a3, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	add.w	$a1, $a2, $a1
	st.d	$a0, $a3, 0
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ori	$a0, $zero, 4
	bge	$a1, $a0, .LBB3_40
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
                                        #       Child Loop BB3_10 Depth 3
                                        #         Child Loop BB3_13 Depth 4
                                        #           Child Loop BB3_16 Depth 5
                                        #             Child Loop BB3_38 Depth 6
                                        #             Child Loop BB3_19 Depth 6
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	andi	$a0, $a1, 1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 10
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a2, $a0, $a1
	ori	$a3, $zero, 1
	move	$a0, $s0
	move	$a1, $s1
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	move	$a5, $a4
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 1600
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	vld	$vr13, $sp, 96                  # 16-byte Folded Reload
	vld	$vr14, $sp, 48                  # 16-byte Folded Reload
	vld	$vr15, $sp, 32                  # 16-byte Folded Reload
	vld	$vr16, $sp, 16                  # 16-byte Folded Reload
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	blez	$a1, .LBB3_3
# %bb.5:                                # %.lr.ph225
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 1776
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	move	$a1, $zero
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_6:                                # %._crit_edge222
                                        #   in Loop: Header=BB3_7 Depth=2
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB3_3
.LBB3_7:                                #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_10 Depth 3
                                        #         Child Loop BB3_13 Depth 4
                                        #           Child Loop BB3_16 Depth 5
                                        #             Child Loop BB3_38 Depth 6
                                        #             Child Loop BB3_19 Depth 6
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 8
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 248
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 44
	st.d	$a1, $sp, 512                   # 8-byte Folded Spill
	blez	$a1, .LBB3_6
# %bb.8:                                # %.lr.ph221
                                        #   in Loop: Header=BB3_7 Depth=2
	ld.d	$a1, $a0, 48
	st.d	$zero, $sp, 504                 # 8-byte Folded Spill
	ld.d	$a2, $a0, 176
	vinsgr2vr.d	$vr1, $a1, 0
	vpickve2gr.w	$a4, $vr1, 0
	vpickve2gr.w	$a5, $vr1, 1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a6, $a2, $a1
	add.d	$a7, $a4, $a5
	addi.w	$t0, $a7, 1
	ld.d	$a3, $sp, 512                   # 8-byte Folded Reload
	mul.w	$t1, $a3, $t0
	ld.d	$t2, $a2, 16
	ld.d	$t3, $a2, 40
	ld.d	$t7, $a2, 48
	ld.d	$t8, $a2, 56
	ld.d	$fp, $a2, 32
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	fld.d	$fa0, $a1, 0
	ld.w	$a1, $a0, 20
	ld.w	$t4, $a0, 24
	st.d	$t4, $sp, 296                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 28
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	fmul.d	$fa0, $fa0, $fa0
	frecip.d	$fa0, $fa0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 3
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	addi.d	$a0, $a2, 80
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	fmul.d	$fa0, $fs0, $fa0
	ori	$a0, $zero, 1
	sub.w	$a2, $a0, $a3
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	add.d	$a0, $a1, $a3
	addi.d	$s0, $a0, -1
	st.d	$a7, $sp, 400                   # 8-byte Folded Spill
	st.d	$a2, $sp, 936                   # 8-byte Folded Spill
	mulw.d.w	$a0, $a7, $a2
	vaddi.wu	$vr1, $vr1, 1
	vreplgr2vr.w	$vr2, $a0
	vpackev.d	$vr1, $vr1, $vr15
	vadd.w	$vr1, $vr2, $vr1
	vreplgr2vr.w	$vr2, $a3
	vsub.w	$vr1, $vr1, $vr2
	addi.d	$a7, $a0, 1
	sub.d	$a1, $t1, $a5
	slli.d	$a1, $a1, 3
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	addi.d	$a1, $a5, 1
	add.d	$a2, $a1, $a0
	sub.w	$s2, $a2, $a3
	sub.d	$a2, $t1, $a4
	slli.d	$a2, $a2, 3
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	add.d	$a2, $a4, $a0
	st.d	$a2, $sp, 488                   # 8-byte Folded Spill
	sub.d	$a2, $a2, $a3
	addi.w	$s3, $a2, 1
	sub.d	$a2, $a0, $a3
	addi.d	$a2, $a2, 2
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	vreplvei.d	$vr2, $vr0, 0
	add.d	$a1, $a1, $a4
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	sub.d	$a1, $a7, $a4
	sub.w	$a1, $a1, $a3
	st.d	$a1, $sp, 480                   # 8-byte Folded Spill
	sub.d	$a1, $a7, $a5
	sub.w	$a1, $a1, $a3
	st.d	$a1, $sp, 472                   # 8-byte Folded Spill
	st.d	$a4, $sp, 904                   # 8-byte Folded Spill
	sub.d	$a1, $a0, $a4
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	add.d	$a1, $a5, $a0
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	st.d	$a5, $sp, 592                   # 8-byte Folded Spill
	sub.d	$a0, $a0, $a5
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	st.d	$a6, $sp, 368                   # 8-byte Folded Spill
	alsl.d	$t4, $t1, $a6, 3
	st.d	$t2, $sp, 344                   # 8-byte Folded Spill
	alsl.d	$t5, $t1, $t2, 3
	st.d	$t3, $sp, 336                   # 8-byte Folded Spill
	alsl.d	$t6, $t1, $t3, 3
	st.d	$t7, $sp, 328                   # 8-byte Folded Spill
	alsl.d	$t7, $t1, $t7, 3
	st.d	$t8, $sp, 320                   # 8-byte Folded Spill
	alsl.d	$t8, $t1, $t8, 3
	st.d	$fp, $sp, 312                   # 8-byte Folded Spill
	alsl.d	$s1, $t1, $fp, 3
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.w	$a1, $a3, $a0
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	st.d	$t1, $sp, 352                   # 8-byte Folded Spill
	slli.d	$a1, $t1, 3
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	st.d	$a7, $sp, 496                   # 8-byte Folded Spill
	sub.w	$a1, $a7, $a3
	st.d	$t0, $sp, 360                   # 8-byte Folded Spill
	bstrpick.d	$a2, $t0, 31, 0
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s2, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 432                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s3, $sp, 424                   # 8-byte Folded Spill
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	st.d	$a1, $sp, 416                   # 8-byte Folded Spill
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_9:                                # %._crit_edge215
                                        #   in Loop: Header=BB3_10 Depth=3
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	ld.d	$a0, $sp, 936                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 936                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 480                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 472                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 496                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 488                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	st.d	$a2, $sp, 408                   # 8-byte Folded Spill
	bge	$a2, $a0, .LBB3_6
.LBB3_10:                               #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_13 Depth 4
                                        #           Child Loop BB3_16 Depth 5
                                        #             Child Loop BB3_38 Depth 6
                                        #             Child Loop BB3_19 Depth 6
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	sub.d	$a2, $a1, $a0
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a2, $sp, 896                   # 8-byte Folded Spill
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	bge	$a2, $a0, .LBB3_9
# %bb.11:                               # %.preheader210.lr.ph
                                        #   in Loop: Header=BB3_10 Depth=3
	st.d	$zero, $sp, 792                 # 8-byte Folded Spill
	ld.d	$t2, $sp, 936                   # 8-byte Folded Reload
	addi.d	$a0, $t2, 1
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	slt	$a1, $a0, $a3
	masknez	$a2, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	sub.d	$a1, $a1, $t2
	bstrins.d	$a1, $zero, 0, 0
	st.d	$a1, $sp, 568                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a4
	slt	$a2, $a0, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	sub.d	$fp, $a0, $t2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	mul.d	$a1, $a4, $a1
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	st.d	$a2, $sp, 544                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	st.d	$a2, $sp, 536                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	st.d	$a2, $sp, 528                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 520                   # 8-byte Folded Spill
	nor	$a1, $t2, $zero
	add.d	$s0, $a0, $a1
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	andi	$a1, $a1, 1
	sltui	$a1, $a1, 1
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	masknez	$a2, $a6, $a1
	ld.d	$a5, $sp, 288                   # 8-byte Folded Reload
	maskeqz	$a3, $a5, $a1
	or	$a2, $a3, $a2
	masknez	$a3, $a5, $a1
	maskeqz	$a1, $a6, $a1
	or	$a1, $a1, $a3
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	mul.d	$a3, $a3, $a4
	vinsgr2vr.w	$vr3, $a3, 0
	ld.d	$t0, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a7, $t0, $a1, 3
	alsl.d	$t3, $t0, $a2, 3
	ld.d	$a3, $sp, 904                   # 8-byte Folded Reload
	add.d	$a3, $a3, $t2
	ld.d	$a4, $sp, 592                   # 8-byte Folded Reload
	add.d	$a4, $a4, $t2
	slli.d	$a5, $t2, 3
	ld.d	$a6, $sp, 512                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	add.d	$t1, $a6, $t1
	st.d	$t1, $sp, 888                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	add.d	$s3, $a6, $t1
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	add.d	$t1, $a1, $a6
	st.d	$t1, $sp, 672                   # 8-byte Folded Spill
	sub.d	$a1, $a1, $a5
	st.d	$a1, $sp, 664                   # 8-byte Folded Spill
	add.d	$a0, $a0, $t0
	st.d	$a0, $sp, 872                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a5
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 648                   # 8-byte Folded Spill
	slli.d	$a0, $a4, 3
	sub.d	$a0, $a2, $a0
	st.d	$a0, $sp, 640                   # 8-byte Folded Spill
	add.d	$a1, $a2, $a6
	sub.d	$a0, $a2, $a5
	st.d	$a0, $sp, 864                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	slli.d	$a0, $a3, 3
	sub.d	$a0, $a2, $a0
	st.d	$a0, $sp, 624                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a5
	st.d	$a0, $sp, 848                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a5
	st.d	$a0, $sp, 840                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a5
	st.d	$a0, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a5
	st.d	$a0, $sp, 600                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a5
	st.d	$a0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s0, $sp, 800                   # 8-byte Folded Spill
	vreplgr2vr.w	$vr4, $s0
	vadd.w	$vr4, $vr1, $vr4
	st.d	$fp, $sp, 880                   # 8-byte Folded Spill
	bstrins.d	$fp, $zero, 0, 0
	st.d	$a1, $sp, 856                   # 8-byte Folded Spill
	addi.d	$a0, $a1, -8
	st.d	$a0, $sp, 616                   # 8-byte Folded Spill
	st.d	$fp, $sp, 560                   # 8-byte Folded Spill
	add.d	$a0, $fp, $t2
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	st.d	$a0, $sp, 784                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	st.d	$a0, $sp, 776                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	st.d	$a0, $sp, 768                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	st.d	$a0, $sp, 760                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	st.d	$a0, $sp, 752                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	st.d	$a0, $sp, 744                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	st.d	$a0, $sp, 736                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	st.d	$a0, $sp, 728                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	st.d	$a0, $sp, 720                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	st.d	$a0, $sp, 712                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 896                   # 8-byte Folded Reload
	b	.LBB3_13
	.p2align	4, , 16
.LBB3_12:                               # %._crit_edge213
                                        #   in Loop: Header=BB3_13 Depth=4
	ld.d	$a2, $sp, 608                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	ld.d	$a0, $sp, 792                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 792                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 712                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 720                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 728                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 728                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 736                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 744                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 744                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 752                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 752                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 760                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 760                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 768                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 768                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 776                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 776                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 784                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 784                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	bge	$a2, $a0, .LBB3_9
.LBB3_13:                               # %.preheader210
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        #       Parent Loop BB3_10 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_16 Depth 5
                                        #             Child Loop BB3_38 Depth 6
                                        #             Child Loop BB3_19 Depth 6
	st.d	$a2, $sp, 608                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 896                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 888                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB3_12
# %bb.14:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB3_13 Depth=4
	st.d	$zero, $sp, 928                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 704                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 696                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 688                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 680                   # 8-byte Folded Spill
	vinsgr2vr.w	$vr5, $a0, 0
	vadd.w	$vr5, $vr5, $vr3
	ld.d	$t2, $sp, 784                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 776                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 760                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 752                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	st.d	$a0, $sp, 920                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	st.d	$a0, $sp, 912                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 728                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 720                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 712                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 896                   # 8-byte Folded Reload
	b	.LBB3_16
	.p2align	4, , 16
.LBB3_15:                               # %._crit_edge
                                        #   in Loop: Header=BB3_16 Depth=5
	addi.w	$t1, $t1, 1
	ld.d	$a0, $sp, 928                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 928                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 904                   # 8-byte Folded Reload
	add.w	$a6, $a6, $a0
	add.w	$a3, $a3, $a0
	add.w	$fp, $fp, $a0
	ld.d	$a1, $sp, 912                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 912                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 920                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 920                   # 8-byte Folded Spill
	add.d	$s6, $s6, $a0
	add.d	$s2, $s2, $a0
	add.d	$s0, $s0, $a0
	add.d	$t0, $t0, $a0
	add.d	$t2, $t2, $a0
	ld.d	$a0, $sp, 888                   # 8-byte Folded Reload
	bge	$t1, $a0, .LBB3_12
.LBB3_16:                               # %.preheader
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        #       Parent Loop BB3_10 Depth=3
                                        #         Parent Loop BB3_13 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB3_38 Depth 6
                                        #             Child Loop BB3_19 Depth 6
	ld.d	$a0, $sp, 896                   # 8-byte Folded Reload
	bge	$a0, $s3, .LBB3_15
# %bb.17:                               # %.lr.ph
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a5, $sp, 936                   # 8-byte Folded Reload
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 880                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB3_20
.LBB3_18:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_16 Depth=5
	move	$a1, $t2
	move	$a2, $t0
	move	$s4, $s0
	move	$s7, $s2
	move	$ra, $s6
	move	$s8, $a5
	.p2align	4, , 16
.LBB3_19:                               # %scalar.ph
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        #       Parent Loop BB3_10 Depth=3
                                        #         Parent Loop BB3_13 Depth=4
                                        #           Parent Loop BB3_16 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	add.w	$a0, $a5, $ra
	addi.w	$a4, $a0, -1
	slli.d	$s5, $a4, 3
	fldx.d	$fa6, $t5, $s5
	alsl.d	$a4, $a4, $t3, 3
	fldx.d	$fa7, $t3, $s5
	slli.d	$a0, $a0, 3
	fldx.d	$ft0, $t3, $a0
	fld.d	$ft1, $a4, -8
	fldx.d	$ft2, $t6, $a0
	fldx.d	$ft3, $t6, $s5
	fsub.d	$ft0, $ft0, $fa7
	fsub.d	$ft1, $fa7, $ft1
	fneg.d	$ft1, $ft1
	fmul.d	$ft1, $ft3, $ft1
	fmadd.d	$ft0, $ft2, $ft0, $ft1
	add.w	$a0, $a5, $s7
	slli.d	$a0, $a0, 3
	fldx.d	$ft1, $t7, $a0
	fldx.d	$ft2, $t3, $a0
	add.w	$a0, $a5, $s4
	slli.d	$a0, $a0, 3
	fldx.d	$ft3, $t3, $a0
	fsub.d	$ft2, $ft2, $fa7
	fmadd.d	$ft0, $ft1, $ft2, $ft0
	fldx.d	$ft1, $t7, $s5
	fsub.d	$ft2, $fa7, $ft3
	add.w	$a0, $a5, $a2
	slli.d	$a0, $a0, 3
	fldx.d	$ft3, $t3, $a0
	fneg.d	$ft1, $ft1
	fmadd.d	$ft0, $ft1, $ft2, $ft0
	fldx.d	$ft1, $t8, $a0
	fsub.d	$ft2, $ft3, $fa7
	add.w	$a0, $a5, $a1
	slli.d	$a0, $a0, 3
	fldx.d	$ft3, $t3, $a0
	fldx.d	$ft4, $t8, $s5
	fmadd.d	$ft0, $ft1, $ft2, $ft0
	fmul.d	$fa6, $ft5, $fa6
	fsub.d	$ft1, $fa7, $ft3
	fneg.d	$ft2, $ft4
	fnmadd.d	$ft0, $ft2, $ft1, $ft0
	fldx.d	$ft1, $s1, $s5
	fldx.d	$ft2, $t4, $s5
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$ft3, $a0, %pc_lo12(.LCPI3_0)
	fmul.d	$ft0, $fa0, $ft0
	fmadd.d	$fa6, $fa6, $fa7, $ft0
	fsub.d	$fa6, $fa6, $ft2
	fmul.d	$ft0, $ft1, $ft3
	fmadd.d	$fa6, $ft0, $fa6, $fa7
	fstx.d	$fa6, $a7, $s5
	addi.d	$s8, $s8, 1
	addi.d	$ra, $ra, 1
	addi.d	$s7, $s7, 1
	addi.d	$s4, $s4, 1
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 1
	blt	$s8, $s3, .LBB3_19
	b	.LBB3_15
	.p2align	4, , 16
.LBB3_20:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 904                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 928                   # 8-byte Folded Reload
	mul.d	$s8, $a0, $a1
	vinsgr2vr.w	$vr6, $s8, 0
	vadd.w	$vr6, $vr6, $vr5
	vreplvei.w	$vr6, $vr6, 0
	vadd.w	$vr7, $vr6, $vr1
	vadd.w	$vr6, $vr6, $vr4
	vslt.w	$vr6, $vr6, $vr7
	vmskltz.w	$vr6, $vr6
	vpickve2gr.hu	$a1, $vr6, 0
	ld.d	$a5, $sp, 936                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_18
# %bb.21:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 800                   # 8-byte Folded Reload
	srli.d	$a1, $a0, 32
	ld.d	$a5, $sp, 936                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_18
# %bb.22:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	add.w	$s4, $a0, $s8
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a1, $s4, $a0, 3
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	add.d	$s7, $a0, $s4
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$ra, $s7, $a0, 3
	alsl.d	$a2, $s4, $t5, 3
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a5, $s7, $a0, 3
	sltu	$a5, $a1, $a5
	sltu	$a2, $a2, $ra
	and	$a2, $a5, $a2
	ld.d	$a5, $sp, 936                   # 8-byte Folded Reload
	bnez	$a2, .LBB3_18
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a2, $s4, $a0, 3
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$a5, $s7, $a0, 3
	sltu	$a5, $a1, $a5
	sltu	$a2, $a2, $ra
	and	$a2, $a5, $a2
	ld.d	$a5, $sp, 936                   # 8-byte Folded Reload
	bnez	$a2, .LBB3_18
# %bb.24:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	add.w	$a4, $a0, $s8
	ld.d	$a0, $sp, 856                   # 8-byte Folded Reload
	alsl.d	$a2, $a4, $a0, 3
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	add.d	$a5, $a0, $a4
	ld.d	$a0, $sp, 864                   # 8-byte Folded Reload
	st.d	$a5, $sp, 816                   # 8-byte Folded Spill
	alsl.d	$a5, $a5, $a0, 3
	sltu	$a5, $a1, $a5
	sltu	$a2, $a2, $ra
	and	$a2, $a5, $a2
	ld.d	$a5, $sp, 936                   # 8-byte Folded Reload
	bnez	$a2, .LBB3_18
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a2, $s4, $a0, 3
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a5, $s7, $a0, 3
	sltu	$a5, $a1, $a5
	sltu	$a2, $a2, $ra
	and	$a2, $a5, $a2
	ld.d	$a5, $sp, 936                   # 8-byte Folded Reload
	bnez	$a2, .LBB3_18
# %bb.26:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	add.w	$a5, $a0, $s8
	ld.d	$a0, $sp, 856                   # 8-byte Folded Reload
	alsl.d	$a2, $a5, $a0, 3
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	st.d	$a5, $sp, 832                   # 8-byte Folded Spill
	add.d	$a5, $a0, $a5
	ld.d	$a0, $sp, 864                   # 8-byte Folded Reload
	st.d	$a5, $sp, 824                   # 8-byte Folded Spill
	alsl.d	$a5, $a5, $a0, 3
	sltu	$a5, $a1, $a5
	sltu	$a2, $a2, $ra
	and	$a2, $a5, $a2
	ld.d	$a5, $sp, 936                   # 8-byte Folded Reload
	bnez	$a2, .LBB3_18
# %bb.27:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$a2, $s4, $a0, 3
	ld.d	$a0, $sp, 864                   # 8-byte Folded Reload
	alsl.d	$a5, $s7, $a0, 3
	sltu	$a5, $a1, $a5
	sltu	$a2, $a2, $ra
	and	$a2, $a5, $a2
	ld.d	$a5, $sp, 936                   # 8-byte Folded Reload
	bnez	$a2, .LBB3_18
# %bb.28:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	add.w	$s8, $a0, $s8
	ld.d	$a0, $sp, 856                   # 8-byte Folded Reload
	alsl.d	$a5, $s8, $a0, 3
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	add.d	$a2, $a0, $s8
	ld.d	$a0, $sp, 864                   # 8-byte Folded Reload
	alsl.d	$s5, $a2, $a0, 3
	sltu	$s5, $a1, $s5
	sltu	$a5, $a5, $ra
	and	$s5, $s5, $a5
	ld.d	$a5, $sp, 936                   # 8-byte Folded Reload
	bnez	$s5, .LBB3_18
# %bb.29:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	alsl.d	$a5, $s4, $t6, 3
	ld.d	$a0, $sp, 848                   # 8-byte Folded Reload
	alsl.d	$s5, $s7, $a0, 3
	sltu	$s5, $a1, $s5
	sltu	$a5, $a5, $ra
	and	$s5, $s5, $a5
	ld.d	$a5, $sp, 936                   # 8-byte Folded Reload
	bnez	$s5, .LBB3_18
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	alsl.d	$a5, $s8, $t6, 3
	ld.d	$a0, $sp, 848                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a0, 3
	sltu	$a2, $a1, $a2
	sltu	$a5, $a5, $ra
	and	$a2, $a2, $a5
	ld.d	$a5, $sp, 936                   # 8-byte Folded Reload
	bnez	$a2, .LBB3_18
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	alsl.d	$a2, $s4, $t7, 3
	ld.d	$a0, $sp, 840                   # 8-byte Folded Reload
	alsl.d	$a5, $s7, $a0, 3
	sltu	$a5, $a1, $a5
	sltu	$a2, $a2, $ra
	and	$a2, $a5, $a2
	ld.d	$a5, $sp, 936                   # 8-byte Folded Reload
	bnez	$a2, .LBB3_18
# %bb.32:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $t7, 3
	ld.d	$a0, $sp, 840                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 824                   # 8-byte Folded Reload
	alsl.d	$a5, $a5, $a0, 3
	sltu	$a5, $a1, $a5
	sltu	$a2, $a2, $ra
	and	$a2, $a5, $a2
	ld.d	$a5, $sp, 936                   # 8-byte Folded Reload
	bnez	$a2, .LBB3_18
# %bb.33:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	alsl.d	$a2, $s4, $t8, 3
	ld.d	$a0, $sp, 808                   # 8-byte Folded Reload
	alsl.d	$a5, $s7, $a0, 3
	sltu	$a5, $a1, $a5
	sltu	$a2, $a2, $ra
	and	$a2, $a5, $a2
	ld.d	$a5, $sp, 936                   # 8-byte Folded Reload
	bnez	$a2, .LBB3_18
# %bb.34:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	alsl.d	$a2, $a4, $t8, 3
	ld.d	$a0, $sp, 808                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 816                   # 8-byte Folded Reload
	alsl.d	$a5, $a4, $a0, 3
	sltu	$a5, $a1, $a5
	sltu	$a2, $a2, $ra
	and	$a2, $a5, $a2
	ld.d	$a5, $sp, 936                   # 8-byte Folded Reload
	bnez	$a2, .LBB3_18
# %bb.35:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	alsl.d	$a2, $s4, $s1, 3
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a5, $s7, $a0, 3
	sltu	$a5, $a1, $a5
	sltu	$a2, $a2, $ra
	and	$a2, $a5, $a2
	ld.d	$a5, $sp, 936                   # 8-byte Folded Reload
	bnez	$a2, .LBB3_18
# %bb.36:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	alsl.d	$a2, $s4, $t4, 3
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a5, $s7, $a0, 3
	sltu	$a1, $a1, $a5
	sltu	$a2, $a2, $ra
	and	$a1, $a1, $a2
	ld.d	$a5, $sp, 936                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_18
# %bb.37:                               # %vector.ph
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a1, $sp, 568                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 920                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 912                   # 8-byte Folded Reload
	move	$s4, $fp
	move	$s7, $a3
	move	$s8, $a6
	.p2align	4, , 16
.LBB3_38:                               # %vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        #       Parent Loop BB3_10 Depth=3
                                        #         Parent Loop BB3_13 Depth=4
                                        #           Parent Loop BB3_16 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	slli.d	$s5, $s8, 3
	vldx	$vr6, $t5, $s5
	alsl.d	$ra, $s8, $t3, 3
	vldx	$vr7, $t3, $s5
	addi.w	$a0, $s8, 1
	slli.d	$a0, $a0, 3
	vldx	$vr8, $t3, $a0
	vld	$vr9, $ra, -8
	vldx	$vr10, $t6, $a0
	vldx	$vr11, $t6, $s5
	vfsub.d	$vr8, $vr8, $vr7
	vfsub.d	$vr9, $vr7, $vr9
	vbitrevi.d	$vr9, $vr9, 63
	vfmul.d	$vr9, $vr11, $vr9
	vfmadd.d	$vr8, $vr10, $vr8, $vr9
	slli.d	$a0, $s7, 3
	vldx	$vr9, $t3, $a0
	vldx	$vr10, $t7, $a0
	slli.d	$a0, $s4, 3
	vldx	$vr11, $t3, $a0
	vfsub.d	$vr9, $vr9, $vr7
	vfmadd.d	$vr8, $vr10, $vr9, $vr8
	vldx	$vr9, $t7, $s5
	vfsub.d	$vr10, $vr7, $vr11
	slli.d	$a0, $a5, 3
	vldx	$vr11, $t3, $a0
	vbitrevi.d	$vr9, $vr9, 63
	vfmadd.d	$vr8, $vr9, $vr10, $vr8
	vldx	$vr9, $t8, $a0
	vfsub.d	$vr10, $vr11, $vr7
	slli.d	$a0, $a2, 3
	vldx	$vr11, $t3, $a0
	vldx	$vr12, $t8, $s5
	vfmadd.d	$vr8, $vr9, $vr10, $vr8
	vfmul.d	$vr6, $vr14, $vr6
	vfsub.d	$vr9, $vr7, $vr11
	vbitrevi.d	$vr10, $vr12, 63
	vfnmadd.d	$vr8, $vr10, $vr9, $vr8
	vldx	$vr9, $t4, $s5
	vldx	$vr10, $s1, $s5
	vfmul.d	$vr8, $vr2, $vr8
	vfmadd.d	$vr6, $vr6, $vr7, $vr8
	vfsub.d	$vr6, $vr6, $vr9
	vfmul.d	$vr8, $vr10, $vr16
	vfmadd.d	$vr6, $vr8, $vr6, $vr7
	vstx	$vr6, $a7, $s5
	addi.w	$s8, $s8, 2
	addi.w	$s7, $s7, 2
	addi.w	$s4, $s4, 2
	addi.w	$a5, $a5, 2
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB3_38
# %bb.39:                               # %middle.block
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a5, $sp, 552                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 880                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB3_15
	b	.LBB3_18
.LBB3_40:
	fld.d	$fs0, $sp, 944                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 952                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 960                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 968                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 976                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 984                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 992                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 1000                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1008                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1016                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1024                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1032                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1040
	ret
.Lfunc_end3:
	.size	smooth, .Lfunc_end3-smooth
                                        # -- End function
	.globl	apply_op                        # -- Begin function apply_op
	.p2align	5
	.type	apply_op,@function
apply_op:                               # @apply_op
# %bb.0:
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 240                  # 8-byte Folded Spill
	fmov.d	$fs0, $fa1
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	move	$s1, $a3
	move	$s0, $a2
	move	$s2, $a1
	move	$s3, $a0
	ori	$a3, $zero, 1
	move	$a2, $s1
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	vld	$vr10, $sp, 16                  # 16-byte Folded Reload
	ld.w	$a1, $s3, 1600
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	alsl.d	$a0, $s2, $s3, 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	blez	$a1, .LBB4_35
# %bb.1:                                # %.lr.ph157
	move	$a1, $zero
	ld.d	$a0, $s3, 1776
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1616
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	vreplvei.d	$vr0, $vr10, 0
	ori	$a0, $zero, 216
	mul.d	$a0, $s2, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a0, $s1, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a0, $s0, 3
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %._crit_edge154
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB4_35
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
                                        #       Child Loop BB4_9 Depth 3
                                        #         Child Loop BB4_33 Depth 4
                                        #         Child Loop BB4_13 Depth 4
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 8
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 248
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 28
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	blez	$a1, .LBB4_2
# %bb.4:                                # %.preheader149.lr.ph
                                        #   in Loop: Header=BB4_3 Depth=1
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	move	$t2, $zero
	ld.w	$t3, $a0, 48
	ld.d	$a1, $a0, 176
	ld.w	$t4, $a0, 52
	ld.w	$a2, $a0, 44
	ld.w	$t5, $a0, 24
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a4, $a1, $a3
	add.d	$a5, $t3, $t4
	addi.d	$a5, $a5, 1
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a3
	mul.w	$a2, $a2, $a5
	ld.d	$a5, $a1, 16
	alsl.d	$t6, $a2, $a4, 3
	alsl.d	$t7, $a2, $a6, 3
	ld.d	$a7, $a1, 40
	alsl.d	$t8, $a2, $a5, 3
	ld.d	$t0, $a1, 48
	ld.d	$a1, $a1, 56
	alsl.d	$s0, $a2, $a7, 3
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	fld.d	$fa1, $a3, 0
	alsl.d	$s1, $a2, $t0, 3
	alsl.d	$s2, $a2, $a1, 3
	ld.wu	$s3, $a0, 20
	fmul.d	$fa1, $fa1, $fa1
	frecip.d	$fa1, $fa1
	fmul.d	$fa1, $fs0, $fa1
	addi.d	$s5, $s3, -1
	slli.d	$a0, $a2, 3
	alsl.d	$a2, $s3, $a0, 3
	add.d	$a3, $a6, $a2
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	add.d	$a3, $a5, $a2
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	slli.d	$a5, $t4, 3
	sub.d	$a6, $a0, $a5
	add.d	$a3, $a4, $a6
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	sub.d	$a5, $a2, $a5
	add.d	$a3, $a4, $a5
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	add.d	$fp, $a4, $a2
	slli.d	$a5, $t3, 3
	sub.d	$a0, $a0, $a5
	add.d	$a0, $a4, $a0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	sub.d	$a0, $a2, $a5
	add.d	$a0, $a4, $a0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a0, $t6, -8
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	add.d	$a0, $a7, $a2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	add.d	$a0, $t0, $a2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	add.d	$a0, $a1, $a2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	bstrpick.d	$a0, $s3, 30, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	vreplvei.d	$vr2, $vr1, 0
	sub.d	$a0, $zero, $t4
	sub.d	$t0, $zero, $t3
	b	.LBB4_6
	.p2align	4, , 16
.LBB4_5:                                # %._crit_edge152
                                        #   in Loop: Header=BB4_6 Depth=2
	addi.w	$t2, $t2, 1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	add.w	$a1, $a1, $t4
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	beq	$t2, $a1, .LBB4_2
.LBB4_6:                                # %.preheader149
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_9 Depth 3
                                        #         Child Loop BB4_33 Depth 4
                                        #         Child Loop BB4_13 Depth 4
	blez	$t5, .LBB4_5
# %bb.7:                                # %.preheader.lr.ph
                                        #   in Loop: Header=BB4_6 Depth=2
	move	$s6, $zero
	mul.d	$a1, $t4, $t2
	add.d	$s8, $t4, $a1
	add.d	$a2, $t3, $a1
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_8:                                # %._crit_edge
                                        #   in Loop: Header=BB4_9 Depth=3
	addi.w	$s6, $s6, 1
	add.w	$t1, $t1, $t3
	beq	$s6, $t5, .LBB4_5
.LBB4_9:                                # %.preheader
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_33 Depth 4
                                        #         Child Loop BB4_13 Depth 4
	addi.w	$a1, $s3, 0
	blez	$a1, .LBB4_8
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB4_9 Depth=3
	ori	$a1, $zero, 8
	bgeu	$s3, $a1, .LBB4_14
# %bb.11:                               #   in Loop: Header=BB4_9 Depth=3
	move	$a1, $zero
.LBB4_12:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_9 Depth=3
	add.d	$a4, $t3, $a1
	add.d	$a5, $t0, $a1
	add.d	$a7, $t4, $a1
	add.d	$s4, $a0, $a1
	sub.d	$ra, $s3, $a1
	move	$a2, $t1
	.p2align	4, , 16
.LBB4_13:                               # %scalar.ph
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$a3, $a1, $a2
	slli.d	$a6, $a3, 3
	fldx.d	$fa3, $t8, $a6
	alsl.d	$s7, $a3, $t6, 3
	fldx.d	$fa4, $t6, $a6
	addi.w	$a3, $a3, 1
	slli.d	$a3, $a3, 3
	fldx.d	$fa5, $t6, $a3
	fld.d	$fa6, $s7, -8
	fldx.d	$fa7, $s0, $a3
	fldx.d	$ft0, $s0, $a6
	fsub.d	$fa5, $fa5, $fa4
	fsub.d	$fa6, $fa4, $fa6
	fneg.d	$fa6, $fa6
	fmul.d	$fa6, $ft0, $fa6
	fmadd.d	$fa5, $fa7, $fa5, $fa6
	add.w	$a3, $a4, $a2
	slli.d	$a3, $a3, 3
	fldx.d	$fa6, $s1, $a3
	fldx.d	$fa7, $t6, $a3
	add.w	$a3, $a5, $a2
	slli.d	$a3, $a3, 3
	fldx.d	$ft0, $t6, $a3
	fsub.d	$fa7, $fa7, $fa4
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fldx.d	$fa6, $s1, $a6
	fsub.d	$fa7, $fa4, $ft0
	add.w	$a3, $a7, $a2
	slli.d	$a3, $a3, 3
	fldx.d	$ft0, $t6, $a3
	fneg.d	$fa6, $fa6
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fldx.d	$fa6, $s2, $a3
	fsub.d	$fa7, $ft0, $fa4
	add.w	$a3, $s4, $a2
	slli.d	$a3, $a3, 3
	fldx.d	$ft0, $t6, $a3
	fldx.d	$ft1, $s2, $a6
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fmul.d	$fa3, $ft2, $fa3
	fsub.d	$fa6, $fa4, $ft0
	fneg.d	$fa7, $ft1
	fnmadd.d	$fa5, $fa7, $fa6, $fa5
	fmul.d	$fa5, $fa1, $fa5
	fmadd.d	$fa3, $fa3, $fa4, $fa5
	fstx.d	$fa3, $t7, $a6
	addi.d	$ra, $ra, -1
	addi.d	$a2, $a2, 1
	bnez	$ra, .LBB4_13
	b	.LBB4_8
	.p2align	4, , 16
.LBB4_14:                               # %vector.scevcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	mul.d	$a2, $t3, $s6
	add.w	$s4, $s8, $a2
	add.w	$a4, $s4, $s5
	move	$a1, $zero
	blt	$a4, $s4, .LBB4_12
# %bb.15:                               # %vector.scevcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	add.w	$a7, $a3, $a2
	add.w	$a4, $a7, $s5
	blt	$a4, $a7, .LBB4_12
# %bb.16:                               # %vector.scevcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	add.w	$a5, $a3, $a2
	add.w	$a4, $a5, $s5
	blt	$a4, $a5, .LBB4_12
# %bb.17:                               # %vector.scevcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	add.w	$a2, $a3, $a2
	add.w	$a4, $a2, $s5
	blt	$a4, $a2, .LBB4_12
# %bb.18:                               # %vector.scevcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	srli.d	$a4, $s5, 32
	bnez	$a4, .LBB4_12
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a4, $a5, $t7, 3
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$ra, $a5, $a1, 3
	alsl.d	$a1, $a5, $t8, 3
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a3, 3
	sltu	$a3, $a4, $a3
	sltu	$a1, $a1, $ra
	and	$a3, $a3, $a1
	move	$a1, $zero
	bnez	$a3, .LBB4_12
# %bb.20:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a6, $a5, $a6, 3
	sltu	$a6, $a4, $a6
	sltu	$a3, $a3, $ra
	and	$a3, $a6, $a3
	bnez	$a3, .LBB4_12
# %bb.21:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a3, $s4, $t6, 3
	alsl.d	$a6, $s4, $fp, 3
	sltu	$a6, $a4, $a6
	sltu	$a3, $a3, $ra
	and	$a3, $a6, $a3
	bnez	$a3, .LBB4_12
# %bb.22:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$a6, $a5, $a6, 3
	sltu	$a6, $a4, $a6
	sltu	$a3, $a3, $ra
	and	$a3, $a6, $a3
	bnez	$a3, .LBB4_12
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a3, $a7, $t6, 3
	alsl.d	$a6, $a7, $fp, 3
	sltu	$a6, $a4, $a6
	sltu	$a3, $a3, $ra
	and	$a3, $a6, $a3
	bnez	$a3, .LBB4_12
# %bb.24:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a3, 3
	alsl.d	$a6, $a5, $fp, 3
	sltu	$a6, $a4, $a6
	sltu	$a3, $a3, $ra
	and	$a3, $a6, $a3
	bnez	$a3, .LBB4_12
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a3, $a2, $t6, 3
	alsl.d	$a6, $a2, $fp, 3
	sltu	$a6, $a4, $a6
	sltu	$a3, $a3, $ra
	and	$a3, $a6, $a3
	bnez	$a3, .LBB4_12
# %bb.26:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a3, $a5, $s0, 3
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a6, $a5, $s7, 3
	sltu	$a6, $a4, $a6
	sltu	$a3, $a3, $ra
	and	$a3, $a6, $a3
	bnez	$a3, .LBB4_12
# %bb.27:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a3, $a2, $s0, 3
	alsl.d	$a2, $a2, $s7, 3
	sltu	$a2, $a4, $a2
	sltu	$a3, $a3, $ra
	and	$a2, $a2, $a3
	bnez	$a2, .LBB4_12
# %bb.28:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a2, $a5, $s1, 3
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a6, 3
	sltu	$a3, $a4, $a3
	sltu	$a2, $a2, $ra
	and	$a2, $a3, $a2
	bnez	$a2, .LBB4_12
# %bb.29:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a2, $a7, $s1, 3
	alsl.d	$a3, $a7, $a6, 3
	sltu	$a3, $a4, $a3
	sltu	$a2, $a2, $ra
	and	$a2, $a3, $a2
	bnez	$a2, .LBB4_12
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a2, $a5, $s2, 3
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a6, 3
	sltu	$a3, $a4, $a3
	sltu	$a2, $a2, $ra
	and	$a2, $a3, $a2
	bnez	$a2, .LBB4_12
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a2, $s4, $s2, 3
	alsl.d	$a3, $s4, $a6, 3
	sltu	$a3, $a4, $a3
	sltu	$a2, $a2, $ra
	and	$a2, $a3, $a2
	bnez	$a2, .LBB4_12
# %bb.32:                               # %vector.body.preheader
                                        #   in Loop: Header=BB4_9 Depth=3
	move	$a1, $t1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_33:                               # %vector.body
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a3, $a1, 3
	vldx	$vr3, $t8, $a3
	alsl.d	$a4, $a1, $t6, 3
	vldx	$vr4, $t6, $a3
	addi.w	$a5, $a1, 1
	slli.d	$a5, $a5, 3
	vldx	$vr5, $t6, $a5
	vld	$vr6, $a4, -8
	vldx	$vr7, $s0, $a5
	vldx	$vr8, $s0, $a3
	vfsub.d	$vr5, $vr5, $vr4
	vfsub.d	$vr6, $vr4, $vr6
	vbitrevi.d	$vr6, $vr6, 63
	vfmul.d	$vr6, $vr8, $vr6
	vfmadd.d	$vr5, $vr7, $vr5, $vr6
	add.w	$a4, $t3, $a1
	slli.d	$a4, $a4, 3
	vldx	$vr6, $s1, $a4
	vldx	$vr7, $t6, $a4
	add.w	$a4, $t0, $a1
	slli.d	$a4, $a4, 3
	vldx	$vr8, $t6, $a4
	vfsub.d	$vr7, $vr7, $vr4
	vfmadd.d	$vr5, $vr6, $vr7, $vr5
	vldx	$vr6, $s1, $a3
	vfsub.d	$vr7, $vr4, $vr8
	add.w	$a4, $t4, $a1
	slli.d	$a4, $a4, 3
	vldx	$vr8, $t6, $a4
	vbitrevi.d	$vr6, $vr6, 63
	vfmadd.d	$vr5, $vr6, $vr7, $vr5
	vldx	$vr6, $s2, $a4
	vfsub.d	$vr7, $vr8, $vr4
	add.w	$a4, $a0, $a1
	slli.d	$a4, $a4, 3
	vldx	$vr8, $t6, $a4
	vldx	$vr9, $s2, $a3
	vfmadd.d	$vr5, $vr6, $vr7, $vr5
	vfmul.d	$vr3, $vr0, $vr3
	vfsub.d	$vr6, $vr4, $vr8
	vbitrevi.d	$vr7, $vr9, 63
	vfnmadd.d	$vr5, $vr7, $vr6, $vr5
	vfmul.d	$vr5, $vr2, $vr5
	vfmadd.d	$vr3, $vr3, $vr4, $vr5
	vstx	$vr3, $t7, $a3
	addi.d	$a2, $a2, -2
	addi.w	$a1, $a1, 2
	bnez	$a2, .LBB4_33
# %bb.34:                               # %middle.block
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	move	$a1, $a2
	beq	$a2, $s3, .LBB4_8
	b	.LBB4_12
.LBB4_35:                               # %._crit_edge158
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 80
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a1
	st.d	$a0, $a2, 80
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.Lfunc_end4:
	.size	apply_op, .Lfunc_end4-apply_op
                                        # -- End function
	.globl	residual                        # -- Begin function residual
	.p2align	5
	.type	residual,@function
residual:                               # @residual
# %bb.0:
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 256                  # 8-byte Folded Spill
	fmov.d	$fs0, $fa1
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	move	$s0, $a4
	move	$s2, $a3
	move	$s1, $a2
	move	$s3, $a1
	move	$s4, $a0
	ori	$a3, $zero, 1
	move	$a2, $s2
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	vld	$vr10, $sp, 16                  # 16-byte Folded Reload
	ld.w	$a1, $s4, 1600
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	alsl.d	$a0, $s3, $s4, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	blez	$a1, .LBB5_36
# %bb.1:                                # %.lr.ph160
	move	$a1, $zero
	ld.d	$a0, $s4, 1776
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1616
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	vreplvei.d	$vr0, $vr10, 0
	ori	$a0, $zero, 216
	mul.d	$a0, $s3, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a0, $s2, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a0, $s0, 3
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a0, $s1, 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %._crit_edge157
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB5_36
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
                                        #       Child Loop BB5_9 Depth 3
                                        #         Child Loop BB5_34 Depth 4
                                        #         Child Loop BB5_13 Depth 4
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 8
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 248
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 28
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	blez	$a1, .LBB5_2
# %bb.4:                                # %.preheader152.lr.ph
                                        #   in Loop: Header=BB5_3 Depth=1
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	ld.w	$t4, $a0, 48
	ld.d	$a1, $a0, 176
	ld.w	$t5, $a0, 52
	ld.w	$a2, $a0, 44
	ld.w	$t6, $a0, 24
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a4, $a1, $a3
	add.d	$a3, $t4, $t5
	addi.d	$a3, $a3, 1
	mul.w	$a2, $a2, $a3
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a5, $a1, $a3
	ld.d	$a3, $a1, 16
	alsl.d	$t7, $a2, $a4, 3
	ld.d	$a6, $a1, 40
	alsl.d	$t8, $a2, $a5, 3
	alsl.d	$s0, $a2, $a3, 3
	ld.d	$a7, $a1, 48
	alsl.d	$s1, $a2, $a6, 3
	ld.d	$t0, $a1, 56
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $t1
	alsl.d	$s2, $a2, $a7, 3
	ld.d	$t1, $sp, 72                    # 8-byte Folded Reload
	fld.d	$fa1, $t1, 0
	alsl.d	$s3, $a2, $t0, 3
	alsl.d	$s4, $a2, $a1, 3
	ld.wu	$s6, $a0, 20
	fmul.d	$fa1, $fa1, $fa1
	frecip.d	$fa1, $fa1
	fmul.d	$fa1, $fs0, $fa1
	addi.d	$s7, $s6, -1
	slli.d	$a0, $a2, 3
	alsl.d	$a2, $s6, $a0, 3
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	add.d	$a1, $a3, $a2
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	slli.d	$a1, $t5, 3
	sub.d	$a3, $a0, $a1
	add.d	$a3, $a4, $a3
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	sub.d	$a1, $a2, $a1
	add.d	$a1, $a4, $a1
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	add.d	$a3, $a4, $a2
	slli.d	$a1, $t4, 3
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a4, $a0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	sub.d	$a0, $a2, $a1
	add.d	$a0, $a4, $a0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a0, $t7, -8
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	add.d	$a0, $a6, $a2
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	add.d	$a0, $a7, $a2
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	add.d	$a0, $t0, $a2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	add.d	$a0, $a5, $a2
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	bstrpick.d	$a0, $s6, 30, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	vreplvei.d	$vr2, $vr1, 0
	sub.d	$a0, $zero, $t5
	sub.d	$s8, $zero, $t4
	b	.LBB5_6
	.p2align	4, , 16
.LBB5_5:                                # %._crit_edge155
                                        #   in Loop: Header=BB5_6 Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.w	$a1, $a1, $t5
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	beq	$a2, $a1, .LBB5_2
.LBB5_6:                                # %.preheader152
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_9 Depth 3
                                        #         Child Loop BB5_34 Depth 4
                                        #         Child Loop BB5_13 Depth 4
	blez	$t6, .LBB5_5
# %bb.7:                                # %.preheader.lr.ph
                                        #   in Loop: Header=BB5_6 Depth=2
	move	$ra, $zero
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	mul.d	$a1, $t5, $a1
	add.d	$s5, $t5, $a1
	add.d	$a2, $t4, $a1
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	b	.LBB5_9
	.p2align	4, , 16
.LBB5_8:                                # %._crit_edge
                                        #   in Loop: Header=BB5_9 Depth=3
	addi.w	$ra, $ra, 1
	add.w	$a4, $a4, $t4
	beq	$ra, $t6, .LBB5_5
.LBB5_9:                                # %.preheader
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_34 Depth 4
                                        #         Child Loop BB5_13 Depth 4
	addi.w	$a1, $s6, 0
	blez	$a1, .LBB5_8
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB5_9 Depth=3
	ori	$a1, $zero, 8
	bgeu	$s6, $a1, .LBB5_14
# %bb.11:                               #   in Loop: Header=BB5_9 Depth=3
	move	$t1, $zero
.LBB5_12:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB5_9 Depth=3
	add.d	$a1, $t4, $t1
	add.d	$a5, $s8, $t1
	add.d	$a6, $t5, $t1
	add.d	$a7, $a0, $t1
	sub.d	$t0, $s6, $t1
	move	$t2, $a4
	.p2align	4, , 16
.LBB5_13:                               # %scalar.ph
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        #       Parent Loop BB5_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$fp, $t1, $t2
	slli.d	$a2, $fp, 3
	fldx.d	$fa3, $s0, $a2
	alsl.d	$t3, $fp, $t7, 3
	fldx.d	$fa4, $t7, $a2
	addi.w	$fp, $fp, 1
	slli.d	$fp, $fp, 3
	fldx.d	$fa5, $t7, $fp
	fld.d	$fa6, $t3, -8
	fldx.d	$fa7, $s1, $fp
	fldx.d	$ft0, $s1, $a2
	fsub.d	$fa5, $fa5, $fa4
	fsub.d	$fa6, $fa4, $fa6
	fneg.d	$fa6, $fa6
	fmul.d	$fa6, $ft0, $fa6
	fmadd.d	$fa5, $fa7, $fa5, $fa6
	add.w	$t3, $a1, $t2
	slli.d	$t3, $t3, 3
	fldx.d	$fa6, $s2, $t3
	fldx.d	$fa7, $t7, $t3
	add.w	$t3, $a5, $t2
	slli.d	$t3, $t3, 3
	fldx.d	$ft0, $t7, $t3
	fsub.d	$fa7, $fa7, $fa4
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fldx.d	$fa6, $s2, $a2
	fsub.d	$fa7, $fa4, $ft0
	add.w	$t3, $a6, $t2
	slli.d	$t3, $t3, 3
	fldx.d	$ft0, $t7, $t3
	fneg.d	$fa6, $fa6
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fldx.d	$fa6, $s3, $t3
	fsub.d	$fa7, $ft0, $fa4
	add.w	$t3, $a7, $t2
	slli.d	$t3, $t3, 3
	fldx.d	$ft0, $t7, $t3
	fldx.d	$ft1, $s3, $a2
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fmul.d	$fa3, $ft2, $fa3
	fsub.d	$fa6, $fa4, $ft0
	fneg.d	$fa7, $ft1
	fldx.d	$ft0, $t8, $a2
	fnmadd.d	$fa5, $fa7, $fa6, $fa5
	fmul.d	$fa5, $fa1, $fa5
	fmadd.d	$fa3, $fa3, $fa4, $fa5
	fsub.d	$fa3, $ft0, $fa3
	fstx.d	$fa3, $s4, $a2
	addi.d	$t0, $t0, -1
	addi.d	$t2, $t2, 1
	bnez	$t0, .LBB5_13
	b	.LBB5_8
	.p2align	4, , 16
.LBB5_14:                               # %vector.scevcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	mul.d	$a1, $t4, $ra
	add.w	$a6, $s5, $a1
	add.w	$a2, $a6, $s7
	move	$t1, $zero
	blt	$a2, $a6, .LBB5_12
# %bb.15:                               # %vector.scevcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	add.w	$a7, $a2, $a1
	add.w	$a2, $a7, $s7
	blt	$a2, $a7, .LBB5_12
# %bb.16:                               # %vector.scevcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	add.w	$t0, $a2, $a1
	add.w	$a2, $t0, $s7
	blt	$a2, $t0, .LBB5_12
# %bb.17:                               # %vector.scevcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	add.w	$t2, $a2, $a1
	add.w	$a1, $t2, $s7
	blt	$a1, $t2, .LBB5_12
# %bb.18:                               # %vector.scevcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	srli.d	$a1, $s7, 32
	bnez	$a1, .LBB5_12
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a1, $t0, $s4, 3
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a5, $t0, $a2, 3
	alsl.d	$a2, $t0, $s0, 3
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$t1, $t0, $t1, 3
	sltu	$t1, $a1, $t1
	sltu	$a2, $a2, $a5
	and	$a2, $t1, $a2
	move	$t1, $zero
	bnez	$a2, .LBB5_12
# %bb.20:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a2, $t0, $a2, 3
	ld.d	$t3, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$fp, $t0, $t3, 3
	sltu	$fp, $a1, $fp
	sltu	$a2, $a2, $a5
	and	$a2, $fp, $a2
	bnez	$a2, .LBB5_12
# %bb.21:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a2, $a6, $t7, 3
	alsl.d	$fp, $a6, $a3, 3
	sltu	$fp, $a1, $fp
	sltu	$a2, $a2, $a5
	and	$a2, $fp, $a2
	bnez	$a2, .LBB5_12
# %bb.22:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a2, $t0, $a2, 3
	ld.d	$t3, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$fp, $t0, $t3, 3
	sltu	$fp, $a1, $fp
	sltu	$a2, $a2, $a5
	and	$a2, $fp, $a2
	bnez	$a2, .LBB5_12
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a2, $a7, $t7, 3
	alsl.d	$fp, $a7, $a3, 3
	sltu	$fp, $a1, $fp
	sltu	$a2, $a2, $a5
	and	$a2, $fp, $a2
	bnez	$a2, .LBB5_12
# %bb.24:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$a2, $t0, $a2, 3
	alsl.d	$fp, $t0, $a3, 3
	sltu	$fp, $a1, $fp
	sltu	$a2, $a2, $a5
	and	$a2, $fp, $a2
	bnez	$a2, .LBB5_12
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a2, $t2, $t7, 3
	alsl.d	$fp, $t2, $a3, 3
	sltu	$fp, $a1, $fp
	sltu	$a2, $a2, $a5
	and	$a2, $fp, $a2
	bnez	$a2, .LBB5_12
# %bb.26:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a2, $t0, $s1, 3
	ld.d	$t3, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$fp, $t0, $t3, 3
	sltu	$fp, $a1, $fp
	sltu	$a2, $a2, $a5
	and	$a2, $fp, $a2
	bnez	$a2, .LBB5_12
# %bb.27:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a2, $t2, $s1, 3
	alsl.d	$t2, $t2, $t3, 3
	sltu	$t2, $a1, $t2
	sltu	$a2, $a2, $a5
	and	$a2, $t2, $a2
	bnez	$a2, .LBB5_12
# %bb.28:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a2, $t0, $s2, 3
	ld.d	$t3, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$t2, $t0, $t3, 3
	sltu	$t2, $a1, $t2
	sltu	$a2, $a2, $a5
	and	$a2, $t2, $a2
	bnez	$a2, .LBB5_12
# %bb.29:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a2, $a7, $s2, 3
	alsl.d	$a7, $a7, $t3, 3
	sltu	$a7, $a1, $a7
	sltu	$a2, $a2, $a5
	and	$a2, $a7, $a2
	bnez	$a2, .LBB5_12
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a2, $t0, $s3, 3
	ld.d	$t2, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a7, $t0, $t2, 3
	sltu	$a7, $a1, $a7
	sltu	$a2, $a2, $a5
	and	$a2, $a7, $a2
	bnez	$a2, .LBB5_12
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a2, $a6, $s3, 3
	alsl.d	$a6, $a6, $t2, 3
	sltu	$a6, $a1, $a6
	sltu	$a2, $a2, $a5
	and	$a2, $a6, $a2
	bnez	$a2, .LBB5_12
# %bb.32:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a2, $t0, $t8, 3
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a6, $t0, $a6, 3
	sltu	$a1, $a1, $a6
	sltu	$a2, $a2, $a5
	and	$a1, $a1, $a2
	bnez	$a1, .LBB5_12
# %bb.33:                               # %vector.body.preheader
                                        #   in Loop: Header=BB5_9 Depth=3
	move	$a1, $a4
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_34:                               # %vector.body
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        #       Parent Loop BB5_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a6, $a1, 3
	vldx	$vr3, $s0, $a6
	alsl.d	$a2, $a1, $t7, 3
	vldx	$vr4, $t7, $a6
	addi.w	$a7, $a1, 1
	slli.d	$a7, $a7, 3
	vldx	$vr5, $t7, $a7
	vld	$vr6, $a2, -8
	vldx	$vr7, $s1, $a7
	vldx	$vr8, $s1, $a6
	vfsub.d	$vr5, $vr5, $vr4
	vfsub.d	$vr6, $vr4, $vr6
	vbitrevi.d	$vr6, $vr6, 63
	vfmul.d	$vr6, $vr8, $vr6
	vfmadd.d	$vr5, $vr7, $vr5, $vr6
	add.w	$a2, $t4, $a1
	slli.d	$a2, $a2, 3
	vldx	$vr6, $s2, $a2
	vldx	$vr7, $t7, $a2
	add.w	$a2, $s8, $a1
	slli.d	$a2, $a2, 3
	vldx	$vr8, $t7, $a2
	vfsub.d	$vr7, $vr7, $vr4
	vfmadd.d	$vr5, $vr6, $vr7, $vr5
	vldx	$vr6, $s2, $a6
	vfsub.d	$vr7, $vr4, $vr8
	add.w	$a2, $t5, $a1
	slli.d	$a2, $a2, 3
	vldx	$vr8, $t7, $a2
	vbitrevi.d	$vr6, $vr6, 63
	vfmadd.d	$vr5, $vr6, $vr7, $vr5
	vldx	$vr6, $s3, $a2
	vfsub.d	$vr7, $vr8, $vr4
	add.w	$a2, $a0, $a1
	slli.d	$a2, $a2, 3
	vldx	$vr8, $t7, $a2
	vldx	$vr9, $s3, $a6
	vfmadd.d	$vr5, $vr6, $vr7, $vr5
	vfmul.d	$vr3, $vr0, $vr3
	vfsub.d	$vr6, $vr4, $vr8
	vbitrevi.d	$vr7, $vr9, 63
	vldx	$vr8, $t8, $a6
	vfnmadd.d	$vr5, $vr7, $vr6, $vr5
	vfmul.d	$vr5, $vr2, $vr5
	vfmadd.d	$vr3, $vr3, $vr4, $vr5
	vfsub.d	$vr3, $vr8, $vr3
	vstx	$vr3, $s4, $a6
	addi.d	$a5, $a5, -2
	addi.w	$a1, $a1, 2
	bnez	$a5, .LBB5_34
# %bb.35:                               # %middle.block
                                        #   in Loop: Header=BB5_9 Depth=3
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	move	$t1, $a1
	beq	$a1, $s6, .LBB5_8
	b	.LBB5_12
.LBB5_36:                               # %._crit_edge161
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 160
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a1
	st.d	$a0, $a2, 160
	fld.d	$fs0, $sp, 256                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.Lfunc_end5:
	.size	residual, .Lfunc_end5-residual
                                        # -- End function
	.globl	residual_and_restriction        # -- Begin function residual_and_restriction
	.p2align	5
	.type	residual_and_restriction,@function
residual_and_restriction:               # @residual_and_restriction
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
	fst.d	$fs1, $sp, 376                  # 8-byte Folded Spill
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$s0, $a5
	move	$s3, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s4, $a1
	move	$s5, $a0
	ori	$a3, $zero, 1
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 1600
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	alsl.d	$a0, $s4, $s5, 3
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	blez	$a1, .LBB6_26
# %bb.1:                                # %.lr.ph210
	move	$a1, $zero
	ld.d	$a0, $s5, 1776
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1616
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a0, $zero, 216
	mul.d	$a2, $s3, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	mul.d	$a0, $s4, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a0, $s2, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $s1, 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a0, $s0, 3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vldi	$vr1, -960
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %._crit_edge207
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB6_26
.LBB6_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_6 Depth 2
                                        #       Child Loop BB6_9 Depth 3
                                        #         Child Loop BB6_24 Depth 4
                                        #         Child Loop BB6_13 Depth 4
                                        #         Child Loop BB6_16 Depth 4
                                        #           Child Loop BB6_18 Depth 5
                                        #             Child Loop BB6_20 Depth 6
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 8
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $a0, 248
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.w	$a2, $a0, 28
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	blez	$a2, .LBB6_2
# %bb.4:                                # %.preheader198.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	st.d	$zero, $sp, 224                 # 8-byte Folded Spill
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	ld.w	$t7, $a1, 48
	ld.w	$t1, $a1, 52
	ld.w	$a3, $a1, 44
	ld.w	$s0, $a0, 48
	ld.d	$a2, $a0, 176
	ld.w	$t2, $a0, 52
	ld.w	$a4, $a0, 44
	ld.w	$a5, $a0, 24
	st.d	$a5, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a5, $a2, $a5
	add.d	$a6, $s0, $t2
	addi.d	$a6, $a6, 1
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a7, $a2, $a7
	ld.d	$t0, $a2, 16
	mul.w	$a4, $a4, $a6
	alsl.d	$s3, $a4, $a5, 3
	alsl.d	$s4, $a4, $a7, 3
	alsl.d	$s5, $a4, $t0, 3
	ld.d	$a5, $a2, 40
	ld.d	$a6, $a2, 48
	ld.d	$a2, $a2, 56
	ld.d	$a7, $a1, 176
	alsl.d	$s7, $a4, $a5, 3
	alsl.d	$s8, $a4, $a6, 3
	alsl.d	$ra, $a4, $a2, 3
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a4, $a7, $a2
	st.d	$t1, $sp, 304                   # 8-byte Folded Spill
	add.d	$a2, $t7, $t1
	addi.d	$a5, $a2, 1
	ld.wu	$a2, $a0, 20
	mul.w	$a0, $a3, $a5
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	fld.d	$fa2, $a3, 0
	alsl.d	$s6, $a0, $a4, 3
	addi.w	$a3, $a2, 0
	ld.wu	$a7, $a1, 20
	fmul.d	$fa2, $fa2, $fa2
	frecip.d	$fa2, $fa2
	fmul.d	$fa2, $fs0, $fa2
	addi.d	$t0, $a7, -1
	bstrpick.d	$a0, $a7, 30, 2
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	slli.d	$a0, $t2, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a0, $s0, 1
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	sub.d	$a0, $zero, $s0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	sub.d	$a0, $zero, $t2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$t2, $sp, 296                   # 8-byte Folded Spill
	st.d	$t2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	st.d	$a7, $sp, 208                   # 8-byte Folded Spill
	st.d	$t0, $sp, 200                   # 8-byte Folded Spill
	b	.LBB6_6
	.p2align	4, , 16
.LBB6_5:                                # %._crit_edge205
                                        #   in Loop: Header=BB6_6 Depth=2
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 2
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 2
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a4
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	bge	$a1, $a0, .LBB6_2
.LBB6_6:                                # %.preheader198
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_9 Depth 3
                                        #         Child Loop BB6_24 Depth 4
                                        #         Child Loop BB6_13 Depth 4
                                        #         Child Loop BB6_16 Depth 4
                                        #           Child Loop BB6_18 Depth 5
                                        #             Child Loop BB6_20 Depth 6
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	blez	$a0, .LBB6_5
# %bb.7:                                # %.preheader197.lr.ph
                                        #   in Loop: Header=BB6_6 Depth=2
	move	$t1, $zero
	st.d	$zero, $sp, 320                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ori	$a5, $zero, 2
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	b	.LBB6_9
	.p2align	4, , 16
.LBB6_8:                                #   in Loop: Header=BB6_9 Depth=3
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 2
	addi.w	$a5, $a5, 2
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	addi.d	$t1, $t1, 1
	ld.d	$fp, $sp, 232                   # 8-byte Folded Reload
	add.w	$fp, $fp, $t7
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 240                   # 8-byte Folded Reload
	add.d	$t8, $t8, $a0
	ld.d	$t6, $sp, 248                   # 8-byte Folded Reload
	add.d	$t6, $t6, $a0
	ld.d	$t5, $sp, 256                   # 8-byte Folded Reload
	add.d	$t5, $t5, $a0
	ld.d	$t4, $sp, 264                   # 8-byte Folded Reload
	add.d	$t4, $t4, $a0
	ld.d	$t3, $sp, 272                   # 8-byte Folded Reload
	add.d	$t3, $t3, $a0
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	add.d	$t2, $t2, $a0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	bge	$a1, $a0, .LBB6_5
.LBB6_9:                                # %.preheader197
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_24 Depth 4
                                        #         Child Loop BB6_13 Depth 4
                                        #         Child Loop BB6_16 Depth 4
                                        #           Child Loop BB6_18 Depth 5
                                        #             Child Loop BB6_20 Depth 6
	addi.w	$a0, $a7, 0
	blez	$a0, .LBB6_14
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB6_9 Depth=3
	ori	$a0, $zero, 6
	bgeu	$a7, $a0, .LBB6_21
# %bb.11:                               #   in Loop: Header=BB6_9 Depth=3
	move	$a0, $zero
.LBB6_12:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB6_9 Depth=3
	add.w	$a1, $fp, $a0
	sub.d	$a0, $a7, $a0
	.p2align	4, , 16
.LBB6_13:                               # %scalar.ph
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_6 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a4, $a1, 3
	stx.d	$zero, $s6, $a4
	addi.d	$a0, $a0, -1
	addi.w	$a1, $a1, 1
	bnez	$a0, .LBB6_13
.LBB6_14:                               # %.preheader195.preheader
                                        #   in Loop: Header=BB6_9 Depth=3
	st.d	$fp, $sp, 232                   # 8-byte Folded Spill
	st.d	$t1, $sp, 288                   # 8-byte Folded Spill
	st.d	$t2, $sp, 280                   # 8-byte Folded Spill
	st.d	$t3, $sp, 272                   # 8-byte Folded Spill
	move	$t1, $t3
	st.d	$t4, $sp, 264                   # 8-byte Folded Spill
	st.d	$t5, $sp, 256                   # 8-byte Folded Spill
	st.d	$t6, $sp, 248                   # 8-byte Folded Spill
	move	$t0, $t6
	st.d	$t8, $sp, 240                   # 8-byte Folded Spill
	move	$a7, $t8
	ld.d	$s2, $sp, 224                   # 8-byte Folded Reload
	b	.LBB6_16
	.p2align	4, , 16
.LBB6_15:                               #   in Loop: Header=BB6_16 Depth=4
	addi.w	$s2, $s2, 1
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 328                   # 8-byte Folded Reload
	add.d	$a7, $a7, $a0
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	add.d	$t0, $t0, $a0
	ld.d	$t5, $sp, 344                   # 8-byte Folded Reload
	add.d	$t5, $t5, $a0
	ld.d	$t4, $sp, 352                   # 8-byte Folded Reload
	add.d	$t4, $t4, $a0
	ld.d	$t1, $sp, 360                   # 8-byte Folded Reload
	add.d	$t1, $t1, $a0
	ld.d	$t2, $sp, 368                   # 8-byte Folded Reload
	add.d	$t2, $t2, $a0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	beq	$s2, $a0, .LBB6_8
.LBB6_16:                               # %.preheader195
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_6 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB6_18 Depth 5
                                        #             Child Loop BB6_20 Depth 6
	bstrpick.d	$a1, $s2, 31, 1
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	mul.d	$t6, $a1, $a0
	st.d	$t2, $sp, 368                   # 8-byte Folded Spill
	move	$a1, $t2
	st.d	$t1, $sp, 360                   # 8-byte Folded Spill
	st.d	$t4, $sp, 352                   # 8-byte Folded Spill
	move	$t2, $t4
	st.d	$t5, $sp, 344                   # 8-byte Folded Spill
	st.d	$t0, $sp, 336                   # 8-byte Folded Spill
	st.d	$a7, $sp, 328                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 320                   # 8-byte Folded Reload
	b	.LBB6_18
	.p2align	4, , 16
.LBB6_17:                               # %._crit_edge
                                        #   in Loop: Header=BB6_18 Depth=5
	addi.w	$t4, $t4, 1
	add.d	$a7, $a7, $s0
	add.d	$t0, $t0, $s0
	add.d	$t5, $t5, $s0
	add.d	$t2, $t2, $s0
	add.d	$t1, $t1, $s0
	add.d	$a1, $a1, $s0
	beq	$t4, $a5, .LBB6_15
.LBB6_18:                               # %.preheader
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_6 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        #         Parent Loop BB6_16 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB6_20 Depth 6
	blez	$a3, .LBB6_17
# %bb.19:                               # %.lr.ph201
                                        #   in Loop: Header=BB6_18 Depth=5
	move	$s1, $zero
	bstrpick.d	$a4, $t4, 31, 1
	mul.d	$a4, $a4, $t7
	add.d	$a4, $a4, $t6
	move	$fp, $a2
	.p2align	4, , 16
.LBB6_20:                               #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_6 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        #         Parent Loop BB6_16 Depth=4
                                        #           Parent Loop BB6_18 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	add.w	$t3, $a7, $s1
	bstrpick.d	$a6, $s1, 31, 1
	slli.d	$t8, $t3, 3
	alsl.d	$t3, $t3, $s3, 3
	fldx.d	$fa3, $s3, $t8
	add.w	$a0, $t0, $s1
	slli.d	$a0, $a0, 3
	fldx.d	$fa4, $s3, $a0
	fld.d	$fa5, $t3, -8
	fldx.d	$fa6, $s7, $a0
	fldx.d	$fa7, $s7, $t8
	fsub.d	$fa4, $fa4, $fa3
	fsub.d	$fa5, $fa3, $fa5
	fneg.d	$fa5, $fa5
	fmul.d	$fa5, $fa7, $fa5
	fmadd.d	$fa4, $fa6, $fa4, $fa5
	add.w	$a0, $t5, $s1
	slli.d	$a0, $a0, 3
	fldx.d	$fa5, $s8, $a0
	fldx.d	$fa6, $s3, $a0
	add.w	$a0, $t2, $s1
	slli.d	$a0, $a0, 3
	fldx.d	$fa7, $s3, $a0
	fldx.d	$ft0, $s8, $t8
	fsub.d	$fa6, $fa6, $fa3
	fmadd.d	$fa4, $fa5, $fa6, $fa4
	fsub.d	$fa5, $fa3, $fa7
	fneg.d	$fa6, $ft0
	add.w	$a0, $t1, $s1
	slli.d	$a0, $a0, 3
	fldx.d	$fa7, $s3, $a0
	fldx.d	$ft0, $ra, $a0
	fmadd.d	$fa4, $fa6, $fa5, $fa4
	fldx.d	$fa5, $s5, $t8
	fsub.d	$fa6, $fa7, $fa3
	fmadd.d	$fa4, $ft0, $fa6, $fa4
	add.w	$a0, $a1, $s1
	slli.d	$a0, $a0, 3
	fldx.d	$fa6, $s3, $a0
	fldx.d	$fa7, $ra, $t8
	add.w	$a0, $a4, $a6
	fmul.d	$fa5, $fs1, $fa5
	fsub.d	$fa6, $fa3, $fa6
	fneg.d	$fa7, $fa7
	fnmadd.d	$fa4, $fa7, $fa6, $fa4
	fldx.d	$fa6, $s4, $t8
	slli.d	$a0, $a0, 3
	fldx.d	$fa7, $s6, $a0
	fmul.d	$fa4, $fa2, $fa4
	fmadd.d	$fa3, $fa5, $fa3, $fa4
	fsub.d	$fa3, $fa6, $fa3
	fmadd.d	$fa3, $fa3, $fa1, $fa7
	fstx.d	$fa3, $s6, $a0
	addi.d	$fp, $fp, -1
	addi.w	$s1, $s1, 1
	bnez	$fp, .LBB6_20
	b	.LBB6_17
	.p2align	4, , 16
.LBB6_21:                               # %vector.scevcheck
                                        #   in Loop: Header=BB6_9 Depth=3
	mul.d	$a0, $t7, $t1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	add.w	$a4, $a1, $t0
	move	$a0, $zero
	blt	$a4, $a1, .LBB6_12
# %bb.22:                               # %vector.scevcheck
                                        #   in Loop: Header=BB6_9 Depth=3
	srli.d	$a1, $t0, 32
	bnez	$a1, .LBB6_12
# %bb.23:                               # %vector.body.preheader
                                        #   in Loop: Header=BB6_9 Depth=3
	move	$a0, $fp
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_24:                               # %vector.body
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_6 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$a4, $a0, $s6, 3
	slli.d	$a6, $a0, 3
	vstx	$vr0, $s6, $a6
	vst	$vr0, $a4, 16
	addi.d	$a1, $a1, -4
	addi.w	$a0, $a0, 4
	bnez	$a1, .LBB6_24
# %bb.25:                               # %middle.block
                                        #   in Loop: Header=BB6_9 Depth=3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	move	$a0, $a1
	bne	$a1, $a7, .LBB6_12
	b	.LBB6_14
.LBB6_26:                               # %._crit_edge211
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 160
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a1
	st.d	$a0, $a2, 160
	fld.d	$fs1, $sp, 376                  # 8-byte Folded Reload
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
.Lfunc_end6:
	.size	residual_and_restriction, .Lfunc_end6-residual_and_restriction
                                        # -- End function
	.globl	restriction                     # -- Begin function restriction
	.p2align	5
	.type	restriction,@function
restriction:                            # @restriction
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
	move	$s3, $a3
	move	$s2, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 1600
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	blez	$a1, .LBB7_12
# %bb.1:                                # %.lr.ph110
	move	$a0, $zero
	ld.d	$a2, $s0, 1776
	ori	$a3, $zero, 216
	mul.d	$a3, $fp, $a3
	slli.d	$a4, $s3, 3
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a4, $s2, 3
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	vldi	$vr0, -960
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %._crit_edge107
                                        #   in Loop: Header=BB7_3 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB7_12
.LBB7_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
                                        #       Child Loop BB7_9 Depth 3
                                        #         Child Loop BB7_11 Depth 4
	slli.d	$a6, $a0, 8
	add.d	$a6, $a2, $a6
	ld.d	$a6, $a6, 248
	add.d	$a7, $a6, $a3
	ld.w	$a6, $a7, 244
	blez	$a6, .LBB7_2
# %bb.4:                                # %.preheader102.lr.ph
                                        #   in Loop: Header=BB7_3 Depth=1
	move	$fp, $zero
	move	$t0, $zero
	ld.w	$t8, $a7, 260
	ld.w	$t1, $a7, 264
	ld.w	$t2, $a7, 268
	ld.w	$t3, $a7, 48
	ld.d	$t6, $a7, 176
	ld.w	$t4, $a7, 52
	ld.w	$t5, $a7, 240
	ld.w	$t7, $a7, 44
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$s0, $t6, $a4
	add.d	$t6, $t3, $t4
	ld.d	$s1, $a7, 392
	addi.d	$s2, $t6, 1
	mul.w	$t7, $s2, $t7
	alsl.d	$t7, $t7, $s0, 3
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$s0, $s1, $a4
	add.d	$s2, $t1, $t2
	ld.wu	$s1, $a7, 236
	addi.d	$a7, $s2, 1
	mul.w	$a7, $a7, $t8
	alsl.d	$s2, $a7, $s0, 3
	addi.w	$s3, $s1, 0
	slli.d	$s4, $t4, 1
	slli.d	$s5, $t3, 1
	ori	$s0, $zero, 1
	b	.LBB7_6
	.p2align	4, , 16
.LBB7_5:                                # %._crit_edge105
                                        #   in Loop: Header=BB7_6 Depth=2
	addi.w	$t0, $t0, 1
	add.w	$s0, $s0, $s4
	add.w	$fp, $fp, $t2
	beq	$t0, $a6, .LBB7_2
.LBB7_6:                                # %.preheader102
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_9 Depth 3
                                        #         Child Loop BB7_11 Depth 4
	blez	$t5, .LBB7_5
# %bb.7:                                # %.preheader.lr.ph
                                        #   in Loop: Header=BB7_6 Depth=2
	move	$s7, $zero
	move	$a7, $fp
	move	$s6, $s0
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_8:                                # %._crit_edge
                                        #   in Loop: Header=BB7_9 Depth=3
	addi.w	$s7, $s7, 1
	add.w	$s6, $s6, $s5
	add.w	$a7, $a7, $t1
	beq	$s7, $t5, .LBB7_5
.LBB7_9:                                # %.preheader
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_11 Depth 4
	blez	$s3, .LBB7_8
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB7_9 Depth=3
	move	$t8, $s1
	move	$s8, $a7
	move	$ra, $s6
	.p2align	4, , 16
.LBB7_11:                               #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_6 Depth=2
                                        #       Parent Loop BB7_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$a4, $ra, -1
	slli.d	$a4, $a4, 3
	fldx.d	$fa1, $t7, $a4
	slli.d	$a4, $ra, 3
	fldx.d	$fa2, $t7, $a4
	add.w	$a4, $t3, $ra
	addi.w	$a5, $a4, -1
	slli.d	$a5, $a5, 3
	fldx.d	$fa3, $t7, $a5
	slli.d	$a4, $a4, 3
	fldx.d	$fa4, $t7, $a4
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa4
	add.w	$a4, $t4, $ra
	addi.w	$a5, $a4, -1
	slli.d	$a5, $a5, 3
	fldx.d	$fa2, $t7, $a5
	slli.d	$a4, $a4, 3
	fldx.d	$fa3, $t7, $a4
	add.w	$a4, $t6, $ra
	addi.w	$a5, $a4, -1
	slli.d	$a5, $a5, 3
	fldx.d	$fa4, $t7, $a5
	slli.d	$a4, $a4, 3
	fldx.d	$fa5, $t7, $a4
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa4
	fadd.d	$fa1, $fa1, $fa5
	fmul.d	$fa1, $fa1, $fa0
	slli.d	$a4, $s8, 3
	fstx.d	$fa1, $s2, $a4
	addi.w	$ra, $ra, 2
	addi.d	$t8, $t8, -1
	addi.w	$s8, $s8, 1
	bnez	$t8, .LBB7_11
	b	.LBB7_8
.LBB7_12:                               # %._crit_edge111
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 240
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 240
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
.Lfunc_end7:
	.size	restriction, .Lfunc_end7-restriction
                                        # -- End function
	.globl	restriction_betas               # -- Begin function restriction_betas
	.p2align	5
	.type	restriction_betas,@function
restriction_betas:                      # @restriction_betas
# %bb.0:
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	move	$s2, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 1600
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	blez	$a1, .LBB8_73
# %bb.1:                                # %.lr.ph222
	move	$a1, $zero
	ld.d	$a0, $s0, 1776
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a0, $zero, 216
	mul.d	$a2, $s2, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	mul.d	$a0, $fp, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	vldi	$vr0, -944
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	vreplgr2vr.d	$vr1, $a0
	lu52i.d	$a0, $zero, 1021
	vreplgr2vr.d	$vr2, $a0
	b	.LBB8_3
	.p2align	4, , 16
.LBB8_2:                                # %._crit_edge219
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB8_73
.LBB8_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_6 Depth 2
                                        #       Child Loop BB8_9 Depth 3
                                        #         Child Loop BB8_25 Depth 4
                                        #         Child Loop BB8_13 Depth 4
                                        #     Child Loop BB8_29 Depth 2
                                        #       Child Loop BB8_32 Depth 3
                                        #         Child Loop BB8_48 Depth 4
                                        #         Child Loop BB8_36 Depth 4
                                        #     Child Loop BB8_52 Depth 2
                                        #       Child Loop BB8_55 Depth 3
                                        #         Child Loop BB8_71 Depth 4
                                        #         Child Loop BB8_59 Depth 4
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 8
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a2, $a0, 248
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	ld.w	$a1, $a0, 28
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	blez	$a1, .LBB8_2
# %bb.4:                                # %.preheader200.lr.ph
                                        #   in Loop: Header=BB8_3 Depth=1
	st.d	$zero, $sp, 208                 # 8-byte Folded Spill
	st.d	$zero, $sp, 200                 # 8-byte Folded Spill
	move	$a1, $zero
	ld.w	$t0, $a0, 48
	ld.w	$a4, $a0, 52
	ld.wu	$t2, $a0, 20
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $a2, 176
	ld.w	$t3, $a2, 52
	ld.w	$t8, $a2, 44
	ld.w	$t4, $a0, 24
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a3, $a3, 40
	ld.w	$t5, $a2, 48
	mul.w	$a6, $t3, $t8
	ld.d	$a7, $a0, 176
	alsl.d	$a2, $a6, $a3, 3
	mul.w	$t1, $t5, $t8
	ld.w	$a5, $a0, 44
	st.d	$a7, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $a7, 40
	alsl.d	$a2, $t1, $a2, 3
	alsl.d	$s8, $t8, $a2, 3
	st.d	$a4, $sp, 264                   # 8-byte Folded Spill
	mul.w	$a4, $a4, $a5
	alsl.d	$a2, $a4, $a0, 3
	mul.w	$a7, $t0, $a5
	alsl.d	$a2, $a7, $a2, 3
	alsl.d	$s7, $a5, $a2, 3
	addi.d	$t6, $t2, -1
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	st.d	$a7, $sp, 128                   # 8-byte Folded Spill
	add.d	$a2, $a5, $a7
	st.d	$a4, $sp, 136                   # 8-byte Folded Spill
	add.d	$a2, $a2, $a4
	alsl.d	$a4, $a2, $a0, 3
	st.d	$a4, $sp, 240                   # 8-byte Folded Spill
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	add.d	$a2, $a2, $t2
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	alsl.d	$a0, $a2, $a0, 3
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	slli.d	$a0, $t8, 3
	st.d	$t1, $sp, 144                   # 8-byte Folded Spill
	alsl.d	$a0, $t1, $a0, 3
	st.d	$a6, $sp, 160                   # 8-byte Folded Spill
	alsl.d	$a0, $a6, $a0, 3
	add.d	$fp, $a3, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	alsl.d	$a0, $t2, $a0, 4
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	add.d	$a0, $a3, $a0
	addi.d	$s0, $a0, -8
	vinsgr2vr.w	$vr3, $t5, 0
	vinsgr2vr.w	$vr3, $t5, 1
	vinsgr2vr.w	$vr4, $t3, 0
	vinsgr2vr.w	$vr4, $t3, 1
	vadd.w	$vr5, $vr3, $vr4
	slli.d	$a0, $t3, 1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	slli.d	$a0, $t5, 1
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	add.d	$a2, $t5, $t3
	slli.d	$s2, $t6, 1
	bstrpick.d	$a0, $t2, 30, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	b	.LBB8_6
	.p2align	4, , 16
.LBB8_5:                                # %._crit_edge203
                                        #   in Loop: Header=BB8_6 Depth=2
	addi.w	$a1, $a1, 1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a0
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t3
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB8_27
.LBB8_6:                                # %.preheader200
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_9 Depth 3
                                        #         Child Loop BB8_25 Depth 4
                                        #         Child Loop BB8_13 Depth 4
	addi.w	$s4, $t2, 0
	blez	$t4, .LBB8_5
# %bb.7:                                # %.preheader197.lr.ph
                                        #   in Loop: Header=BB8_6 Depth=2
	move	$a0, $zero
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	mul.d	$a3, $a3, $a1
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	mul.d	$t7, $a3, $a1
	add.d	$s6, $a2, $t7
	add.d	$a3, $t3, $t7
	st.d	$a3, $sp, 272                   # 8-byte Folded Spill
	add.d	$a3, $t5, $t7
	st.d	$a3, $sp, 256                   # 8-byte Folded Spill
	mul.d	$a3, $a1, $t3
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	b	.LBB8_9
	.p2align	4, , 16
.LBB8_8:                                # %._crit_edge
                                        #   in Loop: Header=BB8_9 Depth=3
	addi.w	$a0, $a0, 1
	add.w	$s3, $s3, $t0
	add.d	$a4, $a4, $t5
	beq	$a0, $t4, .LBB8_5
.LBB8_9:                                # %.preheader197
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_25 Depth 4
                                        #         Child Loop BB8_13 Depth 4
	blez	$s4, .LBB8_8
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB8_9 Depth=3
	ori	$a3, $zero, 28
	bgeu	$t2, $a3, .LBB8_14
# %bb.11:                               #   in Loop: Header=BB8_9 Depth=3
	move	$ra, $zero
.LBB8_12:                               # %scalar.ph424.preheader
                                        #   in Loop: Header=BB8_9 Depth=3
	add.d	$a3, $a4, $ra
	slli.w	$s1, $a3, 1
	add.w	$s5, $s3, $ra
	sub.d	$ra, $t2, $ra
	.p2align	4, , 16
.LBB8_13:                               # %scalar.ph424
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_6 Depth=2
                                        #       Parent Loop BB8_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a3, $s1, 3
	fldx.d	$fa6, $s8, $a3
	add.w	$a3, $t5, $s1
	slli.d	$a3, $a3, 3
	fldx.d	$fa7, $s8, $a3
	add.w	$a3, $t3, $s1
	slli.d	$a3, $a3, 3
	fldx.d	$ft0, $s8, $a3
	add.w	$a3, $a2, $s1
	slli.d	$a3, $a3, 3
	fldx.d	$ft1, $s8, $a3
	fadd.d	$fa6, $fa6, $fa7
	fadd.d	$fa6, $fa6, $ft0
	fadd.d	$fa6, $fa6, $ft1
	fmul.d	$fa6, $fa6, $fa0
	slli.d	$a3, $s5, 3
	fstx.d	$fa6, $s7, $a3
	addi.w	$s1, $s1, 2
	addi.d	$ra, $ra, -1
	addi.w	$s5, $s5, 1
	bnez	$ra, .LBB8_13
	b	.LBB8_8
	.p2align	4, , 16
.LBB8_14:                               # %vector.scevcheck371
                                        #   in Loop: Header=BB8_9 Depth=3
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	mul.d	$a3, $a3, $a0
	add.w	$a5, $s6, $a3
	add.w	$a6, $a5, $s2
	move	$ra, $zero
	blt	$a6, $a5, .LBB8_12
# %bb.15:                               # %vector.scevcheck371
                                        #   in Loop: Header=BB8_9 Depth=3
	ld.d	$a6, $sp, 272                   # 8-byte Folded Reload
	add.w	$a7, $a6, $a3
	add.w	$a6, $a7, $s2
	blt	$a6, $a7, .LBB8_12
# %bb.16:                               # %vector.scevcheck371
                                        #   in Loop: Header=BB8_9 Depth=3
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	add.w	$s1, $a6, $a3
	add.w	$a6, $s1, $s2
	blt	$a6, $s1, .LBB8_12
# %bb.17:                               # %vector.scevcheck371
                                        #   in Loop: Header=BB8_9 Depth=3
	mul.d	$a6, $t0, $a0
	ld.d	$t1, $sp, 248                   # 8-byte Folded Reload
	add.w	$a6, $t1, $a6
	add.w	$t1, $a6, $t6
	blt	$t1, $a6, .LBB8_12
# %bb.18:                               # %vector.scevcheck371
                                        #   in Loop: Header=BB8_9 Depth=3
	add.w	$s5, $t7, $a3
	add.w	$a3, $s5, $s2
	blt	$a3, $s5, .LBB8_12
# %bb.19:                               # %vector.scevcheck371
                                        #   in Loop: Header=BB8_9 Depth=3
	srli.d	$a3, $t6, 31
	bnez	$a3, .LBB8_12
# %bb.20:                               # %vector.memcheck384
                                        #   in Loop: Header=BB8_9 Depth=3
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $a3, 3
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a3, $a6, $a3, 3
	alsl.d	$a6, $a5, $fp, 3
	alsl.d	$a5, $a5, $s0, 3
	sltu	$a5, $t1, $a5
	sltu	$a6, $a6, $a3
	and	$a5, $a5, $a6
	move	$ra, $zero
	bnez	$a5, .LBB8_12
# %bb.21:                               # %vector.memcheck384
                                        #   in Loop: Header=BB8_9 Depth=3
	alsl.d	$a5, $a7, $fp, 3
	alsl.d	$a6, $a7, $s0, 3
	sltu	$a6, $t1, $a6
	sltu	$a5, $a5, $a3
	and	$a5, $a6, $a5
	bnez	$a5, .LBB8_12
# %bb.22:                               # %vector.memcheck384
                                        #   in Loop: Header=BB8_9 Depth=3
	alsl.d	$a5, $s1, $fp, 3
	alsl.d	$a6, $s1, $s0, 3
	sltu	$a6, $t1, $a6
	sltu	$a5, $a5, $a3
	and	$a5, $a6, $a5
	bnez	$a5, .LBB8_12
# %bb.23:                               # %vector.memcheck384
                                        #   in Loop: Header=BB8_9 Depth=3
	alsl.d	$a5, $s5, $fp, 3
	alsl.d	$a6, $s5, $s0, 3
	sltu	$a6, $t1, $a6
	sltu	$a3, $a5, $a3
	and	$a3, $a6, $a3
	bnez	$a3, .LBB8_12
# %bb.24:                               # %vector.ph426
                                        #   in Loop: Header=BB8_9 Depth=3
	mul.d	$a3, $a0, $t5
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a5
	vinsgr2vr.w	$vr6, $a3, 0
	vinsgr2vr.w	$vr6, $a3, 1
	move	$ra, $s3
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	vori.b	$vr7, $vr1, 0
	.p2align	4, , 16
.LBB8_25:                               # %vector.body435
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_6 Depth=2
                                        #       Parent Loop BB8_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vadd.w	$vr8, $vr6, $vr7
	vslli.w	$vr8, $vr8, 1
	vshuf4i.w	$vr9, $vr8, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vpickve2gr.d	$a3, $vr9, 0
	slli.d	$a3, $a3, 3
	vpickve2gr.d	$a5, $vr9, 1
	slli.d	$a5, $a5, 3
	fldx.d	$ft1, $s8, $a3
	fldx.d	$ft2, $s8, $a5
	vadd.w	$vr11, $vr8, $vr3
	vshuf4i.w	$vr11, $vr11, 16
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vpickve2gr.d	$a3, $vr11, 0
	slli.d	$a3, $a3, 3
	vpickve2gr.d	$a5, $vr11, 1
	slli.d	$a5, $a5, 3
	fldx.d	$ft3, $s8, $a3
	fldx.d	$ft4, $s8, $a5
	vextrins.d	$vr9, $vr10, 16
	vextrins.d	$vr11, $vr12, 16
	vadd.w	$vr10, $vr8, $vr4
	vshuf4i.w	$vr10, $vr10, 16
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vpickve2gr.d	$a3, $vr10, 0
	slli.d	$a3, $a3, 3
	vpickve2gr.d	$a5, $vr10, 1
	slli.d	$a5, $a5, 3
	fldx.d	$ft2, $s8, $a3
	fldx.d	$ft4, $s8, $a5
	vadd.w	$vr8, $vr8, $vr5
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$a3, $vr8, 0
	slli.d	$a3, $a3, 3
	vpickve2gr.d	$a5, $vr8, 1
	slli.d	$a5, $a5, 3
	fldx.d	$ft0, $s8, $a3
	fldx.d	$ft5, $s8, $a5
	vfadd.d	$vr9, $vr9, $vr11
	vextrins.d	$vr10, $vr12, 16
	vfadd.d	$vr9, $vr9, $vr10
	vextrins.d	$vr8, $vr13, 16
	vfadd.d	$vr8, $vr9, $vr8
	vfmul.d	$vr8, $vr8, $vr2
	slli.d	$a3, $ra, 3
	vstx	$vr8, $s7, $a3
	vaddi.wu	$vr7, $vr7, 2
	addi.d	$s1, $s1, -2
	addi.w	$ra, $ra, 2
	bnez	$s1, .LBB8_25
# %bb.26:                               # %middle.block440
                                        #   in Loop: Header=BB8_9 Depth=3
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	move	$ra, $a3
	beq	$a3, $t2, .LBB8_8
	b	.LBB8_12
	.p2align	4, , 16
.LBB8_27:                               # %._crit_edge205
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 48
	move	$t1, $zero
	move	$s3, $zero
	move	$a4, $zero
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 48
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a0, 3
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	st.d	$t8, $sp, 72                    # 8-byte Folded Spill
	alsl.d	$fp, $t8, $a2, 3
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a1, 3
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$s0, $a3, $a2, 3
	addi.d	$a2, $t3, 1
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a1, 3
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$ra, $a0, $a1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	addi.d	$a2, $a0, -8
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	vinsgr2vr.w	$vr3, $t3, 0
	vinsgr2vr.w	$vr3, $t3, 1
	b	.LBB8_29
	.p2align	4, , 16
.LBB8_28:                               # %._crit_edge210
                                        #   in Loop: Header=BB8_29 Depth=2
	addi.w	$a4, $a4, 1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	add.w	$s3, $s3, $a0
	add.d	$t1, $t1, $t3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	beq	$a4, $a0, .LBB8_50
.LBB8_29:                               # %.preheader199
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_32 Depth 3
                                        #         Child Loop BB8_48 Depth 4
                                        #         Child Loop BB8_36 Depth 4
	blez	$t4, .LBB8_28
# %bb.30:                               # %.preheader196.lr.ph
                                        #   in Loop: Header=BB8_29 Depth=2
	move	$s6, $zero
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a4
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	mul.d	$t7, $a0, $a4
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	add.d	$s1, $a0, $t7
	add.d	$a0, $t3, $t7
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ori	$a0, $t7, 1
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	mul.d	$a0, $a4, $t3
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	move	$a1, $t1
	move	$a3, $s3
	b	.LBB8_32
	.p2align	4, , 16
.LBB8_31:                               # %._crit_edge208
                                        #   in Loop: Header=BB8_32 Depth=3
	addi.w	$s6, $s6, 1
	add.w	$a3, $a3, $t0
	add.d	$a1, $a1, $t5
	beq	$s6, $t4, .LBB8_28
.LBB8_32:                               # %.preheader196
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_29 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_48 Depth 4
                                        #         Child Loop BB8_36 Depth 4
	blez	$s4, .LBB8_31
# %bb.33:                               # %.lr.ph207
                                        #   in Loop: Header=BB8_32 Depth=3
	ori	$a0, $zero, 28
	bgeu	$t2, $a0, .LBB8_37
# %bb.34:                               #   in Loop: Header=BB8_32 Depth=3
	move	$s5, $zero
.LBB8_35:                               # %scalar.ph354.preheader
                                        #   in Loop: Header=BB8_32 Depth=3
	add.d	$a0, $a1, $s5
	slli.w	$s8, $a0, 1
	add.w	$s7, $a3, $s5
	sub.d	$s5, $t2, $s5
	.p2align	4, , 16
.LBB8_36:                               # %scalar.ph354
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_29 Depth=2
                                        #       Parent Loop BB8_32 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a0, $s8, 3
	fldx.d	$fa4, $fp, $a0
	addi.w	$a0, $s8, 1
	slli.d	$a0, $a0, 3
	fldx.d	$fa5, $fp, $a0
	add.w	$a0, $t3, $s8
	slli.d	$a5, $a0, 3
	fldx.d	$fa6, $fp, $a5
	addi.w	$a0, $a0, 1
	slli.d	$a0, $a0, 3
	fldx.d	$fa7, $fp, $a0
	fadd.d	$fa4, $fa4, $fa5
	fadd.d	$fa4, $fa4, $fa6
	fadd.d	$fa4, $fa4, $fa7
	fmul.d	$fa4, $fa4, $fa0
	slli.d	$a0, $s7, 3
	fstx.d	$fa4, $s0, $a0
	addi.w	$s8, $s8, 2
	addi.d	$s5, $s5, -1
	addi.w	$s7, $s7, 1
	bnez	$s5, .LBB8_36
	b	.LBB8_31
	.p2align	4, , 16
.LBB8_37:                               # %vector.scevcheck301
                                        #   in Loop: Header=BB8_32 Depth=3
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	mul.d	$a6, $a0, $s6
	add.w	$a5, $s1, $a6
	add.w	$a0, $a5, $s2
	move	$s5, $zero
	blt	$a0, $a5, .LBB8_35
# %bb.38:                               # %vector.scevcheck301
                                        #   in Loop: Header=BB8_32 Depth=3
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a6
	add.w	$a7, $a0, $s2
	blt	$a7, $a0, .LBB8_35
# %bb.39:                               # %vector.scevcheck301
                                        #   in Loop: Header=BB8_32 Depth=3
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$s8, $a7, $a6
	add.w	$a7, $s8, $s2
	blt	$a7, $s8, .LBB8_35
# %bb.40:                               # %vector.scevcheck301
                                        #   in Loop: Header=BB8_32 Depth=3
	mul.d	$a7, $t0, $s6
	ld.d	$t8, $sp, 248                   # 8-byte Folded Reload
	add.w	$t8, $t8, $a7
	add.w	$a7, $t8, $t6
	blt	$a7, $t8, .LBB8_35
# %bb.41:                               # %vector.scevcheck301
                                        #   in Loop: Header=BB8_32 Depth=3
	add.w	$s7, $t7, $a6
	add.w	$a6, $s7, $s2
	blt	$a6, $s7, .LBB8_35
# %bb.42:                               # %vector.scevcheck301
                                        #   in Loop: Header=BB8_32 Depth=3
	srli.d	$a6, $t6, 31
	bnez	$a6, .LBB8_35
# %bb.43:                               # %vector.memcheck314
                                        #   in Loop: Header=BB8_32 Depth=3
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a7, $t8, $a6, 3
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a6, $t8, $a6, 3
	alsl.d	$t8, $a5, $ra, 3
	alsl.d	$a5, $a5, $a2, 3
	sltu	$a5, $a7, $a5
	sltu	$t8, $t8, $a6
	and	$a5, $a5, $t8
	move	$s5, $zero
	bnez	$a5, .LBB8_35
# %bb.44:                               # %vector.memcheck314
                                        #   in Loop: Header=BB8_32 Depth=3
	alsl.d	$a5, $a0, $ra, 3
	alsl.d	$a0, $a0, $a2, 3
	sltu	$a0, $a7, $a0
	sltu	$a5, $a5, $a6
	and	$a0, $a0, $a5
	bnez	$a0, .LBB8_35
# %bb.45:                               # %vector.memcheck314
                                        #   in Loop: Header=BB8_32 Depth=3
	alsl.d	$a0, $s8, $ra, 3
	alsl.d	$a5, $s8, $a2, 3
	sltu	$a5, $a7, $a5
	sltu	$a0, $a0, $a6
	and	$a0, $a5, $a0
	bnez	$a0, .LBB8_35
# %bb.46:                               # %vector.memcheck314
                                        #   in Loop: Header=BB8_32 Depth=3
	alsl.d	$a0, $s7, $ra, 3
	alsl.d	$a5, $s7, $a2, 3
	sltu	$a5, $a7, $a5
	sltu	$a0, $a0, $a6
	and	$a0, $a5, $a0
	bnez	$a0, .LBB8_35
# %bb.47:                               # %vector.ph356
                                        #   in Loop: Header=BB8_32 Depth=3
	mul.d	$a0, $s6, $t5
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a5
	vinsgr2vr.w	$vr4, $a0, 0
	vinsgr2vr.w	$vr4, $a0, 1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	vreplgr2vr.d	$vr5, $a0
	move	$s5, $a3
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_48:                               # %vector.body363
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_29 Depth=2
                                        #       Parent Loop BB8_32 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vadd.w	$vr6, $vr4, $vr5
	vslli.w	$vr6, $vr6, 1
	vshuf4i.w	$vr7, $vr6, 16
	vslli.d	$vr7, $vr7, 32
	vsrai.d	$vr7, $vr7, 32
	vpickve2gr.d	$a0, $vr7, 0
	slli.d	$a0, $a0, 3
	vpickve2gr.d	$a5, $vr7, 1
	slli.d	$a5, $a5, 3
	fldx.d	$fa7, $fp, $a0
	fldx.d	$ft0, $fp, $a5
	vbitseti.w	$vr9, $vr6, 0
	vshuf4i.w	$vr10, $vr9, 16
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vpickve2gr.d	$a0, $vr10, 0
	slli.d	$a0, $a0, 3
	vpickve2gr.d	$a5, $vr10, 1
	slli.d	$a5, $a5, 3
	fldx.d	$ft2, $fp, $a0
	fldx.d	$ft3, $fp, $a5
	vextrins.d	$vr7, $vr8, 16
	vextrins.d	$vr10, $vr11, 16
	vadd.w	$vr6, $vr6, $vr3
	vshuf4i.w	$vr6, $vr6, 16
	vslli.d	$vr6, $vr6, 32
	vsrai.d	$vr6, $vr6, 32
	vpickve2gr.d	$a0, $vr6, 0
	slli.d	$a0, $a0, 3
	vpickve2gr.d	$a5, $vr6, 1
	slli.d	$a5, $a5, 3
	fldx.d	$fa6, $fp, $a0
	fldx.d	$ft0, $fp, $a5
	vadd.w	$vr9, $vr9, $vr3
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vpickve2gr.d	$a0, $vr9, 0
	slli.d	$a0, $a0, 3
	vpickve2gr.d	$a5, $vr9, 1
	slli.d	$a5, $a5, 3
	fldx.d	$ft1, $fp, $a0
	fldx.d	$ft3, $fp, $a5
	vfadd.d	$vr7, $vr7, $vr10
	vextrins.d	$vr6, $vr8, 16
	vfadd.d	$vr6, $vr7, $vr6
	vextrins.d	$vr9, $vr11, 16
	vfadd.d	$vr6, $vr6, $vr9
	vfmul.d	$vr6, $vr6, $vr2
	slli.d	$a0, $s5, 3
	vstx	$vr6, $s0, $a0
	vaddi.wu	$vr5, $vr5, 2
	addi.d	$s8, $s8, -2
	addi.w	$s5, $s5, 2
	bnez	$s8, .LBB8_48
# %bb.49:                               # %middle.block368
                                        #   in Loop: Header=BB8_32 Depth=3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	move	$s5, $a0
	beq	$a0, $t2, .LBB8_31
	b	.LBB8_35
	.p2align	4, , 16
.LBB8_50:                               # %._crit_edge212
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 56
	move	$t1, $zero
	move	$a3, $zero
	move	$a4, $zero
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 56
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a0, 3
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a2, $a5, $a2, 3
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$fp, $a5, $a2, 3
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a1, 3
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a2, $a5, $a2, 3
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$s0, $a5, $a2, 3
	addi.d	$a2, $t5, 1
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a1, 3
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a2, $a0, $a1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	addi.d	$s7, $a0, -8
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	vinsgr2vr.w	$vr3, $t5, 0
	vinsgr2vr.w	$vr3, $t5, 1
	b	.LBB8_52
	.p2align	4, , 16
.LBB8_51:                               # %._crit_edge217
                                        #   in Loop: Header=BB8_52 Depth=2
	addi.w	$a4, $a4, 1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a0
	add.d	$t1, $t1, $t3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	beq	$a4, $a0, .LBB8_2
.LBB8_52:                               # %.preheader198
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_55 Depth 3
                                        #         Child Loop BB8_71 Depth 4
                                        #         Child Loop BB8_59 Depth 4
	blez	$t4, .LBB8_51
# %bb.53:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB8_52 Depth=2
	move	$ra, $zero
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a4
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	mul.d	$t7, $a0, $a4
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	add.d	$s1, $a0, $t7
	add.d	$a0, $t5, $t7
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ori	$a0, $t7, 1
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	mul.d	$a0, $a4, $t3
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	move	$a1, $t1
	move	$s3, $a3
	b	.LBB8_55
	.p2align	4, , 16
.LBB8_54:                               # %._crit_edge215
                                        #   in Loop: Header=BB8_55 Depth=3
	addi.w	$ra, $ra, 1
	add.w	$s3, $s3, $t0
	add.d	$a1, $a1, $t5
	beq	$ra, $t4, .LBB8_51
.LBB8_55:                               # %.preheader
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_52 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_71 Depth 4
                                        #         Child Loop BB8_59 Depth 4
	blez	$s4, .LBB8_54
# %bb.56:                               # %.lr.ph214
                                        #   in Loop: Header=BB8_55 Depth=3
	ori	$a0, $zero, 28
	bgeu	$t2, $a0, .LBB8_60
# %bb.57:                               #   in Loop: Header=BB8_55 Depth=3
	move	$s8, $zero
.LBB8_58:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB8_55 Depth=3
	add.d	$a0, $a1, $s8
	slli.w	$s6, $a0, 1
	add.w	$s5, $s3, $s8
	sub.d	$s8, $t2, $s8
	.p2align	4, , 16
.LBB8_59:                               # %scalar.ph
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_52 Depth=2
                                        #       Parent Loop BB8_55 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a0, $s6, 3
	fldx.d	$fa4, $fp, $a0
	addi.w	$a0, $s6, 1
	slli.d	$a0, $a0, 3
	fldx.d	$fa5, $fp, $a0
	add.w	$a0, $t5, $s6
	slli.d	$a5, $a0, 3
	fldx.d	$fa6, $fp, $a5
	addi.w	$a0, $a0, 1
	slli.d	$a0, $a0, 3
	fldx.d	$fa7, $fp, $a0
	fadd.d	$fa4, $fa4, $fa5
	fadd.d	$fa4, $fa4, $fa6
	fadd.d	$fa4, $fa4, $fa7
	fmul.d	$fa4, $fa4, $fa0
	slli.d	$a0, $s5, 3
	fstx.d	$fa4, $s0, $a0
	addi.w	$s6, $s6, 2
	addi.d	$s8, $s8, -1
	addi.w	$s5, $s5, 1
	bnez	$s8, .LBB8_59
	b	.LBB8_54
	.p2align	4, , 16
.LBB8_60:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_55 Depth=3
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	mul.d	$a6, $a0, $ra
	add.w	$a5, $s1, $a6
	add.w	$a0, $a5, $s2
	move	$s8, $zero
	blt	$a0, $a5, .LBB8_58
# %bb.61:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_55 Depth=3
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a6
	add.w	$a7, $a0, $s2
	blt	$a7, $a0, .LBB8_58
# %bb.62:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_55 Depth=3
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	add.w	$s6, $a7, $a6
	add.w	$a7, $s6, $s2
	blt	$a7, $s6, .LBB8_58
# %bb.63:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_55 Depth=3
	mul.d	$a7, $t0, $ra
	ld.d	$t8, $sp, 248                   # 8-byte Folded Reload
	add.w	$t8, $t8, $a7
	add.w	$a7, $t8, $t6
	blt	$a7, $t8, .LBB8_58
# %bb.64:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_55 Depth=3
	add.w	$s5, $t7, $a6
	add.w	$a6, $s5, $s2
	blt	$a6, $s5, .LBB8_58
# %bb.65:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_55 Depth=3
	srli.d	$a6, $t6, 31
	bnez	$a6, .LBB8_58
# %bb.66:                               # %vector.memcheck
                                        #   in Loop: Header=BB8_55 Depth=3
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a7, $t8, $a6, 3
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a6, $t8, $a6, 3
	alsl.d	$t8, $a5, $a2, 3
	alsl.d	$a5, $a5, $s7, 3
	sltu	$a5, $a7, $a5
	sltu	$t8, $t8, $a6
	and	$a5, $a5, $t8
	move	$s8, $zero
	bnez	$a5, .LBB8_58
# %bb.67:                               # %vector.memcheck
                                        #   in Loop: Header=BB8_55 Depth=3
	alsl.d	$a5, $a0, $a2, 3
	alsl.d	$a0, $a0, $s7, 3
	sltu	$a0, $a7, $a0
	sltu	$a5, $a5, $a6
	and	$a0, $a0, $a5
	bnez	$a0, .LBB8_58
# %bb.68:                               # %vector.memcheck
                                        #   in Loop: Header=BB8_55 Depth=3
	alsl.d	$a0, $s6, $a2, 3
	alsl.d	$a5, $s6, $s7, 3
	sltu	$a5, $a7, $a5
	sltu	$a0, $a0, $a6
	and	$a0, $a5, $a0
	bnez	$a0, .LBB8_58
# %bb.69:                               # %vector.memcheck
                                        #   in Loop: Header=BB8_55 Depth=3
	alsl.d	$a0, $s5, $a2, 3
	alsl.d	$a5, $s5, $s7, 3
	sltu	$a5, $a7, $a5
	sltu	$a0, $a0, $a6
	and	$a0, $a5, $a0
	bnez	$a0, .LBB8_58
# %bb.70:                               # %vector.ph
                                        #   in Loop: Header=BB8_55 Depth=3
	mul.d	$a0, $ra, $t5
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a5
	vinsgr2vr.w	$vr4, $a0, 0
	vinsgr2vr.w	$vr4, $a0, 1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	vreplgr2vr.d	$vr5, $a0
	move	$s8, $s3
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_71:                               # %vector.body
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_52 Depth=2
                                        #       Parent Loop BB8_55 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vadd.w	$vr6, $vr4, $vr5
	vslli.w	$vr6, $vr6, 1
	vshuf4i.w	$vr7, $vr6, 16
	vslli.d	$vr7, $vr7, 32
	vsrai.d	$vr7, $vr7, 32
	vpickve2gr.d	$a0, $vr7, 0
	slli.d	$a0, $a0, 3
	vpickve2gr.d	$a5, $vr7, 1
	slli.d	$a5, $a5, 3
	fldx.d	$fa7, $fp, $a0
	fldx.d	$ft0, $fp, $a5
	vbitseti.w	$vr9, $vr6, 0
	vshuf4i.w	$vr10, $vr9, 16
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vpickve2gr.d	$a0, $vr10, 0
	slli.d	$a0, $a0, 3
	vpickve2gr.d	$a5, $vr10, 1
	slli.d	$a5, $a5, 3
	fldx.d	$ft2, $fp, $a0
	fldx.d	$ft3, $fp, $a5
	vextrins.d	$vr7, $vr8, 16
	vextrins.d	$vr10, $vr11, 16
	vadd.w	$vr6, $vr6, $vr3
	vshuf4i.w	$vr6, $vr6, 16
	vslli.d	$vr6, $vr6, 32
	vsrai.d	$vr6, $vr6, 32
	vpickve2gr.d	$a0, $vr6, 0
	slli.d	$a0, $a0, 3
	vpickve2gr.d	$a5, $vr6, 1
	slli.d	$a5, $a5, 3
	fldx.d	$fa6, $fp, $a0
	fldx.d	$ft0, $fp, $a5
	vadd.w	$vr9, $vr9, $vr3
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vpickve2gr.d	$a0, $vr9, 0
	slli.d	$a0, $a0, 3
	vpickve2gr.d	$a5, $vr9, 1
	slli.d	$a5, $a5, 3
	fldx.d	$ft1, $fp, $a0
	fldx.d	$ft3, $fp, $a5
	vfadd.d	$vr7, $vr7, $vr10
	vextrins.d	$vr6, $vr8, 16
	vfadd.d	$vr6, $vr7, $vr6
	vextrins.d	$vr9, $vr11, 16
	vfadd.d	$vr6, $vr6, $vr9
	vfmul.d	$vr6, $vr6, $vr2
	slli.d	$a0, $s8, 3
	vstx	$vr6, $s0, $a0
	vaddi.wu	$vr5, $vr5, 2
	addi.d	$s6, $s6, -2
	addi.w	$s8, $s8, 2
	bnez	$s6, .LBB8_71
# %bb.72:                               # %middle.block
                                        #   in Loop: Header=BB8_55 Depth=3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	move	$s8, $a0
	beq	$a0, $t2, .LBB8_54
	b	.LBB8_58
.LBB8_73:                               # %._crit_edge223
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 240
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 240
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.Lfunc_end8:
	.size	restriction_betas, .Lfunc_end8-restriction_betas
                                        # -- End function
	.globl	interpolation_constant          # -- Begin function interpolation_constant
	.p2align	5
	.type	interpolation_constant,@function
interpolation_constant:                 # @interpolation_constant
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
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	move	$s2, $a3
	move	$s3, $a2
	fmov.d	$fs0, $fa0
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 1600
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	blez	$a1, .LBB9_12
# %bb.1:                                # %.lr.ph90
	move	$a0, $zero
	ld.d	$a2, $s0, 1776
	ori	$a3, $zero, 216
	mul.d	$a3, $fp, $a3
	slli.d	$a4, $s3, 3
	slli.d	$a5, $s2, 3
	b	.LBB9_3
	.p2align	4, , 16
.LBB9_2:                                # %._crit_edge87
                                        #   in Loop: Header=BB9_3 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB9_12
.LBB9_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
                                        #       Child Loop BB9_9 Depth 3
                                        #         Child Loop BB9_11 Depth 4
	slli.d	$a6, $a0, 8
	add.d	$a6, $a2, $a6
	ld.d	$a6, $a6, 248
	add.d	$t7, $a6, $a3
	ld.w	$a6, $t7, 28
	blez	$a6, .LBB9_2
# %bb.4:                                # %.preheader82.lr.ph
                                        #   in Loop: Header=BB9_3 Depth=1
	move	$a7, $zero
	move	$t0, $zero
	ld.w	$t8, $t7, 260
	ld.w	$t1, $t7, 264
	ld.w	$t2, $t7, 48
	ld.d	$t5, $t7, 176
	ld.w	$t3, $t7, 52
	ld.w	$t4, $t7, 268
	ld.w	$t6, $t7, 44
	ldx.d	$s2, $t5, $a4
	add.d	$t5, $t2, $t3
	addi.d	$t5, $t5, 1
	ld.d	$s3, $t7, 392
	mul.w	$t6, $t5, $t6
	ld.w	$t5, $t7, 24
	alsl.d	$t6, $t6, $s2, 3
	ldx.d	$s2, $s3, $a5
	add.d	$s3, $t1, $t4
	ld.wu	$t7, $t7, 20
	addi.d	$s3, $s3, 1
	mul.w	$t8, $s3, $t8
	alsl.d	$t8, $t8, $s2, 3
	addi.w	$s2, $t7, 0
	b	.LBB9_6
	.p2align	4, , 16
.LBB9_5:                                # %._crit_edge85
                                        #   in Loop: Header=BB9_6 Depth=2
	addi.w	$t0, $t0, 1
	add.d	$a7, $a7, $t3
	beq	$t0, $a6, .LBB9_2
.LBB9_6:                                # %.preheader82
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_9 Depth 3
                                        #         Child Loop BB9_11 Depth 4
	blez	$t5, .LBB9_5
# %bb.7:                                # %.preheader.lr.ph
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$s3, $zero
	bstrpick.d	$s4, $t0, 31, 1
	mul.d	$s4, $s4, $t4
	move	$s5, $a7
	b	.LBB9_9
	.p2align	4, , 16
.LBB9_8:                                # %._crit_edge
                                        #   in Loop: Header=BB9_9 Depth=3
	addi.w	$s3, $s3, 1
	add.d	$s5, $s5, $t2
	beq	$s3, $t5, .LBB9_5
.LBB9_9:                                # %.preheader
                                        #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_11 Depth 4
	blez	$s2, .LBB9_8
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB9_9 Depth=3
	move	$s6, $zero
	bstrpick.d	$s7, $s3, 31, 1
	mul.d	$s7, $s7, $t1
	add.d	$s7, $s7, $s4
	move	$s8, $t7
	.p2align	4, , 16
.LBB9_11:                               #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_6 Depth=2
                                        #       Parent Loop BB9_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$ra, $s5, $s6
	bstrpick.d	$s1, $s6, 31, 1
	add.w	$s1, $s7, $s1
	slli.d	$ra, $ra, 3
	fldx.d	$fa0, $t6, $ra
	slli.d	$s1, $s1, 3
	fldx.d	$fa1, $t8, $s1
	fmadd.d	$fa0, $fs0, $fa0, $fa1
	fstx.d	$fa0, $t6, $ra
	addi.d	$s8, $s8, -1
	addi.w	$s6, $s6, 1
	bnez	$s8, .LBB9_11
	b	.LBB9_8
.LBB9_12:                               # %._crit_edge91
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $fp, $s0, 3
	ld.d	$a2, $a1, 320
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 320
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
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
.Lfunc_end9:
	.size	interpolation_constant, .Lfunc_end9-interpolation_constant
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function interpolation_linear
.LCPI10_0:
	.dword	0xbfb8000000000000              # double -0.09375
.LCPI10_1:
	.dword	0x3fec200000000000              # double 0.87890625
.LCPI10_2:
	.dword	0x3fea5e0000000000              # double 0.823974609375
	.text
	.globl	interpolation_linear
	.p2align	5
	.type	interpolation_linear,@function
interpolation_linear:                   # @interpolation_linear
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 96                   # 8-byte Folded Spill
	move	$s2, $a3
	move	$s3, $a2
	fmov.d	$fs0, $fa0
	move	$fp, $a0
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	addi.w	$s4, $a1, 1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 1600
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	blez	$a1, .LBB10_12
# %bb.1:                                # %.lr.ph286
	move	$a2, $zero
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 1776
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$a0, $zero, 216
	mul.d	$a1, $s4, $a0
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a0, $s3, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI10_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI10_0)
	slli.d	$a0, $s2, 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	vldi	$vr1, -956
	vldi	$vr2, -914
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_2:                               # %._crit_edge283
                                        #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beq	$a2, $a0, .LBB10_12
.LBB10_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_6 Depth 2
                                        #       Child Loop BB10_9 Depth 3
                                        #         Child Loop BB10_11 Depth 4
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a0, $a2, 8
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $a0, 248
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.w	$a2, $a0, 28
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	blez	$a2, .LBB10_2
# %bb.4:                                # %.preheader278.lr.ph
                                        #   in Loop: Header=BB10_3 Depth=1
	move	$t0, $zero
	move	$t1, $zero
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	ld.w	$a2, $a1, 44
	ld.w	$t2, $a1, 48
	ld.w	$t3, $a0, 48
	ld.d	$a3, $a0, 176
	ld.w	$t4, $a0, 52
	ld.w	$t5, $a1, 52
	ld.w	$a4, $a0, 44
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a3, $a3, $a5
	add.d	$a5, $t3, $t4
	addi.d	$a5, $a5, 1
	ld.d	$a1, $a1, 176
	mul.w	$a4, $a5, $a4
	ld.w	$t6, $a0, 24
	alsl.d	$t7, $a4, $a3, 3
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a3
	add.d	$a3, $t2, $t5
	ld.wu	$t8, $a0, 20
	addi.d	$a0, $a3, 1
	mul.w	$a0, $a0, $a2
	alsl.d	$s2, $a0, $a1, 3
	addi.w	$s3, $t8, 0
	b	.LBB10_6
	.p2align	4, , 16
.LBB10_5:                               # %._crit_edge281
                                        #   in Loop: Header=BB10_6 Depth=2
	addi.w	$t1, $t1, 1
	add.d	$t0, $t0, $t4
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beq	$t1, $a0, .LBB10_2
.LBB10_6:                               # %.preheader278
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_9 Depth 3
                                        #         Child Loop BB10_11 Depth 4
	blez	$t6, .LBB10_5
# %bb.7:                                # %.preheader.lr.ph
                                        #   in Loop: Header=BB10_6 Depth=2
	move	$s4, $zero
	bstrpick.d	$a0, $t1, 31, 1
	andi	$a1, $t1, 1
	sltui	$a1, $a1, 1
	mul.d	$s5, $a0, $t5
	movgr2cf	$fcc0, $a1
	fsel	$fa3, $fa0, $fa1, $fcc0
	fsel	$fa4, $fa1, $fa0, $fcc0
	fmul.d	$fa5, $fa3, $fa2
	fmul.d	$fa6, $fa5, $fa2
	fmul.d	$fa7, $fa4, $fa2
	fmul.d	$ft0, $fa7, $fa2
	move	$s6, $t0
	b	.LBB10_9
	.p2align	4, , 16
.LBB10_8:                               # %._crit_edge
                                        #   in Loop: Header=BB10_9 Depth=3
	addi.w	$s4, $s4, 1
	add.d	$s6, $s6, $t3
	beq	$s4, $t6, .LBB10_5
.LBB10_9:                               # %.preheader
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_11 Depth 4
	blez	$s3, .LBB10_8
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB10_9 Depth=3
	move	$s7, $zero
	bstrpick.d	$a0, $s4, 31, 1
	mul.d	$a0, $a0, $t2
	andi	$a1, $s4, 1
	sltui	$a1, $a1, 1
	add.d	$s8, $a0, $s5
	movgr2cf	$fcc0, $a1
	fsel	$ft9, $fa0, $fa1, $fcc0
	fsel	$ft11, $fa1, $fa0, $fcc0
	fmul.d	$ft1, $fa3, $ft9
	fmul.d	$ft2, $ft1, $fa2
	fmul.d	$ft3, $fa3, $ft11
	fmul.d	$ft4, $ft3, $fa2
	fmul.d	$ft5, $ft9, $fa2
	fmul.d	$ft6, $ft5, $fa2
	fmul.d	$ft7, $ft11, $fa2
	fmul.d	$ft8, $ft7, $fa2
	fmul.d	$ft9, $fa4, $ft9
	fmul.d	$ft10, $ft9, $fa2
	fmul.d	$ft11, $fa4, $ft11
	fmul.d	$ft12, $ft11, $fa2
	move	$ra, $t8
	.p2align	4, , 16
.LBB10_11:                              #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_6 Depth=2
                                        #       Parent Loop BB10_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$a0, $s6, $s7
	bstrpick.d	$a1, $s7, 31, 1
	andi	$a2, $s7, 1
	sltui	$a2, $a2, 1
	add.w	$fp, $s8, $a1
	movgr2cf	$fcc0, $a2
	fsel	$ft14, $fa0, $fa1, $fcc0
	fsel	$ft13, $fa1, $fa0, $fcc0
	slli.d	$s1, $a0, 3
	fldx.d	$ft15, $t7, $s1
	addi.w	$s0, $fp, -1
	sub.w	$a5, $s0, $t2
	sub.w	$a0, $a5, $t5
	slli.d	$a0, $a0, 3
	fldx.d	$fs1, $s2, $a0
	sub.w	$a6, $fp, $t2
	sub.w	$a0, $a6, $t5
	slli.d	$a0, $a0, 3
	fldx.d	$fs2, $s2, $a0
	fmul.d	$fs3, $ft1, $ft14
	fmul.d	$fs1, $fs3, $fs1
	fmadd.d	$ft15, $fs0, $ft15, $fs1
	fmadd.d	$ft15, $ft2, $fs2, $ft15
	fmul.d	$fs1, $ft1, $ft13
	addi.w	$a3, $fp, 1
	sub.w	$a4, $a3, $t2
	sub.w	$a0, $a4, $t5
	slli.d	$a0, $a0, 3
	fldx.d	$fs2, $s2, $a0
	sub.w	$a0, $s0, $t5
	slli.d	$a0, $a0, 3
	fldx.d	$fs3, $s2, $a0
	sub.w	$a0, $fp, $t5
	slli.d	$a0, $a0, 3
	fldx.d	$fs4, $s2, $a0
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	fmul.d	$fs1, $fa5, $ft14
	fmadd.d	$ft15, $fs1, $fs3, $ft15
	fmadd.d	$ft15, $fa6, $fs4, $ft15
	fmul.d	$fs1, $fa5, $ft13
	sub.w	$a0, $a3, $t5
	slli.d	$a0, $a0, 3
	fldx.d	$fs2, $s2, $a0
	add.w	$a2, $s0, $t2
	sub.w	$a0, $a2, $t5
	slli.d	$a0, $a0, 3
	fldx.d	$fs3, $s2, $a0
	add.w	$a1, $fp, $t2
	sub.w	$a0, $a1, $t5
	slli.d	$a0, $a0, 3
	fldx.d	$fs4, $s2, $a0
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	fmul.d	$fs1, $ft3, $ft14
	fmadd.d	$ft15, $fs1, $fs3, $ft15
	fmadd.d	$ft15, $ft4, $fs4, $ft15
	add.w	$a0, $a3, $t2
	sub.w	$a7, $a0, $t5
	slli.d	$a7, $a7, 3
	fldx.d	$fs1, $s2, $a7
	slli.d	$a7, $a5, 3
	fldx.d	$fs2, $s2, $a7
	fmul.d	$fs3, $ft3, $ft13
	fmadd.d	$ft15, $fs3, $fs1, $ft15
	fmul.d	$fs1, $ft5, $ft14
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	slli.d	$a7, $a6, 3
	fldx.d	$fs1, $s2, $a7
	slli.d	$a7, $a4, 3
	fldx.d	$fs2, $s2, $a7
	pcalau12i	$a7, %pc_hi20(.LCPI10_1)
	fld.d	$fs3, $a7, %pc_lo12(.LCPI10_1)
	fmadd.d	$ft15, $ft6, $fs1, $ft15
	fmul.d	$fs1, $ft5, $ft13
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	fmul.d	$fs1, $ft14, $fs3
	slli.d	$a7, $s0, 3
	fldx.d	$fs2, $s2, $a7
	slli.d	$a7, $fp, 3
	fldx.d	$fs4, $s2, $a7
	pcalau12i	$a7, %pc_hi20(.LCPI10_2)
	fld.d	$fs5, $a7, %pc_lo12(.LCPI10_2)
	slli.d	$a7, $a3, 3
	fldx.d	$fs6, $s2, $a7
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	fmadd.d	$ft15, $fs4, $fs5, $ft15
	fmul.d	$fs1, $ft13, $fs3
	fmadd.d	$ft15, $fs1, $fs6, $ft15
	fmul.d	$fs1, $ft7, $ft14
	slli.d	$a7, $a2, 3
	fldx.d	$fs2, $s2, $a7
	slli.d	$a7, $a1, 3
	fldx.d	$fs3, $s2, $a7
	slli.d	$a7, $a0, 3
	fldx.d	$fs4, $s2, $a7
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	fmadd.d	$ft15, $ft8, $fs3, $ft15
	fmul.d	$fs1, $ft7, $ft13
	fmadd.d	$ft15, $fs1, $fs4, $ft15
	fmul.d	$fs1, $ft9, $ft14
	add.w	$a5, $a5, $t5
	slli.d	$a5, $a5, 3
	fldx.d	$fs2, $s2, $a5
	add.w	$a5, $a6, $t5
	slli.d	$a5, $a5, 3
	fldx.d	$fs3, $s2, $a5
	add.w	$a4, $a4, $t5
	slli.d	$a4, $a4, 3
	fldx.d	$fs4, $s2, $a4
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	fmadd.d	$ft15, $ft10, $fs3, $ft15
	fmul.d	$fs1, $ft9, $ft13
	fmadd.d	$ft15, $fs1, $fs4, $ft15
	fmul.d	$fs1, $fa7, $ft14
	add.w	$a4, $s0, $t5
	slli.d	$a4, $a4, 3
	fldx.d	$fs2, $s2, $a4
	add.w	$a4, $fp, $t5
	slli.d	$a4, $a4, 3
	fldx.d	$fs3, $s2, $a4
	add.w	$a3, $a3, $t5
	slli.d	$a3, $a3, 3
	fldx.d	$fs4, $s2, $a3
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	fmadd.d	$ft15, $ft0, $fs3, $ft15
	fmul.d	$fs1, $fa7, $ft13
	fmadd.d	$ft15, $fs1, $fs4, $ft15
	fmul.d	$ft14, $ft11, $ft14
	add.w	$a2, $a2, $t5
	slli.d	$a2, $a2, 3
	fldx.d	$fs1, $s2, $a2
	add.w	$a1, $a1, $t5
	slli.d	$a1, $a1, 3
	fldx.d	$fs2, $s2, $a1
	add.w	$a0, $a0, $t5
	slli.d	$a0, $a0, 3
	fldx.d	$fs3, $s2, $a0
	fmadd.d	$ft14, $ft14, $fs1, $ft15
	fmadd.d	$ft14, $ft12, $fs2, $ft14
	fmul.d	$ft13, $ft11, $ft13
	fmadd.d	$ft13, $ft13, $fs3, $ft14
	fstx.d	$ft13, $t7, $s1
	addi.d	$ra, $ra, -1
	addi.w	$s7, $s7, 1
	bnez	$ra, .LBB10_11
	b	.LBB10_8
.LBB10_12:                              # %._crit_edge287
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 320
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 320
	fld.d	$fs6, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end10:
	.size	interpolation_linear, .Lfunc_end10-interpolation_linear
                                        # -- End function
	.globl	zero_grid                       # -- Begin function zero_grid
	.p2align	5
	.type	zero_grid,@function
zero_grid:                              # @zero_grid
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
	move	$s2, $a2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 1600
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	blez	$a1, .LBB11_17
# %bb.1:                                # %.lr.ph69
	move	$a0, $zero
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 1776
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ori	$a1, $zero, 216
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a1, $a2, $a1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a1, $s2, 3
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$a5, $zero, 3
	vrepli.b	$vr0, 0
	b	.LBB11_3
	.p2align	4, , 16
.LBB11_2:                               # %._crit_edge66
                                        #   in Loop: Header=BB11_3 Depth=1
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB11_17
.LBB11_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_6 Depth 2
                                        #       Child Loop BB11_9 Depth 3
                                        #         Child Loop BB11_13 Depth 4
                                        #         Child Loop BB11_16 Depth 4
	slli.d	$a1, $a0, 8
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	ld.d	$a1, $a1, 248
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.d	$t3, $a1, $a2
	ld.w	$a6, $t3, 44
	ld.w	$a1, $t3, 28
	sub.w	$s7, $zero, $a6
	add.w	$a7, $a1, $a6
	bge	$s7, $a7, .LBB11_2
# %bb.4:                                # %.preheader61.lr.ph
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.w	$t0, $t3, 48
	ld.d	$a1, $t3, 176
	ld.w	$t1, $t3, 52
	move	$t2, $zero
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	add.d	$a4, $t0, $t1
	addi.d	$a4, $a4, 1
	ld.w	$t4, $t3, 24
	ld.w	$t7, $t3, 20
	mul.w	$a4, $a6, $a4
	alsl.d	$t3, $a4, $a1, 3
	add.w	$t4, $t4, $a6
	add.w	$t5, $t7, $a6
	bstrpick.d	$t6, $s7, 31, 0
	alsl.d	$a1, $a6, $t7, 1
	addi.w	$t7, $a1, -1
	nor	$a1, $t0, $zero
	sub.d	$a1, $a1, $t1
	mul.w	$fp, $a6, $a1
	bstrpick.d	$a1, $t7, 31, 0
	addi.d	$s2, $a1, 1
	bstrpick.d	$a1, $s2, 32, 2
	slli.d	$s3, $a1, 2
	alsl.d	$s4, $a1, $t6, 2
	add.d	$a1, $t1, $t0
	sub.d	$a1, $zero, $a1
	mul.d	$s1, $a6, $a1
	move	$t8, $fp
	move	$s0, $s7
	b	.LBB11_6
	.p2align	4, , 16
.LBB11_5:                               # %._crit_edge64
                                        #   in Loop: Header=BB11_6 Depth=2
	addi.w	$s0, $s0, 1
	addi.d	$t2, $t2, 1
	add.w	$t8, $t8, $t1
	add.d	$s1, $s1, $t1
	beq	$s0, $a7, .LBB11_2
.LBB11_6:                               # %.preheader61
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_9 Depth 3
                                        #         Child Loop BB11_13 Depth 4
                                        #         Child Loop BB11_16 Depth 4
	bge	$s7, $t4, .LBB11_5
# %bb.7:                                # %.preheader.lr.ph
                                        #   in Loop: Header=BB11_6 Depth=2
	move	$s8, $zero
	mul.d	$a1, $t1, $t2
	add.d	$ra, $fp, $a1
	move	$s5, $s1
	move	$s6, $t8
	move	$a6, $s7
	b	.LBB11_9
	.p2align	4, , 16
.LBB11_8:                               # %._crit_edge
                                        #   in Loop: Header=BB11_9 Depth=3
	addi.w	$a6, $a6, 1
	addi.d	$s8, $s8, 1
	add.w	$s6, $s6, $t0
	add.d	$s5, $s5, $t0
	beq	$a6, $t4, .LBB11_5
.LBB11_9:                               # %.preheader
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB11_13 Depth 4
                                        #         Child Loop BB11_16 Depth 4
	bge	$s7, $t5, .LBB11_8
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB11_9 Depth=3
	move	$a1, $t6
	bltu	$t7, $a5, .LBB11_15
# %bb.11:                               # %.lr.ph
                                        #   in Loop: Header=BB11_9 Depth=3
	mul.d	$a1, $t0, $s8
	add.w	$a4, $ra, $a1
	add.w	$a2, $a4, $t7
	move	$a1, $t6
	blt	$a2, $a4, .LBB11_15
# %bb.12:                               # %vector.body.preheader
                                        #   in Loop: Header=BB11_9 Depth=3
	move	$a4, $s3
	move	$a1, $s6
	.p2align	4, , 16
.LBB11_13:                              # %vector.body
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_6 Depth=2
                                        #       Parent Loop BB11_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$a2, $a1, $t3, 3
	slli.d	$a3, $a1, 3
	vstx	$vr0, $t3, $a3
	vst	$vr0, $a2, 16
	addi.d	$a4, $a4, -4
	addi.w	$a1, $a1, 4
	bnez	$a4, .LBB11_13
# %bb.14:                               # %middle.block
                                        #   in Loop: Header=BB11_9 Depth=3
	move	$a1, $s4
	beq	$s2, $s3, .LBB11_8
.LBB11_15:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB11_9 Depth=3
	add.w	$a4, $s5, $a1
	sub.d	$a1, $t5, $a1
	.p2align	4, , 16
.LBB11_16:                              # %scalar.ph
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_6 Depth=2
                                        #       Parent Loop BB11_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a2, $a4, 3
	stx.d	$zero, $t3, $a2
	addi.w	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	bnez	$a1, .LBB11_16
	b	.LBB11_8
.LBB11_17:                              # %._crit_edge70
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 960
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
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
.Lfunc_end11:
	.size	zero_grid, .Lfunc_end11-zero_grid
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function initialize_grid_to_scalar
.LCPI12_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	initialize_grid_to_scalar
	.p2align	5
	.type	initialize_grid_to_scalar,@function
initialize_grid_to_scalar:              # @initialize_grid_to_scalar
# %bb.0:
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	move	$s2, $a2
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	vld	$vr17, $sp, 16                  # 16-byte Folded Reload
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 1600
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	blez	$a1, .LBB12_17
# %bb.1:                                # %.lr.ph86
	move	$a2, $zero
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 1776
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	vreplvei.d	$vr0, $vr17, 0
	ori	$a0, $zero, 216
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a0, $s2, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI12_0)
	vld	$vr1, $a0, %pc_lo12(.LCPI12_0)
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr2, $a0
	movgr2fr.d	$fa3, $zero
	vrepli.b	$vr4, -1
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_2:                               # %._crit_edge83
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beq	$a2, $a0, .LBB12_17
.LBB12_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_6 Depth 2
                                        #       Child Loop BB12_9 Depth 3
                                        #         Child Loop BB12_13 Depth 4
                                        #         Child Loop BB12_16 Depth 4
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a0, $a2, 8
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 248
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	ld.w	$a2, $a1, 44
	ld.w	$a0, $a1, 28
	sub.w	$ra, $zero, $a2
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	add.w	$a0, $a0, $a2
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	bge	$ra, $a0, .LBB12_2
# %bb.4:                                # %.preheader78.lr.ph
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.w	$t1, $a1, 48
	ld.d	$a0, $a1, 176
	ld.w	$a4, $a1, 52
	move	$t3, $zero
	ld.w	$t4, $a1, 24
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a3
	add.d	$a3, $t1, $a4
	addi.d	$a3, $a3, 1
	ld.w	$t5, $a1, 20
	mul.w	$a1, $a2, $a3
	alsl.d	$t6, $a1, $a0, 3
	add.w	$t7, $t4, $a2
	add.w	$t8, $t5, $a2
	alsl.d	$a0, $a2, $t5, 1
	addi.w	$s2, $a0, -1
	nor	$a0, $t1, $zero
	sub.d	$a0, $a0, $a4
	mul.w	$a3, $a2, $a0
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s4, $a0, 1
	bstrpick.d	$a1, $s4, 32, 2
	slli.d	$a0, $a1, 2
	alsl.d	$s6, $a1, $ra, 2
	vreplgr2vr.d	$vr5, $t5
	vreplgr2vr.d	$vr6, $ra
	vadd.d	$vr6, $vr6, $vr1
	vinsgr2vr.w	$vr7, $ra, 0
	vinsgr2vr.w	$vr7, $ra, 1
	vadd.w	$vr7, $vr7, $vr2
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	add.d	$a1, $a4, $t1
	sub.d	$a1, $zero, $a1
	mul.d	$a4, $a2, $a1
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	move	$a1, $a3
	move	$a2, $ra
	b	.LBB12_6
	.p2align	4, , 16
.LBB12_5:                               # %._crit_edge81
                                        #   in Loop: Header=BB12_6 Depth=2
	addi.w	$a2, $a2, 1
	addi.d	$t3, $t3, 1
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a3
	add.d	$a4, $a4, $a3
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB12_2
.LBB12_6:                               # %.preheader78
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_9 Depth 3
                                        #         Child Loop BB12_13 Depth 4
                                        #         Child Loop BB12_16 Depth 4
	bge	$ra, $t7, .LBB12_5
# %bb.7:                                # %.preheader.lr.ph
                                        #   in Loop: Header=BB12_6 Depth=2
	move	$s1, $zero
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	mul.d	$a3, $a3, $t3
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	add.d	$fp, $a5, $a3
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	slt	$s0, $a2, $a3
	vreplgr2vr.d	$vr8, $s0
	move	$s7, $a4
	move	$s3, $a1
	move	$a7, $ra
	b	.LBB12_9
	.p2align	4, , 16
.LBB12_8:                               # %._crit_edge
                                        #   in Loop: Header=BB12_9 Depth=3
	addi.w	$a7, $a7, 1
	addi.d	$s1, $s1, 1
	add.w	$s3, $s3, $t1
	add.d	$s7, $s7, $t1
	beq	$a7, $t7, .LBB12_5
.LBB12_9:                               # %.preheader
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_13 Depth 4
                                        #         Child Loop BB12_16 Depth 4
	bge	$ra, $t8, .LBB12_8
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB12_9 Depth=3
	or	$a3, $a7, $a2
	move	$s5, $ra
	ori	$a5, $zero, 3
	bltu	$s2, $a5, .LBB12_15
# %bb.11:                               # %.lr.ph
                                        #   in Loop: Header=BB12_9 Depth=3
	mul.d	$s5, $t1, $s1
	add.w	$s8, $fp, $s5
	add.w	$a6, $s8, $s2
	move	$s5, $ra
	blt	$a6, $s8, .LBB12_15
# %bb.12:                               # %vector.ph
                                        #   in Loop: Header=BB12_9 Depth=3
	slt	$a6, $a7, $t4
	vinsgr2vr.w	$vr9, $a3, 0
	vinsgr2vr.w	$vr9, $a3, 1
	vreplgr2vr.d	$vr10, $a6
	move	$s5, $a0
	move	$s8, $s3
	vori.b	$vr11, $vr6, 0
	vori.b	$vr12, $vr7, 0
	.p2align	4, , 16
.LBB12_13:                              # %vector.body
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_6 Depth=2
                                        #       Parent Loop BB12_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vaddi.du	$vr13, $vr11, 2
	vaddi.wu	$vr14, $vr12, 2
	vor.v	$vr15, $vr9, $vr12
	vor.v	$vr14, $vr9, $vr14
	vslt.w	$vr15, $vr4, $vr15
	vshuf4i.w	$vr15, $vr15, 16
	vslt.w	$vr14, $vr4, $vr14
	vshuf4i.w	$vr14, $vr14, 16
	vslt.d	$vr16, $vr11, $vr5
	vslt.d	$vr13, $vr13, $vr5
	vand.v	$vr15, $vr15, $vr16
	vand.v	$vr13, $vr14, $vr13
	vand.v	$vr14, $vr15, $vr10
	vand.v	$vr13, $vr13, $vr10
	vand.v	$vr14, $vr8, $vr14
	vslli.d	$vr14, $vr14, 63
	vsrai.d	$vr14, $vr14, 63
	vand.v	$vr13, $vr8, $vr13
	vslli.d	$vr13, $vr13, 63
	vsrai.d	$vr13, $vr13, 63
	vand.v	$vr14, $vr14, $vr0
	vand.v	$vr13, $vr13, $vr0
	alsl.d	$a6, $s8, $t6, 3
	slli.d	$t0, $s8, 3
	vstx	$vr14, $t6, $t0
	vst	$vr13, $a6, 16
	vaddi.du	$vr11, $vr11, 4
	vaddi.wu	$vr12, $vr12, 4
	addi.d	$s5, $s5, -4
	addi.w	$s8, $s8, 4
	bnez	$s5, .LBB12_13
# %bb.14:                               # %middle.block
                                        #   in Loop: Header=BB12_9 Depth=3
	move	$s5, $s6
	beq	$s4, $a0, .LBB12_8
.LBB12_15:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB12_9 Depth=3
	move	$s8, $s5
	.p2align	4, , 16
.LBB12_16:                              # %scalar.ph
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_6 Depth=2
                                        #       Parent Loop BB12_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slt	$a6, $a7, $t4
	add.w	$t0, $s7, $s5
	or	$t2, $a3, $s5
	addi.w	$t2, $t2, 0
	addi.w	$a5, $zero, -1
	slt	$a5, $a5, $t2
	slt	$t2, $s8, $t5
	movgr2cf	$fcc0, $a6
	fsel	$ft1, $fa3, $ft9, $fcc0
	movgr2cf	$fcc0, $t2
	fsel	$ft1, $fa3, $ft1, $fcc0
	movgr2cf	$fcc0, $a5
	fsel	$ft1, $fa3, $ft1, $fcc0
	movgr2cf	$fcc0, $s0
	fsel	$ft1, $fa3, $ft1, $fcc0
	slli.d	$a5, $t0, 3
	fstx.d	$ft1, $t6, $a5
	addi.w	$s5, $s5, 1
	addi.d	$s8, $s8, 1
	bne	$t8, $s5, .LBB12_16
	b	.LBB12_8
.LBB12_17:                              # %._crit_edge87
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 960
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end12:
	.size	initialize_grid_to_scalar, .Lfunc_end12-initialize_grid_to_scalar
                                        # -- End function
	.globl	add_grids                       # -- Begin function add_grids
	.p2align	5
	.type	add_grids,@function
add_grids:                              # @add_grids
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	move	$s2, $a4
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	move	$s3, $a3
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	move	$s4, $a2
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	vld	$vr7, $sp, 16                   # 16-byte Folded Reload
	vld	$vr6, $sp, 32                   # 16-byte Folded Reload
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 1600
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	blez	$a1, .LBB13_18
# %bb.1:                                # %.lr.ph83
	move	$a0, $zero
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 1776
	vreplvei.d	$vr0, $vr6, 0
	vreplvei.d	$vr1, $vr7, 0
	ori	$a3, $zero, 216
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	mul.d	$a3, $a4, $a3
	slli.d	$a4, $s4, 3
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a5, $s3, 3
	slli.d	$a6, $s2, 3
	ori	$a7, $zero, 6
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               # %._crit_edge80
                                        #   in Loop: Header=BB13_3 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB13_18
.LBB13_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_6 Depth 2
                                        #       Child Loop BB13_9 Depth 3
                                        #         Child Loop BB13_16 Depth 4
                                        #         Child Loop BB13_14 Depth 4
	slli.d	$t0, $a0, 8
	add.d	$t0, $a2, $t0
	ld.d	$t0, $t0, 248
	add.d	$t6, $t0, $a3
	ld.w	$t0, $t6, 28
	blez	$t0, .LBB13_2
# %bb.4:                                # %.preheader75.lr.ph
                                        #   in Loop: Header=BB13_3 Depth=1
	move	$s1, $zero
	move	$t2, $zero
	ld.w	$t3, $t6, 48
	ld.d	$t1, $t6, 176
	ld.w	$t4, $t6, 52
	ld.w	$t7, $t6, 44
	ld.w	$t5, $t6, 24
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$fp, $t1, $a4
	add.d	$t8, $t3, $t4
	addi.d	$t8, $t8, 1
	mul.w	$s2, $t7, $t8
	ldx.d	$s4, $t1, $a5
	ldx.d	$t1, $t1, $a6
	ld.wu	$t6, $t6, 20
	alsl.d	$t7, $s2, $fp, 3
	alsl.d	$t8, $s2, $s4, 3
	alsl.d	$s2, $s2, $t1, 3
	addi.d	$s3, $t6, -1
	sub.d	$s4, $fp, $s4
	sub.d	$t1, $fp, $t1
	sltui	$fp, $s4, 32
	sltui	$t1, $t1, 32
	or	$s4, $fp, $t1
	bstrpick.d	$t1, $t6, 30, 2
	slli.d	$fp, $t1, 2
	addi.w	$s6, $t6, 0
	b	.LBB13_6
	.p2align	4, , 16
.LBB13_5:                               # %._crit_edge78
                                        #   in Loop: Header=BB13_6 Depth=2
	addi.w	$t2, $t2, 1
	add.w	$s1, $s1, $t4
	beq	$t2, $t0, .LBB13_2
.LBB13_6:                               # %.preheader75
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_9 Depth 3
                                        #         Child Loop BB13_16 Depth 4
                                        #         Child Loop BB13_14 Depth 4
	blez	$t5, .LBB13_5
# %bb.7:                                # %.preheader.lr.ph
                                        #   in Loop: Header=BB13_6 Depth=2
	move	$s7, $zero
	mul.d	$s8, $t4, $t2
	move	$t1, $s1
	b	.LBB13_9
	.p2align	4, , 16
.LBB13_8:                               # %._crit_edge
                                        #   in Loop: Header=BB13_9 Depth=3
	addi.w	$s7, $s7, 1
	add.w	$t1, $t1, $t3
	beq	$s7, $t5, .LBB13_5
.LBB13_9:                               # %.preheader
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB13_16 Depth 4
                                        #         Child Loop BB13_14 Depth 4
	blez	$s6, .LBB13_8
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB13_9 Depth=3
	bltu	$t6, $a7, .LBB13_12
# %bb.11:                               # %vector.scevcheck
                                        #   in Loop: Header=BB13_9 Depth=3
	mul.d	$s5, $t3, $s7
	add.w	$s5, $s8, $s5
	srli.d	$ra, $s3, 32
	sltu	$ra, $zero, $ra
	add.w	$s0, $s5, $s3
	slt	$s0, $s0, $s5
	or	$s0, $s0, $ra
	or	$s0, $s0, $s4
	andi	$s0, $s0, 1
	beqz	$s0, .LBB13_15
.LBB13_12:                              #   in Loop: Header=BB13_9 Depth=3
	move	$ra, $zero
.LBB13_13:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB13_9 Depth=3
	add.w	$s5, $t1, $ra
	sub.d	$ra, $t6, $ra
	.p2align	4, , 16
.LBB13_14:                              # %scalar.ph
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_6 Depth=2
                                        #       Parent Loop BB13_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a4, $s5, 3
	fldx.d	$fa2, $s2, $a4
	fldx.d	$fa3, $t8, $a4
	fmul.d	$fa2, $fa6, $fa2
	fmadd.d	$fa2, $fa7, $fa3, $fa2
	fstx.d	$fa2, $t7, $a4
	addi.d	$ra, $ra, -1
	addi.w	$s5, $s5, 1
	bnez	$ra, .LBB13_14
	b	.LBB13_8
.LBB13_15:                              # %vector.body.preheader
                                        #   in Loop: Header=BB13_9 Depth=3
	move	$ra, $t1
	move	$s5, $fp
	.p2align	4, , 16
.LBB13_16:                              # %vector.body
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_6 Depth=2
                                        #       Parent Loop BB13_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$s0, $ra, 3
	alsl.d	$a4, $ra, $s2, 3
	vldx	$vr2, $s2, $s0
	vld	$vr3, $a4, 16
	alsl.d	$a4, $ra, $t8, 3
	vldx	$vr4, $t8, $s0
	vld	$vr5, $a4, 16
	vfmul.d	$vr2, $vr0, $vr2
	vfmul.d	$vr3, $vr0, $vr3
	vfmadd.d	$vr2, $vr1, $vr4, $vr2
	vfmadd.d	$vr3, $vr1, $vr5, $vr3
	alsl.d	$a4, $ra, $t7, 3
	vstx	$vr2, $t7, $s0
	vst	$vr3, $a4, 16
	addi.d	$s5, $s5, -4
	addi.w	$ra, $ra, 4
	bnez	$s5, .LBB13_16
# %bb.17:                               # %middle.block
                                        #   in Loop: Header=BB13_9 Depth=3
	move	$ra, $fp
	beq	$fp, $t6, .LBB13_8
	b	.LBB13_13
.LBB13_18:                              # %._crit_edge84
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 960
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end13:
	.size	add_grids, .Lfunc_end13-add_grids
                                        # -- End function
	.globl	mul_grids                       # -- Begin function mul_grids
	.p2align	5
	.type	mul_grids,@function
mul_grids:                              # @mul_grids
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
	move	$s2, $a4
	move	$s3, $a3
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	move	$s4, $a2
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	vld	$vr5, $sp, 16                   # 16-byte Folded Reload
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 1600
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	blez	$a1, .LBB14_18
# %bb.1:                                # %.lr.ph82
	move	$a0, $zero
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 1776
	vreplvei.d	$vr0, $vr5, 0
	ori	$a3, $zero, 216
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a3, $a4, $a3
	slli.d	$a4, $s4, 3
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a5, $s3, 3
	slli.d	$a6, $s2, 3
	ori	$a7, $zero, 4
	b	.LBB14_3
	.p2align	4, , 16
.LBB14_2:                               # %._crit_edge79
                                        #   in Loop: Header=BB14_3 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB14_18
.LBB14_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_6 Depth 2
                                        #       Child Loop BB14_9 Depth 3
                                        #         Child Loop BB14_16 Depth 4
                                        #         Child Loop BB14_14 Depth 4
	slli.d	$t0, $a0, 8
	add.d	$t0, $a2, $t0
	ld.d	$t0, $t0, 248
	add.d	$t6, $t0, $a3
	ld.w	$t0, $t6, 28
	blez	$t0, .LBB14_2
# %bb.4:                                # %.preheader74.lr.ph
                                        #   in Loop: Header=BB14_3 Depth=1
	move	$s1, $zero
	move	$t2, $zero
	ld.w	$t3, $t6, 48
	ld.d	$t1, $t6, 176
	ld.w	$t4, $t6, 52
	ld.w	$t7, $t6, 44
	ld.w	$t5, $t6, 24
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$fp, $t1, $a4
	add.d	$t8, $t3, $t4
	addi.d	$t8, $t8, 1
	mul.w	$s2, $t7, $t8
	ldx.d	$s4, $t1, $a5
	ldx.d	$t1, $t1, $a6
	ld.wu	$t6, $t6, 20
	alsl.d	$t7, $s2, $fp, 3
	alsl.d	$t8, $s2, $s4, 3
	alsl.d	$s2, $s2, $t1, 3
	addi.d	$s3, $t6, -1
	sub.d	$s4, $fp, $s4
	sub.d	$t1, $fp, $t1
	sltui	$fp, $s4, 32
	sltui	$t1, $t1, 32
	or	$s4, $fp, $t1
	bstrpick.d	$t1, $t6, 30, 2
	slli.d	$fp, $t1, 2
	addi.w	$s6, $t6, 0
	b	.LBB14_6
	.p2align	4, , 16
.LBB14_5:                               # %._crit_edge77
                                        #   in Loop: Header=BB14_6 Depth=2
	addi.w	$t2, $t2, 1
	add.w	$s1, $s1, $t4
	beq	$t2, $t0, .LBB14_2
.LBB14_6:                               # %.preheader74
                                        #   Parent Loop BB14_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_9 Depth 3
                                        #         Child Loop BB14_16 Depth 4
                                        #         Child Loop BB14_14 Depth 4
	blez	$t5, .LBB14_5
# %bb.7:                                # %.preheader.lr.ph
                                        #   in Loop: Header=BB14_6 Depth=2
	move	$s7, $zero
	mul.d	$s8, $t4, $t2
	move	$t1, $s1
	b	.LBB14_9
	.p2align	4, , 16
.LBB14_8:                               # %._crit_edge
                                        #   in Loop: Header=BB14_9 Depth=3
	addi.w	$s7, $s7, 1
	add.w	$t1, $t1, $t3
	beq	$s7, $t5, .LBB14_5
.LBB14_9:                               # %.preheader
                                        #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB14_16 Depth 4
                                        #         Child Loop BB14_14 Depth 4
	blez	$s6, .LBB14_8
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB14_9 Depth=3
	bltu	$t6, $a7, .LBB14_12
# %bb.11:                               # %vector.scevcheck
                                        #   in Loop: Header=BB14_9 Depth=3
	mul.d	$s5, $t3, $s7
	add.w	$s5, $s8, $s5
	srli.d	$ra, $s3, 32
	sltu	$ra, $zero, $ra
	add.w	$s0, $s5, $s3
	slt	$s0, $s0, $s5
	or	$s0, $s0, $ra
	or	$s0, $s0, $s4
	andi	$s0, $s0, 1
	beqz	$s0, .LBB14_15
.LBB14_12:                              #   in Loop: Header=BB14_9 Depth=3
	move	$ra, $zero
.LBB14_13:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB14_9 Depth=3
	add.w	$s5, $t1, $ra
	sub.d	$ra, $t6, $ra
	.p2align	4, , 16
.LBB14_14:                              # %scalar.ph
                                        #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_6 Depth=2
                                        #       Parent Loop BB14_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a4, $s5, 3
	fldx.d	$fa1, $t8, $a4
	fldx.d	$fa2, $s2, $a4
	fmul.d	$fa1, $fa5, $fa1
	fmul.d	$fa1, $fa1, $fa2
	fstx.d	$fa1, $t7, $a4
	addi.d	$ra, $ra, -1
	addi.w	$s5, $s5, 1
	bnez	$ra, .LBB14_14
	b	.LBB14_8
.LBB14_15:                              # %vector.body.preheader
                                        #   in Loop: Header=BB14_9 Depth=3
	move	$ra, $t1
	move	$s5, $fp
	.p2align	4, , 16
.LBB14_16:                              # %vector.body
                                        #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_6 Depth=2
                                        #       Parent Loop BB14_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$s0, $ra, $t8, 3
	slli.d	$a4, $ra, 3
	vldx	$vr1, $t8, $a4
	vld	$vr2, $s0, 16
	alsl.d	$s0, $ra, $s2, 3
	vldx	$vr3, $s2, $a4
	vld	$vr4, $s0, 16
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr2, $vr0, $vr2
	vfmul.d	$vr1, $vr1, $vr3
	vfmul.d	$vr2, $vr2, $vr4
	alsl.d	$s0, $ra, $t7, 3
	vstx	$vr1, $t7, $a4
	vst	$vr2, $s0, 16
	addi.d	$s5, $s5, -4
	addi.w	$ra, $ra, 4
	bnez	$s5, .LBB14_16
# %bb.17:                               # %middle.block
                                        #   in Loop: Header=BB14_9 Depth=3
	move	$ra, $fp
	beq	$fp, $t6, .LBB14_8
	b	.LBB14_13
.LBB14_18:                              # %._crit_edge83
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 960
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
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
.Lfunc_end14:
	.size	mul_grids, .Lfunc_end14-mul_grids
                                        # -- End function
	.globl	scale_grid                      # -- Begin function scale_grid
	.p2align	5
	.type	scale_grid,@function
scale_grid:                             # @scale_grid
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
	move	$s2, $a3
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	move	$s3, $a2
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	vld	$vr3, $sp, 16                   # 16-byte Folded Reload
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 1600
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	blez	$a1, .LBB15_20
# %bb.1:                                # %.lr.ph73
	move	$a0, $zero
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 1776
	vreplvei.d	$vr0, $vr3, 0
	ori	$a3, $zero, 216
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a3, $a4, $a3
	slli.d	$a4, $s3, 3
	slli.d	$a5, $s2, 3
	ori	$a6, $zero, 6
	ori	$a7, $zero, 32
	b	.LBB15_3
	.p2align	4, , 16
.LBB15_2:                               # %._crit_edge70
                                        #   in Loop: Header=BB15_3 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB15_20
.LBB15_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_6 Depth 2
                                        #       Child Loop BB15_9 Depth 3
                                        #         Child Loop BB15_18 Depth 4
                                        #         Child Loop BB15_13 Depth 4
	slli.d	$t0, $a0, 8
	add.d	$t0, $a2, $t0
	ld.d	$t0, $t0, 248
	add.d	$t6, $t0, $a3
	ld.w	$t0, $t6, 28
	blez	$t0, .LBB15_2
# %bb.4:                                # %.preheader65.lr.ph
                                        #   in Loop: Header=BB15_3 Depth=1
	move	$t1, $zero
	move	$t2, $zero
	ld.w	$t3, $t6, 48
	ld.d	$t7, $t6, 176
	ld.w	$t4, $t6, 52
	ld.w	$t8, $t6, 44
	ld.w	$t5, $t6, 24
	ldx.d	$s1, $t7, $a4
	add.d	$s2, $t3, $t4
	addi.d	$s2, $s2, 1
	ldx.d	$s3, $t7, $a5
	ld.wu	$t6, $t6, 20
	mul.w	$t8, $t8, $s2
	alsl.d	$t7, $t8, $s1, 3
	alsl.d	$t8, $t8, $s3, 3
	addi.d	$s2, $t6, -1
	sub.d	$s3, $s1, $s3
	bstrpick.d	$s1, $t6, 30, 2
	slli.d	$s1, $s1, 2
	addi.w	$s5, $t6, 0
	b	.LBB15_6
	.p2align	4, , 16
.LBB15_5:                               # %._crit_edge68
                                        #   in Loop: Header=BB15_6 Depth=2
	addi.w	$t2, $t2, 1
	add.w	$t1, $t1, $t4
	beq	$t2, $t0, .LBB15_2
.LBB15_6:                               # %.preheader65
                                        #   Parent Loop BB15_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_9 Depth 3
                                        #         Child Loop BB15_18 Depth 4
                                        #         Child Loop BB15_13 Depth 4
	blez	$t5, .LBB15_5
# %bb.7:                                # %.preheader.lr.ph
                                        #   in Loop: Header=BB15_6 Depth=2
	move	$s6, $zero
	mul.d	$s7, $t4, $t2
	move	$s8, $t1
	b	.LBB15_9
	.p2align	4, , 16
.LBB15_8:                               # %._crit_edge
                                        #   in Loop: Header=BB15_9 Depth=3
	addi.w	$s6, $s6, 1
	add.w	$s8, $s8, $t3
	beq	$s6, $t5, .LBB15_5
.LBB15_9:                               # %.preheader
                                        #   Parent Loop BB15_3 Depth=1
                                        #     Parent Loop BB15_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_18 Depth 4
                                        #         Child Loop BB15_13 Depth 4
	blez	$s5, .LBB15_8
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB15_9 Depth=3
	bgeu	$t6, $a6, .LBB15_14
# %bb.11:                               #   in Loop: Header=BB15_9 Depth=3
	move	$ra, $zero
.LBB15_12:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB15_9 Depth=3
	add.w	$s4, $s8, $ra
	sub.d	$ra, $t6, $ra
	.p2align	4, , 16
.LBB15_13:                              # %scalar.ph
                                        #   Parent Loop BB15_3 Depth=1
                                        #     Parent Loop BB15_6 Depth=2
                                        #       Parent Loop BB15_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$fp, $s4, 3
	fldx.d	$fa1, $t8, $fp
	fmul.d	$fa1, $fa3, $fa1
	fstx.d	$fa1, $t7, $fp
	addi.d	$ra, $ra, -1
	addi.w	$s4, $s4, 1
	bnez	$ra, .LBB15_13
	b	.LBB15_8
	.p2align	4, , 16
.LBB15_14:                              # %vector.scevcheck
                                        #   in Loop: Header=BB15_9 Depth=3
	mul.d	$s4, $t3, $s6
	add.w	$s4, $s7, $s4
	add.w	$fp, $s4, $s2
	move	$ra, $zero
	blt	$fp, $s4, .LBB15_12
# %bb.15:                               # %vector.scevcheck
                                        #   in Loop: Header=BB15_9 Depth=3
	srli.d	$fp, $s2, 32
	bnez	$fp, .LBB15_12
# %bb.16:                               # %vector.scevcheck
                                        #   in Loop: Header=BB15_9 Depth=3
	bltu	$s3, $a7, .LBB15_12
# %bb.17:                               # %vector.body.preheader
                                        #   in Loop: Header=BB15_9 Depth=3
	move	$ra, $s8
	move	$s4, $s1
	.p2align	4, , 16
.LBB15_18:                              # %vector.body
                                        #   Parent Loop BB15_3 Depth=1
                                        #     Parent Loop BB15_6 Depth=2
                                        #       Parent Loop BB15_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$fp, $ra, $t8, 3
	slli.d	$s0, $ra, 3
	vldx	$vr1, $t8, $s0
	vld	$vr2, $fp, 16
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr2, $vr0, $vr2
	alsl.d	$fp, $ra, $t7, 3
	vstx	$vr1, $t7, $s0
	vst	$vr2, $fp, 16
	addi.d	$s4, $s4, -4
	addi.w	$ra, $ra, 4
	bnez	$s4, .LBB15_18
# %bb.19:                               # %middle.block
                                        #   in Loop: Header=BB15_9 Depth=3
	move	$ra, $s1
	beq	$s1, $t6, .LBB15_8
	b	.LBB15_12
.LBB15_20:                              # %._crit_edge74
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 960
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
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
.Lfunc_end15:
	.size	scale_grid, .Lfunc_end15-scale_grid
                                        # -- End function
	.globl	dot                             # -- Begin function dot
	.p2align	5
	.type	dot,@function
dot:                                    # @dot
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
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$s2, $a3
	move	$s3, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 1600
	move	$s1, $a0
	blez	$a1, .LBB16_12
# %bb.1:                                # %.lr.ph84
	move	$a0, $zero
	ld.d	$a2, $s0, 1776
	movgr2fr.d	$fa0, $zero
	ori	$a3, $zero, 216
	mul.d	$a3, $fp, $a3
	slli.d	$a4, $s3, 3
	slli.d	$a5, $s2, 3
	fmov.d	$fs0, $fa0
	b	.LBB16_3
	.p2align	4, , 16
.LBB16_2:                               # %._crit_edge79
                                        #   in Loop: Header=BB16_3 Depth=1
	addi.d	$a0, $a0, 1
	fadd.d	$fs0, $fs0, $fa1
	beq	$a0, $a1, .LBB16_13
.LBB16_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_6 Depth 2
                                        #       Child Loop BB16_9 Depth 3
                                        #         Child Loop BB16_11 Depth 4
	slli.d	$a6, $a0, 8
	add.d	$a6, $a2, $a6
	ld.d	$a6, $a6, 248
	add.d	$t4, $a6, $a3
	ld.w	$a6, $t4, 28
	fmov.d	$fa1, $fa0
	blez	$a6, .LBB16_2
# %bb.4:                                # %.preheader70.lr.ph
                                        #   in Loop: Header=BB16_3 Depth=1
	ld.w	$a7, $t4, 48
	ld.d	$t3, $t4, 176
	ld.w	$t0, $t4, 52
	move	$t1, $zero
	move	$t2, $zero
	ld.w	$t5, $t4, 44
	ldx.d	$t6, $t3, $a4
	add.d	$t7, $a7, $t0
	addi.d	$t7, $t7, 1
	mul.w	$t7, $t5, $t7
	ldx.d	$t8, $t3, $a5
	ld.wu	$t3, $t4, 20
	ld.w	$t4, $t4, 24
	alsl.d	$t5, $t7, $t6, 3
	alsl.d	$t6, $t7, $t8, 3
	addi.w	$t7, $t3, 0
	fmov.d	$fa1, $fa0
	b	.LBB16_6
	.p2align	4, , 16
.LBB16_5:                               # %._crit_edge75
                                        #   in Loop: Header=BB16_6 Depth=2
	addi.w	$t2, $t2, 1
	add.w	$t1, $t1, $t0
	beq	$t2, $a6, .LBB16_2
.LBB16_6:                               # %.preheader70
                                        #   Parent Loop BB16_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_9 Depth 3
                                        #         Child Loop BB16_11 Depth 4
	blez	$t4, .LBB16_5
# %bb.7:                                # %.preheader.lr.ph
                                        #   in Loop: Header=BB16_6 Depth=2
	move	$t8, $zero
	move	$s2, $t1
	b	.LBB16_9
	.p2align	4, , 16
.LBB16_8:                               # %._crit_edge
                                        #   in Loop: Header=BB16_9 Depth=3
	addi.w	$t8, $t8, 1
	add.w	$s2, $s2, $a7
	beq	$t8, $t4, .LBB16_5
.LBB16_9:                               # %.preheader
                                        #   Parent Loop BB16_3 Depth=1
                                        #     Parent Loop BB16_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB16_11 Depth 4
	blez	$t7, .LBB16_8
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB16_9 Depth=3
	move	$s3, $t3
	move	$s4, $s2
	.p2align	4, , 16
.LBB16_11:                              #   Parent Loop BB16_3 Depth=1
                                        #     Parent Loop BB16_6 Depth=2
                                        #       Parent Loop BB16_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$s5, $s4, 3
	fldx.d	$fa2, $t5, $s5
	fldx.d	$fa3, $t6, $s5
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	addi.d	$s3, $s3, -1
	addi.w	$s4, $s4, 1
	bnez	$s3, .LBB16_11
	b	.LBB16_8
.LBB16_12:
	movgr2fr.d	$fs0, $zero
.LBB16_13:                              # %._crit_edge85
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $fp, $s0, 3
	ld.d	$a2, $a1, 960
	sub.d	$a0, $a0, $s1
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
	fmov.d	$fa0, $fs0
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
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
.Lfunc_end16:
	.size	dot, .Lfunc_end16-dot
                                        # -- End function
	.globl	norm                            # -- Begin function norm
	.p2align	5
	.type	norm,@function
norm:                                   # @norm
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$s2, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 1600
	move	$s1, $a0
	blez	$a1, .LBB17_12
# %bb.1:                                # %.lr.ph80
	move	$a0, $zero
	ld.d	$a2, $s0, 1776
	movgr2fr.d	$fa0, $zero
	ori	$a3, $zero, 216
	mul.d	$a3, $fp, $a3
	slli.d	$a4, $s2, 3
	fmov.d	$fs0, $fa0
	b	.LBB17_3
	.p2align	4, , 16
.LBB17_2:                               # %._crit_edge75
                                        #   in Loop: Header=BB17_3 Depth=1
	fcmp.clt.d	$fcc0, $fs0, $fa1
	addi.d	$a0, $a0, 1
	fsel	$fs0, $fs0, $fa1, $fcc0
	beq	$a0, $a1, .LBB17_13
.LBB17_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_6 Depth 2
                                        #       Child Loop BB17_9 Depth 3
                                        #         Child Loop BB17_11 Depth 4
	slli.d	$a5, $a0, 8
	add.d	$a5, $a2, $a5
	ld.d	$a5, $a5, 248
	add.d	$t3, $a5, $a3
	ld.w	$a5, $t3, 28
	fmov.d	$fa1, $fa0
	blez	$a5, .LBB17_2
# %bb.4:                                # %.preheader66.lr.ph
                                        #   in Loop: Header=BB17_3 Depth=1
	move	$a6, $zero
	move	$a7, $zero
	ld.w	$t0, $t3, 48
	ld.d	$t4, $t3, 176
	ld.w	$t1, $t3, 52
	ld.w	$t5, $t3, 44
	ld.w	$t2, $t3, 24
	ldx.d	$t4, $t4, $a4
	add.d	$t6, $t0, $t1
	ld.wu	$t3, $t3, 20
	addi.d	$t6, $t6, 1
	mul.w	$t5, $t5, $t6
	alsl.d	$t4, $t5, $t4, 3
	addi.w	$t5, $t3, 0
	fmov.d	$fa1, $fa0
	b	.LBB17_6
	.p2align	4, , 16
.LBB17_5:                               # %._crit_edge71
                                        #   in Loop: Header=BB17_6 Depth=2
	addi.w	$a7, $a7, 1
	add.w	$a6, $a6, $t1
	beq	$a7, $a5, .LBB17_2
.LBB17_6:                               # %.preheader66
                                        #   Parent Loop BB17_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_9 Depth 3
                                        #         Child Loop BB17_11 Depth 4
	blez	$t2, .LBB17_5
# %bb.7:                                # %.preheader.lr.ph
                                        #   in Loop: Header=BB17_6 Depth=2
	move	$t6, $zero
	move	$t7, $a6
	b	.LBB17_9
	.p2align	4, , 16
.LBB17_8:                               # %._crit_edge
                                        #   in Loop: Header=BB17_9 Depth=3
	addi.w	$t6, $t6, 1
	add.w	$t7, $t7, $t0
	beq	$t6, $t2, .LBB17_5
.LBB17_9:                               # %.preheader
                                        #   Parent Loop BB17_3 Depth=1
                                        #     Parent Loop BB17_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB17_11 Depth 4
	blez	$t5, .LBB17_8
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB17_9 Depth=3
	move	$t8, $t3
	move	$s2, $t7
	.p2align	4, , 16
.LBB17_11:                              #   Parent Loop BB17_3 Depth=1
                                        #     Parent Loop BB17_6 Depth=2
                                        #       Parent Loop BB17_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$s3, $s2, 3
	fldx.d	$fa2, $t4, $s3
	fabs.d	$fa2, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	addi.d	$t8, $t8, -1
	addi.w	$s2, $s2, 1
	bnez	$t8, .LBB17_11
	b	.LBB17_8
.LBB17_12:
	movgr2fr.d	$fs0, $zero
.LBB17_13:                              # %._crit_edge81
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $fp, $s0, 3
	ld.d	$a2, $a1, 960
	sub.d	$a0, $a0, $s1
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
	fmov.d	$fa0, $fs0
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end17:
	.size	norm, .Lfunc_end17-norm
                                        # -- End function
	.globl	mean                            # -- Begin function mean
	.p2align	5
	.type	mean,@function
mean:                                   # @mean
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$s2, $a2
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 1600
	move	$s1, $a0
	blez	$a1, .LBB18_12
# %bb.1:                                # %.lr.ph80
	move	$a0, $zero
	ld.d	$a2, $fp, 1776
	movgr2fr.d	$fa0, $zero
	ori	$a3, $zero, 216
	mul.d	$a3, $s0, $a3
	slli.d	$a4, $s2, 3
	fmov.d	$fs0, $fa0
	b	.LBB18_3
	.p2align	4, , 16
.LBB18_2:                               # %._crit_edge75
                                        #   in Loop: Header=BB18_3 Depth=1
	addi.d	$a0, $a0, 1
	fadd.d	$fs0, $fs0, $fa1
	beq	$a0, $a1, .LBB18_13
.LBB18_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_6 Depth 2
                                        #       Child Loop BB18_9 Depth 3
                                        #         Child Loop BB18_11 Depth 4
	slli.d	$a5, $a0, 8
	add.d	$a5, $a2, $a5
	ld.d	$a5, $a5, 248
	add.d	$t3, $a5, $a3
	ld.w	$a5, $t3, 28
	fmov.d	$fa1, $fa0
	blez	$a5, .LBB18_2
# %bb.4:                                # %.preheader66.lr.ph
                                        #   in Loop: Header=BB18_3 Depth=1
	move	$a6, $zero
	move	$a7, $zero
	ld.w	$t0, $t3, 48
	ld.d	$t4, $t3, 176
	ld.w	$t1, $t3, 52
	ld.w	$t5, $t3, 44
	ld.w	$t2, $t3, 24
	ldx.d	$t4, $t4, $a4
	add.d	$t6, $t0, $t1
	ld.wu	$t3, $t3, 20
	addi.d	$t6, $t6, 1
	mul.w	$t5, $t5, $t6
	alsl.d	$t4, $t5, $t4, 3
	addi.w	$t5, $t3, 0
	fmov.d	$fa1, $fa0
	b	.LBB18_6
	.p2align	4, , 16
.LBB18_5:                               # %._crit_edge71
                                        #   in Loop: Header=BB18_6 Depth=2
	addi.w	$a7, $a7, 1
	add.w	$a6, $a6, $t1
	beq	$a7, $a5, .LBB18_2
.LBB18_6:                               # %.preheader66
                                        #   Parent Loop BB18_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_9 Depth 3
                                        #         Child Loop BB18_11 Depth 4
	blez	$t2, .LBB18_5
# %bb.7:                                # %.preheader.lr.ph
                                        #   in Loop: Header=BB18_6 Depth=2
	move	$t6, $zero
	move	$t7, $a6
	b	.LBB18_9
	.p2align	4, , 16
.LBB18_8:                               # %._crit_edge
                                        #   in Loop: Header=BB18_9 Depth=3
	addi.w	$t6, $t6, 1
	add.w	$t7, $t7, $t0
	beq	$t6, $t2, .LBB18_5
.LBB18_9:                               # %.preheader
                                        #   Parent Loop BB18_3 Depth=1
                                        #     Parent Loop BB18_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB18_11 Depth 4
	blez	$t5, .LBB18_8
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB18_9 Depth=3
	move	$t8, $t3
	move	$s2, $t7
	.p2align	4, , 16
.LBB18_11:                              #   Parent Loop BB18_3 Depth=1
                                        #     Parent Loop BB18_6 Depth=2
                                        #       Parent Loop BB18_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$s3, $s2, 3
	fldx.d	$fa2, $t4, $s3
	fadd.d	$fa1, $fa1, $fa2
	addi.d	$t8, $t8, -1
	addi.w	$s2, $s2, 1
	bnez	$t8, .LBB18_11
	b	.LBB18_8
.LBB18_12:
	movgr2fr.d	$fs0, $zero
.LBB18_13:                              # %._crit_edge81
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $s0, $fp, 3
	ld.d	$a2, $a1, 960
	ld.w	$a3, $fp, 1536
	sub.d	$a0, $a0, $s1
	add.d	$a0, $a0, $a2
	ld.w	$a2, $fp, 1540
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$fa0, $fa0
	ld.w	$a3, $fp, 1544
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fs0, $fa0
	st.d	$a0, $a1, 960
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end18:
	.size	mean, .Lfunc_end18-mean
                                        # -- End function
	.globl	shift_grid                      # -- Begin function shift_grid
	.p2align	5
	.type	shift_grid,@function
shift_grid:                             # @shift_grid
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
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	move	$s2, $a3
	move	$s3, $a2
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	vld	$vr3, $sp, 16                   # 16-byte Folded Reload
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 1600
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	blez	$a1, .LBB19_20
# %bb.1:                                # %.lr.ph73
	move	$a0, $zero
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 1776
	vreplvei.d	$vr0, $vr3, 0
	ori	$a3, $zero, 216
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a3, $a4, $a3
	slli.d	$a4, $s3, 3
	slli.d	$a5, $s2, 3
	ori	$a6, $zero, 6
	ori	$a7, $zero, 32
	b	.LBB19_3
	.p2align	4, , 16
.LBB19_2:                               # %._crit_edge70
                                        #   in Loop: Header=BB19_3 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB19_20
.LBB19_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_6 Depth 2
                                        #       Child Loop BB19_9 Depth 3
                                        #         Child Loop BB19_18 Depth 4
                                        #         Child Loop BB19_13 Depth 4
	slli.d	$t0, $a0, 8
	add.d	$t0, $a2, $t0
	ld.d	$t0, $t0, 248
	add.d	$t6, $t0, $a3
	ld.w	$t0, $t6, 28
	blez	$t0, .LBB19_2
# %bb.4:                                # %.preheader65.lr.ph
                                        #   in Loop: Header=BB19_3 Depth=1
	move	$t1, $zero
	move	$t2, $zero
	ld.w	$t3, $t6, 48
	ld.d	$t7, $t6, 176
	ld.w	$t4, $t6, 52
	ld.w	$t8, $t6, 44
	ld.w	$t5, $t6, 24
	ldx.d	$s1, $t7, $a4
	add.d	$s2, $t3, $t4
	addi.d	$s2, $s2, 1
	ldx.d	$s3, $t7, $a5
	ld.wu	$t6, $t6, 20
	mul.w	$t8, $t8, $s2
	alsl.d	$t7, $t8, $s1, 3
	alsl.d	$t8, $t8, $s3, 3
	addi.d	$s2, $t6, -1
	sub.d	$s3, $s1, $s3
	bstrpick.d	$s1, $t6, 30, 2
	slli.d	$s1, $s1, 2
	addi.w	$s5, $t6, 0
	b	.LBB19_6
	.p2align	4, , 16
.LBB19_5:                               # %._crit_edge68
                                        #   in Loop: Header=BB19_6 Depth=2
	addi.w	$t2, $t2, 1
	add.w	$t1, $t1, $t4
	beq	$t2, $t0, .LBB19_2
.LBB19_6:                               # %.preheader65
                                        #   Parent Loop BB19_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_9 Depth 3
                                        #         Child Loop BB19_18 Depth 4
                                        #         Child Loop BB19_13 Depth 4
	blez	$t5, .LBB19_5
# %bb.7:                                # %.preheader.lr.ph
                                        #   in Loop: Header=BB19_6 Depth=2
	move	$s6, $zero
	mul.d	$s7, $t4, $t2
	move	$s8, $t1
	b	.LBB19_9
	.p2align	4, , 16
.LBB19_8:                               # %._crit_edge
                                        #   in Loop: Header=BB19_9 Depth=3
	addi.w	$s6, $s6, 1
	add.w	$s8, $s8, $t3
	beq	$s6, $t5, .LBB19_5
.LBB19_9:                               # %.preheader
                                        #   Parent Loop BB19_3 Depth=1
                                        #     Parent Loop BB19_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB19_18 Depth 4
                                        #         Child Loop BB19_13 Depth 4
	blez	$s5, .LBB19_8
# %bb.10:                               # %.lr.ph
                                        #   in Loop: Header=BB19_9 Depth=3
	bgeu	$t6, $a6, .LBB19_14
# %bb.11:                               #   in Loop: Header=BB19_9 Depth=3
	move	$ra, $zero
.LBB19_12:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB19_9 Depth=3
	add.w	$s4, $s8, $ra
	sub.d	$ra, $t6, $ra
	.p2align	4, , 16
.LBB19_13:                              # %scalar.ph
                                        #   Parent Loop BB19_3 Depth=1
                                        #     Parent Loop BB19_6 Depth=2
                                        #       Parent Loop BB19_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$fp, $s4, 3
	fldx.d	$fa1, $t8, $fp
	fadd.d	$fa1, $fa3, $fa1
	fstx.d	$fa1, $t7, $fp
	addi.d	$ra, $ra, -1
	addi.w	$s4, $s4, 1
	bnez	$ra, .LBB19_13
	b	.LBB19_8
	.p2align	4, , 16
.LBB19_14:                              # %vector.scevcheck
                                        #   in Loop: Header=BB19_9 Depth=3
	mul.d	$s4, $t3, $s6
	add.w	$s4, $s7, $s4
	add.w	$fp, $s4, $s2
	move	$ra, $zero
	blt	$fp, $s4, .LBB19_12
# %bb.15:                               # %vector.scevcheck
                                        #   in Loop: Header=BB19_9 Depth=3
	srli.d	$fp, $s2, 32
	bnez	$fp, .LBB19_12
# %bb.16:                               # %vector.scevcheck
                                        #   in Loop: Header=BB19_9 Depth=3
	bltu	$s3, $a7, .LBB19_12
# %bb.17:                               # %vector.body.preheader
                                        #   in Loop: Header=BB19_9 Depth=3
	move	$ra, $s8
	move	$s4, $s1
	.p2align	4, , 16
.LBB19_18:                              # %vector.body
                                        #   Parent Loop BB19_3 Depth=1
                                        #     Parent Loop BB19_6 Depth=2
                                        #       Parent Loop BB19_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$fp, $ra, $t8, 3
	slli.d	$s0, $ra, 3
	vldx	$vr1, $t8, $s0
	vld	$vr2, $fp, 16
	vfadd.d	$vr1, $vr0, $vr1
	vfadd.d	$vr2, $vr0, $vr2
	alsl.d	$fp, $ra, $t7, 3
	vstx	$vr1, $t7, $s0
	vst	$vr2, $fp, 16
	addi.d	$s4, $s4, -4
	addi.w	$ra, $ra, 4
	bnez	$s4, .LBB19_18
# %bb.19:                               # %middle.block
                                        #   in Loop: Header=BB19_9 Depth=3
	move	$ra, $s1
	beq	$s1, $t6, .LBB19_8
	b	.LBB19_12
.LBB19_20:                              # %._crit_edge74
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 960
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
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
.Lfunc_end19:
	.size	shift_grid, .Lfunc_end19-shift_grid
                                        # -- End function
	.globl	project_cell_to_face            # -- Begin function project_cell_to_face
	.p2align	5
	.type	project_cell_to_face,@function
project_cell_to_face:                   # @project_cell_to_face
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
	move	$s1, $a4
	move	$s3, $a3
	move	$s4, $a2
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 1600
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	blez	$a1, .LBB20_23
# %bb.1:                                # %.lr.ph85
	move	$a0, $zero
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 1776
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ori	$a1, $zero, 216
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	mul.d	$a1, $a2, $a1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a1, $s4, 3
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a1, $s3, 3
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$a7, $zero, 4
	vldi	$vr0, -928
	lu52i.d	$a1, $zero, 1022
	vreplgr2vr.d	$vr1, $a1
                                        # implicit-def: $r5
	b	.LBB20_3
	.p2align	4, , 16
.LBB20_2:                               # %._crit_edge81
                                        #   in Loop: Header=BB20_3 Depth=1
	addi.d	$a0, $a0, 1
	move	$a1, $t3
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB20_23
.LBB20_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_10 Depth 2
                                        #       Child Loop BB20_13 Depth 3
                                        #         Child Loop BB20_20 Depth 4
                                        #         Child Loop BB20_18 Depth 4
	slli.d	$a4, $a0, 8
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	add.d	$a4, $a2, $a4
	ld.d	$a4, $a4, 248
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.d	$a4, $a4, $a2
	ld.w	$t1, $a4, 48
	ld.w	$t2, $a4, 52
	ori	$a2, $zero, 2
	beq	$s1, $a2, .LBB20_22
# %bb.4:                                #   in Loop: Header=BB20_3 Depth=1
	move	$t3, $t1
	ori	$a2, $zero, 1
	beq	$s1, $a2, .LBB20_7
# %bb.5:                                #   in Loop: Header=BB20_3 Depth=1
	move	$t3, $a1
	bnez	$s1, .LBB20_7
# %bb.6:                                #   in Loop: Header=BB20_3 Depth=1
	ori	$t3, $zero, 1
.LBB20_7:                               #   in Loop: Header=BB20_3 Depth=1
	ld.w	$t4, $a4, 28
	bltz	$t4, .LBB20_2
.LBB20_8:                               # %.preheader73.lr.ph
                                        #   in Loop: Header=BB20_3 Depth=1
	move	$a6, $zero
	move	$t5, $zero
	ld.d	$a1, $a4, 176
	ld.w	$a5, $a4, 44
	ld.w	$t6, $a4, 24
	ld.w	$t7, $a4, 20
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a4, $a1, $a2
	add.d	$t0, $t1, $t2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	addi.d	$t0, $t0, 1
	mul.w	$a5, $a5, $t0
	alsl.d	$t8, $a5, $a4, 3
	alsl.d	$s3, $a5, $a1, 3
	addi.w	$s4, $t7, 1
	bstrpick.d	$s5, $s4, 31, 0
	addi.d	$s6, $s5, -1
	sub.d	$a5, $a1, $a4
	addi.w	$t0, $t3, 0
	alsl.d	$a1, $t0, $a1, 3
	sub.d	$a1, $a1, $a4
	sltui	$a4, $a5, 32
	sltui	$a1, $a1, 32
	or	$s7, $a4, $a1
	bstrpick.d	$a1, $s4, 31, 2
	sub.d	$s8, $zero, $t3
	slli.d	$a1, $a1, 2
	move	$t0, $s8
	b	.LBB20_10
	.p2align	4, , 16
.LBB20_9:                               # %._crit_edge78
                                        #   in Loop: Header=BB20_10 Depth=2
	addi.w	$t5, $fp, 1
	add.w	$a6, $a6, $t2
	add.d	$t0, $t0, $t2
	beq	$fp, $t4, .LBB20_2
.LBB20_10:                              # %.preheader73
                                        #   Parent Loop BB20_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB20_13 Depth 3
                                        #         Child Loop BB20_20 Depth 4
                                        #         Child Loop BB20_18 Depth 4
	move	$fp, $t5
	bltz	$t6, .LBB20_9
# %bb.11:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB20_10 Depth=2
	move	$a5, $zero
	mul.d	$s0, $t2, $fp
	move	$s2, $t0
	move	$t5, $a6
	b	.LBB20_13
	.p2align	4, , 16
.LBB20_12:                              # %._crit_edge
                                        #   in Loop: Header=BB20_13 Depth=3
	addi.w	$a5, $a4, 1
	add.w	$t5, $t5, $t1
	add.d	$s2, $s2, $t1
	beq	$a4, $t6, .LBB20_9
.LBB20_13:                              # %.preheader
                                        #   Parent Loop BB20_3 Depth=1
                                        #     Parent Loop BB20_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB20_20 Depth 4
                                        #         Child Loop BB20_18 Depth 4
	move	$a4, $a5
	bltz	$t7, .LBB20_12
# %bb.14:                               # %.lr.ph
                                        #   in Loop: Header=BB20_13 Depth=3
	bltu	$s4, $a7, .LBB20_16
# %bb.15:                               # %vector.scevcheck
                                        #   in Loop: Header=BB20_13 Depth=3
	mul.d	$a5, $t1, $a4
	add.w	$a5, $s0, $a5
	srli.d	$ra, $s6, 32
	sltu	$ra, $zero, $ra
	add.w	$a2, $a5, $s6
	slt	$a2, $a2, $a5
	or	$a2, $a2, $ra
	or	$a2, $a2, $s7
	andi	$a2, $a2, 1
	beqz	$a2, .LBB20_19
.LBB20_16:                              #   in Loop: Header=BB20_13 Depth=3
	move	$ra, $zero
.LBB20_17:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB20_13 Depth=3
	sub.d	$a5, $s5, $ra
	.p2align	4, , 16
.LBB20_18:                              # %scalar.ph
                                        #   Parent Loop BB20_3 Depth=1
                                        #     Parent Loop BB20_10 Depth=2
                                        #       Parent Loop BB20_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$a2, $t5, $ra
	add.w	$a3, $s2, $ra
	slli.d	$a3, $a3, 3
	fldx.d	$fa2, $t8, $a3
	slli.d	$a2, $a2, 3
	fldx.d	$fa3, $t8, $a2
	fadd.d	$fa2, $fa2, $fa3
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $s3, $a2
	addi.d	$a5, $a5, -1
	addi.d	$ra, $ra, 1
	bnez	$a5, .LBB20_18
	b	.LBB20_12
.LBB20_19:                              # %vector.body.preheader
                                        #   in Loop: Header=BB20_13 Depth=3
	move	$ra, $t5
	move	$a5, $a1
	.p2align	4, , 16
.LBB20_20:                              # %vector.body
                                        #   Parent Loop BB20_3 Depth=1
                                        #     Parent Loop BB20_10 Depth=2
                                        #       Parent Loop BB20_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$a2, $s8, $ra
	alsl.d	$a3, $a2, $t8, 3
	slli.d	$a2, $a2, 3
	vldx	$vr2, $t8, $a2
	vld	$vr3, $a3, 16
	alsl.d	$a2, $ra, $t8, 3
	slli.d	$a3, $ra, 3
	vldx	$vr4, $t8, $a3
	vld	$vr5, $a2, 16
	vfadd.d	$vr2, $vr2, $vr4
	vfadd.d	$vr3, $vr3, $vr5
	vfmul.d	$vr2, $vr2, $vr1
	vfmul.d	$vr3, $vr3, $vr1
	alsl.d	$a2, $ra, $s3, 3
	vstx	$vr2, $s3, $a3
	vst	$vr3, $a2, 16
	addi.d	$a5, $a5, -4
	addi.w	$ra, $ra, 4
	bnez	$a5, .LBB20_20
# %bb.21:                               # %middle.block
                                        #   in Loop: Header=BB20_13 Depth=3
	move	$ra, $a1
	beq	$a1, $s5, .LBB20_12
	b	.LBB20_17
	.p2align	4, , 16
.LBB20_22:                              #   in Loop: Header=BB20_3 Depth=1
	move	$t3, $t2
	ld.w	$t4, $a4, 28
	bgez	$t4, .LBB20_8
	b	.LBB20_2
.LBB20_23:                              # %._crit_edge86
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 960
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
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
.Lfunc_end20:
	.size	project_cell_to_face, .Lfunc_end20-project_cell_to_face
                                        # -- End function
	.globl	matmul_grids                    # -- Begin function matmul_grids
	.p2align	5
	.type	matmul_grids,@function
matmul_grids:                           # @matmul_grids
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
	move	$s1, $a6
	move	$s3, $a5
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	blez	$s3, .LBB21_21
# %bb.1:                                # %.preheader93.lr.ph
	move	$a0, $zero
	bstrpick.d	$a1, $s1, 31, 0
	movgr2fr.d	$fa0, $zero
	ori	$a2, $zero, 216
	mul.d	$a2, $fp, $a2
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	b	.LBB21_3
	.p2align	4, , 16
.LBB21_2:                               # %._crit_edge111
                                        #   in Loop: Header=BB21_3 Depth=1
	addi.d	$a0, $a0, 1
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	beq	$a0, $s3, .LBB21_21
.LBB21_3:                               # %.preheader93
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_6 Depth 2
                                        #       Child Loop BB21_10 Depth 3
                                        #         Child Loop BB21_13 Depth 4
                                        #           Child Loop BB21_16 Depth 5
                                        #             Child Loop BB21_18 Depth 6
	blez	$s1, .LBB21_2
# %bb.4:                                # %.lr.ph110
                                        #   in Loop: Header=BB21_3 Depth=1
	move	$a3, $zero
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 2
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	mul.d	$a5, $a0, $a1
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a5, $a5, $a4, 3
	alsl.d	$a4, $a0, $a4, 3
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	b	.LBB21_6
	.p2align	4, , 16
.LBB21_5:                               #   in Loop: Header=BB21_6 Depth=2
	addi.d	$a3, $a3, 1
	beq	$a3, $a1, .LBB21_2
.LBB21_6:                               #   Parent Loop BB21_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_10 Depth 3
                                        #         Child Loop BB21_13 Depth 4
                                        #           Child Loop BB21_16 Depth 5
                                        #             Child Loop BB21_18 Depth 6
	bltu	$a3, $a0, .LBB21_5
# %bb.7:                                # %.preheader92
                                        #   in Loop: Header=BB21_6 Depth=2
	move	$a4, $fp
	ld.w	$a7, $s0, 1600
	fmov.d	$fa1, $fa0
	blez	$a7, .LBB21_19
# %bb.8:                                # %.lr.ph106
                                        #   in Loop: Header=BB21_6 Depth=2
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	ld.w	$t2, $a6, 0
	slli.d	$t0, $a3, 2
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$t3, $a6, $t0
	ld.d	$t0, $s0, 1776
	move	$t1, $zero
	slli.d	$t2, $t2, 3
	slli.d	$t3, $t3, 3
	fmov.d	$fa1, $fa0
	b	.LBB21_10
	.p2align	4, , 16
.LBB21_9:                               # %._crit_edge102
                                        #   in Loop: Header=BB21_10 Depth=3
	addi.d	$t1, $t1, 1
	fadd.d	$fa1, $fa1, $fa2
	beq	$t1, $a7, .LBB21_19
.LBB21_10:                              #   Parent Loop BB21_3 Depth=1
                                        #     Parent Loop BB21_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB21_13 Depth 4
                                        #           Child Loop BB21_16 Depth 5
                                        #             Child Loop BB21_18 Depth 6
	slli.d	$t4, $t1, 8
	add.d	$t4, $t0, $t4
	ld.d	$t4, $t4, 248
	add.d	$t7, $t4, $a2
	ld.w	$t4, $t7, 28
	fmov.d	$fa2, $fa0
	blez	$t4, .LBB21_9
# %bb.11:                               # %.preheader91.lr.ph
                                        #   in Loop: Header=BB21_10 Depth=3
	ld.w	$t5, $t7, 48
	ld.d	$fp, $t7, 176
	ld.w	$t6, $t7, 52
	move	$s4, $zero
	move	$t8, $zero
	ld.w	$s1, $t7, 44
	ldx.d	$s2, $fp, $t2
	add.d	$s5, $t5, $t6
	addi.d	$s5, $s5, 1
	mul.w	$s1, $s1, $s5
	ldx.d	$fp, $fp, $t3
	ld.wu	$s6, $t7, 20
	ld.w	$s8, $t7, 24
	alsl.d	$ra, $s1, $s2, 3
	alsl.d	$s1, $s1, $fp, 3
	addi.w	$fp, $s6, 0
	fmov.d	$fa2, $fa0
	b	.LBB21_13
	.p2align	4, , 16
.LBB21_12:                              # %._crit_edge98
                                        #   in Loop: Header=BB21_13 Depth=4
	addi.w	$t8, $t8, 1
	add.w	$s4, $s4, $t6
	beq	$t8, $t4, .LBB21_9
.LBB21_13:                              # %.preheader91
                                        #   Parent Loop BB21_3 Depth=1
                                        #     Parent Loop BB21_6 Depth=2
                                        #       Parent Loop BB21_10 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB21_16 Depth 5
                                        #             Child Loop BB21_18 Depth 6
	blez	$s8, .LBB21_12
# %bb.14:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB21_13 Depth=4
	move	$s5, $zero
	move	$s2, $s4
	b	.LBB21_16
	.p2align	4, , 16
.LBB21_15:                              # %._crit_edge
                                        #   in Loop: Header=BB21_16 Depth=5
	addi.w	$s5, $s5, 1
	add.w	$s2, $s2, $t5
	beq	$s5, $s8, .LBB21_12
.LBB21_16:                              # %.preheader
                                        #   Parent Loop BB21_3 Depth=1
                                        #     Parent Loop BB21_6 Depth=2
                                        #       Parent Loop BB21_10 Depth=3
                                        #         Parent Loop BB21_13 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB21_18 Depth 6
	blez	$fp, .LBB21_15
# %bb.17:                               # %.lr.ph
                                        #   in Loop: Header=BB21_16 Depth=5
	move	$s7, $s6
	move	$t7, $s2
	.p2align	4, , 16
.LBB21_18:                              #   Parent Loop BB21_3 Depth=1
                                        #     Parent Loop BB21_6 Depth=2
                                        #       Parent Loop BB21_10 Depth=3
                                        #         Parent Loop BB21_13 Depth=4
                                        #           Parent Loop BB21_16 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	slli.d	$a6, $t7, 3
	fldx.d	$fa3, $ra, $a6
	fldx.d	$fa4, $s1, $a6
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	addi.d	$s7, $s7, -1
	addi.w	$t7, $t7, 1
	bnez	$s7, .LBB21_18
	b	.LBB21_15
	.p2align	4, , 16
.LBB21_19:                              # %._crit_edge107
                                        #   in Loop: Header=BB21_6 Depth=2
	slli.d	$a6, $a3, 3
	fstx.d	$fa1, $a5, $a6
	move	$fp, $a4
	bgeu	$a3, $s3, .LBB21_5
# %bb.20:                               #   in Loop: Header=BB21_6 Depth=2
	mul.d	$a6, $a3, $a1
	slli.d	$a6, $a6, 3
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	fstx.d	$fa1, $a4, $a6
	b	.LBB21_5
.LBB21_21:                              # %._crit_edge113
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $fp, $s0, 3
	ld.d	$a2, $a1, 1040
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 1040
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
.Lfunc_end21:
	.size	matmul_grids, .Lfunc_end21-matmul_grids
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function initialize_problem
.LCPI22_0:
	.dword	0x4046800000000000              # double 45
.LCPI22_1:
	.dword	0x401921fb54442d18              # double 6.2831853071795862
.LCPI22_2:
	.dword	0xc044000000000000              # double -40
.LCPI22_3:
	.dword	0x4043bd3cc9be45de              # double 39.478417604357432
	.text
	.globl	initialize_problem
	.p2align	5
	.type	initialize_problem,@function
initialize_problem:                     # @initialize_problem
# %bb.0:
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 248                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 200                  # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 1600
	fmov.d	$fs2, $fa1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	blez	$a0, .LBB22_14
# %bb.1:                                # %.lr.ph301
	fmov.d	$fs0, $fa0
	move	$a2, $zero
	ori	$a0, $zero, 216
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	mul.d	$s2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI22_0)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI22_0)
	pcalau12i	$a0, %pc_hi20(.LCPI22_1)
	fld.d	$fs4, $a0, %pc_lo12(.LCPI22_1)
	pcalau12i	$a0, %pc_hi20(.LCPI22_2)
	fld.d	$fs5, $a0, %pc_lo12(.LCPI22_2)
	pcalau12i	$a0, %pc_hi20(.LCPI22_3)
	fld.d	$fs6, $a0, %pc_lo12(.LCPI22_3)
	lu52i.d	$s3, $zero, 1023
	fst.d	$fs2, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fa2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fa0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 184                  # 8-byte Folded Spill
	b	.LBB22_3
	.p2align	4, , 16
.LBB22_2:                               # %._crit_edge298
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.w	$a0, $fp, 1600
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	bge	$a2, $a0, .LBB22_14
.LBB22_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_7 Depth 2
                                        #       Child Loop BB22_10 Depth 3
                                        #         Child Loop BB22_12 Depth 4
	ld.d	$a0, $fp, 1776
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	slli.d	$s4, $a2, 8
	add.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 248
	add.d	$a0, $a0, $s2
	ld.d	$a1, $a0, 176
	ld.w	$a2, $a0, 56
	ld.d	$a0, $a1, 88
	slli.d	$a2, $a2, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1776
	add.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 248
	add.d	$a0, $a0, $s2
	ld.d	$a1, $a0, 176
	ld.w	$a2, $a0, 56
	ld.d	$a0, $a1, 8
	slli.d	$a2, $a2, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1776
	add.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 248
	add.d	$s5, $a0, $s2
	ld.w	$a1, $s5, 28
	blez	$a1, .LBB22_2
# %bb.4:                                # %.preheader293.lr.ph
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.w	$a0, $s5, 24
	move	$s6, $zero
	b	.LBB22_7
	.p2align	4, , 16
.LBB22_5:                               # %._crit_edge296.loopexit
                                        #   in Loop: Header=BB22_7 Depth=2
	ld.w	$a1, $s5, 28
.LBB22_6:                               # %._crit_edge296
                                        #   in Loop: Header=BB22_7 Depth=2
	addi.w	$s6, $s6, 1
	bge	$s6, $a1, .LBB22_2
.LBB22_7:                               # %.preheader293
                                        #   Parent Loop BB22_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_10 Depth 3
                                        #         Child Loop BB22_12 Depth 4
	blez	$a0, .LBB22_6
# %bb.8:                                # %.preheader.preheader
                                        #   in Loop: Header=BB22_7 Depth=2
	ld.w	$a1, $s5, 20
	move	$s7, $zero
	b	.LBB22_10
	.p2align	4, , 16
.LBB22_9:                               # %._crit_edge
                                        #   in Loop: Header=BB22_10 Depth=3
	addi.w	$s7, $s7, 1
	bge	$s7, $a0, .LBB22_5
.LBB22_10:                              # %.preheader
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB22_12 Depth 4
	blez	$a1, .LBB22_9
# %bb.11:                               # %.lr.ph
                                        #   in Loop: Header=BB22_10 Depth=3
	ld.d	$a0, $fp, 1776
	move	$s8, $zero
	add.d	$s0, $a0, $s4
	.p2align	4, , 16
.LBB22_12:                              #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_7 Depth=2
                                        #       Parent Loop BB22_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a0, $s5, 8
	add.d	$a0, $s8, $a0
	movgr2fr.w	$fa0, $a0
	ld.w	$a0, $s5, 12
	ffint.d.w	$fa0, $fa0
	vldi	$vr2, -928
	fadd.d	$fa0, $fa0, $fa2
	fmul.d	$fa1, $fs0, $fa0
	fst.d	$fa1, $sp, 168                  # 8-byte Folded Spill
	add.d	$a0, $a0, $s7
	movgr2fr.w	$fa0, $a0
	ld.w	$a0, $s5, 16
	ffint.d.w	$fa0, $fa0
	fadd.d	$fa0, $fa0, $fa2
	fmul.d	$fs6, $fs0, $fa0
	add.d	$a0, $a0, $s6
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fadd.d	$fa0, $fa0, $fa2
	ld.w	$a0, $s5, 44
	ld.w	$a1, $s5, 52
	fmul.d	$fs1, $fs0, $fa0
	ld.w	$a2, $s5, 48
	add.d	$a3, $s6, $a0
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a0, $a1
	add.d	$a0, $s7, $a0
	mul.d	$a0, $a2, $a0
	add.d	$a0, $a1, $a0
	add.w	$s1, $s8, $a0
	vldi	$vr4, -800
	fadd.d	$fa0, $fa1, $fa4
	fmul.d	$fa1, $fa0, $fa0
	fadd.d	$fa2, $fs6, $fa4
	fmul.d	$fa3, $fa2, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa3, $fs1, $fa4
	fmul.d	$fa4, $fa3, $fa3
	fadd.d	$fs3, $fa1, $fa4
	fadd.d	$fs2, $fa0, $fa0
	fadd.d	$fs7, $fa2, $fa2
	fst.d	$fs7, $sp, 176                  # 8-byte Folded Spill
	fadd.d	$fs0, $fa3, $fa3
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	vldi	$vr1, -928
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	vldi	$vr0, -928
	fmul.d	$fs5, $fs2, $fa0
	vldi	$vr1, -800
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fmul.d	$fs5, $fs5, $fa0
	vldi	$vr2, -928
	fmul.d	$fa1, $fs7, $fa2
	fmul.d	$fs7, $fa0, $fa1
	fmul.d	$fa1, $fs0, $fa2
	fmul.d	$fs0, $fa0, $fa1
	vldi	$vr1, -776
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	vldi	$vr1, -776
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	vldi	$vr1, -776
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	vldi	$vr0, -816
	fadd.d	$fa0, $fs4, $fa0
	vldi	$vr1, -988
	fmul.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(tanh)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1002
	vldi	$vr2, -1006
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	fst.d	$fa1, $sp, 144                  # 8-byte Folded Spill
	fld.d	$fa2, $sp, 24                   # 8-byte Folded Reload
	fmul.d	$fa1, $fs5, $fa2
	fmul.d	$fa0, $fa0, $fa0
	vldi	$vr3, -912
	fsub.d	$fa0, $fa3, $fa0
	fmul.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $sp, 136                  # 8-byte Folded Spill
	fmul.d	$fa1, $fs7, $fa2
	fmul.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $sp, 128                  # 8-byte Folded Spill
	fmul.d	$fa1, $fs0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 120                  # 8-byte Folded Spill
	vldi	$vr0, -844
	fmul.d	$fs7, $fs3, $fa0
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs5, $fa0
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fa0, $sp, 168                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa0, $fs3
	fst.d	$fa0, $sp, 64                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs0, $fs5, $fa0
	fmul.d	$fs6, $fs6, $fs3
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs0, $fs0, $fa0
	fmul.d	$fa0, $fs1, $fs3
	fst.d	$fa0, $sp, 152                  # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs0, $fs0, $fa0
	vldi	$vr0, -844
	fmul.d	$fs4, $fs2, $fa0
	fst.d	$fs4, $sp, 80                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	fmov.d	$fs2, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fs1, $fa0, $fs3
	fld.d	$fs5, $sp, 64                   # 8-byte Folded Reload
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fs1, $fs1, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs1, $fs1, $fa0
	fld.d	$fa0, $sp, 152                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs1, $fa0
	fmadd.d	$fa0, $fs4, $fs0, $fa0
	fst.d	$fa0, $sp, 168                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 176                  # 8-byte Folded Reload
	vldi	$vr1, -844
	fmul.d	$fs7, $fa0, $fa1
	fst.d	$fs7, $sp, 88                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	fmov.d	$fs1, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fa0, $fs3
	fmov.d	$fs4, $fs5
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fs5, $fs6
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fld.d	$fs6, $sp, 152                  # 8-byte Folded Reload
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs2, $fa0
	fmadd.d	$fa0, $fs7, $fs0, $fa0
	fst.d	$fa0, $sp, 176                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 112                  # 8-byte Folded Reload
	vldi	$vr1, -844
	fmul.d	$fs7, $fa0, $fa1
	fst.d	$fs7, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fa0, $fs3
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs2, $fa0
	fmadd.d	$fa0, $fs7, $fs0, $fa0
	fst.d	$fa0, $sp, 104                  # 8-byte Folded Spill
	fld.d	$fa2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fa0, $sp, 168                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa2, $fa0
	fld.d	$fa1, $sp, 184                  # 8-byte Folded Reload
	fmadd.d	$fs2, $fs0, $fa1, $fa0
	fst.d	$fs0, $sp, 160                  # 8-byte Folded Spill
	fmul.d	$fs7, $fa2, $fs3
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fs7, $fs7, $fa0
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fs7, $fs7, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs7, $fs7, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmadd.d	$fs2, $fs7, $fa0, $fs2
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 192                  # 8-byte Folded Reload
	fmul.d	$fs7, $fa0, $fa1
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs1, $fs7, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs7, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fneg.d	$fa1, $fs7
	fmul.d	$fa1, $fs1, $fa1
	fmadd.d	$fa0, $fa1, $fa0, $fs2
	fst.d	$fa0, $sp, 112                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fa1, $sp, 88                   # 8-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fa2, $sp, 184                  # 8-byte Folded Reload
	fmadd.d	$fs1, $fs0, $fa2, $fa0
	fmul.d	$fs2, $fa1, $fs3
	fld.d	$fs0, $sp, 72                   # 8-byte Folded Reload
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmadd.d	$fs1, $fs2, $fa0, $fs1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 192                  # 8-byte Folded Reload
	fmul.d	$fs2, $fa0, $fa1
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs7, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fneg.d	$fa1, $fs7
	fmul.d	$fa1, $fs2, $fa1
	fmadd.d	$fa0, $fa1, $fa0, $fs1
	fst.d	$fa0, $sp, 88                   # 8-byte Folded Spill
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fa1, $sp, 96                   # 8-byte Folded Reload
	fmul.d	$fa0, $fa1, $fs1
	fld.d	$fa2, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fa3, $sp, 184                  # 8-byte Folded Reload
	fmadd.d	$fs2, $fa2, $fa3, $fa0
	fmul.d	$fs7, $fa1, $fs3
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fs7, $fs7, $fa0
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs7, $fs7, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs7, $fs7, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmadd.d	$fs2, $fs7, $fa0, $fs2
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 192                  # 8-byte Folded Reload
	fmul.d	$fs3, $fa0, $fa1
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs4, $fs3, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 248
	add.d	$a0, $a0, $s2
	ld.d	$a0, $a0, 176
	fneg.d	$fa1, $fs3
	ld.d	$a1, $a0, 16
	fmul.d	$fa1, $fs4, $fa1
	fmadd.d	$fa0, $fa1, $fa0, $fs2
	fld.d	$fs2, $sp, 56                   # 8-byte Folded Reload
	slli.d	$a2, $s1, 3
	stx.d	$s3, $a1, $a2
	ld.d	$a1, $a0, 24
	fld.d	$fa1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fa2, $sp, 176                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fa3, $sp, 168                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fld.d	$fa2, $sp, 120                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $fs1, $fa1
	fld.d	$fa3, $sp, 144                  # 8-byte Folded Reload
	fstx.d	$fa3, $a1, $a2
	ld.d	$a1, $a0, 88
	fld.d	$fa2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fa4, $sp, 88                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa4
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fadd.d	$fa0, $fa2, $fa0
	fnmadd.d	$fa0, $fa3, $fa0, $fa1
	fld.d	$fa1, $sp, 160                  # 8-byte Folded Reload
	fstx.d	$fa1, $a1, $a2
	ld.d	$a0, $a0, 8
	ld.w	$a1, $s5, 20
	fmul.d	$fa0, $fs1, $fa0
	fmadd.d	$fa0, $fs2, $fa1, $fa0
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
	addi.w	$s8, $s8, 1
	fstx.d	$fa0, $a0, $a2
	blt	$s8, $a1, .LBB22_12
# %bb.13:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB22_10 Depth=3
	ld.w	$a0, $s5, 24
	b	.LBB22_9
.LBB22_14:                              # %._crit_edge302
	ori	$a2, $zero, 1
	move	$a0, $fp
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(mean)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1596
	bnez	$a0, .LBB22_16
# %bb.15:
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	fmov.d	$fs0, $fa0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	fmov.d	$fa0, $fs0
.LBB22_16:
	movgr2fr.d	$fa1, $zero
	fcmp.ceq.d	$fcc0, $fs2, $fa1
	bcnez	$fcc0, .LBB22_18
# %bb.17:
	fneg.d	$fs1, $fa0
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(shift_grid)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fs1, $fs2
	ori	$a2, $zero, 11
	ori	$a3, $zero, 11
	move	$a0, $fp
	move	$a1, $s0
	fld.d	$fs7, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 256                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	pcaddu18i	$t8, %call36(shift_grid)
	jr	$t8
.LBB22_18:
	fld.d	$fs7, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 256                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.Lfunc_end22:
	.size	initialize_problem, .Lfunc_end22-initialize_problem
                                        # -- End function
	.type	.L__const.exchange_boundary.edges,@object # @__const.exchange_boundary.edges
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.L__const.exchange_boundary.edges:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.size	.L__const.exchange_boundary.edges, 108

	.type	.L__const.exchange_boundary.corners,@object # @__const.exchange_boundary.corners
	.p2align	2, 0x0
.L__const.exchange_boundary.corners:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.size	.L__const.exchange_boundary.corners, 108

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"  level=%2d, eigenvalue_max ~= %e\n"
	.size	.L.str.1, 35

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\n  average value of f = %20.12e\n"
	.size	.L.str.2, 33

	.section	".note.GNU-stack","",@progbits
	.addrsig
