	.file	"zarith.c"
	.text
	.globl	zadd                            # -- Begin function zadd
	.p2align	5
	.type	zadd,@function
zadd:                                   # @zadd
# %bb.0:
	ld.h	$a1, $a0, 8
	bstrpick.d	$a2, $a1, 7, 2
	ori	$a3, $zero, 5
	addi.w	$a1, $zero, -20
	beq	$a2, $a3, .LBB0_5
# %bb.1:
	ori	$a3, $zero, 11
	bne	$a2, $a3, .LBB0_15
# %bb.2:
	ld.h	$a2, $a0, -8
	bstrpick.d	$a2, $a2, 7, 2
	ori	$a3, $zero, 5
	beq	$a2, $a3, .LBB0_9
# %bb.3:
	ori	$a3, $zero, 11
	bne	$a2, $a3, .LBB0_15
# %bb.4:
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a0, -16
	b	.LBB0_8
.LBB0_5:
	ld.h	$a2, $a0, -8
	bstrpick.d	$a2, $a2, 7, 2
	beq	$a2, $a3, .LBB0_10
# %bb.6:
	ori	$a3, $zero, 11
	bne	$a2, $a3, .LBB0_15
# %bb.7:
	ld.d	$a1, $a0, 0
	fld.s	$fa0, $a0, -16
	movgr2fr.d	$fa1, $a1
	ffint.s.l	$fa1, $fa1
.LBB0_8:
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, -16
	b	.LBB0_14
.LBB0_9:
	ld.d	$a1, $a0, -16
	fld.s	$fa0, $a0, 0
	movgr2fr.d	$fa1, $a1
	ffint.s.l	$fa1, $fa1
	fadd.s	$fa0, $fa0, $fa1
	b	.LBB0_13
.LBB0_10:
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a0, -16
	add.d	$a2, $a3, $a1
	xor	$a3, $a3, $a1
	st.d	$a2, $a0, -16
	bltz	$a3, .LBB0_14
# %bb.11:
	xor	$a3, $a2, $a1
	bgez	$a3, .LBB0_14
# %bb.12:
	movgr2fr.d	$fa0, $a2
	ffint.s.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.s.l	$fa1, $fa1
	fsub.s	$fa0, $fa0, $fa1
.LBB0_13:
	fst.s	$fa0, $a0, -16
	ori	$a1, $zero, 44
	st.h	$a1, $a0, -8
.LBB0_14:
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a0, $a0, %got_pc_lo12(osp)
	ld.d	$a2, $a0, 0
	move	$a1, $zero
	addi.d	$a2, $a2, -16
	st.d	$a2, $a0, 0
.LBB0_15:
	move	$a0, $a1
	ret
.Lfunc_end0:
	.size	zadd, .Lfunc_end0-zadd
                                        # -- End function
	.globl	zdiv                            # -- Begin function zdiv
	.p2align	5
	.type	zdiv,@function
zdiv:                                   # @zdiv
# %bb.0:
	ld.h	$a1, $a0, 8
	bstrpick.d	$a2, $a1, 7, 2
	ori	$a3, $zero, 5
	addi.w	$a1, $zero, -20
	beq	$a2, $a3, .LBB1_6
# %bb.1:
	ori	$a3, $zero, 11
	bne	$a2, $a3, .LBB1_11
# %bb.2:
	fld.s	$fa0, $a0, 0
	movgr2fr.w	$fa1, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_10
# %bb.3:
	ld.h	$a2, $a0, -8
	bstrpick.d	$a2, $a2, 7, 2
	ori	$a3, $zero, 5
	beq	$a2, $a3, .LBB1_13
# %bb.4:
	ori	$a3, $zero, 11
	bne	$a2, $a3, .LBB1_11
# %bb.5:
	fld.s	$fa1, $a0, -16
	fdiv.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a0, -16
	b	.LBB1_15
.LBB1_6:
	ld.d	$a2, $a0, 0
	beqz	$a2, .LBB1_10
# %bb.7:
	ld.h	$a3, $a0, -8
	bstrpick.d	$a3, $a3, 7, 2
	ori	$a4, $zero, 5
	beq	$a3, $a4, .LBB1_12
# %bb.8:
	ori	$a4, $zero, 11
	bne	$a3, $a4, .LBB1_11
# %bb.9:
	fld.s	$fa0, $a0, -16
	movgr2fr.d	$fa1, $a2
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, -16
	b	.LBB1_15
.LBB1_10:
	addi.w	$a1, $zero, -23
.LBB1_11:
	move	$a0, $a1
	ret
.LBB1_12:
	ld.d	$a1, $a0, -16
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a2
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	b	.LBB1_14
.LBB1_13:
	ld.d	$a1, $a0, -16
	movgr2fr.d	$fa1, $a1
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa0, $fa1, $fa0
.LBB1_14:
	fst.s	$fa0, $a0, -16
	ori	$a1, $zero, 44
	st.h	$a1, $a0, -8
.LBB1_15:
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a0, $a0, %got_pc_lo12(osp)
	ld.d	$a2, $a0, 0
	addi.d	$a2, $a2, -16
	st.d	$a2, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	zdiv, .Lfunc_end1-zdiv
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function zmul
.LCPI2_0:
	.word	0xcf000000                      # float -2.14748365E+9
	.text
	.globl	zmul
	.p2align	5
	.type	zmul,@function
zmul:                                   # @zmul
# %bb.0:
	ld.h	$a1, $a0, 8
	bstrpick.d	$a2, $a1, 7, 2
	ori	$a3, $zero, 5
	addi.w	$a1, $zero, -20
	beq	$a2, $a3, .LBB2_5
# %bb.1:
	ori	$a3, $zero, 11
	bne	$a2, $a3, .LBB2_18
# %bb.2:
	ld.h	$a2, $a0, -8
	bstrpick.d	$a2, $a2, 7, 2
	ori	$a3, $zero, 5
	beq	$a2, $a3, .LBB2_9
# %bb.3:
	ori	$a3, $zero, 11
	bne	$a2, $a3, .LBB2_18
# %bb.4:
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a0, -16
	b	.LBB2_8
.LBB2_5:
	ld.h	$a2, $a0, -8
	bstrpick.d	$a2, $a2, 7, 2
	beq	$a2, $a3, .LBB2_11
# %bb.6:
	ori	$a3, $zero, 11
	bne	$a2, $a3, .LBB2_18
# %bb.7:
	ld.d	$a1, $a0, 0
	fld.s	$fa0, $a0, -16
	movgr2fr.d	$fa1, $a1
	ffint.s.l	$fa1, $fa1
.LBB2_8:
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, -16
	b	.LBB2_17
.LBB2_9:
	ld.d	$a1, $a0, -16
	fld.s	$fa0, $a0, 0
	movgr2fr.d	$fa1, $a1
	ffint.s.l	$fa1, $fa1
	fmul.s	$fa0, $fa0, $fa1
.LBB2_10:
	fst.s	$fa0, $a0, -16
	ori	$a1, $zero, 44
	st.h	$a1, $a0, -8
	b	.LBB2_17
.LBB2_11:
	ld.d	$a2, $a0, -16
	ld.d	$a3, $a0, 0
	mul.d	$a1, $a3, $a2
	beqz	$a2, .LBB2_16
# %bb.12:
	srai.d	$a4, $a2, 63
	xor	$a5, $a2, $a4
	sub.d	$a4, $a5, $a4
	srai.d	$a5, $a3, 63
	xor	$a6, $a3, $a5
	sub.d	$a5, $a6, $a5
	or	$a6, $a4, $a5
	srli.d	$a6, $a6, 15
	sltu	$a6, $zero, $a6
	beqz	$a6, .LBB2_16
# %bb.13:
	lu12i.w	$a6, 524287
	ori	$a6, $a6, 4095
	div.du	$a4, $a6, $a4
	bgeu	$a4, $a5, .LBB2_16
# %bb.14:
	movgr2fr.d	$fa0, $a2
	ffint.s.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.s.l	$fa1, $fa1
	lu12i.w	$a2, -524288
	fmul.s	$fa0, $fa0, $fa1
	bne	$a1, $a2, .LBB2_10
# %bb.15:
	pcalau12i	$a2, %pc_hi20(.LCPI2_0)
	fld.s	$fa1, $a2, %pc_lo12(.LCPI2_0)
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB2_10
.LBB2_16:
	st.d	$a1, $a0, -16
.LBB2_17:
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a0, $a0, %got_pc_lo12(osp)
	ld.d	$a2, $a0, 0
	move	$a1, $zero
	addi.d	$a2, $a2, -16
	st.d	$a2, $a0, 0
.LBB2_18:
	move	$a0, $a1
	ret
.Lfunc_end2:
	.size	zmul, .Lfunc_end2-zmul
                                        # -- End function
	.globl	zsub                            # -- Begin function zsub
	.p2align	5
	.type	zsub,@function
zsub:                                   # @zsub
# %bb.0:
	ld.h	$a1, $a0, 8
	bstrpick.d	$a2, $a1, 7, 2
	ori	$a3, $zero, 5
	addi.w	$a1, $zero, -20
	beq	$a2, $a3, .LBB3_5
# %bb.1:
	ori	$a3, $zero, 11
	bne	$a2, $a3, .LBB3_13
# %bb.2:
	ld.h	$a2, $a0, -8
	bstrpick.d	$a2, $a2, 7, 2
	ori	$a3, $zero, 5
	beq	$a2, $a3, .LBB3_8
# %bb.3:
	ori	$a3, $zero, 11
	bne	$a2, $a3, .LBB3_13
# %bb.4:
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a0, -16
	fsub.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a0, -16
	b	.LBB3_12
.LBB3_5:
	ld.h	$a2, $a0, -8
	bstrpick.d	$a2, $a2, 7, 2
	beq	$a2, $a3, .LBB3_9
# %bb.6:
	ori	$a3, $zero, 11
	bne	$a2, $a3, .LBB3_13
# %bb.7:
	ld.d	$a1, $a0, 0
	fld.s	$fa0, $a0, -16
	movgr2fr.d	$fa1, $a1
	ffint.s.l	$fa1, $fa1
	fsub.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, -16
	b	.LBB3_12
.LBB3_8:
	ld.d	$a1, $a0, -16
	fld.s	$fa0, $a0, 0
	movgr2fr.d	$fa1, $a1
	ffint.s.l	$fa1, $fa1
	fsub.s	$fa0, $fa1, $fa0
	b	.LBB3_11
.LBB3_9:
	ld.d	$a2, $a0, -16
	ld.d	$a1, $a0, 0
	sub.d	$a3, $a2, $a1
	xor	$a4, $a3, $a2
	xor	$a5, $a1, $a2
	and	$a4, $a4, $a5
	st.d	$a3, $a0, -16
	bgez	$a4, .LBB3_12
# %bb.10:
	movgr2fr.d	$fa0, $a2
	ffint.s.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a1
	ffint.s.l	$fa1, $fa1
	fsub.s	$fa0, $fa0, $fa1
.LBB3_11:
	fst.s	$fa0, $a0, -16
	ori	$a1, $zero, 44
	st.h	$a1, $a0, -8
.LBB3_12:
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a0, $a0, %got_pc_lo12(osp)
	ld.d	$a2, $a0, 0
	move	$a1, $zero
	addi.d	$a2, $a2, -16
	st.d	$a2, $a0, 0
.LBB3_13:
	move	$a0, $a1
	ret
.Lfunc_end3:
	.size	zsub, .Lfunc_end3-zsub
                                        # -- End function
	.globl	zidiv                           # -- Begin function zidiv
	.p2align	5
	.type	zidiv,@function
zidiv:                                  # @zidiv
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	vld	$vr0, $a0, -16
	ld.h	$a1, $a0, 8
	addi.d	$fp, $a0, -16
	vst	$vr0, $sp, 0
	bstrpick.d	$a2, $a1, 7, 2
	ori	$a3, $zero, 5
	addi.w	$a1, $zero, -20
	beq	$a2, $a3, .LBB4_6
# %bb.1:
	ori	$a3, $zero, 11
	bne	$a2, $a3, .LBB4_16
# %bb.2:
	fld.s	$fa0, $a0, 0
	movgr2fr.w	$fa1, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB4_10
# %bb.3:
	ld.h	$a2, $a0, -8
	bstrpick.d	$a2, $a2, 7, 2
	ori	$a3, $zero, 5
	beq	$a2, $a3, .LBB4_12
# %bb.4:
	ori	$a3, $zero, 11
	bne	$a2, $a3, .LBB4_16
# %bb.5:
	move	$s0, $a0
	fld.s	$fa1, $fp, 0
	fdiv.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $fp, 0
	b	.LBB4_14
.LBB4_6:
	ld.d	$a2, $a0, 0
	beqz	$a2, .LBB4_10
# %bb.7:
	ld.h	$a3, $a0, -8
	bstrpick.d	$a3, $a3, 7, 2
	ori	$a4, $zero, 5
	beq	$a3, $a4, .LBB4_11
# %bb.8:
	ori	$a4, $zero, 11
	bne	$a3, $a4, .LBB4_16
# %bb.9:
	move	$s0, $a0
	fld.s	$fa0, $fp, 0
	movgr2fr.d	$fa1, $a2
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $fp, 0
	b	.LBB4_14
.LBB4_10:
	addi.w	$a1, $zero, -23
	b	.LBB4_16
.LBB4_11:
	ld.d	$a1, $a0, -16
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a2
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	b	.LBB4_13
.LBB4_12:
	ld.d	$a1, $a0, -16
	movgr2fr.d	$fa1, $a1
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa0, $fa1, $fa0
.LBB4_13:
	fst.s	$fa0, $a0, -16
	ori	$a1, $zero, 44
	move	$s0, $a0
	st.h	$a1, $a0, -8
.LBB4_14:
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$s1, $a0, %got_pc_lo12(osp)
	ld.d	$a0, $s1, 0
	addi.d	$a0, $a0, -16
	st.d	$a0, $s1, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(zcvi)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	bgez	$a0, .LBB4_16
# %bb.15:
	vld	$vr0, $sp, 0
	vst	$vr0, $fp, 0
	st.d	$s0, $s1, 0
.LBB4_16:                               # %zdiv.exit.thread
	move	$a0, $a1
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	zidiv, .Lfunc_end4-zidiv
                                        # -- End function
	.globl	zmod                            # -- Begin function zmod
	.p2align	5
	.type	zmod,@function
zmod:                                   # @zmod
# %bb.0:
	ld.hu	$a1, $a0, -8
	andi	$a3, $a1, 252
	ori	$a2, $zero, 20
	addi.w	$a1, $zero, -20
	bne	$a3, $a2, .LBB5_5
# %bb.1:
	ld.hu	$a3, $a0, 8
	andi	$a3, $a3, 252
	bne	$a3, $a2, .LBB5_5
# %bb.2:
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB5_4
# %bb.3:
	ld.d	$a2, $a0, -16
	mod.d	$a1, $a2, $a1
	st.d	$a1, $a0, -16
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a0, $a0, %got_pc_lo12(osp)
	ld.d	$a2, $a0, 0
	addi.d	$a2, $a2, -16
	st.d	$a2, $a0, 0
	move	$a0, $zero
	ret
.LBB5_4:
	addi.w	$a1, $zero, -23
.LBB5_5:
	move	$a0, $a1
	ret
.Lfunc_end5:
	.size	zmod, .Lfunc_end5-zmod
                                        # -- End function
	.globl	zneg                            # -- Begin function zneg
	.p2align	5
	.type	zneg,@function
zneg:                                   # @zneg
# %bb.0:
	ld.h	$a1, $a0, 8
	bstrpick.d	$a1, $a1, 7, 2
	ori	$a2, $zero, 5
	beq	$a1, $a2, .LBB6_3
# %bb.1:
	ori	$a2, $zero, 11
	bne	$a1, $a2, .LBB6_5
# %bb.2:
	fld.s	$fa0, $a0, 0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $a0, 0
	move	$a0, $zero
	ret
.LBB6_3:
	ld.d	$a2, $a0, 0
	lu12i.w	$a1, -524288
	bne	$a2, $a1, .LBB6_6
# %bb.4:
	lu12i.w	$a2, 323584
	st.w	$a2, $a0, 0
	ori	$a2, $zero, 44
	st.h	$a2, $a0, 8
	move	$a0, $zero
	ret
.LBB6_5:
	addi.w	$a0, $zero, -20
	ret
.LBB6_6:
	sub.d	$a2, $zero, $a2
	st.d	$a2, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end6:
	.size	zneg, .Lfunc_end6-zneg
                                        # -- End function
	.globl	zceiling                        # -- Begin function zceiling
	.p2align	5
	.type	zceiling,@function
zceiling:                               # @zceiling
# %bb.0:
	ld.h	$a1, $a0, 8
	bstrpick.d	$a1, $a1, 7, 2
	ori	$a2, $zero, 5
	beq	$a1, $a2, .LBB7_3
# %bb.1:
	ori	$a2, $zero, 11
	bne	$a1, $a2, .LBB7_4
# %bb.2:
	fld.s	$fa0, $a0, 0
	vreplvei.w	$vr0, $vr0, 0
	vfrintrp.s	$vr0, $vr0
	fst.s	$fa0, $a0, 0
.LBB7_3:
	move	$a0, $zero
	ret
.LBB7_4:
	addi.w	$a0, $zero, -20
	ret
.Lfunc_end7:
	.size	zceiling, .Lfunc_end7-zceiling
                                        # -- End function
	.globl	zfloor                          # -- Begin function zfloor
	.p2align	5
	.type	zfloor,@function
zfloor:                                 # @zfloor
# %bb.0:
	ld.h	$a1, $a0, 8
	bstrpick.d	$a1, $a1, 7, 2
	ori	$a2, $zero, 5
	beq	$a1, $a2, .LBB8_3
# %bb.1:
	ori	$a2, $zero, 11
	bne	$a1, $a2, .LBB8_4
# %bb.2:
	fld.s	$fa0, $a0, 0
	vreplvei.w	$vr0, $vr0, 0
	vfrintrm.s	$vr0, $vr0
	fst.s	$fa0, $a0, 0
.LBB8_3:
	move	$a0, $zero
	ret
.LBB8_4:
	addi.w	$a0, $zero, -20
	ret
.Lfunc_end8:
	.size	zfloor, .Lfunc_end8-zfloor
                                        # -- End function
	.globl	zround                          # -- Begin function zround
	.p2align	5
	.type	zround,@function
zround:                                 # @zround
# %bb.0:
	ld.h	$a1, $a0, 8
	bstrpick.d	$a1, $a1, 7, 2
	ori	$a2, $zero, 5
	beq	$a1, $a2, .LBB9_3
# %bb.1:
	ori	$a2, $zero, 11
	bne	$a1, $a2, .LBB9_4
# %bb.2:
	fld.s	$fa0, $a0, 0
	fcvt.d.s	$fa0, $fa0
	vldi	$vr1, -928
	fadd.d	$fa0, $fa0, $fa1
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a0, 0
.LBB9_3:
	move	$a0, $zero
	ret
.LBB9_4:
	addi.w	$a0, $zero, -20
	ret
.Lfunc_end9:
	.size	zround, .Lfunc_end9-zround
                                        # -- End function
	.globl	ztruncate                       # -- Begin function ztruncate
	.p2align	5
	.type	ztruncate,@function
ztruncate:                              # @ztruncate
# %bb.0:
	ld.h	$a1, $a0, 8
	bstrpick.d	$a1, $a1, 7, 2
	ori	$a2, $zero, 5
	beq	$a1, $a2, .LBB10_3
# %bb.1:
	ori	$a2, $zero, 11
	bne	$a1, $a2, .LBB10_4
# %bb.2:
	fld.s	$fa0, $a0, 0
	fcvt.d.s	$fa1, $fa0
	movgr2fr.w	$fa2, $zero
	fcmp.clt.s	$fcc0, $fa0, $fa2
	vreplvei.d	$vr0, $vr1, 0
	vfrintrp.d	$vr1, $vr0
	vfrintrm.d	$vr0, $vr0
	fsel	$fa0, $fa0, $fa1, $fcc0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a0, 0
.LBB10_3:
	move	$a0, $zero
	ret
.LBB10_4:
	addi.w	$a0, $zero, -20
	ret
.Lfunc_end10:
	.size	ztruncate, .Lfunc_end10-ztruncate
                                        # -- End function
	.globl	zarith_op_init                  # -- Begin function zarith_op_init
	.p2align	5
	.type	zarith_op_init,@function
zarith_op_init:                         # @zarith_op_init
# %bb.0:
	pcalau12i	$a0, %pc_hi20(zarith_op_init.my_defs)
	addi.d	$a0, $a0, %pc_lo12(zarith_op_init.my_defs)
	pcaddu18i	$t8, %call36(z_op_init)
	jr	$t8
.Lfunc_end11:
	.size	zarith_op_init, .Lfunc_end11-zarith_op_init
                                        # -- End function
	.type	zarith_op_init.my_defs,@object  # @zarith_op_init.my_defs
	.data
	.p2align	3, 0x0
zarith_op_init.my_defs:
	.dword	.L.str
	.dword	zadd
	.dword	.L.str.1
	.dword	zceiling
	.dword	.L.str.2
	.dword	zdiv
	.dword	.L.str.3
	.dword	zidiv
	.dword	.L.str.4
	.dword	zfloor
	.dword	.L.str.5
	.dword	zmod
	.dword	.L.str.6
	.dword	zmul
	.dword	.L.str.7
	.dword	zneg
	.dword	.L.str.8
	.dword	zround
	.dword	.L.str.9
	.dword	zsub
	.dword	.L.str.10
	.dword	ztruncate
	.space	16
	.size	zarith_op_init.my_defs, 192

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"2add"
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"1ceiling"
	.size	.L.str.1, 9

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"2div"
	.size	.L.str.2, 5

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"2idiv"
	.size	.L.str.3, 6

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"1floor"
	.size	.L.str.4, 7

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"2mod"
	.size	.L.str.5, 5

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"2mul"
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"1neg"
	.size	.L.str.7, 5

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"1round"
	.size	.L.str.8, 7

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"2sub"
	.size	.L.str.9, 5

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"1truncate"
	.size	.L.str.10, 10

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym zadd
	.addrsig_sym zdiv
	.addrsig_sym zmul
	.addrsig_sym zsub
	.addrsig_sym zidiv
	.addrsig_sym zmod
	.addrsig_sym zneg
	.addrsig_sym zceiling
	.addrsig_sym zfloor
	.addrsig_sym zround
	.addrsig_sym ztruncate
	.addrsig_sym zarith_op_init.my_defs
