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
	addi.w	$t2, $zero, -1
	blt	$a0, $t2, .LBB0_141
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
	move	$s8, $a7
	ld.d	$t0, $sp, 144
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	blt	$a1, $t2, .LBB0_65
# %bb.2:                                # %.preheader317.us.preheader
	move	$t1, $a5
	move	$s2, $zero
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.w	$a5, $a0, 2
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.w	$t3, $a1, 2
	ori	$a0, $zero, 1
	slt	$a1, $a0, $a5
	masknez	$a0, $a0, $a1
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	maskeqz	$a1, $a5, $a1
	or	$s3, $a1, $a0
	bstrpick.d	$t2, $t3, 31, 0
	slli.d	$a0, $s3, 13
	alsl.d	$a1, $s3, $a0, 3
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.d	$a1, $t1, $a1
	alsl.d	$a1, $t2, $a1, 2
	lu12i.w	$a7, -3
	ori	$a5, $a7, 4088
	move	$a3, $a5
	add.d	$a1, $a1, $a5
	alsl.d	$a0, $s3, $a0, 4
	add.d	$a0, $a2, $a0
	alsl.d	$a0, $t2, $a0, 2
	lu12i.w	$a5, 2
	ori	$s4, $a5, 24
	add.d	$t8, $a0, $s4
	sltu	$a0, $t1, $t8
	sltu	$a1, $a2, $a1
	and	$a0, $a0, $a1
	bstrpick.d	$a1, $t3, 31, 3
	slli.d	$t6, $a1, 3
	add.d	$s6, $a2, $s4
	st.d	$t3, $sp, 48                    # 8-byte Folded Spill
	sltui	$fp, $t3, 8
	or	$a0, $fp, $a0
	andi	$s7, $a0, 1
	ori	$t5, $a5, 16
	lu12i.w	$a0, 4
	ori	$s0, $a0, 32
	ori	$s1, $a0, 40
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI0_1)
	ori	$t3, $a5, 8
	ori	$a0, $a7, 4072
	lu12i.w	$a1, 252586
	ori	$a1, $a1, 2731
	xvreplgr2vr.w	$xr2, $a1
	lu12i.w	$a1, 254634
	ori	$a1, $a1, 2731
	xvreplgr2vr.w	$xr3, $a1
	move	$ra, $a2
	move	$t4, $t1
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %._crit_edge.us
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s2, $s2, 1
	add.d	$t4, $t4, $t3
	add.d	$s6, $s6, $t5
	add.d	$ra, $ra, $t5
	beq	$s2, $s3, .LBB0_11
.LBB0_4:                                # %.preheader317.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_10 Depth 2
	beqz	$s7, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a5, $zero
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_6:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a1, $s6
	move	$s5, $t6
	move	$a5, $t4
	.p2align	4, , 16
.LBB0_7:                                # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvldx	$xr4, $a1, $a0
	ori	$t7, $a7, 4080
	xvldx	$xr5, $a1, $t7
	xvldx	$xr6, $a1, $t3
	xvld	$xr7, $a1, -8
	xvldx	$xr8, $a1, $t5
	xvld	$xr9, $a1, 0
	xvfadd.s	$xr4, $xr4, $xr6
	xvfsub.s	$xr4, $xr5, $xr4
	xvfadd.s	$xr4, $xr4, $xr8
	xvfsub.s	$xr5, $xr9, $xr7
	xvfmul.s	$xr5, $xr5, $xr3
	xvfmadd.s	$xr4, $xr4, $xr2, $xr5
	xvst	$xr4, $a5, 0
	addi.d	$a5, $a5, 32
	addi.d	$s5, $s5, -8
	addi.d	$a1, $a1, 32
	bnez	$s5, .LBB0_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a5, $t6
	beq	$t6, $t2, .LBB0_3
.LBB0_9:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	sub.d	$a1, $t2, $a5
	slli.d	$a5, $a5, 2
	.p2align	4, , 16
.LBB0_10:                               # %scalar.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t7, $ra, $a5
	fldx.s	$fa4, $ra, $a5
	fld.s	$fa5, $t7, 8
	fldx.s	$fa6, $t7, $s0
	fldx.s	$fa7, $t7, $t5
	fldx.s	$ft0, $t7, $s1
	fldx.s	$ft1, $t7, $s4
	fadd.s	$fa4, $fa4, $fa6
	fsub.s	$fa4, $fa5, $fa4
	fadd.s	$fa4, $fa4, $ft0
	fsub.s	$fa5, $ft1, $fa7
	fmul.s	$fa5, $fa5, $fa0
	fmadd.s	$fa4, $fa4, $fa1, $fa5
	fstx.s	$fa4, $t4, $a5
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 4
	bnez	$a1, .LBB0_10
	b	.LBB0_3
.LBB0_11:                               # %.preheader315.us.preheader
	move	$a7, $zero
	ori	$a0, $zero, 1
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	slt	$a1, $a0, $a5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a5, $a1
	or	$s2, $a1, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a4, $a0
	alsl.d	$a0, $t2, $a0, 2
	add.d	$a0, $a0, $a3
	sltu	$a1, $a4, $t8
	sltu	$a0, $a2, $a0
	and	$a1, $a1, $a0
	bstrpick.d	$a0, $t2, 31, 3
	slli.d	$a0, $a0, 3
	add.d	$t6, $a2, $s1
	add.d	$a2, $a2, $s0
	or	$a1, $fp, $a1
	andi	$t7, $a1, 1
	lu12i.w	$t8, -5
	move	$fp, $a4
	ld.d	$ra, $sp, 48                    # 8-byte Folded Reload
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_12:                               # %._crit_edge.us322
                                        #   in Loop: Header=BB0_13 Depth=1
	addi.d	$a7, $a7, 1
	add.d	$fp, $fp, $t3
	add.d	$t6, $t6, $t5
	add.d	$a2, $a2, $t5
	beq	$a7, $s2, .LBB0_20
.LBB0_13:                               # %.preheader315.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_19 Depth 2
	ori	$a5, $t8, 4064
	beqz	$t7, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	move	$t4, $zero
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_15:                               # %vector.body502.preheader
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$a1, $a0
	move	$s0, $t6
	move	$s1, $fp
	.p2align	4, , 16
.LBB0_16:                               # %vector.body502
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$t4, $t8, 4056
	xvldx	$xr4, $s0, $t4
	xvld	$xr5, $s0, -8
	ori	$t4, $t8, 4060
	xvldx	$xr6, $s0, $a5
	xvldx	$xr7, $s0, $t4
	xvld	$xr8, $s0, 0
	xvld	$xr9, $s0, -4
	xvfadd.s	$xr4, $xr4, $xr6
	xvfsub.s	$xr4, $xr5, $xr4
	xvfadd.s	$xr4, $xr4, $xr8
	xvfsub.s	$xr5, $xr9, $xr7
	xvfmul.s	$xr5, $xr5, $xr3
	xvfmadd.s	$xr4, $xr4, $xr2, $xr5
	xvst	$xr4, $s1, 0
	addi.d	$s1, $s1, 32
	addi.d	$a1, $a1, -8
	addi.d	$s0, $s0, 32
	bnez	$a1, .LBB0_16
# %bb.17:                               # %middle.block511
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$t4, $a0
	beq	$a0, $t2, .LBB0_12
.LBB0_18:                               # %scalar.ph497.preheader
                                        #   in Loop: Header=BB0_13 Depth=1
	sub.d	$a1, $t2, $t4
	slli.d	$s0, $t4, 2
	.p2align	4, , 16
.LBB0_19:                               # %scalar.ph497
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t4, $a2, $s0
	fldx.s	$fa4, $t4, $a5
	fldx.s	$fa5, $a2, $s0
	ori	$s1, $t8, 4072
	fldx.s	$fa6, $t4, $s1
	ori	$s1, $t8, 4068
	fldx.s	$fa7, $t4, $s1
	fld.s	$ft0, $t4, 8
	fld.s	$ft1, $t4, 4
	fadd.s	$fa4, $fa4, $fa6
	fsub.s	$fa4, $fa5, $fa4
	fadd.s	$fa4, $fa4, $ft0
	fsub.s	$fa5, $ft1, $fa7
	fmul.s	$fa5, $fa5, $fa0
	fmadd.s	$fa4, $fa4, $fa1, $fa5
	fstx.s	$fa4, $fp, $s0
	addi.d	$a1, $a1, -1
	addi.d	$s0, $s0, 4
	bnez	$a1, .LBB0_19
	b	.LBB0_12
.LBB0_20:                               # %.preheader313.us.preheader
	move	$fp, $zero
	ori	$a0, $zero, 1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a7, $a1, $a0
	sub.d	$a0, $t0, $t1
	sltui	$a1, $ra, 4
	sltui	$a0, $a0, 64
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	or	$t5, $a1, $a0
	bstrpick.d	$t6, $t2, 31, 4
	slli.d	$s0, $t6, 4
	andi	$a2, $t2, 12
	bstrpick.d	$t7, $t2, 31, 2
	slli.d	$s1, $t7, 2
	addi.d	$s2, $t0, 32
	addi.d	$s3, $t1, 32
	move	$t8, $t2
	bstrins.d	$t8, $zero, 1, 0
	sub.d	$s4, $zero, $t8
	ori	$s5, $zero, 16
	move	$s6, $t1
	move	$s7, $t0
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_21:                               # %._crit_edge.us325
                                        #   in Loop: Header=BB0_22 Depth=1
	addi.d	$fp, $fp, 1
	add.d	$s2, $s2, $t3
	add.d	$s3, $s3, $t3
	add.d	$s7, $s7, $t3
	add.d	$s6, $s6, $t3
	beq	$fp, $a7, .LBB0_35
.LBB0_22:                               # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_27 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_34 Depth 2
	beqz	$t5, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=1
	move	$a1, $zero
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_24:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_22 Depth=1
	bgeu	$ra, $s5, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_22 Depth=1
	move	$a5, $zero
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_26:                               # %vector.body522.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	move	$a5, $s0
	.p2align	4, , 16
.LBB0_27:                               # %vector.body522
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a0, -32
	xvld	$xr1, $a0, 0
	xvfmul.s	$xr0, $xr0, $xr0
	xvfmul.s	$xr1, $xr1, $xr1
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a5, $a5, -16
	addi.d	$a1, $a1, 64
	addi.d	$a0, $a0, 64
	bnez	$a5, .LBB0_27
# %bb.28:                               # %middle.block527
                                        #   in Loop: Header=BB0_22 Depth=1
	beq	$s0, $t2, .LBB0_21
# %bb.29:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_22 Depth=1
	move	$a5, $s0
	move	$a1, $s0
	beqz	$a2, .LBB0_33
.LBB0_30:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB0_22 Depth=1
	add.d	$a0, $s4, $a5
	alsl.d	$a1, $a5, $s7, 2
	alsl.d	$a5, $a5, $s6, 2
	.p2align	4, , 16
.LBB0_31:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, 0
	vfmul.s	$vr0, $vr0, $vr0
	vst	$vr0, $a1, 0
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 16
	addi.d	$a5, $a5, 16
	bnez	$a0, .LBB0_31
# %bb.32:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_22 Depth=1
	move	$a1, $s1
	beq	$s1, $t2, .LBB0_21
.LBB0_33:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	slli.d	$a0, $a1, 2
	sub.d	$a1, $t2, $a1
	.p2align	4, , 16
.LBB0_34:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa0, $s6, $a0
	fmul.s	$fa0, $fa0, $fa0
	fstx.s	$fa0, $s7, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB0_34
	b	.LBB0_21
.LBB0_35:                               # %.preheader311.us.preheader
	move	$fp, $zero
	ori	$a0, $zero, 1
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	slt	$a1, $a0, $a5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a5, $a1
	or	$s0, $a1, $a0
	sub.d	$a0, $s8, $a4
	sub.d	$a1, $s8, $t1
	sltui	$a0, $a0, 64
	sltui	$a1, $a1, 64
	or	$a0, $a0, $a1
	slli.d	$s1, $t6, 4
	slli.d	$s2, $t7, 2
	addi.d	$s3, $a4, 32
	addi.d	$s4, $s8, 32
	addi.d	$s5, $t1, 32
	sub.d	$s6, $zero, $t8
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	or	$s7, $a1, $a0
	ori	$t5, $zero, 16
	move	$ra, $a4
	move	$a7, $s8
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_36:                               # %._crit_edge.us328
                                        #   in Loop: Header=BB0_37 Depth=1
	addi.d	$fp, $fp, 1
	add.d	$s3, $s3, $t3
	add.d	$s4, $s4, $t3
	add.d	$s5, $s5, $t3
	add.d	$a7, $a7, $t3
	add.d	$t1, $t1, $t3
	add.d	$ra, $ra, $t3
	beq	$fp, $s0, .LBB0_50
.LBB0_37:                               # %iter.check542
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_42 Depth 2
                                        #     Child Loop BB0_46 Depth 2
                                        #     Child Loop BB0_49 Depth 2
	beqz	$s7, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_37 Depth=1
	move	$a1, $zero
	b	.LBB0_48
	.p2align	4, , 16
.LBB0_39:                               # %vector.main.loop.iter.check544
                                        #   in Loop: Header=BB0_37 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bgeu	$a0, $t5, .LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_37 Depth=1
	move	$t4, $zero
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_41:                               # %vector.body548.preheader
                                        #   in Loop: Header=BB0_37 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	move	$a5, $s3
	move	$t4, $s1
	.p2align	4, , 16
.LBB0_42:                               # %vector.body548
                                        #   Parent Loop BB0_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a0, -32
	xvld	$xr3, $a0, 0
	xvfmul.s	$xr0, $xr2, $xr0
	xvfmul.s	$xr1, $xr3, $xr1
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$t4, $t4, -16
	addi.d	$a5, $a5, 64
	addi.d	$a1, $a1, 64
	addi.d	$a0, $a0, 64
	bnez	$t4, .LBB0_42
# %bb.43:                               # %middle.block555
                                        #   in Loop: Header=BB0_37 Depth=1
	beq	$s1, $t2, .LBB0_36
# %bb.44:                               # %vec.epilog.iter.check560
                                        #   in Loop: Header=BB0_37 Depth=1
	move	$t4, $s1
	move	$a1, $s1
	beqz	$a2, .LBB0_48
.LBB0_45:                               # %vec.epilog.ph559
                                        #   in Loop: Header=BB0_37 Depth=1
	add.d	$a0, $s6, $t4
	alsl.d	$a1, $t4, $a7, 2
	alsl.d	$a5, $t4, $t1, 2
	alsl.d	$t4, $t4, $ra, 2
	.p2align	4, , 16
.LBB0_46:                               # %vec.epilog.vector.body565
                                        #   Parent Loop BB0_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t4, 0
	vld	$vr1, $a5, 0
	vfmul.s	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 0
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 16
	addi.d	$a5, $a5, 16
	addi.d	$t4, $t4, 16
	bnez	$a0, .LBB0_46
# %bb.47:                               # %vec.epilog.middle.block570
                                        #   in Loop: Header=BB0_37 Depth=1
	move	$a1, $s2
	beq	$s2, $t2, .LBB0_36
.LBB0_48:                               # %vec.epilog.scalar.ph558.preheader
                                        #   in Loop: Header=BB0_37 Depth=1
	slli.d	$a0, $a1, 2
	sub.d	$a1, $t2, $a1
	.p2align	4, , 16
.LBB0_49:                               # %vec.epilog.scalar.ph558
                                        #   Parent Loop BB0_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa0, $ra, $a0
	fldx.s	$fa1, $t1, $a0
	fmul.s	$fa0, $fa1, $fa0
	fstx.s	$fa0, $a7, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB0_49
	b	.LBB0_36
.LBB0_50:                               # %.preheader309.us.preheader
	move	$a5, $zero
	ori	$a0, $zero, 1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	slt	$a1, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a7, $a1, $a0
	sub.d	$a0, $a6, $a4
	sltui	$a0, $a0, 64
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	or	$t4, $a1, $a0
	slli.d	$t5, $t6, 4
	slli.d	$t6, $t7, 2
	addi.d	$t7, $a6, 32
	addi.d	$fp, $a4, 32
	sub.d	$t8, $zero, $t8
	ori	$s0, $zero, 16
	move	$s1, $a6
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	b	.LBB0_52
	.p2align	4, , 16
.LBB0_51:                               # %._crit_edge.us331
                                        #   in Loop: Header=BB0_52 Depth=1
	addi.d	$a5, $a5, 1
	add.d	$t7, $t7, $t3
	add.d	$fp, $fp, $t3
	add.d	$s1, $s1, $t3
	add.d	$a4, $a4, $t3
	beq	$a5, $a7, .LBB0_65
.LBB0_52:                               # %iter.check578
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_57 Depth 2
                                        #     Child Loop BB0_61 Depth 2
                                        #     Child Loop BB0_64 Depth 2
	beqz	$t4, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_52 Depth=1
	move	$s2, $zero
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_54:                               # %vector.main.loop.iter.check580
                                        #   in Loop: Header=BB0_52 Depth=1
	bgeu	$s4, $s0, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_52 Depth=1
	move	$t1, $zero
	b	.LBB0_60
	.p2align	4, , 16
.LBB0_56:                               # %vector.body584.preheader
                                        #   in Loop: Header=BB0_52 Depth=1
	move	$s3, $fp
	move	$s2, $t7
	move	$t1, $t5
	.p2align	4, , 16
.LBB0_57:                               # %vector.body584
                                        #   Parent Loop BB0_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $s3, -32
	xvld	$xr1, $s3, 0
	xvfmul.s	$xr0, $xr0, $xr0
	xvfmul.s	$xr1, $xr1, $xr1
	xvst	$xr0, $s2, -32
	xvst	$xr1, $s2, 0
	addi.d	$t1, $t1, -16
	addi.d	$s2, $s2, 64
	addi.d	$s3, $s3, 64
	bnez	$t1, .LBB0_57
# %bb.58:                               # %middle.block589
                                        #   in Loop: Header=BB0_52 Depth=1
	beq	$t5, $t2, .LBB0_51
# %bb.59:                               # %vec.epilog.iter.check594
                                        #   in Loop: Header=BB0_52 Depth=1
	move	$t1, $t5
	move	$s2, $t5
	beqz	$a2, .LBB0_63
.LBB0_60:                               # %vec.epilog.ph593
                                        #   in Loop: Header=BB0_52 Depth=1
	add.d	$s3, $t8, $t1
	alsl.d	$s2, $t1, $s1, 2
	alsl.d	$t1, $t1, $a4, 2
	.p2align	4, , 16
.LBB0_61:                               # %vec.epilog.vector.body599
                                        #   Parent Loop BB0_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t1, 0
	vfmul.s	$vr0, $vr0, $vr0
	vst	$vr0, $s2, 0
	addi.d	$s3, $s3, 4
	addi.d	$s2, $s2, 16
	addi.d	$t1, $t1, 16
	bnez	$s3, .LBB0_61
# %bb.62:                               # %vec.epilog.middle.block603
                                        #   in Loop: Header=BB0_52 Depth=1
	move	$s2, $t6
	beq	$t6, $t2, .LBB0_51
.LBB0_63:                               # %vec.epilog.scalar.ph592.preheader
                                        #   in Loop: Header=BB0_52 Depth=1
	slli.d	$s3, $s2, 2
	sub.d	$t1, $t2, $s2
	.p2align	4, , 16
.LBB0_64:                               # %vec.epilog.scalar.ph592
                                        #   Parent Loop BB0_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa0, $a4, $s3
	fmul.s	$fa0, $fa0, $fa0
	fstx.s	$fa0, $s1, $s3
	addi.d	$t1, $t1, -1
	addi.d	$s3, $s3, 4
	bnez	$t1, .LBB0_64
	b	.LBB0_51
.LBB0_65:                               # %.preheader308
	blez	$a0, .LBB0_140
# %bb.66:                               # %.preheader308
	blez	$a1, .LBB0_140
# %bb.67:                               # %.preheader307.us.preheader
	move	$s5, $zero
	ld.d	$a3, $sp, 184
	ld.d	$a4, $sp, 176
	ld.d	$t1, $sp, 168
	ld.d	$a2, $sp, 160
	ld.d	$t3, $sp, 152
	slli.d	$t2, $a0, 13
	add.d	$a5, $t1, $t2
	alsl.d	$a5, $a1, $a5, 2
	lu12i.w	$a7, -2
	add.d	$a5, $a5, $a7
	addi.d	$a7, $t0, 4
	alsl.d	$t2, $a0, $t2, 3
	add.d	$t2, $t0, $t2
	alsl.d	$t2, $a1, $t2, 2
	lu12i.w	$s2, 2
	ori	$t4, $s2, 16
	add.d	$t2, $t2, $t4
	sltu	$t2, $t1, $t2
	sltu	$a5, $a7, $a5
	and	$a5, $t2, $a5
	bstrpick.d	$a7, $a1, 30, 3
	slli.d	$a7, $a7, 3
	ori	$t5, $s2, 12
	add.d	$s3, $t0, $t5
	sltui	$t2, $a1, 8
	st.d	$t2, $sp, 48                    # 8-byte Folded Spill
	or	$a5, $t2, $a5
	andi	$t2, $a5, 1
	ori	$t6, $s2, 8
	lu12i.w	$a5, 4
	ori	$t7, $a5, 16
	ori	$t8, $a5, 20
	ori	$fp, $a5, 24
	vldi	$vr0, -1280
	lu12i.w	$ra, -3
	ori	$s0, $ra, 4088
	ori	$s1, $ra, 4092
	ori	$s2, $s2, 4
	lu12i.w	$a5, 262144
	xvreplgr2vr.w	$xr1, $a5
	move	$s4, $t1
	b	.LBB0_69
	.p2align	4, , 16
.LBB0_68:                               # %._crit_edge.us334
                                        #   in Loop: Header=BB0_69 Depth=1
	addi.d	$s5, $s5, 1
	lu12i.w	$a5, 2
	add.d	$s4, $s4, $a5
	add.d	$s3, $s3, $t6
	add.d	$t0, $t0, $t6
	beq	$s5, $a0, .LBB0_76
.LBB0_69:                               # %.preheader307.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_72 Depth 2
                                        #     Child Loop BB0_75 Depth 2
	beqz	$t2, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_69 Depth=1
	move	$s6, $zero
	b	.LBB0_74
	.p2align	4, , 16
.LBB0_71:                               # %vector.body618.preheader
                                        #   in Loop: Header=BB0_69 Depth=1
	move	$a5, $s3
	move	$s6, $a7
	move	$s7, $s4
	.p2align	4, , 16
.LBB0_72:                               # %vector.body618
                                        #   Parent Loop BB0_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $a5, -4
	xvldx	$xr3, $a5, $s0
	xvldx	$xr4, $a5, $s1
	xvld	$xr5, $a5, 0
	xvld	$xr6, $a5, 4
	xvldx	$xr7, $a5, $s2
	xvldx	$xr8, $a5, $t6
	xvldx	$xr9, $a5, $t5
	xvfmadd.s	$xr2, $xr2, $xr1, $xr3
	xvfadd.s	$xr2, $xr2, $xr4
	xvfadd.s	$xr2, $xr2, $xr5
	xvfadd.s	$xr2, $xr2, $xr6
	xvfadd.s	$xr2, $xr2, $xr7
	xvfadd.s	$xr2, $xr2, $xr8
	xvfadd.s	$xr2, $xr2, $xr9
	xvst	$xr2, $s7, 0
	addi.d	$s7, $s7, 32
	addi.d	$s6, $s6, -8
	addi.d	$a5, $a5, 32
	bnez	$s6, .LBB0_72
# %bb.73:                               # %middle.block629
                                        #   in Loop: Header=BB0_69 Depth=1
	move	$s6, $a7
	beq	$a7, $a1, .LBB0_68
.LBB0_74:                               # %scalar.ph613.preheader
                                        #   in Loop: Header=BB0_69 Depth=1
	slli.d	$a5, $s6, 2
	sub.d	$s6, $a1, $s6
	.p2align	4, , 16
.LBB0_75:                               # %scalar.ph613
                                        #   Parent Loop BB0_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s7, $t0, $a5
	fldx.s	$fa2, $s7, $t6
	fld.s	$fa3, $s7, 4
	fld.s	$fa4, $s7, 8
	fldx.s	$fa5, $s7, $t5
	fldx.s	$fa6, $s7, $t4
	fldx.s	$fa7, $s7, $t7
	fldx.s	$ft0, $s7, $t8
	fldx.s	$ft1, $s7, $fp
	fmadd.s	$fa2, $fa2, $fa0, $fa3
	fadd.s	$fa2, $fa2, $fa4
	fadd.s	$fa2, $fa2, $fa5
	fadd.s	$fa2, $fa2, $fa6
	fadd.s	$fa2, $fa2, $fa7
	fadd.s	$fa2, $fa2, $ft0
	fadd.s	$fa2, $fa2, $ft1
	fstx.s	$fa2, $s4, $a5
	addi.d	$s6, $s6, -1
	addi.d	$a5, $a5, 4
	bnez	$s6, .LBB0_75
	b	.LBB0_68
.LBB0_76:                               # %.preheader306
	blez	$a0, .LBB0_140
# %bb.77:                               # %.preheader305.us.preheader
	move	$t0, $a1
	move	$a1, $a0
	move	$t2, $ra
	move	$ra, $zero
	slli.d	$s5, $a0, 13
	add.d	$a5, $a2, $s5
	alsl.d	$a5, $t0, $a5, 2
	lu12i.w	$a0, -2
	add.d	$a5, $a5, $a0
	move	$a0, $a1
	alsl.d	$a1, $a1, $s5, 3
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a7, $s8, $a1
	alsl.d	$a7, $t0, $a7, 2
	add.d	$a7, $a7, $t4
	sltu	$a7, $a2, $a7
	sltu	$a5, $s8, $a5
	and	$a5, $a7, $a5
	move	$a1, $t0
	bstrpick.d	$a7, $t0, 30, 3
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a7, $a7, 3
	add.d	$s6, $s8, $t5
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	or	$a5, $t0, $a5
	andi	$s7, $a5, 1
	ori	$t0, $t2, 4084
	move	$a5, $a2
	b	.LBB0_79
	.p2align	4, , 16
.LBB0_78:                               # %._crit_edge.us337
                                        #   in Loop: Header=BB0_79 Depth=1
	addi.d	$ra, $ra, 1
	lu12i.w	$t2, 2
	add.d	$a5, $a5, $t2
	add.d	$s6, $s6, $t6
	add.d	$s8, $s8, $t6
	beq	$ra, $a0, .LBB0_86
.LBB0_79:                               # %.preheader305.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_82 Depth 2
                                        #     Child Loop BB0_85 Depth 2
	beqz	$s7, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_79 Depth=1
	move	$t2, $zero
	b	.LBB0_84
	.p2align	4, , 16
.LBB0_81:                               # %vector.body643.preheader
                                        #   in Loop: Header=BB0_79 Depth=1
	move	$s4, $s6
	move	$s3, $a7
	move	$t2, $a5
	.p2align	4, , 16
.LBB0_82:                               # %vector.body643
                                        #   Parent Loop BB0_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvldx	$xr0, $s4, $t0
	xvldx	$xr1, $s4, $s0
	xvldx	$xr2, $s4, $s1
	xvld	$xr3, $s4, -4
	xvld	$xr4, $s4, 0
	xvfadd.s	$xr0, $xr1, $xr0
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr0, $xr0, $xr3
	xvfadd.s	$xr0, $xr0, $xr4
	xvld	$xr1, $s4, 4
	xvldx	$xr2, $s4, $s2
	xvldx	$xr3, $s4, $t6
	xvldx	$xr4, $s4, $t5
	xvfadd.s	$xr0, $xr0, $xr1
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr0, $xr0, $xr3
	xvfadd.s	$xr0, $xr0, $xr4
	xvst	$xr0, $t2, 0
	addi.d	$t2, $t2, 32
	addi.d	$s3, $s3, -8
	addi.d	$s4, $s4, 32
	bnez	$s3, .LBB0_82
# %bb.83:                               # %middle.block655
                                        #   in Loop: Header=BB0_79 Depth=1
	move	$t2, $a7
	beq	$a7, $a1, .LBB0_78
.LBB0_84:                               # %scalar.ph638.preheader
                                        #   in Loop: Header=BB0_79 Depth=1
	sub.d	$s3, $a1, $t2
	slli.d	$t2, $t2, 2
	.p2align	4, , 16
.LBB0_85:                               # %scalar.ph638
                                        #   Parent Loop BB0_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s4, $s8, $t2
	fldx.s	$fa0, $s8, $t2
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
	fstx.s	$fa0, $a5, $t2
	addi.d	$s3, $s3, -1
	addi.d	$t2, $t2, 4
	bnez	$s3, .LBB0_85
	b	.LBB0_78
.LBB0_86:                               # %.preheader303.us.preheader
	move	$s7, $zero
	add.d	$a5, $t3, $s5
	alsl.d	$a5, $a1, $a5, 2
	lu12i.w	$a7, -2
	add.d	$a5, $a5, $a7
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	add.d	$a7, $a6, $a7
	alsl.d	$a7, $a1, $a7, 2
	add.d	$a7, $a7, $t4
	sltu	$a7, $t3, $a7
	sltu	$a5, $a6, $a5
	and	$a5, $a7, $a5
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a7, $a7, 3
	add.d	$s3, $a6, $t5
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	or	$a5, $t2, $a5
	andi	$s4, $a5, 1
	move	$t2, $t3
	move	$ra, $a0
	lu12i.w	$a0, 2
	b	.LBB0_88
	.p2align	4, , 16
.LBB0_87:                               # %._crit_edge.us340
                                        #   in Loop: Header=BB0_88 Depth=1
	addi.d	$s7, $s7, 1
	add.d	$t2, $t2, $a0
	add.d	$s3, $s3, $t6
	add.d	$a6, $a6, $t6
	beq	$s7, $ra, .LBB0_95
.LBB0_88:                               # %.preheader303.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_91 Depth 2
                                        #     Child Loop BB0_94 Depth 2
	beqz	$s4, .LBB0_90
# %bb.89:                               #   in Loop: Header=BB0_88 Depth=1
	move	$a5, $zero
	b	.LBB0_93
	.p2align	4, , 16
.LBB0_90:                               # %vector.body669.preheader
                                        #   in Loop: Header=BB0_88 Depth=1
	move	$s5, $s3
	move	$s6, $a7
	move	$a5, $t2
	.p2align	4, , 16
.LBB0_91:                               # %vector.body669
                                        #   Parent Loop BB0_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvldx	$xr0, $s5, $t0
	xvldx	$xr1, $s5, $s0
	xvldx	$xr2, $s5, $s1
	xvld	$xr3, $s5, -4
	xvld	$xr4, $s5, 0
	xvfadd.s	$xr0, $xr1, $xr0
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr0, $xr0, $xr3
	xvfadd.s	$xr0, $xr0, $xr4
	xvld	$xr1, $s5, 4
	xvldx	$xr2, $s5, $s2
	xvldx	$xr3, $s5, $t6
	xvldx	$xr4, $s5, $t5
	xvfadd.s	$xr0, $xr0, $xr1
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr0, $xr0, $xr3
	xvfadd.s	$xr0, $xr0, $xr4
	xvst	$xr0, $a5, 0
	addi.d	$a5, $a5, 32
	addi.d	$s6, $s6, -8
	addi.d	$s5, $s5, 32
	bnez	$s6, .LBB0_91
# %bb.92:                               # %middle.block681
                                        #   in Loop: Header=BB0_88 Depth=1
	move	$a5, $a7
	beq	$a7, $a1, .LBB0_87
.LBB0_93:                               # %scalar.ph664.preheader
                                        #   in Loop: Header=BB0_88 Depth=1
	sub.d	$s5, $a1, $a5
	slli.d	$a5, $a5, 2
	.p2align	4, , 16
.LBB0_94:                               # %scalar.ph664
                                        #   Parent Loop BB0_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s6, $a6, $a5
	fldx.s	$fa0, $a6, $a5
	fld.s	$fa1, $s6, 4
	fld.s	$fa2, $s6, 8
	fldx.s	$fa3, $s6, $t6
	fldx.s	$fa4, $s6, $t5
	fadd.s	$fa0, $fa1, $fa0
	fadd.s	$fa0, $fa0, $fa2
	fadd.s	$fa0, $fa0, $fa3
	fadd.s	$fa0, $fa0, $fa4
	fldx.s	$fa1, $s6, $t4
	fldx.s	$fa2, $s6, $t7
	fldx.s	$fa3, $s6, $t8
	fldx.s	$fa4, $s6, $fp
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	fadd.s	$fa0, $fa0, $fa3
	fadd.s	$fa0, $fa0, $fa4
	fstx.s	$fa0, $t2, $a5
	addi.d	$s5, $s5, -1
	addi.d	$a5, $a5, 4
	bnez	$s5, .LBB0_94
	b	.LBB0_87
.LBB0_95:                               # %.preheader301.us.preheader
	move	$t5, $zero
	sub.d	$a5, $a3, $t3
	sub.d	$a6, $a3, $t1
	sltui	$a5, $a5, 64
	sltui	$a6, $a6, 64
	or	$a5, $a5, $a6
	bstrpick.d	$t0, $a1, 30, 4
	slli.d	$t6, $t0, 4
	andi	$a6, $a1, 12
	bstrpick.d	$t4, $a1, 30, 2
	slli.d	$t7, $t4, 2
	addi.d	$t8, $t3, 32
	addi.d	$fp, $a3, 32
	addi.d	$s0, $t1, 32
	sub.d	$s1, $zero, $t7
	sltui	$a7, $a1, 4
	or	$s2, $a7, $a5
	ori	$s3, $zero, 16
	move	$s4, $t3
	move	$s5, $t1
	move	$s6, $a3
	lu12i.w	$a0, 2
	b	.LBB0_97
	.p2align	4, , 16
.LBB0_96:                               # %._crit_edge.us343
                                        #   in Loop: Header=BB0_97 Depth=1
	addi.d	$t5, $t5, 1
	add.d	$t8, $t8, $a0
	add.d	$fp, $fp, $a0
	add.d	$s0, $s0, $a0
	add.d	$s6, $s6, $a0
	add.d	$s5, $s5, $a0
	add.d	$s4, $s4, $a0
	beq	$t5, $ra, .LBB0_110
.LBB0_97:                               # %iter.check691
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_102 Depth 2
                                        #     Child Loop BB0_106 Depth 2
                                        #     Child Loop BB0_109 Depth 2
	beqz	$s2, .LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_97 Depth=1
	move	$t2, $zero
	b	.LBB0_108
	.p2align	4, , 16
.LBB0_99:                               # %vector.main.loop.iter.check693
                                        #   in Loop: Header=BB0_97 Depth=1
	bgeu	$a1, $s3, .LBB0_101
# %bb.100:                              #   in Loop: Header=BB0_97 Depth=1
	move	$s8, $zero
	b	.LBB0_105
	.p2align	4, , 16
.LBB0_101:                              # %vector.body697.preheader
                                        #   in Loop: Header=BB0_97 Depth=1
	move	$a5, $s0
	move	$t2, $fp
	move	$s7, $t8
	move	$s8, $t6
	.p2align	4, , 16
.LBB0_102:                              # %vector.body697
                                        #   Parent Loop BB0_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $s7, -32
	xvld	$xr1, $s7, 0
	xvld	$xr2, $a5, -32
	xvld	$xr3, $a5, 0
	xvfadd.s	$xr0, $xr2, $xr0
	xvfadd.s	$xr1, $xr3, $xr1
	xvst	$xr0, $t2, -32
	xvst	$xr1, $t2, 0
	addi.d	$s8, $s8, -16
	addi.d	$s7, $s7, 64
	addi.d	$t2, $t2, 64
	addi.d	$a5, $a5, 64
	bnez	$s8, .LBB0_102
# %bb.103:                              # %middle.block704
                                        #   in Loop: Header=BB0_97 Depth=1
	beq	$t6, $a1, .LBB0_96
# %bb.104:                              # %vec.epilog.iter.check709
                                        #   in Loop: Header=BB0_97 Depth=1
	move	$s8, $t6
	move	$t2, $t6
	beqz	$a6, .LBB0_108
.LBB0_105:                              # %vec.epilog.ph708
                                        #   in Loop: Header=BB0_97 Depth=1
	add.d	$a5, $s1, $s8
	alsl.d	$t2, $s8, $s6, 2
	alsl.d	$s7, $s8, $s5, 2
	alsl.d	$s8, $s8, $s4, 2
	.p2align	4, , 16
.LBB0_106:                              # %vec.epilog.vector.body714
                                        #   Parent Loop BB0_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s8, 0
	vld	$vr1, $s7, 0
	vfadd.s	$vr0, $vr1, $vr0
	vst	$vr0, $t2, 0
	addi.d	$a5, $a5, 4
	addi.d	$t2, $t2, 16
	addi.d	$s7, $s7, 16
	addi.d	$s8, $s8, 16
	bnez	$a5, .LBB0_106
# %bb.107:                              # %vec.epilog.middle.block719
                                        #   in Loop: Header=BB0_97 Depth=1
	move	$t2, $t7
	beq	$t7, $a1, .LBB0_96
.LBB0_108:                              # %vec.epilog.scalar.ph707.preheader
                                        #   in Loop: Header=BB0_97 Depth=1
	slli.d	$a5, $t2, 2
	sub.d	$t2, $a1, $t2
	.p2align	4, , 16
.LBB0_109:                              # %vec.epilog.scalar.ph707
                                        #   Parent Loop BB0_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa0, $s4, $a5
	fldx.s	$fa1, $s5, $a5
	fadd.s	$fa0, $fa1, $fa0
	fstx.s	$fa0, $s6, $a5
	addi.d	$t2, $t2, -1
	addi.d	$a5, $a5, 4
	bnez	$t2, .LBB0_109
	b	.LBB0_96
.LBB0_110:                              # %.preheader299.us.preheader
	move	$t5, $zero
	sub.d	$a5, $a4, $t3
	sub.d	$t2, $a4, $t1
	sub.d	$t6, $a4, $a2
	sltui	$a5, $a5, 64
	sltui	$t2, $t2, 64
	or	$a5, $a5, $t2
	sltui	$t2, $t6, 64
	or	$t6, $a5, $t2
	slli.d	$t7, $t0, 4
	slli.d	$t8, $t4, 2
	addi.d	$fp, $t3, 32
	addi.d	$s0, $a4, 32
	addi.d	$s1, $t1, 32
	addi.d	$s2, $a2, 32
	sub.d	$s3, $zero, $t8
	ori	$s4, $zero, 16
	move	$s5, $a4
	lu12i.w	$a0, 2
	b	.LBB0_112
	.p2align	4, , 16
.LBB0_111:                              # %._crit_edge.us346
                                        #   in Loop: Header=BB0_112 Depth=1
	addi.d	$t5, $t5, 1
	add.d	$fp, $fp, $a0
	add.d	$s0, $s0, $a0
	add.d	$s1, $s1, $a0
	add.d	$s2, $s2, $a0
	add.d	$s5, $s5, $a0
	add.d	$a2, $a2, $a0
	add.d	$t1, $t1, $a0
	add.d	$t3, $t3, $a0
	beq	$t5, $ra, .LBB0_125
.LBB0_112:                              # %iter.check731
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_117 Depth 2
                                        #     Child Loop BB0_121 Depth 2
                                        #     Child Loop BB0_124 Depth 2
	or	$a5, $a7, $t6
	beqz	$a5, .LBB0_114
# %bb.113:                              #   in Loop: Header=BB0_112 Depth=1
	move	$t2, $zero
	b	.LBB0_123
	.p2align	4, , 16
.LBB0_114:                              # %vector.main.loop.iter.check733
                                        #   in Loop: Header=BB0_112 Depth=1
	bgeu	$a1, $s4, .LBB0_116
# %bb.115:                              #   in Loop: Header=BB0_112 Depth=1
	move	$s8, $zero
	b	.LBB0_120
	.p2align	4, , 16
.LBB0_116:                              # %vector.body737.preheader
                                        #   in Loop: Header=BB0_112 Depth=1
	move	$a5, $s2
	move	$t2, $s1
	move	$s6, $s0
	move	$s7, $fp
	move	$s8, $t7
	.p2align	4, , 16
.LBB0_117:                              # %vector.body737
                                        #   Parent Loop BB0_112 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $s7, -32
	xvld	$xr1, $s7, 0
	xvld	$xr2, $a5, -32
	xvld	$xr3, $a5, 0
	xvld	$xr4, $t2, -32
	xvld	$xr5, $t2, 0
	xvfmul.s	$xr2, $xr2, $xr2
	xvfmul.s	$xr3, $xr3, $xr3
	xvfmsub.s	$xr0, $xr4, $xr0, $xr2
	xvfmsub.s	$xr1, $xr5, $xr1, $xr3
	xvst	$xr0, $s6, -32
	xvst	$xr1, $s6, 0
	addi.d	$s8, $s8, -16
	addi.d	$s7, $s7, 64
	addi.d	$s6, $s6, 64
	addi.d	$t2, $t2, 64
	addi.d	$a5, $a5, 64
	bnez	$s8, .LBB0_117
# %bb.118:                              # %middle.block746
                                        #   in Loop: Header=BB0_112 Depth=1
	beq	$t7, $a1, .LBB0_111
# %bb.119:                              # %vec.epilog.iter.check751
                                        #   in Loop: Header=BB0_112 Depth=1
	move	$s8, $t7
	move	$t2, $t7
	beqz	$a6, .LBB0_123
.LBB0_120:                              # %vec.epilog.ph750
                                        #   in Loop: Header=BB0_112 Depth=1
	add.d	$a5, $s3, $s8
	alsl.d	$t2, $s8, $s5, 2
	alsl.d	$s6, $s8, $a2, 2
	alsl.d	$s7, $s8, $t1, 2
	alsl.d	$s8, $s8, $t3, 2
	.p2align	4, , 16
.LBB0_121:                              # %vec.epilog.vector.body756
                                        #   Parent Loop BB0_112 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s8, 0
	vld	$vr1, $s6, 0
	vld	$vr2, $s7, 0
	vfmul.s	$vr1, $vr1, $vr1
	vfmsub.s	$vr0, $vr2, $vr0, $vr1
	vst	$vr0, $t2, 0
	addi.d	$a5, $a5, 4
	addi.d	$t2, $t2, 16
	addi.d	$s6, $s6, 16
	addi.d	$s7, $s7, 16
	addi.d	$s8, $s8, 16
	bnez	$a5, .LBB0_121
# %bb.122:                              # %vec.epilog.middle.block762
                                        #   in Loop: Header=BB0_112 Depth=1
	move	$t2, $t8
	beq	$t8, $a1, .LBB0_111
.LBB0_123:                              # %vec.epilog.scalar.ph749.preheader
                                        #   in Loop: Header=BB0_112 Depth=1
	slli.d	$a5, $t2, 2
	sub.d	$t2, $a1, $t2
	.p2align	4, , 16
.LBB0_124:                              # %vec.epilog.scalar.ph749
                                        #   Parent Loop BB0_112 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa0, $t3, $a5
	fldx.s	$fa1, $a2, $a5
	fldx.s	$fa2, $t1, $a5
	fmul.s	$fa1, $fa1, $fa1
	fmsub.s	$fa0, $fa2, $fa0, $fa1
	fstx.s	$fa0, $s5, $a5
	addi.d	$t2, $t2, -1
	addi.d	$a5, $a5, 4
	bnez	$t2, .LBB0_124
	b	.LBB0_111
.LBB0_125:                              # %.preheader.us.preheader
	move	$t1, $zero
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a0, $a2, $a4
	sub.d	$a5, $a2, $a3
	sltui	$a0, $a0, 64
	sltui	$a5, $a5, 64
	or	$t2, $a0, $a5
	slli.d	$t0, $t0, 4
	slli.d	$t3, $t4, 2
	addi.d	$t4, $a4, 32
	addi.d	$t5, $a2, 32
	addi.d	$t6, $a3, 32
	sub.d	$t7, $zero, $t3
	lu12i.w	$a0, -273859
	ori	$a0, $a0, 1802
	vreplgr2vr.w	$vr0, $a0
	lu12i.w	$a0, 250429
	ori	$a0, $a0, 1802
	xvreplgr2vr.w	$xr1, $a0
	ori	$t8, $zero, 16
	b	.LBB0_127
	.p2align	4, , 16
.LBB0_126:                              # %._crit_edge.us350
                                        #   in Loop: Header=BB0_127 Depth=1
	addi.d	$t1, $t1, 1
	lu12i.w	$a0, 2
	add.d	$t4, $t4, $a0
	add.d	$t5, $t5, $a0
	add.d	$t6, $t6, $a0
	add.d	$a2, $a2, $a0
	add.d	$a3, $a3, $a0
	add.d	$a4, $a4, $a0
	beq	$t1, $ra, .LBB0_140
.LBB0_127:                              # %iter.check772
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_132 Depth 2
                                        #     Child Loop BB0_136 Depth 2
                                        #     Child Loop BB0_139 Depth 2
	or	$a0, $a7, $t2
	beqz	$a0, .LBB0_129
# %bb.128:                              #   in Loop: Header=BB0_127 Depth=1
	move	$a5, $zero
	b	.LBB0_138
	.p2align	4, , 16
.LBB0_129:                              # %vector.main.loop.iter.check774
                                        #   in Loop: Header=BB0_127 Depth=1
	bgeu	$a1, $t8, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_127 Depth=1
	move	$s0, $zero
	b	.LBB0_135
	.p2align	4, , 16
.LBB0_131:                              # %vector.body778.preheader
                                        #   in Loop: Header=BB0_127 Depth=1
	move	$a0, $t6
	move	$a5, $t5
	move	$fp, $t4
	move	$s0, $t0
	.p2align	4, , 16
.LBB0_132:                              # %vector.body778
                                        #   Parent Loop BB0_127 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $a0, -32
	xvld	$xr3, $a0, 0
	xvld	$xr4, $fp, -32
	xvld	$xr5, $fp, 0
	xvfmul.s	$xr2, $xr2, $xr2
	xvfmul.s	$xr3, $xr3, $xr3
	xvfnmsub.s	$xr2, $xr2, $xr1, $xr4
	xvfnmsub.s	$xr3, $xr3, $xr1, $xr5
	xvst	$xr2, $a5, -32
	xvst	$xr3, $a5, 0
	addi.d	$s0, $s0, -16
	addi.d	$fp, $fp, 64
	addi.d	$a5, $a5, 64
	addi.d	$a0, $a0, 64
	bnez	$s0, .LBB0_132
# %bb.133:                              # %middle.block785
                                        #   in Loop: Header=BB0_127 Depth=1
	beq	$t0, $a1, .LBB0_126
# %bb.134:                              # %vec.epilog.iter.check790
                                        #   in Loop: Header=BB0_127 Depth=1
	move	$s0, $t0
	move	$a5, $t0
	beqz	$a6, .LBB0_138
.LBB0_135:                              # %vec.epilog.ph789
                                        #   in Loop: Header=BB0_127 Depth=1
	add.d	$a0, $t7, $s0
	alsl.d	$a5, $s0, $a2, 2
	alsl.d	$fp, $s0, $a3, 2
	alsl.d	$s0, $s0, $a4, 2
	.p2align	4, , 16
.LBB0_136:                              # %vec.epilog.vector.body795
                                        #   Parent Loop BB0_127 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $fp, 0
	vld	$vr3, $s0, 0
	vfmul.s	$vr2, $vr2, $vr2
	vfmadd.s	$vr2, $vr2, $vr0, $vr3
	vst	$vr2, $a5, 0
	addi.d	$a0, $a0, 4
	addi.d	$a5, $a5, 16
	addi.d	$fp, $fp, 16
	addi.d	$s0, $s0, 16
	bnez	$a0, .LBB0_136
# %bb.137:                              # %vec.epilog.middle.block800
                                        #   in Loop: Header=BB0_127 Depth=1
	move	$a5, $t3
	beq	$t3, $a1, .LBB0_126
.LBB0_138:                              # %vec.epilog.scalar.ph788.preheader
                                        #   in Loop: Header=BB0_127 Depth=1
	slli.d	$a0, $a5, 2
	sub.d	$a5, $a1, $a5
	.p2align	4, , 16
.LBB0_139:                              # %vec.epilog.scalar.ph788
                                        #   Parent Loop BB0_127 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa2, $a4, $a0
	fldx.s	$fa3, $a3, $a0
	pcalau12i	$fp, %pc_hi20(.LCPI0_2)
	fld.s	$fa4, $fp, %pc_lo12(.LCPI0_2)
	fmul.s	$fa3, $fa3, $fa3
	fmadd.s	$fa2, $fa3, $fa4, $fa2
	fstx.s	$fa2, $a2, $a0
	addi.d	$a5, $a5, -1
	addi.d	$a0, $a0, 4
	bnez	$a5, .LBB0_139
	b	.LBB0_126
.LBB0_140:
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
.LBB0_141:                              # %._crit_edge349
	ret
.Lfunc_end0:
	.size	_Z12harrisKerneliiPA2052_fPA2048_fPA2050_fS4_S4_S4_S4_S2_S2_S2_S2_S2_, .Lfunc_end0-_Z12harrisKerneliiPA2052_fPA2048_fPA2050_fS4_S4_S4_S4_S2_S2_S2_S2_S2_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
