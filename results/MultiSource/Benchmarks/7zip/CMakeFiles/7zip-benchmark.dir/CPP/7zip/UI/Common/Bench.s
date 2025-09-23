	.file	"Bench.cpp"
	.text
	.globl	_ZN18CBenchmarkInStream4ReadEPvjPj # -- Begin function _ZN18CBenchmarkInStream4ReadEPvjPj
	.p2align	5
	.type	_ZN18CBenchmarkInStream4ReadEPvjPj,@function
_ZN18CBenchmarkInStream4ReadEPvjPj:     # @_ZN18CBenchmarkInStream4ReadEPvjPj
# %bb.0:
	ld.d	$a5, $a0, 32
	ld.d	$a4, $a0, 24
	sub.d	$a5, $a5, $a4
	sltu	$a6, $a2, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a5
	srli.d	$a5, $a2, 20
	sltui	$a5, $a5, 1
	maskeqz	$a2, $a2, $a5
	lu12i.w	$a6, 256
	masknez	$a5, $a6, $a5
	or	$a2, $a2, $a5
	beqz	$a2, .LBB0_4
# %bb.1:                                # %.lr.ph
	move	$a4, $zero
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a0, 16
	ld.d	$a6, $a0, 24
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a4
	stx.b	$a5, $a1, $a4
	addi.d	$a4, $a4, 1
	bne	$a2, $a4, .LBB0_2
# %bb.3:                                # %._crit_edge.loopexit
	ld.d	$a4, $a0, 24
.LBB0_4:                                # %._crit_edge
	add.d	$a1, $a4, $a2
	st.d	$a1, $a0, 24
	beqz	$a3, .LBB0_6
# %bb.5:
	st.w	$a2, $a3, 0
.LBB0_6:
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	_ZN18CBenchmarkInStream4ReadEPvjPj, .Lfunc_end0-_ZN18CBenchmarkInStream4ReadEPvjPj
                                        # -- End function
	.globl	_ZN19CBenchmarkOutStream5WriteEPKvjPj # -- Begin function _ZN19CBenchmarkOutStream5WriteEPKvjPj
	.p2align	5
	.type	_ZN19CBenchmarkOutStream5WriteEPKvjPj,@function
_ZN19CBenchmarkOutStream5WriteEPKvjPj:  # @_ZN19CBenchmarkOutStream5WriteEPKvjPj
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a0
	ld.d	$a0, $a0, 16
	ld.wu	$a4, $s1, 36
	move	$fp, $a3
	sub.d	$a0, $a0, $a4
	bstrpick.d	$a2, $a2, 31, 0
	sltu	$s2, $a0, $a2
	ld.d	$a3, $s1, 24
	maskeqz	$a0, $a0, $s2
	masknez	$a2, $a2, $s2
	or	$s0, $a0, $a2
	add.d	$a0, $a3, $a4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 36
	add.d	$a0, $a0, $s0
	st.w	$a0, $s1, 36
	beqz	$fp, .LBB1_2
# %bb.1:
	st.w	$s0, $fp, 0
.LBB1_2:
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 5
	maskeqz	$a0, $a0, $s2
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	_ZN19CBenchmarkOutStream5WriteEPKvjPj, .Lfunc_end1-_ZN19CBenchmarkOutStream5WriteEPKvjPj
                                        # -- End function
	.globl	_ZN13CCrcOutStream5WriteEPKvjPj # -- Begin function _ZN13CCrcOutStream5WriteEPKvjPj
	.p2align	5
	.type	_ZN13CCrcOutStream5WriteEPKvjPj,@function
_ZN13CCrcOutStream5WriteEPKvjPj:        # @_ZN13CCrcOutStream5WriteEPKvjPj
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s1, $a0
	ld.w	$a0, $a0, 12
	move	$fp, $a3
	move	$s0, $a2
	bstrpick.d	$a2, $a2, 31, 0
	pcaddu18i	$ra, %call36(CrcUpdate)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, 12
	beqz	$fp, .LBB2_2
# %bb.1:
	st.w	$s0, $fp, 0
.LBB2_2:
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	_ZN13CCrcOutStream5WriteEPKvjPj, .Lfunc_end2-_ZN13CCrcOutStream5WriteEPKvjPj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN18CBenchProgressInfo12SetRatioInfoEPKyS1_ # -- Begin function _ZN18CBenchProgressInfo12SetRatioInfoEPKyS1_
	.p2align	5
	.type	_ZN18CBenchProgressInfo12SetRatioInfoEPKyS1_,@function
_ZN18CBenchProgressInfo12SetRatioInfoEPKyS1_: # @_ZN18CBenchProgressInfo12SetRatioInfoEPKyS1_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	ld.d	$s3, $a0, 16
	move	$s1, $a2
	move	$s0, $a1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(pthread_mutex_lock)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s3, 40
	move	$a0, $s3
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB3_2
.LBB3_1:
	move	$a0, $s2
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB3_2:
	ld.d	$a0, $fp, 88
	beqz	$a0, .LBB3_5
# %bb.3:
	ld.d	$a0, $fp, 72
	vld	$vr0, $fp, 56
	ld.d	$a1, $fp, 40
	ld.d	$a2, $fp, 24
	st.d	$a0, $sp, 56
	vst	$vr0, $sp, 40
	st.d	$a1, $sp, 24
	st.d	$a2, $sp, 8
	lu12i.w	$a0, 244
	ori	$s2, $a0, 576
	st.d	$s2, $sp, 16
	st.d	$s2, $sp, 32
	addi.d	$a0, $sp, 64
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_6
# %bb.4:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s2
	b	.LBB3_7
.LBB3_5:
	move	$s2, $zero
	b	.LBB3_1
.LBB3_6:
	ld.d	$a0, $sp, 64
	ld.d	$a1, $sp, 72
	mul.d	$a0, $a0, $s2
	add.d	$a0, $a0, $a1
.LBB3_7:                                # %_ZL13SetFinishTimeRK10CBenchInfoRS_.exit
	ld.d	$a1, $fp, 24
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 40
	ld.bu	$a1, $a1, 44
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 24
	beqz	$a1, .LBB3_9
# %bb.8:
	ld.d	$a0, $fp, 88
	ld.d	$a1, $s0, 0
	ld.d	$a2, $s1, 0
	ld.d	$a3, $a0, 0
	st.d	$a1, $sp, 40
	st.d	$a2, $sp, 48
	ld.d	$a3, $a3, 0
	b	.LBB3_10
.LBB3_9:
	ld.d	$a1, $s1, 0
	ld.d	$a0, $fp, 88
	ld.d	$a2, $s0, 0
	vld	$vr0, $fp, 56
	vinsgr2vr.d	$vr1, $a1, 0
	ld.d	$a1, $a0, 0
	vinsgr2vr.d	$vr1, $a2, 1
	vadd.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 40
	ld.d	$a3, $a1, 8
.LBB3_10:
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	jirl	$ra, $a3, 0
	move	$s2, $a0
	beqz	$a0, .LBB3_1
# %bb.11:
	ld.d	$fp, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pthread_mutex_lock)
	jirl	$ra, $ra, 0
	st.w	$s2, $fp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	b	.LBB3_1
.Lfunc_end3:
	.size	_ZN18CBenchProgressInfo12SetRatioInfoEPKyS1_, .Lfunc_end3-_ZN18CBenchProgressInfo12SetRatioInfoEPKyS1_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL13SetFinishTimeRK10CBenchInfoRS_
	.type	_ZL13SetFinishTimeRK10CBenchInfoRS_,@function
_ZL13SetFinishTimeRK10CBenchInfoRS_:    # @_ZL13SetFinishTimeRK10CBenchInfoRS_
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	lu12i.w	$a0, 244
	ori	$s1, $a0, 576
	st.d	$s1, $a1, 8
	st.d	$s1, $a1, 24
	addi.d	$a0, $sp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_2
# %bb.1:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	b	.LBB4_3
.LBB4_2:
	ld.d	$a0, $sp, 0
	ld.d	$a1, $sp, 8
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a0, $a1
.LBB4_3:                                # %_ZL12GetTimeCountv.exit
	ld.d	$a1, $s0, 0
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 16
	sub.d	$a0, $a0, $a1
	st.d	$a0, $fp, 16
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	_ZL13SetFinishTimeRK10CBenchInfoRS_, .Lfunc_end4-_ZL13SetFinishTimeRK10CBenchInfoRS_
                                        # -- End function
	.globl	_Z8GetUsageRK10CBenchInfo       # -- Begin function _Z8GetUsageRK10CBenchInfo
	.p2align	5
	.type	_Z8GetUsageRK10CBenchInfo,@function
_Z8GetUsageRK10CBenchInfo:              # @_Z8GetUsageRK10CBenchInfo
# %bb.0:
	ld.d	$a2, $a0, 16
	ld.d	$a4, $a0, 24
	ld.d	$a3, $a0, 8
	lu12i.w	$a1, 244
	ori	$a6, $a1, 577
	lu12i.w	$a5, 488
	bltu	$a2, $a6, .LBB5_3
# %bb.1:                                # %.lr.ph.i.preheader
	ori	$a7, $a5, 1153
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$t0, $a2
	srli.d	$a2, $a2, 1
	srli.d	$a4, $a4, 1
	bltu	$a7, $t0, .LBB5_2
.LBB5_3:                                # %_ZL13NormalizeValsRyS_.exit
	ld.d	$a0, $a0, 0
	bltu	$a3, $a6, .LBB5_6
# %bb.4:                                # %.lr.ph.i4.preheader
	ori	$a5, $a5, 1153
	.p2align	4, , 16
.LBB5_5:                                # %.lr.ph.i4
                                        # =>This Inner Loop Header: Depth=1
	move	$a6, $a3
	srli.d	$a3, $a3, 1
	srli.d	$a0, $a0, 1
	bltu	$a5, $a6, .LBB5_5
.LBB5_6:                                # %_ZL13NormalizeValsRyS_.exit5
	ori	$a5, $zero, 1
	sltu	$a6, $a5, $a4
	masknez	$a7, $a5, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a7
	sltu	$a6, $a5, $a0
	masknez	$a5, $a5, $a6
	maskeqz	$a0, $a0, $a6
	or	$a0, $a0, $a5
	mul.d	$a2, $a2, $a3
	ori	$a1, $a1, 576
	mul.d	$a1, $a2, $a1
	div.du	$a1, $a1, $a4
	div.du	$a0, $a1, $a0
	ret
.Lfunc_end5:
	.size	_Z8GetUsageRK10CBenchInfo, .Lfunc_end5-_Z8GetUsageRK10CBenchInfo
                                        # -- End function
	.globl	_Z17GetRatingPerUsageRK10CBenchInfoy # -- Begin function _Z17GetRatingPerUsageRK10CBenchInfoy
	.p2align	5
	.type	_Z17GetRatingPerUsageRK10CBenchInfoy,@function
_Z17GetRatingPerUsageRK10CBenchInfoy:   # @_Z17GetRatingPerUsageRK10CBenchInfoy
# %bb.0:
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a0, 24
	ld.d	$a4, $a0, 0
	lu12i.w	$a5, 244
	ori	$a6, $a5, 577
	lu12i.w	$a5, 488
	bltu	$a3, $a6, .LBB6_3
# %bb.1:                                # %.lr.ph.i.preheader
	ori	$a7, $a5, 1153
	.p2align	4, , 16
.LBB6_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$t0, $a3
	srli.d	$a3, $a3, 1
	srli.d	$a2, $a2, 1
	bltu	$a7, $t0, .LBB6_2
.LBB6_3:                                # %_ZL13NormalizeValsRyS_.exit
	ld.d	$a0, $a0, 8
	bltu	$a4, $a6, .LBB6_6
# %bb.4:                                # %.lr.ph.i4.preheader
	ori	$a5, $a5, 1153
	.p2align	4, , 16
.LBB6_5:                                # %.lr.ph.i4
                                        # =>This Inner Loop Header: Depth=1
	move	$a6, $a4
	srli.d	$a4, $a4, 1
	srli.d	$a0, $a0, 1
	bltu	$a5, $a6, .LBB6_5
.LBB6_6:                                # %_ZL13NormalizeValsRyS_.exit5
	ori	$a5, $zero, 1
	sltu	$a6, $a5, $a0
	masknez	$a7, $a5, $a6
	maskeqz	$a0, $a0, $a6
	or	$a0, $a0, $a7
	sltu	$a6, $a5, $a2
	masknez	$a5, $a5, $a6
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a5
	mul.d	$a3, $a4, $a3
	div.du	$a0, $a3, $a0
	mul.d	$a0, $a0, $a1
	div.du	$a0, $a0, $a2
	ret
.Lfunc_end6:
	.size	_Z17GetRatingPerUsageRK10CBenchInfoy, .Lfunc_end6-_Z17GetRatingPerUsageRK10CBenchInfoy
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _Z17GetCompressRatingjyyy
.LCPI7_0:
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	31                              # 0x1f
.LCPI7_1:
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
.LCPI7_2:
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
.LCPI7_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI7_4:
	.byte	32                              # 0x20
	.byte	31                              # 0x1f
	.byte	30                              # 0x1e
	.byte	29                              # 0x1d
	.byte	28                              # 0x1c
	.byte	27                              # 0x1b
	.byte	26                              # 0x1a
	.byte	25                              # 0x19
	.byte	24                              # 0x18
	.byte	23                              # 0x17
	.byte	22                              # 0x16
	.byte	21                              # 0x15
	.byte	20                              # 0x14
	.byte	19                              # 0x13
	.byte	18                              # 0x12
	.byte	17                              # 0x11
	.byte	16                              # 0x10
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.text
	.globl	_Z17GetCompressRatingjyyy
	.p2align	5
	.type	_Z17GetCompressRatingjyyy,@function
_Z17GetCompressRatingjyyy:              # @_Z17GetCompressRatingjyyy
# %bb.0:
	addi.d	$a4, $a0, -256
	sltu	$a5, $a0, $a4
	masknez	$a4, $a4, $a5
	addi.w	$a5, $a4, 0
	ori	$a6, $zero, 256
	lu12i.w	$t0, -1
	bgeu	$a5, $a6, .LBB7_2
# %bb.1:
	ori	$t0, $t0, 1536
	b	.LBB7_105
.LBB7_2:                                # %vector.ph
	pcalau12i	$a4, %pc_hi20(.LCPI7_0)
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	pcalau12i	$a5, %pc_hi20(.LCPI7_1)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	pcalau12i	$a6, %pc_hi20(.LCPI7_2)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	pcalau12i	$a7, %pc_hi20(.LCPI7_3)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	xvreplgr2vr.w	$xr0, $a0
	addi.w	$a0, $zero, -32
	ori	$t1, $zero, 512
	xvreplgr2vr.w	$xr7, $t1
	xvrepli.w	$xr1, 32
	ori	$t1, $zero, 192
	.p2align	4, , 16
.LBB7_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$t2, $a0
	xvslli.w	$xr2, $xr6, 1
	xvslli.w	$xr10, $xr5, 1
	xvslli.w	$xr9, $xr4, 1
	xvslli.w	$xr8, $xr3, 1
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t3, $xr8, 4
	bstrins.d	$a0, $t3, 31, 16
	addi.w	$t3, $a0, 0
	addi.w	$a0, $t2, 32
	bnez	$t3, .LBB7_5
# %bb.4:                                # %vector.body
                                        #   in Loop: Header=BB7_3 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t2, $t1, .LBB7_3
.LBB7_5:                                # %middle.split
	beqz	$t3, .LBB7_7
# %bb.6:
	ori	$t0, $t0, 1792
	b	.LBB7_104
.LBB7_7:                                # %vector.ph221
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	ori	$t0, $zero, 1024
	xvreplgr2vr.w	$xr7, $t0
	ori	$t0, $zero, 192
	.p2align	4, , 16
.LBB7_8:                                # %vector.body224
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a0
	xvslli.w	$xr2, $xr6, 2
	xvslli.w	$xr10, $xr5, 2
	xvslli.w	$xr9, $xr4, 2
	xvslli.w	$xr8, $xr3, 2
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t2, $xr8, 4
	bstrins.d	$a0, $t2, 31, 16
	addi.w	$t2, $a0, 0
	addi.w	$a0, $t1, 32
	bnez	$t2, .LBB7_10
# %bb.9:                                # %vector.body224
                                        #   in Loop: Header=BB7_8 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t1, $t0, .LBB7_8
.LBB7_10:                               # %middle.split229
	beqz	$t2, .LBB7_12
# %bb.11:
	addi.w	$t0, $zero, -2048
	b	.LBB7_104
.LBB7_12:                               # %vector.ph233
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	ori	$t0, $zero, 2048
	xvreplgr2vr.w	$xr7, $t0
	ori	$t0, $zero, 192
	.p2align	4, , 16
.LBB7_13:                               # %vector.body236
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a0
	xvslli.w	$xr2, $xr6, 3
	xvslli.w	$xr10, $xr5, 3
	xvslli.w	$xr9, $xr4, 3
	xvslli.w	$xr8, $xr3, 3
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t2, $xr8, 4
	bstrins.d	$a0, $t2, 31, 16
	addi.w	$t2, $a0, 0
	addi.w	$a0, $t1, 32
	bnez	$t2, .LBB7_15
# %bb.14:                               # %vector.body236
                                        #   in Loop: Header=BB7_13 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t1, $t0, .LBB7_13
.LBB7_15:                               # %middle.split241
	beqz	$t2, .LBB7_17
# %bb.16:
	addi.w	$t0, $zero, -1792
	b	.LBB7_104
.LBB7_17:                               # %vector.ph245
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	lu12i.w	$t0, 1
	xvreplgr2vr.w	$xr7, $t0
	ori	$t0, $zero, 192
	.p2align	4, , 16
.LBB7_18:                               # %vector.body248
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a0
	xvslli.w	$xr2, $xr6, 4
	xvslli.w	$xr10, $xr5, 4
	xvslli.w	$xr9, $xr4, 4
	xvslli.w	$xr8, $xr3, 4
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t2, $xr8, 4
	bstrins.d	$a0, $t2, 31, 16
	addi.w	$t2, $a0, 0
	addi.w	$a0, $t1, 32
	bnez	$t2, .LBB7_20
# %bb.19:                               # %vector.body248
                                        #   in Loop: Header=BB7_18 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t1, $t0, .LBB7_18
.LBB7_20:                               # %middle.split253
	beqz	$t2, .LBB7_22
# %bb.21:
	addi.w	$t0, $zero, -1536
	b	.LBB7_104
.LBB7_22:                               # %vector.ph257
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	lu12i.w	$t0, 2
	xvreplgr2vr.w	$xr7, $t0
	ori	$t0, $zero, 192
	.p2align	4, , 16
.LBB7_23:                               # %vector.body260
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a0
	xvslli.w	$xr2, $xr6, 5
	xvslli.w	$xr10, $xr5, 5
	xvslli.w	$xr9, $xr4, 5
	xvslli.w	$xr8, $xr3, 5
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t2, $xr8, 4
	bstrins.d	$a0, $t2, 31, 16
	addi.w	$t2, $a0, 0
	addi.w	$a0, $t1, 32
	bnez	$t2, .LBB7_25
# %bb.24:                               # %vector.body260
                                        #   in Loop: Header=BB7_23 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t1, $t0, .LBB7_23
.LBB7_25:                               # %middle.split265
	beqz	$t2, .LBB7_27
# %bb.26:
	addi.w	$t0, $zero, -1280
	b	.LBB7_104
.LBB7_27:                               # %vector.ph269
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	lu12i.w	$t0, 4
	xvreplgr2vr.w	$xr7, $t0
	ori	$t0, $zero, 192
.LBB7_28:                               # %vector.body272
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a0
	xvslli.w	$xr2, $xr6, 6
	xvslli.w	$xr10, $xr5, 6
	xvslli.w	$xr9, $xr4, 6
	xvslli.w	$xr8, $xr3, 6
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t2, $xr8, 4
	bstrins.d	$a0, $t2, 31, 16
	addi.w	$t2, $a0, 0
	addi.w	$a0, $t1, 32
	bnez	$t2, .LBB7_30
# %bb.29:                               # %vector.body272
                                        #   in Loop: Header=BB7_28 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t1, $t0, .LBB7_28
.LBB7_30:                               # %middle.split277
	beqz	$t2, .LBB7_32
# %bb.31:
	addi.w	$t0, $zero, -1024
	b	.LBB7_104
.LBB7_32:                               # %vector.ph281
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	lu12i.w	$t0, 8
	xvreplgr2vr.w	$xr7, $t0
	ori	$t0, $zero, 192
.LBB7_33:                               # %vector.body284
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a0
	xvslli.w	$xr2, $xr6, 7
	xvslli.w	$xr10, $xr5, 7
	xvslli.w	$xr9, $xr4, 7
	xvslli.w	$xr8, $xr3, 7
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t2, $xr8, 4
	bstrins.d	$a0, $t2, 31, 16
	addi.w	$t2, $a0, 0
	addi.w	$a0, $t1, 32
	bnez	$t2, .LBB7_35
# %bb.34:                               # %vector.body284
                                        #   in Loop: Header=BB7_33 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t1, $t0, .LBB7_33
.LBB7_35:                               # %middle.split289
	beqz	$t2, .LBB7_37
# %bb.36:
	addi.w	$t0, $zero, -768
	b	.LBB7_104
.LBB7_37:                               # %vector.ph293
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	lu12i.w	$t0, 16
	xvreplgr2vr.w	$xr7, $t0
	ori	$t0, $zero, 192
.LBB7_38:                               # %vector.body296
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a0
	xvslli.w	$xr2, $xr6, 8
	xvslli.w	$xr10, $xr5, 8
	xvslli.w	$xr9, $xr4, 8
	xvslli.w	$xr8, $xr3, 8
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t2, $xr8, 4
	bstrins.d	$a0, $t2, 31, 16
	addi.w	$t2, $a0, 0
	addi.w	$a0, $t1, 32
	bnez	$t2, .LBB7_40
# %bb.39:                               # %vector.body296
                                        #   in Loop: Header=BB7_38 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t1, $t0, .LBB7_38
.LBB7_40:                               # %middle.split301
	beqz	$t2, .LBB7_42
# %bb.41:
	addi.w	$t0, $zero, -512
	b	.LBB7_104
.LBB7_42:                               # %vector.ph305
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	lu12i.w	$t0, 32
	xvreplgr2vr.w	$xr7, $t0
	ori	$t0, $zero, 192
.LBB7_43:                               # %vector.body308
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a0
	xvslli.w	$xr2, $xr6, 9
	xvslli.w	$xr10, $xr5, 9
	xvslli.w	$xr9, $xr4, 9
	xvslli.w	$xr8, $xr3, 9
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t2, $xr8, 4
	bstrins.d	$a0, $t2, 31, 16
	addi.w	$t2, $a0, 0
	addi.w	$a0, $t1, 32
	bnez	$t2, .LBB7_45
# %bb.44:                               # %vector.body308
                                        #   in Loop: Header=BB7_43 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t1, $t0, .LBB7_43
.LBB7_45:                               # %middle.split313
	beqz	$t2, .LBB7_47
# %bb.46:
	addi.w	$t0, $zero, -256
	b	.LBB7_104
.LBB7_47:                               # %vector.ph317
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	lu12i.w	$t0, 64
	xvreplgr2vr.w	$xr7, $t0
	ori	$t0, $zero, 192
.LBB7_48:                               # %vector.body320
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a0
	xvslli.w	$xr2, $xr6, 10
	xvslli.w	$xr10, $xr5, 10
	xvslli.w	$xr9, $xr4, 10
	xvslli.w	$xr8, $xr3, 10
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t2, $xr8, 4
	bstrins.d	$a0, $t2, 31, 16
	addi.w	$t2, $a0, 0
	addi.w	$a0, $t1, 32
	bnez	$t2, .LBB7_50
# %bb.49:                               # %vector.body320
                                        #   in Loop: Header=BB7_48 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t1, $t0, .LBB7_48
.LBB7_50:                               # %middle.split325
	beqz	$t2, .LBB7_52
# %bb.51:
	move	$t0, $zero
	b	.LBB7_104
.LBB7_52:                               # %vector.ph329
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	lu12i.w	$t0, 128
	xvreplgr2vr.w	$xr7, $t0
	ori	$t0, $zero, 192
.LBB7_53:                               # %vector.body332
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a0
	xvslli.w	$xr2, $xr6, 11
	xvslli.w	$xr10, $xr5, 11
	xvslli.w	$xr9, $xr4, 11
	xvslli.w	$xr8, $xr3, 11
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t2, $xr8, 4
	bstrins.d	$a0, $t2, 31, 16
	addi.w	$t2, $a0, 0
	addi.w	$a0, $t1, 32
	bnez	$t2, .LBB7_55
# %bb.54:                               # %vector.body332
                                        #   in Loop: Header=BB7_53 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t1, $t0, .LBB7_53
.LBB7_55:                               # %middle.split337
	ori	$t0, $zero, 256
	bnez	$t2, .LBB7_104
# %bb.56:                               # %vector.ph341
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	lu12i.w	$t0, 256
	xvreplgr2vr.w	$xr7, $t0
	ori	$t0, $zero, 192
.LBB7_57:                               # %vector.body344
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a0
	xvslli.w	$xr2, $xr6, 12
	xvslli.w	$xr10, $xr5, 12
	xvslli.w	$xr9, $xr4, 12
	xvslli.w	$xr8, $xr3, 12
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t2, $xr8, 4
	bstrins.d	$a0, $t2, 31, 16
	addi.w	$t2, $a0, 0
	addi.w	$a0, $t1, 32
	bnez	$t2, .LBB7_59
# %bb.58:                               # %vector.body344
                                        #   in Loop: Header=BB7_57 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t1, $t0, .LBB7_57
.LBB7_59:                               # %middle.split349
	ori	$t0, $zero, 512
	bnez	$t2, .LBB7_104
# %bb.60:                               # %vector.ph353
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	lu12i.w	$t0, 512
	xvreplgr2vr.w	$xr7, $t0
	ori	$t0, $zero, 192
.LBB7_61:                               # %vector.body356
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a0
	xvslli.w	$xr2, $xr6, 13
	xvslli.w	$xr10, $xr5, 13
	xvslli.w	$xr9, $xr4, 13
	xvslli.w	$xr8, $xr3, 13
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t2, $xr8, 4
	bstrins.d	$a0, $t2, 31, 16
	addi.w	$t2, $a0, 0
	addi.w	$a0, $t1, 32
	bnez	$t2, .LBB7_63
# %bb.62:                               # %vector.body356
                                        #   in Loop: Header=BB7_61 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t1, $t0, .LBB7_61
.LBB7_63:                               # %middle.split361
	ori	$t0, $zero, 768
	bnez	$t2, .LBB7_104
# %bb.64:                               # %vector.ph365
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	lu12i.w	$t0, 1024
	xvreplgr2vr.w	$xr7, $t0
	ori	$t0, $zero, 192
.LBB7_65:                               # %vector.body368
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a0
	xvslli.w	$xr2, $xr6, 14
	xvslli.w	$xr10, $xr5, 14
	xvslli.w	$xr9, $xr4, 14
	xvslli.w	$xr8, $xr3, 14
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t2, $xr8, 4
	bstrins.d	$a0, $t2, 31, 16
	addi.w	$t2, $a0, 0
	addi.w	$a0, $t1, 32
	bnez	$t2, .LBB7_67
# %bb.66:                               # %vector.body368
                                        #   in Loop: Header=BB7_65 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t1, $t0, .LBB7_65
.LBB7_67:                               # %middle.split373
	ori	$t0, $zero, 1024
	bnez	$t2, .LBB7_104
# %bb.68:                               # %vector.ph377
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	lu12i.w	$t0, 2048
	xvreplgr2vr.w	$xr7, $t0
	ori	$t0, $zero, 192
.LBB7_69:                               # %vector.body380
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a0
	xvslli.w	$xr2, $xr6, 15
	xvslli.w	$xr10, $xr5, 15
	xvslli.w	$xr9, $xr4, 15
	xvslli.w	$xr8, $xr3, 15
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t2, $xr8, 4
	bstrins.d	$a0, $t2, 31, 16
	addi.w	$t2, $a0, 0
	addi.w	$a0, $t1, 32
	bnez	$t2, .LBB7_71
# %bb.70:                               # %vector.body380
                                        #   in Loop: Header=BB7_69 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t1, $t0, .LBB7_69
.LBB7_71:                               # %middle.split385
	ori	$t0, $zero, 1280
	bnez	$t2, .LBB7_104
# %bb.72:                               # %vector.ph389
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	lu12i.w	$t0, 4096
	xvreplgr2vr.w	$xr7, $t0
	ori	$t0, $zero, 192
.LBB7_73:                               # %vector.body392
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a0
	xvslli.w	$xr2, $xr6, 16
	xvslli.w	$xr10, $xr5, 16
	xvslli.w	$xr9, $xr4, 16
	xvslli.w	$xr8, $xr3, 16
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t2, $xr8, 4
	bstrins.d	$a0, $t2, 31, 16
	addi.w	$t2, $a0, 0
	addi.w	$a0, $t1, 32
	bnez	$t2, .LBB7_75
# %bb.74:                               # %vector.body392
                                        #   in Loop: Header=BB7_73 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t1, $t0, .LBB7_73
.LBB7_75:                               # %middle.split397
	ori	$t0, $zero, 1536
	bnez	$t2, .LBB7_104
# %bb.76:                               # %vector.ph401
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	lu12i.w	$t0, 8192
	xvreplgr2vr.w	$xr7, $t0
	ori	$t0, $zero, 192
.LBB7_77:                               # %vector.body404
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a0
	xvslli.w	$xr2, $xr6, 17
	xvslli.w	$xr10, $xr5, 17
	xvslli.w	$xr9, $xr4, 17
	xvslli.w	$xr8, $xr3, 17
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t2, $xr8, 4
	bstrins.d	$a0, $t2, 31, 16
	addi.w	$t2, $a0, 0
	addi.w	$a0, $t1, 32
	bnez	$t2, .LBB7_79
# %bb.78:                               # %vector.body404
                                        #   in Loop: Header=BB7_77 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t1, $t0, .LBB7_77
.LBB7_79:                               # %middle.split409
	ori	$t0, $zero, 1792
	bnez	$t2, .LBB7_104
# %bb.80:                               # %vector.ph413
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	lu12i.w	$t0, 16384
	xvreplgr2vr.w	$xr7, $t0
	ori	$t0, $zero, 192
.LBB7_81:                               # %vector.body416
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a0
	xvslli.w	$xr2, $xr6, 18
	xvslli.w	$xr10, $xr5, 18
	xvslli.w	$xr9, $xr4, 18
	xvslli.w	$xr8, $xr3, 18
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t2, $xr8, 4
	bstrins.d	$a0, $t2, 31, 16
	addi.w	$t2, $a0, 0
	addi.w	$a0, $t1, 32
	bnez	$t2, .LBB7_83
# %bb.82:                               # %vector.body416
                                        #   in Loop: Header=BB7_81 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t1, $t0, .LBB7_81
.LBB7_83:                               # %middle.split421
	ori	$t0, $zero, 2048
	bnez	$t2, .LBB7_104
# %bb.84:                               # %vector.ph425
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	lu12i.w	$t0, 32768
	xvreplgr2vr.w	$xr7, $t0
	ori	$t0, $zero, 192
.LBB7_85:                               # %vector.body428
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a0
	xvslli.w	$xr2, $xr6, 19
	xvslli.w	$xr10, $xr5, 19
	xvslli.w	$xr9, $xr4, 19
	xvslli.w	$xr8, $xr3, 19
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t2, $xr8, 4
	bstrins.d	$a0, $t2, 31, 16
	addi.w	$t2, $a0, 0
	addi.w	$a0, $t1, 32
	bnez	$t2, .LBB7_87
# %bb.86:                               # %vector.body428
                                        #   in Loop: Header=BB7_85 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t1, $t0, .LBB7_85
.LBB7_87:                               # %middle.split433
	ori	$t0, $zero, 2304
	bnez	$t2, .LBB7_104
# %bb.88:                               # %vector.ph437
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	lu12i.w	$t0, 65536
	xvreplgr2vr.w	$xr7, $t0
	ori	$t0, $zero, 192
.LBB7_89:                               # %vector.body440
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a0
	xvslli.w	$xr2, $xr6, 20
	xvslli.w	$xr10, $xr5, 20
	xvslli.w	$xr9, $xr4, 20
	xvslli.w	$xr8, $xr3, 20
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t2, $xr8, 4
	bstrins.d	$a0, $t2, 31, 16
	addi.w	$t2, $a0, 0
	addi.w	$a0, $t1, 32
	bnez	$t2, .LBB7_91
# %bb.90:                               # %vector.body440
                                        #   in Loop: Header=BB7_89 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t1, $t0, .LBB7_89
.LBB7_91:                               # %middle.split445
	ori	$t0, $zero, 2560
	bnez	$t2, .LBB7_104
# %bb.92:                               # %vector.ph449
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	lu12i.w	$t0, 131072
	xvreplgr2vr.w	$xr7, $t0
	ori	$t0, $zero, 192
.LBB7_93:                               # %vector.body452
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a0
	xvslli.w	$xr2, $xr6, 21
	xvslli.w	$xr10, $xr5, 21
	xvslli.w	$xr9, $xr4, 21
	xvslli.w	$xr8, $xr3, 21
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t2, $xr8, 4
	bstrins.d	$a0, $t2, 31, 16
	addi.w	$t2, $a0, 0
	addi.w	$a0, $t1, 32
	bnez	$t2, .LBB7_95
# %bb.94:                               # %vector.body452
                                        #   in Loop: Header=BB7_93 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t1, $t0, .LBB7_93
.LBB7_95:                               # %middle.split457
	ori	$t0, $zero, 2816
	bnez	$t2, .LBB7_104
# %bb.96:                               # %vector.ph461
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	lu12i.w	$t0, 262144
	xvreplgr2vr.w	$xr7, $t0
	ori	$t0, $zero, 192
.LBB7_97:                               # %vector.body464
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a0
	xvslli.w	$xr2, $xr6, 22
	xvslli.w	$xr10, $xr5, 22
	xvslli.w	$xr9, $xr4, 22
	xvslli.w	$xr8, $xr3, 22
	xvadd.w	$xr8, $xr8, $xr7
	xvadd.w	$xr9, $xr9, $xr7
	xvadd.w	$xr10, $xr10, $xr7
	xvadd.w	$xr2, $xr2, $xr7
	xvsle.wu	$xr11, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr11, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr11, 1
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 17
	xvpickve2gr.w	$a0, $xr11, 2
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 34
	xvpickve2gr.w	$a0, $xr11, 3
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 51
	xvpickve2gr.w	$a0, $xr11, 4
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 68
	xvpickve2gr.w	$a0, $xr11, 5
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpickve2gr.w	$a0, $xr11, 6
	xvreplgr2vr.b	$xr12, $a0
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 102
	xvpickve2gr.w	$a0, $xr11, 7
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 119
	xvsle.wu	$xr10, $xr0, $xr10
	xvpickve2gr.w	$a0, $xr10, 0
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 136
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 153
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 204
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 221
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 238
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 255
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 0
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 17
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 34
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 51
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 68
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 85
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 48
	xvextrins.b	$xr2, $xr10, 102
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 119
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 136
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 153
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 170
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 187
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 204
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 221
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 238
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 255
	xvmskltz.b	$xr8, $xr2
	xvpickve2gr.wu	$a0, $xr8, 0
	xvpickve2gr.wu	$t2, $xr8, 4
	bstrins.d	$a0, $t2, 31, 16
	addi.w	$t2, $a0, 0
	addi.w	$a0, $t1, 32
	bnez	$t2, .LBB7_99
# %bb.98:                               # %vector.body464
                                        #   in Loop: Header=BB7_97 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$t1, $t0, .LBB7_97
.LBB7_99:                               # %middle.split469
	ori	$t0, $zero, 3072
	bnez	$t2, .LBB7_104
# %bb.100:                              # %vector.ph473
	xvld	$xr3, $a4, %pc_lo12(.LCPI7_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI7_1)
	xvld	$xr5, $a6, %pc_lo12(.LCPI7_2)
	xvld	$xr6, $a7, %pc_lo12(.LCPI7_3)
	addi.w	$a0, $zero, -32
	ori	$a4, $zero, 192
.LBB7_101:                              # %vector.body476
                                        # =>This Inner Loop Header: Depth=1
	move	$a5, $a0
	xvslli.w	$xr2, $xr6, 23
	xvslli.w	$xr9, $xr5, 23
	xvslli.w	$xr8, $xr4, 23
	xvslli.w	$xr7, $xr3, 23
	xvbitseti.w	$xr7, $xr7, 31
	xvbitseti.w	$xr8, $xr8, 31
	xvbitseti.w	$xr9, $xr9, 31
	xvbitseti.w	$xr2, $xr2, 31
	xvsle.wu	$xr10, $xr0, $xr2
	xvpickve2gr.w	$a0, $xr10, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr10, 1
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 17
	xvpickve2gr.w	$a0, $xr10, 2
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 34
	xvpickve2gr.w	$a0, $xr10, 3
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 51
	xvpickve2gr.w	$a0, $xr10, 4
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 68
	xvpickve2gr.w	$a0, $xr10, 5
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 85
	xvpickve2gr.w	$a0, $xr10, 6
	xvreplgr2vr.b	$xr11, $a0
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 102
	xvpickve2gr.w	$a0, $xr10, 7
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 119
	xvsle.wu	$xr9, $xr0, $xr9
	xvpickve2gr.w	$a0, $xr9, 0
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 136
	xvpickve2gr.w	$a0, $xr9, 1
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 153
	xvpickve2gr.w	$a0, $xr9, 2
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 170
	xvpickve2gr.w	$a0, $xr9, 3
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 187
	xvpickve2gr.w	$a0, $xr9, 4
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 204
	xvpickve2gr.w	$a0, $xr9, 5
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 221
	xvpickve2gr.w	$a0, $xr9, 6
	xvreplgr2vr.b	$xr10, $a0
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 238
	xvpickve2gr.w	$a0, $xr9, 7
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 18
	xvextrins.b	$xr2, $xr9, 255
	xvsle.wu	$xr8, $xr0, $xr8
	xvpickve2gr.w	$a0, $xr8, 0
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 0
	xvpickve2gr.w	$a0, $xr8, 1
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 17
	xvpickve2gr.w	$a0, $xr8, 2
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 34
	xvpickve2gr.w	$a0, $xr8, 3
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 51
	xvpickve2gr.w	$a0, $xr8, 4
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 68
	xvpickve2gr.w	$a0, $xr8, 5
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 85
	xvpickve2gr.w	$a0, $xr8, 6
	xvreplgr2vr.b	$xr9, $a0
	xvpermi.q	$xr9, $xr2, 48
	xvextrins.b	$xr2, $xr9, 102
	xvpickve2gr.w	$a0, $xr8, 7
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 119
	xvsle.wu	$xr7, $xr0, $xr7
	xvpickve2gr.w	$a0, $xr7, 0
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 136
	xvpickve2gr.w	$a0, $xr7, 1
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 153
	xvpickve2gr.w	$a0, $xr7, 2
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 170
	xvpickve2gr.w	$a0, $xr7, 3
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 187
	xvpickve2gr.w	$a0, $xr7, 4
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 204
	xvpickve2gr.w	$a0, $xr7, 5
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 221
	xvpickve2gr.w	$a0, $xr7, 6
	xvreplgr2vr.b	$xr8, $a0
	xvpermi.q	$xr8, $xr2, 48
	xvextrins.b	$xr2, $xr8, 238
	xvpickve2gr.w	$a0, $xr7, 7
	xvreplgr2vr.b	$xr7, $a0
	xvpermi.q	$xr7, $xr2, 48
	xvextrins.b	$xr2, $xr7, 255
	xvmskltz.b	$xr7, $xr2
	xvpickve2gr.wu	$a0, $xr7, 0
	xvpickve2gr.wu	$a6, $xr7, 4
	bstrins.d	$a0, $a6, 31, 16
	addi.w	$a6, $a0, 0
	addi.w	$a0, $a5, 32
	bnez	$a6, .LBB7_103
# %bb.102:                              # %vector.body476
                                        #   in Loop: Header=BB7_101 Depth=1
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr4, $xr4, $xr1
	xvadd.w	$xr3, $xr3, $xr1
	bne	$a5, $a4, .LBB7_101
.LBB7_103:                              # %middle.split481
	ori	$t0, $zero, 3328
	beqz	$a6, .LBB7_109
.LBB7_104:                              # %.loopexit27.i.sink.split
	pcalau12i	$a4, %pc_hi20(.LCPI7_4)
	xvld	$xr0, $a4, %pc_lo12(.LCPI7_4)
	xvslli.b	$xr1, $xr2, 7
	xvsrai.b	$xr1, $xr1, 7
	xvand.v	$xr0, $xr1, $xr0
	xvpermi.q	$xr1, $xr0, 1
	vmax.bu	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 8
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.bu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 1
	vmax.bu	$vr0, $vr1, $vr0
	vpickve2gr.b	$a4, $vr0, 0
	ori	$a5, $zero, 32
	sub.d	$a4, $a5, $a4
	andi	$a4, $a4, 255
	add.w	$a4, $a0, $a4
.LBB7_105:                              # %.loopexit27.i
	add.d	$a0, $t0, $a4
	bstrpick.d	$a0, $a0, 31, 0
	lu12i.w	$a4, 244
	ori	$a4, $a4, 577
	bltu	$a2, $a4, .LBB7_108
.LBB7_106:                              # %.lr.ph.i.i.preheader
	lu12i.w	$a4, 488
	ori	$a4, $a4, 1153
	.p2align	4, , 16
.LBB7_107:                              # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a5, $a2
	srli.d	$a2, $a2, 1
	srli.d	$a1, $a1, 1
	bltu	$a4, $a5, .LBB7_107
.LBB7_108:                              # %_ZL11MyMultDiv64yyy.exit
	mul.d	$a0, $a0, $a0
	alsl.d	$a0, $a0, $a0, 2
	srli.d	$a0, $a0, 16
	addi.d	$a0, $a0, 870
	mul.d	$a0, $a0, $a3
	ori	$a3, $zero, 1
	sltu	$a4, $a3, $a1
	masknez	$a3, $a3, $a4
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a3
	mul.d	$a0, $a0, $a2
	div.du	$a0, $a0, $a1
	ret
.LBB7_109:
	ori	$a0, $zero, 3584
	lu12i.w	$a4, 244
	ori	$a4, $a4, 577
	bgeu	$a2, $a4, .LBB7_106
	b	.LBB7_108
.Lfunc_end7:
	.size	_Z17GetCompressRatingjyyy, .Lfunc_end7-_Z17GetCompressRatingjyyy
                                        # -- End function
	.globl	_Z19GetDecompressRatingyyyyj    # -- Begin function _Z19GetDecompressRatingyyyyj
	.p2align	5
	.type	_Z19GetDecompressRatingyyyyj,@function
_Z19GetDecompressRatingyyyyj:           # @_Z19GetDecompressRatingyyyyj
# %bb.0:
	lu12i.w	$a5, 244
	ori	$a5, $a5, 577
	bltu	$a1, $a5, .LBB8_3
# %bb.1:                                # %.lr.ph.i.i.preheader
	lu12i.w	$a5, 488
	ori	$a5, $a5, 1153
	.p2align	4, , 16
.LBB8_2:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a6, $a1
	srli.d	$a1, $a1, 1
	srli.d	$a0, $a0, 1
	bltu	$a5, $a6, .LBB8_2
.LBB8_3:                                # %_ZL11MyMultDiv64yyy.exit
	ori	$a5, $zero, 200
	mul.d	$a3, $a3, $a5
	alsl.d	$a2, $a2, $a3, 2
	bstrpick.d	$a3, $a4, 31, 0
	mul.d	$a2, $a2, $a3
	ori	$a3, $zero, 1
	sltu	$a4, $a3, $a0
	masknez	$a3, $a3, $a4
	maskeqz	$a0, $a0, $a4
	or	$a0, $a0, $a3
	mul.d	$a1, $a2, $a1
	div.du	$a0, $a1, $a0
	ret
.Lfunc_end8:
	.size	_Z19GetDecompressRatingyyyyj, .Lfunc_end8-_Z19GetDecompressRatingyyyyj
                                        # -- End function
	.globl	_ZN12CEncoderInfo4InitEjjP20CBaseRandomGenerator # -- Begin function _ZN12CEncoderInfo4InitEjjP20CBaseRandomGenerator
	.p2align	5
	.type	_ZN12CEncoderInfo4InitEjjP20CBaseRandomGenerator,@function
_ZN12CEncoderInfo4InitEjjP20CBaseRandomGenerator: # @_ZN12CEncoderInfo4InitEjjP20CBaseRandomGenerator
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	st.d	$a3, $a0, 200
	ld.d	$a0, $a0, 192
	addu16i.d	$s3, $a1, 1
	st.w	$s3, $fp, 164
	bstrpick.d	$s2, $s3, 31, 0
	lu12i.w	$s4, -524176
	beqz	$a0, .LBB9_2
# %bb.1:
	ld.d	$a1, $fp, 184
	beq	$a1, $s2, .LBB9_3
.LBB9_2:                                # %_ZN12CBenchBuffer5AllocEm.exit
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 192
	move	$a0, $s2
	pcaddu18i	$ra, %call36(MidAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 192
	st.d	$s2, $fp, 184
	beqz	$a0, .LBB9_13
.LBB9_3:                                # %_ZN12CBenchBuffer5AllocEm.exit43
	addi.d	$a0, $fp, 176
	bstrpick.d	$a1, $s3, 31, 1
	addi.w	$s3, $a1, 1024
	pcaddu18i	$ra, %call36(_ZN21CBenchRandomGenerator8GenerateEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	ld.d	$a1, $fp, 184
	pcaddu18i	$ra, %call36(CrcCalc)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 160
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$zero, $a0, 24
	st.w	$zero, $a0, 32
	pcalau12i	$a0, %pc_hi20(_ZTV19CBenchmarkOutStream)
	addi.d	$a0, $a0, %pc_lo12(_ZTV19CBenchmarkOutStream)
	addi.d	$s5, $a0, 16
	st.d	$s5, $s2, 0
	addi.d	$s6, $a0, 80
	st.d	$s6, $s2, 8
	st.d	$s2, $fp, 136
	bstrpick.d	$s3, $s3, 31, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
	st.d	$zero, $s2, 24
	move	$a0, $s3
	pcaddu18i	$ra, %call36(MidAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 24
	st.d	$s3, $s2, 16
	ori	$s2, $s4, 14
	beqz	$a0, .LBB9_14
# %bb.4:                                # %_ZN12CBenchBuffer5AllocEm.exit43.thread
	ld.d	$s3, $fp, 136
	beqz	$s3, .LBB9_6
# %bb.5:
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s3
	jirl	$ra, $a1, 0
.LBB9_6:
	ld.d	$a0, $fp, 144
	beqz	$a0, .LBB9_8
# %bb.7:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB9_8:                                # %_ZN12CBenchBuffer5AllocEm.exit51
	st.d	$s3, $fp, 144
	st.d	$zero, $fp, 208
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$zero, $a0, 24
	st.d	$s5, $a0, 0
	st.d	$s6, $a0, 8
	st.d	$a0, $fp, 208
	ori	$s4, $zero, 1
	st.w	$s4, $a0, 32
	st.d	$a0, $fp, 216
	move	$a0, $zero
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
	st.d	$zero, $s3, 24
	ori	$a0, $zero, 5
	ori	$s5, $zero, 5
	pcaddu18i	$ra, %call36(MidAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 24
	st.d	$s5, $s3, 16
	beqz	$a0, .LBB9_14
# %bb.9:                                # %_ZN12CBenchBuffer5AllocEm.exit51.thread
	ld.d	$a0, $fp, 208
	st.w	$zero, $a0, 36
	lu32i.d	$s4, 13
	st.d	$s4, $sp, 64
	ld.d	$a0, $fp, 32
	ori	$a1, $zero, 19
	st.h	$a1, $sp, 32
	st.w	$s1, $sp, 40
	ld.d	$a2, $a0, 0
	st.h	$a1, $sp, 48
	st.w	$s0, $sp, 56
	st.d	$zero, $sp, 24
	ld.d	$a3, $a2, 0
.Ltmp0:                                 # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(IID_ICompressSetCoderProperties)
	ld.d	$a1, $a1, %got_pc_lo12(IID_ICompressSetCoderProperties)
	addi.d	$a2, $sp, 24
	jirl	$ra, $a3, 0
.Ltmp1:                                 # EH_LABEL
# %bb.10:                               # %_ZNK9CMyComPtrI14ICompressCoderE14QueryInterfaceI27ICompressSetCoderPropertiesEEiRK4GUIDPPT_.exit
	move	$s2, $a0
	beqz	$a0, .LBB9_15
.LBB9_11:
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB9_14
# %bb.12:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp21:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp22:                                # EH_LABEL
	b	.LBB9_14
.LBB9_13:
	ori	$s2, $s4, 14
.LBB9_14:
	move	$a0, $s2
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
	ret
.LBB9_15:
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB9_23
# %bb.16:
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
.Ltmp3:                                 # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 32
	ori	$a3, $zero, 2
	jirl	$ra, $a4, 0
.Ltmp4:                                 # EH_LABEL
# %bb.17:
	move	$s2, $a0
	bnez	$a0, .LBB9_11
# %bb.18:
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	st.d	$zero, $sp, 16
	ld.d	$a3, $a1, 0
.Ltmp6:                                 # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(IID_ICompressWriteCoderProperties)
	ld.d	$a1, $a1, %got_pc_lo12(IID_ICompressWriteCoderProperties)
	addi.d	$a2, $sp, 16
	jirl	$ra, $a3, 0
.Ltmp7:                                 # EH_LABEL
# %bb.19:                               # %_ZNK9CMyComPtrI14ICompressCoderE14QueryInterfaceI29ICompressWriteCoderPropertiesEEiRK4GUIDPPT_.exit
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB9_24
# %bb.20:
	ld.d	$a2, $a0, 0
	ld.d	$a1, $fp, 216
	ld.d	$a2, $a2, 40
.Ltmp9:                                 # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp10:                                # EH_LABEL
# %bb.21:
	move	$s2, $a0
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB9_11
# %bb.22:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp18:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp19:                                # EH_LABEL
	b	.LBB9_11
.LBB9_23:
	lu12i.w	$a0, -524284
	ori	$s2, $a0, 5
	b	.LBB9_14
.LBB9_24:
	move	$s2, $zero
	b	.LBB9_11
.LBB9_25:
.Ltmp20:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB9_26:
.Ltmp11:                                # EH_LABEL
	b	.LBB9_28
.LBB9_27:
.Ltmp8:                                 # EH_LABEL
.LBB9_28:
	move	$fp, $a0
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB9_35
# %bb.29:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp12:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp13:                                # EH_LABEL
	b	.LBB9_35
.LBB9_30:
.Ltmp14:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB9_31:
.Ltmp5:                                 # EH_LABEL
	b	.LBB9_34
.LBB9_32:
.Ltmp23:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB9_33:
.Ltmp2:                                 # EH_LABEL
.LBB9_34:
	move	$fp, $a0
.LBB9_35:
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB9_37
# %bb.36:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp15:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp16:                                # EH_LABEL
.LBB9_37:                               # %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit57
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_38:
.Ltmp17:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN12CEncoderInfo4InitEjjP20CBaseRandomGenerator, .Lfunc_end9-_ZN12CEncoderInfo4InitEjjP20CBaseRandomGenerator
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
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
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp12-.Ltmp19                #   Call between .Ltmp19 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp15-.Ltmp13                #   Call between .Ltmp13 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Lfunc_end9-.Ltmp16            #   Call between .Ltmp16 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN21CBenchRandomGenerator8GenerateEv,"axG",@progbits,_ZN21CBenchRandomGenerator8GenerateEv,comdat
	.weak	_ZN21CBenchRandomGenerator8GenerateEv # -- Begin function _ZN21CBenchRandomGenerator8GenerateEv
	.p2align	5
	.type	_ZN21CBenchRandomGenerator8GenerateEv,@function
_ZN21CBenchRandomGenerator8GenerateEv:  # @_ZN21CBenchRandomGenerator8GenerateEv
	.cfi_startproc
# %bb.0:
	ld.d	$a1, $a0, 8
	beqz	$a1, .LBB10_16
# %bb.1:                                # %.lr.ph
	move	$a7, $zero
	move	$a1, $zero
	ori	$a3, $zero, 1
	lu12i.w	$a2, 15
	ori	$a2, $a2, 4095
	vreplgr2vr.w	$vr0, $a2
	lu12i.w	$a2, 9
	ori	$a2, $a2, 105
	lu32i.d	$a2, 18000
	vreplgr2vr.d	$vr1, $a2
	lu12i.w	$a2, 32
	ori	$a4, $zero, 1024
	addi.d	$a5, $zero, -2
	ori	$a6, $zero, 24
	b	.LBB10_4
	.p2align	4, , 16
.LBB10_2:                               #   in Loop: Header=BB10_4 Depth=1
	ld.d	$t0, $a0, 16
	addi.w	$a1, $a1, 1
	stx.b	$t2, $t0, $a7
.LBB10_3:                               # %.critedge
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.d	$t0, $a0, 8
	bstrpick.d	$a7, $a1, 31, 0
	bgeu	$a7, $t0, .LBB10_16
.LBB10_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_9 Depth 2
                                        #     Child Loop BB10_13 Depth 2
	ld.d	$t0, $a0, 24
	ld.d	$t2, $t0, 0
	ld.wu	$t1, $t0, 4
	vinsgr2vr.d	$vr2, $t2, 0
	vand.v	$vr3, $vr2, $vr0
	vsrli.w	$vr2, $vr2, 16
	vmadd.w	$vr2, $vr3, $vr1
	vpickve2gr.w	$t2, $vr2, 1
	vpickve2gr.w	$t3, $vr2, 0
	vstelm.w	$vr2, $t0, 0, 0
	slli.d	$t3, $t3, 16
	vstelm.w	$vr2, $t0, 4, 1
	add.w	$t3, $t2, $t3
	bstrpick.d	$t2, $t3, 31, 2
	bltu	$a1, $a4, .LBB10_2
# %bb.5:                                #   in Loop: Header=BB10_4 Depth=1
	and	$t1, $t1, $a2
	beqz	$t1, .LBB10_2
# %bb.6:                                #   in Loop: Header=BB10_4 Depth=1
	bstrpick.d	$a7, $t3, 31, 4
	andi	$t1, $t2, 3
	addi.d	$t2, $t1, 1
	sll.w	$t1, $a5, $t1
	andn	$t3, $a7, $t1
	srl.w	$t1, $a7, $t2
	andi	$t2, $t1, 7
	addi.d	$a7, $t3, 1
	beqz	$t2, .LBB10_12
# %bb.7:                                #   in Loop: Header=BB10_4 Depth=1
	bstrpick.d	$t2, $t1, 31, 5
	bstrpick.d	$t1, $t1, 4, 3
	bstrpick.d	$t2, $t2, 58, 0
	addi.d	$t3, $t1, 1
	srl.w	$t3, $t2, $t3
	b	.LBB10_9
	.p2align	4, , 16
.LBB10_8:                               #   in Loop: Header=BB10_9 Depth=2
	addi.d	$a3, $zero, -64
	sll.w	$a3, $a3, $t4
	vand.v	$vr4, $vr2, $vr0
	vsrli.w	$vr3, $vr2, 16
	vmadd.w	$vr3, $vr4, $vr1
	andn	$a3, $t3, $a3
	vori.b	$vr2, $vr3, 0
	vpickve2gr.w	$t3, $vr3, 1
	bltu	$a3, $a1, .LBB10_11
.LBB10_9:                               #   Parent Loop BB10_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$t4, $t3, 31
	vand.v	$vr3, $vr2, $vr0
	vsrli.w	$vr2, $vr2, 16
	vmadd.w	$vr2, $vr3, $vr1
	vpickve2gr.w	$t3, $vr2, 1
	vpickve2gr.w	$t5, $vr2, 0
	slli.d	$t5, $t5, 16
	add.w	$t3, $t3, $t5
	bgeu	$a6, $t4, .LBB10_8
# %bb.10:                               #   in Loop: Header=BB10_9 Depth=2
	vori.b	$vr3, $vr2, 0
	vinsgr2vr.w	$vr3, $t3, 1
	vpickve2gr.w	$t3, $vr3, 1
	bgeu	$a3, $a1, .LBB10_9
.LBB10_11:                              #   in Loop: Header=BB10_4 Depth=1
	sll.w	$t1, $a5, $t1
	andn	$t1, $t2, $t1
	add.d	$a7, $t1, $a7
	vstelm.w	$vr3, $t0, 0, 0
	vstelm.w	$vr2, $t0, 4, 1
	addi.w	$a3, $a3, 1
.LBB10_12:                              #   in Loop: Header=BB10_4 Depth=1
	add.w	$t0, $a7, $a1
	sub.w	$t1, $zero, $a3
	.p2align	4, , 16
.LBB10_13:                              #   Parent Loop BB10_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $a0, 8
	bstrpick.d	$t2, $a1, 31, 0
	bgeu	$t2, $t3, .LBB10_3
# %bb.14:                               #   in Loop: Header=BB10_13 Depth=2
	ld.d	$t3, $a0, 16
	add.d	$t4, $t1, $a1
	bstrpick.d	$t4, $t4, 31, 0
	ldx.b	$t4, $t3, $t4
	stx.b	$t4, $t3, $t2
	addi.w	$a7, $a7, -1
	addi.w	$a1, $a1, 1
	bnez	$a7, .LBB10_13
# %bb.15:                               #   in Loop: Header=BB10_4 Depth=1
	move	$a1, $t0
	b	.LBB10_3
.LBB10_16:                              # %._crit_edge
	ret
.Lfunc_end10:
	.size	_ZN21CBenchRandomGenerator8GenerateEv, .Lfunc_end10-_ZN21CBenchRandomGenerator8GenerateEv
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN12CEncoderInfo6EncodeEv      # -- Begin function _ZN12CEncoderInfo6EncodeEv
	.p2align	5
	.type	_ZN12CEncoderInfo6EncodeEv,@function
_ZN12CEncoderInfo6EncodeEv:             # @_ZN12CEncoderInfo6EncodeEv
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s0, $a0
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV18CBenchmarkInStream+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV18CBenchmarkInStream+16)
	st.d	$a0, $fp, 0
	ld.d	$a0, $s0, 192
	ori	$a1, $zero, 1
	st.w	$a1, $fp, 8
	ld.d	$a1, $s0, 184
	st.d	$a0, $fp, 16
	ld.d	$a0, $s0, 32
	ld.d	$a2, $s0, 136
	st.d	$a1, $fp, 32
	st.d	$zero, $fp, 24
	ld.d	$a1, $a0, 0
	st.w	$zero, $a2, 36
	ld.d	$a2, $s0, 144
	ld.d	$a5, $s0, 56
	ld.d	$a6, $a1, 40
.Ltmp24:                                # EH_LABEL
	move	$a1, $fp
	move	$a3, $zero
	move	$a4, $zero
	jirl	$ra, $a6, 0
.Ltmp25:                                # EH_LABEL
# %bb.1:
	move	$s1, $a0
	bnez	$a0, .LBB11_5
# %bb.2:
	ld.d	$a0, $s0, 136
	ld.w	$a1, $a0, 36
	ld.d	$a0, $s0, 32
	st.w	$a1, $s0, 168
	beqz	$a0, .LBB11_5
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp27:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp28:                                # EH_LABEL
# %bb.4:                                # %.noexc
	st.d	$zero, $s0, 32
.LBB11_5:                               # %_ZN9CMyComPtrI14ICompressCoderE7ReleaseEv.exit
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
.Ltmp33:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp34:                                # EH_LABEL
# %bb.6:                                # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
	move	$a0, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB11_7:
.Ltmp29:                                # EH_LABEL
	b	.LBB11_10
.LBB11_8:
.Ltmp35:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_9:
.Ltmp26:                                # EH_LABEL
.LBB11_10:
	move	$s0, $a0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
.Ltmp30:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp31:                                # EH_LABEL
# %bb.11:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit14
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB11_12:
.Ltmp32:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN12CEncoderInfo6EncodeEv, .Lfunc_end11-_ZN12CEncoderInfo6EncodeEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp24-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin1          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin1          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin1          #     jumps to .Ltmp35
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp34-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp30-.Ltmp34                #   Call between .Ltmp34 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin1          #     jumps to .Ltmp32
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp31-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Lfunc_end11-.Ltmp31           #   Call between .Ltmp31 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN12CEncoderInfo6DecodeEj      # -- Begin function _ZN12CEncoderInfo6DecodeEj
	.p2align	5
	.type	_ZN12CEncoderInfo6DecodeEj,@function
_ZN12CEncoderInfo6DecodeEj:             # @_ZN12CEncoderInfo6DecodeEj
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
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
	move	$s0, $a1
	move	$s1, $a0
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV18CBenchmarkInStream+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV18CBenchmarkInStream+16)
	bstrpick.d	$a0, $s0, 31, 0
	alsl.d	$s6, $a0, $s1, 3
	ld.d	$a0, $s6, 112
	st.d	$a1, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 1
	st.w	$a2, $fp, 8
	st.d	$zero, $sp, 24
	ld.d	$a3, $a1, 0
.Ltmp36:                                # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(IID_ICompressSetDecoderProperties2)
	ld.d	$a1, $a1, %got_pc_lo12(IID_ICompressSetDecoderProperties2)
	addi.d	$a2, $sp, 24
	jirl	$ra, $a3, 0
.Ltmp37:                                # EH_LABEL
# %bb.1:                                # %_ZNK9CMyComPtrI14ICompressCoderE14QueryInterfaceI30ICompressSetDecoderProperties2EEiRK4GUIDPPT_.exit
	ld.d	$s2, $sp, 24
	beqz	$s2, .LBB12_14
# %bb.2:
.Ltmp39:                                # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
# %bb.3:                                # %_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit
	move	$s0, $a0
	addi.d	$s2, $s6, 112
	pcalau12i	$a0, %pc_hi20(_ZTV13CCrcOutStream+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CCrcOutStream+16)
	st.d	$a0, $s0, 0
	ld.d	$s3, $s6, 40
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $s3, 56
	ld.w	$a0, $s1, 72
	beqz	$a0, .LBB12_11
# %bb.4:                                # %.lr.ph
	move	$s4, $zero
	ld.wu	$a1, $s1, 168
	addi.w	$s5, $zero, -1
	addi.d	$s6, $s6, 56
	move	$s7, $s5
	lu32i.d	$s7, 0
	.p2align	4, , 16
.LBB12_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 136
	ld.d	$a0, $a0, 24
	st.d	$a0, $fp, 16
	ld.d	$a0, $sp, 24
	st.d	$a1, $fp, 32
	ld.d	$a2, $s1, 208
	st.d	$zero, $fp, 24
	ld.d	$a3, $a0, 0
	st.w	$s7, $s0, 12
	ld.d	$a1, $a2, 24
	ld.w	$a2, $a2, 36
	ld.d	$a3, $a3, 40
.Ltmp42:                                # EH_LABEL
	jirl	$ra, $a3, 0
.Ltmp43:                                # EH_LABEL
# %bb.6:                                #   in Loop: Header=BB12_5 Depth=1
	bnez	$a0, .LBB12_17
# %bb.7:                                #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	ld.wu	$a2, $s1, 164
	ld.d	$a5, $s6, 0
	ld.d	$a6, $a1, 40
	st.d	$a2, $sp, 16
.Ltmp45:                                # EH_LABEL
	addi.d	$a4, $sp, 16
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $zero
	jirl	$ra, $a6, 0
.Ltmp46:                                # EH_LABEL
# %bb.8:                                #   in Loop: Header=BB12_5 Depth=1
	bnez	$a0, .LBB12_17
# %bb.9:                                #   in Loop: Header=BB12_5 Depth=1
	ld.w	$a0, $s0, 12
	ld.w	$a1, $s1, 160
	xor	$a0, $a1, $a0
	bne	$a0, $s5, .LBB12_16
# %bb.10:                               #   in Loop: Header=BB12_5 Depth=1
	ld.wu	$a0, $s1, 164
	ld.d	$a2, $s3, 56
	ld.wu	$a1, $s1, 168
	ld.d	$a3, $s3, 64
	add.d	$a0, $a2, $a0
	ld.w	$a2, $s1, 72
	st.d	$a0, $s3, 56
	add.d	$a0, $a3, $a1
	addi.w	$s4, $s4, 1
	st.d	$a0, $s3, 64
	bltu	$s4, $a2, .LBB12_5
.LBB12_11:                              # %._crit_edge
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB12_15
# %bb.12:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp48:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp49:                                # EH_LABEL
# %bb.13:                               # %.noexc
	move	$a0, $zero
	st.d	$zero, $s2, 0
	b	.LBB12_17
.LBB12_14:
	lu12i.w	$a0, -524284
	ori	$s1, $a0, 5
	b	.LBB12_20
.LBB12_15:
	move	$a0, $zero
	b	.LBB12_17
.LBB12_16:
	ori	$a0, $zero, 1
.LBB12_17:                              # %_ZN9CMyComPtrI14ICompressCoderE7ReleaseEv.exit
	move	$s1, $a0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 16
.Ltmp60:                                # EH_LABEL
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp61:                                # EH_LABEL
# %bb.18:                               # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB12_20
# %bb.19:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp63:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp64:                                # EH_LABEL
.LBB12_20:                              # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit.thread
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
.Ltmp66:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp67:                                # EH_LABEL
# %bb.21:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
	move	$a0, $s1
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
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
.LBB12_22:
.Ltmp50:                                # EH_LABEL
	b	.LBB12_30
.LBB12_23:
.Ltmp65:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_24:
.Ltmp62:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_25:                              # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit59.thread
.Ltmp41:                                # EH_LABEL
	move	$s1, $a0
	b	.LBB12_32
.LBB12_26:
.Ltmp68:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_27:
.Ltmp38:                                # EH_LABEL
	move	$s1, $a0
	b	.LBB12_31
.LBB12_28:
.Ltmp47:                                # EH_LABEL
	b	.LBB12_30
.LBB12_29:
.Ltmp44:                                # EH_LABEL
.LBB12_30:
	move	$s1, $a0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 16
.Ltmp51:                                # EH_LABEL
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp52:                                # EH_LABEL
.LBB12_31:                              # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit59
	ld.d	$s2, $sp, 24
	beqz	$s2, .LBB12_33
.LBB12_32:
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 16
.Ltmp54:                                # EH_LABEL
	move	$a0, $s2
	jirl	$ra, $a1, 0
.Ltmp55:                                # EH_LABEL
.LBB12_33:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
.Ltmp57:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp58:                                # EH_LABEL
# %bb.34:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit65
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_35:
.Ltmp56:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_36:
.Ltmp59:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_37:
.Ltmp53:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN12CEncoderInfo6DecodeEj, .Lfunc_end12-_ZN12CEncoderInfo6DecodeEj
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp36-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin2          #     jumps to .Ltmp38
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin2          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin2          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin2          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin2          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin2          #     jumps to .Ltmp62
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp63-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin2          #     jumps to .Ltmp65
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp66-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin2          #     jumps to .Ltmp68
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp67-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp51-.Ltmp67                #   Call between .Ltmp67 and .Ltmp51
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin2          #     jumps to .Ltmp53
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp54-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin2          #     jumps to .Ltmp56
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp57-.Lfunc_begin2          # >> Call Site 13 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin2          #     jumps to .Ltmp59
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp58-.Lfunc_begin2          # >> Call Site 14 <<
	.uleb128 .Lfunc_end12-.Ltmp58           #   Call between .Ltmp58 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z9LzmaBenchjjP14IBenchCallback # -- Begin function _Z9LzmaBenchjjP14IBenchCallback
	.p2align	5
	.type	_Z9LzmaBenchjjP14IBenchCallback,@function
_Z9LzmaBenchjjP14IBenchCallback:        # @_Z9LzmaBenchjjP14IBenchCallback
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -304
	.cfi_def_cfa_offset 304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
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
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	move	$s4, $a1
	bstrpick.d	$a2, $a1, 31, 18
	lu12i.w	$a1, -524176
	ori	$s3, $a1, 87
	beqz	$a2, .LBB13_72
# %bb.1:
	addu16i.d	$a1, $a0, -2
	addi.w	$a2, $a1, -2
	lu12i.w	$a1, -33
	ori	$a1, $a1, 4095
	bltu	$a2, $a1, .LBB13_72
# %bb.2:
	ori	$a1, $zero, 1
	sltu	$a1, $a1, $a0
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ori	$a2, $zero, 2
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	maskeqz	$a1, $a0, $a1
	or	$a0, $a1, $a2
	bstrpick.d	$a0, $a0, 31, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.w	$s1, $a0, 0
	ori	$a0, $zero, 224
	mul.d	$s0, $s1, $a0
	addi.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $a0, 0
	vrepli.b	$vr0, 0
	pcalau12i	$a0, %pc_hi20(_ZTV21CBenchRandomGenerator+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV21CBenchRandomGenerator+16)
	move	$a1, $zero
	.p2align	4, , 16
.LBB13_3:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $fp, $a1
	st.w	$zero, $a2, 16
	st.w	$zero, $a2, 32
	st.d	$zero, $a2, 40
	vst	$vr0, $a2, 64
	vst	$vr0, $a2, 120
	st.d	$zero, $a2, 200
	st.d	$zero, $a2, 144
	vst	$vr0, $a2, 152
	st.d	$a0, $a2, 184
	addi.d	$a1, $a1, 224
	vst	$vr0, $a2, 216
	bne	$s0, $a1, .LBB13_3
# %bb.4:                                # %.lr.ph.preheader
	move	$s8, $zero
	addi.d	$a1, $fp, 8
	st.d	$a1, $sp, 192
	addi.d	$s0, $fp, 120
	ori	$a2, $zero, 224
	lu12i.w	$a0, 48
	ori	$s5, $a0, 257
	lu12i.w	$a0, -524284
	ori	$s2, $a0, 1
.LBB13_5:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_8 Depth 2
	mul.d	$a0, $s8, $a2
	move	$s7, $a1
	add.d	$a0, $a1, $a0
	sltui	$a1, $s8, 1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	maskeqz	$a1, $a2, $a1
	st.d	$a1, $a0, 152
	addi.d	$s6, $a0, 32
.Ltmp69:                                # EH_LABEL
	ori	$a2, $zero, 1
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_Z11CreateCoderyR9CMyComPtrI14ICompressCoderEb)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.6:                                #   in Loop: Header=BB13_5 Depth=1
	move	$s3, $a0
	bnez	$a0, .LBB13_29
# %bb.7:                                #   in Loop: Header=BB13_5 Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	move	$s6, $s0
	beqz	$a0, .LBB13_28
	.p2align	4, , 16
.LBB13_8:                               #   Parent Loop BB13_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp72:                                # EH_LABEL
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_Z11CreateCoderyR9CMyComPtrI14ICompressCoderEb)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.9:                                #   in Loop: Header=BB13_8 Depth=2
	move	$s3, $a0
	bnez	$a0, .LBB13_29
# %bb.10:                               #   in Loop: Header=BB13_8 Depth=2
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB13_28
# %bb.11:                               #   in Loop: Header=BB13_8 Depth=2
	addi.d	$s1, $s1, -1
	addi.d	$s6, $s6, 8
	bnez	$s1, .LBB13_8
# %bb.12:                               #   in Loop: Header=BB13_5 Depth=1
	addi.d	$s8, $s8, 1
	addi.d	$s0, $s0, 224
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s7
	ori	$a2, $zero, 224
	bne	$s8, $a0, .LBB13_5
# %bb.13:                               # %.lr.ph344.preheader
	lu12i.w	$a0, 88485
	ori	$a0, $a0, 1509
	lu32i.d	$a0, 146357
	lu52i.d	$a0, $a0, 497
	st.d	$a0, $sp, 184
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	move	$s5, $a1
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	move	$s7, $a1
.LBB13_14:                              # %.lr.ph344
                                        # =>This Inner Loop Header: Depth=1
.Ltmp75:                                # EH_LABEL
	addi.d	$a3, $sp, 184
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN12CEncoderInfo4InitEjjP20CBaseRandomGenerator)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.15:                               #   in Loop: Header=BB13_14 Depth=1
	move	$s3, $a0
	bnez	$a0, .LBB13_29
# %bb.16:                               #   in Loop: Header=BB13_14 Depth=1
	addi.d	$s0, $s0, -1
	addi.d	$s5, $s5, 224
	bnez	$s0, .LBB13_14
# %bb.17:                               # %._crit_edge345
.Ltmp78:                                # EH_LABEL
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(CriticalSection_Init)
	jirl	$ra, $ra, 0
.Ltmp79:                                # EH_LABEL
# %bb.18:                               # %.lr.ph348
	st.w	$zero, $sp, 176
	ori	$s0, $zero, 1
	st.b	$s0, $sp, 180
.Ltmp81:                                # EH_LABEL
	ori	$a0, $zero, 96
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp82:                                # EH_LABEL
# %bb.19:                               # %.noexc.peel
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV18CBenchProgressInfo+16)
	addi.d	$s6, $a0, %pc_lo12(_ZTV18CBenchProgressInfo+16)
	st.d	$s6, $s3, 0
	ld.d	$a0, $fp, 64
	st.w	$zero, $s3, 72
	st.d	$zero, $s3, 88
	st.d	$s3, $fp, 48
	st.w	$s0, $s3, 8
	move	$s4, $s3
	beqz	$a0, .LBB13_22
# %bb.20:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp83:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp84:                                # EH_LABEL
# %bb.21:                               # %._crit_edge
	ld.d	$s4, $fp, 48
.LBB13_22:
	st.d	$s3, $fp, 64
	addi.d	$a0, $sp, 136
	st.d	$a0, $s4, 16
.Ltmp85:                                # EH_LABEL
	ori	$a0, $zero, 96
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.23:                               # %.noexc.1.peel
	move	$s3, $a0
	st.d	$s6, $a0, 0
	st.w	$zero, $a0, 72
	ld.d	$a0, $fp, 72
	st.d	$zero, $s3, 88
	st.d	$s3, $fp, 56
	ori	$a1, $zero, 1
	st.w	$a1, $s3, 8
	move	$a1, $s3
	beqz	$a0, .LBB13_26
# %bb.24:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp87:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp88:                                # EH_LABEL
# %bb.25:                               # %._crit_edge511
	ld.d	$a1, $fp, 56
	ld.d	$s4, $fp, 48
.LBB13_26:
	st.d	$s3, $fp, 72
	addi.d	$a0, $sp, 136
	st.d	$a0, $a1, 16
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $s4, 88
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$a0, $s4, 72
	lu12i.w	$a0, 244
	ori	$s2, $a0, 576
	st.d	$s2, $s4, 32
	st.d	$s2, $s4, 48
	addi.d	$a0, $sp, 80
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_32
# %bb.27:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s2
	b	.LBB13_33
.LBB13_28:
	move	$s3, $s2
.LBB13_29:                              # %.thread
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB13_70
.LBB13_30:                              # %.preheader.preheader.i
	ori	$a1, $zero, 224
	mul.d	$s1, $a0, $a1
	addi.d	$s0, $s1, 8
	addi.d	$s2, $fp, -216
	.p2align	4, , 16
.LBB13_31:                              # %.preheader.i308
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s2, $s1
	pcaddu18i	$ra, %call36(_ZN12CEncoderInfoD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -224
	bnez	$s1, .LBB13_31
	b	.LBB13_71
.LBB13_32:
	ld.d	$a0, $sp, 80
	ld.d	$a1, $sp, 88
	mul.d	$a0, $a0, $s2
	add.d	$a0, $a0, $a1
.LBB13_33:
	st.d	$a0, $s4, 24
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	st.d	$a0, $s4, 40
	bgeu	$a1, $s1, .LBB13_35
# %bb.34:
.Ltmp93:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(_ZN12CEncoderInfo20EncodeThreadFunctionEPv)
	addi.d	$a1, $a0, %pc_lo12(_ZN12CEncoderInfo20EncodeThreadFunctionEPv)
	move	$a0, $s7
	move	$a2, $s7
	pcaddu18i	$ra, %call36(Thread_Create)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
	b	.LBB13_36
.LBB13_35:
.Ltmp90:                                # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN12CEncoderInfo6EncodeEv)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
.LBB13_36:                              # %_ZN12CEncoderInfo19CreateEncoderThreadEv.exit.peel
	move	$s3, $a0
	bnez	$a0, .LBB13_69
# %bb.37:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$s0, $zero, 1
	beq	$a0, $s0, .LBB13_52
# %bb.38:                               # %.peel.next.preheader
	addi.d	$s4, $fp, 232
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.d	$s5, $a0, -1
	addi.d	$s8, $sp, 136
	pcalau12i	$a0, %pc_hi20(_ZN12CEncoderInfo20EncodeThreadFunctionEPv)
	addi.d	$a0, $a0, %pc_lo12(_ZN12CEncoderInfo20EncodeThreadFunctionEPv)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
.LBB13_39:                              # %.peel.next
                                        # =>This Inner Loop Header: Depth=1
.Ltmp96:                                # EH_LABEL
	ori	$a0, $zero, 96
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp97:                                # EH_LABEL
# %bb.40:                               # %.noexc
                                        #   in Loop: Header=BB13_39 Depth=1
	move	$s3, $a0
	st.d	$s6, $a0, 0
	ld.d	$a0, $s4, 56
	st.w	$zero, $s3, 72
	st.d	$zero, $s3, 88
	st.d	$s3, $s4, 40
	st.w	$s0, $s3, 8
	move	$a1, $s3
	beqz	$a0, .LBB13_43
# %bb.41:                               #   in Loop: Header=BB13_39 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp98:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp99:                                # EH_LABEL
# %bb.42:                               # %._crit_edge514
                                        #   in Loop: Header=BB13_39 Depth=1
	ld.d	$a1, $s4, 40
.LBB13_43:                              #   in Loop: Header=BB13_39 Depth=1
	st.d	$s3, $s4, 56
	st.d	$s8, $a1, 16
.Ltmp100:                               # EH_LABEL
	ori	$a0, $zero, 96
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.44:                               # %.noexc.1
                                        #   in Loop: Header=BB13_39 Depth=1
	move	$s3, $a0
	st.d	$s6, $a0, 0
	ld.d	$a0, $s4, 64
	st.w	$zero, $s3, 72
	st.d	$zero, $s3, 88
	st.d	$s3, $s4, 48
	st.w	$s0, $s3, 8
	move	$a1, $s3
	beqz	$a0, .LBB13_47
# %bb.45:                               #   in Loop: Header=BB13_39 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp102:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp103:                               # EH_LABEL
# %bb.46:                               # %._crit_edge516
                                        #   in Loop: Header=BB13_39 Depth=1
	ld.d	$a1, $s4, 48
.LBB13_47:                              #   in Loop: Header=BB13_39 Depth=1
	st.d	$s3, $s4, 64
	st.d	$s8, $a1, 16
	ori	$a0, $zero, 4
	bltu	$s1, $a0, .LBB13_49
# %bb.48:                               #   in Loop: Header=BB13_39 Depth=1
.Ltmp108:                               # EH_LABEL
	move	$a0, $s4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(Thread_Create)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
	b	.LBB13_50
.LBB13_49:                              #   in Loop: Header=BB13_39 Depth=1
.Ltmp105:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN12CEncoderInfo6EncodeEv)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
.LBB13_50:                              # %_ZN12CEncoderInfo19CreateEncoderThreadEv.exit
                                        #   in Loop: Header=BB13_39 Depth=1
	move	$s3, $a0
	bnez	$a0, .LBB13_69
# %bb.51:                               #   in Loop: Header=BB13_39 Depth=1
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 224
	bnez	$s5, .LBB13_39
.LBB13_52:                              # %._crit_edge349
	ori	$a0, $zero, 4
	bltu	$s1, $a0, .LBB13_56
# %bb.53:                               # %.lr.ph351.preheader
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	move	$s3, $s7
.LBB13_54:                              # %.lr.ph351
                                        # =>This Inner Loop Header: Depth=1
.Ltmp111:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(Thread_Wait)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.55:                               # %_ZN8NWindows7CThread4WaitEv.exit
                                        #   in Loop: Header=BB13_54 Depth=1
	addi.d	$s0, $s0, -1
	addi.d	$s3, $s3, 224
	bnez	$s0, .LBB13_54
.LBB13_56:                              # %.loopexit331
	ld.w	$s3, $sp, 176
	bnez	$s3, .LBB13_69
# %bb.57:
	ld.d	$s0, $fp, 48
	st.w	$zero, $sp, 128
	st.d	$s2, $sp, 88
	st.d	$s2, $sp, 104
	addi.d	$a0, $sp, 200
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_59
# %bb.58:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s2
	b	.LBB13_60
.LBB13_59:
	ld.d	$a0, $sp, 200
	ld.d	$a1, $sp, 208
	mul.d	$a0, $a0, $s2
	add.d	$a0, $a0, $a1
.LBB13_60:                              # %.lr.ph355.preheader
	ld.d	$a1, $s0, 24
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 40
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 96
	ori	$a0, $zero, 1
	ori	$a1, $zero, 4
	st.w	$a0, $sp, 128
	bgeu	$s1, $a1, .LBB13_62
# %bb.61:
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB13_65
.LBB13_62:                              # %vector.ph
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 16, 1
	slli.d	$a0, $a0, 1
	addi.d	$a5, $fp, 400
	move	$a6, $a0
.LBB13_63:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a7, $a5, -228
	ld.wu	$t0, $a5, -4
	ld.wu	$t1, $a5, -224
	ld.wu	$t2, $a5, 0
	add.d	$a1, $a1, $a7
	add.d	$a2, $a2, $t0
	add.d	$a3, $a3, $t1
	add.d	$a4, $a4, $t2
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 448
	bnez	$a6, .LBB13_63
# %bb.64:                               # %middle.block
	add.d	$a1, $a2, $a1
	add.d	$a2, $a4, $a3
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a3, .LBB13_67
.LBB13_65:                              # %.lr.ph355.preheader600
	ori	$a3, $zero, 224
	mul.d	$a3, $a0, $a3
	add.d	$a3, $a3, $fp
	addi.d	$a3, $a3, 176
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a0, $a4, $a0
.LBB13_66:                              # %.lr.ph355
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a4, $a3, -4
	ld.wu	$a5, $a3, 0
	add.d	$a1, $a1, $a4
	add.d	$a2, $a2, $a5
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 224
	bnez	$a0, .LBB13_66
.LBB13_67:                              # %.loopexit586
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	st.d	$a1, $sp, 112
	st.d	$a2, $sp, 120
	ld.d	$a3, $a3, 0
.Ltmp114:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 1
	jirl	$ra, $a3, 0
.Ltmp115:                               # EH_LABEL
# %bb.68:
	move	$s3, $a0
	beqz	$a0, .LBB13_73
.LBB13_69:                              # %.thread312
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(pthread_mutex_destroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB13_30
.LBB13_70:
	ori	$s0, $zero, 8
.LBB13_71:                              # %_ZN14CBenchEncodersD2Ev.exit
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdaPvm)
	jirl	$ra, $ra, 0
.LBB13_72:
	addi.w	$a0, $s3, 0
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.LBB13_73:                              # %.lr.ph362
	ori	$a0, $zero, 1
	sltu	$a1, $a0, $s1
	st.w	$zero, $sp, 176
	st.b	$zero, $sp, 180
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	sll.w	$a0, $a0, $a1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$s6, $fp, 88
	pcalau12i	$a0, %pc_hi20(_ZN12CEncoderInfo20DecodeThreadFunctionEPv)
	addi.d	$s4, $a0, %pc_lo12(_ZN12CEncoderInfo20DecodeThreadFunctionEPv)
	move	$s8, $zero
.LBB13_74:                              # %.backedge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_81 Depth 2
	ori	$a0, $zero, 224
	mul.d	$a0, $s8, $a0
	add.d	$s5, $s7, $a0
	ld.w	$a0, $s5, 164
	lu12i.w	$a1, 16384
	div.wu	$a0, $a1, $a0
	addi.d	$a0, $a0, 2
	st.w	$a0, $s5, 72
	bnez	$s8, .LBB13_79
# %bb.75:                               #   in Loop: Header=BB13_74 Depth=1
	ld.d	$s0, $s5, 40
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $s0, 88
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $s0, 72
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	st.d	$s2, $s0, 32
	st.d	$s2, $s0, 48
	addi.d	$a0, $sp, 200
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_77
# %bb.76:                               #   in Loop: Header=BB13_74 Depth=1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s2
	b	.LBB13_78
.LBB13_77:                              #   in Loop: Header=BB13_74 Depth=1
	ld.d	$a0, $sp, 200
	ld.d	$a1, $sp, 208
	mul.d	$a0, $a0, $s2
	add.d	$a0, $a0, $a1
.LBB13_78:                              # %_ZL12SetStartTimeR10CBenchInfo.exit303
                                        #   in Loop: Header=BB13_74 Depth=1
	st.d	$a0, $s0, 24
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 40
.LBB13_79:                              #   in Loop: Header=BB13_74 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ori	$a1, $zero, 2
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB13_85
# %bb.80:                               # %.preheader328
                                        #   in Loop: Header=BB13_74 Depth=1
	move	$s0, $zero
	move	$s2, $zero
.LBB13_81:                              #   Parent Loop BB13_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	or	$a0, $s2, $s8
	bstrpick.d	$a0, $a0, 31, 0
	sltui	$a0, $a0, 1
	st.w	$s0, $s6, 8
	st.d	$s5, $s6, 0
	st.b	$a0, $s6, 12
	addi.d	$a0, $s6, -80
.Ltmp120:                               # EH_LABEL
	move	$a1, $s4
	move	$a2, $s6
	pcaddu18i	$ra, %call36(Thread_Create)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.82:                               # %_ZN12CEncoderInfo19CreateDecoderThreadEib.exit
                                        #   in Loop: Header=BB13_81 Depth=2
	move	$s3, $a0
	bnez	$a0, .LBB13_69
# %bb.83:                               #   in Loop: Header=BB13_81 Depth=2
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 1
	addi.d	$s6, $s6, 16
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bne	$a0, $s2, .LBB13_81
# %bb.84:                               # %.loopexit
                                        #   in Loop: Header=BB13_74 Depth=1
	addi.d	$s8, $s8, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bne	$s8, $a0, .LBB13_88
	b	.LBB13_89
.LBB13_85:                              #   in Loop: Header=BB13_74 Depth=1
.Ltmp117:                               # EH_LABEL
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN12CEncoderInfo6DecodeEj)
	jirl	$ra, $ra, 0
.Ltmp118:                               # EH_LABEL
# %bb.86:                               #   in Loop: Header=BB13_74 Depth=1
	move	$s3, $a0
	bnez	$a0, .LBB13_69
# %bb.87:                               # %.loopexit.thread
                                        #   in Loop: Header=BB13_74 Depth=1
	addi.d	$s8, $s8, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$s8, $a0, .LBB13_95
.LBB13_88:                              # %.backedge.backedge
                                        #   in Loop: Header=BB13_74 Depth=1
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	addi.d	$s6, $s6, 224
	b	.LBB13_74
.LBB13_89:                              # %.preheader.preheader
	move	$s0, $zero
	move	$s3, $zero
	addi.d	$s2, $fp, 136
.LBB13_90:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_91 Depth 2
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	move	$s1, $s2
	move	$s4, $s7
.LBB13_91:                              #   Parent Loop BB13_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp123:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(Thread_Wait)
	jirl	$ra, $ra, 0
.Ltmp124:                               # EH_LABEL
# %bb.92:                               # %_ZN8NWindows7CThread4WaitEv.exit306
                                        #   in Loop: Header=BB13_91 Depth=2
	ld.w	$a0, $s1, 0
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s3, $a1, $a0
	addi.d	$s4, $s4, 16
	addi.d	$s5, $s5, -1
	addi.d	$s1, $s1, 4
	bnez	$s5, .LBB13_91
# %bb.93:                               #   in Loop: Header=BB13_90 Depth=1
	addi.d	$s0, $s0, 1
	addi.d	$s7, $s7, 224
	addi.d	$s2, $s2, 224
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bne	$s0, $a0, .LBB13_90
# %bb.94:                               # %._crit_edge368
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	bnez	$s3, .LBB13_69
.LBB13_95:                              # %.thread322
	ld.w	$s3, $sp, 176
	bnez	$s3, .LBB13_69
# %bb.96:                               # %.lr.ph373.preheader
	ld.d	$a0, $fp, 48
	addi.d	$a0, $a0, 24
	addi.d	$a1, $sp, 80
	pcaddu18i	$ra, %call36(_ZL13SetFinishTimeRK10CBenchInfoRS_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 80
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	sll.w	$a0, $a0, $a1
	ori	$a1, $zero, 4
	st.w	$a0, $sp, 128
	bgeu	$s1, $a1, .LBB13_98
# %bb.97:
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB13_101
.LBB13_98:                              # %vector.ph568
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 16, 1
	slli.d	$a0, $a0, 1
	addi.d	$a5, $fp, 400
	move	$a6, $a0
.LBB13_99:                              # %vector.body571
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a7, $a5, -228
	ld.wu	$t0, $a5, -4
	ld.wu	$t1, $a5, -224
	ld.wu	$t2, $a5, 0
	add.d	$a1, $a1, $a7
	add.d	$a2, $a2, $t0
	add.d	$a3, $a3, $t1
	add.d	$a4, $a4, $t2
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 448
	bnez	$a6, .LBB13_99
# %bb.100:                              # %middle.block578
	add.d	$a1, $a2, $a1
	add.d	$a2, $a4, $a3
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a3, .LBB13_103
.LBB13_101:                             # %.lr.ph373.preheader587
	ori	$a3, $zero, 224
	mul.d	$a3, $a0, $a3
	add.d	$a3, $a3, $fp
	addi.d	$a3, $a3, 176
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a0, $a4, $a0
.LBB13_102:                             # %.lr.ph373
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a4, $a3, -4
	ld.wu	$a5, $a3, 0
	add.d	$a1, $a1, $a4
	add.d	$a2, $a2, $a5
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 224
	bnez	$a0, .LBB13_102
.LBB13_103:                             # %.loopexit585
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	st.d	$a1, $sp, 112
	st.d	$a2, $sp, 120
	ld.d	$a3, $a3, 8
.Ltmp126:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	jirl	$ra, $a3, 0
.Ltmp127:                               # EH_LABEL
# %bb.104:
	move	$s3, $a0
	bnez	$a0, .LBB13_69
# %bb.105:
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 8
.Ltmp129:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 1
	jirl	$ra, $a3, 0
.Ltmp130:                               # EH_LABEL
# %bb.106:
	move	$s3, $a0
	b	.LBB13_69
.LBB13_107:
.Ltmp131:                               # EH_LABEL
	b	.LBB13_121
.LBB13_108:
.Ltmp128:                               # EH_LABEL
	b	.LBB13_121
.LBB13_109:
.Ltmp119:                               # EH_LABEL
	b	.LBB13_121
.LBB13_110:
.Ltmp116:                               # EH_LABEL
	b	.LBB13_121
.LBB13_111:                             # %.loopexit.split-lp412
.Ltmp92:                                # EH_LABEL
	b	.LBB13_121
.LBB13_112:                             # %.loopexit.split-lp417
.Ltmp95:                                # EH_LABEL
	b	.LBB13_121
.LBB13_113:
.Ltmp80:                                # EH_LABEL
	b	.LBB13_125
.LBB13_114:
.Ltmp125:                               # EH_LABEL
	b	.LBB13_121
.LBB13_115:
.Ltmp122:                               # EH_LABEL
	b	.LBB13_121
.LBB13_116:                             # %.loopexit416
.Ltmp110:                               # EH_LABEL
	b	.LBB13_121
.LBB13_117:                             # %.loopexit411
.Ltmp107:                               # EH_LABEL
	b	.LBB13_121
.LBB13_118:                             # %.loopexit.split-lp
.Ltmp89:                                # EH_LABEL
	b	.LBB13_121
.LBB13_119:
.Ltmp113:                               # EH_LABEL
	b	.LBB13_121
.LBB13_120:                             # %.loopexit410
.Ltmp104:                               # EH_LABEL
.LBB13_121:
	move	$fp, $a0
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(pthread_mutex_destroy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(_ZN14CBenchEncodersD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_122:
.Ltmp77:                                # EH_LABEL
	b	.LBB13_125
.LBB13_123:
.Ltmp71:                                # EH_LABEL
	b	.LBB13_125
.LBB13_124:
.Ltmp74:                                # EH_LABEL
.LBB13_125:
	move	$fp, $a0
	addi.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(_ZN14CBenchEncodersD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_Z9LzmaBenchjjP14IBenchCallback, .Lfunc_end13-_Z9LzmaBenchjjP14IBenchCallback
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table13:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp69-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp69
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin3          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin3          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin3          #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin3          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp88-.Ltmp81                #   Call between .Ltmp81 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin3          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp93-.Ltmp88                #   Call between .Ltmp88 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin3          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin3          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Ltmp103-.Ltmp96               #   Call between .Ltmp96 and .Ltmp103
	.uleb128 .Ltmp104-.Lfunc_begin3         #     jumps to .Ltmp104
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin3         # >> Call Site 11 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin3         #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin3         # >> Call Site 12 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin3         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin3         # >> Call Site 13 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin3         #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin3         # >> Call Site 14 <<
	.uleb128 .Ltmp114-.Ltmp112              #   Call between .Ltmp112 and .Ltmp114
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin3         # >> Call Site 15 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin3         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin3         # >> Call Site 16 <<
	.uleb128 .Ltmp120-.Ltmp115              #   Call between .Ltmp115 and .Ltmp120
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin3         # >> Call Site 17 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin3         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin3         # >> Call Site 18 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin3         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin3         # >> Call Site 19 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin3         #     jumps to .Ltmp125
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin3         # >> Call Site 20 <<
	.uleb128 .Ltmp126-.Ltmp124              #   Call between .Ltmp124 and .Ltmp126
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin3         # >> Call Site 21 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin3         #     jumps to .Ltmp128
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin3         # >> Call Site 22 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin3         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin3         # >> Call Site 23 <<
	.uleb128 .Lfunc_end13-.Ltmp130          #   Call between .Ltmp130 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN14CBenchEncodersD2Ev,"axG",@progbits,_ZN14CBenchEncodersD2Ev,comdat
	.weak	_ZN14CBenchEncodersD2Ev         # -- Begin function _ZN14CBenchEncodersD2Ev
	.p2align	5
	.type	_ZN14CBenchEncodersD2Ev,@function
_ZN14CBenchEncodersD2Ev:                # @_ZN14CBenchEncodersD2Ev
# %bb.0:
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB14_5
# %bb.1:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $a0, -8
	addi.d	$fp, $a0, -8
	ori	$a2, $zero, 224
	mul.d	$s0, $a1, $a2
	beqz	$a1, .LBB14_4
# %bb.2:                                # %.preheader.preheader
	addi.d	$s1, $a0, -224
	move	$s2, $s0
	.p2align	4, , 16
.LBB14_3:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s1, $s2
	pcaddu18i	$ra, %call36(_ZN12CEncoderInfoD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -224
	bnez	$s2, .LBB14_3
.LBB14_4:                               # %.loopexit
	addi.d	$a1, $s0, 8
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZdaPvm)
	jr	$t8
.LBB14_5:
	ret
.Lfunc_end14:
	.size	_ZN14CBenchEncodersD2Ev, .Lfunc_end14-_ZN14CBenchEncodersD2Ev
                                        # -- End function
	.text
	.globl	_Z19GetBenchMemoryUsagejj       # -- Begin function _Z19GetBenchMemoryUsagejj
	.p2align	5
	.type	_Z19GetBenchMemoryUsagejj,@function
_Z19GetBenchMemoryUsagejj:              # @_Z19GetBenchMemoryUsagejj
# %bb.0:
	ori	$a2, $zero, 1
	sltu	$a2, $a2, $a0
	srl.w	$a0, $a0, $a2
	bstrpick.d	$a3, $a1, 31, 1
	add.d	$a4, $a3, $a1
	bstrpick.d	$a4, $a4, 31, 0
	addi.w	$a5, $a1, -1
	bstrpick.d	$a6, $a5, 31, 1
	or	$a5, $a6, $a5
	bstrpick.d	$a6, $a5, 31, 2
	or	$a5, $a6, $a5
	bstrpick.d	$a6, $a5, 31, 4
	or	$a5, $a6, $a5
	bstrpick.d	$a6, $a5, 31, 1
	bstrpick.d	$a5, $a5, 31, 9
	bstrpick.d	$a6, $a6, 62, 0
	or	$a5, $a5, $a6
	lu12i.w	$a6, 15
	ori	$a6, $a6, 4095
	or	$a5, $a5, $a6
	lu12i.w	$a6, 4096
	sltu	$a6, $a6, $a5
	srl.w	$a5, $a5, $a6
	bstrpick.d	$a5, $a5, 31, 0
	bstrpick.d	$a1, $a1, 31, 0
	lu12i.w	$a6, 256
	masknez	$a6, $a6, $a2
	lu12i.w	$a7, 1792
	maskeqz	$a2, $a7, $a2
	or	$a2, $a2, $a6
	add.d	$a2, $a1, $a2
	add.d	$a2, $a2, $a3
	alsl.d	$a1, $a1, $a2, 3
	add.d	$a1, $a1, $a4
	alsl.d	$a1, $a5, $a1, 2
	addu16i.d	$a1, $a1, 36
	addi.d	$a1, $a1, 4
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a0, $a1, $a0
	ret
.Lfunc_end15:
	.size	_Z19GetBenchMemoryUsagejj, .Lfunc_end15-_Z19GetBenchMemoryUsagejj
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _Z15CrcInternalTestv
.LCPI16_0:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.byte	16                              # 0x10
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	24                              # 0x18
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI16_1:
	.byte	32                              # 0x20
	.byte	33                              # 0x21
	.byte	34                              # 0x22
	.byte	35                              # 0x23
	.byte	36                              # 0x24
	.byte	37                              # 0x25
	.byte	38                              # 0x26
	.byte	39                              # 0x27
	.byte	40                              # 0x28
	.byte	41                              # 0x29
	.byte	42                              # 0x2a
	.byte	43                              # 0x2b
	.byte	44                              # 0x2c
	.byte	45                              # 0x2d
	.byte	46                              # 0x2e
	.byte	47                              # 0x2f
	.byte	48                              # 0x30
	.byte	49                              # 0x31
	.byte	50                              # 0x32
	.byte	51                              # 0x33
	.byte	52                              # 0x34
	.byte	53                              # 0x35
	.byte	54                              # 0x36
	.byte	55                              # 0x37
	.byte	56                              # 0x38
	.byte	57                              # 0x39
	.byte	58                              # 0x3a
	.byte	59                              # 0x3b
	.byte	60                              # 0x3c
	.byte	61                              # 0x3d
	.byte	62                              # 0x3e
	.byte	63                              # 0x3f
.LCPI16_2:
	.byte	64                              # 0x40
	.byte	65                              # 0x41
	.byte	66                              # 0x42
	.byte	67                              # 0x43
	.byte	68                              # 0x44
	.byte	69                              # 0x45
	.byte	70                              # 0x46
	.byte	71                              # 0x47
	.byte	72                              # 0x48
	.byte	73                              # 0x49
	.byte	74                              # 0x4a
	.byte	75                              # 0x4b
	.byte	76                              # 0x4c
	.byte	77                              # 0x4d
	.byte	78                              # 0x4e
	.byte	79                              # 0x4f
	.byte	80                              # 0x50
	.byte	81                              # 0x51
	.byte	82                              # 0x52
	.byte	83                              # 0x53
	.byte	84                              # 0x54
	.byte	85                              # 0x55
	.byte	86                              # 0x56
	.byte	87                              # 0x57
	.byte	88                              # 0x58
	.byte	89                              # 0x59
	.byte	90                              # 0x5a
	.byte	91                              # 0x5b
	.byte	92                              # 0x5c
	.byte	93                              # 0x5d
	.byte	94                              # 0x5e
	.byte	95                              # 0x5f
.LCPI16_3:
	.byte	96                              # 0x60
	.byte	97                              # 0x61
	.byte	98                              # 0x62
	.byte	99                              # 0x63
	.byte	100                             # 0x64
	.byte	101                             # 0x65
	.byte	102                             # 0x66
	.byte	103                             # 0x67
	.byte	104                             # 0x68
	.byte	105                             # 0x69
	.byte	106                             # 0x6a
	.byte	107                             # 0x6b
	.byte	108                             # 0x6c
	.byte	109                             # 0x6d
	.byte	110                             # 0x6e
	.byte	111                             # 0x6f
	.byte	112                             # 0x70
	.byte	113                             # 0x71
	.byte	114                             # 0x72
	.byte	115                             # 0x73
	.byte	116                             # 0x74
	.byte	117                             # 0x75
	.byte	118                             # 0x76
	.byte	119                             # 0x77
	.byte	120                             # 0x78
	.byte	121                             # 0x79
	.byte	122                             # 0x7a
	.byte	123                             # 0x7b
	.byte	124                             # 0x7c
	.byte	125                             # 0x7d
	.byte	126                             # 0x7e
	.byte	127                             # 0x7f
.LCPI16_4:
	.byte	128                             # 0x80
	.byte	129                             # 0x81
	.byte	130                             # 0x82
	.byte	131                             # 0x83
	.byte	132                             # 0x84
	.byte	133                             # 0x85
	.byte	134                             # 0x86
	.byte	135                             # 0x87
	.byte	136                             # 0x88
	.byte	137                             # 0x89
	.byte	138                             # 0x8a
	.byte	139                             # 0x8b
	.byte	140                             # 0x8c
	.byte	141                             # 0x8d
	.byte	142                             # 0x8e
	.byte	143                             # 0x8f
	.byte	144                             # 0x90
	.byte	145                             # 0x91
	.byte	146                             # 0x92
	.byte	147                             # 0x93
	.byte	148                             # 0x94
	.byte	149                             # 0x95
	.byte	150                             # 0x96
	.byte	151                             # 0x97
	.byte	152                             # 0x98
	.byte	153                             # 0x99
	.byte	154                             # 0x9a
	.byte	155                             # 0x9b
	.byte	156                             # 0x9c
	.byte	157                             # 0x9d
	.byte	158                             # 0x9e
	.byte	159                             # 0x9f
.LCPI16_5:
	.byte	160                             # 0xa0
	.byte	161                             # 0xa1
	.byte	162                             # 0xa2
	.byte	163                             # 0xa3
	.byte	164                             # 0xa4
	.byte	165                             # 0xa5
	.byte	166                             # 0xa6
	.byte	167                             # 0xa7
	.byte	168                             # 0xa8
	.byte	169                             # 0xa9
	.byte	170                             # 0xaa
	.byte	171                             # 0xab
	.byte	172                             # 0xac
	.byte	173                             # 0xad
	.byte	174                             # 0xae
	.byte	175                             # 0xaf
	.byte	176                             # 0xb0
	.byte	177                             # 0xb1
	.byte	178                             # 0xb2
	.byte	179                             # 0xb3
	.byte	180                             # 0xb4
	.byte	181                             # 0xb5
	.byte	182                             # 0xb6
	.byte	183                             # 0xb7
	.byte	184                             # 0xb8
	.byte	185                             # 0xb9
	.byte	186                             # 0xba
	.byte	187                             # 0xbb
	.byte	188                             # 0xbc
	.byte	189                             # 0xbd
	.byte	190                             # 0xbe
	.byte	191                             # 0xbf
.LCPI16_6:
	.byte	192                             # 0xc0
	.byte	193                             # 0xc1
	.byte	194                             # 0xc2
	.byte	195                             # 0xc3
	.byte	196                             # 0xc4
	.byte	197                             # 0xc5
	.byte	198                             # 0xc6
	.byte	199                             # 0xc7
	.byte	200                             # 0xc8
	.byte	201                             # 0xc9
	.byte	202                             # 0xca
	.byte	203                             # 0xcb
	.byte	204                             # 0xcc
	.byte	205                             # 0xcd
	.byte	206                             # 0xce
	.byte	207                             # 0xcf
	.byte	208                             # 0xd0
	.byte	209                             # 0xd1
	.byte	210                             # 0xd2
	.byte	211                             # 0xd3
	.byte	212                             # 0xd4
	.byte	213                             # 0xd5
	.byte	214                             # 0xd6
	.byte	215                             # 0xd7
	.byte	216                             # 0xd8
	.byte	217                             # 0xd9
	.byte	218                             # 0xda
	.byte	219                             # 0xdb
	.byte	220                             # 0xdc
	.byte	221                             # 0xdd
	.byte	222                             # 0xde
	.byte	223                             # 0xdf
.LCPI16_7:
	.byte	224                             # 0xe0
	.byte	225                             # 0xe1
	.byte	226                             # 0xe2
	.byte	227                             # 0xe3
	.byte	228                             # 0xe4
	.byte	229                             # 0xe5
	.byte	230                             # 0xe6
	.byte	231                             # 0xe7
	.byte	232                             # 0xe8
	.byte	233                             # 0xe9
	.byte	234                             # 0xea
	.byte	235                             # 0xeb
	.byte	236                             # 0xec
	.byte	237                             # 0xed
	.byte	238                             # 0xee
	.byte	239                             # 0xef
	.byte	240                             # 0xf0
	.byte	241                             # 0xf1
	.byte	242                             # 0xf2
	.byte	243                             # 0xf3
	.byte	244                             # 0xf4
	.byte	245                             # 0xf5
	.byte	246                             # 0xf6
	.byte	247                             # 0xf7
	.byte	248                             # 0xf8
	.byte	249                             # 0xf9
	.byte	250                             # 0xfa
	.byte	251                             # 0xfb
	.byte	252                             # 0xfc
	.byte	253                             # 0xfd
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.text
	.globl	_Z15CrcInternalTestv
	.p2align	5
	.type	_Z15CrcInternalTestv,@function
_Z15CrcInternalTestv:                   # @_Z15CrcInternalTestv
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
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
.Ltmp132:                               # EH_LABEL
	move	$a0, $zero
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.1:                                # %.noexc
.Ltmp134:                               # EH_LABEL
	ori	$a0, $zero, 1280
	pcaddu18i	$ra, %call36(MidAlloc)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
# %bb.2:
	move	$fp, $a0
	beqz	$a0, .LBB16_19
# %bb.3:                                # %vector.body
	pcalau12i	$a0, %pc_hi20(.LCPI16_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI16_0)
	pcalau12i	$a0, %pc_hi20(.LCPI16_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI16_1)
	pcalau12i	$a0, %pc_hi20(.LCPI16_2)
	xvld	$xr2, $a0, %pc_lo12(.LCPI16_2)
	pcalau12i	$a0, %pc_hi20(.LCPI16_3)
	xvld	$xr3, $a0, %pc_lo12(.LCPI16_3)
	xvst	$xr0, $fp, 0
	xvst	$xr1, $fp, 32
	xvst	$xr2, $fp, 64
	xvst	$xr3, $fp, 96
	pcalau12i	$a0, %pc_hi20(.LCPI16_4)
	xvld	$xr0, $a0, %pc_lo12(.LCPI16_4)
	pcalau12i	$a0, %pc_hi20(.LCPI16_5)
	xvld	$xr1, $a0, %pc_lo12(.LCPI16_5)
	pcalau12i	$a0, %pc_hi20(.LCPI16_6)
	xvld	$xr2, $a0, %pc_lo12(.LCPI16_6)
	pcalau12i	$a0, %pc_hi20(.LCPI16_7)
	xvld	$xr3, $a0, %pc_lo12(.LCPI16_7)
	xvst	$xr0, $fp, 128
	xvst	$xr1, $fp, 160
	xvst	$xr2, $fp, 192
	xvst	$xr3, $fp, 224
	addi.w	$a0, $zero, -1
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$s2, $a1, %got_pc_lo12(g_CrcTable)
	move	$a1, $zero
	ori	$a2, $zero, 256
	.p2align	4, , 16
.LBB16_4:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a3, $fp, $a1
	xor	$a3, $a3, $a0
	andi	$a3, $a3, 255
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s2, $a3
	bstrpick.d	$a0, $a0, 31, 8
	addi.d	$a1, $a1, 1
	xor	$a0, $a3, $a0
	bne	$a1, $a2, .LBB16_4
# %bb.5:                                # %_ZL8CrcCalc1PKhj.exit
	addi.w	$a0, $a0, 0
	lu12i.w	$a1, -168025
	ori	$a1, $a1, 908
	bne	$a0, $a1, .LBB16_19
# %bb.6:
	ori	$a0, $zero, 256
	lu12i.w	$a1, 127267
	ori	$a1, $a1, 2997
	lu12i.w	$a2, 4
	ori	$a2, $a2, 1616
	ori	$a3, $zero, 1280
	.p2align	4, , 16
.LBB16_7:                               # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a1, 15, 0
	mul.d	$a4, $a4, $a2
	bstrpick.d	$a1, $a1, 31, 16
	add.w	$a1, $a4, $a1
	stx.b	$a1, $fp, $a0
	addi.d	$a0, $a0, 1
	bne	$a0, $a3, .LBB16_7
# %bb.8:                                # %.preheader.preheader
	move	$s3, $zero
	ori	$s4, $zero, 32
	ori	$s5, $zero, 1248
	addi.w	$s6, $zero, -1
	move	$s7, $fp
.LBB16_9:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_10 Depth 2
                                        #       Child Loop BB16_12 Depth 3
	move	$s0, $zero
	add.d	$s1, $fp, $s3
	.p2align	4, , 16
.LBB16_10:                              #   Parent Loop BB16_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_12 Depth 3
	beqz	$s0, .LBB16_14
# %bb.11:                               # %.lr.ph.i38.preheader
                                        #   in Loop: Header=BB16_10 Depth=2
	move	$a0, $zero
	move	$a1, $s6
	.p2align	4, , 16
.LBB16_12:                              # %.lr.ph.i38
                                        #   Parent Loop BB16_9 Depth=1
                                        #     Parent Loop BB16_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.b	$a2, $s7, $a0
	xor	$a2, $a2, $a1
	andi	$a2, $a2, 255
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s2, $a2
	bstrpick.d	$a1, $a1, 31, 8
	addi.d	$a0, $a0, 1
	xor	$a1, $a2, $a1
	bne	$s0, $a0, .LBB16_12
# %bb.13:                               # %._crit_edge.loopexit.i
                                        #   in Loop: Header=BB16_10 Depth=2
	nor	$s8, $a1, $zero
	b	.LBB16_15
	.p2align	4, , 16
.LBB16_14:                              #   in Loop: Header=BB16_10 Depth=2
	move	$s8, $zero
.LBB16_15:                              # %_ZL8CrcCalc1PKhj.exit45
                                        #   in Loop: Header=BB16_10 Depth=2
.Ltmp137:                               # EH_LABEL
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(CrcCalc)
	jirl	$ra, $ra, 0
.Ltmp138:                               # EH_LABEL
# %bb.16:                               #   in Loop: Header=BB16_10 Depth=2
	addi.w	$a1, $s8, 0
	bne	$a1, $a0, .LBB16_19
# %bb.17:                               #   in Loop: Header=BB16_10 Depth=2
	addi.d	$s0, $s0, 1
	bne	$s0, $s4, .LBB16_10
# %bb.18:                               # %.critedge
                                        #   in Loop: Header=BB16_9 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s7, $s7, 1
	ori	$s0, $zero, 1
	bne	$s3, $s5, .LBB16_9
	b	.LBB16_20
.LBB16_19:
	move	$s0, $zero
.LBB16_20:                              # %.loopexit
.Ltmp143:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
.Ltmp144:                               # EH_LABEL
# %bb.21:                               # %_ZN12CBenchBufferD2Ev.exit
	move	$a0, $s0
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB16_22:
.Ltmp145:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB16_23:
.Ltmp136:                               # EH_LABEL
	move	$s0, $a0
	move	$fp, $zero
	b	.LBB16_25
.LBB16_24:
.Ltmp139:                               # EH_LABEL
	move	$s0, $a0
.LBB16_25:
.Ltmp140:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
.Ltmp141:                               # EH_LABEL
# %bb.26:                               # %_ZN12CBenchBufferD2Ev.exit46
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB16_27:
.Ltmp142:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_Z15CrcInternalTestv, .Lfunc_end16-_Z15CrcInternalTestv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table16:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp132-.Lfunc_begin4         # >> Call Site 1 <<
	.uleb128 .Ltmp135-.Ltmp132              #   Call between .Ltmp132 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin4         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp138-.Ltmp137              #   Call between .Ltmp137 and .Ltmp138
	.uleb128 .Ltmp139-.Lfunc_begin4         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp144-.Ltmp143              #   Call between .Ltmp143 and .Ltmp144
	.uleb128 .Ltmp145-.Lfunc_begin4         #     jumps to .Ltmp145
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp144-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp140-.Ltmp144              #   Call between .Ltmp144 and .Ltmp140
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp141-.Ltmp140              #   Call between .Ltmp140 and .Ltmp141
	.uleb128 .Ltmp142-.Lfunc_begin4         #     jumps to .Ltmp142
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp141-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Lfunc_end16-.Ltmp141          #   Call between .Ltmp141 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN12CBenchBufferD2Ev,"axG",@progbits,_ZN12CBenchBufferD2Ev,comdat
	.weak	_ZN12CBenchBufferD2Ev           # -- Begin function _ZN12CBenchBufferD2Ev
	.p2align	5
	.type	_ZN12CBenchBufferD2Ev,@function
_ZN12CBenchBufferD2Ev:                  # @_ZN12CBenchBufferD2Ev
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV12CBenchBuffer+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV12CBenchBuffer+16)
	ld.d	$a0, $fp, 16
	st.d	$a1, $fp, 0
.Ltmp146:                               # EH_LABEL
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
.Ltmp147:                               # EH_LABEL
# %bb.1:
	st.d	$zero, $fp, 16
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB17_2:
.Ltmp148:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	_ZN12CBenchBufferD2Ev, .Lfunc_end17-_ZN12CBenchBufferD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN12CBenchBufferD2Ev,"aG",@progbits,_ZN12CBenchBufferD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table17:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp146-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp147-.Ltmp146              #   Call between .Ltmp146 and .Ltmp147
	.uleb128 .Ltmp148-.Lfunc_begin5         #     jumps to .Ltmp148
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp147-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Lfunc_end17-.Ltmp147          #   Call between .Ltmp147 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z8CrcBenchjjRy                 # -- Begin function _Z8CrcBenchjjRy
	.p2align	5
	.type	_Z8CrcBenchjjRy,@function
_Z8CrcBenchjjRy:                        # @_Z8CrcBenchjjRy
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
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
	move	$s0, $a2
	move	$s3, $a1
	move	$s4, $a0
.Ltmp149:                               # EH_LABEL
	move	$a0, $zero
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
.Ltmp150:                               # EH_LABEL
# %bb.1:                                # %.noexc
.Ltmp151:                               # EH_LABEL
	ori	$a0, $zero, 1
	sltu	$a1, $a0, $s4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s6, $a1, $a0
	mulw.d.wu	$s1, $s3, $s6
	move	$a0, $s1
	pcaddu18i	$ra, %call36(MidAlloc)
	jirl	$ra, $ra, 0
.Ltmp152:                               # EH_LABEL
# %bb.2:
	move	$fp, $a0
	beqz	$a0, .LBB18_17
# %bb.3:
	bstrpick.d	$s2, $s3, 31, 0
	bstrpick.d	$a0, $s3, 31, 2
	addi.d	$a0, $a0, 1
	lu12i.w	$a1, 262144
	div.wu	$a0, $a1, $a0
	addi.w	$s5, $a0, 1
	st.w	$zero, $sp, 8
	ori	$a0, $zero, 2
	st.d	$zero, $sp, 16
	bltu	$s4, $a0, .LBB18_18
# %bb.4:
	bstrpick.d	$s6, $s6, 31, 0
	slli.d	$a0, $s6, 5
	alsl.d	$s7, $s6, $a0, 3
	addi.d	$a0, $s7, 8
.Ltmp157:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp158:                               # EH_LABEL
# %bb.5:                                # %vector.ph
	st.d	$s6, $a0, 0
	addi.d	$a1, $s7, -40
	lu12i.w	$a2, -209716
	ori	$a2, $a2, 3277
	lu32i.d	$a2, -209716
	lu52i.d	$a2, $a2, -820
	mulh.du	$a1, $a1, $a2
	srli.d	$a1, $a1, 5
	addi.d	$a1, $a1, 1
	bstrpick.d	$a2, $a1, 59, 1
	slli.d	$a3, $a2, 1
	slli.d	$a4, $a2, 6
	alsl.d	$a2, $a2, $a4, 4
	addi.d	$a4, $a0, 56
	move	$a5, $a3
	.p2align	4, , 16
.LBB18_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a4, -40
	st.w	$zero, $a4, 0
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 80
	bnez	$a5, .LBB18_6
# %bb.7:                                # %middle.block
	beq	$a1, $a3, .LBB18_10
# %bb.8:                                # %scalar.ph.preheader
	sub.d	$a1, $s7, $a2
	add.d	$a2, $a2, $a0
	addi.d	$a2, $a2, 16
	.p2align	4, , 16
.LBB18_9:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a2, 0
	addi.d	$a1, $a1, -40
	addi.d	$a2, $a2, 40
	bnez	$a1, .LBB18_9
.LBB18_10:                              # %.loopexit
	addi.d	$a1, $a0, 8
	st.d	$a1, $sp, 16
	bstrpick.d	$a1, $s4, 31, 0
	beqz	$s3, .LBB18_30
# %bb.11:                               # %.lr.ph.i.i.preheader.preheader
	lu12i.w	$a0, 127267
	ori	$a0, $a0, 2997
	lu12i.w	$a2, 4
	ori	$a2, $a2, 1616
	addi.w	$a3, $zero, -1
	pcalau12i	$a4, %got_pc_hi20(g_CrcTable)
	ld.d	$a4, $a4, %got_pc_lo12(g_CrcTable)
	move	$a5, $zero
	move	$a6, $fp
	.p2align	4, , 16
.LBB18_12:                              # %.lr.ph.i.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_13 Depth 2
                                        #     Child Loop BB18_15 Depth 2
	ld.d	$a7, $sp, 16
	slli.d	$t0, $a5, 5
	alsl.d	$t0, $a5, $t0, 3
	add.d	$a7, $a7, $t0
	mul.d	$t0, $a5, $s2
	add.d	$t0, $fp, $t0
	st.d	$t0, $a7, 16
	st.w	$s5, $a7, 28
	st.w	$s3, $a7, 24
	move	$t0, $a6
	move	$t1, $s2
	.p2align	4, , 16
.LBB18_13:                              # %.lr.ph.i.i
                                        #   Parent Loop BB18_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t2, $a0, 15, 0
	mul.d	$t2, $t2, $a2
	bstrpick.d	$a0, $a0, 31, 16
	add.w	$a0, $t2, $a0
	st.b	$a0, $t0, 0
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 1
	bnez	$t1, .LBB18_13
# %bb.14:                               # %.lr.ph.i6.i.preheader
                                        #   in Loop: Header=BB18_12 Depth=1
	move	$t0, $zero
	move	$t1, $a3
	.p2align	4, , 16
.LBB18_15:                              # %.lr.ph.i6.i
                                        #   Parent Loop BB18_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$t2, $a6, $t0
	xor	$t2, $t2, $t1
	andi	$t2, $t2, 255
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a4, $t2
	bstrpick.d	$t1, $t1, 31, 8
	addi.d	$t0, $t0, 1
	xor	$t1, $t2, $t1
	bne	$s2, $t0, .LBB18_15
# %bb.16:                               # %._crit_edge.loopexit.i.i
                                        #   in Loop: Header=BB18_12 Depth=1
	nor	$t0, $t1, $zero
	st.w	$t0, $a7, 32
	addi.d	$a5, $a5, 1
	add.d	$a6, $a6, $s2
	bne	$a5, $a1, .LBB18_12
	b	.LBB18_35
.LBB18_17:
	lu12i.w	$a0, -524176
	ori	$s2, $a0, 14
	b	.LBB18_56
.LBB18_18:
	beqz	$s3, .LBB18_25
# %bb.19:                               # %.lr.ph.i.i99.preheader
	lu12i.w	$a0, 127267
	ori	$a0, $a0, 2997
	lu12i.w	$a1, 4
	ori	$a1, $a1, 1616
	move	$a2, $fp
	move	$a3, $s2
	.p2align	4, , 16
.LBB18_20:                              # %.lr.ph.i.i99
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a0, 15, 0
	mul.d	$a4, $a4, $a1
	bstrpick.d	$a0, $a0, 31, 16
	add.w	$a0, $a4, $a0
	st.b	$a0, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 1
	bnez	$a3, .LBB18_20
# %bb.21:                               # %.lr.ph.i6.i104.preheader
	addi.w	$a0, $zero, -1
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	move	$a2, $fp
	move	$a3, $s2
	.p2align	4, , 16
.LBB18_22:                              # %.lr.ph.i6.i104
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	xor	$a4, $a4, $a0
	andi	$a4, $a4, 255
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	bstrpick.d	$a0, $a0, 31, 8
	xor	$a0, $a4, $a0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 1
	bnez	$a3, .LBB18_22
# %bb.23:                               # %._crit_edge.loopexit.i.i111
	nor	$s3, $a0, $zero
	addi.d	$a0, $sp, 24
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_26
.LBB18_24:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 244
	ori	$a1, $a1, 576
	mul.d	$s4, $a0, $a1
	move	$s6, $s5
	b	.LBB18_27
.LBB18_25:
	move	$s3, $zero
	addi.d	$a0, $sp, 24
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_24
.LBB18_26:
	ld.d	$a0, $sp, 24
	ld.d	$a1, $sp, 32
	lu12i.w	$a2, 244
	ori	$a2, $a2, 576
	mul.d	$a0, $a0, $a2
	add.d	$s4, $a0, $a1
	move	$s6, $s5
	.p2align	4, , 16
.LBB18_27:                              # %.lr.ph.i116
                                        # =>This Inner Loop Header: Depth=1
.Ltmp154:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(CrcCalc)
	jirl	$ra, $ra, 0
.Ltmp155:                               # EH_LABEL
# %bb.28:                               # %.noexc118
                                        #   in Loop: Header=BB18_27 Depth=1
	addi.w	$a1, $s3, 0
	bne	$a0, $a1, .LBB18_52
# %bb.29:                               #   in Loop: Header=BB18_27 Depth=1
	addi.w	$s6, $s6, -1
	bnez	$s6, .LBB18_27
	b	.LBB18_50
.LBB18_30:                              # %vector.ph192
	bstrpick.d	$a2, $a1, 31, 1
	slli.d	$a2, $a2, 1
	addi.d	$a3, $a0, 40
	slli.d	$a4, $s2, 1
	move	$a5, $a2
	move	$a6, $fp
	.p2align	4, , 16
.LBB18_31:                              # %vector.body195
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a7, $a6, $s2
	st.d	$a6, $a3, -16
	st.d	$a7, $a3, 24
	st.w	$s5, $a3, -4
	st.w	$s5, $a3, 36
	st.w	$zero, $a3, -8
	st.w	$zero, $a3, 32
	st.w	$zero, $a3, 0
	st.w	$zero, $a3, 40
	addi.d	$a3, $a3, 80
	addi.d	$a5, $a5, -2
	add.d	$a6, $a6, $a4
	bnez	$a5, .LBB18_31
# %bb.32:                               # %middle.block198
	beq	$a1, $a2, .LBB18_35
# %bb.33:                               # %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us.preheader
	srli.d	$a3, $a1, 1
	slli.d	$a4, $a3, 6
	alsl.d	$a4, $a3, $a4, 4
	add.d	$a0, $a4, $a0
	addi.d	$a0, $a0, 40
	sub.d	$a1, $a1, $a2
	mul.d	$a2, $a3, $s2
	alsl.d	$a2, $a2, $fp, 1
	.p2align	4, , 16
.LBB18_34:                              # %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a2, $a0, -16
	st.w	$s5, $a0, -4
	st.w	$zero, $a0, -8
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 40
	addi.d	$a1, $a1, -1
	add.d	$a2, $a2, $s2
	bnez	$a1, .LBB18_34
.LBB18_35:                              # %.split144.us
	addi.d	$a0, $sp, 24
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_37
# %bb.36:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 244
	ori	$a1, $a1, 576
	mul.d	$s4, $a0, $a1
	b	.LBB18_38
.LBB18_37:
	ld.d	$a0, $sp, 24
	ld.d	$a1, $sp, 32
	lu12i.w	$a2, 244
	ori	$a2, $a2, 576
	mul.d	$a0, $a0, $a2
	add.d	$s4, $a0, $a1
.LBB18_38:                              # %_ZL12GetTimeCountv.exit
	pcalau12i	$a0, %pc_hi20(_ZL17CrcThreadFunctionPv)
	addi.d	$s3, $a0, %pc_lo12(_ZL17CrcThreadFunctionPv)
	move	$s8, $zero
	.p2align	4, , 16
.LBB18_39:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 16
	add.d	$a0, $a0, $s8
.Ltmp160:                               # EH_LABEL
	move	$a1, $s3
	move	$a2, $a0
	pcaddu18i	$ra, %call36(Thread_Create)
	jirl	$ra, $ra, 0
.Ltmp161:                               # EH_LABEL
# %bb.40:                               # %_ZN8NWindows7CThread6CreateEPFjPvES1_.exit
                                        #   in Loop: Header=BB18_39 Depth=1
	move	$s2, $a0
	bnez	$a0, .LBB18_55
# %bb.41:                               #   in Loop: Header=BB18_39 Depth=1
	ld.w	$a0, $sp, 8
	addi.w	$a0, $a0, 1
	addi.d	$s8, $s8, 40
	st.w	$a0, $sp, 8
	bne	$s7, $s8, .LBB18_39
# %bb.42:
	beqz	$a0, .LBB18_47
# %bb.43:                               # %.lr.ph.i.preheader
	move	$s3, $zero
	move	$s7, $zero
	.p2align	4, , 16
.LBB18_44:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 16
	add.d	$s2, $a0, $s3
.Ltmp163:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(Thread_Wait)
	jirl	$ra, $ra, 0
.Ltmp164:                               # EH_LABEL
# %bb.45:                               # %.noexc96
                                        #   in Loop: Header=BB18_44 Depth=1
.Ltmp165:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(Thread_Close)
	jirl	$ra, $ra, 0
.Ltmp166:                               # EH_LABEL
# %bb.46:                               # %.noexc97
                                        #   in Loop: Header=BB18_44 Depth=1
	ld.wu	$a0, $sp, 8
	addi.d	$s7, $s7, 1
	addi.d	$s3, $s3, 40
	bltu	$s7, $a0, .LBB18_44
.LBB18_47:                              # %_ZN11CCrcThreads7WaitAllEv.exit
	ld.d	$a0, $sp, 16
	st.w	$zero, $sp, 8
	addi.d	$a0, $a0, 36
	.p2align	4, , 16
.LBB18_48:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB18_52
# %bb.49:                               #   in Loop: Header=BB18_48 Depth=1
	addi.d	$s6, $s6, -1
	addi.d	$a0, $a0, 40
	bnez	$s6, .LBB18_48
.LBB18_50:                              # %.critedge
	addi.d	$a0, $sp, 24
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_53
# %bb.51:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 244
	ori	$a1, $a1, 576
	mul.d	$a0, $a0, $a1
	b	.LBB18_54
.LBB18_52:
	ori	$s2, $zero, 1
	b	.LBB18_55
.LBB18_53:
	ld.d	$a0, $sp, 24
	ld.d	$a1, $sp, 32
	lu12i.w	$a2, 244
	ori	$a2, $a2, 576
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
.LBB18_54:                              # %_ZL12GetTimeCountv.exit120
	move	$s2, $zero
	sub.d	$a0, $a0, $s4
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	mul.d	$a1, $s1, $s5
	lu12i.w	$a2, 244
	ori	$a2, $a2, 576
	mul.d	$a1, $a1, $a2
	div.du	$a0, $a1, $a0
	st.d	$a0, $s0, 0
.LBB18_55:                              # %_ZL6CrcBigPKvjjj.exit
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN11CCrcThreadsD2Ev)
	jirl	$ra, $ra, 0
.LBB18_56:
.Ltmp171:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
.Ltmp172:                               # EH_LABEL
# %bb.57:                               # %_ZN12CBenchBufferD2Ev.exit
	move	$a0, $s2
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB18_58:
.Ltmp159:                               # EH_LABEL
	b	.LBB18_64
.LBB18_59:
.Ltmp173:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB18_60:
.Ltmp153:                               # EH_LABEL
	move	$s0, $a0
	move	$fp, $zero
	b	.LBB18_65
.LBB18_61:
.Ltmp162:                               # EH_LABEL
	b	.LBB18_64
.LBB18_62:
.Ltmp156:                               # EH_LABEL
	b	.LBB18_64
.LBB18_63:
.Ltmp167:                               # EH_LABEL
.LBB18_64:
	move	$s0, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN11CCrcThreadsD2Ev)
	jirl	$ra, $ra, 0
.LBB18_65:
.Ltmp168:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
.Ltmp169:                               # EH_LABEL
# %bb.66:                               # %_ZN12CBenchBufferD2Ev.exit121
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB18_67:
.Ltmp170:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_Z8CrcBenchjjRy, .Lfunc_end18-_Z8CrcBenchjjRy
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table18:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp149-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp152-.Ltmp149              #   Call between .Ltmp149 and .Ltmp152
	.uleb128 .Ltmp153-.Lfunc_begin6         #     jumps to .Ltmp153
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp158-.Ltmp157              #   Call between .Ltmp157 and .Ltmp158
	.uleb128 .Ltmp159-.Lfunc_begin6         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp154-.Ltmp158              #   Call between .Ltmp158 and .Ltmp154
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp155-.Ltmp154              #   Call between .Ltmp154 and .Ltmp155
	.uleb128 .Ltmp156-.Lfunc_begin6         #     jumps to .Ltmp156
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp160-.Ltmp155              #   Call between .Ltmp155 and .Ltmp160
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp162-.Lfunc_begin6         #     jumps to .Ltmp162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp166-.Ltmp163              #   Call between .Ltmp163 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin6         #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp166-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp171-.Ltmp166              #   Call between .Ltmp166 and .Ltmp171
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin6         #     jumps to .Ltmp173
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp172-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp168-.Ltmp172              #   Call between .Ltmp172 and .Ltmp168
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin6         #     jumps to .Ltmp170
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp169-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Lfunc_end18-.Ltmp169          #   Call between .Ltmp169 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL17CrcThreadFunctionPv
	.type	_ZL17CrcThreadFunctionPv,@function
_ZL17CrcThreadFunctionPv:               # @_ZL17CrcThreadFunctionPv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.w	$a0, $a0, 28
	beqz	$a0, .LBB19_4
# %bb.1:                                # %.lr.ph.i.preheader
	ld.d	$s0, $fp, 16
	ld.wu	$s1, $fp, 24
	ld.w	$s2, $fp, 32
	addi.w	$s4, $a0, -1
	addi.w	$s3, $zero, -1
	lu32i.d	$s3, 0
	.p2align	4, , 16
.LBB19_2:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(CrcCalc)
	jirl	$ra, $ra, 0
	xor	$a1, $a0, $s2
	sltui	$a1, $a1, 1
	bne	$a0, $s2, .LBB19_5
# %bb.3:                                # %.lr.ph.i
                                        #   in Loop: Header=BB19_2 Depth=1
	bstrpick.d	$a0, $s4, 31, 0
	add.d	$s4, $a0, $s3
	srli.d	$a0, $s4, 32
	andi	$a0, $a0, 1
	bnez	$a0, .LBB19_2
	b	.LBB19_5
.LBB19_4:
	ori	$a1, $zero, 1
.LBB19_5:                               # %_ZL6CrcBigPKvjjj.exit
	st.b	$a1, $fp, 36
	move	$a0, $zero
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end19:
	.size	_ZL17CrcThreadFunctionPv, .Lfunc_end19-_ZL17CrcThreadFunctionPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11CCrcThreadsD2Ev,"axG",@progbits,_ZN11CCrcThreadsD2Ev,comdat
	.weak	_ZN11CCrcThreadsD2Ev            # -- Begin function _ZN11CCrcThreadsD2Ev
	.p2align	5
	.type	_ZN11CCrcThreadsD2Ev,@function
_ZN11CCrcThreadsD2Ev:                   # @_ZN11CCrcThreadsD2Ev
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB20_5
# %bb.1:                                # %.lr.ph.i
	move	$s1, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB20_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	add.d	$s0, $a0, $s1
.Ltmp174:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Thread_Wait)
	jirl	$ra, $ra, 0
.Ltmp175:                               # EH_LABEL
# %bb.3:                                # %.noexc
                                        #   in Loop: Header=BB20_2 Depth=1
.Ltmp176:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Thread_Close)
	jirl	$ra, $ra, 0
.Ltmp177:                               # EH_LABEL
# %bb.4:                                # %.noexc2
                                        #   in Loop: Header=BB20_2 Depth=1
	ld.wu	$a0, $fp, 0
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 40
	bltu	$s2, $a0, .LBB20_2
.LBB20_5:                               # %.loopexit3
	ld.d	$s0, $fp, 8
	st.w	$zero, $fp, 0
	beqz	$s0, .LBB20_11
# %bb.6:
	ld.d	$a0, $s0, -8
	slli.d	$a1, $a0, 5
	alsl.d	$fp, $a0, $a1, 3
	beqz	$a0, .LBB20_10
# %bb.7:                                # %.preheader.preheader
	addi.d	$s1, $s0, -40
	move	$s2, $fp
	.p2align	4, , 16
.LBB20_8:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s1, $s2
.Ltmp179:                               # EH_LABEL
	pcaddu18i	$ra, %call36(Thread_Close)
	jirl	$ra, $ra, 0
.Ltmp180:                               # EH_LABEL
# %bb.9:                                # %_ZN8CCrcInfoD2Ev.exit
                                        #   in Loop: Header=BB20_8 Depth=1
	addi.d	$s2, $s2, -40
	bnez	$s2, .LBB20_8
.LBB20_10:                              # %.loopexit
	addi.d	$a0, $s0, -8
	addi.d	$a1, $fp, 8
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZdaPvm)
	jr	$t8
.LBB20_11:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB20_12:
.Ltmp181:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB20_13:
.Ltmp178:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN11CCrcThreadsD2Ev, .Lfunc_end20-_ZN11CCrcThreadsD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN11CCrcThreadsD2Ev,"aG",@progbits,_ZN11CCrcThreadsD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table20:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp174-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp177-.Ltmp174              #   Call between .Ltmp174 and .Ltmp177
	.uleb128 .Ltmp178-.Lfunc_begin7         #     jumps to .Ltmp178
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp179-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp180-.Ltmp179              #   Call between .Ltmp179 and .Ltmp180
	.uleb128 .Ltmp181-.Lfunc_begin7         #     jumps to .Ltmp181
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp180-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Lfunc_end20-.Ltmp180          #   Call between .Ltmp180 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN18CBenchmarkInStream14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN18CBenchmarkInStream14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN18CBenchmarkInStream14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN18CBenchmarkInStream14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN18CBenchmarkInStream14QueryInterfaceERK4GUIDPPv,@function
_ZN18CBenchmarkInStream14QueryInterfaceERK4GUIDPPv: # @_ZN18CBenchmarkInStream14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	ld.bu	$a5, $a1, 0
	move	$a3, $a0
	pcalau12i	$a0, %got_pc_hi20(IID_IUnknown)
	ld.d	$a4, $a0, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a6, $a4, 0
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 2
	bne	$a5, $a6, .LBB21_17
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a4, 1
	bne	$a5, $a6, .LBB21_17
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a4, 2
	bne	$a5, $a6, .LBB21_17
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a4, 3
	bne	$a5, $a6, .LBB21_17
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a4, 4
	bne	$a5, $a6, .LBB21_17
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a4, 5
	bne	$a5, $a6, .LBB21_17
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a4, 6
	bne	$a5, $a6, .LBB21_17
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a4, 7
	bne	$a5, $a6, .LBB21_17
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a4, 8
	bne	$a5, $a6, .LBB21_17
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a4, 9
	bne	$a5, $a6, .LBB21_17
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a4, 10
	bne	$a5, $a6, .LBB21_17
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a4, 11
	bne	$a5, $a6, .LBB21_17
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a4, 12
	bne	$a5, $a6, .LBB21_17
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a4, 13
	bne	$a5, $a6, .LBB21_17
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a4, 14
	bne	$a5, $a6, .LBB21_17
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a4, 15
	bne	$a1, $a4, .LBB21_17
# %bb.16:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a0, $a3, 0
	st.d	$a3, $a2, 0
	ld.d	$a1, $a0, 8
	move	$a0, $a3
	jirl	$ra, $a1, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB21_17:                              # %_ZeqRK4GUIDS1_.exit.thread
	ret
.Lfunc_end21:
	.size	_ZN18CBenchmarkInStream14QueryInterfaceERK4GUIDPPv, .Lfunc_end21-_ZN18CBenchmarkInStream14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN18CBenchmarkInStream6AddRefEv,"axG",@progbits,_ZN18CBenchmarkInStream6AddRefEv,comdat
	.weak	_ZN18CBenchmarkInStream6AddRefEv # -- Begin function _ZN18CBenchmarkInStream6AddRefEv
	.p2align	5
	.type	_ZN18CBenchmarkInStream6AddRefEv,@function
_ZN18CBenchmarkInStream6AddRefEv:       # @_ZN18CBenchmarkInStream6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end22:
	.size	_ZN18CBenchmarkInStream6AddRefEv, .Lfunc_end22-_ZN18CBenchmarkInStream6AddRefEv
                                        # -- End function
	.section	.text._ZN18CBenchmarkInStream7ReleaseEv,"axG",@progbits,_ZN18CBenchmarkInStream7ReleaseEv,comdat
	.weak	_ZN18CBenchmarkInStream7ReleaseEv # -- Begin function _ZN18CBenchmarkInStream7ReleaseEv
	.p2align	5
	.type	_ZN18CBenchmarkInStream7ReleaseEv,@function
_ZN18CBenchmarkInStream7ReleaseEv:      # @_ZN18CBenchmarkInStream7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB23_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB23_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end23:
	.size	_ZN18CBenchmarkInStream7ReleaseEv, .Lfunc_end23-_ZN18CBenchmarkInStream7ReleaseEv
                                        # -- End function
	.section	.text._ZN18CBenchmarkInStreamD0Ev,"axG",@progbits,_ZN18CBenchmarkInStreamD0Ev,comdat
	.weak	_ZN18CBenchmarkInStreamD0Ev     # -- Begin function _ZN18CBenchmarkInStreamD0Ev
	.p2align	5
	.type	_ZN18CBenchmarkInStreamD0Ev,@function
_ZN18CBenchmarkInStreamD0Ev:            # @_ZN18CBenchmarkInStreamD0Ev
# %bb.0:
	ori	$a1, $zero, 40
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end24:
	.size	_ZN18CBenchmarkInStreamD0Ev, .Lfunc_end24-_ZN18CBenchmarkInStreamD0Ev
                                        # -- End function
	.section	.text._ZN19CBenchmarkOutStream14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN19CBenchmarkOutStream14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN19CBenchmarkOutStream14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN19CBenchmarkOutStream14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN19CBenchmarkOutStream14QueryInterfaceERK4GUIDPPv,@function
_ZN19CBenchmarkOutStream14QueryInterfaceERK4GUIDPPv: # @_ZN19CBenchmarkOutStream14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	ld.bu	$a5, $a1, 0
	move	$a3, $a0
	pcalau12i	$a0, %got_pc_hi20(IID_IUnknown)
	ld.d	$a4, $a0, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a6, $a4, 0
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 2
	bne	$a5, $a6, .LBB25_17
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a4, 1
	bne	$a5, $a6, .LBB25_17
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a4, 2
	bne	$a5, $a6, .LBB25_17
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a4, 3
	bne	$a5, $a6, .LBB25_17
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a4, 4
	bne	$a5, $a6, .LBB25_17
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a4, 5
	bne	$a5, $a6, .LBB25_17
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a4, 6
	bne	$a5, $a6, .LBB25_17
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a4, 7
	bne	$a5, $a6, .LBB25_17
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a4, 8
	bne	$a5, $a6, .LBB25_17
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a4, 9
	bne	$a5, $a6, .LBB25_17
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a4, 10
	bne	$a5, $a6, .LBB25_17
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a4, 11
	bne	$a5, $a6, .LBB25_17
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a4, 12
	bne	$a5, $a6, .LBB25_17
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a4, 13
	bne	$a5, $a6, .LBB25_17
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a4, 14
	bne	$a5, $a6, .LBB25_17
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a4, 15
	bne	$a1, $a4, .LBB25_17
# %bb.16:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a0, $a3, 0
	st.d	$a3, $a2, 0
	ld.d	$a1, $a0, 8
	move	$a0, $a3
	jirl	$ra, $a1, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB25_17:                              # %_ZeqRK4GUIDS1_.exit.thread
	ret
.Lfunc_end25:
	.size	_ZN19CBenchmarkOutStream14QueryInterfaceERK4GUIDPPv, .Lfunc_end25-_ZN19CBenchmarkOutStream14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN19CBenchmarkOutStream6AddRefEv,"axG",@progbits,_ZN19CBenchmarkOutStream6AddRefEv,comdat
	.weak	_ZN19CBenchmarkOutStream6AddRefEv # -- Begin function _ZN19CBenchmarkOutStream6AddRefEv
	.p2align	5
	.type	_ZN19CBenchmarkOutStream6AddRefEv,@function
_ZN19CBenchmarkOutStream6AddRefEv:      # @_ZN19CBenchmarkOutStream6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 32
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 32
	move	$a0, $a1
	ret
.Lfunc_end26:
	.size	_ZN19CBenchmarkOutStream6AddRefEv, .Lfunc_end26-_ZN19CBenchmarkOutStream6AddRefEv
                                        # -- End function
	.section	.text._ZN19CBenchmarkOutStream7ReleaseEv,"axG",@progbits,_ZN19CBenchmarkOutStream7ReleaseEv,comdat
	.weak	_ZN19CBenchmarkOutStream7ReleaseEv # -- Begin function _ZN19CBenchmarkOutStream7ReleaseEv
	.p2align	5
	.type	_ZN19CBenchmarkOutStream7ReleaseEv,@function
_ZN19CBenchmarkOutStream7ReleaseEv:     # @_ZN19CBenchmarkOutStream7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 32
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 32
	bnez	$fp, .LBB27_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB27_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end27:
	.size	_ZN19CBenchmarkOutStream7ReleaseEv, .Lfunc_end27-_ZN19CBenchmarkOutStream7ReleaseEv
                                        # -- End function
	.section	.text._ZN19CBenchmarkOutStreamD2Ev,"axG",@progbits,_ZN19CBenchmarkOutStreamD2Ev,comdat
	.weak	_ZN19CBenchmarkOutStreamD2Ev    # -- Begin function _ZN19CBenchmarkOutStreamD2Ev
	.p2align	5
	.type	_ZN19CBenchmarkOutStreamD2Ev,@function
_ZN19CBenchmarkOutStreamD2Ev:           # @_ZN19CBenchmarkOutStreamD2Ev
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV12CBenchBuffer+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV12CBenchBuffer+16)
	ld.d	$a0, $fp, 24
	st.d	$a1, $fp, 8
.Ltmp182:                               # EH_LABEL
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
.Ltmp183:                               # EH_LABEL
# %bb.1:                                # %_ZN12CBenchBufferD2Ev.exit
	st.d	$zero, $fp, 24
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB28_2:
.Ltmp184:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end28:
	.size	_ZN19CBenchmarkOutStreamD2Ev, .Lfunc_end28-_ZN19CBenchmarkOutStreamD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN19CBenchmarkOutStreamD2Ev,"aG",@progbits,_ZN19CBenchmarkOutStreamD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table28:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp182-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp183-.Ltmp182              #   Call between .Ltmp182 and .Ltmp183
	.uleb128 .Ltmp184-.Lfunc_begin8         #     jumps to .Ltmp184
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp183-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Lfunc_end28-.Ltmp183          #   Call between .Ltmp183 and .Lfunc_end28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN19CBenchmarkOutStreamD0Ev,"axG",@progbits,_ZN19CBenchmarkOutStreamD0Ev,comdat
	.weak	_ZN19CBenchmarkOutStreamD0Ev    # -- Begin function _ZN19CBenchmarkOutStreamD0Ev
	.p2align	5
	.type	_ZN19CBenchmarkOutStreamD0Ev,@function
_ZN19CBenchmarkOutStreamD0Ev:           # @_ZN19CBenchmarkOutStreamD0Ev
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV12CBenchBuffer+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV12CBenchBuffer+16)
	ld.d	$a0, $fp, 24
	st.d	$a1, $fp, 8
.Ltmp185:                               # EH_LABEL
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
.Ltmp186:                               # EH_LABEL
# %bb.1:                                # %_ZN19CBenchmarkOutStreamD2Ev.exit
	ori	$a1, $zero, 40
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB29_2:
.Ltmp187:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end29:
	.size	_ZN19CBenchmarkOutStreamD0Ev, .Lfunc_end29-_ZN19CBenchmarkOutStreamD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN19CBenchmarkOutStreamD0Ev,"aG",@progbits,_ZN19CBenchmarkOutStreamD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table29:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp185-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp186-.Ltmp185              #   Call between .Ltmp185 and .Ltmp186
	.uleb128 .Ltmp187-.Lfunc_begin9         #     jumps to .Ltmp187
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp186-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Lfunc_end29-.Ltmp186          #   Call between .Ltmp186 and .Lfunc_end29
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZThn8_N19CBenchmarkOutStreamD1Ev,"axG",@progbits,_ZThn8_N19CBenchmarkOutStreamD1Ev,comdat
	.weak	_ZThn8_N19CBenchmarkOutStreamD1Ev # -- Begin function _ZThn8_N19CBenchmarkOutStreamD1Ev
	.p2align	5
	.type	_ZThn8_N19CBenchmarkOutStreamD1Ev,@function
_ZThn8_N19CBenchmarkOutStreamD1Ev:      # @_ZThn8_N19CBenchmarkOutStreamD1Ev
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV12CBenchBuffer+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV12CBenchBuffer+16)
	ld.d	$a0, $fp, 16
	st.d	$a1, $fp, 0
.Ltmp188:                               # EH_LABEL
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
.Ltmp189:                               # EH_LABEL
# %bb.1:                                # %_ZN19CBenchmarkOutStreamD2Ev.exit
	st.d	$zero, $fp, 16
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB30_2:
.Ltmp190:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end30:
	.size	_ZThn8_N19CBenchmarkOutStreamD1Ev, .Lfunc_end30-_ZThn8_N19CBenchmarkOutStreamD1Ev
	.cfi_endproc
	.section	.gcc_except_table._ZThn8_N19CBenchmarkOutStreamD1Ev,"aG",@progbits,_ZThn8_N19CBenchmarkOutStreamD1Ev,comdat
	.p2align	2, 0x0
GCC_except_table30:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp188-.Lfunc_begin10        # >> Call Site 1 <<
	.uleb128 .Ltmp189-.Ltmp188              #   Call between .Ltmp188 and .Ltmp189
	.uleb128 .Ltmp190-.Lfunc_begin10        #     jumps to .Ltmp190
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp189-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Lfunc_end30-.Ltmp189          #   Call between .Ltmp189 and .Lfunc_end30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZThn8_N19CBenchmarkOutStreamD0Ev,"axG",@progbits,_ZThn8_N19CBenchmarkOutStreamD0Ev,comdat
	.weak	_ZThn8_N19CBenchmarkOutStreamD0Ev # -- Begin function _ZThn8_N19CBenchmarkOutStreamD0Ev
	.p2align	5
	.type	_ZThn8_N19CBenchmarkOutStreamD0Ev,@function
_ZThn8_N19CBenchmarkOutStreamD0Ev:      # @_ZThn8_N19CBenchmarkOutStreamD0Ev
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV12CBenchBuffer+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV12CBenchBuffer+16)
	ld.d	$a0, $fp, 16
	st.d	$a1, $fp, 0
.Ltmp191:                               # EH_LABEL
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
.Ltmp192:                               # EH_LABEL
# %bb.1:                                # %_ZN19CBenchmarkOutStreamD0Ev.exit
	addi.d	$a0, $fp, -8
	ori	$a1, $zero, 40
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB31_2:
.Ltmp193:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end31:
	.size	_ZThn8_N19CBenchmarkOutStreamD0Ev, .Lfunc_end31-_ZThn8_N19CBenchmarkOutStreamD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZThn8_N19CBenchmarkOutStreamD0Ev,"aG",@progbits,_ZThn8_N19CBenchmarkOutStreamD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table31:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp191-.Lfunc_begin11        # >> Call Site 1 <<
	.uleb128 .Ltmp192-.Ltmp191              #   Call between .Ltmp191 and .Ltmp192
	.uleb128 .Ltmp193-.Lfunc_begin11        #     jumps to .Ltmp193
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp192-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Lfunc_end31-.Ltmp192          #   Call between .Ltmp192 and .Lfunc_end31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CCrcOutStream14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN13CCrcOutStream14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN13CCrcOutStream14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN13CCrcOutStream14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN13CCrcOutStream14QueryInterfaceERK4GUIDPPv,@function
_ZN13CCrcOutStream14QueryInterfaceERK4GUIDPPv: # @_ZN13CCrcOutStream14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	ld.bu	$a5, $a1, 0
	move	$a3, $a0
	pcalau12i	$a0, %got_pc_hi20(IID_IUnknown)
	ld.d	$a4, $a0, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a6, $a4, 0
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 2
	bne	$a5, $a6, .LBB32_17
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a4, 1
	bne	$a5, $a6, .LBB32_17
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a4, 2
	bne	$a5, $a6, .LBB32_17
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a4, 3
	bne	$a5, $a6, .LBB32_17
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a4, 4
	bne	$a5, $a6, .LBB32_17
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a4, 5
	bne	$a5, $a6, .LBB32_17
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a4, 6
	bne	$a5, $a6, .LBB32_17
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a4, 7
	bne	$a5, $a6, .LBB32_17
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a4, 8
	bne	$a5, $a6, .LBB32_17
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a4, 9
	bne	$a5, $a6, .LBB32_17
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a4, 10
	bne	$a5, $a6, .LBB32_17
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a4, 11
	bne	$a5, $a6, .LBB32_17
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a4, 12
	bne	$a5, $a6, .LBB32_17
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a4, 13
	bne	$a5, $a6, .LBB32_17
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a4, 14
	bne	$a5, $a6, .LBB32_17
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a4, 15
	bne	$a1, $a4, .LBB32_17
# %bb.16:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a0, $a3, 0
	st.d	$a3, $a2, 0
	ld.d	$a1, $a0, 8
	move	$a0, $a3
	jirl	$ra, $a1, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB32_17:                              # %_ZeqRK4GUIDS1_.exit.thread
	ret
.Lfunc_end32:
	.size	_ZN13CCrcOutStream14QueryInterfaceERK4GUIDPPv, .Lfunc_end32-_ZN13CCrcOutStream14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CCrcOutStream6AddRefEv,"axG",@progbits,_ZN13CCrcOutStream6AddRefEv,comdat
	.weak	_ZN13CCrcOutStream6AddRefEv     # -- Begin function _ZN13CCrcOutStream6AddRefEv
	.p2align	5
	.type	_ZN13CCrcOutStream6AddRefEv,@function
_ZN13CCrcOutStream6AddRefEv:            # @_ZN13CCrcOutStream6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end33:
	.size	_ZN13CCrcOutStream6AddRefEv, .Lfunc_end33-_ZN13CCrcOutStream6AddRefEv
                                        # -- End function
	.section	.text._ZN13CCrcOutStream7ReleaseEv,"axG",@progbits,_ZN13CCrcOutStream7ReleaseEv,comdat
	.weak	_ZN13CCrcOutStream7ReleaseEv    # -- Begin function _ZN13CCrcOutStream7ReleaseEv
	.p2align	5
	.type	_ZN13CCrcOutStream7ReleaseEv,@function
_ZN13CCrcOutStream7ReleaseEv:           # @_ZN13CCrcOutStream7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB34_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB34_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end34:
	.size	_ZN13CCrcOutStream7ReleaseEv, .Lfunc_end34-_ZN13CCrcOutStream7ReleaseEv
                                        # -- End function
	.section	.text._ZN13CCrcOutStreamD0Ev,"axG",@progbits,_ZN13CCrcOutStreamD0Ev,comdat
	.weak	_ZN13CCrcOutStreamD0Ev          # -- Begin function _ZN13CCrcOutStreamD0Ev
	.p2align	5
	.type	_ZN13CCrcOutStreamD0Ev,@function
_ZN13CCrcOutStreamD0Ev:                 # @_ZN13CCrcOutStreamD0Ev
# %bb.0:
	ori	$a1, $zero, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end35:
	.size	_ZN13CCrcOutStreamD0Ev, .Lfunc_end35-_ZN13CCrcOutStreamD0Ev
                                        # -- End function
	.section	.text._ZN18CBenchProgressInfo14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN18CBenchProgressInfo14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN18CBenchProgressInfo14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN18CBenchProgressInfo14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN18CBenchProgressInfo14QueryInterfaceERK4GUIDPPv,@function
_ZN18CBenchProgressInfo14QueryInterfaceERK4GUIDPPv: # @_ZN18CBenchProgressInfo14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	ld.bu	$a5, $a1, 0
	move	$a3, $a0
	pcalau12i	$a0, %got_pc_hi20(IID_IUnknown)
	ld.d	$a4, $a0, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a6, $a4, 0
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 2
	bne	$a5, $a6, .LBB36_17
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a4, 1
	bne	$a5, $a6, .LBB36_17
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a4, 2
	bne	$a5, $a6, .LBB36_17
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a4, 3
	bne	$a5, $a6, .LBB36_17
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a4, 4
	bne	$a5, $a6, .LBB36_17
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a4, 5
	bne	$a5, $a6, .LBB36_17
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a4, 6
	bne	$a5, $a6, .LBB36_17
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a4, 7
	bne	$a5, $a6, .LBB36_17
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a4, 8
	bne	$a5, $a6, .LBB36_17
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a4, 9
	bne	$a5, $a6, .LBB36_17
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a4, 10
	bne	$a5, $a6, .LBB36_17
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a4, 11
	bne	$a5, $a6, .LBB36_17
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a4, 12
	bne	$a5, $a6, .LBB36_17
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a4, 13
	bne	$a5, $a6, .LBB36_17
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a4, 14
	bne	$a5, $a6, .LBB36_17
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a4, 15
	bne	$a1, $a4, .LBB36_17
# %bb.16:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a0, $a3, 0
	st.d	$a3, $a2, 0
	ld.d	$a1, $a0, 8
	move	$a0, $a3
	jirl	$ra, $a1, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB36_17:                              # %_ZeqRK4GUIDS1_.exit.thread
	ret
.Lfunc_end36:
	.size	_ZN18CBenchProgressInfo14QueryInterfaceERK4GUIDPPv, .Lfunc_end36-_ZN18CBenchProgressInfo14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN18CBenchProgressInfo6AddRefEv,"axG",@progbits,_ZN18CBenchProgressInfo6AddRefEv,comdat
	.weak	_ZN18CBenchProgressInfo6AddRefEv # -- Begin function _ZN18CBenchProgressInfo6AddRefEv
	.p2align	5
	.type	_ZN18CBenchProgressInfo6AddRefEv,@function
_ZN18CBenchProgressInfo6AddRefEv:       # @_ZN18CBenchProgressInfo6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end37:
	.size	_ZN18CBenchProgressInfo6AddRefEv, .Lfunc_end37-_ZN18CBenchProgressInfo6AddRefEv
                                        # -- End function
	.section	.text._ZN18CBenchProgressInfo7ReleaseEv,"axG",@progbits,_ZN18CBenchProgressInfo7ReleaseEv,comdat
	.weak	_ZN18CBenchProgressInfo7ReleaseEv # -- Begin function _ZN18CBenchProgressInfo7ReleaseEv
	.p2align	5
	.type	_ZN18CBenchProgressInfo7ReleaseEv,@function
_ZN18CBenchProgressInfo7ReleaseEv:      # @_ZN18CBenchProgressInfo7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB38_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB38_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end38:
	.size	_ZN18CBenchProgressInfo7ReleaseEv, .Lfunc_end38-_ZN18CBenchProgressInfo7ReleaseEv
                                        # -- End function
	.section	.text._ZN8IUnknownD2Ev,"axG",@progbits,_ZN8IUnknownD2Ev,comdat
	.weak	_ZN8IUnknownD2Ev                # -- Begin function _ZN8IUnknownD2Ev
	.p2align	5
	.type	_ZN8IUnknownD2Ev,@function
_ZN8IUnknownD2Ev:                       # @_ZN8IUnknownD2Ev
# %bb.0:
	ret
.Lfunc_end39:
	.size	_ZN8IUnknownD2Ev, .Lfunc_end39-_ZN8IUnknownD2Ev
                                        # -- End function
	.section	.text._ZN18CBenchProgressInfoD0Ev,"axG",@progbits,_ZN18CBenchProgressInfoD0Ev,comdat
	.weak	_ZN18CBenchProgressInfoD0Ev     # -- Begin function _ZN18CBenchProgressInfoD0Ev
	.p2align	5
	.type	_ZN18CBenchProgressInfoD0Ev,@function
_ZN18CBenchProgressInfoD0Ev:            # @_ZN18CBenchProgressInfoD0Ev
# %bb.0:
	ori	$a1, $zero, 96
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end40:
	.size	_ZN18CBenchProgressInfoD0Ev, .Lfunc_end40-_ZN18CBenchProgressInfoD0Ev
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	5
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZSt9terminatev)
	jirl	$ra, $ra, 0
.Lfunc_end41:
	.size	__clang_call_terminate, .Lfunc_end41-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN12CBenchBufferD0Ev,"axG",@progbits,_ZN12CBenchBufferD0Ev,comdat
	.weak	_ZN12CBenchBufferD0Ev           # -- Begin function _ZN12CBenchBufferD0Ev
	.p2align	5
	.type	_ZN12CBenchBufferD0Ev,@function
_ZN12CBenchBufferD0Ev:                  # @_ZN12CBenchBufferD0Ev
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV12CBenchBuffer+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV12CBenchBuffer+16)
	ld.d	$a0, $fp, 16
	st.d	$a1, $fp, 0
.Ltmp194:                               # EH_LABEL
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
.Ltmp195:                               # EH_LABEL
# %bb.1:                                # %_ZN12CBenchBufferD2Ev.exit
	ori	$a1, $zero, 24
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB42_2:
.Ltmp196:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end42:
	.size	_ZN12CBenchBufferD0Ev, .Lfunc_end42-_ZN12CBenchBufferD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN12CBenchBufferD0Ev,"aG",@progbits,_ZN12CBenchBufferD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table42:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp194-.Lfunc_begin12        # >> Call Site 1 <<
	.uleb128 .Ltmp195-.Ltmp194              #   Call between .Ltmp194 and .Ltmp195
	.uleb128 .Ltmp196-.Lfunc_begin12        #     jumps to .Ltmp196
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp195-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Lfunc_end42-.Ltmp195          #   Call between .Ltmp195 and .Lfunc_end42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN12CEncoderInfoD2Ev,"axG",@progbits,_ZN12CEncoderInfoD2Ev,comdat
	.weak	_ZN12CEncoderInfoD2Ev           # -- Begin function _ZN12CEncoderInfoD2Ev
	.p2align	5
	.type	_ZN12CEncoderInfoD2Ev,@function
_ZN12CEncoderInfoD2Ev:                  # @_ZN12CEncoderInfoD2Ev
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception13
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 216
	beqz	$a0, .LBB43_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp197:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp198:                               # EH_LABEL
.LBB43_2:                               # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit
	pcalau12i	$a0, %pc_hi20(_ZTV12CBenchBuffer+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV12CBenchBuffer+16)
	ld.d	$a0, $fp, 192
	st.d	$a1, $fp, 176
.Ltmp200:                               # EH_LABEL
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
.Ltmp201:                               # EH_LABEL
# %bb.3:                                # %_ZN12CBenchBufferD2Ev.exit
	ld.d	$a0, $fp, 144
	st.d	$zero, $fp, 192
	beqz	$a0, .LBB43_5
# %bb.4:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp203:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp204:                               # EH_LABEL
.LBB43_5:                               # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit8
	ld.d	$a0, $fp, 120
	beqz	$a0, .LBB43_7
# %bb.6:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp206:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp207:                               # EH_LABEL
.LBB43_7:                               # %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit
	ld.d	$a0, $fp, 112
	beqz	$a0, .LBB43_9
# %bb.8:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp208:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp209:                               # EH_LABEL
.LBB43_9:                               # %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit.1
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB43_11
# %bb.10:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp211:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp212:                               # EH_LABEL
.LBB43_11:                              # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB43_13
# %bb.12:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp213:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp214:                               # EH_LABEL
.LBB43_13:                              # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit.1
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB43_15
# %bb.14:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp216:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp217:                               # EH_LABEL
.LBB43_15:                              # %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit12
	addi.d	$a0, $fp, 16
.Ltmp219:                               # EH_LABEL
	pcaddu18i	$ra, %call36(Thread_Close)
	jirl	$ra, $ra, 0
.Ltmp220:                               # EH_LABEL
# %bb.16:                               # %_ZN8NWindows7CThreadD2Ev.exit
.Ltmp221:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Thread_Close)
	jirl	$ra, $ra, 0
.Ltmp222:                               # EH_LABEL
# %bb.17:                               # %_ZN8NWindows7CThreadD2Ev.exit.1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB43_18:
.Ltmp218:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB43_19:
.Ltmp205:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB43_20:
.Ltmp199:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB43_21:
.Ltmp202:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB43_22:
.Ltmp215:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB43_23:
.Ltmp210:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB43_24:
.Ltmp223:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end43:
	.size	_ZN12CEncoderInfoD2Ev, .Lfunc_end43-_ZN12CEncoderInfoD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN12CEncoderInfoD2Ev,"aG",@progbits,_ZN12CEncoderInfoD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table43:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp197-.Lfunc_begin13        # >> Call Site 1 <<
	.uleb128 .Ltmp198-.Ltmp197              #   Call between .Ltmp197 and .Ltmp198
	.uleb128 .Ltmp199-.Lfunc_begin13        #     jumps to .Ltmp199
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp200-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Ltmp201-.Ltmp200              #   Call between .Ltmp200 and .Ltmp201
	.uleb128 .Ltmp202-.Lfunc_begin13        #     jumps to .Ltmp202
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp203-.Lfunc_begin13        # >> Call Site 3 <<
	.uleb128 .Ltmp204-.Ltmp203              #   Call between .Ltmp203 and .Ltmp204
	.uleb128 .Ltmp205-.Lfunc_begin13        #     jumps to .Ltmp205
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp206-.Lfunc_begin13        # >> Call Site 4 <<
	.uleb128 .Ltmp209-.Ltmp206              #   Call between .Ltmp206 and .Ltmp209
	.uleb128 .Ltmp210-.Lfunc_begin13        #     jumps to .Ltmp210
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp211-.Lfunc_begin13        # >> Call Site 5 <<
	.uleb128 .Ltmp214-.Ltmp211              #   Call between .Ltmp211 and .Ltmp214
	.uleb128 .Ltmp215-.Lfunc_begin13        #     jumps to .Ltmp215
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp216-.Lfunc_begin13        # >> Call Site 6 <<
	.uleb128 .Ltmp217-.Ltmp216              #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin13        #     jumps to .Ltmp218
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp219-.Lfunc_begin13        # >> Call Site 7 <<
	.uleb128 .Ltmp222-.Ltmp219              #   Call between .Ltmp219 and .Ltmp222
	.uleb128 .Ltmp223-.Lfunc_begin13        #     jumps to .Ltmp223
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp222-.Lfunc_begin13        # >> Call Site 8 <<
	.uleb128 .Lfunc_end43-.Ltmp222          #   Call between .Ltmp222 and .Lfunc_end43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase12:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN21CBenchRandomGeneratorD0Ev,"axG",@progbits,_ZN21CBenchRandomGeneratorD0Ev,comdat
	.weak	_ZN21CBenchRandomGeneratorD0Ev  # -- Begin function _ZN21CBenchRandomGeneratorD0Ev
	.p2align	5
	.type	_ZN21CBenchRandomGeneratorD0Ev,@function
_ZN21CBenchRandomGeneratorD0Ev:         # @_ZN21CBenchRandomGeneratorD0Ev
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV12CBenchBuffer+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV12CBenchBuffer+16)
	ld.d	$a0, $fp, 16
	st.d	$a1, $fp, 0
.Ltmp224:                               # EH_LABEL
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
.Ltmp225:                               # EH_LABEL
# %bb.1:                                # %_ZN12CBenchBufferD2Ev.exit
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB44_2:
.Ltmp226:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end44:
	.size	_ZN21CBenchRandomGeneratorD0Ev, .Lfunc_end44-_ZN21CBenchRandomGeneratorD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN21CBenchRandomGeneratorD0Ev,"aG",@progbits,_ZN21CBenchRandomGeneratorD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table44:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp224-.Lfunc_begin14        # >> Call Site 1 <<
	.uleb128 .Ltmp225-.Ltmp224              #   Call between .Ltmp224 and .Ltmp225
	.uleb128 .Ltmp226-.Lfunc_begin14        #     jumps to .Ltmp226
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp225-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Lfunc_end44-.Ltmp225          #   Call between .Ltmp225 and .Lfunc_end44
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase13:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN12CEncoderInfo20EncodeThreadFunctionEPv,"axG",@progbits,_ZN12CEncoderInfo20EncodeThreadFunctionEPv,comdat
	.weak	_ZN12CEncoderInfo20EncodeThreadFunctionEPv # -- Begin function _ZN12CEncoderInfo20EncodeThreadFunctionEPv
	.p2align	5
	.type	_ZN12CEncoderInfo20EncodeThreadFunctionEPv,@function
_ZN12CEncoderInfo20EncodeThreadFunctionEPv: # @_ZN12CEncoderInfo20EncodeThreadFunctionEPv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN12CEncoderInfo6EncodeEv)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 128
	beqz	$a0, .LBB45_2
# %bb.1:
	move	$fp, $a0
	ld.d	$a0, $s0, 40
	ld.d	$s0, $a0, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pthread_mutex_lock)
	jirl	$ra, $ra, 0
	st.w	$fp, $s0, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
.LBB45_2:
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end45:
	.size	_ZN12CEncoderInfo20EncodeThreadFunctionEPv, .Lfunc_end45-_ZN12CEncoderInfo20EncodeThreadFunctionEPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN12CEncoderInfo20DecodeThreadFunctionEPv,"axG",@progbits,_ZN12CEncoderInfo20DecodeThreadFunctionEPv,comdat
	.weak	_ZN12CEncoderInfo20DecodeThreadFunctionEPv # -- Begin function _ZN12CEncoderInfo20DecodeThreadFunctionEPv
	.p2align	5
	.type	_ZN12CEncoderInfo20DecodeThreadFunctionEPv,@function
_ZN12CEncoderInfo20DecodeThreadFunctionEPv: # @_ZN12CEncoderInfo20DecodeThreadFunctionEPv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	ld.d	$s0, $a0, 0
	ld.w	$a1, $a0, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12CEncoderInfo6DecodeEj)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 8
	alsl.d	$a1, $a1, $s0, 2
	st.w	$a0, $a1, 128
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end46:
	.size	_ZN12CEncoderInfo20DecodeThreadFunctionEPv, .Lfunc_end46-_ZN12CEncoderInfo20DecodeThreadFunctionEPv
	.cfi_endproc
                                        # -- End function
	.type	_ZTV18CBenchmarkInStream,@object # @_ZTV18CBenchmarkInStream
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV18CBenchmarkInStream
	.p2align	3, 0x0
_ZTV18CBenchmarkInStream:
	.dword	0
	.dword	_ZTI18CBenchmarkInStream
	.dword	_ZN18CBenchmarkInStream14QueryInterfaceERK4GUIDPPv
	.dword	_ZN18CBenchmarkInStream6AddRefEv
	.dword	_ZN18CBenchmarkInStream7ReleaseEv
	.dword	_ZN8IUnknownD2Ev
	.dword	_ZN18CBenchmarkInStreamD0Ev
	.dword	_ZN18CBenchmarkInStream4ReadEPvjPj
	.size	_ZTV18CBenchmarkInStream, 64

	.type	_ZTI18CBenchmarkInStream,@object # @_ZTI18CBenchmarkInStream
	.globl	_ZTI18CBenchmarkInStream
	.p2align	3, 0x0
_ZTI18CBenchmarkInStream:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTS18CBenchmarkInStream
	.word	0                               # 0x0
	.word	2                               # 0x2
	.dword	_ZTI19ISequentialInStream
	.dword	2                               # 0x2
	.dword	_ZTI13CMyUnknownImp
	.dword	2050                            # 0x802
	.size	_ZTI18CBenchmarkInStream, 56

	.type	_ZTS18CBenchmarkInStream,@object # @_ZTS18CBenchmarkInStream
	.section	.rodata,"a",@progbits
	.globl	_ZTS18CBenchmarkInStream
_ZTS18CBenchmarkInStream:
	.asciz	"18CBenchmarkInStream"
	.size	_ZTS18CBenchmarkInStream, 21

	.type	_ZTI19ISequentialInStream,@object # @_ZTI19ISequentialInStream
	.section	.data.rel.ro._ZTI19ISequentialInStream,"awG",@progbits,_ZTI19ISequentialInStream,comdat
	.weak	_ZTI19ISequentialInStream
	.p2align	3, 0x0
_ZTI19ISequentialInStream:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS19ISequentialInStream
	.dword	_ZTI8IUnknown
	.size	_ZTI19ISequentialInStream, 24

	.type	_ZTS19ISequentialInStream,@object # @_ZTS19ISequentialInStream
	.section	.rodata._ZTS19ISequentialInStream,"aG",@progbits,_ZTS19ISequentialInStream,comdat
	.weak	_ZTS19ISequentialInStream
_ZTS19ISequentialInStream:
	.asciz	"19ISequentialInStream"
	.size	_ZTS19ISequentialInStream, 22

	.type	_ZTI8IUnknown,@object           # @_ZTI8IUnknown
	.section	.data.rel.ro._ZTI8IUnknown,"awG",@progbits,_ZTI8IUnknown,comdat
	.weak	_ZTI8IUnknown
	.p2align	3, 0x0
_ZTI8IUnknown:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS8IUnknown
	.size	_ZTI8IUnknown, 16

	.type	_ZTS8IUnknown,@object           # @_ZTS8IUnknown
	.section	.rodata._ZTS8IUnknown,"aG",@progbits,_ZTS8IUnknown,comdat
	.weak	_ZTS8IUnknown
_ZTS8IUnknown:
	.asciz	"8IUnknown"
	.size	_ZTS8IUnknown, 10

	.type	_ZTI13CMyUnknownImp,@object     # @_ZTI13CMyUnknownImp
	.section	.data.rel.ro._ZTI13CMyUnknownImp,"awG",@progbits,_ZTI13CMyUnknownImp,comdat
	.weak	_ZTI13CMyUnknownImp
	.p2align	3, 0x0
_ZTI13CMyUnknownImp:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS13CMyUnknownImp
	.size	_ZTI13CMyUnknownImp, 16

	.type	_ZTS13CMyUnknownImp,@object     # @_ZTS13CMyUnknownImp
	.section	.rodata._ZTS13CMyUnknownImp,"aG",@progbits,_ZTS13CMyUnknownImp,comdat
	.weak	_ZTS13CMyUnknownImp
_ZTS13CMyUnknownImp:
	.asciz	"13CMyUnknownImp"
	.size	_ZTS13CMyUnknownImp, 16

	.type	_ZTV19CBenchmarkOutStream,@object # @_ZTV19CBenchmarkOutStream
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV19CBenchmarkOutStream
	.p2align	3, 0x0
_ZTV19CBenchmarkOutStream:
	.dword	0
	.dword	_ZTI19CBenchmarkOutStream
	.dword	_ZN19CBenchmarkOutStream14QueryInterfaceERK4GUIDPPv
	.dword	_ZN19CBenchmarkOutStream6AddRefEv
	.dword	_ZN19CBenchmarkOutStream7ReleaseEv
	.dword	_ZN19CBenchmarkOutStreamD2Ev
	.dword	_ZN19CBenchmarkOutStreamD0Ev
	.dword	_ZN19CBenchmarkOutStream5WriteEPKvjPj
	.dword	-8
	.dword	_ZTI19CBenchmarkOutStream
	.dword	_ZThn8_N19CBenchmarkOutStreamD1Ev
	.dword	_ZThn8_N19CBenchmarkOutStreamD0Ev
	.size	_ZTV19CBenchmarkOutStream, 96

	.type	_ZTI19CBenchmarkOutStream,@object # @_ZTI19CBenchmarkOutStream
	.globl	_ZTI19CBenchmarkOutStream
	.p2align	3, 0x0
_ZTI19CBenchmarkOutStream:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTS19CBenchmarkOutStream
	.word	0                               # 0x0
	.word	3                               # 0x3
	.dword	_ZTI20ISequentialOutStream
	.dword	2                               # 0x2
	.dword	_ZTI12CBenchBuffer
	.dword	2050                            # 0x802
	.dword	_ZTI13CMyUnknownImp
	.dword	8194                            # 0x2002
	.size	_ZTI19CBenchmarkOutStream, 72

	.type	_ZTS19CBenchmarkOutStream,@object # @_ZTS19CBenchmarkOutStream
	.section	.rodata,"a",@progbits
	.globl	_ZTS19CBenchmarkOutStream
_ZTS19CBenchmarkOutStream:
	.asciz	"19CBenchmarkOutStream"
	.size	_ZTS19CBenchmarkOutStream, 22

	.type	_ZTI20ISequentialOutStream,@object # @_ZTI20ISequentialOutStream
	.section	.data.rel.ro._ZTI20ISequentialOutStream,"awG",@progbits,_ZTI20ISequentialOutStream,comdat
	.weak	_ZTI20ISequentialOutStream
	.p2align	3, 0x0
_ZTI20ISequentialOutStream:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS20ISequentialOutStream
	.dword	_ZTI8IUnknown
	.size	_ZTI20ISequentialOutStream, 24

	.type	_ZTS20ISequentialOutStream,@object # @_ZTS20ISequentialOutStream
	.section	.rodata._ZTS20ISequentialOutStream,"aG",@progbits,_ZTS20ISequentialOutStream,comdat
	.weak	_ZTS20ISequentialOutStream
_ZTS20ISequentialOutStream:
	.asciz	"20ISequentialOutStream"
	.size	_ZTS20ISequentialOutStream, 23

	.type	_ZTI12CBenchBuffer,@object      # @_ZTI12CBenchBuffer
	.section	.data.rel.ro._ZTI12CBenchBuffer,"awG",@progbits,_ZTI12CBenchBuffer,comdat
	.weak	_ZTI12CBenchBuffer
	.p2align	3, 0x0
_ZTI12CBenchBuffer:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS12CBenchBuffer
	.size	_ZTI12CBenchBuffer, 16

	.type	_ZTS12CBenchBuffer,@object      # @_ZTS12CBenchBuffer
	.section	.rodata._ZTS12CBenchBuffer,"aG",@progbits,_ZTS12CBenchBuffer,comdat
	.weak	_ZTS12CBenchBuffer
_ZTS12CBenchBuffer:
	.asciz	"12CBenchBuffer"
	.size	_ZTS12CBenchBuffer, 15

	.type	_ZTV13CCrcOutStream,@object     # @_ZTV13CCrcOutStream
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV13CCrcOutStream
	.p2align	3, 0x0
_ZTV13CCrcOutStream:
	.dword	0
	.dword	_ZTI13CCrcOutStream
	.dword	_ZN13CCrcOutStream14QueryInterfaceERK4GUIDPPv
	.dword	_ZN13CCrcOutStream6AddRefEv
	.dword	_ZN13CCrcOutStream7ReleaseEv
	.dword	_ZN8IUnknownD2Ev
	.dword	_ZN13CCrcOutStreamD0Ev
	.dword	_ZN13CCrcOutStream5WriteEPKvjPj
	.size	_ZTV13CCrcOutStream, 64

	.type	_ZTI13CCrcOutStream,@object     # @_ZTI13CCrcOutStream
	.globl	_ZTI13CCrcOutStream
	.p2align	3, 0x0
_ZTI13CCrcOutStream:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTS13CCrcOutStream
	.word	0                               # 0x0
	.word	2                               # 0x2
	.dword	_ZTI20ISequentialOutStream
	.dword	2                               # 0x2
	.dword	_ZTI13CMyUnknownImp
	.dword	2050                            # 0x802
	.size	_ZTI13CCrcOutStream, 56

	.type	_ZTS13CCrcOutStream,@object     # @_ZTS13CCrcOutStream
	.section	.rodata,"a",@progbits
	.globl	_ZTS13CCrcOutStream
_ZTS13CCrcOutStream:
	.asciz	"13CCrcOutStream"
	.size	_ZTS13CCrcOutStream, 16

	.type	_ZTV18CBenchProgressInfo,@object # @_ZTV18CBenchProgressInfo
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV18CBenchProgressInfo
	.p2align	3, 0x0
_ZTV18CBenchProgressInfo:
	.dword	0
	.dword	_ZTI18CBenchProgressInfo
	.dword	_ZN18CBenchProgressInfo14QueryInterfaceERK4GUIDPPv
	.dword	_ZN18CBenchProgressInfo6AddRefEv
	.dword	_ZN18CBenchProgressInfo7ReleaseEv
	.dword	_ZN8IUnknownD2Ev
	.dword	_ZN18CBenchProgressInfoD0Ev
	.dword	_ZN18CBenchProgressInfo12SetRatioInfoEPKyS1_
	.size	_ZTV18CBenchProgressInfo, 64

	.type	_ZTI18CBenchProgressInfo,@object # @_ZTI18CBenchProgressInfo
	.globl	_ZTI18CBenchProgressInfo
	.p2align	3, 0x0
_ZTI18CBenchProgressInfo:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTS18CBenchProgressInfo
	.word	0                               # 0x0
	.word	2                               # 0x2
	.dword	_ZTI21ICompressProgressInfo
	.dword	2                               # 0x2
	.dword	_ZTI13CMyUnknownImp
	.dword	2050                            # 0x802
	.size	_ZTI18CBenchProgressInfo, 56

	.type	_ZTS18CBenchProgressInfo,@object # @_ZTS18CBenchProgressInfo
	.section	.rodata,"a",@progbits
	.globl	_ZTS18CBenchProgressInfo
_ZTS18CBenchProgressInfo:
	.asciz	"18CBenchProgressInfo"
	.size	_ZTS18CBenchProgressInfo, 21

	.type	_ZTI21ICompressProgressInfo,@object # @_ZTI21ICompressProgressInfo
	.section	.data.rel.ro._ZTI21ICompressProgressInfo,"awG",@progbits,_ZTI21ICompressProgressInfo,comdat
	.weak	_ZTI21ICompressProgressInfo
	.p2align	3, 0x0
_ZTI21ICompressProgressInfo:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS21ICompressProgressInfo
	.dword	_ZTI8IUnknown
	.size	_ZTI21ICompressProgressInfo, 24

	.type	_ZTS21ICompressProgressInfo,@object # @_ZTS21ICompressProgressInfo
	.section	.rodata._ZTS21ICompressProgressInfo,"aG",@progbits,_ZTS21ICompressProgressInfo,comdat
	.weak	_ZTS21ICompressProgressInfo
_ZTS21ICompressProgressInfo:
	.asciz	"21ICompressProgressInfo"
	.size	_ZTS21ICompressProgressInfo, 24

	.type	_ZTV12CBenchBuffer,@object      # @_ZTV12CBenchBuffer
	.section	.data.rel.ro._ZTV12CBenchBuffer,"awG",@progbits,_ZTV12CBenchBuffer,comdat
	.weak	_ZTV12CBenchBuffer
	.p2align	3, 0x0
_ZTV12CBenchBuffer:
	.dword	0
	.dword	_ZTI12CBenchBuffer
	.dword	_ZN12CBenchBufferD2Ev
	.dword	_ZN12CBenchBufferD0Ev
	.size	_ZTV12CBenchBuffer, 32

	.type	_ZTV21CBenchRandomGenerator,@object # @_ZTV21CBenchRandomGenerator
	.section	.data.rel.ro._ZTV21CBenchRandomGenerator,"awG",@progbits,_ZTV21CBenchRandomGenerator,comdat
	.weak	_ZTV21CBenchRandomGenerator
	.p2align	3, 0x0
_ZTV21CBenchRandomGenerator:
	.dword	0
	.dword	_ZTI21CBenchRandomGenerator
	.dword	_ZN12CBenchBufferD2Ev
	.dword	_ZN21CBenchRandomGeneratorD0Ev
	.size	_ZTV21CBenchRandomGenerator, 32

	.type	_ZTI21CBenchRandomGenerator,@object # @_ZTI21CBenchRandomGenerator
	.section	.data.rel.ro._ZTI21CBenchRandomGenerator,"awG",@progbits,_ZTI21CBenchRandomGenerator,comdat
	.weak	_ZTI21CBenchRandomGenerator
	.p2align	3, 0x0
_ZTI21CBenchRandomGenerator:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS21CBenchRandomGenerator
	.dword	_ZTI12CBenchBuffer
	.size	_ZTI21CBenchRandomGenerator, 24

	.type	_ZTS21CBenchRandomGenerator,@object # @_ZTS21CBenchRandomGenerator
	.section	.rodata._ZTS21CBenchRandomGenerator,"aG",@progbits,_ZTS21CBenchRandomGenerator,comdat
	.weak	_ZTS21CBenchRandomGenerator
_ZTS21CBenchRandomGenerator:
	.asciz	"21CBenchRandomGenerator"
	.size	_ZTS21CBenchRandomGenerator, 24

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
	.addrsig_sym _ZL17CrcThreadFunctionPv
	.addrsig_sym _ZN12CEncoderInfo20EncodeThreadFunctionEPv
	.addrsig_sym _ZN12CEncoderInfo20DecodeThreadFunctionEPv
	.addrsig_sym _Unwind_Resume
	.addrsig_sym IID_ICompressSetCoderProperties
	.addrsig_sym IID_ICompressWriteCoderProperties
	.addrsig_sym IID_ICompressSetDecoderProperties2
	.addrsig_sym _ZTI18CBenchmarkInStream
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTS18CBenchmarkInStream
	.addrsig_sym _ZTI19ISequentialInStream
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS19ISequentialInStream
	.addrsig_sym _ZTI8IUnknown
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS8IUnknown
	.addrsig_sym _ZTI13CMyUnknownImp
	.addrsig_sym _ZTS13CMyUnknownImp
	.addrsig_sym _ZTI19CBenchmarkOutStream
	.addrsig_sym _ZTS19CBenchmarkOutStream
	.addrsig_sym _ZTI20ISequentialOutStream
	.addrsig_sym _ZTS20ISequentialOutStream
	.addrsig_sym _ZTI12CBenchBuffer
	.addrsig_sym _ZTS12CBenchBuffer
	.addrsig_sym _ZTI13CCrcOutStream
	.addrsig_sym _ZTS13CCrcOutStream
	.addrsig_sym _ZTI18CBenchProgressInfo
	.addrsig_sym _ZTS18CBenchProgressInfo
	.addrsig_sym _ZTI21ICompressProgressInfo
	.addrsig_sym _ZTS21ICompressProgressInfo
	.addrsig_sym _ZTI21CBenchRandomGenerator
	.addrsig_sym _ZTS21CBenchRandomGenerator
