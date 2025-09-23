	.file	"emfloat.c"
	.text
	.globl	SetupCPUEmFloatArrays           # -- Begin function SetupCPUEmFloatArrays
	.p2align	5
	.type	SetupCPUEmFloatArrays,@function
SetupCPUEmFloatArrays:                  # @SetupCPUEmFloatArrays
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
	move	$fp, $a3
	move	$s0, $a1
	move	$s1, $a0
	ori	$a0, $zero, 13
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB0_24
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	lu12i.w	$a0, 12
	ori	$s2, $a0, 848
	ori	$s4, $zero, 258
	addi.w	$s5, $zero, -2
	ori	$s6, $zero, 2
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a1, $zero
	st.b	$zero, $sp, 8
.LBB0_3:                                # %Int32ToInternalFPF.exit21
                                        #   in Loop: Header=BB0_4 Depth=1
	st.h	$a1, $sp, 10
	add.d	$a2, $s0, $s7
	addi.d	$a0, $sp, 20
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(DivideInternalFPF)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 1
	beq	$s3, $fp, .LBB0_24
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_22 Depth 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(randwc)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	st.h	$s6, $sp, 20
	st.d	$zero, $sp, 24
	bnez	$a0, .LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a1, $zero
	st.b	$zero, $sp, 20
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_7:                                # %.thread.i
                                        #   in Loop: Header=BB0_4 Depth=1
	sub.w	$a0, $zero, $a0
	st.h	$s4, $sp, 20
.LBB0_8:                                # %.lr.ph.i.i
                                        #   in Loop: Header=BB0_4 Depth=1
	bstrpick.d	$a2, $a0, 31, 16
	ori	$a1, $zero, 32
	.p2align	4, , 16
.LBB0_9:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a3, $a0, 15, 15
	slli.d	$a0, $a0, 1
	slli.d	$a2, $a2, 1
	or	$a2, $a2, $a3
	ext.w.h	$a2, $a2
	addi.d	$a1, $a1, -1
	bgez	$a2, .LBB0_9
# %bb.10:                               # %._crit_edge.i.i
                                        #   in Loop: Header=BB0_4 Depth=1
	st.w	$zero, $sp, 28
	st.h	$a0, $sp, 26
	st.h	$a2, $sp, 24
.LBB0_11:                               # %Int32ToInternalFPF.exit
                                        #   in Loop: Header=BB0_4 Depth=1
	st.h	$a1, $sp, 22
	move	$a0, $s2
	pcaddu18i	$ra, %call36(randwc)
	jirl	$ra, $ra, 0
	blt	$s5, $a0, .LBB0_13
# %bb.12:                               # %.thread.i12
                                        #   in Loop: Header=BB0_4 Depth=1
	nor	$a0, $a0, $zero
	st.h	$s4, $sp, 8
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_13:                               #   in Loop: Header=BB0_4 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a0, $a0, 1
	st.h	$s6, $sp, 8
	slli.d	$a1, $a0, 31
	st.d	$zero, $sp, 12
	bgez	$a1, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_4 Depth=1
	move	$a1, $zero
	st.b	$zero, $sp, 8
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_15:                               # %.lr.ph.i.i6
                                        #   in Loop: Header=BB0_4 Depth=1
	bstrpick.d	$a2, $a0, 31, 16
	ori	$a1, $zero, 32
	.p2align	4, , 16
.LBB0_16:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a3, $a0, 15, 15
	slli.d	$a0, $a0, 1
	slli.d	$a2, $a2, 1
	or	$a2, $a2, $a3
	ext.w.h	$a2, $a2
	addi.d	$a1, $a1, -1
	bgez	$a2, .LBB0_16
# %bb.17:                               # %._crit_edge.i.i11
                                        #   in Loop: Header=BB0_4 Depth=1
	st.w	$zero, $sp, 16
	st.h	$a0, $sp, 14
	st.h	$a2, $sp, 12
.LBB0_18:                               # %Int32ToInternalFPF.exit13
                                        #   in Loop: Header=BB0_4 Depth=1
	st.h	$a1, $sp, 10
	slli.d	$a0, $s3, 3
	alsl.d	$s7, $s3, $a0, 2
	add.d	$a2, $s1, $s7
	addi.d	$a0, $sp, 20
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(DivideInternalFPF)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(randwc)
	jirl	$ra, $ra, 0
	blt	$s5, $a0, .LBB0_20
# %bb.19:                               # %.thread.i20
                                        #   in Loop: Header=BB0_4 Depth=1
	nor	$a0, $a0, $zero
	st.h	$s4, $sp, 8
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_20:                               #   in Loop: Header=BB0_4 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a0, $a0, 1
	st.h	$s6, $sp, 8
	slli.d	$a1, $a0, 31
	st.d	$zero, $sp, 12
	bltz	$a1, .LBB0_2
.LBB0_21:                               # %.lr.ph.i.i14
                                        #   in Loop: Header=BB0_4 Depth=1
	bstrpick.d	$a2, $a0, 31, 16
	ori	$a1, $zero, 32
	.p2align	4, , 16
.LBB0_22:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a3, $a0, 15, 15
	slli.d	$a0, $a0, 1
	slli.d	$a2, $a2, 1
	or	$a2, $a2, $a3
	ext.w.h	$a2, $a2
	addi.d	$a1, $a1, -1
	bgez	$a2, .LBB0_22
# %bb.23:                               # %._crit_edge.i.i19
                                        #   in Loop: Header=BB0_4 Depth=1
	st.w	$zero, $sp, 16
	st.h	$a0, $sp, 14
	st.h	$a2, $sp, 12
	b	.LBB0_3
.LBB0_24:                               # %._crit_edge
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
	.size	SetupCPUEmFloatArrays, .Lfunc_end0-SetupCPUEmFloatArrays
                                        # -- End function
	.p2align	5                               # -- Begin function DivideInternalFPF
	.type	DivideInternalFPF,@function
DivideInternalFPF:                      # @DivideInternalFPF
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	ld.bu	$t1, $a0, 0
	ld.bu	$a3, $a1, 0
	alsl.d	$a4, $t1, $t1, 2
	add.d	$a3, $a4, $a3
	ori	$a4, $zero, 24
	bltu	$a4, $a3, .LBB1_28
# %bb.1:
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI1_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI1_0)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB1_2:
	ld.w	$a0, $a2, 8
	ld.d	$a3, $a2, 0
	st.w	$a0, $a1, 8
	st.d	$a3, $a1, 0
	b	.LBB1_28
.LBB1_3:
	ld.hu	$a3, $a0, 4
	ld.hu	$a4, $a0, 6
	ld.hu	$a6, $a1, 4
	ld.hu	$t0, $a1, 6
	ld.hu	$a5, $a0, 8
	ld.hu	$t2, $a1, 8
	ld.hu	$a7, $a0, 10
	or	$a6, $t0, $a6
	or	$t0, $a4, $a3
	or	$a6, $a6, $t2
	ld.hu	$t2, $a1, 10
	or	$t0, $t0, $a5
	or	$t0, $t0, $a7
	slli.d	$t0, $t0, 48
	or	$a6, $a6, $t2
	beqz	$t0, .LBB1_18
# %bb.4:
	beqz	$a6, .LBB1_24
# %bb.5:                                # %.lr.ph
	move	$fp, $zero
	move	$t7, $zero
	move	$t8, $zero
	move	$t6, $zero
	move	$t0, $zero
	move	$t3, $zero
	move	$t4, $zero
	move	$a6, $zero
	ld.b	$t2, $a0, 1
	ld.b	$t5, $a1, 1
	st.b	$t1, $a2, 0
	ld.h	$t1, $a0, 2
	ld.h	$s0, $a1, 2
	xor	$a0, $t5, $t2
	st.b	$a0, $a2, 1
	addi.d	$a0, $a1, 4
	sub.d	$t1, $t1, $s0
	addi.d	$t1, $t1, 128
	st.h	$t1, $a2, 2
	st.d	$zero, $a2, 4
	ori	$t2, $zero, 3
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_6:                                # %.loopexit109
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.hu	$fp, $a1, 10
	bstrpick.d	$t5, $t5, 15, 0
	sub.d	$t5, $t5, $fp
	ld.hu	$fp, $a1, 8
	bstrpick.d	$s0, $t5, 16, 16
	st.h	$t5, $sp, 22
	bstrpick.d	$t6, $t6, 15, 0
	add.d	$fp, $s0, $fp
	sub.d	$t6, $t6, $fp
	ld.hu	$fp, $a1, 6
	bstrpick.d	$s0, $t6, 16, 16
	st.h	$t6, $sp, 20
	bstrpick.d	$t8, $t8, 15, 0
	add.d	$fp, $s0, $fp
	ld.h	$s0, $a1, 4
	sub.d	$t8, $t8, $fp
	st.h	$t8, $sp, 18
	bstrpick.d	$fp, $t8, 16, 16
	add.d	$fp, $fp, $s0
	sub.d	$t7, $t7, $fp
	st.h	$t7, $sp, 16
	ori	$fp, $zero, 1
.LBB1_7:                                # %.loopexit
                                        #   in Loop: Header=BB1_8 Depth=1
	bstrpick.d	$s0, $a7, 15, 15
	slli.d	$a7, $a7, 1
	slli.d	$s1, $a5, 1
	bstrpick.d	$a5, $a5, 15, 15
	or	$s0, $s1, $s0
	slli.d	$s1, $a4, 1
	bstrpick.d	$a4, $a4, 15, 15
	or	$a5, $s1, $a5
	slli.d	$a3, $a3, 1
	or	$a3, $a3, $a4
	slli.d	$a4, $t4, 1
	bstrpick.d	$t4, $t4, 15, 15
	or	$a4, $a4, $fp
	st.h	$a4, $a2, 10
	slli.d	$fp, $t3, 1
	bstrpick.d	$t3, $t3, 15, 15
	or	$t4, $fp, $t4
	st.h	$t4, $a2, 8
	slli.d	$fp, $t0, 1
	bstrpick.d	$t0, $t0, 15, 15
	or	$t3, $fp, $t3
	st.h	$t3, $a2, 6
	slli.d	$a6, $a6, 1
	or	$t0, $a6, $t0
	ext.w.h	$a6, $t0
	st.h	$t0, $a2, 4
	addi.d	$t1, $t1, -1
	st.h	$t1, $a2, 2
	move	$fp, $t7
	move	$t7, $t8
	move	$t8, $t6
	move	$t6, $t5
	move	$t0, $t3
	move	$t3, $t4
	move	$t4, $a4
	move	$a4, $a5
	move	$a5, $s0
	bltz	$a6, .LBB1_28
.LBB1_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
	bstrpick.d	$t5, $a3, 15, 15
	slli.d	$s0, $t6, 1
	or	$t5, $s0, $t5
	st.h	$t5, $sp, 22
	bstrpick.d	$t6, $t6, 15, 15
	slli.d	$s0, $t8, 1
	or	$t6, $s0, $t6
	st.h	$t6, $sp, 20
	bstrpick.d	$t8, $t8, 15, 15
	slli.d	$s0, $t7, 1
	or	$t8, $s0, $t8
	st.h	$t8, $sp, 18
	bstrpick.d	$t7, $t7, 15, 15
	slli.d	$s0, $fp, 1
	or	$t7, $s0, $t7
	ext.w.h	$fp, $fp
	st.h	$t7, $sp, 16
	bltz	$fp, .LBB1_6
# %bb.9:                                # %.preheader.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	move	$s1, $zero
	addi.d	$fp, $sp, 16
	move	$s0, $a0
	.p2align	4, , 16
.LBB1_10:                               # %.preheader
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$s3, $s0, 0
	ld.hu	$s4, $fp, 0
	bltu	$s4, $s3, .LBB1_13
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=2
	bltu	$s3, $s4, .LBB1_6
# %bb.12:                               #   in Loop: Header=BB1_10 Depth=2
	move	$s2, $s1
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 2
	addi.d	$fp, $fp, 2
	bltu	$s2, $t2, .LBB1_10
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_13:                               #   in Loop: Header=BB1_8 Depth=1
	move	$fp, $zero
	b	.LBB1_7
.LBB1_14:
	ld.hu	$a3, $a1, 4
	ld.hu	$a4, $a1, 6
	ld.hu	$a5, $a1, 8
	ld.hu	$a6, $a1, 10
	or	$a3, $a4, $a3
	or	$a3, $a3, $a5
	or	$a3, $a3, $a6
	beqz	$a3, .LBB1_20
.LBB1_15:
	ld.b	$a0, $a0, 1
	ld.b	$a1, $a1, 1
	xor	$a0, $a1, $a0
	st.b	$zero, $a2, 0
	st.b	$a0, $a2, 1
	lu12i.w	$a0, 8
	ori	$a0, $a0, 1
	st.h	$a0, $a2, 2
	st.d	$zero, $a2, 4
	b	.LBB1_28
.LBB1_16:
	ld.hu	$a3, $a0, 4
	ld.hu	$a4, $a0, 6
	ld.hu	$a5, $a0, 8
	ld.hu	$a6, $a0, 10
	or	$a3, $a4, $a3
	or	$a3, $a3, $a5
	or	$a3, $a3, $a6
	beqz	$a3, .LBB1_20
.LBB1_17:
	lu12i.w	$a3, -524272
	ori	$a3, $a3, 3
	lu32i.d	$a3, 0
	st.w	$a3, $a2, 0
	st.d	$zero, $a2, 4
	ld.b	$a0, $a0, 1
	ld.b	$a1, $a1, 1
	xor	$a0, $a1, $a0
	st.b	$a0, $a2, 1
	b	.LBB1_28
.LBB1_18:
	beqz	$a6, .LBB1_20
# %bb.19:
	lu12i.w	$a0, -524272
	b	.LBB1_25
.LBB1_20:
	lu12i.w	$a0, 524272
	ori	$a0, $a0, 260
	st.w	$a0, $a2, 0
	lu12i.w	$a0, 4
	st.h	$a0, $a2, 4
	st.w	$zero, $a2, 6
	st.h	$zero, $a2, 10
	b	.LBB1_28
.LBB1_21:
	ld.hu	$a3, $a0, 4
	ld.hu	$a4, $a1, 4
	bltu	$a4, $a3, .LBB1_27
# %bb.22:
	bgeu	$a3, $a4, .LBB1_26
.LBB1_23:
	move	$a0, $a1
	b	.LBB1_27
.LBB1_24:
	lu12i.w	$a0, -524272
	ori	$a0, $a0, 3
.LBB1_25:                               # %.loopexit112
	lu32i.d	$a0, 0
	st.w	$a0, $a2, 0
	st.d	$zero, $a2, 4
	b	.LBB1_28
.LBB1_26:
	ld.hu	$a3, $a0, 6
	ld.hu	$a4, $a1, 6
	bgeu	$a4, $a3, .LBB1_38
.LBB1_27:                               # %choose_nan.exit
	ld.w	$a1, $a2, 8
	ld.d	$a3, $a2, 0
	st.w	$a1, $a0, 8
	st.d	$a3, $a0, 0
.LBB1_28:                               # %.loopexit112
	ld.bu	$a0, $a2, 0
	addi.d	$a1, $a0, -1
	ori	$a3, $zero, 1
	bltu	$a3, $a1, .LBB1_37
# %bb.29:
	ld.hu	$a1, $a2, 4
	ld.hu	$a3, $a2, 6
	ld.hu	$a4, $a2, 8
	ld.hu	$a5, $a2, 10
	or	$a1, $a3, $a1
	or	$a1, $a1, $a4
	or	$a1, $a1, $a5
	bnez	$a1, .LBB1_31
# %bb.30:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	move	$fp, $a2
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a2, $fp
	ld.bu	$a0, $fp, 0
.LBB1_31:
	ld.hu	$a3, $a2, 2
	lu12i.w	$a1, 8
	bne	$a3, $a1, .LBB1_34
# %bb.32:
	ori	$a1, $a1, 1
	st.h	$a1, $a2, 2
	beqz	$a0, .LBB1_37
# %bb.33:                               # %denormalize.exit.thread7.i
	ld.h	$a0, $a2, 6
	ld.hu	$a1, $a2, 4
	ld.h	$a3, $a2, 8
	ld.hu	$a4, $a2, 10
	bstrpick.d	$a5, $a0, 15, 1
	slli.d	$a6, $a1, 15
	or	$a5, $a6, $a5
	bstrpick.d	$a6, $a3, 15, 1
	slli.d	$a0, $a0, 15
	or	$a6, $a0, $a6
	srli.d	$a0, $a4, 1
	slli.d	$a3, $a3, 15
	or	$a0, $a3, $a0
	andi	$a3, $a4, 1
	or	$a0, $a0, $a3
	srli.d	$a1, $a1, 1
	st.h	$a1, $a2, 4
	st.h	$a5, $a2, 6
	st.h	$a6, $a2, 8
	b	.LBB1_36
.LBB1_34:                               # %denormalize.exit.i
	beqz	$a0, .LBB1_37
# %bb.35:                               # %denormalize.exit.i._crit_edge
	ld.hu	$a0, $a2, 10
.LBB1_36:
	bstrpick.d	$a0, $a0, 15, 3
	slli.d	$a0, $a0, 3
	st.h	$a0, $a2, 10
.LBB1_37:                               # %RoundInternalFPF.exit
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB1_38:
	bltu	$a3, $a4, .LBB1_23
# %bb.39:
	ld.hu	$a3, $a0, 8
	ld.hu	$a4, $a1, 8
	bltu	$a4, $a3, .LBB1_27
# %bb.40:
	bltu	$a3, $a4, .LBB1_23
# %bb.41:
	ld.hu	$a3, $a0, 10
	ld.hu	$a4, $a1, 10
	bltu	$a4, $a3, .LBB1_27
# %bb.42:
	sltu	$a3, $a3, $a4
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	or	$a0, $a1, $a0
	b	.LBB1_27
.Lfunc_end1:
	.size	DivideInternalFPF, .Lfunc_end1-DivideInternalFPF
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_20-.LJTI1_0
	.word	.LBB1_14-.LJTI1_0
	.word	.LBB1_14-.LJTI1_0
	.word	.LBB1_15-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_3-.LJTI1_0
	.word	.LBB1_3-.LJTI1_0
	.word	.LBB1_15-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_3-.LJTI1_0
	.word	.LBB1_3-.LJTI1_0
	.word	.LBB1_15-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_17-.LJTI1_0
	.word	.LBB1_17-.LJTI1_0
	.word	.LBB1_17-.LJTI1_0
	.word	.LBB1_20-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function DoEmFloatIteration
.LCPI2_0:
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	16                              # 0x10
.LCPI2_1:
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_2:
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	16                              # 0x10
.LCPI2_3:
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.text
	.globl	DoEmFloatIteration
	.p2align	5
	.type	DoEmFloatIteration,@function
DoEmFloatIteration:                     # @DoEmFloatIteration
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
	move	$fp, $a4
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$s3, $a0
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	beqz	$fp, .LBB2_52
# %bb.1:
	pcalau12i	$a0, %pc_hi20(DoEmFloatIteration.jtable)
	addi.d	$s6, $a0, %pc_lo12(DoEmFloatIteration.jtable)
	ori	$s7, $zero, 3
	pcalau12i	$a0, %pc_hi20(.LJTI2_0)
	addi.d	$s8, $a0, %pc_lo12(.LJTI2_0)
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, 8
	ori	$a0, $a0, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI2_1)
	addi.d	$a0, $a0, %pc_lo12(.LJTI2_1)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a0, 524272
	ori	$a0, $a0, 260
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, -524272
	ori	$a0, $a0, 3
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	lu12i.w	$s5, -8
	lu32i.d	$s5, 1
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %.loopexit
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$fp, $fp, -1
	beqz	$fp, .LBB2_52
.LBB2_3:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #       Child Loop BB2_22 Depth 3
                                        #       Child Loop BB2_25 Depth 3
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	beqz	$s0, .LBB2_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$fp, $zero
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_5:                                #   in Loop: Header=BB2_7 Depth=2
	slli.d	$a0, $fp, 3
	alsl.d	$a2, $fp, $a0, 2
	add.d	$a0, $s3, $a2
	add.d	$a1, $s2, $a2
	add.d	$a2, $s1, $a2
	pcaddu18i	$ra, %call36(DivideInternalFPF)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB2_6:                                # %MultiplyInternalFPF.exit
                                        #   in Loop: Header=BB2_7 Depth=2
	addi.d	$fp, $fp, 1
	beq	$fp, $s0, .LBB2_2
.LBB2_7:                                # %.lr.ph
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_22 Depth 3
                                        #       Child Loop BB2_25 Depth 3
	andi	$a0, $fp, 15
	ldx.bu	$a0, $s6, $a0
	bltu	$s7, $a0, .LBB2_6
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB2_7 Depth=2
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s8, $a0
	add.d	$a0, $s8, $a0
	jr	$a0
.LBB2_9:                                #   in Loop: Header=BB2_7 Depth=2
	slli.d	$a0, $fp, 3
	alsl.d	$a0, $fp, $a0, 2
	add.d	$a1, $s3, $a0
	add.d	$a2, $s2, $a0
	add.d	$a3, $s1, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(AddSubInternalFPF)
	jirl	$ra, $ra, 0
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_10:                               #   in Loop: Header=BB2_7 Depth=2
	slli.d	$a0, $fp, 3
	alsl.d	$a2, $fp, $a0, 2
	ldx.bu	$a1, $s3, $a2
	ldx.bu	$a0, $s2, $a2
	alsl.d	$a3, $a1, $a1, 2
	add.d	$a0, $a3, $a0
	add.d	$s4, $s1, $a2
	ori	$a3, $zero, 24
	bltu	$a3, $a0, .LBB2_38
# %bb.11:                               #   in Loop: Header=BB2_7 Depth=2
	slli.d	$a0, $a0, 2
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	ldx.w	$a3, $a4, $a0
	add.d	$a0, $s3, $a2
	add.d	$a3, $a4, $a3
	add.d	$a2, $s2, $a2
	jr	$a3
.LBB2_12:                               #   in Loop: Header=BB2_7 Depth=2
	ld.w	$a1, $s4, 8
	ld.d	$a3, $s4, 0
	st.w	$a1, $a0, 8
	st.d	$a3, $a0, 0
	ld.b	$a0, $a2, 1
	b	.LBB2_31
.LBB2_13:                               #   in Loop: Header=BB2_7 Depth=2
	slli.d	$a0, $fp, 3
	alsl.d	$a0, $fp, $a0, 2
	add.d	$a1, $s3, $a0
	add.d	$a2, $s2, $a0
	add.d	$a3, $s1, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(AddSubInternalFPF)
	jirl	$ra, $ra, 0
	b	.LBB2_6
.LBB2_14:                               #   in Loop: Header=BB2_7 Depth=2
	ld.hu	$t1, $a2, 4
	ld.hu	$t0, $a2, 6
	ld.hu	$a7, $a2, 8
	ld.hu	$a3, $a0, 4
	ld.hu	$a5, $a0, 6
	ld.hu	$a6, $a0, 8
	ld.hu	$t2, $a0, 10
	ld.hu	$a4, $a2, 10
	or	$a3, $a5, $a3
	or	$a3, $a3, $a6
	or	$a3, $a3, $t2
	beqz	$a3, .LBB2_16
# %bb.15:                               #   in Loop: Header=BB2_7 Depth=2
	or	$a3, $t0, $t1
	or	$a3, $a3, $a7
	or	$a3, $a3, $a4
	bnez	$a3, .LBB2_17
.LBB2_16:                               #   in Loop: Header=BB2_7 Depth=2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.w	$a1, $s4, 0
	st.d	$zero, $s4, 4
	ld.bu	$a1, $a0, 0
.LBB2_17:                               #   in Loop: Header=BB2_7 Depth=2
	ori	$t2, $zero, 1
	beq	$a1, $t2, .LBB2_19
# %bb.18:                               #   in Loop: Header=BB2_7 Depth=2
	ld.bu	$a1, $a2, 0
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ori	$a3, $zero, 2
	sub.d	$t2, $a3, $a1
.LBB2_19:                               # %.preheader121.i
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$a1, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a3, $zero
	ld.b	$t3, $a0, 1
	ld.b	$t4, $a2, 1
	ld.h	$t5, $a0, 2
	ld.h	$a2, $a2, 2
	st.b	$t2, $s4, 0
	xor	$t2, $t4, $t3
	st.b	$t2, $s4, 1
	add.d	$a2, $a2, $t5
	st.h	$a2, $s4, 2
	st.d	$zero, $s4, 4
	ori	$t2, $zero, 64
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	b	.LBB2_22
	.p2align	4, , 16
.LBB2_20:                               # %.thread.i
                                        #   in Loop: Header=BB2_22 Depth=3
	bstrpick.d	$t4, $a1, 15, 1
	move	$t3, $a1
	move	$a1, $t4
.LBB2_21:                               #   in Loop: Header=BB2_22 Depth=3
	slli.d	$t4, $t1, 15
	bstrpick.d	$t1, $t1, 15, 1
	bstrpick.d	$t5, $t0, 15, 1
	slli.d	$t0, $t0, 15
	or	$t4, $t4, $t5
	bstrpick.d	$t5, $a7, 15, 1
	slli.d	$a7, $a7, 15
	or	$t5, $t0, $t5
	bstrpick.d	$a4, $a4, 15, 1
	or	$a4, $a7, $a4
	st.h	$a1, $s4, 4
	bstrpick.d	$a7, $a5, 15, 1
	slli.d	$t0, $t3, 15
	slli.d	$t3, $a5, 15
	or	$a5, $t0, $a7
	st.h	$a5, $s4, 6
	bstrpick.d	$a7, $a6, 15, 1
	vshuf4i.h	$vr1, $vr0, 11
	vinsgr2vr.h	$vr1, $a3, 2
	vinsgr2vr.h	$vr1, $a6, 3
	or	$a6, $t3, $a7
	st.h	$a6, $s4, 8
	pcalau12i	$a7, %pc_hi20(.LCPI2_0)
	vld	$vr2, $a7, %pc_lo12(.LCPI2_0)
	pcalau12i	$a7, %pc_hi20(.LCPI2_1)
	vld	$vr3, $a7, %pc_lo12(.LCPI2_1)
	vshuf4i.h	$vr4, $vr0, 50
	vinsgr2vr.h	$vr4, $a3, 3
	vsrl.h	$vr5, $vr4, $vr2
	vsll.h	$vr1, $vr1, $vr3
	vor.v	$vr1, $vr1, $vr5
	vpickve2gr.h	$a3, $vr1, 3
	vstelm.h	$vr1, $s4, 10, 3
	vsrl.h	$vr0, $vr0, $vr2
	vsll.h	$vr2, $vr4, $vr3
	addi.w	$t2, $t2, -1
	vor.v	$vr0, $vr2, $vr0
	move	$t0, $t4
	move	$a7, $t5
	beqz	$t2, .LBB2_24
.LBB2_22:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$t3, $a4, 1
	beqz	$t3, .LBB2_20
# %bb.23:                               # %.preheader120.preheader.i
                                        #   in Loop: Header=BB2_22 Depth=3
	ld.h	$t3, $a0, 10
	bstrpick.d	$t3, $t3, 15, 0
	bstrpick.d	$a3, $a3, 15, 0
	add.d	$a3, $t3, $a3
	st.h	$a3, $s4, 10
	ld.h	$t3, $a0, 8
	srli.d	$t4, $a3, 16
	bstrpick.d	$a6, $a6, 15, 0
	bstrpick.d	$t3, $t3, 15, 0
	add.d	$a6, $t4, $a6
	add.d	$a6, $a6, $t3
	st.h	$a6, $s4, 8
	ld.h	$t3, $a0, 6
	srli.d	$t4, $a6, 16
	bstrpick.d	$a5, $a5, 15, 0
	bstrpick.d	$t3, $t3, 15, 0
	add.d	$a5, $t3, $a5
	add.d	$a5, $a5, $t4
	st.h	$a5, $s4, 6
	ld.h	$t3, $a0, 4
	srli.d	$t4, $a5, 16
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$t3, $t3, 15, 0
	add.d	$a1, $t3, $a1
	add.d	$t3, $a1, $t4
	srli.d	$a1, $t3, 1
	and	$a1, $a1, $s5
	bstrpick.d	$t4, $t3, 15, 1
	or	$a1, $a1, $t4
	b	.LBB2_21
.LBB2_24:                               # %.preheader.i
                                        #   in Loop: Header=BB2_7 Depth=2
	ext.w.h	$a4, $a1
	vpickve2gr.h	$a0, $vr0, 1
	bltz	$a4, .LBB2_27
	.p2align	4, , 16
.LBB2_25:                               # %.lr.ph.i
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a4, %pc_hi20(.LCPI2_2)
	vld	$vr2, $a4, %pc_lo12(.LCPI2_2)
	pcalau12i	$a4, %pc_hi20(.LCPI2_3)
	vld	$vr3, $a4, %pc_lo12(.LCPI2_3)
	vsrl.h	$vr0, $vr0, $vr2
	slli.d	$a0, $a0, 1
	vsll.h	$vr1, $vr1, $vr3
	vor.v	$vr1, $vr1, $vr0
	bstrpick.d	$a4, $a3, 15, 15
	vpickve2gr.h	$a3, $vr1, 3
	slli.d	$a7, $a6, 1
	bstrpick.d	$t0, $a6, 15, 15
	or	$a6, $a7, $a4
	slli.d	$a4, $a5, 1
	bstrpick.d	$a7, $a5, 15, 15
	or	$a5, $a4, $t0
	slli.d	$a1, $a1, 1
	or	$a1, $a1, $a7
	ext.w.h	$a1, $a1
	addi.d	$a2, $a2, -1
	vextrins.h	$vr0, $vr1, 1
	vinsgr2vr.h	$vr0, $a0, 1
	vextrins.h	$vr0, $vr1, 32
	vextrins.h	$vr0, $vr1, 50
	bgez	$a1, .LBB2_25
# %bb.26:                               # %._crit_edge.i
                                        #   in Loop: Header=BB2_7 Depth=2
	st.h	$a3, $s4, 10
	st.h	$a6, $s4, 8
	st.h	$a5, $s4, 6
	st.h	$a1, $s4, 4
	st.h	$a2, $s4, 2
.LBB2_27:                               #   in Loop: Header=BB2_7 Depth=2
	vpickve2gr.h	$a1, $vr1, 0
	vpickve2gr.h	$a2, $vr1, 1
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	vpickve2gr.h	$a1, $vr1, 2
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 48
	bnez	$a0, .LBB2_38
# %bb.28:                               #   in Loop: Header=BB2_7 Depth=2
	vpickve2gr.h	$a0, $vr1, 3
	ori	$a0, $a0, 1
	st.h	$a0, $s4, 10
	b	.LBB2_38
.LBB2_29:                               #   in Loop: Header=BB2_7 Depth=2
	ld.w	$a0, $s4, 8
	ld.d	$a1, $s4, 0
	st.w	$a0, $a2, 8
	st.d	$a1, $a2, 0
	b	.LBB2_38
.LBB2_30:                               #   in Loop: Header=BB2_7 Depth=2
	ld.w	$a1, $s4, 8
	ld.d	$a3, $s4, 0
	st.w	$a1, $a2, 8
	st.d	$a3, $a2, 0
	ld.b	$a0, $a0, 1
.LBB2_31:                               #   in Loop: Header=BB2_7 Depth=2
	ld.b	$a1, $s4, 1
	xor	$a0, $a1, $a0
	st.b	$a0, $s4, 1
	b	.LBB2_38
.LBB2_32:                               #   in Loop: Header=BB2_7 Depth=2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $s4, 0
	lu12i.w	$a0, 4
	st.h	$a0, $s4, 4
	st.w	$zero, $s4, 6
	st.h	$zero, $s4, 10
	b	.LBB2_38
.LBB2_33:                               #   in Loop: Header=BB2_7 Depth=2
	ld.hu	$a1, $a0, 4
	ld.hu	$a3, $a2, 4
	bltu	$a3, $a1, .LBB2_37
# %bb.34:                               #   in Loop: Header=BB2_7 Depth=2
	bgeu	$a1, $a3, .LBB2_36
.LBB2_35:                               #   in Loop: Header=BB2_7 Depth=2
	move	$a0, $a2
	b	.LBB2_37
.LBB2_36:                               #   in Loop: Header=BB2_7 Depth=2
	ld.hu	$a1, $a0, 6
	ld.hu	$a3, $a2, 6
	bgeu	$a3, $a1, .LBB2_47
.LBB2_37:                               # %choose_nan.exit.i
                                        #   in Loop: Header=BB2_7 Depth=2
	ld.w	$a1, $s4, 8
	ld.d	$a2, $s4, 0
	st.w	$a1, $a0, 8
	st.d	$a2, $a0, 0
	.p2align	4, , 16
.LBB2_38:                               #   in Loop: Header=BB2_7 Depth=2
	ld.bu	$a0, $s4, 0
	addi.d	$a1, $a0, -1
	ori	$a2, $zero, 1
	bltu	$a2, $a1, .LBB2_6
# %bb.39:                               #   in Loop: Header=BB2_7 Depth=2
	ld.hu	$a1, $s4, 4
	ld.hu	$a2, $s4, 6
	ld.hu	$a3, $s4, 8
	ld.hu	$a4, $s4, 10
	or	$a1, $a2, $a1
	or	$a1, $a1, $a3
	or	$a1, $a1, $a4
	bnez	$a1, .LBB2_41
# %bb.40:                               #   in Loop: Header=BB2_7 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 0
.LBB2_41:                               #   in Loop: Header=BB2_7 Depth=2
	ld.hu	$a1, $s4, 2
	lu12i.w	$a2, 8
	bne	$a1, $a2, .LBB2_44
# %bb.42:                               #   in Loop: Header=BB2_7 Depth=2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.h	$a1, $s4, 2
	beqz	$a0, .LBB2_6
# %bb.43:                               # %denormalize.exit.thread7.i.i
                                        #   in Loop: Header=BB2_7 Depth=2
	ld.h	$a0, $s4, 6
	ld.hu	$a1, $s4, 4
	ld.h	$a2, $s4, 8
	ld.h	$a3, $s4, 10
	bstrpick.d	$a4, $a0, 15, 1
	slli.d	$a5, $a1, 15
	or	$a4, $a5, $a4
	bstrpick.d	$a5, $a2, 15, 1
	slli.d	$a0, $a0, 15
	or	$a5, $a0, $a5
	bstrpick.d	$a0, $a3, 15, 1
	slli.d	$a2, $a2, 15
	or	$a0, $a2, $a0
	srli.d	$a1, $a1, 1
	st.h	$a1, $s4, 4
	st.h	$a4, $s4, 6
	st.h	$a5, $s4, 8
	b	.LBB2_46
.LBB2_44:                               # %denormalize.exit.i.i
                                        #   in Loop: Header=BB2_7 Depth=2
	beqz	$a0, .LBB2_6
# %bb.45:                               # %denormalize.exit.i._crit_edge.i
                                        #   in Loop: Header=BB2_7 Depth=2
	ld.hu	$a0, $s4, 10
.LBB2_46:                               #   in Loop: Header=BB2_7 Depth=2
	bstrpick.d	$a0, $a0, 15, 3
	slli.d	$a0, $a0, 3
	st.h	$a0, $s4, 10
	b	.LBB2_6
.LBB2_47:                               #   in Loop: Header=BB2_7 Depth=2
	bltu	$a1, $a3, .LBB2_35
# %bb.48:                               #   in Loop: Header=BB2_7 Depth=2
	ld.hu	$a1, $a0, 8
	ld.hu	$a3, $a2, 8
	bltu	$a3, $a1, .LBB2_37
# %bb.49:                               #   in Loop: Header=BB2_7 Depth=2
	bltu	$a1, $a3, .LBB2_35
# %bb.50:                               #   in Loop: Header=BB2_7 Depth=2
	ld.hu	$a1, $a0, 10
	ld.hu	$a3, $a2, 10
	bltu	$a3, $a1, .LBB2_37
# %bb.51:                               #   in Loop: Header=BB2_7 Depth=2
	sltu	$a1, $a1, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	b	.LBB2_37
.LBB2_52:                               # %._crit_edge
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(StopStopwatch)
	jr	$t8
.Lfunc_end2:
	.size	DoEmFloatIteration, .Lfunc_end2-DoEmFloatIteration
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_9-.LJTI2_0
	.word	.LBB2_13-.LJTI2_0
	.word	.LBB2_10-.LJTI2_0
	.word	.LBB2_5-.LJTI2_0
.LJTI2_1:
	.word	.LBB2_12-.LJTI2_1
	.word	.LBB2_12-.LJTI2_1
	.word	.LBB2_12-.LJTI2_1
	.word	.LBB2_32-.LJTI2_1
	.word	.LBB2_29-.LJTI2_1
	.word	.LBB2_30-.LJTI2_1
	.word	.LBB2_14-.LJTI2_1
	.word	.LBB2_14-.LJTI2_1
	.word	.LBB2_30-.LJTI2_1
	.word	.LBB2_29-.LJTI2_1
	.word	.LBB2_30-.LJTI2_1
	.word	.LBB2_14-.LJTI2_1
	.word	.LBB2_14-.LJTI2_1
	.word	.LBB2_30-.LJTI2_1
	.word	.LBB2_29-.LJTI2_1
	.word	.LBB2_32-.LJTI2_1
	.word	.LBB2_12-.LJTI2_1
	.word	.LBB2_12-.LJTI2_1
	.word	.LBB2_12-.LJTI2_1
	.word	.LBB2_29-.LJTI2_1
	.word	.LBB2_37-.LJTI2_1
	.word	.LBB2_37-.LJTI2_1
	.word	.LBB2_37-.LJTI2_1
	.word	.LBB2_37-.LJTI2_1
	.word	.LBB2_33-.LJTI2_1
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function AddSubInternalFPF
	.type	AddSubInternalFPF,@function
AddSubInternalFPF:                      # @AddSubInternalFPF
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.bu	$a5, $a1, 0
	ld.bu	$a4, $a2, 0
	alsl.d	$a6, $a5, $a5, 2
	add.d	$a6, $a6, $a4
	ori	$a7, $zero, 24
	bltu	$a7, $a6, .LBB3_39
# %bb.1:
	slli.d	$a6, $a6, 2
	pcalau12i	$a7, %pc_hi20(.LJTI3_0)
	addi.d	$a7, $a7, %pc_lo12(.LJTI3_0)
	ldx.w	$a6, $a7, $a6
	add.d	$a6, $a7, $a6
	jr	$a6
.LBB3_2:                                # %choose_nan.exit
	ld.w	$a0, $a3, 8
	ld.d	$a2, $a3, 0
	st.w	$a0, $a1, 8
	st.d	$a2, $a1, 0
	b	.LBB3_39
.LBB3_3:
	ld.w	$a1, $a3, 8
	ld.d	$a4, $a3, 0
	st.w	$a1, $a2, 8
	st.d	$a4, $a2, 0
	ld.b	$a1, $a3, 1
	xor	$a0, $a1, $a0
	st.b	$a0, $a3, 1
	b	.LBB3_39
.LBB3_4:
	ld.w	$a0, $a3, 8
	ld.d	$a1, $a3, 0
	st.w	$a0, $a2, 8
	st.d	$a1, $a2, 0
	b	.LBB3_39
.LBB3_5:
	ld.bu	$a6, $a1, 1
	ld.h	$t8, $a1, 2
	ld.hu	$a7, $a1, 4
	ld.hu	$t2, $a1, 6
	ld.hu	$t4, $a1, 8
	ld.hu	$t1, $a1, 10
	ld.bu	$a1, $a2, 1
	ld.h	$fp, $a2, 2
	ld.hu	$t0, $a2, 4
	ld.hu	$t3, $a2, 6
	ld.hu	$t5, $a2, 8
	ld.hu	$a2, $a2, 10
	bstrpick.d	$t6, $t8, 15, 0
	bstrpick.d	$t7, $fp, 15, 0
	bne	$t6, $t7, .LBB3_7
# %bb.6:
	addi.d	$t7, $a5, -1
	sltui	$t7, $t7, 1
	addi.d	$t8, $a4, -1
	sltui	$t8, $t8, 1
	or	$t7, $t7, $t8
	ori	$t8, $zero, 2
	sub.d	$t7, $t8, $t7
	st.b	$t7, $a3, 0
	move	$s0, $a6
	b	.LBB3_26
.LBB3_7:
	sub.d	$t8, $t8, $fp
	blez	$t8, .LBB3_18
# %bb.8:
	beqz	$a4, .LBB3_22
# %bb.9:
	ori	$t7, $zero, 63
	bgeu	$t7, $t8, .LBB3_11
# %bb.10:
	move	$t7, $zero
	move	$fp, $zero
	move	$s1, $zero
	ori	$a2, $zero, 1
	b	.LBB3_23
	.p2align	4, , 16
.LBB3_11:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t7, $t0, 15, 1
	slli.d	$t0, $t0, 15
	bstrpick.d	$fp, $t3, 15, 1
	or	$fp, $t0, $fp
	bstrpick.d	$t0, $t5, 15, 1
	slli.d	$t3, $t3, 15
	or	$s1, $t3, $t0
	andi	$t0, $a2, 1
	bstrpick.d	$a2, $a2, 15, 1
	slli.d	$t3, $t5, 15
	or	$a2, $t3, $a2
	addi.w	$t8, $t8, -1
	or	$a2, $a2, $t0
	move	$t5, $s1
	move	$t3, $fp
	move	$t0, $t7
	bnez	$t8, .LBB3_11
	b	.LBB3_23
.LBB3_12:
	ld.hu	$a0, $a1, 4
	ld.hu	$a4, $a2, 4
	bltu	$a4, $a0, .LBB3_2
# %bb.13:
	bgeu	$a0, $a4, .LBB3_49
.LBB3_14:
	move	$a1, $a2
	b	.LBB3_2
.LBB3_15:
	ld.d	$a4, $a3, 0
	ld.w	$a5, $a3, 8
	st.d	$a4, $a1, 0
	st.w	$a5, $a1, 8
	ld.bu	$a1, $a1, 1
	ld.bu	$a2, $a2, 1
	xor	$a1, $a2, $a1
	beq	$a1, $a0, .LBB3_39
# %bb.16:
	st.b	$zero, $a3, 1
	b	.LBB3_39
.LBB3_17:
	lu12i.w	$a0, 524272
	ori	$a0, $a0, 260
	st.w	$a0, $a3, 0
	lu12i.w	$a0, 4
	st.h	$a0, $a3, 4
	st.w	$zero, $a3, 6
	st.h	$zero, $a3, 10
	b	.LBB3_39
.LBB3_18:
	beqz	$a5, .LBB3_24
# %bb.19:
	sub.d	$t6, $zero, $t8
	ori	$t8, $zero, 63
	bgeu	$t8, $t6, .LBB3_21
# %bb.20:
	move	$s1, $zero
	move	$fp, $zero
	move	$t8, $zero
	ori	$t1, $zero, 1
	b	.LBB3_25
	.p2align	4, , 16
.LBB3_21:                               # %.lr.ph.i84
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t8, $a7, 15, 1
	slli.d	$a7, $a7, 15
	bstrpick.d	$fp, $t2, 15, 1
	or	$fp, $a7, $fp
	bstrpick.d	$a7, $t4, 15, 1
	slli.d	$t2, $t2, 15
	or	$s1, $t2, $a7
	andi	$a7, $t1, 1
	bstrpick.d	$t1, $t1, 15, 1
	slli.d	$t2, $t4, 15
	or	$t1, $t2, $t1
	addi.w	$t6, $t6, -1
	or	$t1, $t1, $a7
	move	$t4, $s1
	move	$t2, $fp
	move	$a7, $t8
	bnez	$t6, .LBB3_21
	b	.LBB3_25
.LBB3_22:
	move	$t7, $t0
	move	$fp, $t3
	move	$s1, $t5
.LBB3_23:                               # %StickyShiftRightMant.exit
	st.b	$a5, $a3, 0
	move	$s0, $a6
	move	$t0, $t7
	move	$t3, $fp
	move	$t5, $s1
	b	.LBB3_26
.LBB3_24:
	move	$s1, $t4
	move	$fp, $t2
	move	$t8, $a7
.LBB3_25:                               # %StickyShiftRightMant.exit97
	st.b	$a4, $a3, 0
	xor	$s0, $a1, $a0
	move	$t6, $t7
	move	$t4, $s1
	move	$t2, $fp
	move	$a7, $t8
.LBB3_26:
	st.b	$s0, $a3, 1
	xor	$a6, $a1, $a6
	st.h	$t6, $a3, 2
	bne	$a6, $a0, .LBB3_29
# %bb.27:                               # %.preheader
	bstrpick.d	$a0, $a2, 15, 0
	bstrpick.d	$a1, $t1, 15, 0
	add.d	$a0, $a1, $a0
	srli.d	$a1, $a0, 16
	st.h	$a0, $a3, 10
	bstrpick.d	$a2, $t4, 15, 0
	bstrpick.d	$a4, $t5, 15, 0
	add.d	$a1, $a2, $a1
	add.d	$a1, $a1, $a4
	srli.d	$a2, $a1, 16
	st.h	$a1, $a3, 8
	bstrpick.d	$a4, $t2, 15, 0
	bstrpick.d	$a5, $t3, 15, 0
	add.d	$a2, $a2, $a4
	add.d	$a2, $a2, $a5
	srli.d	$a4, $a2, 16
	st.h	$a2, $a3, 6
	bstrpick.d	$a5, $a7, 15, 0
	bstrpick.d	$a6, $t0, 15, 0
	add.d	$a4, $a4, $a5
	add.d	$a4, $a4, $a6
	srli.d	$a5, $a4, 16
	st.h	$a4, $a3, 4
	bnez	$a5, .LBB3_31
# %bb.28:
	ext.w.h	$a0, $a4
	bgez	$a0, .LBB3_39
	b	.LBB3_32
.LBB3_29:                               # %.preheader115
	bstrpick.d	$a6, $t1, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	sub.d	$t1, $a6, $a2
	bstrpick.d	$a2, $t1, 16, 16
	st.h	$t1, $a3, 10
	bstrpick.d	$a6, $t4, 15, 0
	bstrpick.d	$t4, $t5, 15, 0
	add.d	$a2, $a2, $t4
	sub.d	$a2, $a6, $a2
	bstrpick.d	$a6, $a2, 16, 16
	st.h	$a2, $a3, 8
	bstrpick.d	$t2, $t2, 15, 0
	bstrpick.d	$t3, $t3, 15, 0
	add.d	$a6, $a6, $t3
	sub.d	$a6, $t2, $a6
	bstrpick.d	$t2, $a6, 16, 16
	st.h	$a6, $a3, 6
	bstrpick.d	$a7, $a7, 15, 0
	bstrpick.d	$t0, $t0, 15, 0
	add.d	$t0, $t2, $t0
	sub.d	$a7, $a7, $t0
	slli.d	$t0, $a7, 47
	st.h	$a7, $a3, 4
	bltz	$t0, .LBB3_33
# %bb.30:
	bstrpick.d	$a0, $t1, 15, 0
	bstrpick.d	$a1, $a2, 15, 0
	bstrpick.d	$a2, $a6, 15, 0
	bstrpick.d	$a6, $a7, 15, 0
	b	.LBB3_34
.LBB3_31:
	addi.d	$a5, $t6, 1
	st.h	$a5, $a3, 2
	srli.d	$a5, $a4, 1
	lu12i.w	$a6, 8
	or	$a5, $a5, $a6
	bstrpick.d	$a6, $a2, 15, 1
	slli.d	$a4, $a4, 15
	or	$a4, $a4, $a6
	st.h	$a4, $a3, 6
	bstrpick.d	$a4, $a1, 15, 1
	slli.d	$a2, $a2, 15
	or	$a2, $a2, $a4
	st.h	$a2, $a3, 8
	bstrpick.d	$a0, $a0, 15, 1
	slli.d	$a1, $a1, 15
	or	$a0, $a1, $a0
	st.h	$a0, $a3, 10
	st.h	$a5, $a3, 4
.LBB3_32:
	ori	$a0, $zero, 2
	st.b	$a0, $a3, 0
	b	.LBB3_39
.LBB3_33:                               # %.loopexit.loopexit
	xor	$a0, $a1, $a0
	st.b	$a0, $a3, 1
	bstrpick.d	$a0, $t1, 15, 0
	sub.d	$a1, $zero, $a0
	srli.d	$t0, $a1, 31
	bstrpick.d	$a0, $a1, 15, 0
	st.h	$a1, $a3, 10
	bstrpick.d	$a1, $a2, 15, 0
	sub.w	$a2, $t0, $a1
	srli.d	$t0, $a2, 16
	bstrpick.d	$a1, $a2, 15, 0
	st.h	$a2, $a3, 8
	bstrpick.d	$a2, $a6, 15, 0
	sub.w	$a6, $t0, $a2
	bstrpick.d	$t0, $a6, 31, 16
	bstrpick.d	$a2, $a6, 15, 0
	st.h	$a6, $a3, 6
	sub.d	$a7, $t0, $a7
	bstrpick.d	$a6, $a7, 15, 0
	st.h	$a7, $a3, 4
.LBB3_34:                               # %.loopexit
	or	$a2, $a2, $a6
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	beqz	$a0, .LBB3_38
# %bb.35:
	ori	$a0, $zero, 2
	beq	$a5, $a0, .LBB3_37
# %bb.36:
	bne	$a4, $a0, .LBB3_39
.LBB3_37:
	move	$a0, $a3
	move	$fp, $a3
	pcaddu18i	$ra, %call36(normalize)
	jirl	$ra, $ra, 0
	move	$a3, $fp
	b	.LBB3_39
.LBB3_38:
	st.h	$zero, $a3, 0
.LBB3_39:
	ld.bu	$a0, $a3, 0
	addi.d	$a1, $a0, -1
	ori	$a2, $zero, 1
	bltu	$a2, $a1, .LBB3_48
# %bb.40:
	ld.hu	$a1, $a3, 4
	ld.hu	$a2, $a3, 6
	ld.hu	$a4, $a3, 8
	ld.hu	$a5, $a3, 10
	or	$a1, $a2, $a1
	or	$a1, $a1, $a4
	or	$a1, $a1, $a5
	bnez	$a1, .LBB3_42
# %bb.41:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	move	$fp, $a3
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a3, $fp
	ld.bu	$a0, $fp, 0
.LBB3_42:
	ld.hu	$a2, $a3, 2
	lu12i.w	$a1, 8
	bne	$a2, $a1, .LBB3_45
# %bb.43:
	ori	$a1, $a1, 1
	st.h	$a1, $a3, 2
	beqz	$a0, .LBB3_48
# %bb.44:                               # %denormalize.exit.thread7.i
	ld.h	$a0, $a3, 6
	ld.hu	$a1, $a3, 4
	ld.h	$a2, $a3, 8
	ld.hu	$a4, $a3, 10
	bstrpick.d	$a5, $a0, 15, 1
	slli.d	$a6, $a1, 15
	or	$a5, $a6, $a5
	bstrpick.d	$a6, $a2, 15, 1
	slli.d	$a0, $a0, 15
	or	$a6, $a0, $a6
	srli.d	$a0, $a4, 1
	slli.d	$a2, $a2, 15
	or	$a0, $a2, $a0
	andi	$a2, $a4, 1
	or	$a0, $a0, $a2
	srli.d	$a1, $a1, 1
	st.h	$a1, $a3, 4
	st.h	$a5, $a3, 6
	st.h	$a6, $a3, 8
	b	.LBB3_47
.LBB3_45:                               # %denormalize.exit.i
	beqz	$a0, .LBB3_48
# %bb.46:                               # %denormalize.exit.i._crit_edge
	ld.hu	$a0, $a3, 10
.LBB3_47:
	bstrpick.d	$a0, $a0, 15, 3
	slli.d	$a0, $a0, 3
	st.h	$a0, $a3, 10
.LBB3_48:                               # %RoundInternalFPF.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB3_49:
	ld.hu	$a0, $a1, 6
	ld.hu	$a4, $a2, 6
	bltu	$a4, $a0, .LBB3_2
# %bb.50:
	bltu	$a0, $a4, .LBB3_14
# %bb.51:
	ld.hu	$a0, $a1, 8
	ld.hu	$a4, $a2, 8
	bltu	$a4, $a0, .LBB3_2
# %bb.52:
	bltu	$a0, $a4, .LBB3_14
# %bb.53:
	ld.hu	$a0, $a1, 10
	ld.hu	$a4, $a2, 10
	sltu	$a0, $a4, $a0
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a1, $a0, $a2
	b	.LBB3_2
.Lfunc_end3:
	.size	AddSubInternalFPF, .Lfunc_end3-AddSubInternalFPF
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_15-.LJTI3_0
	.word	.LBB3_3-.LJTI3_0
	.word	.LBB3_3-.LJTI3_0
	.word	.LBB3_3-.LJTI3_0
	.word	.LBB3_4-.LJTI3_0
	.word	.LBB3_2-.LJTI3_0
	.word	.LBB3_5-.LJTI3_0
	.word	.LBB3_5-.LJTI3_0
	.word	.LBB3_3-.LJTI3_0
	.word	.LBB3_4-.LJTI3_0
	.word	.LBB3_2-.LJTI3_0
	.word	.LBB3_5-.LJTI3_0
	.word	.LBB3_5-.LJTI3_0
	.word	.LBB3_3-.LJTI3_0
	.word	.LBB3_4-.LJTI3_0
	.word	.LBB3_2-.LJTI3_0
	.word	.LBB3_2-.LJTI3_0
	.word	.LBB3_2-.LJTI3_0
	.word	.LBB3_17-.LJTI3_0
	.word	.LBB3_4-.LJTI3_0
	.word	.LBB3_2-.LJTI3_0
	.word	.LBB3_2-.LJTI3_0
	.word	.LBB3_2-.LJTI3_0
	.word	.LBB3_2-.LJTI3_0
	.word	.LBB3_12-.LJTI3_0
                                        # -- End function
	.text
	.globl	RoundInternalFPF                # -- Begin function RoundInternalFPF
	.p2align	5
	.type	RoundInternalFPF,@function
RoundInternalFPF:                       # @RoundInternalFPF
# %bb.0:
	ld.bu	$a1, $a0, 0
	addi.d	$a2, $a1, -1
	ori	$a3, $zero, 1
	bltu	$a3, $a2, .LBB4_8
# %bb.1:
	ld.hu	$a2, $a0, 4
	ld.hu	$a3, $a0, 6
	ld.hu	$a4, $a0, 8
	ld.hu	$a5, $a0, 10
	or	$a2, $a3, $a2
	or	$a2, $a2, $a4
	or	$a2, $a2, $a5
	bnez	$a2, .LBB4_3
# %bb.2:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.Lstr)
	addi.d	$a1, $a1, %pc_lo12(.Lstr)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.bu	$a1, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB4_3:
	ld.hu	$a3, $a0, 2
	lu12i.w	$a2, 8
	bne	$a3, $a2, .LBB4_6
# %bb.4:
	ori	$a2, $a2, 1
	st.h	$a2, $a0, 2
	beqz	$a1, .LBB4_8
# %bb.5:                                # %denormalize.exit.thread7
	ld.h	$a1, $a0, 6
	ld.hu	$a2, $a0, 4
	ld.h	$a3, $a0, 8
	ld.hu	$a4, $a0, 10
	bstrpick.d	$a5, $a1, 15, 1
	slli.d	$a6, $a2, 15
	or	$a5, $a6, $a5
	bstrpick.d	$a6, $a3, 15, 1
	slli.d	$a1, $a1, 15
	or	$a1, $a1, $a6
	srli.d	$a6, $a4, 1
	slli.d	$a3, $a3, 15
	or	$a3, $a3, $a6
	andi	$a4, $a4, 1
	or	$a3, $a3, $a4
	srli.d	$a2, $a2, 1
	st.h	$a2, $a0, 4
	st.h	$a5, $a0, 6
	st.h	$a1, $a0, 8
	st.h	$a3, $a0, 10
	b	.LBB4_7
.LBB4_6:                                # %denormalize.exit
	beqz	$a1, .LBB4_8
.LBB4_7:
	ld.hu	$a1, $a0, 10
	bstrpick.d	$a1, $a1, 15, 3
	slli.d	$a1, $a1, 3
	st.h	$a1, $a0, 10
.LBB4_8:                                # %denormalize.exit.thread
	ret
.Lfunc_end4:
	.size	RoundInternalFPF, .Lfunc_end4-RoundInternalFPF
                                        # -- End function
	.p2align	5                               # -- Begin function normalize
	.type	normalize,@function
normalize:                              # @normalize
# %bb.0:
	ld.h	$a1, $a0, 4
	bltz	$a1, .LBB5_4
# %bb.1:                                # %.lr.ph
	ld.hu	$a3, $a0, 10
	ld.hu	$a4, $a0, 8
	ld.hu	$a5, $a0, 6
	ld.hu	$a2, $a0, 2
	.p2align	4, , 16
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a6, $a3, 15, 15
	slli.d	$a3, $a3, 1
	slli.d	$a7, $a4, 1
	bstrpick.d	$t0, $a4, 15, 15
	or	$a4, $a7, $a6
	slli.d	$a6, $a5, 1
	bstrpick.d	$a7, $a5, 15, 15
	or	$a5, $a6, $t0
	slli.d	$a1, $a1, 1
	or	$a1, $a1, $a7
	ext.w.h	$a1, $a1
	addi.d	$a2, $a2, -1
	bgez	$a1, .LBB5_2
# %bb.3:                                # %._crit_edge
	st.h	$a3, $a0, 10
	st.h	$a4, $a0, 8
	st.h	$a5, $a0, 6
	st.h	$a1, $a0, 4
	st.h	$a2, $a0, 2
.LBB5_4:
	ret
.Lfunc_end5:
	.size	normalize, .Lfunc_end5-normalize
                                        # -- End function
	.type	DoEmFloatIteration.jtable,@object # @DoEmFloatIteration.jtable
	.section	.rodata.cst16,"aM",@progbits,16
DoEmFloatIteration.jtable:
	.ascii	"\000\000\000\000\001\001\001\001\002\002\002\002\002\003\003\003"
	.size	DoEmFloatIteration.jtable, 16

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"Error:  zero significand in denormalize"
	.size	.Lstr, 40

	.section	".note.GNU-stack","",@progbits
	.addrsig
