	.file	"LimitedStreams.cpp"
	.text
	.globl	_ZN26CLimitedSequentialInStream4ReadEPvjPj # -- Begin function _ZN26CLimitedSequentialInStream4ReadEPvjPj
	.p2align	5
	.type	_ZN26CLimitedSequentialInStream4ReadEPvjPj,@function
_ZN26CLimitedSequentialInStream4ReadEPvjPj: # @_ZN26CLimitedSequentialInStream4ReadEPvjPj
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
	ld.d	$a0, $a0, 24
	ld.d	$a4, $s0, 32
	move	$fp, $a3
	sub.d	$a0, $a0, $a4
	bstrpick.d	$a2, $a2, 31, 0
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a2, $a2, $a3
	or	$a2, $a0, $a2
	st.w	$zero, $sp, 4
	beqz	$a2, .LBB0_3
# %bb.1:
	ld.d	$a0, $s0, 16
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a3, 40
	addi.w	$a2, $a2, 0
	addi.d	$a3, $sp, 4
	jirl	$ra, $a4, 0
	ld.wu	$a1, $sp, 4
	ld.d	$a2, $s0, 32
	addi.w	$a3, $a1, 0
	add.d	$a2, $a2, $a1
	st.d	$a2, $s0, 32
	bnez	$a3, .LBB0_4
# %bb.2:
	move	$a1, $zero
	ori	$a2, $zero, 1
	st.b	$a2, $s0, 40
	b	.LBB0_4
.LBB0_3:
	move	$a1, $zero
	move	$a0, $zero
.LBB0_4:
	beqz	$fp, .LBB0_6
# %bb.5:
	st.w	$a1, $fp, 0
.LBB0_6:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	_ZN26CLimitedSequentialInStream4ReadEPvjPj, .Lfunc_end0-_ZN26CLimitedSequentialInStream4ReadEPvjPj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN16CLimitedInStream4ReadEPvjPj # -- Begin function _ZN16CLimitedInStream4ReadEPvjPj
	.p2align	5
	.type	_ZN16CLimitedInStream4ReadEPvjPj,@function
_ZN16CLimitedInStream4ReadEPvjPj:       # @_ZN16CLimitedInStream4ReadEPvjPj
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
	move	$s0, $a3
	move	$fp, $a0
	st.w	$a2, $sp, 4
	beqz	$a3, .LBB1_2
# %bb.1:
	st.w	$zero, $s0, 0
.LBB1_2:
	ld.d	$a0, $fp, 24
	ld.d	$a3, $fp, 40
	bgeu	$a0, $a3, .LBB1_10
# %bb.3:
	sub.d	$a3, $a3, $a0
	bstrpick.d	$a4, $a2, 31, 0
	bgeu	$a3, $a4, .LBB1_5
# %bb.4:
	st.w	$a3, $sp, 4
	move	$a2, $a3
.LBB1_5:
	ld.d	$a3, $fp, 48
	ld.d	$a4, $fp, 32
	add.d	$a3, $a3, $a0
	beq	$a3, $a4, .LBB1_7
# %bb.6:
	ld.d	$a0, $fp, 16
	ld.d	$a4, $a0, 0
	st.d	$a3, $fp, 32
	ld.d	$a4, $a4, 48
	move	$s1, $a1
	move	$a1, $a3
	move	$s2, $a2
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
	move	$a2, $s2
	move	$a1, $s1
	bnez	$a0, .LBB1_11
.LBB1_7:
	ld.d	$a0, $fp, 16
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a3, 40
	addi.w	$a2, $a2, 0
	addi.d	$a3, $sp, 4
	jirl	$ra, $a4, 0
	ld.wu	$a1, $sp, 4
	beqz	$s0, .LBB1_9
# %bb.8:
	st.w	$a1, $s0, 0
.LBB1_9:
	ld.d	$a2, $fp, 32
	ld.d	$a3, $fp, 24
	add.d	$a2, $a2, $a1
	st.d	$a2, $fp, 32
	add.d	$a1, $a3, $a1
	st.d	$a1, $fp, 24
	b	.LBB1_11
.LBB1_10:
	xor	$a0, $a3, $a0
	sltui	$a0, $a0, 1
	lu12i.w	$a1, -524284
	ori	$a1, $a1, 5
	masknez	$a0, $a1, $a0
.LBB1_11:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	_ZN16CLimitedInStream4ReadEPvjPj, .Lfunc_end1-_ZN16CLimitedInStream4ReadEPvjPj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN16CLimitedInStream4SeekExjPy # -- Begin function _ZN16CLimitedInStream4SeekExjPy
	.p2align	5
	.type	_ZN16CLimitedInStream4SeekExjPy,@function
_ZN16CLimitedInStream4SeekExjPy:        # @_ZN16CLimitedInStream4SeekExjPy
# %bb.0:
	ori	$a4, $zero, 2
	beq	$a2, $a4, .LBB2_5
# %bb.1:
	ori	$a4, $zero, 1
	beq	$a2, $a4, .LBB2_4
# %bb.2:
	beqz	$a2, .LBB2_7
# %bb.3:
	lu12i.w	$a0, -524240
	ori	$a0, $a0, 1
	ret
.LBB2_4:
	ld.d	$a2, $a0, 24
	b	.LBB2_6
.LBB2_5:
	ld.d	$a2, $a0, 40
.LBB2_6:
	add.d	$a1, $a2, $a1
.LBB2_7:
	st.d	$a1, $a0, 24
	move	$a0, $zero
	beqz	$a3, .LBB2_9
# %bb.8:
	st.d	$a1, $a3, 0
.LBB2_9:
	ret
.Lfunc_end2:
	.size	_ZN16CLimitedInStream4SeekExjPy, .Lfunc_end2-_ZN16CLimitedInStream4SeekExjPy
                                        # -- End function
	.globl	_ZN16CClusterInStream4ReadEPvjPj # -- Begin function _ZN16CClusterInStream4ReadEPvjPj
	.p2align	5
	.type	_ZN16CClusterInStream4ReadEPvjPj,@function
_ZN16CClusterInStream4ReadEPvjPj:       # @_ZN16CClusterInStream4ReadEPvjPj
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$s0, $a3
	move	$fp, $a0
	st.w	$a2, $sp, 20
	beqz	$a3, .LBB3_2
# %bb.1:
	st.w	$zero, $s0, 0
.LBB3_2:
	ld.d	$a4, $fp, 16
	ld.d	$a0, $fp, 56
	bgeu	$a4, $a0, .LBB3_9
# %bb.3:
	ld.w	$a3, $fp, 32
	beqz	$a3, .LBB3_11
.LBB3_4:                                # %.thread
	addi.w	$a0, $a3, 0
	bgeu	$a0, $a2, .LBB3_6
# %bb.5:
	st.w	$a3, $sp, 20
	move	$a2, $a3
.LBB3_6:
	ld.d	$a0, $fp, 40
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a3, 40
	addi.w	$a2, $a2, 0
	addi.d	$a3, $sp, 20
	jirl	$ra, $a4, 0
	ld.wu	$a1, $sp, 20
	beqz	$s0, .LBB3_8
# %bb.7:
	st.w	$a1, $s0, 0
.LBB3_8:
	ld.d	$a2, $fp, 24
	ld.d	$a3, $fp, 16
	add.d	$a2, $a2, $a1
	ld.w	$a4, $fp, 32
	st.d	$a2, $fp, 24
	add.d	$a2, $a3, $a1
	st.d	$a2, $fp, 16
	sub.d	$a1, $a4, $a1
	st.w	$a1, $fp, 32
	b	.LBB3_10
.LBB3_9:
	xor	$a0, $a4, $a0
	sltui	$a0, $a0, 1
	lu12i.w	$a1, -524284
	ori	$a1, $a1, 5
	masknez	$a0, $a1, $a0
.LBB3_10:
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
.LBB3_11:
	ld.w	$a3, $fp, 64
	ori	$a0, $zero, 1
	sll.w	$s1, $a0, $a3
	ld.d	$a0, $fp, 88
	srl.d	$s2, $a4, $a3
	slli.d	$a5, $s2, 32
	srai.d	$a5, $a5, 30
	ldx.wu	$s3, $a0, $a5
	addi.d	$a5, $s1, -1
	ld.d	$a6, $fp, 48
	and	$s4, $a5, $a4
	sll.d	$a3, $s3, $a3
	ld.d	$a5, $fp, 24
	add.d	$a3, $a3, $a6
	addi.w	$a4, $s4, 0
	add.d	$a3, $a3, $a4
	move	$a4, $s1
	beq	$a3, $a5, .LBB3_14
# %bb.12:
	move	$s5, $a2
	move	$s6, $a1
	ld.d	$a0, $fp, 40
	ld.d	$a1, $a0, 0
	st.d	$a3, $fp, 24
	ld.d	$a4, $a1, 48
	move	$a1, $a3
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB3_10
# %bb.13:                               # %._crit_edge
	ld.wu	$a1, $fp, 64
	ld.d	$a0, $fp, 88
	ori	$a2, $zero, 1
	sll.w	$a4, $a2, $a1
	move	$a1, $s6
	move	$a2, $s5
.LBB3_14:
	sub.w	$a3, $s1, $s4
	st.w	$a3, $fp, 32
	ld.w	$a5, $fp, 84
	addi.w	$a6, $s2, 1
	addi.w	$a7, $s3, 1
	ori	$t0, $zero, 63
	.p2align	4, , 16
.LBB3_15:                               # =>This Inner Loop Header: Depth=1
	bgeu	$a6, $a5, .LBB3_18
# %bb.16:                               #   in Loop: Header=BB3_15 Depth=1
	slli.d	$t1, $a6, 2
	ldx.w	$t1, $a0, $t1
	bne	$a7, $t1, .LBB3_18
# %bb.17:                               #   in Loop: Header=BB3_15 Depth=1
	add.w	$a3, $a3, $a4
	st.w	$a3, $fp, 32
	addi.w	$a6, $a6, 1
	addi.d	$t0, $t0, -1
	addi.w	$a7, $a7, 1
	bnez	$t0, .LBB3_15
.LBB3_18:                               # %.critedge
	ld.d	$a0, $fp, 56
	ld.d	$a4, $fp, 16
	sub.d	$a0, $a0, $a4
	bstrpick.d	$a4, $a3, 31, 0
	bgeu	$a0, $a4, .LBB3_4
# %bb.19:
	st.w	$a0, $fp, 32
	move	$a3, $a0
	b	.LBB3_4
.Lfunc_end3:
	.size	_ZN16CClusterInStream4ReadEPvjPj, .Lfunc_end3-_ZN16CClusterInStream4ReadEPvjPj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN16CClusterInStream4SeekExjPy # -- Begin function _ZN16CClusterInStream4SeekExjPy
	.p2align	5
	.type	_ZN16CClusterInStream4SeekExjPy,@function
_ZN16CClusterInStream4SeekExjPy:        # @_ZN16CClusterInStream4SeekExjPy
# %bb.0:
	beqz	$a2, .LBB4_6
# %bb.1:
	ori	$a4, $zero, 2
	beq	$a2, $a4, .LBB4_4
# %bb.2:
	ori	$a4, $zero, 1
	bne	$a2, $a4, .LBB4_11
# %bb.3:
	ld.d	$a2, $a0, 16
	b	.LBB4_5
.LBB4_4:
	ld.d	$a2, $a0, 56
.LBB4_5:
	add.d	$a1, $a2, $a1
.LBB4_6:
	ld.d	$a2, $a0, 16
	beq	$a2, $a1, .LBB4_8
# %bb.7:
	st.w	$zero, $a0, 32
.LBB4_8:
	st.d	$a1, $a0, 16
	move	$a0, $zero
	beqz	$a3, .LBB4_10
# %bb.9:
	st.d	$a1, $a3, 0
.LBB4_10:
	ret
.LBB4_11:
	lu12i.w	$a0, -524240
	ori	$a0, $a0, 1
	ret
.Lfunc_end4:
	.size	_ZN16CClusterInStream4SeekExjPy, .Lfunc_end4-_ZN16CClusterInStream4SeekExjPy
                                        # -- End function
	.globl	_Z21CreateLimitedInStreamP9IInStreamyyPP19ISequentialInStream # -- Begin function _Z21CreateLimitedInStreamP9IInStreamyyPP19ISequentialInStream
	.p2align	5
	.type	_Z21CreateLimitedInStreamP9IInStreamyyPP19ISequentialInStream,@function
_Z21CreateLimitedInStreamP9IInStreamyyPP19ISequentialInStream: # @_Z21CreateLimitedInStreamP9IInStreamyyPP19ISequentialInStream
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	move	$s0, $a3
	move	$s3, $a2
	move	$s1, $a1
	move	$s2, $a0
	st.d	$zero, $a3, 0
	ori	$a0, $zero, 56
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV16CLimitedInStream+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV16CLimitedInStream+16)
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 16
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 8
	beqz	$s2, .LBB5_4
# %bb.1:
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 8
.Ltmp0:                                 # EH_LABEL
	move	$a0, $s2
	jirl	$ra, $a1, 0
.Ltmp1:                                 # EH_LABEL
# %bb.2:                                # %.noexc
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB5_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp2:                                 # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp3:                                 # EH_LABEL
.LBB5_4:                                # %.noexc.thread
	st.d	$s2, $fp, 16
	st.d	$s1, $fp, 48
	ld.d	$a0, $s2, 0
	st.d	$s1, $fp, 32
	st.d	$zero, $fp, 24
	st.d	$s3, $fp, 40
	ld.d	$a4, $a0, 48
.Ltmp4:                                 # EH_LABEL
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
.Ltmp5:                                 # EH_LABEL
# %bb.5:                                # %_ZN16CLimitedInStream11InitAndSeekEyy.exit
	move	$s1, $a0
	ld.d	$a0, $fp, 0
	beqz	$s1, .LBB5_7
# %bb.6:
	ld.d	$a1, $a0, 16
.Ltmp7:                                 # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp8:                                 # EH_LABEL
	b	.LBB5_9
.LBB5_7:
	ld.d	$a4, $a0, 48
.Ltmp10:                                # EH_LABEL
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
.Ltmp11:                                # EH_LABEL
# %bb.8:                                # %.thread
	st.d	$fp, $s0, 0
.LBB5_9:                                # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
	move	$a0, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB5_10:
.Ltmp9:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB5_11:
.Ltmp6:                                 # EH_LABEL
	b	.LBB5_13
.LBB5_12:
.Ltmp12:                                # EH_LABEL
.LBB5_13:
	move	$s0, $a0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
.Ltmp13:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp14:                                # EH_LABEL
# %bb.14:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit25
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_15:
.Ltmp15:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_Z21CreateLimitedInStreamP9IInStreamyyPP19ISequentialInStream, .Lfunc_end5-_Z21CreateLimitedInStreamP9IInStreamyyPP19ISequentialInStream
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
	.uleb128 .Ltmp3-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp3
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp5-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp5
	.uleb128 .Ltmp6-.Lfunc_begin0           #     jumps to .Ltmp6
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp8-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin0           #     jumps to .Ltmp9
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp13-.Ltmp11                #   Call between .Ltmp11 and .Ltmp13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin0          #     jumps to .Ltmp15
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Lfunc_end5-.Ltmp14            #   Call between .Ltmp14 and .Lfunc_end5
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
	.text
	.globl	_ZN27CLimitedSequentialOutStream5WriteEPKvjPj # -- Begin function _ZN27CLimitedSequentialOutStream5WriteEPKvjPj
	.p2align	5
	.type	_ZN27CLimitedSequentialOutStream5WriteEPKvjPj,@function
_ZN27CLimitedSequentialOutStream5WriteEPKvjPj: # @_ZN27CLimitedSequentialOutStream5WriteEPKvjPj
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
	move	$fp, $a3
	move	$s0, $a0
	st.w	$a2, $sp, 4
	beqz	$a3, .LBB6_2
# %bb.1:
	st.w	$zero, $fp, 0
.LBB6_2:
	ld.d	$a3, $s0, 24
	bstrpick.d	$a0, $a2, 31, 0
	bgeu	$a3, $a0, .LBB6_5
# %bb.3:
	beqz	$a3, .LBB6_11
# %bb.4:
	st.w	$a3, $sp, 4
	move	$a2, $a3
.LBB6_5:
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB6_7
# %bb.6:
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a3, 40
	addi.w	$a2, $a2, 0
	addi.d	$a3, $sp, 4
	jirl	$ra, $a4, 0
	ld.w	$a2, $sp, 4
	ld.d	$a3, $s0, 24
	b	.LBB6_8
.LBB6_7:
	move	$a0, $zero
.LBB6_8:
	bstrpick.d	$a1, $a2, 31, 0
	sub.d	$a1, $a3, $a1
	st.d	$a1, $s0, 24
	beqz	$fp, .LBB6_10
.LBB6_9:                                # %.sink.split
	st.w	$a2, $fp, 0
.LBB6_10:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB6_11:
	ori	$a0, $zero, 1
	ld.bu	$a1, $s0, 33
	st.b	$a0, $s0, 32
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 5
	masknez	$a0, $a0, $a1
	beqz	$fp, .LBB6_10
# %bb.12:
	beqz	$a1, .LBB6_10
# %bb.13:
	move	$a0, $zero
	b	.LBB6_9
.Lfunc_end6:
	.size	_ZN27CLimitedSequentialOutStream5WriteEPKvjPj, .Lfunc_end6-_ZN27CLimitedSequentialOutStream5WriteEPKvjPj
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN26CLimitedSequentialInStream14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN26CLimitedSequentialInStream14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN26CLimitedSequentialInStream14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN26CLimitedSequentialInStream14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN26CLimitedSequentialInStream14QueryInterfaceERK4GUIDPPv,@function
_ZN26CLimitedSequentialInStream14QueryInterfaceERK4GUIDPPv: # @_ZN26CLimitedSequentialInStream14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	ld.bu	$a5, $a1, 0
	move	$a3, $a0
	pcalau12i	$a0, %got_pc_hi20(IID_IUnknown)
	ld.d	$a4, $a0, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a6, $a4, 0
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 2
	bne	$a5, $a6, .LBB7_17
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a4, 1
	bne	$a5, $a6, .LBB7_17
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a4, 2
	bne	$a5, $a6, .LBB7_17
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a4, 3
	bne	$a5, $a6, .LBB7_17
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a4, 4
	bne	$a5, $a6, .LBB7_17
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a4, 5
	bne	$a5, $a6, .LBB7_17
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a4, 6
	bne	$a5, $a6, .LBB7_17
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a4, 7
	bne	$a5, $a6, .LBB7_17
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a4, 8
	bne	$a5, $a6, .LBB7_17
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a4, 9
	bne	$a5, $a6, .LBB7_17
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a4, 10
	bne	$a5, $a6, .LBB7_17
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a4, 11
	bne	$a5, $a6, .LBB7_17
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a4, 12
	bne	$a5, $a6, .LBB7_17
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a4, 13
	bne	$a5, $a6, .LBB7_17
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a4, 14
	bne	$a5, $a6, .LBB7_17
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a4, 15
	bne	$a1, $a4, .LBB7_17
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
.LBB7_17:                               # %_ZeqRK4GUIDS1_.exit.thread
	ret
.Lfunc_end7:
	.size	_ZN26CLimitedSequentialInStream14QueryInterfaceERK4GUIDPPv, .Lfunc_end7-_ZN26CLimitedSequentialInStream14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN26CLimitedSequentialInStream6AddRefEv,"axG",@progbits,_ZN26CLimitedSequentialInStream6AddRefEv,comdat
	.weak	_ZN26CLimitedSequentialInStream6AddRefEv # -- Begin function _ZN26CLimitedSequentialInStream6AddRefEv
	.p2align	5
	.type	_ZN26CLimitedSequentialInStream6AddRefEv,@function
_ZN26CLimitedSequentialInStream6AddRefEv: # @_ZN26CLimitedSequentialInStream6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end8:
	.size	_ZN26CLimitedSequentialInStream6AddRefEv, .Lfunc_end8-_ZN26CLimitedSequentialInStream6AddRefEv
                                        # -- End function
	.section	.text._ZN26CLimitedSequentialInStream7ReleaseEv,"axG",@progbits,_ZN26CLimitedSequentialInStream7ReleaseEv,comdat
	.weak	_ZN26CLimitedSequentialInStream7ReleaseEv # -- Begin function _ZN26CLimitedSequentialInStream7ReleaseEv
	.p2align	5
	.type	_ZN26CLimitedSequentialInStream7ReleaseEv,@function
_ZN26CLimitedSequentialInStream7ReleaseEv: # @_ZN26CLimitedSequentialInStream7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB9_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB9_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	_ZN26CLimitedSequentialInStream7ReleaseEv, .Lfunc_end9-_ZN26CLimitedSequentialInStream7ReleaseEv
                                        # -- End function
	.section	.text._ZN26CLimitedSequentialInStreamD2Ev,"axG",@progbits,_ZN26CLimitedSequentialInStreamD2Ev,comdat
	.weak	_ZN26CLimitedSequentialInStreamD2Ev # -- Begin function _ZN26CLimitedSequentialInStreamD2Ev
	.p2align	5
	.type	_ZN26CLimitedSequentialInStreamD2Ev,@function
_ZN26CLimitedSequentialInStreamD2Ev:    # @_ZN26CLimitedSequentialInStreamD2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV26CLimitedSequentialInStream+16)
	addi.d	$a2, $a0, %pc_lo12(_ZTV26CLimitedSequentialInStream+16)
	ld.d	$a0, $a1, 16
	st.d	$a2, $a1, 0
	beqz	$a0, .LBB10_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp16:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp17:                                # EH_LABEL
.LBB10_2:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB10_3:
.Ltmp18:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN26CLimitedSequentialInStreamD2Ev, .Lfunc_end10-_ZN26CLimitedSequentialInStreamD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN26CLimitedSequentialInStreamD2Ev,"aG",@progbits,_ZN26CLimitedSequentialInStreamD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table10:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin1          #     jumps to .Ltmp18
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Lfunc_end10-.Ltmp17           #   Call between .Ltmp17 and .Lfunc_end10
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
	.section	.text._ZN26CLimitedSequentialInStreamD0Ev,"axG",@progbits,_ZN26CLimitedSequentialInStreamD0Ev,comdat
	.weak	_ZN26CLimitedSequentialInStreamD0Ev # -- Begin function _ZN26CLimitedSequentialInStreamD0Ev
	.p2align	5
	.type	_ZN26CLimitedSequentialInStreamD0Ev,@function
_ZN26CLimitedSequentialInStreamD0Ev:    # @_ZN26CLimitedSequentialInStreamD0Ev
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
	pcalau12i	$a1, %pc_hi20(_ZTV26CLimitedSequentialInStream+16)
	addi.d	$a2, $a1, %pc_lo12(_ZTV26CLimitedSequentialInStream+16)
	ld.d	$a1, $a0, 16
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB11_2
# %bb.1:
	ld.d	$a2, $a1, 0
	ld.d	$a2, $a2, 16
.Ltmp19:                                # EH_LABEL
	move	$fp, $a0
	move	$a0, $a1
	jirl	$ra, $a2, 0
	move	$a0, $fp
.Ltmp20:                                # EH_LABEL
.LBB11_2:                               # %_ZN26CLimitedSequentialInStreamD2Ev.exit
	ori	$a1, $zero, 48
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB11_3:
.Ltmp21:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN26CLimitedSequentialInStreamD0Ev, .Lfunc_end11-_ZN26CLimitedSequentialInStreamD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN26CLimitedSequentialInStreamD0Ev,"aG",@progbits,_ZN26CLimitedSequentialInStreamD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table11:
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
	.uleb128 .Ltmp20-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Lfunc_end11-.Ltmp20           #   Call between .Ltmp20 and .Lfunc_end11
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
	.section	.text._ZN16CLimitedInStream14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN16CLimitedInStream14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN16CLimitedInStream14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN16CLimitedInStream14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN16CLimitedInStream14QueryInterfaceERK4GUIDPPv,@function
_ZN16CLimitedInStream14QueryInterfaceERK4GUIDPPv: # @_ZN16CLimitedInStream14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	ld.bu	$a4, $a1, 0
	pcalau12i	$a3, %got_pc_hi20(IID_IUnknown)
	ld.d	$a3, $a3, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a5, $a3, 0
	bne	$a4, $a5, .LBB12_16
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a3, 1
	bne	$a5, $a6, .LBB12_16
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a3, 2
	bne	$a5, $a6, .LBB12_16
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a3, 3
	bne	$a5, $a6, .LBB12_16
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a3, 4
	bne	$a5, $a6, .LBB12_16
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a3, 5
	bne	$a5, $a6, .LBB12_16
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a3, 6
	bne	$a5, $a6, .LBB12_16
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a3, 7
	bne	$a5, $a6, .LBB12_16
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a3, 8
	bne	$a5, $a6, .LBB12_16
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a3, 9
	bne	$a5, $a6, .LBB12_16
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a3, 10
	bne	$a5, $a6, .LBB12_16
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a3, 11
	bne	$a5, $a6, .LBB12_16
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a3, 12
	bne	$a5, $a6, .LBB12_16
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a3, 13
	bne	$a5, $a6, .LBB12_16
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a3, 14
	bne	$a5, $a6, .LBB12_16
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a5, $a1, 15
	ld.bu	$a3, $a3, 15
	beq	$a5, $a3, .LBB12_32
.LBB12_16:                              # %_ZeqRK4GUIDS1_.exit.thread
	pcalau12i	$a3, %got_pc_hi20(IID_IInStream)
	ld.d	$a5, $a3, %got_pc_lo12(IID_IInStream)
	ld.bu	$a6, $a5, 0
	lu12i.w	$a3, -524284
	ori	$a3, $a3, 2
	bne	$a4, $a6, .LBB12_33
# %bb.17:
	ld.bu	$a4, $a1, 1
	ld.bu	$a6, $a5, 1
	bne	$a4, $a6, .LBB12_33
# %bb.18:
	ld.bu	$a4, $a1, 2
	ld.bu	$a6, $a5, 2
	bne	$a4, $a6, .LBB12_33
# %bb.19:
	ld.bu	$a4, $a1, 3
	ld.bu	$a6, $a5, 3
	bne	$a4, $a6, .LBB12_33
# %bb.20:
	ld.bu	$a4, $a1, 4
	ld.bu	$a6, $a5, 4
	bne	$a4, $a6, .LBB12_33
# %bb.21:
	ld.bu	$a4, $a1, 5
	ld.bu	$a6, $a5, 5
	bne	$a4, $a6, .LBB12_33
# %bb.22:
	ld.bu	$a4, $a1, 6
	ld.bu	$a6, $a5, 6
	bne	$a4, $a6, .LBB12_33
# %bb.23:
	ld.bu	$a4, $a1, 7
	ld.bu	$a6, $a5, 7
	bne	$a4, $a6, .LBB12_33
# %bb.24:
	ld.bu	$a4, $a1, 8
	ld.bu	$a6, $a5, 8
	bne	$a4, $a6, .LBB12_33
# %bb.25:
	ld.bu	$a4, $a1, 9
	ld.bu	$a6, $a5, 9
	bne	$a4, $a6, .LBB12_33
# %bb.26:
	ld.bu	$a4, $a1, 10
	ld.bu	$a6, $a5, 10
	bne	$a4, $a6, .LBB12_33
# %bb.27:
	ld.bu	$a4, $a1, 11
	ld.bu	$a6, $a5, 11
	bne	$a4, $a6, .LBB12_33
# %bb.28:
	ld.bu	$a4, $a1, 12
	ld.bu	$a6, $a5, 12
	bne	$a4, $a6, .LBB12_33
# %bb.29:
	ld.bu	$a4, $a1, 13
	ld.bu	$a6, $a5, 13
	bne	$a4, $a6, .LBB12_33
# %bb.30:
	ld.bu	$a4, $a1, 14
	ld.bu	$a6, $a5, 14
	bne	$a4, $a6, .LBB12_33
# %bb.31:                               # %_ZeqRK4GUIDS1_.exit24
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a5, 15
	bne	$a1, $a4, .LBB12_33
.LBB12_32:                              # %_ZeqRK4GUIDS1_.exit24.thread.sink.split
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $a1, 8
	jirl	$ra, $a1, 0
	move	$a3, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB12_33:                              # %_ZeqRK4GUIDS1_.exit24.thread
	move	$a0, $a3
	ret
.Lfunc_end12:
	.size	_ZN16CLimitedInStream14QueryInterfaceERK4GUIDPPv, .Lfunc_end12-_ZN16CLimitedInStream14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN16CLimitedInStream6AddRefEv,"axG",@progbits,_ZN16CLimitedInStream6AddRefEv,comdat
	.weak	_ZN16CLimitedInStream6AddRefEv  # -- Begin function _ZN16CLimitedInStream6AddRefEv
	.p2align	5
	.type	_ZN16CLimitedInStream6AddRefEv,@function
_ZN16CLimitedInStream6AddRefEv:         # @_ZN16CLimitedInStream6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end13:
	.size	_ZN16CLimitedInStream6AddRefEv, .Lfunc_end13-_ZN16CLimitedInStream6AddRefEv
                                        # -- End function
	.section	.text._ZN16CLimitedInStream7ReleaseEv,"axG",@progbits,_ZN16CLimitedInStream7ReleaseEv,comdat
	.weak	_ZN16CLimitedInStream7ReleaseEv # -- Begin function _ZN16CLimitedInStream7ReleaseEv
	.p2align	5
	.type	_ZN16CLimitedInStream7ReleaseEv,@function
_ZN16CLimitedInStream7ReleaseEv:        # @_ZN16CLimitedInStream7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB14_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB14_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end14:
	.size	_ZN16CLimitedInStream7ReleaseEv, .Lfunc_end14-_ZN16CLimitedInStream7ReleaseEv
                                        # -- End function
	.section	.text._ZN16CLimitedInStreamD2Ev,"axG",@progbits,_ZN16CLimitedInStreamD2Ev,comdat
	.weak	_ZN16CLimitedInStreamD2Ev       # -- Begin function _ZN16CLimitedInStreamD2Ev
	.p2align	5
	.type	_ZN16CLimitedInStreamD2Ev,@function
_ZN16CLimitedInStreamD2Ev:              # @_ZN16CLimitedInStreamD2Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV16CLimitedInStream+16)
	addi.d	$a2, $a0, %pc_lo12(_ZTV16CLimitedInStream+16)
	ld.d	$a0, $a1, 16
	st.d	$a2, $a1, 0
	beqz	$a0, .LBB15_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp22:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp23:                                # EH_LABEL
.LBB15_2:                               # %_ZN9CMyComPtrI9IInStreamED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB15_3:
.Ltmp24:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN16CLimitedInStreamD2Ev, .Lfunc_end15-_ZN16CLimitedInStreamD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN16CLimitedInStreamD2Ev,"aG",@progbits,_ZN16CLimitedInStreamD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table15:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp22-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin3          #     jumps to .Ltmp24
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp23-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Lfunc_end15-.Ltmp23           #   Call between .Ltmp23 and .Lfunc_end15
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
	.section	.text._ZN16CLimitedInStreamD0Ev,"axG",@progbits,_ZN16CLimitedInStreamD0Ev,comdat
	.weak	_ZN16CLimitedInStreamD0Ev       # -- Begin function _ZN16CLimitedInStreamD0Ev
	.p2align	5
	.type	_ZN16CLimitedInStreamD0Ev,@function
_ZN16CLimitedInStreamD0Ev:              # @_ZN16CLimitedInStreamD0Ev
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
	pcalau12i	$a1, %pc_hi20(_ZTV16CLimitedInStream+16)
	addi.d	$a2, $a1, %pc_lo12(_ZTV16CLimitedInStream+16)
	ld.d	$a1, $a0, 16
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB16_2
# %bb.1:
	ld.d	$a2, $a1, 0
	ld.d	$a2, $a2, 16
.Ltmp25:                                # EH_LABEL
	move	$fp, $a0
	move	$a0, $a1
	jirl	$ra, $a2, 0
	move	$a0, $fp
.Ltmp26:                                # EH_LABEL
.LBB16_2:                               # %_ZN16CLimitedInStreamD2Ev.exit
	ori	$a1, $zero, 56
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB16_3:
.Ltmp27:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN16CLimitedInStreamD0Ev, .Lfunc_end16-_ZN16CLimitedInStreamD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN16CLimitedInStreamD0Ev,"aG",@progbits,_ZN16CLimitedInStreamD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table16:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp25-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin4          #     jumps to .Ltmp27
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp26-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Lfunc_end16-.Ltmp26           #   Call between .Ltmp26 and .Lfunc_end16
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
	.section	.text._ZN16CClusterInStream14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN16CClusterInStream14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN16CClusterInStream14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN16CClusterInStream14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN16CClusterInStream14QueryInterfaceERK4GUIDPPv,@function
_ZN16CClusterInStream14QueryInterfaceERK4GUIDPPv: # @_ZN16CClusterInStream14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	ld.bu	$a4, $a1, 0
	pcalau12i	$a3, %got_pc_hi20(IID_IUnknown)
	ld.d	$a3, $a3, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a5, $a3, 0
	bne	$a4, $a5, .LBB17_16
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a3, 1
	bne	$a5, $a6, .LBB17_16
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a3, 2
	bne	$a5, $a6, .LBB17_16
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a3, 3
	bne	$a5, $a6, .LBB17_16
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a3, 4
	bne	$a5, $a6, .LBB17_16
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a3, 5
	bne	$a5, $a6, .LBB17_16
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a3, 6
	bne	$a5, $a6, .LBB17_16
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a3, 7
	bne	$a5, $a6, .LBB17_16
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a3, 8
	bne	$a5, $a6, .LBB17_16
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a3, 9
	bne	$a5, $a6, .LBB17_16
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a3, 10
	bne	$a5, $a6, .LBB17_16
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a3, 11
	bne	$a5, $a6, .LBB17_16
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a3, 12
	bne	$a5, $a6, .LBB17_16
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a3, 13
	bne	$a5, $a6, .LBB17_16
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a3, 14
	bne	$a5, $a6, .LBB17_16
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a5, $a1, 15
	ld.bu	$a3, $a3, 15
	beq	$a5, $a3, .LBB17_32
.LBB17_16:                              # %_ZeqRK4GUIDS1_.exit.thread
	pcalau12i	$a3, %got_pc_hi20(IID_IInStream)
	ld.d	$a5, $a3, %got_pc_lo12(IID_IInStream)
	ld.bu	$a6, $a5, 0
	lu12i.w	$a3, -524284
	ori	$a3, $a3, 2
	bne	$a4, $a6, .LBB17_33
# %bb.17:
	ld.bu	$a4, $a1, 1
	ld.bu	$a6, $a5, 1
	bne	$a4, $a6, .LBB17_33
# %bb.18:
	ld.bu	$a4, $a1, 2
	ld.bu	$a6, $a5, 2
	bne	$a4, $a6, .LBB17_33
# %bb.19:
	ld.bu	$a4, $a1, 3
	ld.bu	$a6, $a5, 3
	bne	$a4, $a6, .LBB17_33
# %bb.20:
	ld.bu	$a4, $a1, 4
	ld.bu	$a6, $a5, 4
	bne	$a4, $a6, .LBB17_33
# %bb.21:
	ld.bu	$a4, $a1, 5
	ld.bu	$a6, $a5, 5
	bne	$a4, $a6, .LBB17_33
# %bb.22:
	ld.bu	$a4, $a1, 6
	ld.bu	$a6, $a5, 6
	bne	$a4, $a6, .LBB17_33
# %bb.23:
	ld.bu	$a4, $a1, 7
	ld.bu	$a6, $a5, 7
	bne	$a4, $a6, .LBB17_33
# %bb.24:
	ld.bu	$a4, $a1, 8
	ld.bu	$a6, $a5, 8
	bne	$a4, $a6, .LBB17_33
# %bb.25:
	ld.bu	$a4, $a1, 9
	ld.bu	$a6, $a5, 9
	bne	$a4, $a6, .LBB17_33
# %bb.26:
	ld.bu	$a4, $a1, 10
	ld.bu	$a6, $a5, 10
	bne	$a4, $a6, .LBB17_33
# %bb.27:
	ld.bu	$a4, $a1, 11
	ld.bu	$a6, $a5, 11
	bne	$a4, $a6, .LBB17_33
# %bb.28:
	ld.bu	$a4, $a1, 12
	ld.bu	$a6, $a5, 12
	bne	$a4, $a6, .LBB17_33
# %bb.29:
	ld.bu	$a4, $a1, 13
	ld.bu	$a6, $a5, 13
	bne	$a4, $a6, .LBB17_33
# %bb.30:
	ld.bu	$a4, $a1, 14
	ld.bu	$a6, $a5, 14
	bne	$a4, $a6, .LBB17_33
# %bb.31:                               # %_ZeqRK4GUIDS1_.exit24
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a5, 15
	bne	$a1, $a4, .LBB17_33
.LBB17_32:                              # %_ZeqRK4GUIDS1_.exit24.thread.sink.split
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $a1, 8
	jirl	$ra, $a1, 0
	move	$a3, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB17_33:                              # %_ZeqRK4GUIDS1_.exit24.thread
	move	$a0, $a3
	ret
.Lfunc_end17:
	.size	_ZN16CClusterInStream14QueryInterfaceERK4GUIDPPv, .Lfunc_end17-_ZN16CClusterInStream14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN16CClusterInStream6AddRefEv,"axG",@progbits,_ZN16CClusterInStream6AddRefEv,comdat
	.weak	_ZN16CClusterInStream6AddRefEv  # -- Begin function _ZN16CClusterInStream6AddRefEv
	.p2align	5
	.type	_ZN16CClusterInStream6AddRefEv,@function
_ZN16CClusterInStream6AddRefEv:         # @_ZN16CClusterInStream6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end18:
	.size	_ZN16CClusterInStream6AddRefEv, .Lfunc_end18-_ZN16CClusterInStream6AddRefEv
                                        # -- End function
	.section	.text._ZN16CClusterInStream7ReleaseEv,"axG",@progbits,_ZN16CClusterInStream7ReleaseEv,comdat
	.weak	_ZN16CClusterInStream7ReleaseEv # -- Begin function _ZN16CClusterInStream7ReleaseEv
	.p2align	5
	.type	_ZN16CClusterInStream7ReleaseEv,@function
_ZN16CClusterInStream7ReleaseEv:        # @_ZN16CClusterInStream7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB19_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB19_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end19:
	.size	_ZN16CClusterInStream7ReleaseEv, .Lfunc_end19-_ZN16CClusterInStream7ReleaseEv
                                        # -- End function
	.section	.text._ZN16CClusterInStreamD2Ev,"axG",@progbits,_ZN16CClusterInStreamD2Ev,comdat
	.weak	_ZN16CClusterInStreamD2Ev       # -- Begin function _ZN16CClusterInStreamD2Ev
	.p2align	5
	.type	_ZN16CClusterInStreamD2Ev,@function
_ZN16CClusterInStreamD2Ev:              # @_ZN16CClusterInStreamD2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV16CClusterInStream+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV16CClusterInStream+16)
	st.d	$a0, $fp, 0
	addi.d	$a0, $fp, 72
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	beqz	$a0, .LBB20_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp28:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp29:                                # EH_LABEL
.LBB20_2:                               # %_ZN9CMyComPtrI9IInStreamED2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB20_3:
.Ltmp30:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN16CClusterInStreamD2Ev, .Lfunc_end20-_ZN16CClusterInStreamD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN16CClusterInStreamD2Ev,"aG",@progbits,_ZN16CClusterInStreamD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table20:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp28-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin5          #     jumps to .Ltmp30
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp29-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Lfunc_end20-.Ltmp29           #   Call between .Ltmp29 and .Lfunc_end20
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
	.section	.text._ZN16CClusterInStreamD0Ev,"axG",@progbits,_ZN16CClusterInStreamD0Ev,comdat
	.weak	_ZN16CClusterInStreamD0Ev       # -- Begin function _ZN16CClusterInStreamD0Ev
	.p2align	5
	.type	_ZN16CClusterInStreamD0Ev,@function
_ZN16CClusterInStreamD0Ev:              # @_ZN16CClusterInStreamD0Ev
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV16CClusterInStream+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV16CClusterInStream+16)
	st.d	$a0, $fp, 0
	addi.d	$a0, $fp, 72
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	beqz	$a0, .LBB21_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp31:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp32:                                # EH_LABEL
.LBB21_2:                               # %_ZN16CClusterInStreamD2Ev.exit
	ori	$a1, $zero, 104
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB21_3:
.Ltmp33:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZN16CClusterInStreamD0Ev, .Lfunc_end21-_ZN16CClusterInStreamD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN16CClusterInStreamD0Ev,"aG",@progbits,_ZN16CClusterInStreamD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table21:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp31-.Lfunc_begin6          #   Call between .Lfunc_begin6 and .Ltmp31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin6          #     jumps to .Ltmp33
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp32-.Lfunc_begin6          # >> Call Site 3 <<
	.uleb128 .Lfunc_end21-.Ltmp32           #   Call between .Ltmp32 and .Lfunc_end21
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
	.section	.text._ZN27CLimitedSequentialOutStream14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN27CLimitedSequentialOutStream14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN27CLimitedSequentialOutStream14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN27CLimitedSequentialOutStream14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN27CLimitedSequentialOutStream14QueryInterfaceERK4GUIDPPv,@function
_ZN27CLimitedSequentialOutStream14QueryInterfaceERK4GUIDPPv: # @_ZN27CLimitedSequentialOutStream14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	ld.bu	$a5, $a1, 0
	move	$a3, $a0
	pcalau12i	$a0, %got_pc_hi20(IID_IUnknown)
	ld.d	$a4, $a0, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a6, $a4, 0
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 2
	bne	$a5, $a6, .LBB22_17
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a4, 1
	bne	$a5, $a6, .LBB22_17
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a4, 2
	bne	$a5, $a6, .LBB22_17
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a4, 3
	bne	$a5, $a6, .LBB22_17
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a4, 4
	bne	$a5, $a6, .LBB22_17
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a4, 5
	bne	$a5, $a6, .LBB22_17
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a4, 6
	bne	$a5, $a6, .LBB22_17
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a4, 7
	bne	$a5, $a6, .LBB22_17
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a4, 8
	bne	$a5, $a6, .LBB22_17
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a4, 9
	bne	$a5, $a6, .LBB22_17
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a4, 10
	bne	$a5, $a6, .LBB22_17
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a4, 11
	bne	$a5, $a6, .LBB22_17
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a4, 12
	bne	$a5, $a6, .LBB22_17
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a4, 13
	bne	$a5, $a6, .LBB22_17
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a4, 14
	bne	$a5, $a6, .LBB22_17
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a4, 15
	bne	$a1, $a4, .LBB22_17
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
.LBB22_17:                              # %_ZeqRK4GUIDS1_.exit.thread
	ret
.Lfunc_end22:
	.size	_ZN27CLimitedSequentialOutStream14QueryInterfaceERK4GUIDPPv, .Lfunc_end22-_ZN27CLimitedSequentialOutStream14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN27CLimitedSequentialOutStream6AddRefEv,"axG",@progbits,_ZN27CLimitedSequentialOutStream6AddRefEv,comdat
	.weak	_ZN27CLimitedSequentialOutStream6AddRefEv # -- Begin function _ZN27CLimitedSequentialOutStream6AddRefEv
	.p2align	5
	.type	_ZN27CLimitedSequentialOutStream6AddRefEv,@function
_ZN27CLimitedSequentialOutStream6AddRefEv: # @_ZN27CLimitedSequentialOutStream6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end23:
	.size	_ZN27CLimitedSequentialOutStream6AddRefEv, .Lfunc_end23-_ZN27CLimitedSequentialOutStream6AddRefEv
                                        # -- End function
	.section	.text._ZN27CLimitedSequentialOutStream7ReleaseEv,"axG",@progbits,_ZN27CLimitedSequentialOutStream7ReleaseEv,comdat
	.weak	_ZN27CLimitedSequentialOutStream7ReleaseEv # -- Begin function _ZN27CLimitedSequentialOutStream7ReleaseEv
	.p2align	5
	.type	_ZN27CLimitedSequentialOutStream7ReleaseEv,@function
_ZN27CLimitedSequentialOutStream7ReleaseEv: # @_ZN27CLimitedSequentialOutStream7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB24_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB24_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end24:
	.size	_ZN27CLimitedSequentialOutStream7ReleaseEv, .Lfunc_end24-_ZN27CLimitedSequentialOutStream7ReleaseEv
                                        # -- End function
	.section	.text._ZN27CLimitedSequentialOutStreamD2Ev,"axG",@progbits,_ZN27CLimitedSequentialOutStreamD2Ev,comdat
	.weak	_ZN27CLimitedSequentialOutStreamD2Ev # -- Begin function _ZN27CLimitedSequentialOutStreamD2Ev
	.p2align	5
	.type	_ZN27CLimitedSequentialOutStreamD2Ev,@function
_ZN27CLimitedSequentialOutStreamD2Ev:   # @_ZN27CLimitedSequentialOutStreamD2Ev
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV27CLimitedSequentialOutStream+16)
	addi.d	$a2, $a0, %pc_lo12(_ZTV27CLimitedSequentialOutStream+16)
	ld.d	$a0, $a1, 16
	st.d	$a2, $a1, 0
	beqz	$a0, .LBB25_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp34:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp35:                                # EH_LABEL
.LBB25_2:                               # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB25_3:
.Ltmp36:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_ZN27CLimitedSequentialOutStreamD2Ev, .Lfunc_end25-_ZN27CLimitedSequentialOutStreamD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN27CLimitedSequentialOutStreamD2Ev,"aG",@progbits,_ZN27CLimitedSequentialOutStreamD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table25:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp34-.Lfunc_begin7          # >> Call Site 1 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin7          #     jumps to .Ltmp36
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp35-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Lfunc_end25-.Ltmp35           #   Call between .Ltmp35 and .Lfunc_end25
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
	.section	.text._ZN27CLimitedSequentialOutStreamD0Ev,"axG",@progbits,_ZN27CLimitedSequentialOutStreamD0Ev,comdat
	.weak	_ZN27CLimitedSequentialOutStreamD0Ev # -- Begin function _ZN27CLimitedSequentialOutStreamD0Ev
	.p2align	5
	.type	_ZN27CLimitedSequentialOutStreamD0Ev,@function
_ZN27CLimitedSequentialOutStreamD0Ev:   # @_ZN27CLimitedSequentialOutStreamD0Ev
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
	pcalau12i	$a1, %pc_hi20(_ZTV27CLimitedSequentialOutStream+16)
	addi.d	$a2, $a1, %pc_lo12(_ZTV27CLimitedSequentialOutStream+16)
	ld.d	$a1, $a0, 16
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB26_2
# %bb.1:
	ld.d	$a2, $a1, 0
	ld.d	$a2, $a2, 16
.Ltmp37:                                # EH_LABEL
	move	$fp, $a0
	move	$a0, $a1
	jirl	$ra, $a2, 0
	move	$a0, $fp
.Ltmp38:                                # EH_LABEL
.LBB26_2:                               # %_ZN27CLimitedSequentialOutStreamD2Ev.exit
	ori	$a1, $zero, 40
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB26_3:
.Ltmp39:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end26:
	.size	_ZN27CLimitedSequentialOutStreamD0Ev, .Lfunc_end26-_ZN27CLimitedSequentialOutStreamD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN27CLimitedSequentialOutStreamD0Ev,"aG",@progbits,_ZN27CLimitedSequentialOutStreamD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table26:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp37-.Lfunc_begin8          # >> Call Site 1 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin8          #     jumps to .Ltmp39
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp38-.Lfunc_begin8          # >> Call Site 2 <<
	.uleb128 .Lfunc_end26-.Ltmp38           #   Call between .Ltmp38 and .Lfunc_end26
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
.Lfunc_end27:
	.size	__clang_call_terminate, .Lfunc_end27-__clang_call_terminate
                                        # -- End function
	.type	_ZTV26CLimitedSequentialInStream,@object # @_ZTV26CLimitedSequentialInStream
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV26CLimitedSequentialInStream
	.p2align	3, 0x0
_ZTV26CLimitedSequentialInStream:
	.dword	0
	.dword	_ZTI26CLimitedSequentialInStream
	.dword	_ZN26CLimitedSequentialInStream14QueryInterfaceERK4GUIDPPv
	.dword	_ZN26CLimitedSequentialInStream6AddRefEv
	.dword	_ZN26CLimitedSequentialInStream7ReleaseEv
	.dword	_ZN26CLimitedSequentialInStreamD2Ev
	.dword	_ZN26CLimitedSequentialInStreamD0Ev
	.dword	_ZN26CLimitedSequentialInStream4ReadEPvjPj
	.size	_ZTV26CLimitedSequentialInStream, 64

	.type	_ZTI26CLimitedSequentialInStream,@object # @_ZTI26CLimitedSequentialInStream
	.globl	_ZTI26CLimitedSequentialInStream
	.p2align	3, 0x0
_ZTI26CLimitedSequentialInStream:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTS26CLimitedSequentialInStream
	.word	0                               # 0x0
	.word	2                               # 0x2
	.dword	_ZTI19ISequentialInStream
	.dword	2                               # 0x2
	.dword	_ZTI13CMyUnknownImp
	.dword	2050                            # 0x802
	.size	_ZTI26CLimitedSequentialInStream, 56

	.type	_ZTS26CLimitedSequentialInStream,@object # @_ZTS26CLimitedSequentialInStream
	.section	.rodata,"a",@progbits
	.globl	_ZTS26CLimitedSequentialInStream
_ZTS26CLimitedSequentialInStream:
	.asciz	"26CLimitedSequentialInStream"
	.size	_ZTS26CLimitedSequentialInStream, 29

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

	.type	_ZTV16CLimitedInStream,@object  # @_ZTV16CLimitedInStream
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV16CLimitedInStream
	.p2align	3, 0x0
_ZTV16CLimitedInStream:
	.dword	0
	.dword	_ZTI16CLimitedInStream
	.dword	_ZN16CLimitedInStream14QueryInterfaceERK4GUIDPPv
	.dword	_ZN16CLimitedInStream6AddRefEv
	.dword	_ZN16CLimitedInStream7ReleaseEv
	.dword	_ZN16CLimitedInStreamD2Ev
	.dword	_ZN16CLimitedInStreamD0Ev
	.dword	_ZN16CLimitedInStream4ReadEPvjPj
	.dword	_ZN16CLimitedInStream4SeekExjPy
	.size	_ZTV16CLimitedInStream, 72

	.type	_ZTI16CLimitedInStream,@object  # @_ZTI16CLimitedInStream
	.globl	_ZTI16CLimitedInStream
	.p2align	3, 0x0
_ZTI16CLimitedInStream:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTS16CLimitedInStream
	.word	0                               # 0x0
	.word	2                               # 0x2
	.dword	_ZTI9IInStream
	.dword	2                               # 0x2
	.dword	_ZTI13CMyUnknownImp
	.dword	2050                            # 0x802
	.size	_ZTI16CLimitedInStream, 56

	.type	_ZTS16CLimitedInStream,@object  # @_ZTS16CLimitedInStream
	.section	.rodata,"a",@progbits
	.globl	_ZTS16CLimitedInStream
_ZTS16CLimitedInStream:
	.asciz	"16CLimitedInStream"
	.size	_ZTS16CLimitedInStream, 19

	.type	_ZTI9IInStream,@object          # @_ZTI9IInStream
	.section	.data.rel.ro._ZTI9IInStream,"awG",@progbits,_ZTI9IInStream,comdat
	.weak	_ZTI9IInStream
	.p2align	3, 0x0
_ZTI9IInStream:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS9IInStream
	.dword	_ZTI19ISequentialInStream
	.size	_ZTI9IInStream, 24

	.type	_ZTS9IInStream,@object          # @_ZTS9IInStream
	.section	.rodata._ZTS9IInStream,"aG",@progbits,_ZTS9IInStream,comdat
	.weak	_ZTS9IInStream
_ZTS9IInStream:
	.asciz	"9IInStream"
	.size	_ZTS9IInStream, 11

	.type	_ZTV16CClusterInStream,@object  # @_ZTV16CClusterInStream
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV16CClusterInStream
	.p2align	3, 0x0
_ZTV16CClusterInStream:
	.dword	0
	.dword	_ZTI16CClusterInStream
	.dword	_ZN16CClusterInStream14QueryInterfaceERK4GUIDPPv
	.dword	_ZN16CClusterInStream6AddRefEv
	.dword	_ZN16CClusterInStream7ReleaseEv
	.dword	_ZN16CClusterInStreamD2Ev
	.dword	_ZN16CClusterInStreamD0Ev
	.dword	_ZN16CClusterInStream4ReadEPvjPj
	.dword	_ZN16CClusterInStream4SeekExjPy
	.size	_ZTV16CClusterInStream, 72

	.type	_ZTI16CClusterInStream,@object  # @_ZTI16CClusterInStream
	.globl	_ZTI16CClusterInStream
	.p2align	3, 0x0
_ZTI16CClusterInStream:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTS16CClusterInStream
	.word	0                               # 0x0
	.word	2                               # 0x2
	.dword	_ZTI9IInStream
	.dword	2                               # 0x2
	.dword	_ZTI13CMyUnknownImp
	.dword	2050                            # 0x802
	.size	_ZTI16CClusterInStream, 56

	.type	_ZTS16CClusterInStream,@object  # @_ZTS16CClusterInStream
	.section	.rodata,"a",@progbits
	.globl	_ZTS16CClusterInStream
_ZTS16CClusterInStream:
	.asciz	"16CClusterInStream"
	.size	_ZTS16CClusterInStream, 19

	.type	_ZTV27CLimitedSequentialOutStream,@object # @_ZTV27CLimitedSequentialOutStream
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV27CLimitedSequentialOutStream
	.p2align	3, 0x0
_ZTV27CLimitedSequentialOutStream:
	.dword	0
	.dword	_ZTI27CLimitedSequentialOutStream
	.dword	_ZN27CLimitedSequentialOutStream14QueryInterfaceERK4GUIDPPv
	.dword	_ZN27CLimitedSequentialOutStream6AddRefEv
	.dword	_ZN27CLimitedSequentialOutStream7ReleaseEv
	.dword	_ZN27CLimitedSequentialOutStreamD2Ev
	.dword	_ZN27CLimitedSequentialOutStreamD0Ev
	.dword	_ZN27CLimitedSequentialOutStream5WriteEPKvjPj
	.size	_ZTV27CLimitedSequentialOutStream, 64

	.type	_ZTI27CLimitedSequentialOutStream,@object # @_ZTI27CLimitedSequentialOutStream
	.globl	_ZTI27CLimitedSequentialOutStream
	.p2align	3, 0x0
_ZTI27CLimitedSequentialOutStream:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTS27CLimitedSequentialOutStream
	.word	0                               # 0x0
	.word	2                               # 0x2
	.dword	_ZTI20ISequentialOutStream
	.dword	2                               # 0x2
	.dword	_ZTI13CMyUnknownImp
	.dword	2050                            # 0x802
	.size	_ZTI27CLimitedSequentialOutStream, 56

	.type	_ZTS27CLimitedSequentialOutStream,@object # @_ZTS27CLimitedSequentialOutStream
	.section	.rodata,"a",@progbits
	.globl	_ZTS27CLimitedSequentialOutStream
_ZTS27CLimitedSequentialOutStream:
	.asciz	"27CLimitedSequentialOutStream"
	.size	_ZTS27CLimitedSequentialOutStream, 30

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
	.addrsig_sym _ZTI26CLimitedSequentialInStream
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTS26CLimitedSequentialInStream
	.addrsig_sym _ZTI19ISequentialInStream
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS19ISequentialInStream
	.addrsig_sym _ZTI8IUnknown
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS8IUnknown
	.addrsig_sym _ZTI13CMyUnknownImp
	.addrsig_sym _ZTS13CMyUnknownImp
	.addrsig_sym _ZTI16CLimitedInStream
	.addrsig_sym _ZTS16CLimitedInStream
	.addrsig_sym _ZTI9IInStream
	.addrsig_sym _ZTS9IInStream
	.addrsig_sym _ZTI16CClusterInStream
	.addrsig_sym _ZTS16CClusterInStream
	.addrsig_sym _ZTI27CLimitedSequentialOutStream
	.addrsig_sym _ZTS27CLimitedSequentialOutStream
	.addrsig_sym _ZTI20ISequentialOutStream
	.addrsig_sym _ZTS20ISequentialOutStream
