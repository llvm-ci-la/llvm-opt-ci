	.file	"lpc.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function Gsm_LPC_Analysis
.LCPI0_0:
	.half	1                               # 0x1
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	8                               # 0x8
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI0_1:
	.dword	576460752303423488              # 0x800000000000000
	.dword	-720575940379279360             # 0xf600000000000000
.LCPI0_2:
	.dword	119949846642688                 # 0x6d1800000000
	.dword	131941395333120                 # 0x780000000000
.LCPI0_3:
	.dword	73306501808128                  # 0x42ac00000000
	.dword	77618648973312                  # 0x469800000000
.LCPI0_4:
	.dword	-95982967058333696              # 0xfeab000000000000
	.dword	-322007373356990464             # 0xfb88000000000000
.LCPI0_5:
	.dword	26458647810801664               # 0x5e000000000000
	.dword	-504403158265495552             # 0xf900000000000000
.LCPI0_6:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	6                               # 0x6
.LCPI0_7:
	.word	31                              # 0x1f
	.word	31                              # 0x1f
	.word	15                              # 0xf
	.word	15                              # 0xf
.LCPI0_8:
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	3                               # 0x3
	.word	3                               # 0x3
.LCPI0_9:
	.word	4294967288                      # 0xfffffff8
	.word	4294967288                      # 0xfffffff8
	.word	4294967292                      # 0xfffffffc
	.word	4294967292                      # 0xfffffffc
.LCPI0_10:
	.half	32                              # 0x20
	.half	32                              # 0x20
	.half	16                              # 0x10
	.half	16                              # 0x10
	.half	8                               # 0x8
	.half	8                               # 0x8
	.half	4                               # 0x4
	.half	4                               # 0x4
.LCPI0_11:
	.half	63                              # 0x3f
	.half	63                              # 0x3f
	.half	31                              # 0x1f
	.half	31                              # 0x1f
	.half	15                              # 0xf
	.half	15                              # 0xf
	.half	7                               # 0x7
	.half	7                               # 0x7
	.text
	.globl	Gsm_LPC_Analysis
	.p2align	5
	.type	Gsm_LPC_Analysis,@function
Gsm_LPC_Analysis:                       # @Gsm_LPC_Analysis
# %bb.0:                                # %vector.ph
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
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	move	$s0, $a1
	vld	$vr2, $a1, 0
	vld	$vr3, $a1, 16
	vslti.h	$vr4, $vr2, 0
	vslti.h	$vr5, $vr3, 0
	lu12i.w	$a0, 8
	vreplgr2vr.h	$vr0, $a0
	vseq.h	$vr6, $vr2, $vr0
	vseq.h	$vr7, $vr3, $vr0
	vneg.h	$vr8, $vr2
	vneg.h	$vr9, $vr3
	lu12i.w	$a0, 7
	ori	$s4, $a0, 4095
	vreplgr2vr.h	$vr1, $s4
	vbitsel.v	$vr6, $vr8, $vr1, $vr6
	vbitsel.v	$vr7, $vr9, $vr1, $vr7
	vld	$vr8, $a1, 32
	vld	$vr9, $a1, 48
	vbitsel.v	$vr2, $vr2, $vr6, $vr4
	vbitsel.v	$vr3, $vr3, $vr7, $vr5
	vslti.h	$vr4, $vr8, 0
	vslti.h	$vr5, $vr9, 0
	vseq.h	$vr6, $vr8, $vr0
	vseq.h	$vr7, $vr9, $vr0
	vneg.h	$vr10, $vr8
	vneg.h	$vr11, $vr9
	vbitsel.v	$vr6, $vr10, $vr1, $vr6
	vbitsel.v	$vr7, $vr11, $vr1, $vr7
	vbitsel.v	$vr4, $vr8, $vr6, $vr4
	vbitsel.v	$vr5, $vr9, $vr7, $vr5
	vld	$vr6, $a1, 64
	vld	$vr7, $a1, 80
	vmax.hu	$vr2, $vr4, $vr2
	vmax.hu	$vr3, $vr5, $vr3
	vslti.h	$vr4, $vr6, 0
	vslti.h	$vr5, $vr7, 0
	vseq.h	$vr8, $vr6, $vr0
	vseq.h	$vr9, $vr7, $vr0
	vneg.h	$vr10, $vr6
	vneg.h	$vr11, $vr7
	vbitsel.v	$vr8, $vr10, $vr1, $vr8
	vbitsel.v	$vr9, $vr11, $vr1, $vr9
	vbitsel.v	$vr4, $vr6, $vr8, $vr4
	vbitsel.v	$vr5, $vr7, $vr9, $vr5
	vld	$vr6, $a1, 96
	vld	$vr7, $a1, 112
	vmax.hu	$vr2, $vr4, $vr2
	vmax.hu	$vr3, $vr5, $vr3
	vslti.h	$vr4, $vr6, 0
	vslti.h	$vr5, $vr7, 0
	vseq.h	$vr8, $vr6, $vr0
	vseq.h	$vr9, $vr7, $vr0
	vneg.h	$vr10, $vr6
	vneg.h	$vr11, $vr7
	vbitsel.v	$vr8, $vr10, $vr1, $vr8
	vbitsel.v	$vr9, $vr11, $vr1, $vr9
	vbitsel.v	$vr4, $vr6, $vr8, $vr4
	vbitsel.v	$vr5, $vr7, $vr9, $vr5
	vld	$vr6, $a1, 128
	vld	$vr7, $a1, 144
	vmax.hu	$vr2, $vr4, $vr2
	vmax.hu	$vr3, $vr5, $vr3
	vslti.h	$vr4, $vr6, 0
	vslti.h	$vr5, $vr7, 0
	vseq.h	$vr8, $vr6, $vr0
	vseq.h	$vr9, $vr7, $vr0
	vneg.h	$vr10, $vr6
	vneg.h	$vr11, $vr7
	vbitsel.v	$vr8, $vr10, $vr1, $vr8
	vbitsel.v	$vr9, $vr11, $vr1, $vr9
	vbitsel.v	$vr4, $vr6, $vr8, $vr4
	vbitsel.v	$vr5, $vr7, $vr9, $vr5
	vld	$vr6, $a1, 160
	vld	$vr7, $a1, 176
	vmax.hu	$vr2, $vr4, $vr2
	vmax.hu	$vr3, $vr5, $vr3
	vslti.h	$vr4, $vr6, 0
	vslti.h	$vr5, $vr7, 0
	vseq.h	$vr8, $vr6, $vr0
	vseq.h	$vr9, $vr7, $vr0
	vneg.h	$vr10, $vr6
	vneg.h	$vr11, $vr7
	vbitsel.v	$vr8, $vr10, $vr1, $vr8
	vbitsel.v	$vr9, $vr11, $vr1, $vr9
	vbitsel.v	$vr4, $vr6, $vr8, $vr4
	vbitsel.v	$vr5, $vr7, $vr9, $vr5
	vld	$vr6, $a1, 192
	vld	$vr7, $a1, 208
	vmax.hu	$vr2, $vr4, $vr2
	vmax.hu	$vr3, $vr5, $vr3
	vslti.h	$vr4, $vr6, 0
	vslti.h	$vr5, $vr7, 0
	vseq.h	$vr8, $vr6, $vr0
	vseq.h	$vr9, $vr7, $vr0
	vneg.h	$vr10, $vr6
	vneg.h	$vr11, $vr7
	vbitsel.v	$vr8, $vr10, $vr1, $vr8
	vbitsel.v	$vr9, $vr11, $vr1, $vr9
	vbitsel.v	$vr4, $vr6, $vr8, $vr4
	vbitsel.v	$vr5, $vr7, $vr9, $vr5
	vld	$vr6, $a1, 224
	vld	$vr7, $a1, 240
	vmax.hu	$vr2, $vr4, $vr2
	vmax.hu	$vr3, $vr5, $vr3
	vslti.h	$vr4, $vr6, 0
	vslti.h	$vr5, $vr7, 0
	vseq.h	$vr8, $vr6, $vr0
	vseq.h	$vr9, $vr7, $vr0
	vneg.h	$vr10, $vr6
	vneg.h	$vr11, $vr7
	vbitsel.v	$vr8, $vr10, $vr1, $vr8
	vbitsel.v	$vr9, $vr11, $vr1, $vr9
	vbitsel.v	$vr4, $vr6, $vr8, $vr4
	vbitsel.v	$vr5, $vr7, $vr9, $vr5
	vld	$vr6, $a1, 256
	vld	$vr7, $a1, 272
	vmax.hu	$vr2, $vr4, $vr2
	vmax.hu	$vr3, $vr5, $vr3
	vslti.h	$vr4, $vr6, 0
	vslti.h	$vr5, $vr7, 0
	vseq.h	$vr8, $vr6, $vr0
	vseq.h	$vr9, $vr7, $vr0
	vneg.h	$vr10, $vr6
	vneg.h	$vr11, $vr7
	vbitsel.v	$vr8, $vr10, $vr1, $vr8
	vbitsel.v	$vr9, $vr11, $vr1, $vr9
	vbitsel.v	$vr4, $vr6, $vr8, $vr4
	vbitsel.v	$vr5, $vr7, $vr9, $vr5
	vld	$vr6, $a1, 288
	vld	$vr7, $a1, 304
	vmax.hu	$vr2, $vr4, $vr2
	vmax.hu	$vr3, $vr5, $vr3
	vslti.h	$vr4, $vr6, 0
	vslti.h	$vr5, $vr7, 0
	vseq.h	$vr8, $vr6, $vr0
	vseq.h	$vr0, $vr7, $vr0
	vneg.h	$vr9, $vr6
	vneg.h	$vr10, $vr7
	vbitsel.v	$vr8, $vr9, $vr1, $vr8
	vbitsel.v	$vr0, $vr10, $vr1, $vr0
	vbitsel.v	$vr1, $vr6, $vr8, $vr4
	vbitsel.v	$vr0, $vr7, $vr0, $vr5
	vmax.hu	$vr1, $vr1, $vr2
	vmax.hu	$vr0, $vr0, $vr3
	vmax.hu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.hu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.hu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.hu	$vr0, $vr1, $vr0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	move	$s2, $a2
	beqz	$a0, .LBB0_6
# %bb.1:
	slli.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(gsm_norm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	sub.d	$a1, $a1, $a0
	ext.w.h	$a1, $a1
	blez	$a1, .LBB0_7
# %bb.2:
	ori	$a3, $zero, 3
	ori	$a2, $zero, 1
	bltu	$a3, $a0, .LBB0_14
# %bb.3:
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 2
	pcalau12i	$a3, %pc_hi20(.LJTI0_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a3, $a0
	add.d	$a0, $a3, $a0
	jr	$a0
.LBB0_4:                                # %vector.body108.preheader
	move	$a0, $zero
	lu12i.w	$a3, 4
	vreplgr2vr.w	$vr0, $a3
	ori	$a3, $zero, 320
	.p2align	4, , 16
.LBB0_5:                                # %vector.body108
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr1, $s0, $a0
	add.d	$a4, $s0, $a0
	vld	$vr2, $a4, 16
	vilvh.h	$vr3, $vr1, $vr1
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vilvh.h	$vr4, $vr2, $vr2
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr2, $vr2, $vr2
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vslli.w	$vr1, $vr1, 11
	vslli.w	$vr3, $vr3, 11
	vslli.w	$vr2, $vr2, 11
	vslli.w	$vr4, $vr4, 11
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr2, $vr2, $vr0
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr1, $vr3, $vr1
	vpickev.h	$vr2, $vr4, $vr2
	vstx	$vr1, $s0, $a0
	addi.d	$a0, $a0, 32
	vst	$vr2, $a4, 16
	bne	$a0, $a3, .LBB0_5
	b	.LBB0_14
.LBB0_6:
	move	$a2, $zero
	move	$a1, $zero
	b	.LBB0_14
.LBB0_7:
	move	$a2, $zero
	b	.LBB0_14
.LBB0_8:                                # %vector.body124.preheader
	move	$a0, $zero
	lu12i.w	$a3, 4
	vreplgr2vr.w	$vr0, $a3
	ori	$a3, $zero, 320
	.p2align	4, , 16
.LBB0_9:                                # %vector.body124
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr1, $s0, $a0
	add.d	$a4, $s0, $a0
	vld	$vr2, $a4, 16
	vilvh.h	$vr3, $vr1, $vr1
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vilvh.h	$vr4, $vr2, $vr2
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr2, $vr2, $vr2
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vslli.w	$vr1, $vr1, 13
	vslli.w	$vr3, $vr3, 13
	vslli.w	$vr2, $vr2, 13
	vslli.w	$vr4, $vr4, 13
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr2, $vr2, $vr0
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr1, $vr3, $vr1
	vpickev.h	$vr2, $vr4, $vr2
	vstx	$vr1, $s0, $a0
	addi.d	$a0, $a0, 32
	vst	$vr2, $a4, 16
	bne	$a0, $a3, .LBB0_9
	b	.LBB0_14
.LBB0_10:                               # %vector.body132.preheader
	move	$a0, $zero
	lu12i.w	$a3, 4
	vreplgr2vr.w	$vr0, $a3
	ori	$a3, $zero, 320
	.p2align	4, , 16
.LBB0_11:                               # %vector.body132
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr1, $s0, $a0
	add.d	$a4, $s0, $a0
	vld	$vr2, $a4, 16
	vilvh.h	$vr3, $vr1, $vr1
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vilvh.h	$vr4, $vr2, $vr2
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr2, $vr2, $vr2
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vslli.w	$vr1, $vr1, 14
	vslli.w	$vr3, $vr3, 14
	vslli.w	$vr2, $vr2, 14
	vslli.w	$vr4, $vr4, 14
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr2, $vr2, $vr0
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr1, $vr3, $vr1
	vpickev.h	$vr2, $vr4, $vr2
	vstx	$vr1, $s0, $a0
	addi.d	$a0, $a0, 32
	vst	$vr2, $a4, 16
	bne	$a0, $a3, .LBB0_11
	b	.LBB0_14
.LBB0_12:                               # %vector.body116.preheader
	move	$a0, $zero
	lu12i.w	$a3, 4
	vreplgr2vr.w	$vr0, $a3
	ori	$a3, $zero, 320
	.p2align	4, , 16
.LBB0_13:                               # %vector.body116
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr1, $s0, $a0
	add.d	$a4, $s0, $a0
	vld	$vr2, $a4, 16
	vilvh.h	$vr3, $vr1, $vr1
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vilvh.h	$vr4, $vr2, $vr2
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr2, $vr2, $vr2
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vslli.w	$vr1, $vr1, 12
	vslli.w	$vr3, $vr3, 12
	vslli.w	$vr2, $vr2, 12
	vslli.w	$vr4, $vr4, 12
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr2, $vr2, $vr0
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr1, $vr3, $vr1
	vpickev.h	$vr2, $vr4, $vr2
	vstx	$vr1, $s0, $a0
	addi.d	$a0, $a0, 32
	vst	$vr2, $a4, 16
	bne	$a0, $a3, .LBB0_13
.LBB0_14:                               # %.thread.i
	ld.h	$a3, $s0, 14
	ld.h	$a5, $s0, 0
	ld.h	$a6, $s0, 2
	ld.h	$a4, $s0, 12
	move	$a0, $zero
	mul.d	$a7, $a3, $a6
	mul.d	$t0, $a4, $a5
	ld.h	$t1, $s0, 10
	add.d	$a7, $a7, $t0
	mul.d	$t0, $a4, $a6
	ld.h	$t2, $s0, 4
	mul.d	$t3, $t1, $a5
	add.d	$t0, $t0, $t3
	ld.h	$t3, $s0, 8
	mul.d	$t4, $a3, $t2
	add.d	$t0, $t0, $t4
	mul.d	$t4, $t1, $a6
	mul.d	$t5, $t3, $a5
	ld.h	$t6, $s0, 6
	add.d	$t4, $t4, $t5
	mul.d	$t5, $a4, $t2
	add.d	$t4, $t4, $t5
	mul.d	$t5, $a3, $t6
	add.d	$t4, $t4, $t5
	add.d	$t5, $a4, $a5
	mul.d	$t5, $t5, $t6
	mul.d	$t7, $t1, $t2
	add.d	$t5, $t5, $t7
	add.d	$t7, $a3, $a6
	mul.d	$t7, $t7, $t3
	add.d	$t5, $t5, $t7
	mul.d	$t7, $t6, $a6
	mul.d	$t8, $t2, $a5
	add.d	$t7, $t7, $t8
	add.d	$t8, $a4, $t2
	mul.d	$t8, $t8, $t3
	add.d	$t7, $t7, $t8
	add.d	$t8, $a3, $t6
	mul.d	$t8, $t8, $t1
	add.d	$t7, $t7, $t8
	mul.d	$t8, $t6, $t2
	add.d	$fp, $t2, $a5
	mul.d	$fp, $fp, $a6
	add.d	$t8, $t8, $fp
	add.d	$fp, $t1, $t6
	mul.d	$fp, $fp, $t3
	add.d	$t8, $t8, $fp
	add.d	$fp, $a3, $t1
	mul.d	$fp, $fp, $a4
	add.d	$t8, $t8, $fp
	mul.d	$fp, $a3, $a5
	mul.d	$a6, $a6, $a6
	mul.d	$a5, $a5, $a5
	add.d	$a5, $a6, $a5
	mul.d	$a6, $t2, $t2
	add.d	$a5, $a5, $a6
	mul.d	$a6, $t6, $t6
	add.d	$a5, $a5, $a6
	mul.d	$a6, $t3, $t3
	add.d	$a5, $a5, $a6
	mul.d	$a6, $t1, $t1
	add.d	$a5, $a5, $a6
	mul.d	$a4, $a4, $a4
	add.d	$a4, $a5, $a4
	mul.d	$a5, $a3, $a3
	vrepli.b	$vr16, 0
	add.d	$a4, $a4, $a5
	vori.b	$vr17, $vr16, 0
	vinsgr2vr.d	$vr17, $a4, 0
	vori.b	$vr0, $vr16, 0
	vinsgr2vr.d	$vr0, $t8, 0
	vori.b	$vr1, $vr16, 0
	vinsgr2vr.d	$vr1, $t7, 0
	vori.b	$vr2, $vr16, 0
	vinsgr2vr.d	$vr2, $t5, 0
	vori.b	$vr3, $vr16, 0
	vinsgr2vr.d	$vr3, $t4, 0
	vori.b	$vr4, $vr16, 0
	vinsgr2vr.d	$vr4, $t0, 0
	vori.b	$vr5, $vr16, 0
	vinsgr2vr.d	$vr5, $a7, 0
	vori.b	$vr6, $vr16, 0
	pcalau12i	$a4, %pc_hi20(.LCPI0_0)
	vld	$vr18, $a4, %pc_lo12(.LCPI0_0)
	vinsgr2vr.d	$vr6, $fp, 0
	vinsgr2vr.h	$vr19, $a3, 1
	ori	$a3, $zero, 304
	vori.b	$vr7, $vr16, 0
	vori.b	$vr8, $vr16, 0
	vori.b	$vr9, $vr16, 0
	vori.b	$vr10, $vr16, 0
	vori.b	$vr11, $vr16, 0
	vori.b	$vr12, $vr16, 0
	vori.b	$vr13, $vr16, 0
	vori.b	$vr14, $vr16, 0
	vori.b	$vr15, $vr16, 0
	.p2align	4, , 16
.LBB0_15:                               # %vector.body140
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $s0, $a0
	ld.w	$a5, $a4, 16
	ld.w	$a6, $a4, 20
	vinsgr2vr.w	$vr22, $a5, 0
	vori.b	$vr23, $vr18, 0
	vshuf.h	$vr23, $vr22, $vr19
	vinsgr2vr.w	$vr19, $a6, 0
	vilvl.h	$vr20, $vr22, $vr22
	vilvl.w	$vr20, $vr20, $vr20
	vslli.d	$vr20, $vr20, 48
	vsrai.d	$vr20, $vr20, 48
	vilvl.h	$vr21, $vr19, $vr19
	vilvl.w	$vr21, $vr21, $vr21
	vslli.d	$vr21, $vr21, 48
	vsrai.d	$vr21, $vr21, 48
	vmadd.d	$vr17, $vr20, $vr20
	vmadd.d	$vr16, $vr21, $vr21
	vslli.d	$vr23, $vr23, 48
	vsrai.d	$vr23, $vr23, 48
	vori.b	$vr24, $vr18, 0
	vshuf.h	$vr24, $vr19, $vr22
	vslli.d	$vr22, $vr24, 48
	ld.w	$a5, $a4, 12
	vsrai.d	$vr22, $vr22, 48
	vmadd.d	$vr0, $vr20, $vr23
	vmadd.d	$vr7, $vr21, $vr22
	vinsgr2vr.w	$vr22, $a5, 0
	ld.w	$a5, $a4, 10
	vilvl.h	$vr22, $vr22, $vr22
	vilvl.w	$vr22, $vr22, $vr22
	vslli.d	$vr22, $vr22, 48
	vinsgr2vr.w	$vr23, $a5, 0
	ld.w	$a5, $a4, 14
	vsrai.d	$vr22, $vr22, 48
	vmadd.d	$vr1, $vr22, $vr20
	vmadd.d	$vr8, $vr20, $vr21
	vinsgr2vr.w	$vr24, $a5, 0
	vilvl.h	$vr23, $vr23, $vr23
	vilvl.w	$vr23, $vr23, $vr23
	vslli.d	$vr23, $vr23, 48
	vsrai.d	$vr23, $vr23, 48
	vilvl.h	$vr24, $vr24, $vr24
	vilvl.w	$vr24, $vr24, $vr24
	vslli.d	$vr24, $vr24, 48
	ld.w	$a5, $a4, 8
	vsrai.d	$vr24, $vr24, 48
	vmadd.d	$vr2, $vr23, $vr20
	vmadd.d	$vr9, $vr24, $vr21
	vinsgr2vr.w	$vr24, $a5, 0
	vilvl.h	$vr24, $vr24, $vr24
	vilvl.w	$vr24, $vr24, $vr24
	vslli.d	$vr24, $vr24, 48
	ld.w	$a5, $a4, 6
	vsrai.d	$vr24, $vr24, 48
	vmadd.d	$vr3, $vr24, $vr20
	vmadd.d	$vr10, $vr22, $vr21
	vinsgr2vr.w	$vr22, $a5, 0
	vilvl.h	$vr22, $vr22, $vr22
	vilvl.w	$vr22, $vr22, $vr22
	vslli.d	$vr22, $vr22, 48
	ld.w	$a5, $a4, 4
	vsrai.d	$vr22, $vr22, 48
	vmadd.d	$vr4, $vr22, $vr20
	vmadd.d	$vr11, $vr23, $vr21
	vinsgr2vr.w	$vr23, $a5, 0
	vilvl.h	$vr23, $vr23, $vr23
	vilvl.w	$vr23, $vr23, $vr23
	vslli.d	$vr23, $vr23, 48
	ld.w	$a4, $a4, 2
	vsrai.d	$vr23, $vr23, 48
	vmadd.d	$vr5, $vr23, $vr20
	vmadd.d	$vr12, $vr24, $vr21
	vinsgr2vr.w	$vr24, $a4, 0
	vilvl.h	$vr24, $vr24, $vr24
	vilvl.w	$vr24, $vr24, $vr24
	vslli.d	$vr24, $vr24, 48
	ldx.w	$a4, $s0, $a0
	vsrai.d	$vr24, $vr24, 48
	vmadd.d	$vr6, $vr24, $vr20
	vmadd.d	$vr13, $vr22, $vr21
	vinsgr2vr.w	$vr22, $a4, 0
	vilvl.h	$vr22, $vr22, $vr22
	vilvl.w	$vr22, $vr22, $vr22
	vslli.d	$vr22, $vr22, 48
	vsrai.d	$vr22, $vr22, 48
	vmadd.d	$vr14, $vr22, $vr20
	addi.d	$a0, $a0, 8
	vmadd.d	$vr15, $vr23, $vr21
	bne	$a0, $a3, .LBB0_15
# %bb.16:                               # %middle.block177
	vadd.d	$vr16, $vr16, $vr17
	vhaddw.q.d	$vr16, $vr16, $vr16
	vpickve2gr.d	$a0, $vr16, 0
	slli.d	$s1, $a0, 1
	beqz	$a2, .LBB0_18
# %bb.17:                               # %vector.body188
	vld	$vr17, $s0, 0
	vld	$vr18, $s0, 16
	vreplgr2vr.w	$vr16, $a1
	vilvh.h	$vr19, $vr17, $vr17
	vilvl.h	$vr17, $vr17, $vr17
	vilvh.h	$vr20, $vr18, $vr18
	vilvl.h	$vr18, $vr18, $vr18
	vsll.w	$vr17, $vr17, $vr16
	vsll.w	$vr19, $vr19, $vr16
	vsll.w	$vr18, $vr18, $vr16
	vsll.w	$vr20, $vr20, $vr16
	vpickev.h	$vr17, $vr19, $vr17
	vpickev.h	$vr18, $vr20, $vr18
	vld	$vr19, $s0, 32
	vst	$vr17, $s0, 0
	vld	$vr17, $s0, 48
	vst	$vr18, $s0, 16
	vilvh.h	$vr18, $vr19, $vr19
	vilvl.h	$vr19, $vr19, $vr19
	vilvh.h	$vr20, $vr17, $vr17
	vilvl.h	$vr17, $vr17, $vr17
	vsll.w	$vr19, $vr19, $vr16
	vsll.w	$vr18, $vr18, $vr16
	vsll.w	$vr17, $vr17, $vr16
	vsll.w	$vr20, $vr20, $vr16
	vpickev.h	$vr18, $vr18, $vr19
	vpickev.h	$vr17, $vr20, $vr17
	vld	$vr19, $s0, 64
	vst	$vr18, $s0, 32
	vld	$vr18, $s0, 80
	vst	$vr17, $s0, 48
	vilvh.h	$vr17, $vr19, $vr19
	vilvl.h	$vr19, $vr19, $vr19
	vilvh.h	$vr20, $vr18, $vr18
	vilvl.h	$vr18, $vr18, $vr18
	vsll.w	$vr19, $vr19, $vr16
	vsll.w	$vr17, $vr17, $vr16
	vsll.w	$vr18, $vr18, $vr16
	vsll.w	$vr20, $vr20, $vr16
	vpickev.h	$vr17, $vr17, $vr19
	vpickev.h	$vr18, $vr20, $vr18
	vld	$vr19, $s0, 96
	vst	$vr17, $s0, 64
	vld	$vr17, $s0, 112
	vst	$vr18, $s0, 80
	vilvh.h	$vr18, $vr19, $vr19
	vilvl.h	$vr19, $vr19, $vr19
	vilvh.h	$vr20, $vr17, $vr17
	vilvl.h	$vr17, $vr17, $vr17
	vsll.w	$vr19, $vr19, $vr16
	vsll.w	$vr18, $vr18, $vr16
	vsll.w	$vr17, $vr17, $vr16
	vsll.w	$vr20, $vr20, $vr16
	vpickev.h	$vr18, $vr18, $vr19
	vpickev.h	$vr17, $vr20, $vr17
	vld	$vr19, $s0, 128
	vst	$vr18, $s0, 96
	vld	$vr18, $s0, 144
	vst	$vr17, $s0, 112
	vilvh.h	$vr17, $vr19, $vr19
	vilvl.h	$vr19, $vr19, $vr19
	vilvh.h	$vr20, $vr18, $vr18
	vilvl.h	$vr18, $vr18, $vr18
	vsll.w	$vr19, $vr19, $vr16
	vsll.w	$vr17, $vr17, $vr16
	vsll.w	$vr18, $vr18, $vr16
	vsll.w	$vr20, $vr20, $vr16
	vpickev.h	$vr17, $vr17, $vr19
	vpickev.h	$vr18, $vr20, $vr18
	vld	$vr19, $s0, 160
	vst	$vr17, $s0, 128
	vld	$vr17, $s0, 176
	vst	$vr18, $s0, 144
	vilvh.h	$vr18, $vr19, $vr19
	vilvl.h	$vr19, $vr19, $vr19
	vilvh.h	$vr20, $vr17, $vr17
	vilvl.h	$vr17, $vr17, $vr17
	vsll.w	$vr19, $vr19, $vr16
	vsll.w	$vr18, $vr18, $vr16
	vsll.w	$vr17, $vr17, $vr16
	vsll.w	$vr20, $vr20, $vr16
	vpickev.h	$vr18, $vr18, $vr19
	vpickev.h	$vr17, $vr20, $vr17
	vld	$vr19, $s0, 192
	vst	$vr18, $s0, 160
	vld	$vr18, $s0, 208
	vst	$vr17, $s0, 176
	vilvh.h	$vr17, $vr19, $vr19
	vilvl.h	$vr19, $vr19, $vr19
	vilvh.h	$vr20, $vr18, $vr18
	vilvl.h	$vr18, $vr18, $vr18
	vsll.w	$vr19, $vr19, $vr16
	vsll.w	$vr17, $vr17, $vr16
	vsll.w	$vr18, $vr18, $vr16
	vsll.w	$vr20, $vr20, $vr16
	vpickev.h	$vr17, $vr17, $vr19
	vpickev.h	$vr18, $vr20, $vr18
	vld	$vr19, $s0, 224
	vst	$vr17, $s0, 192
	vld	$vr17, $s0, 240
	vst	$vr18, $s0, 208
	vilvh.h	$vr18, $vr19, $vr19
	vilvl.h	$vr19, $vr19, $vr19
	vilvh.h	$vr20, $vr17, $vr17
	vilvl.h	$vr17, $vr17, $vr17
	vsll.w	$vr19, $vr19, $vr16
	vsll.w	$vr18, $vr18, $vr16
	vsll.w	$vr17, $vr17, $vr16
	vsll.w	$vr20, $vr20, $vr16
	vpickev.h	$vr18, $vr18, $vr19
	vpickev.h	$vr17, $vr20, $vr17
	vld	$vr19, $s0, 256
	vst	$vr18, $s0, 224
	vld	$vr18, $s0, 272
	vst	$vr17, $s0, 240
	vilvh.h	$vr17, $vr19, $vr19
	vilvl.h	$vr19, $vr19, $vr19
	vilvh.h	$vr20, $vr18, $vr18
	vilvl.h	$vr18, $vr18, $vr18
	vsll.w	$vr19, $vr19, $vr16
	vsll.w	$vr17, $vr17, $vr16
	vsll.w	$vr18, $vr18, $vr16
	vsll.w	$vr20, $vr20, $vr16
	vpickev.h	$vr17, $vr17, $vr19
	vpickev.h	$vr18, $vr20, $vr18
	vld	$vr19, $s0, 288
	vst	$vr17, $s0, 256
	vld	$vr17, $s0, 304
	vst	$vr18, $s0, 272
	vilvh.h	$vr18, $vr19, $vr19
	vilvl.h	$vr19, $vr19, $vr19
	vilvh.h	$vr20, $vr17, $vr17
	vilvl.h	$vr17, $vr17, $vr17
	vsll.w	$vr19, $vr19, $vr16
	vsll.w	$vr18, $vr18, $vr16
	vsll.w	$vr17, $vr17, $vr16
	vsll.w	$vr16, $vr20, $vr16
	vpickev.h	$vr18, $vr18, $vr19
	vpickev.h	$vr16, $vr16, $vr17
	vst	$vr18, $s0, 288
	vst	$vr16, $s0, 304
.LBB0_18:                               # %Autocorrelation.exit
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	beqz	$s1, .LBB0_21
# %bb.19:                               # %.preheader69.preheader.i
	vadd.d	$vr0, $vr7, $vr0
	vadd.d	$vr1, $vr8, $vr1
	vadd.d	$vr2, $vr9, $vr2
	vadd.d	$vr3, $vr10, $vr3
	vadd.d	$vr4, $vr11, $vr4
	vadd.d	$vr5, $vr12, $vr5
	vadd.d	$vr6, $vr13, $vr6
	vadd.d	$vr7, $vr15, $vr14
	vhaddw.q.d	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr2, $vr2, $vr2
	vhaddw.q.d	$vr3, $vr3, $vr3
	vhaddw.q.d	$vr4, $vr4, $vr4
	vhaddw.q.d	$vr5, $vr5, $vr5
	vhaddw.q.d	$vr6, $vr6, $vr6
	vhaddw.q.d	$vr7, $vr7, $vr7
	vpickve2gr.d	$a0, $vr0, 0
	vpickve2gr.d	$a1, $vr1, 0
	vpickve2gr.d	$a2, $vr2, 0
	vpickve2gr.d	$a3, $vr3, 0
	vpickve2gr.d	$a4, $vr4, 0
	vpickve2gr.d	$a5, $vr5, 0
	vpickve2gr.d	$a6, $vr6, 0
	vpickve2gr.d	$a7, $vr7, 0
	slli.d	$fp, $a7, 1
	slli.d	$s0, $a6, 1
	slli.d	$s2, $a5, 1
	slli.d	$s3, $a4, 1
	slli.d	$s6, $a3, 1
	slli.d	$s7, $a2, 1
	slli.d	$s8, $a1, 1
	slli.d	$s5, $a0, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(gsm_norm)
	jirl	$ra, $ra, 0
	sll.d	$a1, $s1, $a0
	srli.d	$a1, $a1, 16
	ext.w.h	$a3, $a1
	sll.d	$a2, $s5, $a0
	srli.d	$s5, $a2, 16
	bstrpick.d	$a2, $a2, 31, 16
	ext.w.h	$a4, $s5
	sll.d	$a5, $s8, $a0
	srli.d	$a5, $a5, 16
	sll.d	$a6, $s7, $a0
	srli.d	$a6, $a6, 16
	sll.d	$a7, $s6, $a0
	srli.d	$a7, $a7, 16
	sll.d	$t0, $s3, $a0
	srli.d	$t0, $t0, 16
	sll.d	$t1, $s2, $a0
	ld.d	$t3, $sp, 16                    # 8-byte Folded Reload
	srli.d	$t1, $t1, 16
	sll.d	$t2, $s0, $a0
	srli.d	$t2, $t2, 16
	sll.d	$a0, $fp, $a0
	srli.d	$a0, $a0, 16
	st.h	$s5, $sp, 30
	st.h	$a5, $sp, 32
	st.h	$a6, $sp, 34
	st.h	$a7, $sp, 36
	st.h	$t0, $sp, 38
	st.h	$t1, $sp, 40
	st.h	$t2, $sp, 42
	st.h	$s5, $sp, 48
	st.h	$a5, $sp, 50
	st.h	$a6, $sp, 52
	st.h	$a7, $sp, 54
	st.h	$t0, $sp, 56
	st.h	$t1, $sp, 58
	st.h	$t2, $sp, 60
	st.h	$a0, $sp, 62
	slti	$a0, $a4, 0
	lu12i.w	$a4, 8
	xor	$a2, $a2, $a4
	sltui	$a2, $a2, 1
	sub.d	$a4, $zero, $s5
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a4
	masknez	$a4, $s5, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a4
	ext.w.h	$a0, $a0
	ori	$a2, $zero, 16
	move	$s0, $t3
	bge	$a3, $a0, .LBB0_26
.LBB0_20:                               # %.lr.ph82.preheader.i
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB0_22
.LBB0_21:                               # %.preheader.preheader.i
	vrepli.b	$vr0, 0
	vst	$vr0, $s2, 0
.LBB0_22:                               # %Reflection_coefficients.exit
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.hu	$a1, $s2, 0
	ext.w.h	$a0, $a1
	slti	$a0, $a0, 0
	lu12i.w	$fp, 8
	xor	$a2, $a1, $fp
	sltui	$a2, $a2, 1
	sub.d	$a3, $zero, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $s4, $a2
	or	$a2, $a2, $a3
	maskeqz	$a2, $a2, $a0
	masknez	$a1, $a1, $a0
	or	$a1, $a2, $a1
	ext.w.h	$a2, $a1
	lu12i.w	$a3, 5
	ori	$a4, $a3, 1637
	blt	$a4, $a2, .LBB0_24
# %bb.23:
	srai.d	$a2, $a2, 1
	lu12i.w	$s1, 7
	b	.LBB0_34
.LBB0_24:
	bstrpick.d	$a2, $a1, 15, 0
	lu12i.w	$s1, 7
	ori	$a4, $s1, 2457
	bltu	$a4, $a2, .LBB0_33
# %bb.25:
	lu12i.w	$a2, -3
	ori	$a2, $a2, 1229
	add.d	$a2, $a1, $a2
	b	.LBB0_34
.LBB0_26:                               # %.lr.ph.preheader
	move	$s6, $zero
	ori	$fp, $zero, 8
	ori	$s7, $zero, 0
	lu32i.d	$s7, 32768
	lu12i.w	$s3, -8
	ori	$s8, $zero, 7
	move	$s0, $t3
	ori	$a2, $zero, 1
	b	.LBB0_28
	.p2align	4, , 16
.LBB0_27:                               # %._crit_edge.i
                                        #   in Loop: Header=BB0_28 Depth=1
	mul.d	$a0, $a1, $a0
	slli.d	$a0, $a0, 33
	add.d	$a0, $a0, $s7
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s1
	slt	$a1, $a0, $s4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s3, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a1, $a0, $a1
	addi.d	$a2, $s2, 1
	addi.d	$s0, $s0, 2
	addi.d	$s6, $s6, 1
	ext.w.h	$a0, $s5
	slti	$a0, $a0, 0
	bstrpick.d	$a3, $s5, 15, 0
	lu12i.w	$a4, 8
	xor	$a3, $a3, $a4
	sltui	$a3, $a3, 1
	sub.d	$a4, $zero, $s5
	masknez	$a4, $a4, $a3
	maskeqz	$a3, $s4, $a3
	or	$a3, $a3, $a4
	maskeqz	$a3, $a3, $a0
	masknez	$a0, $s5, $a0
	or	$a0, $a3, $a0
	ext.w.h	$a0, $a0
	ext.w.h	$a3, $a1
	addi.d	$s8, $s8, -1
	blt	$a3, $a0, .LBB0_70
.LBB0_28:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_31 Depth 2
	move	$s2, $a2
	ext.w.h	$a0, $a0
	ext.w.h	$s1, $a1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(gsm_div)
	jirl	$ra, $ra, 0
	ext.w.h	$a1, $s5
	slt	$a2, $zero, $a1
	sub.d	$a3, $zero, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a3, $a2
	or	$a0, $a2, $a0
	st.h	$a0, $s0, 0
	beq	$s2, $fp, .LBB0_22
# %bb.29:                               #   in Loop: Header=BB0_28 Depth=1
	ext.w.h	$a0, $a0
	ori	$a2, $zero, 7
	bltu	$a2, $s2, .LBB0_27
# %bb.30:                               # %.lr.ph.i
                                        #   in Loop: Header=BB0_28 Depth=1
	ori	$a3, $zero, 1
	sltu	$a2, $a3, $s8
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $s8, $a2
	or	$a2, $a2, $a3
	slli.d	$a3, $a0, 33
	addi.d	$a4, $sp, 30
	addi.d	$a5, $sp, 50
	.p2align	4, , 16
.LBB0_31:                               #   Parent Loop BB0_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a6, $a4, 0
	ld.h	$a7, $a5, 0
	mul.d	$t0, $a3, $a6
	add.d	$t0, $t0, $s7
	srai.d	$t0, $t0, 48
	add.d	$t0, $t0, $a7
	slt	$t1, $t0, $s4
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $s4, $t1
	or	$t0, $t0, $t1
	slt	$t1, $s3, $t0
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $s3, $t1
	or	$t0, $t0, $t1
	st.h	$t0, $a5, -2
	mul.d	$a7, $a3, $a7
	add.d	$a7, $a7, $s7
	srai.d	$a7, $a7, 48
	add.d	$a6, $a7, $a6
	slt	$a7, $a6, $s4
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $s4, $a7
	or	$a6, $a6, $a7
	slt	$a7, $s3, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $s3, $a7
	or	$a6, $a6, $a7
	st.h	$a6, $a4, 0
	addi.d	$a2, $a2, -1
	addi.d	$a5, $a5, 2
	addi.d	$a4, $a4, 2
	bnez	$a2, .LBB0_31
# %bb.32:                               # %._crit_edge.i.loopexit
                                        #   in Loop: Header=BB0_28 Depth=1
	ld.hu	$s5, $sp, 48
	b	.LBB0_27
.LBB0_33:
	lu12i.w	$a2, 6
	ori	$a2, $a2, 2048
	alsl.d	$a2, $a1, $a2, 2
.LBB0_34:
	ld.hu	$a4, $s2, 2
	ext.w.h	$a1, $a4
	slti	$a1, $a1, 0
	xor	$a5, $a4, $fp
	sltui	$a5, $a5, 1
	sub.d	$a6, $zero, $a4
	masknez	$a6, $a6, $a5
	maskeqz	$a5, $s4, $a5
	or	$a5, $a5, $a6
	maskeqz	$a5, $a5, $a1
	masknez	$a4, $a4, $a1
	or	$a4, $a5, $a4
	ext.w.h	$a6, $a4
	ori	$a5, $a3, 1638
	bge	$a6, $a5, .LBB0_36
# %bb.35:
	srai.d	$a3, $a6, 1
	b	.LBB0_39
.LBB0_36:
	bstrpick.d	$a3, $a4, 15, 0
	ori	$a6, $s1, 2458
	bgeu	$a3, $a6, .LBB0_38
# %bb.37:
	lu12i.w	$a3, -3
	ori	$a3, $a3, 1229
	add.d	$a3, $a4, $a3
	b	.LBB0_39
.LBB0_38:
	lu12i.w	$a3, 6
	ori	$a3, $a3, 2048
	alsl.d	$a3, $a4, $a3, 2
.LBB0_39:
	ld.hu	$a6, $s2, 4
	ext.w.h	$a4, $a6
	slti	$a4, $a4, 0
	xor	$a7, $a6, $fp
	sltui	$a7, $a7, 1
	sub.d	$t0, $zero, $a6
	masknez	$t0, $t0, $a7
	maskeqz	$a7, $s4, $a7
	or	$a7, $a7, $t0
	maskeqz	$a7, $a7, $a4
	masknez	$a6, $a6, $a4
	or	$a6, $a7, $a6
	ext.w.h	$a7, $a6
	bge	$a7, $a5, .LBB0_41
# %bb.40:
	srai.d	$a6, $a7, 1
	b	.LBB0_44
.LBB0_41:
	bstrpick.d	$a7, $a6, 15, 0
	ori	$t0, $s1, 2458
	bgeu	$a7, $t0, .LBB0_43
# %bb.42:
	lu12i.w	$a7, -3
	ori	$a7, $a7, 1229
	add.d	$a6, $a6, $a7
	b	.LBB0_44
.LBB0_43:
	lu12i.w	$a7, 6
	ori	$a7, $a7, 2048
	alsl.d	$a6, $a6, $a7, 2
.LBB0_44:
	ld.hu	$t0, $s2, 6
	ext.w.h	$a7, $t0
	slti	$a7, $a7, 0
	xor	$t1, $t0, $fp
	sltui	$t1, $t1, 1
	sub.d	$t2, $zero, $t0
	masknez	$t2, $t2, $t1
	maskeqz	$t1, $s4, $t1
	or	$t1, $t1, $t2
	maskeqz	$t1, $t1, $a7
	masknez	$t0, $t0, $a7
	or	$t0, $t1, $t0
	ext.w.h	$t1, $t0
	bge	$t1, $a5, .LBB0_46
# %bb.45:
	srai.d	$t1, $t1, 1
	b	.LBB0_49
.LBB0_46:
	bstrpick.d	$t1, $t0, 15, 0
	ori	$t2, $s1, 2458
	bgeu	$t1, $t2, .LBB0_48
# %bb.47:
	lu12i.w	$t1, -3
	ori	$t1, $t1, 1229
	add.d	$t1, $t0, $t1
	b	.LBB0_49
.LBB0_48:
	lu12i.w	$t1, 6
	ori	$t1, $t1, 2048
	alsl.d	$t1, $t0, $t1, 2
.LBB0_49:
	ld.hu	$t2, $s2, 8
	ext.w.h	$t0, $t2
	slti	$t0, $t0, 0
	xor	$t3, $t2, $fp
	sltui	$t3, $t3, 1
	sub.d	$t4, $zero, $t2
	masknez	$t4, $t4, $t3
	maskeqz	$t3, $s4, $t3
	or	$t3, $t3, $t4
	maskeqz	$t3, $t3, $t0
	masknez	$t2, $t2, $t0
	or	$t2, $t3, $t2
	ext.w.h	$t3, $t2
	bge	$t3, $a5, .LBB0_51
# %bb.50:
	srai.d	$t3, $t3, 1
	b	.LBB0_54
.LBB0_51:
	bstrpick.d	$t3, $t2, 15, 0
	ori	$t4, $s1, 2458
	bgeu	$t3, $t4, .LBB0_53
# %bb.52:
	lu12i.w	$t3, -3
	ori	$t3, $t3, 1229
	add.d	$t3, $t2, $t3
	b	.LBB0_54
.LBB0_53:
	lu12i.w	$t3, 6
	ori	$t3, $t3, 2048
	alsl.d	$t3, $t2, $t3, 2
.LBB0_54:
	ld.hu	$t4, $s2, 10
	ext.w.h	$t2, $t4
	slti	$t2, $t2, 0
	xor	$t5, $t4, $fp
	sltui	$t5, $t5, 1
	sub.d	$t6, $zero, $t4
	masknez	$t6, $t6, $t5
	maskeqz	$t5, $s4, $t5
	or	$t5, $t5, $t6
	maskeqz	$t5, $t5, $t2
	masknez	$t4, $t4, $t2
	or	$t4, $t5, $t4
	ext.w.h	$t5, $t4
	bge	$t5, $a5, .LBB0_56
# %bb.55:
	srai.d	$t5, $t5, 1
	b	.LBB0_59
.LBB0_56:
	bstrpick.d	$t5, $t4, 15, 0
	ori	$t6, $s1, 2458
	bgeu	$t5, $t6, .LBB0_58
# %bb.57:
	lu12i.w	$t5, -3
	ori	$t5, $t5, 1229
	add.d	$t5, $t4, $t5
	b	.LBB0_59
.LBB0_58:
	lu12i.w	$t5, 6
	ori	$t5, $t5, 2048
	alsl.d	$t5, $t4, $t5, 2
.LBB0_59:
	ld.hu	$t6, $s2, 12
	ext.w.h	$t4, $t6
	slti	$t4, $t4, 0
	xor	$t7, $t6, $fp
	sltui	$t7, $t7, 1
	sub.d	$t8, $zero, $t6
	masknez	$t8, $t8, $t7
	maskeqz	$t7, $s4, $t7
	or	$t7, $t7, $t8
	maskeqz	$t7, $t7, $t4
	masknez	$t6, $t6, $t4
	or	$t6, $t7, $t6
	ext.w.h	$t7, $t6
	bge	$t7, $a5, .LBB0_61
# %bb.60:
	srai.d	$t7, $t7, 1
	b	.LBB0_64
.LBB0_61:
	bstrpick.d	$t7, $t6, 15, 0
	ori	$t8, $s1, 2458
	bgeu	$t7, $t8, .LBB0_63
# %bb.62:
	lu12i.w	$t7, -3
	ori	$t7, $t7, 1229
	add.d	$t7, $t6, $t7
	b	.LBB0_64
.LBB0_63:
	lu12i.w	$t7, 6
	ori	$t7, $t7, 2048
	alsl.d	$t7, $t6, $t7, 2
.LBB0_64:
	ld.hu	$t8, $s2, 14
	ext.w.h	$t6, $t8
	slti	$t6, $t6, 0
	xor	$fp, $t8, $fp
	sltui	$fp, $fp, 1
	sub.d	$s0, $zero, $t8
	masknez	$s0, $s0, $fp
	maskeqz	$fp, $s4, $fp
	or	$fp, $fp, $s0
	maskeqz	$fp, $fp, $t6
	masknez	$t8, $t8, $t6
	or	$t8, $fp, $t8
	ext.w.h	$fp, $t8
	bge	$fp, $a5, .LBB0_66
# %bb.65:
	srai.d	$a5, $fp, 1
	b	.LBB0_69
.LBB0_66:
	bstrpick.d	$a5, $t8, 15, 0
	ori	$fp, $s1, 2458
	bgeu	$a5, $fp, .LBB0_68
# %bb.67:
	lu12i.w	$a5, -3
	ori	$a5, $a5, 1229
	add.d	$a5, $t8, $a5
	b	.LBB0_69
.LBB0_68:
	lu12i.w	$a5, 6
	ori	$a5, $a5, 2048
	alsl.d	$a5, $t8, $a5, 2
.LBB0_69:                               # %Transformation_to_Log_Area_Ratios.exit
	vinsgr2vr.h	$vr0, $t3, 0
	vinsgr2vr.h	$vr0, $t5, 1
	vinsgr2vr.h	$vr0, $t7, 2
	vinsgr2vr.h	$vr0, $a5, 3
	vneg.h	$vr1, $vr0
	vinsgr2vr.h	$vr2, $a6, 0
	vinsgr2vr.h	$vr2, $t1, 1
	vneg.h	$vr3, $vr2
	vinsgr2vr.h	$vr4, $a2, 0
	vinsgr2vr.h	$vr4, $a3, 1
	vneg.h	$vr5, $vr4
	vinsgr2vr.h	$vr6, $a4, 0
	vinsgr2vr.h	$vr6, $a7, 1
	vslli.h	$vr6, $vr6, 15
	vsrai.h	$vr6, $vr6, 15
	vbitsel.v	$vr2, $vr2, $vr3, $vr6
	vinsgr2vr.h	$vr3, $a0, 0
	vinsgr2vr.h	$vr3, $a1, 1
	vslli.h	$vr3, $vr3, 15
	vsrai.h	$vr3, $vr3, 15
	vbitsel.v	$vr3, $vr4, $vr5, $vr3
	vinsgr2vr.h	$vr4, $t0, 0
	vinsgr2vr.h	$vr4, $t2, 1
	vinsgr2vr.h	$vr4, $t4, 2
	vinsgr2vr.h	$vr4, $t6, 3
	vslli.h	$vr4, $vr4, 15
	vsrai.h	$vr4, $vr4, 15
	vbitsel.v	$vr0, $vr0, $vr1, $vr4
	vilvl.h	$vr1, $vr3, $vr3
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	lu12i.w	$a0, 10
	vreplgr2vr.w	$vr3, $a0
	vmul.w	$vr1, $vr1, $vr3
	vilvl.h	$vr2, $vr2, $vr2
	vilvl.w	$vr2, $vr2, $vr2
	vslli.d	$vr2, $vr2, 48
	vsrai.d	$vr2, $vr2, 48
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	vld	$vr3, $a0, %pc_lo12(.LCPI0_1)
	ori	$a0, $zero, 0
	lu32i.d	$a0, 40960
	vreplgr2vr.d	$vr4, $a0
	vmadd.d	$vr3, $vr2, $vr4
	vsrli.d	$vr2, $vr3, 32
	vilvl.h	$vr0, $vr0, $vr0
	vilvh.w	$vr3, $vr0, $vr0
	vslli.d	$vr3, $vr3, 48
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	vld	$vr4, $a0, %pc_lo12(.LCPI0_3)
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	vld	$vr5, $a0, %pc_lo12(.LCPI0_4)
	vsrai.d	$vr3, $vr3, 48
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	vld	$vr6, $a0, %pc_lo12(.LCPI0_2)
	vmadd.d	$vr5, $vr3, $vr4
	pcalau12i	$a0, %pc_hi20(.LCPI0_5)
	vld	$vr3, $a0, %pc_lo12(.LCPI0_5)
	vilvl.w	$vr0, $vr0, $vr0
	vslli.d	$vr0, $vr0, 48
	vsrai.d	$vr0, $vr0, 48
	vmadd.d	$vr3, $vr0, $vr6
	pcalau12i	$a0, %pc_hi20(.LCPI0_6)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_6)
	vsrli.d	$vr3, $vr3, 32
	vsrli.d	$vr4, $vr5, 32
	vpickev.w	$vr3, $vr4, $vr3
	vshuf.w	$vr0, $vr2, $vr1
	lu12i.w	$a0, 4096
	vreplgr2vr.w	$vr1, $a0
	vadd.w	$vr0, $vr0, $vr1
	vadd.w	$vr1, $vr3, $vr1
	vsrai.w	$vr1, $vr1, 25
	vsrai.w	$vr0, $vr0, 25
	vshuf4i.w	$vr2, $vr0, 14
	vmaxi.w	$vr2, $vr2, -16
	pcalau12i	$a0, %pc_hi20(.LCPI0_7)
	vld	$vr3, $a0, %pc_lo12(.LCPI0_7)
	pcalau12i	$a0, %pc_hi20(.LCPI0_8)
	vld	$vr4, $a0, %pc_lo12(.LCPI0_8)
	pcalau12i	$a0, %pc_hi20(.LCPI0_9)
	vld	$vr5, $a0, %pc_lo12(.LCPI0_9)
	vslt.w	$vr3, $vr3, $vr0
	vslt.w	$vr4, $vr4, $vr1
	vpickev.h	$vr3, $vr4, $vr3
	vmax.w	$vr1, $vr1, $vr5
	pcalau12i	$a0, %pc_hi20(.LCPI0_10)
	vld	$vr4, $a0, %pc_lo12(.LCPI0_10)
	pcalau12i	$a0, %pc_hi20(.LCPI0_11)
	vld	$vr5, $a0, %pc_lo12(.LCPI0_11)
	vpackev.d	$vr0, $vr2, $vr0
	vpickev.h	$vr0, $vr1, $vr0
	vadd.h	$vr0, $vr0, $vr4
	vbitsel.v	$vr0, $vr0, $vr5, $vr3
	vst	$vr0, $s2, 0
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
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
.LBB0_70:                               # %.preheader64.i
	ori	$a0, $zero, 7
	bltu	$a0, $s2, .LBB0_22
# %bb.71:
	slli.d	$a0, $s6, 1
	ori	$a1, $zero, 16
	sub.d	$a2, $a1, $a0
	b	.LBB0_20
.Lfunc_end0:
	.size	Gsm_LPC_Analysis, .Lfunc_end0-Gsm_LPC_Analysis
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_4-.LJTI0_0
	.word	.LBB0_12-.LJTI0_0
	.word	.LBB0_8-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
