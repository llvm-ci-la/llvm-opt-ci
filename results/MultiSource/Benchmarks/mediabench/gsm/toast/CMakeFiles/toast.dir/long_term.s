	.file	"long_term.c"
	.text
	.globl	Gsm_Long_Term_Predictor         # -- Begin function Gsm_Long_Term_Predictor
	.p2align	5
	.type	Gsm_Long_Term_Predictor,@function
Gsm_Long_Term_Predictor:                # @Gsm_Long_Term_Predictor
# %bb.0:                                # %iter.check
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
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 16                   # 8-byte Folded Spill
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
	st.d	$a6, $sp, 8                     # 8-byte Folded Spill
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
	vld	$vr1, $fp, 32
	vld	$vr2, $fp, 16
	vld	$vr3, $fp, 0
	vsllwil.w.h	$vr4, $vr0, 0
	vsllwil.w.h	$vr5, $vr1, 0
	vsllwil.w.h	$vr6, $vr2, 0
	vsllwil.w.h	$vr7, $vr3, 0
	vbsrl.v	$vr0, $vr0, 8
	vsllwil.w.h	$vr0, $vr0, 0
	vbsrl.v	$vr1, $vr1, 8
	vsllwil.w.h	$vr1, $vr1, 0
	vbsrl.v	$vr2, $vr2, 8
	vsllwil.w.h	$vr2, $vr2, 0
	vbsrl.v	$vr3, $vr3, 8
	vsllwil.w.h	$vr3, $vr3, 0
	vreplgr2vr.w	$vr16, $a0
	vsra.w	$vr15, $vr3, $vr16
	vsra.w	$vr14, $vr2, $vr16
	vsra.w	$vr13, $vr1, $vr16
	vsra.w	$vr12, $vr0, $vr16
	vsra.w	$vr11, $vr7, $vr16
	vsra.w	$vr9, $vr6, $vr16
	vsra.w	$vr7, $vr5, $vr16
	vsra.w	$vr5, $vr4, $vr16
	vsllwil.d.w	$vr0, $vr5, 0
	vsllwil.d.w	$vr1, $vr7, 0
	vsllwil.d.w	$vr2, $vr9, 0
	vsllwil.d.w	$vr3, $vr11, 0
	vsllwil.d.w	$vr4, $vr12, 0
	vshuf4i.w	$vr5, $vr5, 14
	vsllwil.d.w	$vr5, $vr5, 0
	vsllwil.d.w	$vr6, $vr13, 0
	vshuf4i.w	$vr7, $vr7, 14
	vsllwil.d.w	$vr7, $vr7, 0
	vsllwil.d.w	$vr8, $vr14, 0
	vshuf4i.w	$vr9, $vr9, 14
	vsllwil.d.w	$vr9, $vr9, 0
	vsllwil.d.w	$vr10, $vr15, 0
	vshuf4i.w	$vr11, $vr11, 14
	vsllwil.d.w	$vr11, $vr11, 0
	vshuf4i.w	$vr12, $vr12, 14
	vsllwil.d.w	$vr12, $vr12, 0
	vshuf4i.w	$vr13, $vr13, 14
	vsllwil.d.w	$vr13, $vr13, 0
	vshuf4i.w	$vr14, $vr14, 14
	vld	$vr17, $fp, 64
	vsllwil.d.w	$vr14, $vr14, 0
	vshuf4i.w	$vr15, $vr15, 14
	vsllwil.d.w	$vr15, $vr15, 0
	vsllwil.w.h	$vr18, $vr17, 0
	vbsrl.v	$vr17, $vr17, 8
	vsllwil.w.h	$vr17, $vr17, 0
	vsra.w	$vr19, $vr17, $vr16
	vsra.w	$vr18, $vr18, $vr16
	vsllwil.d.w	$vr16, $vr18, 0
	vsllwil.d.w	$vr17, $vr19, 0
	vshuf4i.w	$vr18, $vr18, 14
	vsllwil.d.w	$vr18, $vr18, 0
	vshuf4i.w	$vr19, $vr19, 14
	vsllwil.d.w	$vr19, $vr19, 0
	addi.d	$a3, $s2, -16
	ori	$a4, $zero, 40
	ori	$a5, $zero, 121
	ori	$a2, $zero, 40
	.p2align	4, , 16
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	vld	$vr24, $a3, -64
	vld	$vr20, $a3, -48
	vld	$vr22, $a3, -32
	vld	$vr21, $a3, -16
	vbsrl.v	$vr23, $vr24, 12
	vsllwil.w.h	$vr23, $vr23, 0
	vsllwil.d.w	$vr23, $vr23, 0
	vshuf4i.h	$vr25, $vr24, 14
	vsllwil.w.h	$vr25, $vr25, 0
	vsllwil.d.w	$vr25, $vr25, 0
	vbsrl.v	$vr26, $vr24, 8
	vsllwil.w.h	$vr26, $vr26, 0
	vsllwil.d.w	$vr26, $vr26, 0
	vld	$vr27, $a3, 0
	vmul.d	$vr26, $vr10, $vr26
	vmul.d	$vr25, $vr11, $vr25
	vmul.d	$vr23, $vr15, $vr23
	vbsrl.v	$vr28, $vr27, 12
	vsllwil.w.h	$vr28, $vr28, 0
	vsllwil.d.w	$vr28, $vr28, 0
	vmadd.d	$vr23, $vr19, $vr28
	vshuf4i.h	$vr28, $vr27, 14
	vsllwil.w.h	$vr28, $vr28, 0
	vsllwil.d.w	$vr28, $vr28, 0
	vmadd.d	$vr25, $vr18, $vr28
	vbsrl.v	$vr28, $vr27, 8
	vsllwil.w.h	$vr28, $vr28, 0
	vsllwil.d.w	$vr28, $vr28, 0
	vmadd.d	$vr26, $vr17, $vr28
	vsllwil.w.h	$vr28, $vr21, 0
	vsllwil.d.w	$vr28, $vr28, 0
	vsllwil.w.h	$vr24, $vr24, 0
	vsllwil.d.w	$vr24, $vr24, 0
	vmul.d	$vr24, $vr3, $vr24
	vsllwil.w.h	$vr27, $vr27, 0
	vsllwil.d.w	$vr27, $vr27, 0
	vmadd.d	$vr24, $vr16, $vr27
	vsllwil.w.h	$vr27, $vr22, 0
	vsllwil.d.w	$vr27, $vr27, 0
	vmadd.d	$vr24, $vr1, $vr27
	vsllwil.w.h	$vr27, $vr20, 0
	vsllwil.d.w	$vr27, $vr27, 0
	vmul.d	$vr27, $vr2, $vr27
	vmadd.d	$vr27, $vr0, $vr28
	vbsrl.v	$vr28, $vr21, 8
	vsllwil.w.h	$vr28, $vr28, 0
	vsllwil.d.w	$vr28, $vr28, 0
	vadd.d	$vr24, $vr24, $vr27
	vbsrl.v	$vr27, $vr22, 8
	vsllwil.w.h	$vr27, $vr27, 0
	vsllwil.d.w	$vr27, $vr27, 0
	vmadd.d	$vr26, $vr6, $vr27
	vbsrl.v	$vr27, $vr20, 8
	vsllwil.w.h	$vr27, $vr27, 0
	vsllwil.d.w	$vr27, $vr27, 0
	vmul.d	$vr27, $vr8, $vr27
	vmadd.d	$vr27, $vr4, $vr28
	vadd.d	$vr26, $vr26, $vr27
	vshuf4i.h	$vr27, $vr21, 14
	vsllwil.w.h	$vr27, $vr27, 0
	vsllwil.d.w	$vr27, $vr27, 0
	vadd.d	$vr24, $vr24, $vr26
	vshuf4i.h	$vr26, $vr22, 14
	vsllwil.w.h	$vr26, $vr26, 0
	vsllwil.d.w	$vr26, $vr26, 0
	vmadd.d	$vr25, $vr7, $vr26
	vshuf4i.h	$vr26, $vr20, 14
	vsllwil.w.h	$vr26, $vr26, 0
	vsllwil.d.w	$vr26, $vr26, 0
	vmul.d	$vr26, $vr9, $vr26
	vmadd.d	$vr26, $vr5, $vr27
	vadd.d	$vr25, $vr25, $vr26
	vbsrl.v	$vr22, $vr22, 12
	vsllwil.w.h	$vr22, $vr22, 0
	vsllwil.d.w	$vr22, $vr22, 0
	vmadd.d	$vr23, $vr13, $vr22
	vbsrl.v	$vr21, $vr21, 12
	vsllwil.w.h	$vr21, $vr21, 0
	vsllwil.d.w	$vr21, $vr21, 0
	vbsrl.v	$vr20, $vr20, 12
	vsllwil.w.h	$vr20, $vr20, 0
	vsllwil.d.w	$vr20, $vr20, 0
	vmul.d	$vr20, $vr14, $vr20
	vmadd.d	$vr20, $vr12, $vr21
	vadd.d	$vr20, $vr23, $vr20
	vadd.d	$vr20, $vr25, $vr20
	vadd.d	$vr20, $vr24, $vr20
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
	vsllwil.w.h	$vr0, $vr0, 0
	vsllwil.d.w	$vr2, $vr0, 0
	ori	$a1, $zero, 4
	sub.d	$a1, $a1, $a0
	alsl.d	$a2, $a1, $s2, 1
	slli.d	$a1, $a1, 1
	ldx.w	$a1, $s2, $a1
	ld.w	$a2, $a2, 4
	vsllwil.w.h	$vr0, $vr1, 0
	vsllwil.d.w	$vr3, $vr0, 0
	vinsgr2vr.w	$vr0, $a1, 0
	vinsgr2vr.w	$vr1, $a2, 0
	vsrai.h	$vr0, $vr0, 3
	vsrai.h	$vr1, $vr1, 3
	vsllwil.w.h	$vr0, $vr0, 0
	vsllwil.d.w	$vr0, $vr0, 0
	vsllwil.w.h	$vr1, $vr1, 0
	vsllwil.d.w	$vr1, $vr1, 0
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
	vsllwil.w.h	$vr2, $vr2, 0
	vsllwil.d.w	$vr2, $vr2, 0
	vsllwil.w.h	$vr3, $vr3, 0
	vsllwil.d.w	$vr3, $vr3, 0
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
	vsllwil.w.h	$vr2, $vr2, 0
	vsllwil.d.w	$vr2, $vr2, 0
	vsllwil.w.h	$vr3, $vr3, 0
	vsllwil.d.w	$vr3, $vr3, 0
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
	vsllwil.w.h	$vr2, $vr2, 0
	vsllwil.d.w	$vr2, $vr2, 0
	vsllwil.w.h	$vr3, $vr3, 0
	vsllwil.d.w	$vr3, $vr3, 0
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
	vsllwil.w.h	$vr2, $vr2, 0
	vsllwil.d.w	$vr2, $vr2, 0
	vsllwil.w.h	$vr3, $vr3, 0
	vsllwil.d.w	$vr3, $vr3, 0
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
	vsllwil.w.h	$vr2, $vr2, 0
	vsllwil.d.w	$vr2, $vr2, 0
	vsllwil.w.h	$vr3, $vr3, 0
	vsllwil.d.w	$vr3, $vr3, 0
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
	vsllwil.w.h	$vr2, $vr2, 0
	vsllwil.d.w	$vr2, $vr2, 0
	vsllwil.w.h	$vr3, $vr3, 0
	vsllwil.d.w	$vr3, $vr3, 0
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
	vsllwil.w.h	$vr2, $vr2, 0
	vsllwil.d.w	$vr2, $vr2, 0
	vsllwil.w.h	$vr3, $vr3, 0
	vsllwil.d.w	$vr3, $vr3, 0
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
	vsllwil.w.h	$vr2, $vr2, 0
	vsllwil.d.w	$vr2, $vr2, 0
	vsllwil.w.h	$vr3, $vr3, 0
	vsllwil.d.w	$vr3, $vr3, 0
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
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
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
	vsllwil.w.h	$vr2, $vr0, 0
	vbsrl.v	$vr0, $vr0, 8
	vsllwil.w.h	$vr3, $vr0, 0
	lu12i.w	$a1, 4
	vreplgr2vr.w	$vr0, $a1
	vreplgr2vr.w	$vr1, $s6
	b	.LBB0_23
.LBB0_16:                               # %.preheader.i
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
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
	vsllwil.w.h	$vr2, $vr0, 0
	vbsrl.v	$vr0, $vr0, 8
	vsllwil.w.h	$vr3, $vr0, 0
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
	vsllwil.w.h	$vr3, $vr2, 0
	vbsrl.v	$vr2, $vr2, 8
	vsllwil.w.h	$vr2, $vr2, 0
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
	vsllwil.w.h	$vr3, $vr2, 0
	vbsrl.v	$vr2, $vr2, 8
	vsllwil.w.h	$vr2, $vr2, 0
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
	vsllwil.w.h	$vr3, $vr2, 0
	vbsrl.v	$vr2, $vr2, 8
	vsllwil.w.h	$vr2, $vr2, 0
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
	vsllwil.w.h	$vr3, $vr2, 0
	vbsrl.v	$vr2, $vr2, 8
	vsllwil.w.h	$vr2, $vr2, 0
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
	fld.d	$fs4, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
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
.LBB0_29:                               # %.preheader60.i
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
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
	vsllwil.w.h	$vr2, $vr0, 0
	vbsrl.v	$vr0, $vr0, 8
	vsllwil.w.h	$vr3, $vr0, 0
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
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
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
	vsllwil.w.h	$vr2, $vr0, 0
	vbsrl.v	$vr0, $vr0, 8
	vsllwil.w.h	$vr3, $vr0, 0
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
	vbsrl.v	$vr2, $vr1, 8
	vsllwil.w.h	$vr2, $vr2, 0
	vsllwil.d.w	$vr2, $vr2, 0
	vbsrl.v	$vr3, $vr1, 12
	vsllwil.w.h	$vr3, $vr3, 0
	vsllwil.d.w	$vr3, $vr3, 0
	vsllwil.w.h	$vr4, $vr1, 0
	vsllwil.d.w	$vr4, $vr4, 0
	vshuf4i.h	$vr1, $vr1, 14
	vsllwil.w.h	$vr1, $vr1, 0
	vsllwil.d.w	$vr5, $vr1, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 32768
	vreplgr2vr.d	$vr1, $a1
	vld	$vr6, $a3, 0
	vori.b	$vr7, $vr1, 0
	vmadd.d	$vr7, $vr0, $vr5
	vori.b	$vr5, $vr1, 0
	vmadd.d	$vr5, $vr0, $vr4
	vori.b	$vr4, $vr1, 0
	vmadd.d	$vr4, $vr0, $vr3
	vori.b	$vr3, $vr1, 0
	vmadd.d	$vr3, $vr0, $vr2
	vsrli.d	$vr2, $vr3, 48
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
	vbsrl.v	$vr3, $vr2, 8
	vsllwil.w.h	$vr3, $vr3, 0
	vsllwil.d.w	$vr3, $vr3, 0
	vbsrl.v	$vr4, $vr2, 12
	vsllwil.w.h	$vr4, $vr4, 0
	vsllwil.d.w	$vr4, $vr4, 0
	vsllwil.w.h	$vr5, $vr2, 0
	vsllwil.d.w	$vr5, $vr5, 0
	vshuf4i.h	$vr2, $vr2, 14
	vsllwil.w.h	$vr2, $vr2, 0
	vsllwil.d.w	$vr2, $vr2, 0
	vld	$vr6, $a3, 16
	vori.b	$vr7, $vr1, 0
	vmadd.d	$vr7, $vr0, $vr2
	vori.b	$vr2, $vr1, 0
	vmadd.d	$vr2, $vr0, $vr5
	vori.b	$vr5, $vr1, 0
	vmadd.d	$vr5, $vr0, $vr4
	vori.b	$vr4, $vr1, 0
	vmadd.d	$vr4, $vr0, $vr3
	vsrli.d	$vr3, $vr4, 48
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
	vbsrl.v	$vr3, $vr2, 8
	vsllwil.w.h	$vr3, $vr3, 0
	vsllwil.d.w	$vr3, $vr3, 0
	vbsrl.v	$vr4, $vr2, 12
	vsllwil.w.h	$vr4, $vr4, 0
	vsllwil.d.w	$vr4, $vr4, 0
	vsllwil.w.h	$vr5, $vr2, 0
	vsllwil.d.w	$vr5, $vr5, 0
	vshuf4i.h	$vr2, $vr2, 14
	vsllwil.w.h	$vr2, $vr2, 0
	vsllwil.d.w	$vr2, $vr2, 0
	vld	$vr6, $a3, 32
	vori.b	$vr7, $vr1, 0
	vmadd.d	$vr7, $vr0, $vr2
	vori.b	$vr2, $vr1, 0
	vmadd.d	$vr2, $vr0, $vr5
	vori.b	$vr5, $vr1, 0
	vmadd.d	$vr5, $vr0, $vr4
	vori.b	$vr4, $vr1, 0
	vmadd.d	$vr4, $vr0, $vr3
	vsrli.d	$vr3, $vr4, 48
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
	vbsrl.v	$vr3, $vr2, 8
	vsllwil.w.h	$vr3, $vr3, 0
	vsllwil.d.w	$vr3, $vr3, 0
	vbsrl.v	$vr4, $vr2, 12
	vsllwil.w.h	$vr4, $vr4, 0
	vsllwil.d.w	$vr4, $vr4, 0
	vsllwil.w.h	$vr5, $vr2, 0
	vsllwil.d.w	$vr5, $vr5, 0
	vshuf4i.h	$vr2, $vr2, 14
	vsllwil.w.h	$vr2, $vr2, 0
	vsllwil.d.w	$vr2, $vr2, 0
	vld	$vr6, $a3, 48
	vori.b	$vr7, $vr1, 0
	vmadd.d	$vr7, $vr0, $vr2
	vori.b	$vr2, $vr1, 0
	vmadd.d	$vr2, $vr0, $vr5
	vori.b	$vr5, $vr1, 0
	vmadd.d	$vr5, $vr0, $vr4
	vori.b	$vr4, $vr1, 0
	vmadd.d	$vr4, $vr0, $vr3
	vsrli.d	$vr3, $vr4, 48
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
	vbsrl.v	$vr3, $vr2, 8
	vsllwil.w.h	$vr3, $vr3, 0
	vsllwil.d.w	$vr3, $vr3, 0
	vbsrl.v	$vr4, $vr2, 12
	vsllwil.w.h	$vr4, $vr4, 0
	vsllwil.d.w	$vr4, $vr4, 0
	vsllwil.w.h	$vr5, $vr2, 0
	vsllwil.d.w	$vr5, $vr5, 0
	vshuf4i.h	$vr2, $vr2, 14
	vsllwil.w.h	$vr2, $vr2, 0
	vsllwil.d.w	$vr2, $vr2, 0
	vld	$vr6, $a3, 64
	vori.b	$vr7, $vr1, 0
	vmadd.d	$vr7, $vr0, $vr2
	vori.b	$vr2, $vr1, 0
	vmadd.d	$vr2, $vr0, $vr5
	vori.b	$vr5, $vr1, 0
	vmadd.d	$vr5, $vr0, $vr4
	vmadd.d	$vr1, $vr0, $vr3
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
