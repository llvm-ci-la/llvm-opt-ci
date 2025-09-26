	.file	"ZipIn.cpp"
	.text
	.globl	_ZN8NArchive4NZip10CInArchive4OpenEP9IInStreamPKy # -- Begin function _ZN8NArchive4NZip10CInArchive4OpenEP9IInStreamPKy
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive4OpenEP9IInStreamPKy,@function
_ZN8NArchive4NZip10CInArchive4OpenEP9IInStreamPKy: # @_ZN8NArchive4NZip10CInArchive4OpenEP9IInStreamPKy
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
	move	$fp, $a0
	ld.d	$a0, $a0, 64
	move	$s1, $a2
	move	$s0, $a1
	st.b	$zero, $fp, 32
	beqz	$a0, .LBB0_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 64
.LBB0_2:                                # %_ZN9CInBuffer13ReleaseStreamEv.exit.i
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB0_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 0
.LBB0_4:                                # %_ZN8NArchive4NZip10CInArchive5CloseEv.exit
	ld.d	$a0, $s0, 0
	ld.d	$a4, $a0, 48
	addi.d	$a3, $fp, 16
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $zero
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB0_10
# %bb.5:
	ld.d	$a0, $fp, 16
	st.d	$a0, $fp, 24
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive17FindAndReadMarkerEP9IInStreamPKy)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_10
# %bb.6:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $fp, 24
	ld.d	$a4, $a0, 48
	move	$a0, $s0
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB0_10
# %bb.7:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB0_9
# %bb.8:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB0_9:                                # %_ZN9CMyComPtrI9IInStreamEaSEPS0_.exit
	move	$a0, $zero
	st.d	$s0, $fp, 0
.LBB0_10:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	_ZN8NArchive4NZip10CInArchive4OpenEP9IInStreamPKy, .Lfunc_end0-_ZN8NArchive4NZip10CInArchive4OpenEP9IInStreamPKy
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip10CInArchive5CloseEv # -- Begin function _ZN8NArchive4NZip10CInArchive5CloseEv
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive5CloseEv,@function
_ZN8NArchive4NZip10CInArchive5CloseEv:  # @_ZN8NArchive4NZip10CInArchive5CloseEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 64
	beqz	$a0, .LBB1_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 64
.LBB1_2:                                # %_ZN9CInBuffer13ReleaseStreamEv.exit
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB1_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 0
.LBB1_4:                                # %_ZN9CMyComPtrI9IInStreamE7ReleaseEv.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	_ZN8NArchive4NZip10CInArchive5CloseEv, .Lfunc_end1-_ZN8NArchive4NZip10CInArchive5CloseEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip10CInArchive17FindAndReadMarkerEP9IInStreamPKy # -- Begin function _ZN8NArchive4NZip10CInArchive17FindAndReadMarkerEP9IInStreamPKy
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive17FindAndReadMarkerEP9IInStreamPKy,@function
_ZN8NArchive4NZip10CInArchive17FindAndReadMarkerEP9IInStreamPKy: # @_ZN8NArchive4NZip10CInArchive17FindAndReadMarkerEP9IInStreamPKy
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
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	move	$fp, $a0
	ld.d	$a0, $a0, 120
	move	$s0, $a2
	move	$s1, $a1
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 88
	beqz	$a0, .LBB2_4
# %bb.1:
	ld.d	$a0, $fp, 128
	addi.d	$s2, $fp, 120
	beqz	$a0, .LBB2_3
# %bb.2:
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
.LBB2_3:
	vst	$vr0, $s2, 0
.LBB2_4:                                # %_ZN8NArchive4NZip14CInArchiveInfo5ClearEv.exit
	ld.d	$a0, $fp, 16
	st.d	$a0, $fp, 24
	addi.d	$a1, $sp, 52
	ori	$a2, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Z16ReadStream_FALSEP19ISequentialInStreamPvm)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_24
# %bb.5:
	ld.d	$a0, $fp, 24
	ld.w	$a1, $sp, 52
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 24
	st.w	$a1, $fp, 8
	pcalau12i	$a0, %got_pc_hi20(_ZN8NArchive4NZip10NSignature16kLocalFileHeaderE)
	ld.d	$s4, $a0, %got_pc_lo12(_ZN8NArchive4NZip10NSignature16kLocalFileHeaderE)
	ld.w	$a2, $s4, 0
	move	$a0, $zero
	beq	$a1, $a2, .LBB2_24
# %bb.6:
	pcalau12i	$a2, %got_pc_hi20(_ZN8NArchive4NZip10NSignature16kEndOfCentralDirE)
	ld.d	$s5, $a2, %got_pc_lo12(_ZN8NArchive4NZip10NSignature16kEndOfCentralDirE)
	ld.w	$a2, $s5, 0
	beq	$a1, $a2, .LBB2_24
# %bb.7:                                # %_ZN14CDynamicBufferIhE14EnsureCapacityEm.exit
	addi.d	$s2, $sp, 53
	lu12i.w	$s3, 16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s2, 0
	ld.b	$a2, $s2, 2
	ld.d	$a3, $fp, 16
	move	$s2, $a0
	st.h	$a1, $a0, 0
	st.b	$a2, $a0, 2
	addi.d	$s6, $a3, 1
	ori	$s7, $zero, 3
	ori	$s8, $zero, 80
	b	.LBB2_9
	.p2align	4, , 16
.LBB2_8:                                # %._crit_edge
                                        #   in Loop: Header=BB2_9 Depth=1
	add.d	$a0, $s2, $a2
	ld.b	$a0, $a0, 4
	ldx.w	$a1, $s2, $a2
	add.d	$s6, $s6, $a2
	st.b	$a0, $s2, 4
	st.w	$a1, $s2, 0
	ori	$s7, $zero, 5
.LBB2_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_17 Depth 2
	beqz	$s0, .LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $s0, 0
	sub.d	$a0, $s6, $a0
	bltu	$a1, $a0, .LBB2_26
.LBB2_11:                               #   in Loop: Header=BB2_9 Depth=1
	sub.w	$a0, $s3, $s7
	st.d	$a0, $sp, 40
	add.d	$a1, $s2, $s7
.Ltmp0:                                 # EH_LABEL
	addi.d	$a2, $sp, 40
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Z10ReadStreamP19ISequentialInStreamPvPm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.12:                               #   in Loop: Header=BB2_9 Depth=1
	bnez	$a0, .LBB2_22
# %bb.13:                               #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a0, $sp, 40
	ld.d	$a1, $fp, 24
	add.d	$a1, $a1, $a0
	add.w	$a2, $s7, $a0
	st.d	$a1, $fp, 24
	ori	$a0, $zero, 6
	bltu	$a2, $a0, .LBB2_25
# %bb.14:                               # %.lr.ph
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.w	$a0, $s5, 0
	ld.w	$a3, $s4, 0
	move	$a1, $zero
	addi.d	$a2, $a2, -5
	bstrpick.d	$a2, $a2, 31, 0
	b	.LBB2_17
	.p2align	4, , 16
.LBB2_15:                               #   in Loop: Header=BB2_17 Depth=2
	ld.bu	$a5, $a4, 4
	ld.bu	$a4, $a4, 5
	or	$a4, $a4, $a5
	beqz	$a4, .LBB2_21
.LBB2_16:                               # %_ZN8NArchive4NZipL20TestMarkerCandidate2EPKhRj.exit.thread
                                        #   in Loop: Header=BB2_17 Depth=2
	addi.d	$a1, $a1, 1
	beq	$a2, $a1, .LBB2_8
.LBB2_17:                               #   Parent Loop BB2_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a4, $s2, $a1
	bne	$a4, $s8, .LBB2_16
# %bb.18:                               #   in Loop: Header=BB2_17 Depth=2
	add.d	$a4, $s2, $a1
	ld.bu	$a5, $a4, 1
	ld.bu	$a6, $a4, 2
	ld.b	$a7, $a4, 3
	slli.d	$a5, $a5, 8
	slli.d	$a6, $a6, 16
	slli.d	$a7, $a7, 24
	or	$a5, $a5, $a6
	or	$a5, $a5, $a7
	addi.w	$a5, $a5, 80
	st.w	$a5, $fp, 8
	beq	$a5, $a0, .LBB2_15
# %bb.19:                               #   in Loop: Header=BB2_17 Depth=2
	bne	$a5, $a3, .LBB2_16
# %bb.20:                               # %_ZN8NArchive4NZipL20TestMarkerCandidate2EPKhRj.exit
                                        #   in Loop: Header=BB2_17 Depth=2
	ld.b	$a4, $a4, 4
	bltz	$a4, .LBB2_16
.LBB2_21:                               # %.thread
	move	$a0, $zero
	add.d	$a1, $s6, $a1
	st.d	$a1, $fp, 96
	addi.d	$a1, $a1, 4
	st.d	$a1, $fp, 24
.LBB2_22:                               # %_ZN7CBufferIhED2Ev.exit.sink.split
	move	$fp, $a0
.LBB2_23:                               # %_ZN7CBufferIhED2Ev.exit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB2_24:
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
	ret
.LBB2_25:
	ori	$a0, $zero, 1
	b	.LBB2_22
.LBB2_26:
	ori	$fp, $zero, 1
	b	.LBB2_23
.LBB2_27:                               # %_ZN7CBufferIhED2Ev.exit71
.Ltmp2:                                 # EH_LABEL
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN8NArchive4NZip10CInArchive17FindAndReadMarkerEP9IInStreamPKy, .Lfunc_end2-_ZN8NArchive4NZip10CInArchive17FindAndReadMarkerEP9IInStreamPKy
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
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
	.uleb128 .Lfunc_end2-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive4NZip10CInArchive4SeekEy # -- Begin function _ZN8NArchive4NZip10CInArchive4SeekEy
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive4SeekEy,@function
_ZN8NArchive4NZip10CInArchive4SeekEy:   # @_ZN8NArchive4NZip10CInArchive4SeekEy
	.cfi_startproc
# %bb.0:
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a4, $a2, 48
	move	$a2, $zero
	move	$a3, $zero
	jr	$a4
.Lfunc_end3:
	.size	_ZN8NArchive4NZip10CInArchive4SeekEy, .Lfunc_end3-_ZN8NArchive4NZip10CInArchive4SeekEy
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj # -- Begin function _ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj,@function
_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj: # @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a0
	ld.bu	$a0, $a0, 32
	move	$s0, $a3
	move	$s1, $a1
	bstrpick.d	$s4, $a2, 31, 0
	st.d	$s4, $sp, 16
	beqz	$a0, .LBB4_8
# %bb.1:
	move	$s3, $a2
	ld.d	$a0, $fp, 48
	ld.d	$a1, $fp, 40
	sub.w	$a0, $a0, $a1
	addi.d	$s2, $fp, 40
	bgeu	$a0, $a2, .LBB4_9
# %bb.2:                                # %.preheader.i.preheader
	move	$s5, $zero
	move	$s6, $s4
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                #   in Loop: Header=BB4_4 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $s2, 0
	ld.b	$a0, $a0, 0
	st.b	$a0, $s1, 0
	addi.w	$s5, $s5, 1
	addi.d	$s6, $s6, -1
	addi.d	$s1, $s1, 1
	beqz	$s6, .LBB4_14
.LBB4_4:                                # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 40
	ld.d	$a1, $fp, 48
	bltu	$a0, $a1, .LBB4_3
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
.Ltmp3:                                 # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN9CInBuffer9ReadBlockEv)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.6:                                # %.noexc
                                        #   in Loop: Header=BB4_4 Depth=1
	beqz	$a0, .LBB4_18
# %bb.7:                                # %._crit_edge32.i
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $s2, 0
	b	.LBB4_3
.LBB4_8:
	ld.d	$a0, $fp, 0
	addi.d	$a2, $sp, 16
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_Z10ReadStreamP19ISequentialInStreamPvPm)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 16
	bnez	$s0, .LBB4_15
	b	.LBB4_16
.LBB4_9:                                # %.preheader24.i
	beqz	$s3, .LBB4_13
# %bb.10:                               # %.lr.ph.i.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB4_11:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	ldx.b	$a1, $a1, $a0
	stx.b	$a1, $s1, $a0
	addi.d	$a0, $a0, 1
	bne	$s4, $a0, .LBB4_11
# %bb.12:                               # %._crit_edge.loopexit.i
	ld.d	$a1, $s2, 0
.LBB4_13:                               # %._crit_edge.i
	move	$a0, $zero
	add.d	$a1, $a1, $s4
	st.d	$a1, $s2, 0
	bnez	$s0, .LBB4_15
	b	.LBB4_16
.LBB4_14:
	move	$a0, $zero
	beqz	$s0, .LBB4_16
.LBB4_15:
	st.w	$s4, $s0, 0
.LBB4_16:
	ld.d	$a1, $fp, 24
	add.d	$a1, $a1, $s4
	st.d	$a1, $fp, 24
.LBB4_17:
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
.LBB4_18:                               # %.split.loop.exit.i
	move	$a0, $zero
	sltu	$a1, $s5, $s3
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $s5, $a1
	or	$a1, $a1, $a2
	bstrpick.d	$s4, $a1, 31, 0
	bnez	$s0, .LBB4_15
	b	.LBB4_16
.LBB4_19:
.Ltmp5:                                 # EH_LABEL
	addi.w	$a1, $a1, 0
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB4_21
# %bb.20:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ld.w	$fp, $a0, 0
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB4_17
.LBB4_21:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj, .Lfunc_end4-_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp3-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin1           #     jumps to .Ltmp5
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp4-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Lfunc_end4-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	0                               # >> Action Record 1 <<
                                        #   Cleanup
	.byte	0                               #   No further actions
	.byte	1                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 1
	.byte	125                             #   Continue to action 1
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp6:                                 # TypeInfo 1
	.word	.L_ZTI18CInBufferException.DW.stub-.Ltmp6
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive4NZip10CInArchive4SkipEy # -- Begin function _ZN8NArchive4NZip10CInArchive4SkipEy
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive4SkipEy,@function
_ZN8NArchive4NZip10CInArchive4SkipEy:   # @_ZN8NArchive4NZip10CInArchive4SkipEy
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	beqz	$a1, .LBB5_5
# %bb.1:
	move	$fp, $a1
	move	$s0, $a0
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 11
	ori	$a2, $zero, 1
	addi.d	$a3, $sp, 12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_7
# %bb.3:                                # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.w	$a0, $sp, 12
	bne	$a0, $s1, .LBB5_6
# %bb.4:                                # %_ZN8NArchive4NZip10CInArchive8ReadByteEv.exit
                                        #   in Loop: Header=BB5_2 Depth=1
	addi.d	$fp, $fp, -1
	bnez	$fp, .LBB5_2
.LBB5_5:                                # %._crit_edge
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB5_6:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.LBB5_7:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	st.w	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN8NArchive4NZip10CInArchive4SkipEy, .Lfunc_end5-_ZN8NArchive4NZip10CInArchive4SkipEy
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip10CInArchive8ReadByteEv # -- Begin function _ZN8NArchive4NZip10CInArchive8ReadByteEv
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive8ReadByteEv,@function
_ZN8NArchive4NZip10CInArchive8ReadByteEv: # @_ZN8NArchive4NZip10CInArchive8ReadByteEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$a1, $sp, 11
	ori	$a2, $zero, 1
	addi.d	$a3, $sp, 12
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_3
# %bb.1:                                # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
	ld.w	$a0, $sp, 12
	bne	$a0, $fp, .LBB6_4
# %bb.2:                                # %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit
	ld.bu	$a0, $sp, 11
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB6_3:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	st.w	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.LBB6_4:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN8NArchive4NZip10CInArchive8ReadByteEv, .Lfunc_end6-_ZN8NArchive4NZip10CInArchive8ReadByteEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy # -- Begin function _ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy,@function
_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy: # @_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a4, $a0, 0
	ld.d	$a2, $a4, 0
	ld.d	$a5, $a2, 48
	addi.d	$a3, $a0, 24
	ori	$a2, $zero, 1
	move	$a0, $a4
	jirl	$ra, $a5, 0
	bnez	$a0, .LBB7_2
# %bb.1:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB7_2:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 7
	st.w	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy, .Lfunc_end7-_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj # -- Begin function _ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj,@function
_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj: # @_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a2
	addi.d	$a3, $sp, 12
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_2
# %bb.1:
	ld.w	$a0, $sp, 12
	xor	$a0, $a0, $fp
	sltui	$a0, $a0, 1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB8_2:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	st.w	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj, .Lfunc_end8-_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj # -- Begin function _ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj,@function
_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj: # @_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a2
	addi.d	$a3, $sp, 12
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_3
# %bb.1:                                # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit
	ld.w	$a0, $sp, 12
	bne	$a0, $fp, .LBB9_4
# %bb.2:
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB9_3:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	st.w	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.LBB9_4:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj, .Lfunc_end9-_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip10CInArchive10ReadBufferER7CBufferIhEj # -- Begin function _ZN8NArchive4NZip10CInArchive10ReadBufferER7CBufferIhEj
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive10ReadBufferER7CBufferIhEj,@function
_ZN8NArchive4NZip10CInArchive10ReadBufferER7CBufferIhEj: # @_ZN8NArchive4NZip10CInArchive10ReadBufferER7CBufferIhEj
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$s1, $a1
	ld.d	$s4, $a1, 8
	move	$fp, $a2
	bstrpick.d	$s2, $a2, 31, 0
	move	$s0, $a0
	beq	$s4, $s2, .LBB10_7
# %bb.1:
	beqz	$fp, .LBB10_11
# %bb.2:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beqz	$s4, .LBB10_4
# %bb.3:
	ld.d	$a1, $s1, 16
	sltu	$a0, $s4, $s2
	masknez	$a2, $s2, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB10_4:
	ld.d	$a0, $s1, 16
	beqz	$a0, .LBB10_6
.LBB10_5:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_6:
	st.d	$s3, $s1, 16
	st.d	$s2, $s1, 8
.LBB10_7:                               # %_ZN7CBufferIhE11SetCapacityEm.exit
	beqz	$fp, .LBB10_10
# %bb.8:
	ld.d	$a1, $s1, 16
	addi.d	$a3, $sp, 20
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_12
# %bb.9:                                # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
	ld.w	$a0, $sp, 20
	bne	$a0, $fp, .LBB10_13
.LBB10_10:                              # %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB10_11:
	move	$s3, $zero
	ld.d	$a0, $s1, 16
	bnez	$a0, .LBB10_5
	b	.LBB10_6
.LBB10_12:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	st.w	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.LBB10_13:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN8NArchive4NZip10CInArchive10ReadBufferER7CBufferIhEj, .Lfunc_end10-_ZN8NArchive4NZip10CInArchive10ReadBufferER7CBufferIhEj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip10CInArchive10ReadUInt16Ev # -- Begin function _ZN8NArchive4NZip10CInArchive10ReadUInt16Ev
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive10ReadUInt16Ev,@function
_ZN8NArchive4NZip10CInArchive10ReadUInt16Ev: # @_ZN8NArchive4NZip10CInArchive10ReadUInt16Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$a1, $sp, 10
	ori	$a2, $zero, 2
	addi.d	$a3, $sp, 12
	ori	$fp, $zero, 2
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_3
# %bb.1:                                # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
	ld.w	$a0, $sp, 12
	bne	$a0, $fp, .LBB11_4
# %bb.2:                                # %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit
	ld.hu	$a0, $sp, 10
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB11_3:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	st.w	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.LBB11_4:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN8NArchive4NZip10CInArchive10ReadUInt16Ev, .Lfunc_end11-_ZN8NArchive4NZip10CInArchive10ReadUInt16Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev # -- Begin function _ZN8NArchive4NZip10CInArchive10ReadUInt32Ev
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev,@function
_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev: # @_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 4
	addi.d	$a3, $sp, 12
	ori	$fp, $zero, 4
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_3
# %bb.1:                                # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
	ld.w	$a0, $sp, 12
	bne	$a0, $fp, .LBB12_4
# %bb.2:                                # %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit
	ld.w	$a0, $sp, 8
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB12_3:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	st.w	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.LBB12_4:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev, .Lfunc_end12-_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip10CInArchive10ReadUInt64Ev # -- Begin function _ZN8NArchive4NZip10CInArchive10ReadUInt64Ev
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive10ReadUInt64Ev,@function
_ZN8NArchive4NZip10CInArchive10ReadUInt64Ev: # @_ZN8NArchive4NZip10CInArchive10ReadUInt64Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$a1, $sp, 4
	ori	$a2, $zero, 8
	addi.d	$a3, $sp, 12
	ori	$fp, $zero, 8
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB13_3
# %bb.1:                                # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
	ld.w	$a0, $sp, 12
	bne	$a0, $fp, .LBB13_4
# %bb.2:                                # %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit
	ld.d	$a0, $sp, 4
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB13_3:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	st.w	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.LBB13_4:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZN8NArchive4NZip10CInArchive10ReadUInt64Ev, .Lfunc_end13-_ZN8NArchive4NZip10CInArchive10ReadUInt64Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip10CInArchive10ReadUInt32ERj # -- Begin function _ZN8NArchive4NZip10CInArchive10ReadUInt32ERj
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive10ReadUInt32ERj,@function
_ZN8NArchive4NZip10CInArchive10ReadUInt32ERj: # @_ZN8NArchive4NZip10CInArchive10ReadUInt32ERj
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
	move	$fp, $a1
	addi.d	$a1, $sp, 0
	ori	$a2, $zero, 4
	addi.d	$a3, $sp, 4
	ori	$s0, $zero, 4
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB14_4
# %bb.1:                                # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit
	ld.w	$a0, $sp, 4
	bne	$a0, $s0, .LBB14_3
# %bb.2:
	ld.w	$a1, $sp, 0
	st.w	$a1, $fp, 0
.LBB14_3:
	addi.d	$a0, $a0, -4
	sltui	$a0, $a0, 1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB14_4:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	st.w	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN8NArchive4NZip10CInArchive10ReadUInt32ERj, .Lfunc_end14-_ZN8NArchive4NZip10CInArchive10ReadUInt32ERj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip10CInArchive12ReadFileNameEjR11CStringBaseIcE # -- Begin function _ZN8NArchive4NZip10CInArchive12ReadFileNameEjR11CStringBaseIcE
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive12ReadFileNameEjR11CStringBaseIcE,@function
_ZN8NArchive4NZip10CInArchive12ReadFileNameEjR11CStringBaseIcE: # @_ZN8NArchive4NZip10CInArchive12ReadFileNameEjR11CStringBaseIcE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a2
	move	$s0, $a1
	beqz	$a1, .LBB15_12
# %bb.1:                                # %.split
	ld.w	$s4, $fp, 12
	blt	$s0, $s4, .LBB15_27
# %bb.2:
	addi.w	$s1, $s0, 1
	beq	$s1, $s4, .LBB15_27
# %bb.3:
	move	$s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	blez	$s4, .LBB15_26
# %bb.4:                                # %.preheader.i.i
	ld.w	$a1, $fp, 8
	ld.d	$a0, $fp, 0
	blez	$a1, .LBB15_18
# %bb.5:                                # %iter.check
	ori	$a3, $zero, 16
	move	$a2, $zero
	bltu	$a1, $a3, .LBB15_23
# %bb.6:                                # %iter.check
	sub.d	$a4, $s2, $a0
	ori	$a3, $zero, 32
	bltu	$a4, $a3, .LBB15_23
# %bb.7:                                # %vector.main.loop.iter.check
	bgeu	$a1, $a3, .LBB15_19
# %bb.8:
	move	$a2, $zero
.LBB15_9:                               # %vec.epilog.ph
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s2, $a5
	add.d	$a5, $a0, $a5
	.p2align	4, , 16
.LBB15_10:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB15_10
# %bb.11:                               # %vec.epilog.middle.block
	bne	$a2, $a1, .LBB15_23
	b	.LBB15_25
.LBB15_12:                              # %.split10
	ld.d	$a1, $fp, 0
	st.w	$zero, $fp, 8
	st.b	$zero, $a1, 0
	ld.w	$a1, $fp, 12
	blez	$a1, .LBB15_14
# %bb.13:                               # %.split10._ZN11CStringBaseIcE9GetBufferEi.exit21_crit_edge
	ld.d	$s1, $fp, 0
	b	.LBB15_15
.LBB15_14:
	move	$s2, $a0
	ori	$a0, $zero, 1
	ori	$s3, $zero, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	move	$s1, $a0
	move	$a0, $s2
	st.d	$s1, $fp, 0
	stx.b	$zero, $s1, $a1
	st.w	$s3, $fp, 12
.LBB15_15:                              # %_ZN11CStringBaseIcE9GetBufferEi.exit21
	addi.d	$a3, $sp, 20
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB15_30
# %bb.16:                               # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i23
	ld.w	$a0, $sp, 20
	beqz	$a0, .LBB15_29
.LBB15_17:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.LBB15_18:                              # %._crit_edge.i.i
	bnez	$a0, .LBB15_25
	b	.LBB15_26
.LBB15_19:                              # %vector.ph
	andi	$a3, $a1, 16
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a4, $s2, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB15_20:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB15_20
# %bb.21:                               # %middle.block
	beq	$a2, $a1, .LBB15_25
# %bb.22:                               # %vec.epilog.iter.check
	bnez	$a3, .LBB15_9
.LBB15_23:                              # %vec.epilog.scalar.ph.preheader
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s2, $a2
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB15_24:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB15_24
.LBB15_25:                              # %._crit_edge.thread.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB15_26:
	ld.w	$a0, $fp, 8
	st.d	$s2, $fp, 0
	stx.b	$zero, $s2, $a0
	st.w	$s1, $fp, 12
	move	$a0, $s3
.LBB15_27:                              # %_ZN11CStringBaseIcE9GetBufferEi.exit
	ld.d	$s1, $fp, 0
	addi.d	$a3, $sp, 16
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB15_30
# %bb.28:                               # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
	ld.w	$a0, $sp, 16
	bne	$a0, $s0, .LBB15_17
.LBB15_29:                              # %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit
	bstrpick.d	$a0, $s0, 31, 0
	stx.b	$zero, $s1, $a0
	ld.d	$s0, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	stx.b	$zero, $s0, $a1
	st.w	$a0, $fp, 8
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB15_30:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	st.w	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN8NArchive4NZip10CInArchive12ReadFileNameEjR11CStringBaseIcE, .Lfunc_end15-_ZN8NArchive4NZip10CInArchive12ReadFileNameEjR11CStringBaseIcE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip10CInArchive9ReadExtraEjRNS0_11CExtraBlockERyS4_S4_Rj # -- Begin function _ZN8NArchive4NZip10CInArchive9ReadExtraEjRNS0_11CExtraBlockERyS4_S4_Rj
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive9ReadExtraEjRNS0_11CExtraBlockERyS4_S4_Rj,@function
_ZN8NArchive4NZip10CInArchive9ReadExtraEjRNS0_11CExtraBlockERyS4_S4_Rj: # @_ZN8NArchive4NZip10CInArchive9ReadExtraEjRNS0_11CExtraBlockERyS4_S4_Rj
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -224
	.cfi_def_cfa_offset 224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
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
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	move	$s4, $a2
	move	$s8, $a1
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	bltu	$s8, $a0, .LBB16_69
# %bb.1:                                # %.lr.ph226.preheader
	addi.d	$s6, $fp, 40
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$s0, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	ori	$s2, $zero, 1
	addi.w	$s3, $zero, -1
	lu32i.d	$s3, 0
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB16_5
.LBB16_2:                               #   in Loop: Header=BB16_5 Depth=1
	move	$a0, $zero
.LBB16_3:                               # %.thread148
                                        #   in Loop: Header=BB16_5 Depth=1
	sub.w	$s8, $s1, $a0
.LBB16_4:                               # %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit
                                        #   in Loop: Header=BB16_5 Depth=1
	ori	$a0, $zero, 3
	bgeu	$a0, $s8, .LBB16_69
.LBB16_5:                               # %.lr.ph226
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_52 Depth 2
	st.d	$s0, $sp, 96
	addi.d	$a0, $sp, 104
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
.Ltmp7:                                 # EH_LABEL
	addi.d	$a1, $sp, 126
	ori	$a2, $zero, 2
	addi.d	$a3, $sp, 128
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.6:                                # %.noexc
                                        #   in Loop: Header=BB16_5 Depth=1
	bnez	$a0, .LBB16_83
# %bb.7:                                # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i
                                        #   in Loop: Header=BB16_5 Depth=1
	ld.w	$a0, $sp, 128
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB16_81
# %bb.8:                                #   in Loop: Header=BB16_5 Depth=1
	ld.hu	$s5, $sp, 126
	st.h	$s5, $sp, 88
.Ltmp13:                                # EH_LABEL
	addi.d	$a1, $sp, 126
	ori	$a2, $zero, 2
	addi.d	$a3, $sp, 128
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.9:                                # %.noexc58
                                        #   in Loop: Header=BB16_5 Depth=1
	bnez	$a0, .LBB16_86
# %bb.10:                               # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i57
                                        #   in Loop: Header=BB16_5 Depth=1
	ld.w	$a0, $sp, 128
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB16_82
# %bb.11:                               #   in Loop: Header=BB16_5 Depth=1
	ld.hu	$a0, $sp, 126
	addi.w	$s1, $s8, -4
	sltu	$a1, $s1, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s7, $a1, $a0
	bne	$s5, $s2, .LBB16_36
# %bb.12:                               #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bne	$a0, $s3, .LBB16_16
# %bb.13:                               #   in Loop: Header=BB16_5 Depth=1
	ori	$a0, $zero, 8
	bltu	$s7, $a0, .LBB16_68
# %bb.14:                               #   in Loop: Header=BB16_5 Depth=1
.Ltmp27:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive10ReadUInt64Ev)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.15:                               #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	addi.w	$s1, $s8, -12
	addi.w	$s7, $s7, -8
.LBB16_16:                              #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bne	$a0, $s3, .LBB16_20
# %bb.17:                               #   in Loop: Header=BB16_5 Depth=1
	ori	$a0, $zero, 8
	bltu	$s7, $a0, .LBB16_68
# %bb.18:                               #   in Loop: Header=BB16_5 Depth=1
.Ltmp29:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive10ReadUInt64Ev)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.19:                               #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	addi.w	$s1, $s1, -8
	addi.w	$s7, $s7, -8
.LBB16_20:                              #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bne	$a0, $s3, .LBB16_24
# %bb.21:                               #   in Loop: Header=BB16_5 Depth=1
	ori	$a0, $zero, 8
	bltu	$s7, $a0, .LBB16_68
# %bb.22:                               #   in Loop: Header=BB16_5 Depth=1
.Ltmp31:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive10ReadUInt64Ev)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.23:                               #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	addi.w	$s1, $s1, -8
	addi.w	$s7, $s7, -8
.LBB16_24:                              #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB16_28
# %bb.25:                               #   in Loop: Header=BB16_5 Depth=1
	ori	$a0, $zero, 4
	bltu	$s7, $a0, .LBB16_68
# %bb.26:                               #   in Loop: Header=BB16_5 Depth=1
.Ltmp33:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.27:                               #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	addi.d	$s1, $s1, -4
	addi.w	$s7, $s7, -4
.LBB16_28:                              #   in Loop: Header=BB16_5 Depth=1
	beqz	$s7, .LBB16_2
# %bb.29:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB16_5 Depth=1
	ld.bu	$a0, $fp, 32
	st.d	$s2, $sp, 128
	beqz	$a0, .LBB16_44
# %bb.30:                               #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a1, $fp, 48
	ld.d	$a0, $fp, 40
	sub.d	$a2, $a1, $a0
	slli.d	$a2, $a2, 32
	bnez	$a2, .LBB16_35
# %bb.31:                               #   in Loop: Header=BB16_5 Depth=1
	bltu	$a0, $a1, .LBB16_35
# %bb.32:                               #   in Loop: Header=BB16_5 Depth=1
.Ltmp38:                                # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN9CInBuffer9ReadBlockEv)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
# %bb.33:                               # %.noexc.i72.peel
                                        #   in Loop: Header=BB16_5 Depth=1
	beqz	$a0, .LBB16_78
# %bb.34:                               # %._crit_edge32.i.i.peel
                                        #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a0, $s6, 0
.LBB16_35:                              # %.noexc64.peel.thread154.thread
                                        #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a1, $fp, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	addi.d	$a0, $a1, 1
	st.d	$a0, $fp, 24
	b	.LBB16_47
	.p2align	4, , 16
.LBB16_36:                              #   in Loop: Header=BB16_5 Depth=1
.Ltmp18:                                # EH_LABEL
	move	$a0, $fp
	addi.d	$a1, $sp, 96
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive10ReadBufferER7CBufferIhEj)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.37:                               #   in Loop: Header=BB16_5 Depth=1
.Ltmp20:                                # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.38:                               # %.noexc67
                                        #   in Loop: Header=BB16_5 Depth=1
	move	$s8, $a0
	ld.h	$a0, $sp, 88
	ld.d	$s5, $sp, 104
	st.h	$a0, $s8, 0
	st.d	$s0, $s8, 8
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $s8, 16
	beqz	$s5, .LBB16_41
# %bb.39:                               # %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i.i
                                        #   in Loop: Header=BB16_5 Depth=1
.Ltmp22:                                # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.40:                               # %.noexc.i
                                        #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a1, $sp, 112
	st.d	$a0, $s8, 24
	st.d	$s5, $s8, 16
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB16_41:                              # %_ZN8NArchive4NZip14CExtraSubBlockC2ERKS1_.exit.i
                                        #   in Loop: Header=BB16_5 Depth=1
.Ltmp25:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.42:                               #   in Loop: Header=BB16_5 Depth=1
	ld.w	$a1, $s4, 12
	ld.d	$a2, $s4, 16
	slli.d	$a3, $a1, 3
	ld.d	$a0, $sp, 112
	stx.d	$s8, $a2, $a3
	addi.d	$a1, $a1, 1
	st.w	$a1, $s4, 12
	sub.w	$s8, $s1, $s7
	beqz	$a0, .LBB16_4
# %bb.43:                               #   in Loop: Header=BB16_5 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB16_4
.LBB16_44:                              #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a0, $fp, 0
.Ltmp36:                                # EH_LABEL
	addi.d	$a1, $sp, 126
	addi.d	$a2, $sp, 128
	pcaddu18i	$ra, %call36(_Z10ReadStreamP19ISequentialInStreamPvPm)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
# %bb.45:                               # %.noexc64.peel
                                        #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a1, $sp, 128
	ld.d	$a2, $fp, 24
	add.d	$a2, $a2, $a1
	st.d	$a2, $fp, 24
	bnez	$a0, .LBB16_75
# %bb.46:                               # %.noexc64.peel
                                        #   in Loop: Header=BB16_5 Depth=1
	bstrpick.d	$a1, $a1, 31, 0
	bne	$a1, $s2, .LBB16_75
.LBB16_47:                              # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i63.peel.thread
                                        #   in Loop: Header=BB16_5 Depth=1
	ori	$a0, $zero, 1
	beq	$s7, $a0, .LBB16_3
# %bb.48:                               # %.lr.ph.preheader242
                                        #   in Loop: Header=BB16_5 Depth=1
	ori	$s5, $zero, 1
	b	.LBB16_52
	.p2align	4, , 16
.LBB16_49:                              # %._crit_edge32.i.i
                                        #   in Loop: Header=BB16_52 Depth=2
	ld.d	$a0, $s6, 0
.LBB16_50:                              # %.noexc64.thread158.thread
                                        #   in Loop: Header=BB16_52 Depth=2
	ld.d	$a1, $fp, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	addi.d	$a0, $a1, 1
	st.d	$a0, $fp, 24
.LBB16_51:                              # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i63.thread
                                        #   in Loop: Header=BB16_52 Depth=2
	addi.w	$s5, $s5, 1
	beq	$s7, $s5, .LBB16_63
.LBB16_52:                              # %.lr.ph
                                        #   Parent Loop BB16_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $fp, 32
	st.d	$s2, $sp, 128
	beqz	$a0, .LBB16_57
# %bb.53:                               #   in Loop: Header=BB16_52 Depth=2
	ld.d	$a1, $fp, 48
	ld.d	$a0, $fp, 40
	sub.d	$a2, $a1, $a0
	slli.d	$a2, $a2, 32
	bnez	$a2, .LBB16_50
# %bb.54:                               #   in Loop: Header=BB16_52 Depth=2
	bltu	$a0, $a1, .LBB16_50
# %bb.55:                               #   in Loop: Header=BB16_52 Depth=2
.Ltmp46:                                # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN9CInBuffer9ReadBlockEv)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.56:                               # %.noexc.i72
                                        #   in Loop: Header=BB16_52 Depth=2
	bnez	$a0, .LBB16_49
	b	.LBB16_78
	.p2align	4, , 16
.LBB16_57:                              #   in Loop: Header=BB16_52 Depth=2
	ld.d	$a0, $fp, 0
.Ltmp44:                                # EH_LABEL
	addi.d	$a1, $sp, 126
	addi.d	$a2, $sp, 128
	pcaddu18i	$ra, %call36(_Z10ReadStreamP19ISequentialInStreamPvPm)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
# %bb.58:                               # %.noexc64
                                        #   in Loop: Header=BB16_52 Depth=2
	ld.d	$a1, $sp, 128
	ld.d	$a2, $fp, 24
	add.d	$a2, $a2, $a1
	st.d	$a2, $fp, 24
	bnez	$a0, .LBB16_75
# %bb.59:                               # %.noexc64
                                        #   in Loop: Header=BB16_52 Depth=2
	bstrpick.d	$a1, $a1, 31, 0
	beq	$a1, $s2, .LBB16_51
	b	.LBB16_75
.LBB16_60:                              #   in Loop: Header=BB16_52 Depth=2
.Ltmp48:                                # EH_LABEL
	addi.w	$a1, $a1, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bne	$a1, $s2, .LBB16_98
# %bb.61:                               #   in Loop: Header=BB16_52 Depth=2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ld.w	$s8, $a0, 0
.Ltmp49:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.62:                               # %.noexc64.thread
                                        #   in Loop: Header=BB16_52 Depth=2
	beqz	$s8, .LBB16_51
	b	.LBB16_67
.LBB16_63:                              #   in Loop: Header=BB16_5 Depth=1
	sub.w	$s8, $s1, $s7
	b	.LBB16_4
.LBB16_64:                              #   in Loop: Header=BB16_5 Depth=1
.Ltmp40:                                # EH_LABEL
	addi.w	$a1, $a1, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bne	$a1, $s2, .LBB16_98
# %bb.65:                               #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ld.w	$s5, $a0, 0
.Ltmp41:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
# %bb.66:                               # %.noexc64.peel.thread
                                        #   in Loop: Header=BB16_5 Depth=1
	beqz	$s5, .LBB16_47
.LBB16_67:
	ori	$fp, $zero, 6
	b	.LBB16_79
.LBB16_68:                              # %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit.thread
	move	$s8, $s1
.LBB16_69:                              # %.loopexit
	beqz	$s8, .LBB16_74
# %bb.70:                               # %.lr.ph.i.preheader
	bstrpick.d	$s0, $s8, 31, 0
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB16_71:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 1
	addi.d	$a3, $sp, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_77
# %bb.72:                               # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i.i
                                        #   in Loop: Header=BB16_71 Depth=1
	ld.w	$a0, $sp, 88
	bne	$a0, $s1, .LBB16_76
# %bb.73:                               # %_ZN8NArchive4NZip10CInArchive8ReadByteEv.exit.i
                                        #   in Loop: Header=BB16_71 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB16_71
.LBB16_74:                              # %_ZN8NArchive4NZip10CInArchive4SkipEy.exit
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.LBB16_75:                              # %.loopexit120.invoke.loopexit228.split.loop.exit240
	sltu	$a0, $zero, $a0
	ori	$a1, $zero, 6
	maskeqz	$fp, $a1, $a0
	b	.LBB16_79
.LBB16_76:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.LBB16_77:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	st.w	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.LBB16_78:                              # %.loopexit121.sink.split
	move	$fp, $zero
.LBB16_79:                              # %.loopexit120.invoke
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$fp, $a0, 0
.Ltmp52:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.80:                               # %.loopexit120.cont
.LBB16_81:
	move	$fp, $zero
	b	.LBB16_84
.LBB16_82:
	move	$fp, $zero
	b	.LBB16_87
.LBB16_83:
	ori	$fp, $zero, 6
.LBB16_84:                              # %.invoke
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$fp, $a0, 0
.Ltmp10:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.85:                               # %.cont
.LBB16_86:
	ori	$fp, $zero, 6
.LBB16_87:                              # %.invoke188
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$fp, $a0, 0
.Ltmp15:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.88:                               # %.cont189
.LBB16_89:                              # %.loopexit82.loopexit.split-lp
.Ltmp43:                                # EH_LABEL
	b	.LBB16_97
.LBB16_90:
.Ltmp24:                                # EH_LABEL
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a1, $zero, 32
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_98
.LBB16_91:                              # %.loopexit83
.Ltmp9:                                 # EH_LABEL
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $zero
	b	.LBB16_99
.LBB16_92:                              # %.loopexit.split-lp89
.Ltmp17:                                # EH_LABEL
	b	.LBB16_97
.LBB16_93:                              # %.loopexit.split-lp84
.Ltmp12:                                # EH_LABEL
	b	.LBB16_97
.LBB16_94:                              # %.loopexit82.loopexit
.Ltmp51:                                # EH_LABEL
	b	.LBB16_97
.LBB16_95:                              # %.loopexit88
.Ltmp35:                                # EH_LABEL
	b	.LBB16_97
.LBB16_96:                              # %.loopexit.split-lp
.Ltmp54:                                # EH_LABEL
.LBB16_97:                              # %.bodythread-pre-split
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
.LBB16_98:                              # %.bodythread-pre-split
	ld.d	$a0, $sp, 112
.LBB16_99:                              # %.body
	beqz	$a0, .LBB16_101
# %bb.100:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB16_101:                             # %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit69
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN8NArchive4NZip10CInArchive9ReadExtraEjRNS0_11CExtraBlockERyS4_S4_Rj, .Lfunc_end16-_ZN8NArchive4NZip10CInArchive9ReadExtraEjRNS0_11CExtraBlockERyS4_S4_Rj
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table16:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp7-.Lfunc_begin2           #   Call between .Lfunc_begin2 and .Ltmp7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin2           # >> Call Site 2 <<
	.uleb128 .Ltmp8-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin2           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp34-.Ltmp13                #   Call between .Ltmp13 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin2          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin2          #     jumps to .Ltmp40
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp18-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp21-.Ltmp18                #   Call between .Ltmp18 and .Ltmp21
	.uleb128 .Ltmp35-.Lfunc_begin2          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin2          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp25-.Ltmp23                #   Call between .Ltmp23 and .Ltmp25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp35-.Lfunc_begin2          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp36-.Ltmp26                #   Call between .Ltmp26 and .Ltmp36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp43-.Lfunc_begin2          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin2          #     jumps to .Ltmp48
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp44-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp51-.Lfunc_begin2          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin2          # >> Call Site 13 <<
	.uleb128 .Ltmp49-.Ltmp45                #   Call between .Ltmp45 and .Ltmp49
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin2          # >> Call Site 14 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin2          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin2          # >> Call Site 15 <<
	.uleb128 .Ltmp41-.Ltmp50                #   Call between .Ltmp50 and .Ltmp41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin2          # >> Call Site 16 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin2          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin2          # >> Call Site 17 <<
	.uleb128 .Ltmp52-.Ltmp42                #   Call between .Ltmp42 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin2          # >> Call Site 18 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin2          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin2          # >> Call Site 19 <<
	.uleb128 .Ltmp10-.Ltmp53                #   Call between .Ltmp53 and .Ltmp10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin2          # >> Call Site 20 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin2          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin2          # >> Call Site 21 <<
	.uleb128 .Ltmp15-.Ltmp11                #   Call between .Ltmp11 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin2          # >> Call Site 22 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin2          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin2          # >> Call Site 23 <<
	.uleb128 .Lfunc_end16-.Ltmp16           #   Call between .Ltmp16 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	0                               # >> Action Record 1 <<
                                        #   Cleanup
	.byte	0                               #   No further actions
	.byte	1                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 1
	.byte	125                             #   Continue to action 1
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp55:                                # TypeInfo 1
	.word	.L_ZTI18CInBufferException.DW.stub-.Ltmp55
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive4NZip10CInArchive13ReadLocalItemERNS0_7CItemExE # -- Begin function _ZN8NArchive4NZip10CInArchive13ReadLocalItemERNS0_7CItemExE
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive13ReadLocalItemERNS0_7CItemExE,@function
_ZN8NArchive4NZip10CInArchive13ReadLocalItemERNS0_7CItemExE: # @_ZN8NArchive4NZip10CInArchive13ReadLocalItemERNS0_7CItemExE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s0, $a1
	move	$fp, $a0
	addi.d	$a1, $sp, 38
	ori	$a2, $zero, 26
	addi.d	$a3, $sp, 24
	ori	$s1, $zero, 26
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB17_5
# %bb.1:                                # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
	ld.w	$a0, $sp, 24
	bne	$a0, $s1, .LBB17_6
# %bb.2:                                # %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit
	ld.h	$a0, $sp, 38
	ld.w	$a1, $sp, 40
	ld.d	$a2, $sp, 44
	st.h	$a0, $s0, 0
	st.w	$a1, $s0, 2
	ld.wu	$a0, $sp, 52
	st.d	$a2, $s0, 8
	ld.wu	$a1, $sp, 56
	ld.h	$a2, $sp, 62
	st.d	$a0, $s0, 16
	ld.hu	$s1, $sp, 60
	st.d	$a1, $s0, 24
	st.h	$a2, $s0, 184
	addi.d	$a2, $s0, 32
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive12ReadFileNameEjR11CStringBaseIcE)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s0, 184
	addi.d	$a0, $s1, 30
	st.w	$a0, $s0, 180
	beqz	$a1, .LBB17_4
# %bb.3:
	addi.d	$a4, $s0, 16
	addi.d	$a3, $s0, 24
	st.d	$zero, $sp, 24
	st.w	$zero, $sp, 20
	addi.d	$a2, $s0, 48
	addi.d	$a5, $sp, 24
	addi.d	$a6, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadExtraEjRNS0_11CExtraBlockERyS4_S4_Rj)
	jirl	$ra, $ra, 0
.LBB17_4:
	move	$a0, $zero
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB17_5:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	st.w	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.LBB17_6:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	_ZN8NArchive4NZip10CInArchive13ReadLocalItemERNS0_7CItemExE, .Lfunc_end17-_ZN8NArchive4NZip10CInArchive13ReadLocalItemERNS0_7CItemExE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip10CInArchive24ReadLocalItemAfterCdItemERNS0_7CItemExE # -- Begin function _ZN8NArchive4NZip10CInArchive24ReadLocalItemAfterCdItemERNS0_7CItemExE
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive24ReadLocalItemAfterCdItemERNS0_7CItemExE,@function
_ZN8NArchive4NZip10CInArchive24ReadLocalItemAfterCdItemERNS0_7CItemExE: # @_ZN8NArchive4NZip10CInArchive24ReadLocalItemAfterCdItemERNS0_7CItemExE
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -256
	.cfi_def_cfa_offset 256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a1
	ld.bu	$a1, $a1, 176
	beqz	$a1, .LBB18_2
# %bb.1:
	move	$s1, $zero
	b	.LBB18_25
.LBB18_2:
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 0
	ld.d	$a2, $s2, 88
	ld.d	$a3, $fp, 88
	ld.d	$a4, $a1, 48
	add.d	$a1, $a3, $a2
.Ltmp56:                                # EH_LABEL
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
.Ltmp57:                                # EH_LABEL
# %bb.3:                                # %_ZN8NArchive4NZip10CInArchive4SeekEy.exit
	move	$s1, $a0
	bnez	$a0, .LBB18_25
# %bb.4:
	st.d	$zero, $sp, 48
.Ltmp59:                                # EH_LABEL
	ori	$a0, $zero, 4
	ori	$s0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.5:
	st.d	$a0, $sp, 40
	st.b	$zero, $a0, 0
	st.w	$s0, $sp, 52
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 64
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 80
	pcalau12i	$a1, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	addi.d	$s3, $a1, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	st.d	$s3, $sp, 56
	vst	$vr0, $sp, 136
	st.d	$a0, $sp, 152
	st.d	$s3, $sp, 128
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$s4, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	st.d	$s4, $sp, 160
	vst	$vr0, $sp, 168
	st.w	$zero, $sp, 183
.Ltmp62:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
# %bb.6:
	addi.d	$s0, $sp, 56
	pcalau12i	$a1, %got_pc_hi20(_ZN8NArchive4NZip10NSignature16kLocalFileHeaderE)
	ld.d	$a1, $a1, %got_pc_lo12(_ZN8NArchive4NZip10NSignature16kLocalFileHeaderE)
	ld.w	$a1, $a1, 0
	ori	$s1, $zero, 1
	bne	$a0, $a1, .LBB18_19
# %bb.7:
.Ltmp64:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive13ReadLocalItemERNS0_7CItemExE)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.8:
	ld.hu	$a2, $fp, 4
	ld.hu	$a0, $sp, 12
	bne	$a2, $a0, .LBB18_19
# %bb.9:
	ld.hu	$a1, $fp, 2
	ld.hu	$a0, $sp, 10
	beq	$a1, $a0, .LBB18_11
# %bb.10:                               # %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit
	addi.d	$a3, $a2, -8
	sltui	$a3, $a3, 1
	sltui	$a2, $a2, 7
	lu12i.w	$a4, 15
	ori	$a4, $a4, 4095
	masknez	$a4, $a4, $a2
	lu12i.w	$a5, 7
	ori	$a6, $a5, 4095
	maskeqz	$a2, $a6, $a2
	or	$a2, $a2, $a4
	masknez	$a2, $a2, $a3
	ori	$a4, $a5, 4089
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	xor	$a1, $a0, $a1
	and	$a1, $a2, $a1
	bnez	$a1, .LBB18_19
.LBB18_11:                              # %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread
	andi	$a0, $a0, 8
	bnez	$a0, .LBB18_15
# %bb.12:
	ld.w	$a0, $fp, 12
	ld.w	$a1, $sp, 20
	bne	$a0, $a1, .LBB18_19
# %bb.13:
	ld.d	$a0, $fp, 16
	ld.d	$a1, $sp, 24
	bne	$a0, $a1, .LBB18_19
# %bb.14:
	ld.d	$a0, $fp, 24
	ld.d	$a1, $sp, 32
	bne	$a0, $a1, .LBB18_19
.LBB18_15:
	ld.w	$a0, $fp, 40
	ld.w	$a1, $sp, 48
	bne	$a0, $a1, .LBB18_19
# %bb.16:
	ld.w	$a0, $sp, 188
	ld.h	$a1, $sp, 192
	st.w	$a0, $fp, 180
	st.h	$a1, $fp, 184
	addi.d	$s1, $fp, 48
.Ltmp67:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.17:                               # %.noexc
.Ltmp69:                                # EH_LABEL
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.18:                               # %_ZN8NArchive4NZip11CExtraBlockaSERKS1_.exit
	move	$s1, $zero
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 176
.LBB18_19:                              # %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread37
	ld.d	$a0, $sp, 176
	addi.d	$fp, $sp, 128
	st.d	$s4, $sp, 160
	beqz	$a0, .LBB18_21
# %bb.20:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB18_21:                              # %_ZN7CBufferIhED2Ev.exit.i
	st.d	$s3, $sp, 128
.Ltmp72:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.22:                               # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	st.d	$s3, $sp, 56
.Ltmp75:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.23:                               # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB18_25
# %bb.24:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB18_25:
	move	$a0, $s1
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.LBB18_26:
.Ltmp66:                                # EH_LABEL
	b	.LBB18_31
.LBB18_27:
.Ltmp77:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB18_28:
.Ltmp74:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB18_29:
.Ltmp61:                                # EH_LABEL
	b	.LBB18_33
.LBB18_30:
.Ltmp71:                                # EH_LABEL
.LBB18_31:
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip5CItemD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB18_34
.LBB18_32:
.Ltmp58:                                # EH_LABEL
.LBB18_33:
	move	$fp, $a0
.LBB18_34:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	b	.LBB18_25
.Lfunc_end18:
	.size	_ZN8NArchive4NZip10CInArchive24ReadLocalItemAfterCdItemERNS0_7CItemExE, .Lfunc_end18-_ZN8NArchive4NZip10CInArchive24ReadLocalItemAfterCdItemERNS0_7CItemExE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table18:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp56-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin3          #     jumps to .Ltmp58
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp59-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin3          #     jumps to .Ltmp61
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp62-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp71-.Lfunc_begin3          #     jumps to .Ltmp71
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp64-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin3          #     jumps to .Ltmp66
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp67-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp70-.Ltmp67                #   Call between .Ltmp67 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin3          #     jumps to .Ltmp71
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp70-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp72-.Ltmp70                #   Call between .Ltmp70 and .Ltmp72
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin3          #     jumps to .Ltmp74
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp73-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp75-.Ltmp73                #   Call between .Ltmp73 and .Ltmp75
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin3          #     jumps to .Ltmp77
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp76-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Lfunc_end18-.Ltmp76           #   Call between .Ltmp76 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive4NZip5CItemD2Ev,"axG",@progbits,_ZN8NArchive4NZip5CItemD2Ev,comdat
	.weak	_ZN8NArchive4NZip5CItemD2Ev     # -- Begin function _ZN8NArchive4NZip5CItemD2Ev
	.p2align	5
	.type	_ZN8NArchive4NZip5CItemD2Ev,@function
_ZN8NArchive4NZip5CItemD2Ev:            # @_ZN8NArchive4NZip5CItemD2Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	ld.d	$a0, $fp, 168
	st.d	$a1, $fp, 152
	beqz	$a0, .LBB19_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB19_2:                               # %_ZN7CBufferIhED2Ev.exit
	addi.d	$s0, $fp, 120
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	addi.d	$s1, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	st.d	$s1, $fp, 120
.Ltmp78:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp79:                                # EH_LABEL
# %bb.3:                                # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 48
	st.d	$s1, $fp, 48
.Ltmp81:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp82:                                # EH_LABEL
# %bb.4:                                # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB19_6
# %bb.5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB19_6:                               # %_ZN8NArchive4NZip10CLocalItemD2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB19_7:
.Ltmp83:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB19_8:
.Ltmp80:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZN8NArchive4NZip5CItemD2Ev, .Lfunc_end19-_ZN8NArchive4NZip5CItemD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NZip5CItemD2Ev,"aG",@progbits,_ZN8NArchive4NZip5CItemD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table19:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp78-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp78
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin4          #     jumps to .Ltmp80
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp79-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp81-.Ltmp79                #   Call between .Ltmp79 and .Ltmp81
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin4          #     jumps to .Ltmp83
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp82-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Lfunc_end19-.Ltmp82           #   Call between .Ltmp82 and .Lfunc_end19
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
	.text
	.globl	_ZN8NArchive4NZip10CInArchive23ReadLocalItemDescriptorERNS0_7CItemExE # -- Begin function _ZN8NArchive4NZip10CInArchive23ReadLocalItemDescriptorERNS0_7CItemExE
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive23ReadLocalItemDescriptorERNS0_7CItemExE,@function
_ZN8NArchive4NZip10CInArchive23ReadLocalItemDescriptorERNS0_7CItemExE: # @_ZN8NArchive4NZip10CInArchive23ReadLocalItemDescriptorERNS0_7CItemExE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -2032
	.cfi_def_cfa_offset 2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
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
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 4208
	move	$s0, $a1
	ld.hu	$a1, $a1, 2
	andi	$a1, $a1, 8
	move	$fp, $a0
	bnez	$a1, .LBB20_3
# %bb.1:
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 0
	ld.d	$a1, $s0, 16
	ld.d	$a4, $a2, 48
	addi.d	$a3, $fp, 24
	ori	$a2, $zero, 1
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB20_13
.LBB20_2:
	move	$a0, $zero
	b	.LBB20_4
.LBB20_3:
	lu12i.w	$a2, 1
	addi.d	$a1, $sp, 24
	addi.d	$a3, $sp, 20
	addi.d	$s2, $sp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_5
.LBB20_4:                               # %_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit87
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 144
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB20_5:                               # %.lr.ph125.preheader
	addi.d	$s3, $sp, 24
	addi.d	$s1, $sp, 39
	addi.d	$s4, $sp, 31
	ori	$s5, $zero, 16
	pcalau12i	$a0, %got_pc_hi20(_ZN8NArchive4NZip10NSignature15kDataDescriptorE)
	ld.d	$s6, $a0, %got_pc_lo12(_ZN8NArchive4NZip10NSignature15kDataDescriptorE)
	move	$a1, $zero
	move	$s7, $zero
	ori	$s8, $zero, 1
.LBB20_6:                               # %.lr.ph125
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_9 Depth 2
	ld.w	$a0, $sp, 20
	add.w	$a1, $a0, $a1
	bltu	$a1, $s5, .LBB20_14
# %bb.7:                                # %.preheader
                                        #   in Loop: Header=BB20_6 Depth=1
	ld.w	$a3, $s6, 0
	addi.w	$a0, $a1, -15
	sub.w	$a1, $s5, $a1
	move	$a2, $s4
	move	$a4, $s7
	b	.LBB20_9
	.p2align	4, , 16
.LBB20_8:                               #   in Loop: Header=BB20_9 Depth=2
	addi.w	$a1, $a1, 1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 1
	beq	$a1, $s8, .LBB20_11
.LBB20_9:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a2, -7
	bne	$a5, $a3, .LBB20_8
# %bb.10:                               #   in Loop: Header=BB20_9 Depth=2
	ld.w	$a5, $a2, 1
	bne	$a4, $a5, .LBB20_8
	b	.LBB20_12
.LBB20_11:                              # %._crit_edge
                                        #   in Loop: Header=BB20_6 Depth=1
	bstrpick.d	$a1, $a0, 31, 0
	add.d	$a2, $s2, $a1
	ldx.b	$a1, $a1, $s2
	ld.b	$a3, $a2, 1
	ld.b	$a4, $a2, 2
	add.w	$s7, $a0, $s7
	st.b	$a1, $s3, 0
	st.b	$a3, $sp, 25
	st.b	$a4, $sp, 26
	ld.b	$a0, $a2, 3
	ld.b	$a1, $a2, 4
	ld.b	$a3, $a2, 5
	ld.b	$a4, $a2, 6
	st.b	$a0, $sp, 27
	st.b	$a1, $sp, 28
	st.b	$a3, $sp, 29
	st.b	$a4, $sp, 30
	ld.b	$a0, $a2, 7
	ld.b	$a1, $a2, 8
	ld.b	$a3, $a2, 9
	ld.b	$a4, $a2, 10
	st.b	$a0, $sp, 31
	st.b	$a1, $sp, 32
	st.b	$a3, $sp, 33
	st.b	$a4, $sp, 34
	ld.b	$a0, $a2, 11
	ld.b	$a1, $a2, 12
	ld.b	$a3, $a2, 13
	ld.b	$a2, $a2, 14
	st.b	$a0, $sp, 35
	st.b	$a1, $sp, 36
	st.b	$a3, $sp, 37
	st.b	$a2, $sp, 38
	ori	$a2, $zero, 4081
	addi.d	$a3, $sp, 20
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 15
	beqz	$a0, .LBB20_6
	b	.LBB20_4
.LBB20_12:
	ld.w	$a3, $a2, -3
	ld.d	$a0, $fp, 0
	st.w	$a3, $s0, 12
	ld.wu	$a2, $a2, 5
	ld.d	$a3, $a0, 0
	bstrpick.d	$a4, $a5, 31, 0
	st.d	$a4, $s0, 16
	st.d	$a2, $s0, 24
	ld.d	$a4, $a3, 48
	addi.d	$a3, $fp, 24
	ori	$a2, $zero, 1
	jirl	$ra, $a4, 0
	beqz	$a0, .LBB20_2
.LBB20_13:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 7
	st.w	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.LBB20_14:
	ori	$a0, $zero, 1
	b	.LBB20_4
.Lfunc_end20:
	.size	_ZN8NArchive4NZip10CInArchive23ReadLocalItemDescriptorERNS0_7CItemExE, .Lfunc_end20-_ZN8NArchive4NZip10CInArchive23ReadLocalItemDescriptorERNS0_7CItemExE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip10CInArchive28ReadLocalItemAfterCdItemFullERNS0_7CItemExE # -- Begin function _ZN8NArchive4NZip10CInArchive28ReadLocalItemAfterCdItemFullERNS0_7CItemExE
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive28ReadLocalItemAfterCdItemFullERNS0_7CItemExE,@function
_ZN8NArchive4NZip10CInArchive28ReadLocalItemAfterCdItemFullERNS0_7CItemExE: # @_ZN8NArchive4NZip10CInArchive28ReadLocalItemAfterCdItemFullERNS0_7CItemExE
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a1
	ld.bu	$a1, $a1, 176
	beqz	$a1, .LBB21_2
.LBB21_1:
	move	$s1, $zero
	b	.LBB21_4
.LBB21_2:
.Ltmp84:                                # EH_LABEL
	move	$s0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive24ReadLocalItemAfterCdItemERNS0_7CItemExE)
	jirl	$ra, $ra, 0
.Ltmp85:                                # EH_LABEL
# %bb.3:
	move	$s1, $a0
	beqz	$a0, .LBB21_5
.LBB21_4:
	move	$a0, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB21_5:
	ld.hu	$a0, $fp, 2
	andi	$a0, $a0, 8
	beqz	$a0, .LBB21_1
# %bb.6:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 88
	ld.d	$a2, $fp, 88
	ld.wu	$a3, $fp, 180
	ld.d	$a4, $a0, 0
	ld.hu	$a5, $fp, 184
	ld.d	$a6, $fp, 16
	add.d	$a1, $a2, $a1
	ld.d	$a4, $a4, 48
	add.d	$a1, $a1, $a3
	add.d	$a1, $a1, $a5
	add.d	$a1, $a1, $a6
.Ltmp87:                                # EH_LABEL
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
.Ltmp88:                                # EH_LABEL
# %bb.7:                                # %_ZN8NArchive4NZip10CInArchive4SeekEy.exit
	move	$s1, $a0
	bnez	$a0, .LBB21_4
# %bb.8:
.Ltmp90:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
# %bb.9:
	pcalau12i	$a1, %got_pc_hi20(_ZN8NArchive4NZip10NSignature15kDataDescriptorE)
	ld.d	$a1, $a1, %got_pc_lo12(_ZN8NArchive4NZip10NSignature15kDataDescriptorE)
	ld.w	$a1, $a1, 0
	ori	$s1, $zero, 1
	bne	$a0, $a1, .LBB21_4
# %bb.10:
.Ltmp93:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.11:
.Ltmp96:                                # EH_LABEL
	move	$s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev)
	jirl	$ra, $ra, 0
.Ltmp97:                                # EH_LABEL
# %bb.12:
.Ltmp98:                                # EH_LABEL
	move	$s3, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev)
	jirl	$ra, $ra, 0
.Ltmp99:                                # EH_LABEL
# %bb.13:
	ld.w	$a1, $fp, 12
	bne	$s2, $a1, .LBB21_4
# %bb.14:
	ld.d	$a1, $fp, 16
	bstrpick.d	$a2, $s3, 31, 0
	bne	$a1, $a2, .LBB21_4
# %bb.15:
	ld.d	$a1, $fp, 24
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a1, $a0, .LBB21_1
	b	.LBB21_4
.LBB21_16:
.Ltmp95:                                # EH_LABEL
	b	.LBB21_21
.LBB21_17:
.Ltmp100:                               # EH_LABEL
	b	.LBB21_21
.LBB21_18:
.Ltmp92:                                # EH_LABEL
	b	.LBB21_21
.LBB21_19:
.Ltmp89:                                # EH_LABEL
	b	.LBB21_21
.LBB21_20:
.Ltmp86:                                # EH_LABEL
.LBB21_21:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	b	.LBB21_4
.Lfunc_end21:
	.size	_ZN8NArchive4NZip10CInArchive28ReadLocalItemAfterCdItemFullERNS0_7CItemExE, .Lfunc_end21-_ZN8NArchive4NZip10CInArchive28ReadLocalItemAfterCdItemFullERNS0_7CItemExE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table21:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp84-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin5          #     jumps to .Ltmp86
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp87-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin5          #     jumps to .Ltmp89
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp90-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin5          #     jumps to .Ltmp92
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp93-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin5          #     jumps to .Ltmp95
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp96-.Lfunc_begin5          # >> Call Site 5 <<
	.uleb128 .Ltmp99-.Ltmp96                #   Call between .Ltmp96 and .Ltmp99
	.uleb128 .Ltmp100-.Lfunc_begin5         #     jumps to .Ltmp100
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp99-.Lfunc_begin5          # >> Call Site 6 <<
	.uleb128 .Lfunc_end21-.Ltmp99           #   Call between .Ltmp99 and .Lfunc_end21
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
	.globl	_ZN8NArchive4NZip10CInArchive10ReadCdItemERNS0_7CItemExE # -- Begin function _ZN8NArchive4NZip10CInArchive10ReadCdItemERNS0_7CItemExE
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive10ReadCdItemERNS0_7CItemExE,@function
_ZN8NArchive4NZip10CInArchive10ReadCdItemERNS0_7CItemExE: # @_ZN8NArchive4NZip10CInArchive10ReadCdItemERNS0_7CItemExE
	.cfi_startproc
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$s0, $a1
	move	$fp, $a0
	ori	$a0, $zero, 1
	st.b	$a0, $a1, 177
	addi.d	$a1, $sp, 10
	ori	$a2, $zero, 42
	addi.d	$a3, $sp, 52
	ori	$s1, $zero, 42
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB22_6
# %bb.1:                                # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
	ld.w	$a0, $sp, 52
	bne	$a0, $s1, .LBB22_7
# %bb.2:                                # %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit
	ld.h	$a0, $sp, 10
	ld.h	$a1, $sp, 12
	st.h	$a0, $s0, 80
	st.h	$a1, $s0, 0
	ld.w	$a0, $sp, 14
	ld.d	$a1, $sp, 18
	ld.wu	$a2, $sp, 26
	ld.wu	$a3, $sp, 30
	st.w	$a0, $s0, 2
	st.d	$a1, $s0, 8
	st.d	$a2, $s0, 16
	st.d	$a3, $s0, 24
	ld.hu	$a1, $sp, 34
	ld.hu	$s1, $sp, 36
	ld.h	$a0, $sp, 42
	ld.bu	$s2, $sp, 38
	ld.w	$a2, $sp, 44
	ld.hu	$s4, $sp, 40
	st.h	$a0, $s0, 82
	ld.wu	$a0, $sp, 48
	st.w	$a2, $s0, 84
	ld.bu	$s3, $sp, 39
	st.w	$s4, $sp, 52
	st.d	$a0, $s0, 88
	addi.d	$a2, $s0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive12ReadFileNameEjR11CStringBaseIcE)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB22_4
# %bb.3:
	addi.d	$a4, $s0, 16
	addi.d	$a3, $s0, 24
	addi.d	$a5, $s0, 88
	addi.d	$a2, $s0, 120
	addi.d	$a6, $sp, 52
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadExtraEjRNS0_11CExtraBlockERyS4_S4_Rj)
	jirl	$ra, $ra, 0
	ld.w	$s4, $sp, 52
.LBB22_4:
	bnez	$s4, .LBB22_8
# %bb.5:
	slli.d	$a0, $s3, 8
	or	$a2, $a0, $s2
	addi.d	$a1, $s0, 152
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive10ReadBufferER7CBufferIhEj)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB22_6:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	b	.LBB22_9
.LBB22_7:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.LBB22_8:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 5
.LBB22_9:
	st.w	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	_ZN8NArchive4NZip10CInArchive10ReadCdItemERNS0_7CItemExE, .Lfunc_end22-_ZN8NArchive4NZip10CInArchive10ReadCdItemERNS0_7CItemExE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE
.LCPI23_0:
	.byte	0                               # 0x0
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	8                               # 0x8
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI23_1:
	.byte	1                               # 0x1
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	9                               # 0x9
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI23_2:
	.byte	2                               # 0x2
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	10                              # 0xa
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI23_3:
	.byte	3                               # 0x3
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	11                              # 0xb
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI23_4:
	.byte	4                               # 0x4
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	12                              # 0xc
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI23_5:
	.byte	5                               # 0x5
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	13                              # 0xd
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI23_6:
	.byte	6                               # 0x6
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	14                              # 0xe
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
	.text
	.globl	_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE,@function
_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE: # @_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a3, 48
	move	$fp, $a2
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB23_5
# %bb.1:
	addi.d	$a1, $sp, 20
	ori	$a2, $zero, 56
	addi.d	$a3, $sp, 76
	ori	$s1, $zero, 56
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB23_6
# %bb.2:                                # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit
	ld.w	$a1, $sp, 76
	ori	$a0, $zero, 1
	bne	$a1, $s1, .LBB23_5
# %bb.3:
	ld.w	$a1, $sp, 20
	pcalau12i	$a2, %got_pc_hi20(_ZN8NArchive4NZip10NSignature21kZip64EndOfCentralDirE)
	ld.d	$a2, $a2, %got_pc_lo12(_ZN8NArchive4NZip10NSignature21kZip64EndOfCentralDirE)
	ld.w	$a2, $a2, 0
	bne	$a1, $a2, .LBB23_5
# %bb.4:
	move	$a0, $zero
	vld	$vr0, $sp, 60
	pcalau12i	$a1, %pc_hi20(.LCPI23_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI23_0)
	pcalau12i	$a1, %pc_hi20(.LCPI23_1)
	vld	$vr2, $a1, %pc_lo12(.LCPI23_1)
	pcalau12i	$a1, %pc_hi20(.LCPI23_2)
	vld	$vr3, $a1, %pc_lo12(.LCPI23_2)
	pcalau12i	$a1, %pc_hi20(.LCPI23_3)
	vld	$vr4, $a1, %pc_lo12(.LCPI23_3)
	pcalau12i	$a1, %pc_hi20(.LCPI23_4)
	vld	$vr5, $a1, %pc_lo12(.LCPI23_4)
	pcalau12i	$a1, %pc_hi20(.LCPI23_5)
	vld	$vr6, $a1, %pc_lo12(.LCPI23_5)
	pcalau12i	$a1, %pc_hi20(.LCPI23_6)
	vld	$vr7, $a1, %pc_lo12(.LCPI23_6)
	vrepli.b	$vr8, 0
	vshuf.b	$vr1, $vr8, $vr0, $vr1
	vshuf.b	$vr2, $vr8, $vr0, $vr2
	vslli.d	$vr2, $vr2, 8
	vshuf.b	$vr3, $vr8, $vr0, $vr3
	vslli.d	$vr3, $vr3, 16
	vshuf.b	$vr4, $vr8, $vr0, $vr4
	vslli.d	$vr4, $vr4, 24
	vshuf.b	$vr5, $vr8, $vr0, $vr5
	vshuf.b	$vr6, $vr8, $vr0, $vr6
	vshuf.b	$vr7, $vr8, $vr0, $vr7
	vsrli.d	$vr0, $vr0, 56
	vslli.d	$vr0, $vr0, 56
	vslli.d	$vr7, $vr7, 48
	vslli.d	$vr6, $vr6, 40
	vslli.d	$vr5, $vr5, 32
	vor.v	$vr1, $vr2, $vr1
	vor.v	$vr1, $vr1, $vr3
	vor.v	$vr1, $vr1, $vr4
	vor.v	$vr1, $vr1, $vr5
	vor.v	$vr1, $vr1, $vr6
	vor.v	$vr1, $vr1, $vr7
	vor.v	$vr0, $vr1, $vr0
	vst	$vr0, $fp, 0
.LBB23_5:
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB23_6:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	st.w	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE, .Lfunc_end23-_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip10CInArchive6FindCdERNS0_7CCdInfoE # -- Begin function _ZN8NArchive4NZip10CInArchive6FindCdERNS0_7CCdInfoE
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive6FindCdERNS0_7CCdInfoE,@function
_ZN8NArchive4NZip10CInArchive6FindCdERNS0_7CCdInfoE: # @_ZN8NArchive4NZip10CInArchive6FindCdERNS0_7CCdInfoE
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
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a4, $a2, 48
	move	$s1, $a1
	ori	$a2, $zero, 2
	addi.d	$a3, $sp, 24
	move	$a1, $zero
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB24_6
# %bb.1:                                # %_ZN7CBufferIhE11SetCapacityEm.exit
	lu12i.w	$a0, 16
	ori	$s2, $a0, 42
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24
	ori	$a2, $zero, 22
	move	$fp, $a0
	bgeu	$a1, $a2, .LBB24_3
.LBB24_2:
	ori	$a0, $zero, 1
	b	.LBB24_5
.LBB24_3:
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 0
	sltu	$a3, $a1, $s2
	masknez	$a4, $s2, $a3
	maskeqz	$a3, $a1, $a3
	ld.d	$a5, $a2, 48
	or	$s4, $a3, $a4
	sub.d	$s2, $a1, $s4
	addi.d	$s3, $s0, 24
.Ltmp101:                               # EH_LABEL
	move	$a1, $s2
	move	$a2, $zero
	move	$a3, $s3
	jirl	$ra, $a5, 0
.Ltmp102:                               # EH_LABEL
# %bb.4:
	beqz	$a0, .LBB24_7
.LBB24_5:                               # %_ZN7CBufferIhED2Ev.exit
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB24_6:
	addi.w	$a0, $a0, 0
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
.LBB24_7:
	ld.d	$a0, $s3, 0
	bne	$a0, $s2, .LBB24_2
# %bb.8:
.Ltmp104:                               # EH_LABEL
	addi.w	$s2, $s4, 0
	addi.d	$a3, $sp, 36
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
.Ltmp105:                               # EH_LABEL
# %bb.9:                                # %.noexc105
	bnez	$a0, .LBB24_26
# %bb.10:
	ld.w	$a1, $sp, 36
	ori	$a0, $zero, 1
	bne	$a1, $s2, .LBB24_5
# %bb.11:                               # %.lr.ph
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	addi.w	$a0, $s4, -22
	bstrpick.d	$s5, $a0, 31, 0
	srai.d	$a1, $a0, 63
	and	$a1, $a1, $a0
	addi.w	$a1, $a1, -1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s7, $fp, -20
	pcalau12i	$a1, %got_pc_hi20(_ZN8NArchive4NZip10NSignature16kEndOfCentralDirE)
	ld.d	$s8, $a1, %got_pc_lo12(_ZN8NArchive4NZip10NSignature16kEndOfCentralDirE)
	ori	$a4, $zero, 20
	pcalau12i	$a1, %got_pc_hi20(_ZN8NArchive4NZip10NSignature28kZip64EndOfCentralDirLocatorE)
	ld.d	$s4, $a1, %got_pc_lo12(_ZN8NArchive4NZip10NSignature28kZip64EndOfCentralDirLocatorE)
	b	.LBB24_14
.LBB24_12:                              # %.thread
                                        #   in Loop: Header=BB24_14 Depth=1
	ld.bu	$a0, $s6, 24
	ld.bu	$a1, $s6, 25
	ld.bu	$a2, $s6, 26
	ld.bu	$a3, $s6, 27
	or	$a0, $a1, $a0
	or	$a0, $a0, $a2
	or	$a0, $a0, $a3
	beqz	$a0, .LBB24_23
.LBB24_13:                              #   in Loop: Header=BB24_14 Depth=1
	addi.d	$s5, $s5, -1
	addi.w	$a0, $s3, -1
	blez	$s3, .LBB24_22
.LBB24_14:                              # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s7, $s5
	ld.w	$a1, $s6, 20
	ld.w	$a2, $s8, 0
	move	$s3, $a0
	bne	$a1, $a2, .LBB24_13
# %bb.15:                               #   in Loop: Header=BB24_14 Depth=1
	bltu	$s5, $a4, .LBB24_12
# %bb.16:                               #   in Loop: Header=BB24_14 Depth=1
	ldx.w	$a0, $s7, $s5
	ld.w	$a1, $s4, 0
	bne	$a0, $a1, .LBB24_12
# %bb.17:                               #   in Loop: Header=BB24_14 Depth=1
	ld.d	$s2, $s6, 8
.Ltmp109:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
# %bb.18:                               #   in Loop: Header=BB24_14 Depth=1
	beqz	$a0, .LBB24_25
# %bb.19:                               #   in Loop: Header=BB24_14 Depth=1
	ld.d	$a0, $s0, 96
	add.d	$a1, $a0, $s2
.Ltmp111:                               # EH_LABEL
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.20:                               #   in Loop: Header=BB24_14 Depth=1
	ori	$a4, $zero, 20
	bnez	$a0, .LBB24_12
# %bb.21:
	ld.d	$a0, $s0, 96
	b	.LBB24_24
.LBB24_22:
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	b	.LBB24_25
.LBB24_23:
	add.d	$a0, $fp, $s5
	ld.bu	$a1, $a0, 13
	ld.bu	$a2, $a0, 12
	ld.bu	$a3, $a0, 14
	slli.d	$a1, $a1, 8
	ld.bu	$a4, $a0, 15
	or	$a5, $a1, $a2
	slli.d	$a3, $a3, 16
	or	$a5, $a5, $a3
	slli.d	$a4, $a4, 24
	or	$a5, $a5, $a4
	ld.bu	$a6, $a0, 17
	st.d	$a5, $s1, 0
	ld.bu	$a5, $a0, 16
	ld.d	$a7, $sp, 24
	slli.d	$a6, $a6, 8
	ld.bu	$t0, $a0, 18
	ld.bu	$a0, $a0, 19
	sub.d	$a2, $a7, $a2
	or	$a7, $a6, $a5
	slli.d	$t0, $t0, 16
	or	$a7, $a7, $t0
	slli.d	$a0, $a0, 24
	or	$a7, $a7, $a0
	sub.d	$a2, $a2, $a5
	sub.d	$a1, $a2, $a1
	sub.d	$a1, $a1, $a6
	sub.d	$a1, $a1, $a3
	sub.d	$a1, $a1, $t0
	sub.d	$a1, $a1, $a4
	sub.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a0, $s5
	st.d	$a7, $s1, 8
	beqz	$a0, .LBB24_25
.LBB24_24:
	st.d	$a0, $s0, 88
.LBB24_25:                              # %.loopexit
	bstrpick.d	$a0, $s3, 31, 31
	b	.LBB24_5
.LBB24_26:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	st.w	$a1, $a0, 0
.Ltmp106:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp107:                               # EH_LABEL
# %bb.27:                               # %.noexc106
.LBB24_28:
.Ltmp108:                               # EH_LABEL
	b	.LBB24_31
.LBB24_29:
.Ltmp113:                               # EH_LABEL
	b	.LBB24_31
.LBB24_30:
.Ltmp103:                               # EH_LABEL
.LBB24_31:                              # %_ZN7CBufferIhED2Ev.exit107
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end24:
	.size	_ZN8NArchive4NZip10CInArchive6FindCdERNS0_7CCdInfoE, .Lfunc_end24-_ZN8NArchive4NZip10CInArchive6FindCdERNS0_7CCdInfoE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table24:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp101-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp101
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp102-.Ltmp101              #   Call between .Ltmp101 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin6         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp104-.Ltmp102              #   Call between .Ltmp102 and .Ltmp104
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp108-.Lfunc_begin6         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp112-.Ltmp109              #   Call between .Ltmp109 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin6         #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp106-.Ltmp112              #   Call between .Ltmp112 and .Ltmp106
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin6         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Lfunc_end24-.Ltmp107          #   Call between .Ltmp107 and .Lfunc_end24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN7CBufferIhED2Ev,"axG",@progbits,_ZN7CBufferIhED2Ev,comdat
	.weak	_ZN7CBufferIhED2Ev              # -- Begin function _ZN7CBufferIhED2Ev
	.p2align	5
	.type	_ZN7CBufferIhED2Ev,@function
_ZN7CBufferIhED2Ev:                     # @_ZN7CBufferIhED2Ev
# %bb.0:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$a2, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	ld.d	$a0, $a1, 16
	st.d	$a2, $a1, 0
	beqz	$a0, .LBB25_2
# %bb.1:
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB25_2:
	ret
.Lfunc_end25:
	.size	_ZN7CBufferIhED2Ev, .Lfunc_end25-_ZN7CBufferIhED2Ev
                                        # -- End function
	.text
	.globl	_ZN8NArchive4NZip10CInArchive9TryReadCdER13CObjectVectorINS0_7CItemExEEyyPNS0_13CProgressVirtE # -- Begin function _ZN8NArchive4NZip10CInArchive9TryReadCdER13CObjectVectorINS0_7CItemExEEyyPNS0_13CProgressVirtE
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive9TryReadCdER13CObjectVectorINS0_7CItemExEEyyPNS0_13CProgressVirtE,@function
_ZN8NArchive4NZip10CInArchive9TryReadCdER13CObjectVectorINS0_7CItemExEEyyPNS0_13CProgressVirtE: # @_ZN8NArchive4NZip10CInArchive9TryReadCdER13CObjectVectorINS0_7CItemExEEyyPNS0_13CProgressVirtE
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	addi.d	$sp, $sp, -352
	.cfi_def_cfa_offset 352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
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
	move	$s0, $a4
	move	$fp, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 48
	addi.d	$s4, $s3, 24
	move	$a1, $s1
	move	$a2, $zero
	move	$a3, $s4
	jirl	$ra, $a4, 0
	move	$s7, $a0
	bnez	$a0, .LBB26_24
# %bb.1:
	ld.d	$a0, $s4, 0
	ori	$s7, $zero, 1
	bne	$a0, $s1, .LBB26_24
# %bb.2:
	addi.d	$s5, $s3, 40
	lu12i.w	$a1, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN9CInBuffer6CreateEj)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB26_21
# %bb.3:
	ld.d	$a1, $s3, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN9CInBuffer9SetStreamEP19ISequentialInStream)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN9CInBuffer4InitEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $s3, 32
	addi.d	$s6, $sp, 120
	pcalau12i	$a0, %got_pc_hi20(_ZN8NArchive4NZip10NSignature18kCentralFileHeaderE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8NArchive4NZip10NSignature18kCentralFileHeaderE)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	addi.d	$s5, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$s7, $zero
	lu12i.w	$a0, 67108
	ori	$a0, $a0, 3539
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	b	.LBB26_5
	.p2align	4, , 16
.LBB26_4:                               # %_ZN8NArchive4NZip5CItemD2Ev.exit
                                        #   in Loop: Header=BB26_5 Depth=1
	move	$fp, $s0
	move	$s0, $s1
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	beqz	$s8, .LBB26_24
.LBB26_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	sub.d	$a0, $a0, $s1
	bgeu	$a0, $fp, .LBB26_22
# %bb.6:                                #   in Loop: Header=BB26_5 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB26_23
# %bb.7:                                #   in Loop: Header=BB26_5 Depth=1
	st.d	$zero, $sp, 112
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 104
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 116
	addi.d	$a0, $sp, 128
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	ori	$a1, $zero, 8
	st.d	$a1, $sp, 144
	st.d	$s5, $sp, 120
	addi.d	$a0, $sp, 200
	vst	$vr0, $a0, 0
	st.d	$a1, $sp, 216
	st.d	$s5, $sp, 192
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 224
	addi.d	$a0, $sp, 232
	vst	$vr0, $a0, 0
	st.w	$zero, $a0, 15
.Ltmp114:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive10ReadCdItemERNS0_7CItemExE)
	jirl	$ra, $ra, 0
.Ltmp115:                               # EH_LABEL
# %bb.8:                                #   in Loop: Header=BB26_5 Depth=1
.Ltmp117:                               # EH_LABEL
	ori	$a0, $zero, 192
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp118:                               # EH_LABEL
# %bb.9:                                # %.noexc
                                        #   in Loop: Header=BB26_5 Depth=1
.Ltmp119:                               # EH_LABEL
	move	$s8, $a0
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip5CItemC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp120:                               # EH_LABEL
# %bb.10:                               #   in Loop: Header=BB26_5 Depth=1
	addi.d	$a1, $sp, 252
	ld.h	$a0, $a1, 4
	ld.w	$a1, $a1, 0
	st.h	$a0, $s8, 184
	st.w	$a1, $s8, 180
.Ltmp122:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp123:                               # EH_LABEL
# %bb.11:                               #   in Loop: Header=BB26_5 Depth=1
	ld.w	$a0, $s2, 12
	ld.d	$a1, $s2, 16
	slli.d	$a2, $a0, 3
	stx.d	$s8, $a1, $a2
	addi.w	$a1, $a0, 1
	st.w	$a1, $s2, 12
	ori	$s8, $zero, 1
	beqz	$s0, .LBB26_15
# %bb.12:                               #   in Loop: Header=BB26_5 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	srli.d	$a2, $a0, 63
	srai.d	$a0, $a0, 38
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 1000
	mul.d	$a0, $a0, $a2
	sub.w	$a0, $a1, $a0
	bnez	$a0, .LBB26_15
# %bb.13:                               #   in Loop: Header=BB26_5 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 8
.Ltmp125:                               # EH_LABEL
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp126:                               # EH_LABEL
# %bb.14:                               #   in Loop: Header=BB26_5 Depth=1
	sltui	$s8, $a0, 1
	masknez	$a0, $a0, $s8
	maskeqz	$a1, $s7, $s8
	or	$s7, $a1, $a0
.LBB26_15:                              #   in Loop: Header=BB26_5 Depth=1
	move	$s1, $s0
	ld.d	$a0, $sp, 240
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a1, $sp, 224
	beqz	$a0, .LBB26_17
# %bb.16:                               #   in Loop: Header=BB26_5 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB26_17:                              # %_ZN7CBufferIhED2Ev.exit.i
                                        #   in Loop: Header=BB26_5 Depth=1
	move	$s0, $fp
	st.d	$s5, $sp, 192
.Ltmp128:                               # EH_LABEL
	addi.d	$fp, $sp, 192
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp129:                               # EH_LABEL
# %bb.18:                               # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i
                                        #   in Loop: Header=BB26_5 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	st.d	$s5, $sp, 120
.Ltmp131:                               # EH_LABEL
	move	$fp, $s6
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp132:                               # EH_LABEL
# %bb.19:                               # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i
                                        #   in Loop: Header=BB26_5 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	beqz	$a0, .LBB26_4
# %bb.20:                               #   in Loop: Header=BB26_5 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB26_4
.LBB26_21:
	lu12i.w	$a0, -524176
	ori	$s7, $a0, 14
	b	.LBB26_24
.LBB26_22:
	xor	$a0, $a0, $fp
	sltu	$s7, $zero, $a0
	b	.LBB26_24
.LBB26_23:
	ori	$s7, $zero, 1
.LBB26_24:                              # %.loopexit
	addi.w	$a0, $s7, 0
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.LBB26_25:
.Ltmp127:                               # EH_LABEL
	b	.LBB26_31
.LBB26_26:
.Ltmp116:                               # EH_LABEL
	b	.LBB26_31
.LBB26_27:
.Ltmp121:                               # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 192
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip5CItemD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB26_28:
.Ltmp130:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB26_29:
.Ltmp133:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB26_30:
.Ltmp124:                               # EH_LABEL
.LBB26_31:                              # %.body
	move	$fp, $a0
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip5CItemD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end26:
	.size	_ZN8NArchive4NZip10CInArchive9TryReadCdER13CObjectVectorINS0_7CItemExEEyyPNS0_13CProgressVirtE, .Lfunc_end26-_ZN8NArchive4NZip10CInArchive9TryReadCdER13CObjectVectorINS0_7CItemExEEyyPNS0_13CProgressVirtE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table26:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp114-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp114
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin7         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp124-.Lfunc_begin7         #     jumps to .Ltmp124
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp121-.Lfunc_begin7         #     jumps to .Ltmp121
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp123-.Ltmp122              #   Call between .Ltmp122 and .Ltmp123
	.uleb128 .Ltmp124-.Lfunc_begin7         #     jumps to .Ltmp124
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp126-.Ltmp125              #   Call between .Ltmp125 and .Ltmp126
	.uleb128 .Ltmp127-.Lfunc_begin7         #     jumps to .Ltmp127
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp128-.Ltmp126              #   Call between .Ltmp126 and .Ltmp128
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Ltmp129-.Ltmp128              #   Call between .Ltmp128 and .Ltmp129
	.uleb128 .Ltmp130-.Lfunc_begin7         #     jumps to .Ltmp130
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp129-.Lfunc_begin7         # >> Call Site 9 <<
	.uleb128 .Ltmp131-.Ltmp129              #   Call between .Ltmp129 and .Ltmp131
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin7         # >> Call Site 10 <<
	.uleb128 .Ltmp132-.Ltmp131              #   Call between .Ltmp131 and .Ltmp132
	.uleb128 .Ltmp133-.Lfunc_begin7         #     jumps to .Ltmp133
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp132-.Lfunc_begin7         # >> Call Site 11 <<
	.uleb128 .Lfunc_end26-.Ltmp132          #   Call between .Ltmp132 and .Lfunc_end26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
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
	.globl	_ZN8NArchive4NZip10CInArchive6ReadCdER13CObjectVectorINS0_7CItemExEERyS6_PNS0_13CProgressVirtE # -- Begin function _ZN8NArchive4NZip10CInArchive6ReadCdER13CObjectVectorINS0_7CItemExEERyS6_PNS0_13CProgressVirtE
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive6ReadCdER13CObjectVectorINS0_7CItemExEERyS6_PNS0_13CProgressVirtE,@function
_ZN8NArchive4NZip10CInArchive6ReadCdER13CObjectVectorINS0_7CItemExEERyS6_PNS0_13CProgressVirtE: # @_ZN8NArchive4NZip10CInArchive6ReadCdER13CObjectVectorINS0_7CItemExEERyS6_PNS0_13CProgressVirtE
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
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$s0, $a4
	move	$s2, $a3
	move	$s3, $a2
	move	$s1, $a1
	move	$fp, $a0
	st.d	$zero, $a0, 88
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive6FindCdERNS0_7CCdInfoE)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB27_8
# %bb.1:
	ld.d	$a0, $sp, 16
	ld.d	$s4, $sp, 24
	st.d	$a0, $s2, 0
	st.d	$s4, $s3, 0
	ld.d	$a0, $fp, 88
	ld.d	$a3, $s2, 0
	add.d	$a2, $a0, $s4
	move	$a0, $fp
	move	$a1, $s1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9TryReadCdER13CObjectVectorINS0_7CItemExEEyyPNS0_13CProgressVirtE)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 1
	bne	$a0, $s3, .LBB27_4
# %bb.2:
	ld.d	$a0, $fp, 88
	bnez	$a0, .LBB27_5
# %bb.3:
	ld.d	$a0, $fp, 96
	ld.d	$a3, $s2, 0
	add.d	$a2, $a0, $s4
	move	$a0, $fp
	move	$a1, $s1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9TryReadCdER13CObjectVectorINS0_7CItemExEEyyPNS0_13CProgressVirtE)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB27_9
.LBB27_4:
	move	$s3, $a0
.LBB27_5:
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 4
	addi.d	$a3, $sp, 36
	ori	$s0, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB27_10
# %bb.6:                                # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
	ld.w	$a1, $sp, 36
	ori	$a0, $zero, 1
	bne	$a1, $s0, .LBB27_8
# %bb.7:
	ld.w	$a0, $sp, 32
	st.w	$a0, $fp, 8
	move	$a0, $s3
.LBB27_8:
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB27_9:
	ld.d	$a0, $fp, 96
	move	$s3, $zero
	st.d	$a0, $fp, 88
	b	.LBB27_5
.LBB27_10:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	st.w	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Lfunc_end27:
	.size	_ZN8NArchive4NZip10CInArchive6ReadCdER13CObjectVectorINS0_7CItemExEERyS6_PNS0_13CProgressVirtE, .Lfunc_end27-_ZN8NArchive4NZip10CInArchive6ReadCdER13CObjectVectorINS0_7CItemExEERyS6_PNS0_13CProgressVirtE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip10CInArchive15ReadLocalsAndCdER13CObjectVectorINS0_7CItemExEEPNS0_13CProgressVirtERyRi # -- Begin function _ZN8NArchive4NZip10CInArchive15ReadLocalsAndCdER13CObjectVectorINS0_7CItemExEEPNS0_13CProgressVirtERyRi
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive15ReadLocalsAndCdER13CObjectVectorINS0_7CItemExEEPNS0_13CProgressVirtERyRi,@function
_ZN8NArchive4NZip10CInArchive15ReadLocalsAndCdER13CObjectVectorINS0_7CItemExEEPNS0_13CProgressVirtERyRi: # @_ZN8NArchive4NZip10CInArchive15ReadLocalsAndCdER13CObjectVectorINS0_7CItemExEEPNS0_13CProgressVirtERyRi
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:
	addi.d	$sp, $sp, -384
	.cfi_def_cfa_offset 384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
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
	move	$s1, $a4
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.w	$zero, $s1, 0
	addi.d	$s5, $sp, 144
	addi.d	$s3, $sp, 276
	pcalau12i	$a0, %got_pc_hi20(_ZN8NArchive4NZip10NSignature16kLocalFileHeaderE)
	ld.d	$s8, $a0, %got_pc_lo12(_ZN8NArchive4NZip10NSignature16kLocalFileHeaderE)
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	ori	$s2, $zero, 8
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	addi.d	$s7, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	lu12i.w	$a0, 335544
	ori	$a0, $a0, 1311
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
                                        # implicit-def: $r24
	b	.LBB28_2
	.p2align	4, , 16
.LBB28_1:                               # %_ZN8NArchive4NZip5CItemD2Ev.exit
                                        #   in Loop: Header=BB28_2 Depth=1
	move	$s1, $s6
	bnez	$s4, .LBB28_23
.LBB28_2:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s0, 8
	ld.w	$a1, $s8, 0
	bne	$a0, $a1, .LBB28_25
# %bb.3:                                #   in Loop: Header=BB28_2 Depth=1
	st.d	$zero, $sp, 136
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 140
	addi.d	$a0, $sp, 152
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	st.d	$s2, $sp, 168
	st.d	$s7, $sp, 144
	addi.d	$a0, $sp, 224
	vst	$vr0, $a0, 0
	st.d	$s2, $sp, 240
	st.d	$s7, $sp, 216
	ld.d	$a0, $s0, 24
	ld.d	$a1, $s0, 16
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.d	$a2, $sp, 248
	addi.d	$a2, $sp, 256
	vst	$vr0, $a2, 0
	st.w	$zero, $a2, 15
	sub.d	$a0, $a0, $a1
	addi.d	$a0, $a0, -4
	st.d	$a0, $sp, 184
.Ltmp134:                               # EH_LABEL
	addi.d	$a1, $sp, 96
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive13ReadLocalItemERNS0_7CItemExE)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
# %bb.4:                                #   in Loop: Header=BB28_2 Depth=1
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 272
.Ltmp137:                               # EH_LABEL
	addi.d	$a1, $sp, 96
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive23ReadLocalItemDescriptorERNS0_7CItemExE)
	jirl	$ra, $ra, 0
.Ltmp138:                               # EH_LABEL
# %bb.5:                                #   in Loop: Header=BB28_2 Depth=1
.Ltmp139:                               # EH_LABEL
	ori	$a0, $zero, 192
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp140:                               # EH_LABEL
# %bb.6:                                # %.noexc
                                        #   in Loop: Header=BB28_2 Depth=1
.Ltmp141:                               # EH_LABEL
	move	$s6, $a0
	addi.d	$a1, $sp, 96
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip5CItemC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
# %bb.7:                                #   in Loop: Header=BB28_2 Depth=1
	ld.h	$a0, $s3, 4
	ld.w	$a1, $s3, 0
	st.h	$a0, $s6, 184
	st.w	$a1, $s6, 180
.Ltmp144:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp145:                               # EH_LABEL
# %bb.8:                                #   in Loop: Header=BB28_2 Depth=1
	ld.w	$a0, $fp, 12
	ld.d	$a1, $fp, 16
	slli.d	$a2, $a0, 3
	stx.d	$s6, $a1, $a2
	addi.w	$a1, $a0, 1
	st.w	$a1, $fp, 12
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB28_12
# %bb.9:                                #   in Loop: Header=BB28_2 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	srli.d	$a2, $a0, 63
	srai.d	$a0, $a0, 37
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 100
	mul.d	$a0, $a0, $a2
	sub.w	$a0, $a1, $a0
	bnez	$a0, .LBB28_12
# %bb.10:                               #   in Loop: Header=BB28_2 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 8
.Ltmp146:                               # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp147:                               # EH_LABEL
# %bb.11:                               #   in Loop: Header=BB28_2 Depth=1
	move	$s6, $a0
	ori	$s4, $zero, 1
	bnez	$a0, .LBB28_17
.LBB28_12:                              #   in Loop: Header=BB28_2 Depth=1
.Ltmp149:                               # EH_LABEL
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 4
	addi.d	$a3, $sp, 292
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
.Ltmp150:                               # EH_LABEL
# %bb.13:                               # %.noexc141
                                        #   in Loop: Header=BB28_2 Depth=1
	bnez	$a0, .LBB28_106
# %bb.14:                               # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
                                        #   in Loop: Header=BB28_2 Depth=1
	ld.w	$a0, $sp, 292
	ori	$s4, $zero, 3
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB28_16
# %bb.15:                               #   in Loop: Header=BB28_2 Depth=1
	ld.w	$a0, $sp, 288
	move	$s4, $zero
	st.w	$a0, $s0, 8
.LBB28_16:                              #   in Loop: Header=BB28_2 Depth=1
	move	$s6, $s1
.LBB28_17:                              #   in Loop: Header=BB28_2 Depth=1
	ld.d	$a0, $sp, 264
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a1, $sp, 248
	beqz	$a0, .LBB28_19
# %bb.18:                               #   in Loop: Header=BB28_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB28_19:                              # %_ZN7CBufferIhED2Ev.exit.i
                                        #   in Loop: Header=BB28_2 Depth=1
	st.d	$s7, $sp, 216
.Ltmp155:                               # EH_LABEL
	addi.d	$s1, $sp, 216
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp156:                               # EH_LABEL
# %bb.20:                               # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i
                                        #   in Loop: Header=BB28_2 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	st.d	$s7, $sp, 144
.Ltmp158:                               # EH_LABEL
	move	$s1, $s5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp159:                               # EH_LABEL
# %bb.21:                               # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i
                                        #   in Loop: Header=BB28_2 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	beqz	$a0, .LBB28_1
# %bb.22:                               #   in Loop: Header=BB28_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB28_1
.LBB28_23:                              # %_ZN8NArchive4NZip5CItemD2Ev.exit
	ori	$a0, $zero, 1
	beq	$s4, $a0, .LBB28_102
# %bb.24:
	move	$s1, $s6
.LBB28_25:
	ld.d	$a0, $s0, 24
	addi.d	$a0, $a0, -4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	ld.w	$a1, $fp, 12
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	blez	$a1, .LBB28_101
# %bb.26:                               # %.lr.ph213
	addi.d	$s3, $sp, 144
	lu12i.w	$a0, 67108
	ori	$a0, $a0, 3539
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZN8NArchive4NZip10NSignature16kEndOfCentralDirE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8NArchive4NZip10NSignature16kEndOfCentralDirE)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZN8NArchive4NZip10NSignature18kCentralFileHeaderE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8NArchive4NZip10NSignature18kCentralFileHeaderE)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$s4, $zero
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB28_27:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_36 Depth 2
                                        #     Child Loop BB28_43 Depth 2
                                        #     Child Loop BB28_77 Depth 2
                                        #     Child Loop BB28_73 Depth 2
                                        #     Child Loop BB28_81 Depth 2
                                        #     Child Loop BB28_85 Depth 2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB28_30
# %bb.28:                               #   in Loop: Header=BB28_27 Depth=1
	bstrpick.d	$a0, $s4, 31, 0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a2
	srli.d	$a0, $a0, 38
	ori	$a2, $zero, 1000
	mul.d	$a0, $a0, $a2
	sub.w	$a0, $s4, $a0
	bnez	$a0, .LBB28_30
# %bb.29:                               #   in Loop: Header=BB28_27 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 8
	jirl	$ra, $a2, 0
	bnez	$a0, .LBB28_105
.LBB28_30:                              #   in Loop: Header=BB28_27 Depth=1
	ld.w	$a0, $s0, 8
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	beq	$a0, $a1, .LBB28_97
# %bb.31:                               #   in Loop: Header=BB28_27 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB28_103
# %bb.32:                               #   in Loop: Header=BB28_27 Depth=1
	st.d	$zero, $sp, 136
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 140
	addi.d	$a0, $sp, 152
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	ori	$a1, $zero, 8
	st.d	$a1, $sp, 168
	st.d	$s7, $sp, 144
	addi.d	$a0, $sp, 224
	vst	$vr0, $a0, 0
	st.d	$a1, $sp, 240
	st.d	$s7, $sp, 216
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $sp, 248
	addi.d	$a0, $sp, 256
	vst	$vr0, $a0, 0
	st.w	$zero, $a0, 15
.Ltmp161:                               # EH_LABEL
	addi.d	$a1, $sp, 96
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive10ReadCdItemERNS0_7CItemExE)
	jirl	$ra, $ra, 0
.Ltmp162:                               # EH_LABEL
# %bb.33:                               #   in Loop: Header=BB28_27 Depth=1
	ld.w	$a0, $fp, 12
	bnez	$s4, .LBB28_42
# %bb.34:                               # %.preheader
                                        #   in Loop: Header=BB28_27 Depth=1
	move	$s8, $s3
	blez	$a0, .LBB28_39
# %bb.35:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB28_27 Depth=1
	move	$s3, $zero
	move	$s2, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB28_36:                              # %.lr.ph
                                        #   Parent Loop BB28_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 16
	ldx.d	$s6, $a0, $s3
	ld.d	$a0, $s6, 32
	ld.d	$a1, $sp, 128
.Ltmp164:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKcS0_)
	jirl	$ra, $ra, 0
.Ltmp165:                               # EH_LABEL
# %bb.37:                               #   in Loop: Header=BB28_36 Depth=2
	beqz	$a0, .LBB28_41
# %bb.38:                               #   in Loop: Header=BB28_36 Depth=2
	ld.w	$a0, $fp, 12
	addi.d	$s5, $s5, 1
	addi.w	$s2, $s2, 1
	addi.d	$s3, $s3, 8
	blt	$s5, $a0, .LBB28_36
	b	.LBB28_40
.LBB28_39:                              #   in Loop: Header=BB28_27 Depth=1
	move	$s2, $zero
.LBB28_40:                              # %.loopexit169
                                        #   in Loop: Header=BB28_27 Depth=1
	move	$s3, $s8
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	bne	$s2, $a0, .LBB28_42
	b	.LBB28_57
.LBB28_41:                              #   in Loop: Header=BB28_27 Depth=1
	ld.d	$a0, $s6, 88
	ld.d	$a1, $sp, 184
	sub.d	$a0, $a0, $a1
	st.d	$a0, $s0, 88
	ld.w	$a0, $fp, 12
	move	$s3, $s8
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	beq	$s2, $a0, .LBB28_57
	.p2align	4, , 16
.LBB28_42:                              #   in Loop: Header=BB28_27 Depth=1
	ld.d	$a1, $fp, 16
	ld.d	$a2, $s0, 88
	ld.d	$a3, $sp, 184
	move	$a4, $zero
	.p2align	4, , 16
.LBB28_43:                              #   Parent Loop BB28_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a5, $a0, 0
	bge	$a4, $a5, .LBB28_57
# %bb.44:                               #   in Loop: Header=BB28_43 Depth=2
	add.d	$a5, $a0, $a4
	bstrpick.d	$a5, $a5, 31, 1
	slli.d	$a6, $a5, 3
	ldx.d	$s6, $a1, $a6
	ld.d	$a6, $s6, 88
	sub.d	$a6, $a6, $a2
	sltu	$a7, $a3, $a6
	addi.w	$t0, $a5, 1
	maskeqz	$a5, $a5, $a7
	masknez	$a0, $a0, $a7
	or	$a0, $a5, $a0
	sltu	$a5, $a6, $a3
	maskeqz	$a7, $t0, $a5
	masknez	$a4, $a4, $a5
	or	$a4, $a7, $a4
	bne	$a3, $a6, .LBB28_43
# %bb.45:                               #   in Loop: Header=BB28_27 Depth=1
	ld.h	$a0, $sp, 176
	st.h	$a0, $s6, 80
	addi.d	$s5, $s6, 120
.Ltmp167:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp168:                               # EH_LABEL
# %bb.46:                               # %.noexc144
                                        #   in Loop: Header=BB28_27 Depth=1
.Ltmp169:                               # EH_LABEL
	move	$a0, $s5
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_)
	jirl	$ra, $ra, 0
.Ltmp170:                               # EH_LABEL
# %bb.47:                               # %_ZN8NArchive4NZip11CExtraBlockaSERKS1_.exit
                                        #   in Loop: Header=BB28_27 Depth=1
	ld.hu	$a2, $s6, 4
	ld.hu	$a0, $sp, 100
	bne	$a2, $a0, .LBB28_57
# %bb.48:                               #   in Loop: Header=BB28_27 Depth=1
	ld.hu	$a0, $s6, 2
	ld.hu	$a1, $sp, 98
	beq	$a0, $a1, .LBB28_50
# %bb.49:                               # %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit
                                        #   in Loop: Header=BB28_27 Depth=1
	addi.d	$a3, $a2, -8
	sltui	$a3, $a3, 1
	sltui	$a2, $a2, 7
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	masknez	$a4, $a4, $a2
	lu12i.w	$a6, 7
	ori	$a5, $a6, 4095
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	masknez	$a2, $a2, $a3
	ori	$a4, $a6, 4089
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	xor	$a0, $a1, $a0
	and	$a0, $a2, $a0
	bnez	$a0, .LBB28_57
.LBB28_50:                              # %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread
                                        #   in Loop: Header=BB28_27 Depth=1
	ld.w	$a0, $s6, 12
	ld.w	$a1, $sp, 108
	bne	$a0, $a1, .LBB28_57
# %bb.51:                               #   in Loop: Header=BB28_27 Depth=1
	ld.w	$a0, $s6, 40
	ld.w	$a1, $sp, 136
	bne	$a0, $a1, .LBB28_57
# %bb.52:                               #   in Loop: Header=BB28_27 Depth=1
	ld.d	$a0, $s6, 16
	ld.d	$a1, $sp, 112
	bne	$a0, $a1, .LBB28_57
# %bb.53:                               #   in Loop: Header=BB28_27 Depth=1
	ld.d	$a0, $s6, 24
	ld.d	$a1, $sp, 120
	bne	$a0, $a1, .LBB28_57
# %bb.54:                               #   in Loop: Header=BB28_27 Depth=1
	addi.d	$a0, $sp, 96
	beq	$a0, $s6, .LBB28_87
# %bb.55:                               #   in Loop: Header=BB28_27 Depth=1
	ld.d	$a0, $s6, 32
	st.w	$zero, $s6, 40
	st.b	$zero, $a0, 0
	ld.w	$a0, $sp, 136
	ld.w	$s2, $s6, 44
	addi.w	$a0, $a0, 1
	bne	$a0, $s2, .LBB28_65
# %bb.56:                               # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i
                                        #   in Loop: Header=BB28_27 Depth=1
	ld.d	$s5, $s6, 32
	b	.LBB28_84
	.p2align	4, , 16
.LBB28_57:                              #   in Loop: Header=BB28_27 Depth=1
	move	$s2, $zero
	ori	$s1, $zero, 1
	addi.d	$s5, $sp, 216
	ld.d	$a0, $sp, 264
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a1, $sp, 248
	beqz	$a0, .LBB28_59
.LBB28_58:                              #   in Loop: Header=BB28_27 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB28_59:                              # %_ZN7CBufferIhED2Ev.exit.i156
                                        #   in Loop: Header=BB28_27 Depth=1
	st.d	$s7, $sp, 216
.Ltmp181:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp182:                               # EH_LABEL
# %bb.60:                               # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i157
                                        #   in Loop: Header=BB28_27 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	st.d	$s7, $sp, 144
.Ltmp184:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp185:                               # EH_LABEL
# %bb.61:                               # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i158
                                        #   in Loop: Header=BB28_27 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	beqz	$a0, .LBB28_63
# %bb.62:                               #   in Loop: Header=BB28_27 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB28_63:                              # %_ZN8NArchive4NZip5CItemD2Ev.exit159
                                        #   in Loop: Header=BB28_27 Depth=1
	beqz	$s2, .LBB28_104
# %bb.64:                               #   in Loop: Header=BB28_27 Depth=1
	ld.w	$a0, $s8, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s8, 0
	ld.w	$a1, $fp, 12
	addi.w	$s4, $s4, 1
	blt	$s4, $a1, .LBB28_27
	b	.LBB28_98
.LBB28_65:                              #   in Loop: Header=BB28_27 Depth=1
.Ltmp171:                               # EH_LABEL
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp172:                               # EH_LABEL
# %bb.66:                               # %.noexc147
                                        #   in Loop: Header=BB28_27 Depth=1
	move	$s5, $a0
	ld.w	$a1, $s6, 40
	blez	$s2, .LBB28_83
# %bb.67:                               # %.preheader.i.i
                                        #   in Loop: Header=BB28_27 Depth=1
	ld.d	$a0, $s6, 32
	blez	$a1, .LBB28_75
# %bb.68:                               # %iter.check
                                        #   in Loop: Header=BB28_27 Depth=1
	move	$a2, $zero
	ori	$a3, $zero, 16
	bltu	$a1, $a3, .LBB28_80
# %bb.69:                               # %iter.check
                                        #   in Loop: Header=BB28_27 Depth=1
	sub.d	$a3, $s5, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB28_80
# %bb.70:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB28_27 Depth=1
	ori	$a2, $zero, 32
	bgeu	$a1, $a2, .LBB28_76
# %bb.71:                               #   in Loop: Header=BB28_27 Depth=1
	move	$a2, $zero
.LBB28_72:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB28_27 Depth=1
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s5, $a5
	add.d	$a5, $a0, $a5
.LBB28_73:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB28_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB28_73
# %bb.74:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB28_27 Depth=1
	bne	$a2, $a1, .LBB28_80
	b	.LBB28_82
.LBB28_75:                              # %._crit_edge.i.i
                                        #   in Loop: Header=BB28_27 Depth=1
	bnez	$a0, .LBB28_82
	b	.LBB28_83
.LBB28_76:                              # %vector.ph
                                        #   in Loop: Header=BB28_27 Depth=1
	andi	$a3, $a1, 16
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a4, $s5, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a2
.LBB28_77:                              # %vector.body
                                        #   Parent Loop BB28_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB28_77
# %bb.78:                               # %middle.block
                                        #   in Loop: Header=BB28_27 Depth=1
	beq	$a2, $a1, .LBB28_82
# %bb.79:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB28_27 Depth=1
	bnez	$a3, .LBB28_72
.LBB28_80:                              # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB28_27 Depth=1
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s5, $a2
	add.d	$a2, $a0, $a2
.LBB28_81:                              # %vec.epilog.scalar.ph
                                        #   Parent Loop BB28_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB28_81
.LBB28_82:                              # %._crit_edge.thread.i.i
                                        #   in Loop: Header=BB28_27 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 40
.LBB28_83:                              #   in Loop: Header=BB28_27 Depth=1
	st.d	$s5, $s6, 32
	stx.b	$zero, $s5, $a1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $s6, 44
.LBB28_84:                              # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
                                        #   in Loop: Header=BB28_27 Depth=1
	ld.d	$a0, $sp, 128
	.p2align	4, , 16
.LBB28_85:                              #   Parent Loop BB28_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s5, 1
	st.b	$a1, $s5, 0
	move	$s5, $a2
	bnez	$a1, .LBB28_85
# %bb.86:                               # %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i
                                        #   in Loop: Header=BB28_27 Depth=1
	ld.w	$a0, $sp, 136
	st.w	$a0, $s6, 40
.LBB28_87:                              # %_ZN11CStringBaseIcEaSERKS0_.exit
                                        #   in Loop: Header=BB28_27 Depth=1
	ld.h	$a0, $sp, 178
	st.h	$a0, $s6, 82
	ld.w	$a1, $sp, 180
	ld.d	$a0, $s6, 168
	st.w	$a1, $s6, 84
	beqz	$a0, .LBB28_89
# %bb.88:                               #   in Loop: Header=BB28_27 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB28_89:                              # %_ZN7CBufferIhE4FreeEv.exit.i
                                        #   in Loop: Header=BB28_27 Depth=1
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $s6, 160
	ld.d	$s5, $sp, 256
	beqz	$s5, .LBB28_92
# %bb.90:                               # %_ZN7CBufferIhE11SetCapacityEm.exit.i
                                        #   in Loop: Header=BB28_27 Depth=1
.Ltmp173:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp174:                               # EH_LABEL
# %bb.91:                               # %.noexc150
                                        #   in Loop: Header=BB28_27 Depth=1
	st.d	$a0, $s6, 168
	st.d	$s5, $s6, 160
	ld.d	$a2, $sp, 256
	ld.d	$a1, $sp, 264
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB28_92:                              # %_ZN7CBufferIhEaSERKS0_.exit
                                        #   in Loop: Header=BB28_27 Depth=1
	ld.b	$a0, $sp, 273
	st.b	$a0, $s6, 177
.Ltmp175:                               # EH_LABEL
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 4
	addi.d	$a3, $sp, 292
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
.Ltmp176:                               # EH_LABEL
# %bb.93:                               # %.noexc153
                                        #   in Loop: Header=BB28_27 Depth=1
	bnez	$a0, .LBB28_108
# %bb.94:                               # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i152
                                        #   in Loop: Header=BB28_27 Depth=1
	ld.w	$a0, $sp, 292
	ori	$a1, $zero, 1
	addi.d	$s5, $sp, 216
	ori	$a2, $zero, 4
	bne	$a0, $a2, .LBB28_96
# %bb.95:                               #   in Loop: Header=BB28_27 Depth=1
	ld.w	$a1, $sp, 288
	st.w	$a1, $s0, 8
	move	$a1, $s1
.LBB28_96:                              #   in Loop: Header=BB28_27 Depth=1
	addi.d	$a0, $a0, -4
	sltui	$s2, $a0, 1
	move	$s1, $a1
	ld.d	$a0, $sp, 264
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a1, $sp, 248
	bnez	$a0, .LBB28_58
	b	.LBB28_59
.LBB28_97:                              # %.._crit_edge.loopexit_crit_edge
	ld.w	$a1, $fp, 12
.LBB28_98:                              # %._crit_edge
	blez	$a1, .LBB28_101
# %bb.99:                               # %.lr.ph219
	ld.d	$a0, $s0, 88
	ld.d	$a2, $fp, 16
	.p2align	4, , 16
.LBB28_100:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	ld.d	$a4, $a3, 88
	sub.d	$a4, $a4, $a0
	st.d	$a4, $a3, 88
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB28_100
.LBB28_101:
	move	$s6, $zero
.LBB28_102:                             # %.loopexit
	addi.w	$a0, $s6, 0
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.LBB28_103:
	ori	$s6, $zero, 1
	b	.LBB28_102
.LBB28_104:
	move	$s6, $s1
	b	.LBB28_102
.LBB28_105:
	move	$s6, $a0
	b	.LBB28_102
.LBB28_106:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	st.w	$a1, $a0, 0
.Ltmp152:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp153:                               # EH_LABEL
# %bb.107:                              # %.noexc142
.LBB28_108:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	st.w	$a1, $a0, 0
.Ltmp178:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp179:                               # EH_LABEL
# %bb.109:                              # %.noexc154
.LBB28_110:                             # %.loopexit.split-lp
.Ltmp180:                               # EH_LABEL
	b	.LBB28_123
.LBB28_111:                             # %.loopexit171
.Ltmp177:                               # EH_LABEL
	b	.LBB28_123
.LBB28_112:
.Ltmp183:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB28_113:
.Ltmp163:                               # EH_LABEL
	b	.LBB28_123
.LBB28_114:
.Ltmp186:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB28_115:
.Ltmp148:                               # EH_LABEL
	b	.LBB28_123
.LBB28_116:                             # %.loopexit.split-lp173
.Ltmp154:                               # EH_LABEL
	b	.LBB28_123
.LBB28_117:
.Ltmp157:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB28_118:
.Ltmp143:                               # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 192
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip5CItemD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB28_119:
.Ltmp136:                               # EH_LABEL
	b	.LBB28_123
.LBB28_120:
.Ltmp160:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB28_121:
.Ltmp166:                               # EH_LABEL
	b	.LBB28_123
.LBB28_122:                             # %.loopexit172
.Ltmp151:                               # EH_LABEL
.LBB28_123:                             # %.body
	move	$fp, $a0
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip5CItemD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end28:
	.size	_ZN8NArchive4NZip10CInArchive15ReadLocalsAndCdER13CObjectVectorINS0_7CItemExEEPNS0_13CProgressVirtERyRi, .Lfunc_end28-_ZN8NArchive4NZip10CInArchive15ReadLocalsAndCdER13CObjectVectorINS0_7CItemExEEPNS0_13CProgressVirtERyRi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table28:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp134-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp134
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp135-.Ltmp134              #   Call between .Ltmp134 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin8         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp140-.Ltmp137              #   Call between .Ltmp137 and .Ltmp140
	.uleb128 .Ltmp151-.Lfunc_begin8         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin8         #     jumps to .Ltmp143
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp151-.Lfunc_begin8         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Ltmp147-.Ltmp146              #   Call between .Ltmp146 and .Ltmp147
	.uleb128 .Ltmp148-.Lfunc_begin8         #     jumps to .Ltmp148
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin8         # >> Call Site 7 <<
	.uleb128 .Ltmp150-.Ltmp149              #   Call between .Ltmp149 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin8         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin8         # >> Call Site 8 <<
	.uleb128 .Ltmp155-.Ltmp150              #   Call between .Ltmp150 and .Ltmp155
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin8         # >> Call Site 9 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.uleb128 .Ltmp157-.Lfunc_begin8         #     jumps to .Ltmp157
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp156-.Lfunc_begin8         # >> Call Site 10 <<
	.uleb128 .Ltmp158-.Ltmp156              #   Call between .Ltmp156 and .Ltmp158
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin8         # >> Call Site 11 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp160-.Lfunc_begin8         #     jumps to .Ltmp160
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp159-.Lfunc_begin8         # >> Call Site 12 <<
	.uleb128 .Ltmp161-.Ltmp159              #   Call between .Ltmp159 and .Ltmp161
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin8         # >> Call Site 13 <<
	.uleb128 .Ltmp162-.Ltmp161              #   Call between .Ltmp161 and .Ltmp162
	.uleb128 .Ltmp163-.Lfunc_begin8         #     jumps to .Ltmp163
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp164-.Lfunc_begin8         # >> Call Site 14 <<
	.uleb128 .Ltmp165-.Ltmp164              #   Call between .Ltmp164 and .Ltmp165
	.uleb128 .Ltmp166-.Lfunc_begin8         #     jumps to .Ltmp166
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp167-.Lfunc_begin8         # >> Call Site 15 <<
	.uleb128 .Ltmp170-.Ltmp167              #   Call between .Ltmp167 and .Ltmp170
	.uleb128 .Ltmp177-.Lfunc_begin8         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin8         # >> Call Site 16 <<
	.uleb128 .Ltmp181-.Ltmp170              #   Call between .Ltmp170 and .Ltmp181
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin8         # >> Call Site 17 <<
	.uleb128 .Ltmp182-.Ltmp181              #   Call between .Ltmp181 and .Ltmp182
	.uleb128 .Ltmp183-.Lfunc_begin8         #     jumps to .Ltmp183
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp182-.Lfunc_begin8         # >> Call Site 18 <<
	.uleb128 .Ltmp184-.Ltmp182              #   Call between .Ltmp182 and .Ltmp184
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin8         # >> Call Site 19 <<
	.uleb128 .Ltmp185-.Ltmp184              #   Call between .Ltmp184 and .Ltmp185
	.uleb128 .Ltmp186-.Lfunc_begin8         #     jumps to .Ltmp186
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp185-.Lfunc_begin8         # >> Call Site 20 <<
	.uleb128 .Ltmp171-.Ltmp185              #   Call between .Ltmp185 and .Ltmp171
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin8         # >> Call Site 21 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp177-.Lfunc_begin8         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin8         # >> Call Site 22 <<
	.uleb128 .Ltmp173-.Ltmp172              #   Call between .Ltmp172 and .Ltmp173
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp173-.Lfunc_begin8         # >> Call Site 23 <<
	.uleb128 .Ltmp174-.Ltmp173              #   Call between .Ltmp173 and .Ltmp174
	.uleb128 .Ltmp177-.Lfunc_begin8         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin8         # >> Call Site 24 <<
	.uleb128 .Ltmp175-.Ltmp174              #   Call between .Ltmp174 and .Ltmp175
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin8         # >> Call Site 25 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp177-.Lfunc_begin8         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp176-.Lfunc_begin8         # >> Call Site 26 <<
	.uleb128 .Ltmp152-.Ltmp176              #   Call between .Ltmp176 and .Ltmp152
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin8         # >> Call Site 27 <<
	.uleb128 .Ltmp153-.Ltmp152              #   Call between .Ltmp152 and .Ltmp153
	.uleb128 .Ltmp154-.Lfunc_begin8         #     jumps to .Ltmp154
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin8         # >> Call Site 28 <<
	.uleb128 .Ltmp178-.Ltmp153              #   Call between .Ltmp153 and .Ltmp178
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin8         # >> Call Site 29 <<
	.uleb128 .Ltmp179-.Ltmp178              #   Call between .Ltmp178 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin8         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp179-.Lfunc_begin8         # >> Call Site 30 <<
	.uleb128 .Lfunc_end28-.Ltmp179          #   Call between .Ltmp179 and .Lfunc_end28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive4NZip4CEcd5ParseEPKh # -- Begin function _ZN8NArchive4NZip4CEcd5ParseEPKh
	.p2align	5
	.type	_ZN8NArchive4NZip4CEcd5ParseEPKh,@function
_ZN8NArchive4NZip4CEcd5ParseEPKh:       # @_ZN8NArchive4NZip4CEcd5ParseEPKh
# %bb.0:
	ld.h	$a2, $a1, 0
	st.h	$a2, $a0, 0
	ld.h	$a2, $a1, 2
	st.h	$a2, $a0, 2
	ld.h	$a2, $a1, 4
	st.h	$a2, $a0, 4
	ld.h	$a2, $a1, 6
	st.h	$a2, $a0, 6
	ld.w	$a2, $a1, 8
	st.w	$a2, $a0, 8
	ld.w	$a2, $a1, 12
	st.w	$a2, $a0, 12
	ld.h	$a1, $a1, 16
	st.h	$a1, $a0, 16
	ret
.Lfunc_end29:
	.size	_ZN8NArchive4NZip4CEcd5ParseEPKh, .Lfunc_end29-_ZN8NArchive4NZip4CEcd5ParseEPKh
                                        # -- End function
	.globl	_ZN8NArchive4NZip6CEcd645ParseEPKh # -- Begin function _ZN8NArchive4NZip6CEcd645ParseEPKh
	.p2align	5
	.type	_ZN8NArchive4NZip6CEcd645ParseEPKh,@function
_ZN8NArchive4NZip6CEcd645ParseEPKh:     # @_ZN8NArchive4NZip6CEcd645ParseEPKh
# %bb.0:
	ld.h	$a2, $a1, 0
	st.h	$a2, $a0, 0
	ld.h	$a2, $a1, 2
	st.h	$a2, $a0, 2
	ld.w	$a2, $a1, 4
	st.w	$a2, $a0, 4
	ld.w	$a2, $a1, 8
	st.w	$a2, $a0, 8
	ld.d	$a2, $a1, 12
	st.d	$a2, $a0, 16
	ld.d	$a2, $a1, 20
	st.d	$a2, $a0, 24
	ld.d	$a2, $a1, 28
	st.d	$a2, $a0, 32
	ld.d	$a1, $a1, 36
	st.d	$a1, $a0, 40
	ret
.Lfunc_end30:
	.size	_ZN8NArchive4NZip6CEcd645ParseEPKh, .Lfunc_end30-_ZN8NArchive4NZip6CEcd645ParseEPKh
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN8NArchive4NZip10CInArchive11ReadHeadersER13CObjectVectorINS0_7CItemExEEPNS0_13CProgressVirtE
.LCPI31_0:
	.byte	8                               # 0x8
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI31_1:
	.byte	9                               # 0x9
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	1                               # 0x1
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI31_2:
	.byte	10                              # 0xa
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	2                               # 0x2
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI31_3:
	.byte	11                              # 0xb
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	3                               # 0x3
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI31_4:
	.byte	12                              # 0xc
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	4                               # 0x4
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI31_5:
	.byte	13                              # 0xd
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	5                               # 0x5
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI31_6:
	.byte	14                              # 0xe
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	6                               # 0x6
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
	.text
	.globl	_ZN8NArchive4NZip10CInArchive11ReadHeadersER13CObjectVectorINS0_7CItemExEEPNS0_13CProgressVirtE
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive11ReadHeadersER13CObjectVectorINS0_7CItemExEEPNS0_13CProgressVirtE,@function
_ZN8NArchive4NZip10CInArchive11ReadHeadersER13CObjectVectorINS0_7CItemExEEPNS0_13CProgressVirtE: # @_ZN8NArchive4NZip10CInArchive11ReadHeadersER13CObjectVectorINS0_7CItemExEEPNS0_13CProgressVirtE
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:
	addi.d	$sp, $sp, -336
	.cfi_def_cfa_offset 336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
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
	move	$s1, $a1
	move	$fp, $a0
	st.b	$zero, $a0, 136
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp187:                               # EH_LABEL
	addi.d	$a2, $sp, 224
	addi.d	$a3, $sp, 232
	move	$a0, $fp
	move	$a1, $s1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive6ReadCdER13CObjectVectorINS0_7CItemExEERyS6_PNS0_13CProgressVirtE)
	jirl	$ra, $ra, 0
.Ltmp188:                               # EH_LABEL
# %bb.1:
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB31_44
# %bb.2:
	ld.w	$a2, $s1, 12
	addi.d	$s3, $s1, 12
	st.w	$a2, $sp, 220
	bne	$a0, $a1, .LBB31_9
.LBB31_3:
	ld.d	$a0, $fp, 0
	st.b	$zero, $fp, 32
	st.d	$zero, $fp, 88
	ld.d	$a2, $a0, 0
	ld.d	$a1, $fp, 96
	ld.d	$a4, $a2, 48
	addi.d	$a3, $fp, 24
	move	$a2, $zero
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB31_44
# %bb.4:
	ld.d	$a1, $fp, 24
	ld.d	$a2, $fp, 96
	ori	$a0, $zero, 1
	bne	$a1, $a2, .LBB31_44
# %bb.5:
	addi.d	$a1, $sp, 244
	ori	$a2, $zero, 4
	addi.d	$a3, $sp, 176
	ori	$s2, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB31_45
# %bb.6:                                # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
	ld.w	$a0, $sp, 176
	bne	$a0, $s2, .LBB31_31
# %bb.7:
	ld.w	$a0, $sp, 244
	st.w	$a0, $fp, 8
	addi.d	$a3, $sp, 224
	addi.d	$a4, $sp, 220
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive15ReadLocalsAndCdER13CObjectVectorINS0_7CItemExEEPNS0_13CProgressVirtERyRi)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB31_44
# %bb.8:
	ld.d	$a0, $fp, 24
	ld.d	$a1, $sp, 224
	ld.d	$a2, $fp, 88
	addi.d	$a3, $a0, -4
	sub.d	$a0, $a3, $a1
	st.d	$a0, $sp, 232
	sub.d	$a0, $a1, $a2
	st.d	$a0, $sp, 224
	b	.LBB31_10
.LBB31_9:                               # %._crit_edge
	ld.d	$a0, $fp, 24
	ld.d	$a2, $fp, 88
	addi.d	$a3, $a0, -4
.LBB31_10:
	ld.w	$s4, $fp, 8
	pcalau12i	$a0, %got_pc_hi20(_ZN8NArchive4NZip10NSignature21kZip64EndOfCentralDirE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8NArchive4NZip10NSignature21kZip64EndOfCentralDirE)
	ld.w	$s6, $a0, 0
	beq	$s4, $s6, .LBB31_16
# %bb.11:
	move	$s2, $zero
	move	$s5, $zero
	vrepli.b	$vr0, 0
	move	$a1, $s4
	pcalau12i	$a0, %got_pc_hi20(_ZN8NArchive4NZip10NSignature28kZip64EndOfCentralDirLocatorE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8NArchive4NZip10NSignature28kZip64EndOfCentralDirLocatorE)
	ld.w	$a0, $a0, 0
	bne	$a1, $a0, .LBB31_33
.LBB31_12:
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	sub.d	$s1, $a3, $a2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive10ReadUInt64Ev)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	bne	$s1, $s0, .LBB31_44
# %bb.13:
	addi.d	$a1, $sp, 244
	ori	$a2, $zero, 4
	addi.d	$a3, $sp, 176
	ori	$s0, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB31_45
# %bb.14:                               # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i101
	ld.w	$a0, $sp, 176
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	bne	$a0, $s0, .LBB31_31
# %bb.15:                               # %.thread131
	ld.w	$a1, $sp, 244
	st.w	$a1, $fp, 8
	b	.LBB31_33
.LBB31_16:
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 136
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive10ReadUInt64Ev)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 44
	addi.d	$a3, $sp, 244
	ori	$s1, $zero, 44
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB31_45
# %bb.17:                               # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i96
	st.d	$s6, $sp, 128                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 244
	bne	$a0, $s1, .LBB31_47
# %bb.18:                               # %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit
	ld.bu	$a0, $sp, 180
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.bu	$s3, $sp, 181
	ld.bu	$a0, $sp, 182
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.bu	$s8, $sp, 183
	ld.bu	$s6, $sp, 184
	ld.bu	$s7, $sp, 185
	ld.bu	$s5, $sp, 186
	ld.bu	$s1, $sp, 187
	vld	$vr0, $sp, 188
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	ld.bu	$a0, $sp, 208
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.bu	$a0, $sp, 209
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.bu	$a0, $sp, 210
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.b	$a0, $sp, 211
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.wu	$a0, $sp, 204
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.bu	$a0, $sp, 216
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.bu	$a0, $sp, 217
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.bu	$a0, $sp, 218
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.b	$a0, $sp, 219
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.wu	$a0, $sp, 212
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$s0, $s0, -44
	beqz	$s0, .LBB31_23
# %bb.19:                               # %.lr.ph.i.preheader
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB31_20:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 240
	ori	$a2, $zero, 1
	addi.d	$a3, $sp, 244
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB31_45
# %bb.21:                               # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i.i
                                        #   in Loop: Header=BB31_20 Depth=1
	ld.w	$a0, $sp, 244
	bne	$a0, $s2, .LBB31_47
# %bb.22:                               # %_ZN8NArchive4NZip10CInArchive8ReadByteEv.exit.i
                                        #   in Loop: Header=BB31_20 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB31_20
.LBB31_23:                              # %_ZN8NArchive4NZip10CInArchive4SkipEy.exit
	addi.d	$a1, $sp, 240
	ori	$a2, $zero, 4
	addi.d	$a3, $sp, 244
	ori	$s0, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB31_45
# %bb.24:                               # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i98
	ld.w	$a0, $sp, 244
	bne	$a0, $s0, .LBB31_31
# %bb.25:
	ld.w	$a1, $sp, 240
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	or	$a0, $s3, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	or	$a0, $a0, $a2
	or	$a0, $a0, $s8
	or	$a2, $s7, $s6
	or	$a2, $a2, $s5
	or	$a2, $a2, $s1
	or	$a0, $a0, $a2
	st.w	$a1, $fp, 8
	bnez	$a0, .LBB31_48
# %bb.26:
	pcalau12i	$a0, %pc_hi20(.LCPI31_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI31_0)
	pcalau12i	$a0, %pc_hi20(.LCPI31_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI31_1)
	vrepli.b	$vr2, 0
	vld	$vr8, $sp, 96                   # 16-byte Folded Reload
	vshuf.b	$vr0, $vr2, $vr8, $vr0
	vshuf.b	$vr1, $vr2, $vr8, $vr1
	pcalau12i	$a0, %pc_hi20(.LCPI31_2)
	vld	$vr3, $a0, %pc_lo12(.LCPI31_2)
	pcalau12i	$a0, %pc_hi20(.LCPI31_3)
	vld	$vr4, $a0, %pc_lo12(.LCPI31_3)
	vslli.d	$vr1, $vr1, 8
	vshuf.b	$vr3, $vr2, $vr8, $vr3
	vslli.d	$vr3, $vr3, 16
	vshuf.b	$vr4, $vr2, $vr8, $vr4
	pcalau12i	$a0, %pc_hi20(.LCPI31_4)
	vld	$vr5, $a0, %pc_lo12(.LCPI31_4)
	pcalau12i	$a0, %pc_hi20(.LCPI31_5)
	vld	$vr6, $a0, %pc_lo12(.LCPI31_5)
	pcalau12i	$a0, %pc_hi20(.LCPI31_6)
	vld	$vr7, $a0, %pc_lo12(.LCPI31_6)
	vslli.d	$vr4, $vr4, 24
	vshuf.b	$vr5, $vr2, $vr8, $vr5
	vshuf.b	$vr6, $vr2, $vr8, $vr6
	vshuf.b	$vr2, $vr2, $vr8, $vr7
	vbsrl.v	$vr7, $vr8, 15
	vbsll.v	$vr8, $vr8, 1
	vor.v	$vr7, $vr8, $vr7
	vslli.d	$vr7, $vr7, 56
	vslli.d	$vr2, $vr2, 48
	vslli.d	$vr6, $vr6, 40
	vslli.d	$vr5, $vr5, 32
	vor.v	$vr0, $vr1, $vr0
	vor.v	$vr0, $vr0, $vr3
	vor.v	$vr0, $vr0, $vr4
	vor.v	$vr0, $vr0, $vr5
	vor.v	$vr0, $vr0, $vr6
	ld.w	$a0, $sp, 220
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr0, $vr0, $vr7
	vpickve2gr.d	$a2, $vr0, 1
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB31_31
# %bb.27:
	vpickve2gr.d	$a2, $vr0, 0
	bne	$a2, $a0, .LBB31_31
# %bb.28:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 56
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 48
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	slli.d	$a3, $a3, 40
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	slli.d	$a4, $a4, 32
	or	$a3, $a4, $a3
	ld.d	$a4, $sp, 232
	or	$a2, $a3, $a2
	or	$a0, $a2, $a0
	or	$a0, $a0, $s5
	bne	$a0, $a4, .LBB31_31
# %bb.29:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 56
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 48
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a3, $a3, 40
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a4, $a4, 32
	or	$a3, $a4, $a3
	ld.d	$a4, $sp, 224
	or	$a2, $a3, $a2
	or	$a0, $a2, $a0
	or	$a0, $a0, $s2
	beq	$a0, $a4, .LBB31_32
# %bb.30:
	ld.w	$a0, $s3, 0
	beqz	$a0, .LBB31_32
.LBB31_31:
	ori	$a0, $zero, 1
	b	.LBB31_44
.LBB31_32:
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	pcalau12i	$a0, %got_pc_hi20(_ZN8NArchive4NZip10NSignature28kZip64EndOfCentralDirLocatorE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8NArchive4NZip10NSignature28kZip64EndOfCentralDirLocatorE)
	ld.w	$a0, $a0, 0
	beq	$a1, $a0, .LBB31_12
.LBB31_33:
	pcalau12i	$a0, %got_pc_hi20(_ZN8NArchive4NZip10NSignature16kEndOfCentralDirE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8NArchive4NZip10NSignature16kEndOfCentralDirE)
	ld.w	$a2, $a0, 0
	ori	$a0, $zero, 1
	bne	$a1, $a2, .LBB31_44
# %bb.34:
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 18
	addi.d	$a3, $sp, 244
	ori	$s0, $zero, 18
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB31_45
# %bb.35:                               # %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i104
	st.d	$s5, $sp, 168                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 244
	bne	$a0, $s0, .LBB31_47
# %bb.36:                               # %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit105
	xor	$a0, $s4, $s6
	sltu	$s0, $zero, $a0
	ld.hu	$s5, $sp, 176
	ld.hu	$s4, $sp, 178
	ld.bu	$s2, $sp, 180
	ld.bu	$s3, $sp, 181
	ld.bu	$s7, $sp, 182
	ld.bu	$s8, $sp, 183
	ld.bu	$a0, $sp, 184
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.bu	$a0, $sp, 185
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.bu	$a0, $sp, 186
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.bu	$a0, $sp, 187
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 188
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.hu	$a2, $sp, 192
	lu12i.w	$a0, 15
	ori	$s1, $a0, 4095
	xor	$a0, $s5, $s1
	sltu	$a0, $zero, $a0
	or	$s6, $s0, $a0
	addi.d	$a1, $fp, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CInArchive10ReadBufferER7CBufferIhEj)
	jirl	$ra, $ra, 0
	sltu	$a0, $zero, $s5
	and	$a0, $s6, $a0
	bnez	$a0, .LBB31_48
# %bb.37:                               # %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit105
	xor	$a0, $s4, $s1
	sltu	$a0, $zero, $a0
	or	$a0, $s0, $a0
	sltu	$a1, $zero, $s4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB31_48
# %bb.38:
	slli.d	$a0, $s3, 8
	or	$a0, $a0, $s2
	xor	$a1, $a0, $s1
	sltu	$a1, $zero, $a1
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vpickve2gr.d	$a2, $vr0, 1
	maskeqz	$a3, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	ld.wu	$s2, $sp, 220
	masknez	$a0, $a0, $s0
	or	$a0, $a3, $a0
	bstrpick.d	$a2, $a0, 15, 0
	bstrpick.d	$a1, $s2, 15, 0
	ori	$a0, $zero, 1
	bne	$a2, $a1, .LBB31_44
# %bb.39:
	slli.d	$a2, $s8, 8
	or	$a2, $a2, $s7
	xor	$a3, $a2, $s1
	sltu	$a3, $zero, $a3
	vpickve2gr.d	$a4, $vr0, 0
	maskeqz	$a5, $a2, $s0
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a4, $a3
	or	$a2, $a2, $a3
	masknez	$a2, $a2, $s0
	or	$a2, $a5, $a2
	bstrpick.d	$a2, $a2, 15, 0
	bne	$a2, $a1, .LBB31_44
# %bb.40:
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	slli.w	$a1, $a1, 8
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	slli.w	$a2, $a2, 16
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	slli.w	$a2, $a2, 24
	or	$a1, $a1, $a2
	addi.d	$a2, $a1, 1
	sltu	$a2, $zero, $a2
	maskeqz	$a3, $a1, $s0
	maskeqz	$a1, $a1, $a2
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	masknez	$a2, $a4, $a2
	or	$a1, $a1, $a2
	ld.w	$a2, $sp, 232
	masknez	$a1, $a1, $s0
	or	$a1, $a3, $a1
	addi.w	$a1, $a1, 0
	bne	$a1, $a2, .LBB31_44
# %bb.41:
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a1, $a4, 1
	sltu	$a1, $zero, $a1
	or	$a1, $s0, $a1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	masknez	$a2, $a2, $a1
	ld.w	$a3, $sp, 224
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
	addi.w	$a1, $a1, 0
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	beq	$a1, $a3, .LBB31_43
# %bb.42:
	ld.w	$a1, $s0, 0
	bnez	$a1, .LBB31_44
.LBB31_43:
	st.b	$zero, $fp, 32
	addi.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(_ZN9CInBuffer4FreeEv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	move	$a0, $zero
	addi.w	$a2, $s2, 0
	ld.d	$a3, $fp, 24
	xor	$a1, $a2, $a1
	sltui	$a1, $a1, 1
	st.b	$a1, $fp, 137
	st.d	$a3, $fp, 104
.LBB31_44:
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.LBB31_45:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
.LBB31_46:
	st.w	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.LBB31_47:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive4NZip19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.LBB31_48:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 5
	b	.LBB31_46
.LBB31_49:
.Ltmp189:                               # EH_LABEL
	addi.w	$a1, $a1, 0
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB31_51
# %bb.50:                               # %.thread123
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 12
	addi.d	$s3, $s1, 12
	st.w	$a0, $sp, 220
	b	.LBB31_3
.LBB31_51:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end31:
	.size	_ZN8NArchive4NZip10CInArchive11ReadHeadersER13CObjectVectorINS0_7CItemExEEPNS0_13CProgressVirtE, .Lfunc_end31-_ZN8NArchive4NZip10CInArchive11ReadHeadersER13CObjectVectorINS0_7CItemExEEPNS0_13CProgressVirtE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table31:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp187-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp187
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp187-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp188-.Ltmp187              #   Call between .Ltmp187 and .Ltmp188
	.uleb128 .Ltmp189-.Lfunc_begin9         #     jumps to .Ltmp189
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp188-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Lfunc_end31-.Ltmp188          #   Call between .Ltmp188 and .Lfunc_end31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	0                               # >> Action Record 1 <<
                                        #   Cleanup
	.byte	0                               #   No further actions
	.byte	1                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 1
	.byte	125                             #   Continue to action 1
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp190:                               # TypeInfo 1
	.word	.L_ZTIN8NArchive4NZip19CInArchiveExceptionE.DW.stub-.Ltmp190
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive4NZip10CInArchive19CreateLimitedStreamEyy # -- Begin function _ZN8NArchive4NZip10CInArchive19CreateLimitedStreamEyy
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive19CreateLimitedStreamEyy,@function
_ZN8NArchive4NZip10CInArchive19CreateLimitedStreamEyy: # @_ZN8NArchive4NZip10CInArchive19CreateLimitedStreamEyy
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
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
	move	$s0, $a2
	move	$s2, $a1
	move	$s1, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.w	$zero, $a0, 8
	pcalau12i	$a0, %got_pc_hi20(_ZTV26CLimitedSequentialInStream)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV26CLimitedSequentialInStream)
	ld.d	$a1, $a0, 24
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	ld.d	$a2, $s1, 88
	ld.d	$a4, $a1, 48
	add.d	$a1, $a2, $s2
.Ltmp191:                               # EH_LABEL
	addi.d	$a3, $sp, 0
	move	$a2, $zero
	jirl	$ra, $a4, 0
.Ltmp192:                               # EH_LABEL
# %bb.1:
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB32_3
# %bb.2:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 8
.Ltmp193:                               # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp194:                               # EH_LABEL
.LBB32_3:                               # %.noexc
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB32_5
# %bb.4:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp195:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp196:                               # EH_LABEL
.LBB32_5:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
	st.d	$s1, $fp, 16
	st.d	$s0, $fp, 24
	st.d	$zero, $fp, 32
	st.b	$zero, $fp, 40
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB32_6:
.Ltmp197:                               # EH_LABEL
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 16
	move	$s0, $a0
.Ltmp198:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp199:                               # EH_LABEL
# %bb.7:                                # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB32_8:
.Ltmp200:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end32:
	.size	_ZN8NArchive4NZip10CInArchive19CreateLimitedStreamEyy, .Lfunc_end32-_ZN8NArchive4NZip10CInArchive19CreateLimitedStreamEyy
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table32:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp191-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp191
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp191-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp196-.Ltmp191              #   Call between .Ltmp191 and .Ltmp196
	.uleb128 .Ltmp197-.Lfunc_begin10        #     jumps to .Ltmp197
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp199-.Ltmp198              #   Call between .Ltmp198 and .Ltmp199
	.uleb128 .Ltmp200-.Lfunc_begin10        #     jumps to .Ltmp200
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp199-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Lfunc_end32-.Ltmp199          #   Call between .Ltmp199 and .Lfunc_end32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive4NZip10CInArchive13SeekInArchiveEy # -- Begin function _ZN8NArchive4NZip10CInArchive13SeekInArchiveEy
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive13SeekInArchiveEy,@function
_ZN8NArchive4NZip10CInArchive13SeekInArchiveEy: # @_ZN8NArchive4NZip10CInArchive13SeekInArchiveEy
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a4, $a2, 48
	move	$fp, $a1
	addi.d	$a3, $sp, 8
	move	$a2, $zero
	jirl	$ra, $a4, 0
	ld.d	$a1, $sp, 8
	sltui	$a0, $a0, 1
	xor	$a1, $a1, $fp
	sltui	$a1, $a1, 1
	and	$a0, $a0, $a1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end33:
	.size	_ZN8NArchive4NZip10CInArchive13SeekInArchiveEy, .Lfunc_end33-_ZN8NArchive4NZip10CInArchive13SeekInArchiveEy
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip10CInArchive12CreateStreamEv # -- Begin function _ZN8NArchive4NZip10CInArchive12CreateStreamEv
	.p2align	5
	.type	_ZN8NArchive4NZip10CInArchive12CreateStreamEv,@function
_ZN8NArchive4NZip10CInArchive12CreateStreamEv: # @_ZN8NArchive4NZip10CInArchive12CreateStreamEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.d	$fp, $a0, 0
	beqz	$fp, .LBB34_2
# %bb.1:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 8
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB34_2:                               # %_ZN9CMyComPtrI9IInStreamED2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end34:
	.size	_ZN8NArchive4NZip10CInArchive12CreateStreamEv, .Lfunc_end34-_ZN8NArchive4NZip10CInArchive12CreateStreamEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7CBufferIhED0Ev,"axG",@progbits,_ZN7CBufferIhED0Ev,comdat
	.weak	_ZN7CBufferIhED0Ev              # -- Begin function _ZN7CBufferIhED0Ev
	.p2align	5
	.type	_ZN7CBufferIhED0Ev,@function
_ZN7CBufferIhED0Ev:                     # @_ZN7CBufferIhED0Ev
# %bb.0:
	pcalau12i	$a1, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$a2, $a1, %pc_lo12(_ZTV7CBufferIhE+16)
	ld.d	$a1, $a0, 16
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB35_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB35_2:                               # %_ZN7CBufferIhED2Ev.exit
	ori	$a1, $zero, 24
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end35:
	.size	_ZN7CBufferIhED0Ev, .Lfunc_end35-_ZN7CBufferIhED0Ev
                                        # -- End function
	.section	.text._ZN8NArchive4NZip11CExtraBlockD2Ev,"axG",@progbits,_ZN8NArchive4NZip11CExtraBlockD2Ev,comdat
	.weak	_ZN8NArchive4NZip11CExtraBlockD2Ev # -- Begin function _ZN8NArchive4NZip11CExtraBlockD2Ev
	.p2align	5
	.type	_ZN8NArchive4NZip11CExtraBlockD2Ev,@function
_ZN8NArchive4NZip11CExtraBlockD2Ev:     # @_ZN8NArchive4NZip11CExtraBlockD2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	st.d	$a0, $fp, 0
.Ltmp201:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp202:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB36_2:
.Ltmp203:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end36:
	.size	_ZN8NArchive4NZip11CExtraBlockD2Ev, .Lfunc_end36-_ZN8NArchive4NZip11CExtraBlockD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NZip11CExtraBlockD2Ev,"aG",@progbits,_ZN8NArchive4NZip11CExtraBlockD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table36:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp201-.Lfunc_begin11        # >> Call Site 1 <<
	.uleb128 .Ltmp202-.Ltmp201              #   Call between .Ltmp201 and .Ltmp202
	.uleb128 .Ltmp203-.Lfunc_begin11        #     jumps to .Ltmp203
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp202-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Lfunc_end36-.Ltmp202          #   Call between .Ltmp202 and .Lfunc_end36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive4NZip10CLocalItemD2Ev,"axG",@progbits,_ZN8NArchive4NZip10CLocalItemD2Ev,comdat
	.weak	_ZN8NArchive4NZip10CLocalItemD2Ev # -- Begin function _ZN8NArchive4NZip10CLocalItemD2Ev
	.p2align	5
	.type	_ZN8NArchive4NZip10CLocalItemD2Ev,@function
_ZN8NArchive4NZip10CLocalItemD2Ev:      # @_ZN8NArchive4NZip10CLocalItemD2Ev
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
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
	addi.d	$s0, $a0, 48
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	st.d	$a0, $fp, 48
.Ltmp204:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp205:                               # EH_LABEL
# %bb.1:                                # %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB37_3
# %bb.2:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB37_3:                               # %_ZN11CStringBaseIcED2Ev.exit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB37_4:
.Ltmp206:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end37:
	.size	_ZN8NArchive4NZip10CLocalItemD2Ev, .Lfunc_end37-_ZN8NArchive4NZip10CLocalItemD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NZip10CLocalItemD2Ev,"aG",@progbits,_ZN8NArchive4NZip10CLocalItemD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table37:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp204-.Lfunc_begin12        # >> Call Site 1 <<
	.uleb128 .Ltmp205-.Ltmp204              #   Call between .Ltmp204 and .Ltmp205
	.uleb128 .Ltmp206-.Lfunc_begin12        #     jumps to .Ltmp206
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp205-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Lfunc_end37-.Ltmp205          #   Call between .Ltmp205 and .Lfunc_end37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev # -- Begin function _ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev,@function
_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev: # @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	st.d	$a0, $fp, 0
.Ltmp207:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp208:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB38_2:
.Ltmp209:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end38:
	.size	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev, .Lfunc_end38-_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table38:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp207-.Lfunc_begin13        # >> Call Site 1 <<
	.uleb128 .Ltmp208-.Ltmp207              #   Call between .Ltmp207 and .Ltmp208
	.uleb128 .Ltmp209-.Lfunc_begin13        #     jumps to .Ltmp209
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp208-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Lfunc_end38-.Ltmp208          #   Call between .Ltmp208 and .Lfunc_end38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev # -- Begin function _ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev,@function
_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev: # @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	st.d	$a0, $fp, 0
.Ltmp210:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp211:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB39_2:
.Ltmp212:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end39:
	.size	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev, .Lfunc_end39-_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table39:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp210-.Lfunc_begin14        # >> Call Site 1 <<
	.uleb128 .Ltmp211-.Ltmp210              #   Call between .Ltmp210 and .Ltmp211
	.uleb128 .Ltmp212-.Lfunc_begin14        #     jumps to .Ltmp212
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp211-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Lfunc_end39-.Ltmp211          #   Call between .Ltmp211 and .Lfunc_end39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase12:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii # -- Begin function _ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii,@function
_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii: # @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii
	.cfi_startproc
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	blez	$s1, .LBB40_7
# %bb.1:                                # %.lr.ph
	slli.d	$s3, $s0, 3
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$s4, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	move	$s5, $zero
	b	.LBB40_4
	.p2align	4, , 16
.LBB40_2:                               # %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit
                                        #   in Loop: Header=BB40_4 Depth=1
	ori	$a1, $zero, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB40_3:                               #   in Loop: Header=BB40_4 Depth=1
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 8
	bgeu	$s5, $s1, .LBB40_7
.LBB40_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s3
	beqz	$s2, .LBB40_3
# %bb.5:                                #   in Loop: Header=BB40_4 Depth=1
	ld.d	$a0, $s2, 24
	st.d	$s4, $s2, 8
	beqz	$a0, .LBB40_2
# %bb.6:                                #   in Loop: Header=BB40_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB40_2
.LBB40_7:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.Lfunc_end40:
	.size	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii, .Lfunc_end40-_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii
	.cfi_endproc
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
	.section	.text._ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_ # -- Begin function _ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_,@function
_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_: # @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception15
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$s0, $a1
	move	$fp, $a0
	ld.w	$s1, $a1, 12
	ld.w	$a0, $a0, 12
	add.w	$a1, $a0, $s1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	blez	$s1, .LBB42_6
# %bb.1:                                # %.lr.ph
	slli.d	$s3, $s1, 3
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$s4, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	move	$s5, $zero
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	b	.LBB42_3
	.p2align	4, , 16
.LBB42_2:                               # %_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE3AddERKS2_.exit
                                        #   in Loop: Header=BB42_3 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	ld.d	$a1, $fp, 16
	slli.d	$a2, $a0, 3
	stx.d	$s1, $a1, $a2
	addi.d	$a0, $a0, 1
	addi.d	$s5, $s5, 8
	st.w	$a0, $fp, 12
	beq	$s3, $s5, .LBB42_6
.LBB42_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 16
	ldx.d	$s6, $a0, $s5
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.h	$a0, $s6, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s1, 16
	ld.d	$s2, $s6, 16
	st.h	$a0, $s1, 0
	st.d	$s4, $s1, 8
	beqz	$s2, .LBB42_2
# %bb.4:                                # %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i.i
                                        #   in Loop: Header=BB42_3 Depth=1
.Ltmp213:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp214:                               # EH_LABEL
# %bb.5:                                # %.noexc.i
                                        #   in Loop: Header=BB42_3 Depth=1
	st.d	$a0, $s1, 24
	ld.d	$a1, $s6, 24
	st.d	$s2, $s1, 16
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB42_2
.LBB42_6:                               # %._crit_edge
	move	$a0, $fp
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
.LBB42_7:
.Ltmp215:                               # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end42:
	.size	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_, .Lfunc_end42-_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_,"aG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_,comdat
	.p2align	2, 0x0
GCC_except_table42:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Lfunc_begin15-.Lfunc_begin15  # >> Call Site 1 <<
	.uleb128 .Ltmp213-.Lfunc_begin15        #   Call between .Lfunc_begin15 and .Ltmp213
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp213-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Ltmp214-.Ltmp213              #   Call between .Ltmp213 and .Ltmp214
	.uleb128 .Ltmp215-.Lfunc_begin15        #     jumps to .Ltmp215
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin15        # >> Call Site 3 <<
	.uleb128 .Lfunc_end42-.Ltmp214          #   Call between .Ltmp214 and .Lfunc_end42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive4NZip5CItemC2ERKS1_,"axG",@progbits,_ZN8NArchive4NZip5CItemC2ERKS1_,comdat
	.weak	_ZN8NArchive4NZip5CItemC2ERKS1_ # -- Begin function _ZN8NArchive4NZip5CItemC2ERKS1_
	.p2align	5
	.type	_ZN8NArchive4NZip5CItemC2ERKS1_,@function
_ZN8NArchive4NZip5CItemC2ERKS1_:        # @_ZN8NArchive4NZip5CItemC2ERKS1_
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception16
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$s0, $a1
	vld	$vr0, $a1, 16
	move	$fp, $a0
	vst	$vr0, $a0, 16
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $a0, 32
	ld.wu	$s1, $a1, 40
	addi.d	$s2, $s1, 1
	slli.d	$a0, $s2, 31
	bgez	$a0, .LBB43_2
# %bb.1:
	move	$a0, $zero
	b	.LBB43_3
.LBB43_2:
	addi.w	$a0, $s2, 0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 32
	st.b	$zero, $a0, 0
	st.w	$s2, $fp, 44
.LBB43_3:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i
	ld.d	$a1, $s0, 32
	addi.d	$s2, $fp, 32
	.p2align	4, , 16
.LBB43_4:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a1, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a0, 1
	st.b	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB43_4
# %bb.5:                                # %_ZN11CStringBaseIcEC2ERKS0_.exit.i
	st.w	$s1, $fp, 40
	addi.d	$s1, $fp, 48
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 56
	ori	$a0, $zero, 8
	st.d	$a0, $fp, 72
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	addi.d	$s3, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE+16)
	st.d	$s3, $fp, 48
.Ltmp216:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp217:                               # EH_LABEL
# %bb.6:                                # %.noexc.i.i.i
	addi.d	$a1, $s0, 48
.Ltmp218:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_)
	jirl	$ra, $ra, 0
.Ltmp219:                               # EH_LABEL
# %bb.7:                                # %_ZN8NArchive4NZip10CLocalItemC2ERKS1_.exit
	ld.d	$a0, $s0, 112
	st.d	$a0, $fp, 112
	vld	$vr0, $s0, 96
	vst	$vr0, $fp, 96
	vld	$vr0, $s0, 80
	vst	$vr0, $fp, 80
	addi.d	$s1, $fp, 120
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 128
	ori	$a0, $zero, 8
	st.d	$a0, $fp, 144
	st.d	$s3, $fp, 120
.Ltmp221:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp222:                               # EH_LABEL
# %bb.8:                                # %.noexc.i.i
	addi.d	$a1, $s0, 120
.Ltmp223:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_)
	jirl	$ra, $ra, 0
.Ltmp224:                               # EH_LABEL
# %bb.9:                                # %_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 160
	ld.d	$s2, $s0, 160
	st.d	$a0, $fp, 152
	beqz	$s2, .LBB43_12
# %bb.10:                               # %_ZN7CBufferIhE11SetCapacityEm.exit.i.i
.Ltmp226:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp227:                               # EH_LABEL
# %bb.11:                               # %.noexc
	st.d	$a0, $fp, 168
	st.d	$s2, $fp, 160
	ld.d	$a2, $s0, 160
	ld.d	$a1, $s0, 168
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB43_12:                              # %_ZN7CBufferIhEC2ERKS0_.exit
	ld.b	$a0, $s0, 178
	st.b	$a0, $fp, 178
	ld.h	$a0, $s0, 176
	st.h	$a0, $fp, 176
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB43_13:
.Ltmp228:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip11CExtraBlockD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CLocalItemD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB43_14:
.Ltmp225:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip10CLocalItemD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB43_15:                              # %.body.i
.Ltmp220:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB43_17
# %bb.16:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB43_17:                              # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end43:
	.size	_ZN8NArchive4NZip5CItemC2ERKS1_, .Lfunc_end43-_ZN8NArchive4NZip5CItemC2ERKS1_
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive4NZip5CItemC2ERKS1_,"aG",@progbits,_ZN8NArchive4NZip5CItemC2ERKS1_,comdat
	.p2align	2, 0x0
GCC_except_table43:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Lfunc_begin16-.Lfunc_begin16  # >> Call Site 1 <<
	.uleb128 .Ltmp216-.Lfunc_begin16        #   Call between .Lfunc_begin16 and .Ltmp216
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp216-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Ltmp219-.Ltmp216              #   Call between .Ltmp216 and .Ltmp219
	.uleb128 .Ltmp220-.Lfunc_begin16        #     jumps to .Ltmp220
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp221-.Lfunc_begin16        # >> Call Site 3 <<
	.uleb128 .Ltmp224-.Ltmp221              #   Call between .Ltmp221 and .Ltmp224
	.uleb128 .Ltmp225-.Lfunc_begin16        #     jumps to .Ltmp225
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp226-.Lfunc_begin16        # >> Call Site 4 <<
	.uleb128 .Ltmp227-.Ltmp226              #   Call between .Ltmp226 and .Ltmp227
	.uleb128 .Ltmp228-.Lfunc_begin16        #     jumps to .Ltmp228
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp227-.Lfunc_begin16        # >> Call Site 5 <<
	.uleb128 .Lfunc_end43-.Ltmp227          #   Call between .Ltmp227 and .Lfunc_end43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZTI18CInBufferException,@object # @_ZTI18CInBufferException
	.section	.data.rel.ro._ZTI18CInBufferException,"awG",@progbits,_ZTI18CInBufferException,comdat
	.weak	_ZTI18CInBufferException
	.p2align	3, 0x0
_ZTI18CInBufferException:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS18CInBufferException
	.dword	_ZTI16CSystemException
	.size	_ZTI18CInBufferException, 24

	.type	_ZTS18CInBufferException,@object # @_ZTS18CInBufferException
	.section	.rodata._ZTS18CInBufferException,"aG",@progbits,_ZTS18CInBufferException,comdat
	.weak	_ZTS18CInBufferException
_ZTS18CInBufferException:
	.asciz	"18CInBufferException"
	.size	_ZTS18CInBufferException, 21

	.type	_ZTI16CSystemException,@object  # @_ZTI16CSystemException
	.section	.data.rel.ro._ZTI16CSystemException,"awG",@progbits,_ZTI16CSystemException,comdat
	.weak	_ZTI16CSystemException
	.p2align	3, 0x0
_ZTI16CSystemException:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS16CSystemException
	.size	_ZTI16CSystemException, 16

	.type	_ZTS16CSystemException,@object  # @_ZTS16CSystemException
	.section	.rodata._ZTS16CSystemException,"aG",@progbits,_ZTS16CSystemException,comdat
	.weak	_ZTS16CSystemException
_ZTS16CSystemException:
	.asciz	"16CSystemException"
	.size	_ZTS16CSystemException, 19

	.type	_ZTIN8NArchive4NZip19CInArchiveExceptionE,@object # @_ZTIN8NArchive4NZip19CInArchiveExceptionE
	.section	.data.rel.ro._ZTIN8NArchive4NZip19CInArchiveExceptionE,"awG",@progbits,_ZTIN8NArchive4NZip19CInArchiveExceptionE,comdat
	.weak	_ZTIN8NArchive4NZip19CInArchiveExceptionE
	.p2align	3, 0x0
_ZTIN8NArchive4NZip19CInArchiveExceptionE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN8NArchive4NZip19CInArchiveExceptionE
	.size	_ZTIN8NArchive4NZip19CInArchiveExceptionE, 16

	.type	_ZTSN8NArchive4NZip19CInArchiveExceptionE,@object # @_ZTSN8NArchive4NZip19CInArchiveExceptionE
	.section	.rodata._ZTSN8NArchive4NZip19CInArchiveExceptionE,"aG",@progbits,_ZTSN8NArchive4NZip19CInArchiveExceptionE,comdat
	.weak	_ZTSN8NArchive4NZip19CInArchiveExceptionE
_ZTSN8NArchive4NZip19CInArchiveExceptionE:
	.asciz	"N8NArchive4NZip19CInArchiveExceptionE"
	.size	_ZTSN8NArchive4NZip19CInArchiveExceptionE, 38

	.type	_ZTV7CBufferIhE,@object         # @_ZTV7CBufferIhE
	.section	.data.rel.ro._ZTV7CBufferIhE,"awG",@progbits,_ZTV7CBufferIhE,comdat
	.weak	_ZTV7CBufferIhE
	.p2align	3, 0x0
_ZTV7CBufferIhE:
	.dword	0
	.dword	_ZTI7CBufferIhE
	.dword	_ZN7CBufferIhED2Ev
	.dword	_ZN7CBufferIhED0Ev
	.size	_ZTV7CBufferIhE, 32

	.type	_ZTI7CBufferIhE,@object         # @_ZTI7CBufferIhE
	.section	.data.rel.ro._ZTI7CBufferIhE,"awG",@progbits,_ZTI7CBufferIhE,comdat
	.weak	_ZTI7CBufferIhE
	.p2align	3, 0x0
_ZTI7CBufferIhE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS7CBufferIhE
	.size	_ZTI7CBufferIhE, 16

	.type	_ZTS7CBufferIhE,@object         # @_ZTS7CBufferIhE
	.section	.rodata._ZTS7CBufferIhE,"aG",@progbits,_ZTS7CBufferIhE,comdat
	.weak	_ZTS7CBufferIhE
_ZTS7CBufferIhE:
	.asciz	"7CBufferIhE"
	.size	_ZTS7CBufferIhE, 12

	.type	_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE,@object # @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE
	.section	.data.rel.ro._ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE,"awG",@progbits,_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE,comdat
	.weak	_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE
	.p2align	3, 0x0
_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE:
	.dword	0
	.dword	_ZTI13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE
	.dword	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev
	.dword	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev
	.dword	_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii
	.size	_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, 40

	.type	_ZTI13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE,@object # @_ZTI13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE
	.section	.data.rel.ro._ZTI13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE,"awG",@progbits,_ZTI13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE,comdat
	.weak	_ZTI13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE
	.p2align	3, 0x0
_ZTI13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, 24

	.type	_ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE,@object # @_ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE
	.section	.rodata._ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE,"aG",@progbits,_ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE,comdat
	.weak	_ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE
_ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE:
	.asciz	"13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE"
	.size	_ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, 50

	.type	_ZTI13CRecordVectorIPvE,@object # @_ZTI13CRecordVectorIPvE
	.section	.data.rel.ro._ZTI13CRecordVectorIPvE,"awG",@progbits,_ZTI13CRecordVectorIPvE,comdat
	.weak	_ZTI13CRecordVectorIPvE
	.p2align	3, 0x0
_ZTI13CRecordVectorIPvE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIPvE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIPvE, 24

	.type	_ZTS13CRecordVectorIPvE,@object # @_ZTS13CRecordVectorIPvE
	.section	.rodata._ZTS13CRecordVectorIPvE,"aG",@progbits,_ZTS13CRecordVectorIPvE,comdat
	.weak	_ZTS13CRecordVectorIPvE
_ZTS13CRecordVectorIPvE:
	.asciz	"13CRecordVectorIPvE"
	.size	_ZTS13CRecordVectorIPvE, 20

	.data
	.p2align	3, 0x0
.L_ZTI18CInBufferException.DW.stub:
	.dword	_ZTI18CInBufferException
.L_ZTIN8NArchive4NZip19CInArchiveExceptionE.DW.stub:
	.dword	_ZTIN8NArchive4NZip19CInArchiveExceptionE
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
	.addrsig_sym _ZTI18CInBufferException
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS18CInBufferException
	.addrsig_sym _ZTI16CSystemException
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS16CSystemException
	.addrsig_sym _ZTIN8NArchive4NZip19CInArchiveExceptionE
	.addrsig_sym _ZTSN8NArchive4NZip19CInArchiveExceptionE
	.addrsig_sym _ZTI7CBufferIhE
	.addrsig_sym _ZTS7CBufferIhE
	.addrsig_sym _ZTI13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE
	.addrsig_sym _ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE
	.addrsig_sym _ZTI13CRecordVectorIPvE
	.addrsig_sym _ZTS13CRecordVectorIPvE
	.addrsig_sym _ZTI17CBaseRecordVector
