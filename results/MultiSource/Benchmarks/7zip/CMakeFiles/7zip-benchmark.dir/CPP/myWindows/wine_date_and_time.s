	.file	"wine_date_and_time.cpp"
	.text
	.globl	_Z29RtlSecondsSince1970ToFileTimejP9_FILETIME # -- Begin function _Z29RtlSecondsSince1970ToFileTimejP9_FILETIME
	.p2align	5
	.type	_Z29RtlSecondsSince1970ToFileTimejP9_FILETIME,@function
_Z29RtlSecondsSince1970ToFileTimejP9_FILETIME: # @_Z29RtlSecondsSince1970ToFileTimejP9_FILETIME
# %bb.0:
	bstrpick.d	$a0, $a0, 31, 0
	lu12i.w	$a2, 2441
	ori	$a2, $a2, 1664
	mul.d	$a0, $a0, $a2
	lu12i.w	$a2, -175128
	lu32i.d	$a2, -151074
	lu52i.d	$a2, $a2, 25
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 0
	ret
.Lfunc_end0:
	.size	_Z29RtlSecondsSince1970ToFileTimejP9_FILETIME, .Lfunc_end0-_Z29RtlSecondsSince1970ToFileTimejP9_FILETIME
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function DosDateTimeToFileTime
.LCPI1_0:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	3                               # 0x3
.LCPI1_1:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	80                              # 0x50
	.text
	.globl	DosDateTimeToFileTime
	.p2align	5
	.type	DosDateTimeToFileTime,@function
DosDateTimeToFileTime:                  # @DosDateTimeToFileTime
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	move	$fp, $a2
	vrepli.b	$vr0, 0
	vinsgr2vr.h	$vr0, $a1, 0
	vinsgr2vr.h	$vr0, $a0, 2
	vshuf4i.w	$vr0, $vr0, 84
	vrepli.d	$vr1, 5
	vsrl.w	$vr1, $vr0, $vr1
	ori	$a0, $zero, 11
	lu32i.d	$a0, 9
	vreplgr2vr.d	$vr2, $a0
	vsrl.w	$vr0, $vr0, $vr2
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	vld	$vr2, $a0, %pc_lo12(.LCPI1_0)
	ori	$a0, $zero, 15
	lu32i.d	$a0, 31
	vreplgr2vr.d	$vr3, $a0
	vand.v	$vr1, $vr1, $vr3
	vshuf.w	$vr2, $vr1, $vr0
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_1)
	slli.d	$a0, $a1, 1
	andi	$a0, $a0, 62
	st.w	$a0, $sp, 8
	bstrpick.d	$a0, $a1, 10, 5
	st.w	$a0, $sp, 12
	vadd.w	$vr0, $vr2, $vr0
	vst	$vr0, $sp, 16
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $sp, 40
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(timegm)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	lu12i.w	$a1, 2441
	ori	$a1, $a1, 1664
	mul.d	$a0, $a0, $a1
	lu12i.w	$a1, -175128
	lu32i.d	$a1, -151074
	lu52i.d	$a1, $a1, 25
	add.d	$a1, $a0, $a1
	ori	$a0, $zero, 1
	st.d	$a1, $fp, 0
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end1:
	.size	DosDateTimeToFileTime, .Lfunc_end1-DosDateTimeToFileTime
                                        # -- End function
	.globl	_Z25RtlTimeToSecondsSince1970PK13LARGE_INTEGERPj # -- Begin function _Z25RtlTimeToSecondsSince1970PK13LARGE_INTEGERPj
	.p2align	5
	.type	_Z25RtlTimeToSecondsSince1970PK13LARGE_INTEGERPj,@function
_Z25RtlTimeToSecondsSince1970PK13LARGE_INTEGERPj: # @_Z25RtlTimeToSecondsSince1970PK13LARGE_INTEGERPj
# %bb.0:
	ld.d	$a0, $a0, 0
	lu12i.w	$a2, -108636
	ori	$a2, $a2, 701
	lu32i.d	$a2, -27435
	lu52i.d	$a2, $a2, -661
	mulh.du	$a0, $a0, $a2
	srli.d	$a0, $a0, 23
	lu12i.w	$a2, 302838
	ori	$a2, $a2, 3840
	lu32i.d	$a2, -3
	add.d	$a0, $a0, $a2
	srli.d	$a2, $a0, 32
	beqz	$a2, .LBB2_2
# %bb.1:
	move	$a0, $zero
	ret
.LBB2_2:
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	ret
.Lfunc_end2:
	.size	_Z25RtlTimeToSecondsSince1970PK13LARGE_INTEGERPj, .Lfunc_end2-_Z25RtlTimeToSecondsSince1970PK13LARGE_INTEGERPj
                                        # -- End function
	.globl	FileTimeToDosDateTime           # -- Begin function FileTimeToDosDateTime
	.p2align	5
	.type	FileTimeToDosDateTime,@function
FileTimeToDosDateTime:                  # @FileTimeToDosDateTime
# %bb.0:                                # %_Z25RtlTimeToSecondsSince1970PK13LARGE_INTEGERPj.exit
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$fp, $a1
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, -108636
	ori	$a1, $a1, 701
	lu32i.d	$a1, -27435
	lu52i.d	$a1, $a1, -661
	mulh.du	$a0, $a0, $a1
	srli.d	$a0, $a0, 23
	lu12i.w	$a1, 302838
	ori	$a1, $a1, 3840
	lu32i.d	$a1, -3
	add.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 32
	sltui	$a1, $a1, 1
	maskeqz	$a0, $a0, $a1
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(gmtime)
	jirl	$ra, $ra, 0
	ld.w	$a2, $a0, 20
	ld.w	$a3, $a0, 16
	ld.w	$a1, $a0, 12
	beqz	$s0, .LBB3_2
# %bb.1:
	ld.w	$a4, $a0, 8
	ld.w	$a5, $a0, 4
	ld.wu	$a0, $a0, 0
	slli.d	$a4, $a4, 11
	slli.d	$a5, $a5, 5
	add.d	$a4, $a5, $a4
	srli.d	$a5, $a0, 31
	add.d	$a0, $a0, $a5
	srli.d	$a0, $a0, 1
	add.d	$a0, $a4, $a0
	st.h	$a0, $s0, 0
.LBB3_2:
	beqz	$fp, .LBB3_4
# %bb.3:
	slli.d	$a0, $a2, 9
	slli.d	$a2, $a3, 5
	add.d	$a0, $a0, $a2
	lu12i.w	$a2, 6
	add.d	$a0, $a0, $a1
	ori	$a1, $a2, 32
	add.d	$a0, $a0, $a1
	st.h	$a0, $fp, 0
.LBB3_4:
	ori	$a0, $zero, 1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	FileTimeToDosDateTime, .Lfunc_end3-FileTimeToDosDateTime
                                        # -- End function
	.globl	FileTimeToLocalFileTime         # -- Begin function FileTimeToLocalFileTime
	.p2align	5
	.type	FileTimeToLocalFileTime,@function
FileTimeToLocalFileTime:                # @FileTimeToLocalFileTime
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s0, $a0, 0
	move	$fp, $a1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(localtime)
	jirl	$ra, $ra, 0
	ld.w	$s1, $a0, 32
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(gmtime)
	jirl	$ra, $ra, 0
	st.w	$s1, $a0, 32
	pcaddu18i	$ra, %call36(mktime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	sub.w	$a0, $a0, $a1
	lu12i.w	$a1, -2442
	ori	$a1, $a1, 2432
	mul.d	$a0, $a0, $a1
	add.d	$a1, $a0, $s0
	ori	$a0, $zero, 1
	st.d	$a1, $fp, 0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	FileTimeToLocalFileTime, .Lfunc_end4-FileTimeToLocalFileTime
                                        # -- End function
	.globl	FileTimeToSystemTime            # -- Begin function FileTimeToSystemTime
	.p2align	5
	.type	FileTimeToSystemTime,@function
FileTimeToSystemTime:                   # @FileTimeToSystemTime
# %bb.0:
	ld.d	$a2, $a0, 0
	lu12i.w	$a0, -108636
	ori	$a0, $a0, 701
	lu32i.d	$a0, -27435
	lu52i.d	$a0, $a0, -661
	mulh.d	$a0, $a2, $a0
	add.d	$a0, $a0, $a2
	srli.d	$a3, $a0, 63
	srai.d	$a0, $a0, 23
	add.d	$a3, $a0, $a3
	lu12i.w	$a0, 2441
	ori	$a0, $a0, 1664
	mul.d	$a0, $a3, $a0
	sub.d	$a0, $a2, $a0
	lu12i.w	$a4, 429496
	ori	$a4, $a4, 2989
	mul.d	$a0, $a0, $a4
	srli.d	$a4, $a0, 63
	srli.d	$a0, $a0, 44
	add.d	$a0, $a0, $a4
	lu12i.w	$a4, -122792
	ori	$a4, $a4, 483
	lu32i.d	$a4, 261917
	lu52i.d	$a4, $a4, -1490
	mulh.d	$a4, $a2, $a4
	add.d	$a2, $a4, $a2
	srli.d	$a4, $a2, 63
	srai.d	$a2, $a2, 39
	add.d	$a6, $a2, $a4
	lu12i.w	$a2, -203502
	ori	$a2, $a2, 2391
	lu32i.d	$a2, 379040
	lu52i.d	$a2, $a2, 388
	mulh.d	$a2, $a3, $a2
	srli.d	$a4, $a2, 63
	srai.d	$a2, $a2, 13
	add.d	$a2, $a2, $a4
	lu12i.w	$a4, 21
	ori	$a4, $a4, 384
	mul.d	$a2, $a2, $a4
	sub.d	$a3, $a3, $a2
	lu12i.w	$a2, -452053
	ori	$a2, $a2, 965
	mul.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 32
	add.w	$a2, $a2, $a3
	bstrpick.d	$a4, $a2, 31, 31
	srli.d	$a2, $a2, 11
	add.d	$a2, $a2, $a4
	ori	$a4, $zero, 3600
	mul.d	$a4, $a2, $a4
	sub.w	$a4, $a3, $a4
	ext.w.h	$a3, $a4
	lu12i.w	$a5, -8
	ori	$a5, $a5, 2185
	mul.d	$a3, $a3, $a5
	srli.d	$a3, $a3, 16
	add.d	$a3, $a3, $a4
	bstrpick.d	$a5, $a3, 15, 15
	ext.w.h	$a3, $a3
	srai.d	$a3, $a3, 5
	add.d	$a3, $a3, $a5
	ori	$a5, $zero, 60
	mul.d	$a5, $a3, $a5
	sub.d	$a4, $a4, $a5
	addi.d	$a5, $a6, 1
	lu12i.w	$a7, -449390
	ori	$a7, $a7, 1171
	mul.d	$a7, $a5, $a7
	srli.d	$a7, $a7, 32
	add.w	$a7, $a7, $a5
	bstrpick.d	$t0, $a7, 31, 31
	srli.d	$a7, $a7, 2
	add.d	$a7, $a7, $t0
	slli.d	$t0, $a7, 3
	sub.d	$a7, $a7, $t0
	add.d	$a5, $a5, $a7
	lu12i.w	$a7, -107839
	ori	$a7, $a7, 2804
	lu32i.d	$a7, 0
	mul.d	$a7, $a6, $a7
	lu12i.w	$t0, 212884
	ori	$t0, $t0, 3039
	lu32i.d	$t0, 275
	add.d	$a7, $a7, $t0
	srli.d	$t0, $a7, 63
	srai.d	$a7, $a7, 47
	add.d	$a7, $a7, $t0
	alsl.d	$a7, $a7, $a7, 1
	addi.d	$a7, $a7, 3
	ext.w.h	$t0, $a7
	bstrpick.d	$t0, $t0, 30, 29
	add.d	$a7, $a7, $t0
	ext.w.h	$a7, $a7
	srai.d	$a7, $a7, 2
	add.d	$a6, $a6, $a7
	lu12i.w	$a7, 6
	ori	$a7, $a7, 3612
	add.d	$a6, $a6, $a7
	slli.d	$a7, $a6, 4
	alsl.w	$a7, $a6, $a7, 2
	addi.d	$t0, $a7, -2048
	addi.d	$t0, $t0, -394
	addi.d	$a7, $a7, -2048
	addi.w	$a7, $a7, -394
	lu12i.w	$t1, -460628
	ori	$t1, $t1, 4013
	mul.d	$a7, $a7, $t1
	srli.d	$a7, $a7, 32
	add.w	$a7, $a7, $t0
	bstrpick.d	$t0, $a7, 31, 31
	srli.d	$a7, $a7, 12
	add.d	$a7, $a7, $t0
	ori	$t0, $zero, 1461
	mul.w	$t0, $a7, $t0
	bstrpick.d	$t1, $t0, 62, 61
	add.w	$t0, $t0, $t1
	srli.d	$t0, $t0, 2
	sub.w	$t0, $zero, $t0
	add.d	$a6, $a6, $t0
	slli.w	$t0, $a6, 6
	lu12i.w	$t1, 274053
	ori	$t1, $t1, 2269
	mul.d	$t0, $t0, $t1
	srli.d	$t1, $t0, 63
	srai.d	$t0, $t0, 32
	srli.d	$t0, $t0, 9
	add.d	$t0, $t0, $t1
	slti	$t1, $a6, 429
	sub.d	$t2, $zero, $t1
	lu12i.w	$t3, 15
	ori	$t3, $t3, 4083
	or	$t2, $t2, $t3
	xori	$t1, $t1, 1525
	add.d	$t2, $t2, $t0
	add.d	$a7, $t1, $a7
	ori	$t1, $zero, 1959
	mul.w	$t0, $t0, $t1
	bstrpick.d	$t1, $t0, 62, 57
	add.d	$t0, $t0, $t1
	srli.d	$t0, $t0, 6
	sub.d	$a6, $a6, $t0
	st.h	$a7, $a1, 0
	st.h	$t2, $a1, 2
	st.h	$a6, $a1, 6
	st.h	$a2, $a1, 8
	st.h	$a3, $a1, 10
	st.h	$a4, $a1, 12
	st.h	$a0, $a1, 14
	ori	$a0, $zero, 1
	st.h	$a5, $a1, 4
	ret
.Lfunc_end5:
	.size	FileTimeToSystemTime, .Lfunc_end5-FileTimeToSystemTime
                                        # -- End function
	.globl	LocalFileTimeToFileTime         # -- Begin function LocalFileTimeToFileTime
	.p2align	5
	.type	LocalFileTimeToFileTime,@function
LocalFileTimeToFileTime:                # @LocalFileTimeToFileTime
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s0, $a0, 0
	move	$fp, $a1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(localtime)
	jirl	$ra, $ra, 0
	ld.w	$s1, $a0, 32
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(gmtime)
	jirl	$ra, $ra, 0
	st.w	$s1, $a0, 32
	pcaddu18i	$ra, %call36(mktime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	sub.w	$a0, $a0, $a1
	lu12i.w	$a1, 2441
	ori	$a1, $a1, 1664
	mul.d	$a0, $a0, $a1
	add.d	$a1, $a0, $s0
	ori	$a0, $zero, 1
	st.d	$a1, $fp, 0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	LocalFileTimeToFileTime, .Lfunc_end6-LocalFileTimeToFileTime
                                        # -- End function
	.globl	GetSystemTime                   # -- Begin function GetSystemTime
	.p2align	5
	.type	GetSystemTime,@function
GetSystemTime:                          # @GetSystemTime
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
	lu12i.w	$a2, 2441
	ori	$a2, $a2, 1664
	mul.d	$a0, $a0, $a2
	alsl.d	$a1, $a1, $a1, 2
	slli.d	$a1, $a1, 1
	add.d	$a0, $a0, $a1
	lu12i.w	$a1, -175128
	lu32i.d	$a1, -151074
	lu52i.d	$a1, $a1, 25
	add.d	$a1, $a0, $a1
	lu12i.w	$a0, -108636
	ori	$a0, $a0, 701
	lu32i.d	$a0, -27435
	lu52i.d	$a0, $a0, -661
	mulh.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a1
	srli.d	$a3, $a0, 63
	srai.d	$a0, $a0, 23
	add.d	$a3, $a0, $a3
	mul.d	$a0, $a3, $a2
	sub.d	$a0, $a1, $a0
	lu12i.w	$a2, 429496
	ori	$a2, $a2, 2989
	mul.d	$a0, $a0, $a2
	srli.d	$a2, $a0, 63
	srli.d	$a0, $a0, 44
	add.d	$a0, $a0, $a2
	lu12i.w	$a2, -122792
	ori	$a2, $a2, 483
	lu32i.d	$a2, 261917
	lu52i.d	$a2, $a2, -1490
	mulh.d	$a2, $a1, $a2
	add.d	$a1, $a2, $a1
	srli.d	$a2, $a1, 63
	srai.d	$a1, $a1, 39
	add.d	$a5, $a1, $a2
	lu12i.w	$a1, -203502
	ori	$a1, $a1, 2391
	lu32i.d	$a1, 379040
	lu52i.d	$a1, $a1, 388
	mulh.d	$a1, $a3, $a1
	srli.d	$a2, $a1, 63
	srai.d	$a1, $a1, 13
	add.d	$a1, $a1, $a2
	lu12i.w	$a2, 21
	ori	$a2, $a2, 384
	mul.d	$a1, $a1, $a2
	sub.d	$a2, $a3, $a1
	lu12i.w	$a1, -452053
	ori	$a1, $a1, 965
	mul.d	$a1, $a2, $a1
	srli.d	$a1, $a1, 32
	add.w	$a1, $a1, $a2
	bstrpick.d	$a3, $a1, 31, 31
	srli.d	$a1, $a1, 11
	add.d	$a1, $a1, $a3
	ori	$a3, $zero, 3600
	mul.d	$a3, $a1, $a3
	sub.w	$a3, $a2, $a3
	ext.w.h	$a2, $a3
	lu12i.w	$a4, -8
	ori	$a4, $a4, 2185
	mul.d	$a2, $a2, $a4
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	bstrpick.d	$a4, $a2, 15, 15
	ext.w.h	$a2, $a2
	srai.d	$a2, $a2, 5
	add.d	$a2, $a2, $a4
	ori	$a4, $zero, 60
	mul.d	$a4, $a2, $a4
	sub.d	$a3, $a3, $a4
	addi.d	$a4, $a5, 1
	lu12i.w	$a6, -449390
	ori	$a6, $a6, 1171
	mul.d	$a6, $a4, $a6
	srli.d	$a6, $a6, 32
	add.w	$a6, $a6, $a4
	bstrpick.d	$a7, $a6, 31, 31
	srli.d	$a6, $a6, 2
	add.d	$a6, $a6, $a7
	slli.d	$a7, $a6, 3
	sub.d	$a6, $a6, $a7
	add.d	$a4, $a4, $a6
	lu12i.w	$a6, -107839
	ori	$a6, $a6, 2804
	lu32i.d	$a6, 0
	mul.d	$a6, $a5, $a6
	lu12i.w	$a7, 212884
	ori	$a7, $a7, 3039
	lu32i.d	$a7, 275
	add.d	$a6, $a6, $a7
	srli.d	$a7, $a6, 63
	srai.d	$a6, $a6, 47
	add.d	$a6, $a6, $a7
	alsl.d	$a6, $a6, $a6, 1
	addi.d	$a6, $a6, 3
	ext.w.h	$a7, $a6
	bstrpick.d	$a7, $a7, 30, 29
	add.d	$a6, $a6, $a7
	ext.w.h	$a6, $a6
	srai.d	$a6, $a6, 2
	add.d	$a5, $a5, $a6
	lu12i.w	$a6, 6
	ori	$a6, $a6, 3612
	add.d	$a5, $a5, $a6
	slli.d	$a6, $a5, 4
	alsl.w	$a6, $a5, $a6, 2
	addi.d	$a7, $a6, -2048
	addi.d	$a7, $a7, -394
	addi.d	$a6, $a6, -2048
	addi.w	$a6, $a6, -394
	lu12i.w	$t0, -460628
	ori	$t0, $t0, 4013
	mul.d	$a6, $a6, $t0
	srli.d	$a6, $a6, 32
	add.w	$a6, $a6, $a7
	bstrpick.d	$a7, $a6, 31, 31
	srli.d	$a6, $a6, 12
	add.d	$a6, $a6, $a7
	ori	$a7, $zero, 1461
	mul.w	$a7, $a6, $a7
	bstrpick.d	$t0, $a7, 62, 61
	add.w	$a7, $a7, $t0
	srli.d	$a7, $a7, 2
	sub.w	$a7, $zero, $a7
	add.d	$a5, $a5, $a7
	slli.w	$a7, $a5, 6
	lu12i.w	$t0, 274053
	ori	$t0, $t0, 2269
	mul.d	$a7, $a7, $t0
	srli.d	$t0, $a7, 63
	srai.d	$a7, $a7, 41
	add.d	$a7, $a7, $t0
	slti	$t0, $a5, 429
	sub.d	$t1, $zero, $t0
	lu12i.w	$t2, 15
	ori	$t2, $t2, 4083
	or	$t1, $t1, $t2
	xori	$t0, $t0, 1525
	add.d	$t1, $t1, $a7
	add.d	$a6, $t0, $a6
	ori	$t0, $zero, 1959
	mul.w	$a7, $a7, $t0
	bstrpick.d	$t0, $a7, 62, 57
	add.d	$a7, $a7, $t0
	srli.d	$a7, $a7, 6
	sub.d	$a5, $a5, $a7
	st.h	$a6, $fp, 0
	st.h	$t1, $fp, 2
	st.h	$a5, $fp, 6
	st.h	$a1, $fp, 8
	st.h	$a2, $fp, 10
	st.h	$a3, $fp, 12
	st.h	$a0, $fp, 14
	st.h	$a4, $fp, 4
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	GetSystemTime, .Lfunc_end7-GetSystemTime
                                        # -- End function
	.globl	SystemTimeToFileTime            # -- Begin function SystemTimeToFileTime
	.p2align	5
	.type	SystemTimeToFileTime,@function
SystemTimeToFileTime:                   # @SystemTimeToFileTime
# %bb.0:
	ld.hu	$a2, $a0, 14
	ori	$a3, $zero, 999
                                        # implicit-def: $r12
	bltu	$a3, $a2, .LBB8_10
# %bb.1:
	ld.hu	$a3, $a0, 12
	ori	$a5, $zero, 59
                                        # implicit-def: $r12
	bltu	$a5, $a3, .LBB8_10
# %bb.2:
	ld.hu	$a4, $a0, 10
                                        # implicit-def: $r12
	bltu	$a5, $a4, .LBB8_10
# %bb.3:
	ld.hu	$a5, $a0, 8
	ori	$a6, $zero, 23
                                        # implicit-def: $r12
	bltu	$a6, $a5, .LBB8_10
# %bb.4:
	ld.hu	$a7, $a0, 2
	addi.d	$a6, $a7, -13
	addi.w	$t1, $zero, -12
                                        # implicit-def: $r12
	bltu	$a6, $t1, .LBB8_10
# %bb.5:
	ld.h	$a6, $a0, 6
	blez	$a6, .LBB8_9
# %bb.6:
	ld.h	$a0, $a0, 0
	ori	$t1, $zero, 2
	ori	$t0, $zero, 1
	beq	$a7, $t1, .LBB8_13
# %bb.7:
	andi	$t1, $a0, 3
	beqz	$t1, .LBB8_11
# %bb.8:
	move	$t0, $zero
	b	.LBB8_13
.LBB8_9:
                                        # implicit-def: $r12
.LBB8_10:                               # %_ZL19RtlTimeFieldsToTimeP12_TIME_FIELDSP13LARGE_INTEGER.exit
	ori	$a0, $zero, 1
	st.d	$t0, $a1, 0
	ret
.LBB8_11:
	lu12i.w	$t1, 5
	ori	$t1, $t1, 3113
	mul.d	$t1, $a0, $t1
	addi.d	$t2, $t1, 1308
	slli.d	$t3, $t2, 14
	bstrpick.d	$t2, $t2, 15, 2
	or	$t2, $t2, $t3
	bstrpick.d	$t2, $t2, 15, 0
	ori	$t3, $zero, 654
	bltu	$t3, $t2, .LBB8_13
# %bb.12:
	addi.d	$t0, $t1, 1296
	slli.d	$t1, $t0, 12
	bstrpick.d	$t0, $t0, 15, 4
	or	$t0, $t0, $t1
	bstrpick.d	$t0, $t0, 15, 0
	sltui	$t0, $t0, 163
.LBB8_13:                               # %_ZL10IsLeapYeari.exit.i
	slli.d	$t1, $t0, 4
	slli.d	$t0, $t0, 5
	or	$t0, $t0, $t1
	pcalau12i	$t1, %pc_hi20(_ZL12MonthLengths)
	addi.d	$t1, $t1, %pc_lo12(_ZL12MonthLengths)
	add.d	$t0, $t1, $t0
	alsl.d	$t0, $a7, $t0, 2
	ld.w	$t1, $t0, -4
                                        # implicit-def: $r12
	blt	$t1, $a6, .LBB8_10
# %bb.14:                               # %_ZL10IsLeapYeari.exit.i
	ori	$t1, $zero, 1601
                                        # implicit-def: $r12
	blt	$a0, $t1, .LBB8_10
# %bb.15:
	sltui	$t0, $a7, 3
	sub.d	$a0, $a0, $t0
	ori	$t1, $zero, 1
	masknez	$t1, $t1, $t0
	ori	$t2, $zero, 13
	maskeqz	$t0, $t2, $t0
	or	$t0, $t0, $t1
	add.d	$a7, $t0, $a7
	bstrpick.d	$t0, $a0, 15, 2
	lu12i.w	$t1, 1
	ori	$t1, $t1, 1147
	mul.d	$t0, $t0, $t1
	srli.d	$t0, $t0, 17
	alsl.d	$t0, $t0, $t0, 1
	addi.d	$t0, $t0, 3
	bstrpick.d	$t0, $t0, 14, 2
	lu12i.w	$t1, 8
	ori	$t1, $t1, 3757
	mul.d	$a0, $a0, $t1
	bstrpick.d	$a0, $a0, 31, 0
	lu12i.w	$t1, 335544
	ori	$t1, $t1, 1311
	mul.d	$a0, $a0, $t1
	srli.d	$a0, $a0, 37
	ori	$t1, $zero, 1959
	mul.d	$a7, $a7, $t1
	bstrpick.d	$a7, $a7, 21, 6
	add.d	$a0, $a0, $a7
	sub.d	$a0, $a0, $t0
	add.d	$a0, $a0, $a6
	lu12i.w	$a6, -143
	ori	$a6, $a6, 911
	add.d	$a0, $a0, $a6
	slli.d	$a6, $a0, 4
	alsl.d	$a0, $a0, $a6, 3
	add.d	$a0, $a0, $a5
	ori	$a5, $zero, 60
	mul.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a4
	mul.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a3
	ori	$a3, $zero, 1000
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1808
	mul.d	$t0, $a0, $a2
	ori	$a0, $zero, 1
	st.d	$t0, $a1, 0
	ret
.Lfunc_end8:
	.size	SystemTimeToFileTime, .Lfunc_end8-SystemTimeToFileTime
                                        # -- End function
	.type	_ZL12MonthLengths,@object       # @_ZL12MonthLengths
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
_ZL12MonthLengths:
	.word	31                              # 0x1f
	.word	28                              # 0x1c
	.word	31                              # 0x1f
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	31                              # 0x1f
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	31                              # 0x1f
	.word	29                              # 0x1d
	.word	31                              # 0x1f
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	31                              # 0x1f
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.size	_ZL12MonthLengths, 96

	.section	".note.GNU-stack","",@progbits
	.addrsig
