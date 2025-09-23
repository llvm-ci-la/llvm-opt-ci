	.file	"MSalignmm.c"
	.text
	.globl	MSalignmm                       # -- Begin function MSalignmm
	.p2align	5
	.type	MSalignmm,@function
MSalignmm:                              # @MSalignmm
# %bb.0:
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
	move	$s1, $a7
	move	$fp, $a5
	move	$s0, $a4
	move	$s4, $a3
	move	$s5, $a2
	move	$s6, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	move	$s8, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	add.d	$a0, $s8, $a0
	addi.w	$s3, $a0, 200
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$fp, $sp, 184                   # 8-byte Folded Spill
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $zero, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.w	$s3, $s8, 102
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	addi.w	$s7, $s7, 102
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$a1, $zero, 27
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ori	$a1, $zero, 27
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 112                   # 8-byte Folded Spill
	addi.w	$s8, $s8, 0
	blez	$s0, .LBB0_4
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	move	$s7, $s0
	move	$fp, $s2
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB0_48
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addi.w	$s3, $s3, 1
	addi.d	$s7, $s7, -1
	addi.d	$fp, $fp, 8
	bnez	$s7, .LBB0_2
.LBB0_4:                                # %.preheader209
	st.d	$s0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$s3, $a0, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	blez	$a0, .LBB0_8
# %bb.5:                                # %.lr.ph216
	move	$s7, $zero
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	move	$s0, $s6
	.p2align	4, , 16
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_49
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	addi.w	$s7, $s7, 1
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB0_6
.LBB0_8:                                # %._crit_edge
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fs0, $fa0
	move	$a0, $s2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s8
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	move	$a4, $s0
	pcaddu18i	$ra, %call36(MScpmx_calc_new)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	move	$a2, $s4
	move	$a3, $s3
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	move	$a4, $s7
	pcaddu18i	$ra, %call36(MScpmx_calc_new)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB0_10
# %bb.9:
	ld.d	$s7, $sp, 304
	move	$a5, $s1
	ld.d	$s1, $sp, 288
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	move	$a2, $s6
	move	$a3, $s4
	move	$a4, $s3
	move	$a5, $s1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s8
	move	$a5, $s7
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	move	$a2, $s6
	move	$a3, $s4
	move	$a4, $s3
	move	$a5, $s7
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	b	.LBB0_11
.LBB0_10:
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$s1, $a0
	move	$a1, $s7
	move	$a2, $s6
	move	$a3, $s4
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s6
	move	$a3, $s4
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
.LBB0_11:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	fcvt.d.s	$fa0, $fs0
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	move	$a7, $s1
	move	$s1, $a0
	blez	$s8, .LBB0_18
# %bb.12:                               # %.lr.ph219
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	ori	$a1, $zero, 4
	bltu	$a0, $a1, .LBB0_15
# %bb.13:                               # %vector.memcheck
	alsl.d	$a1, $a0, $a5, 2
	bgeu	$fp, $a1, .LBB0_42
# %bb.14:                               # %vector.memcheck
	alsl.d	$a1, $a0, $fp, 2
	bgeu	$a5, $a1, .LBB0_42
.LBB0_15:
	move	$a1, $zero
.LBB0_16:                               # %scalar.ph.preheader
	alsl.d	$a2, $a1, $a5, 2
	alsl.d	$a3, $a1, $fp, 2
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
.LBB0_18:                               # %.preheader208
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	blez	$s3, .LBB0_25
# %bb.19:                               # %.lr.ph221
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	ori	$a1, $zero, 4
	bltu	$a0, $a1, .LBB0_22
# %bb.20:                               # %vector.memcheck285
	alsl.d	$a1, $a0, $a6, 2
	bgeu	$a7, $a1, .LBB0_45
# %bb.21:                               # %vector.memcheck285
	alsl.d	$a1, $a0, $a7, 2
	bgeu	$a6, $a1, .LBB0_45
.LBB0_22:
	move	$a1, $zero
.LBB0_23:                               # %scalar.ph291.preheader
	alsl.d	$a2, $a1, $a6, 2
	alsl.d	$a3, $a1, $a7, 2
	sub.d	$a0, $a0, $a1
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB0_24:                               # %scalar.ph291
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
.LBB0_25:                               # %._crit_edge222
	st.d	$fp, $s8, 0
	st.d	$a5, $s8, 8
	st.d	$a7, $s8, 16
	st.d	$a6, $s8, 24
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a7, $a0, -1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$s8, $sp, 40
	st.d	$zero, $sp, 32
	st.d	$s4, $sp, 24
	st.d	$s5, $sp, 16
	st.d	$a0, $sp, 8
	st.d	$zero, $sp, 0
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	move	$a0, $fp
	move	$a1, $s7
	move	$a2, $s2
	move	$a3, $s6
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	move	$a6, $zero
	pcaddu18i	$ra, %call36(MSalignmm_rec)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	blez	$fp, .LBB0_28
# %bb.26:                               # %.lr.ph225.preheader
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	move	$s0, $s2
	move	$s3, $s5
	.p2align	4, , 16
.LBB0_27:                               # %.lr.ph225
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s3, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 8
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB0_27
.LBB0_28:                               # %.preheader207
	blez	$s7, .LBB0_31
# %bb.29:                               # %.lr.ph227.preheader
	move	$fp, $s7
	move	$s0, $s6
	move	$s3, $s4
	.p2align	4, , 16
.LBB0_30:                               # %.lr.ph227
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s3, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 8
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB0_30
.LBB0_31:                               # %._crit_edge228
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB0_55
# %bb.32:
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	bne	$a0, $s1, .LBB0_56
# %bb.33:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	blez	$s0, .LBB0_37
# %bb.34:                               # %.lr.ph231
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $zero
	addi.w	$s5, $a0, 0
	move	$fp, $s0
	.p2align	4, , 16
.LBB0_35:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB0_51
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=1
	addi.w	$s4, $s4, 1
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 8
	bnez	$fp, .LBB0_35
.LBB0_37:                               # %.preheader
	blez	$s7, .LBB0_41
# %bb.38:                               # %.lr.ph233
	move	$s1, $zero
	addi.w	$s2, $s3, 0
	move	$fp, $s7
	.p2align	4, , 16
.LBB0_39:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_52
# %bb.40:                               #   in Loop: Header=BB0_39 Depth=1
	addi.w	$s1, $s1, 1
	addi.d	$fp, $fp, -1
	addi.d	$s6, $s6, 8
	bnez	$fp, .LBB0_39
.LBB0_41:                               # %._crit_edge234
	fmov.s	$fa0, $fs0
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
.LBB0_42:                               # %vector.ph
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 2
	slli.d	$a1, $a1, 2
	vreplvei.d	$vr1, $vr0, 0
	lu52i.d	$a2, $zero, 1023
	vreplgr2vr.d	$vr2, $a2
	lu52i.d	$a2, $zero, 1022
	vreplgr2vr.d	$vr3, $a2
	move	$a2, $fp
	move	$a3, $a5
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_43:                               # %vector.body
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
	bnez	$a4, .LBB0_43
# %bb.44:                               # %middle.block
	beq	$a0, $a1, .LBB0_18
	b	.LBB0_16
.LBB0_45:                               # %vector.ph293
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 2
	slli.d	$a1, $a1, 2
	vreplvei.d	$vr1, $vr0, 0
	lu52i.d	$a2, $zero, 1023
	vreplgr2vr.d	$vr2, $a2
	lu52i.d	$a2, $zero, 1022
	vreplgr2vr.d	$vr3, $a2
	move	$a2, $a7
	move	$a3, $a6
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_46:                               # %vector.body298
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
	bnez	$a4, .LBB0_46
# %bb.47:                               # %middle.block303
	beq	$a0, $a1, .LBB0_25
	b	.LBB0_23
.LBB0_48:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s3
	move	$a3, $s0
	b	.LBB0_50
.LBB0_49:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s7
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
.LBB0_50:
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 27
	b	.LBB0_54
.LBB0_51:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s4
	move	$a3, $s0
	b	.LBB0_53
.LBB0_52:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s1
	move	$a3, $s7
.LBB0_53:
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 42
.LBB0_54:
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_55:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$fp, $s0, 0
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_56:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$fp, $a0, 0
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	MSalignmm, .Lfunc_end0-MSalignmm
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function MSalignmm_rec
.LCPI1_0:
	.word	0xcb189680                      # float -1.0E+7
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI1_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	MSalignmm_rec,@function
MSalignmm_rec:                          # @MSalignmm_rec
# %bb.0:
	addi.d	$sp, $sp, -688
	st.d	$ra, $sp, 680                   # 8-byte Folded Spill
	st.d	$fp, $sp, 672                   # 8-byte Folded Spill
	st.d	$s0, $sp, 664                   # 8-byte Folded Spill
	st.d	$s1, $sp, 656                   # 8-byte Folded Spill
	st.d	$s2, $sp, 648                   # 8-byte Folded Spill
	st.d	$s3, $sp, 640                   # 8-byte Folded Spill
	st.d	$s4, $sp, 632                   # 8-byte Folded Spill
	st.d	$s5, $sp, 624                   # 8-byte Folded Spill
	st.d	$s6, $sp, 616                   # 8-byte Folded Spill
	st.d	$s7, $sp, 608                   # 8-byte Folded Spill
	st.d	$s8, $sp, 600                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 592                  # 8-byte Folded Spill
	move	$s5, $a6
	st.d	$a5, $sp, 208                   # 8-byte Folded Spill
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	move	$s4, $a2
	move	$s0, $a1
	move	$s3, $a0
	ld.d	$a6, $sp, 728
	ld.d	$a0, $sp, 712
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 704
	ld.d	$a4, $sp, 696
	ld.d	$a2, $sp, 688
	ld.d	$a0, $a6, 0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(reccycle)
	ld.w	$a1, $a0, %pc_lo12(reccycle)
	ld.d	$a5, $a6, 8
	st.d	$a5, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a5, $a6, 16
	ld.d	$s8, $a6, 24
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(reccycle)
	sub.d	$fp, $a7, $s5
	addi.w	$a0, $fp, 0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	sub.w	$a0, $a4, $a2
	addi.w	$s6, $fp, 1
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	bltz	$a0, .LBB1_24
# %bb.1:
	move	$s7, $a7
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	st.d	$a5, $sp, 304                   # 8-byte Folded Spill
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	st.d	$a6, $sp, 144                   # 8-byte Folded Spill
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB1_9
# %bb.2:                                # %.lr.ph.preheader
	ori	$a1, $zero, 4
	move	$a4, $zero
	bltu	$s3, $a1, .LBB1_7
# %bb.3:                                # %.lr.ph.preheader
	sub.d	$a1, $s1, $s2
	ori	$a2, $zero, 32
	bltu	$a1, $a2, .LBB1_7
# %bb.4:                                # %vector.ph
	bstrpick.d	$a1, $s3, 30, 2
	slli.d	$a4, $a1, 2
	addi.d	$a1, $s1, 16
	addi.d	$a2, $s2, 16
	move	$a3, $a4
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB1_5
# %bb.6:                                # %middle.block
	beq	$a4, $s3, .LBB1_9
.LBB1_7:                                # %.lr.ph.preheader401
	alsl.d	$a1, $a4, $s1, 3
	alsl.d	$a2, $a4, $s2, 3
	sub.d	$a4, $s3, $a4
	.p2align	4, , 16
.LBB1_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	st.d	$a3, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	bnez	$a4, .LBB1_8
.LBB1_9:                                # %.preheader763
	st.d	$s6, $sp, 400                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	addi.w	$s6, $a1, 1
	blez	$s0, .LBB1_17
# %bb.10:                               # %.lr.ph778.preheader
	ori	$a1, $zero, 4
	move	$a4, $zero
	bltu	$s0, $a1, .LBB1_15
# %bb.11:                               # %.lr.ph778.preheader
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	sub.d	$a1, $a0, $a1
	ori	$a2, $zero, 32
	bltu	$a1, $a2, .LBB1_15
# %bb.12:                               # %vector.ph16
	bstrpick.d	$a1, $s0, 30, 2
	slli.d	$a4, $a1, 2
	addi.d	$a1, $a0, 16
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 16
	move	$a3, $a4
	.p2align	4, , 16
.LBB1_13:                               # %vector.body19
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB1_13
# %bb.14:                               # %middle.block24
	beq	$a4, $s0, .LBB1_17
.LBB1_15:                               # %.lr.ph778.preheader400
	alsl.d	$a1, $a4, $a0, 3
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a2, $a4, $a2, 3
	sub.d	$a4, $s0, $a4
	.p2align	4, , 16
.LBB1_16:                               # %.lr.ph778
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	st.d	$a3, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	bnez	$a4, .LBB1_16
.LBB1_17:                               # %._crit_edge
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 168                   # 8-byte Folded Spill
	ori	$a0, $zero, 99
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 280                   # 8-byte Folded Spill
	st.d	$s6, $sp, 472                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	st.d	$s4, $sp, 320                   # 8-byte Folded Spill
	blt	$a1, $a0, .LBB1_32
# %bb.18:                               # %._crit_edge
	ori	$a0, $zero, 98
	bgeu	$a0, $s2, .LBB1_32
# %bb.19:                               # %.lr.ph781.preheader
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a0, $s5, $a0, 2
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a0, $s5, $a0, 2
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	addi.w	$s1, $s2, 103
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s5, $sp, 408                   # 8-byte Folded Reload
	addi.w	$s7, $s5, 103
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s7
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	sltu	$a0, $s2, $s5
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s5, $a0
	or	$a0, $a0, $a1
	addi.w	$s1, $a0, 103
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ori	$a1, $zero, 26
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 26
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	alsl.d	$fp, $a0, $a1, 3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$s8, $s8, $a0, 3
	ori	$a7, $zero, 1
	ori	$s1, $zero, 1
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s8
	move	$a3, $zero
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	move	$a5, $s2
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$s8, $sp, 376                   # 8-byte Folded Spill
	move	$a1, $s8
	st.d	$fp, $sp, 296                   # 8-byte Folded Spill
	move	$a2, $fp
	move	$a3, $zero
	move	$a4, $s6
	st.d	$s2, $sp, 392                   # 8-byte Folded Spill
	move	$a5, $s2
	st.d	$s7, $sp, 384                   # 8-byte Folded Spill
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a1, $s0, 4
	alsl.d	$a2, $a0, $s0, 2
	addi.d	$t6, $a7, 4
	sltu	$a3, $a1, $t6
	sltu	$a4, $a7, $a2
	and	$a3, $a3, $a4
	bnez	$a3, .LBB1_134
# %bb.20:                               # %.lr.ph781.preheader
	ld.d	$t7, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $t7, 2
	addi.d	$a3, $a3, -4
	sltu	$a1, $a1, $a3
	sltu	$a2, $t7, $a2
	and	$a1, $a1, $a2
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
	bnez	$a1, .LBB1_135
# %bb.21:                               # %vector.ph35
	addi.d	$a1, $a0, -1
	move	$a2, $a1
	bstrins.d	$a2, $zero, 2, 0
	ori	$a3, $zero, 1
	move	$s1, $a1
	vldrepl.w	$vr0, $a7, 0
	bstrins.d	$s1, $a3, 2, 0
	addi.d	$a3, $t7, 16
	addi.d	$a4, $s0, 20
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_22:                               # %vector.body38
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, -16
	vld	$vr2, $a3, 0
	vld	$vr3, $a4, -16
	vld	$vr4, $a4, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a4, -16
	vst	$vr2, $a4, 0
	addi.d	$a3, $a3, 32
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB1_22
# %bb.23:                               # %middle.block45
	bne	$a1, $a2, .LBB1_135
	b	.LBB1_137
.LBB1_24:                               # %.preheader751
	blez	$s3, .LBB1_26
	.p2align	4, , 16
.LBB1_25:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 0
	ld.d	$a0, $s2, 0
	add.d	$a1, $a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	stx.b	$zero, $a0, $s6
	addi.d	$s4, $s4, 8
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, 8
	bnez	$s3, .LBB1_25
.LBB1_26:                               # %.preheader
	move	$s7, $s6
	movgr2fr.w	$fs0, $zero
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	blez	$s0, .LBB1_282
# %bb.27:                               # %.lr.ph869
	move	$fp, $zero
	ori	$s2, $zero, 45
	ld.d	$s5, $sp, 408                   # 8-byte Folded Reload
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_28:                               # %._crit_edge867
                                        #   in Loop: Header=BB1_29 Depth=1
	addi.d	$fp, $fp, 1
	beq	$fp, $s0, .LBB1_282
.LBB1_29:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_31 Depth 2
	slli.d	$a0, $fp, 3
	ldx.d	$a0, $s6, $a0
	st.b	$zero, $a0, 0
	bltz	$s5, .LBB1_28
# %bb.30:                               # %.lr.ph866.preheader
                                        #   in Loop: Header=BB1_29 Depth=1
	alsl.d	$s3, $fp, $s6, 3
	move	$s4, $s7
	.p2align	4, , 16
.LBB1_31:                               # %.lr.ph866
                                        #   Parent Loop BB1_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s3, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	stx.h	$s2, $s1, $a0
	bnez	$s4, .LBB1_31
	b	.LBB1_28
.LBB1_32:
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 0
	ld.d	$a3, $a1, 8
	ld.d	$a2, $a1, 16
	st.d	$a2, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 24
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	alsl.d	$a0, $s5, $a0, 2
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	st.d	$a3, $sp, 344                   # 8-byte Folded Spill
	alsl.d	$a0, $s5, $a3, 2
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	addi.w	$s1, $s2, 103
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 408                   # 8-byte Folded Reload
	addi.w	$s7, $s3, 103
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	slt	$a0, $s2, $s3
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	addi.w	$s1, $a0, 103
	ori	$a1, $zero, 27
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ori	$a1, $zero, 27
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$a0, $s3, 102
	addi.w	$a1, $s2, 102
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$s7, $a1, $a0, 3
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$s5, $a0, $a1, 3
	ori	$a7, $zero, 1
	move	$a0, $s0
	move	$a1, $s7
	move	$a2, $s5
	move	$a3, $zero
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	move	$a5, $s8
	move	$a6, $s1
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	move	$a0, $fp
	st.d	$s5, $sp, 424                   # 8-byte Folded Spill
	move	$a1, $s5
	move	$a2, $s7
	ld.d	$fp, $sp, 280                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $s6
	st.d	$s8, $sp, 448                   # 8-byte Folded Spill
	move	$a5, $s8
	st.d	$s1, $sp, 440                   # 8-byte Folded Spill
	move	$a6, $s1
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	addi.w	$t7, $s3, 2
	bltz	$s3, .LBB1_36
# %bb.33:                               # %.lr.ph.preheader.i
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t7, $a1
	or	$a0, $a1, $a0
	ori	$a2, $zero, 13
	ori	$a1, $zero, 1
	bge	$t7, $a2, .LBB1_78
.LBB1_34:                               # %.lr.ph.i.preheader
	sub.d	$a0, $a0, $a1
	slli.d	$a2, $a1, 2
	alsl.d	$a1, $a1, $s0, 2
	alsl.d	$a2, $fp, $a2, 2
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB1_35:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s1, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB1_35
.LBB1_36:                               # %.preheader209.i
	ld.d	$t3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a0, $t3, $a0, 2
	ld.d	$t2, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a1, $t3, $t2, 2
	addi.w	$t1, $s2, 2
	ori	$a2, $zero, 2
	slt	$a3, $a2, $t1
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $t1, $a3
	or	$a5, $a3, $a2
	addi.d	$a3, $a5, -1
	ori	$a2, $zero, 13
	ld.d	$t8, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a4, $a5, $t8, 2
	bge	$t1, $a2, .LBB1_64
# %bb.37:
	ld.d	$t6, $sp, 376                   # 8-byte Folded Reload
	ori	$t5, $zero, 1
.LBB1_38:                               # %.lr.ph219.i.preheader
	sub.d	$a2, $a5, $t5
	slli.d	$a7, $t5, 2
	alsl.d	$a6, $t5, $t8, 2
	alsl.d	$a7, $t3, $a7, 2
	add.d	$a7, $a7, $t2
	addi.d	$a7, $a7, -4
	.p2align	4, , 16
.LBB1_39:                               # %.lr.ph219.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a7, 0
	fld.s	$fa2, $a6, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a6, 0
	addi.d	$a2, $a2, -1
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 4
	bnez	$a2, .LBB1_39
.LBB1_40:                               # %.lr.ph222.i
	addi.d	$a6, $s1, 4
	ori	$a7, $zero, 1
	ori	$t0, $zero, 13
	addi.d	$a2, $t6, 4
	st.d	$t1, $sp, 360                   # 8-byte Folded Spill
	bge	$t1, $t0, .LBB1_69
# %bb.41:
	ld.d	$t5, $sp, 408                   # 8-byte Folded Reload
.LBB1_42:                               # %scalar.ph293.preheader
	sub.d	$a3, $a5, $a7
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a4, $a7, $a4, 2
	alsl.d	$t0, $a7, $t6, 2
	alsl.d	$a7, $a7, $t8, 2
	addi.d	$a7, $a7, -4
	.p2align	4, , 16
.LBB1_43:                               # %scalar.ph293
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a7, 0
	fld.s	$fa1, $a6, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $t0, 0
	st.w	$zero, $a4, 0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	bnez	$a3, .LBB1_43
.LBB1_44:                               # %._crit_edge.i
	slli.d	$a3, $s2, 2
	fldx.s	$fa0, $t8, $a3
	ld.d	$a4, $sp, 464                   # 8-byte Folded Reload
	fst.s	$fa0, $a4, 0
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$t7, $sp, 336                   # 8-byte Folded Spill
	bltz	$t5, .LBB1_74
# %bb.45:                               # %.lr.ph243.i
	ori	$a4, $zero, 2
	slt	$a6, $a4, $t7
	masknez	$a4, $a4, $a6
	maskeqz	$a6, $t7, $a6
	or	$a4, $a6, $a4
	slli.d	$a5, $a5, 2
	addi.d	$a5, $a5, -4
	addi.d	$a6, $a0, 4
	ld.d	$a7, $sp, 392                   # 8-byte Folded Reload
	addi.d	$a7, $a7, 4
	ori	$t0, $zero, 1
	pcalau12i	$t1, %got_pc_hi20(n_dis)
	ld.d	$t1, $t1, %got_pc_lo12(n_dis)
	movgr2fr.w	$fa0, $zero
	ori	$t2, $zero, 104
	addi.d	$t3, $sp, 488
	ori	$t4, $zero, 26
	ld.d	$t5, $sp, 368                   # 8-byte Folded Reload
	b	.LBB1_47
	.p2align	4, , 16
.LBB1_46:                               # %._crit_edge236.i
                                        #   in Loop: Header=BB1_47 Depth=1
	fldx.s	$fa1, $t5, $a3
	addi.d	$t0, $t0, 1
	ld.d	$t7, $sp, 464                   # 8-byte Folded Reload
	fstx.s	$fa1, $t7, $s3
	move	$t8, $t5
	move	$t5, $t6
	move	$s1, $s0
	beq	$t0, $a4, .LBB1_75
.LBB1_47:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_48 Depth 2
                                        #       Child Loop BB1_49 Depth 3
                                        #     Child Loop BB1_53 Depth 2
                                        #       Child Loop BB1_55 Depth 3
                                        #     Child Loop BB1_58 Depth 2
	addi.d	$t7, $t0, -1
	slli.d	$t6, $t7, 2
	ld.d	$fp, $sp, 456                   # 8-byte Folded Reload
	fldx.s	$fa1, $fp, $t6
	move	$t6, $t8
	fst.s	$fa1, $t8, 0
	slli.d	$t8, $t0, 3
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	ldx.d	$s2, $s0, $t8
	move	$s3, $zero
	move	$s4, $t1
	.p2align	4, , 16
.LBB1_48:                               #   Parent Loop BB1_47 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_49 Depth 3
	move	$s5, $zero
	move	$s6, $s4
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB1_49:                               #   Parent Loop BB1_47 Depth=1
                                        #     Parent Loop BB1_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s7, $s6, 0
	fldx.s	$fa2, $s2, $s5
	movgr2fr.w	$fa3, $s7
	ffint.s.w	$fa3, $fa3
	fmadd.s	$fa1, $fa3, $fa2, $fa1
	addi.d	$s5, $s5, 4
	addi.d	$s6, $s6, 104
	bne	$s5, $t2, .LBB1_49
# %bb.50:                               #   in Loop: Header=BB1_48 Depth=2
	slli.d	$s5, $s3, 2
	fstx.s	$fa1, $s5, $t3
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 4
	bne	$s3, $t4, .LBB1_48
# %bb.51:                               # %.lr.ph74.i.i.preheader
                                        #   in Loop: Header=BB1_47 Depth=1
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 448                   # 8-byte Folded Reload
	move	$s5, $t5
	b	.LBB1_53
	.p2align	4, , 16
.LBB1_52:                               # %._crit_edge.i.i
                                        #   in Loop: Header=BB1_53 Depth=2
	addi.w	$s2, $s2, -1
	addi.d	$s5, $s5, 4
	addi.d	$s3, $s3, 8
	addi.d	$s4, $s4, 8
	beqz	$s2, .LBB1_56
.LBB1_53:                               # %.lr.ph74.i.i
                                        #   Parent Loop BB1_47 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_55 Depth 3
	st.w	$zero, $s5, 0
	ld.d	$s8, $s3, 0
	ld.wu	$s7, $s8, 0
	addi.w	$s6, $s7, 0
	bltz	$s6, .LBB1_52
# %bb.54:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB1_53 Depth=2
	ld.d	$s6, $s4, 0
	addi.d	$s8, $s8, 4
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB1_55:                               #   Parent Loop BB1_47 Depth=1
                                        #     Parent Loop BB1_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$s7, $s7, 2
	fldx.s	$fa2, $s7, $t3
	fld.s	$fa3, $s6, 0
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fst.s	$fa1, $s5, 0
	ld.wu	$s7, $s8, 0
	addi.w	$ra, $s7, 0
	addi.d	$s8, $s8, 4
	addi.d	$s6, $s6, 4
	bgez	$ra, .LBB1_55
	b	.LBB1_52
	.p2align	4, , 16
.LBB1_56:                               # %match_calc.exit.i
                                        #   in Loop: Header=BB1_47 Depth=1
	slli.d	$s3, $t0, 2
	fldx.s	$fa1, $fp, $s3
	fst.s	$fa1, $t5, 0
	fld.s	$fa1, $t6, 0
	fld.s	$fa2, $a0, 4
	move	$s4, $zero
	move	$s5, $zero
	move	$ra, $zero
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ldx.d	$s2, $fp, $t8
	fadd.s	$fa1, $fa1, $fa2
	ld.d	$t8, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$t8, $t7, $t8, 2
	move	$s0, $s1
	alsl.d	$s7, $t0, $s1, 2
	addi.d	$s8, $s2, 4
	addi.d	$s6, $t5, 4
	addi.d	$s2, $zero, -1
	b	.LBB1_58
	.p2align	4, , 16
.LBB1_57:                               #   in Loop: Header=BB1_58 Depth=2
	fadd.s	$fa2, $fa2, $fa3
	fcmp.cult.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	movcf2gr	$s1, $fcc0
	fldx.s	$fa2, $s6, $s5
	masknez	$fp, $s4, $s1
	maskeqz	$s1, $ra, $s1
	or	$ra, $s1, $fp
	fadd.s	$fa2, $fs0, $fa2
	fstx.s	$fa2, $s6, $s5
	addi.d	$s2, $s2, -1
	addi.d	$s5, $s5, 4
	addi.d	$s4, $s4, 1
	beq	$a5, $s5, .LBB1_46
.LBB1_58:                               #   Parent Loop BB1_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa2, $t6, $s5
	stx.w	$zero, $s8, $s5
	fldx.s	$fa3, $a1, $s5
	fadd.s	$fa3, $fa1, $fa3
	fcmp.cule.s	$fcc0, $fa3, $fa2
	fmov.s	$fs0, $fa2
	bcnez	$fcc0, .LBB1_60
# %bb.59:                               #   in Loop: Header=BB1_58 Depth=2
	add.d	$s1, $s2, $ra
	stx.w	$s1, $s8, $s5
	fmov.s	$fs0, $fa3
.LBB1_60:                               #   in Loop: Header=BB1_58 Depth=2
	fldx.s	$fa4, $a2, $s5
	fld.s	$fa5, $t8, 0
	fldx.s	$fa3, $a6, $s5
	fadd.s	$fa5, $fa4, $fa5
	fcmp.cule.s	$fcc0, $fa5, $fs0
	bcnez	$fcc0, .LBB1_62
# %bb.61:                               #   in Loop: Header=BB1_58 Depth=2
	ldx.w	$s1, $a7, $s5
	sub.d	$s1, $t0, $s1
	stx.w	$s1, $s8, $s5
	fmov.s	$fs0, $fa5
.LBB1_62:                               #   in Loop: Header=BB1_58 Depth=2
	fld.s	$fa5, $s7, 0
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa4
	bcnez	$fcc0, .LBB1_57
# %bb.63:                               #   in Loop: Header=BB1_58 Depth=2
	fstx.s	$fa5, $a2, $s5
	stx.w	$t7, $a7, $s5
	b	.LBB1_57
.LBB1_64:                               # %vector.memcheck251
	addi.d	$a2, $t8, 4
	addi.d	$a6, $a0, 4
	sltu	$a6, $a2, $a6
	sltu	$a7, $a0, $a4
	and	$a6, $a6, $a7
	ld.d	$t6, $sp, 376                   # 8-byte Folded Reload
	ori	$t5, $zero, 1
	bnez	$a6, .LBB1_38
# %bb.65:                               # %vector.memcheck251
	alsl.d	$a6, $a5, $a1, 2
	addi.d	$a6, $a6, -4
	sltu	$a2, $a2, $a6
	sltu	$a6, $a1, $a4
	and	$a2, $a2, $a6
	bnez	$a2, .LBB1_38
# %bb.66:                               # %vector.ph265
	move	$a2, $a3
	bstrins.d	$a2, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$t5, $a3
	vldrepl.w	$vr0, $a0, 0
	bstrins.d	$t5, $a6, 2, 0
	addi.d	$a6, $a1, 16
	addi.d	$a7, $t8, 20
	move	$t0, $a2
	.p2align	4, , 16
.LBB1_67:                               # %vector.body268
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a6, -16
	vld	$vr2, $a6, 0
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a7, -16
	vst	$vr2, $a7, 0
	addi.d	$a6, $a6, 32
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB1_67
# %bb.68:                               # %middle.block278
	bne	$a3, $a2, .LBB1_38
	b	.LBB1_40
.LBB1_69:                               # %vector.memcheck281
	alsl.d	$t0, $a5, $t6, 2
	addi.d	$a4, $a4, -4
	sltu	$a4, $a2, $a4
	sltu	$t1, $t8, $t0
	and	$a4, $a4, $t1
	ld.d	$t5, $sp, 408                   # 8-byte Folded Reload
	bnez	$a4, .LBB1_42
# %bb.70:                               # %vector.memcheck281
	addi.d	$a4, $s1, 8
	sltu	$a4, $a2, $a4
	sltu	$t0, $a6, $t0
	and	$a4, $a4, $t0
	bnez	$a4, .LBB1_42
# %bb.71:                               # %vector.ph295
	move	$a4, $a3
	bstrins.d	$a4, $zero, 2, 0
	ori	$t0, $zero, 1
	move	$a7, $a3
	bstrins.d	$a7, $t0, 2, 0
	vldrepl.w	$vr0, $a6, 0
	addi.d	$t0, $t8, 16
	addi.d	$t1, $t6, 20
	ld.d	$t2, $sp, 392                   # 8-byte Folded Reload
	addi.d	$t2, $t2, 20
	vrepli.b	$vr1, 0
	move	$t3, $a4
	.p2align	4, , 16
.LBB1_72:                               # %vector.body298
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t0, -16
	vld	$vr3, $t0, 0
	vfadd.s	$vr2, $vr2, $vr0
	vfadd.s	$vr3, $vr3, $vr0
	vst	$vr2, $t1, -16
	vst	$vr3, $t1, 0
	vst	$vr1, $t2, -16
	vst	$vr1, $t2, 0
	addi.d	$t3, $t3, -8
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	addi.d	$t2, $t2, 32
	bnez	$t3, .LBB1_72
# %bb.73:                               # %middle.block306
	bne	$a3, $a4, .LBB1_42
	b	.LBB1_44
.LBB1_74:
	movgr2fr.w	$fs0, $zero
.LBB1_75:                               # %._crit_edge244.i
	ld.d	$s3, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 400                   # 8-byte Folded Reload
	add.w	$fp, $s3, $s4
	addi.w	$s1, $fp, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	move	$s1, $a0
	ld.d	$s0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 360                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB1_88
# %bb.76:                               # %.lr.ph.preheader.i.i
	ori	$a2, $zero, 4
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a3, 31, 0
	bgeu	$a3, $a2, .LBB1_83
# %bb.77:
	move	$a2, $zero
	b	.LBB1_86
.LBB1_78:                               # %vector.memcheck221
	addi.d	$a2, $s0, 4
	alsl.d	$a3, $a0, $s0, 2
	addi.d	$a4, $s1, 4
	sltu	$a4, $a2, $a4
	sltu	$a5, $s1, $a3
	and	$a4, $a4, $a5
	bnez	$a4, .LBB1_34
# %bb.79:                               # %vector.memcheck221
	ld.d	$a5, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a5, 2
	addi.d	$a4, $a4, -4
	sltu	$a2, $a2, $a4
	sltu	$a3, $a5, $a3
	and	$a2, $a2, $a3
	bnez	$a2, .LBB1_34
# %bb.80:                               # %vector.ph235
	addi.d	$a2, $a0, -1
	move	$a3, $a2
	bstrins.d	$a3, $zero, 2, 0
	ori	$a4, $zero, 1
	move	$a1, $a2
	vldrepl.w	$vr0, $s1, 0
	bstrins.d	$a1, $a4, 2, 0
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 16
	addi.d	$a5, $s0, 20
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_81:                               # %vector.body238
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
	bnez	$a6, .LBB1_81
# %bb.82:                               # %middle.block248
	bne	$a2, $a3, .LBB1_34
	b	.LBB1_36
.LBB1_83:                               # %vector.ph311
	pcalau12i	$a2, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_1)
	bstrpick.d	$a2, $a0, 31, 2
	slli.d	$a2, $a2, 2
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB1_84:                               # %vector.body314
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, -16
	vld	$vr2, $a3, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.d	$a5, $vr1, 0
	vstelm.w	$vr4, $a5, 0, 0
	vpickve2gr.d	$a5, $vr1, 1
	vstelm.w	$vr4, $a5, 0, 1
	vpickve2gr.d	$a5, $vr2, 0
	vstelm.w	$vr3, $a5, 0, 0
	vpickve2gr.d	$a5, $vr2, 1
	vstelm.w	$vr3, $a5, 0, 1
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB1_84
# %bb.85:                               # %middle.block319
	beq	$a2, $a0, .LBB1_88
.LBB1_86:                               # %.lr.ph.i206.i.preheader
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	sub.d	$a0, $a0, $a2
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB1_87:                               # %.lr.ph.i206.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	st.w	$a2, $a4, 0
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB1_87
.LBB1_88:                               # %.lr.ph119.i.i
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a3, $zero, 6
	bstrpick.d	$a2, $a6, 31, 0
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	bgeu	$a4, $a3, .LBB1_90
# %bb.89:
	move	$a3, $zero
	b	.LBB1_93
.LBB1_90:                               # %vector.ph324
	bstrpick.d	$a3, $a2, 31, 3
	slli.d	$a3, $a3, 3
	pcalau12i	$a4, %pc_hi20(.LCPI1_2)
	vld	$vr0, $a4, %pc_lo12(.LCPI1_2)
	addi.d	$a4, $a0, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a5, $a3
	.p2align	4, , 16
.LBB1_91:                               # %vector.body327
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a4, -16
	vst	$vr4, $a4, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB1_91
# %bb.92:                               # %middle.block333
	beq	$a3, $a2, .LBB1_95
.LBB1_93:                               # %scalar.ph322.preheader
	alsl.d	$a0, $a3, $a0, 2
	nor	$a4, $a3, $zero
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB1_94:                               # %scalar.ph322
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, -1
	bnez	$a2, .LBB1_94
.LBB1_95:                               # %._crit_edge.i204.i
	add.d	$a0, $s5, $s4
	add.d	$s8, $a0, $s3
	stx.b	$zero, $a0, $s3
	add.d	$a0, $s1, $s4
	add.d	$s7, $a0, $s3
	stx.b	$zero, $a0, $s3
	bltz	$fp, .LBB1_126
# %bb.96:                               # %.lr.ph146.i.i.preheader
	move	$a6, $zero
	ori	$a0, $zero, 111
	ori	$a2, $zero, 45
	ori	$a3, $zero, 8
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a4, $zero, 16
	.p2align	4, , 16
.LBB1_97:                               # %.lr.ph146.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_107 Depth 2
                                        #     Child Loop BB1_111 Depth 2
                                        #     Child Loop BB1_117 Depth 2
                                        #     Child Loop BB1_122 Depth 2
	slli.d	$a5, $s4, 3
	ld.d	$a7, $sp, 480                   # 8-byte Folded Reload
	ldx.d	$a5, $a7, $a5
	slli.d	$a7, $s3, 2
	ldx.w	$a7, $a5, $a7
	bltz	$a7, .LBB1_100
# %bb.98:                               #   in Loop: Header=BB1_97 Depth=1
	beqz	$a7, .LBB1_101
# %bb.99:                               #   in Loop: Header=BB1_97 Depth=1
	sub.w	$a5, $s4, $a7
	b	.LBB1_102
	.p2align	4, , 16
.LBB1_100:                              #   in Loop: Header=BB1_97 Depth=1
	addi.w	$a5, $s4, -1
	b	.LBB1_103
	.p2align	4, , 16
.LBB1_101:                              #   in Loop: Header=BB1_97 Depth=1
	addi.w	$a5, $s4, -1
.LBB1_102:                              #   in Loop: Header=BB1_97 Depth=1
	move	$a7, $a1
.LBB1_103:                              #   in Loop: Header=BB1_97 Depth=1
	nor	$t0, $a5, $zero
	add.w	$t1, $s4, $t0
	beqz	$t1, .LBB1_113
# %bb.104:                              # %.lr.ph125.i.i.preheader
                                        #   in Loop: Header=BB1_97 Depth=1
	bltu	$t1, $a4, .LBB1_109
# %bb.105:                              # %.lr.ph125.i.i.preheader
                                        #   in Loop: Header=BB1_97 Depth=1
	sub.d	$t2, $s8, $s7
	bltu	$t2, $a4, .LBB1_109
# %bb.106:                              # %vector.ph363
                                        #   in Loop: Header=BB1_97 Depth=1
	bstrpick.d	$t4, $t1, 31, 0
	bstrpick.d	$t2, $t4, 31, 4
	slli.d	$t5, $t2, 4
	sub.d	$t1, $t1, $t5
	sub.d	$t2, $s7, $t5
	sub.d	$t3, $s8, $t5
	addi.d	$t6, $s8, -16
	addi.d	$t7, $s7, -16
	move	$t8, $t5
	.p2align	4, , 16
.LBB1_107:                              # %vector.body367
                                        #   Parent Loop BB1_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr2, $t6, 0
	vst	$vr1, $t7, 0
	addi.d	$t8, $t8, -16
	addi.d	$t6, $t6, -16
	addi.d	$t7, $t7, -16
	bnez	$t8, .LBB1_107
# %bb.108:                              # %middle.block374
                                        #   in Loop: Header=BB1_97 Depth=1
	bne	$t5, $t4, .LBB1_110
	b	.LBB1_112
	.p2align	4, , 16
.LBB1_109:                              #   in Loop: Header=BB1_97 Depth=1
	move	$t2, $s7
	move	$t3, $s8
.LBB1_110:                              # %.lr.ph125.i.i.preheader383
                                        #   in Loop: Header=BB1_97 Depth=1
	move	$t4, $t2
	move	$t5, $t3
	.p2align	4, , 16
.LBB1_111:                              # %.lr.ph125.i.i
                                        #   Parent Loop BB1_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t3, $t5, -1
	st.b	$a0, $t5, -1
	addi.d	$t2, $t4, -1
	addi.w	$t1, $t1, -1
	st.b	$a2, $t4, -1
	move	$t4, $t2
	move	$t5, $t3
	bnez	$t1, .LBB1_111
.LBB1_112:                              # %._crit_edge126.loopexit.i.i
                                        #   in Loop: Header=BB1_97 Depth=1
	add.d	$a6, $s4, $a6
	add.d	$a6, $t0, $a6
	move	$s8, $t3
	move	$s7, $t2
.LBB1_113:                              # %._crit_edge126.i.i
                                        #   in Loop: Header=BB1_97 Depth=1
	beq	$a7, $a1, .LBB1_119
# %bb.114:                              # %.lr.ph134.preheader.i.i
                                        #   in Loop: Header=BB1_97 Depth=1
	addi.w	$t0, $zero, -9
	nor	$t3, $a7, $zero
	bltu	$t0, $a7, .LBB1_120
# %bb.115:                              # %.lr.ph134.preheader.i.i
                                        #   in Loop: Header=BB1_97 Depth=1
	sub.d	$t0, $s8, $s7
	bltu	$t0, $a3, .LBB1_120
# %bb.116:                              # %vector.ph342
                                        #   in Loop: Header=BB1_97 Depth=1
	bstrpick.d	$t0, $t3, 30, 3
	slli.d	$t4, $t0, 3
	sub.d	$t2, $t3, $t4
	sub.d	$t0, $s7, $t4
	sub.d	$t1, $s8, $t4
	vori.b	$vr3, $vr0, 0
	vinsgr2vr.w	$vr3, $a6, 0
	addi.d	$a6, $s8, -4
	addi.d	$t5, $s7, -4
	move	$t6, $t4
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB1_117:                              # %vector.body345
                                        #   Parent Loop BB1_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vstelm.w	$vr1, $a6, 0, 0
	vstelm.w	$vr1, $a6, -4, 0
	vstelm.w	$vr2, $t5, 0, 0
	vstelm.w	$vr2, $t5, -4, 0
	vaddi.wu	$vr3, $vr3, 1
	vaddi.wu	$vr4, $vr4, 1
	addi.d	$t6, $t6, -8
	addi.d	$a6, $a6, -8
	addi.d	$t5, $t5, -8
	bnez	$t6, .LBB1_117
# %bb.118:                              # %middle.block352
                                        #   in Loop: Header=BB1_97 Depth=1
	vadd.w	$vr3, $vr4, $vr3
	vhaddw.d.w	$vr3, $vr3, $vr3
	vhaddw.q.d	$vr3, $vr3, $vr3
	vpickve2gr.d	$a6, $vr3, 0
	bne	$t4, $t3, .LBB1_121
	b	.LBB1_123
	.p2align	4, , 16
.LBB1_119:                              #   in Loop: Header=BB1_97 Depth=1
	move	$t1, $s8
	move	$t0, $s7
	b	.LBB1_123
	.p2align	4, , 16
.LBB1_120:                              #   in Loop: Header=BB1_97 Depth=1
	move	$t2, $t3
	move	$t0, $s7
	move	$t1, $s8
.LBB1_121:                              # %.lr.ph134.i.i.preheader
                                        #   in Loop: Header=BB1_97 Depth=1
	add.d	$a6, $a6, $t2
	.p2align	4, , 16
.LBB1_122:                              # %.lr.ph134.i.i
                                        #   Parent Loop BB1_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a2, $t1, -1
	addi.d	$t1, $t1, -1
	st.b	$a0, $t0, -1
	addi.w	$t2, $t2, -1
	addi.d	$t0, $t0, -1
	bnez	$t2, .LBB1_122
.LBB1_123:                              # %._crit_edge135.i.i
                                        #   in Loop: Header=BB1_97 Depth=1
	blez	$s4, .LBB1_127
# %bb.124:                              # %._crit_edge135.i.i
                                        #   in Loop: Header=BB1_97 Depth=1
	blez	$s3, .LBB1_127
# %bb.125:                              #   in Loop: Header=BB1_97 Depth=1
	add.w	$s3, $a7, $s3
	addi.d	$s8, $t1, -1
	st.b	$a0, $t1, -1
	addi.d	$s7, $t0, -1
	addi.w	$a6, $a6, 2
	st.b	$a0, $t0, -1
	move	$s4, $a5
	bge	$fp, $a6, .LBB1_97
.LBB1_126:                              # %._crit_edge147.i.i
	ld.d	$s3, $sp, 280                   # 8-byte Folded Reload
	bgtz	$s2, .LBB1_128
	b	.LBB1_130
.LBB1_127:
	move	$s8, $t1
	move	$s7, $t0
	ld.d	$s3, $sp, 280                   # 8-byte Folded Reload
	blez	$s2, .LBB1_130
.LBB1_128:                              # %.lr.ph155.i.i
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_129:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	ld.d	$a0, $fp, 0
	add.d	$a1, $a1, $s3
	move	$a2, $s8
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, 8
	bnez	$s2, .LBB1_129
.LBB1_130:                              # %.preheader.i205.i
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	blez	$s0, .LBB1_133
# %bb.131:                              # %.lr.ph157.i.i
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_132:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	ld.d	$a0, $fp, 0
	add.d	$a1, $a1, $s3
	move	$a2, $s7
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$s2, $s2, 8
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB1_132
.LBB1_133:                              # %MSalignmm_tanni.exit
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_281
.LBB1_134:
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
.LBB1_135:                              # %.lr.ph781.preheader399
	slli.d	$a1, $s1, 2
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 2
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, -4
	alsl.d	$a2, $s1, $s0, 2
	sub.d	$a0, $a0, $s1
	.p2align	4, , 16
.LBB1_136:                              # %.lr.ph781
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a7, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB1_136
.LBB1_137:                              # %.lr.ph783.preheader
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$t0, $a0, $a6, 2
	alsl.d	$a0, $a0, $t2, 2
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	addi.w	$t3, $a0, 2
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t3, $a1
	or	$a1, $a1, $a0
	addi.d	$a2, $a1, -1
	ori	$a3, $zero, 13
	ori	$a0, $zero, 1
	bge	$t3, $a3, .LBB1_218
# %bb.138:
	ld.d	$t4, $sp, 352                   # 8-byte Folded Reload
.LBB1_139:                              # %.lr.ph783.preheader398
	slli.d	$a3, $a0, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 2
	add.d	$a3, $a3, $t2
	addi.d	$a3, $a3, -4
	alsl.d	$a4, $a0, $s7, 2
	sub.d	$a0, $a1, $a0
	.p2align	4, , 16
.LBB1_140:                              # %.lr.ph783
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t0, 0
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	bnez	$a0, .LBB1_140
.LBB1_141:                              # %.lr.ph785
	ori	$a3, $zero, 1
	ori	$a4, $zero, 13
	addi.d	$a0, $t4, 4
	st.d	$t0, $sp, 336                   # 8-byte Folded Spill
	bge	$t3, $a4, .LBB1_223
.LBB1_142:                              # %scalar.ph90.preheader
	alsl.d	$a2, $a3, $s7, 2
	addi.d	$a2, $a2, -4
	alsl.d	$a4, $a3, $t4, 2
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a5, $a3, $a5, 2
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB1_143:                              # %scalar.ph90
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $t6, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	st.w	$zero, $a5, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 4
	bnez	$a1, .LBB1_143
.LBB1_144:                              # %._crit_edge786
	st.d	$t6, $sp, 256                   # 8-byte Folded Spill
	st.d	$t3, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	slli.d	$a1, $a3, 2
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	fldx.s	$fa0, $s7, $a1
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	vldi	$vr2, -928
	fmul.d	$fa1, $fa1, $fa2
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$s8, $fa1
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	fst.s	$fa0, $a1, 0
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	st.d	$s0, $sp, 448                   # 8-byte Folded Spill
	blez	$s8, .LBB1_165
# %bb.145:                              # %.lr.ph805
	ori	$a1, $zero, 2
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	slt	$a2, $a1, $a3
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$t0, $a2, $a1
	addi.d	$a1, $s8, 1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 4
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 4
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 4
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 4
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 4
	ld.d	$a7, $sp, 336                   # 8-byte Folded Reload
	addi.d	$a7, $a7, 4
	slli.d	$t0, $t0, 2
	addi.d	$t0, $t0, -4
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	addi.d	$t1, $t1, 4
	ori	$t2, $zero, 1
	pcalau12i	$t3, %got_pc_hi20(n_dis)
	ld.d	$t3, $t3, %got_pc_lo12(n_dis)
	movgr2fr.w	$fa0, $zero
	ori	$t4, $zero, 104
	addi.d	$t5, $sp, 488
	ori	$t6, $zero, 26
	ld.d	$t8, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB1_147
	.p2align	4, , 16
.LBB1_146:                              # %._crit_edge799
                                        #   in Loop: Header=BB1_147 Depth=1
	ld.d	$t7, $sp, 440                   # 8-byte Folded Reload
	fldx.s	$fa1, $s7, $t7
	addi.d	$t2, $t2, 1
	ld.d	$t7, $sp, 344                   # 8-byte Folded Reload
	fstx.s	$fa1, $t7, $t8
	move	$t8, $s7
	ld.d	$s6, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 448                   # 8-byte Folded Reload
	beq	$t2, $a1, .LBB1_164
.LBB1_147:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_148 Depth 2
                                        #       Child Loop BB1_149 Depth 3
                                        #     Child Loop BB1_153 Depth 2
                                        #       Child Loop BB1_155 Depth 3
                                        #     Child Loop BB1_160 Depth 2
	addi.d	$t7, $t2, -1
	slli.d	$fp, $t7, 2
	fldx.s	$fa1, $s0, $fp
	move	$s7, $s1
	move	$s1, $t8
	fst.s	$fa1, $t8, 0
	slli.d	$t8, $t2, 3
	ld.d	$fp, $sp, 376                   # 8-byte Folded Reload
	ldx.d	$t8, $fp, $t8
	move	$fp, $zero
	move	$s2, $t3
	.p2align	4, , 16
.LBB1_148:                              #   Parent Loop BB1_147 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_149 Depth 3
	move	$s3, $zero
	move	$s4, $s2
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB1_149:                              #   Parent Loop BB1_147 Depth=1
                                        #     Parent Loop BB1_148 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s5, $s4, 0
	fldx.s	$fa2, $t8, $s3
	movgr2fr.w	$fa3, $s5
	ffint.s.w	$fa3, $fa3
	fmadd.s	$fa1, $fa3, $fa2, $fa1
	addi.d	$s3, $s3, 4
	addi.d	$s4, $s4, 104
	bne	$s3, $t4, .LBB1_149
# %bb.150:                              #   in Loop: Header=BB1_148 Depth=2
	slli.d	$s3, $fp, 2
	fstx.s	$fa1, $s3, $t5
	addi.d	$fp, $fp, 1
	addi.d	$s2, $s2, 4
	bne	$fp, $t6, .LBB1_148
# %bb.151:                              # %.lr.ph74.i.preheader
                                        #   in Loop: Header=BB1_147 Depth=1
	move	$t8, $s6
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 392                   # 8-byte Folded Reload
	move	$s3, $s7
	b	.LBB1_153
	.p2align	4, , 16
.LBB1_152:                              # %._crit_edge.i720
                                        #   in Loop: Header=BB1_153 Depth=2
	addi.w	$t8, $t8, -1
	addi.d	$s3, $s3, 4
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, 8
	beqz	$t8, .LBB1_156
.LBB1_153:                              # %.lr.ph74.i
                                        #   Parent Loop BB1_147 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_155 Depth 3
	st.w	$zero, $s3, 0
	ld.d	$s6, $fp, 0
	ld.wu	$s5, $s6, 0
	addi.w	$s4, $s5, 0
	bltz	$s4, .LBB1_152
# %bb.154:                              # %.lr.ph.i721
                                        #   in Loop: Header=BB1_153 Depth=2
	ld.d	$s4, $s2, 0
	addi.d	$s6, $s6, 4
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB1_155:                              #   Parent Loop BB1_147 Depth=1
                                        #     Parent Loop BB1_153 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$s5, $s5, 2
	fldx.s	$fa2, $s5, $t5
	fld.s	$fa3, $s4, 0
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fst.s	$fa1, $s3, 0
	ld.wu	$s5, $s6, 0
	addi.w	$ra, $s5, 0
	addi.d	$s6, $s6, 4
	addi.d	$s4, $s4, 4
	bgez	$ra, .LBB1_155
	b	.LBB1_152
	.p2align	4, , 16
.LBB1_156:                              # %match_calc.exit
                                        #   in Loop: Header=BB1_147 Depth=1
	slli.d	$t8, $t2, 2
	fldx.s	$fa1, $s0, $t8
	move	$s6, $s7
	fst.s	$fa1, $s7, 0
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	fldx.s	$fa1, $fp, $t8
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	fst.s	$fa1, $fp, 0
	bne	$t2, $s8, .LBB1_158
# %bb.157:                              #   in Loop: Header=BB1_147 Depth=1
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	fst.s	$fa1, $fp, 0
.LBB1_158:                              # %.lr.ph798
                                        #   in Loop: Header=BB1_147 Depth=1
	fld.s	$fa1, $s1, 0
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	fld.s	$fa2, $fp, 4
	move	$fp, $zero
	move	$s2, $zero
	move	$s4, $zero
	ld.d	$s0, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$s3, $t2, $s0, 2
	fadd.s	$fa1, $fa1, $fa2
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$s5, $t7, $s0, 2
	addi.d	$s6, $s6, 4
	b	.LBB1_160
	.p2align	4, , 16
.LBB1_159:                              #   in Loop: Header=BB1_160 Depth=2
	addi.d	$fp, $fp, 4
	addi.d	$s2, $s2, 1
	beq	$t0, $fp, .LBB1_146
.LBB1_160:                              #   Parent Loop BB1_147 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa4, $s1, $fp
	ld.d	$s0, $sp, 480                   # 8-byte Folded Reload
	fldx.s	$fa5, $s0, $fp
	fld.s	$fa7, $s3, 0
	fldx.s	$fa2, $a0, $fp
	fldx.s	$fa6, $a7, $fp
	fld.s	$fa3, $s5, 0
	fadd.s	$fa7, $fa4, $fa7
	fcmp.cult.s	$fcc0, $fa7, $fa2
	bcnez	$fcc0, .LBB1_162
# %bb.161:                              #   in Loop: Header=BB1_160 Depth=2
	fstx.s	$fa7, $a0, $fp
	stx.w	$t7, $t1, $fp
.LBB1_162:                              #   in Loop: Header=BB1_160 Depth=2
	fadd.s	$fa5, $fa1, $fa5
	fcmp.clt.s	$fcc0, $fa4, $fa5
	fsel	$fa5, $fa4, $fa5, $fcc0
	fadd.s	$fa4, $fa4, $fa6
	fcmp.cult.s	$fcc0, $fa4, $fa1
	fsel	$fa1, $fa4, $fa1, $fcc0
	movcf2gr	$ra, $fcc0
	masknez	$s0, $s2, $ra
	maskeqz	$s4, $s4, $ra
	or	$s4, $s4, $s0
	fldx.s	$fa4, $s6, $fp
	fadd.s	$fa2, $fa2, $fa3
	fcmp.clt.s	$fcc0, $fa5, $fa2
	fsel	$fa2, $fa5, $fa2, $fcc0
	fadd.s	$fa2, $fa2, $fa4
	fstx.s	$fa2, $s6, $fp
	bne	$t2, $s8, .LBB1_159
# %bb.163:                              #   in Loop: Header=BB1_160 Depth=2
	ldx.w	$s0, $t1, $fp
	stx.w	$s0, $a6, $fp
	stx.w	$s4, $a5, $fp
	fstx.s	$fa2, $a4, $fp
	fldx.s	$fa2, $a0, $fp
	fstx.s	$fa2, $a3, $fp
	fstx.s	$fa1, $a2, $fp
	b	.LBB1_159
.LBB1_164:                              # %.lr.ph811.loopexit
	ld.d	$s4, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 408                   # 8-byte Folded Reload
.LBB1_165:                              # %.lr.ph811
	ori	$a7, $zero, 1
	move	$a0, $s0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	move	$a5, $s0
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	move	$a6, $fp
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	st.d	$s7, $sp, 432                   # 8-byte Folded Spill
	move	$a0, $s7
	move	$a1, $s2
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	move	$a3, $s5
	move	$a4, $s6
	move	$a5, $s0
	move	$a6, $fp
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $s5, 31, 0
	ori	$a2, $zero, 12
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	bgeu	$s5, $a2, .LBB1_228
# %bb.166:
	move	$a2, $zero
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 448                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 304                   # 8-byte Folded Reload
.LBB1_167:
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 416                   # 8-byte Folded Reload
.LBB1_168:                              # %scalar.ph117.preheader
	slli.d	$a4, $a2, 2
	alsl.d	$a3, $a2, $a6, 2
	sub.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a4, 2
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a4
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB1_169:                              # %scalar.ph117
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB1_169
.LBB1_170:                              # %.lr.ph813
	ld.d	$a1, $sp, 720
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 2
	ori	$a2, $zero, 1
	slt	$a3, $a2, $s2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s2, $a3
	ori	$a4, $zero, 16
	or	$a2, $a3, $a2
	bge	$s2, $a4, .LBB1_233
# %bb.171:
	move	$a3, $zero
.LBB1_172:                              # %scalar.ph146.preheader
	slli.d	$a5, $a3, 2
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a4, 2
	sub.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$a3, $a3, $a5, 2
	add.d	$a3, $a3, $t5
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB1_173:                              # %scalar.ph146
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB1_173
.LBB1_174:                              # %.lr.ph815
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	slti	$a2, $s2, 1
	ori	$a1, $zero, 1
	masknez	$a3, $a1, $a2
	maskeqz	$a2, $s2, $a2
	or	$a2, $a2, $a3
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	sub.d	$a4, $a7, $a2
	addi.w	$a3, $a4, 0
	ori	$a5, $zero, 19
	addi.d	$a2, $a0, -4
	bgeu	$a3, $a5, .LBB1_238
.LBB1_175:
	move	$a0, $s2
.LBB1_176:                              # %scalar.ph176.preheader
	addi.d	$a3, $a0, 1
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 2
	ld.d	$a5, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a5, $a0, $a5, 2
	alsl.d	$a0, $a0, $t2, 2
	addi.d	$a0, $a0, -4
	.p2align	4, , 16
.LBB1_177:                              # %scalar.ph176
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 0
	st.w	$s5, $a4, 0
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -4
	addi.d	$a5, $a5, -4
	addi.d	$a0, $a0, -4
	blt	$a1, $a3, .LBB1_177
.LBB1_178:                              # %.preheader758
	move	$s7, $zero
	st.d	$zero, $sp, 400                 # 8-byte Folded Spill
	st.d	$zero, $sp, 272                 # 8-byte Folded Spill
	addi.d	$a1, $s2, -1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 2
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	bstrpick.d	$a4, $s6, 31, 0
	alsl.d	$a2, $a4, $t2, 2
	addi.d	$a3, $a2, -8
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.d	$a4, $sp, 296                   # 8-byte Folded Spill
	alsl.d	$a2, $a4, $a0, 2
	addi.d	$a4, $a2, -8
	addi.w	$a0, $s8, -1
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	slt	$a5, $a2, $t1
	masknez	$a2, $a2, $a5
	maskeqz	$a5, $t1, $a5
	or	$a0, $a5, $a2
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	bstrpick.d	$a6, $s8, 31, 0
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a7, $a1, $a2, 2
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$t0, $a1, $a5, 2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$t1, $a1, $a0, 2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$t2, $a1, $a2, 2
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 2
	alsl.d	$a2, $a1, $a2, 2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.d	$t3, $a0, $a2
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a0, 2
	addi.d	$t4, $a1, 4
	add.d	$a1, $a2, $t5
	addi.d	$t5, $a1, 4
	addi.d	$a0, $a5, 8
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	addi.d	$a0, $s2, -2
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI1_0)
	movgr2fr.w	$fa1, $zero
	ori	$t8, $zero, 104
	addi.d	$s0, $sp, 488
	ori	$ra, $zero, 26
	move	$fp, $s5
	b	.LBB1_181
	.p2align	4, , 16
.LBB1_179:                              #   in Loop: Header=BB1_181 Depth=1
	st.d	$t7, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$a0, $a2, $a1
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
.LBB1_180:                              #   in Loop: Header=BB1_181 Depth=1
	movcf2gr	$a1, $fcc0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $t6, $a1
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	bstrpick.d	$a5, $a0, 31, 0
	or	$s5, $a1, $a2
	ld.d	$s1, $sp, 424                   # 8-byte Folded Reload
	beq	$fp, $a5, .LBB1_243
.LBB1_181:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_183 Depth 2
                                        #       Child Loop BB1_184 Depth 3
                                        #     Child Loop BB1_188 Depth 2
                                        #       Child Loop BB1_190 Depth 3
                                        #     Child Loop BB1_193 Depth 2
                                        #     Child Loop BB1_208 Depth 2
                                        #     Child Loop BB1_210 Depth 2
	addi.w	$a1, $fp, 0
	ld.d	$a5, $sp, 432                   # 8-byte Folded Reload
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	blez	$a1, .LBB1_217
# %bb.182:                              #   in Loop: Header=BB1_181 Depth=1
	move	$t6, $fp
	slli.d	$a1, $fp, 2
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	fldx.s	$fa2, $a0, $a1
	addi.d	$fp, $fp, -1
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	fstx.s	$fa2, $a5, $a0
	slli.d	$a1, $fp, 3
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ldx.d	$a2, $a0, $a1
	st.d	$a5, $sp, 424                   # 8-byte Folded Spill
	alsl.d	$a1, $s2, $a5, 2
	pcalau12i	$a5, %got_pc_hi20(n_dis)
	ld.d	$a5, $a5, %got_pc_lo12(n_dis)
	move	$t7, $zero
	.p2align	4, , 16
.LBB1_183:                              #   Parent Loop BB1_181 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_184 Depth 3
	move	$s1, $zero
	move	$s2, $a5
	fmov.s	$fa2, $fa1
	.p2align	4, , 16
.LBB1_184:                              #   Parent Loop BB1_181 Depth=1
                                        #     Parent Loop BB1_183 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s3, $s2, 0
	fldx.s	$fa3, $a2, $s1
	movgr2fr.w	$fa4, $s3
	ffint.s.w	$fa4, $fa4
	fmadd.s	$fa2, $fa4, $fa3, $fa2
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 104
	bne	$s1, $t8, .LBB1_184
# %bb.185:                              #   in Loop: Header=BB1_183 Depth=2
	slli.d	$s1, $t7, 2
	fstx.s	$fa2, $s1, $s0
	addi.d	$t7, $t7, 1
	addi.d	$a5, $a5, 4
	bne	$t7, $ra, .LBB1_183
# %bb.186:                              # %.lr.ph74.i736.preheader
                                        #   in Loop: Header=BB1_181 Depth=1
	st.d	$s5, $sp, 408                   # 8-byte Folded Spill
	move	$a2, $s6
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 432                   # 8-byte Folded Reload
	move	$s1, $s6
	b	.LBB1_188
	.p2align	4, , 16
.LBB1_187:                              # %._crit_edge.i741
                                        #   in Loop: Header=BB1_188 Depth=2
	addi.w	$a2, $a2, -1
	addi.d	$s1, $s1, 4
	addi.d	$a5, $a5, 8
	addi.d	$t7, $t7, 8
	beqz	$a2, .LBB1_191
.LBB1_188:                              # %.lr.ph74.i736
                                        #   Parent Loop BB1_181 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_190 Depth 3
	st.w	$zero, $s1, 0
	ld.d	$s4, $a5, 0
	ld.wu	$s3, $s4, 0
	addi.w	$s2, $s3, 0
	bltz	$s2, .LBB1_187
# %bb.189:                              # %.lr.ph.i743
                                        #   in Loop: Header=BB1_188 Depth=2
	ld.d	$s2, $t7, 0
	addi.d	$s4, $s4, 4
	fmov.s	$fa2, $fa1
	.p2align	4, , 16
.LBB1_190:                              #   Parent Loop BB1_181 Depth=1
                                        #     Parent Loop BB1_188 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$s3, $s3, 2
	fldx.s	$fa3, $s3, $s0
	fld.s	$fa4, $s2, 0
	fmadd.s	$fa2, $fa3, $fa4, $fa2
	fst.s	$fa2, $s1, 0
	ld.wu	$s3, $s4, 0
	addi.w	$s5, $s3, 0
	addi.d	$s4, $s4, 4
	addi.d	$s2, $s2, 4
	bgez	$s5, .LBB1_190
	b	.LBB1_187
	.p2align	4, , 16
.LBB1_191:                              # %.lr.ph824
                                        #   in Loop: Header=BB1_181 Depth=1
	slli.d	$a2, $fp, 2
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	st.d	$a2, $sp, 360                   # 8-byte Folded Spill
	fldx.s	$fa2, $a0, $a2
	move	$a5, $zero
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	fstx.s	$fa2, $s6, $a0
	ld.d	$t7, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a2, $t7, $a0, 2
	fld.s	$fa2, $a1, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	fld.s	$fa3, $a0, 0
	addi.d	$a1, $a2, -4
	alsl.d	$a2, $t7, $s6, 2
	addi.d	$a2, $a2, -8
	fadd.s	$fa2, $fa2, $fa3
	ld.d	$t7, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$s3, $t6, $t7, 2
	ld.d	$t7, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$s4, $fp, $t7, 2
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	bstrpick.d	$t7, $a0, 31, 0
	xor	$t7, $fp, $t7
	sltui	$t7, $t7, 1
	xor	$s1, $t6, $a6
	sltui	$s1, $s1, 1
	or	$t7, $s1, $t7
	ld.d	$s2, $sp, 416                   # 8-byte Folded Reload
	move	$s6, $s2
	b	.LBB1_193
	.p2align	4, , 16
.LBB1_192:                              #   in Loop: Header=BB1_193 Depth=2
	movcf2gr	$s1, $fcc0
	fldx.s	$fa4, $a2, $a5
	masknez	$s5, $s6, $s1
	maskeqz	$s1, $s2, $s1
	or	$s2, $s1, $s5
	fadd.s	$fa3, $fa3, $fa4
	fstx.s	$fa3, $a2, $a5
	addi.w	$s6, $s6, -1
	addi.d	$a5, $a5, -4
	blez	$s6, .LBB1_204
.LBB1_193:                              #   Parent Loop BB1_181 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa3, $t5, $a5
	fldx.s	$fa4, $a1, $a5
	fadd.s	$fa3, $fa2, $fa3
	fldx.s	$fa6, $a3, $a5
	fld.s	$fa7, $s3, 0
	fcmp.clt.s	$fcc0, $fa4, $fa3
	fsel	$fa3, $fa4, $fa3, $fcc0
	fldx.s	$fa5, $t3, $a5
	fadd.s	$fa7, $fa6, $fa7
	fcmp.cule.s	$fcc1, $fa7, $fa3
	bcnez	$fcc1, .LBB1_195
# %bb.194:                              #   in Loop: Header=BB1_193 Depth=2
	ldx.w	$s5, $a4, $a5
	fmov.s	$fa3, $fa7
	move	$s1, $s6
	b	.LBB1_196
	.p2align	4, , 16
.LBB1_195:                              #   in Loop: Header=BB1_193 Depth=2
	movcf2gr	$s1, $fcc0
	masknez	$s5, $s6, $s1
	maskeqz	$s1, $s2, $s1
	or	$s1, $s1, $s5
	move	$s5, $t6
.LBB1_196:                              #   in Loop: Header=BB1_193 Depth=2
	fld.s	$fa7, $s4, 0
	fadd.s	$fa7, $fa4, $fa7
	fcmp.cult.s	$fcc0, $fa7, $fa6
	bceqz	$fcc0, .LBB1_199
# %bb.197:                              #   in Loop: Header=BB1_193 Depth=2
	beqz	$t7, .LBB1_200
.LBB1_198:                              #   in Loop: Header=BB1_193 Depth=2
	stx.w	$s5, $t2, $a5
	stx.w	$s1, $t1, $a5
	beq	$fp, $a6, .LBB1_201
	b	.LBB1_202
	.p2align	4, , 16
.LBB1_199:                              #   in Loop: Header=BB1_193 Depth=2
	fstx.s	$fa7, $a3, $a5
	stx.w	$t6, $a4, $a5
	bnez	$t7, .LBB1_198
.LBB1_200:                              #   in Loop: Header=BB1_193 Depth=2
	bne	$fp, $a6, .LBB1_202
.LBB1_201:                              #   in Loop: Header=BB1_193 Depth=2
	fldx.s	$fa6, $t0, $a5
	fadd.s	$fa6, $fa3, $fa6
	fstx.s	$fa6, $t0, $a5
	fldx.s	$fa6, $a3, $a5
	fldx.s	$fa7, $t4, $a5
	fadd.s	$fa6, $fa6, $fa7
	fstx.s	$fa6, $t4, $a5
.LBB1_202:                              #   in Loop: Header=BB1_193 Depth=2
	fadd.s	$fa4, $fa4, $fa5
	fcmp.cult.s	$fcc0, $fa4, $fa2
	fsel	$fa2, $fa4, $fa2, $fcc0
	bne	$t6, $a6, .LBB1_192
# %bb.203:                              #   in Loop: Header=BB1_193 Depth=2
	fldx.s	$fa4, $a7, $a5
	fadd.s	$fa4, $fa2, $fa4
	fstx.s	$fa4, $a7, $a5
	b	.LBB1_192
	.p2align	4, , 16
.LBB1_204:                              # %._crit_edge825
                                        #   in Loop: Header=BB1_181 Depth=1
	fldx.s	$fa2, $a1, $a5
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	fldx.s	$fa3, $a1, $a0
	fadd.s	$fa2, $fa2, $fa3
	fcmp.clt.s	$fcc0, $fa0, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	ld.d	$s3, $sp, 328                   # 8-byte Folded Reload
	bne	$fp, $a6, .LBB1_206
# %bb.205:                              #   in Loop: Header=BB1_181 Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	fld.s	$fa2, $a0, 0
	fadd.s	$fa2, $fa0, $fa2
	fst.s	$fa2, $a0, 0
.LBB1_206:                              #   in Loop: Header=BB1_181 Depth=1
	ld.d	$s4, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 408                   # 8-byte Folded Reload
	bne	$t6, $a6, .LBB1_180
# %bb.207:                              # %.lr.ph832.preheader
                                        #   in Loop: Header=BB1_181 Depth=1
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	fld.s	$fa2, $a0, 4
	move	$s7, $zero
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_208:                              # %.lr.ph832
                                        #   Parent Loop BB1_181 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa3, $a5, 0
	fcmp.clt.s	$fcc1, $fa2, $fa3
	fsel	$fa2, $fa2, $fa3, $fcc1
	movcf2gr	$t7, $fcc1
	masknez	$a0, $s7, $t7
	maskeqz	$t7, $a1, $t7
	or	$s7, $t7, $a0
	addi.d	$a5, $a5, 4
	addi.d	$a2, $a2, -1
	addi.w	$a1, $a1, 1
	bnez	$a2, .LBB1_208
# %bb.209:                              # %.lr.ph838.preheader
                                        #   in Loop: Header=BB1_181 Depth=1
	move	$a1, $zero
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 368                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_210:                              # %.lr.ph838
                                        #   Parent Loop BB1_181 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa3, $a5, 0
	fcmp.clt.s	$fcc1, $fa2, $fa3
	fsel	$fa2, $fa2, $fa3, $fcc1
	movcf2gr	$t7, $fcc1
	masknez	$a0, $s7, $t7
	maskeqz	$t7, $a1, $t7
	or	$s7, $t7, $a0
	addi.d	$a5, $a5, 4
	addi.d	$a2, $a2, -1
	addi.w	$a1, $a1, 1
	bnez	$a2, .LBB1_210
# %bb.211:                              # %._crit_edge839
                                        #   in Loop: Header=BB1_181 Depth=1
	slli.d	$a1, $s7, 2
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	fldx.s	$fa2, $a2, $a1
	addi.w	$t7, $s7, -1
	blez	$s7, .LBB1_214
# %bb.212:                              #   in Loop: Header=BB1_181 Depth=1
	slli.d	$a2, $t7, 2
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	fldx.s	$fa3, $a5, $a2
	fcmp.cule.s	$fcc1, $fa3, $fa2
	move	$a2, $t7
	bcnez	$fcc1, .LBB1_215
# %bb.213:                              #   in Loop: Header=BB1_181 Depth=1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a1
	fmov.s	$fa2, $fa3
	b	.LBB1_215
.LBB1_214:                              #   in Loop: Header=BB1_181 Depth=1
	move	$a2, $t7
.LBB1_215:                              #   in Loop: Header=BB1_181 Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	fldx.s	$fa3, $a0, $a1
	fcmp.cule.s	$fcc1, $fa3, $fa2
	bceqz	$fcc1, .LBB1_179
# %bb.216:                              #   in Loop: Header=BB1_181 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	b	.LBB1_180
.LBB1_217:
	move	$s6, $s7
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	b	.LBB1_247
.LBB1_218:                              # %vector.memcheck48
	addi.d	$a3, $s7, 4
	alsl.d	$a4, $a1, $s7, 2
	addi.d	$a5, $t0, 4
	sltu	$a5, $a3, $a5
	sltu	$a6, $t0, $a4
	and	$a5, $a5, $a6
	ld.d	$t4, $sp, 352                   # 8-byte Folded Reload
	bnez	$a5, .LBB1_139
# %bb.219:                              # %vector.memcheck48
	ld.d	$a6, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a5, $a1, $a6, 2
	addi.d	$a5, $a5, -4
	sltu	$a3, $a3, $a5
	sltu	$a4, $a6, $a4
	and	$a3, $a3, $a4
	bnez	$a3, .LBB1_139
# %bb.220:                              # %vector.ph62
	move	$a3, $a2
	bstrins.d	$a3, $zero, 2, 0
	ori	$a4, $zero, 1
	move	$a0, $a2
	vldrepl.w	$vr0, $t0, 0
	bstrins.d	$a0, $a4, 2, 0
	ld.d	$a4, $sp, 480                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 16
	addi.d	$a5, $s7, 20
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_221:                              # %vector.body65
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
	bnez	$a6, .LBB1_221
# %bb.222:                              # %middle.block75
	bne	$a2, $a3, .LBB1_139
	b	.LBB1_141
.LBB1_223:                              # %vector.memcheck78
	alsl.d	$a4, $a1, $t4, 2
	alsl.d	$a5, $a1, $s7, 2
	addi.d	$a5, $a5, -4
	sltu	$a5, $a0, $a5
	sltu	$a6, $s7, $a4
	and	$a5, $a5, $a6
	bnez	$a5, .LBB1_142
# %bb.224:                              # %vector.memcheck78
	addi.d	$a5, $a7, 8
	sltu	$a5, $a0, $a5
	sltu	$a4, $t6, $a4
	and	$a4, $a5, $a4
	bnez	$a4, .LBB1_142
# %bb.225:                              # %vector.ph92
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	vldrepl.w	$vr0, $t6, 0
	addi.d	$a5, $s7, 16
	addi.d	$a6, $t4, 20
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a7, $a7, 20
	vrepli.b	$vr1, 0
	move	$t0, $a4
	.p2align	4, , 16
.LBB1_226:                              # %vector.body95
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a5, -16
	vld	$vr3, $a5, 0
	vfadd.s	$vr2, $vr2, $vr0
	vfadd.s	$vr3, $vr3, $vr0
	vst	$vr2, $a6, -16
	vst	$vr3, $a6, 0
	vst	$vr1, $a7, -16
	vst	$vr1, $a7, 0
	addi.d	$t0, $t0, -8
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB1_226
# %bb.227:                              # %middle.block103
	bne	$a2, $a4, .LBB1_142
	b	.LBB1_144
.LBB1_228:                              # %vector.memcheck106
	ld.d	$a6, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a6, 2
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a4, $a2, 4
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a4
	sltu	$a2, $a6, $a2
	sltu	$a5, $a0, $a3
	and	$a5, $a2, $a5
	move	$a2, $zero
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 304                   # 8-byte Folded Reload
	bnez	$a5, .LBB1_167
# %bb.229:                              # %vector.memcheck106
	ld.d	$a5, $sp, 424                   # 8-byte Folded Reload
	add.d	$a4, $a5, $a4
	sltu	$a4, $a6, $a4
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	sltu	$a3, $a5, $a3
	and	$a3, $a4, $a3
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 416                   # 8-byte Folded Reload
	bnez	$a3, .LBB1_168
# %bb.230:                              # %vector.ph119
	bstrpick.d	$a2, $a1, 30, 3
	vldrepl.w	$vr0, $a0, 0
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 20
	addi.d	$a4, $a6, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_231:                              # %vector.body122
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, -16
	vld	$vr2, $a3, 0
	vld	$vr3, $a4, -16
	vld	$vr4, $a4, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a4, -16
	vst	$vr2, $a4, 0
	addi.d	$a3, $a3, 32
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB1_231
# %bb.232:                              # %middle.block131
	bne	$a2, $a1, .LBB1_168
	b	.LBB1_170
.LBB1_233:                              # %vector.memcheck134
	ld.d	$t0, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a4, $a2, $t0, 2
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	add.d	$a3, $a3, $s2
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a3, $a3, $a5, 2
	addi.d	$a3, $a3, 4
	sltu	$a3, $t0, $a3
	sltu	$a5, $a0, $a4
	and	$a5, $a3, $a5
	move	$a3, $zero
	bnez	$a5, .LBB1_172
# %bb.234:                              # %vector.memcheck134
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 4
	alsl.d	$a6, $a2, $a5, 2
	sltu	$a6, $t0, $a6
	sltu	$a4, $a5, $a4
	and	$a4, $a6, $a4
	bnez	$a4, .LBB1_172
# %bb.235:                              # %vector.ph148
	bstrpick.d	$a3, $a2, 30, 3
	vldrepl.w	$vr0, $a0, 0
	slli.d	$a3, $a3, 3
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 20
	ld.d	$a5, $sp, 432                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_236:                              # %vector.body151
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
	bnez	$a6, .LBB1_236
# %bb.237:                              # %middle.block160
	bne	$a3, $a2, .LBB1_172
	b	.LBB1_174
.LBB1_238:                              # %vector.memcheck163
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a4
	add.d	$a4, $a5, $t2
	addi.d	$a4, $a4, -4
	alsl.d	$a6, $s2, $t2, 2
	ld.d	$a7, $sp, 432                   # 8-byte Folded Reload
	add.d	$a5, $a7, $a5
	alsl.d	$a7, $s2, $a7, 2
	addi.d	$a7, $a7, 4
	sltu	$a7, $a4, $a7
	sltu	$a5, $a5, $a6
	and	$a5, $a7, $a5
	bnez	$a5, .LBB1_175
# %bb.239:                              # %vector.memcheck163
	sltu	$a0, $a4, $a0
	sltu	$a4, $a2, $a6
	and	$a4, $a0, $a4
	move	$a0, $s2
	bnez	$a4, .LBB1_176
# %bb.240:                              # %vector.ph178
	bstrpick.d	$a0, $a3, 31, 0
	addi.d	$a3, $a0, 1
	bstrpick.d	$a0, $a3, 32, 2
	slli.d	$a4, $a0, 2
	sub.d	$a0, $s2, $a4
	vreplgr2vr.w	$vr0, $s5
	vldrepl.w	$vr1, $a2, 0
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	addi.d	$a7, $a5, -12
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a7
	addi.d	$a6, $a6, -16
	ld.d	$t0, $sp, 432                   # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
	move	$t0, $a4
	.p2align	4, , 16
.LBB1_241:                              # %vector.body183
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, 0
	vfadd.s	$vr2, $vr2, $vr1
	vst	$vr2, $a6, 0
	vst	$vr0, $a5, 0
	addi.d	$t0, $t0, -4
	addi.d	$a5, $a5, -16
	addi.d	$a6, $a6, -16
	addi.d	$a7, $a7, -16
	bnez	$t0, .LBB1_241
# %bb.242:                              # %middle.block192
	bne	$a3, $a4, .LBB1_176
	b	.LBB1_178
.LBB1_243:
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	beqz	$s7, .LBB1_246
# %bb.244:
	ld.d	$fp, $sp, 216                   # 8-byte Folded Reload
	move	$s5, $a1
	blt	$s2, $s7, .LBB1_247
# %bb.245:
	ld.d	$s2, $sp, 272                   # 8-byte Folded Reload
	slli.d	$a2, $s2, 2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$s8, $a1, $a2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$s6, $a1, $a2
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	b	.LBB1_247
.LBB1_246:
	move	$s2, $zero
	addi.w	$fp, $s5, -1
	ori	$s6, $zero, 1
	move	$s8, $s5
	move	$s5, $a1
.LBB1_247:                              # %.loopexit
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	add.w	$a7, $fp, $a6
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	add.w	$a0, $s2, $a2
	st.d	$s0, $sp, 40
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a1, $sp, 32
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $sp, 24
	st.d	$s5, $sp, 16
	st.d	$a0, $sp, 8
	st.d	$a2, $sp, 0
	move	$a0, $s3
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $s4
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MSalignmm_rec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $a0, 0
	fmov.s	$fs0, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	nor	$a1, $s2, $zero
	add.w	$s0, $s6, $a1
	move	$s7, $fp
	st.d	$s6, $sp, 472                   # 8-byte Folded Spill
	blez	$s0, .LBB1_255
# %bb.248:                              # %.preheader756.preheader
	move	$s5, $a0
	st.d	$s2, $sp, 416                   # 8-byte Folded Spill
	ori	$a1, $zero, 45
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s1, $s0
	add.w	$fp, $s0, $s5
	blez	$s3, .LBB1_251
# %bb.249:                              # %.lr.ph844
	move	$s5, $s1
	move	$s1, $s3
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_250:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	stx.b	$zero, $a0, $fp
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB1_250
.LBB1_251:                              # %.preheader755
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	blez	$a0, .LBB1_254
# %bb.252:                              # %.lr.ph846
	ld.d	$s1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_253:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s3, 0
	ld.d	$a0, $s2, 0
	add.d	$a1, $a1, $s6
	add.d	$a1, $a1, $s5
	addi.d	$a1, $a1, 1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	stx.b	$zero, $a0, $fp
	addi.d	$s3, $s3, 8
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB1_253
.LBB1_254:                              # %._crit_edge847
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a0, $s5, $a0, 2
	fld.s	$fa0, $a0, 4
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	fld.s	$fa1, $a0, -4
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $a0, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fs0, $fs0, $fa0
	ld.d	$s3, $sp, 328                   # 8-byte Folded Reload
.LBB1_255:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$s7, $sp, 216                   # 8-byte Folded Spill
	nor	$a1, $s7, $zero
	add.w	$s0, $s8, $a1
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	blez	$s0, .LBB1_263
# %bb.256:                              # %.preheader754.preheader
	move	$s1, $a0
	ori	$a1, $zero, 45
	move	$a0, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s2, $s0
	add.w	$fp, $s0, $s1
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	move	$a0, $s3
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
	blez	$a0, .LBB1_259
# %bb.257:                              # %.lr.ph851
	ld.d	$s1, $sp, 328                   # 8-byte Folded Reload
	move	$s2, $s4
	.p2align	4, , 16
.LBB1_258:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	ld.d	$a0, $s5, 0
	add.d	$a1, $a1, $s6
	add.d	$a1, $a1, $s3
	addi.d	$a1, $a1, 1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	stx.b	$zero, $a0, $fp
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, -1
	addi.d	$s5, $s5, 8
	bnez	$s1, .LBB1_258
.LBB1_259:                              # %.preheader753
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	blez	$a0, .LBB1_262
# %bb.260:                              # %.lr.ph853
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_261:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	stx.b	$zero, $a0, $fp
	addi.d	$s0, $s0, -1
	addi.d	$s7, $s7, 8
	bnez	$s0, .LBB1_261
.LBB1_262:                              # %._crit_edge854
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	fld.s	$fa0, $a0, 4
	addi.w	$a0, $s8, 0
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	fld.s	$fa1, $a0, -4
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fs0, $fs0, $fa0
	ld.d	$s3, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	b	.LBB1_264
.LBB1_263:
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
.LBB1_264:
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	blez	$s3, .LBB1_272
# %bb.265:                              # %.lr.ph857
	ori	$a1, $zero, 4
	bgeu	$s3, $a1, .LBB1_267
# %bb.266:
	move	$a1, $zero
	b	.LBB1_270
.LBB1_267:                              # %vector.ph197
	bstrpick.d	$a1, $s3, 30, 2
	slli.d	$a1, $a1, 2
	addi.d	$a2, $s1, 16
	vreplgr2vr.d	$vr0, $a0
	move	$a3, $a1
	.p2align	4, , 16
.LBB1_268:                              # %vector.body200
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, -16
	vld	$vr2, $a2, 0
	vadd.d	$vr1, $vr1, $vr0
	vadd.d	$vr2, $vr2, $vr0
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB1_268
# %bb.269:                              # %middle.block205
	beq	$a1, $s3, .LBB1_272
.LBB1_270:                              # %scalar.ph195.preheader
	alsl.d	$a2, $a1, $s1, 3
	sub.d	$a1, $s3, $a1
	.p2align	4, , 16
.LBB1_271:                              # %scalar.ph195
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	add.d	$a3, $a3, $a0
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB1_271
.LBB1_272:                              # %.preheader752
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	blez	$a1, .LBB1_280
# %bb.273:                              # %.lr.ph859
	ori	$a1, $zero, 4
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	bgeu	$a2, $a1, .LBB1_275
# %bb.274:
	move	$a1, $zero
	b	.LBB1_278
.LBB1_275:                              # %vector.ph210
	bstrpick.d	$a1, $a2, 30, 2
	slli.d	$a1, $a1, 2
	addi.d	$a2, $fp, 16
	vreplgr2vr.d	$vr0, $a0
	move	$a3, $a1
	.p2align	4, , 16
.LBB1_276:                              # %vector.body213
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, -16
	vld	$vr2, $a2, 0
	vadd.d	$vr1, $vr1, $vr0
	vadd.d	$vr2, $vr2, $vr0
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB1_276
# %bb.277:                              # %middle.block218
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB1_280
.LBB1_278:                              # %scalar.ph208.preheader
	alsl.d	$a2, $a1, $fp, 3
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	sub.d	$a1, $a3, $a1
	.p2align	4, , 16
.LBB1_279:                              # %scalar.ph208
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	add.d	$a3, $a3, $a0
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB1_279
.LBB1_280:                              # %._crit_edge860
	add.w	$a6, $s8, $s6
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	add.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a1, $sp, 40
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a1, $sp, 32
	st.d	$fp, $sp, 24
	st.d	$s1, $sp, 16
	st.d	$a4, $sp, 8
	st.d	$a0, $sp, 0
	move	$a0, $s3
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $s4
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	move	$a7, $s5
	pcaddu18i	$ra, %call36(MSalignmm_rec)
	jirl	$ra, $ra, 0
	fadd.s	$fs0, $fs0, $fa0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_281:                              # %common.ret.sink.split
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_282:                              # %common.ret
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 592                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 664                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 672                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 680                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 688
	ret
.Lfunc_end1:
	.size	MSalignmm_rec, .Lfunc_end1-MSalignmm_rec
                                        # -- End function
	.p2align	5                               # -- Begin function match_calc
	.type	match_calc,@function
match_calc:                             # @match_calc
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	beqz	$a7, .LBB2_8
# %bb.1:
	blez	$a4, .LBB2_8
# %bb.2:                                # %.preheader62.preheader
	move	$a7, $zero
	movgr2fr.w	$fa0, $zero
	ori	$t0, $zero, 104
	addi.w	$t1, $zero, -1
	lu32i.d	$t1, 0
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	ld.d	$t2, $t6, 0
	slli.d	$t3, $t3, 2
	addi.d	$a7, $a7, 1
	stx.w	$t1, $t2, $t3
	beq	$a7, $a4, .LBB2_8
.LBB2_4:                                # %.preheader62
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	slli.d	$t2, $a7, 3
	ldx.d	$t2, $a2, $t2
	move	$t4, $zero
	move	$t5, $zero
	move	$t3, $zero
	alsl.d	$t7, $a7, $a5, 3
	alsl.d	$t6, $a7, $a6, 3
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_5:                                #   in Loop: Header=BB2_6 Depth=2
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 1
	beq	$t4, $t0, .LBB2_3
.LBB2_6:                                #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $t2, $t4
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_5
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=2
	ld.d	$t8, $t7, 0
	ld.d	$fp, $t6, 0
	slli.d	$s0, $t3, 2
	fstx.s	$fa1, $t8, $s0
	stx.w	$t5, $fp, $s0
	addi.w	$t3, $t3, 1
	b	.LBB2_5
.LBB2_8:                                # %.loopexit
	slli.d	$a2, $a3, 3
	ldx.d	$a1, $a1, $a2
	pcalau12i	$a2, %got_pc_hi20(n_dis)
	ld.d	$a2, $a2, %got_pc_lo12(n_dis)
	move	$a3, $zero
	addi.d	$a7, $sp, 8
	movgr2fr.w	$fa0, $zero
	ori	$t0, $zero, 104
	ori	$t1, $zero, 26
	.p2align	4, , 16
.LBB2_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_10 Depth 2
	move	$t3, $zero
	alsl.d	$t2, $a3, $a7, 2
	move	$t4, $a2
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB2_10:                               #   Parent Loop BB2_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t5, $t4, 0
	fldx.s	$fa2, $a1, $t3
	movgr2fr.w	$fa3, $t5
	ffint.s.w	$fa3, $fa3
	fmadd.s	$fa1, $fa3, $fa2, $fa1
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 104
	bne	$t3, $t0, .LBB2_10
# %bb.11:                               #   in Loop: Header=BB2_9 Depth=1
	fst.s	$fa1, $t2, 0
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	bne	$a3, $t1, .LBB2_9
# %bb.12:                               # %.preheader
	beqz	$a4, .LBB2_18
# %bb.13:
	movgr2fr.w	$fa0, $zero
	addi.d	$a1, $sp, 8
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_14:                               # %._crit_edge
                                        #   in Loop: Header=BB2_15 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a0, $a0, 4
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	beqz	$a4, .LBB2_18
.LBB2_15:                               # %.lr.ph74
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_17 Depth 2
	ld.d	$a7, $a6, 0
	ld.wu	$a2, $a7, 0
	addi.w	$a3, $a2, 0
	st.w	$zero, $a0, 0
	bltz	$a3, .LBB2_14
# %bb.16:                               # %.lr.ph
                                        #   in Loop: Header=BB2_15 Depth=1
	ld.d	$a3, $a5, 0
	addi.d	$a7, $a7, 4
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB2_17:                               #   Parent Loop BB2_15 Depth=1
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
	bgez	$t0, .LBB2_17
	b	.LBB2_14
.LBB2_18:                               # %._crit_edge75
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end2:
	.size	match_calc, .Lfunc_end2-match_calc
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
	.asciz	"bug! hairetsu ga kowareta! (nglen1) seqlen(seq1[0])=%d but nglen1=%d\n"
	.size	.L.str.3, 70

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"seq1[0] = %s\n"
	.size	.L.str.4, 14

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"bug! hairetsu ga kowareta! (nglen2) seqlen(seq2[0])=%d but nglen2=%d\n"
	.size	.L.str.5, 70

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"hairetsu ga kowareta (end of MSalignmm) !\n"
	.size	.L.str.6, 43

	.type	reccycle,@object                # @reccycle
	.local	reccycle
	.comm	reccycle,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
