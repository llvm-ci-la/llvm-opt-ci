	.file	"BenchCon.cpp"
	.text
	.globl	_ZN14CBenchCallback15SetEncodeResultERK10CBenchInfob # -- Begin function _ZN14CBenchCallback15SetEncodeResultERK10CBenchInfob
	.p2align	5
	.type	_ZN14CBenchCallback15SetEncodeResultERK10CBenchInfob,@function
_ZN14CBenchCallback15SetEncodeResultERK10CBenchInfob: # @_ZN14CBenchCallback15SetEncodeResultERK10CBenchInfob
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
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN13NConsoleClose15TestBreakSignalEv)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 4
	maskeqz	$a0, $a0, $a1
	bnez	$a1, .LBB0_3
# %bb.1:
	beqz	$s1, .LBB0_3
# %bb.2:
	ld.w	$a0, $s0, 80
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	ld.d	$a3, $fp, 32
	pcaddu18i	$ra, %call36(_Z17GetCompressRatingjyyy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 72
	move	$a2, $a0
	addi.d	$a3, $s0, 8
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZL12PrintResultsP8_IO_FILERK10CBenchInfoyR14CTotalBenchRes)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB0_3:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	_ZN14CBenchCallback15SetEncodeResultERK10CBenchInfob, .Lfunc_end0-_ZN14CBenchCallback15SetEncodeResultERK10CBenchInfob
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL12PrintResultsP8_IO_FILERK10CBenchInfoyR14CTotalBenchRes
	.type	_ZL12PrintResultsP8_IO_FILERK10CBenchInfoyR14CTotalBenchRes,@function
_ZL12PrintResultsP8_IO_FILERK10CBenchInfoyR14CTotalBenchRes: # @_ZL12PrintResultsP8_IO_FILERK10CBenchInfoyR14CTotalBenchRes
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$s1, $a1
	ld.d	$a1, $a1, 32
	ld.d	$a4, $s1, 8
	ld.d	$a5, $s1, 0
	lu12i.w	$a6, 244
	ori	$a6, $a6, 577
	move	$fp, $a3
	move	$s0, $a2
	move	$s2, $a0
	bltu	$a4, $a6, .LBB1_3
# %bb.1:                                # %.lr.ph.i.i.preheader
	lu12i.w	$a0, 488
	ori	$a0, $a0, 1153
	.p2align	4, , 16
.LBB1_2:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a4
	srli.d	$a4, $a4, 1
	srli.d	$a5, $a5, 1
	bltu	$a0, $a2, .LBB1_2
.LBB1_3:                                # %_ZL11MyMultDiv64yyy.exit
	ori	$a0, $zero, 1
	sltu	$a2, $a0, $a5
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a5, $a2
	or	$a0, $a2, $a0
	mul.d	$a1, $a4, $a1
	div.du	$a0, $a1, $a0
	srli.d	$a0, $a0, 10
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_Z21ConvertUInt64ToStringyPcj)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	ori	$a2, $zero, 6
	blt	$a2, $a1, .LBB1_6
# %bb.4:                                # %.lr.ph.i.preheader
	addi.w	$s3, $a0, -7
	.p2align	4, , 16
.LBB1_5:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s3, 31, 0
	addi.d	$s3, $a0, 1
	slli.d	$a0, $s3, 31
	bgez	$a0, .LBB1_5
.LBB1_6:                                # %_ZL11PrintNumberP8_IO_FILEyi.exit
	addi.d	$a0, $sp, 16
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Z8GetUsageRK10CBenchInfo)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_Z17GetRatingPerUsageRK10CBenchInfoy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZL12PrintResultsP8_IO_FILEyyy)
	jirl	$ra, $ra, 0
	vld	$vr0, $fp, 0
	vrepli.d	$vr1, 1
	vinsgr2vr.d	$vr1, $s0, 1
	vadd.d	$vr0, $vr0, $vr1
	vld	$vr1, $fp, 16
	vst	$vr0, $fp, 0
	vinsgr2vr.d	$vr0, $s3, 0
	vinsgr2vr.d	$vr0, $s1, 1
	vadd.d	$vr0, $vr1, $vr0
	vst	$vr0, $fp, 16
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end1:
	.size	_ZL12PrintResultsP8_IO_FILERK10CBenchInfoyR14CTotalBenchRes, .Lfunc_end1-_ZL12PrintResultsP8_IO_FILERK10CBenchInfoyR14CTotalBenchRes
	.cfi_endproc
                                        # -- End function
	.globl	_ZN14CBenchCallback15SetDecodeResultERK10CBenchInfob # -- Begin function _ZN14CBenchCallback15SetDecodeResultERK10CBenchInfob
	.p2align	5
	.type	_ZN14CBenchCallback15SetDecodeResultERK10CBenchInfob,@function
_ZN14CBenchCallback15SetDecodeResultERK10CBenchInfob: # @_ZN14CBenchCallback15SetDecodeResultERK10CBenchInfob
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$s1, $a2
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN13NConsoleClose15TestBreakSignalEv)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 4
	maskeqz	$a0, $a0, $a1
	bnez	$a1, .LBB2_3
# %bb.1:
	beqz	$s1, .LBB2_3
# %bb.2:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	ld.d	$a2, $s0, 32
	ld.d	$a3, $s0, 40
	ld.w	$a4, $s0, 48
	pcaddu18i	$ra, %call36(_Z19GetDecompressRatingyyyyj)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 72
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 48
	vld	$vr0, $s0, 16
	vld	$vr1, $s0, 0
	st.d	$a0, $sp, 64
	vst	$vr0, $sp, 32
	vld	$vr0, $s0, 32
	vst	$vr1, $sp, 16
	bstrpick.d	$a0, $a0, 31, 0
	vreplgr2vr.d	$vr1, $a0
	vmul.d	$vr0, $vr0, $vr1
	ld.d	$a0, $fp, 72
	vst	$vr0, $sp, 48
	st.w	$s2, $sp, 64
	addi.d	$a3, $fp, 40
	addi.d	$a1, $sp, 16
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZL12PrintResultsP8_IO_FILERK10CBenchInfoyR14CTotalBenchRes)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB2_3:
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end2:
	.size	_ZN14CBenchCallback15SetDecodeResultERK10CBenchInfob, .Lfunc_end2-_ZN14CBenchCallback15SetDecodeResultERK10CBenchInfob
	.cfi_endproc
                                        # -- End function
	.globl	_Z12LzmaBenchConP8_IO_FILEjjj   # -- Begin function _Z12LzmaBenchConP8_IO_FILEjjj
	.p2align	5
	.type	_Z12LzmaBenchConP8_IO_FILEjjj,@function
_Z12LzmaBenchConP8_IO_FILEjjj:          # @_Z12LzmaBenchConP8_IO_FILEjjj
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -192
	.cfi_def_cfa_offset 192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
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
	move	$s2, $a3
	move	$s1, $a2
	move	$s0, $a1
	move	$fp, $a0
	ori	$s5, $zero, 1
	pcaddu18i	$ra, %call36(_Z15CrcInternalTestv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_23
# %bb.1:
	pcaddu18i	$ra, %call36(_ZN8NWindows7NSystem10GetRamSizeEv)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcaddu18i	$ra, %call36(_ZN8NWindows7NSystem21GetNumberOfProcessorsEv)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a3, $a0, %pc_lo12(.L.str.1)
	move	$a0, $fp
	move	$a2, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(_ZL17PrintRequirementsP8_IO_FILEPKcyS2_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 1
	sltui	$a0, $a0, 1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 1
	sltu	$a1, $a1, $a0
	masknez	$a2, $a0, $a1
	bstrins.d	$a0, $zero, 0, 0
	maskeqz	$a0, $a0, $a1
	addi.w	$a1, $zero, -1
	or	$s1, $a0, $a2
	bne	$s2, $a1, .LBB3_10
# %bb.2:                                # %.preheader88.preheader
	lu12i.w	$a1, 8192
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Z19GetBenchMemoryUsagejj)
	jirl	$ra, $ra, 0
	addu16i.d	$a1, $a0, 128
	ori	$a0, $zero, 25
	bgeu	$s3, $a1, .LBB3_9
# %bb.3:                                # %.preheader88.1
	lu12i.w	$a1, 4096
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Z19GetBenchMemoryUsagejj)
	jirl	$ra, $ra, 0
	addu16i.d	$a1, $a0, 128
	ori	$a0, $zero, 24
	bgeu	$s3, $a1, .LBB3_9
# %bb.4:                                # %.preheader88.2
	lu12i.w	$a1, 2048
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Z19GetBenchMemoryUsagejj)
	jirl	$ra, $ra, 0
	addu16i.d	$a1, $a0, 128
	ori	$a0, $zero, 23
	bgeu	$s3, $a1, .LBB3_9
# %bb.5:                                # %.preheader88.3
	lu12i.w	$a1, 1024
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Z19GetBenchMemoryUsagejj)
	jirl	$ra, $ra, 0
	addu16i.d	$a1, $a0, 128
	ori	$a0, $zero, 22
	bgeu	$s3, $a1, .LBB3_9
# %bb.6:                                # %.preheader88.4
	lu12i.w	$a1, 512
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Z19GetBenchMemoryUsagejj)
	jirl	$ra, $ra, 0
	addu16i.d	$a1, $a0, 128
	ori	$a0, $zero, 21
	bgeu	$s3, $a1, .LBB3_9
# %bb.7:                                # %.preheader88.5
	lu12i.w	$a1, 256
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Z19GetBenchMemoryUsagejj)
	jirl	$ra, $ra, 0
	addu16i.d	$a1, $a0, 128
	ori	$a0, $zero, 20
	bgeu	$s3, $a1, .LBB3_9
# %bb.8:                                # %.preheader88.6
	lu12i.w	$a1, 128
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Z19GetBenchMemoryUsagejj)
	jirl	$ra, $ra, 0
	addu16i.d	$a0, $a0, 128
	sltu	$a0, $s3, $a0
	xori	$a0, $a0, 19
.LBB3_9:
	ori	$a1, $zero, 1
	sll.w	$s2, $a1, $a0
.LBB3_10:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_Z19GetBenchMemoryUsagejj)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a3, $a0, %pc_lo12(.L.str.3)
	move	$a0, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(_ZL17PrintRequirementsP8_IO_FILEPKcyS2_j)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV14CBenchCallback+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV14CBenchCallback+16)
	st.d	$a0, $sp, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 24
	vst	$vr0, $sp, 40
	vst	$vr0, $sp, 56
	vst	$vr0, $sp, 72
	st.d	$fp, $sp, 88
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 61
	ori	$a2, $zero, 1
	ori	$s6, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s3, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	move	$a0, $s3
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$s4, $a0, %pc_lo12(.L.str.18)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a0, $s4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	move	$a0, $s3
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s3, $a0, %pc_lo12(.L.str.7)
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a0, $s4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB3_20
# %bb.11:                               # %.lr.ph97
	bstrpick.d	$a0, $s2, 31, 22
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 22
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 18
	maskeqz	$a0, $a2, $a0
	or	$s7, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$s3, $a0, %pc_lo12(.L.str.9)
	move	$s8, $zero
	b	.LBB3_13
	.p2align	4, , 16
.LBB3_12:                               # %._crit_edge
                                        #   in Loop: Header=BB3_13 Depth=1
	addi.w	$s8, $s8, 1
	beq	$s8, $s0, .LBB3_18
.LBB3_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_14 Depth 2
                                        #     Child Loop BB3_16 Depth 2
	move	$a0, $s7
	.p2align	4, , 16
.LBB3_14:                               #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srl.w	$a1, $s2, $a0
	addi.d	$a0, $a0, -1
	beqz	$a1, .LBB3_14
# %bb.15:                               # %.preheader
                                        #   in Loop: Header=BB3_13 Depth=1
	addi.w	$s4, $a0, 1
	sll.w	$s5, $s6, $s4
	bltu	$s2, $s5, .LBB3_12
	.p2align	4, , 16
.LBB3_16:                               # %.lr.ph
                                        #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	st.w	$s5, $sp, 96
	addi.d	$a2, $sp, 16
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_Z9LzmaBenchjjP14IBenchCallback)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB3_23
# %bb.17:                               #   in Loop: Header=BB3_16 Depth=2
	addi.w	$s4, $s4, 1
	sll.w	$s5, $s6, $s4
	bgeu	$s2, $s5, .LBB3_16
	b	.LBB3_12
.LBB3_18:                               # %.thread86
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB3_20
# %bb.19:
	vld	$vr0, $sp, 32
	ld.d	$a1, $sp, 48
	vreplgr2vr.d	$vr1, $a0
	vdiv.du	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 32
	div.du	$a0, $a1, $a0
	st.d	$a0, $sp, 48
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 24
.LBB3_20:                               # %_ZN14CTotalBenchRes9NormalizeEv.exit.i
	ld.d	$a0, $sp, 56
	beqz	$a0, .LBB3_22
# %bb.21:
	vld	$vr0, $sp, 64
	ld.d	$a1, $sp, 80
	vreplgr2vr.d	$vr1, $a0
	vdiv.du	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 64
	div.du	$a0, $a1, $a0
	st.d	$a0, $sp, 80
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 56
.LBB3_22:                               # %_ZN14CBenchCallback9NormalizeEv.exit
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ori	$a1, $zero, 69
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$s0, $a0, %pc_lo12(.L.str.21)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40
	ld.d	$a2, $sp, 48
	ld.d	$a3, $sp, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZL12PrintResultsP8_IO_FILEyyy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72
	ld.d	$a2, $sp, 80
	ld.d	$a3, $sp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZL12PrintResultsP8_IO_FILEyyy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	ld.d	$a1, $sp, 64
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40
	ld.d	$a2, $sp, 72
	ld.d	$a3, $sp, 48
	ld.d	$a4, $sp, 80
	srli.d	$s1, $a0, 1
	add.d	$a0, $a2, $a1
	srli.d	$s2, $a0, 1
	add.d	$a0, $a4, $a3
	srli.d	$s3, $a0, 1
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZL12PrintResultsP8_IO_FILEyyy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	move	$s5, $zero
.LBB3_23:
	move	$a0, $s5
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end3:
	.size	_Z12LzmaBenchConP8_IO_FILEjjj, .Lfunc_end3-_Z12LzmaBenchConP8_IO_FILEjjj
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL17PrintRequirementsP8_IO_FILEPKcyS2_j
	.type	_ZL17PrintRequirementsP8_IO_FILEPKcyS2_j,@function
_ZL17PrintRequirementsP8_IO_FILEPKcyS2_j: # @_ZL17PrintRequirementsP8_IO_FILEPKcyS2_j
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a4
	move	$s0, $a3
	move	$s2, $a2
	move	$a2, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	srli.d	$a0, $s2, 20
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_Z21ConvertUInt64ToStringyPcj)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 32
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	ori	$a2, $zero, 4
	blt	$a2, $a1, .LBB4_3
# %bb.1:                                # %.lr.ph.i.preheader
	addi.w	$s2, $a0, -5
	.p2align	4, , 16
.LBB4_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 32
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s2, $a0, 1
	slli.d	$a0, $s2, 31
	bgez	$a0, .LBB4_2
.LBB4_3:                                # %_ZL11PrintNumberP8_IO_FILEyi.exit
	addi.d	$a0, $sp, 8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	move	$a0, $s1
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end4:
	.size	_ZL17PrintRequirementsP8_IO_FILEPKcyS2_j, .Lfunc_end4-_ZL17PrintRequirementsP8_IO_FILEPKcyS2_j
	.cfi_endproc
                                        # -- End function
	.globl	_Z11CrcBenchConP8_IO_FILEjjj    # -- Begin function _Z11CrcBenchConP8_IO_FILEjjj
	.p2align	5
	.type	_Z11CrcBenchConP8_IO_FILEjjj,@function
_Z11CrcBenchConP8_IO_FILEjjj:           # @_Z11CrcBenchConP8_IO_FILEjjj
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -240
	.cfi_def_cfa_offset 240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
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
	move	$fp, $a3
	move	$s2, $a2
	move	$s1, $a1
	move	$s0, $a0
	ori	$s3, $zero, 1
	pcaddu18i	$ra, %call36(_Z15CrcInternalTestv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_85
# %bb.1:
	pcaddu18i	$ra, %call36(_ZN8NWindows7NSystem10GetRamSizeEv)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcaddu18i	$ra, %call36(_ZN8NWindows7NSystem21GetNumberOfProcessorsEv)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a3, $a0, %pc_lo12(.L.str.1)
	move	$a0, $s0
	move	$a2, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(_ZL17PrintRequirementsP8_IO_FILEPKcyS2_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s2, 1
	sltui	$a0, $a0, 1
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s4, $a0
	or	$s6, $a0, $a1
	addi.d	$a0, $fp, 1
	sltui	$a0, $a0, 1
	masknez	$a1, $fp, $a0
	lu12i.w	$a2, 4096
	maskeqz	$a0, $a2, $a0
	or	$s5, $a0, $a1
	bstrpick.d	$s7, $s6, 31, 0
	slli.d	$a0, $s7, 3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	ori	$s2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	beqz	$s6, .LBB5_29
# %bb.2:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$s3, $a0, %pc_lo12(.L.str.15)
	move	$s4, $s7
	move	$s5, $fp
	.p2align	4, , 16
.LBB5_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	st.d	$zero, $s5, 0
	addi.d	$s5, $s5, 8
	addi.d	$s4, $s4, -1
	addi.w	$s2, $s2, 1
	bnez	$s4, .LBB5_3
# %bb.4:                                # %._crit_edge.thread
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	ori	$s2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB5_83
# %bb.5:                                # %.preheader.us.preheader
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	move	$a3, $zero
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 4
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$s6, $zero, 4
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
.LBB5_6:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
                                        #       Child Loop BB5_10 Depth 3
                                        #         Child Loop BB5_17 Depth 4
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 22
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.w	$a0, $a0, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$s3, $zero, 10
.LBB5_7:                                #   Parent Loop BB5_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_10 Depth 3
                                        #         Child Loop BB5_17 Depth 4
	sll.w	$s4, $s2, $s3
	bltu	$a2, $s4, .LBB5_20
# %bb.8:                                # %.lr.ph138.us.us
                                        #   in Loop: Header=BB5_7 Depth=2
	move	$a0, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	b	.LBB5_10
	.p2align	4, , 16
.LBB5_9:                                # %.loopexit127.us.us
                                        #   in Loop: Header=BB5_10 Depth=3
	addi.d	$a0, $sp, 120
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112
	slli.d	$a1, $s5, 3
	ldx.d	$a2, $fp, $a1
	add.d	$a0, $a2, $a0
	stx.d	$a0, $fp, $a1
	move	$s5, $s2
	move	$s7, $s8
	beq	$s2, $s8, .LBB5_18
.LBB5_10:                               #   Parent Loop BB5_6 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_17 Depth 4
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13NConsoleClose15TestBreakSignalEv)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.11:                               #   in Loop: Header=BB5_10 Depth=3
	bnez	$a0, .LBB5_80
# %bb.12:                               #   in Loop: Header=BB5_10 Depth=3
	addi.d	$s2, $s5, 1
.Ltmp2:                                 # EH_LABEL
	addi.w	$a0, $s2, 0
	addi.d	$a2, $sp, 112
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_Z8CrcBenchjjRy)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.13:                               #   in Loop: Header=BB5_10 Depth=3
	bnez	$a0, .LBB5_81
# %bb.14:                               #   in Loop: Header=BB5_10 Depth=3
	ld.d	$a0, $sp, 112
	srli.d	$a0, $a0, 20
.Ltmp5:                                 # EH_LABEL
	addi.d	$a1, $sp, 120
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_Z21ConvertUInt64ToStringyPcj)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.15:                               # %.noexc.us.us
                                        #   in Loop: Header=BB5_10 Depth=3
	move	$s8, $s7
	ori	$a0, $zero, 32
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	blt	$s6, $a1, .LBB5_9
# %bb.16:                               # %.lr.ph.i.us.us.preheader
                                        #   in Loop: Header=BB5_10 Depth=3
	addi.w	$s7, $a0, -5
	.p2align	4, , 16
.LBB5_17:                               # %.lr.ph.i.us.us
                                        #   Parent Loop BB5_6 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        #       Parent Loop BB5_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ori	$a0, $zero, 32
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s7, 31, 0
	addi.d	$s7, $a0, 1
	slli.d	$a0, $s7, 31
	bgez	$a0, .LBB5_17
	b	.LBB5_9
.LBB5_18:                               # %._crit_edge139.us.us
                                        #   in Loop: Header=BB5_7 Depth=2
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.w	$a0, $a0, 0
	addi.w	$s3, $s3, 1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ori	$s2, $zero, 1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	bne	$a3, $a0, .LBB5_7
# %bb.19:                               #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
.LBB5_20:                               # %.thread103.split.us.us
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	bne	$a3, $s1, .LBB5_6
.LBB5_21:                               # %.thread123
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	beqz	$s4, .LBB5_83
# %bb.22:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB5_82
# %bb.23:                               # %.lr.ph158.preheader
	move	$s1, $zero
	ori	$s2, $zero, 4
	b	.LBB5_25
	.p2align	4, , 16
.LBB5_24:                               # %.loopexit
                                        #   in Loop: Header=BB5_25 Depth=1
	addi.d	$a0, $sp, 120
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 1
	beq	$s1, $s7, .LBB5_82
.LBB5_25:                               # %.lr.ph158
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_28 Depth 2
	slli.d	$a0, $s1, 3
	ldx.d	$a0, $fp, $a0
	div.du	$a0, $a0, $s4
	srli.d	$a0, $a0, 20
.Ltmp8:                                 # EH_LABEL
	addi.d	$a1, $sp, 120
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_Z21ConvertUInt64ToStringyPcj)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.26:                               # %.noexc93
                                        #   in Loop: Header=BB5_25 Depth=1
	ori	$a0, $zero, 32
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	blt	$s2, $a1, .LBB5_24
# %bb.27:                               # %.lr.ph.i89.preheader
                                        #   in Loop: Header=BB5_25 Depth=1
	addi.w	$s3, $a0, -5
	.p2align	4, , 16
.LBB5_28:                               # %.lr.ph.i89
                                        #   Parent Loop BB5_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 32
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s3, 31, 0
	addi.d	$s3, $a0, 1
	slli.d	$a0, $s3, 31
	bgez	$a0, .LBB5_28
	b	.LBB5_24
.LBB5_29:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB5_83
# %bb.30:                               # %.preheader.preheader
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	ori	$s3, $zero, 1024
	bstrpick.d	$s4, $s5, 31, 11
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s2, $a0, %pc_lo12(.L.str.16)
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	bstrpick.d	$s6, $s5, 31, 12
	bstrpick.d	$s8, $s5, 31, 13
	bstrpick.d	$a0, $s5, 31, 14
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s5, 31, 15
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s5, 31, 16
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s5, 31, 17
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s5, 31, 18
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s5, 31, 19
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s5, 31, 20
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s5, 31, 21
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB5_34
	.p2align	4, , 16
.LBB5_31:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
.LBB5_32:                               # %.thread103.split
                                        #   in Loop: Header=BB5_34 Depth=1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
.LBB5_33:                               # %.thread103.split
                                        #   in Loop: Header=BB5_34 Depth=1
	addi.w	$s1, $s1, -1
	beqz	$s1, .LBB5_21
.LBB5_34:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	bltu	$s5, $s3, .LBB5_33
# %bb.35:                               #   in Loop: Header=BB5_34 Depth=1
	ori	$a2, $zero, 10
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB5_31
# %bb.36:                               #   in Loop: Header=BB5_34 Depth=1
	ori	$a2, $zero, 11
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bnez	$s6, .LBB5_38
# %bb.37:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 2
	b	.LBB5_32
.LBB5_38:                               #   in Loop: Header=BB5_34 Depth=1
	ori	$a2, $zero, 12
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bnez	$s8, .LBB5_40
# %bb.39:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 3
	b	.LBB5_32
.LBB5_40:                               #   in Loop: Header=BB5_34 Depth=1
	ori	$a2, $zero, 13
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bnez	$a0, .LBB5_42
# %bb.41:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 4
	b	.LBB5_32
.LBB5_42:                               #   in Loop: Header=BB5_34 Depth=1
	ori	$a2, $zero, 14
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bnez	$a0, .LBB5_44
# %bb.43:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 5
	b	.LBB5_32
.LBB5_44:                               #   in Loop: Header=BB5_34 Depth=1
	ori	$a2, $zero, 15
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bnez	$a0, .LBB5_46
# %bb.45:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 6
	b	.LBB5_32
.LBB5_46:                               #   in Loop: Header=BB5_34 Depth=1
	ori	$a2, $zero, 16
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB5_48
# %bb.47:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 7
	b	.LBB5_32
.LBB5_48:                               #   in Loop: Header=BB5_34 Depth=1
	ori	$a2, $zero, 17
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bnez	$a0, .LBB5_50
# %bb.49:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	b	.LBB5_32
.LBB5_50:                               #   in Loop: Header=BB5_34 Depth=1
	ori	$a2, $zero, 18
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bnez	$a0, .LBB5_52
# %bb.51:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 9
	b	.LBB5_32
.LBB5_52:                               #   in Loop: Header=BB5_34 Depth=1
	ori	$a2, $zero, 19
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bnez	$a0, .LBB5_54
# %bb.53:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 10
	b	.LBB5_32
.LBB5_54:                               #   in Loop: Header=BB5_34 Depth=1
	ori	$a2, $zero, 20
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bnez	$a0, .LBB5_56
# %bb.55:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 11
	b	.LBB5_32
.LBB5_56:                               #   in Loop: Header=BB5_34 Depth=1
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	move	$s8, $s5
	bstrpick.d	$s5, $s5, 31, 22
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	ori	$a2, $zero, 21
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB5_58
# %bb.57:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 12
	b	.LBB5_60
.LBB5_58:                               #   in Loop: Header=BB5_34 Depth=1
	bstrpick.d	$s5, $s8, 31, 23
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	ori	$a2, $zero, 22
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB5_61
# %bb.59:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 13
.LBB5_60:                               # %.thread103.split
                                        #   in Loop: Header=BB5_34 Depth=1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$s5, $s8
	b	.LBB5_79
.LBB5_61:                               #   in Loop: Header=BB5_34 Depth=1
	bstrpick.d	$s5, $s8, 31, 24
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	ori	$a2, $zero, 23
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB5_63
# %bb.62:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 14
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB5_78
.LBB5_63:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$s5, $a0, 31, 25
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	ori	$a2, $zero, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB5_65
# %bb.64:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 15
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB5_78
.LBB5_65:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$s5, $a0, 31, 26
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	ori	$a2, $zero, 25
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB5_67
# %bb.66:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB5_78
.LBB5_67:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$s5, $a0, 31, 27
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	ori	$a2, $zero, 26
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB5_69
# %bb.68:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 17
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB5_78
.LBB5_69:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$s5, $a0, 31, 28
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	ori	$a2, $zero, 27
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB5_71
# %bb.70:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 18
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB5_78
.LBB5_71:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$s5, $a0, 31, 29
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	ori	$a2, $zero, 28
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB5_73
# %bb.72:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 19
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB5_78
.LBB5_73:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$s5, $a0, 31, 30
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	ori	$a2, $zero, 29
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB5_75
# %bb.74:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 20
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB5_78
.LBB5_75:                               #   in Loop: Header=BB5_34 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	ori	$a2, $zero, 30
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bltz	$a0, .LBB5_77
# %bb.76:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 21
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB5_78
.LBB5_77:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 22
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	ori	$a2, $zero, 31
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB5_78:                               # %.thread103.split
                                        #   in Loop: Header=BB5_34 Depth=1
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
.LBB5_79:                               # %.thread103.split
                                        #   in Loop: Header=BB5_34 Depth=1
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	b	.LBB5_33
.LBB5_80:
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
.LBB5_81:                               # %.split144.us
	move	$s3, $a0
	b	.LBB5_84
.LBB5_82:                               # %._crit_edge159
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB5_83:                               # %_ZN11CTempValuesD2Ev.exit
	move	$s3, $zero
.LBB5_84:                               # %_ZN11CTempValuesD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB5_85:
	move	$a0, $s3
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB5_86:
.Ltmp10:                                # EH_LABEL
	b	.LBB5_89
.LBB5_87:                               # %.split147.us.split.us
.Ltmp4:                                 # EH_LABEL
	b	.LBB5_89
.LBB5_88:                               # %.split.us.split.us
.Ltmp7:                                 # EH_LABEL
.LBB5_89:                               # %_ZN11CTempValuesD2Ev.exit95
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_Z11CrcBenchConP8_IO_FILEjjj, .Lfunc_end5-_Z11CrcBenchConP8_IO_FILEjjj
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
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
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp2-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp2                  #   Call between .Ltmp2 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp8-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Lfunc_end5-.Ltmp9             #   Call between .Ltmp9 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL12PrintResultsP8_IO_FILEyyy
	.type	_ZL12PrintResultsP8_IO_FILEyyy,@function
_ZL12PrintResultsP8_IO_FILEyyy:         # @_ZL12PrintResultsP8_IO_FILEyyy
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$s0, $a3
	move	$s1, $a2
	move	$fp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 904
	add.d	$a0, $a1, $a0
	lu12i.w	$a1, 231525
	ori	$a1, $a1, 2379
	lu32i.d	$a1, -145962
	lu52i.d	$a1, $a1, 838
	mulh.du	$a0, $a0, $a1
	srli.d	$a0, $a0, 11
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_Z21ConvertUInt64ToStringyPcj)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	ori	$a2, $zero, 4
	blt	$a2, $a1, .LBB6_3
# %bb.1:                                # %.lr.ph.i.preheader
	addi.w	$s2, $a0, -5
	.p2align	4, , 16
.LBB6_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s2, $a0, 1
	slli.d	$a0, $s2, 31
	bgez	$a0, .LBB6_2
.LBB6_3:                                # %_ZL11PrintNumberP8_IO_FILEyi.exit
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -165021
	ori	$a0, $a0, 1243
	lu32i.d	$a0, -270718
	lu52i.d	$s2, $a0, 1073
	mulh.du	$a0, $s1, $s2
	srli.d	$a0, $a0, 18
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_Z21ConvertUInt64ToStringyPcj)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	ori	$s1, $zero, 5
	blt	$s1, $a1, .LBB6_6
# %bb.4:                                # %.lr.ph.i.i.preheader
	addi.w	$s3, $a0, -6
	.p2align	4, , 16
.LBB6_5:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s3, 31, 0
	addi.d	$s3, $a0, 1
	slli.d	$a0, $s3, 31
	bgez	$a0, .LBB6_5
.LBB6_6:                                # %_ZL11PrintRatingP8_IO_FILEy.exit
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	mulh.du	$a0, $s0, $s2
	srli.d	$a0, $a0, 18
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_Z21ConvertUInt64ToStringyPcj)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	blt	$s1, $a1, .LBB6_9
# %bb.7:                                # %.lr.ph.i.i6.preheader
	addi.w	$s0, $a0, -6
	.p2align	4, , 16
.LBB6_8:                                # %.lr.ph.i.i6
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s0, 31, 0
	addi.d	$s0, $a0, 1
	slli.d	$a0, $s0, 31
	bgez	$a0, .LBB6_8
.LBB6_9:                                # %_ZL11PrintRatingP8_IO_FILEy.exit10
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end6:
	.size	_ZL12PrintResultsP8_IO_FILEyyy, .Lfunc_end6-_ZL12PrintResultsP8_IO_FILEyyy
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"size: "
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"CPU hardware threads:"
	.size	.L.str.1, 22

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"usage:"
	.size	.L.str.2, 7

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Benchmark threads:   "
	.size	.L.str.3, 22

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\n\nDict        Compressing          |        Decompressing\n   "
	.size	.L.str.4, 62

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"   Speed Usage    R/U Rating"
	.size	.L.str.5, 29

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\n   "
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"    KB/s     %%   MIPS   MIPS"
	.size	.L.str.7, 30

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\n\n"
	.size	.L.str.8, 3

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%2d:"
	.size	.L.str.9, 5

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"----------------------------------------------------------------\nAvr:"
	.size	.L.str.11, 70

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"     "
	.size	.L.str.12, 6

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"\nTot:"
	.size	.L.str.13, 6

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"\n\nSize"
	.size	.L.str.14, 7

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	" %5d"
	.size	.L.str.15, 5

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"%2d: "
	.size	.L.str.16, 6

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"\nAvg:"
	.size	.L.str.17, 6

	.type	_ZTV14CBenchCallback,@object    # @_ZTV14CBenchCallback
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV14CBenchCallback
	.p2align	3, 0x0
_ZTV14CBenchCallback:
	.dword	0
	.dword	_ZTI14CBenchCallback
	.dword	_ZN14CBenchCallback15SetEncodeResultERK10CBenchInfob
	.dword	_ZN14CBenchCallback15SetDecodeResultERK10CBenchInfob
	.size	_ZTV14CBenchCallback, 32

	.type	_ZTI14CBenchCallback,@object    # @_ZTI14CBenchCallback
	.globl	_ZTI14CBenchCallback
	.p2align	3, 0x0
_ZTI14CBenchCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS14CBenchCallback
	.dword	_ZTI14IBenchCallback
	.size	_ZTI14CBenchCallback, 24

	.type	_ZTS14CBenchCallback,@object    # @_ZTS14CBenchCallback
	.section	.rodata,"a",@progbits
	.globl	_ZTS14CBenchCallback
_ZTS14CBenchCallback:
	.asciz	"14CBenchCallback"
	.size	_ZTS14CBenchCallback, 17

	.type	_ZTI14IBenchCallback,@object    # @_ZTI14IBenchCallback
	.section	.data.rel.ro._ZTI14IBenchCallback,"awG",@progbits,_ZTI14IBenchCallback,comdat
	.weak	_ZTI14IBenchCallback
	.p2align	3, 0x0
_ZTI14IBenchCallback:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS14IBenchCallback
	.size	_ZTI14IBenchCallback, 16

	.type	_ZTS14IBenchCallback,@object    # @_ZTS14IBenchCallback
	.section	.rodata._ZTS14IBenchCallback,"aG",@progbits,_ZTS14IBenchCallback,comdat
	.weak	_ZTS14IBenchCallback
_ZTS14IBenchCallback:
	.asciz	"14IBenchCallback"
	.size	_ZTS14IBenchCallback, 17

	.type	.L.str.18,@object               # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"  | "
	.size	.L.str.18, 5

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"\nRAM %s "
	.size	.L.str.19, 9

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	" MB,  # %s %3d"
	.size	.L.str.20, 15

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"       "
	.size	.L.str.21, 8

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
	.addrsig_sym _ZTI14CBenchCallback
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS14CBenchCallback
	.addrsig_sym _ZTI14IBenchCallback
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS14IBenchCallback
