	.file	"long_term.c"
	.text
	.globl	Gsm_Long_Term_Predictor         # -- Begin function Gsm_Long_Term_Predictor
	.p2align	5
	.type	Gsm_Long_Term_Predictor,@function
Gsm_Long_Term_Predictor:                # @Gsm_Long_Term_Predictor
# %bb.0:                                # %iter.check
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
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 24                   # 8-byte Folded Spill
	move	$fp, $a1
	vld	$vr0, $a1, 16
	vslti.h	$vr1, $vr0, 0
	lu12i.w	$a0, 8
	vreplgr2vr.h	$vr2, $a0
	vseq.h	$vr3, $vr0, $vr2
	vneg.h	$vr4, $vr0
	lu12i.w	$a0, 7
	ori	$s6, $a0, 4095
	vld	$vr5, $a1, 48
	vreplgr2vr.h	$vr6, $s6
	vbitsel.v	$vr3, $vr4, $vr6, $vr3
	vbitsel.v	$vr0, $vr0, $vr3, $vr1
	vslti.h	$vr1, $vr5, 0
	vseq.h	$vr3, $vr5, $vr2
	vneg.h	$vr4, $vr5
	vld	$vr7, $a1, 0
	vbitsel.v	$vr3, $vr4, $vr6, $vr3
	vbitsel.v	$vr1, $vr5, $vr3, $vr1
	vmax.h	$vr0, $vr0, $vr1
	vslti.h	$vr1, $vr7, 0
	vseq.h	$vr3, $vr7, $vr2
	vld	$vr4, $a1, 32
	vneg.h	$vr5, $vr7
	vbitsel.v	$vr3, $vr5, $vr6, $vr3
	vbitsel.v	$vr1, $vr7, $vr3, $vr1
	vslti.h	$vr3, $vr4, 0
	vseq.h	$vr5, $vr4, $vr2
	vneg.h	$vr7, $vr4
	vbitsel.v	$vr5, $vr7, $vr6, $vr5
	vbitsel.v	$vr3, $vr4, $vr5, $vr3
	vmax.h	$vr1, $vr1, $vr3
	vmax.h	$vr0, $vr0, $vr1
	vmaxi.h	$vr0, $vr0, 0
	vbsrl.v	$vr1, $vr0, 8
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vld	$vr3, $a1, 64
	vmax.h	$vr0, $vr1, $vr0
	vpickve2gr.h	$a0, $vr0, 0
	vreplgr2vr.h	$vr0, $a0
	vslti.h	$vr1, $vr3, 0
	vseq.h	$vr2, $vr3, $vr2
	vneg.h	$vr4, $vr3
	vbitsel.v	$vr2, $vr4, $vr6, $vr2
	vbitsel.v	$vr1, $vr3, $vr2, $vr1
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.h	$vr0, $vr1, $vr0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	move	$s3, $a5
	move	$s1, $a4
	move	$s0, $a3
	move	$s2, $a2
	beqz	$a0, .LBB0_2
# %bb.1:
	slli.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(gsm_norm)
	jirl	$ra, $ra, 0
	ext.w.h	$a1, $a0
	ori	$a2, $zero, 6
	slt	$a1, $a2, $a1
	slli.d	$a0, $a0, 16
	lu12i.w	$a2, 96
	sub.w	$a0, $a2, $a0
	srai.d	$a0, $a0, 16
	masknez	$a0, $a0, $a1
	b	.LBB0_3
.LBB0_2:
	ori	$a0, $zero, 6
.LBB0_3:                                # %.thread.i
	move	$a1, $zero
	vld	$vr0, $fp, 48
	vld	$vr1, $fp, 0
	vld	$vr2, $fp, 16
	vld	$vr3, $fp, 32
	vilvh.h	$vr4, $vr0, $vr0
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr0, $vr0, $vr0
	vslli.w	$vr0, $vr0, 16
	vsrai.w	$vr0, $vr0, 16
	vilvh.h	$vr5, $vr3, $vr3
	vslli.w	$vr5, $vr5, 16
	vsrai.w	$vr5, $vr5, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr6, $vr2, $vr2
	vslli.w	$vr6, $vr6, 16
	vsrai.w	$vr6, $vr6, 16
	vilvl.h	$vr2, $vr2, $vr2
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvh.h	$vr7, $vr1, $vr1
	vslli.w	$vr7, $vr7, 16
	vsrai.w	$vr7, $vr7, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vreplgr2vr.w	$vr16, $a0
	vsra.w	$vr15, $vr1, $vr16
	vsra.w	$vr13, $vr7, $vr16
	vsra.w	$vr11, $vr2, $vr16
	vsra.w	$vr9, $vr6, $vr16
	vsra.w	$vr7, $vr3, $vr16
	vsra.w	$vr5, $vr5, $vr16
	vsra.w	$vr3, $vr0, $vr16
	vsra.w	$vr1, $vr4, $vr16
	vshuf4i.w	$vr0, $vr1, 50
	vslli.d	$vr0, $vr0, 32
	vsrai.d	$vr0, $vr0, 32
	vshuf4i.w	$vr1, $vr1, 16
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr1, $vr1, 32
	vshuf4i.w	$vr2, $vr3, 50
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vshuf4i.w	$vr3, $vr3, 16
	vslli.d	$vr3, $vr3, 32
	vsrai.d	$vr3, $vr3, 32
	vshuf4i.w	$vr4, $vr5, 50
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr4, $vr4, 32
	vshuf4i.w	$vr5, $vr5, 16
	vslli.d	$vr5, $vr5, 32
	vsrai.d	$vr5, $vr5, 32
	vshuf4i.w	$vr6, $vr7, 50
	vslli.d	$vr6, $vr6, 32
	vsrai.d	$vr6, $vr6, 32
	vshuf4i.w	$vr7, $vr7, 16
	vslli.d	$vr7, $vr7, 32
	vsrai.d	$vr7, $vr7, 32
	vshuf4i.w	$vr8, $vr9, 50
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr10, $vr11, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr11, $vr11, 16
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr12, $vr13, 50
	vslli.d	$vr12, $vr12, 32
	vsrai.d	$vr12, $vr12, 32
	vshuf4i.w	$vr13, $vr13, 16
	vslli.d	$vr13, $vr13, 32
	vsrai.d	$vr13, $vr13, 32
	vshuf4i.w	$vr14, $vr15, 50
	vslli.d	$vr14, $vr14, 32
	vsrai.d	$vr14, $vr14, 32
	vld	$vr17, $fp, 64
	vshuf4i.w	$vr15, $vr15, 16
	vslli.d	$vr15, $vr15, 32
	vsrai.d	$vr15, $vr15, 32
	vilvh.h	$vr18, $vr17, $vr17
	vslli.w	$vr18, $vr18, 16
	vsrai.w	$vr18, $vr18, 16
	vilvl.h	$vr17, $vr17, $vr17
	vslli.w	$vr17, $vr17, 16
	vsrai.w	$vr17, $vr17, 16
	vsra.w	$vr19, $vr17, $vr16
	vsra.w	$vr17, $vr18, $vr16
	vshuf4i.w	$vr16, $vr17, 50
	vslli.d	$vr16, $vr16, 32
	vsrai.d	$vr16, $vr16, 32
	vshuf4i.w	$vr17, $vr17, 16
	vslli.d	$vr17, $vr17, 32
	vsrai.d	$vr17, $vr17, 32
	vshuf4i.w	$vr18, $vr19, 50
	vslli.d	$vr18, $vr18, 32
	vsrai.d	$vr18, $vr18, 32
	vshuf4i.w	$vr19, $vr19, 16
	vslli.d	$vr19, $vr19, 32
	vsrai.d	$vr19, $vr19, 32
	addi.d	$a3, $s2, -16
	ori	$a4, $zero, 40
	ori	$a5, $zero, 121
	ori	$a2, $zero, 40
	.p2align	4, , 16
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	vld	$vr22, $a3, -16
	vld	$vr24, $a3, -32
	vld	$vr23, $a3, -48
	vld	$vr25, $a3, -64
	vilvh.h	$vr20, $vr22, $vr22
	vilvh.h	$vr21, $vr24, $vr24
	vilvl.h	$vr22, $vr22, $vr22
	vilvl.h	$vr24, $vr24, $vr24
	vilvh.h	$vr28, $vr25, $vr25
	vilvh.w	$vr26, $vr28, $vr28
	vslli.d	$vr26, $vr26, 48
	vsrai.d	$vr29, $vr26, 48
	vilvl.h	$vr27, $vr25, $vr25
	vilvh.w	$vr25, $vr27, $vr27
	vslli.d	$vr25, $vr25, 48
	vld	$vr30, $a3, 0
	vsrai.d	$vr25, $vr25, 48
	vmul.d	$vr26, $vr14, $vr25
	vmul.d	$vr25, $vr12, $vr29
	vilvl.h	$vr29, $vr30, $vr30
	vilvh.h	$vr30, $vr30, $vr30
	vilvh.w	$vr31, $vr30, $vr30
	vslli.d	$vr31, $vr31, 48
	vsrai.d	$vr31, $vr31, 48
	vmadd.d	$vr25, $vr16, $vr31
	vilvh.w	$vr31, $vr29, $vr29
	vslli.d	$vr31, $vr31, 48
	vsrai.d	$vr31, $vr31, 48
	vmadd.d	$vr26, $vr18, $vr31
	vilvl.w	$vr31, $vr22, $vr22
	vslli.d	$vr31, $vr31, 48
	vsrai.d	$vr31, $vr31, 48
	vilvl.w	$vr28, $vr28, $vr28
	vslli.d	$vr28, $vr28, 48
	vsrai.d	$vr28, $vr28, 48
	vmul.d	$vr28, $vr13, $vr28
	vilvl.w	$vr30, $vr30, $vr30
	vslli.d	$vr30, $vr30, 48
	vsrai.d	$vr30, $vr30, 48
	vmadd.d	$vr28, $vr17, $vr30
	vilvl.w	$vr30, $vr24, $vr24
	vslli.d	$vr30, $vr30, 48
	vsrai.d	$vr30, $vr30, 48
	vilvl.w	$vr27, $vr27, $vr27
	vslli.d	$vr27, $vr27, 48
	vsrai.d	$vr27, $vr27, 48
	vmul.d	$vr27, $vr15, $vr27
	vilvl.w	$vr29, $vr29, $vr29
	vslli.d	$vr29, $vr29, 48
	vsrai.d	$vr29, $vr29, 48
	vmadd.d	$vr27, $vr19, $vr29
	vilvl.h	$vr29, $vr23, $vr23
	vmadd.d	$vr27, $vr7, $vr30
	vilvl.w	$vr30, $vr29, $vr29
	vslli.d	$vr30, $vr30, 48
	vsrai.d	$vr30, $vr30, 48
	vmul.d	$vr30, $vr11, $vr30
	vmadd.d	$vr30, $vr3, $vr31
	vilvl.w	$vr31, $vr20, $vr20
	vslli.d	$vr31, $vr31, 48
	vsrai.d	$vr31, $vr31, 48
	vadd.d	$vr27, $vr27, $vr30
	vilvl.w	$vr30, $vr21, $vr21
	vslli.d	$vr30, $vr30, 48
	vsrai.d	$vr30, $vr30, 48
	vilvh.h	$vr23, $vr23, $vr23
	vmadd.d	$vr28, $vr5, $vr30
	vilvl.w	$vr30, $vr23, $vr23
	vslli.d	$vr30, $vr30, 48
	vsrai.d	$vr30, $vr30, 48
	vmul.d	$vr30, $vr9, $vr30
	vmadd.d	$vr30, $vr1, $vr31
	vadd.d	$vr28, $vr28, $vr30
	vadd.d	$vr27, $vr27, $vr28
	vilvh.w	$vr24, $vr24, $vr24
	vslli.d	$vr24, $vr24, 48
	vsrai.d	$vr24, $vr24, 48
	vmadd.d	$vr26, $vr6, $vr24
	vilvh.w	$vr22, $vr22, $vr22
	vslli.d	$vr22, $vr22, 48
	vsrai.d	$vr22, $vr22, 48
	vilvh.w	$vr24, $vr29, $vr29
	vslli.d	$vr24, $vr24, 48
	vsrai.d	$vr24, $vr24, 48
	vmul.d	$vr24, $vr10, $vr24
	vmadd.d	$vr24, $vr2, $vr22
	vadd.d	$vr22, $vr26, $vr24
	vilvh.w	$vr21, $vr21, $vr21
	vslli.d	$vr21, $vr21, 48
	vsrai.d	$vr21, $vr21, 48
	vmadd.d	$vr25, $vr4, $vr21
	vilvh.w	$vr20, $vr20, $vr20
	vslli.d	$vr20, $vr20, 48
	vsrai.d	$vr20, $vr20, 48
	vilvh.w	$vr21, $vr23, $vr23
	vslli.d	$vr21, $vr21, 48
	vsrai.d	$vr21, $vr21, 48
	vmul.d	$vr21, $vr8, $vr21
	vmadd.d	$vr21, $vr0, $vr20
	vadd.d	$vr20, $vr25, $vr21
	vadd.d	$vr20, $vr22, $vr20
	vadd.d	$vr20, $vr27, $vr20
	vhaddw.q.d	$vr20, $vr20, $vr20
	vpickve2gr.d	$a6, $vr20, 0
	slt	$a7, $a1, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a1, $a1, $a7
	or	$a1, $a6, $a1
	masknez	$a2, $a2, $a7
	maskeqz	$a6, $a4, $a7
	or	$a2, $a6, $a2
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, -2
	bne	$a4, $a5, .LBB0_4
# %bb.5:                                # %vector.ph40
	st.h	$a2, $s3, 0
	slli.d	$a1, $a1, 1
	ori	$a3, $zero, 6
	sub.d	$a0, $a3, $a0
	srl.d	$s8, $a1, $a0
	ori	$s7, $zero, 16
	beqz	$s8, .LBB0_16
# %bb.6:
	ext.w.h	$a0, $a2
	slli.d	$a1, $a0, 1
	sub.d	$a1, $s2, $a1
	ld.w	$a2, $a1, 0
	ld.w	$a1, $a1, 4
	vinsgr2vr.w	$vr0, $a2, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vsrai.h	$vr0, $vr0, 3
	vsrai.h	$vr1, $vr1, 3
	vilvl.h	$vr0, $vr0, $vr0
	vilvl.w	$vr0, $vr0, $vr0
	vslli.d	$vr0, $vr0, 48
	vsrai.d	$vr2, $vr0, 48
	vilvl.h	$vr0, $vr1, $vr1
	vilvl.w	$vr0, $vr0, $vr0
	ori	$a1, $zero, 4
	sub.d	$a1, $a1, $a0
	alsl.d	$a2, $a1, $s2, 1
	slli.d	$a1, $a1, 1
	ldx.w	$a1, $s2, $a1
	ld.w	$a2, $a2, 4
	vslli.d	$vr0, $vr0, 48
	vsrai.d	$vr3, $vr0, 48
	vinsgr2vr.w	$vr0, $a1, 0
	vinsgr2vr.w	$vr1, $a2, 0
	vsrai.h	$vr0, $vr0, 3
	vsrai.h	$vr1, $vr1, 3
	vilvl.h	$vr0, $vr0, $vr0
	vilvl.w	$vr0, $vr0, $vr0
	vslli.d	$vr0, $vr0, 48
	vsrai.d	$vr0, $vr0, 48
	vilvl.h	$vr1, $vr1, $vr1
	vilvl.w	$vr1, $vr1, $vr1
	vslli.d	$vr1, $vr1, 48
	vsrai.d	$vr1, $vr1, 48
	vmul.d	$vr0, $vr0, $vr0
	vmul.d	$vr1, $vr1, $vr1
	ori	$a1, $zero, 8
	sub.d	$a1, $a1, $a0
	alsl.d	$a2, $a1, $s2, 1
	slli.d	$a1, $a1, 1
	ldx.w	$a1, $s2, $a1
	ld.w	$a2, $a2, 4
	vmadd.d	$vr0, $vr2, $vr2
	vmadd.d	$vr1, $vr3, $vr3
	vinsgr2vr.w	$vr2, $a1, 0
	vinsgr2vr.w	$vr3, $a2, 0
	vsrai.h	$vr2, $vr2, 3
	vsrai.h	$vr3, $vr3, 3
	vilvl.h	$vr2, $vr2, $vr2
	vilvl.w	$vr2, $vr2, $vr2
	vslli.d	$vr2, $vr2, 48
	vsrai.d	$vr2, $vr2, 48
	vilvl.h	$vr3, $vr3, $vr3
	vilvl.w	$vr3, $vr3, $vr3
	vslli.d	$vr3, $vr3, 48
	vsrai.d	$vr3, $vr3, 48
	ori	$a1, $zero, 12
	sub.d	$a1, $a1, $a0
	alsl.d	$a2, $a1, $s2, 1
	slli.d	$a1, $a1, 1
	ldx.w	$a1, $s2, $a1
	ld.w	$a2, $a2, 4
	vmadd.d	$vr0, $vr2, $vr2
	vmadd.d	$vr1, $vr3, $vr3
	vinsgr2vr.w	$vr2, $a1, 0
	vinsgr2vr.w	$vr3, $a2, 0
	vsrai.h	$vr2, $vr2, 3
	vsrai.h	$vr3, $vr3, 3
	vilvl.h	$vr2, $vr2, $vr2
	vilvl.w	$vr2, $vr2, $vr2
	vslli.d	$vr2, $vr2, 48
	vsrai.d	$vr2, $vr2, 48
	vilvl.h	$vr3, $vr3, $vr3
	vilvl.w	$vr3, $vr3, $vr3
	vslli.d	$vr3, $vr3, 48
	vsrai.d	$vr3, $vr3, 48
	sub.d	$a1, $s7, $a0
	alsl.d	$a2, $a1, $s2, 1
	slli.d	$a1, $a1, 1
	ldx.w	$a1, $s2, $a1
	ld.w	$a2, $a2, 4
	vmadd.d	$vr0, $vr2, $vr2
	vmadd.d	$vr1, $vr3, $vr3
	vinsgr2vr.w	$vr2, $a1, 0
	vinsgr2vr.w	$vr3, $a2, 0
	vsrai.h	$vr2, $vr2, 3
	vsrai.h	$vr3, $vr3, 3
	vilvl.h	$vr2, $vr2, $vr2
	vilvl.w	$vr2, $vr2, $vr2
	vslli.d	$vr2, $vr2, 48
	vsrai.d	$vr2, $vr2, 48
	vilvl.h	$vr3, $vr3, $vr3
	vilvl.w	$vr3, $vr3, $vr3
	vslli.d	$vr3, $vr3, 48
	vsrai.d	$vr3, $vr3, 48
	ori	$a1, $zero, 20
	sub.d	$a1, $a1, $a0
	alsl.d	$a2, $a1, $s2, 1
	slli.d	$a1, $a1, 1
	ldx.w	$a1, $s2, $a1
	ld.w	$a2, $a2, 4
	vmadd.d	$vr0, $vr2, $vr2
	vmadd.d	$vr1, $vr3, $vr3
	vinsgr2vr.w	$vr2, $a1, 0
	vinsgr2vr.w	$vr3, $a2, 0
	vsrai.h	$vr2, $vr2, 3
	vsrai.h	$vr3, $vr3, 3
	vilvl.h	$vr2, $vr2, $vr2
	vilvl.w	$vr2, $vr2, $vr2
	vslli.d	$vr2, $vr2, 48
	vsrai.d	$vr2, $vr2, 48
	vilvl.h	$vr3, $vr3, $vr3
	vilvl.w	$vr3, $vr3, $vr3
	vslli.d	$vr3, $vr3, 48
	vsrai.d	$vr3, $vr3, 48
	ori	$a1, $zero, 24
	sub.d	$a1, $a1, $a0
	alsl.d	$a2, $a1, $s2, 1
	slli.d	$a1, $a1, 1
	ldx.w	$a1, $s2, $a1
	ld.w	$a2, $a2, 4
	vmadd.d	$vr0, $vr2, $vr2
	vmadd.d	$vr1, $vr3, $vr3
	vinsgr2vr.w	$vr2, $a1, 0
	vinsgr2vr.w	$vr3, $a2, 0
	vsrai.h	$vr2, $vr2, 3
	vsrai.h	$vr3, $vr3, 3
	vilvl.h	$vr2, $vr2, $vr2
	vilvl.w	$vr2, $vr2, $vr2
	vslli.d	$vr2, $vr2, 48
	vsrai.d	$vr2, $vr2, 48
	vilvl.h	$vr3, $vr3, $vr3
	vilvl.w	$vr3, $vr3, $vr3
	vslli.d	$vr3, $vr3, 48
	vsrai.d	$vr3, $vr3, 48
	ori	$a1, $zero, 28
	sub.d	$a1, $a1, $a0
	alsl.d	$a2, $a1, $s2, 1
	slli.d	$a1, $a1, 1
	ldx.w	$a1, $s2, $a1
	ld.w	$a2, $a2, 4
	vmadd.d	$vr0, $vr2, $vr2
	vmadd.d	$vr1, $vr3, $vr3
	vinsgr2vr.w	$vr2, $a1, 0
	vinsgr2vr.w	$vr3, $a2, 0
	vsrai.h	$vr2, $vr2, 3
	vsrai.h	$vr3, $vr3, 3
	vilvl.h	$vr2, $vr2, $vr2
	vilvl.w	$vr2, $vr2, $vr2
	vslli.d	$vr2, $vr2, 48
	vsrai.d	$vr2, $vr2, 48
	vilvl.h	$vr3, $vr3, $vr3
	vilvl.w	$vr3, $vr3, $vr3
	vslli.d	$vr3, $vr3, 48
	vsrai.d	$vr3, $vr3, 48
	ori	$a1, $zero, 32
	sub.d	$a1, $a1, $a0
	alsl.d	$a2, $a1, $s2, 1
	slli.d	$a1, $a1, 1
	ldx.w	$a1, $s2, $a1
	ld.w	$a2, $a2, 4
	vmadd.d	$vr0, $vr2, $vr2
	vmadd.d	$vr1, $vr3, $vr3
	vinsgr2vr.w	$vr2, $a1, 0
	vinsgr2vr.w	$vr3, $a2, 0
	vsrai.h	$vr2, $vr2, 3
	vsrai.h	$vr3, $vr3, 3
	vilvl.h	$vr2, $vr2, $vr2
	vilvl.w	$vr2, $vr2, $vr2
	vslli.d	$vr2, $vr2, 48
	vsrai.d	$vr2, $vr2, 48
	vilvl.h	$vr3, $vr3, $vr3
	vilvl.w	$vr3, $vr3, $vr3
	vslli.d	$vr3, $vr3, 48
	vsrai.d	$vr3, $vr3, 48
	ori	$a1, $zero, 36
	sub.d	$a0, $a1, $a0
	alsl.d	$a1, $a0, $s2, 1
	slli.d	$a0, $a0, 1
	ldx.w	$a0, $s2, $a0
	ld.w	$a1, $a1, 4
	vmadd.d	$vr0, $vr2, $vr2
	vmadd.d	$vr1, $vr3, $vr3
	vinsgr2vr.w	$vr2, $a0, 0
	vinsgr2vr.w	$vr3, $a1, 0
	vsrai.h	$vr2, $vr2, 3
	vsrai.h	$vr3, $vr3, 3
	vilvl.h	$vr2, $vr2, $vr2
	vilvl.w	$vr2, $vr2, $vr2
	vslli.d	$vr2, $vr2, 48
	vsrai.d	$vr2, $vr2, 48
	vilvl.h	$vr3, $vr3, $vr3
	vilvl.w	$vr3, $vr3, $vr3
	vslli.d	$vr3, $vr3, 48
	vsrai.d	$vr3, $vr3, 48
	vmadd.d	$vr0, $vr2, $vr2
	vmadd.d	$vr1, $vr3, $vr3
	vadd.d	$vr0, $vr1, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a0, $vr0, 0
	slli.d	$s5, $a0, 1
	bge	$s8, $s5, .LBB0_10
# %bb.7:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(gsm_norm)
	jirl	$ra, $ra, 0
	sll.d	$a1, $s8, $a0
	addi.w	$a1, $a1, 0
	sll.d	$a0, $s5, $a0
	srli.d	$a0, $a0, 16
	srai.d	$s8, $a1, 16
	pcalau12i	$a1, %got_pc_hi20(gsm_DLB)
	ld.d	$s4, $a1, %got_pc_lo12(gsm_DLB)
	ld.h	$a1, $s4, 0
	ext.w.h	$s5, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(gsm_mult)
	jirl	$ra, $ra, 0
	bge	$a0, $s8, .LBB0_16
# %bb.8:
	ld.h	$a1, $s4, 2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(gsm_mult)
	jirl	$ra, $ra, 0
	bge	$a0, $s8, .LBB0_29
# %bb.9:
	ld.h	$a1, $s4, 4
	move	$a0, $s5
	pcaddu18i	$ra, %call36(gsm_mult)
	jirl	$ra, $ra, 0
	bge	$a0, $s8, .LBB0_37
.LBB0_10:                               # %.preheader64.i
	ori	$a0, $zero, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.h	$a0, $a1, 0
	ld.h	$a0, $s3, 0
	sub.d	$a2, $s0, $s1
	ori	$a1, $zero, 16
	bltu	$a2, $a1, .LBB0_26
# %bb.11:                               # %.preheader64.i
	alsl.d	$a2, $a0, $s1, 1
	sub.d	$a2, $a2, $s2
	bltu	$a2, $a1, .LBB0_26
# %bb.12:                               # %.preheader64.i
	sub.d	$a2, $fp, $s1
	ori	$a1, $zero, 16
	bltu	$a2, $a1, .LBB0_26
# %bb.13:                               # %.preheader64.i
	alsl.d	$a2, $a0, $s0, 1
	sub.d	$a2, $a2, $s2
	bltu	$a2, $a1, .LBB0_26
# %bb.14:                               # %.preheader64.i
	sub.d	$a1, $s0, $fp
	ori	$a2, $zero, 15
	bgeu	$a2, $a1, .LBB0_26
# %bb.15:                               # %vector.body94
	slli.d	$a1, $a0, 1
	sub.d	$a1, $s2, $a1
	vld	$vr0, $a1, 0
	vilvl.h	$vr1, $vr0, $vr0
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr2, $vr1, 16
	vilvh.h	$vr0, $vr0, $vr0
	vslli.w	$vr0, $vr0, 16
	vsrai.w	$vr3, $vr0, 16
	lu12i.w	$a1, 4
	vreplgr2vr.w	$vr0, $a1
	vreplgr2vr.w	$vr1, $s6
	b	.LBB0_23
.LBB0_16:                               # %.preheader.i
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.h	$zero, $a0, 0
	ld.h	$a0, $s3, 0
	sub.d	$a1, $s0, $s1
	bltu	$a1, $s7, .LBB0_24
# %bb.17:                               # %.preheader.i
	alsl.d	$a1, $a0, $s1, 1
	sub.d	$a2, $a1, $s2
	ori	$a1, $zero, 16
	bltu	$a2, $a1, .LBB0_24
# %bb.18:                               # %.preheader.i
	sub.d	$a2, $fp, $s1
	bltu	$a2, $a1, .LBB0_24
# %bb.19:                               # %.preheader.i
	alsl.d	$a1, $a0, $s0, 1
	sub.d	$a1, $a1, $s2
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB0_24
# %bb.20:                               # %.preheader.i
	sub.d	$a1, $s0, $fp
	ori	$a2, $zero, 15
	bgeu	$a2, $a1, .LBB0_24
# %bb.21:                               # %vector.body112
	slli.d	$a1, $a0, 1
	sub.d	$a1, $s2, $a1
	vld	$vr0, $a1, 0
	vilvl.h	$vr1, $vr0, $vr0
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr2, $vr1, 16
	vilvh.h	$vr0, $vr0, $vr0
	vslli.w	$vr0, $vr0, 16
	vsrai.w	$vr3, $vr0, 16
	lu12i.w	$a1, 4
	vreplgr2vr.w	$vr0, $a1
	ori	$a1, $zero, 3277
.LBB0_22:                               # %Long_term_analysis_filtering.exit
	vreplgr2vr.w	$vr1, $a1
.LBB0_23:                               # %Long_term_analysis_filtering.exit
	vori.b	$vr4, $vr0, 0
	vmadd.w	$vr4, $vr3, $vr1
	vori.b	$vr3, $vr0, 0
	vmadd.w	$vr3, $vr2, $vr1
	vsrli.w	$vr2, $vr3, 15
	vsrli.w	$vr3, $vr4, 15
	vpickev.h	$vr2, $vr3, $vr2
	vst	$vr2, $s1, 0
	vld	$vr3, $fp, 0
	vssub.h	$vr2, $vr3, $vr2
	vst	$vr2, $s0, 0
	ori	$a1, $zero, 8
	sub.d	$a1, $a1, $a0
	slli.d	$a1, $a1, 1
	vldx	$vr2, $s2, $a1
	vilvl.h	$vr3, $vr2, $vr2
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr2, $vr2, $vr2
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vori.b	$vr4, $vr0, 0
	vmadd.w	$vr4, $vr2, $vr1
	vori.b	$vr2, $vr0, 0
	vmadd.w	$vr2, $vr3, $vr1
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr3, $vr4, 15
	vpickev.h	$vr2, $vr3, $vr2
	vst	$vr2, $s1, 16
	vld	$vr3, $fp, 16
	vssub.h	$vr2, $vr3, $vr2
	vst	$vr2, $s0, 16
	ori	$a1, $zero, 16
	sub.d	$a1, $a1, $a0
	slli.d	$a1, $a1, 1
	vldx	$vr2, $s2, $a1
	vilvl.h	$vr3, $vr2, $vr2
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr2, $vr2, $vr2
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vori.b	$vr4, $vr0, 0
	vmadd.w	$vr4, $vr2, $vr1
	vori.b	$vr2, $vr0, 0
	vmadd.w	$vr2, $vr3, $vr1
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr3, $vr4, 15
	vpickev.h	$vr2, $vr3, $vr2
	vst	$vr2, $s1, 32
	vld	$vr3, $fp, 32
	vssub.h	$vr2, $vr3, $vr2
	vst	$vr2, $s0, 32
	ori	$a1, $zero, 24
	sub.d	$a1, $a1, $a0
	slli.d	$a1, $a1, 1
	vldx	$vr2, $s2, $a1
	vilvl.h	$vr3, $vr2, $vr2
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr2, $vr2, $vr2
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vori.b	$vr4, $vr0, 0
	vmadd.w	$vr4, $vr2, $vr1
	vori.b	$vr2, $vr0, 0
	vmadd.w	$vr2, $vr3, $vr1
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr3, $vr4, 15
	vpickev.h	$vr2, $vr3, $vr2
	vst	$vr2, $s1, 48
	vld	$vr3, $fp, 48
	vssub.h	$vr2, $vr3, $vr2
	vst	$vr2, $s0, 48
	ori	$a1, $zero, 32
	sub.d	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	vldx	$vr2, $s2, $a0
	vilvl.h	$vr3, $vr2, $vr2
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr2, $vr2, $vr2
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vori.b	$vr4, $vr0, 0
	vmadd.w	$vr4, $vr2, $vr1
	vmadd.w	$vr0, $vr3, $vr1
	vsrli.w	$vr0, $vr0, 15
	vsrli.w	$vr1, $vr4, 15
	vpickev.h	$vr0, $vr1, $vr0
	vst	$vr0, $s1, 64
	vld	$vr1, $fp, 64
	vssub.h	$vr0, $vr1, $vr0
	vst	$vr0, $s0, 64
	b	.LBB0_28
.LBB0_24:                               # %scalar.ph110.preheader
	move	$a1, $zero
	slli.d	$a0, $a0, 1
	sub.d	$a0, $s2, $a0
	ori	$a2, $zero, 3277
	lu12i.w	$a3, 4
	lu12i.w	$a4, -8
	ori	$a5, $zero, 80
	.p2align	4, , 16
.LBB0_25:                               # %scalar.ph110
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$a6, $a0, $a1
	mul.d	$a6, $a6, $a2
	add.d	$a6, $a6, $a3
	bstrpick.d	$a6, $a6, 31, 15
	stx.h	$a6, $s1, $a1
	ldx.h	$a7, $fp, $a1
	ext.w.h	$a6, $a6
	sub.d	$a6, $a7, $a6
	slt	$a7, $a6, $s6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $s6, $a7
	or	$a6, $a6, $a7
	slt	$a7, $a4, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a4, $a7
	or	$a6, $a6, $a7
	stx.h	$a6, $s0, $a1
	addi.d	$a1, $a1, 2
	bne	$a1, $a5, .LBB0_25
	b	.LBB0_28
.LBB0_26:                               # %scalar.ph92.preheader
	move	$a1, $zero
	slli.d	$a0, $a0, 1
	sub.d	$a0, $s2, $a0
	lu12i.w	$a2, 4
	lu12i.w	$a3, -8
	ori	$a4, $zero, 80
	.p2align	4, , 16
.LBB0_27:                               # %scalar.ph92
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$a5, $a0, $a1
	slli.d	$a6, $a5, 15
	sub.d	$a5, $a6, $a5
	add.d	$a5, $a5, $a2
	bstrpick.d	$a5, $a5, 31, 15
	stx.h	$a5, $s1, $a1
	ldx.h	$a6, $fp, $a1
	ext.w.h	$a5, $a5
	sub.d	$a5, $a6, $a5
	slt	$a6, $a5, $s6
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s6, $a6
	or	$a5, $a5, $a6
	slt	$a6, $a3, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a3, $a6
	or	$a5, $a5, $a6
	stx.h	$a5, $s0, $a1
	addi.d	$a1, $a1, 2
	bne	$a1, $a4, .LBB0_27
.LBB0_28:                               # %Long_term_analysis_filtering.exit
	fld.d	$fs7, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
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
.LBB0_29:                               # %.preheader60.i
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.h	$a0, $a1, 0
	ld.h	$a0, $s3, 0
	sub.d	$a2, $s0, $s1
	ori	$a1, $zero, 16
	bltu	$a2, $a1, .LBB0_35
# %bb.30:                               # %.preheader60.i
	alsl.d	$a2, $a0, $s1, 1
	sub.d	$a2, $a2, $s2
	bltu	$a2, $a1, .LBB0_35
# %bb.31:                               # %.preheader60.i
	sub.d	$a2, $fp, $s1
	ori	$a1, $zero, 16
	bltu	$a2, $a1, .LBB0_35
# %bb.32:                               # %.preheader60.i
	alsl.d	$a2, $a0, $s0, 1
	sub.d	$a2, $a2, $s2
	bltu	$a2, $a1, .LBB0_35
# %bb.33:                               # %.preheader60.i
	sub.d	$a1, $s0, $fp
	ori	$a2, $zero, 15
	bgeu	$a2, $a1, .LBB0_35
# %bb.34:                               # %vector.body58
	slli.d	$a1, $a0, 1
	sub.d	$a1, $s2, $a1
	vld	$vr0, $a1, 0
	vilvl.h	$vr1, $vr0, $vr0
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr2, $vr1, 16
	vilvh.h	$vr0, $vr0, $vr0
	vslli.w	$vr0, $vr0, 16
	vsrai.w	$vr3, $vr0, 16
	lu12i.w	$a1, 4
	vreplgr2vr.w	$vr0, $a1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3277
	b	.LBB0_22
.LBB0_35:                               # %scalar.ph56.preheader
	move	$a1, $zero
	slli.d	$a0, $a0, 1
	sub.d	$a0, $s2, $a0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 3277
	lu12i.w	$a3, 4
	lu12i.w	$a4, -8
	ori	$a5, $zero, 80
	.p2align	4, , 16
.LBB0_36:                               # %scalar.ph56
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$a6, $a0, $a1
	mul.d	$a6, $a6, $a2
	add.d	$a6, $a6, $a3
	bstrpick.d	$a6, $a6, 31, 15
	stx.h	$a6, $s1, $a1
	ldx.h	$a7, $fp, $a1
	ext.w.h	$a6, $a6
	sub.d	$a6, $a7, $a6
	slt	$a7, $a6, $s6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $s6, $a7
	or	$a6, $a6, $a7
	slt	$a7, $a4, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a4, $a7
	or	$a6, $a6, $a7
	stx.h	$a6, $s0, $a1
	addi.d	$a1, $a1, 2
	bne	$a1, $a5, .LBB0_36
	b	.LBB0_28
.LBB0_37:                               # %.preheader62.i
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.h	$a0, $a1, 0
	ld.h	$a0, $s3, 0
	sub.d	$a2, $s0, $s1
	ori	$a1, $zero, 16
	bltu	$a2, $a1, .LBB0_43
# %bb.38:                               # %.preheader62.i
	alsl.d	$a2, $a0, $s1, 1
	sub.d	$a2, $a2, $s2
	bltu	$a2, $a1, .LBB0_43
# %bb.39:                               # %.preheader62.i
	sub.d	$a2, $fp, $s1
	ori	$a1, $zero, 16
	bltu	$a2, $a1, .LBB0_43
# %bb.40:                               # %.preheader62.i
	alsl.d	$a2, $a0, $s0, 1
	sub.d	$a2, $a2, $s2
	bltu	$a2, $a1, .LBB0_43
# %bb.41:                               # %.preheader62.i
	sub.d	$a1, $s0, $fp
	ori	$a2, $zero, 15
	bgeu	$a2, $a1, .LBB0_43
# %bb.42:                               # %vector.body76
	slli.d	$a1, $a0, 1
	sub.d	$a1, $s2, $a1
	vld	$vr0, $a1, 0
	vilvl.h	$vr1, $vr0, $vr0
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr2, $vr1, 16
	vilvh.h	$vr0, $vr0, $vr0
	vslli.w	$vr0, $vr0, 16
	vsrai.w	$vr3, $vr0, 16
	lu12i.w	$a1, 4
	vreplgr2vr.w	$vr0, $a1
	lu12i.w	$a1, 5
	ori	$a1, $a1, 819
	b	.LBB0_22
.LBB0_43:                               # %scalar.ph74.preheader
	move	$a1, $zero
	slli.d	$a0, $a0, 1
	sub.d	$a0, $s2, $a0
	lu12i.w	$a2, 5
	ori	$a2, $a2, 819
	lu12i.w	$a3, 4
	lu12i.w	$a4, -8
	ori	$a5, $zero, 80
	.p2align	4, , 16
.LBB0_44:                               # %scalar.ph74
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$a6, $a0, $a1
	mul.d	$a6, $a6, $a2
	add.d	$a6, $a6, $a3
	bstrpick.d	$a6, $a6, 31, 15
	stx.h	$a6, $s1, $a1
	ldx.h	$a7, $fp, $a1
	ext.w.h	$a6, $a6
	sub.d	$a6, $a7, $a6
	slt	$a7, $a6, $s6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $s6, $a7
	or	$a6, $a6, $a7
	slt	$a7, $a4, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a4, $a7
	or	$a6, $a6, $a7
	stx.h	$a6, $s0, $a1
	addi.d	$a1, $a1, 2
	bne	$a1, $a5, .LBB0_44
	b	.LBB0_28
.Lfunc_end0:
	.size	Gsm_Long_Term_Predictor, .Lfunc_end0-Gsm_Long_Term_Predictor
                                        # -- End function
	.globl	Gsm_Long_Term_Synthesis_Filtering # -- Begin function Gsm_Long_Term_Synthesis_Filtering
	.p2align	5
	.type	Gsm_Long_Term_Synthesis_Filtering,@function
Gsm_Long_Term_Synthesis_Filtering:      # @Gsm_Long_Term_Synthesis_Filtering
# %bb.0:
	addi.d	$a5, $a1, -121
	bstrpick.d	$a5, $a5, 15, 0
	lu12i.w	$a6, 15
	ori	$a6, $a6, 4014
	bltu	$a6, $a5, .LBB1_2
# %bb.1:
	ld.hu	$a1, $a0, 630
.LBB1_2:                                # %vector.memcheck
	st.h	$a1, $a0, 630
	bstrpick.d	$a5, $a1, 15, 0
	slli.d	$a0, $a2, 1
	pcalau12i	$a2, %got_pc_hi20(gsm_QLB)
	ld.d	$a2, $a2, %got_pc_lo12(gsm_QLB)
	ldx.h	$a0, $a2, $a0
	slli.d	$a2, $a0, 33
	ori	$a6, $zero, 8
	ext.w.h	$a0, $a1
	bltu	$a5, $a6, .LBB1_5
# %bb.3:                                # %vector.memcheck
	sub.d	$a1, $a4, $a3
	ori	$a5, $zero, 15
	bgeu	$a5, $a1, .LBB1_5
# %bb.4:                                # %vector.body
	slli.d	$a1, $a0, 1
	sub.d	$a1, $a4, $a1
	vld	$vr1, $a1, 0
	vreplgr2vr.d	$vr0, $a2
	vilvh.h	$vr2, $vr1, $vr1
	vilvl.w	$vr3, $vr2, $vr2
	vslli.d	$vr3, $vr3, 48
	vsrai.d	$vr3, $vr3, 48
	vilvh.w	$vr2, $vr2, $vr2
	vslli.d	$vr2, $vr2, 48
	vsrai.d	$vr2, $vr2, 48
	vilvl.h	$vr1, $vr1, $vr1
	vilvl.w	$vr4, $vr1, $vr1
	vslli.d	$vr4, $vr4, 48
	vsrai.d	$vr4, $vr4, 48
	vilvh.w	$vr1, $vr1, $vr1
	vslli.d	$vr1, $vr1, 48
	vsrai.d	$vr5, $vr1, 48
	ori	$a1, $zero, 0
	lu32i.d	$a1, 32768
	vreplgr2vr.d	$vr1, $a1
	vld	$vr6, $a3, 0
	vori.b	$vr7, $vr1, 0
	vmadd.d	$vr7, $vr0, $vr5
	vori.b	$vr5, $vr1, 0
	vmadd.d	$vr5, $vr0, $vr4
	vori.b	$vr4, $vr1, 0
	vmadd.d	$vr4, $vr0, $vr2
	vori.b	$vr2, $vr1, 0
	vmadd.d	$vr2, $vr0, $vr3
	vsrli.d	$vr2, $vr2, 48
	vsrli.d	$vr3, $vr4, 48
	vsrli.d	$vr4, $vr5, 48
	vsrli.d	$vr5, $vr7, 48
	vpickev.w	$vr4, $vr5, $vr4
	vpickev.w	$vr2, $vr3, $vr2
	vpickev.h	$vr2, $vr2, $vr4
	vsadd.h	$vr2, $vr2, $vr6
	vst	$vr2, $a4, 0
	ori	$a1, $zero, 8
	sub.d	$a1, $a1, $a0
	slli.d	$a1, $a1, 1
	vldx	$vr2, $a4, $a1
	vilvh.h	$vr3, $vr2, $vr2
	vilvl.w	$vr4, $vr3, $vr3
	vslli.d	$vr4, $vr4, 48
	vsrai.d	$vr4, $vr4, 48
	vilvh.w	$vr3, $vr3, $vr3
	vslli.d	$vr3, $vr3, 48
	vsrai.d	$vr3, $vr3, 48
	vilvl.h	$vr2, $vr2, $vr2
	vilvl.w	$vr5, $vr2, $vr2
	vslli.d	$vr5, $vr5, 48
	vsrai.d	$vr5, $vr5, 48
	vilvh.w	$vr2, $vr2, $vr2
	vslli.d	$vr2, $vr2, 48
	vsrai.d	$vr2, $vr2, 48
	vld	$vr6, $a3, 16
	vori.b	$vr7, $vr1, 0
	vmadd.d	$vr7, $vr0, $vr2
	vori.b	$vr2, $vr1, 0
	vmadd.d	$vr2, $vr0, $vr5
	vori.b	$vr5, $vr1, 0
	vmadd.d	$vr5, $vr0, $vr3
	vori.b	$vr3, $vr1, 0
	vmadd.d	$vr3, $vr0, $vr4
	vsrli.d	$vr3, $vr3, 48
	vsrli.d	$vr4, $vr5, 48
	vsrli.d	$vr2, $vr2, 48
	vsrli.d	$vr5, $vr7, 48
	vpickev.w	$vr2, $vr5, $vr2
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.h	$vr2, $vr3, $vr2
	vsadd.h	$vr2, $vr2, $vr6
	vst	$vr2, $a4, 16
	ori	$a1, $zero, 16
	sub.d	$a1, $a1, $a0
	slli.d	$a1, $a1, 1
	vldx	$vr2, $a4, $a1
	vilvh.h	$vr3, $vr2, $vr2
	vilvl.w	$vr4, $vr3, $vr3
	vslli.d	$vr4, $vr4, 48
	vsrai.d	$vr4, $vr4, 48
	vilvh.w	$vr3, $vr3, $vr3
	vslli.d	$vr3, $vr3, 48
	vsrai.d	$vr3, $vr3, 48
	vilvl.h	$vr2, $vr2, $vr2
	vilvl.w	$vr5, $vr2, $vr2
	vslli.d	$vr5, $vr5, 48
	vsrai.d	$vr5, $vr5, 48
	vilvh.w	$vr2, $vr2, $vr2
	vslli.d	$vr2, $vr2, 48
	vsrai.d	$vr2, $vr2, 48
	vld	$vr6, $a3, 32
	vori.b	$vr7, $vr1, 0
	vmadd.d	$vr7, $vr0, $vr2
	vori.b	$vr2, $vr1, 0
	vmadd.d	$vr2, $vr0, $vr5
	vori.b	$vr5, $vr1, 0
	vmadd.d	$vr5, $vr0, $vr3
	vori.b	$vr3, $vr1, 0
	vmadd.d	$vr3, $vr0, $vr4
	vsrli.d	$vr3, $vr3, 48
	vsrli.d	$vr4, $vr5, 48
	vsrli.d	$vr2, $vr2, 48
	vsrli.d	$vr5, $vr7, 48
	vpickev.w	$vr2, $vr5, $vr2
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.h	$vr2, $vr3, $vr2
	vsadd.h	$vr2, $vr2, $vr6
	vst	$vr2, $a4, 32
	ori	$a1, $zero, 24
	sub.d	$a1, $a1, $a0
	slli.d	$a1, $a1, 1
	vldx	$vr2, $a4, $a1
	vilvh.h	$vr3, $vr2, $vr2
	vilvl.w	$vr4, $vr3, $vr3
	vslli.d	$vr4, $vr4, 48
	vsrai.d	$vr4, $vr4, 48
	vilvh.w	$vr3, $vr3, $vr3
	vslli.d	$vr3, $vr3, 48
	vsrai.d	$vr3, $vr3, 48
	vilvl.h	$vr2, $vr2, $vr2
	vilvl.w	$vr5, $vr2, $vr2
	vslli.d	$vr5, $vr5, 48
	vsrai.d	$vr5, $vr5, 48
	vilvh.w	$vr2, $vr2, $vr2
	vslli.d	$vr2, $vr2, 48
	vsrai.d	$vr2, $vr2, 48
	vld	$vr6, $a3, 48
	vori.b	$vr7, $vr1, 0
	vmadd.d	$vr7, $vr0, $vr2
	vori.b	$vr2, $vr1, 0
	vmadd.d	$vr2, $vr0, $vr5
	vori.b	$vr5, $vr1, 0
	vmadd.d	$vr5, $vr0, $vr3
	vori.b	$vr3, $vr1, 0
	vmadd.d	$vr3, $vr0, $vr4
	vsrli.d	$vr3, $vr3, 48
	vsrli.d	$vr4, $vr5, 48
	vsrli.d	$vr2, $vr2, 48
	vsrli.d	$vr5, $vr7, 48
	vpickev.w	$vr2, $vr5, $vr2
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.h	$vr2, $vr3, $vr2
	vsadd.h	$vr2, $vr2, $vr6
	vst	$vr2, $a4, 48
	ori	$a1, $zero, 32
	sub.d	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	vldx	$vr2, $a4, $a0
	vilvh.h	$vr3, $vr2, $vr2
	vilvl.w	$vr4, $vr3, $vr3
	vslli.d	$vr4, $vr4, 48
	vsrai.d	$vr4, $vr4, 48
	vilvh.w	$vr3, $vr3, $vr3
	vslli.d	$vr3, $vr3, 48
	vsrai.d	$vr3, $vr3, 48
	vilvl.h	$vr2, $vr2, $vr2
	vilvl.w	$vr5, $vr2, $vr2
	vslli.d	$vr5, $vr5, 48
	vsrai.d	$vr5, $vr5, 48
	vilvh.w	$vr2, $vr2, $vr2
	vslli.d	$vr2, $vr2, 48
	vsrai.d	$vr2, $vr2, 48
	vld	$vr6, $a3, 64
	vori.b	$vr7, $vr1, 0
	vmadd.d	$vr7, $vr0, $vr2
	vori.b	$vr2, $vr1, 0
	vmadd.d	$vr2, $vr0, $vr5
	vori.b	$vr5, $vr1, 0
	vmadd.d	$vr5, $vr0, $vr3
	vmadd.d	$vr1, $vr0, $vr4
	vsrli.d	$vr0, $vr1, 48
	vsrli.d	$vr1, $vr5, 48
	vsrli.d	$vr2, $vr2, 48
	vsrli.d	$vr3, $vr7, 48
	vpickev.w	$vr2, $vr3, $vr2
	vpickev.w	$vr0, $vr1, $vr0
	vpickev.h	$vr0, $vr0, $vr2
	vsadd.h	$vr0, $vr0, $vr6
	vst	$vr0, $a4, 64
	addi.d	$a0, $a4, -240
	addi.d	$a1, $a4, -160
	ori	$a2, $zero, 240
	pcaddu18i	$t8, %call36(memmove)
	jr	$t8
.LBB1_5:                                # %scalar.ph.preheader
	move	$a1, $zero
	slli.d	$a0, $a0, 1
	sub.d	$a0, $a4, $a0
	ori	$a5, $zero, 0
	lu32i.d	$a5, 32768
	lu12i.w	$a6, 7
	ori	$a6, $a6, 4095
	lu12i.w	$a7, -8
	ori	$t0, $zero, 80
	.p2align	4, , 16
.LBB1_6:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$t1, $a0, $a1
	ldx.h	$t2, $a3, $a1
	mul.d	$t1, $a2, $t1
	add.d	$t1, $t1, $a5
	srai.d	$t1, $t1, 48
	add.d	$t1, $t1, $t2
	slt	$t2, $t1, $a6
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a6, $t2
	or	$t1, $t1, $t2
	slt	$t2, $a7, $t1
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a7, $t2
	or	$t1, $t1, $t2
	stx.h	$t1, $a4, $a1
	addi.d	$a1, $a1, 2
	bne	$a1, $t0, .LBB1_6
# %bb.7:                                # %.preheader.preheader
	addi.d	$a0, $a4, -240
	addi.d	$a1, $a4, -160
	ori	$a2, $zero, 240
	pcaddu18i	$t8, %call36(memmove)
	jr	$t8
.Lfunc_end1:
	.size	Gsm_Long_Term_Synthesis_Filtering, .Lfunc_end1-Gsm_Long_Term_Synthesis_Filtering
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
