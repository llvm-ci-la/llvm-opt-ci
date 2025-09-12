	.file	"Crystal_div.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Crystal_div
.LCPI0_0:
	.dword	0x3fc999999999999a              # double 0.20000000000000001
.LCPI0_1:
	.dword	0x3feccccccccccccd              # double 0.90000000000000002
.LCPI0_2:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
.LCPI0_3:
	.dword	0x3ff3333333333333              # double 1.2
.LCPI0_4:
	.dword	0x3f847ae147ae147b              # double 0.01
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_5:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	Crystal_div
	.p2align	5
	.type	Crystal_div,@function
Crystal_div:                            # @Crystal_div
# %bb.0:
	blez	$a0, .LBB0_36
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -320
	st.d	$fp, $sp, 312                   # 8-byte Folded Spill
	st.d	$s0, $sp, 304                   # 8-byte Folded Spill
	st.d	$s1, $sp, 296                   # 8-byte Folded Spill
	ori	$t1, $zero, 4
	bstrpick.d	$t0, $a0, 30, 2
	bgeu	$a0, $t1, .LBB0_3
# %bb.2:
	move	$t1, $zero
	b	.LBB0_6
.LBB0_3:                                # %vector.ph
	addi.d	$t2, $sp, 120
	slli.d	$t1, $t0, 2
	addi.d	$t3, $sp, 24
	ori	$t4, $zero, 0
	ori	$t5, $zero, 0
	lu32i.d	$t5, 1
	vreplgr2vr.d	$vr1, $t5
	lu52i.d	$t5, $zero, 1023
	vreplgr2vr.d	$vr2, $t5
	lu12i.w	$t5, -419431
	ori	$t5, $t5, 2458
	lu32i.d	$t5, -419431
	lu52i.d	$t5, $t5, 1020
	vreplgr2vr.d	$vr3, $t5
	lu32i.d	$t4, -524288
	lu52i.d	$t4, $t4, 1026
	vreplgr2vr.d	$vr4, $t4
	lu12i.w	$t4, -209716
	ori	$t4, $t4, 3277
	lu32i.d	$t4, -209716
	lu52i.d	$t4, $t4, 1022
	vreplgr2vr.d	$vr5, $t4
	move	$t4, $t1
	.p2align	4, , 16
.LBB0_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr6, $vr1, 2
	vst	$vr2, $t2, -16
	vst	$vr2, $t2, 0
	vpickve2gr.w	$t5, $vr1, 1
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa7, $t5
	ffint.d.l	$fa7, $fa7
	vpickve2gr.w	$t5, $vr1, 0
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$ft0, $t5
	ffint.d.l	$ft0, $ft0
	vextrins.d	$vr8, $vr7, 16
	vpickve2gr.w	$t5, $vr6, 1
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa7, $t5
	ffint.d.l	$fa7, $fa7
	vpickve2gr.w	$t5, $vr6, 0
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa6, $t5
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr7, 16
	vfmul.d	$vr7, $vr8, $vr3
	vfmul.d	$vr6, $vr6, $vr3
	vfdiv.d	$vr7, $vr7, $vr4
	vfdiv.d	$vr6, $vr6, $vr4
	vfadd.d	$vr7, $vr7, $vr5
	vfadd.d	$vr6, $vr6, $vr5
	vst	$vr7, $t3, -16
	vst	$vr6, $t3, 0
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$t4, $t4, -4
	addi.d	$t3, $t3, 32
	addi.d	$t2, $t2, 32
	bnez	$t4, .LBB0_4
# %bb.5:                                # %middle.block
	beq	$t1, $a0, .LBB0_8
.LBB0_6:                                # %.lr.ph.preheader167
	addi.d	$t2, $sp, 8
	alsl.d	$t2, $t1, $t2, 3
	addi.d	$t3, $sp, 104
	alsl.d	$t3, $t1, $t3, 3
	pcalau12i	$t4, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $t4, %pc_lo12(.LCPI0_0)
	pcalau12i	$t4, %pc_hi20(.LCPI0_1)
	fld.d	$fa2, $t4, %pc_lo12(.LCPI0_1)
	sub.d	$t4, $a0, $t1
	lu52i.d	$t5, $zero, 1023
	vldi	$vr3, -984
	.p2align	4, , 16
.LBB0_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$t5, $t3, 0
	bstrpick.d	$t6, $t1, 31, 0
	movgr2fr.d	$fa4, $t6
	ffint.d.l	$fa4, $fa4
	fmul.d	$fa4, $fa4, $fa1
	fdiv.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa4, $fa2
	fst.d	$fa4, $t2, 0
	addi.d	$t2, $t2, 8
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, -1
	addi.w	$t1, $t1, 1
	bnez	$t4, .LBB0_7
.LBB0_8:                                # %.lr.ph89.preheader
	ori	$t1, $zero, 4
	bgeu	$a0, $t1, .LBB0_10
# %bb.9:
	move	$t1, $zero
	b	.LBB0_13
.LBB0_10:                               # %vector.ph128
	addi.d	$t2, $sp, 216
	slli.d	$t1, $t0, 2
	addi.d	$t3, $sp, 120
	addi.d	$t4, $a1, 16
	lu12i.w	$t5, -390306
	ori	$t5, $t5, 3469
	lu32i.d	$t5, 50935
	lu52i.d	$t5, $t5, 1003
	vreplgr2vr.d	$vr1, $t5
	move	$t5, $t1
	.p2align	4, , 16
.LBB0_11:                               # %vector.body131
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t4, -16
	vld	$vr3, $t4, 0
	vld	$vr4, $t3, -16
	vld	$vr5, $t3, 0
	vfmadd.d	$vr2, $vr2, $vr4, $vr1
	vfmadd.d	$vr3, $vr3, $vr5, $vr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr3, $vr3
	vst	$vr2, $t2, -16
	vst	$vr3, $t2, 0
	addi.d	$t5, $t5, -4
	addi.d	$t2, $t2, 32
	addi.d	$t3, $t3, 32
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB0_11
# %bb.12:                               # %middle.block137
	beq	$t1, $a0, .LBB0_15
.LBB0_13:                               # %.lr.ph89.preheader166
	addi.d	$t2, $sp, 200
	alsl.d	$t2, $t1, $t2, 3
	addi.d	$t3, $sp, 104
	pcalau12i	$t4, %pc_hi20(.LCPI0_2)
	fld.d	$fa1, $t4, %pc_lo12(.LCPI0_2)
	alsl.d	$t3, $t1, $t3, 3
	alsl.d	$a1, $t1, $a1, 3
	sub.d	$t1, $a0, $t1
	.p2align	4, , 16
.LBB0_14:                               # %.lr.ph89
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $t3, 0
	fmadd.d	$fa2, $fa2, $fa3, $fa1
	frecip.d	$fa2, $fa2
	fst.d	$fa2, $t2, 0
	addi.d	$t2, $t2, 8
	addi.d	$t3, $t3, 8
	addi.d	$t1, $t1, -1
	addi.d	$a1, $a1, 8
	bnez	$t1, .LBB0_14
.LBB0_15:                               # %.lr.ph93
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI0_3)
	move	$t1, $zero
	ld.d	$a1, $sp, 320
	fmul.d	$fa1, $fa0, $fa1
	slli.d	$t2, $t0, 2
	addi.d	$t3, $a6, 16
	addi.d	$t4, $sp, 8
	vldi	$vr2, -962
	pcalau12i	$t5, %pc_hi20(.LCPI0_4)
	fld.d	$fa3, $t5, %pc_lo12(.LCPI0_4)
	addi.d	$t5, $sp, 104
	ori	$t6, $zero, 4
	addi.d	$t7, $sp, 200
	move	$t8, $a6
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_16:                               # %._crit_edge.us
                                        #   in Loop: Header=BB0_17 Depth=1
	alsl.d	$s0, $t1, $a3, 3
	alsl.d	$s1, $t1, $t1, 1
	slli.d	$s1, $s1, 5
	add.d	$s1, $a6, $s1
	fld.d	$fa5, $s0, 0
	fldx.d	$fa6, $fp, $t7
	fldx.d	$fa7, $s1, $fp
	fmul.d	$fa5, $fa5, $fa3
	fmul.d	$fa4, $fa4, $fa5
	fmadd.d	$fa4, $fa4, $fa6, $fa7
	fstx.d	$fa4, $s1, $fp
	addi.d	$t1, $t1, 1
	addi.d	$t3, $t3, 96
	addi.d	$t8, $t8, 96
	beq	$t1, $a0, .LBB0_24
.LBB0_17:                               # %.lr.ph91.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_23 Depth 2
	slli.d	$fp, $t1, 3
	fldx.d	$fa5, $fp, $t4
	fldx.d	$fa4, $fp, $t5
	fmul.d	$fa6, $fa5, $fa2
	fmul.d	$fa6, $fa6, $fa4
	fstx.d	$fa6, $a3, $fp
	fmul.d	$fa5, $fa1, $fa5
	bgeu	$a0, $t6, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	move	$s1, $zero
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_19:                               # %vector.ph142
                                        #   in Loop: Header=BB0_17 Depth=1
	vreplvei.d	$vr6, $vr5, 0
	move	$s0, $t3
	move	$s1, $t2
	.p2align	4, , 16
.LBB0_20:                               # %vector.body145
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr6, $s0, -16
	vst	$vr6, $s0, 0
	addi.d	$s1, $s1, -4
	addi.d	$s0, $s0, 32
	bnez	$s1, .LBB0_20
# %bb.21:                               # %middle.block148
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s1, $t2
	beq	$t2, $a0, .LBB0_16
.LBB0_22:                               # %scalar.ph140.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	alsl.d	$s0, $s1, $t8, 3
	sub.d	$s1, $a0, $s1
	.p2align	4, , 16
.LBB0_23:                               # %scalar.ph140
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa5, $s0, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	bnez	$s1, .LBB0_23
	b	.LBB0_16
.LBB0_24:                               # %.lr.ph95.preheader
	ori	$t1, $zero, 4
	bgeu	$a0, $t1, .LBB0_26
# %bb.25:
	move	$t0, $zero
	b	.LBB0_29
.LBB0_26:                               # %vector.ph153
	slli.d	$t0, $t0, 2
	pcalau12i	$t1, %pc_hi20(.LCPI0_5)
	vld	$vr1, $t1, %pc_lo12(.LCPI0_5)
	addi.d	$t1, $sp, 216
	vrepli.d	$vr2, 96
	vrepli.d	$vr3, 192
	move	$t2, $t0
	move	$t3, $a6
	.p2align	4, , 16
.LBB0_27:                               # %vector.body156
                                        # =>This Inner Loop Header: Depth=1
	vmul.d	$vr4, $vr1, $vr2
	vori.b	$vr5, $vr3, 0
	vmadd.d	$vr5, $vr1, $vr2
	vpickve2gr.d	$t4, $vr4, 0
	vpickve2gr.d	$t5, $vr4, 1
	vpickve2gr.d	$t6, $vr5, 0
	vpickve2gr.d	$t7, $vr5, 1
	add.d	$t5, $t3, $t5
	add.d	$t6, $t3, $t6
	add.d	$t7, $t3, $t7
	fldx.d	$fa4, $t3, $t4
	fld.d	$fa5, $t5, 8
	fld.d	$fa6, $t6, 16
	fld.d	$fa7, $t7, 24
	vextrins.d	$vr4, $vr5, 16
	vextrins.d	$vr6, $vr7, 16
	vfrecip.d	$vr4, $vr4
	vfrecip.d	$vr5, $vr6
	vst	$vr4, $t1, -16
	vst	$vr5, $t1, 0
	vaddi.du	$vr1, $vr1, 4
	addi.d	$t3, $t3, 32
	addi.d	$t2, $t2, -4
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB0_27
# %bb.28:                               # %middle.block162
	beq	$t0, $a0, .LBB0_31
.LBB0_29:                               # %.lr.ph95.preheader165
	addi.d	$t1, $sp, 200
	alsl.d	$t1, $t0, $t1, 3
	ori	$t2, $zero, 104
	mul.d	$t2, $t0, $t2
	add.d	$t2, $a6, $t2
	sub.d	$t0, $a0, $t0
	.p2align	4, , 16
.LBB0_30:                               # %.lr.ph95
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $t2, 0
	frecip.d	$fa1, $fa1
	fst.d	$fa1, $t1, 0
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, -1
	addi.d	$t2, $t2, 104
	bnez	$t0, .LBB0_30
.LBB0_31:                               # %.lr.ph99
	move	$t0, $zero
	addi.d	$t1, $sp, 200
	.p2align	4, , 16
.LBB0_32:                               # %.lr.ph97
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_33 Depth 2
	slli.d	$t2, $t0, 3
	fldx.d	$fa2, $a3, $t2
	fldx.d	$fa1, $t2, $t1
	move	$t3, $a0
	move	$t4, $a7
	move	$t5, $a2
	move	$t6, $a6
	move	$t7, $a1
	.p2align	4, , 16
.LBB0_33:                               #   Parent Loop BB0_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $t4, 0
	fld.d	$fa4, $t5, 0
	fld.d	$fa5, $t6, 0
	fmul.d	$fa3, $fa0, $fa3
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fsub.d	$fa3, $fa5, $fa3
	fmul.d	$fa3, $fa3, $fa1
	fst.d	$fa3, $t7, 0
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	addi.d	$t3, $t3, -1
	addi.d	$t4, $t4, 8
	bnez	$t3, .LBB0_33
# %bb.34:                               # %._crit_edge
                                        #   in Loop: Header=BB0_32 Depth=1
	fldx.d	$fa3, $a4, $t2
	fsub.d	$fa2, $fa2, $fa3
	fmul.d	$fa1, $fa2, $fa1
	fstx.d	$fa1, $a5, $t2
	addi.d	$t0, $t0, 1
	addi.d	$a1, $a1, 96
	addi.d	$a6, $a6, 96
	addi.d	$a7, $a7, 96
	bne	$t0, $a0, .LBB0_32
# %bb.35:
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
.LBB0_36:                               # %._crit_edge100
	ret
.Lfunc_end0:
	.size	Crystal_div, .Lfunc_end0-Crystal_div
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
