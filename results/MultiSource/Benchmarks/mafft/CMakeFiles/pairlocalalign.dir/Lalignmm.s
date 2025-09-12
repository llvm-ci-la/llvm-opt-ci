	.file	"Lalignmm.c"
	.text
	.globl	Lalignmm_hmout                  # -- Begin function Lalignmm_hmout
	.p2align	5
	.type	Lalignmm_hmout,@function
Lalignmm_hmout:                         # @Lalignmm_hmout
# %bb.0:
	addi.d	$sp, $sp, -544
	st.d	$ra, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 528                   # 8-byte Folded Spill
	st.d	$s0, $sp, 520                   # 8-byte Folded Spill
	st.d	$s1, $sp, 512                   # 8-byte Folded Spill
	st.d	$s2, $sp, 504                   # 8-byte Folded Spill
	st.d	$s3, $sp, 496                   # 8-byte Folded Spill
	st.d	$s4, $sp, 488                   # 8-byte Folded Spill
	st.d	$s5, $sp, 480                   # 8-byte Folded Spill
	st.d	$s6, $sp, 472                   # 8-byte Folded Spill
	st.d	$s7, $sp, 464                   # 8-byte Folded Spill
	st.d	$s8, $sp, 456                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 448                  # 8-byte Folded Spill
	move	$s4, $a7
	move	$s8, $a5
	move	$s5, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(RNApenalty)
	ld.d	$a0, $a0, %got_pc_lo12(RNApenalty)
	ld.w	$s6, $a0, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $fp, 0
	move	$s7, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	add.d	$a0, $s7, $a0
	addi.w	$fp, $a0, 200
	move	$a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$a0, $s8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.w	$s3, $s7, 102
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	addi.w	$s0, $s0, 102
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ori	$a1, $zero, 27
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ori	$a1, $zero, 27
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	addi.w	$a0, $s7, 0
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	blez	$s5, .LBB0_4
# %bb.1:                                # %.lr.ph
	move	$fp, $zero
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_202
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addi.w	$fp, $fp, 1
	addi.d	$s5, $s5, -1
	addi.d	$s7, $s7, 8
	bnez	$s5, .LBB0_2
.LBB0_4:                                # %.preheader184
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.w	$fp, $a0, 0
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	blez	$s8, .LBB0_8
# %bb.5:                                # %.lr.ph191
	move	$s5, $zero
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB0_203
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	addi.w	$s5, $s5, 1
	addi.d	$s7, $s7, -1
	addi.d	$s8, $s8, 8
	bnez	$s7, .LBB0_6
.LBB0_8:                                # %._crit_edge
	st.d	$s3, $sp, 440                   # 8-byte Folded Spill
	movgr2fr.w	$fa0, $s6
	ffint.s.w	$fs0, $fa0
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s5
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	move	$a3, $s3
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	move	$a4, $s6
	pcaddu18i	$ra, %call36(MScpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $s8
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	move	$a2, $s1
	move	$a3, $fp
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	move	$a4, $s7
	pcaddu18i	$ra, %call36(MScpmx_calc_new)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB0_10
# %bb.9:
	ld.d	$s5, $sp, 560
	ld.d	$s6, $sp, 544
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s4
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s1
	move	$a4, $fp
	move	$a5, $s6
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	move	$a1, $s6
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s5
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s1
	move	$a4, $fp
	move	$a5, $s5
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	b	.LBB0_11
.LBB0_10:
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	move	$a1, $s6
	move	$a2, $s5
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	move	$a1, $s6
	move	$a2, $s5
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
.LBB0_11:
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	fcvt.d.s	$fa0, $fs0
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	blez	$s3, .LBB0_18
# %bb.12:                               # %.lr.ph194
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	ori	$a1, $zero, 4
	bltu	$a0, $a1, .LBB0_15
# %bb.13:                               # %vector.memcheck
	alsl.d	$a1, $a0, $a5, 2
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	bgeu	$a3, $a1, .LBB0_160
# %bb.14:                               # %vector.memcheck
	alsl.d	$a1, $a0, $a3, 2
	bgeu	$a5, $a1, .LBB0_160
.LBB0_15:
	move	$a1, $zero
.LBB0_16:                               # %scalar.ph.preheader
	alsl.d	$a2, $a1, $a5, 2
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	sub.d	$a0, $a0, $a1
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB0_17:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a3, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a3, 0
	fld.s	$fa3, $a2, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB0_17
.LBB0_18:                               # %.preheader183
	blez	$fp, .LBB0_25
# %bb.19:                               # %.lr.ph196
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	ori	$a1, $zero, 4
	bltu	$a0, $a1, .LBB0_22
# %bb.20:                               # %vector.memcheck258
	alsl.d	$a1, $a0, $a6, 2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	bgeu	$a3, $a1, .LBB0_163
# %bb.21:                               # %vector.memcheck258
	alsl.d	$a1, $a0, $a3, 2
	bgeu	$a6, $a1, .LBB0_163
.LBB0_22:
	move	$a1, $zero
.LBB0_23:                               # %scalar.ph264.preheader
	alsl.d	$a2, $a1, $a6, 2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	sub.d	$a0, $a0, $a1
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB0_24:                               # %scalar.ph264
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a3, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a3, 0
	fld.s	$fa3, $a2, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB0_24
.LBB0_25:                               # %._crit_edge197
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	pcalau12i	$a0, %pc_hi20(reccycle)
	ld.w	$a1, $a0, %pc_lo12(reccycle)
	st.d	$a5, $a2, 8
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.d	$a3, $a2, 16
	st.d	$a6, $a2, 24
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(reccycle)
	blez	$fp, .LBB0_78
# %bb.26:
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	blez	$s6, .LBB0_34
# %bb.27:                               # %.lr.ph.preheader.i
	ori	$a2, $zero, 4
	move	$a1, $zero
	bltu	$s6, $a2, .LBB0_32
# %bb.28:                               # %.lr.ph.preheader.i
	sub.d	$a2, $fp, $s4
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB0_32
# %bb.29:                               # %vector.ph282
	bstrpick.d	$a1, $s6, 30, 2
	slli.d	$a1, $a1, 2
	addi.d	$a2, $fp, 16
	addi.d	$a3, $s4, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_30:                               # %vector.body285
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a4, $a4, -4
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB0_30
# %bb.31:                               # %middle.block290
	beq	$a1, $s6, .LBB0_34
.LBB0_32:                               # %.lr.ph.i.preheader
	sub.d	$a2, $s6, $a1
	alsl.d	$a3, $a1, $fp, 3
	alsl.d	$a1, $a1, $s4, 3
	.p2align	4, , 16
.LBB0_33:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB0_33
.LBB0_34:                               # %.preheader13.i
	blez	$s7, .LBB0_42
# %bb.35:                               # %.lr.ph17.preheader.i
	ori	$a2, $zero, 4
	move	$a1, $zero
	bltu	$s7, $a2, .LBB0_40
# %bb.36:                               # %.lr.ph17.preheader.i
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	sub.d	$a2, $a0, $a2
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB0_40
# %bb.37:                               # %vector.ph297
	bstrpick.d	$a1, $s7, 30, 2
	slli.d	$a1, $a1, 2
	addi.d	$a2, $a0, 16
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_38:                               # %vector.body300
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a4, $a4, -4
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB0_38
# %bb.39:                               # %middle.block305
	beq	$a1, $s7, .LBB0_42
.LBB0_40:                               # %.lr.ph17.i.preheader
	sub.d	$a2, $s7, $a1
	alsl.d	$a3, $a1, $a0, 3
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a4, 3
	.p2align	4, , 16
.LBB0_41:                               # %.lr.ph17.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB0_41
.LBB0_42:                               # %._crit_edge.i
	ori	$a1, $zero, 10
	blt	$s3, $a1, .LBB0_87
# %bb.43:                               # %._crit_edge.i
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	addi.w	$s1, $a1, 0
	ori	$a1, $zero, 9
	bgeu	$a1, $s1, .LBB0_87
# %bb.44:                               # %.lr.ph20.preheader.i
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.w	$s3, $a0, 100
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.w	$s7, $a0, 100
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	sltu	$a0, $s7, $s3
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	addi.w	$s2, $a0, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 26
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ori	$a1, $zero, 26
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	move	$a0, $s3
	move	$a1, $s7
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	move	$a0, $s3
	move	$a1, $s7
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ori	$a7, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s6
	ld.d	$s2, $sp, 368                   # 8-byte Folded Reload
	move	$a1, $s2
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $zero
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	move	$a5, $s5
	move	$a6, $s8
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $zero
	st.d	$s1, $sp, 360                   # 8-byte Folded Spill
	move	$a4, $s1
	st.d	$s5, $sp, 328                   # 8-byte Folded Spill
	move	$a5, $s5
	st.d	$s8, $sp, 320                   # 8-byte Folded Spill
	move	$a6, $s8
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$s0, $a2, $a1
	ld.d	$s7, $sp, 232                   # 8-byte Folded Reload
	addi.d	$s5, $s7, 4
	ori	$a1, $zero, 9
	bge	$a0, $a1, .LBB0_166
# %bb.45:
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
.LBB0_46:
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 112                   # 8-byte Folded Reload
.LBB0_47:                               # %.lr.ph20.i.preheader
	sub.d	$a0, $s0, $fp
	alsl.d	$a1, $fp, $s6, 2
	alsl.d	$a2, $fp, $a5, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB0_48:                               # %.lr.ph20.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s7, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB0_48
.LBB0_49:                               # %.lr.ph22.preheader.i
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.w	$t3, $a0, -1
	addi.w	$t2, $t6, -1
	addi.w	$t4, $t6, 1
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t4, $a1
	or	$a0, $a1, $a0
	addi.d	$a1, $a0, -1
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	ori	$a3, $zero, 9
	alsl.d	$a1, $a0, $s4, 2
	addi.d	$a4, $s8, 4
	st.d	$a4, $sp, 256                   # 8-byte Folded Spill
	bge	$t4, $a3, .LBB0_171
.LBB0_50:                               # %.lr.ph22.i.preheader
	sub.d	$a3, $a0, $a2
	alsl.d	$a4, $a2, $s4, 2
	alsl.d	$a2, $a2, $a7, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB0_51:                               # %.lr.ph22.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s8, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB0_51
.LBB0_52:                               # %.lr.ph27.preheader.i
	fld.s	$fa0, $s6, 0
	ld.d	$a2, $t1, 0
	ld.d	$a3, $sp, 568
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	fst.s	$fa0, $a2, 0
	slli.d	$a3, $s0, 2
	ori	$a4, $zero, 4
	ori	$a5, $zero, 8
	.p2align	4, , 16
.LBB0_53:                               # %.lr.ph27.i
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s6, $a4
	ldx.d	$a6, $t1, $a5
	fst.s	$fa0, $a6, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 8
	bne	$a3, $a4, .LBB0_53
# %bb.54:                               # %.lr.ph29.i.preheader
	ori	$a4, $zero, 9
	ori	$a3, $zero, 1
	blt	$t4, $a4, .LBB0_59
# %bb.55:                               # %.lr.ph29.i.preheader
	sub.d	$a4, $a2, $s4
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB0_59
# %bb.56:                               # %vector.ph370
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	move	$a4, $a3
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	bstrins.d	$a3, $a5, 2, 0
	addi.d	$a5, $s4, 20
	addi.d	$a6, $a2, 20
	move	$a7, $a4
	.p2align	4, , 16
.LBB0_57:                               # %vector.body373
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$a5, $a5, 32
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB0_57
# %bb.58:                               # %middle.block379
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	beq	$a5, $a4, .LBB0_61
.LBB0_59:                               # %.lr.ph29.i.preheader555
	sub.d	$a4, $a0, $a3
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a3, $a3, $s4, 2
	.p2align	4, , 16
.LBB0_60:                               # %.lr.ph29.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fst.s	$fa0, $a2, 0
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB0_60
.LBB0_61:                               # %.lr.ph31.i
	ori	$a2, $zero, 1
	ori	$a3, $zero, 13
	addi.d	$a5, $t0, 4
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	bge	$t4, $a3, .LBB0_176
.LBB0_62:                               # %scalar.ph394.preheader
	sub.d	$a1, $a0, $a2
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 2
	alsl.d	$a4, $a2, $t0, 2
	alsl.d	$a2, $a2, $s4, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB0_63:                               # %scalar.ph394
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $s5, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	st.w	$zero, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB0_63
.LBB0_64:                               # %.lr.ph50.i
	st.d	$t4, $sp, 168                   # 8-byte Folded Spill
	st.d	$t3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 408                   # 8-byte Folded Spill
	slli.d	$s6, $t2, 2
	fldx.s	$fa0, $s4, $s6
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	fst.s	$fa0, $a2, 0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	st.d	$t2, $sp, 176                   # 8-byte Folded Spill
	alsl.d	$a1, $t2, $t0, 2
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	bstrpick.d	$a1, $t6, 30, 0
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	bstrpick.d	$s1, $a2, 31, 0
	slli.d	$s3, $a0, 2
	ori	$s2, $zero, 1
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	move	$a0, $s4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $sp, 416                   # 8-byte Folded Spill
	st.d	$s6, $sp, 400                   # 8-byte Folded Spill
	b	.LBB0_66
	.p2align	4, , 16
.LBB0_65:                               # %._crit_edge45.i
                                        #   in Loop: Header=BB0_66 Depth=1
	ld.d	$s6, $sp, 400                   # 8-byte Folded Reload
	fldx.s	$fa0, $s4, $s6
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	fstx.s	$fa0, $a2, $a0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	fld.s	$fa0, $a0, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	addi.d	$s2, $s2, 1
	fstx.s	$fa0, $a1, $a0
	move	$a0, $s4
	beq	$s2, $s0, .LBB0_88
.LBB0_66:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_76 Depth 2
                                        #     Child Loop BB0_72 Depth 2
	addi.d	$s6, $s2, -1
	slli.d	$a1, $s6, 2
	ld.d	$fp, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$fa0, $fp, $a1
	ld.d	$s4, $sp, 416                   # 8-byte Folded Reload
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	fst.s	$fa0, $a0, 0
	move	$a0, $s4
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	move	$a3, $s2
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s2, 2
	fldx.s	$fa0, $fp, $a0
	fst.s	$fa0, $s4, 0
	fldx.s	$fa0, $s7, $a0
	ld.d	$ra, $sp, 192                   # 8-byte Folded Reload
	fst.s	$fa0, $ra, 0
	ld.d	$t8, $sp, 336                   # 8-byte Folded Reload
	bne	$s2, $s1, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_66 Depth=1
	fst.s	$fa0, $t8, 0
.LBB0_68:                               # %.lr.ph44.i
                                        #   in Loop: Header=BB0_66 Depth=1
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	fld.s	$fa0, $fp, 0
	fld.s	$fa1, $s8, 4
	slli.d	$a1, $s2, 3
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ldx.d	$a4, $a2, $a1
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	alsl.d	$a2, $s2, $s7, 2
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a3, $s6, $a3, 2
	ld.d	$t3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 208                   # 8-byte Folded Reload
	bne	$s2, $s1, .LBB0_74
# %bb.69:                               # %.lr.ph44.split.us.i.preheader
                                        #   in Loop: Header=BB0_66 Depth=1
	move	$a5, $zero
	move	$a7, $zero
	ori	$a6, $zero, 4
	b	.LBB0_72
	.p2align	4, , 16
.LBB0_70:                               #   in Loop: Header=BB0_72 Depth=2
	fstx.s	$fa6, $ra, $a6
	ld.d	$t0, $sp, 440                   # 8-byte Folded Reload
	stx.w	$s6, $t0, $a6
	move	$t0, $s6
.LBB0_71:                               #   in Loop: Header=BB0_72 Depth=2
	fadd.s	$fa5, $fa0, $fa5
	fcmp.clt.s	$fcc0, $fa1, $fa5
	fadd.s	$fa3, $fa3, $fa4
	fldx.s	$fa4, $s4, $a6
	fsel	$fa5, $fa1, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $fa5, $fa3
	fsel	$fa3, $fa5, $fa3, $fcc0
	fadd.s	$fa3, $fa3, $fa4
	fstx.s	$fa3, $s4, $a6
	fstx.s	$fa3, $a4, $a6
	fldx.s	$fa3, $ra, $a6
	fadd.s	$fa1, $fa1, $fa2
	fcmp.cult.s	$fcc0, $fa1, $fa0
	fstx.s	$fa3, $a1, $a6
	fldx.s	$fa2, $s4, $a6
	fsel	$fa0, $fa1, $fa0, $fcc0
	movcf2gr	$t1, $fcc0
	masknez	$t2, $a5, $t1
	maskeqz	$a7, $a7, $t1
	fstx.s	$fa2, $t5, $a6
	fldx.s	$fa1, $ra, $a6
	or	$a7, $a7, $t2
	stx.w	$t0, $t7, $a6
	stx.w	$a7, $t6, $a6
	fstx.s	$fa1, $t8, $a6
	fstx.s	$fa0, $t4, $a6
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 1
	beq	$s3, $a6, .LBB0_65
.LBB0_72:                               # %.lr.ph44.split.us.i
                                        #   Parent Loop BB0_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $fp, $a6
	fld.s	$fa1, $t0, -4
	add.d	$t0, $t3, $a6
	fld.s	$fa5, $t0, -4
	fld.s	$fa6, $a2, 0
	fldx.s	$fa3, $ra, $a6
	fldx.s	$fa2, $s8, $a6
	fld.s	$fa4, $a3, 0
	fadd.s	$fa6, $fa1, $fa6
	fcmp.cle.s	$fcc0, $fa3, $fa6
	bcnez	$fcc0, .LBB0_70
# %bb.73:                               # %.lr.ph44.split.us._crit_edge.i
                                        #   in Loop: Header=BB0_72 Depth=2
	ld.d	$t0, $sp, 440                   # 8-byte Folded Reload
	ldx.w	$t0, $t0, $a6
	b	.LBB0_71
	.p2align	4, , 16
.LBB0_74:                               # %.lr.ph44.split.i.preheader
                                        #   in Loop: Header=BB0_66 Depth=1
	addi.d	$a5, $s4, 4
	addi.d	$a6, $a1, 4
	addi.d	$a4, $a4, 4
	move	$a7, $t3
	ld.d	$t0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	move	$t4, $fp
	b	.LBB0_76
	.p2align	4, , 16
.LBB0_75:                               #   in Loop: Header=BB0_76 Depth=2
	fadd.s	$fa4, $fa0, $fa4
	fcmp.clt.s	$fcc0, $fa1, $fa4
	fadd.s	$fa3, $fa3, $fa5
	fld.s	$fa5, $a5, 0
	fsel	$fa4, $fa1, $fa4, $fcc0
	fcmp.clt.s	$fcc0, $fa4, $fa3
	fsel	$fa3, $fa4, $fa3, $fcc0
	fadd.s	$fa3, $fa3, $fa5
	fst.s	$fa3, $a5, 0
	fst.s	$fa3, $a4, 0
	fld.s	$fa3, $t2, 0
	fadd.s	$fa1, $fa1, $fa2
	fcmp.cle.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fst.s	$fa3, $a6, 0
	addi.d	$t4, $t4, 4
	addi.d	$a5, $a5, 4
	addi.d	$t3, $t3, 4
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, -1
	addi.d	$a6, $a6, 4
	addi.d	$a4, $a4, 4
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	beqz	$t1, .LBB0_65
.LBB0_76:                               # %.lr.ph44.split.i
                                        #   Parent Loop BB0_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $t4, 0
	fld.s	$fa4, $a7, 0
	fld.s	$fa6, $a2, 0
	fld.s	$fa3, $t2, 0
	fld.s	$fa2, $t0, 0
	fld.s	$fa5, $a3, 0
	fadd.s	$fa6, $fa1, $fa6
	fcmp.cult.s	$fcc0, $fa6, $fa3
	bcnez	$fcc0, .LBB0_75
# %bb.77:                               #   in Loop: Header=BB0_76 Depth=2
	fst.s	$fa6, $t2, 0
	st.w	$s6, $t3, 0
	b	.LBB0_75
.LBB0_78:                               # %.preheader1.i
	blez	$s6, .LBB0_81
# %bb.79:                               # %.lr.ph114.i
	move	$fp, $s4
	move	$s0, $s5
	move	$s1, $s6
	.p2align	4, , 16
.LBB0_80:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	stx.b	$zero, $a0, $s3
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, 8
	bnez	$s1, .LBB0_80
.LBB0_81:                               # %.preheader.i
	blez	$s7, .LBB0_151
# %bb.82:                               # %.lr.ph121.i
	move	$s0, $zero
	ori	$s1, $zero, 45
	b	.LBB0_84
	.p2align	4, , 16
.LBB0_83:                               # %._crit_edge119.i
                                        #   in Loop: Header=BB0_84 Depth=1
	addi.d	$s0, $s0, 1
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	beq	$s0, $s7, .LBB0_151
.LBB0_84:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_86 Depth 2
	slli.d	$a0, $s0, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	st.b	$zero, $a0, 0
	blez	$s3, .LBB0_83
# %bb.85:                               # %.lr.ph118.i.preheader
                                        #   in Loop: Header=BB0_84 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s2, $s0, $a0, 3
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_86:                               # %.lr.ph118.i
                                        #   Parent Loop BB0_84 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $s2, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	stx.h	$s1, $fp, $a0
	bnez	$s3, .LBB0_86
	b	.LBB0_83
.LBB0_87:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_151
.LBB0_88:                               # %.lr.ph56.i
	ori	$a7, $zero, 1
	ld.d	$s3, $sp, 408                   # 8-byte Folded Reload
	move	$a0, $s3
	ld.d	$s0, $sp, 368                   # 8-byte Folded Reload
	move	$a1, $s0
	ld.d	$fp, $sp, 376                   # 8-byte Folded Reload
	move	$a2, $fp
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 328                   # 8-byte Folded Reload
	move	$a5, $s1
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	move	$a6, $s2
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$a0, $s4
	move	$a1, $fp
	move	$a2, $s0
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	move	$a3, $fp
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	move	$a5, $s1
	move	$a6, $s2
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$ra, $fp
	bstrpick.d	$a1, $fp, 31, 0
	ori	$a0, $zero, 8
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a4, 2
	bgeu	$fp, $a0, .LBB0_181
# %bb.89:
	move	$t3, $a1
	move	$a0, $zero
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 312                   # 8-byte Folded Reload
.LBB0_90:                               # %scalar.ph421.preheader
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 176                   # 8-byte Folded Reload
.LBB0_91:                               # %scalar.ph421.preheader
	alsl.d	$a1, $a0, $s3, 2
	sub.d	$a3, $t3, $a0
	alsl.d	$a0, $a0, $s7, 2
	addi.d	$a0, $a0, 4
	.p2align	4, , 16
.LBB0_92:                               # %scalar.ph421
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 4
	bnez	$a3, .LBB0_92
.LBB0_93:                               # %.lr.ph58.i
	alsl.d	$a0, $t7, $t1, 2
	ori	$a3, $zero, 9
	alsl.d	$a1, $t7, $s4, 2
	move	$t0, $a4
	bgeu	$a4, $a3, .LBB0_186
# %bb.94:
	move	$a3, $zero
.LBB0_95:                               # %scalar.ph451.preheader
	alsl.d	$a4, $a3, $s4, 2
	sub.d	$a5, $t7, $a3
	alsl.d	$a3, $a3, $s8, 2
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB0_96:                               # %scalar.ph451
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 4
	bnez	$a5, .LBB0_96
.LBB0_97:                               # %.lr.ph60.i.preheader
	move	$a3, $t3
	move	$a4, $a7
	.p2align	4, , 16
.LBB0_98:                               # %.lr.ph60.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $s5, 0
	fldx.s	$fa2, $a5, $s6
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	fstx.s	$fa0, $a5, $s6
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, -1
	addi.d	$s5, $s5, 4
	bnez	$a3, .LBB0_98
# %bb.99:                               # %.lr.ph62.i
	slli.d	$a2, $t3, 3
	ldx.d	$a2, $a7, $a2
	ori	$a3, $zero, 9
	bgeu	$t0, $a3, .LBB0_191
# %bb.100:
	move	$a3, $zero
.LBB0_101:                              # %scalar.ph480.preheader
	alsl.d	$a2, $a3, $a2, 2
	sub.d	$a4, $t7, $a3
	alsl.d	$a3, $a3, $s8, 2
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB0_102:                              # %scalar.ph480
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB0_102
.LBB0_103:                              # %.lr.ph64.i
	slti	$a3, $t7, 1
	ori	$a2, $zero, 1
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $t7, $a3
	or	$a5, $a3, $a4
	nor	$a3, $a5, $zero
	add.w	$a4, $a3, $t2
	ori	$a6, $zero, 19
	addi.d	$a3, $a0, -4
	bgeu	$a4, $a6, .LBB0_196
.LBB0_104:
	move	$a0, $t7
.LBB0_105:                              # %scalar.ph511.preheader
	addi.d	$a1, $a0, 1
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 2
	alsl.d	$a5, $a0, $t6, 2
	addi.d	$a5, $a5, -4
	alsl.d	$a0, $a0, $s4, 2
	.p2align	4, , 16
.LBB0_106:                              # %scalar.ph511
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a5, 0
	st.w	$ra, $a4, 0
	addi.w	$a1, $a1, -1
	addi.d	$a4, $a4, -4
	addi.d	$a5, $a5, -4
	addi.d	$a0, $a0, -4
	blt	$a2, $a1, .LBB0_106
.LBB0_107:                              # %.lr.ph104.i
	move	$s8, $zero
	move	$a5, $zero
	move	$a6, $zero
	addi.w	$a0, $zero, -2
	lu32i.d	$a0, 0
	add.d	$a0, $t2, $a0
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$s1, $a0, $t1, 2
	slli.d	$a4, $a0, 2
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $t6, 2
	addi.d	$s0, $a1, -8
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 2
	addi.d	$s3, $a1, -8
	ori	$a2, $zero, 1
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	slt	$a1, $a2, $a3
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	alsl.d	$s5, $a0, $t4, 2
	alsl.d	$s7, $a0, $t8, 2
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $a4, 4
	add.d	$s6, $t5, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$fp, $a1, $a0
	addi.d	$a0, $t7, -2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	lu12i.w	$a0, -216695
	ori	$a0, $a0, 1664
	lu32i.d	$a0, 0
	movgr2fr.w	$fs0, $a0
	addi.d	$a0, $t4, 8
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	movgr2fr.w	$fa3, $zero
	move	$a4, $t0
	b	.LBB0_110
	.p2align	4, , 16
.LBB0_108:                              #   in Loop: Header=BB0_110 Depth=1
	move	$a0, $t6
	move	$a1, $a5
	move	$a2, $s8
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
.LBB0_109:                              #   in Loop: Header=BB0_110 Depth=1
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	move	$s8, $a2
	move	$a5, $a1
	move	$a6, $a0
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	bge	$a0, $s2, .LBB0_141
.LBB0_110:                              # %.lr.ph74.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_112 Depth 2
                                        #     Child Loop BB0_126 Depth 2
                                        #     Child Loop BB0_128 Depth 2
	st.d	$a6, $sp, 240                   # 8-byte Folded Spill
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	vst	$vr3, $sp, 256                  # 16-byte Folded Spill
	st.d	$ra, $sp, 288                   # 8-byte Folded Spill
	move	$s2, $t3
	slli.d	$a0, $t3, 2
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	move	$a2, $s4
	st.d	$s4, $sp, 416                   # 8-byte Folded Spill
	addi.d	$s4, $t3, -1
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	fstx.s	$fa0, $a2, $a1
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	move	$a3, $s4
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$ra, $s4
	ld.d	$t7, $sp, 312                   # 8-byte Folded Reload
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	move	$a0, $zero
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 400                   # 8-byte Folded Reload
	fstx.s	$fa0, $a4, $a5
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a1, $a3, $a2, 2
	fldx.s	$fa0, $a2, $a5
	fld.s	$fa1, $s1, 0
	addi.d	$a2, $a1, -4
	alsl.d	$a1, $a3, $a4, 2
	addi.d	$a3, $a1, -8
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a5, $s2, $a1, 2
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a4, $s4, $a1, 2
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$t6, $a1
	bstrpick.d	$a1, $a1, 31, 0
	xor	$a1, $s4, $a1
	sltui	$a6, $a1, 1
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	bstrpick.d	$a1, $s4, 31, 0
	xor	$a7, $s2, $a1
	slli.d	$t0, $ra, 3
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ldx.d	$t1, $t1, $t0
	ldx.d	$t0, $t7, $t0
	sltui	$a7, $a7, 1
	or	$a6, $a6, $a7
	ld.d	$t2, $sp, 168                   # 8-byte Folded Reload
	add.d	$a7, $t1, $t2
	add.d	$t0, $t0, $t2
	ld.d	$t8, $sp, 176                   # 8-byte Folded Reload
	move	$t1, $t8
	move	$t2, $t8
	b	.LBB0_112
	.p2align	4, , 16
.LBB0_111:                              #   in Loop: Header=BB0_112 Depth=2
	fldx.s	$fa2, $t0, $a0
	fadd.s	$fa2, $fa1, $fa2
	fstx.s	$fa2, $t0, $a0
	fldx.s	$fa2, $a3, $a0
	fldx.s	$fa3, $a7, $a0
	movcf2gr	$t3, $fcc0
	fadd.s	$fa2, $fa2, $fa3
	fstx.s	$fa2, $a7, $a0
	fldx.s	$fa2, $a3, $a0
	masknez	$t4, $t1, $t3
	maskeqz	$t2, $t2, $t3
	or	$t2, $t2, $t4
	fadd.s	$fa1, $fa1, $fa2
	fstx.s	$fa1, $a3, $a0
	addi.w	$t1, $t1, -1
	addi.d	$a0, $a0, -4
	blez	$t1, .LBB0_122
.LBB0_112:                              #   Parent Loop BB0_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $fp, $a0
	fldx.s	$fa2, $a2, $a0
	fadd.s	$fa1, $fa0, $fa1
	fldx.s	$fa4, $s0, $a0
	fld.s	$fa5, $a5, 0
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fldx.s	$fa3, $s1, $a0
	fadd.s	$fa5, $fa4, $fa5
	fcmp.cule.s	$fcc1, $fa5, $fa1
	bcnez	$fcc1, .LBB0_114
# %bb.113:                              #   in Loop: Header=BB0_112 Depth=2
	ldx.w	$t3, $s3, $a0
	fmov.s	$fa1, $fa5
	move	$t4, $t1
	fld.s	$fa5, $a4, 0
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa4
	bceqz	$fcc0, .LBB0_115
	b	.LBB0_116
	.p2align	4, , 16
.LBB0_114:                              #   in Loop: Header=BB0_112 Depth=2
	movcf2gr	$t3, $fcc0
	masknez	$t4, $t1, $t3
	maskeqz	$t3, $t2, $t3
	or	$t4, $t3, $t4
	move	$t3, $s2
	fld.s	$fa5, $a4, 0
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa4
	bcnez	$fcc0, .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_112 Depth=2
	fstx.s	$fa5, $s0, $a0
	stx.w	$s2, $s3, $a0
.LBB0_116:                              #   in Loop: Header=BB0_112 Depth=2
	beqz	$a6, .LBB0_119
# %bb.117:                              #   in Loop: Header=BB0_112 Depth=2
	ld.d	$t5, $sp, 424                   # 8-byte Folded Reload
	stx.w	$t3, $t5, $a0
	ld.d	$t3, $sp, 432                   # 8-byte Folded Reload
	stx.w	$t4, $t3, $a0
	beq	$ra, $a1, .LBB0_120
.LBB0_118:                              #   in Loop: Header=BB0_112 Depth=2
	fadd.s	$fa2, $fa2, $fa3
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s2, $a1, .LBB0_111
	b	.LBB0_121
	.p2align	4, , 16
.LBB0_119:                              #   in Loop: Header=BB0_112 Depth=2
	bne	$ra, $a1, .LBB0_118
.LBB0_120:                              #   in Loop: Header=BB0_112 Depth=2
	fldx.s	$fa4, $s5, $a0
	fadd.s	$fa4, $fa1, $fa4
	fstx.s	$fa4, $s5, $a0
	fldx.s	$fa4, $s0, $a0
	fldx.s	$fa5, $s6, $a0
	fadd.s	$fa4, $fa4, $fa5
	fstx.s	$fa4, $s6, $a0
	fadd.s	$fa2, $fa2, $fa3
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s2, $a1, .LBB0_111
.LBB0_121:                              #   in Loop: Header=BB0_112 Depth=2
	fldx.s	$fa2, $s7, $a0
	fadd.s	$fa2, $fa0, $fa2
	fstx.s	$fa2, $s7, $a0
	b	.LBB0_111
	.p2align	4, , 16
.LBB0_122:                              # %._crit_edge75.i
                                        #   in Loop: Header=BB0_110 Depth=1
	fldx.s	$fa0, $a2, $a0
	fld.s	$fa1, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fs0, $fa0
	fsel	$fs0, $fs0, $fa0, $fcc0
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	bne	$ra, $a1, .LBB0_124
# %bb.123:                              #   in Loop: Header=BB0_110 Depth=1
	fld.s	$fa0, $t0, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $t0, 0
.LBB0_124:                              #   in Loop: Header=BB0_110 Depth=1
	move	$t3, $ra
	addi.w	$a0, $s4, -1
	ld.d	$a6, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 344                   # 8-byte Folded Reload
	vld	$vr3, $sp, 256                  # 16-byte Folded Reload
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	bne	$s2, $a1, .LBB0_136
# %bb.125:                              # %.lr.ph82.preheader.i
                                        #   in Loop: Header=BB0_110 Depth=1
	fld.s	$fa3, $a7, 4
	move	$s8, $zero
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_126:                              # %.lr.ph82.i
                                        #   Parent Loop BB0_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a2, 0
	fcmp.clt.s	$fcc1, $fa3, $fa0
	fsel	$fa3, $fa3, $fa0, $fcc1
	movcf2gr	$a4, $fcc1
	masknez	$a5, $s8, $a4
	maskeqz	$a4, $a1, $a4
	or	$s8, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB0_126
# %bb.127:                              # %.lr.ph88.i.preheader
                                        #   in Loop: Header=BB0_110 Depth=1
	move	$a1, $zero
	move	$a2, $t0
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_128:                              # %.lr.ph88.i
                                        #   Parent Loop BB0_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a2, 0
	fcmp.clt.s	$fcc1, $fa3, $fa0
	fsel	$fa3, $fa3, $fa0, $fcc1
	movcf2gr	$a4, $fcc1
	masknez	$a5, $s8, $a4
	maskeqz	$a4, $a1, $a4
	or	$s8, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB0_128
# %bb.129:                              # %._crit_edge89.i
                                        #   in Loop: Header=BB0_110 Depth=1
	slli.d	$a1, $s8, 2
	fldx.s	$fa0, $a7, $a1
	addi.w	$a5, $s8, -1
	blez	$s8, .LBB0_134
# %bb.130:                              #   in Loop: Header=BB0_110 Depth=1
	slli.d	$a2, $a5, 2
	fldx.s	$fa1, $a6, $a2
	fcmp.cule.s	$fcc1, $fa1, $fa0
	move	$a2, $a5
	bcnez	$fcc1, .LBB0_132
# %bb.131:                              #   in Loop: Header=BB0_110 Depth=1
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a1
	fmov.s	$fa0, $fa1
.LBB0_132:                              #   in Loop: Header=BB0_110 Depth=1
	fldx.s	$fa1, $t0, $a1
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bcnez	$fcc1, .LBB0_135
.LBB0_133:                              #   in Loop: Header=BB0_110 Depth=1
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$t6, $a2, $a1
	b	.LBB0_136
.LBB0_134:                              #   in Loop: Header=BB0_110 Depth=1
	move	$a2, $a5
	fldx.s	$fa1, $t0, $a1
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bceqz	$fcc1, .LBB0_133
.LBB0_135:                              #   in Loop: Header=BB0_110 Depth=1
	move	$t6, $a0
	move	$a5, $a2
.LBB0_136:                              #   in Loop: Header=BB0_110 Depth=1
	movcf2gr	$a1, $fcc0
	masknez	$a2, $t1, $a1
	maskeqz	$a1, $s2, $a1
	bstrpick.d	$a3, $t6, 31, 0
	or	$ra, $a1, $a2
	bne	$t3, $a3, .LBB0_108
# %bb.137:                              #   in Loop: Header=BB0_110 Depth=1
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	beqz	$s8, .LBB0_140
# %bb.138:                              #   in Loop: Header=BB0_110 Depth=1
	move	$a1, $t8
	move	$a2, $a4
	bge	$s8, $a4, .LBB0_109
# %bb.139:                              #   in Loop: Header=BB0_110 Depth=1
	slli.d	$a0, $a5, 2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$s4, $a1, $a0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	move	$a0, $t6
	move	$a1, $a5
	b	.LBB0_109
.LBB0_140:                              #   in Loop: Header=BB0_110 Depth=1
	move	$a1, $zero
	addi.w	$a0, $ra, -1
	ori	$a2, $zero, 1
	move	$s4, $ra
	b	.LBB0_109
.LBB0_141:                              # %.preheader2.preheader.i
	move	$t2, $zero
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 30, 3
	slli.d	$a2, $a2, 3
	vreplvei.w	$vr0, $vr3, 0
	ori	$a3, $zero, 8
	ori	$a4, $zero, 32
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 304                   # 8-byte Folded Reload
	b	.LBB0_143
	.p2align	4, , 16
.LBB0_142:                              # %._crit_edge109.i
                                        #   in Loop: Header=BB0_143 Depth=1
	addi.d	$t2, $t2, 1
	beq	$t2, $a1, .LBB0_150
.LBB0_143:                              # %.preheader2.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_146 Depth 2
                                        #     Child Loop BB0_149 Depth 2
	slli.d	$a6, $t2, 3
	ldx.d	$a5, $t7, $a6
	ldx.d	$a6, $t3, $a6
	move	$t0, $zero
	bltu	$t4, $a3, .LBB0_148
# %bb.144:                              # %.preheader2.i
                                        #   in Loop: Header=BB0_143 Depth=1
	sub.d	$a7, $a6, $a5
	bltu	$a7, $a4, .LBB0_148
# %bb.145:                              # %vector.body539.preheader
                                        #   in Loop: Header=BB0_143 Depth=1
	addi.d	$a7, $a6, 16
	addi.d	$t0, $a5, 16
	move	$t1, $a2
	.p2align	4, , 16
.LBB0_146:                              # %vector.body539
                                        #   Parent Loop BB0_143 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $t0, -16
	vld	$vr2, $t0, 0
	vfdiv.s	$vr1, $vr1, $vr0
	vfdiv.s	$vr2, $vr2, $vr0
	vst	$vr1, $a7, -16
	vst	$vr2, $a7, 0
	addi.d	$t1, $t1, -8
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB0_146
# %bb.147:                              # %middle.block544
                                        #   in Loop: Header=BB0_143 Depth=1
	move	$t0, $a2
	beq	$t4, $a2, .LBB0_142
.LBB0_148:                              # %scalar.ph532.preheader
                                        #   in Loop: Header=BB0_143 Depth=1
	sub.d	$a7, $t4, $t0
	alsl.d	$a6, $t0, $a6, 2
	alsl.d	$a5, $t0, $a5, 2
	.p2align	4, , 16
.LBB0_149:                              # %scalar.ph532
                                        #   Parent Loop BB0_143 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a5, 0
	fdiv.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $a6, 0
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 4
	bnez	$a7, .LBB0_149
	b	.LBB0_142
.LBB0_150:                              # %._crit_edge112.i
	move	$fp, $t7
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
.LBB0_151:                              # %MSalignmm_rec.exit
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	blez	$s6, .LBB0_155
# %bb.152:                              # %.lr.ph199
	ld.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	addi.w	$s1, $a0, 0
	move	$s2, $s6
	.p2align	4, , 16
.LBB0_153:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB0_205
# %bb.154:                              #   in Loop: Header=BB0_153 Depth=1
	addi.w	$s0, $s0, 1
	addi.d	$s2, $s2, -1
	addi.d	$s5, $s5, 8
	bnez	$s2, .LBB0_153
.LBB0_155:                              # %.preheader
	blez	$s7, .LBB0_159
# %bb.156:                              # %.lr.ph201
	move	$s0, $zero
	addi.w	$fp, $fp, 0
	move	$s1, $s7
	.p2align	4, , 16
.LBB0_157:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB0_206
# %bb.158:                              #   in Loop: Header=BB0_157 Depth=1
	addi.w	$s0, $s0, 1
	addi.d	$s1, $s1, -1
	addi.d	$s8, $s8, 8
	bnez	$s1, .LBB0_157
.LBB0_159:                              # %._crit_edge202
	movgr2fr.w	$fa0, $zero
	fld.d	$fs0, $sp, 448                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 520                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 528                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 536                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 544
	ret
.LBB0_160:                              # %vector.ph
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 2
	slli.d	$a1, $a1, 2
	vreplvei.d	$vr1, $vr0, 0
	lu52i.d	$a2, $zero, 1023
	vreplgr2vr.d	$vr2, $a2
	lu52i.d	$a2, $zero, 1022
	vreplgr2vr.d	$vr3, $a2
	move	$a2, $a3
	move	$a3, $a5
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_161:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a2, 0
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vreplvei.w	$vr5, $vr4, 3
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr4, $vr4, 2
	fcvt.d.s	$fa4, $fa4
	vextrins.d	$vr4, $vr5, 16
	vfsub.d	$vr4, $vr2, $vr4
	vfsub.d	$vr5, $vr2, $vr6
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr4, $vr4, $vr1
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 1
	fcvt.s.d	$fa6, $fa6
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr6, 16
	vreplvei.d	$vr6, $vr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 32
	vreplvei.d	$vr4, $vr4, 1
	vld	$vr6, $a3, 0
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 48
	vst	$vr5, $a2, 0
	vreplvei.w	$vr4, $vr6, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr5, $vr6, 0
	fcvt.d.s	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vreplvei.w	$vr4, $vr6, 3
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr6, 2
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr4, 16
	vfsub.d	$vr4, $vr2, $vr6
	vfsub.d	$vr5, $vr2, $vr5
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr4, $vr4, $vr1
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 1
	fcvt.s.d	$fa6, $fa6
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr6, 16
	vreplvei.d	$vr6, $vr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 32
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 48
	vst	$vr5, $a3, 0
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 16
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB0_161
# %bb.162:                              # %middle.block
	beq	$a0, $a1, .LBB0_18
	b	.LBB0_16
.LBB0_163:                              # %vector.ph266
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 2
	slli.d	$a1, $a1, 2
	vreplvei.d	$vr1, $vr0, 0
	lu52i.d	$a2, $zero, 1023
	vreplgr2vr.d	$vr2, $a2
	lu52i.d	$a2, $zero, 1022
	vreplgr2vr.d	$vr3, $a2
	move	$a2, $a3
	move	$a3, $a6
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_164:                              # %vector.body271
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a2, 0
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vreplvei.w	$vr5, $vr4, 3
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr4, $vr4, 2
	fcvt.d.s	$fa4, $fa4
	vextrins.d	$vr4, $vr5, 16
	vfsub.d	$vr4, $vr2, $vr4
	vfsub.d	$vr5, $vr2, $vr6
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr4, $vr4, $vr1
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 1
	fcvt.s.d	$fa6, $fa6
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr6, 16
	vreplvei.d	$vr6, $vr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 32
	vreplvei.d	$vr4, $vr4, 1
	vld	$vr6, $a3, 0
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 48
	vst	$vr5, $a2, 0
	vreplvei.w	$vr4, $vr6, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr5, $vr6, 0
	fcvt.d.s	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vreplvei.w	$vr4, $vr6, 3
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr6, 2
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr4, 16
	vfsub.d	$vr4, $vr2, $vr6
	vfsub.d	$vr5, $vr2, $vr5
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr4, $vr4, $vr1
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 1
	fcvt.s.d	$fa6, $fa6
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr6, 16
	vreplvei.d	$vr6, $vr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 32
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 48
	vst	$vr5, $a3, 0
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 16
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB0_164
# %bb.165:                              # %middle.block276
	beq	$a0, $a1, .LBB0_25
	b	.LBB0_23
.LBB0_166:                              # %vector.memcheck308
	addi.d	$a0, $s6, 4
	alsl.d	$a1, $s0, $s6, 2
	sltu	$a2, $a0, $s5
	sltu	$a3, $s7, $a1
	and	$a2, $a2, $a3
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_46
# %bb.167:                              # %vector.memcheck308
	alsl.d	$a2, $s0, $a5, 2
	addi.d	$a2, $a2, -4
	sltu	$a0, $a0, $a2
	sltu	$a1, $a5, $a1
	and	$a0, $a0, $a1
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 112                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_47
# %bb.168:                              # %vector.ph321
	addi.d	$a0, $s0, -1
	move	$a1, $a0
	bstrins.d	$a1, $zero, 2, 0
	ori	$a2, $zero, 1
	move	$fp, $a0
	vldrepl.w	$vr0, $s7, 0
	bstrins.d	$fp, $a2, 2, 0
	addi.d	$a2, $a5, 16
	addi.d	$a3, $s6, 20
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_169:                              # %vector.body324
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, -16
	vld	$vr2, $a2, 0
	vld	$vr3, $a3, -16
	vld	$vr4, $a3, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a2, $a2, 32
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB0_169
# %bb.170:                              # %middle.block333
	bne	$a0, $a1, .LBB0_47
	b	.LBB0_49
.LBB0_171:                              # %vector.memcheck336
	addi.d	$a3, $s4, 4
	sltu	$a4, $a3, $a4
	sltu	$a5, $s8, $a1
	and	$a4, $a4, $a5
	bnez	$a4, .LBB0_50
# %bb.172:                              # %vector.memcheck336
	alsl.d	$a4, $a0, $a7, 2
	addi.d	$a4, $a4, -4
	sltu	$a3, $a3, $a4
	sltu	$a4, $a7, $a1
	and	$a3, $a3, $a4
	bnez	$a3, .LBB0_50
# %bb.173:                              # %vector.ph350
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	move	$a3, $a2
	bstrins.d	$a3, $zero, 2, 0
	ori	$a4, $zero, 1
	vldrepl.w	$vr0, $s8, 0
	bstrins.d	$a2, $a4, 2, 0
	addi.d	$a4, $a7, 16
	addi.d	$a5, $s4, 20
	move	$a6, $a3
	.p2align	4, , 16
.LBB0_174:                              # %vector.body353
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vld	$vr3, $a5, -16
	vld	$vr4, $a5, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a5, -16
	vst	$vr2, $a5, 0
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB0_174
# %bb.175:                              # %middle.block363
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	bne	$a4, $a3, .LBB0_50
	b	.LBB0_52
.LBB0_176:                              # %vector.memcheck382
	alsl.d	$a3, $a0, $t0, 2
	addi.d	$a1, $a1, -4
	sltu	$a1, $a5, $a1
	sltu	$a4, $s4, $a3
	and	$a1, $a1, $a4
	bnez	$a1, .LBB0_62
# %bb.177:                              # %vector.memcheck382
	addi.d	$a1, $s7, 8
	sltu	$a1, $a5, $a1
	sltu	$a3, $s5, $a3
	and	$a1, $a1, $a3
	bnez	$a1, .LBB0_62
# %bb.178:                              # %vector.ph396
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	move	$a1, $a2
	bstrins.d	$a1, $zero, 2, 0
	ori	$a3, $zero, 1
	bstrins.d	$a2, $a3, 2, 0
	vldrepl.w	$vr0, $s5, 0
	addi.d	$a3, $s4, 16
	addi.d	$a4, $t0, 20
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 20
	vrepli.b	$vr1, 0
	move	$a6, $a1
	.p2align	4, , 16
.LBB0_179:                              # %vector.body399
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vfadd.s	$vr2, $vr2, $vr0
	vfadd.s	$vr3, $vr3, $vr0
	vst	$vr2, $a4, -16
	vst	$vr3, $a4, 0
	vst	$vr1, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB0_179
# %bb.180:                              # %middle.block407
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	bne	$a3, $a1, .LBB0_62
	b	.LBB0_64
.LBB0_181:                              # %vector.memcheck410
	slli.d	$a0, $a1, 2
	move	$t3, $a1
	alsl.d	$a1, $a1, $s3, 2
	addi.d	$a3, $a0, 4
	add.d	$a0, $a4, $a3
	sltu	$a0, $s3, $a0
	sltu	$a4, $a2, $a1
	and	$a4, $a0, $a4
	move	$a0, $zero
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 312                   # 8-byte Folded Reload
	bnez	$a4, .LBB0_201
# %bb.182:                              # %vector.memcheck410
	add.d	$a3, $s7, $a3
	sltu	$a3, $s3, $a3
	sltu	$a1, $s5, $a1
	and	$a1, $a3, $a1
	ld.d	$t8, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 176                   # 8-byte Folded Reload
	bnez	$a1, .LBB0_91
# %bb.183:                              # %vector.ph423
	move	$a5, $a4
	bstrpick.d	$a0, $t3, 30, 3
	vldrepl.w	$vr0, $a2, 0
	slli.d	$a0, $a0, 3
	addi.d	$a1, $s7, 20
	addi.d	$a3, $s3, 16
	move	$a4, $a0
	.p2align	4, , 16
.LBB0_184:                              # %vector.body426
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a1, -16
	vld	$vr2, $a1, 0
	vld	$vr3, $a3, -16
	vld	$vr4, $a3, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a1, $a1, 32
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB0_184
# %bb.185:                              # %middle.block435
	move	$a4, $a5
	bne	$a0, $t3, .LBB0_91
	b	.LBB0_93
.LBB0_186:                              # %vector.memcheck438
	addi.d	$a4, $s6, 4
	add.d	$a3, $t1, $a4
	sltu	$a3, $s4, $a3
	sltu	$a5, $a0, $a1
	and	$a5, $a3, $a5
	move	$a3, $zero
	bnez	$a5, .LBB0_95
# %bb.187:                              # %vector.memcheck438
	addi.d	$a5, $s8, 4
	add.d	$a4, $s8, $a4
	sltu	$a4, $s4, $a4
	sltu	$a5, $a5, $a1
	and	$a4, $a4, $a5
	bnez	$a4, .LBB0_95
# %bb.188:                              # %vector.ph453
	bstrpick.d	$a3, $t7, 30, 3
	vldrepl.w	$vr0, $a0, 0
	slli.d	$a3, $a3, 3
	addi.d	$a4, $s8, 20
	addi.d	$a5, $s4, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB0_189:                              # %vector.body456
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vld	$vr3, $a5, -16
	vld	$vr4, $a5, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a5, -16
	vst	$vr2, $a5, 0
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB0_189
# %bb.190:                              # %middle.block465
	bne	$a3, $t7, .LBB0_95
	b	.LBB0_97
.LBB0_191:                              # %vector.memcheck468
	alsl.d	$a4, $t7, $a2, 2
	addi.d	$a5, $s6, 4
	add.d	$a3, $t1, $a5
	sltu	$a3, $a2, $a3
	sltu	$a6, $a0, $a4
	and	$a6, $a3, $a6
	move	$a3, $zero
	bnez	$a6, .LBB0_101
# %bb.192:                              # %vector.memcheck468
	addi.d	$a6, $s8, 4
	add.d	$a5, $s8, $a5
	sltu	$a5, $a2, $a5
	sltu	$a4, $a6, $a4
	and	$a4, $a5, $a4
	bnez	$a4, .LBB0_101
# %bb.193:                              # %vector.ph482
	bstrpick.d	$a3, $t7, 30, 3
	vldrepl.w	$vr0, $a0, 0
	slli.d	$a3, $a3, 3
	addi.d	$a4, $s8, 20
	addi.d	$a5, $a2, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB0_194:                              # %vector.body485
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vld	$vr3, $a5, -16
	vld	$vr4, $a5, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr1, $vr3
	vfadd.s	$vr2, $vr2, $vr4
	vst	$vr1, $a5, -16
	vst	$vr2, $a5, 0
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB0_194
# %bb.195:                              # %middle.block494
	bne	$a3, $t7, .LBB0_101
	b	.LBB0_103
.LBB0_196:                              # %vector.memcheck497
	sub.d	$a5, $a5, $t2
	nor	$a5, $a5, $zero
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	sub.d	$a6, $s6, $a5
	add.d	$a5, $a6, $t6
	addi.d	$a5, $a5, -4
	add.d	$a6, $s4, $a6
	addi.d	$a1, $a1, 4
	sltu	$a1, $a5, $a1
	ld.d	$fp, $sp, 424                   # 8-byte Folded Reload
	sltu	$a6, $a6, $fp
	and	$a1, $a1, $a6
	bnez	$a1, .LBB0_104
# %bb.197:                              # %vector.memcheck497
	sltu	$a0, $a5, $a0
	sltu	$a1, $a3, $fp
	and	$a1, $a0, $a1
	move	$a0, $t7
	bnez	$a1, .LBB0_105
# %bb.198:                              # %vector.ph513
	bstrpick.d	$a0, $a4, 31, 0
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 32, 2
	slli.d	$a4, $a0, 2
	sub.d	$a0, $t7, $a4
	vreplgr2vr.w	$vr0, $ra
	vldrepl.w	$vr1, $a3, 0
	addi.d	$a7, $s6, -12
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a7
	addi.d	$a6, $fp, -16
	add.d	$a7, $s4, $a7
	move	$t0, $a4
	.p2align	4, , 16
.LBB0_199:                              # %vector.body518
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, 0
	vfadd.s	$vr2, $vr2, $vr1
	vst	$vr2, $a6, 0
	vst	$vr0, $a5, 0
	addi.d	$t0, $t0, -4
	addi.d	$a5, $a5, -16
	addi.d	$a6, $a6, -16
	addi.d	$a7, $a7, -16
	bnez	$t0, .LBB0_199
# %bb.200:                              # %middle.block527
	ld.d	$t0, $sp, 360                   # 8-byte Folded Reload
	bne	$a1, $a4, .LBB0_105
	b	.LBB0_107
.LBB0_201:
	ld.d	$t8, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	b	.LBB0_90
.LBB0_202:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $fp
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	b	.LBB0_204
.LBB0_203:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s5
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
.LBB0_204:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_205:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s0
	move	$a3, $s6
	b	.LBB0_207
.LBB0_206:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s0
	move	$a3, $s7
.LBB0_207:
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	Lalignmm_hmout, .Lfunc_end0-Lalignmm_hmout
                                        # -- End function
	.globl	Lalign2m2m_hmout                # -- Begin function Lalign2m2m_hmout
	.p2align	5
	.type	Lalign2m2m_hmout,@function
Lalign2m2m_hmout:                       # @Lalign2m2m_hmout
# %bb.0:
	addi.d	$sp, $sp, -544
	st.d	$ra, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 528                   # 8-byte Folded Spill
	st.d	$s0, $sp, 520                   # 8-byte Folded Spill
	st.d	$s1, $sp, 512                   # 8-byte Folded Spill
	st.d	$s2, $sp, 504                   # 8-byte Folded Spill
	st.d	$s3, $sp, 496                   # 8-byte Folded Spill
	st.d	$s4, $sp, 488                   # 8-byte Folded Spill
	st.d	$s5, $sp, 480                   # 8-byte Folded Spill
	st.d	$s6, $sp, 472                   # 8-byte Folded Spill
	st.d	$s7, $sp, 464                   # 8-byte Folded Spill
	st.d	$s8, $sp, 456                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 448                  # 8-byte Folded Spill
	ld.d	$s0, $sp, 552
	ld.d	$s4, $sp, 544
	move	$s1, $a7
	move	$s3, $a6
	st.d	$a5, $sp, 440                   # 8-byte Folded Spill
	move	$s6, $a4
	st.d	$a3, $sp, 432                   # 8-byte Folded Spill
	move	$s7, $a2
	move	$fp, $a1
	move	$s8, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	ld.w	$s2, $a0, 0
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $fp, 0
	move	$s8, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	add.d	$a0, $s8, $a0
	addi.w	$fp, $a0, 200
	move	$a0, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.w	$s0, $s8, 102
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 120                   # 8-byte Folded Spill
	addi.w	$fp, $s5, 102
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ori	$a1, $zero, 39
	st.d	$s0, $sp, 400                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ori	$a1, $zero, 39
	st.d	$fp, $sp, 424                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	st.d	$s8, $sp, 160                   # 8-byte Folded Spill
	addi.w	$s5, $s8, 0
	blez	$s4, .LBB1_4
# %bb.1:                                # %.lr.ph
	move	$fp, $zero
	move	$s8, $s4
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB1_202
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	addi.w	$fp, $fp, 1
	addi.d	$s8, $s8, -1
	addi.d	$s0, $s0, 8
	bnez	$s8, .LBB1_2
.LBB1_4:                                # %.preheader188
	st.d	$s4, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	addi.w	$fp, $a0, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	blez	$a0, .LBB1_8
# %bb.5:                                # %.lr.ph195
	move	$s8, $zero
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_203
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=1
	addi.w	$s8, $s8, 1
	addi.d	$s0, $s0, -1
	addi.d	$s4, $s4, 8
	bnez	$s0, .LBB1_6
.LBB1_8:                                # %._crit_edge
	ld.d	$s8, $sp, 568
	movgr2fr.w	$fa0, $s2
	ffint.s.w	$fs0, $fa0
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $s7
	move	$a2, $s6
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	move	$a4, $s3
	move	$a5, $s5
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	move	$a6, $s4
	pcaddu18i	$ra, %call36(cpmx_ribosum)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $s7
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	move	$a4, $s1
	move	$a5, $fp
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	move	$a6, $s6
	pcaddu18i	$ra, %call36(cpmx_ribosum)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB1_10
# %bb.9:
	ld.d	$s4, $sp, 592
	move	$s2, $s5
	ld.d	$s5, $sp, 576
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $s3
	move	$a4, $s2
	move	$a5, $s8
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s1
	move	$a4, $fp
	move	$a5, $s5
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 384                   # 8-byte Folded Reload
	move	$a0, $s8
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $s3
	move	$a4, $s2
	move	$a5, $s4
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s1
	move	$a4, $fp
	move	$a5, $s4
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	b	.LBB1_11
.LBB1_10:
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	move	$a1, $s4
	move	$a2, $s0
	move	$a3, $s3
	move	$a4, $s5
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 384                   # 8-byte Folded Reload
	move	$a0, $s8
	move	$a1, $s4
	move	$a2, $s0
	move	$a3, $s3
	move	$a4, $s5
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	move	$s2, $s5
.LBB1_11:
	move	$s5, $s0
	fcvt.d.s	$fa0, $fs0
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	st.d	$s2, $sp, 416                   # 8-byte Folded Spill
	blez	$s2, .LBB1_18
# %bb.12:                               # %.lr.ph198
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	ori	$a1, $zero, 4
	bltu	$a0, $a1, .LBB1_15
# %bb.13:                               # %vector.memcheck
	alsl.d	$a1, $a0, $s8, 2
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	bgeu	$a3, $a1, .LBB1_160
# %bb.14:                               # %vector.memcheck
	alsl.d	$a1, $a0, $a3, 2
	bgeu	$s8, $a1, .LBB1_160
.LBB1_15:
	move	$a1, $zero
.LBB1_16:                               # %scalar.ph.preheader
	alsl.d	$a2, $a1, $s8, 2
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	sub.d	$a0, $a0, $a1
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB1_17:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a3, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a3, 0
	fld.s	$fa3, $a2, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB1_17
.LBB1_18:                               # %.preheader187
	blez	$fp, .LBB1_25
# %bb.19:                               # %.lr.ph200
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	ori	$a1, $zero, 4
	bltu	$a0, $a1, .LBB1_22
# %bb.20:                               # %vector.memcheck262
	alsl.d	$a1, $a0, $a5, 2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	bgeu	$a3, $a1, .LBB1_163
# %bb.21:                               # %vector.memcheck262
	alsl.d	$a1, $a0, $a3, 2
	bgeu	$a5, $a1, .LBB1_163
.LBB1_22:
	move	$a1, $zero
.LBB1_23:                               # %scalar.ph268.preheader
	alsl.d	$a2, $a1, $a5, 2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	sub.d	$a0, $a0, $a1
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB1_24:                               # %scalar.ph268
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a3, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a3, 0
	fld.s	$fa3, $a2, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB1_24
.LBB1_25:                               # %._crit_edge201
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	pcalau12i	$a0, %pc_hi20(reccycle)
	ld.w	$a1, $a0, %pc_lo12(reccycle)
	st.d	$s8, $a2, 8
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.d	$a3, $a2, 16
	st.d	$a5, $a2, 24
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(reccycle)
	blez	$fp, .LBB1_78
# %bb.26:
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	blez	$s4, .LBB1_34
# %bb.27:                               # %.lr.ph.preheader.i
	ori	$a2, $zero, 4
	move	$a1, $zero
	bltu	$s4, $a2, .LBB1_32
# %bb.28:                               # %.lr.ph.preheader.i
	sub.d	$a2, $fp, $s3
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB1_32
# %bb.29:                               # %vector.ph286
	bstrpick.d	$a1, $s4, 30, 2
	slli.d	$a1, $a1, 2
	addi.d	$a2, $fp, 16
	addi.d	$a3, $s3, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_30:                               # %vector.body289
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a4, $a4, -4
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB1_30
# %bb.31:                               # %middle.block294
	beq	$a1, $s4, .LBB1_34
.LBB1_32:                               # %.lr.ph.i.preheader
	sub.d	$a2, $s4, $a1
	alsl.d	$a3, $a1, $fp, 3
	alsl.d	$a1, $a1, $s3, 3
	.p2align	4, , 16
.LBB1_33:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB1_33
.LBB1_34:                               # %.preheader13.i
	blez	$s6, .LBB1_42
# %bb.35:                               # %.lr.ph17.preheader.i
	ori	$a2, $zero, 4
	move	$a1, $zero
	bltu	$s6, $a2, .LBB1_40
# %bb.36:                               # %.lr.ph17.preheader.i
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	sub.d	$a2, $a0, $a2
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB1_40
# %bb.37:                               # %vector.ph301
	bstrpick.d	$a1, $s6, 30, 2
	slli.d	$a1, $a1, 2
	addi.d	$a2, $a0, 16
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_38:                               # %vector.body304
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a4, $a4, -4
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB1_38
# %bb.39:                               # %middle.block309
	beq	$a1, $s6, .LBB1_42
.LBB1_40:                               # %.lr.ph17.i.preheader
	sub.d	$a2, $s6, $a1
	alsl.d	$a3, $a1, $a0, 3
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a4, 3
	.p2align	4, , 16
.LBB1_41:                               # %.lr.ph17.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB1_41
.LBB1_42:                               # %._crit_edge.i
	ori	$a1, $zero, 10
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB1_87
# %bb.43:                               # %._crit_edge.i
	addi.w	$a1, $a5, 0
	ori	$a2, $zero, 9
	bgeu	$a2, $a1, .LBB1_87
# %bb.44:                               # %.lr.ph20.preheader.i
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.w	$s3, $a0, 100
	addi.w	$s7, $a5, 100
	ld.d	$fp, $sp, 424                   # 8-byte Folded Reload
	move	$a0, $fp
	move	$s4, $a1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s0, $sp, 400                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	sltu	$a0, $s7, $s3
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	addi.w	$s2, $a0, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 26
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ori	$a1, $zero, 26
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	move	$a0, $s3
	move	$a1, $s7
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	move	$a0, $s3
	move	$a1, $s7
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ori	$a7, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s1
	ld.d	$s2, $sp, 368                   # 8-byte Folded Reload
	move	$a1, $s2
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $zero
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	move	$a5, $s5
	move	$a6, $s8
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $zero
	st.d	$s4, $sp, 360                   # 8-byte Folded Spill
	move	$a4, $s4
	st.d	$s5, $sp, 328                   # 8-byte Folded Spill
	move	$a5, $s5
	st.d	$s8, $sp, 320                   # 8-byte Folded Spill
	move	$a6, $s8
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$s0, $a2, $a1
	ld.d	$s7, $sp, 232                   # 8-byte Folded Reload
	addi.d	$s5, $s7, 4
	ori	$a1, $zero, 9
	bge	$a0, $a1, .LBB1_166
# %bb.45:
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
.LBB1_46:
	ld.d	$t0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 312                   # 8-byte Folded Reload
.LBB1_47:                               # %.lr.ph20.i.preheader
	sub.d	$a0, $s0, $fp
	alsl.d	$a1, $fp, $s1, 2
	alsl.d	$a2, $fp, $a5, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB1_48:                               # %.lr.ph20.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s7, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB1_48
.LBB1_49:                               # %.lr.ph22.preheader.i
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.w	$t4, $a0, -1
	addi.w	$t3, $t0, -1
	addi.w	$t5, $t0, 1
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t5, $a1
	or	$a0, $a1, $a0
	addi.d	$a1, $a0, -1
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	ori	$a3, $zero, 9
	alsl.d	$a1, $a0, $s6, 2
	addi.d	$a4, $s8, 4
	st.d	$a4, $sp, 256                   # 8-byte Folded Spill
	bge	$t5, $a3, .LBB1_171
.LBB1_50:                               # %.lr.ph22.i.preheader
	sub.d	$a3, $a0, $a2
	alsl.d	$a4, $a2, $s6, 2
	alsl.d	$a2, $a2, $a7, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB1_51:                               # %.lr.ph22.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s8, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB1_51
.LBB1_52:                               # %.lr.ph27.preheader.i
	fld.s	$fa0, $s1, 0
	ld.d	$a2, $t2, 0
	ld.d	$a3, $sp, 600
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	fst.s	$fa0, $a2, 0
	slli.d	$a3, $s0, 2
	ori	$a4, $zero, 4
	ori	$a5, $zero, 8
	.p2align	4, , 16
.LBB1_53:                               # %.lr.ph27.i
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s1, $a4
	ldx.d	$a6, $t2, $a5
	fst.s	$fa0, $a6, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 8
	bne	$a3, $a4, .LBB1_53
# %bb.54:                               # %.lr.ph29.i.preheader
	ori	$a4, $zero, 9
	ori	$a3, $zero, 1
	blt	$t5, $a4, .LBB1_59
# %bb.55:                               # %.lr.ph29.i.preheader
	sub.d	$a4, $a2, $s6
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB1_59
# %bb.56:                               # %vector.ph374
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	move	$a4, $a3
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	bstrins.d	$a3, $a5, 2, 0
	addi.d	$a5, $s6, 20
	addi.d	$a6, $a2, 20
	move	$a7, $a4
	.p2align	4, , 16
.LBB1_57:                               # %vector.body377
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$a5, $a5, 32
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB1_57
# %bb.58:                               # %middle.block383
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	beq	$a5, $a4, .LBB1_61
.LBB1_59:                               # %.lr.ph29.i.preheader559
	sub.d	$a4, $a0, $a3
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a3, $a3, $s6, 2
	.p2align	4, , 16
.LBB1_60:                               # %.lr.ph29.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fst.s	$fa0, $a2, 0
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB1_60
.LBB1_61:                               # %.lr.ph31.i
	ori	$a2, $zero, 1
	ori	$a3, $zero, 13
	addi.d	$a7, $t1, 4
	bge	$t5, $a3, .LBB1_176
.LBB1_62:                               # %scalar.ph398.preheader
	sub.d	$a1, $a0, $a2
	ld.d	$a3, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 2
	alsl.d	$a4, $a2, $t1, 2
	alsl.d	$a2, $a2, $s6, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB1_63:                               # %scalar.ph398
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $s5, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	st.w	$zero, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB1_63
.LBB1_64:                               # %.lr.ph50.i
	st.d	$a7, $sp, 248                   # 8-byte Folded Spill
	st.d	$t5, $sp, 168                   # 8-byte Folded Spill
	st.d	$t4, $sp, 288                   # 8-byte Folded Spill
	st.d	$s1, $sp, 408                   # 8-byte Folded Spill
	slli.d	$a1, $t3, 2
	st.d	$a1, $sp, 400                   # 8-byte Folded Spill
	fldx.s	$fa0, $s6, $a1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	fst.s	$fa0, $a2, 0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	st.d	$t3, $sp, 176                   # 8-byte Folded Spill
	alsl.d	$a1, $t3, $t1, 2
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	bstrpick.d	$a1, $t0, 30, 0
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	bstrpick.d	$s1, $a2, 31, 0
	slli.d	$s3, $a0, 2
	ori	$s2, $zero, 1
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	move	$a0, $s6
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	b	.LBB1_66
	.p2align	4, , 16
.LBB1_65:                               # %._crit_edge45.i
                                        #   in Loop: Header=BB1_66 Depth=1
	fldx.s	$fa0, $s4, $fp
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	fstx.s	$fa0, $a2, $a0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	fld.s	$fa0, $a0, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	addi.d	$s2, $s2, 1
	fstx.s	$fa0, $a1, $a0
	move	$a0, $s4
	beq	$s2, $s0, .LBB1_88
.LBB1_66:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_76 Depth 2
                                        #     Child Loop BB1_72 Depth 2
	addi.d	$s6, $s2, -1
	slli.d	$a1, $s6, 2
	ld.d	$fp, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$fa0, $fp, $a1
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	fst.s	$fa0, $a0, 0
	move	$a0, $s4
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	move	$a3, $s2
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s2, 2
	fldx.s	$fa0, $fp, $a0
	fst.s	$fa0, $s4, 0
	fldx.s	$fa0, $s7, $a0
	ld.d	$ra, $sp, 192                   # 8-byte Folded Reload
	fst.s	$fa0, $ra, 0
	ld.d	$t8, $sp, 336                   # 8-byte Folded Reload
	bne	$s2, $s1, .LBB1_68
# %bb.67:                               #   in Loop: Header=BB1_66 Depth=1
	fst.s	$fa0, $t8, 0
.LBB1_68:                               # %.lr.ph44.i
                                        #   in Loop: Header=BB1_66 Depth=1
	ld.d	$fp, $sp, 440                   # 8-byte Folded Reload
	fld.s	$fa0, $fp, 0
	fld.s	$fa1, $s8, 4
	slli.d	$a1, $s2, 3
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ldx.d	$a4, $a2, $a1
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	alsl.d	$a2, $s2, $s7, 2
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a3, $s6, $a3, 2
	ld.d	$t3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 208                   # 8-byte Folded Reload
	bne	$s2, $s1, .LBB1_74
# %bb.69:                               # %.lr.ph44.split.us.i.preheader
                                        #   in Loop: Header=BB1_66 Depth=1
	move	$a5, $zero
	move	$a7, $zero
	ori	$a6, $zero, 4
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	b	.LBB1_72
	.p2align	4, , 16
.LBB1_70:                               #   in Loop: Header=BB1_72 Depth=2
	fstx.s	$fa6, $ra, $a6
	ld.d	$t0, $sp, 432                   # 8-byte Folded Reload
	stx.w	$s6, $t0, $a6
	move	$t0, $s6
.LBB1_71:                               #   in Loop: Header=BB1_72 Depth=2
	fadd.s	$fa5, $fa0, $fa5
	fcmp.clt.s	$fcc0, $fa1, $fa5
	fadd.s	$fa3, $fa3, $fa4
	fldx.s	$fa4, $s4, $a6
	fsel	$fa5, $fa1, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $fa5, $fa3
	fsel	$fa3, $fa5, $fa3, $fcc0
	fadd.s	$fa3, $fa3, $fa4
	fstx.s	$fa3, $s4, $a6
	fstx.s	$fa3, $a4, $a6
	fldx.s	$fa3, $ra, $a6
	fadd.s	$fa1, $fa1, $fa2
	fcmp.cult.s	$fcc0, $fa1, $fa0
	fstx.s	$fa3, $a1, $a6
	fldx.s	$fa2, $s4, $a6
	fsel	$fa0, $fa1, $fa0, $fcc0
	movcf2gr	$t1, $fcc0
	masknez	$t2, $a5, $t1
	maskeqz	$a7, $a7, $t1
	fstx.s	$fa2, $t5, $a6
	fldx.s	$fa1, $ra, $a6
	or	$a7, $a7, $t2
	stx.w	$t0, $t7, $a6
	stx.w	$a7, $t6, $a6
	fstx.s	$fa1, $t8, $a6
	fstx.s	$fa0, $t4, $a6
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 1
	beq	$s3, $a6, .LBB1_65
.LBB1_72:                               # %.lr.ph44.split.us.i
                                        #   Parent Loop BB1_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $sp, 440                   # 8-byte Folded Reload
	add.d	$t0, $t0, $a6
	fld.s	$fa1, $t0, -4
	add.d	$t0, $t3, $a6
	fld.s	$fa5, $t0, -4
	fld.s	$fa6, $a2, 0
	fldx.s	$fa3, $ra, $a6
	fldx.s	$fa2, $s8, $a6
	fld.s	$fa4, $a3, 0
	fadd.s	$fa6, $fa1, $fa6
	fcmp.cle.s	$fcc0, $fa3, $fa6
	bcnez	$fcc0, .LBB1_70
# %bb.73:                               # %.lr.ph44.split.us._crit_edge.i
                                        #   in Loop: Header=BB1_72 Depth=2
	ld.d	$t0, $sp, 432                   # 8-byte Folded Reload
	ldx.w	$t0, $t0, $a6
	b	.LBB1_71
	.p2align	4, , 16
.LBB1_74:                               # %.lr.ph44.split.i.preheader
                                        #   in Loop: Header=BB1_66 Depth=1
	addi.d	$a5, $s4, 4
	addi.d	$a6, $a1, 4
	addi.d	$a4, $a4, 4
	move	$a7, $t3
	ld.d	$t0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	move	$t4, $fp
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	b	.LBB1_76
	.p2align	4, , 16
.LBB1_75:                               #   in Loop: Header=BB1_76 Depth=2
	fadd.s	$fa4, $fa0, $fa4
	fcmp.clt.s	$fcc0, $fa1, $fa4
	fadd.s	$fa3, $fa3, $fa5
	fld.s	$fa5, $a5, 0
	fsel	$fa4, $fa1, $fa4, $fcc0
	fcmp.clt.s	$fcc0, $fa4, $fa3
	fsel	$fa3, $fa4, $fa3, $fcc0
	fadd.s	$fa3, $fa3, $fa5
	fst.s	$fa3, $a5, 0
	fst.s	$fa3, $a4, 0
	fld.s	$fa3, $t2, 0
	fadd.s	$fa1, $fa1, $fa2
	fcmp.cle.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fst.s	$fa3, $a6, 0
	addi.d	$t4, $t4, 4
	addi.d	$a5, $a5, 4
	addi.d	$t3, $t3, 4
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, -1
	addi.d	$a6, $a6, 4
	addi.d	$a4, $a4, 4
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	beqz	$t1, .LBB1_65
.LBB1_76:                               # %.lr.ph44.split.i
                                        #   Parent Loop BB1_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $t4, 0
	fld.s	$fa4, $a7, 0
	fld.s	$fa6, $a2, 0
	fld.s	$fa3, $t2, 0
	fld.s	$fa2, $t0, 0
	fld.s	$fa5, $a3, 0
	fadd.s	$fa6, $fa1, $fa6
	fcmp.cult.s	$fcc0, $fa6, $fa3
	bcnez	$fcc0, .LBB1_75
# %bb.77:                               #   in Loop: Header=BB1_76 Depth=2
	fst.s	$fa6, $t2, 0
	st.w	$s6, $t3, 0
	b	.LBB1_75
.LBB1_78:                               # %.preheader1.i
	ld.d	$s2, $sp, 416                   # 8-byte Folded Reload
	blez	$s4, .LBB1_81
# %bb.79:                               # %.lr.ph114.i
	move	$fp, $s3
	move	$s0, $s5
	move	$s1, $s4
	.p2align	4, , 16
.LBB1_80:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	stx.b	$zero, $a0, $s2
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, 8
	bnez	$s1, .LBB1_80
.LBB1_81:                               # %.preheader.i
	move	$s8, $s3
	blez	$s6, .LBB1_151
# %bb.82:                               # %.lr.ph121.i
	move	$s0, $zero
	ori	$s1, $zero, 45
	b	.LBB1_84
	.p2align	4, , 16
.LBB1_83:                               # %._crit_edge119.i
                                        #   in Loop: Header=BB1_84 Depth=1
	addi.d	$s0, $s0, 1
	beq	$s0, $s6, .LBB1_151
.LBB1_84:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_86 Depth 2
	slli.d	$a0, $s0, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	blez	$a0, .LBB1_83
# %bb.85:                               # %.lr.ph118.i.preheader
                                        #   in Loop: Header=BB1_84 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s2, $s0, $a0, 3
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_86:                               # %.lr.ph118.i
                                        #   Parent Loop BB1_84 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $s2, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	stx.h	$s1, $fp, $a0
	bnez	$s3, .LBB1_86
	b	.LBB1_83
.LBB1_87:
	move	$s8, $s3
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB1_151
.LBB1_88:                               # %.lr.ph56.i
	ori	$a7, $zero, 1
	ld.d	$s3, $sp, 408                   # 8-byte Folded Reload
	move	$a0, $s3
	ld.d	$s0, $sp, 368                   # 8-byte Folded Reload
	move	$a1, $s0
	ld.d	$fp, $sp, 376                   # 8-byte Folded Reload
	move	$a2, $fp
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 328                   # 8-byte Folded Reload
	move	$a5, $s1
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	move	$a6, $s2
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$a0, $s4
	move	$a1, $fp
	move	$a2, $s0
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	move	$a3, $fp
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	move	$a5, $s1
	move	$a6, $s2
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	move	$ra, $fp
	bstrpick.d	$a1, $fp, 31, 0
	ori	$a0, $zero, 8
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a4, 2
	bgeu	$fp, $a0, .LBB1_181
# %bb.89:
	move	$t3, $a1
	move	$a0, $zero
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 312                   # 8-byte Folded Reload
.LBB1_90:                               # %scalar.ph425.preheader
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 400                   # 8-byte Folded Reload
.LBB1_91:                               # %scalar.ph425.preheader
	alsl.d	$a1, $a0, $s3, 2
	sub.d	$a3, $t3, $a0
	alsl.d	$a0, $a0, $s7, 2
	addi.d	$a0, $a0, 4
	.p2align	4, , 16
.LBB1_92:                               # %scalar.ph425
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 4
	bnez	$a3, .LBB1_92
.LBB1_93:                               # %.lr.ph58.i
	alsl.d	$a0, $t7, $t1, 2
	ori	$a3, $zero, 9
	alsl.d	$a1, $t7, $s4, 2
	move	$t0, $a4
	bgeu	$a4, $a3, .LBB1_186
# %bb.94:
	move	$a3, $zero
.LBB1_95:                               # %scalar.ph455.preheader
	alsl.d	$a4, $a3, $s4, 2
	sub.d	$a5, $t7, $a3
	alsl.d	$a3, $a3, $s8, 2
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB1_96:                               # %scalar.ph455
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 4
	bnez	$a5, .LBB1_96
.LBB1_97:                               # %.lr.ph60.i.preheader
	move	$a3, $t3
	move	$a4, $a7
	.p2align	4, , 16
.LBB1_98:                               # %.lr.ph60.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $s5, 0
	fldx.s	$fa2, $a5, $t8
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	fstx.s	$fa0, $a5, $t8
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, -1
	addi.d	$s5, $s5, 4
	bnez	$a3, .LBB1_98
# %bb.99:                               # %.lr.ph62.i
	slli.d	$a2, $t3, 3
	ldx.d	$a2, $a7, $a2
	ori	$a3, $zero, 9
	bgeu	$t0, $a3, .LBB1_191
# %bb.100:
	move	$a3, $zero
.LBB1_101:                              # %scalar.ph484.preheader
	alsl.d	$a2, $a3, $a2, 2
	sub.d	$a4, $t7, $a3
	alsl.d	$a3, $a3, $s8, 2
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB1_102:                              # %scalar.ph484
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB1_102
.LBB1_103:                              # %.lr.ph64.i
	slti	$a3, $t7, 1
	ori	$a2, $zero, 1
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $t7, $a3
	or	$a5, $a3, $a4
	nor	$a3, $a5, $zero
	add.w	$a4, $a3, $t2
	ori	$a6, $zero, 19
	addi.d	$a3, $a0, -4
	bgeu	$a4, $a6, .LBB1_196
.LBB1_104:
	move	$a0, $t7
.LBB1_105:                              # %scalar.ph515.preheader
	addi.d	$a1, $a0, 1
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 2
	alsl.d	$a5, $a0, $t6, 2
	addi.d	$a5, $a5, -4
	alsl.d	$a0, $a0, $s4, 2
	.p2align	4, , 16
.LBB1_106:                              # %scalar.ph515
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a5, 0
	st.w	$ra, $a4, 0
	addi.w	$a1, $a1, -1
	addi.d	$a4, $a4, -4
	addi.d	$a5, $a5, -4
	addi.d	$a0, $a0, -4
	blt	$a2, $a1, .LBB1_106
.LBB1_107:                              # %.lr.ph104.i
	move	$s8, $zero
	move	$a5, $zero
	move	$a6, $zero
	addi.w	$a0, $zero, -2
	lu32i.d	$a0, 0
	add.d	$a0, $t2, $a0
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$s1, $a0, $t1, 2
	slli.d	$a4, $a0, 2
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $t6, 2
	addi.d	$s0, $a1, -8
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 2
	addi.d	$s3, $a1, -8
	ori	$a2, $zero, 1
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	slt	$a1, $a2, $a3
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	st.d	$a1, $sp, 416                   # 8-byte Folded Spill
	alsl.d	$s5, $a0, $t4, 2
	alsl.d	$s7, $a0, $fp, 2
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $a4, 4
	add.d	$s6, $t5, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$fp, $a1, $a0
	addi.d	$a0, $t7, -2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	lu12i.w	$a0, -216695
	ori	$a0, $a0, 1664
	lu32i.d	$a0, 0
	movgr2fr.w	$fs0, $a0
	addi.d	$a0, $t4, 8
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	movgr2fr.w	$fa3, $zero
	move	$a4, $t0
	b	.LBB1_110
	.p2align	4, , 16
.LBB1_108:                              #   in Loop: Header=BB1_110 Depth=1
	move	$a0, $t6
	move	$a1, $a5
	move	$a2, $s8
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
.LBB1_109:                              #   in Loop: Header=BB1_110 Depth=1
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	move	$s8, $a2
	move	$a5, $a1
	move	$a6, $a0
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	bge	$a0, $s2, .LBB1_141
.LBB1_110:                              # %.lr.ph74.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_112 Depth 2
                                        #     Child Loop BB1_126 Depth 2
                                        #     Child Loop BB1_128 Depth 2
	st.d	$a6, $sp, 240                   # 8-byte Folded Spill
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	vst	$vr3, $sp, 256                  # 16-byte Folded Spill
	st.d	$ra, $sp, 288                   # 8-byte Folded Spill
	move	$s2, $t3
	slli.d	$a0, $t3, 2
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	move	$a2, $s4
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	addi.d	$s4, $t3, -1
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	fstx.s	$fa0, $a2, $a1
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	move	$a3, $s4
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	move	$ra, $s4
	ld.d	$t7, $sp, 312                   # 8-byte Folded Reload
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	move	$a0, $zero
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 400                   # 8-byte Folded Reload
	fstx.s	$fa0, $a4, $a5
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a1, $a3, $a2, 2
	fldx.s	$fa0, $a2, $a5
	fld.s	$fa1, $s1, 0
	addi.d	$a2, $a1, -4
	alsl.d	$a1, $a3, $a4, 2
	addi.d	$a3, $a1, -8
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a5, $s2, $a1, 2
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a4, $s4, $a1, 2
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$t6, $a1
	bstrpick.d	$a1, $a1, 31, 0
	xor	$a1, $s4, $a1
	sltui	$a6, $a1, 1
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	bstrpick.d	$a1, $s4, 31, 0
	xor	$a7, $s2, $a1
	slli.d	$t0, $ra, 3
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ldx.d	$t1, $t1, $t0
	ldx.d	$t0, $t7, $t0
	sltui	$a7, $a7, 1
	or	$a6, $a6, $a7
	ld.d	$t2, $sp, 168                   # 8-byte Folded Reload
	add.d	$a7, $t1, $t2
	add.d	$t0, $t0, $t2
	ld.d	$t8, $sp, 176                   # 8-byte Folded Reload
	move	$t1, $t8
	move	$t2, $t8
	b	.LBB1_112
	.p2align	4, , 16
.LBB1_111:                              #   in Loop: Header=BB1_112 Depth=2
	fldx.s	$fa2, $t0, $a0
	fadd.s	$fa2, $fa1, $fa2
	fstx.s	$fa2, $t0, $a0
	fldx.s	$fa2, $a3, $a0
	fldx.s	$fa3, $a7, $a0
	movcf2gr	$t3, $fcc0
	fadd.s	$fa2, $fa2, $fa3
	fstx.s	$fa2, $a7, $a0
	fldx.s	$fa2, $a3, $a0
	masknez	$t4, $t1, $t3
	maskeqz	$t2, $t2, $t3
	or	$t2, $t2, $t4
	fadd.s	$fa1, $fa1, $fa2
	fstx.s	$fa1, $a3, $a0
	addi.w	$t1, $t1, -1
	addi.d	$a0, $a0, -4
	blez	$t1, .LBB1_122
.LBB1_112:                              #   Parent Loop BB1_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $fp, $a0
	fldx.s	$fa2, $a2, $a0
	fadd.s	$fa1, $fa0, $fa1
	fldx.s	$fa4, $s0, $a0
	fld.s	$fa5, $a5, 0
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fldx.s	$fa3, $s1, $a0
	fadd.s	$fa5, $fa4, $fa5
	fcmp.cule.s	$fcc1, $fa5, $fa1
	bcnez	$fcc1, .LBB1_114
# %bb.113:                              #   in Loop: Header=BB1_112 Depth=2
	ldx.w	$t3, $s3, $a0
	fmov.s	$fa1, $fa5
	move	$t4, $t1
	fld.s	$fa5, $a4, 0
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa4
	bceqz	$fcc0, .LBB1_115
	b	.LBB1_116
	.p2align	4, , 16
.LBB1_114:                              #   in Loop: Header=BB1_112 Depth=2
	movcf2gr	$t3, $fcc0
	masknez	$t4, $t1, $t3
	maskeqz	$t3, $t2, $t3
	or	$t4, $t3, $t4
	move	$t3, $s2
	fld.s	$fa5, $a4, 0
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa4
	bcnez	$fcc0, .LBB1_116
.LBB1_115:                              #   in Loop: Header=BB1_112 Depth=2
	fstx.s	$fa5, $s0, $a0
	stx.w	$s2, $s3, $a0
.LBB1_116:                              #   in Loop: Header=BB1_112 Depth=2
	beqz	$a6, .LBB1_119
# %bb.117:                              #   in Loop: Header=BB1_112 Depth=2
	ld.d	$t5, $sp, 416                   # 8-byte Folded Reload
	stx.w	$t3, $t5, $a0
	ld.d	$t3, $sp, 424                   # 8-byte Folded Reload
	stx.w	$t4, $t3, $a0
	beq	$ra, $a1, .LBB1_120
.LBB1_118:                              #   in Loop: Header=BB1_112 Depth=2
	fadd.s	$fa2, $fa2, $fa3
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s2, $a1, .LBB1_111
	b	.LBB1_121
	.p2align	4, , 16
.LBB1_119:                              #   in Loop: Header=BB1_112 Depth=2
	bne	$ra, $a1, .LBB1_118
.LBB1_120:                              #   in Loop: Header=BB1_112 Depth=2
	fldx.s	$fa4, $s5, $a0
	fadd.s	$fa4, $fa1, $fa4
	fstx.s	$fa4, $s5, $a0
	fldx.s	$fa4, $s0, $a0
	fldx.s	$fa5, $s6, $a0
	fadd.s	$fa4, $fa4, $fa5
	fstx.s	$fa4, $s6, $a0
	fadd.s	$fa2, $fa2, $fa3
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s2, $a1, .LBB1_111
.LBB1_121:                              #   in Loop: Header=BB1_112 Depth=2
	fldx.s	$fa2, $s7, $a0
	fadd.s	$fa2, $fa0, $fa2
	fstx.s	$fa2, $s7, $a0
	b	.LBB1_111
	.p2align	4, , 16
.LBB1_122:                              # %._crit_edge75.i
                                        #   in Loop: Header=BB1_110 Depth=1
	fldx.s	$fa0, $a2, $a0
	fld.s	$fa1, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fs0, $fa0
	fsel	$fs0, $fs0, $fa0, $fcc0
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	bne	$ra, $a1, .LBB1_124
# %bb.123:                              #   in Loop: Header=BB1_110 Depth=1
	fld.s	$fa0, $t0, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $t0, 0
.LBB1_124:                              #   in Loop: Header=BB1_110 Depth=1
	move	$t3, $ra
	addi.w	$a0, $s4, -1
	ld.d	$a6, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 344                   # 8-byte Folded Reload
	vld	$vr3, $sp, 256                  # 16-byte Folded Reload
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	bne	$s2, $a1, .LBB1_136
# %bb.125:                              # %.lr.ph82.preheader.i
                                        #   in Loop: Header=BB1_110 Depth=1
	fld.s	$fa3, $a7, 4
	move	$s8, $zero
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_126:                              # %.lr.ph82.i
                                        #   Parent Loop BB1_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a2, 0
	fcmp.clt.s	$fcc1, $fa3, $fa0
	fsel	$fa3, $fa3, $fa0, $fcc1
	movcf2gr	$a4, $fcc1
	masknez	$a5, $s8, $a4
	maskeqz	$a4, $a1, $a4
	or	$s8, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB1_126
# %bb.127:                              # %.lr.ph88.i.preheader
                                        #   in Loop: Header=BB1_110 Depth=1
	move	$a1, $zero
	move	$a2, $t0
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_128:                              # %.lr.ph88.i
                                        #   Parent Loop BB1_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a2, 0
	fcmp.clt.s	$fcc1, $fa3, $fa0
	fsel	$fa3, $fa3, $fa0, $fcc1
	movcf2gr	$a4, $fcc1
	masknez	$a5, $s8, $a4
	maskeqz	$a4, $a1, $a4
	or	$s8, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB1_128
# %bb.129:                              # %._crit_edge89.i
                                        #   in Loop: Header=BB1_110 Depth=1
	slli.d	$a1, $s8, 2
	fldx.s	$fa0, $a7, $a1
	addi.w	$a5, $s8, -1
	blez	$s8, .LBB1_134
# %bb.130:                              #   in Loop: Header=BB1_110 Depth=1
	slli.d	$a2, $a5, 2
	fldx.s	$fa1, $a6, $a2
	fcmp.cule.s	$fcc1, $fa1, $fa0
	move	$a2, $a5
	bcnez	$fcc1, .LBB1_132
# %bb.131:                              #   in Loop: Header=BB1_110 Depth=1
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a1
	fmov.s	$fa0, $fa1
.LBB1_132:                              #   in Loop: Header=BB1_110 Depth=1
	fldx.s	$fa1, $t0, $a1
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bcnez	$fcc1, .LBB1_135
.LBB1_133:                              #   in Loop: Header=BB1_110 Depth=1
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$t6, $a2, $a1
	b	.LBB1_136
.LBB1_134:                              #   in Loop: Header=BB1_110 Depth=1
	move	$a2, $a5
	fldx.s	$fa1, $t0, $a1
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bceqz	$fcc1, .LBB1_133
.LBB1_135:                              #   in Loop: Header=BB1_110 Depth=1
	move	$t6, $a0
	move	$a5, $a2
.LBB1_136:                              #   in Loop: Header=BB1_110 Depth=1
	movcf2gr	$a1, $fcc0
	masknez	$a2, $t1, $a1
	maskeqz	$a1, $s2, $a1
	bstrpick.d	$a3, $t6, 31, 0
	or	$ra, $a1, $a2
	bne	$t3, $a3, .LBB1_108
# %bb.137:                              #   in Loop: Header=BB1_110 Depth=1
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	beqz	$s8, .LBB1_140
# %bb.138:                              #   in Loop: Header=BB1_110 Depth=1
	move	$a1, $t8
	move	$a2, $a4
	bge	$s8, $a4, .LBB1_109
# %bb.139:                              #   in Loop: Header=BB1_110 Depth=1
	slli.d	$a0, $a5, 2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$s4, $a1, $a0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	move	$a0, $t6
	move	$a1, $a5
	b	.LBB1_109
.LBB1_140:                              #   in Loop: Header=BB1_110 Depth=1
	move	$a1, $zero
	addi.w	$a0, $ra, -1
	ori	$a2, $zero, 1
	move	$s4, $ra
	b	.LBB1_109
.LBB1_141:                              # %.preheader2.preheader.i
	move	$a0, $zero
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 30, 3
	slli.d	$a2, $a2, 3
	vreplvei.w	$vr0, $vr3, 0
	ori	$a3, $zero, 8
	ori	$a4, $zero, 32
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	b	.LBB1_143
	.p2align	4, , 16
.LBB1_142:                              # %._crit_edge109.i
                                        #   in Loop: Header=BB1_143 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB1_150
.LBB1_143:                              # %.preheader2.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_146 Depth 2
                                        #     Child Loop BB1_149 Depth 2
	slli.d	$a6, $a0, 3
	ldx.d	$a5, $t7, $a6
	ldx.d	$a6, $t2, $a6
	move	$t0, $zero
	bltu	$t3, $a3, .LBB1_148
# %bb.144:                              # %.preheader2.i
                                        #   in Loop: Header=BB1_143 Depth=1
	sub.d	$a7, $a6, $a5
	bltu	$a7, $a4, .LBB1_148
# %bb.145:                              # %vector.body543.preheader
                                        #   in Loop: Header=BB1_143 Depth=1
	addi.d	$a7, $a6, 16
	addi.d	$t0, $a5, 16
	move	$t1, $a2
	.p2align	4, , 16
.LBB1_146:                              # %vector.body543
                                        #   Parent Loop BB1_143 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $t0, -16
	vld	$vr2, $t0, 0
	vfdiv.s	$vr1, $vr1, $vr0
	vfdiv.s	$vr2, $vr2, $vr0
	vst	$vr1, $a7, -16
	vst	$vr2, $a7, 0
	addi.d	$t1, $t1, -8
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB1_146
# %bb.147:                              # %middle.block548
                                        #   in Loop: Header=BB1_143 Depth=1
	move	$t0, $a2
	beq	$t3, $a2, .LBB1_142
.LBB1_148:                              # %scalar.ph536.preheader
                                        #   in Loop: Header=BB1_143 Depth=1
	sub.d	$a7, $t3, $t0
	alsl.d	$a6, $t0, $a6, 2
	alsl.d	$a5, $t0, $a5, 2
	.p2align	4, , 16
.LBB1_149:                              # %scalar.ph536
                                        #   Parent Loop BB1_143 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a5, 0
	fdiv.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $a6, 0
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 4
	bnez	$a7, .LBB1_149
	b	.LBB1_142
.LBB1_150:                              # %._crit_edge112.i
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$fp, $t7
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
.LBB1_151:                              # %MSalign2m2m_rec.exit
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	blez	$s4, .LBB1_155
# %bb.152:                              # %.lr.ph203
	ld.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	addi.w	$s1, $a0, 0
	move	$s2, $s4
	.p2align	4, , 16
.LBB1_153:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB1_205
# %bb.154:                              #   in Loop: Header=BB1_153 Depth=1
	addi.w	$s0, $s0, 1
	addi.d	$s2, $s2, -1
	addi.d	$s5, $s5, 8
	bnez	$s2, .LBB1_153
.LBB1_155:                              # %.preheader
	blez	$s6, .LBB1_159
# %bb.156:                              # %.lr.ph205
	move	$s0, $zero
	addi.w	$fp, $fp, 0
	move	$s1, $s6
	.p2align	4, , 16
.LBB1_157:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_206
# %bb.158:                              #   in Loop: Header=BB1_157 Depth=1
	addi.w	$s0, $s0, 1
	addi.d	$s1, $s1, -1
	addi.d	$s7, $s7, 8
	bnez	$s1, .LBB1_157
.LBB1_159:                              # %._crit_edge206
	movgr2fr.w	$fa0, $zero
	fld.d	$fs0, $sp, 448                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 520                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 528                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 536                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 544
	ret
.LBB1_160:                              # %vector.ph
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 2
	slli.d	$a1, $a1, 2
	vreplvei.d	$vr1, $vr0, 0
	lu52i.d	$a2, $zero, 1023
	vreplgr2vr.d	$vr2, $a2
	lu52i.d	$a2, $zero, 1022
	vreplgr2vr.d	$vr3, $a2
	move	$a2, $a3
	move	$a3, $s8
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_161:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a2, 0
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vreplvei.w	$vr5, $vr4, 3
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr4, $vr4, 2
	fcvt.d.s	$fa4, $fa4
	vextrins.d	$vr4, $vr5, 16
	vfsub.d	$vr4, $vr2, $vr4
	vfsub.d	$vr5, $vr2, $vr6
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr4, $vr4, $vr1
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 1
	fcvt.s.d	$fa6, $fa6
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr6, 16
	vreplvei.d	$vr6, $vr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 32
	vreplvei.d	$vr4, $vr4, 1
	vld	$vr6, $a3, 0
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 48
	vst	$vr5, $a2, 0
	vreplvei.w	$vr4, $vr6, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr5, $vr6, 0
	fcvt.d.s	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vreplvei.w	$vr4, $vr6, 3
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr6, 2
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr4, 16
	vfsub.d	$vr4, $vr2, $vr6
	vfsub.d	$vr5, $vr2, $vr5
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr4, $vr4, $vr1
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 1
	fcvt.s.d	$fa6, $fa6
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr6, 16
	vreplvei.d	$vr6, $vr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 32
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 48
	vst	$vr5, $a3, 0
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 16
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB1_161
# %bb.162:                              # %middle.block
	beq	$a0, $a1, .LBB1_18
	b	.LBB1_16
.LBB1_163:                              # %vector.ph270
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 2
	slli.d	$a1, $a1, 2
	vreplvei.d	$vr1, $vr0, 0
	lu52i.d	$a2, $zero, 1023
	vreplgr2vr.d	$vr2, $a2
	lu52i.d	$a2, $zero, 1022
	vreplgr2vr.d	$vr3, $a2
	move	$a2, $a3
	move	$a3, $a5
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_164:                              # %vector.body275
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a2, 0
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vreplvei.w	$vr5, $vr4, 3
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr4, $vr4, 2
	fcvt.d.s	$fa4, $fa4
	vextrins.d	$vr4, $vr5, 16
	vfsub.d	$vr4, $vr2, $vr4
	vfsub.d	$vr5, $vr2, $vr6
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr4, $vr4, $vr1
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 1
	fcvt.s.d	$fa6, $fa6
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr6, 16
	vreplvei.d	$vr6, $vr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 32
	vreplvei.d	$vr4, $vr4, 1
	vld	$vr6, $a3, 0
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 48
	vst	$vr5, $a2, 0
	vreplvei.w	$vr4, $vr6, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr5, $vr6, 0
	fcvt.d.s	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vreplvei.w	$vr4, $vr6, 3
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr6, 2
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr4, 16
	vfsub.d	$vr4, $vr2, $vr6
	vfsub.d	$vr5, $vr2, $vr5
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr4, $vr4, $vr1
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 1
	fcvt.s.d	$fa6, $fa6
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr6, 16
	vreplvei.d	$vr6, $vr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 32
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 48
	vst	$vr5, $a3, 0
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 16
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB1_164
# %bb.165:                              # %middle.block280
	beq	$a0, $a1, .LBB1_25
	b	.LBB1_23
.LBB1_166:                              # %vector.memcheck312
	addi.d	$a0, $s1, 4
	alsl.d	$a1, $s0, $s1, 2
	sltu	$a2, $a0, $s5
	sltu	$a3, $s7, $a1
	and	$a2, $a2, $a3
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	bnez	$a2, .LBB1_46
# %bb.167:                              # %vector.memcheck312
	alsl.d	$a2, $s0, $a5, 2
	addi.d	$a2, $a2, -4
	sltu	$a0, $a0, $a2
	sltu	$a1, $a5, $a1
	and	$a0, $a0, $a1
	ld.d	$t0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 312                   # 8-byte Folded Reload
	bnez	$a0, .LBB1_47
# %bb.168:                              # %vector.ph325
	addi.d	$a0, $s0, -1
	move	$a1, $a0
	bstrins.d	$a1, $zero, 2, 0
	ori	$a2, $zero, 1
	move	$fp, $a0
	vldrepl.w	$vr0, $s7, 0
	bstrins.d	$fp, $a2, 2, 0
	addi.d	$a2, $a5, 16
	addi.d	$a3, $s1, 20
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_169:                              # %vector.body328
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, -16
	vld	$vr2, $a2, 0
	vld	$vr3, $a3, -16
	vld	$vr4, $a3, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a2, $a2, 32
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB1_169
# %bb.170:                              # %middle.block337
	bne	$a0, $a1, .LBB1_47
	b	.LBB1_49
.LBB1_171:                              # %vector.memcheck340
	addi.d	$a3, $s6, 4
	sltu	$a4, $a3, $a4
	sltu	$a5, $s8, $a1
	and	$a4, $a4, $a5
	bnez	$a4, .LBB1_50
# %bb.172:                              # %vector.memcheck340
	alsl.d	$a4, $a0, $a7, 2
	addi.d	$a4, $a4, -4
	sltu	$a3, $a3, $a4
	sltu	$a4, $a7, $a1
	and	$a3, $a3, $a4
	bnez	$a3, .LBB1_50
# %bb.173:                              # %vector.ph354
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	move	$a3, $a2
	bstrins.d	$a3, $zero, 2, 0
	ori	$a4, $zero, 1
	vldrepl.w	$vr0, $s8, 0
	bstrins.d	$a2, $a4, 2, 0
	addi.d	$a4, $a7, 16
	addi.d	$a5, $s6, 20
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_174:                              # %vector.body357
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vld	$vr3, $a5, -16
	vld	$vr4, $a5, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a5, -16
	vst	$vr2, $a5, 0
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB1_174
# %bb.175:                              # %middle.block367
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	bne	$a4, $a3, .LBB1_50
	b	.LBB1_52
.LBB1_176:                              # %vector.memcheck386
	alsl.d	$a3, $a0, $t1, 2
	addi.d	$a1, $a1, -4
	sltu	$a1, $a7, $a1
	sltu	$a4, $s6, $a3
	and	$a1, $a1, $a4
	bnez	$a1, .LBB1_62
# %bb.177:                              # %vector.memcheck386
	addi.d	$a1, $s7, 8
	sltu	$a1, $a7, $a1
	sltu	$a3, $s5, $a3
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_62
# %bb.178:                              # %vector.ph400
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	move	$a1, $a2
	bstrins.d	$a1, $zero, 2, 0
	ori	$a3, $zero, 1
	bstrins.d	$a2, $a3, 2, 0
	vldrepl.w	$vr0, $s5, 0
	addi.d	$a3, $s6, 16
	addi.d	$a4, $t1, 20
	ld.d	$a5, $sp, 432                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 20
	vrepli.b	$vr1, 0
	move	$a6, $a1
	.p2align	4, , 16
.LBB1_179:                              # %vector.body403
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vfadd.s	$vr2, $vr2, $vr0
	vfadd.s	$vr3, $vr3, $vr0
	vst	$vr2, $a4, -16
	vst	$vr3, $a4, 0
	vst	$vr1, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB1_179
# %bb.180:                              # %middle.block411
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	bne	$a3, $a1, .LBB1_62
	b	.LBB1_64
.LBB1_181:                              # %vector.memcheck414
	slli.d	$a0, $a1, 2
	move	$t3, $a1
	alsl.d	$a1, $a1, $s3, 2
	addi.d	$a3, $a0, 4
	add.d	$a0, $a4, $a3
	sltu	$a0, $s3, $a0
	sltu	$a4, $a2, $a1
	and	$a4, $a0, $a4
	move	$a0, $zero
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 312                   # 8-byte Folded Reload
	bnez	$a4, .LBB1_201
# %bb.182:                              # %vector.memcheck414
	add.d	$a3, $s7, $a3
	sltu	$a3, $s3, $a3
	sltu	$a1, $s5, $a1
	and	$a1, $a3, $a1
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 400                   # 8-byte Folded Reload
	bnez	$a1, .LBB1_91
# %bb.183:                              # %vector.ph427
	move	$a5, $a4
	bstrpick.d	$a0, $t3, 30, 3
	vldrepl.w	$vr0, $a2, 0
	slli.d	$a0, $a0, 3
	addi.d	$a1, $s7, 20
	addi.d	$a3, $s3, 16
	move	$a4, $a0
	.p2align	4, , 16
.LBB1_184:                              # %vector.body430
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a1, -16
	vld	$vr2, $a1, 0
	vld	$vr3, $a3, -16
	vld	$vr4, $a3, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a1, $a1, 32
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB1_184
# %bb.185:                              # %middle.block439
	move	$a4, $a5
	bne	$a0, $t3, .LBB1_91
	b	.LBB1_93
.LBB1_186:                              # %vector.memcheck442
	addi.d	$a4, $t8, 4
	add.d	$a3, $t1, $a4
	sltu	$a3, $s4, $a3
	sltu	$a5, $a0, $a1
	and	$a5, $a3, $a5
	move	$a3, $zero
	bnez	$a5, .LBB1_95
# %bb.187:                              # %vector.memcheck442
	addi.d	$a5, $s8, 4
	add.d	$a4, $s8, $a4
	sltu	$a4, $s4, $a4
	sltu	$a5, $a5, $a1
	and	$a4, $a4, $a5
	bnez	$a4, .LBB1_95
# %bb.188:                              # %vector.ph457
	bstrpick.d	$a3, $t7, 30, 3
	vldrepl.w	$vr0, $a0, 0
	slli.d	$a3, $a3, 3
	addi.d	$a4, $s8, 20
	addi.d	$a5, $s4, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_189:                              # %vector.body460
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vld	$vr3, $a5, -16
	vld	$vr4, $a5, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a5, -16
	vst	$vr2, $a5, 0
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB1_189
# %bb.190:                              # %middle.block469
	bne	$a3, $t7, .LBB1_95
	b	.LBB1_97
.LBB1_191:                              # %vector.memcheck472
	alsl.d	$a4, $t7, $a2, 2
	addi.d	$a5, $t8, 4
	add.d	$a3, $t1, $a5
	sltu	$a3, $a2, $a3
	sltu	$a6, $a0, $a4
	and	$a6, $a3, $a6
	move	$a3, $zero
	bnez	$a6, .LBB1_101
# %bb.192:                              # %vector.memcheck472
	addi.d	$a6, $s8, 4
	add.d	$a5, $s8, $a5
	sltu	$a5, $a2, $a5
	sltu	$a4, $a6, $a4
	and	$a4, $a5, $a4
	bnez	$a4, .LBB1_101
# %bb.193:                              # %vector.ph486
	bstrpick.d	$a3, $t7, 30, 3
	vldrepl.w	$vr0, $a0, 0
	slli.d	$a3, $a3, 3
	addi.d	$a4, $s8, 20
	addi.d	$a5, $a2, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_194:                              # %vector.body489
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vld	$vr3, $a5, -16
	vld	$vr4, $a5, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr1, $vr3
	vfadd.s	$vr2, $vr2, $vr4
	vst	$vr1, $a5, -16
	vst	$vr2, $a5, 0
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB1_194
# %bb.195:                              # %middle.block498
	bne	$a3, $t7, .LBB1_101
	b	.LBB1_103
.LBB1_196:                              # %vector.memcheck501
	sub.d	$a5, $a5, $t2
	nor	$a5, $a5, $zero
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	sub.d	$a6, $t8, $a5
	add.d	$a5, $a6, $t6
	addi.d	$a5, $a5, -4
	add.d	$a6, $s4, $a6
	addi.d	$a1, $a1, 4
	sltu	$a1, $a5, $a1
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	sltu	$a6, $a6, $s0
	and	$a1, $a1, $a6
	bnez	$a1, .LBB1_104
# %bb.197:                              # %vector.memcheck501
	sltu	$a0, $a5, $a0
	sltu	$a1, $a3, $s0
	and	$a1, $a0, $a1
	move	$a0, $t7
	bnez	$a1, .LBB1_105
# %bb.198:                              # %vector.ph517
	bstrpick.d	$a0, $a4, 31, 0
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 32, 2
	slli.d	$a4, $a0, 2
	sub.d	$a0, $t7, $a4
	vreplgr2vr.w	$vr0, $ra
	vldrepl.w	$vr1, $a3, 0
	addi.d	$a7, $t8, -12
	ld.d	$a5, $sp, 432                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a7
	addi.d	$a6, $s0, -16
	add.d	$a7, $s4, $a7
	move	$t0, $a4
	.p2align	4, , 16
.LBB1_199:                              # %vector.body522
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, 0
	vfadd.s	$vr2, $vr2, $vr1
	vst	$vr2, $a6, 0
	vst	$vr0, $a5, 0
	addi.d	$t0, $t0, -4
	addi.d	$a5, $a5, -16
	addi.d	$a6, $a6, -16
	addi.d	$a7, $a7, -16
	bnez	$t0, .LBB1_199
# %bb.200:                              # %middle.block531
	ld.d	$t0, $sp, 360                   # 8-byte Folded Reload
	bne	$a1, $a4, .LBB1_105
	b	.LBB1_107
.LBB1_201:
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	b	.LBB1_90
.LBB1_202:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $fp
	move	$a3, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	b	.LBB1_204
.LBB1_203:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s8
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
.LBB1_204:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_205:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s0
	move	$a3, $s4
	b	.LBB1_207
.LBB1_206:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s0
	move	$a3, $s6
.LBB1_207:
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	Lalign2m2m_hmout, .Lfunc_end1-Lalign2m2m_hmout
                                        # -- End function
	.p2align	5                               # -- Begin function match_calc
	.type	match_calc,@function
match_calc:                             # @match_calc
# %bb.0:
	addi.d	$sp, $sp, -592
	st.d	$fp, $sp, 584                   # 8-byte Folded Spill
	st.d	$s0, $sp, 576                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 568                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 560                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 552                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 544                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 536                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 528                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 520                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 512                  # 8-byte Folded Spill
	beqz	$a7, .LBB2_7
# %bb.1:                                # %.preheader62.preheader
	move	$a7, $zero
	movgr2fr.w	$fa0, $zero
	ori	$t0, $zero, 104
	addi.w	$t1, $zero, -1
	lu32i.d	$t1, 0
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                #   in Loop: Header=BB2_3 Depth=1
	ld.d	$t2, $t6, 0
	slli.d	$t3, $t3, 2
	addi.d	$a7, $a7, 1
	stx.w	$t1, $t2, $t3
	beq	$a7, $a4, .LBB2_7
.LBB2_3:                                # %.preheader62
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
	slli.d	$t2, $a7, 3
	ldx.d	$t2, $a2, $t2
	move	$t4, $zero
	move	$t5, $zero
	move	$t3, $zero
	alsl.d	$t7, $a7, $a5, 3
	alsl.d	$t6, $a7, $a6, 3
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_4:                                #   in Loop: Header=BB2_5 Depth=2
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 1
	beq	$t4, $t0, .LBB2_2
.LBB2_5:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $t2, $t4
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_4
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=2
	ld.d	$t8, $t7, 0
	ld.d	$fp, $t6, 0
	slli.d	$s0, $t3, 2
	fstx.s	$fa1, $t8, $s0
	stx.w	$t5, $fp, $s0
	addi.w	$t3, $t3, 1
	b	.LBB2_4
.LBB2_7:                                # %.loopexit
	pcalau12i	$a2, %got_pc_hi20(RNAthr)
	ld.d	$a2, $a2, %got_pc_lo12(RNAthr)
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a1, $a3
	ld.w	$a1, $a2, 0
	fld.s	$fa1, $a3, 48
	fld.s	$fa0, $a3, 52
	fld.s	$fs1, $a3, 0
	fld.s	$fs0, $a3, 4
	fld.s	$ft15, $a3, 8
	fld.s	$ft14, $a3, 12
	fld.s	$ft13, $a3, 16
	fld.s	$fa2, $a3, 20
	fld.s	$fa3, $a3, 24
	fld.s	$fa4, $a3, 28
	fld.s	$fa5, $a3, 32
	fld.s	$fa6, $a3, 36
	fld.s	$fa7, $a3, 40
	fld.s	$ft0, $a3, 44
	fld.s	$ft1, $a3, 56
	fld.s	$ft2, $a3, 60
	fld.s	$ft3, $a3, 64
	fld.s	$ft4, $a3, 68
	fld.s	$ft5, $a3, 72
	fld.s	$ft6, $a3, 76
	fld.s	$ft7, $a3, 80
	fld.s	$ft8, $a3, 84
	fld.s	$ft9, $a3, 88
	fld.s	$ft10, $a3, 92
	fld.s	$ft11, $a3, 96
	fld.s	$ft12, $a3, 100
	vreplgr2vr.w	$vr26, $a1
	vst	$vr1, $sp, 336                  # 16-byte Folded Spill
	vreplvei.w	$vr27, $vr1, 0
	vst	$vr0, $sp, 352                  # 16-byte Folded Spill
	vreplvei.w	$vr28, $vr0, 0
	vreplvei.w	$vr29, $vr25, 0
	vreplvei.w	$vr30, $vr24, 0
	vst	$vr23, $sp, 16                  # 16-byte Folded Spill
	vreplvei.w	$vr31, $vr23, 0
	vst	$vr22, $sp, 32                  # 16-byte Folded Spill
	vreplvei.w	$vr0, $vr22, 0
	vst	$vr21, $sp, 48                  # 16-byte Folded Spill
	vreplvei.w	$vr1, $vr21, 0
	vst	$vr2, $sp, 64                   # 16-byte Folded Spill
	vreplvei.w	$vr2, $vr2, 0
	vst	$vr3, $sp, 80                   # 16-byte Folded Spill
	vreplvei.w	$vr3, $vr3, 0
	vst	$vr4, $sp, 96                   # 16-byte Folded Spill
	vreplvei.w	$vr4, $vr4, 0
	vst	$vr5, $sp, 112                  # 16-byte Folded Spill
	vreplvei.w	$vr5, $vr5, 0
	vst	$vr6, $sp, 128                  # 16-byte Folded Spill
	vreplvei.w	$vr6, $vr6, 0
	vst	$vr7, $sp, 144                  # 16-byte Folded Spill
	vreplvei.w	$vr7, $vr7, 0
	vst	$vr8, $sp, 160                  # 16-byte Folded Spill
	vreplvei.w	$vr8, $vr8, 0
	vst	$vr9, $sp, 176                  # 16-byte Folded Spill
	vreplvei.w	$vr9, $vr9, 0
	vst	$vr10, $sp, 192                 # 16-byte Folded Spill
	vreplvei.w	$vr10, $vr10, 0
	vst	$vr11, $sp, 208                 # 16-byte Folded Spill
	vreplvei.w	$vr11, $vr11, 0
	vst	$vr12, $sp, 224                 # 16-byte Folded Spill
	vreplvei.w	$vr12, $vr12, 0
	vst	$vr13, $sp, 240                 # 16-byte Folded Spill
	vreplvei.w	$vr13, $vr13, 0
	vst	$vr14, $sp, 256                 # 16-byte Folded Spill
	vreplvei.w	$vr14, $vr14, 0
	vst	$vr15, $sp, 272                 # 16-byte Folded Spill
	vreplvei.w	$vr15, $vr15, 0
	vst	$vr16, $sp, 288                 # 16-byte Folded Spill
	vreplvei.w	$vr16, $vr16, 0
	vst	$vr17, $sp, 304                 # 16-byte Folded Spill
	vreplvei.w	$vr17, $vr17, 0
	vst	$vr18, $sp, 320                 # 16-byte Folded Spill
	vreplvei.w	$vr18, $vr18, 0
	vst	$vr19, $sp, 368                 # 16-byte Folded Spill
	vreplvei.w	$vr19, $vr19, 0
	vst	$vr20, $sp, 384                 # 16-byte Folded Spill
	vreplvei.w	$vr20, $vr20, 0
	pcalau12i	$a2, %got_pc_hi20(n_dis)
	ld.d	$a2, $a2, %got_pc_lo12(n_dis)
	move	$a3, $zero
	ori	$a7, $zero, 2080
	ori	$t0, $zero, 2184
	ori	$t1, $zero, 2288
	ori	$t2, $zero, 2392
	ori	$t3, $zero, 2496
	ori	$t4, $zero, 2600
	addi.d	$t5, $sp, 408
	ori	$t6, $zero, 96
	.p2align	4, , 16
.LBB2_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr21, $a2, $a3
	add.d	$t7, $a2, $a3
	vsub.w	$vr21, $vr21, $vr26
	vld	$vr22, $t7, 104
	vffint.s.w	$vr21, $vr21
	vrepli.b	$vr23, 0
	vfmadd.s	$vr21, $vr21, $vr29, $vr23
	vsub.w	$vr22, $vr22, $vr26
	vld	$vr23, $t7, 208
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr21, $vr22, $vr30, $vr21
	vld	$vr22, $t7, 312
	vsub.w	$vr23, $vr23, $vr26
	vffint.s.w	$vr23, $vr23
	vfmadd.s	$vr21, $vr23, $vr31, $vr21
	vsub.w	$vr22, $vr22, $vr26
	vld	$vr23, $t7, 416
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr21, $vr22, $vr0, $vr21
	vld	$vr22, $t7, 520
	vsub.w	$vr23, $vr23, $vr26
	vffint.s.w	$vr23, $vr23
	vfmadd.s	$vr21, $vr23, $vr1, $vr21
	vsub.w	$vr22, $vr22, $vr26
	vld	$vr23, $t7, 624
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr21, $vr22, $vr2, $vr21
	vld	$vr22, $t7, 728
	vsub.w	$vr23, $vr23, $vr26
	vffint.s.w	$vr23, $vr23
	vfmadd.s	$vr21, $vr23, $vr3, $vr21
	vsub.w	$vr22, $vr22, $vr26
	vld	$vr23, $t7, 832
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr21, $vr22, $vr4, $vr21
	vld	$vr22, $t7, 936
	vsub.w	$vr23, $vr23, $vr26
	vffint.s.w	$vr23, $vr23
	vfmadd.s	$vr21, $vr23, $vr5, $vr21
	vsub.w	$vr22, $vr22, $vr26
	vld	$vr23, $t7, 1040
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr21, $vr22, $vr6, $vr21
	vld	$vr22, $t7, 1144
	vsub.w	$vr23, $vr23, $vr26
	vffint.s.w	$vr23, $vr23
	vfmadd.s	$vr21, $vr23, $vr7, $vr21
	vsub.w	$vr22, $vr22, $vr26
	vld	$vr23, $t7, 1248
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr21, $vr22, $vr8, $vr21
	vld	$vr22, $t7, 1352
	vsub.w	$vr23, $vr23, $vr26
	vffint.s.w	$vr23, $vr23
	vfmadd.s	$vr21, $vr23, $vr27, $vr21
	vsub.w	$vr22, $vr22, $vr26
	vld	$vr23, $t7, 1456
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr21, $vr22, $vr28, $vr21
	vld	$vr22, $t7, 1560
	vsub.w	$vr23, $vr23, $vr26
	vffint.s.w	$vr23, $vr23
	vfmadd.s	$vr21, $vr23, $vr9, $vr21
	vsub.w	$vr22, $vr22, $vr26
	vld	$vr23, $t7, 1664
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr21, $vr22, $vr10, $vr21
	vld	$vr22, $t7, 1768
	vsub.w	$vr23, $vr23, $vr26
	vffint.s.w	$vr23, $vr23
	vfmadd.s	$vr21, $vr23, $vr11, $vr21
	vsub.w	$vr22, $vr22, $vr26
	vld	$vr23, $t7, 1872
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr21, $vr22, $vr12, $vr21
	vld	$vr22, $t7, 1976
	vsub.w	$vr23, $vr23, $vr26
	vffint.s.w	$vr23, $vr23
	vfmadd.s	$vr21, $vr23, $vr13, $vr21
	vsub.w	$vr22, $vr22, $vr26
	vldx	$vr23, $t7, $a7
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr21, $vr22, $vr14, $vr21
	vldx	$vr22, $t7, $t0
	vsub.w	$vr23, $vr23, $vr26
	vffint.s.w	$vr23, $vr23
	vfmadd.s	$vr21, $vr23, $vr15, $vr21
	vsub.w	$vr22, $vr22, $vr26
	vldx	$vr23, $t7, $t1
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr21, $vr22, $vr16, $vr21
	vldx	$vr22, $t7, $t2
	vsub.w	$vr23, $vr23, $vr26
	vffint.s.w	$vr23, $vr23
	vfmadd.s	$vr21, $vr23, $vr17, $vr21
	vsub.w	$vr22, $vr22, $vr26
	vldx	$vr23, $t7, $t3
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr21, $vr22, $vr18, $vr21
	vldx	$vr22, $t7, $t4
	vsub.w	$vr23, $vr23, $vr26
	vffint.s.w	$vr23, $vr23
	vfmadd.s	$vr21, $vr23, $vr19, $vr21
	vsub.w	$vr22, $vr22, $vr26
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr21, $vr22, $vr20, $vr21
	vstx	$vr21, $a3, $t5
	addi.d	$a3, $a3, 16
	bne	$a3, $t6, .LBB2_8
# %bb.9:                                # %scalar.ph
	ld.w	$a3, $a2, 96
	sub.d	$a3, $a3, $a1
	movgr2fr.w	$fa0, $a3
	ld.w	$a3, $a2, 200
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fs2, $zero
	fmadd.s	$fa0, $fa0, $fs1, $fs2
	sub.d	$a3, $a3, $a1
	ld.w	$a7, $a2, 304
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa0, $fa1, $fs0, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 408
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr11, $sp, 16                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft3, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 512
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr9, $sp, 32                   # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft1, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 616
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr8, $sp, 48                   # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft0, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 720
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr7, $sp, 64                   # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa7, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 824
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr5, $sp, 80                   # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa5, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 928
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr3, $sp, 96                   # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa3, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1032
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr4, $sp, 112                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa4, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1136
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr6, $sp, 128                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa6, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1240
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr10, $sp, 144                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft2, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1344
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr13, $sp, 160                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft5, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1448
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr17, $sp, 336                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft9, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1552
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr16, $sp, 352                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft8, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1656
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr30, $sp, 176                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs6, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1760
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr29, $sp, 192                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs5, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1864
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr28, $sp, 208                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs4, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1968
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr27, $sp, 224                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs3, $fa0
	sub.d	$a3, $a7, $a1
	ori	$a7, $zero, 2072
	ldx.w	$a7, $a2, $a7
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr23, $sp, 240                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft15, $fa0
	sub.d	$a3, $a7, $a1
	ori	$a7, $zero, 2176
	ldx.w	$a7, $a2, $a7
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr22, $sp, 256                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft14, $fa0
	sub.d	$a3, $a7, $a1
	ori	$a7, $zero, 2280
	ldx.w	$a7, $a2, $a7
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr21, $sp, 272                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft13, $fa0
	sub.d	$a3, $a7, $a1
	ori	$a7, $zero, 2384
	ldx.w	$a7, $a2, $a7
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr20, $sp, 288                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft12, $fa0
	sub.d	$a3, $a7, $a1
	ori	$a7, $zero, 2488
	ldx.w	$a7, $a2, $a7
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr19, $sp, 304                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft11, $fa0
	sub.d	$a3, $a7, $a1
	ori	$a7, $zero, 2592
	ldx.w	$a7, $a2, $a7
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr18, $sp, 320                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft10, $fa0
	sub.d	$a3, $a7, $a1
	ori	$a7, $zero, 2696
	ldx.w	$a7, $a2, $a7
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr15, $sp, 368                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft7, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 100
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	vld	$vr14, $sp, 384                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft6, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 204
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa1, $fa1, $fs1, $fs2
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 308
	movgr2fr.w	$fa2, $a3
	ffint.s.w	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $fs0, $fa1
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 412
	movgr2fr.w	$fa2, $a3
	ffint.s.w	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $ft3, $fa1
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 516
	movgr2fr.w	$fa2, $a3
	ffint.s.w	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $ft1, $fa1
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 620
	movgr2fr.w	$fa2, $a3
	ffint.s.w	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $ft0, $fa1
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 724
	movgr2fr.w	$fa2, $a3
	ffint.s.w	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $fa7, $fa1
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 828
	movgr2fr.w	$fa2, $a3
	ffint.s.w	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $fa5, $fa1
	sub.d	$a3, $a7, $a1
	movgr2fr.w	$fa2, $a3
	ld.w	$a3, $a2, 932
	ffint.s.w	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	ld.w	$a7, $a2, 1036
	sub.d	$a3, $a3, $a1
	movgr2fr.w	$fa2, $a3
	ffint.s.w	$fa2, $fa2
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1140
	movgr2fr.w	$fa3, $a3
	ld.w	$a3, $a2, 1244
	fmadd.s	$fa4, $fa2, $fa4, $fa1
	sub.d	$a7, $a7, $a1
	movgr2fr.w	$fa5, $a7
	sub.d	$a3, $a3, $a1
	ld.w	$a7, $a2, 1348
	movgr2fr.w	$fa7, $a3
	ld.w	$a3, $a2, 1452
	ffint.s.w	$fa3, $fa3
	sub.d	$a7, $a7, $a1
	movgr2fr.w	$fa1, $a7
	sub.d	$a3, $a3, $a1
	ld.w	$a7, $a2, 1556
	movgr2fr.w	$fa2, $a3
	ld.w	$a3, $a2, 1660
	fmadd.s	$ft0, $fa3, $fa6, $fa4
	sub.d	$a7, $a7, $a1
	movgr2fr.w	$fa3, $a7
	sub.d	$a3, $a3, $a1
	ld.w	$a7, $a2, 1764
	movgr2fr.w	$fa4, $a3
	ld.w	$a3, $a2, 1868
	ffint.s.w	$ft1, $fa5
	sub.d	$a7, $a7, $a1
	movgr2fr.w	$fa5, $a7
	sub.d	$a3, $a3, $a1
	movgr2fr.w	$fa6, $a3
	ld.w	$a3, $a2, 1972
	ori	$a7, $zero, 2076
	ldx.w	$a7, $a2, $a7
	fmadd.s	$ft0, $ft1, $ft2, $ft0
	sub.d	$a3, $a3, $a1
	movgr2fr.w	$ft1, $a3
	sub.d	$a3, $a7, $a1
	movgr2fr.w	$ft2, $a3
	ori	$a3, $zero, 2180
	ldx.w	$a3, $a2, $a3
	ori	$a7, $zero, 2284
	ldx.w	$a7, $a2, $a7
	ffint.s.w	$fa7, $fa7
	sub.d	$a3, $a3, $a1
	movgr2fr.w	$ft3, $a3
	sub.d	$a3, $a7, $a1
	movgr2fr.w	$ft4, $a3
	ori	$a3, $zero, 2388
	ldx.w	$a3, $a2, $a3
	ori	$a7, $zero, 2492
	ldx.w	$a7, $a2, $a7
	fmadd.s	$fa7, $fa7, $ft5, $ft0
	sub.d	$a3, $a3, $a1
	movgr2fr.w	$ft0, $a3
	sub.d	$a3, $a7, $a1
	movgr2fr.w	$ft5, $a3
	ori	$a3, $zero, 2596
	ldx.w	$a3, $a2, $a3
	ori	$a7, $zero, 2700
	ldx.w	$a2, $a2, $a7
	fst.s	$fa0, $sp, 504
	ffint.s.w	$fa0, $fa1
	fmadd.s	$fa0, $fa0, $ft9, $fa7
	ffint.s.w	$fa1, $fa2
	fmadd.s	$fa0, $fa1, $ft8, $fa0
	ffint.s.w	$fa1, $fa3
	fmadd.s	$fa0, $fa1, $fs6, $fa0
	ffint.s.w	$fa1, $fa4
	fmadd.s	$fa0, $fa1, $fs5, $fa0
	ffint.s.w	$fa1, $fa5
	fmadd.s	$fa0, $fa1, $fs4, $fa0
	ffint.s.w	$fa1, $fa6
	fmadd.s	$fa0, $fa1, $fs3, $fa0
	ffint.s.w	$fa1, $ft1
	fmadd.s	$fa0, $fa1, $ft15, $fa0
	ffint.s.w	$fa1, $ft2
	fmadd.s	$fa0, $fa1, $ft14, $fa0
	ffint.s.w	$fa1, $ft3
	fmadd.s	$fa0, $fa1, $ft13, $fa0
	ffint.s.w	$fa1, $ft4
	fmadd.s	$fa0, $fa1, $ft12, $fa0
	ffint.s.w	$fa1, $ft0
	fmadd.s	$fa0, $fa1, $ft11, $fa0
	ffint.s.w	$fa1, $ft5
	fmadd.s	$fa0, $fa1, $ft10, $fa0
	sub.d	$a3, $a3, $a1
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa0, $fa1, $ft7, $fa0
	sub.d	$a1, $a2, $a1
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa0, $fa1, $ft6, $fa0
	fst.s	$fa0, $sp, 508
	addi.d	$a1, $sp, 408
	b	.LBB2_11
	.p2align	4, , 16
.LBB2_10:                               # %._crit_edge
                                        #   in Loop: Header=BB2_11 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a0, $a0, 4
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	beqz	$a4, .LBB2_14
.LBB2_11:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
	ld.d	$a7, $a6, 0
	ld.wu	$a2, $a7, 0
	addi.w	$a3, $a2, 0
	st.w	$zero, $a0, 0
	bltz	$a3, .LBB2_10
# %bb.12:                               # %.lr.ph
                                        #   in Loop: Header=BB2_11 Depth=1
	ld.d	$a3, $a5, 0
	addi.d	$a7, $a7, 4
	fmov.s	$fa0, $fs2
	.p2align	4, , 16
.LBB2_13:                               #   Parent Loop BB2_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a2, $a2, 2
	fldx.s	$fa1, $a2, $a1
	fld.s	$fa2, $a3, 0
	ld.wu	$a2, $a7, 0
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	fst.s	$fa0, $a0, 0
	addi.w	$t0, $a2, 0
	addi.d	$a3, $a3, 4
	addi.d	$a7, $a7, 4
	bgez	$t0, .LBB2_13
	b	.LBB2_10
.LBB2_14:
	fld.d	$fs7, $sp, 512                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 520                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 528                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 536                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 544                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 552                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 560                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 568                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 576                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 584                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 592
	ret
.Lfunc_end2:
	.size	match_calc, .Lfunc_end2-match_calc
                                        # -- End function
	.p2align	5                               # -- Begin function match_ribosum
	.type	match_ribosum,@function
match_ribosum:                          # @match_ribosum
# %bb.0:
	addi.d	$sp, $sp, -288
	st.d	$fp, $sp, 280                   # 8-byte Folded Spill
	st.d	$s0, $sp, 272                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 264                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 248                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 208                  # 8-byte Folded Spill
	beqz	$a7, .LBB3_7
# %bb.1:                                # %.preheader62.preheader
	move	$a7, $zero
	movgr2fr.w	$fa0, $zero
	ori	$t0, $zero, 148
	addi.w	$t1, $zero, -1
	lu32i.d	$t1, 0
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                #   in Loop: Header=BB3_3 Depth=1
	ld.d	$t2, $t6, 0
	slli.d	$t3, $t3, 2
	addi.d	$a7, $a7, 1
	stx.w	$t1, $t2, $t3
	beq	$a7, $a4, .LBB3_7
.LBB3_3:                                # %.preheader62
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	slli.d	$t2, $a7, 3
	ldx.d	$t2, $a2, $t2
	move	$t4, $zero
	move	$t5, $zero
	move	$t3, $zero
	alsl.d	$t7, $a7, $a5, 3
	alsl.d	$t6, $a7, $a6, 3
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_4:                                #   in Loop: Header=BB3_5 Depth=2
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 1
	beq	$t4, $t0, .LBB3_2
.LBB3_5:                                #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $t2, $t4
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_4
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=2
	ld.d	$t8, $t7, 0
	ld.d	$fp, $t6, 0
	slli.d	$s0, $t3, 2
	fstx.s	$fa1, $t8, $s0
	stx.w	$t5, $fp, $s0
	addi.w	$t3, $t3, 1
	b	.LBB3_4
.LBB3_7:                                # %.loopexit
	slli.d	$a2, $a3, 3
	ldx.d	$a1, $a1, $a2
	fld.s	$fa0, $a1, 0
	fst.s	$fa0, $sp, 52                   # 4-byte Folded Spill
	fld.s	$fa0, $a1, 4
	fst.s	$fa0, $sp, 48                   # 4-byte Folded Spill
	fld.s	$fa0, $a1, 8
	fst.s	$fa0, $sp, 44                   # 4-byte Folded Spill
	fld.s	$fa0, $a1, 12
	fst.s	$fa0, $sp, 40                   # 4-byte Folded Spill
	fld.s	$fa0, $a1, 16
	fst.s	$fa0, $sp, 36                   # 4-byte Folded Spill
	fld.s	$fa0, $a1, 20
	fst.s	$fa0, $sp, 32                   # 4-byte Folded Spill
	fld.s	$fa0, $a1, 24
	fst.s	$fa0, $sp, 28                   # 4-byte Folded Spill
	fld.s	$fa0, $a1, 28
	fst.s	$fa0, $sp, 24                   # 4-byte Folded Spill
	fld.s	$fa0, $a1, 32
	fst.s	$fa0, $sp, 20                   # 4-byte Folded Spill
	fld.s	$ft2, $a1, 36
	fld.s	$ft3, $a1, 40
	fld.s	$ft4, $a1, 44
	fld.s	$ft5, $a1, 48
	fld.s	$ft6, $a1, 52
	fld.s	$ft7, $a1, 56
	fld.s	$ft8, $a1, 60
	fld.s	$ft9, $a1, 64
	fld.s	$ft10, $a1, 68
	fld.s	$ft11, $a1, 72
	fld.s	$ft12, $a1, 76
	fld.s	$ft13, $a1, 80
	fld.s	$ft14, $a1, 84
	fld.s	$ft15, $a1, 88
	fld.s	$fs0, $a1, 92
	fld.s	$fs1, $a1, 96
	fld.s	$fs2, $a1, 100
	fld.s	$fs3, $a1, 104
	fld.s	$fs4, $a1, 108
	fld.s	$fs5, $a1, 112
	fld.s	$fs6, $a1, 116
	fld.s	$fs7, $a1, 120
	fld.s	$fa1, $a1, 124
	fld.s	$fa2, $a1, 128
	fld.s	$fa3, $a1, 132
	fld.s	$fa4, $a1, 136
	fld.s	$fa5, $a1, 140
	fld.s	$fa6, $a1, 144
	pcalau12i	$a1, %got_pc_hi20(ribosumdis)
	ld.d	$a1, $a1, %got_pc_lo12(ribosumdis)
	move	$a2, $zero
	addi.d	$a3, $sp, 56
	ori	$a7, $zero, 148
	.p2align	4, , 16
.LBB3_8:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$t1, $a1, $a2
	add.d	$t0, $a1, $a2
	movgr2fr.w	$fa0, $t1
	ffint.s.w	$fa7, $fa0
	ld.w	$t1, $t0, 148
	movgr2fr.w	$fa0, $zero
	fld.s	$ft0, $sp, 52                   # 4-byte Folded Reload
	fmadd.s	$fa7, $fa7, $ft0, $fa0
	ld.w	$t2, $t0, 296
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fld.s	$ft1, $sp, 48                   # 4-byte Folded Reload
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	movgr2fr.w	$ft0, $t2
	ld.w	$t1, $t0, 444
	ffint.s.w	$ft0, $ft0
	fld.s	$ft1, $sp, 44                   # 4-byte Folded Reload
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	ld.w	$t2, $t0, 592
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fld.s	$ft1, $sp, 40                   # 4-byte Folded Reload
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	movgr2fr.w	$ft0, $t2
	ld.w	$t1, $t0, 740
	ffint.s.w	$ft0, $ft0
	fld.s	$ft1, $sp, 36                   # 4-byte Folded Reload
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	ld.w	$t2, $t0, 888
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fld.s	$ft1, $sp, 32                   # 4-byte Folded Reload
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	movgr2fr.w	$ft0, $t2
	ld.w	$t1, $t0, 1036
	ffint.s.w	$ft0, $ft0
	fld.s	$ft1, $sp, 28                   # 4-byte Folded Reload
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	ld.w	$t2, $t0, 1184
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fld.s	$ft1, $sp, 24                   # 4-byte Folded Reload
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	movgr2fr.w	$ft0, $t2
	ld.w	$t1, $t0, 1332
	ffint.s.w	$ft0, $ft0
	fld.s	$ft1, $sp, 20                   # 4-byte Folded Reload
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	ld.w	$t2, $t0, 1480
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft2, $fa7
	movgr2fr.w	$ft0, $t2
	ld.w	$t1, $t0, 1628
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft3, $fa7
	ld.w	$t2, $t0, 1776
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft4, $fa7
	movgr2fr.w	$ft0, $t2
	ld.w	$t1, $t0, 1924
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft5, $fa7
	ldptr.w	$t2, $t0, 2072
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft6, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 2220
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft7, $fa7
	ldptr.w	$t2, $t0, 2368
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft8, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 2516
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft9, $fa7
	ldptr.w	$t2, $t0, 2664
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft10, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 2812
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft11, $fa7
	ldptr.w	$t2, $t0, 2960
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft12, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 3108
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft13, $fa7
	ldptr.w	$t2, $t0, 3256
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft14, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 3404
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft15, $fa7
	ldptr.w	$t2, $t0, 3552
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fs0, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 3700
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fs1, $fa7
	ldptr.w	$t2, $t0, 3848
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fs2, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 3996
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fs3, $fa7
	ldptr.w	$t2, $t0, 4144
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fs4, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 4292
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fs5, $fa7
	ldptr.w	$t2, $t0, 4440
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fs6, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 4588
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fs7, $fa7
	ldptr.w	$t2, $t0, 4736
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fa1, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 4884
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fa2, $fa7
	ldptr.w	$t2, $t0, 5032
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fa3, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 5180
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fa4, $fa7
	ldptr.w	$t0, $t0, 5328
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fa5, $fa7
	movgr2fr.w	$ft0, $t0
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fa6, $fa7
	fstx.s	$fa7, $a2, $a3
	addi.d	$a2, $a2, 4
	bne	$a2, $a7, .LBB3_8
# %bb.9:                                # %.preheader.preheader
	addi.d	$a1, $sp, 56
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_10:                               # %._crit_edge
                                        #   in Loop: Header=BB3_11 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a0, $a0, 4
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	beqz	$a4, .LBB3_14
.LBB3_11:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_13 Depth 2
	ld.d	$a7, $a6, 0
	ld.wu	$a2, $a7, 0
	addi.w	$a3, $a2, 0
	st.w	$zero, $a0, 0
	bltz	$a3, .LBB3_10
# %bb.12:                               # %.lr.ph
                                        #   in Loop: Header=BB3_11 Depth=1
	ld.d	$a3, $a5, 0
	addi.d	$a7, $a7, 4
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB3_13:                               #   Parent Loop BB3_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a2, $a2, 2
	fldx.s	$fa2, $a2, $a1
	fld.s	$fa3, $a3, 0
	ld.wu	$a2, $a7, 0
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fst.s	$fa1, $a0, 0
	addi.w	$t0, $a2, 0
	addi.d	$a3, $a3, 4
	addi.d	$a7, $a7, 4
	bgez	$t0, .LBB3_13
	b	.LBB3_10
.LBB3_14:
	fld.d	$fs7, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 264                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.Lfunc_end3:
	.size	match_ribosum, .Lfunc_end3-match_ribosum
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"i = %d / %d\n"
	.size	.L.str, 13

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"bug! hairetsu ga kowareta!\n"
	.size	.L.str.1, 28

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"j = %d / %d\n"
	.size	.L.str.2, 13

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"hairetsu ga kowareta (end of MSalignmm) !\n"
	.size	.L.str.3, 43

	.type	reccycle,@object                # @reccycle
	.local	reccycle
	.comm	reccycle,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
