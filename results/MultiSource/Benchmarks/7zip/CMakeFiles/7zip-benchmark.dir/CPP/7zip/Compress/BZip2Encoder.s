	.file	"BZip2Encoder.cpp"
	.text
	.globl	_ZN9NCompress6NBZip211CThreadInfo5AllocEv # -- Begin function _ZN9NCompress6NBZip211CThreadInfo5AllocEv
	.p2align	5
	.type	_ZN9NCompress6NBZip211CThreadInfo5AllocEv,@function
_ZN9NCompress6NBZip211CThreadInfo5AllocEv: # @_ZN9NCompress6NBZip211CThreadInfo5AllocEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	bnez	$a0, .LBB0_2
# %bb.1:
	lu12i.w	$a0, 1821
	ori	$a0, $a0, 3328
	pcaddu18i	$ra, %call36(BigAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 24
	beqz	$a0, .LBB0_6
.LBB0_2:
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 1
	beqz	$a1, .LBB0_4
# %bb.3:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB0_4:
	lu12i.w	$a0, 1125
	ori	$a0, $a0, 2480
	pcaddu18i	$ra, %call36(MidAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	beqz	$a0, .LBB0_6
# %bb.5:
	lu12i.w	$a1, 219
	ori	$a1, $a1, 2976
	add.d	$a1, $a0, $a1
	st.d	$a1, $fp, 8
	lu12i.w	$a1, 659
	ori	$a1, $a1, 738
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, 16
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB0_6:
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	_ZN9NCompress6NBZip211CThreadInfo5AllocEv, .Lfunc_end0-_ZN9NCompress6NBZip211CThreadInfo5AllocEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress6NBZip211CThreadInfo4FreeEv # -- Begin function _ZN9NCompress6NBZip211CThreadInfo4FreeEv
	.p2align	5
	.type	_ZN9NCompress6NBZip211CThreadInfo4FreeEv,@function
_ZN9NCompress6NBZip211CThreadInfo4FreeEv: # @_ZN9NCompress6NBZip211CThreadInfo4FreeEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(BigFree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	st.d	$zero, $fp, 24
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	_ZN9NCompress6NBZip211CThreadInfo4FreeEv, .Lfunc_end1-_ZN9NCompress6NBZip211CThreadInfo4FreeEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress6NBZip211CThreadInfo6CreateEv # -- Begin function _ZN9NCompress6NBZip211CThreadInfo6CreateEv
	.p2align	5
	.type	_ZN9NCompress6NBZip211CThreadInfo6CreateEv,@function
_ZN9NCompress6NBZip211CThreadInfo6CreateEv: # @_ZN9NCompress6NBZip211CThreadInfo6CreateEv
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
	lu12i.w	$s0, 8
	ori	$a0, $s0, 3344
	add.d	$a0, $fp, $a0
	pcaddu18i	$ra, %call36(AutoResetEvent_CreateNotSignaled)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_3
# %bb.1:
	ori	$a0, $s0, 3448
	add.d	$a0, $fp, $a0
	pcaddu18i	$ra, %call36(AutoResetEvent_CreateNotSignaled)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_3
# %bb.2:
	ori	$a0, $s0, 3552
	add.d	$a0, $fp, $a0
	pcaddu18i	$ra, %call36(AutoResetEvent_CreateNotSignaled)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_4
.LBB2_3:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_4:
	ori	$a0, $s0, 3328
	add.d	$a0, $fp, $a0
	pcalau12i	$a1, %pc_hi20(_ZN9NCompress6NBZip2L8MFThreadEPv)
	addi.d	$a1, $a1, %pc_lo12(_ZN9NCompress6NBZip2L8MFThreadEPv)
	move	$a2, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(Thread_Create)
	jr	$t8
.Lfunc_end2:
	.size	_ZN9NCompress6NBZip211CThreadInfo6CreateEv, .Lfunc_end2-_ZN9NCompress6NBZip211CThreadInfo6CreateEv
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN9NCompress6NBZip2L8MFThreadEPv
	.type	_ZN9NCompress6NBZip2L8MFThreadEPv,@function
_ZN9NCompress6NBZip2L8MFThreadEPv:      # @_ZN9NCompress6NBZip2L8MFThreadEPv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip211CThreadInfo10ThreadFuncEv)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	_ZN9NCompress6NBZip2L8MFThreadEPv, .Lfunc_end3-_ZN9NCompress6NBZip2L8MFThreadEPv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress6NBZip211CThreadInfo12FinishStreamEb # -- Begin function _ZN9NCompress6NBZip211CThreadInfo12FinishStreamEb
	.p2align	5
	.type	_ZN9NCompress6NBZip211CThreadInfo12FinishStreamEb,@function
_ZN9NCompress6NBZip211CThreadInfo12FinishStreamEb: # @_ZN9NCompress6NBZip211CThreadInfo12FinishStreamEb
	.cfi_startproc
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
	lu12i.w	$s1, 8
	ori	$a0, $s1, 3320
	ldx.d	$a2, $fp, $a0
	move	$s0, $a1
	add.d	$s2, $fp, $a0
	ori	$a0, $zero, 1
	st.b	$a0, $a2, 589
	ori	$a0, $s1, 3344
	add.d	$a0, $fp, $a0
	pcaddu18i	$ra, %call36(Event_Set)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB4_2
# %bb.1:
	ld.d	$a0, $s2, 0
	addi.d	$a0, $a0, 536
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
.LBB4_2:
	ld.d	$a0, $s2, 0
	addi.d	$a0, $a0, 592
	pcaddu18i	$ra, %call36(Event_Wait)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 3448
	add.d	$a0, $fp, $a0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(Event_Set)
	jr	$t8
.Lfunc_end4:
	.size	_ZN9NCompress6NBZip211CThreadInfo12FinishStreamEb, .Lfunc_end4-_ZN9NCompress6NBZip211CThreadInfo12FinishStreamEb
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress6NBZip211CThreadInfo10ThreadFuncEv # -- Begin function _ZN9NCompress6NBZip211CThreadInfo10ThreadFuncEv
	.p2align	5
	.type	_ZN9NCompress6NBZip211CThreadInfo10ThreadFuncEv,@function
_ZN9NCompress6NBZip211CThreadInfo10ThreadFuncEv: # @_ZN9NCompress6NBZip211CThreadInfo10ThreadFuncEv
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	move	$fp, $a0
	lu12i.w	$s1, 8
	ori	$a0, $s1, 3308
	add.d	$s3, $fp, $a0
	ld.d	$a0, $s3, 12
	addi.d	$a0, $a0, 432
	pcaddu18i	$ra, %call36(Event_Wait)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 12
	addi.d	$a0, $a0, 536
	pcaddu18i	$ra, %call36(pthread_mutex_lock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 12
	ld.bu	$a1, $a0, 588
	beqz	$a1, .LBB5_2
.LBB5_1:                                # %._crit_edge
	addi.d	$a0, $a0, 536
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
.LBB5_2:                                # %.lr.ph
	ori	$a1, $s1, 3344
	add.d	$s0, $fp, $a1
	ori	$a1, $s1, 3448
	add.d	$s1, $fp, $a1
	ori	$s4, $zero, 1
	ori	$s5, $zero, 3
	ori	$s6, $zero, 2
	lu12i.w	$a1, -524284
	ori	$s7, $a1, 5
	b	.LBB5_7
	.p2align	4, , 16
.LBB5_3:                                #   in Loop: Header=BB5_7 Depth=1
	st.b	$s4, $a0, 589
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Event_Set)
	jirl	$ra, $ra, 0
.LBB5_4:                                # %.backedge.sink.split.sink.split
                                        #   in Loop: Header=BB5_7 Depth=1
	ld.d	$a0, $s3, 12
	addi.d	$a0, $a0, 536
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
.LBB5_5:                                # %.backedge.sink.split
                                        #   in Loop: Header=BB5_7 Depth=1
	ld.d	$a0, $s3, 12
	addi.d	$a0, $a0, 592
	pcaddu18i	$ra, %call36(Event_Wait)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Event_Set)
	jirl	$ra, $ra, 0
.LBB5_6:                                # %.backedge
                                        #   in Loop: Header=BB5_7 Depth=1
	ld.d	$a0, $s3, 12
	addi.d	$a0, $a0, 432
	pcaddu18i	$ra, %call36(Event_Wait)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 12
	addi.d	$a0, $a0, 536
	pcaddu18i	$ra, %call36(pthread_mutex_lock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 12
	ld.bu	$a1, $a0, 588
	bnez	$a1, .LBB5_1
.LBB5_7:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 589
	bnez	$a1, .LBB5_3
# %bb.8:                                #   in Loop: Header=BB5_7 Depth=1
	ld.d	$a1, $fp, 0
	ori	$s8, $zero, 1
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder12ReadRleBlockEPh)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.9:                                #   in Loop: Header=BB5_7 Depth=1
	move	$s2, $a0
	ld.d	$a0, $s3, 12
	ld.d	$a1, $a0, 80
	ld.d	$a2, $a0, 48
	ld.d	$a3, $a0, 64
	add.d	$a1, $a1, $a2
	ld.w	$a2, $a0, 584
	sub.d	$a1, $a1, $a3
	ld.w	$a3, $a0, 576
	st.d	$a1, $s3, 348
	st.w	$a2, $s3, 0
	addi.w	$a1, $a2, 1
	xor	$a2, $a1, $a3
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	st.w	$a1, $a0, 584
	beqz	$s2, .LBB5_13
# %bb.10:                               #   in Loop: Header=BB5_7 Depth=1
	addi.d	$a0, $a0, 536
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	move	$s8, $zero
.Ltmp2:                                 # EH_LABEL
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock3Ej)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.11:                               # %_ZN9NCompress6NBZip211CThreadInfo12FinishStreamEb.exit23
                                        #   in Loop: Header=BB5_7 Depth=1
	beqz	$a0, .LBB5_6
.LBB5_12:                               #   in Loop: Header=BB5_7 Depth=1
	ld.d	$a1, $s3, 12
	st.w	$a0, $a1, 696
	st.b	$s4, $a1, 589
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Event_Set)
	jirl	$ra, $ra, 0
	bnez	$s8, .LBB5_4
	b	.LBB5_5
.LBB5_13:                               #   in Loop: Header=BB5_7 Depth=1
	ori	$s8, $zero, 1
	st.b	$s8, $a0, 589
.Ltmp4:                                 # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Event_Set)
	jirl	$ra, $ra, 0
.Ltmp5:                                 # EH_LABEL
# %bb.14:                               # %.noexc
                                        #   in Loop: Header=BB5_7 Depth=1
	ld.d	$a0, $s3, 12
	addi.d	$a0, $a0, 536
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 12
	addi.d	$a0, $a0, 592
.Ltmp6:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(Event_Wait)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.15:                               # %.noexc21
                                        #   in Loop: Header=BB5_7 Depth=1
.Ltmp8:                                 # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Event_Set)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
	b	.LBB5_6
.LBB5_16:                               #   in Loop: Header=BB5_7 Depth=1
.Ltmp10:                                # EH_LABEL
	addi.w	$a1, $a1, 0
	beq	$a1, $s5, .LBB5_18
# %bb.17:                               #   in Loop: Header=BB5_7 Depth=1
	bne	$a1, $s6, .LBB5_19
.LBB5_18:                               # %_ZN9NCompress6NBZip211CThreadInfo12FinishStreamEb.exit23.sink.split
                                        #   in Loop: Header=BB5_7 Depth=1
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ld.w	$s2, $a0, 0
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	bnez	$a0, .LBB5_12
	b	.LBB5_6
.LBB5_19:                               # %.thread
                                        #   in Loop: Header=BB5_7 Depth=1
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	b	.LBB5_12
.Lfunc_end5:
	.size	_ZN9NCompress6NBZip211CThreadInfo10ThreadFuncEv, .Lfunc_end5-_ZN9NCompress6NBZip211CThreadInfo10ThreadFuncEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
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
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp2-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp2-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp3-.Ltmp2                  #   Call between .Ltmp2 and .Ltmp3
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp5-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp5
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 8 <<
	.uleb128 .Ltmp9-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 9 <<
	.uleb128 .Lfunc_end5-.Ltmp9             #   Call between .Ltmp9 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.byte	3                               # >> Action Record 3 <<
                                        #   Catch TypeInfo 3
	.byte	125                             #   Continue to action 2
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp11:                                # TypeInfo 3
	.word	.L_ZTI18CInBufferException.DW.stub-.Ltmp11
.Ltmp12:                                # TypeInfo 2
	.word	.L_ZTI19COutBufferException.DW.stub-.Ltmp12
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN9NCompress6NBZip28CEncoder12ReadRleBlockEPh # -- Begin function _ZN9NCompress6NBZip28CEncoder12ReadRleBlockEPh
	.p2align	5
	.type	_ZN9NCompress6NBZip28CEncoder12ReadRleBlockEPh,@function
_ZN9NCompress6NBZip28CEncoder12ReadRleBlockEPh: # @_ZN9NCompress6NBZip28CEncoder12ReadRleBlockEPh
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
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
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
	move	$s0, $a0
	ld.d	$a0, $a0, 48
	ld.d	$a2, $s0, 56
	move	$fp, $a1
	addi.d	$s1, $s0, 48
	bltu	$a0, $a2, .LBB6_3
# %bb.1:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN9CInBuffer9ReadBlockEv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_20
# %bb.2:                                # %._crit_edge.i
	ld.d	$a0, $s1, 0
.LBB6_3:                                # %.lr.ph.preheader
	addi.d	$a1, $a0, 1
	st.d	$a1, $s0, 48
	ld.w	$a1, $s0, 28
	ld.bu	$s6, $a0, 0
	lu12i.w	$a0, 24
	ori	$a0, $a0, 1696
	mul.d	$a0, $a1, $a0
	addi.w	$s3, $a0, -1
	st.b	$s6, $fp, 0
	ori	$s7, $zero, 1
	ori	$s4, $zero, 4
	ori	$s5, $zero, 259
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB6_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 48
	ld.d	$a1, $s0, 56
	bltu	$a0, $a1, .LBB6_7
# %bb.5:                                #   in Loop: Header=BB6_4 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN9CInBuffer9ReadBlockEv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_18
# %bb.6:                                # %._crit_edge.i33
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a0, $s1, 0
.LBB6_7:                                #   in Loop: Header=BB6_4 Depth=1
	addi.d	$a1, $a0, 1
	st.d	$a1, $s1, 0
	ld.bu	$a1, $a0, 0
	bne	$a1, $s6, .LBB6_10
# %bb.8:                                #   in Loop: Header=BB6_4 Depth=1
	addi.w	$a0, $s7, 1
	bge	$s7, $s4, .LBB6_15
# %bb.9:                                #   in Loop: Header=BB6_4 Depth=1
	move	$a1, $s6
	b	.LBB6_13
	.p2align	4, , 16
.LBB6_10:                               #   in Loop: Header=BB6_4 Depth=1
	ori	$a0, $zero, 1
	blt	$s7, $s4, .LBB6_12
# %bb.11:                               #   in Loop: Header=BB6_4 Depth=1
	addi.d	$a2, $s7, -4
	bstrpick.d	$a3, $s2, 31, 0
	addi.w	$s2, $s2, 1
	stx.b	$a2, $fp, $a3
.LBB6_12:                               # %_ZN9CInBuffer8ReadByteERh.exit35.sink.split
                                        #   in Loop: Header=BB6_4 Depth=1
	move	$s6, $a1
.LBB6_13:                               # %_ZN9CInBuffer8ReadByteERh.exit35.sink.split
                                        #   in Loop: Header=BB6_4 Depth=1
	bstrpick.d	$a2, $s2, 31, 0
	addi.w	$s2, $s2, 1
	stx.b	$a1, $fp, $a2
.LBB6_14:                               # %_ZN9CInBuffer8ReadByteERh.exit35
                                        #   in Loop: Header=BB6_4 Depth=1
	move	$s7, $a0
	bltu	$s2, $s3, .LBB6_4
	b	.LBB6_17
.LBB6_15:                               #   in Loop: Header=BB6_4 Depth=1
	bne	$a0, $s5, .LBB6_14
# %bb.16:                               #   in Loop: Header=BB6_4 Depth=1
	move	$a0, $zero
	ori	$a1, $zero, 255
	b	.LBB6_13
.LBB6_17:                               # %_ZN9CInBuffer8ReadByteERh.exit35.thread50
	ori	$a1, $zero, 4
	bge	$a0, $a1, .LBB6_19
	b	.LBB6_21
.LBB6_18:
	move	$a0, $s7
	ori	$a1, $zero, 4
	blt	$a0, $a1, .LBB6_21
.LBB6_19:
	addi.d	$a0, $a0, -4
	bstrpick.d	$a1, $s2, 31, 0
	addi.w	$s2, $s2, 1
	stx.b	$a0, $fp, $a1
	b	.LBB6_21
.LBB6_20:
	move	$s2, $zero
.LBB6_21:                               # %_ZN9CInBuffer8ReadByteERh.exit
	move	$a0, $s2
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
.Lfunc_end6:
	.size	_ZN9NCompress6NBZip28CEncoder12ReadRleBlockEPh, .Lfunc_end6-_ZN9NCompress6NBZip28CEncoder12ReadRleBlockEPh
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock3Ej # -- Begin function _ZN9NCompress6NBZip211CThreadInfo12EncodeBlock3Ej
	.p2align	5
	.type	_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock3Ej,@function
_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock3Ej: # @_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock3Ej
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
	move	$a2, $a1
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	lu12i.w	$s0, 8
	ori	$a4, $s0, 3304
	add.d	$s1, $fp, $a4
	st.d	$a0, $sp, 40
	ori	$a0, $zero, 0
	lu32i.d	$a0, 8
	ld.d	$a3, $s1, 16
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 24
	ld.d	$a1, $fp, 0
	ld.w	$a3, $a3, 416
	st.d	$a0, $fp, 32
	stx.w	$zero, $fp, $a4
	st.b	$zero, $sp, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock2EPKhjj)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
	ld.bu	$a1, $a0, 580
	beqz	$a1, .LBB7_2
# %bb.1:
	ld.wu	$a1, $s1, 4
	ld.d	$a0, $a0, 424
	ori	$a2, $s0, 3920
	mul.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	ori	$a1, $s0, 3552
	add.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(Event_Wait)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
.LBB7_2:
	ld.wu	$a1, $s1, 0
	beqz	$a1, .LBB7_5
# %bb.3:                                # %.lr.ph
	ld.w	$a2, $a0, 420
	lu12i.w	$a3, 7
	ori	$a3, $a3, 3304
	add.d	$a3, $fp, $a3
	.p2align	4, , 16
.LBB7_4:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	rotri.w	$a2, $a2, 31
	xor	$a2, $a2, $a4
	st.w	$a2, $a0, 420
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB7_4
.LBB7_5:                                # %._crit_edge
	ld.w	$a2, $sp, 24
	ld.w	$a4, $sp, 28
	ld.d	$a1, $fp, 16
	ld.bu	$a3, $sp, 32
	slli.d	$a2, $a2, 3
	sub.d	$a2, $a2, $a4
	addi.w	$a2, $a2, 8
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder10WriteBytesEPKhjh)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s1, 16
	ld.bu	$a0, $s3, 580
	beqz	$a0, .LBB7_8
# %bb.6:
	ld.w	$a0, $s1, 4
	ld.w	$a1, $s3, 576
	ld.d	$a2, $s3, 704
	addi.w	$a0, $a0, 1
	xor	$a1, $a0, $a1
	sltui	$a1, $a1, 1
	masknez	$s2, $a0, $a1
	beqz	$a2, .LBB7_9
# %bb.7:
	addi.d	$a0, $s3, 352
	pcaddu18i	$ra, %call36(_ZNK10COutBuffer16GetProcessedSizeEv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	ld.d	$a3, $a1, 704
	ld.w	$a1, $s3, 408
	ori	$a2, $zero, 15
	ld.d	$a4, $a3, 0
	sub.d	$a1, $a2, $a1
	bstrpick.d	$a1, $a1, 31, 3
	add.d	$a0, $a0, $a1
	ld.d	$a4, $a4, 40
	st.d	$a0, $sp, 16
	ori	$a0, $s0, 3656
	add.d	$a1, $fp, $a0
	addi.d	$a2, $sp, 16
	move	$a0, $a3
	jirl	$ra, $a4, 0
	ld.d	$s3, $s1, 16
	move	$fp, $a0
	b	.LBB7_10
.LBB7_8:
	move	$fp, $zero
	b	.LBB7_11
.LBB7_9:
	move	$fp, $zero
.LBB7_10:
	ld.d	$a0, $s3, 424
	bstrpick.d	$a1, $s2, 31, 0
	ori	$a2, $s0, 3920
	mul.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	ori	$a1, $s0, 3552
	add.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(Event_Set)
	jirl	$ra, $ra, 0
.LBB7_11:
	move	$a0, $fp
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end7:
	.size	_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock3Ej, .Lfunc_end7-_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock3Ej
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress6NBZip28CEncoderC2Ev # -- Begin function _ZN9NCompress6NBZip28CEncoderC2Ev
	.p2align	5
	.type	_ZN9NCompress6NBZip28CEncoderC2Ev,@function
_ZN9NCompress6NBZip28CEncoderC2Ev:      # @_ZN9NCompress6NBZip28CEncoderC2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	move	$fp, $a0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 9
	st.d	$a0, $fp, 24
	pcalau12i	$a0, %pc_hi20(_ZTVN9NCompress6NBZip28CEncoderE)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN9NCompress6NBZip28CEncoderE)
	addi.d	$a1, $a0, 16
	st.d	$a1, $fp, 0
	addi.d	$a1, $a0, 96
	st.d	$a1, $fp, 8
	addi.d	$a0, $a0, 160
	st.d	$a0, $fp, 16
	st.b	$zero, $fp, 32
	addi.d	$s0, $fp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9CInBufferC1Ev)
	jirl	$ra, $ra, 0
	addi.d	$s1, $fp, 352
	st.d	$zero, $fp, 352
	st.w	$zero, $fp, 360
	st.d	$zero, $fp, 376
	st.d	$zero, $fp, 392
	ori	$s3, $zero, 1
	st.d	$s3, $fp, 416
	addi.d	$s2, $fp, 432
	st.w	$zero, $fp, 432
	addi.d	$a0, $fp, 536
.Ltmp13:                                # EH_LABEL
	pcaddu18i	$ra, %call36(CriticalSection_Init)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.1:
	st.w	$zero, $fp, 592
	st.d	$zero, $fp, 424
	st.w	$zero, $fp, 40
	st.w	$s3, $fp, 576
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB8_2:
.Ltmp15:                                # EH_LABEL
	move	$fp, $a0
.Ltmp16:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(Event_Close)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.3:                                # %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN12CBitmEncoderI10COutBufferED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9CInBufferD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB8_4:
.Ltmp18:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN9NCompress6NBZip28CEncoderC2Ev, .Lfunc_end8-_ZN9NCompress6NBZip28CEncoderC2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp13-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin1          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin1          #     jumps to .Ltmp18
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end8-.Ltmp17            #   Call between .Ltmp17 and .Lfunc_end8
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
	.section	.text._ZN12CBitmEncoderI10COutBufferED2Ev,"axG",@progbits,_ZN12CBitmEncoderI10COutBufferED2Ev,comdat
	.weak	_ZN12CBitmEncoderI10COutBufferED2Ev # -- Begin function _ZN12CBitmEncoderI10COutBufferED2Ev
	.p2align	5
	.type	_ZN12CBitmEncoderI10COutBufferED2Ev,@function
_ZN12CBitmEncoderI10COutBufferED2Ev:    # @_ZN12CBitmEncoderI10COutBufferED2Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
.Ltmp19:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.1:
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB9_3
# %bb.2:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp22:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp23:                                # EH_LABEL
.LBB9_3:                                # %_ZN10COutBufferD2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB9_4:
.Ltmp24:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB9_5:
.Ltmp21:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN12CBitmEncoderI10COutBufferED2Ev, .Lfunc_end9-_ZN12CBitmEncoderI10COutBufferED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN12CBitmEncoderI10COutBufferED2Ev,"aG",@progbits,_ZN12CBitmEncoderI10COutBufferED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table9:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp19-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin2          #     jumps to .Ltmp21
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp22-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin2          #     jumps to .Ltmp24
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp23-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end9-.Ltmp23            #   Call between .Ltmp23 and .Lfunc_end9
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
	.section	.text._ZN9CInBufferD2Ev,"axG",@progbits,_ZN9CInBufferD2Ev,comdat
	.weak	_ZN9CInBufferD2Ev               # -- Begin function _ZN9CInBufferD2Ev
	.p2align	5
	.type	_ZN9CInBufferD2Ev,@function
_ZN9CInBufferD2Ev:                      # @_ZN9CInBufferD2Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
.Ltmp25:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9CInBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.1:
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB10_3
# %bb.2:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp28:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp29:                                # EH_LABEL
.LBB10_3:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB10_4:
.Ltmp30:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB10_5:
.Ltmp27:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN9CInBufferD2Ev, .Lfunc_end10-_ZN9CInBufferD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9CInBufferD2Ev,"aG",@progbits,_ZN9CInBufferD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table10:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp25-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin3          #     jumps to .Ltmp27
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp28-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin3          #     jumps to .Ltmp30
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp29-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Lfunc_end10-.Ltmp29           #   Call between .Ltmp29 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
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
	.globl	_ZN9NCompress6NBZip28CEncoderD2Ev # -- Begin function _ZN9NCompress6NBZip28CEncoderD2Ev
	.p2align	5
	.type	_ZN9NCompress6NBZip28CEncoderD2Ev,@function
_ZN9NCompress6NBZip28CEncoderD2Ev:      # @_ZN9NCompress6NBZip28CEncoderD2Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTVN9NCompress6NBZip28CEncoderE)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN9NCompress6NBZip28CEncoderE)
	addi.d	$a1, $a0, 16
	st.d	$a1, $fp, 0
	addi.d	$a1, $a0, 96
	st.d	$a1, $fp, 8
	addi.d	$a0, $a0, 160
	st.d	$a0, $fp, 16
.Ltmp31:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.1:
	addi.d	$a0, $fp, 592
.Ltmp34:                                # EH_LABEL
	pcaddu18i	$ra, %call36(Event_Close)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.2:                                # %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit
	addi.d	$a0, $fp, 536
	pcaddu18i	$ra, %call36(pthread_mutex_destroy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 432
.Ltmp37:                                # EH_LABEL
	pcaddu18i	$ra, %call36(Event_Close)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.3:                                # %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit1
	addi.d	$a0, $fp, 352
.Ltmp40:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.4:
	ld.d	$a0, $fp, 376
	beqz	$a0, .LBB11_6
# %bb.5:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp43:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp44:                                # EH_LABEL
.LBB11_6:                               # %_ZN12CBitmEncoderI10COutBufferED2Ev.exit
	addi.d	$a0, $fp, 48
.Ltmp46:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9CInBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.7:
	ld.d	$a0, $fp, 72
	beqz	$a0, .LBB11_9
# %bb.8:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp49:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp50:                                # EH_LABEL
.LBB11_9:                               # %_ZN9CInBufferD2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB11_10:
.Ltmp51:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_11:
.Ltmp45:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_12:
.Ltmp48:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_13:
.Ltmp42:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_14:
.Ltmp39:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_15:
.Ltmp36:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_16:
.Ltmp33:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN9NCompress6NBZip28CEncoderD2Ev, .Lfunc_end11-_ZN9NCompress6NBZip28CEncoderD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp31-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin4          #     jumps to .Ltmp33
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp34-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin4          #     jumps to .Ltmp36
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp35-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp37-.Ltmp35                #   Call between .Ltmp35 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin4          #     jumps to .Ltmp39
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp40-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin4          #     jumps to .Ltmp42
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp43-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin4          #     jumps to .Ltmp45
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp46-.Lfunc_begin4          # >> Call Site 7 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin4          #     jumps to .Ltmp48
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp49-.Lfunc_begin4          # >> Call Site 8 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin4          #     jumps to .Ltmp51
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp50-.Lfunc_begin4          # >> Call Site 9 <<
	.uleb128 .Lfunc_end11-.Ltmp50           #   Call between .Ltmp50 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
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
	.globl	_ZN9NCompress6NBZip28CEncoder4FreeEv # -- Begin function _ZN9NCompress6NBZip28CEncoder4FreeEv
	.p2align	5
	.type	_ZN9NCompress6NBZip28CEncoder4FreeEv,@function
_ZN9NCompress6NBZip28CEncoder4FreeEv:   # @_ZN9NCompress6NBZip28CEncoder4FreeEv
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
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
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
	ld.d	$a0, $a0, 424
	beqz	$a0, .LBB12_12
# %bb.1:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 588
	addi.d	$a0, $fp, 432
	pcaddu18i	$ra, %call36(Event_Set)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 576
	lu12i.w	$s1, 8
	beqz	$a0, .LBB12_6
# %bb.2:                                # %.lr.ph
	move	$s0, $zero
	move	$s2, $zero
	ori	$s3, $s1, 3328
	ori	$s4, $s1, 3920
	b	.LBB12_4
	.p2align	4, , 16
.LBB12_3:                               #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a0, $s6, 24
	pcaddu18i	$ra, %call36(BigFree)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s5, $s0
	st.d	$zero, $s6, 24
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 576
	stx.d	$zero, $s5, $s0
	addi.d	$s2, $s2, 1
	add.d	$s0, $s0, $s4
	bgeu	$s2, $a0, .LBB12_6
.LBB12_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s5, $fp, 424
	ld.bu	$a0, $fp, 580
	add.d	$s6, $s5, $s0
	beqz	$a0, .LBB12_3
# %bb.5:                                #   in Loop: Header=BB12_4 Depth=1
	add.d	$a0, $s6, $s3
	pcaddu18i	$ra, %call36(Thread_Wait)
	jirl	$ra, $ra, 0
	b	.LBB12_3
.LBB12_6:                               # %._crit_edge
	ld.d	$a0, $fp, 424
	beqz	$a0, .LBB12_11
# %bb.7:
	ld.d	$a1, $a0, -8
	addi.d	$s0, $a0, -8
	ori	$a2, $s1, 3920
	mul.d	$s1, $a1, $a2
	beqz	$a1, .LBB12_10
# %bb.8:                                # %.preheader.preheader
	lu12i.w	$a1, -9
	ori	$s2, $a1, 176
	add.d	$s3, $a0, $s2
	move	$s4, $s1
	.p2align	4, , 16
.LBB12_9:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s3, $s4
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip211CThreadInfoD2Ev)
	jirl	$ra, $ra, 0
	add.d	$s4, $s4, $s2
	bnez	$s4, .LBB12_9
.LBB12_10:                              # %.loopexit
	addi.d	$a1, $s1, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPvm)
	jirl	$ra, $ra, 0
.LBB12_11:
	st.d	$zero, $fp, 424
.LBB12_12:
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end12:
	.size	_ZN9NCompress6NBZip28CEncoder4FreeEv, .Lfunc_end12-_ZN9NCompress6NBZip28CEncoder4FreeEv
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
.Lfunc_end13:
	.size	__clang_call_terminate, .Lfunc_end13-__clang_call_terminate
                                        # -- End function
	.text
	.globl	_ZThn8_N9NCompress6NBZip28CEncoderD1Ev # -- Begin function _ZThn8_N9NCompress6NBZip28CEncoderD1Ev
	.p2align	5
	.type	_ZThn8_N9NCompress6NBZip28CEncoderD1Ev,@function
_ZThn8_N9NCompress6NBZip28CEncoderD1Ev: # @_ZThn8_N9NCompress6NBZip28CEncoderD1Ev
# %bb.0:
	addi.d	$a0, $a0, -8
	pcaddu18i	$t8, %call36(_ZN9NCompress6NBZip28CEncoderD2Ev)
	jr	$t8
.Lfunc_end14:
	.size	_ZThn8_N9NCompress6NBZip28CEncoderD1Ev, .Lfunc_end14-_ZThn8_N9NCompress6NBZip28CEncoderD1Ev
                                        # -- End function
	.globl	_ZThn16_N9NCompress6NBZip28CEncoderD1Ev # -- Begin function _ZThn16_N9NCompress6NBZip28CEncoderD1Ev
	.p2align	5
	.type	_ZThn16_N9NCompress6NBZip28CEncoderD1Ev,@function
_ZThn16_N9NCompress6NBZip28CEncoderD1Ev: # @_ZThn16_N9NCompress6NBZip28CEncoderD1Ev
# %bb.0:
	addi.d	$a0, $a0, -16
	pcaddu18i	$t8, %call36(_ZN9NCompress6NBZip28CEncoderD2Ev)
	jr	$t8
.Lfunc_end15:
	.size	_ZThn16_N9NCompress6NBZip28CEncoderD1Ev, .Lfunc_end15-_ZThn16_N9NCompress6NBZip28CEncoderD1Ev
                                        # -- End function
	.globl	_ZN9NCompress6NBZip28CEncoderD0Ev # -- Begin function _ZN9NCompress6NBZip28CEncoderD0Ev
	.p2align	5
	.type	_ZN9NCompress6NBZip28CEncoderD0Ev,@function
_ZN9NCompress6NBZip28CEncoderD0Ev:      # @_ZN9NCompress6NBZip28CEncoderD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoderD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 712
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end16:
	.size	_ZN9NCompress6NBZip28CEncoderD0Ev, .Lfunc_end16-_ZN9NCompress6NBZip28CEncoderD0Ev
                                        # -- End function
	.globl	_ZThn8_N9NCompress6NBZip28CEncoderD0Ev # -- Begin function _ZThn8_N9NCompress6NBZip28CEncoderD0Ev
	.p2align	5
	.type	_ZThn8_N9NCompress6NBZip28CEncoderD0Ev,@function
_ZThn8_N9NCompress6NBZip28CEncoderD0Ev: # @_ZThn8_N9NCompress6NBZip28CEncoderD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	addi.d	$fp, $a0, -8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoderD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 712
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end17:
	.size	_ZThn8_N9NCompress6NBZip28CEncoderD0Ev, .Lfunc_end17-_ZThn8_N9NCompress6NBZip28CEncoderD0Ev
                                        # -- End function
	.globl	_ZThn16_N9NCompress6NBZip28CEncoderD0Ev # -- Begin function _ZThn16_N9NCompress6NBZip28CEncoderD0Ev
	.p2align	5
	.type	_ZThn16_N9NCompress6NBZip28CEncoderD0Ev,@function
_ZThn16_N9NCompress6NBZip28CEncoderD0Ev: # @_ZThn16_N9NCompress6NBZip28CEncoderD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	addi.d	$fp, $a0, -16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoderD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 712
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end18:
	.size	_ZThn16_N9NCompress6NBZip28CEncoderD0Ev, .Lfunc_end18-_ZThn16_N9NCompress6NBZip28CEncoderD0Ev
                                        # -- End function
	.globl	_ZN9NCompress6NBZip28CEncoder6CreateEv # -- Begin function _ZN9NCompress6NBZip28CEncoder6CreateEv
	.p2align	5
	.type	_ZN9NCompress6NBZip28CEncoder6CreateEv,@function
_ZN9NCompress6NBZip28CEncoder6CreateEv: # @_ZN9NCompress6NBZip28CEncoder6CreateEv
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	move	$fp, $a0
	ld.w	$a0, $a0, 432
	beqz	$a0, .LBB19_22
.LBB19_1:                               # %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit.thread
	ld.w	$a0, $fp, 592
	beqz	$a0, .LBB19_23
.LBB19_2:                               # %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit47.thread
	ld.d	$a0, $fp, 424
	beqz	$a0, .LBB19_4
# %bb.3:
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 576
	beq	$a0, $a1, .LBB19_26
.LBB19_4:
.Ltmp52:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.5:
	ld.w	$a0, $fp, 576
	bstrpick.d	$s3, $a0, 31, 0
	ori	$a1, $zero, 1
	sltu	$a1, $a1, $a0
	st.b	$a1, $fp, 580
	st.w	$a0, $fp, 40
	lu12i.w	$s0, 8
	ori	$s2, $s0, 3920
	mul.d	$s1, $s3, $s2
	addi.d	$a0, $s1, 8
.Ltmp54:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
# %bb.6:
	st.d	$s3, $a0, 0
	addi.d	$a1, $a0, 8
	beqz	$s3, .LBB19_24
# %bb.7:                                # %.preheader.preheader
	lu12i.w	$a2, -9
	ori	$a2, $a2, 176
	add.d	$a3, $s1, $a2
	ori	$a2, $zero, 8
	bltu	$a3, $s2, .LBB19_11
# %bb.8:                                # %vector.ph
	lu12i.w	$a2, -155938
	ori	$a2, $a2, 2533
	lu32i.d	$a2, -369952
	lu52i.d	$a2, $a2, 228
	mulh.du	$a2, $a3, $a2
	srli.d	$a2, $a2, 11
	addi.d	$a3, $a2, 1
	bstrpick.d	$a2, $a3, 49, 1
	slli.d	$a4, $a2, 1
	lu12i.w	$a6, 17
	ori	$a5, $a6, 3744
	mul.d	$a2, $a2, $a5
	addi.d	$a2, $a2, 8
	ori	$a6, $a6, 3168
	ori	$a7, $s0, 3344
	move	$t0, $a0
	move	$t1, $a4
	.p2align	4, , 16
.LBB19_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t2, $t0, $a6
	add.d	$t3, $t0, $a7
	st.d	$zero, $t0, 8
	st.d	$zero, $t3, 584
	st.d	$zero, $t0, 32
	st.d	$zero, $t3, 608
	stx.w	$zero, $t0, $a7
	stx.w	$zero, $t0, $a6
	st.w	$zero, $t3, 8
	st.w	$zero, $t2, 8
	st.w	$zero, $t3, 112
	st.w	$zero, $t2, 112
	st.w	$zero, $t3, 216
	st.w	$zero, $t2, 216
	addi.d	$t1, $t1, -2
	add.d	$t0, $t0, $a5
	bnez	$t1, .LBB19_9
# %bb.10:                               # %middle.block
	beq	$a3, $a4, .LBB19_13
.LBB19_11:                              # %.preheader.preheader83
	sub.d	$a3, $a2, $s1
	addi.d	$a3, $a3, -8
	add.d	$a2, $a0, $a2
	ori	$a4, $s0, 3336
	.p2align	4, , 16
.LBB19_12:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a2, $a4
	st.d	$zero, $a2, 0
	st.d	$zero, $a2, 24
	stx.w	$zero, $a2, $a4
	st.w	$zero, $a5, 8
	st.w	$zero, $a5, 112
	st.w	$zero, $a5, 216
	add.d	$a3, $a3, $s2
	add.d	$a2, $a2, $s2
	bnez	$a3, .LBB19_12
.LBB19_13:                              # %.lr.ph
	ori	$a2, $zero, 2
	st.d	$a1, $fp, 424
	bltu	$s3, $a2, .LBB19_25
# %bb.14:                               # %.lr.ph.split.preheader
	ori	$s5, $s0, 3320
	ori	$s6, $s0, 3344
	ori	$s7, $s0, 3448
	ori	$a0, $s0, 3552
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $s0, 3328
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZN9NCompress6NBZip2L8MFThreadEPv)
	addi.d	$a0, $a0, %pc_lo12(_ZN9NCompress6NBZip2L8MFThreadEPv)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s8, $zero
	move	$s4, $zero
	move	$s0, $zero
	b	.LBB19_16
	.p2align	4, , 16
.LBB19_15:                              #   in Loop: Header=BB19_16 Depth=1
	addi.d	$s0, $s0, 1
	addi.d	$s4, $s4, 1
	add.d	$s8, $s8, $s2
	bgeu	$s0, $s3, .LBB19_26
.LBB19_16:                              # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 424
	ld.bu	$a1, $fp, 580
	add.d	$s1, $a0, $s8
	stx.d	$fp, $s1, $s5
	beqz	$a1, .LBB19_15
# %bb.17:                               #   in Loop: Header=BB19_16 Depth=1
	add.d	$a0, $s1, $s6
	pcaddu18i	$ra, %call36(AutoResetEvent_CreateNotSignaled)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB19_28
# %bb.18:                               #   in Loop: Header=BB19_16 Depth=1
	add.d	$a0, $s1, $s7
	pcaddu18i	$ra, %call36(AutoResetEvent_CreateNotSignaled)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB19_28
# %bb.19:                               #   in Loop: Header=BB19_16 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $s1, $a0
	pcaddu18i	$ra, %call36(AutoResetEvent_CreateNotSignaled)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB19_28
# %bb.20:                               # %_ZN9NCompress6NBZip211CThreadInfo6CreateEv.exit
                                        #   in Loop: Header=BB19_16 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s1
	pcaddu18i	$ra, %call36(Thread_Create)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB19_28
# %bb.21:                               # %_ZN9NCompress6NBZip211CThreadInfo6CreateEv.exit._crit_edge
                                        #   in Loop: Header=BB19_16 Depth=1
	ld.wu	$s3, $fp, 576
	b	.LBB19_15
.LBB19_22:                              # %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit
	addi.d	$a0, $fp, 432
	pcaddu18i	$ra, %call36(ManualResetEvent_CreateNotSignaled)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB19_27
	b	.LBB19_1
.LBB19_23:                              # %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit47
	addi.d	$a0, $fp, 592
	pcaddu18i	$ra, %call36(ManualResetEvent_CreateNotSignaled)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB19_27
	b	.LBB19_2
.LBB19_24:                              # %.loopexit65.thread
	move	$a0, $zero
	st.d	$a1, $fp, 424
	b	.LBB19_27
.LBB19_25:                              # %.lr.ph.split.us
	ori	$a2, $s0, 3328
	stx.d	$fp, $a0, $a2
.LBB19_26:
	move	$a0, $zero
.LBB19_27:                              # %.loopexit
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
.LBB19_28:
	move	$s0, $a0
	st.w	$s4, $fp, 576
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder4FreeEv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB19_27
.LBB19_29:
.Ltmp56:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 14
	b	.LBB19_27
.Lfunc_end19:
	.size	_ZN9NCompress6NBZip28CEncoder6CreateEv, .Lfunc_end19-_ZN9NCompress6NBZip28CEncoder6CreateEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table19:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp52-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp55-.Ltmp52                #   Call between .Ltmp52 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin5          #     jumps to .Ltmp56
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp55-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Lfunc_end19-.Ltmp55           #   Call between .Ltmp55 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9NCompress6NBZip211CThreadInfoD2Ev,"axG",@progbits,_ZN9NCompress6NBZip211CThreadInfoD2Ev,comdat
	.weak	_ZN9NCompress6NBZip211CThreadInfoD2Ev # -- Begin function _ZN9NCompress6NBZip211CThreadInfoD2Ev
	.p2align	5
	.type	_ZN9NCompress6NBZip211CThreadInfoD2Ev,@function
_ZN9NCompress6NBZip211CThreadInfoD2Ev:  # @_ZN9NCompress6NBZip211CThreadInfoD2Ev
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
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
	ld.d	$a0, $a0, 24
.Ltmp57:                                # EH_LABEL
	pcaddu18i	$ra, %call36(BigFree)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.1:                                # %.noexc
	ld.d	$a0, $fp, 0
	st.d	$zero, $fp, 24
.Ltmp59:                                # EH_LABEL
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.2:
	st.d	$zero, $fp, 0
	lu12i.w	$s0, 8
	ori	$a0, $s0, 3552
	add.d	$a0, $fp, $a0
.Ltmp62:                                # EH_LABEL
	pcaddu18i	$ra, %call36(Event_Close)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
# %bb.3:                                # %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit
	ori	$a0, $s0, 3448
	add.d	$a0, $fp, $a0
.Ltmp65:                                # EH_LABEL
	pcaddu18i	$ra, %call36(Event_Close)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
# %bb.4:                                # %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit2
	ori	$a0, $s0, 3344
	add.d	$a0, $fp, $a0
.Ltmp68:                                # EH_LABEL
	pcaddu18i	$ra, %call36(Event_Close)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
# %bb.5:                                # %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit3
	ori	$a0, $s0, 3328
	add.d	$a0, $fp, $a0
.Ltmp71:                                # EH_LABEL
	pcaddu18i	$ra, %call36(Thread_Close)
	jirl	$ra, $ra, 0
.Ltmp72:                                # EH_LABEL
# %bb.6:                                # %_ZN8NWindows7CThreadD2Ev.exit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB20_7:
.Ltmp73:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB20_8:
.Ltmp70:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB20_9:
.Ltmp67:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB20_10:
.Ltmp64:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB20_11:
.Ltmp61:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN9NCompress6NBZip211CThreadInfoD2Ev, .Lfunc_end20-_ZN9NCompress6NBZip211CThreadInfoD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9NCompress6NBZip211CThreadInfoD2Ev,"aG",@progbits,_ZN9NCompress6NBZip211CThreadInfoD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table20:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp57-.Lfunc_begin6          # >> Call Site 1 <<
	.uleb128 .Ltmp60-.Ltmp57                #   Call between .Ltmp57 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin6          #     jumps to .Ltmp61
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp62-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin6          #     jumps to .Ltmp64
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp65-.Lfunc_begin6          # >> Call Site 3 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin6          #     jumps to .Ltmp67
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp68-.Lfunc_begin6          # >> Call Site 4 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin6          #     jumps to .Ltmp70
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp71-.Lfunc_begin6          # >> Call Site 5 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin6          #     jumps to .Ltmp73
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp72-.Lfunc_begin6          # >> Call Site 6 <<
	.uleb128 .Lfunc_end20-.Ltmp72           #   Call between .Ltmp72 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
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
	.globl	_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj # -- Begin function _ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj
	.p2align	5
	.type	_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj,@function
_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj: # @_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj
# %bb.0:
	blez	$a2, .LBB21_5
# %bb.1:                                # %.lr.ph.i
	ld.d	$a0, $a0, 32
	ld.w	$a3, $a0, 4
	b	.LBB21_3
	.p2align	4, , 16
.LBB21_2:                               #   in Loop: Header=BB21_3 Depth=1
	sll.w	$a3, $a4, $a2
	sub.d	$a1, $a1, $a3
	move	$a3, $a5
	blez	$a2, .LBB21_5
.LBB21_3:                               # =>This Inner Loop Header: Depth=1
	move	$a7, $a2
	slt	$a2, $a2, $a3
	masknez	$a4, $a3, $a2
	ld.bu	$a5, $a0, 8
	maskeqz	$a2, $a7, $a2
	or	$t0, $a2, $a4
	sub.w	$a2, $a7, $t0
	sll.w	$a5, $a5, $t0
	srl.w	$a4, $a1, $a2
	or	$a6, $a5, $a4
	st.b	$a6, $a0, 8
	sub.w	$a5, $a3, $t0
	st.w	$a5, $a0, 4
	blt	$a7, $a3, .LBB21_2
# %bb.4:                                #   in Loop: Header=BB21_3 Depth=1
	ld.wu	$a3, $a0, 0
	ld.d	$a5, $a0, 16
	addi.d	$a7, $a3, 1
	st.w	$a7, $a0, 0
	stx.b	$a6, $a5, $a3
	ori	$a5, $zero, 8
	st.w	$a5, $a0, 4
	b	.LBB21_2
.LBB21_5:                               # %_ZN9NCompress6NBZip216CMsbfEncoderTemp9WriteBitsEji.exit
	ret
.Lfunc_end21:
	.size	_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj, .Lfunc_end21-_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj
                                        # -- End function
	.globl	_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh # -- Begin function _ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh
	.p2align	5
	.type	_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh,@function
_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh: # @_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh
# %bb.0:
	ld.d	$a0, $a0, 32
	ld.w	$a3, $a0, 4
	ori	$a2, $zero, 8
	b	.LBB22_2
	.p2align	4, , 16
.LBB22_1:                               #   in Loop: Header=BB22_2 Depth=1
	sll.w	$a3, $a4, $a2
	sub.d	$a1, $a1, $a3
	move	$a3, $a5
	blez	$a2, .LBB22_4
.LBB22_2:                               # =>This Inner Loop Header: Depth=1
	move	$a7, $a2
	slt	$a2, $a2, $a3
	masknez	$a4, $a3, $a2
	ld.bu	$a5, $a0, 8
	maskeqz	$a2, $a7, $a2
	or	$t0, $a2, $a4
	sub.w	$a2, $a7, $t0
	sll.w	$a5, $a5, $t0
	srl.w	$a4, $a1, $a2
	or	$a6, $a5, $a4
	st.b	$a6, $a0, 8
	sub.w	$a5, $a3, $t0
	st.w	$a5, $a0, 4
	blt	$a7, $a3, .LBB22_1
# %bb.3:                                #   in Loop: Header=BB22_2 Depth=1
	ld.wu	$a3, $a0, 0
	ld.d	$a5, $a0, 16
	addi.d	$a7, $a3, 1
	st.w	$a7, $a0, 0
	stx.b	$a6, $a5, $a3
	ori	$a5, $zero, 8
	st.w	$a5, $a0, 4
	b	.LBB22_1
.LBB22_4:                               # %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit
	ret
.Lfunc_end22:
	.size	_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh, .Lfunc_end22-_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh
                                        # -- End function
	.globl	_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb # -- Begin function _ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb
	.p2align	5
	.type	_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb,@function
_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb: # @_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb
# %bb.0:
	ld.d	$a0, $a0, 32
	ld.w	$a3, $a0, 4
	ori	$a2, $zero, 1
	b	.LBB23_2
	.p2align	4, , 16
.LBB23_1:                               #   in Loop: Header=BB23_2 Depth=1
	sll.w	$a3, $a4, $a2
	sub.d	$a1, $a1, $a3
	move	$a3, $a5
	blez	$a2, .LBB23_4
.LBB23_2:                               # =>This Inner Loop Header: Depth=1
	move	$a7, $a2
	slt	$a2, $a2, $a3
	masknez	$a4, $a3, $a2
	ld.bu	$a5, $a0, 8
	maskeqz	$a2, $a7, $a2
	or	$t0, $a2, $a4
	sub.w	$a2, $a7, $t0
	sll.w	$a5, $a5, $t0
	srl.w	$a4, $a1, $a2
	or	$a6, $a5, $a4
	st.b	$a6, $a0, 8
	sub.w	$a5, $a3, $t0
	st.w	$a5, $a0, 4
	blt	$a7, $a3, .LBB23_1
# %bb.3:                                #   in Loop: Header=BB23_2 Depth=1
	ld.wu	$a3, $a0, 0
	ld.d	$a5, $a0, 16
	addi.d	$a7, $a3, 1
	st.w	$a7, $a0, 0
	stx.b	$a6, $a5, $a3
	ori	$a5, $zero, 8
	st.w	$a5, $a0, 4
	b	.LBB23_1
.LBB23_4:                               # %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit
	ret
.Lfunc_end23:
	.size	_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb, .Lfunc_end23-_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb
                                        # -- End function
	.globl	_ZN9NCompress6NBZip211CThreadInfo9WriteCrc2Ej # -- Begin function _ZN9NCompress6NBZip211CThreadInfo9WriteCrc2Ej
	.p2align	5
	.type	_ZN9NCompress6NBZip211CThreadInfo9WriteCrc2Ej,@function
_ZN9NCompress6NBZip211CThreadInfo9WriteCrc2Ej: # @_ZN9NCompress6NBZip211CThreadInfo9WriteCrc2Ej
# %bb.0:
	ld.d	$a2, $a0, 32
	ld.w	$a5, $a2, 4
	bstrpick.d	$a3, $a1, 31, 24
	ori	$a4, $zero, 8
	b	.LBB24_2
	.p2align	4, , 16
.LBB24_1:                               #   in Loop: Header=BB24_2 Depth=1
	sll.w	$a5, $a6, $a4
	sub.d	$a3, $a3, $a5
	move	$a5, $a7
	blez	$a4, .LBB24_4
.LBB24_2:                               # =>This Inner Loop Header: Depth=1
	move	$t1, $a4
	slt	$a4, $a4, $a5
	masknez	$a6, $a5, $a4
	ld.bu	$a7, $a2, 8
	maskeqz	$a4, $t1, $a4
	or	$t2, $a4, $a6
	sub.w	$a4, $t1, $t2
	sll.w	$a7, $a7, $t2
	srl.w	$a6, $a3, $a4
	or	$t0, $a7, $a6
	st.b	$t0, $a2, 8
	sub.w	$a7, $a5, $t2
	st.w	$a7, $a2, 4
	blt	$t1, $a5, .LBB24_1
# %bb.3:                                #   in Loop: Header=BB24_2 Depth=1
	ld.wu	$a5, $a2, 0
	ld.d	$a7, $a2, 16
	addi.d	$t1, $a5, 1
	st.w	$t1, $a2, 0
	stx.b	$t0, $a7, $a5
	ori	$a7, $zero, 8
	st.w	$a7, $a2, 4
	b	.LBB24_1
.LBB24_4:                               # %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit
	ld.d	$a2, $a0, 32
	ld.w	$a5, $a2, 4
	bstrpick.d	$a3, $a1, 23, 16
	ori	$a4, $zero, 8
	b	.LBB24_6
	.p2align	4, , 16
.LBB24_5:                               #   in Loop: Header=BB24_6 Depth=1
	sll.w	$a5, $a6, $a4
	sub.d	$a3, $a3, $a5
	move	$a5, $a7
	blez	$a4, .LBB24_8
.LBB24_6:                               # =>This Inner Loop Header: Depth=1
	move	$t1, $a4
	slt	$a4, $a4, $a5
	masknez	$a6, $a5, $a4
	ld.bu	$a7, $a2, 8
	maskeqz	$a4, $t1, $a4
	or	$t2, $a4, $a6
	sub.w	$a4, $t1, $t2
	sll.w	$a7, $a7, $t2
	srl.w	$a6, $a3, $a4
	or	$t0, $a7, $a6
	st.b	$t0, $a2, 8
	sub.w	$a7, $a5, $t2
	st.w	$a7, $a2, 4
	blt	$t1, $a5, .LBB24_5
# %bb.7:                                #   in Loop: Header=BB24_6 Depth=1
	ld.wu	$a5, $a2, 0
	ld.d	$a7, $a2, 16
	addi.d	$t1, $a5, 1
	st.w	$t1, $a2, 0
	stx.b	$t0, $a7, $a5
	ori	$a7, $zero, 8
	st.w	$a7, $a2, 4
	b	.LBB24_5
.LBB24_8:                               # %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit.1
	ld.d	$a2, $a0, 32
	ld.w	$a5, $a2, 4
	bstrpick.d	$a3, $a1, 15, 8
	ori	$a4, $zero, 8
	b	.LBB24_10
	.p2align	4, , 16
.LBB24_9:                               #   in Loop: Header=BB24_10 Depth=1
	sll.w	$a5, $a6, $a4
	sub.d	$a3, $a3, $a5
	move	$a5, $a7
	blez	$a4, .LBB24_12
.LBB24_10:                              # =>This Inner Loop Header: Depth=1
	move	$t1, $a4
	slt	$a4, $a4, $a5
	masknez	$a6, $a5, $a4
	ld.bu	$a7, $a2, 8
	maskeqz	$a4, $t1, $a4
	or	$t2, $a4, $a6
	sub.w	$a4, $t1, $t2
	sll.w	$a7, $a7, $t2
	srl.w	$a6, $a3, $a4
	or	$t0, $a7, $a6
	st.b	$t0, $a2, 8
	sub.w	$a7, $a5, $t2
	st.w	$a7, $a2, 4
	blt	$t1, $a5, .LBB24_9
# %bb.11:                               #   in Loop: Header=BB24_10 Depth=1
	ld.wu	$a5, $a2, 0
	ld.d	$a7, $a2, 16
	addi.d	$t1, $a5, 1
	st.w	$t1, $a2, 0
	stx.b	$t0, $a7, $a5
	ori	$a7, $zero, 8
	st.w	$a7, $a2, 4
	b	.LBB24_9
.LBB24_12:                              # %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit.2
	ld.d	$a0, $a0, 32
	ld.w	$a3, $a0, 4
	andi	$a1, $a1, 255
	ori	$a2, $zero, 8
	b	.LBB24_14
	.p2align	4, , 16
.LBB24_13:                              #   in Loop: Header=BB24_14 Depth=1
	sll.w	$a3, $a4, $a2
	sub.d	$a1, $a1, $a3
	move	$a3, $a5
	blez	$a2, .LBB24_16
.LBB24_14:                              # =>This Inner Loop Header: Depth=1
	move	$a7, $a2
	slt	$a2, $a2, $a3
	masknez	$a4, $a3, $a2
	ld.bu	$a5, $a0, 8
	maskeqz	$a2, $a7, $a2
	or	$t0, $a2, $a4
	sub.w	$a2, $a7, $t0
	sll.w	$a5, $a5, $t0
	srl.w	$a4, $a1, $a2
	or	$a6, $a5, $a4
	st.b	$a6, $a0, 8
	sub.w	$a5, $a3, $t0
	st.w	$a5, $a0, 4
	blt	$a7, $a3, .LBB24_13
# %bb.15:                               #   in Loop: Header=BB24_14 Depth=1
	ld.wu	$a3, $a0, 0
	ld.d	$a5, $a0, 16
	addi.d	$a7, $a3, 1
	st.w	$a7, $a0, 0
	stx.b	$a6, $a5, $a3
	ori	$a5, $zero, 8
	st.w	$a5, $a0, 4
	b	.LBB24_13
.LBB24_16:                              # %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit.3
	ret
.Lfunc_end24:
	.size	_ZN9NCompress6NBZip211CThreadInfo9WriteCrc2Ej, .Lfunc_end24-_ZN9NCompress6NBZip211CThreadInfo9WriteCrc2Ej
                                        # -- End function
	.globl	_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj # -- Begin function _ZN9NCompress6NBZip28CEncoder9WriteBitsEjj
	.p2align	5
	.type	_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj,@function
_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj: # @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB25_13
# %bb.1:                                # %.lr.ph.i
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
	move	$s1, $a2
	move	$s0, $a1
	move	$fp, $a0
	ld.w	$a1, $a0, 408
	ld.bu	$a0, $a0, 412
	bltu	$a2, $a1, .LBB25_11
# %bb.2:
	sub.w	$s1, $s1, $a1
	ld.wu	$a1, $fp, 360
	srl.w	$s4, $s0, $s1
	ld.d	$a2, $fp, 352
	or	$a0, $a0, $s4
	addi.d	$a3, $a1, 1
	st.w	$a3, $fp, 360
	stx.b	$a0, $a2, $a1
	ld.w	$a0, $fp, 360
	ld.w	$a1, $fp, 364
	addi.d	$s2, $fp, 352
	bne	$a0, $a1, .LBB25_4
# %bb.3:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB25_4:                               # %_ZN10COutBuffer9WriteByteEh.exit.i.peel
	ori	$s3, $zero, 8
	st.w	$s3, $fp, 408
	st.b	$zero, $fp, 412
	beqz	$s1, .LBB25_12
# %bb.5:                                # %.peel.next.preheader
	sll.w	$a0, $s4, $s1
	sub.d	$s0, $s0, $a0
	ori	$s4, $zero, 7
	b	.LBB25_7
	.p2align	4, , 16
.LBB25_6:                               # %_ZN10COutBuffer9WriteByteEh.exit.i
                                        #   in Loop: Header=BB25_7 Depth=1
	sll.w	$a0, $s5, $s1
	sub.d	$s0, $s0, $a0
	st.w	$s3, $fp, 408
	st.b	$zero, $fp, 412
	beqz	$s1, .LBB25_12
.LBB25_7:                               # %.peel.next
                                        # =>This Inner Loop Header: Depth=1
	bgeu	$s4, $s1, .LBB25_10
# %bb.8:                                #   in Loop: Header=BB25_7 Depth=1
	ld.wu	$a0, $fp, 360
	addi.w	$s1, $s1, -8
	ld.d	$a1, $fp, 352
	srl.w	$s5, $s0, $s1
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 360
	stx.b	$s5, $a1, $a0
	ld.w	$a0, $fp, 360
	ld.w	$a1, $fp, 364
	bne	$a0, $a1, .LBB25_6
# %bb.9:                                #   in Loop: Header=BB25_7 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	b	.LBB25_6
.LBB25_10:
	move	$a0, $zero
	ori	$a1, $zero, 8
.LBB25_11:                              # %.loopexit
	sub.d	$a1, $a1, $s1
	st.w	$a1, $fp, 408
	sll.w	$a1, $s0, $a1
	or	$a0, $a0, $a1
	st.b	$a0, $fp, 412
.LBB25_12:
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
.LBB25_13:                              # %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit
	ret
.Lfunc_end25:
	.size	_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj, .Lfunc_end25-_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress6NBZip28CEncoder9WriteByteEh # -- Begin function _ZN9NCompress6NBZip28CEncoder9WriteByteEh
	.p2align	5
	.type	_ZN9NCompress6NBZip28CEncoder9WriteByteEh,@function
_ZN9NCompress6NBZip28CEncoder9WriteByteEh: # @_ZN9NCompress6NBZip28CEncoder9WriteByteEh
	.cfi_startproc
# %bb.0:
	ori	$a2, $zero, 8
	pcaddu18i	$t8, %call36(_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj)
	jr	$t8
.Lfunc_end26:
	.size	_ZN9NCompress6NBZip28CEncoder9WriteByteEh, .Lfunc_end26-_ZN9NCompress6NBZip28CEncoder9WriteByteEh
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress6NBZip28CEncoder8WriteBitEb # -- Begin function _ZN9NCompress6NBZip28CEncoder8WriteBitEb
	.p2align	5
	.type	_ZN9NCompress6NBZip28CEncoder8WriteBitEb,@function
_ZN9NCompress6NBZip28CEncoder8WriteBitEb: # @_ZN9NCompress6NBZip28CEncoder8WriteBitEb
	.cfi_startproc
# %bb.0:
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj)
	jr	$t8
.Lfunc_end27:
	.size	_ZN9NCompress6NBZip28CEncoder8WriteBitEb, .Lfunc_end27-_ZN9NCompress6NBZip28CEncoder8WriteBitEb
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress6NBZip28CEncoder8WriteCrcEj # -- Begin function _ZN9NCompress6NBZip28CEncoder8WriteCrcEj
	.p2align	5
	.type	_ZN9NCompress6NBZip28CEncoder8WriteCrcEj,@function
_ZN9NCompress6NBZip28CEncoder8WriteCrcEj: # @_ZN9NCompress6NBZip28CEncoder8WriteCrcEj
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
	move	$s0, $a0
	bstrpick.d	$a1, $a1, 31, 24
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $fp, 23, 16
	ori	$a2, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $fp, 15, 8
	ori	$a2, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj)
	jirl	$ra, $ra, 0
	andi	$a1, $fp, 255
	ori	$a2, $zero, 8
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj)
	jr	$t8
.Lfunc_end28:
	.size	_ZN9NCompress6NBZip28CEncoder8WriteCrcEj, .Lfunc_end28-_ZN9NCompress6NBZip28CEncoder8WriteCrcEj
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN9NCompress6NBZip211CThreadInfo11EncodeBlockEPKhj
.LCPI29_0:
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI29_1:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
.LCPI29_2:
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI29_3:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
.LCPI29_4:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI29_5:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
.LCPI29_6:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI29_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI29_8:
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
	.text
	.globl	_ZN9NCompress6NBZip211CThreadInfo11EncodeBlockEPKhj
	.p2align	5
	.type	_ZN9NCompress6NBZip211CThreadInfo11EncodeBlockEPKhj,@function
_ZN9NCompress6NBZip211CThreadInfo11EncodeBlockEPKhj: # @_ZN9NCompress6NBZip211CThreadInfo11EncodeBlockEPKhj
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -1856
	.cfi_def_cfa_offset 1856
	st.d	$ra, $sp, 1848                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1840                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1832                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1824                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1816                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1808                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1800                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1792                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1784                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1776                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1768                  # 8-byte Folded Spill
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
	ld.d	$a0, $a0, 32
	ld.w	$a3, $a0, 4
	move	$s0, $a2
	move	$s1, $a1
	move	$a1, $zero
	ori	$a2, $zero, 1
	b	.LBB29_2
	.p2align	4, , 16
.LBB29_1:                               #   in Loop: Header=BB29_2 Depth=1
	sll.w	$a3, $a4, $a2
	sub.d	$a1, $a1, $a3
	move	$a3, $a5
	blez	$a2, .LBB29_4
.LBB29_2:                               # =>This Inner Loop Header: Depth=1
	move	$a7, $a2
	slt	$a2, $a2, $a3
	masknez	$a4, $a3, $a2
	ld.bu	$a5, $a0, 8
	maskeqz	$a2, $a7, $a2
	or	$t0, $a2, $a4
	sub.w	$a2, $a7, $t0
	sll.w	$a5, $a5, $t0
	srl.w	$a4, $a1, $a2
	or	$a6, $a5, $a4
	st.b	$a6, $a0, 8
	sub.w	$a5, $a3, $t0
	st.w	$a5, $a0, 4
	blt	$a7, $a3, .LBB29_1
# %bb.3:                                #   in Loop: Header=BB29_2 Depth=1
	ld.wu	$a3, $a0, 0
	ld.d	$a5, $a0, 16
	addi.d	$a7, $a3, 1
	st.w	$a7, $a0, 0
	stx.b	$a6, $a5, $a3
	ori	$a5, $zero, 8
	st.w	$a5, $a0, 4
	b	.LBB29_1
.LBB29_4:                               # %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit
	ld.d	$a0, $fp, 24
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(BlockSort)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 24
	bstrpick.d	$a2, $a0, 31, 0
	slli.d	$a2, $a2, 2
	stx.w	$s0, $a1, $a2
	ld.d	$a1, $fp, 32
	ld.w	$a3, $a1, 4
	ori	$a2, $zero, 24
	b	.LBB29_6
	.p2align	4, , 16
.LBB29_5:                               #   in Loop: Header=BB29_6 Depth=1
	sll.w	$a3, $a4, $a2
	sub.d	$a0, $a0, $a3
	move	$a3, $a5
	blez	$a2, .LBB29_8
.LBB29_6:                               # =>This Inner Loop Header: Depth=1
	move	$a7, $a2
	slt	$a2, $a2, $a3
	masknez	$a4, $a3, $a2
	ld.bu	$a5, $a1, 8
	maskeqz	$a2, $a7, $a2
	or	$t0, $a2, $a4
	sub.w	$a2, $a7, $t0
	sll.w	$a5, $a5, $t0
	srl.w	$a4, $a0, $a2
	or	$a6, $a5, $a4
	st.b	$a6, $a1, 8
	sub.w	$a5, $a3, $t0
	st.w	$a5, $a1, 4
	blt	$a7, $a3, .LBB29_5
# %bb.7:                                #   in Loop: Header=BB29_6 Depth=1
	ld.wu	$a3, $a1, 0
	ld.d	$a5, $a1, 16
	addi.d	$a7, $a3, 1
	st.w	$a7, $a1, 0
	stx.b	$a6, $a5, $a3
	ori	$a5, $zero, 8
	st.w	$a5, $a1, 4
	b	.LBB29_5
.LBB29_8:                               # %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit
	addi.d	$s2, $sp, 480
	addi.d	$a0, $sp, 480
	ori	$a2, $zero, 256
	ori	$s4, $zero, 256
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vrepli.b	$vr8, 0
	vst	$vr8, $sp, 280
	beqz	$s0, .LBB29_22
# %bb.9:                                # %iter.check
	ori	$a1, $zero, 4
	bstrpick.d	$a0, $s0, 31, 0
	bgeu	$s0, $a1, .LBB29_11
# %bb.10:
	move	$a1, $zero
	b	.LBB29_20
.LBB29_11:                              # %vector.main.loop.iter.check
	ori	$a1, $zero, 16
	bgeu	$s0, $a1, .LBB29_13
# %bb.12:
	move	$a1, $zero
	b	.LBB29_17
.LBB29_13:                              # %vector.ph
	andi	$a2, $a0, 12
	bstrpick.d	$a1, $a0, 31, 4
	slli.d	$a1, $a1, 4
	addi.d	$a3, $sp, 480
	ori	$a4, $zero, 1
	move	$a5, $s1
	move	$a6, $a1
	.p2align	4, , 16
.LBB29_14:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vbsrl.v	$vr1, $vr0, 14
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsllwil.du.wu	$vr1, $vr1, 0
	vbsrl.v	$vr2, $vr0, 12
	vsllwil.hu.bu	$vr2, $vr2, 0
	vsllwil.wu.hu	$vr2, $vr2, 0
	vsllwil.du.wu	$vr2, $vr2, 0
	vbsrl.v	$vr3, $vr0, 10
	vsllwil.hu.bu	$vr3, $vr3, 0
	vsllwil.wu.hu	$vr3, $vr3, 0
	vsllwil.du.wu	$vr3, $vr3, 0
	vbsrl.v	$vr4, $vr0, 8
	vsllwil.hu.bu	$vr4, $vr4, 0
	vsllwil.wu.hu	$vr4, $vr4, 0
	vsllwil.du.wu	$vr4, $vr4, 0
	vsrli.d	$vr5, $vr0, 48
	vsllwil.hu.bu	$vr5, $vr5, 0
	vsllwil.wu.hu	$vr5, $vr5, 0
	vsllwil.du.wu	$vr5, $vr5, 0
	vsrli.d	$vr6, $vr0, 32
	vsllwil.hu.bu	$vr6, $vr6, 0
	vsllwil.wu.hu	$vr6, $vr6, 0
	vsllwil.du.wu	$vr6, $vr6, 0
	vshuf4i.b	$vr7, $vr0, 14
	vsllwil.hu.bu	$vr7, $vr7, 0
	vsllwil.wu.hu	$vr7, $vr7, 0
	vsllwil.du.wu	$vr7, $vr7, 0
	vsllwil.hu.bu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsllwil.du.wu	$vr0, $vr0, 0
	vpickve2gr.d	$a7, $vr0, 0
	vpickve2gr.d	$t0, $vr0, 1
	vpickve2gr.d	$t1, $vr7, 0
	vpickve2gr.d	$t2, $vr7, 1
	vpickve2gr.d	$t3, $vr6, 0
	vpickve2gr.d	$t4, $vr6, 1
	vpickve2gr.d	$t5, $vr5, 0
	vpickve2gr.d	$t6, $vr5, 1
	vpickve2gr.d	$t7, $vr4, 0
	vpickve2gr.d	$t8, $vr4, 1
	vpickve2gr.d	$s3, $vr3, 0
	vpickve2gr.d	$s5, $vr3, 1
	vpickve2gr.d	$s6, $vr2, 0
	vpickve2gr.d	$s7, $vr2, 1
	vpickve2gr.d	$s8, $vr1, 0
	vpickve2gr.d	$ra, $vr1, 1
	stx.b	$a4, $a7, $a3
	stx.b	$a4, $t0, $a3
	stx.b	$a4, $t1, $a3
	stx.b	$a4, $t2, $a3
	stx.b	$a4, $t3, $a3
	stx.b	$a4, $t4, $a3
	stx.b	$a4, $t5, $a3
	stx.b	$a4, $t6, $a3
	stx.b	$a4, $t7, $a3
	stx.b	$a4, $t8, $a3
	stx.b	$a4, $s3, $a3
	stx.b	$a4, $s5, $a3
	stx.b	$a4, $s6, $a3
	stx.b	$a4, $s7, $a3
	stx.b	$a4, $s8, $a3
	stx.b	$a4, $ra, $a3
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB29_14
# %bb.15:                               # %middle.block
	beq	$a1, $a0, .LBB29_22
# %bb.16:                               # %vec.epilog.iter.check
	beqz	$a2, .LBB29_20
.LBB29_17:                              # %vec.epilog.ph
	move	$a3, $a1
	bstrpick.d	$a1, $a0, 31, 2
	slli.d	$a1, $a1, 2
	sub.d	$a2, $a3, $a1
	add.d	$a3, $s1, $a3
	addi.d	$a4, $sp, 480
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB29_18:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, 0
	vinsgr2vr.w	$vr0, $a6, 0
	vshuf4i.b	$vr1, $vr0, 14
	vsllwil.hu.bu	$vr1, $vr1, 0
	vsllwil.wu.hu	$vr1, $vr1, 0
	vsllwil.du.wu	$vr1, $vr1, 0
	vsllwil.hu.bu	$vr0, $vr0, 0
	vsllwil.wu.hu	$vr0, $vr0, 0
	vsllwil.du.wu	$vr0, $vr0, 0
	vpickve2gr.d	$a6, $vr0, 0
	vpickve2gr.d	$a7, $vr0, 1
	vpickve2gr.d	$t0, $vr1, 0
	vpickve2gr.d	$t1, $vr1, 1
	stx.b	$a5, $a6, $a4
	stx.b	$a5, $a7, $a4
	stx.b	$a5, $t0, $a4
	stx.b	$a5, $t1, $a4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB29_18
# %bb.19:                               # %vec.epilog.middle.block
	beq	$a1, $a0, .LBB29_22
.LBB29_20:                              # %.lr.ph.preheader
	add.d	$a2, $s1, $a1
	sub.d	$a0, $a0, $a1
	addi.d	$a1, $sp, 480
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB29_21:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	stx.b	$a3, $a4, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB29_21
.LBB29_22:                              # %.preheader409.preheader
	move	$a0, $zero
	move	$s3, $zero
	addi.d	$a1, $sp, 280
	ori	$a2, $zero, 1
	addi.d	$a3, $sp, 1512
	b	.LBB29_24
	.p2align	4, , 16
.LBB29_23:                              #   in Loop: Header=BB29_24 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s4, .LBB29_26
.LBB29_24:                              # %.preheader409
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a4, $a0, $s2
	beqz	$a4, .LBB29_23
# %bb.25:                               #   in Loop: Header=BB29_24 Depth=1
	bstrpick.d	$a4, $a0, 31, 4
	stx.b	$a0, $s3, $a3
	addi.w	$s3, $s3, 1
	stx.b	$a2, $a4, $a1
	b	.LBB29_23
.LBB29_26:                              # %.preheader408.preheader
	move	$a0, $zero
	addi.d	$a1, $sp, 280
	ori	$a2, $zero, 16
	b	.LBB29_28
	.p2align	4, , 16
.LBB29_27:                              # %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit337
                                        #   in Loop: Header=BB29_28 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a2, .LBB29_32
.LBB29_28:                              # %.preheader408
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_30 Depth 2
	ld.d	$a3, $fp, 32
	ldx.bu	$a4, $a0, $a1
	ld.w	$a6, $a3, 4
	ori	$a5, $zero, 1
	b	.LBB29_30
	.p2align	4, , 16
.LBB29_29:                              #   in Loop: Header=BB29_30 Depth=2
	sll.w	$a6, $a7, $a5
	sub.d	$a4, $a4, $a6
	move	$a6, $t0
	blez	$a5, .LBB29_27
.LBB29_30:                              #   Parent Loop BB29_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t2, $a5
	slt	$a5, $a5, $a6
	masknez	$a7, $a6, $a5
	ld.bu	$t0, $a3, 8
	maskeqz	$a5, $t2, $a5
	or	$t3, $a5, $a7
	sub.w	$a5, $t2, $t3
	sll.w	$t0, $t0, $t3
	srl.w	$a7, $a4, $a5
	or	$t1, $t0, $a7
	st.b	$t1, $a3, 8
	sub.w	$t0, $a6, $t3
	st.w	$t0, $a3, 4
	blt	$t2, $a6, .LBB29_29
# %bb.31:                               #   in Loop: Header=BB29_30 Depth=2
	ld.wu	$a6, $a3, 0
	ld.d	$t0, $a3, 16
	addi.d	$t2, $a6, 1
	st.w	$t2, $a3, 0
	stx.b	$t1, $t0, $a6
	ori	$t0, $zero, 8
	st.w	$t0, $a3, 4
	b	.LBB29_29
.LBB29_32:                              # %.preheader407.preheader
	move	$a0, $zero
	addi.d	$a1, $sp, 280
	addi.d	$a2, $sp, 480
	ori	$a3, $zero, 256
	b	.LBB29_34
	.p2align	4, , 16
.LBB29_33:                              # %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit342
                                        #   in Loop: Header=BB29_34 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a3, .LBB29_39
.LBB29_34:                              # %.preheader407
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_37 Depth 2
	bstrpick.d	$a4, $a0, 31, 4
	ldx.bu	$a4, $a4, $a1
	beqz	$a4, .LBB29_33
# %bb.35:                               #   in Loop: Header=BB29_34 Depth=1
	ld.d	$a4, $fp, 32
	ldx.bu	$a5, $a0, $a2
	ld.w	$a7, $a4, 4
	ori	$a6, $zero, 1
	b	.LBB29_37
	.p2align	4, , 16
.LBB29_36:                              #   in Loop: Header=BB29_37 Depth=2
	sll.w	$a7, $t0, $a6
	sub.d	$a5, $a5, $a7
	move	$a7, $t1
	blez	$a6, .LBB29_33
.LBB29_37:                              #   Parent Loop BB29_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t3, $a6
	slt	$a6, $a6, $a7
	masknez	$t0, $a7, $a6
	ld.bu	$t1, $a4, 8
	maskeqz	$a6, $t3, $a6
	or	$t4, $a6, $t0
	sub.w	$a6, $t3, $t4
	sll.w	$t1, $t1, $t4
	srl.w	$t0, $a5, $a6
	or	$t2, $t1, $t0
	st.b	$t2, $a4, 8
	sub.w	$t1, $a7, $t4
	st.w	$t1, $a4, 4
	blt	$t3, $a7, .LBB29_36
# %bb.38:                               #   in Loop: Header=BB29_37 Depth=2
	ld.wu	$a7, $a4, 0
	ld.d	$t1, $a4, 16
	addi.d	$t3, $a7, 1
	st.w	$t3, $a4, 0
	stx.b	$t2, $t1, $a7
	ori	$t1, $zero, 8
	st.w	$t1, $a4, 4
	b	.LBB29_36
.LBB29_39:
	vst	$vr8, $sp, 208                  # 16-byte Folded Spill
	ld.d	$s2, $fp, 8
	addi.d	$a0, $sp, 480
	ori	$a2, $zero, 1032
	addi.d	$s4, $sp, 480
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	move	$a0, $zero
	ld.d	$a2, $fp, 24
	addi.d	$a3, $s1, -1
	ori	$a4, $zero, 1
	sltu	$a5, $a4, $s0
	masknez	$a6, $a4, $a5
	maskeqz	$a5, $s0, $a5
	or	$a5, $a5, $a6
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a6, $sp, 1496
	addi.w	$a7, $zero, -3
	ori	$t0, $zero, 0
	ori	$t1, $zero, 0
	lu32i.d	$t1, -1
	addi.d	$t2, $sp, 1512
	lu32i.d	$t0, 1
	ori	$t3, $zero, 8
	ori	$t4, $zero, 7
	ori	$t5, $zero, 254
	ori	$t7, $zero, 15
.LBB29_40:                              # %.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_41 Depth 2
                                        #       Child Loop BB29_42 Depth 3
                                        #       Child Loop BB29_44 Depth 3
                                        #       Child Loop BB29_50 Depth 3
                                        #       Child Loop BB29_53 Depth 3
                                        #     Child Loop BB29_57 Depth 2
	move	$s0, $zero
	.p2align	4, , 16
.LBB29_41:                              #   Parent Loop BB29_40 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_42 Depth 3
                                        #       Child Loop BB29_44 Depth 3
                                        #       Child Loop BB29_50 Depth 3
                                        #       Child Loop BB29_53 Depth 3
	slli.d	$t6, $a1, 2
	ldx.wu	$t6, $a2, $t6
	ldx.bu	$s5, $a3, $t6
	move	$s1, $zero
	move	$s6, $a7
	move	$t8, $t1
	.p2align	4, , 16
.LBB29_42:                              #   Parent Loop BB29_40 Depth=1
                                        #     Parent Loop BB29_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$t6, $s1, $t2
	move	$s7, $s6
	addi.d	$s1, $s1, 1
	add.d	$t8, $t8, $t0
	addi.d	$s6, $s6, 1
	bne	$t6, $s5, .LBB29_42
# %bb.43:                               # %.preheader28.i
                                        #   in Loop: Header=BB29_41 Depth=2
	addi.d	$s6, $s1, -1
	bltu	$s6, $t3, .LBB29_46
	.p2align	4, , 16
.LBB29_44:                              # %.lr.ph.i
                                        #   Parent Loop BB29_40 Depth=1
                                        #     Parent Loop BB29_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t6, $t2, $s7
	ld.w	$s6, $t6, -1
	ld.h	$s8, $t6, -3
	ld.h	$ra, $t6, -5
	stx.w	$s6, $s7, $t2
	st.h	$s8, $t6, -2
	st.h	$ra, $t6, -4
	addi.d	$t6, $s7, -5
	addi.d	$s7, $s7, -8
	bltu	$t4, $t6, .LBB29_44
# %bb.45:                               # %.preheader.i.loopexit
                                        #   in Loop: Header=BB29_41 Depth=2
	addi.d	$s6, $s7, 3
.LBB29_46:                              # %.preheader.i
                                        #   in Loop: Header=BB29_41 Depth=2
	beqz	$s6, .LBB29_54
# %bb.47:                               # %.lr.ph31.i.preheader
                                        #   in Loop: Header=BB29_41 Depth=2
	addi.w	$t6, $s6, 0
	slti	$s7, $t6, 1
	masknez	$s8, $a4, $s7
	maskeqz	$t6, $t6, $s7
	or	$t6, $t6, $s8
	sub.w	$t6, $s6, $t6
	bgeu	$t6, $t7, .LBB29_49
# %bb.48:                               #   in Loop: Header=BB29_41 Depth=2
	move	$s7, $s6
	b	.LBB29_52
	.p2align	4, , 16
.LBB29_49:                              # %vector.ph634
                                        #   in Loop: Header=BB29_41 Depth=2
	bstrpick.d	$t6, $t6, 31, 0
	addi.d	$s8, $t6, 1
	bstrpick.d	$t6, $s8, 32, 4
	slli.d	$t6, $t6, 4
	sub.d	$s7, $s6, $t6
	add.d	$s6, $a6, $s6
	move	$ra, $t6
	.p2align	4, , 16
.LBB29_50:                              # %vector.body637
                                        #   Parent Loop BB29_40 Depth=1
                                        #     Parent Loop BB29_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $s6, 0
	vst	$vr0, $s6, 1
	addi.d	$ra, $ra, -16
	addi.d	$s6, $s6, -16
	bnez	$ra, .LBB29_50
# %bb.51:                               # %middle.block642
                                        #   in Loop: Header=BB29_41 Depth=2
	beq	$s8, $t6, .LBB29_54
.LBB29_52:                              # %.lr.ph31.i.preheader795
                                        #   in Loop: Header=BB29_41 Depth=2
	addi.d	$s6, $s7, 1
	add.d	$s7, $t2, $s7
	.p2align	4, , 16
.LBB29_53:                              # %.lr.ph31.i
                                        #   Parent Loop BB29_40 Depth=1
                                        #     Parent Loop BB29_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$t6, $s7, -1
	addi.d	$s8, $s7, -1
	addi.w	$s6, $s6, -1
	st.b	$t6, $s7, 0
	move	$s7, $s8
	blt	$a4, $s6, .LBB29_53
.LBB29_54:                              # %_ZN9NCompress12CMtf8Encoder11FindAndMoveEh.exit
                                        #   in Loop: Header=BB29_41 Depth=2
	st.b	$s5, $sp, 1512
	bne	$s1, $a4, .LBB29_56
# %bb.55:                               #   in Loop: Header=BB29_41 Depth=2
	addi.d	$a1, $a1, 1
	addi.w	$s0, $s0, 1
	bne	$a1, $a5, .LBB29_41
	b	.LBB29_62
	.p2align	4, , 16
.LBB29_56:                              # %.preheader406
                                        #   in Loop: Header=BB29_40 Depth=1
	beqz	$s0, .LBB29_61
	.p2align	4, , 16
.LBB29_57:                              # %.lr.ph427
                                        #   Parent Loop BB29_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t6, $s0, -1
	andi	$s0, $t6, 1
	bstrpick.d	$s5, $a0, 31, 0
	stx.b	$s0, $s2, $s5
	addi.d	$s0, $sp, 480
	bstrins.d	$s0, $t6, 2, 2
	ld.w	$s6, $s0, 0
	addi.w	$s5, $a0, 1
	addi.d	$a0, $s6, 1
	st.w	$a0, $s0, 0
	bstrpick.d	$s0, $t6, 31, 1
	move	$a0, $s5
	bltu	$a4, $t6, .LBB29_57
# %bb.58:                               # %._crit_edge
                                        #   in Loop: Header=BB29_40 Depth=1
	addi.d	$s0, $s1, -1
	ori	$a0, $zero, 1
	move	$s1, $s5
	bltu	$s0, $t5, .LBB29_60
.LBB29_59:                              #   in Loop: Header=BB29_40 Depth=1
	addi.w	$s1, $s5, 1
	bstrpick.d	$a0, $s5, 31, 0
	ori	$t6, $zero, 255
	stx.b	$t6, $s2, $a0
	ori	$a0, $zero, 2
.LBB29_60:                              # %.thread
                                        #   in Loop: Header=BB29_40 Depth=1
	add.d	$t6, $a0, $s0
	bstrpick.d	$s0, $s1, 31, 0
	stx.b	$t6, $s2, $s0
	srai.d	$t6, $t8, 30
	add.d	$t6, $s4, $t6
	ld.w	$t8, $t6, 4
	addi.d	$a1, $a1, 1
	add.w	$a0, $s5, $a0
	addi.d	$t8, $t8, 1
	st.w	$t8, $t6, 4
	bne	$a1, $a5, .LBB29_40
	b	.LBB29_65
.LBB29_61:                              #   in Loop: Header=BB29_40 Depth=1
	move	$s5, $a0
	addi.d	$s0, $s1, -1
	ori	$a0, $zero, 1
	move	$s1, $s5
	bgeu	$s0, $t5, .LBB29_59
	b	.LBB29_60
.LBB29_62:                              # %.preheader405
	beqz	$s0, .LBB29_65
# %bb.63:                               # %.lr.ph431.preheader
	ori	$a1, $zero, 1
	move	$a2, $a0
	.p2align	4, , 16
.LBB29_64:                              # %.lr.ph431
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a3, $s0, -1
	andi	$a0, $a3, 1
	bstrpick.d	$a4, $a2, 31, 0
	stx.b	$a0, $s2, $a4
	addi.d	$a4, $sp, 480
	bstrins.d	$a4, $a3, 2, 2
	ld.w	$a5, $a4, 0
	addi.w	$a0, $a2, 1
	addi.d	$a2, $a5, 1
	st.w	$a2, $a4, 0
	bstrpick.d	$s0, $a3, 31, 1
	move	$a2, $a0
	bltu	$a1, $a3, .LBB29_64
.LBB29_65:                              # %._crit_edge432
	addi.w	$t6, $s3, 2
	ori	$s4, $zero, 1
	ori	$a4, $zero, 254
	ori	$a3, $zero, 1
	ori	$a1, $zero, 1
	move	$a2, $a0
	blt	$s3, $a4, .LBB29_67
# %bb.66:
	addi.w	$a2, $a0, 1
	bstrpick.d	$a1, $a0, 31, 0
	ori	$a3, $zero, 255
	stx.b	$a3, $s2, $a1
	ori	$a3, $zero, 2
	ori	$a1, $zero, 2
.LBB29_67:                              # %vector.ph646
	add.d	$a3, $a3, $s3
	bstrpick.d	$a2, $a2, 31, 0
	stx.b	$a3, $s2, $a2
	addi.d	$t7, $sp, 480
	alsl.d	$a2, $s3, $t7, 2
	ld.w	$a3, $a2, 4
	addi.d	$a3, $a3, 1
	st.w	$a3, $a2, 4
	vld	$vr0, $sp, 528
	vld	$vr1, $sp, 496
	vld	$vr2, $sp, 1456
	vld	$vr3, $sp, 560
	vld	$vr4, $sp, 592
	vadd.w	$vr0, $vr0, $vr1
	vld	$vr1, $sp, 624
	vadd.w	$vr0, $vr3, $vr0
	vld	$vr3, $sp, 656
	vadd.w	$vr0, $vr4, $vr0
	vld	$vr4, $sp, 688
	vadd.w	$vr0, $vr1, $vr0
	vld	$vr1, $sp, 720
	vadd.w	$vr0, $vr3, $vr0
	vld	$vr3, $sp, 752
	vadd.w	$vr0, $vr4, $vr0
	vld	$vr4, $sp, 784
	vadd.w	$vr0, $vr1, $vr0
	vld	$vr1, $sp, 816
	vadd.w	$vr0, $vr3, $vr0
	vld	$vr3, $sp, 848
	vadd.w	$vr0, $vr4, $vr0
	vld	$vr4, $sp, 880
	vadd.w	$vr0, $vr1, $vr0
	vld	$vr1, $sp, 912
	vadd.w	$vr0, $vr3, $vr0
	vld	$vr3, $sp, 944
	vadd.w	$vr0, $vr4, $vr0
	vld	$vr4, $sp, 976
	vadd.w	$vr0, $vr1, $vr0
	vld	$vr1, $sp, 1008
	vadd.w	$vr0, $vr3, $vr0
	vld	$vr3, $sp, 1040
	vadd.w	$vr0, $vr4, $vr0
	vld	$vr4, $sp, 1072
	vadd.w	$vr0, $vr1, $vr0
	vld	$vr1, $sp, 1104
	vadd.w	$vr0, $vr3, $vr0
	vld	$vr3, $sp, 1136
	vadd.w	$vr0, $vr4, $vr0
	vld	$vr4, $sp, 1168
	vadd.w	$vr0, $vr1, $vr0
	vld	$vr1, $sp, 1200
	vadd.w	$vr0, $vr3, $vr0
	vld	$vr3, $sp, 1232
	vadd.w	$vr0, $vr4, $vr0
	vld	$vr4, $sp, 1264
	vadd.w	$vr0, $vr1, $vr0
	vld	$vr1, $sp, 1296
	vadd.w	$vr0, $vr3, $vr0
	vld	$vr3, $sp, 1328
	vadd.w	$vr0, $vr4, $vr0
	vld	$vr4, $sp, 1360
	vadd.w	$vr0, $vr1, $vr0
	vld	$vr1, $sp, 1392
	vadd.w	$vr0, $vr3, $vr0
	vld	$vr3, $sp, 1424
	vadd.w	$vr0, $vr4, $vr0
	vld	$vr4, $sp, 1488
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr0, $vr2, $vr0
	vld	$vr1, $sp, 512
	vld	$vr2, $sp, 480
	vadd.w	$vr0, $vr4, $vr0
	vld	$vr3, $sp, 544
	vld	$vr4, $sp, 576
	vadd.w	$vr1, $vr1, $vr2
	vld	$vr2, $sp, 608
	vadd.w	$vr1, $vr3, $vr1
	vld	$vr3, $sp, 640
	vadd.w	$vr1, $vr4, $vr1
	vld	$vr4, $sp, 672
	vadd.w	$vr1, $vr2, $vr1
	vld	$vr2, $sp, 704
	vadd.w	$vr1, $vr3, $vr1
	vld	$vr3, $sp, 736
	vadd.w	$vr1, $vr4, $vr1
	vld	$vr4, $sp, 768
	vadd.w	$vr1, $vr2, $vr1
	vld	$vr2, $sp, 800
	vadd.w	$vr1, $vr3, $vr1
	vld	$vr3, $sp, 832
	vadd.w	$vr1, $vr4, $vr1
	vld	$vr4, $sp, 864
	vadd.w	$vr1, $vr2, $vr1
	vld	$vr2, $sp, 896
	vadd.w	$vr1, $vr3, $vr1
	vld	$vr3, $sp, 928
	vadd.w	$vr1, $vr4, $vr1
	vld	$vr4, $sp, 960
	vadd.w	$vr1, $vr2, $vr1
	vld	$vr2, $sp, 992
	vadd.w	$vr1, $vr3, $vr1
	vld	$vr3, $sp, 1024
	vadd.w	$vr1, $vr4, $vr1
	vld	$vr4, $sp, 1056
	vadd.w	$vr1, $vr2, $vr1
	vld	$vr2, $sp, 1088
	vadd.w	$vr1, $vr3, $vr1
	vld	$vr3, $sp, 1120
	vadd.w	$vr1, $vr4, $vr1
	vld	$vr4, $sp, 1152
	vadd.w	$vr1, $vr2, $vr1
	vld	$vr2, $sp, 1184
	vadd.w	$vr1, $vr3, $vr1
	vld	$vr3, $sp, 1216
	vadd.w	$vr1, $vr4, $vr1
	vld	$vr4, $sp, 1248
	vadd.w	$vr1, $vr2, $vr1
	vld	$vr2, $sp, 1280
	vadd.w	$vr1, $vr3, $vr1
	vld	$vr3, $sp, 1312
	vadd.w	$vr1, $vr4, $vr1
	vld	$vr4, $sp, 1344
	vadd.w	$vr1, $vr2, $vr1
	vld	$vr2, $sp, 1376
	vadd.w	$vr1, $vr3, $vr1
	vld	$vr3, $sp, 1408
	vadd.w	$vr1, $vr4, $vr1
	vld	$vr4, $sp, 1440
	vadd.w	$vr1, $vr2, $vr1
	vld	$vr2, $sp, 1472
	vadd.w	$vr1, $vr3, $vr1
	vadd.w	$vr1, $vr4, $vr1
	add.w	$s6, $a0, $a1
	vadd.w	$vr1, $vr2, $vr1
	vadd.w	$vr0, $vr0, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	ld.w	$a0, $sp, 1504
	ld.d	$a1, $fp, 32
	vpickve2gr.d	$a2, $vr0, 0
	ld.w	$a3, $sp, 1508
	add.d	$a0, $a0, $a2
	ld.w	$a4, $a1, 0
	ld.w	$a2, $a1, 4
	add.d	$a0, $a3, $a0
	addi.w	$t0, $a0, 0
	slli.d	$a3, $a4, 3
	sub.d	$t1, $a3, $a2
	addi.d	$a3, $t1, 8
	ld.bu	$a4, $a1, 8
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a4, 8
	ori	$a4, $a4, 3312
	add.d	$a5, $fp, $a4
	st.d	$a5, $sp, 152                   # 8-byte Folded Spill
	sltui	$a5, $t0, 200
	sltui	$a6, $t0, 600
	sltui	$a7, $t0, 1200
	st.d	$t0, $sp, 160                   # 8-byte Folded Spill
	bstrpick.d	$t0, $t0, 31, 5
	sltui	$t0, $t0, 75
	ori	$t2, $zero, 6
	sub.d	$t0, $t2, $t0
	bstrpick.d	$a3, $a3, 31, 3
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	st.d	$t1, $sp, 80                    # 8-byte Folded Spill
	andi	$a3, $t1, 7
	ori	$s0, $zero, 8
	sub.w	$a3, $s0, $a3
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 49
	bstrpick.d	$a0, $a0, 31, 0
	lu12i.w	$a3, 335544
	ori	$a3, $a3, 1311
	mul.d	$a0, $a0, $a3
	srli.d	$t1, $a0, 36
	addi.d	$s7, $fp, 40
	addi.d	$a0, $fp, 1588
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 1684
	add.d	$s5, $fp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3684
	add.d	$a0, $fp, $a0
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	slt	$a0, $s4, $t6
	masknez	$a3, $s4, $a0
	maskeqz	$a0, $t6, $a0
	or	$t8, $a0, $a3
	sltu	$a0, $s4, $t1
	st.d	$t1, $sp, 144                   # 8-byte Folded Spill
	maskeqz	$a3, $t1, $a0
	masknez	$a0, $s4, $a0
	or	$s3, $a3, $a0
	ldx.b	$a0, $fp, $a4
	xori	$a3, $a5, 3
	masknez	$a4, $t0, $a7
	ori	$s8, $zero, 4
	maskeqz	$a5, $s8, $a7
	or	$a4, $a5, $a4
	maskeqz	$a3, $a3, $a6
	masknez	$a4, $a4, $a6
	or	$a3, $a3, $a4
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	andi	$a3, $t8, 12
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	bstrpick.d	$a3, $t8, 30, 4
	slli.d	$s1, $a3, 4
	bstrpick.d	$a3, $t8, 30, 2
	slli.d	$t3, $a3, 2
	bstrpick.d	$a3, $t8, 30, 3
	slli.d	$a3, $a3, 3
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	addi.d	$a3, $fp, -218
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	lu12i.w	$a3, 12320
	ori	$a3, $a3, 256
	lu32i.d	$a3, 394500
	lu52i.d	$a3, $a3, 112
	vreplgr2vr.d	$vr0, $a3
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vrepli.b	$vr0, 32
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vrepli.w	$vr15, 1
	addi.w	$a3, $zero, -1
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	ori	$a3, $zero, 2
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	ori	$ra, $zero, 16
	ori	$a5, $zero, 2
	st.d	$t6, $sp, 256                   # 8-byte Folded Spill
	st.d	$t8, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 120                   # 8-byte Folded Spill
	st.d	$t3, $sp, 200                   # 8-byte Folded Spill
	vst	$vr15, $sp, 96                  # 16-byte Folded Spill
	b	.LBB29_69
	.p2align	4, , 16
.LBB29_68:                              #   in Loop: Header=BB29_69 Depth=1
	addi.w	$a5, $a5, 1
	ori	$a0, $zero, 1
	beq	$a5, $s0, .LBB29_227
.LBB29_69:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_73 Depth 2
                                        #     Child Loop BB29_77 Depth 2
                                        #     Child Loop BB29_81 Depth 2
                                        #       Child Loop BB29_84 Depth 3
                                        #       Child Loop BB29_95 Depth 3
                                        #       Child Loop BB29_99 Depth 3
                                        #       Child Loop BB29_101 Depth 3
                                        #     Child Loop BB29_104 Depth 2
                                        #       Child Loop BB29_105 Depth 3
                                        #         Child Loop BB29_108 Depth 4
                                        #         Child Loop BB29_112 Depth 4
                                        #           Child Loop BB29_115 Depth 5
                                        #           Child Loop BB29_118 Depth 5
                                        #         Child Loop BB29_122 Depth 4
                                        #       Child Loop BB29_126 Depth 3
                                        #         Child Loop BB29_130 Depth 4
                                        #         Child Loop BB29_149 Depth 4
                                        #     Child Loop BB29_156 Depth 2
                                        #     Child Loop BB29_160 Depth 2
                                        #     Child Loop BB29_162 Depth 2
                                        #     Child Loop BB29_165 Depth 2
                                        #       Child Loop BB29_176 Depth 3
                                        #         Child Loop BB29_178 Depth 4
                                        #       Child Loop BB29_169 Depth 3
                                        #       Child Loop BB29_181 Depth 3
                                        #       Child Loop BB29_183 Depth 3
                                        #     Child Loop BB29_186 Depth 2
                                        #       Child Loop BB29_188 Depth 3
                                        #       Child Loop BB29_192 Depth 3
                                        #         Child Loop BB29_194 Depth 4
                                        #           Child Loop BB29_196 Depth 5
                                        #           Child Loop BB29_205 Depth 5
                                        #           Child Loop BB29_201 Depth 5
                                        #         Child Loop BB29_211 Depth 4
                                        #     Child Loop BB29_215 Depth 2
                                        #       Child Loop BB29_221 Depth 3
	andi	$a3, $a0, 1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a3, .LBB29_71
# %bb.70:                               #   in Loop: Header=BB29_69 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	st.w	$a3, $a1, 4
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.b	$a0, $a1, 8
	addi.d	$a0, $a5, -7
	sltui	$a0, $a0, 1
	masknez	$a2, $a5, $a0
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a2
	move	$a2, $a3
.LBB29_71:                              #   in Loop: Header=BB29_69 Depth=1
	st.d	$a5, $sp, 184                   # 8-byte Folded Spill
	ori	$a4, $zero, 3
	move	$a3, $a0
	b	.LBB29_73
	.p2align	4, , 16
.LBB29_72:                              #   in Loop: Header=BB29_73 Depth=2
	sll.w	$a2, $a5, $a4
	sub.d	$a3, $a3, $a2
	move	$a2, $a6
	blez	$a4, .LBB29_75
.LBB29_73:                              #   Parent Loop BB29_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t0, $a4
	slt	$a4, $a4, $a2
	masknez	$a5, $a2, $a4
	ld.bu	$a6, $a1, 8
	maskeqz	$a4, $t0, $a4
	or	$t1, $a4, $a5
	sub.w	$a4, $t0, $t1
	sll.w	$a6, $a6, $t1
	srl.w	$a5, $a3, $a4
	or	$a7, $a6, $a5
	st.b	$a7, $a1, 8
	sub.w	$a6, $a2, $t1
	st.w	$a6, $a1, 4
	blt	$t0, $a2, .LBB29_72
# %bb.74:                               #   in Loop: Header=BB29_73 Depth=2
	ld.wu	$a2, $a1, 0
	ld.d	$a6, $a1, 16
	addi.d	$t0, $a2, 1
	st.w	$t0, $a1, 0
	stx.b	$a7, $a6, $a2
	ori	$a6, $zero, 8
	st.w	$a6, $a1, 4
	b	.LBB29_72
	.p2align	4, , 16
.LBB29_75:                              # %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit347
                                        #   in Loop: Header=BB29_69 Depth=1
	ld.d	$a1, $fp, 32
	ld.w	$a4, $a1, 4
	ori	$a3, $zero, 15
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	b	.LBB29_77
	.p2align	4, , 16
.LBB29_76:                              #   in Loop: Header=BB29_77 Depth=2
	sll.w	$a4, $a5, $a3
	sub.d	$a2, $a2, $a4
	move	$a4, $a6
	blez	$a3, .LBB29_79
.LBB29_77:                              #   Parent Loop BB29_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t0, $a3
	slt	$a3, $a3, $a4
	masknez	$a5, $a4, $a3
	ld.bu	$a6, $a1, 8
	maskeqz	$a3, $t0, $a3
	or	$t1, $a3, $a5
	sub.w	$a3, $t0, $t1
	sll.w	$a6, $a6, $t1
	srl.w	$a5, $a2, $a3
	or	$a7, $a6, $a5
	st.b	$a7, $a1, 8
	sub.w	$a6, $a4, $t1
	st.w	$a6, $a1, 4
	blt	$t0, $a4, .LBB29_76
# %bb.78:                               #   in Loop: Header=BB29_77 Depth=2
	ld.wu	$a4, $a1, 0
	ld.d	$a6, $a1, 16
	addi.d	$t0, $a4, 1
	st.w	$t0, $a1, 0
	stx.b	$a7, $a6, $a4
	ori	$a6, $zero, 8
	st.w	$a6, $a1, 4
	b	.LBB29_76
	.p2align	4, , 16
.LBB29_79:                              # %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit352.preheader
                                        #   in Loop: Header=BB29_69 Depth=1
	move	$a6, $zero
	bstrpick.d	$a1, $a0, 31, 0
	addi.w	$t5, $a0, 0
	slli.d	$a2, $a1, 8
	alsl.d	$a2, $a1, $a2, 1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	b	.LBB29_81
	.p2align	4, , 16
.LBB29_80:                              # %.loopexit784
                                        #   in Loop: Header=BB29_81 Depth=2
	sub.w	$a3, $a3, $a5
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -258
	beqz	$a1, .LBB29_102
.LBB29_81:                              # %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit352
                                        #   Parent Loop BB29_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_84 Depth 3
                                        #       Child Loop BB29_95 Depth 3
                                        #       Child Loop BB29_99 Depth 3
                                        #       Child Loop BB29_101 Depth 3
	addi.w	$a7, $a1, 0
	move	$a4, $a6
	move	$a5, $zero
	bgeu	$a3, $a7, .LBB29_83
# %bb.82:                               #   in Loop: Header=BB29_81 Depth=2
	move	$a7, $a4
	b	.LBB29_85
	.p2align	4, , 16
.LBB29_83:                              # %.lr.ph438.preheader
                                        #   in Loop: Header=BB29_81 Depth=2
	div.wu	$a6, $a3, $a7
	alsl.d	$t0, $a4, $t7, 2
	move	$a7, $a4
	.p2align	4, , 16
.LBB29_84:                              # %.lr.ph438
                                        #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_81 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t1, $t0, 0
	add.w	$a5, $t1, $a5
	addi.d	$t0, $t0, 4
	addi.w	$a7, $a7, 1
	bltu	$a5, $a6, .LBB29_84
.LBB29_85:                              # %._crit_edge439
                                        #   in Loop: Header=BB29_81 Depth=2
	addi.w	$a6, $a7, -1
	bge	$a4, $a6, .LBB29_89
# %bb.86:                               #   in Loop: Header=BB29_81 Depth=2
	beq	$a1, $t5, .LBB29_89
# %bb.87:                               #   in Loop: Header=BB29_81 Depth=2
	beq	$a1, $s4, .LBB29_89
# %bb.88:                               #   in Loop: Header=BB29_81 Depth=2
	sub.d	$t0, $a0, $a1
	andi	$t0, $t0, 1
	bnez	$t0, .LBB29_91
	.p2align	4, , 16
.LBB29_89:                              #   in Loop: Header=BB29_81 Depth=2
	move	$a6, $a7
	bge	$t6, $s8, .LBB29_92
.LBB29_90:                              #   in Loop: Header=BB29_81 Depth=2
	move	$t2, $zero
	b	.LBB29_101
.LBB29_91:                              #   in Loop: Header=BB29_81 Depth=2
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $a7, $t7
	sub.d	$a5, $a5, $a7
	blt	$t6, $s8, .LBB29_90
	.p2align	4, , 16
.LBB29_92:                              # %vector.main.loop.iter.check746
                                        #   in Loop: Header=BB29_81 Depth=2
	vreplgr2vr.d	$vr0, $a4
	vreplgr2vr.d	$vr1, $a6
	pcalau12i	$t0, %pc_hi20(.LCPI29_6)
	pcalau12i	$a7, %pc_hi20(.LCPI29_7)
	bge	$t6, $ra, .LBB29_94
# %bb.93:                               #   in Loop: Header=BB29_81 Depth=2
	move	$t1, $zero
	b	.LBB29_98
	.p2align	4, , 16
.LBB29_94:                              # %vector.ph747
                                        #   in Loop: Header=BB29_81 Depth=2
	pcalau12i	$t1, %pc_hi20(.LCPI29_0)
	vld	$vr2, $t1, %pc_lo12(.LCPI29_0)
	pcalau12i	$t1, %pc_hi20(.LCPI29_1)
	vld	$vr3, $t1, %pc_lo12(.LCPI29_1)
	pcalau12i	$t1, %pc_hi20(.LCPI29_2)
	vld	$vr4, $t1, %pc_lo12(.LCPI29_2)
	pcalau12i	$t1, %pc_hi20(.LCPI29_3)
	vld	$vr5, $t1, %pc_lo12(.LCPI29_3)
	pcalau12i	$t1, %pc_hi20(.LCPI29_4)
	vld	$vr6, $t1, %pc_lo12(.LCPI29_4)
	pcalau12i	$t1, %pc_hi20(.LCPI29_5)
	vld	$vr7, $t1, %pc_lo12(.LCPI29_5)
	vld	$vr8, $t0, %pc_lo12(.LCPI29_6)
	vld	$vr9, $a7, %pc_lo12(.LCPI29_7)
	move	$t1, $a2
	move	$t2, $s1
	.p2align	4, , 16
.LBB29_95:                              # %vector.body754
                                        #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_81 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vslt.d	$vr10, $vr9, $vr0
	vslt.d	$vr11, $vr8, $vr0
	vpickev.w	$vr10, $vr11, $vr10
	vslt.d	$vr11, $vr7, $vr0
	vslt.d	$vr12, $vr6, $vr0
	vpickev.w	$vr11, $vr12, $vr11
	vpickev.h	$vr10, $vr11, $vr10
	vslt.d	$vr11, $vr5, $vr0
	vslt.d	$vr12, $vr4, $vr0
	vpickev.w	$vr11, $vr12, $vr11
	vslt.d	$vr12, $vr3, $vr0
	vslt.d	$vr13, $vr2, $vr0
	vpickev.w	$vr12, $vr13, $vr12
	vpickev.h	$vr11, $vr12, $vr11
	vpickev.b	$vr10, $vr11, $vr10
	vsle.d	$vr11, $vr1, $vr9
	vsle.d	$vr12, $vr1, $vr8
	vpickev.w	$vr11, $vr12, $vr11
	vsle.d	$vr12, $vr1, $vr7
	vsle.d	$vr13, $vr1, $vr6
	vpickev.w	$vr12, $vr13, $vr12
	vpickev.h	$vr11, $vr12, $vr11
	vsle.d	$vr12, $vr1, $vr5
	vsle.d	$vr13, $vr1, $vr4
	vpickev.w	$vr12, $vr13, $vr12
	vsle.d	$vr13, $vr1, $vr3
	vsle.d	$vr14, $vr1, $vr2
	vpickev.w	$vr13, $vr14, $vr13
	vpickev.h	$vr12, $vr13, $vr12
	vpickev.b	$vr11, $vr12, $vr11
	vor.v	$vr10, $vr10, $vr11
	vandi.b	$vr10, $vr10, 1
	vst	$vr10, $t1, 0
	vaddi.du	$vr9, $vr9, 16
	vaddi.du	$vr8, $vr8, 16
	vaddi.du	$vr7, $vr7, 16
	vaddi.du	$vr6, $vr6, 16
	vaddi.du	$vr5, $vr5, 16
	vaddi.du	$vr4, $vr4, 16
	vaddi.du	$vr3, $vr3, 16
	vaddi.du	$vr2, $vr2, 16
	addi.d	$t2, $t2, -16
	addi.d	$t1, $t1, 16
	bnez	$t2, .LBB29_95
# %bb.96:                               # %middle.block759
                                        #   in Loop: Header=BB29_81 Depth=2
	beq	$s1, $t8, .LBB29_80
# %bb.97:                               # %vec.epilog.iter.check763
                                        #   in Loop: Header=BB29_81 Depth=2
	move	$t1, $s1
	move	$t2, $s1
	ld.d	$t4, $sp, 192                   # 8-byte Folded Reload
	beqz	$t4, .LBB29_101
.LBB29_98:                              # %vec.epilog.ph765
                                        #   in Loop: Header=BB29_81 Depth=2
	vld	$vr2, $t0, %pc_lo12(.LCPI29_6)
	vld	$vr3, $a7, %pc_lo12(.LCPI29_7)
	vreplgr2vr.d	$vr4, $t1
	vor.v	$vr2, $vr4, $vr2
	vor.v	$vr3, $vr4, $vr3
	.p2align	4, , 16
.LBB29_99:                              # %vec.epilog.vector.body775
                                        #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_81 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vslt.d	$vr4, $vr3, $vr0
	vslt.d	$vr5, $vr2, $vr0
	vpickev.w	$vr4, $vr5, $vr4
	vsle.d	$vr5, $vr1, $vr3
	vsle.d	$vr6, $vr1, $vr2
	vpickev.w	$vr5, $vr6, $vr5
	vor.v	$vr4, $vr4, $vr5
	vand.v	$vr4, $vr4, $vr15
	vpickve2gr.w	$a7, $vr4, 0
	vinsgr2vr.b	$vr5, $a7, 0
	vpickve2gr.w	$a7, $vr4, 1
	vinsgr2vr.b	$vr5, $a7, 1
	vpickve2gr.w	$a7, $vr4, 2
	vinsgr2vr.b	$vr5, $a7, 2
	vpickve2gr.w	$a7, $vr4, 3
	vinsgr2vr.b	$vr5, $a7, 3
	add.d	$a7, $a2, $t1
	vstelm.w	$vr5, $a7, 0, 0
	addi.d	$t1, $t1, 4
	vaddi.du	$vr3, $vr3, 4
	vaddi.du	$vr2, $vr2, 4
	bne	$t3, $t1, .LBB29_99
# %bb.100:                              # %vec.epilog.middle.block780
                                        #   in Loop: Header=BB29_81 Depth=2
	move	$t2, $t3
	beq	$t3, $t8, .LBB29_80
	.p2align	4, , 16
.LBB29_101:                             # %vec.epilog.scalar.ph762
                                        #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_81 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slt	$a7, $t2, $a4
	slt	$t0, $t2, $a6
	xori	$t0, $t0, 1
	or	$a7, $a7, $t0
	stx.b	$a7, $a2, $t2
	addi.d	$t2, $t2, 1
	bne	$t8, $t2, .LBB29_101
	b	.LBB29_80
	.p2align	4, , 16
.LBB29_102:                             # %.preheader401.preheader
                                        #   in Loop: Header=BB29_69 Depth=1
	move	$a2, $zero
	slt	$a0, $s4, $t5
	masknez	$a1, $s4, $a0
	st.d	$t5, $sp, 176                   # 8-byte Folded Spill
	maskeqz	$a0, $t5, $a0
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 10
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	b	.LBB29_104
	.p2align	4, , 16
.LBB29_103:                             #   in Loop: Header=BB29_104 Depth=2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	ori	$s8, $zero, 4
	beq	$a2, $s8, .LBB29_151
.LBB29_104:                             # %.preheader401
                                        #   Parent Loop BB29_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_105 Depth 3
                                        #         Child Loop BB29_108 Depth 4
                                        #         Child Loop BB29_112 Depth 4
                                        #           Child Loop BB29_115 Depth 5
                                        #           Child Loop BB29_118 Depth 5
                                        #         Child Loop BB29_122 Depth 4
                                        #       Child Loop BB29_126 Depth 3
                                        #         Child Loop BB29_130 Depth 4
                                        #         Child Loop BB29_149 Depth 4
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	move	$a1, $zero
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	move	$a0, $zero
	vld	$vr6, $sp, 208                  # 16-byte Folded Reload
	ori	$t0, $zero, 255
	ori	$t1, $zero, 48
	addi.d	$t7, $sp, 280
	.p2align	4, , 16
.LBB29_105:                             # %.preheader400
                                        #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_104 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB29_108 Depth 4
                                        #         Child Loop BB29_112 Depth 4
                                        #           Child Loop BB29_115 Depth 5
                                        #           Child Loop BB29_118 Depth 5
                                        #         Child Loop BB29_122 Depth 4
	move	$a3, $zero
	move	$a6, $zero
	addi.d	$a5, $sp, 280
	ori	$a7, $zero, 1
	b	.LBB29_108
	.p2align	4, , 16
.LBB29_106:                             #   in Loop: Header=BB29_108 Depth=4
	bstrpick.d	$a4, $a7, 31, 0
	ldx.bu	$a4, $s2, $a4
	addi.w	$a1, $a1, 2
	addi.d	$a4, $a4, 255
	st.w	$a4, $a5, 0
	addi.d	$a4, $a6, 1
	addi.w	$a3, $a3, 1
	bltu	$t1, $a6, .LBB29_110
.LBB29_107:                             #   in Loop: Header=BB29_108 Depth=4
	addi.d	$a5, $a5, 4
	addi.d	$a7, $a2, 1
	move	$a6, $a4
	bgeu	$a1, $s6, .LBB29_110
.LBB29_108:                             #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_104 Depth=2
                                        #       Parent Loop BB29_105 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bstrpick.d	$a2, $a1, 31, 0
	ldx.bu	$a4, $s2, $a2
	move	$a2, $a7
	addi.w	$a7, $a1, 1
	beq	$a4, $t0, .LBB29_106
# %bb.109:                              #   in Loop: Header=BB29_108 Depth=4
	move	$a1, $a7
	st.w	$a4, $a5, 0
	addi.d	$a4, $a6, 1
	addi.w	$a3, $a3, 1
	bgeu	$t1, $a6, .LBB29_107
.LBB29_110:                             # %.preheader
                                        #   in Loop: Header=BB29_105 Depth=3
	move	$a6, $zero
	bstrpick.d	$a5, $a0, 31, 0
	bstrpick.d	$a7, $a4, 30, 3
	slli.d	$a7, $a7, 3
	move	$t0, $a2
	bstrins.d	$t0, $zero, 2, 0
	addi.d	$t1, $zero, -1
	b	.LBB29_112
	.p2align	4, , 16
.LBB29_111:                             #   in Loop: Header=BB29_112 Depth=4
	addi.d	$a6, $a6, 1
	beq	$a6, $s1, .LBB29_121
.LBB29_112:                             #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_104 Depth=2
                                        #       Parent Loop BB29_105 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB29_115 Depth 5
                                        #           Child Loop BB29_118 Depth 5
	slli.d	$t2, $a6, 8
	alsl.d	$t2, $a6, $t2, 1
	add.d	$t2, $s7, $t2
	bgeu	$a3, $s0, .LBB29_114
# %bb.113:                              #   in Loop: Header=BB29_112 Depth=4
	move	$t4, $zero
	move	$t3, $zero
	b	.LBB29_117
	.p2align	4, , 16
.LBB29_114:                             # %vector.body730.preheader
                                        #   in Loop: Header=BB29_112 Depth=4
	addi.d	$t3, $sp, 296
	move	$t4, $t0
	vori.b	$vr0, $vr6, 0
	vori.b	$vr1, $vr6, 0
	.p2align	4, , 16
.LBB29_115:                             # %vector.body730
                                        #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_104 Depth=2
                                        #       Parent Loop BB29_105 Depth=3
                                        #         Parent Loop BB29_112 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vld	$vr2, $t3, -16
	vld	$vr3, $t3, 0
	vshuf4i.w	$vr4, $vr2, 14
	vsllwil.du.wu	$vr4, $vr4, 0
	vsllwil.du.wu	$vr2, $vr2, 0
	vshuf4i.w	$vr5, $vr3, 14
	vsllwil.du.wu	$vr5, $vr5, 0
	vsllwil.du.wu	$vr3, $vr3, 0
	vpickve2gr.d	$t5, $vr2, 0
	vpickve2gr.d	$t6, $vr2, 1
	vpickve2gr.d	$t7, $vr4, 0
	vpickve2gr.d	$t8, $vr4, 1
	vpickve2gr.d	$s3, $vr3, 0
	vpickve2gr.d	$s8, $vr3, 1
	vpickve2gr.d	$ra, $vr5, 0
	vpickve2gr.d	$s0, $vr5, 1
	ldx.b	$t5, $t2, $t5
	ldx.b	$t6, $t2, $t6
	ldx.b	$t7, $t2, $t7
	ldx.b	$t8, $t2, $t8
	vinsgr2vr.b	$vr2, $t5, 0
	vinsgr2vr.b	$vr2, $t6, 1
	vinsgr2vr.b	$vr2, $t7, 2
	vinsgr2vr.b	$vr2, $t8, 3
	ldx.b	$t5, $t2, $s3
	ldx.b	$t6, $t2, $s8
	ldx.b	$t7, $t2, $ra
	ldx.b	$t8, $t2, $s0
	vinsgr2vr.b	$vr3, $t5, 0
	vinsgr2vr.b	$vr3, $t6, 1
	vinsgr2vr.b	$vr3, $t7, 2
	vinsgr2vr.b	$vr3, $t8, 3
	vsllwil.hu.bu	$vr2, $vr2, 0
	vsllwil.wu.hu	$vr2, $vr2, 0
	vsllwil.hu.bu	$vr3, $vr3, 0
	vsllwil.wu.hu	$vr3, $vr3, 0
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr1, $vr1, $vr3
	addi.d	$t4, $t4, -8
	addi.d	$t3, $t3, 32
	bnez	$t4, .LBB29_115
# %bb.116:                              # %middle.block737
                                        #   in Loop: Header=BB29_112 Depth=4
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$t3, $vr0, 0
	move	$t4, $a7
	ori	$s0, $zero, 8
	addi.d	$t7, $sp, 280
	beq	$a4, $a7, .LBB29_119
.LBB29_117:                             # %scalar.ph725.preheader
                                        #   in Loop: Header=BB29_112 Depth=4
	alsl.d	$t5, $t4, $t7, 2
	.p2align	4, , 16
.LBB29_118:                             # %scalar.ph725
                                        #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_104 Depth=2
                                        #       Parent Loop BB29_105 Depth=3
                                        #         Parent Loop BB29_112 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.wu	$t6, $t5, 0
	ldx.bu	$t6, $t2, $t6
	add.d	$t3, $t3, $t6
	addi.d	$t4, $t4, 1
	addi.d	$t5, $t5, 4
	bne	$a2, $t4, .LBB29_118
.LBB29_119:                             # %.loopexit
                                        #   in Loop: Header=BB29_112 Depth=4
	addi.w	$t2, $t1, 0
	addi.w	$t4, $t3, 0
	bgeu	$t4, $t2, .LBB29_111
# %bb.120:                              #   in Loop: Header=BB29_112 Depth=4
	stx.b	$a6, $s5, $a5
	move	$t1, $t3
	b	.LBB29_111
	.p2align	4, , 16
.LBB29_121:                             #   in Loop: Header=BB29_105 Depth=3
	ldx.bu	$a3, $s5, $a5
	slli.d	$a4, $a3, 10
	alsl.d	$a3, $a3, $a4, 3
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	addi.d	$a4, $sp, 280
	.p2align	4, , 16
.LBB29_122:                             #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_104 Depth=2
                                        #       Parent Loop BB29_105 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.wu	$a5, $a4, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a6, $a3, $a5
	addi.d	$a6, $a6, 1
	stx.w	$a6, $a3, $a5
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 4
	bnez	$a2, .LBB29_122
# %bb.123:                              #   in Loop: Header=BB29_105 Depth=3
	addi.w	$a0, $a0, 1
	ori	$t0, $zero, 255
	ori	$t1, $zero, 48
	bltu	$a1, $s6, .LBB29_105
# %bb.124:                              # %.preheader399.preheader
                                        #   in Loop: Header=BB29_104 Depth=2
	move	$s8, $zero
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	b	.LBB29_126
	.p2align	4, , 16
.LBB29_125:                             # %.loopexit783
                                        #   in Loop: Header=BB29_126 Depth=3
	slli.d	$a0, $s8, 10
	alsl.d	$a0, $s8, $a0, 3
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 1032
	mul.d	$a1, $s8, $a1
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	ori	$a2, $zero, 258
	mul.d	$a2, $s8, $a2
	add.d	$a2, $s7, $a2
	ori	$a3, $zero, 258
	ori	$a4, $zero, 16
	pcaddu18i	$ra, %call36(Huffman_Generate)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, 1
	addi.d	$s3, $s3, 1032
	beq	$s8, $s1, .LBB29_103
.LBB29_126:                             # %.preheader399
                                        #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_104 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB29_130 Depth 4
                                        #         Child Loop BB29_149 Depth 4
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	bge	$a0, $s0, .LBB29_128
# %bb.127:                              #   in Loop: Header=BB29_126 Depth=3
	move	$a1, $zero
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	b	.LBB29_147
	.p2align	4, , 16
.LBB29_128:                             # %vector.body703.preheader
                                        #   in Loop: Header=BB29_126 Depth=3
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	move	$a1, $s3
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	b	.LBB29_130
	.p2align	4, , 16
.LBB29_129:                             # %pred.store.continue720
                                        #   in Loop: Header=BB29_130 Depth=4
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 32
	beqz	$a0, .LBB29_146
.LBB29_130:                             # %vector.body703
                                        #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_104 Depth=2
                                        #       Parent Loop BB29_126 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $a1, 0
	vseqi.w	$vr0, $vr0, 0
	vpickve2gr.w	$a2, $vr0, 0
	andi	$a2, $a2, 1
	beqz	$a2, .LBB29_134
# %bb.131:                              # %pred.store.if
                                        #   in Loop: Header=BB29_130 Depth=4
	st.w	$s4, $a1, 0
	vpickve2gr.w	$a2, $vr0, 1
	andi	$a2, $a2, 1
	bnez	$a2, .LBB29_135
.LBB29_132:                             # %pred.store.continue708
                                        #   in Loop: Header=BB29_130 Depth=4
	vpickve2gr.w	$a2, $vr0, 2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB29_136
.LBB29_133:                             # %pred.store.if709
                                        #   in Loop: Header=BB29_130 Depth=4
	st.w	$s4, $a1, 8
	vpickve2gr.w	$a2, $vr0, 3
	andi	$a2, $a2, 1
	bnez	$a2, .LBB29_137
	b	.LBB29_138
	.p2align	4, , 16
.LBB29_134:                             # %pred.store.continue
                                        #   in Loop: Header=BB29_130 Depth=4
	vpickve2gr.w	$a2, $vr0, 1
	andi	$a2, $a2, 1
	beqz	$a2, .LBB29_132
.LBB29_135:                             # %pred.store.if707
                                        #   in Loop: Header=BB29_130 Depth=4
	st.w	$s4, $a1, 4
	vpickve2gr.w	$a2, $vr0, 2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB29_133
.LBB29_136:                             # %pred.store.continue710
                                        #   in Loop: Header=BB29_130 Depth=4
	vpickve2gr.w	$a2, $vr0, 3
	andi	$a2, $a2, 1
	beqz	$a2, .LBB29_138
.LBB29_137:                             # %pred.store.if711
                                        #   in Loop: Header=BB29_130 Depth=4
	st.w	$s4, $a1, 12
.LBB29_138:                             # %pred.store.continue712
                                        #   in Loop: Header=BB29_130 Depth=4
	vld	$vr0, $a1, 16
	vseqi.w	$vr0, $vr0, 0
	vpickve2gr.w	$a2, $vr0, 0
	andi	$a2, $a2, 1
	beqz	$a2, .LBB29_142
# %bb.139:                              # %pred.store.if713
                                        #   in Loop: Header=BB29_130 Depth=4
	st.w	$s4, $a1, 16
	vpickve2gr.w	$a2, $vr0, 1
	andi	$a2, $a2, 1
	bnez	$a2, .LBB29_143
.LBB29_140:                             # %pred.store.continue716
                                        #   in Loop: Header=BB29_130 Depth=4
	vpickve2gr.w	$a2, $vr0, 2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB29_144
.LBB29_141:                             # %pred.store.if717
                                        #   in Loop: Header=BB29_130 Depth=4
	st.w	$s4, $a1, 24
	vpickve2gr.w	$a2, $vr0, 3
	andi	$a2, $a2, 1
	beqz	$a2, .LBB29_129
	b	.LBB29_145
	.p2align	4, , 16
.LBB29_142:                             # %pred.store.continue714
                                        #   in Loop: Header=BB29_130 Depth=4
	vpickve2gr.w	$a2, $vr0, 1
	andi	$a2, $a2, 1
	beqz	$a2, .LBB29_140
.LBB29_143:                             # %pred.store.if715
                                        #   in Loop: Header=BB29_130 Depth=4
	st.w	$s4, $a1, 20
	vpickve2gr.w	$a2, $vr0, 2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB29_141
.LBB29_144:                             # %pred.store.continue718
                                        #   in Loop: Header=BB29_130 Depth=4
	vpickve2gr.w	$a2, $vr0, 3
	andi	$a2, $a2, 1
	beqz	$a2, .LBB29_129
.LBB29_145:                             # %pred.store.if719
                                        #   in Loop: Header=BB29_130 Depth=4
	st.w	$s4, $a1, 28
	b	.LBB29_129
	.p2align	4, , 16
.LBB29_146:                             # %middle.block722
                                        #   in Loop: Header=BB29_126 Depth=3
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	move	$a1, $a0
	beq	$a0, $a3, .LBB29_125
.LBB29_147:                             # %scalar.ph698.preheader
                                        #   in Loop: Header=BB29_126 Depth=3
	slli.d	$a0, $a1, 2
	sub.d	$a1, $a3, $a1
	b	.LBB29_149
	.p2align	4, , 16
.LBB29_148:                             #   in Loop: Header=BB29_149 Depth=4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	beqz	$a1, .LBB29_125
.LBB29_149:                             # %scalar.ph698
                                        #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_104 Depth=2
                                        #       Parent Loop BB29_126 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.w	$a2, $s3, $a0
	bnez	$a2, .LBB29_148
# %bb.150:                              #   in Loop: Header=BB29_149 Depth=4
	stx.w	$s4, $s3, $a0
	b	.LBB29_148
	.p2align	4, , 16
.LBB29_151:                             # %iter.check672
                                        #   in Loop: Header=BB29_69 Depth=1
	addi.d	$t4, $sp, 264
	ori	$t6, $zero, 16
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	bge	$a1, $s0, .LBB29_153
# %bb.152:                              #   in Loop: Header=BB29_69 Depth=1
	move	$a0, $zero
	addi.d	$t7, $sp, 480
	ld.d	$t8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	vld	$vr15, $sp, 96                  # 16-byte Folded Reload
	addi.d	$a3, $sp, 280
	b	.LBB29_162
	.p2align	4, , 16
.LBB29_153:                             # %vector.main.loop.iter.check674
                                        #   in Loop: Header=BB29_69 Depth=1
	addi.d	$t7, $sp, 480
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	vld	$vr2, $sp, 32                   # 16-byte Folded Reload
	vld	$vr15, $sp, 96                  # 16-byte Folded Reload
	ori	$a0, $zero, 32
	bge	$a1, $a0, .LBB29_155
# %bb.154:                              #   in Loop: Header=BB29_69 Depth=1
	move	$a0, $zero
	ld.d	$t8, $sp, 248                   # 8-byte Folded Reload
	addi.d	$a3, $sp, 280
	b	.LBB29_159
	.p2align	4, , 16
.LBB29_155:                             # %vector.ph675
                                        #   in Loop: Header=BB29_69 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI29_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI29_8)
	bstrpick.d	$a0, $s1, 30, 5
	slli.d	$a0, $a0, 5
	andi	$a1, $s1, 24
	addi.d	$a2, $sp, 296
	move	$a3, $a0
	.p2align	4, , 16
.LBB29_156:                             # %vector.body678
                                        #   Parent Loop BB29_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.bu	$vr1, $vr0, 16
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	vadd.b	$vr0, $vr0, $vr2
	addi.d	$a3, $a3, -32
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB29_156
# %bb.157:                              # %middle.block681
                                        #   in Loop: Header=BB29_69 Depth=1
	ld.d	$t8, $sp, 248                   # 8-byte Folded Reload
	addi.d	$a3, $sp, 280
	beq	$a0, $s1, .LBB29_163
# %bb.158:                              # %vec.epilog.iter.check685
                                        #   in Loop: Header=BB29_69 Depth=1
	beqz	$a1, .LBB29_162
.LBB29_159:                             # %vec.epilog.ph687
                                        #   in Loop: Header=BB29_69 Depth=1
	move	$a2, $a0
	bstrpick.d	$a0, $s1, 30, 3
	slli.d	$a0, $a0, 3
	vinsgr2vr.b	$vr0, $a2, 0
	vinsgr2vr.b	$vr0, $a2, 1
	vinsgr2vr.b	$vr0, $a2, 2
	vinsgr2vr.b	$vr0, $a2, 3
	vinsgr2vr.b	$vr0, $a2, 4
	vinsgr2vr.b	$vr0, $a2, 5
	vinsgr2vr.b	$vr0, $a2, 6
	vinsgr2vr.b	$vr0, $a2, 7
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vor.v	$vr0, $vr0, $vr1
	sub.d	$a1, $a2, $a0
	add.d	$a2, $a3, $a2
	.p2align	4, , 16
.LBB29_160:                             # %vec.epilog.vector.body690
                                        #   Parent Loop BB29_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vstelm.d	$vr0, $a2, 0, 0
	vaddi.bu	$vr0, $vr0, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB29_160
# %bb.161:                              # %vec.epilog.middle.block695
                                        #   in Loop: Header=BB29_69 Depth=1
	addi.d	$a3, $sp, 280
	beq	$a0, $s1, .LBB29_163
	.p2align	4, , 16
.LBB29_162:                             # %vec.epilog.scalar.ph684
                                        #   Parent Loop BB29_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	stx.b	$a0, $a0, $a3
	addi.d	$a0, $a0, 1
	bne	$s1, $a0, .LBB29_162
.LBB29_163:                             # %.preheader403
                                        #   in Loop: Header=BB29_69 Depth=1
	addi.d	$t5, $sp, 280
	ld.bu	$a0, $sp, 280
	move	$a1, $zero
	b	.LBB29_165
	.p2align	4, , 16
.LBB29_164:                             # %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362._crit_edge
                                        #   in Loop: Header=BB29_165 Depth=2
	addi.d	$t5, $sp, 280
	addi.d	$a1, $a1, 1
	st.b	$a0, $sp, 280
	beq	$a1, $s3, .LBB29_184
.LBB29_165:                             #   Parent Loop BB29_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_176 Depth 3
                                        #         Child Loop BB29_178 Depth 4
                                        #       Child Loop BB29_169 Depth 3
                                        #       Child Loop BB29_181 Depth 3
                                        #       Child Loop BB29_183 Depth 3
	move	$a2, $a0
	ldx.bu	$a0, $s5, $a1
	bne	$a2, $a0, .LBB29_174
# %bb.166:                              #   in Loop: Header=BB29_165 Depth=2
	move	$a2, $zero
.LBB29_167:                             # %._crit_edge447
                                        #   in Loop: Header=BB29_165 Depth=2
	ld.d	$a3, $fp, 32
	ld.w	$a6, $a3, 4
	move	$a4, $zero
	ori	$a5, $zero, 1
	b	.LBB29_169
	.p2align	4, , 16
.LBB29_168:                             #   in Loop: Header=BB29_169 Depth=3
	sll.w	$a6, $a7, $a5
	sub.d	$a4, $a4, $a6
	move	$a6, $t0
	blez	$a5, .LBB29_171
.LBB29_169:                             #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_165 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t2, $a5
	slt	$a5, $a5, $a6
	masknez	$a7, $a6, $a5
	ld.bu	$t0, $a3, 8
	maskeqz	$a5, $t2, $a5
	or	$t3, $a5, $a7
	sub.w	$a5, $t2, $t3
	sll.w	$t0, $t0, $t3
	srl.w	$a7, $a4, $a5
	or	$t1, $t0, $a7
	st.b	$t1, $a3, 8
	sub.w	$t0, $a6, $t3
	st.w	$t0, $a3, 4
	blt	$t2, $a6, .LBB29_168
# %bb.170:                              #   in Loop: Header=BB29_169 Depth=3
	ld.wu	$a6, $a3, 0
	ld.d	$t0, $a3, 16
	addi.d	$t2, $a6, 1
	st.w	$t2, $a3, 0
	stx.b	$t1, $t0, $a6
	ori	$t0, $zero, 8
	st.w	$t0, $a3, 4
	b	.LBB29_168
	.p2align	4, , 16
.LBB29_171:                             # %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362.preheader
                                        #   in Loop: Header=BB29_165 Depth=2
	addi.w	$a3, $a2, 0
	blez	$a3, .LBB29_164
# %bb.172:                              # %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362.preheader462
                                        #   in Loop: Header=BB29_165 Depth=2
	bgeu	$a2, $t6, .LBB29_180
# %bb.173:                              #   in Loop: Header=BB29_165 Depth=2
	move	$a3, $a2
	addi.d	$a5, $sp, 280
	b	.LBB29_183
	.p2align	4, , 16
.LBB29_174:                             # %.lr.ph446.preheader
                                        #   in Loop: Header=BB29_165 Depth=2
	move	$a2, $zero
	b	.LBB29_176
	.p2align	4, , 16
.LBB29_175:                             # %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit357
                                        #   in Loop: Header=BB29_176 Depth=3
	addi.d	$a2, $a2, 1
	ldx.bu	$a3, $a2, $t5
	beq	$a3, $a0, .LBB29_167
.LBB29_176:                             # %.lr.ph446
                                        #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_165 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB29_178 Depth 4
	ld.d	$a3, $fp, 32
	ld.w	$a6, $a3, 4
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	b	.LBB29_178
	.p2align	4, , 16
.LBB29_177:                             #   in Loop: Header=BB29_178 Depth=4
	sll.w	$a6, $a7, $a5
	sub.d	$a4, $a4, $a6
	move	$a6, $t0
	blez	$a5, .LBB29_175
.LBB29_178:                             #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_165 Depth=2
                                        #       Parent Loop BB29_176 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$t2, $a5
	slt	$a5, $a5, $a6
	masknez	$a7, $a6, $a5
	ld.bu	$t0, $a3, 8
	maskeqz	$a5, $t2, $a5
	or	$t3, $a5, $a7
	sub.w	$a5, $t2, $t3
	sll.w	$t0, $t0, $t3
	srl.w	$a7, $a4, $a5
	or	$t1, $t0, $a7
	st.b	$t1, $a3, 8
	sub.w	$t0, $a6, $t3
	st.w	$t0, $a3, 4
	blt	$t2, $a6, .LBB29_177
# %bb.179:                              #   in Loop: Header=BB29_178 Depth=4
	ld.wu	$a6, $a3, 0
	ld.d	$t0, $a3, 16
	addi.d	$t2, $a6, 1
	st.w	$t2, $a3, 0
	stx.b	$t1, $t0, $a6
	ori	$t0, $zero, 8
	st.w	$t0, $a3, 4
	b	.LBB29_177
	.p2align	4, , 16
.LBB29_180:                             # %vector.ph656
                                        #   in Loop: Header=BB29_165 Depth=2
	bstrpick.d	$a3, $a2, 30, 4
	slli.d	$a4, $a3, 4
	andi	$a3, $a2, 15
	add.d	$a5, $t4, $a2
	move	$a6, $a4
	.p2align	4, , 16
.LBB29_181:                             # %vector.body659
                                        #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_165 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a5, 0
	vst	$vr0, $a5, 1
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, -16
	bnez	$a6, .LBB29_181
# %bb.182:                              # %middle.block666
                                        #   in Loop: Header=BB29_165 Depth=2
	addi.d	$a5, $sp, 280
	beq	$a4, $a2, .LBB29_164
	.p2align	4, , 16
.LBB29_183:                             # %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362
                                        #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_165 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a2, $a3
	add.d	$a3, $a5, $a3
	ld.b	$a3, $a3, -1
	stx.b	$a3, $a2, $a5
	addi.d	$a3, $a2, -1
	bltu	$s4, $a2, .LBB29_183
	b	.LBB29_164
	.p2align	4, , 16
.LBB29_184:                             #   in Loop: Header=BB29_69 Depth=1
	move	$a0, $zero
	b	.LBB29_186
	.p2align	4, , 16
.LBB29_185:                             #   in Loop: Header=BB29_186 Depth=2
	addi.d	$a0, $a0, 1
	beq	$a0, $s1, .LBB29_213
.LBB29_186:                             #   Parent Loop BB29_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_188 Depth 3
                                        #       Child Loop BB29_192 Depth 3
                                        #         Child Loop BB29_194 Depth 4
                                        #           Child Loop BB29_196 Depth 5
                                        #           Child Loop BB29_205 Depth 5
                                        #           Child Loop BB29_201 Depth 5
                                        #         Child Loop BB29_211 Depth 4
	ld.d	$a3, $fp, 32
	slli.d	$a1, $a0, 8
	alsl.d	$a2, $a0, $a1, 1
	ldx.bu	$a1, $s7, $a2
	ld.w	$a6, $a3, 4
	add.d	$a2, $s7, $a2
	ori	$a5, $zero, 5
	move	$a4, $a1
	b	.LBB29_188
	.p2align	4, , 16
.LBB29_187:                             #   in Loop: Header=BB29_188 Depth=3
	sll.w	$a6, $a7, $a5
	sub.d	$a4, $a4, $a6
	move	$a6, $t0
	blez	$a5, .LBB29_190
.LBB29_188:                             #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_186 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t2, $a5
	slt	$a5, $a5, $a6
	masknez	$a7, $a6, $a5
	ld.bu	$t0, $a3, 8
	maskeqz	$a5, $t2, $a5
	or	$t3, $a5, $a7
	sub.w	$a5, $t2, $t3
	sll.w	$t0, $t0, $t3
	srl.w	$a7, $a4, $a5
	or	$t1, $t0, $a7
	st.b	$t1, $a3, 8
	sub.w	$t0, $a6, $t3
	st.w	$t0, $a3, 4
	blt	$t2, $a6, .LBB29_187
# %bb.189:                              #   in Loop: Header=BB29_188 Depth=3
	ld.wu	$a6, $a3, 0
	ld.d	$t0, $a3, 16
	addi.d	$t2, $a6, 1
	st.w	$t2, $a3, 0
	stx.b	$t1, $t0, $a6
	ori	$t0, $zero, 8
	st.w	$t0, $a3, 4
	b	.LBB29_187
	.p2align	4, , 16
.LBB29_190:                             # %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit367.preheader
                                        #   in Loop: Header=BB29_186 Depth=2
	move	$a3, $zero
	b	.LBB29_192
	.p2align	4, , 16
.LBB29_191:                             # %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit387
                                        #   in Loop: Header=BB29_192 Depth=3
	addi.d	$a3, $a3, 1
	beq	$a3, $t8, .LBB29_185
.LBB29_192:                             # %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit367
                                        #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_186 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB29_194 Depth 4
                                        #           Child Loop BB29_196 Depth 5
                                        #           Child Loop BB29_205 Depth 5
                                        #           Child Loop BB29_201 Depth 5
                                        #         Child Loop BB29_211 Depth 4
	ldx.bu	$a4, $a2, $a3
	bne	$a1, $a4, .LBB29_194
	b	.LBB29_209
	.p2align	4, , 16
.LBB29_193:                             #   in Loop: Header=BB29_194 Depth=4
	ori	$a5, $zero, 1
	add.w	$a1, $a1, $a5
	beq	$a1, $a4, .LBB29_208
.LBB29_194:                             # %.lr.ph453
                                        #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_186 Depth=2
                                        #       Parent Loop BB29_192 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB29_196 Depth 5
                                        #           Child Loop BB29_205 Depth 5
                                        #           Child Loop BB29_201 Depth 5
	ld.d	$a5, $fp, 32
	ld.w	$t0, $a5, 4
	ori	$a6, $zero, 1
	ori	$a7, $zero, 1
	b	.LBB29_196
	.p2align	4, , 16
.LBB29_195:                             #   in Loop: Header=BB29_196 Depth=5
	sll.w	$t0, $t1, $a7
	sub.d	$a6, $a6, $t0
	move	$t0, $t2
	blez	$a7, .LBB29_198
.LBB29_196:                             #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_186 Depth=2
                                        #       Parent Loop BB29_192 Depth=3
                                        #         Parent Loop BB29_194 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	move	$t4, $a7
	slt	$a7, $a7, $t0
	masknez	$t1, $t0, $a7
	ld.bu	$t2, $a5, 8
	maskeqz	$a7, $t4, $a7
	or	$t5, $a7, $t1
	sub.w	$a7, $t4, $t5
	sll.w	$t2, $t2, $t5
	srl.w	$t1, $a6, $a7
	or	$t3, $t2, $t1
	st.b	$t3, $a5, 8
	sub.w	$t2, $t0, $t5
	st.w	$t2, $a5, 4
	blt	$t4, $t0, .LBB29_195
# %bb.197:                              #   in Loop: Header=BB29_196 Depth=5
	ld.wu	$t0, $a5, 0
	ld.d	$t2, $a5, 16
	addi.d	$t4, $t0, 1
	st.w	$t4, $a5, 0
	stx.b	$t3, $t2, $t0
	ori	$t2, $zero, 8
	st.w	$t2, $a5, 4
	b	.LBB29_195
	.p2align	4, , 16
.LBB29_198:                             # %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit372
                                        #   in Loop: Header=BB29_194 Depth=4
	ld.d	$a5, $fp, 32
	ld.w	$a6, $a5, 4
	bgeu	$a1, $a4, .LBB29_203
# %bb.199:                              # %.preheader612.preheader
                                        #   in Loop: Header=BB29_194 Depth=4
	move	$a7, $zero
	ori	$t0, $zero, 1
	b	.LBB29_201
	.p2align	4, , 16
.LBB29_200:                             #   in Loop: Header=BB29_201 Depth=5
	sll.w	$a6, $t1, $t0
	sub.d	$a7, $a7, $a6
	move	$a6, $t2
	blez	$t0, .LBB29_193
.LBB29_201:                             # %.preheader612
                                        #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_186 Depth=2
                                        #       Parent Loop BB29_192 Depth=3
                                        #         Parent Loop BB29_194 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	move	$t4, $t0
	slt	$t0, $t0, $a6
	masknez	$t1, $a6, $t0
	ld.bu	$t2, $a5, 8
	maskeqz	$t0, $t4, $t0
	or	$t5, $t0, $t1
	sub.w	$t0, $t4, $t5
	sll.w	$t2, $t2, $t5
	srl.w	$t1, $a7, $t0
	or	$t3, $t2, $t1
	st.b	$t3, $a5, 8
	sub.w	$t2, $a6, $t5
	st.w	$t2, $a5, 4
	blt	$t4, $a6, .LBB29_200
# %bb.202:                              #   in Loop: Header=BB29_201 Depth=5
	ld.wu	$a6, $a5, 0
	ld.d	$t2, $a5, 16
	addi.d	$t4, $a6, 1
	st.w	$t4, $a5, 0
	stx.b	$t3, $t2, $a6
	ori	$t2, $zero, 8
	st.w	$t2, $a5, 4
	b	.LBB29_200
	.p2align	4, , 16
.LBB29_203:                             # %.preheader613.preheader
                                        #   in Loop: Header=BB29_194 Depth=4
	ori	$a7, $zero, 1
	ori	$t0, $zero, 1
	b	.LBB29_205
	.p2align	4, , 16
.LBB29_204:                             #   in Loop: Header=BB29_205 Depth=5
	sll.w	$a6, $t1, $t0
	sub.d	$a7, $a7, $a6
	move	$a6, $t2
	blez	$t0, .LBB29_207
.LBB29_205:                             # %.preheader613
                                        #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_186 Depth=2
                                        #       Parent Loop BB29_192 Depth=3
                                        #         Parent Loop BB29_194 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	move	$t4, $t0
	slt	$t0, $t0, $a6
	masknez	$t1, $a6, $t0
	ld.bu	$t2, $a5, 8
	maskeqz	$t0, $t4, $t0
	or	$t5, $t0, $t1
	sub.w	$t0, $t4, $t5
	sll.w	$t2, $t2, $t5
	srl.w	$t1, $a7, $t0
	or	$t3, $t2, $t1
	st.b	$t3, $a5, 8
	sub.w	$t2, $a6, $t5
	st.w	$t2, $a5, 4
	blt	$t4, $a6, .LBB29_204
# %bb.206:                              #   in Loop: Header=BB29_205 Depth=5
	ld.wu	$a6, $a5, 0
	ld.d	$t2, $a5, 16
	addi.d	$t4, $a6, 1
	st.w	$t4, $a5, 0
	stx.b	$t3, $t2, $a6
	ori	$t2, $zero, 8
	st.w	$t2, $a5, 4
	b	.LBB29_204
	.p2align	4, , 16
.LBB29_207:                             #   in Loop: Header=BB29_194 Depth=4
	addi.d	$a5, $zero, -1
	add.w	$a1, $a1, $a5
	bne	$a1, $a4, .LBB29_194
.LBB29_208:                             #   in Loop: Header=BB29_192 Depth=3
	move	$a1, $a4
.LBB29_209:                             # %._crit_edge454
                                        #   in Loop: Header=BB29_192 Depth=3
	ld.d	$a4, $fp, 32
	ld.w	$a7, $a4, 4
	move	$a5, $zero
	ori	$a6, $zero, 1
	b	.LBB29_211
	.p2align	4, , 16
.LBB29_210:                             #   in Loop: Header=BB29_211 Depth=4
	sll.w	$a7, $t0, $a6
	sub.d	$a5, $a5, $a7
	move	$a7, $t1
	blez	$a6, .LBB29_191
.LBB29_211:                             #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_186 Depth=2
                                        #       Parent Loop BB29_192 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$t3, $a6
	slt	$a6, $a6, $a7
	masknez	$t0, $a7, $a6
	ld.bu	$t1, $a4, 8
	maskeqz	$a6, $t3, $a6
	or	$t4, $a6, $t0
	sub.w	$a6, $t3, $t4
	sll.w	$t1, $t1, $t4
	srl.w	$t0, $a5, $a6
	or	$t2, $t1, $t0
	st.b	$t2, $a4, 8
	sub.w	$t1, $a7, $t4
	st.w	$t1, $a4, 4
	blt	$t3, $a7, .LBB29_210
# %bb.212:                              #   in Loop: Header=BB29_211 Depth=4
	ld.wu	$a7, $a4, 0
	ld.d	$t1, $a4, 16
	addi.d	$t3, $a7, 1
	st.w	$t3, $a4, 0
	stx.b	$t2, $t1, $a7
	ori	$t1, $zero, 8
	st.w	$t1, $a4, 4
	b	.LBB29_210
	.p2align	4, , 16
.LBB29_213:                             # %.preheader402.preheader
                                        #   in Loop: Header=BB29_69 Depth=1
	ori	$ra, $zero, 16
	move	$a3, $zero
	move	$a2, $zero
	move	$a1, $zero
	move	$a4, $zero
	move	$a0, $zero
	ld.d	$t6, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	b	.LBB29_215
	.p2align	4, , 16
.LBB29_214:                             # %_ZN9NCompress6NBZip216CMsbfEncoderTemp9WriteBitsEji.exit
                                        #   in Loop: Header=BB29_215 Depth=2
	addi.w	$a3, $a3, -1
	ld.d	$t3, $sp, 200                   # 8-byte Folded Reload
	bgeu	$a0, $s6, .LBB29_224
.LBB29_215:                             # %.preheader402
                                        #   Parent Loop BB29_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_221 Depth 3
	bstrpick.d	$a5, $a0, 31, 0
	ldx.bu	$a6, $s2, $a5
	addi.w	$a5, $a0, 1
	ori	$a7, $zero, 255
	beq	$a6, $a7, .LBB29_223
# %bb.216:                              #   in Loop: Header=BB29_215 Depth=2
	move	$a0, $a5
	bnez	$a3, .LBB29_218
.LBB29_217:                             #   in Loop: Header=BB29_215 Depth=2
	bstrpick.d	$a1, $a2, 31, 0
	ldx.bu	$a3, $s5, $a1
	addi.w	$a2, $a2, 1
	slli.d	$a1, $a3, 8
	alsl.d	$a1, $a3, $a1, 1
	add.d	$a1, $s7, $a1
	slli.d	$a4, $a3, 10
	alsl.d	$a3, $a3, $a4, 3
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	add.d	$a4, $a4, $a3
	ori	$a3, $zero, 50
.LBB29_218:                             #   in Loop: Header=BB29_215 Depth=2
	ldx.bu	$a7, $a1, $a6
	beqz	$a7, .LBB29_214
# %bb.219:                              # %.lr.ph.i388
                                        #   in Loop: Header=BB29_215 Depth=2
	ld.d	$a5, $fp, 32
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a4, $a6
	ld.w	$t0, $a5, 4
	b	.LBB29_221
	.p2align	4, , 16
.LBB29_220:                             #   in Loop: Header=BB29_221 Depth=3
	sll.w	$t0, $t1, $a7
	sub.d	$a6, $a6, $t0
	move	$t0, $t2
	blez	$a7, .LBB29_214
.LBB29_221:                             #   Parent Loop BB29_69 Depth=1
                                        #     Parent Loop BB29_215 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t4, $a7
	slt	$a7, $a7, $t0
	masknez	$t1, $t0, $a7
	ld.bu	$t2, $a5, 8
	maskeqz	$a7, $t4, $a7
	or	$t5, $a7, $t1
	sub.w	$a7, $t4, $t5
	sll.w	$t2, $t2, $t5
	srl.w	$t1, $a6, $a7
	or	$t3, $t2, $t1
	st.b	$t3, $a5, 8
	sub.w	$t2, $t0, $t5
	st.w	$t2, $a5, 4
	blt	$t4, $t0, .LBB29_220
# %bb.222:                              #   in Loop: Header=BB29_221 Depth=3
	ld.wu	$t0, $a5, 0
	ld.d	$t2, $a5, 16
	addi.d	$t4, $t0, 1
	st.w	$t4, $a5, 0
	stx.b	$t3, $t2, $t0
	ori	$t2, $zero, 8
	st.w	$t2, $a5, 4
	b	.LBB29_220
	.p2align	4, , 16
.LBB29_223:                             #   in Loop: Header=BB29_215 Depth=2
	bstrpick.d	$a5, $a5, 31, 0
	ldx.bu	$a5, $s2, $a5
	addi.w	$a0, $a0, 2
	addi.d	$a6, $a5, 255
	bnez	$a3, .LBB29_218
	b	.LBB29_217
	.p2align	4, , 16
.LBB29_224:                             #   in Loop: Header=BB29_69 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB29_227
# %bb.225:                              #   in Loop: Header=BB29_69 Depth=1
	ld.d	$a1, $fp, 32
	ld.w	$a0, $a1, 0
	ld.w	$a2, $a1, 4
	slli.d	$a0, $a0, 3
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.d	$a3, $a3, $a2
	sub.w	$a0, $a0, $a3
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	bltu	$a3, $a0, .LBB29_68
# %bb.226:                              #   in Loop: Header=BB29_69 Depth=1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $zero, 6
	bne	$a5, $a0, .LBB29_68
.LBB29_227:
	ld.d	$s8, $sp, 1768                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1776                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1784                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1792                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1800                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1808                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1816                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1824                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1832                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1840                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1848                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1856
	ret
.Lfunc_end29:
	.size	_ZN9NCompress6NBZip211CThreadInfo11EncodeBlockEPKhj, .Lfunc_end29-_ZN9NCompress6NBZip211CThreadInfo11EncodeBlockEPKhj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress6NBZip211CThreadInfo22EncodeBlockWithHeadersEPKhj # -- Begin function _ZN9NCompress6NBZip211CThreadInfo22EncodeBlockWithHeadersEPKhj
	.p2align	5
	.type	_ZN9NCompress6NBZip211CThreadInfo22EncodeBlockWithHeadersEPKhj,@function
_ZN9NCompress6NBZip211CThreadInfo22EncodeBlockWithHeadersEPKhj: # @_ZN9NCompress6NBZip211CThreadInfo22EncodeBlockWithHeadersEPKhj
	.cfi_startproc
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
	move	$s2, $a0
	ld.d	$a3, $a0, 32
	ld.w	$a4, $a3, 4
	move	$fp, $a2
	move	$s0, $a1
	ori	$a2, $zero, 8
	ori	$a1, $zero, 49
	b	.LBB30_2
	.p2align	4, , 16
.LBB30_1:                               #   in Loop: Header=BB30_2 Depth=1
	sll.w	$a4, $a5, $a2
	sub.d	$a1, $a1, $a4
	move	$a4, $a6
	blez	$a2, .LBB30_4
.LBB30_2:                               # =>This Inner Loop Header: Depth=1
	move	$t0, $a2
	slt	$a2, $a2, $a4
	masknez	$a5, $a4, $a2
	ld.bu	$a6, $a3, 8
	maskeqz	$a2, $t0, $a2
	or	$t1, $a2, $a5
	sub.w	$a2, $t0, $t1
	sll.w	$a6, $a6, $t1
	srl.w	$a5, $a1, $a2
	or	$a7, $a6, $a5
	st.b	$a7, $a3, 8
	sub.w	$a6, $a4, $t1
	st.w	$a6, $a3, 4
	blt	$t0, $a4, .LBB30_1
# %bb.3:                                #   in Loop: Header=BB30_2 Depth=1
	ld.wu	$a4, $a3, 0
	ld.d	$a6, $a3, 16
	addi.d	$t0, $a4, 1
	st.w	$t0, $a3, 0
	stx.b	$a7, $a6, $a4
	ori	$a6, $zero, 8
	st.w	$a6, $a3, 4
	b	.LBB30_1
.LBB30_4:                               # %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit
	ld.d	$a1, $s2, 32
	ld.w	$a4, $a1, 4
	ori	$a3, $zero, 8
	ori	$a2, $zero, 65
	b	.LBB30_6
	.p2align	4, , 16
.LBB30_5:                               #   in Loop: Header=BB30_6 Depth=1
	sll.w	$a4, $a5, $a3
	sub.d	$a2, $a2, $a4
	move	$a4, $a6
	blez	$a3, .LBB30_8
.LBB30_6:                               # =>This Inner Loop Header: Depth=1
	move	$t0, $a3
	slt	$a3, $a3, $a4
	masknez	$a5, $a4, $a3
	ld.bu	$a6, $a1, 8
	maskeqz	$a3, $t0, $a3
	or	$t1, $a3, $a5
	sub.w	$a3, $t0, $t1
	sll.w	$a6, $a6, $t1
	srl.w	$a5, $a2, $a3
	or	$a7, $a6, $a5
	st.b	$a7, $a1, 8
	sub.w	$a6, $a4, $t1
	st.w	$a6, $a1, 4
	blt	$t0, $a4, .LBB30_5
# %bb.7:                                #   in Loop: Header=BB30_6 Depth=1
	ld.wu	$a4, $a1, 0
	ld.d	$a6, $a1, 16
	addi.d	$t0, $a4, 1
	st.w	$t0, $a1, 0
	stx.b	$a7, $a6, $a4
	ori	$a6, $zero, 8
	st.w	$a6, $a1, 4
	b	.LBB30_5
.LBB30_8:                               # %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit29
	ld.d	$a1, $s2, 32
	ld.w	$a4, $a1, 4
	ori	$a3, $zero, 8
	ori	$a2, $zero, 89
	b	.LBB30_10
	.p2align	4, , 16
.LBB30_9:                               #   in Loop: Header=BB30_10 Depth=1
	sll.w	$a4, $a5, $a3
	sub.d	$a2, $a2, $a4
	move	$a4, $a6
	blez	$a3, .LBB30_12
.LBB30_10:                              # =>This Inner Loop Header: Depth=1
	move	$t0, $a3
	slt	$a3, $a3, $a4
	masknez	$a5, $a4, $a3
	ld.bu	$a6, $a1, 8
	maskeqz	$a3, $t0, $a3
	or	$t1, $a3, $a5
	sub.w	$a3, $t0, $t1
	sll.w	$a6, $a6, $t1
	srl.w	$a5, $a2, $a3
	or	$a7, $a6, $a5
	st.b	$a7, $a1, 8
	sub.w	$a6, $a4, $t1
	st.w	$a6, $a1, 4
	blt	$t0, $a4, .LBB30_9
# %bb.11:                               #   in Loop: Header=BB30_10 Depth=1
	ld.wu	$a4, $a1, 0
	ld.d	$a6, $a1, 16
	addi.d	$t0, $a4, 1
	st.w	$t0, $a1, 0
	stx.b	$a7, $a6, $a4
	ori	$a6, $zero, 8
	st.w	$a6, $a1, 4
	b	.LBB30_9
.LBB30_12:                              # %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit34
	ld.d	$a1, $s2, 32
	ld.w	$a4, $a1, 4
	ori	$a3, $zero, 8
	ori	$a2, $zero, 38
	b	.LBB30_14
	.p2align	4, , 16
.LBB30_13:                              #   in Loop: Header=BB30_14 Depth=1
	sll.w	$a4, $a5, $a3
	sub.d	$a2, $a2, $a4
	move	$a4, $a6
	blez	$a3, .LBB30_16
.LBB30_14:                              # =>This Inner Loop Header: Depth=1
	move	$t0, $a3
	slt	$a3, $a3, $a4
	masknez	$a5, $a4, $a3
	ld.bu	$a6, $a1, 8
	maskeqz	$a3, $t0, $a3
	or	$t1, $a3, $a5
	sub.w	$a3, $t0, $t1
	sll.w	$a6, $a6, $t1
	srl.w	$a5, $a2, $a3
	or	$a7, $a6, $a5
	st.b	$a7, $a1, 8
	sub.w	$a6, $a4, $t1
	st.w	$a6, $a1, 4
	blt	$t0, $a4, .LBB30_13
# %bb.15:                               #   in Loop: Header=BB30_14 Depth=1
	ld.wu	$a4, $a1, 0
	ld.d	$a6, $a1, 16
	addi.d	$t0, $a4, 1
	st.w	$t0, $a1, 0
	stx.b	$a7, $a6, $a4
	ori	$a6, $zero, 8
	st.w	$a6, $a1, 4
	b	.LBB30_13
.LBB30_16:                              # %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit39
	ld.d	$a1, $s2, 32
	ld.w	$a4, $a1, 4
	ori	$a3, $zero, 8
	ori	$a2, $zero, 83
	b	.LBB30_18
	.p2align	4, , 16
.LBB30_17:                              #   in Loop: Header=BB30_18 Depth=1
	sll.w	$a4, $a5, $a3
	sub.d	$a2, $a2, $a4
	move	$a4, $a6
	blez	$a3, .LBB30_20
.LBB30_18:                              # =>This Inner Loop Header: Depth=1
	move	$t0, $a3
	slt	$a3, $a3, $a4
	masknez	$a5, $a4, $a3
	ld.bu	$a6, $a1, 8
	maskeqz	$a3, $t0, $a3
	or	$t1, $a3, $a5
	sub.w	$a3, $t0, $t1
	sll.w	$a6, $a6, $t1
	srl.w	$a5, $a2, $a3
	or	$a7, $a6, $a5
	st.b	$a7, $a1, 8
	sub.w	$a6, $a4, $t1
	st.w	$a6, $a1, 4
	blt	$t0, $a4, .LBB30_17
# %bb.19:                               #   in Loop: Header=BB30_18 Depth=1
	ld.wu	$a4, $a1, 0
	ld.d	$a6, $a1, 16
	addi.d	$t0, $a4, 1
	st.w	$t0, $a1, 0
	stx.b	$a7, $a6, $a4
	ori	$a6, $zero, 8
	st.w	$a6, $a1, 4
	b	.LBB30_17
.LBB30_20:                              # %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit44
	ld.d	$a1, $s2, 32
	ld.w	$a4, $a1, 4
	ori	$a3, $zero, 8
	ori	$a2, $zero, 89
	b	.LBB30_22
	.p2align	4, , 16
.LBB30_21:                              #   in Loop: Header=BB30_22 Depth=1
	sll.w	$a4, $a5, $a3
	sub.d	$a2, $a2, $a4
	move	$a4, $a6
	blez	$a3, .LBB30_24
.LBB30_22:                              # =>This Inner Loop Header: Depth=1
	move	$t0, $a3
	slt	$a3, $a3, $a4
	masknez	$a5, $a4, $a3
	ld.bu	$a6, $a1, 8
	maskeqz	$a3, $t0, $a3
	or	$t1, $a3, $a5
	sub.w	$a3, $t0, $t1
	sll.w	$a6, $a6, $t1
	srl.w	$a5, $a2, $a3
	or	$a7, $a6, $a5
	st.b	$a7, $a1, 8
	sub.w	$a6, $a4, $t1
	st.w	$a6, $a1, 4
	blt	$t0, $a4, .LBB30_21
# %bb.23:                               #   in Loop: Header=BB30_22 Depth=1
	ld.wu	$a4, $a1, 0
	ld.d	$a6, $a1, 16
	addi.d	$t0, $a4, 1
	st.w	$t0, $a1, 0
	stx.b	$a7, $a6, $a4
	ori	$a6, $zero, 8
	st.w	$a6, $a1, 4
	b	.LBB30_21
.LBB30_24:                              # %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit49
	ld.bu	$a7, $s0, 0
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $fp
	masknez	$a3, $a1, $a2
	maskeqz	$a2, $fp, $a2
	or	$a2, $a2, $a3
	bstrpick.d	$a2, $a2, 31, 0
	addi.w	$a5, $zero, -1
	ori	$a3, $zero, 4
	pcalau12i	$a4, %got_pc_hi20(_ZN9CBZip2Crc5TableE)
	ld.d	$a4, $a4, %got_pc_lo12(_ZN9CBZip2Crc5TableE)
	move	$a6, $zero
	move	$t1, $zero
	b	.LBB30_26
	.p2align	4, , 16
.LBB30_25:                              #   in Loop: Header=BB30_26 Depth=1
	andi	$a7, $a7, 255
	xor	$a7, $a7, $t0
	sltui	$a7, $a7, 1
	addi.w	$t1, $t1, 1
	masknez	$t2, $a1, $a7
	bstrpick.d	$t3, $a5, 31, 24
	xor	$t3, $t3, $t0
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $a4, $t3
	maskeqz	$a7, $t1, $a7
	or	$t1, $a7, $t2
	slli.d	$a5, $a5, 8
	xor	$a5, $t3, $a5
	move	$a7, $t0
	addi.d	$a6, $a6, 1
	beq	$a6, $a2, .LBB30_31
.LBB30_26:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_29 Depth 2
	ldx.bu	$t0, $s0, $a6
	bne	$t1, $a3, .LBB30_25
# %bb.27:                               # %.preheader
                                        #   in Loop: Header=BB30_26 Depth=1
	beqz	$t0, .LBB30_30
# %bb.28:                               # %.lr.ph
                                        #   in Loop: Header=BB30_26 Depth=1
	andi	$t1, $a7, 255
	.p2align	4, , 16
.LBB30_29:                              #   Parent Loop BB30_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t2, $a5, 31, 24
	xor	$t2, $t2, $t1
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a4, $t2
	slli.d	$a5, $a5, 8
	addi.d	$t0, $t0, -1
	andi	$t3, $t0, 255
	xor	$a5, $t2, $a5
	bnez	$t3, .LBB30_29
.LBB30_30:                              #   in Loop: Header=BB30_26 Depth=1
	move	$t1, $zero
	addi.d	$a6, $a6, 1
	bne	$a6, $a2, .LBB30_26
.LBB30_31:
	nor	$a1, $a5, $zero
	addi.w	$s1, $a1, 0
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip211CThreadInfo9WriteCrc2Ej)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip211CThreadInfo11EncodeBlockEPKhj)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end30:
	.size	_ZN9NCompress6NBZip211CThreadInfo22EncodeBlockWithHeadersEPKhj, .Lfunc_end30-_ZN9NCompress6NBZip211CThreadInfo22EncodeBlockWithHeadersEPKhj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock2EPKhjj # -- Begin function _ZN9NCompress6NBZip211CThreadInfo12EncodeBlock2EPKhjj
	.p2align	5
	.type	_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock2EPKhjj,@function
_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock2EPKhjj: # @_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock2EPKhjj
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
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
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
	ld.d	$a0, $a0, 32
	move	$s6, $zero
	lu12i.w	$a4, 8
	ld.wu	$s3, $a0, 0
	ori	$s5, $a4, 3304
	ld.w	$a4, $a0, 4
	ldx.wu	$s7, $fp, $s5
	slli.d	$a5, $s3, 3
	ori	$a6, $zero, 1024
	sub.w	$s4, $a5, $a4
	bltu	$a2, $a6, .LBB31_14
# %bb.1:
	ori	$a4, $zero, 2
	move	$s0, $s4
	move	$s1, $s3
	move	$s8, $s6
	move	$s2, $s6
	bltu	$a3, $a4, .LBB31_16
# %bb.2:
	ld.bu	$t0, $a0, 8
	bstrpick.d	$a0, $a2, 31, 0
	bstrpick.d	$s6, $a2, 31, 1
	addi.w	$a4, $zero, -2
	lu32i.d	$a4, 0
	move	$a5, $s6
	b	.LBB31_5
	.p2align	4, , 16
.LBB31_3:                               #   in Loop: Header=BB31_5 Depth=1
	bgeu	$a5, $a0, .LBB31_8
.LBB31_4:                               #   in Loop: Header=BB31_5 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$s6, $s6, 1
.LBB31_5:                               # =>This Inner Loop Header: Depth=1
	ldx.bu	$a7, $a1, $a5
	addi.d	$a6, $a5, -1
	bstrpick.d	$a6, $a6, 31, 0
	ldx.bu	$a6, $a1, $a6
	beq	$a7, $a6, .LBB31_3
# %bb.6:                                #   in Loop: Header=BB31_5 Depth=1
	bgeu	$a5, $a0, .LBB31_8
# %bb.7:                                #   in Loop: Header=BB31_5 Depth=1
	add.d	$a7, $a5, $a4
	bstrpick.d	$a7, $a7, 31, 0
	ldx.bu	$a7, $a1, $a7
	beq	$a6, $a7, .LBB31_4
.LBB31_8:                               # %.critedge
	addi.w	$a4, $s6, 0
	bgeu	$a4, $a2, .LBB31_15
# %bb.9:
	st.d	$t0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	add.d	$s0, $a1, $a5
	addi.w	$s1, $a3, -1
	move	$a0, $fp
	move	$s7, $a1
	move	$s8, $a2
	move	$a2, $a4
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock2EPKhjj)
	jirl	$ra, $ra, 0
	move	$s2, $s8
	sub.w	$a2, $s8, $s6
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock2EPKhjj)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	ld.w	$s1, $a0, 0
	ld.w	$a4, $a0, 4
	slli.d	$a3, $s1, 3
	ld.bu	$s8, $a0, 8
	sub.d	$a2, $a3, $a4
	andi	$a1, $a2, 7
	addi.w	$s6, $a2, 8
	beqz	$a1, .LBB31_27
# %bb.10:
	move	$a3, $zero
	ori	$a2, $zero, 8
	sub.w	$a5, $a2, $a1
	move	$a2, $s2
	move	$a1, $s7
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	b	.LBB31_12
	.p2align	4, , 16
.LBB31_11:                              #   in Loop: Header=BB31_12 Depth=1
	sll.w	$a4, $a6, $a5
	sub.d	$a3, $a3, $a4
	move	$a4, $a7
	blez	$a5, .LBB31_26
.LBB31_12:                              # =>This Inner Loop Header: Depth=1
	move	$t1, $a5
	slt	$a5, $a5, $a4
	masknez	$a6, $a4, $a5
	ld.bu	$a7, $a0, 8
	maskeqz	$a5, $t1, $a5
	or	$t2, $a5, $a6
	sub.w	$a5, $t1, $t2
	sll.w	$a7, $a7, $t2
	srl.w	$a6, $a3, $a5
	or	$t0, $a7, $a6
	st.b	$t0, $a0, 8
	sub.w	$a7, $a4, $t2
	st.w	$a7, $a0, 4
	blt	$t1, $a4, .LBB31_11
# %bb.13:                               #   in Loop: Header=BB31_12 Depth=1
	ld.wu	$a4, $a0, 0
	ld.d	$a7, $a0, 16
	addi.d	$t1, $a4, 1
	st.w	$t1, $a0, 0
	stx.b	$t0, $a7, $a4
	ori	$a7, $zero, 8
	st.w	$a7, $a0, 4
	b	.LBB31_11
.LBB31_14:
	move	$s0, $s4
	move	$s1, $s3
	move	$s8, $s6
	move	$s2, $s6
	add.d	$s5, $fp, $s5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip211CThreadInfo22EncodeBlockWithHeadersEPKhj)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB31_17
	b	.LBB31_29
.LBB31_15:
	move	$s6, $zero
	move	$s8, $zero
	move	$s2, $zero
	move	$s0, $s4
	move	$s1, $s3
.LBB31_16:
	add.d	$s5, $fp, $s5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip211CThreadInfo22EncodeBlockWithHeadersEPKhj)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB31_29
.LBB31_17:
	ld.d	$a3, $fp, 32
	ld.w	$a4, $a3, 0
	ld.w	$a2, $a3, 4
	addi.w	$a1, $s4, 8
	slli.d	$a5, $a4, 3
	sub.w	$a2, $a5, $a2
	sub.w	$a5, $a2, $s0
	sub.w	$a6, $s6, $a1
	bgeu	$a5, $a6, .LBB31_25
# %bb.18:
	addi.w	$a5, $s1, 0
	beq	$a4, $a5, .LBB31_24
# %bb.19:                               # %iter.check
	ld.d	$a3, $a3, 16
	sub.w	$a6, $a4, $s1
	ori	$a5, $zero, 8
	bstrpick.d	$a4, $a6, 31, 0
	bgeu	$a6, $a5, .LBB31_31
.LBB31_20:
	move	$a5, $zero
.LBB31_21:                              # %.lr.ph.preheader
	add.w	$a6, $s3, $a5
	add.w	$a7, $s1, $a5
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB31_22:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a7, 31, 0
	ldx.b	$a5, $a3, $a5
	bstrpick.d	$t0, $a6, 31, 0
	stx.b	$a5, $a3, $t0
	addi.w	$a6, $a6, 1
	addi.d	$a4, $a4, -1
	addi.w	$a7, $a7, 1
	bnez	$a4, .LBB31_22
.LBB31_23:                              # %._crit_edge.loopexit
	ld.d	$a3, $fp, 32
.LBB31_24:                              # %._crit_edge
	sub.d	$a1, $a1, $s0
	add.d	$a1, $a1, $a2
	bstrpick.d	$a2, $a1, 31, 3
	st.w	$a2, $a3, 0
	andi	$a1, $a1, 7
	ori	$a2, $zero, 8
	sub.d	$a1, $a2, $a1
	st.w	$a1, $a3, 4
	b	.LBB31_29
.LBB31_25:
	bstrpick.d	$a0, $s6, 31, 3
	st.w	$a0, $a3, 0
	andi	$a0, $s6, 7
	ori	$a1, $zero, 8
	sub.d	$a0, $a1, $a0
	st.w	$a0, $a3, 4
	st.b	$s8, $a3, 8
	b	.LBB31_30
.LBB31_26:                              # %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit.loopexit
	ld.d	$a0, $fp, 32
	ld.w	$s1, $a0, 0
	slli.d	$a3, $s1, 3
	b	.LBB31_28
.LBB31_27:
	move	$a2, $s2
	move	$a1, $s7
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
.LBB31_28:                              # %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit
	andi	$a4, $s4, 7
	ori	$a5, $zero, 8
	sub.d	$a4, $a5, $a4
	st.w	$a4, $a0, 4
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	st.b	$a5, $a0, 8
	sub.w	$s0, $a3, $a4
	ori	$s2, $zero, 1
	add.d	$s5, $fp, $s5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip211CThreadInfo22EncodeBlockWithHeadersEPKhj)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB31_17
.LBB31_29:
	alsl.d	$a1, $s7, $fp, 2
	addi.d	$a2, $s7, 1
	st.w	$a2, $s5, 0
	stptr.w	$a0, $a1, 31976
.LBB31_30:
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
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
.LBB31_31:                              # %vector.scevcheck
	addi.d	$a7, $a4, -1
	addi.w	$t0, $a7, 0
	nor	$a5, $s3, $zero
	addi.w	$t1, $a5, 0
	move	$a5, $zero
	bltu	$t1, $t0, .LBB31_21
# %bb.32:                               # %vector.scevcheck
	nor	$t1, $s1, $zero
	addi.w	$t1, $t1, 0
	bltu	$t1, $t0, .LBB31_21
# %bb.33:                               # %vector.scevcheck
	srli.d	$a7, $a7, 32
	bnez	$a7, .LBB31_21
# %bb.34:                               # %vector.memcheck
	bstrpick.d	$a5, $s1, 31, 0
	sub.d	$a7, $s3, $a5
	ori	$a5, $zero, 32
	bltu	$a7, $a5, .LBB31_20
# %bb.35:                               # %vector.main.loop.iter.check
	bgeu	$a6, $a5, .LBB31_37
# %bb.36:
	move	$a5, $zero
	b	.LBB31_41
.LBB31_37:                              # %vector.ph
	bstrpick.d	$a5, $a4, 31, 5
	slli.d	$a5, $a5, 5
	andi	$a6, $a4, 24
	move	$a7, $s1
	move	$t0, $s3
	move	$t1, $a5
	.p2align	4, , 16
.LBB31_38:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t2, $a7, 31, 0
	add.d	$t3, $a3, $t2
	vldx	$vr0, $a3, $t2
	vld	$vr1, $t3, 16
	bstrpick.d	$t2, $t0, 31, 0
	add.d	$t3, $a3, $t2
	vstx	$vr0, $a3, $t2
	vst	$vr1, $t3, 16
	addi.d	$t1, $t1, -32
	addi.w	$t0, $t0, 32
	addi.w	$a7, $a7, 32
	bnez	$t1, .LBB31_38
# %bb.39:                               # %middle.block
	beq	$a5, $a4, .LBB31_23
# %bb.40:                               # %vec.epilog.iter.check
	beqz	$a6, .LBB31_21
.LBB31_41:                              # %vec.epilog.ph
	move	$t0, $a5
	bstrpick.d	$a5, $a4, 31, 3
	slli.d	$a5, $a5, 3
	sub.d	$a6, $t0, $a5
	add.w	$a7, $s3, $t0
	add.w	$t0, $s1, $t0
	.p2align	4, , 16
.LBB31_42:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t1, $t0, 31, 0
	ldx.d	$t1, $a3, $t1
	bstrpick.d	$t2, $a7, 31, 0
	stx.d	$t1, $a3, $t2
	addi.d	$a6, $a6, 8
	addi.w	$a7, $a7, 8
	addi.w	$t0, $t0, 8
	bnez	$a6, .LBB31_42
# %bb.43:                               # %vec.epilog.middle.block
	bne	$a5, $a4, .LBB31_21
	b	.LBB31_23
.Lfunc_end31:
	.size	_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock2EPKhjj, .Lfunc_end31-_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock2EPKhjj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress6NBZip28CEncoder10WriteBytesEPKhjh # -- Begin function _ZN9NCompress6NBZip28CEncoder10WriteBytesEPKhjh
	.p2align	5
	.type	_ZN9NCompress6NBZip28CEncoder10WriteBytesEPKhjh,@function
_ZN9NCompress6NBZip28CEncoder10WriteBytesEPKhjh: # @_ZN9NCompress6NBZip28CEncoder10WriteBytesEPKhjh
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
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
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
	ori	$s4, $zero, 8
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a2
	move	$s1, $a0
	bgeu	$a2, $s4, .LBB32_2
.LBB32_1:                               # %._crit_edge
	andi	$a2, $s0, 7
	move	$a0, $s1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj)
	jr	$t8
.LBB32_2:                               # %.lr.ph
	move	$s2, $a1
	ld.w	$s6, $s1, 408
	ld.bu	$a0, $s1, 412
	bstrpick.d	$s5, $s0, 31, 3
	addi.d	$s3, $s1, 352
	b	.LBB32_6
.LBB32_3:                               # %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit.loopexit.loopexit
                                        #   in Loop: Header=BB32_6 Depth=1
	move	$a0, $zero
	ori	$s6, $zero, 8
	st.w	$s6, $s1, 408
	.p2align	4, , 16
.LBB32_4:                               # %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit.sink.split
                                        #   in Loop: Header=BB32_6 Depth=1
	st.b	$a0, $s1, 412
.LBB32_5:                               # %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit
                                        #   in Loop: Header=BB32_6 Depth=1
	addi.d	$s5, $s5, -1
	addi.d	$s2, $s2, 1
	beqz	$s5, .LBB32_1
.LBB32_6:                               # %.peel.begin
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$s7, $s2, 0
	ori	$s8, $zero, 8
	bgeu	$s8, $s6, .LBB32_8
# %bb.7:                                #   in Loop: Header=BB32_6 Depth=1
	move	$a1, $s6
	b	.LBB32_13
	.p2align	4, , 16
.LBB32_8:                               #   in Loop: Header=BB32_6 Depth=1
	sub.d	$s8, $s4, $s6
	ld.wu	$a1, $s1, 360
	srl.w	$fp, $s7, $s8
	ld.d	$a2, $s1, 352
	or	$a0, $a0, $fp
	addi.d	$a3, $a1, 1
	st.w	$a3, $s1, 360
	stx.b	$a0, $a2, $a1
	ld.w	$a0, $s1, 360
	ld.w	$a1, $s1, 364
	bne	$a0, $a1, .LBB32_10
# %bb.9:                                #   in Loop: Header=BB32_6 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB32_10:                              # %_ZN10COutBuffer9WriteByteEh.exit.i.peel
                                        #   in Loop: Header=BB32_6 Depth=1
	ori	$a1, $zero, 8
	st.w	$a1, $s1, 408
	st.b	$zero, $s1, 412
	beqz	$s6, .LBB32_14
# %bb.11:                               # %_ZN10COutBuffer9WriteByteEh.exit.i.peel
                                        #   in Loop: Header=BB32_6 Depth=1
	move	$a0, $zero
	beq	$s6, $s4, .LBB32_5
# %bb.12:                               #   in Loop: Header=BB32_6 Depth=1
	sll.w	$a2, $fp, $s8
	sub.d	$s7, $s7, $a2
.LBB32_13:                              # %.loopexit
                                        #   in Loop: Header=BB32_6 Depth=1
	sub.w	$s6, $a1, $s8
	st.w	$s6, $s1, 408
	sll.w	$a1, $s7, $s6
	or	$a0, $a0, $a1
	b	.LBB32_4
.LBB32_14:                              #   in Loop: Header=BB32_6 Depth=1
	ld.wu	$a0, $s1, 360
	ld.d	$a1, $s1, 352
	addi.d	$a2, $a0, 1
	st.w	$a2, $s1, 360
	stx.b	$s7, $a1, $a0
	ld.w	$a0, $s1, 360
	ld.w	$a1, $s1, 364
	bne	$a0, $a1, .LBB32_3
# %bb.15:                               #   in Loop: Header=BB32_6 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	b	.LBB32_3
.Lfunc_end32:
	.size	_ZN9NCompress6NBZip28CEncoder10WriteBytesEPKhjh, .Lfunc_end32-_ZN9NCompress6NBZip28CEncoder10WriteBytesEPKhjh
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress6NBZip28CEncoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo # -- Begin function _ZN9NCompress6NBZip28CEncoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
	.p2align	5
	.type	_ZN9NCompress6NBZip28CEncoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo,@function
_ZN9NCompress6NBZip28CEncoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo: # @_ZN9NCompress6NBZip28CEncoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
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
	move	$s0, $a5
	move	$s1, $a2
	move	$s3, $a1
	move	$fp, $a0
	st.d	$a5, $a0, 704
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder6CreateEv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB33_3
.LBB33_1:
	move	$s2, $a0
.LBB33_2:                               # %.loopexit140
	move	$a0, $s2
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
.LBB33_3:                               # %.preheader139
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 576
	beqz	$a0, .LBB33_15
# %bb.4:                                # %.lr.ph
	move	$s7, $zero
	move	$s8, $zero
	lu12i.w	$a0, 8
	ori	$s6, $a0, 3344
	ori	$s3, $a0, 3448
	ori	$a1, $a0, 3552
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ori	$s1, $a0, 3312
	lu12i.w	$a1, 1821
	ori	$a1, $a1, 3328
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a1, -524176
	ori	$s2, $a1, 14
	lu12i.w	$a1, 1125
	ori	$a1, $a1, 2480
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a1, 219
	ori	$a1, $a1, 2976
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a1, 659
	ori	$a1, $a1, 738
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$s5, $a0, 3920
	b	.LBB33_6
	.p2align	4, , 16
.LBB33_5:                               # %_ZN9NCompress6NBZip211CThreadInfo5AllocEv.exit
                                        #   in Loop: Header=BB33_6 Depth=1
	ld.wu	$a0, $fp, 576
	addi.d	$s8, $s8, 1
	add.d	$s7, $s7, $s5
	bgeu	$s8, $a0, .LBB33_15
.LBB33_6:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $fp, 424
	ld.bu	$a0, $fp, 580
	add.d	$s0, $s4, $s7
	beqz	$a0, .LBB33_10
# %bb.7:                                #   in Loop: Header=BB33_6 Depth=1
	add.d	$a0, $s0, $s6
	pcaddu18i	$ra, %call36(Event_Reset)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB33_1
# %bb.8:                                #   in Loop: Header=BB33_6 Depth=1
	add.d	$a0, $s0, $s3
	pcaddu18i	$ra, %call36(Event_Reset)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB33_1
# %bb.9:                                #   in Loop: Header=BB33_6 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $s0, $a0
	pcaddu18i	$ra, %call36(Event_Reset)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB33_1
.LBB33_10:                              #   in Loop: Header=BB33_6 Depth=1
	ld.b	$a0, $fp, 32
	ld.d	$a1, $s0, 24
	stx.b	$a0, $s0, $s1
	bnez	$a1, .LBB33_12
# %bb.11:                               #   in Loop: Header=BB33_6 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(BigAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 24
	beqz	$a0, .LBB33_2
.LBB33_12:                              #   in Loop: Header=BB33_6 Depth=1
	ldx.d	$a0, $s4, $s7
	bnez	$a0, .LBB33_5
# %bb.13:                               #   in Loop: Header=BB33_6 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MidAlloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s4, $s7
	beqz	$a0, .LBB33_2
# %bb.14:                               #   in Loop: Header=BB33_6 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	st.d	$a1, $s0, 8
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $s0, 16
	b	.LBB33_5
.LBB33_15:                              # %._crit_edge
	addi.d	$s5, $fp, 48
	lu12i.w	$a1, 32
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN9CInBuffer6CreateEj)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, -524176
	ori	$s2, $a1, 14
	beqz	$a0, .LBB33_2
# %bb.16:
	addi.d	$s0, $fp, 352
	lu12i.w	$a1, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10COutBuffer6CreateEj)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB33_2
# %bb.17:
	move	$a0, $s5
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN9CInBuffer9SetStreamEP19ISequentialInStream)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN9CInBuffer4InitEv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN10COutBuffer9SetStreamEP20ISequentialOutStream)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4InitEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	st.w	$a0, $fp, 408
	st.b	$zero, $fp, 412
	st.d	$fp, $sp, 96
	st.w	$zero, $fp, 420
	st.w	$zero, $fp, 584
	st.h	$zero, $fp, 588
	addi.d	$s2, $fp, 592
.Ltmp74:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(Event_Reset)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
# %bb.18:                               # %_ZN8NWindows16NSynchronization10CBaseEvent5ResetEv.exit
.Ltmp76:                                # EH_LABEL
	ori	$a1, $zero, 66
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.19:                               # %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit
.Ltmp78:                                # EH_LABEL
	ori	$a1, $zero, 90
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj)
	jirl	$ra, $ra, 0
.Ltmp79:                                # EH_LABEL
# %bb.20:                               # %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit99
.Ltmp80:                                # EH_LABEL
	ori	$a1, $zero, 104
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
# %bb.21:                               # %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit100
	ld.w	$a0, $fp, 28
	addi.d	$a0, $a0, 48
	andi	$a1, $a0, 255
.Ltmp82:                                # EH_LABEL
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
# %bb.22:                               # %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit101
	ld.bu	$a0, $fp, 580
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB33_37
# %bb.23:
	ld.d	$a0, $fp, 424
	lu12i.w	$s3, 8
	ori	$a1, $s3, 3552
	add.d	$a0, $a0, $a1
.Ltmp102:                               # EH_LABEL
	pcaddu18i	$ra, %call36(Event_Set)
	jirl	$ra, $ra, 0
.Ltmp103:                               # EH_LABEL
# %bb.24:                               # %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit
	st.w	$zero, $fp, 696
	addi.d	$s1, $fp, 432
.Ltmp104:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Event_Set)
	jirl	$ra, $ra, 0
.Ltmp105:                               # EH_LABEL
# %bb.25:                               # %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit102.preheader
	ld.w	$a0, $fp, 576
	beqz	$a0, .LBB33_29
# %bb.26:                               # %.lr.ph148.preheader
	move	$s4, $zero
	ori	$s5, $s3, 3344
	ori	$s6, $s3, 3920
	.p2align	4, , 16
.LBB33_27:                              # %.lr.ph148
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 424
	add.d	$a0, $a0, $s5
.Ltmp106:                               # EH_LABEL
	pcaddu18i	$ra, %call36(Event_Wait)
	jirl	$ra, $ra, 0
.Ltmp107:                               # EH_LABEL
# %bb.28:                               # %_ZN8NWindows16NSynchronization10CBaseEvent4LockEv.exit
                                        #   in Loop: Header=BB33_27 Depth=1
	ld.wu	$a0, $fp, 576
	addi.d	$s4, $s4, 1
	add.d	$s5, $s5, $s6
	bltu	$s4, $a0, .LBB33_27
.LBB33_29:                              # %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit102._crit_edge
.Ltmp109:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Event_Reset)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
# %bb.30:                               # %_ZN8NWindows16NSynchronization10CBaseEvent5ResetEv.exit103
.Ltmp111:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(Event_Set)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.31:                               # %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit104.preheader
	ld.w	$a0, $fp, 576
	beqz	$a0, .LBB33_35
# %bb.32:                               # %.lr.ph150.preheader
	move	$s1, $zero
	ori	$s4, $s3, 3448
	ori	$s3, $s3, 3920
	.p2align	4, , 16
.LBB33_33:                              # %.lr.ph150
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 424
	add.d	$a0, $a0, $s4
.Ltmp113:                               # EH_LABEL
	pcaddu18i	$ra, %call36(Event_Wait)
	jirl	$ra, $ra, 0
.Ltmp114:                               # EH_LABEL
# %bb.34:                               # %_ZN8NWindows16NSynchronization10CBaseEvent4LockEv.exit105
                                        #   in Loop: Header=BB33_33 Depth=1
	ld.wu	$a0, $fp, 576
	addi.d	$s1, $s1, 1
	add.d	$s4, $s4, $s3
	bltu	$s1, $a0, .LBB33_33
.LBB33_35:                              # %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit104._crit_edge
.Ltmp116:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(Event_Reset)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.36:                               # %_ZN8NWindows16NSynchronization10CBaseEvent5ResetEv.exit106
	ld.w	$s2, $fp, 696
	bnez	$s2, .LBB33_66
	b	.LBB33_50
.LBB33_37:                              # %.preheader
	beqz	$s3, .LBB33_48
# %bb.38:
	ori	$s1, $zero, 15
.LBB33_39:                              # %.preheader.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $fp, 424
	ld.d	$a1, $s2, 0
.Ltmp84:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder12ReadRleBlockEPh)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp85:                                # EH_LABEL
# %bb.40:                               #   in Loop: Header=BB33_39 Depth=1
	beqz	$a1, .LBB33_50
# %bb.41:                               #   in Loop: Header=BB33_39 Depth=1
.Ltmp87:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock3Ej)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.42:                               #   in Loop: Header=BB33_39 Depth=1
	move	$s2, $a0
	bnez	$a0, .LBB33_66
# %bb.43:                               #   in Loop: Header=BB33_39 Depth=1
	ld.d	$a0, $fp, 80
	ld.d	$a1, $fp, 48
	ld.d	$a2, $fp, 64
	add.d	$a0, $a0, $a1
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 88
.Ltmp90:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK10COutBuffer16GetProcessedSizeEv)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
# %bb.44:                               #   in Loop: Header=BB33_39 Depth=1
	ld.w	$a1, $fp, 408
	ld.d	$a2, $s3, 0
	sub.d	$a1, $s1, $a1
	ld.d	$a3, $a2, 40
	bstrpick.d	$a1, $a1, 31, 3
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 80
.Ltmp93:                                # EH_LABEL
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 80
	move	$a0, $s3
	jirl	$ra, $a3, 0
.Ltmp94:                                # EH_LABEL
# %bb.45:                               # %select.unfold
                                        #   in Loop: Header=BB33_39 Depth=1
	move	$s2, $a0
	beqz	$a0, .LBB33_39
	b	.LBB33_66
.LBB33_46:                              #   in Loop: Header=BB33_48 Depth=1
.Ltmp99:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock3Ej)
	jirl	$ra, $ra, 0
.Ltmp100:                               # EH_LABEL
# %bb.47:                               # %select.unfold.us
                                        #   in Loop: Header=BB33_48 Depth=1
	move	$s2, $a0
	bnez	$a0, .LBB33_66
.LBB33_48:                              # %.preheader.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $fp, 424
	ld.d	$a1, $s1, 0
.Ltmp96:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder12ReadRleBlockEPh)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp97:                                # EH_LABEL
# %bb.49:                               #   in Loop: Header=BB33_48 Depth=1
	bnez	$a1, .LBB33_46
.LBB33_50:                              # %.thread133
.Ltmp119:                               # EH_LABEL
	ori	$a1, $zero, 23
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj)
	jirl	$ra, $ra, 0
.Ltmp120:                               # EH_LABEL
# %bb.51:                               # %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit107
.Ltmp121:                               # EH_LABEL
	ori	$a1, $zero, 114
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj)
	jirl	$ra, $ra, 0
.Ltmp122:                               # EH_LABEL
# %bb.52:                               # %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit108
.Ltmp123:                               # EH_LABEL
	ori	$a1, $zero, 69
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj)
	jirl	$ra, $ra, 0
.Ltmp124:                               # EH_LABEL
# %bb.53:                               # %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit109
.Ltmp125:                               # EH_LABEL
	ori	$a1, $zero, 56
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj)
	jirl	$ra, $ra, 0
.Ltmp126:                               # EH_LABEL
# %bb.54:                               # %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit110
.Ltmp127:                               # EH_LABEL
	ori	$a1, $zero, 80
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj)
	jirl	$ra, $ra, 0
.Ltmp128:                               # EH_LABEL
# %bb.55:                               # %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit111
.Ltmp129:                               # EH_LABEL
	ori	$a1, $zero, 144
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj)
	jirl	$ra, $ra, 0
.Ltmp130:                               # EH_LABEL
# %bb.56:                               # %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit112
	ld.wu	$s1, $fp, 420
	srli.d	$a1, $s1, 24
.Ltmp131:                               # EH_LABEL
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj)
	jirl	$ra, $ra, 0
.Ltmp132:                               # EH_LABEL
# %bb.57:                               # %.noexc
	bstrpick.d	$a1, $s1, 23, 16
.Ltmp133:                               # EH_LABEL
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj)
	jirl	$ra, $ra, 0
.Ltmp134:                               # EH_LABEL
# %bb.58:                               # %.noexc113
	bstrpick.d	$a1, $s1, 15, 8
.Ltmp135:                               # EH_LABEL
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
# %bb.59:                               # %.noexc114
	andi	$a1, $s1, 255
.Ltmp137:                               # EH_LABEL
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj)
	jirl	$ra, $ra, 0
.Ltmp138:                               # EH_LABEL
# %bb.60:                               # %_ZN9NCompress6NBZip28CEncoder8WriteCrcEj.exit
	ld.w	$a0, $fp, 408
	addi.w	$a0, $a0, -8
	addi.w	$a1, $zero, -7
	bltu	$a0, $a1, .LBB33_64
# %bb.61:
	ld.wu	$a0, $fp, 360
	ld.b	$a1, $fp, 412
	ld.d	$a2, $fp, 352
	addi.d	$a3, $a0, 1
	st.w	$a3, $fp, 360
	stx.b	$a1, $a2, $a0
	ld.w	$a0, $fp, 360
	ld.w	$a1, $fp, 364
	bne	$a0, $a1, .LBB33_63
# %bb.62:
.Ltmp139:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp140:                               # EH_LABEL
.LBB33_63:                              # %_ZN10COutBuffer9WriteByteEh.exit.i.i.i
	ori	$a0, $zero, 8
	st.w	$a0, $fp, 408
	st.b	$zero, $fp, 412
.LBB33_64:                              # %_ZN12CBitmEncoderI10COutBufferE5FlushEv.exit.i
.Ltmp141:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10COutBuffer5FlushEv)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
# %bb.65:
	move	$s2, $a0
.LBB33_66:                              # %_ZN9NCompress6NBZip28CEncoder5FlushEv.exit
	ld.d	$a0, $fp, 72
	beqz	$a0, .LBB33_69
# %bb.67:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp144:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp145:                               # EH_LABEL
# %bb.68:                               # %.noexc.i
	st.d	$zero, $fp, 72
.LBB33_69:                              # %_ZN9CInBuffer13ReleaseStreamEv.exit.i.i
	ld.d	$a0, $fp, 376
	beqz	$a0, .LBB33_2
# %bb.70:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp146:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp147:                               # EH_LABEL
# %bb.71:                               # %.noexc1.i
	st.d	$zero, $fp, 376
	b	.LBB33_2
.LBB33_72:
.Ltmp148:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB33_73:                              # %.loopexit.split-lp.loopexit.split-lp
.Ltmp118:                               # EH_LABEL
	b	.LBB33_83
.LBB33_74:                              # %.split144.us
.Ltmp101:                               # EH_LABEL
	b	.LBB33_83
.LBB33_75:                              # %.split.us
.Ltmp98:                                # EH_LABEL
	b	.LBB33_83
.LBB33_76:
.Ltmp95:                                # EH_LABEL
	b	.LBB33_83
.LBB33_77:
.Ltmp92:                                # EH_LABEL
	b	.LBB33_83
.LBB33_78:                              # %.split144
.Ltmp89:                                # EH_LABEL
	b	.LBB33_83
.LBB33_79:                              # %.split
.Ltmp86:                                # EH_LABEL
	b	.LBB33_83
.LBB33_80:                              # %.loopexit
.Ltmp115:                               # EH_LABEL
	b	.LBB33_83
.LBB33_81:                              # %.loopexit.split-lp.loopexit
.Ltmp108:                               # EH_LABEL
	b	.LBB33_83
.LBB33_82:
.Ltmp143:                               # EH_LABEL
.LBB33_83:                              # %.loopexit.split-lp
	move	$fp, $a0
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder8CFlusherD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end33:
	.size	_ZN9NCompress6NBZip28CEncoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo, .Lfunc_end33-_ZN9NCompress6NBZip28CEncoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table33:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp74-.Lfunc_begin7          #   Call between .Lfunc_begin7 and .Ltmp74
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Ltmp105-.Ltmp74               #   Call between .Ltmp74 and .Ltmp105
	.uleb128 .Ltmp143-.Lfunc_begin7         #     jumps to .Ltmp143
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin7         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp112-.Ltmp109              #   Call between .Ltmp109 and .Ltmp112
	.uleb128 .Ltmp118-.Lfunc_begin7         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin7         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin7         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin7          # >> Call Site 7 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin7          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin7          # >> Call Site 8 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin7          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin7          # >> Call Site 9 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin7          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin7          # >> Call Site 10 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin7          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin7          # >> Call Site 11 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin7         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin7          # >> Call Site 12 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin7          #     jumps to .Ltmp98
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin7         # >> Call Site 13 <<
	.uleb128 .Ltmp142-.Ltmp119              #   Call between .Ltmp119 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin7         #     jumps to .Ltmp143
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin7         # >> Call Site 14 <<
	.uleb128 .Ltmp147-.Ltmp144              #   Call between .Ltmp144 and .Ltmp147
	.uleb128 .Ltmp148-.Lfunc_begin7         #     jumps to .Ltmp148
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp147-.Lfunc_begin7         # >> Call Site 15 <<
	.uleb128 .Lfunc_end33-.Ltmp147          #   Call between .Ltmp147 and .Lfunc_end33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9NCompress6NBZip28CEncoder8CFlusherD2Ev,"axG",@progbits,_ZN9NCompress6NBZip28CEncoder8CFlusherD2Ev,comdat
	.weak	_ZN9NCompress6NBZip28CEncoder8CFlusherD2Ev # -- Begin function _ZN9NCompress6NBZip28CEncoder8CFlusherD2Ev
	.p2align	5
	.type	_ZN9NCompress6NBZip28CEncoder8CFlusherD2Ev,@function
_ZN9NCompress6NBZip28CEncoder8CFlusherD2Ev: # @_ZN9NCompress6NBZip28CEncoder8CFlusherD2Ev
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
	ld.d	$fp, $a0, 0
	ld.d	$a0, $fp, 72
	beqz	$a0, .LBB34_3
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp149:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp150:                               # EH_LABEL
# %bb.2:                                # %.noexc
	st.d	$zero, $fp, 72
.LBB34_3:                               # %_ZN9CInBuffer13ReleaseStreamEv.exit.i
	ld.d	$a0, $fp, 376
	beqz	$a0, .LBB34_6
# %bb.4:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp151:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp152:                               # EH_LABEL
# %bb.5:                                # %.noexc1
	st.d	$zero, $fp, 376
.LBB34_6:                               # %_ZN9NCompress6NBZip28CEncoder14ReleaseStreamsEv.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB34_7:
.Ltmp153:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end34:
	.size	_ZN9NCompress6NBZip28CEncoder8CFlusherD2Ev, .Lfunc_end34-_ZN9NCompress6NBZip28CEncoder8CFlusherD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9NCompress6NBZip28CEncoder8CFlusherD2Ev,"aG",@progbits,_ZN9NCompress6NBZip28CEncoder8CFlusherD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table34:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp149-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp152-.Ltmp149              #   Call between .Ltmp149 and .Ltmp152
	.uleb128 .Ltmp153-.Lfunc_begin8         #     jumps to .Ltmp153
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp152-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Lfunc_end34-.Ltmp152          #   Call between .Ltmp152 and .Lfunc_end34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
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
	.globl	_ZN9NCompress6NBZip28CEncoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo # -- Begin function _ZN9NCompress6NBZip28CEncoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
	.p2align	5
	.type	_ZN9NCompress6NBZip28CEncoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo,@function
_ZN9NCompress6NBZip28CEncoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo: # @_ZN9NCompress6NBZip28CEncoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
.Ltmp154:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9NCompress6NBZip28CEncoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo)
	jirl	$ra, $ra, 0
.Ltmp155:                               # EH_LABEL
.LBB35_1:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB35_2:
.Ltmp156:                               # EH_LABEL
	addi.w	$fp, $a1, 0
	ori	$a1, $zero, 3
	bne	$fp, $a1, .LBB35_4
# %bb.3:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	b	.LBB35_5
.LBB35_4:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	ori	$s0, $zero, 1
	bne	$fp, $a1, .LBB35_6
.LBB35_5:                               # %.sink.split.sink.split
	ld.w	$s0, $a0, 0
.LBB35_6:                               # %.sink.split
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB35_1
.Lfunc_end35:
	.size	_ZN9NCompress6NBZip28CEncoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo, .Lfunc_end35-_ZN9NCompress6NBZip28CEncoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table35:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp154-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp155-.Ltmp154              #   Call between .Ltmp154 and .Ltmp155
	.uleb128 .Ltmp156-.Lfunc_begin9         #     jumps to .Ltmp156
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp155-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Lfunc_end35-.Ltmp155          #   Call between .Ltmp155 and .Lfunc_end35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.byte	3                               # >> Action Record 3 <<
                                        #   Catch TypeInfo 3
	.byte	125                             #   Continue to action 2
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp157:                               # TypeInfo 3
	.word	.L_ZTI18CInBufferException.DW.stub-.Ltmp157
.Ltmp158:                               # TypeInfo 2
	.word	.L_ZTI19COutBufferException.DW.stub-.Ltmp158
	.word	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj # -- Begin function _ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj
	.p2align	5
	.type	_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj,@function
_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj: # @_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj
# %bb.0:
	beqz	$a3, .LBB36_14
# %bb.1:                                # %.lr.ph
	move	$a4, $a0
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a2, $a2, 8
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 87
	ori	$a5, $zero, 1
	ori	$a6, $zero, 19
	lu12i.w	$a7, 24
	ori	$a7, $a7, 1696
	lu12i.w	$t0, 42949
	ori	$t0, $t0, 2757
	ori	$t1, $zero, 9
	ori	$t2, $zero, 13
	ori	$t3, $zero, 11
	ori	$t4, $zero, 10
	b	.LBB36_4
	.p2align	4, , 16
.LBB36_2:                               #   in Loop: Header=BB36_4 Depth=1
	st.w	$t5, $a4, 28
.LBB36_3:                               #   in Loop: Header=BB36_4 Depth=1
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	beqz	$a3, .LBB36_14
.LBB36_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t5, $a1, 0
	beq	$t5, $a5, .LBB36_11
# %bb.5:                                #   in Loop: Header=BB36_4 Depth=1
	beq	$t5, $t2, .LBB36_9
# %bb.6:                                #   in Loop: Header=BB36_4 Depth=1
	bne	$t5, $t3, .LBB36_15
# %bb.7:                                #   in Loop: Header=BB36_4 Depth=1
	ld.hu	$t5, $a2, -8
	bne	$t5, $a6, .LBB36_15
# %bb.8:                                #   in Loop: Header=BB36_4 Depth=1
	ld.w	$t5, $a2, 0
	sltu	$t6, $a5, $t5
	masknez	$t7, $a5, $t6
	maskeqz	$t5, $t5, $t6
	or	$t5, $t5, $t7
	sltui	$t7, $t5, 10
	maskeqz	$t5, $t5, $t7
	masknez	$t7, $t4, $t7
	or	$t5, $t5, $t7
	st.w	$t5, $a4, 416
	st.b	$t6, $a4, 32
	b	.LBB36_3
	.p2align	4, , 16
.LBB36_9:                               #   in Loop: Header=BB36_4 Depth=1
	ld.hu	$t5, $a2, -8
	bne	$t5, $a6, .LBB36_15
# %bb.10:                               #   in Loop: Header=BB36_4 Depth=1
	ld.w	$t5, $a2, 0
	sltu	$t6, $a5, $t5
	masknez	$t7, $a5, $t6
	maskeqz	$t5, $t5, $t6
	or	$t5, $t5, $t7
	st.w	$t5, $a4, 576
	b	.LBB36_3
	.p2align	4, , 16
.LBB36_11:                              #   in Loop: Header=BB36_4 Depth=1
	ld.hu	$t5, $a2, -8
	bne	$t5, $a6, .LBB36_15
# %bb.12:                               #   in Loop: Header=BB36_4 Depth=1
	ld.w	$t6, $a2, 0
	ori	$t5, $zero, 1
	bltu	$t6, $a7, .LBB36_2
# %bb.13:                               #   in Loop: Header=BB36_4 Depth=1
	bstrpick.d	$t5, $t6, 31, 5
	mul.d	$t5, $t5, $t0
	srli.d	$t5, $t5, 39
	sltui	$t6, $t5, 9
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $t1, $t6
	or	$t5, $t5, $t6
	b	.LBB36_2
.LBB36_14:
	move	$a0, $zero
.LBB36_15:                              # %.critedge
	ret
.Lfunc_end36:
	.size	_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj, .Lfunc_end36-_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj
                                        # -- End function
	.globl	_ZThn8_N9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj # -- Begin function _ZThn8_N9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj
	.p2align	5
	.type	_ZThn8_N9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj,@function
_ZThn8_N9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj: # @_ZThn8_N9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj
# %bb.0:
	beqz	$a3, .LBB37_14
# %bb.1:                                # %.lr.ph.i
	move	$a4, $a0
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a2, $a2, 8
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 87
	ori	$a5, $zero, 1
	ori	$a6, $zero, 19
	lu12i.w	$a7, 24
	ori	$a7, $a7, 1696
	lu12i.w	$t0, 42949
	ori	$t0, $t0, 2757
	ori	$t1, $zero, 9
	ori	$t2, $zero, 13
	ori	$t3, $zero, 11
	ori	$t4, $zero, 10
	b	.LBB37_4
	.p2align	4, , 16
.LBB37_2:                               #   in Loop: Header=BB37_4 Depth=1
	st.w	$t5, $a4, 20
.LBB37_3:                               #   in Loop: Header=BB37_4 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	beqz	$a3, .LBB37_14
.LBB37_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t5, $a1, 0
	beq	$t5, $a5, .LBB37_11
# %bb.5:                                #   in Loop: Header=BB37_4 Depth=1
	beq	$t5, $t2, .LBB37_9
# %bb.6:                                #   in Loop: Header=BB37_4 Depth=1
	bne	$t5, $t3, .LBB37_15
# %bb.7:                                #   in Loop: Header=BB37_4 Depth=1
	ld.hu	$t5, $a2, -8
	bne	$t5, $a6, .LBB37_15
# %bb.8:                                #   in Loop: Header=BB37_4 Depth=1
	ld.w	$t5, $a2, 0
	sltu	$t6, $a5, $t5
	masknez	$t7, $a5, $t6
	maskeqz	$t5, $t5, $t6
	or	$t5, $t5, $t7
	sltui	$t7, $t5, 10
	maskeqz	$t5, $t5, $t7
	masknez	$t7, $t4, $t7
	or	$t5, $t5, $t7
	st.w	$t5, $a4, 408
	st.b	$t6, $a4, 24
	b	.LBB37_3
	.p2align	4, , 16
.LBB37_9:                               #   in Loop: Header=BB37_4 Depth=1
	ld.hu	$t5, $a2, -8
	bne	$t5, $a6, .LBB37_15
# %bb.10:                               #   in Loop: Header=BB37_4 Depth=1
	ld.w	$t5, $a2, 0
	sltu	$t6, $a5, $t5
	masknez	$t7, $a5, $t6
	maskeqz	$t5, $t5, $t6
	or	$t5, $t5, $t7
	st.w	$t5, $a4, 568
	b	.LBB37_3
	.p2align	4, , 16
.LBB37_11:                              #   in Loop: Header=BB37_4 Depth=1
	ld.hu	$t5, $a2, -8
	bne	$t5, $a6, .LBB37_15
# %bb.12:                               #   in Loop: Header=BB37_4 Depth=1
	ld.w	$t6, $a2, 0
	ori	$t5, $zero, 1
	bltu	$t6, $a7, .LBB37_2
# %bb.13:                               #   in Loop: Header=BB37_4 Depth=1
	bstrpick.d	$t5, $t6, 31, 5
	mul.d	$t5, $t5, $t0
	srli.d	$t5, $t5, 39
	sltui	$t6, $t5, 9
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $t1, $t6
	or	$t5, $t5, $t6
	b	.LBB37_2
.LBB37_14:
	move	$a0, $zero
.LBB37_15:                              # %_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit
	ret
.Lfunc_end37:
	.size	_ZThn8_N9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj, .Lfunc_end37-_ZThn8_N9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj
                                        # -- End function
	.globl	_ZN9NCompress6NBZip28CEncoder18SetNumberOfThreadsEj # -- Begin function _ZN9NCompress6NBZip28CEncoder18SetNumberOfThreadsEj
	.p2align	5
	.type	_ZN9NCompress6NBZip28CEncoder18SetNumberOfThreadsEj,@function
_ZN9NCompress6NBZip28CEncoder18SetNumberOfThreadsEj: # @_ZN9NCompress6NBZip28CEncoder18SetNumberOfThreadsEj
# %bb.0:
	ori	$a2, $zero, 1
	sltu	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $a0, 576
	move	$a0, $zero
	ret
.Lfunc_end38:
	.size	_ZN9NCompress6NBZip28CEncoder18SetNumberOfThreadsEj, .Lfunc_end38-_ZN9NCompress6NBZip28CEncoder18SetNumberOfThreadsEj
                                        # -- End function
	.globl	_ZThn16_N9NCompress6NBZip28CEncoder18SetNumberOfThreadsEj # -- Begin function _ZThn16_N9NCompress6NBZip28CEncoder18SetNumberOfThreadsEj
	.p2align	5
	.type	_ZThn16_N9NCompress6NBZip28CEncoder18SetNumberOfThreadsEj,@function
_ZThn16_N9NCompress6NBZip28CEncoder18SetNumberOfThreadsEj: # @_ZThn16_N9NCompress6NBZip28CEncoder18SetNumberOfThreadsEj
# %bb.0:
	ori	$a2, $zero, 1
	sltu	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $a0, 560
	move	$a0, $zero
	ret
.Lfunc_end39:
	.size	_ZThn16_N9NCompress6NBZip28CEncoder18SetNumberOfThreadsEj, .Lfunc_end39-_ZThn16_N9NCompress6NBZip28CEncoder18SetNumberOfThreadsEj
                                        # -- End function
	.section	.text._ZN9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv,@function
_ZN9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv: # @_ZN9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	ld.bu	$a4, $a1, 0
	pcalau12i	$a3, %got_pc_hi20(IID_IUnknown)
	ld.d	$a3, $a3, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a5, $a3, 0
	bne	$a4, $a5, .LBB40_16
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a3, 1
	bne	$a5, $a6, .LBB40_16
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a3, 2
	bne	$a5, $a6, .LBB40_16
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a3, 3
	bne	$a5, $a6, .LBB40_16
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a3, 4
	bne	$a5, $a6, .LBB40_16
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a3, 5
	bne	$a5, $a6, .LBB40_16
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a3, 6
	bne	$a5, $a6, .LBB40_16
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a3, 7
	bne	$a5, $a6, .LBB40_16
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a3, 8
	bne	$a5, $a6, .LBB40_16
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a3, 9
	bne	$a5, $a6, .LBB40_16
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a3, 10
	bne	$a5, $a6, .LBB40_16
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a3, 11
	bne	$a5, $a6, .LBB40_16
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a3, 12
	bne	$a5, $a6, .LBB40_16
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a3, 13
	bne	$a5, $a6, .LBB40_16
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a3, 14
	bne	$a5, $a6, .LBB40_16
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a6, $a1, 15
	ld.bu	$a3, $a3, 15
	ori	$a5, $zero, 16
	beq	$a6, $a3, .LBB40_48
.LBB40_16:                              # %_ZeqRK4GUIDS1_.exit.thread
	pcalau12i	$a3, %got_pc_hi20(IID_ICompressSetCoderMt)
	ld.d	$a3, $a3, %got_pc_lo12(IID_ICompressSetCoderMt)
	ld.bu	$a5, $a3, 0
	bne	$a4, $a5, .LBB40_32
# %bb.17:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a3, 1
	bne	$a5, $a6, .LBB40_32
# %bb.18:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a3, 2
	bne	$a5, $a6, .LBB40_32
# %bb.19:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a3, 3
	bne	$a5, $a6, .LBB40_32
# %bb.20:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a3, 4
	bne	$a5, $a6, .LBB40_32
# %bb.21:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a3, 5
	bne	$a5, $a6, .LBB40_32
# %bb.22:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a3, 6
	bne	$a5, $a6, .LBB40_32
# %bb.23:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a3, 7
	bne	$a5, $a6, .LBB40_32
# %bb.24:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a3, 8
	bne	$a5, $a6, .LBB40_32
# %bb.25:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a3, 9
	bne	$a5, $a6, .LBB40_32
# %bb.26:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a3, 10
	bne	$a5, $a6, .LBB40_32
# %bb.27:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a3, 11
	bne	$a5, $a6, .LBB40_32
# %bb.28:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a3, 12
	bne	$a5, $a6, .LBB40_32
# %bb.29:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a3, 13
	bne	$a5, $a6, .LBB40_32
# %bb.30:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a3, 14
	bne	$a5, $a6, .LBB40_32
# %bb.31:                               # %_ZeqRK4GUIDS1_.exit27
	ld.bu	$a6, $a1, 15
	ld.bu	$a3, $a3, 15
	ori	$a5, $zero, 16
	beq	$a6, $a3, .LBB40_48
.LBB40_32:                              # %_ZeqRK4GUIDS1_.exit27.thread
	pcalau12i	$a3, %got_pc_hi20(IID_ICompressSetCoderProperties)
	ld.d	$a5, $a3, %got_pc_lo12(IID_ICompressSetCoderProperties)
	ld.bu	$a6, $a5, 0
	lu12i.w	$a3, -524284
	ori	$a3, $a3, 2
	bne	$a4, $a6, .LBB40_49
# %bb.33:
	ld.bu	$a4, $a1, 1
	ld.bu	$a6, $a5, 1
	bne	$a4, $a6, .LBB40_49
# %bb.34:
	ld.bu	$a4, $a1, 2
	ld.bu	$a6, $a5, 2
	bne	$a4, $a6, .LBB40_49
# %bb.35:
	ld.bu	$a4, $a1, 3
	ld.bu	$a6, $a5, 3
	bne	$a4, $a6, .LBB40_49
# %bb.36:
	ld.bu	$a4, $a1, 4
	ld.bu	$a6, $a5, 4
	bne	$a4, $a6, .LBB40_49
# %bb.37:
	ld.bu	$a4, $a1, 5
	ld.bu	$a6, $a5, 5
	bne	$a4, $a6, .LBB40_49
# %bb.38:
	ld.bu	$a4, $a1, 6
	ld.bu	$a6, $a5, 6
	bne	$a4, $a6, .LBB40_49
# %bb.39:
	ld.bu	$a4, $a1, 7
	ld.bu	$a6, $a5, 7
	bne	$a4, $a6, .LBB40_49
# %bb.40:
	ld.bu	$a4, $a1, 8
	ld.bu	$a6, $a5, 8
	bne	$a4, $a6, .LBB40_49
# %bb.41:
	ld.bu	$a4, $a1, 9
	ld.bu	$a6, $a5, 9
	bne	$a4, $a6, .LBB40_49
# %bb.42:
	ld.bu	$a4, $a1, 10
	ld.bu	$a6, $a5, 10
	bne	$a4, $a6, .LBB40_49
# %bb.43:
	ld.bu	$a4, $a1, 11
	ld.bu	$a6, $a5, 11
	bne	$a4, $a6, .LBB40_49
# %bb.44:
	ld.bu	$a4, $a1, 12
	ld.bu	$a6, $a5, 12
	bne	$a4, $a6, .LBB40_49
# %bb.45:
	ld.bu	$a4, $a1, 13
	ld.bu	$a6, $a5, 13
	bne	$a4, $a6, .LBB40_49
# %bb.46:
	ld.bu	$a4, $a1, 14
	ld.bu	$a6, $a5, 14
	bne	$a4, $a6, .LBB40_49
# %bb.47:                               # %_ZeqRK4GUIDS1_.exit46
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a5, 15
	ori	$a5, $zero, 8
	bne	$a1, $a4, .LBB40_49
.LBB40_48:                              # %_ZeqRK4GUIDS1_.exit46.thread.sink.split
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 0
	add.d	$a3, $a0, $a5
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 8
	jirl	$ra, $a1, 0
	move	$a3, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB40_49:                              # %_ZeqRK4GUIDS1_.exit46.thread
	move	$a0, $a3
	ret
.Lfunc_end40:
	.size	_ZN9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv, .Lfunc_end40-_ZN9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9NCompress6NBZip28CEncoder6AddRefEv,"axG",@progbits,_ZN9NCompress6NBZip28CEncoder6AddRefEv,comdat
	.weak	_ZN9NCompress6NBZip28CEncoder6AddRefEv # -- Begin function _ZN9NCompress6NBZip28CEncoder6AddRefEv
	.p2align	5
	.type	_ZN9NCompress6NBZip28CEncoder6AddRefEv,@function
_ZN9NCompress6NBZip28CEncoder6AddRefEv: # @_ZN9NCompress6NBZip28CEncoder6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 24
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 24
	move	$a0, $a1
	ret
.Lfunc_end41:
	.size	_ZN9NCompress6NBZip28CEncoder6AddRefEv, .Lfunc_end41-_ZN9NCompress6NBZip28CEncoder6AddRefEv
                                        # -- End function
	.section	.text._ZN9NCompress6NBZip28CEncoder7ReleaseEv,"axG",@progbits,_ZN9NCompress6NBZip28CEncoder7ReleaseEv,comdat
	.weak	_ZN9NCompress6NBZip28CEncoder7ReleaseEv # -- Begin function _ZN9NCompress6NBZip28CEncoder7ReleaseEv
	.p2align	5
	.type	_ZN9NCompress6NBZip28CEncoder7ReleaseEv,@function
_ZN9NCompress6NBZip28CEncoder7ReleaseEv: # @_ZN9NCompress6NBZip28CEncoder7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 24
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 24
	bnez	$fp, .LBB42_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB42_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end42:
	.size	_ZN9NCompress6NBZip28CEncoder7ReleaseEv, .Lfunc_end42-_ZN9NCompress6NBZip28CEncoder7ReleaseEv
                                        # -- End function
	.section	.text._ZThn8_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZThn8_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZThn8_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv # -- Begin function _ZThn8_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZThn8_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv,@function
_ZThn8_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv: # @_ZThn8_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	addi.d	$a0, $a0, -8
	pcaddu18i	$t8, %call36(_ZN9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv)
	jr	$t8
.Lfunc_end43:
	.size	_ZThn8_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv, .Lfunc_end43-_ZThn8_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn8_N9NCompress6NBZip28CEncoder6AddRefEv,"axG",@progbits,_ZThn8_N9NCompress6NBZip28CEncoder6AddRefEv,comdat
	.weak	_ZThn8_N9NCompress6NBZip28CEncoder6AddRefEv # -- Begin function _ZThn8_N9NCompress6NBZip28CEncoder6AddRefEv
	.p2align	5
	.type	_ZThn8_N9NCompress6NBZip28CEncoder6AddRefEv,@function
_ZThn8_N9NCompress6NBZip28CEncoder6AddRefEv: # @_ZThn8_N9NCompress6NBZip28CEncoder6AddRefEv
	.cfi_startproc
# %bb.0:
	ld.w	$a1, $a0, 16
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 16
	move	$a0, $a1
	ret
.Lfunc_end44:
	.size	_ZThn8_N9NCompress6NBZip28CEncoder6AddRefEv, .Lfunc_end44-_ZThn8_N9NCompress6NBZip28CEncoder6AddRefEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn8_N9NCompress6NBZip28CEncoder7ReleaseEv,"axG",@progbits,_ZThn8_N9NCompress6NBZip28CEncoder7ReleaseEv,comdat
	.weak	_ZThn8_N9NCompress6NBZip28CEncoder7ReleaseEv # -- Begin function _ZThn8_N9NCompress6NBZip28CEncoder7ReleaseEv
	.p2align	5
	.type	_ZThn8_N9NCompress6NBZip28CEncoder7ReleaseEv,@function
_ZThn8_N9NCompress6NBZip28CEncoder7ReleaseEv: # @_ZThn8_N9NCompress6NBZip28CEncoder7ReleaseEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.w	$a1, $a0, 16
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 16
	bnez	$fp, .LBB45_2
# %bb.1:
	ld.d	$a1, $a0, -8
	ld.d	$a1, $a1, 32
	addi.d	$a0, $a0, -8
	jirl	$ra, $a1, 0
.LBB45_2:                               # %_ZN9NCompress6NBZip28CEncoder7ReleaseEv.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end45:
	.size	_ZThn8_N9NCompress6NBZip28CEncoder7ReleaseEv, .Lfunc_end45-_ZThn8_N9NCompress6NBZip28CEncoder7ReleaseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn16_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZThn16_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZThn16_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv # -- Begin function _ZThn16_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZThn16_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv,@function
_ZThn16_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv: # @_ZThn16_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	addi.d	$a0, $a0, -16
	pcaddu18i	$t8, %call36(_ZN9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv)
	jr	$t8
.Lfunc_end46:
	.size	_ZThn16_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv, .Lfunc_end46-_ZThn16_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn16_N9NCompress6NBZip28CEncoder6AddRefEv,"axG",@progbits,_ZThn16_N9NCompress6NBZip28CEncoder6AddRefEv,comdat
	.weak	_ZThn16_N9NCompress6NBZip28CEncoder6AddRefEv # -- Begin function _ZThn16_N9NCompress6NBZip28CEncoder6AddRefEv
	.p2align	5
	.type	_ZThn16_N9NCompress6NBZip28CEncoder6AddRefEv,@function
_ZThn16_N9NCompress6NBZip28CEncoder6AddRefEv: # @_ZThn16_N9NCompress6NBZip28CEncoder6AddRefEv
	.cfi_startproc
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end47:
	.size	_ZThn16_N9NCompress6NBZip28CEncoder6AddRefEv, .Lfunc_end47-_ZThn16_N9NCompress6NBZip28CEncoder6AddRefEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn16_N9NCompress6NBZip28CEncoder7ReleaseEv,"axG",@progbits,_ZThn16_N9NCompress6NBZip28CEncoder7ReleaseEv,comdat
	.weak	_ZThn16_N9NCompress6NBZip28CEncoder7ReleaseEv # -- Begin function _ZThn16_N9NCompress6NBZip28CEncoder7ReleaseEv
	.p2align	5
	.type	_ZThn16_N9NCompress6NBZip28CEncoder7ReleaseEv,@function
_ZThn16_N9NCompress6NBZip28CEncoder7ReleaseEv: # @_ZThn16_N9NCompress6NBZip28CEncoder7ReleaseEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB48_2
# %bb.1:
	ld.d	$a1, $a0, -16
	ld.d	$a1, $a1, 32
	addi.d	$a0, $a0, -16
	jirl	$ra, $a1, 0
.LBB48_2:                               # %_ZN9NCompress6NBZip28CEncoder7ReleaseEv.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end48:
	.size	_ZThn16_N9NCompress6NBZip28CEncoder7ReleaseEv, .Lfunc_end48-_ZThn16_N9NCompress6NBZip28CEncoder7ReleaseEv
	.cfi_endproc
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

	.type	_ZTI19COutBufferException,@object # @_ZTI19COutBufferException
	.section	.data.rel.ro._ZTI19COutBufferException,"awG",@progbits,_ZTI19COutBufferException,comdat
	.weak	_ZTI19COutBufferException
	.p2align	3, 0x0
_ZTI19COutBufferException:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS19COutBufferException
	.dword	_ZTI16CSystemException
	.size	_ZTI19COutBufferException, 24

	.type	_ZTS19COutBufferException,@object # @_ZTS19COutBufferException
	.section	.rodata._ZTS19COutBufferException,"aG",@progbits,_ZTS19COutBufferException,comdat
	.weak	_ZTS19COutBufferException
_ZTS19COutBufferException:
	.asciz	"19COutBufferException"
	.size	_ZTS19COutBufferException, 22

	.type	_ZTVN9NCompress6NBZip28CEncoderE,@object # @_ZTVN9NCompress6NBZip28CEncoderE
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVN9NCompress6NBZip28CEncoderE
	.p2align	3, 0x0
_ZTVN9NCompress6NBZip28CEncoderE:
	.dword	0
	.dword	_ZTIN9NCompress6NBZip28CEncoderE
	.dword	_ZN9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv
	.dword	_ZN9NCompress6NBZip28CEncoder6AddRefEv
	.dword	_ZN9NCompress6NBZip28CEncoder7ReleaseEv
	.dword	_ZN9NCompress6NBZip28CEncoderD2Ev
	.dword	_ZN9NCompress6NBZip28CEncoderD0Ev
	.dword	_ZN9NCompress6NBZip28CEncoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo
	.dword	_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj
	.dword	_ZN9NCompress6NBZip28CEncoder18SetNumberOfThreadsEj
	.dword	-8
	.dword	_ZTIN9NCompress6NBZip28CEncoderE
	.dword	_ZThn8_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv
	.dword	_ZThn8_N9NCompress6NBZip28CEncoder6AddRefEv
	.dword	_ZThn8_N9NCompress6NBZip28CEncoder7ReleaseEv
	.dword	_ZThn8_N9NCompress6NBZip28CEncoderD1Ev
	.dword	_ZThn8_N9NCompress6NBZip28CEncoderD0Ev
	.dword	_ZThn8_N9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj
	.dword	-16
	.dword	_ZTIN9NCompress6NBZip28CEncoderE
	.dword	_ZThn16_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv
	.dword	_ZThn16_N9NCompress6NBZip28CEncoder6AddRefEv
	.dword	_ZThn16_N9NCompress6NBZip28CEncoder7ReleaseEv
	.dword	_ZThn16_N9NCompress6NBZip28CEncoderD1Ev
	.dword	_ZThn16_N9NCompress6NBZip28CEncoderD0Ev
	.dword	_ZThn16_N9NCompress6NBZip28CEncoder18SetNumberOfThreadsEj
	.size	_ZTVN9NCompress6NBZip28CEncoderE, 208

	.type	_ZTIN9NCompress6NBZip28CEncoderE,@object # @_ZTIN9NCompress6NBZip28CEncoderE
	.globl	_ZTIN9NCompress6NBZip28CEncoderE
	.p2align	3, 0x0
_ZTIN9NCompress6NBZip28CEncoderE:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTSN9NCompress6NBZip28CEncoderE
	.word	1                               # 0x1
	.word	4                               # 0x4
	.dword	_ZTI14ICompressCoder
	.dword	2                               # 0x2
	.dword	_ZTI27ICompressSetCoderProperties
	.dword	2050                            # 0x802
	.dword	_ZTI19ICompressSetCoderMt
	.dword	4098                            # 0x1002
	.dword	_ZTI13CMyUnknownImp
	.dword	6146                            # 0x1802
	.size	_ZTIN9NCompress6NBZip28CEncoderE, 88

	.type	_ZTSN9NCompress6NBZip28CEncoderE,@object # @_ZTSN9NCompress6NBZip28CEncoderE
	.section	.rodata,"a",@progbits
	.globl	_ZTSN9NCompress6NBZip28CEncoderE
_ZTSN9NCompress6NBZip28CEncoderE:
	.asciz	"N9NCompress6NBZip28CEncoderE"
	.size	_ZTSN9NCompress6NBZip28CEncoderE, 29

	.type	_ZTI14ICompressCoder,@object    # @_ZTI14ICompressCoder
	.section	.data.rel.ro._ZTI14ICompressCoder,"awG",@progbits,_ZTI14ICompressCoder,comdat
	.weak	_ZTI14ICompressCoder
	.p2align	3, 0x0
_ZTI14ICompressCoder:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS14ICompressCoder
	.dword	_ZTI8IUnknown
	.size	_ZTI14ICompressCoder, 24

	.type	_ZTS14ICompressCoder,@object    # @_ZTS14ICompressCoder
	.section	.rodata._ZTS14ICompressCoder,"aG",@progbits,_ZTS14ICompressCoder,comdat
	.weak	_ZTS14ICompressCoder
_ZTS14ICompressCoder:
	.asciz	"14ICompressCoder"
	.size	_ZTS14ICompressCoder, 17

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

	.type	_ZTI27ICompressSetCoderProperties,@object # @_ZTI27ICompressSetCoderProperties
	.section	.data.rel.ro._ZTI27ICompressSetCoderProperties,"awG",@progbits,_ZTI27ICompressSetCoderProperties,comdat
	.weak	_ZTI27ICompressSetCoderProperties
	.p2align	3, 0x0
_ZTI27ICompressSetCoderProperties:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS27ICompressSetCoderProperties
	.dword	_ZTI8IUnknown
	.size	_ZTI27ICompressSetCoderProperties, 24

	.type	_ZTS27ICompressSetCoderProperties,@object # @_ZTS27ICompressSetCoderProperties
	.section	.rodata._ZTS27ICompressSetCoderProperties,"aG",@progbits,_ZTS27ICompressSetCoderProperties,comdat
	.weak	_ZTS27ICompressSetCoderProperties
_ZTS27ICompressSetCoderProperties:
	.asciz	"27ICompressSetCoderProperties"
	.size	_ZTS27ICompressSetCoderProperties, 30

	.type	_ZTI19ICompressSetCoderMt,@object # @_ZTI19ICompressSetCoderMt
	.section	.data.rel.ro._ZTI19ICompressSetCoderMt,"awG",@progbits,_ZTI19ICompressSetCoderMt,comdat
	.weak	_ZTI19ICompressSetCoderMt
	.p2align	3, 0x0
_ZTI19ICompressSetCoderMt:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS19ICompressSetCoderMt
	.dword	_ZTI8IUnknown
	.size	_ZTI19ICompressSetCoderMt, 24

	.type	_ZTS19ICompressSetCoderMt,@object # @_ZTS19ICompressSetCoderMt
	.section	.rodata._ZTS19ICompressSetCoderMt,"aG",@progbits,_ZTS19ICompressSetCoderMt,comdat
	.weak	_ZTS19ICompressSetCoderMt
_ZTS19ICompressSetCoderMt:
	.asciz	"19ICompressSetCoderMt"
	.size	_ZTS19ICompressSetCoderMt, 22

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

	.data
	.p2align	3, 0x0
.L_ZTI18CInBufferException.DW.stub:
	.dword	_ZTI18CInBufferException
.L_ZTI19COutBufferException.DW.stub:
	.dword	_ZTI19COutBufferException
	.globl	_ZN9NCompress6NBZip28CEncoderC1Ev
	.type	_ZN9NCompress6NBZip28CEncoderC1Ev,@function
_ZN9NCompress6NBZip28CEncoderC1Ev = _ZN9NCompress6NBZip28CEncoderC2Ev
	.globl	_ZN9NCompress6NBZip28CEncoderD1Ev
	.type	_ZN9NCompress6NBZip28CEncoderD1Ev,@function
_ZN9NCompress6NBZip28CEncoderD1Ev = _ZN9NCompress6NBZip28CEncoderD2Ev
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
	.addrsig_sym _ZN9NCompress6NBZip2L8MFThreadEPv
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZTI18CInBufferException
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS18CInBufferException
	.addrsig_sym _ZTI16CSystemException
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS16CSystemException
	.addrsig_sym _ZTI19COutBufferException
	.addrsig_sym _ZTS19COutBufferException
	.addrsig_sym _ZTIN9NCompress6NBZip28CEncoderE
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTSN9NCompress6NBZip28CEncoderE
	.addrsig_sym _ZTI14ICompressCoder
	.addrsig_sym _ZTS14ICompressCoder
	.addrsig_sym _ZTI8IUnknown
	.addrsig_sym _ZTS8IUnknown
	.addrsig_sym _ZTI27ICompressSetCoderProperties
	.addrsig_sym _ZTS27ICompressSetCoderProperties
	.addrsig_sym _ZTI19ICompressSetCoderMt
	.addrsig_sym _ZTS19ICompressSetCoderMt
	.addrsig_sym _ZTI13CMyUnknownImp
	.addrsig_sym _ZTS13CMyUnknownImp
