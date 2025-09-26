	.file	"img_luma.c"
	.text
	.globl	getSubImagesLuma                # -- Begin function getSubImagesLuma
	.p2align	5
	.type	getSubImagesLuma,@function
getSubImagesLuma:                       # @getSubImagesLuma
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
	move	$fp, $a0
	ldptr.w	$a0, $a0, 6396
	addi.w	$a1, $zero, -39
	blt	$a0, $a1, .LBB0_3
# %bb.1:                                # %.lr.ph
	move	$s0, $zero
	ldptr.d	$s1, $fp, 6440
	addi.w	$s2, $a0, -1
	ldptr.w	$s3, $fp, 6392
	addi.w	$s4, $zero, -21
	addi.w	$s5, $zero, -20
	lu12i.w	$a0, 1
	ori	$s6, $a0, 2300
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ldptr.d	$a0, $fp, 6448
	srai.d	$a1, $s5, 63
	andn	$a1, $s5, $a1
	slt	$a2, $a1, $s2
	ld.d	$a0, $a0, 0
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s2, $a2
	or	$a1, $a1, $a2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s1, $a1
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
	alsl.d	$a3, $s3, $a1, 1
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
	ldx.w	$a0, $fp, $s6
	addi.w	$a0, $a0, 19
	addi.d	$s4, $s4, 1
	addi.d	$s0, $s0, 8
	addi.w	$s5, $s5, 1
	blt	$s4, $a0, .LBB0_2
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
	ori	$a2, $zero, 1
	ori	$a6, $zero, 2
	move	$a0, $fp
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(getHorSubImageBiLinear)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 3
	ori	$a4, $zero, 2
	ori	$a7, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	move	$a3, $zero
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(getHorSubImageBiLinear)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	ori	$a3, $zero, 2
	ori	$a5, $zero, 2
	ori	$a6, $zero, 2
	move	$a0, $fp
	move	$a4, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(getHorSubImageBiLinear)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 3
	ori	$a3, $zero, 2
	ori	$a4, $zero, 2
	ori	$a5, $zero, 2
	ori	$a7, $zero, 1
	move	$a0, $fp
	move	$a6, $zero
	pcaddu18i	$ra, %call36(getHorSubImageBiLinear)
	jirl	$ra, $ra, 0
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
	vrepli.w	$vr0, 20
	vrepli.w	$vr1, -5
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
	vldrepl.w	$vr2, $a5, 0
	addi.d	$t6, $s8, 6
	ld.d	$t7, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_10:                               # %vector.body
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $t6, -2
	ld.d	$t8, $t6, 0
	ld.d	$a7, $t6, -4
	vinsgr2vr.d	$vr3, $s0, 0
	ld.d	$s0, $t6, 2
	vinsgr2vr.d	$vr4, $t8, 0
	vinsgr2vr.d	$vr5, $a7, 0
	vsllwil.wu.hu	$vr3, $vr3, 0
	vinsgr2vr.d	$vr6, $s0, 0
	ld.d	$a7, $t6, -6
	vsllwil.wu.hu	$vr4, $vr4, 0
	vadd.w	$vr3, $vr4, $vr3
	vsllwil.wu.hu	$vr4, $vr5, 0
	vinsgr2vr.d	$vr5, $a7, 0
	ld.d	$a7, $t6, 4
	vsllwil.wu.hu	$vr6, $vr6, 0
	vadd.w	$vr4, $vr6, $vr4
	vsllwil.wu.hu	$vr5, $vr5, 0
	vinsgr2vr.d	$vr6, $a7, 0
	vsllwil.wu.hu	$vr6, $vr6, 0
	vmadd.w	$vr5, $vr3, $vr0
	vmadd.w	$vr5, $vr4, $vr1
	vadd.w	$vr3, $vr5, $vr6
	vaddi.wu	$vr4, $vr3, 16
	vsrai.w	$vr4, $vr4, 5
	vmaxi.w	$vr4, $vr4, 0
	vmin.w	$vr4, $vr4, $vr2
	vpickev.h	$vr4, $vr4, $vr4
	vstelm.d	$vr4, $ra, 0, 0
	vst	$vr3, $t4, 0
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
	ldptr.d	$a6, $a0, 6448
	ldptr.w	$s7, $a0, 6396
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a6, $a1
	ldptr.w	$t0, $a0, 6392
	addi.w	$s3, $s7, 40
	slli.d	$a0, $a2, 3
	ldx.d	$a2, $a1, $a0
	addi.w	$a0, $t0, 40
	addi.w	$a1, $s7, 39
	addi.w	$a7, $zero, -39
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	beqz	$a5, .LBB2_4
# %bb.1:                                # %.preheader238
	pcalau12i	$a3, %pc_hi20(imgY_sub_tmp)
	blt	$t0, $a7, .LBB2_29
# %bb.2:                                # %.preheader238.split.us
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	ld.d	$t8, $a3, %pc_lo12(imgY_sub_tmp)
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$t1, $a4, %got_pc_lo12(img)
	ld.d	$a4, $t1, 0
	ld.d	$t4, $t8, 0
	lu12i.w	$a5, 3
	ori	$t2, $a5, 3232
	ldx.w	$a5, $a4, $t2
	ori	$a4, $zero, 1
	slt	$a6, $a4, $a0
	masknez	$a4, $a4, $a6
	maskeqz	$a6, $a0, $a6
	or	$a4, $a6, $a4
	ld.d	$a7, $a2, 0
	ld.d	$t5, $t8, 8
	ld.d	$t6, $t8, 16
	ld.d	$t7, $t8, 24
	ori	$a6, $zero, 4
	bstrpick.d	$t3, $a4, 30, 2
	vreplgr2vr.w	$vr0, $a5
	bge	$a0, $a6, .LBB2_45
# %bb.3:
	move	$fp, $zero
	b	.LBB2_48
.LBB2_4:                                # %.preheader231
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a6, $a3
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	blt	$t0, $a7, .LBB2_30
# %bb.5:                                # %.preheader231.split.us
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$t1, $a4, %got_pc_lo12(img)
	ld.d	$a4, $t1, 0
	ld.d	$t3, $a3, 0
	lu12i.w	$a5, 3
	ori	$t2, $a5, 3232
	ldx.w	$a5, $a4, $t2
	ori	$a4, $zero, 1
	slt	$a6, $a4, $a0
	masknez	$a4, $a4, $a6
	ld.d	$t7, $a2, 0
	ld.d	$t4, $a3, 8
	ld.d	$t5, $a3, 16
	ld.d	$t6, $a3, 24
	maskeqz	$a6, $a0, $a6
	ori	$a7, $zero, 8
	or	$a4, $a6, $a4
	bge	$a0, $a7, .LBB2_79
# %bb.6:
	move	$s5, $s3
	move	$t8, $zero
.LBB2_7:                                # %scalar.ph435.preheader
	alsl.d	$a7, $t8, $t3, 1
	alsl.d	$fp, $t8, $t4, 1
	alsl.d	$s0, $t8, $t5, 1
	alsl.d	$s1, $t8, $t6, 1
	alsl.d	$t7, $t8, $t7, 1
	sub.d	$t8, $a4, $t8
	.p2align	4, , 16
.LBB2_8:                                # %scalar.ph435
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a6, $a7, 0
	ld.hu	$s2, $fp, 0
	ld.hu	$s3, $s0, 0
	add.d	$s2, $s2, $a6
	slli.d	$s4, $s2, 4
	alsl.d	$s2, $s2, $s4, 2
	add.d	$s3, $s3, $a6
	ld.hu	$s4, $s1, 0
	alsl.d	$s3, $s3, $s3, 2
	sub.d	$s2, $s2, $s3
	add.d	$a6, $s2, $a6
	add.d	$a6, $a6, $s4
	addi.w	$a6, $a6, 16
	srai.d	$s2, $a6, 5
	srai.d	$a6, $a6, 63
	andn	$a6, $s2, $a6
	slt	$s2, $a6, $a5
	maskeqz	$a6, $a6, $s2
	masknez	$s2, $a5, $s2
	or	$a6, $a6, $s2
	st.h	$a6, $t7, 0
	addi.d	$a7, $a7, 2
	addi.d	$fp, $fp, 2
	addi.d	$s0, $s0, 2
	addi.d	$s1, $s1, 2
	addi.d	$t8, $t8, -1
	addi.d	$t7, $t7, 2
	bnez	$t8, .LBB2_8
.LBB2_9:                                # %..loopexit230_crit_edge.us
	ld.d	$t7, $a2, 8
	ld.d	$t8, $a3, 32
	ori	$a6, $zero, 8
	bge	$a0, $a6, .LBB2_86
# %bb.10:
	move	$fp, $zero
	move	$s3, $s5
.LBB2_11:                               # %scalar.ph462.preheader
	sub.d	$a7, $a4, $fp
	alsl.d	$t7, $fp, $t7, 1
	alsl.d	$t8, $fp, $t8, 1
	alsl.d	$t6, $fp, $t6, 1
	alsl.d	$t3, $fp, $t3, 1
	alsl.d	$t5, $fp, $t5, 1
	alsl.d	$t4, $fp, $t4, 1
	.p2align	4, , 16
.LBB2_12:                               # %scalar.ph462
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a6, $t4, 0
	ld.hu	$fp, $t5, 0
	ld.hu	$s0, $t3, 0
	ld.hu	$s1, $t6, 0
	add.d	$a6, $fp, $a6
	slli.d	$fp, $a6, 4
	alsl.d	$a6, $a6, $fp, 2
	add.d	$fp, $s1, $s0
	ld.hu	$s1, $t8, 0
	alsl.d	$fp, $fp, $fp, 2
	sub.d	$a6, $a6, $fp
	add.d	$a6, $a6, $s0
	add.d	$a6, $a6, $s1
	addi.w	$a6, $a6, 16
	srai.d	$fp, $a6, 5
	srai.d	$a6, $a6, 63
	andn	$a6, $fp, $a6
	slt	$fp, $a6, $a5
	maskeqz	$a6, $a6, $fp
	masknez	$fp, $a5, $fp
	or	$a6, $a6, $fp
	st.h	$a6, $t7, 0
	addi.d	$a7, $a7, -1
	addi.d	$t7, $t7, 2
	addi.d	$t8, $t8, 2
	addi.d	$t6, $t6, 2
	addi.d	$t3, $t3, 2
	addi.d	$t5, $t5, 2
	addi.d	$t4, $t4, 2
	bnez	$a7, .LBB2_12
.LBB2_13:                               # %.preheader229
	addi.w	$a5, $zero, -34
	addi.w	$s8, $s7, 37
	blt	$s7, $a5, .LBB2_31
# %bb.14:                               # %.lr.ph255.split.us
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a5, $t1, 0
	ldx.w	$t1, $a5, $t2
	ori	$a5, $zero, 3
	slt	$a6, $a5, $s8
	masknez	$a5, $a5, $a6
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	maskeqz	$a6, $s8, $a6
	or	$t2, $a6, $a5
	ld.d	$t8, $a3, 16
	bstrpick.d	$a5, $a4, 30, 3
	slli.d	$a5, $a5, 3
	vreplgr2vr.w	$vr0, $t1
	ori	$t6, $zero, 2
	ori	$t4, $zero, 8
	ori	$t5, $zero, 16
	vrepli.w	$vr1, 20
	vrepli.w	$vr2, -5
	b	.LBB2_16
	.p2align	4, , 16
.LBB2_15:                               # %..loopexit228_crit_edge.us
                                        #   in Loop: Header=BB2_16 Depth=1
	move	$t8, $t7
	beq	$t6, $t2, .LBB2_94
.LBB2_16:                               # %.lr.ph253.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_27 Depth 2
                                        #     Child Loop BB2_19 Depth 2
	slli.d	$a6, $t6, 3
	ldx.d	$a7, $a2, $a6
	alsl.d	$a6, $t6, $a3, 3
	addi.d	$t6, $t6, 1
	slli.d	$t3, $t6, 3
	ldx.d	$t7, $a3, $t3
	ld.d	$s0, $a6, -8
	ld.d	$s1, $a6, 16
	ld.d	$s2, $a6, -16
	ld.d	$s3, $a6, 24
	bge	$a0, $t4, .LBB2_20
# %bb.17:                               #   in Loop: Header=BB2_16 Depth=1
	move	$a6, $zero
.LBB2_18:                               # %scalar.ph492.preheader
                                        #   in Loop: Header=BB2_16 Depth=1
	alsl.d	$t3, $a6, $t8, 1
	alsl.d	$t8, $a6, $t7, 1
	alsl.d	$fp, $a6, $s0, 1
	alsl.d	$s0, $a6, $s1, 1
	alsl.d	$s1, $a6, $s2, 1
	alsl.d	$s2, $a6, $s3, 1
	alsl.d	$a7, $a6, $a7, 1
	sub.d	$s3, $a4, $a6
	.p2align	4, , 16
.LBB2_19:                               # %scalar.ph492
                                        #   Parent Loop BB2_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a6, $t3, 0
	ld.hu	$s4, $t8, 0
	ld.hu	$s5, $fp, 0
	ld.hu	$s6, $s0, 0
	add.d	$a6, $s4, $a6
	slli.d	$s4, $a6, 4
	alsl.d	$a6, $a6, $s4, 2
	add.d	$s4, $s6, $s5
	ld.hu	$s5, $s1, 0
	ld.hu	$s6, $s2, 0
	alsl.d	$s4, $s4, $s4, 2
	sub.d	$a6, $a6, $s4
	add.d	$a6, $a6, $s5
	add.d	$a6, $a6, $s6
	addi.w	$a6, $a6, 16
	srai.d	$s4, $a6, 5
	srai.d	$a6, $a6, 63
	andn	$a6, $s4, $a6
	slt	$s4, $a6, $t1
	maskeqz	$a6, $a6, $s4
	masknez	$s4, $t1, $s4
	or	$a6, $a6, $s4
	st.h	$a6, $a7, 0
	addi.d	$t3, $t3, 2
	addi.d	$t8, $t8, 2
	addi.d	$fp, $fp, 2
	addi.d	$s0, $s0, 2
	addi.d	$s1, $s1, 2
	addi.d	$s2, $s2, 2
	addi.d	$s3, $s3, -1
	addi.d	$a7, $a7, 2
	bnez	$s3, .LBB2_19
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_20:                               # %vector.memcheck480
                                        #   in Loop: Header=BB2_16 Depth=1
	sub.d	$t3, $a7, $t8
	move	$a6, $zero
	bltu	$t3, $t5, .LBB2_18
# %bb.21:                               # %vector.memcheck480
                                        #   in Loop: Header=BB2_16 Depth=1
	sub.d	$t3, $a7, $t7
	bltu	$t3, $t5, .LBB2_18
# %bb.22:                               # %vector.memcheck480
                                        #   in Loop: Header=BB2_16 Depth=1
	sub.d	$t3, $a7, $s0
	bltu	$t3, $t5, .LBB2_18
# %bb.23:                               # %vector.memcheck480
                                        #   in Loop: Header=BB2_16 Depth=1
	sub.d	$t3, $a7, $s1
	bltu	$t3, $t5, .LBB2_18
# %bb.24:                               # %vector.memcheck480
                                        #   in Loop: Header=BB2_16 Depth=1
	sub.d	$t3, $a7, $s2
	bltu	$t3, $t5, .LBB2_18
# %bb.25:                               # %vector.memcheck480
                                        #   in Loop: Header=BB2_16 Depth=1
	sub.d	$t3, $a7, $s3
	bltu	$t3, $t5, .LBB2_18
# %bb.26:                               # %vector.body499.preheader
                                        #   in Loop: Header=BB2_16 Depth=1
	move	$s4, $t8
	move	$s5, $t7
	move	$s6, $s0
	move	$s7, $s1
	move	$s8, $s2
	move	$ra, $s3
	move	$fp, $a7
	move	$t3, $a5
	.p2align	4, , 16
.LBB2_27:                               # %vector.body499
                                        #   Parent Loop BB2_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $s4, 0
	vld	$vr4, $s5, 0
	vbsrl.v	$vr5, $vr3, 8
	vsllwil.wu.hu	$vr5, $vr5, 0
	vsllwil.wu.hu	$vr3, $vr3, 0
	vbsrl.v	$vr6, $vr4, 8
	vsllwil.wu.hu	$vr6, $vr6, 0
	vsllwil.wu.hu	$vr4, $vr4, 0
	vadd.w	$vr3, $vr4, $vr3
	vadd.w	$vr4, $vr6, $vr5
	vld	$vr5, $s6, 0
	vmul.w	$vr4, $vr4, $vr1
	vmul.w	$vr3, $vr3, $vr1
	vld	$vr6, $s7, 0
	vsllwil.wu.hu	$vr7, $vr5, 0
	vbsrl.v	$vr5, $vr5, 8
	vsllwil.wu.hu	$vr5, $vr5, 0
	vsllwil.wu.hu	$vr8, $vr6, 0
	vbsrl.v	$vr6, $vr6, 8
	vsllwil.wu.hu	$vr6, $vr6, 0
	vld	$vr9, $s8, 0
	vadd.w	$vr5, $vr6, $vr5
	vadd.w	$vr6, $vr8, $vr7
	vld	$vr7, $ra, 0
	vsllwil.wu.hu	$vr8, $vr9, 0
	vbsrl.v	$vr9, $vr9, 8
	vsllwil.wu.hu	$vr9, $vr9, 0
	vbsrl.v	$vr10, $vr7, 8
	vsllwil.wu.hu	$vr10, $vr10, 0
	vsllwil.wu.hu	$vr7, $vr7, 0
	vmadd.w	$vr3, $vr6, $vr2
	vmadd.w	$vr4, $vr5, $vr2
	vadd.w	$vr4, $vr4, $vr9
	vadd.w	$vr3, $vr3, $vr8
	vadd.w	$vr3, $vr3, $vr7
	vadd.w	$vr4, $vr4, $vr10
	vaddi.wu	$vr4, $vr4, 16
	vaddi.wu	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 5
	vsrai.w	$vr4, $vr4, 5
	vmaxi.w	$vr4, $vr4, 0
	vmaxi.w	$vr3, $vr3, 0
	vmin.w	$vr3, $vr3, $vr0
	vmin.w	$vr4, $vr4, $vr0
	vpickev.h	$vr3, $vr4, $vr3
	vst	$vr3, $fp, 0
	addi.d	$t3, $t3, -8
	addi.d	$fp, $fp, 16
	addi.d	$ra, $ra, 16
	addi.d	$s8, $s8, 16
	addi.d	$s7, $s7, 16
	addi.d	$s6, $s6, 16
	addi.d	$s5, $s5, 16
	addi.d	$s4, $s4, 16
	bnez	$t3, .LBB2_27
# %bb.28:                               # %middle.block508
                                        #   in Loop: Header=BB2_16 Depth=1
	move	$a6, $a5
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	beq	$a5, $a4, .LBB2_15
	b	.LBB2_18
.LBB2_29:                               # %.preheader236.thread
	addi.w	$a5, $s7, 37
	addi.w	$a4, $zero, -40
	blt	$a4, $t0, .LBB2_69
	b	.LBB2_116
.LBB2_30:                               # %.preheader229.thread
	addi.w	$s8, $s7, 37
.LBB2_31:                               # %.lr.ph261
	addi.w	$a4, $zero, -40
	bge	$a4, $t0, .LBB2_116
.LBB2_32:                               # %.lr.ph259
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$a4, $a4, %got_pc_lo12(img)
	ld.d	$t0, $a4, 0
	ori	$a4, $zero, 1
	slt	$a5, $a4, $a0
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a0, $a5
	slli.d	$a6, $s8, 3
	ldx.d	$t4, $a2, $a6
	addi.d	$t2, $s8, 1
	slt	$a7, $a1, $s3
	masknez	$t1, $s3, $a7
	maskeqz	$a7, $a1, $a7
	or	$a7, $a7, $t1
	slt	$t1, $a1, $a1
	masknez	$t3, $a1, $t1
	maskeqz	$t1, $a1, $t1
	or	$t1, $t1, $t3
	addi.w	$t3, $t2, 0
	slt	$t5, $a1, $t3
	masknez	$t3, $t3, $t5
	maskeqz	$t5, $a1, $t5
	or	$t3, $t5, $t3
	alsl.d	$fp, $s8, $a3, 3
	ldx.d	$t5, $a3, $a6
	slli.d	$a6, $t3, 3
	ldx.d	$t6, $a3, $a6
	ld.d	$t7, $fp, -8
	slli.d	$a6, $t1, 3
	ldx.d	$t8, $a3, $a6
	ld.d	$fp, $fp, -16
	slli.d	$a6, $a7, 3
	ldx.d	$s0, $a3, $a6
	lu12i.w	$a6, 3
	ori	$t1, $a6, 3232
	ldx.w	$t3, $t0, $t1
	or	$a4, $a5, $a4
	ori	$a5, $zero, 8
	bstrpick.d	$a4, $a4, 31, 0
	bge	$a0, $a5, .LBB2_95
# %bb.33:
	move	$s1, $zero
.LBB2_34:                               # %scalar.ph523.preheader
	alsl.d	$a5, $s1, $t4, 1
	alsl.d	$a7, $s1, $s0, 1
	alsl.d	$t4, $s1, $fp, 1
	alsl.d	$t8, $s1, $t8, 1
	alsl.d	$t7, $s1, $t7, 1
	alsl.d	$t6, $s1, $t6, 1
	alsl.d	$t5, $s1, $t5, 1
	sub.d	$fp, $a4, $s1
	.p2align	4, , 16
.LBB2_35:                               # %scalar.ph523
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a6, $t5, 0
	ld.hu	$s0, $t6, 0
	ld.hu	$s1, $t7, 0
	ld.hu	$s2, $t8, 0
	add.d	$a6, $s0, $a6
	slli.d	$s0, $a6, 4
	alsl.d	$a6, $a6, $s0, 2
	add.d	$s0, $s2, $s1
	ld.hu	$s1, $t4, 0
	ld.hu	$s2, $a7, 0
	alsl.d	$s0, $s0, $s0, 2
	sub.d	$a6, $a6, $s0
	add.d	$a6, $a6, $s1
	add.d	$a6, $a6, $s2
	addi.w	$a6, $a6, 16
	srai.d	$s0, $a6, 5
	srai.d	$a6, $a6, 63
	andn	$a6, $s0, $a6
	slt	$s0, $a6, $t3
	maskeqz	$a6, $a6, $s0
	masknez	$s0, $t3, $s0
	or	$a6, $a6, $s0
	st.h	$a6, $a5, 0
	addi.d	$a5, $a5, 2
	addi.d	$a7, $a7, 2
	addi.d	$t4, $t4, 2
	addi.d	$t8, $t8, 2
	addi.d	$t7, $t7, 2
	addi.d	$t6, $t6, 2
	addi.d	$fp, $fp, -1
	addi.d	$t5, $t5, 2
	bnez	$fp, .LBB2_35
.LBB2_36:                               # %.loopexit
	bge	$t2, $s3, .LBB2_116
# %bb.37:                               # %.lr.ph259.1
	slli.d	$a5, $t2, 3
	ldx.d	$t4, $a2, $a5
	addi.d	$a7, $s8, 2
	addi.w	$a6, $s7, 41
	slt	$t3, $a1, $a6
	masknez	$a6, $a6, $t3
	maskeqz	$t3, $a1, $t3
	or	$a6, $t3, $a6
	addi.w	$t3, $s8, 3
	slt	$t5, $a1, $t3
	masknez	$t3, $t3, $t5
	maskeqz	$t5, $a1, $t5
	or	$t3, $t5, $t3
	addi.w	$t5, $a7, 0
	slt	$t6, $a1, $t5
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $a1, $t6
	or	$t6, $t6, $t5
	alsl.d	$t2, $t2, $a3, 3
	ldx.d	$t5, $a3, $a5
	slli.d	$a5, $t6, 3
	ldx.d	$t6, $a3, $a5
	ld.d	$t7, $t2, -8
	slli.d	$a5, $t3, 3
	ldx.d	$t8, $a3, $a5
	ld.d	$fp, $t2, -16
	slli.d	$t2, $a6, 3
	ldx.d	$s0, $a3, $t2
	ldx.w	$t3, $t0, $t1
	ori	$a6, $zero, 8
	bge	$a0, $a6, .LBB2_117
# %bb.38:
	move	$s1, $zero
.LBB2_39:                               # %scalar.ph554.preheader
	sub.d	$s2, $a4, $s1
	alsl.d	$t4, $s1, $t4, 1
	alsl.d	$s0, $s1, $s0, 1
	alsl.d	$fp, $s1, $fp, 1
	alsl.d	$t8, $s1, $t8, 1
	alsl.d	$t7, $s1, $t7, 1
	alsl.d	$t6, $s1, $t6, 1
	alsl.d	$t5, $s1, $t5, 1
	.p2align	4, , 16
.LBB2_40:                               # %scalar.ph554
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a6, $t5, 0
	ld.hu	$s1, $t6, 0
	ld.hu	$s3, $t7, 0
	ld.hu	$s4, $t8, 0
	add.d	$a6, $s1, $a6
	slli.d	$s1, $a6, 4
	alsl.d	$a6, $a6, $s1, 2
	add.d	$s1, $s4, $s3
	ld.hu	$s3, $fp, 0
	ld.hu	$s4, $s0, 0
	alsl.d	$s1, $s1, $s1, 2
	sub.d	$a6, $a6, $s1
	add.d	$a6, $a6, $s3
	add.d	$a6, $a6, $s4
	addi.w	$a6, $a6, 16
	srai.d	$s1, $a6, 5
	srai.d	$a6, $a6, 63
	andn	$a6, $s1, $a6
	slt	$s1, $a6, $t3
	maskeqz	$a6, $a6, $s1
	masknez	$s1, $t3, $s1
	or	$a6, $a6, $s1
	st.h	$a6, $t4, 0
	addi.d	$s2, $s2, -1
	addi.d	$t4, $t4, 2
	addi.d	$s0, $s0, 2
	addi.d	$fp, $fp, 2
	addi.d	$t8, $t8, 2
	addi.d	$t7, $t7, 2
	addi.d	$t6, $t6, 2
	addi.d	$t5, $t5, 2
	bnez	$s2, .LBB2_40
.LBB2_41:                               # %.lr.ph259.2
	slli.d	$a6, $a7, 3
	ldx.d	$a2, $a2, $a6
	addi.w	$t3, $s7, 42
	slt	$t4, $a1, $t3
	masknez	$t3, $t3, $t4
	maskeqz	$a1, $a1, $t4
	or	$a1, $a1, $t3
	alsl.d	$t3, $a7, $a3, 3
	ldx.d	$a6, $a3, $a6
	ldx.d	$a5, $a3, $a5
	ld.d	$a7, $t3, -8
	ldx.d	$t2, $a3, $t2
	ld.d	$t3, $t3, -16
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a3, $a1
	ldx.w	$a1, $t0, $t1
	ori	$t0, $zero, 8
	bge	$a0, $t0, .LBB2_126
# %bb.42:
	move	$a0, $zero
.LBB2_43:                               # %scalar.ph585.preheader
	sub.d	$a4, $a4, $a0
	alsl.d	$a2, $a0, $a2, 1
	alsl.d	$a3, $a0, $a3, 1
	alsl.d	$t0, $a0, $t3, 1
	alsl.d	$t1, $a0, $t2, 1
	alsl.d	$a7, $a0, $a7, 1
	alsl.d	$a5, $a0, $a5, 1
	alsl.d	$a0, $a0, $a6, 1
	.p2align	4, , 16
.LBB2_44:                               # %scalar.ph585
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a6, $a0, 0
	ld.hu	$t2, $a5, 0
	ld.hu	$t3, $a7, 0
	ld.hu	$t4, $t1, 0
	add.d	$a6, $t2, $a6
	slli.d	$t2, $a6, 4
	alsl.d	$a6, $a6, $t2, 2
	add.d	$t2, $t4, $t3
	ld.hu	$t3, $t0, 0
	ld.hu	$t4, $a3, 0
	alsl.d	$t2, $t2, $t2, 2
	sub.d	$a6, $a6, $t2
	add.d	$a6, $a6, $t3
	add.d	$a6, $a6, $t4
	addi.w	$a6, $a6, 16
	srai.d	$t2, $a6, 5
	srai.d	$a6, $a6, 63
	andn	$a6, $t2, $a6
	slt	$t2, $a6, $a1
	maskeqz	$a6, $a6, $t2
	masknez	$t2, $a1, $t2
	or	$a6, $a6, $t2
	st.h	$a6, $a2, 0
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 2
	addi.d	$a3, $a3, 2
	addi.d	$t0, $t0, 2
	addi.d	$t1, $t1, 2
	addi.d	$a7, $a7, 2
	addi.d	$a5, $a5, 2
	addi.d	$a0, $a0, 2
	bnez	$a4, .LBB2_44
	b	.LBB2_116
.LBB2_45:                               # %vector.ph
	slli.d	$fp, $t3, 2
	vrepli.w	$vr1, 20
	vrepli.w	$vr2, -5
	ori	$a6, $zero, 512
	vreplgr2vr.w	$vr3, $a6
	move	$a6, $t4
	move	$s0, $t5
	move	$s1, $t6
	move	$s2, $t7
	move	$s3, $a7
	move	$s4, $fp
	.p2align	4, , 16
.LBB2_46:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a6, 0
	vld	$vr5, $s0, 0
	vld	$vr6, $s1, 0
	vadd.w	$vr5, $vr5, $vr4
	vmul.w	$vr5, $vr5, $vr1
	vld	$vr7, $s2, 0
	vadd.w	$vr6, $vr6, $vr4
	vmadd.w	$vr5, $vr6, $vr2
	vadd.w	$vr4, $vr5, $vr4
	vadd.w	$vr4, $vr4, $vr7
	vadd.w	$vr4, $vr4, $vr3
	vsrai.w	$vr4, $vr4, 10
	vmaxi.w	$vr4, $vr4, 0
	vmin.w	$vr4, $vr4, $vr0
	vpickev.h	$vr4, $vr4, $vr4
	vstelm.d	$vr4, $s3, 0, 0
	addi.d	$s4, $s4, -4
	addi.d	$s3, $s3, 8
	addi.d	$s2, $s2, 16
	addi.d	$s1, $s1, 16
	addi.d	$s0, $s0, 16
	addi.d	$a6, $a6, 16
	bnez	$s4, .LBB2_46
# %bb.47:                               # %middle.block
	beq	$fp, $a4, .LBB2_50
.LBB2_48:                               # %scalar.ph.preheader
	alsl.d	$s0, $fp, $t4, 2
	alsl.d	$s1, $fp, $t5, 2
	alsl.d	$s2, $fp, $t6, 2
	alsl.d	$s3, $fp, $t7, 2
	alsl.d	$a7, $fp, $a7, 1
	sub.d	$fp, $a4, $fp
	.p2align	4, , 16
.LBB2_49:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $s0, 0
	ld.w	$s4, $s1, 0
	ld.w	$s5, $s2, 0
	add.w	$s4, $s4, $a6
	slli.d	$s6, $s4, 4
	alsl.d	$s4, $s4, $s6, 2
	add.w	$s5, $s5, $a6
	ld.w	$s6, $s3, 0
	alsl.d	$s5, $s5, $s5, 2
	sub.d	$s4, $s4, $s5
	add.d	$a6, $s4, $a6
	add.d	$a6, $a6, $s6
	addi.w	$a6, $a6, 512
	srai.d	$s4, $a6, 10
	srai.d	$a6, $a6, 63
	andn	$a6, $s4, $a6
	slt	$s4, $a6, $a5
	maskeqz	$a6, $a6, $s4
	masknez	$s4, $a5, $s4
	or	$a6, $a6, $s4
	st.h	$a6, $a7, 0
	addi.d	$s0, $s0, 4
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 4
	addi.d	$s3, $s3, 4
	addi.d	$fp, $fp, -1
	addi.d	$a7, $a7, 2
	bnez	$fp, .LBB2_49
.LBB2_50:                               # %..loopexit237_crit_edge.us
	ld.d	$a7, $a2, 8
	ld.d	$t8, $t8, 32
	ori	$a6, $zero, 4
	bge	$a0, $a6, .LBB2_52
# %bb.51:
	move	$fp, $zero
	b	.LBB2_55
.LBB2_52:                               # %vector.ph338
	slli.d	$fp, $t3, 2
	vrepli.w	$vr1, 20
	vrepli.w	$vr2, -5
	ori	$a6, $zero, 512
	vreplgr2vr.w	$vr3, $a6
	move	$s0, $t5
	move	$s1, $t6
	move	$s2, $t4
	move	$s3, $t7
	move	$a6, $t8
	move	$s4, $a7
	move	$s5, $fp
	.p2align	4, , 16
.LBB2_53:                               # %vector.body343
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $s0, 0
	vld	$vr5, $s1, 0
	vld	$vr6, $s2, 0
	vld	$vr7, $s3, 0
	vadd.w	$vr4, $vr5, $vr4
	vmul.w	$vr4, $vr4, $vr1
	vld	$vr5, $a6, 0
	vadd.w	$vr7, $vr7, $vr6
	vmadd.w	$vr4, $vr7, $vr2
	vadd.w	$vr4, $vr4, $vr6
	vadd.w	$vr4, $vr4, $vr5
	vadd.w	$vr4, $vr4, $vr3
	vsrai.w	$vr4, $vr4, 10
	vmaxi.w	$vr4, $vr4, 0
	vmin.w	$vr4, $vr4, $vr0
	vpickev.h	$vr4, $vr4, $vr4
	vstelm.d	$vr4, $s4, 0, 0
	addi.d	$s5, $s5, -4
	addi.d	$s4, $s4, 8
	addi.d	$a6, $a6, 16
	addi.d	$s3, $s3, 16
	addi.d	$s2, $s2, 16
	addi.d	$s1, $s1, 16
	addi.d	$s0, $s0, 16
	bnez	$s5, .LBB2_53
# %bb.54:                               # %middle.block351
	beq	$fp, $a4, .LBB2_57
.LBB2_55:                               # %scalar.ph336.preheader
	sub.d	$s0, $a4, $fp
	alsl.d	$a7, $fp, $a7, 1
	alsl.d	$t8, $fp, $t8, 2
	alsl.d	$t7, $fp, $t7, 2
	alsl.d	$t4, $fp, $t4, 2
	alsl.d	$t6, $fp, $t6, 2
	alsl.d	$t5, $fp, $t5, 2
	.p2align	4, , 16
.LBB2_56:                               # %scalar.ph336
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $t5, 0
	ld.w	$fp, $t6, 0
	ld.w	$s1, $t4, 0
	ld.w	$s2, $t7, 0
	add.w	$a6, $fp, $a6
	slli.d	$fp, $a6, 4
	alsl.d	$a6, $a6, $fp, 2
	add.w	$fp, $s2, $s1
	ld.w	$s2, $t8, 0
	alsl.d	$fp, $fp, $fp, 2
	sub.d	$a6, $a6, $fp
	add.d	$a6, $a6, $s1
	add.d	$a6, $a6, $s2
	addi.w	$a6, $a6, 512
	srai.d	$fp, $a6, 10
	srai.d	$a6, $a6, 63
	andn	$a6, $fp, $a6
	slt	$fp, $a6, $a5
	maskeqz	$a6, $a6, $fp
	masknez	$fp, $a5, $fp
	or	$a6, $a6, $fp
	st.h	$a6, $a7, 0
	addi.d	$s0, $s0, -1
	addi.d	$a7, $a7, 2
	addi.d	$t8, $t8, 4
	addi.d	$t7, $t7, 4
	addi.d	$t4, $t4, 4
	addi.d	$t6, $t6, 4
	addi.d	$t5, $t5, 4
	bnez	$s0, .LBB2_56
.LBB2_57:                               # %.preheader236
	addi.w	$a6, $zero, -35
	addi.w	$a5, $s7, 37
	bge	$a6, $s7, .LBB2_68
# %bb.58:                               # %.lr.ph244
	ld.d	$a6, $t1, 0
	ld.d	$t1, $a3, %pc_lo12(imgY_sub_tmp)
	ldx.w	$t2, $a6, $t2
	ori	$a6, $zero, 3
	slt	$a7, $a6, $a5
	masknez	$a6, $a6, $a7
	maskeqz	$a7, $a5, $a7
	or	$t4, $a7, $a6
	ld.d	$t8, $t1, 16
	slli.d	$a6, $t3, 2
	vreplgr2vr.w	$vr0, $t2
	ori	$t6, $zero, 2
	ori	$t5, $zero, 4
	vrepli.w	$vr1, 20
	vrepli.w	$vr2, -5
	ori	$a7, $zero, 512
	vreplgr2vr.w	$vr3, $a7
	b	.LBB2_60
	.p2align	4, , 16
.LBB2_59:                               # %..loopexit235_crit_edge.us
                                        #   in Loop: Header=BB2_60 Depth=1
	move	$t8, $t7
	beq	$t6, $t4, .LBB2_67
.LBB2_60:                               # %.lr.ph.us245
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_63 Depth 2
                                        #     Child Loop BB2_66 Depth 2
	slli.d	$a7, $t6, 3
	ldx.d	$a7, $a2, $a7
	alsl.d	$t3, $t6, $t1, 3
	addi.d	$t6, $t6, 1
	slli.d	$t7, $t6, 3
	ldx.d	$t7, $t1, $t7
	ld.d	$fp, $t3, -8
	ld.d	$s0, $t3, 16
	ld.d	$s1, $t3, -16
	ld.d	$s2, $t3, 24
	bge	$a0, $t5, .LBB2_62
# %bb.61:                               #   in Loop: Header=BB2_60 Depth=1
	move	$t3, $zero
	b	.LBB2_65
	.p2align	4, , 16
.LBB2_62:                               # %vector.body361.preheader
                                        #   in Loop: Header=BB2_60 Depth=1
	move	$s3, $t8
	move	$s4, $t7
	move	$s5, $fp
	move	$s6, $s0
	move	$s7, $s1
	move	$s8, $s2
	move	$ra, $a7
	move	$t3, $a6
	.p2align	4, , 16
.LBB2_63:                               # %vector.body361
                                        #   Parent Loop BB2_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr4, $s3, 0
	vld	$vr5, $s4, 0
	vld	$vr6, $s5, 0
	vld	$vr7, $s6, 0
	vadd.w	$vr4, $vr5, $vr4
	vadd.w	$vr5, $vr7, $vr6
	vld	$vr6, $s7, 0
	vld	$vr7, $s8, 0
	vmul.w	$vr4, $vr4, $vr1
	vmadd.w	$vr4, $vr5, $vr2
	vadd.w	$vr4, $vr4, $vr6
	vadd.w	$vr4, $vr4, $vr7
	vadd.w	$vr4, $vr4, $vr3
	vsrai.w	$vr4, $vr4, 10
	vmaxi.w	$vr4, $vr4, 0
	vmin.w	$vr4, $vr4, $vr0
	vpickev.h	$vr4, $vr4, $vr4
	vstelm.d	$vr4, $ra, 0, 0
	addi.d	$t3, $t3, -4
	addi.d	$ra, $ra, 8
	addi.d	$s8, $s8, 16
	addi.d	$s7, $s7, 16
	addi.d	$s6, $s6, 16
	addi.d	$s5, $s5, 16
	addi.d	$s4, $s4, 16
	addi.d	$s3, $s3, 16
	bnez	$t3, .LBB2_63
# %bb.64:                               # %middle.block370
                                        #   in Loop: Header=BB2_60 Depth=1
	move	$t3, $a6
	beq	$a6, $a4, .LBB2_59
.LBB2_65:                               # %scalar.ph354.preheader
                                        #   in Loop: Header=BB2_60 Depth=1
	alsl.d	$t8, $t3, $t8, 2
	alsl.d	$s3, $t3, $t7, 2
	alsl.d	$fp, $t3, $fp, 2
	alsl.d	$s0, $t3, $s0, 2
	alsl.d	$s1, $t3, $s1, 2
	alsl.d	$s2, $t3, $s2, 2
	alsl.d	$a7, $t3, $a7, 1
	sub.d	$s4, $a4, $t3
	.p2align	4, , 16
.LBB2_66:                               # %scalar.ph354
                                        #   Parent Loop BB2_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t8, 0
	ld.w	$s5, $s3, 0
	ld.w	$s6, $fp, 0
	ld.w	$s7, $s0, 0
	add.w	$t3, $s5, $t3
	slli.d	$s5, $t3, 4
	alsl.d	$t3, $t3, $s5, 2
	add.w	$s5, $s7, $s6
	ld.w	$s6, $s1, 0
	ld.w	$s7, $s2, 0
	alsl.d	$s5, $s5, $s5, 2
	sub.d	$t3, $t3, $s5
	add.d	$t3, $t3, $s6
	add.d	$t3, $t3, $s7
	addi.w	$t3, $t3, 512
	srai.d	$s5, $t3, 10
	srai.d	$t3, $t3, 63
	andn	$t3, $s5, $t3
	slt	$s5, $t3, $t2
	maskeqz	$t3, $t3, $s5
	masknez	$s5, $t2, $s5
	or	$t3, $t3, $s5
	st.h	$t3, $a7, 0
	addi.d	$t8, $t8, 4
	addi.d	$s3, $s3, 4
	addi.d	$fp, $fp, 4
	addi.d	$s0, $s0, 4
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 4
	addi.d	$s4, $s4, -1
	addi.d	$a7, $a7, 2
	bnez	$s4, .LBB2_66
	b	.LBB2_59
.LBB2_67:
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
.LBB2_68:                               # %.lr.ph248
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a4, $zero, -40
	bge	$a4, $t0, .LBB2_116
.LBB2_69:                               # %.lr.ph
	ld.d	$a4, $a3, %pc_lo12(imgY_sub_tmp)
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	ld.d	$t0, $a3, 0
	ori	$a3, $zero, 1
	slt	$a6, $a3, $a0
	masknez	$a3, $a3, $a6
	maskeqz	$a6, $a0, $a6
	slli.d	$a7, $a5, 3
	ldx.d	$t4, $a2, $a7
	addi.d	$t2, $a5, 1
	slt	$t1, $a1, $s3
	move	$s8, $s3
	masknez	$t3, $s3, $t1
	maskeqz	$t1, $a1, $t1
	or	$t1, $t1, $t3
	slt	$t3, $a1, $a1
	masknez	$t5, $a1, $t3
	maskeqz	$t3, $a1, $t3
	or	$t3, $t3, $t5
	addi.w	$t5, $t2, 0
	slt	$t6, $a1, $t5
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $a1, $t6
	or	$t6, $t6, $t5
	alsl.d	$fp, $a5, $a4, 3
	ldx.d	$t5, $a4, $a7
	slli.d	$a7, $t6, 3
	ldx.d	$t6, $a4, $a7
	ld.d	$t7, $fp, -8
	slli.d	$a7, $t3, 3
	ldx.d	$t8, $a4, $a7
	ld.d	$a7, $fp, -16
	slli.d	$t1, $t1, 3
	ldx.d	$fp, $a4, $t1
	lu12i.w	$t1, 3
	ori	$t1, $t1, 3232
	ldx.w	$t3, $t0, $t1
	or	$a3, $a6, $a3
	ori	$a6, $zero, 4
	bstrpick.d	$a3, $a3, 31, 0
	bge	$a0, $a6, .LBB2_71
# %bb.70:
	move	$s0, $zero
	b	.LBB2_74
.LBB2_71:                               # %vector.ph375
	bstrpick.d	$a6, $a3, 30, 2
	slli.d	$s0, $a6, 2
	vreplgr2vr.w	$vr0, $t3
	vrepli.w	$vr1, 20
	vrepli.w	$vr2, -5
	ori	$a6, $zero, 512
	vreplgr2vr.w	$vr3, $a6
	move	$s1, $t5
	move	$s2, $t6
	move	$s3, $t7
	move	$s4, $t8
	move	$s5, $a7
	move	$s6, $fp
	move	$s7, $t4
	move	$a6, $s0
	.p2align	4, , 16
.LBB2_72:                               # %vector.body380
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $s1, 0
	vld	$vr5, $s2, 0
	vld	$vr6, $s3, 0
	vld	$vr7, $s4, 0
	vadd.w	$vr4, $vr5, $vr4
	vadd.w	$vr5, $vr7, $vr6
	vld	$vr6, $s5, 0
	vld	$vr7, $s6, 0
	vmul.w	$vr4, $vr4, $vr1
	vmadd.w	$vr4, $vr5, $vr2
	vadd.w	$vr4, $vr4, $vr6
	vadd.w	$vr4, $vr4, $vr7
	vadd.w	$vr4, $vr4, $vr3
	vsrai.w	$vr4, $vr4, 10
	vmaxi.w	$vr4, $vr4, 0
	vmin.w	$vr4, $vr4, $vr0
	vpickev.h	$vr4, $vr4, $vr4
	vstelm.d	$vr4, $s7, 0, 0
	addi.d	$a6, $a6, -4
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 16
	addi.d	$s5, $s5, 16
	addi.d	$s4, $s4, 16
	addi.d	$s3, $s3, 16
	addi.d	$s2, $s2, 16
	addi.d	$s1, $s1, 16
	bnez	$a6, .LBB2_72
# %bb.73:                               # %middle.block389
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	beq	$s0, $a3, .LBB2_76
.LBB2_74:                               # %scalar.ph373.preheader
	alsl.d	$t4, $s0, $t4, 1
	alsl.d	$fp, $s0, $fp, 2
	alsl.d	$a7, $s0, $a7, 2
	alsl.d	$t8, $s0, $t8, 2
	alsl.d	$t7, $s0, $t7, 2
	alsl.d	$t6, $s0, $t6, 2
	alsl.d	$t5, $s0, $t5, 2
	sub.d	$s0, $a3, $s0
	.p2align	4, , 16
.LBB2_75:                               # %scalar.ph373
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $t5, 0
	ld.w	$s1, $t6, 0
	ld.w	$s2, $t7, 0
	ld.w	$s3, $t8, 0
	add.w	$a6, $s1, $a6
	slli.d	$s1, $a6, 4
	alsl.d	$a6, $a6, $s1, 2
	add.w	$s1, $s3, $s2
	ld.w	$s2, $a7, 0
	ld.w	$s3, $fp, 0
	alsl.d	$s1, $s1, $s1, 2
	sub.d	$a6, $a6, $s1
	add.d	$a6, $a6, $s2
	add.d	$a6, $a6, $s3
	addi.w	$a6, $a6, 512
	srai.d	$s1, $a6, 10
	srai.d	$a6, $a6, 63
	andn	$a6, $s1, $a6
	slt	$s1, $a6, $t3
	maskeqz	$a6, $a6, $s1
	masknez	$s1, $t3, $s1
	or	$a6, $a6, $s1
	st.h	$a6, $t4, 0
	addi.d	$t4, $t4, 2
	addi.d	$fp, $fp, 4
	addi.d	$a7, $a7, 4
	addi.d	$t8, $t8, 4
	addi.d	$t7, $t7, 4
	addi.d	$t6, $t6, 4
	addi.d	$s0, $s0, -1
	addi.d	$t5, $t5, 4
	bnez	$s0, .LBB2_75
.LBB2_76:                               # %.loopexit232
	bge	$t2, $s8, .LBB2_116
# %bb.77:                               # %.lr.ph.1
	slli.d	$a6, $t2, 3
	ldx.d	$t4, $a2, $a6
	addi.d	$a7, $a5, 2
	addi.w	$t3, $s7, 41
	slt	$t5, $a1, $t3
	masknez	$t3, $t3, $t5
	maskeqz	$t5, $a1, $t5
	or	$t3, $t5, $t3
	addi.w	$a5, $a5, 3
	slt	$t5, $a1, $a5
	masknez	$a5, $a5, $t5
	maskeqz	$t5, $a1, $t5
	or	$a5, $t5, $a5
	addi.w	$t5, $a7, 0
	slt	$t6, $a1, $t5
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $a1, $t6
	or	$t6, $t6, $t5
	alsl.d	$t2, $t2, $a4, 3
	ldx.d	$t5, $a4, $a6
	slli.d	$a6, $t6, 3
	ldx.d	$t6, $a4, $a6
	ld.d	$t7, $t2, -8
	slli.d	$a5, $a5, 3
	ldx.d	$t8, $a4, $a5
	ld.d	$fp, $t2, -16
	slli.d	$t2, $t3, 3
	ldx.d	$s0, $a4, $t2
	ldx.w	$t3, $t0, $t1
	ori	$a6, $zero, 4
	bge	$a0, $a6, .LBB2_104
# %bb.78:
	move	$s1, $zero
	b	.LBB2_107
.LBB2_79:                               # %vector.memcheck
	sub.d	$a7, $t7, $t3
	ori	$a6, $zero, 16
	move	$t8, $zero
	move	$s5, $s3
	bltu	$a7, $a6, .LBB2_7
# %bb.80:                               # %vector.memcheck
	sub.d	$a7, $t7, $t4
	bltu	$a7, $a6, .LBB2_7
# %bb.81:                               # %vector.memcheck
	sub.d	$a7, $t7, $t5
	ori	$a6, $zero, 16
	bltu	$a7, $a6, .LBB2_7
# %bb.82:                               # %vector.memcheck
	sub.d	$a7, $t7, $t6
	bltu	$a7, $a6, .LBB2_7
# %bb.83:                               # %vector.ph437
	bstrpick.d	$a6, $a4, 30, 3
	slli.d	$t8, $a6, 3
	vreplgr2vr.w	$vr0, $a5
	vrepli.w	$vr1, 20
	vrepli.w	$vr2, -5
	move	$a7, $t3
	move	$fp, $t4
	move	$s0, $t5
	move	$s1, $t6
	move	$s2, $t7
	move	$s3, $t8
	.p2align	4, , 16
.LBB2_84:                               # %vector.body442
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a7, 0
	vld	$vr4, $fp, 0
	vbsrl.v	$vr5, $vr3, 8
	vsllwil.wu.hu	$vr5, $vr5, 0
	vsllwil.wu.hu	$vr3, $vr3, 0
	vbsrl.v	$vr6, $vr4, 8
	vsllwil.wu.hu	$vr6, $vr6, 0
	vsllwil.wu.hu	$vr4, $vr4, 0
	vadd.w	$vr4, $vr4, $vr3
	vld	$vr7, $s0, 0
	vadd.w	$vr6, $vr6, $vr5
	vmul.w	$vr6, $vr6, $vr1
	vmul.w	$vr4, $vr4, $vr1
	vsllwil.wu.hu	$vr8, $vr7, 0
	vbsrl.v	$vr7, $vr7, 8
	vld	$vr9, $s1, 0
	vsllwil.wu.hu	$vr7, $vr7, 0
	vadd.w	$vr7, $vr7, $vr5
	vadd.w	$vr8, $vr8, $vr3
	vbsrl.v	$vr10, $vr9, 8
	vsllwil.wu.hu	$vr10, $vr10, 0
	vsllwil.wu.hu	$vr9, $vr9, 0
	vmadd.w	$vr4, $vr8, $vr2
	vmadd.w	$vr6, $vr7, $vr2
	vadd.w	$vr5, $vr6, $vr5
	vadd.w	$vr3, $vr4, $vr3
	vadd.w	$vr3, $vr3, $vr9
	vadd.w	$vr4, $vr5, $vr10
	vaddi.wu	$vr4, $vr4, 16
	vaddi.wu	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 5
	vsrai.w	$vr4, $vr4, 5
	vmaxi.w	$vr4, $vr4, 0
	vmaxi.w	$vr3, $vr3, 0
	vmin.w	$vr3, $vr3, $vr0
	vmin.w	$vr4, $vr4, $vr0
	vpickev.h	$vr3, $vr4, $vr3
	vst	$vr3, $s2, 0
	addi.d	$s3, $s3, -8
	addi.d	$s2, $s2, 16
	addi.d	$s1, $s1, 16
	addi.d	$s0, $s0, 16
	addi.d	$fp, $fp, 16
	addi.d	$a7, $a7, 16
	bnez	$s3, .LBB2_84
# %bb.85:                               # %middle.block449
	bne	$t8, $a4, .LBB2_7
	b	.LBB2_9
.LBB2_86:                               # %vector.memcheck452
	sub.d	$a7, $t7, $t4
	ori	$a6, $zero, 16
	move	$fp, $zero
	move	$s3, $s5
	bltu	$a7, $a6, .LBB2_11
# %bb.87:                               # %vector.memcheck452
	sub.d	$a7, $t7, $t5
	bltu	$a7, $a6, .LBB2_11
# %bb.88:                               # %vector.memcheck452
	sub.d	$a7, $t7, $t3
	ori	$a6, $zero, 16
	bltu	$a7, $a6, .LBB2_11
# %bb.89:                               # %vector.memcheck452
	sub.d	$a7, $t7, $t6
	bltu	$a7, $a6, .LBB2_11
# %bb.90:                               # %vector.memcheck452
	sub.d	$a6, $t7, $t8
	ori	$a7, $zero, 16
	bltu	$a6, $a7, .LBB2_11
# %bb.91:                               # %vector.ph464
	move	$s6, $s3
	bstrpick.d	$a6, $a4, 30, 3
	slli.d	$fp, $a6, 3
	vreplgr2vr.w	$vr0, $a5
	vrepli.w	$vr1, 20
	vrepli.w	$vr2, -5
	move	$a7, $t4
	move	$s0, $t5
	move	$s1, $t3
	move	$s2, $t6
	move	$s3, $t8
	move	$s4, $t7
	move	$s5, $fp
	.p2align	4, , 16
.LBB2_92:                               # %vector.body469
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a7, 0
	vld	$vr4, $s0, 0
	vbsrl.v	$vr5, $vr3, 8
	vsllwil.wu.hu	$vr5, $vr5, 0
	vsllwil.wu.hu	$vr3, $vr3, 0
	vbsrl.v	$vr6, $vr4, 8
	vsllwil.wu.hu	$vr6, $vr6, 0
	vsllwil.wu.hu	$vr4, $vr4, 0
	vadd.w	$vr3, $vr4, $vr3
	vadd.w	$vr4, $vr6, $vr5
	vld	$vr5, $s1, 0
	vmul.w	$vr4, $vr4, $vr1
	vmul.w	$vr3, $vr3, $vr1
	vld	$vr6, $s2, 0
	vsllwil.wu.hu	$vr7, $vr5, 0
	vbsrl.v	$vr5, $vr5, 8
	vsllwil.wu.hu	$vr5, $vr5, 0
	vsllwil.wu.hu	$vr8, $vr6, 0
	vbsrl.v	$vr6, $vr6, 8
	vld	$vr9, $s3, 0
	vsllwil.wu.hu	$vr6, $vr6, 0
	vadd.w	$vr6, $vr6, $vr5
	vadd.w	$vr8, $vr8, $vr7
	vbsrl.v	$vr10, $vr9, 8
	vsllwil.wu.hu	$vr10, $vr10, 0
	vsllwil.wu.hu	$vr9, $vr9, 0
	vmadd.w	$vr3, $vr8, $vr2
	vmadd.w	$vr4, $vr6, $vr2
	vadd.w	$vr4, $vr4, $vr5
	vadd.w	$vr3, $vr3, $vr7
	vadd.w	$vr3, $vr3, $vr9
	vadd.w	$vr4, $vr4, $vr10
	vaddi.wu	$vr4, $vr4, 16
	vaddi.wu	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 5
	vsrai.w	$vr4, $vr4, 5
	vmaxi.w	$vr4, $vr4, 0
	vmaxi.w	$vr3, $vr3, 0
	vmin.w	$vr3, $vr3, $vr0
	vmin.w	$vr4, $vr4, $vr0
	vpickev.h	$vr3, $vr4, $vr3
	vst	$vr3, $s4, 0
	addi.d	$s5, $s5, -8
	addi.d	$s4, $s4, 16
	addi.d	$s3, $s3, 16
	addi.d	$s2, $s2, 16
	addi.d	$s1, $s1, 16
	addi.d	$s0, $s0, 16
	addi.d	$a7, $a7, 16
	bnez	$s5, .LBB2_92
# %bb.93:                               # %middle.block477
	move	$s3, $s6
	bne	$fp, $a4, .LBB2_11
	b	.LBB2_13
.LBB2_94:
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a4, $zero, -40
	blt	$a4, $t0, .LBB2_32
	b	.LBB2_116
.LBB2_95:                               # %vector.memcheck511
	sub.d	$a6, $t4, $t5
	ori	$a5, $zero, 16
	move	$s1, $zero
	bltu	$a6, $a5, .LBB2_34
# %bb.96:                               # %vector.memcheck511
	sub.d	$a6, $t4, $t6
	bltu	$a6, $a5, .LBB2_34
# %bb.97:                               # %vector.memcheck511
	sub.d	$a6, $t4, $t7
	ori	$a5, $zero, 16
	bltu	$a6, $a5, .LBB2_34
# %bb.98:                               # %vector.memcheck511
	sub.d	$a6, $t4, $t8
	bltu	$a6, $a5, .LBB2_34
# %bb.99:                               # %vector.memcheck511
	sub.d	$a6, $t4, $fp
	ori	$a5, $zero, 16
	bltu	$a6, $a5, .LBB2_34
# %bb.100:                              # %vector.memcheck511
	sub.d	$a6, $t4, $s0
	bltu	$a6, $a5, .LBB2_34
# %bb.101:                              # %vector.ph525
	move	$a6, $s3
	bstrpick.d	$a5, $a4, 30, 3
	slli.d	$s1, $a5, 3
	vreplgr2vr.w	$vr0, $t3
	vrepli.w	$vr1, 20
	vrepli.w	$vr2, -5
	move	$s2, $t5
	move	$s3, $t6
	move	$s4, $t7
	move	$s5, $t8
	move	$s6, $fp
	move	$s7, $s0
	move	$a7, $t4
	move	$a5, $s1
	.p2align	4, , 16
.LBB2_102:                              # %vector.body530
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $s2, 0
	vld	$vr4, $s3, 0
	vbsrl.v	$vr5, $vr3, 8
	vsllwil.wu.hu	$vr5, $vr5, 0
	vsllwil.wu.hu	$vr3, $vr3, 0
	vbsrl.v	$vr6, $vr4, 8
	vsllwil.wu.hu	$vr6, $vr6, 0
	vsllwil.wu.hu	$vr4, $vr4, 0
	vadd.w	$vr3, $vr4, $vr3
	vadd.w	$vr4, $vr6, $vr5
	vld	$vr5, $s4, 0
	vmul.w	$vr4, $vr4, $vr1
	vmul.w	$vr3, $vr3, $vr1
	vld	$vr6, $s5, 0
	vsllwil.wu.hu	$vr7, $vr5, 0
	vbsrl.v	$vr5, $vr5, 8
	vsllwil.wu.hu	$vr5, $vr5, 0
	vsllwil.wu.hu	$vr8, $vr6, 0
	vbsrl.v	$vr6, $vr6, 8
	vsllwil.wu.hu	$vr6, $vr6, 0
	vld	$vr9, $s6, 0
	vadd.w	$vr5, $vr6, $vr5
	vadd.w	$vr6, $vr8, $vr7
	vld	$vr7, $s7, 0
	vsllwil.wu.hu	$vr8, $vr9, 0
	vbsrl.v	$vr9, $vr9, 8
	vsllwil.wu.hu	$vr9, $vr9, 0
	vbsrl.v	$vr10, $vr7, 8
	vsllwil.wu.hu	$vr10, $vr10, 0
	vsllwil.wu.hu	$vr7, $vr7, 0
	vmadd.w	$vr3, $vr6, $vr2
	vmadd.w	$vr4, $vr5, $vr2
	vadd.w	$vr4, $vr4, $vr9
	vadd.w	$vr3, $vr3, $vr8
	vadd.w	$vr3, $vr3, $vr7
	vadd.w	$vr4, $vr4, $vr10
	vaddi.wu	$vr4, $vr4, 16
	vaddi.wu	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 5
	vsrai.w	$vr4, $vr4, 5
	vmaxi.w	$vr4, $vr4, 0
	vmaxi.w	$vr3, $vr3, 0
	vmin.w	$vr3, $vr3, $vr0
	vmin.w	$vr4, $vr4, $vr0
	vpickev.h	$vr3, $vr4, $vr3
	vst	$vr3, $a7, 0
	addi.d	$a5, $a5, -8
	addi.d	$a7, $a7, 16
	addi.d	$s7, $s7, 16
	addi.d	$s6, $s6, 16
	addi.d	$s5, $s5, 16
	addi.d	$s4, $s4, 16
	addi.d	$s3, $s3, 16
	addi.d	$s2, $s2, 16
	bnez	$a5, .LBB2_102
# %bb.103:                              # %middle.block539
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	move	$s3, $a6
	bne	$s1, $a4, .LBB2_34
	b	.LBB2_36
.LBB2_104:                              # %vector.ph394
	bstrpick.d	$a6, $a3, 30, 2
	slli.d	$s1, $a6, 2
	vreplgr2vr.w	$vr0, $t3
	vrepli.w	$vr1, 20
	vrepli.w	$vr2, -5
	ori	$a6, $zero, 512
	vreplgr2vr.w	$vr3, $a6
	move	$s2, $t5
	move	$s3, $t6
	move	$s4, $t7
	move	$s5, $t8
	move	$s6, $fp
	move	$s7, $s0
	move	$s8, $t4
	move	$a6, $s1
	.p2align	4, , 16
.LBB2_105:                              # %vector.body399
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $s2, 0
	vld	$vr5, $s3, 0
	vld	$vr6, $s4, 0
	vld	$vr7, $s5, 0
	vadd.w	$vr4, $vr5, $vr4
	vadd.w	$vr5, $vr7, $vr6
	vld	$vr6, $s6, 0
	vld	$vr7, $s7, 0
	vmul.w	$vr4, $vr4, $vr1
	vmadd.w	$vr4, $vr5, $vr2
	vadd.w	$vr4, $vr4, $vr6
	vadd.w	$vr4, $vr4, $vr7
	vadd.w	$vr4, $vr4, $vr3
	vsrai.w	$vr4, $vr4, 10
	vmaxi.w	$vr4, $vr4, 0
	vmin.w	$vr4, $vr4, $vr0
	vpickev.h	$vr4, $vr4, $vr4
	vstelm.d	$vr4, $s8, 0, 0
	addi.d	$a6, $a6, -4
	addi.d	$s8, $s8, 8
	addi.d	$s7, $s7, 16
	addi.d	$s6, $s6, 16
	addi.d	$s5, $s5, 16
	addi.d	$s4, $s4, 16
	addi.d	$s3, $s3, 16
	addi.d	$s2, $s2, 16
	bnez	$a6, .LBB2_105
# %bb.106:                              # %middle.block408
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	beq	$s1, $a3, .LBB2_109
.LBB2_107:                              # %scalar.ph392.preheader
	sub.d	$s2, $a3, $s1
	alsl.d	$t4, $s1, $t4, 1
	alsl.d	$s0, $s1, $s0, 2
	alsl.d	$fp, $s1, $fp, 2
	alsl.d	$t8, $s1, $t8, 2
	alsl.d	$t7, $s1, $t7, 2
	alsl.d	$t6, $s1, $t6, 2
	alsl.d	$t5, $s1, $t5, 2
	.p2align	4, , 16
.LBB2_108:                              # %scalar.ph392
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $t5, 0
	ld.w	$s1, $t6, 0
	ld.w	$s3, $t7, 0
	ld.w	$s4, $t8, 0
	add.w	$a6, $s1, $a6
	slli.d	$s1, $a6, 4
	alsl.d	$a6, $a6, $s1, 2
	add.w	$s1, $s4, $s3
	ld.w	$s3, $fp, 0
	ld.w	$s4, $s0, 0
	alsl.d	$s1, $s1, $s1, 2
	sub.d	$a6, $a6, $s1
	add.d	$a6, $a6, $s3
	add.d	$a6, $a6, $s4
	addi.w	$a6, $a6, 512
	srai.d	$s1, $a6, 10
	srai.d	$a6, $a6, 63
	andn	$a6, $s1, $a6
	slt	$s1, $a6, $t3
	maskeqz	$a6, $a6, $s1
	masknez	$s1, $t3, $s1
	or	$a6, $a6, $s1
	st.h	$a6, $t4, 0
	addi.d	$s2, $s2, -1
	addi.d	$t4, $t4, 2
	addi.d	$s0, $s0, 4
	addi.d	$fp, $fp, 4
	addi.d	$t8, $t8, 4
	addi.d	$t7, $t7, 4
	addi.d	$t6, $t6, 4
	addi.d	$t5, $t5, 4
	bnez	$s2, .LBB2_108
.LBB2_109:                              # %.lr.ph.2
	slli.d	$a6, $a7, 3
	ldx.d	$a2, $a2, $a6
	addi.w	$t3, $s7, 42
	slt	$t4, $a1, $t3
	masknez	$t3, $t3, $t4
	maskeqz	$a1, $a1, $t4
	or	$a1, $a1, $t3
	alsl.d	$t3, $a7, $a4, 3
	ldx.d	$a6, $a4, $a6
	ldx.d	$a5, $a4, $a5
	ld.d	$a7, $t3, -8
	ldx.d	$t2, $a4, $t2
	ld.d	$t3, $t3, -16
	slli.d	$a1, $a1, 3
	ldx.d	$a4, $a4, $a1
	ldx.w	$a1, $t0, $t1
	ori	$t0, $zero, 4
	bge	$a0, $t0, .LBB2_111
# %bb.110:
	move	$a0, $zero
	b	.LBB2_114
.LBB2_111:                              # %vector.ph413
	bstrpick.d	$a0, $a3, 30, 2
	slli.d	$a0, $a0, 2
	vreplgr2vr.w	$vr0, $a1
	vrepli.w	$vr1, 20
	vrepli.w	$vr2, -5
	ori	$t0, $zero, 512
	vreplgr2vr.w	$vr3, $t0
	move	$t0, $a6
	move	$t1, $a5
	move	$t4, $a7
	move	$t5, $t2
	move	$t6, $t3
	move	$t7, $a4
	move	$t8, $a2
	move	$fp, $a0
	.p2align	4, , 16
.LBB2_112:                              # %vector.body418
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $t0, 0
	vld	$vr5, $t1, 0
	vld	$vr6, $t4, 0
	vld	$vr7, $t5, 0
	vadd.w	$vr4, $vr5, $vr4
	vadd.w	$vr5, $vr7, $vr6
	vld	$vr6, $t6, 0
	vld	$vr7, $t7, 0
	vmul.w	$vr4, $vr4, $vr1
	vmadd.w	$vr4, $vr5, $vr2
	vadd.w	$vr4, $vr4, $vr6
	vadd.w	$vr4, $vr4, $vr7
	vadd.w	$vr4, $vr4, $vr3
	vsrai.w	$vr4, $vr4, 10
	vmaxi.w	$vr4, $vr4, 0
	vmin.w	$vr4, $vr4, $vr0
	vpickev.h	$vr4, $vr4, $vr4
	vstelm.d	$vr4, $t8, 0, 0
	addi.d	$fp, $fp, -4
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 16
	addi.d	$t6, $t6, 16
	addi.d	$t5, $t5, 16
	addi.d	$t4, $t4, 16
	addi.d	$t1, $t1, 16
	addi.d	$t0, $t0, 16
	bnez	$fp, .LBB2_112
# %bb.113:                              # %middle.block427
	beq	$a0, $a3, .LBB2_116
.LBB2_114:                              # %scalar.ph411.preheader
	sub.d	$a3, $a3, $a0
	alsl.d	$a2, $a0, $a2, 1
	alsl.d	$a4, $a0, $a4, 2
	alsl.d	$t0, $a0, $t3, 2
	alsl.d	$t1, $a0, $t2, 2
	alsl.d	$a7, $a0, $a7, 2
	alsl.d	$a5, $a0, $a5, 2
	alsl.d	$a0, $a0, $a6, 2
	.p2align	4, , 16
.LBB2_115:                              # %scalar.ph411
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, 0
	ld.w	$t2, $a5, 0
	ld.w	$t3, $a7, 0
	ld.w	$t4, $t1, 0
	add.w	$a6, $t2, $a6
	slli.d	$t2, $a6, 4
	alsl.d	$a6, $a6, $t2, 2
	add.w	$t2, $t4, $t3
	ld.w	$t3, $t0, 0
	ld.w	$t4, $a4, 0
	alsl.d	$t2, $t2, $t2, 2
	sub.d	$a6, $a6, $t2
	add.d	$a6, $a6, $t3
	add.d	$a6, $a6, $t4
	addi.w	$a6, $a6, 512
	srai.d	$t2, $a6, 10
	srai.d	$a6, $a6, 63
	andn	$a6, $t2, $a6
	slt	$t2, $a6, $a1
	maskeqz	$a6, $a6, $t2
	masknez	$t2, $a1, $t2
	or	$a6, $a6, $t2
	st.h	$a6, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 2
	addi.d	$a4, $a4, 4
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 4
	addi.d	$a7, $a7, 4
	addi.d	$a5, $a5, 4
	addi.d	$a0, $a0, 4
	bnez	$a3, .LBB2_115
.LBB2_116:                              # %.loopexit227
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
.LBB2_117:                              # %vector.memcheck542
	sub.d	$s2, $t4, $t5
	ori	$a6, $zero, 16
	move	$s1, $zero
	bltu	$s2, $a6, .LBB2_39
# %bb.118:                              # %vector.memcheck542
	sub.d	$s2, $t4, $t6
	bltu	$s2, $a6, .LBB2_39
# %bb.119:                              # %vector.memcheck542
	sub.d	$s2, $t4, $t7
	ori	$a6, $zero, 16
	bltu	$s2, $a6, .LBB2_39
# %bb.120:                              # %vector.memcheck542
	sub.d	$s2, $t4, $t8
	bltu	$s2, $a6, .LBB2_39
# %bb.121:                              # %vector.memcheck542
	sub.d	$s2, $t4, $fp
	ori	$a6, $zero, 16
	bltu	$s2, $a6, .LBB2_39
# %bb.122:                              # %vector.memcheck542
	sub.d	$s2, $t4, $s0
	bltu	$s2, $a6, .LBB2_39
# %bb.123:                              # %vector.ph556
	bstrpick.d	$a6, $a4, 30, 3
	slli.d	$s1, $a6, 3
	vreplgr2vr.w	$vr0, $t3
	vrepli.w	$vr1, 20
	vrepli.w	$vr2, -5
	move	$s2, $t5
	move	$s3, $t6
	move	$s4, $t7
	move	$s5, $t8
	move	$s6, $fp
	move	$s7, $s0
	move	$s8, $t4
	move	$ra, $s1
	.p2align	4, , 16
.LBB2_124:                              # %vector.body561
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $s2, 0
	vld	$vr4, $s3, 0
	vbsrl.v	$vr5, $vr3, 8
	vsllwil.wu.hu	$vr5, $vr5, 0
	vsllwil.wu.hu	$vr3, $vr3, 0
	vbsrl.v	$vr6, $vr4, 8
	vsllwil.wu.hu	$vr6, $vr6, 0
	vsllwil.wu.hu	$vr4, $vr4, 0
	vadd.w	$vr3, $vr4, $vr3
	vadd.w	$vr4, $vr6, $vr5
	vld	$vr5, $s4, 0
	vmul.w	$vr4, $vr4, $vr1
	vmul.w	$vr3, $vr3, $vr1
	vld	$vr6, $s5, 0
	vsllwil.wu.hu	$vr7, $vr5, 0
	vbsrl.v	$vr5, $vr5, 8
	vsllwil.wu.hu	$vr5, $vr5, 0
	vsllwil.wu.hu	$vr8, $vr6, 0
	vbsrl.v	$vr6, $vr6, 8
	vsllwil.wu.hu	$vr6, $vr6, 0
	vld	$vr9, $s6, 0
	vadd.w	$vr5, $vr6, $vr5
	vadd.w	$vr6, $vr8, $vr7
	vld	$vr7, $s7, 0
	vsllwil.wu.hu	$vr8, $vr9, 0
	vbsrl.v	$vr9, $vr9, 8
	vsllwil.wu.hu	$vr9, $vr9, 0
	vbsrl.v	$vr10, $vr7, 8
	vsllwil.wu.hu	$vr10, $vr10, 0
	vsllwil.wu.hu	$vr7, $vr7, 0
	vmadd.w	$vr3, $vr6, $vr2
	vmadd.w	$vr4, $vr5, $vr2
	vadd.w	$vr4, $vr4, $vr9
	vadd.w	$vr3, $vr3, $vr8
	vadd.w	$vr3, $vr3, $vr7
	vadd.w	$vr4, $vr4, $vr10
	vaddi.wu	$vr4, $vr4, 16
	vaddi.wu	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 5
	vsrai.w	$vr4, $vr4, 5
	vmaxi.w	$vr4, $vr4, 0
	vmaxi.w	$vr3, $vr3, 0
	vmin.w	$vr3, $vr3, $vr0
	vmin.w	$vr4, $vr4, $vr0
	vpickev.h	$vr3, $vr4, $vr3
	vst	$vr3, $s8, 0
	addi.d	$ra, $ra, -8
	addi.d	$s8, $s8, 16
	addi.d	$s7, $s7, 16
	addi.d	$s6, $s6, 16
	addi.d	$s5, $s5, 16
	addi.d	$s4, $s4, 16
	addi.d	$s3, $s3, 16
	addi.d	$s2, $s2, 16
	bnez	$ra, .LBB2_124
# %bb.125:                              # %middle.block570
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	bne	$s1, $a4, .LBB2_39
	b	.LBB2_41
.LBB2_126:                              # %vector.memcheck573
	sub.d	$t1, $a2, $a6
	ori	$t0, $zero, 16
	move	$a0, $zero
	bltu	$t1, $t0, .LBB2_43
# %bb.127:                              # %vector.memcheck573
	sub.d	$t1, $a2, $a5
	bltu	$t1, $t0, .LBB2_43
# %bb.128:                              # %vector.memcheck573
	sub.d	$t1, $a2, $a7
	ori	$t0, $zero, 16
	bltu	$t1, $t0, .LBB2_43
# %bb.129:                              # %vector.memcheck573
	sub.d	$t1, $a2, $t2
	bltu	$t1, $t0, .LBB2_43
# %bb.130:                              # %vector.memcheck573
	sub.d	$t1, $a2, $t3
	ori	$t0, $zero, 16
	bltu	$t1, $t0, .LBB2_43
# %bb.131:                              # %vector.memcheck573
	sub.d	$t1, $a2, $a3
	bltu	$t1, $t0, .LBB2_43
# %bb.132:                              # %vector.ph587
	bstrpick.d	$a0, $a4, 30, 3
	slli.d	$a0, $a0, 3
	vreplgr2vr.w	$vr0, $a1
	vrepli.w	$vr1, 20
	vrepli.w	$vr2, -5
	move	$t0, $a6
	move	$t1, $a5
	move	$t4, $a7
	move	$t5, $t2
	move	$t6, $t3
	move	$t7, $a3
	move	$t8, $a2
	move	$fp, $a0
	.p2align	4, , 16
.LBB2_133:                              # %vector.body592
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $t0, 0
	vld	$vr4, $t1, 0
	vbsrl.v	$vr5, $vr3, 8
	vsllwil.wu.hu	$vr5, $vr5, 0
	vsllwil.wu.hu	$vr3, $vr3, 0
	vbsrl.v	$vr6, $vr4, 8
	vsllwil.wu.hu	$vr6, $vr6, 0
	vsllwil.wu.hu	$vr4, $vr4, 0
	vadd.w	$vr3, $vr4, $vr3
	vadd.w	$vr4, $vr6, $vr5
	vld	$vr5, $t4, 0
	vmul.w	$vr4, $vr4, $vr1
	vmul.w	$vr3, $vr3, $vr1
	vld	$vr6, $t5, 0
	vsllwil.wu.hu	$vr7, $vr5, 0
	vbsrl.v	$vr5, $vr5, 8
	vsllwil.wu.hu	$vr5, $vr5, 0
	vsllwil.wu.hu	$vr8, $vr6, 0
	vbsrl.v	$vr6, $vr6, 8
	vsllwil.wu.hu	$vr6, $vr6, 0
	vld	$vr9, $t6, 0
	vadd.w	$vr5, $vr6, $vr5
	vadd.w	$vr6, $vr8, $vr7
	vld	$vr7, $t7, 0
	vsllwil.wu.hu	$vr8, $vr9, 0
	vbsrl.v	$vr9, $vr9, 8
	vsllwil.wu.hu	$vr9, $vr9, 0
	vbsrl.v	$vr10, $vr7, 8
	vsllwil.wu.hu	$vr10, $vr10, 0
	vsllwil.wu.hu	$vr7, $vr7, 0
	vmadd.w	$vr3, $vr6, $vr2
	vmadd.w	$vr4, $vr5, $vr2
	vadd.w	$vr4, $vr4, $vr9
	vadd.w	$vr3, $vr3, $vr8
	vadd.w	$vr3, $vr3, $vr7
	vadd.w	$vr4, $vr4, $vr10
	vaddi.wu	$vr4, $vr4, 16
	vaddi.wu	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 5
	vsrai.w	$vr4, $vr4, 5
	vmaxi.w	$vr4, $vr4, 0
	vmaxi.w	$vr3, $vr3, 0
	vmin.w	$vr3, $vr3, $vr0
	vmin.w	$vr4, $vr4, $vr0
	vpickev.h	$vr3, $vr4, $vr3
	vst	$vr3, $t8, 0
	addi.d	$fp, $fp, -8
	addi.d	$t8, $t8, 16
	addi.d	$t7, $t7, 16
	addi.d	$t6, $t6, 16
	addi.d	$t5, $t5, 16
	addi.d	$t4, $t4, 16
	addi.d	$t1, $t1, 16
	addi.d	$t0, $t0, 16
	bnez	$fp, .LBB2_133
# %bb.134:                              # %middle.block601
	bne	$a0, $a4, .LBB2_43
	b	.LBB2_116
.Lfunc_end2:
	.size	getVerSubImageSixTap, .Lfunc_end2-getVerSubImageSixTap
                                        # -- End function
	.globl	getHorSubImageBiLinear          # -- Begin function getHorSubImageBiLinear
	.p2align	5
	.type	getHorSubImageBiLinear,@function
getHorSubImageBiLinear:                 # @getHorSubImageBiLinear
# %bb.0:
	ldptr.w	$t0, $a0, 6396
	addi.w	$t1, $zero, -39
	blt	$t0, $t1, .LBB3_45
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
	ldptr.d	$t2, $a0, 6448
	addi.w	$t1, $t0, 40
	lu12i.w	$t0, 1
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $t2, $a3
	ori	$t0, $t0, 2296
	ldx.w	$t0, $a0, $t0
	slli.d	$a0, $a4, 3
	ldx.d	$a0, $a3, $a0
	slli.d	$a3, $a5, 3
	ldx.d	$a3, $t2, $a3
	slli.d	$a1, $a1, 3
	ldx.d	$a4, $t2, $a1
	slli.d	$a1, $a6, 3
	ldx.d	$a1, $a3, $a1
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a4, $a2
	addi.w	$a4, $t0, 39
	sub.w	$a3, $a4, $a7
	addi.w	$a5, $t0, 40
	blez	$a3, .LBB3_22
# %bb.2:                                # %.lr.ph46.split.us
	bge	$a3, $a5, .LBB3_33
# %bb.3:                                # %.lr.ph.us.us.preheader
	move	$a6, $zero
	bstrpick.d	$t0, $a3, 31, 0
	ori	$t2, $zero, 1
	slt	$t3, $t2, $t1
	masknez	$t2, $t2, $t3
	maskeqz	$t1, $t1, $t3
	or	$t1, $t1, $t2
	slli.d	$t2, $t0, 1
	bstrpick.d	$t5, $a7, 31, 0
	add.d	$t3, $t5, $t0
	slli.d	$t3, $t3, 1
	addi.d	$t3, $t3, 2
	slli.d	$t4, $a4, 1
	addi.d	$t5, $t5, 1
	slli.d	$t6, $a7, 1
	bstrpick.d	$t7, $a3, 30, 3
	slli.d	$t7, $t7, 3
	st.d	$t5, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$fp, $t5, 32, 3
	slli.d	$t8, $fp, 3
	alsl.d	$t5, $fp, $t0, 3
	st.d	$t5, $sp, 8                     # 8-byte Folded Spill
	ori	$s0, $zero, 8
	ori	$s1, $zero, 7
	ori	$s2, $zero, 16
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_4:                                # %._crit_edge.us.us
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.d	$a6, $a6, 1
	beq	$a6, $t1, .LBB3_44
.LBB3_5:                                # %.lr.ph.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_15 Depth 2
                                        #     Child Loop BB3_8 Depth 2
                                        #     Child Loop BB3_20 Depth 2
                                        #     Child Loop BB3_11 Depth 2
	slli.d	$fp, $a6, 3
	ldx.d	$s3, $a0, $fp
	ldx.d	$s5, $a1, $fp
	ldx.d	$s4, $a2, $fp
	bgeu	$a3, $s0, .LBB3_12
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	move	$ra, $zero
.LBB3_7:                                # %scalar.ph142.preheader
                                        #   in Loop: Header=BB3_5 Depth=1
	add.d	$fp, $s5, $t6
	alsl.d	$s6, $ra, $fp, 1
	alsl.d	$s7, $ra, $s3, 1
	alsl.d	$s8, $ra, $s4, 1
	sub.d	$ra, $t0, $ra
	.p2align	4, , 16
.LBB3_8:                                # %scalar.ph142
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$fp, $s7, 0
	ld.hu	$t5, $s6, 0
	add.d	$t5, $fp, $t5
	addi.d	$t5, $t5, 1
	srli.d	$t5, $t5, 1
	st.h	$t5, $s8, 0
	addi.d	$s6, $s6, 2
	addi.d	$s7, $s7, 2
	addi.d	$ra, $ra, -1
	addi.d	$s8, $s8, 2
	bnez	$ra, .LBB3_8
.LBB3_9:                                # %..preheader_crit_edge.us.us
                                        #   in Loop: Header=BB3_5 Depth=1
	alsl.d	$s6, $a4, $s5, 1
	move	$ra, $t0
	bgeu	$a7, $s1, .LBB3_17
.LBB3_10:                               # %scalar.ph123.preheader
                                        #   in Loop: Header=BB3_5 Depth=1
	alsl.d	$s4, $ra, $s4, 1
	alsl.d	$s3, $ra, $s3, 1
	.p2align	4, , 16
.LBB3_11:                               # %scalar.ph123
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$fp, $s3, 0
	ld.hu	$s5, $s6, 0
	add.d	$fp, $fp, $s5
	addi.d	$fp, $fp, 1
	srli.d	$fp, $fp, 1
	st.h	$fp, $s4, 0
	addi.d	$s4, $s4, 2
	addi.w	$ra, $ra, 1
	addi.d	$s3, $s3, 2
	blt	$ra, $a5, .LBB3_11
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_12:                               # %vector.memcheck138
                                        #   in Loop: Header=BB3_5 Depth=1
	sub.d	$fp, $s4, $s3
	move	$ra, $zero
	bltu	$fp, $s2, .LBB3_7
# %bb.13:                               # %vector.memcheck138
                                        #   in Loop: Header=BB3_5 Depth=1
	add.d	$fp, $t6, $s5
	sub.d	$fp, $s4, $fp
	bltu	$fp, $s2, .LBB3_7
# %bb.14:                               # %vector.body147.preheader
                                        #   in Loop: Header=BB3_5 Depth=1
	alsl.d	$s6, $a7, $s5, 1
	move	$s7, $s3
	move	$s8, $s4
	move	$ra, $t7
	.p2align	4, , 16
.LBB3_15:                               # %vector.body147
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s7, 0
	vld	$vr1, $s6, 0
	vor.v	$vr2, $vr0, $vr1
	vxor.v	$vr0, $vr0, $vr1
	vsrli.h	$vr0, $vr0, 1
	vsub.h	$vr0, $vr2, $vr0
	vst	$vr0, $s8, 0
	addi.d	$ra, $ra, -8
	addi.d	$s8, $s8, 16
	addi.d	$s6, $s6, 16
	addi.d	$s7, $s7, 16
	bnez	$ra, .LBB3_15
# %bb.16:                               # %middle.block152
                                        #   in Loop: Header=BB3_5 Depth=1
	move	$ra, $t7
	bne	$t7, $t0, .LBB3_7
	b	.LBB3_9
	.p2align	4, , 16
.LBB3_17:                               # %vector.memcheck110
                                        #   in Loop: Header=BB3_5 Depth=1
	add.d	$s7, $s4, $t2
	add.d	$fp, $s4, $t3
	add.d	$s8, $s3, $t2
	add.d	$t5, $s3, $t3
	sltu	$t5, $s7, $t5
	sltu	$ra, $s8, $fp
	and	$t5, $t5, $ra
	move	$ra, $t0
	bnez	$t5, .LBB3_10
# %bb.18:                               # %vector.memcheck110
                                        #   in Loop: Header=BB3_5 Depth=1
	add.d	$t5, $s5, $t4
	addi.d	$t5, $t5, 2
	sltu	$t5, $s7, $t5
	sltu	$fp, $s6, $fp
	and	$t5, $t5, $fp
	move	$ra, $t0
	bnez	$t5, .LBB3_10
# %bb.19:                               # %vector.ph125
                                        #   in Loop: Header=BB3_5 Depth=1
	ld.h	$t5, $s6, 0
	vreplgr2vr.h	$vr0, $t5
	vinsgr2vr.h	$vr1, $t5, 0
	vinsgr2vr.h	$vr1, $t5, 1
	vinsgr2vr.h	$vr1, $t5, 2
	vinsgr2vr.h	$vr1, $t5, 3
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr2, $vr0, 0
	vaddi.wu	$vr0, $vr1, 1
	vaddi.wu	$vr1, $vr2, 1
	move	$s5, $t8
	.p2align	4, , 16
.LBB3_20:                               # %vector.body128
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $s8, 0
	vbsrl.v	$vr3, $vr2, 8
	vsllwil.wu.hu	$vr3, $vr3, 0
	vsllwil.wu.hu	$vr2, $vr2, 0
	vadd.w	$vr2, $vr2, $vr1
	vsrli.w	$vr2, $vr2, 1
	vadd.w	$vr3, $vr3, $vr0
	vsrli.w	$vr3, $vr3, 1
	vpickev.h	$vr2, $vr3, $vr2
	vst	$vr2, $s7, 0
	addi.d	$s5, $s5, -8
	addi.d	$s7, $s7, 16
	addi.d	$s8, $s8, 16
	bnez	$s5, .LBB3_20
# %bb.21:                               # %middle.block135
                                        #   in Loop: Header=BB3_5 Depth=1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t5, $sp, 16                    # 8-byte Folded Reload
	beq	$t5, $t8, .LBB3_4
	b	.LBB3_10
.LBB3_22:                               # %.lr.ph46.split
	bge	$a3, $a5, .LBB3_44
# %bb.23:                               # %.preheader.us48.preheader
	move	$a6, $zero
	ori	$t0, $zero, 1
	slt	$t2, $t0, $t1
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $t1, $t2
	or	$t0, $t1, $t0
	slli.d	$t1, $a3, 1
	bstrpick.d	$t4, $a7, 31, 0
	add.d	$t2, $a3, $t4
	slli.d	$t2, $t2, 1
	addi.d	$t2, $t2, 2
	slli.d	$t3, $a4, 1
	addi.d	$t4, $t4, 1
	bstrpick.d	$t6, $t4, 32, 3
	slli.d	$t5, $t6, 3
	alsl.d	$t6, $t6, $a3, 3
	ori	$t7, $zero, 7
	b	.LBB3_25
	.p2align	4, , 16
.LBB3_24:                               # %._crit_edge.us52
                                        #   in Loop: Header=BB3_25 Depth=1
	addi.d	$a6, $a6, 1
	beq	$a6, $t0, .LBB3_44
.LBB3_25:                               # %.preheader.us48
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_31 Depth 2
                                        #     Child Loop BB3_27 Depth 2
	slli.d	$t8, $a6, 3
	ldx.d	$fp, $a0, $t8
	ldx.d	$s3, $a1, $t8
	ldx.d	$s0, $a2, $t8
	alsl.d	$t8, $a4, $s3, 1
	move	$s4, $a3
	bgeu	$a7, $t7, .LBB3_28
.LBB3_26:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_25 Depth=1
	alsl.d	$fp, $s4, $fp, 1
	alsl.d	$s0, $s4, $s0, 1
	sub.d	$s1, $a5, $s4
	.p2align	4, , 16
.LBB3_27:                               # %scalar.ph
                                        #   Parent Loop BB3_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$s2, $fp, 0
	ld.hu	$s3, $t8, 0
	add.d	$s2, $s2, $s3
	addi.d	$s2, $s2, 1
	srli.d	$s2, $s2, 1
	st.h	$s2, $s0, 0
	addi.d	$fp, $fp, 2
	addi.w	$s1, $s1, -1
	addi.d	$s0, $s0, 2
	bnez	$s1, .LBB3_27
	b	.LBB3_24
	.p2align	4, , 16
.LBB3_28:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_25 Depth=1
	add.d	$s1, $s0, $t1
	add.d	$s5, $s0, $t2
	add.d	$s2, $fp, $t1
	add.d	$s4, $fp, $t2
	sltu	$s4, $s1, $s4
	sltu	$s6, $s2, $s5
	and	$s6, $s4, $s6
	move	$s4, $a3
	bnez	$s6, .LBB3_26
# %bb.29:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_25 Depth=1
	add.d	$s3, $s3, $t3
	addi.d	$s3, $s3, 2
	sltu	$s3, $s1, $s3
	sltu	$s4, $t8, $s5
	and	$s3, $s3, $s4
	move	$s4, $a3
	bnez	$s3, .LBB3_26
# %bb.30:                               # %vector.ph
                                        #   in Loop: Header=BB3_25 Depth=1
	ld.h	$s3, $t8, 0
	vreplgr2vr.h	$vr0, $s3
	vinsgr2vr.h	$vr1, $s3, 0
	vinsgr2vr.h	$vr1, $s3, 1
	vinsgr2vr.h	$vr1, $s3, 2
	vinsgr2vr.h	$vr1, $s3, 3
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr2, $vr0, 0
	vaddi.wu	$vr0, $vr1, 1
	vaddi.wu	$vr1, $vr2, 1
	move	$s3, $t5
	.p2align	4, , 16
.LBB3_31:                               # %vector.body
                                        #   Parent Loop BB3_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $s2, 0
	vbsrl.v	$vr3, $vr2, 8
	vsllwil.wu.hu	$vr3, $vr3, 0
	vsllwil.wu.hu	$vr2, $vr2, 0
	vadd.w	$vr2, $vr2, $vr1
	vsrli.w	$vr2, $vr2, 1
	vadd.w	$vr3, $vr3, $vr0
	vsrli.w	$vr3, $vr3, 1
	vpickev.h	$vr2, $vr3, $vr2
	vst	$vr2, $s1, 0
	addi.d	$s3, $s3, -8
	addi.d	$s1, $s1, 16
	addi.d	$s2, $s2, 16
	bnez	$s3, .LBB3_31
# %bb.32:                               # %middle.block
                                        #   in Loop: Header=BB3_25 Depth=1
	move	$s4, $t6
	beq	$t4, $t5, .LBB3_24
	b	.LBB3_26
.LBB3_33:                               # %.lr.ph.us.preheader
	move	$a4, $zero
	ori	$a5, $zero, 1
	slt	$a6, $a5, $t1
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $t1, $a6
	or	$a5, $a6, $a5
	bstrpick.d	$a6, $a3, 31, 0
	slli.d	$t0, $a7, 1
	bstrpick.d	$t1, $a3, 30, 3
	slli.d	$t1, $t1, 3
	ori	$t2, $zero, 8
	ori	$t3, $zero, 16
	b	.LBB3_35
	.p2align	4, , 16
.LBB3_34:                               # %..preheader_crit_edge.us
                                        #   in Loop: Header=BB3_35 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $a5, .LBB3_44
.LBB3_35:                               # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_42 Depth 2
                                        #     Child Loop BB3_38 Depth 2
	slli.d	$t5, $a4, 3
	ldx.d	$t4, $a0, $t5
	ldx.d	$t6, $a1, $t5
	ldx.d	$t5, $a2, $t5
	bgeu	$a3, $t2, .LBB3_39
# %bb.36:                               #   in Loop: Header=BB3_35 Depth=1
	move	$t7, $zero
.LBB3_37:                               # %scalar.ph97.preheader
                                        #   in Loop: Header=BB3_35 Depth=1
	add.d	$t6, $t6, $t0
	alsl.d	$t6, $t7, $t6, 1
	alsl.d	$t4, $t7, $t4, 1
	alsl.d	$t5, $t7, $t5, 1
	sub.d	$t7, $a6, $t7
	.p2align	4, , 16
.LBB3_38:                               # %scalar.ph97
                                        #   Parent Loop BB3_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t8, $t4, 0
	ld.hu	$fp, $t6, 0
	add.d	$t8, $t8, $fp
	addi.d	$t8, $t8, 1
	srli.d	$t8, $t8, 1
	st.h	$t8, $t5, 0
	addi.d	$t6, $t6, 2
	addi.d	$t4, $t4, 2
	addi.d	$t7, $t7, -1
	addi.d	$t5, $t5, 2
	bnez	$t7, .LBB3_38
	b	.LBB3_34
	.p2align	4, , 16
.LBB3_39:                               # %vector.memcheck94
                                        #   in Loop: Header=BB3_35 Depth=1
	sub.d	$t8, $t5, $t4
	move	$t7, $zero
	bltu	$t8, $t3, .LBB3_37
# %bb.40:                               # %vector.memcheck94
                                        #   in Loop: Header=BB3_35 Depth=1
	add.d	$t8, $t0, $t6
	sub.d	$t8, $t5, $t8
	bltu	$t8, $t3, .LBB3_37
# %bb.41:                               # %vector.body102.preheader
                                        #   in Loop: Header=BB3_35 Depth=1
	alsl.d	$t7, $a7, $t6, 1
	move	$t8, $t4
	move	$fp, $t5
	move	$s0, $t1
	.p2align	4, , 16
.LBB3_42:                               # %vector.body102
                                        #   Parent Loop BB3_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t8, 0
	vld	$vr1, $t7, 0
	vor.v	$vr2, $vr0, $vr1
	vxor.v	$vr0, $vr0, $vr1
	vsrli.h	$vr0, $vr0, 1
	vsub.h	$vr0, $vr2, $vr0
	vst	$vr0, $fp, 0
	addi.d	$s0, $s0, -8
	addi.d	$fp, $fp, 16
	addi.d	$t7, $t7, 16
	addi.d	$t8, $t8, 16
	bnez	$s0, .LBB3_42
# %bb.43:                               # %middle.block107
                                        #   in Loop: Header=BB3_35 Depth=1
	move	$t7, $t1
	beq	$t1, $a6, .LBB3_34
	b	.LBB3_37
.LBB3_44:
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
.LBB3_45:                               # %._crit_edge47
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
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$t0, 1
	ori	$t0, $t0, 2300
	ldx.w	$t2, $a0, $t0
	ldptr.w	$t4, $a0, 6392
	addi.w	$t0, $t2, 40
	addi.w	$t1, $t4, 40
	addi.w	$t3, $t2, 39
	sub.w	$t2, $t3, $a7
	slli.d	$t5, $a3, 3
	slli.d	$a3, $a4, 3
	slli.d	$a4, $a1, 3
	slli.d	$a1, $a2, 3
	blez	$t2, .LBB4_13
# %bb.1:                                # %.lr.ph60
	addi.w	$a2, $zero, -39
	blt	$t4, $a2, .LBB4_13
# %bb.2:                                # %.lr.ph.us.preheader
	ldptr.d	$t6, $a0, 6448
	move	$a2, $zero
	ldx.d	$t7, $t6, $t5
	ldx.d	$t8, $t6, $a4
	slli.d	$fp, $a5, 3
	ldx.d	$fp, $t6, $fp
	ldx.d	$t6, $t7, $a3
	ldx.d	$t7, $t8, $a1
	slli.d	$t8, $a6, 3
	ldx.d	$fp, $fp, $t8
	ori	$t8, $zero, 1
	slt	$s0, $t8, $t1
	masknez	$t8, $t8, $s0
	maskeqz	$s0, $t1, $s0
	or	$t8, $s0, $t8
	alsl.d	$a7, $a7, $fp, 3
	bstrpick.d	$fp, $t8, 30, 3
	slli.d	$fp, $fp, 3
	ori	$s0, $zero, 8
	ori	$s1, $zero, 16
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                # %._crit_edge.us
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $t2, .LBB4_13
.LBB4_4:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
                                        #     Child Loop BB4_7 Depth 2
	slli.d	$s4, $a2, 3
	ldx.d	$s3, $t6, $s4
	ldx.d	$s2, $t7, $s4
	ldx.d	$s4, $a7, $s4
	bge	$t1, $s0, .LBB4_8
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
	move	$s5, $zero
.LBB4_6:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	alsl.d	$s3, $s5, $s3, 1
	alsl.d	$s4, $s5, $s4, 1
	alsl.d	$s2, $s5, $s2, 1
	sub.d	$s5, $t8, $s5
	.p2align	4, , 16
.LBB4_7:                                # %scalar.ph
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$s6, $s3, 0
	ld.hu	$s7, $s4, 0
	add.d	$s6, $s6, $s7
	addi.d	$s6, $s6, 1
	srli.d	$s6, $s6, 1
	st.h	$s6, $s2, 0
	addi.d	$s3, $s3, 2
	addi.d	$s4, $s4, 2
	addi.d	$s5, $s5, -1
	addi.d	$s2, $s2, 2
	bnez	$s5, .LBB4_7
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_8:                                # %vector.memcheck
                                        #   in Loop: Header=BB4_4 Depth=1
	sub.d	$s6, $s2, $s3
	move	$s5, $zero
	bltu	$s6, $s1, .LBB4_6
# %bb.9:                                # %vector.memcheck
                                        #   in Loop: Header=BB4_4 Depth=1
	sub.d	$s6, $s2, $s4
	bltu	$s6, $s1, .LBB4_6
# %bb.10:                               # %vector.body.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$s5, $s3
	move	$s6, $s4
	move	$s7, $s2
	move	$s8, $fp
	.p2align	4, , 16
.LBB4_11:                               # %vector.body
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s5, 0
	vld	$vr1, $s6, 0
	vor.v	$vr2, $vr0, $vr1
	vxor.v	$vr0, $vr0, $vr1
	vsrli.h	$vr0, $vr0, 1
	vsub.h	$vr0, $vr2, $vr0
	vst	$vr0, $s7, 0
	addi.d	$s8, $s8, -8
	addi.d	$s7, $s7, 16
	addi.d	$s6, $s6, 16
	addi.d	$s5, $s5, 16
	bnez	$s8, .LBB4_11
# %bb.12:                               # %middle.block
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$s5, $fp
	beq	$fp, $t8, .LBB4_3
	b	.LBB4_6
.LBB4_13:                               # %.preheader
	bge	$t2, $t0, .LBB4_26
# %bb.14:                               # %.lr.ph63
	addi.w	$a2, $zero, -39
	blt	$t4, $a2, .LBB4_26
# %bb.15:                               # %.lr.ph.us65.preheader
	ldptr.d	$a0, $a0, 6448
	slli.d	$a2, $a5, 3
	ldx.d	$a2, $a0, $a2
	ldx.d	$a5, $a0, $t5
	ldx.d	$a4, $a0, $a4
	slli.d	$a0, $a6, 3
	ldx.d	$a2, $a2, $a0
	ldx.d	$a0, $a5, $a3
	ldx.d	$a1, $a4, $a1
	slli.d	$a3, $t3, 3
	ldx.d	$a2, $a2, $a3
	ori	$a3, $zero, 1
	slt	$a4, $a3, $t1
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $t1, $a4
	or	$a3, $a4, $a3
	bstrpick.d	$a4, $a3, 30, 3
	slli.d	$a4, $a4, 3
	ori	$a5, $zero, 8
	ori	$a6, $zero, 16
	b	.LBB4_17
	.p2align	4, , 16
.LBB4_16:                               # %._crit_edge.us66
                                        #   in Loop: Header=BB4_17 Depth=1
	addi.d	$t2, $t2, 1
	addi.w	$a7, $t2, 0
	beq	$t0, $a7, .LBB4_26
.LBB4_17:                               # %.lr.ph.us65
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_24 Depth 2
                                        #     Child Loop BB4_20 Depth 2
	slli.d	$a7, $t2, 3
	ldx.d	$t3, $a0, $a7
	ldx.d	$a7, $a1, $a7
	bge	$t1, $a5, .LBB4_21
# %bb.18:                               #   in Loop: Header=BB4_17 Depth=1
	move	$t5, $zero
.LBB4_19:                               # %scalar.ph88.preheader
                                        #   in Loop: Header=BB4_17 Depth=1
	alsl.d	$t3, $t5, $t3, 1
	alsl.d	$t4, $t5, $a2, 1
	alsl.d	$a7, $t5, $a7, 1
	sub.d	$t5, $a3, $t5
	.p2align	4, , 16
.LBB4_20:                               # %scalar.ph88
                                        #   Parent Loop BB4_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t6, $t3, 0
	ld.hu	$t7, $t4, 0
	add.d	$t6, $t6, $t7
	addi.d	$t6, $t6, 1
	srli.d	$t6, $t6, 1
	st.h	$t6, $a7, 0
	addi.d	$t3, $t3, 2
	addi.d	$t4, $t4, 2
	addi.d	$t5, $t5, -1
	addi.d	$a7, $a7, 2
	bnez	$t5, .LBB4_20
	b	.LBB4_16
	.p2align	4, , 16
.LBB4_21:                               # %vector.memcheck84
                                        #   in Loop: Header=BB4_17 Depth=1
	sub.d	$t4, $a7, $t3
	move	$t5, $zero
	bltu	$t4, $a6, .LBB4_19
# %bb.22:                               # %vector.memcheck84
                                        #   in Loop: Header=BB4_17 Depth=1
	sub.d	$t4, $a7, $a2
	bltu	$t4, $a6, .LBB4_19
# %bb.23:                               # %vector.body93.preheader
                                        #   in Loop: Header=BB4_17 Depth=1
	move	$t4, $t3
	move	$t5, $a2
	move	$t6, $a7
	move	$t7, $a4
	.p2align	4, , 16
.LBB4_24:                               # %vector.body93
                                        #   Parent Loop BB4_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t4, 0
	vld	$vr1, $t5, 0
	vor.v	$vr2, $vr0, $vr1
	vxor.v	$vr0, $vr0, $vr1
	vsrli.h	$vr0, $vr0, 1
	vsub.h	$vr0, $vr2, $vr0
	vst	$vr0, $t6, 0
	addi.d	$t7, $t7, -8
	addi.d	$t6, $t6, 16
	addi.d	$t5, $t5, 16
	addi.d	$t4, $t4, 16
	bnez	$t7, .LBB4_24
# %bb.25:                               # %middle.block98
                                        #   in Loop: Header=BB4_17 Depth=1
	move	$t5, $a4
	beq	$a4, $a3, .LBB4_16
	b	.LBB4_19
.LBB4_26:                               # %._crit_edge64
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
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
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	ld.w	$t0, $sp, 96
	ldptr.w	$t6, $a0, 6392
	ld.d	$t1, $sp, 88
	ld.w	$t2, $sp, 80
	ldptr.w	$t5, $a0, 6396
	addi.w	$t4, $t6, 40
	ldptr.d	$t8, $a0, 6448
	addi.w	$a0, $t6, 39
	addi.w	$t7, $zero, -19
	addi.w	$t3, $t5, 19
	bge	$t7, $t5, .LBB5_7
# %bb.1:                                # %.lr.ph73
	addi.w	$t7, $zero, -39
	blt	$t6, $t7, .LBB5_12
# %bb.2:                                # %.lr.ph.us.preheader
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $t8, $a3
	move	$t7, $zero
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
	slt	$a4, $a5, $t4
	masknez	$a6, $a5, $a4
	maskeqz	$a4, $t4, $a4
	or	$a4, $a4, $a6
	slt	$a6, $a5, $t3
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $t3, $a6
	or	$a5, $a6, $a5
	alsl.d	$a6, $a7, $a3, 3
	alsl.d	$t8, $t1, $a1, 3
	.p2align	4, , 16
.LBB5_3:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
	slli.d	$s1, $t7, 3
	ldx.d	$fp, $a6, $s1
	ldx.d	$s0, $t8, $s1
	ldx.d	$s1, $a2, $s1
	move	$s2, $a4
	move	$s3, $t2
	move	$s4, $t0
	.p2align	4, , 16
.LBB5_4:                                #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slt	$s5, $a0, $s3
	masknez	$s6, $s3, $s5
	maskeqz	$s5, $a0, $s5
	or	$s5, $s5, $s6
	slli.d	$s5, $s5, 1
	ldx.hu	$s5, $fp, $s5
	slt	$s6, $a0, $s4
	masknez	$s7, $s4, $s6
	maskeqz	$s6, $a0, $s6
	or	$s6, $s6, $s7
	slli.d	$s6, $s6, 1
	ldx.hu	$s6, $s0, $s6
	add.d	$s5, $s5, $s6
	addi.d	$s5, $s5, 1
	srli.d	$s5, $s5, 1
	st.h	$s5, $s1, 0
	addi.w	$s4, $s4, 1
	addi.w	$s3, $s3, 1
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 2
	bnez	$s2, .LBB5_4
# %bb.5:                                # %._crit_edge.us
                                        #   in Loop: Header=BB5_3 Depth=1
	addi.d	$t7, $t7, 1
	bne	$t7, $a5, .LBB5_3
# %bb.6:                                # %.preheader
	addi.w	$a4, $zero, -39
	bge	$t6, $a4, .LBB5_8
	b	.LBB5_12
.LBB5_7:                                # %..preheader_crit_edge
	slli.d	$a3, $a3, 3
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
	addi.w	$a4, $zero, -39
	blt	$t6, $a4, .LBB5_12
.LBB5_8:                                # %.lr.ph.us76.preheader
	addi.w	$a4, $t5, 40
	addi.w	$a5, $t5, 39
	ori	$a6, $zero, 1
	slt	$t5, $a6, $t4
	masknez	$a6, $a6, $t5
	maskeqz	$t4, $t4, $t5
	or	$a6, $t4, $a6
	.p2align	4, , 16
.LBB5_9:                                # %.lr.ph.us76
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_10 Depth 2
	add.w	$t4, $a7, $t3
	slt	$t5, $a5, $t4
	masknez	$t4, $t4, $t5
	maskeqz	$t5, $a5, $t5
	or	$t4, $t5, $t4
	slli.d	$t4, $t4, 3
	ldx.d	$t4, $a3, $t4
	add.w	$t5, $t1, $t3
	slt	$t6, $a5, $t5
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $a5, $t6
	or	$t5, $t6, $t5
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $a1, $t5
	slli.d	$t6, $t3, 3
	ldx.d	$t6, $a2, $t6
	move	$t7, $a6
	move	$t8, $t2
	move	$fp, $t0
	.p2align	4, , 16
.LBB5_10:                               #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slt	$s0, $a0, $t8
	masknez	$s1, $t8, $s0
	maskeqz	$s0, $a0, $s0
	or	$s0, $s0, $s1
	slli.d	$s0, $s0, 1
	ldx.hu	$s0, $t4, $s0
	slt	$s1, $a0, $fp
	masknez	$s2, $fp, $s1
	maskeqz	$s1, $a0, $s1
	or	$s1, $s1, $s2
	slli.d	$s1, $s1, 1
	ldx.hu	$s1, $t5, $s1
	add.d	$s0, $s0, $s1
	addi.d	$s0, $s0, 1
	srli.d	$s0, $s0, 1
	st.h	$s0, $t6, 0
	addi.w	$fp, $fp, 1
	addi.w	$t8, $t8, 1
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 2
	bnez	$t7, .LBB5_10
# %bb.11:                               # %._crit_edge.us77
                                        #   in Loop: Header=BB5_9 Depth=1
	addi.d	$t3, $t3, 1
	blt	$t3, $a4, .LBB5_9
.LBB5_12:                               # %.split.us
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
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
