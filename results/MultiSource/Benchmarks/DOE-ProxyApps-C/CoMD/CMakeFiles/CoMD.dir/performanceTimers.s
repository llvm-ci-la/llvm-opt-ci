	.file	"performanceTimers.c"
	.text
	.globl	profileStart                    # -- Begin function profileStart
	.p2align	5
	.type	profileStart,@function
profileStart:                           # @profileStart
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0
	ld.d	$a1, $sp, 8
	lu12i.w	$a2, 244
	ori	$a2, $a2, 576
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $fp, 31, 0
	slli.d	$a2, $a1, 6
	alsl.d	$a1, $a1, $a2, 3
	pcalau12i	$a2, %pc_hi20(perfTimer)
	addi.d	$a2, $a2, %pc_lo12(perfTimer)
	stx.d	$a0, $a2, $a1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	profileStart, .Lfunc_end0-profileStart
                                        # -- End function
	.globl	profileStop                     # -- Begin function profileStop
	.p2align	5
	.type	profileStop,@function
profileStop:                            # @profileStop
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 6
	alsl.d	$fp, $a0, $a1, 3
	pcalau12i	$a0, %pc_hi20(perfTimer)
	addi.d	$s0, $a0, %pc_lo12(perfTimer)
	add.d	$s1, $s0, $fp
	ld.d	$a0, $s1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $s1, 16
	addi.d	$a0, $sp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0
	lu12i.w	$a1, 244
	ori	$a1, $a1, 576
	ld.d	$a2, $sp, 8
	mul.d	$a0, $a0, $a1
	ldx.d	$a1, $s0, $fp
	ld.d	$a3, $s1, 8
	add.d	$a0, $a0, $a2
	ld.d	$a2, $s1, 24
	sub.d	$a0, $a0, $a1
	add.d	$a1, $a3, $a0
	st.d	$a1, $s1, 8
	add.d	$a0, $a2, $a0
	st.d	$a0, $s1, 24
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	profileStop, .Lfunc_end1-profileStop
                                        # -- End function
	.globl	getElapsedTime                  # -- Begin function getElapsedTime
	.p2align	5
	.type	getElapsedTime,@function
getElapsedTime:                         # @getElapsedTime
# %bb.0:
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 6
	alsl.d	$a0, $a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(perfTimer)
	addi.d	$a1, $a1, %pc_lo12(perfTimer)
	add.d	$a0, $a1, $a0
	ld.d	$a1, $a0, 24
	srli.d	$a2, $a1, 32
	lu52i.d	$a3, $zero, 1107
	or	$a2, $a2, $a3
	movgr2fr.d	$fa0, $a2
	lu12i.w	$a2, 256
	lu52i.d	$a2, $a2, 1107
	movgr2fr.d	$fa1, $a2
	fsub.d	$fa0, $fa0, $fa1
	lu12i.w	$a2, 275200
	bstrins.d	$a1, $a2, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	lu12i.w	$a1, -390306
	ori	$a1, $a1, 3469
	lu32i.d	$a1, 50935
	lu52i.d	$a1, $a1, 1003
	movgr2fr.d	$fa1, $a1
	fmul.d	$fa0, $fa0, $fa1
	st.d	$zero, $a0, 24
	ret
.Lfunc_end2:
	.size	getElapsedTime, .Lfunc_end2-getElapsedTime
                                        # -- End function
	.globl	printPerformanceResults         # -- Begin function printPerformanceResults
	.p2align	5
	.type	printPerformanceResults,@function
printPerformanceResults:                # @printPerformanceResults
# %bb.0:
	addi.d	$sp, $sp, -640
	st.d	$ra, $sp, 632                   # 8-byte Folded Spill
	st.d	$fp, $sp, 624                   # 8-byte Folded Spill
	st.d	$s0, $sp, 616                   # 8-byte Folded Spill
	st.d	$s1, $sp, 608                   # 8-byte Folded Spill
	st.d	$s2, $sp, 600                   # 8-byte Folded Spill
	st.d	$s3, $sp, 592                   # 8-byte Folded Spill
	st.d	$s4, $sp, 584                   # 8-byte Folded Spill
	st.d	$s5, $sp, 576                   # 8-byte Folded Spill
	st.d	$s6, $sp, 568                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 560                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 552                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 544                  # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(perfTimer)
	addi.d	$s4, $a0, %pc_lo12(perfTimer)
	ld.d	$a0, $s4, 8
	srli.d	$a1, $a0, 32
	lu52i.d	$s2, $zero, 1107
	or	$a1, $a1, $s2
	movgr2fr.d	$fa0, $a1
	lu12i.w	$a1, 256
	lu52i.d	$a1, $a1, 1107
	movgr2fr.d	$fs0, $a1
	fsub.d	$fa0, $fa0, $fs0
	lu12i.w	$s3, 275200
	bstrins.d	$a0, $s3, 63, 32
	ld.d	$a1, $s4, 80
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 456
	srli.d	$a0, $a1, 32
	or	$a0, $a0, $s2
	movgr2fr.d	$fa0, $a0
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	ld.d	$a0, $s4, 152
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 464
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a0, $s3, 63, 32
	ld.d	$a1, $s4, 224
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 472
	srli.d	$a0, $a1, 32
	or	$a0, $a0, $s2
	movgr2fr.d	$fa0, $a0
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	ld.d	$a0, $s4, 296
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 480
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a0, $s3, 63, 32
	ld.d	$a1, $s4, 368
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 488
	srli.d	$a0, $a1, 32
	or	$a0, $a0, $s2
	movgr2fr.d	$fa0, $a0
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	ld.d	$a0, $s4, 440
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 496
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a0, $s3, 63, 32
	ld.d	$a1, $s4, 512
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 504
	srli.d	$a0, $a1, 32
	or	$a0, $a0, $s2
	movgr2fr.d	$fa0, $a0
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	ld.d	$a0, $s4, 584
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 512
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a0, $s3, 63, 32
	ld.d	$a1, $s4, 656
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 520
	srli.d	$a0, $a1, 32
	or	$a0, $a0, $s2
	movgr2fr.d	$fa0, $a0
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	ld.d	$a0, $s4, 728
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 528
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 536
	addi.d	$a0, $sp, 456
	addi.d	$a1, $sp, 368
	ori	$a2, $zero, 11
	pcaddu18i	$ra, %call36(addDoubleParallel)
	jirl	$ra, $ra, 0
	fld.d	$fs1, $sp, 368
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	fld.d	$fs2, $sp, 376
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs1, $fa0
	fst.d	$fa0, $s4, 56
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	fld.d	$fs1, $sp, 384
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs2, $fa0
	fst.d	$fa0, $s4, 128
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	fld.d	$fs2, $sp, 392
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs1, $fa0
	fst.d	$fa0, $s4, 200
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	fld.d	$fs1, $sp, 400
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs2, $fa0
	fst.d	$fa0, $s4, 272
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	fld.d	$fs2, $sp, 408
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs1, $fa0
	fst.d	$fa0, $s4, 344
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	fld.d	$fs1, $sp, 416
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs2, $fa0
	fst.d	$fa0, $s4, 416
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	fld.d	$fs2, $sp, 424
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs1, $fa0
	fst.d	$fa0, $s4, 488
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	fld.d	$fs1, $sp, 432
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs2, $fa0
	fst.d	$fa0, $s4, 560
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	fld.d	$fs2, $sp, 440
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs1, $fa0
	fst.d	$fa0, $s4, 632
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	fld.d	$fs1, $sp, 448
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs2, $fa0
	fst.d	$fa0, $s4, 704
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ld.d	$a0, $s4, 8
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs1, $fa0
	fst.d	$fa0, $s4, 776
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 192
	pcaddu18i	$ra, %call36(getMyRank)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 80
	st.w	$a0, $sp, 200
	srli.d	$a0, $a1, 32
	or	$a0, $a0, $s2
	movgr2fr.d	$fa0, $a0
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 208
	pcaddu18i	$ra, %call36(getMyRank)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 152
	st.w	$a0, $sp, 216
	srli.d	$a0, $a1, 32
	or	$a0, $a0, $s2
	movgr2fr.d	$fa0, $a0
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 224
	pcaddu18i	$ra, %call36(getMyRank)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 224
	st.w	$a0, $sp, 232
	srli.d	$a0, $a1, 32
	or	$a0, $a0, $s2
	movgr2fr.d	$fa0, $a0
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 240
	pcaddu18i	$ra, %call36(getMyRank)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 296
	st.w	$a0, $sp, 248
	srli.d	$a0, $a1, 32
	or	$a0, $a0, $s2
	movgr2fr.d	$fa0, $a0
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 256
	pcaddu18i	$ra, %call36(getMyRank)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 368
	st.w	$a0, $sp, 264
	srli.d	$a0, $a1, 32
	or	$a0, $a0, $s2
	movgr2fr.d	$fa0, $a0
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 272
	pcaddu18i	$ra, %call36(getMyRank)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 440
	st.w	$a0, $sp, 280
	srli.d	$a0, $a1, 32
	or	$a0, $a0, $s2
	movgr2fr.d	$fa0, $a0
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 288
	pcaddu18i	$ra, %call36(getMyRank)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 512
	st.w	$a0, $sp, 296
	srli.d	$a0, $a1, 32
	or	$a0, $a0, $s2
	movgr2fr.d	$fa0, $a0
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 304
	pcaddu18i	$ra, %call36(getMyRank)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 584
	st.w	$a0, $sp, 312
	srli.d	$a0, $a1, 32
	or	$a0, $a0, $s2
	movgr2fr.d	$fa0, $a0
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 320
	pcaddu18i	$ra, %call36(getMyRank)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 656
	st.w	$a0, $sp, 328
	srli.d	$a0, $a1, 32
	or	$a0, $a0, $s2
	movgr2fr.d	$fa0, $a0
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 336
	pcaddu18i	$ra, %call36(getMyRank)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 728
	st.w	$a0, $sp, 344
	srli.d	$a0, $a1, 32
	or	$a0, $a0, $s2
	movgr2fr.d	$fa0, $a0
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 352
	pcaddu18i	$ra, %call36(getMyRank)
	jirl	$ra, $ra, 0
	st.w	$a0, $sp, 360
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 11
	pcaddu18i	$ra, %call36(minRankDoubleParallel)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 16
	fld.d	$fa1, $sp, 32
	fld.d	$fa2, $sp, 48
	fst.d	$fa0, $s4, 40
	fld.d	$fa0, $sp, 64
	fst.d	$fa1, $s4, 112
	fst.d	$fa2, $s4, 184
	fld.d	$fa1, $sp, 80
	fst.d	$fa0, $s4, 256
	ld.w	$a0, $sp, 24
	ld.w	$a1, $sp, 40
	fst.d	$fa1, $s4, 328
	fld.d	$fa0, $sp, 96
	st.w	$a0, $s4, 32
	ld.w	$a0, $sp, 56
	st.w	$a1, $s4, 104
	fst.d	$fa0, $s4, 400
	fld.d	$fa0, $sp, 112
	st.w	$a0, $s4, 176
	ld.w	$a0, $sp, 72
	ld.w	$a1, $sp, 88
	fst.d	$fa0, $s4, 472
	fld.d	$fa0, $sp, 128
	st.w	$a0, $s4, 248
	ld.w	$a0, $sp, 104
	st.w	$a1, $s4, 320
	fst.d	$fa0, $s4, 544
	fld.d	$fa0, $sp, 144
	st.w	$a0, $s4, 392
	ld.w	$a0, $sp, 120
	ld.w	$a1, $sp, 136
	fst.d	$fa0, $s4, 616
	fld.d	$fa0, $sp, 160
	st.w	$a0, $s4, 464
	st.w	$a1, $s4, 536
	ld.w	$a0, $sp, 152
	fst.d	$fa0, $s4, 688
	ld.w	$a1, $sp, 168
	fld.d	$fa0, $sp, 176
	ld.w	$a2, $sp, 184
	st.w	$a0, $s4, 608
	st.w	$a1, $s4, 680
	fst.d	$fa0, $s4, 760
	st.w	$a2, $s4, 752
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 11
	pcaddu18i	$ra, %call36(maxRankDoubleParallel)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 16
	fld.d	$fa1, $sp, 32
	fld.d	$fa2, $sp, 48
	fld.d	$fa3, $sp, 64
	fst.d	$fa0, $s4, 48
	fst.d	$fa1, $s4, 120
	fst.d	$fa2, $s4, 192
	fst.d	$fa3, $s4, 264
	fld.d	$fa0, $sp, 80
	fld.d	$fa1, $sp, 96
	fld.d	$fa2, $sp, 112
	fld.d	$fa3, $sp, 128
	fst.d	$fa0, $s4, 336
	fst.d	$fa1, $s4, 408
	fst.d	$fa2, $s4, 480
	fst.d	$fa3, $s4, 552
	fld.d	$fa0, $sp, 144
	fld.d	$fa1, $sp, 160
	fld.d	$fa2, $sp, 176
	ld.d	$a0, $s4, 8
	fst.d	$fa0, $s4, 624
	fst.d	$fa1, $s4, 696
	fst.d	$fa2, $s4, 768
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a0, $s3, 63, 32
	fld.d	$fa1, $s4, 56
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa0, $fa2, $fa0
	ld.d	$a0, $s4, 80
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $sp, 456
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa1, $a0
	fld.d	$fa2, $s4, 128
	fadd.d	$fa0, $fa1, $fa0
	ld.w	$a0, $sp, 24
	ld.d	$a1, $s4, 152
	fsub.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $sp, 464
	srli.d	$a2, $a1, 32
	or	$a2, $a2, $s2
	movgr2fr.d	$fa0, $a2
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fld.d	$fa1, $s4, 200
	st.w	$a0, $s4, 36
	ld.w	$a0, $sp, 40
	ld.d	$a1, $s4, 224
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $sp, 472
	srli.d	$a2, $a1, 32
	or	$a2, $a2, $s2
	movgr2fr.d	$fa0, $a2
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fld.d	$fa1, $s4, 272
	st.w	$a0, $s4, 108
	ld.w	$a0, $sp, 56
	ld.d	$a1, $s4, 296
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $sp, 480
	srli.d	$a2, $a1, 32
	or	$a2, $a2, $s2
	movgr2fr.d	$fa0, $a2
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fld.d	$fa1, $s4, 344
	st.w	$a0, $s4, 180
	ld.w	$a0, $sp, 72
	ld.d	$a1, $s4, 368
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $sp, 488
	srli.d	$a2, $a1, 32
	or	$a2, $a2, $s2
	movgr2fr.d	$fa0, $a2
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fld.d	$fa1, $s4, 416
	st.w	$a0, $s4, 252
	ld.w	$a0, $sp, 88
	ld.d	$a1, $s4, 440
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $sp, 496
	srli.d	$a2, $a1, 32
	or	$a2, $a2, $s2
	movgr2fr.d	$fa0, $a2
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fld.d	$fa1, $s4, 488
	st.w	$a0, $s4, 324
	ld.w	$a0, $sp, 104
	ld.d	$a1, $s4, 512
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $sp, 504
	srli.d	$a2, $a1, 32
	or	$a2, $a2, $s2
	movgr2fr.d	$fa0, $a2
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fld.d	$fa1, $s4, 560
	st.w	$a0, $s4, 396
	ld.w	$a0, $sp, 120
	ld.d	$a1, $s4, 584
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $sp, 512
	srli.d	$a2, $a1, 32
	or	$a2, $a2, $s2
	movgr2fr.d	$fa0, $a2
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fld.d	$fa1, $s4, 632
	st.w	$a0, $s4, 468
	ld.w	$a0, $sp, 136
	ld.d	$a1, $s4, 656
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $sp, 520
	srli.d	$a2, $a1, 32
	or	$a2, $a2, $s2
	movgr2fr.d	$fa0, $a2
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fld.d	$fa1, $s4, 704
	ld.d	$a1, $s4, 728
	st.w	$a0, $s4, 540
	ld.w	$a0, $sp, 152
	fsub.d	$fa0, $fa0, $fa1
	srli.d	$a2, $a1, 32
	or	$a2, $a2, $s2
	movgr2fr.d	$fa1, $a2
	ld.w	$a2, $sp, 168
	fmul.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $sp, 528
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa0, $a1
	ld.w	$a1, $sp, 184
	fsub.d	$fa1, $fa1, $fs0
	fadd.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $s4, 776
	st.w	$a0, $s4, 612
	st.w	$a2, $s4, 684
	st.w	$a1, $s4, 756
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $sp, 536
	addi.d	$a0, $sp, 456
	addi.d	$a1, $sp, 368
	ori	$a2, $zero, 11
	pcaddu18i	$ra, %call36(addDoubleParallel)
	jirl	$ra, $ra, 0
	fld.d	$fs1, $sp, 368
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa1, $fs1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_58
.LBB3_1:                                # %.split
	fld.d	$fs1, $sp, 376
	fst.d	$fa0, $s4, 64
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa1, $fs1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_59
.LBB3_2:                                # %.split.split
	fld.d	$fs1, $sp, 384
	fst.d	$fa0, $s4, 136
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa1, $fs1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_60
.LBB3_3:                                # %.split.split.split
	fld.d	$fs1, $sp, 392
	fst.d	$fa0, $s4, 208
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa1, $fs1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_61
.LBB3_4:                                # %.split.split.split.split
	fld.d	$fs1, $sp, 400
	fst.d	$fa0, $s4, 280
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa1, $fs1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_62
.LBB3_5:                                # %.split.split.split.split.split
	fld.d	$fs1, $sp, 408
	fst.d	$fa0, $s4, 352
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa1, $fs1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_63
.LBB3_6:                                # %.split.split.split.split.split.split
	fld.d	$fs1, $sp, 416
	fst.d	$fa0, $s4, 424
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa1, $fs1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_64
.LBB3_7:                                # %.split.split.split.split.split.split.split
	fld.d	$fs1, $sp, 424
	fst.d	$fa0, $s4, 496
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa1, $fs1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_65
.LBB3_8:                                # %.split.split.split.split.split.split.split.split
	fld.d	$fs1, $sp, 432
	fst.d	$fa0, $s4, 568
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa1, $fs1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_66
.LBB3_9:                                # %.split.split.split.split.split.split.split.split.split
	fld.d	$fs1, $sp, 440
	fst.d	$fa0, $s4, 640
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa1, $fs1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_67
.LBB3_10:                               # %.split.split.split.split.split.split.split.split.split.split
	fld.d	$fs1, $sp, 448
	fst.d	$fa0, $s4, 712
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa1, $fs1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_68
# %bb.11:                               # %.split.split.split.split.split.split.split.split.split.split.split
	fst.d	$fa0, $s4, 784
	pcaddu18i	$ra, %call36(printRank)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_57
.LBB3_12:
	ld.d	$a0, $s4, 80
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	lu12i.w	$a0, -390306
	ori	$a0, $a0, 3469
	lu32i.d	$a0, 50935
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fs1, $a0
	fmul.d	$fs2, $fa0, $fs1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s5, $a0, %got_pc_lo12(stdout)
	ld.d	$s1, $s5, 0
	pcaddu18i	$ra, %call36(getMyRank)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 68
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s4, 16
	pcalau12i	$a0, %pc_hi20(timerName)
	addi.d	$s6, $a0, %pc_lo12(timerName)
	beqz	$a3, .LBB3_14
# %bb.13:
	ld.d	$a0, $s4, 8
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $fs1
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 0
	srli.d	$a1, $a3, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fs0
	move	$a1, $a3
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa2, $a1
	fadd.d	$fa1, $fa2, $fa1
	fdiv.d	$fa1, $fa0, $fa1
	fdiv.d	$fa2, $fa0, $fs2
	ori	$a1, $zero, 0
	lu32i.d	$a1, -458752
	lu52i.d	$a1, $a1, 1029
	movgr2fr.d	$fa3, $a1
	fmul.d	$fa2, $fa2, $fa3
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_14:
	ld.d	$a3, $s4, 88
	beqz	$a3, .LBB3_16
# %bb.15:
	ld.d	$a0, $s4, 80
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $fs1
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 8
	srli.d	$a1, $a3, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fs0
	move	$a1, $a3
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa2, $a1
	fadd.d	$fa1, $fa2, $fa1
	fdiv.d	$fa1, $fa0, $fa1
	fdiv.d	$fa2, $fa0, $fs2
	ori	$a1, $zero, 0
	lu32i.d	$a1, -458752
	lu52i.d	$a1, $a1, 1029
	movgr2fr.d	$fa3, $a1
	fmul.d	$fa2, $fa2, $fa3
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_16:
	ld.d	$a3, $s4, 160
	beqz	$a3, .LBB3_18
# %bb.17:
	ld.d	$a0, $s4, 152
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $fs1
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 16
	srli.d	$a1, $a3, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fs0
	move	$a1, $a3
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa2, $a1
	fadd.d	$fa1, $fa2, $fa1
	fdiv.d	$fa1, $fa0, $fa1
	fdiv.d	$fa2, $fa0, $fs2
	ori	$a1, $zero, 0
	lu32i.d	$a1, -458752
	lu52i.d	$a1, $a1, 1029
	movgr2fr.d	$fa3, $a1
	fmul.d	$fa2, $fa2, $fa3
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_18:
	ld.d	$a3, $s4, 232
	beqz	$a3, .LBB3_20
# %bb.19:
	ld.d	$a0, $s4, 224
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $fs1
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 24
	srli.d	$a1, $a3, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fs0
	move	$a1, $a3
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa2, $a1
	fadd.d	$fa1, $fa2, $fa1
	fdiv.d	$fa1, $fa0, $fa1
	fdiv.d	$fa2, $fa0, $fs2
	ori	$a1, $zero, 0
	lu32i.d	$a1, -458752
	lu52i.d	$a1, $a1, 1029
	movgr2fr.d	$fa3, $a1
	fmul.d	$fa2, $fa2, $fa3
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_20:
	ld.d	$a3, $s4, 304
	beqz	$a3, .LBB3_22
# %bb.21:
	ld.d	$a0, $s4, 296
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $fs1
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 32
	srli.d	$a1, $a3, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fs0
	move	$a1, $a3
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa2, $a1
	fadd.d	$fa1, $fa2, $fa1
	fdiv.d	$fa1, $fa0, $fa1
	fdiv.d	$fa2, $fa0, $fs2
	ori	$a1, $zero, 0
	lu32i.d	$a1, -458752
	lu52i.d	$a1, $a1, 1029
	movgr2fr.d	$fa3, $a1
	fmul.d	$fa2, $fa2, $fa3
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_22:
	ld.d	$a3, $s4, 376
	beqz	$a3, .LBB3_24
# %bb.23:
	ld.d	$a0, $s4, 368
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $fs1
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 40
	srli.d	$a1, $a3, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fs0
	move	$a1, $a3
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa2, $a1
	fadd.d	$fa1, $fa2, $fa1
	fdiv.d	$fa1, $fa0, $fa1
	fdiv.d	$fa2, $fa0, $fs2
	ori	$a1, $zero, 0
	lu32i.d	$a1, -458752
	lu52i.d	$a1, $a1, 1029
	movgr2fr.d	$fa3, $a1
	fmul.d	$fa2, $fa2, $fa3
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_24:
	ld.d	$a3, $s4, 448
	beqz	$a3, .LBB3_26
# %bb.25:
	ld.d	$a0, $s4, 440
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $fs1
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 48
	srli.d	$a1, $a3, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fs0
	move	$a1, $a3
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa2, $a1
	fadd.d	$fa1, $fa2, $fa1
	fdiv.d	$fa1, $fa0, $fa1
	fdiv.d	$fa2, $fa0, $fs2
	ori	$a1, $zero, 0
	lu32i.d	$a1, -458752
	lu52i.d	$a1, $a1, 1029
	movgr2fr.d	$fa3, $a1
	fmul.d	$fa2, $fa2, $fa3
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_26:
	ld.d	$a3, $s4, 520
	beqz	$a3, .LBB3_28
# %bb.27:
	ld.d	$a0, $s4, 512
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $fs1
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 56
	srli.d	$a1, $a3, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fs0
	move	$a1, $a3
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa2, $a1
	fadd.d	$fa1, $fa2, $fa1
	fdiv.d	$fa1, $fa0, $fa1
	fdiv.d	$fa2, $fa0, $fs2
	ori	$a1, $zero, 0
	lu32i.d	$a1, -458752
	lu52i.d	$a1, $a1, 1029
	movgr2fr.d	$fa3, $a1
	fmul.d	$fa2, $fa2, $fa3
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_28:
	ld.d	$a3, $s4, 592
	beqz	$a3, .LBB3_30
# %bb.29:
	ld.d	$a0, $s4, 584
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $fs1
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 64
	srli.d	$a1, $a3, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fs0
	move	$a1, $a3
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa2, $a1
	fadd.d	$fa1, $fa2, $fa1
	fdiv.d	$fa1, $fa0, $fa1
	fdiv.d	$fa2, $fa0, $fs2
	ori	$a1, $zero, 0
	lu32i.d	$a1, -458752
	lu52i.d	$a1, $a1, 1029
	movgr2fr.d	$fa3, $a1
	fmul.d	$fa2, $fa2, $fa3
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_30:
	ld.d	$a3, $s4, 664
	beqz	$a3, .LBB3_32
# %bb.31:
	ld.d	$a0, $s4, 656
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $fs1
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 72
	srli.d	$a1, $a3, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fs0
	move	$a1, $a3
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa2, $a1
	fadd.d	$fa1, $fa2, $fa1
	fdiv.d	$fa1, $fa0, $fa1
	fdiv.d	$fa2, $fa0, $fs2
	ori	$a1, $zero, 0
	lu32i.d	$a1, -458752
	lu52i.d	$a1, $a1, 1029
	movgr2fr.d	$fa3, $a1
	fmul.d	$fa2, $fa2, $fa3
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_32:
	ld.d	$a3, $s4, 736
	beqz	$a3, .LBB3_34
# %bb.33:
	ld.d	$a0, $s4, 728
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $fs1
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 80
	srli.d	$a1, $a3, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fs0
	move	$a1, $a3
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa2, $a1
	fadd.d	$fa1, $fa2, $fa1
	fdiv.d	$fa1, $fa0, $fa1
	fdiv.d	$fa2, $fa0, $fs2
	ori	$a1, $zero, 0
	lu32i.d	$a1, -458752
	lu52i.d	$a1, $a1, 1029
	movgr2fr.d	$fa3, $a1
	fmul.d	$fa2, $fa2, $fa3
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_34:
	ld.d	$s1, $s5, 0
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 77
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ori	$a1, $zero, 78
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 16
	beqz	$a0, .LBB3_36
# %bb.35:
	fld.d	$fa0, $s4, 40
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 0
	ld.w	$a3, $s4, 32
	fmul.d	$fa0, $fa0, $fs1
	fld.d	$fa1, $s4, 48
	fld.d	$fa2, $s4, 56
	fld.d	$fa3, $s4, 64
	ld.w	$a5, $s4, 36
	fmul.d	$fa1, $fa1, $fs1
	fmul.d	$fa2, $fa2, $fs1
	fmul.d	$fa3, $fa3, $fs1
	fst.d	$fa3, $sp, 0
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_36:
	ld.d	$a0, $s4, 88
	beqz	$a0, .LBB3_38
# %bb.37:
	fld.d	$fa0, $s4, 112
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 8
	ld.w	$a3, $s4, 104
	fmul.d	$fa0, $fa0, $fs1
	fld.d	$fa1, $s4, 120
	fld.d	$fa2, $s4, 128
	fld.d	$fa3, $s4, 136
	ld.w	$a5, $s4, 108
	fmul.d	$fa1, $fa1, $fs1
	fmul.d	$fa2, $fa2, $fs1
	fmul.d	$fa3, $fa3, $fs1
	fst.d	$fa3, $sp, 0
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_38:
	ld.d	$a0, $s4, 160
	beqz	$a0, .LBB3_40
# %bb.39:
	fld.d	$fa0, $s4, 184
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 16
	ld.w	$a3, $s4, 176
	fmul.d	$fa0, $fa0, $fs1
	fld.d	$fa1, $s4, 192
	fld.d	$fa2, $s4, 200
	fld.d	$fa3, $s4, 208
	ld.w	$a5, $s4, 180
	fmul.d	$fa1, $fa1, $fs1
	fmul.d	$fa2, $fa2, $fs1
	fmul.d	$fa3, $fa3, $fs1
	fst.d	$fa3, $sp, 0
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_40:
	ld.d	$a0, $s4, 232
	beqz	$a0, .LBB3_42
# %bb.41:
	fld.d	$fa0, $s4, 256
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 24
	ld.w	$a3, $s4, 248
	fmul.d	$fa0, $fa0, $fs1
	fld.d	$fa1, $s4, 264
	fld.d	$fa2, $s4, 272
	fld.d	$fa3, $s4, 280
	ld.w	$a5, $s4, 252
	fmul.d	$fa1, $fa1, $fs1
	fmul.d	$fa2, $fa2, $fs1
	fmul.d	$fa3, $fa3, $fs1
	fst.d	$fa3, $sp, 0
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_42:
	ld.d	$a0, $s4, 304
	beqz	$a0, .LBB3_44
# %bb.43:
	fld.d	$fa0, $s4, 328
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 32
	ld.w	$a3, $s4, 320
	fmul.d	$fa0, $fa0, $fs1
	fld.d	$fa1, $s4, 336
	fld.d	$fa2, $s4, 344
	fld.d	$fa3, $s4, 352
	ld.w	$a5, $s4, 324
	fmul.d	$fa1, $fa1, $fs1
	fmul.d	$fa2, $fa2, $fs1
	fmul.d	$fa3, $fa3, $fs1
	fst.d	$fa3, $sp, 0
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_44:
	ld.d	$a0, $s4, 376
	beqz	$a0, .LBB3_46
# %bb.45:
	fld.d	$fa0, $s4, 400
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 40
	ld.w	$a3, $s4, 392
	fmul.d	$fa0, $fa0, $fs1
	fld.d	$fa1, $s4, 408
	fld.d	$fa2, $s4, 416
	fld.d	$fa3, $s4, 424
	ld.w	$a5, $s4, 396
	fmul.d	$fa1, $fa1, $fs1
	fmul.d	$fa2, $fa2, $fs1
	fmul.d	$fa3, $fa3, $fs1
	fst.d	$fa3, $sp, 0
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_46:
	ld.d	$a0, $s4, 448
	beqz	$a0, .LBB3_48
# %bb.47:
	fld.d	$fa0, $s4, 472
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 48
	ld.w	$a3, $s4, 464
	fmul.d	$fa0, $fa0, $fs1
	fld.d	$fa1, $s4, 480
	fld.d	$fa2, $s4, 488
	fld.d	$fa3, $s4, 496
	ld.w	$a5, $s4, 468
	fmul.d	$fa1, $fa1, $fs1
	fmul.d	$fa2, $fa2, $fs1
	fmul.d	$fa3, $fa3, $fs1
	fst.d	$fa3, $sp, 0
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_48:
	ld.d	$a0, $s4, 520
	beqz	$a0, .LBB3_50
# %bb.49:
	fld.d	$fa0, $s4, 544
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 56
	ld.w	$a3, $s4, 536
	fmul.d	$fa0, $fa0, $fs1
	fld.d	$fa1, $s4, 552
	fld.d	$fa2, $s4, 560
	fld.d	$fa3, $s4, 568
	ld.w	$a5, $s4, 540
	fmul.d	$fa1, $fa1, $fs1
	fmul.d	$fa2, $fa2, $fs1
	fmul.d	$fa3, $fa3, $fs1
	fst.d	$fa3, $sp, 0
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_50:
	ld.d	$a0, $s4, 592
	beqz	$a0, .LBB3_52
# %bb.51:
	fld.d	$fa0, $s4, 616
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 64
	ld.w	$a3, $s4, 608
	fmul.d	$fa0, $fa0, $fs1
	fld.d	$fa1, $s4, 624
	fld.d	$fa2, $s4, 632
	fld.d	$fa3, $s4, 640
	ld.w	$a5, $s4, 612
	fmul.d	$fa1, $fa1, $fs1
	fmul.d	$fa2, $fa2, $fs1
	fmul.d	$fa3, $fa3, $fs1
	fst.d	$fa3, $sp, 0
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_52:
	ld.d	$a0, $s4, 664
	beqz	$a0, .LBB3_54
# %bb.53:
	fld.d	$fa0, $s4, 688
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 72
	ld.w	$a3, $s4, 680
	fmul.d	$fa0, $fa0, $fs1
	fld.d	$fa1, $s4, 696
	fld.d	$fa2, $s4, 704
	fld.d	$fa3, $s4, 712
	ld.w	$a5, $s4, 684
	fmul.d	$fa1, $fa1, $fs1
	fmul.d	$fa2, $fa2, $fs1
	fmul.d	$fa3, $fa3, $fs1
	fst.d	$fa3, $sp, 0
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_54:
	ld.d	$a0, $s4, 736
	beqz	$a0, .LBB3_56
# %bb.55:
	fld.d	$fa0, $s4, 760
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s6, 80
	ld.w	$a3, $s4, 752
	fmul.d	$fa0, $fa0, $fs1
	fld.d	$fa1, $s4, 768
	fld.d	$fa2, $s4, 776
	fld.d	$fa3, $s4, 784
	ld.w	$a5, $s4, 756
	fmul.d	$fa1, $fa1, $fs1
	fmul.d	$fa2, $fa2, $fs1
	fmul.d	$fa3, $fa3, $fs1
	fst.d	$fa3, $sp, 0
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_56:
	movgr2fr.w	$fa0, $s0
	ffint.d.w	$fs2, $fa0
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s4, 200
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fs2, $fa1
	fmul.d	$fa0, $fa0, $fs1
	ori	$a0, $zero, 0
	lu32i.d	$a0, -97152
	ld.d	$a1, $s4, 160
	lu52i.d	$a0, $a0, 1042
	movgr2fr.d	$fa2, $a0
	fmul.d	$fa0, $fa0, $fa2
	srli.d	$a0, $a1, 32
	or	$a0, $a0, $s2
	movgr2fr.d	$fa2, $a0
	fsub.d	$fa2, $fa2, $fs0
	mul.d	$a0, $fp, $s0
	mul.d	$a0, $a0, $a1
	bstrins.d	$a1, $s3, 63, 32
	movgr2fr.d	$fa3, $a1
	fadd.d	$fa2, $fa3, $fa2
	fmul.d	$fa1, $fa1, $fa2
	movgr2fr.w	$fa2, $fp
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	fdiv.d	$fa1, $fa0, $fa1
	pcalau12i	$s0, %pc_hi20(perfGlobal.0)
	fst.d	$fa1, $s0, %pc_lo12(perfGlobal.0)
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fs0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa1, $fa2, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	pcalau12i	$s2, %pc_hi20(perfGlobal.1)
	fst.d	$fa0, $s2, %pc_lo12(perfGlobal.1)
	ld.d	$a3, $s5, 0
	frecip.d	$fa0, $fa0
	pcalau12i	$s1, %pc_hi20(perfGlobal.2)
	fst.d	$fa0, $s1, %pc_lo12(perfGlobal.2)
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$fp, $a0, %pc_lo12(.L.str.19)
	ori	$a1, $zero, 53
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s0, %pc_lo12(perfGlobal.0)
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$s0, $a0, %pc_lo12(.L.str.21)
	ori	$a1, $zero, 53
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 53
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s2, %pc_lo12(perfGlobal.1)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 53
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 53
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s1, %pc_lo12(perfGlobal.2)
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 53
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB3_57:
	fld.d	$fs2, $sp, 544                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 552                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 560                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 616                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 624                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 632                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 640
	ret
.LBB3_58:                               # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB3_1
.LBB3_59:                               # %call.sqrt49
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB3_2
.LBB3_60:                               # %call.sqrt50
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB3_3
.LBB3_61:                               # %call.sqrt51
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB3_4
.LBB3_62:                               # %call.sqrt52
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB3_5
.LBB3_63:                               # %call.sqrt53
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB3_6
.LBB3_64:                               # %call.sqrt54
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB3_7
.LBB3_65:                               # %call.sqrt55
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB3_8
.LBB3_66:                               # %call.sqrt56
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB3_9
.LBB3_67:                               # %call.sqrt57
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB3_10
.LBB3_68:                               # %call.sqrt58
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s4, 784
	pcaddu18i	$ra, %call36(printRank)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_12
	b	.LBB3_57
.Lfunc_end3:
	.size	printPerformanceResults, .Lfunc_end3-printPerformanceResults
                                        # -- End function
	.globl	printPerformanceResultsYaml     # -- Begin function printPerformanceResultsYaml
	.p2align	5
	.type	printPerformanceResultsYaml,@function
printPerformanceResultsYaml:            # @printPerformanceResultsYaml
# %bb.0:
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
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 32                   # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(printRank)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_10
# %bb.1:
	pcalau12i	$a0, %pc_hi20(perfTimer)
	addi.d	$s0, $a0, %pc_lo12(perfTimer)
	ld.d	$a0, $s0, 80
	srli.d	$a1, $a0, 32
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa0, $a1
	lu12i.w	$a1, 256
	lu52i.d	$a1, $a1, 1107
	movgr2fr.d	$fs1, $a1
	fsub.d	$fa0, $fa0, $fs1
	lu12i.w	$a1, 275200
	bstrins.d	$a0, $a1, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	lu12i.w	$a0, -390306
	ori	$a0, $a0, 3469
	lu32i.d	$a0, 50935
	lu52i.d	$a0, $a0, 1003
	movgr2fr.d	$fs0, $a0
	fmul.d	$fs2, $fa0, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	ori	$a1, $zero, 30
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(getMyRank)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s5, $s0, 16
	pcalau12i	$a0, %pc_hi20(timerName)
	addi.d	$a0, $a0, %pc_lo12(timerName)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$s0, $a0, %pc_lo12(.L.str.28)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$s1, $a0, %pc_lo12(.L.str.29)
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$s2, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$s3, $a0, %pc_lo12(.L.str.31)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -458752
	lu52i.d	$a0, $a0, 1029
	movgr2fr.d	$fs3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$s4, $a0, %pc_lo12(.L.str.32)
	move	$s8, $zero
	lu52i.d	$s7, $zero, 1107
	lu12i.w	$s6, 275200
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s8, $s8, 8
	addi.d	$s5, $s5, 72
	ori	$a0, $zero, 88
	beq	$s8, $a0, .LBB4_5
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	beqz	$a0, .LBB4_2
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $s5, -8
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s7
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs1
	bstrins.d	$a0, $s6, 63, 32
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a2, $a1, $s8
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fs4, $fa0, $fs0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s5, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s7
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs1
	bstrins.d	$a0, $s6, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fdiv.d	$fa0, $fs4, $fa0
	movfr2gr.d	$a2, $fa0
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a2, $fs4
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fs4, $fs2
	fmul.d	$fa0, $fa0, $fs3
	movfr2gr.d	$a2, $fa0
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB4_2
.LBB4_5:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$s8, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$s0, $a0, %pc_lo12(.L.str.28)
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$s1, $a0, %pc_lo12(.L.str.34)
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$s2, $a0, %pc_lo12(.L.str.35)
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$s3, $a0, %pc_lo12(.L.str.36)
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$s4, $a0, %pc_lo12(.L.str.37)
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$s5, $a0, %pc_lo12(.L.str.38)
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$s6, $a0, %pc_lo12(.L.str.39)
	move	$s7, $zero
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                #   in Loop: Header=BB4_7 Depth=1
	addi.d	$s7, $s7, 8
	addi.d	$s8, $s8, 72
	ori	$a0, $zero, 88
	beq	$s7, $a0, .LBB4_9
.LBB4_7:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, -16
	beqz	$a0, .LBB4_6
# %bb.8:                                #   in Loop: Header=BB4_7 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a2, $a0, $s7
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s8, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s8, 8
	fmul.d	$fa0, $fa0, $fs0
	movfr2gr.d	$a2, $fa0
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s8, 4
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s8, 16
	fmul.d	$fa0, $fa0, $fs0
	movfr2gr.d	$a2, $fa0
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s8, 24
	fmul.d	$fa0, $fa0, $fs0
	movfr2gr.d	$a2, $fa0
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s8, 32
	fmul.d	$fa0, $fa0, $fs0
	movfr2gr.d	$a2, $fa0
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB4_6
.LBB4_9:
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	ori	$a1, $zero, 33
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	ori	$a1, $zero, 18
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(perfGlobal.0)
	ld.d	$a2, $a0, %pc_lo12(perfGlobal.0)
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$s0, $a0, %pc_lo12(.L.str.42)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(perfGlobal.1)
	ld.d	$a2, $a0, %pc_lo12(perfGlobal.1)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	ori	$a1, $zero, 12
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(perfGlobal.2)
	ld.d	$a2, $a0, %pc_lo12(perfGlobal.2)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	ori	$a1, $zero, 20
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	fld.d	$fs4, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.LBB4_10:
	fld.d	$fs4, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
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
.Lfunc_end4:
	.size	printPerformanceResultsYaml, .Lfunc_end4-printPerformanceResultsYaml
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"total"
	.size	.L.str, 6

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"loop"
	.size	.L.str.1, 5

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"timestep"
	.size	.L.str.2, 9

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"  position"
	.size	.L.str.3, 11

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"  velocity"
	.size	.L.str.4, 11

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"  redistribute"
	.size	.L.str.5, 15

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"    atomHalo"
	.size	.L.str.6, 13

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"  force"
	.size	.L.str.7, 8

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"    eamHalo"
	.size	.L.str.8, 12

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"commHalo"
	.size	.L.str.9, 9

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"commReduce"
	.size	.L.str.10, 11

	.type	timerName,@object               # @timerName
	.data
	.globl	timerName
	.p2align	3, 0x0
timerName:
	.dword	.L.str
	.dword	.L.str.1
	.dword	.L.str.2
	.dword	.L.str.3
	.dword	.L.str.4
	.dword	.L.str.5
	.dword	.L.str.6
	.dword	.L.str.7
	.dword	.L.str.8
	.dword	.L.str.9
	.dword	.L.str.10
	.size	timerName, 88

	.type	perfTimer,@object               # @perfTimer
	.local	perfTimer
	.comm	perfTimer,792,8
	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"\n\nTimings for Rank %d\n"
	.size	.L.str.11, 23

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"        Timer        # Calls    Avg/Call (s)   Total (s)    %% Loop\n"
	.size	.L.str.12, 69

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"___________________________________________________________________\n"
	.size	.L.str.13, 69

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"%-16s%12lu     %8.4f      %8.4f    %8.2f\n"
	.size	.L.str.14, 42

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"\nTiming Statistics Across %d Ranks:\n"
	.size	.L.str.15, 37

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"        Timer        Rank: Min(s)       Rank: Max(s)      Avg(s)    Stdev(s)\n"
	.size	.L.str.16, 78

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"_____________________________________________________________________________\n"
	.size	.L.str.17, 79

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"%-16s%6d:%10.4f  %6d:%10.4f  %10.4f  %10.4f\n"
	.size	.L.str.18, 45

	.type	perfGlobal.0,@object            # @perfGlobal.0
	.local	perfGlobal.0
	.comm	perfGlobal.0,8,8
	.type	perfGlobal.1,@object            # @perfGlobal.1
	.local	perfGlobal.1
	.comm	perfGlobal.1,8,8
	.type	perfGlobal.2,@object            # @perfGlobal.2
	.local	perfGlobal.2
	.comm	perfGlobal.2,8,8
	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"\n---------------------------------------------------\n"
	.size	.L.str.19, 54

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	" Average atom update rate:     %6.2f us/atom/task\n"
	.size	.L.str.20, 51

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"---------------------------------------------------\n\n"
	.size	.L.str.21, 54

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	" Average all atom update rate: %6.2f us/atom\n"
	.size	.L.str.22, 46

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	" Average atom rate:            %6.2f atoms/us\n"
	.size	.L.str.23, 47

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"\nPerformance Results:\n"
	.size	.L.str.24, 23

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"  TotalRanks: %d\n"
	.size	.L.str.25, 18

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"  ReportingTimeUnits: seconds\n"
	.size	.L.str.26, 31

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Performance Results For Rank %d:\n"
	.size	.L.str.27, 34

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"  Timer: %s\n"
	.size	.L.str.28, 13

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"    CallCount:  %lu\n"
	.size	.L.str.29, 21

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"    AvgPerCall: %8.4f\n"
	.size	.L.str.30, 23

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"    Total:      %8.4f\n"
	.size	.L.str.31, 23

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"    PercentLoop: %8.2f\n"
	.size	.L.str.32, 24

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Performance Results Across Ranks:\n"
	.size	.L.str.33, 35

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"    MinRank: %d\n"
	.size	.L.str.34, 17

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"    MinTime: %8.4f\n"
	.size	.L.str.35, 20

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"    MaxRank: %d\n"
	.size	.L.str.36, 17

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"    MaxTime: %8.4f\n"
	.size	.L.str.37, 20

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"    AvgTime: %8.4f\n"
	.size	.L.str.38, 20

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"    StdevTime: %8.4f\n"
	.size	.L.str.39, 22

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"Performance Global Update Rates:\n"
	.size	.L.str.40, 34

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"  AtomUpdateRate:\n"
	.size	.L.str.41, 19

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"    AverageRate: %6.2f\n"
	.size	.L.str.42, 24

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"    Units: us/atom/task\n"
	.size	.L.str.43, 25

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"  AllAtomUpdateRate:\n"
	.size	.L.str.44, 22

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"    Units: us/atom\n"
	.size	.L.str.45, 20

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"  AtomRate:\n"
	.size	.L.str.46, 13

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"    Units: atoms/us\n"
	.size	.L.str.47, 21

	.section	".note.GNU-stack","",@progbits
	.addrsig
