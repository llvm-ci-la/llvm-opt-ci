	.file	"harrisKernel.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z12harrisKerneliiPA2052_fPA2048_fPA2050_fS4_S4_S4_S4_S2_S2_S2_S2_S2_
.LCPI0_0:
	.word	0x3e2aaaab                      # float 0.166666672
.LCPI0_1:
	.word	0x3daaaaab                      # float 0.0833333358
.LCPI0_2:
	.word	0xbd23d70a                      # float -0.0399999991
	.text
	.globl	_Z12harrisKerneliiPA2052_fPA2048_fPA2050_fS4_S4_S4_S4_S2_S2_S2_S2_S2_
	.p2align	5
	.type	_Z12harrisKerneliiPA2052_fPA2048_fPA2050_fS4_S4_S4_S4_S2_S2_S2_S2_S2_,@function
_Z12harrisKerneliiPA2052_fPA2048_fPA2050_fS4_S4_S4_S4_S2_S2_S2_S2_S2_: # @_Z12harrisKerneliiPA2052_fPA2048_fPA2050_fS4_S4_S4_S4_S2_S2_S2_S2_S2_
# %bb.0:
	addi.w	$t1, $zero, -1
	blt	$a0, $t1, .LBB0_105
# %bb.1:                                # %.preheader317.lr.ph
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
	ld.d	$t0, $sp, 144
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	blt	$a1, $t1, .LBB0_47
# %bb.2:                                # %.preheader317.us.preheader
	move	$s8, $a5
	move	$t4, $a2
	move	$s2, $zero
	addi.w	$a5, $a0, 2
	addi.w	$t2, $a1, 2
	ori	$a2, $zero, 1
	slt	$a3, $a2, $a5
	masknez	$a2, $a2, $a3
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	maskeqz	$a3, $a5, $a3
	or	$s3, $a3, $a2
	bstrpick.d	$t1, $t2, 31, 0
	slli.d	$a2, $s3, 13
	alsl.d	$a3, $s3, $a2, 3
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	add.d	$a3, $s8, $a3
	alsl.d	$a3, $t1, $a3, 2
	lu12i.w	$s4, -3
	ori	$a5, $s4, 4088
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	add.d	$a3, $a3, $a5
	alsl.d	$a2, $s3, $a2, 4
	add.d	$a2, $t4, $a2
	alsl.d	$a2, $t1, $a2, 2
	lu12i.w	$a5, 2
	ori	$s5, $a5, 24
	add.d	$a2, $a2, $s5
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	sltu	$a2, $s8, $a2
	sltu	$a3, $t4, $a3
	and	$a2, $a2, $a3
	bstrpick.d	$a3, $t2, 31, 2
	slli.d	$t6, $a3, 2
	add.d	$s7, $t4, $s5
	st.d	$t2, $sp, 32                    # 8-byte Folded Spill
	sltui	$fp, $t2, 4
	or	$a2, $fp, $a2
	andi	$t7, $a2, 1
	ori	$t5, $a5, 16
	lu12i.w	$a2, 4
	ori	$s0, $a2, 32
	ori	$s1, $a2, 40
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.s	$fa0, $a2, %pc_lo12(.LCPI0_0)
	pcalau12i	$a2, %pc_hi20(.LCPI0_1)
	fld.s	$fa1, $a2, %pc_lo12(.LCPI0_1)
	ori	$t2, $a5, 8
	ori	$ra, $s4, 4072
	lu12i.w	$a2, 252586
	ori	$a2, $a2, 2731
	vreplgr2vr.w	$vr2, $a2
	lu12i.w	$a2, 254634
	ori	$a2, $a2, 2731
	vreplgr2vr.w	$vr3, $a2
	move	$a2, $t4
	move	$t3, $s8
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %._crit_edge.us
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s2, $s2, 1
	add.d	$t3, $t3, $t2
	add.d	$s7, $s7, $t5
	add.d	$a2, $a2, $t5
	beq	$s2, $s3, .LBB0_11
.LBB0_4:                                # %.preheader317.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_10 Depth 2
	beqz	$t7, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a5, $zero
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_6:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a3, $s7
	move	$s6, $t6
	move	$a5, $t3
	.p2align	4, , 16
.LBB0_7:                                # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vldx	$vr4, $a3, $ra
	ori	$t8, $s4, 4080
	vldx	$vr5, $a3, $t8
	vldx	$vr6, $a3, $t2
	vld	$vr7, $a3, -8
	vldx	$vr8, $a3, $t5
	vld	$vr9, $a3, 0
	vfadd.s	$vr4, $vr4, $vr6
	vfsub.s	$vr4, $vr5, $vr4
	vfadd.s	$vr4, $vr4, $vr8
	vfsub.s	$vr5, $vr9, $vr7
	vfmul.s	$vr5, $vr5, $vr3
	vfmadd.s	$vr4, $vr4, $vr2, $vr5
	vst	$vr4, $a5, 0
	addi.d	$a5, $a5, 16
	addi.d	$s6, $s6, -4
	addi.d	$a3, $a3, 16
	bnez	$s6, .LBB0_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a5, $t6
	beq	$t6, $t1, .LBB0_3
.LBB0_9:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	sub.d	$a3, $t1, $a5
	slli.d	$a5, $a5, 2
	.p2align	4, , 16
.LBB0_10:                               # %scalar.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t8, $a2, $a5
	fldx.s	$fa4, $a2, $a5
	fld.s	$fa5, $t8, 8
	fldx.s	$fa6, $t8, $s0
	fldx.s	$fa7, $t8, $t5
	fldx.s	$ft0, $t8, $s1
	fldx.s	$ft1, $t8, $s5
	fadd.s	$fa4, $fa4, $fa6
	fsub.s	$fa4, $fa5, $fa4
	fadd.s	$fa4, $fa4, $ft0
	fsub.s	$fa5, $ft1, $fa7
	fmul.s	$fa5, $fa5, $fa0
	fmadd.s	$fa4, $fa4, $fa1, $fa5
	fstx.s	$fa4, $t3, $a5
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 4
	bnez	$a3, .LBB0_10
	b	.LBB0_3
.LBB0_11:                               # %.preheader315.us.preheader
	move	$s2, $zero
	ori	$a2, $zero, 1
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	slt	$a3, $a2, $s5
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s5, $a3
	or	$s3, $a3, $a2
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	add.d	$a2, $a4, $a2
	alsl.d	$a2, $t1, $a2, 2
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sltu	$a3, $a4, $a3
	sltu	$a2, $t4, $a2
	and	$a3, $a3, $a2
	bstrpick.d	$a2, $t1, 31, 2
	slli.d	$t6, $a2, 2
	add.d	$t7, $t4, $s1
	add.d	$a2, $t4, $s0
	or	$a3, $fp, $a3
	andi	$t8, $a3, 1
	lu12i.w	$fp, -5
	move	$s0, $a4
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_12:                               # %._crit_edge.us322
                                        #   in Loop: Header=BB0_13 Depth=1
	addi.d	$s2, $s2, 1
	add.d	$s0, $s0, $t2
	add.d	$t7, $t7, $t5
	add.d	$a2, $a2, $t5
	beq	$s2, $s3, .LBB0_20
.LBB0_13:                               # %.preheader315.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_19 Depth 2
	ori	$a5, $fp, 4064
	beqz	$t8, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	move	$t3, $zero
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_15:                               # %vector.body502.preheader
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$a3, $t6
	move	$t4, $t7
	move	$s1, $s0
	.p2align	4, , 16
.LBB0_16:                               # %vector.body502
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$t3, $fp, 4056
	vldx	$vr4, $t4, $t3
	vld	$vr5, $t4, -8
	ori	$t3, $fp, 4060
	vldx	$vr6, $t4, $a5
	vldx	$vr7, $t4, $t3
	vld	$vr8, $t4, 0
	vld	$vr9, $t4, -4
	vfadd.s	$vr4, $vr4, $vr6
	vfsub.s	$vr4, $vr5, $vr4
	vfadd.s	$vr4, $vr4, $vr8
	vfsub.s	$vr5, $vr9, $vr7
	vfmul.s	$vr5, $vr5, $vr3
	vfmadd.s	$vr4, $vr4, $vr2, $vr5
	vst	$vr4, $s1, 0
	addi.d	$s1, $s1, 16
	addi.d	$a3, $a3, -4
	addi.d	$t4, $t4, 16
	bnez	$a3, .LBB0_16
# %bb.17:                               # %middle.block511
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$t3, $t6
	beq	$t6, $t1, .LBB0_12
.LBB0_18:                               # %scalar.ph497.preheader
                                        #   in Loop: Header=BB0_13 Depth=1
	sub.d	$a3, $t1, $t3
	slli.d	$t4, $t3, 2
	.p2align	4, , 16
.LBB0_19:                               # %scalar.ph497
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t3, $a2, $t4
	fldx.s	$fa4, $t3, $a5
	fldx.s	$fa5, $a2, $t4
	ori	$s1, $fp, 4072
	fldx.s	$fa6, $t3, $s1
	ori	$s1, $fp, 4068
	fldx.s	$fa7, $t3, $s1
	fld.s	$ft0, $t3, 8
	fld.s	$ft1, $t3, 4
	fadd.s	$fa4, $fa4, $fa6
	fsub.s	$fa4, $fa5, $fa4
	fadd.s	$fa4, $fa4, $ft0
	fsub.s	$fa5, $ft1, $fa7
	fmul.s	$fa5, $fa5, $fa0
	fmadd.s	$fa4, $fa4, $fa1, $fa5
	fstx.s	$fa4, $s0, $t4
	addi.d	$a3, $a3, -1
	addi.d	$t4, $t4, 4
	bnez	$a3, .LBB0_19
	b	.LBB0_12
.LBB0_20:                               # %.preheader313.us.preheader
	move	$t5, $zero
	ori	$a2, $zero, 1
	slt	$a3, $a2, $s5
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s5, $a3
	or	$a5, $a3, $a2
	sub.d	$a3, $t0, $s8
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	sltui	$a2, $a2, 8
	sltui	$a3, $a3, 32
	or	$t6, $a2, $a3
	bstrpick.d	$t4, $t1, 31, 3
	slli.d	$t7, $t4, 3
	addi.d	$t8, $t0, 16
	addi.d	$fp, $s8, 16
	move	$s0, $t0
	move	$s1, $s8
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_21:                               # %._crit_edge.us325
                                        #   in Loop: Header=BB0_22 Depth=1
	addi.d	$t5, $t5, 1
	add.d	$t8, $t8, $t2
	add.d	$fp, $fp, $t2
	add.d	$s1, $s1, $t2
	add.d	$s0, $s0, $t2
	beq	$t5, $a5, .LBB0_29
.LBB0_22:                               # %.preheader313.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
                                        #     Child Loop BB0_28 Depth 2
	beqz	$t6, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=1
	move	$s2, $zero
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_24:                               # %vector.body520.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	move	$a3, $fp
	move	$t3, $t8
	move	$s2, $t7
	.p2align	4, , 16
.LBB0_25:                               # %vector.body520
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vfmul.s	$vr0, $vr0, $vr0
	vfmul.s	$vr1, $vr1, $vr1
	vst	$vr0, $t3, -16
	vst	$vr1, $t3, 0
	addi.d	$s2, $s2, -8
	addi.d	$t3, $t3, 32
	addi.d	$a3, $a3, 32
	bnez	$s2, .LBB0_25
# %bb.26:                               # %middle.block525
                                        #   in Loop: Header=BB0_22 Depth=1
	move	$s2, $t7
	beq	$t7, $t1, .LBB0_21
.LBB0_27:                               # %scalar.ph515.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	alsl.d	$a3, $s2, $s1, 2
	alsl.d	$t3, $s2, $s0, 2
	sub.d	$s2, $t1, $s2
	.p2align	4, , 16
.LBB0_28:                               # %scalar.ph515
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a3, 0
	fmul.s	$fa0, $fa0, $fa0
	fst.s	$fa0, $t3, 0
	addi.d	$a3, $a3, 4
	addi.d	$s2, $s2, -1
	addi.d	$t3, $t3, 4
	bnez	$s2, .LBB0_28
	b	.LBB0_21
.LBB0_29:                               # %.preheader311.us.preheader
	move	$t5, $zero
	ori	$a3, $zero, 1
	slt	$a5, $a3, $s5
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $s5, $a5
	or	$t6, $a5, $a3
	sub.d	$a3, $a7, $a4
	sub.d	$a5, $a7, $s8
	sltui	$a3, $a3, 32
	sltui	$a5, $a5, 32
	or	$a3, $a3, $a5
	slli.d	$t7, $t4, 3
	addi.d	$t8, $a4, 16
	addi.d	$fp, $a7, 16
	addi.d	$s0, $s8, 16
	or	$s1, $a2, $a3
	move	$s2, $a7
	move	$s3, $a4
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_30:                               # %._crit_edge.us328
                                        #   in Loop: Header=BB0_31 Depth=1
	addi.d	$t5, $t5, 1
	add.d	$t8, $t8, $t2
	add.d	$fp, $fp, $t2
	add.d	$s0, $s0, $t2
	add.d	$s3, $s3, $t2
	add.d	$s8, $s8, $t2
	add.d	$s2, $s2, $t2
	beq	$t5, $t6, .LBB0_38
.LBB0_31:                               # %.preheader311.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_37 Depth 2
	beqz	$s1, .LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_31 Depth=1
	move	$s4, $zero
	b	.LBB0_36
	.p2align	4, , 16
.LBB0_33:                               # %vector.body536.preheader
                                        #   in Loop: Header=BB0_31 Depth=1
	move	$a3, $s0
	move	$a5, $fp
	move	$t3, $t8
	move	$s4, $t7
	.p2align	4, , 16
.LBB0_34:                               # %vector.body536
                                        #   Parent Loop BB0_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t3, -16
	vld	$vr1, $t3, 0
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vfmul.s	$vr0, $vr2, $vr0
	vfmul.s	$vr1, $vr3, $vr1
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$s4, $s4, -8
	addi.d	$t3, $t3, 32
	addi.d	$a5, $a5, 32
	addi.d	$a3, $a3, 32
	bnez	$s4, .LBB0_34
# %bb.35:                               # %middle.block543
                                        #   in Loop: Header=BB0_31 Depth=1
	move	$s4, $t7
	beq	$t7, $t1, .LBB0_30
.LBB0_36:                               # %scalar.ph531.preheader
                                        #   in Loop: Header=BB0_31 Depth=1
	alsl.d	$a3, $s4, $s3, 2
	alsl.d	$a5, $s4, $s8, 2
	alsl.d	$t3, $s4, $s2, 2
	sub.d	$s4, $t1, $s4
	.p2align	4, , 16
.LBB0_37:                               # %scalar.ph531
                                        #   Parent Loop BB0_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a5, 0
	fmul.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $t3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, 4
	addi.d	$s4, $s4, -1
	addi.d	$t3, $t3, 4
	bnez	$s4, .LBB0_37
	b	.LBB0_30
.LBB0_38:                               # %.preheader309.us.preheader
	move	$a5, $zero
	ori	$a3, $zero, 1
	slt	$t3, $a3, $s5
	masknez	$a3, $a3, $t3
	maskeqz	$t3, $s5, $t3
	or	$t3, $t3, $a3
	sub.d	$a3, $a6, $a4
	sltui	$a3, $a3, 32
	or	$a2, $a2, $a3
	slli.d	$t4, $t4, 3
	addi.d	$t5, $a6, 16
	addi.d	$t6, $a4, 16
	move	$t7, $a6
	b	.LBB0_40
	.p2align	4, , 16
.LBB0_39:                               # %._crit_edge.us331
                                        #   in Loop: Header=BB0_40 Depth=1
	addi.d	$a5, $a5, 1
	add.d	$t5, $t5, $t2
	add.d	$t6, $t6, $t2
	add.d	$a4, $a4, $t2
	add.d	$t7, $t7, $t2
	beq	$a5, $t3, .LBB0_47
.LBB0_40:                               # %.preheader309.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_43 Depth 2
                                        #     Child Loop BB0_46 Depth 2
	beqz	$a2, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_40 Depth=1
	move	$fp, $zero
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_42:                               # %vector.body553.preheader
                                        #   in Loop: Header=BB0_40 Depth=1
	move	$s0, $t6
	move	$t8, $t5
	move	$fp, $t4
	.p2align	4, , 16
.LBB0_43:                               # %vector.body553
                                        #   Parent Loop BB0_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s0, -16
	vld	$vr1, $s0, 0
	vfmul.s	$vr0, $vr0, $vr0
	vfmul.s	$vr1, $vr1, $vr1
	vst	$vr0, $t8, -16
	vst	$vr1, $t8, 0
	addi.d	$fp, $fp, -8
	addi.d	$t8, $t8, 32
	addi.d	$s0, $s0, 32
	bnez	$fp, .LBB0_43
# %bb.44:                               # %middle.block558
                                        #   in Loop: Header=BB0_40 Depth=1
	move	$fp, $t4
	beq	$t4, $t1, .LBB0_39
.LBB0_45:                               # %scalar.ph548.preheader
                                        #   in Loop: Header=BB0_40 Depth=1
	alsl.d	$s0, $fp, $a4, 2
	alsl.d	$t8, $fp, $t7, 2
	sub.d	$fp, $t1, $fp
	.p2align	4, , 16
.LBB0_46:                               # %scalar.ph548
                                        #   Parent Loop BB0_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s0, 0
	fmul.s	$fa0, $fa0, $fa0
	fst.s	$fa0, $t8, 0
	addi.d	$s0, $s0, 4
	addi.d	$fp, $fp, -1
	addi.d	$t8, $t8, 4
	bnez	$fp, .LBB0_46
	b	.LBB0_39
.LBB0_47:                               # %.preheader308
	blez	$a0, .LBB0_104
# %bb.48:                               # %.preheader308
	blez	$a1, .LBB0_104
# %bb.49:                               # %.preheader307.us.preheader
	move	$s5, $zero
	ld.d	$a3, $sp, 184
	ld.d	$a4, $sp, 176
	ld.d	$t1, $sp, 168
	ld.d	$a2, $sp, 160
	ld.d	$t3, $sp, 152
	slli.d	$a5, $a0, 13
	add.d	$t2, $t1, $a5
	alsl.d	$t2, $a1, $t2, 2
	lu12i.w	$t4, -2
	add.d	$t2, $t2, $t4
	addi.d	$t5, $t0, 4
	alsl.d	$a5, $a0, $a5, 3
	add.d	$a5, $t0, $a5
	alsl.d	$t6, $a1, $a5, 2
	lu12i.w	$a5, 2
	ori	$t4, $a5, 16
	add.d	$t6, $t6, $t4
	sltu	$t6, $t1, $t6
	sltu	$t2, $t5, $t2
	and	$t2, $t6, $t2
	bstrpick.d	$t5, $a1, 30, 2
	slli.d	$s3, $t5, 2
	ori	$t5, $a5, 12
	add.d	$s4, $t0, $t5
	sltui	$t6, $a1, 4
	st.d	$t6, $sp, 40                    # 8-byte Folded Spill
	or	$t2, $t6, $t2
	andi	$t2, $t2, 1
	ori	$t6, $a5, 8
	lu12i.w	$fp, 4
	ori	$t7, $fp, 16
	ori	$t8, $fp, 20
	ori	$fp, $fp, 24
	vldi	$vr0, -1280
	lu12i.w	$s1, -3
	ori	$s0, $s1, 4088
	ori	$s1, $s1, 4092
	ori	$s2, $a5, 4
	lu12i.w	$s6, 262144
	vreplgr2vr.w	$vr1, $s6
	move	$s7, $t1
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_50:                               # %._crit_edge.us334
                                        #   in Loop: Header=BB0_51 Depth=1
	addi.d	$s5, $s5, 1
	add.d	$s7, $s7, $a5
	add.d	$s4, $s4, $t6
	add.d	$t0, $t0, $t6
	beq	$s5, $a0, .LBB0_58
.LBB0_51:                               # %.preheader307.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_54 Depth 2
                                        #     Child Loop BB0_57 Depth 2
	beqz	$t2, .LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_51 Depth=1
	move	$s8, $zero
	b	.LBB0_56
	.p2align	4, , 16
.LBB0_53:                               # %vector.body573.preheader
                                        #   in Loop: Header=BB0_51 Depth=1
	move	$s6, $s4
	move	$s8, $s3
	move	$ra, $s7
	.p2align	4, , 16
.LBB0_54:                               # %vector.body573
                                        #   Parent Loop BB0_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $s6, -4
	vldx	$vr3, $s6, $s0
	vldx	$vr4, $s6, $s1
	vld	$vr5, $s6, 0
	vld	$vr6, $s6, 4
	vldx	$vr7, $s6, $s2
	vldx	$vr8, $s6, $t6
	vldx	$vr9, $s6, $t5
	vfmadd.s	$vr2, $vr2, $vr1, $vr3
	vfadd.s	$vr2, $vr2, $vr4
	vfadd.s	$vr2, $vr2, $vr5
	vfadd.s	$vr2, $vr2, $vr6
	vfadd.s	$vr2, $vr2, $vr7
	vfadd.s	$vr2, $vr2, $vr8
	vfadd.s	$vr2, $vr2, $vr9
	vst	$vr2, $ra, 0
	addi.d	$ra, $ra, 16
	addi.d	$s8, $s8, -4
	addi.d	$s6, $s6, 16
	bnez	$s8, .LBB0_54
# %bb.55:                               # %middle.block584
                                        #   in Loop: Header=BB0_51 Depth=1
	move	$s8, $s3
	beq	$s3, $a1, .LBB0_50
.LBB0_56:                               # %scalar.ph568.preheader
                                        #   in Loop: Header=BB0_51 Depth=1
	slli.d	$s6, $s8, 2
	sub.d	$s8, $a1, $s8
	.p2align	4, , 16
.LBB0_57:                               # %scalar.ph568
                                        #   Parent Loop BB0_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$ra, $t0, $s6
	fldx.s	$fa2, $ra, $t6
	fld.s	$fa3, $ra, 4
	fld.s	$fa4, $ra, 8
	fldx.s	$fa5, $ra, $t5
	fldx.s	$fa6, $ra, $t4
	fldx.s	$fa7, $ra, $t7
	fldx.s	$ft0, $ra, $t8
	fldx.s	$ft1, $ra, $fp
	fmadd.s	$fa2, $fa2, $fa0, $fa3
	fadd.s	$fa2, $fa2, $fa4
	fadd.s	$fa2, $fa2, $fa5
	fadd.s	$fa2, $fa2, $fa6
	fadd.s	$fa2, $fa2, $fa7
	fadd.s	$fa2, $fa2, $ft0
	fadd.s	$fa2, $fa2, $ft1
	fstx.s	$fa2, $s7, $s6
	addi.d	$s8, $s8, -1
	addi.d	$s6, $s6, 4
	bnez	$s8, .LBB0_57
	b	.LBB0_50
.LBB0_58:                               # %.preheader306
	blez	$a0, .LBB0_104
# %bb.59:                               # %.preheader305.us.preheader
	move	$ra, $zero
	slli.d	$s3, $a0, 13
	add.d	$t0, $a2, $s3
	alsl.d	$t0, $a1, $t0, 2
	lu12i.w	$t2, -2
	add.d	$t0, $t0, $t2
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	alsl.d	$t2, $a0, $s3, 3
	st.d	$t2, $sp, 24                    # 8-byte Folded Spill
	add.d	$t2, $a7, $t2
	alsl.d	$t2, $a1, $t2, 2
	add.d	$t2, $t2, $t4
	sltu	$t2, $a2, $t2
	sltu	$t0, $a7, $t0
	and	$t0, $t2, $t0
	bstrpick.d	$t2, $a1, 30, 2
	st.d	$t2, $sp, 16                    # 8-byte Folded Spill
	slli.d	$s5, $t2, 2
	add.d	$s8, $a7, $t5
	ld.d	$t2, $sp, 40                    # 8-byte Folded Reload
	or	$t0, $t2, $t0
	andi	$s7, $t0, 1
	lu12i.w	$t0, -3
	ori	$t0, $t0, 4084
	move	$s6, $a2
	b	.LBB0_61
	.p2align	4, , 16
.LBB0_60:                               # %._crit_edge.us337
                                        #   in Loop: Header=BB0_61 Depth=1
	addi.d	$ra, $ra, 1
	add.d	$s6, $s6, $a5
	add.d	$s8, $s8, $t6
	add.d	$a7, $a7, $t6
	beq	$ra, $a0, .LBB0_68
.LBB0_61:                               # %.preheader305.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_64 Depth 2
                                        #     Child Loop BB0_67 Depth 2
	beqz	$s7, .LBB0_63
# %bb.62:                               #   in Loop: Header=BB0_61 Depth=1
	move	$t2, $zero
	b	.LBB0_66
	.p2align	4, , 16
.LBB0_63:                               # %vector.body598.preheader
                                        #   in Loop: Header=BB0_61 Depth=1
	move	$s4, $s8
	move	$s3, $s5
	move	$t2, $s6
	.p2align	4, , 16
.LBB0_64:                               # %vector.body598
                                        #   Parent Loop BB0_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vldx	$vr0, $s4, $t0
	vldx	$vr1, $s4, $s0
	vldx	$vr2, $s4, $s1
	vld	$vr3, $s4, -4
	vld	$vr4, $s4, 0
	vfadd.s	$vr0, $vr1, $vr0
	vfadd.s	$vr0, $vr0, $vr2
	vfadd.s	$vr0, $vr0, $vr3
	vfadd.s	$vr0, $vr0, $vr4
	vld	$vr1, $s4, 4
	vldx	$vr2, $s4, $s2
	vldx	$vr3, $s4, $t6
	vldx	$vr4, $s4, $t5
	vfadd.s	$vr0, $vr0, $vr1
	vfadd.s	$vr0, $vr0, $vr2
	vfadd.s	$vr0, $vr0, $vr3
	vfadd.s	$vr0, $vr0, $vr4
	vst	$vr0, $t2, 0
	addi.d	$t2, $t2, 16
	addi.d	$s3, $s3, -4
	addi.d	$s4, $s4, 16
	bnez	$s3, .LBB0_64
# %bb.65:                               # %middle.block610
                                        #   in Loop: Header=BB0_61 Depth=1
	move	$t2, $s5
	beq	$s5, $a1, .LBB0_60
.LBB0_66:                               # %scalar.ph593.preheader
                                        #   in Loop: Header=BB0_61 Depth=1
	sub.d	$s3, $a1, $t2
	slli.d	$t2, $t2, 2
	.p2align	4, , 16
.LBB0_67:                               # %scalar.ph593
                                        #   Parent Loop BB0_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s4, $a7, $t2
	fldx.s	$fa0, $a7, $t2
	fld.s	$fa1, $s4, 4
	fld.s	$fa2, $s4, 8
	fldx.s	$fa3, $s4, $t6
	fldx.s	$fa4, $s4, $t5
	fadd.s	$fa0, $fa1, $fa0
	fadd.s	$fa0, $fa0, $fa2
	fadd.s	$fa0, $fa0, $fa3
	fadd.s	$fa0, $fa0, $fa4
	fldx.s	$fa1, $s4, $t4
	fldx.s	$fa2, $s4, $t7
	fldx.s	$fa3, $s4, $t8
	fldx.s	$fa4, $s4, $fp
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	fadd.s	$fa0, $fa0, $fa3
	fadd.s	$fa0, $fa0, $fa4
	fstx.s	$fa0, $s6, $t2
	addi.d	$s3, $s3, -1
	addi.d	$t2, $t2, 4
	bnez	$s3, .LBB0_67
	b	.LBB0_60
.LBB0_68:                               # %.preheader303.us.preheader
	move	$a7, $zero
	ld.d	$t2, $sp, 32                    # 8-byte Folded Reload
	add.d	$t2, $t3, $t2
	alsl.d	$t2, $a1, $t2, 2
	lu12i.w	$s3, -2
	add.d	$t2, $t2, $s3
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	add.d	$s3, $a6, $s3
	alsl.d	$s3, $a1, $s3, 2
	add.d	$s3, $s3, $t4
	sltu	$s3, $t3, $s3
	sltu	$t2, $a6, $t2
	and	$t2, $s3, $t2
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	slli.d	$s3, $s3, 2
	add.d	$s4, $a6, $t5
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	or	$t2, $s5, $t2
	andi	$s5, $t2, 1
	move	$t2, $t3
	b	.LBB0_70
	.p2align	4, , 16
.LBB0_69:                               # %._crit_edge.us340
                                        #   in Loop: Header=BB0_70 Depth=1
	addi.d	$a7, $a7, 1
	add.d	$t2, $t2, $a5
	add.d	$s4, $s4, $t6
	add.d	$a6, $a6, $t6
	beq	$a7, $a0, .LBB0_77
.LBB0_70:                               # %.preheader303.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_73 Depth 2
                                        #     Child Loop BB0_76 Depth 2
	beqz	$s5, .LBB0_72
# %bb.71:                               #   in Loop: Header=BB0_70 Depth=1
	move	$s6, $zero
	b	.LBB0_75
	.p2align	4, , 16
.LBB0_72:                               # %vector.body624.preheader
                                        #   in Loop: Header=BB0_70 Depth=1
	move	$s7, $s4
	move	$s8, $s3
	move	$s6, $t2
	.p2align	4, , 16
.LBB0_73:                               # %vector.body624
                                        #   Parent Loop BB0_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vldx	$vr0, $s7, $t0
	vldx	$vr1, $s7, $s0
	vldx	$vr2, $s7, $s1
	vld	$vr3, $s7, -4
	vld	$vr4, $s7, 0
	vfadd.s	$vr0, $vr1, $vr0
	vfadd.s	$vr0, $vr0, $vr2
	vfadd.s	$vr0, $vr0, $vr3
	vfadd.s	$vr0, $vr0, $vr4
	vld	$vr1, $s7, 4
	vldx	$vr2, $s7, $s2
	vldx	$vr3, $s7, $t6
	vldx	$vr4, $s7, $t5
	vfadd.s	$vr0, $vr0, $vr1
	vfadd.s	$vr0, $vr0, $vr2
	vfadd.s	$vr0, $vr0, $vr3
	vfadd.s	$vr0, $vr0, $vr4
	vst	$vr0, $s6, 0
	addi.d	$s6, $s6, 16
	addi.d	$s8, $s8, -4
	addi.d	$s7, $s7, 16
	bnez	$s8, .LBB0_73
# %bb.74:                               # %middle.block636
                                        #   in Loop: Header=BB0_70 Depth=1
	move	$s6, $s3
	beq	$s3, $a1, .LBB0_69
.LBB0_75:                               # %scalar.ph619.preheader
                                        #   in Loop: Header=BB0_70 Depth=1
	sub.d	$s7, $a1, $s6
	slli.d	$s6, $s6, 2
	.p2align	4, , 16
.LBB0_76:                               # %scalar.ph619
                                        #   Parent Loop BB0_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s8, $a6, $s6
	fldx.s	$fa0, $a6, $s6
	fld.s	$fa1, $s8, 4
	fld.s	$fa2, $s8, 8
	fldx.s	$fa3, $s8, $t6
	fldx.s	$fa4, $s8, $t5
	fadd.s	$fa0, $fa1, $fa0
	fadd.s	$fa0, $fa0, $fa2
	fadd.s	$fa0, $fa0, $fa3
	fadd.s	$fa0, $fa0, $fa4
	fldx.s	$fa1, $s8, $t4
	fldx.s	$fa2, $s8, $t7
	fldx.s	$fa3, $s8, $t8
	fldx.s	$fa4, $s8, $fp
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	fadd.s	$fa0, $fa0, $fa3
	fadd.s	$fa0, $fa0, $fa4
	fstx.s	$fa0, $t2, $s6
	addi.d	$s7, $s7, -1
	addi.d	$s6, $s6, 4
	bnez	$s7, .LBB0_76
	b	.LBB0_69
.LBB0_77:                               # %.preheader301.us.preheader
	move	$t0, $zero
	sub.d	$a6, $a3, $t3
	sub.d	$a7, $a3, $t1
	sltui	$a6, $a6, 32
	sltui	$a7, $a7, 32
	or	$t7, $a6, $a7
	bstrpick.d	$a6, $a1, 30, 3
	slli.d	$t2, $a6, 3
	addi.d	$t4, $t3, 16
	addi.d	$t5, $a3, 16
	addi.d	$t6, $t1, 16
	sltui	$a7, $a1, 8
	or	$t7, $a7, $t7
	move	$t8, $a3
	move	$fp, $t1
	move	$s0, $t3
	b	.LBB0_79
	.p2align	4, , 16
.LBB0_78:                               # %._crit_edge.us343
                                        #   in Loop: Header=BB0_79 Depth=1
	addi.d	$t0, $t0, 1
	add.d	$t4, $t4, $a5
	add.d	$t5, $t5, $a5
	add.d	$t6, $t6, $a5
	add.d	$s0, $s0, $a5
	add.d	$fp, $fp, $a5
	add.d	$t8, $t8, $a5
	beq	$t0, $a0, .LBB0_86
.LBB0_79:                               # %.preheader301.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_82 Depth 2
                                        #     Child Loop BB0_85 Depth 2
	beqz	$t7, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_79 Depth=1
	move	$s4, $zero
	b	.LBB0_84
	.p2align	4, , 16
.LBB0_81:                               # %vector.body648.preheader
                                        #   in Loop: Header=BB0_79 Depth=1
	move	$s1, $t6
	move	$s2, $t5
	move	$s3, $t4
	move	$s4, $t2
	.p2align	4, , 16
.LBB0_82:                               # %vector.body648
                                        #   Parent Loop BB0_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s3, -16
	vld	$vr1, $s3, 0
	vld	$vr2, $s1, -16
	vld	$vr3, $s1, 0
	vfadd.s	$vr0, $vr2, $vr0
	vfadd.s	$vr1, $vr3, $vr1
	vst	$vr0, $s2, -16
	vst	$vr1, $s2, 0
	addi.d	$s4, $s4, -8
	addi.d	$s3, $s3, 32
	addi.d	$s2, $s2, 32
	addi.d	$s1, $s1, 32
	bnez	$s4, .LBB0_82
# %bb.83:                               # %middle.block655
                                        #   in Loop: Header=BB0_79 Depth=1
	move	$s4, $t2
	beq	$t2, $a1, .LBB0_78
.LBB0_84:                               # %scalar.ph643.preheader
                                        #   in Loop: Header=BB0_79 Depth=1
	alsl.d	$s1, $s4, $s0, 2
	alsl.d	$s2, $s4, $fp, 2
	alsl.d	$s3, $s4, $t8, 2
	sub.d	$s4, $a1, $s4
	.p2align	4, , 16
.LBB0_85:                               # %scalar.ph643
                                        #   Parent Loop BB0_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s1, 0
	fld.s	$fa1, $s2, 0
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $s3, 0
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 4
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 4
	bnez	$s4, .LBB0_85
	b	.LBB0_78
.LBB0_86:                               # %.preheader299.us.preheader
	move	$t0, $zero
	sub.d	$t2, $a4, $t3
	sub.d	$t4, $a4, $t1
	sub.d	$t5, $a4, $a2
	sltui	$t2, $t2, 32
	sltui	$t4, $t4, 32
	or	$t2, $t2, $t4
	sltui	$t4, $t5, 32
	or	$t2, $t2, $t4
	slli.d	$t4, $a6, 3
	addi.d	$t5, $t3, 16
	addi.d	$t6, $a4, 16
	addi.d	$t7, $t1, 16
	addi.d	$t8, $a2, 16
	or	$fp, $a7, $t2
	move	$s0, $a4
	b	.LBB0_88
	.p2align	4, , 16
.LBB0_87:                               # %._crit_edge.us346
                                        #   in Loop: Header=BB0_88 Depth=1
	addi.d	$t0, $t0, 1
	add.d	$t5, $t5, $a5
	add.d	$t6, $t6, $a5
	add.d	$t7, $t7, $a5
	add.d	$t8, $t8, $a5
	add.d	$t3, $t3, $a5
	add.d	$t1, $t1, $a5
	add.d	$a2, $a2, $a5
	add.d	$s0, $s0, $a5
	beq	$t0, $a0, .LBB0_95
.LBB0_88:                               # %.preheader299.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_91 Depth 2
                                        #     Child Loop BB0_94 Depth 2
	beqz	$fp, .LBB0_90
# %bb.89:                               #   in Loop: Header=BB0_88 Depth=1
	move	$s4, $zero
	b	.LBB0_93
	.p2align	4, , 16
.LBB0_90:                               # %vector.body669.preheader
                                        #   in Loop: Header=BB0_88 Depth=1
	move	$t2, $t8
	move	$s1, $t7
	move	$s2, $t6
	move	$s3, $t5
	move	$s4, $t4
	.p2align	4, , 16
.LBB0_91:                               # %vector.body669
                                        #   Parent Loop BB0_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s3, -16
	vld	$vr1, $s3, 0
	vld	$vr2, $t2, -16
	vld	$vr3, $t2, 0
	vld	$vr4, $s1, -16
	vld	$vr5, $s1, 0
	vfmul.s	$vr2, $vr2, $vr2
	vfmul.s	$vr3, $vr3, $vr3
	vfmsub.s	$vr0, $vr4, $vr0, $vr2
	vfmsub.s	$vr1, $vr5, $vr1, $vr3
	vst	$vr0, $s2, -16
	vst	$vr1, $s2, 0
	addi.d	$s4, $s4, -8
	addi.d	$s3, $s3, 32
	addi.d	$s2, $s2, 32
	addi.d	$s1, $s1, 32
	addi.d	$t2, $t2, 32
	bnez	$s4, .LBB0_91
# %bb.92:                               # %middle.block678
                                        #   in Loop: Header=BB0_88 Depth=1
	move	$s4, $t4
	beq	$t4, $a1, .LBB0_87
.LBB0_93:                               # %scalar.ph664.preheader
                                        #   in Loop: Header=BB0_88 Depth=1
	alsl.d	$t2, $s4, $t3, 2
	alsl.d	$s1, $s4, $t1, 2
	alsl.d	$s2, $s4, $a2, 2
	alsl.d	$s3, $s4, $s0, 2
	sub.d	$s4, $a1, $s4
	.p2align	4, , 16
.LBB0_94:                               # %scalar.ph664
                                        #   Parent Loop BB0_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $t2, 0
	fld.s	$fa1, $s2, 0
	fld.s	$fa2, $s1, 0
	fmul.s	$fa1, $fa1, $fa1
	fmsub.s	$fa0, $fa2, $fa0, $fa1
	fst.s	$fa0, $s3, 0
	addi.d	$t2, $t2, 4
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 4
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 4
	bnez	$s4, .LBB0_94
	b	.LBB0_87
.LBB0_95:                               # %.preheader.us.preheader
	move	$t0, $zero
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a2, $t8, $a4
	sub.d	$t1, $t8, $a3
	sltui	$a2, $a2, 32
	sltui	$t1, $t1, 32
	or	$a2, $a2, $t1
	slli.d	$a6, $a6, 3
	addi.d	$t1, $a4, 16
	addi.d	$t2, $t8, 16
	addi.d	$t3, $a3, 16
	or	$a7, $a7, $a2
	lu12i.w	$a2, 250429
	ori	$a2, $a2, 1802
	vreplgr2vr.w	$vr0, $a2
	pcalau12i	$t7, %pc_hi20(.LCPI0_2)
	b	.LBB0_97
	.p2align	4, , 16
.LBB0_96:                               # %._crit_edge.us350
                                        #   in Loop: Header=BB0_97 Depth=1
	addi.d	$t0, $t0, 1
	add.d	$t1, $t1, $a5
	add.d	$t2, $t2, $a5
	add.d	$t3, $t3, $a5
	add.d	$a4, $a4, $a5
	add.d	$a3, $a3, $a5
	add.d	$t8, $t8, $a5
	beq	$t0, $a0, .LBB0_104
.LBB0_97:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_100 Depth 2
                                        #     Child Loop BB0_103 Depth 2
	beqz	$a7, .LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_97 Depth=1
	move	$t6, $zero
	b	.LBB0_102
	.p2align	4, , 16
.LBB0_99:                               # %vector.body690.preheader
                                        #   in Loop: Header=BB0_97 Depth=1
	move	$a2, $t3
	move	$t4, $t2
	move	$t5, $t1
	move	$t6, $a6
	.p2align	4, , 16
.LBB0_100:                              # %vector.body690
                                        #   Parent Loop BB0_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a2, -16
	vld	$vr2, $a2, 0
	vld	$vr3, $t5, -16
	vld	$vr4, $t5, 0
	vfmul.s	$vr1, $vr1, $vr1
	vfmul.s	$vr2, $vr2, $vr2
	vfnmsub.s	$vr1, $vr1, $vr0, $vr3
	vfnmsub.s	$vr2, $vr2, $vr0, $vr4
	vst	$vr1, $t4, -16
	vst	$vr2, $t4, 0
	addi.d	$t6, $t6, -8
	addi.d	$t5, $t5, 32
	addi.d	$t4, $t4, 32
	addi.d	$a2, $a2, 32
	bnez	$t6, .LBB0_100
# %bb.101:                              # %middle.block697
                                        #   in Loop: Header=BB0_97 Depth=1
	move	$t6, $a6
	beq	$a6, $a1, .LBB0_96
.LBB0_102:                              # %scalar.ph685.preheader
                                        #   in Loop: Header=BB0_97 Depth=1
	alsl.d	$a2, $t6, $a4, 2
	alsl.d	$t4, $t6, $a3, 2
	alsl.d	$t5, $t6, $t8, 2
	sub.d	$t6, $a1, $t6
	.p2align	4, , 16
.LBB0_103:                              # %scalar.ph685
                                        #   Parent Loop BB0_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $t4, 0
	fld.s	$fa3, $t7, %pc_lo12(.LCPI0_2)
	fmul.s	$fa2, $fa2, $fa2
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fst.s	$fa1, $t5, 0
	addi.d	$a2, $a2, 4
	addi.d	$t4, $t4, 4
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 4
	bnez	$t6, .LBB0_103
	b	.LBB0_96
.LBB0_104:
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
.LBB0_105:                              # %._crit_edge349
	ret
.Lfunc_end0:
	.size	_Z12harrisKerneliiPA2052_fPA2048_fPA2050_fS4_S4_S4_S4_S2_S2_S2_S2_S2_, .Lfunc_end0-_Z12harrisKerneliiPA2052_fPA2048_fPA2050_fS4_S4_S4_S4_S2_S2_S2_S2_S2_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
