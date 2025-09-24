	.file	"short_term.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function Gsm_Short_Term_Analysis_Filter
.LCPI0_0:
	.half	0                               # 0x0
	.half	4                               # 0x4
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.text
	.globl	Gsm_Short_Term_Analysis_Filter
	.p2align	5
	.type	Gsm_Short_Term_Analysis_Filter,@function
Gsm_Short_Term_Analysis_Filter:         # @Gsm_Short_Term_Analysis_Filter
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	move	$s1, $a0
	ld.h	$a3, $a0, 628
	move	$fp, $a2
	move	$a0, $a1
	addi.d	$s3, $s1, 596
	alsl.d	$s0, $a3, $s3, 4
	slli.d	$s4, $a3, 4
	xori	$a1, $a3, 1
	st.h	$a1, $s1, 628
	alsl.d	$s2, $a1, $s3, 4
	slli.d	$s5, $a1, 4
	move	$a1, $s0
	pcaddu18i	$ra, %call36(Decoding_of_the_coded_Log_Area_Ratios)
	jirl	$ra, $ra, 0
	vldx	$vr0, $s3, $s5
	lu12i.w	$a0, 32
	vldx	$vr1, $s3, $s4
	ori	$a0, $a0, 1
	vreplgr2vr.w	$vr2, $a0
	vsra.h	$vr2, $vr0, $vr2
	vsrai.h	$vr1, $vr1, 2
	lu12i.w	$a0, 16
	ori	$a0, $a0, 2
	vreplgr2vr.w	$vr3, $a0
	vsra.h	$vr0, $vr0, $vr3
	vadd.h	$vr0, $vr0, $vr2
	vadd.h	$vr0, $vr0, $vr1
	vslti.h	$vr10, $vr0, 0
	lu12i.w	$a0, 2
	ori	$a1, $a0, 2867
	vreplgr2vr.h	$vr2, $a1
	vslt.hu	$vr11, $vr0, $vr2
	vsrli.h	$vr1, $vr0, 2
	lu12i.w	$a1, 6
	ori	$a2, $a1, 1536
	vreplgr2vr.h	$vr4, $a2
	vadd.h	$vr12, $vr1, $vr4
	lu12i.w	$a2, 13
	ori	$a2, $a2, 1229
	vreplgr2vr.h	$vr1, $a2
	vadd.h	$vr3, $vr0, $vr1
	ori	$a0, $a0, 819
	vreplgr2vr.h	$vr6, $a0
	vslt.hu	$vr13, $vr3, $vr6
	vadd.h	$vr14, $vr0, $vr2
	vslli.h	$vr15, $vr0, 1
	lu12i.w	$a0, 8
	vreplgr2vr.h	$vr7, $a0
	vseq.h	$vr5, $vr0, $vr7
	vneg.h	$vr8, $vr0
	lu12i.w	$a2, 7
	ori	$a2, $a2, 4095
	vreplgr2vr.h	$vr3, $a2
	vbitsel.v	$vr16, $vr8, $vr3, $vr5
	vslt.hu	$vr17, $vr16, $vr2
	lu12i.w	$a2, 4
	ori	$a2, $a2, 3686
	vreplgr2vr.h	$vr8, $a2
	vslt.hu	$vr18, $vr16, $vr8
	ori	$a1, $a1, 2047
	vreplgr2vr.h	$vr5, $a1
	vslt.hu	$vr19, $vr5, $vr16
	vxor.v	$vr9, $vr19, $vr18
	vnor.v	$vr9, $vr17, $vr9
	vand.v	$vr20, $vr10, $vr9
	vsrli.h	$vr21, $vr16, 2
	lu12i.w	$a1, 9
	ori	$a1, $a1, 2560
	vreplgr2vr.h	$vr9, $a1
	vsub.h	$vr21, $vr9, $vr21
	vxor.v	$vr18, $vr17, $vr18
	vand.v	$vr18, $vr10, $vr18
	vsub.h	$vr22, $vr1, $vr16
	vand.v	$vr17, $vr10, $vr17
	vslli.h	$vr16, $vr16, 1
	vneg.h	$vr16, $vr16
	vslt.h	$vr0, $vr5, $vr0
	vand.v	$vr19, $vr10, $vr19
	vbitsel.v	$vr0, $vr12, $vr3, $vr0
	vbitsel.v	$vr0, $vr0, $vr14, $vr13
	vbitsel.v	$vr0, $vr0, $vr15, $vr11
	vbitsel.v	$vr0, $vr0, $vr21, $vr20
	ori	$a0, $a0, 1
	vreplgr2vr.h	$vr10, $a0
	vbitsel.v	$vr0, $vr0, $vr10, $vr19
	vbitsel.v	$vr0, $vr0, $vr22, $vr18
	vbitsel.v	$vr0, $vr0, $vr16, $vr17
	vst	$vr0, $sp, 16
	addi.d	$a0, $s1, 580
	ori	$a1, $zero, 13
	addi.d	$a2, $sp, 16
	ori	$a3, $zero, 0
	pcalau12i	$a4, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI0_0)
	lu32i.d	$a3, 32768
	vreplgr2vr.d	$vr11, $a3
	ori	$a3, $zero, 16
	move	$a4, $fp
	.p2align	4, , 16
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	ld.h	$a6, $a4, 0
	move	$a5, $zero
	vinsgr2vr.h	$vr12, $a6, 0
	vinsgr2vr.h	$vr12, $a6, 1
	.p2align	4, , 16
.LBB0_2:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.h	$a6, $a0, $a5
	add.d	$a7, $a0, $a5
	ldx.h	$t0, $a5, $a2
	vstelm.h	$vr12, $a7, 0, 1
	vinsgr2vr.h	$vr13, $a6, 0
	vpickev.h	$vr13, $vr12, $vr13
	vslli.d	$vr13, $vr13, 48
	vsrai.d	$vr13, $vr13, 48
	vreplgr2vr.d	$vr14, $t0
	vmul.d	$vr13, $vr13, $vr14
	vslli.d	$vr13, $vr13, 33
	vadd.d	$vr13, $vr13, $vr11
	vsrli.d	$vr13, $vr13, 48
	vori.b	$vr14, $vr0, 0
	vshuf.h	$vr14, $vr0, $vr13
	vinsgr2vr.h	$vr12, $a6, 1
	vadd.h	$vr13, $vr14, $vr12
	vslt.h	$vr14, $vr13, $vr14
	vslti.h	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr14
	vsrai.h	$vr14, $vr13, 15
	vbitrevi.h	$vr14, $vr14, 15
	addi.d	$a5, $a5, 2
	vbitsel.v	$vr12, $vr13, $vr14, $vr12
	bne	$a5, $a3, .LBB0_2
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	addi.w	$a1, $a1, -1
	vstelm.h	$vr12, $a4, 0, 0
	addi.d	$a4, $a4, 2
	bnez	$a1, .LBB0_1
# %bb.4:                                # %Short_term_analysis_filtering.exit
	vld	$vr11, $s2, 0
	vld	$vr12, $s0, 0
	vsrai.h	$vr11, $vr11, 1
	vsrai.h	$vr12, $vr12, 1
	vadd.h	$vr11, $vr12, $vr11
	vslti.h	$vr12, $vr11, 0
	vslt.hu	$vr13, $vr11, $vr2
	vsrli.h	$vr14, $vr11, 2
	vadd.h	$vr14, $vr14, $vr4
	vadd.h	$vr15, $vr11, $vr1
	vslt.hu	$vr15, $vr15, $vr6
	vadd.h	$vr16, $vr11, $vr2
	vslli.h	$vr17, $vr11, 1
	vseq.h	$vr18, $vr11, $vr7
	vneg.h	$vr19, $vr11
	vbitsel.v	$vr18, $vr19, $vr3, $vr18
	vslt.hu	$vr19, $vr18, $vr2
	vslt.hu	$vr20, $vr18, $vr8
	vslt.hu	$vr21, $vr5, $vr18
	vxor.v	$vr22, $vr21, $vr20
	vnor.v	$vr22, $vr19, $vr22
	vand.v	$vr22, $vr12, $vr22
	vsrli.h	$vr23, $vr18, 2
	vsub.h	$vr23, $vr9, $vr23
	vxor.v	$vr20, $vr19, $vr20
	vand.v	$vr20, $vr12, $vr20
	vsub.h	$vr24, $vr1, $vr18
	vand.v	$vr19, $vr12, $vr19
	vslli.h	$vr18, $vr18, 1
	vneg.h	$vr18, $vr18
	vslt.h	$vr11, $vr5, $vr11
	vand.v	$vr12, $vr12, $vr21
	vbitsel.v	$vr11, $vr14, $vr3, $vr11
	vbitsel.v	$vr11, $vr11, $vr16, $vr15
	vbitsel.v	$vr11, $vr11, $vr17, $vr13
	vbitsel.v	$vr11, $vr11, $vr23, $vr22
	vbitsel.v	$vr11, $vr11, $vr10, $vr12
	vbitsel.v	$vr11, $vr11, $vr24, $vr20
	vbitsel.v	$vr11, $vr11, $vr18, $vr19
	vst	$vr11, $sp, 16
	addi.d	$a1, $fp, 26
	ori	$a2, $zero, 14
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 0
	lu32i.d	$a4, 32768
	vreplgr2vr.d	$vr11, $a4
	ori	$a4, $zero, 16
	.p2align	4, , 16
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	ld.h	$a6, $a1, 0
	move	$a5, $zero
	vinsgr2vr.h	$vr12, $a6, 0
	vinsgr2vr.h	$vr12, $a6, 1
	.p2align	4, , 16
.LBB0_6:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.h	$a6, $a0, $a5
	add.d	$a7, $a0, $a5
	ldx.h	$t0, $a5, $a3
	vstelm.h	$vr12, $a7, 0, 1
	vinsgr2vr.h	$vr13, $a6, 0
	vpickev.h	$vr13, $vr12, $vr13
	vslli.d	$vr13, $vr13, 48
	vsrai.d	$vr13, $vr13, 48
	vreplgr2vr.d	$vr14, $t0
	vmul.d	$vr13, $vr13, $vr14
	vslli.d	$vr13, $vr13, 33
	vadd.d	$vr13, $vr13, $vr11
	vsrli.d	$vr13, $vr13, 48
	vori.b	$vr14, $vr0, 0
	vshuf.h	$vr14, $vr0, $vr13
	vinsgr2vr.h	$vr12, $a6, 1
	vadd.h	$vr13, $vr14, $vr12
	vslt.h	$vr14, $vr13, $vr14
	vslti.h	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr14
	vsrai.h	$vr14, $vr13, 15
	vbitrevi.h	$vr14, $vr14, 15
	addi.d	$a5, $a5, 2
	vbitsel.v	$vr12, $vr13, $vr14, $vr12
	bne	$a5, $a4, .LBB0_6
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	addi.w	$a2, $a2, -1
	vstelm.h	$vr12, $a1, 0, 0
	addi.d	$a1, $a1, 2
	bnez	$a2, .LBB0_5
# %bb.8:                                # %Short_term_analysis_filtering.exit49
	vld	$vr11, $s2, 0
	vld	$vr12, $s0, 0
	vsrai.h	$vr11, $vr11, 2
	vsrai.h	$vr13, $vr12, 2
	vadd.h	$vr11, $vr13, $vr11
	vsrai.h	$vr12, $vr12, 1
	vadd.h	$vr11, $vr11, $vr12
	vslti.h	$vr12, $vr11, 0
	vslt.hu	$vr13, $vr11, $vr2
	vsrli.h	$vr14, $vr11, 2
	vadd.h	$vr14, $vr14, $vr4
	vadd.h	$vr15, $vr11, $vr1
	vslt.hu	$vr15, $vr15, $vr6
	vadd.h	$vr16, $vr11, $vr2
	vslli.h	$vr17, $vr11, 1
	vseq.h	$vr18, $vr11, $vr7
	vneg.h	$vr19, $vr11
	vbitsel.v	$vr18, $vr19, $vr3, $vr18
	vslt.hu	$vr19, $vr18, $vr2
	vslt.hu	$vr20, $vr18, $vr8
	vslt.hu	$vr21, $vr5, $vr18
	vxor.v	$vr22, $vr21, $vr20
	vnor.v	$vr22, $vr19, $vr22
	vand.v	$vr22, $vr12, $vr22
	vsrli.h	$vr23, $vr18, 2
	vsub.h	$vr23, $vr9, $vr23
	vxor.v	$vr20, $vr19, $vr20
	vand.v	$vr20, $vr12, $vr20
	vsub.h	$vr24, $vr1, $vr18
	vand.v	$vr19, $vr12, $vr19
	vslli.h	$vr18, $vr18, 1
	vneg.h	$vr18, $vr18
	vslt.h	$vr11, $vr5, $vr11
	vand.v	$vr12, $vr12, $vr21
	vbitsel.v	$vr11, $vr14, $vr3, $vr11
	vbitsel.v	$vr11, $vr11, $vr16, $vr15
	vbitsel.v	$vr11, $vr11, $vr17, $vr13
	vbitsel.v	$vr11, $vr11, $vr23, $vr22
	vbitsel.v	$vr11, $vr11, $vr10, $vr12
	vbitsel.v	$vr11, $vr11, $vr24, $vr20
	vbitsel.v	$vr11, $vr11, $vr18, $vr19
	vst	$vr11, $sp, 16
	addi.d	$a1, $fp, 54
	ori	$a2, $zero, 13
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 0
	lu32i.d	$a4, 32768
	vreplgr2vr.d	$vr11, $a4
	ori	$a4, $zero, 16
	.p2align	4, , 16
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	ld.h	$a6, $a1, 0
	move	$a5, $zero
	vinsgr2vr.h	$vr12, $a6, 0
	vinsgr2vr.h	$vr12, $a6, 1
	.p2align	4, , 16
.LBB0_10:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.h	$a6, $a0, $a5
	add.d	$a7, $a0, $a5
	ldx.h	$t0, $a5, $a3
	vstelm.h	$vr12, $a7, 0, 1
	vinsgr2vr.h	$vr13, $a6, 0
	vpickev.h	$vr13, $vr12, $vr13
	vslli.d	$vr13, $vr13, 48
	vsrai.d	$vr13, $vr13, 48
	vreplgr2vr.d	$vr14, $t0
	vmul.d	$vr13, $vr13, $vr14
	vslli.d	$vr13, $vr13, 33
	vadd.d	$vr13, $vr13, $vr11
	vsrli.d	$vr13, $vr13, 48
	vori.b	$vr14, $vr0, 0
	vshuf.h	$vr14, $vr0, $vr13
	vinsgr2vr.h	$vr12, $a6, 1
	vadd.h	$vr13, $vr14, $vr12
	vslt.h	$vr14, $vr13, $vr14
	vslti.h	$vr12, $vr12, 0
	vxor.v	$vr12, $vr12, $vr14
	vsrai.h	$vr14, $vr13, 15
	vbitrevi.h	$vr14, $vr14, 15
	addi.d	$a5, $a5, 2
	vbitsel.v	$vr12, $vr13, $vr14, $vr12
	bne	$a5, $a4, .LBB0_10
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	addi.w	$a2, $a2, -1
	vstelm.h	$vr12, $a1, 0, 0
	addi.d	$a1, $a1, 2
	bnez	$a2, .LBB0_9
# %bb.12:                               # %Short_term_analysis_filtering.exit84
	vld	$vr11, $s0, 0
	vslti.h	$vr12, $vr11, 0
	vslt.hu	$vr13, $vr11, $vr2
	vsrli.h	$vr14, $vr11, 2
	vadd.h	$vr4, $vr14, $vr4
	vadd.h	$vr14, $vr11, $vr1
	vslt.hu	$vr6, $vr14, $vr6
	vadd.h	$vr14, $vr11, $vr2
	vslli.h	$vr15, $vr11, 1
	vseq.h	$vr7, $vr11, $vr7
	vneg.h	$vr16, $vr11
	vbitsel.v	$vr7, $vr16, $vr3, $vr7
	vslt.hu	$vr2, $vr7, $vr2
	vslt.hu	$vr8, $vr7, $vr8
	vslt.hu	$vr16, $vr5, $vr7
	vxor.v	$vr17, $vr16, $vr8
	vnor.v	$vr17, $vr2, $vr17
	vand.v	$vr17, $vr12, $vr17
	vsrli.h	$vr18, $vr7, 2
	vsub.h	$vr9, $vr9, $vr18
	vxor.v	$vr8, $vr2, $vr8
	vand.v	$vr8, $vr12, $vr8
	vsub.h	$vr1, $vr1, $vr7
	vand.v	$vr2, $vr12, $vr2
	vslli.h	$vr7, $vr7, 1
	vneg.h	$vr7, $vr7
	vslt.h	$vr5, $vr5, $vr11
	vand.v	$vr11, $vr12, $vr16
	vbitsel.v	$vr3, $vr4, $vr3, $vr5
	vbitsel.v	$vr3, $vr3, $vr14, $vr6
	vbitsel.v	$vr3, $vr3, $vr15, $vr13
	vbitsel.v	$vr3, $vr3, $vr9, $vr17
	vbitsel.v	$vr3, $vr3, $vr10, $vr11
	vbitsel.v	$vr1, $vr3, $vr1, $vr8
	vbitsel.v	$vr1, $vr1, $vr7, $vr2
	vst	$vr1, $sp, 16
	addi.d	$a1, $fp, 80
	ori	$a2, $zero, 120
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 0
	lu32i.d	$a4, 32768
	vreplgr2vr.d	$vr1, $a4
	ori	$a4, $zero, 16
	.p2align	4, , 16
.LBB0_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
	ld.h	$a6, $a1, 0
	move	$a5, $zero
	vinsgr2vr.h	$vr2, $a6, 0
	vinsgr2vr.h	$vr2, $a6, 1
	.p2align	4, , 16
.LBB0_14:                               #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.h	$a6, $a0, $a5
	add.d	$a7, $a0, $a5
	ldx.h	$t0, $a5, $a3
	vstelm.h	$vr2, $a7, 0, 1
	vinsgr2vr.h	$vr3, $a6, 0
	vpickev.h	$vr3, $vr2, $vr3
	vslli.d	$vr3, $vr3, 48
	vsrai.d	$vr3, $vr3, 48
	vreplgr2vr.d	$vr4, $t0
	vmul.d	$vr3, $vr3, $vr4
	vslli.d	$vr3, $vr3, 33
	vadd.d	$vr3, $vr3, $vr1
	vsrli.d	$vr3, $vr3, 48
	vori.b	$vr4, $vr0, 0
	vshuf.h	$vr4, $vr0, $vr3
	vinsgr2vr.h	$vr2, $a6, 1
	vadd.h	$vr3, $vr4, $vr2
	vslt.h	$vr4, $vr3, $vr4
	vslti.h	$vr2, $vr2, 0
	vxor.v	$vr2, $vr2, $vr4
	vsrai.h	$vr4, $vr3, 15
	vbitrevi.h	$vr4, $vr4, 15
	addi.d	$a5, $a5, 2
	vbitsel.v	$vr2, $vr3, $vr4, $vr2
	bne	$a5, $a4, .LBB0_14
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=1
	addi.w	$a2, $a2, -1
	vstelm.h	$vr2, $a1, 0, 0
	addi.d	$a1, $a1, 2
	bnez	$a2, .LBB0_13
# %bb.16:                               # %Short_term_analysis_filtering.exit103
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
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
	.size	Gsm_Short_Term_Analysis_Filter, .Lfunc_end0-Gsm_Short_Term_Analysis_Filter
                                        # -- End function
	.p2align	5                               # -- Begin function Decoding_of_the_coded_Log_Area_Ratios
	.type	Decoding_of_the_coded_Log_Area_Ratios,@function
Decoding_of_the_coded_Log_Area_Ratios:  # @Decoding_of_the_coded_Log_Area_Ratios
# %bb.0:
	ld.h	$a3, $a0, 0
	lu12i.w	$a6, -9
	ori	$t0, $a6, 4064
	add.d	$a4, $a3, $t0
	lu12i.w	$a2, -16
	sltu	$a4, $a4, $a2
	ori	$t1, $zero, 32
	slt	$a7, $t1, $a3
	ori	$a5, $zero, 63
	maskeqz	$a7, $a5, $a7
	xori	$a3, $a3, 32
	maskeqz	$a7, $a7, $a4
	masknez	$a3, $a3, $a4
	or	$a3, $a7, $a3
	slli.d	$a3, $a3, 10
	ext.w.h	$a3, $a3
	ori	$a7, $zero, 0
	lu32i.d	$a7, 26214
	mul.d	$a3, $a3, $a7
	ori	$a4, $zero, 0
	lu32i.d	$a4, 32768
	add.d	$a3, $a3, $a4
	srli.d	$t2, $a3, 47
	lu12i.w	$a3, 15
	ori	$a3, $a3, 4094
	and	$t2, $t2, $a3
	st.h	$t2, $a1, 0
	ld.h	$t2, $a0, 2
	add.d	$t0, $t2, $t0
	sltu	$t0, $t0, $a2
	slt	$t1, $t1, $t2
	maskeqz	$t1, $a5, $t1
	xori	$t2, $t2, 32
	maskeqz	$t1, $t1, $t0
	masknez	$t0, $t2, $t0
	or	$t0, $t1, $t0
	slli.d	$t0, $t0, 10
	ext.w.h	$t0, $t0
	mul.d	$t0, $t0, $a7
	add.d	$t0, $t0, $a4
	srli.d	$t0, $t0, 47
	and	$t0, $t0, $a3
	st.h	$t0, $a1, 2
	ld.h	$t0, $a0, 4
	ori	$t1, $a6, 4080
	add.d	$t2, $t0, $t1
	sltu	$t2, $t2, $a2
	ori	$t3, $zero, 16
	slt	$t4, $t3, $t0
	maskeqz	$t4, $a5, $t4
	addi.d	$t0, $t0, 48
	maskeqz	$t4, $t4, $t2
	masknez	$t0, $t0, $t2
	or	$t0, $t4, $t0
	slli.d	$t0, $t0, 10
	ext.w.h	$t0, $t0
	lu12i.w	$t2, -7
	slt	$t4, $t2, $t0
	maskeqz	$t0, $t0, $t4
	masknez	$t2, $t2, $t4
	or	$t0, $t0, $t2
	addi.d	$t0, $t0, -2048
	addi.d	$t0, $t0, -2048
	ext.w.h	$t0, $t0
	mul.d	$t0, $t0, $a7
	add.d	$t0, $t0, $a4
	srli.d	$t0, $t0, 47
	and	$t0, $t0, $a3
	st.h	$t0, $a1, 4
	ld.h	$t0, $a0, 6
	add.d	$t1, $t0, $t1
	sltu	$t1, $t1, $a2
	slt	$t2, $t3, $t0
	maskeqz	$t2, $a5, $t2
	addi.d	$t0, $t0, 48
	maskeqz	$t2, $t2, $t1
	masknez	$t0, $t0, $t1
	or	$t0, $t2, $t0
	slli.d	$t0, $t0, 10
	ext.w.h	$t0, $t0
	lu12i.w	$t1, 6
	ori	$t1, $t1, 3071
	slt	$t2, $t0, $t1
	maskeqz	$t0, $t0, $t2
	masknez	$t1, $t1, $t2
	or	$t0, $t0, $t1
	lu12i.w	$t1, 1
	ori	$t1, $t1, 1024
	add.d	$t0, $t0, $t1
	ext.w.h	$t0, $t0
	mul.d	$a7, $t0, $a7
	add.d	$a7, $a7, $a4
	srli.d	$a7, $a7, 47
	and	$a7, $a7, $a3
	st.h	$a7, $a1, 6
	ld.h	$a7, $a0, 8
	ori	$t2, $a6, 4088
	add.d	$t0, $a7, $t2
	sltu	$t0, $t0, $a2
	ori	$t3, $zero, 8
	slt	$t1, $t3, $a7
	maskeqz	$t1, $a5, $t1
	addi.d	$a7, $a7, 56
	maskeqz	$t1, $t1, $t0
	masknez	$a7, $a7, $t0
	or	$a7, $t1, $a7
	slli.d	$a7, $a7, 10
	ext.w.h	$t0, $a7
	lu12i.w	$a7, -8
	ori	$t1, $a7, 188
	slt	$t4, $t1, $t0
	maskeqz	$t0, $t0, $t4
	masknez	$t1, $t1, $t4
	or	$t0, $t0, $t1
	addi.d	$t0, $t0, -188
	ext.w.h	$t0, $t0
	ori	$t1, $zero, 0
	lu32i.d	$t1, 38446
	mul.d	$t0, $t0, $t1
	add.d	$t0, $t0, $a4
	srai.d	$t4, $t0, 47
	add.d	$t0, $t4, $a7
	sltu	$t5, $t0, $a2
	ori	$t0, $zero, 1
	slt	$t6, $t0, $t4
	lu12i.w	$t1, 8
	sub.d	$t6, $t1, $t6
	and	$t4, $t4, $a3
	masknez	$t4, $t4, $t5
	maskeqz	$t5, $t6, $t5
	or	$t4, $t5, $t4
	st.h	$t4, $a1, 8
	ld.h	$t4, $a0, 10
	add.d	$t2, $t4, $t2
	sltu	$t2, $t2, $a2
	slt	$t3, $t3, $t4
	maskeqz	$t3, $a5, $t3
	addi.d	$t4, $t4, 56
	maskeqz	$t3, $t3, $t2
	masknez	$t2, $t4, $t2
	or	$t2, $t3, $t2
	slli.d	$t2, $t2, 10
	ext.w.h	$t3, $t2
	lu12i.w	$t2, 7
	ori	$t4, $t2, 511
	slt	$t5, $t3, $t4
	maskeqz	$t3, $t3, $t5
	masknez	$t4, $t4, $t5
	or	$t3, $t3, $t4
	addi.d	$t3, $t3, 2047
	addi.d	$t3, $t3, 1537
	ext.w.h	$t3, $t3
	ori	$t4, $zero, 0
	lu32i.d	$t4, 34952
	mul.d	$t3, $t3, $t4
	add.d	$t3, $t3, $a4
	srai.d	$t3, $t3, 47
	add.d	$t4, $t3, $a7
	sltu	$t4, $t4, $a2
	slt	$t5, $t0, $t3
	sub.d	$t5, $t1, $t5
	and	$t3, $t3, $a3
	masknez	$t3, $t3, $t4
	maskeqz	$t4, $t5, $t4
	or	$t3, $t4, $t3
	st.h	$t3, $a1, 10
	ld.h	$t3, $a0, 12
	ori	$a6, $a6, 4092
	add.d	$t4, $t3, $a6
	sltu	$t4, $t4, $a2
	ori	$t5, $zero, 4
	slt	$t6, $t5, $t3
	maskeqz	$t6, $a5, $t6
	addi.d	$t3, $t3, 60
	maskeqz	$t6, $t6, $t4
	masknez	$t3, $t3, $t4
	or	$t3, $t6, $t3
	slli.d	$t3, $t3, 10
	addi.d	$t3, $t3, 682
	ext.w.h	$t3, $t3
	ori	$t4, $zero, 0
	lu32i.d	$t4, 62908
	mul.d	$t3, $t3, $t4
	add.d	$t3, $t3, $a4
	srai.d	$t3, $t3, 47
	add.d	$t4, $t3, $a7
	sltu	$t4, $t4, $a2
	slt	$t6, $t0, $t3
	sub.d	$t6, $t1, $t6
	and	$t3, $t3, $a3
	masknez	$t3, $t3, $t4
	maskeqz	$t4, $t6, $t4
	or	$t3, $t4, $t3
	st.h	$t3, $a1, 12
	ld.h	$a0, $a0, 14
	ori	$t3, $zero, 0
	add.d	$a6, $a0, $a6
	sltu	$a6, $a6, $a2
	slt	$t4, $t5, $a0
	maskeqz	$a5, $a5, $t4
	addi.d	$a0, $a0, 60
	maskeqz	$a5, $a5, $a6
	masknez	$a0, $a0, $a6
	or	$a0, $a5, $a0
	slli.d	$a0, $a0, 10
	ext.w.h	$a0, $a0
	ori	$a5, $t2, 1807
	slt	$a6, $a0, $a5
	maskeqz	$a0, $a0, $a6
	masknez	$a5, $a5, $a6
	or	$a0, $a0, $a5
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 241
	ext.w.h	$a0, $a0
	lu32i.d	$t3, 59416
	mul.d	$a0, $a0, $t3
	add.d	$a0, $a0, $a4
	srai.d	$a0, $a0, 47
	add.d	$a4, $a0, $a7
	sltu	$a2, $a4, $a2
	slt	$a4, $t0, $a0
	sub.d	$a4, $t1, $a4
	and	$a0, $a0, $a3
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a4, $a2
	or	$a0, $a2, $a0
	st.h	$a0, $a1, 14
	ret
.Lfunc_end1:
	.size	Decoding_of_the_coded_Log_Area_Ratios, .Lfunc_end1-Decoding_of_the_coded_Log_Area_Ratios
                                        # -- End function
	.globl	Gsm_Short_Term_Synthesis_Filter # -- Begin function Gsm_Short_Term_Synthesis_Filter
	.p2align	5
	.type	Gsm_Short_Term_Synthesis_Filter,@function
Gsm_Short_Term_Synthesis_Filter:        # @Gsm_Short_Term_Synthesis_Filter
# %bb.0:                                # %vector.ph
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
	move	$fp, $a0
	ld.h	$a4, $a0, 628
	move	$s0, $a3
	move	$s1, $a2
	move	$a0, $a1
	addi.d	$s4, $fp, 596
	alsl.d	$s2, $a4, $s4, 4
	slli.d	$s5, $a4, 4
	xori	$a1, $a4, 1
	st.h	$a1, $fp, 628
	alsl.d	$s3, $a1, $s4, 4
	slli.d	$s6, $a1, 4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(Decoding_of_the_coded_Log_Area_Ratios)
	jirl	$ra, $ra, 0
	vldx	$vr0, $s4, $s6
	lu12i.w	$a0, 32
	vldx	$vr1, $s4, $s5
	ori	$a0, $a0, 1
	vreplgr2vr.w	$vr2, $a0
	vsra.h	$vr2, $vr0, $vr2
	vsrai.h	$vr1, $vr1, 2
	lu12i.w	$a0, 16
	ori	$a0, $a0, 2
	vreplgr2vr.w	$vr3, $a0
	vsra.h	$vr0, $vr0, $vr3
	vadd.h	$vr0, $vr0, $vr2
	vadd.h	$vr9, $vr0, $vr1
	vslti.h	$vr10, $vr9, 0
	lu12i.w	$a0, 2
	ori	$a1, $a0, 2867
	vreplgr2vr.h	$vr1, $a1
	vslt.hu	$vr11, $vr9, $vr1
	vsrli.h	$vr0, $vr9, 2
	lu12i.w	$a2, 6
	ori	$a1, $a2, 1536
	vreplgr2vr.h	$vr3, $a1
	vadd.h	$vr12, $vr0, $vr3
	lu12i.w	$a1, 13
	ori	$a1, $a1, 1229
	vreplgr2vr.h	$vr0, $a1
	vadd.h	$vr2, $vr9, $vr0
	ori	$a0, $a0, 819
	vreplgr2vr.h	$vr5, $a0
	vslt.hu	$vr13, $vr2, $vr5
	vadd.h	$vr14, $vr9, $vr1
	vslli.h	$vr15, $vr9, 1
	lu12i.w	$a0, 8
	vreplgr2vr.h	$vr6, $a0
	vseq.h	$vr4, $vr9, $vr6
	vneg.h	$vr7, $vr9
	lu12i.w	$a1, 7
	ori	$a1, $a1, 4095
	vreplgr2vr.h	$vr2, $a1
	vbitsel.v	$vr16, $vr7, $vr2, $vr4
	vslt.hu	$vr17, $vr16, $vr1
	lu12i.w	$a3, 4
	ori	$a3, $a3, 3686
	vreplgr2vr.h	$vr7, $a3
	vslt.hu	$vr18, $vr16, $vr7
	ori	$a2, $a2, 2047
	vreplgr2vr.h	$vr4, $a2
	vslt.hu	$vr19, $vr4, $vr16
	vxor.v	$vr8, $vr19, $vr18
	vnor.v	$vr8, $vr17, $vr8
	vand.v	$vr20, $vr10, $vr8
	vsrli.h	$vr21, $vr16, 2
	lu12i.w	$a2, 9
	ori	$a2, $a2, 2560
	vreplgr2vr.h	$vr8, $a2
	vsub.h	$vr21, $vr8, $vr21
	vxor.v	$vr18, $vr17, $vr18
	vand.v	$vr18, $vr10, $vr18
	vsub.h	$vr22, $vr0, $vr16
	vand.v	$vr17, $vr10, $vr17
	vslli.h	$vr16, $vr16, 1
	vneg.h	$vr16, $vr16
	vslt.h	$vr9, $vr4, $vr9
	vand.v	$vr10, $vr10, $vr19
	vbitsel.v	$vr9, $vr12, $vr2, $vr9
	vbitsel.v	$vr9, $vr9, $vr14, $vr13
	vbitsel.v	$vr9, $vr9, $vr15, $vr11
	vbitsel.v	$vr11, $vr9, $vr21, $vr20
	ori	$a2, $a0, 1
	vreplgr2vr.h	$vr9, $a2
	vbitsel.v	$vr10, $vr11, $vr9, $vr10
	vbitsel.v	$vr10, $vr10, $vr22, $vr18
	vbitsel.v	$vr10, $vr10, $vr16, $vr17
	vst	$vr10, $sp, 16
	ori	$a4, $zero, 13
	addi.d	$a5, $sp, 16
	lu12i.w	$a2, -8
	ori	$a6, $zero, 0
	lu32i.d	$a6, 32768
	addi.w	$a3, $zero, -16
	move	$t0, $s0
	move	$a7, $s1
	.p2align	4, , 16
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_2 Depth 2
	ld.hu	$t2, $a7, 0
	move	$t1, $zero
	.p2align	4, , 16
.LBB2_2:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t3, $a5, $t1
	ld.h	$t3, $t3, 14
	add.d	$t4, $fp, $t1
	ld.h	$t5, $t4, 646
	xor	$t6, $t3, $a2
	sltui	$t6, $t6, 1
	bstrpick.d	$t7, $t5, 15, 0
	xor	$t7, $t7, $a0
	sltui	$t7, $t7, 1
	ext.w.h	$t5, $t5
	slli.d	$t3, $t3, 33
	mul.d	$t8, $t3, $t5
	add.d	$t8, $t8, $a6
	srli.d	$t8, $t8, 48
	masknez	$s4, $t8, $t6
	masknez	$t8, $t8, $t7
	maskeqz	$t7, $a1, $t7
	or	$t7, $t7, $t8
	maskeqz	$t7, $t7, $t6
	or	$t7, $t7, $s4
	ext.w.h	$t7, $t7
	ext.w.h	$t2, $t2
	sub.d	$t2, $t2, $t7
	slt	$t7, $t2, $a1
	maskeqz	$t2, $t2, $t7
	masknez	$t7, $a1, $t7
	or	$t2, $t2, $t7
	slt	$t7, $a2, $t2
	maskeqz	$t2, $t2, $t7
	masknez	$t7, $a2, $t7
	or	$t2, $t2, $t7
	xor	$t7, $t2, $a2
	sltui	$t7, $t7, 1
	mul.d	$t3, $t3, $t2
	add.d	$t3, $t3, $a6
	srli.d	$t3, $t3, 48
	masknez	$t8, $t3, $t7
	maskeqz	$t7, $a1, $t7
	or	$t7, $t7, $t8
	maskeqz	$t7, $t7, $t6
	masknez	$t3, $t3, $t6
	or	$t3, $t7, $t3
	ext.w.h	$t3, $t3
	add.d	$t3, $t3, $t5
	slt	$t5, $t3, $a1
	maskeqz	$t3, $t3, $t5
	masknez	$t5, $a1, $t5
	or	$t3, $t3, $t5
	slt	$t5, $a2, $t3
	maskeqz	$t3, $t3, $t5
	masknez	$t5, $a2, $t5
	or	$t3, $t3, $t5
	addi.d	$t1, $t1, -2
	st.h	$t3, $t4, 648
	bne	$t1, $a3, .LBB2_2
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	addi.w	$a4, $a4, -1
	st.h	$t2, $fp, 632
	st.h	$t2, $t0, 0
	addi.d	$t0, $t0, 2
	addi.d	$a7, $a7, 2
	bnez	$a4, .LBB2_1
# %bb.4:                                # %Short_term_synthesis_filtering.exit
	vld	$vr10, $s3, 0
	vld	$vr11, $s2, 0
	vsrai.h	$vr10, $vr10, 1
	vsrai.h	$vr11, $vr11, 1
	vadd.h	$vr10, $vr11, $vr10
	vslti.h	$vr11, $vr10, 0
	vslt.hu	$vr12, $vr10, $vr1
	vsrli.h	$vr13, $vr10, 2
	vadd.h	$vr13, $vr13, $vr3
	vadd.h	$vr14, $vr10, $vr0
	vslt.hu	$vr14, $vr14, $vr5
	vadd.h	$vr15, $vr10, $vr1
	vslli.h	$vr16, $vr10, 1
	vseq.h	$vr17, $vr10, $vr6
	vneg.h	$vr18, $vr10
	vbitsel.v	$vr17, $vr18, $vr2, $vr17
	vslt.hu	$vr18, $vr17, $vr1
	vslt.hu	$vr19, $vr17, $vr7
	vslt.hu	$vr20, $vr4, $vr17
	vxor.v	$vr21, $vr20, $vr19
	vnor.v	$vr21, $vr18, $vr21
	vand.v	$vr21, $vr11, $vr21
	vsrli.h	$vr22, $vr17, 2
	vsub.h	$vr22, $vr8, $vr22
	vxor.v	$vr19, $vr18, $vr19
	vand.v	$vr19, $vr11, $vr19
	vsub.h	$vr23, $vr0, $vr17
	vand.v	$vr18, $vr11, $vr18
	vslli.h	$vr17, $vr17, 1
	vneg.h	$vr17, $vr17
	vslt.h	$vr10, $vr4, $vr10
	vand.v	$vr11, $vr11, $vr20
	vbitsel.v	$vr10, $vr13, $vr2, $vr10
	vbitsel.v	$vr10, $vr10, $vr15, $vr14
	vbitsel.v	$vr10, $vr10, $vr16, $vr12
	vbitsel.v	$vr10, $vr10, $vr22, $vr21
	vbitsel.v	$vr10, $vr10, $vr9, $vr11
	vbitsel.v	$vr10, $vr10, $vr23, $vr19
	vbitsel.v	$vr10, $vr10, $vr17, $vr18
	vst	$vr10, $sp, 16
	addi.d	$a4, $s1, 26
	addi.d	$t0, $s0, 26
	ori	$a5, $zero, 14
	addi.d	$a6, $sp, 16
	ori	$a7, $zero, 0
	lu32i.d	$a7, 32768
	.p2align	4, , 16
.LBB2_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	ld.hu	$t2, $a4, 0
	move	$t1, $zero
	.p2align	4, , 16
.LBB2_6:                                #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t3, $a6, $t1
	ld.h	$t3, $t3, 14
	add.d	$t4, $fp, $t1
	ld.h	$t5, $t4, 646
	xor	$t6, $t3, $a2
	sltui	$t6, $t6, 1
	bstrpick.d	$t7, $t5, 15, 0
	xor	$t7, $t7, $a0
	sltui	$t7, $t7, 1
	ext.w.h	$t5, $t5
	slli.d	$t3, $t3, 33
	mul.d	$t8, $t3, $t5
	add.d	$t8, $t8, $a7
	srli.d	$t8, $t8, 48
	masknez	$s4, $t8, $t6
	masknez	$t8, $t8, $t7
	maskeqz	$t7, $a1, $t7
	or	$t7, $t7, $t8
	maskeqz	$t7, $t7, $t6
	or	$t7, $t7, $s4
	ext.w.h	$t7, $t7
	ext.w.h	$t2, $t2
	sub.d	$t2, $t2, $t7
	slt	$t7, $t2, $a1
	maskeqz	$t2, $t2, $t7
	masknez	$t7, $a1, $t7
	or	$t2, $t2, $t7
	slt	$t7, $a2, $t2
	maskeqz	$t2, $t2, $t7
	masknez	$t7, $a2, $t7
	or	$t2, $t2, $t7
	xor	$t7, $t2, $a2
	sltui	$t7, $t7, 1
	mul.d	$t3, $t3, $t2
	add.d	$t3, $t3, $a7
	srli.d	$t3, $t3, 48
	masknez	$t8, $t3, $t7
	maskeqz	$t7, $a1, $t7
	or	$t7, $t7, $t8
	maskeqz	$t7, $t7, $t6
	masknez	$t3, $t3, $t6
	or	$t3, $t7, $t3
	ext.w.h	$t3, $t3
	add.d	$t3, $t3, $t5
	slt	$t5, $t3, $a1
	maskeqz	$t3, $t3, $t5
	masknez	$t5, $a1, $t5
	or	$t3, $t3, $t5
	slt	$t5, $a2, $t3
	maskeqz	$t3, $t3, $t5
	masknez	$t5, $a2, $t5
	or	$t3, $t3, $t5
	addi.d	$t1, $t1, -2
	st.h	$t3, $t4, 648
	bne	$t1, $a3, .LBB2_6
# %bb.7:                                #   in Loop: Header=BB2_5 Depth=1
	addi.w	$a5, $a5, -1
	st.h	$t2, $fp, 632
	st.h	$t2, $t0, 0
	addi.d	$t0, $t0, 2
	addi.d	$a4, $a4, 2
	bnez	$a5, .LBB2_5
# %bb.8:                                # %Short_term_synthesis_filtering.exit56
	vld	$vr10, $s3, 0
	vld	$vr11, $s2, 0
	vsrai.h	$vr10, $vr10, 2
	vsrai.h	$vr12, $vr11, 2
	vadd.h	$vr10, $vr12, $vr10
	vsrai.h	$vr11, $vr11, 1
	vadd.h	$vr10, $vr10, $vr11
	vslti.h	$vr11, $vr10, 0
	vslt.hu	$vr12, $vr10, $vr1
	vsrli.h	$vr13, $vr10, 2
	vadd.h	$vr13, $vr13, $vr3
	vadd.h	$vr14, $vr10, $vr0
	vslt.hu	$vr14, $vr14, $vr5
	vadd.h	$vr15, $vr10, $vr1
	vslli.h	$vr16, $vr10, 1
	vseq.h	$vr17, $vr10, $vr6
	vneg.h	$vr18, $vr10
	vbitsel.v	$vr17, $vr18, $vr2, $vr17
	vslt.hu	$vr18, $vr17, $vr1
	vslt.hu	$vr19, $vr17, $vr7
	vslt.hu	$vr20, $vr4, $vr17
	vxor.v	$vr21, $vr20, $vr19
	vnor.v	$vr21, $vr18, $vr21
	vand.v	$vr21, $vr11, $vr21
	vsrli.h	$vr22, $vr17, 2
	vsub.h	$vr22, $vr8, $vr22
	vxor.v	$vr19, $vr18, $vr19
	vand.v	$vr19, $vr11, $vr19
	vsub.h	$vr23, $vr0, $vr17
	vand.v	$vr18, $vr11, $vr18
	vslli.h	$vr17, $vr17, 1
	vneg.h	$vr17, $vr17
	vslt.h	$vr10, $vr4, $vr10
	vand.v	$vr11, $vr11, $vr20
	vbitsel.v	$vr10, $vr13, $vr2, $vr10
	vbitsel.v	$vr10, $vr10, $vr15, $vr14
	vbitsel.v	$vr10, $vr10, $vr16, $vr12
	vbitsel.v	$vr10, $vr10, $vr22, $vr21
	vbitsel.v	$vr10, $vr10, $vr9, $vr11
	vbitsel.v	$vr10, $vr10, $vr23, $vr19
	vbitsel.v	$vr10, $vr10, $vr17, $vr18
	vst	$vr10, $sp, 16
	addi.d	$a4, $s1, 54
	addi.d	$t0, $s0, 54
	ori	$a5, $zero, 13
	addi.d	$a6, $sp, 16
	ori	$a7, $zero, 0
	lu32i.d	$a7, 32768
	.p2align	4, , 16
.LBB2_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_10 Depth 2
	ld.hu	$t2, $a4, 0
	move	$t1, $zero
	.p2align	4, , 16
.LBB2_10:                               #   Parent Loop BB2_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t3, $a6, $t1
	ld.h	$t3, $t3, 14
	add.d	$t4, $fp, $t1
	ld.h	$t5, $t4, 646
	xor	$t6, $t3, $a2
	sltui	$t6, $t6, 1
	bstrpick.d	$t7, $t5, 15, 0
	xor	$t7, $t7, $a0
	sltui	$t7, $t7, 1
	ext.w.h	$t5, $t5
	slli.d	$t3, $t3, 33
	mul.d	$t8, $t3, $t5
	add.d	$t8, $t8, $a7
	srli.d	$t8, $t8, 48
	masknez	$s3, $t8, $t6
	masknez	$t8, $t8, $t7
	maskeqz	$t7, $a1, $t7
	or	$t7, $t7, $t8
	maskeqz	$t7, $t7, $t6
	or	$t7, $t7, $s3
	ext.w.h	$t7, $t7
	ext.w.h	$t2, $t2
	sub.d	$t2, $t2, $t7
	slt	$t7, $t2, $a1
	maskeqz	$t2, $t2, $t7
	masknez	$t7, $a1, $t7
	or	$t2, $t2, $t7
	slt	$t7, $a2, $t2
	maskeqz	$t2, $t2, $t7
	masknez	$t7, $a2, $t7
	or	$t2, $t2, $t7
	xor	$t7, $t2, $a2
	sltui	$t7, $t7, 1
	mul.d	$t3, $t3, $t2
	add.d	$t3, $t3, $a7
	srli.d	$t3, $t3, 48
	masknez	$t8, $t3, $t7
	maskeqz	$t7, $a1, $t7
	or	$t7, $t7, $t8
	maskeqz	$t7, $t7, $t6
	masknez	$t3, $t3, $t6
	or	$t3, $t7, $t3
	ext.w.h	$t3, $t3
	add.d	$t3, $t3, $t5
	slt	$t5, $t3, $a1
	maskeqz	$t3, $t3, $t5
	masknez	$t5, $a1, $t5
	or	$t3, $t3, $t5
	slt	$t5, $a2, $t3
	maskeqz	$t3, $t3, $t5
	masknez	$t5, $a2, $t5
	or	$t3, $t3, $t5
	addi.d	$t1, $t1, -2
	st.h	$t3, $t4, 648
	bne	$t1, $a3, .LBB2_10
# %bb.11:                               #   in Loop: Header=BB2_9 Depth=1
	addi.w	$a5, $a5, -1
	st.h	$t2, $fp, 632
	st.h	$t2, $t0, 0
	addi.d	$t0, $t0, 2
	addi.d	$a4, $a4, 2
	bnez	$a5, .LBB2_9
# %bb.12:                               # %Short_term_synthesis_filtering.exit95
	vld	$vr10, $s2, 0
	vslti.h	$vr11, $vr10, 0
	vslt.hu	$vr12, $vr10, $vr1
	vsrli.h	$vr13, $vr10, 2
	vadd.h	$vr3, $vr13, $vr3
	vadd.h	$vr13, $vr10, $vr0
	vslt.hu	$vr5, $vr13, $vr5
	vadd.h	$vr13, $vr10, $vr1
	vslli.h	$vr14, $vr10, 1
	vseq.h	$vr6, $vr10, $vr6
	vneg.h	$vr15, $vr10
	vbitsel.v	$vr6, $vr15, $vr2, $vr6
	vslt.hu	$vr1, $vr6, $vr1
	vslt.hu	$vr7, $vr6, $vr7
	vslt.hu	$vr15, $vr4, $vr6
	vxor.v	$vr16, $vr15, $vr7
	vnor.v	$vr16, $vr1, $vr16
	vand.v	$vr16, $vr11, $vr16
	vsrli.h	$vr17, $vr6, 2
	vsub.h	$vr8, $vr8, $vr17
	vxor.v	$vr7, $vr1, $vr7
	vand.v	$vr7, $vr11, $vr7
	vsub.h	$vr0, $vr0, $vr6
	vand.v	$vr1, $vr11, $vr1
	vslli.h	$vr6, $vr6, 1
	vneg.h	$vr6, $vr6
	vslt.h	$vr4, $vr4, $vr10
	vand.v	$vr10, $vr11, $vr15
	vbitsel.v	$vr2, $vr3, $vr2, $vr4
	vbitsel.v	$vr2, $vr2, $vr13, $vr5
	vbitsel.v	$vr2, $vr2, $vr14, $vr12
	vbitsel.v	$vr2, $vr2, $vr8, $vr16
	vbitsel.v	$vr2, $vr2, $vr9, $vr10
	vbitsel.v	$vr0, $vr2, $vr0, $vr7
	vbitsel.v	$vr0, $vr0, $vr6, $vr1
	vst	$vr0, $sp, 16
	addi.d	$a4, $s1, 80
	addi.d	$t0, $s0, 80
	ori	$a5, $zero, 120
	addi.d	$a6, $sp, 30
	ori	$a7, $zero, 0
	lu32i.d	$a7, 32768
	.p2align	4, , 16
.LBB2_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_14 Depth 2
	ld.hu	$t2, $a4, 0
	move	$t1, $zero
	.p2align	4, , 16
.LBB2_14:                               #   Parent Loop BB2_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.h	$t3, $a6, $t1
	add.d	$t4, $fp, $t1
	ld.h	$t5, $t4, 646
	xor	$t6, $t3, $a2
	sltui	$t6, $t6, 1
	bstrpick.d	$t7, $t5, 15, 0
	xor	$t7, $t7, $a0
	sltui	$t7, $t7, 1
	ext.w.h	$t5, $t5
	slli.d	$t3, $t3, 33
	mul.d	$t8, $t3, $t5
	add.d	$t8, $t8, $a7
	srli.d	$t8, $t8, 48
	masknez	$s0, $t8, $t6
	masknez	$t8, $t8, $t7
	maskeqz	$t7, $a1, $t7
	or	$t7, $t7, $t8
	maskeqz	$t7, $t7, $t6
	or	$t7, $t7, $s0
	ext.w.h	$t7, $t7
	ext.w.h	$t2, $t2
	sub.d	$t2, $t2, $t7
	slt	$t7, $t2, $a1
	maskeqz	$t2, $t2, $t7
	masknez	$t7, $a1, $t7
	or	$t2, $t2, $t7
	slt	$t7, $a2, $t2
	maskeqz	$t2, $t2, $t7
	masknez	$t7, $a2, $t7
	or	$t2, $t2, $t7
	xor	$t7, $t2, $a2
	sltui	$t7, $t7, 1
	mul.d	$t3, $t3, $t2
	add.d	$t3, $t3, $a7
	srli.d	$t3, $t3, 48
	masknez	$t8, $t3, $t7
	maskeqz	$t7, $a1, $t7
	or	$t7, $t7, $t8
	maskeqz	$t7, $t7, $t6
	masknez	$t3, $t3, $t6
	or	$t3, $t7, $t3
	ext.w.h	$t3, $t3
	add.d	$t3, $t3, $t5
	slt	$t5, $t3, $a1
	maskeqz	$t3, $t3, $t5
	masknez	$t5, $a1, $t5
	or	$t3, $t3, $t5
	slt	$t5, $a2, $t3
	maskeqz	$t3, $t3, $t5
	masknez	$t5, $a2, $t5
	or	$t3, $t3, $t5
	addi.d	$t1, $t1, -2
	st.h	$t3, $t4, 648
	bne	$t1, $a3, .LBB2_14
# %bb.15:                               #   in Loop: Header=BB2_13 Depth=1
	addi.w	$a5, $a5, -1
	st.h	$t2, $fp, 632
	st.h	$t2, $t0, 0
	addi.d	$t0, $t0, 2
	addi.d	$a4, $a4, 2
	bnez	$a5, .LBB2_13
# %bb.16:                               # %Short_term_synthesis_filtering.exit118
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
.Lfunc_end2:
	.size	Gsm_Short_Term_Synthesis_Filter, .Lfunc_end2-Gsm_Short_Term_Synthesis_Filter
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
