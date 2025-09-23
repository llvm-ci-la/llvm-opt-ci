	.file	"img_luma.c"
	.text
	.globl	getSubImagesLuma                # -- Begin function getSubImagesLuma
	.p2align	5
	.type	getSubImagesLuma,@function
getSubImagesLuma:                       # @getSubImagesLuma
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
	ldptr.w	$a0, $a0, 6396
	addi.w	$s2, $zero, -39
	lu12i.w	$s1, 1
	blt	$a0, $s2, .LBB0_3
# %bb.1:                                # %.lr.ph
	move	$s0, $zero
	ldptr.d	$s3, $fp, 6440
	addi.w	$s4, $a0, -1
	ldptr.w	$s5, $fp, 6392
	addi.w	$s6, $zero, -21
	addi.w	$s7, $zero, -20
	ori	$s8, $s1, 2300
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $fp, 6448
	srai.d	$a1, $s7, 63
	andn	$a1, $s7, $a1
	slt	$a2, $a1, $s4
	ld.d	$a0, $a0, 0
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s4, $a2
	or	$a1, $a1, $a2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s3, $a1
	ldx.d	$a0, $a0, $s0
	ld.h	$a2, $a1, 0
	st.h	$a2, $a0, 0
	st.h	$a2, $a0, 2
	ld.h	$a2, $a1, 0
	st.h	$a2, $a0, 4
	st.h	$a2, $a0, 6
	ld.h	$a2, $a1, 0
	st.h	$a2, $a0, 8
	st.h	$a2, $a0, 10
	ld.h	$a2, $a1, 0
	st.h	$a2, $a0, 12
	st.h	$a2, $a0, 14
	ld.h	$a2, $a1, 0
	st.h	$a2, $a0, 16
	st.h	$a2, $a0, 18
	ld.h	$a2, $a1, 0
	st.h	$a2, $a0, 20
	st.h	$a2, $a0, 22
	ld.h	$a2, $a1, 0
	st.h	$a2, $a0, 24
	st.h	$a2, $a0, 26
	ld.h	$a2, $a1, 0
	st.h	$a2, $a0, 28
	st.h	$a2, $a0, 30
	ld.h	$a2, $a1, 0
	st.h	$a2, $a0, 32
	st.h	$a2, $a0, 34
	ld.h	$a2, $a1, 0
	st.h	$a2, $a0, 36
	st.h	$a2, $a0, 38
	ldptr.w	$a2, $fp, 6392
	alsl.d	$a3, $s5, $a1, 1
	ld.h	$a4, $a3, -2
	addi.d	$a0, $a0, 40
	alsl.d	$a5, $a2, $a0, 1
	slli.d	$a2, $a2, 1
	stx.h	$a4, $a0, $a2
	st.h	$a4, $a5, 2
	ld.h	$a4, $a3, -2
	st.h	$a4, $a5, 4
	st.h	$a4, $a5, 6
	ld.h	$a4, $a3, -2
	st.h	$a4, $a5, 8
	st.h	$a4, $a5, 10
	ld.h	$a4, $a3, -2
	st.h	$a4, $a5, 12
	st.h	$a4, $a5, 14
	ld.h	$a4, $a3, -2
	st.h	$a4, $a5, 16
	st.h	$a4, $a5, 18
	ld.h	$a4, $a3, -2
	st.h	$a4, $a5, 20
	st.h	$a4, $a5, 22
	ld.h	$a4, $a3, -2
	st.h	$a4, $a5, 24
	st.h	$a4, $a5, 26
	ld.h	$a4, $a3, -2
	st.h	$a4, $a5, 28
	st.h	$a4, $a5, 30
	ld.h	$a4, $a3, -2
	st.h	$a4, $a5, 32
	st.h	$a4, $a5, 34
	ld.h	$a3, $a3, -2
	st.h	$a3, $a5, 36
	st.h	$a3, $a5, 38
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ldx.w	$a0, $fp, $s8
	addi.w	$a0, $a0, 19
	addi.d	$s6, $s6, 1
	addi.d	$s0, $s0, 8
	addi.w	$s7, $s7, 1
	blt	$s6, $a0, .LBB0_2
.LBB0_3:                                # %._crit_edge
	ori	$a2, $zero, 2
	move	$a0, $fp
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(getHorSubImageSixTap)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$a0, $fp
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(getVerSubImageSixTap)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 2
	ori	$a4, $zero, 2
	ori	$a5, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(getVerSubImageSixTap)
	jirl	$ra, $ra, 0
	ldptr.w	$a1, $fp, 6396
	blt	$a1, $s2, .LBB0_60
# %bb.4:                                # %.lr.ph46.i
	ldptr.d	$t0, $fp, 6448
	ori	$a0, $s1, 2296
	ldx.w	$a4, $fp, $a0
	ld.d	$a5, $t0, 0
	move	$a7, $zero
	addi.w	$a0, $a4, 40
	addi.w	$a3, $a4, 39
	ld.d	$t2, $a5, 0
	ld.d	$t3, $a5, 16
	ld.d	$t1, $a5, 8
	addi.w	$a1, $a1, 39
	srai.d	$a2, $a1, 63
	andn	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	bstrpick.d	$a6, $a3, 31, 0
	bstrpick.d	$a2, $a3, 30, 3
	slli.d	$t4, $a2, 3
	ori	$t5, $zero, 8
	ori	$t6, $zero, 16
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %._crit_edge.i
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $a1, .LBB0_18
.LBB0_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_10 Depth 2
	slli.d	$a2, $a7, 3
	ldx.d	$t8, $t2, $a2
	ldx.d	$s1, $t3, $a2
	ldx.d	$t7, $t1, $a2
	blez	$a3, .LBB0_11
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	bgeu	$a3, $t5, .LBB0_13
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	move	$s4, $zero
.LBB0_9:                                # %.lr.ph.i.preheader167
                                        #   in Loop: Header=BB0_6 Depth=1
	sub.d	$a2, $a6, $s4
	alsl.d	$s2, $s4, $t7, 1
	alsl.d	$s3, $s4, $s1, 1
	alsl.d	$s4, $s4, $t8, 1
	.p2align	4, , 16
.LBB0_10:                               # %.lr.ph.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$s5, $s4, 0
	ld.hu	$s6, $s3, 0
	add.d	$s5, $s5, $s6
	addi.d	$s5, $s5, 1
	srli.d	$s5, $s5, 1
	st.h	$s5, $s2, 0
	addi.d	$a2, $a2, -1
	addi.d	$s2, $s2, 2
	addi.d	$s3, $s3, 2
	addi.d	$s4, $s4, 2
	bnez	$a2, .LBB0_10
.LBB0_11:                               # %.preheader.i
                                        #   in Loop: Header=BB0_6 Depth=1
	slli.d	$a2, $a3, 1
	bge	$a3, $a0, .LBB0_5
# %bb.12:                               # %.lr.ph43.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ldx.hu	$t8, $t8, $a2
	ldx.hu	$s1, $s1, $a2
	add.d	$t8, $t8, $s1
	addi.d	$t8, $t8, 1
	srli.d	$t8, $t8, 1
	stx.h	$t8, $t7, $a2
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_13:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=1
	sub.d	$a2, $t7, $t8
	move	$s4, $zero
	bltu	$a2, $t6, .LBB0_9
# %bb.14:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=1
	sub.d	$a2, $t7, $s1
	bltu	$a2, $t6, .LBB0_9
# %bb.15:                               # %vector.body.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a2, $t8
	move	$s2, $s1
	move	$s3, $t7
	move	$s4, $t4
	.p2align	4, , 16
.LBB0_16:                               # %vector.body
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, 0
	vld	$vr1, $s2, 0
	vor.v	$vr2, $vr0, $vr1
	vxor.v	$vr0, $vr0, $vr1
	vsrli.h	$vr0, $vr0, 1
	vsub.h	$vr0, $vr2, $vr0
	vst	$vr0, $s3, 0
	addi.d	$s4, $s4, -8
	addi.d	$s3, $s3, 16
	addi.d	$s2, $s2, 16
	addi.d	$a2, $a2, 16
	bnez	$s4, .LBB0_16
# %bb.17:                               # %middle.block
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s4, $t4
	bne	$t4, $a6, .LBB0_9
	b	.LBB0_11
.LBB0_18:                               # %.lr.ph46.i44
	move	$t4, $zero
	addi.w	$a4, $a4, 38
	ld.d	$t5, $a5, 24
	bstrpick.d	$a5, $a4, 31, 0
	addi.d	$a7, $a4, 1
	bstrpick.d	$t1, $a4, 30, 3
	slli.d	$t6, $t1, 3
	ori	$t7, $zero, 8
	ori	$t8, $zero, 16
	slli.d	$a7, $a7, 1
	b	.LBB0_20
	.p2align	4, , 16
.LBB0_19:                               # %._crit_edge.i50
                                        #   in Loop: Header=BB0_20 Depth=1
	addi.d	$t4, $t4, 1
	beq	$t4, $a1, .LBB0_32
.LBB0_20:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_24 Depth 2
	slli.d	$t1, $t4, 3
	ldx.d	$s2, $t3, $t1
	ldx.d	$s3, $t2, $t1
	ldx.d	$s1, $t5, $t1
	blez	$a4, .LBB0_25
# %bb.21:                               # %.lr.ph.preheader.i58
                                        #   in Loop: Header=BB0_20 Depth=1
	bgeu	$a4, $t7, .LBB0_27
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=1
	move	$s6, $zero
.LBB0_23:                               # %.lr.ph.i59.preheader
                                        #   in Loop: Header=BB0_20 Depth=1
	sub.d	$t1, $a5, $s6
	alsl.d	$s4, $s6, $s1, 1
	alsl.d	$s5, $s6, $s3, 1
	addi.d	$s5, $s5, 2
	alsl.d	$s6, $s6, $s2, 1
	.p2align	4, , 16
.LBB0_24:                               # %.lr.ph.i59
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$s7, $s6, 0
	ld.hu	$s8, $s5, 0
	add.d	$s7, $s7, $s8
	addi.d	$s7, $s7, 1
	srli.d	$s7, $s7, 1
	st.h	$s7, $s4, 0
	addi.d	$t1, $t1, -1
	addi.d	$s4, $s4, 2
	addi.d	$s5, $s5, 2
	addi.d	$s6, $s6, 2
	bnez	$t1, .LBB0_24
.LBB0_25:                               # %.preheader.i49
                                        #   in Loop: Header=BB0_20 Depth=1
	slli.d	$t1, $a4, 1
	bge	$a4, $a0, .LBB0_19
# %bb.26:                               # %.lr.ph43.i53
                                        #   in Loop: Header=BB0_20 Depth=1
	ldx.hu	$s4, $s2, $t1
	ldx.hu	$s5, $s3, $a2
	add.d	$s4, $s4, $s5
	addi.d	$s4, $s4, 1
	srli.d	$s4, $s4, 1
	stx.h	$s4, $s1, $t1
	ldx.hu	$s2, $s2, $a7
	ldx.hu	$s3, $s3, $a2
	add.d	$s2, $s2, $s3
	addi.d	$s2, $s2, 1
	srli.d	$s2, $s2, 1
	stx.h	$s2, $s1, $a7
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_27:                               # %vector.memcheck115
                                        #   in Loop: Header=BB0_20 Depth=1
	sub.d	$t1, $s1, $s2
	move	$s6, $zero
	bltu	$t1, $t8, .LBB0_23
# %bb.28:                               # %vector.memcheck115
                                        #   in Loop: Header=BB0_20 Depth=1
	sub.d	$t1, $s1, $s3
	addi.d	$t1, $t1, -2
	bltu	$t1, $t8, .LBB0_23
# %bb.29:                               # %vector.body124.preheader
                                        #   in Loop: Header=BB0_20 Depth=1
	addi.d	$t1, $s3, 2
	move	$s4, $s2
	move	$s5, $s1
	move	$s6, $t6
	.p2align	4, , 16
.LBB0_30:                               # %vector.body124
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s4, 0
	vld	$vr1, $t1, 0
	vor.v	$vr2, $vr0, $vr1
	vxor.v	$vr0, $vr0, $vr1
	vsrli.h	$vr0, $vr0, 1
	vsub.h	$vr0, $vr2, $vr0
	vst	$vr0, $s5, 0
	addi.d	$s6, $s6, -8
	addi.d	$s5, $s5, 16
	addi.d	$t1, $t1, 16
	addi.d	$s4, $s4, 16
	bnez	$s6, .LBB0_30
# %bb.31:                               # %middle.block129
                                        #   in Loop: Header=BB0_20 Depth=1
	move	$s6, $t6
	bne	$t6, $a5, .LBB0_23
	b	.LBB0_25
.LBB0_32:                               # %.lr.ph46.i65
	ld.d	$t3, $t0, 16
	move	$t4, $zero
	ld.d	$t0, $t3, 0
	ld.d	$t2, $t3, 16
	ld.d	$t5, $t3, 8
	bstrpick.d	$t6, $a6, 30, 3
	slli.d	$t6, $t6, 3
	ori	$t7, $zero, 8
	ori	$t8, $zero, 16
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_33:                               # %._crit_edge.i71
                                        #   in Loop: Header=BB0_34 Depth=1
	addi.d	$t4, $t4, 1
	beq	$t4, $a1, .LBB0_46
.LBB0_34:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_44 Depth 2
                                        #     Child Loop BB0_38 Depth 2
	slli.d	$s1, $t4, 3
	ldx.d	$s2, $t0, $s1
	ldx.d	$s3, $t2, $s1
	ldx.d	$s1, $t5, $s1
	blez	$a3, .LBB0_39
# %bb.35:                               # %.lr.ph.i81.preheader
                                        #   in Loop: Header=BB0_34 Depth=1
	bgeu	$a3, $t7, .LBB0_41
# %bb.36:                               #   in Loop: Header=BB0_34 Depth=1
	move	$s7, $zero
.LBB0_37:                               # %.lr.ph.i81.preheader166
                                        #   in Loop: Header=BB0_34 Depth=1
	sub.d	$s4, $a6, $s7
	alsl.d	$s5, $s7, $s1, 1
	alsl.d	$s6, $s7, $s3, 1
	alsl.d	$s7, $s7, $s2, 1
	.p2align	4, , 16
.LBB0_38:                               # %.lr.ph.i81
                                        #   Parent Loop BB0_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$s8, $s7, 0
	ld.hu	$ra, $s6, 0
	add.d	$s8, $s8, $ra
	addi.d	$s8, $s8, 1
	srli.d	$s8, $s8, 1
	st.h	$s8, $s5, 0
	addi.d	$s4, $s4, -1
	addi.d	$s5, $s5, 2
	addi.d	$s6, $s6, 2
	addi.d	$s7, $s7, 2
	bnez	$s4, .LBB0_38
.LBB0_39:                               # %.preheader.i70
                                        #   in Loop: Header=BB0_34 Depth=1
	bge	$a3, $a0, .LBB0_33
# %bb.40:                               # %.lr.ph43.i74
                                        #   in Loop: Header=BB0_34 Depth=1
	ldx.hu	$s2, $s2, $a2
	ldx.hu	$s3, $s3, $a2
	add.d	$s2, $s2, $s3
	addi.d	$s2, $s2, 1
	srli.d	$s2, $s2, 1
	stx.h	$s2, $s1, $a2
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_41:                               # %vector.memcheck132
                                        #   in Loop: Header=BB0_34 Depth=1
	sub.d	$s4, $s1, $s2
	move	$s7, $zero
	bltu	$s4, $t8, .LBB0_37
# %bb.42:                               # %vector.memcheck132
                                        #   in Loop: Header=BB0_34 Depth=1
	sub.d	$s4, $s1, $s3
	bltu	$s4, $t8, .LBB0_37
# %bb.43:                               # %vector.body141.preheader
                                        #   in Loop: Header=BB0_34 Depth=1
	move	$s4, $s2
	move	$s5, $s3
	move	$s6, $s1
	move	$s7, $t6
	.p2align	4, , 16
.LBB0_44:                               # %vector.body141
                                        #   Parent Loop BB0_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s4, 0
	vld	$vr1, $s5, 0
	vor.v	$vr2, $vr0, $vr1
	vxor.v	$vr0, $vr0, $vr1
	vsrli.h	$vr0, $vr0, 1
	vsub.h	$vr0, $vr2, $vr0
	vst	$vr0, $s6, 0
	addi.d	$s7, $s7, -8
	addi.d	$s6, $s6, 16
	addi.d	$s5, $s5, 16
	addi.d	$s4, $s4, 16
	bnez	$s7, .LBB0_44
# %bb.45:                               # %middle.block146
                                        #   in Loop: Header=BB0_34 Depth=1
	move	$s7, $t6
	bne	$t6, $a6, .LBB0_37
	b	.LBB0_39
.LBB0_46:                               # %.lr.ph46.i87
	move	$a3, $zero
	ld.d	$a6, $t3, 24
	bstrpick.d	$t3, $a5, 30, 3
	slli.d	$t3, $t3, 3
	ori	$t4, $zero, 8
	ori	$t5, $zero, 16
	b	.LBB0_48
	.p2align	4, , 16
.LBB0_47:                               # %._crit_edge.i93
                                        #   in Loop: Header=BB0_48 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a1, .LBB0_60
.LBB0_48:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_58 Depth 2
                                        #     Child Loop BB0_52 Depth 2
	slli.d	$t6, $a3, 3
	ldx.d	$t7, $t2, $t6
	ldx.d	$t8, $t0, $t6
	ldx.d	$t6, $a6, $t6
	blez	$a4, .LBB0_53
# %bb.49:                               # %.lr.ph.preheader.i101
                                        #   in Loop: Header=BB0_48 Depth=1
	bgeu	$a4, $t4, .LBB0_55
# %bb.50:                               #   in Loop: Header=BB0_48 Depth=1
	move	$s4, $zero
.LBB0_51:                               # %.lr.ph.i103.preheader
                                        #   in Loop: Header=BB0_48 Depth=1
	sub.d	$s1, $a5, $s4
	alsl.d	$s2, $s4, $t6, 1
	alsl.d	$s3, $s4, $t8, 1
	addi.d	$s3, $s3, 2
	alsl.d	$s4, $s4, $t7, 1
	.p2align	4, , 16
.LBB0_52:                               # %.lr.ph.i103
                                        #   Parent Loop BB0_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$s5, $s4, 0
	ld.hu	$s6, $s3, 0
	add.d	$s5, $s5, $s6
	addi.d	$s5, $s5, 1
	srli.d	$s5, $s5, 1
	st.h	$s5, $s2, 0
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 2
	addi.d	$s3, $s3, 2
	addi.d	$s4, $s4, 2
	bnez	$s1, .LBB0_52
.LBB0_53:                               # %.preheader.i92
                                        #   in Loop: Header=BB0_48 Depth=1
	bge	$a4, $a0, .LBB0_47
# %bb.54:                               # %.lr.ph43.i96
                                        #   in Loop: Header=BB0_48 Depth=1
	ldx.hu	$s1, $t7, $t1
	ldx.hu	$s2, $t8, $a2
	add.d	$s1, $s1, $s2
	addi.d	$s1, $s1, 1
	srli.d	$s1, $s1, 1
	stx.h	$s1, $t6, $t1
	ldx.hu	$t7, $t7, $a7
	ldx.hu	$t8, $t8, $a2
	add.d	$t7, $t7, $t8
	addi.d	$t7, $t7, 1
	srli.d	$t7, $t7, 1
	stx.h	$t7, $t6, $a7
	b	.LBB0_47
	.p2align	4, , 16
.LBB0_55:                               # %vector.memcheck149
                                        #   in Loop: Header=BB0_48 Depth=1
	sub.d	$s1, $t6, $t7
	move	$s4, $zero
	bltu	$s1, $t5, .LBB0_51
# %bb.56:                               # %vector.memcheck149
                                        #   in Loop: Header=BB0_48 Depth=1
	sub.d	$s1, $t6, $t8
	addi.d	$s1, $s1, -2
	bltu	$s1, $t5, .LBB0_51
# %bb.57:                               # %vector.body158.preheader
                                        #   in Loop: Header=BB0_48 Depth=1
	addi.d	$s1, $t8, 2
	move	$s2, $t7
	move	$s3, $t6
	move	$s4, $t3
	.p2align	4, , 16
.LBB0_58:                               # %vector.body158
                                        #   Parent Loop BB0_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s2, 0
	vld	$vr1, $s1, 0
	vor.v	$vr2, $vr0, $vr1
	vxor.v	$vr0, $vr0, $vr1
	vsrli.h	$vr0, $vr0, 1
	vsub.h	$vr0, $vr2, $vr0
	vst	$vr0, $s3, 0
	addi.d	$s4, $s4, -8
	addi.d	$s3, $s3, 16
	addi.d	$s1, $s1, 16
	addi.d	$s2, $s2, 16
	bnez	$s4, .LBB0_58
# %bb.59:                               # %middle.block163
                                        #   in Loop: Header=BB0_48 Depth=1
	move	$s4, $t3
	bne	$t3, $a5, .LBB0_51
	b	.LBB0_53
.LBB0_60:                               # %getHorSubImageBiLinear.exit108
	ori	$a1, $zero, 1
	ori	$a5, $zero, 2
	move	$a0, $fp
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(getVerSubImageBiLinear)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2
	ori	$a4, $zero, 2
	ori	$a5, $zero, 2
	ori	$a6, $zero, 2
	move	$a0, $fp
	move	$a3, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(getVerSubImageBiLinear)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	ori	$a3, $zero, 2
	ori	$a7, $zero, 1
	move	$a0, $fp
	move	$a2, $zero
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(getVerSubImageBiLinear)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	ori	$a2, $zero, 2
	ori	$a3, $zero, 2
	ori	$a4, $zero, 2
	ori	$a6, $zero, 2
	ori	$a7, $zero, 1
	move	$a0, $fp
	move	$a5, $zero
	pcaddu18i	$ra, %call36(getVerSubImageBiLinear)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	ori	$a4, $zero, 2
	ori	$a5, $zero, 2
	vst	$vr0, $sp, 0
	move	$a0, $fp
	move	$a3, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(getDiagSubImageBiLinear)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 1
	ori	$a2, $zero, 3
	ori	$a4, $zero, 2
	ori	$a5, $zero, 2
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 0
	move	$a0, $fp
	move	$a3, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(getDiagSubImageBiLinear)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 16
	st.d	$s0, $sp, 8
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ori	$a3, $zero, 2
	ori	$a6, $zero, 2
	st.d	$zero, $sp, 0
	move	$a0, $fp
	move	$a4, $zero
	move	$a5, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(getDiagSubImageBiLinear)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 16
	ori	$a1, $zero, 3
	ori	$a2, $zero, 3
	ori	$a4, $zero, 2
	ori	$a5, $zero, 2
	ori	$a7, $zero, 1
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 0
	move	$a0, $fp
	move	$a3, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(getDiagSubImageBiLinear)
	jirl	$ra, $ra, 0
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
.Lfunc_end0:
	.size	getSubImagesLuma, .Lfunc_end0-getSubImagesLuma
                                        # -- End function
	.globl	getHorSubImageSixTap            # -- Begin function getHorSubImageSixTap
	.p2align	5
	.type	getHorSubImageSixTap,@function
getHorSubImageSixTap:                   # @getHorSubImageSixTap
# %bb.0:
	ldptr.w	$t0, $a0, 6396
	addi.w	$a5, $zero, -39
	blt	$t0, $a5, .LBB1_13
# %bb.1:                                # %.lr.ph96
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
	ldptr.d	$a5, $a0, 6448
	ldptr.w	$a0, $a0, 6392
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a5, $a3
	slli.d	$a1, $a1, 3
	ldx.d	$a5, $a5, $a1
	slli.d	$a1, $a4, 3
	ldx.d	$a1, $a3, $a1
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a5, $a2
	pcalau12i	$a3, %pc_hi20(imgY_sub_tmp)
	ld.d	$a3, $a3, %pc_lo12(imgY_sub_tmp)
	addi.w	$t3, $a0, 39
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$a4, $a4, %got_pc_lo12(img)
	ld.d	$t6, $a4, 0
	move	$a4, $zero
	lu12i.w	$t4, 3
	ori	$a5, $t4, 3232
	add.d	$a5, $t6, $a5
	addi.w	$a6, $a0, 37
	ori	$a7, $zero, 3
	slt	$t1, $a7, $a6
	masknez	$a7, $a7, $t1
	maskeqz	$t1, $a6, $t1
	or	$a7, $t1, $a7
	addi.w	$t0, $t0, 39
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	addi.d	$t0, $t0, 1
	addi.d	$t1, $a6, 1
	addi.w	$t2, $t1, 0
	slt	$t5, $t3, $t2
	masknez	$t2, $t2, $t5
	maskeqz	$t5, $t3, $t5
	or	$t7, $t5, $t2
	addi.d	$t2, $a6, 2
	addi.w	$t5, $t2, 0
	slt	$t8, $t3, $t5
	masknez	$t5, $t5, $t8
	maskeqz	$t8, $t3, $t8
	or	$s0, $t8, $t5
	addi.w	$t5, $a0, 40
	slt	$t8, $t3, $t5
	masknez	$t5, $t5, $t8
	maskeqz	$t8, $t3, $t8
	or	$s3, $t8, $t5
	addi.w	$t5, $a0, 41
	slt	$t8, $t3, $t5
	masknez	$t5, $t5, $t8
	maskeqz	$t8, $t3, $t8
	or	$s4, $t8, $t5
	addi.w	$t5, $a0, 42
	slt	$t8, $t3, $t5
	masknez	$t5, $t5, $t8
	maskeqz	$t3, $t3, $t8
	or	$s5, $t3, $t5
	slli.d	$t3, $a7, 1
	st.d	$t3, $sp, 40                    # 8-byte Folded Spill
	slli.d	$t3, $a7, 2
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	ori	$t4, $t4, 3236
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	addi.d	$t5, $a7, -2
	add.d	$a7, $t6, $t4
	st.d	$a7, $sp, 16                    # 8-byte Folded Spill
	move	$a7, $t5
	bstrins.d	$a7, $zero, 1, 0
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	ori	$t4, $zero, 2
	move	$a7, $t5
	bstrins.d	$a7, $t4, 1, 0
	st.d	$a7, $sp, 8                     # 8-byte Folded Spill
	ori	$fp, $zero, 20
	vrepli.b	$vr0, 0
	vrepli.w	$vr1, 20
	vrepli.w	$vr2, -5
	slli.d	$s1, $t7, 1
	slli.d	$s2, $s0, 1
	slli.d	$s3, $s3, 1
	slli.d	$s4, $s4, 1
	slli.d	$s5, $s5, 1
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %.loopexit
                                        #   in Loop: Header=BB1_3 Depth=1
	slli.d	$a7, $a6, 1
	ldx.hu	$t3, $s8, $a7
	ldx.hu	$t4, $s8, $s1
	alsl.d	$t6, $a6, $s8, 1
	ld.hu	$t7, $t6, -2
	ldx.hu	$t8, $s8, $s2
	add.d	$t3, $t4, $t3
	mul.d	$t3, $t3, $fp
	ld.hu	$t4, $t6, -4
	add.d	$t6, $t8, $t7
	ldx.hu	$t7, $s8, $s3
	alsl.d	$t6, $t6, $t6, 2
	add.d	$t3, $t3, $t4
	sub.d	$t3, $t3, $t6
	add.d	$t3, $t3, $t7
	ld.w	$t4, $a5, 0
	addi.w	$t6, $t3, 16
	srai.d	$t7, $t6, 5
	srai.d	$t6, $t6, 63
	andn	$t6, $t7, $t6
	slt	$t7, $t6, $t4
	maskeqz	$t6, $t6, $t7
	masknez	$t4, $t4, $t7
	or	$t4, $t6, $t4
	stx.h	$t4, $s6, $a7
	slli.d	$a7, $a6, 2
	stx.w	$t3, $s7, $a7
	slli.d	$a7, $t1, 1
	ldx.hu	$t3, $s8, $a7
	ldx.hu	$t4, $s8, $s2
	alsl.d	$t6, $t1, $s8, 1
	ld.hu	$t7, $t6, -2
	ldx.hu	$t8, $s8, $s3
	add.d	$t3, $t4, $t3
	mul.d	$t3, $t3, $fp
	ld.hu	$t4, $t6, -4
	add.d	$t6, $t8, $t7
	ldx.hu	$t7, $s8, $s4
	alsl.d	$t6, $t6, $t6, 2
	add.d	$t3, $t3, $t4
	sub.d	$t3, $t3, $t6
	add.d	$t3, $t3, $t7
	ld.w	$t4, $a5, 0
	addi.w	$t6, $t3, 16
	srai.d	$t7, $t6, 5
	srai.d	$t6, $t6, 63
	andn	$t6, $t7, $t6
	slt	$t7, $t6, $t4
	maskeqz	$t6, $t6, $t7
	masknez	$t4, $t4, $t7
	or	$t4, $t6, $t4
	stx.h	$t4, $s6, $a7
	slli.d	$a7, $t1, 2
	stx.w	$t3, $s7, $a7
	slli.d	$a7, $t2, 1
	ldx.hu	$t3, $s8, $a7
	ldx.hu	$t4, $s8, $s3
	alsl.d	$t6, $t2, $s8, 1
	ld.hu	$t7, $t6, -2
	ldx.hu	$t8, $s8, $s4
	add.d	$t3, $t4, $t3
	mul.d	$t3, $t3, $fp
	ld.hu	$t4, $t6, -4
	add.d	$t6, $t8, $t7
	ldx.hu	$t7, $s8, $s5
	alsl.d	$t6, $t6, $t6, 2
	add.d	$t3, $t3, $t4
	sub.d	$t3, $t3, $t6
	add.d	$t3, $t3, $t7
	ld.w	$t4, $a5, 0
	addi.w	$t6, $t3, 16
	srai.d	$t7, $t6, 5
	srai.d	$t6, $t6, 63
	andn	$t6, $t7, $t6
	slt	$t7, $t6, $t4
	maskeqz	$t6, $t6, $t7
	masknez	$t4, $t4, $t7
	or	$t4, $t6, $t4
	stx.h	$t4, $s6, $a7
	slli.d	$a7, $t2, 2
	addi.d	$a4, $a4, 1
	stx.w	$t3, $s7, $a7
	beq	$a4, $t0, .LBB1_12
.LBB1_3:                                # %.preheader91
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
                                        #     Child Loop BB1_6 Depth 2
	slli.d	$t4, $a4, 3
	ldx.d	$s8, $a1, $t4
	ld.hu	$t6, $s8, 0
	ld.hu	$t7, $s8, 2
	ldx.d	$s6, $a2, $t4
	ld.hu	$s0, $s8, 4
	ldx.d	$s7, $a3, $t4
	add.d	$t4, $t7, $t6
	mul.d	$t4, $t4, $fp
	add.d	$t7, $s0, $t6
	ld.hu	$s0, $s8, 6
	alsl.d	$t7, $t7, $t7, 2
	add.d	$t4, $t4, $t6
	sub.d	$t4, $t4, $t7
	add.d	$t4, $t4, $s0
	ld.w	$t6, $a5, 0
	addi.w	$t7, $t4, 16
	srai.d	$s0, $t7, 5
	srai.d	$t7, $t7, 63
	andn	$t7, $s0, $t7
	slt	$s0, $t7, $t6
	maskeqz	$t7, $t7, $s0
	masknez	$t6, $t6, $s0
	or	$t6, $t7, $t6
	st.h	$t6, $s6, 0
	ld.hu	$t6, $s8, 2
	ld.hu	$t7, $s8, 4
	ld.hu	$s0, $s8, 0
	ld.hu	$ra, $s8, 6
	st.w	$t4, $s7, 0
	add.d	$t4, $t7, $t6
	mul.d	$t4, $t4, $fp
	add.d	$t6, $ra, $s0
	ld.hu	$t7, $s8, 8
	alsl.d	$t6, $t6, $t6, 2
	add.d	$t4, $t4, $s0
	sub.d	$t4, $t4, $t6
	add.d	$t4, $t4, $t7
	ld.w	$t6, $a5, 0
	addi.w	$t7, $t4, 16
	srai.d	$s0, $t7, 5
	srai.d	$t7, $t7, 63
	andn	$t7, $s0, $t7
	slt	$s0, $t7, $t6
	maskeqz	$t7, $t7, $s0
	masknez	$t6, $t6, $s0
	or	$t6, $t7, $t6
	st.h	$t6, $s6, 2
	addi.w	$t6, $zero, -34
	st.w	$t4, $s7, 4
	blt	$a0, $t6, .LBB1_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$s0, $zero, 2
	ori	$a7, $zero, 4
	bgeu	$t5, $a7, .LBB1_7
.LBB1_5:                                # %.lr.ph.preheader117
                                        #   in Loop: Header=BB1_3 Depth=1
	alsl.d	$t4, $s0, $s7, 2
	alsl.d	$t6, $s0, $s6, 1
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	sub.d	$t7, $a7, $s0
	alsl.d	$s0, $s0, $s8, 1
	.p2align	4, , 16
.LBB1_6:                                # %.lr.ph
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a7, $s0, 0
	ld.hu	$t8, $s0, 2
	ld.hu	$ra, $s0, -2
	ld.hu	$t3, $s0, 4
	add.d	$a7, $t8, $a7
	slli.d	$t8, $a7, 4
	alsl.d	$a7, $a7, $t8, 2
	add.d	$t3, $t3, $ra
	ld.hu	$t8, $s0, -4
	ld.hu	$ra, $s0, 6
	addi.d	$s0, $s0, 2
	alsl.d	$t3, $t3, $t3, 2
	add.d	$a7, $a7, $t8
	sub.d	$a7, $a7, $t3
	add.d	$a7, $a7, $ra
	ld.w	$t3, $a5, 0
	addi.w	$t8, $a7, 16
	srai.d	$ra, $t8, 5
	srai.d	$t8, $t8, 63
	andn	$t8, $ra, $t8
	slt	$ra, $t8, $t3
	maskeqz	$t8, $t8, $ra
	masknez	$t3, $t3, $ra
	or	$t3, $t8, $t3
	st.h	$t3, $t6, 0
	st.w	$a7, $t4, 0
	addi.d	$t4, $t4, 4
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 2
	bnez	$t7, .LBB1_6
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_7:                                # %vector.memcheck
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$ra, $s6, 4
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	add.d	$t4, $s6, $a7
	add.d	$t6, $s8, $a7
	addi.d	$t6, $t6, 6
	sltu	$t6, $ra, $t6
	sltu	$t4, $s8, $t4
	and	$t4, $t6, $t4
	bnez	$t4, .LBB1_5
# %bb.8:                                # %vector.memcheck
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$t4, $s7, 8
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	add.d	$t6, $s7, $a7
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	sltu	$t7, $t4, $a7
	sltu	$t6, $a5, $t6
	and	$t6, $t7, $t6
	bnez	$t6, .LBB1_5
# %bb.9:                                # %vector.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	vldrepl.w	$vr3, $a5, 0
	addi.d	$t6, $s8, 6
	ld.d	$t7, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_10:                               # %vector.body
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $t6, -2
	ld.d	$t8, $t6, 0
	ld.d	$a7, $t6, -4
	vinsgr2vr.d	$vr4, $s0, 0
	ld.d	$s0, $t6, 2
	vinsgr2vr.d	$vr5, $t8, 0
	vinsgr2vr.d	$vr6, $a7, 0
	vilvl.h	$vr4, $vr0, $vr4
	vinsgr2vr.d	$vr7, $s0, 0
	ld.d	$a7, $t6, -6
	vilvl.h	$vr5, $vr0, $vr5
	vadd.w	$vr4, $vr5, $vr4
	vilvl.h	$vr5, $vr0, $vr6
	vinsgr2vr.d	$vr6, $a7, 0
	ld.d	$a7, $t6, 4
	vilvl.h	$vr7, $vr0, $vr7
	vadd.w	$vr5, $vr7, $vr5
	vilvl.h	$vr6, $vr0, $vr6
	vinsgr2vr.d	$vr7, $a7, 0
	vilvl.h	$vr7, $vr0, $vr7
	vmadd.w	$vr6, $vr4, $vr1
	vmadd.w	$vr6, $vr5, $vr2
	vadd.w	$vr4, $vr6, $vr7
	vaddi.wu	$vr5, $vr4, 16
	vsrai.w	$vr5, $vr5, 5
	vmaxi.w	$vr5, $vr5, 0
	vmin.w	$vr5, $vr5, $vr3
	vpickev.h	$vr5, $vr5, $vr5
	vstelm.d	$vr5, $ra, 0, 0
	vst	$vr4, $t4, 0
	addi.d	$t7, $t7, -4
	addi.d	$t4, $t4, 16
	addi.d	$t6, $t6, 8
	addi.d	$ra, $ra, 8
	bnez	$t7, .LBB1_10
# %bb.11:                               # %middle.block
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	beq	$t5, $a7, .LBB1_2
	b	.LBB1_5
.LBB1_12:
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
.LBB1_13:                               # %._crit_edge
	ret
.Lfunc_end1:
	.size	getHorSubImageSixTap, .Lfunc_end1-getHorSubImageSixTap
                                        # -- End function
	.globl	getVerSubImageSixTap            # -- Begin function getVerSubImageSixTap
	.p2align	5
	.type	getVerSubImageSixTap,@function
getVerSubImageSixTap:                   # @getVerSubImageSixTap
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
	ldptr.d	$a6, $a0, 6448
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a6, $a1
	ldptr.w	$t0, $a0, 6396
	ldptr.w	$a0, $a0, 6392
	slli.d	$a2, $a2, 3
	ldx.d	$ra, $a1, $a2
	addi.w	$a2, $t0, 40
	addi.w	$s8, $a0, 40
	addi.w	$a7, $t0, 39
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$s8, $sp, 48                    # 8-byte Folded Spill
	beqz	$a5, .LBB2_4
# %bb.1:                                # %.preheader238
	pcalau12i	$s5, %pc_hi20(imgY_sub_tmp)
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$s6, $a1, %got_pc_lo12(img)
	ori	$a1, $zero, 1
	slt	$a3, $a1, $s8
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $s8, $a3
	or	$t5, $a3, $a1
	addi.w	$a1, $zero, -40
	lu12i.w	$s4, 3
	bstrpick.d	$a3, $t5, 31, 0
	vrepli.w	$vr0, 20
	vrepli.w	$vr1, -5
	bge	$a1, $a0, .LBB2_57
# %bb.2:                                # %.lr.ph
	ld.d	$t2, $s5, %pc_lo12(imgY_sub_tmp)
	ld.d	$t3, $s6, 0
	ld.d	$fp, $ra, 0
	ld.d	$t7, $t2, 0
	ld.d	$t8, $t2, 8
	ld.d	$s0, $t2, 16
	ld.d	$s1, $t2, 24
	ori	$t4, $s4, 3232
	ldx.w	$t6, $t3, $t4
	ori	$a1, $zero, 4
	bge	$s8, $a1, .LBB2_45
# %bb.3:
	move	$s2, $zero
	b	.LBB2_48
.LBB2_4:                                # %.preheader231
	slli.d	$a1, $a3, 3
	ldx.d	$a1, $a6, $a1
	slli.d	$a3, $a4, 3
	ldx.d	$a3, $a1, $a3
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$s1, $a1, %got_pc_lo12(img)
	ori	$a1, $zero, 1
	slt	$a4, $a1, $s8
	masknez	$a1, $a1, $a4
	maskeqz	$a4, $s8, $a4
	or	$t3, $a4, $a1
	addi.w	$a1, $zero, -40
	bstrpick.d	$s5, $t3, 31, 0
	vrepli.b	$vr0, 0
	bge	$a1, $a0, .LBB2_14
# %bb.5:                                # %.lr.ph250
	ld.d	$t1, $s1, 0
	ld.d	$t5, $ra, 0
	vld	$vr1, $a3, 16
	vld	$vr2, $a3, 0
	lu12i.w	$a1, 3
	ori	$t2, $a1, 3232
	ldx.w	$t4, $t1, $t2
	ori	$a1, $zero, 8
	blt	$s8, $a1, .LBB2_7
# %bb.6:                                # %vector.memcheck
	vreplgr2vr.d	$vr3, $t5
	vsub.d	$vr4, $vr3, $vr1
	vsub.d	$vr3, $vr3, $vr2
	vslti.du	$vr3, $vr3, 16
	vslti.du	$vr4, $vr4, 16
	vpickev.w	$vr3, $vr4, $vr3
	vmskltz.w	$vr3, $vr3
	vpickve2gr.hu	$a1, $vr3, 0
	beqz	$a1, .LBB2_85
.LBB2_7:
	move	$t6, $zero
.LBB2_8:                                # %scalar.ph371.preheader
	vpickve2gr.d	$a1, $vr2, 0
	vpickve2gr.d	$a6, $vr2, 1
	vpickve2gr.d	$t7, $vr1, 0
	vpickve2gr.d	$a5, $vr1, 1
	alsl.d	$a4, $t6, $t5, 1
	alsl.d	$a5, $t6, $a5, 1
	alsl.d	$t5, $t6, $t7, 1
	alsl.d	$t7, $t6, $a6, 1
	alsl.d	$t8, $t6, $a1, 1
	sub.d	$t6, $s5, $t6
	.p2align	4, , 16
.LBB2_9:                                # %scalar.ph371
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a1, $t8, 0
	ld.hu	$a6, $t7, 0
	ld.hu	$fp, $t5, 0
	add.d	$a6, $a6, $a1
	slli.d	$s0, $a6, 4
	alsl.d	$a6, $a6, $s0, 2
	add.d	$fp, $fp, $a1
	ld.hu	$s0, $a5, 0
	alsl.d	$fp, $fp, $fp, 2
	sub.d	$a6, $a6, $fp
	add.d	$a1, $a6, $a1
	add.d	$a1, $a1, $s0
	addi.w	$a1, $a1, 16
	srai.d	$a6, $a1, 5
	srai.d	$a1, $a1, 63
	andn	$a1, $a6, $a1
	slt	$a6, $a1, $t4
	maskeqz	$a1, $a1, $a6
	masknez	$a6, $t4, $a6
	or	$a1, $a1, $a6
	st.h	$a1, $a4, 0
	addi.d	$a4, $a4, 2
	addi.d	$a5, $a5, 2
	addi.d	$t5, $t5, 2
	addi.d	$t7, $t7, 2
	addi.d	$t6, $t6, -1
	addi.d	$t8, $t8, 2
	bnez	$t6, .LBB2_9
.LBB2_10:                               # %.lr.ph250.1
	ld.d	$t4, $ra, 8
	vld	$vr1, $a3, 16
	vld	$vr2, $a3, 0
	ld.d	$t5, $a3, 32
	ldx.w	$t1, $t1, $t2
	ori	$a1, $zero, 8
	bge	$s8, $a1, .LBB2_80
# %bb.11:
	move	$t2, $zero
.LBB2_12:                               # %scalar.ph398.preheader
	vpickve2gr.d	$a1, $vr2, 1
	vpickve2gr.d	$a6, $vr1, 0
	vpickve2gr.d	$t6, $vr2, 0
	vpickve2gr.d	$t7, $vr1, 1
	sub.d	$a4, $s5, $t2
	alsl.d	$a5, $t2, $t4, 1
	alsl.d	$t4, $t2, $t5, 1
	alsl.d	$t5, $t2, $t7, 1
	alsl.d	$t6, $t2, $t6, 1
	alsl.d	$t7, $t2, $a6, 1
	alsl.d	$t2, $t2, $a1, 1
	.p2align	4, , 16
.LBB2_13:                               # %scalar.ph398
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a1, $t2, 0
	ld.hu	$a6, $t7, 0
	ld.hu	$t8, $t6, 0
	ld.hu	$fp, $t5, 0
	add.d	$a1, $a6, $a1
	slli.d	$a6, $a1, 4
	alsl.d	$a1, $a1, $a6, 2
	add.d	$a6, $fp, $t8
	ld.hu	$fp, $t4, 0
	alsl.d	$a6, $a6, $a6, 2
	sub.d	$a1, $a1, $a6
	add.d	$a1, $a1, $t8
	add.d	$a1, $a1, $fp
	addi.w	$a1, $a1, 16
	srai.d	$a6, $a1, 5
	srai.d	$a1, $a1, 63
	andn	$a1, $a6, $a1
	slt	$a6, $a1, $t1
	maskeqz	$a1, $a1, $a6
	masknez	$a6, $t1, $a6
	or	$a1, $a1, $a6
	st.h	$a1, $a5, 0
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 2
	addi.d	$t4, $t4, 2
	addi.d	$t5, $t5, 2
	addi.d	$t6, $t6, 2
	addi.d	$t7, $t7, 2
	addi.d	$t2, $t2, 2
	bnez	$a4, .LBB2_13
.LBB2_14:                               # %.loopexit230.1
	ld.d	$t1, $s1, 0
	addi.w	$t2, $t0, 37
	addi.w	$a1, $zero, -34
	bstrpick.d	$a5, $t3, 30, 3
	blt	$t0, $a1, .LBB2_29
# %bb.15:                               # %.lr.ph255
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $s5
	ori	$a1, $zero, 3
	slt	$a4, $a1, $t2
	masknez	$a1, $a1, $a4
	maskeqz	$a4, $t2, $a4
	or	$t0, $a4, $a1
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	slli.d	$t3, $a5, 3
	ori	$t5, $zero, 2
	addi.w	$t6, $zero, -39
	lu12i.w	$a1, 3
	ori	$t7, $a1, 3232
	ori	$t8, $zero, 8
	vrepli.w	$vr1, 20
	vrepli.w	$vr2, -5
	b	.LBB2_17
	.p2align	4, , 16
.LBB2_16:                               # %.loopexit228
                                        #   in Loop: Header=BB2_17 Depth=1
	addi.d	$t5, $t5, 1
	beq	$t5, $t0, .LBB2_28
.LBB2_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_26 Depth 2
                                        #     Child Loop BB2_21 Depth 2
	blt	$a0, $t6, .LBB2_16
# %bb.18:                               # %.lr.ph253
                                        #   in Loop: Header=BB2_17 Depth=1
	slli.d	$a1, $t5, 3
	ldx.d	$a5, $ra, $a1
	alsl.d	$a1, $t5, $a3, 3
	vld	$vr3, $a1, 8
	vld	$vr4, $a1, -8
	ld.d	$s2, $a1, -16
	ld.d	$s3, $a1, 24
	ldx.w	$s0, $t1, $t7
	bge	$s8, $t8, .LBB2_22
# %bb.19:                               #   in Loop: Header=BB2_17 Depth=1
	move	$a1, $zero
.LBB2_20:                               # %scalar.ph428.preheader
                                        #   in Loop: Header=BB2_17 Depth=1
	vpickve2gr.d	$a6, $vr4, 1
	vpickve2gr.d	$s4, $vr3, 0
	vpickve2gr.d	$s5, $vr4, 0
	vpickve2gr.d	$s1, $vr3, 1
	alsl.d	$a4, $a1, $a5, 1
	alsl.d	$a5, $a1, $s3, 1
	alsl.d	$t4, $a1, $s2, 1
	alsl.d	$s1, $a1, $s1, 1
	alsl.d	$s2, $a1, $s5, 1
	alsl.d	$s3, $a1, $s4, 1
	alsl.d	$s4, $a1, $a6, 1
	sub.d	$s5, $fp, $a1
	.p2align	4, , 16
.LBB2_21:                               # %scalar.ph428
                                        #   Parent Loop BB2_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a1, $s4, 0
	ld.hu	$a6, $s3, 0
	ld.hu	$s6, $s2, 0
	ld.hu	$s7, $s1, 0
	add.d	$a1, $a6, $a1
	slli.d	$a6, $a1, 4
	alsl.d	$a1, $a1, $a6, 2
	add.d	$a6, $s7, $s6
	ld.hu	$s6, $t4, 0
	ld.hu	$s7, $a5, 0
	alsl.d	$a6, $a6, $a6, 2
	sub.d	$a1, $a1, $a6
	add.d	$a1, $a1, $s6
	add.d	$a1, $a1, $s7
	addi.w	$a1, $a1, 16
	srai.d	$a6, $a1, 5
	srai.d	$a1, $a1, 63
	andn	$a1, $a6, $a1
	slt	$a6, $a1, $s0
	maskeqz	$a1, $a1, $a6
	masknez	$a6, $s0, $a6
	or	$a1, $a1, $a6
	st.h	$a1, $a4, 0
	addi.d	$a4, $a4, 2
	addi.d	$a5, $a5, 2
	addi.d	$t4, $t4, 2
	addi.d	$s1, $s1, 2
	addi.d	$s2, $s2, 2
	addi.d	$s3, $s3, 2
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 2
	bnez	$s5, .LBB2_21
	b	.LBB2_16
	.p2align	4, , 16
.LBB2_22:                               # %vector.memcheck416
                                        #   in Loop: Header=BB2_17 Depth=1
	vreplgr2vr.d	$vr5, $a5
	vsub.d	$vr6, $vr5, $vr3
	vsub.d	$vr5, $vr5, $vr4
	vslti.du	$vr5, $vr5, 16
	vslti.du	$vr6, $vr6, 16
	vpickev.w	$vr5, $vr6, $vr5
	vmskltz.w	$vr5, $vr5
	vpickve2gr.hu	$a4, $vr5, 0
	move	$a1, $zero
	bnez	$a4, .LBB2_20
# %bb.23:                               # %vector.memcheck416
                                        #   in Loop: Header=BB2_17 Depth=1
	sub.d	$a4, $a5, $s2
	ori	$a6, $zero, 16
	bltu	$a4, $a6, .LBB2_20
# %bb.24:                               # %vector.memcheck416
                                        #   in Loop: Header=BB2_17 Depth=1
	sub.d	$a4, $a5, $s3
	bltu	$a4, $a6, .LBB2_20
# %bb.25:                               # %vector.ph430
                                        #   in Loop: Header=BB2_17 Depth=1
	vpickve2gr.d	$s4, $vr4, 1
	vpickve2gr.d	$s5, $vr3, 0
	vpickve2gr.d	$s6, $vr4, 0
	vpickve2gr.d	$s7, $vr3, 1
	vreplgr2vr.w	$vr5, $s0
	move	$s8, $s2
	move	$ra, $s3
	move	$s1, $a5
	move	$t4, $t3
	.p2align	4, , 16
.LBB2_26:                               # %vector.body435
                                        #   Parent Loop BB2_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr6, $s4, 0
	vld	$vr7, $s5, 0
	vilvh.h	$vr8, $vr0, $vr6
	vilvl.h	$vr6, $vr0, $vr6
	vilvh.h	$vr9, $vr0, $vr7
	vilvl.h	$vr7, $vr0, $vr7
	vadd.w	$vr6, $vr7, $vr6
	vadd.w	$vr7, $vr9, $vr8
	vld	$vr8, $s6, 0
	vmul.w	$vr7, $vr7, $vr1
	vld	$vr9, $s7, 0
	vmul.w	$vr6, $vr6, $vr1
	vilvl.h	$vr10, $vr0, $vr8
	vilvh.h	$vr8, $vr0, $vr8
	vilvl.h	$vr11, $vr0, $vr9
	vilvh.h	$vr9, $vr0, $vr9
	vld	$vr12, $s8, 0
	vadd.w	$vr8, $vr9, $vr8
	vld	$vr9, $ra, 0
	vadd.w	$vr10, $vr11, $vr10
	vilvl.h	$vr11, $vr0, $vr12
	vilvh.h	$vr12, $vr0, $vr12
	vilvh.h	$vr13, $vr0, $vr9
	vilvl.h	$vr9, $vr0, $vr9
	vmadd.w	$vr6, $vr10, $vr2
	vmadd.w	$vr7, $vr8, $vr2
	vadd.w	$vr7, $vr7, $vr12
	vadd.w	$vr6, $vr6, $vr11
	vadd.w	$vr6, $vr6, $vr9
	vadd.w	$vr7, $vr7, $vr13
	vaddi.wu	$vr7, $vr7, 16
	vaddi.wu	$vr6, $vr6, 16
	vsrai.w	$vr6, $vr6, 5
	vsrai.w	$vr7, $vr7, 5
	vmaxi.w	$vr7, $vr7, 0
	vmaxi.w	$vr6, $vr6, 0
	vmin.w	$vr6, $vr6, $vr5
	vmin.w	$vr7, $vr7, $vr5
	vpickev.h	$vr6, $vr7, $vr6
	vst	$vr6, $s1, 0
	addi.d	$t4, $t4, -8
	addi.d	$s1, $s1, 16
	addi.d	$ra, $ra, 16
	addi.d	$s8, $s8, 16
	addi.d	$s7, $s7, 16
	addi.d	$s6, $s6, 16
	addi.d	$s5, $s5, 16
	addi.d	$s4, $s4, 16
	bnez	$t4, .LBB2_26
# %bb.27:                               # %middle.block444
                                        #   in Loop: Header=BB2_17 Depth=1
	move	$a1, $t3
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	beq	$t3, $fp, .LBB2_16
	b	.LBB2_20
.LBB2_28:                               # %.preheader.loopexit
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t1, $a1, 0
	move	$s5, $fp
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
.LBB2_29:                               # %.preheader
	slli.d	$a4, $a5, 3
	addi.w	$t0, $zero, -39
	lu12i.w	$a1, 3
	ori	$t3, $a1, 3232
	ori	$s6, $zero, 8
	ori	$t5, $zero, 16
	vrepli.w	$vr1, 20
	vrepli.w	$vr2, -5
	b	.LBB2_31
	.p2align	4, , 16
.LBB2_30:                               # %.loopexit
                                        #   in Loop: Header=BB2_31 Depth=1
	bge	$t2, $a2, .LBB2_79
.LBB2_31:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_43 Depth 2
                                        #     Child Loop BB2_35 Depth 2
	move	$a1, $t2
	addi.d	$t2, $t2, 1
	blt	$a0, $t0, .LBB2_30
# %bb.32:                               # %.lr.ph258
                                        #   in Loop: Header=BB2_31 Depth=1
	slli.d	$a5, $a1, 3
	ldx.d	$t4, $ra, $a5
	addi.w	$a6, $a1, 3
	slt	$t6, $a7, $a6
	masknez	$a6, $a6, $t6
	maskeqz	$t6, $a7, $t6
	or	$a6, $t6, $a6
	addi.w	$t6, $a1, 2
	slt	$t7, $a7, $t6
	masknez	$t6, $t6, $t7
	maskeqz	$t7, $a7, $t7
	or	$t6, $t7, $t6
	addi.w	$t7, $t2, 0
	slt	$t8, $a7, $t7
	masknez	$t7, $t7, $t8
	maskeqz	$t8, $a7, $t8
	or	$t7, $t8, $t7
	alsl.d	$a1, $a1, $a3, 3
	ldx.d	$t8, $a3, $a5
	slli.d	$a5, $t7, 3
	ldx.d	$fp, $a3, $a5
	ld.d	$s0, $a1, -8
	slli.d	$a5, $t6, 3
	ldx.d	$s1, $a3, $a5
	ld.d	$s2, $a1, -16
	slli.d	$a1, $a6, 3
	ldx.d	$s3, $a3, $a1
	ldx.w	$t6, $t1, $t3
	bge	$s8, $s6, .LBB2_36
# %bb.33:                               #   in Loop: Header=BB2_31 Depth=1
	move	$a1, $zero
.LBB2_34:                               # %scalar.ph459.preheader
                                        #   in Loop: Header=BB2_31 Depth=1
	alsl.d	$a5, $a1, $t4, 1
	alsl.d	$t4, $a1, $s3, 1
	alsl.d	$t7, $a1, $s2, 1
	alsl.d	$s1, $a1, $s1, 1
	alsl.d	$s0, $a1, $s0, 1
	alsl.d	$fp, $a1, $fp, 1
	alsl.d	$t8, $a1, $t8, 1
	sub.d	$s2, $s5, $a1
	.p2align	4, , 16
.LBB2_35:                               # %scalar.ph459
                                        #   Parent Loop BB2_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a1, $t8, 0
	ld.hu	$a6, $fp, 0
	ld.hu	$s3, $s0, 0
	ld.hu	$s4, $s1, 0
	add.d	$a1, $a6, $a1
	slli.d	$a6, $a1, 4
	alsl.d	$a1, $a1, $a6, 2
	add.d	$a6, $s4, $s3
	ld.hu	$s3, $t7, 0
	ld.hu	$s4, $t4, 0
	alsl.d	$a6, $a6, $a6, 2
	sub.d	$a1, $a1, $a6
	add.d	$a1, $a1, $s3
	add.d	$a1, $a1, $s4
	addi.w	$a1, $a1, 16
	srai.d	$a6, $a1, 5
	srai.d	$a1, $a1, 63
	andn	$a1, $a6, $a1
	slt	$a6, $a1, $t6
	maskeqz	$a1, $a1, $a6
	masknez	$a6, $t6, $a6
	or	$a1, $a1, $a6
	st.h	$a1, $a5, 0
	addi.d	$a5, $a5, 2
	addi.d	$t4, $t4, 2
	addi.d	$t7, $t7, 2
	addi.d	$s1, $s1, 2
	addi.d	$s0, $s0, 2
	addi.d	$fp, $fp, 2
	addi.d	$s2, $s2, -1
	addi.d	$t8, $t8, 2
	bnez	$s2, .LBB2_35
	b	.LBB2_30
	.p2align	4, , 16
.LBB2_36:                               # %vector.memcheck447
                                        #   in Loop: Header=BB2_31 Depth=1
	sub.d	$a5, $t4, $t8
	move	$a1, $zero
	bltu	$a5, $t5, .LBB2_34
# %bb.37:                               # %vector.memcheck447
                                        #   in Loop: Header=BB2_31 Depth=1
	sub.d	$a5, $t4, $fp
	bltu	$a5, $t5, .LBB2_34
# %bb.38:                               # %vector.memcheck447
                                        #   in Loop: Header=BB2_31 Depth=1
	sub.d	$a5, $t4, $s0
	bltu	$a5, $t5, .LBB2_34
# %bb.39:                               # %vector.memcheck447
                                        #   in Loop: Header=BB2_31 Depth=1
	sub.d	$a5, $t4, $s1
	bltu	$a5, $t5, .LBB2_34
# %bb.40:                               # %vector.memcheck447
                                        #   in Loop: Header=BB2_31 Depth=1
	sub.d	$a5, $t4, $s2
	bltu	$a5, $t5, .LBB2_34
# %bb.41:                               # %vector.memcheck447
                                        #   in Loop: Header=BB2_31 Depth=1
	sub.d	$a5, $t4, $s3
	bltu	$a5, $t5, .LBB2_34
# %bb.42:                               # %vector.ph461
                                        #   in Loop: Header=BB2_31 Depth=1
	move	$a6, $s5
	vreplgr2vr.w	$vr3, $t6
	move	$s4, $t8
	move	$s5, $fp
	move	$s6, $s0
	move	$s7, $s1
	move	$s8, $s2
	move	$ra, $s3
	move	$t7, $t4
	move	$a5, $a4
	.p2align	4, , 16
.LBB2_43:                               # %vector.body466
                                        #   Parent Loop BB2_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr4, $s4, 0
	vld	$vr5, $s5, 0
	vilvh.h	$vr6, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vilvh.h	$vr7, $vr0, $vr5
	vilvl.h	$vr5, $vr0, $vr5
	vadd.w	$vr4, $vr5, $vr4
	vadd.w	$vr5, $vr7, $vr6
	vld	$vr6, $s6, 0
	vmul.w	$vr5, $vr5, $vr1
	vld	$vr7, $s7, 0
	vmul.w	$vr4, $vr4, $vr1
	vilvl.h	$vr8, $vr0, $vr6
	vilvh.h	$vr6, $vr0, $vr6
	vilvl.h	$vr9, $vr0, $vr7
	vilvh.h	$vr7, $vr0, $vr7
	vld	$vr10, $s8, 0
	vadd.w	$vr6, $vr7, $vr6
	vld	$vr7, $ra, 0
	vadd.w	$vr8, $vr9, $vr8
	vilvl.h	$vr9, $vr0, $vr10
	vilvh.h	$vr10, $vr0, $vr10
	vilvh.h	$vr11, $vr0, $vr7
	vilvl.h	$vr7, $vr0, $vr7
	vmadd.w	$vr4, $vr8, $vr2
	vmadd.w	$vr5, $vr6, $vr2
	vadd.w	$vr5, $vr5, $vr10
	vadd.w	$vr4, $vr4, $vr9
	vadd.w	$vr4, $vr4, $vr7
	vadd.w	$vr5, $vr5, $vr11
	vaddi.wu	$vr5, $vr5, 16
	vaddi.wu	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 5
	vsrai.w	$vr5, $vr5, 5
	vmaxi.w	$vr5, $vr5, 0
	vmaxi.w	$vr4, $vr4, 0
	vmin.w	$vr4, $vr4, $vr3
	vmin.w	$vr5, $vr5, $vr3
	vpickev.h	$vr4, $vr5, $vr4
	vst	$vr4, $t7, 0
	addi.d	$a5, $a5, -8
	addi.d	$t7, $t7, 16
	addi.d	$ra, $ra, 16
	addi.d	$s8, $s8, 16
	addi.d	$s7, $s7, 16
	addi.d	$s6, $s6, 16
	addi.d	$s5, $s5, 16
	addi.d	$s4, $s4, 16
	bnez	$a5, .LBB2_43
# %bb.44:                               # %middle.block475
                                        #   in Loop: Header=BB2_31 Depth=1
	move	$a1, $a4
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	move	$s5, $a6
	ori	$s6, $zero, 8
	beq	$a4, $a6, .LBB2_30
	b	.LBB2_34
.LBB2_45:                               # %vector.ph
	bstrpick.d	$a1, $a3, 30, 2
	slli.d	$s2, $a1, 2
	vreplgr2vr.w	$vr2, $t6
	ori	$a1, $zero, 512
	vreplgr2vr.w	$vr3, $a1
	move	$a1, $t7
	move	$a4, $t8
	move	$a5, $s0
	move	$a6, $s1
	move	$t1, $fp
	move	$s3, $s2
	.p2align	4, , 16
.LBB2_46:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a1, 0
	vld	$vr5, $a4, 0
	vld	$vr6, $a5, 0
	vadd.w	$vr5, $vr5, $vr4
	vmul.w	$vr5, $vr5, $vr0
	vld	$vr7, $a6, 0
	vadd.w	$vr6, $vr6, $vr4
	vmadd.w	$vr5, $vr6, $vr1
	vadd.w	$vr4, $vr5, $vr4
	vadd.w	$vr4, $vr4, $vr7
	vadd.w	$vr4, $vr4, $vr3
	vsrai.w	$vr4, $vr4, 10
	vmaxi.w	$vr4, $vr4, 0
	vmin.w	$vr4, $vr4, $vr2
	vpickev.h	$vr4, $vr4, $vr4
	vstelm.d	$vr4, $t1, 0, 0
	addi.d	$s3, $s3, -4
	addi.d	$t1, $t1, 8
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 16
	addi.d	$a4, $a4, 16
	addi.d	$a1, $a1, 16
	bnez	$s3, .LBB2_46
# %bb.47:                               # %middle.block
	beq	$s2, $a3, .LBB2_50
.LBB2_48:                               # %scalar.ph.preheader
	alsl.d	$fp, $s2, $fp, 1
	alsl.d	$s1, $s2, $s1, 2
	alsl.d	$s0, $s2, $s0, 2
	alsl.d	$t8, $s2, $t8, 2
	alsl.d	$t7, $s2, $t7, 2
	sub.d	$a4, $a3, $s2
	.p2align	4, , 16
.LBB2_49:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $t7, 0
	ld.w	$a5, $t8, 0
	ld.w	$a6, $s0, 0
	add.w	$a5, $a5, $a1
	slli.d	$t1, $a5, 4
	alsl.d	$a5, $a5, $t1, 2
	add.w	$a6, $a6, $a1
	ld.w	$t1, $s1, 0
	alsl.d	$a6, $a6, $a6, 2
	sub.d	$a5, $a5, $a6
	add.d	$a1, $a5, $a1
	add.d	$a1, $a1, $t1
	addi.w	$a1, $a1, 512
	srai.d	$a5, $a1, 10
	srai.d	$a1, $a1, 63
	andn	$a1, $a5, $a1
	slt	$a5, $a1, $t6
	maskeqz	$a1, $a1, $a5
	masknez	$a5, $t6, $a5
	or	$a1, $a1, $a5
	st.h	$a1, $fp, 0
	addi.d	$fp, $fp, 2
	addi.d	$s1, $s1, 4
	addi.d	$s0, $s0, 4
	addi.d	$t8, $t8, 4
	addi.d	$a4, $a4, -1
	addi.d	$t7, $t7, 4
	bnez	$a4, .LBB2_49
.LBB2_50:                               # %.lr.ph.1
	ld.d	$t8, $ra, 8
	ld.d	$t6, $t2, 8
	ld.d	$t7, $t2, 16
	ld.d	$fp, $t2, 0
	ld.d	$s0, $t2, 24
	ld.d	$s1, $t2, 32
	ldx.w	$t2, $t3, $t4
	ori	$a1, $zero, 4
	bge	$s8, $a1, .LBB2_52
# %bb.51:
	move	$t3, $zero
	b	.LBB2_55
.LBB2_52:                               # %vector.ph312
	bstrpick.d	$a1, $a3, 30, 2
	slli.d	$t3, $a1, 2
	vreplgr2vr.w	$vr2, $t2
	ori	$a1, $zero, 512
	vreplgr2vr.w	$vr3, $a1
	move	$a4, $t6
	move	$a5, $t7
	move	$t1, $fp
	move	$a1, $s0
	move	$a6, $s1
	move	$t4, $t8
	move	$s2, $t3
	.p2align	4, , 16
.LBB2_53:                               # %vector.body317
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a4, 0
	vld	$vr5, $a5, 0
	vld	$vr6, $t1, 0
	vld	$vr7, $a1, 0
	vadd.w	$vr4, $vr5, $vr4
	vmul.w	$vr4, $vr4, $vr0
	vld	$vr5, $a6, 0
	vadd.w	$vr7, $vr7, $vr6
	vmadd.w	$vr4, $vr7, $vr1
	vadd.w	$vr4, $vr4, $vr6
	vadd.w	$vr4, $vr4, $vr5
	vadd.w	$vr4, $vr4, $vr3
	vsrai.w	$vr4, $vr4, 10
	vmaxi.w	$vr4, $vr4, 0
	vmin.w	$vr4, $vr4, $vr2
	vpickev.h	$vr4, $vr4, $vr4
	vstelm.d	$vr4, $t4, 0, 0
	addi.d	$s2, $s2, -4
	addi.d	$t4, $t4, 8
	addi.d	$a6, $a6, 16
	addi.d	$a1, $a1, 16
	addi.d	$t1, $t1, 16
	addi.d	$a5, $a5, 16
	addi.d	$a4, $a4, 16
	bnez	$s2, .LBB2_53
# %bb.54:                               # %middle.block325
	beq	$t3, $a3, .LBB2_57
.LBB2_55:                               # %scalar.ph310.preheader
	sub.d	$t4, $a3, $t3
	alsl.d	$t8, $t3, $t8, 1
	alsl.d	$s1, $t3, $s1, 2
	alsl.d	$s0, $t3, $s0, 2
	alsl.d	$fp, $t3, $fp, 2
	alsl.d	$t7, $t3, $t7, 2
	alsl.d	$t3, $t3, $t6, 2
	.p2align	4, , 16
.LBB2_56:                               # %scalar.ph310
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $t3, 0
	ld.w	$a4, $t7, 0
	ld.w	$a5, $fp, 0
	ld.w	$a6, $s0, 0
	add.w	$a1, $a4, $a1
	slli.d	$a4, $a1, 4
	alsl.d	$a1, $a1, $a4, 2
	add.w	$a4, $a6, $a5
	ld.w	$a6, $s1, 0
	alsl.d	$a4, $a4, $a4, 2
	sub.d	$a1, $a1, $a4
	add.d	$a1, $a1, $a5
	add.d	$a1, $a1, $a6
	addi.w	$a1, $a1, 512
	srai.d	$a4, $a1, 10
	srai.d	$a1, $a1, 63
	andn	$a1, $a4, $a1
	slt	$a4, $a1, $t2
	maskeqz	$a1, $a1, $a4
	masknez	$a4, $t2, $a4
	or	$a1, $a1, $a4
	st.h	$a1, $t8, 0
	addi.d	$t4, $t4, -1
	addi.d	$t8, $t8, 2
	addi.d	$s1, $s1, 4
	addi.d	$s0, $s0, 4
	addi.d	$fp, $fp, 4
	addi.d	$t7, $t7, 4
	addi.d	$t3, $t3, 4
	bnez	$t4, .LBB2_56
.LBB2_57:                               # %.loopexit237.1
	ld.d	$t2, $s5, %pc_lo12(imgY_sub_tmp)
	ld.d	$t4, $s6, 0
	addi.w	$t3, $t0, 37
	addi.w	$a1, $zero, -34
	bstrpick.d	$a5, $t5, 30, 2
	blt	$t0, $a1, .LBB2_69
# %bb.58:                               # %.lr.ph245
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	ori	$a1, $zero, 3
	slt	$a4, $a1, $t3
	masknez	$a1, $a1, $a4
	maskeqz	$a4, $t3, $a4
	or	$t0, $a4, $a1
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	slli.d	$a6, $a5, 2
	ori	$t8, $zero, 2
	addi.w	$t7, $zero, -39
	ori	$fp, $s4, 3232
	ori	$a1, $zero, 512
	vreplgr2vr.w	$vr2, $a1
	b	.LBB2_60
	.p2align	4, , 16
.LBB2_59:                               # %.loopexit235
                                        #   in Loop: Header=BB2_60 Depth=1
	beq	$t8, $t0, .LBB2_68
.LBB2_60:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_64 Depth 2
                                        #     Child Loop BB2_67 Depth 2
	move	$a4, $t8
	addi.d	$t8, $t8, 1
	blt	$a0, $t7, .LBB2_59
# %bb.61:                               # %.lr.ph243
                                        #   in Loop: Header=BB2_60 Depth=1
	slli.d	$a5, $a4, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a5
	alsl.d	$t6, $a4, $t2, 3
	ldx.d	$s2, $t2, $a5
	slli.d	$a4, $t8, 3
	ldx.d	$a4, $t2, $a4
	ld.d	$a5, $t6, -8
	ld.d	$t1, $t6, 16
	ld.d	$t5, $t6, -16
	ld.d	$s0, $t6, 24
	ldx.w	$s1, $t4, $fp
	ld.d	$t6, $sp, 48                    # 8-byte Folded Reload
	ori	$s3, $zero, 4
	bge	$t6, $s3, .LBB2_63
# %bb.62:                               #   in Loop: Header=BB2_60 Depth=1
	move	$t6, $zero
	b	.LBB2_66
	.p2align	4, , 16
.LBB2_63:                               # %vector.ph330
                                        #   in Loop: Header=BB2_60 Depth=1
	vreplgr2vr.w	$vr3, $s1
	move	$ra, $s2
	move	$s3, $a4
	move	$s5, $a5
	move	$s6, $t1
	move	$s7, $t5
	move	$s8, $s0
	move	$s4, $a1
	move	$t6, $a6
	.p2align	4, , 16
.LBB2_64:                               # %vector.body335
                                        #   Parent Loop BB2_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr4, $ra, 0
	vld	$vr5, $s3, 0
	vld	$vr6, $s5, 0
	vld	$vr7, $s6, 0
	vadd.w	$vr4, $vr5, $vr4
	vadd.w	$vr5, $vr7, $vr6
	vld	$vr6, $s7, 0
	vld	$vr7, $s8, 0
	vmul.w	$vr4, $vr4, $vr0
	vmadd.w	$vr4, $vr5, $vr1
	vadd.w	$vr4, $vr4, $vr6
	vadd.w	$vr4, $vr4, $vr7
	vadd.w	$vr4, $vr4, $vr2
	vsrai.w	$vr4, $vr4, 10
	vmaxi.w	$vr4, $vr4, 0
	vmin.w	$vr4, $vr4, $vr3
	vpickev.h	$vr4, $vr4, $vr4
	vstelm.d	$vr4, $s4, 0, 0
	addi.d	$t6, $t6, -4
	addi.d	$s4, $s4, 8
	addi.d	$s8, $s8, 16
	addi.d	$s7, $s7, 16
	addi.d	$s6, $s6, 16
	addi.d	$s5, $s5, 16
	addi.d	$s3, $s3, 16
	addi.d	$ra, $ra, 16
	bnez	$t6, .LBB2_64
# %bb.65:                               # %middle.block344
                                        #   in Loop: Header=BB2_60 Depth=1
	move	$t6, $a6
	beq	$a6, $a3, .LBB2_59
.LBB2_66:                               # %scalar.ph328.preheader
                                        #   in Loop: Header=BB2_60 Depth=1
	alsl.d	$s4, $t6, $a1, 1
	alsl.d	$s8, $t6, $s0, 2
	alsl.d	$s7, $t6, $t5, 2
	alsl.d	$s6, $t6, $t1, 2
	alsl.d	$s5, $t6, $a5, 2
	alsl.d	$s3, $t6, $a4, 2
	alsl.d	$s2, $t6, $s2, 2
	sub.d	$ra, $a3, $t6
	.p2align	4, , 16
.LBB2_67:                               # %scalar.ph328
                                        #   Parent Loop BB2_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s2, 0
	ld.w	$a4, $s3, 0
	ld.w	$a5, $s5, 0
	ld.w	$t1, $s6, 0
	add.w	$a1, $a4, $a1
	slli.d	$a4, $a1, 4
	alsl.d	$a1, $a1, $a4, 2
	add.w	$a4, $t1, $a5
	ld.w	$a5, $s7, 0
	ld.w	$t1, $s8, 0
	alsl.d	$a4, $a4, $a4, 2
	sub.d	$a1, $a1, $a4
	add.d	$a1, $a1, $a5
	add.d	$a1, $a1, $t1
	addi.w	$a1, $a1, 512
	srai.d	$a4, $a1, 10
	srai.d	$a1, $a1, 63
	andn	$a1, $a4, $a1
	slt	$a4, $a1, $s1
	maskeqz	$a1, $a1, $a4
	masknez	$a4, $s1, $a4
	or	$a1, $a1, $a4
	st.h	$a1, $s4, 0
	addi.d	$s4, $s4, 2
	addi.d	$s8, $s8, 4
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	addi.d	$s3, $s3, 4
	addi.d	$ra, $ra, -1
	addi.d	$s2, $s2, 4
	bnez	$ra, .LBB2_67
	b	.LBB2_59
.LBB2_68:                               # %.preheader233.loopexit
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t2, $a1, %pc_lo12(imgY_sub_tmp)
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t4, $a1, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	lu12i.w	$s4, 3
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
.LBB2_69:                               # %.preheader233
	slli.d	$a5, $a5, 2
	addi.w	$t0, $zero, -39
	ori	$a4, $s4, 3232
	ori	$t1, $zero, 4
	ori	$a1, $zero, 512
	vreplgr2vr.w	$vr2, $a1
	b	.LBB2_71
	.p2align	4, , 16
.LBB2_70:                               # %.loopexit232
                                        #   in Loop: Header=BB2_71 Depth=1
	bge	$t3, $a2, .LBB2_79
.LBB2_71:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_75 Depth 2
                                        #     Child Loop BB2_78 Depth 2
	move	$a1, $t3
	addi.d	$t3, $t3, 1
	blt	$a0, $t0, .LBB2_70
# %bb.72:                               # %.lr.ph247
                                        #   in Loop: Header=BB2_71 Depth=1
	slli.d	$a6, $a1, 3
	ldx.d	$t6, $ra, $a6
	addi.w	$t5, $a1, 3
	slt	$t7, $a7, $t5
	masknez	$t5, $t5, $t7
	maskeqz	$t7, $a7, $t7
	or	$t5, $t7, $t5
	addi.w	$t7, $a1, 2
	slt	$t8, $a7, $t7
	masknez	$t7, $t7, $t8
	maskeqz	$t8, $a7, $t8
	or	$s0, $t8, $t7
	addi.w	$t7, $t3, 0
	slt	$t8, $a7, $t7
	masknez	$t7, $t7, $t8
	maskeqz	$t8, $a7, $t8
	or	$t8, $t8, $t7
	alsl.d	$a1, $a1, $t2, 3
	ldx.d	$t7, $t2, $a6
	slli.d	$a6, $t8, 3
	ldx.d	$t8, $t2, $a6
	ld.d	$fp, $a1, -8
	slli.d	$a6, $s0, 3
	ldx.d	$s0, $t2, $a6
	ld.d	$s1, $a1, -16
	slli.d	$a1, $t5, 3
	ldx.d	$s2, $t2, $a1
	ldx.w	$t5, $t4, $a4
	bge	$s8, $t1, .LBB2_74
# %bb.73:                               #   in Loop: Header=BB2_71 Depth=1
	move	$a1, $zero
	b	.LBB2_77
	.p2align	4, , 16
.LBB2_74:                               # %vector.ph349
                                        #   in Loop: Header=BB2_71 Depth=1
	vreplgr2vr.w	$vr3, $t5
	move	$s3, $t7
	move	$s4, $t8
	move	$s5, $fp
	move	$s6, $s0
	move	$s7, $s1
	move	$s8, $s2
	move	$a1, $t6
	move	$a6, $a5
	.p2align	4, , 16
.LBB2_75:                               # %vector.body354
                                        #   Parent Loop BB2_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr4, $s3, 0
	vld	$vr5, $s4, 0
	vld	$vr6, $s5, 0
	vld	$vr7, $s6, 0
	vadd.w	$vr4, $vr5, $vr4
	vadd.w	$vr5, $vr7, $vr6
	vld	$vr6, $s7, 0
	vld	$vr7, $s8, 0
	vmul.w	$vr4, $vr4, $vr0
	vmadd.w	$vr4, $vr5, $vr1
	vadd.w	$vr4, $vr4, $vr6
	vadd.w	$vr4, $vr4, $vr7
	vadd.w	$vr4, $vr4, $vr2
	vsrai.w	$vr4, $vr4, 10
	vmaxi.w	$vr4, $vr4, 0
	vmin.w	$vr4, $vr4, $vr3
	vpickev.h	$vr4, $vr4, $vr4
	vstelm.d	$vr4, $a1, 0, 0
	addi.d	$a6, $a6, -4
	addi.d	$a1, $a1, 8
	addi.d	$s8, $s8, 16
	addi.d	$s7, $s7, 16
	addi.d	$s6, $s6, 16
	addi.d	$s5, $s5, 16
	addi.d	$s4, $s4, 16
	addi.d	$s3, $s3, 16
	bnez	$a6, .LBB2_75
# %bb.76:                               # %middle.block363
                                        #   in Loop: Header=BB2_71 Depth=1
	move	$a1, $a5
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	beq	$a5, $a3, .LBB2_70
.LBB2_77:                               # %scalar.ph347.preheader
                                        #   in Loop: Header=BB2_71 Depth=1
	alsl.d	$t6, $a1, $t6, 1
	alsl.d	$s2, $a1, $s2, 2
	alsl.d	$s1, $a1, $s1, 2
	alsl.d	$s0, $a1, $s0, 2
	alsl.d	$fp, $a1, $fp, 2
	alsl.d	$t8, $a1, $t8, 2
	alsl.d	$t7, $a1, $t7, 2
	sub.d	$s3, $a3, $a1
	.p2align	4, , 16
.LBB2_78:                               # %scalar.ph347
                                        #   Parent Loop BB2_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $t7, 0
	ld.w	$a6, $t8, 0
	ld.w	$s4, $fp, 0
	ld.w	$s5, $s0, 0
	add.w	$a1, $a6, $a1
	slli.d	$a6, $a1, 4
	alsl.d	$a1, $a1, $a6, 2
	add.w	$a6, $s5, $s4
	ld.w	$s4, $s1, 0
	ld.w	$s5, $s2, 0
	alsl.d	$a6, $a6, $a6, 2
	sub.d	$a1, $a1, $a6
	add.d	$a1, $a1, $s4
	add.d	$a1, $a1, $s5
	addi.w	$a1, $a1, 512
	srai.d	$a6, $a1, 10
	srai.d	$a1, $a1, 63
	andn	$a1, $a6, $a1
	slt	$a6, $a1, $t5
	maskeqz	$a1, $a1, $a6
	masknez	$a6, $t5, $a6
	or	$a1, $a1, $a6
	st.h	$a1, $t6, 0
	addi.d	$t6, $t6, 2
	addi.d	$s2, $s2, 4
	addi.d	$s1, $s1, 4
	addi.d	$s0, $s0, 4
	addi.d	$fp, $fp, 4
	addi.d	$t8, $t8, 4
	addi.d	$s3, $s3, -1
	addi.d	$t7, $t7, 4
	bnez	$s3, .LBB2_78
	b	.LBB2_70
.LBB2_79:                               # %.loopexit227
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
.LBB2_80:                               # %vector.memcheck388
	vreplgr2vr.d	$vr3, $t4
	vsub.d	$vr4, $vr3, $vr1
	vsub.d	$vr3, $vr3, $vr2
	vslti.du	$vr3, $vr3, 16
	vslti.du	$vr4, $vr4, 16
	vpickev.w	$vr3, $vr4, $vr3
	vmskltz.w	$vr3, $vr3
	vpickve2gr.hu	$a1, $vr3, 0
	move	$t2, $zero
	bnez	$a1, .LBB2_12
# %bb.81:                               # %vector.memcheck388
	sub.d	$a1, $t4, $t5
	ori	$a4, $zero, 16
	bltu	$a1, $a4, .LBB2_12
# %bb.82:                               # %vector.ph400
	vpickve2gr.d	$t6, $vr2, 1
	vpickve2gr.d	$t7, $vr1, 0
	vpickve2gr.d	$t8, $vr2, 0
	vpickve2gr.d	$fp, $vr1, 1
	bstrpick.d	$a1, $s5, 30, 3
	slli.d	$t2, $a1, 3
	vreplgr2vr.w	$vr3, $t1
	vrepli.w	$vr4, 20
	vrepli.w	$vr5, -5
	move	$a4, $t5
	move	$a5, $t4
	move	$s0, $t2
	.p2align	4, , 16
.LBB2_83:                               # %vector.body405
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr6, $t6, 0
	vld	$vr7, $t7, 0
	vilvh.h	$vr8, $vr0, $vr6
	vilvl.h	$vr6, $vr0, $vr6
	vilvh.h	$vr9, $vr0, $vr7
	vilvl.h	$vr7, $vr0, $vr7
	vadd.w	$vr6, $vr7, $vr6
	vadd.w	$vr7, $vr9, $vr8
	vld	$vr8, $t8, 0
	vmul.w	$vr7, $vr7, $vr4
	vld	$vr9, $fp, 0
	vmul.w	$vr6, $vr6, $vr4
	vilvl.h	$vr10, $vr0, $vr8
	vilvh.h	$vr8, $vr0, $vr8
	vilvl.h	$vr11, $vr0, $vr9
	vld	$vr12, $a4, 0
	vilvh.h	$vr9, $vr0, $vr9
	vadd.w	$vr9, $vr9, $vr8
	vadd.w	$vr11, $vr11, $vr10
	vilvh.h	$vr13, $vr0, $vr12
	vilvl.h	$vr12, $vr0, $vr12
	vmadd.w	$vr6, $vr11, $vr5
	vmadd.w	$vr7, $vr9, $vr5
	vadd.w	$vr7, $vr7, $vr8
	vadd.w	$vr6, $vr6, $vr10
	vadd.w	$vr6, $vr6, $vr12
	vadd.w	$vr7, $vr7, $vr13
	vaddi.wu	$vr7, $vr7, 16
	vaddi.wu	$vr6, $vr6, 16
	vsrai.w	$vr6, $vr6, 5
	vsrai.w	$vr7, $vr7, 5
	vmaxi.w	$vr7, $vr7, 0
	vmaxi.w	$vr6, $vr6, 0
	vmin.w	$vr6, $vr6, $vr3
	vmin.w	$vr7, $vr7, $vr3
	vpickev.h	$vr6, $vr7, $vr6
	vst	$vr6, $a5, 0
	addi.d	$s0, $s0, -8
	addi.d	$a5, $a5, 16
	addi.d	$a4, $a4, 16
	addi.d	$fp, $fp, 16
	addi.d	$t8, $t8, 16
	addi.d	$t7, $t7, 16
	addi.d	$t6, $t6, 16
	bnez	$s0, .LBB2_83
# %bb.84:                               # %middle.block413
	bne	$t2, $s5, .LBB2_12
	b	.LBB2_14
.LBB2_85:                               # %vector.ph373
	vpickve2gr.d	$a5, $vr2, 0
	vpickve2gr.d	$a4, $vr2, 1
	vpickve2gr.d	$t7, $vr1, 0
	vpickve2gr.d	$t8, $vr1, 1
	bstrpick.d	$a1, $s5, 30, 3
	slli.d	$t6, $a1, 3
	vreplgr2vr.w	$vr3, $t4
	vrepli.w	$vr4, 20
	vrepli.w	$vr5, -5
	move	$fp, $t5
	move	$s0, $t6
	.p2align	4, , 16
.LBB2_86:                               # %vector.body378
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr6, $a5, 0
	vld	$vr7, $a4, 0
	vilvh.h	$vr8, $vr0, $vr6
	vilvl.h	$vr6, $vr0, $vr6
	vilvh.h	$vr9, $vr0, $vr7
	vilvl.h	$vr7, $vr0, $vr7
	vadd.w	$vr7, $vr7, $vr6
	vld	$vr10, $t7, 0
	vadd.w	$vr9, $vr9, $vr8
	vmul.w	$vr9, $vr9, $vr4
	vmul.w	$vr7, $vr7, $vr4
	vilvl.h	$vr11, $vr0, $vr10
	vld	$vr12, $t8, 0
	vilvh.h	$vr10, $vr0, $vr10
	vadd.w	$vr10, $vr10, $vr8
	vadd.w	$vr11, $vr11, $vr6
	vilvh.h	$vr13, $vr0, $vr12
	vilvl.h	$vr12, $vr0, $vr12
	vmadd.w	$vr7, $vr11, $vr5
	vmadd.w	$vr9, $vr10, $vr5
	vadd.w	$vr8, $vr9, $vr8
	vadd.w	$vr6, $vr7, $vr6
	vadd.w	$vr6, $vr6, $vr12
	vadd.w	$vr7, $vr8, $vr13
	vaddi.wu	$vr7, $vr7, 16
	vaddi.wu	$vr6, $vr6, 16
	vsrai.w	$vr6, $vr6, 5
	vsrai.w	$vr7, $vr7, 5
	vmaxi.w	$vr7, $vr7, 0
	vmaxi.w	$vr6, $vr6, 0
	vmin.w	$vr6, $vr6, $vr3
	vmin.w	$vr7, $vr7, $vr3
	vpickev.h	$vr6, $vr7, $vr6
	vst	$vr6, $fp, 0
	addi.d	$s0, $s0, -8
	addi.d	$fp, $fp, 16
	addi.d	$t8, $t8, 16
	addi.d	$t7, $t7, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$s0, .LBB2_86
# %bb.87:                               # %middle.block385
	beq	$t6, $s5, .LBB2_10
	b	.LBB2_8
.Lfunc_end2:
	.size	getVerSubImageSixTap, .Lfunc_end2-getVerSubImageSixTap
                                        # -- End function
	.globl	getHorSubImageBiLinear          # -- Begin function getHorSubImageBiLinear
	.p2align	5
	.type	getHorSubImageBiLinear,@function
getHorSubImageBiLinear:                 # @getHorSubImageBiLinear
# %bb.0:
	ldptr.w	$t2, $a0, 6396
	addi.w	$t0, $zero, -39
	blt	$t2, $t0, .LBB3_23
# %bb.1:                                # %.lr.ph46
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
	lu12i.w	$t0, 1
	ori	$t0, $t0, 2296
	ldx.w	$t1, $a0, $t0
	ldptr.d	$t3, $a0, 6448
	move	$a0, $zero
	addi.w	$t0, $t1, 40
	slli.d	$a3, $a3, 3
	ldx.d	$t4, $t3, $a3
	addi.w	$a3, $t1, 39
	sub.w	$t1, $a3, $a7
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $t4, $a4
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $t3, $a5
	slli.d	$a1, $a1, 3
	ldx.d	$t3, $t3, $a1
	slli.d	$a1, $a6, 3
	ldx.d	$a1, $a5, $a1
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $t3, $a2
	addi.w	$a5, $t2, 39
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	bstrpick.d	$a6, $t1, 31, 0
	slli.d	$t2, $t1, 1
	bstrpick.d	$t5, $a7, 31, 0
	add.d	$t3, $t1, $t5
	slli.d	$t3, $t3, 1
	addi.d	$t3, $t3, 2
	slli.d	$t4, $a3, 1
	addi.d	$t5, $t5, 1
	slli.d	$t6, $a7, 1
	bstrpick.d	$t7, $t1, 30, 3
	slli.d	$t7, $t7, 3
	st.d	$t5, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$fp, $t5, 32, 3
	slli.d	$t8, $fp, 3
	alsl.d	$t5, $fp, $t1, 3
	st.d	$t5, $sp, 8                     # 8-byte Folded Spill
	ori	$s0, $zero, 8
	ori	$s1, $zero, 16
	ori	$s2, $zero, 7
	vrepli.b	$vr0, 0
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                # %._crit_edge
                                        #   in Loop: Header=BB3_3 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a5, .LBB3_22
.LBB3_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_15 Depth 2
                                        #     Child Loop BB3_7 Depth 2
                                        #     Child Loop BB3_20 Depth 2
                                        #     Child Loop BB3_11 Depth 2
	slli.d	$fp, $a0, 3
	ldx.d	$s3, $a4, $fp
	ldx.d	$s5, $a1, $fp
	ldx.d	$s4, $a2, $fp
	blez	$t1, .LBB3_8
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	bgeu	$t1, $s0, .LBB3_12
# %bb.5:                                #   in Loop: Header=BB3_3 Depth=1
	move	$ra, $zero
.LBB3_6:                                # %.lr.ph.preheader80
                                        #   in Loop: Header=BB3_3 Depth=1
	add.d	$fp, $s5, $t6
	alsl.d	$s6, $ra, $fp, 1
	alsl.d	$s7, $ra, $s4, 1
	alsl.d	$s8, $ra, $s3, 1
	sub.d	$ra, $a6, $ra
	.p2align	4, , 16
.LBB3_7:                                # %.lr.ph
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t5, $s8, 0
	ld.hu	$fp, $s6, 0
	add.d	$t5, $t5, $fp
	addi.d	$t5, $t5, 1
	srli.d	$t5, $t5, 1
	st.h	$t5, $s7, 0
	addi.d	$s6, $s6, 2
	addi.d	$s7, $s7, 2
	addi.d	$ra, $ra, -1
	addi.d	$s8, $s8, 2
	bnez	$ra, .LBB3_7
.LBB3_8:                                # %.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	bge	$t1, $t0, .LBB3_2
# %bb.9:                                # %.lr.ph43
                                        #   in Loop: Header=BB3_3 Depth=1
	alsl.d	$s6, $a3, $s5, 1
	move	$ra, $t1
	bgeu	$a7, $s2, .LBB3_17
.LBB3_10:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	alsl.d	$s3, $ra, $s3, 1
	alsl.d	$s4, $ra, $s4, 1
	sub.d	$s5, $t0, $ra
	.p2align	4, , 16
.LBB3_11:                               # %scalar.ph
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t5, $s3, 0
	ld.hu	$fp, $s6, 0
	add.d	$t5, $t5, $fp
	addi.d	$t5, $t5, 1
	srli.d	$t5, $t5, 1
	st.h	$t5, $s4, 0
	addi.d	$s3, $s3, 2
	addi.w	$s5, $s5, -1
	addi.d	$s4, $s4, 2
	bnez	$s5, .LBB3_11
	b	.LBB3_2
	.p2align	4, , 16
.LBB3_12:                               # %vector.memcheck64
                                        #   in Loop: Header=BB3_3 Depth=1
	sub.d	$fp, $s4, $s3
	move	$ra, $zero
	bltu	$fp, $s1, .LBB3_6
# %bb.13:                               # %vector.memcheck64
                                        #   in Loop: Header=BB3_3 Depth=1
	add.d	$fp, $t6, $s5
	sub.d	$fp, $s4, $fp
	bltu	$fp, $s1, .LBB3_6
# %bb.14:                               # %vector.body72.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	alsl.d	$s6, $a7, $s5, 1
	move	$s7, $s3
	move	$s8, $s4
	move	$ra, $t7
	.p2align	4, , 16
.LBB3_15:                               # %vector.body72
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $s7, 0
	vld	$vr2, $s6, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vst	$vr1, $s8, 0
	addi.d	$ra, $ra, -8
	addi.d	$s8, $s8, 16
	addi.d	$s6, $s6, 16
	addi.d	$s7, $s7, 16
	bnez	$ra, .LBB3_15
# %bb.16:                               # %middle.block77
                                        #   in Loop: Header=BB3_3 Depth=1
	move	$ra, $t7
	bne	$t7, $a6, .LBB3_6
	b	.LBB3_8
	.p2align	4, , 16
.LBB3_17:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_3 Depth=1
	add.d	$s7, $s4, $t2
	add.d	$fp, $s4, $t3
	add.d	$s8, $s3, $t2
	add.d	$ra, $s3, $t3
	sltu	$ra, $s7, $ra
	sltu	$t5, $s8, $fp
	and	$t5, $ra, $t5
	move	$ra, $t1
	bnez	$t5, .LBB3_10
# %bb.18:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_3 Depth=1
	add.d	$t5, $s5, $t4
	addi.d	$t5, $t5, 2
	sltu	$t5, $s7, $t5
	sltu	$fp, $s6, $fp
	and	$t5, $t5, $fp
	move	$ra, $t1
	bnez	$t5, .LBB3_10
# %bb.19:                               # %vector.ph
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.h	$t5, $s6, 0
	vreplgr2vr.h	$vr1, $t5
	vinsgr2vr.h	$vr2, $t5, 0
	vinsgr2vr.h	$vr2, $t5, 1
	vinsgr2vr.h	$vr2, $t5, 2
	vinsgr2vr.h	$vr2, $t5, 3
	vilvl.h	$vr2, $vr0, $vr2
	vilvl.h	$vr1, $vr0, $vr1
	vaddi.wu	$vr1, $vr1, 1
	vaddi.wu	$vr2, $vr2, 1
	move	$s5, $t8
	.p2align	4, , 16
.LBB3_20:                               # %vector.body
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $s8, 0
	vilvl.h	$vr4, $vr0, $vr3
	vilvh.h	$vr3, $vr0, $vr3
	vadd.w	$vr3, $vr3, $vr2
	vadd.w	$vr4, $vr4, $vr1
	vsrli.w	$vr4, $vr4, 1
	vsrli.w	$vr3, $vr3, 1
	vpickev.h	$vr3, $vr3, $vr4
	vst	$vr3, $s7, 0
	addi.d	$s5, $s5, -8
	addi.d	$s7, $s7, 16
	addi.d	$s8, $s8, 16
	bnez	$s5, .LBB3_20
# %bb.21:                               # %middle.block
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t5, $sp, 16                    # 8-byte Folded Reload
	beq	$t5, $t8, .LBB3_2
	b	.LBB3_10
.LBB3_22:
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
.LBB3_23:                               # %._crit_edge47
	ret
.Lfunc_end3:
	.size	getHorSubImageBiLinear, .Lfunc_end3-getHorSubImageBiLinear
                                        # -- End function
	.globl	getVerSubImageBiLinear          # -- Begin function getVerSubImageBiLinear
	.p2align	5
	.type	getVerSubImageBiLinear,@function
getVerSubImageBiLinear:                 # @getVerSubImageBiLinear
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
	lu12i.w	$t0, 1
	ori	$t0, $t0, 2300
	ldx.w	$t3, $a0, $t0
	ldptr.w	$t0, $a0, 6392
	addi.w	$t1, $t3, 40
	addi.w	$t2, $t0, 40
	addi.w	$t4, $t3, 39
	sub.w	$t3, $t4, $a7
	slli.d	$t5, $a3, 3
	slli.d	$a3, $a4, 3
	slli.d	$a4, $a1, 3
	slli.d	$a1, $a2, 3
	slli.d	$a5, $a5, 3
	slli.d	$a2, $a6, 3
	blez	$t3, .LBB4_13
# %bb.1:                                # %.lr.ph60
	ldptr.d	$a6, $a0, 6448
	ldx.d	$t6, $a6, $t5
	ldx.d	$t7, $a6, $a4
	ldx.d	$t8, $a6, $a5
	move	$a6, $zero
	ldx.d	$t6, $t6, $a3
	ldx.d	$t7, $t7, $a1
	ldx.d	$fp, $t8, $a2
	ori	$t8, $zero, 1
	slt	$s0, $t8, $t2
	masknez	$t8, $t8, $s0
	maskeqz	$s0, $t2, $s0
	or	$t8, $s0, $t8
	alsl.d	$a7, $a7, $fp, 3
	bstrpick.d	$fp, $t8, 30, 3
	slli.d	$fp, $fp, 3
	addi.w	$s0, $zero, -39
	ori	$s1, $zero, 8
	ori	$s2, $zero, 16
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %._crit_edge
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a6, $a6, 1
	beq	$a6, $t3, .LBB4_13
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
                                        #     Child Loop BB4_7 Depth 2
	blt	$t0, $s0, .LBB4_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	slli.d	$s5, $a6, 3
	ldx.d	$s3, $t6, $s5
	ldx.d	$s4, $t7, $s5
	ldx.d	$s5, $a7, $s5
	bge	$t2, $s1, .LBB4_8
# %bb.5:                                #   in Loop: Header=BB4_3 Depth=1
	move	$s6, $zero
.LBB4_6:                                # %.lr.ph.preheader101
                                        #   in Loop: Header=BB4_3 Depth=1
	alsl.d	$s4, $s6, $s4, 1
	alsl.d	$s5, $s6, $s5, 1
	alsl.d	$s3, $s6, $s3, 1
	sub.d	$s6, $t8, $s6
	.p2align	4, , 16
.LBB4_7:                                # %.lr.ph
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$s7, $s3, 0
	ld.hu	$s8, $s5, 0
	add.d	$s7, $s7, $s8
	addi.d	$s7, $s7, 1
	srli.d	$s7, $s7, 1
	st.h	$s7, $s4, 0
	addi.d	$s4, $s4, 2
	addi.d	$s5, $s5, 2
	addi.d	$s6, $s6, -1
	addi.d	$s3, $s3, 2
	bnez	$s6, .LBB4_7
	b	.LBB4_2
	.p2align	4, , 16
.LBB4_8:                                # %vector.memcheck
                                        #   in Loop: Header=BB4_3 Depth=1
	sub.d	$s7, $s4, $s3
	move	$s6, $zero
	bltu	$s7, $s2, .LBB4_6
# %bb.9:                                # %vector.memcheck
                                        #   in Loop: Header=BB4_3 Depth=1
	sub.d	$s7, $s4, $s5
	bltu	$s7, $s2, .LBB4_6
# %bb.10:                               # %vector.body.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	move	$s6, $s3
	move	$s7, $s5
	move	$s8, $s4
	move	$ra, $fp
	.p2align	4, , 16
.LBB4_11:                               # %vector.body
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s6, 0
	vld	$vr1, $s7, 0
	vor.v	$vr2, $vr0, $vr1
	vxor.v	$vr0, $vr0, $vr1
	vsrli.h	$vr0, $vr0, 1
	vsub.h	$vr0, $vr2, $vr0
	vst	$vr0, $s8, 0
	addi.d	$ra, $ra, -8
	addi.d	$s8, $s8, 16
	addi.d	$s7, $s7, 16
	addi.d	$s6, $s6, 16
	bnez	$ra, .LBB4_11
# %bb.12:                               # %middle.block
                                        #   in Loop: Header=BB4_3 Depth=1
	move	$s6, $fp
	beq	$fp, $t8, .LBB4_2
	b	.LBB4_6
.LBB4_13:                               # %.preheader
	bge	$t3, $t1, .LBB4_26
# %bb.14:                               # %.lr.ph66
	ldptr.d	$a0, $a0, 6448
	ldx.d	$a5, $a0, $a5
	ldx.d	$a6, $a0, $t5
	ldx.d	$a4, $a0, $a4
	ldx.d	$a2, $a5, $a2
	ldx.d	$a0, $a6, $a3
	ldx.d	$a1, $a4, $a1
	slli.d	$a3, $t4, 3
	ldx.d	$a2, $a2, $a3
	ori	$a3, $zero, 1
	slt	$a4, $a3, $t2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $t2, $a4
	or	$a3, $a4, $a3
	bstrpick.d	$a4, $a3, 30, 3
	slli.d	$a4, $a4, 3
	addi.w	$a5, $zero, -39
	ori	$a6, $zero, 8
	ori	$a7, $zero, 16
	b	.LBB4_16
	.p2align	4, , 16
.LBB4_15:                               # %._crit_edge64
                                        #   in Loop: Header=BB4_16 Depth=1
	addi.d	$t3, $t3, 1
	addi.w	$t4, $t3, 0
	beq	$t1, $t4, .LBB4_26
.LBB4_16:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_24 Depth 2
                                        #     Child Loop BB4_20 Depth 2
	blt	$t0, $a5, .LBB4_15
# %bb.17:                               # %.lr.ph63.preheader
                                        #   in Loop: Header=BB4_16 Depth=1
	slli.d	$t5, $t3, 3
	ldx.d	$t4, $a0, $t5
	ldx.d	$t5, $a1, $t5
	bge	$t2, $a6, .LBB4_21
# %bb.18:                               #   in Loop: Header=BB4_16 Depth=1
	move	$t7, $zero
.LBB4_19:                               # %.lr.ph63.preheader100
                                        #   in Loop: Header=BB4_16 Depth=1
	alsl.d	$t5, $t7, $t5, 1
	alsl.d	$t6, $t7, $a2, 1
	alsl.d	$t4, $t7, $t4, 1
	sub.d	$t7, $a3, $t7
	.p2align	4, , 16
.LBB4_20:                               # %.lr.ph63
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t8, $t4, 0
	ld.hu	$fp, $t6, 0
	add.d	$t8, $t8, $fp
	addi.d	$t8, $t8, 1
	srli.d	$t8, $t8, 1
	st.h	$t8, $t5, 0
	addi.d	$t5, $t5, 2
	addi.d	$t6, $t6, 2
	addi.d	$t7, $t7, -1
	addi.d	$t4, $t4, 2
	bnez	$t7, .LBB4_20
	b	.LBB4_15
	.p2align	4, , 16
.LBB4_21:                               # %vector.memcheck83
                                        #   in Loop: Header=BB4_16 Depth=1
	sub.d	$t6, $t5, $t4
	move	$t7, $zero
	bltu	$t6, $a7, .LBB4_19
# %bb.22:                               # %vector.memcheck83
                                        #   in Loop: Header=BB4_16 Depth=1
	sub.d	$t6, $t5, $a2
	bltu	$t6, $a7, .LBB4_19
# %bb.23:                               # %vector.body92.preheader
                                        #   in Loop: Header=BB4_16 Depth=1
	move	$t6, $t4
	move	$t7, $a2
	move	$t8, $t5
	move	$fp, $a4
	.p2align	4, , 16
.LBB4_24:                               # %vector.body92
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t6, 0
	vld	$vr1, $t7, 0
	vor.v	$vr2, $vr0, $vr1
	vxor.v	$vr0, $vr0, $vr1
	vsrli.h	$vr0, $vr0, 1
	vsub.h	$vr0, $vr2, $vr0
	vst	$vr0, $t8, 0
	addi.d	$fp, $fp, -8
	addi.d	$t8, $t8, 16
	addi.d	$t7, $t7, 16
	addi.d	$t6, $t6, 16
	bnez	$fp, .LBB4_24
# %bb.25:                               # %middle.block97
                                        #   in Loop: Header=BB4_16 Depth=1
	move	$t7, $a4
	beq	$a4, $a3, .LBB4_15
	b	.LBB4_19
.LBB4_26:                               # %._crit_edge67
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
.Lfunc_end4:
	.size	getVerSubImageBiLinear, .Lfunc_end4-getVerSubImageBiLinear
                                        # -- End function
	.globl	getDiagSubImageBiLinear         # -- Begin function getDiagSubImageBiLinear
	.p2align	5
	.type	getDiagSubImageBiLinear,@function
getDiagSubImageBiLinear:                # @getDiagSubImageBiLinear
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	ld.w	$t0, $sp, 96
	ldptr.w	$t1, $a0, 6392
	ld.d	$t2, $sp, 88
	ld.w	$t3, $sp, 80
	ldptr.w	$t6, $a0, 6396
	addi.w	$t7, $t1, 40
	addi.w	$t4, $t1, 39
	ldptr.d	$t8, $a0, 6448
	addi.w	$a0, $t6, 39
	addi.w	$fp, $zero, -19
	addi.w	$t5, $t6, 19
	slli.d	$a3, $a3, 3
	bge	$fp, $t6, .LBB5_6
# %bb.1:                                # %.lr.ph73
	ldx.d	$a3, $t8, $a3
	move	$t6, $zero
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	slli.d	$a4, $a5, 3
	ldx.d	$a4, $t8, $a4
	slli.d	$a1, $a1, 3
	ldx.d	$a5, $t8, $a1
	slli.d	$a1, $a6, 3
	ldx.d	$a1, $a4, $a1
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a5, $a2
	ori	$a5, $zero, 1
	slt	$a4, $a5, $t7
	masknez	$a6, $a5, $a4
	maskeqz	$a4, $t7, $a4
	or	$a4, $a4, $a6
	slt	$a6, $a5, $t5
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $t5, $a6
	or	$a5, $a6, $a5
	alsl.d	$a6, $a7, $a3, 3
	alsl.d	$t7, $t2, $a1, 3
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %._crit_edge
                                        #   in Loop: Header=BB5_3 Depth=1
	addi.d	$t6, $t6, 1
	beq	$t6, $a5, .LBB5_7
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
	addi.w	$t8, $zero, -39
	blt	$t1, $t8, .LBB5_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	slli.d	$s0, $t6, 3
	ldx.d	$t8, $a6, $s0
	ldx.d	$fp, $t7, $s0
	ldx.d	$s0, $a2, $s0
	move	$s1, $a4
	move	$s2, $t3
	move	$s3, $t0
	.p2align	4, , 16
.LBB5_5:                                # %.lr.ph
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slt	$s4, $t4, $s2
	masknez	$s5, $s2, $s4
	maskeqz	$s4, $t4, $s4
	or	$s4, $s4, $s5
	slli.d	$s4, $s4, 1
	ldx.hu	$s4, $t8, $s4
	slt	$s5, $t4, $s3
	masknez	$s6, $s3, $s5
	maskeqz	$s5, $t4, $s5
	or	$s5, $s5, $s6
	slli.d	$s5, $s5, 1
	ldx.hu	$s5, $fp, $s5
	add.d	$s4, $s4, $s5
	addi.d	$s4, $s4, 1
	srli.d	$s4, $s4, 1
	st.h	$s4, $s0, 0
	addi.w	$s3, $s3, 1
	addi.w	$s2, $s2, 1
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 2
	bnez	$s1, .LBB5_5
	b	.LBB5_2
.LBB5_6:                                # %..preheader_crit_edge
	ldx.d	$a3, $t8, $a3
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	slli.d	$a4, $a5, 3
	ldx.d	$a4, $t8, $a4
	slli.d	$a1, $a1, 3
	ldx.d	$a5, $t8, $a1
	slli.d	$a1, $a6, 3
	ldx.d	$a1, $a4, $a1
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a5, $a2
	ori	$a4, $zero, 1
	slt	$a5, $a4, $t7
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $t7, $a5
	or	$a4, $a5, $a4
	bstrpick.d	$a7, $a7, 31, 0
	bstrpick.d	$t2, $t2, 31, 0
.LBB5_7:                                # %.preheader
	bstrpick.d	$a4, $a4, 31, 0
	addi.w	$a5, $zero, -39
	b	.LBB5_9
	.p2align	4, , 16
.LBB5_8:                                # %._crit_edge77
                                        #   in Loop: Header=BB5_9 Depth=1
	addi.d	$t5, $a6, 1
	bge	$a6, $a0, .LBB5_12
.LBB5_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_11 Depth 2
	move	$a6, $t5
	blt	$t1, $a5, .LBB5_8
# %bb.10:                               # %.lr.ph76.preheader
                                        #   in Loop: Header=BB5_9 Depth=1
	add.w	$t5, $a6, $a7
	slt	$t6, $a0, $t5
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $a0, $t6
	or	$t5, $t6, $t5
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $a3, $t5
	add.w	$t6, $a6, $t2
	slt	$t7, $a0, $t6
	masknez	$t6, $t6, $t7
	maskeqz	$t7, $a0, $t7
	or	$t6, $t7, $t6
	slli.d	$t6, $t6, 3
	ldx.d	$t6, $a1, $t6
	slli.d	$t7, $a6, 3
	ldx.d	$t7, $a2, $t7
	move	$t8, $a4
	move	$fp, $t3
	move	$s0, $t0
	.p2align	4, , 16
.LBB5_11:                               # %.lr.ph76
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slt	$s1, $t4, $fp
	masknez	$s2, $fp, $s1
	maskeqz	$s1, $t4, $s1
	or	$s1, $s1, $s2
	slli.d	$s1, $s1, 1
	ldx.hu	$s1, $t5, $s1
	slt	$s2, $t4, $s0
	masknez	$s3, $s0, $s2
	maskeqz	$s2, $t4, $s2
	or	$s2, $s2, $s3
	slli.d	$s2, $s2, 1
	ldx.hu	$s2, $t6, $s2
	add.d	$s1, $s1, $s2
	addi.d	$s1, $s1, 1
	srli.d	$s1, $s1, 1
	st.h	$s1, $t7, 0
	addi.w	$s0, $s0, 1
	addi.w	$fp, $fp, 1
	addi.d	$t8, $t8, -1
	addi.d	$t7, $t7, 2
	bnez	$t8, .LBB5_11
	b	.LBB5_8
.LBB5_12:
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end5:
	.size	getDiagSubImageBiLinear, .Lfunc_end5-getDiagSubImageBiLinear
                                        # -- End function
	.type	ONE_FOURTH_TAP,@object          # @ONE_FOURTH_TAP
	.section	.rodata,"a",@progbits
	.globl	ONE_FOURTH_TAP
	.p2align	2, 0x0
ONE_FOURTH_TAP:
	.word	20                              # 0x14
	.word	4294967291                      # 0xfffffffb
	.word	1                               # 0x1
	.word	20                              # 0x14
	.word	4294967292                      # 0xfffffffc
	.word	0                               # 0x0
	.size	ONE_FOURTH_TAP, 24

	.type	imgY_sub_tmp,@object            # @imgY_sub_tmp
	.comm	imgY_sub_tmp,8,8
	.type	color_formats,@object           # @color_formats
	.comm	color_formats,4,4
	.type	top_pic,@object                 # @top_pic
	.comm	top_pic,8,8
	.type	bottom_pic,@object              # @bottom_pic
	.comm	bottom_pic,8,8
	.type	frame_pic,@object               # @frame_pic
	.comm	frame_pic,8,8
	.type	frame_pic_1,@object             # @frame_pic_1
	.comm	frame_pic_1,8,8
	.type	frame_pic_2,@object             # @frame_pic_2
	.comm	frame_pic_2,8,8
	.type	frame_pic_3,@object             # @frame_pic_3
	.comm	frame_pic_3,8,8
	.type	frame_pic_si,@object            # @frame_pic_si
	.comm	frame_pic_si,8,8
	.type	Bit_Buffer,@object              # @Bit_Buffer
	.comm	Bit_Buffer,8,8
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	imgY_org_top,@object            # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org_bot,@object            # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgUV_org_top,@object           # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	imgY_org_frm,@object            # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	imgY_com,@object                # @imgY_com
	.comm	imgY_com,8,8
	.type	imgUV_com,@object               # @imgUV_com
	.comm	imgUV_com,8,8
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	pixel_map,@object               # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object             # @refresh_map
	.comm	refresh_map,8,8
	.type	intras,@object                  # @intras
	.comm	intras,4,4
	.type	frame_ctr,@object               # @frame_ctr
	.comm	frame_ctr,20,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	nextP_tr_fld,@object            # @nextP_tr_fld
	.comm	nextP_tr_fld,4,4
	.type	nextP_tr_frm,@object            # @nextP_tr_frm
	.comm	nextP_tr_frm,4,4
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,1752,8
	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,1752,8
	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.comm	rddata_top_field_mb,1752,8
	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,1752,8
	.type	p_stat,@object                  # @p_stat
	.comm	p_stat,8,8
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	p_trace,@object                 # @p_trace
	.comm	p_trace,8,8
	.type	p_in,@object                    # @p_in
	.comm	p_in,4,4
	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	number_sp2_frames,@object       # @number_sp2_frames
	.comm	number_sp2_frames,4,4
	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.comm	giRDOpt_B8OnlyFlag,4,4
	.type	imgY_tmp,@object                # @imgY_tmp
	.comm	imgY_tmp,8,8
	.type	imgUV_tmp,@object               # @imgUV_tmp
	.comm	imgUV_tmp,16,8
	.type	frameNuminGOP,@object           # @frameNuminGOP
	.comm	frameNuminGOP,4,4
	.type	redundant_coding,@object        # @redundant_coding
	.comm	redundant_coding,4,4
	.type	key_frame,@object               # @key_frame
	.comm	key_frame,4,4
	.type	redundant_ref_idx,@object       # @redundant_ref_idx
	.comm	redundant_ref_idx,4,4
	.type	img_pad_size_uv_x,@object       # @img_pad_size_uv_x
	.comm	img_pad_size_uv_x,4,4
	.type	img_pad_size_uv_y,@object       # @img_pad_size_uv_y
	.comm	img_pad_size_uv_y,4,4
	.type	chroma_mask_mv_y,@object        # @chroma_mask_mv_y
	.comm	chroma_mask_mv_y,1,1
	.type	chroma_mask_mv_x,@object        # @chroma_mask_mv_x
	.comm	chroma_mask_mv_x,1,1
	.type	chroma_shift_y,@object          # @chroma_shift_y
	.comm	chroma_shift_y,4,4
	.type	chroma_shift_x,@object          # @chroma_shift_x
	.comm	chroma_shift_x,4,4
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
