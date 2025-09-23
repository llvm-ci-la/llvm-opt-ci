	.file	"Lalignmm.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function Lalignmm_hmout
.LCPI0_0:
	.word	0xcb189680                      # float -1.0E+7
	.text
	.globl	Lalignmm_hmout
	.p2align	5
	.type	Lalignmm_hmout,@function
Lalignmm_hmout:                         # @Lalignmm_hmout
# %bb.0:
	addi.d	$sp, $sp, -560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s1, $sp, 528                   # 8-byte Folded Spill
	st.d	$s2, $sp, 520                   # 8-byte Folded Spill
	st.d	$s3, $sp, 512                   # 8-byte Folded Spill
	st.d	$s4, $sp, 504                   # 8-byte Folded Spill
	st.d	$s5, $sp, 496                   # 8-byte Folded Spill
	st.d	$s6, $sp, 488                   # 8-byte Folded Spill
	st.d	$s7, $sp, 480                   # 8-byte Folded Spill
	st.d	$s8, $sp, 472                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 464                  # 8-byte Folded Spill
	move	$s6, $a7
	move	$s8, $a5
	move	$s4, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(RNApenalty)
	ld.d	$a0, $a0, %got_pc_lo12(RNApenalty)
	ld.w	$s5, $a0, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 128                   # 8-byte Folded Spill
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
	move	$a0, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$a0, $s8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a0, $zero, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.w	$s3, $s7, 102
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	addi.w	$s0, $s0, 102
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
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
	st.d	$s7, $sp, 168                   # 8-byte Folded Spill
	addi.w	$a0, $s7, 0
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	blez	$s4, .LBB0_4
# %bb.1:                                # %.lr.ph
	move	$fp, $zero
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_253
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addi.w	$fp, $fp, 1
	addi.d	$s4, $s4, -1
	addi.d	$s7, $s7, 8
	bnez	$s4, .LBB0_2
.LBB0_4:                                # %.preheader184
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.w	$fp, $a0, 0
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	blez	$s8, .LBB0_8
# %bb.5:                                # %.lr.ph191
	move	$s4, $zero
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB0_254
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	addi.w	$s4, $s4, 1
	addi.d	$s7, $s7, -1
	addi.d	$s8, $s8, 8
	bnez	$s7, .LBB0_6
.LBB0_8:                                # %._crit_edge
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	movgr2fr.w	$fa0, $s5
	ffint.s.w	$fs0, $fa0
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	move	$a0, $s4
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$s3, $sp, 456                   # 8-byte Folded Reload
	move	$a3, $s3
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	move	$a4, $s5
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
	beqz	$s6, .LBB0_10
# %bb.9:
	ld.d	$s4, $sp, 576
	ld.d	$s5, $sp, 560
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s6
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s1
	move	$a4, $fp
	move	$a5, $s5
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	move	$a1, $s5
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s4
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s1
	move	$a4, $fp
	move	$a5, $s4
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	fcvt.d.s	$fa0, $fs0
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	bgtz	$s3, .LBB0_11
	b	.LBB0_17
.LBB0_10:
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s4
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s4
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	fcvt.d.s	$fa0, $fs0
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	blez	$s3, .LBB0_17
.LBB0_11:                               # %.lr.ph194
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	ori	$a1, $zero, 8
	bltu	$a0, $a1, .LBB0_14
# %bb.12:                               # %vector.memcheck
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a3, 2
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	bgeu	$a2, $a1, .LBB0_67
# %bb.13:                               # %vector.memcheck
	alsl.d	$a1, $a0, $a2, 2
	bgeu	$a3, $a1, .LBB0_67
.LBB0_14:
	move	$a1, $zero
.LBB0_15:                               # %scalar.ph.preheader
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 2
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	sub.d	$a0, $a0, $a1
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB0_16:                               # %scalar.ph
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
	bnez	$a0, .LBB0_16
.LBB0_17:                               # %.preheader183
	blez	$fp, .LBB0_24
# %bb.18:                               # %.lr.ph196
	bstrpick.d	$a0, $s1, 30, 0
	ori	$a1, $zero, 8
	bltu	$a0, $a1, .LBB0_21
# %bb.19:                               # %vector.memcheck258
	alsl.d	$a1, $a0, $a5, 2
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	bgeu	$a2, $a1, .LBB0_70
# %bb.20:                               # %vector.memcheck258
	alsl.d	$a1, $a0, $a2, 2
	bgeu	$a5, $a1, .LBB0_70
.LBB0_21:
	move	$a1, $zero
.LBB0_22:                               # %scalar.ph264.preheader
	alsl.d	$a2, $a1, $a5, 2
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	sub.d	$a0, $a0, $a1
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB0_23:                               # %scalar.ph264
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
	bnez	$a0, .LBB0_23
.LBB0_24:                               # %._crit_edge197
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	pcalau12i	$a0, %pc_hi20(reccycle)
	ld.w	$a1, $a0, %pc_lo12(reccycle)
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	st.d	$a3, $a2, 8
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	st.d	$a3, $a2, 16
	st.d	$a5, $a2, 24
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(reccycle)
	blez	$fp, .LBB0_57
# %bb.25:
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	blez	$s5, .LBB0_33
# %bb.26:                               # %.lr.ph.preheader.i
	ori	$a2, $zero, 8
	move	$a1, $zero
	bltu	$s5, $a2, .LBB0_31
# %bb.27:                               # %.lr.ph.preheader.i
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	sub.d	$a2, $fp, $a2
	ori	$a3, $zero, 64
	bltu	$a2, $a3, .LBB0_31
# %bb.28:                               # %vector.ph282
	bstrpick.d	$a1, $s5, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $fp, 32
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_29:                               # %vector.body285
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB0_29
# %bb.30:                               # %middle.block290
	beq	$a1, $s5, .LBB0_33
.LBB0_31:                               # %.lr.ph.i.preheader
	sub.d	$a2, $s5, $a1
	alsl.d	$a3, $a1, $fp, 3
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a4, 3
	.p2align	4, , 16
.LBB0_32:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB0_32
.LBB0_33:                               # %.preheader13.i
	blez	$s7, .LBB0_41
# %bb.34:                               # %.lr.ph17.preheader.i
	ori	$a2, $zero, 8
	move	$a1, $zero
	bltu	$s7, $a2, .LBB0_39
# %bb.35:                               # %.lr.ph17.preheader.i
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a2, $a0, $a2
	ori	$a3, $zero, 64
	bltu	$a2, $a3, .LBB0_39
# %bb.36:                               # %vector.ph297
	bstrpick.d	$a1, $s7, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a0, 32
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a3, $a3, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_37:                               # %vector.body300
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB0_37
# %bb.38:                               # %middle.block305
	beq	$a1, $s7, .LBB0_41
.LBB0_39:                               # %.lr.ph17.i.preheader
	sub.d	$a2, $s7, $a1
	alsl.d	$a3, $a1, $a0, 3
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a4, 3
	.p2align	4, , 16
.LBB0_40:                               # %.lr.ph17.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB0_40
.LBB0_41:                               # %._crit_edge.i
	ori	$a1, $zero, 10
	blt	$s3, $a1, .LBB0_66
# %bb.42:                               # %._crit_edge.i
	addi.w	$a2, $s1, 0
	ori	$a1, $zero, 9
	bgeu	$a1, $a2, .LBB0_66
# %bb.43:                               # %iter.check
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	addi.w	$s2, $a0, 100
	move	$s8, $a2
	addi.w	$s3, $s1, 100
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$fp, $a0
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
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	sltu	$a0, $s3, $s2
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	addi.w	$s7, $a0, 2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 26
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ori	$a1, $zero, 26
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	move	$a0, $s2
	move	$a1, $s3
	move	$s3, $fp
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ori	$a7, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s4
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	move	$a1, $s1
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $zero
	ld.d	$a4, $sp, 456                   # 8-byte Folded Reload
	move	$a5, $s5
	move	$a6, $s6
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $zero
	st.d	$s8, $sp, 416                   # 8-byte Folded Spill
	move	$a4, $s8
	st.d	$s5, $sp, 328                   # 8-byte Folded Spill
	move	$a5, $s5
	st.d	$s6, $sp, 320                   # 8-byte Folded Spill
	move	$a6, $s6
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	addi.w	$a1, $a0, 1
	ori	$a0, $zero, 2
	slt	$a2, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$t7, $a2, $a0
	ori	$a0, $zero, 4
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	addi.d	$s5, $a5, 4
	blt	$a0, $a1, .LBB0_73
# %bb.44:
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
.LBB0_45:                               # %.lr.ph20.i.preheader
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 360                   # 8-byte Folded Reload
.LBB0_46:                               # %.lr.ph20.i.preheader
	sub.d	$a0, $t7, $fp
	alsl.d	$a1, $fp, $s4, 2
	alsl.d	$a2, $fp, $a6, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB0_47:                               # %.lr.ph20.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB0_47
.LBB0_48:                               # %iter.check362
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	addi.w	$t4, $a0, -1
	addi.w	$t3, $t0, -1
	addi.w	$t6, $t0, 1
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t6, $a1
	or	$a0, $a1, $a0
	addi.d	$a1, $a0, -1
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	ori	$a3, $zero, 4
	alsl.d	$a1, $a0, $s3, 2
	addi.d	$a4, $s7, 4
	st.d	$a4, $sp, 256                   # 8-byte Folded Spill
	blt	$a3, $t6, .LBB0_77
.LBB0_49:                               # %.lr.ph22.i.preheader
	sub.d	$a3, $a0, $a2
	alsl.d	$a4, $a2, $s3, 2
	alsl.d	$a2, $a2, $a7, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB0_50:                               # %.lr.ph22.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s7, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB0_50
.LBB0_51:                               # %.lr.ph27.preheader.i
	fld.s	$fa0, $s4, 0
	ld.d	$a2, $t2, 0
	ld.d	$t5, $sp, 584
	fst.s	$fa0, $a2, 0
	slli.d	$a3, $t7, 2
	ori	$a4, $zero, 4
	ori	$a5, $zero, 8
	.p2align	4, , 16
.LBB0_52:                               # %.lr.ph27.i
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s4, $a4
	ldx.d	$a6, $t2, $a5
	fst.s	$fa0, $a6, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 8
	bne	$a3, $a4, .LBB0_52
# %bb.53:                               # %iter.check404
	ori	$a3, $zero, 5
	ori	$a4, $zero, 1
	blt	$t6, $a3, .LBB0_88
# %bb.54:                               # %iter.check404
	sub.d	$a3, $a2, $s3
	ori	$a5, $zero, 63
	bgeu	$a5, $a3, .LBB0_88
# %bb.55:                               # %vector.main.loop.iter.check406
	ori	$a3, $zero, 17
	bge	$t6, $a3, .LBB0_81
# %bb.56:
	move	$a3, $zero
	b	.LBB0_85
.LBB0_57:                               # %.preheader1.i
	blez	$s5, .LBB0_60
# %bb.58:                               # %.lr.ph114.i
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	move	$s0, $s4
	move	$s1, $s5
	.p2align	4, , 16
.LBB0_59:                               # =>This Inner Loop Header: Depth=1
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
	bnez	$s1, .LBB0_59
.LBB0_60:                               # %.preheader.i
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	blez	$s7, .LBB0_175
# %bb.61:                               # %.lr.ph121.i
	move	$s0, $zero
	ori	$s1, $zero, 45
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_62:                               # %._crit_edge119.i
                                        #   in Loop: Header=BB0_63 Depth=1
	addi.d	$s0, $s0, 1
	ld.d	$s3, $sp, 456                   # 8-byte Folded Reload
	beq	$s0, $s7, .LBB0_175
.LBB0_63:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_65 Depth 2
	slli.d	$a0, $s0, 3
	ldx.d	$a0, $s6, $a0
	st.b	$zero, $a0, 0
	blez	$s3, .LBB0_62
# %bb.64:                               # %.lr.ph118.i.preheader
                                        #   in Loop: Header=BB0_63 Depth=1
	alsl.d	$s2, $s0, $s6, 3
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_65:                               # %.lr.ph118.i
                                        #   Parent Loop BB0_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $s2, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	stx.h	$s1, $fp, $a0
	bnez	$s3, .LBB0_65
	b	.LBB0_62
.LBB0_66:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_175
.LBB0_67:                               # %vector.ph
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 3
	slli.d	$a1, $a1, 3
	xvreplve0.d	$xr1, $xr0
	xvldi	$xr2, -912
	xvldi	$xr3, -928
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_68:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a2, 0
	xvpermi.q	$xr5, $xr4, 1
	vreplvei.w	$vr6, $vr5, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr5, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr5, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr5, $vr5, 3
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr7, $xr5, 3
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr5, 1
	vreplvei.w	$vr5, $vr4, 2
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr6, $xr5, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
	xvld	$xr5, $a3, 0
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a2, 0
	xvpermi.q	$xr4, $xr5, 1
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr4, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr7, $xr4, 3
	vreplvei.w	$vr4, $vr5, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr5, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr4, 1
	vreplvei.w	$vr4, $vr5, 2
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 2
	vreplvei.w	$vr4, $vr5, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	addi.d	$a2, $a2, 32
	bnez	$a4, .LBB0_68
# %bb.69:                               # %middle.block
	beq	$a0, $a1, .LBB0_17
	b	.LBB0_15
.LBB0_70:                               # %vector.ph266
	bstrpick.d	$a1, $s1, 30, 3
	slli.d	$a1, $a1, 3
	xvreplve0.d	$xr1, $xr0
	xvldi	$xr2, -912
	xvldi	$xr3, -928
	move	$a3, $a5
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_71:                               # %vector.body271
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a2, 0
	xvpermi.q	$xr5, $xr4, 1
	vreplvei.w	$vr6, $vr5, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr5, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr5, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr5, $vr5, 3
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr7, $xr5, 3
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr5, 1
	vreplvei.w	$vr5, $vr4, 2
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr6, $xr5, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
	xvld	$xr5, $a3, 0
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a2, 0
	xvpermi.q	$xr4, $xr5, 1
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr4, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr7, $xr4, 3
	vreplvei.w	$vr4, $vr5, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr5, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr4, 1
	vreplvei.w	$vr4, $vr5, 2
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 2
	vreplvei.w	$vr4, $vr5, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	addi.d	$a2, $a2, 32
	bnez	$a4, .LBB0_71
# %bb.72:                               # %middle.block276
	beq	$a0, $a1, .LBB0_24
	b	.LBB0_22
.LBB0_73:                               # %vector.memcheck308
	addi.d	$a0, $s4, 4
	alsl.d	$a2, $t7, $s4, 2
	sltu	$a3, $a0, $s5
	sltu	$a4, $a5, $a2
	and	$a3, $a3, $a4
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	bnez	$a3, .LBB0_45
# %bb.74:                               # %vector.memcheck308
	alsl.d	$a3, $t7, $a6, 2
	addi.d	$a3, $a3, -4
	sltu	$a0, $a0, $a3
	sltu	$a2, $a6, $a2
	and	$a0, $a0, $a2
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 360                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_46
# %bb.75:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 17
	addi.d	$a0, $t7, -1
	bge	$a1, $a2, .LBB0_207
# %bb.76:
	move	$a1, $zero
	b	.LBB0_211
.LBB0_77:                               # %vector.memcheck347
	addi.d	$a3, $s3, 4
	sltu	$a4, $a3, $a4
	sltu	$a5, $s7, $a1
	and	$a4, $a4, $a5
	bnez	$a4, .LBB0_49
# %bb.78:                               # %vector.memcheck347
	alsl.d	$a4, $a0, $a7, 2
	addi.d	$a4, $a4, -4
	sltu	$a3, $a3, $a4
	sltu	$a4, $a7, $a1
	and	$a3, $a3, $a4
	bnez	$a3, .LBB0_49
# %bb.79:                               # %vector.main.loop.iter.check364
	ori	$a2, $zero, 17
	bge	$t6, $a2, .LBB0_214
# %bb.80:
	move	$a3, $zero
	b	.LBB0_218
.LBB0_81:                               # %vector.ph407
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	bstrins.d	$a3, $zero, 3, 0
	addi.d	$a4, $s3, 36
	addi.d	$a5, $a2, 36
	move	$a6, $a3
	.p2align	4, , 16
.LBB0_82:                               # %vector.body410
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB0_82
# %bb.83:                               # %middle.block415
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	beq	$a4, $a3, .LBB0_90
# %bb.84:                               # %vec.epilog.iter.check420
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	andi	$a4, $a4, 12
	beqz	$a4, .LBB0_249
.LBB0_85:                               # %vec.epilog.ph419
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	move	$a5, $a4
	bstrins.d	$a5, $zero, 1, 0
	ori	$a6, $zero, 1
	bstrins.d	$a4, $a6, 1, 0
	slli.d	$a6, $a3, 2
	addi.d	$a7, $a6, 4
	add.d	$a6, $s3, $a7
	add.d	$a7, $a2, $a7
	sub.d	$a3, $a3, $a5
	.p2align	4, , 16
.LBB0_86:                               # %vec.epilog.vector.body425
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vst	$vr0, $a7, 0
	addi.d	$a6, $a6, 16
	addi.d	$a3, $a3, 4
	addi.d	$a7, $a7, 16
	bnez	$a3, .LBB0_86
# %bb.87:                               # %vec.epilog.middle.block430
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	beq	$a3, $a5, .LBB0_90
.LBB0_88:                               # %.lr.ph29.i.preheader
	sub.d	$a3, $a0, $a4
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a4, $a4, $s3, 2
	.p2align	4, , 16
.LBB0_89:                               # %.lr.ph29.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a4, 0
	fst.s	$fa0, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, 4
	bnez	$a3, .LBB0_89
.LBB0_90:                               # %iter.check449
	ori	$a2, $zero, 1
	ori	$a3, $zero, 4
	addi.d	$t2, $t1, 4
	blt	$a3, $t6, .LBB0_184
.LBB0_91:                               # %vec.epilog.scalar.ph465.preheader
	sub.d	$a1, $a0, $a2
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 2
	alsl.d	$a4, $a2, $t1, 2
	alsl.d	$a2, $a2, $s3, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB0_92:                               # %vec.epilog.scalar.ph465
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
	bnez	$a1, .LBB0_92
.LBB0_93:                               # %.lr.ph50.i
	st.d	$t2, $sp, 248                   # 8-byte Folded Spill
	st.d	$t6, $sp, 232                   # 8-byte Folded Spill
	st.d	$t5, $sp, 16                    # 8-byte Folded Spill
	st.d	$t4, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 408                   # 8-byte Folded Spill
	slli.d	$s8, $t3, 2
	fldx.s	$fa0, $s3, $s8
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
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
	st.d	$t3, $sp, 184                   # 8-byte Folded Spill
	alsl.d	$a1, $t3, $t1, 2
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	bstrpick.d	$a1, $t0, 30, 0
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	bstrpick.d	$s0, $a2, 31, 0
	slli.d	$s1, $a0, 2
	ori	$s2, $zero, 1
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	move	$a0, $s3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s8, $sp, 400                   # 8-byte Folded Spill
	b	.LBB0_95
	.p2align	4, , 16
.LBB0_94:                               # %._crit_edge45.i
                                        #   in Loop: Header=BB0_95 Depth=1
	fldx.s	$fa0, $s6, $s8
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	fstx.s	$fa0, $a2, $a0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	fld.s	$fa0, $a0, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	addi.d	$s2, $s2, 1
	fstx.s	$fa0, $a1, $a0
	move	$a0, $s6
	move	$t7, $fp
	beq	$s2, $fp, .LBB0_107
.LBB0_95:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_105 Depth 2
                                        #     Child Loop BB0_101 Depth 2
	move	$fp, $t7
	addi.d	$s4, $s2, -1
	slli.d	$a1, $s4, 2
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$fa0, $s8, $a1
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	fst.s	$fa0, $a0, 0
	move	$a0, $s3
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	move	$a3, $s2
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s2, 2
	fldx.s	$fa0, $s8, $a0
	move	$s6, $s3
	fst.s	$fa0, $s3, 0
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	fldx.s	$fa0, $a3, $a0
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	fst.s	$fa0, $ra, 0
	ld.d	$t8, $sp, 336                   # 8-byte Folded Reload
	bne	$s2, $s0, .LBB0_97
# %bb.96:                               #   in Loop: Header=BB0_95 Depth=1
	fst.s	$fa0, $t8, 0
.LBB0_97:                               # %.lr.ph44.i
                                        #   in Loop: Header=BB0_95 Depth=1
	ld.d	$s8, $sp, 448                   # 8-byte Folded Reload
	fld.s	$fa0, $s8, 0
	fld.s	$fa1, $s7, 4
	slli.d	$a1, $s2, 3
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	ldx.d	$a4, $a2, $a1
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	alsl.d	$a2, $s2, $a3, 2
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a3, $s4, $a3, 2
	ld.d	$t3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 216                   # 8-byte Folded Reload
	bne	$s2, $s0, .LBB0_103
# %bb.98:                               # %.lr.ph44.split.us.i.preheader
                                        #   in Loop: Header=BB0_95 Depth=1
	move	$a5, $zero
	move	$a7, $zero
	ori	$a6, $zero, 4
	ld.d	$s8, $sp, 400                   # 8-byte Folded Reload
	b	.LBB0_101
	.p2align	4, , 16
.LBB0_99:                               #   in Loop: Header=BB0_101 Depth=2
	fstx.s	$fa6, $ra, $a6
	ld.d	$t0, $sp, 440                   # 8-byte Folded Reload
	stx.w	$s4, $t0, $a6
	move	$t0, $s4
.LBB0_100:                              #   in Loop: Header=BB0_101 Depth=2
	fadd.s	$fa5, $fa0, $fa5
	fcmp.clt.s	$fcc0, $fa1, $fa5
	fadd.s	$fa3, $fa3, $fa4
	fldx.s	$fa4, $s6, $a6
	fsel	$fa5, $fa1, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $fa5, $fa3
	fsel	$fa3, $fa5, $fa3, $fcc0
	fadd.s	$fa3, $fa3, $fa4
	fstx.s	$fa3, $s6, $a6
	fstx.s	$fa3, $a4, $a6
	fldx.s	$fa3, $ra, $a6
	fadd.s	$fa1, $fa1, $fa2
	fcmp.cult.s	$fcc0, $fa1, $fa0
	fstx.s	$fa3, $a1, $a6
	fldx.s	$fa2, $s6, $a6
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
	beq	$s1, $a6, .LBB0_94
.LBB0_101:                              # %.lr.ph44.split.us.i
                                        #   Parent Loop BB0_95 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $sp, 448                   # 8-byte Folded Reload
	add.d	$t0, $t0, $a6
	fld.s	$fa1, $t0, -4
	add.d	$t0, $t3, $a6
	fld.s	$fa5, $t0, -4
	fld.s	$fa6, $a2, 0
	fldx.s	$fa3, $ra, $a6
	fldx.s	$fa2, $s7, $a6
	fld.s	$fa4, $a3, 0
	fadd.s	$fa6, $fa1, $fa6
	fcmp.cle.s	$fcc0, $fa3, $fa6
	bcnez	$fcc0, .LBB0_99
# %bb.102:                              # %.lr.ph44.split.us._crit_edge.i
                                        #   in Loop: Header=BB0_101 Depth=2
	ld.d	$t0, $sp, 440                   # 8-byte Folded Reload
	ldx.w	$t0, $t0, $a6
	b	.LBB0_100
	.p2align	4, , 16
.LBB0_103:                              # %.lr.ph44.split.i.preheader
                                        #   in Loop: Header=BB0_95 Depth=1
	addi.d	$a5, $s6, 4
	addi.d	$a6, $a1, 4
	addi.d	$a4, $a4, 4
	move	$a7, $t3
	ld.d	$t0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	move	$t4, $s8
	ld.d	$s8, $sp, 400                   # 8-byte Folded Reload
	b	.LBB0_105
	.p2align	4, , 16
.LBB0_104:                              #   in Loop: Header=BB0_105 Depth=2
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
	beqz	$t1, .LBB0_94
.LBB0_105:                              # %.lr.ph44.split.i
                                        #   Parent Loop BB0_95 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $t4, 0
	fld.s	$fa4, $a7, 0
	fld.s	$fa6, $a2, 0
	fld.s	$fa3, $t2, 0
	fld.s	$fa2, $t0, 0
	fld.s	$fa5, $a3, 0
	fadd.s	$fa6, $fa1, $fa6
	fcmp.cult.s	$fcc0, $fa6, $fa3
	bcnez	$fcc0, .LBB0_104
# %bb.106:                              #   in Loop: Header=BB0_105 Depth=2
	fst.s	$fa6, $t2, 0
	st.w	$s4, $t3, 0
	b	.LBB0_104
.LBB0_107:                              # %iter.check497
	ori	$a7, $zero, 1
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	move	$a0, $s4
	ld.d	$s0, $sp, 368                   # 8-byte Folded Reload
	move	$a1, $s0
	ld.d	$fp, $sp, 376                   # 8-byte Folded Reload
	move	$a2, $fp
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 328                   # 8-byte Folded Reload
	move	$a5, $s1
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	move	$a6, $s2
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$a0, $s6
	move	$a1, $fp
	move	$a2, $s0
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	move	$a3, $fp
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	move	$a5, $s1
	move	$a6, $s2
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t3, $fp
	bstrpick.d	$s2, $fp, 31, 0
	ori	$a0, $zero, 3
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a2, $s2, $a4, 2
	bltu	$a0, $fp, .LBB0_188
# %bb.108:
	move	$a0, $zero
	ld.d	$t1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
.LBB0_109:                              # %vec.epilog.scalar.ph515.preheader
	alsl.d	$a1, $a0, $s4, 2
	sub.d	$a3, $s2, $a0
	alsl.d	$a0, $a0, $a5, 2
	addi.d	$a0, $a0, 4
	.p2align	4, , 16
.LBB0_110:                              # %vec.epilog.scalar.ph515
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
	bnez	$a3, .LBB0_110
.LBB0_111:                              # %iter.check548
	alsl.d	$a0, $t7, $t1, 2
	ori	$a3, $zero, 4
	move	$s3, $s6
	alsl.d	$a1, $t7, $s6, 2
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	bltu	$a3, $a4, .LBB0_192
# %bb.112:
	move	$a3, $zero
.LBB0_113:                              # %vec.epilog.scalar.ph566.preheader
	alsl.d	$a4, $a3, $s3, 2
	sub.d	$a5, $t7, $a3
	alsl.d	$a3, $a3, $s7, 2
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB0_114:                              # %vec.epilog.scalar.ph566
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
	bnez	$a5, .LBB0_114
.LBB0_115:                              # %.lr.ph60.i.preheader
	move	$a3, $s2
	move	$a4, $a7
	.p2align	4, , 16
.LBB0_116:                              # %.lr.ph60.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $s5, 0
	fldx.s	$fa2, $a5, $s8
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	fstx.s	$fa0, $a5, $s8
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, -1
	addi.d	$s5, $s5, 4
	bnez	$a3, .LBB0_116
# %bb.117:                              # %iter.check598
	slli.d	$a2, $s2, 3
	ldx.d	$a2, $a7, $a2
	ori	$a3, $zero, 4
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	bltu	$a3, $a4, .LBB0_196
# %bb.118:
	move	$a3, $zero
.LBB0_119:                              # %vec.epilog.scalar.ph616.preheader
	alsl.d	$a2, $a3, $a2, 2
	sub.d	$a4, $t7, $a3
	alsl.d	$a3, $a3, $s7, 2
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB0_120:                              # %vec.epilog.scalar.ph616
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
	bnez	$a4, .LBB0_120
.LBB0_121:                              # %.lr.ph64.i
	slti	$a3, $t7, 1
	ori	$a2, $zero, 1
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $t7, $a3
	or	$a5, $a3, $a4
	nor	$a3, $a5, $zero
	add.w	$a4, $a3, $t2
	ori	$a6, $zero, 23
	addi.d	$a3, $a0, -4
	bgeu	$a4, $a6, .LBB0_200
# %bb.122:
	move	$a0, $t7
	ld.d	$t8, $sp, 296                   # 8-byte Folded Reload
.LBB0_123:                              # %scalar.ph647.preheader
	addi.d	$a1, $a0, 1
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 2
	alsl.d	$a5, $a0, $t6, 2
	addi.d	$a5, $a5, -4
	alsl.d	$a0, $a0, $s3, 2
	.p2align	4, , 16
.LBB0_124:                              # %scalar.ph647
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a5, 0
	st.w	$t3, $a4, 0
	addi.w	$a1, $a1, -1
	addi.d	$a4, $a4, -4
	addi.d	$a5, $a5, -4
	addi.d	$a0, $a0, -4
	blt	$a2, $a1, .LBB0_124
.LBB0_125:                              # %.lr.ph104.i
	move	$s8, $zero
	move	$a5, $zero
	move	$a6, $zero
	addi.w	$a0, $zero, -2
	lu32i.d	$a0, 0
	add.d	$a0, $t2, $a0
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$s0, $a0, $t1, 2
	slli.d	$a4, $a0, 2
	alsl.d	$a1, $t8, $t6, 2
	addi.d	$s1, $a1, -8
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a1, $t8, $a1, 2
	addi.d	$a1, $a1, -8
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	slt	$a1, $a2, $a3
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	alsl.d	$s5, $a0, $t4, 2
	alsl.d	$s7, $a0, $t5, 2
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a0, $a4, 4
	add.d	$s6, $fp, $a0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.d	$fp, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI0_0)
	addi.d	$a0, $t7, -2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $t4, 8
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	movgr2fr.w	$fa4, $zero
	move	$a4, $s2
	b	.LBB0_128
	.p2align	4, , 16
.LBB0_126:                              #   in Loop: Header=BB0_128 Depth=1
	move	$a0, $t7
	move	$a1, $a5
	move	$a2, $s8
.LBB0_127:                              #   in Loop: Header=BB0_128 Depth=1
	st.d	$t5, $sp, 288                   # 8-byte Folded Spill
	move	$s8, $a2
	move	$a5, $a1
	move	$a6, $a0
	move	$s3, $t6
	ori	$a0, $zero, 1
	bge	$a0, $s2, .LBB0_159
.LBB0_128:                              # %.lr.ph74.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_130 Depth 2
                                        #     Child Loop BB0_144 Depth 2
                                        #     Child Loop BB0_146 Depth 2
	st.d	$a6, $sp, 240                   # 8-byte Folded Spill
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	xvst	$xr4, $sp, 256                  # 32-byte Folded Spill
	st.d	$t3, $sp, 304                   # 8-byte Folded Spill
	move	$s2, $a4
	slli.d	$a0, $a4, 2
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	addi.d	$s4, $a4, -1
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	fstx.s	$fa0, $s3, $a1
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	move	$a3, $s4
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t2, $sp, 360                   # 8-byte Folded Reload
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	move	$a0, $zero
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	fstx.s	$fa0, $a3, $a2
	alsl.d	$a1, $ra, $s3, 2
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	fldx.s	$fa0, $s3, $a2
	fld.s	$fa1, $s0, 0
	addi.d	$a2, $a1, -4
	move	$t6, $a3
	alsl.d	$a1, $ra, $a3, 2
	addi.d	$a3, $a1, -8
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a5, $s2, $a1, 2
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a4, $s4, $a1, 2
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$t7, $a1
	bstrpick.d	$a1, $a1, 31, 0
	xor	$a1, $s4, $a1
	sltui	$a6, $a1, 1
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
	bstrpick.d	$a1, $t5, 31, 0
	xor	$a7, $s2, $a1
	move	$s3, $s4
	slli.d	$t0, $s4, 3
	ld.d	$t1, $sp, 312                   # 8-byte Folded Reload
	ldx.d	$t1, $t1, $t0
	ldx.d	$t0, $t2, $t0
	sltui	$a7, $a7, 1
	or	$a6, $a6, $a7
	ld.d	$t2, $sp, 176                   # 8-byte Folded Reload
	add.d	$a7, $t1, $t2
	add.d	$t0, $t0, $t2
	ld.d	$t8, $sp, 184                   # 8-byte Folded Reload
	move	$t1, $t8
	move	$t2, $t8
	b	.LBB0_130
	.p2align	4, , 16
.LBB0_129:                              #   in Loop: Header=BB0_130 Depth=2
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
	blez	$t1, .LBB0_140
.LBB0_130:                              #   Parent Loop BB0_128 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $fp, $a0
	fldx.s	$fa2, $a2, $a0
	fadd.s	$fa1, $fa0, $fa1
	fldx.s	$fa4, $s1, $a0
	fld.s	$fa5, $a5, 0
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fldx.s	$fa3, $s0, $a0
	fadd.s	$fa5, $fa4, $fa5
	fcmp.cule.s	$fcc1, $fa5, $fa1
	bcnez	$fcc1, .LBB0_132
# %bb.131:                              #   in Loop: Header=BB0_130 Depth=2
	ld.d	$t3, $sp, 456                   # 8-byte Folded Reload
	ldx.w	$t3, $t3, $a0
	fmov.s	$fa1, $fa5
	move	$t4, $t1
	fld.s	$fa5, $a4, 0
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa4
	bceqz	$fcc0, .LBB0_133
	b	.LBB0_134
	.p2align	4, , 16
.LBB0_132:                              #   in Loop: Header=BB0_130 Depth=2
	movcf2gr	$t3, $fcc0
	masknez	$t4, $t1, $t3
	maskeqz	$t3, $t2, $t3
	or	$t4, $t3, $t4
	move	$t3, $s2
	fld.s	$fa5, $a4, 0
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa4
	bcnez	$fcc0, .LBB0_134
.LBB0_133:                              #   in Loop: Header=BB0_130 Depth=2
	fstx.s	$fa5, $s1, $a0
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	stx.w	$s2, $s4, $a0
.LBB0_134:                              #   in Loop: Header=BB0_130 Depth=2
	beqz	$a6, .LBB0_137
# %bb.135:                              #   in Loop: Header=BB0_130 Depth=2
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	stx.w	$t3, $s4, $a0
	ld.d	$t3, $sp, 432                   # 8-byte Folded Reload
	stx.w	$t4, $t3, $a0
	beq	$s3, $a1, .LBB0_138
.LBB0_136:                              #   in Loop: Header=BB0_130 Depth=2
	fadd.s	$fa2, $fa2, $fa3
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s2, $a1, .LBB0_129
	b	.LBB0_139
	.p2align	4, , 16
.LBB0_137:                              #   in Loop: Header=BB0_130 Depth=2
	bne	$s3, $a1, .LBB0_136
.LBB0_138:                              #   in Loop: Header=BB0_130 Depth=2
	fldx.s	$fa4, $s5, $a0
	fadd.s	$fa4, $fa1, $fa4
	fstx.s	$fa4, $s5, $a0
	fldx.s	$fa4, $s1, $a0
	fldx.s	$fa5, $s6, $a0
	fadd.s	$fa4, $fa4, $fa5
	fstx.s	$fa4, $s6, $a0
	fadd.s	$fa2, $fa2, $fa3
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s2, $a1, .LBB0_129
.LBB0_139:                              #   in Loop: Header=BB0_130 Depth=2
	fldx.s	$fa2, $s7, $a0
	fadd.s	$fa2, $fa0, $fa2
	fstx.s	$fa2, $s7, $a0
	b	.LBB0_129
	.p2align	4, , 16
.LBB0_140:                              # %._crit_edge75.i
                                        #   in Loop: Header=BB0_128 Depth=1
	fldx.s	$fa0, $a2, $a0
	fld.s	$fa1, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fs0, $fa0
	fsel	$fs0, $fs0, $fa0, $fcc0
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 304                   # 8-byte Folded Reload
	move	$a4, $s3
	bne	$s3, $a1, .LBB0_142
# %bb.141:                              #   in Loop: Header=BB0_128 Depth=1
	fld.s	$fa0, $t0, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $t0, 0
.LBB0_142:                              #   in Loop: Header=BB0_128 Depth=1
	addi.w	$a0, $t5, -1
	ld.d	$a6, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 416                   # 8-byte Folded Reload
	xvld	$xr4, $sp, 256                  # 32-byte Folded Reload
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	bne	$s2, $a1, .LBB0_154
# %bb.143:                              # %.lr.ph82.preheader.i
                                        #   in Loop: Header=BB0_128 Depth=1
	fld.s	$fa4, $a7, 4
	move	$s8, $zero
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_144:                              # %.lr.ph82.i
                                        #   Parent Loop BB0_128 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a2, 0
	fcmp.clt.s	$fcc1, $fa4, $fa0
	fsel	$fa4, $fa4, $fa0, $fcc1
	movcf2gr	$a4, $fcc1
	masknez	$a5, $s8, $a4
	maskeqz	$a4, $a1, $a4
	or	$s8, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB0_144
# %bb.145:                              # %.lr.ph88.i.preheader
                                        #   in Loop: Header=BB0_128 Depth=1
	move	$a1, $zero
	move	$a2, $t0
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_146:                              # %.lr.ph88.i
                                        #   Parent Loop BB0_128 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a2, 0
	fcmp.clt.s	$fcc1, $fa4, $fa0
	fsel	$fa4, $fa4, $fa0, $fcc1
	movcf2gr	$a4, $fcc1
	masknez	$a5, $s8, $a4
	maskeqz	$a4, $a1, $a4
	or	$s8, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB0_146
# %bb.147:                              # %._crit_edge89.i
                                        #   in Loop: Header=BB0_128 Depth=1
	slli.d	$a1, $s8, 2
	fldx.s	$fa0, $a7, $a1
	addi.w	$a5, $s8, -1
	blez	$s8, .LBB0_152
# %bb.148:                              #   in Loop: Header=BB0_128 Depth=1
	slli.d	$a2, $a5, 2
	fldx.s	$fa1, $a6, $a2
	fcmp.cule.s	$fcc1, $fa1, $fa0
	move	$a2, $a5
	move	$a4, $s3
	bcnez	$fcc1, .LBB0_150
# %bb.149:                              #   in Loop: Header=BB0_128 Depth=1
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a1
	fmov.s	$fa0, $fa1
.LBB0_150:                              #   in Loop: Header=BB0_128 Depth=1
	fldx.s	$fa1, $t0, $a1
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bcnez	$fcc1, .LBB0_153
.LBB0_151:                              #   in Loop: Header=BB0_128 Depth=1
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ldx.w	$t7, $a2, $a1
	b	.LBB0_154
.LBB0_152:                              #   in Loop: Header=BB0_128 Depth=1
	move	$a2, $a5
	move	$a4, $s3
	fldx.s	$fa1, $t0, $a1
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bceqz	$fcc1, .LBB0_151
.LBB0_153:                              #   in Loop: Header=BB0_128 Depth=1
	move	$t7, $a0
	move	$a5, $a2
.LBB0_154:                              #   in Loop: Header=BB0_128 Depth=1
	movcf2gr	$a1, $fcc0
	masknez	$a2, $t2, $a1
	maskeqz	$a1, $s2, $a1
	bstrpick.d	$a3, $t7, 31, 0
	or	$t3, $a1, $a2
	bne	$a4, $a3, .LBB0_126
# %bb.155:                              #   in Loop: Header=BB0_128 Depth=1
	beqz	$s8, .LBB0_158
# %bb.156:                              #   in Loop: Header=BB0_128 Depth=1
	move	$a1, $t8
	move	$a2, $t1
	bge	$s8, $t1, .LBB0_127
# %bb.157:                              #   in Loop: Header=BB0_128 Depth=1
	slli.d	$a0, $a5, 2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$t5, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	move	$a0, $t7
	move	$a1, $a5
	b	.LBB0_127
.LBB0_158:                              #   in Loop: Header=BB0_128 Depth=1
	move	$a1, $zero
	addi.w	$a0, $t3, -1
	ori	$a2, $zero, 1
	move	$t5, $t3
	b	.LBB0_127
.LBB0_159:                              # %.preheader2.preheader.i
	move	$t6, $zero
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a4, 30, 4
	slli.d	$a2, $a2, 4
	xvreplve0.w	$xr0, $xr4
	andi	$a3, $a4, 12
	bstrpick.d	$a4, $a4, 30, 2
	slli.d	$a4, $a4, 2
	vreplvei.w	$vr1, $vr4, 0
	sub.d	$a5, $zero, $a4
	ori	$a6, $zero, 4
	ori	$a7, $zero, 64
	ori	$t0, $zero, 16
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 360                   # 8-byte Folded Reload
	b	.LBB0_161
	.p2align	4, , 16
.LBB0_160:                              # %._crit_edge109.i
                                        #   in Loop: Header=BB0_161 Depth=1
	addi.d	$t6, $t6, 1
	beq	$t6, $a1, .LBB0_174
.LBB0_161:                              # %iter.check671
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_166 Depth 2
                                        #     Child Loop BB0_170 Depth 2
                                        #     Child Loop BB0_173 Depth 2
	slli.d	$t2, $t6, 3
	ldx.d	$t1, $fp, $t2
	ldx.d	$t2, $t8, $t2
	move	$t4, $zero
	bltu	$ra, $a6, .LBB0_172
# %bb.162:                              # %iter.check671
                                        #   in Loop: Header=BB0_161 Depth=1
	sub.d	$t3, $t2, $t1
	bltu	$t3, $a7, .LBB0_172
# %bb.163:                              # %vector.main.loop.iter.check673
                                        #   in Loop: Header=BB0_161 Depth=1
	bgeu	$ra, $t0, .LBB0_165
# %bb.164:                              #   in Loop: Header=BB0_161 Depth=1
	move	$t5, $zero
	b	.LBB0_169
	.p2align	4, , 16
.LBB0_165:                              # %vector.body679.preheader
                                        #   in Loop: Header=BB0_161 Depth=1
	addi.d	$t3, $t2, 32
	addi.d	$t4, $t1, 32
	move	$t5, $a2
	.p2align	4, , 16
.LBB0_166:                              # %vector.body679
                                        #   Parent Loop BB0_161 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $t4, -32
	xvld	$xr3, $t4, 0
	xvfdiv.s	$xr2, $xr2, $xr0
	xvfdiv.s	$xr3, $xr3, $xr0
	xvst	$xr2, $t3, -32
	xvst	$xr3, $t3, 0
	addi.d	$t5, $t5, -16
	addi.d	$t3, $t3, 64
	addi.d	$t4, $t4, 64
	bnez	$t5, .LBB0_166
# %bb.167:                              # %middle.block684
                                        #   in Loop: Header=BB0_161 Depth=1
	beq	$ra, $a2, .LBB0_160
# %bb.168:                              # %vec.epilog.iter.check689
                                        #   in Loop: Header=BB0_161 Depth=1
	move	$t5, $a2
	move	$t4, $a2
	beqz	$a3, .LBB0_172
.LBB0_169:                              # %vec.epilog.ph688
                                        #   in Loop: Header=BB0_161 Depth=1
	add.d	$t3, $a5, $t5
	alsl.d	$t4, $t5, $t2, 2
	alsl.d	$t5, $t5, $t1, 2
	.p2align	4, , 16
.LBB0_170:                              # %vec.epilog.vector.body696
                                        #   Parent Loop BB0_161 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $t5, 0
	vfdiv.s	$vr2, $vr2, $vr1
	vst	$vr2, $t4, 0
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, 16
	bnez	$t3, .LBB0_170
# %bb.171:                              # %vec.epilog.middle.block700
                                        #   in Loop: Header=BB0_161 Depth=1
	move	$t4, $a4
	beq	$ra, $a4, .LBB0_160
.LBB0_172:                              # %vec.epilog.scalar.ph687.preheader
                                        #   in Loop: Header=BB0_161 Depth=1
	sub.d	$t3, $ra, $t4
	alsl.d	$t2, $t4, $t2, 2
	alsl.d	$t1, $t4, $t1, 2
	.p2align	4, , 16
.LBB0_173:                              # %vec.epilog.scalar.ph687
                                        #   Parent Loop BB0_161 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $t1, 0
	fdiv.s	$fa2, $fa2, $fa4
	fst.s	$fa2, $t2, 0
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 4
	bnez	$t3, .LBB0_173
	b	.LBB0_160
.LBB0_174:                              # %._crit_edge112.i
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
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
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
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
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
.LBB0_175:                              # %MSalignmm_rec.exit
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
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
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	blez	$s5, .LBB0_179
# %bb.176:                              # %.lr.ph199
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	addi.w	$s1, $a0, 0
	move	$s2, $s5
	.p2align	4, , 16
.LBB0_177:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB0_256
# %bb.178:                              #   in Loop: Header=BB0_177 Depth=1
	addi.w	$s0, $s0, 1
	addi.d	$s2, $s2, -1
	addi.d	$s4, $s4, 8
	bnez	$s2, .LBB0_177
.LBB0_179:                              # %.preheader
	blez	$s7, .LBB0_183
# %bb.180:                              # %.lr.ph201
	move	$s0, $zero
	addi.w	$fp, $fp, 0
	move	$s1, $s7
	.p2align	4, , 16
.LBB0_181:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB0_257
# %bb.182:                              #   in Loop: Header=BB0_181 Depth=1
	addi.w	$s0, $s0, 1
	addi.d	$s1, $s1, -1
	addi.d	$s8, $s8, 8
	bnez	$s1, .LBB0_181
.LBB0_183:                              # %._crit_edge202
	movgr2fr.w	$fa0, $zero
	fld.d	$fs0, $sp, 464                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.LBB0_184:                              # %vector.memcheck434
	alsl.d	$a3, $a0, $t1, 2
	addi.d	$a1, $a1, -4
	sltu	$a1, $t2, $a1
	sltu	$a4, $s3, $a3
	and	$a1, $a1, $a4
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	bnez	$a1, .LBB0_91
# %bb.185:                              # %vector.memcheck434
	addi.d	$a1, $a4, 8
	sltu	$a1, $t2, $a1
	sltu	$a3, $s5, $a3
	and	$a1, $a1, $a3
	bnez	$a1, .LBB0_91
# %bb.186:                              # %vector.main.loop.iter.check451
	ori	$a1, $zero, 17
	bge	$t6, $a1, .LBB0_221
# %bb.187:
	move	$a1, $zero
	b	.LBB0_225
.LBB0_188:                              # %vector.memcheck483
	slli.d	$a0, $s2, 2
	alsl.d	$a1, $s2, $s4, 2
	addi.d	$a3, $a0, 4
	add.d	$a0, $a4, $a3
	sltu	$a0, $s4, $a0
	sltu	$a4, $a2, $a1
	and	$a4, $a0, $a4
	move	$a0, $zero
	ld.d	$t1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	bnez	$a4, .LBB0_205
# %bb.189:                              # %vector.memcheck483
	add.d	$a3, $a5, $a3
	sltu	$a3, $s4, $a3
	sltu	$a1, $s5, $a1
	and	$a1, $a3, $a1
	ld.d	$t5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 184                   # 8-byte Folded Reload
	bnez	$a1, .LBB0_109
# %bb.190:                              # %vector.main.loop.iter.check499
	ori	$a0, $zero, 16
	bgeu	$t3, $a0, .LBB0_228
# %bb.191:
	move	$a0, $zero
	b	.LBB0_232
.LBB0_192:                              # %vector.memcheck532
	addi.d	$a4, $s8, 4
	add.d	$a3, $t1, $a4
	sltu	$a3, $s3, $a3
	sltu	$a5, $a0, $a1
	and	$a5, $a3, $a5
	move	$a3, $zero
	bnez	$a5, .LBB0_113
# %bb.193:                              # %vector.memcheck532
	addi.d	$a5, $s7, 4
	add.d	$a4, $s7, $a4
	sltu	$a4, $s3, $a4
	sltu	$a5, $a5, $a1
	and	$a4, $a4, $a5
	bnez	$a4, .LBB0_113
# %bb.194:                              # %vector.main.loop.iter.check550
	ori	$a3, $zero, 17
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	bgeu	$a4, $a3, .LBB0_235
# %bb.195:
	move	$a3, $zero
	b	.LBB0_239
.LBB0_196:                              # %vector.memcheck583
	alsl.d	$a4, $t7, $a2, 2
	addi.d	$a5, $s8, 4
	add.d	$a3, $t1, $a5
	sltu	$a3, $a2, $a3
	sltu	$a6, $a0, $a4
	and	$a6, $a3, $a6
	move	$a3, $zero
	bnez	$a6, .LBB0_119
# %bb.197:                              # %vector.memcheck583
	addi.d	$a6, $s7, 4
	add.d	$a5, $s7, $a5
	sltu	$a5, $a2, $a5
	sltu	$a4, $a6, $a4
	and	$a4, $a5, $a4
	bnez	$a4, .LBB0_119
# %bb.198:                              # %vector.main.loop.iter.check600
	ori	$a3, $zero, 17
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	bgeu	$a4, $a3, .LBB0_242
# %bb.199:
	move	$a3, $zero
	b	.LBB0_246
.LBB0_200:                              # %vector.memcheck633
	sub.d	$a5, $a5, $t2
	nor	$a5, $a5, $zero
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	sub.d	$a6, $s8, $a5
	add.d	$a5, $a6, $t6
	addi.d	$a5, $a5, -4
	add.d	$a6, $s3, $a6
	addi.d	$a1, $a1, 4
	sltu	$a1, $a5, $a1
	ld.d	$t0, $sp, 432                   # 8-byte Folded Reload
	sltu	$a6, $a6, $t0
	and	$a1, $a1, $a6
	ld.d	$t8, $sp, 296                   # 8-byte Folded Reload
	bnez	$a1, .LBB0_206
# %bb.201:                              # %vector.memcheck633
	sltu	$a0, $a5, $a0
	sltu	$a1, $a3, $t0
	and	$a1, $a0, $a1
	move	$a0, $t7
	bnez	$a1, .LBB0_123
# %bb.202:                              # %vector.ph649
	bstrpick.d	$a0, $a4, 31, 0
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 32, 3
	slli.d	$a4, $a0, 3
	sub.d	$a0, $t7, $a4
	xvreplgr2vr.w	$xr0, $t3
	xvldrepl.w	$xr1, $a3, 0
	addi.d	$a7, $s8, -28
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a7
	addi.d	$a6, $t0, -32
	add.d	$a7, $s3, $a7
	move	$t0, $a4
	.p2align	4, , 16
.LBB0_203:                              # %vector.body654
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a7, 0
	xvfadd.s	$xr2, $xr2, $xr1
	xvst	$xr2, $a6, 0
	xvst	$xr0, $a5, 0
	addi.d	$t0, $t0, -8
	addi.d	$a5, $a5, -32
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB0_203
# %bb.204:                              # %middle.block663
	bne	$a1, $a4, .LBB0_123
	b	.LBB0_125
.LBB0_205:
	ld.d	$t5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 184                   # 8-byte Folded Reload
	b	.LBB0_109
.LBB0_206:
	move	$a0, $t7
	b	.LBB0_123
.LBB0_207:                              # %vector.ph323
	move	$a1, $a0
	xvldrepl.w	$xr0, $a5, 0
	bstrins.d	$a1, $zero, 3, 0
	addi.d	$a2, $a6, 32
	addi.d	$a3, $s4, 36
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_208:                              # %vector.body326
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a2, -32
	xvld	$xr2, $a2, 0
	xvld	$xr3, $a3, -32
	xvld	$xr4, $a3, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a3, -32
	xvst	$xr2, $a3, 0
	addi.d	$a2, $a2, 64
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB0_208
# %bb.209:                              # %middle.block335
	beq	$a0, $a1, .LBB0_48
# %bb.210:                              # %vec.epilog.iter.check
	andi	$a2, $a0, 12
	beqz	$a2, .LBB0_250
.LBB0_211:                              # %vec.epilog.ph
	move	$a2, $a0
	bstrins.d	$a2, $zero, 1, 0
	ori	$a3, $zero, 1
	move	$fp, $a0
	bstrins.d	$fp, $a3, 1, 0
	vldrepl.w	$vr0, $a5, 0
	alsl.d	$a3, $a1, $a6, 2
	alsl.d	$a4, $a1, $s4, 2
	addi.d	$a4, $a4, 4
	sub.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB0_212:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, 0
	vld	$vr2, $a4, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, 16
	bnez	$a1, .LBB0_212
# %bb.213:                              # %vec.epilog.middle.block
	bne	$a0, $a2, .LBB0_46
	b	.LBB0_48
.LBB0_214:                              # %vector.ph365
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	xvldrepl.w	$xr0, $s7, 0
	bstrins.d	$a3, $zero, 3, 0
	addi.d	$a2, $a7, 32
	addi.d	$a4, $s3, 36
	move	$a5, $a3
	.p2align	4, , 16
.LBB0_215:                              # %vector.body368
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a2, -32
	xvld	$xr2, $a2, 0
	xvld	$xr3, $a4, -32
	xvld	$xr4, $a4, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a2, $a2, 64
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_215
# %bb.216:                              # %middle.block377
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB0_51
# %bb.217:                              # %vec.epilog.iter.check382
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	andi	$a2, $a2, 12
	beqz	$a2, .LBB0_251
.LBB0_218:                              # %vec.epilog.ph381
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	bstrins.d	$a2, $a5, 1, 0
	vldrepl.w	$vr0, $s7, 0
	alsl.d	$a5, $a3, $a7, 2
	alsl.d	$a6, $a3, $s3, 2
	addi.d	$a6, $a6, 4
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB0_219:                              # %vec.epilog.vector.body387
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, 0
	vld	$vr2, $a6, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a6, 0
	addi.d	$a5, $a5, 16
	addi.d	$a3, $a3, 4
	addi.d	$a6, $a6, 16
	bnez	$a3, .LBB0_219
# %bb.220:                              # %vec.epilog.middle.block395
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	bne	$a3, $a4, .LBB0_49
	b	.LBB0_51
.LBB0_221:                              # %vector.ph452
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	bstrins.d	$a1, $zero, 3, 0
	xvldrepl.w	$xr0, $s5, 0
	addi.d	$a2, $s3, 32
	addi.d	$a3, $t1, 36
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 36
	xvrepli.b	$xr1, 0
	move	$a5, $a1
	.p2align	4, , 16
.LBB0_222:                              # %vector.body455
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a2, -32
	xvld	$xr3, $a2, 0
	xvfadd.s	$xr2, $xr2, $xr0
	xvfadd.s	$xr3, $xr3, $xr0
	xvst	$xr2, $a3, -32
	xvst	$xr3, $a3, 0
	xvst	$xr1, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_222
# %bb.223:                              # %middle.block462
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	beq	$a2, $a1, .LBB0_93
# %bb.224:                              # %vec.epilog.iter.check467
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	andi	$a2, $a2, 12
	beqz	$a2, .LBB0_252
.LBB0_225:                              # %vec.epilog.ph466
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	move	$a3, $a2
	bstrins.d	$a3, $zero, 1, 0
	ori	$a4, $zero, 1
	bstrins.d	$a2, $a4, 1, 0
	vldrepl.w	$vr0, $s5, 0
	slli.d	$a5, $a1, 2
	alsl.d	$a4, $a1, $s3, 2
	addi.d	$a6, $a5, 4
	add.d	$a5, $t1, $a6
	ld.d	$a7, $sp, 440                   # 8-byte Folded Reload
	add.d	$a6, $a7, $a6
	sub.d	$a1, $a1, $a3
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB0_226:                              # %vec.epilog.vector.body472
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $a5, 0
	vst	$vr1, $a6, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$a1, $a1, 4
	addi.d	$a6, $a6, 16
	bnez	$a1, .LBB0_226
# %bb.227:                              # %vec.epilog.middle.block479
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	bne	$a1, $a3, .LBB0_91
	b	.LBB0_93
.LBB0_228:                              # %vector.ph500
	bstrpick.d	$a0, $s2, 30, 4
	xvldrepl.w	$xr0, $a2, 0
	slli.d	$a0, $a0, 4
	addi.d	$a1, $a5, 36
	addi.d	$a3, $s4, 32
	move	$a4, $a0
	.p2align	4, , 16
.LBB0_229:                              # %vector.body503
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a1, -32
	xvld	$xr2, $a1, 0
	xvld	$xr3, $a3, -32
	xvld	$xr4, $a3, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a3, -32
	xvst	$xr2, $a3, 0
	addi.d	$a1, $a1, 64
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB0_229
# %bb.230:                              # %middle.block512
	beq	$a0, $s2, .LBB0_111
# %bb.231:                              # %vec.epilog.iter.check517
	andi	$a1, $s2, 12
	beqz	$a1, .LBB0_109
.LBB0_232:                              # %vec.epilog.ph516
	move	$a4, $a0
	bstrpick.d	$a0, $s2, 30, 2
	slli.d	$a0, $a0, 2
	vldrepl.w	$vr0, $a2, 0
	alsl.d	$a1, $a4, $a5, 2
	addi.d	$a1, $a1, 4
	sub.d	$a3, $a4, $a0
	alsl.d	$a4, $a4, $s4, 2
	.p2align	4, , 16
.LBB0_233:                              # %vec.epilog.vector.body522
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a1, 0
	vld	$vr2, $a4, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a4, 0
	addi.d	$a1, $a1, 16
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	bnez	$a3, .LBB0_233
# %bb.234:                              # %vec.epilog.middle.block529
	bne	$a0, $s2, .LBB0_109
	b	.LBB0_111
.LBB0_235:                              # %vector.ph551
	bstrpick.d	$a3, $t7, 30, 4
	xvldrepl.w	$xr0, $a0, 0
	slli.d	$a3, $a3, 4
	addi.d	$a4, $s7, 36
	addi.d	$a5, $s3, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB0_236:                              # %vector.body554
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a4, -32
	xvld	$xr2, $a4, 0
	xvld	$xr3, $a5, -32
	xvld	$xr4, $a5, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a5, -32
	xvst	$xr2, $a5, 0
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB0_236
# %bb.237:                              # %middle.block563
	beq	$a3, $t7, .LBB0_115
# %bb.238:                              # %vec.epilog.iter.check568
	andi	$a4, $t7, 12
	beqz	$a4, .LBB0_113
.LBB0_239:                              # %vec.epilog.ph567
	move	$a6, $a3
	bstrpick.d	$a3, $t7, 30, 2
	slli.d	$a3, $a3, 2
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a4, $a6, $s7, 2
	addi.d	$a4, $a4, 4
	sub.d	$a5, $a6, $a3
	alsl.d	$a6, $a6, $s3, 2
	.p2align	4, , 16
.LBB0_240:                              # %vec.epilog.vector.body573
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vld	$vr2, $a6, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a6, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB0_240
# %bb.241:                              # %vec.epilog.middle.block580
	bne	$a3, $t7, .LBB0_113
	b	.LBB0_115
.LBB0_242:                              # %vector.ph601
	bstrpick.d	$a3, $t7, 30, 4
	xvldrepl.w	$xr0, $a0, 0
	slli.d	$a3, $a3, 4
	addi.d	$a4, $s7, 36
	addi.d	$a5, $a2, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB0_243:                              # %vector.body604
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a4, -32
	xvld	$xr2, $a4, 0
	xvld	$xr3, $a5, -32
	xvld	$xr4, $a5, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvfadd.s	$xr2, $xr2, $xr4
	xvst	$xr1, $a5, -32
	xvst	$xr2, $a5, 0
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB0_243
# %bb.244:                              # %middle.block613
	beq	$a3, $t7, .LBB0_121
# %bb.245:                              # %vec.epilog.iter.check618
	andi	$a4, $t7, 12
	beqz	$a4, .LBB0_119
.LBB0_246:                              # %vec.epilog.ph617
	move	$a6, $a3
	bstrpick.d	$a3, $t7, 30, 2
	slli.d	$a3, $a3, 2
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a4, $a6, $s7, 2
	addi.d	$a4, $a4, 4
	sub.d	$a5, $a6, $a3
	alsl.d	$a6, $a6, $a2, 2
	.p2align	4, , 16
.LBB0_247:                              # %vec.epilog.vector.body623
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vld	$vr2, $a6, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr1, $vr2
	vst	$vr1, $a6, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB0_247
# %bb.248:                              # %vec.epilog.middle.block630
	bne	$a3, $t7, .LBB0_119
	b	.LBB0_121
.LBB0_249:
	addi.d	$a4, $a3, 1
	b	.LBB0_88
.LBB0_250:
	addi.d	$fp, $a1, 1
	b	.LBB0_46
.LBB0_251:
	addi.d	$a2, $a3, 1
	b	.LBB0_49
.LBB0_252:
	addi.d	$a2, $a1, 1
	b	.LBB0_91
.LBB0_253:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $fp
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	b	.LBB0_255
.LBB0_254:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
.LBB0_255:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_256:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s0
	move	$a3, $s5
	b	.LBB0_258
.LBB0_257:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s0
	move	$a3, $s7
.LBB0_258:
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
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function Lalign2m2m_hmout
.LCPI1_0:
	.word	0xcb189680                      # float -1.0E+7
	.text
	.globl	Lalign2m2m_hmout
	.p2align	5
	.type	Lalign2m2m_hmout,@function
Lalign2m2m_hmout:                       # @Lalign2m2m_hmout
# %bb.0:
	addi.d	$sp, $sp, -560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s1, $sp, 528                   # 8-byte Folded Spill
	st.d	$s2, $sp, 520                   # 8-byte Folded Spill
	st.d	$s3, $sp, 512                   # 8-byte Folded Spill
	st.d	$s4, $sp, 504                   # 8-byte Folded Spill
	st.d	$s5, $sp, 496                   # 8-byte Folded Spill
	st.d	$s6, $sp, 488                   # 8-byte Folded Spill
	st.d	$s7, $sp, 480                   # 8-byte Folded Spill
	st.d	$s8, $sp, 472                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 464                  # 8-byte Folded Spill
	ld.d	$s0, $sp, 568
	ld.d	$s3, $sp, 560
	move	$s1, $a7
	move	$s2, $a6
	st.d	$a5, $sp, 456                   # 8-byte Folded Spill
	move	$s5, $a4
	st.d	$a3, $sp, 448                   # 8-byte Folded Spill
	move	$s7, $a2
	move	$fp, $a1
	move	$s8, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	ld.w	$s6, $a0, 0
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
	move	$s4, $a0
	add.d	$a0, $s8, $a0
	addi.w	$fp, $a0, 200
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
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
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	addi.w	$fp, $s4, 102
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
	st.d	$s0, $sp, 424                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ori	$a1, $zero, 39
	st.d	$fp, $sp, 440                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	st.d	$s8, $sp, 160                   # 8-byte Folded Spill
	addi.w	$s4, $s8, 0
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	blez	$s3, .LBB1_4
# %bb.1:                                # %.lr.ph
	move	$fp, $zero
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB1_254
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	addi.w	$fp, $fp, 1
	addi.d	$s8, $s8, -1
	addi.d	$s0, $s0, 8
	bnez	$s8, .LBB1_2
.LBB1_4:                                # %.preheader188
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.w	$fp, $a0, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	blez	$a0, .LBB1_8
# %bb.5:                                # %.lr.ph195
	move	$s8, $zero
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_255
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=1
	addi.w	$s8, $s8, 1
	addi.d	$s0, $s0, -1
	addi.d	$s3, $s3, 8
	bnez	$s0, .LBB1_6
.LBB1_8:                                # %._crit_edge
	ld.d	$s8, $sp, 584
	movgr2fr.w	$fa0, $s6
	ffint.s.w	$fs0, $fa0
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $s7
	move	$a2, $s5
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	move	$a4, $s2
	move	$a5, $s4
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	move	$a6, $s5
	pcaddu18i	$ra, %call36(cpmx_ribosum)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $s6
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	move	$a4, $s1
	move	$a5, $fp
	move	$s3, $s1
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	move	$a6, $s1
	pcaddu18i	$ra, %call36(cpmx_ribosum)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB1_10
# %bb.9:
	ld.d	$a0, $sp, 608
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	move	$s7, $s4
	ld.d	$s4, $sp, 592
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s7
	move	$a5, $s8
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $s3
	move	$a4, $fp
	move	$a5, $s4
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s7
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	move	$a5, $s2
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	move	$s8, $s1
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $s3
	move	$a4, $fp
	move	$a5, $s2
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	b	.LBB1_11
.LBB1_10:
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s4
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $s3
	move	$a4, $fp
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s4
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	move	$s8, $s1
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $s3
	move	$a4, $fp
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	move	$s7, $s4
.LBB1_11:
	move	$s4, $s0
	fcvt.d.s	$fa0, $fs0
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	st.d	$s7, $sp, 432                   # 8-byte Folded Spill
	blez	$s7, .LBB1_18
# %bb.12:                               # %.lr.ph198
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	ori	$a1, $zero, 8
	bltu	$a0, $a1, .LBB1_15
# %bb.13:                               # %vector.memcheck
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a3, 2
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	bgeu	$a2, $a1, .LBB1_68
# %bb.14:                               # %vector.memcheck
	alsl.d	$a1, $a0, $a2, 2
	bgeu	$a3, $a1, .LBB1_68
.LBB1_15:
	move	$a1, $zero
.LBB1_16:                               # %scalar.ph.preheader
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 2
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
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
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	blez	$fp, .LBB1_25
# %bb.19:                               # %.lr.ph200
	bstrpick.d	$a0, $s0, 30, 0
	ori	$a1, $zero, 8
	bltu	$a0, $a1, .LBB1_22
# %bb.20:                               # %vector.memcheck262
	alsl.d	$a1, $a0, $a5, 2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	bgeu	$a2, $a1, .LBB1_71
# %bb.21:                               # %vector.memcheck262
	alsl.d	$a1, $a0, $a2, 2
	bgeu	$a5, $a1, .LBB1_71
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
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	pcalau12i	$a0, %pc_hi20(reccycle)
	ld.w	$a1, $a0, %pc_lo12(reccycle)
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	st.d	$a3, $a2, 8
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.d	$a3, $a2, 16
	st.d	$a5, $a2, 24
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(reccycle)
	blez	$fp, .LBB1_58
# %bb.26:
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	blez	$s7, .LBB1_34
# %bb.27:                               # %.lr.ph.preheader.i
	ori	$a2, $zero, 8
	move	$a1, $zero
	bltu	$s7, $a2, .LBB1_32
# %bb.28:                               # %.lr.ph.preheader.i
	sub.d	$a2, $fp, $s5
	ori	$a3, $zero, 64
	bltu	$a2, $a3, .LBB1_32
# %bb.29:                               # %vector.ph286
	bstrpick.d	$a1, $s7, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $fp, 32
	addi.d	$a3, $s5, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_30:                               # %vector.body289
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB1_30
# %bb.31:                               # %middle.block294
	beq	$a1, $s7, .LBB1_34
.LBB1_32:                               # %.lr.ph.i.preheader
	sub.d	$a2, $s7, $a1
	alsl.d	$a3, $a1, $fp, 3
	alsl.d	$a1, $a1, $s5, 3
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
	blez	$s8, .LBB1_42
# %bb.35:                               # %.lr.ph17.preheader.i
	ori	$a2, $zero, 8
	move	$a1, $zero
	bltu	$s8, $a2, .LBB1_40
# %bb.36:                               # %.lr.ph17.preheader.i
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	sub.d	$a2, $a0, $a2
	ori	$a3, $zero, 64
	bltu	$a2, $a3, .LBB1_40
# %bb.37:                               # %vector.ph301
	bstrpick.d	$a1, $s8, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a0, 32
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_38:                               # %vector.body304
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB1_38
# %bb.39:                               # %middle.block309
	beq	$a1, $s8, .LBB1_42
.LBB1_40:                               # %.lr.ph17.i.preheader
	sub.d	$a2, $s8, $a1
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
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB1_67
# %bb.43:                               # %._crit_edge.i
	addi.w	$a2, $s0, 0
	ori	$a1, $zero, 9
	bgeu	$a1, $a2, .LBB1_67
# %bb.44:                               # %iter.check
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.w	$s2, $a0, 100
	move	$s8, $a2
	addi.w	$s3, $s0, 100
	ld.d	$s0, $sp, 440                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$fp, $a0
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
	ld.d	$s1, $sp, 424                   # 8-byte Folded Reload
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s1
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
	sltu	$a0, $s3, $s2
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	addi.w	$s7, $a0, 2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 26
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ori	$a1, $zero, 26
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	move	$a0, $s2
	move	$a1, $s3
	move	$s3, $fp
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ori	$a7, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s4
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	move	$a1, $s1
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $zero
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	move	$a5, $s5
	move	$a6, $s6
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $zero
	st.d	$s8, $sp, 416                   # 8-byte Folded Spill
	move	$a4, $s8
	st.d	$s5, $sp, 328                   # 8-byte Folded Spill
	move	$a5, $s5
	st.d	$s6, $sp, 320                   # 8-byte Folded Spill
	move	$a6, $s6
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.w	$a1, $a0, 1
	ori	$a0, $zero, 2
	slt	$a2, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$t7, $a2, $a0
	ori	$a0, $zero, 4
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	addi.d	$s5, $a5, 4
	blt	$a0, $a1, .LBB1_74
# %bb.45:
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
.LBB1_46:                               # %.lr.ph20.i.preheader
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 360                   # 8-byte Folded Reload
.LBB1_47:                               # %.lr.ph20.i.preheader
	sub.d	$a0, $t7, $fp
	alsl.d	$a1, $fp, $s4, 2
	alsl.d	$a2, $fp, $a6, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB1_48:                               # %.lr.ph20.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB1_48
.LBB1_49:                               # %iter.check366
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.w	$t4, $a0, -1
	addi.w	$t3, $t0, -1
	addi.w	$t6, $t0, 1
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t6, $a1
	or	$a0, $a1, $a0
	addi.d	$a1, $a0, -1
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	ori	$a3, $zero, 4
	alsl.d	$a1, $a0, $s3, 2
	addi.d	$a4, $s7, 4
	st.d	$a4, $sp, 256                   # 8-byte Folded Spill
	blt	$a3, $t6, .LBB1_78
.LBB1_50:                               # %.lr.ph22.i.preheader
	sub.d	$a3, $a0, $a2
	alsl.d	$a4, $a2, $s3, 2
	alsl.d	$a2, $a2, $a7, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB1_51:                               # %.lr.ph22.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s7, 0
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
	fld.s	$fa0, $s4, 0
	ld.d	$a2, $t2, 0
	ld.d	$t5, $sp, 616
	fst.s	$fa0, $a2, 0
	slli.d	$a3, $t7, 2
	ori	$a4, $zero, 4
	ori	$a5, $zero, 8
	.p2align	4, , 16
.LBB1_53:                               # %.lr.ph27.i
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s4, $a4
	ldx.d	$a6, $t2, $a5
	fst.s	$fa0, $a6, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 8
	bne	$a3, $a4, .LBB1_53
# %bb.54:                               # %iter.check408
	ori	$a3, $zero, 5
	ori	$a4, $zero, 1
	blt	$t6, $a3, .LBB1_89
# %bb.55:                               # %iter.check408
	sub.d	$a3, $a2, $s3
	ori	$a5, $zero, 63
	bgeu	$a5, $a3, .LBB1_89
# %bb.56:                               # %vector.main.loop.iter.check410
	ori	$a3, $zero, 17
	bge	$t6, $a3, .LBB1_82
# %bb.57:
	move	$a3, $zero
	b	.LBB1_86
.LBB1_58:                               # %.preheader1.i
	ld.d	$s2, $sp, 432                   # 8-byte Folded Reload
	blez	$s7, .LBB1_61
# %bb.59:                               # %.lr.ph114.i
	move	$fp, $s5
	move	$s0, $s4
	move	$s1, $s7
	.p2align	4, , 16
.LBB1_60:                               # =>This Inner Loop Header: Depth=1
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
	bnez	$s1, .LBB1_60
.LBB1_61:                               # %.preheader.i
	blez	$s8, .LBB1_176
# %bb.62:                               # %.lr.ph121.i
	move	$s0, $zero
	ori	$s1, $zero, 45
	b	.LBB1_64
	.p2align	4, , 16
.LBB1_63:                               # %._crit_edge119.i
                                        #   in Loop: Header=BB1_64 Depth=1
	addi.d	$s0, $s0, 1
	beq	$s0, $s8, .LBB1_176
.LBB1_64:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_66 Depth 2
	slli.d	$a0, $s0, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	blez	$a0, .LBB1_63
# %bb.65:                               # %.lr.ph118.i.preheader
                                        #   in Loop: Header=BB1_64 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s2, $s0, $a0, 3
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_66:                               # %.lr.ph118.i
                                        #   Parent Loop BB1_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $s2, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	stx.h	$s1, $fp, $a0
	bnez	$s3, .LBB1_66
	b	.LBB1_63
.LBB1_67:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB1_176
.LBB1_68:                               # %vector.ph
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 3
	slli.d	$a1, $a1, 3
	xvreplve0.d	$xr1, $xr0
	xvldi	$xr2, -912
	xvldi	$xr3, -928
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_69:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a2, 0
	xvpermi.q	$xr5, $xr4, 1
	vreplvei.w	$vr6, $vr5, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr5, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr5, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr5, $vr5, 3
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr7, $xr5, 3
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr5, 1
	vreplvei.w	$vr5, $vr4, 2
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr6, $xr5, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
	xvld	$xr5, $a3, 0
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a2, 0
	xvpermi.q	$xr4, $xr5, 1
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr4, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr7, $xr4, 3
	vreplvei.w	$vr4, $vr5, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr5, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr4, 1
	vreplvei.w	$vr4, $vr5, 2
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 2
	vreplvei.w	$vr4, $vr5, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	addi.d	$a2, $a2, 32
	bnez	$a4, .LBB1_69
# %bb.70:                               # %middle.block
	beq	$a0, $a1, .LBB1_18
	b	.LBB1_16
.LBB1_71:                               # %vector.ph270
	bstrpick.d	$a1, $s0, 30, 3
	slli.d	$a1, $a1, 3
	xvreplve0.d	$xr1, $xr0
	xvldi	$xr2, -912
	xvldi	$xr3, -928
	move	$a3, $a5
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_72:                               # %vector.body275
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a2, 0
	xvpermi.q	$xr5, $xr4, 1
	vreplvei.w	$vr6, $vr5, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr5, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr5, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr5, $vr5, 3
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr7, $xr5, 3
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr5, 1
	vreplvei.w	$vr5, $vr4, 2
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr6, $xr5, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
	xvld	$xr5, $a3, 0
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a2, 0
	xvpermi.q	$xr4, $xr5, 1
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr4, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr7, $xr4, 3
	vreplvei.w	$vr4, $vr5, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr5, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr4, 1
	vreplvei.w	$vr4, $vr5, 2
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 2
	vreplvei.w	$vr4, $vr5, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	addi.d	$a2, $a2, 32
	bnez	$a4, .LBB1_72
# %bb.73:                               # %middle.block280
	beq	$a0, $a1, .LBB1_25
	b	.LBB1_23
.LBB1_74:                               # %vector.memcheck312
	addi.d	$a0, $s4, 4
	alsl.d	$a2, $t7, $s4, 2
	sltu	$a3, $a0, $s5
	sltu	$a4, $a5, $a2
	and	$a3, $a3, $a4
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	bnez	$a3, .LBB1_46
# %bb.75:                               # %vector.memcheck312
	alsl.d	$a3, $t7, $a6, 2
	addi.d	$a3, $a3, -4
	sltu	$a0, $a0, $a3
	sltu	$a2, $a6, $a2
	and	$a0, $a0, $a2
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 360                   # 8-byte Folded Reload
	bnez	$a0, .LBB1_47
# %bb.76:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 17
	addi.d	$a0, $t7, -1
	bge	$a1, $a2, .LBB1_208
# %bb.77:
	move	$a1, $zero
	b	.LBB1_212
.LBB1_78:                               # %vector.memcheck351
	addi.d	$a3, $s3, 4
	sltu	$a4, $a3, $a4
	sltu	$a5, $s7, $a1
	and	$a4, $a4, $a5
	bnez	$a4, .LBB1_50
# %bb.79:                               # %vector.memcheck351
	alsl.d	$a4, $a0, $a7, 2
	addi.d	$a4, $a4, -4
	sltu	$a3, $a3, $a4
	sltu	$a4, $a7, $a1
	and	$a3, $a3, $a4
	bnez	$a3, .LBB1_50
# %bb.80:                               # %vector.main.loop.iter.check368
	ori	$a2, $zero, 17
	bge	$t6, $a2, .LBB1_215
# %bb.81:
	move	$a3, $zero
	b	.LBB1_219
.LBB1_82:                               # %vector.ph411
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	bstrins.d	$a3, $zero, 3, 0
	addi.d	$a4, $s3, 36
	addi.d	$a5, $a2, 36
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_83:                               # %vector.body414
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB1_83
# %bb.84:                               # %middle.block419
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	beq	$a4, $a3, .LBB1_91
# %bb.85:                               # %vec.epilog.iter.check424
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	andi	$a4, $a4, 12
	beqz	$a4, .LBB1_250
.LBB1_86:                               # %vec.epilog.ph423
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	move	$a5, $a4
	bstrins.d	$a5, $zero, 1, 0
	ori	$a6, $zero, 1
	bstrins.d	$a4, $a6, 1, 0
	slli.d	$a6, $a3, 2
	addi.d	$a7, $a6, 4
	add.d	$a6, $s3, $a7
	add.d	$a7, $a2, $a7
	sub.d	$a3, $a3, $a5
	.p2align	4, , 16
.LBB1_87:                               # %vec.epilog.vector.body429
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vst	$vr0, $a7, 0
	addi.d	$a6, $a6, 16
	addi.d	$a3, $a3, 4
	addi.d	$a7, $a7, 16
	bnez	$a3, .LBB1_87
# %bb.88:                               # %vec.epilog.middle.block434
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	beq	$a3, $a5, .LBB1_91
.LBB1_89:                               # %.lr.ph29.i.preheader
	sub.d	$a3, $a0, $a4
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a4, $a4, $s3, 2
	.p2align	4, , 16
.LBB1_90:                               # %.lr.ph29.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a4, 0
	fst.s	$fa0, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, 4
	bnez	$a3, .LBB1_90
.LBB1_91:                               # %iter.check453
	ori	$a2, $zero, 1
	ori	$a3, $zero, 4
	addi.d	$t2, $t1, 4
	blt	$a3, $t6, .LBB1_185
.LBB1_92:                               # %vec.epilog.scalar.ph469.preheader
	sub.d	$a1, $a0, $a2
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 2
	alsl.d	$a4, $a2, $t1, 2
	alsl.d	$a2, $a2, $s3, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB1_93:                               # %vec.epilog.scalar.ph469
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
	bnez	$a1, .LBB1_93
.LBB1_94:                               # %.lr.ph50.i
	st.d	$t2, $sp, 248                   # 8-byte Folded Spill
	st.d	$t6, $sp, 232                   # 8-byte Folded Spill
	st.d	$t5, $sp, 16                    # 8-byte Folded Spill
	st.d	$t4, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 408                   # 8-byte Folded Spill
	slli.d	$s8, $t3, 2
	fldx.s	$fa0, $s3, $s8
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
	st.d	$t3, $sp, 176                   # 8-byte Folded Spill
	alsl.d	$a1, $t3, $t1, 2
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	bstrpick.d	$a1, $t0, 30, 0
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	bstrpick.d	$s0, $a2, 31, 0
	slli.d	$s1, $a0, 2
	ori	$s2, $zero, 1
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	move	$a0, $s3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s8, $sp, 400                   # 8-byte Folded Spill
	b	.LBB1_96
	.p2align	4, , 16
.LBB1_95:                               # %._crit_edge45.i
                                        #   in Loop: Header=BB1_96 Depth=1
	fldx.s	$fa0, $s6, $s8
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	fstx.s	$fa0, $a2, $a0
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	fld.s	$fa0, $a0, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	addi.d	$s2, $s2, 1
	fstx.s	$fa0, $a1, $a0
	move	$a0, $s6
	move	$t7, $fp
	beq	$s2, $fp, .LBB1_108
.LBB1_96:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_106 Depth 2
                                        #     Child Loop BB1_102 Depth 2
	move	$fp, $t7
	addi.d	$s4, $s2, -1
	slli.d	$a1, $s4, 2
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$fa0, $s8, $a1
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	fst.s	$fa0, $a0, 0
	move	$a0, $s3
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	move	$a3, $s2
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s2, 2
	fldx.s	$fa0, $s8, $a0
	move	$s6, $s3
	fst.s	$fa0, $s3, 0
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	fldx.s	$fa0, $a3, $a0
	ld.d	$ra, $sp, 192                   # 8-byte Folded Reload
	fst.s	$fa0, $ra, 0
	ld.d	$t8, $sp, 336                   # 8-byte Folded Reload
	bne	$s2, $s0, .LBB1_98
# %bb.97:                               #   in Loop: Header=BB1_96 Depth=1
	fst.s	$fa0, $t8, 0
.LBB1_98:                               # %.lr.ph44.i
                                        #   in Loop: Header=BB1_96 Depth=1
	ld.d	$s8, $sp, 448                   # 8-byte Folded Reload
	fld.s	$fa0, $s8, 0
	fld.s	$fa1, $s7, 4
	slli.d	$a1, $s2, 3
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	ldx.d	$a4, $a2, $a1
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	alsl.d	$a2, $s2, $a3, 2
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a3, $s4, $a3, 2
	ld.d	$t3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 208                   # 8-byte Folded Reload
	bne	$s2, $s0, .LBB1_104
# %bb.99:                               # %.lr.ph44.split.us.i.preheader
                                        #   in Loop: Header=BB1_96 Depth=1
	move	$a5, $zero
	move	$a7, $zero
	ori	$a6, $zero, 4
	ld.d	$s8, $sp, 400                   # 8-byte Folded Reload
	b	.LBB1_102
	.p2align	4, , 16
.LBB1_100:                              #   in Loop: Header=BB1_102 Depth=2
	fstx.s	$fa6, $ra, $a6
	ld.d	$t0, $sp, 440                   # 8-byte Folded Reload
	stx.w	$s4, $t0, $a6
	move	$t0, $s4
.LBB1_101:                              #   in Loop: Header=BB1_102 Depth=2
	fadd.s	$fa5, $fa0, $fa5
	fcmp.clt.s	$fcc0, $fa1, $fa5
	fadd.s	$fa3, $fa3, $fa4
	fldx.s	$fa4, $s6, $a6
	fsel	$fa5, $fa1, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $fa5, $fa3
	fsel	$fa3, $fa5, $fa3, $fcc0
	fadd.s	$fa3, $fa3, $fa4
	fstx.s	$fa3, $s6, $a6
	fstx.s	$fa3, $a4, $a6
	fldx.s	$fa3, $ra, $a6
	fadd.s	$fa1, $fa1, $fa2
	fcmp.cult.s	$fcc0, $fa1, $fa0
	fstx.s	$fa3, $a1, $a6
	fldx.s	$fa2, $s6, $a6
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
	beq	$s1, $a6, .LBB1_95
.LBB1_102:                              # %.lr.ph44.split.us.i
                                        #   Parent Loop BB1_96 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $sp, 448                   # 8-byte Folded Reload
	add.d	$t0, $t0, $a6
	fld.s	$fa1, $t0, -4
	add.d	$t0, $t3, $a6
	fld.s	$fa5, $t0, -4
	fld.s	$fa6, $a2, 0
	fldx.s	$fa3, $ra, $a6
	fldx.s	$fa2, $s7, $a6
	fld.s	$fa4, $a3, 0
	fadd.s	$fa6, $fa1, $fa6
	fcmp.cle.s	$fcc0, $fa3, $fa6
	bcnez	$fcc0, .LBB1_100
# %bb.103:                              # %.lr.ph44.split.us._crit_edge.i
                                        #   in Loop: Header=BB1_102 Depth=2
	ld.d	$t0, $sp, 440                   # 8-byte Folded Reload
	ldx.w	$t0, $t0, $a6
	b	.LBB1_101
	.p2align	4, , 16
.LBB1_104:                              # %.lr.ph44.split.i.preheader
                                        #   in Loop: Header=BB1_96 Depth=1
	addi.d	$a5, $s6, 4
	addi.d	$a6, $a1, 4
	addi.d	$a4, $a4, 4
	move	$a7, $t3
	ld.d	$t0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	move	$t4, $s8
	ld.d	$s8, $sp, 400                   # 8-byte Folded Reload
	b	.LBB1_106
	.p2align	4, , 16
.LBB1_105:                              #   in Loop: Header=BB1_106 Depth=2
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
	beqz	$t1, .LBB1_95
.LBB1_106:                              # %.lr.ph44.split.i
                                        #   Parent Loop BB1_96 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $t4, 0
	fld.s	$fa4, $a7, 0
	fld.s	$fa6, $a2, 0
	fld.s	$fa3, $t2, 0
	fld.s	$fa2, $t0, 0
	fld.s	$fa5, $a3, 0
	fadd.s	$fa6, $fa1, $fa6
	fcmp.cult.s	$fcc0, $fa6, $fa3
	bcnez	$fcc0, .LBB1_105
# %bb.107:                              #   in Loop: Header=BB1_106 Depth=2
	fst.s	$fa6, $t2, 0
	st.w	$s4, $t3, 0
	b	.LBB1_105
.LBB1_108:                              # %iter.check501
	ori	$a7, $zero, 1
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	move	$a0, $s4
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
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$a0, $s6
	move	$a1, $fp
	move	$a2, $s0
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	move	$a3, $fp
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	move	$a5, $s1
	move	$a6, $s2
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	move	$t3, $fp
	bstrpick.d	$s2, $fp, 31, 0
	ori	$a0, $zero, 3
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a2, $s2, $a4, 2
	bltu	$a0, $fp, .LBB1_189
# %bb.109:
	move	$a0, $zero
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
.LBB1_110:                              # %vec.epilog.scalar.ph519.preheader
	alsl.d	$a1, $a0, $s4, 2
	sub.d	$a3, $s2, $a0
	alsl.d	$a0, $a0, $a5, 2
	addi.d	$a0, $a0, 4
	.p2align	4, , 16
.LBB1_111:                              # %vec.epilog.scalar.ph519
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
	bnez	$a3, .LBB1_111
.LBB1_112:                              # %iter.check552
	alsl.d	$a0, $t7, $t1, 2
	ori	$a3, $zero, 4
	move	$s3, $s6
	alsl.d	$a1, $t7, $s6, 2
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	bltu	$a3, $a4, .LBB1_193
# %bb.113:
	move	$a3, $zero
.LBB1_114:                              # %vec.epilog.scalar.ph570.preheader
	alsl.d	$a4, $a3, $s3, 2
	sub.d	$a5, $t7, $a3
	alsl.d	$a3, $a3, $s7, 2
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB1_115:                              # %vec.epilog.scalar.ph570
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
	bnez	$a5, .LBB1_115
.LBB1_116:                              # %.lr.ph60.i.preheader
	move	$a3, $s2
	move	$a4, $a7
	.p2align	4, , 16
.LBB1_117:                              # %.lr.ph60.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $s5, 0
	fldx.s	$fa2, $a5, $s8
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	fstx.s	$fa0, $a5, $s8
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, -1
	addi.d	$s5, $s5, 4
	bnez	$a3, .LBB1_117
# %bb.118:                              # %iter.check602
	slli.d	$a2, $s2, 3
	ldx.d	$a2, $a7, $a2
	ori	$a3, $zero, 4
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	bltu	$a3, $a4, .LBB1_197
# %bb.119:
	move	$a3, $zero
.LBB1_120:                              # %vec.epilog.scalar.ph620.preheader
	alsl.d	$a2, $a3, $a2, 2
	sub.d	$a4, $t7, $a3
	alsl.d	$a3, $a3, $s7, 2
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB1_121:                              # %vec.epilog.scalar.ph620
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
	bnez	$a4, .LBB1_121
.LBB1_122:                              # %.lr.ph64.i
	slti	$a3, $t7, 1
	ori	$a2, $zero, 1
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $t7, $a3
	or	$a5, $a3, $a4
	nor	$a3, $a5, $zero
	add.w	$a4, $a3, $t2
	ori	$a6, $zero, 23
	addi.d	$a3, $a0, -4
	bgeu	$a4, $a6, .LBB1_201
# %bb.123:
	move	$a0, $t7
	ld.d	$t8, $sp, 296                   # 8-byte Folded Reload
.LBB1_124:                              # %scalar.ph651.preheader
	addi.d	$a1, $a0, 1
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 2
	alsl.d	$a5, $a0, $t6, 2
	addi.d	$a5, $a5, -4
	alsl.d	$a0, $a0, $s3, 2
	.p2align	4, , 16
.LBB1_125:                              # %scalar.ph651
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a5, 0
	st.w	$t3, $a4, 0
	addi.w	$a1, $a1, -1
	addi.d	$a4, $a4, -4
	addi.d	$a5, $a5, -4
	addi.d	$a0, $a0, -4
	blt	$a2, $a1, .LBB1_125
.LBB1_126:                              # %.lr.ph104.i
	move	$s8, $zero
	move	$a5, $zero
	move	$a6, $zero
	addi.w	$a0, $zero, -2
	lu32i.d	$a0, 0
	add.d	$a0, $t2, $a0
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$s0, $a0, $t1, 2
	slli.d	$a4, $a0, 2
	alsl.d	$a1, $t8, $t6, 2
	addi.d	$s1, $a1, -8
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a1, $t8, $a1, 2
	addi.d	$a1, $a1, -8
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
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
	alsl.d	$s7, $a0, $t5, 2
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $a4, 4
	add.d	$s6, $fp, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$fp, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI1_0)
	addi.d	$a0, $t7, -2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a0, $t4, 8
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	movgr2fr.w	$fa4, $zero
	move	$a4, $s2
	b	.LBB1_129
	.p2align	4, , 16
.LBB1_127:                              #   in Loop: Header=BB1_129 Depth=1
	move	$a0, $t7
	move	$a1, $a5
	move	$a2, $s8
.LBB1_128:                              #   in Loop: Header=BB1_129 Depth=1
	st.d	$t5, $sp, 288                   # 8-byte Folded Spill
	move	$s8, $a2
	move	$a5, $a1
	move	$a6, $a0
	move	$s3, $t6
	ori	$a0, $zero, 1
	bge	$a0, $s2, .LBB1_160
.LBB1_129:                              # %.lr.ph74.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_131 Depth 2
                                        #     Child Loop BB1_145 Depth 2
                                        #     Child Loop BB1_147 Depth 2
	st.d	$a6, $sp, 240                   # 8-byte Folded Spill
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	xvst	$xr4, $sp, 256                  # 32-byte Folded Spill
	st.d	$t3, $sp, 304                   # 8-byte Folded Spill
	move	$s2, $a4
	slli.d	$a0, $a4, 2
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	addi.d	$s4, $a4, -1
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	fstx.s	$fa0, $s3, $a1
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	move	$a3, $s4
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	ld.d	$t2, $sp, 360                   # 8-byte Folded Reload
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	move	$a0, $zero
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	fstx.s	$fa0, $a3, $a2
	alsl.d	$a1, $ra, $s3, 2
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	fldx.s	$fa0, $s3, $a2
	fld.s	$fa1, $s0, 0
	addi.d	$a2, $a1, -4
	move	$t6, $a3
	alsl.d	$a1, $ra, $a3, 2
	addi.d	$a3, $a1, -8
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a5, $s2, $a1, 2
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a4, $s4, $a1, 2
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$t7, $a1
	bstrpick.d	$a1, $a1, 31, 0
	xor	$a1, $s4, $a1
	sltui	$a6, $a1, 1
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
	bstrpick.d	$a1, $t5, 31, 0
	xor	$a7, $s2, $a1
	move	$s3, $s4
	slli.d	$t0, $s4, 3
	ld.d	$t1, $sp, 312                   # 8-byte Folded Reload
	ldx.d	$t1, $t1, $t0
	ldx.d	$t0, $t2, $t0
	sltui	$a7, $a7, 1
	or	$a6, $a6, $a7
	ld.d	$t2, $sp, 168                   # 8-byte Folded Reload
	add.d	$a7, $t1, $t2
	add.d	$t0, $t0, $t2
	ld.d	$t8, $sp, 176                   # 8-byte Folded Reload
	move	$t1, $t8
	move	$t2, $t8
	b	.LBB1_131
	.p2align	4, , 16
.LBB1_130:                              #   in Loop: Header=BB1_131 Depth=2
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
	blez	$t1, .LBB1_141
.LBB1_131:                              #   Parent Loop BB1_129 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $fp, $a0
	fldx.s	$fa2, $a2, $a0
	fadd.s	$fa1, $fa0, $fa1
	fldx.s	$fa4, $s1, $a0
	fld.s	$fa5, $a5, 0
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fldx.s	$fa3, $s0, $a0
	fadd.s	$fa5, $fa4, $fa5
	fcmp.cule.s	$fcc1, $fa5, $fa1
	bcnez	$fcc1, .LBB1_133
# %bb.132:                              #   in Loop: Header=BB1_131 Depth=2
	ld.d	$t3, $sp, 456                   # 8-byte Folded Reload
	ldx.w	$t3, $t3, $a0
	fmov.s	$fa1, $fa5
	move	$t4, $t1
	fld.s	$fa5, $a4, 0
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa4
	bceqz	$fcc0, .LBB1_134
	b	.LBB1_135
	.p2align	4, , 16
.LBB1_133:                              #   in Loop: Header=BB1_131 Depth=2
	movcf2gr	$t3, $fcc0
	masknez	$t4, $t1, $t3
	maskeqz	$t3, $t2, $t3
	or	$t4, $t3, $t4
	move	$t3, $s2
	fld.s	$fa5, $a4, 0
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa4
	bcnez	$fcc0, .LBB1_135
.LBB1_134:                              #   in Loop: Header=BB1_131 Depth=2
	fstx.s	$fa5, $s1, $a0
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	stx.w	$s2, $s4, $a0
.LBB1_135:                              #   in Loop: Header=BB1_131 Depth=2
	beqz	$a6, .LBB1_138
# %bb.136:                              #   in Loop: Header=BB1_131 Depth=2
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	stx.w	$t3, $s4, $a0
	ld.d	$t3, $sp, 432                   # 8-byte Folded Reload
	stx.w	$t4, $t3, $a0
	beq	$s3, $a1, .LBB1_139
.LBB1_137:                              #   in Loop: Header=BB1_131 Depth=2
	fadd.s	$fa2, $fa2, $fa3
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s2, $a1, .LBB1_130
	b	.LBB1_140
	.p2align	4, , 16
.LBB1_138:                              #   in Loop: Header=BB1_131 Depth=2
	bne	$s3, $a1, .LBB1_137
.LBB1_139:                              #   in Loop: Header=BB1_131 Depth=2
	fldx.s	$fa4, $s5, $a0
	fadd.s	$fa4, $fa1, $fa4
	fstx.s	$fa4, $s5, $a0
	fldx.s	$fa4, $s1, $a0
	fldx.s	$fa5, $s6, $a0
	fadd.s	$fa4, $fa4, $fa5
	fstx.s	$fa4, $s6, $a0
	fadd.s	$fa2, $fa2, $fa3
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s2, $a1, .LBB1_130
.LBB1_140:                              #   in Loop: Header=BB1_131 Depth=2
	fldx.s	$fa2, $s7, $a0
	fadd.s	$fa2, $fa0, $fa2
	fstx.s	$fa2, $s7, $a0
	b	.LBB1_130
	.p2align	4, , 16
.LBB1_141:                              # %._crit_edge75.i
                                        #   in Loop: Header=BB1_129 Depth=1
	fldx.s	$fa0, $a2, $a0
	fld.s	$fa1, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fs0, $fa0
	fsel	$fs0, $fs0, $fa0, $fcc0
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 304                   # 8-byte Folded Reload
	move	$a4, $s3
	bne	$s3, $a1, .LBB1_143
# %bb.142:                              #   in Loop: Header=BB1_129 Depth=1
	fld.s	$fa0, $t0, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $t0, 0
.LBB1_143:                              #   in Loop: Header=BB1_129 Depth=1
	addi.w	$a0, $t5, -1
	ld.d	$a6, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 416                   # 8-byte Folded Reload
	xvld	$xr4, $sp, 256                  # 32-byte Folded Reload
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	bne	$s2, $a1, .LBB1_155
# %bb.144:                              # %.lr.ph82.preheader.i
                                        #   in Loop: Header=BB1_129 Depth=1
	fld.s	$fa4, $a7, 4
	move	$s8, $zero
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_145:                              # %.lr.ph82.i
                                        #   Parent Loop BB1_129 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a2, 0
	fcmp.clt.s	$fcc1, $fa4, $fa0
	fsel	$fa4, $fa4, $fa0, $fcc1
	movcf2gr	$a4, $fcc1
	masknez	$a5, $s8, $a4
	maskeqz	$a4, $a1, $a4
	or	$s8, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB1_145
# %bb.146:                              # %.lr.ph88.i.preheader
                                        #   in Loop: Header=BB1_129 Depth=1
	move	$a1, $zero
	move	$a2, $t0
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_147:                              # %.lr.ph88.i
                                        #   Parent Loop BB1_129 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a2, 0
	fcmp.clt.s	$fcc1, $fa4, $fa0
	fsel	$fa4, $fa4, $fa0, $fcc1
	movcf2gr	$a4, $fcc1
	masknez	$a5, $s8, $a4
	maskeqz	$a4, $a1, $a4
	or	$s8, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB1_147
# %bb.148:                              # %._crit_edge89.i
                                        #   in Loop: Header=BB1_129 Depth=1
	slli.d	$a1, $s8, 2
	fldx.s	$fa0, $a7, $a1
	addi.w	$a5, $s8, -1
	blez	$s8, .LBB1_153
# %bb.149:                              #   in Loop: Header=BB1_129 Depth=1
	slli.d	$a2, $a5, 2
	fldx.s	$fa1, $a6, $a2
	fcmp.cule.s	$fcc1, $fa1, $fa0
	move	$a2, $a5
	move	$a4, $s3
	bcnez	$fcc1, .LBB1_151
# %bb.150:                              #   in Loop: Header=BB1_129 Depth=1
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a1
	fmov.s	$fa0, $fa1
.LBB1_151:                              #   in Loop: Header=BB1_129 Depth=1
	fldx.s	$fa1, $t0, $a1
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bcnez	$fcc1, .LBB1_154
.LBB1_152:                              #   in Loop: Header=BB1_129 Depth=1
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$t7, $a2, $a1
	b	.LBB1_155
.LBB1_153:                              #   in Loop: Header=BB1_129 Depth=1
	move	$a2, $a5
	move	$a4, $s3
	fldx.s	$fa1, $t0, $a1
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bceqz	$fcc1, .LBB1_152
.LBB1_154:                              #   in Loop: Header=BB1_129 Depth=1
	move	$t7, $a0
	move	$a5, $a2
.LBB1_155:                              #   in Loop: Header=BB1_129 Depth=1
	movcf2gr	$a1, $fcc0
	masknez	$a2, $t2, $a1
	maskeqz	$a1, $s2, $a1
	bstrpick.d	$a3, $t7, 31, 0
	or	$t3, $a1, $a2
	bne	$a4, $a3, .LBB1_127
# %bb.156:                              #   in Loop: Header=BB1_129 Depth=1
	beqz	$s8, .LBB1_159
# %bb.157:                              #   in Loop: Header=BB1_129 Depth=1
	move	$a1, $t8
	move	$a2, $t1
	bge	$s8, $t1, .LBB1_128
# %bb.158:                              #   in Loop: Header=BB1_129 Depth=1
	slli.d	$a0, $a5, 2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$t5, $a1, $a0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	move	$a0, $t7
	move	$a1, $a5
	b	.LBB1_128
.LBB1_159:                              #   in Loop: Header=BB1_129 Depth=1
	move	$a1, $zero
	addi.w	$a0, $t3, -1
	ori	$a2, $zero, 1
	move	$t5, $t3
	b	.LBB1_128
.LBB1_160:                              # %.preheader2.preheader.i
	move	$t6, $zero
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a4, 30, 4
	slli.d	$a2, $a2, 4
	xvreplve0.w	$xr0, $xr4
	andi	$a3, $a4, 12
	bstrpick.d	$a4, $a4, 30, 2
	slli.d	$a4, $a4, 2
	vreplvei.w	$vr1, $vr4, 0
	sub.d	$a5, $zero, $a4
	ori	$a6, $zero, 4
	ori	$a7, $zero, 64
	ori	$t0, $zero, 16
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 360                   # 8-byte Folded Reload
	b	.LBB1_162
	.p2align	4, , 16
.LBB1_161:                              # %._crit_edge109.i
                                        #   in Loop: Header=BB1_162 Depth=1
	addi.d	$t6, $t6, 1
	beq	$t6, $a1, .LBB1_175
.LBB1_162:                              # %iter.check675
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_167 Depth 2
                                        #     Child Loop BB1_171 Depth 2
                                        #     Child Loop BB1_174 Depth 2
	slli.d	$t2, $t6, 3
	ldx.d	$t1, $fp, $t2
	ldx.d	$t2, $t8, $t2
	move	$t4, $zero
	bltu	$ra, $a6, .LBB1_173
# %bb.163:                              # %iter.check675
                                        #   in Loop: Header=BB1_162 Depth=1
	sub.d	$t3, $t2, $t1
	bltu	$t3, $a7, .LBB1_173
# %bb.164:                              # %vector.main.loop.iter.check677
                                        #   in Loop: Header=BB1_162 Depth=1
	bgeu	$ra, $t0, .LBB1_166
# %bb.165:                              #   in Loop: Header=BB1_162 Depth=1
	move	$t5, $zero
	b	.LBB1_170
	.p2align	4, , 16
.LBB1_166:                              # %vector.body683.preheader
                                        #   in Loop: Header=BB1_162 Depth=1
	addi.d	$t3, $t2, 32
	addi.d	$t4, $t1, 32
	move	$t5, $a2
	.p2align	4, , 16
.LBB1_167:                              # %vector.body683
                                        #   Parent Loop BB1_162 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $t4, -32
	xvld	$xr3, $t4, 0
	xvfdiv.s	$xr2, $xr2, $xr0
	xvfdiv.s	$xr3, $xr3, $xr0
	xvst	$xr2, $t3, -32
	xvst	$xr3, $t3, 0
	addi.d	$t5, $t5, -16
	addi.d	$t3, $t3, 64
	addi.d	$t4, $t4, 64
	bnez	$t5, .LBB1_167
# %bb.168:                              # %middle.block688
                                        #   in Loop: Header=BB1_162 Depth=1
	beq	$ra, $a2, .LBB1_161
# %bb.169:                              # %vec.epilog.iter.check693
                                        #   in Loop: Header=BB1_162 Depth=1
	move	$t5, $a2
	move	$t4, $a2
	beqz	$a3, .LBB1_173
.LBB1_170:                              # %vec.epilog.ph692
                                        #   in Loop: Header=BB1_162 Depth=1
	add.d	$t3, $a5, $t5
	alsl.d	$t4, $t5, $t2, 2
	alsl.d	$t5, $t5, $t1, 2
	.p2align	4, , 16
.LBB1_171:                              # %vec.epilog.vector.body700
                                        #   Parent Loop BB1_162 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $t5, 0
	vfdiv.s	$vr2, $vr2, $vr1
	vst	$vr2, $t4, 0
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, 16
	bnez	$t3, .LBB1_171
# %bb.172:                              # %vec.epilog.middle.block704
                                        #   in Loop: Header=BB1_162 Depth=1
	move	$t4, $a4
	beq	$ra, $a4, .LBB1_161
.LBB1_173:                              # %vec.epilog.scalar.ph691.preheader
                                        #   in Loop: Header=BB1_162 Depth=1
	sub.d	$t3, $ra, $t4
	alsl.d	$t2, $t4, $t2, 2
	alsl.d	$t1, $t4, $t1, 2
	.p2align	4, , 16
.LBB1_174:                              # %vec.epilog.scalar.ph691
                                        #   Parent Loop BB1_162 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $t1, 0
	fdiv.s	$fa2, $fa2, $fa4
	fst.s	$fa2, $t2, 0
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 4
	bnez	$t3, .LBB1_174
	b	.LBB1_161
.LBB1_175:                              # %._crit_edge112.i
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
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
.LBB1_176:                              # %MSalign2m2m_rec.exit
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
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
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	blez	$s7, .LBB1_180
# %bb.177:                              # %.lr.ph203
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	addi.w	$s1, $a0, 0
	move	$s2, $s7
	.p2align	4, , 16
.LBB1_178:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB1_257
# %bb.179:                              #   in Loop: Header=BB1_178 Depth=1
	addi.w	$s0, $s0, 1
	addi.d	$s2, $s2, -1
	addi.d	$s4, $s4, 8
	bnez	$s2, .LBB1_178
.LBB1_180:                              # %.preheader
	blez	$s8, .LBB1_184
# %bb.181:                              # %.lr.ph205
	move	$s0, $zero
	addi.w	$fp, $fp, 0
	move	$s1, $s8
	.p2align	4, , 16
.LBB1_182:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_258
# %bb.183:                              #   in Loop: Header=BB1_182 Depth=1
	addi.w	$s0, $s0, 1
	addi.d	$s1, $s1, -1
	addi.d	$s6, $s6, 8
	bnez	$s1, .LBB1_182
.LBB1_184:                              # %._crit_edge206
	movgr2fr.w	$fa0, $zero
	fld.d	$fs0, $sp, 464                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.LBB1_185:                              # %vector.memcheck438
	alsl.d	$a3, $a0, $t1, 2
	addi.d	$a1, $a1, -4
	sltu	$a1, $t2, $a1
	sltu	$a4, $s3, $a3
	and	$a1, $a1, $a4
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	bnez	$a1, .LBB1_92
# %bb.186:                              # %vector.memcheck438
	addi.d	$a1, $a4, 8
	sltu	$a1, $t2, $a1
	sltu	$a3, $s5, $a3
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_92
# %bb.187:                              # %vector.main.loop.iter.check455
	ori	$a1, $zero, 17
	bge	$t6, $a1, .LBB1_222
# %bb.188:
	move	$a1, $zero
	b	.LBB1_226
.LBB1_189:                              # %vector.memcheck487
	slli.d	$a0, $s2, 2
	alsl.d	$a1, $s2, $s4, 2
	addi.d	$a3, $a0, 4
	add.d	$a0, $a4, $a3
	sltu	$a0, $s4, $a0
	sltu	$a4, $a2, $a1
	and	$a4, $a0, $a4
	move	$a0, $zero
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	bnez	$a4, .LBB1_206
# %bb.190:                              # %vector.memcheck487
	add.d	$a3, $a5, $a3
	sltu	$a3, $s4, $a3
	sltu	$a1, $s5, $a1
	and	$a1, $a3, $a1
	ld.d	$t5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 176                   # 8-byte Folded Reload
	bnez	$a1, .LBB1_110
# %bb.191:                              # %vector.main.loop.iter.check503
	ori	$a0, $zero, 16
	bgeu	$t3, $a0, .LBB1_229
# %bb.192:
	move	$a0, $zero
	b	.LBB1_233
.LBB1_193:                              # %vector.memcheck536
	addi.d	$a4, $s8, 4
	add.d	$a3, $t1, $a4
	sltu	$a3, $s3, $a3
	sltu	$a5, $a0, $a1
	and	$a5, $a3, $a5
	move	$a3, $zero
	bnez	$a5, .LBB1_114
# %bb.194:                              # %vector.memcheck536
	addi.d	$a5, $s7, 4
	add.d	$a4, $s7, $a4
	sltu	$a4, $s3, $a4
	sltu	$a5, $a5, $a1
	and	$a4, $a4, $a5
	bnez	$a4, .LBB1_114
# %bb.195:                              # %vector.main.loop.iter.check554
	ori	$a3, $zero, 17
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	bgeu	$a4, $a3, .LBB1_236
# %bb.196:
	move	$a3, $zero
	b	.LBB1_240
.LBB1_197:                              # %vector.memcheck587
	alsl.d	$a4, $t7, $a2, 2
	addi.d	$a5, $s8, 4
	add.d	$a3, $t1, $a5
	sltu	$a3, $a2, $a3
	sltu	$a6, $a0, $a4
	and	$a6, $a3, $a6
	move	$a3, $zero
	bnez	$a6, .LBB1_120
# %bb.198:                              # %vector.memcheck587
	addi.d	$a6, $s7, 4
	add.d	$a5, $s7, $a5
	sltu	$a5, $a2, $a5
	sltu	$a4, $a6, $a4
	and	$a4, $a5, $a4
	bnez	$a4, .LBB1_120
# %bb.199:                              # %vector.main.loop.iter.check604
	ori	$a3, $zero, 17
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	bgeu	$a4, $a3, .LBB1_243
# %bb.200:
	move	$a3, $zero
	b	.LBB1_247
.LBB1_201:                              # %vector.memcheck637
	sub.d	$a5, $a5, $t2
	nor	$a5, $a5, $zero
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	sub.d	$a6, $s8, $a5
	add.d	$a5, $a6, $t6
	addi.d	$a5, $a5, -4
	add.d	$a6, $s3, $a6
	addi.d	$a1, $a1, 4
	sltu	$a1, $a5, $a1
	ld.d	$t0, $sp, 456                   # 8-byte Folded Reload
	sltu	$a6, $a6, $t0
	and	$a1, $a1, $a6
	ld.d	$t8, $sp, 296                   # 8-byte Folded Reload
	bnez	$a1, .LBB1_207
# %bb.202:                              # %vector.memcheck637
	sltu	$a0, $a5, $a0
	sltu	$a1, $a3, $t0
	and	$a1, $a0, $a1
	move	$a0, $t7
	bnez	$a1, .LBB1_124
# %bb.203:                              # %vector.ph653
	bstrpick.d	$a0, $a4, 31, 0
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 32, 3
	slli.d	$a4, $a0, 3
	sub.d	$a0, $t7, $a4
	xvreplgr2vr.w	$xr0, $t3
	xvldrepl.w	$xr1, $a3, 0
	addi.d	$a7, $s8, -28
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a7
	addi.d	$a6, $t0, -32
	add.d	$a7, $s3, $a7
	move	$t0, $a4
	.p2align	4, , 16
.LBB1_204:                              # %vector.body658
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a7, 0
	xvfadd.s	$xr2, $xr2, $xr1
	xvst	$xr2, $a6, 0
	xvst	$xr0, $a5, 0
	addi.d	$t0, $t0, -8
	addi.d	$a5, $a5, -32
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB1_204
# %bb.205:                              # %middle.block667
	bne	$a1, $a4, .LBB1_124
	b	.LBB1_126
.LBB1_206:
	ld.d	$t5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 176                   # 8-byte Folded Reload
	b	.LBB1_110
.LBB1_207:
	move	$a0, $t7
	b	.LBB1_124
.LBB1_208:                              # %vector.ph327
	move	$a1, $a0
	xvldrepl.w	$xr0, $a5, 0
	bstrins.d	$a1, $zero, 3, 0
	addi.d	$a2, $a6, 32
	addi.d	$a3, $s4, 36
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_209:                              # %vector.body330
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a2, -32
	xvld	$xr2, $a2, 0
	xvld	$xr3, $a3, -32
	xvld	$xr4, $a3, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a3, -32
	xvst	$xr2, $a3, 0
	addi.d	$a2, $a2, 64
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB1_209
# %bb.210:                              # %middle.block339
	beq	$a0, $a1, .LBB1_49
# %bb.211:                              # %vec.epilog.iter.check
	andi	$a2, $a0, 12
	beqz	$a2, .LBB1_251
.LBB1_212:                              # %vec.epilog.ph
	move	$a2, $a0
	bstrins.d	$a2, $zero, 1, 0
	ori	$a3, $zero, 1
	move	$fp, $a0
	bstrins.d	$fp, $a3, 1, 0
	vldrepl.w	$vr0, $a5, 0
	alsl.d	$a3, $a1, $a6, 2
	alsl.d	$a4, $a1, $s4, 2
	addi.d	$a4, $a4, 4
	sub.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB1_213:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, 0
	vld	$vr2, $a4, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, 16
	bnez	$a1, .LBB1_213
# %bb.214:                              # %vec.epilog.middle.block
	bne	$a0, $a2, .LBB1_47
	b	.LBB1_49
.LBB1_215:                              # %vector.ph369
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	xvldrepl.w	$xr0, $s7, 0
	bstrins.d	$a3, $zero, 3, 0
	addi.d	$a2, $a7, 32
	addi.d	$a4, $s3, 36
	move	$a5, $a3
	.p2align	4, , 16
.LBB1_216:                              # %vector.body372
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a2, -32
	xvld	$xr2, $a2, 0
	xvld	$xr3, $a4, -32
	xvld	$xr4, $a4, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a2, $a2, 64
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_216
# %bb.217:                              # %middle.block381
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB1_52
# %bb.218:                              # %vec.epilog.iter.check386
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	andi	$a2, $a2, 12
	beqz	$a2, .LBB1_252
.LBB1_219:                              # %vec.epilog.ph385
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	bstrins.d	$a2, $a5, 1, 0
	vldrepl.w	$vr0, $s7, 0
	alsl.d	$a5, $a3, $a7, 2
	alsl.d	$a6, $a3, $s3, 2
	addi.d	$a6, $a6, 4
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB1_220:                              # %vec.epilog.vector.body391
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, 0
	vld	$vr2, $a6, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a6, 0
	addi.d	$a5, $a5, 16
	addi.d	$a3, $a3, 4
	addi.d	$a6, $a6, 16
	bnez	$a3, .LBB1_220
# %bb.221:                              # %vec.epilog.middle.block399
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	bne	$a3, $a4, .LBB1_50
	b	.LBB1_52
.LBB1_222:                              # %vector.ph456
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	bstrins.d	$a1, $zero, 3, 0
	xvldrepl.w	$xr0, $s5, 0
	addi.d	$a2, $s3, 32
	addi.d	$a3, $t1, 36
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 36
	xvrepli.b	$xr1, 0
	move	$a5, $a1
	.p2align	4, , 16
.LBB1_223:                              # %vector.body459
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a2, -32
	xvld	$xr3, $a2, 0
	xvfadd.s	$xr2, $xr2, $xr0
	xvfadd.s	$xr3, $xr3, $xr0
	xvst	$xr2, $a3, -32
	xvst	$xr3, $a3, 0
	xvst	$xr1, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_223
# %bb.224:                              # %middle.block466
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	beq	$a2, $a1, .LBB1_94
# %bb.225:                              # %vec.epilog.iter.check471
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	andi	$a2, $a2, 12
	beqz	$a2, .LBB1_253
.LBB1_226:                              # %vec.epilog.ph470
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	move	$a3, $a2
	bstrins.d	$a3, $zero, 1, 0
	ori	$a4, $zero, 1
	bstrins.d	$a2, $a4, 1, 0
	vldrepl.w	$vr0, $s5, 0
	slli.d	$a5, $a1, 2
	alsl.d	$a4, $a1, $s3, 2
	addi.d	$a6, $a5, 4
	add.d	$a5, $t1, $a6
	ld.d	$a7, $sp, 440                   # 8-byte Folded Reload
	add.d	$a6, $a7, $a6
	sub.d	$a1, $a1, $a3
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB1_227:                              # %vec.epilog.vector.body476
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $a5, 0
	vst	$vr1, $a6, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$a1, $a1, 4
	addi.d	$a6, $a6, 16
	bnez	$a1, .LBB1_227
# %bb.228:                              # %vec.epilog.middle.block483
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	bne	$a1, $a3, .LBB1_92
	b	.LBB1_94
.LBB1_229:                              # %vector.ph504
	bstrpick.d	$a0, $s2, 30, 4
	xvldrepl.w	$xr0, $a2, 0
	slli.d	$a0, $a0, 4
	addi.d	$a1, $a5, 36
	addi.d	$a3, $s4, 32
	move	$a4, $a0
	.p2align	4, , 16
.LBB1_230:                              # %vector.body507
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a1, -32
	xvld	$xr2, $a1, 0
	xvld	$xr3, $a3, -32
	xvld	$xr4, $a3, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a3, -32
	xvst	$xr2, $a3, 0
	addi.d	$a1, $a1, 64
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB1_230
# %bb.231:                              # %middle.block516
	beq	$a0, $s2, .LBB1_112
# %bb.232:                              # %vec.epilog.iter.check521
	andi	$a1, $s2, 12
	beqz	$a1, .LBB1_110
.LBB1_233:                              # %vec.epilog.ph520
	move	$a4, $a0
	bstrpick.d	$a0, $s2, 30, 2
	slli.d	$a0, $a0, 2
	vldrepl.w	$vr0, $a2, 0
	alsl.d	$a1, $a4, $a5, 2
	addi.d	$a1, $a1, 4
	sub.d	$a3, $a4, $a0
	alsl.d	$a4, $a4, $s4, 2
	.p2align	4, , 16
.LBB1_234:                              # %vec.epilog.vector.body526
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a1, 0
	vld	$vr2, $a4, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a4, 0
	addi.d	$a1, $a1, 16
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	bnez	$a3, .LBB1_234
# %bb.235:                              # %vec.epilog.middle.block533
	bne	$a0, $s2, .LBB1_110
	b	.LBB1_112
.LBB1_236:                              # %vector.ph555
	bstrpick.d	$a3, $t7, 30, 4
	xvldrepl.w	$xr0, $a0, 0
	slli.d	$a3, $a3, 4
	addi.d	$a4, $s7, 36
	addi.d	$a5, $s3, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_237:                              # %vector.body558
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a4, -32
	xvld	$xr2, $a4, 0
	xvld	$xr3, $a5, -32
	xvld	$xr4, $a5, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a5, -32
	xvst	$xr2, $a5, 0
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB1_237
# %bb.238:                              # %middle.block567
	beq	$a3, $t7, .LBB1_116
# %bb.239:                              # %vec.epilog.iter.check572
	andi	$a4, $t7, 12
	beqz	$a4, .LBB1_114
.LBB1_240:                              # %vec.epilog.ph571
	move	$a6, $a3
	bstrpick.d	$a3, $t7, 30, 2
	slli.d	$a3, $a3, 2
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a4, $a6, $s7, 2
	addi.d	$a4, $a4, 4
	sub.d	$a5, $a6, $a3
	alsl.d	$a6, $a6, $s3, 2
	.p2align	4, , 16
.LBB1_241:                              # %vec.epilog.vector.body577
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vld	$vr2, $a6, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a6, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB1_241
# %bb.242:                              # %vec.epilog.middle.block584
	bne	$a3, $t7, .LBB1_114
	b	.LBB1_116
.LBB1_243:                              # %vector.ph605
	bstrpick.d	$a3, $t7, 30, 4
	xvldrepl.w	$xr0, $a0, 0
	slli.d	$a3, $a3, 4
	addi.d	$a4, $s7, 36
	addi.d	$a5, $a2, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_244:                              # %vector.body608
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a4, -32
	xvld	$xr2, $a4, 0
	xvld	$xr3, $a5, -32
	xvld	$xr4, $a5, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvfadd.s	$xr2, $xr2, $xr4
	xvst	$xr1, $a5, -32
	xvst	$xr2, $a5, 0
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB1_244
# %bb.245:                              # %middle.block617
	beq	$a3, $t7, .LBB1_122
# %bb.246:                              # %vec.epilog.iter.check622
	andi	$a4, $t7, 12
	beqz	$a4, .LBB1_120
.LBB1_247:                              # %vec.epilog.ph621
	move	$a6, $a3
	bstrpick.d	$a3, $t7, 30, 2
	slli.d	$a3, $a3, 2
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a4, $a6, $s7, 2
	addi.d	$a4, $a4, 4
	sub.d	$a5, $a6, $a3
	alsl.d	$a6, $a6, $a2, 2
	.p2align	4, , 16
.LBB1_248:                              # %vec.epilog.vector.body627
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vld	$vr2, $a6, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr1, $vr2
	vst	$vr1, $a6, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB1_248
# %bb.249:                              # %vec.epilog.middle.block634
	bne	$a3, $t7, .LBB1_120
	b	.LBB1_122
.LBB1_250:
	addi.d	$a4, $a3, 1
	b	.LBB1_89
.LBB1_251:
	addi.d	$fp, $a1, 1
	b	.LBB1_47
.LBB1_252:
	addi.d	$a2, $a3, 1
	b	.LBB1_50
.LBB1_253:
	addi.d	$a2, $a1, 1
	b	.LBB1_92
.LBB1_254:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $fp
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	b	.LBB1_256
.LBB1_255:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s8
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
.LBB1_256:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_257:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s0
	move	$a3, $s7
	b	.LBB1_259
.LBB1_258:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s0
	move	$a3, $s8
.LBB1_259:
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
	addi.d	$sp, $sp, -976
	st.d	$fp, $sp, 968                   # 8-byte Folded Spill
	st.d	$s0, $sp, 960                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 952                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 944                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 936                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 928                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 920                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 912                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 904                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 896                  # 8-byte Folded Spill
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
	xvreplgr2vr.w	$xr26, $a1
	xvst	$xr1, $sp, 656                  # 32-byte Folded Spill
	xvreplve0.w	$xr27, $xr1
	xvst	$xr0, $sp, 688                  # 32-byte Folded Spill
	xvreplve0.w	$xr28, $xr0
	xvreplve0.w	$xr29, $xr25
	xvreplve0.w	$xr30, $xr24
	xvst	$xr23, $sp, 16                  # 32-byte Folded Spill
	xvreplve0.w	$xr31, $xr23
	xvst	$xr22, $sp, 48                  # 32-byte Folded Spill
	xvreplve0.w	$xr0, $xr22
	xvst	$xr21, $sp, 80                  # 32-byte Folded Spill
	xvreplve0.w	$xr1, $xr21
	xvst	$xr2, $sp, 112                  # 32-byte Folded Spill
	xvreplve0.w	$xr2, $xr2
	xvst	$xr3, $sp, 144                  # 32-byte Folded Spill
	xvreplve0.w	$xr3, $xr3
	xvst	$xr4, $sp, 176                  # 32-byte Folded Spill
	xvreplve0.w	$xr4, $xr4
	xvst	$xr5, $sp, 208                  # 32-byte Folded Spill
	xvreplve0.w	$xr5, $xr5
	xvst	$xr6, $sp, 240                  # 32-byte Folded Spill
	xvreplve0.w	$xr6, $xr6
	xvst	$xr7, $sp, 272                  # 32-byte Folded Spill
	xvreplve0.w	$xr7, $xr7
	xvst	$xr8, $sp, 304                  # 32-byte Folded Spill
	xvreplve0.w	$xr8, $xr8
	xvst	$xr9, $sp, 336                  # 32-byte Folded Spill
	xvreplve0.w	$xr9, $xr9
	xvst	$xr10, $sp, 368                 # 32-byte Folded Spill
	xvreplve0.w	$xr10, $xr10
	xvst	$xr11, $sp, 400                 # 32-byte Folded Spill
	xvreplve0.w	$xr11, $xr11
	xvst	$xr12, $sp, 432                 # 32-byte Folded Spill
	xvreplve0.w	$xr12, $xr12
	xvst	$xr13, $sp, 464                 # 32-byte Folded Spill
	xvreplve0.w	$xr13, $xr13
	xvst	$xr14, $sp, 496                 # 32-byte Folded Spill
	xvreplve0.w	$xr14, $xr14
	xvst	$xr15, $sp, 528                 # 32-byte Folded Spill
	xvreplve0.w	$xr15, $xr15
	xvst	$xr16, $sp, 560                 # 32-byte Folded Spill
	xvreplve0.w	$xr16, $xr16
	xvst	$xr17, $sp, 592                 # 32-byte Folded Spill
	xvreplve0.w	$xr17, $xr17
	xvst	$xr18, $sp, 624                 # 32-byte Folded Spill
	xvreplve0.w	$xr18, $xr18
	xvst	$xr19, $sp, 720                 # 32-byte Folded Spill
	xvreplve0.w	$xr19, $xr19
	xvst	$xr20, $sp, 752                 # 32-byte Folded Spill
	xvreplve0.w	$xr20, $xr20
	pcalau12i	$a2, %got_pc_hi20(n_dis)
	ld.d	$a2, $a2, %got_pc_lo12(n_dis)
	move	$a3, $zero
	ori	$a7, $zero, 2080
	ori	$t0, $zero, 2184
	ori	$t1, $zero, 2288
	ori	$t2, $zero, 2392
	ori	$t3, $zero, 2496
	ori	$t4, $zero, 2600
	addi.d	$t5, $sp, 792
	ori	$t6, $zero, 96
	.p2align	4, , 16
.LBB2_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvldx	$xr21, $a2, $a3
	add.d	$t7, $a2, $a3
	xvsub.w	$xr21, $xr21, $xr26
	xvld	$xr22, $t7, 104
	xvffint.s.w	$xr21, $xr21
	xvrepli.b	$xr23, 0
	xvfmadd.s	$xr21, $xr21, $xr29, $xr23
	xvsub.w	$xr22, $xr22, $xr26
	xvld	$xr23, $t7, 208
	xvffint.s.w	$xr22, $xr22
	xvfmadd.s	$xr21, $xr22, $xr30, $xr21
	xvld	$xr22, $t7, 312
	xvsub.w	$xr23, $xr23, $xr26
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr31, $xr21
	xvsub.w	$xr22, $xr22, $xr26
	xvld	$xr23, $t7, 416
	xvffint.s.w	$xr22, $xr22
	xvfmadd.s	$xr21, $xr22, $xr0, $xr21
	xvld	$xr22, $t7, 520
	xvsub.w	$xr23, $xr23, $xr26
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr1, $xr21
	xvsub.w	$xr22, $xr22, $xr26
	xvld	$xr23, $t7, 624
	xvffint.s.w	$xr22, $xr22
	xvfmadd.s	$xr21, $xr22, $xr2, $xr21
	xvld	$xr22, $t7, 728
	xvsub.w	$xr23, $xr23, $xr26
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr3, $xr21
	xvsub.w	$xr22, $xr22, $xr26
	xvld	$xr23, $t7, 832
	xvffint.s.w	$xr22, $xr22
	xvfmadd.s	$xr21, $xr22, $xr4, $xr21
	xvld	$xr22, $t7, 936
	xvsub.w	$xr23, $xr23, $xr26
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr5, $xr21
	xvsub.w	$xr22, $xr22, $xr26
	xvld	$xr23, $t7, 1040
	xvffint.s.w	$xr22, $xr22
	xvfmadd.s	$xr21, $xr22, $xr6, $xr21
	xvld	$xr22, $t7, 1144
	xvsub.w	$xr23, $xr23, $xr26
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr7, $xr21
	xvsub.w	$xr22, $xr22, $xr26
	xvld	$xr23, $t7, 1248
	xvffint.s.w	$xr22, $xr22
	xvfmadd.s	$xr21, $xr22, $xr8, $xr21
	xvld	$xr22, $t7, 1352
	xvsub.w	$xr23, $xr23, $xr26
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr27, $xr21
	xvsub.w	$xr22, $xr22, $xr26
	xvld	$xr23, $t7, 1456
	xvffint.s.w	$xr22, $xr22
	xvfmadd.s	$xr21, $xr22, $xr28, $xr21
	xvld	$xr22, $t7, 1560
	xvsub.w	$xr23, $xr23, $xr26
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr9, $xr21
	xvsub.w	$xr22, $xr22, $xr26
	xvld	$xr23, $t7, 1664
	xvffint.s.w	$xr22, $xr22
	xvfmadd.s	$xr21, $xr22, $xr10, $xr21
	xvld	$xr22, $t7, 1768
	xvsub.w	$xr23, $xr23, $xr26
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr11, $xr21
	xvsub.w	$xr22, $xr22, $xr26
	xvld	$xr23, $t7, 1872
	xvffint.s.w	$xr22, $xr22
	xvfmadd.s	$xr21, $xr22, $xr12, $xr21
	xvld	$xr22, $t7, 1976
	xvsub.w	$xr23, $xr23, $xr26
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr13, $xr21
	xvsub.w	$xr22, $xr22, $xr26
	xvldx	$xr23, $t7, $a7
	xvffint.s.w	$xr22, $xr22
	xvfmadd.s	$xr21, $xr22, $xr14, $xr21
	xvldx	$xr22, $t7, $t0
	xvsub.w	$xr23, $xr23, $xr26
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr15, $xr21
	xvsub.w	$xr22, $xr22, $xr26
	xvldx	$xr23, $t7, $t1
	xvffint.s.w	$xr22, $xr22
	xvfmadd.s	$xr21, $xr22, $xr16, $xr21
	xvldx	$xr22, $t7, $t2
	xvsub.w	$xr23, $xr23, $xr26
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr17, $xr21
	xvsub.w	$xr22, $xr22, $xr26
	xvldx	$xr23, $t7, $t3
	xvffint.s.w	$xr22, $xr22
	xvfmadd.s	$xr21, $xr22, $xr18, $xr21
	xvldx	$xr22, $t7, $t4
	xvsub.w	$xr23, $xr23, $xr26
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr19, $xr21
	xvsub.w	$xr22, $xr22, $xr26
	xvffint.s.w	$xr22, $xr22
	xvfmadd.s	$xr21, $xr22, $xr20, $xr21
	xvstx	$xr21, $a3, $t5
	addi.d	$a3, $a3, 32
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
	xvld	$xr11, $sp, 16                  # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft3, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 512
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr9, $sp, 48                   # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft1, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 616
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr8, $sp, 80                   # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft0, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 720
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr7, $sp, 112                  # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa7, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 824
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr5, $sp, 144                  # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa5, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 928
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr3, $sp, 176                  # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa3, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1032
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr4, $sp, 208                  # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa4, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1136
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr6, $sp, 240                  # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa6, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1240
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr10, $sp, 272                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft2, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1344
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr13, $sp, 304                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft5, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1448
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr17, $sp, 656                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft9, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1552
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr16, $sp, 688                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft8, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1656
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr30, $sp, 336                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs6, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1760
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr29, $sp, 368                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs5, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1864
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr28, $sp, 400                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs4, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1968
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr27, $sp, 432                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs3, $fa0
	sub.d	$a3, $a7, $a1
	ori	$a7, $zero, 2072
	ldx.w	$a7, $a2, $a7
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr23, $sp, 464                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft15, $fa0
	sub.d	$a3, $a7, $a1
	ori	$a7, $zero, 2176
	ldx.w	$a7, $a2, $a7
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr22, $sp, 496                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft14, $fa0
	sub.d	$a3, $a7, $a1
	ori	$a7, $zero, 2280
	ldx.w	$a7, $a2, $a7
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr21, $sp, 528                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft13, $fa0
	sub.d	$a3, $a7, $a1
	ori	$a7, $zero, 2384
	ldx.w	$a7, $a2, $a7
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr20, $sp, 560                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft12, $fa0
	sub.d	$a3, $a7, $a1
	ori	$a7, $zero, 2488
	ldx.w	$a7, $a2, $a7
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr19, $sp, 592                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft11, $fa0
	sub.d	$a3, $a7, $a1
	ori	$a7, $zero, 2592
	ldx.w	$a7, $a2, $a7
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr18, $sp, 624                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft10, $fa0
	sub.d	$a3, $a7, $a1
	ori	$a7, $zero, 2696
	ldx.w	$a7, $a2, $a7
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr15, $sp, 720                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft7, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 100
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr14, $sp, 752                 # 32-byte Folded Reload
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
	fst.s	$fa0, $sp, 888
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
	fst.s	$fa0, $sp, 892
	addi.d	$a1, $sp, 792
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
	fld.d	$fs7, $sp, 896                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 904                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 912                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 920                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 928                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 936                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 944                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 952                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 960                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 968                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 976
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
