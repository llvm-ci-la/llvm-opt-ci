	.file	"long_term.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function Gsm_Long_Term_Predictor
.LCPI0_0:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	3                               # 0x3
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.text
	.globl	Gsm_Long_Term_Predictor
	.p2align	5
	.type	Gsm_Long_Term_Predictor,@function
Gsm_Long_Term_Predictor:                # @Gsm_Long_Term_Predictor
# %bb.0:                                # %iter.check
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	move	$s4, $a1
	vld	$vr0, $a1, 16
	vslti.h	$vr1, $vr0, 0
	vldi	$vr2, -2688
	vseq.h	$vr3, $vr0, $vr2
	vneg.h	$vr4, $vr0
	lu12i.w	$a0, 7
	ori	$a0, $a0, 4095
	vld	$vr5, $a1, 48
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	vreplgr2vr.h	$vr6, $a0
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
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	move	$s5, $a2
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
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
	masknez	$t8, $a0, $a1
	b	.LBB0_3
.LBB0_2:
	ori	$t8, $zero, 6
.LBB0_3:                                # %.thread.i
	move	$a1, $zero
	ld.h	$a0, $s4, 0
	ld.h	$a2, $s4, 2
	ld.h	$a3, $s4, 4
	ld.h	$a4, $s4, 6
	sra.w	$a0, $a0, $t8
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	sra.w	$a0, $a2, $t8
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	sra.w	$a0, $a3, $t8
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	sra.w	$a0, $a4, $t8
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.h	$a0, $s4, 8
	ld.h	$a2, $s4, 10
	ld.h	$a3, $s4, 12
	ld.h	$a4, $s4, 14
	sra.w	$a0, $a0, $t8
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	sra.w	$a0, $a2, $t8
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	sra.w	$a0, $a3, $t8
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	sra.w	$a0, $a4, $t8
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.h	$a0, $s4, 16
	ld.h	$a2, $s4, 18
	ld.h	$a3, $s4, 20
	ld.h	$a4, $s4, 22
	sra.w	$a0, $a0, $t8
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	sra.w	$a0, $a2, $t8
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	sra.w	$a0, $a3, $t8
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	sra.w	$a0, $a4, $t8
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.h	$a0, $s4, 24
	ld.h	$a2, $s4, 26
	ld.h	$a3, $s4, 28
	ld.h	$a4, $s4, 30
	sra.w	$a0, $a0, $t8
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	sra.w	$a0, $a2, $t8
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	sra.w	$a0, $a3, $t8
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	sra.w	$a0, $a4, $t8
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.h	$a0, $s4, 32
	ld.h	$a2, $s4, 34
	ld.h	$a3, $s4, 36
	ld.h	$a4, $s4, 38
	sra.w	$a0, $a0, $t8
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	sra.w	$a0, $a2, $t8
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	sra.w	$a0, $a3, $t8
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	sra.w	$a0, $a4, $t8
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.h	$a0, $s4, 40
	ld.h	$a2, $s4, 42
	ld.h	$a3, $s4, 44
	ld.h	$a4, $s4, 46
	sra.w	$s3, $a0, $t8
	sra.w	$s2, $a2, $t8
	sra.w	$s0, $a3, $t8
	sra.w	$s1, $a4, $t8
	ld.h	$a0, $s4, 48
	ld.h	$a2, $s4, 50
	ld.h	$a3, $s4, 52
	ld.h	$a4, $s4, 54
	sra.w	$fp, $a0, $t8
	sra.w	$s6, $a2, $t8
	sra.w	$a0, $a3, $t8
	sra.w	$a2, $a4, $t8
	ld.h	$a3, $s4, 56
	ld.h	$a4, $s4, 58
	ld.h	$a5, $s4, 60
	ld.h	$a6, $s4, 62
	sra.w	$a3, $a3, $t8
	sra.w	$a4, $a4, $t8
	sra.w	$a5, $a5, $t8
	sra.w	$a6, $a6, $t8
	ld.h	$a7, $s4, 64
	ld.h	$t0, $s4, 66
	ld.h	$t1, $s4, 68
	ld.h	$t2, $s4, 70
	sra.w	$a7, $a7, $t8
	sra.w	$t0, $t0, $t8
	sra.w	$t1, $t1, $t8
	sra.w	$t2, $t2, $t8
	ld.h	$t3, $s4, 72
	ld.h	$t5, $s4, 74
	ld.h	$t6, $s4, 76
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	ld.h	$t7, $s4, 78
	sra.w	$t4, $t3, $t8
	sra.w	$t5, $t5, $t8
	sra.w	$t6, $t6, $t8
	st.d	$t8, $sp, 16                    # 8-byte Folded Spill
	sra.w	$t7, $t7, $t8
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	addi.d	$s5, $s5, -40
	ori	$t8, $zero, 40
	ori	$t3, $zero, 40
	.p2align	4, , 16
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	ld.h	$s7, $s5, -40
	ld.h	$s8, $s5, -38
	ld.d	$s4, $sp, 224                   # 8-byte Folded Reload
	mul.d	$s7, $s4, $s7
	ld.h	$ra, $s5, -36
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	mul.d	$s8, $s4, $s8
	add.d	$s7, $s8, $s7
	ld.h	$s8, $s5, -34
	ld.d	$s4, $sp, 208                   # 8-byte Folded Reload
	mul.d	$ra, $s4, $ra
	add.d	$s7, $s7, $ra
	ld.h	$ra, $s5, -32
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	mul.d	$s8, $s4, $s8
	add.d	$s7, $s7, $s8
	ld.h	$s8, $s5, -30
	ld.d	$s4, $sp, 192                   # 8-byte Folded Reload
	mul.d	$ra, $s4, $ra
	add.d	$s7, $s7, $ra
	ld.h	$ra, $s5, -28
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	mul.d	$s8, $s4, $s8
	add.d	$s7, $s7, $s8
	ld.h	$s8, $s5, -26
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	mul.d	$ra, $s4, $ra
	add.d	$s7, $s7, $ra
	ld.h	$ra, $s5, -24
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	mul.d	$s8, $s4, $s8
	add.d	$s7, $s7, $s8
	ld.h	$s8, $s5, -22
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
	mul.d	$ra, $s4, $ra
	add.d	$s7, $s7, $ra
	ld.h	$ra, $s5, -20
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	mul.d	$s8, $s4, $s8
	add.d	$s7, $s7, $s8
	ld.h	$s8, $s5, -18
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	mul.d	$ra, $s4, $ra
	add.d	$s7, $s7, $ra
	ld.h	$ra, $s5, -16
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	mul.d	$s8, $s4, $s8
	add.d	$s7, $s7, $s8
	ld.h	$s8, $s5, -14
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	mul.d	$ra, $s4, $ra
	add.d	$s7, $s7, $ra
	ld.h	$ra, $s5, -12
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	mul.d	$s8, $s4, $s8
	add.d	$s7, $s7, $s8
	ld.h	$s8, $s5, -10
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	mul.d	$ra, $s4, $ra
	add.d	$s7, $s7, $ra
	ld.h	$ra, $s5, -8
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	mul.d	$s8, $s4, $s8
	add.d	$s7, $s7, $s8
	ld.h	$s8, $s5, -6
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	mul.d	$ra, $s4, $ra
	add.d	$s7, $s7, $ra
	ld.h	$ra, $s5, -4
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	mul.d	$s8, $s4, $s8
	add.d	$s7, $s7, $s8
	ld.h	$s8, $s5, -2
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	mul.d	$ra, $s4, $ra
	add.d	$s7, $s7, $ra
	ld.h	$ra, $s5, 0
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	mul.d	$s8, $s4, $s8
	add.d	$s7, $s7, $s8
	ld.h	$s8, $s5, 2
	mul.d	$ra, $s3, $ra
	add.d	$s7, $s7, $ra
	ld.h	$ra, $s5, 4
	mul.d	$s8, $s2, $s8
	add.d	$s7, $s7, $s8
	ld.h	$s8, $s5, 6
	mul.d	$ra, $s0, $ra
	add.d	$s7, $s7, $ra
	ld.h	$ra, $s5, 8
	mul.d	$s8, $s1, $s8
	add.d	$s7, $s7, $s8
	ld.h	$s8, $s5, 10
	mul.d	$ra, $fp, $ra
	add.d	$s7, $s7, $ra
	ld.h	$ra, $s5, 12
	mul.d	$s8, $s6, $s8
	add.d	$s7, $s7, $s8
	ld.h	$s8, $s5, 14
	mul.d	$ra, $a0, $ra
	add.d	$s7, $s7, $ra
	ld.h	$ra, $s5, 16
	mul.d	$s8, $a2, $s8
	add.d	$s7, $s7, $s8
	ld.h	$s8, $s5, 18
	mul.d	$ra, $a3, $ra
	add.d	$s7, $s7, $ra
	ld.h	$ra, $s5, 20
	mul.d	$s8, $a4, $s8
	add.d	$s7, $s7, $s8
	ld.h	$s8, $s5, 22
	mul.d	$ra, $a5, $ra
	add.d	$s7, $s7, $ra
	ld.h	$ra, $s5, 24
	mul.d	$s8, $a6, $s8
	add.d	$s7, $s7, $s8
	ld.h	$s8, $s5, 26
	mul.d	$ra, $a7, $ra
	add.d	$s7, $s7, $ra
	ld.h	$ra, $s5, 28
	mul.d	$s8, $t0, $s8
	add.d	$s7, $s7, $s8
	ld.h	$s8, $s5, 30
	mul.d	$ra, $t1, $ra
	add.d	$s7, $s7, $ra
	ld.h	$ra, $s5, 32
	mul.d	$s8, $t2, $s8
	add.d	$s7, $s7, $s8
	ld.h	$s8, $s5, 34
	mul.d	$ra, $t4, $ra
	add.d	$s7, $s7, $ra
	ld.h	$ra, $s5, 36
	mul.d	$s8, $t5, $s8
	ld.h	$s4, $s5, 38
	add.d	$s7, $s7, $s8
	mul.d	$s8, $t6, $ra
	add.d	$s7, $s7, $s8
	mul.d	$s4, $t7, $s4
	add.d	$s4, $s7, $s4
	slt	$s7, $a1, $s4
	maskeqz	$s4, $s4, $s7
	masknez	$a1, $a1, $s7
	or	$a1, $s4, $a1
	addi.d	$s5, $s5, -2
	masknez	$t3, $t3, $s7
	maskeqz	$s4, $t8, $s7
	addi.d	$t8, $t8, 1
	or	$t3, $s4, $t3
	ori	$s4, $zero, 121
	bne	$t8, $s4, .LBB0_4
# %bb.5:                                # %vector.ph40
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	st.h	$t3, $s3, 0
	slli.d	$a0, $a1, 1
	ori	$a1, $zero, 6
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a2
	srl.d	$s0, $a0, $a1
	ori	$fp, $zero, 16
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	beqz	$s0, .LBB0_16
# %bb.6:
	ext.w.h	$a0, $t3
	slli.d	$a1, $a0, 1
	sub.d	$a1, $s2, $a1
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 8
	vinsgr2vr.d	$vr1, $a2, 0
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a2, %pc_lo12(.LCPI0_0)
	vinsgr2vr.d	$vr2, $a1, 0
	vsrai.h	$vr1, $vr1, 3
	vsrai.h	$vr2, $vr2, 3
	xvpermi.d	$xr1, $xr1, 68
	xvori.b	$xr3, $xr0, 0
	xvshuf.h	$xr3, $xr0, $xr1
	xvslli.d	$xr1, $xr3, 48
	xvsrai.d	$xr3, $xr1, 48
	xvpermi.d	$xr1, $xr2, 68
	xvori.b	$xr2, $xr0, 0
	xvshuf.h	$xr2, $xr0, $xr1
	ori	$a1, $zero, 8
	sub.d	$a1, $a1, $a0
	alsl.d	$a2, $a1, $s2, 1
	slli.d	$a1, $a1, 1
	ldx.d	$a1, $s2, $a1
	ld.d	$a2, $a2, 8
	xvslli.d	$xr1, $xr2, 48
	xvsrai.d	$xr4, $xr1, 48
	vinsgr2vr.d	$vr1, $a1, 0
	vinsgr2vr.d	$vr2, $a2, 0
	vsrai.h	$vr1, $vr1, 3
	vsrai.h	$vr2, $vr2, 3
	xvpermi.d	$xr1, $xr1, 68
	xvori.b	$xr5, $xr0, 0
	xvshuf.h	$xr5, $xr0, $xr1
	xvslli.d	$xr1, $xr5, 48
	xvsrai.d	$xr1, $xr1, 48
	xvpermi.d	$xr2, $xr2, 68
	xvori.b	$xr5, $xr0, 0
	xvshuf.h	$xr5, $xr0, $xr2
	xvslli.d	$xr2, $xr5, 48
	xvsrai.d	$xr2, $xr2, 48
	xvmul.d	$xr1, $xr1, $xr1
	xvmul.d	$xr2, $xr2, $xr2
	sub.d	$a1, $fp, $a0
	alsl.d	$a2, $a1, $s2, 1
	slli.d	$a1, $a1, 1
	ldx.d	$a1, $s2, $a1
	ld.d	$a2, $a2, 8
	xvmadd.d	$xr1, $xr3, $xr3
	xvmadd.d	$xr2, $xr4, $xr4
	vinsgr2vr.d	$vr3, $a1, 0
	vinsgr2vr.d	$vr4, $a2, 0
	vsrai.h	$vr3, $vr3, 3
	vsrai.h	$vr4, $vr4, 3
	xvpermi.d	$xr3, $xr3, 68
	xvori.b	$xr5, $xr0, 0
	xvshuf.h	$xr5, $xr0, $xr3
	xvslli.d	$xr3, $xr5, 48
	xvsrai.d	$xr3, $xr3, 48
	xvpermi.d	$xr4, $xr4, 68
	xvori.b	$xr5, $xr0, 0
	xvshuf.h	$xr5, $xr0, $xr4
	xvslli.d	$xr4, $xr5, 48
	xvsrai.d	$xr4, $xr4, 48
	ori	$a1, $zero, 24
	sub.d	$a1, $a1, $a0
	alsl.d	$a2, $a1, $s2, 1
	slli.d	$a1, $a1, 1
	ldx.d	$a1, $s2, $a1
	ld.d	$a2, $a2, 8
	xvmadd.d	$xr1, $xr3, $xr3
	xvmadd.d	$xr2, $xr4, $xr4
	vinsgr2vr.d	$vr3, $a1, 0
	vinsgr2vr.d	$vr4, $a2, 0
	vsrai.h	$vr3, $vr3, 3
	vsrai.h	$vr4, $vr4, 3
	xvpermi.d	$xr3, $xr3, 68
	xvori.b	$xr5, $xr0, 0
	xvshuf.h	$xr5, $xr0, $xr3
	xvslli.d	$xr3, $xr5, 48
	xvsrai.d	$xr3, $xr3, 48
	xvpermi.d	$xr4, $xr4, 68
	xvori.b	$xr5, $xr0, 0
	xvshuf.h	$xr5, $xr0, $xr4
	xvslli.d	$xr4, $xr5, 48
	xvsrai.d	$xr4, $xr4, 48
	ori	$a1, $zero, 32
	sub.d	$a0, $a1, $a0
	alsl.d	$a1, $a0, $s2, 1
	slli.d	$a0, $a0, 1
	ldx.d	$a0, $s2, $a0
	ld.d	$a1, $a1, 8
	xvmadd.d	$xr1, $xr3, $xr3
	xvmadd.d	$xr2, $xr4, $xr4
	vinsgr2vr.d	$vr3, $a0, 0
	vinsgr2vr.d	$vr4, $a1, 0
	vsrai.h	$vr3, $vr3, 3
	vsrai.h	$vr4, $vr4, 3
	xvpermi.d	$xr3, $xr3, 68
	xvori.b	$xr5, $xr0, 0
	xvshuf.h	$xr5, $xr0, $xr3
	xvslli.d	$xr3, $xr5, 48
	xvsrai.d	$xr3, $xr3, 48
	xvpermi.d	$xr4, $xr4, 68
	xvshuf.h	$xr0, $xr0, $xr4
	xvslli.d	$xr0, $xr0, 48
	xvsrai.d	$xr0, $xr0, 48
	xvmadd.d	$xr1, $xr3, $xr3
	xvmadd.d	$xr2, $xr0, $xr0
	xvadd.d	$xr0, $xr2, $xr1
	xvhaddw.q.d	$xr0, $xr0, $xr0
	xvpermi.d	$xr1, $xr0, 2
	xvadd.d	$xr0, $xr1, $xr0
	xvpickve2gr.d	$a0, $xr0, 0
	slli.d	$s5, $a0, 1
	bge	$s0, $s5, .LBB0_10
# %bb.7:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(gsm_norm)
	jirl	$ra, $ra, 0
	sll.d	$a1, $s0, $a0
	addi.w	$a1, $a1, 0
	sll.d	$a0, $s5, $a0
	srli.d	$a0, $a0, 16
	srai.d	$s0, $a1, 16
	pcalau12i	$a1, %got_pc_hi20(gsm_DLB)
	ld.d	$s1, $a1, %got_pc_lo12(gsm_DLB)
	ld.h	$a1, $s1, 0
	ext.w.h	$s5, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(gsm_mult)
	jirl	$ra, $ra, 0
	bge	$a0, $s0, .LBB0_16
# %bb.8:
	ld.h	$a1, $s1, 2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(gsm_mult)
	jirl	$ra, $ra, 0
	bge	$a0, $s0, .LBB0_28
# %bb.9:
	ld.h	$a1, $s1, 4
	move	$a0, $s5
	pcaddu18i	$ra, %call36(gsm_mult)
	jirl	$ra, $ra, 0
	bge	$a0, $s0, .LBB0_36
.LBB0_10:                               # %.preheader64.i
	ori	$a0, $zero, 3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.h	$a0, $a1, 0
	ld.h	$a0, $s3, 0
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a2, $t0, $t1
	ori	$a1, $zero, 16
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	bltu	$a2, $a1, .LBB0_25
# %bb.11:                               # %.preheader64.i
	alsl.d	$a2, $a0, $t1, 1
	sub.d	$a2, $a2, $s2
	bltu	$a2, $a1, .LBB0_25
# %bb.12:                               # %.preheader64.i
	sub.d	$a2, $a7, $t1
	ori	$a1, $zero, 16
	bltu	$a2, $a1, .LBB0_25
# %bb.13:                               # %.preheader64.i
	alsl.d	$a2, $a0, $t0, 1
	sub.d	$a2, $a2, $s2
	bltu	$a2, $a1, .LBB0_25
# %bb.14:                               # %.preheader64.i
	sub.d	$a1, $t0, $a7
	ori	$a2, $zero, 15
	bgeu	$a2, $a1, .LBB0_25
# %bb.15:                               # %vector.body96
	slli.d	$a1, $a0, 1
	sub.d	$a1, $s2, $a1
	vld	$vr0, $a1, 0
	vpickve2gr.h	$a1, $vr0, 0
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 0
	vpickve2gr.h	$a1, $vr0, 1
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 1
	vpickve2gr.h	$a1, $vr0, 2
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 2
	vpickve2gr.h	$a1, $vr0, 3
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 3
	vpickve2gr.h	$a1, $vr0, 4
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 4
	vpickve2gr.h	$a1, $vr0, 5
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 5
	vpickve2gr.h	$a1, $vr0, 6
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 6
	vpickve2gr.h	$a1, $vr0, 7
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 7
	xvldi	$xr0, -3776
	xvldi	$xr1, -2433
	xvori.b	$xr3, $xr0, 0
	xvmadd.w	$xr3, $xr2, $xr1
	xvsrli.w	$xr2, $xr3, 15
	xvpickve2gr.w	$a1, $xr2, 0
	vinsgr2vr.h	$vr3, $a1, 0
	xvpickve2gr.w	$a1, $xr2, 1
	vinsgr2vr.h	$vr3, $a1, 1
	xvpickve2gr.w	$a1, $xr2, 2
	vinsgr2vr.h	$vr3, $a1, 2
	xvpickve2gr.w	$a1, $xr2, 3
	vinsgr2vr.h	$vr3, $a1, 3
	xvpickve2gr.w	$a1, $xr2, 4
	vinsgr2vr.h	$vr3, $a1, 4
	xvpickve2gr.w	$a1, $xr2, 5
	vinsgr2vr.h	$vr3, $a1, 5
	xvpickve2gr.w	$a1, $xr2, 6
	vinsgr2vr.h	$vr3, $a1, 6
	xvpickve2gr.w	$a1, $xr2, 7
	vinsgr2vr.h	$vr3, $a1, 7
	vst	$vr3, $t1, 0
	vld	$vr2, $a7, 0
	vssub.h	$vr2, $vr2, $vr3
	vst	$vr2, $t0, 0
	ori	$a1, $zero, 8
	sub.d	$a1, $a1, $a0
	slli.d	$a1, $a1, 1
	vldx	$vr2, $s2, $a1
	vpickve2gr.h	$a1, $vr2, 0
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 0
	vpickve2gr.h	$a1, $vr2, 1
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 1
	vpickve2gr.h	$a1, $vr2, 2
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 2
	vpickve2gr.h	$a1, $vr2, 3
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 3
	vpickve2gr.h	$a1, $vr2, 4
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 4
	vpickve2gr.h	$a1, $vr2, 5
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 5
	vpickve2gr.h	$a1, $vr2, 6
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 6
	vpickve2gr.h	$a1, $vr2, 7
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 7
	xvori.b	$xr2, $xr0, 0
	xvmadd.w	$xr2, $xr3, $xr1
	xvsrli.w	$xr2, $xr2, 15
	xvpickve2gr.w	$a1, $xr2, 0
	vinsgr2vr.h	$vr3, $a1, 0
	xvpickve2gr.w	$a1, $xr2, 1
	vinsgr2vr.h	$vr3, $a1, 1
	xvpickve2gr.w	$a1, $xr2, 2
	vinsgr2vr.h	$vr3, $a1, 2
	xvpickve2gr.w	$a1, $xr2, 3
	vinsgr2vr.h	$vr3, $a1, 3
	xvpickve2gr.w	$a1, $xr2, 4
	vinsgr2vr.h	$vr3, $a1, 4
	xvpickve2gr.w	$a1, $xr2, 5
	vinsgr2vr.h	$vr3, $a1, 5
	xvpickve2gr.w	$a1, $xr2, 6
	vinsgr2vr.h	$vr3, $a1, 6
	xvpickve2gr.w	$a1, $xr2, 7
	vinsgr2vr.h	$vr3, $a1, 7
	vst	$vr3, $t1, 16
	vld	$vr2, $a7, 16
	vssub.h	$vr2, $vr2, $vr3
	vst	$vr2, $t0, 16
	ori	$a1, $zero, 16
	sub.d	$a1, $a1, $a0
	slli.d	$a1, $a1, 1
	vldx	$vr2, $s2, $a1
	vpickve2gr.h	$a1, $vr2, 0
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 0
	vpickve2gr.h	$a1, $vr2, 1
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 1
	vpickve2gr.h	$a1, $vr2, 2
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 2
	vpickve2gr.h	$a1, $vr2, 3
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 3
	vpickve2gr.h	$a1, $vr2, 4
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 4
	vpickve2gr.h	$a1, $vr2, 5
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 5
	vpickve2gr.h	$a1, $vr2, 6
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 6
	vpickve2gr.h	$a1, $vr2, 7
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 7
	xvori.b	$xr2, $xr0, 0
	xvmadd.w	$xr2, $xr3, $xr1
	xvsrli.w	$xr2, $xr2, 15
	xvpickve2gr.w	$a1, $xr2, 0
	vinsgr2vr.h	$vr3, $a1, 0
	xvpickve2gr.w	$a1, $xr2, 1
	vinsgr2vr.h	$vr3, $a1, 1
	xvpickve2gr.w	$a1, $xr2, 2
	vinsgr2vr.h	$vr3, $a1, 2
	xvpickve2gr.w	$a1, $xr2, 3
	vinsgr2vr.h	$vr3, $a1, 3
	xvpickve2gr.w	$a1, $xr2, 4
	vinsgr2vr.h	$vr3, $a1, 4
	xvpickve2gr.w	$a1, $xr2, 5
	vinsgr2vr.h	$vr3, $a1, 5
	xvpickve2gr.w	$a1, $xr2, 6
	vinsgr2vr.h	$vr3, $a1, 6
	xvpickve2gr.w	$a1, $xr2, 7
	vinsgr2vr.h	$vr3, $a1, 7
	vst	$vr3, $t1, 32
	vld	$vr2, $a7, 32
	vssub.h	$vr2, $vr2, $vr3
	vst	$vr2, $t0, 32
	ori	$a1, $zero, 24
	sub.d	$a1, $a1, $a0
	slli.d	$a1, $a1, 1
	vldx	$vr2, $s2, $a1
	vpickve2gr.h	$a1, $vr2, 0
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 0
	vpickve2gr.h	$a1, $vr2, 1
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 1
	vpickve2gr.h	$a1, $vr2, 2
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 2
	vpickve2gr.h	$a1, $vr2, 3
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 3
	vpickve2gr.h	$a1, $vr2, 4
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 4
	vpickve2gr.h	$a1, $vr2, 5
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 5
	vpickve2gr.h	$a1, $vr2, 6
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 6
	vpickve2gr.h	$a1, $vr2, 7
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 7
	xvori.b	$xr2, $xr0, 0
	xvmadd.w	$xr2, $xr3, $xr1
	xvsrli.w	$xr2, $xr2, 15
	xvpickve2gr.w	$a1, $xr2, 0
	vinsgr2vr.h	$vr3, $a1, 0
	xvpickve2gr.w	$a1, $xr2, 1
	vinsgr2vr.h	$vr3, $a1, 1
	xvpickve2gr.w	$a1, $xr2, 2
	vinsgr2vr.h	$vr3, $a1, 2
	xvpickve2gr.w	$a1, $xr2, 3
	vinsgr2vr.h	$vr3, $a1, 3
	xvpickve2gr.w	$a1, $xr2, 4
	vinsgr2vr.h	$vr3, $a1, 4
	xvpickve2gr.w	$a1, $xr2, 5
	vinsgr2vr.h	$vr3, $a1, 5
	xvpickve2gr.w	$a1, $xr2, 6
	vinsgr2vr.h	$vr3, $a1, 6
	xvpickve2gr.w	$a1, $xr2, 7
	vinsgr2vr.h	$vr3, $a1, 7
	vst	$vr3, $t1, 48
	vld	$vr2, $a7, 48
	vssub.h	$vr2, $vr2, $vr3
	vst	$vr2, $t0, 48
	ori	$a1, $zero, 32
	sub.d	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	vldx	$vr2, $s2, $a0
	vpickve2gr.h	$a0, $vr2, 0
	ext.w.h	$a0, $a0
	xvinsgr2vr.w	$xr3, $a0, 0
	vpickve2gr.h	$a0, $vr2, 1
	ext.w.h	$a0, $a0
	xvinsgr2vr.w	$xr3, $a0, 1
	vpickve2gr.h	$a0, $vr2, 2
	ext.w.h	$a0, $a0
	xvinsgr2vr.w	$xr3, $a0, 2
	vpickve2gr.h	$a0, $vr2, 3
	ext.w.h	$a0, $a0
	xvinsgr2vr.w	$xr3, $a0, 3
	vpickve2gr.h	$a0, $vr2, 4
	ext.w.h	$a0, $a0
	xvinsgr2vr.w	$xr3, $a0, 4
	vpickve2gr.h	$a0, $vr2, 5
	ext.w.h	$a0, $a0
	xvinsgr2vr.w	$xr3, $a0, 5
	vpickve2gr.h	$a0, $vr2, 6
	ext.w.h	$a0, $a0
	xvinsgr2vr.w	$xr3, $a0, 6
	vpickve2gr.h	$a0, $vr2, 7
	ext.w.h	$a0, $a0
	xvinsgr2vr.w	$xr3, $a0, 7
	xvmadd.w	$xr0, $xr3, $xr1
	xvsrli.w	$xr0, $xr0, 15
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.h	$vr1, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.h	$vr1, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.h	$vr1, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.h	$vr1, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.h	$vr1, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.h	$vr1, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	vinsgr2vr.h	$vr1, $a0, 7
	vst	$vr1, $t1, 64
	vld	$vr0, $a7, 64
	vssub.h	$vr0, $vr0, $vr1
	vst	$vr0, $t0, 64
	b	.LBB0_27
.LBB0_16:                               # %.preheader.i
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.h	$zero, $a0, 0
	ld.h	$a0, $s3, 0
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a1, $t1, $t2
	ld.d	$t0, $sp, 64                    # 8-byte Folded Reload
	bltu	$a1, $fp, .LBB0_23
# %bb.17:                               # %.preheader.i
	alsl.d	$a1, $a0, $t2, 1
	sub.d	$a2, $a1, $s2
	ori	$a1, $zero, 16
	bltu	$a2, $a1, .LBB0_23
# %bb.18:                               # %.preheader.i
	sub.d	$a2, $t0, $t2
	bltu	$a2, $a1, .LBB0_23
# %bb.19:                               # %.preheader.i
	alsl.d	$a1, $a0, $t1, 1
	sub.d	$a1, $a1, $s2
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB0_23
# %bb.20:                               # %.preheader.i
	sub.d	$a1, $t1, $t0
	ori	$a2, $zero, 15
	bgeu	$a2, $a1, .LBB0_23
# %bb.21:                               # %vector.body115
	slli.d	$a1, $a0, 1
	sub.d	$a1, $s2, $a1
	vld	$vr0, $a1, 0
	vpickve2gr.h	$a1, $vr0, 0
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 0
	vpickve2gr.h	$a1, $vr0, 1
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 1
	vpickve2gr.h	$a1, $vr0, 2
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 2
	vpickve2gr.h	$a1, $vr0, 3
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 3
	vpickve2gr.h	$a1, $vr0, 4
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 4
	vpickve2gr.h	$a1, $vr0, 5
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 5
	vpickve2gr.h	$a1, $vr0, 6
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 6
	vpickve2gr.h	$a1, $vr0, 7
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 7
	ori	$a1, $zero, 3277
.LBB0_22:                               # %Long_term_analysis_filtering.exit
	xvldi	$xr0, -3776
	xvreplgr2vr.w	$xr1, $a1
	xvori.b	$xr3, $xr0, 0
	xvmadd.w	$xr3, $xr2, $xr1
	xvsrli.w	$xr2, $xr3, 15
	xvpickve2gr.w	$a1, $xr2, 0
	vinsgr2vr.h	$vr3, $a1, 0
	xvpickve2gr.w	$a1, $xr2, 1
	vinsgr2vr.h	$vr3, $a1, 1
	xvpickve2gr.w	$a1, $xr2, 2
	vinsgr2vr.h	$vr3, $a1, 2
	xvpickve2gr.w	$a1, $xr2, 3
	vinsgr2vr.h	$vr3, $a1, 3
	xvpickve2gr.w	$a1, $xr2, 4
	vinsgr2vr.h	$vr3, $a1, 4
	xvpickve2gr.w	$a1, $xr2, 5
	vinsgr2vr.h	$vr3, $a1, 5
	xvpickve2gr.w	$a1, $xr2, 6
	vinsgr2vr.h	$vr3, $a1, 6
	xvpickve2gr.w	$a1, $xr2, 7
	vinsgr2vr.h	$vr3, $a1, 7
	vst	$vr3, $t2, 0
	vld	$vr2, $t0, 0
	vssub.h	$vr2, $vr2, $vr3
	vst	$vr2, $t1, 0
	ori	$a1, $zero, 8
	sub.d	$a1, $a1, $a0
	slli.d	$a1, $a1, 1
	vldx	$vr2, $s2, $a1
	vpickve2gr.h	$a1, $vr2, 0
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 0
	vpickve2gr.h	$a1, $vr2, 1
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 1
	vpickve2gr.h	$a1, $vr2, 2
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 2
	vpickve2gr.h	$a1, $vr2, 3
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 3
	vpickve2gr.h	$a1, $vr2, 4
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 4
	vpickve2gr.h	$a1, $vr2, 5
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 5
	vpickve2gr.h	$a1, $vr2, 6
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 6
	vpickve2gr.h	$a1, $vr2, 7
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 7
	xvori.b	$xr2, $xr0, 0
	xvmadd.w	$xr2, $xr3, $xr1
	xvsrli.w	$xr2, $xr2, 15
	xvpickve2gr.w	$a1, $xr2, 0
	vinsgr2vr.h	$vr3, $a1, 0
	xvpickve2gr.w	$a1, $xr2, 1
	vinsgr2vr.h	$vr3, $a1, 1
	xvpickve2gr.w	$a1, $xr2, 2
	vinsgr2vr.h	$vr3, $a1, 2
	xvpickve2gr.w	$a1, $xr2, 3
	vinsgr2vr.h	$vr3, $a1, 3
	xvpickve2gr.w	$a1, $xr2, 4
	vinsgr2vr.h	$vr3, $a1, 4
	xvpickve2gr.w	$a1, $xr2, 5
	vinsgr2vr.h	$vr3, $a1, 5
	xvpickve2gr.w	$a1, $xr2, 6
	vinsgr2vr.h	$vr3, $a1, 6
	xvpickve2gr.w	$a1, $xr2, 7
	vinsgr2vr.h	$vr3, $a1, 7
	vst	$vr3, $t2, 16
	vld	$vr2, $t0, 16
	vssub.h	$vr2, $vr2, $vr3
	vst	$vr2, $t1, 16
	ori	$a1, $zero, 16
	sub.d	$a1, $a1, $a0
	slli.d	$a1, $a1, 1
	vldx	$vr2, $s2, $a1
	vpickve2gr.h	$a1, $vr2, 0
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 0
	vpickve2gr.h	$a1, $vr2, 1
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 1
	vpickve2gr.h	$a1, $vr2, 2
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 2
	vpickve2gr.h	$a1, $vr2, 3
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 3
	vpickve2gr.h	$a1, $vr2, 4
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 4
	vpickve2gr.h	$a1, $vr2, 5
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 5
	vpickve2gr.h	$a1, $vr2, 6
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 6
	vpickve2gr.h	$a1, $vr2, 7
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 7
	xvori.b	$xr2, $xr0, 0
	xvmadd.w	$xr2, $xr3, $xr1
	xvsrli.w	$xr2, $xr2, 15
	xvpickve2gr.w	$a1, $xr2, 0
	vinsgr2vr.h	$vr3, $a1, 0
	xvpickve2gr.w	$a1, $xr2, 1
	vinsgr2vr.h	$vr3, $a1, 1
	xvpickve2gr.w	$a1, $xr2, 2
	vinsgr2vr.h	$vr3, $a1, 2
	xvpickve2gr.w	$a1, $xr2, 3
	vinsgr2vr.h	$vr3, $a1, 3
	xvpickve2gr.w	$a1, $xr2, 4
	vinsgr2vr.h	$vr3, $a1, 4
	xvpickve2gr.w	$a1, $xr2, 5
	vinsgr2vr.h	$vr3, $a1, 5
	xvpickve2gr.w	$a1, $xr2, 6
	vinsgr2vr.h	$vr3, $a1, 6
	xvpickve2gr.w	$a1, $xr2, 7
	vinsgr2vr.h	$vr3, $a1, 7
	vst	$vr3, $t2, 32
	vld	$vr2, $t0, 32
	vssub.h	$vr2, $vr2, $vr3
	vst	$vr2, $t1, 32
	ori	$a1, $zero, 24
	sub.d	$a1, $a1, $a0
	slli.d	$a1, $a1, 1
	vldx	$vr2, $s2, $a1
	vpickve2gr.h	$a1, $vr2, 0
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 0
	vpickve2gr.h	$a1, $vr2, 1
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 1
	vpickve2gr.h	$a1, $vr2, 2
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 2
	vpickve2gr.h	$a1, $vr2, 3
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 3
	vpickve2gr.h	$a1, $vr2, 4
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 4
	vpickve2gr.h	$a1, $vr2, 5
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 5
	vpickve2gr.h	$a1, $vr2, 6
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 6
	vpickve2gr.h	$a1, $vr2, 7
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr3, $a1, 7
	xvori.b	$xr2, $xr0, 0
	xvmadd.w	$xr2, $xr3, $xr1
	xvsrli.w	$xr2, $xr2, 15
	xvpickve2gr.w	$a1, $xr2, 0
	vinsgr2vr.h	$vr3, $a1, 0
	xvpickve2gr.w	$a1, $xr2, 1
	vinsgr2vr.h	$vr3, $a1, 1
	xvpickve2gr.w	$a1, $xr2, 2
	vinsgr2vr.h	$vr3, $a1, 2
	xvpickve2gr.w	$a1, $xr2, 3
	vinsgr2vr.h	$vr3, $a1, 3
	xvpickve2gr.w	$a1, $xr2, 4
	vinsgr2vr.h	$vr3, $a1, 4
	xvpickve2gr.w	$a1, $xr2, 5
	vinsgr2vr.h	$vr3, $a1, 5
	xvpickve2gr.w	$a1, $xr2, 6
	vinsgr2vr.h	$vr3, $a1, 6
	xvpickve2gr.w	$a1, $xr2, 7
	vinsgr2vr.h	$vr3, $a1, 7
	vst	$vr3, $t2, 48
	vld	$vr2, $t0, 48
	vssub.h	$vr2, $vr2, $vr3
	vst	$vr2, $t1, 48
	ori	$a1, $zero, 32
	sub.d	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	vldx	$vr2, $s2, $a0
	vpickve2gr.h	$a0, $vr2, 0
	ext.w.h	$a0, $a0
	xvinsgr2vr.w	$xr3, $a0, 0
	vpickve2gr.h	$a0, $vr2, 1
	ext.w.h	$a0, $a0
	xvinsgr2vr.w	$xr3, $a0, 1
	vpickve2gr.h	$a0, $vr2, 2
	ext.w.h	$a0, $a0
	xvinsgr2vr.w	$xr3, $a0, 2
	vpickve2gr.h	$a0, $vr2, 3
	ext.w.h	$a0, $a0
	xvinsgr2vr.w	$xr3, $a0, 3
	vpickve2gr.h	$a0, $vr2, 4
	ext.w.h	$a0, $a0
	xvinsgr2vr.w	$xr3, $a0, 4
	vpickve2gr.h	$a0, $vr2, 5
	ext.w.h	$a0, $a0
	xvinsgr2vr.w	$xr3, $a0, 5
	vpickve2gr.h	$a0, $vr2, 6
	ext.w.h	$a0, $a0
	xvinsgr2vr.w	$xr3, $a0, 6
	vpickve2gr.h	$a0, $vr2, 7
	ext.w.h	$a0, $a0
	xvinsgr2vr.w	$xr3, $a0, 7
	xvmadd.w	$xr0, $xr3, $xr1
	xvsrli.w	$xr0, $xr0, 15
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.h	$vr1, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.h	$vr1, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.h	$vr1, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.h	$vr1, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.h	$vr1, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.h	$vr1, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.h	$vr1, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	vinsgr2vr.h	$vr1, $a0, 7
	vst	$vr1, $t2, 64
	vld	$vr0, $t0, 64
	vssub.h	$vr0, $vr0, $vr1
	vst	$vr0, $t1, 64
	b	.LBB0_27
.LBB0_23:                               # %scalar.ph113.preheader
	move	$a1, $zero
	slli.d	$a0, $a0, 1
	sub.d	$a0, $s2, $a0
	ori	$a2, $zero, 3277
	lu12i.w	$a3, 4
	lu12i.w	$a4, -8
	ori	$a5, $zero, 80
	ld.d	$t3, $sp, 8                     # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_24:                               # %scalar.ph113
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$a6, $a0, $a1
	mul.d	$a6, $a6, $a2
	add.d	$a6, $a6, $a3
	bstrpick.d	$a6, $a6, 31, 15
	stx.h	$a6, $t2, $a1
	ldx.h	$a7, $t0, $a1
	ext.w.h	$a6, $a6
	sub.d	$a6, $a7, $a6
	slt	$a7, $a6, $t3
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $t3, $a7
	or	$a6, $a6, $a7
	slt	$a7, $a4, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a4, $a7
	or	$a6, $a6, $a7
	stx.h	$a6, $t1, $a1
	addi.d	$a1, $a1, 2
	bne	$a1, $a5, .LBB0_24
	b	.LBB0_27
.LBB0_25:                               # %scalar.ph94.preheader
	move	$a1, $zero
	slli.d	$a0, $a0, 1
	sub.d	$a0, $s2, $a0
	lu12i.w	$a2, 4
	lu12i.w	$a3, -8
	ori	$a4, $zero, 80
	ld.d	$t2, $sp, 8                     # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_26:                               # %scalar.ph94
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$a5, $a0, $a1
	slli.d	$a6, $a5, 15
	sub.d	$a5, $a6, $a5
	add.d	$a5, $a5, $a2
	bstrpick.d	$a5, $a5, 31, 15
	stx.h	$a5, $t1, $a1
	ldx.h	$a6, $a7, $a1
	ext.w.h	$a5, $a5
	sub.d	$a5, $a6, $a5
	slt	$a6, $a5, $t2
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $t2, $a6
	or	$a5, $a5, $a6
	slt	$a6, $a3, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a3, $a6
	or	$a5, $a5, $a6
	stx.h	$a5, $t0, $a1
	addi.d	$a1, $a1, 2
	bne	$a1, $a4, .LBB0_26
.LBB0_27:                               # %Long_term_analysis_filtering.exit
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB0_28:                               # %.preheader60.i
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.h	$a0, $a1, 0
	ld.h	$a0, $s3, 0
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a2, $t1, $t2
	ori	$a1, $zero, 16
	ld.d	$t0, $sp, 64                    # 8-byte Folded Reload
	bltu	$a2, $a1, .LBB0_34
# %bb.29:                               # %.preheader60.i
	alsl.d	$a2, $a0, $t2, 1
	sub.d	$a2, $a2, $s2
	bltu	$a2, $a1, .LBB0_34
# %bb.30:                               # %.preheader60.i
	sub.d	$a2, $t0, $t2
	ori	$a1, $zero, 16
	bltu	$a2, $a1, .LBB0_34
# %bb.31:                               # %.preheader60.i
	alsl.d	$a2, $a0, $t1, 1
	sub.d	$a2, $a2, $s2
	bltu	$a2, $a1, .LBB0_34
# %bb.32:                               # %.preheader60.i
	sub.d	$a1, $t1, $t0
	ori	$a2, $zero, 15
	bgeu	$a2, $a1, .LBB0_34
# %bb.33:                               # %vector.body58
	slli.d	$a1, $a0, 1
	sub.d	$a1, $s2, $a1
	vld	$vr0, $a1, 0
	vpickve2gr.h	$a1, $vr0, 0
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 0
	vpickve2gr.h	$a1, $vr0, 1
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 1
	vpickve2gr.h	$a1, $vr0, 2
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 2
	vpickve2gr.h	$a1, $vr0, 3
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 3
	vpickve2gr.h	$a1, $vr0, 4
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 4
	vpickve2gr.h	$a1, $vr0, 5
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 5
	vpickve2gr.h	$a1, $vr0, 6
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 6
	vpickve2gr.h	$a1, $vr0, 7
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 7
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3277
	b	.LBB0_22
.LBB0_34:                               # %scalar.ph56.preheader
	move	$a1, $zero
	slli.d	$a0, $a0, 1
	sub.d	$a0, $s2, $a0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 3277
	lu12i.w	$a3, 4
	lu12i.w	$a4, -8
	ori	$a5, $zero, 80
	ld.d	$t3, $sp, 8                     # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_35:                               # %scalar.ph56
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$a6, $a0, $a1
	mul.d	$a6, $a6, $a2
	add.d	$a6, $a6, $a3
	bstrpick.d	$a6, $a6, 31, 15
	stx.h	$a6, $t2, $a1
	ldx.h	$a7, $t0, $a1
	ext.w.h	$a6, $a6
	sub.d	$a6, $a7, $a6
	slt	$a7, $a6, $t3
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $t3, $a7
	or	$a6, $a6, $a7
	slt	$a7, $a4, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a4, $a7
	or	$a6, $a6, $a7
	stx.h	$a6, $t1, $a1
	addi.d	$a1, $a1, 2
	bne	$a1, $a5, .LBB0_35
	b	.LBB0_27
.LBB0_36:                               # %.preheader62.i
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.h	$a0, $a1, 0
	ld.h	$a0, $s3, 0
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a2, $t1, $t2
	ori	$a1, $zero, 16
	ld.d	$t0, $sp, 64                    # 8-byte Folded Reload
	bltu	$a2, $a1, .LBB0_42
# %bb.37:                               # %.preheader62.i
	alsl.d	$a2, $a0, $t2, 1
	sub.d	$a2, $a2, $s2
	bltu	$a2, $a1, .LBB0_42
# %bb.38:                               # %.preheader62.i
	sub.d	$a2, $t0, $t2
	ori	$a1, $zero, 16
	bltu	$a2, $a1, .LBB0_42
# %bb.39:                               # %.preheader62.i
	alsl.d	$a2, $a0, $t1, 1
	sub.d	$a2, $a2, $s2
	bltu	$a2, $a1, .LBB0_42
# %bb.40:                               # %.preheader62.i
	sub.d	$a1, $t1, $t0
	ori	$a2, $zero, 15
	bgeu	$a2, $a1, .LBB0_42
# %bb.41:                               # %vector.body77
	slli.d	$a1, $a0, 1
	sub.d	$a1, $s2, $a1
	vld	$vr0, $a1, 0
	vpickve2gr.h	$a1, $vr0, 0
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 0
	vpickve2gr.h	$a1, $vr0, 1
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 1
	vpickve2gr.h	$a1, $vr0, 2
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 2
	vpickve2gr.h	$a1, $vr0, 3
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 3
	vpickve2gr.h	$a1, $vr0, 4
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 4
	vpickve2gr.h	$a1, $vr0, 5
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 5
	vpickve2gr.h	$a1, $vr0, 6
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 6
	vpickve2gr.h	$a1, $vr0, 7
	ext.w.h	$a1, $a1
	xvinsgr2vr.w	$xr2, $a1, 7
	lu12i.w	$a1, 5
	ori	$a1, $a1, 819
	b	.LBB0_22
.LBB0_42:                               # %scalar.ph75.preheader
	move	$a1, $zero
	slli.d	$a0, $a0, 1
	sub.d	$a0, $s2, $a0
	lu12i.w	$a2, 5
	ori	$a2, $a2, 819
	lu12i.w	$a3, 4
	lu12i.w	$a4, -8
	ori	$a5, $zero, 80
	ld.d	$t3, $sp, 8                     # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_43:                               # %scalar.ph75
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$a6, $a0, $a1
	mul.d	$a6, $a6, $a2
	add.d	$a6, $a6, $a3
	bstrpick.d	$a6, $a6, 31, 15
	stx.h	$a6, $t2, $a1
	ldx.h	$a7, $t0, $a1
	ext.w.h	$a6, $a6
	sub.d	$a6, $a7, $a6
	slt	$a7, $a6, $t3
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $t3, $a7
	or	$a6, $a6, $a7
	slt	$a7, $a4, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a4, $a7
	or	$a6, $a6, $a7
	stx.h	$a6, $t1, $a1
	addi.d	$a1, $a1, 2
	bne	$a1, $a5, .LBB0_43
	b	.LBB0_27
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
	xvreplgr2vr.d	$xr0, $a2
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr2, $a1, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr2, $a1, 1
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr2, $a1, 2
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr2, $a1, 3
	vpickve2gr.h	$a1, $vr1, 0
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr3, $a1, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr3, $a1, 1
	vpickve2gr.h	$a1, $vr1, 2
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr3, $a1, 2
	vpickve2gr.h	$a1, $vr1, 3
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr3, $a1, 3
	ori	$a1, $zero, 0
	lu32i.d	$a1, 32768
	xvreplgr2vr.d	$xr1, $a1
	vld	$vr4, $a3, 0
	xvori.b	$xr5, $xr1, 0
	xvmadd.d	$xr5, $xr0, $xr3
	xvori.b	$xr3, $xr1, 0
	xvmadd.d	$xr3, $xr0, $xr2
	xvsrli.d	$xr2, $xr3, 48
	xvsrli.d	$xr3, $xr5, 48
	xvpickve2gr.d	$a1, $xr3, 0
	vinsgr2vr.h	$vr5, $a1, 0
	xvpickve2gr.d	$a1, $xr3, 1
	vinsgr2vr.h	$vr5, $a1, 1
	xvpickve2gr.d	$a1, $xr3, 2
	vinsgr2vr.h	$vr5, $a1, 2
	xvpickve2gr.d	$a1, $xr3, 3
	vinsgr2vr.h	$vr5, $a1, 3
	xvpickve2gr.d	$a1, $xr2, 0
	vinsgr2vr.h	$vr5, $a1, 4
	xvpickve2gr.d	$a1, $xr2, 1
	vinsgr2vr.h	$vr5, $a1, 5
	xvpickve2gr.d	$a1, $xr2, 2
	vinsgr2vr.h	$vr5, $a1, 6
	xvpickve2gr.d	$a1, $xr2, 3
	vinsgr2vr.h	$vr5, $a1, 7
	vsadd.h	$vr2, $vr5, $vr4
	vst	$vr2, $a4, 0
	ori	$a1, $zero, 8
	sub.d	$a1, $a1, $a0
	slli.d	$a1, $a1, 1
	vldx	$vr2, $a4, $a1
	vpickve2gr.h	$a1, $vr2, 4
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr3, $a1, 0
	vpickve2gr.h	$a1, $vr2, 5
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr3, $a1, 1
	vpickve2gr.h	$a1, $vr2, 6
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr3, $a1, 2
	vpickve2gr.h	$a1, $vr2, 7
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr3, $a1, 3
	vpickve2gr.h	$a1, $vr2, 0
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr4, $a1, 0
	vpickve2gr.h	$a1, $vr2, 1
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr4, $a1, 1
	vpickve2gr.h	$a1, $vr2, 2
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr4, $a1, 2
	vpickve2gr.h	$a1, $vr2, 3
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr4, $a1, 3
	vld	$vr2, $a3, 16
	xvori.b	$xr5, $xr1, 0
	xvmadd.d	$xr5, $xr0, $xr4
	xvori.b	$xr4, $xr1, 0
	xvmadd.d	$xr4, $xr0, $xr3
	xvsrli.d	$xr3, $xr4, 48
	xvsrli.d	$xr4, $xr5, 48
	xvpickve2gr.d	$a1, $xr4, 0
	vinsgr2vr.h	$vr5, $a1, 0
	xvpickve2gr.d	$a1, $xr4, 1
	vinsgr2vr.h	$vr5, $a1, 1
	xvpickve2gr.d	$a1, $xr4, 2
	vinsgr2vr.h	$vr5, $a1, 2
	xvpickve2gr.d	$a1, $xr4, 3
	vinsgr2vr.h	$vr5, $a1, 3
	xvpickve2gr.d	$a1, $xr3, 0
	vinsgr2vr.h	$vr5, $a1, 4
	xvpickve2gr.d	$a1, $xr3, 1
	vinsgr2vr.h	$vr5, $a1, 5
	xvpickve2gr.d	$a1, $xr3, 2
	vinsgr2vr.h	$vr5, $a1, 6
	xvpickve2gr.d	$a1, $xr3, 3
	vinsgr2vr.h	$vr5, $a1, 7
	vsadd.h	$vr2, $vr5, $vr2
	vst	$vr2, $a4, 16
	ori	$a1, $zero, 16
	sub.d	$a1, $a1, $a0
	slli.d	$a1, $a1, 1
	vldx	$vr2, $a4, $a1
	vpickve2gr.h	$a1, $vr2, 4
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr3, $a1, 0
	vpickve2gr.h	$a1, $vr2, 5
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr3, $a1, 1
	vpickve2gr.h	$a1, $vr2, 6
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr3, $a1, 2
	vpickve2gr.h	$a1, $vr2, 7
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr3, $a1, 3
	vpickve2gr.h	$a1, $vr2, 0
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr4, $a1, 0
	vpickve2gr.h	$a1, $vr2, 1
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr4, $a1, 1
	vpickve2gr.h	$a1, $vr2, 2
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr4, $a1, 2
	vpickve2gr.h	$a1, $vr2, 3
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr4, $a1, 3
	vld	$vr2, $a3, 32
	xvori.b	$xr5, $xr1, 0
	xvmadd.d	$xr5, $xr0, $xr4
	xvori.b	$xr4, $xr1, 0
	xvmadd.d	$xr4, $xr0, $xr3
	xvsrli.d	$xr3, $xr4, 48
	xvsrli.d	$xr4, $xr5, 48
	xvpickve2gr.d	$a1, $xr4, 0
	vinsgr2vr.h	$vr5, $a1, 0
	xvpickve2gr.d	$a1, $xr4, 1
	vinsgr2vr.h	$vr5, $a1, 1
	xvpickve2gr.d	$a1, $xr4, 2
	vinsgr2vr.h	$vr5, $a1, 2
	xvpickve2gr.d	$a1, $xr4, 3
	vinsgr2vr.h	$vr5, $a1, 3
	xvpickve2gr.d	$a1, $xr3, 0
	vinsgr2vr.h	$vr5, $a1, 4
	xvpickve2gr.d	$a1, $xr3, 1
	vinsgr2vr.h	$vr5, $a1, 5
	xvpickve2gr.d	$a1, $xr3, 2
	vinsgr2vr.h	$vr5, $a1, 6
	xvpickve2gr.d	$a1, $xr3, 3
	vinsgr2vr.h	$vr5, $a1, 7
	vsadd.h	$vr2, $vr5, $vr2
	vst	$vr2, $a4, 32
	ori	$a1, $zero, 24
	sub.d	$a1, $a1, $a0
	slli.d	$a1, $a1, 1
	vldx	$vr2, $a4, $a1
	vpickve2gr.h	$a1, $vr2, 4
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr3, $a1, 0
	vpickve2gr.h	$a1, $vr2, 5
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr3, $a1, 1
	vpickve2gr.h	$a1, $vr2, 6
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr3, $a1, 2
	vpickve2gr.h	$a1, $vr2, 7
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr3, $a1, 3
	vpickve2gr.h	$a1, $vr2, 0
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr4, $a1, 0
	vpickve2gr.h	$a1, $vr2, 1
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr4, $a1, 1
	vpickve2gr.h	$a1, $vr2, 2
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr4, $a1, 2
	vpickve2gr.h	$a1, $vr2, 3
	ext.w.h	$a1, $a1
	xvinsgr2vr.d	$xr4, $a1, 3
	vld	$vr2, $a3, 48
	xvori.b	$xr5, $xr1, 0
	xvmadd.d	$xr5, $xr0, $xr4
	xvori.b	$xr4, $xr1, 0
	xvmadd.d	$xr4, $xr0, $xr3
	xvsrli.d	$xr3, $xr4, 48
	xvsrli.d	$xr4, $xr5, 48
	xvpickve2gr.d	$a1, $xr4, 0
	vinsgr2vr.h	$vr5, $a1, 0
	xvpickve2gr.d	$a1, $xr4, 1
	vinsgr2vr.h	$vr5, $a1, 1
	xvpickve2gr.d	$a1, $xr4, 2
	vinsgr2vr.h	$vr5, $a1, 2
	xvpickve2gr.d	$a1, $xr4, 3
	vinsgr2vr.h	$vr5, $a1, 3
	xvpickve2gr.d	$a1, $xr3, 0
	vinsgr2vr.h	$vr5, $a1, 4
	xvpickve2gr.d	$a1, $xr3, 1
	vinsgr2vr.h	$vr5, $a1, 5
	xvpickve2gr.d	$a1, $xr3, 2
	vinsgr2vr.h	$vr5, $a1, 6
	xvpickve2gr.d	$a1, $xr3, 3
	vinsgr2vr.h	$vr5, $a1, 7
	vsadd.h	$vr2, $vr5, $vr2
	vst	$vr2, $a4, 48
	ori	$a1, $zero, 32
	sub.d	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	vldx	$vr2, $a4, $a0
	vpickve2gr.h	$a0, $vr2, 4
	ext.w.h	$a0, $a0
	xvinsgr2vr.d	$xr3, $a0, 0
	vpickve2gr.h	$a0, $vr2, 5
	ext.w.h	$a0, $a0
	xvinsgr2vr.d	$xr3, $a0, 1
	vpickve2gr.h	$a0, $vr2, 6
	ext.w.h	$a0, $a0
	xvinsgr2vr.d	$xr3, $a0, 2
	vpickve2gr.h	$a0, $vr2, 7
	ext.w.h	$a0, $a0
	xvinsgr2vr.d	$xr3, $a0, 3
	vpickve2gr.h	$a0, $vr2, 0
	ext.w.h	$a0, $a0
	xvinsgr2vr.d	$xr4, $a0, 0
	vpickve2gr.h	$a0, $vr2, 1
	ext.w.h	$a0, $a0
	xvinsgr2vr.d	$xr4, $a0, 1
	vpickve2gr.h	$a0, $vr2, 2
	ext.w.h	$a0, $a0
	xvinsgr2vr.d	$xr4, $a0, 2
	vpickve2gr.h	$a0, $vr2, 3
	ext.w.h	$a0, $a0
	xvinsgr2vr.d	$xr4, $a0, 3
	vld	$vr2, $a3, 64
	xvori.b	$xr5, $xr1, 0
	xvmadd.d	$xr5, $xr0, $xr4
	xvmadd.d	$xr1, $xr0, $xr3
	xvsrli.d	$xr0, $xr1, 48
	xvsrli.d	$xr1, $xr5, 48
	xvpickve2gr.d	$a0, $xr1, 0
	vinsgr2vr.h	$vr3, $a0, 0
	xvpickve2gr.d	$a0, $xr1, 1
	vinsgr2vr.h	$vr3, $a0, 1
	xvpickve2gr.d	$a0, $xr1, 2
	vinsgr2vr.h	$vr3, $a0, 2
	xvpickve2gr.d	$a0, $xr1, 3
	vinsgr2vr.h	$vr3, $a0, 3
	xvpickve2gr.d	$a0, $xr0, 0
	vinsgr2vr.h	$vr3, $a0, 4
	xvpickve2gr.d	$a0, $xr0, 1
	vinsgr2vr.h	$vr3, $a0, 5
	xvpickve2gr.d	$a0, $xr0, 2
	vinsgr2vr.h	$vr3, $a0, 6
	xvpickve2gr.d	$a0, $xr0, 3
	vinsgr2vr.h	$vr3, $a0, 7
	vsadd.h	$vr0, $vr3, $vr2
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
