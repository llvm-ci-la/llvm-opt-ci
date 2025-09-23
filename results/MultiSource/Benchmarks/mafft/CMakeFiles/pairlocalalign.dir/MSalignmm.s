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
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	move	$s0, $a5
	move	$s1, $a4
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	move	$s5, $a2
	move	$s6, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	ld.w	$fp, $a0, 0
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
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
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$s4, $s0
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$a0, $zero, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.w	$s3, $s8, 102
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	addi.w	$s7, $s7, 102
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
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
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	addi.w	$s8, $s8, 0
	st.d	$s1, $sp, 184                   # 8-byte Folded Spill
	blez	$s1, .LBB0_4
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	move	$s1, $s2
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB0_48
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addi.w	$s3, $s3, 1
	addi.d	$s7, $s7, -1
	addi.d	$s1, $s1, 8
	bnez	$s7, .LBB0_2
.LBB0_4:                                # %.preheader209
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$s3, $a0, 0
	blez	$s4, .LBB0_8
# %bb.5:                                # %.lr.ph216
	move	$s7, $zero
	move	$s1, $s4
	move	$s0, $s6
	.p2align	4, , 16
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_49
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	addi.w	$s7, $s7, 1
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	bnez	$s1, .LBB0_6
.LBB0_8:                                # %._crit_edge
	movgr2fr.w	$fa0, $fp
	ffint.s.w	$fs0, $fa0
	move	$a0, $s2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s8
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	move	$a4, $fp
	pcaddu18i	$ra, %call36(MScpmx_calc_new)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $s1
	move	$a3, $s3
	move	$s7, $s4
	move	$a4, $s4
	pcaddu18i	$ra, %call36(MScpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	beqz	$a5, .LBB0_10
# %bb.9:
	ld.d	$s7, $sp, 304
	ld.d	$s0, $sp, 288
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $s4
	move	$a2, $s6
	move	$a3, $s1
	move	$a4, $s3
	move	$a5, $s0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s8
	move	$a5, $s7
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	move	$a1, $s4
	move	$a2, $s6
	move	$a3, $s1
	move	$a4, $s3
	move	$a5, $s7
	move	$s7, $s4
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	b	.LBB0_11
.LBB0_10:
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$s0, $a0
	move	$a1, $s7
	move	$a2, $s6
	move	$a3, $s1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s6
	move	$a3, $s1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
.LBB0_11:
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	fcvt.d.s	$fa0, $fs0
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	blez	$s8, .LBB0_18
# %bb.12:                               # %.lr.ph219
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	ori	$a1, $zero, 8
	bltu	$a0, $a1, .LBB0_15
# %bb.13:                               # %vector.memcheck
	alsl.d	$a1, $a0, $a5, 2
	bgeu	$a7, $a1, .LBB0_42
# %bb.14:                               # %vector.memcheck
	alsl.d	$a1, $a0, $a7, 2
	bgeu	$a5, $a1, .LBB0_42
.LBB0_15:
	move	$a1, $zero
.LBB0_16:                               # %scalar.ph.preheader
	alsl.d	$a2, $a1, $a5, 2
	alsl.d	$a3, $a1, $a7, 2
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
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	blez	$s3, .LBB0_25
# %bb.19:                               # %.lr.ph221
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	ori	$a1, $zero, 8
	bltu	$a0, $a1, .LBB0_22
# %bb.20:                               # %vector.memcheck285
	alsl.d	$a1, $a0, $a6, 2
	bgeu	$s0, $a1, .LBB0_45
# %bb.21:                               # %vector.memcheck285
	alsl.d	$a1, $a0, $s0, 2
	bgeu	$a6, $a1, .LBB0_45
.LBB0_22:
	move	$a1, $zero
.LBB0_23:                               # %scalar.ph291.preheader
	alsl.d	$a2, $a1, $a6, 2
	alsl.d	$a3, $a1, $s0, 2
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
	st.d	$a7, $s8, 0
	st.d	$a5, $s8, 8
	st.d	$s0, $s8, 16
	st.d	$a6, $s8, 24
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	addi.w	$a7, $a0, -1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$s8, $sp, 40
	st.d	$zero, $sp, 32
	st.d	$s4, $sp, 24
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	st.d	$s3, $sp, 16
	st.d	$a0, $sp, 8
	st.d	$zero, $sp, 0
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
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
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	move	$s0, $s2
	move	$s1, $s3
	.p2align	4, , 16
.LBB0_27:                               # %.lr.ph225
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB0_27
.LBB0_28:                               # %.preheader207
	blez	$s7, .LBB0_31
# %bb.29:                               # %.lr.ph227.preheader
	move	$fp, $s7
	move	$s0, $s6
	move	$s1, $s4
	.p2align	4, , 16
.LBB0_30:                               # %.lr.ph227
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB0_30
.LBB0_31:                               # %._crit_edge228
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB0_54
# %bb.32:
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	bne	$a0, $s0, .LBB0_55
# %bb.33:
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	move	$a0, $fp
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
	move	$a0, $s3
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	blez	$s1, .LBB0_37
# %bb.34:                               # %.lr.ph231
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $zero
	addi.w	$fp, $a0, 0
	move	$s0, $s1
	.p2align	4, , 16
.LBB0_35:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB0_51
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=1
	addi.w	$s4, $s4, 1
	addi.d	$s0, $s0, -1
	addi.d	$s2, $s2, 8
	bnez	$s0, .LBB0_35
.LBB0_37:                               # %.preheader
	blez	$s7, .LBB0_41
# %bb.38:                               # %.lr.ph233
	move	$s1, $zero
	addi.w	$fp, $s3, 0
	move	$s0, $s7
	.p2align	4, , 16
.LBB0_39:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB0_52
# %bb.40:                               #   in Loop: Header=BB0_39 Depth=1
	addi.w	$s1, $s1, 1
	addi.d	$s0, $s0, -1
	addi.d	$s6, $s6, 8
	bnez	$s0, .LBB0_39
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
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 3
	slli.d	$a1, $a1, 3
	xvreplve0.d	$xr1, $xr0
	xvldi	$xr2, -912
	xvldi	$xr3, -928
	move	$a2, $a7
	move	$a3, $a5
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_43:                               # %vector.body
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
	bnez	$a4, .LBB0_43
# %bb.44:                               # %middle.block
	beq	$a0, $a1, .LBB0_18
	b	.LBB0_16
.LBB0_45:                               # %vector.ph293
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 3
	slli.d	$a1, $a1, 3
	xvreplve0.d	$xr1, $xr0
	xvldi	$xr2, -912
	xvldi	$xr3, -928
	move	$a2, $s0
	move	$a3, $a6
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_46:                               # %vector.body298
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
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	b	.LBB0_50
.LBB0_49:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s7
	move	$a3, $s4
.LBB0_50:
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_51:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s4
	move	$a3, $s1
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
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_54:
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
	move	$a3, $s5
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
.LBB0_55:
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
	move	$a3, $s0
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
.LCPI1_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI1_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.p2align	5
	.type	MSalignmm_rec,@function
MSalignmm_rec:                          # @MSalignmm_rec
# %bb.0:
	addi.d	$sp, $sp, -624
	st.d	$ra, $sp, 616                   # 8-byte Folded Spill
	st.d	$fp, $sp, 608                   # 8-byte Folded Spill
	st.d	$s0, $sp, 600                   # 8-byte Folded Spill
	st.d	$s1, $sp, 592                   # 8-byte Folded Spill
	st.d	$s2, $sp, 584                   # 8-byte Folded Spill
	st.d	$s3, $sp, 576                   # 8-byte Folded Spill
	st.d	$s4, $sp, 568                   # 8-byte Folded Spill
	st.d	$s5, $sp, 560                   # 8-byte Folded Spill
	st.d	$s6, $sp, 552                   # 8-byte Folded Spill
	st.d	$s7, $sp, 544                   # 8-byte Folded Spill
	st.d	$s8, $sp, 536                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 528                  # 8-byte Folded Spill
	move	$s0, $a6
	st.d	$a5, $sp, 224                   # 8-byte Folded Spill
	st.d	$a4, $sp, 216                   # 8-byte Folded Spill
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	move	$s4, $a1
	move	$s6, $a0
	ld.d	$a2, $sp, 664
	ld.d	$a0, $sp, 648
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 640
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 632
	ld.d	$s1, $sp, 624
	ld.d	$s3, $a2, 0
	pcalau12i	$a0, %pc_hi20(reccycle)
	ld.w	$a1, $a0, %pc_lo12(reccycle)
	ld.d	$a4, $a2, 8
	st.d	$a4, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a4, $a2, 16
	ld.d	$s2, $a2, 24
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(reccycle)
	sub.d	$fp, $a7, $a6
	addi.w	$s8, $fp, 0
	sub.w	$s7, $a3, $s1
	addi.w	$s5, $fp, 1
	bltz	$s7, .LBB1_23
# %bb.1:
	st.d	$a4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 328                   # 8-byte Folded Spill
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	st.d	$a7, $sp, 88                    # 8-byte Folded Spill
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	blez	$s6, .LBB1_9
# %bb.2:                                # %.lr.ph.preheader
	ori	$a1, $zero, 8
	move	$a0, $zero
	bltu	$s6, $a1, .LBB1_7
# %bb.3:                                # %.lr.ph.preheader
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	sub.d	$a1, $s5, $a1
	ori	$a2, $zero, 64
	bltu	$a1, $a2, .LBB1_7
# %bb.4:                                # %vector.ph
	bstrpick.d	$a0, $s6, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a1, $s5, 32
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 32
	move	$a3, $a0
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a3, $a3, -8
	addi.d	$a1, $a1, 64
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB1_5
# %bb.6:                                # %middle.block
	beq	$a0, $s6, .LBB1_9
.LBB1_7:                                # %.lr.ph.preheader579
	alsl.d	$a1, $a0, $s5, 3
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	sub.d	$a0, $s6, $a0
	.p2align	4, , 16
.LBB1_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	st.d	$a3, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB1_8
.LBB1_9:                                # %.preheader13
	addi.w	$a0, $s7, 1
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	blez	$s4, .LBB1_17
# %bb.10:                               # %.lr.ph25.preheader
	ori	$a1, $zero, 8
	move	$a0, $zero
	bltu	$s4, $a1, .LBB1_15
# %bb.11:                               # %.lr.ph25.preheader
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	sub.d	$a1, $a4, $a1
	ori	$a2, $zero, 64
	bltu	$a1, $a2, .LBB1_15
# %bb.12:                               # %vector.ph15
	bstrpick.d	$a0, $s4, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a1, $a4, 32
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 32
	move	$a3, $a0
	.p2align	4, , 16
.LBB1_13:                               # %vector.body18
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a3, $a3, -8
	addi.d	$a1, $a1, 64
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB1_13
# %bb.14:                               # %middle.block23
	beq	$a0, $s4, .LBB1_17
.LBB1_15:                               # %.lr.ph25.preheader578
	alsl.d	$a1, $a0, $a4, 3
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	sub.d	$a0, $s4, $a0
	.p2align	4, , 16
.LBB1_16:                               # %.lr.ph25
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	st.d	$a3, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB1_16
.LBB1_17:                               # %._crit_edge
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	ori	$a0, $zero, 99
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 376                   # 8-byte Folded Spill
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s8, $sp, 424                   # 8-byte Folded Spill
	blt	$s8, $a0, .LBB1_31
# %bb.18:                               # %._crit_edge
	ori	$a0, $zero, 98
	bgeu	$a0, $s7, .LBB1_31
# %bb.19:                               # %iter.check
	st.d	$s2, $sp, 288                   # 8-byte Folded Spill
	st.d	$s3, $sp, 264                   # 8-byte Folded Spill
	alsl.d	$s2, $s0, $s3, 2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a0, $s0, $a0, 2
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	addi.w	$s1, $s7, 103
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$s0, $s7
	addi.w	$s7, $s8, 103
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	move	$a0, $s7
	ld.d	$s5, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	sltu	$a0, $s0, $s8
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a1
	addi.w	$s1, $a0, 103
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a1, $zero, 26
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a1, $zero, 26
	move	$a0, $s1
	move	$s1, $s2
	st.d	$fp, $sp, 504                   # 8-byte Folded Spill
	move	$fp, $s3
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s2, $a0, $a1, 3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$s5, $s5, $a0, 3
	ori	$a7, $zero, 1
	ld.d	$s0, $sp, 512                   # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s5
	move	$a3, $zero
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	move	$a5, $s7
	move	$a6, $s3
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	move	$a0, $fp
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	move	$a1, $s5
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	move	$a2, $s2
	move	$a3, $zero
	ld.d	$a4, $sp, 520                   # 8-byte Folded Reload
	st.d	$s7, $sp, 472                   # 8-byte Folded Spill
	move	$a5, $s7
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	move	$a6, $s3
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a1, $s0, 4
	alsl.d	$a2, $a0, $s0, 2
	addi.d	$s2, $s1, 4
	sltu	$a3, $a1, $s2
	sltu	$a4, $s1, $a2
	and	$a3, $a3, $a4
	bnez	$a3, .LBB1_124
# %bb.20:                               # %iter.check
	ld.d	$t2, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $t2, 2
	addi.d	$a3, $a3, -4
	sltu	$a1, $a1, $a3
	sltu	$a2, $t2, $a2
	and	$a1, $a1, $a2
	ld.d	$t3, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 296                   # 8-byte Folded Reload
	ori	$t0, $zero, 1
	bnez	$a1, .LBB1_132
# %bb.21:                               # %vector.main.loop.iter.check
	addi.d	$a1, $a0, -1
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB1_125
# %bb.22:
	move	$a2, $zero
	b	.LBB1_129
.LBB1_23:                               # %.preheader1
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	blez	$s6, .LBB1_25
	.p2align	4, , 16
.LBB1_24:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 0
	ld.d	$a0, $s1, 0
	add.d	$a1, $a1, $s0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	stx.b	$zero, $a0, $s5
	addi.d	$fp, $fp, 8
	addi.d	$s6, $s6, -1
	addi.d	$s1, $s1, 8
	bnez	$s6, .LBB1_24
.LBB1_25:                               # %.preheader
	movgr2fr.w	$fs0, $zero
	blez	$s4, .LBB1_258
# %bb.26:                               # %.lr.ph117
	move	$fp, $zero
	ori	$s0, $zero, 45
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	b	.LBB1_28
	.p2align	4, , 16
.LBB1_27:                               # %._crit_edge115
                                        #   in Loop: Header=BB1_28 Depth=1
	addi.d	$fp, $fp, 1
	beq	$fp, $s4, .LBB1_258
.LBB1_28:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_30 Depth 2
	slli.d	$a0, $fp, 3
	ldx.d	$a0, $s6, $a0
	st.b	$zero, $a0, 0
	bltz	$s8, .LBB1_27
# %bb.29:                               # %.lr.ph114.preheader
                                        #   in Loop: Header=BB1_28 Depth=1
	alsl.d	$s2, $fp, $s6, 3
	move	$s3, $s5
	.p2align	4, , 16
.LBB1_30:                               # %.lr.ph114
                                        #   Parent Loop BB1_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	stx.h	$s0, $s1, $a0
	bnez	$s3, .LBB1_30
	b	.LBB1_27
.LBB1_31:
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 0
	ld.d	$a3, $a1, 8
	ld.d	$a2, $a1, 16
	st.d	$a2, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 24
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	alsl.d	$a0, $s0, $a0, 2
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	st.d	$a3, $sp, 432                   # 8-byte Folded Spill
	alsl.d	$a0, $s0, $a3, 2
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	addi.w	$s1, $s7, 103
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	addi.w	$s7, $s8, 103
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s7
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	slt	$a0, $s2, $s8
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a1
	addi.w	$s1, $a0, 103
	ori	$a1, $zero, 27
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ori	$a1, $zero, 27
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.w	$a0, $s8, 102
	addi.w	$a1, $s2, 102
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s7, $a1, $a0, 3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$s2, $fp, $a0, 3
	ori	$a7, $zero, 1
	ori	$s1, $zero, 1
	st.d	$s3, $sp, 512                   # 8-byte Folded Spill
	move	$a0, $s3
	move	$a1, $s7
	move	$a2, $s2
	move	$a3, $zero
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	move	$a5, $s5
	move	$a6, $s4
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$s3, $s0
	move	$a0, $s0
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	move	$a1, $s2
	st.d	$s7, $sp, 464                   # 8-byte Folded Spill
	move	$a2, $s7
	move	$a3, $zero
	ld.d	$a4, $sp, 520                   # 8-byte Folded Reload
	st.d	$s5, $sp, 488                   # 8-byte Folded Spill
	move	$a5, $s5
	st.d	$s4, $sp, 480                   # 8-byte Folded Spill
	move	$a6, $s4
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 360                   # 8-byte Folded Reload
	addi.w	$t6, $s8, 2
	bltz	$s8, .LBB1_35
# %bb.32:                               # %iter.check331
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t6, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	blt	$a1, $t6, .LBB1_65
.LBB1_33:                               # %.lr.ph.i.preheader
	sub.d	$a0, $a0, $a2
	slli.d	$a3, $a2, 2
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 2
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 2
	ld.d	$a3, $sp, 432                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB1_34:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t5, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB1_34
.LBB1_35:                               # %iter.check383
	ld.d	$a7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$s6, $a7, $a0, 2
	ld.d	$a6, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$s8, $a7, $a6, 2
	ld.d	$t8, $sp, 376                   # 8-byte Folded Reload
	addi.w	$fp, $t8, 2
	ori	$a0, $zero, 2
	slt	$a1, $a0, $fp
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$a0, $a1, $a0
	ori	$a2, $zero, 4
	addi.d	$a1, $a0, -1
	blt	$a2, $fp, .LBB1_53
# %bb.36:
	ld.d	$t2, $sp, 400                   # 8-byte Folded Reload
	move	$t7, $s3
.LBB1_37:                               # %.lr.ph12.i.preheader
	sub.d	$a2, $a0, $s1
	slli.d	$a4, $s1, 2
	alsl.d	$a3, $s1, $t7, 2
	alsl.d	$a4, $a7, $a4, 2
	add.d	$a4, $a4, $a6
	addi.d	$a4, $a4, -4
	.p2align	4, , 16
.LBB1_38:                               # %.lr.ph12.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s6, 0
	fld.s	$fa1, $a4, 0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	bnez	$a2, .LBB1_38
.LBB1_39:                               # %iter.check435
	addi.d	$a2, $t5, 4
	ori	$a3, $zero, 1
	ori	$a4, $zero, 4
	addi.d	$s3, $t2, 4
	blt	$a4, $fp, .LBB1_57
.LBB1_40:                               # %vec.epilog.scalar.ph451.preheader
	sub.d	$a1, $a0, $a3
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a4, 2
	alsl.d	$a5, $a3, $t2, 2
	alsl.d	$a3, $a3, $t7, 2
	addi.d	$a3, $a3, -4
	.p2align	4, , 16
.LBB1_41:                               # %vec.epilog.scalar.ph451
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a5, 0
	st.w	$zero, $a4, 0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB1_41
.LBB1_42:                               # %._crit_edge.i
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	slli.d	$a1, $t8, 2
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	fldx.s	$fa0, $t7, $a1
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	fst.s	$fa0, $a1, 0
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	st.d	$t7, $sp, 384                   # 8-byte Folded Spill
	st.d	$t6, $sp, 352                   # 8-byte Folded Spill
	bltz	$a1, .LBB1_61
# %bb.43:                               # %.lr.ph37.i
	ori	$a1, $zero, 2
	slt	$a2, $a1, $t6
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $t6, $a2
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	addi.d	$s2, $a0, -4
	addi.d	$s5, $s6, 4
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	addi.d	$fp, $a0, 4
	ori	$s1, $zero, 1
	move	$a2, $t7
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	st.d	$s6, $sp, 440                   # 8-byte Folded Spill
	st.d	$s8, $sp, 416                   # 8-byte Folded Spill
	b	.LBB1_45
	.p2align	4, , 16
.LBB1_44:                               # %._crit_edge30.i
                                        #   in Loop: Header=BB1_45 Depth=1
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	fldx.s	$fa0, $t2, $a1
	addi.d	$s1, $s1, 1
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	move	$a2, $t2
	move	$a0, $s7
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	beq	$s1, $a1, .LBB1_62
.LBB1_45:                               # %.lr.ph29.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_47 Depth 2
	addi.d	$s4, $s1, -1
	slli.d	$a1, $s4, 2
	ld.d	$a3, $sp, 512                   # 8-byte Folded Reload
	fldx.s	$fa0, $a3, $a1
	move	$s7, $a2
	addi.d	$s0, $a0, 4
	fst.s	$fa0, $a2, 0
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 464                   # 8-byte Folded Reload
	move	$a3, $s1
	ld.d	$a4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 488                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 480                   # 8-byte Folded Reload
	move	$a7, $zero
	move	$s8, $t5
	move	$s6, $a0
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t2, $s6
	move	$t5, $s8
	ld.d	$s8, $sp, 416                   # 8-byte Folded Reload
	slli.d	$a0, $s1, 2
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	ld.d	$s6, $sp, 440                   # 8-byte Folded Reload
	fst.s	$fa0, $t2, 0
	fld.s	$fa0, $s7, 0
	fld.s	$fa1, $s6, 4
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	slli.d	$a4, $s1, 3
	ld.d	$a5, $sp, 504                   # 8-byte Folded Reload
	ldx.d	$a6, $a5, $a4
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a4, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a4, $s4, $a4, 2
	alsl.d	$a5, $s1, $t5, 2
	addi.d	$a6, $a6, 4
	addi.d	$a7, $zero, -1
	b	.LBB1_47
	.p2align	4, , 16
.LBB1_46:                               #   in Loop: Header=BB1_47 Depth=2
	fadd.s	$fa1, $fa1, $fa2
	fcmp.cult.s	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa1, $fa0, $fcc0
	movcf2gr	$t0, $fcc0
	fldx.s	$fa1, $s0, $a2
	masknez	$t1, $a1, $t0
	maskeqz	$a3, $a3, $t0
	or	$a3, $a3, $t1
	fadd.s	$fa1, $fs0, $fa1
	fstx.s	$fa1, $s0, $a2
	addi.d	$a7, $a7, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 1
	beq	$s2, $a2, .LBB1_44
.LBB1_47:                               #   Parent Loop BB1_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa2, $s8, $a2
	fldx.s	$fa1, $s7, $a2
	fadd.s	$fa2, $fa0, $fa2
	fcmp.cule.s	$fcc0, $fa2, $fa1
	stx.w	$zero, $a6, $a2
	fmov.s	$fs0, $fa1
	bcnez	$fcc0, .LBB1_49
# %bb.48:                               #   in Loop: Header=BB1_47 Depth=2
	add.d	$t0, $a7, $a3
	stx.w	$t0, $a6, $a2
	fmov.s	$fs0, $fa2
.LBB1_49:                               #   in Loop: Header=BB1_47 Depth=2
	fldx.s	$fa3, $s3, $a2
	fld.s	$fa4, $a4, 0
	fldx.s	$fa2, $s5, $a2
	fadd.s	$fa4, $fa3, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fs0
	bcnez	$fcc0, .LBB1_51
# %bb.50:                               #   in Loop: Header=BB1_47 Depth=2
	ldx.w	$t0, $fp, $a2
	sub.d	$t0, $s1, $t0
	stx.w	$t0, $a6, $a2
	fmov.s	$fs0, $fa4
.LBB1_51:                               #   in Loop: Header=BB1_47 Depth=2
	fld.s	$fa4, $a5, 0
	fadd.s	$fa4, $fa1, $fa4
	fcmp.cult.s	$fcc0, $fa4, $fa3
	bcnez	$fcc0, .LBB1_46
# %bb.52:                               #   in Loop: Header=BB1_47 Depth=2
	fstx.s	$fa4, $s3, $a2
	stx.w	$s4, $fp, $a2
	b	.LBB1_46
.LBB1_53:                               # %vector.memcheck368
	move	$t7, $s3
	addi.d	$a2, $s3, 4
	alsl.d	$a3, $a0, $s3, 2
	addi.d	$a4, $s6, 4
	sltu	$a4, $a2, $a4
	sltu	$a5, $s6, $a3
	and	$a4, $a4, $a5
	ld.d	$t2, $sp, 400                   # 8-byte Folded Reload
	bnez	$a4, .LBB1_37
# %bb.54:                               # %vector.memcheck368
	alsl.d	$a4, $a0, $s8, 2
	addi.d	$a4, $a4, -4
	sltu	$a2, $a2, $a4
	sltu	$a3, $s8, $a3
	and	$a2, $a2, $a3
	bnez	$a2, .LBB1_37
# %bb.55:                               # %vector.main.loop.iter.check385
	ori	$a2, $zero, 17
	bge	$fp, $a2, .LBB1_259
# %bb.56:
	move	$a2, $zero
	b	.LBB1_263
.LBB1_57:                               # %vector.memcheck420
	alsl.d	$a4, $a0, $t2, 2
	alsl.d	$a5, $a0, $t7, 2
	addi.d	$a5, $a5, -4
	sltu	$a5, $s3, $a5
	sltu	$a6, $t7, $a4
	and	$a5, $a5, $a6
	bnez	$a5, .LBB1_40
# %bb.58:                               # %vector.memcheck420
	addi.d	$a5, $t5, 8
	sltu	$a5, $s3, $a5
	sltu	$a4, $a2, $a4
	and	$a4, $a5, $a4
	bnez	$a4, .LBB1_40
# %bb.59:                               # %vector.main.loop.iter.check437
	ori	$a3, $zero, 17
	bge	$fp, $a3, .LBB1_266
# %bb.60:
	move	$a4, $zero
	b	.LBB1_270
.LBB1_61:
	movgr2fr.w	$fs0, $zero
.LBB1_62:                               # %._crit_edge38.i
	ld.d	$s4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 328                   # 8-byte Folded Reload
	add.w	$fp, $s4, $s5
	addi.w	$s1, $fp, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	move	$a7, $a0
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB1_74
# %bb.63:                               # %.lr.ph.preheader.i.i
	ori	$a2, $zero, 4
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a3, 31, 0
	bgeu	$a3, $a2, .LBB1_69
# %bb.64:
	move	$a2, $zero
	b	.LBB1_72
.LBB1_65:                               # %vector.memcheck316
	ld.d	$a3, $sp, 512                   # 8-byte Folded Reload
	addi.d	$a1, $a3, 4
	alsl.d	$a3, $a0, $a3, 2
	addi.d	$a4, $t5, 4
	sltu	$a4, $a1, $a4
	sltu	$a5, $t5, $a3
	and	$a4, $a4, $a5
	bnez	$a4, .LBB1_33
# %bb.66:                               # %vector.memcheck316
	ld.d	$a5, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a5, 2
	addi.d	$a4, $a4, -4
	sltu	$a1, $a1, $a4
	sltu	$a3, $a5, $a3
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_33
# %bb.67:                               # %vector.main.loop.iter.check333
	ori	$a2, $zero, 17
	addi.d	$a1, $a0, -1
	bge	$t6, $a2, .LBB1_301
# %bb.68:
	move	$a3, $zero
	b	.LBB1_305
.LBB1_69:                               # %vector.ph471
	pcalau12i	$a2, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_1)
	bstrpick.d	$a2, $a0, 31, 2
	slli.d	$a2, $a2, 2
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB1_70:                               # %vector.body474
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
	bnez	$a4, .LBB1_70
# %bb.71:                               # %middle.block479
	beq	$a2, $a0, .LBB1_74
.LBB1_72:                               # %.lr.ph.i.i.preheader
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	sub.d	$a0, $a0, $a2
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB1_73:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	st.w	$a2, $a4, 0
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB1_73
.LBB1_74:                               # %iter.check485
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a3, $zero, 1
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 31, 0
	bltu	$a3, $a6, .LBB1_76
# %bb.75:
	move	$a3, $zero
	b	.LBB1_85
.LBB1_76:                               # %vector.main.loop.iter.check487
	ori	$a3, $zero, 14
	bgeu	$a6, $a3, .LBB1_78
# %bb.77:
	move	$a3, $zero
	b	.LBB1_82
.LBB1_78:                               # %vector.ph488
	bstrpick.d	$a3, $a2, 31, 4
	slli.d	$a3, $a3, 4
	pcalau12i	$a4, %pc_hi20(.LCPI1_2)
	xvld	$xr0, $a4, %pc_lo12(.LCPI1_2)
	addi.d	$a4, $a0, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$a5, $a3
	.p2align	4, , 16
.LBB1_79:                               # %vector.body491
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a4, -32
	xvst	$xr4, $a4, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_79
# %bb.80:                               # %middle.block497
	beq	$a3, $a2, .LBB1_87
# %bb.81:                               # %vec.epilog.iter.check502
	andi	$a4, $a2, 12
	beqz	$a4, .LBB1_85
.LBB1_82:                               # %vec.epilog.ph501
	move	$a5, $a3
	pcalau12i	$a3, %pc_hi20(.LCPI1_3)
	vld	$vr0, $a3, %pc_lo12(.LCPI1_3)
	bstrpick.d	$a3, $a2, 31, 2
	slli.d	$a3, $a3, 2
	vreplgr2vr.w	$vr1, $a5
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a4, $a5, $a3
	alsl.d	$a5, $a5, $a0, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB1_83:                               # %vec.epilog.vector.body509
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a5, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB1_83
# %bb.84:                               # %vec.epilog.middle.block514
	beq	$a3, $a2, .LBB1_87
.LBB1_85:                               # %vec.epilog.scalar.ph500.preheader
	alsl.d	$a0, $a3, $a0, 2
	nor	$a4, $a3, $zero
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB1_86:                               # %vec.epilog.scalar.ph500
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, -1
	bnez	$a2, .LBB1_86
.LBB1_87:                               # %._crit_edge.i.i
	add.d	$a0, $s7, $s5
	add.d	$s1, $a0, $s4
	stx.b	$zero, $a0, $s4
	move	$s6, $a7
	add.d	$a0, $a7, $s5
	add.d	$s8, $a0, $s4
	stx.b	$zero, $a0, $s4
	bltz	$fp, .LBB1_116
# %bb.88:                               # %.lr.ph146.i.i.preheader
	move	$a5, $zero
	ori	$a0, $zero, 111
	ori	$a2, $zero, 45
	ori	$a3, $zero, 16
	xvrepli.b	$xr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a4, $zero, 32
	xvrepli.b	$xr3, 111
	xvrepli.b	$xr4, 45
	.p2align	4, , 16
.LBB1_89:                               # %.lr.ph146.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_95 Depth 2
                                        #     Child Loop BB1_106 Depth 2
                                        #     Child Loop BB1_102 Depth 2
                                        #     Child Loop BB1_111 Depth 2
	slli.d	$a6, $s5, 3
	ld.d	$a7, $sp, 504                   # 8-byte Folded Reload
	ldx.d	$a6, $a7, $a6
	slli.d	$a7, $s4, 2
	ldx.w	$a7, $a6, $a7
	bltz	$a7, .LBB1_97
# %bb.90:                               #   in Loop: Header=BB1_89 Depth=1
	beqz	$a7, .LBB1_115
# %bb.91:                               #   in Loop: Header=BB1_89 Depth=1
	sub.w	$a6, $s5, $a7
	move	$a7, $a1
	nor	$t0, $a6, $zero
	add.w	$t1, $s5, $t0
	beqz	$t1, .LBB1_98
.LBB1_92:                               # %.lr.ph125.i.i.preheader
                                        #   in Loop: Header=BB1_89 Depth=1
	bltu	$t1, $a4, .LBB1_104
# %bb.93:                               # %.lr.ph125.i.i.preheader
                                        #   in Loop: Header=BB1_89 Depth=1
	sub.d	$t2, $s1, $s8
	bltu	$t2, $a4, .LBB1_104
# %bb.94:                               # %vector.ph544
                                        #   in Loop: Header=BB1_89 Depth=1
	bstrpick.d	$t4, $t1, 31, 0
	bstrpick.d	$t2, $t4, 31, 5
	slli.d	$t5, $t2, 5
	sub.d	$t1, $t1, $t5
	sub.d	$t2, $s8, $t5
	sub.d	$t3, $s1, $t5
	addi.d	$t6, $s1, -32
	addi.d	$t7, $s8, -32
	move	$t8, $t5
	.p2align	4, , 16
.LBB1_95:                               # %vector.body548
                                        #   Parent Loop BB1_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $t6, 0
	xvst	$xr4, $t7, 0
	addi.d	$t8, $t8, -32
	addi.d	$t6, $t6, -32
	addi.d	$t7, $t7, -32
	bnez	$t8, .LBB1_95
# %bb.96:                               # %middle.block555
                                        #   in Loop: Header=BB1_89 Depth=1
	bne	$t5, $t4, .LBB1_105
	b	.LBB1_107
	.p2align	4, , 16
.LBB1_97:                               #   in Loop: Header=BB1_89 Depth=1
	addi.w	$a6, $s5, -1
	nor	$t0, $a6, $zero
	add.w	$t1, $s5, $t0
	bnez	$t1, .LBB1_92
	.p2align	4, , 16
.LBB1_98:                               # %._crit_edge126.i.i
                                        #   in Loop: Header=BB1_89 Depth=1
	beq	$a7, $a1, .LBB1_108
.LBB1_99:                               # %.lr.ph134.preheader.i.i
                                        #   in Loop: Header=BB1_89 Depth=1
	addi.w	$t0, $zero, -17
	nor	$t3, $a7, $zero
	bltu	$t0, $a7, .LBB1_109
# %bb.100:                              # %.lr.ph134.preheader.i.i
                                        #   in Loop: Header=BB1_89 Depth=1
	sub.d	$t0, $s1, $s8
	bltu	$t0, $a3, .LBB1_109
# %bb.101:                              # %vector.ph523
                                        #   in Loop: Header=BB1_89 Depth=1
	bstrpick.d	$t0, $t3, 30, 4
	slli.d	$t4, $t0, 4
	sub.d	$t2, $t3, $t4
	sub.d	$t0, $s8, $t4
	sub.d	$t1, $s1, $t4
	xvori.b	$xr5, $xr0, 0
	xvinsgr2vr.w	$xr5, $a5, 0
	addi.d	$a5, $s1, -8
	addi.d	$t5, $s8, -8
	move	$t6, $t4
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB1_102:                              # %vector.body526
                                        #   Parent Loop BB1_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $a5, -8
	vst	$vr2, $t5, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$t6, $t6, -16
	addi.d	$a5, $a5, -16
	addi.d	$t5, $t5, -16
	bnez	$t6, .LBB1_102
# %bb.103:                              # %middle.block533
                                        #   in Loop: Header=BB1_89 Depth=1
	xvadd.w	$xr5, $xr6, $xr5
	xvhaddw.d.w	$xr5, $xr5, $xr5
	xvhaddw.q.d	$xr5, $xr5, $xr5
	xvpermi.d	$xr6, $xr5, 2
	xvadd.d	$xr5, $xr6, $xr5
	xvpickve2gr.d	$a5, $xr5, 0
	bne	$t4, $t3, .LBB1_110
	b	.LBB1_112
	.p2align	4, , 16
.LBB1_104:                              #   in Loop: Header=BB1_89 Depth=1
	move	$t2, $s8
	move	$t3, $s1
.LBB1_105:                              # %.lr.ph125.i.i.preheader564
                                        #   in Loop: Header=BB1_89 Depth=1
	move	$t4, $t2
	move	$t5, $t3
	.p2align	4, , 16
.LBB1_106:                              # %.lr.ph125.i.i
                                        #   Parent Loop BB1_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t3, $t5, -1
	st.b	$a0, $t5, -1
	addi.d	$t2, $t4, -1
	addi.w	$t1, $t1, -1
	st.b	$a2, $t4, -1
	move	$t4, $t2
	move	$t5, $t3
	bnez	$t1, .LBB1_106
.LBB1_107:                              # %._crit_edge126.loopexit.i.i
                                        #   in Loop: Header=BB1_89 Depth=1
	add.d	$a5, $s5, $a5
	add.d	$a5, $t0, $a5
	move	$s1, $t3
	move	$s8, $t2
	bne	$a7, $a1, .LBB1_99
.LBB1_108:                              #   in Loop: Header=BB1_89 Depth=1
	move	$t1, $s1
	move	$t0, $s8
	bgtz	$s5, .LBB1_113
	b	.LBB1_117
	.p2align	4, , 16
.LBB1_109:                              #   in Loop: Header=BB1_89 Depth=1
	move	$t2, $t3
	move	$t0, $s8
	move	$t1, $s1
.LBB1_110:                              # %.lr.ph134.i.i.preheader
                                        #   in Loop: Header=BB1_89 Depth=1
	add.d	$a5, $a5, $t2
	.p2align	4, , 16
.LBB1_111:                              # %.lr.ph134.i.i
                                        #   Parent Loop BB1_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a2, $t1, -1
	addi.d	$t1, $t1, -1
	st.b	$a0, $t0, -1
	addi.w	$t2, $t2, -1
	addi.d	$t0, $t0, -1
	bnez	$t2, .LBB1_111
.LBB1_112:                              # %._crit_edge135.i.i
                                        #   in Loop: Header=BB1_89 Depth=1
	blez	$s5, .LBB1_117
.LBB1_113:                              # %._crit_edge135.i.i
                                        #   in Loop: Header=BB1_89 Depth=1
	blez	$s4, .LBB1_117
# %bb.114:                              #   in Loop: Header=BB1_89 Depth=1
	add.w	$s4, $a7, $s4
	addi.d	$s1, $t1, -1
	st.b	$a0, $t1, -1
	addi.d	$s8, $t0, -1
	addi.w	$a5, $a5, 2
	st.b	$a0, $t0, -1
	move	$s5, $a6
	bge	$fp, $a5, .LBB1_89
	b	.LBB1_116
	.p2align	4, , 16
.LBB1_115:                              #   in Loop: Header=BB1_89 Depth=1
	addi.w	$a6, $s5, -1
	move	$a7, $a1
	nor	$t0, $a6, $zero
	add.w	$t1, $s5, $t0
	bnez	$t1, .LBB1_92
	b	.LBB1_98
.LBB1_116:                              # %._crit_edge147.i.i
	move	$s5, $s7
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 296                   # 8-byte Folded Reload
	bgtz	$s4, .LBB1_118
	b	.LBB1_120
.LBB1_117:
	move	$s1, $t1
	move	$s8, $t0
	move	$s5, $s7
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 296                   # 8-byte Folded Reload
	blez	$s4, .LBB1_120
.LBB1_118:                              # %.lr.ph155.i.i
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_119:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s3, 0
	ld.d	$a0, $fp, 0
	add.d	$a1, $a1, $s7
	move	$a2, $s1
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 8
	addi.d	$fp, $fp, 8
	bnez	$s4, .LBB1_119
.LBB1_120:                              # %.preheader.i.i
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	blez	$s0, .LBB1_123
# %bb.121:                              # %.lr.ph157.i.i
	move	$fp, $s3
	.p2align	4, , 16
.LBB1_122:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	ld.d	$a0, $fp, 0
	add.d	$a1, $a1, $s1
	move	$a2, $s8
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$s2, $s2, 8
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB1_122
.LBB1_123:                              # %MSalignmm_tanni.exit
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	b	.LBB1_257
.LBB1_124:
	ld.d	$t3, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 296                   # 8-byte Folded Reload
	ori	$t0, $zero, 1
	b	.LBB1_132
.LBB1_125:                              # %vector.ph36
	move	$a2, $a1
	xvldrepl.w	$xr0, $s1, 0
	bstrins.d	$a2, $zero, 3, 0
	addi.d	$a3, $t2, 32
	addi.d	$a4, $s0, 36
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_126:                              # %vector.body39
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a3, -32
	xvld	$xr2, $a3, 0
	xvld	$xr3, $a4, -32
	xvld	$xr4, $a4, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_126
# %bb.127:                              # %middle.block46
	beq	$a1, $a2, .LBB1_134
# %bb.128:                              # %vec.epilog.iter.check
	andi	$a3, $a1, 12
	beqz	$a3, .LBB1_308
.LBB1_129:                              # %vec.epilog.ph
	move	$a3, $a1
	bstrins.d	$a3, $zero, 1, 0
	ori	$a4, $zero, 1
	move	$t0, $a1
	bstrins.d	$t0, $a4, 1, 0
	vldrepl.w	$vr0, $s1, 0
	slli.d	$a4, $a2, 2
	alsl.d	$a4, $a7, $a4, 2
	ld.d	$a5, $sp, 320                   # 8-byte Folded Reload
	add.d	$a4, $a5, $a4
	alsl.d	$a5, $a2, $s0, 2
	addi.d	$a5, $a5, 4
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB1_130:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vld	$vr2, $a5, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a5, 0
	addi.d	$a4, $a4, 16
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	bnez	$a2, .LBB1_130
# %bb.131:                              # %vec.epilog.middle.block
	beq	$a1, $a3, .LBB1_134
.LBB1_132:                              # %.lr.ph28.preheader
	slli.d	$a1, $t0, 2
	alsl.d	$a1, $a7, $a1, 2
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, -4
	alsl.d	$a2, $t0, $s0, 2
	sub.d	$a0, $a0, $t0
	.p2align	4, , 16
.LBB1_133:                              # %.lr.ph28
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s1, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB1_133
.LBB1_134:                              # %iter.check73
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$t4, $t0, $a6, 2
	alsl.d	$a0, $t0, $t5, 2
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 376                   # 8-byte Folded Reload
	addi.w	$t7, $t1, 2
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t7, $a1
	or	$a0, $a1, $a0
	addi.d	$a1, $a0, -1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 4
	alsl.d	$a2, $a0, $s3, 2
	blt	$a4, $t7, .LBB1_196
.LBB1_135:                              # %.lr.ph30.preheader
	slli.d	$a4, $a3, 2
	alsl.d	$a4, $t0, $a4, 2
	add.d	$a4, $a4, $t5
	addi.d	$a4, $a4, -4
	alsl.d	$a5, $a3, $s3, 2
	sub.d	$a3, $a0, $a3
	.p2align	4, , 16
.LBB1_136:                              # %.lr.ph30
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t4, 0
	fld.s	$fa1, $a4, 0
	fld.s	$fa2, $a5, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a5, 0
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 4
	bnez	$a3, .LBB1_136
.LBB1_137:                              # %iter.check125
	ori	$a3, $zero, 1
	ori	$a4, $zero, 4
	addi.d	$fp, $t3, 4
	blt	$a4, $t7, .LBB1_200
.LBB1_138:                              # %vec.epilog.scalar.ph141.preheader
	alsl.d	$a1, $a3, $s3, 2
	addi.d	$a1, $a1, -4
	alsl.d	$a2, $a3, $t3, 2
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a4, 2
	sub.d	$a0, $a0, $a3
	.p2align	4, , 16
.LBB1_139:                              # %vec.epilog.scalar.ph141
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $s2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	st.w	$zero, $a4, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	bnez	$a0, .LBB1_139
.LBB1_140:                              # %._crit_edge33
	st.d	$s2, $sp, 256                   # 8-byte Folded Spill
	st.d	$t7, $sp, 272                   # 8-byte Folded Spill
	st.d	$t4, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 440                   # 8-byte Folded Spill
	slli.d	$a0, $t1, 2
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	fldx.s	$fa0, $s3, $a0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	vldi	$vr2, -928
	fmul.d	$fa1, $fa1, $fa2
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a2, $fa1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	fst.s	$fa0, $a0, 0
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	move	$t3, $s3
	st.d	$a2, $sp, 496                   # 8-byte Folded Spill
	blez	$a2, .LBB1_153
# %bb.141:                              # %.lr.ph52
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	addi.d	$t4, $a0, 4
	ori	$a0, $zero, 2
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	slt	$a1, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	addi.d	$a1, $a2, 1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	addi.d	$s3, $a1, 4
	addi.d	$a1, $a0, -1
	st.d	$a1, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	addi.d	$t5, $a1, 4
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.d	$t7, $a1, 4
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	addi.d	$s8, $a1, 4
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	addi.d	$s4, $a1, 4
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	addi.d	$s0, $a1, 4
	slli.d	$a0, $a0, 2
	addi.d	$s2, $a0, -4
	ori	$s6, $zero, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	st.d	$t4, $sp, 416                   # 8-byte Folded Spill
	st.d	$t5, $sp, 344                   # 8-byte Folded Spill
	st.d	$t7, $sp, 336                   # 8-byte Folded Spill
	b	.LBB1_143
	.p2align	4, , 16
.LBB1_142:                              # %._crit_edge46
                                        #   in Loop: Header=BB1_143 Depth=1
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	fldx.s	$fa0, $t3, $a1
	addi.d	$s6, $s6, 1
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	move	$a0, $t3
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	beq	$s6, $a1, .LBB1_153
.LBB1_143:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_151 Depth 2
                                        #     Child Loop BB1_147 Depth 2
	addi.d	$s7, $s6, -1
	slli.d	$a1, $s7, 2
	ld.d	$s1, $sp, 512                   # 8-byte Folded Reload
	fldx.s	$fa0, $s1, $a1
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	fst.s	$fa0, $a0, 0
	move	$a0, $s5
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	move	$a3, $s6
	ld.d	$a4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 464                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t3, $s5
	slli.d	$a0, $s6, 2
	fldx.s	$fa0, $s1, $a0
	fst.s	$fa0, $s5, 0
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	alsl.d	$a1, $s6, $a1, 2
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	fst.s	$fa0, $a2, 0
	ld.d	$a2, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a2, $s7, $a2, 2
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	bne	$s6, $a3, .LBB1_149
# %bb.144:                              # %.lr.ph45.split.us.preheader
                                        #   in Loop: Header=BB1_143 Depth=1
	ld.d	$a3, $sp, 432                   # 8-byte Folded Reload
	fst.s	$fa0, $a3, 0
	ld.d	$s5, $sp, 488                   # 8-byte Folded Reload
	fld.s	$fa0, $s5, 0
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	fld.s	$fa1, $a3, 4
	move	$a3, $zero
	move	$a4, $zero
	move	$a6, $zero
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a5, $t3, 4
	ld.d	$t2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 336                   # 8-byte Folded Reload
	b	.LBB1_147
	.p2align	4, , 16
.LBB1_145:                              # %.lr.ph45.split.us._crit_edge
                                        #   in Loop: Header=BB1_147 Depth=2
	ldx.w	$a7, $t4, $a4
.LBB1_146:                              #   in Loop: Header=BB1_147 Depth=2
	fadd.s	$fa4, $fa0, $fa4
	fcmp.clt.s	$fcc0, $fa3, $fa4
	fsel	$fa4, $fa3, $fa4, $fcc0
	fadd.s	$fa3, $fa3, $fa5
	fcmp.cult.s	$fcc0, $fa3, $fa0
	fsel	$fa0, $fa3, $fa0, $fcc0
	movcf2gr	$t0, $fcc0
	masknez	$t1, $a3, $t0
	maskeqz	$a6, $a6, $t0
	fldx.s	$fa3, $a5, $a4
	fadd.s	$fa1, $fa1, $fa2
	fcmp.clt.s	$fcc0, $fa4, $fa1
	fsel	$fa1, $fa4, $fa1, $fcc0
	fadd.s	$fa1, $fa1, $fa3
	fstx.s	$fa1, $a5, $a4
	fstx.s	$fa1, $s8, $a4
	fldx.s	$fa1, $fp, $a4
	or	$a6, $a6, $t1
	stx.w	$a7, $t5, $a4
	stx.w	$a6, $t7, $a4
	fstx.s	$fa1, $s4, $a4
	fstx.s	$fa0, $s0, $a4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 1
	beq	$s2, $a4, .LBB1_142
.LBB1_147:                              # %.lr.ph45.split.us
                                        #   Parent Loop BB1_143 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa3, $s5, $a4
	fldx.s	$fa4, $t2, $a4
	fld.s	$fa6, $a1, 0
	fldx.s	$fa1, $fp, $a4
	fldx.s	$fa5, $s3, $a4
	fld.s	$fa2, $a2, 0
	fadd.s	$fa6, $fa3, $fa6
	fcmp.cle.s	$fcc0, $fa1, $fa6
	bceqz	$fcc0, .LBB1_145
# %bb.148:                              #   in Loop: Header=BB1_147 Depth=2
	fstx.s	$fa6, $fp, $a4
	stx.w	$s7, $t4, $a4
	move	$a7, $s7
	b	.LBB1_146
	.p2align	4, , 16
.LBB1_149:                              # %.lr.ph45.split.preheader
                                        #   in Loop: Header=BB1_143 Depth=1
	ld.d	$s5, $sp, 488                   # 8-byte Folded Reload
	fld.s	$fa0, $s5, 0
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	fld.s	$fa1, $a3, 4
	addi.d	$a3, $t3, 4
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	move	$a5, $s3
	ld.d	$a6, $sp, 384                   # 8-byte Folded Reload
	move	$a7, $fp
	ld.d	$t0, $sp, 416                   # 8-byte Folded Reload
	move	$t1, $s5
	b	.LBB1_151
	.p2align	4, , 16
.LBB1_150:                              #   in Loop: Header=BB1_151 Depth=2
	fadd.s	$fa4, $fa0, $fa4
	fcmp.clt.s	$fcc0, $fa2, $fa4
	fsel	$fa4, $fa2, $fa4, $fcc0
	fadd.s	$fa2, $fa2, $fa5
	fcmp.cle.s	$fcc0, $fa0, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa1, $fa1, $fa3
	fcmp.clt.s	$fcc0, $fa4, $fa1
	fsel	$fa1, $fa4, $fa1, $fcc0
	fadd.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $a3, 0
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	beqz	$a4, .LBB1_142
.LBB1_151:                              # %.lr.ph45.split
                                        #   Parent Loop BB1_143 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $t1, 0
	fld.s	$fa4, $a6, 0
	fld.s	$fa6, $a1, 0
	fld.s	$fa1, $a7, 0
	fld.s	$fa5, $a5, 0
	fld.s	$fa3, $a2, 0
	fadd.s	$fa6, $fa2, $fa6
	fcmp.cult.s	$fcc0, $fa6, $fa1
	bcnez	$fcc0, .LBB1_150
# %bb.152:                              #   in Loop: Header=BB1_151 Depth=2
	fst.s	$fa6, $a7, 0
	st.w	$s7, $t0, 0
	b	.LBB1_150
.LBB1_153:                              # %iter.check173
	move	$s7, $s5
	ori	$a7, $zero, 1
	ld.d	$s3, $sp, 512                   # 8-byte Folded Reload
	move	$a0, $s3
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	move	$a1, $s0
	ld.d	$s4, $sp, 448                   # 8-byte Folded Reload
	move	$a2, $s4
	ld.d	$s1, $sp, 376                   # 8-byte Folded Reload
	move	$a3, $s1
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 472                   # 8-byte Folded Reload
	move	$a5, $fp
	ld.d	$s2, $sp, 464                   # 8-byte Folded Reload
	move	$a6, $s2
	move	$s5, $t3
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$s6, $s5
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s0
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	move	$a3, $s4
	ld.d	$s0, $sp, 520                   # 8-byte Folded Reload
	move	$a4, $s0
	move	$a5, $fp
	move	$a6, $s2
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $s4, 31, 0
	ori	$a2, $zero, 3
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	bltu	$a2, $s4, .LBB1_204
# %bb.154:
	move	$a2, $zero
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 288                   # 8-byte Folded Reload
.LBB1_155:                              # %vec.epilog.scalar.ph191.preheader
	ld.d	$t4, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 272                   # 8-byte Folded Reload
	move	$t6, $s6
	move	$t7, $s7
.LBB1_156:                              # %vec.epilog.scalar.ph191.preheader
	slli.d	$a4, $a2, 2
	alsl.d	$a3, $a2, $s3, 2
	sub.d	$a1, $a1, $a2
	alsl.d	$a2, $a6, $a4, 2
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a4
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB1_157:                              # %vec.epilog.scalar.ph191
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
	bnez	$a1, .LBB1_157
.LBB1_158:                              # %iter.check223
	ld.d	$a1, $sp, 656
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 2
	ori	$a2, $zero, 1
	slt	$a3, $a2, $s1
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s1, $a3
	ori	$a4, $zero, 3
	or	$a2, $a3, $a2
	blt	$a4, $s1, .LBB1_208
# %bb.159:
	move	$a3, $zero
.LBB1_160:                              # %vec.epilog.scalar.ph241.preheader
	slli.d	$a5, $a3, 2
	alsl.d	$a4, $a3, $t6, 2
	sub.d	$a2, $a2, $a3
	alsl.d	$a3, $a7, $a5, 2
	add.d	$a3, $a3, $t2
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB1_161:                              # %vec.epilog.scalar.ph241
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
	bnez	$a2, .LBB1_161
.LBB1_162:                              # %.lr.ph62
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	slti	$a2, $s1, 1
	ori	$a1, $zero, 1
	masknez	$a3, $a1, $a2
	maskeqz	$a2, $s1, $a2
	or	$a2, $a2, $a3
	add.d	$a2, $a7, $a2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	sub.d	$a4, $a3, $a2
	addi.w	$a3, $a4, 0
	ori	$a5, $zero, 23
	addi.d	$a2, $a0, -4
	bgeu	$a3, $a5, .LBB1_212
.LBB1_163:
	move	$a0, $s1
.LBB1_164:                              # %scalar.ph271.preheader
	addi.d	$a3, $a0, 1
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 2
	alsl.d	$a5, $a0, $t6, 2
	alsl.d	$a0, $a0, $t1, 2
	addi.d	$a0, $a0, -4
	.p2align	4, , 16
.LBB1_165:                              # %scalar.ph271
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 0
	st.w	$s4, $a4, 0
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -4
	addi.d	$a5, $a5, -4
	addi.d	$a0, $a0, -4
	blt	$a1, $a3, .LBB1_165
.LBB1_166:                              # %.preheader8
	move	$fp, $zero
	st.d	$zero, $sp, 488                 # 8-byte Folded Spill
	st.d	$zero, $sp, 288                 # 8-byte Folded Spill
	addi.d	$a0, $s1, -1
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	bstrpick.d	$a2, $s0, 31, 0
	alsl.d	$a1, $a2, $t1, 2
	addi.d	$s3, $a1, -8
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a2, $sp, 336                   # 8-byte Folded Spill
	alsl.d	$a1, $a2, $a1, 2
	addi.d	$t8, $a1, -8
	addi.w	$a1, $t4, -1
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	slt	$a2, $a1, $t5
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $t5, $a2
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	move	$a2, $s1
	bstrpick.d	$s7, $t4, 31, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$s6, $a0, $a1, 2
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$s5, $a0, $a3, 2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	alsl.d	$a1, $a0, $a1, 2
	add.d	$s1, $t3, $a1
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a4, 2
	addi.d	$s2, $a0, 4
	add.d	$a0, $a1, $t2
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	fld.s	$fs0, $a1, %pc_lo12(.LCPI1_0)
	addi.d	$s8, $a0, 4
	addi.d	$a0, $a3, 8
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	addi.d	$a0, $a2, -2
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	st.d	$t8, $sp, 328                   # 8-byte Folded Spill
	b	.LBB1_169
	.p2align	4, , 16
.LBB1_167:                              #   in Loop: Header=BB1_169 Depth=1
	st.d	$a3, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
.LBB1_168:                              #   in Loop: Header=BB1_169 Depth=1
	movcf2gr	$a0, $fcc0
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	move	$t7, $ra
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB1_217
.LBB1_169:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_172 Depth 2
                                        #     Child Loop BB1_186 Depth 2
                                        #     Child Loop BB1_188 Depth 2
	addi.w	$a1, $s4, 0
	blez	$a1, .LBB1_195
# %bb.170:                              # %.lr.ph72
                                        #   in Loop: Header=BB1_169 Depth=1
	move	$a0, $t7
	slli.d	$a1, $s4, 2
	ld.d	$a2, $sp, 512                   # 8-byte Folded Reload
	fldx.s	$fa0, $a2, $a1
	addi.d	$a1, $s4, -1
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	addi.w	$s0, $a1, 0
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	fstx.s	$fa0, $t6, $a1
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	move	$a3, $s0
	ld.d	$a4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 464                   # 8-byte Folded Reload
	move	$a7, $zero
	st.d	$t7, $sp, 416                   # 8-byte Folded Spill
	st.d	$t6, $sp, 400                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 480                   # 8-byte Folded Reload
	slli.d	$a0, $s0, 2
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	move	$a1, $zero
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	fstx.s	$fa0, $t6, $a3
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a2, $a4, $ra, 2
	fldx.s	$fa0, $ra, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	fld.s	$fa1, $a3, 0
	addi.d	$a2, $a2, -4
	alsl.d	$a3, $a4, $t6, 2
	addi.d	$a3, $a3, -8
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a4, $s4, $a4, 2
	alsl.d	$a5, $s0, $t3, 2
	ld.d	$a6, $sp, 488                   # 8-byte Folded Reload
	xor	$a6, $s0, $a6
	sltui	$a6, $a6, 1
	xor	$a7, $s4, $s7
	sltui	$a7, $a7, 1
	or	$a6, $a7, $a6
	ld.d	$t0, $sp, 376                   # 8-byte Folded Reload
	move	$a7, $t0
	ld.d	$t5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 312                   # 8-byte Folded Reload
	b	.LBB1_172
	.p2align	4, , 16
.LBB1_171:                              #   in Loop: Header=BB1_172 Depth=2
	movcf2gr	$t1, $fcc0
	fldx.s	$fa2, $a3, $a1
	masknez	$t2, $a7, $t1
	maskeqz	$t0, $t0, $t1
	or	$t0, $t0, $t2
	fadd.s	$fa1, $fa1, $fa2
	fstx.s	$fa1, $a3, $a1
	addi.w	$a7, $a7, -1
	addi.d	$a1, $a1, -4
	blez	$a7, .LBB1_182
.LBB1_172:                              #   Parent Loop BB1_169 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $s8, $a1
	fldx.s	$fa2, $a2, $a1
	fadd.s	$fa1, $fa0, $fa1
	fldx.s	$fa4, $s3, $a1
	fld.s	$fa5, $a4, 0
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fldx.s	$fa3, $s1, $a1
	fadd.s	$fa5, $fa4, $fa5
	fcmp.cule.s	$fcc1, $fa5, $fa1
	bcnez	$fcc1, .LBB1_174
# %bb.173:                              #   in Loop: Header=BB1_172 Depth=2
	ldx.w	$t1, $t8, $a1
	fmov.s	$fa1, $fa5
	move	$t2, $a7
	fld.s	$fa5, $a5, 0
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa4
	bceqz	$fcc0, .LBB1_175
	b	.LBB1_176
	.p2align	4, , 16
.LBB1_174:                              #   in Loop: Header=BB1_172 Depth=2
	movcf2gr	$t1, $fcc0
	masknez	$t2, $a7, $t1
	maskeqz	$t1, $t0, $t1
	or	$t2, $t1, $t2
	move	$t1, $s4
	fld.s	$fa5, $a5, 0
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa4
	bcnez	$fcc0, .LBB1_176
.LBB1_175:                              #   in Loop: Header=BB1_172 Depth=2
	fstx.s	$fa5, $s3, $a1
	stx.w	$s4, $t8, $a1
.LBB1_176:                              #   in Loop: Header=BB1_172 Depth=2
	beqz	$a6, .LBB1_179
# %bb.177:                              #   in Loop: Header=BB1_172 Depth=2
	stx.w	$t1, $t7, $a1
	stx.w	$t2, $t5, $a1
	beq	$s0, $t4, .LBB1_180
.LBB1_178:                              #   in Loop: Header=BB1_172 Depth=2
	fadd.s	$fa2, $fa2, $fa3
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s4, $s7, .LBB1_171
	b	.LBB1_181
	.p2align	4, , 16
.LBB1_179:                              #   in Loop: Header=BB1_172 Depth=2
	bne	$s0, $t4, .LBB1_178
.LBB1_180:                              #   in Loop: Header=BB1_172 Depth=2
	fldx.s	$fa4, $s5, $a1
	fadd.s	$fa4, $fa1, $fa4
	fstx.s	$fa4, $s5, $a1
	fldx.s	$fa4, $s3, $a1
	fldx.s	$fa5, $s2, $a1
	fadd.s	$fa4, $fa4, $fa5
	fstx.s	$fa4, $s2, $a1
	fadd.s	$fa2, $fa2, $fa3
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s4, $s7, .LBB1_171
.LBB1_181:                              #   in Loop: Header=BB1_172 Depth=2
	fldx.s	$fa2, $s6, $a1
	fadd.s	$fa2, $fa0, $fa2
	fstx.s	$fa2, $s6, $a1
	b	.LBB1_171
	.p2align	4, , 16
.LBB1_182:                              # %._crit_edge73
                                        #   in Loop: Header=BB1_169 Depth=1
	fldx.s	$fa0, $a2, $a1
	fldx.s	$fa1, $t3, $a0
	fadd.s	$fa0, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fs0, $fa0
	fsel	$fs0, $fs0, $fa0, $fcc0
	bne	$s0, $t4, .LBB1_184
# %bb.183:                              #   in Loop: Header=BB1_169 Depth=1
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	fld.s	$fa0, $a0, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $a0, 0
.LBB1_184:                              #   in Loop: Header=BB1_169 Depth=1
	bne	$s4, $s7, .LBB1_168
# %bb.185:                              # %.lr.ph80.preheader
                                        #   in Loop: Header=BB1_169 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	fld.s	$fa0, $a0, 4
	move	$fp, $zero
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_186:                              # %.lr.ph80
                                        #   Parent Loop BB1_169 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc1, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc1
	movcf2gr	$a3, $fcc1
	masknez	$a4, $fp, $a3
	maskeqz	$a3, $a0, $a3
	or	$fp, $a3, $a4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.w	$a0, $a0, 1
	bnez	$a1, .LBB1_186
# %bb.187:                              # %.lr.ph86.preheader
                                        #   in Loop: Header=BB1_169 Depth=1
	move	$a0, $zero
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_188:                              # %.lr.ph86
                                        #   Parent Loop BB1_169 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc1, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc1
	movcf2gr	$a3, $fcc1
	masknez	$a4, $fp, $a3
	maskeqz	$a3, $a0, $a3
	or	$fp, $a3, $a4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.w	$a0, $a0, 1
	bnez	$a1, .LBB1_188
# %bb.189:                              # %._crit_edge87
                                        #   in Loop: Header=BB1_169 Depth=1
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	addi.w	$a3, $fp, -1
	blez	$fp, .LBB1_193
# %bb.190:                              #   in Loop: Header=BB1_169 Depth=1
	slli.d	$a1, $a3, 2
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	fldx.s	$fa1, $a2, $a1
	fcmp.cule.s	$fcc1, $fa1, $fa0
	move	$a1, $a3
	bcnez	$fcc1, .LBB1_192
# %bb.191:                              #   in Loop: Header=BB1_169 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	fmov.s	$fa0, $fa1
.LBB1_192:                              #   in Loop: Header=BB1_169 Depth=1
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	fldx.s	$fa1, $a2, $a0
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bceqz	$fcc1, .LBB1_167
	b	.LBB1_194
.LBB1_193:                              #   in Loop: Header=BB1_169 Depth=1
	move	$a1, $a3
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	fldx.s	$fa1, $a2, $a0
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bceqz	$fcc1, .LBB1_167
.LBB1_194:                              #   in Loop: Header=BB1_169 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	b	.LBB1_168
.LBB1_195:
	move	$a1, $fp
	ld.d	$s6, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	b	.LBB1_221
.LBB1_196:                              # %vector.memcheck58
	addi.d	$a4, $s3, 4
	addi.d	$a5, $t4, 4
	sltu	$a5, $a4, $a5
	sltu	$a6, $t4, $a2
	and	$a5, $a5, $a6
	bnez	$a5, .LBB1_135
# %bb.197:                              # %vector.memcheck58
	ld.d	$a6, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a5, $a0, $a6, 2
	addi.d	$a5, $a5, -4
	sltu	$a4, $a4, $a5
	sltu	$a5, $a6, $a2
	and	$a4, $a4, $a5
	bnez	$a4, .LBB1_135
# %bb.198:                              # %vector.main.loop.iter.check75
	ori	$a3, $zero, 17
	bge	$t7, $a3, .LBB1_273
# %bb.199:
	move	$a4, $zero
	b	.LBB1_277
.LBB1_200:                              # %vector.memcheck110
	alsl.d	$a4, $a0, $t3, 2
	addi.d	$a2, $a2, -4
	sltu	$a2, $fp, $a2
	sltu	$a5, $s3, $a4
	and	$a2, $a2, $a5
	bnez	$a2, .LBB1_138
# %bb.201:                              # %vector.memcheck110
	addi.d	$a2, $s1, 8
	sltu	$a2, $fp, $a2
	sltu	$a4, $s2, $a4
	and	$a2, $a2, $a4
	bnez	$a2, .LBB1_138
# %bb.202:                              # %vector.main.loop.iter.check127
	ori	$a2, $zero, 17
	bge	$t7, $a2, .LBB1_280
# %bb.203:
	move	$a2, $zero
	b	.LBB1_284
.LBB1_204:                              # %vector.memcheck159
	alsl.d	$a3, $a1, $s3, 2
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	add.d	$a2, $a6, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a4, $a2, 4
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a4
	sltu	$a2, $s3, $a2
	sltu	$a5, $a0, $a3
	and	$a5, $a2, $a5
	move	$a2, $zero
	ld.d	$a7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 288                   # 8-byte Folded Reload
	bnez	$a5, .LBB1_155
# %bb.205:                              # %vector.memcheck159
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	add.d	$a4, $a5, $a4
	sltu	$a4, $s3, $a4
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	sltu	$a3, $a5, $a3
	and	$a3, $a4, $a3
	ld.d	$t4, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 272                   # 8-byte Folded Reload
	move	$t6, $s6
	move	$t7, $s7
	bnez	$a3, .LBB1_156
# %bb.206:                              # %vector.main.loop.iter.check175
	ori	$a2, $zero, 16
	bgeu	$s4, $a2, .LBB1_287
# %bb.207:
	move	$a2, $zero
	b	.LBB1_291
.LBB1_208:                              # %vector.memcheck208
	alsl.d	$a4, $a2, $t6, 2
	add.d	$a3, $a7, $s1
	alsl.d	$a3, $a3, $t3, 2
	addi.d	$a3, $a3, 4
	sltu	$a3, $t6, $a3
	sltu	$a5, $a0, $a4
	and	$a5, $a3, $a5
	move	$a3, $zero
	bnez	$a5, .LBB1_160
# %bb.209:                              # %vector.memcheck208
	ld.d	$a5, $sp, 360                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 4
	alsl.d	$a6, $a2, $a5, 2
	sltu	$a6, $t6, $a6
	sltu	$a4, $a5, $a4
	and	$a4, $a6, $a4
	bnez	$a4, .LBB1_160
# %bb.210:                              # %vector.main.loop.iter.check225
	ori	$a3, $zero, 16
	bge	$s1, $a3, .LBB1_294
# %bb.211:
	move	$a3, $zero
	b	.LBB1_298
.LBB1_212:                              # %vector.memcheck258
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ld.d	$a5, $sp, 504                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a4
	add.d	$a4, $a5, $t1
	addi.d	$a4, $a4, -4
	alsl.d	$a6, $s1, $t1, 2
	add.d	$a5, $t6, $a5
	alsl.d	$a7, $s1, $t6, 2
	addi.d	$a7, $a7, 4
	sltu	$a7, $a4, $a7
	sltu	$a5, $a5, $a6
	and	$a5, $a7, $a5
	bnez	$a5, .LBB1_163
# %bb.213:                              # %vector.memcheck258
	sltu	$a0, $a4, $a0
	sltu	$a4, $a2, $a6
	and	$a4, $a0, $a4
	move	$a0, $s1
	bnez	$a4, .LBB1_164
# %bb.214:                              # %vector.ph273
	bstrpick.d	$a0, $a3, 31, 0
	addi.d	$a3, $a0, 1
	bstrpick.d	$a0, $a3, 32, 3
	slli.d	$a4, $a0, 3
	sub.d	$a0, $s1, $a4
	xvreplgr2vr.w	$xr0, $s4
	xvldrepl.w	$xr1, $a2, 0
	ld.d	$a5, $sp, 504                   # 8-byte Folded Reload
	addi.d	$a7, $a5, -28
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a7
	addi.d	$a6, $a6, -32
	add.d	$a7, $t6, $a7
	move	$t0, $a4
	.p2align	4, , 16
.LBB1_215:                              # %vector.body278
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a7, 0
	xvfadd.s	$xr2, $xr2, $xr1
	xvst	$xr2, $a6, 0
	xvst	$xr0, $a5, 0
	addi.d	$t0, $t0, -8
	addi.d	$a5, $a5, -32
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB1_215
# %bb.216:                              # %middle.block287
	bne	$a3, $a4, .LBB1_164
	b	.LBB1_166
.LBB1_217:
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	beqz	$fp, .LBB1_220
# %bb.218:
	ld.d	$s2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 192                   # 8-byte Folded Reload
	blt	$s5, $fp, .LBB1_222
# %bb.219:
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	slli.d	$a0, $s5, 2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$t4, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	move	$s6, $s0
	b	.LBB1_222
.LBB1_220:
	move	$s5, $zero
	ld.d	$t4, $sp, 424                   # 8-byte Folded Reload
	addi.w	$s6, $t4, -1
	ori	$a1, $zero, 1
.LBB1_221:                              # %.loopexit
	ld.d	$s2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 512                   # 8-byte Folded Reload
.LBB1_222:                              # %.loopexit
	st.d	$a1, $sp, 520                   # 8-byte Folded Spill
	st.d	$t4, $sp, 496                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	add.w	$a7, $s6, $s1
	add.w	$a0, $s5, $s2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a1, $sp, 40
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a1, $sp, 32
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a1, $sp, 24
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16
	st.d	$a0, $sp, 8
	st.d	$s2, $sp, 0
	move	$a0, $s8
	move	$a1, $s4
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	move	$s2, $s3
	move	$a3, $s3
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	move	$a6, $s1
	pcaddu18i	$ra, %call36(MSalignmm_rec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $a0, 0
	fmov.s	$fs0, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	nor	$a1, $s5, $zero
	ld.d	$a2, $sp, 520                   # 8-byte Folded Reload
	add.w	$s0, $a2, $a1
	blez	$s0, .LBB1_230
# %bb.223:                              # %.preheader6.preheader
	move	$s3, $s5
	move	$s7, $a0
	st.d	$s6, $sp, 192                   # 8-byte Folded Spill
	ori	$a1, $zero, 45
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $s5
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s5, $s0
	add.w	$fp, $s0, $s7
	blez	$s8, .LBB1_226
# %bb.224:                              # %.lr.ph92
	move	$s1, $s8
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_225:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	stx.b	$zero, $a0, $fp
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB1_225
.LBB1_226:                              # %.preheader5
	ld.d	$s7, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 304                   # 8-byte Folded Reload
	move	$s5, $s3
	blez	$s4, .LBB1_229
# %bb.227:                              # %.lr.ph94
	move	$s1, $s4
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_228:                              # =>This Inner Loop Header: Depth=1
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
	bnez	$s1, .LBB1_228
.LBB1_229:                              # %._crit_edge95
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a0, $s5, $a0, 2
	fld.s	$fa0, $a0, 4
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	fld.s	$fa1, $a0, -4
	ld.d	$s3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $s3, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fs0, $fs0, $fa0
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 192                   # 8-byte Folded Reload
	b	.LBB1_231
.LBB1_230:
	ld.d	$s7, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
.LBB1_231:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	nor	$a1, $s6, $zero
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	add.w	$s0, $a2, $a1
	blez	$s0, .LBB1_239
# %bb.232:                              # %.preheader4.preheader
	move	$s1, $a0
	ori	$a1, $zero, 45
	move	$a0, $s5
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s5, $s0
	add.w	$fp, $s0, $s1
	blez	$s8, .LBB1_235
# %bb.233:                              # %.lr.ph99
	move	$s1, $s8
	ld.d	$s2, $sp, 240                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_234:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	ld.d	$a0, $s3, 0
	add.d	$a1, $a1, $s7
	add.d	$a1, $a1, $s6
	addi.d	$a1, $a1, 1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	stx.b	$zero, $a0, $fp
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, -1
	addi.d	$s3, $s3, 8
	bnez	$s1, .LBB1_234
.LBB1_235:                              # %.preheader3
	ld.d	$s1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	blez	$s4, .LBB1_238
# %bb.236:                              # %.lr.ph101
	move	$s0, $s4
	.p2align	4, , 16
.LBB1_237:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	stx.b	$zero, $a0, $fp
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	bnez	$s0, .LBB1_237
.LBB1_238:                              # %._crit_edge102
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a0, $s6, $a0, 2
	fld.s	$fa0, $a0, 4
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	fld.s	$fa1, $a0, -4
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fs0, $fs0, $fa0
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	b	.LBB1_240
.LBB1_239:
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
.LBB1_240:
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	blez	$s8, .LBB1_248
# %bb.241:                              # %.lr.ph105
	ori	$a1, $zero, 8
	bgeu	$s8, $a1, .LBB1_243
# %bb.242:
	move	$a1, $zero
	b	.LBB1_246
.LBB1_243:                              # %vector.ph292
	bstrpick.d	$a1, $s8, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $fp, 32
	xvreplgr2vr.d	$xr0, $a0
	move	$a3, $a1
	.p2align	4, , 16
.LBB1_244:                              # %vector.body295
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a2, -32
	xvld	$xr2, $a2, 0
	xvadd.d	$xr1, $xr1, $xr0
	xvadd.d	$xr2, $xr2, $xr0
	xvst	$xr1, $a2, -32
	xvst	$xr2, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB1_244
# %bb.245:                              # %middle.block300
	beq	$a1, $s8, .LBB1_248
.LBB1_246:                              # %scalar.ph290.preheader
	alsl.d	$a2, $a1, $fp, 3
	sub.d	$a1, $s8, $a1
	.p2align	4, , 16
.LBB1_247:                              # %scalar.ph290
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	add.d	$a3, $a3, $a0
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB1_247
.LBB1_248:                              # %.preheader2
	ld.d	$a4, $sp, 496                   # 8-byte Folded Reload
	blez	$s4, .LBB1_256
# %bb.249:                              # %.lr.ph107
	ori	$a1, $zero, 8
	bgeu	$s4, $a1, .LBB1_251
# %bb.250:
	move	$a1, $zero
	b	.LBB1_254
.LBB1_251:                              # %vector.ph305
	bstrpick.d	$a1, $s4, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $s3, 32
	xvreplgr2vr.d	$xr0, $a0
	move	$a3, $a1
	.p2align	4, , 16
.LBB1_252:                              # %vector.body308
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a2, -32
	xvld	$xr2, $a2, 0
	xvadd.d	$xr1, $xr1, $xr0
	xvadd.d	$xr2, $xr2, $xr0
	xvst	$xr1, $a2, -32
	xvst	$xr2, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB1_252
# %bb.253:                              # %middle.block313
	beq	$a1, $s4, .LBB1_256
.LBB1_254:                              # %scalar.ph303.preheader
	alsl.d	$a2, $a1, $s3, 3
	sub.d	$a1, $s4, $a1
	.p2align	4, , 16
.LBB1_255:                              # %scalar.ph303
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	add.d	$a3, $a3, $a0
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB1_255
.LBB1_256:                              # %._crit_edge108
	add.w	$a6, $a4, $s7
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	add.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a1, $sp, 40
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a1, $sp, 32
	st.d	$s3, $sp, 24
	st.d	$fp, $sp, 16
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	st.d	$a0, $sp, 0
	move	$a0, $s8
	move	$a1, $s4
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	move	$a3, $s2
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MSalignmm_rec)
	jirl	$ra, $ra, 0
	fadd.s	$fs0, $fs0, $fa0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_257:                              # %common.ret.sink.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_258:                              # %common.ret
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 528                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 600                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 608                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 616                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 624
	ret
.LBB1_259:                              # %vector.ph386
	move	$a2, $a1
	xvldrepl.w	$xr0, $s6, 0
	bstrins.d	$a2, $zero, 3, 0
	addi.d	$a3, $s8, 32
	addi.d	$a4, $t7, 36
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_260:                              # %vector.body389
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a3, -32
	xvld	$xr2, $a3, 0
	xvld	$xr3, $a4, -32
	xvld	$xr4, $a4, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_260
# %bb.261:                              # %middle.block398
	beq	$a1, $a2, .LBB1_39
# %bb.262:                              # %vec.epilog.iter.check403
	andi	$a3, $a1, 12
	beqz	$a3, .LBB1_309
.LBB1_263:                              # %vec.epilog.ph402
	move	$a3, $a1
	bstrins.d	$a3, $zero, 1, 0
	ori	$a4, $zero, 1
	move	$s1, $a1
	bstrins.d	$s1, $a4, 1, 0
	vldrepl.w	$vr0, $s6, 0
	slli.d	$a4, $a2, 2
	alsl.d	$a4, $a7, $a4, 2
	add.d	$a4, $a6, $a4
	alsl.d	$a5, $a2, $t7, 2
	addi.d	$a5, $a5, 4
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB1_264:                              # %vec.epilog.vector.body408
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vld	$vr2, $a5, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a5, 0
	addi.d	$a4, $a4, 16
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	bnez	$a2, .LBB1_264
# %bb.265:                              # %vec.epilog.middle.block416
	bne	$a1, $a3, .LBB1_37
	b	.LBB1_39
.LBB1_266:                              # %vector.ph438
	move	$a4, $a1
	bstrins.d	$a4, $zero, 3, 0
	xvldrepl.w	$xr0, $a2, 0
	addi.d	$a3, $t7, 32
	addi.d	$a5, $t2, 36
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 36
	xvrepli.b	$xr1, 0
	move	$a7, $a4
	.p2align	4, , 16
.LBB1_267:                              # %vector.body441
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvfadd.s	$xr2, $xr2, $xr0
	xvfadd.s	$xr3, $xr3, $xr0
	xvst	$xr2, $a5, -32
	xvst	$xr3, $a5, 0
	xvst	$xr1, $a6, -32
	xvst	$xr1, $a6, 0
	addi.d	$a7, $a7, -16
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB1_267
# %bb.268:                              # %middle.block448
	beq	$a1, $a4, .LBB1_42
# %bb.269:                              # %vec.epilog.iter.check453
	andi	$a3, $a1, 12
	beqz	$a3, .LBB1_310
.LBB1_270:                              # %vec.epilog.ph452
	move	$a5, $a1
	bstrins.d	$a5, $zero, 1, 0
	ori	$a6, $zero, 1
	move	$a3, $a1
	bstrins.d	$a3, $a6, 1, 0
	vldrepl.w	$vr0, $a2, 0
	slli.d	$a7, $a4, 2
	alsl.d	$a6, $a4, $t7, 2
	addi.d	$t0, $a7, 4
	add.d	$a7, $t2, $t0
	ld.d	$t3, $sp, 408                   # 8-byte Folded Reload
	add.d	$t0, $t3, $t0
	sub.d	$a4, $a4, $a5
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB1_271:                              # %vec.epilog.vector.body458
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $a7, 0
	vst	$vr1, $t0, 0
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	addi.d	$a4, $a4, 4
	addi.d	$t0, $t0, 16
	bnez	$a4, .LBB1_271
# %bb.272:                              # %vec.epilog.middle.block465
	bne	$a1, $a5, .LBB1_40
	b	.LBB1_42
.LBB1_273:                              # %vector.ph76
	move	$a4, $a1
	bstrins.d	$a4, $zero, 3, 0
	xvldrepl.w	$xr0, $t4, 0
	alsl.d	$a3, $t0, $t5, 2
	addi.d	$a3, $a3, 32
	addi.d	$a5, $s3, 36
	move	$a6, $a4
	.p2align	4, , 16
.LBB1_274:                              # %vector.body79
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a3, -32
	xvld	$xr2, $a3, 0
	xvld	$xr3, $a5, -32
	xvld	$xr4, $a5, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a5, -32
	xvst	$xr2, $a5, 0
	addi.d	$a3, $a3, 64
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB1_274
# %bb.275:                              # %middle.block88
	beq	$a1, $a4, .LBB1_137
# %bb.276:                              # %vec.epilog.iter.check93
	andi	$a3, $a1, 12
	beqz	$a3, .LBB1_311
.LBB1_277:                              # %vec.epilog.ph92
	move	$a5, $a1
	bstrins.d	$a5, $zero, 1, 0
	ori	$a6, $zero, 1
	move	$a3, $a1
	bstrins.d	$a3, $a6, 1, 0
	vldrepl.w	$vr0, $t4, 0
	slli.d	$a6, $a4, 2
	alsl.d	$a6, $t0, $a6, 2
	add.d	$a6, $t5, $a6
	alsl.d	$a7, $a4, $s3, 2
	addi.d	$a7, $a7, 4
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB1_278:                              # %vec.epilog.vector.body98
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a6, 0
	vld	$vr2, $a7, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a7, 0
	addi.d	$a6, $a6, 16
	addi.d	$a4, $a4, 4
	addi.d	$a7, $a7, 16
	bnez	$a4, .LBB1_278
# %bb.279:                              # %vec.epilog.middle.block106
	bne	$a1, $a5, .LBB1_135
	b	.LBB1_137
.LBB1_280:                              # %vector.ph128
	move	$a2, $a1
	bstrins.d	$a2, $zero, 3, 0
	xvldrepl.w	$xr0, $s2, 0
	addi.d	$a3, $s3, 32
	addi.d	$a4, $t3, 36
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 36
	xvrepli.b	$xr1, 0
	move	$a6, $a2
	.p2align	4, , 16
.LBB1_281:                              # %vector.body131
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvfadd.s	$xr2, $xr2, $xr0
	xvfadd.s	$xr3, $xr3, $xr0
	xvst	$xr2, $a4, -32
	xvst	$xr3, $a4, 0
	xvst	$xr1, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a6, $a6, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB1_281
# %bb.282:                              # %middle.block138
	beq	$a1, $a2, .LBB1_140
# %bb.283:                              # %vec.epilog.iter.check143
	andi	$a3, $a1, 12
	beqz	$a3, .LBB1_312
.LBB1_284:                              # %vec.epilog.ph142
	move	$a4, $a1
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a1
	bstrins.d	$a3, $a5, 1, 0
	vldrepl.w	$vr0, $s2, 0
	slli.d	$a6, $a2, 2
	alsl.d	$a5, $a2, $s3, 2
	addi.d	$a7, $a6, 4
	add.d	$a6, $t3, $a7
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
	sub.d	$a2, $a2, $a4
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB1_285:                              # %vec.epilog.vector.body148
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a5, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $a6, 0
	vst	$vr1, $a7, 0
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	addi.d	$a2, $a2, 4
	addi.d	$a7, $a7, 16
	bnez	$a2, .LBB1_285
# %bb.286:                              # %vec.epilog.middle.block155
	bne	$a1, $a4, .LBB1_138
	b	.LBB1_140
.LBB1_287:                              # %vector.ph176
	bstrpick.d	$a2, $a1, 30, 4
	xvldrepl.w	$xr0, $a0, 0
	slli.d	$a2, $a2, 4
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 36
	addi.d	$a4, $s3, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_288:                              # %vector.body179
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a3, -32
	xvld	$xr2, $a3, 0
	xvld	$xr3, $a4, -32
	xvld	$xr4, $a4, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_288
# %bb.289:                              # %middle.block188
	beq	$a2, $a1, .LBB1_158
# %bb.290:                              # %vec.epilog.iter.check193
	andi	$a3, $a1, 12
	beqz	$a3, .LBB1_156
.LBB1_291:                              # %vec.epilog.ph192
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	vldrepl.w	$vr0, $a0, 0
	slli.d	$a3, $a5, 2
	alsl.d	$a3, $a6, $a3, 2
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a4
	addi.d	$a3, $a3, 4
	sub.d	$a4, $a5, $a2
	alsl.d	$a5, $a5, $s3, 2
	.p2align	4, , 16
.LBB1_292:                              # %vec.epilog.vector.body198
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, 0
	vld	$vr2, $a5, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a5, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB1_292
# %bb.293:                              # %vec.epilog.middle.block205
	bne	$a2, $a1, .LBB1_156
	b	.LBB1_158
.LBB1_294:                              # %vector.ph226
	bstrpick.d	$a3, $a2, 30, 4
	xvldrepl.w	$xr0, $a0, 0
	slli.d	$a3, $a3, 4
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 36
	addi.d	$a5, $t6, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_295:                              # %vector.body229
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
	bnez	$a6, .LBB1_295
# %bb.296:                              # %middle.block238
	beq	$a3, $a2, .LBB1_162
# %bb.297:                              # %vec.epilog.iter.check243
	andi	$a4, $a2, 12
	beqz	$a4, .LBB1_160
.LBB1_298:                              # %vec.epilog.ph242
	move	$a6, $a3
	bstrpick.d	$a3, $a2, 30, 2
	slli.d	$a3, $a3, 2
	vldrepl.w	$vr0, $a0, 0
	slli.d	$a4, $a6, 2
	alsl.d	$a4, $a7, $a4, 2
	add.d	$a4, $a4, $t2
	addi.d	$a4, $a4, 4
	sub.d	$a5, $a6, $a3
	alsl.d	$a6, $a6, $t6, 2
	.p2align	4, , 16
.LBB1_299:                              # %vec.epilog.vector.body248
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vld	$vr2, $a6, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a6, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB1_299
# %bb.300:                              # %vec.epilog.middle.block255
	bne	$a3, $a2, .LBB1_160
	b	.LBB1_162
.LBB1_301:                              # %vector.ph334
	move	$a3, $a1
	xvldrepl.w	$xr0, $t5, 0
	bstrins.d	$a3, $zero, 3, 0
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 32
	ld.d	$a4, $sp, 512                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 36
	move	$a5, $a3
	.p2align	4, , 16
.LBB1_302:                              # %vector.body337
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
	bnez	$a5, .LBB1_302
# %bb.303:                              # %middle.block346
	beq	$a1, $a3, .LBB1_35
# %bb.304:                              # %vec.epilog.iter.check351
	andi	$a2, $a1, 12
	beqz	$a2, .LBB1_313
.LBB1_305:                              # %vec.epilog.ph350
	move	$a4, $a1
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a2, $a1
	bstrins.d	$a2, $a5, 1, 0
	vldrepl.w	$vr0, $t5, 0
	slli.d	$a5, $a3, 2
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a5, $a6, $a5, 2
	ld.d	$a6, $sp, 432                   # 8-byte Folded Reload
	add.d	$a5, $a6, $a5
	ld.d	$a6, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a6, $a3, $a6, 2
	addi.d	$a6, $a6, 4
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB1_306:                              # %vec.epilog.vector.body356
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, 0
	vld	$vr2, $a6, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a6, 0
	addi.d	$a5, $a5, 16
	addi.d	$a3, $a3, 4
	addi.d	$a6, $a6, 16
	bnez	$a3, .LBB1_306
# %bb.307:                              # %vec.epilog.middle.block364
	bne	$a1, $a4, .LBB1_33
	b	.LBB1_35
.LBB1_308:
	addi.d	$t0, $a2, 1
	b	.LBB1_132
.LBB1_309:
	addi.d	$s1, $a2, 1
	b	.LBB1_37
.LBB1_310:
	addi.d	$a3, $a4, 1
	b	.LBB1_40
.LBB1_311:
	addi.d	$a3, $a4, 1
	b	.LBB1_135
.LBB1_312:
	addi.d	$a3, $a2, 1
	b	.LBB1_138
.LBB1_313:
	addi.d	$a2, $a3, 1
	b	.LBB1_33
.Lfunc_end1:
	.size	MSalignmm_rec, .Lfunc_end1-MSalignmm_rec
                                        # -- End function
	.p2align	5                               # -- Begin function match_calc
	.type	match_calc,@function
match_calc:                             # @match_calc
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$fp, $sp, 168                   # 8-byte Folded Spill
	st.d	$s0, $sp, 160                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 120                  # 8-byte Folded Spill
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
	fld.s	$fa1, $a1, 40
	fld.s	$fa2, $a1, 44
	fld.s	$fa3, $a1, 48
	fld.s	$fa4, $a1, 52
	fld.s	$fa5, $a1, 56
	fld.s	$fa6, $a1, 60
	fld.s	$fa7, $a1, 64
	fld.s	$ft0, $a1, 0
	fld.s	$ft1, $a1, 4
	fld.s	$ft2, $a1, 8
	fld.s	$ft3, $a1, 12
	fld.s	$ft4, $a1, 16
	fld.s	$ft5, $a1, 20
	fld.s	$ft6, $a1, 24
	fld.s	$ft7, $a1, 28
	fld.s	$ft8, $a1, 32
	fld.s	$ft9, $a1, 36
	fld.s	$ft10, $a1, 68
	fld.s	$ft11, $a1, 72
	fld.s	$ft12, $a1, 76
	fld.s	$ft13, $a1, 80
	fld.s	$ft14, $a1, 84
	fld.s	$ft15, $a1, 88
	fld.s	$fs0, $a1, 92
	fld.s	$fs1, $a1, 96
	fld.s	$fs2, $a1, 100
	pcalau12i	$a1, %got_pc_hi20(n_dis)
	ld.d	$a1, $a1, %got_pc_lo12(n_dis)
	move	$a2, $zero
	movgr2fr.w	$fa0, $zero
	addi.d	$a3, $sp, 16
	ori	$a7, $zero, 104
	.p2align	4, , 16
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$t1, $a1, $a2
	add.d	$t0, $a1, $a2
	ld.w	$t2, $t0, 104
	movgr2fr.w	$fs3, $t1
	ffint.s.w	$fs3, $fs3
	fmadd.s	$fs3, $fs3, $ft0, $fa0
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 208
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft1, $fs3
	ld.w	$t2, $t0, 312
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft2, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 416
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft3, $fs3
	ld.w	$t2, $t0, 520
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft4, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 624
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft5, $fs3
	ld.w	$t2, $t0, 728
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft6, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 832
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft7, $fs3
	ld.w	$t2, $t0, 936
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft8, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1040
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft9, $fs3
	ld.w	$t2, $t0, 1144
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa1, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1248
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa2, $fs3
	ld.w	$t2, $t0, 1352
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa3, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1456
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa4, $fs3
	ld.w	$t2, $t0, 1560
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa5, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1664
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa6, $fs3
	ld.w	$t2, $t0, 1768
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa7, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1872
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft10, $fs3
	ld.w	$t2, $t0, 1976
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft11, $fs3
	movgr2fr.w	$fs4, $t2
	ldptr.w	$t1, $t0, 2080
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft12, $fs3
	ldptr.w	$t2, $t0, 2184
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft13, $fs3
	movgr2fr.w	$fs4, $t2
	ldptr.w	$t1, $t0, 2288
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft14, $fs3
	ldptr.w	$t2, $t0, 2392
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft15, $fs3
	movgr2fr.w	$fs4, $t2
	ldptr.w	$t1, $t0, 2496
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fs0, $fs3
	ldptr.w	$t0, $t0, 2600
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fs1, $fs3
	movgr2fr.w	$fs4, $t0
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fs2, $fs3
	fstx.s	$fs3, $a2, $a3
	addi.d	$a2, $a2, 4
	bne	$a2, $a7, .LBB2_9
# %bb.10:                               # %.preheader
	beqz	$a4, .LBB2_16
# %bb.11:
	addi.d	$a1, $sp, 16
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_12:                               # %._crit_edge
                                        #   in Loop: Header=BB2_13 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a0, $a0, 4
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	beqz	$a4, .LBB2_16
.LBB2_13:                               # %.lr.ph74
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
	ld.d	$a7, $a6, 0
	ld.wu	$a2, $a7, 0
	addi.w	$a3, $a2, 0
	st.w	$zero, $a0, 0
	bltz	$a3, .LBB2_12
# %bb.14:                               # %.lr.ph
                                        #   in Loop: Header=BB2_13 Depth=1
	ld.d	$a3, $a5, 0
	addi.d	$a7, $a7, 4
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB2_15:                               #   Parent Loop BB2_13 Depth=1
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
	bgez	$t0, .LBB2_15
	b	.LBB2_12
.LBB2_16:                               # %._crit_edge75
	fld.d	$fs4, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 152                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
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
