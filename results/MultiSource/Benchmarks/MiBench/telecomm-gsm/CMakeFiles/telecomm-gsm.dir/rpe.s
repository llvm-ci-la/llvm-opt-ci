	.file	"rpe.c"
	.text
	.globl	Gsm_RPE_Encoding                # -- Begin function Gsm_RPE_Encoding
	.p2align	5
	.type	Gsm_RPE_Encoding,@function
Gsm_RPE_Encoding:                       # @Gsm_RPE_Encoding
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 184                  # 8-byte Folded Spill
	move	$fp, $a1
	ld.h	$a0, $a1, -10
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	move	$t3, $a3
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	move	$a2, $zero
	vinsgr2vr.h	$vr8, $a0, 7
	lu12i.w	$a0, 1
	ori	$a1, $a0, 1645
	vreplgr2vr.d	$vr0, $a1
	ori	$a1, $zero, 2054
	vreplgr2vr.d	$vr1, $a1
	vrepli.d	$vr2, -374
	vrepli.d	$vr3, -134
	vreplgr2vr.d	$vr4, $a0
	lu12i.w	$a1, -8
	vreplgr2vr.d	$vr5, $a1
	lu12i.w	$a1, 7
	ori	$a1, $a1, 4095
	vreplgr2vr.d	$vr6, $a1
	addi.d	$a3, $sp, 104
	ori	$a4, $zero, 80
	.p2align	4, , 16
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $fp, $a2
	vld	$vr7, $a5, -8
	vbsrl.v	$vr8, $vr8, 14
	vbsll.v	$vr9, $vr7, 2
	vor.v	$vr10, $vr9, $vr8
	vbsrl.v	$vr8, $vr7, 6
	vsllwil.w.h	$vr8, $vr8, 0
	vsllwil.d.w	$vr8, $vr8, 0
	vbsrl.v	$vr9, $vr7, 10
	vsllwil.w.h	$vr9, $vr9, 0
	vsllwil.d.w	$vr9, $vr9, 0
	vsllwil.w.h	$vr10, $vr10, 0
	vsllwil.d.w	$vr10, $vr10, 0
	vshuf4i.h	$vr11, $vr7, 9
	vsllwil.w.h	$vr11, $vr11, 0
	vsllwil.d.w	$vr11, $vr11, 0
	vshuf4i.h	$vr12, $vr7, 14
	vsllwil.w.h	$vr12, $vr12, 0
	vsllwil.d.w	$vr12, $vr12, 0
	vsllwil.w.h	$vr13, $vr7, 0
	vsllwil.d.w	$vr13, $vr13, 0
	vbsrl.v	$vr14, $vr7, 12
	vsllwil.w.h	$vr14, $vr14, 0
	vsllwil.d.w	$vr14, $vr14, 0
	vld	$vr19, $a5, -4
	vbsrl.v	$vr15, $vr7, 8
	vsllwil.w.h	$vr15, $vr15, 0
	vsllwil.d.w	$vr15, $vr15, 0
	vbsrl.v	$vr16, $vr19, 8
	vsllwil.w.h	$vr16, $vr16, 0
	vsllwil.d.w	$vr16, $vr16, 0
	vbsrl.v	$vr17, $vr19, 12
	vsllwil.w.h	$vr17, $vr17, 0
	vsllwil.d.w	$vr17, $vr17, 0
	vsllwil.w.h	$vr18, $vr19, 0
	vsllwil.d.w	$vr18, $vr18, 0
	vld	$vr20, $a5, -2
	vshuf4i.h	$vr19, $vr19, 14
	vsllwil.w.h	$vr19, $vr19, 0
	vsllwil.d.w	$vr19, $vr19, 0
	vbsrl.v	$vr21, $vr20, 8
	vsllwil.w.h	$vr21, $vr21, 0
	vsllwil.d.w	$vr21, $vr21, 0
	vbsrl.v	$vr22, $vr20, 12
	vsllwil.w.h	$vr22, $vr22, 0
	vsllwil.d.w	$vr22, $vr22, 0
	vsllwil.w.h	$vr23, $vr20, 0
	vsllwil.d.w	$vr23, $vr23, 0
	vld	$vr24, $a5, 2
	vshuf4i.h	$vr20, $vr20, 14
	vsllwil.w.h	$vr20, $vr20, 0
	vsllwil.d.w	$vr20, $vr20, 0
	vshuf4i.h	$vr25, $vr24, 14
	vsllwil.w.h	$vr25, $vr25, 0
	vsllwil.d.w	$vr25, $vr25, 0
	vadd.d	$vr20, $vr25, $vr20
	vsllwil.w.h	$vr25, $vr24, 0
	vsllwil.d.w	$vr25, $vr25, 0
	vadd.d	$vr23, $vr25, $vr23
	vbsrl.v	$vr25, $vr24, 8
	vbsrl.v	$vr24, $vr24, 12
	vsllwil.w.h	$vr24, $vr24, 0
	vsllwil.d.w	$vr24, $vr24, 0
	vadd.d	$vr22, $vr24, $vr22
	vld	$vr24, $a5, 4
	vsllwil.w.h	$vr25, $vr25, 0
	vsllwil.d.w	$vr25, $vr25, 0
	vadd.d	$vr21, $vr25, $vr21
	vshuf4i.h	$vr25, $vr24, 14
	vsllwil.w.h	$vr25, $vr25, 0
	vsllwil.d.w	$vr25, $vr25, 0
	vadd.d	$vr19, $vr25, $vr19
	vsllwil.w.h	$vr25, $vr24, 0
	vsllwil.d.w	$vr25, $vr25, 0
	vadd.d	$vr18, $vr25, $vr18
	vbsrl.v	$vr25, $vr24, 8
	vbsrl.v	$vr24, $vr24, 12
	vsllwil.w.h	$vr24, $vr24, 0
	vsllwil.d.w	$vr24, $vr24, 0
	vadd.d	$vr17, $vr24, $vr17
	vld	$vr24, $a5, 8
	vsllwil.w.h	$vr25, $vr25, 0
	vsllwil.d.w	$vr25, $vr25, 0
	vadd.d	$vr16, $vr25, $vr16
	vbsrl.v	$vr25, $vr24, 8
	vsllwil.w.h	$vr25, $vr25, 0
	vsllwil.d.w	$vr25, $vr25, 0
	vadd.d	$vr15, $vr25, $vr15
	vbsrl.v	$vr25, $vr24, 12
	vsllwil.w.h	$vr25, $vr25, 0
	vsllwil.d.w	$vr25, $vr25, 0
	vadd.d	$vr14, $vr25, $vr14
	vshuf4i.h	$vr25, $vr24, 14
	vsllwil.w.h	$vr24, $vr24, 0
	vsllwil.d.w	$vr24, $vr24, 0
	vadd.d	$vr13, $vr24, $vr13
	vld	$vr24, $a5, 10
	vsllwil.w.h	$vr25, $vr25, 0
	vsllwil.d.w	$vr25, $vr25, 0
	vadd.d	$vr12, $vr25, $vr12
	vshuf4i.h	$vr25, $vr24, 14
	vsllwil.w.h	$vr25, $vr25, 0
	vsllwil.d.w	$vr25, $vr25, 0
	vadd.d	$vr11, $vr25, $vr11
	vsllwil.w.h	$vr25, $vr24, 0
	vsllwil.d.w	$vr25, $vr25, 0
	vadd.d	$vr10, $vr25, $vr10
	vbsrl.v	$vr25, $vr24, 12
	vsllwil.w.h	$vr25, $vr25, 0
	vsllwil.d.w	$vr25, $vr25, 0
	vadd.d	$vr9, $vr25, $vr9
	vldx	$vr25, $fp, $a2
	vbsrl.v	$vr24, $vr24, 8
	vsllwil.w.h	$vr24, $vr24, 0
	vsllwil.d.w	$vr24, $vr24, 0
	vadd.d	$vr8, $vr24, $vr8
	vbsrl.v	$vr24, $vr25, 8
	vsllwil.w.h	$vr24, $vr24, 0
	vsllwil.d.w	$vr24, $vr24, 0
	vslli.d	$vr24, $vr24, 13
	vmadd.d	$vr24, $vr21, $vr0
	vmadd.d	$vr24, $vr16, $vr1
	vbsrl.v	$vr16, $vr25, 12
	vsllwil.w.h	$vr16, $vr16, 0
	vsllwil.d.w	$vr16, $vr16, 0
	vslli.d	$vr16, $vr16, 13
	vmadd.d	$vr16, $vr22, $vr0
	vmadd.d	$vr16, $vr17, $vr1
	vsllwil.w.h	$vr17, $vr25, 0
	vsllwil.d.w	$vr17, $vr17, 0
	vslli.d	$vr17, $vr17, 13
	vmadd.d	$vr17, $vr23, $vr0
	vmadd.d	$vr17, $vr18, $vr1
	vshuf4i.h	$vr18, $vr25, 14
	vsllwil.w.h	$vr18, $vr18, 0
	vsllwil.d.w	$vr18, $vr18, 0
	vslli.d	$vr18, $vr18, 13
	vmadd.d	$vr18, $vr20, $vr0
	vmadd.d	$vr18, $vr19, $vr1
	vmadd.d	$vr18, $vr12, $vr2
	vmadd.d	$vr17, $vr13, $vr2
	vmadd.d	$vr16, $vr14, $vr2
	vmadd.d	$vr24, $vr15, $vr2
	vmadd.d	$vr24, $vr8, $vr3
	vmadd.d	$vr16, $vr9, $vr3
	vmadd.d	$vr17, $vr10, $vr3
	vmadd.d	$vr18, $vr11, $vr3
	vadd.d	$vr8, $vr18, $vr4
	vadd.d	$vr9, $vr17, $vr4
	vsrai.d	$vr9, $vr9, 13
	vsrai.d	$vr8, $vr8, 13
	vmax.d	$vr8, $vr8, $vr5
	vmax.d	$vr9, $vr9, $vr5
	vmin.d	$vr9, $vr9, $vr6
	vmin.d	$vr8, $vr8, $vr6
	vpickev.w	$vr8, $vr8, $vr9
	vadd.d	$vr9, $vr16, $vr4
	vadd.d	$vr10, $vr24, $vr4
	vsrai.d	$vr10, $vr10, 13
	vsrai.d	$vr9, $vr9, 13
	vmax.d	$vr9, $vr9, $vr5
	vmax.d	$vr10, $vr10, $vr5
	vmin.d	$vr10, $vr10, $vr6
	vmin.d	$vr9, $vr9, $vr6
	vpickev.w	$vr9, $vr9, $vr10
	vpickev.h	$vr8, $vr9, $vr8
	vstx	$vr8, $a2, $a3
	addi.d	$a2, $a2, 16
	vori.b	$vr8, $vr7, 0
	bne	$a2, $a4, .LBB0_1
# %bb.2:                                # %Weighting_filter.exit
	ld.h	$a2, $sp, 104
	ld.h	$a3, $sp, 106
	srai.d	$a2, $a2, 2
	mul.d	$a2, $a2, $a2
	ld.h	$a4, $sp, 112
	srai.d	$a3, $a3, 2
	mul.d	$a3, $a3, $a3
	ld.h	$a5, $sp, 118
	srai.d	$a4, $a4, 2
	mul.d	$a4, $a4, $a4
	add.d	$a3, $a4, $a3
	srai.d	$a4, $a5, 2
	ld.h	$a5, $sp, 124
	mul.d	$a4, $a4, $a4
	add.d	$a3, $a3, $a4
	ld.h	$a4, $sp, 130
	srai.d	$a5, $a5, 2
	mul.d	$a5, $a5, $a5
	add.d	$a3, $a3, $a5
	srai.d	$a4, $a4, 2
	ld.h	$a5, $sp, 136
	mul.d	$a4, $a4, $a4
	add.d	$a3, $a3, $a4
	ld.h	$a4, $sp, 142
	srai.d	$a5, $a5, 2
	mul.d	$a5, $a5, $a5
	add.d	$a3, $a3, $a5
	srai.d	$a4, $a4, 2
	ld.h	$a5, $sp, 148
	mul.d	$a4, $a4, $a4
	add.d	$a3, $a3, $a4
	ld.h	$a4, $sp, 154
	srai.d	$a5, $a5, 2
	mul.d	$a5, $a5, $a5
	add.d	$a3, $a3, $a5
	srai.d	$a4, $a4, 2
	ld.h	$a5, $sp, 160
	mul.d	$a4, $a4, $a4
	add.d	$a3, $a3, $a4
	ld.h	$a4, $sp, 166
	srai.d	$a5, $a5, 2
	mul.d	$a5, $a5, $a5
	add.d	$a3, $a3, $a5
	srai.d	$a4, $a4, 2
	ld.h	$a5, $sp, 172
	mul.d	$a4, $a4, $a4
	add.d	$a3, $a3, $a4
	ld.h	$a4, $sp, 178
	srai.d	$a5, $a5, 2
	mul.d	$a5, $a5, $a5
	add.d	$a3, $a3, $a5
	srai.d	$a4, $a4, 2
	mul.d	$a4, $a4, $a4
	ld.w	$a5, $sp, 108
	add.d	$a3, $a3, $a4
	slli.d	$a3, $a3, 1
	ld.w	$a4, $sp, 114
	vinsgr2vr.w	$vr0, $a5, 0
	vsrai.h	$vr0, $vr0, 2
	vsllwil.w.h	$vr0, $vr0, 0
	vinsgr2vr.w	$vr1, $a4, 0
	vsrai.h	$vr1, $vr1, 2
	ld.w	$a4, $sp, 120
	vsllwil.w.h	$vr1, $vr1, 0
	vmul.w	$vr1, $vr1, $vr1
	vmadd.w	$vr1, $vr0, $vr0
	vinsgr2vr.w	$vr0, $a4, 0
	ld.w	$a4, $sp, 126
	vsrai.h	$vr0, $vr0, 2
	vsllwil.w.h	$vr0, $vr0, 0
	vmadd.w	$vr1, $vr0, $vr0
	vinsgr2vr.w	$vr0, $a4, 0
	vsrai.h	$vr0, $vr0, 2
	ld.w	$a4, $sp, 132
	vsllwil.w.h	$vr0, $vr0, 0
	ld.w	$a5, $sp, 138
	vsllwil.d.w	$vr2, $vr0, 0
	vinsgr2vr.w	$vr0, $a4, 0
	vsrai.h	$vr3, $vr0, 2
	vinsgr2vr.w	$vr0, $a5, 0
	vsrai.h	$vr4, $vr0, 2
	ld.h	$a4, $sp, 146
	vsllwil.du.wu	$vr0, $vr1, 0
	vmadd.d	$vr0, $vr2, $vr2
	vsllwil.w.h	$vr1, $vr3, 0
	vsllwil.d.w	$vr1, $vr1, 0
	vmadd.d	$vr0, $vr1, $vr1
	vld	$vr1, $sp, 144
	vsllwil.w.h	$vr2, $vr4, 0
	vsllwil.d.w	$vr2, $vr2, 0
	vmadd.d	$vr0, $vr2, $vr2
	vinsgr2vr.h	$vr1, $a4, 1
	vsrai.h	$vr1, $vr1, 2
	ld.w	$a4, $sp, 150
	vsllwil.w.h	$vr1, $vr1, 0
	vsllwil.d.w	$vr1, $vr1, 0
	vmadd.d	$vr0, $vr1, $vr1
	vinsgr2vr.w	$vr1, $a4, 0
	vsrai.h	$vr1, $vr1, 2
	ld.w	$a4, $sp, 156
	vsllwil.w.h	$vr1, $vr1, 0
	vsllwil.d.w	$vr1, $vr1, 0
	vmadd.d	$vr0, $vr1, $vr1
	vinsgr2vr.w	$vr1, $a4, 0
	vsrai.h	$vr1, $vr1, 2
	ld.w	$a4, $sp, 162
	vsllwil.w.h	$vr1, $vr1, 0
	vsllwil.d.w	$vr1, $vr1, 0
	vmadd.d	$vr0, $vr1, $vr1
	vinsgr2vr.w	$vr1, $a4, 0
	vsrai.h	$vr1, $vr1, 2
	ld.w	$a4, $sp, 168
	vsllwil.w.h	$vr1, $vr1, 0
	vsllwil.d.w	$vr1, $vr1, 0
	vmadd.d	$vr0, $vr1, $vr1
	vinsgr2vr.w	$vr1, $a4, 0
	vsrai.h	$vr1, $vr1, 2
	ld.w	$a4, $sp, 174
	vsllwil.w.h	$vr1, $vr1, 0
	vsllwil.d.w	$vr1, $vr1, 0
	vmadd.d	$vr0, $vr1, $vr1
	vinsgr2vr.w	$vr1, $a4, 0
	vsrai.h	$vr1, $vr1, 2
	vsllwil.w.h	$vr1, $vr1, 0
	vsllwil.d.w	$vr1, $vr1, 0
	vmadd.d	$vr0, $vr1, $vr1
	vpickve2gr.d	$a4, $vr0, 1
	add.d	$a2, $a4, $a2
	slli.d	$a2, $a2, 1
	slt	$a4, $a2, $a3
	ld.w	$a5, $sp, 180
	masknez	$a2, $a2, $a4
	maskeqz	$a3, $a3, $a4
	or	$a2, $a3, $a2
	vinsgr2vr.w	$vr1, $a5, 0
	vsrai.h	$vr1, $vr1, 2
	vsllwil.w.h	$vr1, $vr1, 0
	vsllwil.d.w	$vr1, $vr1, 0
	vmadd.d	$vr0, $vr1, $vr1
	vslli.d	$vr0, $vr0, 1
	vpickve2gr.d	$a3, $vr0, 0
	slt	$a5, $a2, $a3
	masknez	$a6, $a2, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	vinsgr2vr.d	$vr1, $a2, 0
	vinsgr2vr.d	$vr1, $a3, 1
	vslt.d	$vr0, $vr1, $vr0
	vpickve2gr.d	$a2, $vr0, 0
	andi	$a2, $a2, 1
	masknez	$a3, $a4, $a2
	ori	$a4, $zero, 2
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	vpickve2gr.d	$a3, $vr0, 1
	andi	$a3, $a3, 1
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a2
	addi.d	$a4, $sp, 104
	alsl.d	$a2, $a3, $a4, 1
	slli.d	$a5, $a3, 1
	ldx.hu	$a6, $a5, $a4
	ld.hu	$t2, $a2, 6
	ld.hu	$t1, $a2, 12
	ext.w.h	$t7, $a6
	ext.w.h	$t6, $t2
	ext.w.h	$t5, $t1
	ld.hu	$t0, $a2, 18
	ld.hu	$a7, $a2, 24
	ld.hu	$a5, $a2, 30
	ld.hu	$a4, $a2, 36
	ext.w.h	$t8, $t0
	ext.w.h	$s0, $a7
	ext.w.h	$s2, $a5
	ext.w.h	$s8, $a4
	st.d	$t3, $sp, 64                    # 8-byte Folded Spill
	st.h	$a3, $t3, 0
	lu12i.w	$a3, 8
	xor	$t3, $a6, $a3
	sltui	$t3, $t3, 1
	sub.d	$t4, $zero, $a6
	masknez	$t4, $t4, $t3
	maskeqz	$t3, $a1, $t3
	or	$t3, $t3, $t4
	st.d	$t7, $sp, 24                    # 8-byte Folded Spill
	slti	$t4, $t7, 0
	masknez	$a6, $a6, $t4
	maskeqz	$t3, $t3, $t4
	or	$t3, $t3, $a6
	xor	$a6, $t2, $a3
	sltui	$a6, $a6, 1
	sub.d	$t4, $zero, $t2
	masknez	$t4, $t4, $a6
	maskeqz	$a6, $a1, $a6
	or	$a6, $a6, $t4
	st.d	$t6, $sp, 32                    # 8-byte Folded Spill
	slti	$t4, $t6, 0
	masknez	$t2, $t2, $t4
	maskeqz	$t4, $a6, $t4
	ld.hu	$a6, $a2, 42
	ext.w.h	$t3, $t3
	or	$t2, $t4, $t2
	ext.w.h	$t2, $t2
	slt	$t4, $t2, $t3
	masknez	$t2, $t2, $t4
	maskeqz	$t3, $t3, $t4
	or	$t2, $t3, $t2
	xor	$t3, $t1, $a3
	sltui	$t3, $t3, 1
	sub.d	$t4, $zero, $t1
	masknez	$t4, $t4, $t3
	maskeqz	$t3, $a1, $t3
	or	$t3, $t3, $t4
	st.d	$t5, $sp, 40                    # 8-byte Folded Spill
	slti	$t4, $t5, 0
	masknez	$t1, $t1, $t4
	maskeqz	$t3, $t3, $t4
	ext.w.h	$s3, $a6
	or	$t1, $t3, $t1
	ext.w.h	$t1, $t1
	slt	$t3, $t1, $t2
	maskeqz	$t2, $t2, $t3
	masknez	$t1, $t1, $t3
	or	$t1, $t2, $t1
	xor	$t2, $t0, $a3
	sltui	$t2, $t2, 1
	sub.d	$t3, $zero, $t0
	masknez	$t3, $t3, $t2
	maskeqz	$t2, $a1, $t2
	or	$t2, $t2, $t3
	st.d	$t8, $sp, 16                    # 8-byte Folded Spill
	slti	$t3, $t8, 0
	masknez	$t4, $t0, $t3
	maskeqz	$t2, $t2, $t3
	ld.hu	$t0, $a2, 48
	or	$t2, $t2, $t4
	ext.w.h	$t2, $t2
	slt	$t3, $t2, $t1
	maskeqz	$t1, $t1, $t3
	masknez	$t2, $t2, $t3
	or	$t1, $t1, $t2
	xor	$t2, $a7, $a3
	sltui	$t2, $t2, 1
	sub.d	$t3, $zero, $a7
	masknez	$t3, $t3, $t2
	maskeqz	$t2, $a1, $t2
	or	$t2, $t2, $t3
	slti	$t3, $s0, 0
	masknez	$a7, $a7, $t3
	maskeqz	$t2, $t2, $t3
	ext.w.h	$s4, $t0
	or	$a7, $t2, $a7
	ext.w.h	$a7, $a7
	slt	$t2, $a7, $t1
	maskeqz	$t1, $t1, $t2
	masknez	$a7, $a7, $t2
	or	$a7, $t1, $a7
	xor	$t1, $a5, $a3
	sltui	$t1, $t1, 1
	sub.d	$t2, $zero, $a5
	masknez	$t2, $t2, $t1
	maskeqz	$t1, $a1, $t1
	or	$t1, $t1, $t2
	slti	$t2, $s2, 0
	masknez	$t3, $a5, $t2
	maskeqz	$t1, $t1, $t2
	ld.hu	$a5, $a2, 54
	or	$t1, $t1, $t3
	ext.w.h	$t1, $t1
	slt	$t2, $t1, $a7
	maskeqz	$a7, $a7, $t2
	masknez	$t1, $t1, $t2
	or	$a7, $a7, $t1
	xor	$t1, $a4, $a3
	sltui	$t1, $t1, 1
	sub.d	$t2, $zero, $a4
	masknez	$t2, $t2, $t1
	maskeqz	$t1, $a1, $t1
	or	$t1, $t1, $t2
	slti	$t2, $s8, 0
	masknez	$a4, $a4, $t2
	maskeqz	$t1, $t1, $t2
	ext.w.h	$s5, $a5
	or	$a4, $t1, $a4
	ext.w.h	$a4, $a4
	slt	$t1, $a4, $a7
	maskeqz	$a7, $a7, $t1
	masknez	$a4, $a4, $t1
	or	$a4, $a7, $a4
	xor	$a7, $a6, $a3
	sltui	$a7, $a7, 1
	sub.d	$t1, $zero, $a6
	masknez	$t1, $t1, $a7
	maskeqz	$a7, $a1, $a7
	or	$a7, $a7, $t1
	slti	$t1, $s3, 0
	masknez	$a6, $a6, $t1
	maskeqz	$a7, $a7, $t1
	ld.hu	$t1, $a2, 60
	or	$a6, $a7, $a6
	ext.w.h	$a6, $a6
	slt	$a7, $a6, $a4
	maskeqz	$a4, $a4, $a7
	masknez	$a6, $a6, $a7
	or	$a4, $a4, $a6
	xor	$a6, $t0, $a3
	sltui	$a6, $a6, 1
	sub.d	$a7, $zero, $t0
	masknez	$a7, $a7, $a6
	maskeqz	$a6, $a1, $a6
	or	$a6, $a6, $a7
	slti	$a7, $s4, 0
	masknez	$t0, $t0, $a7
	maskeqz	$a6, $a6, $a7
	ext.w.h	$s1, $t1
	or	$a6, $a6, $t0
	ext.w.h	$a6, $a6
	slt	$a7, $a6, $a4
	maskeqz	$a4, $a4, $a7
	masknez	$a6, $a6, $a7
	or	$a4, $a4, $a6
	xor	$a6, $a5, $a3
	sltui	$a6, $a6, 1
	sub.d	$a7, $zero, $a5
	masknez	$a7, $a7, $a6
	maskeqz	$a6, $a1, $a6
	or	$a6, $a6, $a7
	slti	$a7, $s5, 0
	masknez	$a5, $a5, $a7
	maskeqz	$a6, $a6, $a7
	ld.hu	$a7, $a2, 66
	or	$a5, $a6, $a5
	ext.w.h	$a5, $a5
	slt	$a6, $a5, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a5, $a5, $a6
	or	$a4, $a4, $a5
	xor	$a5, $t1, $a3
	sltui	$a5, $a5, 1
	sub.d	$a6, $zero, $t1
	masknez	$a6, $a6, $a5
	maskeqz	$a5, $a1, $a5
	or	$a5, $a5, $a6
	slti	$a6, $s1, 0
	masknez	$t0, $t1, $a6
	maskeqz	$a5, $a5, $a6
	ext.w.h	$s6, $a7
	or	$a5, $a5, $t0
	ext.w.h	$a5, $a5
	slt	$a6, $a5, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a5, $a5, $a6
	or	$a4, $a4, $a5
	xor	$a5, $a7, $a3
	sltui	$a5, $a5, 1
	sub.d	$a6, $zero, $a7
	masknez	$a6, $a6, $a5
	maskeqz	$a5, $a1, $a5
	or	$a5, $a5, $a6
	slti	$a6, $s6, 0
	masknez	$a7, $a7, $a6
	maskeqz	$a5, $a5, $a6
	ld.hu	$a2, $a2, 72
	or	$a5, $a5, $a7
	ext.w.h	$a5, $a5
	slt	$a6, $a5, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a5, $a5, $a6
	or	$a4, $a4, $a5
	xor	$a3, $a2, $a3
	sltui	$a3, $a3, 1
	sub.d	$a5, $zero, $a2
	masknez	$a5, $a5, $a3
	maskeqz	$a1, $a1, $a3
	ext.w.h	$s7, $a2
	or	$a1, $a1, $a5
	slti	$a3, $s7, 0
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	slt	$a2, $a1, $a4
	maskeqz	$a3, $a4, $a2
	masknez	$a1, $a1, $a2
	or	$a1, $a3, $a1
	ori	$a2, $zero, 511
	slt	$a2, $a2, $a1
	ori	$a3, $zero, 1023
	slt	$a3, $a3, $a1
	add.d	$a2, $a2, $a3
	ori	$a3, $zero, 2047
	slt	$a3, $a3, $a1
	add.d	$a2, $a2, $a3
	ori	$a3, $zero, 4095
	slt	$a3, $a3, $a1
	add.d	$a2, $a2, $a3
	srai.d	$a3, $a1, 63
	andn	$a3, $a1, $a3
	ori	$a0, $a0, 4095
	slt	$a0, $a0, $a1
	add.d	$a0, $a2, $a0
	lu12i.w	$a2, 3
	ori	$a2, $a2, 4095
	slt	$a1, $a2, $a1
	add.d	$a1, $a0, $a1
	addi.d	$a0, $a1, 5
	srl.w	$a0, $a3, $a0
	slli.d	$a1, $a1, 3
	bstrpick.d	$a1, $a1, 15, 3
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(gsm_add)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 15
	slt	$a1, $a1, $a0
	bstrpick.d	$a2, $a0, 15, 3
	addi.d	$a2, $a2, -1
	maskeqz	$a2, $a2, $a1
	slli.d	$a1, $a2, 3
	sub.d	$a1, $a0, $a1
	bstrpick.d	$a3, $a1, 15, 0
	beqz	$a3, .LBB0_7
# %bb.3:                                # %.preheader.i.i
	ext.w.h	$a1, $a1
	ori	$a3, $zero, 7
	blt	$a3, $a1, .LBB0_6
# %bb.4:                                # %.lr.ph.i.i.preheader
	ori	$a3, $zero, 8
	.p2align	4, , 16
.LBB0_5:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a1, $a1, 1
	addi.d	$a1, $a1, 1
	ext.w.h	$a1, $a1
	addi.d	$a2, $a2, -1
	blt	$a1, $a3, .LBB0_5
.LBB0_6:                                # %._crit_edge.i.i
	addi.d	$a1, $a1, -8
	b	.LBB0_8
.LBB0_7:
	ori	$a1, $zero, 7
	lu12i.w	$a2, 15
	ori	$a2, $a2, 4092
.LBB0_8:                                # %APCM_quantization.exit
	ori	$a3, $zero, 6
	sub.d	$a3, $a3, $a2
	bstrpick.d	$a4, $a1, 15, 0
	slli.d	$a4, $a4, 1
	pcalau12i	$a5, %got_pc_hi20(gsm_NRFAC)
	ld.d	$a5, $a5, %got_pc_lo12(gsm_NRFAC)
	ldx.h	$a4, $a5, $a4
	bstrpick.d	$a5, $a3, 15, 0
	vinsgr2vr.h	$vr0, $s0, 0
	vinsgr2vr.h	$vr0, $s2, 2
	vinsgr2vr.h	$vr0, $s8, 4
	vinsgr2vr.h	$vr0, $s3, 6
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	vinsgr2vr.h	$vr1, $a6, 0
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	vinsgr2vr.h	$vr1, $a6, 2
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	vinsgr2vr.h	$vr1, $a6, 4
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	vinsgr2vr.h	$vr1, $a6, 6
	vreplgr2vr.w	$vr2, $a5
	vsll.w	$vr1, $vr1, $vr2
	vsll.w	$vr0, $vr0, $vr2
	vreplgr2vr.w	$vr2, $a4
	vslli.w	$vr0, $vr0, 16
	vsrai.w	$vr0, $vr0, 16
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vmul.w	$vr1, $vr2, $vr1
	vmul.w	$vr0, $vr2, $vr0
	vslli.w	$vr0, $vr0, 1
	vslli.w	$vr1, $vr1, 1
	vsrai.w	$vr1, $vr1, 28
	vsrai.w	$vr0, $vr0, 28
	vpickev.h	$vr0, $vr0, $vr1
	vaddi.hu	$vr0, $vr0, 4
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	vst	$vr0, $a6, 0
	sll.w	$a5, $s4, $a3
	ext.w.h	$a5, $a5
	mul.d	$a5, $a5, $a4
	slli.w	$a5, $a5, 1
	srli.d	$a5, $a5, 28
	addi.d	$a5, $a5, 4
	st.h	$a5, $a6, 16
	sll.w	$a5, $s5, $a3
	ext.w.h	$a5, $a5
	mul.d	$a5, $a5, $a4
	slli.w	$a5, $a5, 1
	srli.d	$a5, $a5, 28
	addi.d	$a5, $a5, 4
	st.h	$a5, $a6, 18
	sll.w	$a5, $s1, $a3
	ext.w.h	$a5, $a5
	mul.d	$a5, $a5, $a4
	slli.w	$a5, $a5, 1
	srli.d	$a5, $a5, 28
	addi.d	$a5, $a5, 4
	st.h	$a5, $a6, 20
	sll.w	$a5, $s6, $a3
	ext.w.h	$a5, $a5
	mul.d	$a5, $a5, $a4
	slli.w	$a5, $a5, 1
	srli.d	$a5, $a5, 28
	addi.d	$a5, $a5, 4
	st.h	$a5, $a6, 22
	sll.w	$a3, $s7, $a3
	ext.w.h	$a3, $a3
	mul.d	$a3, $a3, $a4
	slli.w	$a3, $a3, 1
	srli.d	$a3, $a3, 28
	addi.d	$a3, $a3, 4
	st.h	$a3, $a6, 24
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.h	$a0, $a3, 0
	ext.w.h	$a1, $a1
	ext.w.h	$a2, $a2
	addi.d	$a3, $sp, 78
	addi.d	$s0, $sp, 78
	move	$a0, $a6
	pcaddu18i	$ra, %call36(APCM_inverse_quantization)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.hu	$a0, $a0, 0
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB0_15
# %bb.9:                                # %APCM_quantization.exit
	ori	$a1, $zero, 12
	slli.d	$a2, $a0, 2
	pcalau12i	$a3, %pc_hi20(.LJTI0_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI0_0)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB0_10:
	st.h	$zero, $fp, 0
	addi.d	$fp, $fp, 2
.LBB0_11:
	ori	$a1, $zero, 13
	addi.d	$s0, $sp, 78
.LBB0_12:
	st.h	$zero, $fp, 0
	addi.d	$fp, $fp, 2
	addi.w	$a1, $a1, -1
.LBB0_13:
	addi.d	$a2, $fp, 2
	st.h	$zero, $fp, 0
	move	$fp, $a2
.LBB0_14:
	ld.h	$a2, $s0, 0
	addi.d	$s0, $s0, 2
	addi.d	$a3, $fp, 2
	st.h	$a2, $fp, 0
	move	$fp, $a3
	bnez	$a1, .LBB0_12
.LBB0_15:
	addi.d	$a1, $a0, 1
	ext.w.h	$a1, $a1
	ori	$a2, $zero, 3
	blt	$a2, $a1, .LBB0_17
# %bb.16:                               # %.lr.ph.preheader.i
	ori	$a1, $zero, 2
	sub.d	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	addi.d	$a2, $a0, 2
	move	$a0, $fp
	move	$a1, $zero
	fld.d	$fs1, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 192                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB0_17:                               # %RPE_grid_positioning.exit
	fld.d	$fs1, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 192                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.Lfunc_end0:
	.size	Gsm_RPE_Encoding, .Lfunc_end0-Gsm_RPE_Encoding
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_13-.LJTI0_0
	.word	.LBB0_11-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function APCM_inverse_quantization
	.type	APCM_inverse_quantization,@function
APCM_inverse_quantization:              # @APCM_inverse_quantization
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
	move	$fp, $a3
	move	$s1, $a0
	slli.d	$a0, $a1, 1
	pcalau12i	$a1, %got_pc_hi20(gsm_FAC)
	ld.d	$a1, $a1, %got_pc_lo12(gsm_FAC)
	ldx.h	$s3, $a1, $a0
	ori	$a0, $zero, 6
	move	$a1, $a2
	pcaddu18i	$ra, %call36(gsm_sub)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(gsm_sub)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(gsm_asl)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s1, 0
	move	$s2, $a0
	slli.d	$s3, $s3, 33
	slli.d	$a0, $a1, 13
	lu12i.w	$s4, -7
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	ori	$s5, $zero, 0
	lu32i.d	$s5, 32768
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	lu12i.w	$a1, 7
	ori	$s6, $a1, 4095
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	lu12i.w	$s7, -8
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 0
	ld.h	$a0, $s1, 2
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 2
	ld.h	$a0, $s1, 4
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 4
	ld.h	$a0, $s1, 6
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 6
	ld.h	$a0, $s1, 8
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 8
	ld.h	$a0, $s1, 10
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 10
	ld.h	$a0, $s1, 12
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 12
	ld.h	$a0, $s1, 14
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 14
	ld.h	$a0, $s1, 16
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 16
	ld.h	$a0, $s1, 18
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 18
	ld.h	$a0, $s1, 20
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 20
	ld.h	$a0, $s1, 22
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 22
	ld.h	$a0, $s1, 24
	slli.d	$a0, $a0, 13
	add.d	$a0, $a0, $s4
	ext.w.h	$a0, $a0
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s2
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gsm_asr)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, 24
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
.Lfunc_end1:
	.size	APCM_inverse_quantization, .Lfunc_end1-APCM_inverse_quantization
                                        # -- End function
	.globl	Gsm_RPE_Decoding                # -- Begin function Gsm_RPE_Decoding
	.p2align	5
	.type	Gsm_RPE_Decoding,@function
Gsm_RPE_Decoding:                       # @Gsm_RPE_Decoding
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $zero, 15
	slt	$a0, $a0, $a1
	bstrpick.d	$a5, $a1, 15, 3
	addi.d	$a5, $a5, -1
	maskeqz	$a5, $a5, $a0
	slli.d	$a0, $a5, 3
	sub.d	$a1, $a1, $a0
	slli.d	$a6, $a1, 48
	move	$s0, $a4
	move	$a0, $a3
	move	$fp, $a2
	beqz	$a6, .LBB2_5
# %bb.1:                                # %.preheader.i
	ext.w.h	$a1, $a1
	ori	$a2, $zero, 7
	blt	$a2, $a1, .LBB2_4
# %bb.2:                                # %.lr.ph.i.preheader
	ori	$a2, $zero, 8
	.p2align	4, , 16
.LBB2_3:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a1, $a1, 1
	addi.d	$a1, $a1, 1
	ext.w.h	$a1, $a1
	addi.d	$a5, $a5, -1
	blt	$a1, $a2, .LBB2_3
.LBB2_4:                                # %._crit_edge.i
	addi.d	$a1, $a1, -8
	b	.LBB2_6
.LBB2_5:
	ori	$a1, $zero, 7
	lu12i.w	$a2, 15
	ori	$a5, $a2, 4092
.LBB2_6:                                # %APCM_quantization_xmaxc_to_exp_mant.exit
	ext.w.h	$a1, $a1
	ext.w.h	$a2, $a5
	addi.d	$a3, $sp, 22
	addi.d	$s1, $sp, 22
	pcaddu18i	$ra, %call36(APCM_inverse_quantization)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	bltu	$a0, $fp, .LBB2_12
# %bb.7:                                # %APCM_quantization_xmaxc_to_exp_mant.exit
	ori	$a1, $zero, 12
	ori	$a2, $zero, 13
	slli.d	$a3, $fp, 2
	pcalau12i	$a4, %pc_hi20(.LJTI2_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI2_0)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB2_8:
	addi.d	$a1, $s0, 2
	st.h	$zero, $s0, 0
	move	$s0, $a1
.LBB2_9:
	st.h	$zero, $s0, 0
	addi.d	$s0, $s0, 2
	addi.w	$a1, $a2, -1
.LBB2_10:
	addi.d	$a2, $s0, 2
	st.h	$zero, $s0, 0
	move	$s0, $a2
.LBB2_11:
	ld.h	$a2, $s1, 0
	addi.d	$s1, $s1, 2
	addi.d	$a3, $s0, 2
	st.h	$a2, $s0, 0
	move	$s0, $a3
	move	$a2, $a1
	bnez	$a1, .LBB2_9
.LBB2_12:
	addi.d	$a1, $fp, 1
	ext.w.h	$a1, $a1
	blt	$a0, $a1, .LBB2_14
# %bb.13:                               # %.lr.ph.preheader.i
	ori	$a0, $zero, 2
	sub.d	$a0, $a0, $fp
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	addi.d	$a2, $a0, 2
	move	$a0, $s0
	move	$a1, $zero
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB2_14:                               # %RPE_grid_positioning.exit
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	Gsm_RPE_Decoding, .Lfunc_end2-Gsm_RPE_Decoding
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_11-.LJTI2_0
	.word	.LBB2_10-.LJTI2_0
	.word	.LBB2_9-.LJTI2_0
	.word	.LBB2_8-.LJTI2_0
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
