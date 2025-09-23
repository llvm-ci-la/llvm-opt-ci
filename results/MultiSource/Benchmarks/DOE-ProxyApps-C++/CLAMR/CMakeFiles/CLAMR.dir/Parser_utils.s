	.file	"Parser_utils.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_ZN2PP12Parser_utilsC2Ei        # -- Begin function _ZN2PP12Parser_utilsC2Ei
	.p2align	5
	.type	_ZN2PP12Parser_utilsC2Ei,@function
_ZN2PP12Parser_utilsC2Ei:               # @_ZN2PP12Parser_utilsC2Ei
# %bb.0:
	pcalau12i	$a0, %pc_hi20(_ZN2PPL10index_baseE)
	st.w	$a1, $a0, %pc_lo12(_ZN2PPL10index_baseE)
	ret
.Lfunc_end0:
	.size	_ZN2PP12Parser_utilsC2Ei, .Lfunc_end0-_ZN2PP12Parser_utilsC2Ei
                                        # -- End function
	.globl	_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_ # -- Begin function _ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_
	.p2align	5
	.type	_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_,@function
_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_: # @_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_
# %bb.0:
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a1, 0
	sub.d	$a0, $a0, $a1
	srli.d	$a4, $a0, 2
	addi.w	$a5, $a4, 0
	beqz	$a5, .LBB1_17
# %bb.1:
	ld.w	$a0, $a1, 0
	pcalau12i	$a3, %pc_hi20(_ZN2PPL10index_baseE)
	ld.w	$a3, $a3, %pc_lo12(_ZN2PPL10index_baseE)
	ori	$a6, $zero, 2
	sub.w	$a0, $a0, $a3
	blt	$a5, $a6, .LBB1_18
# %bb.2:                                # %.lr.ph
	ld.d	$a2, $a2, 0
	bstrpick.d	$a4, $a4, 30, 0
	addi.d	$a5, $a2, 32
	ori	$a6, $zero, 1
	ori	$a7, $zero, 3
	ori	$t0, $zero, 16
	vrepli.w	$vr0, 1
	xvrepli.w	$xr1, 1
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %.loopexit45
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$a6, $a6, 1
	add.w	$a0, $t2, $a0
	beq	$a6, $a4, .LBB1_18
.LBB1_4:                                # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
                                        #     Child Loop BB1_13 Depth 2
                                        #     Child Loop BB1_16 Depth 2
	slli.d	$t1, $a6, 2
	ldx.w	$t1, $a1, $t1
	sub.d	$t2, $t1, $a3
	bltu	$a7, $a6, .LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	move	$t1, $zero
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_6:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB1_4 Depth=1
	bgeu	$a6, $t0, .LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=1
	move	$t1, $zero
	b	.LBB1_12
	.p2align	4, , 16
.LBB1_8:                                # %vector.ph
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$t3, $a6
	bstrins.d	$t3, $zero, 3, 0
	bstrpick.d	$t1, $a6, 62, 4
	slli.d	$t1, $t1, 4
	xvori.b	$xr2, $xr1, 0
	xvinsgr2vr.w	$xr2, $t2, 0
	move	$t2, $a5
	xvori.b	$xr3, $xr1, 0
	.p2align	4, , 16
.LBB1_9:                                # %vector.body
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr4, $t2, -32
	xvld	$xr5, $t2, 0
	xvmul.w	$xr2, $xr4, $xr2
	xvmul.w	$xr3, $xr5, $xr3
	addi.d	$t3, $t3, -16
	addi.d	$t2, $t2, 64
	bnez	$t3, .LBB1_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB1_4 Depth=1
	xvmul.w	$xr2, $xr3, $xr2
	xvpermi.d	$xr3, $xr2, 78
	xvshuf4i.w	$xr3, $xr3, 228
	xvmul.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvshuf4i.w	$xr3, $xr3, 14
	xvmul.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvrepl128vei.w	$xr3, $xr3, 1
	xvmul.w	$xr2, $xr2, $xr3
	xvpickve2gr.w	$t2, $xr2, 0
	beq	$a6, $t1, .LBB1_3
# %bb.11:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB1_4 Depth=1
	andi	$t3, $a6, 12
	beqz	$t3, .LBB1_15
.LBB1_12:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$t3, $a6
	bstrins.d	$t3, $zero, 1, 0
	bstrpick.d	$t5, $a6, 62, 2
	sub.d	$t3, $t1, $t3
	alsl.d	$t4, $t1, $a2, 2
	slli.d	$t1, $t5, 2
	vori.b	$vr2, $vr0, 0
	vinsgr2vr.w	$vr2, $t2, 0
	.p2align	4, , 16
.LBB1_13:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $t4, 0
	vmul.w	$vr2, $vr3, $vr2
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 16
	bnez	$t3, .LBB1_13
# %bb.14:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB1_4 Depth=1
	vshuf4i.w	$vr3, $vr2, 14
	vmul.w	$vr2, $vr2, $vr3
	vreplvei.w	$vr3, $vr2, 1
	vmul.w	$vr2, $vr2, $vr3
	vpickve2gr.w	$t2, $vr2, 0
	beq	$a6, $t1, .LBB1_3
.LBB1_15:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	alsl.d	$t3, $t1, $a2, 2
	.p2align	4, , 16
.LBB1_16:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t3, 0
	mul.d	$t2, $t4, $t2
	addi.d	$t1, $t1, 1
	addi.d	$t3, $t3, 4
	bne	$a6, $t1, .LBB1_16
	b	.LBB1_3
.LBB1_17:
	move	$a0, $zero
.LBB1_18:                               # %.loopexit
	ret
.Lfunc_end1:
	.size	_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_, .Lfunc_end1-_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_
                                        # -- End function
	.globl	_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_ # -- Begin function _ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_
	.p2align	5
	.type	_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_,@function
_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_: # @_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_
# %bb.0:
	ld.d	$a5, $a3, 8
	ld.d	$a0, $a3, 0
	sub.d	$a6, $a5, $a0
	srli.d	$a7, $a6, 2
	addi.w	$a3, $a7, 0
	beqz	$a3, .LBB2_45
# %bb.1:                                # %.preheader53
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	bstrpick.d	$a5, $a7, 30, 0
	blez	$a3, .LBB2_4
# %bb.2:                                # %iter.check
	pcalau12i	$t0, %pc_hi20(_ZN2PPL10index_baseE)
	ld.w	$t1, $t0, %pc_lo12(_ZN2PPL10index_baseE)
	ori	$t2, $zero, 3
	bltu	$t2, $a5, .LBB2_5
# %bb.3:
	move	$t2, $zero
	b	.LBB2_14
.LBB2_4:                                # %._crit_edge.thread
	ld.w	$t0, $a0, 0
	pcalau12i	$t1, %pc_hi20(_ZN2PPL10index_baseE)
	ld.w	$t1, $t1, %pc_lo12(_ZN2PPL10index_baseE)
	sub.w	$t0, $t0, $t1
	b	.LBB2_17
.LBB2_5:                                # %vector.main.loop.iter.check
	ori	$t2, $zero, 16
	bgeu	$a5, $t2, .LBB2_7
# %bb.6:
	move	$t2, $zero
	b	.LBB2_11
.LBB2_7:                                # %vector.ph
	bstrpick.d	$t2, $a7, 30, 4
	slli.d	$t2, $t2, 4
	xvreplgr2vr.w	$xr0, $t1
	addi.d	$t3, $a0, 32
	move	$t4, $t2
	.p2align	4, , 16
.LBB2_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $t3, -32
	xvst	$xr0, $t3, 0
	addi.d	$t4, $t4, -16
	addi.d	$t3, $t3, 64
	bnez	$t4, .LBB2_8
# %bb.9:                                # %middle.block
	beq	$a5, $t2, .LBB2_16
# %bb.10:                               # %vec.epilog.iter.check
	andi	$t3, $a6, 48
	beqz	$t3, .LBB2_14
.LBB2_11:                               # %vec.epilog.ph
	move	$t4, $t2
	bstrpick.d	$t2, $a7, 30, 2
	slli.d	$t2, $t2, 2
	vreplgr2vr.w	$vr0, $t1
	sub.d	$t3, $t4, $t2
	alsl.d	$t4, $t4, $a0, 2
	.p2align	4, , 16
.LBB2_12:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $t4, 0
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 16
	bnez	$t3, .LBB2_12
# %bb.13:                               # %vec.epilog.middle.block
	beq	$a5, $t2, .LBB2_16
.LBB2_14:                               # %vec.epilog.scalar.ph.preheader
	alsl.d	$t3, $t2, $a0, 2
	sub.d	$t2, $t2, $a5
	.p2align	4, , 16
.LBB2_15:                               # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$t1, $t3, 0
	addi.d	$t2, $t2, 1
	addi.d	$t3, $t3, 4
	bnez	$t2, .LBB2_15
.LBB2_16:                               # %._crit_edge
	ld.w	$t3, $a0, 0
	ld.w	$t1, $t0, %pc_lo12(_ZN2PPL10index_baseE)
	ori	$t2, $zero, 1
	sub.w	$t0, $t3, $t1
	bne	$a3, $t2, .LBB2_46
.LBB2_17:                               # %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit
	beq	$t0, $a1, .LBB2_44
# %bb.18:                               # %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit
	blez	$a2, .LBB2_44
# %bb.19:                               # %.preheader.lr.ph
	blez	$a3, .LBB2_44
# %bb.20:                               # %.preheader.us.preheader
	move	$t0, $zero
	pcalau12i	$t1, %pc_hi20(_ZN2PPL10index_baseE)
	ld.w	$t1, $t1, %pc_lo12(_ZN2PPL10index_baseE)
	ld.d	$t2, $a4, 0
	addi.d	$a7, $a7, -1
	bstrpick.d	$a7, $a7, 31, 0
	alsl.d	$t3, $a7, $a0, 2
	bstrpick.d	$a6, $a6, 32, 2
	slli.d	$a6, $a6, 2
	addi.d	$t4, $t2, 32
	ori	$t5, $zero, 4
	ori	$t6, $zero, 2
	ori	$t7, $zero, 16
	vrepli.w	$vr0, 1
	xvrepli.w	$xr1, 1
	.p2align	4, , 16
.LBB2_21:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_23 Depth 2
                                        #     Child Loop BB2_29 Depth 2
                                        #       Child Loop BB2_34 Depth 3
                                        #       Child Loop BB2_38 Depth 3
                                        #       Child Loop BB2_41 Depth 3
	beq	$a6, $t5, .LBB2_25
# %bb.22:                               #   in Loop: Header=BB2_21 Depth=1
	ld.d	$fp, $a4, 0
	move	$t8, $a0
	move	$s0, $a7
	.p2align	4, , 16
.LBB2_23:                               # %.lr.ph121
                                        #   Parent Loop BB2_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s1, $t8, 0
	ld.w	$s2, $fp, 0
	bne	$s1, $s2, .LBB2_26
# %bb.24:                               #   in Loop: Header=BB2_23 Depth=2
	st.w	$t1, $t8, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 4
	addi.d	$t8, $t8, 4
	bnez	$s0, .LBB2_23
.LBB2_25:                               # %._crit_edge122
                                        #   in Loop: Header=BB2_21 Depth=1
	ld.w	$t8, $t3, 0
	addi.d	$t8, $t8, 1
	st.w	$t8, $t3, 0
	ld.w	$t8, $a0, 0
	sub.w	$t8, $t8, $t1
	bge	$a3, $t6, .LBB2_27
	b	.LBB2_42
	.p2align	4, , 16
.LBB2_26:                               #   in Loop: Header=BB2_21 Depth=1
	addi.d	$fp, $s1, 1
	st.w	$fp, $t8, 0
	ld.w	$t8, $a0, 0
	sub.w	$t8, $t8, $t1
	blt	$a3, $t6, .LBB2_42
.LBB2_27:                               # %iter.check165.preheader
                                        #   in Loop: Header=BB2_21 Depth=1
	ori	$fp, $zero, 1
	b	.LBB2_29
	.p2align	4, , 16
.LBB2_28:                               # %.loopexit
                                        #   in Loop: Header=BB2_29 Depth=2
	addi.d	$fp, $fp, 1
	add.w	$t8, $s1, $t8
	beq	$fp, $a5, .LBB2_42
.LBB2_29:                               # %iter.check165
                                        #   Parent Loop BB2_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_34 Depth 3
                                        #       Child Loop BB2_38 Depth 3
                                        #       Child Loop BB2_41 Depth 3
	slli.d	$s0, $fp, 2
	ldx.w	$s0, $a0, $s0
	sub.d	$s1, $s0, $t1
	bgeu	$fp, $t5, .LBB2_31
# %bb.30:                               #   in Loop: Header=BB2_29 Depth=2
	move	$s0, $zero
	b	.LBB2_40
	.p2align	4, , 16
.LBB2_31:                               # %vector.main.loop.iter.check167
                                        #   in Loop: Header=BB2_29 Depth=2
	bgeu	$fp, $t7, .LBB2_33
# %bb.32:                               #   in Loop: Header=BB2_29 Depth=2
	move	$s0, $zero
	b	.LBB2_37
	.p2align	4, , 16
.LBB2_33:                               # %vector.ph168
                                        #   in Loop: Header=BB2_29 Depth=2
	move	$s2, $fp
	bstrins.d	$s2, $zero, 3, 0
	bstrpick.d	$s0, $fp, 62, 4
	slli.d	$s0, $s0, 4
	xvori.b	$xr2, $xr1, 0
	xvinsgr2vr.w	$xr2, $s1, 0
	move	$s1, $t4
	xvori.b	$xr3, $xr1, 0
	.p2align	4, , 16
.LBB2_34:                               # %vector.body171
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr4, $s1, -32
	xvld	$xr5, $s1, 0
	xvmul.w	$xr2, $xr4, $xr2
	xvmul.w	$xr3, $xr5, $xr3
	addi.d	$s2, $s2, -16
	addi.d	$s1, $s1, 64
	bnez	$s2, .LBB2_34
# %bb.35:                               # %middle.block178
                                        #   in Loop: Header=BB2_29 Depth=2
	xvmul.w	$xr2, $xr3, $xr2
	xvpermi.d	$xr3, $xr2, 78
	xvshuf4i.w	$xr3, $xr3, 228
	xvmul.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvshuf4i.w	$xr3, $xr3, 14
	xvmul.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvrepl128vei.w	$xr3, $xr3, 1
	xvmul.w	$xr2, $xr2, $xr3
	xvpickve2gr.w	$s1, $xr2, 0
	beq	$fp, $s0, .LBB2_28
# %bb.36:                               # %vec.epilog.iter.check185
                                        #   in Loop: Header=BB2_29 Depth=2
	andi	$s2, $fp, 12
	beqz	$s2, .LBB2_40
.LBB2_37:                               # %vec.epilog.ph184
                                        #   in Loop: Header=BB2_29 Depth=2
	move	$s2, $fp
	bstrins.d	$s2, $zero, 1, 0
	bstrpick.d	$s4, $fp, 62, 2
	sub.d	$s2, $s0, $s2
	alsl.d	$s3, $s0, $t2, 2
	slli.d	$s0, $s4, 2
	vori.b	$vr2, $vr0, 0
	vinsgr2vr.w	$vr2, $s1, 0
	.p2align	4, , 16
.LBB2_38:                               # %vec.epilog.vector.body190
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr3, $s3, 0
	vmul.w	$vr2, $vr3, $vr2
	addi.d	$s2, $s2, 4
	addi.d	$s3, $s3, 16
	bnez	$s2, .LBB2_38
# %bb.39:                               # %vec.epilog.middle.block195
                                        #   in Loop: Header=BB2_29 Depth=2
	vshuf4i.w	$vr3, $vr2, 14
	vmul.w	$vr2, $vr2, $vr3
	vreplvei.w	$vr3, $vr2, 1
	vmul.w	$vr2, $vr2, $vr3
	vpickve2gr.w	$s1, $vr2, 0
	beq	$fp, $s0, .LBB2_28
.LBB2_40:                               # %vec.epilog.scalar.ph183.preheader
                                        #   in Loop: Header=BB2_29 Depth=2
	alsl.d	$s2, $s0, $t2, 2
	.p2align	4, , 16
.LBB2_41:                               # %vec.epilog.scalar.ph183
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s3, $s2, 0
	mul.d	$s1, $s3, $s1
	addi.d	$s0, $s0, 1
	addi.d	$s2, $s2, 4
	bne	$fp, $s0, .LBB2_41
	b	.LBB2_28
	.p2align	4, , 16
.LBB2_42:                               # %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit50.us
                                        #   in Loop: Header=BB2_21 Depth=1
	beq	$t8, $a1, .LBB2_44
# %bb.43:                               # %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit50.us
                                        #   in Loop: Header=BB2_21 Depth=1
	addi.w	$t0, $t0, 1
	blt	$t0, $a2, .LBB2_21
.LBB2_44:
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB2_45:                               # %.loopexit52
	ret
.LBB2_46:                               # %.lr.ph.i
	ld.d	$t3, $a4, 0
	addi.d	$t4, $t3, 32
	ori	$t5, $zero, 3
	ori	$t6, $zero, 16
	vrepli.w	$vr0, 1
	xvrepli.w	$xr1, 1
	b	.LBB2_48
	.p2align	4, , 16
.LBB2_47:                               # %.loopexit199
                                        #   in Loop: Header=BB2_48 Depth=1
	addi.d	$t2, $t2, 1
	add.w	$t0, $t8, $t0
	beq	$t2, $a5, .LBB2_17
.LBB2_48:                               # %iter.check133
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_53 Depth 2
                                        #     Child Loop BB2_57 Depth 2
                                        #     Child Loop BB2_60 Depth 2
	slli.d	$t7, $t2, 2
	ldx.w	$t7, $a0, $t7
	sub.d	$t8, $t7, $t1
	bltu	$t5, $t2, .LBB2_50
# %bb.49:                               #   in Loop: Header=BB2_48 Depth=1
	move	$t7, $zero
	b	.LBB2_59
	.p2align	4, , 16
.LBB2_50:                               # %vector.main.loop.iter.check135
                                        #   in Loop: Header=BB2_48 Depth=1
	bgeu	$t2, $t6, .LBB2_52
# %bb.51:                               #   in Loop: Header=BB2_48 Depth=1
	move	$t7, $zero
	b	.LBB2_56
	.p2align	4, , 16
.LBB2_52:                               # %vector.ph136
                                        #   in Loop: Header=BB2_48 Depth=1
	move	$fp, $t2
	bstrins.d	$fp, $zero, 3, 0
	bstrpick.d	$t7, $t2, 62, 4
	slli.d	$t7, $t7, 4
	xvori.b	$xr2, $xr1, 0
	xvinsgr2vr.w	$xr2, $t8, 0
	move	$t8, $t4
	xvori.b	$xr3, $xr1, 0
	.p2align	4, , 16
.LBB2_53:                               # %vector.body139
                                        #   Parent Loop BB2_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr4, $t8, -32
	xvld	$xr5, $t8, 0
	xvmul.w	$xr2, $xr4, $xr2
	xvmul.w	$xr3, $xr5, $xr3
	addi.d	$fp, $fp, -16
	addi.d	$t8, $t8, 64
	bnez	$fp, .LBB2_53
# %bb.54:                               # %middle.block144
                                        #   in Loop: Header=BB2_48 Depth=1
	xvmul.w	$xr2, $xr3, $xr2
	xvpermi.d	$xr3, $xr2, 78
	xvshuf4i.w	$xr3, $xr3, 228
	xvmul.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvshuf4i.w	$xr3, $xr3, 14
	xvmul.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvrepl128vei.w	$xr3, $xr3, 1
	xvmul.w	$xr2, $xr2, $xr3
	xvpickve2gr.w	$t8, $xr2, 0
	beq	$t2, $t7, .LBB2_47
# %bb.55:                               # %vec.epilog.iter.check149
                                        #   in Loop: Header=BB2_48 Depth=1
	andi	$fp, $t2, 12
	beqz	$fp, .LBB2_59
.LBB2_56:                               # %vec.epilog.ph148
                                        #   in Loop: Header=BB2_48 Depth=1
	move	$fp, $t2
	bstrins.d	$fp, $zero, 1, 0
	bstrpick.d	$s1, $t2, 62, 2
	sub.d	$fp, $t7, $fp
	alsl.d	$s0, $t7, $t3, 2
	slli.d	$t7, $s1, 2
	vori.b	$vr2, $vr0, 0
	vinsgr2vr.w	$vr2, $t8, 0
	.p2align	4, , 16
.LBB2_57:                               # %vec.epilog.vector.body154
                                        #   Parent Loop BB2_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $s0, 0
	vmul.w	$vr2, $vr3, $vr2
	addi.d	$fp, $fp, 4
	addi.d	$s0, $s0, 16
	bnez	$fp, .LBB2_57
# %bb.58:                               # %vec.epilog.middle.block159
                                        #   in Loop: Header=BB2_48 Depth=1
	vshuf4i.w	$vr3, $vr2, 14
	vmul.w	$vr2, $vr2, $vr3
	vreplvei.w	$vr3, $vr2, 1
	vmul.w	$vr2, $vr2, $vr3
	vpickve2gr.w	$t8, $vr2, 0
	beq	$t2, $t7, .LBB2_47
.LBB2_59:                               # %vec.epilog.scalar.ph147.preheader
                                        #   in Loop: Header=BB2_48 Depth=1
	alsl.d	$fp, $t7, $t3, 2
	.p2align	4, , 16
.LBB2_60:                               # %vec.epilog.scalar.ph147
                                        #   Parent Loop BB2_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s0, $fp, 0
	mul.d	$t8, $s0, $t8
	addi.d	$t7, $t7, 1
	addi.d	$fp, $fp, 4
	bne	$t2, $t7, .LBB2_60
	b	.LBB2_47
.Lfunc_end2:
	.size	_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_, .Lfunc_end2-_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_
                                        # -- End function
	.globl	_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE # -- Begin function _ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE
	.p2align	5
	.type	_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE,@function
_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE: # @_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -320
	.cfi_def_cfa_offset 320
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	move	$s0, $a1
	ld.d	$s6, $a1, 0
	ld.d	$a0, $s6, 8
	ld.d	$a1, $s6, 0
	sub.d	$a1, $a0, $a1
	slli.d	$a7, $a1, 27
	srai.d	$s4, $a7, 32
	srli.d	$a0, $s4, 61
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	bnez	$a0, .LBB3_203
# %bb.1:                                # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	move	$s1, $a6
	move	$s2, $a5
	move	$s5, $a4
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	srli.d	$s3, $a1, 5
	srai.d	$s7, $a7, 30
	st.d	$a7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	beqz	$a7, .LBB3_3
# %bb.2:                                # %.noexc179
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bstrins.d	$s7, $zero, 1, 0
	move	$a1, $zero
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	alsl.d	$a0, $s4, $fp, 2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB3_4
.LBB3_3:
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
.LBB3_4:                                # %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$s7, $s0, 8
	sub.d	$a0, $s7, $s6
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, -349526
	ori	$a1, $a1, 2731
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	mul.w	$a0, $a0, $a1
	addi.w	$a1, $s3, 0
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a2, $s3, 30, 0
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	blez	$a0, .LBB3_21
# %bb.5:                                # %.preheader328.lr.ph
	blez	$a1, .LBB3_21
# %bb.6:                                # %.preheader328.us.preheader
	move	$s1, $zero
	addi.d	$s8, $sp, 216
	ori	$fp, $zero, 16
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	lu32i.d	$a0, -349526
	lu52i.d	$a0, $a0, -1366
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ori	$s4, $zero, 1
	b	.LBB3_8
	.p2align	4, , 16
.LBB3_7:                                # %._crit_edge.us
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s7, $a0, 8
	ld.d	$s6, $a0, 0
	addi.d	$s1, $s1, 1
	sub.d	$a0, $s7, $s6
	srli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	bge	$s1, $a0, .LBB3_21
.LBB3_8:                                # %.preheader328.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
	move	$s6, $zero
	slli.d	$a0, $s1, 4
	alsl.d	$s0, $s1, $a0, 3
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us
                                        #   in Loop: Header=BB3_10 Depth=2
	addi.d	$s6, $s6, 32
	addi.d	$s7, $s7, -1
	addi.d	$s5, $s5, 4
	beqz	$s7, .LBB3_7
.LBB3_10:                               #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s0
	add.d	$a1, $a0, $s6
	st.d	$s8, $sp, 200
	ld.d	$s2, $a1, 8
	ldx.d	$s3, $a0, $s6
	st.d	$s2, $sp, 168
	move	$a0, $s8
	bltu	$s2, $fp, .LBB3_13
# %bb.11:                               # %.noexc.i.us
                                        #   in Loop: Header=BB3_10 Depth=2
.Ltmp0:                                 # EH_LABEL
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 168
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.12:                               # %.noexc190.us
                                        #   in Loop: Header=BB3_10 Depth=2
	ld.d	$a1, $sp, 168
	st.d	$a0, $sp, 200
	st.d	$a1, $sp, 216
.LBB3_13:                               # %._crit_edge.i.i.us
                                        #   in Loop: Header=BB3_10 Depth=2
	beqz	$s2, .LBB3_17
# %bb.14:                               # %._crit_edge.i.i.us
                                        #   in Loop: Header=BB3_10 Depth=2
	bne	$s2, $s4, .LBB3_16
# %bb.15:                               #   in Loop: Header=BB3_10 Depth=2
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
	b	.LBB3_17
	.p2align	4, , 16
.LBB3_16:                               #   in Loop: Header=BB3_10 Depth=2
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_17:                               #   in Loop: Header=BB3_10 Depth=2
	ld.d	$a0, $sp, 168
	ld.d	$a1, $sp, 200
	st.d	$a0, $sp, 208
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $sp, 208
	ld.w	$a1, $s5, 0
	bge	$a1, $a0, .LBB3_19
# %bb.18:                               #   in Loop: Header=BB3_10 Depth=2
	st.w	$a0, $s5, 0
.LBB3_19:                               #   in Loop: Header=BB3_10 Depth=2
	ld.d	$a0, $sp, 200
	beq	$a0, $s8, .LBB3_9
# %bb.20:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us
                                        #   in Loop: Header=BB3_10 Depth=2
	ld.d	$a1, $sp, 216
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_9
.LBB3_21:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i180
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_24
# %bb.22:
.Ltmp3:                                 # EH_LABEL
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
# %bb.23:                               # %.noexc188
	move	$fp, $a0
	move	$a2, $s5
	bstrins.d	$a2, $zero, 1, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	alsl.d	$a0, $s0, $fp, 2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	bgtz	$s3, .LBB3_25
	b	.LBB3_46
.LBB3_24:
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	blez	$s3, .LBB3_46
.LBB3_25:                               # %.lr.ph.preheader
	ori	$a0, $zero, 8
	bgeu	$s8, $a0, .LBB3_27
# %bb.26:
	move	$a0, $zero
	b	.LBB3_51
.LBB3_27:                               # %vector.ph
	bstrpick.d	$a0, $fp, 30, 3
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 16
	move	$a2, $a0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	b	.LBB3_29
	.p2align	4, , 16
.LBB3_28:                               # %pred.store.continue523
                                        #   in Loop: Header=BB3_29 Depth=1
	addi.d	$a3, $a3, 32
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 32
	beqz	$a2, .LBB3_45
.LBB3_29:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, 0
	xvld	$xr1, $a1, -16
	xvslt.w	$xr1, $xr1, $xr0
	xvpickve2gr.w	$a4, $xr1, 0
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_37
# %bb.30:                               # %pred.store.continue
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr1, 1
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_38
.LBB3_31:                               # %pred.store.continue511
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr1, 2
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_39
.LBB3_32:                               # %pred.store.continue513
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr1, 3
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_40
.LBB3_33:                               # %pred.store.continue515
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr1, 4
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_41
.LBB3_34:                               # %pred.store.continue517
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr1, 5
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_42
.LBB3_35:                               # %pred.store.continue519
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr1, 6
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_43
.LBB3_36:                               # %pred.store.continue521
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr1, 7
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_28
	b	.LBB3_44
	.p2align	4, , 16
.LBB3_37:                               # %pred.store.if
                                        #   in Loop: Header=BB3_29 Depth=1
	xvstelm.w	$xr0, $a1, -16, 0
	xvpickve2gr.w	$a4, $xr1, 1
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_31
.LBB3_38:                               # %pred.store.if510
                                        #   in Loop: Header=BB3_29 Depth=1
	xvstelm.w	$xr0, $a1, -12, 1
	xvpickve2gr.w	$a4, $xr1, 2
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_32
.LBB3_39:                               # %pred.store.if512
                                        #   in Loop: Header=BB3_29 Depth=1
	xvstelm.w	$xr0, $a1, -8, 2
	xvpickve2gr.w	$a4, $xr1, 3
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_33
.LBB3_40:                               # %pred.store.if514
                                        #   in Loop: Header=BB3_29 Depth=1
	xvstelm.w	$xr0, $a1, -4, 3
	xvpickve2gr.w	$a4, $xr1, 4
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_34
.LBB3_41:                               # %pred.store.if516
                                        #   in Loop: Header=BB3_29 Depth=1
	xvstelm.w	$xr0, $a1, 0, 4
	xvpickve2gr.w	$a4, $xr1, 5
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_35
.LBB3_42:                               # %pred.store.if518
                                        #   in Loop: Header=BB3_29 Depth=1
	xvstelm.w	$xr0, $a1, 4, 5
	xvpickve2gr.w	$a4, $xr1, 6
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_36
.LBB3_43:                               # %pred.store.if520
                                        #   in Loop: Header=BB3_29 Depth=1
	xvstelm.w	$xr0, $a1, 8, 6
	xvpickve2gr.w	$a4, $xr1, 7
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_28
.LBB3_44:                               # %pred.store.if522
                                        #   in Loop: Header=BB3_29 Depth=1
	xvstelm.w	$xr0, $a1, 12, 7
	b	.LBB3_28
.LBB3_45:                               # %middle.block
	bne	$s8, $a0, .LBB3_51
.LBB3_46:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i191
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_55
# %bb.47:
.Ltmp6:                                 # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp7:                                 # EH_LABEL
# %bb.48:                               # %iter.check
	addi.d	$a2, $s5, -4
	ori	$a0, $zero, 12
	move	$a5, $a1
	bltu	$a2, $a0, .LBB3_63
# %bb.49:                               # %vector.main.loop.iter.check
	srli.d	$a0, $a2, 2
	ori	$a1, $zero, 60
	addi.d	$a0, $a0, 1
	bgeu	$a2, $a1, .LBB3_56
# %bb.50:
	move	$a2, $zero
	b	.LBB3_60
.LBB3_51:                               # %.lr.ph.preheader594
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 2
	sub.d	$a0, $a0, $s8
	b	.LBB3_53
	.p2align	4, , 16
.LBB3_52:                               #   in Loop: Header=BB3_53 Depth=1
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	beqz	$a0, .LBB3_46
.LBB3_53:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a2, 0
	bge	$a4, $a3, .LBB3_52
# %bb.54:                               #   in Loop: Header=BB3_53 Depth=1
	st.w	$a3, $a2, 0
	b	.LBB3_52
.LBB3_55:
	move	$a5, $zero
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	b	.LBB3_66
.LBB3_56:                               # %vector.ph528
	bstrpick.d	$a1, $a0, 62, 4
	slli.d	$a2, $a1, 4
	xvreplgr2vr.w	$xr0, $s2
	addi.d	$a1, $a5, 32
	move	$a3, $a2
	.p2align	4, , 16
.LBB3_57:                               # %vector.body531
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	bnez	$a3, .LBB3_57
# %bb.58:                               # %middle.block534
	beq	$a0, $a2, .LBB3_65
# %bb.59:                               # %vec.epilog.iter.check
	andi	$a1, $a0, 12
	beqz	$a1, .LBB3_196
.LBB3_60:                               # %vec.epilog.ph
	bstrpick.d	$a1, $a0, 62, 2
	slli.d	$a3, $a1, 2
	alsl.d	$a1, $a1, $a5, 4
	vreplgr2vr.w	$vr0, $s2
	alsl.d	$a4, $a2, $a5, 2
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB3_61:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB3_61
# %bb.62:                               # %vec.epilog.middle.block
	beq	$a0, $a3, .LBB3_65
.LBB3_63:                               # %.lr.ph.i.i.i.i.i.i.i.i.i193.preheader
	add.d	$a0, $a5, $s5
	.p2align	4, , 16
.LBB3_64:                               # %.lr.ph.i.i.i.i.i.i.i.i.i193
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s2, $a1, 0
	addi.d	$a1, $a1, 4
	bne	$a1, $a0, .LBB3_64
.LBB3_65:                               # %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit200.loopexit
	alsl.d	$a0, $s0, $a5, 2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
.LBB3_66:                               # %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit200
	st.d	$a5, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $a5, 0
	addi.w	$a6, $fp, -1
	st.d	$a6, $sp, 112                   # 8-byte Folded Spill
	blez	$s1, .LBB3_139
# %bb.67:                               # %.preheader327
	blez	$s3, .LBB3_70
# %bb.68:                               # %iter.check548
	ori	$a0, $zero, 3
	bltu	$a0, $s8, .LBB3_71
# %bb.69:
	move	$a0, $zero
	move	$a1, $zero
	b	.LBB3_80
.LBB3_70:
	move	$a1, $zero
	b	.LBB3_82
.LBB3_71:                               # %vector.main.loop.iter.check550
	ori	$a0, $zero, 16
	bgeu	$s8, $a0, .LBB3_73
# %bb.72:
	move	$a0, $zero
	move	$a1, $zero
	b	.LBB3_77
.LBB3_73:                               # %vector.ph551
	bstrpick.d	$a0, $fp, 30, 4
	slli.d	$a0, $a0, 4
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 32
	xvrepli.b	$xr0, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 32
	move	$a3, $a0
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB3_74:                               # %vector.body554
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a2, -32
	xvld	$xr3, $a2, 0
	xvld	$xr4, $a1, -32
	xvld	$xr5, $a1, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvadd.w	$xr0, $xr0, $xr4
	xvadd.w	$xr1, $xr1, $xr5
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB3_74
# %bb.75:                               # %middle.block562
	xvadd.w	$xr0, $xr1, $xr0
	xvhaddw.d.w	$xr0, $xr0, $xr0
	xvhaddw.q.d	$xr0, $xr0, $xr0
	xvpermi.d	$xr1, $xr0, 2
	xvadd.d	$xr0, $xr1, $xr0
	xvpickve2gr.d	$a1, $xr0, 0
	beq	$s8, $a0, .LBB3_82
# %bb.76:                               # %vec.epilog.iter.check567
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	andi	$a2, $a2, 384
	beqz	$a2, .LBB3_80
.LBB3_77:                               # %vec.epilog.ph566
	move	$a3, $a0
	bstrpick.d	$a0, $fp, 30, 2
	slli.d	$a0, $a0, 2
	vrepli.b	$vr0, 0
	vinsgr2vr.w	$vr0, $a1, 0
	sub.d	$a1, $a3, $a0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 2
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a3, $a3, $a4, 2
	.p2align	4, , 16
.LBB3_78:                               # %vec.epilog.vector.body572
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, 0
	vld	$vr2, $a2, 0
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr0, $vr2
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB3_78
# %bb.79:                               # %vec.epilog.middle.block578
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a1, $vr0, 0
	beq	$s8, $a0, .LBB3_82
.LBB3_80:                               # %.lr.ph359.preheader
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a3, 2
	sub.d	$a0, $a0, $s8
	.p2align	4, , 16
.LBB3_81:                               # %.lr.ph359
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	ld.w	$a5, $a3, 0
	add.d	$a1, $a4, $a1
	add.d	$a1, $a1, $a5
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB3_81
.LBB3_82:                               # %._crit_edge
	sub.w	$a0, $a1, $s1
	blez	$a0, .LBB3_139
# %bb.83:
	slli.d	$a1, $a6, 2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$a2, $a3, $a1
	sub.d	$a0, $a2, $a0
	sub.d	$a2, $s7, $s6
	srli.d	$a2, $a2, 3
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	mul.w	$a2, $a2, $a4
	stx.w	$a0, $a3, $a1
	blez	$a2, .LBB3_139
# %bb.84:                               # %.preheader315.lr.ph
	move	$a1, $zero
	addi.d	$s5, $sp, 216
	bstrpick.d	$a2, $a6, 31, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$s0, $a2
	alsl.d	$a0, $a2, $a0, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	move	$a0, $a4
	lu32i.d	$a0, -349526
	lu52i.d	$a0, $a0, -1366
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB3_87
	.p2align	4, , 16
.LBB3_85:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
                                        #   in Loop: Header=BB3_87 Depth=1
	ld.d	$s6, $s4, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
.LBB3_86:                               #   in Loop: Header=BB3_87 Depth=1
	ld.d	$s7, $s4, 8
	addi.d	$a1, $a1, 1
	sub.d	$a0, $s7, $s6
	srli.d	$a0, $a0, 3
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	mul.w	$a0, $a0, $a2
	bge	$a1, $a0, .LBB3_139
.LBB3_87:                               # %.preheader315
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_90 Depth 2
	slli.d	$a0, $a1, 4
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	blez	$s3, .LBB3_104
# %bb.88:                               # %.lr.ph362.preheader
                                        #   in Loop: Header=BB3_87 Depth=1
	move	$s2, $zero
	move	$s3, $zero
	move	$fp, $zero
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	alsl.d	$s8, $a1, $a0, 3
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	b	.LBB3_90
	.p2align	4, , 16
.LBB3_89:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207
                                        #   in Loop: Header=BB3_90 Depth=2
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 4
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 32
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$a0, $s3, .LBB3_103
.LBB3_90:                               # %.lr.ph362
                                        #   Parent Loop BB3_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s8
	add.d	$a1, $a0, $s2
	st.d	$s5, $sp, 200
	ld.d	$s6, $a1, 8
	ldx.d	$s7, $a0, $s2
	st.d	$s6, $sp, 168
	move	$a0, $s5
	ori	$a1, $zero, 16
	bltu	$s6, $a1, .LBB3_93
# %bb.91:                               # %.noexc.i202
                                        #   in Loop: Header=BB3_90 Depth=2
.Ltmp9:                                 # EH_LABEL
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 168
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.92:                               # %.noexc203
                                        #   in Loop: Header=BB3_90 Depth=2
	ld.d	$a1, $sp, 168
	st.d	$a0, $sp, 200
	st.d	$a1, $sp, 216
.LBB3_93:                               # %._crit_edge.i.i201
                                        #   in Loop: Header=BB3_90 Depth=2
	beqz	$s6, .LBB3_97
# %bb.94:                               # %._crit_edge.i.i201
                                        #   in Loop: Header=BB3_90 Depth=2
	ori	$a1, $zero, 1
	bne	$s6, $a1, .LBB3_96
# %bb.95:                               #   in Loop: Header=BB3_90 Depth=2
	ld.b	$a1, $s7, 0
	st.b	$a1, $a0, 0
	b	.LBB3_97
	.p2align	4, , 16
.LBB3_96:                               #   in Loop: Header=BB3_90 Depth=2
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_97:                               #   in Loop: Header=BB3_90 Depth=2
	ld.d	$a0, $sp, 168
	ld.d	$a1, $sp, 200
	st.d	$a0, $sp, 208
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blt	$s3, $a0, .LBB3_100
# %bb.98:                               #   in Loop: Header=BB3_90 Depth=2
	beq	$s0, $s3, .LBB3_101
.LBB3_99:                               #   in Loop: Header=BB3_90 Depth=2
	ld.d	$a0, $sp, 200
	bne	$a0, $s5, .LBB3_102
	b	.LBB3_89
	.p2align	4, , 16
.LBB3_100:                              #   in Loop: Header=BB3_90 Depth=2
	ld.w	$a0, $s4, 0
	ld.w	$a1, $s1, 0
	add.d	$a0, $a0, $fp
	add.w	$fp, $a0, $a1
	bne	$s0, $s3, .LBB3_99
.LBB3_101:                              #   in Loop: Header=BB3_90 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.w	$a1, $sp, 208
	add.d	$a0, $a0, $fp
	add.w	$fp, $a0, $a1
	ld.d	$a0, $sp, 200
	beq	$a0, $s5, .LBB3_89
.LBB3_102:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
                                        #   in Loop: Header=BB3_90 Depth=2
	ld.d	$a1, $sp, 216
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_89
	.p2align	4, , 16
.LBB3_103:                              # %._crit_edge363.loopexit
                                        #   in Loop: Header=BB3_87 Depth=1
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $s4, 0
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bge	$s1, $fp, .LBB3_86
	b	.LBB3_105
	.p2align	4, , 16
.LBB3_104:                              #   in Loop: Header=BB3_87 Depth=1
	move	$fp, $zero
	bge	$s1, $fp, .LBB3_86
.LBB3_105:                              #   in Loop: Header=BB3_87 Depth=1
	alsl.d	$s2, $a1, $a0, 3
	ldx.d	$a0, $s6, $s2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	slli.d	$s1, $a1, 5
	add.d	$a1, $a0, $s1
	addi.d	$a2, $sp, 216
	st.d	$a2, $sp, 200
	ld.d	$s6, $a1, 8
	ldx.d	$s7, $a0, $s1
	st.d	$s6, $sp, 168
	move	$a0, $a2
	ori	$a1, $zero, 16
	bltu	$s6, $a1, .LBB3_108
# %bb.106:                              # %.noexc.i209
                                        #   in Loop: Header=BB3_87 Depth=1
.Ltmp12:                                # EH_LABEL
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 168
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.107:                              # %.noexc210
                                        #   in Loop: Header=BB3_87 Depth=1
	ld.d	$a1, $sp, 168
	st.d	$a0, $sp, 200
	st.d	$a1, $sp, 216
.LBB3_108:                              # %._crit_edge.i.i208
                                        #   in Loop: Header=BB3_87 Depth=1
	beqz	$s6, .LBB3_112
# %bb.109:                              # %._crit_edge.i.i208
                                        #   in Loop: Header=BB3_87 Depth=1
	ori	$a1, $zero, 1
	bne	$s6, $a1, .LBB3_111
# %bb.110:                              #   in Loop: Header=BB3_87 Depth=1
	ld.b	$a1, $s7, 0
	st.b	$a1, $a0, 0
	b	.LBB3_112
.LBB3_111:                              #   in Loop: Header=BB3_87 Depth=1
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_112:                              #   in Loop: Header=BB3_87 Depth=1
	ld.d	$a0, $sp, 168
	ld.d	$a1, $sp, 200
	st.d	$a0, $sp, 208
	stx.b	$zero, $a1, $a0
	ld.d	$a3, $sp, 208
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	sub.d	$a0, $fp, $a0
	sub.w	$a1, $a3, $a0
	ori	$a4, $zero, 4
	slt	$a2, $a4, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a4, $a2
	or	$a1, $a1, $a2
	addi.w	$a1, $a1, -4
	bltu	$a3, $a1, .LBB3_201
# %bb.113:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
                                        #   in Loop: Header=BB3_87 Depth=1
	addi.w	$a2, $a3, 0
	addi.w	$a0, $a0, 4
	slt	$a4, $a0, $a2
	maskeqz	$a0, $a0, $a4
	masknez	$a2, $a2, $a4
	or	$a0, $a0, $a2
	beqz	$a0, .LBB3_117
# %bb.114:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
                                        #   in Loop: Header=BB3_87 Depth=1
	addi.w	$a2, $zero, -1
	bne	$a0, $a2, .LBB3_116
# %bb.115:                              #   in Loop: Header=BB3_87 Depth=1
	ld.d	$a0, $sp, 200
	st.d	$a1, $sp, 208
	stx.b	$zero, $a0, $a1
	b	.LBB3_117
.LBB3_116:                              #   in Loop: Header=BB3_87 Depth=1
	sub.d	$a2, $a3, $a1
	sltu	$a3, $a0, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$a2, $a0, $a2
.Ltmp15:                                # EH_LABEL
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
.LBB3_117:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
                                        #   in Loop: Header=BB3_87 Depth=1
	ld.d	$s6, $sp, 200
	ld.d	$s7, $sp, 208
	addi.d	$a0, $sp, 184
	st.d	$a0, $sp, 168
	st.d	$zero, $sp, 176
	st.b	$zero, $sp, 184
	addi.d	$a1, $s7, 4
.Ltmp18:                                # EH_LABEL
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.118:                              #   in Loop: Header=BB3_87 Depth=1
	ld.d	$a0, $sp, 176
	addi.w	$fp, $zero, -1
	lu52i.d	$a1, $fp, 1023
	sub.d	$a0, $a1, $a0
	bltu	$a0, $s7, .LBB3_199
# %bb.119:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
                                        #   in Loop: Header=BB3_87 Depth=1
.Ltmp20:                                # EH_LABEL
	addi.d	$a0, $sp, 168
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.120:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
                                        #   in Loop: Header=BB3_87 Depth=1
	ld.d	$a0, $sp, 176
	srli.d	$a0, $a0, 2
	lu52i.d	$a1, $fp, 255
	beq	$a0, $a1, .LBB3_199
# %bb.121:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
                                        #   in Loop: Header=BB3_87 Depth=1
.Ltmp22:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 168
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.122:                              # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
                                        #   in Loop: Header=BB3_87 Depth=1
	ld.d	$a0, $s4, 0
	ldx.d	$a2, $a0, $s2
	ldx.d	$a0, $a2, $s1
	ld.d	$a1, $sp, 168
	add.d	$fp, $a2, $s1
	addi.d	$s1, $sp, 184
	addi.d	$a2, $fp, 16
	beq	$a0, $a2, .LBB3_126
# %bb.123:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
                                        #   in Loop: Header=BB3_87 Depth=1
	beq	$a1, $s1, .LBB3_129
# %bb.124:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
                                        #   in Loop: Header=BB3_87 Depth=1
	st.d	$a1, $fp, 0
	ld.d	$a1, $sp, 176
	st.d	$a1, $fp, 8
	ld.d	$a2, $sp, 184
	ld.d	$a1, $fp, 16
	st.d	$a2, $fp, 16
	beqz	$a0, .LBB3_128
# %bb.125:                              #   in Loop: Header=BB3_87 Depth=1
	st.d	$a0, $sp, 168
	st.d	$a1, $sp, 184
	st.d	$zero, $sp, 176
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 168
	bne	$a0, $s1, .LBB3_135
	b	.LBB3_136
.LBB3_126:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
                                        #   in Loop: Header=BB3_87 Depth=1
	beq	$a1, $s1, .LBB3_129
# %bb.127:                              # %.thread.i
                                        #   in Loop: Header=BB3_87 Depth=1
	st.d	$a1, $fp, 0
	ld.d	$a0, $sp, 176
	st.d	$a0, $fp, 8
	ld.d	$a0, $sp, 184
	st.d	$a0, $fp, 16
.LBB3_128:                              #   in Loop: Header=BB3_87 Depth=1
	st.d	$s1, $sp, 168
	move	$a0, $s1
	st.d	$zero, $sp, 176
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 168
	bne	$a0, $s1, .LBB3_135
	b	.LBB3_136
.LBB3_129:                              #   in Loop: Header=BB3_87 Depth=1
	addi.d	$a2, $sp, 168
	beq	$a2, $fp, .LBB3_138
# %bb.130:                              #   in Loop: Header=BB3_87 Depth=1
	ld.d	$a2, $sp, 176
	beqz	$a2, .LBB3_134
# %bb.131:                              #   in Loop: Header=BB3_87 Depth=1
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB3_133
# %bb.132:                              #   in Loop: Header=BB3_87 Depth=1
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB3_134
.LBB3_133:                              #   in Loop: Header=BB3_87 Depth=1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_134:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
                                        #   in Loop: Header=BB3_87 Depth=1
	ld.d	$a0, $sp, 176
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 168
	st.d	$zero, $sp, 176
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 168
	beq	$a0, $s1, .LBB3_136
.LBB3_135:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
                                        #   in Loop: Header=BB3_87 Depth=1
	ld.d	$a1, $sp, 184
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_136:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
                                        #   in Loop: Header=BB3_87 Depth=1
	ld.d	$a0, $sp, 200
	addi.d	$a1, $sp, 216
	beq	$a0, $a1, .LBB3_85
# %bb.137:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
                                        #   in Loop: Header=BB3_87 Depth=1
	ld.d	$a1, $sp, 216
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_85
.LBB3_138:                              #   in Loop: Header=BB3_87 Depth=1
	move	$a0, $a1
	st.d	$zero, $sp, 176
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 168
	bne	$a0, $s1, .LBB3_135
	b	.LBB3_136
.LBB3_139:                              # %.loopexit316
	sub.d	$a0, $s7, $s6
	srli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	blez	$a0, .LBB3_191
# %bb.140:                              # %.lr.ph393
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.d	$s4, $a0, 16
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s5, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s6, $a0, %pc_lo12(.L.str.2)
	move	$a2, $zero
	lu32i.d	$a1, -349526
	lu52i.d	$a0, $a1, -1366
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_141:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_145 Depth 2
                                        #       Child Loop BB3_147 Depth 3
                                        #       Child Loop BB3_151 Depth 3
                                        #     Child Loop BB3_163 Depth 2
                                        #       Child Loop BB3_168 Depth 3
                                        #       Child Loop BB3_172 Depth 3
                                        #       Child Loop BB3_181 Depth 3
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	bne	$a2, $a0, .LBB3_160
# %bb.142:                              # %.preheader314
                                        #   in Loop: Header=BB3_141 Depth=1
	blez	$s3, .LBB3_153
# %bb.143:                              # %.preheader313.preheader
                                        #   in Loop: Header=BB3_141 Depth=1
	move	$fp, $zero
	b	.LBB3_145
	.p2align	4, , 16
.LBB3_144:                              # %._crit_edge371
                                        #   in Loop: Header=BB3_145 Depth=2
	addi.d	$fp, $fp, 1
	beq	$fp, $s8, .LBB3_153
.LBB3_145:                              # %.preheader313
                                        #   Parent Loop BB3_141 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_147 Depth 3
                                        #       Child Loop BB3_151 Depth 3
	slli.d	$s0, $fp, 2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $s0
	blez	$a0, .LBB3_149
# %bb.146:                              # %.lr.ph367.preheader
                                        #   in Loop: Header=BB3_145 Depth=2
	move	$s1, $zero
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$s2, $fp, $a0, 2
	.p2align	4, , 16
.LBB3_147:                              # %.lr.ph367
                                        #   Parent Loop BB3_141 Depth=1
                                        #     Parent Loop BB3_145 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp25:                                # EH_LABEL
	ori	$a2, $zero, 1
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.148:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
                                        #   in Loop: Header=BB3_147 Depth=3
	ld.w	$a0, $s2, 0
	addi.w	$s1, $s1, 1
	blt	$s1, $a0, .LBB3_147
.LBB3_149:                              # %.preheader312
                                        #   in Loop: Header=BB3_145 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $s0
	blez	$a0, .LBB3_144
# %bb.150:                              # %.lr.ph370.preheader
                                        #   in Loop: Header=BB3_145 Depth=2
	move	$s0, $zero
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$s1, $fp, $a0, 2
	.p2align	4, , 16
.LBB3_151:                              # %.lr.ph370
                                        #   Parent Loop BB3_141 Depth=1
                                        #     Parent Loop BB3_145 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp28:                                # EH_LABEL
	ori	$a2, $zero, 1
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.152:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230
                                        #   in Loop: Header=BB3_151 Depth=3
	ld.w	$a0, $s1, 0
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB3_151
	b	.LBB3_144
	.p2align	4, , 16
.LBB3_153:                              # %._crit_edge373
                                        #   in Loop: Header=BB3_141 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s4, $a0
	ld.d	$s7, $a0, 240
	beqz	$s7, .LBB3_197
# %bb.154:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        #   in Loop: Header=BB3_141 Depth=1
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB3_156
# %bb.155:                              #   in Loop: Header=BB3_141 Depth=1
	ld.bu	$a0, $s7, 67
	b	.LBB3_158
.LBB3_156:                              #   in Loop: Header=BB3_141 Depth=1
.Ltmp31:                                # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.157:                              # %.noexc252
                                        #   in Loop: Header=BB3_141 Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
.Ltmp33:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.Ltmp34:                                # EH_LABEL
.LBB3_158:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
                                        #   in Loop: Header=BB3_141 Depth=1
.Ltmp35:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.159:                              # %.noexc254
                                        #   in Loop: Header=BB3_141 Depth=1
.Ltmp37:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
.LBB3_160:                              # %_ZNSolsEPFRSoS_E.exit
                                        #   in Loop: Header=BB3_141 Depth=1
	blez	$s3, .LBB3_183
# %bb.161:                              # %.lr.ph389
                                        #   in Loop: Header=BB3_141 Depth=1
	move	$s7, $zero
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	slli.d	$a0, $a1, 4
	alsl.d	$s1, $a1, $a0, 3
	b	.LBB3_163
	.p2align	4, , 16
.LBB3_162:                              # %._crit_edge383
                                        #   in Loop: Header=BB3_163 Depth=2
	addi.d	$s7, $s7, 1
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	beq	$s7, $s8, .LBB3_183
.LBB3_163:                              #   Parent Loop BB3_141 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_168 Depth 3
                                        #       Child Loop BB3_172 Depth 3
                                        #       Child Loop BB3_181 Depth 3
	slli.d	$a0, $s7, 2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	bge	$a2, $a1, .LBB3_165
# %bb.164:                              #   in Loop: Header=BB3_163 Depth=2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.d	$a1, $a1, $s1
	slli.d	$a2, $s7, 5
	add.d	$a1, $a1, $a2
	ld.d	$s8, $a1, 8
	b	.LBB3_166
	.p2align	4, , 16
.LBB3_165:                              #   in Loop: Header=BB3_163 Depth=2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$s8, $a1, $a0
.LBB3_166:                              #   in Loop: Header=BB3_163 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$s3, $a2, $a0
	blez	$a1, .LBB3_170
# %bb.167:                              # %.lr.ph376.preheader
                                        #   in Loop: Header=BB3_163 Depth=2
	move	$fp, $zero
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$s0, $s7, $a0, 2
	.p2align	4, , 16
.LBB3_168:                              # %.lr.ph376
                                        #   Parent Loop BB3_141 Depth=1
                                        #     Parent Loop BB3_163 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp39:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
# %bb.169:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234
                                        #   in Loop: Header=BB3_168 Depth=3
	ld.w	$a0, $s0, 0
	addi.w	$fp, $fp, 1
	blt	$fp, $a0, .LBB3_168
.LBB3_170:                              # %.preheader
                                        #   in Loop: Header=BB3_163 Depth=2
	sub.w	$fp, $s3, $s8
	bstrpick.d	$s0, $fp, 31, 1
	ori	$a0, $zero, 2
	blt	$fp, $a0, .LBB3_174
# %bb.171:                              # %.lr.ph378.split.preheader
                                        #   in Loop: Header=BB3_163 Depth=2
	addi.w	$a0, $s0, 0
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$s2, $a0, $a2
	.p2align	4, , 16
.LBB3_172:                              # %.lr.ph378.split
                                        #   Parent Loop BB3_141 Depth=1
                                        #     Parent Loop BB3_163 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp42:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.173:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236
                                        #   in Loop: Header=BB3_172 Depth=3
	addi.w	$s2, $s2, -1
	bnez	$s2, .LBB3_172
.LBB3_174:                              # %._crit_edge379
                                        #   in Loop: Header=BB3_163 Depth=2
	move	$a0, $s7
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB3_178
# %bb.175:                              #   in Loop: Header=BB3_163 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bge	$s7, $a0, .LBB3_177
# %bb.176:                              #   in Loop: Header=BB3_163 Depth=2
	ld.d	$a0, $s4, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a1, $s7, $a1, 2
	ld.d	$a0, $a0, -24
	ld.w	$a1, $a1, 0
	add.d	$a0, $s4, $a0
	st.d	$a1, $a0, 16
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s1
	slli.d	$a1, $s7, 5
	add.d	$a2, $a0, $a1
	ldx.d	$a1, $a0, $a1
	ld.d	$a2, $a2, 8
.Ltmp45:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
.LBB3_177:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
                                        #   in Loop: Header=BB3_163 Depth=2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$a0, $a1
	bne	$s7, $a1, .LBB3_179
.LBB3_178:                              # %.invoke493
                                        #   in Loop: Header=BB3_163 Depth=2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.d	$a1, $a1, $s1
	slli.d	$a0, $a0, 5
	add.d	$a2, $a1, $a0
	ldx.d	$a1, $a1, $a0
	ld.d	$a2, $a2, 8
.Ltmp47:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp48:                                # EH_LABEL
.LBB3_179:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit239
                                        #   in Loop: Header=BB3_163 Depth=2
	blez	$fp, .LBB3_162
# %bb.180:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit239
                                        #   in Loop: Header=BB3_163 Depth=2
	add.d	$a0, $s8, $s0
	sub.w	$fp, $s3, $a0
	blez	$fp, .LBB3_162
	.p2align	4, , 16
.LBB3_181:                              # %.lr.ph382.split
                                        #   Parent Loop BB3_141 Depth=1
                                        #     Parent Loop BB3_163 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp50:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.182:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243
                                        #   in Loop: Header=BB3_181 Depth=3
	addi.w	$fp, $fp, -1
	bnez	$fp, .LBB3_181
	b	.LBB3_162
	.p2align	4, , 16
.LBB3_183:                              # %._crit_edge390
                                        #   in Loop: Header=BB3_141 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s4, $a0
	ld.d	$s7, $a0, 240
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	beqz	$s7, .LBB3_197
# %bb.184:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i257
                                        #   in Loop: Header=BB3_141 Depth=1
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB3_186
# %bb.185:                              #   in Loop: Header=BB3_141 Depth=1
	ld.bu	$a0, $s7, 67
	b	.LBB3_188
	.p2align	4, , 16
.LBB3_186:                              #   in Loop: Header=BB3_141 Depth=1
.Ltmp53:                                # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.187:                              # %.noexc262
                                        #   in Loop: Header=BB3_141 Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
.Ltmp55:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.Ltmp56:                                # EH_LABEL
.LBB3_188:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i259
                                        #   in Loop: Header=BB3_141 Depth=1
.Ltmp57:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.189:                              # %.noexc264
                                        #   in Loop: Header=BB3_141 Depth=1
.Ltmp59:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.190:                              # %_ZNSolsEPFRSoS_E.exit232
                                        #   in Loop: Header=BB3_141 Depth=1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	sub.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	blt	$a2, $a0, .LBB3_141
.LBB3_191:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_193
# %bb.192:
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_193:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit224
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_195
# %bb.194:
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_195:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit226
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
.LBB3_196:
	alsl.d	$a1, $a2, $a5, 2
	b	.LBB3_63
.LBB3_197:                              # %.invoke
.Ltmp62:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
# %bb.198:                              # %.cont
.LBB3_199:                              # %.invoke.i.i
.Ltmp65:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
# %bb.200:                              # %.cont.i.i
.LBB3_201:
.Ltmp68:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a4, %pc_hi20(.L.str.4)
	move	$a2, $a1
	addi.d	$a1, $a4, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZSt24__throw_out_of_range_fmtPKcz)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
# %bb.202:                              # %.noexc212
.LBB3_203:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB3_204:
.Ltmp8:                                 # EH_LABEL
	move	$s0, $a0
	b	.LBB3_228
.LBB3_205:
.Ltmp5:                                 # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_230
	b	.LBB3_232
.LBB3_206:                              # %.loopexit317
.Ltmp17:                                # EH_LABEL
	b	.LBB3_209
.LBB3_207:
.Ltmp14:                                # EH_LABEL
	b	.LBB3_226
.LBB3_208:                              # %.loopexit.split-lp318
.Ltmp70:                                # EH_LABEL
.LBB3_209:
	move	$s0, $a0
	b	.LBB3_214
.LBB3_210:                              # %.loopexit.split-lp323
.Ltmp67:                                # EH_LABEL
	b	.LBB3_212
.LBB3_211:                              # %.loopexit322
.Ltmp24:                                # EH_LABEL
.LBB3_212:
	move	$s0, $a0
	ld.d	$a0, $sp, 168
	addi.d	$a1, $sp, 184
	beq	$a0, $a1, .LBB3_214
# %bb.213:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a1, $sp, 184
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_214:
	ld.d	$a0, $sp, 200
	addi.d	$a1, $sp, 216
	beq	$a0, $a1, .LBB3_227
# %bb.215:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220
	ld.d	$a1, $sp, 216
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_227
.LBB3_216:                              # %.loopexit.split-lp
.Ltmp64:                                # EH_LABEL
	b	.LBB3_226
.LBB3_217:
.Ltmp11:                                # EH_LABEL
	b	.LBB3_226
.LBB3_218:                              # %.loopexit
.Ltmp61:                                # EH_LABEL
	b	.LBB3_226
.LBB3_219:                              # %.split.us
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_230
	b	.LBB3_232
.LBB3_220:
.Ltmp49:                                # EH_LABEL
	b	.LBB3_226
.LBB3_221:
.Ltmp30:                                # EH_LABEL
	b	.LBB3_226
.LBB3_222:
.Ltmp27:                                # EH_LABEL
	b	.LBB3_226
.LBB3_223:                              # %.split385
.Ltmp52:                                # EH_LABEL
	b	.LBB3_226
.LBB3_224:                              # %.split
.Ltmp44:                                # EH_LABEL
	b	.LBB3_226
.LBB3_225:
.Ltmp41:                                # EH_LABEL
.LBB3_226:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit245
	move	$s0, $a0
.LBB3_227:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit245
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_228:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_231
# %bb.229:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit247
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_232
.LBB3_230:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit249
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_231:
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_230
.LBB3_232:
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE, .Lfunc_end3-_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp6-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp12-.Ltmp10                #   Call between .Ltmp10 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp15-.Ltmp13                #   Call between .Ltmp13 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp23-.Ltmp18                #   Call between .Ltmp18 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin0          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp25-.Ltmp23                #   Call between .Ltmp23 and .Ltmp25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin0          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin0          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp38-.Ltmp31                #   Call between .Ltmp31 and .Ltmp38
	.uleb128 .Ltmp61-.Lfunc_begin0          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin0          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin0          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp48-.Ltmp45                #   Call between .Ltmp45 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin0          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin0          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp60-.Ltmp53                #   Call between .Ltmp53 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin0          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp62-.Ltmp60                #   Call between .Ltmp60 and .Ltmp62
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin0          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin0          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin0          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Lfunc_end3-.Ltmp69            #   Call between .Ltmp69 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZN2PPL10index_baseE,@object    # @_ZN2PPL10index_baseE
	.data
	.p2align	2, 0x0
_ZN2PPL10index_baseE:
	.word	1                               # 0x1
	.size	_ZN2PPL10index_baseE, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" ..."
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" "
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"-"
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.3, 49

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"basic_string::erase"
	.size	.L.str.4, 20

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.size	.L.str.5, 55

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"basic_string::append"
	.size	.L.str.6, 21

	.globl	_ZN2PP12Parser_utilsC1Ei
	.type	_ZN2PP12Parser_utilsC1Ei,@function
_ZN2PP12Parser_utilsC1Ei = _ZN2PP12Parser_utilsC2Ei
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.dword	__gxx_personality_v0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Unwind_Resume
