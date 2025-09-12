	.file	"code.c"
	.text
	.globl	Gsm_Coder                       # -- Begin function Gsm_Coder
	.p2align	5
	.type	Gsm_Coder,@function
Gsm_Coder:                              # @Gsm_Coder
# %bb.0:                                # %iter.check
	addi.d	$sp, $sp, -448
	st.d	$ra, $sp, 440                   # 8-byte Folded Spill
	st.d	$fp, $sp, 432                   # 8-byte Folded Spill
	st.d	$s0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	st.d	$s2, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 400                   # 8-byte Folded Spill
	st.d	$s4, $sp, 392                   # 8-byte Folded Spill
	st.d	$s5, $sp, 384                   # 8-byte Folded Spill
	st.d	$s6, $sp, 376                   # 8-byte Folded Spill
	st.d	$s7, $sp, 368                   # 8-byte Folded Spill
	st.d	$s8, $sp, 360                   # 8-byte Folded Spill
	move	$s2, $a7
	move	$s5, $a6
	move	$s3, $a5
	move	$s1, $a4
	move	$s8, $a3
	move	$s0, $a2
	move	$fp, $a0
	addi.d	$s7, $a0, 240
	addi.d	$a2, $sp, 40
	pcaddu18i	$ra, %call36(Gsm_Preprocess)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 40
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(Gsm_LPC_Analysis)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 40
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(Gsm_Short_Term_Analysis_Filter)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Gsm_Coder.e)
	addi.d	$s4, $a0, %pc_lo12(Gsm_Coder.e)
	addi.d	$s6, $s4, 10
	addi.d	$a1, $sp, 40
	move	$a0, $fp
	move	$a2, $s7
	move	$a3, $s6
	move	$a4, $s7
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$a5, $s8
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	move	$a6, $s1
	pcaddu18i	$ra, %call36(Gsm_Long_Term_Predictor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s6
	move	$a2, $s5
	move	$a3, $s3
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Gsm_RPE_Encoding)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s4, 90
	addi.d	$s0, $fp, 320
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bgeu	$s7, $a0, .LBB0_4
# %bb.1:                                # %iter.check
	bgeu	$s6, $s0, .LBB0_4
# %bb.2:                                # %vec.epilog.scalar.ph.preheader
	move	$a0, $zero
	lu12i.w	$a1, 7
	ori	$a1, $a1, 4095
	lu12i.w	$a2, -8
	ori	$a3, $zero, 80
	.p2align	4, , 16
.LBB0_3:                                # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $s4, $a0
	ld.h	$a4, $a4, 10
	ldx.h	$a5, $s7, $a0
	add.d	$a4, $a4, $a5
	slt	$a5, $a4, $a1
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a1, $a5
	or	$a4, $a4, $a5
	slt	$a5, $a2, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a2, $a5
	or	$a4, $a4, $a5
	stx.h	$a4, $s7, $a0
	addi.d	$a0, $a0, 2
	bne	$a0, $a3, .LBB0_3
	b	.LBB0_5
.LBB0_4:                                # %vector.body
	vld	$vr0, $s4, 10
	vld	$vr1, $s4, 26
	vld	$vr2, $fp, 240
	vld	$vr3, $fp, 256
	vsadd.h	$vr0, $vr0, $vr2
	vsadd.h	$vr1, $vr1, $vr3
	vst	$vr0, $fp, 240
	vld	$vr0, $s4, 42
	vld	$vr2, $fp, 272
	vst	$vr1, $fp, 256
	vld	$vr1, $s4, 58
	vld	$vr3, $fp, 288
	vsadd.h	$vr0, $vr0, $vr2
	vld	$vr2, $s4, 74
	vld	$vr4, $fp, 304
	vsadd.h	$vr1, $vr1, $vr3
	vst	$vr0, $fp, 272
	vst	$vr1, $fp, 288
	vsadd.h	$vr0, $vr2, $vr4
	vst	$vr0, $fp, 304
.LBB0_5:                                # %iter.check66
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a5, $a0, 2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a6, $a0, 2
	addi.d	$s7, $s5, 2
	addi.d	$s8, $s3, 2
	addi.d	$s1, $s2, 26
	addi.d	$a1, $sp, 120
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $s6
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Gsm_Long_Term_Predictor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s8
	move	$a4, $s1
	pcaddu18i	$ra, %call36(Gsm_RPE_Encoding)
	jirl	$ra, $ra, 0
	addi.d	$s7, $fp, 400
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bgeu	$s0, $a0, .LBB0_9
# %bb.6:                                # %iter.check66
	bgeu	$s6, $s7, .LBB0_9
# %bb.7:                                # %vec.epilog.scalar.ph78.preheader
	move	$a0, $zero
	lu12i.w	$a1, 7
	ori	$a1, $a1, 4095
	lu12i.w	$a2, -8
	ori	$a3, $zero, 80
	.p2align	4, , 16
.LBB0_8:                                # %vec.epilog.scalar.ph78
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $s4, $a0
	ld.h	$a4, $a4, 10
	ldx.h	$a5, $s0, $a0
	add.d	$a4, $a4, $a5
	slt	$a5, $a4, $a1
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a1, $a5
	or	$a4, $a4, $a5
	slt	$a5, $a2, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a2, $a5
	or	$a4, $a4, $a5
	stx.h	$a4, $s0, $a0
	addi.d	$a0, $a0, 2
	bne	$a0, $a3, .LBB0_8
	b	.LBB0_10
.LBB0_9:                                # %vector.body69
	vld	$vr0, $s4, 10
	vld	$vr1, $s4, 26
	vld	$vr2, $fp, 320
	vld	$vr3, $fp, 336
	vsadd.h	$vr0, $vr0, $vr2
	vsadd.h	$vr1, $vr1, $vr3
	vst	$vr0, $fp, 320
	vld	$vr0, $s4, 42
	vld	$vr2, $fp, 352
	vst	$vr1, $fp, 336
	vld	$vr1, $s4, 58
	vld	$vr3, $fp, 368
	vsadd.h	$vr0, $vr0, $vr2
	vld	$vr2, $s4, 74
	vld	$vr4, $fp, 384
	vsadd.h	$vr1, $vr1, $vr3
	vst	$vr0, $fp, 352
	vst	$vr1, $fp, 368
	vsadd.h	$vr0, $vr2, $vr4
	vst	$vr0, $fp, 384
.LBB0_10:                               # %iter.check94
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a5, $a0, 4
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a6, $a0, 4
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	addi.d	$s1, $s5, 4
	move	$s5, $s3
	addi.d	$s8, $s3, 4
	move	$s3, $s2
	addi.d	$s2, $s2, 52
	addi.d	$a1, $sp, 200
	move	$a0, $fp
	move	$a2, $s7
	move	$a3, $s6
	move	$a4, $s7
	pcaddu18i	$ra, %call36(Gsm_Long_Term_Predictor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s6
	move	$a2, $s1
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Gsm_RPE_Encoding)
	jirl	$ra, $ra, 0
	addi.d	$s8, $fp, 480
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bgeu	$s7, $a0, .LBB0_14
# %bb.11:                               # %iter.check94
	bgeu	$s6, $s8, .LBB0_14
# %bb.12:                               # %vec.epilog.scalar.ph106.preheader
	move	$a0, $zero
	lu12i.w	$a1, 7
	ori	$a1, $a1, 4095
	lu12i.w	$a2, -8
	ori	$a3, $zero, 80
	.p2align	4, , 16
.LBB0_13:                               # %vec.epilog.scalar.ph106
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $s4, $a0
	ld.h	$a4, $a4, 10
	ldx.h	$a5, $s7, $a0
	add.d	$a4, $a4, $a5
	slt	$a5, $a4, $a1
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a1, $a5
	or	$a4, $a4, $a5
	slt	$a5, $a2, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a2, $a5
	or	$a4, $a4, $a5
	stx.h	$a4, $s7, $a0
	addi.d	$a0, $a0, 2
	bne	$a0, $a3, .LBB0_13
	b	.LBB0_15
.LBB0_14:                               # %vector.body97
	vld	$vr0, $s4, 10
	vld	$vr1, $s4, 26
	vld	$vr2, $fp, 400
	vld	$vr3, $fp, 416
	vsadd.h	$vr0, $vr0, $vr2
	vsadd.h	$vr1, $vr1, $vr3
	vst	$vr0, $fp, 400
	vld	$vr0, $s4, 42
	vld	$vr2, $fp, 432
	vst	$vr1, $fp, 416
	vld	$vr1, $s4, 58
	vld	$vr3, $fp, 448
	vsadd.h	$vr0, $vr0, $vr2
	vld	$vr2, $s4, 74
	vld	$vr4, $fp, 464
	vsadd.h	$vr1, $vr1, $vr3
	vst	$vr0, $fp, 432
	vst	$vr1, $fp, 448
	vsadd.h	$vr0, $vr2, $vr4
	vst	$vr0, $fp, 464
.LBB0_15:                               # %iter.check122
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a5, $a0, 6
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a6, $a0, 6
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	addi.d	$s1, $a0, 6
	addi.d	$s2, $s5, 6
	addi.d	$s3, $s3, 78
	addi.d	$a1, $sp, 280
	move	$a0, $fp
	move	$a2, $s8
	move	$a3, $s6
	move	$a4, $s8
	pcaddu18i	$ra, %call36(Gsm_Long_Term_Predictor)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s6
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Gsm_RPE_Encoding)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bgeu	$s8, $a0, .LBB0_19
# %bb.16:                               # %iter.check122
	addi.d	$a0, $fp, 560
	bgeu	$s6, $a0, .LBB0_19
# %bb.17:                               # %vec.epilog.scalar.ph134.preheader
	move	$a0, $zero
	lu12i.w	$a1, 7
	ori	$a1, $a1, 4095
	lu12i.w	$a2, -8
	ori	$a3, $zero, 80
	.p2align	4, , 16
.LBB0_18:                               # %vec.epilog.scalar.ph134
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $s4, $a0
	ld.h	$a4, $a4, 10
	ldx.h	$a5, $s8, $a0
	add.d	$a4, $a4, $a5
	slt	$a5, $a4, $a1
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a1, $a5
	or	$a4, $a4, $a5
	slt	$a5, $a2, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a2, $a5
	or	$a4, $a4, $a5
	stx.h	$a4, $s8, $a0
	addi.d	$a0, $a0, 2
	bne	$a0, $a3, .LBB0_18
	b	.LBB0_20
.LBB0_19:                               # %vector.body125
	vld	$vr0, $s4, 10
	vld	$vr1, $s4, 26
	vld	$vr2, $fp, 480
	vld	$vr3, $fp, 496
	vsadd.h	$vr0, $vr0, $vr2
	vsadd.h	$vr1, $vr1, $vr3
	vst	$vr0, $fp, 480
	vld	$vr0, $s4, 42
	vld	$vr2, $fp, 512
	vst	$vr1, $fp, 496
	vld	$vr1, $s4, 58
	vld	$vr3, $fp, 528
	vsadd.h	$vr0, $vr0, $vr2
	vld	$vr2, $s4, 74
	vld	$vr4, $fp, 544
	vsadd.h	$vr1, $vr1, $vr3
	vst	$vr0, $fp, 512
	vst	$vr1, $fp, 528
	vsadd.h	$vr0, $vr2, $vr4
	vst	$vr0, $fp, 544
.LBB0_20:                               # %vec.epilog.middle.block142
	ori	$a2, $zero, 240
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 448
	ret
.Lfunc_end0:
	.size	Gsm_Coder, .Lfunc_end0-Gsm_Coder
                                        # -- End function
	.type	Gsm_Coder.e,@object             # @Gsm_Coder.e
	.local	Gsm_Coder.e
	.comm	Gsm_Coder.e,100,2
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Gsm_Coder.e
